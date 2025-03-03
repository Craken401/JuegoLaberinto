"
A
"
Class {
	#name : #Pared,
	#superclass : #ElementoMapa,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Pared >> entrar:alguien [ 
	"Deberiamos comprobar si esta activa"
	Transcript show:alguien printString ; nextPutAll:'ha chocado con una pared ';cr.
]

{ #category : #consulta }
Pared >> esPared [ 
	^true
]

{ #category : #printing }
Pared >> printOn:aStream [
	aStream nextPutAll:'Pared'

]
