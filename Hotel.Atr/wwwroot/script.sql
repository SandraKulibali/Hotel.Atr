USE [ATR]
GO
/****** Object:  Table [dbo].[Availabilty]    Script Date: 10.09.2022 14:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Availabilty](
	[AvailabilityId] [int] IDENTITY(1,1) NOT NULL,
	[ReservationStart] [datetime] NOT NULL,
	[ReservationEnd] [datetime] NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_Availabilty] PRIMARY KEY CLUSTERED 
(
	[AvailabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 10.09.2022 14:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Author] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Size] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ImagePath] [nvarchar](100) NULL,
	[ExparyDate] [datetime] NULL,
	[ContentEvent] [nvarchar](255) NULL,
	[EventCategoryId] [int] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventCategory]    Script Date: 10.09.2022 14:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCategory](
	[EventCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Code] [nvarchar](255) NULL,
 CONSTRAINT [PK_EventCategory] PRIMARY KEY CLUSTERED 
(
	[EventCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picture]    Script Date: 10.09.2022 14:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[PictureId] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[UrlPicture] [nvarchar](500) NOT NULL,
	[MainPicture] [bit] NOT NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 10.09.2022 14:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(0,1) NOT NULL,
	[RoomGuid] [uniqueidentifier] NOT NULL,
	[Status] [bit] NOT NULL,
	[Floor] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomProperties]    Script Date: 10.09.2022 14:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomProperties](
	[RoomPropertiesId] [int] NOT NULL,
	[NamePropery] [varchar](50) NOT NULL,
	[ValuePropery] [varchar](50) NOT NULL,
	[RoomId] [int] NULL,
 CONSTRAINT [PK_RoomProperties] PRIMARY KEY CLUSTERED 
(
	[RoomPropertiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Availabilty] ON 

INSERT [dbo].[Availabilty] ([AvailabilityId], [ReservationStart], [ReservationEnd], [RoomId]) VALUES (1, CAST(N'2022-09-08T00:00:00.000' AS DateTime), CAST(N'2022-09-15T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Availabilty] OFF
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([EventId], [Name], [Author], [Description], [Size], [CreateDate], [ImagePath], [ExparyDate], [ContentEvent], [EventCategoryId]) VALUES (1, N'management conferences', N'Jhtyg Hyuir', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 1, CAST(N'2022-09-10T13:01:28.870' AS DateTime), N'/img/event/1.jpg', NULL, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 3)
INSERT [dbo].[Event] ([EventId], [Name], [Author], [Description], [Size], [CreateDate], [ImagePath], [ExparyDate], [ContentEvent], [EventCategoryId]) VALUES (2, N'Music Concert', N'Jhon Doe', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 0, CAST(N'2022-09-10T13:02:19.727' AS DateTime), N'/img/event/2.jpg', NULL, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 1)
INSERT [dbo].[Event] ([EventId], [Name], [Author], [Description], [Size], [CreateDate], [ImagePath], [ExparyDate], [ContentEvent], [EventCategoryId]) VALUES (3, N'birthday party', N'Marry Luis', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 0, CAST(N'2022-09-10T13:02:56.813' AS DateTime), N'/img/event/3.jpg', NULL, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 2)
INSERT [dbo].[Event] ([EventId], [Name], [Author], [Description], [Size], [CreateDate], [ImagePath], [ExparyDate], [ContentEvent], [EventCategoryId]) VALUES (4, N'weeding party', N'Kathy Luis', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 1, CAST(N'2022-09-10T13:03:32.447' AS DateTime), N'/img/event/4.jpg', NULL, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 4)
INSERT [dbo].[Event] ([EventId], [Name], [Author], [Description], [Size], [CreateDate], [ImagePath], [ExparyDate], [ContentEvent], [EventCategoryId]) VALUES (5, N'management conferences', N'Dan Brown', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 1, CAST(N'2022-09-10T13:04:10.730' AS DateTime), N'/img/event/5.jpg', NULL, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 5)
INSERT [dbo].[Event] ([EventId], [Name], [Author], [Description], [Size], [CreateDate], [ImagePath], [ExparyDate], [ContentEvent], [EventCategoryId]) VALUES (6, N'photography', N'Khaled Hossaini', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 0, CAST(N'2022-09-10T13:04:57.533' AS DateTime), N'/img/event/6.jpg', NULL, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 5)
SET IDENTITY_INSERT [dbo].[Event] OFF
SET IDENTITY_INSERT [dbo].[EventCategory] ON 

INSERT [dbo].[EventCategory] ([EventCategoryId], [Description], [Name], [Code]) VALUES (1, NULL, N'Music Party', N'music')
INSERT [dbo].[EventCategory] ([EventCategoryId], [Description], [Name], [Code]) VALUES (2, NULL, N'Birthday Party', N'birthday')
INSERT [dbo].[EventCategory] ([EventCategoryId], [Description], [Name], [Code]) VALUES (3, NULL, N'Conference', N'conference')
INSERT [dbo].[EventCategory] ([EventCategoryId], [Description], [Name], [Code]) VALUES (4, NULL, N'Wedding Party', N'wedding')
INSERT [dbo].[EventCategory] ([EventCategoryId], [Description], [Name], [Code]) VALUES (5, NULL, N'Photography Party', N'photography')
SET IDENTITY_INSERT [dbo].[EventCategory] OFF
SET IDENTITY_INSERT [dbo].[Picture] ON 

INSERT [dbo].[Picture] ([PictureId], [RoomId], [Name], [UrlPicture], [MainPicture]) VALUES (1, 1, N'Name', N'/img/room/10.jpg', 1)
INSERT [dbo].[Picture] ([PictureId], [RoomId], [Name], [UrlPicture], [MainPicture]) VALUES (2, 2, N'Name', N'/img/room/11.jpg', 1)
INSERT [dbo].[Picture] ([PictureId], [RoomId], [Name], [UrlPicture], [MainPicture]) VALUES (3, 3, N'Name', N'/img/room/12.jpg', 1)
INSERT [dbo].[Picture] ([PictureId], [RoomId], [Name], [UrlPicture], [MainPicture]) VALUES (5, 4, N'Name', N'/img/room/13.jpg', 1)
INSERT [dbo].[Picture] ([PictureId], [RoomId], [Name], [UrlPicture], [MainPicture]) VALUES (6, 5, N'Name', N'/img/room/14.jpg', 1)
INSERT [dbo].[Picture] ([PictureId], [RoomId], [Name], [UrlPicture], [MainPicture]) VALUES (7, 6, N'Name', N'/img/room/15.jpg', 1)
SET IDENTITY_INSERT [dbo].[Picture] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomId], [RoomGuid], [Status], [Floor], [Level], [Price], [Discount], [Name], [Description]) VALUES (1, N'4bf55a1e-7218-4e65-99bd-7acb32633a5b', 1, 2, 3, CAST(45000 AS Decimal(18, 0)), CAST(10000 AS Decimal(18, 0)), N'Клубный Люкс Mirage', N'Проведите великолепно время в клубном номере Mirage. Столик с минибаром и полным набором для создания коктелей, быстрый выход к изысканному бассейну и живописный вид на прекрасную архитектуру нашего отеля')
INSERT [dbo].[Room] ([RoomId], [RoomGuid], [Status], [Floor], [Level], [Price], [Discount], [Name], [Description]) VALUES (2, N'c400fe6d-b2d6-495d-9b92-92f43f5c1065', 1, 2, 2, CAST(79000 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), N'Делюкс с видом на океан', N'Путешествуете один или с вашей второй половинкой и ищите уединение у океана? Тогда Делюкс с видом на океан ваш выбор!')
INSERT [dbo].[Room] ([RoomId], [RoomGuid], [Status], [Floor], [Level], [Price], [Discount], [Name], [Description]) VALUES (3, N'a2ca34c3-c164-4740-baec-f5cde2d7c4d2', 1, 3, 3, CAST(25000 AS Decimal(18, 0)), CAST(6000 AS Decimal(18, 0)), N'Семейный номер', N'Семейная жизнь не преграда для путешествий, когда вы берёте Семейный номер! Развлекательная зона для детей не даст им заскучать, и позволит каждому путешественнику насладиться приключениями и отдыхом')
INSERT [dbo].[Room] ([RoomId], [RoomGuid], [Status], [Floor], [Level], [Price], [Discount], [Name], [Description]) VALUES (4, N'1ff21acc-7aa7-4b5d-8e95-0afc952b8ed0', 1, 3, 4, CAST(35000 AS Decimal(18, 0)), CAST(7000 AS Decimal(18, 0)), N'Спа Делюкс', N'Хотите чтобы ваше тело запело? Тогда комплекс бань с разных частей света, ароматные масла и массаж от сотрудниц нашего отеля исполнит ваше желание')
INSERT [dbo].[Room] ([RoomId], [RoomGuid], [Status], [Floor], [Level], [Price], [Discount], [Name], [Description]) VALUES (5, N'e3fd765d-ac64-4323-a098-eeb2a720b66c', 1, 4, 4, CAST(80000 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), N'Семейный номер делюкс с видом на океан', N'Этот номер подходит для большой семьи, ведь каждый знает как трудно занять однеого ребёнка, не то что двух или трёх. В номере вы найдёте игровую комнату, множество спальнь и огромную банную комнату')
INSERT [dbo].[Room] ([RoomId], [RoomGuid], [Status], [Floor], [Level], [Price], [Discount], [Name], [Description]) VALUES (6, N'c2cde850-0432-4062-9756-258a5a6e300c', 1, 4, 5, CAST(1000000 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), N'Делюкс класса премиум с видом на океан', N'Изысканный, утончённый, гордость всего нашего отеля-Делюкс класса премиум с видом на океан. Ряд достоинств других номеров соеденён и воплощён в лучшем виде. Самый величавый вид, и самое лучшее обслуживание. Всё это только для вас.')
SET IDENTITY_INSERT [dbo].[Room] OFF
INSERT [dbo].[RoomProperties] ([RoomPropertiesId], [NamePropery], [ValuePropery], [RoomId]) VALUES (1, N'Wi-Fi', N'Wi-Fi', 1)
INSERT [dbo].[RoomProperties] ([RoomPropertiesId], [NamePropery], [ValuePropery], [RoomId]) VALUES (2, N'Breakfast Include', N'Breakfast Include', 1)
INSERT [dbo].[RoomProperties] ([RoomPropertiesId], [NamePropery], [ValuePropery], [RoomId]) VALUES (3, N'Private Balcony', N'Private Balcony', 1)
INSERT [dbo].[RoomProperties] ([RoomPropertiesId], [NamePropery], [ValuePropery], [RoomId]) VALUES (4, N'Free Newspaper', N'Free Newspaper', 1)
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Picture] ADD  CONSTRAINT [DF_Picture_MainPicture]  DEFAULT ((0)) FOR [MainPicture]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_EventCategory] FOREIGN KEY([EventCategoryId])
REFERENCES [dbo].[EventCategory] ([EventCategoryId])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_EventCategory]
GO
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK_Picture_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK_Picture_Room]
GO
