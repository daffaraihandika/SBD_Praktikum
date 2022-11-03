SET SERVEROUTPUT ON
create or replace PROCEDURE celciusToFahrenheit(celcius NUMBER) AS
    fahrenheit NUMBER(5); -- variabel untuk menampung nilai fahrenheit
BEGIN
    fahrenheit := (9/5) * celcius + 32; -- perhitungan untuk konversi dari celcius ke fahrenheit
    DBMS_OUTPUT.PUT('Celcius : ');
    DBMS_OUTPUT.PUT_LINE(celcius);
    DBMS_OUTPUT.PUT('Fahrenheit : ');
    DBMS_OUTPUT.PUT_LINE(fahrenheit);
END;

SET SERVEROUTPUT ON
create or replace PROCEDURE celciusToKelvin(celcius NUMBER) AS
    kelvin NUMBER(5); -- variabel untuk menampung nilai kelvin
BEGIN
    kelvin := celcius + 273; -- perhitungan untuk konversi dari celcius ke kelvin
    DBMS_OUTPUT.PUT('Celcius : ');
    DBMS_OUTPUT.PUT_LINE(celcius);
    DBMS_OUTPUT.PUT('Kelvin : ');
    DBMS_OUTPUT.PUT_LINE(kelvin);
END;

SET SERVEROUTPUT ON
create or replace PROCEDURE celciusToReamur(celcius NUMBER) AS
    reamur NUMBER(5); -- variabel untuk menampung nilai reamur
BEGIN
    reamur := (4/5) * celcius; -- perhitungan untuk konversi dari celcius ke fahrenheit
    DBMS_OUTPUT.PUT('Celcius : ');
    DBMS_OUTPUT.PUT_LINE(celcius);
    DBMS_OUTPUT.PUT('Reamur : ');
    DBMS_OUTPUT.PUT_LINE(reamur);
END;

EXECUTE celciusToFahrenheit(32); -- memanggil dan menjalankan prosedur untuk mengubah celcius (melalui parameter) ke fahrenheit 
EXECUTE celciusToKelvin(32); -- memanggil dan menjalankan prosedur untuk mengubah celcius (melalui parameter) ke kelvin 
EXECUTE celciusToReamur(32); -- memanggil dan menjalankan prosedur untuk mengubah celcius (melalui parameter) ke reamur 