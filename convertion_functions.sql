-- CONVERSION FUNCTIONS
-- 28. Convert hire date into character format `'YYYY/MM/DD'`.
SELECT TO_CHAR(hiredate,'YYYY/MM/DD')
FROM emp;

-- 29. Convert character '17-DEC-80' into date format.
SELECT TO_DATE('17-DEC-80') AS DATE_
FROM dual;

-- 30. Convert character '1000.50' to a number using `TO_NUMBER`.
SELECT TO_NUMBER('1000.50')
FROM dual;