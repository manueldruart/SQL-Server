/* Chapitre 06-Fonctions de groupes */
/*--------------EX-1----------------*/
select Floor(MAX(sal)) max, Floor(Min(sal)) min, Floor(SUM(sal)) somme, Floor(AVG(sal)) moyenne
from EMP;
/*--------------EX-2----------------*/
select  Floor(MAX(sal)) max, Floor(Min(sal)) min, Floor(SUM(sal)) somme, Floor(AVG(sal)) moyenne
from EMP
group by (JOB);
/*--------------EX-3----------------*/
select job, count(*) nb
from EMP
group by (JOB);
/*--------------EX-4----------------*/
select  count(*) nb
from EMP
where MGR IS NOT NULL;
/*--------------EX-5----------------*/
select Floor(MAX(sal))-Floor(Min(sal)) 'diff max-min'
from EMP;

/*--------------EX-6----------------*/
select MGR, MIN(SAL) 'min salaire'
from emp 
group by  MGR
having MIN(sal) > 1000 and MGR IS NOT NULL
order by min(sal)desc;
/*--------------EX-7----------------*/
select  d.DNAME, d.LOC, count(e.ename) 'nbr employé', FLOOR(AVG(sal)) Moyenne
from emp e inner join DEPT d
on e.DEPTNO = d.DEPTNO
group by d.DNAME, d.LOC;

