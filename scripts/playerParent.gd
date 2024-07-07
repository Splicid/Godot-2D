extends CharacterBody2D


func _process(_delta):
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 300
	move_and_slide()
	
	# Shooting Input
	if Input.is_action_pressed('fire'):
		print('Shooting')
