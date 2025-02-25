"
Es la interfaz comun de los elementos del mapa
"
Class {
	#name : #ElementoMapa,
	#superclass : #Object,
	#instVars : [
		'padre'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
ElementoMapa >> entrar [
	"Deberemos indiciar quien entra en el futuro"
	self subclassResponsibility 
]

{ #category : #caminar }
ElementoMapa >> entrar:alguien [
	"Deberemos indiciar quien entra en el futuro"
	self subclassResponsibility 
]

{ #category : #consulta }
ElementoMapa >> esHabitacion [
	^false
]

{ #category : #consulta }
ElementoMapa >> esPared [
	^false
]

{ #category : #consulta }
ElementoMapa >> esPuerta [
	^false
]

{ #category : #accessing }
ElementoMapa >> padre [

	^ padre
]

{ #category : #accessing }
ElementoMapa >> padre: anObject [

	padre := anObject
]
