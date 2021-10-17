extends Area2D

func _ready():
	$Narrativa.dialogos = [
		{
			'text': "Oda sempre foi muito trabalhador desde jovem. Vinha de família camponesa humilde mas muito feliz. Carregava consigo o sonho de ter sua própria ferraria e o desejo de mudar o destino das pessoas com suas habilidades. Após o falecimento de seus pais quando já estava mais velho, Oda juntou dinheiro para começar seu próprio negócio no povoado de Arcadia e acreditou fielmente que poderia continuar feliz ao fazer o que gosta até o fim dos seus dias.", 
			'character': 0,
			'startDelay': 0.3
		}
	]
	
	$Narrativa.character = {
		'name': 'Teste',
		'img': 'res://src/sprite/char/exemplo.png'
	}
	
	$Narrativa.start()
