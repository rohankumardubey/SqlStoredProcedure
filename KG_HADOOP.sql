USE [master]
GO
/****** Object:  Database [KG_HADOOP]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE DATABASE [KG_HADOOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_HADOOP', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_HADOOP.mdf' , SIZE = 23044096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_HADOOP_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_HADOOP_log.ldf' , SIZE = 513024KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_HADOOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_HADOOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_HADOOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_HADOOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_HADOOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_HADOOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_HADOOP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_HADOOP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_HADOOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_HADOOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_HADOOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_HADOOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_HADOOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_HADOOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_HADOOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_HADOOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_HADOOP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_HADOOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_HADOOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_HADOOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_HADOOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_HADOOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_HADOOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_HADOOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_HADOOP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_HADOOP] SET  MULTI_USER 
GO
ALTER DATABASE [KG_HADOOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_HADOOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_HADOOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_HADOOP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_HADOOP', N'ON'
GO
USE [KG_HADOOP]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKMWM01]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_PU_USKMWM01] FOR LOGIN [SAS_PU_USKMWM01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKJPG07]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_PU_USKJPG07] FOR LOGIN [SAS_PU_USKJPG07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKD1M14]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [SAS_PU_USKD1M14] FOR LOGIN [SAS_PU_USKD1M14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 11/20/2018 5:27:10 PM ******/
CREATE ROLE [db_exeproc]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKMWM01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKJPG07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKD1M14]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [DP]    Script Date: 11/20/2018 5:27:20 PM ******/
CREATE SCHEMA [DP]
GO
/****** Object:  Schema [SALES]    Script Date: 11/20/2018 5:27:20 PM ******/
CREATE SCHEMA [SALES]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:27:20 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [dbo].[ECOMM_GLBL_SHIPMNT_SUMRY]    Script Date: 11/20/2018 5:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ECOMM_GLBL_SHIPMNT_SUMRY](
	[RGN] [varchar](50) NULL,
	[CTRY] [varchar](50) NULL,
	[RETLR] [varchar](50) NULL,
	[CATG] [varchar](50) NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [varchar](50) NULL,
	[ACTL_SALES_GSV] [float] NULL,
	[TRGT_SALES_GSV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [DP].[ISM_FORECST_MTRC]    Script Date: 11/20/2018 5:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DP].[ISM_FORECST_MTRC](
	[FISC_YR] [decimal](10, 2) NULL,
	[FISC_WK] [decimal](10, 2) NULL,
	[FISCAL_WEEK] [varchar](7) NULL,
	[MTRL] [varchar](100) NULL,
	[LOC] [varchar](100) NULL,
	[LG] [int] NULL,
	[WKLY_FRCST] [float] NULL,
	[SALESORG] [varchar](100) NULL,
	[BU_VW] [varchar](100) NULL,
	[BU] [varchar](100) NULL,
	[CHNNL] [varchar](100) NULL,
	[PLN_TO] [varchar](100) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [DP].[KNA_DDPO_FORECAST]    Script Date: 11/20/2018 5:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DP].[KNA_DDPO_FORECAST](
	[BUSINESS_UNIT] [varchar](32) NULL,
	[DP_MATERIAL] [varchar](32) NULL,
	[PLANTO] [varchar](32) NULL,
	[LOCATION] [varchar](32) NULL,
	[CHANNEL] [varchar](32) NULL,
	[SALESORG] [varchar](32) NULL,
	[FISCAL_WEEK] [varchar](7) NULL,
	[EXPLODED_MATERIAL] [varchar](32) NULL,
	[BOM_FLAG] [varchar](1) NULL,
	[BASE_MATERIAL] [varchar](32) NULL,
	[Z1YA_ADJ_HIST] [float] NULL,
	[ZDPADJHS] [float] NULL,
	[ZDPCAUF3] [float] NULL,
	[ZDPCRMTS] [float] NULL,
	[ZDPCRPTS] [float] NULL,
	[ZDPCUSTF] [float] NULL,
	[ZDPPFFST] [float] NULL,
	[ZDPPOSPR] [float] NULL,
	[ZDPPOSQTY] [float] NULL,
	[ZDPSHORT] [float] NULL,
	[ZDPSHPHS] [float] NULL,
	[ZDPTERFC] [float] NULL,
	[ZDPWRKFC] [float] NULL,
	[ZDPMLRFC] [float] NULL,
	[ZDPCRMIN] [float] NULL,
	[CRM_ACTIVITY_INC] [float] NULL,
	[ZDPCAUF1] [float] NULL,
	[ZDPEXKF1] [float] NULL,
	[ZDPMKTFC] [float] NULL,
	[ZDPCAUF2] [float] NULL,
	[ZDPCAUF4] [float] NULL,
	[ZDPSTFC3] [float] NULL,
	[Z1YA_ADJ_HIST_GSV] [float] NULL,
	[ZDPADJHS_GSV] [float] NULL,
	[ZDPCAUF3_GSV] [float] NULL,
	[ZDPCRMTS_GSV] [float] NULL,
	[ZDPCRPTS_GSV] [float] NULL,
	[ZDPCUSTF_GSV] [float] NULL,
	[ZDPPFFST_GSV] [float] NULL,
	[ZDPPOSPR_GSV] [float] NULL,
	[ZDPPOSQTY_GSV] [float] NULL,
	[ZDPSHORT_GSV] [float] NULL,
	[ZDPSHPHS_GSV] [float] NULL,
	[ZDPTERFC_GSV] [float] NULL,
	[ZDPWRKFC_GSV] [float] NULL,
	[ZDPMLRFC_GSV] [float] NULL,
	[ZDPCRMIN_GSV] [float] NULL,
	[CRM_ACTIVITY_INC_GSV] [float] NULL,
	[ZDPCAUF1_GSV] [float] NULL,
	[ZDPEXKF1_GSV] [float] NULL,
	[ZDPMKTFC_GSV] [float] NULL,
	[ZDPCAUF2_GSV] [float] NULL,
	[ZDPCAUF4_GSV] [float] NULL,
	[ZDPSTFC3_GSV] [float] NULL,
	[Z1YA_ADJ_HIST_ZNL] [float] NULL,
	[ZDPADJHS_ZNL] [float] NULL,
	[ZDPCAUF3_ZNL] [float] NULL,
	[ZDPCRMTS_ZNL] [float] NULL,
	[ZDPCRPTS_ZNL] [float] NULL,
	[ZDPCUSTF_ZNL] [float] NULL,
	[ZDPPFFST_ZNL] [float] NULL,
	[ZDPPOSPR_ZNL] [float] NULL,
	[ZDPPOSQTY_ZNL] [float] NULL,
	[ZDPSHORT_ZNL] [float] NULL,
	[ZDPSHPHS_ZNL] [float] NULL,
	[ZDPTERFC_ZNL] [float] NULL,
	[ZDPWRKFC_ZNL] [float] NULL,
	[ZDPMLRFC_ZNL] [float] NULL,
	[ZDPCRMIN_ZNL] [float] NULL,
	[CRM_ACTIVITY_INC_ZNL] [float] NULL,
	[ZCPCAUF1_ZNL] [float] NULL,
	[ZDPEXKF1_ZNL] [float] NULL,
	[ZDPMKTFC_ZNL] [float] NULL,
	[ZDPCAUF2_ZNL] [float] NULL,
	[ZDPCAUF4_ZNL] [float] NULL,
	[ZDPSTFC3_ZNL] [float] NULL,
	[Z1YA_ADJ_HIST_ZNK] [float] NULL,
	[ZDPADJHS_ZNK] [float] NULL,
	[ZDPCAUF3_ZNK] [float] NULL,
	[ZDPCRMTS_ZNK] [float] NULL,
	[ZDPCRPTS_ZNK] [float] NULL,
	[ZDPCUSTF_ZNK] [float] NULL,
	[ZDPPFFST_ZNK] [float] NULL,
	[ZDPPOSPR_ZNK] [float] NULL,
	[ZDPPOSQTY_ZNK] [float] NULL,
	[ZDPSHORT_ZNK] [float] NULL,
	[ZDPSHPHS_ZNK] [float] NULL,
	[ZDPTERFC_ZNK] [float] NULL,
	[ZDPWRKFC_ZNK] [float] NULL,
	[ZDPMLRFC_ZNK] [float] NULL,
	[ZDPCRMIN_ZNK] [float] NULL,
	[CRM_ACTIVITY_INC_ZNK] [float] NULL,
	[ZDPCAUF1_ZNK] [float] NULL,
	[ZDPEXKF1_ZNK] [float] NULL,
	[ZDPMKTFC_ZNK] [float] NULL,
	[ZDPCAUF2_ZNK] [float] NULL,
	[ZDPCAUF4_ZNK] [float] NULL,
	[ZDPSTFC3_ZNK] [float] NULL,
	[FISC_YR_WK] [int] NULL,
	[FISC_YR_PD] [int] NULL,
	[VERSION] [date] NULL,
	[VERSION_YEAR] [int] NULL,
	[VERSION_MONTH] [int] NULL,
	[VERSION_DAY] [int] NULL,
	[ZDPFLST] [float] NULL,
	[ZDPFSACC] [float] NULL,
	[KEYFIG1] [float] NULL,
	[KEYFIG2] [float] NULL,
	[KEYFIG3] [float] NULL,
	[ZDPFLST_GSV] [float] NULL,
	[ZDPFSACC_GSV] [float] NULL,
	[KEYFIG1_GSV] [float] NULL,
	[KEYFIG2_GSV] [float] NULL,
	[KEYFIG3_GSV] [float] NULL,
	[ZDPFLST_ZNL] [float] NULL,
	[ZDPFSACC_ZNL] [float] NULL,
	[KEYFIG1_ZNL] [float] NULL,
	[KEYFIG2_ZNL] [float] NULL,
	[KEYFIG3_ZNL] [float] NULL,
	[ZDPFLST_ZNK] [float] NULL,
	[ZDPFSACC_ZNK] [float] NULL,
	[KEYFIG1_ZNK] [float] NULL,
	[KEYFIG2_ZNK] [float] NULL,
	[KEYFIG3_ZNK] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [DP].[KNA_S1P_FORECAST]    Script Date: 11/20/2018 5:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DP].[KNA_S1P_FORECAST](
	[CURRENCY] [varchar](5) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[CUST_SALES] [varchar](10) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[FISCPER] [varchar](7) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[MATERIAL] [varchar](18) NULL,
	[SALESORG] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[AVERSION] [varchar](1) NULL,
	[Z9AEXMAT] [varchar](40) NULL,
	[Z9ALOCNO] [varchar](20) NULL,
	[ZPAMATNR] [varchar](40) NULL,
	[ZCUSTOMER] [varchar](10) NULL,
	[ZDPBOMFLG] [varchar](2) NULL,
	[ZDPEXPMAT] [varchar](18) NULL,
	[ZDPRELFLG] [varchar](4) NULL,
	[ZFISCWEK] [varchar](7) NULL,
	[ZDPMATLC] [varchar](40) NULL,
	[ZMAT_CHAN] [varchar](40) NULL,
	[ZMAT_CUST] [varchar](40) NULL,
	[ZPLANAREA] [varchar](10) NULL,
	[ZDPEXPMAT_ZZBSEPROD] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ZBWADJST] [float] NULL,
	[ZBWORDHS] [float] NULL,
	[ZBWSHORT] [float] NULL,
	[ZBWSHPHS] [float] NULL,
	[ZDPADJHS] [float] NULL,
	[ZDPBASHS] [float] NULL,
	[ZDPBDGFC] [float] NULL,
	[ZDPBSTAT] [float] NULL,
	[ZDPCAUF1] [float] NULL,
	[ZDPCAUF2] [float] NULL,
	[ZDPCAUF3] [float] NULL,
	[ZDPCAUF4] [float] NULL,
	[ZDPCLHIST] [float] NULL,
	[ZDPCOMFC] [float] NULL,
	[ZDPCRMBA] [float] NULL,
	[ZDPCRMIN] [float] NULL,
	[ZDPCRMPC] [float] NULL,
	[ZDPCRMS] [float] NULL,
	[ZDPCRMSH] [float] NULL,
	[ZDPCRMTS] [float] NULL,
	[ZDPCRPTS] [float] NULL,
	[ZDPCUSTF] [float] NULL,
	[ZDPEXKF1] [float] NULL,
	[ZDPFCSTO] [float] NULL,
	[ZDPFF1PL] [float] NULL,
	[ZDPFF2PL] [float] NULL,
	[ZDPFFCSF] [float] NULL,
	[ZDPFFCST] [float] NULL,
	[ZDPLOCSH] [float] NULL,
	[ZDPLRPLS] [float] NULL,
	[ZDPLRPUF] [float] NULL,
	[ZDPMANCO] [float] NULL,
	[ZDPMKTFC] [float] NULL,
	[ZDPMLRFC] [float] NULL,
	[ZDPMODBA] [float] NULL,
	[ZDPORDHS] [float] NULL,
	[ZZPPFFST] [float] NULL,
	[ZDPPOSPR] [float] NULL,
	[ZDPPOSQT] [float] NULL,
	[ZDPPTSTA] [float] NULL,
	[ZDPSHORT] [float] NULL,
	[ZDPSHPHS] [float] NULL,
	[ZDPSTFC1] [float] NULL,
	[ZDPSTFC2] [float] NULL,
	[ZDPSTFC3] [float] NULL,
	[ZDPSUPP] [float] NULL,
	[ZDPTERFC] [float] NULL,
	[ZDPTERPF] [float] NULL,
	[ZDPTSTAT] [float] NULL,
	[ZDPWRKFC] [float] NULL,
	[ZDPWRKFF] [float] NULL,
	[ZDPXADJH] [float] NULL,
	[ZDPXSHPH] [float] NULL,
	[FISC_WK] [int] NULL,
	[FISC_YR_WK] [int] NULL,
	[FISC_YR_PD] [int] NULL,
	[VERSION] [date] NULL,
	[VERSION_YEAR] [int] NULL,
	[VERSION_MONTH] [int] NULL,
	[VERSION_DAY] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SALES].[KNA_INV_NON_WM]    Script Date: 11/20/2018 5:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SALES].[KNA_INV_NON_WM](
	[CUSTOMER] [varchar](100) NULL,
	[SOLD_TO] [varchar](100) NULL,
	[STORE_NBR] [varchar](100) NULL,
	[STORE_DESC] [varchar](100) NULL,
	[MATERIAL] [varchar](100) NULL,
	[MATERIAL_DESC] [varchar](100) NULL,
	[FISC_YR_WK] [int] NULL,
	[ON_HAND_QTY] [float] NULL,
	[ON_HAND_RETAIL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SALES].[KNA_POS_NON_WM]    Script Date: 11/20/2018 5:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [SALES].[KNA_POS_NON_WM](
	[CUSTOMER] [varchar](100) NULL,
	[SOLD_TO] [varchar](100) NULL,
	[STORE_NBR] [varchar](100) NULL,
	[STORE_DESC] [varchar](100) NULL,
	[MATERIAL] [varchar](100) NULL,
	[MATERIAL_DESC] [varchar](100) NULL,
	[FISC_YR_WK] [int] NULL,
	[SALES] [float] NULL,
	[QTY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
