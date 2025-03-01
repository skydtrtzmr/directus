import { defineHook } from '@directus/extensions-sdk';
import type { RegisterFunctions } from '@directus/extensions';
import type { HookExtensionContext } from '@directus/extensions';
import type { EventContext } from '@directus/types';
import { log } from 'console';

// 这里的type定义直接来自于directus插件：directus-extension-generate-types
type DirectusFields = {
	// collection: string | DirectusCollections;  // 简化掉了
	collection: string;
	conditions?: unknown | null;
	display?: string | null;
	display_options?: unknown | null;
	field: string;
	group?: string | DirectusFields | null;
	hidden: boolean;
	id: number;
	interface?: string | null;
	note?: string | null;
	options?: unknown | null;
	readonly: boolean;
	required?: boolean | null;
	sort?: number | null;
	special?: unknown | null;
	translations?: unknown | null;
	validation?: unknown | null;
	validation_message?: string | null;
	width?: string | null;
};

export default defineHook(({ filter, action }: RegisterFunctions, { services, getSchema }: HookExtensionContext) => {
	// filter('items.create', () => {
	// 	console.log('Creating Item!');
	// });

	action('sections.items.create', handler);

	async function handler(meta: Record<string, any>, context: EventContext) {
		console.log('Creating Item!');

		const { ItemsService, FieldsService } = services;
		const fieldsService = new FieldsService({
			...context,
			schema: await getSchema(),
		});

		console.log('fieldsService.accountability:');
		console.log(fieldsService.accountability);

		// 获取字段列表
		const field: DirectusFields = await fieldsService.readOne(
			'paper_part_strategies', // collection_name
			'chapters', // field_name
		);
		// 获取所需的字段
		const foundFieldOptions = field.options;
		console.log('foundFieldOptions:');
		console.log(foundFieldOptions);

		await fieldsService.updateOne(field.id, {
			options: {
				choices: [
					{
						text: '这里是复选框吗？',
						value: '1',
						children: [
							{ text: '1.1', value: '1.1' },
							{ text: '1.2', value: '1.2' },
						],
					},
					{ text: '2', value: '2' },
				],
			},
		});
	}
});
