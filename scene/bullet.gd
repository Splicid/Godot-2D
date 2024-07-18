extends Area2D

var distance = 0

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
	queue_free()
