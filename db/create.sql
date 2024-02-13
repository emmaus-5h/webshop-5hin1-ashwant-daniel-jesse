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
  megapixels VARCHAR(255),
  sensor VARCHAR(255),
  fps VARCHAR(255),
  bitrate VARCHAR(255),
  geheugenkaartslots VARCHAR(255),
  schermgrootte VARCHAR(255),
  merk_id INTEGER,
  gebruik_id INTEGER,
  product_id INTEGER
);

CREATE TABLE lenzen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  lenstype BIT, --prime = 0, zoom = 1
  merk_id INTEGER,
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
  draagvermogen VARCHAR(255),
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE drone (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  gewicht VARCHAR(255),
  v4Kvideo BIT,
  batterijgrootte VARCHAR(255),
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE driezestigcamera (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  gewicht VARCHAR(255),
  bluetooth BIT,
  merk_id INTEGER,
  product_id INTEGER
);

CREATE TABLE accu (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
  merk_id INTEGER,
  camera_id INTEGER,
  product_id INTEGER
);

CREATE TABLE memorycard (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam VARCHAR(255),
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
insert into merk (name) values ('Benro');--16

-- Drone 
insert into merk (name) values ('DJI');--17

-- 360 camera
insert into merk (name) values ('Insta 360');--18
insert into merk (name) values ('Kandao');--19  


/*products*/ 
--cameras
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7 mark III body','een hele goeie camera', '1654783', 1849, 1, 1);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7 mark IV body','een ultraa goeie camera', '748932', 2699, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7R V body','een ultraa goeie camera', '75829', 4499, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6100 body','een ultraa goeie camera', '742983', 749, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6400 body','een ultraa goeie camera', '75892', 949, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6600 body','een ultraa goeie camera', '89402', 1299, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6700 body','een hele goeie camera', '859403', 1699, 1, 1);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-E10 body','een ultraa goeie camera', '84932', 749, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony alpha a1','een ultraa goeie camera', '758943', 7199, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FX3 body','een ultraa goeie camera', '748293', 4699, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FX30 body','een ultraa goeie camera', '7592', 2299, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7C2 zilver','een ultraa goeie camera', '76894', 2399, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony a7c','een ultraa goeie camera', '589023', 2399, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony a9III','een ultraa goeie camera', '59034', 6999, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony zv-e1','een ultraa goeie camera', '75829', 2599, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX10 mark IV','een ultraa goeie camera', '758923', 1699, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark III','een ultraa goeie camera', '758329', 549, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VA','een ultraa goeie camera', '749328', 799, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VII','een ultraa goeie camera', '78349', 1499, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-1','een ultraa goeie camera', '839012', 679, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 body','een ultraa goeie camera', '209348', 1999, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 mark II body','een ultraa goeie camera', '27934', 2929, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R7 body','een ultraa goeie camera', '928734', 1559, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R8 body','een ultraa goeie camera', '289374', 1799, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','een ultraa goeie camera', '849210', 1069, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 5D Mark IV body','een ultraa goeie camera', '364232', 2699, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 6D mark II body','een ultraa goeie camera', '643246', 1339, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 250D body zwart','een ultraa goeie camera', '326634', 549, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 850D Body','een ultraa goeie camera', '326466', 729, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 2000D body','een ultraa goeie camera', '23466', 439, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot G1X mark III','een ultraa goeie camera', '234646', 1099, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot G7X mark III zwart','een ultraa goeie camera', '781239', 769, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot SX70 HS','een ultraa goeie camera', '723845', 599, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot SX740 HS zwart','een ultraa goeie camera', '892347', 409, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D780 body','een ultraa goeie camera', '748923', 2649, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z5 body','een ultraa goeie camera', '234534', 1549, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z6 II body','een ultraa goeie camera', '232542', 2349, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z8 body','een ultraa goeie camera', '769504', 4599, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z9 body','een ultraa goeie camera', '879403', 5999, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z50 body zwart','een ultraa goeie camera', '235689', 999, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z30 body','een ultraa goeie camera', '3274893', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D7500 Body','een ultraa goeie camera', '3453458', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D6 Body','een ultraa goeie camera', '78392', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Coolpix P1000','een ultraa goeie camera', '23445', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Coolpix P950','een ultraa goeie camera', '346457', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-V785','een ultraa goeie camera', '2354564', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-V808','een ultraa goeie camera', '235453', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-VX1EG','een ultraa goeie camera', '342534', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-BS1HE','een ultraa goeie camera', '543654', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-G9 body','een ultraa goeie camera', '435574', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-G9II body','een ultraa goeie camera', '346543', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX DC-G90 body','een ultraa goeie camera', '78624', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-GH6 body','een ultraa goeie camera', '43645', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-S5 body','een ultraa goeie camera', '3463654', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-S5 IIX body','een ultraa goeie camera', '354564', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-TZ200D','een ultraa goeie camera', '3425436', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DMC-FZ2000','een ultraa goeie camera', '3466587', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX DMC-G80 body','een ultraa goeie camera', '3467839', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix FZ-330','een ultraa goeie camera', '758239', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G70 body','een ultraa goeie camera', '573829', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G91','een ultraa goeie camera', '543789', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GFX 50S II body','een ultraa goeie camera', '617892', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GFX 100 II','een ultraa goeie camera', '235656', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-H2 body','een ultraa goeie camera', '34634', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-S10 body','een ultraa goeie camera', '23562', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-S20 body','een ultraa goeie camera', '2354754', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-T5 body','een ultraa goeie camera', '235542', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-T30 II body','een ultraa goeie camera', '236542', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10301 MP 0.72 chroom','een ultraa goeie camera', '346547', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10854 SL2 Body','een ultraa goeie camera', '3465687', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10880 SL2-S Body','een ultraa goeie camera', '34653', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 19054 Q2 Ghost','een ultraa goeie camera', '43645233', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 19120 V-LUX 5','een ultraa goeie camera', '2353243', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 20211 M11-P body','een ultraa goeie camera', '5475623', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus E-P7 Body','een ultraa goeie camera', '4324646', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus OM-D E-M10 mark IV Body','een ultraa goeie camera', '45355', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('OM SYSTEM OM-1 body','een ultraa goeie camera', '543654', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('OM SYSTEM OM-5 body','een ultraa goeie camera', '564767', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 645Z Body','een ultraa goeie camera', '3465687', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax K-1 Mark II body','een ultraa goeie camera', '3465768', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax K-3 Mark III body','een ultraa goeie camera', '32565474', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax KF Body','een ultraa goeie camera', '3465686', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad X1D-50c body','een ultraa goeie camera', '3465676', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad X2D 100c body','een ultraa goeie camera', '98685', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 11-24mm F4L USM','een ultraa goeie camera', '7674', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 24-105mm F4.0L IS II USM','een ultraa goeie camera', '547864', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 50mm F1.8 STM','een ultraa goeie camera', '457546', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 16mm F2.8 STM','een ultraa goeie camera', '45764', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 24-70mm F2.8L IS USM','een ultraa goeie camera', '457654', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 24-105mm F4L IS USM','een ultraa goeie camera', '45765745', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 35mm F1.8 IS Macro STM','een ultraa goeie camera', '34645346', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 50mm F1.8 STM','een ultraa goeie camera', '3457653', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 70-200mm F2.8L IS USM','een ultraa goeie camera', '346543', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 100-400mm F5.6-8 IS USM','een ultraa goeie camera', '346457', 1999.99, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 10-18mm F2.8 DC DN Contemporary FUJI X','een ultraa goeie camera', '235567', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 14-24mm F2.8 DG HSM ART Canon EF','een ultraa goeie camera', '235436', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 14mm F1.4 DG DN ART Sony FE','een ultraa goeie camera', '2356542', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 16mm F1.4 DC DN Contemporary Fujifilm X','een ultraa goeie camera', '346456', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-35mm F1.8 DC HSM ART Canon EF-S','een ultraa goeie camera', '346567', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-35mm F1.8 DC HSM ART Nikon DX','een ultraa goeie camera', '658563', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-50mm F2.8 DC DN Contemporary Fujifilm X','een ultraa goeie camera', '346457', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-50mm F2.8 DC DN Contemporary Sony E','een ultraa goeie camera', '34665', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 20mm F1.4 DG HSM ART Sony FE','een ultraa goeie camera', '75445', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 24-70mm F2.8 DG OS HSM ART Nikon FX','een ultraa goeie camera', '734722', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 24-105mm F4.0 DG OS HSM ART Nikon FX','een ultraa goeie camera', '245724', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 30mm F1.4 DC DN Contemporary Canon EF-M','een ultraa goeie camera', '2475247', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 35mm F2.0 DG DN Contemporary Sony FE','een ultraa goeie camera', '24757', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 50mm F1.4 DG DN ART Sony FE','een ultraa goeie camera', '7568756', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 56mm F1.4 DC DN Contemporary Sony E','een ultraa goeie camera', '56856', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 70-200mm F2.8 DG OS HSM Sports Canon EF','een ultraa goeie camera', '56858', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 85mm F1.4 ART DG HSM Nikon FX','een ultraa goeie camera', '86876', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 90mm F2.8 DG DN Contemporary Sony FE','een ultraa goeie camera', '23465', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 105mm F2.8 EX DG Macro OS HSM Nikon','een ultraa goeie camera', '1234235', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 150-600mm F5-6.3 DG OS HSM Contemporary Canon EF','een ultraa goeie camera', '1254364', 1999.99, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 11mm F1.8','een ultraa goeie camera', '346545', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 55-210mm F4.5-6.3 OSS','een ultraa goeie camera', '23543', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 70-350mm F4.5-6.3 G OSS','een ultraa goeie camera', '23654867', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 12-24mm F2.8 GM','een ultraa goeie camera', '4367689', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 16-35mm F4.0 G PZ','een ultraa goeie camera', '4455678', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 20-70mm F4.0 G','een ultraa goeie camera', '32566', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 24-70mm F2.8 GM II','een ultraa goeie camera', '364756', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 24-105mm F4.0G OSS','een ultraa goeie camera', '235457', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 35mm F1.8y','een ultraa goeie camera', '235656', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 50mm F1.8','een ultraa goeie camera', '65456865', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 70-200mm F2.8 GM OSS II','een ultraa goeie camera', '089634', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 90mm F2.8G Macro OSS','een ultraa goeie camera', '257643', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 100-400mm F4.5-5.6 GM OSS','een ultraa goeie camera', '3468235', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 135mm F1.8 GM','een ultraa goeie camera', '235568', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GF 20-35mm f4.0 R WR','een ultraa goeie camera', '23565', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XC 15-45mm F3.5-5.6 OIS PZ','een ultraa goeie camera', '2364574', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 18-55mm F2.8-4.0 R LM OIS','een ultraa goeie camera', '743289', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 27mm F2.8 R WR','een ultraa goeie camera', '489327', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 35mm F1.4 R','een ultraa goeie camera', '473289', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 35mm F2.0 R WR zwart','een ultraa goeie camera', '235657', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 50-140mm F2.8 R LM OIS WR','een ultraa goeie camera', '124663', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 56mm F1.2 R WR','een ultraa goeie camera', '346685', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 70-300mm F4.0-5.6 R LM OIS WR','een ultraa goeie camera', '2367583', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 80mm F2.8 Macro','een ultraa goeie camera', '3467658', 1999.99, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11084 Summilux-TL 35mm F1.4 ASPH','een ultraa goeie camera', '2337634', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11177 SL Super-Vario-Elmarit 16-35mm F3.5-4.5 ASPH','een ultraa goeie camera', '346746', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11183 APO-Summicron-SL 28mm F2.0 ASPH','een ultraa goeie camera', '3467543', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11189 Vario-Elmarit-SL 24-70mm F2.8 ASPH','een ultraa goeie camera', '3476534', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11191 VARIO-ELMAR-SL 100-400','een ultraa goeie camera', '235', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11667 Noctilux-M 50mm F0.95 ASPH','een ultraa goeie camera', '32654', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11677 M Elmarit 28mm F2.8 ASPH','een ultraa goeie camera', '2436', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11726 Summilux-M 35mm f1.4 ASPH','een ultraa goeie camera', '23576', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11728 Summilux-M 50mm F1.4 ASPH Black','een ultraa goeie camera', '235676', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11889 Apo-Telyt-M 135mm F3.4','een ultraa goeie camera', '125657', 1999.99, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon AF-S 18-300mm F3.5-6.3G ED VR DX','een ultraa goeie camera', '457875', 1999.99, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon AF-S 50mm F1.8G','een ultraa goeie camera', '32546547', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-50mm F4-6.3','een ultraa goeie camera', '3467685', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-70mm F4.0 S','een ultraa goeie camera', '34634', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-120mm F4.0 S','een ultraa goeie camera', '346787', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-200mm F4.0-6.3 VR','een ultraa goeie camera', '79645', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 70-200mm F2.8 VR S','een ultraa goeie camera', '457876', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 100-400mm F4.5-5.6 VR S','een ultraa goeie camera', '457765', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 180-600mm F5.6-6.3 VR','een ultraa goeie camera', '34556', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z DX 24mm F1.7','een ultraa goeie camera', '234657', 1999.99, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G 14mm F2.5 II ASPH','een ultraa goeie camera', '346674', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G 25mm F1.7 ASPH','een ultraa goeie camera', '345653', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G Vario 14-140mm F3.5-5.6 Power OIS WR','een ultraa goeie camera', '765364', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX S 18mm F1.8','een ultraa goeie camera', '23643', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 20-60mm F3.5-5.6 L-mount','een ultraa goeie camera', '346643', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 24-105mm F4.0 Macro OIS','een ultraa goeie camera', '865435', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 50mm F1.8','een ultraa goeie camera', '5437', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 70-300mm F4.5-5.6 Macro OIS','een ultraa goeie camera', '325432', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 85mm F1.8','een ultraa goeie camera', '235325', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S Pro 70-200mm F2.8','een ultraa goeie camera', '243234243', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad Lens XCD 120mm F3.5','een ultraa goeie camera', '423243', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad XCD 35-75mm F3.5-4.5','een ultraa goeie camera', '43675', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad XCD 45mm F4.0 P','een ultraa goeie camera', '547432', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad XCD 80mm F1.9','een ultraa goeie camera', '23523', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Mitakon Speedmaster 65mm F1.4 Hasselblad XCD','een ultraa goeie camera', '2367658', 1999.99, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital 45mm F1.2 ED PRO','een ultraa goeie camera', '865684', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 7-14mm F2.8 PRO','een ultraa goeie camera', '7547', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 12-100mm F4.0 PRO','een ultraa goeie camera', '754876', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 60mm F2.8 Macro','een ultraa goeie camera', '9776545', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 100-400mm F5.0-6.3 IS','een ultraa goeie camera', '457897', 1999.99, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 18-55mm F3.5-5.6 DA AL WR','een ultraa goeie camera', '643657', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 100mm F2.8 HD DFA ED AW Macro zwart','een ultraa goeie camera', '7545336', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax D HD FA 70-210mm F4 ED SDM WR','een ultraa goeie camera', '756456', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax FA 70-200mm F2.8 ED DC AW','een ultraa goeie camera', '5768554', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax HD FA 43mm F1.9 Limited','een ultraa goeie camera', '45785645', 1999.99, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme 64GB SDXC UHS-I','een ultraa goeie camera', '7547578', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme 128GB MicroSDXC UHS-I','een ultraa goeie camera', '457856', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 1TB microSDXC 200MBs UHS-I','een ultraa goeie camera', '4584558', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 1TB SDXC UHS-I','een ultraa goeie camera', '4584557', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 64GB SDXC UHS-I','een ultraa goeie camera', '32434246', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 128GB CFexpress Type-B','een ultraa goeie camera', '423654', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 128GB MicroSDXC UHS-I','een ultraa goeie camera', '5675843', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 128GB SDXC UHS-I','een ultraa goeie camera', '35643', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 256GB SDXC UHS-II','een ultraa goeie camera', '3647545', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 512GB CFexpress Type-B','een ultraa goeie camera', '4587954', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 512GB CFexpress Type-B','een ultraa goeie camera', '234243', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme PRO V60 SDXC 128GB UHS-II','een ultraa goeie camera', '235654', 1999.99, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung MicroSD PRO Ultimate 128GB','een ultraa goeie camera', '676523', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung MicroSD PRO Ultimate 512GB','een ultraa goeie camera', '233765', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 64GB SDXC UHS-I','een ultraa goeie camera', '3464576', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 128GB SDXC UHS-I','een ultraa goeie camera', '07643', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 256GB SDXC UHS-I','een ultraa goeie camera', '3475687', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 512GB MicroSDXC UHS-I','een ultraa goeie camera', '98765', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung SD PRO Ultimate 128GB','een ultraa goeie camera', '656778', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung SD PRO Ultimate 256GB','een ultraa goeie camera', '478574568', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung SD PRO Ultimate 512GB','een ultraa goeie camera', '74434', 1999.99, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-511A - Canon BP-511','een ultraa goeie camera', '67829', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-E12 Ultra - Canon LP-E12','een ultraa goeie camera', '742819', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-EL3e Ultra - Nikon EN-EL3e','een ultraa goeie camera', '463289', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-F126S Ultra - Fujifilm NP-W126S','een ultraa goeie camera', '526785', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-ON1 Ultra - Olympus BLN-1','een ultraa goeie camera', '532654', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-PLG10HP Ultra - Panasonic DMW-BLG10E','een ultraa goeie camera', '3232345', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-X1 - Sony NP-BX1','een ultraa goeie camera', '1236643', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-XW50 Ultra - Sony NP-FW50','een ultraa goeie camera', '12453', 1999.99, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Combi C3770TN','een ultraa goeie camera', '6543523', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mach3 TMA37AL','een ultraa goeie camera', '7674', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mach3 TMA47AL','een ultraa goeie camera', '784932', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mach3 TMA47AXL','een ultraa goeie camera', '532789', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mammoth TMTH44C','een ultraa goeie camera', '23543543', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Roadtrip Pro BMRTPROABLK','een ultraa goeie camera', '2354676', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Roadtrip Pro BMRTPROASLV','een ultraa goeie camera', '7656543', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Roadtrip Pro BMRTPROCSLV','een ultraa goeie camera', '34667544', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Slim Travel FSL09AN00','een ultraa goeie camera', '78929243', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Slim TSL08AS2CSH','een ultraa goeie camera', '5235', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Tortoise TTOR24CGX30','een ultraa goeie camera', '653542', 1999.99, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C5i aluminium statiefy','een ultraa goeie camera', '23554', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C5i carbon statief','een ultraa goeie camera', '236745', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C5i titanium statief','een ultraa goeie camera', '8498210', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C6i carbon statief','een ultraa goeie camera', '578329', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C6i Pro statief','een ultraa goeie camera', '67829', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Compact Traveler No.1 aluminium statief','een ultraa goeie camera', '674821', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Compact Traveler No.1 statief','een ultraa goeie camera', '758931', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Compact Traveler Star S1 statief','een ultraa goeie camera', '578924', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Easy Traveler Video XL grijs','een ultraa goeie camera', '678954', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Photo A2 statief','een ultraa goeie camera', '65892', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Photo T2 statief','een ultraa goeie camera', '578920', 1999.99, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Air 3','een ultraa goeie camera', '75892', 1999.99, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Avata drone','een ultraa goeie camera', '879506', 1999.99, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Inspire 3','een ultraa goeie camera', '46173', 1999.99, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Mavic 3 ','een ultraa goeie camera', '461278', 1999.99, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Mavic 3 Classic','een ultraa goeie camera', '214325', 1999.99, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Mini 3','een ultraa goeie camera', '125325', 1999.99, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 GO 3','een ultraa goeie camera', '55745', 1999.99, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 ONE RS','een ultraa goeie camera', '75423', 1999.99, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 Pro','een ultraa goeie camera', '235543', 1999.99, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 X3','een ultraa goeie camera', '234543', 1999.99, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Kandao Meeting Pro','een ultraa goeie camera', '643346', 1999.99, 19, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Kandao QooCam 3','een ultraa goeie camera', '3467654', 1999.99, 19, 2);
/*camera*/
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
--remove everything to do with description


insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, gebruik_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 1, 1); 
/*lenzen*/

insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);
insert into lenzen (naam, lenstype,  merk_id, product_id) values ('Canon EF 11-24mm F4L USM', 1, 3, 1);

/*camera_lenzen*/
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);
insert into camera_lenzen (camera_id, lenzen_id) values (1, 1);

