CREATE OR REPLACE PACKAGE mypackage IS
    TYPE customer_line IS RECORD(
        id                            VARCHAR2(250),
        customer_name                 VARCHAR2(250));
    TYPE customer_table IS TABLE OF customer_line;
    
    FUNCTION myfunction (
        ring_index ring.ring_index%TYPE,
        color color.color%TYPE)
    RETURN customer_table PIPELINED;
    
    PROCEDURE deletecustomer (
        id_1 customer.id%TYPE,
        ring_index_1 ring.ring_index%TYPE,
        diamond_index_1 diamond.diamond_index%TYPE);   
        
END mypackage;
/
CREATE OR REPLACE PACKAGE BODY mypackage IS
    PROCEDURE deletecustomer (
        id_1 customer.id%TYPE,
        ring_index_1 ring.ring_index%TYPE,
        diamond_index_1 diamond.diamond_index%TYPE)
        AS
            id_2 customer.id%TYPE;
            ring_index_2 ring.ring_index%TYPE;
            diamond_index_2 diamond.diamond_index%TYPE;
        BEGIN
            SELECT id INTO id_2 FROM customer WHERE id=id_1;
            SELECT ring_index INTO ring_index_2 FROM ring WHERE ring_index=ring_index_1;
            SELECT diamond_index INTO diamond_index_2 FROM diamond WHERE diamond_index=diamond_index_1;
        
            DELETE FROM customer WHERE id = 'id000';
            DELETE FROM ring WHERE ring_index = '33';
            DELETE FROM diamond WHERE diamond_index = '3';
            DBMS_OUTPUT.PUT_LINE('Works successfully');
        
        EXCEPTION 
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('Fails');
                DBMS_OUTPUT.PUT_LINE('Customer or diamond was not found');
        
        END;
        
    FUNCTION myfunction (
        ring_index ring.ring_index%TYPE,
        color color.color%TYPE)
        RETURN customer_table PIPELINED IS 
            CURSOR customer_cur IS
                SELECT id, customer_name
                FROM customer
                WHERE ring_diamond_color_color = color;
        BEGIN
            FOR customer_rec IN customer_cur
            LOOP PIPE ROW(customer_rec);
            END LOOP;
        END;
END mypackage;
    