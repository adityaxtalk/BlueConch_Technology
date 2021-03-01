USE [ECommerce]
GO

/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 2/28/2021 8:33:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   Procedure [dbo].[AddUser]
  @email varchar(200),
  @password nvarchar(64),
  @firstName varchar(50),
  @middleName varchar(50)=NULL,
  @lastName varchar(50),
  @dateOfBirth Date,
  @phone varchar(15),
  @address1 varchar(100),
  @address2 varchar(100)=Null,
  @city varchar(50),
  @state varchar(50),
  @postal varchar(50),
  @response varchar(50) output
as 
begin 
   set Nocount on
   begin try
    Insert into UserTable 
		(email,password,firstName,middleName,lastName,DateOfBirth,phone,
		address1,address2,city,stateName,postalCode)
		values(@email,HASHBYTES('SHA2_512',@password),@firstName,@middleName,@lastName,@dateOfBirth,@phone,
		@address1,@address2,@city,@state,@postal)
		set @response='Success'
		end try
		Begin catch
		  set @response=ERROR_MESSAGE()
		end catch
end
GO


