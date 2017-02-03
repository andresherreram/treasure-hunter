Feature:
	Como carlitos
	quiero poder iniciar un juego
	para ver el mapa y empezar a jugar

Scenario: Debe tener un titulo con el nombre del juego "Treasure hunter"
	Given abri el juego
	Then debo ver "Treasure hunter"

Scenario: Al iniciar el juego debo ver el mapa
	Given abri el juego
	When presione el boton "Jugar"
	Then debo ver "mapa"