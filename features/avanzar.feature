Feature:
	Como carlitos
	Quiero ingresar "A"
	Para ver el personaje avanzar

Scenario: Cuando ingrese a el personaje avanza a la celda 0,1
	Given iniciado el juego
	When ingreso "a" en "campo-de-comandos"
	And presione el boton "Ejecutar"
	Then en la posicion 0,1 debo ver ">"

Scenario: El personaje debe avanzar dos veces
	Given iniciado el juego
	When ingreso "aaa" en "campo-de-comandos"
	And presione el boton "Ejecutar"
	Then en la posicion 0,3 debo ver ">"
