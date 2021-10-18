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
			'text': "Esse garoto com certeza ainda vai me dar muito trabalho… Mas fico feliz que finalmente está preparado para o seu destino, e para o destino de todo o povo de Arcadia.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Quem sabe eu não consiga voltar a ser o ferreiro oficial do rei novamente, não é?", 
			'character': $Dialogo.ODA
		}
	]
	
	$Dialogo.character = {
		'name': 'Aroldo, o Justo',
		'img': 'res://src/sprite/char/aroldo_borda.png'
	}
	
	$Dialogo.start()
