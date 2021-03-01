USE [ECommerce]
GO

/****** Object:  UserDefinedFunction [dbo].[showOrder]    Script Date: 2/28/2021 8:34:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER   function [dbo].[showOrder](@email varchar(200))
returns table as return
(
	 select OD.BillDate,OT.orderId,UT.firstName+' '+UT.lastName as Customer,UT.address1+', '+coalesce(UT.address2+', ','')+UT.city+', '+UT.stateName+', '+UT.postalCode as Address ,P.productName,C.CategoryName,OD.Quantity,OD.totalMoney,OD.shipDate 
		from OrderDetail OD
		join orderTable OT
		on OD.orderId=OT.orderId
		join UserTable UT
		on OT.userId=UT.userID
		join Product P
		on OD.productID=P.productId
		join Category C
		on C.categoryId=P.categoryId
		where UT.email=@email
)
GO


