"
Comentario
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto',
		'bichos',
		'hilos',
		'person'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Juego >> abrirPuertas [
    "Recorrer todo el laberinto y abrir cada puerta."
    self laberinto recorrer: [:elemento | elemento esPuerta ifTrue: [ elemento abrir ]
    ].
]

{ #category : #'gestion-bichos' }
Juego >> agregarBicho:unBicho [
	self bichos add:unBicho.
	unBicho juego:self.
	
]

{ #category : #'as yet unclassified' }
Juego >> agregarPersonaje:unaCadena [
	self person:(Personaje new nombre:unaCadena).
	self person juego:self.
	self laberinto entrar:self person.
]

{ #category : #accessing }
Juego >> bichos [

	^ bichos
]

{ #category : #accessing }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : #'as yet unclassified' }
Juego >> buscarBichos: unPersonaje [

    "Itera sobre todos los bichos del juego y comprueba si alguno
     está en la misma posición que unPersonaje. Si es así, lo ataca."
    self bichos do: [ :unBicho |
        (unBicho posicion = unPersonaje posicion)
            ifTrue: [ unBicho esAtacadoPor: unPersonaje ].
    ].
]

{ #category : #ataques }
Juego >> buscarPersonaje:unBicho [
	| posBicho posPerson |
	posBicho:=unBicho posicion. "mensajes 8 y 9"
	posPerson:=self person posicion. "mensajes 10 y 11"
	
	posBicho = posPerson ifTrue:[ self person esAtacadoPor:unBicho ].
]

{ #category : #'as yet unclassified' }
Juego >> cerrarPuertas [
    "Recorrer todo el laberinto y cerrar cada puerta."
    self laberinto recorrer: [:elemento | 
        elemento esPuerta ifTrue: [ elemento cerrar ]
    ].
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
	hab2 ponerEnOr:unFM fabricarNorte elemento:puerta.
	
	
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

{ #category : #'as yet unclassified' }
Juego >> estanTodosLosBichosMuertos [
	| bicho | 
	
	bicho :=self bichos detect: [ :each | each estaVivo ] ifNone:[nil].
	(bicho isNil and:[ self person estaVivo ]) ifTrue:[ self ganaPersonaje ]
]

{ #category : #'as yet unclassified' }
Juego >> ganaPersonaje [
	Transcript show: 'Fin juego: gana el personaje'; cr.
]

{ #category : #accessing }
Juego >> hilos [

	^ hilos
]

{ #category : #accessing }
Juego >> hilos: anObject [

	hilos := anObject
]

{ #category : #initialization }
Juego >> initialize [
   bichos := OrderedCollection new.
	hilos:=Dictionary new.
]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #'gestion-bichos' }
Juego >> lanzarBicho:unBicho [
	| proceso |
	Transcript show:unBicho printString ; nextPutAll: ' se activa';cr.
	proceso:=[ [unBicho estaVivo] whileTrue:[unBicho actua]] fork.
 	self hilos at:unBicho put:proceso.
]

{ #category : #'gestion-bichos' }
Juego >> lanzarBichos [

	self bichos do:[:each | self lanzarBicho:each]
]

{ #category : #'as yet unclassified' }
Juego >> moverPersonajeHacia: unaOrientacion [
    self person caminarHacia: unaOrientacion.
]

{ #category : #ataques }
Juego >> muerePersonaje [
	Transcript show: 'Fin del juego'; cr.
	self terminarBichos.
]

{ #category : #accessing }
Juego >> obtenerHabitacion:unNum [

 "delegar y devolver lo que le de laberinto"
 ^self laberinto obtenerHabitacion:unNum
 
]

{ #category : #accessing }
Juego >> person [

	^ person
]

{ #category : #accessing }
Juego >> person: anObject [

	person := anObject
]

{ #category : #'gestion-bichos' }
Juego >> terminarBicho:unBicho [
	unBicho vidas:0.
	Transcript show:unBicho printString ; nextPutAll: ' muere';cr.
	
	"comprobar si todos los bichos estan muertos ?es nuestra condicion de fin de juego?"
	self estanTodosLosBichosMuertos
]

{ #category : #'gestion-bichos' }
Juego >> terminarBichos [

	self bichos do:[:each | self terminarBicho:each]
]
