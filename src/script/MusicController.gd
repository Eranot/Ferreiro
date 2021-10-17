extends Node

var dialogoMusic = load("res://audio/dialogoMusic.mp3")

var martelada1 = load("res://audio/martelada 1.wav")
var martelada2 = load("res://audio/martelada 2.wav")
var martelada3 = load("res://audio/martelada 3.wav")
var marteladaErrada = load("res://audio/martelada 4.wav")
var marteladaIndex = 0

# Called when the node enters the scene tree for the first time.
func playDialogoMusic(delay = 0):
	if(delay > 0):
		yield(get_tree().create_timer(delay), "timeout")
		
	$Music.volume_db = -30
	$Music.stream = dialogoMusic
	$Music.play()

func playMartelada():
	var i = marteladaIndex % 3
	
	if(i == 0):
		$Environment.stream = martelada1
	if(i == 1):
		$Environment.stream = martelada2
	if(i == 2):
		$Environment.stream = martelada3

	$Environment.play()
	marteladaIndex += 1

func pause():
	$Music.pause()
