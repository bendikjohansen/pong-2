extends Area2D

const SPEED = 100

onready var initial_position = global_position
var velocity = Vector2.LEFT

signal move(ball_position)

func _physics_process(delta):
	position = position + velocity * SPEED * delta
	emit_signal("move", position)

func reset():
	position = initial_position
	velocity = Vector2.LEFT
