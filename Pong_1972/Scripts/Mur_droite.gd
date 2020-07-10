extends Area2D

onready var r_wall_sampler=get_node("../Ball_out")

func _on_Mur_droite_area_entered(area):
	if area.name=="Ball":
		r_wall_sampler.play()
		area.reset()
