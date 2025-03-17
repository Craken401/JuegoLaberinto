"
Director procesa el archivo JSON que especifica el laberinto.
Tambien se encarga del proceso de creación
"
Class {
	#name : #Director,
	#superclass : #Object,
	#instVars : [
		'builder',
		'dict'
	],
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #accessing }
Director >> builder [

	^ builder
]

{ #category : #accessing }
Director >> builder: anObject [

	builder := anObject
]

{ #category : #accessing }
Director >> dict [

	^ dict
]

{ #category : #accessing }
Director >> dict: anObject [

	dict := anObject
]

{ #category : #'as yet unclassified' }
Director >> iniBuilder [
	self builder:LaberintoBuilder new.
]

{ #category : #'as yet unclassified' }
Director >> leerArchivo:unArchivo [
	self dict:(unArchivo asFileReference readStreamDo: [ :readStream | (NeoJSONReader on: readStream) next ]).

]

{ #category : #'as yet unclassified' }
Director >> procesar:unArchivo [
	self leerArchivo:unArchivo.
	self iniBuilder.
]
