"
Abierta define el estado de la Puerta que permite el paso.
"
Class {
	#name : #Abierta,
	#superclass : #EstadoPuerta,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Abierta >> abrir: unaPuerta [
   "La puerta ya está abierta; no hacemos nada especial."
   "Opcionalmente puedes poner un Transcript show: 'La puerta ya estaba abierta'"
]

{ #category : #'as yet unclassified' }
Abierta >> cerrar: unaPuerta [
   Transcript show: unaPuerta printString; nextPutAll: ' cerrada'; cr.
   unaPuerta estado: Cerrada new.
]

{ #category : #'as yet unclassified' }
Abierta >> entrar: alguien puerta: unaPuerta [
   "Si la puerta está Abierta, realmente se permite el paso con la lógica original."
   unaPuerta puedeEntrar: alguien.
]

{ #category : #'as yet unclassified' }
Abierta >> estaAbierta [
   ^ true
]
