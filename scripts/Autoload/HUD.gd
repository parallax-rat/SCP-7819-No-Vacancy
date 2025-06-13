extends Node

const INTERACT : String = "Interact"
var interact_text : MarginContainer

func show_interact_text():
	assert(interact_text != null)
	interact_text.visible = true

func hide_interact_text():
	assert(interact_text != null)
	interact_text.visible = false
	
func update_interact_text(object: Node):
	var label: Label = interact_text.get_child(0)
	label.text = INTERACT + object.DISPLAY_NAME
