
---ACTUALIZACION DE COMBOS 2024-12-12


DECLARE @zona VARCHAR(20);
SET @zona=(SELECT direccion1 FROM econfig WHERE direccion1<>'NULL')

IF @zona='A'
BEGIN
    ---------- ZONA A (OK) 

    -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
    --SELECT * FROM combos WHERE IdCombo='89'
    --SELECT * FROM combosEspecial WHERE IdCombo='89'
    

    UPDATE combosEspecial
    SET descuento = CASE 
        WHEN articulo = '0702' AND IdCombo = '89' THEN 31.25
        WHEN articulo = '1001' AND IdCombo = '89' THEN 12
        WHEN articulo = '1002' AND IdCombo = '89' THEN 12
        ELSE descuento
    END
    WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');

    -- paqueteko 2 (2 PASTES + REFRESCO)
    --SELECT * FROM combos WHERE IdCombo='88'
    --SELECT * FROM combosdet WHERE IdCombo='88'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
        WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 14.2857143
        ELSE descuento
    END
    WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


    -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
    --SELECT * FROM combos WHERE IdCombo='52'
    --SELECT * FROM combosdet WHERE IdCombo='52'
    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
        WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 19.047619
        ELSE descuento
    END
    WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


    -- paqueteko 4 (12 PASTES + CAJA)
    --SELECT * FROM combos WHERE IdCombo='46'
    --SELECT * FROM combosdet WHERE IdCombo='CAJA'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '46' THEN 29.6296296
        WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
        ELSE descuento
    END
    WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');


END

IF @zona='B'
BEGIN

    ----------- ZONA B (OK)


    -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
    --SELECT * FROM combos WHERE IdCombo='89'
    --SELECT * FROM combosEspecial WHERE IdCombo='89'

    UPDATE combosEspecial
    SET descuento = CASE 
        WHEN articulo = '0702' AND IdCombo = '89' THEN 25
        WHEN articulo = '1001' AND IdCombo = '89' THEN 9.09090909
        WHEN articulo = '1002' AND IdCombo = '89' THEN 9.09090909
        ELSE descuento
    END
    WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');



    -- paqueteko 2 (2 PASTES + REFRESCO)
    --SELECT * FROM combos WHERE IdCombo='88'
    --SELECT * FROM combosdet WHERE IdCombo='88'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
        WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 5.88235294
        ELSE descuento
    END
    WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


    -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
    --SELECT * FROM combos WHERE IdCombo='52'
    --SELECT * FROM combosdet WHERE IdCombo='52'
    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
        WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 15.0943396
        ELSE descuento
    END
    WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


    -- paqueteko 4 (12 PASTES + CAJA)
    --SELECT * FROM combos WHERE IdCombo='46'
    --SELECT * FROM combosdet WHERE IdCombo='CAJA'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '46' THEN 24.2424242
        WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
        ELSE descuento
    END
    WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');

    END


IF @zona='C'
    BEGIN
    ----------- C (OK)


    -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
    --SELECT * FROM combos WHERE IdCombo='89'
    --SELECT * FROM combosEspecial WHERE IdCombo='89'

    UPDATE combosEspecial
    SET descuento = CASE 
        WHEN articulo = '0702' AND IdCombo = '89' THEN 25
        WHEN articulo = '1001' AND IdCombo = '89' THEN 9.09090909
        WHEN articulo = '1002' AND IdCombo = '89' THEN 9.09090909
        ELSE descuento
    END
    WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');



    -- paqueteko 2 (2 PASTES + REFRESCO)
    --SELECT * FROM combos WHERE IdCombo='88'
    --SELECT * FROM combosdet WHERE IdCombo='88'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
        WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 5.88235294
        ELSE descuento
    END
    WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


    -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
    --SELECT * FROM combos WHERE IdCombo='52'
    --SELECT * FROM combosdet WHERE IdCombo='52'
    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
        WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 15.0943396
        ELSE descuento
    END
    WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


    -- paqueteko 4 (12 PASTES + CAJA)
    --SELECT * FROM combos WHERE IdCombo='46'
    --SELECT * FROM combosdet WHERE IdCombo='CAJA'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '46' THEN 24.2424242
        WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
        ELSE descuento
    END
    WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');
END

IF @zona='D'
    BEGIN
    ---------- ZONA D (OK) 
    
    -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
    --SELECT * FROM combos WHERE IdCombo='89'
    --SELECT * FROM combosEspecial WHERE IdCombo='89'

    UPDATE combosEspecial
    SET descuento = CASE 
        WHEN articulo = '0702' AND IdCombo = '89' THEN 31.8181818
        WHEN articulo = '1001' AND IdCombo = '89' THEN 9.09090909
        WHEN articulo = '1002' AND IdCombo = '89' THEN 9.09090909
        ELSE descuento
    END
    WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');
    
    
    -- paqueteko 2 (2 PASTES + REFRESCO)
    --SELECT * FROM combos WHERE IdCombo='88'
    --SELECT * FROM combosdet WHERE IdCombo='88'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
        WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 5.88235294
        ELSE descuento
    END
    WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


    -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
    --SELECT * FROM combos WHERE IdCombo='52'
    --SELECT * FROM combosdet WHERE IdCombo='52'
    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
        WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 14.5454545
        ELSE descuento
    END
    WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


    -- paqueteko 4 (12 PASTES + CAJA)
    --SELECT * FROM combos WHERE IdCombo='46'
    --SELECT * FROM combosdet WHERE IdCombo='CAJA'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '46' THEN 22.8571429
        WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
        ELSE descuento
    END
    WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');

