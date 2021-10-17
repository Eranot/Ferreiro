extends Node2D


var index = 0;

var dialogos = [
	{
		'text': "Oi meus confrades, teste aqui", 
		'character': {
			'name': 'Personagem um',
			'img': 'res://src/sprite/char/renato.png'
		}
	},
	{
		'text': "Oi, teste", 
		'character': {
			'name': 'Renato',
			'img': 'res://src/sprite/char/renato.png'
		}
	},
	{
		'text': "Beibe beibe do biruleibe beibe kkkkkkkkkkkkkkkkkk teste com texto grande", 
		'character': {
			'name': 'Personagem um',
			'img': 'res://src/sprite/char/renato.png'
		}
	}
]

# Called when the node enters the scene tree for the first time.
func _ready():
	$TextInterfaceEngine.set_color(Color(255, 255, 255))
	$TextInterfaceEngine.connect("buff_end", self, "onBuffEnd")
	
	_onNext()
		
func onBuffEnd():

	if(index == len(dialogos)):
		#habilita o done
		$Next.hide()
		$Done.show()
	else:
		#habilita o next
		$Done.hide()
		$Next.show()
	
func _onNext():
	$TextInterfaceEngine.buff_clear()
	$TextInterfaceEngine.buff_text(dialogos[index]['text'], 0.05)
	$TextInterfaceEngine.set_state($TextInterfaceEngine.STATE_OUTPUT)
	$Nome.text = dialogos[index]['character']['name']
	$Done.hide()
	$Next.hide()
	index += 1
	
func _onDone():
	# Ir para a prox cena
	pass

