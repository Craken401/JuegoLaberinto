"
Armario
"
Class {
	#name : #Armario,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Armario >> entrar: alguien [
   "El personaje 'alguien' se esconde en el armario"
   Transcript 
      show: alguien printString; nextPutAll: ' se esconde en el armario '; 
      nextPutAll: self printString; cr.

alguien posicion: self.
   "poner un flag de 'escondido', 
    o un check que impida que le ataquen los bichos"
]
