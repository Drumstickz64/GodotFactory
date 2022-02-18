tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("Factory2D", "Position2D", 
		preload("factory_2d.gd"), preload("factory_2d_logo.png"))
	add_custom_type("Factory3D", "Position3D", 
		preload("factory_3d.gd"), preload("factory_3d_logo.png"))


func _exit_tree() -> void:
	remove_custom_type("Factory2D")
	remove_custom_type("Factory3D")
