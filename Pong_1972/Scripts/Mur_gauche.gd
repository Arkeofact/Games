extends Area2D

onready var l_wall_sampler=get_node("../Ball_out")

func _on_Mur_gauche_area_entered(area):
	if area.name=="Ball":
		l_wall_sampler.play()
		area.reset()
