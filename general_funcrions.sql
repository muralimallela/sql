-- GENERAL FUNCTIONS
-- 31. Display employee name and commission, replacing null commission with 0.
SELECT ename,
COALESCE(comm,0) AS Commission
FROM emp;

-- 32. Use `NVL2` to display "Has Commission" if commission exists, (else "No Commission".
SELECT NVL2(comm,'Has Commission','No Commission') AS Commission
FROM emp;

-- 33. Display employee name and use COALESCE to show commission, salary, or 0.
SELECT ename, COALESCE(comm,0) AS COMM, sal
FROM emp;

-- 34. Use `DECODE` to display job titles as: "Sales Role" for SALESMAN.
-- "Management" for MANAGER.
-- "Others" for the remaining roles.
SELECT DECODE(job,
    'SALESMAN','Sales Role',
    'MANAGER','Management'
             ,'Others') AS "JOB ROLE"
FROM emp;

-- 35. Use CASE` to show:
-- If salary > 3000 → "High"
-- If salary > 2000 "Medium"
-- Else "Low"
SELECT CASE
WHEN sal > 3000 THEN 'High'
WHEN sal > 200 THEN 'Medium'
ELSE 'Low'
END AS SALARY
FROM emp;



-- 36. Find out how many times the letter 'S' occurs in 'qspiders'.
SELECT LENGTH('qspiders') - LENGTH(REPLACE('qspiders','s','')) as "count of s"
FROM dual;

-- 37. List the employees whose job is having last 3 characters as 'man'.
SELECT *
FROM emp
WHERE job LIKE '%MAN';

-- 38. List employees whose job is having first 3 characters as 'man'.
SELECT *
FROM emp
WHERE SUBSTR(ename,1,4) = 'MAN';

-- 39. Display all the names whose name is having exactly 1 'L'.
SELECT ename
FROM emp
WHERE LENGTH(ename) - LENGTH(REPLACE(ename,'L','')) = 1;

-- 40. Display department names which are having the letter 'o'.
SELECT dname
FROM dept
WHERE dname LIKE '%O%';

-- 41. Display all the employees whose job has the string 'MΑΝ'.
SELECT *
FROM emp
WHERE job like '%MAN%';

-- 42. Display all the employees whose job ends with the string 'MAN'.
SELECT *
FROM emp
WHERE job LIKE '%MAN';

-- 43. Display the first 3 characters of `ename` in lower case and the rest everything in upper case (e.g., if `ename` is 'QSPIDERS', display it as 'qspIDERS').
SELECT CONCAT(LOWER(SUBSTR(ename,1,3)),SUBSTR(ename,4))
FROM emp;

-- 44. List the employees hired on a Wednesday.
SELECT *
FROM emp
WHERE TO_CHAR(hiredate,'DAY') IN 'WEDNESDAY';

-- 45. List the employees hired on a Sunday in the month of May.
SELECT *
FROM emp
WHERE TO_CHAR(hiredate,'DAY') IN 'WEDNESDAY'
AND TO_CHAR(hiredate,'MONTH') IN 'MAY';