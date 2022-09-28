use bancos;

select id_atracador from atracadores;

SELECT juez, Nombre_completo from juicio, atracadores inner join delito on atracadores.id_atracador = delito.id_atracador where juicio.id_delito = delito.id_delito;

SELECT Nombre_completo, Nombre_Banda from atracadores inner join bandas on atracadores.id_banda = bandas.id_banda;

SELECT Nombre_completo as Atracador, Domicilio as Banco, fecha_atraco as Fecha from banco, sucursales, atracadores inner join delito on delito.id_atracador = atracadores.id_atracador where delito.codigo_sucursal = sucursales.codigo_sucursal and sucursales.id_banco = banco.id_banco;

SELECT nombre_vigilante as Nombre, fecha_contrato as Fecha, porta_arma as Arma from vigilantes inner join contratos on vigilantes.id_vigilante = contratos.id_vigilante;