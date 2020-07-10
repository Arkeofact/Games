extends Area2D


export var SPEED=200

var Velocity=Vector2()
var _ball_dir=1
onready var l_sampler=get_node("../Rebond_raquette")

onready var _screen_size_y = get_viewport_rect().size.y

func get_input():
	Velocity=Vector2()
	if Input.is_action_pressed("Left_up"):
		Velocity.y=-1
	if Input.is_action_pressed("Left_down"):
		Velocity.y=+1
	Velocity=Velocity*SPEED



func _physics_process(delta):
	get_input()
	position+=Velocity*delta
	position.y=clamp(position.y,25,_screen_size_y-25)



func _on_Left_pad_area_entered(area):
	if area.name == "Ball":
		l_sampler.play()
		area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		area._speed+= 20

