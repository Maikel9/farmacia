DROP DATABASE IF EXISTS farmacia;
CREATE DATABASE IF NOT EXISTS farmacia DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE farmacia;

CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro numeric(6,2) null,
	estado int null,
	laboratorio varchar(50) null,
	caducidad date null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;


INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Careta con lente','Ofrece un buen ajuste para niños y adultos','40.00',1,'GLAXO','2023/12/21','careta.jpg')
,('Enjuague bucal','Enj bucal butler gum paroex s/alc 300 ml bot 2289','175.00',1,'GLAXO','2023/12/21','butler.jpg')
,('Caladryl clear','Es un anestésico que alivia el dolor por quemaduras','164.99',1,'GLAXO','2023/12/21','clear.jpg')
,('Cubrebocas KF94','Con diseño hipoalergénico suave y comodo','19.90',1,'GLAXO','2023/12/21','cubreboca.jpg')
,('Ocurelif gotas','Alivio para el enrojecimiento e irritación de los ojos','50.00',1,'GLAXO','2023/12/21','ocurelif.jpg')
,('One touch select plus','Tiras reactivas 25 unidades','231.90',1,'GLAXO','2023/12/21','one.jpg')
,('Essential quercetina','Compuesto abundante en muchos alimentos','285.00',1,'GLAXO','2023/12/21','quercetina.jpg');


CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	codrol int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado,codrol)
VALUES ('Usuario','admin','correo@example.com','123456',1,1),
('Miguel Angel','Morales','miguel@gmail.com','123456',1,2);


create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped),
	FOREIGN KEY(codusu) REFERENCES USUARIO (codusu) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(codpro) REFERENCES PRODUCTO (codpro) ON DELETE CASCADE ON UPDATE CASCADE
);
alter table PEDIDO add token varchar(30) null;


CREATE TABLE ROL(
	codrol int not null AUTO_INCREMENT,
	nrol varchar(50),
	CONSTRAINT pk_rol
	PRIMARY KEY (codrol)
);

