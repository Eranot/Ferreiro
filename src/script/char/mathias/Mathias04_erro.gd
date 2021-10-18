extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	
	# dialogo
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Essa espada ficou das melhores.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Você tem certeza que sabe o que está fazendo?", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Claro que sei. Já volto.", 
			'character': $Dialogo.ODA
		},
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias_borda.png'
	}
	
	$Dialogo.start()
