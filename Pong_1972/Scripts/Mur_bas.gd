extends Area2D

export var _bounce_direction=-1
onready var down_wall_sampler=get_node("../Rebond_mur")

func _on_Mur_bas_area_entered(area):
	if area.name=="Ball":
		down_wall_sampler.play()
		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()

