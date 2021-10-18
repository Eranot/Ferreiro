extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	
	# dialogo
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Aqui está seu escudo.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Perfeito!.", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Vou arranjar sua nova espada agora.", 
			'character': $Dialogo.ODA
		},
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias_borda.png'
	}
	
	$Dialogo.start()
