extends Area2D


func _on_Goal_area_entered(area):
	if area.name == "Ball":
		area.reset()
