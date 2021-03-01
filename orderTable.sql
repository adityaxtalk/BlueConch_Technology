USE [ECommerce]
GO

/****** Object:  Table [dbo].[orderTable]    Script Date: 2/28/2021 8:27:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orderTable](
	[orderId] [int] IDENTITY(701,1) NOT NULL,
	[userId] [int] NULL,
	[orderDate] [datetime2](7) NULL,
	[shipdate] [date] NULL,
	[paymentMode] [varchar](20) NULL,
	[Paid] [bit] NULL,
 CONSTRAINT [PK_orderTable_orderId] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orderTable] ADD  DEFAULT (sysutcdatetime()) FOR [orderDate]
GO

ALTER TABLE [dbo].[orderTable]  WITH CHECK ADD  CONSTRAINT [FK_OrderTable_userID] FOREIGN KEY([userId])
REFERENCES [dbo].[UserTable] ([userID])
GO

ALTER TABLE [dbo].[orderTable] CHECK CONSTRAINT [FK_OrderTable_userID]
GO


