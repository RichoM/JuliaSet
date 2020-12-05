extends Sprite

func _input(event):
	if event is InputEventMouseMotion:
		var viewport = get_viewport_rect();
		var mouse_x = event.position.x/viewport.size.x;
		var mouse_y = event.position.y/viewport.size.y;
		mouse_x = mouse_x * 4 - 2;
		mouse_y = mouse_y * 4 - 2;
		print(Vector2(mouse_x, mouse_y))
		material.set_shader_param("real", mouse_x);
		material.set_shader_param("imaginary", mouse_y);
   
