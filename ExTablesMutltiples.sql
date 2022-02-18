/* Chapitre 05-Tables Multiples */
/*--------------EX-1----------------*/
select e.ENAME, d.DEPTNO, d.DNAME
from emp e, DEPT d
where e.DEPTNO = d.DEPTNO;

/*--------------EX-2----------------*/
select e.ENAME, d.DNAME, d.LOC
from emp e, DEPT d 
where e.COMM IS NULL and e.DEPTNO = d.DEPTNO;
/*--------------EX-3----------------*/
select distinct e.JOB, d.LOC 
from EMP e, DEPT d
where d.DEPTNO = 30 and d.DEPTNO = e.DEPTNO;
/*--------------EX-4----------------*/
select e.ENAME, d.DNAME
from emp e INNER JOIN DEPT d
on e.ENAME LIKE '%A%' and e.DEPTNO=d.DEPTNO;
/*--------------EX-5----------------*/
select e.ENAME, e.JOB, d.DEPTNO, d.DNAME
from EMP e, DEPT d
where d.LOC = 'Dallas' and e.DEPTNO = d.DEPTNO;
/*--------------EX-6----------------*/
select worker.ENAME AS 'Employé', worker.EMPNO AS 'EMP#', manager.ENAME AS 'Manager', manager.EMPNO as 'Mgr#'
from EMP worker, EMP manager
where worker.MGR = manager.EMPNO;
/*--------------EX-7----------------*/
select worker.ENAME AS 'Employé', worker.EMPNO AS 'EMP#', manager.ENAME AS 'Manager', manager.EMPNO as 'Mgr#'
from EMP worker LEFT OUTER JOIN EMP manager
ON worker.MGR = manager.EMPNO;
/*--------------EX-8----------------*/
select worker.ENAME AS 'Employé', worker.DEPTNO, cow.ENAME as 'coworker'
from EMP worker LEFT OUTER JOIN EMP cow
ON worker.DEPTNO = cow.DEPTNO
and worker.ENAME != cow.ENAME;
/*--------------EX-9----------------*/
exec sp_columns salgrade
select e.ENAME, e.JOB, d.DNAME, e.SAL, s.GRADE
from EMP e, DEPT d, SALGRADE s
where e.DEPTNO = d.DEPTNO 
and e.SAL
between s.LOSAL and s.HISAL;

/*--------------EX-10----------------*/
select e.ENAME, e.HIREDATE
from EMP e, EMP b
where b.ENAME='blake' and e.HIREDATE >= b.HIREDATE;

/*--------------EX-11----------------*/
select worker.ENAME Employé, worker.HIREDATE Engagé, manager.ENAME Manager, manager.HIREDATE Engagé 
from EMP worker, EMP manager
WHERE worker.MGR = manager.EMPNO
and worker.HIREDATE < manager.HIREDATE;



