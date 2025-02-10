"
coment
"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'factory method' }
Creator >> fabricarHabitacion:unNum [
	^Habitacion new num:unNum
]

{ #category : #'factory method' }
Creator >> fabricarJuego [
	^Juego new
]

{ #category : #'factory method' }
Creator >> fabricarLaberinto [
	^Laberinto new
]

{ #category : #'factory method' }
Creator >> fabricarPared [
	^Pared new
]

{ #category : #'factory method' }
Creator >> fabricarPuerta [
	^Puerta new
]
