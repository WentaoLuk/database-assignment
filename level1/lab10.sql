SELECT ename, deptno FROM emp
WHERE deptno = (SELECT deptno FROM emp WHERE ename='ALLEN');

--QUERY#1: List employees whose salary is less than the salary of ALLEN.
SELECT ename, sal FROM emp 
WHERE sal <= (SELECT sal FROM emp WHERE ename = 'ALLEN');

--Query#2: List employees who work at the same job as SMITH.
SELECT ename, job FROM  emp
WHERE job = (SELECT job FROM emp WHERE ename = 'SMITH');

--Query#3: List the name and salary of employee who gets the highest salary in employee table.
SELECT ename, sal FROM emp 
WHERE sal = (SELECT MAX(sal) FROM emp);

--Query#4: List the senior most employee in emp table with respect to hiredate (oldest hiredate).
SELECT ename, hiredate FROM emp
WHERE hiredate = (SELECT min(hiredate) FROM emp);

SELECT sal FROM emp WHERE job = 'SALESMAN';
SELECT ename, job, sal FROM emp
WHERE sal >ANY (SELECT sal FROM emp WHERE job = 'SALESMAN') ORDER BY sal;


SELECT ename, job, sal FROM emp
WHERE sal >ALL (SELECT sal FROM emp WHERE job = 'SALESMAN') ORDER BY sal;







