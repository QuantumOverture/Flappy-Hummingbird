extends KinematicBody2D
onready var visinote = get_node("VisibilityNotifier2D")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var motion = Vector2()
var Speed = -0.1

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Pipes")


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	motion.x += Speed
# warning-ignore:return_value_discarded
	move_and_collide(motion)

func _on_VisibilityNotifier2D_screen_exited():
	self.queue_free()
	

