/* -----ACTUALIZACION PRECIOS 2024-12-12-------*/
-- NOTA: MODIFICAR ORDEN VARIABLES A ESTILO AICM 2025-01-23



DECLARE @zona VARCHAR(20);
DECLARE @p1 FLOAT,@p2 FLOAT,@p3 FLOAT,@p4 FLOAT,@p5 FLOAT,@p6 FLOAT,@p7 FLOAT,@p8 FLOAT,@p9 FLOAT,@p10 FLOAT,@p11 FLOAT,@p12 FLOAT,@p13 FLOAT,@p14 FLOAT;
SET @zona=(SELECT direccion1 FROM econfig)

IF @zona='A'
BEGIN
    SET @p1 = ROUND((27/1.16),6)
    SET @p2 = ROUND((28/1.16),6)
    SET @p3 = 15
    SET @p4 = ROUND((28/1.16),6)
    SET @p5 = ROUND((32/1.16),6)
    SET @p6 = ROUND((42/1.16),6)
    SET @p7 = ROUND((25/1.16),6)
    SET @p8 = ROUND((28/1.16),6)
    SET @p9 = ROUND((36/1.16),6)
    SET @p10 = ROUND((46/1.16),6)
    SET @p11 = ROUND((75/1.16),6)
    SET @p12 = ROUND((47/1.16),6)
    SET @p13 = ROUND((17/1.16),6)
    SET @p14= @p6
END
IF @zona='B'
BEGIN
    SET @p1 = ROUND((33/1.16),6)
    SET @p2 = ROUND((34/1.16),6)
    SET @p3 = 17
    SET @p4 = ROUND((34/1.16),6)
    SET @p5 = ROUND((40/1.16),6)
    SET @p6 = ROUND((53/1.16),6)
    SET @p7 = ROUND((33/1.16),6)
    SET @p8 = ROUND((31/1.16),6)
    SET @p9 = ROUND((42/1.16),6)
    SET @p10 = ROUND((53/1.16),6)
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = ROUND((67/1.16),6)
    SET @p13 = ROUND((17/1.16),6)
    SET @p14= @p6
END
IF @zona='C'
BEGIN
    SET @p1 = ROUND((33/1.16),6)
    SET @p2 = ROUND((34/1.16),6)
    SET @p3 = 17
    SET @p4 = ROUND((34/1.16),6)
    SET @p5 = ROUND((40/1.16),6)
    SET @p6 = ROUND((53/1.16),6)
    SET @p7 = ROUND((33/1.16),6)
    SET @p8 = ROUND((31/1.16),6)
    SET @p9 = ROUND((42/1.16),6)
    SET @p10 = ROUND((53/1.16),6)
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = ROUND((67/1.16),6)
    SET @p13 = ROUND((17/1.16),6)
    SET @p14= @p6
END
IF @zona='D'
BEGIN
    SET @p1 = ROUND((35/1.16),6)
    SET @p2 = ROUND((35/1.16),6)
    SET @p3 = 17
    SET @p4 = ROUND((35/1.16),6)
    SET @p5 = ROUND((44/1.16),6)
    SET @p6 = ROUND((55/1.16),6)
    SET @p7 = ROUND((33/1.16),6)
    SET @p8 = ROUND((33/1.16),6)
    SET @p9 = ROUND((44/1.16),6)
    SET @p10 = ROUND((55/1.16),6)
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = 0
    SET @p13 = ROUND((22/1.16),6)
    SET @p14= @p6
END
IF @zona='E'
BEGIN
    SET @p1 = ROUND((35/1.16),6)
    SET @p2 = ROUND((35/1.16),6)
    SET @p3 = 17
    SET @p4 = ROUND((35/1.16),6)
    SET @p5 = ROUND((44/1.16),6)
    SET @p6 = ROUND((55/1.16),6)
    SET @p7 = ROUND((33/1.16),6)
    SET @p8 = ROUND((33/1.16),6)
    SET @p9 = ROUND((44/1.16),6)
    SET @p10 = ROUND((55/1.16),6)
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = 0
    SET @p13 = ROUND((22/1.16),6)
    SET @p14= @p6
END
--SE MANTIENE PRECIO
/*IF @zona='F'
BEGIN
    SET @p1 = ROUND((30/1.16),6)
    SET @p2 = ROUND((33/1.16),6)
    SET @p3 = 20
    SET @p4 = ROUND((35/1.16),6)
    SET @p5 = ROUND((37/1.16),6)
    SET @p6 = ROUND((48/1.16),6)
    SET @p7 = ROUND((30/1.16),6)
    SET @p8 = ROUND((28/1.16),6)
    SET @p9 = ROUND((38/1.16),6)
    SET @p10 = ROUND((48/1.16),6)
    SET @p11 = ROUND((82/1.16),6)
    SET @p12 = ROUND((61/1.16),6)
    SET @p13 = ROUND((15/1.16),6)
END*/
IF @zona='AIFA'
BEGIN
    SET @p1 = ROUND((35/1.16),6)
    SET @p2 = ROUND((35/1.16),6)
    SET @p3 = 25
    SET @p4 = ROUND((35/1.16),6)
    SET @p5 = ROUND((44/1.16),6)
    SET @p6 = ROUND((55/1.16),6)
    SET @p7 = ROUND((33/1.16),6)
    SET @p8 = ROUND((33/1.16),6)
    SET @p9 = ROUND((44/1.16),6)
    SET @p10 = ROUND((55/1.16),6)
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = 0
    SET @p13 = ROUND((22/1.16),6)
    SET @p14= @p6
