extends Label

onready var globalLife = Mega.lives


func _on_Ball_ball_down():
	globalLife+=-1
	self.text = str("0",globalLife)
	Mega.lives = globalLife
	if globalLife == 0:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Scenes/Lost.tscn")
	pass 
