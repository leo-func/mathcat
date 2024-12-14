extends LineEdit

var old_text := ""
var submitted_text
signal number_submitted(number)
@onready var line_edit: LineEdit = $"."

func _ready() -> void:
	line_edit.text_changed.connect(_something)
	# Conecta os sinais de texto alterado e texto submetido
	connect("text_submitted", Callable(self, "_on_text_submitted"))

func _something(text: String) -> void:
	if text.is_empty() or text.is_valid_int() or (text == "-" and old_text.is_empty()): 
		old_text = text
	else:
		line_edit.text = old_text

func _on_text_submitted(submitted_text):
	emit_signal("number_submitted", submitted_text)
	clear()
	print(submitted_text)

func check_answer(submitted_text: String) -> void:
	if submitted_text == Calculation.converted:
		print("Correto! Gerando novo cálculo...")
		Calculation.generate_calculation()
	else:
		print("Errado, tente novamente.")
