USE [ECommerce]
GO

/****** Object:  StoredProcedure [dbo].[AddSupplier]    Script Date: 2/28/2021 8:32:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER   procedure [dbo].[AddSupplier]
 @companyName varchar(50),
 @contactName varchar(50),
 @contactNumber varchar(15),
 @address1 varchar(100),
 @address2 varchar(100)=null,
 @city varchar(50),
 @state varchar(50),
 @PostalCode varchar(20),
 @email varchar(40)
 as 
 begin
 set nocount on
 begin try
  insert into Supplier(companyName,contactName,contactNumber,
  address1,address2,city,state,PostalCode,email)
  values(@companyName,@contactName,@contactNumber,
  @address1,@address2,@city,@state,@PostalCode,@email)
 end try
 begin catch
   print error_message()
 end catch
end
GO


