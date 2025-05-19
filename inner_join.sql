-- ANSI sysntax
-- 1. WAQD name of the employee and his location of the all the employess.
SELECT ename, loc
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno;

--2. WAQD dname and sal for all the employees working in accounting
SELECT dname, sal
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno;

--3. WAQD dname and anual salary for the all the employees whos salary greater than 2340
SELECT dname, sal * 12 anual_salary
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND sal > 2340;

-- 4. WAQD ename and dname for the employee having char 'A' in there dname
SELECT ename, dname
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND dname LIKE '%A%';

-- 5. WAQD ename and dname for all the employees working as salesman
SELECT ename, dname
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
WHERE job IN 'SALESMAN';

-- 6. WAQD dname and job for all the employees whos job and dname starts with char 'S'.
SELECT dname, job
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND job LIKE 'S%' AND dname LIKE 'S%';

-- 7. WAQD dname and mgr number for the employee reporting to 7839
SELECT dname, mgr
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND mgr IN 7839;

-- 8. WAQD dname and hiredate for the employess hired after 83 into acoounting or research department
SELECT dname, hiredate
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND hiredate > '31-DEC-83'
AND dname IN ('ACCOUNTING','RESEARCH');

-- 9. WAQD ename and dname of the employee who are getting comm in dept 10 or 30
SELECT ename, dname
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND comm > 0 -- (IS NOT NULL)
AND emp.deptno IN (10,30);

-- 10. WAQD dname and empno for all the employees who's empno are 7839, 7902 and are working in loc newyork
SELECT dname, empno
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno
AND empno IN (7839, 7902)
AND loc IN 'NEW YORK';