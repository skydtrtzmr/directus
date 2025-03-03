import { defineHook } from '@directus/extensions-sdk';
import type { RegisterFunctions } from '@directus/extensions';
import type { HookExtensionContext } from '@directus/extensions';
import type { EventContext } from '@directus/types';
import { log } from 'console';
// 根据课程，创建directus对应的书签。

export default defineHook(({ filter, action }: RegisterFunctions, { services, getSchema }: HookExtensionContext) => {
	filter('items.create', () => {
		console.log('Creating Item!');
	});

	action('courses.items.create', handler);

	async function handler(meta: Record<string, any>, context: EventContext) {
		log('Creating Course Item!');
		const sourceCollection = 'courses';
		const { ItemsService, PresetsService } = services;

		const courseItemsService = new ItemsService(sourceCollection, {
			...context, // 解构出 context 对象，里面包含accountability等。
			schema: await getSchema(),
		});

		const presetService = new PresetsService({
			...context,
			schema: await getSchema(),
		});

	}
});
