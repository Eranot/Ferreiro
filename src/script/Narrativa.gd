extends Node2D
var index = 0;

export(String, FILE) var nextScene

var backGroundOda = load('res://src/sprite/dialogo/background_oda.png')
var backGroundOutro = load('res://src/sprite/dialogo/background_outro.png')

var character = {
	'name': 'Exemplo',
	'img': 'res://src/sprite/char/exemplo.png'
}

var ODA = 1
var OUTRO = 2

var dialogos = [
	{
		'text': "Teste", 
		'character': ODA
	}
]

func start():
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
	
	if(dialogos[index].has('startDelay')):
		$TextInterfaceEngine.buff_silence(dialogos[index]['startDelay'])
	
	$TextInterfaceEngine.buff_text(dialogos[index]['text'], 0.03)
	$TextInterfaceEngine.set_state($TextInterfaceEngine.STATE_OUTPUT)
	$Done.hide()
	$Next.hide()
		
	index += 1
	
func _onDone():
	get_tree().change_scene(nextScene)

