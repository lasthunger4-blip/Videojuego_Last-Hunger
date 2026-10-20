extends Label

func _ready():
	actualizar_texto(GameManager.dia_actual)
	GameManager.dia_avanzado.connect(actualizar_texto)

func actualizar_texto(nuevo_dia):
	text = "Dia " + str(nuevo_dia)
