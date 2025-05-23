-- ASSIGNMENT ON ALL & ANY :

-- 71.WAQTD NAME OF THE EMPLOYEES EARNING SALARY MORE THAN THE SALESMAN
SELECT * 
FROM emp
WHERE sal > all (SELECT sal
                 FROM emp
                 WHERE job = 'SALESMAN');

-- 72.WAQTD DETAILS OF THE EMPLOYEES HIRED AFTER ALL THE CLERKS
SELECT *
FROM emp
WHERE hiredate > ALL (SELECT hiredate FROM emp WHERE job = 'CLERK');

-- 73.WAQTD NAME AND SALARY FOR ALL THE EMPLOYEES IF THEY ARE EARNING LESS THAN ATLEST A MANAGER
SELECT ename, sal
FROM emp
WHERE sal < ANY (SELECT sal FROM emp WHERE job IN 'MANAGER');

-- 74.WAQTD NAME AND HIREDATE OF EMPLOYEES HIRED BEFORE ALL THE MANAGERS
SELECT ename, hiredate
FROM emp
WHERE hiredate < ALL (SELECT hiredate
                      FROM emp
                      WHERE job = 'MANAGER');

-- 75.WAQTD NAMES OF THE EMPLOYEES HIRED AFTER ALL THE MANAGERS AND EARNING SALARY MORE THAN ALL THE CLERKS
SELECT ename
FROM emp
WHERE hiredate > ALL (SELECT hiredate
                      FROM emp
                      WHERE sal > ALL (SELECT SAL
                                        FROM emp
                                        WHERE job IN 'CLERK'));

-- 76.WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND HIRED BEFORE ATLEST A SALESMAN
SELECT *
FROM emp
WHERE job = 'CLERK'
AND hiredate < ANY (
    SELECT hiredate
    FROM emp
    WHERE job = 'SALESMAN'
);

-- 77.WAQTD DETAILS OF EMPLOYEES WORKING IN ACCOUNTING OR SALES DEPT
SELECT *
FROM emp
WHERE DEPTNO = ANY (
    SELECT DEPTNO
    FROM dept
    WHERE dname IN ('ACCOUNTING','SALES')
);

-- 78. WAQTD DEPARTMENT NAMES OF THE EMPOYEES WITH NAME SMITH, KING AND MILLER
SELECT dname
FROM dept
WHERE deptno = ANY (
    SELECT deptno
    FROM emp
    WHERE ename IN ('SMITH','KING','MILLER')
);

-- 79.WAQTD DETAILS OF EMPLOYEES WORKING IN NEWYORK OR CHICAGO
SELECT *
FROM emp
WHERE deptno = ANY (
    SELECT deptno
    FROM dept
    WHERE loc IN ('NEWYORK','CHICAGO')
);

-- 80.WAQTD EMP NAMES IF EMPLOYEES ARE HIRED AFTER ALL THE EMPLOYEES OF DEPT 10
SELECT ename
FROM emp
WHERE hiredate > ALL (
    SELECT hiredate
    FROM emp
    WHERE deptno IN (
        SELECT DEPTNO
        FROM emp
        WHERE deptno IN 10
    )
);