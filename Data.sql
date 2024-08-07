USE [master]
GO
/****** Object:  Database [Remax]    Script Date: 22.06.2024 16:09:20 ******/
CREATE DATABASE [Remax]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Remax', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDERS\MSSQL\DATA\Remax.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Remax_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDERS\MSSQL\DATA\Remax_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Remax] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Remax].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Remax] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Remax] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Remax] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Remax] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Remax] SET ARITHABORT OFF 
GO
ALTER DATABASE [Remax] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Remax] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Remax] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Remax] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Remax] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Remax] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Remax] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Remax] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Remax] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Remax] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Remax] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Remax] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Remax] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Remax] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Remax] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Remax] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Remax] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Remax] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Remax] SET  MULTI_USER 
GO
ALTER DATABASE [Remax] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Remax] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Remax] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Remax] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Remax] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Remax] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Remax] SET QUERY_STORE = OFF
GO
USE [Remax]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[Title] [nvarchar](70) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[FacebookAddress] [nvarchar](200) NOT NULL,
	[XAddress] [nvarchar](200) NOT NULL,
	[InstagramAddress] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Agencies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Status] [bit] NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Comment] [nvarchar](300) NOT NULL,
	[ImageUrl] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employments]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[WhoWeAreId] [int] NOT NULL,
 CONSTRAINT [PK_Employments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[ProductDetailId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mails]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Subject] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
	[IsReply] [bit] NOT NULL,
 CONSTRAINT [PK_Mails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NOT NULL,
	[BathCount] [tinyint] NOT NULL,
	[BedRoomCount] [tinyint] NOT NULL,
	[RoomCount] [tinyint] NOT NULL,
	[GarageSize] [tinyint] NOT NULL,
	[BuildYear] [nvarchar](5) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Location] [nvarchar](500) NOT NULL,
	[VideoUrl] [nvarchar](500) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CoverImage] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](10) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[AgencyId] [int] NOT NULL,
	[IsFavorite] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[PublishDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl1] [nvarchar](max) NOT NULL,
	[ImageUrl2] [nvarchar](max) NULL,
	[Page] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhoWeAres]    Script Date: 22.06.2024 16:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhoWeAres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_WhoWeAres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240505135246_CreateDatabase', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240505151924_UpdateCategoryAddingIcon', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240505152109_UpdateClientAddingImage', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240511152244_UpdateProductIsFavorite', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240512132427_AddingContactandMail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240518145219_UpdateProductStatus', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240525134555_AddingSliderEntity', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240525140634_UpdateSliderEntity', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240525145240_AddingWhoWeAreEntity', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240526135926_UpdateProductPublishDate', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240526150059_AddingImage', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240526150307_DeleteProductDetailPrice', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240601152907_UpdateMailSendDateIsRead', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240602144520_UpdateMailIsReply', N'8.0.4')
GO
SET IDENTITY_INSERT [dbo].[Agencies] ON 

