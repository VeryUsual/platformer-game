extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	var t = create_tween()
	t.tween_property($Button, "theme_override_font_sizes/font_size", 60, 0.2)
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://main.tscn")
