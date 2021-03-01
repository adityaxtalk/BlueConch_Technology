USE [ECommerce]
GO
/****** Object:  Trigger [dbo].[orderPlaced]    Script Date: 2/28/2021 8:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   trigger [dbo].[orderPlaced] on [dbo].[OrderDetail]
after insert 
as
begin 
 Select 'Your order is placed successfully. Expected date of arrival is '+CONVERT(varchar,shipdate)  as Confirmation from inserted
end
