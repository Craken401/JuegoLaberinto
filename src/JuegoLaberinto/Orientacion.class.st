"
Interfaz común para las orientaciones

"
Class {
	#name : #Orientacion,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Orientacion >> calcularPosicionDesde:unaForma [
	self subclassResponsibility 

]

{ #category : #'as yet unclassified' }
Orientacion >> caminar:unBicho [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Orientacion >> obtenerElementoOrEn:unContenedor [
	^self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Orientacion >> ponerElemento:unEM en:unContenedor [
	self subclassResponsibility


]

{ #category : #recorrido }
Orientacion >> recorrer:unBloque contenedor:unContenedor [
	self subclassResponsibility
]
