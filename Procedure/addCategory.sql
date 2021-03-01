USE [ECommerce]
GO

/****** Object:  StoredProcedure [dbo].[addCategory]    Script Date: 2/28/2021 8:30:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   procedure [dbo].[addCategory]
@categoryId int,
@categoryName varchar(100),
@description varchar(200)=null,
@images varchar(200)=null
as 
begin
 set nocount on
  begin try
   insert into Category(categoryId,CategoryName,Description,Images)
   values(@categoryId,@categoryName,@description,@images)

  end try
  begin catch
   print error_message()
  end catch
end
GO


