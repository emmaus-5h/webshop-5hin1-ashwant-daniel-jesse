--
-- create tables


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
  type_id INTEGER,
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

-------------------------------------------------------------------------------------------------

CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  fame VARCHAR(255),
  series VARCHAR(255),
  beschrijving TEXT
);

CREATE TABLE gebruik(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  soort VARCHAR(255),
  tweedehands BIT,
  product_id INTEGER
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


--kan nog accessoires zoals geheugenkaarten, accu's, rigs en stabilisers toevoegen

--https://levelup.gitconnected.com/master-the-power-of-sql-fact-tables-vs-dimension-tables-explained-81446c39dfe4
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, merk_id ) values ('Nikon D780 body + AF-S 24-120mm F/4 VR', 'De Nikon D780 is de lang verwachte opvolger van de D750. Waar de D750 al een geweldige instap full frame camera was, gaat de D780 een stapje verder. Deze full frame spiegelreflexcamera combineert alle voordelen van een DSLR met alle technologie van nu. Kortom, een professionele en moderne FX camera.', '816905633-0', 2599.5, 2);
insert into products (name, description, code, price, merk_id) values ('Canon EOS R6 mark II body', 'De Canon EOS R6 mark II is een full frame systeemcamera waarin hoogwaardige prestaties, adembenemende snelheid en professionele filmfuncties bij elkaar komen.', '077030122-3', 2929.5, 3);
insert into products (name, description, code, price, merk_id) values ('Sony Cybershot DSC-HX99', 'De Sony DSC-HX99 is de kleinste compact camera ter wereld en daardoor overal mee naar toe te nemen. Het kleine formaat doet echter niet onder voor de prestaties van de Sony DSC-HX99. De camera is uitgerust met een Zeiss lens en heeft een zoombereik van 24-720mm.', '445924201-X', 475.5, 1);
insert into products (name, description, code, price, merk_id) values ('Panasonic HC-X2E', 'DDe Panasonic HC-X2E is een geavanceerde 4K-camcorder met geïntegreerde lens en 1.0-type sensor, die naast een uitstekende gewichtsbalans en draagbaarheid ook de functies en prestaties biedt die professionals wensen.', '693155505-7', 3199.99, 4);
insert into products (name, description, code, price, merk_id) values ('Video Doorbell (2de generatie) + Buitencamera op batterij', 'Zie, hoor en praat met bezoekers met de Video Doorbell, waar je ook bent. Ontvang altijd en overal direct een melding op je telefoon of tablet en pas naar wens je bewegingsinstellingen aan.

  Met de Stick Up Cam kies je voor buitenbeveiliging waar je die nodig hebt. De camera heeft een veelzijdig ontwerp en kan vrijwel overal buiten worden gemonteerd. Hierdoor kun je zien wat er gebeurt op je tuinpad, terras of waar je buiten ook bescherming nodig hebt.

  Vanaf een eenvoudig dashboard in de Ring-app kun je de videobel en buitencamera koppelen voor bescherming en gemoedsrust, van je voordeur tot je achtertuin.', '686928463-6', 14, 16);
insert into products (name, description, code, price, merk_id) values ('Sigma FP L Digital Camera', 'De Sigma FP L biedt de voordelen van een full frame sensor in een zakformaat camera. Hij is ontworpen met gebruiksgemak voorop en biedt oneindig veel flexibiliteit', '492662523-7', 14, 6);
insert into products (name, description, code, price, merk_id) values ('DJI Osmo Action 4', 'Met de DJI Osmo Action 4 leg je al jouw avonturen vast op beeld. De action camera heeft een grote, lichtsterke 1/1.3 inch beeldsensor. Hierdoor maak je videos met veel details. In donkere omstandigheden maak je dankzij de grote beeldsensor heldere videos. Film bijvoorbeeld een fietsrit tijdens de zonsondergang. Je filmt in 4K resolutie met maximaal 120 frames per seconde. Dit levert haarscherpe beelden op die je wel 4 keer vertraagt. Zo licht je een actiemoment duidelijk uit. De camera is waterdicht tot 18 meter diepte. Neem hem mee tijdens het duiken en leg exotische vissen en koraal vast. Dankzij de SteadyShot 3.0 beeldstabilisatie zien je beelden er stabiel uit. Deze technologie vermindert trillingen, wat handig is als je over een hobbelig pad fietst. Met de HorizonSteady blijft de horizon van je video altijd recht, zelfs als de camera 360 graden draait. Houd de action camera bijvoorbeeld in je hand terwijl je van de skipiste afraast.', '492662523-7', 14, 7);



/* Type */


/* Merk */

-- Camera/lens
insert into merk (name) values ('Sony');
insert into merk (name) values ('Nikon');
insert into merk (name) values ('Canon');
insert into merk (name) values ('Panasonic');
insert into merk (name) values ('Fujifilm');
insert into merk (name) values ('Sigma');
insert into merk (name) values ('Leica');
insert into merk (name) values ('Tamron');
insert into merk (name) values ('OM System');
insert into merk (name) values ('Pentax');
insert into merk (name) values ('Olympus');
insert into merk (name) values ('Hasselblad');

-- Statief
insert into merk (name) values ('Rollei');
insert into merk (name) values ('Bresser');

-- Drone
insert into merk (name) values ('DJI');

-- Doorbel
insert into merk (name) values ('RING');  

-- 360 camera
insert into merk (name) values ('Insta 360'); 
insert into merk (name) values ('Kandao');  



