USE [master]
GO
/****** Object:  Database [KNA_SCM]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE DATABASE [KNA_SCM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_SCM', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_SCM.mdf' , SIZE = 6502400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KNA_SCM_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_SCM_log.ldf' , SIZE = 1177600KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_SCM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_SCM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_SCM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_SCM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_SCM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_SCM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_SCM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_SCM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_SCM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_SCM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_SCM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_SCM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_SCM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_SCM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_SCM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_SCM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_SCM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_SCM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_SCM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_SCM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_SCM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_SCM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_SCM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_SCM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_SCM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_SCM] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_SCM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_SCM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_SCM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_SCM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_SCM', N'ON'
GO
USE [KNA_SCM]
GO
/****** Object:  User [US\SQL_SPCLTY_RMBSMT_USERS_R]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_SPCLTY_RMBSMT_USERS_R] FOR LOGIN [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
/****** Object:  User [US\SQL_SC_PWRUSERS_R]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_SC_PWRUSERS_R] FOR LOGIN [US\SQL_SC_PWRUSERS_R]
GO
/****** Object:  User [US\SQL_MATRL_CLASS_VIEW_R]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_MATRL_CLASS_VIEW_R] FOR LOGIN [US\SQL_MATRL_CLASS_VIEW_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE9]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE9] FOR LOGIN [US\SQL_DS_HYPERCARE9]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE7]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE7] FOR LOGIN [US\SQL_DS_HYPERCARE7]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE4 ]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE4 ] FOR LOGIN [US\SQL_DS_HYPERCARE4]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\SQL_CAPSIM_USERS_ADMIN]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\SQL_CAPSIM_USERS_ADMIN] FOR LOGIN [US\SQL_CAPSIM_USERS_ADMIN]
GO
/****** Object:  User [US\ISM_READ_WRITE]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\ISM_READ_WRITE] FOR LOGIN [US\ISM_READ_WRITE]
GO
/****** Object:  User [US\ISM_READ]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [US\ISM_READ] FOR LOGIN [US\ISM_READ]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_ACCENTURE]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SQL_ACCENTURE] FOR LOGIN [SQL_ACCENTURE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:49:47 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SC_PWRUSERS_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_MATRL_CLASS_VIEW_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_MATRL_CLASS_VIEW_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE7]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_HYPERCARE4 ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE4 ]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_CAPSIM_USERS_ADMIN]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_READ_WRITE]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_READ]
GO
ALTER ROLE [db_owner] ADD MEMBER [SQL_SPARK_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SQL_ACCENTURE]
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMP_EXECUTIONS](
	[JOB_NAME] [varchar](40) NULL,
	[DATE_EXECUTION] [varchar](8) NULL,
	[DATE_LAST_EXTRACTION] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EB_MATKEY]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EB_MATKEY](
	[MATID] [varchar](22) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KSOP_SHIPMENT]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KSOP_SHIPMENT](
	[Business_Unit] [varchar](255) NULL,
	[ME_Created_Dt] [datetime2](7) NULL,
	[Order_Type] [varchar](255) NULL,
	[Customer] [varchar](255) NULL,
	[Mode_Type] [varchar](255) NULL,
	[Lane] [varchar](255) NULL,
	[Org_Loc_ID] [float] NULL,
	[Org_Name] [varchar](255) NULL,
	[Org_City] [varchar](255) NULL,
	[Org_State] [varchar](255) NULL,
	[Org_Zip] [varchar](255) NULL,
	[Rec_Loc_ID] [varchar](255) NULL,
	[Rec_Name] [varchar](255) NULL,
	[Rec_City] [varchar](255) NULL,
	[Rec_State] [varchar](255) NULL,
	[Rec_Zip] [varchar](255) NULL,
	[Mode_Exe] [float] NULL,
	[Pri_Ref] [varchar](255) NULL,
	[Car_SCAC] [varchar](255) NULL,
	[Stop_Nbr] [float] NULL,
	[Did_Apt_Cha] [varchar](255) NULL,
	[Any_Apt_Cha_Carr_Flt_Cd] [varchar](255) NULL,
	[Num_Tim_TP_Usr_Cngd_Apt] [float] NULL,
	[Nam_TP_usr_chng_appts] [varchar](255) NULL,
	[TP_Usr_Apt_Chng_Resn] [varchar](255) NULL,
	[Req_Erl_Del_Dt] [datetime2](7) NULL,
	[Req_Lat_Del_D] [datetime2](7) NULL,
	[Fst_Conf_Appt_Reset] [varchar](255) NULL,
	[Fst_Conf_Appt_Dt] [datetime2](7) NULL,
	[Fst_Conf_Appt_Rset_Respo_Prty] [varchar](255) NULL,
	[Fst_Conf_Appt_Resn] [varchar](255) NULL,
	[Lat_Car_Appt_Dt] [datetime2](7) NULL,
	[Mst_Arve_By_Dt] [datetime2](7) NULL,
	[Act_Del_Dt] [datetime2](7) NULL,
	[Act_Del_Dep_Dt] [datetime2](7) NULL,
	[Che_Cal_Resn] [varchar](255) NULL,
	[Che_Cal_Resn_Resp_Pty] [varchar](255) NULL,
	[Mea_SAT_Adj_Cnt] [float] NULL,
	[SAT_Adj_OT_Cnt] [float] NULL,
	[SAT_Adj_Resn] [varchar](255) NULL,
	[SAT_Adj_OT] [float] NULL,
	[Meas_SAT_Cnt] [float] NULL,
	[SAT_OT_Cnt] [float] NULL,
	[SAT_OT] [float] NULL,
	[Meas_RAD_Cnt] [float] NULL,
	[RAD_OT_Cnt] [float] NULL,
	[RAD_Adj_Resn] [varchar](255) NULL,
	[RAD_OT] [float] NULL,
	[Meas_RAD_Adj_Cnt] [float] NULL,
	[RAD_Adj_OT_Cnt] [float] NULL,
	[RAD_Adj_O] [float] NULL,
	[Meas_SAD_OT_Cnt] [float] NULL,
	[SAD_OT_Cnt] [float] NULL,
	[AD_OT] [float] NULL,
	[Meas_RAD_DN_OT_Cnt] [float] NULL,
	[RAD_DN_OT_Cnt] [float] NULL,
	[RAD_AT_DN_OT] [float] NULL,
	[Week] [float] NULL,
	[Period] [float] NULL,
	[STO_Class] [varchar](255) NULL,
	[CUST_Class] [varchar](255) NULL,
	[Act_Shp_Dt] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PZFISCWEK_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PZFISCWEK_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZFISCWEK] [decimal](7, 0) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[ZFISCQUAR] [decimal](7, 0) NULL,
	[ZFISCYEAR] [decimal](4, 0) NULL,
	[ZFISCWEW] [decimal](3, 0) NULL,
	[ZFISCMOW] [decimal](3, 0) NULL,
	[ZFISCQUAW] [decimal](3, 0) NULL,
	[ZFISCHALF] [decimal](7, 0) NULL,
	[ZFISCHALW] [decimal](3, 0) NULL,
	[ZFISCMON] [decimal](7, 0) NULL,
	[First_Day] [date] NULL,
	[Last_Day] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAP_KNA_SC_ISM_IMV_BY_LOT_HIST_SNAP]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAP_KNA_SC_ISM_IMV_BY_LOT_HIST_SNAP](
	[F1] [varchar](9) NULL,
	[Snapshot] [varchar](10) NULL,
	[SKUNAME] [varchar](40) NULL,
	[Material Type - Text] [varchar](20) NULL,
	[Business Unit - Text] [varchar](20) NULL,
	[Plant - Medium Text] [varchar](26) NULL,
	[Old Material Number - Key] [varchar](25) NULL,
	[Material Classificat - Mod / Shi] [varchar](32) NULL,
	[Status] [varchar](9) NULL,
	[Lot Code(Code Date) - Key] [varchar](25) NULL,
	[EXPDATE] [varchar](8) NULL,
	[MFGDATE] [varchar](10) NULL,
	[Total Shelf Life] [varchar](16) NULL,
	[QTY] [varchar](3) NULL,
	[Sum Lot Qty] [varchar](11) NULL,
	[Standard Price] [varchar](14) NULL,
	[Age of Inventory] [varchar](16) NULL,
	[Days remaining_for expiration] [varchar](31) NULL,
	[Max.Storage_Period] [varchar](20) NULL,
	[Days remaining_for Stop Ship] [varchar](30) NULL,
	[STSHDT] [varchar](6) NULL,
	[Extended] [varchar](10) NULL,
	[Extended $] [varchar](10) NULL,
	[_0-30 CS] [varchar](8) NULL,
	[_31-60 CS] [varchar](9) NULL,
	[_61-90 CS] [varchar](9) NULL,
	[_91-120 CS] [varchar](10) NULL,
	[>120 CS] [varchar](7) NULL,
	[Age Risk CS] [varchar](11) NULL,
	[Age Risk $] [varchar](10) NULL,
	[sku] [varchar](8) NULL,
	[Plant -Key] [varchar](11) NULL,
	[f0-30 CS] [varchar](7) NULL,
	[31 -60 CS] [varchar](8) NULL,
	[61 -90 CS] [varchar](8) NULL,
	[91 -120 CS] [varchar](9) NULL,
	[CREATED] [varchar](7) NULL,
	[_TEMA001] [varchar](8) NULL,
	[_TEMA002] [varchar](8) NULL,
	[_TEMA003] [varchar](8) NULL,
	[Total Shelf Life - Key] [varchar](22) NULL,
	[Field42] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAP_KNA_SC_ISM_IMV_BY_LOT_HIST_WKLY]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAP_KNA_SC_ISM_IMV_BY_LOT_HIST_WKLY](
	[F1] [varchar](9) NULL,
	[Snapshot] [varchar](10) NULL,
	[SKUNAME] [varchar](40) NULL,
	[Material Type - Text] [varchar](20) NULL,
	[Business Unit - Text] [varchar](20) NULL,
	[Plant - Medium Text] [varchar](26) NULL,
	[Old Material Number - Key] [varchar](25) NULL,
	[Material Classificat - Mod / Shi] [varchar](32) NULL,
	[Status] [varchar](9) NULL,
	[Lot Code(Code Date) - Key] [varchar](25) NULL,
	[EXPDATE] [varchar](8) NULL,
	[MFGDATE] [varchar](10) NULL,
	[Total Shelf Life] [varchar](16) NULL,
	[QTY] [varchar](3) NULL,
	[Sum Lot Qty] [varchar](11) NULL,
	[Standard Price] [varchar](14) NULL,
	[Age of Inventory] [varchar](16) NULL,
	[Days remaining_for expiration] [varchar](31) NULL,
	[Max.Storage_Period] [varchar](20) NULL,
	[Days remaining_for Stop Ship] [varchar](30) NULL,
	[STSHDT] [varchar](6) NULL,
	[Extended] [varchar](10) NULL,
	[Extended $] [varchar](10) NULL,
	[_0-30 CS] [varchar](8) NULL,
	[_31-60 CS] [varchar](9) NULL,
	[_61-90 CS] [varchar](9) NULL,
	[_91-120 CS] [varchar](10) NULL,
	[>120 CS] [varchar](7) NULL,
	[Age Risk CS] [varchar](11) NULL,
	[Age Risk $] [varchar](10) NULL,
	[sku] [varchar](8) NULL,
	[Plant -Key] [varchar](11) NULL,
	[f0-30 CS] [varchar](7) NULL,
	[31 -60 CS] [varchar](8) NULL,
	[61 -90 CS] [varchar](8) NULL,
	[91 -120 CS] [varchar](9) NULL,
	[CREATED] [varchar](7) NULL,
	[_TEMA001] [varchar](8) NULL,
	[_TEMA002] [varchar](8) NULL,
	[_TEMA003] [varchar](8) NULL,
	[Total Shelf Life - Key] [varchar](22) NULL,
	[Field42] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAP_SQLA_KG_EXT_LOTCODE_1_1]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAP_SQLA_KG_EXT_LOTCODE_1_1](
	[Plant_Nbr] [varchar](4) NULL,
	[Matrl_Nbr] [varchar](18) NULL,
	[Lot_Cd] [varchar](10) NULL,
	[Lot_Qty] [decimal](17, 3) NULL,
	[Lot_Qty_0_To_30] [decimal](17, 3) NULL,
	[Lot_Qty_31_To_60] [decimal](17, 3) NULL,
	[Lot_Qty_61_To_90] [decimal](17, 3) NULL,
	[Lot_Qty_91_To_120] [decimal](17, 3) NULL,
	[Lot_Qty_Gt_120] [decimal](17, 3) NULL,
	[Lot_Status] [varchar](4) NULL,
	[Mfg_Dt] [date] NULL,
	[Strg_Pd] [decimal](17, 3) NULL,
	[Shlf_Life] [decimal](4, 0) NULL,
	[Exp_Dt] [date] NULL,
	[Dw_Cre_Usr] [varchar](50) NULL,
	[Dw_Del_Bit] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_LOCMAP]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_LOCMAP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EXT_LOCNO] [varchar](20) NULL,
	[LOCTYPE] [varchar](4) NULL,
	[LOGQS] [varchar](8) NULL,
	[LOCID] [varchar](22) NULL,
	[LOCNO] [varchar](20) NULL,
	[LOGSYS] [varchar](10) NULL,
	[VMI_LOCID] [varchar](22) NULL,
	[VMI_EXT_LOCNO] [varchar](20) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[EKORG] [varchar](4) NULL,
	[KUNNR] [varchar](20) NULL,
	[PL_LOCID] [varchar](22) NULL,
	[PL_EXT_LOCNO] [varchar](20) NULL,
	[PL_LOCTYPE] [varchar](4) NULL,
	[SUBLOCATION] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_LOCMAP_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_LOCMAP_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EXT_LOCNO] [varchar](20) NULL,
	[LOCTYPE] [varchar](4) NULL,
	[LOGQS] [varchar](8) NULL,
	[LOCID] [varchar](22) NULL,
	[LOCNO] [varchar](20) NULL,
	[LOGSYS] [varchar](10) NULL,
	[VMI_LOCID] [varchar](22) NULL,
	[VMI_EXT_LOCNO] [varchar](20) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[EKORG] [varchar](4) NULL,
	[KUNNR] [varchar](20) NULL,
	[PL_LOCID] [varchar](22) NULL,
	[PL_EXT_LOCNO] [varchar](20) NULL,
	[PL_LOCTYPE] [varchar](4) NULL,
	[SUBLOCATION] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_MATKEY]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_MATKEY](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATID] [varchar](22) NULL,
	[MATNR] [varchar](40) NULL,
	[PRODUCT_TYPE] [varchar](2) NULL,
	[LVORM] [varchar](1) NULL,
	[FLAGCLASS] [varchar](1) NULL,
	[FLAGPACK] [varchar](1) NULL,
	[DISST] [varchar](3) NULL,
	[MEINS] [varchar](3) NULL,
	[ATTYP] [varchar](2) NULL,
	[LOGUNIT] [varchar](3) NULL,
	[CWREL] [varchar](1) NULL,
	[TY2TQ] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[SHELF_LIFE_FLAG] [varchar](1) NULL,
	[SHELF_LIFE_DUR] [decimal](11, 0) NULL,
	[MATURITY_DUR] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MIN] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MAX] [decimal](11, 0) NULL,
	[MHDLP] [decimal](3, 0) NULL,
	[SLED_BBD] [varchar](1) NULL,
	[SLDRND] [varchar](1) NULL,
	[ATT01] [varchar](40) NULL,
	[ATT02] [varchar](30) NULL,
	[ATT03] [varchar](20) NULL,
	[ATT04] [varchar](10) NULL,
	[ATT05] [varchar](10) NULL,
	[BOD_DEPLVL] [varchar](1) NULL,
	[EXCL_EXPEDITE] [varchar](1) NULL,
	[PROD_PAOOPT] [varchar](1) NULL,
	[RESTRICT_INVBAL] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[STFAC] [decimal](2, 0) NULL,
	[TRAGR] [varchar](4) NULL,
	[TS_SDP_USE] [varchar](1) NULL,
	[PRDHA] [varchar](18) NULL,
	[GTIN_IND] [varchar](1) NULL,
	[DISPLAY] [varchar](1) NULL,
	[HERKL] [varchar](3) NULL,
	[BATCH_REQ] [varchar](1) NULL,
	[KITCOMP] [varchar](1) NULL,
	[PRDSET_IND] [varchar](1) NULL,
	[SERIAL] [varchar](4) NULL,
	[DATA_CHECK_BY] [varchar](12) NULL,
	[DATA_CHECK_AT] [decimal](15, 0) NULL,
	[KOSCH] [varchar](18) NULL,
	[KOSCH_GRP] [varchar](18) NULL,
	[VMIKOSCH] [varchar](18) NULL,
	[VMIKOSCH_GRP] [varchar](18) NULL,
	[PACKGR] [varchar](4) NULL,
	[RMATP] [varchar](22) NULL,
	[HUTYP_DFLT] [varchar](4) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[SATID] [varchar](22) NULL,
	[KZKFG] [varchar](1) NULL,
	[MATVERS_HEAD] [varchar](22) NULL,
	[MATVERS_TYPE] [varchar](1) NULL,
	[MATVERS_CHNR] [varchar](12) NULL,
	[TEMPRPBLOCK] [varchar](2) NULL,
	[TEMPRPFROM] [decimal](15, 0) NULL,
	[TEMPRPTO] [decimal](15, 0) NULL,
	[ZZTACTMDL] [varchar](10) NULL,
	[ZZSCPEQTY] [varchar](20) NULL,
	[ZZMFGRESNW] [varchar](20) NULL,
	[ZZMFGPRC1] [varchar](20) NULL,
	[ZZMFGPRC2] [varchar](20) NULL,
	[ZZMFGPRC3] [varchar](20) NULL,
	[ZZMFGRSTC] [varchar](20) NULL,
	[ZZPKGFRMT] [varchar](20) NULL,
	[ZZPKGUNIT] [varchar](20) NULL,
	[ZZPKGASMB] [varchar](20) NULL,
	[ZZBUSUNIT] [varchar](10) NULL,
	[ZZSEGMENT] [varchar](2) NULL,
	[ZZCATEGORY] [varchar](2) NULL,
	[ZZSUBCATGRY] [varchar](2) NULL,
	[ZZBRAND] [varchar](4) NULL,
	[ZZTYPE] [varchar](4) NULL,
	[ZZSUBTYPE] [varchar](4) NULL,
	[ZZSMOPSUP] [varchar](20) NULL,
	[ZZSELLPRC] [decimal](11, 2) NULL,
	[ZZSELLPRC0001] [varchar](5) NULL,
	[ZZMININV] [decimal](4, 0) NULL,
	[ZZMAXINV] [decimal](4, 0) NULL,
	[ZZMININVADJ] [decimal](4, 0) NULL,
	[ZZMAXINVADJ] [decimal](4, 0) NULL,
	[ZZPLNPOLCY] [varchar](10) NULL,
	[ZZMATSTAT] [varchar](2) NULL,
	[ZZPRDNOTE] [varchar](40) NULL,
	[ZZROII] [decimal](10, 2) NULL,
	[ZZCASECST] [decimal](17, 2) NULL,
	[ZZCASECST0001] [varchar](5) NULL,
	[ZZTEAMGR] [varchar](4) NULL,
	[ZZABCLAS] [varchar](10) NULL,
	[ZZMATYPE] [varchar](4) NULL,
	[ZZSCPLNR] [varchar](10) NULL,
	[ZZCUBE] [varchar](6) NULL,
	[ZZSOPLATFRM] [varchar](30) NULL,
	[ZZBSEPROD] [varchar](18) NULL,
	[ZZINPFOOD] [varchar](20) NULL,
	[LIKEID] [varchar](22) NULL,
	[PHIN_FROM] [date] NULL,
	[PHIN_TO] [date] NULL,
	[PHIN_TSID] [varchar](22) NULL,
	[PHOUT_FROM] [date] NULL,
	[PHOUT_TO] [date] NULL,
	[PHOUT_TSID] [varchar](22) NULL,
	[LIFE_CYCLE_LOCID] [varchar](22) NULL,
	[CREATEUSER] [varchar](12) NULL,
	[CREATEUTC] [decimal](15, 0) NULL,
	[CHANGEUSER] [varchar](12) NULL,
	[CHANGEUTC] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_MATKEY_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_MATKEY_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATID] [varchar](22) NULL,
	[MATNR] [varchar](40) NULL,
	[PRODUCT_TYPE] [varchar](2) NULL,
	[LVORM] [varchar](1) NULL,
	[FLAGCLASS] [varchar](1) NULL,
	[FLAGPACK] [varchar](1) NULL,
	[DISST] [varchar](3) NULL,
	[MEINS] [varchar](3) NULL,
	[ATTYP] [varchar](2) NULL,
	[LOGUNIT] [varchar](3) NULL,
	[CWREL] [varchar](1) NULL,
	[TY2TQ] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[SHELF_LIFE_FLAG] [varchar](1) NULL,
	[SHELF_LIFE_DUR] [decimal](11, 0) NULL,
	[MATURITY_DUR] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MIN] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MAX] [decimal](11, 0) NULL,
	[MHDLP] [decimal](3, 0) NULL,
	[SLED_BBD] [varchar](1) NULL,
	[SLDRND] [varchar](1) NULL,
	[ATT01] [varchar](40) NULL,
	[ATT02] [varchar](30) NULL,
	[ATT03] [varchar](20) NULL,
	[ATT04] [varchar](10) NULL,
	[ATT05] [varchar](10) NULL,
	[BOD_DEPLVL] [varchar](1) NULL,
	[EXCL_EXPEDITE] [varchar](1) NULL,
	[PROD_PAOOPT] [varchar](1) NULL,
	[RESTRICT_INVBAL] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[STFAC] [decimal](2, 0) NULL,
	[TRAGR] [varchar](4) NULL,
	[TS_SDP_USE] [varchar](1) NULL,
	[PRDHA] [varchar](18) NULL,
	[GTIN_IND] [varchar](1) NULL,
	[DISPLAY] [varchar](1) NULL,
	[HERKL] [varchar](3) NULL,
	[BATCH_REQ] [varchar](1) NULL,
	[KITCOMP] [varchar](1) NULL,
	[PRDSET_IND] [varchar](1) NULL,
	[SERIAL] [varchar](4) NULL,
	[DATA_CHECK_BY] [varchar](12) NULL,
	[DATA_CHECK_AT] [decimal](15, 0) NULL,
	[KOSCH] [varchar](18) NULL,
	[KOSCH_GRP] [varchar](18) NULL,
	[VMIKOSCH] [varchar](18) NULL,
	[VMIKOSCH_GRP] [varchar](18) NULL,
	[PACKGR] [varchar](4) NULL,
	[RMATP] [varchar](22) NULL,
	[HUTYP_DFLT] [varchar](4) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[SATID] [varchar](22) NULL,
	[KZKFG] [varchar](1) NULL,
	[MATVERS_HEAD] [varchar](22) NULL,
	[MATVERS_TYPE] [varchar](1) NULL,
	[MATVERS_CHNR] [varchar](12) NULL,
	[TEMPRPBLOCK] [varchar](2) NULL,
	[TEMPRPFROM] [decimal](15, 0) NULL,
	[TEMPRPTO] [decimal](15, 0) NULL,
	[ZZTACTMDL] [varchar](10) NULL,
	[ZZSCPEQTY] [varchar](20) NULL,
	[ZZMFGRESNW] [varchar](20) NULL,
	[ZZMFGPRC1] [varchar](20) NULL,
	[ZZMFGPRC2] [varchar](20) NULL,
	[ZZMFGPRC3] [varchar](20) NULL,
	[ZZMFGRSTC] [varchar](20) NULL,
	[ZZPKGFRMT] [varchar](20) NULL,
	[ZZPKGUNIT] [varchar](20) NULL,
	[ZZPKGASMB] [varchar](20) NULL,
	[ZZBUSUNIT] [varchar](10) NULL,
	[ZZSEGMENT] [varchar](2) NULL,
	[ZZCATEGORY] [varchar](2) NULL,
	[ZZSUBCATGRY] [varchar](2) NULL,
	[ZZBRAND] [varchar](4) NULL,
	[ZZTYPE] [varchar](4) NULL,
	[ZZSUBTYPE] [varchar](4) NULL,
	[ZZSMOPSUP] [varchar](20) NULL,
	[ZZSELLPRC] [decimal](11, 2) NULL,
	[ZZSELLPRC0001] [varchar](5) NULL,
	[ZZMININV] [decimal](4, 0) NULL,
	[ZZMAXINV] [decimal](4, 0) NULL,
	[ZZMININVADJ] [decimal](4, 0) NULL,
	[ZZMAXINVADJ] [decimal](4, 0) NULL,
	[ZZPLNPOLCY] [varchar](10) NULL,
	[ZZMATSTAT] [varchar](2) NULL,
	[ZZPRDNOTE] [varchar](40) NULL,
	[ZZROII] [decimal](10, 2) NULL,
	[ZZCASECST] [decimal](17, 2) NULL,
	[ZZCASECST0001] [varchar](5) NULL,
	[ZZTEAMGR] [varchar](4) NULL,
	[ZZABCLAS] [varchar](10) NULL,
	[ZZMATYPE] [varchar](4) NULL,
	[ZZSCPLNR] [varchar](10) NULL,
	[ZZCUBE] [varchar](6) NULL,
	[ZZSOPLATFRM] [varchar](30) NULL,
	[ZZBSEPROD] [varchar](18) NULL,
	[ZZINPFOOD] [varchar](20) NULL,
	[LIKEID] [varchar](22) NULL,
	[PHIN_FROM] [date] NULL,
	[PHIN_TO] [date] NULL,
	[PHIN_TSID] [varchar](22) NULL,
	[PHOUT_FROM] [date] NULL,
	[PHOUT_TO] [date] NULL,
	[PHOUT_TSID] [varchar](22) NULL,
	[LIFE_CYCLE_LOCID] [varchar](22) NULL,
	[CREATEUSER] [varchar](12) NULL,
	[CREATEUTC] [decimal](15, 0) NULL,
	[CHANGEUSER] [varchar](12) NULL,
	[CHANGEUTC] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_MATLOC]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_MATLOC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATID] [varchar](22) NULL,
	[LOCID] [varchar](22) NULL,
	[LVORM] [varchar](1) NULL,
	[DIUOM] [varchar](3) NULL,
	[MTVFP] [varchar](2) NULL,
	[ATP_CHMOD] [varchar](3) NULL,
	[CHKHOR] [decimal](3, 0) NULL,
	[CHKHORCAL] [varchar](10) NULL,
	[RCRRCPHOR] [decimal](3, 0) NULL,
	[PSSFLAG] [varchar](1) NULL,
	[KOSCH] [varchar](18) NULL,
	[KOSCH_GRP] [varchar](18) NULL,
	[VMIKOSCH] [varchar](18) NULL,
	[VMIKOSCH_GRP] [varchar](18) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[SATID] [varchar](22) NULL,
	[KZKFG] [varchar](1) NULL,
	[GRPRT] [decimal](11, 0) NULL,
	[GIPRT] [decimal](11, 0) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[LGRAD] [decimal](3, 1) NULL,
	[SCOST] [decimal](13, 3) NULL,
	[BESKZ] [varchar](1) NULL,
	[LSZID] [varchar](22) NULL,
	[DPRID] [varchar](22) NULL,
	[SPRID] [varchar](22) NULL,
	[DPLID] [varchar](22) NULL,
	[MATSTORE] [varchar](22) NULL,
	[SAFTY] [float] NULL,
	[STOCK_UID] [varchar](22) NULL,
	[SW_SCZPRF] [varchar](1) NULL,
	[RQMID] [varchar](22) NULL,
	[SAFTYC_MAX] [decimal](15, 3) NULL,
	[SAFTYC_MIN] [decimal](15, 3) NULL,
	[RELDT] [decimal](3, 0) NULL,
	[RRP_TYPE] [varchar](1) NULL,
	[ERHOR] [decimal](11, 0) NULL,
	[FREIZ] [decimal](11, 0) NULL,
	[FIXHZ] [decimal](11, 0) NULL,
	[HEUR_ID] [varchar](12) NULL,
	[PACKAGE_ID] [varchar](12) NULL,
	[PART_OF_PACKAGE] [varchar](1) NULL,
	[WHATBOM] [varchar](1) NULL,
	[EXPLDATE_FINDER] [varchar](1) NULL,
	[CONVH] [decimal](4, 0) NULL,
	[CTHOR] [decimal](11, 0) NULL,
	[AJHOZ] [decimal](11, 0) NULL,
	[PACKAGE_TYPE] [decimal](3, 0) NULL,
	[INTSRC_PROF] [varchar](10) NULL,
	[DPLCHRPRF_ID] [varchar](22) NULL,
	[ND_STORDU] [decimal](15, 2) NULL,
	[ND_MEANPROD_WEEK] [decimal](5, 2) NULL,
	[NDCOSTWE] [float] NULL,
	[NDCOSTWA] [float] NULL,
	[DTQID] [varchar](22) NULL,
	[SELHORZ] [decimal](3, 0) NULL,
	[EARLYSHIP] [decimal](3, 0) NULL,
	[PROC_COST] [decimal](13, 3) NULL,
	[PROD_COST] [decimal](13, 3) NULL,
	[SSPEN] [decimal](13, 3) NULL,
	[PRIO] [int] NULL,
	[MSDP_SB_METHOD] [varchar](2) NULL,
	[GET_ALERTS] [varchar](1) NULL,
	[SNPNOFIX] [varchar](1) NULL,
	[RESNETSTRAT] [int] NULL,
	[RES_NET_ID] [varchar](22) NULL,
	[RES_NET_NAME] [varchar](40) NULL,
	[CONRESSTRAT] [int] NULL,
	[TPOP] [varchar](2) NULL,
	[CCIND] [varchar](1) NULL,
	[SCOST_PRCNT] [decimal](3, 2) NULL,
	[SFT_OVERRIDE] [varchar](1) NULL,
	[THRUPUT_TIME] [decimal](11, 0) NULL,
	[UNS_PRC_SCOST] [decimal](3, 2) NULL,
	[PPSAFTYSTK] [float] NULL,
	[PPSAFTYSTK_V] [float] NULL,
	[ADDSFTSTK] [float] NULL,
	[MAXSTOR_QTY] [float] NULL,
	[SAFTY_V] [float] NULL,
	[REPSAFTY] [float] NULL,
	[REPSAFTY_V] [float] NULL,
	[MAXSTOCK_V] [float] NULL,
	[REORD_V] [float] NULL,
	[FIXTI] [decimal](15, 0) NULL,
	[COSID] [varchar](22) NULL,
	[SCOST_PER_DAY] [float] NULL,
	[REORD] [float] NULL,
	[MAXSTOCK] [float] NULL,
	[PLANNER_PPS] [varchar](3) NULL,
	[PLANNER_SNP] [varchar](3) NULL,
	[PLANNER_DEMAND] [varchar](3) NULL,
	[PLANNER_TRANS] [varchar](3) NULL,
	[PLANNER_PUR] [varchar](3) NULL,
	[CONHAP] [decimal](13, 3) NULL,
	[HUNIT] [varchar](3) NULL,
	[CONINP] [decimal](13, 3) NULL,
	[IUNIT] [varchar](3) NULL,
	[KDMATID] [varchar](40) NULL,
	[EKGRP] [varchar](3) NULL,
	[VEGRP] [varchar](20) NULL,
	[CONHAP_OUT] [decimal](13, 3) NULL,
	[HUNIT_OUT] [varchar](3) NULL,
	[LADGR] [varchar](4) NULL,
	[CONF_PROPAGATION] [int] NULL,
	[CONF_COMPONENTS] [int] NULL,
	[CONF_DURATION] [int] NULL,
	[CONF_GMSYNC] [varchar](1) NULL,
	[PROFID] [varchar](12) NULL,
	[FRTME] [varchar](3) NULL,
	[FEDEM] [decimal](4, 1) NULL,
	[FERLD] [decimal](4, 1) NULL,
	[PIPRT] [decimal](11, 0) NULL,
	[TLPRT] [decimal](11, 0) NULL,
	[SNPCHKHOR] [decimal](3, 0) NULL,
	[RRP_SEL_GROUP] [varchar](2) NULL,
	[ATDSP] [varchar](3) NULL,
	[ATDDM] [varchar](3) NULL,
	[COSTPROF] [varchar](10) NULL,
	[MAABC] [varchar](1) NULL,
	[MAT_PRTMANAGE] [varchar](1) NULL,
	[MANOT] [varchar](1) NULL,
	[DIBER] [varchar](1) NULL,
	[SUBLOCID] [varchar](22) NULL,
	[MATLOCID] [varchar](22) NULL,
	[AT101] [varchar](40) NULL,
	[AT102] [varchar](30) NULL,
	[AT103] [varchar](20) NULL,
	[AT104] [varchar](10) NULL,
	[AT105] [varchar](10) NULL,
	[MATVERS_ACTIVE] [varchar](1) NULL,
	[MATVERS_HPLAN] [varchar](1) NULL,
	[TDFIELDS] [varchar](1) NULL,
	[PLANNER_VMI] [varchar](3) NULL,
	[PLANNER_SMI] [varchar](3) NULL,
	[PRO_ORD] [varchar](1) NULL,
	[PRO_LTP] [varchar](1) NULL,
	[OS_LIMIT] [decimal](13, 3) NULL,
	[DEADPILE] [varchar](1) NULL,
	[SHIPPING] [varchar](1) NULL,
	[ARRIVAL] [varchar](1) NULL,
	[ACT_STATUS] [varchar](1) NULL,
	[HUGRP] [varchar](4) NULL,
	[MAXCOVER] [int] NULL,
	[MAXCOVERUP] [varchar](1) NULL,
	[MIXTP] [varchar](1) NULL,
	[USETP] [varchar](1) NULL,
	[PROM_PREDL] [varchar](1) NULL,
	[SHELF_LIFE_LOC] [varchar](1) NULL,
	[SHELF_LIFE_DUR] [decimal](11, 0) NULL,
	[MATURITY_DUR] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MIN] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MAX] [decimal](11, 0) NULL,
	[PHYSICAL_MIN] [float] NULL,
	[RPSTATUS] [varchar](2) NULL,
	[MEASGRBUY] [varchar](4) NULL,
	[PURTIME] [decimal](11, 0) NULL,
	[MINSTOCK] [float] NULL,
	[SALESPRICE] [decimal](13, 3) NULL,
	[BWSCL] [varchar](1) NULL,
	[SELLCLASS] [decimal](1, 0) NULL,
	[CONSREFLOCID] [varchar](22) NULL,
	[CONSREFFAC] [decimal](13, 3) NULL,
	[CONSREFVALTO] [decimal](15, 0) NULL,
	[TARGETSTOCK] [float] NULL,
	[STOCKMULTIPLE] [float] NULL,
	[RELTIME] [decimal](11, 0) NULL,
	[SEASON] [varchar](1) NULL,
	[LISTINGSTATUS] [decimal](1, 0) NULL,
	[PROFCST] [varchar](10) NULL,
	[PROREPL] [varchar](10) NULL,
	[PROEXCP] [varchar](10) NULL,
	[PROCL] [varchar](10) NULL,
	[LEADTIMESHIFT] [decimal](2, 0) NULL,
	[FCHOROP] [decimal](3, 0) NULL,
	[FCOUTDAY] [decimal](3, 0) NULL,
	[FCOUTWEEK] [decimal](3, 0) NULL,
	[PROSL] [varchar](10) NULL,
	[PROFCFRQ] [varchar](10) NULL,
	[TEMPRPBLOCK] [varchar](2) NULL,
	[INITBUY] [varchar](1) NULL,
	[MINTROC] [decimal](3, 0) NULL,
	[MAXTROC] [decimal](3, 0) NULL,
	[PROCALIB] [varchar](10) NULL,
	[BALGR] [varchar](10) NULL,
	[PROPREALLOC] [varchar](10) NULL,
	[SUBSTLOCK] [varchar](1) NULL,
	[OFCHOR] [decimal](3, 0) NULL,
	[PROOFFRQ] [varchar](10) NULL,
	[CONSREFMATID] [varchar](22) NULL,
	[DUMMY2_R] [varchar](1) NULL,
	[ZZHOLDCOST] [decimal](5, 2) NULL,
	[ZZRPLNCYCL] [decimal](3, 0) NULL,
	[ZZSMOPSTKPTY] [varchar](20) NULL,
	[ZZSMOPSLSTSAL] [decimal](5, 2) NULL,
	[ZZSMOPSMINSLVL] [decimal](11, 5) NULL,
	[ZZSMOPSMAXSLVL] [decimal](11, 5) NULL,
	[ZZSDSMINTHRESH] [decimal](11, 0) NULL,
	[ZZSDSMAXTHRESH] [decimal](11, 0) NULL,
	[ZZSSTARSLVL] [decimal](11, 5) NULL,
	[ZZDEPLNR] [varchar](10) NULL,
	[ZZEPQ] [decimal](8, 0) NULL,
	[ZZPRODHOLD] [varchar](1) NULL,
	[ZZMATLOCSTA] [varchar](2) NULL,
	[ZZSTDPRICE] [decimal](11, 2) NULL,
	[ZZSTDPRICE0001] [varchar](5) NULL,
	[ZZPRDLOCNOT] [varchar](40) NULL,
	[CREATEUSER] [varchar](12) NULL,
	[CREATEUTC] [decimal](15, 0) NULL,
	[CHANGEUSER] [varchar](12) NULL,
	[CHANGEUTC] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_MATLOC_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_MATLOC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATID] [varchar](22) NULL,
	[LOCID] [varchar](22) NULL,
	[LVORM] [varchar](1) NULL,
	[DIUOM] [varchar](3) NULL,
	[MTVFP] [varchar](2) NULL,
	[ATP_CHMOD] [varchar](3) NULL,
	[CHKHOR] [decimal](3, 0) NULL,
	[CHKHORCAL] [varchar](10) NULL,
	[RCRRCPHOR] [decimal](3, 0) NULL,
	[PSSFLAG] [varchar](1) NULL,
	[KOSCH] [varchar](18) NULL,
	[KOSCH_GRP] [varchar](18) NULL,
	[VMIKOSCH] [varchar](18) NULL,
	[VMIKOSCH_GRP] [varchar](18) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[SATID] [varchar](22) NULL,
	[KZKFG] [varchar](1) NULL,
	[GRPRT] [decimal](11, 0) NULL,
	[GIPRT] [decimal](11, 0) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[LGRAD] [decimal](3, 1) NULL,
	[SCOST] [decimal](13, 3) NULL,
	[BESKZ] [varchar](1) NULL,
	[LSZID] [varchar](22) NULL,
	[DPRID] [varchar](22) NULL,
	[SPRID] [varchar](22) NULL,
	[DPLID] [varchar](22) NULL,
	[MATSTORE] [varchar](22) NULL,
	[SAFTY] [float] NULL,
	[STOCK_UID] [varchar](22) NULL,
	[SW_SCZPRF] [varchar](1) NULL,
	[RQMID] [varchar](22) NULL,
	[SAFTYC_MAX] [decimal](15, 3) NULL,
	[SAFTYC_MIN] [decimal](15, 3) NULL,
	[RELDT] [decimal](3, 0) NULL,
	[RRP_TYPE] [varchar](1) NULL,
	[ERHOR] [decimal](11, 0) NULL,
	[FREIZ] [decimal](11, 0) NULL,
	[FIXHZ] [decimal](11, 0) NULL,
	[HEUR_ID] [varchar](12) NULL,
	[PACKAGE_ID] [varchar](12) NULL,
	[PART_OF_PACKAGE] [varchar](1) NULL,
	[WHATBOM] [varchar](1) NULL,
	[EXPLDATE_FINDER] [varchar](1) NULL,
	[CONVH] [decimal](4, 0) NULL,
	[CTHOR] [decimal](11, 0) NULL,
	[AJHOZ] [decimal](11, 0) NULL,
	[PACKAGE_TYPE] [decimal](3, 0) NULL,
	[INTSRC_PROF] [varchar](10) NULL,
	[DPLCHRPRF_ID] [varchar](22) NULL,
	[ND_STORDU] [decimal](15, 2) NULL,
	[ND_MEANPROD_WEEK] [decimal](5, 2) NULL,
	[NDCOSTWE] [float] NULL,
	[NDCOSTWA] [float] NULL,
	[DTQID] [varchar](22) NULL,
	[SELHORZ] [decimal](3, 0) NULL,
	[EARLYSHIP] [decimal](3, 0) NULL,
	[PROC_COST] [decimal](13, 3) NULL,
	[PROD_COST] [decimal](13, 3) NULL,
	[SSPEN] [decimal](13, 3) NULL,
	[PRIO] [int] NULL,
	[MSDP_SB_METHOD] [varchar](2) NULL,
	[GET_ALERTS] [varchar](1) NULL,
	[SNPNOFIX] [varchar](1) NULL,
	[RESNETSTRAT] [int] NULL,
	[RES_NET_ID] [varchar](22) NULL,
	[RES_NET_NAME] [varchar](40) NULL,
	[CONRESSTRAT] [int] NULL,
	[TPOP] [varchar](2) NULL,
	[CCIND] [varchar](1) NULL,
	[SCOST_PRCNT] [decimal](3, 2) NULL,
	[SFT_OVERRIDE] [varchar](1) NULL,
	[THRUPUT_TIME] [decimal](11, 0) NULL,
	[UNS_PRC_SCOST] [decimal](3, 2) NULL,
	[PPSAFTYSTK] [float] NULL,
	[PPSAFTYSTK_V] [float] NULL,
	[ADDSFTSTK] [float] NULL,
	[MAXSTOR_QTY] [float] NULL,
	[SAFTY_V] [float] NULL,
	[REPSAFTY] [float] NULL,
	[REPSAFTY_V] [float] NULL,
	[MAXSTOCK_V] [float] NULL,
	[REORD_V] [float] NULL,
	[FIXTI] [decimal](15, 0) NULL,
	[COSID] [varchar](22) NULL,
	[SCOST_PER_DAY] [float] NULL,
	[REORD] [float] NULL,
	[MAXSTOCK] [float] NULL,
	[PLANNER_PPS] [varchar](3) NULL,
	[PLANNER_SNP] [varchar](3) NULL,
	[PLANNER_DEMAND] [varchar](3) NULL,
	[PLANNER_TRANS] [varchar](3) NULL,
	[PLANNER_PUR] [varchar](3) NULL,
	[CONHAP] [decimal](13, 3) NULL,
	[HUNIT] [varchar](3) NULL,
	[CONINP] [decimal](13, 3) NULL,
	[IUNIT] [varchar](3) NULL,
	[KDMATID] [varchar](40) NULL,
	[EKGRP] [varchar](3) NULL,
	[VEGRP] [varchar](20) NULL,
	[CONHAP_OUT] [decimal](13, 3) NULL,
	[HUNIT_OUT] [varchar](3) NULL,
	[LADGR] [varchar](4) NULL,
	[CONF_PROPAGATION] [int] NULL,
	[CONF_COMPONENTS] [int] NULL,
	[CONF_DURATION] [int] NULL,
	[CONF_GMSYNC] [varchar](1) NULL,
	[PROFID] [varchar](12) NULL,
	[FRTME] [varchar](3) NULL,
	[FEDEM] [decimal](4, 1) NULL,
	[FERLD] [decimal](4, 1) NULL,
	[PIPRT] [decimal](11, 0) NULL,
	[TLPRT] [decimal](11, 0) NULL,
	[SNPCHKHOR] [decimal](3, 0) NULL,
	[RRP_SEL_GROUP] [varchar](2) NULL,
	[ATDSP] [varchar](3) NULL,
	[ATDDM] [varchar](3) NULL,
	[COSTPROF] [varchar](10) NULL,
	[MAABC] [varchar](1) NULL,
	[MAT_PRTMANAGE] [varchar](1) NULL,
	[MANOT] [varchar](1) NULL,
	[DIBER] [varchar](1) NULL,
	[SUBLOCID] [varchar](22) NULL,
	[MATLOCID] [varchar](22) NULL,
	[AT101] [varchar](40) NULL,
	[AT102] [varchar](30) NULL,
	[AT103] [varchar](20) NULL,
	[AT104] [varchar](10) NULL,
	[AT105] [varchar](10) NULL,
	[MATVERS_ACTIVE] [varchar](1) NULL,
	[MATVERS_HPLAN] [varchar](1) NULL,
	[TDFIELDS] [varchar](1) NULL,
	[PLANNER_VMI] [varchar](3) NULL,
	[PLANNER_SMI] [varchar](3) NULL,
	[PRO_ORD] [varchar](1) NULL,
	[PRO_LTP] [varchar](1) NULL,
	[OS_LIMIT] [decimal](13, 3) NULL,
	[DEADPILE] [varchar](1) NULL,
	[SHIPPING] [varchar](1) NULL,
	[ARRIVAL] [varchar](1) NULL,
	[ACT_STATUS] [varchar](1) NULL,
	[HUGRP] [varchar](4) NULL,
	[MAXCOVER] [int] NULL,
	[MAXCOVERUP] [varchar](1) NULL,
	[MIXTP] [varchar](1) NULL,
	[USETP] [varchar](1) NULL,
	[PROM_PREDL] [varchar](1) NULL,
	[SHELF_LIFE_LOC] [varchar](1) NULL,
	[SHELF_LIFE_DUR] [decimal](11, 0) NULL,
	[MATURITY_DUR] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MIN] [decimal](11, 0) NULL,
	[SHLF_LFE_REQ_MAX] [decimal](11, 0) NULL,
	[PHYSICAL_MIN] [float] NULL,
	[RPSTATUS] [varchar](2) NULL,
	[MEASGRBUY] [varchar](4) NULL,
	[PURTIME] [decimal](11, 0) NULL,
	[MINSTOCK] [float] NULL,
	[SALESPRICE] [decimal](13, 3) NULL,
	[BWSCL] [varchar](1) NULL,
	[SELLCLASS] [decimal](1, 0) NULL,
	[CONSREFLOCID] [varchar](22) NULL,
	[CONSREFFAC] [decimal](13, 3) NULL,
	[CONSREFVALTO] [decimal](15, 0) NULL,
	[TARGETSTOCK] [float] NULL,
	[STOCKMULTIPLE] [float] NULL,
	[RELTIME] [decimal](11, 0) NULL,
	[SEASON] [varchar](1) NULL,
	[LISTINGSTATUS] [decimal](1, 0) NULL,
	[PROFCST] [varchar](10) NULL,
	[PROREPL] [varchar](10) NULL,
	[PROEXCP] [varchar](10) NULL,
	[PROCL] [varchar](10) NULL,
	[LEADTIMESHIFT] [decimal](2, 0) NULL,
	[FCHOROP] [decimal](3, 0) NULL,
	[FCOUTDAY] [decimal](3, 0) NULL,
	[FCOUTWEEK] [decimal](3, 0) NULL,
	[PROSL] [varchar](10) NULL,
	[PROFCFRQ] [varchar](10) NULL,
	[TEMPRPBLOCK] [varchar](2) NULL,
	[INITBUY] [varchar](1) NULL,
	[MINTROC] [decimal](3, 0) NULL,
	[MAXTROC] [decimal](3, 0) NULL,
	[PROCALIB] [varchar](10) NULL,
	[BALGR] [varchar](10) NULL,
	[PROPREALLOC] [varchar](10) NULL,
	[SUBSTLOCK] [varchar](1) NULL,
	[OFCHOR] [decimal](3, 0) NULL,
	[PROOFFRQ] [varchar](10) NULL,
	[CONSREFMATID] [varchar](22) NULL,
	[DUMMY2_R] [varchar](1) NULL,
	[ZZHOLDCOST] [decimal](5, 2) NULL,
	[ZZRPLNCYCL] [decimal](3, 0) NULL,
	[ZZSMOPSTKPTY] [varchar](20) NULL,
	[ZZSMOPSLSTSAL] [decimal](5, 2) NULL,
	[ZZSMOPSMINSLVL] [decimal](11, 5) NULL,
	[ZZSMOPSMAXSLVL] [decimal](11, 5) NULL,
	[ZZSDSMINTHRESH] [decimal](11, 0) NULL,
	[ZZSDSMAXTHRESH] [decimal](11, 0) NULL,
	[ZZSSTARSLVL] [decimal](11, 5) NULL,
	[ZZDEPLNR] [varchar](10) NULL,
	[ZZEPQ] [decimal](8, 0) NULL,
	[ZZPRODHOLD] [varchar](1) NULL,
	[ZZMATLOCSTA] [varchar](2) NULL,
	[ZZSTDPRICE] [decimal](11, 2) NULL,
	[ZZSTDPRICE0001] [varchar](5) NULL,
	[ZZPRDLOCNOT] [varchar](40) NULL,
	[CREATEUSER] [varchar](12) NULL,
	[CREATEUTC] [decimal](15, 0) NULL,
	[CHANGEUSER] [varchar](12) NULL,
	[CHANGEUTC] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_MATMAP]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_MATMAP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EXT_MATNR] [varchar](40) NULL,
	[PRODUCT_TYPE] [varchar](2) NULL,
	[LOGQS] [varchar](8) NULL,
	[MATID] [varchar](22) NULL,
	[MATNR] [varchar](40) NULL,
	[LOGSYS] [varchar](10) NULL,
	[MATVERS] [varchar](10) NULL,
	[MATNRLONG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAPO_MATMAP_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAPO_MATMAP_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EXT_MATNR] [varchar](40) NULL,
	[PRODUCT_TYPE] [varchar](2) NULL,
	[LOGQS] [varchar](8) NULL,
	[MATID] [varchar](22) NULL,
	[MATNR] [varchar](40) NULL,
	[LOGSYS] [varchar](10) NULL,
	[MATVERS] [varchar](10) NULL,
	[MATNRLONG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCM_PMATERIAL]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCM_PMATERIAL](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[AF_COLOR] [varchar](5) NULL,
	[AF_FCOCO] [varchar](5) NULL,
	[AF_GENDER] [varchar](2) NULL,
	[AF_GRID] [varchar](18) NULL,
	[AF_STYLE] [varchar](18) NULL,
	[APO_PROD] [varchar](40) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[BASIC_MATL] [varchar](14) NULL,
	[BBP_PROD] [varchar](32) NULL,
	[COMPETITOR] [varchar](10) NULL,
	[CONT_UNIT] [varchar](3) NULL,
	[CREATEDON] [date] NULL,
	[CRM_PROD] [varchar](32) NULL,
	[DIVISION] [varchar](2) NULL,
	[EANUPC] [varchar](18) NULL,
	[EXTMATLGRP] [varchar](18) NULL,
	[GROSS_CONT] [decimal](17, 3) NULL,
	[GROSS_WT] [decimal](17, 3) NULL,
	[HC_AGENT1] [varchar](20) NULL,
	[HC_AGENT2] [varchar](20) NULL,
	[HC_AGENT3] [varchar](20) NULL,
	[HC_ANESIND] [varchar](1) NULL,
	[HC_APPRTYP] [varchar](2) NULL,
	[HC_ATCCODE] [varchar](20) NULL,
	[HC_ATCMTYP] [varchar](3) NULL,
	[HC_CATIND1] [varchar](1) NULL,
	[HC_CATIND2] [varchar](1) NULL,
	[HC_CATIND3] [varchar](1) NULL,
	[HC_HAZMIND] [varchar](1) NULL,
	[HC_IMPMIND] [varchar](1) NULL,
	[HEIGHT] [decimal](17, 3) NULL,
	[IND_SECTOR] [varchar](1) NULL,
	[LENGHT] [decimal](17, 3) NULL,
	[LOC_CURRCY] [varchar](5) NULL,
	[LOGSYS] [varchar](10) NULL,
	[MANUFACTOR] [varchar](10) NULL,
	[MANU_MATNR] [varchar](40) NULL,
	[MATL_CAT] [varchar](2) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_TYPE] [varchar](4) NULL,
	[MSA_USAGE] [varchar](10) NULL,
	[NET_CONT] [decimal](17, 3) NULL,
	[NET_WEIGHT] [decimal](17, 3) NULL,
	[PO_UNIT] [varchar](3) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[RPA_WGH1] [varchar](9) NULL,
	[RPA_WGH2] [varchar](9) NULL,
	[RPA_WGH3] [varchar](9) NULL,
	[RPA_WGH4] [varchar](9) NULL,
	[RTPLCST] [decimal](17, 2) NULL,
	[RT_COLOR] [varchar](18) NULL,
	[RT_CONFMAT] [varchar](18) NULL,
	[RT_FASHGRD] [varchar](4) NULL,
	[RT_MDRELST] [varchar](1) NULL,
	[RT_PRBAND] [varchar](2) NULL,
	[RT_PRRULE] [varchar](1) NULL,
	[RT_SEAROLL] [varchar](2) NULL,
	[RT_SEASON] [varchar](4) NULL,
	[RT_SEASYR] [decimal](4, 0) NULL,
	[RT_SEAYR] [varchar](4) NULL,
	[RT_SIZE] [varchar](18) NULL,
	[RT_SUPS] [varchar](1) NULL,
	[SIZE_DIM] [varchar](32) NULL,
	[STD_DESCR] [varchar](18) NULL,
	[UCCERTIFTY] [varchar](2) NULL,
	[UCCONSTCLA] [varchar](8) NULL,
	[UCFUNCCLAS] [varchar](8) NULL,
	[UNIT_DIM] [varchar](3) NULL,
	[UNIT_OF_WT] [varchar](3) NULL,
	[VENDOR] [varchar](10) NULL,
	[VOLUME] [decimal](17, 3) NULL,
	[VOLUMEUNIT] [varchar](3) NULL,
	[WIDTH] [decimal](17, 3) NULL,
	[DF_DGNR] [varchar](18) NULL,
	[DF_PROFILE] [varchar](3) NULL,
	[RF_SIZE2] [varchar](18) NULL,
	[RF_BNDID] [varchar](4) NULL,
	[RF_FRECHAR] [varchar](18) NULL,
	[/BIC/ZMTVARSGY] [varchar](15) NULL,
	[/BIC/ZZBRAND] [varchar](40) NULL,
	[/BIC/ZZABCLAS] [varchar](40) NULL,
	[/BIC/ZZBSEPROD] [varchar](18) NULL,
	[/BIC/ZZBUSUNIT] [varchar](10) NULL,
	[/BIC/ZZCATGRY] [varchar](2) NULL,
	[/BIC/ZZCUBE] [varchar](6) NULL,
	[/BIC/ZZINPFOOD] [varchar](20) NULL,
	[/BIC/ZZMATSTAT] [varchar](2) NULL,
	[/BIC/ZZMATYPE] [varchar](4) NULL,
	[/BIC/ZZMAXINV] [decimal](17, 3) NULL,
	[/BIC/ZZMXINVAJ] [decimal](17, 3) NULL,
	[/BIC/ZZMFGPRC1] [varchar](20) NULL,
	[/BIC/ZZMFGPRC2] [varchar](20) NULL,
	[/BIC/ZZMFGPRC3] [varchar](20) NULL,
	[/BIC/ZZMFGRSNW] [varchar](20) NULL,
	[/BIC/ZZMFGRSTC] [varchar](20) NULL,
	[/BIC/ZZMININV] [decimal](17, 3) NULL,
	[/BIC/ZZMNINVAJ] [decimal](17, 3) NULL,
	[/BIC/ZZPKGASMB] [varchar](20) NULL,
	[/BIC/ZZPKGFRMT] [varchar](20) NULL,
	[/BIC/ZZPKGUNIT] [varchar](20) NULL,
	[/BIC/ZZPLNPLCY] [varchar](10) NULL,
	[/BIC/ZZPRDNOTE] [varchar](40) NULL,
	[/BIC/ZZROII] [decimal](17, 3) NULL,
	[/BIC/ZZSCPEQTY] [varchar](20) NULL,
	[/BIC/ZZSCPLNR] [varchar](10) NULL,
	[/BIC/ZZSEGMENT] [varchar](2) NULL,
	[/BIC/ZZSUBCAT] [varchar](2) NULL,
	[/BIC/ZZSOPLFRM] [varchar](30) NULL,
	[/BIC/ZZSMOPSUP] [varchar](20) NULL,
	[/BIC/ZZTACTMDL] [varchar](10) NULL,
	[/BIC/ZZSUBTYPE] [varchar](4) NULL,
	[/BIC/ZZTEAMGR] [varchar](4) NULL,
	[/BIC/ZZTYPE] [varchar](4) NULL,
	[/BIC/ZKOSCH] [varchar](18) NULL,
	[/BIC/ZMEINH] [varchar](3) NULL,
	[/BIC/ZLVORM] [varchar](1) NULL,
	[/BIC/ZEXTMATNR] [varchar](40) NULL,
	[/BIC/ZATT01] [varchar](40) NULL,
	[/BIC/ZATT02] [varchar](30) NULL,
	[/BIC/ZATT03] [varchar](20) NULL,
	[/BIC/ZATT04] [varchar](10) NULL,
	[/BIC/ZATT05] [varchar](10) NULL,
	[/BIC/ZUMREZ] [decimal](5, 0) NULL,
	[/BIC/ZKOSCHGRP] [varchar](18) NULL,
	[/BIC/ZTRAGR] [varchar](4) NULL,
	[/BIC/ZSTFAC] [decimal](2, 0) NULL,
	[/BIC/ZZCSCST01] [varchar](5) NULL,
	[/BIC/ZZCASECST] [decimal](17, 2) NULL,
	[/BIC/ZZSELLP01] [varchar](5) NULL,
	[/BIC/ZZSELLPRC] [decimal](17, 2) NULL,
	[/BIC/ZPACKTYP] [varchar](30) NULL,
	[/BIC/ZSUBBRND] [varchar](30) NULL,
	[/BIC/ZMAT_CLAS] [varchar](36) NULL,
	[/BIC/C_AALT001] [varchar](30) NULL,
	[/BIC/C_AALT002] [varchar](30) NULL,
	[/BIC/C_AALT003] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCM_PMATERIAL_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCM_PMATERIAL_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[AF_COLOR] [varchar](5) NULL,
	[AF_FCOCO] [varchar](5) NULL,
	[AF_GENDER] [varchar](2) NULL,
	[AF_GRID] [varchar](18) NULL,
	[AF_STYLE] [varchar](18) NULL,
	[APO_PROD] [varchar](40) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[BASIC_MATL] [varchar](14) NULL,
	[BBP_PROD] [varchar](32) NULL,
	[COMPETITOR] [varchar](10) NULL,
	[CONT_UNIT] [varchar](3) NULL,
	[CREATEDON] [date] NULL,
	[CRM_PROD] [varchar](32) NULL,
	[DIVISION] [varchar](2) NULL,
	[EANUPC] [varchar](18) NULL,
	[EXTMATLGRP] [varchar](18) NULL,
	[GROSS_CONT] [decimal](17, 3) NULL,
	[GROSS_WT] [decimal](17, 3) NULL,
	[HC_AGENT1] [varchar](20) NULL,
	[HC_AGENT2] [varchar](20) NULL,
	[HC_AGENT3] [varchar](20) NULL,
	[HC_ANESIND] [varchar](1) NULL,
	[HC_APPRTYP] [varchar](2) NULL,
	[HC_ATCCODE] [varchar](20) NULL,
	[HC_ATCMTYP] [varchar](3) NULL,
	[HC_CATIND1] [varchar](1) NULL,
	[HC_CATIND2] [varchar](1) NULL,
	[HC_CATIND3] [varchar](1) NULL,
	[HC_HAZMIND] [varchar](1) NULL,
	[HC_IMPMIND] [varchar](1) NULL,
	[HEIGHT] [decimal](17, 3) NULL,
	[IND_SECTOR] [varchar](1) NULL,
	[LENGHT] [decimal](17, 3) NULL,
	[LOC_CURRCY] [varchar](5) NULL,
	[LOGSYS] [varchar](10) NULL,
	[MANUFACTOR] [varchar](10) NULL,
	[MANU_MATNR] [varchar](40) NULL,
	[MATL_CAT] [varchar](2) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_TYPE] [varchar](4) NULL,
	[MSA_USAGE] [varchar](10) NULL,
	[NET_CONT] [decimal](17, 3) NULL,
	[NET_WEIGHT] [decimal](17, 3) NULL,
	[PO_UNIT] [varchar](3) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[RPA_WGH1] [varchar](9) NULL,
	[RPA_WGH2] [varchar](9) NULL,
	[RPA_WGH3] [varchar](9) NULL,
	[RPA_WGH4] [varchar](9) NULL,
	[RTPLCST] [decimal](17, 2) NULL,
	[RT_COLOR] [varchar](18) NULL,
	[RT_CONFMAT] [varchar](18) NULL,
	[RT_FASHGRD] [varchar](4) NULL,
	[RT_MDRELST] [varchar](1) NULL,
	[RT_PRBAND] [varchar](2) NULL,
	[RT_PRRULE] [varchar](1) NULL,
	[RT_SEAROLL] [varchar](2) NULL,
	[RT_SEASON] [varchar](4) NULL,
	[RT_SEASYR] [decimal](4, 0) NULL,
	[RT_SEAYR] [varchar](4) NULL,
	[RT_SIZE] [varchar](18) NULL,
	[RT_SUPS] [varchar](1) NULL,
	[SIZE_DIM] [varchar](32) NULL,
	[STD_DESCR] [varchar](18) NULL,
	[UCCERTIFTY] [varchar](2) NULL,
	[UCCONSTCLA] [varchar](8) NULL,
	[UCFUNCCLAS] [varchar](8) NULL,
	[UNIT_DIM] [varchar](3) NULL,
	[UNIT_OF_WT] [varchar](3) NULL,
	[VENDOR] [varchar](10) NULL,
	[VOLUME] [decimal](17, 3) NULL,
	[VOLUMEUNIT] [varchar](3) NULL,
	[WIDTH] [decimal](17, 3) NULL,
	[DF_DGNR] [varchar](18) NULL,
	[DF_PROFILE] [varchar](3) NULL,
	[RF_SIZE2] [varchar](18) NULL,
	[RF_BNDID] [varchar](4) NULL,
	[RF_FRECHAR] [varchar](18) NULL,
	[/BIC/ZMTVARSGY] [varchar](15) NULL,
	[/BIC/ZZBRAND] [varchar](40) NULL,
	[/BIC/ZZABCLAS] [varchar](40) NULL,
	[/BIC/ZZBSEPROD] [varchar](18) NULL,
	[/BIC/ZZBUSUNIT] [varchar](10) NULL,
	[/BIC/ZZCATGRY] [varchar](2) NULL,
	[/BIC/ZZCUBE] [varchar](6) NULL,
	[/BIC/ZZINPFOOD] [varchar](20) NULL,
	[/BIC/ZZMATSTAT] [varchar](2) NULL,
	[/BIC/ZZMATYPE] [varchar](4) NULL,
	[/BIC/ZZMAXINV] [decimal](17, 3) NULL,
	[/BIC/ZZMXINVAJ] [decimal](17, 3) NULL,
	[/BIC/ZZMFGPRC1] [varchar](20) NULL,
	[/BIC/ZZMFGPRC2] [varchar](20) NULL,
	[/BIC/ZZMFGPRC3] [varchar](20) NULL,
	[/BIC/ZZMFGRSNW] [varchar](20) NULL,
	[/BIC/ZZMFGRSTC] [varchar](20) NULL,
	[/BIC/ZZMININV] [decimal](17, 3) NULL,
	[/BIC/ZZMNINVAJ] [decimal](17, 3) NULL,
	[/BIC/ZZPKGASMB] [varchar](20) NULL,
	[/BIC/ZZPKGFRMT] [varchar](20) NULL,
	[/BIC/ZZPKGUNIT] [varchar](20) NULL,
	[/BIC/ZZPLNPLCY] [varchar](10) NULL,
	[/BIC/ZZPRDNOTE] [varchar](40) NULL,
	[/BIC/ZZROII] [decimal](17, 3) NULL,
	[/BIC/ZZSCPEQTY] [varchar](20) NULL,
	[/BIC/ZZSCPLNR] [varchar](10) NULL,
	[/BIC/ZZSEGMENT] [varchar](2) NULL,
	[/BIC/ZZSUBCAT] [varchar](2) NULL,
	[/BIC/ZZSOPLFRM] [varchar](30) NULL,
	[/BIC/ZZSMOPSUP] [varchar](20) NULL,
	[/BIC/ZZTACTMDL] [varchar](10) NULL,
	[/BIC/ZZSUBTYPE] [varchar](4) NULL,
	[/BIC/ZZTEAMGR] [varchar](4) NULL,
	[/BIC/ZZTYPE] [varchar](4) NULL,
	[/BIC/ZKOSCH] [varchar](18) NULL,
	[/BIC/ZMEINH] [varchar](3) NULL,
	[/BIC/ZLVORM] [varchar](1) NULL,
	[/BIC/ZEXTMATNR] [varchar](40) NULL,
	[/BIC/ZATT01] [varchar](40) NULL,
	[/BIC/ZATT02] [varchar](30) NULL,
	[/BIC/ZATT03] [varchar](20) NULL,
	[/BIC/ZATT04] [varchar](10) NULL,
	[/BIC/ZATT05] [varchar](10) NULL,
	[/BIC/ZUMREZ] [decimal](5, 0) NULL,
	[/BIC/ZKOSCHGRP] [varchar](18) NULL,
	[/BIC/ZTRAGR] [varchar](4) NULL,
	[/BIC/ZSTFAC] [decimal](2, 0) NULL,
	[/BIC/ZZCSCST01] [varchar](5) NULL,
	[/BIC/ZZCASECST] [decimal](17, 2) NULL,
	[/BIC/ZZSELLP01] [varchar](5) NULL,
	[/BIC/ZZSELLPRC] [decimal](17, 2) NULL,
	[/BIC/ZPACKTYP] [varchar](30) NULL,
	[/BIC/ZSUBBRND] [varchar](30) NULL,
	[/BIC/ZMAT_CLAS] [varchar](36) NULL,
	[/BIC/C_AALT001] [varchar](30) NULL,
	[/BIC/C_AALT002] [varchar](30) NULL,
	[/BIC/C_AALT003] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_DELETE_STG1]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_DELETE_STG1](
	[SKUNAME] [varchar](40) NULL,
	[Business Unit - Text] [varchar](20) NULL,
	[EXPDATE] [varchar](8) NULL,
	[Total Shelf Life] [varchar](16) NULL,
	[QTY] [varchar](3) NULL,
	[Standard Price] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_DELETE_TABLE]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_DELETE_TABLE](
	[SKUNAME] [varchar](40) NULL,
	[Business Unit - Text] [varchar](20) NULL,
	[EXPDATE] [varchar](8) NULL,
	[Total Shelf Life] [varchar](16) NULL,
	[QTY] [varchar](3) NULL,
	[Standard Price] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP1]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP1](
	[SNO] [int] NULL,
	[DATE] [date] NULL,
	[DESC] [varchar](10) NULL,
	[PRC] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP2]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP2](
	[SNO] [int] NOT NULL,
	[DATE] [date] NULL,
	[DESC] [varchar](10) NULL,
	[PRC] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ISM_INV_TCURR]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ISM_INV_TCURR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NULL,
	[FCURR] [varchar](5) NULL,
	[TCURR] [varchar](5) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL,
	[DAY] [date] NULL,
	[CAL_DAY] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PZFISCWEK]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PZFISCWEK](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZFISCWEK] [decimal](7, 0) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[ZFISCQUAR] [decimal](7, 0) NULL,
	[ZFISCYEAR] [decimal](4, 0) NULL,
	[ZFISCWEW] [decimal](3, 0) NULL,
	[ZFISCMOW] [decimal](3, 0) NULL,
	[ZFISCQUAW] [decimal](3, 0) NULL,
	[ZFISCHALF] [decimal](7, 0) NULL,
	[ZFISCHALW] [decimal](3, 0) NULL,
	[ZFISCMON] [decimal](7, 0) NULL,
	[FIRST_DAY] [date] NULL,
	[LAST_DAY] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PZFISCWEK_OLD]    Script Date: 11/20/2018 5:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PZFISCWEK_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZFISCWEK] [decimal](7, 0) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[ZFISCQUAR] [decimal](7, 0) NULL,
	[ZFISCYEAR] [decimal](4, 0) NULL,
	[ZFISCWEW] [decimal](3, 0) NULL,
	[ZFISCMOW] [decimal](3, 0) NULL,
	[ZFISCQUAW] [decimal](3, 0) NULL,
	[ZFISCHALF] [decimal](7, 0) NULL,
	[ZFISCHALW] [decimal](3, 0) NULL,
	[ZFISCMON] [decimal](7, 0) NULL,
	[FIRST_DAY] [date] NULL,
	[LAST_DAY] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_LOCMAP_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_LOCMAP_IX] ON [dbo].[SAPAPO_LOCMAP]
(
	[EXT_LOCNO] ASC,
	[LOCTYPE] ASC,
	[LOGQS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_LOCMAP_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_LOCMAP_IX] ON [dbo].[SAPAPO_LOCMAP_OLD]
(
	[EXT_LOCNO] ASC,
	[LOCTYPE] ASC,
	[LOGQS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_MATKEY_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_MATKEY_IX] ON [dbo].[SAPAPO_MATKEY]
(
	[MATID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_MATKEY_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_MATKEY_IX] ON [dbo].[SAPAPO_MATKEY_OLD]
(
	[MATID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_MATLOC_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_MATLOC_IX] ON [dbo].[SAPAPO_MATLOC]
(
	[MATID] ASC,
	[LOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_MATLOC_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_MATLOC_IX] ON [dbo].[SAPAPO_MATLOC_OLD]
(
	[MATID] ASC,
	[LOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_MATMAP_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_MATMAP_IX] ON [dbo].[SAPAPO_MATMAP]
(
	[EXT_MATNR] ASC,
	[PRODUCT_TYPE] ASC,
	[LOGQS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SAPAPO_MATMAP_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SAPAPO_MATMAP_IX] ON [dbo].[SAPAPO_MATMAP_OLD]
(
	[EXT_MATNR] ASC,
	[PRODUCT_TYPE] ASC,
	[LOGQS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SCM_PMATERIAL_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SCM_PMATERIAL_IX] ON [dbo].[SCM_PMATERIAL]
(
	[MATERIAL] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SCM_PMATERIAL_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SCM_PMATERIAL_IX] ON [dbo].[SCM_PMATERIAL_OLD]
(
	[MATERIAL] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PZFISCWEK_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PZFISCWEK_IX] ON [STG].[PZFISCWEK]
(
	[ZFISCWEK] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PZFISCWEK_IX]    Script Date: 11/20/2018 5:49:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PZFISCWEK_IX] ON [STG].[PZFISCWEK_OLD]
(
	[ZFISCWEK] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [KNA_SCM] SET  READ_WRITE 
GO
