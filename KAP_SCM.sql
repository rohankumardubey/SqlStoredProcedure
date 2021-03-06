USE [master]
GO
/****** Object:  Database [KAP_SCM]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE DATABASE [KAP_SCM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KAP_SCM', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KAP_SCM.mdf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KAP_SCM_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KAP_SCM_log.ldf' , SIZE = 51200KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KAP_SCM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KAP_SCM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KAP_SCM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KAP_SCM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KAP_SCM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KAP_SCM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KAP_SCM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KAP_SCM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KAP_SCM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KAP_SCM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KAP_SCM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KAP_SCM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KAP_SCM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KAP_SCM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KAP_SCM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KAP_SCM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KAP_SCM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KAP_SCM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KAP_SCM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KAP_SCM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KAP_SCM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KAP_SCM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KAP_SCM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KAP_SCM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KAP_SCM] SET  MULTI_USER 
GO
ALTER DATABASE [KAP_SCM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KAP_SCM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KAP_SCM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KAP_SCM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KAP_SCM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KAP_SCM', N'ON'
GO
USE [KAP_SCM]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_KAP_SUPPORT_R]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [US\SQL_DS_KAP_SUPPORT_R] FOR LOGIN [US\SQL_DS_KAP_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 6:14:10 AM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 6:14:11 AM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_KAP_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_KAP_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_owner] ADD MEMBER [SQL_SPARK_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKRRD01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKPLG01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKPCL01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKNXA19]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKMEW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKLCH06]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKXW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKFS02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJXS19]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKCRS01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
USE [master]
GO
ALTER DATABASE [KAP_SCM] SET  READ_WRITE 
GO
