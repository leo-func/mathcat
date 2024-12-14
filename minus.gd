extends Button


func _on_pressed():
	disabled = true
	NormalModeGlobal.bonus += 0.25
	print(NormalModeGlobal.bonus)
	
