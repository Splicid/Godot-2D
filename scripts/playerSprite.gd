extends Sprite2D


const speed: int = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# look_at and rotate is used for player to face mouse
	look_at(get_global_mouse_position())
	rotate(PI/2)
	
	
	

func _input(event):
	pass
	
