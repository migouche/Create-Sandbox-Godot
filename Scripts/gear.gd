extends CSGBox

class_name Gear

enum GearType{
	SOURCE,
	OTHER
}

enum GearOrientation{
	UP,
	DOWN,
	LEFT,
	RIGHT,
	FRONT,
	BACK
}

func _process(delta):
	var pos = get_translation()
	var cam = get_tree().get_root().get_camera()
	var screen_pos = cam.unproject_position(pos)
	get_node("Label").set_position(Vector2(screen_pos.x - 50, screen_pos.y))
	
func _ready():
	pass
