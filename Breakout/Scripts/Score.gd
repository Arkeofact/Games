extends Label

onready var globalScore = Mega.scoring


func _on_Ball_Brick_Hit():
	globalScore+=1
	self.text = str("0",globalScore)
	Mega.scoring = globalScore
	if globalScore >= 120 :
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Scenes/Win.tscn")
	pass
