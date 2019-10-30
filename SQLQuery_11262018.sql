USE master
GO
IF DB_ID('OTIMO')IS NOT NULL
BEGIN
   PRINT N'Drop database OTIMO'
   DROP DATABASE OTIMO;
 END
 GO

PRINT N'Create database OTIMO'
CREATE DATABASE OTIMO;
GO

-----------------------------------------------------------

USE OTIMO
GO
PRINT N'Create table viewing_user'
Create TABLE viewing_user ([viewing_user_id] [int] NOT NULL,
[occurence] [nvarchar] (50),
[timestamp_In] [nvarchar] (30) NOT NULL,
[timestamp_Out] [nvarchar] (30) NOT NULL,
[retDBInfo] [nvarchar] (30),
[updateDBInfo] [nvarchar] (30))
GO

PRINT N'Load table viewing_user'
BEGIN TRANSACTION
INSERT INTO viewing_user (viewing_user_id,occurence,timestamp_In,timestamp_Out,retDBInfo,updateDBInfo) VALUES (101,'5','11-26-2018 11:00','11-26-2018 12:10','NULL','NULL')
INSERT INTO viewing_user (viewing_user_id,occurence,timestamp_In,timestamp_Out,retDBInfo,updateDBInfo) VALUES (102,'7','11-20-2018 16:15','11-20-2018 17:35','NULL','NULL')
INSERT INTO viewing_user (viewing_user_id,occurence,timestamp_In,timestamp_Out,retDBInfo,updateDBInfo) VALUES (103,'2','11-21-2018 09:00','11-21-2018 10:30','NULL','NULL')
INSERT INTO viewing_user (viewing_user_id,occurence,timestamp_In,timestamp_Out,retDBInfo,updateDBInfo) VALUES (104,'10','11-26-2018 14:20','11-26-2018 14:30','NULL','NULL')
INSERT INTO viewing_user (viewing_user_id,occurence,timestamp_In,timestamp_Out,retDBInfo,updateDBInfo) VALUES (105,'15','11-19-2018 13:36','11-19-2018 13:58','NULL','NULL')
COMMIT TRANSACTION

-----------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table ipaddress'
Create TABLE ipaddress ([viewing_user_id] [int] NOT NULL,
[ipaddress] [nvarchar] (50) NOT NULL,
 [retDBInfo] [nvarchar] (30) NOT NULL)
GO

PRINT N'Load table ipaddress'
BEGIN TRANSACTION
INSERT INTO ipaddress (viewing_user_id,ipaddress,retDBInfo) VALUES (101,'172.20.13.89','NULL')
INSERT INTO ipaddress (viewing_user_id,ipaddress,retDBInfo) VALUES (102,'172.20.13.20','NULL')
INSERT INTO ipaddress (viewing_user_id,ipaddress,retDBInfo) VALUES (103,'172.20.13.35','NULL')
INSERT INTO ipaddress (viewing_user_id,ipaddress,retDBInfo) VALUES (104,'172.20.13.67','NULL')
INSERT INTO ipaddress (viewing_user_id,ipaddress,retDBInfo) VALUES (105,'172.20.13.130','NULL')
COMMIT TRANSACTION

-------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table registered_user_ipaddress'
Create TABLE registered_user_ipaddress ([user_id] [int] NOT NULL,
[ipaddress] [nvarchar] (50) NOT NULL,
[viewing_user_id] [int] NOT NULL,
[user_password] [nvarchar] (50) NOT NULL,
[user_firstname] [nvarchar] (50) NOT NULL,
[user_lastname] [nvarchar] (30) NOT NULL,
[user_phone] [nvarchar] (30),
[user_email] [nvarchar] (50) NOT NULL,
[retDBInfo] [nvarchar] (30),
[updateDBInfo] [nvarchar] (30))
GO