/*statief*/
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen,  merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg',  16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen,  merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg',  16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen,  merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg',  16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen,  merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg',  16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen,  merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg', 16, 213);
insert into statief (naam, materiaal, draagvermogen, merk_id, product_id) values ('Benro Combi C3770TN', 'carbon', '18kg',  16, 213);

/*drone*/
insert into drone (naam, gewicht, v4Kvideo, batterijgrootte, merk_id, product_id) values ('DJI Air 3', '0,72 kg', 1, '5200 mAh', 17, 235);
insert into drone (naam, gewicht, v4Kvideo, batterijgrootte, merk_id, product_id) values ('DJI Air 3', '0,72 kg', 1, '5200 mAh', 17, 235);
insert into drone (naam, gewicht, v4Kvideo, batterijgrootte, merk_id, product_id) values ('DJI Air 3', '0,72 kg', 1, '5200 mAh', 17, 235);
insert into drone (naam, gewicht, v4Kvideo, batterijgrootte, merk_id, product_id) values ('DJI Air 3', '0,72 kg', 1, '5200 mAh', 17, 235);
insert into drone (naam, gewicht, v4Kvideo, batterijgrootte, merk_id, product_id) values ('DJI Air 3', '0,72 kg', 1, '5200 mAh', 17, 235);
insert into drone (naam, gewicht, v4Kvideo, batterijgrootte, merk_id, product_id) values ('DJI Air 3', '0,72 kg', 1, '5200 mAh', 17, 235);

