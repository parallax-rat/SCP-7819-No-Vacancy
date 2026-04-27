extends "res://Scripts/Player.gd"

func _unhandled_input(event: InputEvent) -> void:
	# Mouse look when captured
	if event is InputEventMouseMotion and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		# Horizontal rotation (body)
		#rotate_y(-event.relative.x * mouseSensitivity)
		cameraRotation.y -= event.relative.x * mouseSensitivity
		cameraRotation.y = clamp(cameraRotation.y, cameraMinAngle, cameraMaxAngle)

		# Vertical rotation (camera) with clamping
		cameraRotation.x -= event.relative.y * mouseSensitivity
		cameraRotation.x = clamp(cameraRotation.x, cameraMinAngle, cameraMaxAngle)
		neckNode.rotation = cameraRotation