PRINT N'Load table registered_user_ipaddress'
BEGIN TRANSACTION
INSERT INTO registered_user_ipaddress (user_id,ipaddress,viewing_user_id,user_password,user_firstname,user_lastname,user_phone,user_email,retDBInfo,updateDBInfo) VALUES ('501201','172.20.13.89',101,'ryan201','ryan','scott','1783426592','ryanscott145@gmail.com','NULL','NULL')
INSERT INTO registered_user_ipaddress (user_id,ipaddress,viewing_user_id,user_password,user_firstname,user_lastname,user_phone,user_email,retDBInfo,updateDBInfo) VALUES ('501202','172.20.13.20',102,'Ben202','Ben','Blooms','9734257632','benblooms2134@gmail.com','NULL','NULL')
INSERT INTO registered_user_ipaddress (user_id,ipaddress,viewing_user_id,user_password,user_firstname,user_lastname,user_phone,user_email,retDBInfo,updateDBInfo) VALUES ('501203','172.20.13.35',103,'Sam203','Sam','Worthington','4325873109','samworthington3475@gmail.com','NULL','NULL')
INSERT INTO registered_user_ipaddress (user_id,ipaddress,viewing_user_id,user_password,user_firstname,user_lastname,user_phone,user_email,retDBInfo,updateDBInfo) VALUES ('501204','172.20.13.67',104,'Rick204','Rick','Atkinson','2734890124','rickatkinson0906@gmail.com','NULL','NULL')
INSERT INTO registered_user_ipaddress (user_id,ipaddress,viewing_user_id,user_password,user_firstname,user_lastname,user_phone,user_email,retDBInfo,updateDBInfo) VALUES ('501205','172.20.13.130',105,'Lucy205','Lucy','Adams','9731258704','lucyadams371@gmail.com','NULL','NULL')
COMMIT TRANSACTION

-----------------------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table text'
Create TABLE text ([text_name] [nvarchar] (30) NOT NULL,
[text_size] [nvarchar] (50) NOT NULL,
[text_edit] [nvarchar] (30) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL)
GO

PRINT N'Load table text'
BEGIN TRANSACTION
INSERT INTO text (text_name,text_size,text_edit,retDBInfo) VALUES ('ryan','50','RYAN','NULL')
COMMIT TRANSACTION

-----------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table Image'
Create TABLE image([image_name] [nvarchar] (30) NOT NULL,
[image_size] [nvarchar] (50) NOT NULL,
[image_edit] [nvarchar] (50) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL)
GO

PRINT N'Load table image'
BEGIN TRANSACTION
INSERT INTO image (image_name,image_size,image_edit,retDBInfo) VALUES ('scott','120','SCOTTTS','NULL')
COMMIT TRANSACTION

--------------------------------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table video'
Create TABLE vedio([video_name] [nvarchar] (30) NOT NULL,
[video_size] [nvarchar] (50) NOT NULL,
[video_edit] [nvarchar] (50) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL)
GO

PRINT N'Load table video'
BEGIN TRANSACTION
INSERT INTO vedio (video_name,video_size,video_edit,retDBInfo) VALUES ('schedule','70','SCHEDULE','NULL')
COMMIT TRANSACTION
---------------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table registered_user'
Create TABLE registered_user ([viewing_user_id] [int],
[my_home] [nvarchar] (10)  NOT NULL,
[course_ID] [nvarchar] (30) NOT NULL,
[advisor_ID] [nvarchar] (30) NOT NULL,
[course_number] [nvarchar] (30) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL,
[updateDBInfo] [nvarchar] (30) NOT NULL)
GO


PRINT N'Load table registered_user'
BEGIN TRANSACTION
INSERT INTO registered_user (my_home,course_ID,advisor_ID,course_number,retDBInfo,updateDBInfo) VALUES (30,'501','45','301','NULL','NULL')
INSERT INTO registered_user (my_home,course_ID,advisor_ID,course_number,retDBInfo,updateDBInfo) VALUES (31,'502','46','302','NULL','NULL')
INSERT INTO registered_user (my_home,course_ID,advisor_ID,course_number,retDBInfo,updateDBInfo) VALUES (32,'503','47','303','NULL','NULL')
INSERT INTO registered_user (my_home,course_ID,advisor_ID,course_number,retDBInfo,updateDBInfo) VALUES (33,'504','48','304','NULL','NULL')
INSERT INTO registered_user (my_home,course_ID,advisor_ID,course_number,retDBInfo,updateDBInfo) VALUES (34,'505','49','305','NULL','NULL')
COMMIT TRANSACTION
---------------------------------------------------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table advisor'
Create TABLE advisor ([advisor_ID] [int] NOT NULL,
[username] [nvarchar] (30) NOT NULL,
[password] [nvarchar] (30) NOT NULL,
[firstname] [nvarchar] (30) NOT NULL,
[phone_number] [nvarchar] (30) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL,
[updateDBInfo] [nvarchar] (30) NOT NULL)
GO


