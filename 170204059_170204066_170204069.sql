USE [HSMS_Project]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[Aid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Reference] [int] NULL,
	[Active] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPLAINTS_SMI]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPLAINTS_SMI](
	[Indx] [int] IDENTITY(1,1) NOT NULL,
	[SMI] [int] NOT NULL,
	[Sub] [varchar](255) NOT NULL,
	[Descrip] [varchar](255) NOT NULL,
	[Comments] [varchar](255) NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Indx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONATION]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Amount] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[PurposeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONATION_PURPOSE]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONATION_PURPOSE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PurposeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FEES]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SMI] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[DOP] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FEES_CAL]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEES_CAL](
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[AmountCar] [int] NOT NULL,
	[AmountBike] [int] NOT NULL,
	[Admin] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FLAT]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLAT](
	[F_Num] [varchar](5) NOT NULL,
	[SMI] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HALL_BOOKING_SMI]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HALL_BOOKING_SMI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SMI] [int] NOT NULL,
	[Occasion] [varchar](255) NOT NULL,
	[Timeslots] [varchar](255) NOT NULL,
	[Eventdate] [date] NOT NULL,
	[RentFee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HALL_TIME_RENT_SMI]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HALL_TIME_RENT_SMI](
	[Timeslots] [varchar](255) NOT NULL,
	[Rent] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOCIETY_MEMBER]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOCIETY_MEMBER](
	[SMI] [int] IDENTITY(100,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Phone1] [varchar](11) NOT NULL,
	[Phone2] [varchar](11) NULL,
	[Email] [varchar](30) NOT NULL,
	[BG] [varchar](5) NOT NULL,
	[DOB] [date] NOT NULL,
	[NID] [varchar](15) NOT NULL,
	[F_Num] [varchar](50) NOT NULL,
	[P_Add] [varchar](50) NULL,
	[Job] [varchar](50) NULL,
	[S_Name] [varchar](30) NULL,
	[S_Phone] [varchar](11) NULL,
	[S_Email] [varchar](30) NULL,
	[StartMont] [int] NULL,
	[StartYear] [int] NULL,
	[State] [int] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[SMI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VEHICLE]    Script Date: 21-Sep-20 10:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VEHICLE](
	[SMI] [int] NOT NULL,
	[Type] [varchar](5) NOT NULL,
	[Number] [varchar](30) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[EntryMonth] [int] NOT NULL,
	[EntryYear] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([Aid], [Name], [Phone], [Email], [Address], [Username], [Password], [Reference], [Active]) VALUES (4, N'Abrar', N'01517816109', N'abrarrafid123@gmail.com', N'Takshal, Gazipur', N'abrar', N'abrar', NULL, 0)
INSERT [dbo].[ADMIN] ([Aid], [Name], [Phone], [Email], [Address], [Username], [Password], [Reference], [Active]) VALUES (6, N'Admin', N'01567890123', N'admin@gmail.com', N'Dhaka', N'admin', N'admin', NULL, 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
SET IDENTITY_INSERT [dbo].[COMPLAINTS_SMI] ON 

INSERT [dbo].[COMPLAINTS_SMI] ([Indx], [SMI], [Sub], [Descrip], [Comments], [Date]) VALUES (1, 100, N'Garbage disposal complaint', N'The garbage disposal is not happening by time. Please take a look in it', N'Checked', CAST(N'2020-09-09' AS Date))
INSERT [dbo].[COMPLAINTS_SMI] ([Indx], [SMI], [Sub], [Descrip], [Comments], [Date]) VALUES (2, 101, N'Dummy Test', N'Testing if this is added to the database :(', N'Unchecked', CAST(N'2020-09-10' AS Date))
INSERT [dbo].[COMPLAINTS_SMI] ([Indx], [SMI], [Sub], [Descrip], [Comments], [Date]) VALUES (3, 110, N'Road problem', N'random problem details about faulty road', N'Solved', CAST(N'2020-09-21' AS Date))
INSERT [dbo].[COMPLAINTS_SMI] ([Indx], [SMI], [Sub], [Descrip], [Comments], [Date]) VALUES (4, 109, N'ISP Problem', N'We need new isp in our society. Current service is not good', N'Unchecked', CAST(N'2020-09-22' AS Date))
SET IDENTITY_INSERT [dbo].[COMPLAINTS_SMI] OFF
SET IDENTITY_INSERT [dbo].[DONATION] ON 

INSERT [dbo].[DONATION] ([id], [Name], [Amount], [Date], [PurposeName]) VALUES (1, N'Mr. Alam', 10000, CAST(N'2020-09-01' AS Date), N'General Welfare')
SET IDENTITY_INSERT [dbo].[DONATION] OFF
SET IDENTITY_INSERT [dbo].[DONATION_PURPOSE] ON 

INSERT [dbo].[DONATION_PURPOSE] ([id], [PurposeName]) VALUES (2, N'Elderly Care')
INSERT [dbo].[DONATION_PURPOSE] ([id], [PurposeName]) VALUES (4, N'Emergency Aid')
INSERT [dbo].[DONATION_PURPOSE] ([id], [PurposeName]) VALUES (1, N'General Welfare')
INSERT [dbo].[DONATION_PURPOSE] ([id], [PurposeName]) VALUES (3, N'Society Infrastructure Dev.')
SET IDENTITY_INSERT [dbo].[DONATION_PURPOSE] OFF
SET IDENTITY_INSERT [dbo].[FEES] ON 

INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (24, 101, 2, 2020, 500, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (25, 100, 7, 2020, 600, CAST(N'2020-07-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (26, 103, 6, 2020, 600, CAST(N'2020-06-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (27, 103, 4, 2020, 600, CAST(N'2020-04-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (28, 102, 4, 2020, 600, CAST(N'2020-04-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (29, 102, 6, 2020, 600, CAST(N'2020-06-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (30, 103, 5, 2020, 600, CAST(N'2020-05-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (31, 100, 3, 2020, 500, CAST(N'2020-03-03' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (32, 101, 7, 2020, 600, CAST(N'2020-07-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (33, 103, 3, 2020, 500, CAST(N'2020-07-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (34, 103, 7, 2020, 650, CAST(N'2020-07-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (35, 100, 7, 2021, 780, CAST(N'2020-07-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (36, 101, 3, 2020, 700, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (37, 100, 1, 2020, 750, CAST(N'2020-07-01' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (38, 100, 2, 2020, 200, CAST(N'2020-09-08' AS Date))
INSERT [dbo].[FEES] ([id], [SMI], [Month], [Year], [Amount], [DOP]) VALUES (39, 100, 9, 2020, 200, CAST(N'2020-09-01' AS Date))
SET IDENTITY_INSERT [dbo].[FEES] OFF
INSERT [dbo].[FEES_CAL] ([Month], [Year], [Amount], [AmountCar], [AmountBike], [Admin]) VALUES (1, 2020, 200, 80, 30, 4)
INSERT [dbo].[FEES_CAL] ([Month], [Year], [Amount], [AmountCar], [AmountBike], [Admin]) VALUES (4, 2020, 100, 40, 20, 4)
INSERT [dbo].[FEES_CAL] ([Month], [Year], [Amount], [AmountCar], [AmountBike], [Admin]) VALUES (6, 2020, 150, 50, 20, 4)
INSERT [dbo].[FEES_CAL] ([Month], [Year], [Amount], [AmountCar], [AmountBike], [Admin]) VALUES (5, 2020, 150, 100, 50, 4)
INSERT [dbo].[FEES_CAL] ([Month], [Year], [Amount], [AmountCar], [AmountBike], [Admin]) VALUES (11, 2018, 50, 10, 5, 4)
INSERT [dbo].[FLAT] ([F_Num], [SMI]) VALUES (N'E-2', 100)
INSERT [dbo].[FLAT] ([F_Num], [SMI]) VALUES (N'D-7', 101)
INSERT [dbo].[FLAT] ([F_Num], [SMI]) VALUES (N'A-11', 102)
INSERT [dbo].[FLAT] ([F_Num], [SMI]) VALUES (N'A-3', 103)
SET IDENTITY_INSERT [dbo].[HALL_BOOKING_SMI] ON 

INSERT [dbo].[HALL_BOOKING_SMI] ([Id], [SMI], [Occasion], [Timeslots], [Eventdate], [RentFee]) VALUES (1, 100, N'Meeting', N'20:00 - 24:00', CAST(N'2020-09-11' AS Date), 500)
INSERT [dbo].[HALL_BOOKING_SMI] ([Id], [SMI], [Occasion], [Timeslots], [Eventdate], [RentFee]) VALUES (2, 102, N'Meeting', N'20:00 - 24:00', CAST(N'2020-09-10' AS Date), 700)
INSERT [dbo].[HALL_BOOKING_SMI] ([Id], [SMI], [Occasion], [Timeslots], [Eventdate], [RentFee]) VALUES (3, 100, N'Not mentioning', N'20:00 - 24:00', CAST(N'2020-09-09' AS Date), 700)
INSERT [dbo].[HALL_BOOKING_SMI] ([Id], [SMI], [Occasion], [Timeslots], [Eventdate], [RentFee]) VALUES (6, 105, N'Annual Meeting', N'08:00 - 12:00', CAST(N'2020-09-21' AS Date), 500)
INSERT [dbo].[HALL_BOOKING_SMI] ([Id], [SMI], [Occasion], [Timeslots], [Eventdate], [RentFee]) VALUES (7, 107, N'Birthday Party', N'14:30 - 18:30', CAST(N'2020-09-21' AS Date), 600)
SET IDENTITY_INSERT [dbo].[HALL_BOOKING_SMI] OFF
INSERT [dbo].[HALL_TIME_RENT_SMI] ([Timeslots], [Rent]) VALUES (N'08:00 - 12:00', 400)
INSERT [dbo].[HALL_TIME_RENT_SMI] ([Timeslots], [Rent]) VALUES (N'14:30 - 18:30', 600)
INSERT [dbo].[HALL_TIME_RENT_SMI] ([Timeslots], [Rent]) VALUES (N'20:00 - 24:00', 700)
INSERT [dbo].[HALL_TIME_RENT_SMI] ([Timeslots], [Rent]) VALUES (N'08:00 - 18:30', 1000)
INSERT [dbo].[HALL_TIME_RENT_SMI] ([Timeslots], [Rent]) VALUES (N'14:30 - 24:00', 1200)
INSERT [dbo].[HALL_TIME_RENT_SMI] ([Timeslots], [Rent]) VALUES (N'09:00 - 22:00', 1500)
SET IDENTITY_INSERT [dbo].[SOCIETY_MEMBER] ON 

INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (100, N'Md. John', N'01988776655', NULL, N'john@gmail.com', N'O+', CAST(N'1975-03-05' AS Date), N'1504356425', N'D-7', N'Dhaka', N'Engineer at ABC Real Estate', N'Becky', N'01344556677', N'becky@yahoo.com', 1, 2020, 1)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (101, N'Mr. Alam', N'01977665544', NULL, N'alam@gmail.com', N'O-', CAST(N'1985-05-03' AS Date), N'1599356612', N'E-2', N'E-13/5, Gazipur Sadar, Gazipur', N'Businessman', N'Mrs. Sultana', N'01445566773', N'sultana@gmail.com', 1, 2020, 1)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (102, N'Dr. Nizam Chowdhury', N'01776655443', NULL, N'nizamchowdhury@gmail.com', N'O+', CAST(N'1970-02-12' AS Date), N'1239346509', N'A-3', N'13/A, Banasree, Dhaka', N'Doctor at Square Hospital', N'Dr. Anowara', N'01545566121', N'anowara@gmail.com', 1, 2020, 1)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (103, N'Md. Kabir', N'01988776655', N'', N'john@gmail.com', N'O+', CAST(N'1965-02-17' AS Date), N'1504356425', N'A-11', N'15 Sadar Road, Shitakundo', N'Engineer at ABC Real Estate', N'Johanna', N'01344556677', N'johanna@yahoo.com', 1, 2020, 1)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (107, N'Amzad Ali', N'01344556677', N'01566778899', N'amzadali@gmail.com', N'B+', CAST(N'1969-09-21' AS Date), N'728374653245123', N'C-7', N'Rangpur City', N'Businessman', N'Mrs. Amzad Ali', N'01988776655', N'mrsamzad@gmail.com', 3, 2020, 1)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (108, N'Mr. Alamgir', N'01345678901', N'', N'alamgir@gmail.com', N'A-', CAST(N'1960-09-21' AS Date), N'345678901234567', N'A-5', N'Kuakata, Barishal', N'Teacher', N'Mrs. Alamgir', N'01998877665', N'mrsalamgir@gmail.com', 3, 2020, 2)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (109, N'Monir Chowdhury', N'01321098765', N'', N'monir@gmail.com', N'AB+', CAST(N'1969-09-02' AS Date), N'650989078675645', N'B-1', N'Patuakhali, Barishal', N'Govt. Service Holder', N'Mrs. Monir Chowdhury', N'01343210987', N'mrsmonir@gmail.com', 3, 2020, 1)
INSERT [dbo].[SOCIETY_MEMBER] ([SMI], [Name], [Phone1], [Phone2], [Email], [BG], [DOB], [NID], [F_Num], [P_Add], [Job], [S_Name], [S_Phone], [S_Email], [StartMont], [StartYear], [State]) VALUES (110, N'Mr. Khalid Saifullah', N'01684701131', N'01304748572', N'khalidsaifullah@gmail.com', N'Null', CAST(N'1990-09-01' AS Date), N'156984235032457', N'C-1', N'Tangail', N'Banker', N'Mrs. Khalid Saifullah', N'01369852147', N'mks@yahoo.com', 5, 2020, 1)
SET IDENTITY_INSERT [dbo].[SOCIETY_MEMBER] OFF
INSERT [dbo].[VEHICLE] ([SMI], [Type], [Number], [Model], [EntryMonth], [EntryYear]) VALUES (100, N'Car', N'DHA-KA-292254', N'Toyota Alion', 4, 2020)
INSERT [dbo].[VEHICLE] ([SMI], [Type], [Number], [Model], [EntryMonth], [EntryYear]) VALUES (101, N'Bike', N'DHA-KHA-123456', N'Maruti Suzuki', 1, 2020)
INSERT [dbo].[VEHICLE] ([SMI], [Type], [Number], [Model], [EntryMonth], [EntryYear]) VALUES (102, N'Car', N'DHA-KA-123456', N'Nissan', 1, 2020)
INSERT [dbo].[VEHICLE] ([SMI], [Type], [Number], [Model], [EntryMonth], [EntryYear]) VALUES (102, N'Bike', N'DHA-HA-205416', N'Discover', 2, 2020)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__DONATION__C44E9BC30F624AF8]    Script Date: 21-Sep-20 10:12:48 PM ******/
ALTER TABLE [dbo].[DONATION_PURPOSE] ADD UNIQUE NONCLUSTERED 
(
	[PurposeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DONATION]  WITH CHECK ADD FOREIGN KEY([PurposeName])
REFERENCES [dbo].[DONATION_PURPOSE] ([PurposeName])
GO
ALTER TABLE [dbo].[FEES_CAL]  WITH CHECK ADD FOREIGN KEY([Admin])
REFERENCES [dbo].[ADMIN] ([Aid])
GO
ALTER TABLE [dbo].[FLAT]  WITH CHECK ADD FOREIGN KEY([SMI])
REFERENCES [dbo].[SOCIETY_MEMBER] ([SMI])
GO
ALTER TABLE [dbo].[VEHICLE]  WITH CHECK ADD FOREIGN KEY([SMI])
REFERENCES [dbo].[SOCIETY_MEMBER] ([SMI])
GO
