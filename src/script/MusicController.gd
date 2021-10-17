extends Node

var dialogoMusic = load("res://audio/dialogoMusic.mp3")

# Called when the node enters the scene tree for the first time.
func playDialogoMusic(delay = 0):
	if(delay > 0):
		yield(get_tree().create_timer(delay), "timeout")
		
	$Music.volume_db = -30
	$Music.stream = dialogoMusic
	$Music.play()
	
func pause():
	$Music.pause()
