Class {
	#name : #LaberintoTest,
	#superclass : #TestCase,
	#instVars : [
		'juego'
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
	| fm |
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
    self assert: (hab1 isKindOf: Habitacion).
    self assert: (hab2 isKindOf: Habitacion).

    "Comprobar que las orientaciones existen y están correctas"
    norte := hab1 norte.
    sur := hab1 sur.
    este := hab1 este.
    oeste := hab1 oeste.

    "Verificar que el norte de hab1 es una pared"
    self assert: norte esPared.

    "Verificar que el este y oeste de hab1 son paredes"
    self assert: este esPared.
    self assert: oeste esPared.

    "Verificar que la conexión sur de hab1 es una puerta"
    self assert: sur esPuerta.

    "Verificar que la puerta conecta correctamente hab1 y hab2"
    pt12 := hab1 sur.
    self assert: (pt12 lado1 = hab1).
    self assert: (pt12 lado2 = hab2).

    "Verificar que hab2 tiene la puerta en el norte"
    self assert: (hab2 norte = pt12).

    "Verificar que hab2 tiene paredes en el este y oeste"
    self assert: (hab2 este esPared).
    self assert: (hab2 oeste esPared).

    "Verificar que hab2 tiene una pared en el sur"
    self assert: (hab2 sur esPared).

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
