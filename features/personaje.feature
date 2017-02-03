Feature:
	Como carlitos
	Quiero ver el personaje en el punto inicial del mapa
	Para ver la posicion inicial del jugador

Scenario: Debo ver el personaje en el punto 0,0 como texto
	Given iniciado el juego
	Then en la posicion 0,0 debo ver ">"