"
Muerto: estado del ente con vidas=0
"
Class {
	#name : #Muerto,
	#superclass : #EstadoEnte,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Muerto >> actua:unBicho [
	"Los muertos no actuan"
]

{ #category : #'as yet unclassified' }
Muerto >> atacar:alguien [
	"los muertos no atacan"
]
