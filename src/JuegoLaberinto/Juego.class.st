"
Comentario
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #laberintos }
Juego >> crearLaberinto2Habitaciones [

	| hab1 hab2 puerta |
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
	
	
	
	
	
	







]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]
