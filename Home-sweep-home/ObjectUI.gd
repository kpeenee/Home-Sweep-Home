extends Control

@onready var label: Label = $Panel/Label
@onready var panel: Panel = $Panel

func _ready() -> void:
	panel.visible = false
	var interactables = get_tree().get_nodes_in_group("Interactable")
	for interactable in interactables:
		interactable.mouse_enter.connect(_show_panel)
		interactable.mouse_exit.connect(_hide_panel)

func _process(delta: float) -> void:
	position = get_global_mouse_position()

func _show_panel(object_name : String) -> void:
	label.text = object_name
	panel.visible = true
	
func _hide_panel() -> void:
	panel.visible = false
