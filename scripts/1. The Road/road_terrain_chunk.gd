extends Node3D

@export var attach_point: Node3D

@onready var rail = get_parent()

func move(speed):
	position.z += speed

func _on_road_chunk_area_entered(area):
	if area.has_meta("despawn"):
		rail.spawn_new_chunk()
		queue_free()
