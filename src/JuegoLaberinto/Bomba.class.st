"
Bomba es un EM que explota cuando esta activa. Puede actuar como decorador.
"
Class {
	#name : #Bomba,
	#superclass : #Decorator,
	#instVars : [
		'activa'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Bomba >> activa [

	^ activa
]

{ #category : #accessing }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : #caminar }
Bomba >> entrar:alguien [
	self activa ifTrue:[ 
		Transcript show:alguien printString ; nextPutAll: 'Te has chocado con una bomba';cr.
		"explotar, quitar vidas"]
		ifFalse: [  self em entrar ]
	
]

{ #category : #'as yet unclassified' }
Bomba >> esBomba [
   ^true

"Bomba ya tiene la variable 'activa', con getters y setters"
]

{ #category : #initialization }
Bomba >> initialize [ 
	activa:=false.
]
