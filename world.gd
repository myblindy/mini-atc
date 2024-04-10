extends Node2D

func _ready() -> void:
	# development only
	Game.instance.add_ship($Ship)
	Game.instance.add_ship($Ship2)

func _process(delta: float) -> void:
	pass
