import { createError } from "@directus/errors";

// TODO 命名已经有改动了，需要修改

// 笔记：这里extensions的意思是扩展字段，可以用来传递更多的信息
export const messageConstructor = ({ reason }) => `\n${reason}`;

export const CustomError = createError(
	'CUSTOM_ERROR_CODE',
	messageConstructor,
	400,
);

export default ({ filter }) => {
	// const validateInput = async (input, { collection }) => {
	//   	if (collection !== 'test') return input;
	// 	if (!input.name) {
	// 		throw new CustomError({
	// 		reason: 'Invalid name这里是reason1',
	// 		});
	// 	} else if (input.name !== 'test') {
	// 		throw new CustomError({
	// 		reason: 'Invalid name这里是reason2',
	// 		});
	// 	}
	// 	return input;
	// };
	// // 要让这个扩展同时对 items.create 和 items.update 生效，你需要为这两个操作分别添加过滤器。
	// filter('items.create', validateInput);
	// filter('items.update', validateInput);
	// 以上仅供示范用。

	const validateQMcMultiCorrectOption = async (input) => {
		if (input.mcq_type === 'multi') { // 如果是多选题
			if (input.correct_options.length<2) {
				throw new CustomError({
					reason: '多选题的正确选项不能少于2个！',
				});
			}
		}

		if (input.mcq_type === 'binary') { // 如果是二选一（判断题）
			input.option_number = 2; // 选项数量固定为2
		}
		return input;
	};
	filter('q_mc.items.create', validateQMcMultiCorrectOption);
	filter('q_mc.items.update', validateQMcMultiCorrectOption);

	// const validateQMcBinaryOptions = async (input) => {
	// 	if (input.mcq_type === 'binary') { // 如果是二选一（判断题）
	// 		input.option_number = 2; // 选项数量固定为2
	// 	}
	// 	return input;
	// };
	// filter('q_mc.items.create', validateQMcBinaryOptions);
	// filter('q_mc.items.update', validateQMcBinaryOptions);
};
