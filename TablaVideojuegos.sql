CREATE DATABASE IF NOT EXISTS videojuegosjosejulio;

USE videojuegosjosejulio;

CREATE TABLE videojuegos(
    juego_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    año_de_salida YEAR NOT NULL,
    publisher INTEGER UNSIGNED NOT NULL, 
    género INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY  (publisher)
    REFERENCES publisher (publisher_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    FOREIGN KEY  (género)
    REFERENCES género (género_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE publisher(
    publisher_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE género(
    género_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE plataforma(
    plataforma_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE juego_x_plataforma(
    jxp_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    juego_id INTEGER UNSIGNED NOT NULL,
    plataforma_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY  (juego_id)
    REFERENCES videojuegos (juego_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    FOREIGN KEY  (plataforma_id)
    REFERENCES plataforma (plataforma_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * FROM videojuegos;

SELECT nombre, año_de_salida, publisher, género FROM videojuegos;

INSERT INTO videojuegos (nombre, año_de_salida, publisher, género) VALUES
    ("devil_may_cry_3", 2003, 3, 4),
    ("psychonnauts_2", 2021, 11, 7),
    ("resident_evil_2_remake", 2019, 3, 11),
    ("xenoblade_chronicles_3", 2022, 6, 9),
    ("metroid_samus_returns", 2017, 6, 1),
    ("metal_gear_rising", 2013, 5, 4),
    ("horizon_zero_dawn", 2017, 8, 2),
    ("fire_emblem_three_houses", 2019, 6, 3),
    ("street_fighter_v", 2016, 3, 6),
    ("yakuza_0", 2015, 7, 1);


INSERT INTO publisher (nombre) VALUES
    ("atlus"),
    ("bandai_namco"),
    ("capcom"),
    ("epic_games"),
    ("konami"),
    ("nintendo"),
    ("sega"),
    ("sony_interactive_studios"),
    ("square_enix"),
    ("warner_bros_interactive"),
    ("xbox_studios");


INSERT INTO género (nombre) VALUES
    ("acción"),
    ("aventura"),
    ("estrategia"),
    ("hack_n_slash"),
    ("novela_visual"),
    ("pelea"),
    ("plataformas"),
    ("puzzles"),
    ("rpg"),
    ("shooter"),
    ("survival_horror");


INSERT INTO plataforma (nombre) VALUES
    ("3ds"),
    ("dreamcast"),
    ("ds"),
    ("gameboy"),
    ("gameboy_advance"),
    ("genesis"),
    ("64"),
    ("nes"),
    ("PC"),
    ("ps1"),
    ("ps2"),
    ("ps3"),
    ("ps4"),
    ("ps5"),
    ("saturn"),
    ("snes"),
    ("switch"),
    ("wii"),
    ("wii_u"),
    ("xbox"),
    ("xbox_360"),
    ("xbox_one"),
    ("xbox_series");


SELECT juego_id, plataforma_id  FROM juego_x_plataforma AS jxp
    INNER JOIN plataforma AS p
    ON jxp.plataforma_id = p.plataforma
    INNER JOIN videojuego AS j
    ON jxp.juego_id = j.juego_id;
   
INSERT INTO juego_x_plataforma (juego_id, plataforma_id) VALUES
    (1, 11),
    (1, 12),
    (1, 13),
    (1, 17),
    (1, 21),
    (1, 22),
    (2, 9),
    (2, 13),
    (2, 22),
    (2, 23),
    (3, 9),
    (3, 13),
    (3, 14),
    (3, 22),
    (3, 23),
    (4, 17),
    (5, 1),
    (6, 9),
    (6, 12),
    (6, 13),
    (6, 14),
    (6, 21),
    (6, 22),
    (6, 23),
    (7, 6),
    (7, 13),
    (8, 17),
    (9, 6),
    (9, 13),
    (10, 9),
    (10, 12),
    (10, 21);