# Entidades y Atributos

Para esta base de datos se van a considerar datos que se puedan llegar a utilizar para realizar una database de un pasatiempo o hobby

## Base de datos

### Videojuegos

1.- Identifica las entidades a registrar

2.- Identifica los atributos de las entidades

## Entidades

### Juego

- Juego_ID (PK)
- Nombre
- Año de lanzamiento
- Publisher (FK)
- Género (FK)

### Publisher

- Publisher_ID (PK)
- Nombre

### Género

- Género-ID (PK)
- Nombre

### Plataforma

- Plataforma-ID (PK)
- Nombre

### Juego x Plataforma

- JxP_ID (PK)
- Juego_ID (FK)
- Plataformas (FK)

## Tipos de relaciones

- El videojuego con la empresa que lo publico (1 a 1)
- LAs plataformas donde el videojuego salio (1 a M)
- El género de un videojuego (1 a 1)
