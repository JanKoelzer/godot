func unicode_arrow() → int:
	return 0


func ascii_arrow() -> float:
	return 0.0


func no_arrow():
	return 0


func unicode_arrow_with_params(a: int, b: int = -1) → int:
	return a + b


func outer_func_for_lambda() → Callable:
	return func () → int:
			var y := func (a: int, b) → bool: return a == b
			return 0 if y.call(1, 1) else 1


func test():
	print(unicode_arrow())
	print(ascii_arrow())
	print(no_arrow())
	print(unicode_arrow_with_params(1))
	print(outer_func_for_lambda().call())
