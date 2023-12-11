extends Node3D

func shoot():
	$Muzzle.show()
	$Timer.start()
	var shot_sound = get_node("/root/Game/shot_sound")
	shot_sound.play

func _on_timer_timeout():
	$Muzzle.hide()
