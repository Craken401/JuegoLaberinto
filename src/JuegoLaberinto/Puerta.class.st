"
Es un elemento mapa que une 2 lados que son de tipo elemento mapa a su vez y que tiene ""abierta""
"
Class {
	#name : #Puerta,
	#superclass : #ElementoMapa,
	#instVars : [
		'lado1',
		'lado2',
		'estado'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #initialization }
Puerta >> abrir [
   "Antes hacía: self abierta: true. Ahora delegamos en el estado."
   self estado abrir: self
]

{ #category : #initialization }
Puerta >> cerrar [
   self estado cerrar: self
]

{ #category : #caminar }
Puerta >> entrar: alguien [
   "Delegamos la lógica a nuestro estado."
   self estado entrar: alguien puerta: self
	
]

{ #category : #consulta }
Puerta >> esPuerta [
	^true
]

{ #category : #initialization }
Puerta >> estaAbierta [
   ^ self estado estaAbierta
]

{ #category : #accessing }
Puerta >> estado [

	^ estado
]

{ #category : #accessing }
Puerta >> estado: anObject [

	estado := anObject
]

{ #category : #initialization }
Puerta >> initialize [
   super initialize.
   self estado: Cerrada new.  "por defecto, cada puerta empieza cerrada"
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

{ #category : #caminar }
Puerta >> puedeEntrar: alguien [
   "Si la persona está en lado1, pasamos a lado2, y viceversa."
   (alguien posicion = self lado1)
       ifTrue: [ self lado2 entrar: alguien ]
       ifFalse: [ self lado1 entrar: alguien ]
]
