"
Cerrada define el estado de la Puerta que impide el paso.
"
Class {
	#name : #Cerrada,
	#superclass : #EstadoPuerta,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Cerrada >> abrir: unaPuerta [
   Transcript show: unaPuerta printString; nextPutAll: ' abierta'; cr.
   unaPuerta estado: Abierta new.
]

{ #category : #'as yet unclassified' }
Cerrada >> cerrar: unaPuerta [
   "La puerta ya está cerrada; no hacemos nada especial."
]

{ #category : #'as yet unclassified' }
Cerrada >> entrar: alguien puerta: unaPuerta [
   "Si la puerta está Cerrada, se impide el paso. El personaje choca."
   Transcript show: alguien printString; nextPutAll: ' choca con '; nextPutAll: unaPuerta printString; cr.
]
