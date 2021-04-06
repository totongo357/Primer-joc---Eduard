extends KinematicBody2D

export (int) var speed = 200
export (float) var rotation_speed = 2

var velocity = Vector2()
var rotation_dir = 0
var max_rotation_dir

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		rotation_degrees -= 0.95
		rotation_dir += 0.5
	if Input.is_action_pressed('ui_left'):
		rotation_degrees += 0.95
		rotation_dir -= 0.5

	if Input.is_action_pressed('ui_down') :
		velocity = Vector2(-speed, 0).rotated(rotation)
		if Input.is_action_pressed("ui_right"):
			rotation_degrees += 0.95
		elif Input.is_action_pressed("ui_left"):
			rotation_degrees -= 0.95

	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(speed, 0).rotated(rotation)
		if Input.is_action_pressed("ui_right"):
			rotation_degrees += 0.95
		elif Input.is_action_pressed("ui_left"):
			rotation_degrees -= 0.95

	if Input.is_action_pressed("Derrapar"):
		rotation_dir = rotation_dir * 2

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	velocity = move_and_slide(velocity)
