"
Contenedor es el Composite. Es un EM que tiene hijos
"
Class {
	#name : #Contenedor,
	#superclass : #ElementoMapa,
	#instVars : [
		'hijos',
		'orientaciones'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-hijos' }
Contenedor >> agregarHijo:unEM [
	unEM padre:self.
	self hijos add:unEM.
	
]

{ #category : #'gestion-orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
	self orientaciones add:unaOr.
]

{ #category : #'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [
	self hijos remove:unEM ifAbsent: ["No existe ese objeto habitacion"]
]

{ #category : #accessing }
Contenedor >> hijos [

	^ hijos
]

{ #category : #accessing }
Contenedor >> hijos: anObject [

	hijos := anObject
]

{ #category : #initialization }
Contenedor >> initialize [ 
	hijos:=OrderedCollection new.
	orientaciones :=OrderedCollection new.
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerElementoOr:unaOr [
	^unaOr obtenerElementoOrEn:self
	
]

{ #category : #accessing }
Contenedor >> orientaciones [

	^ orientaciones
]

{ #category : #accessing }
Contenedor >> orientaciones: anObject [

	orientaciones := anObject
]

{ #category : #accessing }
Contenedor >> ponerEnOr:unaOr elemento:unEM [

	"opcion 1: usar if then else"
	"opcion 2: delegar en la orientation"
	unaOr ponerElemento:unEM en:self.
]
