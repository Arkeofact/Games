extends Area2D


export var SPEED=200

var Velocity=Vector2()

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
