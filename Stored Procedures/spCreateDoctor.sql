USE [Thali_Care_Database]
GO
/****** Object:  StoredProcedure [dbo].[spCreateDoctor]    Script Date: 12/9/2015 1:07:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[spCreateDoctor]
@firstName varchar(50), @lastName varchar(50), @middleName varchar(50), @gender char(1), @contactDetails int, @streetName varchar(20), @city varchar(20), @zip int,@hospitalId int,@fees decimal(8,2),@type varchar(50), @email_address varchar(200)
as
Begin
Insert into Doctor_Details(First_Name,Last_Name,Middle_Name,Gender,Contact_Details,Street_Name,City,Zip,Hospital_Id,Fees,Type, Email_Address)
values(@firstName,@lastName,@middleName,@gender,@contactDetails,@streetName,@city,@zip,@hospitalId,@fees,@type,@email_address);
PRINT N'Entry successfully added to Doctor table.';	
end