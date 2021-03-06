USE [master]
GO
/****** Object:  Database [KLA_BW]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE DATABASE [KLA_BW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KLA_BW', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KLA_BW.mdf' , SIZE = 7475200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KLA_BW_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KLA_BW_log.ldf' , SIZE = 665600KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KLA_BW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KLA_BW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KLA_BW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KLA_BW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KLA_BW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KLA_BW] SET ARITHABORT OFF 
GO
ALTER DATABASE [KLA_BW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KLA_BW] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_BW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KLA_BW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_BW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KLA_BW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KLA_BW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KLA_BW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KLA_BW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KLA_BW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KLA_BW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KLA_BW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KLA_BW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KLA_BW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KLA_BW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KLA_BW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KLA_BW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KLA_BW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KLA_BW] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KLA_BW] SET  MULTI_USER 
GO
ALTER DATABASE [KLA_BW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KLA_BW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KLA_BW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KLA_BW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KLA_BW', N'ON'
GO
USE [KLA_BW]
GO
/****** Object:  User [US\SQL_KLA_R]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [US\SQL_KLA_R] FOR LOGIN [US\SQL_KLA_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:35:14 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKJ1J02]    Script Date: 11/20/2018 5:35:15 PM ******/
CREATE USER [SAS_MXKJ1J02] FOR LOGIN [SAS_MXKJ1J02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKI1G02]    Script Date: 11/20/2018 5:35:15 PM ******/
CREATE USER [SAS_MXKI1G02] FOR LOGIN [SAS_MXKI1G02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:35:15 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:35:15 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KLA_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_MXKJ1J02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_MXKI1G02]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:35:15 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_COKL00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_COKL00]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_COKL00]
AS
  BEGIN TRANSACTION AZOD_COKL00;
  
  DELETE FROM [KLA_BW].[dbo].[AZOD_COKL00]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KLA_BW].[STG].[AZOD_COKL00])

	 INSERT INTO [KLA_BW].[dbo].[AZOD_COKL00] (
	 [FISCPER]
      ,[COMP_CODE]
      ,[/BIC/ZGL_ACNT]
      ,[MATERIAL]
      ,[REC_TYPE]
      ,[FISCVARNT]
      ,[/BIC/Z_MXDPAL]
      ,[/BIC/Z_MXDFLG]
      ,[SALESORG]
      ,[CURTYPE]
      ,[SOLD_TO]
      ,[RECORDMODE]
      ,[/BIC/ZBPCAMT]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SALES_DIST]
      ,[BILL_TYPE]
      ,[PRICE_GRP]
      ,[/BIC/Z_PKUN1A]
      ,[VERSION]
      ,[BWCOUNTER])

	  (SELECT
	  [FISCPER]
      ,[COMP_CODE]
      ,[/BIC/ZGL_ACNT]
      ,[MATERIAL]
      ,[REC_TYPE]
      ,[FISCVARNT]
      ,[/BIC/Z_MXDPAL]
      ,[/BIC/Z_MXDFLG]
      ,[SALESORG]
      ,[CURTYPE]
      ,[SOLD_TO]
      ,[RECORDMODE]
      ,[/BIC/ZBPCAMT]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SALES_DIST]
      ,[BILL_TYPE]
      ,[PRICE_GRP]
      ,[/BIC/Z_PKUN1A]
      ,[VERSION]
      ,[BWCOUNTER]
	  FROM [KLA_BW].[STG].[AZOD_COKL00])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_COKL00;
END

