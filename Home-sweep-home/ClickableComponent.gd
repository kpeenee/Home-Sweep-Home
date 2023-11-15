extends Area2D
class_name ClickableComponent

@export var collision_shape : CollisionShape2D
signal been_clicked

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			emit_signal("been_clicked")

func set_collision_bounds(width : float, height : float) -> void:
	collision_shape.shape.set_size(Vector2(width,height))
