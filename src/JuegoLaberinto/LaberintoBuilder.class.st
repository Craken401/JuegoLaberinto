"
LaberintoBuilder construye un tipo de laberinto por encargo del Director.
"
Class {
	#name : #LaberintoBuilder,
	#superclass : #Object,
	#instVars : [
		'juego',
		'laberinto'
	],
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #accessing }
LaberintoBuilder >> juego [

	^ juego
]

{ #category : #accessing }
LaberintoBuilder >> juego: anObject [

	juego := anObject
]

{ #category : #accessing }
LaberintoBuilder >> laberinto [

	^ laberinto
]

{ #category : #accessing }
LaberintoBuilder >> laberinto: anObject [

	laberinto := anObject
]
