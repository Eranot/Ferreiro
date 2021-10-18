extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	
	# dialogo
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Essas machadinhas não ficaram à altura do próximo rei.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Por favor, espere um momento, eu farei elas novamente.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Agradeço pelo seu esforço!", 
			'character': $Dialogo.OUTRO
		},
	]
	
	$Dialogo.character = {
		'name': 'Aroldo, o Justo',
		'img': 'res://src/sprite/char/aroldo_borda.png'
	}
	
	$Dialogo.start()
