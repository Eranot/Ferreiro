extends Area2D

func _ready():
	# timeout
	yield(get_tree().create_timer(1), "timeout")
	
	# som
	MusicController.playPortaAbrindo()
	
	yield(get_tree().create_timer(3), "timeout")
	
	# aparecer o mathias
	$Mathias.show()
	
	# timeout
	yield(get_tree().create_timer(1.8), "timeout")
	
	# dialogo
	
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		# Dilogos
		{
			'text': "Ferreiro, por favor me ajude!", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "O que aconteceu com você garoto?", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Meu exército foi massacrado em batalha, isso aconteceu. Não posso voltar pra casa desse jeito, me arrastando, despedaçado.", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Conserte meu escudo, por favor. E faça também uma espada nova, a minha foi quebrada em batalha.\nPelo menos chegarei em casa minimamente apresentável.", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Certo.", 
			'character': $Dialogo.ODA
		},
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias_borda.png'
	}
	
	$Dialogo.start()
