extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Alvo_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		# se destroi aqui e dps aumenta os pontos da arma
		givePointsToParent(1)
		queue_free()
		get_parent().remove_child(self)

func onLifeTimeOver():
	queue_free()
	get_parent().remove_child(self)

func givePointsToParent(pontos):
	get_parent().aumentarPontos(pontos)
	pass
