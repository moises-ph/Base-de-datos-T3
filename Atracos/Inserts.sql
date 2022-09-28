use bancos;

insert Banco(id_banco, Domicilio) values( 1, "Banco Bogota" );
insert Banco(id_banco, Domicilio) values( 2, "Banco Occidente" );
insert Banco(id_banco, Domicilio) values( 3, "Banco Popular" );
insert Banco(id_banco, Domicilio) values( 4, "Banco Caja social" );
insert Banco(id_banco, Domicilio) values( 5, "Banco De la mujer" );
insert Banco(id_banco, Domicilio) values( 6, "Banco Agrario" );
insert Banco(id_banco, Domicilio) values( 7, "Banco Pichincha " );
insert Banco(id_banco, Domicilio) values( 8, "Bancolombia" );
insert Banco(id_banco, Domicilio) values( 9, "Banco Av Villas" );
insert Banco(id_banco, Domicilio) values( 10, "Banco Davienda" );

insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 1, 1, "Av bolivar", 8 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 2, 2, "Av Centenario", 10 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 3, 3, "Calle 50", 7 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 4, 4, "Calle 19", 15 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 5, 5, "Plaza bolivar Esquina", 20 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 6, 6, "calle 13 esquina", 30 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 7, 7, "calle 18 centro", 40 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 8, 8, "Calle 17 esquina", 50 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 9, 9, "Av fundadores", 14 );
insert sucursales(codigo_sucursal, id_banco, direccion_sucursal,empleados) values( 10, 10, "calle 16 esquina", 30 );

insert vigilantes(id_vigilante) values(1);
insert vigilantes(id_vigilante) values(2);
insert vigilantes(id_vigilante) values(3);
insert vigilantes(id_vigilante) values(4);
insert vigilantes(id_vigilante) values(5);
insert vigilantes(id_vigilante) values(6);
insert vigilantes(id_vigilante) values(7);
insert vigilantes(id_vigilante) values(8);
insert vigilantes(id_vigilante) values(9);
insert vigilantes(id_vigilante) values(10);

/* update nombre vigilantes */
update vigilantes set nombre_vigilante = "Pepe" where id_vigilante = 1;
update vigilantes set nombre_vigilante = "Jose" where id_vigilante = 2;
update vigilantes set nombre_vigilante = "Medina" where id_vigilante = 3;
update vigilantes set nombre_vigilante = "Daniel" where id_vigilante = 4;
update vigilantes set nombre_vigilante = "Julio" where id_vigilante = 5;
update vigilantes set nombre_vigilante = "Oscar" where id_vigilante = 6;
update vigilantes set nombre_vigilante = "Epifanio" where id_vigilante = 7;
update vigilantes set nombre_vigilante = "Cristian" where id_vigilante = 8;
update vigilantes set nombre_vigilante = "Nicolas" where id_vigilante = 9;
update vigilantes set nombre_vigilante = "Sergio" where id_vigilante = 10;


insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1243, 1, 1, "2022/08/01", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1244, 2, 2, "2022/10/01", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1245, 3, 3, "2022/01/01", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1246, 4, 4, "2022/02/01", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1247, 5, 5, "2022/03/01", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1248, 6, 6, "2022/01/04", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1249, 7, 7, "2022/04/11", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1240, 8, 8, "2022/04/04", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1222, 9, 9, "2022/05/01", true );
insert contratos(codigo_contrato, codigo_sucursal, id_vigilante, fecha_contrato, porta_arma) values( 1211, 10, 10, "2022/07/01", true );

insert Bandas(id_banda, Nombre_banda, Numero_integrantes) values ( 1, "Los Zetas", 50);
insert Bandas(id_banda, Nombre_banda, Numero_integrantes) values ( 2, "Cruz Azul", 10);
insert Bandas(id_banda, Nombre_banda, Numero_integrantes) values ( 3, "El cartel de los sapos", 100);
insert Bandas(id_banda, Nombre_banda, Numero_integrantes) values ( 4, "El cartel de Sinaloa", 50);

insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1401, "El Chapo Guzmán", 4);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1402, "Pablo Escobar", 2);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1403, "Obama", null);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1404, "Alcapone", null);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1405, "Vladhimir Putin", 3);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1406, "Kim Jong-Un", 2);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1407, "Kanye West", 3);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1408, "Jefrey Eipstein", 2);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1409, "Kevin Spacey", 1);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1410, "Garavito", 1);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1411, "Doom Slayer", 2);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1412, "Juanito Alimaña", 4);
insert Atracadores(id_atracador, Nombre_completo, id_banda) values (1413, "Rasmus Lerdorf", 2);

insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (401, 1, 1401, "2022-01-01");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (402, 2, 1402, "1985-12-28");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (403, 3, 1403, "1985-11-28");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (404, 4, 1411, "1993-10-12");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (405, 5, 1404, "1927-01-25");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (406, 6, 1405, "1991-08-21");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (407, 7, 1406, "2009-01-08");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (408, 8, 1407, "2022-02-04");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (409, 9, 1408, "2008-06-30");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (410, 10, 1409, "1990-07-26");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (411, 3, 1410, "1990-01-25");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (412, 5, 1412, "1983-09-30");
insert delito (id_delito, codigo_sucursal, id_atracador, fecha_atraco) values (413, 8, 1413, "1994-04-20");

insert juicio(id_juicio, id_delito, juez, condena) values (201, 401, "Diego Marin", 5);
insert juicio(id_juicio, id_delito, juez, condena) values (202, 402, "Diego Marin", 2);
insert juicio(id_juicio, id_delito, juez, condena) values (203, 403, "Diego Marin", null);
insert juicio(id_juicio, id_delito, juez, condena) values (204, 404, "Diego Marin", null);
insert juicio(id_juicio, id_delito, juez, condena) values (205, 405, "Juliana Cardenas", 10);
insert juicio(id_juicio, id_delito, juez, condena) values (206, 406, "Juliana Cardenas", 10);
insert juicio(id_juicio, id_delito, juez, condena) values (207, 407, "Diego Marin", 2);
insert juicio(id_juicio, id_delito, juez, condena) values (208, 408, "Juliana Cardenas", 1);
insert juicio(id_juicio, id_delito, juez, condena) values (209, 409, "Diego Marin", 5);
insert juicio(id_juicio, id_delito, juez, condena) values (210, 410, "Diego Marin", 7);
insert juicio(id_juicio, id_delito, juez, condena) values (211, 411, "Gustavo Moreno", null);
insert juicio(id_juicio, id_delito, juez, condena) values (212, 412, "Gustavo Moreno", 5);
insert juicio(id_juicio, id_delito, juez, condena) values (213, 413, "Juliana Cardenas", null);






