"
Creator crea laberintos con Pared normal
"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'fm-bichos' }
Creator >> cambiarAModoAgresivo:unBicho [

	unBicho modo:Agresivo new.
	unBicho poder:10.
	
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoAgresivo [
	| bicho |

	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
	bicho poder:5.
		
	^bicho
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoPerezoso [
	| bicho |

	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho poder:1.
	bicho vidas:1.
	"bicho poder:5."
		
	^bicho
]

{ #category : #'factory method' }
Creator >> fabricarBomba [
	^Bomba new
]

{ #category : #'as yet unclassified' }
Creator >> fabricarEste [
	^Este default
]

{ #category : #'factory method' }
Creator >> fabricarHabitacion:unNum [
	|hab|
	hab:=Habitacion new.
	hab forma:Cuadrado new.
	hab num:unNum.
	hab agregarOrientacion:self fabricarNorte; agregarOrientacion:self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	
	hab obtenerOrientaciones do:[:each | hab ponerEnOr:each elemento:self fabricarPared]. 
	^hab
]

{ #category : #'factory method' }
Creator >> fabricarJuego [
	^Juego new
]

{ #category : #'factory method' }
Creator >> fabricarLaberinto [
	^Laberinto new
]

{ #category : #'as yet unclassified' }
Creator >> fabricarNorte [
	^Norte default
]

{ #category : #'as yet unclassified' }
Creator >> fabricarOeste [
	^Oeste default
]

{ #category : #'factory method' }
Creator >> fabricarPared [
	^Pared new
]

{ #category : #'factory method' }
Creator >> fabricarPuerta [
	^Puerta new
]

{ #category : #'as yet unclassified' }
Creator >> fabricarSur [
	^Sur default
]
