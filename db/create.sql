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
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7 mark III body','De Sony A7 mark III body is een full frame systeemcamera die perfect is voor professionele foto- en videografen. Met deze camera profiteer je van nog meer snelheid en een nog hogere beeldkwaliteit dan bij de voorgangers uit de A7-serie.', '1654783', 1849, 1, 1);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7 mark IV body','De Sony A7 IV is een full frame systeemcamera die ideaal is voor fotografie en videografie. De camera beschikt over een uitmuntende beeldkwaliteit dankzij de 33 megapixel Exmor R-sensor. Voor video-opnamen kun je rekenen op een 4K kwaliteit in 60p.', '748932', 2699, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7R V body','De Sony A7R V met 61 megapixel biedt een waanzinnige autofocus op basis van AI en heeft een razendsnelle verwerking dankzij de nieuwste BIONZ XR. Je maakt videobeelden in 8K en hebt geen last meer van trillingen dankzij de verbeterde 8-stops beeldstabilisatie.', '75829', 4499, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6100 body','De Sony A6100 beschikt over een snelle automatische scherpstelling van slechts 0,02 seconden met 425 scherpstelpunten. Naast Eye Autofocus heeft deze camera ook de EISA award winnende Animal Eye Auto Focus, en real-time tracking', '742983', 749, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6400 body','De Sony A6400 is een EISA award winnende camera dat beschikt over een snelle automatische scherpstelling van slechts 0,02 seconden, verbeterde Eye Autofocus en nieuw ontwikkelde Real-time Tracking.', '75892', 949, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6600 body','De Sony Alpha 6600 Body is de opvolger van de A6500. Het is een APS-C-formaat spiegelloze digitale camera die snel en stabiel is. De camera beschikt over een snelle automatische scherpstelling van slechts 0,02 seconden, steeds verbeterende Eye Autofocus, EISA award winnende Animal Eye Auto Focus en Real-time Tracking.', '89402', 1299, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A6700 body','De Sony A6700 systeemcamera is een full frame innovatie in APS-C formaat. Ervaar een uitstekende beeldkwaliteit, precieze autofocus en ongelimiteerde creativiteit in een klein, handzaam pakketje.', '859403', 1699, 1, 1);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-E10 body','De Sony ZV-E10 is de perfecte compact camera waarmee jij aan de slag kunt met het creëren van video’s en foto’s. Deze vlogging camera beschikt over belangrijke en fijne features, zeker wanneer je veel aan de slag gaat met het maken van content voor sociale media.', '84932', 749, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony alpha a1','De Sony Alpha A1 is een full frame systeemcamera waarmee jij als content maker alle kanten op kunt. Je hoeft met deze camera nergens compromissen te sluiten en kunt aan de slag met het maken van hoge resolutie beelden, indrukwekkende 8K video-opnames en snelheid.', '758943', 7199, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FX3 body','De Sony FX3 neemt je mee in de wereld van cinema. De videocamera is supercompact maar heeft alles wat je als cinematograaf zoekt. 4K beeldkwaliteit, low-light, real-time Eye AF & touch tracking en nog veel meer.', '748293', 4699, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FX30 body','een ultraa goeie camera', '7592', 2299, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony A7C2 zilver','De Sony FX30 APS-C videocamera brengt de visie van content creators tot leven en biedt eenvoudige toegang tot de creatieve cinema wereld.', '76894', 2399, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony a7c','Leg het leven vast zoals je het ziet met de Alpha 7C systeemcamera van Sony. Deze veelzijdige systeemcamera beschikt over een 24.2 megapixel Exmor R CMOS-sensor en heeft een ISO-bereik van 100-51200 waardoor het mogelijk wordt om in alle lichtsituaties gedetailleerde fotos en videos te maken.', '589023', 2399, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony a9III','De Sony A9 III is de nieuwe razendsnelle full frame systeemcamera op de markt, perfect voor alle sport- en wildlifefotografen. Dankzij de global shutter, een absolute wereldprimeur voor een professionele systeemcamera, leg je zelfs de snelste onderwerpen vast zonder dat er vervorming optreedt.', '59034', 6999, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony zv-e1','De Sony ZV-E1 is de camera voor iedere content creator die op zoek is naar unieke functies voor cinematic content & veeleisende videomakers die op zoek zijn naar de beste opnamen. ', '75829', 2599, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX10 mark IV','De Sony Cybershot DSC-RX10 Mark IV is een compacte camera met een snelle autofocus van 0,03 seconden en kan tot24 fps continu fotograferen.', '758923', 1699, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark III','De Sony Cybershot DSC-RX100 mark III is een geavanceerde point-and-shoot compact camera met een grote 20,1 megapixel 1 inch Exmor R CMOS-sensor om hoge resolutie beelden en Full HD-video te produceren.', '758329', 549, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VA','De Sony Cybershot DSC-RX100 mark VA is het nieuwste vlaggenschip model onder de compactcameras van Sony. Deze nieuwe versie beschikt over de BIONZ X processor waardoor je onder meer profiteert van een 1.8x snellere autofocus.', '749328', 799, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony Cybershot DSC-RX100 mark VII','De Sony Cybershot DSC-RX100 mark VII is een compacte camera die prestaties levert van groot formaat. De nieuwste toevoeging aan de RX-serie levert enorm snelle prestaties en biedt meerdere functies met betrekking tot autofocus, waaronder realtime tracking en realtime oog-autofocus.', '78349', 1499, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony vlog camera ZV-1','De Sony ZV-1 is speciaal ontworpen voor de vloggers onder ons en is volledig ingesteld op het creëren van content. Zo beschikt de vlogcamera over een kantelbaar touchscreen, grote record-knop, record lampje aan de voorkant van de camera en een vaste lens.', '839012', 679, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 body','De Canon EOS R6 is een full frame systeemcamera met snelheid, gevoeligheid bij weinig licht, de 8-stops beeldstabilisatie en 4K 60p-video. Deze camera zorgt ervoor dat je elk moment kunt vastleggen en een nieuwe dimensie kunt geven aan je visuele verhaal. Dit gebeurt mede door de 20 megapixel CMOS-sensor, interne stabilisatiesysteem en uitgebreide videomogelijkheden.', '209348', 1999, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R6 mark II body','De Canon EOS R6 mark II is een full frame systeemcamera waarin hoogwaardige prestaties, adembenemende snelheid en professionele filmfuncties bij elkaar komen. Doe geen compromis als enthousiaste beeldmaker.', '27934', 2929, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R7 body','De Canon EOS R7 is een snelle APS-C systeemcamera voor de veeleisende hobbyist. De cropsensor met 32,5 megapixel staat garant voor haarscherpe foto’s en adembenemende video’s in 4K-resolutie.', '928734', 1559, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R8 body','De Canon EOS R8 is een zeer lichte full frame systeemcamera met functies van de Canon EOS R3 en Canon EOS R6 mark II, namelijk Dual Pixel CMOS AF II, 4K video in 60fps, 40fps wanneer je fotografeert en 24.2 megapixels.', '289374', 1799, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS R10 body','De Canon EOS R10 is een APS-C systeemcamera, ideaal voor de enthousiaste fotograaf of content creator. De veelzijdige camera beschikt over een 24,2 megapixel APS-C cropsensor en biedt een uitmuntende mix van gebruiksgemak en snelheid.', '849210', 1069, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 5D Mark IV body','De Canon 5D Mark IV is een full frame spiegelreflexcamera van absolute wereldklasse. Al jaren staat de 5D-serie voor topkwaliteit en de Mark IV zet deze traditie vol overgave voort. Je legt alles haarscherp vast met de maar liefst 30.4 megapixel full frame CMOS-sensor met een ISO-gevoeligheid tot 32.000.', '364232', 2699, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 6D mark II body','De Canon EOS 6D mark II body is een full frame spiegelreflexcamera voorzien van 26,2 megapixel en een DIGIC 7-processor.', '643246', 1339, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 250D body zwart','De Canon EOS 250D body zwart is een lichtgewicht en gebruiksvriendelijke spiegelreflexcamera. De EOS 250D zorgt voor uitstekende beelden dankzij 24,1 Megapixel CMOS APS-C sensor. De DIGIC 8-beeldprocessor biedt geweldige prestaties, zelfs wanneer er weinig licht is.', '326634', 549, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 850D Body','De Canon EOS 850D spiegelreflexcamera is ontworpen voor de enthousiaste fotograaf, die op zoek is naar foto's en video's van nog hogere kwaliteit.', '326466', 729, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EOS 2000D body','De Canon EOS 2000D Body is een veelzijdige en gebruiksvriendelijke spiegelreflexcamera die perfect is voor de beginnende fotograaf. Met deze camera maak je heldere, gedetailleerde fotos met levensechte kleuren en kun je videos in hoogwaardige Full HD kwaliteit opnemen.', '23466', 439, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot G1X mark III','De Canon Powershot G1X mark III is ideaal als je opzoek bent naar een compact en alles-in-één alternatief voor een DSLR.', '234646', 1099, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot G7X mark III zwart','Met de Canon PowerShot G7 X Mark III compactcamera maak je fotos die voldoen aan de verwachtingen van wat je gewend bent met je smartphone en deze zelfs overtreffen.', '781239', 769, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot SX70 HS','De Canon Powershot SX70 HS compactcamera heeft een indrukwekkend 65x optisch zoomobjectief met een 35mm-equivalent van 21-1365mm, zodat je elk onderwerp, dichtbij of ver weg, scherp en gedetailleerd kunt vastleggen.', '723845', 599, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon Powershot SX740 HS zwart','De Canon Powershot SX740 HS is een krachtige compactcamera met 40x optische zoom. Deze camera is ideaal om op reis te gebruiken dankzij de supersnelle DIGIC 8 verwerking, een 4K videoresolutie en het compacte formaat.', '892347', 409, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D780 body','De Nikon D780 is de lang verwachte opvolger van de D750. Waar de D750 al een geweldige instap full frame camera was, gaat de D780 een stapje verder. Deze full frame spiegelreflexcamera combineert alle voordelen van een DSLR met alle technologie van nu. Kortom, een professionele en moderne FX camera.', '748923', 2649, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z5 body','De Nikon Z5 is een systeemcamera met een full frame 24.3 megapixel CMOS-sensor die zeer geschikt is voor zowel foto- als videografie.', '234534', 1549, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z6 II body','De Nikon Z6 II is een hoogwaardige systeemcamera die voort bouwt op het succes van de Z6. Deze robuuste en gebruiksvriendelijke camera geeft je de mogelijkheid om cinematische videos van professionele kwaliteit te produceren in 4K kwaliteit met maar liefst 60fps.', '232542', 2349, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z8 body','De Nikon Z8 systeemcamera combineert een uitzonderlijke resolutie met bliksemsnelle prestaties. De Z8 is een hybride van de populaire Nikon Z7 en Z9 met een professionele performance in een compactere behuizing.', '769504', 4599, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z9 body','De Nikon Z9 is een systeemcamera van absolute topklasse die je altijd en overal helpt om perfecte beelden te maken. De Z9 heeft een gestapelde 45.7 megapixel full frame CMOS-sensor en de ultrasnelle EXPEED 7-processor die zorgen voor een verbluffende beeldkwaliteit.', '879403', 5999, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z50 body zwart','De Nikon Z50 is de derde camera van Nikon in hun hoogwaardige systeemcamera reeks en de eerste Z-serie camera met een DX-formaat sensor.', '235689', 999, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z30 body','De Nikon Z 30 is een krachtige, beginnersvriendelijke systeemcamera. De camera is compact genoeg om makkelijk overal mee naartoe te nemen maar levert hoge prestaties.', '3274893', 799, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D7500 Body','De Nikon D7500 body is een spiegelreflexcamera die ontworpen is om zowel beginnende als professionele fotografen extra creatieve mogelijkheden te bieden. Met dezelfde beeldkwaliteit als de D500 en een 20,9 megapixel DX-formaat CMOS-sensor maakt u in zelfs de meest uitdagende situaties haarscherpe fotos.', '3453458', 1167, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon D6 Body','De Nikon D6 is de langverwachte opvolger van de ultieme spiegelreflexcamera van Nikon, de D5. De D6 voldoet aan alle hoge eisen die professionele fotografen stellen en vormt een geweldige combinatie van snelheid en nauwkeurigheid.', '78392', 7599, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Coolpix P1000','De Nikon Coolpix P1000 bereikt ongekende hoogten in de categorie compactcameras. Het is nemelijk een compactcamera met maar liefst 125x optische zoom, zodat je geen onderwerp hoeft te missen.', '23445', 1167, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Coolpix P950','De Nikon Coolpix P950 is een compactcamera die beschikt over een zeer krachtige 83x optische zoomlens (equivalent met 2000 mm). Of je nu fotos gaat maken bij een luchtshow of op safari, deze superzoom geeft je de vrijheid om tot dichtbij in te zoomen op het onderwerp.', '346457', 992, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-V785','De Panasonic HC-V785 is geschikt voor veeleisende filmmakers, die de beste Full HD-beeldkwaliteit willen.', '2354564', 429, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-V808','Met de Panasonic HC-V808 Zwart maak je prachtige, heldere opnames door de grote MOS-sensor, Leica Dicomar-lens en high precision auto-focus.', '235453', 499, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic HC-VX1EG','De Panasonic HC-VX1EG is een hoogwaardige camcorder waarmee je alle mooie momenten in haarscherpe 4K beeldkwaliteit vastlegt.', '342534', 599, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-BS1HE','De DC-BS1HE is een professionele boxcamera waarmee je videos kunt opnemen in 6K bij 24 fps en 4K UHD-resolutie bij 60 fps.', '543654', 3399, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-G9 body','De Panasonic Lumix DC-G9 is een topmodel van de Lumix G-cameras, met fantastische beeldkwaliteit in combinatie met perfecte mobiliteit en ultrasnelle opnames.', '435574', 999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-G9II body','Deze uitbreiding op de LUMIX-lijn zorgt voor een superieure beeldkwaliteit, heeft een sterk verbeterde autofocus en blinkt uit met een betrouwbare burst-modus.', '346543', 1799, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX DC-G90 body','De Panasonic LUMIX DC-G90 is een compacte systeemcamera met een geweldige combinatie tussen foto en video voor zowel amateurs als professionals.', '78624', 699, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-GH6 body','De Panasonic Lumix DC-GH6 is de langverwachte opvolger van de populaire Panasonic Lumix DC-GH5 II. Deze krachtige hybride systeemcamera is perfect voor fotografen en filmmakers.', '43645', 1799, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-S5 body','De Panasonic Lumix S5 IIX is een toevoeging aan de populaire LUMIX S serie. De systeemcamera heeft ongelooflijke foto- en videoprestaties in een aantrekkelijk, compact ontwerp.', '3463654', 1399, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-S5 IIX body','De Panasonic Lumix S5 IIX is een toevoeging aan de populaire LUMIX S serie. De systeemcamera heeft ongelooflijke foto- en videoprestaties in een aantrekkelijk, compact ontwerp.', '354564', 2499, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DC-TZ200D','Met de Panasonic Lumix DC-TZ200D compactcamera haal je de ideale reisgenoot in huis. Deze imponerende camera is uitgerust met een Leica DC Vario-Elmar groothoeklens van 24 mm en 15x optische zoom, zodat je vrijwel elke fotografische situatie aankunt.', '3425436', 799, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix DMC-FZ2000','De Panasonic LUMIX DMC-FZ2000 is een compactcamera die vanwege zijn hoogwaardige foto- en videografische prestaties geschikt is voor zowel semi-professionele videomakers als veeleisende fotografen.', '3466587', 999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX DMC-G80 body','De Panasonic LUMIX DMC-G80 is voorzien van een 16 megapixel sensor waarmee u foto's en video's in hoge 4K kwaliteit kunt vastleggen, zelfs in omstandigheden met weinig licht.', '3467839', 699, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix FZ-330','De Panasonic Lumix FZ-330 is een compacte camera met een stof- en spatwaterdichte behuizing, ideaal om mee op pad te nemen.', '758239', 499, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G70 body','De Panasonic G70 body is een 4K systeemcamera.', '573829', 559, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G91','De Panasonic LUMIX DC-G91 is een compacte systeemcamera met een geweldige combinatie van foto en video voor amateurs en professionals. Maak prachtige, scherpe fotos met de 20,3-megapixel Micro FourThirds MOS-sensor.', '543789', 999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GFX 50S II body','De Fujifilm GFX50S II is een lichte en handzame systeemcamera met een krachtige ingebouwde stabilisatie en een sensor met maar liefst 51,4 Megapixels.', '617892', 3999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GFX 100 II','De Fujifilm GFX 100 II is een systeemcamera met een snelle grootformaat 102MP High Speed sensor. Hiermee wordt de standaard in de fotografiewereld naar een nog hoger niveau getild.', '235656', 7999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-H2 body','De Fujifilm X-H2 is een APS-C systeemcamera, ideaal voor de foto- en videograaf die professionele en hoogwaardige content wilt produceren.', '34634', 1949, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-S10 body','De Fujifilm X-S10 mag wel zeer compact en slank zijn, maar deze camera levert hoogwaardige prestaties. Hij is namelijk uitgerust met dezelfde beeldsensor en processor als de award-winning X-T4. De beeldregistratie en beeldverwerking zijn dus van absolute topklasse.', '23562', 849, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-S20 body','De Fujifilm X-S20 is de ultieme all-in-one camera waarin prestaties van topkwaliteit worden gecombineerd met een compacte, lichtgewicht behuizing.', '2354754', 1299, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-T5 body','De Fujifilm X-T5 combineert de nostalgische look en feel van analoge camera’s met verbluffende resultaten.', '235542', 1999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm X-T30 II body','De Fujifilm X-T30 Mark II is de opvolger van de Fujifilm X-T30 Mark I, maar met de kracht van de X-T4. En dat merk je. De Mark II heeft dezelfde compacte en lichte behuizing als zijn voorganger, maar beschikt over de X-Trans CMOS 4 beeldsensor en de X-Processor 4 uit de X-T4. Dit resulteert in 26.1 megapixel foto's en video's in 4K met 30 frames per seconde.', '236542', 949, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10301 MP 0.72 chroom','Mechanische perfectie! Niets anders. De Leica MP is een handgemaakt gereedschap dat gemaakt is voor de vakfotograaf.', '346547', 5550, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10854 SL2 Body','De Leica 10854 SL2 systeemcamera is ontwikkeld door aandachtig te luisteren naar feedback van fotografen die werken met zijn voorganger. Met veel inspanning heeft Leica technologische innovatie en prestaties weten te leveren, terwijl het merk het klassieke ontwerp en erfgoed heeft weten te behouden.', '3465687', 6800, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 10880 SL2-S Body','De Leica 10880 SL2-S Body Black is de perfecte keuze voor fotografen die de voorker geven aan een snelle bediening boven de uitzonderlijk hoge beedresolutie van de Leica SL2. Binnen het Leica SL-systeem zijn er bijzonder hoge opnamesnelheid tot 25 beelden per seconde bij volledige resolutie. Daarnaast zijn er pro-level videomogelijkheden met 10-bits 4K video-opnamens.', '34653', 4999, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 19054 Q2 Ghost','De Leica Q2 Ghost is de vertrouwde Q2 in een tijdloos ontwerp dat is ontworpen door Hodinkee en is gebaseerd op een iconisch duikhorloge dat onder de kenners bekend staat als ‘ghost bezel’.', '43645233', 5950, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 19120 V-LUX 5','De Leica 19120 V-LUX 5 is een veelzijdige compactcamera uit het Leica assortiment. Met het meegeleverde, allround objectief met een brandpuntsafstand van 24-400 mm kun je wijde landschappen fotograferen of juist mooie portretten en dierenfotos maken.', '2353243', 1299, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 20211 M11-P body','Met de Leica M11-P slaat Leica een nieuwe mijlpaal in de geschiedenis van fotografie. De Leica M11-P is de eerste camera die metadata opslaat door Content Credentials toe te voegen op het moment van opname om zo de authenticiteit van digitale beelden te beschermen.', '5475623', 8950, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus E-P7 Body','De nieuwe camera in de PEN-serie maakt indruk met een stijlvol ontwerp en de hoogste beeldkwaliteit.', '4324646', 849, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus OM-D E-M10 mark IV Body','De Olympus OM-D E-M10 Mark IV is een compacte en veelzijdige 20 megapixel systeemcamera voor creatievelingen.', '45355', 749, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('OM SYSTEM OM-1 body','De OM System OM-1 II is dé ideale camera voor outdoorfotografie, zoals vogel-, wildlife-, macro- en landschapsfotografie.', '543654', 1998, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('OM SYSTEM OM-5 body','De OM-5 is gecreëerd voor de echte natuurliefhebbers en avonturiers, a memory maker made for nature.', '564767', 1199, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 645Z Body','De Pentax 645Z Middenformaat camera beschikt over een 43,8x32,8mm CMOS-sensor met 51,4 effectieve megapixels. De sensor is ontworpen zonder een anti-aliasing filter scherpte om details te maximaliseren.', '3465687', 4749, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax K-1 Mark II body','De Pentax K1 Mark II is het vlaggenschip model van de Pentax K-serie, een full frame spiegelreflexcamera met een uitzonderlijke beeldkwaliteit en indrukwekkende prestaties.', '3465768', 2099, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax K-3 Mark III body','De Pentax K-3 Mark III body zwart is een compacte en ergonomische spiegelreflexcamera voor gepassioneerde fotografen. De camera biedt een maximale fotografische ervaring en beschikt over een reeks verbeterde technologische ontwikkelingen.', '32565474', 1999, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax KF Body','De Pentax KF is een compacte, weersbestendige en stofdichte DSLR camera, ideaal voor allerlei soorten outdoorfotografie.', '3465686', 949, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad X1D-50c body','De Hasselblad X1D is werelds eerste spiegelloze digitale midden formaat camera en is uitgerust met een hoogwaardige 50 Megapixel CMOS sensor.', '3465676', 4795, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad X2D 100c body','De Hasselblad X2D 100c is de opvolger van de X1D in de flagship-lijn van Hasselblad met verbeteringen in de beeldkwaliteit, scherpstelling, stabilisatie, reactievermogen en opslag in een Scandinavisch ontwerp.', '98685', 8699, 11, 2);
--lenzen
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 11-24mm F4L USM','De wijdste ultragroothoekzoom lens van canon geschikt voor de fullframe EOS camera met EF vatting. Super degelijke bouwkwaliteit en de beste optische prestaties zonder al te veel vervorming.', '7674', 3499, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 24-105mm F4.0L IS II USM','De Canon EF 24-105mm F/4.0L IS II USM is een standaard zoomobjectief met professionele prestaties in verschillende soorten fotografie en videografie.', '547864', 1319, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon EF 50mm F1.8 STM','De Canon EF 50mm F/1.8 STM is een prime objectief in een klassiek ontwerp met verbeteringen aan het AF-systeem en het fysieke ontwerp.', '457546', 114, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 16mm F2.8 STM','De Canon RF 16mm F/2.8 Macro IS STM is een ultragroothoeklens voor architectuurfotografie, weidse uitzichten en vlogvideos.', '45764', 295, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 24-70mm F2.8L IS USM','De Canon RF 24-70mm F/2.8L IS USM lens is een krachtig standaard zoomobjectief voor professionals en fotografieliefhebbers. Dit objectief is een veelzijdige lens uit de RF-familie en is ideaal voor portret-, landschaps-, trouw- en reportagefotografie.', '457654', 2799, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 24-105mm F4L IS USM','De Canon RF 24-105mm F/4L IS USM is een veelzijdig zoomobjectief uit de L-serie. Door het bereik van 24-105mm is hij voor verschillende soorten fotografie te gebruiken, van landschappen tot portretten, en ideaal als standaard reisobjectief.', '45765745', 1519, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 35mm F1.8 IS Macro STM','Het Canon RF 35mm F/1.8 IS Macro STM objectief is een ideale metgezel voor op vakantie dankzij het natuurlijke groothoekperspectief, de close-up scherpstelling en Hybrid IS.', '34645346', 549, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 50mm F1.8 STM','De Canon RF 50mm F/1.8 STM is een slank prime objectief met een standaard brandpuntsafstand en een klassieke, veelzijdige beeldhoek in een bijzonder compact ontwerp.', '3457653', 239, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 70-200mm F2.8L IS USM','De Canon RF 70-200mm F/2.8L IS USM lens biedt veelzijdigheid en een groot bereik in een opvallend slanke body. Deze flexibele telezoom wordt gekenmerkt door zijn heldere ontwerp en geavanceerde optica.', '346543', 3249, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Canon RF 100-400mm F5.6-8 IS USM','De Canon RF 100-400mm F/5.6-8 IS USM is een zoomlens voor gevorderde fotografen. De lens is gemaakt voor enthousiaste fotografen die op zoek zijn naar een langere lens zonder het extra gewicht en de grootte.', '346457', 733, 3, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 10-18mm F2.8 DC DN Contemporary FUJI X','De SIGMA 10-18 mm F2.8 DC DN is een compacte en lichtgewicht ultragroothoek zoomlens voor APS-C camera’s. Dankzij de hoge lichtsterkte en het handzame formaat is dit objectief perfect voor landschaps- en reisfotografie én online contentcreatie.', '235567', 749, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 14-24mm F2.8 DG HSM ART Canon EF','De Sigma 14-24mm F/2.8 DG HSM Art Canon is een groothoekobjectief uit de bekende Sigma Art-lijn. Met een vast diafragma van F/2.8 profiteer je van een constante lichtsterkte over het hele zoombereik en kun je onder alle omstandigheden je onderwerp helder vastleggen.', '235436', 1389, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 14mm F1.4 DG DN ART Sony FE','De Sigma 14mm F/1.4 DG DN Art is, met een maximaal diafragma van f/1.4 en een brandpuntafstand van 14 millimeter, uitermate geschikt voor de fanatieke sterrenfotograaf.', '2356542', 1589, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 16mm F1.4 DC DN Contemporary Fujifilm X','De Sigma 16mm F/1.4 DC DN Contemporary is een compact, maar veelzijdig groothoekobjectief dat je onder verschillende weersomstandigheden kunt gebruiken.', '346456', 439, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-35mm F1.8 DC HSM ART Canon EF-S','De Sigma 18-35mm F/1.8 DC HSM ART is een zoomlens met een constant f/1.8 diafragma over het gehele zoombereik. Ideaal geschikt voor landschaps- portret-, en close-up fotografie.', '346567', 779, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-35mm F1.8 DC HSM ART Nikon DX','De Sigma 18-35mm F/1.8 DC HSM ART is een zoomlens met een constante f/1.8 diafragma over het gehele zoombereik. Ideaal geschikt voor landschap- portret-, en close-up fotografie.', '658563', 779, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-50mm F2.8 DC DN Contemporary Fujifilm X','De Sigma 18-50mm F2.8 DC DN Contemporary is een standaardzoomlens voor APS-C systeemcamera’s en dankzij het brede zoombereik van 27-75mm in 35mm equivalent veelzijdig inzetbaar.', '346457', 539, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 18-50mm F2.8 DC DN Contemporary Sony E','De Sigma 18-50mm F2.8 DC DN Contemporary is een standaardzoomlens voor APS-C systeemcamera’s en dankzij het brede zoombereik van 27-75mm in 35mm equivalent veelzijdig inzetbaar.', '34665', 549, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 20mm F1.4 DG HSM ART Sony FE','De Sigma 20mm F/1.4 DG HSM ART Sony FE is een prime-objectief met een vaste brandpuntsafstand van 20mm. Met deze unieke groothoeklens bent u verzekerd van hoge resolutie beelden met levensechte kleuren en veel detail.', '75445', 799, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 24-70mm F2.8 DG OS HSM ART Nikon FX','De Sigma 24-70mm F/2.8 DG OS HSM Art Nikon is een groothoek zoomobjectief die dankzij de lichtsterkte, ingebouwde beeldstabilisatie en hypersonische scherpstelmotor geschikt is voor uiteenlopende situaties.', '734722', 1299, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 24-105mm F4.0 DG OS HSM ART Nikon FX','Er zijn omstandigheden dat een zoomobjectief meer mogelijkheden biedt dan een met vast brandpunt, maar tegelijkertijd mag er geen compromis worden gedaan aan de beeldkwaliteit. Deze Sigma 24-105mm/4 DG OS HSM voldoet aan deze eisen!', '245724', 819, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 30mm F1.4 DC DN Contemporary Canon EF-M','De Sigma 30mm F/1.4 DC DN (C) Canon EF-M is een snelle en veelzijdige prime lens die is ontworpen voor een Canon EF-M-mount mirrorless camera.', '2475247', 369, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 35mm F2.0 DG DN Contemporary Sony FE','De Sigma 35mm F/2 DG DN Contemporary Sony E-mount is een toegankelijk objectief voor de Sony systeemcamera gebruikers. Een groothoek lens die deaal is voor fotografen die veel bezig zijn met natuur of architectuur. Dankzij geavanceerde productietechnieken heeft Sigma de prestaties van dit objectief tot ongekende hoogte weten op te schroeven.', '24757', 639, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 50mm F1.4 DG DN ART Sony FE','De SIGMA 50mm F/1.4 DG DN Art is een veelzijdige, hoogwaardige lens uit de SIGMA Art serie. De hoogwaardige bouw, het veelzijdige brandpunt en grote diafragma maken hem geschikt voor vele soorten van fotografie én video-opnames.', '7568756', 969, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 56mm F1.4 DC DN Contemporary Sony E','De Sigma 56mm F/1.4 DC DN Contemporary is dankzij het compacte formaat en lichte gewicht de ideale lens om overal mee naar toe te nemen.', '56856', 469, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 70-200mm F2.8 DG OS HSM Sports Canon EF','De Sigma 70-200mm F2.8 DG OS HSM Sports is een telelens met een lichtwaarde van F2.8. Op diverse vlakken levert dit objectief de beste prestaties. Perfect voor sportfotografie, dierenfotografie maar ook portretten.', '56858', 1339, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 85mm F1.4 ART DG HSM Nikon FX','De Sigma 85mm F/1.4 ART DG HSM Nikon FX is een primelens die perfect is voor het maken van portretten met ultieme creatieve expressie.', '86876', 1129, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 90mm F2.8 DG DN Contemporary Sony FE','Sigma 90mm F/2.8 DG DN Contemporary is een midtelelens met een grote veelzijdigheid. Het objectief maakt deel uit van Sigmas I-serie met lenzen voor systeemcameras.', '23465', 639, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 105mm F2.8 EX DG Macro OS HSM Nikon','De Sigma 105mm F/2.8 EX DG Macro OS HSM is een lichtsterk objectief dankzij het grote diafragma van F/2.8 over het hele bereik. Daarnaast levert het stabiele beelden met Sigmas Optical Stabiliser', '1234235', 469, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sigma 150-600mm F5-6.3 DG OS HSM Contemporary Canon EF','De Sigma 150-600mm f/5-6.3 DG OS HSM Contemporary lens brengt veelzijdige super telezoom brandpuntafstanden in een compact, weerbestendig pakket.', '1254364', 1009, 6, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 11mm F1.8','De Sony E 11mm F/1.8 is een ultra groothoeklens met uitstekende resolutie, prachtige bokeh achtergrondmogelijkheden en een nauwkeurige scherpstelling.', '346545', 549, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 55-210mm F4.5-6.3 OSS','De Sony E 55-210mm F/4.5-6.3 OSS lens is voorzien van extra-low dispersion glas, een groot zoombereik en een aluminium constructie. Op een APS-C camera heeft deze zoomlens een equivalente brandpuntafstand van 82,5-315mm, geschikt voor eventfotografie en portretten.', '23543', 225, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony E 70-350mm F4.5-6.3 G OSS','Het Sony E 70-350mm F/4.5-6.3 G OSS objectief biedt een handig telebereik voor APS-C cameras. Het objectief heeft een 35mm equivalent van 105-525mm.', '23654867', 649, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 12-24mm F2.8 GM','De Sony FE 12-24mm F/2.8 GM lens is de ideale groothoeklens voor architectuur- en landschapsfotografen, maar deze fullframe lens is ook geschikt voor videografen.', '4367689', 3299, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 16-35mm F4.0 G PZ','een ultraa goeie camera', '4455678', 1399, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 20-70mm F4.0 G','De Sony FE 16-35mm F/4.0 G is een krachtige groothoekzoomlens uit de G-serie met een constant diafragma van F/4.0. Met dit objectief geniet je van een geweldige resolutie, prachtig bokeh en snellere en nauwkeurigere scherpstelling dan met een conventioneel objectief.', '32566', 1599, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 24-70mm F2.8 GM II','Het Sony FE 24-70mm F/2.8 GM II objectief levert een uitstekende hoek-tot-hoek resolutie met een constant diafragma van F/2.8. Daarnaast biedt het standaard fullframe zoomobjectief een prachtige bokeh dankzij een cirkelvormig diafragma met 11 lamellen.', '364756', 2399, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 24-105mm F4.0G OSS','De Sony FE 24-105mm F/4.0G OSS is een krachtige groothoekzoomlens met een groot zoombereik. Het Sony objectief heeft een constant maximaal diafragma voor gelijkwaardige prestaties over het gehele bereik.', '235457', 1149, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 35mm F1.8','De Sony FE 35mm F/1.8 lens is een snel en compact objectief. Het biedt een veelzijdige groothoek voor je fullframe camera met een FE-vatting.', '235656', 589, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 50mm F1.8','De Sony FE 50mm F/1.8 is het ideale objectief als je op zoek bent naar een toegankelijk, standaardobjectief voor je fullframe camera. Het brandpuntsafstand maakt dit objectief breed inzetbaar, van landschapsfotografie tot portretten of reportages.', '65456865', 196, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 70-200mm F2.8 GM OSS II','De Sony FE 70-200mm F/2.8 GM OSS II is een extreem licht telezoomobjectief met een groot diafragma voor foto- en videotoepassingen.', '089634', 2999, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 90mm F2.8G Macro OSS','Maak verbluffende close-up en macrofotos met het Sony FE 90mm F/2.8G Macro OSS objectief met een vergrotingsfactor van 1:1 en compatibiliteit met volledig frame voor systeemcameras met Sony E-bevestiging.', '257643', 999, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 100-400mm F4.5-5.6 GM OSS','De Sony FE 100-400mm F/4.5-5.6 GM OSS geeft je een mooi bereik voor sport-, wildlife- en actiefotografie. Het zoomobjectief heeft een uitstekende resolutie en scherpte met minimale aberraties.', '3468235', 2349, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Sony FE 135mm F1.8 GM','De Sony FE 135mm F/1.8 GM biedt hoogwaardige prestaties door een deskundig ontwerp. Niet alleen bij een diafragma van F/1.8, maar bij alle diafragma-instellingen.', '235568', 1726, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm GF 20-35mm f4.0 R WR','De Fujifilm GF 20-35mm f/4.0 R WR is een ultrawijd groothoek zoomobjectief, ideaal voor landschaps- en stadsfotografie.', '23565', 2799, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XC 15-45mm F3.5-5.6 OIS PZ','De Fujifilm XC 15-45mm F/3.5-5.6 OIS PZ is een groothoek zoomobjectief dat een geavanceerd optisch ontwerp combineert met grootse prestaties in beeldkwaliteit.', '2364574', 267, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 18-55mm F2.8-4.0 R LM OIS','De Fujifilm XF 18-55mm f/2.8-4.0 R LM OIS is een standaard zoomobjectief waarmee je een diversiteit aan onderwerpen kunt vastleggen, van portretten tot aan landschappen.', '743289', 579, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 27mm F2.8 R WR','De Fujifilm XF27mm F2.8 R WR is dankzij zijn lichte platte ontwerp een draagbare prime lens die zeer prettig is in gebruik. Dit objectief is ontworpen voor gebruik in combinatie met APS-C camera’s met een Fujifilm X-mount.', '489327', 449, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 35mm F1.4 R','De Fujifilm XF 35mm f/1.4 is een lichtsterk en veelzijdige lens met een weide beeldhoek. Hiermee kun je goed uit de voeten met onder andere portretten, producten en reportages.', '473289', 789, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 35mm F2.0 R WR zwart','De Fujifilm XF 35mm f/2.0 is een lichtsterk objectief waarmee je de mooiste portretten en reportagefotos maakt.', '235657', 399, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 50-140mm F2.8 R LM OIS WR','De Fujifilm XF 50-140mm is een telezoom waarmee je de mooiste portretten, de spannendste dieren en gaafste sport vastlegt.', '124663', 1499, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 56mm F1.2 R WR','De Fujifilm XF 56mm f/1.2 is een lichtsterk objectief waarmee je de mooiste portretten en productfotos maakt.', '346685', 1029, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 70-300mm F4.0-5.6 R LM OIS WR','De Fujifilm XF 70-300mm is een telezoomobjectief dat dankzij zijn variabele brandpuntsafstand te gebruiken is voor diverse fotografiedoelen. Voorzien van ingebouwde beeldstabilisatie, snelle en stille autofocus en een weersbestendige behuizing.', '2367583', 849, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Fujifilm XF 80mm F2.8 Macro','De Fujifilm XF 80mm f/2.8 is een macro-objectief waarmee je met gemak de mooiste bloemen en natuurtaferelen vastlegt.', '3467658', 1158, 5, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11084 Summilux-TL 35mm F1.4 ASPH','een ultraa goeie camera', '2337634', 1784, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11177 SL Super-Vario-Elmarit 16-35mm F3.5-4.5 ASPH','een ultraa goeie camera', '346746', 5890, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11183 APO-Summicron-SL 28mm F2.0 ASPH','een ultraa goeie camera', '3467543', 5050, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11189 Vario-Elmarit-SL 24-70mm F2.8 ASPH','een ultraa goeie camera', '3476534', 2750, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11191 VARIO-ELMAR-SL 100-400','een ultraa goeie camera', '235', 2200, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11667 Noctilux-M 50mm F0.95 ASPH','een ultraa goeie camera', '32654', 12190, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11677 M Elmarit 28mm F2.8 ASPH','een ultraa goeie camera', '2436', 2350, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11726 Summilux-M 35mm f1.4 ASPH','een ultraa goeie camera', '23576', 5750, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11728 Summilux-M 50mm F1.4 ASPH Black','een ultraa goeie camera', '235676', 4550, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Leica 11889 Apo-Telyt-M 135mm F3.4','een ultraa goeie camera', '125657', 4150, 7, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon AF-S 18-300mm F3.5-6.3G ED VR DX','een ultraa goeie camera', '457875', 701, 1, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon AF-S 50mm F1.8G','een ultraa goeie camera', '32546547', 257, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-50mm F4-6.3','een ultraa goeie camera', '3467685', 299, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-70mm F4.0 S','een ultraa goeie camera', '34634', 1199, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-120mm F4.0 S','een ultraa goeie camera', '346787', 1299, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 24-200mm F4.0-6.3 VR','een ultraa goeie camera', '79645', 1049, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 70-200mm F2.8 VR S','een ultraa goeie camera', '457876', 2949, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 100-400mm F4.5-5.6 VR S','een ultraa goeie camera', '457765', 3049, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon NIKKOR Z 180-600mm F5.6-6.3 VR','een ultraa goeie camera', '34556', 1999, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Nikon Z DX 24mm F1.7','een ultraa goeie camera', '234657', 319, 2, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G 14mm F2.5 II ASPH','een ultraa goeie camera', '346674', 249, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G 25mm F1.7 ASPH','een ultraa goeie camera', '345653', 169, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix G Vario 14-140mm F3.5-5.6 Power OIS WR','een ultraa goeie camera', '765364', 579, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic LUMIX S 18mm F1.8','een ultraa goeie camera', '23643', 849, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 20-60mm F3.5-5.6 L-mount','een ultraa goeie camera', '346643', 629, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 24-105mm F4.0 Macro OIS','een ultraa goeie camera', '865435', 939, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 50mm F1.8','een ultraa goeie camera', '5437', 1999.99, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 70-300mm F4.5-5.6 Macro OIS','een ultraa goeie camera', '325432', 999, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S 85mm F1.8','een ultraa goeie camera', '235325', 579, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Panasonic Lumix S Pro 70-200mm F2.8','een ultraa goeie camera', '243234243', 2299, 4, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad Lens XCD 120mm F3.5','een ultraa goeie camera', '423243', 4680, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad XCD 35-75mm F3.5-4.5','een ultraa goeie camera', '43675', 5399, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad XCD 45mm F4.0 P','een ultraa goeie camera', '547432', 1199, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hasselblad XCD 80mm F1.9','een ultraa goeie camera', '23523', 4788, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Mitakon Speedmaster 65mm F1.4 Hasselblad XCD','een ultraa goeie camera', '2367658', 779, 11, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital 45mm F1.2 ED PRO','een ultraa goeie camera', '865684', 1399, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 7-14mm F2.8 PRO','een ultraa goeie camera', '7547', 1399, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 12-100mm F4.0 PRO','een ultraa goeie camera', '754876', 1199, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 60mm F2.8 Macro','een ultraa goeie camera', '9776545', 549, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Olympus M.Zuiko Digital ED 100-400mm F5.0-6.3 IS','een ultraa goeie camera', '457897', 1699, 9, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 18-55mm F3.5-5.6 DA AL WR','een ultraa goeie camera', '643657', 199, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax 100mm F2.8 HD DFA ED AW Macro zwart','een ultraa goeie camera', '7545336', 699, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax D HD FA 70-210mm F4 ED SDM WR','een ultraa goeie camera', '756456', 1079, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax FA 70-200mm F2.8 ED DC AW','een ultraa goeie camera', '5768554', 1999, 10, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Pentax HD FA 43mm F1.9 Limited','een ultraa goeie camera', '45785645', 699, 10, 2);
--geheugenkaarten
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme 64GB SDXC UHS-I','een ultraa goeie camera', '7547578', 22, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme 128GB MicroSDXC UHS-I','een ultraa goeie camera', '457856', 19, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 1TB microSDXC 200MBs UHS-I','een ultraa goeie camera', '4584558', 199, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 1TB SDXC UHS-I','een ultraa goeie camera', '4584557', 249, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 64GB SDXC UHS-I','een ultraa goeie camera', '32434246', 22, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 128GB CFexpress Type-B','een ultraa goeie camera', '423654', 179, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 128GB MicroSDXC UHS-I','een ultraa goeie camera', '5675843', 29, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 128GB SDXC UHS-I','een ultraa goeie camera', '35643', 39, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 256GB SDXC UHS-II','een ultraa goeie camera', '3647545', 379, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 512GB CFexpress Type-B','een ultraa goeie camera', '4587954', 449, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme Pro 512GB SDXC UHS-I','een ultraa goeie camera', '234243', 139, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('SanDisk Extreme PRO V60 SDXC 128GB UHS-II','een ultraa goeie camera', '235654', 89, 13, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung MicroSD PRO Ultimate 128GB','een ultraa goeie camera', '676523', 29, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung MicroSD PRO Ultimate 512GB','een ultraa goeie camera', '233765', 79, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 64GB SDXC UHS-I','een ultraa goeie camera', '3464576', 18, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 128GB SDXC UHS-I','een ultraa goeie camera', '07643', 28, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 256GB SDXC UHS-I','een ultraa goeie camera', '3475687', 39, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung PRO Plus 512GB MicroSDXC UHS-I','een ultraa goeie camera', '98765', 64, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung SD PRO Ultimate 128GB','een ultraa goeie camera', '656778', 34, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung SD PRO Ultimate 256GB','een ultraa goeie camera', '478574568', 59, 14, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Samsung SD PRO Ultimate 512GB','een ultraa goeie camera', '74434', 109, 14, 2);
--accu's
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-511A - Canon BP-511','een ultraa goeie camera', '67829', 42, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-E12 Ultra - Canon LP-E12','een ultraa goeie camera', '742819', 64, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-EL3e Ultra - Nikon EN-EL3e','een ultraa goeie camera', '463289', 46, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-F126S Ultra - Fujifilm NP-W126S','een ultraa goeie camera', '526785', 32, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-ON1 Ultra - Olympus BLN-1','een ultraa goeie camera', '532654', 54, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-PLG10HP Ultra - Panasonic DMW-BLG10E','een ultraa goeie camera', '3232345', 39, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-X1 - Sony NP-BX1','een ultraa goeie camera', '1236643', 32, 12, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Hähnel HL-XW50 Ultra - Sony NP-FW50','een ultraa goeie camera', '12453', 43, 12, 2);
--statieven
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Combi C3770TN','een ultraa goeie camera', '6543523', 449, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mach3 TMA37AL','een ultraa goeie camera', '7674', 161, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mach3 TMA47AL','een ultraa goeie camera', '784932', 229, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mach3 TMA47AXL','een ultraa goeie camera', '532789', 249, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Mammoth TMTH44C','een ultraa goeie camera', '23543543', 399, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Roadtrip Pro BMRTPROABLK','een ultraa goeie camera', '2354676', 149, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Roadtrip Pro BMRTPROASLV','een ultraa goeie camera', '7656543', 149, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Roadtrip Pro BMRTPROCSLV','een ultraa goeie camera', '34667544', 199, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Slim Travel FSL09AN00','een ultraa goeie camera', '78929243', 108, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Slim TSL08AS2CSH','een ultraa goeie camera', '5235', 106, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Benro Tortoise TTOR24CGX30','een ultraa goeie camera', '653542', 276, 16, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C5i aluminium statief','een ultraa goeie camera', '23554', 97, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C5i carbon statief','een ultraa goeie camera', '236745', 129, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C5i titanium statief','een ultraa goeie camera', '8498210', 88, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C6i carbon statief','een ultraa goeie camera', '578329', 159, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei C6i Pro statief','een ultraa goeie camera', '67829', 299, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Compact Traveler No.1 aluminium statief','een ultraa goeie camera', '674821', 80, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Compact Traveler No.1 statief','een ultraa goeie camera', '758931', 109, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Compact Traveler Star S1 statief','een ultraa goeie camera', '578924', 24, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Easy Traveler Video XL grijs','een ultraa goeie camera', '678954', 299, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Photo A2 statief','een ultraa goeie camera', '65892', 149, 15, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Rollei Photo T2 statief','een ultraa goeie camera', '578920', 99, 15, 2);
--drones
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Air 3','een ultraa goeie camera', '75892', 1499, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Avata drone','een ultraa goeie camera', '879506', 579, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Inspire 3','een ultraa goeie camera', '46173', 13635, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Mavic 3 Classic','een ultraa goeie camera', '214325', 1579, 17, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('DJI Mini 3','een ultraa goeie camera', '125325', 818, 17, 2);
--360 camera's
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 GO 3','een ultraa goeie camera', '55745', 479, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 ONE RS','een ultraa goeie camera', '75423', 939, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 Pro','een ultraa goeie camera', '235543', 4799, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Insta360 X3','een ultraa goeie camera', '234543', 539, 18, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Kandao Meeting Pro','een ultraa goeie camera', '643346', 829, 19, 2);
insert into products (name, description, code, price, merk_id, gebruik_id) values ('Kandao QooCam 3','een ultraa goeie camera', '3467654', 399, 19, 2);

/*camera*/
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.2', 'full-frame', '10fps', '100','2', 1, 1);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 2); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 3); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 4); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 5); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 6); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 7); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 8); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 9); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 10);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 11);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 12); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 13); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 14); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 15); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 16); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 17); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 18); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 19); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 20);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 21); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 22); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 23); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 24); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 25); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 26); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 27); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 28); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 29);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 30);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 31);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 32);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 33);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 34);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 35);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 36);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 37);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 38);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 39);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 40);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 41);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 42);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 43);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 44); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 45); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 46);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 47);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 48); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 49); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 50); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 51); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 52); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 53); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 54); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 55);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 56); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 57); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 58); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 59); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 60); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 61); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 62); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 63); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 64);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 65);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 66); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 67); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 68); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 69); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 70); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 71); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 72); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 73); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 74); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 75); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 76); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 77);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 78);
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 79); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 80); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 81); 
insert into camera (name, megapixels, sensor, fps, bitrate, geheugenkaartslots, merk_id, product_id) values ('Sony A7 mark III body', '24.4', 'full-frame', '10fps', '100','2', 1, 82); 

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


