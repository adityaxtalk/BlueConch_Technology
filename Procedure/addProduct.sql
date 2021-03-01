USE [ECommerce]
GO

/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 2/28/2021 8:32:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER   procedure [dbo].[AddProduct]
@productName varchar(50),
@productDescription varchar(50)=null,
@categoryId int,
@quantity int=0,
@price smallmoney,
@image varchar(200),
@productAvail bit,
@supplierId int
as
begin set nocount on
begin try
  insert into Product(productName,productDescription,categoryId,Quantity,price,image,productAvail,supplierId)
  values(@productName,@productDescription,@categoryId,@Quantity,@price,@image,@productAvail,@supplierId)
end try
begin catch
 print error_message()
end catch
end
GO


