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
  capacityGB VARCHAR(255),
  videospeed VARCHAR(255),
  readingspeed VARCHAR(255),
  writingspeed VARCHAR(255),
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
insert into merk (name) values ('Hasselblad');--11

--geheugenkaart/accu
insert into merk (name) values ('Hahnel');--12
insert into merk (name) values ('sanDisk');--13
insert into merk (name) values ('samsung');--14

-- Statief
insert into merk (name) values ('Rollei');--15
insert into merk (name) values ('Bresser');--16

-- Drone
insert into merk (name) values ('DJI');--17

-- 360 camera
insert into merk (name) values ('Insta 360');--18
insert into merk (name) values ('Kandao');--19  


/*products*/ 
--cameras
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
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony zv-e1','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX10 mark IV','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark III','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VA','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VII','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-1','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 mark II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R7 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R8 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
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
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-V785','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-V808','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-VX1EG','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-BS1HE','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-G9 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-G9II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX DC-G90 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-GH6 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-S5 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-S5 IIX body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-TZ200D','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DMC-FZ2000','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX DMC-G80 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix FZ-330','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G70 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G91','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GFX 50S II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GFX 100 II','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-H2 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-S10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-S20 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-T5 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-T30 II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10301 MP 0.72 chroom','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10854 SL2 Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10880 SL2-S Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 19054 Q2 Ghost','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 19120 V-LUX 5','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 20211 M11-P body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus E-P7 Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus OM-D E-M10 mark IV Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('OM SYSTEM OM-1 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('OM SYSTEM OM-5 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 645Z Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax K-1 Mark II body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax K-3 Mark III body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax KF Body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad X1D-50c body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad X2D 100c body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);

--lenzen
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 11-24mm F4L USM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 24-105mm F4.0L IS II USM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 50mm F1.8 STM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 16mm F2.8 STM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 24-70mm F2.8L IS USM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 24-105mm F4L IS USM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 35mm F1.8 IS Macro STM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 50mm F1.8 STM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 70-200mm F2.8L IS USM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 100-400mm F5.6-8 IS USM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('SIGMA 10-18mm F2.8 DC DN Contemporary FUJI X','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 14-24mm F2.8 DG HSM ART Canon EF','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 14mm F1.4 DG DN ART Sony FE','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 16mm F1.4 DC DN Contemporary Fujifilm X','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-35mm F1.8 DC HSM ART Canon EF-S','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-35mm F1.8 DC HSM ART Nikon DX','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-50mm F2.8 DC DN Contemporary Fujifilm X','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-50mm F2.8 DC DN Contemporary Sony E','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 20mm F1.4 DG HSM ART Sony FE','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 24-70mm F2.8 DG OS HSM ART Nikon FX','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 24-105mm F4.0 DG OS HSM ART Nikon FX','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 30mm F1.4 DC DN Contemporary Canon EF-M','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 35mm F2.0 DG DN Contemporary Sony FE','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 50mm F1.4 DG DN ART Sony FE','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 56mm F1.4 DC DN Contemporary Sony E','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 70-200mm F2.8 DG OS HSM Sports Canon EF','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 85mm F1.4 ART DG HSM Nikon FX','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 90mm F2.8 DG DN Contemporary Sony FE','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 105mm F2.8 EX DG Macro OS HSM Nikon','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 150-600mm F5-6.3 DG OS HSM Contemporary Canon EF','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 11mm F1.8','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 55-210mm F4.5-6.3 OSS','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 70-350mm F4.5-6.3 G OSS','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 12-24mm F2.8 GM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 16-35mm F4.0 G PZ','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 20-70mm F4.0 G','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 24-70mm F2.8 GM II','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 24-105mm F4.0G OSS','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 35mm F1.8y','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 50mm F1.8','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 70-200mm F2.8 GM OSS II','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 90mm F2.8G Macro OSS','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 100-400mm F4.5-5.6 GM OSS','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 135mm F1.8 GM','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
 /* insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);
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
  insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2);*/

     


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


/* 
snel nieuwe rij producten toevoegen
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '1253437', 1999.99, 1, 2)


