extends Sprite
class_name player_texture

export(NodePath) onready var animation = get_node(animation) as AnimationPlayer

func animate(direction: Vector2) -> void:
	#print(direction)
	verify_position(direction)
	horizontal_behavior(direction)

func verify_position(direction: Vector2) -> void:
	if direction.x > 0:
		flip_h = false
	elif direction.x < 0:
		flip_h = true
		
func horizontal_behavior(direction: Vector2) -> void:
	if direction.x != 0:
		animation.play("run")
	else:
		animation.play("idle")
