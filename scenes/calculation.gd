extends Label

var rng = RandomNumberGenerator.new()
var num1 = 0
var num2 = 0
var cal = 0
var converted = "" # Converte o número para string

func _generate_calculation() -> void:
	num1 = rng.randi_range(1, 10)
	num2 = rng.randi_range(1, 10)
	cal = num1 + num2
	self.text = "%d + %d" % [num1, num2]
	converted = str(cal) # Converte o número para string
	print(num1, "+", num2)
