Class {
	#name : #Oeste,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Oeste >> obtenerElementoOrEn:unContenedor [
	^unContenedor oeste 
]

{ #category : #'as yet unclassified' }
Oeste >> ponerElemento:unEM en:unContenedor [
	unContenedor oeste:unEM
]
