extends Area2D


export var SPEED=200

var Velocity=Vector2()

onready var _screen_size_y = get_viewport_rect().size.y

func get_input():
	Velocity=Vector2()
	if Input.is_action_pressed("ui_up"):
		Velocity.y=-1
	if Input.is_action_pressed("ui_down"):
		Velocity.y=+1
	Velocity=Velocity*SPEED



func _physics_process(delta):
	get_input()
	position+=Velocity*delta
	position.y=clamp(position.y,25,_screen_size_y-25)
	
