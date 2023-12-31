extends Node2D

var lives = 5
var coins = 0

var coins_for_extra_life = 5

func _ready():
	add_to_group("Gamestate")
	update_GUI()

func hurt():
	lives -= 1
	$Player.hurt()
	update_GUI()
	print(lives)
	if lives <= 0:
		end_game()
	
func update_GUI():
	get_tree().call_group("GUI", "update_GUI", lives, coins)
	
func coin_up():
	coins += 1
	if (coins % coins_for_extra_life == 0):
		lives += 1
	update_GUI()
	
	
func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")
	
func win_game():
	get_tree().change_scene("res://Levels/Win.tscn")
