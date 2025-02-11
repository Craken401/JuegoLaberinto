# 🏰 Juego del Laberinto WIP (Work In Progress) en Smalltalk

Este repositorio contiene la implementación del Juego del Laberinto en **Pharo Smalltalk**, aplicando diferentes patrones de diseño y arquitectura orientada a objetos.

## 🏗️ Estructura del Proyecto

El proyecto se basa en las siguientes clases:

- **Juego**: Representa el juego y contiene una instancia de `Laberinto`.
- **Laberinto**: Contiene una colección de habitaciones (`Habitacion`).
- **Habitacion**: Define las habitaciones del laberinto, con sus conexiones (`norte`, `sur`, `este`, `oeste`).
- **ElementoMapa**: Superclase de todos los elementos del laberinto.
- **Pared**: Representa los muros dentro del laberinto.
- **Puerta**: Conecta dos habitaciones y puede estar abierta o cerrada.

## 🏛️ Patrones de Diseño Implementados

### 🔨 Factory Method
- Implementado en `Creator` para la creación de elementos como habitaciones, paredes y puertas.
- Facilita la extensión del código y permite generar diferentes tipos de laberintos.

### 🎭 Decorator
- Implementado con `DecoradorElementoMapa` y `Hechizo`.
- Permite aplicar encantamientos a `Puerta` y `Habitacion` sin modificar su código original.

### ♟️ Strategy
- Implementado con `EstrategiaMovimiento`.
- Define distintas formas de moverse dentro del laberinto, como movimiento aleatorio o dirigido.

## 🚀 Cómo Ejecutarlo en Pharo
1. Clonar este repositorio en **Pharo Iceberg**.
2. Cargar el paquete `JuegoLaberinto`.
3. Instanciar un `Juego` y explorar la estructura del laberinto.

```smalltalk
juego := Juego new.
laberinto := juego laberinto.
