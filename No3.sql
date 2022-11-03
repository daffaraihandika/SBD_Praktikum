SET SERVEROUTPUT ON
-- prosedur untuk pola pertama
CREATE OR REPLACE PROCEDURE pattern1 AS
    i NUMBER(5); --variabel untuk iterasi baris
    j NUMBER(5); --variabel untuk iterasi kolom
BEGIN
    FOR i in 0..9 LOOP --looping nilai i dari 0 sampai 9
      FOR j in 0..9 LOOP --looping nilai j dari 0 sampai 9
        IF (i=j OR (i+j)=9) THEN
            DBMS_OUTPUT.PUT(' X'); -- print 'X' apabila nilai i sama dengan j atau nila i+j = 9
            ELSE
            DBMS_OUTPUT.PUT(' *'); -- print '*' apabila tidak memenuhi kondisi
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

--memanggil dan menjalankan prosedur untuk pola pertama
EXECUTE pattern1; 

--prosedur untuk pola kedua
CREATE OR REPLACE PROCEDURE pattern2 AS
    i NUMBER(5); --variabel untuk iterasi baris
    j NUMBER(5); --variabel untuk iterasi kolom
BEGIN
    FOR i in 1..10 LOOP --looping nilai i dari 1 sampai 10
      FOR j in 1..10 LOOP --looping nilai i dari 1 sampai 10
        IF (i <= j) THEN --kondisi dimana nilai i <= j
            IF (i*j < 100) THEN --kondisi dimana nilai i*j < 100
                DBMS_OUTPUT.PUT(TO_CHAR(i * j, '00')); -- menampilkan hasil dari i*j dengan format dua digit
            ELSE
                DBMS_OUTPUT.PUT(TO_CHAR(i * i, '000')); -- apabila tidak memenuhi kondisi, menampilkan hasil dari i*j dengan format tiga digit
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
END;

-- memanggil dan menjalankan prosedur untuk pola kedua
EXECUTE pattern2; 

-- prosedur untuk pola ketiga
CREATE OR REPLACE PROCEDURE pattern3 AS
    i NUMBER(5); --variabel untuk iterasi baris
    j NUMBER(5); --variabel untuk iterasi kolom 
BEGIN
    FOR i in 1..10 LOOP --looping nilai i dari 1 sampai 10
      FOR j in 1..10 LOOP --looping nilai i dari 1 sampai 10
        IF (i>=j) THEN --kondisi dimana nilai i >= j
            IF (i * j MOD 2 <> 0) THEN --kondisi dimana jika i*j mod 2 tidak sama dengan 0 (bilangan ganjil)
            DBMS_OUTPUT.PUT(' 1');
            ELSE
            DBMS_OUTPUT.PUT(' 0'); --jika tidak memenuhi kondisi maka print '0'
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

--memanggil dan menjalankan pattern3 / pola ketiga
EXECUTE pattern3; 
