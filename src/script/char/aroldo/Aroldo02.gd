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
			'text': "Ferreiro! Ferreiro!!", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Estou aqui! Do que precisa, meu futuro rei?", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Estou buscando a suas melhores machadinhas, necessito ser rápido e preciso, sem errar nenhum golpe sequer!", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': 'Mas espere, como sabe que busco ser rei?',
			'character': $Dialogo.OUTRO
		},
		{
			'text': "Acredito saber de tudo o que você precisa, pois eu era o ferreiro oficial do seu pai. E só por curiosidade, você pode me entregar sua bainha para poder levar a machadinha que irei lhe fornecer?", 
			'character': $Dialogo.ODA
		},
		{
			'text': "Claro, aqui está! Esta bainha era do meu pai, e carregava a espada do rei, foi a única coisa dele que consegui levar comigo…", 
			'character': $Dialogo.OUTRO
		},
		{
			'text': "É realmente muito boa, inclusive fui eu quem a fez, mas não vai servir desta vez. Vou fazer suas machadinhas, e lhe mostrarei a bainha correta!", 
			'character': $Dialogo.ODA
		}
	]
	
	$Dialogo.character = {
		'name': 'Aroldo, o Justo',
		'img': 'res://src/sprite/char/aroldo_borda.png'
	}
	
	$Dialogo.start()
