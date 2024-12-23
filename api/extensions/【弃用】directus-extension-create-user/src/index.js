import { log } from 'directus:api';

// export const messageConstructor = ({ reason }) => `\n${reason}`;

// export const CustomError = createError(
// 	'CUSTOM_ERROR_CODE',
// 	messageConstructor,
// 	400,
// );
// import { env } from 'process';

// TODO 还是没用。

export default ({ filter, action }) => {
	filter('items.create', (payload) => {
		log('Creating Item!');
	});

	action('items.create', (payload) => {
		log('Item created!');
	});
};

// export default ({ filter }, context) => {
// 	filter('students.items.create', () => {
// 		throw new CustomError({
// 			reason: '为什么啊！',
// 		});
// 	});
// 	const { services, getSchema } = context; // getSchema is a function that returns the schema of the current collection
// 	const { UsersService, RolesService, PermissionsService } = services; // get the services we need

// 	const functionName = async (meta, context) => {
// 		const schema = await getSchema();
// 		const { accountability } = context;

// 		const usersService = new UsersService({ schema, accountability });
// 		const rolesService = new RolesService({ schema, accountability });
// 		const permissionsService = new PermissionsService({ schema, accountability });

// 		// 使用roleService.readByQuery方法读取角色列表
// 		const roles = await rolesService.readByQuery({
// 			fields: ['*'],
// 		});

// 		// 然后找到名称为“学生”的角色
// 		const foundRole = roles.find((item) => item.name == '学生');

// 		// 使用usersService.createOne方法创建一个新的用户，并指定角色为“学生”的ID。
// 		const data = await usersService.createOne({
// 			email: 'service@service.com',
// 			role: foundRole.id,
// 		});
// 	};

// 	filter('students.items.create', functionName);
// };
