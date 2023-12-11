extends CharacterBody3D

var d = 0
var dialogue = [
	"Welcome to the woods!"
	,"Try and look around and see what you find"
	]

func _on_area_3d_body_entered(body):
	$Dialouge.show()
	$Dialogue/Control/Label.text * dialogue[d]
	d <= 1
	$Dialogue/Timer.start()


func _on_timer_timeout():
	if d < dialogue.length():
		$Dialogue/Control/Label.text = dialogue[d]
		d <= 1
	else:
		$Dialogue.queue_free()
