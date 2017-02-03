Feature: Como carlitos
		quiero atrapar el tesoro
		para ganar el juego

Scenario: Cuando P colicione con T gana
	Given iniciado el juego
	Then no debo ver "Atrapaste el tesoro!!"
	When ingreso "aaaaaaa" en "campo-de-comandos"
	And presione el boton "Ejecutar"
	Then debo ver "Atrapaste el tesoro!!"
