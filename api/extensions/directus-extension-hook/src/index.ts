// 此项目作示例作用，供插件开发参考。
import { defineHook } from '@directus/extensions-sdk';
import type { HookExtensionContext } from '@directus/extensions';
import type { EventContext } from '@directus/types';
import type { RegisterFunctions } from '@directus/extensions';

type ManyField = string;

type ManyCollection = string;

// type O2MContext = {
// 	/** collection that potentially have unused items */
// 	oneCollection: string;
// 	/** collections and their reverse key field, that are related to the `oneCollection` item */
// 	manyCollections: {
// 		[key: ManyField]: ManyCollection;
// 	};
// };

// 当O2M的M端的项都被删除了的时候，把对应的O端的项也删除。
export default defineHook(({ action }: RegisterFunctions, { services, getSchema }: HookExtensionContext) => {
	action('items.update', handler);
	action('items.delete', handler);
	let oneCollection: string = 'meta_infos';
	let manyCollections: { [key: ManyField]: ManyCollection } = {
		pages: 'pages',
		posts: 'posts',
	};
	async function handler(meta: Record<string, any>, context: EventContext) {
		const _manyCollections = Object.values(manyCollections);
		if (!_manyCollections.includes(meta.collection)) return;

		const _manyFields = Object.keys(manyCollections);

		const { ItemsService } = services;
		const itemsService = new ItemsService(oneCollection, {
			...context,
			schema: await getSchema(),
		});

		await itemsService.deleteByQuery({
			limit: -1,
			filter: {
				_and: _manyFields.map((field) => ({
					[field]: { _null: true },
				})),
			},
		});
	}
});
