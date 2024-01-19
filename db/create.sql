--
-- create tables
--

CREATE TABLE camera (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  merk VARCHAR(255),
  description TEXT,
  prijs NUMERIC(10,2),
  voorraad VARCHAR(255)
);

CREATE TABLE lens (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  merk VARCHAR(255),
  description TEXT,
  prijs NUMERIC(10,2),
  voorraad VARCHAR(255)
);

CREATE TABLE statief (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  merk VARCHAR(255),
  description TEXT,
  prijs NUMERIC(10,2),
  voorraad VARCHAR(255)
);

CREATE TABLE drone (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  merk VARCHAR(255),
  description TEXT,
  prijs NUMERIC(10,2),
  voorraad VARCHAR(255)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('NIKON camera', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('Post Mortem', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into products (name, description, code, price) values ('Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

