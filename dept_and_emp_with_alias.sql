--QUESTIONS ON EMP AND DEPT TABLE:


-- 1. WRITE A QUERY TO DISPLAY ALL THE DETAILS FROM THE EMPLOYEE TABLE
SELECT * 
FROM emp;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
--       7839 KING       PRESIDENT            17-NOV-81       5000                    10
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 14 rows selected.

--############################################################################################################

-- 2. WAQTD NAMES OF ALL THE EMPLOYEES
SELECT ename 
FROM emp;

-- ENAME
-- ----------
-- SMITH
-- ALLEN
-- WARD
-- JONES
-- MARTIN
-- BLAKE
-- CLARK
-- SCOTT
-- KING
-- TURNER
-- ADAMS
-- JAMES
-- FORD
-- MILLER

--############################################################################################################

-- 3. WAQTD NAME AND SALARY GIVEN TO ALL THE EMPLOYEES
 SELECT ename, sal 
 FROM emp;

-- ENAME             SAL
-- ---------- ----------
-- SMITH             800
-- ALLEN            1600
-- WARD             1250
-- JONES            2975
-- MARTIN           1250
-- BLAKE            2850
-- CLARK            2450
-- SCOTT            3000
-- KING             5000
-- TURNER           1500
-- ADAMS            1100
-- JAMES             950
-- FORD             3000
-- MILLER           1300

-- 14 rows selected.

--############################################################################################################

-- 4. WAQTD NAME AND COMMISSION GIVEN TO ALL THE EMPLOYEES

SELECT ename, comm 
FROM emp;
-- ENAME            COMM
-- ---------- ----------
-- SMITH
-- ALLEN             300
-- WARD              500
-- JONES
-- MARTIN           1400
-- BLAKE
-- CLARK
-- SCOTT
-- KING
-- TURNER              0
-- ADAMS
-- JAMES
-- FORD
-- MILLER

-- 14 rows selected.

--############################################################################################################

-- 5. WAQTD EMPLOYEE ID AND DEPARTMENT NUMBER OF ALL THE EMPLOYEES IN EMP TABLE.
SELECT empno, deptno 
FROM emp;

--      EMPNO     DEPTNO
-- ---------- ----------
--       7369         20
--       7499         30
--       7521         30
--       7566         20
--       7654         30
--       7698         30
--       7782         10
--       7788         20
--       7839         10
--       7844         30
--       7876         20
--       7900         30
--       7902         20
--       7934         10

-- 14 rows selected.

--############################################################################################################

-- 6. WAQTD ENAME AND HIREDATE OF ALL THE EMPLOYEES

SELECT ename, hiredate 
FROM emp;

-- ENAME      HIREDATE
-- ---------- ---------
-- SMITH      17-DEC-80
-- ALLEN      20-FEB-81
-- WARD       22-FEB-81
-- JONES      02-APR-81
-- MARTIN     28-SEP-81
-- BLAKE      01-MAY-81
-- CLARK      09-JUN-81
-- SCOTT      19-APR-87
-- KING       17-NOV-81
-- TURNER     08-SEP-81
-- ADAMS      23-MAY-87
-- JAMES      03-DEC-81
-- FORD       03-DEC-81
-- MILLER     23-JAN-82

-- 14 rows selected.

--############################################################################################################

-- 7. WAQTD NAME AND DESIGNATION OF ALL THE EMPLOYEES

SELECT ename, job 
FROM emp;
-- ENAME      JOB
-- ---------- ---------
-- SMITH      CLERK
-- ALLEN      SALESMAN
-- WARD       SALESMAN
-- JONES      MANAGER
-- MARTIN     SALESMAN
-- BLAKE      MANAGER
-- CLARK      MANAGER
-- SCOTT      ANALYST
-- KING       PRESIDENT
-- TURNER     SALESMAN
-- ADAMS      CLERK
-- JAMES      CLERK
-- FORD       ANALYST
-- MILLER     CLERK

-- 14 rows selected.

--############################################################################################################

-- 8. WAQTD NAME, JOB AND SALARY GIVEN ALL THE EMPLOYEES
SELECT ename, job, sal 
FROM emp;
-- ENAME      JOB              SAL
-- ---------- --------- ----------
-- SMITH      CLERK           2000
-- ALLEN      SALESMAN        1600
-- WARD       SALESMAN        1250
-- JONES      MANAGER         2975
-- MARTIN     SALESMAN        1250
-- BLAKE      MANAGER         2850
-- CLARK      MANAGER         2450
-- SCOTT      ANALYST         3000
-- KING       PRESIDENT       5000
-- TURNER     SALESMAN        1500
-- ADAMS      CLERK           1100
-- JAMES      CLERK            950
-- FORD       ANALYST         3000
-- MILLER     CLERK           1300

-- 14 rows selected.

--############################################################################################################

-- 9. WAQTD DNAMES PRESENT IN DEPARTMENT TABLE
SELECT dname 
FROM dept;

-- DNAME
-- --------------
-- ACCOUNTING
-- RESEARCH
-- SALES
-- OPERATIONS

--############################################################################################################

-- 10. WAQTD DNAME AND LOCATION PRESENT IN DEPT TABLE

SELECT dname,loc 
FROM dept;
-- DNAME          LOC
-- -------------- -------------
-- ACCOUNTING     NEW YORK
-- RESEARCH       DALLAS
-- SALES          CHICAGO
-- OPERATIONS     BOSTON

--############################################################################################################

-- ALIAS:

--############################################################################################################

-- 1. WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY.
SELECT emp.* , sal*12 AS anual_sal
FROM emp;

-- 2. WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY.
SELECT ename,job , sal*6 AS HALF_TERM_SALARY
FROM emp;

-- 3. WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUAL BONUS OF 2000.
SELECT emp.* , 2000 AS anual_bonus
FROM emp;

-- 4. WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%.
SELECT ename, sal, sal+sal*0.1 AS sal_with_hike
FROM emp;

-- 5. WAQTD NAME AND SALARY WITH DEDUCTION OF 25%.
SELECT ename, sal-sal*0.25 AS sal_with_deduction
FROM emp;

-- 6. WAQTD NAME AND SALARY WITH MONTHLY HIKE OF 50.
SELECT ename, sal+50 AS sal_with_monthly_hike
FROM emp;

-- 7. WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%.
SELECT ename, (sal*12) - ((sal * 12)*0.1) AS anual_sal_with_deduction
FROM emp;

-- 8. WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM).
SELECT sal, comm, sal+comm AS total_sal
FROM emp;

-- 9. WAQTD DETAILS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY.
SELECT emp.* , sal*12 AS anual_sal
FROM emp;

-- 10. WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY.
SELECT ename, job, sal-100 AS sal_with_penalty
FROM emp;