CREATE TABLE ALUMNO
(
alu_codigo INT NOT NULL ,
alu_nombre varchar(100) NULL ,
alu_direccion varchar(100) NULL ,
alu_telefono varchar(20) NULL ,
alu_email varchar(50) NULL
);
COMMIT;
CREATE TABLE CURSO
(
cur_codigo INT NOT NULL ,
cur_nombre varchar(100) NULL ,
cur_ciclo varchar(5) NULL ,
cur_creditos int NULL,
cur_vacantes int NULL,
cur_matriculados int,
cur_profesor varchar(100) NULL,
cur_precio number NOT NULL
);
COMMIT;
CREATE TABLE MATRICULA
(
mat_id INT NOT NULL,
mat_fecha date NULL ,
mat_precio NUMBER NULL ,
mat_cuotas int NULL ,
cur_codigo INT NULL ,
alu_codigo INT NULL
);
COMMIT;
CREATE TABLE PAGO
(
pag_cuota int NULL ,
pag_fecha date NULL ,
pag_importe number NULL,
mat_id int NULL
);
COMMIT;
ALTER TABLE ALUMNO ADD PRIMARY KEY (alu_codigo);
ALTER TABLE CURSO ADD PRIMARY KEY (CUR_CODIGO);
ALTER TABLE MATRICULA ADD PRIMARY KEY (MAT_ID);

ALTER TABLE MATRICULA ADD FOREIGN KEY (ALU_CODIGO)
REFERENCES ALUMNO(ALU_CODIGO);
ALTER TABLE MATRICULA ADD FOREIGN KEY (CUR_CODIGO)
REFERENCES CURSO(CUR_CODIGO);
ALTER TABLE PAGO ADD FOREIGN KEY (MAT_ID) REFERENCES
MATRICULA(MAT_ID);

CREATE SEQUENCE seq_incremento --nombre de la secuencia
START WITH 1 --la secuencia empieza por 1
INCREMENT BY 1 --se incrementa de uno en uno
NOMAXVALUE; --no tiene valor maximo

CREATE TRIGGER trig_matriculas_seq
 BEFORE INSERT ON MATRICULA
 FOR EACH ROW
 BEGIN
 SELECT seq_incremento.nextval INTO :new.MAT_ID FROM dual;
 END
;

INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES (114568,'Administración de Base de Datos','IV',5,25,1000.0,'Michael
Cabanillas');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(434568,'Soluciones Informáticas', 'III', 4,25,1000.0,'Gustavo coronel');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(244742,'Inteligencia de Negocios','V',5,25,1500.0,'Sergio Matsukawa');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(384724,'Arquitectura de Sofware', 'VI',5,25,1200.0, 'Michael Cabanillas');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(843755,'Aplicaciones Móviles', 'IX',5,25,1600.0,'Edwin Palomino');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(339573,'Java Fundamentos','I',4,25,1600.0,'Gustavo Coronel');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(183944,'GESTION DE PROYECTOS','VII',4,25,2200.0,'Ricardo Marcelo');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(384392,'Fundamentos de Datos','IV',5,25,1200.0,'Alberto Ocampo');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(848756,'Análisis de Sistemas','VI',4,25,2200.0,'Sergio Matsukawa');
INSERT INTO CURSO (CUR_CODIGO, CUR_NOMBRE, CUR_CICLO, CUR_CREDITOS, CUR_VACANTES,
CUR_PRECIO, CUR_PROFESOR)
VALUES(532020,'Ingeniería de Proyectos','V',4,25,1800.0,'Edwin Palomino');

INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(117364,'JUAN ROJAS','LOS OLIVOS','986412345','yesenia@hotmail.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(145793,'OSCAR ALVARADO FERNANDEZ','MIRAFLORES',NULL,'oscar@gmail.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(183794,'GLADYS REYES CORTIJO','SAN
BORJA','875643562','gladys@hotmail.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(113980,'SARA RIEGA FRIAS','SAN ISIDRO',NULL,'sara@yahoo.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(111278,'JHON VELASQUEZ DEL CASTILLO','LOS
OLIVOS','78645345','jhon@movistar.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(197593,'RENZO ROBERT, RODRIGUEZ
ROJAS','SURCO','673465235','rrodrigiez@gmail.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(186787,'CALERO MORALES, EMELYN DALILA','LA
MOLINA','896754652','ecalero@peru.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(194853,'KAREN FUENTES','San Isidro','555-5555','KAFUENTES@HOTMAIL.COM');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(187989,'Yordi GOMEZ RUIZ','San Isidro','965-4521','yami_ruiz@gmail.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(118989,'MARIO EUGENIO VELASQUEZ
TORVISCO','SURCO','6573456','mvelasques@gmail.com');
INSERT INTO ALUMNO (alu_codigo, alu_nombre, alu_direccion, alu_telefono,
alu_email )
VALUES(174730,'FIORELLA LIZET VITELLA REYES','SAN
BORJA','5468790','fvitela@outlook.com');


INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio, mat_cuotas)
VALUES(114568, 111278,'15-04-2017',100,1);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(114568, 183794,'16-04-2017',150,2);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(114568, 113980,'18-04-2017',100,3);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(434568, 117364,'15-04-2017',100,1);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(434568, 145793,'01-05-2017',100,2);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(434568, 183794,'03-05-2017',200,3);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(434568, 113980,'04-05-2017',150,1);
INSERT INTO MATRICULA (cur_codigo, alu_codigo, mat_fecha, mat_precio,
mat_cuotas)
VALUES(434568, 111278,'06-05-2017',100,1);
COMMIT;

UPDATE CURSO
SET cur_matriculados = (
SELECT COUNT(*) FROM MATRICULA
WHERE MATRICULA.cur_codigo = CURSO.cur_codigo);
COMMIT;

INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (1,1, '16-04-2017',500);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (2,1, '16-05-2017',500);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (3,1, '18-04-2017',400);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (4,1, '18-05-2017',400);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (5,1, '15-04-2017',800);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (6,1, '01-05-2017',500);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (7,1, '03-05-2017',430);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (8,1, '03-06-2017',430);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (1,2, '04-05-2017',400);
INSERT INTO PAGO (mat_id, pag_cuota, pag_fecha, pag_importe)
VALUES (2,2, '06-05-2017',750);
COMMIT;

CREATE VIEW VW_AlumnosIV AS
SELECT ALUMNO.alu_nombre, ALUMNO.alu_telefono, ALUMNO.alu_email,
CURSO.cur_nombre, CURSO.cur_ciclo
FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo =
MATRICULA.alu_codigo INNER JOIN CURSO ON MATRICULA.cur_codigo =
CURSO.cur_codigo
WHERE (CURSO.cur_ciclo = 'IV');
COMMIT;

SELECT * FROM VW_ALUMNOSIV;
---------------------------------------------------------
--TAREAS SOBRE VISTAS
---------------------------------------------------------
--B
CREATE VIEW VW_ALUMNOSIII AS
SELECT ALUMNO.alu_nombre, ALUMNO.alu_telefono, ALUMNO.alu_email,
CURSO.cur_nombre, CURSO.cur_ciclo
FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo =
MATRICULA.alu_codigo INNER JOIN CURSO ON MATRICULA.cur_codigo =
CURSO.cur_codigo
WHERE (CURSO.cur_ciclo = 'III');
COMMIT;
SELECT * FROM VW_ALUMNOSIII;
--C
CREATE VIEW VW_ALUMNOSBD AS
SELECT ALUMNO.alu_nombre, ALUMNO.alu_email,
CURSO.cur_nombre
FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo =
MATRICULA.alu_codigo INNER JOIN CURSO ON MATRICULA.cur_codigo =
CURSO.cur_codigo
WHERE (CURSO.cur_NOMBRE = 'Administración de Base de Datos');
COMMIT;
SELECT * FROM VW_ALUMNOSBD;
--D
CREATE VIEW VW_ALUMNOSPROFESOR AS
SELECT ALUMNO.alu_nombre,
CURSO.cur_nombre,CURSO.CUR_PROFESOR
FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo =
MATRICULA.alu_codigo INNER JOIN CURSO ON MATRICULA.cur_codigo =
CURSO.cur_codigo
WHERE (CURSO.cur_PROFESOR = 'Michael Cabanillas');
COMMIT;
SELECT * FROM VW_ALUMNOSPROFESOR;
---E
CREATE VIEW VW_ALUMNOS_CUOTA1 AS
SELECT CURSO.cur_nombre,CURSO.cur_precio,ALUMNO.alu_codigo,
ALUMNO.alu_nombre,PAGO.pag_cuota,PAGO.pag_importe
FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo =
MATRICULA.alu_codigo INNER JOIN CURSO ON MATRICULA.cur_codigo =
CURSO.cur_codigo INNER JOIN PAGO ON MATRICULA.mat_id=PAGO.mat_id
WHERE (PAGO.pag_cuota = '1');
COMMIT;
SELECT * FROM VW_ALUMNOS_CUOTA1;
--F
SELECT cur_nombre FROM VW_ALUMNOS_CUOTA1 WHERE (cur_precio>1500);
--G
CREATE OR REPLACE FORCE VIEW "UREGISTROACADEMICO"."VW_ALUMNOS_CUOTAX" ("CUR_NOMBRE", "CUR_PRECIO", "ALU_CODIGO", "ALU_NOMBRE", "MAT_CUOTAS", "MAT_PRECIO") AS 
  SELECT CURSO.cur_nombre, CURSO.cur_precio,
alumno.alu_codigo, alumno.alu_nombre,
matricula.mat_cuotas, matricula.mat_precio

FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo = MATRICULA.alu_codigo 
            INNER JOIN CURSO ON MATRICULA.cur_codigo = CURSO.cur_codigo
WHERE (matricula.mat_cuotas = 1 AND curso.cur_ciclo = 'III')
;
--H
CREATE VIEW VW_ALUMNOS_CUOTAY AS
SELECT ALUMNO.alu_codigo,
ALUMNO.alu_nombre,CURSO.cur_ciclo,PAGO.pag_importe
FROM ALUMNO INNER JOIN MATRICULA ON ALUMNO.alu_codigo =
MATRICULA.alu_codigo INNER JOIN CURSO ON MATRICULA.cur_codigo =
CURSO.cur_codigo INNER JOIN PAGO ON MATRICULA.mat_id=PAGO.mat_id
WHERE (PAGO.pag_cuota = '2' AND PAGO.PAG_IMPORTE>600);
COMMIT;
--I
INSERT INTO VW_ALUMNOS_CUOTAY VALUES(12,'Pepe','IV',100);



--RESPTA:NO SE PUEDE
