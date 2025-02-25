Class {
	#name : #LaberintoTest,
	#superclass : #TestCase,
	#instVars : [
		'juego',
		'fm'
	],
	#category : #'JuegoLaberinto-Pruebas'
}

{ #category : #accessing }
LaberintoTest >> juego [

	^ juego
]

{ #category : #accessing }
LaberintoTest >> juego: anObject [

	juego := anObject
]

{ #category : #running }
LaberintoTest >> setUp [
	super setUp.

	juego:=Juego new.
	
	fm:=Creator new.
	
	juego crearLaberinto2HabitacionesFM:fm.
]

{ #category : #tests }
LaberintoTest >> testHabitaciones [
    | hab1 hab2 pt12 norte sur este oeste |

    "Obtener las habitaciones"
    hab1 := self juego obtenerHabitacion: 1.
    hab2 := self juego obtenerHabitacion: 2.

    "Comprobar que son habitaciones"
    self assert: hab1 esHabitacion.
    self assert: hab2 esHabitacion.

    "Comprobar que las orientaciones existen y están correctas"
    norte := fm fabricarNorte.
    sur := fm fabricarSur.
    este := fm fabricarEste.
    oeste := fm fabricarOeste.

    "Verificar que el norte de hab1 es una pared"
    self assert: (hab1 obtenerElementoOr:norte) esPared.

    "Verificar que el este y oeste de hab1 son paredes"
    self assert: (hab1 obtenerElementoOr:este) esPared.
    self assert: (hab1 obtenerElementoOr:oeste) esPared.

    "Verificar que la conexión sur de hab1 es una puerta"
    self assert: (hab2 obtenerElementoOr:norte) esPuerta.

    "Verificar que la puerta conecta correctamente hab1 y hab2"
    pt12 := hab1 obtenerElementoOr:sur.
    self assert: pt12 esPuerta.

	 "Verificar que el norte de hab1 es una pared"
    self assert: (hab2 obtenerElementoOr:sur) esPared.

    "Verificar que el este y oeste de hab1 son paredes"
    self assert: (hab2 obtenerElementoOr:este) esPared.
    self assert: (hab2 obtenerElementoOr:oeste) esPared.

    "Verificar que la puerta está cerrada al inicio"
    self assert: pt12 abierta not.

	
]

{ #category : #tests }
LaberintoTest >> testIniciales [

	| numHab |
	self assert:self juego notNil.
	self assert:self juego laberinto notNil.
	numHab:=	self juego laberinto hijos size. "self juego obtenerNumHab"
	self assert:numHab equals: 2.
]
