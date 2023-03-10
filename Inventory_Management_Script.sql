USE [Invent_Manage_System]
GO
/****** Object:  Table [dbo].[Catagory]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catagory](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](100) NOT NULL,
	[CatRemarks] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Unit_ID] [int] NULL,
	[Rate] [decimal](18, 5) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK__Product__B40CC6ED0EE87BBC] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuppCust]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppCust](
	[SuppCust_ID] [int] IDENTITY(1,1) NOT NULL,
	[SuppCust_Name] [varchar](100) NULL,
	[Email] [nvarchar](300) NULL,
	[SuppCust_Type] [varchar](40) NULL,
	[Phone] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[SuppCustAddress] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[SuppCust_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction_Master]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction_Master](
	[TransactionMasterID] [int] IDENTITY(1,1) NOT NULL,
	[SuppCust_ID] [int] NOT NULL,
	[TransactionDate] [date] NULL,
	[Type] [nchar](10) NULL,
	[GrandTotal] [decimal](18, 2) NULL,
	[Vat] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Transaction_Master] PRIMARY KEY CLUSTERED 
(
	[TransactionMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetail](
	[TransactionDetailID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionMasterID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TransactionDetail] PRIMARY KEY CLUSTERED 
(
	[TransactionDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Unit_ID] [int] IDENTITY(1,1) NOT NULL,
	[Unit_Name] [varchar](50) NOT NULL,
	[Alias] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Unit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Passwords] [varbinary](max) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone] [int] NULL,
	[IsAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catagory] ON 

INSERT [dbo].[Catagory] ([CatID], [CatName], [CatRemarks]) VALUES (1, N'Food', N'Test1')
INSERT [dbo].[Catagory] ([CatID], [CatName], [CatRemarks]) VALUES (2, N'Furniture', N'Test2')
INSERT [dbo].[Catagory] ([CatID], [CatName], [CatRemarks]) VALUES (4, N'Beverages', N'Test4')
SET IDENTITY_INSERT [dbo].[Catagory] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [CatID], [ProductName], [Unit_ID], [Rate], [Quantity], [Remarks]) VALUES (5, 1, N'Chana Daal', 1, CAST(500.00000 AS Decimal(18, 5)), CAST(0.00 AS Decimal(18, 2)), N'For eating')
INSERT [dbo].[Product] ([ProductID], [CatID], [ProductName], [Unit_ID], [Rate], [Quantity], [Remarks]) VALUES (1007, 2, N'Bed', 2, CAST(25000.00000 AS Decimal(18, 5)), CAST(95689.00 AS Decimal(18, 2)), N'Bed of furniture')
INSERT [dbo].[Product] ([ProductID], [CatID], [ProductName], [Unit_ID], [Rate], [Quantity], [Remarks]) VALUES (1008, 4, N'Royal Stage', 2, CAST(21000.00000 AS Decimal(18, 5)), CAST(42234.00 AS Decimal(18, 2)), N'Counted in numbers of bottles')
INSERT [dbo].[Product] ([ProductID], [CatID], [ProductName], [Unit_ID], [Rate], [Quantity], [Remarks]) VALUES (1009, 2, N'table', 1, CAST(300.00000 AS Decimal(18, 5)), CAST(17.00 AS Decimal(18, 2)), N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[SuppCust] ON 

INSERT [dbo].[SuppCust] ([SuppCust_ID], [SuppCust_Name], [Email], [SuppCust_Type], [Phone], [Mobile], [SuppCustAddress]) VALUES (1, N'Bishal', N'bisu12@gmail.com', N'Supplier', N'7777', N'7777', N'Harishiddhi')
INSERT [dbo].[SuppCust] ([SuppCust_ID], [SuppCust_Name], [Email], [SuppCust_Type], [Phone], [Mobile], [SuppCustAddress]) VALUES (2, N'Deb', N'deb21@gmail.com', N'Customer', N'777777', N'9886357221', N'Japan')
SET IDENTITY_INSERT [dbo].[SuppCust] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction_Master] ON 

INSERT [dbo].[Transaction_Master] ([TransactionMasterID], [SuppCust_ID], [TransactionDate], [Type], [GrandTotal], [Vat], [Discount]) VALUES (1020, 2, CAST(N'2022-08-27' AS Date), N'Customer  ', CAST(17634.60 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Transaction_Master] ([TransactionMasterID], [SuppCust_ID], [TransactionDate], [Type], [GrandTotal], [Vat], [Discount]) VALUES (1021, 2, CAST(N'2022-08-27' AS Date), N'Customer  ', CAST(6.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Transaction_Master] ([TransactionMasterID], [SuppCust_ID], [TransactionDate], [Type], [GrandTotal], [Vat], [Discount]) VALUES (2002, 1, CAST(N'2022-09-01' AS Date), N'Supplier  ', CAST(5248458.54 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Transaction_Master] ([TransactionMasterID], [SuppCust_ID], [TransactionDate], [Type], [GrandTotal], [Vat], [Discount]) VALUES (2003, 1, CAST(N'2022-09-01' AS Date), N'Supplier  ', CAST(329111.64 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Transaction_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactionDetail] ON 

INSERT [dbo].[TransactionDetail] ([TransactionDetailID], [TransactionMasterID], [ProductID], [Quantity], [Rate], [Total]) VALUES (1021, 1020, 1007, CAST(4545.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(18180.00 AS Decimal(18, 2)))
INSERT [dbo].[TransactionDetail] ([TransactionDetailID], [TransactionMasterID], [ProductID], [Quantity], [Rate], [Total]) VALUES (1022, 1021, 1009, CAST(3.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[TransactionDetail] ([TransactionDetailID], [TransactionMasterID], [ProductID], [Quantity], [Rate], [Total]) VALUES (2002, 2002, 1007, CAST(234.00 AS Decimal(18, 2)), CAST(23123.00 AS Decimal(18, 2)), CAST(5410782.00 AS Decimal(18, 2)))
INSERT [dbo].[TransactionDetail] ([TransactionDetailID], [TransactionMasterID], [ProductID], [Quantity], [Rate], [Total]) VALUES (2003, 2003, 1008, CAST(234.00 AS Decimal(18, 2)), CAST(2131.00 AS Decimal(18, 2)), CAST(498654.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TransactionDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([Unit_ID], [Unit_Name], [Alias], [Remarks]) VALUES (1, N'Kilo Gram', N'Kg', N'Test1')
INSERT [dbo].[Unit] ([Unit_ID], [Unit_Name], [Alias], [Remarks]) VALUES (2, N'Number', N'No.', N'Test2')
INSERT [dbo].[Unit] ([Unit_ID], [Unit_Name], [Alias], [Remarks]) VALUES (3, N'Litre', N'Ltr', N'Test3')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Passwords], [Email], [Phone], [IsAdmin]) VALUES (1, N'Bishal', 0x84D0AC1584B67F45C653547849EB84D70D2D110774BDBD0511E6140EFF214CD47BF58CB66BCF81D56F6538E7501DC68E397C4DD9A23006273689AE0EAEDFBD87, N'bis@gmail.com', 98863572, 1)
INSERT [dbo].[User] ([ID], [UserName], [Passwords], [Email], [Phone], [IsAdmin]) VALUES (3, N'Admin', 0xDF81D2184158550C42C0356C53CCC871915A2F09666774730AD779E946FFEF1D0283DE5EB441197B2058D0705D55333AB79113FBAACBFFD8B017BA725835D65B, N'admin@gmail.com', 98863572, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_CatagoryName]    Script Date: 9/1/2022 3:36:13 PM ******/
ALTER TABLE [dbo].[Catagory] ADD  CONSTRAINT [UK_CatagoryName] UNIQUE NONCLUSTERED 
(
	[CatName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ProductName]    Script Date: 9/1/2022 3:36:13 PM ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [UK_ProductName] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_UnitName]    Script Date: 9/1/2022 3:36:13 PM ******/
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [UK_UnitName] UNIQUE NONCLUSTERED 
(
	[Unit_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D10534CABA2C91]    Script Date: 9/1/2022 3:36:13 PM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Unit_ID__4E88ABD4] FOREIGN KEY([Unit_ID])
