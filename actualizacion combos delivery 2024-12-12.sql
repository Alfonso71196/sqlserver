
DECLARE @zona VARCHAR(20);
SET @zona=(SELECT direccion1 FROM econfig WHERE direccion1<>'NULL')

IF @zona='A'
BEGIN
	-- DELIVERY 2 PASTES + REF       
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '80' THEN 0
			WHEN familia = 'PAQUETE01' AND IdCombo = '80' THEN 12.82051282
			ELSE descuento
		END
		WHERE IdCombo = '80' AND familia IN ('PASTES','PAQUETE01');

	-- DELIVERY 12 PASTES + CAJA     
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '81' THEN 34.21052632
			WHEN familia = 'CAJA' AND IdCombo = '81' THEN 100
			ELSE descuento
		END
		WHERE IdCombo = '81' AND familia IN ('PASTES','CAJA');
    --borra combosEspecial 
        DELETE FROM combosEspecial WHERE idcombo='80'
        DELETE FROM combosEspecial where idcombo='81'
END

IF @zona='B'
BEGIN
	-- DELIVERY 2 PASTES + REF       
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '80' THEN 0
			WHEN familia = 'PAQUETE01' AND IdCombo = '80' THEN 6.25
			ELSE descuento
		END
		WHERE IdCombo = '80' AND familia IN ('PASTES','PAQUETE01');

	-- DELIVERY 12 PASTES + CAJA     
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '81' THEN 44.68085106
			WHEN familia = 'CAJA' AND IdCombo = '81' THEN 100
			ELSE descuento
		END
		WHERE IdCombo = '81' AND familia IN ('PASTES','CAJA');
    -- borra combosEspecial 
        DELETE FROM combosEspecial WHERE idcombo='80'
        DELETE FROM combosEspecial where idcombo='81'
END

IF @zona='C'
BEGIN
	-- DELIVERY 2 PASTES + REF       
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '80' THEN 0
			WHEN familia = 'PAQUETE01' AND IdCombo = '80' THEN 6.25
			ELSE descuento
		END
		WHERE IdCombo = '80' AND familia IN ('PASTES','PAQUETE01');

	-- DELIVERY 12 PASTES + CAJA     
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '81' THEN 44.68085106
			WHEN familia = 'CAJA' AND IdCombo = '81' THEN 100
			ELSE descuento
		END
		WHERE IdCombo = '81' AND familia IN ('PASTES','CAJA');
    -- borra combosEspecial 
        DELETE FROM combosEspecial WHERE idcombo='80'
        DELETE FROM combosEspecial where idcombo='81'
END

IF @zona='D'
BEGIN
	-- DELIVERY 2 PASTES + REF       
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '80' THEN 0
			WHEN familia = 'PAQUETE01' AND IdCombo = '80' THEN 4.081632653
			ELSE descuento
		END
		WHERE IdCombo = '80' AND familia IN ('PASTES','PAQUETE01');

	-- DELIVERY 12 PASTES + CAJA     
		UPDATE combosdet
		SET descuento = CASE 
			WHEN familia = 'PASTES' AND IdCombo = '81' THEN 22.44897959
			WHEN familia = 'CAJA' AND IdCombo = '81' THEN 100
			ELSE descuento
		END
		WHERE IdCombo = '81' AND familia IN ('PASTES','CAJA');
    -- borra combosEspecial 
        DELETE FROM combosEspecial WHERE idcombo='80'
        DELETE FROM combosEspecial where idcombo='81'
END