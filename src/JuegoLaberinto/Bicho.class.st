"
Bicho es el enemigo en el juego. Puede ser agresivo o perezoso.
"
Class {
	#name : #Bicho,
	#superclass : #Object,
	#instVars : [
		'vidas',
		'poder',
		'modo',
		'posicion'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #initialization }
Bicho >> actua [
	self modo actua:self
]

{ #category : #consulta }
Bicho >> esAgresivo [ 
	^self modo esAgresivo 
]

{ #category : #consulta }
Bicho >> esPerezoso [ 
	^self modo esPerezoso  
]

{ #category : #consulta }
Bicho >> estaVivo [
	^self vidas > 0
]

{ #category : #initialization }
Bicho >> iniAgresivo [
	self modo:Agresivo new.
	self poder:10.
]

{ #category : #initialization }
Bicho >> iniPerezoso [
	self modo:Perezoso new."cablear" 
	self poder:1.
]

{ #category : #initialization }
Bicho >> initialize [ 
	vidas:=5.
	poder:=1.
]

{ #category : #accessing }
Bicho >> modo [

	^ modo
]

{ #category : #accessing }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : #accessing }
Bicho >> obtenerOrientacion [
	
	^self posicion obtenerOrientacion
]

{ #category : #accessing }
Bicho >> poder [

	^ poder
]

{ #category : #accessing }
Bicho >> poder: anObject [

	poder := anObject
]

{ #category : #accessing }
Bicho >> posicion [

	^ posicion
]

{ #category : #accessing }
Bicho >> posicion: anObject [

	posicion := anObject
]

{ #category : #accessing }
Bicho >> vidas [

	^ vidas
]

{ #category : #accessing }
Bicho >> vidas: anObject [

	vidas := anObject
]
