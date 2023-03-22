create DATABASE catalog;

create TABLE items (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  genre INT REFERENCES genre(id),
  author INT REFERENCES author(id),
  source INT REFERENCES source(id),
  label INT REFERENCES label(id),
  publish_date DATE,
  archived BOOLEAN
);

create TABLE genre (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255)
)

create TABLE music_album (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  on_spotify BOOLEAN,
)

CREATE TABLE game (
    id int PRIMARY KEY,
    item_id int FOREIGN KEY REFERENCES item(id),
    multiplayer varchar(100),
    last_played_at date,
    publish_date date
);

CREATE TABLE author (
    id int PRIMARY KEY,
    item_id int FOREIGN KEY REFERENCES item(id),
    first_name varchar(100),
    last_name varchar(100)
);



























--------------------------kashif starts here----
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  publisher VARCHAR,
  cover_state VARCHAR,
  genre_id INT NULL REFERENCES genres(id),
  author_id INT NULL REFERENCES authors(id),
  label_id INT NULL REFERENCES labels(id),
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL
);

-- Create Labels tables
CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  color VARCHAR(150) NOT NULL
);




























--------------------------kashif ends here-------------