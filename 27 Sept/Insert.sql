USE [SBMS]
GO

/****** Object:  StoredProcedure [dbo].[Catagory_Insert]    Script Date: 9/27/2020 12:50:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Catagory_Insert] 
@Code nvarchar(4) , 
@Name nvarchar(MAX)  
 
AS  
BEGIN  
INSERT INTO  dbo.Catagory(  
Code, Name)  
VALUES  (@Code,@Name)
end
GO


