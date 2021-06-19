extends Node

var screen_size

var x = 126
var y = 80

func _ready():
	 #screen_size = $Panel.get_viewport_rect().size
	screen_size = 1021
	
	var Enemy = load("res://Enemy_02.tscn")
	
	var Enemigos = Array()
	for i in range(7):
		var Enemigo = Enemy.instance()
		Enemigo.position.x = x
		x = x + 126
		Enemigos.push_front(Enemigo)
		add_child(Enemigo)
		
	




func _on_Timer_timeout():
#	$Enemy_02.position.y = 12
#	y = y + 12
	#$Enemy_02.mover()
	get_tree().call_group('GrupoEnemigos', 'mover')




#func mover(Enemigos, Enemigo):
#		print("d")	
#		for i in range(7):
#			Enemigos[0].position.x = x
#			Enemigos[0].position.y = y
#			y= y + 84
#	match(i):
#		1:
#			print("22")
#			print($Enemy_02.position.x)
#			if(($Enemy_02.position.x + 43) < screen_size.x):
#
#				x += 1
#				Mi_nodo3.position.x = x
#			else:
#				i = 2
#		2:
#			print((Mi_nodo3.position.x + 43)," x ",">= ", 87, " u.u")
#			if((Mi_nodo3.position.x + 43) >= 87):
#				x -= 1
#				Mi_nodo3.position.x = x
#			else:
#				i = 3
#
#		3: if(Mi_nodo3.position.y + 42 < screen_size.y):
#				y += 84
#				Mi_nodo3.position.y = y
#				i=1




