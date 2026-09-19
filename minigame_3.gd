extends Node2D

var level_cleared = false
var time_left: float = 30.0 
@onready var timer_label: RichTextLabel = $TimerLabel 
func _ready() -> void:
	print("MINIGAME 2, initialized")
	$Player.SPEED = 450.0 
	$Player.JUMP_VELOCITY = -600.0
func _process(delta: float) -> void:
	if not level_cleared:
		time_left -= delta
		if timer_label:
			timer_label.clear()
			timer_label.append_text("%.1f" % max(0.0, time_left))
		if time_left <= 0:
			level_cleared = true
			print("YOU SURVIVED, YAYY!!")
			get_tree().change_scene_to_file("res://minigame_4_scene.tscn")	
func _on_obstaclearea_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")


func _on_obstaclearea_2_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")

func _on_obstaclesarea_3_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")
	


func _on_obstaclearea_4_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")


func _on_obstaclerea_5_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")	


func _on_obstaclearea_6_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")		


func _on_obstaclearea_7_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")			


func _on_obstaclearea_8_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")			


func _on_obstaclearea_9_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")				


func _on_obstaclearea_10_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")				


func _on_obstaclearea_11_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")				


func _on_obstaclearea_12_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_cleared = true
		print("You stoobid lah, the ghost got u.! Sent to losing screen...")
		get_tree().change_scene_to_file("res://minigame_2_losingscreen.tscn")				