END

IF @zona='E'
    BEGIN
    ---------- ZONA E (OK) 
    
    -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
    --SELECT * FROM combos WHERE IdCombo='89'
    --SELECT * FROM combosEspecial WHERE IdCombo='89'

    UPDATE combosEspecial
    SET descuento = CASE 
        WHEN articulo = '0702' AND IdCombo = '89' THEN 31.8181818
        WHEN articulo = '1001' AND IdCombo = '89' THEN 9.09090909
        WHEN articulo = '1002' AND IdCombo = '89' THEN 9.09090909
        ELSE descuento
    END
    WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');
    
    
    -- paqueteko 2 (2 PASTES + REFRESCO)
    --SELECT * FROM combos WHERE IdCombo='88'
    --SELECT * FROM combosdet WHERE IdCombo='88'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
        WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 5.88235294
        ELSE descuento
    END
    WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


    -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
    --SELECT * FROM combos WHERE IdCombo='52'
    --SELECT * FROM combosdet WHERE IdCombo='52'
    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
        WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 14.5454545
        ELSE descuento
    END
    WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


    -- paqueteko 4 (12 PASTES + CAJA)
    --SELECT * FROM combos WHERE IdCombo='46'
    --SELECT * FROM combosdet WHERE IdCombo='CAJA'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '46' THEN 22.8571429
        WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
        ELSE descuento
    END
    WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');
END
IF @zona='F'
    BEGIN
    ---------- ZONA F (OK) 
END

IF @zona='AIFA'
    BEGIN
    ---------- ZONA AIFA (OK) 
    


      -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
      --SELECT * FROM combos WHERE IdCombo='89'
      --SELECT * FROM combosEspecial WHERE IdCombo='89'

      UPDATE combosEspecial
      SET descuento = CASE 
          WHEN articulo = '0702' AND IdCombo = '89' THEN 29.5454545
          WHEN articulo = '1001' AND IdCombo = '89' THEN 6.06060606
          WHEN articulo = '1002' AND IdCombo = '89' THEN 6.06060606
          ELSE descuento
      END
      WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');



      -- paqueteko 2 (2 PASTES + REFRESCO)
      --SELECT * FROM combos WHERE IdCombo='88'
      --SELECT * FROM combosdet WHERE IdCombo='88'

      UPDATE combosdet
      SET descuento = CASE 
          WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
          WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 5.71428571
          ELSE descuento
      END
      WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


      -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
      --SELECT * FROM combos WHERE IdCombo='52'
      --SELECT * FROM combosdet WHERE IdCombo='52'
      UPDATE combosdet
      SET descuento = CASE 
          WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
          WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 14.5454545
          ELSE descuento
      END
      WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


      -- paqueteko 4 (12 PASTES + CAJA)
      --SELECT * FROM combos WHERE IdCombo='46'
      --SELECT * FROM combosdet WHERE IdCombo='CAJA'

      UPDATE combosdet
      SET descuento = CASE 
          WHEN familia = 'PASTES' AND IdCombo = '46' THEN 22.8571429
          WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
          ELSE descuento
      END
      WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');

      END

      IF @zona='TULUM'
          BEGIN
          ---------- ZONA TULUM (OK) 
      END

IF @zona='CONDESA'
          BEGIN
    ---------- ZONA TULUM (OK)
    -- paqueteko 1 (2 PASTES = AMERICANO/ AGUA)
    --SELECT * FROM combos WHERE IdCombo='89'
    --SELECT * FROM combosEspecial WHERE IdCombo='89'

    UPDATE combosEspecial
    SET descuento = CASE 
        WHEN articulo = '0702' AND IdCombo = '89' THEN 20.8333333
        WHEN articulo = '1001' AND IdCombo = '89' THEN 5
        WHEN articulo = '1002' AND IdCombo = '89' THEN 5
        ELSE descuento
    END
    WHERE IdCombo = '89' AND articulo IN ('0702', '1001', '1002');



    -- paqueteko 2 (2 PASTES + REFRESCO)
    --SELECT * FROM combos WHERE IdCombo='88'
    --SELECT * FROM combosdet WHERE IdCombo='88'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '88' THEN 0
        WHEN familia = 'PAQUETE01' AND IdCombo = '88' THEN 4.08163265
        ELSE descuento
    END
    WHERE IdCombo = '88' AND familia IN ('PASTES','PAQUETE01');


    -- paqueteko 3 (2 PASTES + CAFE(VARIOS)
    --SELECT * FROM combos WHERE IdCombo='52'
    --SELECT * FROM combosdet WHERE IdCombo='52'
    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '52' THEN 0
        WHEN familia = 'CAFEVARIOS' AND IdCombo = '52' THEN 9.63855422
        ELSE descuento
    END
    WHERE IdCombo = '52' AND familia IN ('PASTES','CAFEVARIOS');


    -- paqueteko 4 (12 PASTES + CAJA)
    --SELECT * FROM combos WHERE IdCombo='46'
    --SELECT * FROM combosdet WHERE IdCombo='CAJA'

    UPDATE combosdet
    SET descuento = CASE 
        WHEN familia = 'PASTES' AND IdCombo = '46' THEN 14.5454545
        WHEN familia = 'CAJA' AND IdCombo = '46' THEN 100
        ELSE descuento
    END
    WHERE IdCombo = '46' AND familia IN ('PASTES','CAJA');
 
END


