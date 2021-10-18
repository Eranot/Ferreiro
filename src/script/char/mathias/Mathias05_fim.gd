extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	$Mathias.hide()
	
	yield(get_tree().create_timer(0.4), "timeout")
	# som
	MusicController.playPortaAbrindo()
	# aparecer o mathias
	
	yield(get_tree().create_timer(2), "timeout")
	
	# dialogo
	$Dialogo.show()
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Ao voltar para casa, Mathias tentou enganar a realeza com seus novos equipamentos reparados, mas as histórias chegaram até eles primeiro.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "O pobre rapaz foi rebaixado a escudeiro pela insolência de tentar mentir na cara do rei.", 
			'character': $Dialogo.ODA
		}
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias_borda.png'
	}
	
	$Dialogo.start()
