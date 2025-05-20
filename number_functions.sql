-- NUMBER FUNCTIONS
-- 11. Display commission divided by 100.
SELECT comm, comm/100 AS comm
FROM emp
WHERE comm is NOT NULL;

-- 12. Display remainder of salary divided by 500.
SELECT sal, MOD(sal,500) AS remainder
FROM emp;

-- 13. Display salary increased by 10%.
SELECT sal+sal*0.1 AS sal_increment
FROM emp;

-- 14. Display salary multiplied by 1.25 and rounded to 2 decimal places.
SELECT ROUND(sal*1.25,2)
FROM emp;

-- 15. Display the absolute difference between salary and 2000 (use `ABS()`).
SELECT ABS(sal-2000)
FROM emp;

-- 16. Display salary raised to the power of 2 (use `POWER()`).
SELECT POWER(sal,2)
FROM emp;

-- 17. Display the highest value between salary and commission.
SELECT GREATEST(sal,comm) AS GREATEST
FROM emp
WHERE comm IS NOT NULL;


-- 18. Display the current system date.
SELECT sysdate
FROM dual;

-- 19. Display the number of months an employee has worked till now.
SELECT MONTHS_BETWEEN(sysdate,hiredate)
FROM emp;

-- 20. Display the number of days since the employee joined.
SELECT TRUNC(sysdate) - TRUNC(hiredate)
FROM emp;

-- 21. Display the employee name and their next month's joining anniversary.
SELECT ename, 

-- 22. Display the hire date in `'yyyy-mm-dd' format.
SELECT TO_CHAR(hiredate, 'yyyy-mm-dd')
FROM emp;

-- 23. Display hire date + 100 days for each employee.
SELECT hiredate + 100 AS "Hire Date + 100 Days"
FROM emp;

-- 24. Display the last day of the month in which the employee was hired.
SELECT LAST_DAY(hiredate)
FROM emp;

-- 25. Display the day of the week on which the employee was hired.
SELECT TO_CHAR(hiredate,'DAY') as "DAY"
FROM emp;

-- 26. Display number of years completed by each employee.
SELECT ROUND(MONTHS_BETWEEN(sysdate,hiredate)/12) AS "YEARS COMPLETED"
FROM emp;

-- 27. Display hire date in "Month YYYY"` format.
SELECT CONCAT(TO_CHAR(hiredate, 'MONTH'),CONCAT(' ',TO_CHAR(hiredate, 'YYYY'))) AS "MONTH YYYY"
FROM emp;