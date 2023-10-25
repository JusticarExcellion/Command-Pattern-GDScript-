extends Node


#This is the base class for the command class which other classs inherit to prforman command action during the game
class_name Command

func _init():
	pass

func execute(GameActor : actor):
	print("Doing Nothing")
	return
