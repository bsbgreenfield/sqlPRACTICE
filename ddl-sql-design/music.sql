-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  album TEXT NOT NULL,
  producers TEXT[] NOT NULL
);

CREATE TABLE artists 
(
id SERIAL PRIMARY KEY,
artist_name TEXT not NULL
);

INSERT INTO artists
(artist_name)
VALUES
("Hanson"),
("Queen"),
("Boyz II Men",)
("Mariah Cary"),
("Lady Gaga"),
("Bradley Cooper"),
("Nickelback"),
("Jay Z"),
("Alicia Keys"),
("Katy Perry"),
("Juicy J"),
("Maroon 5"), 
("Christina Alguilera"),
('Avril Lavigne'),
("Destiny's Child");



CREATE TABLE producers
(
id serial primary key,
producer_name text not null
)


INSERT INTO producers
(producer_name)
VALUES
("Juicy J")
("Stephen Lironi"),
("Roy Thomas Baker"), 
("Walter Afanasieff"), 
("Benjamin Rice"), 
("Rick Parashar"), 
("Al Shux"), 
("Max Martin"), 
("Cirkut"), 
("Shellback"), 
("Benny Blanco"), 
("The Matrix"), 
("Darkchild");

songs_producers
(
  id serial primary key,
  song integer references songs,
  producer integer references producers
)

INSERT INTO songs_producers
(song, producer)

VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5,6),
(6, 7),
(7, 8),
(7, 9),
(8, 10),
(8, 11),
(9, 12),
(10, 13);

create_table songs_artists
(
  id serial PRIMARY KEY,
  song integer references songs, 
  artist integer references artists
)

INSERT INTO songs_artists
VALUES
(song, artist)
(1, 1)
(2, 2)
(3, 3)
(3, 4)
(4, 5)
(4, 6)
(5, 7)
(6, 8)
(7, 9)
(8, 10)
(9, 11)
(10, 12);

INSERT INTO songs
  (title, duration_in_seconds, release_date, album)
VALUES
  ('MMMBop', 238, '04-15-1997', 'Middle of Nowhere'),
  ('Bohemian Rhapsody', 355, '10-31-1975', 'A Night at the Opera'),
  ('One Sweet Day', 282, '11-14-1995', 'Daydream'),
  ('Shallow', 216, '09-27-2018', 'A Star Is Born'),
  ('How You Remind Me', 223, '08-21-2001', 'Silver Side Up'),
  ('New York State of Mind', 276, '10-20-2009', 'The Blueprint 3'),
  ('Dark Horse', 215, '12-17-2013', 'Prism'),
  ('Moves Like Jagger', 201, '06-21-2011', 'Hands All Over'),
  ('Complicated', 244, '05-14-2002', 'Let Go'),
  ('Say My Name', 240, '11-07-1999', 'The Writing''s on the Wall');
