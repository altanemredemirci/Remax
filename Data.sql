USE [master]
GO
/****** Object:  Database [Remax]    Script Date: 11.05.2024 18:38:16 ******/
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
ALTER DATABASE [Remax] SET  ENABLE_BROKER 
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11.05.2024 18:38:16 ******/
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
/****** Object:  Table [dbo].[Agencies]    Script Date: 11.05.2024 18:38:16 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11.05.2024 18:38:16 ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 11.05.2024 18:38:16 ******/
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
/****** Object:  Table [dbo].[Clients]    Script Date: 11.05.2024 18:38:16 ******/
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
/****** Object:  Table [dbo].[Districts]    Script Date: 11.05.2024 18:38:16 ******/
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
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 11.05.2024 18:38:16 ******/
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
	[Price] [decimal](18, 2) NOT NULL,
	[Location] [nvarchar](500) NOT NULL,
	[VideoUrl] [nvarchar](500) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11.05.2024 18:38:16 ******/
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
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240505135246_CreateDatabase', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240505151924_UpdateCategoryAddingIcon', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240505152109_UpdateClientAddingImage', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240511152244_UpdateProductIsFavorite', N'8.0.4')
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
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (1, N'ALADAĞ', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (3, N'ÇUKUROVA', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (4, N'FEKE', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (5, N'İMAMOĞLU', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (6, N'KARAİSALI', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (7, N'KARATAŞ', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (8, N'KOZAN', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (9, N'POZANTI', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (10, N'SAİMBEYLİ', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (11, N'SARIÇAM', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (12, N'SEYHAN', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (13, N'TUFANBEYLİ', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (14, N'YUMURTALIK', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (15, N'YÜREĞİR', 1)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (16, N'BESNİ', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (17, N'ÇELİKHAN', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (18, N'GERGER', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (19, N'GÖLBAŞI', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (20, N'KAHTA', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (21, N'MERKEZ', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (22, N'SAMSAT', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (23, N'SİNCİK', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (24, N'TUT', 2)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (25, N'BAŞMAKÇI', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (26, N'BAYAT', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (27, N'BOLVADİN', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (28, N'ÇAY', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (29, N'ÇOBANLAR', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (30, N'DAZKIRI', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (31, N'DİNAR', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (32, N'EMİRDAĞ', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (33, N'EVCİLER', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (34, N'HOCALAR', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (35, N'İHSANİYE', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (36, N'İSCEHİSAR', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (37, N'KIZILÖREN', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (38, N'MERKEZ', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (39, N'SANDIKLI', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (40, N'SİNANPAŞA', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (41, N'SULTANDAĞI', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (42, N'ŞUHUT', 3)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (43, N'DİYADİN', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (44, N'DOĞUBAYAZIT', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (45, N'ELEŞKİRT', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (46, N'HAMUR', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (47, N'MERKEZ', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (48, N'PATNOS', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (49, N'TAŞLIÇAY', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (50, N'TUTAK', 4)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (51, N'AĞAÇÖREN', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (52, N'ESKİL', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (53, N'GÜLAĞAÇ', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (54, N'GÜZELYURT', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (55, N'MERKEZ', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (56, N'ORTAKÖY', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (57, N'SARIYAHŞİ', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (58, N'SULTANHANI', 68)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (59, N'GÖYNÜCEK', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (60, N'GÜMÜŞHACIKÖY', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (61, N'HAMAMÖZÜ', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (62, N'MERKEZ', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (63, N'MERZİFON', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (64, N'SULUOVA', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (65, N'TAŞOVA', 5)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (66, N'AKYURT', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (67, N'ALTINDAĞ', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (68, N'AYAŞ', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (69, N'BALA', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (70, N'BEYPAZARI', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (71, N'ÇAMLIDERE', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (72, N'ÇANKAYA', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (73, N'ÇUBUK', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (74, N'ELMADAĞ', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (75, N'ETİMESGUT', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (76, N'EVREN', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (77, N'GÖLBAŞI', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (78, N'GÜDÜL', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (79, N'HAYMANA', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (80, N'KAHRAMANKAZAN', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (81, N'KALECİK', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (82, N'KEÇİÖREN', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (83, N'KIZILCAHAMAM', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (84, N'MAMAK', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (85, N'NALLIHAN', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (86, N'POLATLI', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (87, N'PURSAKLAR', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (88, N'SİNCAN', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (89, N'ŞEREFLİKOÇHİSAR', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (90, N'YENİMAHALLE', 6)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (91, N'AKSEKİ', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (92, N'AKSU', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (93, N'ALANYA', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (94, N'DEMRE', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (95, N'DÖŞEMEALTI', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (96, N'ELMALI', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (97, N'FİNİKE', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (98, N'GAZİPAŞA', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (99, N'GÜNDOĞMUŞ', 7)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (100, N'İBRADI', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (101, N'KAŞ', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (102, N'KEMER', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (103, N'KEPEZ', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (104, N'KONYAALTI', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (105, N'KORKUTELİ', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (106, N'KUMLUCA', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (107, N'MANAVGAT', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (108, N'MURATPAŞA', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (109, N'SERİK', 7)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (110, N'ÇILDIR', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (111, N'DAMAL', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (112, N'GÖLE', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (113, N'HANAK', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (114, N'MERKEZ', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (115, N'POSOF', 75)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (116, N'ARDANUÇ', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (117, N'ARHAVİ', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (118, N'BORÇKA', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (119, N'HOPA', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (120, N'KEMALPAŞA', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (121, N'MERKEZ', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (122, N'MURGUL', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (123, N'ŞAVŞAT', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (124, N'YUSUFELİ', 8)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (125, N'BOZDOĞAN', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (126, N'BUHARKENT', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (127, N'ÇİNE', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (128, N'DİDİM', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (129, N'EFELER', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (130, N'GERMENCİK', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (131, N'İNCİRLİOVA', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (132, N'KARACASU', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (133, N'KARPUZLU', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (134, N'KOÇARLI', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (135, N'KÖŞK', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (136, N'KUŞADASI', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (137, N'KUYUCAK', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (138, N'NAZİLLİ', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (139, N'SÖKE', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (140, N'SULTANHİSAR', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (141, N'YENİPAZAR', 9)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (142, N'ALTIEYLÜL', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (143, N'AYVALIK', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (144, N'BALYA', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (145, N'BANDIRMA', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (146, N'BİGADİÇ', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (147, N'BURHANİYE', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (148, N'DURSUNBEY', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (149, N'EDREMİT', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (150, N'ERDEK', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (152, N'GÖNEN', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (153, N'HAVRAN', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (154, N'İVRİNDİ', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (155, N'KARESİ', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (156, N'KEPSUT', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (157, N'MANYAS', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (158, N'MARMARA', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (159, N'SAVAŞTEPE', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (160, N'SINDIRGI', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (161, N'SUSURLUK', 10)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (162, N'AMASRA', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (163, N'KURUCAŞİLE', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (164, N'MERKEZ', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (165, N'ULUS', 74)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (166, N'BEŞİRİ', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (167, N'GERCÜŞ', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (168, N'HASANKEYF', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (169, N'KOZLUK', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (170, N'MERKEZ', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (171, N'SASON', 72)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (172, N'AYDINTEPE', 69)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (173, N'DEMİRÖZÜ', 69)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (174, N'MERKEZ', 69)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (175, N'BOZÜYÜK', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (176, N'GÖLPAZARI', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (177, N'İNHİSAR', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (178, N'MERKEZ', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (179, N'OSMANELİ', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (180, N'PAZARYERİ', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (181, N'SÖĞÜT', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (182, N'YENİPAZAR', 11)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (183, N'ADAKLI', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (184, N'GENÇ', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (185, N'KARLIOVA', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (186, N'KİĞI', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (187, N'MERKEZ', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (188, N'SOLHAN', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (189, N'YAYLADERE', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (190, N'YEDİSU', 12)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (191, N'ADİLCEVAZ', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (192, N'AHLAT', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (193, N'GÜROYMAK', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (194, N'HİZAN', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (195, N'MERKEZ', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (196, N'MUTKİ', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (197, N'TATVAN', 13)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (198, N'DÖRTDİVAN', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (199, N'GEREDE', 14)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (200, N'GÖYNÜK', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (201, N'KIBRISCIK', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (202, N'MENGEN', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (203, N'MERKEZ', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (204, N'MUDURNU', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (205, N'SEBEN', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (206, N'YENİÇAĞA', 14)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (207, N'AĞLASUN', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (208, N'ALTINYAYLA', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (209, N'BUCAK', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (210, N'ÇAVDIR', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (211, N'ÇELTİKÇİ', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (212, N'GÖLHİSAR', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (213, N'KARAMANLI', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (214, N'KEMER', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (215, N'MERKEZ', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (216, N'TEFENNİ', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (217, N'YEŞİLOVA', 15)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (218, N'BÜYÜKORHAN', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (219, N'GEMLİK', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (220, N'GÜRSU', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (221, N'HARMANCIK', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (222, N'İNEGÖL', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (223, N'İZNİK', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (224, N'KARACABEY', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (225, N'KELES', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (226, N'KESTEL', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (227, N'MUDANYA', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (228, N'MUSTAFAKEMALPAŞA', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (229, N'NİLÜFER', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (230, N'ORHANELİ', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (231, N'ORHANGAZİ', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (232, N'OSMANGAZİ', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (233, N'YENİŞEHİR', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (234, N'YILDIRIM', 16)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (235, N'AYVACIK', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (236, N'BAYRAMİÇ', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (237, N'BİGA', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (238, N'BOZCAADA', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (239, N'ÇAN', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (240, N'ECEABAT', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (241, N'EZİNE', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (242, N'GELİBOLU', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (243, N'GÖKÇEADA', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (244, N'LAPSEKİ', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (245, N'MERKEZ', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (246, N'YENİCE', 17)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (247, N'ATKARACALAR', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (248, N'BAYRAMÖREN', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (249, N'ÇERKEŞ', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (250, N'ELDİVAN', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (251, N'ILGAZ', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (252, N'KIZILIRMAK', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (253, N'KORGUN', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (254, N'KURŞUNLU', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (255, N'MERKEZ', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (256, N'ORTA', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (257, N'ŞABANÖZÜ', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (258, N'YAPRAKLI', 18)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (259, N'ALACA', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (260, N'BAYAT', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (261, N'BOĞAZKALE', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (262, N'DODURGA', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (263, N'İSKİLİP', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (264, N'KARGI', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (265, N'LAÇİN', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (266, N'MECİTÖZÜ', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (267, N'MERKEZ', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (268, N'OĞUZLAR', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (269, N'ORTAKÖY', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (270, N'OSMANCIK', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (271, N'SUNGURLU', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (272, N'UĞURLUDAĞ', 19)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (273, N'ACIPAYAM', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (274, N'BABADAĞ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (275, N'BAKLAN', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (276, N'BEKİLLİ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (277, N'BEYAĞAÇ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (278, N'BOZKURT', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (279, N'BULDAN', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (280, N'ÇAL', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (281, N'ÇAMELİ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (282, N'ÇARDAK', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (283, N'ÇİVRİL', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (284, N'GÜNEY', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (285, N'HONAZ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (286, N'KALE', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (287, N'MERKEZEFENDİ', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (288, N'PAMUKKALE', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (289, N'SARAYKÖY', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (290, N'SERİNHİSAR', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (291, N'TAVAS', 20)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (292, N'BAĞLAR', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (293, N'BİSMİL', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (294, N'ÇERMİK', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (295, N'ÇINAR', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (296, N'ÇÜNGÜŞ', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (297, N'DİCLE', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (298, N'EĞİL', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (299, N'ERGANİ', 21)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (300, N'HANİ', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (301, N'HAZRO', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (302, N'KAYAPINAR', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (303, N'KOCAKÖY', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (304, N'KULP', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (305, N'LİCE', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (306, N'SİLVAN', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (307, N'SUR', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (308, N'YENİŞEHİR', 21)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (309, N'AKÇAKOCA', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (310, N'CUMAYERİ', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (311, N'ÇİLİMLİ', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (312, N'GÖLYAKA', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (313, N'GÜMÜŞOVA', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (314, N'KAYNAŞLI', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (315, N'MERKEZ', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (316, N'YIĞILCA', 81)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (317, N'ENEZ', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (318, N'HAVSA', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (319, N'İPSALA', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (320, N'KEŞAN', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (321, N'LALAPAŞA', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (322, N'MERİÇ', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (323, N'MERKEZ', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (324, N'SÜLOĞLU', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (325, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (326, N'AĞIN', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (327, N'ALACAKAYA', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (328, N'ARICAK', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (329, N'BASKİL', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (330, N'KARAKOÇAN', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (331, N'KEBAN', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (332, N'KOVANCILAR', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (333, N'MADEN', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (334, N'MERKEZ', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (335, N'PALU', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (336, N'SİVRİCE', 23)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (337, N'ÇAYIRLI', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (338, N'İLİÇ', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (339, N'KEMAH', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (340, N'KEMALİYE', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (341, N'MERKEZ', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (342, N'OTLUKBELİ', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (343, N'REFAHİYE', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (344, N'TERCAN', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (345, N'ÜZÜMLÜ', 24)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (346, N'AŞKALE', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (347, N'AZİZİYE', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (348, N'ÇAT', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (349, N'HINIS', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (350, N'HORASAN', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (351, N'İSPİR', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (352, N'KARAÇOBAN', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (353, N'KARAYAZI', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (354, N'KÖPRÜKÖY', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (355, N'NARMAN', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (356, N'OLTU', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (357, N'OLUR', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (358, N'PALANDÖKEN', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (359, N'PASİNLER', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (360, N'PAZARYOLU', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (361, N'ŞENKAYA', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (362, N'TEKMAN', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (363, N'TORTUM', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (364, N'UZUNDERE', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (365, N'YAKUTİYE', 25)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (366, N'ALPU', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (367, N'BEYLİKOVA', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (368, N'ÇİFTELER', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (369, N'GÜNYÜZÜ', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (370, N'HAN', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (371, N'İNÖNÜ', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (372, N'MAHMUDİYE', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (373, N'MİHALGAZİ', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (374, N'MİHALIÇÇIK', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (375, N'ODUNPAZARI', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (376, N'SARICAKAYA', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (377, N'SEYİTGAZİ', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (378, N'SİVRİHİSAR', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (379, N'TEPEBAŞI', 26)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (380, N'ARABAN', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (381, N'İSLAHİYE', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (382, N'KARKAMIŞ', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (383, N'NİZİP', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (384, N'NURDAĞI', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (385, N'OĞUZELİ', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (386, N'ŞAHİNBEY', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (387, N'ŞEHİTKAMİL', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (388, N'YAVUZELİ', 27)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (389, N'ALUCRA', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (390, N'BULANCAK', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (391, N'ÇAMOLUK', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (392, N'ÇANAKÇI', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (393, N'DERELİ', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (394, N'DOĞANKENT', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (395, N'ESPİYE', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (396, N'EYNESİL', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (397, N'GÖRELE', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (398, N'GÜCE', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (399, N'KEŞAP', 28)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (400, N'MERKEZ', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (401, N'PİRAZİZ', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (402, N'ŞEBİNKARAHİSAR', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (403, N'TİREBOLU', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (404, N'YAĞLIDERE', 28)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (405, N'KELKİT', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (406, N'KÖSE', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (407, N'KÜRTÜN', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (408, N'MERKEZ', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (409, N'ŞİRAN', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (410, N'TORUL', 29)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (411, N'ÇUKURCA', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (412, N'DERECİK', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (413, N'MERKEZ', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (414, N'ŞEMDİNLİ', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (415, N'YÜKSEKOVA', 30)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (416, N'ALTINÖZÜ', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (417, N'ANTAKYA', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (418, N'ARSUZ', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (419, N'BELEN', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (420, N'DEFNE', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (421, N'DÖRTYOL', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (422, N'ERZİN', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (423, N'HASSA', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (424, N'İSKENDERUN', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (425, N'KIRIKHAN', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (426, N'KUMLU', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (427, N'PAYAS', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (428, N'REYHANLI', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (429, N'SAMANDAĞ', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (430, N'YAYLADAĞI', 31)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (431, N'ARALIK', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (432, N'KARAKOYUNLU', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (433, N'MERKEZ', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (434, N'TUZLUCA', 76)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (435, N'AKSU', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (436, N'ATABEY', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (437, N'EĞİRDİR', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (438, N'GELENDOST', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (439, N'GÖNEN', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (440, N'KEÇİBORLU', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (441, N'MERKEZ', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (442, N'SENİRKENT', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (443, N'SÜTÇÜLER', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (444, N'ŞARKİKARAAĞAÇ', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (445, N'ULUBORLU', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (446, N'YALVAÇ', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (447, N'YENİŞARBADEMLİ', 32)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (448, N'ADALAR', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (449, N'ARNAVUTKÖY', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (450, N'ATAŞEHİR', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (451, N'AVCILAR', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (452, N'BAĞCILAR', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (453, N'BAHÇELİEVLER', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (454, N'BAKIRKÖY', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (455, N'BAŞAKŞEHİR', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (456, N'BAYRAMPAŞA', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (457, N'BEŞİKTAŞ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (458, N'BEYKOZ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (459, N'BEYLİKDÜZÜ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (460, N'BEYOĞLU', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (461, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (462, N'ÇATALCA', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (463, N'ÇEKMEKÖY', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (464, N'ESENLER', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (465, N'ESENYURT', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (466, N'EYÜPSULTAN', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (467, N'FATİH', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (468, N'GAZİOSMANPAŞA', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (469, N'GÜNGÖREN', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (470, N'KADIKÖY', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (471, N'KAĞITHANE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (472, N'KARTAL', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (473, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (474, N'MALTEPE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (475, N'PENDİK', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (476, N'SANCAKTEPE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (477, N'SARIYER', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (478, N'SİLİVRİ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (479, N'SULTANBEYLİ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (480, N'SULTANGAZİ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (481, N'ŞİLE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (482, N'ŞİŞLİ', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (483, N'TUZLA', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (484, N'ÜMRANİYE', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (485, N'ÜSKÜDAR', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (486, N'ZEYTİNBURNU', 34)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (487, N'ALİAĞA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (488, N'BALÇOVA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (489, N'BAYINDIR', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (490, N'BAYRAKLI', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (491, N'BERGAMA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (492, N'BEYDAĞ', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (493, N'BORNOVA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (494, N'BUCA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (495, N'ÇEŞME', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (496, N'ÇİĞLİ', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (497, N'DİKİLİ', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (498, N'FOÇA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (499, N'GAZİEMİR', 35)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (500, N'GÜZELBAHÇE', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (501, N'KARABAĞLAR', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (502, N'KARABURUN', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (503, N'KARŞIYAKA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (504, N'KEMALPAŞA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (505, N'KINIK', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (506, N'KİRAZ', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (507, N'KONAK', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (508, N'MENDERES', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (509, N'MENEMEN', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (510, N'NARLIDERE', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (511, N'ÖDEMİŞ', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (512, N'SEFERİHİSAR', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (513, N'SELÇUK', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (514, N'TİRE', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (515, N'TORBALI', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (516, N'URLA', 35)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (517, N'AFŞİN', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (518, N'ANDIRIN', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (519, N'ÇAĞLAYANCERİT', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (520, N'DULKADİROĞLU', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (521, N'EKİNÖZÜ', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (522, N'ELBİSTAN', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (523, N'GÖKSUN', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (524, N'NURHAK', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (525, N'ONİKİŞUBAT', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (526, N'PAZARCIK', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (527, N'TÜRKOĞLU', 46)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (528, N'EFLANİ', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (529, N'ESKİPAZAR', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (530, N'MERKEZ', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (531, N'OVACIK', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (532, N'SAFRANBOLU', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (533, N'YENİCE', 78)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (534, N'AYRANCI', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (535, N'BAŞYAYLA', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (536, N'ERMENEK', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (537, N'KAZIMKARABEKİR', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (538, N'MERKEZ', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (539, N'SARIVELİLER', 70)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (540, N'AKYAKA', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (541, N'ARPAÇAY', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (542, N'DİGOR', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (543, N'KAĞIZMAN', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (544, N'MERKEZ', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (545, N'SARIKAMIŞ', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (546, N'SELİM', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (547, N'SUSUZ', 36)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (548, N'ABANA', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (549, N'AĞLI', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (550, N'ARAÇ', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (551, N'AZDAVAY', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (552, N'BOZKURT', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (553, N'CİDE', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (554, N'ÇATALZEYTİN', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (555, N'DADAY', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (556, N'DEVREKANİ', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (557, N'DOĞANYURT', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (558, N'HANÖNÜ', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (559, N'İHSANGAZİ', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (560, N'İNEBOLU', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (561, N'KÜRE', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (562, N'MERKEZ', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (563, N'PINARBAŞI', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (564, N'SEYDİLER', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (565, N'ŞENPAZAR', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (566, N'TAŞKÖPRÜ', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (567, N'TOSYA', 37)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (568, N'AKKIŞLA', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (569, N'BÜNYAN', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (570, N'DEVELİ', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (571, N'FELAHİYE', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (572, N'HACILAR', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (573, N'İNCESU', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (574, N'KOCASİNAN', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (575, N'MELİKGAZİ', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (576, N'ÖZVATAN', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (577, N'PINARBAŞI', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (578, N'SARIOĞLAN', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (579, N'SARIZ', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (580, N'TALAS', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (581, N'TOMARZA', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (582, N'YAHYALI', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (583, N'YEŞİLHİSAR', 38)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (584, N'BAHŞILI', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (585, N'BALIŞEYH', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (586, N'ÇELEBİ', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (587, N'DELİCE', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (588, N'KARAKEÇİLİ', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (589, N'KESKİN', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (590, N'MERKEZ', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (591, N'SULAKYURT', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (592, N'YAHŞİHAN', 71)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (593, N'BABAESKİ', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (594, N'DEMİRKÖY', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (595, N'KOFÇAZ', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (596, N'LÜLEBURGAZ', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (597, N'MERKEZ', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (598, N'PEHLİVANKÖY', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (599, N'PINARHİSAR', 39)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (600, N'VİZE', 39)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (601, N'AKÇAKENT', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (602, N'AKPINAR', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (603, N'BOZTEPE', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (604, N'ÇİÇEKDAĞI', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (605, N'KAMAN', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (606, N'MERKEZ', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (607, N'MUCUR', 40)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (608, N'ELBEYLİ', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (609, N'MERKEZ', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (610, N'MUSABEYLİ', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (611, N'POLATELİ', 79)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (612, N'BAŞİSKELE', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (613, N'ÇAYIROVA', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (614, N'DARICA', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (615, N'DERİNCE', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (616, N'DİLOVASI', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (617, N'GEBZE', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (618, N'GÖLCÜK', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (619, N'İZMİT', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (620, N'KANDIRA', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (621, N'KARAMÜRSEL', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (622, N'KARTEPE', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (623, N'KÖRFEZ', 41)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (624, N'AHIRLI', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (625, N'AKÖREN', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (626, N'AKŞEHİR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (627, N'ALTINEKİN', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (628, N'BEYŞEHİR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (629, N'BOZKIR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (630, N'CİHANBEYLİ', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (631, N'ÇELTİK', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (632, N'ÇUMRA', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (633, N'DERBENT', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (634, N'DEREBUCAK', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (635, N'DOĞANHİSAR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (636, N'EMİRGAZİ', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (637, N'EREĞLİ', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (638, N'GÜNEYSINIR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (639, N'HADİM', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (640, N'HALKAPINAR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (641, N'HÜYÜK', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (642, N'ILGIN', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (643, N'KADINHANI', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (644, N'KARAPINAR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (645, N'KARATAY', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (646, N'KULU', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (647, N'MERAM', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (648, N'SARAYÖNÜ', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (649, N'SELÇUKLU', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (650, N'SEYDİŞEHİR', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (651, N'TAŞKENT', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (652, N'TUZLUKÇU', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (653, N'YALIHÜYÜK', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (654, N'YUNAK', 42)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (655, N'ALTINTAŞ', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (656, N'ASLANAPA', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (657, N'ÇAVDARHİSAR', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (658, N'DOMANİÇ', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (659, N'DUMLUPINAR', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (660, N'EMET', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (661, N'GEDİZ', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (662, N'HİSARCIK', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (663, N'MERKEZ', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (664, N'PAZARLAR', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (665, N'SİMAV', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (666, N'ŞAPHANE', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (667, N'TAVŞANLI', 43)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (668, N'AKÇADAĞ', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (669, N'ARAPGİR', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (670, N'ARGUVAN', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (671, N'BATTALGAZİ', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (672, N'DARENDE', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (673, N'DOĞANŞEHİR', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (674, N'DOĞANYOL', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (675, N'HEKİMHAN', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (676, N'KALE', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (677, N'KULUNCAK', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (678, N'PÜTÜRGE', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (679, N'YAZIHAN', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (680, N'YEŞİLYURT', 44)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (681, N'AHMETLİ', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (682, N'AKHİSAR', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (683, N'ALAŞEHİR', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (684, N'DEMİRCİ', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (685, N'GÖLMARMARA', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (686, N'GÖRDES', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (687, N'KIRKAĞAÇ', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (688, N'KÖPRÜBAŞI', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (689, N'KULA', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (690, N'SALİHLİ', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (691, N'SARIGÖL', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (692, N'SARUHANLI', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (693, N'SELENDİ', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (694, N'SOMA', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (695, N'ŞEHZADELER', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (696, N'TURGUTLU', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (697, N'YUNUSEMRE', 45)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (698, N'ARTUKLU', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (699, N'DARGEÇİT', 47)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (700, N'DERİK', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (701, N'KIZILTEPE', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (702, N'MAZIDAĞI', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (703, N'MİDYAT', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (704, N'NUSAYBİN', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (705, N'ÖMERLİ', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (706, N'SAVUR', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (707, N'YEŞİLLİ', 47)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (708, N'AKDENİZ', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (709, N'ANAMUR', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (710, N'AYDINCIK', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (711, N'BOZYAZI', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (712, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (713, N'ERDEMLİ', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (714, N'GÜLNAR', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (715, N'MEZİTLİ', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (716, N'MUT', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (717, N'SİLİFKE', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (718, N'TARSUS', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (719, N'TOROSLAR', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (720, N'YENİŞEHİR', 33)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (721, N'BODRUM', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (722, N'DALAMAN', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (723, N'DATÇA', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (724, N'FETHİYE', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (725, N'KAVAKLIDERE', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (726, N'KÖYCEĞİZ', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (727, N'MARMARİS', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (728, N'MENTEŞE', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (729, N'MİLAS', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (730, N'ORTACA', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (731, N'SEYDİKEMER', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (732, N'ULA', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (733, N'YATAĞAN', 48)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (734, N'BULANIK', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (735, N'HASKÖY', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (736, N'KORKUT', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (737, N'MALAZGİRT', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (738, N'MERKEZ', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (739, N'VARTO', 49)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (740, N'ACIGÖL', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (741, N'AVANOS', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (742, N'DERİNKUYU', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (743, N'GÜLŞEHİR', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (744, N'HACIBEKTAŞ', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (745, N'KOZAKLI', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (746, N'MERKEZ', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (747, N'ÜRGÜP', 50)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (748, N'ALTUNHİSAR', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (749, N'BOR', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (750, N'ÇAMARDI', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (751, N'ÇİFTLİK', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (752, N'MERKEZ', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (753, N'ULUKIŞLA', 51)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (754, N'AKKUŞ', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (755, N'ALTINORDU', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (756, N'AYBASTI', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (757, N'ÇAMAŞ', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (758, N'ÇATALPINAR', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (759, N'ÇAYBAŞI', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (760, N'FATSA', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (761, N'GÖLKÖY', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (762, N'GÜLYALI', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (763, N'GÜRGENTEPE', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (764, N'İKİZCE', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (765, N'KABADÜZ', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (766, N'KABATAŞ', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (767, N'KORGAN', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (768, N'KUMRU', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (769, N'MESUDİYE', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (770, N'PERŞEMBE', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (771, N'ULUBEY', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (772, N'ÜNYE', 52)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (773, N'BAHÇE', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (774, N'DÜZİÇİ', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (775, N'HASANBEYLİ', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (776, N'KADİRLİ', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (777, N'MERKEZ', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (778, N'SUMBAS', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (779, N'TOPRAKKALE', 80)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (780, N'ARDEŞEN', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (781, N'ÇAMLIHEMŞİN', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (782, N'ÇAYELİ', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (783, N'DEREPAZARI', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (784, N'FINDIKLI', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (785, N'GÜNEYSU', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (786, N'HEMŞİN', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (787, N'İKİZDERE', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (788, N'İYİDERE', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (789, N'KALKANDERE', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (790, N'MERKEZ', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (791, N'PAZAR', 53)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (792, N'ADAPAZARI', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (793, N'AKYAZI', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (794, N'ARİFİYE', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (795, N'ERENLER', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (796, N'FERİZLİ', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (797, N'GEYVE', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (798, N'HENDEK', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (799, N'KARAPÜRÇEK', 54)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (800, N'KARASU', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (801, N'KAYNARCA', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (802, N'KOCAALİ', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (803, N'PAMUKOVA', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (804, N'SAPANCA', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (805, N'SERDİVAN', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (806, N'SÖĞÜTLÜ', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (807, N'TARAKLI', 54)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (808, N'19 MAYIS', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (809, N'ALAÇAM', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (810, N'ASARCIK', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (811, N'ATAKUM', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (812, N'AYVACIK', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (813, N'BAFRA', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (814, N'CANİK', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (815, N'ÇARŞAMBA', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (816, N'HAVZA', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (817, N'İLKADIM', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (818, N'KAVAK', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (819, N'LADİK', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (820, N'SALIPAZARI', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (821, N'TEKKEKÖY', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (822, N'TERME', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (823, N'VEZİRKÖPRÜ', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (824, N'YAKAKENT', 55)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (825, N'BAYKAN', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (826, N'ERUH', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (827, N'KURTALAN', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (828, N'MERKEZ', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (829, N'PERVARİ', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (830, N'ŞİRVAN', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (831, N'TİLLO', 56)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (832, N'AYANCIK', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (833, N'BOYABAT', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (834, N'DİKMEN', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (835, N'DURAĞAN', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (836, N'ERFELEK', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (837, N'GERZE', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (838, N'MERKEZ', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (839, N'SARAYDÜZÜ', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (840, N'TÜRKELİ', 57)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (841, N'AKINCILAR', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (842, N'ALTINYAYLA', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (843, N'DİVRİĞİ', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (844, N'DOĞANŞAR', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (845, N'GEMEREK', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (846, N'GÖLOVA', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (847, N'GÜRÜN', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (848, N'HAFİK', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (849, N'İMRANLI', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (850, N'KANGAL', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (851, N'KOYULHİSAR', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (852, N'MERKEZ', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (853, N'SUŞEHRİ', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (854, N'ŞARKIŞLA', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (855, N'ULAŞ', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (856, N'YILDIZELİ', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (857, N'ZARA', 58)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (858, N'AKÇAKALE', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (859, N'BİRECİK', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (860, N'BOZOVA', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (861, N'CEYLANPINAR', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (862, N'EYYÜBİYE', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (863, N'HALFETİ', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (864, N'HALİLİYE', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (865, N'HARRAN', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (866, N'HİLVAN', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (867, N'KARAKÖPRÜ', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (868, N'SİVEREK', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (869, N'SURUÇ', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (870, N'VİRANŞEHİR', 63)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (871, N'BEYTÜŞŞEBAP', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (872, N'CİZRE', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (873, N'GÜÇLÜKONAK', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (874, N'İDİL', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (875, N'MERKEZ', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (876, N'SİLOPİ', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (877, N'ULUDERE', 73)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (878, N'ÇERKEZKÖY', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (879, N'ÇORLU', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (880, N'ERGENE', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (881, N'HAYRABOLU', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (882, N'KAPAKLI', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (883, N'MALKARA', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (884, N'MARMARAEREĞLİSİ', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (885, N'MURATLI', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (886, N'SARAY', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (887, N'SÜLEYMANPAŞA', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (888, N'ŞARKÖY', 59)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (889, N'ALMUS', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (890, N'ARTOVA', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (891, N'BAŞÇİFTLİK', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (892, N'ERBAA', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (893, N'MERKEZ', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (894, N'NİKSAR', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (895, N'PAZAR', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (896, N'REŞADİYE', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (897, N'SULUSARAY', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (898, N'TURHAL', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (899, N'YEŞİLYURT', 60)
GO
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (900, N'ZİLE', 60)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (901, N'AKÇAABAT', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (902, N'ARAKLI', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (903, N'ARSİN', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (904, N'BEŞİKDÜZÜ', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (905, N'ÇARŞIBAŞI', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (906, N'ÇAYKARA', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (907, N'DERNEKPAZARI', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (908, N'DÜZKÖY', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (909, N'HAYRAT', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (910, N'KÖPRÜBAŞI', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (911, N'MAÇKA', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (912, N'OF', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (913, N'ORTAHİSAR', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (914, N'SÜRMENE', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (915, N'ŞALPAZARI', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (916, N'TONYA', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (917, N'VAKFIKEBİR', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (918, N'YOMRA', 61)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (919, N'ÇEMİŞGEZEK', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (920, N'HOZAT', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (921, N'MAZGİRT', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (922, N'MERKEZ', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (923, N'NAZIMİYE', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (924, N'OVACIK', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (925, N'PERTEK', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (926, N'PÜLÜMÜR', 62)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (927, N'BANAZ', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (928, N'EŞME', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (929, N'KARAHALLI', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (930, N'MERKEZ', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (931, N'SİVASLI', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (932, N'ULUBEY', 64)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (933, N'BAHÇESARAY', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (934, N'BAŞKALE', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (935, N'ÇALDIRAN', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (936, N'ÇATAK', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (937, N'EDREMİT', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (938, N'ERCİŞ', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (939, N'GEVAŞ', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (940, N'GÜRPINAR', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (941, N'İPEKYOLU', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (942, N'MURADİYE', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (943, N'ÖZALP', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (944, N'SARAY', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (945, N'TUŞBA', 65)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (946, N'ALTINOVA', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (947, N'ARMUTLU', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (948, N'ÇINARCIK', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (949, N'ÇİFTLİKKÖY', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (950, N'MERKEZ', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (951, N'TERMAL', 77)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (952, N'AKDAĞMADENİ', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (953, N'AYDINCIK', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (954, N'BOĞAZLIYAN', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (955, N'ÇANDIR', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (956, N'ÇAYIRALAN', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (957, N'ÇEKEREK', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (958, N'KADIŞEHRİ', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (959, N'MERKEZ', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (960, N'SARAYKENT', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (961, N'SARIKAYA', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (962, N'SORGUN', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (963, N'ŞEFAATLİ', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (964, N'YENİFAKILI', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (965, N'YERKÖY', 66)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (966, N'ALAPLI', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (967, N'ÇAYCUMA', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (968, N'DEVREK', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (969, N'EREĞLİ', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (970, N'GÖKÇEBEY', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (971, N'KİLİMLİ', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (972, N'KOZLU', 67)
INSERT [dbo].[Districts] ([Id], [Name], [CityId]) VALUES (973, N'MERKEZ', 67)
SET IDENTITY_INSERT [dbo].[Districts] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (1, N'Levent Lüx Ofis', CAST(2000000.00 AS Decimal(18, 2)), N'property-1.jpg', N'123 Sokak No:10', N'Satılık', N'Levent', 3, 34, 1, 1)
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (4, N'Zorlu Center', CAST(30000000.00 AS Decimal(18, 2)), N'property-2.jpg', N'Sosyete Sokak.', N'Kiralık', N'Etiler', 5, 34, 2, 0)
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (5, N'Sıcak Yuva', CAST(5000000.00 AS Decimal(18, 2)), N'property-3.jpg', N'Tantavi Mah. Akın Sok.', N'Kiralık', N'Ümraniye', 6, 34, 1, 1)
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (6, N'Dubleks Villa', CAST(30000000.00 AS Decimal(18, 2)), N'property-4.jpg', N'Acar Kent ', N'Satılık', N'Beykoz', 2, 34, 1, 0)
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (7, N'Satılık Yazlıık', CAST(1500000.00 AS Decimal(18, 2)), N'property-5.jpg', N'Askeri kışlka karşısı ', N'Satılık', N'Mamak', 4, 6, 3, 1)
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (8, N'Satılık Sıfır Daire', CAST(3000000.00 AS Decimal(18, 2)), N'property-6.jpg', N'Saat Kulesi sokak', N'Satılık', N'Konak', 1, 35, 4, 0)
INSERT [dbo].[Products] ([Id], [Title], [Price], [CoverImage], [Address], [Type], [District], [CategoryId], [CityId], [AgencyId], [IsFavorite]) VALUES (9, N'Aileye uygun Kiralık', CAST(500000.00 AS Decimal(18, 2)), N'property-1.jpg', N'Zekeriyaköy ', N'Satılık', N'Sarıyer', 1, 75, 1, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_Districts_CityId]    Script Date: 11.05.2024 18:38:16 ******/
CREATE NONCLUSTERED INDEX [IX_Districts_CityId] ON [dbo].[Districts]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductDetails_ProductId]    Script Date: 11.05.2024 18:38:16 ******/
CREATE NONCLUSTERED INDEX [IX_ProductDetails_ProductId] ON [dbo].[ProductDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_AgencyId]    Script Date: 11.05.2024 18:38:16 ******/
CREATE NONCLUSTERED INDEX [IX_Products_AgencyId] ON [dbo].[Products]
(
	[AgencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 11.05.2024 18:38:16 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CityId]    Script Date: 11.05.2024 18:38:16 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CityId] ON [dbo].[Products]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (N'') FOR [Icon]
GO
ALTER TABLE [dbo].[Clients] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFavorite]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Cities_CityId]
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
