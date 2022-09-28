create database if not exists Bancos;
use Bancos;

create table Banco(
	id_banco int NOT NULL, /*Añadir Constraint Primary Key */
  Domicilio varchar(50) not null
);

create table Sucursales(
	codigo_sucursal int NOT NULL,
  id_banco int not null, /* Foreign Key */ 
  direccion_sucursal varchar(50) not null,
  empleados int not null
);

create table Contratos(
	codigo_contrato int not null, /* Primary Key */
  codigo_sucursal int not null,  /*FOREIGN KEY */
  id_vigilante int not null, /*FOREIGN KEY */
  fecha_contrato date not null,
  porta_arma BOOLEAN not null
);

create table Vigilantes(
  id_vigilante int not null /* Primary Key */
);

create table Delito(
  id_delito int not null, /* Primary key */
  codigo_sucursal int not null, /* FOREIGN KEY */
  id_atracador int NOT NULL, /* FOREIGN KEY */
  fecha_atraco date not null
);

create table Juicio(
  id_juicio int not null, /* PRIMARY KEY */
  id_delito int not null, /* FOREIGN KEY */
  juez VARCHAR(100) not null,
  condena int
);

create table Atracadores(
  id_atracador int not null, /* Primary key */
  Nombre_completo VARCHAR(100) not null,
  id_banda int /* Foreign key */
);

create table Bandas(
  id_banda int not null, /* PRIMARY KEY */
  Nombre_Banda VARCHAR(100) Not null,
  Numero_integrantes int not null
);

/* Constraints PRIMARY KEYS */

alter table Banco add CONSTRAINT pk_banco primary key Banco(id_banco);
alter table Sucursales add CONSTRAINT pk_sucursales primary key Sucursales(codigo_sucursal);
alter table Contratos add CONSTRAINT pk_contratos primary key Contratos(codigo_contrato);
alter table Vigilantes add CONSTRAINT pk_vigilantes primary key Vigilantes(id_vigilante);
alter table Delito add CONSTRAINT pk_delito primary key Delito(id_delito);
alter table Juicio add CONSTRAINT pk_juicio primary key Juicio(id_juicio);
alter table Atracadores add CONSTRAINT pk_atracadores primary key Atracadores(id_atracador);
alter table Bandas add CONSTRAINT pk_bandas primary key Bandas(id_banda);

/* Constraint FOREIGN KEYS */

alter table Sucursales add CONSTRAINT fk_sucursal_banco foreign key (id_banco) references Banco(id_banco);
alter table Contratos add CONSTRAINT fk_contratos_sucursal FOREIGN KEY (codigo_sucursal) references Sucursales(codigo_sucursal);
alter table Contratos add CONSTRAINT fk_contratos_vigilante FOREIGN KEY (id_vigilante) references Vigilantes(id_vigilante);
alter table Delito add CONSTRAINT fk_delito_sucursal FOREIGN KEY (codigo_sucursal) references Sucursales(codigo_sucursal);
alter table Delito add Constraint fk_delito_atracador FOREIGN KEY (id_atracador) references Atracadores(id_atracador);
alter table Juicio add CONSTRAINT fk_juicio_delito FOREIGN KEY (id_delito) references Delito(id_delito);
alter table Atracadores add CONSTRAINT fk_atracador_banda foreign key (id_banda) references Bandas(id_banda);

/* Tabla Vigilantes nombre */
alter table vigilantes add column Nombre_vigilante varchar(100);
