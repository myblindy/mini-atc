extends Line2D

var _ship: Ship

func _ready() -> void:
	set_process(false)
	Game.instance.start_set_ship_target_signal.connect(func(ship: Ship) -> void:
		_ship = ship
		set_process(true))
		
func _process(delta: float) -> void:
	points = PackedVector2Array([_ship.position, get_local_mouse_position()])
	pass
