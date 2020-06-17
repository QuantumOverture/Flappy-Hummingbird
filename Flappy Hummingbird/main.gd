extends Node
onready var PipeScene = load("res://Pipe.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var Pipe = PipeScene.instance()
	var CurrentPos = Vector2(300,-350) #Between -100 and -850
	Pipe.set_position(CurrentPos)
	add_child(Pipe)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
