extends Node2D

onready var Alvo = preload("res://src/object/Alvo.tscn")

export var minTimeToSpanAgain = 2
export var maxTimeToSpanAgain = 4
export var numBatidas = 2

var pontos = 0

func _ready():
	randomize()
	adicionarAlvoAleatorio(0)

func adicionarAlvoAleatorio(index):
	
	if(index >= numBatidas):
		onFinishBatidas()
		return
	
	# Criar um alvo
	var alvo = Alvo.instance()
	alvo.position = Vector2(
		rand_range(0, get_viewport().get_visible_rect().size.x), 
		rand_range(0, get_viewport().get_visible_rect().size.y)
	)
	
	add_child(alvo)
	var timeToSpawnAgain = rand_range(minTimeToSpanAgain, maxTimeToSpanAgain)
	
	yield(get_tree().create_timer(timeToSpawnAgain), "timeout")
	adicionarAlvoAleatorio(index + 1)
	
func aumentarPontos(pontos):
	print("aumentando pontos")
	self.pontos += pontos

func onFinishBatidas():
	print("Acabou as batidas, volta pra tela anterior")
