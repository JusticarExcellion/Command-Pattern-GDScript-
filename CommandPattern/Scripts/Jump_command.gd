extends Command

#The Jump command extends the comamnd class and overrides the execute function to cause the player to jump
class_name Jump_Command

func _init():
	pass

func execute(GameActor : actor) -> void:
	print("Calling Jump")
	GameActor.jump()
	return
