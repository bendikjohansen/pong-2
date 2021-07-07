extends Area2D

const SPEED = 0.9

func _on_Paddle_area_entered(area):
	if area.name == 'Ball':
		var direction = sign(area.velocity.x) * -1
		area.velocity = Vector2(direction, randf() * 2 - 1).normalized()

func _on_Ball_move(ball_position):
	position.y = clamp(move_toward(position.y, ball_position.y, SPEED), 10, get_viewport().get_visible_rect().size.y - 10)
