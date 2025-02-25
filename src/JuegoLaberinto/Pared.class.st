"
A
"
Class {
	#name : #Pared,
	#superclass : #ElementoMapa,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Pared >> entrar [ 
	"Deberiamos comprobar si esta activa"
	Transcript show: 'Te has chocado con una pared';cr.
]

{ #category : #consulta }
Pared >> esPared [ 
	^true
]
