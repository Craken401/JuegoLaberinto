"
Es la interfaz (abstracta) de los estados de la Puerta.
"
Class {
	#name : #EstadoPuerta,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
EstadoPuerta >> abrir: unaPuerta [
   "Por defecto, no hace nada. Subclases deben sobrescribir."
   self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
EstadoPuerta >> cerrar: unaPuerta [
   "Por defecto, no hace nada. Subclases deben sobrescribir."
   self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
EstadoPuerta >> entrar: alguien puerta: unaPuerta [
   "Por defecto, no hace nada. Subclases deben sobrescribir."
   self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
EstadoPuerta >> estaAbierta [
   "Devuelve false por defecto. Subclase 'Abierta' lo redefinirá a true."
   ^ false
]
