"
Personaje es el usuario en el juego
"
Class {
	#name : #Personaje,
	#superclass : #Ente,
	#instVars : [
		'nombre'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Personaje >> caminarHacia: unaOrientacion [
    "Lógica para que el personaje se mueva a la orientación especificada"
    | contenedorObjetivo |
    contenedorObjetivo := self posicion.  "Asumiendo que 'posicion' es una 'Habitacion' (Contenedor)"

    "Hacemos que la Orientacion camine con este personaje"
    unaOrientacion caminar: self.
]

{ #category : #'as yet unclassified' }
Personaje >> esAtacadoPor:unBicho [

	Transcript show:self printString ; nextPutAll: ' es atacado por ' ; nextPutAll: unBicho printString.
	
	self vidas:(self vidas-unBicho poder).
	Transcript show: 'Vidas: ' ; nextPutAll: self vidas asString ; cr.
	
	self vidas <= 0 ifTrue:[ self juego muerePersonaje. ]
]

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]
