export default ({ filter }, { env, services, getSchema }) => {
	const { ItemsService, UsersService, RolesService, PermissionsService } = services; // get the services we need

	filter('students.items.create', async (payload, meta, context) => {
		// const schema = await getSchema();
		console.log('Creating Student Item!');

		payload.number = 1706;

		// const schema = await getSchema(); // 会报错
		// const { accountability } = context;
		// let itemsService = new ItemsService('students', { schema: context.schema, accountability: context.accountability });

		// const data = await itemsService.createOne({
		// 	number: 22,
		// 	email: 'hello@world.com',
		// 	name: 'This is our first article',
		// });

		return payload;
	});
};
