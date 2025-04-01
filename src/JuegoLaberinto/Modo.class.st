"
Modo es la interfaz de la estrategia de los bichos
"
Class {
	#name : #Modo,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Modo >> actua:unBicho [
	"Template Method"
	
	self dormir:unBicho.
	self caminar:unBicho.
	self atacar:unBicho.
	(Delay forSeconds: 0.2) wait.  "Para no saturar Transcript"
]

{ #category : #'as yet unclassified' }
Modo >> atacar:unBicho [
	unBicho atacar.
]

{ #category : #'as yet unclassified' }
Modo >> buscarTunelBicho:unBicho [
	"self subclassResponsibility "
	"comportamiento predeterminado (no hacer nada / loquesea)"
]

{ #category : #'as yet unclassified' }
Modo >> caminar:unBicho [
	| or |
	"elegir una orientacion aleatoria en esa posicion"
	or:=unBicho obtenerOrientacion.
	"caminar hacia esa orientation"
	or caminar:unBicho
]

{ #category : #'as yet unclassified' }
Modo >> dormir:unBicho [
	self subclassResponsibility 
]

{ #category : #consulta }
Modo >> esAgresivo [
	^false
]

{ #category : #consulta }
Modo >> esPerezoso [
	^false
]
