USE [ECommerce]
GO

/****** Object:  StoredProcedure [dbo].[placeOrder]    Script Date: 2/28/2021 8:33:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   procedure [dbo].[placeOrder]
@email varchar(100),
@productName varchar(20),
@quantity int,
@paymentMode varchar(20)
as 
begin
    set nocount on
	declare @orderId int,@productId int,@userId int
    declare @price smallmoney,@total smallmoney
	declare @paid bit
	if not exists (select * from Product where productName=@productName and productAvail=0)
	begin
		begin try
  	
			 select @productId=productId,@price=price from Product where productName=@productName
			select @userId=userID from UserTable where email=@email
	 insert into OrderTable(userID,shipdate,paymentMode,Paid)
	 values(@userId,DATEADD(Day,5,getdate()),@paymentMode, case Lower(@paymentMode)
	   when 'net banking' then 1
	   when 'UPI' then 1
	   when 'cash' then 0
	   else 0
	 end)
	 insert into OrderDetail(orderID,productID,Price,Quantity,totalMoney,shipdate)
	 values(IDENT_CURRENT('OrderTable'),@productId,@price,@quantity,(@price*@quantity),DATEADD(Day,5,getdate()))
  end try
  begin catch
		print error_message()
  end catch
  end
  else
  begin
     RaisError('Product is not available sorry for the inconvenience',10,1);
	 
  end
end
GO


