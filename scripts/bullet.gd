extends Area2D

signal damage_to_enemy
var distance = 0

func _ready():
	add_to_group("bullets")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	const RANGE = 2800
	const SPEED = 1000
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * 1000 * delta
	
	distance += SPEED * delta
	if distance > RANGE:
		queue_free()
	
func _on_body_entered(body):
	if (body.name == "Gate"):
		var damage = 10
	emit_signal("damage_to_enemy")
	queue_free()
