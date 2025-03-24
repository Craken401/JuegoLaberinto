"
Tunel es un Proxy virtual. Cuando el personaje entre en el tunel, se creará un nuevo laberinto.
"
Class {
	#name : #Tunel,
	#superclass : #Hoja,
	#instVars : [
		'laberinto'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Tunel >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Tunel >> laberinto: anObject [

	laberinto := anObject
]
