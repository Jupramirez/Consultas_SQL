DROP SCHEMA IF EXISTS museo;
CREATE schema museo;
use museo;

CREATE TABLE exposicion(
	exp_id integer primary key,
    exp_nombre varchar(25)
);

CREATE TABLE obra (
	obr_id integer primary key,
    obr_nombre varchar(30),
    obr_tipo varchar(12) default "Pintura",
    obr_costo int,
    exp_id integer,
    FOREIGN KEY (exp_id) REFERENCES exposicion(exp_id)
); 

CREATE TABLE museo(
	mus_id integer primary key,
    mus_nombre varchar(25)
);

CREATE TABLE presentacion(
	pre_fecha varchar(15),
    obr_id integer,
    mus_id integer,
    PRIMARY KEY (mus_id,obr_id,pre_fecha),
    FOREIGN KEY (mus_id) REFERENCES museo(mus_id),
    FOREIGN KEY (obr_id) REFERENCES obra(obr_id)
);

-- Adicionar columnas --
ALTER TABLE
	presentacion add pre_hora varchar(6) NULL;
    
ALTER TABLE obra ALTER obr_costo SET DEFAULT 500;

-- Museo --

insert into museo values(101,'Louvre');
insert into museo values(102,'Met');
insert into museo values(203,'Shangai');
insert into museo values(304,'Britanico');


-- Exposicion --
insert into exposicion values(1003, 'Da Vinci');
insert into exposicion values(1004, 'Renacimiento');
insert into exposicion values(1005, 'Cubismo');
insert into exposicion values(1006, 'Impresionismo');

insert into obra values(111, 'Mona lisa', 'pintura', 1000,
1003);
insert into obra values(112, 'Ultima cena', 'pintura',
800, 1003);
insert into obra values(113, 'Hombre vitruvio', 'boceto',
400, 1003);
insert into obra values(402, 'Solei levant', 'pintura',
300, 1006);


insert into presentacion (pre_fecha, obr_id, mus_id)
values('Ene-mar-2013', 111, 101);
insert into presentacion (pre_fecha, obr_id, mus_id)
values('Oct-dic-2013', 111, 101);
insert into presentacion (pre_fecha, obr_id, mus_id)
values( 'Ene-mar-2013', 112, 101);insert into presentacion (pre_fecha, obr_id, mus_id)
values('May-sept-2013', 200, 101);
insert into presentacion (pre_fecha, obr_id, mus_id)
values('May-sept-2013', 201, 101);
insert into presentacion (pre_fecha, obr_id, mus_id)
values( 'Oct-dic-2013', 113, 101);




insert into obra (obr_id, obr_nombre, obr_tipo, exp_id)
values (115, 'Salvator Mundi', 'pintura', 1003);


-- Borrar --
DELETE FROM obra WHERE obr_id=115;

UPDATE obra SET obr_costo=1300 WHERE obr_nombre = 'Mona
lisa';

-- Actualizar--
UPDATE obra SET obr_costo=obr_costo*1.1 WHERE obr_tipo =
'escultura';
