extends Control

@onready var input_field: LineEdit = $LineEdit  # Referência ao LineEdit

# Filtra entradas inválidas
func _input(event):
	if event is InputEventKey and input_field.has_focus():
		# Verifica se o caractere pressionado é um número
		if not event.unicode.is_digit():
			event.set_input_as_handled()  # Impede a propagação do evento (ignora a entrada não numérica)
