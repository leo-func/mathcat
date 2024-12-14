extends Button

@onready var plus: Button = $"../Plus"
@onready var minus: Button = $"../Minus"
@onready var mult: Button = $"../Mult"

func _on_pressed() -> void:
	if plus.disabled == true:
		plus.disabled = false
		minus.disabled = false
		mult.disabled = false
		NormalModeGlobal.bonus = 1
	elif minus.disabled == true:
		plus.disabled = false
		minus.disabled = false
		mult.disabled = false
		NormalModeGlobal.bonus = 1
	elif mult.disabled == true:
		plus.disabled = false
		minus.disabled = false
		mult.disabled = false
		NormalModeGlobal.bonus = 1
	else:
		plus.disabled = false

func _input(event):
	if event.is_action_pressed("resetbonus"):
		plus.disabled = false
		minus.disabled = false
		mult.disabled = false
		NormalModeGlobal.bonus = 1
		print("Tecla pressionada!")
	elif event.is_action_released("resetbonus"):
		print("Tecla liberada!")
