"
Director procesa el archivo JSON que especifica el laberinto.
Tambien se encarga del proceso de creación
"
Class {
	#name : #Director,
	#superclass : #Object,
	#instVars : [
		'builder',
		'dict'
	],
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #accessing }
Director >> builder [

	^ builder
]

{ #category : #accessing }
Director >> builder: anObject [

	builder := anObject
]

{ #category : #accessing }
Director >> dict [

	^ dict
]

{ #category : #accessing }
Director >> dict: anObject [

	dict := anObject
]

{ #category : #'as yet unclassified' }
Director >> fabricarBichos [
	"recorrer la colección de bichos"
	(self dict at:'bichos' ifAbsent:[^nil]) do:[:each |
		self builder fabricarBichoModo: (each at:'modo') posicion:(each at:'posicion')]. 
]

{ #category : #'as yet unclassified' }
Director >> fabricarJuego [ 	
	self builder fabricarJuego
]

{ #category : #'as yet unclassified' }
Director >> fabricarLaberinto [ 
	self builder fabricarLaberinto.
	(self dict at:'laberinto') do:[:each | self fabricarLaberintoRecursivo:each en:'root' ].
	
	"recorrer la colección de puertas, para poner las puertas"
	(self dict at:'puertas') do:[:each | 
		self builder fabricarPuertaL1:(each at:1) or1:(each at:2) L2:(each at:3) or2:(each at:4)].

]

{ #category : #'as yet unclassified' }
Director >> fabricarLaberintoRecursivo:unDic en:padre [
| con |

"contenedores"
(unDic at:'tipo')='habitacion' ifTrue:[con:=self builder fabricarHabitacion:(unDic at:'num')].
(unDic at:'tipo')='armario' ifTrue:[con:=self builder fabricarArmario:(unDic at:'num') en:padre].

"hojas"
"......"
(unDic at:'tipo')='bomba' ifTrue:[ self builder fabricarBombaEn:padre ].

(unDic at:'tipo')='tunel' ifTrue:[ self builder fabricarTunelEn:padre ].

(unDic at:'hijos' ifAbsent:[^nil]) do:[:each | self fabricarLaberintoRecursivo:each en:con].

]

{ #category : #'as yet unclassified' }
Director >> iniBuilder [
	"aqui podemos cambiar el Builder para crear laberintos diferentes"
	self builder:LaberintoBuilder new.
]

{ #category : #'as yet unclassified' }
Director >> leerArchivo:unArchivo [
	self dict:(unArchivo asFileReference readStreamDo: [ :readStream | (NeoJSONReader on: readStream) next ]).

]

{ #category : #accessing }
Director >> obtenerJuego [
	^self builder obtenerJuego
]

{ #category : #'as yet unclassified' }
Director >> procesar:unArchivo [
	self leerArchivo:unArchivo.
	self iniBuilder.
	self fabricarLaberinto.
	self fabricarJuego.
	self fabricarBichos.
]
