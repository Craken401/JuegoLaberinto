"
CreatorB crea laberintos con ParedBomba
"
Class {
	#name : #CreatorB,
	#superclass : #Creator,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'factory method' }
CreatorB >> fabricarPared [
	^ParedBomba new
]
