"
A
"
Class {
	#name : #Habitacion,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #consulta }
Habitacion >> esHabitacion [ 
	^true
]

{ #category : #printing }
Habitacion >> printOn:aStream [

	aStream nextPutAll:'Hab'; nextPutAll:self num asString
]

{ #category : #'as yet unclassified' }
Habitacion >> visitarContenedor:unVisitor [
	unVisitor visitarHabitacion:self
]
