Feature:
	Como carlitos
	Quiero ver si perdi, cuando ejecuto mal los commandos
	Para saver que estoy mal

Scenario: No debo ver perdiste al iniciar el juego
	Given iniciado el juego
	Then no debo ver "Perdiste!!"

Scenario: perder el juego
	Given iniciado el juego
	When ingreso "a" en "campo-de-comandos"
	And presione el boton "Ejecutar"
	Then debo ver "Perdiste!!!"

Scenario: reiniciar despues de perder
	Given iniciado el juego
	When ingreso "a" en "campo-de-comandos"
	And presione el boton "Ejecutar"
	Then debo ver "Reiniciar"