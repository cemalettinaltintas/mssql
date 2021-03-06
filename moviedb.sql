USE [movieDb]
GO
/****** Object:  Table [dbo].[category]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[director]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[director](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_director] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [text] NULL,
	[duration] [int] NULL,
	[imageurl] [varchar](150) NULL,
	[trailer] [varchar](150) NULL,
	[directorid] [int] NOT NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[movie-category]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie-category](
	[movieid] [int] NOT NULL,
	[categoryid] [int] NOT NULL,
 CONSTRAINT [PK_movie-category] PRIMARY KEY CLUSTERED 
(
	[movieid] ASC,
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie-detail]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie-detail](
	[id] [int] NOT NULL,
	[country] [nvarchar](50) NULL,
	[publish_year] [datetime] NULL CONSTRAINT [DF_movie-detail_publish_year]  DEFAULT (getdate()),
 CONSTRAINT [PK_movie-detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie-star]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie-star](
	[movieid] [int] NOT NULL,
	[starid] [int] NOT NULL,
 CONSTRAINT [PK_movie-star] PRIMARY KEY CLUSTERED 
(
	[movieid] ASC,
	[starid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[star]    Script Date: 16.05.2022 09:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[star](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_star] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name]) VALUES (1, N'Bilim Kurgu')
INSERT [dbo].[category] ([id], [name]) VALUES (2, N'Romantik')
INSERT [dbo].[category] ([id], [name]) VALUES (3, N'Komedi')
INSERT [dbo].[category] ([id], [name]) VALUES (4, N'Korku')
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[director] ON 

INSERT [dbo].[director] ([id], [name], [surname]) VALUES (1, N'director 1', N'director 1 soyadı')
INSERT [dbo].[director] ([id], [name], [surname]) VALUES (3, N'director 3', N'director 3 soyadı')
INSERT [dbo].[director] ([id], [name], [surname]) VALUES (4, N'director 4', N'director 4 soyadi')
SET IDENTITY_INSERT [dbo].[director] OFF
SET IDENTITY_INSERT [dbo].[movie] ON 

INSERT [dbo].[movie] ([id], [name], [description], [duration], [imageurl], [trailer], [directorid]) VALUES (1, N'a', N'a', 123, N'b', N'b', 1)
INSERT [dbo].[movie] ([id], [name], [description], [duration], [imageurl], [trailer], [directorid]) VALUES (2, N'b', N'b', 12, N'c', N'c', 3)
INSERT [dbo].[movie] ([id], [name], [description], [duration], [imageurl], [trailer], [directorid]) VALUES (3, N'c', N'c', 90, N'c', N'c', 4)
SET IDENTITY_INSERT [dbo].[movie] OFF
INSERT [dbo].[movie-category] ([movieid], [categoryid]) VALUES (1, 1)
INSERT [dbo].[movie-category] ([movieid], [categoryid]) VALUES (1, 2)
INSERT [dbo].[movie-category] ([movieid], [categoryid]) VALUES (2, 2)
INSERT [dbo].[movie-detail] ([id], [country], [publish_year]) VALUES (1, N'Türkiye', CAST(N'2022-05-16 09:48:36.863' AS DateTime))
INSERT [dbo].[movie-detail] ([id], [country], [publish_year]) VALUES (2, N'Almanya', CAST(N'2022-05-16 09:48:57.900' AS DateTime))
INSERT [dbo].[movie-detail] ([id], [country], [publish_year]) VALUES (3, N'Fransa', CAST(N'2022-05-16 09:49:22.027' AS DateTime))
INSERT [dbo].[movie-star] ([movieid], [starid]) VALUES (1, 1)
INSERT [dbo].[movie-star] ([movieid], [starid]) VALUES (1, 2)
INSERT [dbo].[movie-star] ([movieid], [starid]) VALUES (2, 2)
INSERT [dbo].[movie-star] ([movieid], [starid]) VALUES (2, 3)
SET IDENTITY_INSERT [dbo].[star] ON 

INSERT [dbo].[star] ([id], [name], [surname]) VALUES (1, N'Kıvanç', N'Tatlıtuğ')
INSERT [dbo].[star] ([id], [name], [surname]) VALUES (2, N'Salih', N'Ceylan')
INSERT [dbo].[star] ([id], [name], [surname]) VALUES (3, N'Maho ', N'Ağa')
SET IDENTITY_INSERT [dbo].[star] OFF
ALTER TABLE [dbo].[movie]  WITH CHECK ADD  CONSTRAINT [FK_movie_director] FOREIGN KEY([directorid])
REFERENCES [dbo].[director] ([id])
GO
ALTER TABLE [dbo].[movie] CHECK CONSTRAINT [FK_movie_director]
GO
ALTER TABLE [dbo].[movie-category]  WITH CHECK ADD  CONSTRAINT [FK_movie-category_category] FOREIGN KEY([categoryid])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[movie-category] CHECK CONSTRAINT [FK_movie-category_category]
GO
ALTER TABLE [dbo].[movie-category]  WITH CHECK ADD  CONSTRAINT [FK_movie-category_movie] FOREIGN KEY([movieid])
REFERENCES [dbo].[movie] ([id])
GO
ALTER TABLE [dbo].[movie-category] CHECK CONSTRAINT [FK_movie-category_movie]
GO
ALTER TABLE [dbo].[movie-detail]  WITH CHECK ADD  CONSTRAINT [FK_movie-detail_movie] FOREIGN KEY([id])
REFERENCES [dbo].[movie] ([id])
GO
ALTER TABLE [dbo].[movie-detail] CHECK CONSTRAINT [FK_movie-detail_movie]
GO
ALTER TABLE [dbo].[movie-star]  WITH CHECK ADD  CONSTRAINT [FK_movie-star_movie] FOREIGN KEY([movieid])
REFERENCES [dbo].[movie] ([id])
GO
ALTER TABLE [dbo].[movie-star] CHECK CONSTRAINT [FK_movie-star_movie]
GO
ALTER TABLE [dbo].[movie-star]  WITH CHECK ADD  CONSTRAINT [FK_movie-star_star] FOREIGN KEY([starid])
REFERENCES [dbo].[star] ([id])
GO
ALTER TABLE [dbo].[movie-star] CHECK CONSTRAINT [FK_movie-star_star]
GO
