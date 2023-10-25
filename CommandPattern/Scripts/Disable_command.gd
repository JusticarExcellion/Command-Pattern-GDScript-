extends Command

class_name Disable

func _ready():
	pass
	
func execute(gameActor : actor) -> void:
	print("disabling collision")
	gameActor.disableCollision()
	
	return
