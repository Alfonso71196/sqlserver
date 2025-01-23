---  MODIFICACION CONDESA 

-- Actualiza precio expresso doble 
SELECT * FROM prods WHERE articulo='0705'
UPDATE prods SET precio1= ROUND((60/1.16),6) WHERE articulo='0705'

-- Creacion de combo  -----------------

---------------> 
select * 
from combos
where idcombo='16'

--delete from combos where idcombo='16'

select *
from combosdet
where idcombo='16'
--delete from combosdet where idcombo='16'
select *
from combosArticuloEspecial
where idcombo='16'

select *
from combosArticuloExento
where idcombo='16'

-------------INSERTA EN COMBOS
insert into combos
    (idcombo,Descrip,precio,FecIni,FecFin,HoraIni,HoraFin,CantidadRegalo,DescuentoRegalo,Usuario,UsuFecha,UsuHora,SubFamilia,CantFijaUnSabor,cliente)
select idcombo='16', Descrip='2 PASTES + AGUA', precio, FecIni, FecFin, HoraIni, HoraFin, CantidadRegalo, DescuentoRegalo, Usuario, UsuFecha, UsuHora, SubFamilia, CantFijaUnSabor, cliente='QUANTUM'
from combos
where idcombo='10'

-------------INSERTA EN COMBOSDET
insert into combosdet
    (idcombo,familia,cantidad,descuento,subfamilia)
select top 1
    idcombo='16', familia, cantidad=2, descuento=0, subfamilia
from prods
where linea='01' and articulo='0101'

insert into combosdet
    (idcombo,familia,cantidad,descuento,subfamilia)
select top 1
    idcombo='16', familia, cantidad=1, descuento=100, subfamilia
from prods
where linea='10' and articulo='1001'

DECLARE @zona VARCHAR(20);
DECLARE @cliente VARCHAR(20);
DECLARE @p1 FLOAT,@p2 FLOAT,@p3 FLOAT,@p4 FLOAT,@p5 FLOAT, @p6 FLOAT, @p7 FLOAT,@p8 FLOAT, @p9 FLOAT;

SET @zona = (SELECT direccion1 FROM econfig WHERE direccion1 IS NOT NULL);
SET @cliente = (SELECT cliente FROM clients WHERE cliente = 'UBER');

-- Verificación de la zona
IF @zona = 'CONDESA'
BEGIN
    -- Verificación si el cliente es DELIVERY
    IF @cliente = 'UBER'
    BEGIN
		SET @p1 = ROUND((56/1.16),6)
		SET @p2 = ROUND((50/1.16),6)
		SET @p3 = 38
		SET @p4 = ROUND((50/1.16),6)
		SET @p5 = ROUND((71/1.16),6)
		SET @p6 =ROUND((90/1.16),6)
		SET @p7 =ROUND((125/1.16),6)
	END
END



-- Asignacion de precios
UPDATE prods
SET precio3 = CASE
                 WHEN linea = '01' THEN @p1 -- paste
                 WHEN linea = '04' AND impuesto <>'SYS'  THEN @p2 -- refresco
                 WHEN linea = '04' AND impuesto = 'SYS' THEN @p3 -- agua embotellada
				 WHEN linea = '10' AND Bloqueado='0' THEN @p4 -- agua sabor
				 WHEN linea = '07' AND articulo IN('0701','0702') THEN @p5 -- cafe americano y expresso
                 WHEN linea = '07' AND articulo NOT IN('0701','0702') AND Bloqueado = '0' THEN @p6 -- bebidas calientes
                 WHEN linea = '16' AND articulo='1601' THEN @p6  -- bebidas calientes (chocolate)
                 WHEN linea = '11' AND Bloqueado = '0' THEN @p7 -- cacahuate artesanal
                 ELSE precio1  -- Mantiene el valor actual
              END
WHERE linea IN ('01', '04', '11','10','07','16');



-- MODIFICACION CORDOBA

-- actualizacion precio agua 
SELECT * FROM prods WHERE linea='04' AND impuesto='SYS'
--600 ml
UPDATE prods SET precio1='20' WHERE linea='04' AND impuesto='SYS'
--1lt
UPDATE prods SET precio1='25' WHERE linea='04' AND articulo='80081'