
var member_foo
var member_bar = 5

var member_set_get = null:
	set(value):
		member_set_get = value
	get:
		return member_set_get

func test():
	# Member
	member_foo ??= 10
	print(member_foo)

	member_bar ??= 10
	print(member_bar)

	member_set_get ??= 10
	print(member_set_get)


	# Local

	var local_foo = null
	var local_bar
	var local_baz = 5

	local_foo ??= 10
	local_bar ??= 10
	local_baz ??= 10

	print(local_foo)
	print(local_bar)
	print(local_baz)


	# Subscript

	var dictionary
	@warning_ignore("unassigned_variable")
	print(dictionary)

	dictionary ??= {
		"foo": false,
		"bar": null
	}

	dictionary["foo"] ??= true
	dictionary["bar"] ??= true

	dictionary["baz"] ??= true

	dictionary.buzz = false

	dictionary.fizz ??= true
	dictionary.buzz ??= true

	print(dictionary)


	# Freed node
	var node = Node.new()
	print(node is Node)
	node.free()
	node ??= Node.new()
	print(node is Node)
	node.free()
