/* Chapitre 07-Sous Requetes*/
/*--------------EX-1----------------*/
select ENAME, HIREDATE
from emp 
where DEPTNO = 
(select DEPTNO
from emp
where ename='blake') and ENAME!='blake';

/*--------------EX-2----------------*/
select EMPNO, ENAME
from EMP
where SAL > 
(select AVG(sal)
from EMP
)
order by SAL desc;
/*--------------EX-3----------------*/
select EMPNO, ENAME
from emp 
where DEPTNO IN (
select DEPTNO
from EMP
where ENAME like '%t%');
/*--------------EX-4----------------*/
select ENAME, DEPTNO, JOB
from EMP
where deptno = 
( select DEPTNO from DEPT where LOC = 'dallas');
/*--------------EX-5----------------*/
select ENAME, SAL
from EMP 
where MGR = (
select EMPNO
from EMP
where ENAME = 'king');
/*--------------EX-6----------------*/
select DEPTNO, ENAME, JOB
from EMP
where deptno = 
( select DEPTNO from DEPT where DNAME = 'sales');
/*--------------EX-7----------------*/
select EMPNO, ENAME, SAL
from emp 
where SAL > (
select avg(sal) 
from EMP)
and 
DEPTNO in (
select DEPTNO 
from emp
where ENAME like '%t%'
);
