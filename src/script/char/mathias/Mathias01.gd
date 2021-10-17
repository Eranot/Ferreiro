extends Area2D

func _ready():
	$Dialogo.dialogos = [
		{
			'text': "Esse que vocês vão ver entrar agora é o Mathias.", 
			'character': $Dialogo.ODA,
			'startDelay': 1
		},
		{
			'text': "Alistado ao exército do rei desde jovem, e quando estava por volta dos seus 25 anos buscou glória e fama através de suas batalhas, mas acabou sendo derrotado em batalha sobrevivendo com poucos outros soldados.", 
			'character': $Dialogo.ODA
		},
		
		# Dilogos
		{
			'text': "Ferreiro, por favor me ajude", 
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
			'text': "Certo", 
			'character': $Dialogo.ODA
		},
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias.png'
	}
	
	$Dialogo.start()
