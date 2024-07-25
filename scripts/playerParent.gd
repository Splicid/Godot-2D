extends CharacterBody2D


var bullet_scene: PackedScene = preload("res://scene/bullet.tscn")
@onready var light := $PointLight2D

func _process(_delta):
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 300
	move_and_slide()
	
	
	# look_at and rotate is used for player to face mouse
	look_at(get_global_mouse_position())
	rotate(PI/2) 
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		pass
		#if $RayCast2D.is_colliding():
			#print($RayCast2D.get_collider().name)
		#if not $Timer.is_stopped():
			#if $RayCast2D.is_colliding():
				#print($RayCast2D.get_collider().name)
		#$Timer.start()  # Start the timer
	

func shoot():
	var bullet = bullet_scene.instantiate()
	bullet.global_position = $Muzzle.global_position
	bullet.global_rotation = $Muzzle.global_rotation
	$Muzzle.add_child(bullet)
