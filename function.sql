--Створити функцію, яка приймає індекс каблучки та колір її діаманту
--Повертає таблицю покупців, які придбали діаманти одинакового кольору

CREATE OR REPLACE TYPE customer_line AS OBJECT (
    id                            VARCHAR2(250),
    customer_name                 VARCHAR2(250));
/    
CREATE OR REPLACE TYPE customer_table IS TABLE OF customer_line;
/
CREATE OR REPLACE FUNCTION myfunction (
    ring_index ring.ring_index%TYPE,
    color color.color%TYPE)
    RETURN customer_table PIPELINED IS 
        CURSOR customer_cur IS
            SELECT id, customer_name
            FROM customer
            WHERE ring_diamond_color_color = color;
    BEGIN
        FOR customer_rec IN customer_cur
        LOOP PIPE ROW(customer_line(
                                    customer_rec.id,
                                    customer_rec.customer_name));
        END LOOP;
    END;
        
