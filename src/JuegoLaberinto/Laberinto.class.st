"
A
"
Class {
	#name : #Laberinto,
	#superclass : #ElementoMapa,
	#instVars : [
		'habitaciones'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self habitaciones add:unaHabitacion
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [
	self habitaciones remove:unaHabitacion ifAbsent:["no existe ese objeto habitacion"]
]

{ #category : #accessing }
Laberinto >> habitaciones [

	^ habitaciones
]

{ #category : #accessing }
Laberinto >> habitaciones: anObject [

	habitaciones := anObject
]

{ #category : #initialization }
Laberinto >> initialize [
    habitaciones := OrderedCollection new.

]
