extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	
	# dialogo
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Hmm, eu acho que o seu escudo ficou pior do que estava.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "...", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Deixe-me tentar novamente.", 
			'character': $Dialogo.ODA
		},
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias_borda.png'
	}
	
	$Dialogo.start()
