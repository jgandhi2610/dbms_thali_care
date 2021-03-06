USE [Thali_Care_Database]
GO
/****** Object:  StoredProcedure [dbo].[spCreateTransfusionCycle]    Script Date: 12/9/2015 1:48:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[spCreateTransfusionCycle]

@PatientId int, @BloodTransfusionId int, @TestId int,@TransfusionLevelId int, @TransfusionGroupId int 
                     
AS 
BEGIN

   INSERT INTO Transfusion_Cycle_Details
       (
         Patient_ID,
		 Blood_Transfusion_Level_ID,
		 Test_ID,
		 Transfusion_Level_ID,
		 Transfusion_Group_Details_ID,
		 Date_Of_Transfusion,
		 Next_Transfusion_Date           
       ) 
  VALUES 
       ( 
        @PatientId,
		@BloodTransfusionId,
		@TestId,
		@TransfusionLevelId,
		@TransfusionGroupId,
		GETDATE(), 
		DATEADD(day, 15, GETDATE())
       ) ;
        PRINT N'Entry successfully added to Transfusion_Cycle_Details table.';
END
