"
Es la interfaz comun de los elementos del mapa
"
Class {
	#name : #ElementoMapa,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
ElementoMapa >> entrar [
	"Deberemos indiciar quien entra en el futuro"
	self subclassResponsibility 
]
