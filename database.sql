DROP DATABASE IF EXISTS farmacia;
CREATE DATABASE IF NOT EXISTS farmacia DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE farmacia;

CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro numeric(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Aguja eclipse','Marca bd vacutainer verde con 48 pz','134.99',1,'aguja.jpg')
,('Careta con lente','Ofrece un buen ajuste para niños y adultos','40.00',1,'careta.jpg')
,('Enjuague bucal','Enj bucal butler gum paroex s/alc 300 ml bot 2289','175.00',1,'butler.jpg')
,('Caladryl clear','Es un anestésico que alivia el dolor por quemaduras','164.99',1,'clear.jpg')
,('Cubrebocas KF94','Con diseño hipoalergénico suave y comodo','19.90',1,'cubreboca.jpg')
,('Ocurelif gotas','Alivio para el enrojecimiento e irritación de los ojos','50.00',1,'ocurelif.jpg')
,('One touch select plus','Tiras reactivas 25 unidades','231.90',1,'one.jpg')
,('Essential quercetina','Compuesto abundante en muchos alimentos','285.00',1,'quercetina.jpg');

CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario','admin','correo@example.com','123456',1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
alter table PEDIDO add token varchar(30) null;