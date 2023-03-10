USE [master]
GO
/****** Object:  Database [Абоненты]    Script Date: 20.12.2022 9:49:52 ******/
CREATE DATABASE [Абоненты]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Абоненты', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Абоненты_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Абоненты] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Абоненты].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Абоненты] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Абоненты] SET ARITHABORT OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Абоненты] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Абоненты] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Абоненты] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Абоненты] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Абоненты] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Абоненты] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Абоненты] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Абоненты] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Абоненты] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Абоненты] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Абоненты] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Абоненты] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Абоненты] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Абоненты] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Абоненты] SET RECOVERY FULL 
GO
ALTER DATABASE [Абоненты] SET  MULTI_USER 
GO
ALTER DATABASE [Абоненты] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Абоненты] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Абоненты] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Абоненты] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Абоненты] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Абоненты', N'ON'
GO
ALTER DATABASE [Абоненты] SET QUERY_STORE = OFF
GO
USE [Абоненты]
GO
/****** Object:  Table [dbo].[Абонент]    Script Date: 20.12.2022 9:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абонент](
	[ID_Абонента] [int] NOT NULL,
	[ФИО_абонента] [nvarchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
	[Телефон] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговор]    Script Date: 20.12.2022 9:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговор](
	[ID_Разговора] [int] NOT NULL,
	[Дата_Разговора] [date] NULL,
	[Продолжительность_мин] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тарифы]    Script Date: 20.12.2022 9:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тарифы](
	[ID_Тарифа] [int] NOT NULL,
	[Код_Города] [int] NULL,
	[Название_города] [nvarchar](50) NULL,
	[Тариф_стоимость_1_мин] [int] NULL,
	[Сост_оплаты] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Тарифа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Телефон]    Script Date: 20.12.2022 9:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Телефон](
	[ID_Телефона] [int] NOT NULL,
	[Номер_договора] [int] NULL,
	[Дата_установки] [date] NULL,
	[Телефон] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абонент] ([ID_Абонента], [ФИО_абонента], [Адрес], [Телефон]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4



', 12333221)
INSERT [dbo].[Абонент] ([ID_Абонента], [ФИО_абонента], [Адрес], [Телефон]) VALUES (2, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24', 21231123)
INSERT [dbo].[Абонент] ([ID_Абонента], [ФИО_абонента], [Адрес], [Телефон]) VALUES (3, N'Вавилов
Сергей Борисович
', N'Г. Омск, пр.Маркса, 34,23', 12321311)
INSERT [dbo].[Абонент] ([ID_Абонента], [ФИО_абонента], [Адрес], [Телефон]) VALUES (4, N'Титова Александра Ивановна', N'г. Омск, ул. Ленина, 5,24', 12333490)
INSERT [dbo].[Абонент] ([ID_Абонента], [ФИО_абонента], [Адрес], [Телефон]) VALUES (5, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', 23212332)
GO
ALTER TABLE [dbo].[Разговор]  WITH CHECK ADD  CONSTRAINT [FK_Разговор_Тарифы] FOREIGN KEY([ID_Разговора])
REFERENCES [dbo].[Тарифы] ([ID_Тарифа])
GO
ALTER TABLE [dbo].[Разговор] CHECK CONSTRAINT [FK_Разговор_Тарифы]
GO
ALTER TABLE [dbo].[Телефон]  WITH CHECK ADD  CONSTRAINT [FK_Телефон_Абонент] FOREIGN KEY([ID_Телефона])
REFERENCES [dbo].[Абонент] ([ID_Абонента])
GO
ALTER TABLE [dbo].[Телефон] CHECK CONSTRAINT [FK_Телефон_Абонент]
GO
ALTER TABLE [dbo].[Телефон]  WITH CHECK ADD  CONSTRAINT [FK_Телефон_Тарифы] FOREIGN KEY([ID_Телефона])
REFERENCES [dbo].[Тарифы] ([ID_Тарифа])
GO
ALTER TABLE [dbo].[Телефон] CHECK CONSTRAINT [FK_Телефон_Тарифы]
GO
USE [master]
GO
ALTER DATABASE [Абоненты] SET  READ_WRITE 
GO