/*driezestigcamera*/
insert into driezestigcamera (naam, gewicht, bluetooth, merk_id, product_id) values ('Insta360 GO 3', '35,5 g', 1, 18, 241);
insert into driezestigcamera (naam, gewicht, bluetooth, merk_id, product_id) values ('Insta360 GO 3', '35,5 g', 1, 18, 241);
insert into driezestigcamera (naam, gewicht, bluetooth, merk_id, product_id) values ('Insta360 GO 3', '35,5 g', 1, 18, 241);
insert into driezestigcamera (naam, gewicht, bluetooth, merk_id, product_id) values ('Insta360 GO 3', '35,5 g', 1, 18, 241);
insert into driezestigcamera (naam, gewicht, bluetooth, merk_id, product_id) values ('Insta360 GO 3', '35,5 g', 1, 18, 241);
insert into driezestigcamera (naam, gewicht, bluetooth, merk_id, product_id) values ('Insta360 GO 3', '35,5 g', 1, 18, 241);

/*accu*/
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);
insert into accu (naam, merk_id, product_id) values ('Hähnel HL-511A - Canon BP-511', 12, 204);

/*memorycard*/
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);
insert into memorycard (naam, capacityGB, videospeed, readingspeed, writingspeed, merk_id, product_id) values ('SanDisk Extreme 64GB SDXC UHS-I', '64GB', 'v30', '200MB/s', '90MB/s', 13, 184);


/*camera_memorycard*/
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);
insert into camera_memorycard (camera_id, memorycard_id) values (1, 1);


/*gebruik*/
insert into gebruik (soort) values ('mirrorless');
insert into gebruik (soort) values ('dslr');
insert into gebruik (soort) values ('compact');
insert into gebruik (soort) values ('film');
insert into gebruik (soort) values ('accessoire');
insert into gebruik (soort) values ('video');
insert into gebruik (soort) values ('lens');

/*tags*/
insert into tags(tagname) values ('sale');
insert into tags(tagname) values ('new');
insert into tags(tagname) values ('bestseller');
insert into tags(tagname) values ('garantie');

/*product_tags*/

insert into product_tags (product_id, tag_id) values (1, 1)


