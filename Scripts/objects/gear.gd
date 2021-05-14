extends CSGBox

class_name Gear

var source : Gear
var connected_gears = []

export var RPM : float
export var teeth_number : int

enum GearType{
	SOURCE,
	OTHER
}

export(GearType) var gear_type

enum GearOrientation{
	UP,
	DOWN,
	LEFT,
	RIGHT,
	FRONT,
	BACK
}

func update_gears():
	for gear in get_tree().get_root().get_child(0).get_child(0).gears:
		print(gear.get_name())
		
func update_sources():
	pass

func update_connected_gears():
	pass

func _ready():
	pass
	
func _process(delta):
	var pos = get_translation()
	var cam = get_tree().get_root().get_camera()
	var screen_pos = cam.unproject_position(pos)
	get_node("Label").set_text(str(teeth_number) + " teeth")
	get_node("Label").set_position(Vector2(screen_pos.x - 50, screen_pos.y))
