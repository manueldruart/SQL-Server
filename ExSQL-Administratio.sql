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

CREATE SCHEMA Users

CREATE TABLE Users.UserInfo
( id int , nom NVARCHAR(25));

CREATE SCHEMA Systems
CREATE TABLE Systems.SystemConfig
( id int , config NVARCHAR(25));

CREATE TABLE OldOrders 
( id int , nom NVARCHAR(25), Date Datetime2) 
ON Archive3;
 
