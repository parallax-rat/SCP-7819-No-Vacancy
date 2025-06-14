extends PathFollow3D

@export var speed : int = 10

func _process(delta):
	progress += speed * delta
