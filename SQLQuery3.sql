USE [master]
GO
/****** Object:  Database [proyectonexus]    Script Date: 02/11/2021 11:38:01 ******/
CREATE DATABASE [proyectonexus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'proyectonexus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\proyectonexus.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'proyectonexus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\proyectonexus_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [proyectonexus] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [proyectonexus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [proyectonexus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [proyectonexus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [proyectonexus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [proyectonexus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [proyectonexus] SET ARITHABORT OFF 
GO
ALTER DATABASE [proyectonexus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [proyectonexus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [proyectonexus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [proyectonexus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [proyectonexus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [proyectonexus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [proyectonexus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [proyectonexus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [proyectonexus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [proyectonexus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [proyectonexus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [proyectonexus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [proyectonexus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [proyectonexus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [proyectonexus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [proyectonexus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [proyectonexus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [proyectonexus] SET RECOVERY FULL 
GO
ALTER DATABASE [proyectonexus] SET  MULTI_USER 
GO
ALTER DATABASE [proyectonexus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [proyectonexus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [proyectonexus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [proyectonexus] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [proyectonexus] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [proyectonexus] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'proyectonexus', N'ON'
GO
ALTER DATABASE [proyectonexus] SET QUERY_STORE = OFF
GO
USE [proyectonexus]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 02/11/2021 11:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autor](
	[id_autor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha] [date] NULL,
	[ciudad] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
 CONSTRAINT [PK_autor_1] PRIMARY KEY CLUSTERED 
(
	[id_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[libros]    Script Date: 02/11/2021 11:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NULL,
	[año] [int] NULL,
	[genero] [varchar](50) NULL,
	[nun_pag] [int] NULL,
	[id_autor] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[autor] ON 
GO
INSERT [dbo].[autor] ([id_autor], [nombre], [fecha], [ciudad], [correo]) VALUES (2005, N'Enoth Salcedo B', CAST(N'2021-11-01' AS Date), N'Bogota', N'enothsalcedo@gmail.com')
GO
INSERT [dbo].[autor] ([id_autor], [nombre], [fecha], [ciudad], [correo]) VALUES (2006, N'Jorge Salazar Robledo', CAST(N'1997-07-20' AS Date), N'Cali', N'jorgerobledo@hotmail.com')
GO
SET IDENTITY_INSERT [dbo].[autor] OFF
GO
USE [master]
GO
ALTER DATABASE [proyectonexus] SET  READ_WRITE 
GO
