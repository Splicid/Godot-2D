extends CharacterBody2D

var bullet_scene: PackedScene = preload("res://scene/bullet.tscn")

func _process(_delta):
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 300
	move_and_slide()
	
	if Input.is_action_just_pressed('fire'):
		shoot()
	# look_at and rotate is used for player to face mouse
	look_at(get_global_mouse_position())
	rotate(PI/2)
	

func shoot():
	var bullet = bullet_scene.instantiate()
	bullet.global_position = $Muzzle.global_position
	bullet.global_rotation = $Muzzle.global_rotation
	$Muzzle.add_child(bullet)
