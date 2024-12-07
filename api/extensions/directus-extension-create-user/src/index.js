export default ({ filter }, context) => {
	const { services, getSchema } = context; // getSchema is a function that returns the schema of the current collection
	const { ItemsService, UsersService, RolesService, PermissionsService } = services; // get the services we need

	filter('students.items.create', (input, meta, context) => {
		console.log('Creating Student Item!');

		input.number = 1706;

		// const schema = await getSchema(); // 会报错
		// const { accountability } = context;
		// const itemsService = new ItemsService('students', { schema });

		// const data = await itemsService.createOne({
		// 	number: 22,
		// 	email: 'hello@world.com',
		// 	name: 'This is our first article',
		// });

		return input;
	});
};
