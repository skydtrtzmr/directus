import { marked, Tokens } from 'marked';
import dompurify from 'dompurify';
import markedKatex from 'marked-katex-extension';

// COMMENT: 这里是markdown编辑器的渲染部分，主要是使用了 marked 和 dompurify 两个库。

type Options = {
	target: '_blank' | '_self' | '_parent' | '_top';
};

const renderer = new marked.Renderer();

// DONE 新增空格替换，避免多个空格被渲染成一个空格
// 注释：Marked库在14.0.0版本后，text方法的参数类型从string变为Tokens.Text | Tokens.Escape | Tokens.Tag，所以需要使用token.text来获取文本内容。
renderer.text = function (token: Tokens.Text | Tokens.Escape | Tokens.Tag) {
    return token.text.replace(/ /g, ' &nbsp;');
};

// 添加类型定义
interface ImageProps {
	href: string;
	title: string | null;
	text: string;
  }


// DONE 重写 image 函数来处理自定义的图片标记
renderer.image = ({ href, title, text }: ImageProps) => {
	let width = '';
	let height = '';
	let altText = text;

	// 解析图片描述中的宽度和高度
	const sizeMatch = text.match(/\|(\d+)(?:x(\d+))?$/); // 匹配尺寸格式：|100x200 or |100

	if (sizeMatch) {
		width = sizeMatch[1]!; // 获取宽度
		height = sizeMatch[2] || ''; // 获取高度（如果有）
		altText = text.split('|')[0] || ''; // 获取图片描述（去掉尺寸部分）
	}

	// 返回自定义的 HTML 图片标签
	return `<img src="${href}" alt="${altText}" title="title:${title}" style="width: ${width}px; ${height ? `height: ${height}px;` : ''}" />`;
};

// DONE 新增 katex 扩展
const options = {
	throwOnError: false,
	output: 'mathml',
	// 这里要设置成mathml（注意不是MathML！一定要小写！参考官方文档https://katex.org/docs/options.html）
	// 否则katex公式会重复渲染（一遍html，一遍mathml）。
	nonStandard: true, // 允许使用一些非标准的latex语法，比如`$`前后可以没有空格。
};

marked.use(markedKatex(options));

/**
 * Render and sanitize a markdown string
 */
export function md(value: string, options: Options = { target: '_self' }): string {
	dompurify.addHook('afterSanitizeAttributes', (node) => {
		if (node.tagName === 'A' && node.getAttribute('target') === '_blank') {
			node.setAttribute('rel', 'noopener noreferrer');
		}
	});

	renderer.link = function (href, title, text) {
		const link = marked.Renderer.prototype.link.apply(this, [href, title, text]);
		return link.replace('<a', `<a target="${options.target}"`);
	};

	const markdown = marked.parse(value, {
		renderer,
	}) as string; /* Would only be a promise if used with async extensions */

	return dompurify.sanitize(markdown, { ADD_ATTR: ['target'] });
}
