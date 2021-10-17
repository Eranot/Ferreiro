extends Area2D

func _ready():
	$Dialogo.dialogos = [
		{
			'text': "Aqui está! E acredito que suas batalhas ficarão muito melhores agora, pois um guerreiro desta parte, com esta força, e empunhando duas armas muito ágeis, você se tornará invencível.", 
			'character': $Dialogo.ODA,
			'startDelay': 1
		},
		{
			'text': "Oi, teste aqui mano", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Beibe beibe do biruleibe beibe kkkkkkkkkkkkkkkkkk teste com texto grande", 
			'character': $Dialogo.ODA
		}
	]
	
	$Dialogo.character = {
		'name': 'Renato',
		'img': 'res://src/sprite/char/exemplo.png'
	}
	
	$Dialogo.start()
