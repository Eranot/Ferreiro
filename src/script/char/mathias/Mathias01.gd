extends Area2D

func _ready():
	
	yield(get_tree().create_timer(1), "timeout")
	
	$Dialogo.show()
	
	$Dialogo.dialogos = [
		{
			'text': "Esse que vocês vão ver entrar agora é o Mathias.", 
			'character': $Dialogo.ODA,
			'startDelay': 1
		},
		{
			'text': "Alistado ao exército do rei desde jovem, e quando estava por volta dos seus 25 anos buscou glória e fama através de suas batalhas, mas acabou sendo derrotado em batalha sobrevivendo com poucos outros soldados.", 
			'character': $Dialogo.ODA
		}
	]
	
	$Dialogo.character = {
		'name': 'Mathias, o sobrevivente',
		'img': 'res://src/sprite/char/mathias_borda.png'
	}
	
	$Dialogo.start()
