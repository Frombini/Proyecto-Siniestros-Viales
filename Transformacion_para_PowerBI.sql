use accidentes;
# lo primero es ver los datasets como quedaron y tambien ver que tipo de dato tienen y que nombre
select * from homicidios_hechos;
SET SQL_SAFE_UPDATES = 0;

# Vamos a realizar los cambios
ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `ID` `Id` VARCHAR(15) NOT NULL ,
CHANGE COLUMN `N_VICTIMAS` `NumeroVictimas` INT NULL DEFAULT NULL ,
CHANGE COLUMN `Dirección Normalizada` `DireccionNormalizada` TEXT NULL DEFAULT NULL ,
ADD PRIMARY KEY (`Id`);
# Vamos a cambiar de un campo solo para ver si hay un error saber en que columna esta el mismo
ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `FECHA` `Fecha` DATETIME NULL DEFAULT NULL ;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `AAAA` `Anio` INT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `MM` `Mes` INT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `DD` `Dia` INT NULL DEFAULT NULL ;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `HORA` `HoraMinSeg` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `HH` `Hora` INT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `LUGAR_DEL_HECHO` `LugarDelHecho` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `TIPO_DE_CALLE` `TipoDeCalle` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `COMUNA` `Comuna` INT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `XY (CABA)` `Xy` Text NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `pos x` `Longitud` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `pos y` `Latitud` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `PARTICIPANTES` `Participantes` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `VICTIMA` `Victima` TEXT NULL DEFAULT NULL;

ALTER TABLE `accidentes`.`homicidios_hechos` 
CHANGE COLUMN `ACUSADO` `Acusado` TEXT NULL DEFAULT NULL;

# Vamos a ver como quedo el Dataset con el cambio de tipo de datos y nombres normalizados
SELECT * FROM homicidios_hechos;
#--------------------------------------------------------------------------------------------------------------------
# Vamos a trabajar la tabla de victimas
SELECT * FROM homicidios_victimas;
SELECT COUNT(*) FROM homicidios_victimas;

# intentando cambiar el campo ID_hecho, me di cuenta que en esta segunda tabla, comprobe los duplicados,
# pero no los encontre, ahora que quiero poner como primary KEY el campo ID_hecho, me dice que hay valores repetidos
# vamos a tener que solucionar esto, para dejar las bases en forma correcta

# chequeamos si hay duplicados en los Ids
SELECT ID_hecho, COUNT(*) AS cantidad_duplicados
FROM homicidios_victimas
GROUP BY ID_hecho
HAVING COUNT(*) > 1;

# Tome la desicion de crear una nueva columna que diga directamente cuantos accidentados hubo, para poder
# borrar los duplicados y poder crear la primary key
# Creamos la nueva columna
ALTER TABLE homicidios_victimas ADD COLUMN NumeroMuertes INT DEFAULT 1;
# Ahora vamos a rellenar la nueva columna que tenemos  con los accidente que tienen mas de 1 una persona involucrada
UPDATE homicidios_victimas l
INNER JOIN (
    SELECT ID_hecho, COUNT(*) AS total_lesiones
    FROM homicidios_victimas
    GROUP BY ID_hecho
) subquery ON l.ID_hecho = subquery.ID_hecho
SET l.NumeroMuertes = subquery.total_lesiones;

# Borramos los IDs duplicados

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2016-0126'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0026'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2016-0041'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0035'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0036'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0050'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0108'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0112'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0126'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0153'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2018-0015'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2018-0026'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2018-0038'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2018-0085'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2018-0098'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2018-0128'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2019-0010'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2020-0038'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2020-0063'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2020-0077'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0035'
LIMIT 1;

DELETE FROM homicidios_victimas
WHERE ID_hecho = '2017-0050'
LIMIT 1;


# Vamos a trabajar la tabla de victimas
SELECT * FROM homicidios_victimas;
SELECT COUNT(*) FROM homicidios_victimas;
# chequeamos si hay duplicados en los Ids
SELECT ID_hecho, COUNT(*) AS cantidad_duplicados
FROM homicidios_victimas
GROUP BY ID_hecho
HAVING COUNT(*) > 1;
# Vemos que no hay mas duplicados, ahora si vamos a proceder a cambiar tipo de dato y nombre de las columnas

# Hacemos los cambios de tipo de dato y nombre de columna
ALTER TABLE `accidentes`.`homicidios_victimas` 
CHANGE COLUMN `ID_hecho` `Id` VARCHAR(15) NOT NULL ,
CHANGE COLUMN `FECHA` `Fecha` DATETIME NULL DEFAULT NULL ,
CHANGE COLUMN `AAAA` `Anio` INT NULL DEFAULT NULL ,
CHANGE COLUMN `MM` `Mes` INT NULL DEFAULT NULL ,
CHANGE COLUMN `DD` `Dia` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ROL` `Rol` TEXT NULL DEFAULT NULL ,
CHANGE COLUMN `VICTIMA` `Victima` TEXT NULL DEFAULT NULL ,
CHANGE COLUMN `SEXO` `Sexo` TEXT NULL DEFAULT NULL ,
CHANGE COLUMN `EDAD` `Edad` TEXT NULL DEFAULT NULL ,
CHANGE COLUMN `FECHA_FALLECIMIENTO` `FechaFallecimiento` TEXT NULL DEFAULT NULL ,
ADD PRIMARY KEY (`Id`);
;

# Probamos como nos quedo la tabla
SELECT * FROM homicidios_victimas;
SELECT COUNT(*) FROM homicidios_victimas;