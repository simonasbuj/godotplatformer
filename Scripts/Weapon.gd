extends Node2D

onready var player_sprite = get_parent().get_node("Sprite")

func _ready():
	#$Sprite.flip_h = true
	#$Sprite.flip_v = true
	pass

func _process(delta):
	move_weapon(get_global_mouse_position(), get_global_position())
	
	
func move_weapon(mouse_pos, weapon_pos):
	if mouse_pos.x < weapon_pos.x:
		player_sprite.flip_h = true
		$Sprite.flip_v = true
	else:
		player_sprite.flip_h = false
		$Sprite.flip_v = false
		
	look_at(mouse_pos)