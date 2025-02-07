class_name Test 
extends Node2D

@onready var timer: Timer = $Timer


func _ready() -> void:
	PersistentData.saveable_list[0].load_resource()
	timer.timeout.connect(on_timer_timeout)
	Music.start("game")


func on_timer_timeout() -> void:
	Music.pause_resource.set_value(true)
