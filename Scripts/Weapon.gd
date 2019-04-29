extends Node2D

onready var player_sprite = get_parent().get_node("Sprite")

export var rate_of_fire := 1.0
var time_since_shot = 0

func _ready():
	#$Sprite.flip_h = true
	#$Sprite.flip_v = true
	pass

func _process(delta):
	#point weapon at mouse position
	move_weapon(get_global_mouse_position(), self.get_global_position())
	
	if Input.is_action_pressed("shoot") and time_since_shot >= rate_of_fire:
		shoot()
		time_since_shot = 0
	else:
		time_since_shot += delta
	
func move_weapon(mouse_pos, weapon_pos):
	if mouse_pos.x < weapon_pos.x:
		player_sprite.flip_h = true
		$Sprite.flip_v = true
	else:
		player_sprite.flip_h = false
		$Sprite.flip_v = false
		
	look_at(mouse_pos)
	
	
func shoot():
	print("IM SHOOTING: " + str(time_since_shot))










