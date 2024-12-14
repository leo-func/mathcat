extends Node2D

# Variaveis de cena
var main_scene = null
var modes_scene = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main_scene = get_tree().mathcat


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
