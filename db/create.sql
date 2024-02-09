--
-- create tables

CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  beschrijving TEXT
);


-- product gerelateerde tabellen

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  code VARCHAR(255),
  price INTEGER(10,2),
  merk_id INTEGER,
  gebruik_id INTEGER
);

CREATE TABLE camera (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  megapixels VARCHAR(255),
  sensor VARCHAR(255),
  fps VARCHAR(255),
  bitrate VARCHAR(255),
  beeldstabilisatie VARCHAR(255),
  geheugenkaartslots VARCHAR(255),
  stofwaterspatdicht BIT,
  schermgrootte VARCHAR(255),
  merk_id INTEGER,
  gebruik_id INTEGER,
  product_id INTEGER
);

CREATE TABLE lenzen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  lenstype BIT,
  BESCHRIJVING TEXT,
  merk_id INTEGER,
  camera_id INTEGER,
  product_id INTEGER
);

CREATE TABLE camera_lenzen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  camera_id INTEGER,
  lenzen_id INTEGER
);

CREATE TABLE statief (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  materiaal VARCHAR(255),
  maxlengteM VARCHAR(255),
  draagvermogenKG VARCHAR(255),
  beschrijving TEXT,
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE drone (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  gewichtKG VARCHAR(255),
  v4Kvideo BIT,
  topspeedKMH VARCHAR(255),
  batterijgrootteMaH VARCHAR(255),
  beschrijving TEXT,
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE driezestigcamera (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  gewichtKG VARCHAR(255),
  wifi BIT,
  bluetooth BIT,
  ISOmin VARCHAR(255),
  ISOmax VARCHAR(255),
  v4Kvideo BIT,
  beschrijving TEXT,
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE accu (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  beschrijving TEXT,
  merk_id INTEGER,
  camera_id INTEGER,
  product_id INTEGER
);

CREATE TABLE memorycard (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  beschrijving TEXT,
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE camera_memorycard (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  camera_id INTEGER,
  memorycard_id INTEGER
);

-------------------------------------------------------------------------------------------------

CREATE TABLE gebruik(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  soort VARCHAR(255)
);

CREATE TABLE tags (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  tagname VARCHAR(255)
--bv "sale", "new", "bestseller","garantie"
);

CREATE TABLE product_tags (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  tag_id INTEGER
);



--https://levelup.gitconnected.com/master-the-power-of-sql-fact-tables-vs-dimension-tables-explained-81446c39dfe4
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--



/* Merk */

--nummertjes om niet elke keer te tellen voor merk_id ;)

-- Camera/lens
insert into merk (name) values ('Sony');--1
insert into merk (name) values ('Nikon');--2
insert into merk (name) values ('Canon');--3
insert into merk (name) values ('Panasonic');--4
insert into merk (name) values ('Fujifilm');--5
insert into merk (name) values ('Sigma');--6
insert into merk (name) values ('Leica');--7
insert into merk (name) values ('Tamron');--8
insert into merk (name) values ('OM System');--9
insert into merk (name) values ('Pentax');--10
insert into merk (name) values ('Olympus');--11
insert into merk (name) values ('Hasselblad');--12

--geheugenkaart/accu
insert into merk (name) values ('Hahnel');--13
insert into merk (name) values ('sanDisk');--14
insert into merk (name) values ('samsung');--15

-- Statief
insert into merk (name) values ('Rollei');--16
insert into merk (name) values ('Bresser');--17

-- Drone
insert into merk (name) values ('DJI');--18

-- 360 camera
insert into merk (name) values ('Insta 360');--19
insert into merk (name) values ('Kandao');--20  


/*products*/
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7 mark III body','een hele goeie camera', '1843437', 1499.99, 1, 1);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7 mark IV body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7R V body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6100 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6400 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6600 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6700 body','een hele goeie camera', '1843437', 1499.99, 1, 1);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-E10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('sony alpha a1','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FX3 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FX30 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7C2 zilver','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony a7c','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('sony a9III','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('zv-e1','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX10 mark IV','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark III','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VA','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VII','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-1','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 mark II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R7 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R8 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 5D Mark IV body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 6D mark II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 250D body zwart','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 850D Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 2000D body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot G1X mark III','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot G7X mark III zwart','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot SX70 HS','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot SX740 HS zwart','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D780 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z5 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z6 II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z8 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z9 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z50 body zwart','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z30 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D7500 Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D6 Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Coolpix P1000','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Coolpix P950','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
/*camera*/


/*lenzen*/


/*camera_lenzen*/


/*statief*/


/*drone*/


/*driezestigcamera*/


/*accu*/


/*memorycard*/


/*camera_memorycard*/


/*gebruik*/
insert into gebruik (soort) values ('mirrorless');
insert into gebruik (soort) values ('dslr');
insert into gebruik (soort) values ('compact');
insert into gebruik (soort) values ('film');
insert into gebruik (soort) values ('accessoire');
insert into gebruik (soort) values ('video');
insert into gebruik (soort) values ('lens');

/*tags*/


/*product_tags*/


