USE [MyDataBase]
GO
/****** Object:  Table [dbo].[OrdersTable]    Script Date: 10/02/2019 22:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersTable](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ItemId] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrdersTable] ON
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (1, 1, 1, 5, 600)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (2, 1, 2, 3, 240)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (3, 1, 3, 2, 200)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (4, 2, 2, 2, 160)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (5, 2, 3, 3, 300)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (6, 2, 4, 4, 400)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (7, 4, 4, 4, 400)
INSERT [dbo].[OrdersTable] ([OrderId], [CustomerId], [ItemId], [Quantity], [TotalPrice]) VALUES (8, 3, 4, 4, 400)
SET IDENTITY_INSERT [dbo].[OrdersTable] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 10/02/2019 22:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Quanity] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderId], [ItemName], [Price], [Quanity]) VALUES (3, N'Expresso', 500, 5)
INSERT [dbo].[Orders] ([OrderId], [ItemName], [Price], [Quanity]) VALUES (4, N'cold', 8657, 857)
INSERT [dbo].[Orders] ([OrderId], [ItemName], [Price], [Quanity]) VALUES (5, N'Hot', 70, 7)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[Items]    Script Date: 10/02/2019 22:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[ItemPrice] [float] NOT NULL,
UNIQUE NONCLUSTERED 
(
	[ItemName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON
INSERT [dbo].[Items] ([Id], [ItemName], [ItemPrice]) VALUES (10, N'Hot', 50)
INSERT [dbo].[Items] ([Id], [ItemName], [ItemPrice]) VALUES (3, N'Regular Coffee', 250)
INSERT [dbo].[Items] ([Id], [ItemName], [ItemPrice]) VALUES (7, N'Cold5', 77)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 10/02/2019 22:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[CustomerAddress] [varchar](50) NOT NULL,
	[CustomerNumber] [varchar](11) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[CustomerName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([Id], [CustomerName], [CustomerAddress], [CustomerNumber]) VALUES (13, N'fgdf', N'fgdfg', N'54345')
INSERT [dbo].[Customers] ([Id], [CustomerName], [CustomerAddress], [CustomerNumber]) VALUES (11, N'zaman', N'ctg', N'4538363')
INSERT [dbo].[Customers] ([Id], [CustomerName], [CustomerAddress], [CustomerNumber]) VALUES (12, N'rafa', N'dhaka', N'2045204')
INSERT [dbo].[Customers] ([Id], [CustomerName], [CustomerAddress], [CustomerNumber]) VALUES (8, N'shuma', N'noukahli', N'026386938')
INSERT [dbo].[Customers] ([Id], [CustomerName], [CustomerAddress], [CustomerNumber]) VALUES (14, N'tyrtyhjj', N'gjhgujg', N'hjgh')
SET IDENTITY_INSERT [dbo].[Customers] OFF
