extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var motion = Vector2()
var max_rotate_going_down = 60
var max_rotate_going_up = -30
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		motion.y += -4
		if max_rotate_going_up < get_rotation_degrees():
			set_rotation_degrees(-20+get_rotation_degrees())
	else:
		motion.y += 0.2
		if max_rotate_going_down > get_rotation_degrees():
			set_rotation_degrees(1+get_rotation_degrees())
	move_and_collide(motion)
