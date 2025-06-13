extends Node3D

enum Lane{LEFT,RIGHT}

const MOVE_LEFT = "move_left"
const MOVE_RIGHT = "move_right"
const GAS = "gas"

var current_lane:= Lane.RIGHT

func _process(delta: float) -> void:
	if Input.is_action_just_pressed(MOVE_LEFT) and current_lane == Lane.RIGHT:
		switch_lane(Lane.LEFT)

func switch_lane(direction:Lane) -> void:
	match direction:
		Lane.LEFT:
			pass
		Lane.RIGHT:
			pass
