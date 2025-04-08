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
	"self modo actua:self"
	self estadoEnte actua:self
]

{ #category : #'as yet unclassified' }
Bicho >> avisar [
	self juego terminarBicho: self
]

{ #category : #'as yet unclassified' }
Bicho >> buscarTunel [ 
	self modo buscarTunelBicho:self.
]

{ #category : #consulta }
Bicho >> esAgresivo [ 
	^self modo esAgresivo 
]

{ #category : #consulta }
Bicho >> esPerezoso [ 
	^self modo esPerezoso  
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

{ #category : #printing }
Bicho >> printOn:aStream [

	aStream nextPutAll:'Bicho-'; nextPutAll:self modo asString.
]

{ #category : #initialization }
Bicho >> puedeActuar [
	self modo actua:self
]

{ #category : #ataques }
Bicho >> puedeAtacar [
	self juego buscarPersonaje:self.
	
]
