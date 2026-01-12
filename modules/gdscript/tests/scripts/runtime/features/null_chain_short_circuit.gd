
class A:
	var value := 5
	var dictionary := {
		"value_a": 2,
		&"value_b": 3
	}

	func get_twice_value():
		return value * 2

func test():
	var foo: A = null
	var bar: A = A.new()

	print(foo?.get_twice_value())
	print(foo?.value)
	print(foo?.dictionary["value_a"])
	print(foo?.dictionary.value_b)

	print(bar?.get_twice_value())
	print(bar?.value)
	print(bar?.dictionary["value_a"])
	print(bar?.dictionary.value_b)

	var oops_all_null = null
	var dictionary = {
		"value": true
	}
	var array = [0, 1, 2]

	print(oops_all_null?["value"])
	print(dictionary?["value"])
	print(dictionary?[0])

	var deeply_nested = {
		"good_path": {
			"layer_1: {
				"layer_2": {
					"layer_3": 42
				}
			}
		},
		"bad_path": null
	}

	print(deeply_nested["good_path"]?["layer_1"]["layer_2"]["layer_3"])
	print(deeply_nested["bad_path"]?["layer_1"]["layer_2"]["layer_3"])