-- LIKE OPERATOR

-- 1. WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK IN DEPT 10 OR 30 HAVING CHARACTER 'A' IN THEIR NAMES
SELECT * 
FROM emp
WHERE job = 'CLERK'
AND (deptno = 10 OR deptno = 30)
AND ename LIKE '%A%';

-- 2. WAQTD NAMES OF THE EMPLOYEES HAVING CHAR 'S' AS THEIR LAST CHARACTER
SELECT ename
FROM emp
WHERE ename LIKE '%S';

-- 3. WAQTD DETAILS OF THE EMPLOYEES WORKING AS ANALYST AND EARNING 4 DIGIT SALARY
SELECT *
FROM emp
WHERE job = 'ANALYST'
AND sal LIKE '____';

-- 4. WAQTD NAMES OF THE EMPLOYEES HIRED IN THE FIRST MONTH
SELECT *
FROM emp
WHERE hiredate LIKE '%-JAN-%';


-- 5. WAQTD DETAILS OF EMPLOYEES HAVING TWO L'S PRESENT IN THE NAMES AND WORKS AS MANAGER
SELECT *
FROM emp
WHERE ename LIKE '%L%L%'
AND job = 'MANAGER';

-- 6. WAQTD NAMES OF THE EMPLOYEES IF NAME STARTS WITH 'A' OR 'J' OR 'S'
SELECT ename
FROM emp
WHERE ename LIKE 'A%'
OR ename LIKE 'J%'
OR ename LIKE 'S%';

-- 7. LIST ALL THE EMPLOYEE NAMES EXCEPT FOR THE EMPLOYEES WHO'SNAME HAS 'A' AS THE 3rd CHARCTER
SELECT ename
FROM emp
WHERE ename NOT LIKE '__A%';

-- 8. LIST THE DETAILS OF THE EMPLOYEES WORKING AS MANAGER'S AND HIRED AFTER 1984 AND HAS A NAME WHICH ENDS WITH 'S'
SELECT *
FROM emp
WHERE job = 'MANAGER'
AND hiredate > '01-JAN-84'
AND ename LIKE '%S';

-- 9. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'S' OR 'A'
SELECT ename
FROM emp
WHERE ename LIKE 'S%'
OR ename LIKE 'A%';

-- 10. LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH 'S'
SELECT *
FROM emp
WHERE ename NOT LIKE 'S%';

-- 11. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR 'J'
SELECT *
FROM emp
WHERE ename LIKE 'M%'
OR ename LIKE 'J%';

-- 12. LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH 'ES' OR 'R'
SELECT *
FROM emp
WHERE ename NOT LIKE '%ES'
AND ename NOT LIKE '%R';

-- 13. DISPLAY ALL THE EMPLOYEE WHO ARE 'SALESMAN'S HAVING 'E' AS THE LAST BUT ONE CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER 
SELECT *
FROM emp
WHERE job = 'SALESMAN'
AND ename LIKE '%E_'
AND sal LIKE '____';

--############################################################################################################

-- LIKE OPERATOR :

-- 1. WAQTD details of the employee who's name has character 'A' as the 4th character
SELECT *
FROM emp
WHERE ename LIKE '___A%';

-- 2. WAQTD details of the employee who's name has character 'P' as the second character and character 'A' as the 5th
SELECT *
FROM emp
WHERE ename LIKE '_P__A%';

-- 3. WAQTD details of the employee who's name starts with 'J' and end with 'S'
SELECT *
FROM emp
WHERE ename LIKE 'J%S';

-- 4. WAQTD details of the employee who's is earning 4 digit salary.
SELECT *
FROM emp
WHERE sal LIKE '____';

-- 5. WAQTD details of the employee who's name has 5 characters'
SELECT *
FROM emp
WHERE ename LIKE '_____';

-- 6. WAQTD name and hiredate of the employee who was hired in the month of 'FEB'
SELECT ename, hiredate
FROM emp
WHERE hiredate LIKE '%-FEB-%';

-- 7. WAQTD name and hiredate of the employee who was hired in the year '82'
SELECT ename, hiredate
FROM emp
WHERE hiredate LIKE '%-%-%82';

-- 8. WAQTD name and hiredate of the employee who was hired on the first day of the month in the year 1982.
SELECT ename, hiredate
FROM emp
WHERE hiredate LIKE '01-%-%82';

-- 9. WAQTD name and Sal of the employee if employee's salary ends with '99'
SELECT ename, sal
FROM emp
WHERE sal LIKE '%99';

-- 10. WAQTD name and Sal of the employee if employee's salary has 5 digits and last digit is '0'.
SELECT ename, sal
FROM emp
WHERE sal LIKE '____0';

-- 11. WAQTD name of the employee which has 6 characters starts with 'A' and ends with 'A'.
SELECT ename
FROM emp
WHERE ename LIKE 'A____A';

-- 12. WAQTD name and job of the employee if the job has a string 'MAN'in it.
SELECT ename, job
FROM emp
WHERE job LIKE '%MAN%';


--############################################################################################################


-- ename starts with vowels
SELECT ename
FROM emp
where ename LIKe 'A%' 
OR ename LIKe 'E%' 
OR ename LIKe 'I%' 
OR ename LIKe 'O%' 
OR ename LIKe 'U%';

-- ename starts with consonants
SELECT ename
FROM emp
where ename NOT LIKe 'A%' 
AND ename NOT LIKe 'E%' 
AND ename NOT LIKe 'I%' 
AND ename NOT LIKe 'O%' 
AND ename NOT LIKe 'U%';


-- ename starts with vowels and ends with consonants
SELECT ename
FROM emp
WHERE ( ename LIKe 'A%' 
AND ename LIKe 'E%' 
AND ename LIKe 'I%' 
AND ename LIKe 'O%' 
AND ename LIKe 'U%') 
AND
(ename NOT LIKe '%A' 
OR ename NOT LIKe '%E' 
OR ename NOT LIKe '%I' 
OR ename NOT LIKe '%O' 
OR ename NOT LIKe '%U');



SELECT emp.*, sal+sal*0.5 as sal_with_hike, sal*12 as anual_sal
FROM emp
WHERE deptno IN (20,30)
AND ((job = 'SALESMAN' OR job = 'ANALYST') AND job != 'PRESIDENT') 
AND sal BETWEEN 4500 AND 9500
AND sal*12 BETWEEN 14451 AND 26749
AND hiredate BETWEEN '01-JAN-1976' AND '31-DEC-1988'
AND comm IS NOT NULL
AND ename LIKE 'B__B%L_';
