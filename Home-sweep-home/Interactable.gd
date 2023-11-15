extends Sprite2D
class_name Interactable

@export var clickable_component : ClickableComponent
@export var name_of_interactable : String

func _ready() -> void:
	clickable_component.set_collision_bounds(texture.get_width(), texture.get_height())
	clickable_component.been_clicked.connect(_on_click)
	clickable_component.mouse_entered.connect(_on_mouse_enter)
	
func _on_click() -> void:
	print("Clicked Innit")

func _on_mouse_enter() -> void:
	print(name)
