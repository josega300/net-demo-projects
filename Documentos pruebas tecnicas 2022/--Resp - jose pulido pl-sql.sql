--Resp - 1

SELECT TR.NOMBRE, TG.COMPANIA, TG.TRABAJADOR AS CONTRATO, TG.FECHA_INGRESO, TG.FECHA_BAJA,
TG.SIT_TRABAJADOR FROM ADAM.TRABAJADORES_GRALES TG, ADAM.TRABAJADORES TR 
WHERE TG.TRABAJADOR = TR.TRABAJADOR 
AND TG.SIT_TRABAJADOR = 2;


--Resp 2
--Realice una consulta SQL que permita determinar cuántos Contratos están inactivos y
--cuantos activos. 

SELECT COUNT(TG.SIT_TRABAJADOR) AS ACTIVOS FROM ADAM.TRABAJADORES_GRALES WHERE TG.SIT_TRABAJADOR = 1;
SELECT COUNT(TG.SIT_TRABAJADOR) AS INACTIVOS FROM ADAM.TRABAJADORES_GRALES WHERE TG.SIT_TRABAJADOR = 2;



--Resp 3

SELECT TR.NOMBRE, TR.CLAVE_UNICA AS CEDULA, TG.FECHA_INGRESO 
FROM ADAM.TRABAJADORES TR, ADAM.TRABAJADORES_GRALES TG
WHERE TG.COMPANIA = 0001 AND TG.SIT_TRABAJADOR = 1
ORDER BY CEDULA ASC;

--Resp 4

UPDATE ADAM.TRABAJADORES SET E_MAIL='correoususrio@eficacia.com' WHERE CLAVE_UNICA = 80134478;

--Resp 5

--DECLARACIONES DE VARIABLLES
create or replace procedure nombre_proc(codigo TRABAJADORES.CLAVE_UNICA%type)
as
  v_codigocliente clientes.codigocliente%type := codigo;
  v_nombrecliente clientes.nombrecliente%type;
-- INICIO DEL CUERPO  
begin
 
 --SENTENCIAS SQL
  select nombrecliente into v_nombrecliente
  from clientes
  where codigocliente = v_codigocliente;
 
  DBMS_OUTPUT.PUT_LINE('El nombre del cliente es ' || v_nombrecliente);
 
--MANEJO DE EXCEPCIONES SI EXISTEN
 
 --CIERRE DEL CUERPO 
end;
/


--Resp 6

create or replace procedure traer_nombre(v_cedula TRABAJADORES.CLAVE_UNICA%type)
as
  v_codigo TRABAJADORES.CLAVE_UNICA%type := v_cedula;
  v_nombre TRABAJADORES.NOMBRE%type;
begin
 
  select NOMBRE into v_nombre
  from ADAM.TRABAJADORES
  where CLAVE_UNICA = v_codigo;
 
  DBMS_OUTPUT.PUT_LINE('El nombre del colaborador es ' || v_nombrecliente);
 
exception
  when no_data_found then
    DBMS_OUTPUT.PUT_LINE('COLABORADOR NO ENCONTRADO EN EL SISTEMA');
 
end;
/


--Resp 7
El usuario manifiesta que necesita entregar el reporte en una hora al cliente.
 ¿Qué error tiene el REPORTE? 
 R//El error esta en uns subconsulta que esta seleccionando mas de una fila.
 ¿Cómo abordarías la situación tanto técnica como con el usuario?
 R// Le explico que la situacion se puede arreglar teniendo el conocimiento 
 de la logica del negocio de mi parte y de la forma en que el usuario requiera la informacion.


--Resp 8
Bonus Extra: La serie de Fibonacci se utiliza para evaluar el conocimiento 
donde está en
juego la lógica que podemos desarrollar como ingenieros.

create or replace procedure suma_fibbo(number_fibbo INTEGER)
as
  
--DECLARACION DE VARIABLES , 
--PARA EL FIBBO SE DEBEN TOMAR LOS DOS PRIMAROS NUMERO 0 Y 1  
first number := 0;
second number := 1;
temp number;
  
n number := number_fibbo;
i number;
  
begin
    if (n == 1){
        dbms_output.put_line(first);
        dbms_output.put_line(second);
    }
  
    -- loop i = 2 hasta n
    for i in 2..n
    loop
        temp:=first+second;
  
        first := second;
        second := temp;
  

    end loop;
    -- imprimir sumatoria
    dbms_output.put_line('Sumatoria:');
    dbms_output.put_line(temp);
end;
--Program End
