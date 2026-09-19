extends Node2D

func _ready() -> void:
	print("Losing screen loaded. Waiting 3 seconds...")
	await get_tree().create_timer(3.0).timeout
	print("Returning to main UI...")
	get_tree().change_scene_to_file("res://minigame_3.tscn")