COMMIT TRANSACTION AZOD_COKL00;
 







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_COMX00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_COMX00]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_COMX00]
AS
  BEGIN TRANSACTION AZOD_COMX00;
  
  DELETE FROM [KLA_BW].[dbo].[AZOD_COMX00]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KLA_BW].[STG].[AZOD_COMX00])

	 INSERT INTO [KLA_BW].[dbo].[AZOD_COMX00] (
  [FISCPER]
      ,[COMP_CODE]
      ,[/BIC/ZGL_ACNT]
      ,[MATERIAL]
      ,[REC_TYPE]
      ,[FISCVARNT]
      ,[/BIC/Z_MXDPAL]
      ,[/BIC/Z_MXDFLG]
      ,[SALESORG]
      ,[CURTYPE]
      ,[SOLD_TO]
      ,[RECORDMODE]
      ,[/BIC/ZBPCAMT]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SALES_DIST]
      ,[BILL_TYPE]
      ,[PRICE_GRP]
      ,[/BIC/Z_PKUN1A]
      ,[VERSION])

	  (SELECT
	  [FISCPER]
      ,[COMP_CODE]
      ,[/BIC/ZGL_ACNT]
      ,[MATERIAL]
      ,[REC_TYPE]
      ,[FISCVARNT]
      ,[/BIC/Z_MXDPAL]
      ,[/BIC/Z_MXDFLG]
      ,[SALESORG]
      ,[CURTYPE]
      ,[SOLD_TO]
      ,[RECORDMODE]
      ,[/BIC/ZBPCAMT]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SALES_DIST]
      ,[BILL_TYPE]
      ,[PRICE_GRP]
      ,[/BIC/Z_PKUN1A]
      ,[VERSION]
	  FROM [KLA_BW].[STG].[AZOD_COMX00])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_COMX00;
END

COMMIT TRANSACTION AZOD_COMX00;
 







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_COSA00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_COSA00]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_COSA00]
AS
  BEGIN TRANSACTION AZOD_COSA00;
  
  DELETE FROM [KLA_BW].[dbo].[AZOD_COSA00]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KLA_BW].[STG].[AZOD_COSA00])

	 INSERT INTO [KLA_BW].[dbo].[AZOD_COSA00] (
  [FISCPER]
      ,[COMP_CODE]
      ,[/BIC/ZGL_ACNT]
      ,[MATERIAL]
      ,[REC_TYPE]
      ,[FISCVARNT]
      ,[/BIC/Z_MXDPAL]
      ,[/BIC/Z_MXDFLG]
      ,[SALESORG]
      ,[CURTYPE]
      ,[SOLD_TO]
      ,[RECORDMODE]
      ,[/BIC/ZBPCAMT]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SALES_DIST]
      ,[BILL_TYPE]
      ,[PRICE_GRP]
      ,[/BIC/Z_PKUN1A]
      ,[VERSION])

	  (SELECT
	  [FISCPER]
      ,[COMP_CODE]
      ,[/BIC/ZGL_ACNT]
      ,[MATERIAL]
      ,[REC_TYPE]
      ,[FISCVARNT]
      ,[/BIC/Z_MXDPAL]
      ,[/BIC/Z_MXDFLG]
      ,[SALESORG]
      ,[CURTYPE]
      ,[SOLD_TO]
      ,[RECORDMODE]
      ,[/BIC/ZBPCAMT]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SALES_DIST]
      ,[BILL_TYPE]
      ,[PRICE_GRP]
      ,[/BIC/Z_PKUN1A]
      ,[VERSION]
	  FROM [KLA_BW].[STG].[AZOD_COSA00])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_COSA00;
END

COMMIT TRANSACTION AZOD_COSA00;
 







