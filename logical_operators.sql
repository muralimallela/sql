---------------------------------------
--|  ASSIGNMENT ON LOGICAL OPERATORS: |
---------------------------------------


--############################################################################################################


--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       2000                    20
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


--############################################################################################################

-- 1. WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500

SELECT *
FROM emp
WHERE job='CLERK' AND sal < 1500;


--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

--############################################################################################################

-- 2. WAQTD NAME AND HIREDATE OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 30

SELECT ename, hiredate
FROM emp
WHERE job = 'MANAGER' AND deptno = 30;

-- ENAME      HIREDATE
-- ---------- ---------
-- BLAKE      01-MAY-81

--############################################################################################################

-- 3. WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF THEY ARE WORKING IN DEPT 30 AS SALESMAN AND THEIR ANNUAL SALARY HAS TO BE GREATER THAN 14000.
SELECT emp.* , sal*12 AS anual_sal
FROM emp
WHERE deptno = 30 AND job = 'SALESMAN' AND sal*12 > 14000;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  ANUAL_SAL
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000

--############################################################################################################

-- 4. WAQTD ALL THE DETAILS OF THE EMP WORKING IN DEPT 30 OR AS ANALYST

SELECT * 
FROM emp
WHERE deptno = 30 OR job = 'ANALYST';

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

-- 8 rows selected.

--############################################################################################################

-- 5. WAQTD NAMES OF THE EMPMLOYEES WHOS SALARY IS LESS THAN 1100 AND THEIR DESIGNATION IS CLERK

SELECT ename
FROM emp
WHERE sal < 1100 AND job = 'CLERK';

-- ENAME
-- ----------
-- JAMES

--############################################################################################################

-- 6. WAQTD NAME AND SAL, ANNUAL SAL AND DEPTNO IF DEPTNO IS 20 EARNING MORE THAN 1100 AND ANNUAL SALARY EXCEEDS 12000

SELECT ename, sal , sal*12 AS anual_sal , deptno
FROM emp
WHERE deptno = 20 AND sal > 1100 AND sal*12 > 12000;

-- ENAME             SAL  ANUAL_SAL     DEPTNO
-- ---------- ---------- ---------- ----------
-- SMITH            2000      24000         20
-- JONES            2975      35700         20
-- SCOTT            3000      36000         20
-- FORD             3000      36000         20

--############################################################################################################

-- 7.WAQTD EMPNO AND NAMES OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 20
SELECT empno, ename
FROM emp
WHERE job = 'MANAGER' AND deptno = 20;

--      EMPNO ENAME
-- ---------- ----------
--       7566 JONES

--############################################################################################################

-- 8. WAQTD DETAILS OF EMPLOYEES WORKING IN DEPT 20 OR 30.

SELECT *
FROM emp
WHERE deptno IN (10,20);

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       2000                    20
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
--       7839 KING       PRESIDENT            17-NOV-81       5000                    10
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 8 rows selected.

--############################################################################################################

-- 9. WAQTD DETAILS OF EMPLOYEES WORKING AS ANALYST IN DEPT 10

SELECT *
FROM emp
WHERE deptno = 10 AND job = 'ANALYST';

-- no rows selected

--############################################################################################################

-- 10. WAQTD DETAILS OF EMPLOYEE WORKING AS PRESIDENT WITH SALARY OF RUPEES 4000

SELECT *
FROM emp
WHERE job = 'PRESIDENT' AND sal = 4000;

-- no rows selected

--############################################################################################################

-- 11.WAQTD NAMES AND DEPTNO, JOB OF EMPS WORKING AS CLERK IN DEPT 10 OR 20

SELECT ename, deptno, job
FROM emp
WHERE job = 'CLERK' AND deptno IN (10,20);

-- ENAME          DEPTNO JOB
-- ---------- ---------- ---------
-- SMITH              20 CLERK
-- ADAMS              20 CLERK
-- MILLER             10 CLERK

--############################################################################################################

-- 12.WAQTD DETAILS OF EMPLOYEES WORKING AS CLERK OR MANAGER IN DEPT 10.

SELECT *
FROM emp
WHERE job IN ('CLERK', 'MANAGER') AND deptno = 10;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

--############################################################################################################

-- 13.WAQTD NAMES OF EMPLOYEES WORKING IN DEPT 10 20,30, 40.

SELECT ename
FROM emp
WHERE deptno IN (10,20,30,40);

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

-- 14 rows selected.

--############################################################################################################

-- 14. WAQTD DETAILS OF EMPLOYEES WITH EMPNO 7902,7839.

SELECT * 
FROM emp
WHERE empno IN (7902,7839);

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7839 KING       PRESIDENT            17-NOV-81       5000                    10
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

--############################################################################################################

-- 15. WAQTD DETAILS OF EMPLOYEES WORKING AS MANAGER OR SALESMAN OR CLERK

SELECT * 
FROM emp
WHERE job IN ('MANAGER','SALESMAN','CLERK');

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       2000                    20
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 11 rows selected.

--############################################################################################################

-- 16. WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 AND BEFORE 87

SELECT  *
FROM emp
WHERE hiredate >= '01-JAN-81' AND hiredate < '01-JAN-86';

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7839 KING       PRESIDENT            17-NOV-81       5000                    10
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 11 rows selected.

--############################################################################################################

-- 17.WAQTD DETAILS OF EMPLOYEES EARNING MORE THAN 1250 BUT LESS THAN 3000

SELECT *
FROM emp
WHERE sal BETWEEN 1250 AND 3000;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       2000                    20
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

--############################################################################################################

-- 18. WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 INTO DEPT 10 OR 30

SELECT  ename
FROM emp
WHERE hiredate >= '01-JAN-81' AND deptno in (10,30);

-- ENAME
-- ----------
-- ALLEN
-- WARD
-- MARTIN
-- BLAKE
-- CLARK
-- KING
-- TURNER
-- JAMES
-- MILLER

-- 9 rows selected.

--############################################################################################################

-- 19.WAQTD NAMES OF EMPLOYEES ALONG WITH ANNUAL SALARY FOR THE EMPLOYEES WORKING AS MANAGER OR CLERK INTO DEPT 10 OR 30

SELECT ename, sal*12 AS anual_sal
FROM emp
WHERE job IN ('MANAGER', 'CLERK') AND deptno IN (10,30);

-- ENAME       ANUAL_SAL
-- ---------- ----------
-- BLAKE           34200
-- CLARK           29400
-- JAMES           11400
-- MILLER          15600

--############################################################################################################

-- 20.WAQTD ALL THE DETAILS ALONG WITH ANNUAL SALARY IF SAL IS BETWEEN 1000 AND 4000 ANNUAL SALARY MORE THAN 15000

SELECT emp.*, sal*12 as anual_sal
FROM emp
WHERE (sal BETWEEN 1000 AND 4000) AND sal * 12 > 15000;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  ANUAL_SAL
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       2000                    20      24000
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400
--       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600

-- 9 rows selected.

--############################################################################################################
