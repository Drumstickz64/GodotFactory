extends Position2D


signal spawned

export var entity_scene: PackedScene
export var entity_parent_path: NodePath
export var timer_path: NodePath
export var set_entity_as_toplevel := false

onready var _timer: Timer = get_node_or_null(timer_path)
onready var _entity_parent: Node = get_node_or_null(entity_parent_path)


func _ready() -> void:
	if not _entity_parent:
		_entity_parent = self
	
	if _timer:
		_timer.connect("timeout", self, "spawn")


func spawn() -> void:
	var entity := entity_scene.instance()
	assert(entity is Node2D, "provided entity must inherit from Node2D")
	_entity_parent.add_child(entity)
	entity.position = global_position
	entity.set_as_toplevel(set_entity_as_toplevel)
