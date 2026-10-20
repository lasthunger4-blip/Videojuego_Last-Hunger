extends Control

func _on_jugar_pressed() -> void:
	Transition.cambiar_escena("res://Tutorial/tutorial.tscn")

func _on_salir_pressed() -> void:
	await Transition.fade_out()
	get_tree().quit()
