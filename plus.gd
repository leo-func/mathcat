extends Button

func _on_pressed() -> void:
		disabled = true
		NormalModeGlobal.bonus += 0.25
		print(NormalModeGlobal.bonus)
	
