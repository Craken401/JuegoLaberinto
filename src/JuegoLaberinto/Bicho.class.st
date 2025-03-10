"
Bicho es el enemigo en el juego. Puede ser agresivo o perezoso.
"
Class {
	#name : #Bicho,
	#superclass : #Ente,
	#instVars : [
		'modo'
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
