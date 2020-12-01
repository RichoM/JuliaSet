extends Sprite

func _input(event):
	if event is InputEventMouseMotion:
		var viewport = get_viewport_rect();
		var mouse_x = event.position.x/viewport.size.x;
		var mouse_y = event.position.y/viewport.size.y;
		material.set_shader_param("real", mouse_x);
		material.set_shader_param("imaginary", mouse_y);
   