PRINT N'Load table advisor'
BEGIN TRANSACTION
INSERT INTO advisor (advisor_ID,username,password,firstname,phone_number,retDBInfo,updateDBInfo) VALUES (40,'scar','Amio1','john','1234567892','NULL','NULL')
INSERT INTO advisor (advisor_ID,username,password,firstname,phone_number,retDBInfo,updateDBInfo) VALUES (41,'ryan','Amio2','hasan','1234567893','NULL','NULL')
INSERT INTO advisor (advisor_ID,username,password,firstname,phone_number,retDBInfo,updateDBInfo) VALUES (42,'rohan','Amio3','vanii','1234567862','NULL','NULL')
INSERT INTO advisor (advisor_ID,username,password,firstname,phone_number,retDBInfo,updateDBInfo) VALUES (43,'prawn','Amio4','rachal','1234567123','NULL','NULL')
INSERT INTO advisor (advisor_ID,username,password,firstname,phone_number,retDBInfo,updateDBInfo) VALUES (44,'arun','Amio5','stany','1234567843','NULL','NULL')
COMMIT TRANSACTION
-----------------------------------------------------------------------------
USE OTIMO
GO
PRINT N'Create table application_administrator'
Create TABLE application_administrator ([viewing_user_id] [int] NOT NULL,
[manage_application] [nvarchar] (30) NOT NULL,
[maintain_application] [nvarchar] (30) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL,
[updateDBInfo] [nvarchar] (30) NOT NULL)
GO


PRINT N'Load table application_administrator'
BEGIN TRANSACTION
INSERT INTO application_administrator (viewing_user_id,manage_application,maintain_application,retDBInfo,updateDBInfo) VALUES (601,'process','course','NULL','NULL')
INSERT INTO application_administrator (viewing_user_id,manage_application,maintain_application,retDBInfo,updateDBInfo) VALUES (602,'class','course','NULL','NULL')
INSERT INTO application_administrator (viewing_user_id,manage_application,maintain_application,retDBInfo,updateDBInfo) VALUES (603,'section','course','NULL','NULL')
INSERT INTO application_administrator (viewing_user_id,manage_application,maintain_application,retDBInfo,updateDBInfo) VALUES (604,'process','course','NULL','NULL')
INSERT INTO application_administrator (viewing_user_id,manage_application,maintain_application,retDBInfo,updateDBInfo) VALUES (605,'process','course','NULL','NULL')
COMMIT TRANSACTION
-------------------------------------------

USE OTIMO
GO
PRINT N'Create table system_administrator'
Create TABLE system_administrator ([viewing_user_id] [int] NOT NULL,
[manage_system] [nvarchar] (30) NOT NULL,
[updating_system] [nvarchar] (30) NOT NULL,
[retDBInfo] [nvarchar] (30) NOT NULL,
[updateDBInfo] [nvarchar] (30) NOT NULL)
GO

PRINT N'Load table system_administrator'
BEGIN TRANSACTION
INSERT INTO system_administrator (viewing_user_id,manage_system,updating_system,retDBInfo,updateDBInfo) VALUES (701,'courses','backup','NULL','NULL')
INSERT INTO system_administrator  (viewing_user_id,manage_system,updating_system,retDBInfo,updateDBInfo) VALUES (702,'otimo','backup','NULL','NULL')
INSERT INTO system_administrator  (viewing_user_id,manage_system,updating_system,retDBInfo,updateDBInfo) VALUES (703,'financial','backup','NULL','NULL')
INSERT INTO system_administrator (viewing_user_id,manage_system,updating_system,retDBInfo,updateDBInfo) VALUES (704,'student','backup','NULL','NULL')
INSERT INTO system_administrator  (viewing_user_id,manage_system,updating_system,retDBInfo,updateDBInfo) VALUES (705,'grade','backup','NULL','NULL')
COMMIT TRANSACTION