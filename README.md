# 🏰 Juego del Laberinto en Smalltalk

Este repositorio contiene la versión original del **Juego del Laberinto** en **Pharo Smalltalk**, donde se han aplicado patrones de diseño para estructurar el juego de manera modular y flexible.

## 📌 Estructura del Proyecto

El juego se compone de las siguientes clases:

- **`Juego`**: Contiene la instancia de `Laberinto` y gestiona los `Bichos`.
- **`Laberinto`**: Colección de habitaciones (`Habitacion`).
- **`Habitacion`**: Define los cuartos del laberinto con sus conexiones (`norte`, `sur`, `este`, `oeste`).
- **`ElementoMapa`**: Superclase de los elementos (`Pared`, `Puerta`, `Habitacion`).
- **`Puerta`**: Conecta habitaciones y puede abrirse o cerrarse.
- **`Pared`**: Representa los muros del laberinto.
- **`ParedBomba`**: Variante de `Pared` que explota si está activa.
- **`Bicho`**: Representa enemigos en el laberinto y puede ser:
  - `Agresivo`: Se mueve rápido y tiene mayor poder.
  - `Perezoso`: Se mueve lento y tiene menor poder.

---

## 🏛️ Patrones de Diseño Implementados

### 🔨 Factory Method
- Implementado en `Creator`, que genera habitaciones, paredes y puertas.
- También existe `CreatorB`, que fabrica **paredes con bombas**.

### 🎭 Decorator
- Implementado con `ParedBomba`, que **decora** una `Pared` con una explosión al activarse.

### ♟️ Strategy
- Implementado en `Modo`, que define la estrategia de los `Bichos` (`Agresivo` o `Perezoso`).

---

## 🚀 Cómo Ejecutarlo en Pharo

1. Clonar este repositorio en **Pharo Iceberg**.
2. Cargar el paquete `JuegoLaberinto`.
3. Instanciar un `Juego` y generar el laberinto:

```smalltalk
juego := Juego new.
laberinto := juego laberinto.
