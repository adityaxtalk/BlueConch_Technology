USE [ECommerce]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 2/28/2021 8:28:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(501,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[productDescription] [varchar](100) NULL,
	[categoryId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[price] [smallmoney] NOT NULL,
	[image] [varchar](200) NULL,
	[productAvail] [bit] NULL,
	[supplierId] [int] NULL,
 CONSTRAINT [PK_product_productId] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_product_categoryId] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_product_categoryId]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_product_supplierId] FOREIGN KEY([supplierId])
REFERENCES [dbo].[Supplier] ([supplierId])
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_product_supplierId]
GO


