# Godot Scene Factory

2D and 3D Nodes for spawning scenes

## API

### Signals

- `spawned`: Is sent after an entity is spawned.

### Export Variables

- `entity_scene`: The scene to be spawned.
- `entity_parent_path`: The path of the node that should be the parent of the spawned entity. defaults to the factory node.
- `timer_path`: Allows you to you connect a timer that will spawn an entity when it times out.
- `set_entity_as_toplevel`: Whether or not to set the entity as the top level.

### Functions

- `spawn`: Spawns an entity.

## Attribution

[Factory](https://icons8.com/icon/cFq1ElpDRijU/factory) icon by [Icons8](https://icons8.com)
