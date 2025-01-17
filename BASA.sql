USE [Studiya_zvukozapisi]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 14.04.2024 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[Releasedate] [date] NOT NULL,
	[ExecutorID] [int] NOT NULL,
	[AlbumTitle] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Tirage] [int] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Execuor]    Script Date: 14.04.2024 14:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Execuor](
	[ExecutorID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](67) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Dateofdeath] [date] NULL,
	[Adress] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Execuor] PRIMARY KEY CLUSTERED 
(
	[ExecutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music]    Script Date: 14.04.2024 14:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music](
	[MusicID] [int] IDENTITY(1,1) NOT NULL,
	[ExecuorID] [int] NOT NULL,
	[AlbumID] [int] NOT NULL,
	[Author] [nvarchar](67) NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Music] PRIMARY KEY CLUSTERED 
(
	[MusicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 14.04.2024 14:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AlbumID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[Dateoffeeding] [date] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 14.04.2024 14:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14.04.2024 14:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([AlbumID], [Releasedate], [ExecutorID], [AlbumTitle], [Price], [Tirage]) VALUES (1, CAST(N'1997-12-18' AS Date), 1, N'Будь как дома, путник!', 483, 500)
INSERT [dbo].[Album] ([AlbumID], [Releasedate], [ExecutorID], [AlbumTitle], [Price], [Tirage]) VALUES (2, CAST(N'1998-01-05' AS Date), 2, N'группа крови', 671, 1000)
INSERT [dbo].[Album] ([AlbumID], [Releasedate], [ExecutorID], [AlbumTitle], [Price], [Tirage]) VALUES (9, CAST(N'2023-10-20' AS Date), 1, N'Старый добрый', 999, 597)
INSERT [dbo].[Album] ([AlbumID], [Releasedate], [ExecutorID], [AlbumTitle], [Price], [Tirage]) VALUES (10, CAST(N'2023-10-20' AS Date), 1, N'Старый добрый', 999, 593)
INSERT [dbo].[Album] ([AlbumID], [Releasedate], [ExecutorID], [AlbumTitle], [Price], [Tirage]) VALUES (11, CAST(N'0001-01-01' AS Date), 1, N'lejljwfjfio4', 33, 3)
INSERT [dbo].[Album] ([AlbumID], [Releasedate], [ExecutorID], [AlbumTitle], [Price], [Tirage]) VALUES (12, CAST(N'0001-01-01' AS Date), 2, N'lejljwfjfio4', 33, 7)
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Execuor] ON 

INSERT [dbo].[Execuor] ([ExecutorID], [FIO], [Birthday], [Dateofdeath], [Adress]) VALUES (1, N'Горшенёв Михаил Юрьевич', CAST(N'1973-08-07' AS Date), CAST(N'2013-07-19' AS Date), N'898525, Ивановская область, город Пушкино, пер. Гоголя, 11')
INSERT [dbo].[Execuor] ([ExecutorID], [FIO], [Birthday], [Dateofdeath], [Adress]) VALUES (2, N'Виктор Робетович Цой', CAST(N'1962-06-21' AS Date), CAST(N'1990-08-15' AS Date), N'551535, Саратовская область, город Луховицы, пл. Сталина, 50')
INSERT [dbo].[Execuor] ([ExecutorID], [FIO], [Birthday], [Dateofdeath], [Adress]) VALUES (4, N'Беляков Алексей Владимирович', CAST(N'1992-01-05' AS Date), NULL, N'007852, Нижегородская область, город Балашиха, пл. Домодедовская, 18')
SET IDENTITY_INSERT [dbo].[Execuor] OFF
GO
SET IDENTITY_INSERT [dbo].[Music] ON 

INSERT [dbo].[Music] ([MusicID], [ExecuorID], [AlbumID], [Author], [Genre]) VALUES (1, 1, 1, N'Князев Андрей Сергеевич', N'Rusian Rock')
INSERT [dbo].[Music] ([MusicID], [ExecuorID], [AlbumID], [Author], [Genre]) VALUES (2, 2, 2, N'Виктор Робертович Цой', N'Рок')
INSERT [dbo].[Music] ([MusicID], [ExecuorID], [AlbumID], [Author], [Genre]) VALUES (3, 2, 1, N'Беляков Алексей Владимирович', N'Рэ')
INSERT [dbo].[Music] ([MusicID], [ExecuorID], [AlbumID], [Author], [Genre]) VALUES (4, 4, 2, N'bj', N'jbkb')
SET IDENTITY_INSERT [dbo].[Music] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [AlbumID], [StatusID], [Dateoffeeding]) VALUES (1, 1, 1, CAST(N'2023-04-20' AS Date))
INSERT [dbo].[Order] ([OrderID], [AlbumID], [StatusID], [Dateoffeeding]) VALUES (2, 2, 1, CAST(N'2024-05-22' AS Date))
INSERT [dbo].[Order] ([OrderID], [AlbumID], [StatusID], [Dateoffeeding]) VALUES (8, 10, 2, CAST(N'0001-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [Name]) VALUES (1, N'Выполнен')
INSERT [dbo].[Status] ([StatusID], [Name]) VALUES (2, N'Не выполнен')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Password]) VALUES (1, N'f', N'111', N'111')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Execuor] FOREIGN KEY([ExecutorID])
REFERENCES [dbo].[Execuor] ([ExecutorID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Execuor]
GO
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_Album] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Album] ([AlbumID])
GO
ALTER TABLE [dbo].[Music] CHECK CONSTRAINT [FK_Music_Album]
GO
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_Execuor] FOREIGN KEY([ExecuorID])
REFERENCES [dbo].[Execuor] ([ExecutorID])
GO
ALTER TABLE [dbo].[Music] CHECK CONSTRAINT [FK_Music_Execuor]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Album] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Album] ([AlbumID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Album]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
