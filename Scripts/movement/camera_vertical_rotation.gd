extends Spatial

class_name VRot

func _input(event):
	if event is InputEventMouseMotion:
		rotate_x(deg2rad(-event.relative.y * get_parent().MOUSE_SENSITIVITY))