INSERT [dbo].[Agencies] ([Id], [Name], [Title], [Email], [Phone], [ImageUrl], [FacebookAddress], [XAddress], [InstagramAddress], [Status]) VALUES (1, N'Altan Uras', N'Kalpazan', N'info@makaan.com', N'05466546778', N'team-1.jpg', N'https://www.instagram.com/', N'https://twitter.com/', N'https://facebook.com/', 1)
INSERT [dbo].[Agencies] ([Id], [Name], [Title], [Email], [Phone], [ImageUrl], [FacebookAddress], [XAddress], [InstagramAddress], [Status]) VALUES (2, N'Kıvanç', N'Gaspçı', N'info@makaan.com', N'05466546778', N'team-2.jpg', N'https://www.instagram.com/', N'https://twitter.com/', N'https://facebook.com/', 1)
INSERT [dbo].[Agencies] ([Id], [Name], [Title], [Email], [Phone], [ImageUrl], [FacebookAddress], [XAddress], [InstagramAddress], [Status]) VALUES (3, N'Kerem', N'Playboy', N'info@makaan.com', N'05466546778', N'team-3.jpg', N'https://www.instagram.com/', N'https://twitter.com/', N'https://facebook.com/', 1)
INSERT [dbo].[Agencies] ([Id], [Name], [Title], [Email], [Phone], [ImageUrl], [FacebookAddress], [XAddress], [InstagramAddress], [Status]) VALUES (4, N'Ceylan', N'Öğretmen', N'info@makaan.com', N'05466546778', N'team-4.jpg', N'https://www.instagram.com/', N'https://twitter.com/', N'https://facebook.com/', 1)
SET IDENTITY_INSERT [dbo].[Agencies] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (1, N'Daire', 1, N'icon-apartment.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (2, N'Villa', 1, N'icon-villa.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (3, N'Ofis', 1, N'icon-housing.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (4, N'Bina', 1, N'icon-building.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (5, N'İşyeri', 1, N'icon-condominium.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (6, N'Yalı', 1, N'icon-house.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (7, N'Yazlık', 1, N'icon-neighborhood.png')
INSERT [dbo].[Categories] ([Id], [Name], [Status], [Icon]) VALUES (8, N'Arsa', 1, N'icon-luxury.png')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name]) VALUES (1, N'Adana')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (2, N'Adıyaman')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (3, N'Afyon')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (4, N'Ağrı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (5, N'Amasya')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (6, N'Ankara')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (7, N'Antalya')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (8, N'Artvin')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (9, N'Aydın')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (10, N'Balıkesir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (11, N'Bilecik')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (12, N'Bingöl')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (13, N'Bitlis')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (14, N'Bolu')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (15, N'Burdur')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (16, N'Bursa')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (17, N'Çanakkale')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (18, N'Çankırı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (19, N'Çorum')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (20, N'Denizli')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (22, N'Edirne')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (23, N'Elazığ')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (24, N'Erzincan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (25, N'Erzurum')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (26, N'Eskişehir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (27, N'Gaziantep')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (28, N'Giresun')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (30, N'Hakkari')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (31, N'Hatay')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (32, N'Isparta')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (33, N'İçel')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (34, N'İstanbul')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (35, N'İzmir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (36, N'Kars')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (37, N'Kastamonu')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (38, N'Kayseri')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (39, N'Kırklareli')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (40, N'Kırşehir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (41, N'Kocaeli')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (42, N'Konya')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (43, N'Kütahya')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (44, N'Malatya')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (45, N'Manisa')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (47, N'Mardin')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (48, N'Muğla')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (49, N'Muş')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (50, N'Nevşehir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (51, N'Niğde')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (52, N'Ordu')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (53, N'Rize')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (54, N'Sakarya')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (55, N'Samsun')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (56, N'Siirt')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (57, N'Sinop')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (58, N'Sivas')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (60, N'Tokat')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (61, N'Trabzon')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (62, N'Tunceli')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (64, N'Uşak')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (65, N'Van')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (66, N'Yozgat')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (67, N'Zonguldak')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (68, N'Aksaray')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (69, N'Bayburt')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (70, N'Karaman')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (72, N'Batman')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (73, N'Şırnak')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (74, N'Bartın')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (75, N'Ardahan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (76, N'Iğdır')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (77, N'Yalova')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (78, N'Karabük')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (79, N'Kilis')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (80, N'Osmaniye')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [Name], [Title], [Comment], [ImageUrl]) VALUES (3, N'Muhammed KRANDA', N'Profession', N'Çok güzel bir ev.', N'testimonial-1.jpg')
INSERT [dbo].[Clients] ([Id], [Name], [Title], [Comment], [ImageUrl]) VALUES (4, N'Alper DAN', N'Profession', N'Köpeklerimle sıcak bir yuva.', N'testimonial-4.jpg')
INSERT [dbo].[Clients] ([Id], [Name], [Title], [Comment], [ImageUrl]) VALUES (5, N'Şeyma Hacıosmanoğlu', N'Profession', N'Beşiktaş 0+1 daire', N'testimonial-3.jpg')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Text], [Address], [Phone], [Email], [Location]) VALUES (1, N'Danışmanlık için bizimle iletişime geçiniz.', N'Ali Sami Yen Çıkmazı', N'555 555 2336', N'salatasaray@gmail.com', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (1, N'Aladağ', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (2, N'Ceyhan', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (3, N'Çukurova', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (4, N'Feke', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (5, N'İmamoğlu', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (6, N'Karaisalı', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (7, N'Karataş', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (8, N'Kozan', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (9, N'Pozantı', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (10, N'Saimbeyli', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (11, N'Sarıçam', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (12, N'Seyhan', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (13, N'Tufanbeyli', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (14, N'Yumurtalık', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (15, N'Yüreğir', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (16, N'Besni', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (17, N'Çelikhan', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (18, N'Gerger', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (19, N'Gölbaşı', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (20, N'Kahta', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (21, N'Merkez', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (22, N'Samsat', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (23, N'Sincik', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (24, N'Tut', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (25, N'Başmakçı', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (26, N'Bayat', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (27, N'Bolvadin', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (28, N'Çay', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (29, N'Çobanlar', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (30, N'Dazkırı', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (31, N'Dinar', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (32, N'Emirdağ', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (33, N'Evciler', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (34, N'Hocalar', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (35, N'İhsaniye', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (36, N'İscehisar', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (37, N'Kızılören', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (38, N'Merkez', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (39, N'Sandıklı', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (40, N'Sinanpaşa', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (41, N'Sultandağı', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (42, N'Şuhut', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (43, N'Diyadin', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (44, N'Doğubayazıt', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (45, N'Eleşkirt', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (46, N'Hamur', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (47, N'Merkez', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (48, N'Patnos', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (49, N'Taşlıçay', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (50, N'Tutak', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (51, N'Ağaçören', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (52, N'Eskil', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (53, N'Gülağaç', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (54, N'Güzelyurt', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (55, N'Merkez', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (56, N'Ortaköy', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (57, N'Sarıyahşi', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (58, N'Sultanhanı', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (59, N'Göynücek', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (60, N'Gümüşhacıköy', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (61, N'Hamamözü', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (62, N'Merkez', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (63, N'Merzifon', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (64, N'Suluova', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (65, N'Taşova', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (66, N'Akyurt', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (67, N'Altındağ', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (68, N'Ayaş', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (69, N'Bala', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (70, N'Beypazarı', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (71, N'Çamlıdere', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (72, N'Çankaya', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (73, N'Çubuk', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (74, N'Elmadağ', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (75, N'Etimesgut', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (76, N'Evren', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (77, N'Gölbaşı', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (78, N'Güdül', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (79, N'Haymana', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (80, N'Kahramankazan', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (81, N'Kalecik', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (82, N'Keçiören', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (83, N'Kızılcahamam', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (84, N'Mamak', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (85, N'Nallıhan', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (86, N'Polatlı', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (87, N'Pursaklar', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (88, N'Sincan', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (89, N'Şereflikoçhisar', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (90, N'Yenimahalle', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (91, N'Akseki', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (92, N'Aksu', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (93, N'Alanya', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (94, N'Demre', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (95, N'Döşemealtı', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (96, N'Elmalı', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (97, N'Finike', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (98, N'Gazipaşa', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (99, N'Gündoğmuş', 7)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (100, N'İbradı', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (101, N'Kaş', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (102, N'Kemer', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (103, N'Kepez', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (104, N'Konyaaltı', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (105, N'Korkuteli', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (106, N'Kumluca', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (107, N'Manavgat', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (108, N'Muratpaşa', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (109, N'Serik', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (110, N'Çıldır', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (111, N'Damal', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (112, N'Göle', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (113, N'Hanak', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (114, N'Merkez', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (115, N'Posof', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (116, N'Ardanuç', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (117, N'Arhavi', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (118, N'Borçka', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (119, N'Hopa', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (120, N'Kemalpaşa', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (121, N'Merkez', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (122, N'Murgul', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (123, N'Şavşat', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (124, N'Yusufeli', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (125, N'Bozdoğan', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (126, N'Buharkent', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (127, N'Çine', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (128, N'Didim', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (129, N'Efeler', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (130, N'Germencik', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (131, N'İncirliova', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (132, N'Karacasu', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (133, N'Karpuzlu', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (134, N'Koçarlı', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (135, N'Köşk', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (136, N'Kuşadası', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (137, N'Kuyucak', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (138, N'Nazilli', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (139, N'Söke', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (140, N'Sultanhisar', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (141, N'Yenipazar', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (142, N'Altıeylül', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (143, N'Ayvalık', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (144, N'Balya', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (145, N'Bandırma', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (146, N'Bigadiç', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (147, N'Burhaniye', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (148, N'Dursunbey', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (149, N'Edremit', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (150, N'Erdek', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (151, N'Gömeç', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (152, N'Gönen', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (153, N'Havran', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (154, N'İvrindi', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (155, N'Karesi', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (156, N'Kepsut', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (157, N'Manyas', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (158, N'Marmara', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (159, N'Savaştepe', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (160, N'Sındırgı', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (161, N'Susurluk', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (162, N'Amasra', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (163, N'Kurucaşile', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (164, N'Merkez', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (165, N'Ulus', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (166, N'Beşiri', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (167, N'Gercüş', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (168, N'Hasankeyf', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (169, N'Kozluk', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (170, N'Merkez', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (171, N'Sason', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (172, N'Aydıntepe', 69)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (173, N'Demirözü', 69)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (174, N'Merkez', 69)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (175, N'Bozüyük', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (176, N'Gölpazarı', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (177, N'İnhisar', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (178, N'Merkez', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (179, N'Osmaneli', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (180, N'Pazaryeri', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (181, N'Söğüt', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (182, N'Yenipazar', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (183, N'Adaklı', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (184, N'Genç', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (185, N'Karlıova', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (186, N'Kiğı', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (187, N'Merkez', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (188, N'Solhan', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (189, N'Yayladere', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (190, N'Yedisu', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (191, N'Adilcevaz', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (192, N'Ahlat', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (193, N'Güroymak', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (194, N'Hizan', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (195, N'Merkez', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (196, N'Mutki', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (197, N'Tatvan', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (198, N'Dörtdivan', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (199, N'Gerede', 14)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (200, N'Göynük', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (201, N'Kıbrıscık', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (202, N'Mengen', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (203, N'Merkez', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (204, N'Mudurnu', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (205, N'Seben', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (206, N'Yeniçağa', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (207, N'Ağlasun', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (208, N'Altınyayla', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (209, N'Bucak', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (210, N'Çavdır', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (211, N'Çeltikçi', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (212, N'Gölhisar', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (213, N'Karamanlı', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (214, N'Kemer', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (215, N'Merkez', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (216, N'Tefenni', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (217, N'Yeşilova', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (218, N'Büyükorhan', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (219, N'Gemlik', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (220, N'Gürsu', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (221, N'Harmancık', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (222, N'İnegöl', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (223, N'İznik', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (224, N'Karacabey', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (225, N'Keles', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (226, N'Kestel', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (227, N'Mudanya', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (228, N'Mustafakemalpaşa', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (229, N'Nilüfer', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (230, N'Orhaneli', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (231, N'Orhangazi', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (232, N'Osmangazi', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (233, N'Yenişehir', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (234, N'Yıldırım', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (235, N'Ayvacık', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (236, N'Bayramiç', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (237, N'Biga', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (238, N'Bozcaada', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (239, N'Çan', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (240, N'Eceabat', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (241, N'Ezine', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (242, N'Gelibolu', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (243, N'Gökçeada', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (244, N'Lapseki', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (245, N'Merkez', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (246, N'Yenice', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (247, N'Atkaracalar', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (248, N'Bayramören', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (249, N'Çerkeş', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (250, N'Eldivan', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (251, N'Ilgaz', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (252, N'Kızılırmak', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (253, N'Korgun', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (254, N'Kurşunlu', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (255, N'Merkez', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (256, N'Orta', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (257, N'Şabanözü', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (258, N'Yapraklı', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (259, N'Alaca', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (260, N'Bayat', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (261, N'Boğazkale', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (262, N'Dodurga', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (263, N'İskilip', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (264, N'Kargı', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (265, N'Laçin', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (266, N'Mecitözü', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (267, N'Merkez', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (268, N'Oğuzlar', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (269, N'Ortaköy', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (270, N'Osmancık', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (271, N'Sungurlu', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (272, N'Uğurludağ', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (273, N'Acıpayam', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (274, N'Babadağ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (275, N'Baklan', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (276, N'Bekilli', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (277, N'Beyağaç', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (278, N'Bozkurt', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (279, N'Buldan', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (280, N'Çal', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (281, N'Çameli', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (282, N'Çardak', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (283, N'Çivril', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (284, N'Güney', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (285, N'Honaz', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (286, N'Kale', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (287, N'Merkezefendi', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (288, N'Pamukkale', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (289, N'Sarayköy', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (290, N'Serinhisar', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (291, N'Tavas', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (292, N'Bağlar', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (293, N'Bismil', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (294, N'Çermik', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (295, N'Çınar', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (296, N'Çüngüş', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (297, N'Dicle', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (298, N'Eğil', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (299, N'Ergani', 21)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (300, N'Hani', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (301, N'Hazro', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (302, N'Kayapınar', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (303, N'Kocaköy', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (304, N'Kulp', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (305, N'Lice', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (306, N'Silvan', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (307, N'Sur', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (308, N'Yenişehir', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (309, N'Akçakoca', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (310, N'Cumayeri', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (311, N'Çilimli', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (312, N'Gölyaka', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (313, N'Gümüşova', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (314, N'Kaynaşlı', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (315, N'Merkez', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (316, N'Yığılca', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (317, N'Enez', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (318, N'Havsa', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (319, N'İpsala', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (320, N'Keşan', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (321, N'Lalapaşa', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (322, N'Meriç', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (323, N'Merkez', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (324, N'Süloğlu', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (325, N'Uzunköprü', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (326, N'Ağın', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (327, N'Alacakaya', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (328, N'Arıcak', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (329, N'Baskil', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (330, N'Karakoçan', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (331, N'Keban', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (332, N'Kovancılar', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (333, N'Maden', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (334, N'Merkez', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (335, N'Palu', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (336, N'Sivrice', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (337, N'Çayırlı', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (338, N'İliç', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (339, N'Kemah', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (340, N'Kemaliye', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (341, N'Merkez', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (342, N'Otlukbeli', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (343, N'Refahiye', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (344, N'Tercan', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (345, N'Üzümlü', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (346, N'Aşkale', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (347, N'Aziziye', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (348, N'Çat', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (349, N'Hınıs', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (350, N'Horasan', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (351, N'İspir', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (352, N'Karaçoban', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (353, N'Karayazı', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (354, N'Köprüköy', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (355, N'Narman', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (356, N'Oltu', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (357, N'Olur', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (358, N'Palandöken', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (359, N'Pasinler', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (360, N'Pazaryolu', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (361, N'Şenkaya', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (362, N'Tekman', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (363, N'Tortum', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (364, N'Uzundere', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (365, N'Yakutiye', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (366, N'Alpu', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (367, N'Beylikova', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (368, N'Çifteler', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (369, N'Günyüzü', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (370, N'Han', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (371, N'İnönü', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (372, N'Mahmudiye', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (373, N'Mihalgazi', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (374, N'Mihalıççık', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (375, N'Odunpazarı', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (376, N'Sarıcakaya', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (377, N'Seyitgazi', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (378, N'Sivrihisar', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (379, N'Tepebaşı', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (380, N'Araban', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (381, N'İslahiye', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (382, N'Karkamış', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (383, N'Nizip', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (384, N'Nurdağı', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (385, N'Oğuzeli', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (386, N'Şahinbey', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (387, N'Şehitkamil', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (388, N'Yavuzeli', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (389, N'Alucra', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (390, N'Bulancak', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (391, N'Çamoluk', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (392, N'Çanakçı', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (393, N'Dereli', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (394, N'Doğankent', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (395, N'Espiye', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (396, N'Eynesil', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (397, N'Görele', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (398, N'Güce', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (399, N'Keşap', 28)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (400, N'Merkez', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (401, N'Piraziz', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (402, N'Şebinkarahisar', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (403, N'Tirebolu', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (404, N'Yağlıdere', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (405, N'Kelkit', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (406, N'Köse', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (407, N'Kürtün', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (408, N'Merkez', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (409, N'Şiran', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (410, N'Torul', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (411, N'Çukurca', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (412, N'Derecik', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (413, N'Merkez', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (414, N'Şemdinli', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (415, N'Yüksekova', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (416, N'Altınözü', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (417, N'Antakya', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (418, N'Arsuz', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (419, N'Belen', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (420, N'Defne', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (421, N'Dörtyol', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (422, N'Erzin', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (423, N'Hassa', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (424, N'İskenderun', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (425, N'Kırıkhan', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (426, N'Kumlu', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (427, N'Payas', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (428, N'Reyhanlı', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (429, N'Samandağ', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (430, N'Yayladağı', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (431, N'Aralık', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (432, N'Karakoyunlu', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (433, N'Merkez', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (434, N'Tuzluca', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (435, N'Aksu', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (436, N'Atabey', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (437, N'Eğirdir', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (438, N'Gelendost', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (439, N'Gönen', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (440, N'Keçiborlu', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (441, N'Merkez', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (442, N'Senirkent', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (443, N'Sütçüler', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (444, N'Şarkikaraağaç', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (445, N'Uluborlu', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (446, N'Yalvaç', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (447, N'Yenişarbademli', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (448, N'Adalar', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (449, N'Arnavutköy', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (450, N'Ataşehir', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (451, N'Avcılar', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (452, N'Bağcılar', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (453, N'Bahçelievler', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (454, N'Bakırköy', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (455, N'Başakşehir', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (456, N'Bayrampaşa', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (457, N'Beşiktaş', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (458, N'Beykoz', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (459, N'Beylikdüzü', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (460, N'Beyoğlu', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (461, N'Büyükçekmece', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (462, N'Çatalca', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (463, N'Çekmeköy', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (464, N'Esenler', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (465, N'Esenyurt', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (466, N'Eyüpsultan', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (467, N'Fatih', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (468, N'Gaziosmanpaşa', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (469, N'Güngören', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (470, N'Kadıköy', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (471, N'Kağıthane', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (472, N'Kartal', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (473, N'Küçükçekmece', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (474, N'Maltepe', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (475, N'Pendik', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (476, N'Sancaktepe', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (477, N'Sarıyer', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (478, N'Silivri', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (479, N'Sultanbeyli', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (480, N'Sultangazi', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (481, N'Şile', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (482, N'Şişli', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (483, N'Tuzla', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (484, N'Ümraniye', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (485, N'Üsküdar', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (486, N'Zeytinburnu', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (487, N'Aliağa', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (488, N'Balçova', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (489, N'Bayındır', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (490, N'Bayraklı', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (491, N'Bergama', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (492, N'Beydağ', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (493, N'Bornova', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (494, N'Buca', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (495, N'Çeşme', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (496, N'Çiğli', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (497, N'Dikili', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (498, N'Foça', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (499, N'Gaziemir', 35)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (500, N'Güzelbahçe', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (501, N'Karabağlar', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (502, N'Karaburun', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (503, N'Karşıyaka', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (504, N'Kemalpaşa', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (505, N'Kınık', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (506, N'Kiraz', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (507, N'Konak', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (508, N'Menderes', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (509, N'Menemen', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (510, N'Narlıdere', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (511, N'Ödemiş', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (512, N'Seferihisar', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (513, N'Selçuk', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (514, N'Tire', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (515, N'Torbalı', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (516, N'Urla', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (517, N'Afşin', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (518, N'Andırın', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (519, N'Çağlayancerit', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (520, N'Dulkadiroğlu', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (521, N'Ekinözü', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (522, N'Elbistan', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (523, N'Göksun', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (524, N'Nurhak', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (525, N'Onikişubat', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (526, N'Pazarcık', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (527, N'Türkoğlu', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (528, N'Eflani', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (529, N'Eskipazar', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (530, N'Merkez', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (531, N'Ovacık', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (532, N'Safranbolu', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (533, N'Yenice', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (534, N'Ayrancı', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (535, N'Başyayla', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (536, N'Ermenek', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (537, N'Kazımkarabekir', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (538, N'Merkez', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (539, N'Sarıveliler', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (540, N'Akyaka', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (541, N'Arpaçay', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (542, N'Digor', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (543, N'Kağızman', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (544, N'Merkez', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (545, N'Sarıkamış', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (546, N'Selim', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (547, N'Susuz', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (548, N'Abana', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (549, N'Ağlı', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (550, N'Araç', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (551, N'Azdavay', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (552, N'Bozkurt', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (553, N'Cide', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (554, N'Çatalzeytin', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (555, N'Daday', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (556, N'Devrekani', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (557, N'Doğanyurt', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (558, N'Hanönü', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (559, N'İhsangazi', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (560, N'İnebolu', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (561, N'Küre', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (562, N'Merkez', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (563, N'Pınarbaşı', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (564, N'Seydiler', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (565, N'Şenpazar', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (566, N'Taşköprü', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (567, N'Tosya', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (568, N'Akkışla', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (569, N'Bünyan', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (570, N'Develi', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (571, N'Felahiye', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (572, N'Hacılar', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (573, N'İncesu', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (574, N'Kocasinan', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (575, N'Melikgazi', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (576, N'Özvatan', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (577, N'Pınarbaşı', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (578, N'Sarıoğlan', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (579, N'Sarız', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (580, N'Talas', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (581, N'Tomarza', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (582, N'Yahyalı', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (583, N'Yeşilhisar', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (584, N'Bahşılı', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (585, N'Balışeyh', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (586, N'Çelebi', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (587, N'Delice', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (588, N'Karakeçili', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (589, N'Keskin', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (590, N'Merkez', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (591, N'Sulakyurt', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (592, N'Yahşihan', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (593, N'Babaeski', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (594, N'Demirköy', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (595, N'Kofçaz', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (596, N'Lüleburgaz', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (597, N'Merkez', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (598, N'Pehlivanköy', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (599, N'Pınarhisar', 39)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (600, N'Vize', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (601, N'Akçakent', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (602, N'Akpınar', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (603, N'Boztepe', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (604, N'Çiçekdağı', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (605, N'Kaman', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (606, N'Merkez', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (607, N'Mucur', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (608, N'Elbeyli', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (609, N'Merkez', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (610, N'Musabeyli', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (611, N'Polateli', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (612, N'Başiskele', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (613, N'Çayırova', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (614, N'Darıca', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (615, N'Derince', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (616, N'Dilovası', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (617, N'Gebze', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (618, N'Gölcük', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (619, N'İzmit', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (620, N'Kandıra', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (621, N'Karamürsel', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (622, N'Kartepe', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (623, N'Körfez', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (624, N'Ahırlı', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (625, N'Akören', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (626, N'Akşehir', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (627, N'Altınekin', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (628, N'Beyşehir', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (629, N'Bozkır', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (630, N'Cihanbeyli', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (631, N'Çeltik', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (632, N'Çumra', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (633, N'Derbent', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (634, N'Derebucak', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (635, N'Doğanhisar', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (636, N'Emirgazi', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (637, N'Ereğli', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (638, N'Güneysınır', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (639, N'Hadim', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (640, N'Halkapınar', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (641, N'Hüyük', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (642, N'Ilgın', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (643, N'Kadınhanı', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (644, N'Karapınar', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (645, N'Karatay', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (646, N'Kulu', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (647, N'Meram', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (648, N'Sarayönü', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (649, N'Selçuklu', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (650, N'Seydişehir', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (651, N'Taşkent', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (652, N'Tuzlukçu', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (653, N'Yalıhüyük', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (654, N'Yunak', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (655, N'Altıntaş', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (656, N'Aslanapa', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (657, N'Çavdarhisar', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (658, N'Domaniç', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (659, N'Dumlupınar', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (660, N'Emet', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (661, N'Gediz', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (662, N'Hisarcık', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (663, N'Merkez', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (664, N'Pazarlar', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (665, N'Simav', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (666, N'Şaphane', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (667, N'Tavşanlı', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (668, N'Akçadağ', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (669, N'Arapgir', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (670, N'Arguvan', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (671, N'Battalgazi', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (672, N'Darende', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (673, N'Doğanşehir', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (674, N'Doğanyol', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (675, N'Hekimhan', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (676, N'Kale', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (677, N'Kuluncak', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (678, N'Pütürge', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (679, N'Yazıhan', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (680, N'Yeşilyurt', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (681, N'Ahmetli', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (682, N'Akhisar', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (683, N'Alaşehir', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (684, N'Demirci', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (685, N'Gölmarmara', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (686, N'Gördes', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (687, N'Kırkağaç', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (688, N'Köprübaşı', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (689, N'Kula', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (690, N'Salihli', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (691, N'Sarıgöl', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (692, N'Saruhanlı', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (693, N'Selendi', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (694, N'Soma', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (695, N'Şehzadeler', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (696, N'Turgutlu', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (697, N'Yunusemre', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (698, N'Artuklu', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (699, N'Dargeçit', 47)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (700, N'Derik', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (701, N'Kızıltepe', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (702, N'Mazıdağı', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (703, N'Midyat', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (704, N'Nusaybin', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (705, N'Ömerli', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (706, N'Savur', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (707, N'Yeşilli', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (708, N'Akdeniz', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (709, N'Anamur', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (710, N'Aydıncık', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (711, N'Bozyazı', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (712, N'Çamlıyayla', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (713, N'Erdemli', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (714, N'Gülnar', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (715, N'Mezitli', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (716, N'Mut', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (717, N'Silifke', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (718, N'Tarsus', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (719, N'Toroslar', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (720, N'Yenişehir', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (721, N'Bodrum', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (722, N'Dalaman', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (723, N'Datça', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (724, N'Fethiye', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (725, N'Kavaklıdere', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (726, N'Köyceğiz', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (727, N'Marmaris', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (728, N'Menteşe', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (729, N'Milas', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (730, N'Ortaca', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (731, N'Seydikemer', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (732, N'Ula', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (733, N'Yatağan', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (734, N'Bulanık', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (735, N'Hasköy', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (736, N'Korkut', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (737, N'Malazgirt', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (738, N'Merkez', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (739, N'Varto', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (740, N'Acıgöl', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (741, N'Avanos', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (742, N'Derinkuyu', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (743, N'Gülşehir', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (744, N'Hacıbektaş', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (745, N'Kozaklı', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (746, N'Merkez', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (747, N'Ürgüp', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (748, N'Altunhisar', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (749, N'Bor', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (750, N'Çamardı', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (751, N'Çiftlik', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (752, N'Merkez', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (753, N'Ulukışla', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (754, N'Akkuş', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (755, N'Altınordu', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (756, N'Aybastı', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (757, N'Çamaş', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (758, N'Çatalpınar', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (759, N'Çaybaşı', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (760, N'Fatsa', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (761, N'Gölköy', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (762, N'Gülyalı', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (763, N'Gürgentepe', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (764, N'İkizce', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (765, N'Kabadüz', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (766, N'Kabataş', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (767, N'Korgan', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (768, N'Kumru', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (769, N'Mesudiye', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (770, N'Perşembe', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (771, N'Ulubey', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (772, N'Ünye', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (773, N'Bahçe', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (774, N'Düziçi', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (775, N'Hasanbeyli', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (776, N'Kadirli', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (777, N'Merkez', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (778, N'Sumbas', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (779, N'Toprakkale', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (780, N'Ardeşen', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (781, N'Çamlıhemşin', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (782, N'Çayeli', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (783, N'Derepazarı', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (784, N'Fındıklı', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (785, N'Güneysu', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (786, N'Hemşin', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (787, N'İkizdere', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (788, N'İyidere', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (789, N'Kalkandere', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (790, N'Merkez', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (791, N'Pazar', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (792, N'Adapazarı', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (793, N'Akyazı', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (794, N'Arifiye', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (795, N'Erenler', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (796, N'Ferizli', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (797, N'Geyve', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (798, N'Hendek', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (799, N'Karapürçek', 54)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (800, N'Karasu', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (801, N'Kaynarca', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (802, N'Kocaali', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (803, N'Pamukova', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (804, N'Sapanca', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (805, N'Serdivan', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (806, N'Söğütlü', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (807, N'Taraklı', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (808, N'19 mayıs', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (809, N'Alaçam', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (810, N'Asarcık', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (811, N'Atakum', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (812, N'Ayvacık', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (813, N'Bafra', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (814, N'Canik', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (815, N'Çarşamba', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (816, N'Havza', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (817, N'İlkadım', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (818, N'Kavak', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (819, N'Ladik', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (820, N'Salıpazarı', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (821, N'Tekkeköy', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (822, N'Terme', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (823, N'Vezirköprü', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (824, N'Yakakent', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (825, N'Baykan', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (826, N'Eruh', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (827, N'Kurtalan', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (828, N'Merkez', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (829, N'Pervari', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (830, N'Şirvan', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (831, N'Tillo', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (832, N'Ayancık', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (833, N'Boyabat', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (834, N'Dikmen', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (835, N'Durağan', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (836, N'Erfelek', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (837, N'Gerze', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (838, N'Merkez', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (839, N'Saraydüzü', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (840, N'Türkeli', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (841, N'Akıncılar', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (842, N'Altınyayla', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (843, N'Divriği', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (844, N'Doğanşar', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (845, N'Gemerek', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (846, N'Gölova', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (847, N'Gürün', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (848, N'Hafik', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (849, N'İmranlı', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (850, N'Kangal', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (851, N'Koyulhisar', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (852, N'Merkez', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (853, N'Suşehri', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (854, N'Şarkışla', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (855, N'Ulaş', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (856, N'Yıldızeli', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (857, N'Zara', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (858, N'Akçakale', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (859, N'Birecik', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (860, N'Bozova', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (861, N'Ceylanpınar', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (862, N'Eyyübiye', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (863, N'Halfeti', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (864, N'Haliliye', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (865, N'Harran', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (866, N'Hilvan', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (867, N'Karaköprü', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (868, N'Siverek', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (869, N'Suruç', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (870, N'Viranşehir', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (871, N'Beytüşşebap', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (872, N'Cizre', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (873, N'Güçlükonak', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (874, N'İdil', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (875, N'Merkez', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (876, N'Silopi', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (877, N'Uludere', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (878, N'Çerkezköy', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (879, N'Çorlu', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (880, N'Ergene', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (881, N'Hayrabolu', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (882, N'Kapaklı', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (883, N'Malkara', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (884, N'Marmaraereğlisi', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (885, N'Muratlı', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (886, N'Saray', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (887, N'Süleymanpaşa', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (888, N'Şarköy', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (889, N'Almus', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (890, N'Artova', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (891, N'Başçiftlik', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (892, N'Erbaa', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (893, N'Merkez', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (894, N'Niksar', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (895, N'Pazar', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (896, N'Reşadiye', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (897, N'Sulusaray', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (898, N'Turhal', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (899, N'Yeşilyurt', 60)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (900, N'Zile', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (901, N'Akçaabat', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (902, N'Araklı', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (903, N'Arsin', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (904, N'Beşikdüzü', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (905, N'Çarşıbaşı', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (906, N'Çaykara', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (907, N'Dernekpazarı', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (908, N'Düzköy', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (909, N'Hayrat', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (910, N'Köprübaşı', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (911, N'Maçka', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (912, N'Of', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (913, N'Ortahisar', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (914, N'Sürmene', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (915, N'Şalpazarı', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (916, N'Tonya', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (917, N'Vakfıkebir', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (918, N'Yomra', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (919, N'Çemişgezek', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (920, N'Hozat', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (921, N'Mazgirt', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (922, N'Merkez', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (923, N'Nazımiye', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (924, N'Ovacık', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (925, N'Pertek', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (926, N'Pülümür', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (927, N'Banaz', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (928, N'Eşme', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (929, N'Karahallı', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (930, N'Merkez', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (931, N'Sivaslı', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (932, N'Ulubey', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (933, N'Bahçesaray', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (934, N'Başkale', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (935, N'Çaldıran', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (936, N'Çatak', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (937, N'Edremit', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (938, N'Erciş', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (939, N'Gevaş', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (940, N'Gürpınar', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (941, N'İpekyolu', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (942, N'Muradiye', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (943, N'Özalp', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (944, N'Saray', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (945, N'Tuşba', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (946, N'Altınova', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (947, N'Armutlu', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (948, N'Çınarcık', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (949, N'Çiftlikköy', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (950, N'Merkez', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (951, N'Termal', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (952, N'Akdağmadeni', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (953, N'Aydıncık', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (954, N'Boğazlıyan', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (955, N'Çandır', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (956, N'Çayıralan', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (957, N'Çekerek', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (958, N'Kadışehri', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (959, N'Merkez', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (960, N'Saraykent', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (961, N'Sarıkaya', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (962, N'Sorgun', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (963, N'Şefaatli', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (964, N'Yenifakılı', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (965, N'Yerköy', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (966, N'Alaplı', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (967, N'Çaycuma', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (968, N'Devrek', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (969, N'Ereğli', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (970, N'Gökçebey', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (971, N'Kilimli', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (972, N'Kozlu', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (973, N'Merkez', 67)
SET IDENTITY_INSERT [dbo].[Districts] OFF
GO
SET IDENTITY_INSERT [dbo].[Employments] ON 

INSERT [dbo].[Employments] ([Id], [Text], [Status], [WhoWeAreId]) VALUES (1, N'Gayrimenkul Danışmanlığı', 1, 1)
INSERT [dbo].[Employments] ([Id], [Text], [Status], [WhoWeAreId]) VALUES (2, N'Yatırım Ortaklığı', 1, 1)
INSERT [dbo].[Employments] ([Id], [Text], [Status], [WhoWeAreId]) VALUES (3, N'Emlak Alım-Satım', 1, 1)
SET IDENTITY_INSERT [dbo].[Employments] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ImageUrl], [ProductDetailId]) VALUES (1, N'1.jpg', 2)
INSERT [dbo].[Images] ([Id], [ImageUrl], [ProductDetailId]) VALUES (2, N'2.jpg', 2)
INSERT [dbo].[Images] ([Id], [ImageUrl], [ProductDetailId]) VALUES (5, N'20240609161438188.png', 12)
INSERT [dbo].[Images] ([Id], [ImageUrl], [ProductDetailId]) VALUES (6, N'20240609161439573.png', 12)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Mails] ON 

INSERT [dbo].[Mails] ([Id], [Name], [Email], [Subject], [Message], [IsRead], [SendDate], [IsReply]) VALUES (1, N'Altan Emre', N'altanemre1989@gmail.com', N'Danışmanlık', N'beni ara', 0, CAST(N'2024-06-02T16:28:23.5790432' AS DateTime2), 1)
INSERT [dbo].[Mails] ([Id], [Name], [Email], [Subject], [Message], [IsRead], [SendDate], [IsReply]) VALUES (2, N'Kübra Karadağ', N'kubra@gmail.com', N'Yatırım Danışmanlığı', N'Bana yardım et', 0, CAST(N'2024-06-02T16:36:33.3889574' AS DateTime2), 0)
INSERT [dbo].[Mails] ([Id], [Name], [Email], [Subject], [Message], [IsRead], [SendDate], [IsReply]) VALUES (3, N'Altan Emre', N'altan@gmail.com', N'Danışmanlık', N'Beni ara', 0, CAST(N'2024-06-09T18:17:59.0791436' AS DateTime2), 0)
INSERT [dbo].[Mails] ([Id], [Name], [Email], [Subject], [Message], [IsRead], [SendDate], [IsReply]) VALUES (4, N'Uras Demirci', N'uras@gmail.com', N'Yatırım Ortaklık', N'Arsamı kat karşılığı vereceğim', 0, CAST(N'2024-06-09T18:18:33.2584534' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Mails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (2, 150, 3, 2, 5, 1, N'2014', N'Yerden ısıtme ile size sıcak bir yuva konforu sunuyor.', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 1)
INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (6, 150, 3, 2, 5, 1, N'2014', N'Yerden ısıtme ile size sıcak bir yuva konforu sunuyor.', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 4)
INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (7, 150, 3, 2, 5, 1, N'2014', N'Yerden ısıtme ile size sıcak bir yuva konforu sunuyor.', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 5)
INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (8, 150, 3, 2, 5, 1, N'2014', N'Yerden ısıtme ile size sıcak bir yuva konforu sunuyor.', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 6)
INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (9, 150, 3, 2, 5, 1, N'2014', N'Yerden ısıtme ile size sıcak bir yuva konforu sunuyor.', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 7)
INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (10, 150, 3, 2, 5, 1, N'2014', N'Yerden ısıtme ile size sıcak bir yuva konforu sunuyor.', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 8)
INSERT [dbo].[ProductDetails] ([Id], [Size], [BathCount], [BedRoomCount], [RoomCount], [GarageSize], [BuildYear], [Description], [Location], [VideoUrl], [ProductId]) VALUES (12, 350, 2, 3, 5, 200, N'2021', N'Sakin ol ŞAMPİYON evdeyim..', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7376636004556!2d32.83450367654166!3d39.92488658542685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1716133122527!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/G7e2KlYbFa0?si=SEQxAulLBPBJKuGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', 11)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (1, N'Levent Lüx Ofis', CAST(2000000.00 AS Decimal(18, 2)), N'property-1.jpg', N'123 Sokak No:10', N'Satılık', N'Levent', 3, 34, 1, 1, 1, CAST(N'2024-05-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (4, N'Zorlu Center', CAST(30000000.00 AS Decimal(18, 2)), N'property-2.jpg', N'Sosyete Sokak.', N'Kiralık', N'Etiler', 5, 34, 2, 0, 1, CAST(N'2024-05-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (5, N'Sıcak Yuva', CAST(5000000.00 AS Decimal(18, 2)), N'property-3.jpg', N'Tantavi Mah. Akın Sok.', N'Kiralık', N'Ümraniye', 6, 34, 1, 1, 1, CAST(N'2024-05-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (6, N'Dubleks Villa', CAST(30000000.00 AS Decimal(18, 2)), N'property-4.jpg', N'Acar Kent ', N'Satılık', N'Beykoz', 2, 34, 1, 0, 1, CAST(N'2024-05-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (7, N'Satılık Yazlıık', CAST(1500000.00 AS Decimal(18, 2)), N'property-5.jpg', N'Askeri kışlka karşısı ', N'Satılık', N'Mamak', 4, 6, 3, 1, 1, CAST(N'2024-05-22T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (8, N'Satılık Sıfır Daire', CAST(3000000.00 AS Decimal(18, 2)), N'property-6.jpg', N'Saat Kulesi sokak', N'Satılık', N'Konak', 1, 35, 4, 0, 1, CAST(N'2024-05-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (9, N'Aileye uygun Kiralık', CAST(500000.00 AS Decimal(18, 2)), N'property-1.jpg', N'Zekeriyaköy ', N'Satılık', N'Sarıyer', 1, 75, 1, 0, 1, CAST(N'2024-05-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite], [Status], [PublishDate]) VALUES (11, N'Aileye Uygun Rezidans', CAST(45000000.00 AS Decimal(18, 2)), N'20240609161430780.png', N'Nişantepe Mahallesi', N'Satılık', N'Beşiktaş', 2, 34, 4, 1, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Title], [Description], [ImageUrl1], [ImageUrl2], [Page]) VALUES (4, N'
Ailenizle Birlikte Yaşamak İçin Mükemmel Bir Ev Bulun', N'Aileniz ile geleceğiniz planlayacağınız, sıcak ve huzurlu bir yuva için doğru yerdesiniz', N'carousel-1.jpg', N'carousel-2.jpg', N'Index')
INSERT [dbo].[Sliders] ([Id], [Title], [Description], [ImageUrl1], [ImageUrl2], [Page]) VALUES (5, N'Hakkımızda', N'Bizi Tanıyın', N'carousel-1.jpg', N'carousel-2.jpg', N'About')
INSERT [dbo].[Sliders] ([Id], [Title], [Description], [ImageUrl1], [ImageUrl2], [Page]) VALUES (6, N'İletişim', N'Bizimle İletişime Geçin', N'carousel-1.jpg', N'carousel-2.jpg', N'Contact')
INSERT [dbo].[Sliders] ([Id], [Title], [Description], [ImageUrl1], [ImageUrl2], [Page]) VALUES (7, N'İlanlar', N'Aradığınız emlak bu sayfada', N'carousel-1.jpg', N'carousel-2.jpg', N'ProductList')
INSERT [dbo].[Sliders] ([Id], [Title], [Description], [ImageUrl1], [ImageUrl2], [Page]) VALUES (9, N'Acenteler', N'Tecrübeli ekibimiz ile hizmetinizdeyiz', N'carousel-1.jpg', N'carousel-2.jpg', N'AgencyList')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[WhoWeAres] ON 

INSERT [dbo].[WhoWeAres] ([Id], [ImageUrl], [Title], [Description]) VALUES (1, N'about.jpg', N'#Mükemmel Gayrimenkulü Bulabileceğiniz 1 Yer', N'"Bir emlak sitesi, mükemmel gayrimenkulleri bulabileceğiniz tek yerdir. Geniş bir portföy ve kullanıcı dostu arayüzüyle, istediğiniz özelliklere sahip evi veya işyerini kolayca bulabilirsiniz."')
SET IDENTITY_INSERT [dbo].[WhoWeAres] OFF
GO
/****** Object:  Index [IX_Districts_CityId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_Districts_CityId] ON [dbo].[Districts]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employments_WhoWeAreId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_Employments_WhoWeAreId] ON [dbo].[Employments]
(
	[WhoWeAreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ProductDetailId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductDetailId] ON [dbo].[Images]
(
	[ProductDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductDetails_ProductId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_ProductDetails_ProductId] ON [dbo].[ProductDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_AgencyId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_Products_AgencyId] ON [dbo].[Products]
(
	[AgencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CityId]    Script Date: 22.06.2024 16:09:20 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CityId] ON [dbo].[Products]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (N'') FOR [Icon]
GO
ALTER TABLE [dbo].[Clients] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[Mails] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsRead]
GO
ALTER TABLE [dbo].[Mails] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [SendDate]
GO
ALTER TABLE [dbo].[Mails] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsReply]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFavorite]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [PublishDate]
GO
ALTER TABLE [dbo].[Sliders] ADD  DEFAULT (N'') FOR [Page]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Cities_CityId]
GO
ALTER TABLE [dbo].[Employments]  WITH CHECK ADD  CONSTRAINT [FK_Employments_WhoWeAres_WhoWeAreId] FOREIGN KEY([WhoWeAreId])
REFERENCES [dbo].[WhoWeAres] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employments] CHECK CONSTRAINT [FK_Employments_WhoWeAres_WhoWeAreId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_ProductDetails_ProductDetailId] FOREIGN KEY([ProductDetailId])
REFERENCES [dbo].[ProductDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_ProductDetails_ProductDetailId]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Agencies_AgencyId] FOREIGN KEY([AgencyId])
REFERENCES [dbo].[Agencies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Agencies_AgencyId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Cities_CityId]
GO
USE [master]
GO
ALTER DATABASE [Remax] SET  READ_WRITE 
GO
