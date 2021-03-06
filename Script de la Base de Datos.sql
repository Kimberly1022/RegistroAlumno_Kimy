USE [master]
GO
/****** Object:  Database [REGISTRO]    Script Date: 12/09/2021 19:26:07 ******/
CREATE DATABASE [REGISTRO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'REGISTRO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\REGISTRO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'REGISTRO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\REGISTRO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [REGISTRO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [REGISTRO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [REGISTRO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [REGISTRO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [REGISTRO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [REGISTRO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [REGISTRO] SET ARITHABORT OFF 
GO
ALTER DATABASE [REGISTRO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [REGISTRO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [REGISTRO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [REGISTRO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [REGISTRO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [REGISTRO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [REGISTRO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [REGISTRO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [REGISTRO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [REGISTRO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [REGISTRO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [REGISTRO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [REGISTRO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [REGISTRO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [REGISTRO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [REGISTRO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [REGISTRO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [REGISTRO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [REGISTRO] SET  MULTI_USER 
GO
ALTER DATABASE [REGISTRO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [REGISTRO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [REGISTRO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [REGISTRO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [REGISTRO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [REGISTRO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [REGISTRO] SET QUERY_STORE = OFF
GO
USE [REGISTRO]
GO
/****** Object:  Table [dbo].[ALUMNO]    Script Date: 12/09/2021 19:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNO](
	[CODIGO] [varchar](5) NOT NULL,
	[NOMBRES] [varchar](100) NULL,
	[APELLIDOS] [varchar](100) NULL,
	[DIRECCION] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ALUMNO] ([CODIGO], [NOMBRES], [APELLIDOS], [DIRECCION]) VALUES (N'IT01', N'KIMBERLY', N'DE LEON', N'AV. INDEPENDENCIA  Sto. Dgo.')
INSERT [dbo].[ALUMNO] ([CODIGO], [NOMBRES], [APELLIDOS], [DIRECCION]) VALUES (N'IT02', N'RANGEL', N'ACEVEDO', N'AV. NUÑEZ Sto. Dgo.')
INSERT [dbo].[ALUMNO] ([CODIGO], [NOMBRES], [APELLIDOS], [DIRECCION]) VALUES (N'IT03', N'MARIO', N'PICHONEAU', N'AV. LUPERON Sto. Dgo.')
INSERT [dbo].[ALUMNO] ([CODIGO], [NOMBRES], [APELLIDOS], [DIRECCION]) VALUES (N'IT04', N'MANUELA', N'DE LEON', N'AV. LOS RESTAURADORES Sto. Dgo.')
GO
USE [master]
GO
ALTER DATABASE [REGISTRO] SET  READ_WRITE 
GO
