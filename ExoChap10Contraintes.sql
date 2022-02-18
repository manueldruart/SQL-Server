/* Chapitre 10-Contraintes*/
/*--------------EX-1----------------*/
ALTER TABLE EMPLOYEE
ALTER COLUMN ID INT NOT NULL;
ALTER TABLE EMPLOYEE
ADD CONSTRAINT EMPLOYEE_ID_pk
PRIMARY KEY(ID)

exec sp_columns EMPLOYEE;
exec sp_columns DEPT;

/*--------------EX-2----------------*/
ALTER TABLE DEPT
ALTER COLUMN DEPTNO INT NOT NULL;
ALTER TABLE DEPT
ADD CONSTRAINT dept_deptno_pk
PRIMARY KEY (deptno);
ALTER TABLE EMPLOYEE
ADD CONSTRAINT EMPLOYEE_LAST_NAME_fk
FOREIGN KEY (DEPT_ID)
REFERENCES DEPT (DEPTNO);

sp_pkeys DEPT
sp_fkeys DEPT

/*--------------EX-3----------------*/

SELECT * FROM sysobjects

/*--------------EX-4----------------*/
ALTER TABLE EMPLOYEE
ADD Salary int ;