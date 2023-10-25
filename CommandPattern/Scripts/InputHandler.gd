
#The input handler is called every frame to output which key is being pressd and assigning that key to a certain command action
class_name InputHandler

var Jump : Command = Jump_Command.new()
var disable : Command = Disable.new()

func HandleInput() -> Command:
	if Input.is_action_pressed("Jump"):
		print("Passing Jump command")
		return  Jump
	if Input.is_action_pressed("Disable"):
		print("Passing disable Command")
		return disable
		
	#Create new if commands here:
	
	
	return null
