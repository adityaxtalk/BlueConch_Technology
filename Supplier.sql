USE [ECommerce]
GO

/****** Object:  Table [dbo].[Supplier]    Script Date: 2/28/2021 8:28:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Supplier](
	[supplierId] [int] IDENTITY(301,1) NOT NULL,
	[companyName] [varchar](50) NULL,
	[contactName] [varchar](50) NULL,
	[contactNumber] [varchar](15) NULL,
	[address1] [varchar](100) NOT NULL,
	[address2] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[PostalCode] [varchar](20) NULL,
	[email] [varchar](40) NULL,
 CONSTRAINT [PK_Supplier_supplierId] PRIMARY KEY CLUSTERED 
(
	[supplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


