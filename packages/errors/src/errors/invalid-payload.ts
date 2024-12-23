import { createError, ErrorCode } from '../index.js';

export interface InvalidPayloadErrorExtensions {
	reason: string;
}

// 笔记：在这里进行错误信息自定义
// 注释：源代码这里没做国际化
export const messageConstructor = ({ reason }: InvalidPayloadErrorExtensions) => `Invalid payload. ${reason}.`;

export const InvalidPayloadError = createError<InvalidPayloadErrorExtensions>(
	ErrorCode.InvalidPayload,
	messageConstructor,
	400,
);
