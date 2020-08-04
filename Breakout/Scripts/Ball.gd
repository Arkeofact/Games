extends KinematicBody2D

export var speed = 200

onready var bounceSampler = get_node("Rebond")
onready var hitBrick = get_node("Touche")
onready var ballOut = get_node("Out")

signal Brick_Hit
signal ball_down 

var movement = Vector2(0, speed)
var can_move = true

const begin_pos = Vector2(245,500)


func _ready():
	position = begin_pos



func reset():
	position = begin_pos
	speed = 200
	movement = Vector2(0,200) 

	


func _physics_process(delta):
	if can_move == true:
	   var collision_info = move_and_collide(movement * delta)
	  
	
	   if collision_info:
  
		   if collision_info.collider.name == "Paddle":
			   bounceSampler.play()
			   speed = -speed
			   var diff = collision_info.collider.position.x - position.x
			   var new_movement = Vector2(-diff*5, speed)
			   movement = new_movement
			
		   elif collision_info.collider.is_in_group("Alpha") :
			   emit_signal("Brick_Hit")
			   speed = speed*1.08
			   hitBrick.play()
			   collision_info.collider.free()
			   movement = movement.bounce(collision_info.normal)
			
		   elif collision_info.collider.is_in_group("Bas") :
			   ballOut.play()
			   emit_signal("ball_down")
			   reset()
		
		
		   else:
			   movement = movement.bounce(collision_info.normal)
			   bounceSampler.play()
		   




