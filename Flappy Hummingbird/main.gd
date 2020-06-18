extends Node
onready var PipeScene = load("res://Pipe.tscn")
onready var timer = get_node("Timer")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()
var KeepSpawn = true
# Called when the node enters the scene tree for the first time. 
func _ready():
	timer.set_wait_time(1.1)
	timer.start()
	rng.randomize()
	

func TimerTimeout():
	if KeepSpawn == true:
		var Pipe1 = PipeScene.instance()
		var RandomSpot = rng.randi_range(-350, -600)
		var CurrentPos = Vector2(400,RandomSpot) #Between -100 and -850
		Pipe1.set_position(CurrentPos)
		add_child(Pipe1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
