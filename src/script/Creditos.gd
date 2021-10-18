extends Node2D

func _on_Inicio_pressed():
	var scene = load("res://src/scene/Menu.tscn")
	get_tree().change_scene_to(scene)
