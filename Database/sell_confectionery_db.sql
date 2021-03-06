USE [master]
GO
/****** Object:  Database [sell_confectionery]    Script Date: 15/04/2022 14:55:29 ******/
CREATE DATABASE [sell_confectionery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sell_confectionery', FILENAME = N'D:\HocKyII(2021-2022)\LapTrìnhWWW_Again\Project\WWWagain_Group6\Database\sell_confectionery.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sell_confectionery_log', FILENAME = N'D:\HocKyII(2021-2022)\LapTrìnhWWW_Again\Project\WWWagain_Group6\Database\sell_confectionery_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [sell_confectionery] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sell_confectionery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sell_confectionery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sell_confectionery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sell_confectionery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sell_confectionery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sell_confectionery] SET ARITHABORT OFF 
GO
ALTER DATABASE [sell_confectionery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sell_confectionery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sell_confectionery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sell_confectionery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sell_confectionery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sell_confectionery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sell_confectionery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sell_confectionery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sell_confectionery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sell_confectionery] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sell_confectionery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sell_confectionery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sell_confectionery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sell_confectionery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sell_confectionery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sell_confectionery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sell_confectionery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sell_confectionery] SET RECOVERY FULL 
GO
ALTER DATABASE [sell_confectionery] SET  MULTI_USER 
GO
ALTER DATABASE [sell_confectionery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sell_confectionery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sell_confectionery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sell_confectionery] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sell_confectionery] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sell_confectionery] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'sell_confectionery', N'ON'
GO
ALTER DATABASE [sell_confectionery] SET QUERY_STORE = OFF
GO
USE [sell_confectionery]
GO
/****** Object:  Table [dbo].[account]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[username] [varchar](20) NOT NULL,
	[quality] [int] NULL,
	[unit_price] [float] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[quality] [int] NULL,
	[unit_price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[order_date] [date] NULL,
	[total_money] [float] NULL,
	[vat] [float] NULL,
	[username] [varchar](20) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[quaility] [int] NULL,
	[price] [float] NULL,
	[username] [varchar](20) NULL,
	[publisher_id] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publisher]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publisher](
	[id] [int] NOT NULL,
	[publisher_name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_publisher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statistical]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statistical](
	[id] [int] NOT NULL,
	[statistical_date] [date] NULL,
	[total_money] [float] NULL,
	[income] [float] NULL,
	[outcome] [float] NULL,
	[username] [varchar](20) NULL,
 CONSTRAINT [PK_statistical] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[username] [varchar](20) NULL,
	[role_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 15/04/2022 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](20) NOT NULL,
	[gender] [nvarchar](10) NULL,
	[phone] [nchar](11) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [fk_cart_user] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [fk_cart_user]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [fk_order_detail] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [fk_order_detail]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [fk_order_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [fk_order_detail_product]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [fk_order_user] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [fk_order_user]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_cart] FOREIGN KEY([username])
REFERENCES [dbo].[cart] ([username])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_cart]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_publisher] FOREIGN KEY([publisher_id])
REFERENCES [dbo].[publisher] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_publisher]
GO
ALTER TABLE [dbo].[statistical]  WITH CHECK ADD  CONSTRAINT [fk_statistics_user] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[statistical] CHECK CONSTRAINT [fk_statistics_user]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [fk_role_id_user] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [fk_role_id_user]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [fk_user_id_role] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [fk_user_id_role]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_user_account] FOREIGN KEY([username])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_user_account]
GO
USE [master]
GO
ALTER DATABASE [sell_confectionery] SET  READ_WRITE 
GO
