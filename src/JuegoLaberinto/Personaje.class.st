"
Personaje es el usuario en el juego
"
Class {
	#name : #Personaje,
	#superclass : #Ente,
	#instVars : [
		'nombre'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #ataques }
Personaje >> avisar [
	self juego muerePersonaje.
]

{ #category : #'as yet unclassified' }
Personaje >> caminarHacia: unaOrientacion [
    "Lógica para que el personaje se mueva a la orientación especificada"
    | contenedorObjetivo |
    contenedorObjetivo := self posicion.  "Asumiendo que 'posicion' es una 'Habitacion' (Contenedor)"

    "Hacemos que la Orientacion camine con este personaje"
    unaOrientacion caminar: self.
]

{ #category : #'as yet unclassified' }
Personaje >> crearNuevoLaberinto:unTunel [
	unTunel crearNuevoLaberinto:self.
]

{ #category : #'as yet unclassified' }
Personaje >> irAlEste [
   self caminarHacia: Este default.
]

{ #category : #'as yet unclassified' }
Personaje >> irAlNorte [
   self caminarHacia: Norte default.
]

{ #category : #'as yet unclassified' }
Personaje >> irAlOeste [
   self caminarHacia: Oeste default.
]

{ #category : #'as yet unclassified' }
Personaje >> irAlSur [
   self caminarHacia: Sur default.
]

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]

{ #category : #comandos }
Personaje >> obtenerComandos [
	| lista |
	lista := OrderedCollection new.
	self posicion recorrer: [:each | lista addAll: each obtenerComandos ].
	^ lista
]

{ #category : #ataques }
Personaje >> puedeAtacar [
    "El personaje ataca a todos los bichos que estén en la misma posición (habitación)."
    self juego buscarBichos: self.

]
