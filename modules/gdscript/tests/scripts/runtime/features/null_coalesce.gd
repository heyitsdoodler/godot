func test():
    print(null ?? 1)

    var foo = "Hello"
    var bar = null

    print(foo ?? "Goodbye")
    print(bar ?? "Goodbye")

    var baz = {
        "value1": false,
        "value2": null
    }

    print(baz["value1"] ?? true)
    print(baz["value2"] ?? true)

    print(0 ?? 1 ?? 2)
    print(null ?? bar ?? false)

    # Freed node
    var node := Node.new()
    print((node ?? false) is Node)
    node.free()
    print(node ?? false)