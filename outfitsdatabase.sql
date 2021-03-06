USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 4/30/2017 7:37:08 PM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 4/30/2017 7:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryBrand] [nvarchar](50) NULL,
	[AccessoryStyle] [nvarchar](50) NULL,
	[AccessoryColor] [nvarchar](50) NULL,
	[AccessorySeason] [nvarchar](50) NULL,
	[AccessoryOccasion] [nvarchar](50) NULL,
	[AccessoryPhoto] [nvarchar](100) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 4/30/2017 7:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomBrand] [nvarchar](50) NULL,
	[BottomStyle] [nvarchar](50) NULL,
	[BottomSeason] [nvarchar](50) NULL,
	[BottomOccasion] [nvarchar](50) NULL,
	[BottomPhoto] [nvarchar](100) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 4/30/2017 7:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 4/30/2017 7:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeBrand] [nvarchar](50) NULL,
	[ShoeStyle] [nvarchar](50) NULL,
	[ShoeColor] [nvarchar](50) NULL,
	[ShoeSeason] [nvarchar](50) NULL,
	[ShoeOccasion] [nvarchar](50) NULL,
	[ShoePhoto] [nvarchar](100) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 4/30/2017 7:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopBrand] [nvarchar](50) NULL,
	[TopColor] [nvarchar](50) NULL,
	[TopSeason] [nvarchar](50) NULL,
	[TopOccasion] [nvarchar](50) NULL,
	[TopPhoto] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (1, N'Gap', N'Tie', N'Black', N'Winter', N'Dress', N'\Content\mentieblack.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (2, N'Gap', N'Tie', N'Blue', N'Fall', N'Dress', N'\Content\mentieblue.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (3, N'Brooks Brothers', N'Tie', N'Purple', N'Spring', N'Dress', N'\Content\mentiepurple.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (4, N'Abercrombie & Fitch', N'Wallet', N'Brown', N'Any', N'Any', N'\Content\menwallet.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (5, N'Gap', N'Belt', N'Black', N'Any', N'Dress', N'\Content\womenbeltblack.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (6, N'Gap', N'Belt', N'Brown', N'Fall', N'Any', N'\Content\womenbeltbrown.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (7, N'Zales', N'Earring', N'Gold', N'Spring', N'Dress', N'\Content\womenearringsolidgold.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryBrand], [AccessoryStyle], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [AccessoryPhoto]) VALUES (8, N'Zales', N'Earring', N'Gold', N'Winter', N'Dress', N'\Content\womenhoopgold.jpg')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (1, N'H&M', N'Long Pants', N'Winter', N'Dress', N'\Content\goods_69_167569.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (2, N'Gap', N'Straight Leg', N'All Season', N'Dress', N'\Content\bottomsdressmens.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (3, N'Black Diamond', N'Straight Leg', N'Winter', N'Sport', N'\Content\bottomskhakiski.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (4, N'Abercrombie & Fitch', N'Straight Leg', N'Fall', N'Casual', N'\Content\bottomsmenjeandark.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (5, N'Abercrombie & Fitch', N'Straight Leg', N'All Season', N'Casual', N'\Content\bottomsmenjeanlight.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (6, N'Gap', N'Cropped', N'Spring', N'Dress', N'\Content\bottomswomendress.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (7, N'Abercrombie & Fitch', N'Wide Leg', N'Fall', N'Dress', N'\Content\bottomswomengreydress.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [BottomBrand], [BottomStyle], [BottomSeason], [BottomOccasion], [BottomPhoto]) VALUES (8, N'Nike', N'Straight Leg', N'Fall', N'Sport', N'\Content\bottomswomenrun.jpg')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (1, N'Brooks Brothers', N'Wingtip', N'Black', N'Winter', N'Dress', N'\Content\menblackdress.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (2, N'Gap', N'Sneaker', N'Brown', N'Fall', N'Casual', N'\Content\mencasualshoe.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (3, N'Nike', N'Sneaker', N'Multi', N'Summer', N'Sport', N'\Content\menrunningshoe.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (4, N'Gap', N'Sneaker', N'White', N'Spring', N'Casual', N'\Content\menwhiteshoe.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (5, N'Coach', N'Heel', N'Brown', N'Winter', N'Dress', N'\Content\womenbrowndressshoe.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (6, N'Brooks Brothers', N'Heel', N'Brown', N'Summer', N'Dress', N'\Content\womenopenheel.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (7, N'Gap', N'Wingtip', N'White', N'Fall', N'Casual', N'\Content\womenwhitebrown.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeBrand], [ShoeStyle], [ShoeColor], [ShoeSeason], [ShoeOccasion], [ShoePhoto]) VALUES (8, N'Gap', N'Heel', N'Yellow', N'Spring', N'Dress', N'\Content\womenyellowshoe.jpg')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (3, N'Gap', N'Grey', N'Spring', N'Casual', N'\Content\topmenbaseball.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (4, N'Brooks Brothers', N'Blue', N'Summer', N'Dress', N'\Content\topmenblue.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (5, N'Abercrombie & Fitch', N'Green', N'Summer', N'Casual', N'\Content\topmentshirt.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (6, N'Brooks Brothers', N'Multi', N'Fall', N'Dress', N'\Content\topmenwhiteblack.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (7, N'Gap', N'White', N'Spring', N'Casual', N'\Content\topwomenstripe.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (8, N'Abercrombie & Fitch', N'Black', N'Fall', N'Dress', N'\Content\topwomenuniqlo.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (9, N'Brooks Brothers', N'White', N'Spring', N'Dress', N'\Content\topwomenwhiteprint.jpg')
INSERT [dbo].[Tops] ([TopID], [TopBrand], [TopColor], [TopSeason], [TopOccasion], [TopPhoto]) VALUES (10, N'Gap', N'Blue', N'Winter', N'Casual', N'\Content\womenbluedressshirt.jpg')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
