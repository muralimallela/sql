-- STRING FUNCTIONS
-- 1. Display all employee names in uppercase.
SELECT UPPER(ename)
FROM emp;

-- 2. Display all employee names in lowercase.
SELECT LOWER(ename)
FROM emp;

-- 3. Display only the first 3 characters of each employee name.
SELECT substr(ename,1,3)
FROM emp;

-- 4. Display the last 2 characters of each employee name.
SELECT substr(ename,-2) AS NAME
FROM emp;

-- 5. Display employee name and length of the name.
SELECT ename, length(ename) AS length
FROM emp;

-- 6. Display employee names in reverse order.
SELECT REVERSE(ename)
FROM emp;

-- 7. Display the position of the letter 'A' in each employee name.
SELECT ename, INSTR(ename,'A',1) POSITION
FROM emp;

-- 8. Display employee names padded with `*` to make them 10 characters long (use `RPAD()`).
SELECT RPAD(ename,10,'*') AS ENAME
FROM emp;

-- 9. Replace all occurrences of 'A' with '@' in employee names.
SELECT REPLACE(ename,'A','@') AS NAME
FROM emp;

-- 10. Concatenate employee name and job with a hyphen (`-`).
SELECT CONCAT(CONCAT(ename,'-'),job) AS name_job
FROM emp;

