-- ASSIGNMENT ON SUB QUERIES CASE 2:

-- 21.WAQTD DNAME OF THE EMPLOYEES WHOS NAME IS SMITH
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM EMP 
  WHERE ENAME = 'SMITH'
);

-- 22.WAQTD DNAME AND LOC OF THE EMPLOYEE WHOS ENAME IS KING
SELECT DNAME, LOC 
FROM DEPT 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM EMP 
  WHERE ENAME = 'KING'
);

-- 23.WAQTD LOC OF THE EMP WHOS EMPLOYEE NUMBER IS 7902
SELECT LOC 
FROM DEPT 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM EMP 
  WHERE EMPNO = 7902
);

-- 24.WAQTD DNAME AND LOC ALONG WITH DEPTNO OF THE EMPLOYEE WHOS NAME ENDS WITH 'R'
SELECT DEPTNO, DNAME, LOC 
FROM DEPT 
WHERE DEPTNO IN (
  SELECT DEPTNO 
  FROM EMP 
  WHERE ENAME LIKE '%R'
);

-- 25.WAQTD DNAME OF THE EMPLOYEE WHOS DESIGNATION IS PRESIDENT
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM EMP 
  WHERE JOB = 'PRESIDENT'
);

-- 26. WAQTD NAMES OF THE EMPLOYEES WORKING IN ACCOUNTING DEPARTMENT
SELECT ENAME 
FROM EMP 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'ACCOUNTING'
);

-- 27.WAQTD ENAME AND SALARIES OF THE EMPLOYEES WHO ARE WORKING IN THE LOCATION CHICAGO
SELECT ENAME, SAL 
FROM EMP 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE LOC = 'CHICAGO'
);

-- 28.WAQTD DETAILS OF THE EMPLOYEES WORKING IN SALES
SELECT * 
FROM EMP 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'SALES'
);

-- 29. WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF EMPLOYEES ARE WORKING IN NEW YORK
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, (SAL * 12) AS ANNUAL_SALARY 
FROM EMP 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE LOC = 'NEW YORK'
);

-- 30. WAQTD NAMES OF EMPLOYEES WORKING IN OPERATIONS DEPARTMENT
SELECT ENAME 
FROM EMP 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'OPERATIONS'
);


-- ASSIGNMENT ON CASE 1 & 2:

-- 31.WAQTD NAMES OF THE EMPLOYEES EARNING MORE THAN SCOTT IN ACCOUNTING DEPT
SELECT ENAME 
FROM EMP 
WHERE SAL > (
  SELECT SAL 
  FROM EMP 
  WHERE ENAME = 'SCOTT'
) 
AND DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'ACCOUNTING'
);

-- 32.WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER IN THE LOCATION CHICAGO
SELECT * 
FROM EMP 
WHERE JOB = 'MANAGER' 
AND DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE LOC = 'CHICAGO'
);

-- 33.WAQTD NAME AND SAL OF THE EMPLOYEES EARNING MORE THAN KING IN THE DEPT ACCOUNTING
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > (
  SELECT SAL 
  FROM EMP 
  WHERE ENAME = 'KING'
) 
AND DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'ACCOUNTING'
);

-- 34.WAQTD DETAILS OF THE EMPLOYEES WORKING AS SALESMAN IN THE DEPARTEMENT SALES
SELECT * 
FROM EMP 
WHERE JOB = 'SALESMAN' 
AND DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'SALES'
);

-- 35.WAQTD NAME, SAL, JOB, HIREDATE OF THE EMPLOYEES WORKING IN OPERATIONS DEPARTMENT AND HIRED BEFORE KING
SELECT ENAME, SAL, JOB, HIREDATE 
FROM EMP 
WHERE DEPTNO = (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME = 'OPERATIONS'
) 
AND HIREDATE < (
  SELECT HIREDATE 
  FROM EMP 
  WHERE ENAME = 'KING'
);

-- 36.DISPLAY ALL THE EMPLOYEES WHOSE DEPARTMET NAMES ENDING 'S'.
SELECT * 
FROM EMP 
WHERE DEPTNO IN (
  SELECT DEPTNO 
  FROM DEPT 
  WHERE DNAME LIKE '%S'
);

-- 37.WAQTD DNAME OF THE EMPLOYEES WHOS NAMES HAS CHARACTER 'A' IN IT
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN (
  SELECT DEPTNO 
  FROM EMP 
  WHERE ENAME LIKE '%A%'
);

-- 38.WAQTD DNAME AND LOC OF THE EMPLOYEES WHOS SALARY IS RUPEES 800
SELECT DNAME, LOC 
FROM DEPT 
WHERE DEPTNO IN (
  SELECT DEPTNO 
  FROM EMP 
  WHERE SAL = 800
);

-- 39.WAQTD DNAME OF THE EMPLOYEES WHO EARN COMISSION
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN (
  SELECT DEPTNO 
  FROM EMP 
  WHERE COMM IS NOT NULL
);

-- 40.WAQTD LOC OF THE EMPLOYEES IF THEY EARN COMISSION IN DEPT 40
SELECT LOC 
FROM DEPT 
WHERE DEPTNO = 40 
AND DEPTNO IN (
  SELECT DEPTNO 
  FROM EMP 
  WHERE COMM IS NOT NULL
);
