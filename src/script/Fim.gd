extends Area2D

func _ready():
	$Narrativa.dialogos = [
		{
			'text': "Oda passou vários outros anos em sua casa de forja, ouvindo diversas histórias de camponeses, nobres, aventureiros, heróis e vilões. Enquanto suas histórias são forjadas em batalhas e grandes eventos, Oda forja os equipamentos que os acompanham.", 
			'character': 0,
			'startDelay': 0.3
		}
	]
	
	$Narrativa.character = {
		'name': 'Teste',
		'img': 'res://src/sprite/char/exemplo.png'
	}
	
	$Narrativa.start()
