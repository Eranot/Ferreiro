extends Area2D

export(float)  var timeUntilOver = 1.5

onready var Fogo = preload("res://src/object/Fogo.tscn")

func _ready():
	yield(get_tree().create_timer(timeUntilOver), "timeout")
	onLifeTimeOver()

func _on_Alvo_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		# se destroi aqui e dps aumenta os pontos da arma
		spawnFogo()
		MusicController.playMartelada()
		givePointsToParent(1)
		queue_free()
		get_parent().remove_child(self)

func spawnFogo():
	var fogo = Fogo.instance()
	fogo.position = self.position
	get_parent().add_child(fogo)

func onLifeTimeOver():
	queue_free()
	get_parent().remove_child(self)

func givePointsToParent(pontos):
	get_parent().aumentarPontos(pontos)
	pass
