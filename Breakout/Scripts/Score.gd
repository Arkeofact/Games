extends Label

onready var _score = Mega.scoring


func _ready():
	var BallNode = get_node("../Ball/Balle")  
	BallNode.connect("Brick_Hit", self, "_on_Brick_Hit")

func _on_Brick_Hit() :
	_score+=1
	self.text = str("0",_score)
	Mega.scoring = _score
	if _score >= 120 :
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Scenes/Win.tscn")
	



