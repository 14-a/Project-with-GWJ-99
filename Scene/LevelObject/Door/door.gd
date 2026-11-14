extends Node2D

signal ToDoor

@export var outside : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TipText.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var Area = $Area2D.get_overlapping_bodies()
	$TipText.visible = false
	for body in Area:
		if body is CharacterBody2D:
			if body.name == "player":
				$TipText.Text = "[e]进入"
				$TipText.visible = true
				if Input.is_action_just_pressed("交互"):
					ToDoor.emit(outside)
	pass
