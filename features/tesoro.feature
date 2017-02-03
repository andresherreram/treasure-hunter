Feature: Ver tesoro
	Como Carlitos
	Quiero ver el tesoro
	Para Saber a donde debo ir a atraparlo

Scenario:
	Given iniciado el juego
	And debo ver cuadricula 8x8
	Then en la posicion 0,7 debo ver "T" 