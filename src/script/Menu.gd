extends Node2D

func _on_Iniciar_pressed():
	var scene = load("res://src/scene/Outside.tscn")
	get_tree().change_scene_to(scene)
