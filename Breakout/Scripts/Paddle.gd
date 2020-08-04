extends KinematicBody2D

export var speed = 200
var velocity = Vector2()
var originalPos = Vector2(245,676)

func _ready():
	var Ball = get_node( "../Ball")
	Ball.connect("ball_down", self, "_on_ball_down")
	
	
	
	

func _physics_process(delta):
	
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	velocity = velocity.normalized() * speed

	
# warning-ignore:return_value_discarded
	move_and_collide(velocity*delta)

func _on_ball_down() :
	position = originalPos
