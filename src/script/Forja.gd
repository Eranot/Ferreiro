extends Node2D

var cursorNormal = load("res://src/sprite/cursor/hammer_normal.png")
var cursorBatendo = load("res://src/sprite/cursor/hammer_batendo.png")

func _ready():
	Input.set_custom_mouse_cursor(cursorNormal, Input.CURSOR_ARROW, Vector2(0, 10))
	
func onInput(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		Input.set_custom_mouse_cursor(cursorBatendo, Input.CURSOR_ARROW, Vector2(0, 10))
		yield(get_tree().create_timer(0.2), "timeout")
		Input.set_custom_mouse_cursor(cursorNormal, Input.CURSOR_ARROW, Vector2(0, 10))
