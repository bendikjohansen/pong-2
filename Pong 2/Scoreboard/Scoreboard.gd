extends Label

var left_score = -2
var right_score = -2

func _on_LeftGoal_area_entered(area):
	right_score += 1
	update_score()


func _on_RightGoal_area_entered(area):
	left_score += 1
	update_score()
	

func update_score():
	set_text(str(left_score) + " - " + str(right_score))
