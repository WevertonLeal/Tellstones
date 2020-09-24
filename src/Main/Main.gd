extends Node2D
onready var crown = get_node("Crown")
onready var flag = get_node("Flag")
onready var hammer = get_node("Hammer")
onready var knight = get_node("Knight")
onready var scales = get_node("Scale")
onready var shield = get_node("Shield")
onready var sword = get_node("Sword")
onready var first = get_node("First")
onready var second = get_node("Second")
onready var third = get_node("Third")
onready var fourth = get_node("Fourth")
onready var fifth = get_node("Fifth")
onready var sixth = get_node("Sixth")
onready var seventh = get_node("Seventh")
onready var hide = load('src/stones/hide_stone.png')
var clickable = EMPTY

enum{
	EMPTY,CROWN,FLAG,HAMMER,KNIGHT,SCALE,SHIELD,SWORD,SCORE,SCOREE
}

func _process(delta):
	match clickable:
		EMPTY:
			pass
		CROWN:
			if Input.is_action_pressed("mouse_left"):
				crown.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(crown.get_node("Sprite").texture != hide):
					crown.get_node("Sprite").set_texture(hide)
				else:
					crown.get_node("Sprite").set_texture(load("res://src/stones/crown_stone.png"))
		FLAG:
			if Input.is_action_pressed("mouse_left"):
				flag.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(flag.get_node("Sprite").texture != hide):
					flag.get_node("Sprite").set_texture(hide)
				else:
					flag.get_node("Sprite").set_texture(load("res://src/stones/flag_stone.png"))
		HAMMER:
			if Input.is_action_pressed("mouse_left"):
				hammer.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(hammer.get_node("Sprite").texture != hide):
					hammer.get_node("Sprite").set_texture(hide)
				else:
					hammer.get_node("Sprite").set_texture(load("res://src/stones/hammer_stone.png"))
		KNIGHT:
			if Input.is_action_pressed("mouse_left"):
				knight.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(knight.get_node("Sprite").texture != hide):
					knight.get_node("Sprite").set_texture(hide)
				else:
					knight.get_node("Sprite").set_texture(load("res://src/stones/knight_stone.png"))
		SCALE:
			if Input.is_action_pressed("mouse_left"):
				scales.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(scales.get_node("Sprite").texture != hide):
					scales.get_node("Sprite").set_texture(hide)
				else:
					scales.get_node("Sprite").set_texture(load("res://src/stones/scale_stone.png"))
		SHIELD:
			if Input.is_action_pressed("mouse_left"):
				shield.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(shield.get_node("Sprite").texture != hide):
					shield.get_node("Sprite").set_texture(hide)
				else:
					shield.get_node("Sprite").set_texture(load("res://src/stones/shield_stone.png"))
		SWORD:
			if Input.is_action_pressed("mouse_left"):
				sword.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
			if Input.is_action_just_pressed("mouse_right"):
				if(sword.get_node("Sprite").texture != hide):
					sword.get_node("Sprite").set_texture(hide)
				else:
					sword.get_node("Sprite").set_texture(load("res://src/stones/sword_stone.png"))
		SCORE:
			if Input.is_action_pressed("mouse_left"):
				$Score.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY
		SCOREE:
			if Input.is_action_pressed("mouse_left"):
				$Score2.global_position = get_viewport().get_mouse_position()
			if Input.is_action_just_released("mouse_left"):
				clickable = EMPTY

func _on_Crown_mouse_entered():
	clickable = CROWN
func _on_Flag_mouse_entered():
	clickable = FLAG
func _on_Hammer_mouse_entered():
	clickable = HAMMER
func _on_Knight_mouse_entered():
	clickable = KNIGHT
func _on_Scale_mouse_entered():
	clickable = SCALE
func _on_Shield_mouse_entered():
	clickable = SHIELD
func _on_Sword_mouse_entered():
	clickable = SWORD
func _on_Score_mouse_entered():
	clickable = SCORE
func _on_Score2_mouse_entered():
	clickable = SCOREE
