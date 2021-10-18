extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	
	# dialogo
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Aqui está! E acredito que sua batalha ficará muito melhor agora. E leve esta bainha de brinde, mas prometa cuidar muito bem desta espada pois ela é única. Deve ser usada para a busca do bem, e para o futuro do nosso condado!", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Muito obrigado, Oda. Minha missão é em prol de todo o povo. Voltarei para lhe agradecer, com bons agrados e minha honra restabelecida!", 
			'character': $Dialogo.OUTRO
		}
	]
	
	$Dialogo.character = {
		'name': 'Aroldo, o Justo',
		'img': 'res://src/sprite/char/aroldo_borda.png'
	}
	
	$Dialogo.start()
