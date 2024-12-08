import { defineHook } from '@directus/extensions-sdk';
import type { RegisterFunctions } from '@directus/extensions';
import type { HookExtensionContext } from '@directus/extensions';
import type { EventContext, ActionHandler } from '@directus/types';

export default defineHook(({ filter, action }: RegisterFunctions, { services, getSchema }: HookExtensionContext) => {
	// action('items.update', handler);
	action('students.items.create', handler);

	// 这里用的是一个“函数声明”的形式，而不是“函数表达式”的形式。
	async function handler(meta: Record<string, any>, context: EventContext) {
		const sourceCollection = 'students';

		// 注意，用Service进行的操作也会触发钩子，所以小心无限递归。
		const { ItemsService, UsersService, RolesService } = services;
		const studentsItemsService = new ItemsService(sourceCollection, {
			...context, // 解构出 context 对象，里面包含accountability等。
			schema: await getSchema(),
		});

		const teachersItemsService = new ItemsService('teachers', {
			...context, // 解构出 context 对象，里面包含accountability等。
			schema: await getSchema(),
		});

		const studentsUsersService = new UsersService({
			...context,
			schema: await getSchema(),
		});

		const studentId = meta.payload;
		const studentDirectusUserId = meta.payload.directus_user;

		// 如果学生的 directus_user 字段没有值，则进行创建
		if (!studentDirectusUserId) {
			// 测试用
			await teachersItemsService.createOne({
				name: studentDirectusUserId + '，' + studentId,
			});

			const rolesService = new RolesService({
				...context,
				schema: await getSchema(),
			});

			type DirectusRoles = {
				children: any[] | DirectusRoles[];
				description?: string | null;
				icon: string;
				id: string;
				name: string;
				parent?: string | DirectusRoles | null;
				policies: any[];
				users: any[];
				users_group: string;
			};

			// 获取角色列表
			const roles: DirectusRoles[] = await rolesService.readByQuery({
				fields: ['*'],
			});

			// 获取所需的角色
			const foundRole = roles.find((item) => item.name == '学生');
			await studentsUsersService.createOne({
				role: foundRole!.id,
				email: meta.payload.email,
			});
			return;
		}
	}
});
