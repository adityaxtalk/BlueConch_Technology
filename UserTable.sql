USE [ECommerce]
GO

/****** Object:  Table [dbo].[UserTable]    Script Date: 2/28/2021 8:30:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserTable](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](200) NOT NULL,
	[password] [binary](64) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[middleName] [varchar](50) NULL,
	[lastName] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[phone] [varchar](15) NOT NULL,
	[address1] [varchar](100) NOT NULL,
	[address2] [varchar](100) NULL,
	[city] [varchar](50) NOT NULL,
	[stateName] [varchar](50) NOT NULL,
	[postalCode] [varchar](50) NULL,
 CONSTRAINT [pk_User_UserID] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


