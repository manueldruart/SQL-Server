
/* Chapitre 4 : Fonction */

-- Exo 1 et 2

select EMPNO, ENAME, SAL, floor (SAL*1.15) 'Salaire Augmenté', (sal*1.15 - SAL) as 'difference de slaire'
from EMP


-- Exo 3
D
select ENAME, DATEDIFF(month,HIREDATE,getdate()) as 'Mois'
from EMP
order by HIREDATE asc


-- Exo 4 

select lower(ename) 'Nom en minuscule ', LEN (ename) 'nbr de char'
from EMP
where left(ename,1)='J' or left(ename,1) ='A' or left(ename,1)='M'


-- Exo 5 

select ename + ' gagne $' + ltrim(str(SAL)) + ', mais voudrait $' + ltrim(str(SAL*3)) as 'Salaire de reve'
from EMP

-- Exo 6 

select ename, REPLICATE('$',15 - len((SAL))) + ltrim(str(SAL)) as 'salaire'
from emp

-- Exo 7 

select  ename, hiredate, day(hiredate) as 'day'
from EMP
order by day asc

