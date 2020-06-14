extends KinematicBody2D

const MAX_ACC: = 6400

var velocity: = Vector2.ZERO
var axis: = Vector2.ZERO

func _process(delta: float) -> void:
	axis.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	velocity.x = axis.x * MAX_ACC * delta
	
	velocity = move_and_slide(velocity)
	pass


func _on_Machine_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click-izq"):
		$AnimatedSprite.play("Drunk")
