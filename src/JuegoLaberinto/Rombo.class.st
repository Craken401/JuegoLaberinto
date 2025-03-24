Class {
	#name : #Rombo,
	#superclass : #Forma,
	#instVars : [
		'noreste',
		'noroeste',
		'sureste',
		'suroeste'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Rombo >> noreste [

	^ noreste
]

{ #category : #accessing }
Rombo >> noreste: anObject [

	noreste := anObject
]

{ #category : #accessing }
Rombo >> noroeste [

	^ noroeste
]

{ #category : #accessing }
Rombo >> noroeste: anObject [

	noroeste := anObject
]

{ #category : #accessing }
Rombo >> sureste [

	^ sureste
]

{ #category : #accessing }
Rombo >> sureste: anObject [

	sureste := anObject
]

{ #category : #accessing }
Rombo >> suroeste [

	^ suroeste
]

{ #category : #accessing }
Rombo >> suroeste: anObject [

	suroeste := anObject
]
