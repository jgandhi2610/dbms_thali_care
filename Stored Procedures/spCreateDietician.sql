USE [Thali_Care_Database]
GO
/****** Object:  StoredProcedure [dbo].[spCreateDietician]    Script Date: 12/9/2015 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[spCreateDietician]
@firstName varchar(50), @lastName varchar(50), @middleName varchar(50), @gender char(1), @contactDetails int, @streetName varchar(20), @city varchar(20), @zip int,@hospitalId int,@fees decimal(8,2), @email_address varchar(200)
as
Begin
Insert into Dietician_Details(First_Name,Last_Name,Middle_Name,Gender,Contact_Details,Street_Name,City,Zip,Hospital_Id,Fees, Email_Address)
values(@firstName,@lastName,@middleName,@gender,@contactDetails,@streetName,@city,@zip,@hospitalId,@fees, @email_address);
PRINT N'Entry successfully added to Dietician table.';	
end




IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID('spCreateNurse'))
BEGIN
   DROP PROCEDURE spCreateNurse
END
SET ANSI_NULLS ON
