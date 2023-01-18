CREATE TABLE items (
  id INT PRIMARY KEY,
  genre_id INT,
  publish_date DATE,
  archived BOOLEAN,
  FOREIGN KEY (genre_id) REFERENCES genres(id),
);

CREATE TABLE music_albums (
  id INT PRIMARY KEY,
  on_spotify BOOLEAN,
  FOREIGN KEY (id) REFERENCES items(id)
);

CREATE TABLE genres (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE books (
  id INT PRIMARY KEY,
  cover_state VARCHAR(255),
  FOREIGN KEY (id) REFERENCES items(id)
);

CREATE TABLE labels (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  color VARCHAR(255)
);

Select * From music_albums;
Select * From genres;

Select * From books;
Select * From labels;