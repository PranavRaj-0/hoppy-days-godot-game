extends CanvasLayer

func _ready():
	$Control/banner/HBoxContainer/lifeCount.text = "3"
	
func update_GUI(lives_left, coins):
	$Control/banner/HBoxContainer/lifeCount.text = str(lives_left)
	$Control/banner/HBoxContainer/coinCount.text = str(coins)
