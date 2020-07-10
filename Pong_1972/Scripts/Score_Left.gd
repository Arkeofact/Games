extends Label

onready var _left_score = 0
onready var _right_score = 0

func _addScoreLeft():
	_left_score+=1
	self.text = str(_left_score)


func _on_Mur_droite_area_entered(area):
	if area.name == "Ball":
		_addScoreLeft()
