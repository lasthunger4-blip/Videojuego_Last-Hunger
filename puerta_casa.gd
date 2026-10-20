extends Area2D

var jugador_cerca = false
@onready var icono = $IconoInteractuar
@onready var texto = $TextoInteractuar

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	icono.visible = false
	texto.visible = false

func _on_body_entered(body):
	if body is CharacterBody2D:
		jugador_cerca = true
		icono.visible = true
		texto.visible = true
		icono.play("normal")

func _on_body_exited(body):
	if body is CharacterBody2D:
		jugador_cerca = false
		icono.visible = false
		texto.visible = false

func _process(delta):
	if jugador_cerca:
		if Input.is_action_just_pressed("interactuar"):
			icono.play("presionado")
			entrar_a_casa()
		elif Input.is_action_just_released("interactuar"):
			icono.play("normal")

func entrar_a_casa():
	Transition.cambiar_escena("res://Casas/InteriorCasa/interior_casa.tscn")
