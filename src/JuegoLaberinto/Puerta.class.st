"
Es un elemento mapa que une 2 lados que son de tipo elemento mapa a su vez y que tiene ""abierta""
"
Class {
	#name : #Puerta,
	#superclass : #ElementoMapa,
	#instVars : [
		'abierta',
		'lado1',
		'lado2'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Puerta >> abierta [

	^ abierta
]

{ #category : #accessing }
Puerta >> abierta: anObject [

	abierta := anObject
]

{ #category : #'as yet unclassified' }
Puerta >> abrir [
    "Pone la puerta en estado abierta y muestra un mensaje en Transcript"
    abierta := true.
    Transcript show: 'Puerta ', self lado1 num asString, '-', self lado2 num asString, ' ABIERTA'; cr.
]

{ #category : #'as yet unclassified' }
Puerta >> cerrar [
    "Pone la puerta en estado cerrada y muestra un mensaje en Transcript"
    abierta := false.
    Transcript show: 'Puerta ', self lado1 num asString, '-', self lado2 num asString, ' CERRADA'; cr.
]

{ #category : #caminar }
Puerta >> entrar:alguien [
	self abierta
	ifTrue:[
		alguien posicion = self lado1 ifTrue:[
			self lado2 entrar:alguien
			] ifFalse:[
			self lado1 entrar:alguien
			]
		]
	ifFalse:[Transcript show: 'La puerta está cerrada' ;cr]
	
]

{ #category : #consulta }
Puerta >> esPuerta [
	^true
]

{ #category : #initialization }
Puerta >> initialize [ 
	abierta:=false.
	"self abierta:false"
]

{ #category : #accessing }
Puerta >> lado1 [

	^ lado1
]

{ #category : #accessing }
Puerta >> lado1: anObject [

	lado1 := anObject
]

{ #category : #accessing }
Puerta >> lado2 [

	^ lado2
]

{ #category : #accessing }
Puerta >> lado2: anObject [

	lado2 := anObject
]

{ #category : #printing }
Puerta >> printOn:aStream [

	aStream nextPutAll:'Puerta-' ; nextPutAll: self lado1 num asString ; nextPutAll:'-'; nextPutAll: self lado2 num asString
]
