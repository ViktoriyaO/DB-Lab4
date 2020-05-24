BEGIN
    DBMS_OUTPUT.enable;
END;
/
SET SERVEROUTPUT ON;
DECLARE 
    CURSOR myfunction_cur IS
        SELECT *
        FROM Table(myfunction('22', 'J'));
    var_id customer.id%TYPE;
    var_customer_name customer.customer_name%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Testing a procedure');
    DBMS_OUTPUT.PUT_LINE('The following request');
    deletecustomer('id000', '33', '3');
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('The following request');
    deletecustomer('id123', '25', '5');
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('-----------------------');
    
    DBMS_OUTPUT.PUT_LINE('Testing a function');
    DBMS_OUTPUT.PUT_LINE('');
    FOR customer_rec IN myfunction_cur
    LOOP 
        var_id := customer_rec.id;
        var_customer_name := customer_rec.customer_name;
        DBMS_OUTPUT.PUT_LINE('Customer_id: ' || var_id || ' Customer_name: "' || var_customer_name || '"');
    END LOOP;
END;
    