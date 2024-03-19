extends Node3D

@export var is_lit:bool = true

func _process(_delta: float) -> void:
	if $OmniLight3D: 
		$OmniLight3D.visible = is_lit

