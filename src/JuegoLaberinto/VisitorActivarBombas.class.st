"
VisitorActivarBombas es un visitor que activa bombas
"
Class {
	#name : #VisitorActivarBombas,
	#superclass : #Visitor,
	#category : #'JuegoLaberinto-Visitor'
}

{ #category : #'as yet unclassified' }
VisitorActivarBombas >> visitarBomba:unaBomba [
	unaBomba activar
]
