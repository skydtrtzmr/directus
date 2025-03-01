import { defineHook } from '@directus/extensions-sdk';
import type { RegisterFunctions } from '@directus/extensions';
import type { HookExtensionContext } from '@directus/extensions';

import type { EventContext, Accountability, Field, FieldRaw, FieldMeta, RawField, Type } from '@directus/types';
import { log } from 'console';

export default defineHook(({ filter, action }: RegisterFunctions, { services, getSchema }: HookExtensionContext) => {
	action('sections.items.create', handler);

	async function handler(meta: Record<string, any>, context: EventContext) {
		log('Creating Item!');

		const { ItemsService, FieldsService } = services;
		const fieldsService = new FieldsService({
			...context,
			schema: await getSchema(),
		});

		log('fieldsService.accountability:');
		log(fieldsService.accountability);

		// 获取字段列表
		const field: FieldRaw = await fieldsService.readOne(
			'paper_part_strategies', // collection_name
			'chapters', // field_name
		);

		// log('field:');
		// log(field);

		// 获取所需的字段
		const foundFieldOptions = field.meta!.options;
		log('foundFieldOptions:');
		log(foundFieldOptions);

		await fieldsService.updateField('paper_part_strategies', {
			meta: {
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
			},
			field: 'chapters',
		});
	}
});
