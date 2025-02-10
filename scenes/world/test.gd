class_name Test 
extends Node2D


func _ready() -> void:
	PersistentData.saveable_list[0].load_resource()
	#Music.start("game")
