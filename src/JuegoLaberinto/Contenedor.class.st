"
Contenedor es el Composite. Es un EM que tiene hijos
"
Class {
	#name : #Contenedor,
	#superclass : #ElementoMapa,
	#instVars : [
		'hijos',
		'forma',
		'num'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #recorrido }
Contenedor >> aceptar:unVisitor [
	self visitarContenedor: unVisitor.
	self hijos do:[:each | each aceptar:unVisitor].
	"self obtenerOrientaciones do:[:each | each aceptar:unVisitor contenedor:self forma]."
	
]

{ #category : #'gestion-hijos' }
Contenedor >> agregarHijo:unEM [
	unEM padre:self.
	self hijos add:unEM.
	
]

{ #category : #'gestion-orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
	self forma agregarOrientacion:unaOr.
]

{ #category : #'as yet unclassified' }
Contenedor >> calcularPosicion [
	self forma calcularPosicion

]

{ #category : #'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [
	self hijos remove:unEM ifAbsent: ["No existe ese objeto habitacion"]
]

{ #category : #caminar }
Contenedor >> entrar:alguien [
	Transcript show:alguien printString ; nextPutAll: 'esta en ' ; nextPutAll: self printString ;cr.
		alguien posicion:self.
		
		alguien buscarTunel.
	"para los bichos: buscar elemento (por ejemplo tunel)"
	"delegar en el bicho (en su modo) el entrar o no en el tunel"
]

{ #category : #accessing }
Contenedor >> extent [
	^self forma extent

]

{ #category : #accessing }
Contenedor >> extent:unPunto [
	self forma extent:unPunto


]

{ #category : #accessing }
Contenedor >> forma [

	^ forma
]

{ #category : #accessing }
Contenedor >> forma: anObject [

	forma := anObject
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
	super initialize.
	hijos := OrderedCollection new.
	
]

{ #category : #movimiento }
Contenedor >> irAlEste:alguien [
self forma irAlEste:alguien.

]

{ #category : #movimiento }
Contenedor >> irAlNorte:alguien [
self forma irAlNorte:alguien.
]

{ #category : #movimiento }
Contenedor >> irAlOeste:alguien [
self forma irAlOeste:alguien.
]

{ #category : #movimiento }
Contenedor >> irAlSur:alguien [
self forma irAlSur:alguien.
]

{ #category : #accessing }
Contenedor >> num [

	^ num
]

{ #category : #accessing }
Contenedor >> num: anObject [

	num := anObject
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerElementoOr:unaOr [
	"^unaOr obtenerElementoOrEn:self"
	^self forma obtenerElementoOr: unaOr
	
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerOrientacion [ 
	"obtener orientacion aleatoria"
	^self forma obtenerOrientacion 
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerOrientaciones [
	^self forma obtenerOrientaciones
]

{ #category : #accessing }
Contenedor >> ponerEnOr:unaOr elemento:unEM [
	"unaOr ponerElemento:unEM en:self."
	self forma ponerEnOr:unaOr elemento:unEM
]

{ #category : #accessing }
Contenedor >> punto [
	^self forma punto

]

{ #category : #accessing }
Contenedor >> punto:unPunto [
	self forma punto:unPunto

]

{ #category : #recorrido }
Contenedor >> recorrer:unBloque [
	unBloque value:self.
	self hijos do:[:each | each recorrer:unBloque].
	self obtenerOrientaciones do:[:each | each recorrer:unBloque contenedor:self forma].
	
]

{ #category : #'as yet unclassified' }
Contenedor >> visitarContenedor:unVisitor [
	self subclassResponsibility 
]
