extends Node2D

var bullet_scene: PackedScene = preload("res://scene/bullet.tscn")

func shoot(pos):
	var bullet = bullet_scene.instantiate()
	bullet.position = pos.position
	add_child(bullet)
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('fire'):
		var marker = $Player/BulletStartPosition.get_children()
		var selected = marker[0]
		shoot(selected)
