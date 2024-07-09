extends CharacterBody2D

var bullet_scene: PackedScene = preload("res://scene/bullet.tscn")


func _process(_delta):
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 300
	move_and_slide()
	