GO
/****** Object:  Table [dbo].[AZOD_COK200]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COK200](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[BWCOUNTER] [decimal](10, 0) NULL,
	[CUSTOMER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COKL00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COKL00](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[BWCOUNTER] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COKL00_TEMP]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COKL00_TEMP](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[BWCOUNTER] [decimal](10, 0) NULL,
	[CUSTOMER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COM200]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COM200](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COMX00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COMX00](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COMX00_TEMP]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COMX00_TEMP](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COS200]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COS200](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COSA00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COSA00](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_COSA00_TEMP]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_COSA00_TEMP](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_PA0600_TEMP]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_PA0600_TEMP](
	[BA_BELNR] [varchar](10) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[VERSION] [varchar](3) NULL,
	[REF_DOC_NO] [varchar](16) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALDAY] [date] NULL,
	[FISCVARNT] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/Z_PKUNZA] [varchar](10) NULL,
	[G_CWWBRD] [varchar](5) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[/BIC/Z_PKUNZB] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[CO_AREA] [varchar](4) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[PROV_GROUP] [varchar](2) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[CUST_GRP1] [varchar](3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[/BIC/Z_PKUN1B] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/Z_PKUNZR] [varchar](10) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[/BIC/Z_PKUNZT] [varchar](10) NULL,
	[/BIC/Z_PKUNZP] [varchar](10) NULL,
	[G_CWWTYP] [varchar](8) NULL,
	[REBATE_GRP] [varchar](2) NULL,
	[G_UNETLB] [varchar](3) NULL,
	[G_UQNTY6] [varchar](3) NULL,
	[G_UQNTY3] [varchar](3) NULL,
	[G_UQNTY7] [varchar](3) NULL,
	[G_UQNTY4] [varchar](3) NULL,
	[G_UQNTY1] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UINQTY] [varchar](3) NULL,
	[G_UQNTY8] [varchar](3) NULL,
	[G_UQNTY5] [varchar](3) NULL,
	[G_UQNTY2] [varchar](3) NULL,
	[G_UVVQ10] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[BA_STO_BNR] [varchar](10) NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[GI_DATE] [date] NULL,
	[COORDER] [varchar](12) NULL,
	[PART_PRCTR] [varchar](10) NULL,
	[PSTNG_DATE] [date] NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[/BIC/Z_PRZNR] [varchar](12) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[G_AADMIN] [decimal](17, 2) NULL,
	[G_AADVER] [decimal](17, 2) NULL,
	[G_ABILBK] [decimal](17, 2) NULL,
	[G_ABRKRG] [decimal](17, 2) NULL,
	[G_ACONPR] [decimal](17, 2) NULL,
	[G_ACORPM] [decimal](17, 2) NULL,
	[G_ACSHDC] [decimal](17, 2) NULL,
	[G_ADIRLB] [decimal](17, 2) NULL,
	[G_ADLVAR] [decimal](17, 2) NULL,
	[G_ADSTRB] [decimal](17, 2) NULL,
	[G_AVVX10] [decimal](17, 2) NULL,
	[G_AVVX11] [decimal](17, 2) NULL,
	[G_AVVX12] [decimal](17, 2) NULL,
	[G_AVVX13] [decimal](17, 2) NULL,
	[G_AVVX14] [decimal](17, 2) NULL,
	[G_AVVX15] [decimal](17, 2) NULL,
	[G_AVVX16] [decimal](17, 2) NULL,
	[G_AVVX17] [decimal](17, 2) NULL,
	[G_AVVX18] [decimal](17, 2) NULL,
	[G_AVVX19] [decimal](17, 2) NULL,
	[G_AVVX21] [decimal](17, 2) NULL,
	[G_AVVX22] [decimal](17, 2) NULL,
	[G_AVVX23] [decimal](17, 2) NULL,
	[G_AVVX24] [decimal](17, 2) NULL,
	[G_AVVX25] [decimal](17, 2) NULL,
	[G_AVVXT4] [decimal](17, 2) NULL,
	[G_AVVXT5] [decimal](17, 2) NULL,
	[G_AVVXT6] [decimal](17, 2) NULL,
	[G_AVVXT7] [decimal](17, 2) NULL,
	[G_AVVXT8] [decimal](17, 2) NULL,
	[G_AVVXT9] [decimal](17, 2) NULL,
	[G_AFISLS] [decimal](17, 2) NULL,
	[G_AFREEG] [decimal](17, 2) NULL,
	[G_AFRGHT] [decimal](17, 2) NULL,
	[G_AGRSLS] [decimal](17, 2) NULL,
	[G_AILVAR] [decimal](17, 2) NULL,
	[G_AINDLB] [decimal](17, 2) NULL,
	[G_AVVICO] [decimal](17, 2) NULL,
	[G_QQNTY6] [decimal](17, 3) NULL,
	[G_AINVVR] [decimal](17, 2) NULL,
	[G_QNETLB] [decimal](17, 3) NULL,
	[G_QQNTY3] [decimal](17, 3) NULL,
	[G_AOTHER] [decimal](17, 2) NULL,
	[G_AOTHTA] [decimal](17, 2) NULL,
	[G_AOVHDF] [decimal](17, 2) NULL,
	[G_AOVHDV] [decimal](17, 2) NULL,
	[G_AOVHVF] [decimal](17, 2) NULL,
	[G_AOVHVV] [decimal](17, 2) NULL,
	[G_APKGDS] [decimal](17, 2) NULL,
	[G_APKGMT] [decimal](17, 2) NULL,
	[G_APLTAD] [decimal](17, 2) NULL,
	[G_APLTOH] [decimal](17, 2) NULL,
	[G_APMVAR] [decimal](17, 2) NULL,
	[G_APOP] [decimal](17, 2) NULL,
	[G_APPVAR] [decimal](17, 2) NULL,
	[G_APURCH] [decimal](17, 2) NULL,
	[G_ARAWMT] [decimal](17, 2) NULL,
	[G_ARECSL] [decimal](17, 2) NULL,
	[G_ARECUN] [decimal](17, 2) NULL,
	[G_ARMVAR] [decimal](17, 2) NULL,
	[G_ARSRDV] [decimal](17, 2) NULL,
	[G_ASLCAS] [decimal](17, 2) NULL,
	[G_ASLLBS] [decimal](17, 2) NULL,
	[G_QQNTY4] [decimal](17, 3) NULL,
	[G_ASLSFR] [decimal](17, 2) NULL,
	[G_ASPA] [decimal](17, 2) NULL,
	[G_ASSBRK] [decimal](17, 2) NULL,
	[G_ASSDIS] [decimal](17, 2) NULL,
	[G_ASSG_A] [decimal](17, 2) NULL,
	[G_ASSOTH] [decimal](17, 2) NULL,
	[G_ASSPPD] [decimal](17, 2) NULL,
	[G_ASSSFR] [decimal](17, 2) NULL,
	[G_QQNTY7] [decimal](17, 3) NULL,
	[G_AVKLFA] [decimal](17, 2) NULL,
	[G_QQNTY1] [decimal](17, 3) NULL,
	[G_QVVQT9] [decimal](17, 3) NULL,
	[G_ATPR] [decimal](17, 2) NULL,
	[G_ATRDDC] [decimal](17, 2) NULL,
	[G_QINQTY] [decimal](17, 3) NULL,
	[G_AUNCAS] [decimal](17, 2) NULL,
	[G_AUNLBS] [decimal](17, 2) NULL,
	[G_QQNTY5] [decimal](17, 3) NULL,
	[G_QQNTY8] [decimal](17, 3) NULL,
	[G_QQNTY2] [decimal](17, 3) NULL,
	[G_QVVQ10] [decimal](17, 3) NULL,
	[G_AXTRA1] [decimal](17, 2) NULL,
	[G_AXTRA2] [decimal](17, 2) NULL,
	[G_AXTRA3] [decimal](17, 2) NULL,
	[G_ASAP] [decimal](17, 2) NULL,
	[/BIC/Z_ZZONCAS] [decimal](17, 3) NULL,
	[/BIC/Z_UZONCAS] [varchar](3) NULL,
	[/BIC/Z_ZZONSIU] [decimal](17, 3) NULL,
	[/BIC/Z_UZONSIU] [varchar](3) NULL,
	[/BIC/Z_ZZONECH] [decimal](17, 3) NULL,
	[/BIC/Z_UZONECH] [varchar](3) NULL,
	[/BIC/Z_ZZONSCS] [decimal](17, 3) NULL,
	[/BIC/Z_UZONSCS] [varchar](3) NULL,
	[/BIC/Z_ZZONUCS] [decimal](17, 3) NULL,
	[/BIC/Z_UZONUCS] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL,
	[/BIC/Z_SHRTQTY] [decimal](17, 3) NULL,
	[/BIC/Z_SHTUNIT] [varchar](3) NULL,
	[ORDER_QUAN] [decimal](17, 3) NULL,
	[PO_UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_COKL00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_COKL00](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[BWCOUNTER] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_COMX00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_COMX00](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_COSA00]    Script Date: 11/20/2018 5:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_COSA00](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [KLA_BW] SET  READ_WRITE 
GO
