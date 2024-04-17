extends Node2D

var isMousePointing = false

func _process(_delta):
	if isMousePointing:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			queue_free()

func _on_area_2d_mouse_exited():
	isMousePointing = false

func _on_area_2d_mouse_entered():
	isMousePointing = true
