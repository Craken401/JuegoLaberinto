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

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]
