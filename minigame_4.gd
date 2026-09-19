extends Node2D

var level_cleared = false
var time_left: float = 15.0 
@onready var timer_label: RichTextLabel = $TimerLabel 
func _ready() -> void:
	print("MINIGAME 2, initialized")
	$Player.SPEED = 400.0 
	$Player.JUMP_VELOCITY = -550.0
func _process(delta: float) -> void:
	if not level_cleared:
		time_left -= delta
		if timer_label:
			timer_label.clear()
			timer_label.append_text("%.1f" % max(0.0, time_left))
		if time_left <= 0:
			level_cleared = true
			print("YOU SURVIVED, YAYY!!")
			get_tree().change_scene_to_file("res://minigame_4_losingscreen.tscn")	
func _on_escape_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("Level 4 Cleared!")
		get_tree().change_scene_to_file("res://winningscreen_3.tscn")


func _on_hell_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("U fell into the pit stoobid! Going to losing screen...")
		get_tree().change_scene_to_file("res://minigame_4_losingscreen.tscn")
