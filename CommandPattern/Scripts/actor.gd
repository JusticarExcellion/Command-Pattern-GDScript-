extends CharacterBody3D

class_name actor

const jumpVelocity : float = 5.0
var handle : InputHandler = InputHandler.new()

#DISREGARD THIS
@onready var collision_shape_3d = $CollisionShape3D

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func ready():
	pass
	

func _process(delta):
	
	#Gravity enables once in the air
	if not is_on_floor():
		velocity.y -= gravity * delta
		
	#Getting new Command Input and executing it
	var action : Command = handle.HandleInput()
	if action:
		action.execute(self)
		
	move_and_slide()


func jump() -> void:
	
	print("Jump")
	
	if is_on_floor():
		velocity.y = jumpVelocity
	return

#DISREGARD THIS
func disableCollision() -> void:
	
	print("Disabling Collision")
	
	collision_shape_3d.disabled = true
	
	print(collision_shape_3d.disabled)
	
	return
	
# You had new actions the actor can take here:
