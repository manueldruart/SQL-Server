/* Chapitre 2 - Restriction */

-- Exo 1 
-- Creer une requete pour afficher le nom et le salaire des employés ayant plus de 2850

select ENAME, sal
from EMP
where sal>2850

-- Exo 2 
-- Creer une requete pour afficher le nom et le numero de dpt de 'lemployé numéro 7566

select ENAME, DEPTNO
from EMP
where EMPNO=7566

-- Exo 3 
-- afficher le nom et le salaire des employés dont le salaire n'est pas compris en 1500 et 2850

select ENAME, SAL
from EMP
where SAL NOT BETWEEN 1500 and 2850



-- Exo 4 
-- nom, metier, hiredate entre 20/02/81 et 01/03/81  trier par ordre d'arrivée

select ENAME, JOB, HIREDATE
from EMP
where HIREDATE between '20-feb-81' and '01-mar-81'
order by HIREDATE desc

-- Exo 5 
-- nom, numero de dpt des employes dont le dtp est soit 10 soit 30 trier par order alphabetique

select ENAME, DEPTNO
from EMP
where DEPTNO=10 or DEPTNO=30
order by ENAME


-- Exo 6 
-- nom, salaire plus de 1500 dans le dpt 10 ou 30 
--libeller les colones employe et salaire mensuel

select ENAME AS 'Employés', SAL AS 'Salaire Mensuel'
from EMP
where DEPTNO IN(10,30)
and SAL>1500

-- Exo 7 

select ENAME, SAL, COMM
from EMP
where COMM is not null
order by SAL desc, COMM desc;


-- Exo 8

select ename
from EMP
where ename like '__A%' ;

-- Exo 9 
select ENAME
from EMP
where ename like '$LL$'
and DEPTNO=30 or MGR=7782;


-- exo 10

select ename, job
from emp
where mgr is null


-- exo 11
select ename, job, sal
from emp
where job not in ('clerk', 'analyst')
and sal!=1000 and sal != 3000 AND sal !=5000


select emp.ename, dept.DEPTNO
from emp, DEPT
where emp.ENAME = dept.DEPTNO


