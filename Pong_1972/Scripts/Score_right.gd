extends Label

onready var right_score = 0


func _addScore():
	right_score+=1
	self.text = str(right_score)



func _on_Mur_gauche_area_entered(area):
	if area.name == "Ball":
		_addScore()
