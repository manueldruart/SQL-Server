CREATE TABLE MY_EMPLOYEE
(ID         INT NOT NULL UNIQUE,
LAST_NAME   VARCHAR(25),
FIRST_NAME  VARCHAR(25),
USER_ID     VARCHAR(8),
SALARY      INT);

                        /* Ex 2 */

INSERT INTO MY_EMPLOYEE (ID, LAST_NAME, FIRST_NAME,USER_ID,SALARY)
VALUES (1,'Patel','Ralph','rpatel',795),
       (2,'Danes','Betty','bdancs',860),
       (3,'Biri','Ben','bbiri',1100),
       (4,'Newman','Chad','cnewman',750),
       (5,'Ropeburn','Audry','aropebu',1550);

                        /* Ex 4 */

UPDATE MY_EMPLOYEE
SET LAST_NAME = 'Drexler'
WHERE ID = 3;

UPDATE MY_EMPLOYEE
SET SALARY = 1000
WHERE SALARY < 900;

                        /* Ex 5 */

DELETE from MY_EMPLOYEE
where USER_ID = 'bdancs'

                        /* Ex 6 */


BEGIN TRANSACTION
SAVE TRANSACTION save_point
DELETE FROM MY_EMPLOYEE
SELECT * FROM MY_EMPLOYEE
ROLLBACK TRANSACTION save_point
SELECT * FROM MY_EMPLOYEE
DELETE FROM MY_EMPLOYEE
COMMIT;





