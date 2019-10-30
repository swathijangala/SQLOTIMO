USE master
GO

--To Drop OTIMO Database if it exists on the Server:
IF DB_ID('OTIMO')IS NOT NULL
BEGIN
   PRINT N'Drop database OTIMO'
   DROP DATABASE OTIMO;
 END
 GO

 --To create OTIMO database on the server:
PRINT N'Create database OTIMO'
CREATE DATABASE OTIMO;
GO

-----------------------------------------------------------
--To create Table in OTIMO database:
USE OTIMO
GO
PRINT N'Create table VIEWINGUSER'
Create TABLE VIEWINGUSER ([ViewUser_ID] [int] NOT NULL,
[ViewingUser_TimeStamp_In] [nvarchar] (30) NOT NULL,
[ViewingUser_TimeStamp_Out] [nvarchar] (30) NOT NULL)
GO

PRINT N'Load table VIEWINGUSER'
BEGIN TRANSACTION
INSERT INTO VIEWINGUSER (ViewUser_ID,ViewingUser_TimeStamp_In,ViewingUser_TimeStamp_Out) VALUES (101,'11-26-2018 11:00','11-26-2018 12:10')
INSERT INTO VIEWINGUSER (ViewUser_ID,ViewingUser_TimeStamp_In,ViewingUser_TimeStamp_Out) VALUES (102,'11-20-2018 16:15','11-20-2018 17:35')
INSERT INTO VIEWINGUSER (ViewUser_ID,ViewingUser_TimeStamp_In,ViewingUser_TimeStamp_Out) VALUES (103,'11-21-2018 09:00','11-21-2018 10:30')
INSERT INTO VIEWINGUSER (ViewUser_ID,ViewingUser_TimeStamp_In,ViewingUser_TimeStamp_Out) VALUES (104,'11-26-2018 14:20','11-26-2018 14:30')
INSERT INTO VIEWINGUSER (ViewUser_ID,ViewingUser_TimeStamp_In,ViewingUser_TimeStamp_Out) VALUES (105,'11-19-2018 13:36','11-19-2018 13:58')
COMMIT TRANSACTION

-----------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table IP_ADDRESS'
Create TABLE IP_ADDRESS ([ViewUser_ID] [int] NOT NULL,
[IP_AddressID] [nvarchar] (50) NOT NULL)
GO

PRINT N'Load table IP_ADDRESS'
BEGIN TRANSACTION
INSERT INTO IP_ADDRESS (ViewUser_ID,IP_AddressID) VALUES (101,'172.20.13.89')
INSERT INTO IP_ADDRESS (ViewUser_ID,IP_AddressID) VALUES (102,'172.20.13.20')
INSERT INTO IP_ADDRESS (ViewUser_ID,IP_AddressID) VALUES (103,'172.20.13.35')
INSERT INTO IP_ADDRESS (ViewUser_ID,IP_AddressID) VALUES (104,'172.20.13.67')
INSERT INTO IP_ADDRESS (ViewUser_ID,IP_AddressID) VALUES (105,'172.20.13.130')
COMMIT TRANSACTION

-------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table RegisteredUser'
Create TABLE RegisteredUser ([RegdUser_ID] [int] NOT NULL,
[ViewingUser_ID] [int] NOT NULL,
[RegdUser_FName] [nvarchar] (50) NOT NULL,
[RegdUser_LName] [nvarchar] (50) NOT NULL,
[RegdUser_MInitial] [nvarchar] (50) NULL,
[RegdUser_Address] [nvarchar] (120) NOT NULL,
[RegdUser_Phone] [nvarchar] (50) NULL)
GO

PRINT N'Load table RegisteredUser'
BEGIN TRANSACTION
INSERT INTO RegisteredUser (RegdUser_ID,ViewingUser_ID,RegdUser_FName,RegdUser_LName,RegdUser_MInitial,RegdUser_Address,RegdUser_Phone) VALUES ('501201',101,'Ryan','Scott','James','196 Goffstown Rd','9783426592')
INSERT INTO RegisteredUser (RegdUser_ID,ViewingUser_ID,RegdUser_FName,RegdUser_LName,RegdUser_MInitial,RegdUser_Address,RegdUser_Phone) VALUES ('501202',102,'John','Henley','Mathew','215 Lance Ln','9737428423')
INSERT INTO RegisteredUser (RegdUser_ID,ViewingUser_ID,RegdUser_FName,RegdUser_LName,RegdUser_MInitial,RegdUser_Address,RegdUser_Phone) VALUES ('501203',103,'Cathy','Adams','Anne','158 Hooksett Rd','4164389614')
INSERT INTO RegisteredUser (RegdUser_ID,ViewingUser_ID,RegdUser_FName,RegdUser_LName,RegdUser_MInitial,RegdUser_Address,RegdUser_Phone) VALUES ('501206',104,'Deb','Johnson','Mayo','115 Hitching Post Ln','9452463385')
INSERT INTO RegisteredUser (RegdUser_ID,ViewingUser_ID,RegdUser_FName,RegdUser_LName,RegdUser_MInitial,RegdUser_Address,RegdUser_Phone) VALUES ('501205',105,'Ron','Weasley','James','104 Dunbarton Rd','4673289010')
COMMIT TRANSACTION

-----------------------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table CONTACT'
Create TABLE CONTACT ([ViewUser_ID] [int] NOT NULL,
[User_Contact] [nvarchar] (50) NOT NULL)
GO

PRINT N'Load table CONTACT'
BEGIN TRANSACTION
INSERT INTO CONTACT (ViewUser_ID,User_Contact) VALUES ('101','1-800-888-342')
INSERT INTO CONTACT (ViewUser_ID,User_Contact) VALUES ('102','1-800-888-345')
INSERT INTO CONTACT (ViewUser_ID,User_Contact) VALUES ('103','1-800-888-343')
INSERT INTO CONTACT (ViewUser_ID,User_Contact) VALUES ('104','1-800-888-347')
INSERT INTO CONTACT (ViewUser_ID,User_Contact) VALUES ('105','1-800-888-349')
COMMIT TRANSACTION

-----------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table FEEDBACK'
Create TABLE FEEDBACK([ViewUser_ID] [int] NOT NULL,
[User_Feedback] [nvarchar] (50) NULL)
GO

PRINT N'Load table FEEDBACK'
BEGIN TRANSACTION
INSERT INTO FEEDBACK (ViewUser_ID,User_Feedback) VALUES ('101','NULL')
INSERT INTO FEEDBACK (ViewUser_ID,User_Feedback) VALUES ('102','Excellent')
INSERT INTO FEEDBACK (ViewUser_ID,User_Feedback) VALUES ('103','Good')
INSERT INTO FEEDBACK (ViewUser_ID,User_Feedback) VALUES ('104','NULL')
INSERT INTO FEEDBACK (ViewUser_ID,User_Feedback) VALUES ('105','Bad')
COMMIT TRANSACTION

--------------------------------------------------------------------------------------------------------------