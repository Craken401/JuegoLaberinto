Class {
	#name : #LaberintoBuilderRombo,
	#superclass : #LaberintoBuilder,
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #'as yet unclassified' }
LaberintoBuilderRombo >> fabricarForma [
	| forma |
	forma:=Rombo new.
	forma agregarOrientacion:self fabricarNoreste; agregarOrientacion:self fabricarSureste; agregarOrientacion:self fabricarSuroeste; agregarOrientacion:self fabricarNoroeste.
	^forma
]

{ #category : #'as yet unclassified' }
LaberintoBuilderRombo >> fabricarNoreste [
	^Noreste new.
]

{ #category : #'as yet unclassified' }
LaberintoBuilderRombo >> fabricarNoroeste [
	^Noroeste new.
]

{ #category : #'as yet unclassified' }
LaberintoBuilderRombo >> fabricarSureste [
	^Sureste new.
]

{ #category : #'as yet unclassified' }
LaberintoBuilderRombo >> fabricarSuroeste [
	^Suroeste new.
]
