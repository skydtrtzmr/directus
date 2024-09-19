import { marked } from 'marked';
import dompurify from 'dompurify';
import markedKatex from 'marked-katex-extension';

// COMMENT: 这里是markdown编辑器的渲染部分，主要是使用了 marked 和 dompurify 两个库。

type Options = {
	target: '_blank' | '_self' | '_parent' | '_top';
};

const renderer = new marked.Renderer();

// DONE 新增 katex 扩展
const options = {
	throwOnError: false,
	output: 'mathml', // 这里要设置成mathml（注意不是MathML！一定要小写！参考官方文档https://katex.org/docs/options.html）
	// 否则katex公式会重复渲染（一遍html，一遍mathml）。
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
