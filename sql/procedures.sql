CREATE OR REPLACE PROCEDURE Calculate_Total_Salary (p_dept_id IN NUMBER) AS
    v_total_salary NUMBER(12,2);
BEGIN
    SELECT SUM(s.amount)
    INTO v_total_salary
    FROM Salaries s
    JOIN Employees e ON s.emp_id = e.emp_id
    WHERE e.dept_id = p_dept_id;

    DBMS_OUTPUT.PUT_LINE('Total Salary for Department ' || p_dept_id || ' = ' || v_total_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No salary data found for department ' || p_dept_id);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END Calculate_Total_Salary;
/
