Feature: Como Carlitos
	Quiero presionar un boton
	para avanzar, girar derecha o girar izquierda

Scenario: Preciono izquierda y aparece letra "i" en el campo
	Given iniciado el juego
	When presione el boton "Izquierda"
	Then En el campo de comando aparece "i"


Scenario: Preciono derecha y aparece letra "d" en el campo
	Given iniciado el juego
	When presione el boton "Derecha"
	Then En el campo de comando aparece "d"

Scenario: Preciono avanzar y aparece letra "a" en el campo
	Given iniciado el juego
	When presione el boton "Avanzar"
	Then En el campo de comando aparece "a"


Scenario: Preciono una ruta y el personaje lo recorre
	Given iniciado el juego
	When presione el boton "Avanzar"
	And presione el boton "Derecha"
	And presione el boton "Avanzar"
	And presione el boton "Izquierda"
	And presione el boton "Avanzar"
	Then En el campo de comando aparece "adaia"
	When presione el boton "Ejecutar"
	Then en la posicion 1,2 debo ver ">"

Scenario: Preciono una ruta y al ejecutar campo comandos queda vacio
	Given iniciado el juego
	When presione el boton "Avanzar"
	And presione el boton "Derecha"
	And presione el boton "Avanzar"
	And presione el boton "Izquierda"
	And presione el boton "Avanzar"
	Then En el campo de comando aparece "adaia"
	When presione el boton "Ejecutar"
	Then En el campo de comando aparece ""

