"
A
"
Class {
	#name : #Laberinto,
	#superclass : #ElementoMapa,
	#instVars : [
		'habitaciones'
	],
	#category : #JuegoLaberinto
}

{ #category : #initialization }
Laberinto >> initialize [
    habitaciones := OrderedCollection new.

]
