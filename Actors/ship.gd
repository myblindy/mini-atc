class_name Ship extends CharacterBody2D

const SPEED := 50.0

func _physics_process(delta: float) -> void:
	# move forward
	var collision := move_and_collide(Vector2.UP.rotated(rotation) * SPEED * delta)
	if collision:
		pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		Game.instance.start_set_ship_target_signal.emit(self)
