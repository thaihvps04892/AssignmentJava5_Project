USE [master]
GO
/****** Object:  Database [data_ABCgroup]    Script Date: 9/9/2017 3:10:30 PM ******/
CREATE DATABASE [data_ABCgroup]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'data_ABCgroup', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\data_ABCgroup.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'data_ABCgroup_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\data_ABCgroup_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [data_ABCgroup] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [data_ABCgroup].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [data_ABCgroup] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [data_ABCgroup] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [data_ABCgroup] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [data_ABCgroup] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [data_ABCgroup] SET ARITHABORT OFF 
GO
ALTER DATABASE [data_ABCgroup] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [data_ABCgroup] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [data_ABCgroup] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [data_ABCgroup] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [data_ABCgroup] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [data_ABCgroup] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [data_ABCgroup] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [data_ABCgroup] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [data_ABCgroup] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [data_ABCgroup] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [data_ABCgroup] SET  DISABLE_BROKER 
GO
ALTER DATABASE [data_ABCgroup] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [data_ABCgroup] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [data_ABCgroup] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [data_ABCgroup] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [data_ABCgroup] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [data_ABCgroup] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [data_ABCgroup] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [data_ABCgroup] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [data_ABCgroup] SET  MULTI_USER 
GO
ALTER DATABASE [data_ABCgroup] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [data_ABCgroup] SET DB_CHAINING OFF 
GO
ALTER DATABASE [data_ABCgroup] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [data_ABCgroup] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [data_ABCgroup]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/9/2017 3:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Records]    Script Date: 9/9/2017 3:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Records](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [bit] NULL,
	[Reason] [nvarchar](500) NULL,
	[Date] [date] NULL,
	[StaffId] [varchar](50) NULL,
 CONSTRAINT [PK_records] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 9/9/2017 3:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staffs](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Birthday] [date] NULL,
	[Salary] [float] NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Notes] [nvarchar](500) NULL,
	[Photo] [varchar](50) NULL,
	[DepartId] [int] NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/9/2017 3:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Code] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'Phòng IT  ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'Phòng Kế Toán')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (3, N'Phòng Kinh Doanh')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (4, N'Phòng Nhân Sự')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Records] ON 

INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (1, 1, N'Hoàn Thành Tốt Nhiệm', CAST(0xE13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (2, 1, N'Chiến Lược Hiệu Quả', CAST(0x283D0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (3, 1, N'Quản Lý Tốt', CAST(0xDC3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (4, 1, N'Quản Lý Tốt', CAST(0x963C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (5, 1, N'Hoàn Thành Tốt Nhiệm Vụ', CAST(0x153D0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (6, 0, N'Đi Trễ', CAST(0xF13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (7, 0, N'Đi Trễ', CAST(0xF93C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (8, 0, N'Làm Việc Riêng', CAST(0xB03D0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (9, 0, N'Đi Trễ', CAST(0xF93C0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (10, 0, N'Nghỉ Không Phép', CAST(0xF93C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (11, 0, N'Đi Trễ', CAST(0x363D0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (12, 0, N'Nghỉ Không Phép', CAST(0x813C0B00 AS Date), N'NV024')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (13, 0, N'Đi Trễ', CAST(0x553D0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (14, 0, N'Đi Trễ', CAST(0xF93C0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (15, 0, N'Nghỉ Không Phép', CAST(0xF93C0B00 AS Date), N'NV016')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (16, 0, N'Đi Trễ', CAST(0x9D3C0B00 AS Date), N'NV003')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (17, 0, N'Nghỉ Không Phép', CAST(0xF93C0B00 AS Date), N'NV004')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (18, 0, N'Đi Trễ', CAST(0xF93C0B00 AS Date), N'NV005')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (19, 0, N'Làm Việc Riêng', CAST(0xDA3C0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (20, 0, N'Nghỉ Không Phép', CAST(0xDA3C0B00 AS Date), N'NV007')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (21, 0, N'Đi Trễ', CAST(0x623C0B00 AS Date), N'NV025')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (22, 0, N'Nghỉ Không Phép', CAST(0xF93C0B00 AS Date), N'NV018')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (23, 0, N'Nghỉ Không Phép', CAST(0x8E3C0B00 AS Date), N'NV013')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (24, 0, N'Đi Trễ', CAST(0xF93C0B00 AS Date), N'NV014')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (25, 0, N'Nghỉ Không Phép', CAST(0xBE3C0B00 AS Date), N'NV008')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (26, 0, N'Làm Việc Riêng', CAST(0x813C0B00 AS Date), N'NV010')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (27, 0, N'Đi Trễ', CAST(0xF93C0B00 AS Date), N'NV015')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (28, 0, N'Nghỉ Không Phép', CAST(0x3B3D0B00 AS Date), N'NV023')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (29, 0, N'Làm Việc Riêng', CAST(0xF93C0B00 AS Date), N'NV029')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (30, 0, N'Làm Việc Riêng', CAST(0xF93C0B00 AS Date), N'NV021')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (31, 1, N'Quản Lý Tốt', CAST(0xCD3C0B00 AS Date), N'NV003')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (32, 1, N'Hoàn Thành Tốt Nhiệm Vụ', CAST(0xF93C0B00 AS Date), N'NV005')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (33, 1, N'Quản Lý Tốt', CAST(0xF93C0B00 AS Date), N'NV008')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (34, 1, N'Chiến Lược Hiệu Quả', CAST(0xF93C0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (35, 1, N'Quản Lý Tốt', CAST(0xBC3C0B00 AS Date), N'NV013')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (36, 1, N'Chiến Lược Hiệu Quả', CAST(0xEF3C0B00 AS Date), N'NV015')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (37, 1, N'Quản Lý Tốt', CAST(0xF93C0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (38, 1, N'Hoàn Thành Tốt Nhiệm Vụ', CAST(0xF93C0B00 AS Date), N'NV004')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (39, 1, N'Quản Lý Tốt', CAST(0xF43C0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (40, 1, N'Hoàn Thành Tốt Nhiệm Vụ', CAST(0xF93C0B00 AS Date), N'NV008')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (41, 1, N'Quản Lý Tốt', CAST(0xF93C0B00 AS Date), N'NV010')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (42, 1, N'Quản Lý Tốt', CAST(0xEB3C0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (43, 1, N'Chiến Lược Hiệu Quả', CAST(0x173D0B00 AS Date), N'NV012')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (45, 1, N'Đáng Khen', CAST(0xDD3C0B00 AS Date), N'NV005')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (48, 1, N'Hoàn Thành Tốt!', CAST(0xDD3C0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (51, 1, N'Rất Tốt!', CAST(0xD93C0B00 AS Date), N'NV004')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (52, 1, N'Rất Đáng Tuyên Dương!', CAST(0xCB3C0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (54, 0, N'Đi Trễ', CAST(0xDA3C0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (55, 0, N'Tránh Tái Phạm', CAST(0xDB3C0B00 AS Date), N'NV007')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (57, 1, N'Tốt!', CAST(0xE23C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (58, 0, N'Tệ!
', CAST(0xE33C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (59, 0, N'Tệ', CAST(0xE33C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (60, 0, N'Tệ!', CAST(0xE33C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (61, 0, N'Tệ!', CAST(0xE03C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (62, 1, N'Tốt!', CAST(0xE13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (64, 1, N'Good!', CAST(0xE13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (65, 0, N'Bad!', CAST(0xE03C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (67, 1, N'Good!', CAST(0xE03C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (68, 1, N'Rất Tốt!', CAST(0xE23C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (69, 1, N'Rất Tốt!', CAST(0xE63C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (70, 1, N'Rất Tốt!', CAST(0xEF3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (71, 1, N'Rất Tốt!', CAST(0xE23C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (72, 1, N'Rất Tốt!', CAST(0xE13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (73, 1, N'HIHIH', CAST(0xDE3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (74, 0, N'Rất Tốt!', CAST(0xE13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (75, 0, N'Tệ lắm!', CAST(0xE03C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (76, 1, N'Tốt Lắm', CAST(0xE13C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (80, 0, N'Hehe!', CAST(0xE23C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (81, 0, N'Bad!', CAST(0xE13C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (82, 1, N'Rất Tốt!', CAST(0xE23C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (83, 1, N'HIHIHIHHI', CAST(0xE23C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (84, 1, N'Bad!', CAST(0xE23C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (85, 1, N'OK babe
', CAST(0xE23C0B00 AS Date), N'NV019')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (86, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (87, 1, N'Rất Tốt!', CAST(0xA63A0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (88, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (89, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (90, 1, N'Tốt!', CAST(0x2F3C0B00 AS Date), N'NV004')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (91, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (92, 1, N'Tốt!', CAST(0x2F3C0B00 AS Date), N'NV009')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (93, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV005')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (100, 1, N'Tốt!', CAST(0x2F3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (101, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV027')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (102, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV029')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (103, 1, N'Tốt!', CAST(0x2F3C0B00 AS Date), N'NV008')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (104, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV017')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (105, 1, N'Tốt!', CAST(0x2F3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (106, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (107, 1, N'Tốt!', CAST(0x2F3C0B00 AS Date), N'NV009')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (108, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (109, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV003')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (110, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (111, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV004')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (112, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (113, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV009')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (114, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV005')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (115, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV010')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (116, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (117, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV012')
GO
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (118, 1, N'Unknow!', CAST(0x2F3C0B00 AS Date), N'NV015')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (119, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV018')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (120, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV025')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (121, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (122, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV027')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (123, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV029')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (124, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV008')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (125, 0, N'Bad!', CAST(0x2F3C0B00 AS Date), N'NV017')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (126, 0, N'Đi Trễ', CAST(0x2F3C0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (127, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (128, 1, N'Good!', CAST(0x2F3C0B00 AS Date), N'NV009')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (129, 0, N'Tránh Tái Phạm', CAST(0x2F3C0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (130, 0, N'Tránh Tái Phạm', CAST(0x2F3C0B00 AS Date), N'NV003')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (131, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV001')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (132, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV004')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (133, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV006')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (134, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV009')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (135, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV005')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (136, 1, N'Unknow!', CAST(0xA63A0B00 AS Date), N'NV010')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (137, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (138, 1, N'Unknow!', CAST(0xA63A0B00 AS Date), N'NV012')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (139, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV015')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (140, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV018')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (141, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV025')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (142, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (143, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV027')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (144, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV029')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (145, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV008')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (146, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV017')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (147, 0, N'Unknow!', CAST(0xA63A0B00 AS Date), N'NV031')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (148, 1, N'Good!', CAST(0xA63A0B00 AS Date), N'NV011')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (149, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV009')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (150, 0, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV002')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (151, 1, N'Tránh Tái Phạm', CAST(0xA63A0B00 AS Date), N'NV003')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (152, 1, N'Hoàn Thành Tốt Nhiệm Vụ', CAST(0xEF3C0B00 AS Date), N'NV031')
SET IDENTITY_INSERT [dbo].[Records] OFF
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV001', N'Tiger Nixon', 1, CAST(0x88140B00 AS Date), 10000, N'tiger@gmail.com', N'012121212112', N'Tốt', N'001.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV002', N'Caesar Vance', 0, CAST(0xD20E0B00 AS Date), 10000, N'caesar@gmail.com', N'01212121220', N'Tốt', N'002.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV003', N'Jennifer Chang', 1, CAST(0xD20E0B00 AS Date), 10000, N'jenifer@gmail.com', N'01212121221', N'Blad..blad..', N'003.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV004', N'Michelle House', 0, CAST(0xD20E0B00 AS Date), 10000, N'michelle@gmail.com', N'01212121222', N'Tốt', N'004.jpg', 1)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV005', N'Suki Burks', 1, CAST(0xD20E0B00 AS Date), 10000, N'suki@gmail.com', N'01212121223', N'Blad..blad..', N'005.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV006', N'Howard Hatfield', 1, CAST(0xD20E0B00 AS Date), 10000, N'howard@gmail.com', N'01212121224', N'Tốt', N'006.jpg', 4)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV007', N'Timothy Mooney', 0, CAST(0xD20E0B00 AS Date), 10000, N'timothy@gmail.com', N'01212121225', N'Tốt', N'007.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV008', N'Sakura Yamamoto', 0, CAST(0xD20E0B00 AS Date), 10000, N'sakura@gmail.com', N'01212121226', N'Tốt', N'008.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV009', N'Thor Walton', 1, CAST(0xD20E0B00 AS Date), 10000, N'thor@gmail.com', N'01212121227', N'Blad..blad..', N'009.jpg', 1)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV010', N'Zenaida Frank', 1, CAST(0xD20E0B00 AS Date), 10000, N'zenaida@gmail.com', N'01212121228', N'Tốt', N'010.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV011', N'Jonas Alexander', 1, CAST(0xD20E0B00 AS Date), 10000, N'jonas@gmail.com', N'01212121229', N'Tốt', N'011.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV012', N'Garrett Winters', 0, CAST(0xD20E0B00 AS Date), 10000, N'garret@gmail.com', N'01212121212', N'Tốt', N'012.jpg', 4)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV013', N'Monkey D. Luffy', 1, CAST(0xD20E0B00 AS Date), 10000, N'monkey@gmail.com', N'01212121230', N'Blad..blad..', N'013.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV014', N'Đặng Ngọc Sơn
', 1, CAST(0xD20E0B00 AS Date), 10000, N'sondn@gmail.com', N'01212121231', N'Tốt', N'014.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV015', N'Trần Thanh Long
', 1, CAST(0xD20E0B00 AS Date), 10000, N'longth@gmail.com', N'01212121232', N'Blad..blad..', N'015.jpg', 1)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV016', N'Nguyễn Ngọc Trinh
', 0, CAST(0xD20E0B00 AS Date), 10000, N'trinhnn@gmail.com', N'01212121233', N'Blad..blad..', N'016.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV017', N'Phạm Duy Phong
', 1, CAST(0xD20E0B00 AS Date), 10000, N'phongpd@gmail.com', N'01212121234', N'Tốt', N'017.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV018', N'Liêu Thọ Khang
', 0, CAST(0xD20E0B00 AS Date), 10000, N'khanglt@gmail.com', N'01212121235', N'Tốt', N'018.jpg', 4)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV019', N'Nguyễn Vũ Minh Tuấn
', 1, CAST(0xD20E0B00 AS Date), 10000, N'tuannvm@gmail.com', N'01212121236', N'Blad..blad..', N'019.jpg', 1)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV020', N'Phan Bá Hải
', 0, CAST(0xD20E0B00 AS Date), 10000, N'haipb@gmail.com', N'01212121237', N'Tốt', N'020.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV021', N'Ngô Đăng Khôi
', 1, CAST(0xD20E0B00 AS Date), 10000, N'khoind@gmail.com', N'01212121238', N'Blad..blad..', N'021.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV022', N'Lê Hoài Luân
', 1, CAST(0xD20E0B00 AS Date), 10000, N'luanlh@gmail.com', N'01212121239', N'Blad..blad..', N'022.jpg', 4)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV023', N'Brielle Williamson', 1, CAST(0xD20E0B00 AS Date), 10000, N'brielle@gmail.com', N'01212121213', N'Tốt', N'023.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV024', N'Phạm Nguyễn Anh', 0, CAST(0xD20E0B00 AS Date), 10000, N'anhpn@gmail.com', N'01212121240', N'Blad..blad..', N'024.jpg', 1)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV025', N'Gavin Joyce', 0, CAST(0xD20E0B00 AS Date), 10000, N'gavin@gmail.com', N'01212121219', N'Tốt', N'025.jpg', 1)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV026', N'Dai Rios', 1, CAST(0xD20E0B00 AS Date), 10000, N'dai@gmail.com', N'01212121218', N'Tốt', N'026.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV027', N'Michael Silva', 1, CAST(0xD20E0B00 AS Date), 10000, N'michael@gmail.com', N'01212121217', N'Tốt', N'027.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV028', N'Haley Kennedy', 1, CAST(0xD20E0B00 AS Date), 10000, N'haley@gmail.com', N'01212121216', N'Tốt', N'028.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV029', N'Rhona Davidson', 1, CAST(0xD20E0B00 AS Date), 10000, N'rhona@gmail.com', N'01212121215', N'Tốt', N'029.jpg', 4)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV030', N'Sonya Frost', 0, CAST(0xD20E0B00 AS Date), 10000, N'sonya@gmail.com', N'01212121214', N'Tốt', N'030.jpg', 3)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV031', N'Huỳnh Văn Thái', 1, CAST(0xF9200B00 AS Date), 10000, N'thaihvps04892@fpt.edu.vn', N'01212121212', N'Blad..blad..', N'031.jpg', 2)
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Salary], [Email], [Phone], [Notes], [Photo], [DepartId]) VALUES (N'NV032', N'Charles', 1, CAST(0xCD3C0B00 AS Date), 20000, N'abc@gmail.com', N'1234214231', N'Good', N'032.jpg', 2)
INSERT [dbo].[Users] ([Username], [Password], [Fullname], [Code]) VALUES (N'thaihv', N'654', N'Thai Huynh', NULL)
INSERT [dbo].[Users] ([Username], [Password], [Fullname], [Code]) VALUES (N'thaihvps04892@fpt.edu.vn', N'456', N'H.V.Thái', 4227)
ALTER TABLE [dbo].[Records]  WITH CHECK ADD  CONSTRAINT [FK_records_staffs] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staffs] ([Id])
GO
ALTER TABLE [dbo].[Records] CHECK CONSTRAINT [FK_records_staffs]
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK_Staffs_Departments] FOREIGN KEY([DepartId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK_Staffs_Departments]
GO
USE [master]
GO
ALTER DATABASE [data_ABCgroup] SET  READ_WRITE 
GO
