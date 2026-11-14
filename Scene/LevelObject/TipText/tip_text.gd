extends Node2D

var Text = "默认文本"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = Text
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = Text
	pass
