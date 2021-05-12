extends Spatial

class_name Movement

export var speed : float
export var MOUSE_SENSITIVITY : float

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * MOUSE_SENSITIVITY))
	
func _process(delta):
	var _movement = Vector3.ZERO
	if Input.is_key_pressed(KEY_W):
		_movement -= Vector3(0, 0, 1)
	if Input.is_key_pressed(KEY_S):
		_movement += Vector3(0, 0, 1)
	if Input.is_key_pressed(KEY_D):
		_movement += Vector3(1, 0, 0)
	if Input.is_key_pressed(KEY_A):
		_movement -= Vector3(1, 0, 0)
	translate_object_local(_movement.normalized() * speed * delta)
	
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()