INSERT INTO ROL(codrol, nrol)
VALUES (1, 'Administrador'),
(2, 'Cliente');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Careta con lente','Ofrece un buen ajuste para niños y 
adultos','40.00',1,'GLAXO','2023/12/21','careta.jpg');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Amoxil','12H 875MG C/10 tab'
,'115.00',1,'GLAXO','2021/12/31','amoxil.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Amoxivet susp','500mg caja c/fco c/pvo p/75ml'
,'60.00',1,'VALEANT','2021/07/30','amoxivet.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('broncomed','Sol Adulto 120 ml'
,'62.00',1,'LIMONT','2021/07/26','broncomed.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Ceftrex','ceftrex 1gr i.v'
,'220.00',1,'SIEGFRIED ','2021/07/31','ceftrex.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Covidgel ','codvigel 1lt gelantibacterial'
,'90.00',1,'PULWELL','2021/03/30','codvigel.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Debeone ','debeonoe D.T. Tab 850mg caja c/30'
,'130.00',1,'ARMSTRONG','2021/01/04','debeonoe.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Dermatovate ','Dermatovate CMA 0.044G caja c/tubo c/40g '
,'320.00',1,'GLAXO  ','2021/09/30','Dermatovate.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Donodol ','Donodol Tab 125mg caja c/10'
,'120.00',1,'ARMSTRONG  ','2021/03/30','Donodol.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Elestat','Elestat sol 0.05% 5ml'
,'390.00',1,'ALLERGAN  ','2021/07/31','Elestat.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Geslutin','geslutin 100mg 30 perlas'
,'460.00',1,'ASOFARMA  ','2021/08/31','Geslutin.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Klaricid ','klaricid 7Tabs 500mg  '
,'390.00',1,'ABBOT ','2023/12/21','Klaricid.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Lacipil','Lacipil Tab 4MG caja c/14 '
,'250.00',1,'GSK  ','2021/03/30','Lacipil.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Lindeza','Lindeza 120mg 42caps orlistat  '
,'210.00',1,'PISA  ','2021/03/30','Lindeza.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Megion ','   Megion IV 500MG AMP 1x5ML'
,'90.00',1,'SANDOZ  ','2021/04/30','Megion.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tenormin ','tenormin Tab 100MG caja c/28  '
,'310.00',1,'ASTRA ZENECA  ','2021/07/30','Tenormin.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' XL-3 extra','XL-3 extra capsulas c/12 '
,'36.00',1,'GENNOMA  ','2021/09/30','XL-3 extra.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Amikayect ','Amikayect iny 100mg c/1 jeringa c/2ml'
,'57.00',1,'GROSSMAN','2022/11/30','Amikayect.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Barracuda cera  ',' Barracuda cera clasica 70g '
,'52.00',1,'NATTURA','2024/10/30','Barracuda cera.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Barracuda Gel ','Barrucada gel hair poseidon 180g '
,'6.00',1,' NATTURA ','2024/12/21','Barracuda Gel.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Betnovate','Betnovate locion susp 1mg caja c/fco c/100ml '
,'365.00',1,' GLAXO','2023/12/21','Betnovate.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Cefaxona ','Cefaxona im 500mg FA  '
,'115.00',1,' PISA ','2021/08/01','Cefaxona.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Cicloferon ','Cicloferon susp caja c/fco c/125mk '
,'260.00',1,' LIOMONT ','2021/10/30','Cicloferon.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Climene ','Climene c/21 grag '
,'499.00',1,'BAYER  ','2022/28/02','Climene.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Gel moco de gorila',' Desc moco de gorila punk 280g '
,'20.00',1,'NATTURA  ','2025/01/30','Gel moco de gorila.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Ensure ','Ensure polvo de fresa 400g '
,'215.00',1,'ABBOT  ','2021/12/30','Ensure.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Gel antibacterial ',' Gel antibacterial jaloma 120ml '
,'20.00',1,'JALOMA  ','2022/04/02','Gel antibacterial jaloma.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Gel moco de gorila ','Gel moco de gorila rockero 270g 3D'
,'21.00',1,'NATTURA  ','2024/10/30','Gel moco de gorila.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Invexter',' Invexter tab 6mg c/4 '
,'240.00',1,'VALEANT  ','2022/27/31','Invexter.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Invexter','Invexter tab 6mg c/2  '
,'160.00',1,' VALEANT ','2022/07/31','Invexter.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Keppra ','keppra 1000MG 30 tabs'
,'1200.00',1,' UCB ','2022/08/31','Keppra.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Keppra ',' Keppra 500MG c/60 tabs '
,'1150.00',1,'UCB  ','2022/09/30','Keppra.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Micromycin','Micromicin cap 100MG caja c/10 '
,'262.00',1,'GLAXO  ','2022/08/31','Micromycin.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Gel moco de gorila',' Gel moco de gorila rocker 280gm  '
,'19.00',1,' NATTURA ','2025/01/30','Gel moco de gorila.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Pemprocilina','Pemprocilina susp iny 400000  '
,'46.00',1,' RECKBRIS ','2022/11/30','Pemprocilina.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Plavix',' Plavix 75MG 28 grageas  '
,'500.00',1,' SANOFI ','2022/09/30','Plavix.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Punky junky',' Punky junky blanco 200G NVO Cod'
,'16.00',1,'NATTURA  ','2024/12/30','Punky junky.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Punky junky ','Punky junky gel wasx natural 270G '
,'22.00',1,' NATTURA ','2025/02/28','Punky junky.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Tempra infantil ',' Tempra infantil mast 80MG c/30 tam '
,'64.00',1,'RECKBRIS  ','2022/11/30','Tempra infantil.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Toallitas desinfectantes ',' Toallitas desinfectantes mediclean 48s'
,'55.00',1,' MEDICLEAN ','2021/10/30','toallas mediclean.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Toallitas desinfectantes ','Toallitas desinfectantes mediclean 16s  '
,'22.00',1,'MEDICLEAN','2021/10/30','toallas mediclean.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vertisal ',' Vertisal susp 125MG FCO c/180ML '
,'98.00',1,' SILANES ','2021/01/10','Vertisal.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vertisal ','Vertisal susp 250MG FCO c/180ML '
,'140.00',1,' SILANES ','2021/01/10','Vertisal.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Zovirax',' zovirax dispersable tab disp 200MG caja c/25 '
,'285.00',1,'CLAXO  ','2022/02/28','Zovirax.png');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Acanol ',' Acanol 2MG 12tabletas'
,'85.00',1,' SANOFI ','2022/02/15','Acanol.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Agglad ','Agglad ofteno  '
,'480.00',1,' SOPHIA ','2021/01/10','Agglad.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Agrifen','  Agrifen 10 tabletas'
,'14.00',1,'MDPHARMA  ','2021/09/30','Agrifen.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Adactone ','  Adactone 100MG 30 tabletas  '
,'700.00',1,'PFIZER  ','2022/02/28','Adactone.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Alevian ','Alevian dio 10MG/300 16 tabletas   '
,'310.00',1,'TAKEDA  ','2022/03/31','Alevian.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Alliviax',' Alliviax 550MG c/10 tabletas'
,'66.00',1,'GENNOMA  ','2023/11/30','Alliviax.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Altruline ','Altruline 50MG tab c/14 '
,'600.00',1,'PFIZER  ','2023/09/30','Altruline.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Amikayect','Amikayect iny 500MG c/1 jeringa c/2ml'
,'190.00',1,' GROSSMAN ','2022/11/30','Amikayect.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Amk','Amk 500Mg sol iny c/1 AMP  '
,'26.00',1,' PISA ','2024/02/29','Amk.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Amobay',' Amobay susp 250MG/5ml '
,'75.00',1,' BAYER ','2021/11/30','Amobay.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Amoxil ','Amoxil  500MG c/12 cap'
,'65.00',1,' GLAXO ',' 2022/01/31','amoxil.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Amoxivet ',' Amoxivet 500MG c/12 cap Amoxicilina '
,'65.00',1,' VALEANT ','2022/03/31','amoxivet.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Amoxivet','Amoxivet susp 250MG caja c/pvo p/75ML  '
,'56.00',1,' VALEANT ','2022/03/31','amoxivet.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Analgen ',' Analgen 220MG 20tabs  '
,'60.00',1,'  LIMONT ','2022/03/31','Analgen.png');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Analgen ','Analgen gel caja c/tubo c/30G'
,'58.00',1,'  LIMONT ','2023/01/31','Analgen.png');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Angeliq',' Angeliq 1MG/2MG C/28comp '
,'510.00',1,' BAYER ','2023/01/31','Angeliq.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Aprovasc ',' Aprovasc 150/5 MG Tabsc/28 '
,'700.00',1,' SANOFI ','2023/04/30','Aprovasc.jfif');

INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Aquasol',' Aquasol AD c/10 cap-Ergocalciferol '
,'132.00',1,'GROSSMAN  ','2022/04/30','Aquasol.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Argentafil ',' Argentafil '
,'270.00',1,' GROSSMAN ','2022/10/30','Argentafil.jfif');


INSERT INTO PRODUCTO 
(nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES (' Arluy ',' Arluy 200MG 30 capsulas  '
,'488.00',1,'  ASOFARMA','2022/05/31','Arluy.jfif');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Sil-Norboal','Tabletas 500/5 miligramos caja con 40','215.00',1,'SILANES','2022/06/30','sil-norboral.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Soldrin','Solucion oftalmica de 10 mililitros','43.00',1,'PISA','2021/10/31','soldrin solucion oftalmica.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Sophixin DX','Solucion de gotas de 5 mililitros','425.00',1,'SOPHIA','2021/10/31','sophixin dx.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Sophixin Oftaminico','0.3% 5 mililitros','345.00',1,'SOPHIA','2022/01/31','sophixin  ofteno.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Seterimar Infantil','Para mayores de 3 años de 50 mililitros','110.00',1,'FUMOUZE','2022/11/30','sterimar infantil mas 3 años.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Supositorios Senosian','adulto caja con 20','48.00',1,'SENOSIAN','2023/03/31','supositorios senosiain adulto.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Supositorios Senosian','bebe caja con 10','35.00',1,'SENOSIAN','2023/04/30','supositorios senosiain bebe.jpeg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Supra Tabletas','tabletas de 4 miligramos caja con 30','247.00',1,'GROSSMAN','2022/05/31','supra4mg30tab.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Synalar simple','1 cma 0.01% 40 gramos','147.00',1,'PRODUCTOS','2022/05/30','synalar simple 1.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Syncol max','Patillas caja de 12','70.00',1,'SANFER','2022/03/31','sycol nax tabletas c12.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Syncol Pastillas','Patillas con 24 comp','70.00',1,'SANFER','2022/05/31','sycol  pastillas con.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tafirol flex','Tabletas con caja de 30','450.00',1,'ASOFARMA','2022/01/30','tafirol flex.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tavor','30 Tabletas con 5 miligramos','384.00',1,'ASOFARMA','2021/11/30','tavor 30 tabs.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tavor CR','CR 10 miligramos','330.00',1,'ASOFARMA','2022/02/28','tavor cr.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tempra','500 miligramos caja con 20 Tabletas','62.00',1,'RECKBRIS','2023/05/30','tempra 500 20 tabletas.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tempra Capsulas','Capsulas 500 miligramos caja con 10','35.00',1,'RECKBRIS','2023/02/28','tempra caps 500 mg.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tempra Forte','Caja con 24 Tabletas','79.00',1,'RECKBRIS','2023/05/31','tempra forte.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tempra Gotas','30 mililitros','90.00',1,'RECKBRIS','2023/04/30','tempra gotas.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tempra Jarabe','120 mililitros','104.00',1,'RECKBRIS','2023/07/31','tempra jarabe.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tiaminal B12','50,000 inyecciones frasco de ampoyetas caja con 10 mililitros y 5jeringas','230.00',1,'SILANES','2022/01/31','tiaminal b12 50,000.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tiaminal B12 Trivalente Ampoyetas','inyecciones caja con 3 ampoyetas caja con 2 mililitros y 3 jerengias','201.00',1,'SILANES','2022/02/28','tiaminal trivalente ap.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tiaminal B12 Trivalente Capsulas','Caja con 30','200.00',1,'SILANES','2022/04/30','tiamial b12 trivalente.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Trayenta','5 miligramos tabletas caja con 30','700.00',1,'LILLY','2022/08/31','trayent 5ng tabletas.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Trazidex','Unguento 3.5 gramos','300.00',1,'SOPHIA','2022/04/30','trazidex unguento.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Trazil','Solucion Oftalminica 15 mililitros','210.00',1,'SOPHIA','2021/08/31','trazil solucion oftalmica.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Treda Suspencion','Suspencion con caja de 75 mililitros','100.00',1,'SANFER','2022/02/28','treda susp 75.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Treda Tabletas','tabletas con caja 20','110.00',1,'SANFER','2021/12/31','trada tabletas 20.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Treda Tabletas','tabletas con caja 20 + 10','120.00',1,'SANFER','2022/02/28','trada tabletas 20+10.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tukol D jarabe adulto','125 mililitros','68.00',1,'GENOMALAB','2021/10/31','tuku d  adulto.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tusigen NF jarabe adulto','225/225 miligramos caja con frasco con 150 mililitros','48.00',1,'LIOMONT','2021/12/31','tusigen nf.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Tusigen NF jarabe infantil','150/113 miligramos caja con frasco con 150 mililitros','48.00',1,'LIOMONT','2021/11/30','tusigen-infantil2.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('ULPAX','30 miligramos 14 capsulas','400.00',1,'HORMONA PN','2022/02/28','ulpax 30 mg 14 capsulas.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('ULPAX','30 miligramos 7 capsulas','232.00',1,'HORMONA PN','2021/08/31','ulpax 30 mg 7 capsulas.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Uniferfol','36 miligramos/800 MCG caja con 30','274.00',1,'GROSSMAN','2022/02/28','uniferon cap 36 mg 800 mcg.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vartalon Compuesto','caja con 30 Sobres','850.00',1,'ASOFARMA','2022/04/30','vartalon campuesto.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Ventolin Aerosol','100 MCG caja con frasco con 200 Dosis','329.00',1,'GLAXO','2022/04/30','ventolin aerosol.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vibramicina','100 miligramos caja con 10 capsulas','391.00',1,'PFIZER','2022/06/30','vibramicina.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vick 44 jarabe adulto','120 mililitros','82.00',1,'PROCTER AN','2022/04/30','vick 44 jarabe aduto.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vick inalador','caja con 12','510.00',1,'PROCTER AN','2022/02/28','vick inalkador.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vick vaporub','REG UNG 100 gramos','109.00',1,'PROCTER AN','2022/06/30','vick vaporub 1.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vick vaporub tarro','50 gramos','58.00',1,'PROCTER AN','2022/06/30','vick vaporub tarro 50 gr.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vilona','CMA 7.5% caja con tubo caja 5 gramos','150.00',1,'GROSSMAN','2022/12/30','vilona cma.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vimpat','100 miligramos caja con 28 CPR-Lacosamida','800.00',1,'UCB','2023/01/31','vimpat 100mg.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Virazide CMA','7.5% Caja con tubo caja de 5 gramos','152.00',1,'GROSSMAN','2021/11/30','virazide cma 7.5 caja ctubo.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Virazide Solucion','100 miligramos caja con frasco caja 120 mililitros','334.00',1,'GROSSMAN','2024/11/30','virazide sol  100ng caja fco.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Virazide Solucion Gotas Ped','40 miligramos cajas de 15 miligramos','86.00',1,'GROSSMAN','2024/11/30','virazide sol  gotas ped.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Virlix','10 miligramos 10 tabletas','217.00',1,'UCB','2024/04/04','virlix 10 mg 10 tabletas.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Virlix Tabletas','10 miligramos caja con 20 de tabletas','280.00',1,'UCB','2024/02/28','virlix tabletas 10 mg  c20.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Visannette','2 miligramos caja con 28 de tabletas','698.00',1,'BAYER','2022/05/31','Bayer_Visannette.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vitacila unguento','16 miligramos','17.00',1,'INTER DE CON','2022/03/31','vitacolina unguento 16 gr.jpg');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Vitacila unguento','28 miligramos','29.00',1,'INTER DE CON','2022/06/30','vitacolina unguento 28 gr.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Xarelto','15 miligramos caja con 28 CPR','1300.00',1,'BAYER','2022/04/30','xarelto 15 mg.png');

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,laboratorio,caducidad,rutimapro)
VALUES ('Xarelto','20 miligramos caja con 28','1300.00',1,'BAYER','2022/04/30','xarelto 20 mg.jpg');