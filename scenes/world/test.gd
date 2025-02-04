class_name Test 
extends Node2D

@onready var timer: Timer = $Timer
@onready var damage_tscn: PackedScene = preload("res://scenes/vfx/damage_points.tscn")


func _ready() -> void:
	timer.timeout.connect(on_timer_timeout)
	Music.start("game")


func on_timer_timeout() -> void:
	#Music.pause_resource.set_value(true)
	var d: DamagePoints = damage_tscn.instantiate() as DamagePoints
	d.set_displayed_points(100, false)
	d.scale = Vector2(1, 1)
	d.global_position = Vector2(960, 540)
	add_child(d)
