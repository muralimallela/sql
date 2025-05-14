-- ASSIGNMENT ON NESTED SUB QUERY:

-- 61. WAQTD 2ND MINIMUM SALARY
SELECT *
FROM EMP
WHERE sal in (SELECT max(sal)
              FROM EMP
              WHERE sal < (SELECT max(sal)
                            FROM EMP));

-- 62.WAQTD 5TH MAXIMUM SALARY
SELECT *
FROM EMP
WHERE sal in (SELECT max(sal)
              FROM EMP
              WHERE sal < (SELECT max(sal)
                            FROM EMP
                            WHERE sal < (SELECT max(sal)
                                         FROM EMP
                                         WHERE sal < (SELECT max(sal)
                                                     FROM EMP 
                                                     WHERE sal < (SELECT max(sal)
                                                                 FROM emp)))));

-- 63. WAQTD NAME OF THE EMPLOYEE EARNING 3RD MAXIMUM SALARY
SELECT ename,sal
FROM emp
WHERE sal in (SELECT max(sal)
              FROM EMP
              WHERE sal < (SELECT max(sal)
                            FROM EMP
                            WHERE sal < (SELECT max(sal)
                                         FROM EMP)));

-- 64. WAQTD EMPNO OF THE EMPLOYEE EARNING 2D MAXIMUM SALARY
SELECT empno
FROM emp
WHERE sal in (SELECT max(sal)
              FROM EMP
              WHERE sal < (SELECT max(sal)
                                         FROM EMP));

-- 65. WAQTD DEPARTMENT NAME OF AN EMPLOYEE GETTING 4TH MAX SAL
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
                FROM emp
                WHERE sal = (SELECT max(sal)
                             FROM emp
                             WHERE sal < (SELECT max(sal)
                                          FROM emp
                                          WHERE sal < (SELECT max(sal)
                                                       FROM emp
                                                       WHERE sal < (SELECT max(sal)
                                                                    FROM emp)))));

-- 66. WAQTD DETAILS OF THE EMPLOYEE WHO WAS HIRED 2nd
SELECT *
FROM emp
WHERE hiredate = (SELECT min(hiredate)
                  FROM emp
                  WHERE hiredate > (SELECT MIN(hiredate)
                                    FROM emp));

-- 67. WAQTD NAME OF THE EMPLOYEE HIRED BEFORE THE LAST EMPLOYEE
SELECT *
FROM emp
WHERE hiredate = (SELECT max(hiredate)
                  FROM emp
                  WHERE hiredate < (SELECT max(hiredate)
                                    FROM emp));

-- 68. WAQTD LOC OF THE EMPLOYEE WHO WAS HIRED FIRST
SELECT LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO 
                FROM emp
                WHERE hiredate = (SELECT min(hiredate)
                                  FROM emp));

-- 69.WAQTD DETAILS OF THE EMPLOYEE EARNING 7TH MINIMUM SALARY

-- 70. WAQTD DNAME OF EMPLOYEE GETTING 2ND MAXIMUM SALARY
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
                FROM emp
                WHERE sal = (SELECT max(sal)
                             FROM emp
                             WHERE sal < (SELECT max(sal)
                                          FROM emp
                                          WHERE sal < (SELECT max(sal)
                                                       FROM emp
                                                       WHERE sal < (SELECT max(sal)
                                                                    FROM emp)))));