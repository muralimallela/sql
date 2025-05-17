-- retrive employee who hired on any month ? which consist of char 'a'?
SELECT *
FROM emp
WHERE to_char(hiredate,'month') LIKE '%a%';

-- display the employee hired on any month which consist of exactely 30 days ?
SELECT *
FROM emp
WHERE last_day(hiredate) LIKE '30%';

-- retrive the employee who are there in the company for more than 20 years ? using to_char ?
SELECT emp.* , trunc(months_between(sysdate,hiredate)/12) experience
FROM emp
WHERE months_between(sysdate,hiredate) > 20*12;

-- retrive the employee hiredate on [wednesday, thrusday] in the month of march & april & september ?
SELECT *
FROM emp
WHERE to_char(hiredate,'day') IN ('wednesday','thursday')
AND to_char(hiredate,'month') IN ('march','april','september');