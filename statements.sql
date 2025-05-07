-- WAQ to display all the details from the table of the employee table
SELECT * FROM emp;

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

---############################################################################################################
-- WAQ to display the employee name and salary of all employees from the employee table

--############################################################################################################

-- 1. WAQ TO UPDATE SALARY OF SMITH ΤΟ 2000
UPDATE emp SET sal = 2000 WHERE ename = 'SMITH';
-- 1 row updated.

SELECT * FROM emp WHERE ename = 'SMITH';

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       2000                    20

--############################################################################################################

-- 2. WAQ TO UPDATE SALARY OF KING TO TWICE OF HIS SALARY
UPDATE emp SET sal = sal * 2 WHERE ename = 'KING';

-- 3. WAQ TO CONSTRUCT A TABLE(STUDENT) THAT CAN ACCEPT
-- a. STUDENT ID
-- b. STUDENT NAME
-- C. BRANCH
-- d. PERCENTAGE
-- e. NO_of_Backlogs

CREATE TABLE student(
    student_id NUMBER(10) PRIMARY KEY,
    student_name VARCHAR(25),
    branch VARCHAR(25),
    percentage NUMBER(5,2),
    no_of_backlogs NUMBER(10)
);

-- Table created.

DESC student;
--  Name                                                  Null?    Type
--  ----------------------------------------------------- -------- ------------------------------------
--  STUDENT_ID                                            NOT NULL NUMBER(10)
--  STUDENT_NAME                                                   VARCHAR2(25)
--  BRANCH                                                         VARCHAR2(25)
--  PERCENTAGE                                                     NUMBER(5,2)
--  NO_OF_BACKLOGS                                                 NUMBER(10)

--############################################################################################################

-- 4. WAQ TO DELETE THE DETAILS OF EMPLOYEE'S WHO'S NAME STARTS WITH CHARACTER 'T'
CREATE TABLE EMP2 AS SELECT * FROM EMP;
-- Table created.
 SELECT * FROM EMP2;

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

-- 14 rows selected.

DELETE FROM emp2 WHERE ename LIKE 'T%';
-- 1 row deleted.

SELECT * FROM EMP2;

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
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 13 rows selected.

--############################################################################################################

-- 5. WAQ TO CREATE TABLE NAMED LIBRARY WITH
-- a. BOOK NO
-- b. BOOK NAME
-- c. AUTHOR
-- d. PUBLISHED ON
CREATE TABLE library(
    book_no NUMBER(10) PRIMARY KEY,
    book_name VARCHAR(25),
    author VARCHAR(25),
    published_on DATE
);
-- Table created.
DESC LIBRARY;
--  Name                                                  Null?    Type
--  ----------------------------------------------------- -------- ------------------------------------
--  BOOK_NO                                               NOT NULL NUMBER(10)
--  BOOK_NAME                                                      VARCHAR2(25)
--  AUTHOR                                                         VARCHAR2(25)
--  PUBLISHED_ON                                                   DATE

--############################################################################################################

-- 6. WAQ TO ADD ATLEST 5 RECORDS INTO LIBRARY TABLE.
INSERT INTO library VALUES (1, 'Book A', 'Author A','01-JAN-2023');
INSERT INTO library VALUES (2, 'Book B', 'Author B','01-FEB-2023');
INSERT INTO library VALUES (3, 'Book C', 'Author C','01-MAR-2023');
INSERT INTO library VALUES (4, 'Book D', 'Author D','01-APR-2023');   
INSERT INTO library VALUES (5, 'Book E', 'Author E','01-MAY-2023');

SELECT * FROM LIBRARY;

--    BOOK_NO BOOK_NAME                 AUTHOR                    PUBLISHED
-- ---------- ------------------------- ------------------------- ---------
--          1 Book A                    Author A                  01-JAN-23
--          2 Book B                    Author B                  01-FEB-23
--          3 Book C                    Author C                  01-MAR-23
--          4 Book D                    Author D                  01-APR-23
--          5 Book E                    Author E                  01-MAY-23

--############################################################################################################


-- 7. WAQ TO ESTABLISH A CONNECTION BETWEEN STUDENT AND LIBRARY TABLE

ALTER TABLE Library
ADD (STUDENT_ID NUMBER(10),
FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID));
-- Table altered.

 DESC LIBRARY;
--  Name                                                  Null?    Type
--  ----------------------------------------------------- -------- ------------------------------------
--  BOOK_NO                                               NOT NULL NUMBER(10)
--  BOOK_NAME                                                      VARCHAR2(25)
--  AUTHOR                                                         VARCHAR2(25)
--  PUBLISHED_ON                                                   DATE
--  STUDENT_ID                                                     NUMBER(10)

SELECT * FROM LIBRARY;
--    BOOK_NO BOOK_NAME                 AUTHOR                    PUBLISHED STUDENT_ID
-- ---------- ------------------------- ------------------------- --------- ----------
--          1 Book A                    Author A                  01-JAN-23
--          2 Book B                    Author B                  01-FEB-23
--          3 Book C                    Author C                  01-MAR-23
--          4 Book D                    Author D                  01-APR-23
--          5 Book E                    Author E                  01-MAY-23

--############################################################################################################

-- 8. WAQ TO ADD RECORDS TO STUDENT TABLE (ATLEST 3).
INSERT INTO student VALUES (1, 'Student A', 'Branch A', 85.50, 0);
INSERT INTO student VALUES (2, 'Student B', 'Branch B', 90.00, 1);
INSERT INTO student VALUES (3, 'Student C', 'Branch C', 78.00, 2);

--############################################################################################################

-- 9. WAQ TO ADD 2 RECORDS INTO THE EXISTING EMPLOYEE TABLE AND THEY MUST WORK IN DEPT 40.
-- (INSERT INTO EMP VALUES (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO))
INSERT INTO emp2 VALUES (1001, 'RAHUL', 'MANAGER', 7839, '23-JAN-25', 5000, 0, 40);
INSERT INTO emp2 VALUES (1002, 'AKIL', 'CLERK', 1001, '23-JAN-24', 2000, 0, 40);

SELECT * FROM EMP2;

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
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
--       1001 RAHUL      MANAGER         7839 23-JAN-25       5000          0         40
--       1002 AKIL       CLERK           1001 23-JAN-24       2000          0         40

-- 15 rows selected.

--############################################################################################################

-- 10. WAQ TO GIVE A WELCOME BONUS OF RS 1000 FOR THE EMPLOYEES OF DEPT 40 (SAL+1000)
UPDATE emp2 SET sal = sal + 1000 WHERE deptno = 40;
-- 2 rows updated.

 SELECT * FROM EMP2 WHERE DEPTNO = 40;
--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       1001 RAHUL      MANAGER         7839 23-JAN-25       6000          0         40
--       1002 AKIL       CLERK           1001 23-JAN-24       3000          0         40
--############################################################################################################