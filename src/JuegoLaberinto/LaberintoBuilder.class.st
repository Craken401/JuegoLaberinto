"
LaberintoBuilder construye un tipo de laberinto por encargo del Director.
"
Class {
	#name : #LaberintoBuilder,
	#superclass : #Object,
	#instVars : [
		'juego',
		'laberinto'
	],
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarArmario:unNum en:unContenedor [
	|arm |
	arm :=Armario new.
	arm num:unNum.
	arm agregarOrientacion:self fabricarNorte; agregarOrientacion:self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	
	arm orientaciones do:[:each | arm ponerEnOr:each elemento:self fabricarPared]. 
	
	
	
	unContenedor agregarHijo:arm.
	
	^arm
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarBichoAgresivo [
	| bicho |

	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
	bicho poder:5.
	"bicho posicion:unaHab"
	^bicho
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoModo:strModo posicion:unNum [
	|hab bicho|
	hab:=self laberinto obtenerHabitacion: unNum.
	
	"strModo='Agresivo' ifTrue:[self fabricarBichoAgresivo]"
	
	bicho:=self perform:('fabricar', strModo) asSymbol.
	hab entrar:bicho.
	
	self juego agregarBicho: bicho.
	"agregar el bicho al juego"
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarBichoPerezoso [
	| bicho |

	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho vidas:1.
	bicho poder:1.
	"bicho posicion:unaHab"
	^bicho
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarBombaEn:unContenedor [
	| bmb |
		bmb:= Bomba new.
		unContenedor agregarHijo: bmb.
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarEste [
	^Este default
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarHabitacion:unNum [
	|hab|
	hab:=Habitacion new.
	hab num:unNum.
	hab agregarOrientacion:self fabricarNorte; agregarOrientacion:self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	
	hab orientaciones do:[:each | hab ponerEnOr:each elemento:self fabricarPared]. 
	
	
	self laberinto agregarHabitacion: hab.
	
	^hab
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarJuego [ 
	self juego:Juego new.
	self juego laberinto:self laberinto.
	
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarLaberinto [ 
	self laberinto:Laberinto new.
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarNorte [
	^Norte default
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarOeste [
	^Oeste default
]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarPared [ 
	^Pared new
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarPuertaL1:num1 or1:strOr1 L2:num2 or2:strOr2 [

	| hab1 hab2 objOr1 objOr2 pt |

	hab1:=self laberinto obtenerHabitacion: num1.
	hab2:=self laberinto obtenerHabitacion: num2.
	

	objOr1:=self perform:('fabricar',strOr1) asSymbol. "fabricar+Norte => fabricarNorte"
	objOr2:=self perform:('fabricar',strOr2) asSymbol.
	
	pt:=Puerta new.
	pt lado1:hab1.
	pt lado2:hab2.
	
	hab1 ponerEnOr:objOr1 elemento:pt.
	hab2 ponerEnOr:objOr2 elemento:pt.
	



]

{ #category : #'metodos fabricacion' }
LaberintoBuilder >> fabricarSur [
	^Sur default
]

{ #category : #accessing }
LaberintoBuilder >> juego [

	^ juego
]

{ #category : #accessing }
LaberintoBuilder >> juego: anObject [

	juego := anObject
]

{ #category : #accessing }
LaberintoBuilder >> laberinto [

	^ laberinto
]

{ #category : #accessing }
LaberintoBuilder >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #accessing }
LaberintoBuilder >> obtenerJuego [ 
	^self juego
]
