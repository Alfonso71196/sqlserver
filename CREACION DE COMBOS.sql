-- ============================
-- CREACIÓN DE COMBOS
-- ============================

-- Declaración de variables
DECLARE @id_combo           VARCHAR(10);
DECLARE @nom_combo          VARCHAR(50);
DECLARE @fecini             VARCHAR(10);
DECLARE @fecfin             VARCHAR(10);
DECLARE @horain             TIME;
DECLARE @horafin            TIME;
DECLARE @cliente            VARCHAR(50);
DECLARE @cant_paste         INT;
DECLARE @cant_complemento   INT;
DECLARE @descuento1         FLOAT;
DECLARE @descuento2         FLOAT;

-- Especial
DECLARE @de1                FLOAT;
DECLARE @de2                FLOAT;
DECLARE @de3                FLOAT;

-- Asignación de valores
SET @id_combo         = '47';
SET @nom_combo        = 'COMBO REPSOL';
SET @fecini           = '20250526';
SET @fecfin           = '20250831';
SET @horain           = '00:00:00';
SET @horafin          = '11:59:59';
SET @cant_paste       = 2;
SET @descuento1       = 0;
SET @cant_complemento = 1;
SET @descuento2       = 0;

-- Descuentos especiales
SET @de1 = 62.85714286; -- Refresco
SET @de2 = 70.45454545; -- Café
SET @de3 = 60.60606061; -- Agua

-- Cliente (modificar si aplica distinto a SYS)
SET @cliente = '';


/* 
-- ============================
-- VERIFICAR SI EXISTEN REGISTROS
-- ============================

SELECT * FROM combos WHERE idcombo = '47';
SELECT * FROM combosdet WHERE idcombo = '47';
SELECT * FROM combosEspecial WHERE idcombo = '47';
SELECT * FROM combosArticuloExento WHERE idcombo = '47';

-- ============================
-- BORRAR REGISTROS EXISTENTES
-- ============================

DELETE FROM combos WHERE idcombo = '47';
DELETE FROM combosdet WHERE idcombo = '47';
DELETE FROM combosEspecial WHERE idcombo = '47';
DELETE FROM combosArticuloExento WHERE idcombo = '47';
*/


-- ============================
-- CREAR CABECERA DEL COMBO
-- ============================
INSERT INTO combos (
    idcombo, Descrip, precio, FecIni, FecFin, HoraIni, HoraFin,
    CantidadRegalo, DescuentoRegalo, Usuario, UsuFecha, UsuHora,
    SubFamilia, CantFijaUnSabor, cliente
)
SELECT 
    idcombo           = @id_combo,
    Descrip           = @nom_combo,
    precio,
    FecIni            = @fecini,
    FecFin            = @fecfin,
    HoraIni           = @horain,
    HoraFin           = @horafin,
    CantidadRegalo,
    DescuentoRegalo,
    Usuario,
    UsuFecha,
    UsuHora,
    SubFamilia,
    CantFijaUnSabor,
    cliente           = @cliente
FROM combos
WHERE idcombo = '53';


-- ============================
-- AGREGAR PRODUCTOS AL COMBO
-- ============================

-- Producto principal (paste)
INSERT INTO combosdet (
    idcombo, familia, cantidad, descuento, subfamilia
)
SELECT TOP 1
    idcombo    = @id_combo,
    familia,
    cantidad   = @cant_paste,
    descuento  = @descuento1,
    subfamilia
FROM prods
WHERE linea = '01' AND articulo = '0101';

-- Complemento (ej. bebida)
INSERT INTO combosdet (
    idcombo, familia, cantidad, descuento, subfamilia
)
SELECT TOP 1
    idcombo    = @id_combo,
    familia,
    cantidad   = @cant_complemento,
    descuento  = @descuento2,
    subfamilia
FROM prods
WHERE linea = '07' AND articulo = '0702';


-- ============================
-- AGREGAR PRODUCTOS ESPECIALES
-- ============================
INSERT INTO combosEspecial (
    idCombo, articulo, descrip, descuento, cantidad, familia, subFamilia
)
SELECT 
    idcombo  = @id_combo,
    articulo,
    descrip,
    descuento = CASE
        WHEN articulo IN (
            SELECT articulo FROM prods 
            WHERE linea = '04' AND bloqueado = '0' AND impuesto <> 'SYS'
        ) THEN @de1
        WHEN articulo = '0702' THEN @de2
        WHEN articulo IN (
            SELECT articulo FROM prods 
            WHERE linea = '10' AND bloqueado = '0'
        ) THEN @de3
        ELSE 0
    END,
    cantidad = @cant_complemento,
    familia,
    subfamilia
FROM prods
WHERE familia = 'PAQUETE01' AND bloqueado = 0;


/*
-- ============================
-- AGREGAR ARTÍCULOS EXENTOS (SI APLICA)
-- ============================

-- SELECT * FROM prods WHERE familia = 'PAQUETE02' AND articulo <> '0702';

INSERT INTO combosArticuloExento (
    idCombo, articulo, descrip
)
SELECT 
    idcombo  = '47',
    articulo,
    descrip
FROM prods
WHERE familia = 'PAQUETE01' AND articulo <> '0702';
*/
