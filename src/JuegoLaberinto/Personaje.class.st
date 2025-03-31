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
Personaje >> atacar [
    "El personaje ataca a todos los bichos que estén en la misma posición (habitación)."
    self juego buscarBichos: self.

]

{ #category : #'as yet unclassified' }
Personaje >> caminarHacia: unaOrientacion [
    "Lógica para que el personaje se mueva a la orientación especificada"
    | contenedorObjetivo |
    contenedorObjetivo := self posicion.  "Asumiendo que 'posicion' es una 'Habitacion' (Contenedor)"

    "Hacemos que la Orientacion camine con este personaje"
    unaOrientacion caminar: self.
]

{ #category : #ataques }
Personaje >> heMuerto [ 	
	self juego muerePersonaje.
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

{ #category : #'as yet unclassified' }
Personaje >> juegoClonaLaberinto [
	^self juego clonarLaberinto
]

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]
