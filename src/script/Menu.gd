extends Node2D

func _ready():
	#pass
	MusicController.playDialogoMusic(1)

func _on_Iniciar_pressed():
	var scene = load("res://src/scene/Introducao.tscn")
	get_tree().change_scene_to(scene)
