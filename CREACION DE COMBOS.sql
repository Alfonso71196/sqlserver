
--- //CREACION DE COMBOS 

DECLARE @id_combo varchar(10);
DECLARE @nom_combo varchar(50);
DECLARE @fecini varchar(10);
DECLARE @fecfin varchar(10);
DECLARE @horain time;
DECLARE @horafin time;
DECLARE @cliente varchar (50);
DECLARE @cant_paste varchar (50);
--DECLARE @cant_complemento varchar (50);
DECLARE @descuento1 float;
--DECLARE @descuento2 float;


SET @id_combo='44';
SET @nom_combo='NOCHES PASTEKO';
SET @fecini='20250601'
SET @fecfin='20250630'
SET @horain='19:00:00'
SET @horafin='23:59:59'
SET @cant_paste=2;
SET @descuento1=18.18181818;
--SET @cant_complemento=1;
--SET @descuento2=45.193548;

SET @cliente=''-- modificar si el cliente es diferente a SYS 


/*
--// VERIFICA SI EXISTEN REGISTROS 
select * 
from combos
where idcombo=44;

select *
from combosdet
where idcombo=44;

select *
from combosEspecial
where idcombo=44;

select *
from combosArticuloExento
where idcombo=44;

--//BORRA REGISTROS EN CASO DE EXISTIR 

delete from combos where idcombo='44'
delete from combosdet where idcombo='44'
delete from combosEspecial where idcombo='39'
delete from combosArticuloExento where idcombo='39'
*/

--// CREA CARATULA COMBO
-------------INSERTA EN COMBOS
insert into combos
    (idcombo,Descrip,precio,FecIni,FecFin,HoraIni,HoraFin,CantidadRegalo,DescuentoRegalo,Usuario,UsuFecha,UsuHora,SubFamilia,CantFijaUnSabor,cliente)
select idcombo=@id_combo, Descrip=@nom_combo, precio, FecIni=@fecini, FecFin=@fecfin, HoraIni=@horain, HoraFin=@horafin, CantidadRegalo, DescuentoRegalo, Usuario, UsuFecha, UsuHora, SubFamilia, CantFijaUnSabor, cliente=@cliente
from combos
where idcombo='53'

--// CREA COMBOSDET 
-------------INSERTA EN COMBOSDET
insert into combosdet
    (idcombo,familia,cantidad,descuento,subfamilia)
select top 1
    idcombo=@id_combo, familia, cantidad=@cant_paste, descuento=@descuento1, subfamilia
from prods
where linea='01' and articulo='0101'

/*
insert into combosdet
    (idcombo,familia,cantidad,descuento,subfamilia)
select top 1
    idcombo=@id_combo, familia, cantidad=@cant_complemento, descuento=@descuento2, subfamilia
from prods
where linea='15' and articulo='50583'*/

--// CREA ARTICULO EXCENTO (SOLO SI APLICA)
/*
--select * from prods where familia='PAQUETE02' and articulo<>'0702'

insert into combosArticuloExento 
	(idCombo,articulo,descrip)
select 
	idcombo=@id_combo,articulo,descrip
from prods
where familia='PAQUETE02' and articulo<>'0702'
*/