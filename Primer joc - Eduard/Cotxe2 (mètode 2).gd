extends KinematicBody2D

#var wheel_distance = 150	#definim la distancia entre les rodes de la base
#var steering_angle = 22.5	#definim l'angle que agafarà la roda de devant, poso 22.5 perque estava decidint-me entre 15º i 30º perque no volía que girés molt ni tampoc poc
#
#var velocity = Vector2.ZERO
#var steer_direction		#definim la direcció perque després el cotxe hurà d'anar endevant i enrrere amb la roda girada.
#
#func _physics_process(delta):#serveix per fer tota la part física del moviment i després hutilitzar-la 
#	get_input()
#	calculate_steering(delta)
#	velocity = move_and_slide(velocity)
#
#func get_input():
#	var turn = 0
#	if Input.is_action_pressed('ui_down'):
#		turn += 1
#	if Input.is_action_pressed('ui_up'):
#		turn -= 1
#	steer_direction = turn * steering_angle	 #Com que hi ha turn negatiu la direccio pot sortir negativa. 
#	velocity = Vector2.ZERO
#	if Input.is_action_pressed('ui_right'):
#		velocity = transform.x * 500
#func calculate_steering(delta):
#	pass
