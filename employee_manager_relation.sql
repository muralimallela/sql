-- ASSIGNMENT ON EMP AND MANAGER RELATION :

-- 81.WAQTD SMITHS REPORTING MANAGER'S NAME
SELECT ename
FROM emp
WHERE empno IN (
    SELECT mgr
    FROM emp
    WHERE ename IN 'SMITH'
);

-- 82. WAQTD ADAMS MANAGER'S MANAGER NAME
SELECT ename
FROM emp
WHERE empno IN (
    SELECT mgr
    FROM emp
    WHERE empno IN (
        SELECT mgr
        FROM emp
        WHERE ename = 'ADAMS'
    )
);

-- 83.WAQTD DNAME OF JONES MANAGER
SELECT dname
FROM dept
WHERE deptno IN (
    SELECT deptno
    FROM emp
    WHERE empno IN (
        SELECT mgr
        FROM emp
        WHERE ename = 'JONES'
    )
);

-- 84. WAQTD MILLER'S MANAGER'S SALARY
SELECT ename, sal
FROM emp
WHERE empno IN (
    SELECT mgr
    FROM emp
    WHERE ename = 'MILLER'
);

-- 85.WAQTD LOC OF SMITH'S MANAGER'S MANAGER.
SELECT loc
FROM dept
WHERE deptno = (
    SELECT deptno
    FROM emp
    WHERE empno = (
        SELECT mgr
        FROM emp
        WHERE empno = (
            SELECT mgr
            FROM emp
            WHERE ename = 'SMITH'
        )
    )
);

-- 86. WAQTD NAME OF THE EMPLOYEES REPORTING TO BLAKE
SELECT ename
FROM emp
WHERE mgr = (
    SELECT empno
    FROM emp
    WHERE ename = 'BLAKE'
);

-- 87.WAQTD NUMBER OF EMPLPOYEES REPORTING TO KING
SELECT COUNT(*) as EMPLOYEE_NUMBER
FROM emp
WHERE mgr = (
    SELECT empno
    FROM emp
    WHERE ename = 'KING'
);

-- 88. WAQTD DETAILS OF THE EMPLOYEES REPORTING TO JONES
SELECT *
FROM emp
WHERE mgr = (
    SELECT empno
    FROM emp
    WHERE ename = 'JONES'
);

-- 89. WAQTD ENAMES OF THE EMPLOYEES REPORTING TO BLAKE'S MANAGER
SELECT *
FROM emp
WHERE mgr = (
    SELECT mgr
    FROM emp
    WHERE ename = 'BLAKE'
);

-- 90. WAQTD NUMBER OF EMPLOYEES REPORTING TO FORD'S MANAGER
SELECT COUNT(*) NO_OF_EMPLOYEE
FROM emp
WHERE mgr = (
    SELECT mgr 
    FROM emp
    WHERE ename = 'FORD'
);