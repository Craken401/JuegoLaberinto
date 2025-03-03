"
A
"
Class {
	#name : #Laberinto,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [
	self hijos remove:unaHabitacion ifAbsent:["no existe ese objeto habitacion"]
]

{ #category : #caminar }
Laberinto >> entrar:alguien [
	 | hab1 |
		hab1:=self obtenerHabitacion: 1.
		hab1 entrar:alguien.
	
]

{ #category : #habitaciones }
Laberinto >> obtenerHabitacion: unNum [
  ^self hijos detect:[:each | each num = unNum ] ifNone: [ nil ].
]

{ #category : #printing }
Laberinto >> printOn:aStream [
	aStream nextPutAll:'Laberinto'
]