END

IF @zona='TULUM'
BEGIN
    SET @p1 = ROUND((55/1.16),6)
    SET @p2 = ROUND((49/1.16),6)
    SET @p3 = 50
    SET @p4 = ROUND((49/1.16),6)
    SET @p5 = ROUND((72/1.16),6)
    SET @p6 = ROUND((83/1.16),6)
    SET @p7 = ROUND((60/1.16),6)
    SET @p8 = ROUND((61/1.16),6)
    SET @p9 = ROUND((72/1.16),6)
    SET @p10 = ROUND((83/1.16),6)
    SET @p11 = ROUND((115/1.16),6)
    SET @p12 = 0
    SET @p13 = ROUND((30/1.16),6)
    SET @p14= @p6
END

IF @zona='CONDESA'
BEGIN
    SET @p1 = ROUND((38/1.16),6)
    SET @p2 = ROUND((37/1.16),6)
    SET @p3 = 26
    SET @p4 = 0
    SET @p5 = ROUND((49/1.16),6)
    SET @p6 = ROUND((60/1.16),6)
    SET @p7 = ROUND((35/1.16),6)
    SET @p8 = 0
    SET @p9 = 0
    SET @p10 = 0
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = 0
    SET @p13 = ROUND((25/1.16),6)
    SET @p14= @p6

END


IF @zona='AICM'
BEGIN
    SET @p1 = ROUND((40/1.16),6)
    SET @p2 = 25
    SET @p3 = ROUND((35/1.16),6)
    SET @p4 = ROUND((33/1.16),6)
    SET @p5 = ROUND((35/1.16),6)
    SET @p6 = ROUND((44/1.16),6)
    SET @p7 = ROUND((55/1.16),6)
    SET @p8 = ROUND((33/1.16),6)
    SET @p9 = ROUND((44/1.16),6)
    SET @p10 = ROUND((55/1.16),6)
    SET @p11 = ROUND((85/1.16),6)
    SET @p12 = 0
    SET @p13 = ROUND((22/1.16),6)
    SET @p14 = @p7

END

UPDATE prods
SET precio1 = CASE
                 WHEN linea = '01' THEN @p1 -- paste
				 WHEN linea = '04' AND impuesto = 'SYS' THEN @p2 -- agua embotellada
                 WHEN linea = '04' AND DESCRIP NOT LIKE ('%400%') AND DESCRIP NOT LIKE ('%355%') AND impuesto <>'SYS' THEN @p3 -- refresco
				 WHEN linea = '10' AND Bloqueado = '0' THEN @p4 -- agua de sabor
                 WHEN linea = '05' THEN @p5 -- te frio
                 WHEN linea = '07' AND articulo IN('0701','0702') THEN @p6 -- cafe americano y expresso
                 WHEN linea = '07' AND articulo NOT IN('0701','0702') AND Bloqueado = '0' THEN @p7 -- bebidas calientes                 
                 WHEN linea = '15' AND articulo IN('100347','50582','50583','50584','50585','50586') THEN @p8 -- paletas de agua
                 WHEN linea = '15' AND articulo IN ('50589','50590','50591','50592','50593') THEN @p9 -- paletas de crema 
                 WHEN linea = '15' AND articulo IN ('50594','50595','50596','50599','50600') THEN @p10 -- paletas rellenas
                 WHEN linea = '11' AND Bloqueado = '0' THEN @p11 -- cacahuate artesanal
                 WHEN linea = '14' AND bloqueado = '0' THEN @p12 -- frappes / smoothies
                 WHEN linea = '50' AND articulo='5056' THEN @p13 -- caja pal camino
				 WHEN linea = '16' AND articulo='1601' THEN @p14  -- bebidas calientes (chocolate)
                 ELSE precio1  -- Mantiene el valor actual
              END
WHERE linea IN ('01', '04', '05', '07', '10', '15', '11', '14','50','16');


--Cambio de familia fuzte y jugos 
--SELECT familia,subfamilia,subfam1 FROM prods WHERE linea in('05','08')
--UPDATE prods SET familia='',subfamilia='OPCION1',subfam1='BEBIDAS' WHERE linea IN('05','08') AND bloqueado='0'