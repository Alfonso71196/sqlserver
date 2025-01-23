DECLARE @zona VARCHAR(20);
DECLARE @cliente VARCHAR(20);
DECLARE @p1 FLOAT,@p2 FLOAT,@p3 FLOAT,@p4 FLOAT,@p5 FLOAT

SET @zona = (SELECT direccion1 FROM econfig WHERE direccion1 IS NOT NULL);
SET @cliente = (SELECT cliente FROM clients WHERE cliente = 'DELIVERY');

-- Verificación de la zona
IF @zona = 'A'
BEGIN
    -- Verificación si el cliente es DELIVERY
    IF @cliente = 'DELIVERY'
    BEGIN
		SET @p1 = ROUND((38/1.16),6)
		SET @p2 = ROUND((39/1.16),6)
		SET @p3 = 21
		SET @p4 = ROUND((39/1.16),6)
		SET @p5 = ROUND((105/1.16),6)
	END
END

-- Verificación de la zona
IF @zona = 'B'
BEGIN
    -- Verificación si el cliente es DELIVERY
    IF @cliente = 'DELIVERY'
    BEGIN
		SET @p1 = ROUND((47/1.16),6)
		SET @p2 = ROUND((48/1.16),6)
		SET @p3 = 24
		SET @p4 = ROUND((48/1.16),6)
		SET @p5 = ROUND((119/1.16),6)
	END
END

-- Verificación de la zona
IF @zona = 'C'
BEGIN
    -- Verificación si el cliente es DELIVERY
    IF @cliente = 'DELIVERY'
    BEGIN
		SET @p1 = ROUND((47/1.16),6)
		SET @p2 = ROUND((48/1.16),6)
		SET @p3 = 24
		SET @p4 = ROUND((48/1.16),6)
		SET @p5 = ROUND((119/1.16),6)
	END
END

-- Verificación de la zona
IF @zona = 'D'
BEGIN
    -- Verificación si el cliente es DELIVERY
    IF @cliente = 'DELIVERY'
    BEGIN
		SET @p1 = ROUND((49/1.16),6)
		SET @p2 = ROUND((49/1.16),6)
		SET @p3 = 24
		SET @p4 = ROUND((49/1.16),6)
		SET @p5 = ROUND((119/1.16),6)
	END
END

-- Asignacion de precios
UPDATE prods
SET precio5 = CASE
                 WHEN linea = '01' THEN @p1 -- paste
                 WHEN linea = '04' AND DESCRIP NOT LIKE ('%400%') AND DESCRIP NOT LIKE ('%355%') AND impuesto <>'SYS' THEN @p2 -- refresco
                 WHEN linea = '04' AND impuesto = 'SYS' THEN @p3 -- agua embotellada
                 WHEN linea = '05' THEN @p4 -- te frio
                 WHEN linea = '11' AND Bloqueado = '0' THEN @p5 -- cacahuate artesanal
                 ELSE precio1  -- Mantiene el valor actual
              END
WHERE linea IN ('01', '04', '05', '11');