REFERENCES [dbo].[Unit] ([Unit_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Unit_ID__4E88ABD4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Catagory] FOREIGN KEY([CatID])
REFERENCES [dbo].[Catagory] ([CatID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Catagory]
GO
ALTER TABLE [dbo].[Transaction_Master]  WITH CHECK ADD  CONSTRAINT [FK_SuppCust_ID] FOREIGN KEY([SuppCust_ID])
REFERENCES [dbo].[SuppCust] ([SuppCust_ID])
GO
ALTER TABLE [dbo].[Transaction_Master] CHECK CONSTRAINT [FK_SuppCust_ID]
GO
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_ProductID]
GO
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_Transaction_Master] FOREIGN KEY([TransactionMasterID])
REFERENCES [dbo].[Transaction_Master] ([TransactionMasterID])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_Transaction_Master]
GO
/****** Object:  StoredProcedure [dbo].[SearchCustSupplier]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create   Procedure [dbo].[SearchCustSupplier]
	(
	@search varchar (300),
	@type varchar (200)
	--@Customer_ID Int,
	--@Supplier_ID Int
	)

	As 
		Begin 
			
			Select C.Cust_ID, C.CustName, C.CustEmail, C.CustPhone, C.CustMobile, C.CustAddress,
			S.Supp_ID, S.Supp_Name, S.Supp_Email, S.Supp_Phone, S.Supp_Mobile, S.Supp_Address 

			From 

			Customer As C Inner Join Supplier As S ON S.Supp_ID = C.Cust_ID
			Where C.CustName Like @search And S.Supp_Name Like @search
		
		End
GO
/****** Object:  StoredProcedure [dbo].[spCatagory]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spCatagory](
@CatagoryName Varchar (50),
@CatagoryRemarks Varchar(1000))
As
	Begin
	
	Insert Into Catagory (CatName, CatRemarks) Values
	(@CatagoryName, @CatagoryRemarks)

	End
GO
/****** Object:  StoredProcedure [dbo].[spCustomer]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spCustomer]
(@custName varchar (100),
@custEmail varchar (200), 
@Type varchar(300),
@custPhone Int,
@custMobile Int, 
@custAddress Varchar (400))
As 
	Begin 

		Insert Into Customer (CustName, CustEmail, Cust_type, CustPhone, CustMobile, CustAddress)
		Values (@custName, @custEmail, @Type, @custPhone, @custMobile, @custAddress)

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCatagory]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spDeleteCatagory]
(
@CatID Int
)
As
	Begin
	Delete From Catagory Where CatID = @CatID

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCustomer]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spDeleteCustomer]
(
@Cust_ID int
)
As
	Begin
	Delete From Customer Where Cust_ID = @Cust_ID

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteProduct]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spDeleteProduct]
(
@ProductID int
)
As
	Begin
	Delete From Product Where ProductId = @ProductID

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteSuppCust]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create Procedure [dbo].[spDeleteSuppCust]
(
@SuppCust_ID int
)
As
	Begin
	Delete From SuppCust Where SuppCust_ID = @SuppCust_ID

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteSupplier]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spDeleteSupplier]
(
@supp_ID int
)
As
	Begin
	Delete From Supplier Where Supp_ID = @supp_ID

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUnit]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spDeleteUnit]
(
@UnitID Int
)
As
	Begin
	Delete From Unit Where Unit_ID = @UnitID

	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spDeleteUser]
(@User_ID Int)
As 
	Begin 

		Delete From [User] Where ID = @User_ID

	End
GO
/****** Object:  StoredProcedure [dbo].[spGetCatagory]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spGetCatagory]
As 
	Begin 
		Select CatID, CatName, CatRemarks
			From Catagory

	End
GO
/****** Object:  StoredProcedure [dbo].[spGetProduct]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spGetProduct]
As 
	Begin 
		Select C.CatID, C.CatName, P.ProductID, P.ProductName, U.Unit_ID, U.Unit_Name, P.Rate, P.Quantity,
		P.Remarks, U.Alias
		From Product As P INNER JOIN Catagory As C
		On P.CatID = C.CatID
		INNER JOIN Unit As U On P.Unit_ID = U.Unit_ID

	End
GO
/****** Object:  StoredProcedure [dbo].[spGetUnit]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spGetUnit]

As
	Begin
			Select Unit_ID, Unit_Name, Alias, Remarks 
			From Unit
	End
GO
/****** Object:  StoredProcedure [dbo].[spLogin]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLogin](
@UsersName Varchar(50),
@Passwords Varchar (100)
)
As 
	Begin

	Select * From [User] where UserName = @UsersName And [Passwords] = HASHBYTES ('SHA2_512', @Passwords)

	End 
GO
/****** Object:  StoredProcedure [dbo].[spProduct]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spProduct](
@CatID Int,
@Productname Varchar (50),
@Unit_ID Int,
@ProductRate Decimal (18,5),
@ProductQuantity Decimal (18,2),
@ProductRemarks nVarchar (1000)
)
As
	Begin

	Insert Into Product (CatID, ProductName, Unit_ID, Rate, Quantity, Remarks) 
	Values (@CatID, @ProductName, @Unit_ID, @ProductRate, @ProductQuantity, @ProductRemarks)

	End
GO
/****** Object:  StoredProcedure [dbo].[spRegistration]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spRegistration](
@UsersName Varchar (50),
@Passwords Varchar(100) ,
@Email Varchar (100),
@Phone Int,
@IsAdmin Bit
)
As
Begin

Insert Into [User] (UserName,[Passwords], Email, Phone, IsAdmin)
Values
(@UsersName, HASHBYTES ('SHA2_512', @Passwords) , @Email, @Phone, @IsAdmin)

End
GO
/****** Object:  StoredProcedure [dbo].[spSearchCatagory]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create   Procedure [dbo].[spSearchCatagory]
(@search Varchar(50)) 
As	Begin 
		Select  CatID, CatName, CatRemarks
			 From Catagory Where CatID Like @search OR CatName Like @search

	End 
GO
/****** Object:  StoredProcedure [dbo].[spSearchCustomer]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSearchCustomer]
(@search varchar (50))
As 
	Begin 
		Select  Cust_ID, CustName, CustEmail, Cust_type, CustPhone,CustMobile, CustAddress 
			 From Customer Where CustName Like @search Or CustPhone Like @search
	End
GO
/****** Object:  StoredProcedure [dbo].[spSearchProduct]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSearchProduct]
(@search Varchar(50))
As
	Begin
		
		Select C.CatID, C.CatName, P.ProductID, P.ProductName, U.Unit_ID, U.Unit_Name, P.Rate, P.Quantity,
			P.Remarks

		From 
			Product As P INNER JOIN Catagory C On P.CatID = C.CatID
			INNER JOIN Unit As U On P.Unit_ID = U.Unit_ID Where
			P.ProductName Like @search Or C.CatName Like @search 
			Or U.Unit_Name Like @search Or U.Alias Like @search

	End
GO
/****** Object:  StoredProcedure [dbo].[spSearchPurchase]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create   Procedure [dbo].[spSearchPurchase]
	(@search Varchar (50))
	As	
		Begin 

			Select S.SuppCust_ID, S.SuppCust_Name, M.Type, P.ProductName, P.ProductID, M.TransactionMasterID, M.TransactionDate, D.Quantity, 
			D.Rate, M.VAt, M.Discount, M.GrandTotal

			From

			Transaction_Master as M Inner Join SuppCust S on M.SuppCust_ID = S.SuppCust_ID 
			Inner Join Product as P on P.ProductID = P.ProductID 
			Inner Join TransactionDetail as D on D.TransactionDetailID = D.TransactionDetailID
			Where S.SuppCust_Name Like @search or 
			M.TransactionMasterID Like @search or 
			P.ProductName Like @search or 
			M.TransactionDate Like @search

		End
GO
/****** Object:  StoredProcedure [dbo].[spSearchSales]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		Create   Procedure [dbo].[spSearchSales]
	(@search Varchar (50))
	As	
		Begin 

			Select S.SuppCust_ID, S.SuppCust_Name, M.Type, P.ProductName, P.ProductID, M.TransactionMasterID, M.TransactionDate, D.Quantity, 
			D.Rate, M.VAt, M.Discount, M.GrandTotal

			From

			Transaction_Master as M Inner Join SuppCust S on M.SuppCust_ID = S.SuppCust_ID 
			Inner Join Product as P on P.ProductID = P.ProductID 
			Inner Join TransactionDetail as D on D.TransactionDetailID = D.TransactionDetailID
			Where S.SuppCust_Name Like @search or 
			M.TransactionMasterID Like @search or 
			P.ProductName Like @search or 
			M.TransactionDate Like @search

		End
GO
/****** Object:  StoredProcedure [dbo].[spSearchSuppCust]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSearchSuppCust]
(@search varchar (300)) 
As 
	Begin 

		Select  SuppCust_ID, SuppCust_Name, Email, SuppCust_type, Phone, Mobile, SuppCustAddress 
			 From SuppCust Where SuppCust_Name Like @search Or Phone Like @search
	End
GO
/****** Object:  StoredProcedure [dbo].[spSearchSupplier]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSearchSupplier]
(@search varchar (300)) 
As 
	Begin 

		Select  Supp_ID, Supp_Name, Supp_Email, Supp_type, Supp_Phone,Supp_Mobile, Supp_Address 
			 From Supplier Where Supp_Name Like @search Or Supp_Phone Like @search
	End
GO
/****** Object:  StoredProcedure [dbo].[spSearchUnit]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSearchUnit]
(@search Varchar(50)) 
As	Begin 
		Select  Unit_ID, Unit_Name, Alias, Remarks 
			 From Unit Where Unit_Name Like @search Or Alias Like @search

	End 
GO
/****** Object:  StoredProcedure [dbo].[spSearchUser]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSearchUser]
(@search varchar(50))
As 
	Begin 
		
		Select ID, UserName, Email, Phone From [User]
		Where UserName Like @search OR Phone Like @search

	End
GO
/****** Object:  StoredProcedure [dbo].[spSuppCust]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSuppCust]
(@Name varchar (100),
@Email varchar (200), 
@Type varchar(50),
@Phone Varchar(20),
@Mobile Varchar(20), 
@Address Varchar (400))
As 
	Begin 

		Insert Into SuppCust (SuppCust_Name, Email, SuppCust_Type, Phone, Mobile, SuppCustAddress)
		Values (@Name, @Email, @Type, @Phone, @Mobile, @Address)

	End
GO
/****** Object:  StoredProcedure [dbo].[spSupplier]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spSupplier]
(@suppName varchar (100),
@suppEmail varchar (200), 
@Type varchar(300),
@suppPhone Int,
@suppMobile Int, 
@suppAddress Varchar (400))
As 
	Begin 

		Insert Into Supplier (Supp_Name, Supp_Email, supp_type, Supp_Phone, Supp_Mobile, Supp_Address)
		Values (@suppName, @suppEmail, @Type, @suppPhone, @suppMobile, @suppAddress)

	End
GO
/****** Object:  StoredProcedure [dbo].[spUnit]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spUnit]
(@UnitName Varchar (50),
@Alias Varchar(50),
@UnitRemarks Varchar (50)
)
As 
	Begin 

	Insert Into [Unit] (Unit_Name, Alias, Remarks) Values (@UnitName, @Alias, @UnitRemarks)

	End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCatagory]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spUpdateCatagory]
(
@CatID Int,
@CatName Varchar(50),
@CatRemarks Varchar (500)
)
As	
	Begin 
	Update Catagory Set
	Catname = @CatName,
	CatRemarks = @CatRemarks
	Where 
		CatID = @CatID

	End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCustomer]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spUpdateCustomer]
(@Cust_ID Int,
@custName varchar (100),
@custEmail varchar (200), 
@Type Varchar (200),
@custPhone Int,
@custMobile Int, 
@custAddress Varchar (400))
As 
	Begin
		Update Customer Set
			CustName = @custName,
			CustEmail = @custEmail,
			Cust_type = @Type,
			CustPhone = @custPhone,
			CustMobile = @custMobile,
			CustAddress = @custAddress
			Where Cust_ID = @Cust_ID;
	End
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePassword]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create   Procedure [dbo].[spUpdatePassword]
	(@ID int,
	@UserName varchar (50),
	@Password varbinary (max)
	)
	As 
		Begin 
			Update [User] Set
			UserName = @UserName,
			Passwords = @Password
			Where
			ID = @ID
		End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateProduct]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spUpdateProduct]
(
@ProductID Int,
@CatID Int,
@Productname Varchar (50),
@Unit_ID Int,
@ProductRate Decimal (18,5),
@ProductQuantity Decimal (18,2),
@ProductRemarks nVarchar (1000) 
)
As 
	Begin
		Update Product Set
			CatID = @CatID,
			Productname=@Productname,
			Unit_ID = @Unit_ID,
			Rate = @ProductRate,
			Quantity = @ProductQuantity,
			Remarks = @ProductRemarks
			Where ProductID = @ProductID

	End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateSuppCust]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spUpdateSuppCust]
(@SuppCust_ID Int,
@Name varchar (100),
@Email varchar (200), 
@Type varchar(50),
@Phone Varchar(20),
@Mobile Varchar(20), 
@Address Varchar (400))
As 
	Begin
		Update SuppCust Set
			SuppCust_Name = @Name,
			Email = @Email,
			SuppCust_Type = @Type,
			Phone = @Phone,
			Mobile = @Mobile,
			SuppCustAddress = @Address
			Where SuppCust_ID = @SuppCust_ID;

	End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateSupplier]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[spUpdateSupplier]
(@supp_ID Int,
@suppName varchar (100),
@suppEmail varchar (200), 
@Type varchar(300),
@suppPhone Int,
@suppMobile Int, 
@suppAddress Varchar (400))
As 
	Begin
		Update Supplier Set
			Supp_Name = @suppName,
			Supp_Email = @suppEmail,
			Supp_type = @Type,
			Supp_Phone = @suppPhone,
			Supp_Mobile = @suppMobile,
			Supp_Address = @suppAddress
			Where Supp_ID = @supp_ID;

	End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUnit]    Script Date: 9/1/2022 3:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create   Procedure [dbo].[spUpdateUnit]
	
(@Unit_ID Int,
@UnitName Varchar (50), 
@Alias Varchar (50),
@Remarks Varchar (50))

As 
	Begin 
		Update Unit Set
		Unit_Name = @UnitName, 
		Alias = @Alias,
		Remarks = @Remarks
		Where 
			Unit_ID = @Unit_ID

	End
GO
