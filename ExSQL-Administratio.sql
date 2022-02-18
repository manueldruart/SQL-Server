/*---------------------EX-1---------------------*/
CREATE DATABASE SQLServerDBTest
ON PRIMARY
(NAME = 'SQLServerDBTest_Data', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.FORMATION\MSSQL\DATA\SQLServerDBTest_Data.mdf'),

FILEGROUP Archive3 
(NAME = 'Archive 3',FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.FORMATION\MSSQL\DATA\archive3.ndf'),
FILEGROUP Archive4
(NAME = 'Archive 4', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.FORMATION\MSSQL\DATA\archive4.ndf')

LOG ON
(NAME = 'SQLServerDBTest_Log2', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.FORMATION\MSSQL\DATA\SQLServerDBTest_log2.ldf')

USE SQLServerDBTest;
GO
CREATE SCHEMA Users
GO
CREATE TABLE Users.UserInfo
( id int , nom NVARCHAR(25));
GO
CREATE SCHEMA Systems
CREATE TABLE Systems.SystemConfig
( id int , config NVARCHAR(25));
GO
CREATE TABLE OldOrders 
( id int , nom NVARCHAR(25), Date Datetime2) 
ON Archive3;
 
/*---------------------EX-2---------------------*/

SELECT CASE SERVERPROPERTY ('IsIntegratedSecurtityOnly')
WHEN 1 THEN 'WINDOWS AUTHENTIFICATION'
WHEN 0 THEN 'Windows and SQL Server Authentification'
END AS [Authentification MODE]

USE master
CREATE LOGIN Manu 
WITH PASSWORD = 'Password' MUST_CHANGE, 
CHECK_EXPIRATION = ON, CHECK_POLICY = ON,
DEFAULT_DATABASE = SQLServerDBTest

GRANT ALTER ANY DATABASE TO Manu

/*---------------------EX-3---------------------*/
USE MASTER
CREATE DATABASE DbToDrop
USE DbToDrop
CREATE TABLE TabToDrop (id INT, name varchar(25))

GO
CREATE TRIGGER Test
ON DATABASE
FOR DROP_TABLE, ALTER_TABLE
AS 
PRINT 'You must disable Trigger "safety" to drop or alter tables!'   
   ROLLBACK

SELECT * FROM sys.triggers

DROP TABLE TabToDrop
GO
DISABLE TRIGGER Test ON DATABASE
DROP TABLE TabToDrop

