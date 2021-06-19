extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group('GrupoEnemigos')
	pass # Replace with function body.
	
func _process(delta):	
	#mover()
	pass
	
func mover():
	position.y = position.y+1


