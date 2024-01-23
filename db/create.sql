--
-- create tables
--
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  code VARCHAR(255),
  price NUMERIC(10,2),
  merk_id NUMERIC,
  type_id NUMERIC
);

CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
);

CREATE TABLE type (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  class VARCHAR(255),
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Nikon D780 body + AF-S 24-120mm F/4 VR', 'De Nikon D780 is de lang verwachte opvolger van de D750. Waar de D750 al een geweldige instap full frame camera was, gaat de D780 een stapje verder. Deze full frame spiegelreflexcamera combineert alle voordelen van een DSLR met alle technologie van nu. Kortom, een professionele en moderne FX camera.', '816905633-0', 2599.5);
insert into products (name, description, code, price) values ('Canon EOS R6 mark II body', 'De Canon EOS R6 mark II is een full frame systeemcamera waarin hoogwaardige prestaties, adembenemende snelheid en professionele filmfuncties bij elkaar komen.', '077030122-3', 2929.5);
insert into products (name, description, code, price) values ('Sony Cybershot DSC-HX99', 'De Sony DSC-HX99 is de kleinste compact camera ter wereld en daardoor overal mee naar toe te nemen. Het kleine formaat doet echter niet onder voor de prestaties van de Sony DSC-HX99. De camera is uitgerust met een Zeiss lens en heeft een zoombereik van 24-720mm.', '445924201-X', 475.5);
insert into products (name, description, code, price) values ('Panasonic HC-X2E', 'DDe Panasonic HC-X2E is een geavanceerde 4K-camcorder met geïntegreerde lens en 1.0-type sensor, die naast een uitstekende gewichtsbalans en draagbaarheid ook de functies en prestaties biedt die professionals wensen.', '693155505-7', 3199.99);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

/* Type */
insert into type (class) values ('Camera');
insert into type (class) values ('Lens');
insert into type (class) values ('Statief');
insert into type (class) values ('Drone');

/* Merk */
insert into merk (name) values ('Sony');
insert into merk (name) values ('Nikon');
insert into merk (name) values ('Canon');
insert into merk (name) values ('Panasonic');
insert into merk (name) values ('Fujifilm');
insert into merk (name) values ('Sigma');
insert into merk (name) values ('DJI');
insert into merk (name) values ('Leica');
insert into merk (name) values ('Tamron');
insert into merk (name) values ('OM System');
insert into merk (name) values ('Rollei');
insert into merk (name) values ('Bresser');



