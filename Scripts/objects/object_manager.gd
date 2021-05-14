extends Node

var gears = []

func update_gears():
	for gear in gears:
		if gear.gear_type == 0:
			print("found a source gear")
			gear.update_gears()

func _ready():
	var current_scene = get_tree().get_root().get_child(0).get_children()
	for obj in current_scene:
		if "Gear" in obj.get_name():
			print(obj.get_name())
			gears.append(obj)
	update_gears()
