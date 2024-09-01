extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSpriteD2.sprite_frames.get_animation_names()
	$AnimatedSpriteD2.play(mob_types[randi() % mob_types.size()])

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
