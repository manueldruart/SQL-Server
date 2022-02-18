/* Chapitre 09-Gestion des Tables*/
/*--------------EX-1----------------*/
CREATE TABLE DEPARTEMENT 
(ID int, NAME VARCHAR(25));

exec sp_columns DEPARTEMENT;

/*--------------EX-2----------------*/

INSERT INTO DEPARTEMENT(ID,NAME)
            SELECT DEPTNO, DNAME
            FROM DEPT
SELECT * FROM DEPARTEMENT;

/*--------------EX-3----------------*/

CREATE TABLE EMPLOYEE (
    ID INT, LAST_NAME VARCHAR(25), FIRST_NAME VARCHAR(25), DEPT_ID INT

)
exec sp_columns EMPLOYEE;

/*--------------EX-4----------------*/

ALTER TABLE EMPLOYEE 
ALTER COLUMN LAST_NAME VARCHAR(50)
exec sp_columns EMPLOYEE;

/*--------------EX-5----------------*/

exec sp_tables
