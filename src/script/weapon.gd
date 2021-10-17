extends Node2D

onready var Alvo = preload("res://src/object/Alvo.tscn")

export(float) var minTimeToSpanAgain = 1.0
export(float) var maxTimeToSpanAgain = 3.0
export var numBatidas = 25
export(float) var timeDecreasePorBatida = 0.2
export(float) var minDistanceBetweenPoints = 10
export(float) var minDistanceBetweenPointsIncrease = 1

var lastPosition = Vector2()

signal aumentarPontos(pontos)
signal onFinishFase

func _ready():
	randomize()
	
	yield(get_tree().create_timer(1), "timeout")
	adicionarAlvoAleatorio(0)
	
func adicionarAlvoAleatorio(index):
	
	if(index >= numBatidas):
		onFinishBatidas()
		return
	
	# Criar um alvo
	var alvo = Alvo.instance()
	
	alvo.position = getNewAlvoPosition()
	lastPosition = alvo.position
	
	add_child(alvo)
	
	var timeToSpawnAgain = rand_range(minTimeToSpanAgain, maxTimeToSpanAgain)
	
	yield(get_tree().create_timer(timeToSpawnAgain), "timeout")
	
	adicionarAlvoAleatorio(index + 1)
	
	minTimeToSpanAgain -= timeDecreasePorBatida
	maxTimeToSpanAgain -= timeDecreasePorBatida
	
	if(minTimeToSpanAgain <= 0.5):
		minTimeToSpanAgain = 0.5
	if(maxTimeToSpanAgain <= 0.6):
		maxTimeToSpanAgain = 0.6
	
	minDistanceBetweenPoints += minDistanceBetweenPointsIncrease

func aumentarPontos(pontos):
	emit_signal("aumentarPontos", pontos)

func onFinishBatidas():
	yield(get_tree().create_timer(2), "timeout")
	emit_signal("onFinishFase")

func getNewAlvoPosition():
	var tries = 1
	var width = $CollisionShape2D.shape.extents.x
	var height = $CollisionShape2D.shape.extents.y
	var x = $CollisionShape2D.position.x
	var y = $CollisionShape2D.position.y
	
	while true:
		var position = Vector2(
			rand_range(-width + x, width + x), 
			rand_range(-height + y, height + y)
		)
		
		if(position.distance_to(lastPosition) > minDistanceBetweenPoints or tries > 10):
			return position
		tries += 1
