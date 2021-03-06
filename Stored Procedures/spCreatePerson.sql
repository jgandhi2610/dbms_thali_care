USE [Thali_Care_Database]
GO
/****** Object:  StoredProcedure [dbo].[spCreatePerson]    Script Date: 12/9/2015 12:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[spCreatePerson]
@firstName varchar(50), @lastName varchar(50), @middleName varchar(50), @gender char(1), @contactDetails int, @streetName varchar(20), @city varchar(20), @zip int, @email_address varchar(200)
as
Begin
Insert into Person_Details(First_Name,Last_Name,Middle_Name,Gender,Contact_Details,Street_Name,City,Zip, Email_Address)
values(@firstName,@lastName,@middleName,@gender,@contactDetails,@streetName,@city,@zip, @email_address);
PRINT N'Entry successfully added to Person_Details table.';
End