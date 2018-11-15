CREATE TABLE "UEMPRESA"."DEPARTAMENTO"
 ( "IDDEPARTAMENTO" NUMBER(*,0),
"NOMBRE" VARCHAR2(50 BYTE)
 )
--------------------------------------------------------
-- DDL for Table EMPLEADO
--------------------------------------------------------
 CREATE TABLE "UEMPRESA"."EMPLEADO"
 ( "IDEMPLEADO" NUMBER(*,0),
"NOMBRE" VARCHAR2(50 BYTE),
"SUELDO" NUMBER(7,2),
"IDSUPERVISOR" NUMBER(*,0),
"IDDPTO" NUMBER(*,0)
 );

 ALTER TABLE "UEMPRESA"."DEPARTAMENTO" ADD CONSTRAINT "DEPARTAMENTO_PK"
PRIMARY KEY ("IDDEPARTAMENTO");
--------------------------------------------------------
-- Constraints for Table EMPLEADO
--------------------------------------------------------
 ALTER TABLE "UEMPRESA"."EMPLEADO" ADD CONSTRAINT "EMPLEADO_PK" PRIMARY KEY
("IDEMPLEADO");
--------------------------------------------------------
-- Ref Constraints for Table EMPLEADO
--------------------------------------------------------
 ALTER TABLE "UEMPRESA"."EMPLEADO" ADD CONSTRAINT "FK_IDDEPARTAMENTO" FOREIGN
KEY ("IDDPTO")
 REFERENCES "UEMPRESA"."DEPARTAMENTO" ("IDDEPARTAMENTO") ENABLE;
--------------------------------------------------------
Insert into UEMPRESA.DEPARTAMENTO (IDDEPARTAMENTO,NOMBRE) values
('1','Mantenimiento');
Insert into UEMPRESA.DEPARTAMENTO (IDDEPARTAMENTO,NOMBRE) values ('2','Soporte
Tecnico');
Insert into UEMPRESA.DEPARTAMENTO (IDDEPARTAMENTO,NOMBRE) values ('3','Programacion');
Insert into UEMPRESA.DEPARTAMENTO (IDDEPARTAMENTO,NOMBRE) values ('4','Registro
Academico');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('1','Michel','5150','1','3');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('2','Juan','1600','2','1');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('3','Pedro','4250','1','2');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('4','Maria','3000','6','2');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('5','Miguel','25000','4','1');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('6','Luis','2100','5','3');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('7','Julieta','1500','8','1');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('8','Sebastian','2600','4','3');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('9','Jose','4500','4','3');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('10','Yuliana','2800','3','2');
Insert into UEMPRESA.EMPLEADO (IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO) values
('11','JUANCHO','1050','1','3');
--------------------------------------------------------
-- DDL for Procedure SP_AGREGAR_DEPARTAMENTO
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_AGREGAR_DEPARTAMENTO" (
P_IDDEPARTAMENTO NUMBER,
P_NOMBRE VARCHAR2
)
IS
BEGIN
 INSERT INTO DEPARTAMENTO(IDDEPARTAMENTO,NOMBRE)
 VALUES (P_IDDEPARTAMENTO,P_NOMBRE);
END;
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_AGREGAR_EMPLEADO" (
P_IDEMPLEADO NUMBER,
P_NOMBRE VARCHAR2,
P_SUELDO NUMBER,
P_IDSUPERVISOR NUMBER,
P_IDDPTO NUMBER
)
IS
BEGIN
 INSERT INTO EMPLEADO(IDEMPLEADO,NOMBRE,SUELDO,IDSUPERVISOR,IDDPTO)
 VALUES (P_IDEMPLEADO,P_NOMBRE,P_SUELDO,P_IDSUPERVISOR,P_IDDPTO);
END;
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_AUMENTAR_SUELDO" (
P_IDEMPLEADO NUMBER,
P_AUMENTO NUMBER
)
IS
BEGIN
 UPDATE EMPLEADO SET SUELDO = SUELDO + P_AUMENTO
 WHERE IDEMPLEADO = P_IDEMPLEADO;
END;
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_AUMENTO_SUELDO_" (
P_AUMENTO NUMBER
)
IS
BEGIN
 UPDATE EMPLEADO SET SUELDO = SUELDO + P_AUMENTO
 WHERE IDSUPERVISOR = 1;
END;
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_AUMENTO_SUELDO_2" (
P_AUMENTO NUMBER
)
IS
BEGIN
 UPDATE EMPLEADO SET SUELDO = SUELDO + P_AUMENTO
 WHERE IDSUPERVISOR = 1;
END;
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_DISMINUIR_SUELDO" (
P_IDEMPLEADO NUMBER,
P_DESCUENTO NUMBER
)
IS
BEGIN
 UPDATE EMPLEADO SET SUELDO = SUELDO - P_DESCUENTO
 WHERE IDEMPLEADO = P_IDEMPLEADO;
END;
 CREATE OR REPLACE PROCEDURE "UEMPRESA"."SP_DISMINUIR_SUELDO_NOMBRE" (
P_NOMBRE VARCHAR2,
P_DESCUENTO NUMBER
)
IS
BEGIN
 UPDATE EMPLEADO SET SUELDO = SUELDO - P_DESCUENTO
 WHERE NOMBRE = P_NOMBRE;
END;