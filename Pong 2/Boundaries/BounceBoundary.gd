extends Area2D

func _on_Boundary_area_entered(area):
	if area.name == "Ball":
		area.velocity.y *= -1
