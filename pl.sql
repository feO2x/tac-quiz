CREATE TABLE employees (
    employee_id NUMBER,
    first_name VARCHAR2(50),
    salary NUMBER(8,2)
);

DECLARE
    e_high_salary EXCEPTION;
    PRAGMA EXCEPTION_INIT(e_high_salary, -20001);
    v_salary employees.salary%TYPE := 10000;
BEGIN
    IF v_salary > 9000 THEN
        RAISE e_high_salary;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Salary is acceptable.');
EXCEPTION
    WHEN e_high_salary THEN
        DBMS_OUTPUT.PUT_LINE('Salary exceeds the allowed limit.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
END;




