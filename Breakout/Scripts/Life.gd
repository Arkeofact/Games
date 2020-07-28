extends Label

onready var _life = 3


func _ready():
	var BallNode = get_node("../Ball/Balle")  
	BallNode.connect("ball_down", self, "_on_ball_down")


func _on_ball_down() :
	_life+=-1
	self.text = str("0",_life)


	if _life == 0:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Scenes/Lost.tscn")

