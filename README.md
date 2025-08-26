# Taller - Hechos y reglas en Prolog

## ¿Qué vamos a hacer?

Este proyecto resuelve dos ejercicios de lógica usando **Prolog**:

### Ejercicio 1: Árbol Genealógico
Crear un sistema que responda preguntas sobre la familia de Los Simpson usando:
- **Hechos**: relaciones directas como padre(homero, bart)
- **Reglas**: relaciones calculadas como abuelo(abraham, bart)

El sistema podrá responder consultas como:
- ¿Quién es el abuelo de Bart?
- ¿Cuáles son todos los nietos de Abraham?
- ¿Lisa y Bart son hermanos?

### Ejercicio 2: Sistema Legal
Modelar la lógica: "Es crimen vender armas a países hostiles"

Probar que el Coronel West es criminal porque:
- Es estadounidense
- Vende armas a Corea del Sur  
- Corea del Sur es enemigo de Estados Unidos

## Archivos del proyecto
- `family.pl` - Base de datos de la familia Simpson
- `legal.pl` - Reglas del sistema legal
- `queries.pl` - Ejemplos de consultas para probar

## Cómo usar
1. Abrir SWI-Prolog
2. Cargar los archivos: `?- [family].`
3. Hacer consultas: `?- abuelo(abraham, X).`
