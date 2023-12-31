extends Node2D

var timeout = false

func _process(delta):
	if $Sprite/RayCast2D.is_colliding() == true:
		if not timeout:
			fire()
			$Sprite/Timer.start()
			timeout = true
	
func fire():
	$Sprite/RayCast2D.add_child(load("res://Obstacles/Lightning.tscn").instance())


func _on_Timer_timeout():
	timeout = false
