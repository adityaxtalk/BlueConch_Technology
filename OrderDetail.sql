USE [ECommerce]
GO

/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/28/2021 8:19:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetail](
	[orderDetailID] [int] IDENTITY(901,1) NOT NULL,
	[orderId] [int] NULL,
	[productID] [int] NULL,
	[Price] [smallmoney] NOT NULL,
	[Quantity] [int] NULL,
	[totalMoney] [smallmoney] NOT NULL,
	[BillDate] [datetime2](7) NULL,
	[shipdate] [date] NULL,
 CONSTRAINT [PK_orderDetail_orderDetailID] PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (sysutcdatetime()) FOR [BillDate]
GO

ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_orderDetail_orderDetailID] FOREIGN KEY([orderId])
REFERENCES [dbo].[orderTable] ([orderId])
GO

ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_orderDetail_orderDetailID]
GO

ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_orderDetail_productID] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productId])
GO

ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_orderDetail_productID]
GO

ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [CHK_orderDetail_qty] CHECK  (([Quantity]>=(1) AND [Quantity]<=(30)))
GO

ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [CHK_orderDetail_qty]
GO


