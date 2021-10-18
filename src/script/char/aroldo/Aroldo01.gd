extends Area2D

func _ready():
	
	yield(get_tree().create_timer(1), "timeout")
	
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		{
			'text': "Quem apareceu na ferraria também foi Aroldo, filho do antigo rei. Rei este que foi destronado e morto pelo próprio irmão quando Aroldo tinha apenas 15 anos.", 
			'character': $Dialogo.ODA,
			'startDelay': 1
		},
		{
			'text': "No dia que me visitou, 14 anos após a perda de seu pai, Aroldo buscava vingança e então ousou desafiar a guarda do novo rei.", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Veio até mim em busca dos melhores equipamentos para poder tirar seu tio do poder, restaurar a glória da família e dar ao povo o que seu pai sempre desejou: uma vida digna e livre de altos impostos, sem miséria e distinção entre o povo.", 
			'character': $Dialogo.ODA
		}
	]
	
	$Dialogo.character = {
		'name': 'Aroldo, o Justo',
		'img': 'res://src/sprite/char/aroldo_borda.png'
	}
	
	$Dialogo.start()
