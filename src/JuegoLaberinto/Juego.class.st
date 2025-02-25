"
Comentario
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto',
		'bichos'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-bichos' }
Juego >> agregarBicho:unBicho [
	self bichos add:unBicho
	
]

{ #category : #accessing }
Juego >> bichos [

	^ bichos
]

{ #category : #accessing }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : #laberintos }
Juego >> crearLaberinto2Habitaciones [

	| hab1 hab2 puerta |
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
	
	
	
	
	
	







]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM:unFM [
"unFM debe ser una instancia de creator"

	| hab1 hab2 puerta |
	
	hab1:=unFM fabricarHabitacion: 1.
	"hab1 este:unFM fabricarPared.
	hab1 oeste:unFM fabricarPared.
	hab1 norte:unFM fabricarPared."
	
	hab2:=unFM fabricarHabitacion: 2.
	"hab2 sur:unFM fabricarPared.
	hab2 este:unFM fabricarPared.
	hab2 oeste:unFM fabricarPared."
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 ponerEnOr:unFM fabricarSur elemento:puerta.
	hab1 ponerEnOr:unFM fabricarNorte elemento:puerta.
	
	
	"hab1 sur:puerta.
	hab2 norte:puerta."
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
	
	
	
	
	
	







]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFMD:unFM [
"unFM debe ser una instancia de creator"

	| hab1 hab2 puerta bomba1 bomba2|
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	
	bomba1:=unFM fabricarBomba. "un FM fabricarBomba:unFM fabricarPared"
	bomba1 em:unFM fabricarPared.
	hab1 este:bomba1.
	
	bomba2:=unFM fabricarBomba.
	bomba2 em:unFM fabricarPared.
	hab2 este:bomba2.

	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
	
	
	
	
	
	







]

{ #category : #'as yet unclassified' }
Juego >> crearLaberinto4Habitaciones [
    | hab1 hab2 hab3 hab4 puerta1 puerta2 puerta3 puerta4 bichoRojo1 bichoRojo2 bichoVerde1 bichoVerde2 |

    "Crear habitaciones"
    hab1 := Habitacion new num:1.
    hab2 := Habitacion new num:2.
    hab3 := Habitacion new num:3.
    hab4 := Habitacion new num:4.

    "Crear puertas entre habitaciones"
    puerta1 := Puerta new.
    puerta1 lado1: hab1.
    puerta1 lado2: hab2.

    puerta2 := Puerta new.
    puerta2 lado1: hab3.
    puerta2 lado2: hab4.

    puerta3 := Puerta new.
    puerta3 lado1: hab1.
    puerta3 lado2: hab3.

    puerta4 := Puerta new.
    puerta4 lado1: hab2.
    puerta4 lado2: hab4.

    "Conectar habitaciones"
    hab1 sur: puerta3.
    hab2 sur: puerta4.
    hab3 norte: puerta3.
    hab4 norte: puerta4.
    hab1 este: puerta1.
    hab2 oeste: puerta1.
    hab3 este: puerta2.
    hab4 oeste: puerta2.

    "Crear bichos"
    bichoRojo1 := Bicho new.
    bichoRojo1 iniAgresivo.
    bichoRojo1 posicion: hab1.

    bichoRojo2 := Bicho new.
    bichoRojo2 iniAgresivo.
    bichoRojo2 posicion: hab2.

    bichoVerde1 := Bicho new.
    bichoVerde1 iniPerezoso.
    bichoVerde1 posicion: hab3.

    bichoVerde2 := Bicho new.
    bichoVerde2 iniPerezoso.
    bichoVerde2 posicion: hab4.

    "Crear laberinto y agregar habitaciones y bichos"
    self laberinto: Laberinto new.
    self laberinto agregarHabitacion: hab1.
    self laberinto agregarHabitacion: hab2.
    self laberinto agregarHabitacion: hab3.
    self laberinto agregarHabitacion: hab4.

    self agregarBicho: bichoRojo1.
    self agregarBicho: bichoRojo2.
    self agregarBicho: bichoVerde1.
    self agregarBicho: bichoVerde2.

]

{ #category : #'gestion-bichos' }
Juego >> eliminarBicho:unBicho [
	self bichos remove:unBicho ifAbsent:[Transcript show:'No existe ese bicho';cr.]
	
]

{ #category : #initialization }
Juego >> initialize [
    bichos := OrderedCollection new.
]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #accessing }
Juego >> obtenerHabitacion:unNum [

 "delegar y devolver lo que le de laberinto"
 ^self laberinto obtenerHabitacion:unNum
 
]
