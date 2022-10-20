# Entidades y Atributos

Para esta base de datos se van a considerar datos que se puedan llegar a utilizar para realizar una database de un pasatiempo o hobby

## Base de datos

### Videojuegos

1.- Identifica las entidades a registrar

2.- Identifica los atributos de las entidades

## Entidades

### Juego

- Nombre (MK)
- Año de lanzamiento
- Publisher (FK)
- Género (FK)

### Publisher

- Nombre (MK)

### Género

- Nombre (MK)

### Plataforma

- Nombre (MK)

### Juego x Plataforma

- Juego (FK)
- Publisher (FK)

## Tipos de relaciones

- El videojuego con la empresa que fue el Publisher (1 a 1)
- El videojuego con las plataformas donde salio (1 a M)
- El videojuego con el género al que pertenece (1 a 1)
- El publisher con los juegos que publico (1 a M)
