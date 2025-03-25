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
ElementoMapa >> entrar:alguien [
	self subclassResponsibility 
]

{ #category : #consulta }
ElementoMapa >> esArmario [
	^false
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

{ #category : #consulta }
ElementoMapa >> esTunel [
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

{ #category : #recorrido }
ElementoMapa >> recorrer:unBloque [
	unBloque value:self
]
