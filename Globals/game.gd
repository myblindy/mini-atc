class_name Game

static var instance := Game.new()

var ships: Array[Ship] = []

signal start_set_ship_target_signal(ship: Ship)

func add_ship(ship: Ship) -> void:
	ships.append(ship)
	
