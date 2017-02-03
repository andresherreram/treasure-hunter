Feature: Nivel 2
	Como carlitos
	Quiero niveles
	Para tener mas dificultad

Scenario:
	Given iniciado el juego en nivel 2
	When ingreso "aaa" en "campo-de-comandos"
	And presione el boton "Ejecutar"
	Then en la posicion 0,2 debo ver ">"