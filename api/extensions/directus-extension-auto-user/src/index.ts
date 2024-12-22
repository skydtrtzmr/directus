import { defineHook } from '@directus/extensions-sdk';
import type { RegisterFunctions } from '@directus/extensions';
import type { HookExtensionContext } from '@directus/extensions';
import type { EventContext } from '@directus/types';
import { dir, log } from 'console';

export default defineHook(({ filter, action }: RegisterFunctions, { services, getSchema }: HookExtensionContext) => {
	action('students.items.update', handler);
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

		const studentsUsersService = new UsersService({
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

		log('meta：');
		log(meta);
		log('context：');
		log(context);

		// 注意，meta.payload里面不包括id。对应的id在meta.key或者meta.keys中。
		const studentId = meta.key || meta.keys[0];
		// update的时候id会是个列表。只取第一个，因为这个正常业务不可能批量更新。

		let studentDirectusUserId = meta.payload.directus_user;

		// 如果学生的 directus_user 字段没有值，则进行创建
		if (!studentDirectusUserId) {
			const rolesService = new RolesService({
				...context,
				schema: await getSchema(),
			});

			// 获取角色列表
			const roles: DirectusRoles[] = await rolesService.readByQuery({
				fields: ['*'],
			});

			log('roles:');
			log(roles);

			// 获取所需的角色
			const foundRole = roles.find((item) => item.name == '学生');

			// 创建用户（并赋予角色）。返回值就是一个id。
			studentDirectusUserId = await studentsUsersService.createOne({
				role: foundRole!.id,
				email: meta.payload.email,
				password: meta.payload.password,
			});

			// 更新学生的 directus_user 字段
			await studentsItemsService.updateOne(studentId, {
				directus_user: studentDirectusUserId,
			});
		} else {
			await studentsUsersService.updateOne(studentId, {
				email: meta.payload.email,
				password: meta.payload.password,
			});
		}
	}
});
