USE [master]
GO
/****** Object:  Database [KAP_EBS]    Script Date: 9/11/2018 6:04:16 AM ******/
CREATE DATABASE [KAP_EBS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KIN_EBS', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KIN_EBS.mdf' , SIZE = 163840000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KIN_EBS_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KIN_EBS_log.ldf' , SIZE = 2713600KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KAP_EBS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KAP_EBS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KAP_EBS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KAP_EBS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KAP_EBS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KAP_EBS] SET ARITHABORT OFF 
GO
ALTER DATABASE [KAP_EBS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KAP_EBS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KAP_EBS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KAP_EBS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KAP_EBS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KAP_EBS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KAP_EBS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KAP_EBS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KAP_EBS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KAP_EBS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KAP_EBS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KAP_EBS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KAP_EBS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KAP_EBS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KAP_EBS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KAP_EBS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KAP_EBS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KAP_EBS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KAP_EBS] SET  MULTI_USER 
GO
ALTER DATABASE [KAP_EBS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KAP_EBS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KAP_EBS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KAP_EBS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KAP_EBS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KAP_EBS', N'ON'
GO
USE [KAP_EBS]
GO
/****** Object:  User [US\SQL_KG_ZBB_R]    Script Date: 9/11/2018 6:04:16 AM ******/
CREATE USER [US\SQL_KG_ZBB_R] FOR LOGIN [US\SQL_KG_ZBB_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 9/11/2018 6:04:16 AM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 9/11/2018 6:04:16 AM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_KAP_TABLEAU_DEVLOPERS]    Script Date: 9/11/2018 6:04:16 AM ******/
CREATE USER [US\SQL_KAP_TABLEAU_DEVLOPERS] FOR LOGIN [US\SQL_KAP_TABLEAU_DEVLOPERS]
GO
/****** Object:  User [US\SQL_KAP_IND_SALES_USERS_R]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [US\SQL_KAP_IND_SALES_USERS_R] FOR LOGIN [US\SQL_KAP_IND_SALES_USERS_R]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_KAP_SUPPORT_R]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [US\SQL_DS_KAP_SUPPORT_R] FOR LOGIN [US\SQL_DS_KAP_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 9/11/2018 6:04:17 AM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 9/11/2018 6:04:18 AM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 9/11/2018 6:04:18 AM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_showplan]    Script Date: 9/11/2018 6:04:18 AM ******/
CREATE ROLE [db_showplan]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 9/11/2018 6:04:18 AM ******/
CREATE ROLE [db_exeproc]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KG_ZBB_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KAP_TABLEAU_DEVLOPERS]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KAP_IND_SALES_USERS_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
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
/****** Object:  Schema [RPT]    Script Date: 9/11/2018 6:04:19 AM ******/
CREATE SCHEMA [RPT]
GO
/****** Object:  Schema [STG]    Script Date: 9/11/2018 6:04:19 AM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Schema [WRK]    Script Date: 9/11/2018 6:04:19 AM ******/
CREATE SCHEMA [WRK]
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 9/11/2018 6:04:19 AM ******/
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
/****** Object:  Table [dbo].[COST_CNTR_MSTR_ZBB]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COST_CNTR_MSTR_ZBB](
	[COST_CNTR_COD] [varchar](250) NOT NULL,
	[COST_CNTR_NM] [varchar](500) NULL,
	[ZBB_PARN] [varchar](250) NULL,
	[ACT_FLG] [varchar](1) NULL,
	[LOC_CURR] [varchar](3) NULL,
	[ATTRIB1] [varchar](25) NULL,
	[CREA_DT] [varchar](25) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_STG_KEIN_ZBB_COST_CENTER_MASTER] PRIMARY KEY CLUSTERED 
(
	[COST_CNTR_COD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VAL_SETS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VAL_SETS](
	[FLEX_VAL_SET_ID] [decimal](10, 0) NOT NULL,
	[FLEX_VAL_SET_NM] [varchar](60) NULL,
	[LST_UPD_DT] [datetime2](7) NULL,
	[LST_UPD_BY] [decimal](15, 0) NULL,
	[CRE_DT] [datetime2](7) NULL,
	[CRE_BY] [decimal](15, 0) NULL,
	[LST_UPD_LGN] [decimal](15, 0) NULL,
	[VALID_TYP] [varchar](1) NULL,
	[PROTCD_FLG] [varchar](1) NULL,
	[SEC_ENBL_FLG] [varchar](1) NULL,
	[LNGLST_FLG] [varchar](1) NULL,
	[FMT_TYP] [varchar](1) NULL,
	[MAX_SIZE] [int] NULL,
	[ALPHA_ALLOW_FLG] [varchar](1) NULL,
	[UPCSE_ONLY_FLG] [varchar](1) NULL,
	[NUM_MOD_ENBL_FLAG] [varchar](1) NULL,
	[DESC] [varchar](240) NULL,
	[DEPEND_DFLT_VAL] [varchar](60) NULL,
	[DEPEND_DELT_MEAN] [varchar](240) NULL,
	[PAR_FLEX_VAL_SET_ID] [decimal](10, 0) NULL,
	[MIN_VAL] [varchar](150) NULL,
	[MAX_VAL] [varchar](150) NULL,
	[NUM_PRECIS] [int] NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_STG_FND_FLEX_VALUE_SETS] PRIMARY KEY CLUSTERED 
(
	[FLEX_VAL_SET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VAL_VL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VAL_VL](
	[FLEX_VAL_SET_ID] [decimal](10, 0) NOT NULL,
	[FLEX_VAL_ID] [decimal](15, 0) NOT NULL,
	[FLEX_VAL] [varchar](150) NULL,
	[LST_UPD_DT] [datetime2](7) NULL,
	[LST_UPD_BY] [decimal](15, 0) NULL,
	[CRE_DT] [datetime2](7) NULL,
	[CRE_BY] [decimal](15, 0) NULL,
	[LST_UPD_LGN] [decimal](15, 0) NULL,
	[ENBL_FLG] [varchar](1) NULL,
	[SUMM_FLG] [varchar](1) NULL,
	[STRT_DT_ACT] [datetime2](7) NULL,
	[ED_DT_ACT] [datetime2](7) NULL,
	[PARN_FLEX_VAL_LOW] [varchar](60) NULL,
	[PARN_FLEX_VAL_HGH] [varchar](60) NULL,
	[STRUCT_HIRCHY_LVL] [decimal](15, 0) NULL,
	[HIRCHY_LVL] [varchar](30) NULL,
	[COMPI_VAL_ATTRIB] [varchar](2000) NULL,
	[VAL_CATEG] [varchar](30) NULL,
	[ATTRIB1] [varchar](240) NULL,
	[ATTRIB2] [varchar](240) NULL,
	[ATTRIB3] [varchar](240) NULL,
	[ATTRIB4] [varchar](240) NULL,
	[ATTRIB5] [varchar](240) NULL,
	[ATTRIB6] [varchar](240) NULL,
	[ATTRIB7] [varchar](240) NULL,
	[ATTRIB8] [varchar](240) NULL,
	[ATTRIB9] [varchar](240) NULL,
	[ATTRIB10] [varchar](240) NULL,
	[ATTRIB11] [varchar](240) NULL,
	[ATTRIB12] [varchar](240) NULL,
	[ATTRIB13] [varchar](240) NULL,
	[ATTRIB14] [varchar](240) NULL,
	[ATTRIB15] [varchar](240) NULL,
	[ATTRIB16] [varchar](240) NULL,
	[ATTRIB17] [varchar](240) NULL,
	[ATTRIB18] [varchar](240) NULL,
	[ATTRIB19] [varchar](240) NULL,
	[ATTRIB20] [varchar](240) NULL,
	[ATTRIB21] [varchar](240) NULL,
	[ATTRIB22] [varchar](240) NULL,
	[ATTRIB23] [varchar](240) NULL,
	[ATTRIB24] [varchar](240) NULL,
	[ATTRIB25] [varchar](240) NULL,
	[ATTRIB26] [varchar](240) NULL,
	[ATTRIB27] [varchar](240) NULL,
	[ATTRIB28] [varchar](240) NULL,
	[ATTRIB29] [varchar](240) NULL,
	[ATTRIB30] [varchar](240) NULL,
	[ATTRIB31] [varchar](240) NULL,
	[ATTRIB32] [varchar](240) NULL,
	[ATTRIB33] [varchar](240) NULL,
	[ATTRIB34] [varchar](240) NULL,
	[ATTRIB35] [varchar](240) NULL,
	[ATTRIB36] [varchar](240) NULL,
	[ATTRIB37] [varchar](240) NULL,
	[ATTRIB38] [varchar](240) NULL,
	[ATTRIB39] [varchar](240) NULL,
	[ATTRIB40] [varchar](240) NULL,
	[ATTRIB41] [varchar](240) NULL,
	[ATTRIB42] [varchar](240) NULL,
	[ATTRIB43] [varchar](240) NULL,
	[ATTRIB44] [varchar](240) NULL,
	[ATTRIB45] [varchar](240) NULL,
	[ATTRIB46] [varchar](240) NULL,
	[ATTRIB47] [varchar](240) NULL,
	[ATTRIB48] [varchar](240) NULL,
	[ATTRIB49] [varchar](240) NULL,
	[ATTRIB50] [varchar](240) NULL,
	[FLEX_VAL_MEAN] [varchar](150) NULL,
	[DESC] [varchar](240) NULL,
	[ATTRIB_SORT_ORD] [decimal](15, 0) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_STG_FND_FLEX_VALS_VL] PRIMARY KEY CLUSTERED 
(
	[FLEX_VAL_SET_ID] ASC,
	[FLEX_VAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUE_SETS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUE_SETS](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_SET_NAME] [varchar](60) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[VALIDATION_TYPE] [varchar](1) NULL,
	[PROTECTED_FLAG] [varchar](1) NULL,
	[SECURITY_ENABLED_FLAG] [varchar](1) NULL,
	[LONGLIST_FLAG] [varchar](1) NULL,
	[FORMAT_TYPE] [varchar](1) NULL,
	[MAXIMUM_SIZE] [int] NULL,
	[ALPHANUMERIC_ALLOWED_FLAG] [varchar](1) NULL,
	[UPPERCASE_ONLY_FLAG] [varchar](1) NULL,
	[NUMERIC_MODE_ENABLED_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[DEPENDANT_DEFAULT_VALUE] [varchar](60) NULL,
	[DEPENDANT_DEFAULT_MEANING] [varchar](240) NULL,
	[PARENT_FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MINIMUM_VALUE] [varchar](150) NULL,
	[MAXIMUM_VALUE] [varchar](150) NULL,
	[NUMBER_PRECISION] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUE_SETS_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUE_SETS_OLD](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_SET_NAME] [varchar](60) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[VALIDATION_TYPE] [varchar](1) NULL,
	[PROTECTED_FLAG] [varchar](1) NULL,
	[SECURITY_ENABLED_FLAG] [varchar](1) NULL,
	[LONGLIST_FLAG] [varchar](1) NULL,
	[FORMAT_TYPE] [varchar](1) NULL,
	[MAXIMUM_SIZE] [int] NULL,
	[ALPHANUMERIC_ALLOWED_FLAG] [varchar](1) NULL,
	[UPPERCASE_ONLY_FLAG] [varchar](1) NULL,
	[NUMERIC_MODE_ENABLED_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[DEPENDANT_DEFAULT_VALUE] [varchar](60) NULL,
	[DEPENDANT_DEFAULT_MEANING] [varchar](240) NULL,
	[PARENT_FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MINIMUM_VALUE] [varchar](150) NULL,
	[MAXIMUM_VALUE] [varchar](150) NULL,
	[NUMBER_PRECISION] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUES](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[FLEX_VALUE] [varchar](150) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[PARENT_FLEX_VALUE_LOW] [varchar](60) NULL,
	[PARENT_FLEX_VALUE_HIGH] [varchar](60) NULL,
	[STRUCTURED_HIERARCHY_LEVEL] [decimal](15, 0) NULL,
	[HIERARCHY_LEVEL] [varchar](30) NULL,
	[COMPILED_VALUE_ATTRIBUTES] [varchar](2000) NULL,
	[VALUE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[ATTRIBUTE31] [varchar](240) NULL,
	[ATTRIBUTE32] [varchar](240) NULL,
	[ATTRIBUTE33] [varchar](240) NULL,
	[ATTRIBUTE34] [varchar](240) NULL,
	[ATTRIBUTE35] [varchar](240) NULL,
	[ATTRIBUTE36] [varchar](240) NULL,
	[ATTRIBUTE37] [varchar](240) NULL,
	[ATTRIBUTE38] [varchar](240) NULL,
	[ATTRIBUTE39] [varchar](240) NULL,
	[ATTRIBUTE40] [varchar](240) NULL,
	[ATTRIBUTE41] [varchar](240) NULL,
	[ATTRIBUTE42] [varchar](240) NULL,
	[ATTRIBUTE43] [varchar](240) NULL,
	[ATTRIBUTE44] [varchar](240) NULL,
	[ATTRIBUTE45] [varchar](240) NULL,
	[ATTRIBUTE46] [varchar](240) NULL,
	[ATTRIBUTE47] [varchar](240) NULL,
	[ATTRIBUTE48] [varchar](240) NULL,
	[ATTRIBUTE49] [varchar](240) NULL,
	[ATTRIBUTE50] [varchar](240) NULL,
	[ATTRIBUTE_SORT_ORDER] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUES_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUES_OLD](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[FLEX_VALUE] [varchar](150) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[PARENT_FLEX_VALUE_LOW] [varchar](60) NULL,
	[PARENT_FLEX_VALUE_HIGH] [varchar](60) NULL,
	[STRUCTURED_HIERARCHY_LEVEL] [decimal](15, 0) NULL,
	[HIERARCHY_LEVEL] [varchar](30) NULL,
	[COMPILED_VALUE_ATTRIBUTES] [varchar](2000) NULL,
	[VALUE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[ATTRIBUTE31] [varchar](240) NULL,
	[ATTRIBUTE32] [varchar](240) NULL,
	[ATTRIBUTE33] [varchar](240) NULL,
	[ATTRIBUTE34] [varchar](240) NULL,
	[ATTRIBUTE35] [varchar](240) NULL,
	[ATTRIBUTE36] [varchar](240) NULL,
	[ATTRIBUTE37] [varchar](240) NULL,
	[ATTRIBUTE38] [varchar](240) NULL,
	[ATTRIBUTE39] [varchar](240) NULL,
	[ATTRIBUTE40] [varchar](240) NULL,
	[ATTRIBUTE41] [varchar](240) NULL,
	[ATTRIBUTE42] [varchar](240) NULL,
	[ATTRIBUTE43] [varchar](240) NULL,
	[ATTRIBUTE44] [varchar](240) NULL,
	[ATTRIBUTE45] [varchar](240) NULL,
	[ATTRIBUTE46] [varchar](240) NULL,
	[ATTRIBUTE47] [varchar](240) NULL,
	[ATTRIBUTE48] [varchar](240) NULL,
	[ATTRIBUTE49] [varchar](240) NULL,
	[ATTRIBUTE50] [varchar](240) NULL,
	[ATTRIBUTE_SORT_ORDER] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUES_TL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUES_TL](
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[LANGUAGE] [varchar](30) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](10, 0) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[SOURCE_LANG] [varchar](4) NULL,
	[FLEX_VALUE_MEANING] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUES_TL_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUES_TL_OLD](
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[LANGUAGE] [varchar](30) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](10, 0) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[SOURCE_LANG] [varchar](4) NULL,
	[FLEX_VALUE_MEANING] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUES_VL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUES_VL](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[FLEX_VALUE] [varchar](150) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[PARENT_FLEX_VALUE_LOW] [varchar](60) NULL,
	[PARENT_FLEX_VALUE_HIGH] [varchar](60) NULL,
	[STRUCTURED_HIERARCHY_LEVEL] [decimal](15, 0) NULL,
	[HIERARCHY_LEVEL] [varchar](30) NULL,
	[COMPILED_VALUE_ATTRIBUTES] [varchar](2000) NULL,
	[VALUE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[ATTRIBUTE31] [varchar](240) NULL,
	[ATTRIBUTE32] [varchar](240) NULL,
	[ATTRIBUTE33] [varchar](240) NULL,
	[ATTRIBUTE34] [varchar](240) NULL,
	[ATTRIBUTE35] [varchar](240) NULL,
	[ATTRIBUTE36] [varchar](240) NULL,
	[ATTRIBUTE37] [varchar](240) NULL,
	[ATTRIBUTE38] [varchar](240) NULL,
	[ATTRIBUTE39] [varchar](240) NULL,
	[ATTRIBUTE40] [varchar](240) NULL,
	[ATTRIBUTE41] [varchar](240) NULL,
	[ATTRIBUTE42] [varchar](240) NULL,
	[ATTRIBUTE43] [varchar](240) NULL,
	[ATTRIBUTE44] [varchar](240) NULL,
	[ATTRIBUTE45] [varchar](240) NULL,
	[ATTRIBUTE46] [varchar](240) NULL,
	[ATTRIBUTE47] [varchar](240) NULL,
	[ATTRIBUTE48] [varchar](240) NULL,
	[ATTRIBUTE49] [varchar](240) NULL,
	[ATTRIBUTE50] [varchar](240) NULL,
	[FLEX_VALUE_MEANING] [varchar](150) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[ATTRIBUTE_SORT_ORDER] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_FLEX_VALUES_VL_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_FLEX_VALUES_VL_OLD](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[FLEX_VALUE] [varchar](150) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[PARENT_FLEX_VALUE_LOW] [varchar](60) NULL,
	[PARENT_FLEX_VALUE_HIGH] [varchar](60) NULL,
	[STRUCTURED_HIERARCHY_LEVEL] [decimal](15, 0) NULL,
	[HIERARCHY_LEVEL] [varchar](30) NULL,
	[COMPILED_VALUE_ATTRIBUTES] [varchar](2000) NULL,
	[VALUE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[ATTRIBUTE31] [varchar](240) NULL,
	[ATTRIBUTE32] [varchar](240) NULL,
	[ATTRIBUTE33] [varchar](240) NULL,
	[ATTRIBUTE34] [varchar](240) NULL,
	[ATTRIBUTE35] [varchar](240) NULL,
	[ATTRIBUTE36] [varchar](240) NULL,
	[ATTRIBUTE37] [varchar](240) NULL,
	[ATTRIBUTE38] [varchar](240) NULL,
	[ATTRIBUTE39] [varchar](240) NULL,
	[ATTRIBUTE40] [varchar](240) NULL,
	[ATTRIBUTE41] [varchar](240) NULL,
	[ATTRIBUTE42] [varchar](240) NULL,
	[ATTRIBUTE43] [varchar](240) NULL,
	[ATTRIBUTE44] [varchar](240) NULL,
	[ATTRIBUTE45] [varchar](240) NULL,
	[ATTRIBUTE46] [varchar](240) NULL,
	[ATTRIBUTE47] [varchar](240) NULL,
	[ATTRIBUTE48] [varchar](240) NULL,
	[ATTRIBUTE49] [varchar](240) NULL,
	[ATTRIBUTE50] [varchar](240) NULL,
	[FLEX_VALUE_MEANING] [varchar](150) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[ATTRIBUTE_SORT_ORDER] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_LOOKUPS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_LOOKUPS](
	[LOOKUP_TYPE] [varchar](30) NULL,
	[LOOKUP_CODE] [varchar](30) NULL,
	[MEANING] [varchar](80) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[LEAF_NODE] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FND_LOOKUPS_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FND_LOOKUPS_OLD](
	[LOOKUP_TYPE] [varchar](30) NULL,
	[LOOKUP_CODE] [varchar](30) NULL,
	[MEANING] [varchar](80) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[LEAF_NODE] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_COD_COMBN_KFV]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_COD_COMBN_KFV](
	[CODE_COMBN_ID] [decimal](15, 0) NOT NULL,
	[CHART_OF_ACCTS_ID] [decimal](15, 0) NULL,
	[CONCAT_SEGMS] [varchar](129) NULL,
	[PADDED_CONCAT_SEGMS] [varchar](25) NULL,
	[GL_ACCT_TYP] [varchar](1) NULL,
	[GL_CNTL_ACCT] [varchar](25) NULL,
	[RECON_FLG] [varchar](1) NULL,
	[DETL_BDG_ALLOW] [varchar](1) NULL,
	[DETL_POST_ALLOWED] [varchar](1) NULL,
	[IGI_BAL_BDG_FLG] [varchar](1) NULL,
	[CO_COST_CNTR_ORG_ID] [decimal](15, 0) NULL,
	[RV_ID] [decimal](15, 0) NULL,
	[LEDR_SEGM] [varchar](20) NULL,
	[ALTER_COD_COMBN_ID] [decimal](15, 0) NULL,
	[LST_UPD_DAT] [datetime2](7) NULL,
	[LST_UPD_BY] [decimal](28, 7) NULL,
	[ENBL_FLG] [varchar](1) NULL,
	[SUMM_FLG] [varchar](1) NULL,
	[SEGM1] [varchar](25) NULL,
	[SEGM2] [varchar](25) NULL,
	[SEGM3] [varchar](25) NULL,
	[SEGM4] [varchar](25) NULL,
	[SEGM5] [varchar](25) NULL,
	[SEGM6] [varchar](25) NULL,
	[SEGM7] [varchar](25) NULL,
	[SEGM8] [varchar](25) NULL,
	[SEGM9] [varchar](25) NULL,
	[SEGM10] [varchar](25) NULL,
	[SEGM11] [varchar](25) NULL,
	[SEGM12] [varchar](25) NULL,
	[SEGM13] [varchar](25) NULL,
	[SEGM14] [varchar](25) NULL,
	[SEGM15] [varchar](25) NULL,
	[SEGM16] [varchar](25) NULL,
	[SEGM17] [varchar](25) NULL,
	[SEGM18] [varchar](25) NULL,
	[SEGM19] [varchar](25) NULL,
	[SEGM20] [varchar](25) NULL,
	[SEGM21] [varchar](25) NULL,
	[SEGM22] [varchar](25) NULL,
	[SEGM23] [varchar](25) NULL,
	[SEGM24] [varchar](25) NULL,
	[SEGM25] [varchar](25) NULL,
	[SEGM26] [varchar](25) NULL,
	[SEGM27] [varchar](25) NULL,
	[SEGM28] [varchar](25) NULL,
	[SEGM29] [varchar](25) NULL,
	[SEGM30] [varchar](25) NULL,
	[DESC] [varchar](240) NULL,
	[TEMPL_ID] [decimal](15, 0) NULL,
	[ALLOC_CRE_FLG] [varchar](1) NULL,
	[ST_DT_ACT] [datetime2](7) NULL,
	[ED_DT_ACT] [datetime2](7) NULL,
	[ATTRIB1] [varchar](150) NULL,
	[ATTRIB2] [varchar](150) NULL,
	[ATTRIB3] [varchar](150) NULL,
	[ATTRIB4] [varchar](150) NULL,
	[ATTRIB5] [varchar](150) NULL,
	[ATTRIB6] [varchar](150) NULL,
	[ATTRIB7] [varchar](150) NULL,
	[ATTRIB8] [varchar](150) NULL,
	[ATTRIB9] [varchar](150) NULL,
	[ATTRIB10] [varchar](150) NULL,
	[CTX] [varchar](150) NULL,
	[SEGM_ATTRIB1] [varchar](60) NULL,
	[SEGM_ATTRIB2] [varchar](60) NULL,
	[SEGM_ATTRIB3] [varchar](60) NULL,
	[SEGM_ATTRIB4] [varchar](60) NULL,
	[SEGM_ATTRIB5] [varchar](60) NULL,
	[SEGM_ATTRIB6] [varchar](60) NULL,
	[SEGM_ATTRIB7] [varchar](60) NULL,
	[SEGM_ATTRIB8] [varchar](60) NULL,
	[SEGM_ATTRIB9] [varchar](60) NULL,
	[SEGM_ATTRIB10] [varchar](60) NULL,
	[SEGM_ATTRIB11] [varchar](60) NULL,
	[SEGM_ATTRIB12] [varchar](60) NULL,
	[SEGM_ATTRIB13] [varchar](60) NULL,
	[SEGM_ATTRIB14] [varchar](60) NULL,
	[SEGM_ATTRIB15] [varchar](60) NULL,
	[SEGM_ATTRIB16] [varchar](60) NULL,
	[SEGM_ATTRIB17] [varchar](60) NULL,
	[SEGM_ATTRIB18] [varchar](60) NULL,
	[SEGM_ATTRIB19] [varchar](60) NULL,
	[SEGM_ATTRIB20] [varchar](60) NULL,
	[SEGM_ATTRIB21] [varchar](60) NULL,
	[SEGM_ATTRIB22] [varchar](60) NULL,
	[SEGM_ATTRIB23] [varchar](60) NULL,
	[SEGM_ATTRIB24] [varchar](60) NULL,
	[SEGM_ATTRIB25] [varchar](60) NULL,
	[SEGM_ATTRIB26] [varchar](60) NULL,
	[SEGM_ATTRIB27] [varchar](60) NULL,
	[SEGM_ATTRIB28] [varchar](60) NULL,
	[SEGM_ATTRIB29] [varchar](60) NULL,
	[SEGM_ATTRIB30] [varchar](60) NULL,
	[SEGM_ATTRIB31] [varchar](60) NULL,
	[SEGM_ATTRIB32] [varchar](60) NULL,
	[SEGM_ATTRIB33] [varchar](60) NULL,
	[SEGM_ATTRIB34] [varchar](60) NULL,
	[SEGM_ATTRIB35] [varchar](60) NULL,
	[SEGM_ATTRIB36] [varchar](60) NULL,
	[SEGM_ATTRIB37] [varchar](60) NULL,
	[SEGM_ATTRIB38] [varchar](60) NULL,
	[SEGM_ATTRIB39] [varchar](60) NULL,
	[SEGM_ATTRIB40] [varchar](60) NULL,
	[SEGM_ATTRIB41] [varchar](60) NULL,
	[SEGM_ATTRIB42] [varchar](60) NULL,
	[REF1] [varchar](1) NULL,
	[REF2] [varchar](1) NULL,
	[REF4] [varchar](1) NULL,
	[REF5] [varchar](1) NULL,
	[JGZZ_RECON_CXT] [varchar](30) NULL,
	[PRESV_FLG] [varchar](1) NULL,
	[REFRESH_FLG] [varchar](1) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_STG_GL_COD_COMBNS_KFV] PRIMARY KEY CLUSTERED 
(
	[CODE_COMBN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_CODE_COMBINATIONS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_CODE_COMBINATIONS](
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[DETAIL_POSTING_ALLOWED_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED_FLAG] [varchar](1) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE3] [varchar](25) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_FLAG] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[LEDGER_TYPE_CODE] [varchar](1) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_CODE_COMBINATIONS_KFV]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_CODE_COMBINATIONS_KFV](
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CONCATENATED_SEGMENTS] [varchar](129) NULL,
	[PADDED_CONCATENATED_SEGMENTS] [varchar](25) NULL,
	[GL_ACCOUNT_TYPE] [varchar](1) NULL,
	[GL_CONTROL_ACCOUNT] [varchar](25) NULL,
	[RECONCILIATION_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED] [varchar](1) NULL,
	[DETAIL_POSTING_ALLOWED] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_CODE_COMBINATIONS_KFV_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_CODE_COMBINATIONS_KFV_OLD](
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CONCATENATED_SEGMENTS] [varchar](129) NULL,
	[PADDED_CONCATENATED_SEGMENTS] [varchar](25) NULL,
	[GL_ACCOUNT_TYPE] [varchar](1) NULL,
	[GL_CONTROL_ACCOUNT] [varchar](25) NULL,
	[RECONCILIATION_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED] [varchar](1) NULL,
	[DETAIL_POSTING_ALLOWED] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_CODE_COMBINATIONS_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_CODE_COMBINATIONS_OLD](
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[DETAIL_POSTING_ALLOWED_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED_FLAG] [varchar](1) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE3] [varchar](25) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_FLAG] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[LEDGER_TYPE_CODE] [varchar](1) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_CODE_COMBN]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GL_CODE_COMBN](
	[CODE_COMBN_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPD_DT] [datetime2](7) NULL,
	[LAST_UPD_BY] [decimal](28, 7) NULL,
	[CHART_OF_ACCTS_ID] [decimal](15, 0) NULL,
	[DETL_POST_ALLOW_FLAG] [varchar](1) NULL,
	[DETL_BDG_ALLOWED_FLAG] [varchar](1) NULL,
	[ACCT_TYPE] [varchar](1) NULL,
	[ENBL_FLAG] [varchar](1) NULL,
	[SUMM_FLAG] [varchar](1) NULL,
	[SEGS1] [varchar](25) NULL,
	[SEGS2] [varchar](25) NULL,
	[SEGS3] [varchar](25) NULL,
	[SEGS4] [varchar](25) NULL,
	[SEGS5] [varchar](25) NULL,
	[SEGS6] [varchar](25) NULL,
	[SEGS7] [varchar](25) NULL,
	[SEGS8] [varchar](25) NULL,
	[SEGS9] [varchar](25) NULL,
	[SEGS10] [varchar](25) NULL,
	[SEGS11] [varchar](25) NULL,
	[SEGS12] [varchar](25) NULL,
	[SEGS13] [varchar](25) NULL,
	[SEGS14] [varchar](25) NULL,
	[SEGS15] [varchar](25) NULL,
	[SEGS16] [varchar](25) NULL,
	[SEGS17] [varchar](25) NULL,
	[SEGS18] [varchar](25) NULL,
	[SEGS19] [varchar](25) NULL,
	[SEGS20] [varchar](25) NULL,
	[SEGS21] [varchar](25) NULL,
	[SEGS22] [varchar](25) NULL,
	[SEGS23] [varchar](25) NULL,
	[SEGS24] [varchar](25) NULL,
	[SEGS25] [varchar](25) NULL,
	[SEGS26] [varchar](25) NULL,
	[SEGS27] [varchar](25) NULL,
	[SEGS28] [varchar](25) NULL,
	[SEGS29] [varchar](25) NULL,
	[SEGS30] [varchar](25) NULL,
	[DESC] [varchar](240) NULL,
	[TMPL_ID] [decimal](15, 0) NULL,
	[ALLOC_CRE_FLG] [varchar](1) NULL,
	[ST_DT_ACT] [datetime2](7) NULL,
	[EN_DT_ACT] [datetime2](7) NULL,
	[ATTRIB1] [varchar](150) NULL,
	[ATTRIB2] [varchar](150) NULL,
	[ATTRIB3] [varchar](150) NULL,
	[ATTRIB4] [varchar](150) NULL,
	[ATTRIB5] [varchar](150) NULL,
	[ATTRIB6] [varchar](150) NULL,
	[ATTRIB7] [varchar](150) NULL,
	[ATTRIB8] [varchar](150) NULL,
	[ATTRIB9] [varchar](150) NULL,
	[ATTRIB10] [varchar](150) NULL,
	[CTX] [varchar](150) NULL,
	[SEGS_ATTRIB1] [varchar](60) NULL,
	[SEGS_ATTRIB2] [varchar](60) NULL,
	[SEGS_ATTRIB3] [varchar](60) NULL,
	[SEGS_ATTRIB4] [varchar](60) NULL,
	[SEGS_ATTRIB5] [varchar](60) NULL,
	[SEGS_ATTRIB6] [varchar](60) NULL,
	[SEGS_ATTRIB7] [varchar](60) NULL,
	[SEGS_ATTRIB8] [varchar](60) NULL,
	[SEGS_ATTRIB9] [varchar](60) NULL,
	[SEGS_ATTRIB10] [varchar](60) NULL,
	[SEGS_ATTRIB11] [varchar](60) NULL,
	[SEGS_ATTRIB12] [varchar](60) NULL,
	[SEGS_ATTRIB13] [varchar](60) NULL,
	[SEGS_ATTRIB14] [varchar](60) NULL,
	[SEGS_ATTRIB15] [varchar](60) NULL,
	[SEGS_ATTRIB16] [varchar](60) NULL,
	[SEGS_ATTRIB17] [varchar](60) NULL,
	[SEGS_ATTRIB18] [varchar](60) NULL,
	[SEGS_ATTRIB19] [varchar](60) NULL,
	[SEGS_ATTRIB20] [varchar](60) NULL,
	[SEGS_ATTRIB21] [varchar](60) NULL,
	[SEGS_ATTRIB22] [varchar](60) NULL,
	[SEGS_ATTRIB23] [varchar](60) NULL,
	[SEGS_ATTRIB24] [varchar](60) NULL,
	[SEGS_ATTRIB25] [varchar](60) NULL,
	[SEGS_ATTRIB26] [varchar](60) NULL,
	[SEGS_ATTRIB27] [varchar](60) NULL,
	[SEGS_ATTRIB28] [varchar](60) NULL,
	[SEGS_ATTRIB29] [varchar](60) NULL,
	[SEGS_ATTRIB30] [varchar](60) NULL,
	[SEGS_ATTRIB31] [varchar](60) NULL,
	[SEGS_ATTRIB32] [varchar](60) NULL,
	[SEGS_ATTRIB33] [varchar](60) NULL,
	[SEGS_ATTRIB34] [varchar](60) NULL,
	[SEGS_ATTRIB35] [varchar](60) NULL,
	[SEGS_ATTRIB36] [varchar](60) NULL,
	[SEGS_ATTRIB37] [varchar](60) NULL,
	[SEGS_ATTRIB38] [varchar](60) NULL,
	[SEGS_ATTRIB39] [varchar](60) NULL,
	[SEGS_ATTRIB40] [varchar](60) NULL,
	[SEGS_ATTRIB41] [varchar](60) NULL,
	[SEGS_ATTRIB42] [varchar](60) NULL,
	[REF1] [varchar](1) NULL,
	[REF2] [varchar](1) NULL,
	[REF3] [varchar](25) NULL,
	[REF4] [varchar](1) NULL,
	[REF5] [varchar](1) NULL,
	[JGZZ_RECON_FLG] [varchar](1) NULL,
	[JGZZ_RECON_CTX] [varchar](30) NULL,
	[PRESV_FLG] [varchar](1) NULL,
	[REFH_FLG] [varchar](1) NULL,
	[IGI_BAL_BDG_FLG] [varchar](1) NULL,
	[CO_COST_CNTR_ORG_ID] [decimal](15, 0) NULL,
	[RV_ID] [decimal](15, 0) NULL,
	[LDGR_SEGS] [varchar](20) NULL,
	[LDGR_TYE_COD] [varchar](1) NULL,
	[ALTR_COD_COMBN_ID] [decimal](15, 0) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_GL_CODE_COMBN] PRIMARY KEY CLUSTERED 
(
	[CODE_COMBN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_JE_BATCH]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_JE_BATCH](
	[JE_BATCH_ID] [decimal](15, 0) NOT NULL,
	[LST_UPD_DT] [datetime2](7) NULL,
	[LST_UPD_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NM] [varchar](100) NULL,
	[STATS] [varchar](1) NULL,
	[STATS_VER] [varchar](1) NULL,
	[ACTL_FLG] [varchar](1) NULL,
	[DEF_EFF_DT] [datetime2](7) NULL,
	[AVG_JORNL_FLG] [varchar](1) NULL,
	[BDG_CNTRL_STATS] [varchar](1) NULL,
	[CRE_DT] [datetime2](7) NULL,
	[CREA_BY] [decimal](15, 0) NULL,
	[LST_UPD_LGN] [decimal](15, 0) NULL,
	[STATS_RESET_FLG] [varchar](1) NULL,
	[DEF_PD_NM] [varchar](15) NULL,
	[UNIQE_DT] [varchar](30) NULL,
	[EARL_POST_DT] [datetime2](7) NULL,
	[POST_DT] [datetime2](7) NULL,
	[DT_CRE] [datetime2](7) NULL,
	[DESC] [varchar](240) NULL,
	[CNTRL_TOT] [decimal](28, 7) NULL,
	[RUN_TOT_DR] [decimal](28, 7) NULL,
	[RUN_TOT_CR] [decimal](28, 7) NULL,
	[RUN_TOT_ACCT_DR] [decimal](28, 7) NULL,
	[RUN_TOT_ACCT_CR] [decimal](28, 7) NULL,
	[ATTRIB1] [varchar](150) NULL,
	[ATTRIB2] [varchar](150) NULL,
	[ATTRIB3] [varchar](150) NULL,
	[ATTRIB4] [varchar](150) NULL,
	[ATTRIB5] [varchar](150) NULL,
	[ATTRIB6] [varchar](150) NULL,
	[ATTRIB7] [varchar](150) NULL,
	[ATTRIB8] [varchar](150) NULL,
	[ATTRIB9] [varchar](150) NULL,
	[ATTRIB10] [varchar](150) NULL,
	[CTX] [varchar](150) NULL,
	[PACK_ID] [decimal](15, 0) NULL,
	[USSGL_TRANS_COD] [varchar](30) NULL,
	[CXT2] [varchar](150) NULL,
	[POST_RUN_ID] [decimal](15, 0) NULL,
	[REQ_ID] [decimal](15, 0) NULL,
	[UNRESER_PACK_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROV_STATS_COD] [varchar](1) NULL,
	[PAR_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POST_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCT_ID] [decimal](15, 0) NULL,
	[PD_SET_NM] [varchar](15) NULL,
	[ACCT_PD_TYPE] [varchar](15) NULL,
	[GRP_ID] [decimal](28, 7) NULL,
	[APPROV_EMP_ID] [decimal](15, 0) NULL,
	[GOBL_ATTRIB_CATEG] [varchar](150) NULL,
	[GOBL_ATTRIB1] [varchar](150) NULL,
	[GOBL_ATTRIB2] [varchar](150) NULL,
	[GOBL_ATTRIB3] [varchar](150) NULL,
	[GOBL_ATTRIB4] [varchar](150) NULL,
	[GOBL_ATTRIB5] [varchar](150) NULL,
	[GOBL_ATTRIB6] [varchar](150) NULL,
	[GOBL_ATTRIB7] [varchar](150) NULL,
	[GOBL_ATTRIB8] [varchar](150) NULL,
	[GOBL_ATTRIB9] [varchar](150) NULL,
	[GOBL_ATTRIB10] [varchar](150) NULL,
	[GOBL_ATTRIB11] [varchar](150) NULL,
	[GOBL_ATTRIB12] [varchar](150) NULL,
	[GOBL_ATTRIB13] [varchar](150) NULL,
	[GOBL_ATTRIB14] [varchar](150) NULL,
	[GOBL_ATTRIB15] [varchar](150) NULL,
	[GOBL_ATTRIB16] [varchar](150) NULL,
	[GOBL_ATTRIB17] [varchar](150) NULL,
	[GOBL_ATTRIB18] [varchar](150) NULL,
	[GOBL_ATTRIB19] [varchar](150) NULL,
	[GOBL_ATTRIB20] [varchar](150) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_GL_JE_BATCH] PRIMARY KEY CLUSTERED 
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_JE_BATCHES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_JE_BATCHES](
	[JE_BATCH_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NAME] [varchar](100) NULL,
	[STATUS] [varchar](1) NULL,
	[STATUS_VERIFIED] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[AVERAGE_JOURNAL_FLAG] [varchar](1) NULL,
	[BUDGETARY_CONTROL_STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[STATUS_RESET_FLAG] [varchar](1) NULL,
	[DEFAULT_PERIOD_NAME] [varchar](15) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](35, 7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[PACKET_ID] [decimal](15, 0) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[POSTING_RUN_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[UNRESERVATION_PACKET_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROVAL_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POSTED_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[GROUP_ID] [decimal](28, 7) NULL,
	[APPROVER_EMPLOYEE_ID] [decimal](15, 0) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[DW_CRE_TS] [datetime] NOT NULL CONSTRAINT [DF_GL_JE_BATCHES_DW_CRE_TS]  DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL CONSTRAINT [DF_GL_JE_BATCHES_DW_CRE_USR]  DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL CONSTRAINT [DF_GL_JE_BATCHES_DW_DEL_BIT]  DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_GL_JE_BATCHES] PRIMARY KEY CLUSTERED 
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_JE_HDRS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GL_JE_HDRS](
	[JE_HDR_ID] [decimal](15, 0) NOT NULL,
	[LST_UPD_DT] [datetime2](7) NULL,
	[LST_UPD_BY] [decimal](15, 0) NULL,
	[LDGR_ID] [decimal](15, 0) NULL,
	[JE_CATEG] [varchar](25) NULL,
	[JE_SRC] [varchar](25) NULL,
	[PR_NM] [varchar](15) NULL,
	[NM] [varchar](100) NULL,
	[CURR_CODE] [varchar](15) NULL,
	[STAT] [varchar](1) NULL,
	[DT_CRE] [datetime2](7) NULL,
	[ACCR_REV_FLG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLG] [varchar](1) NULL,
	[ACTL_FLG] [varchar](1) NULL,
	[DEFLT_EFF_DT] [datetime2](7) NULL,
	[CONN_FLG] [varchar](1) NULL,
	[CRE_DT] [datetime2](7) NULL,
	[CRE_BY] [decimal](15, 0) NULL,
	[LST_UPD_LGN] [decimal](15, 0) NULL,
	[ENCRS_TYP_ID] [decimal](15, 0) NULL,
	[BDG_VERSN_ID] [decimal](15, 0) NULL,
	[BAL_JE_FLG] [varchar](1) NULL,
	[BAL_SEG_VAL] [varchar](25) NULL,
	[JE_BTCH_ID] [decimal](15, 0) NULL,
	[FR_RECU_HDr_ID] [decimal](15, 0) NULL,
	[UNQ_DT] [varchar](30) NULL,
	[EARL_POST_DTE] [datetime2](7) NULL,
	[POST_DATE] [datetime2](7) NULL,
	[ACCR_REV_EFF_DT] [datetime2](7) NULL,
	[ACCR_REV_PR_NM] [varchar](15) NULL,
	[ACCR_REV_STAT] [varchar](1) NULL,
	[ACCR_REV_JE_HDR_ID] [decimal](15, 0) NULL,
	[ACCR_REV_CHNG_SGN_FLG] [varchar](1) NULL,
	[DESC] [varchar](240) NULL,
	[CONTROL_TOT] [decimal](28, 7) NULL,
	[RUN_TOT_DR] [decimal](28, 7) NULL,
	[RUN_TOT_CR] [decimal](28, 7) NULL,
	[RUN_TOT_ACCT_DR] [decimal](28, 7) NULL,
	[RUN_TOT_ACCT_CR] [decimal](28, 7) NULL,
	[CURR_CONVERS_RT] [decimal](28, 7) NULL,
	[CURR_CONVERS_TYE] [varchar](30) NULL,
	[CURR_CONVERS_DT] [datetime2](7) NULL,
	[EXTN_REF] [varchar](80) NULL,
	[ATTRIB1] [varchar](150) NULL,
	[ATTRIB2] [varchar](150) NULL,
	[ATTRIB3] [varchar](150) NULL,
	[ATTRIB4] [varchar](150) NULL,
	[ATTRIB5] [varchar](150) NULL,
	[ATTRIB6] [varchar](150) NULL,
	[ATTRIB7] [varchar](150) NULL,
	[ATTRIB8] [varchar](150) NULL,
	[ATTRIB9] [varchar](150) NULL,
	[ATTRIB10] [varchar](150) NULL,
	[CTX] [varchar](150) NULL,
	[GOBL_ATTRIB_CATEGORY] [varchar](30) NULL,
	[GOBL_ATTRIB1] [varchar](150) NULL,
	[GOBL_ATTRIB2] [varchar](150) NULL,
	[GOBL_ATTRIB3] [varchar](150) NULL,
	[GOBL_ATTRIB4] [varchar](150) NULL,
	[GOBL_ATTRIB5] [varchar](150) NULL,
	[GOBL_ATTRIB6] [varchar](150) NULL,
	[GOBL_ATTRIB7] [varchar](150) NULL,
	[GOBL_ATTRIB8] [varchar](150) NULL,
	[GOBL_ATTRIB9] [varchar](150) NULL,
	[GOBL_ATTRIB10] [varchar](150) NULL,
	[USSGL_TRANS_COD] [varchar](30) NULL,
	[CTX2] [varchar](150) NULL,
	[DOC_SEQ_ID] [decimal](28, 7) NULL,
	[DOC_SEQ_VAL] [decimal](28, 7) NULL,
	[JGZZ_RECON_CXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_COD] [varchar](1) NULL,
	[PAR_JE_HDR_ID] [decimal](15, 0) NULL,
	[REVR_JE_HDR_ID] [decimal](15, 0) NULL,
	[ORIG_BAL_SEG_VAL] [varchar](25) NULL,
	[INTCO_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VAL] [varchar](25) NULL,
	[CR_BAL_SEG_VAL] [varchar](25) NULL,
	[REF_DT] [datetime2](7) NULL,
	[LOC_DOC_SEQ_ID] [decimal](28, 7) NULL,
	[LOC_DOC_SEQ_VALUE] [decimal](28, 7) NULL,
	[DISP_ALC_JRNL_FLG] [varchar](1) NULL,
	[JE_FR_SLA_FLAG] [varchar](1) NULL,
	[POST_ACCT_SEQ_VERSN_ID] [decimal](28, 7) NULL,
	[POST_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POST_ACCT_SEQ_VAL] [decimal](28, 7) NULL,
	[CLS_ACCT_SEQ_VERSN_ID] [decimal](28, 7) NULL,
	[CLS_ACCT_SEQ_ASSG_ID] [decimal](28, 7) NULL,
	[CLS_ACCT_SEQ_VAL] [decimal](28, 7) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_GL_JE_HDRS] PRIMARY KEY CLUSTERED 
(
	[JE_HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_JE_HEADERS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_JE_HEADERS](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[JE_CATEGORY] [varchar](25) NULL,
	[JE_SOURCE] [varchar](25) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[NAME] [varchar](100) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[STATUS] [varchar](1) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[ACCRUAL_REV_FLAG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLAG] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[CONVERSION_FLAG] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENCUMBRANCE_TYPE_ID] [decimal](15, 0) NULL,
	[BUDGET_VERSION_ID] [decimal](15, 0) NULL,
	[BALANCED_JE_FLAG] [varchar](1) NULL,
	[BALANCING_SEGMENT_VALUE] [varchar](25) NULL,
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[FROM_RECURRING_HEADER_ID] [decimal](15, 0) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_EFFECTIVE_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_PERIOD_NAME] [varchar](15) NULL,
	[ACCRUAL_REV_STATUS] [varchar](1) NULL,
	[ACCRUAL_REV_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ACCRUAL_REV_CHANGE_SIGN_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](35, 7) NULL,
	[CURRENCY_CONVERSION_RATE] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_TYPE] [varchar](30) NULL,
	[CURRENCY_CONVERSION_DATE] [datetime2](7) NULL,
	[EXTERNAL_REFERENCE] [varchar](80) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_HEADER_ID] [decimal](15, 0) NULL,
	[REVERSED_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ORIGINATING_BAL_SEG_VALUE] [varchar](25) NULL,
	[INTERCOMPANY_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VALUE] [varchar](25) NULL,
	[CR_BAL_SEG_VALUE] [varchar](25) NULL,
	[REFERENCE_DATE] [datetime2](7) NULL,
	[LOCAL_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[LOCAL_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[DISPLAY_ALC_JOURNAL_FLAG] [varchar](1) NULL,
	[JE_FROM_SLA_FLAG] [varchar](1) NULL,
	[POSTING_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[DW_CRE_TS] [datetime] NOT NULL CONSTRAINT [DF_GL_JE_HEADERS_DW_CRE_TS]  DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL CONSTRAINT [DF_GL_JE_HEADERS_DW_CRE_USR]  DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL CONSTRAINT [DF_GL_JE_HEADERS_DW_DEL_BIT]  DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_GL_JE_HEADERS] PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_JE_LINES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_JE_LINES](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[JE_LINE_NUM] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[EFFECTIVE_DATE] [datetime2](7) NULL,
	[STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENTERED_DR] [decimal](35, 7) NULL,
	[ENTERED_CR] [decimal](35, 7) NULL,
	[ACCOUNTED_DR] [decimal](35, 7) NULL,
	[ACCOUNTED_CR] [decimal](35, 7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[REFERENCE_1] [varchar](240) NULL,
	[REFERENCE_2] [varchar](240) NULL,
	[REFERENCE_3] [varchar](240) NULL,
	[REFERENCE_4] [varchar](240) NULL,
	[REFERENCE_5] [varchar](240) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[INVOICE_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](15) NULL,
	[INVOICE_IDENTIFIER] [varchar](20) NULL,
	[INVOICE_AMOUNT] [decimal](28, 7) NULL,
	[NO1] [varchar](150) NULL,
	[STAT_AMOUNT] [decimal](28, 7) NULL,
	[IGNORE_RATE_FLAG] [varchar](1) NULL,
	[CONTEXT3] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[SUBLEDGER_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[CONTEXT4] [varchar](150) NULL,
	[SUBLEDGER_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[REFERENCE_6] [varchar](240) NULL,
	[REFERENCE_7] [varchar](240) NULL,
	[REFERENCE_8] [varchar](240) NULL,
	[REFERENCE_9] [varchar](240) NULL,
	[REFERENCE_10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[JGZZ_RECON_STATUS_11I] [varchar](1) NULL,
	[JGZZ_RECON_DATE_11I] [datetime2](7) NULL,
	[JGZZ_RECON_ID_11I] [decimal](28, 7) NULL,
	[JGZZ_RECON_REF_11I] [varchar](240) NULL,
	[JGZZ_RECON_CONTEXT_11I] [varchar](30) NULL,
	[TAXABLE_LINE_FLAG] [varchar](1) NULL,
	[TAX_TYPE_CODE] [varchar](1) NULL,
	[TAX_CODE_ID] [decimal](15, 0) NULL,
	[TAX_ROUNDING_RULE_CODE] [varchar](1) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAX_DOCUMENT_IDENTIFIER] [varchar](50) NULL,
	[TAX_DOCUMENT_DATE] [datetime2](7) NULL,
	[TAX_CUSTOMER_NAME] [varchar](240) NULL,
	[TAX_CUSTOMER_REFERENCE] [varchar](240) NULL,
	[TAX_REGISTRATION_NUMBER] [varchar](50) NULL,
	[TAX_LINE_FLAG] [varchar](1) NULL,
	[TAX_GROUP_ID] [decimal](15, 0) NULL,
	[LINE_TYPE_CODE] [varchar](20) NULL,
	[GL_SL_LINK_ID] [decimal](28, 7) NULL,
	[GL_SL_LINK_TABLE] [varchar](30) NULL,
	[CO_THIRD_PARTY] [varchar](14) NULL,
	[CO_PROCESSED_FLAG] [varchar](1) NULL,
	[DW_CRE_TS] [datetime] NOT NULL CONSTRAINT [DF_GL_JE_LINES_DW_CRE_TS]  DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL CONSTRAINT [DF_GL_JE_LINES_DW_CRE_USR]  DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL CONSTRAINT [DF_GL_JE_LINES_DW_DEL_BIT]  DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_GL_JE_LINES] PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_LEDGERS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_LEDGERS](
	[LEDGER_ID] [decimal](15, 0) NULL,
	[NAME] [varchar](30) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[LEDGER_CATEGORY_CODE] [varchar](30) NULL,
	[ALC_LEDGER_TYPE_CODE] [varchar](30) NULL,
	[OBJECT_TYPE_CODE] [varchar](1) NULL,
	[LE_LEDGER_TYPE_CODE] [varchar](1) NULL,
	[COMPLETION_STATUS_CODE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[FIRST_LEDGER_PERIOD_NAME] [varchar](15) NULL,
	[RET_EARN_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[SUSPENSE_ALLOWED_FLAG] [varchar](1) NULL,
	[ALLOW_INTERCOMPANY_POST_FLAG] [varchar](1) NULL,
	[TRACK_ROUNDING_IMBALANCE_FLAG] [varchar](1) NULL,
	[ENABLE_AVERAGE_BALANCES_FLAG] [varchar](1) NULL,
	[CUM_TRANS_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[NET_INCOME_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ROUNDING_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ENABLE_BUDGETARY_CONTROL_FLAG] [varchar](1) NULL,
	[REQUIRE_BUDGET_JOURNALS_FLAG] [varchar](1) NULL,
	[ENABLE_JE_APPROVAL_FLAG] [varchar](1) NULL,
	[ENABLE_AUTOMATIC_TAX_FLAG] [varchar](1) NULL,
	[CONSOLIDATION_LEDGER_FLAG] [varchar](1) NULL,
	[TRANSLATE_EOD_FLAG] [varchar](1) NULL,
	[TRANSLATE_QATD_FLAG] [varchar](1) NULL,
	[TRANSLATE_YATD_FLAG] [varchar](1) NULL,
	[TRANSACTION_CALENDAR_ID] [decimal](15, 0) NULL,
	[DAILY_TRANSLATION_RATE_TYPE] [varchar](30) NULL,
	[AUTOMATICALLY_CREATED_FLAG] [varchar](1) NULL,
	[BAL_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[BAL_SEG_COLUMN_NAME] [varchar](25) NULL,
	[MGT_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[MGT_SEG_COLUMN_NAME] [varchar](25) NULL,
	[BAL_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[IMPLICIT_ACCESS_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUTURE_ENTERABLE_PERIODS_LIMIT] [decimal](15, 0) NULL,
	[LEDGER_ATTRIBUTES] [varchar](2000) NULL,
	[IMPLICIT_LEDGER_SET_ID] [decimal](15, 0) NULL,
	[LATEST_OPENED_PERIOD_NAME] [varchar](15) NULL,
	[LATEST_ENCUMBRANCE_YEAR] [decimal](15, 0) NULL,
	[PERIOD_AVERAGE_RATE_TYPE] [varchar](30) NULL,
	[PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_AVG_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_CODE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_TYPE] [varchar](1) NULL,
	[SLA_DESCRIPTION_LANGUAGE] [varchar](15) NULL,
	[SLA_ENTERED_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQUENCING_FLAG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDGER_CURR_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENABLE_SECONDARY_TRACK_FLAG] [varchar](1) NULL,
	[ENABLE_REVAL_SS_TRACK_FLAG] [varchar](1) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTEXT] [varchar](150) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ENABLE_RECONCILIATION_FLAG] [varchar](1) NULL,
	[CREATE_JE_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CASH_BASIS_FLAG] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[COMMITMENT_BUDGET_FLAG] [varchar](1) NULL,
	[NET_CLOSING_BAL_FLAG] [varchar](1) NULL,
	[AUTOMATE_SEC_JRNL_REV_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_LEDGERS_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_LEDGERS_OLD](
	[LEDGER_ID] [decimal](15, 0) NULL,
	[NAME] [varchar](30) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[LEDGER_CATEGORY_CODE] [varchar](30) NULL,
	[ALC_LEDGER_TYPE_CODE] [varchar](30) NULL,
	[OBJECT_TYPE_CODE] [varchar](1) NULL,
	[LE_LEDGER_TYPE_CODE] [varchar](1) NULL,
	[COMPLETION_STATUS_CODE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[FIRST_LEDGER_PERIOD_NAME] [varchar](15) NULL,
	[RET_EARN_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[SUSPENSE_ALLOWED_FLAG] [varchar](1) NULL,
	[ALLOW_INTERCOMPANY_POST_FLAG] [varchar](1) NULL,
	[TRACK_ROUNDING_IMBALANCE_FLAG] [varchar](1) NULL,
	[ENABLE_AVERAGE_BALANCES_FLAG] [varchar](1) NULL,
	[CUM_TRANS_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[NET_INCOME_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ROUNDING_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ENABLE_BUDGETARY_CONTROL_FLAG] [varchar](1) NULL,
	[REQUIRE_BUDGET_JOURNALS_FLAG] [varchar](1) NULL,
	[ENABLE_JE_APPROVAL_FLAG] [varchar](1) NULL,
	[ENABLE_AUTOMATIC_TAX_FLAG] [varchar](1) NULL,
	[CONSOLIDATION_LEDGER_FLAG] [varchar](1) NULL,
	[TRANSLATE_EOD_FLAG] [varchar](1) NULL,
	[TRANSLATE_QATD_FLAG] [varchar](1) NULL,
	[TRANSLATE_YATD_FLAG] [varchar](1) NULL,
	[TRANSACTION_CALENDAR_ID] [decimal](15, 0) NULL,
	[DAILY_TRANSLATION_RATE_TYPE] [varchar](30) NULL,
	[AUTOMATICALLY_CREATED_FLAG] [varchar](1) NULL,
	[BAL_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[BAL_SEG_COLUMN_NAME] [varchar](25) NULL,
	[MGT_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[MGT_SEG_COLUMN_NAME] [varchar](25) NULL,
	[BAL_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[IMPLICIT_ACCESS_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUTURE_ENTERABLE_PERIODS_LIMIT] [decimal](15, 0) NULL,
	[LEDGER_ATTRIBUTES] [varchar](2000) NULL,
	[IMPLICIT_LEDGER_SET_ID] [decimal](15, 0) NULL,
	[LATEST_OPENED_PERIOD_NAME] [varchar](15) NULL,
	[LATEST_ENCUMBRANCE_YEAR] [decimal](15, 0) NULL,
	[PERIOD_AVERAGE_RATE_TYPE] [varchar](30) NULL,
	[PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_AVG_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_CODE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_TYPE] [varchar](1) NULL,
	[SLA_DESCRIPTION_LANGUAGE] [varchar](15) NULL,
	[SLA_ENTERED_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQUENCING_FLAG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDGER_CURR_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENABLE_SECONDARY_TRACK_FLAG] [varchar](1) NULL,
	[ENABLE_REVAL_SS_TRACK_FLAG] [varchar](1) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTEXT] [varchar](150) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ENABLE_RECONCILIATION_FLAG] [varchar](1) NULL,
	[CREATE_JE_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CASH_BASIS_FLAG] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[COMMITMENT_BUDGET_FLAG] [varchar](1) NULL,
	[NET_CLOSING_BAL_FLAG] [varchar](1) NULL,
	[AUTOMATE_SEC_JRNL_REV_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_LEDR]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_LEDR](
	[LEDR_ID] [decimal](15, 0) NOT NULL,
	[NM] [varchar](30) NULL,
	[SHORT_NM] [varchar](20) NULL,
	[DESC] [varchar](240) NULL,
	[LEDR_CATEG_COD] [varchar](30) NULL,
	[ALC_LEDR_TYP_COD] [varchar](30) NULL,
	[OBJ_TYP_COD] [varchar](1) NULL,
	[LE_LEDR_TYP_COD] [varchar](1) NULL,
	[COMPL_STAT_COD] [varchar](30) NULL,
	[CONFIG_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCT_ID] [decimal](15, 0) NULL,
	[CURR_COD] [varchar](15) NULL,
	[PD_SET_NM] [varchar](15) NULL,
	[ACCT_PD_TYP] [varchar](15) NULL,
	[FST_LEDR_PERIOD_NM] [varchar](15) NULL,
	[RET_EARN_COD_COMBN_ID] [decimal](15, 0) NULL,
	[SUSPN_ALLOW_FLG] [varchar](1) NULL,
	[ALLOW_INTCOMP_POST_FLG] [varchar](1) NULL,
	[TRACK_ROUND_IMBA_FLG] [varchar](1) NULL,
	[ENBL_AVG_BALANCES_FLG] [varchar](1) NULL,
	[CUM_TRANS_COD_COMBN_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_COD_COMBN_ID] [decimal](15, 0) NULL,
	[NET_INCOME_COD_COMBN_ID] [decimal](15, 0) NULL,
	[ROUND_COD_COMBN_ID] [decimal](15, 0) NULL,
	[ENBL_BDG_CNTL_FLG] [varchar](1) NULL,
	[REQ_BDG_JORNL_FLG] [varchar](1) NULL,
	[ENBL_JE_APPROV_FLG] [varchar](1) NULL,
	[ENBL_AUTO_TAX_FLG] [varchar](1) NULL,
	[CONSOL_LEDR_FLG] [varchar](1) NULL,
	[TRANS_EOD_FLG] [varchar](1) NULL,
	[TRANS_QATD_FLG] [varchar](1) NULL,
	[TRANS_YATD_FLG] [varchar](1) NULL,
	[TRANS_CAL_ID] [decimal](15, 0) NULL,
	[DAILY_TRANS_RAT_TYP] [varchar](30) NULL,
	[AUTO_CRE_FLG] [varchar](1) NULL,
	[BAL_SEG_VAL_OPT_COD] [varchar](1) NULL,
	[BAL_SEG_COL_NM] [varchar](25) NULL,
	[MGT_SEG_VAL_OPT_COD] [varchar](1) NULL,
	[MGT_SEG_COL_NM] [varchar](25) NULL,
	[BAL_SEG_VAL_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VAL_SET_ID] [decimal](10, 0) NULL,
	[IMPLI_ACC_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUT_ENTBE_PD_LMT] [decimal](15, 0) NULL,
	[LEDR_ATTRIB] [varchar](2000) NULL,
	[IMPL_LEDR_SET_ID] [decimal](15, 0) NULL,
	[LST_OPENED_PD_NM] [varchar](15) NULL,
	[LST_ENCRS_YR] [decimal](15, 0) NULL,
	[PD_AVG_RATE_TYP] [varchar](30) NULL,
	[PD_END_RATE_TYP] [varchar](30) NULL,
	[BDG_PD_AVG_RATE_TYP] [varchar](30) NULL,
	[BDG_PD_END_RATE_TYP] [varchar](30) NULL,
	[SLA_ACCT_METHOD_COD] [varchar](30) NULL,
	[SLA_ACCT_METHOD_TYP] [varchar](1) NULL,
	[SLA_DESCR_LANG] [varchar](15) NULL,
	[SLA_ENT_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQ_FLG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDR_CURR_FLG] [varchar](1) NULL,
	[SLA_LEDR_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENBL_SEC_TRACK_FLG] [varchar](1) NULL,
	[ENBL_REVAL_SS_TRACK_FLG] [varchar](1) NULL,
	[LST_UPD_DT] [datetime2](7) NULL,
	[LST_UPD_BY] [decimal](15, 0) NULL,
	[CRE_DT] [datetime2](7) NULL,
	[CRE_BY] [decimal](15, 0) NULL,
	[LST_UPD_LGN] [decimal](15, 0) NULL,
	[CTX] [varchar](150) NULL,
	[ATTRIB1] [varchar](150) NULL,
	[ATTRIB2] [varchar](150) NULL,
	[ATTRIB3] [varchar](150) NULL,
	[ATTRIB4] [varchar](150) NULL,
	[ATTRIB5] [varchar](150) NULL,
	[ATTRIB6] [varchar](150) NULL,
	[ATTRIB7] [varchar](150) NULL,
	[ATTRIB8] [varchar](150) NULL,
	[ATTRIB9] [varchar](150) NULL,
	[ATTRIB10] [varchar](150) NULL,
	[ATTRIB11] [varchar](150) NULL,
	[ATTRIB12] [varchar](150) NULL,
	[ATTRIB13] [varchar](150) NULL,
	[ATTRIB14] [varchar](150) NULL,
	[ATTRIB15] [varchar](150) NULL,
	[ENBL_RECO_FLG] [varchar](1) NULL,
	[CRE_JE_FLG] [varchar](1) NULL,
	[SLA_LEDR_CASH_BASIS_FLG] [varchar](1) NULL,
	[COMPLE_FLG] [varchar](1) NULL,
	[COMMITMENT_BDG_FLG] [varchar](1) NULL,
	[NET_CLOSE_BAL_FLG] [varchar](1) NULL,
	[AUTO_SEC_JRNL_REV_FLG] [varchar](1) NULL,
	[DW_CRE_TS] [datetime] NOT NULL DEFAULT (getdate()),
	[DW_CRE_USR] [varchar](50) NOT NULL DEFAULT (user_name()),
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL DEFAULT ((0)),
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_STG_GL_LEDRS] PRIMARY KEY CLUSTERED 
(
	[LEDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEIN_ZBB_COST_CENTER_ACTUALS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEIN_ZBB_COST_CENTER_ACTUALS](
	[COST_CENTER_CODE] [varchar](100) NULL,
	[ACCOUNTS] [varchar](100) NULL,
	[CURRENCY] [varchar](50) NULL,
	[PERIOD] [varchar](15) NULL,
	[ACTUAL_TOTAL] [decimal](12, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEIN_ZBB_COST_CENTER_MASTER]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEIN_ZBB_COST_CENTER_MASTER](
	[COST_CENTER_CODE] [varchar](250) NULL,
	[COST_CENTER_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_FLAG] [varchar](1) NULL,
	[LOCAL_CURRENCY] [varchar](3) NULL,
	[ATTRIBUTE1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEIN_ZBB_COST_CENTER_MASTER_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEIN_ZBB_COST_CENTER_MASTER_OLD](
	[COST_CENTER_CODE] [varchar](250) NULL,
	[COST_CENTER_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_FLAG] [varchar](1) NULL,
	[LOCAL_CURRENCY] [varchar](3) NULL,
	[ATTRIBUTE1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEIN_ZBB_ION_ACTUAL_DATA]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEIN_ZBB_ION_ACTUAL_DATA](
	[ION_CODE] [varchar](100) NULL,
	[ACCOUNTS] [varchar](100) NULL,
	[CURRENCY] [varchar](50) NULL,
	[PERIOD] [varchar](15) NULL,
	[ION_MAPPING] [varchar](400) NULL,
	[ACTUAL_TOTAL] [decimal](12, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEIN_ZBB_ION_MASTER]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEIN_ZBB_ION_MASTER](
	[ION_CODE] [varchar](250) NULL,
	[ION_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_ION] [varchar](1) NULL,
	[ADV_ACTIVE_ION] [varchar](1) NULL,
	[VAP_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[COGS_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[ION_CURRENCY] [varchar](3) NULL,
	[ION_MAPPING] [varchar](250) NULL,
	[ATTRIBUTE1] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEIN_ZBB_ION_MASTER_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEIN_ZBB_ION_MASTER_OLD](
	[ION_CODE] [varchar](250) NULL,
	[ION_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_ION] [varchar](1) NULL,
	[ADV_ACTIVE_ION] [varchar](1) NULL,
	[VAP_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[COGS_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[ION_CURRENCY] [varchar](3) NULL,
	[ION_MAPPING] [varchar](250) NULL,
	[ATTRIBUTE1] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] NULL,
	[LastName] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonID] [int] NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persons1]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons1](
	[PersonID] [int] NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_GL_JE_BATCHES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_GL_JE_BATCHES](
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NAME] [varchar](100) NULL,
	[STATUS] [varchar](1) NULL,
	[STATUS_VERIFIED] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[AVERAGE_JOURNAL_FLAG] [varchar](1) NULL,
	[BUDGETARY_CONTROL_STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[STATUS_RESET_FLAG] [varchar](1) NULL,
	[DEFAULT_PERIOD_NAME] [varchar](15) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[PACKET_ID] [decimal](15, 0) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[POSTING_RUN_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[UNRESERVATION_PACKET_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROVAL_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POSTED_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[GROUP_ID] [decimal](28, 7) NULL,
	[APPROVER_EMPLOYEE_ID] [decimal](15, 0) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_CFS_GSV_AND_FREEFOODGSV]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_CFS_GSV_AND_FREEFOODGSV](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PERIOD_NAME] [varchar](50) NULL,
	[CUSTOMER_CODE] [varchar](30) NULL,
	[PACK_SIZE] [varchar](40) NULL,
	[SKU_CODE] [varchar](40) NULL,
	[INVOICED_CASES] [decimal](28, 7) NULL,
	[INVOICED_KGS] [decimal](28, 7) NULL,
	[ITEM_MRP] [decimal](28, 7) NULL,
	[RTM] [decimal](28, 7) NULL,
	[DTM] [decimal](28, 7) NULL,
	[ISLST] [decimal](28, 7) NULL,
	[TRUE_MRP] [decimal](28, 7) NULL,
	[GST] [decimal](28, 7) NULL,
	[DISCOUNT] [decimal](28, 7) NULL,
	[OUTPACK_FREEFOOD_CASES] [decimal](28, 7) NULL,
	[OUTPACK_FREEFOOD_KILOS] [decimal](28, 7) NULL,
	[FREEFOOD_DEDUCTION_RATIO] [decimal](28, 7) NULL,
	[FREE_FOOD_DEDUCTION] [decimal](28, 7) NULL,
	[PRIMARY_GSV] [decimal](28, 7) NULL,
	[INPACK_FREEFOOD_GSV] [decimal](28, 7) NULL,
	[OUTPACK_FREEFOOD_GSV] [decimal](28, 7) NULL,
	[ALLOCATED_AMNT] [decimal](28, 7) NULL,
	[FINAL_GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_CFS_GSV_AND_FREEFOODGSV_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_CFS_GSV_AND_FREEFOODGSV_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PERIOD_NAME] [varchar](50) NULL,
	[CUSTOMER_CODE] [varchar](30) NULL,
	[PACK_SIZE] [varchar](40) NULL,
	[SKU_CODE] [varchar](40) NULL,
	[INVOICED_CASES] [decimal](28, 7) NULL,
	[INVOICED_KGS] [decimal](28, 7) NULL,
	[ITEM_MRP] [decimal](28, 7) NULL,
	[RTM] [decimal](28, 7) NULL,
	[DTM] [decimal](28, 7) NULL,
	[ISLST] [decimal](28, 7) NULL,
	[TRUE_MRP] [decimal](28, 7) NULL,
	[GST] [decimal](28, 7) NULL,
	[DISCOUNT] [decimal](28, 7) NULL,
	[OUTPACK_FREEFOOD_CASES] [decimal](28, 7) NULL,
	[OUTPACK_FREEFOOD_KILOS] [decimal](28, 7) NULL,
	[FREEFOOD_DEDUCTION_RATIO] [decimal](28, 7) NULL,
	[FREE_FOOD_DEDUCTION] [decimal](28, 7) NULL,
	[PRIMARY_GSV] [decimal](28, 7) NULL,
	[INPACK_FREEFOOD_GSV] [decimal](28, 7) NULL,
	[OUTPACK_FREEFOOD_GSV] [decimal](28, 7) NULL,
	[ALLOCATED_AMNT] [decimal](28, 7) NULL,
	[FINAL_GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_CFS_MARKETING_ALLOW]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_CFS_MARKETING_ALLOW](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PERIOD_NAME] [varchar](50) NULL,
	[PRODUCT_CLASS] [varchar](50) NULL,
	[CHANNEL] [varchar](30) NULL,
	[PACK_FORMAT] [varchar](30) NULL,
	[CUSTOMER_CODE] [varchar](30) NULL,
	[SKU_CODE] [varchar](40) NULL,
	[PARTY_NAME] [varchar](360) NULL,
	[GSV] [decimal](28, 7) NULL,
	[MARKETING_ALLOWANCE] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_CFS_MARKETING_ALLOW_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_CFS_MARKETING_ALLOW_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PERIOD_NAME] [varchar](50) NULL,
	[PRODUCT_CLASS] [varchar](50) NULL,
	[CHANNEL] [varchar](30) NULL,
	[PACK_FORMAT] [varchar](30) NULL,
	[CUSTOMER_CODE] [varchar](30) NULL,
	[SKU_CODE] [varchar](40) NULL,
	[PARTY_NAME] [varchar](360) NULL,
	[GSV] [decimal](28, 7) NULL,
	[MARKETING_ALLOWANCE] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_CUSTOMER_MASTER]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_CUSTOMER_MASTER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CUSTOMER_CODE] [varchar](30) NULL,
	[CUSTOMER_NAME] [varchar](360) NULL,
	[BUSINESS_UNIT] [varchar](13) NULL,
	[BU_REGION] [varchar](12) NULL,
	[COUNTRY] [varchar](150) NULL,
	[C_REGION] [varchar](150) NULL,
	[CHANNEL] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](150) NULL,
	[STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_CUSTOMER_MASTER_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_CUSTOMER_MASTER_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CUSTOMER_CODE] [varchar](30) NULL,
	[CUSTOMER_NAME] [varchar](360) NULL,
	[BUSINESS_UNIT] [varchar](13) NULL,
	[BU_REGION] [varchar](12) NULL,
	[COUNTRY] [varchar](150) NULL,
	[C_REGION] [varchar](150) NULL,
	[CHANNEL] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](150) NULL,
	[STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_GL_MASTER]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_GL_MASTER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[GL_ACCOUNT] [varchar](150) NULL,
	[GL_DESC] [varchar](240) NULL,
	[COMPANY] [varchar](4) NULL,
	[COUNTRY] [varchar](2) NULL,
	[CURRENCY] [varchar](3) NULL,
	[P/L A/C] [varchar](1) NULL,
	[Balance Sheet A/C] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_GL_MASTER_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_GL_MASTER_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[GL_ACCOUNT] [varchar](150) NULL,
	[GL_DESC] [varchar](240) NULL,
	[COMPANY] [varchar](4) NULL,
	[COUNTRY] [varchar](2) NULL,
	[CURRENCY] [varchar](3) NULL,
	[P/L A/C] [varchar](1) NULL,
	[Balance Sheet A/C] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_GL_TRANSACTIONS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_GL_TRANSACTIONS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[FILE_TYPE] [varchar](3) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[SEGMENTS] [varchar](21) NULL,
	[BEGINING_BALANCE] [decimal](28, 7) NULL,
	[PERIOD_DR] [decimal](28, 7) NULL,
	[PERIOD_CR] [decimal](28, 7) NULL,
	[END_BAL_H] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_GL_TRANSACTIONS_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_GL_TRANSACTIONS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[FILE_TYPE] [varchar](3) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[SEGMENTS] [varchar](21) NULL,
	[BEGINING_BALANCE] [decimal](28, 7) NULL,
	[PERIOD_DR] [decimal](28, 7) NULL,
	[PERIOD_CR] [decimal](28, 7) NULL,
	[END_BAL_H] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_PRODUCT_MASTER]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_PRODUCT_MASTER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SKU] [varchar](40) NULL,
	[SKU_DESC] [varchar](240) NULL,
	[BU_SPLIT] [varchar](8) NULL,
	[ITEM_CATG] [varchar](9) NULL,
	[SUB_CATG] [varchar](40) NULL,
	[MKT_SEG] [varchar](100) NULL,
	[BRAND] [varchar](100) NULL,
	[BRAND_CODE] [varchar](40) NULL,
	[SUB_BRAND] [varchar](150) NULL,
	[PACK_SIZE] [varchar](2) NULL,
	[PACK_SIZE_CODE] [varchar](4) NULL,
	[PACK_FORMAT] [varchar](10) NULL,
	[SKU_LENGTH] [decimal](28, 7) NULL,
	[SKU_WIDTH] [decimal](28, 7) NULL,
	[SKU_HEIGHT] [decimal](28, 7) NULL,
	[VOLUME] [decimal](28, 7) NULL,
	[STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_PRODUCT_MASTER_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_PRODUCT_MASTER_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SKU] [varchar](40) NULL,
	[SKU_DESC] [varchar](240) NULL,
	[BU_SPLIT] [varchar](8) NULL,
	[ITEM_CATG] [varchar](9) NULL,
	[SUB_CATG] [varchar](40) NULL,
	[MKT_SEG] [varchar](100) NULL,
	[BRAND] [varchar](100) NULL,
	[BRAND_CODE] [varchar](40) NULL,
	[SUB_BRAND] [varchar](150) NULL,
	[PACK_SIZE] [varchar](2) NULL,
	[PACK_SIZE_CODE] [varchar](4) NULL,
	[PACK_FORMAT] [varchar](10) NULL,
	[SKU_LENGTH] [decimal](28, 7) NULL,
	[SKU_WIDTH] [decimal](28, 7) NULL,
	[SKU_HEIGHT] [decimal](28, 7) NULL,
	[VOLUME] [decimal](28, 7) NULL,
	[STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_UNSALABLE_DATA]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_UNSALABLE_DATA](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[VENDOR_NUMBER] [varchar](30) NULL,
	[PACK_SIZE] [varchar](25) NULL,
	[AMOUNT] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XXKIN_UNSALABLE_DATA_OLD]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XXKIN_UNSALABLE_DATA_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[VENDOR_NUMBER] [varchar](30) NULL,
	[PACK_SIZE] [varchar](25) NULL,
	[AMOUNT] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EBS_GSV_DATA]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EBS_GSV_DATA](
	[BUSINESS_ENTITY] [varchar](12) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[ITEM] [varchar](40) NULL,
	[GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EBS_GSV_SRC2STG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EBS_GSV_SRC2STG](
	[BUSINESS_ENTITY] [varchar](12) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[ITEM] [varchar](40) NULL,
	[GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[GG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GG](
	[PERIOD_NAME] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[GSV]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GSV](
	[BUSINESS_ENTITY] [varchar](12) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[STATE] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[ITEM] [varchar](40) NULL,
	[GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[GSV_PRIMARY]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GSV_PRIMARY](
	[BUSINESS_ENTITY] [varchar](12) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[STATE] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[ITEM] [varchar](40) NULL,
	[GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[GSV_PRIMARY_SALES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GSV_PRIMARY_SALES](
	[GSV] [decimal](28, 7) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[CUSTCODE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HZ_CUST_ACCOUNTS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HZ_CUST_ACCOUNTS](
	[CUST_ACCOUNT_ID] [decimal](15, 0) NOT NULL,
	[PARTY_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[ACCOUNT_NUMBER] [varchar](30) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[ORIG_SYSTEM_REFERENCE] [varchar](240) NULL,
	[STATUS] [varchar](1) NULL,
	[CUSTOMER_TYPE] [varchar](30) NULL,
	[CUSTOMER_CLASS_CODE] [varchar](30) NULL,
	[PRIMARY_SALESREP_ID] [decimal](15, 0) NULL,
	[SALES_CHANNEL_CODE] [varchar](30) NULL,
	[ORDER_TYPE_ID] [decimal](15, 0) NULL,
	[PRICE_LIST_ID] [decimal](15, 0) NULL,
	[SUBCATEGORY_CODE] [varchar](30) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[FOB_POINT] [varchar](30) NULL,
	[FREIGHT_TERM] [varchar](30) NULL,
	[SHIP_PARTIAL] [varchar](1) NULL,
	[SHIP_VIA] [varchar](30) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[TAX_HEADER_LEVEL_FLAG] [varchar](1) NULL,
	[TAX_ROUNDING_RULE] [varchar](30) NULL,
	[COTERMINATE_DAY_MONTH] [varchar](6) NULL,
	[PRIMARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[SECONDARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[ACCOUNT_LIABLE_FLAG] [varchar](1) NULL,
	[RESTRICTION_LIMIT_AMOUNT] [decimal](28, 7) NULL,
	[CURRENT_BALANCE] [decimal](28, 7) NULL,
	[PASSWORD_TEXT] [varchar](60) NULL,
	[HIGH_PRIORITY_INDICATOR] [varchar](1) NULL,
	[ACCOUNT_ESTABLISHED_DATE] [datetime2](7) NULL,
	[ACCOUNT_TERMINATION_DATE] [datetime2](7) NULL,
	[ACCOUNT_ACTIVATION_DATE] [datetime2](7) NULL,
	[CREDIT_CLASSIFICATION_CODE] [varchar](30) NULL,
	[DEPARTMENT] [varchar](30) NULL,
	[MAJOR_ACCOUNT_NUMBER] [varchar](30) NULL,
	[HOTWATCH_SERVICE_FLAG] [varchar](1) NULL,
	[HOTWATCH_SVC_BAL_IND] [varchar](30) NULL,
	[HELD_BILL_EXPIRATION_DATE] [datetime2](7) NULL,
	[HOLD_BILL_FLAG] [varchar](1) NULL,
	[HIGH_PRIORITY_REMARKS] [varchar](80) NULL,
	[PO_EFFECTIVE_DATE] [datetime2](7) NULL,
	[PO_EXPIRATION_DATE] [datetime2](7) NULL,
	[REALTIME_RATE_FLAG] [varchar](1) NULL,
	[SINGLE_USER_FLAG] [varchar](1) NULL,
	[WATCH_ACCOUNT_FLAG] [varchar](1) NULL,
	[WATCH_BALANCE_INDICATOR] [varchar](1) NULL,
	[GEO_CODE] [varchar](30) NULL,
	[ACCT_LIFE_CYCLE_STATUS] [varchar](30) NULL,
	[ACCOUNT_NAME] [varchar](240) NULL,
	[DEPOSIT_REFUND_METHOD] [varchar](20) NULL,
	[DORMANT_ACCOUNT_FLAG] [varchar](1) NULL,
	[NPA_NUMBER] [varchar](60) NULL,
	[PIN_NUMBER] [decimal](16, 0) NULL,
	[SUSPENSION_DATE] [datetime2](7) NULL,
	[WRITE_OFF_ADJUSTMENT_AMOUNT] [decimal](28, 7) NULL,
	[WRITE_OFF_PAYMENT_AMOUNT] [decimal](28, 7) NULL,
	[WRITE_OFF_AMOUNT] [decimal](28, 7) NULL,
	[SOURCE_CODE] [varchar](150) NULL,
	[COMPETITOR_TYPE] [varchar](150) NULL,
	[COMMENTS] [varchar](240) NULL,
	[DATES_NEGATIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATES_POSITIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATE_TYPE_PREFERENCE] [varchar](20) NULL,
	[OVER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[OVER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[ITEM_CROSS_REF_PREF] [varchar](30) NULL,
	[SHIP_SETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[ARRIVALSETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[SCHED_DATE_PUSH_FLAG] [varchar](1) NULL,
	[INVOICE_QUANTITY_RULE] [varchar](30) NULL,
	[PRICING_EVENT] [varchar](30) NULL,
	[ACCOUNT_REPLICATION_KEY] [decimal](15, 0) NULL,
	[STATUS_UPDATE_DATE] [datetime2](7) NULL,
	[AUTOPAY_FLAG] [varchar](1) NULL,
	[NOTIFY_FLAG] [varchar](1) NULL,
	[LAST_BATCH_ID] [decimal](28, 7) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[CREATED_BY_MODULE] [varchar](150) NULL,
	[APPLICATION_ID] [decimal](28, 7) NULL,
	[SELLING_PARTY_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[CUST_ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HZ_CUST_ACCOUNTS_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HZ_CUST_ACCOUNTS_ALL](
	[CUST_ACCOUNT_ID] [decimal](15, 0) NULL,
	[PARTY_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[ACCOUNT_NUMBER] [varchar](30) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[ORIG_SYSTEM_REFERENCE] [varchar](240) NULL,
	[STATUS] [varchar](1) NULL,
	[CUSTOMER_TYPE] [varchar](30) NULL,
	[CUSTOMER_CLASS_CODE] [varchar](30) NULL,
	[PRIMARY_SALESREP_ID] [decimal](15, 0) NULL,
	[SALES_CHANNEL_CODE] [varchar](30) NULL,
	[ORDER_TYPE_ID] [decimal](15, 0) NULL,
	[PRICE_LIST_ID] [decimal](15, 0) NULL,
	[SUBCATEGORY_CODE] [varchar](30) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[FOB_POINT] [varchar](30) NULL,
	[FREIGHT_TERM] [varchar](30) NULL,
	[SHIP_PARTIAL] [varchar](1) NULL,
	[SHIP_VIA] [varchar](30) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[TAX_HEADER_LEVEL_FLAG] [varchar](1) NULL,
	[TAX_ROUNDING_RULE] [varchar](30) NULL,
	[COTERMINATE_DAY_MONTH] [varchar](6) NULL,
	[PRIMARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[SECONDARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[ACCOUNT_LIABLE_FLAG] [varchar](1) NULL,
	[RESTRICTION_LIMIT_AMOUNT] [decimal](28, 7) NULL,
	[CURRENT_BALANCE] [decimal](28, 7) NULL,
	[PASSWORD_TEXT] [varchar](60) NULL,
	[HIGH_PRIORITY_INDICATOR] [varchar](1) NULL,
	[ACCOUNT_ESTABLISHED_DATE] [datetime2](7) NULL,
	[ACCOUNT_TERMINATION_DATE] [datetime2](7) NULL,
	[ACCOUNT_ACTIVATION_DATE] [datetime2](7) NULL,
	[CREDIT_CLASSIFICATION_CODE] [varchar](30) NULL,
	[DEPARTMENT] [varchar](30) NULL,
	[MAJOR_ACCOUNT_NUMBER] [varchar](30) NULL,
	[HOTWATCH_SERVICE_FLAG] [varchar](1) NULL,
	[HOTWATCH_SVC_BAL_IND] [varchar](30) NULL,
	[HELD_BILL_EXPIRATION_DATE] [datetime2](7) NULL,
	[HOLD_BILL_FLAG] [varchar](1) NULL,
	[HIGH_PRIORITY_REMARKS] [varchar](80) NULL,
	[PO_EFFECTIVE_DATE] [datetime2](7) NULL,
	[PO_EXPIRATION_DATE] [datetime2](7) NULL,
	[REALTIME_RATE_FLAG] [varchar](1) NULL,
	[SINGLE_USER_FLAG] [varchar](1) NULL,
	[WATCH_ACCOUNT_FLAG] [varchar](1) NULL,
	[WATCH_BALANCE_INDICATOR] [varchar](1) NULL,
	[GEO_CODE] [varchar](30) NULL,
	[ACCT_LIFE_CYCLE_STATUS] [varchar](30) NULL,
	[ACCOUNT_NAME] [varchar](240) NULL,
	[DEPOSIT_REFUND_METHOD] [varchar](20) NULL,
	[DORMANT_ACCOUNT_FLAG] [varchar](1) NULL,
	[NPA_NUMBER] [varchar](60) NULL,
	[PIN_NUMBER] [decimal](16, 0) NULL,
	[SUSPENSION_DATE] [datetime2](7) NULL,
	[WRITE_OFF_ADJUSTMENT_AMOUNT] [decimal](28, 7) NULL,
	[WRITE_OFF_PAYMENT_AMOUNT] [decimal](28, 7) NULL,
	[WRITE_OFF_AMOUNT] [decimal](28, 7) NULL,
	[SOURCE_CODE] [varchar](150) NULL,
	[COMPETITOR_TYPE] [varchar](150) NULL,
	[COMMENTS] [varchar](240) NULL,
	[DATES_NEGATIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATES_POSITIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATE_TYPE_PREFERENCE] [varchar](20) NULL,
	[OVER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[OVER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[ITEM_CROSS_REF_PREF] [varchar](30) NULL,
	[SHIP_SETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[ARRIVALSETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[SCHED_DATE_PUSH_FLAG] [varchar](1) NULL,
	[INVOICE_QUANTITY_RULE] [varchar](30) NULL,
	[PRICING_EVENT] [varchar](30) NULL,
	[ACCOUNT_REPLICATION_KEY] [decimal](15, 0) NULL,
	[STATUS_UPDATE_DATE] [datetime2](7) NULL,
	[AUTOPAY_FLAG] [varchar](1) NULL,
	[NOTIFY_FLAG] [varchar](1) NULL,
	[LAST_BATCH_ID] [decimal](28, 7) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[CREATED_BY_MODULE] [varchar](150) NULL,
	[APPLICATION_ID] [decimal](28, 7) NULL,
	[SELLING_PARTY_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HZ_CUST_ACCT_SITES_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HZ_CUST_ACCT_SITES_ALL](
	[CUST_ACCT_SITE_ID] [decimal](15, 0) NOT NULL,
	[CUST_ACCOUNT_ID] [decimal](15, 0) NULL,
	[PARTY_SITE_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[ORIG_SYSTEM_REFERENCE] [varchar](240) NULL,
	[STATUS] [varchar](1) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[BILL_TO_FLAG] [varchar](1) NULL,
	[MARKET_FLAG] [varchar](1) NULL,
	[SHIP_TO_FLAG] [varchar](1) NULL,
	[CUSTOMER_CATEGORY_CODE] [varchar](30) NULL,
	[LANGUAGE] [varchar](4) NULL,
	[KEY_ACCOUNT_FLAG] [varchar](1) NULL,
	[TP_HEADER_ID] [decimal](28, 7) NULL,
	[ECE_TP_LOCATION_CODE] [varchar](40) NULL,
	[SERVICE_TERRITORY_ID] [decimal](15, 0) NULL,
	[PRIMARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[SECONDARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[TERRITORY_ID] [decimal](15, 0) NULL,
	[ADDRESS_TEXT] [varchar](255) NULL,
	[TERRITORY] [varchar](30) NULL,
	[TRANSLATED_CUSTOMER_NAME] [varchar](50) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[CREATED_BY_MODULE] [varchar](150) NULL,
	[APPLICATION_ID] [decimal](28, 7) NULL,
PRIMARY KEY CLUSTERED 
(
	[CUST_ACCT_SITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HZ_CUST_SITE_USES_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HZ_CUST_SITE_USES_ALL](
	[SITE_USE_ID] [decimal](15, 0) NOT NULL,
	[CUST_ACCT_SITE_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[SITE_USE_CODE] [varchar](30) NULL,
	[PRIMARY_FLAG] [varchar](1) NULL,
	[STATUS] [varchar](1) NULL,
	[LOCATION] [varchar](40) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTACT_ID] [decimal](15, 0) NULL,
	[BILL_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[ORIG_SYSTEM_REFERENCE] [varchar](240) NULL,
	[SIC_CODE] [varchar](30) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[GSA_INDICATOR] [varchar](1) NULL,
	[SHIP_PARTIAL] [varchar](1) NULL,
	[SHIP_VIA] [varchar](30) NULL,
	[FOB_POINT] [varchar](30) NULL,
	[ORDER_TYPE_ID] [decimal](15, 0) NULL,
	[PRICE_LIST_ID] [decimal](15, 0) NULL,
	[FREIGHT_TERM] [varchar](30) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[TERRITORY_ID] [decimal](15, 0) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[TAX_REFERENCE] [varchar](50) NULL,
	[SORT_PRIORITY] [int] NULL,
	[TAX_CODE] [varchar](50) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[ATTRIBUTE21] [varchar](150) NULL,
	[ATTRIBUTE22] [varchar](150) NULL,
	[ATTRIBUTE23] [varchar](150) NULL,
	[ATTRIBUTE24] [varchar](150) NULL,
	[ATTRIBUTE25] [varchar](150) NULL,
	[LAST_ACCRUE_CHARGE_DATE] [datetime2](7) NULL,
	[SECOND_LAST_ACCRUE_CHARGE_DATE] [datetime2](7) NULL,
	[LAST_UNACCRUE_CHARGE_DATE] [datetime2](7) NULL,
	[SECOND_LAST_UNACCRUE_CHRG_DATE] [datetime2](7) NULL,
	[DEMAND_CLASS_CODE] [varchar](30) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[TAX_HEADER_LEVEL_FLAG] [varchar](1) NULL,
	[TAX_ROUNDING_RULE] [varchar](30) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[PRIMARY_SALESREP_ID] [decimal](15, 0) NULL,
	[FINCHRG_RECEIVABLES_TRX_ID] [decimal](15, 0) NULL,
	[DATES_NEGATIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATES_POSITIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATE_TYPE_PREFERENCE] [varchar](20) NULL,
	[OVER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[ITEM_CROSS_REF_PREF] [varchar](30) NULL,
	[OVER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[SHIP_SETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[ARRIVALSETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[SCHED_DATE_PUSH_FLAG] [varchar](1) NULL,
	[INVOICE_QUANTITY_RULE] [varchar](30) NULL,
	[PRICING_EVENT] [varchar](30) NULL,
	[GL_ID_REC] [decimal](15, 0) NULL,
	[GL_ID_REV] [decimal](15, 0) NULL,
	[GL_ID_TAX] [decimal](15, 0) NULL,
	[GL_ID_FREIGHT] [decimal](15, 0) NULL,
	[GL_ID_CLEARING] [decimal](15, 0) NULL,
	[GL_ID_UNBILLED] [decimal](15, 0) NULL,
	[GL_ID_UNEARNED] [decimal](15, 0) NULL,
	[GL_ID_UNPAID_REC] [decimal](15, 0) NULL,
	[GL_ID_REMITTANCE] [decimal](15, 0) NULL,
	[GL_ID_FACTOR] [decimal](15, 0) NULL,
	[TAX_CLASSIFICATION] [varchar](30) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[CREATED_BY_MODULE] [varchar](150) NULL,
	[APPLICATION_ID] [decimal](28, 7) NULL,
PRIMARY KEY CLUSTERED 
(
	[SITE_USE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HZ_CUST_SITES_USES_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HZ_CUST_SITES_USES_ALL](
	[CUST_ACCOUNT_ID] [decimal](15, 0) NULL,
	[PARTY_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[ACCOUNT_NUMBER] [varchar](30) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[ORIG_SYSTEM_REFERENCE] [varchar](240) NULL,
	[STATUS] [varchar](1) NULL,
	[CUSTOMER_TYPE] [varchar](30) NULL,
	[CUSTOMER_CLASS_CODE] [varchar](30) NULL,
	[PRIMARY_SALESREP_ID] [decimal](15, 0) NULL,
	[SALES_CHANNEL_CODE] [varchar](30) NULL,
	[ORDER_TYPE_ID] [decimal](15, 0) NULL,
	[PRICE_LIST_ID] [decimal](15, 0) NULL,
	[SUBCATEGORY_CODE] [varchar](30) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[FOB_POINT] [varchar](30) NULL,
	[FREIGHT_TERM] [varchar](30) NULL,
	[SHIP_PARTIAL] [varchar](1) NULL,
	[SHIP_VIA] [varchar](30) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[TAX_HEADER_LEVEL_FLAG] [varchar](1) NULL,
	[TAX_ROUNDING_RULE] [varchar](30) NULL,
	[COTERMINATE_DAY_MONTH] [varchar](6) NULL,
	[PRIMARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[SECONDARY_SPECIALIST_ID] [decimal](15, 0) NULL,
	[ACCOUNT_LIABLE_FLAG] [varchar](1) NULL,
	[RESTRICTION_LIMIT_AMOUNT] [decimal](28, 7) NULL,
	[CURRENT_BALANCE] [decimal](28, 7) NULL,
	[PASSWORD_TEXT] [varchar](60) NULL,
	[HIGH_PRIORITY_INDICATOR] [varchar](1) NULL,
	[ACCOUNT_ESTABLISHED_DATE] [datetime2](7) NULL,
	[ACCOUNT_TERMINATION_DATE] [datetime2](7) NULL,
	[ACCOUNT_ACTIVATION_DATE] [datetime2](7) NULL,
	[CREDIT_CLASSIFICATION_CODE] [varchar](30) NULL,
	[DEPARTMENT] [varchar](30) NULL,
	[MAJOR_ACCOUNT_NUMBER] [varchar](30) NULL,
	[HOTWATCH_SERVICE_FLAG] [varchar](1) NULL,
	[HOTWATCH_SVC_BAL_IND] [varchar](30) NULL,
	[HELD_BILL_EXPIRATION_DATE] [datetime2](7) NULL,
	[HOLD_BILL_FLAG] [varchar](1) NULL,
	[HIGH_PRIORITY_REMARKS] [varchar](80) NULL,
	[PO_EFFECTIVE_DATE] [datetime2](7) NULL,
	[PO_EXPIRATION_DATE] [datetime2](7) NULL,
	[REALTIME_RATE_FLAG] [varchar](1) NULL,
	[SINGLE_USER_FLAG] [varchar](1) NULL,
	[WATCH_ACCOUNT_FLAG] [varchar](1) NULL,
	[WATCH_BALANCE_INDICATOR] [varchar](1) NULL,
	[GEO_CODE] [varchar](30) NULL,
	[ACCT_LIFE_CYCLE_STATUS] [varchar](30) NULL,
	[ACCOUNT_NAME] [varchar](240) NULL,
	[DEPOSIT_REFUND_METHOD] [varchar](20) NULL,
	[DORMANT_ACCOUNT_FLAG] [varchar](1) NULL,
	[NPA_NUMBER] [varchar](60) NULL,
	[PIN_NUMBER] [decimal](16, 0) NULL,
	[SUSPENSION_DATE] [datetime2](7) NULL,
	[WRITE_OFF_ADJUSTMENT_AMOUNT] [decimal](28, 7) NULL,
	[WRITE_OFF_PAYMENT_AMOUNT] [decimal](28, 7) NULL,
	[WRITE_OFF_AMOUNT] [decimal](28, 7) NULL,
	[SOURCE_CODE] [varchar](150) NULL,
	[COMPETITOR_TYPE] [varchar](150) NULL,
	[COMMENTS] [varchar](240) NULL,
	[DATES_NEGATIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATES_POSITIVE_TOLERANCE] [decimal](28, 7) NULL,
	[DATE_TYPE_PREFERENCE] [varchar](20) NULL,
	[OVER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[OVER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[ITEM_CROSS_REF_PREF] [varchar](30) NULL,
	[SHIP_SETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[ARRIVALSETS_INCLUDE_LINES_FLAG] [varchar](1) NULL,
	[SCHED_DATE_PUSH_FLAG] [varchar](1) NULL,
	[INVOICE_QUANTITY_RULE] [varchar](30) NULL,
	[PRICING_EVENT] [varchar](30) NULL,
	[ACCOUNT_REPLICATION_KEY] [decimal](15, 0) NULL,
	[STATUS_UPDATE_DATE] [datetime2](7) NULL,
	[AUTOPAY_FLAG] [varchar](1) NULL,
	[NOTIFY_FLAG] [varchar](1) NULL,
	[LAST_BATCH_ID] [decimal](28, 7) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[CREATED_BY_MODULE] [varchar](150) NULL,
	[APPLICATION_ID] [decimal](28, 7) NULL,
	[SELLING_PARTY_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HZ_PARTIES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HZ_PARTIES](
	[PARTY_ID] [decimal](15, 0) NOT NULL,
	[PARTY_NUMBER] [varchar](30) NULL,
	[PARTY_NAME] [varchar](360) NULL,
	[PARTY_TYPE] [varchar](30) NULL,
	[VALIDATED_FLAG] [varchar](1) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[ATTRIBUTE21] [varchar](150) NULL,
	[ATTRIBUTE22] [varchar](150) NULL,
	[ATTRIBUTE23] [varchar](150) NULL,
	[ATTRIBUTE24] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[ORIG_SYSTEM_REFERENCE] [varchar](240) NULL,
	[SIC_CODE] [varchar](30) NULL,
	[HQ_BRANCH_IND] [varchar](30) NULL,
	[CUSTOMER_KEY] [varchar](500) NULL,
	[TAX_REFERENCE] [varchar](50) NULL,
	[JGZZ_FISCAL_CODE] [varchar](20) NULL,
	[DUNS_NUMBER] [decimal](28, 7) NULL,
	[TAX_NAME] [varchar](60) NULL,
	[PERSON_PRE_NAME_ADJUNCT] [varchar](30) NULL,
	[PERSON_FIRST_NAME] [varchar](150) NULL,
	[PERSON_MIDDLE_NAME] [varchar](60) NULL,
	[PERSON_LAST_NAME] [varchar](150) NULL,
	[PERSON_NAME_SUFFIX] [varchar](30) NULL,
	[PERSON_TITLE] [varchar](60) NULL,
	[PERSON_ACADEMIC_TITLE] [varchar](30) NULL,
	[PERSON_PREVIOUS_LAST_NAME] [varchar](150) NULL,
	[KNOWN_AS] [varchar](240) NULL,
	[PERSON_IDEN_TYPE] [varchar](30) NULL,
	[PERSON_IDENTIFIER] [varchar](60) NULL,
	[GROUP_TYPE] [varchar](30) NULL,
	[COUNTRY] [varchar](60) NULL,
	[ADDRESS1] [varchar](240) NULL,
	[ADDRESS2] [varchar](240) NULL,
	[ADDRESS3] [varchar](240) NULL,
	[ADDRESS4] [varchar](240) NULL,
	[CITY] [varchar](60) NULL,
	[POSTAL_CODE] [varchar](60) NULL,
	[STATE] [varchar](60) NULL,
	[PROVINCE] [varchar](60) NULL,
	[STATUS] [varchar](1) NULL,
	[COUNTY] [varchar](60) NULL,
	[SIC_CODE_TYPE] [varchar](30) NULL,
	[TOTAL_NUM_OF_ORDERS] [decimal](28, 7) NULL,
	[TOTAL_ORDERED_AMOUNT] [decimal](28, 7) NULL,
	[LAST_ORDERED_DATE] [datetime2](7) NULL,
	[URL] [varchar](2000) NULL,
	[EMAIL_ADDRESS] [varchar](2000) NULL,
	[DO_NOT_MAIL_FLAG] [varchar](1) NULL,
	[ANALYSIS_FY] [varchar](5) NULL,
	[FISCAL_YEAREND_MONTH] [varchar](30) NULL,
	[EMPLOYEES_TOTAL] [decimal](28, 7) NULL,
	[CURR_FY_POTENTIAL_REVENUE] [decimal](28, 7) NULL,
	[NEXT_FY_POTENTIAL_REVENUE] [decimal](28, 7) NULL,
	[YEAR_ESTABLISHED] [int] NULL,
	[GSA_INDICATOR_FLAG] [varchar](1) NULL,
	[MISSION_STATEMENT] [varchar](2000) NULL,
	[ORGANIZATION_NAME_PHONETIC] [varchar](320) NULL,
	[PERSON_FIRST_NAME_PHONETIC] [varchar](60) NULL,
	[PERSON_LAST_NAME_PHONETIC] [varchar](60) NULL,
	[LANGUAGE_NAME] [varchar](4) NULL,
	[CATEGORY_CODE] [varchar](30) NULL,
	[REFERENCE_USE_FLAG] [varchar](1) NULL,
	[THIRD_PARTY_FLAG] [varchar](1) NULL,
	[COMPETITOR_FLAG] [varchar](1) NULL,
	[SALUTATION] [varchar](60) NULL,
	[KNOWN_AS2] [varchar](240) NULL,
	[KNOWN_AS3] [varchar](240) NULL,
	[KNOWN_AS4] [varchar](240) NULL,
	[KNOWN_AS5] [varchar](240) NULL,
	[DUNS_NUMBER_C] [varchar](30) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[CREATED_BY_MODULE] [varchar](150) NULL,
	[APPLICATION_ID] [decimal](28, 7) NULL,
	[PRIMARY_PHONE_CONTACT_PT_ID] [decimal](15, 0) NULL,
	[PRIMARY_PHONE_PURPOSE] [varchar](30) NULL,
	[PRIMARY_PHONE_LINE_TYPE] [varchar](30) NULL,
	[PRIMARY_PHONE_COUNTRY_CODE] [varchar](10) NULL,
	[PRIMARY_PHONE_AREA_CODE] [varchar](10) NULL,
	[PRIMARY_PHONE_NUMBER] [varchar](40) NULL,
	[PRIMARY_PHONE_EXTENSION] [varchar](20) NULL,
	[CERTIFICATION_LEVEL] [varchar](30) NULL,
	[CERT_REASON_CODE] [varchar](30) NULL,
	[PREFERRED_CONTACT_METHOD] [varchar](30) NULL,
	[HOME_COUNTRY] [varchar](2) NULL,
	[PERSON_BO_VERSION] [decimal](15, 0) NULL,
	[ORG_BO_VERSION] [decimal](15, 0) NULL,
	[PERSON_CUST_BO_VERSION] [decimal](15, 0) NULL,
	[ORG_CUST_BO_VERSION] [decimal](15, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PARTY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[JAI_CMN_CUS_ADDRESSES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[JAI_CMN_CUS_ADDRESSES](
	[CUSTOMER_ID] [decimal](28, 7) NULL,
	[ADDRESS_ID] [decimal](28, 7) NULL,
	[PAN_NO] [varchar](30) NULL,
	[TAN_NO] [varchar](30) NULL,
	[EXCISE_DUTY_REGION] [varchar](50) NULL,
	[EXCISE_DUTY_ZONE] [varchar](50) NULL,
	[EXCISE_DUTY_REG_NO] [varchar](50) NULL,
	[EXCISE_DUTY_RANGE] [varchar](50) NULL,
	[EXCISE_DUTY_DIVISION] [varchar](50) NULL,
	[EXCISE_DUTY_CIRCLE] [varchar](50) NULL,
	[EXCISE_DUTY_COMM] [varchar](50) NULL,
	[TAX_CATEGORY_LIST] [varchar](50) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[ST_REG_NO] [varchar](50) NULL,
	[CST_REG_NO] [varchar](50) NULL,
	[EC_CODE] [varchar](50) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[EXEMPT] [varchar](2) NULL,
	[VAT_REG_NO] [varchar](50) NULL,
	[SERVICE_TAX_REGNO] [varchar](50) NULL,
	[VAT_PRICE_LIST_ID] [decimal](28, 7) NULL,
	[CUSTOMER_ADDRESS_ID] [decimal](15, 0) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[SERVICE_TYPE_CODE] [varchar](30) NULL,
	[TCS_CUSTOMER_TYPE] [varchar](30) NULL,
	[CONFIRM_PAN] [varchar](2) NULL,
	[STATE_CODE] [varchar](30) NULL,
	[GST_ASSESSABLE_PRICE] [decimal](28, 7) NULL,
	[GST_REGISTRATION_NO] [decimal](28, 7) NULL,
	[CUSTOMER_TYPE] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[JAI_CMN_TAX_CTG_LINES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[JAI_CMN_TAX_CTG_LINES](
	[TAX_CATEGORY_ID] [decimal](15, 0) NULL,
	[TAX_ID] [decimal](15, 0) NULL,
	[LINE_NO] [decimal](28, 7) NULL,
	[PRECEDENCE_1] [decimal](28, 7) NULL,
	[PRECEDENCE_2] [decimal](28, 7) NULL,
	[PRECEDENCE_3] [decimal](28, 7) NULL,
	[PRECEDENCE_4] [decimal](28, 7) NULL,
	[PRECEDENCE_5] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[PRECEDENCE_6] [decimal](28, 7) NULL,
	[PRECEDENCE_7] [decimal](28, 7) NULL,
	[PRECEDENCE_8] [decimal](28, 7) NULL,
	[PRECEDENCE_9] [decimal](28, 7) NULL,
	[PRECEDENCE_10] [decimal](28, 7) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[JAI_CMN_TAXES_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[JAI_CMN_TAXES_ALL](
	[TAX_ID] [decimal](15, 0) NULL,
	[TAX_NAME] [varchar](50) NULL,
	[TAX_DESCR] [varchar](100) NULL,
	[TAX_TYPE] [varchar](30) NULL,
	[TAX_RATE] [decimal](28, 7) NULL,
	[TAX_AMOUNT] [decimal](28, 7) NULL,
	[UOM_CODE] [varchar](3) NULL,
	[ADHOC_FLAG] [varchar](1) NULL,
	[VENDOR_ID] [decimal](28, 7) NULL,
	[VENDOR_FLAG] [varchar](1) NULL,
	[VENDOR_SITE_ID] [decimal](28, 7) NULL,
	[MODIFIABLE_FLAG] [varchar](1) NULL,
	[TAX_ACCOUNT_ID] [decimal](15, 0) NULL,
	[MOD_CR_PERCENTAGE] [decimal](28, 7) NULL,
	[STFORM_TYPE] [varchar](20) NULL,
	[ORIG_TAX_PERCENTAGE] [decimal](28, 7) NULL,
	[TDS_SECTION] [varchar](30) NULL,
	[CURRENCY_FLAG] [varchar](1) NULL,
	[START_DATE] [datetime2](7) NULL,
	[END_DATE] [datetime2](7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[SURCHARGE_RATE] [decimal](28, 7) NULL,
	[SURCHARGE_FLAG] [varchar](1) NULL,
	[ROUNDING_FACTOR] [decimal](28, 7) NULL,
	[DUTY_DRAWBACK_FLAG] [varchar](1) NULL,
	[DUTY_DRAWBACK_PERCENTAGE] [decimal](15, 0) NULL,
	[VAT_FLAG] [varchar](1) NULL,
	[SECTION_TYPE] [varchar](30) NULL,
	[SECTION_CODE] [varchar](30) NULL,
	[CESS_RATE] [decimal](28, 7) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[SH_CESS_RATE] [decimal](28, 7) NULL,
	[INCLUSIVE_TAX_FLAG] [varchar](1) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[TAX_TYPE_ID] [decimal](15, 0) NULL,
	[AUTO_CREATE_CATEGORY] [varchar](1) NULL,
	[REVERSE_CHARGE_FLAG] [varchar](1) NULL,
	[TAX_POINT_BASIS] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[JAI_INV_ITM_TAXCTG_DTLS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[JAI_INV_ITM_TAXCTG_DTLS](
	[TAX_CATEGORY_LIST] [varchar](30) NULL,
	[INVENTORY_ITEM_ID] [decimal](15, 0) NULL,
	[TAX_CATEGORY_ID] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[OBJECT_VERSION_NUMBER] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MTL_SYSTEM_ITEMS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MTL_SYSTEM_ITEMS](
	[INVENTORY_ITEM_ID] [decimal](28, 7) NULL,
	[ORGANIZATION_ID] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[BUYER_ID] [int] NULL,
	[ACCOUNTING_RULE_ID] [decimal](28, 7) NULL,
	[INVOICING_RULE_ID] [decimal](28, 7) NULL,
	[SEGMENT1] [varchar](40) NULL,
	[SEGMENT2] [varchar](40) NULL,
	[SEGMENT3] [varchar](40) NULL,
	[SEGMENT4] [varchar](40) NULL,
	[SEGMENT5] [varchar](40) NULL,
	[SEGMENT6] [varchar](40) NULL,
	[SEGMENT7] [varchar](40) NULL,
	[SEGMENT8] [varchar](40) NULL,
	[SEGMENT9] [varchar](40) NULL,
	[SEGMENT10] [varchar](40) NULL,
	[SEGMENT11] [varchar](40) NULL,
	[SEGMENT12] [varchar](40) NULL,
	[SEGMENT13] [varchar](40) NULL,
	[SEGMENT14] [varchar](40) NULL,
	[SEGMENT15] [varchar](40) NULL,
	[SEGMENT16] [varchar](40) NULL,
	[SEGMENT17] [varchar](40) NULL,
	[SEGMENT18] [varchar](40) NULL,
	[SEGMENT19] [varchar](40) NULL,
	[SEGMENT20] [varchar](40) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[PURCHASING_ITEM_FLAG] [varchar](1) NULL,
	[SHIPPABLE_ITEM_FLAG] [varchar](1) NULL,
	[CUSTOMER_ORDER_FLAG] [varchar](1) NULL,
	[INTERNAL_ORDER_FLAG] [varchar](1) NULL,
	[SERVICE_ITEM_FLAG] [varchar](1) NULL,
	[INVENTORY_ITEM_FLAG] [varchar](1) NULL,
	[ENG_ITEM_FLAG] [varchar](1) NULL,
	[INVENTORY_ASSET_FLAG] [varchar](1) NULL,
	[PURCHASING_ENABLED_FLAG] [varchar](1) NULL,
	[CUSTOMER_ORDER_ENABLED_FLAG] [varchar](1) NULL,
	[INTERNAL_ORDER_ENABLED_FLAG] [varchar](1) NULL,
	[SO_TRANSACTIONS_FLAG] [varchar](1) NULL,
	[MTL_TRANSACTIONS_ENABLED_FLAG] [varchar](1) NULL,
	[STOCK_ENABLED_FLAG] [varchar](1) NULL,
	[BOM_ENABLED_FLAG] [varchar](1) NULL,
	[BUILD_IN_WIP_FLAG] [varchar](1) NULL,
	[REVISION_QTY_CONTROL_CODE] [decimal](28, 7) NULL,
	[ITEM_CATALOG_GROUP_ID] [decimal](28, 7) NULL,
	[CATALOG_STATUS_FLAG] [varchar](1) NULL,
	[RETURNABLE_FLAG] [varchar](1) NULL,
	[DEFAULT_SHIPPING_ORG] [decimal](28, 7) NULL,
	[COLLATERAL_FLAG] [varchar](1) NULL,
	[TAXABLE_FLAG] [varchar](1) NULL,
	[QTY_RCV_EXCEPTION_CODE] [varchar](25) NULL,
	[ALLOW_ITEM_DESC_UPDATE_FLAG] [varchar](1) NULL,
	[INSPECTION_REQUIRED_FLAG] [varchar](1) NULL,
	[RECEIPT_REQUIRED_FLAG] [varchar](1) NULL,
	[MARKET_PRICE] [decimal](28, 7) NULL,
	[HAZARD_CLASS_ID] [decimal](28, 7) NULL,
	[RFQ_REQUIRED_FLAG] [varchar](1) NULL,
	[QTY_RCV_TOLERANCE] [decimal](28, 7) NULL,
	[LIST_PRICE_PER_UNIT] [decimal](28, 7) NULL,
	[UN_NUMBER_ID] [decimal](28, 7) NULL,
	[PRICE_TOLERANCE_PERCENT] [decimal](28, 7) NULL,
	[ASSET_CATEGORY_ID] [decimal](28, 7) NULL,
	[ROUNDING_FACTOR] [decimal](28, 7) NULL,
	[UNIT_OF_ISSUE] [varchar](25) NULL,
	[ENFORCE_SHIP_TO_LOCATION_CODE] [varchar](25) NULL,
	[ALLOW_SUBSTITUTE_RECEIPTS_FLAG] [varchar](1) NULL,
	[ALLOW_UNORDERED_RECEIPTS_FLAG] [varchar](1) NULL,
	[ALLOW_EXPRESS_DELIVERY_FLAG] [varchar](1) NULL,
	[DAYS_EARLY_RECEIPT_ALLOWED] [decimal](28, 7) NULL,
	[DAYS_LATE_RECEIPT_ALLOWED] [decimal](28, 7) NULL,
	[RECEIPT_DAYS_EXCEPTION_CODE] [varchar](25) NULL,
	[RECEIVING_ROUTING_ID] [decimal](28, 7) NULL,
	[INVOICE_CLOSE_TOLERANCE] [decimal](28, 7) NULL,
	[RECEIVE_CLOSE_TOLERANCE] [decimal](28, 7) NULL,
	[AUTO_LOT_ALPHA_PREFIX] [varchar](30) NULL,
	[START_AUTO_LOT_NUMBER] [varchar](30) NULL,
	[LOT_CONTROL_CODE] [decimal](28, 7) NULL,
	[SHELF_LIFE_CODE] [decimal](28, 7) NULL,
	[SHELF_LIFE_DAYS] [decimal](28, 7) NULL,
	[SERIAL_NUMBER_CONTROL_CODE] [decimal](28, 7) NULL,
	[START_AUTO_SERIAL_NUMBER] [varchar](30) NULL,
	[AUTO_SERIAL_ALPHA_PREFIX] [varchar](30) NULL,
	[SOURCE_TYPE] [decimal](28, 7) NULL,
	[SOURCE_ORGANIZATION_ID] [decimal](28, 7) NULL,
	[SOURCE_SUBINVENTORY] [varchar](10) NULL,
	[EXPENSE_ACCOUNT] [decimal](28, 7) NULL,
	[ENCUMBRANCE_ACCOUNT] [decimal](28, 7) NULL,
	[RESTRICT_SUBINVENTORIES_CODE] [decimal](28, 7) NULL,
	[UNIT_WEIGHT] [decimal](28, 7) NULL,
	[WEIGHT_UOM_CODE] [varchar](3) NULL,
	[VOLUME_UOM_CODE] [varchar](3) NULL,
	[UNIT_VOLUME] [decimal](28, 7) NULL,
	[RESTRICT_LOCATORS_CODE] [decimal](28, 7) NULL,
	[LOCATION_CONTROL_CODE] [decimal](28, 7) NULL,
	[SHRINKAGE_RATE] [decimal](28, 7) NULL,
	[ACCEPTABLE_EARLY_DAYS] [decimal](28, 7) NULL,
	[PLANNING_TIME_FENCE_CODE] [decimal](28, 7) NULL,
	[DEMAND_TIME_FENCE_CODE] [decimal](28, 7) NULL,
	[LEAD_TIME_LOT_SIZE] [decimal](28, 7) NULL,
	[STD_LOT_SIZE] [decimal](28, 7) NULL,
	[CUM_MANUFACTURING_LEAD_TIME] [decimal](28, 7) NULL,
	[OVERRUN_PERCENTAGE] [decimal](28, 7) NULL,
	[MRP_CALCULATE_ATP_FLAG] [varchar](1) NULL,
	[ACCEPTABLE_RATE_INCREASE] [decimal](28, 7) NULL,
	[ACCEPTABLE_RATE_DECREASE] [decimal](28, 7) NULL,
	[CUMULATIVE_TOTAL_LEAD_TIME] [decimal](28, 7) NULL,
	[PLANNING_TIME_FENCE_DAYS] [decimal](28, 7) NULL,
	[DEMAND_TIME_FENCE_DAYS] [decimal](28, 7) NULL,
	[END_ASSEMBLY_PEGGING_FLAG] [varchar](1) NULL,
	[REPETITIVE_PLANNING_FLAG] [varchar](1) NULL,
	[PLANNING_EXCEPTION_SET] [varchar](10) NULL,
	[BOM_ITEM_TYPE] [decimal](28, 7) NULL,
	[PICK_COMPONENTS_FLAG] [varchar](1) NULL,
	[REPLENISH_TO_ORDER_FLAG] [varchar](1) NULL,
	[BASE_ITEM_ID] [decimal](28, 7) NULL,
	[ATP_COMPONENTS_FLAG] [varchar](1) NULL,
	[ATP_FLAG] [varchar](1) NULL,
	[FIXED_LEAD_TIME] [decimal](28, 7) NULL,
	[VARIABLE_LEAD_TIME] [decimal](28, 7) NULL,
	[WIP_SUPPLY_LOCATOR_ID] [decimal](28, 7) NULL,
	[WIP_SUPPLY_TYPE] [decimal](28, 7) NULL,
	[WIP_SUPPLY_SUBINVENTORY] [varchar](10) NULL,
	[PRIMARY_UOM_CODE] [varchar](3) NULL,
	[PRIMARY_UNIT_OF_MEASURE] [varchar](25) NULL,
	[ALLOWED_UNITS_LOOKUP_CODE] [decimal](28, 7) NULL,
	[COST_OF_SALES_ACCOUNT] [decimal](28, 7) NULL,
	[SALES_ACCOUNT] [decimal](28, 7) NULL,
	[DEFAULT_INCLUDE_IN_ROLLUP_FLAG] [varchar](1) NULL,
	[INVENTORY_ITEM_STATUS_CODE] [varchar](10) NULL,
	[INVENTORY_PLANNING_CODE] [decimal](28, 7) NULL,
	[PLANNER_CODE] [varchar](10) NULL,
	[PLANNING_MAKE_BUY_CODE] [decimal](28, 7) NULL,
	[FIXED_LOT_MULTIPLIER] [decimal](28, 7) NULL,
	[ROUNDING_CONTROL_TYPE] [decimal](28, 7) NULL,
	[CARRYING_COST] [decimal](28, 7) NULL,
	[POSTPROCESSING_LEAD_TIME] [decimal](28, 7) NULL,
	[PREPROCESSING_LEAD_TIME] [decimal](28, 7) NULL,
	[FULL_LEAD_TIME] [decimal](28, 7) NULL,
	[ORDER_COST] [decimal](28, 7) NULL,
	[MRP_SAFETY_STOCK_PERCENT] [decimal](28, 7) NULL,
	[MRP_SAFETY_STOCK_CODE] [decimal](28, 7) NULL,
	[MIN_MINMAX_QUANTITY] [decimal](28, 7) NULL,
	[MAX_MINMAX_QUANTITY] [decimal](28, 7) NULL,
	[MINIMUM_ORDER_QUANTITY] [decimal](28, 7) NULL,
	[FIXED_ORDER_QUANTITY] [decimal](28, 7) NULL,
	[FIXED_DAYS_SUPPLY] [decimal](28, 7) NULL,
	[MAXIMUM_ORDER_QUANTITY] [decimal](28, 7) NULL,
	[ATP_RULE_ID] [decimal](28, 7) NULL,
	[PICKING_RULE_ID] [decimal](28, 7) NULL,
	[RESERVABLE_TYPE] [decimal](28, 7) NULL,
	[POSITIVE_MEASUREMENT_ERROR] [decimal](28, 7) NULL,
	[NEGATIVE_MEASUREMENT_ERROR] [decimal](28, 7) NULL,
	[ENGINEERING_ECN_CODE] [varchar](50) NULL,
	[ENGINEERING_ITEM_ID] [decimal](28, 7) NULL,
	[ENGINEERING_DATE] [datetime2](7) NULL,
	[SERVICE_STARTING_DELAY] [decimal](28, 7) NULL,
	[VENDOR_WARRANTY_FLAG] [varchar](1) NULL,
	[SERVICEABLE_COMPONENT_FLAG] [varchar](1) NULL,
	[SERVICEABLE_PRODUCT_FLAG] [varchar](1) NULL,
	[BASE_WARRANTY_SERVICE_ID] [decimal](28, 7) NULL,
	[PAYMENT_TERMS_ID] [decimal](28, 7) NULL,
	[PREVENTIVE_MAINTENANCE_FLAG] [varchar](1) NULL,
	[PRIMARY_SPECIALIST_ID] [decimal](28, 7) NULL,
	[SECONDARY_SPECIALIST_ID] [decimal](28, 7) NULL,
	[SERVICEABLE_ITEM_CLASS_ID] [decimal](28, 7) NULL,
	[TIME_BILLABLE_FLAG] [varchar](1) NULL,
	[MATERIAL_BILLABLE_FLAG] [varchar](30) NULL,
	[EXPENSE_BILLABLE_FLAG] [varchar](1) NULL,
	[PRORATE_SERVICE_FLAG] [varchar](1) NULL,
	[COVERAGE_SCHEDULE_ID] [decimal](28, 7) NULL,
	[SERVICE_DURATION_PERIOD_CODE] [varchar](10) NULL,
	[SERVICE_DURATION] [decimal](28, 7) NULL,
	[WARRANTY_VENDOR_ID] [decimal](28, 7) NULL,
	[MAX_WARRANTY_AMOUNT] [decimal](28, 7) NULL,
	[RESPONSE_TIME_PERIOD_CODE] [varchar](30) NULL,
	[RESPONSE_TIME_VALUE] [decimal](28, 7) NULL,
	[NEW_REVISION_CODE] [varchar](30) NULL,
	[INVOICEABLE_ITEM_FLAG] [varchar](1) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[INVOICE_ENABLED_FLAG] [varchar](1) NULL,
	[MUST_USE_APPROVED_VENDOR_FLAG] [varchar](1) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[OUTSIDE_OPERATION_FLAG] [varchar](1) NULL,
	[OUTSIDE_OPERATION_UOM_TYPE] [varchar](25) NULL,
	[SAFETY_STOCK_BUCKET_DAYS] [decimal](28, 7) NULL,
	[AUTO_REDUCE_MPS] [decimal](22, 0) NULL,
	[COSTING_ENABLED_FLAG] [varchar](1) NULL,
	[AUTO_CREATED_CONFIG_FLAG] [varchar](1) NULL,
	[CYCLE_COUNT_ENABLED_FLAG] [varchar](1) NULL,
	[ITEM_TYPE] [varchar](30) NULL,
	[MODEL_CONFIG_CLAUSE_NAME] [varchar](10) NULL,
	[SHIP_MODEL_COMPLETE_FLAG] [varchar](1) NULL,
	[MRP_PLANNING_CODE] [decimal](28, 7) NULL,
	[RETURN_INSPECTION_REQUIREMENT] [decimal](28, 7) NULL,
	[ATO_FORECAST_CONTROL] [decimal](28, 7) NULL,
	[RELEASE_TIME_FENCE_CODE] [decimal](28, 7) NULL,
	[RELEASE_TIME_FENCE_DAYS] [decimal](28, 7) NULL,
	[CONTAINER_ITEM_FLAG] [varchar](1) NULL,
	[VEHICLE_ITEM_FLAG] [varchar](1) NULL,
	[MAXIMUM_LOAD_WEIGHT] [decimal](28, 7) NULL,
	[MINIMUM_FILL_PERCENT] [decimal](28, 7) NULL,
	[CONTAINER_TYPE_CODE] [varchar](30) NULL,
	[INTERNAL_VOLUME] [decimal](28, 7) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[PRODUCT_FAMILY_ITEM_ID] [decimal](28, 7) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[PURCHASING_TAX_CODE] [varchar](50) NULL,
	[OVERCOMPLETION_TOLERANCE_TYPE] [decimal](28, 7) NULL,
	[OVERCOMPLETION_TOLERANCE_VALUE] [decimal](28, 7) NULL,
	[EFFECTIVITY_CONTROL] [decimal](28, 7) NULL,
	[CHECK_SHORTAGES_FLAG] [varchar](1) NULL,
	[OVER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_SHIPMENT_TOLERANCE] [decimal](28, 7) NULL,
	[OVER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[UNDER_RETURN_TOLERANCE] [decimal](28, 7) NULL,
	[EQUIPMENT_TYPE] [decimal](28, 7) NULL,
	[RECOVERED_PART_DISP_CODE] [varchar](30) NULL,
	[DEFECT_TRACKING_ON_FLAG] [varchar](1) NULL,
	[USAGE_ITEM_FLAG] [varchar](1) NULL,
	[EVENT_FLAG] [varchar](1) NULL,
	[ELECTRONIC_FLAG] [varchar](1) NULL,
	[DOWNLOADABLE_FLAG] [varchar](1) NULL,
	[VOL_DISCOUNT_EXEMPT_FLAG] [varchar](1) NULL,
	[COUPON_EXEMPT_FLAG] [varchar](1) NULL,
	[COMMS_NL_TRACKABLE_FLAG] [varchar](1) NULL,
	[ASSET_CREATION_CODE] [varchar](30) NULL,
	[COMMS_ACTIVATION_REQD_FLAG] [varchar](1) NULL,
	[ORDERABLE_ON_WEB_FLAG] [varchar](1) NULL,
	[BACK_ORDERABLE_FLAG] [varchar](1) NULL,
	[WEB_STATUS] [varchar](30) NULL,
	[INDIVISIBLE_FLAG] [varchar](1) NULL,
	[DIMENSION_UOM_CODE] [varchar](3) NULL,
	[UNIT_LENGTH] [decimal](28, 7) NULL,
	[UNIT_WIDTH] [decimal](28, 7) NULL,
	[UNIT_HEIGHT] [decimal](28, 7) NULL,
	[BULK_PICKED_FLAG] [varchar](1) NULL,
	[LOT_STATUS_ENABLED] [varchar](1) NULL,
	[DEFAULT_LOT_STATUS_ID] [decimal](28, 7) NULL,
	[SERIAL_STATUS_ENABLED] [varchar](1) NULL,
	[DEFAULT_SERIAL_STATUS_ID] [decimal](28, 7) NULL,
	[LOT_SPLIT_ENABLED] [varchar](1) NULL,
	[LOT_MERGE_ENABLED] [varchar](1) NULL,
	[INVENTORY_CARRY_PENALTY] [decimal](28, 7) NULL,
	[OPERATION_SLACK_PENALTY] [decimal](28, 7) NULL,
	[FINANCING_ALLOWED_FLAG] [varchar](1) NULL,
	[EAM_ITEM_TYPE] [decimal](28, 7) NULL,
	[EAM_ACTIVITY_TYPE_CODE] [varchar](30) NULL,
	[EAM_ACTIVITY_CAUSE_CODE] [varchar](30) NULL,
	[EAM_ACT_NOTIFICATION_FLAG] [varchar](1) NULL,
	[EAM_ACT_SHUTDOWN_STATUS] [varchar](30) NULL,
	[DUAL_UOM_CONTROL] [decimal](28, 7) NULL,
	[SECONDARY_UOM_CODE] [varchar](3) NULL,
	[DUAL_UOM_DEVIATION_HIGH] [decimal](28, 7) NULL,
	[DUAL_UOM_DEVIATION_LOW] [decimal](28, 7) NULL,
	[CONTRACT_ITEM_TYPE_CODE] [varchar](30) NULL,
	[SUBSCRIPTION_DEPEND_FLAG] [varchar](1) NULL,
	[SERV_REQ_ENABLED_CODE] [varchar](30) NULL,
	[SERV_BILLING_ENABLED_FLAG] [varchar](1) NULL,
	[SERV_IMPORTANCE_LEVEL] [decimal](28, 7) NULL,
	[PLANNED_INV_POINT_FLAG] [varchar](1) NULL,
	[LOT_TRANSLATE_ENABLED] [varchar](1) NULL,
	[DEFAULT_SO_SOURCE_TYPE] [varchar](30) NULL,
	[CREATE_SUPPLY_FLAG] [varchar](1) NULL,
	[SUBSTITUTION_WINDOW_CODE] [decimal](28, 7) NULL,
	[SUBSTITUTION_WINDOW_DAYS] [decimal](28, 7) NULL,
	[IB_ITEM_INSTANCE_CLASS] [varchar](30) NULL,
	[CONFIG_MODEL_TYPE] [varchar](30) NULL,
	[LOT_SUBSTITUTION_ENABLED] [varchar](1) NULL,
	[MINIMUM_LICENSE_QUANTITY] [decimal](28, 7) NULL,
	[EAM_ACTIVITY_SOURCE_CODE] [varchar](30) NULL,
	[LIFECYCLE_ID] [decimal](28, 7) NULL,
	[CURRENT_PHASE_ID] [decimal](28, 7) NULL,
	[OBJECT_VERSION_NUMBER] [int] NULL,
	[TRACKING_QUANTITY_IND] [varchar](30) NULL,
	[ONT_PRICING_QTY_SOURCE] [varchar](30) NULL,
	[SECONDARY_DEFAULT_IND] [varchar](30) NULL,
	[OPTION_SPECIFIC_SOURCED] [decimal](28, 7) NULL,
	[APPROVAL_STATUS] [varchar](30) NULL,
	[VMI_MINIMUM_UNITS] [decimal](28, 7) NULL,
	[VMI_MINIMUM_DAYS] [decimal](28, 7) NULL,
	[VMI_MAXIMUM_UNITS] [decimal](28, 7) NULL,
	[VMI_MAXIMUM_DAYS] [decimal](28, 7) NULL,
	[VMI_FIXED_ORDER_QUANTITY] [decimal](28, 7) NULL,
	[SO_AUTHORIZATION_FLAG] [decimal](28, 7) NULL,
	[CONSIGNED_FLAG] [decimal](28, 7) NULL,
	[ASN_AUTOEXPIRE_FLAG] [decimal](28, 7) NULL,
	[VMI_FORECAST_TYPE] [decimal](28, 7) NULL,
	[FORECAST_HORIZON] [decimal](28, 7) NULL,
	[EXCLUDE_FROM_BUDGET_FLAG] [decimal](28, 7) NULL,
	[DAYS_TGT_INV_SUPPLY] [decimal](28, 7) NULL,
	[DAYS_TGT_INV_WINDOW] [decimal](28, 7) NULL,
	[DAYS_MAX_INV_SUPPLY] [decimal](28, 7) NULL,
	[DAYS_MAX_INV_WINDOW] [decimal](28, 7) NULL,
	[DRP_PLANNED_FLAG] [decimal](28, 7) NULL,
	[CRITICAL_COMPONENT_FLAG] [decimal](28, 7) NULL,
	[CONTINOUS_TRANSFER] [decimal](28, 7) NULL,
	[CONVERGENCE] [decimal](28, 7) NULL,
	[DIVERGENCE] [decimal](28, 7) NULL,
	[CONFIG_ORGS] [varchar](30) NULL,
	[CONFIG_MATCH] [varchar](30) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[CAS_NUMBER] [varchar](30) NULL,
	[CHILD_LOT_FLAG] [varchar](1) NULL,
	[CHILD_LOT_PREFIX] [varchar](30) NULL,
	[CHILD_LOT_STARTING_NUMBER] [decimal](28, 7) NULL,
	[CHILD_LOT_VALIDATION_FLAG] [varchar](1) NULL,
	[COPY_LOT_ATTRIBUTE_FLAG] [varchar](1) NULL,
	[DEFAULT_GRADE] [varchar](150) NULL,
	[EXPIRATION_ACTION_CODE] [varchar](32) NULL,
	[EXPIRATION_ACTION_INTERVAL] [decimal](28, 7) NULL,
	[GRADE_CONTROL_FLAG] [varchar](1) NULL,
	[HAZARDOUS_MATERIAL_FLAG] [varchar](1) NULL,
	[HOLD_DAYS] [decimal](28, 7) NULL,
	[LOT_DIVISIBLE_FLAG] [varchar](1) NULL,
	[MATURITY_DAYS] [decimal](28, 7) NULL,
	[PARENT_CHILD_GENERATION_FLAG] [varchar](1) NULL,
	[PROCESS_COSTING_ENABLED_FLAG] [varchar](1) NULL,
	[PROCESS_EXECUTION_ENABLED_FLAG] [varchar](1) NULL,
	[PROCESS_QUALITY_ENABLED_FLAG] [varchar](1) NULL,
	[PROCESS_SUPPLY_LOCATOR_ID] [decimal](28, 7) NULL,
	[PROCESS_SUPPLY_SUBINVENTORY] [varchar](10) NULL,
	[PROCESS_YIELD_LOCATOR_ID] [decimal](28, 7) NULL,
	[PROCESS_YIELD_SUBINVENTORY] [varchar](10) NULL,
	[RECIPE_ENABLED_FLAG] [varchar](1) NULL,
	[RETEST_INTERVAL] [decimal](28, 7) NULL,
	[CHARGE_PERIODICITY_CODE] [varchar](3) NULL,
	[REPAIR_LEADTIME] [decimal](28, 7) NULL,
	[REPAIR_YIELD] [decimal](28, 7) NULL,
	[PREPOSITION_POINT] [varchar](1) NULL,
	[REPAIR_PROGRAM] [decimal](28, 7) NULL,
	[SUBCONTRACTING_COMPONENT] [decimal](28, 7) NULL,
	[OUTSOURCED_ASSEMBLY] [decimal](28, 7) NULL,
	[EGO_MASTER_ITEMS_DFF_CTX] [varchar](1) NULL,
	[GDSN_OUTBOUND_ENABLED_FLAG] [varchar](1) NULL,
	[TRADE_ITEM_DESCRIPTOR] [varchar](35) NULL,
	[STYLE_ITEM_ID] [decimal](28, 7) NULL,
	[STYLE_ITEM_FLAG] [varchar](1) NULL,
	[LAST_SUBMITTED_NIR_ID] [decimal](28, 7) NULL,
	[DEFAULT_MATERIAL_STATUS_ID] [decimal](28, 7) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[NEWTABLE_1]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[NEWTABLE_1](
	[BUSINESS_ENTITY] [varchar](12) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[ITEM] [varchar](40) NULL,
	[GSV] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_ORDER_HEADERS_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_ORDER_HEADERS_ALL](
	[HEADER_ID] [decimal](28, 7) NULL,
	[ORG_ID] [decimal](28, 7) NULL,
	[ORDER_TYPE_ID] [decimal](28, 7) NULL,
	[ORDER_NUMBER] [decimal](28, 7) NULL,
	[VERSION_NUMBER] [decimal](28, 7) NULL,
	[EXPIRATION_DATE] [datetime2](7) NULL,
	[ORDER_SOURCE_ID] [decimal](28, 7) NULL,
	[SOURCE_DOCUMENT_TYPE_ID] [decimal](28, 7) NULL,
	[ORIG_SYS_DOCUMENT_REF] [varchar](50) NULL,
	[SOURCE_DOCUMENT_ID] [decimal](28, 7) NULL,
	[ORDERED_DATE] [datetime2](7) NULL,
	[REQUEST_DATE] [datetime2](7) NULL,
	[PRICING_DATE] [datetime2](7) NULL,
	[SHIPMENT_PRIORITY_CODE] [varchar](30) NULL,
	[DEMAND_CLASS_CODE] [varchar](30) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[TAX_EXEMPT_NUMBER] [varchar](80) NULL,
	[TAX_EXEMPT_REASON_CODE] [varchar](30) NULL,
	[CONVERSION_RATE] [decimal](28, 7) NULL,
	[CONVERSION_TYPE_CODE] [varchar](30) NULL,
	[CONVERSION_RATE_DATE] [datetime2](7) NULL,
	[PARTIAL_SHIPMENTS_ALLOWED] [varchar](1) NULL,
	[SHIP_TOLERANCE_ABOVE] [decimal](28, 7) NULL,
	[SHIP_TOLERANCE_BELOW] [decimal](28, 7) NULL,
	[TRANSACTIONAL_CURR_CODE] [varchar](15) NULL,
	[AGREEMENT_ID] [decimal](28, 7) NULL,
	[TAX_POINT_CODE] [varchar](30) NULL,
	[CUST_PO_NUMBER] [varchar](50) NULL,
	[INVOICING_RULE_ID] [decimal](15, 0) NULL,
	[ACCOUNTING_RULE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[SHIPPING_METHOD_CODE] [varchar](30) NULL,
	[FREIGHT_CARRIER_CODE] [varchar](30) NULL,
	[FOB_POINT_CODE] [varchar](30) NULL,
	[FREIGHT_TERMS_CODE] [varchar](30) NULL,
	[SOLD_FROM_ORG_ID] [decimal](28, 7) NULL,
	[SOLD_TO_ORG_ID] [decimal](28, 7) NULL,
	[SHIP_FROM_ORG_ID] [decimal](28, 7) NULL,
	[SHIP_TO_ORG_ID] [decimal](28, 7) NULL,
	[INVOICE_TO_ORG_ID] [decimal](28, 7) NULL,
	[DELIVER_TO_ORG_ID] [decimal](28, 7) NULL,
	[SOLD_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[INVOICE_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[DELIVER_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL,
	[CONTEXT] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](240) NULL,
	[CANCELLED_FLAG] [varchar](1) NULL,
	[OPEN_FLAG] [varchar](1) NULL,
	[BOOKED_FLAG] [varchar](1) NULL,
	[SALESREP_ID] [decimal](15, 0) NULL,
	[RETURN_REASON_CODE] [varchar](30) NULL,
	[ORDER_DATE_TYPE_CODE] [varchar](30) NULL,
	[EARLIEST_SCHEDULE_LIMIT] [decimal](28, 7) NULL,
	[LATEST_SCHEDULE_LIMIT] [decimal](28, 7) NULL,
	[PAYMENT_TYPE_CODE] [varchar](30) NULL,
	[PAYMENT_AMOUNT] [decimal](28, 7) NULL,
	[CHECK_NUMBER] [varchar](50) NULL,
	[CREDIT_CARD_CODE] [varchar](80) NULL,
	[CREDIT_CARD_HOLDER_NAME] [varchar](80) NULL,
	[CREDIT_CARD_NUMBER] [varchar](80) NULL,
	[CREDIT_CARD_EXPIRATION_DATE] [datetime2](7) NULL,
	[CREDIT_CARD_APPROVAL_CODE] [varchar](80) NULL,
	[SALES_CHANNEL_CODE] [varchar](30) NULL,
	[FIRST_ACK_CODE] [varchar](30) NULL,
	[FIRST_ACK_DATE] [datetime2](7) NULL,
	[LAST_ACK_CODE] [varchar](30) NULL,
	[LAST_ACK_DATE] [datetime2](7) NULL,
	[ORDER_CATEGORY_CODE] [varchar](30) NULL,
	[CHANGE_SEQUENCE] [varchar](50) NULL,
	[DROP_SHIP_FLAG] [varchar](1) NULL,
	[CUSTOMER_PAYMENT_TERM_ID] [decimal](28, 7) NULL,
	[SHIPPING_INSTRUCTIONS] [varchar](2000) NULL,
	[PACKING_INSTRUCTIONS] [varchar](2000) NULL,
	[TP_CONTEXT] [varchar](30) NULL,
	[TP_ATTRIBUTE1] [varchar](240) NULL,
	[TP_ATTRIBUTE2] [varchar](240) NULL,
	[TP_ATTRIBUTE3] [varchar](240) NULL,
	[TP_ATTRIBUTE4] [varchar](240) NULL,
	[TP_ATTRIBUTE5] [varchar](240) NULL,
	[TP_ATTRIBUTE6] [varchar](240) NULL,
	[TP_ATTRIBUTE7] [varchar](240) NULL,
	[TP_ATTRIBUTE8] [varchar](240) NULL,
	[TP_ATTRIBUTE9] [varchar](240) NULL,
	[TP_ATTRIBUTE10] [varchar](240) NULL,
	[TP_ATTRIBUTE11] [varchar](240) NULL,
	[TP_ATTRIBUTE12] [varchar](240) NULL,
	[TP_ATTRIBUTE13] [varchar](240) NULL,
	[TP_ATTRIBUTE14] [varchar](240) NULL,
	[TP_ATTRIBUTE15] [varchar](240) NULL,
	[FLOW_STATUS_CODE] [varchar](30) NULL,
	[MARKETING_SOURCE_CODE_ID] [decimal](28, 7) NULL,
	[CREDIT_CARD_APPROVAL_DATE] [datetime2](7) NULL,
	[UPGRADED_FLAG] [varchar](1) NULL,
	[CUSTOMER_PREFERENCE_SET_CODE] [varchar](30) NULL,
	[BOOKED_DATE] [datetime2](7) NULL,
	[LOCK_CONTROL] [decimal](28, 7) NULL,
	[PRICE_REQUEST_CODE] [varchar](240) NULL,
	[BATCH_ID] [decimal](28, 7) NULL,
	[XML_MESSAGE_ID] [decimal](28, 7) NULL,
	[ACCOUNTING_RULE_DURATION] [decimal](15, 0) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[BLANKET_NUMBER] [decimal](28, 7) NULL,
	[SALES_DOCUMENT_TYPE_CODE] [varchar](30) NULL,
	[SOLD_TO_PHONE_ID] [decimal](28, 7) NULL,
	[FULFILLMENT_SET_NAME] [varchar](30) NULL,
	[LINE_SET_NAME] [varchar](30) NULL,
	[DEFAULT_FULFILLMENT_SET] [varchar](1) NULL,
	[TRANSACTION_PHASE_CODE] [varchar](30) NULL,
	[SALES_DOCUMENT_NAME] [varchar](240) NULL,
	[QUOTE_NUMBER] [decimal](28, 7) NULL,
	[QUOTE_DATE] [datetime2](7) NULL,
	[USER_STATUS_CODE] [varchar](30) NULL,
	[DRAFT_SUBMITTED_FLAG] [varchar](1) NULL,
	[SOURCE_DOCUMENT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[SOLD_TO_SITE_USE_ID] [decimal](28, 7) NULL,
	[SUPPLIER_SIGNATURE] [varchar](240) NULL,
	[SUPPLIER_SIGNATURE_DATE] [datetime2](7) NULL,
	[CUSTOMER_SIGNATURE] [varchar](240) NULL,
	[CUSTOMER_SIGNATURE_DATE] [datetime2](7) NULL,
	[MINISITE_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_CONTACT_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_SITE_USE_ID] [decimal](28, 7) NULL,
	[IB_OWNER] [varchar](60) NULL,
	[IB_CURRENT_LOCATION] [varchar](60) NULL,
	[IB_INSTALLED_AT_LOCATION] [varchar](60) NULL,
	[ORDER_FIRMED_DATE] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_ORDER_HEADERS_ALL_PRESTG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_ORDER_HEADERS_ALL_PRESTG](
	[HEADER_ID] [decimal](28, 7) NULL,
	[ORG_ID] [decimal](28, 7) NULL,
	[ORDER_TYPE_ID] [decimal](28, 7) NULL,
	[ORDER_NUMBER] [decimal](28, 7) NULL,
	[VERSION_NUMBER] [decimal](28, 7) NULL,
	[EXPIRATION_DATE] [datetime2](7) NULL,
	[ORDER_SOURCE_ID] [decimal](28, 7) NULL,
	[SOURCE_DOCUMENT_TYPE_ID] [decimal](28, 7) NULL,
	[ORIG_SYS_DOCUMENT_REF] [varchar](50) NULL,
	[SOURCE_DOCUMENT_ID] [decimal](28, 7) NULL,
	[ORDERED_DATE] [datetime2](7) NULL,
	[REQUEST_DATE] [datetime2](7) NULL,
	[PRICING_DATE] [datetime2](7) NULL,
	[SHIPMENT_PRIORITY_CODE] [varchar](30) NULL,
	[DEMAND_CLASS_CODE] [varchar](30) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[TAX_EXEMPT_NUMBER] [varchar](80) NULL,
	[TAX_EXEMPT_REASON_CODE] [varchar](30) NULL,
	[CONVERSION_RATE] [decimal](28, 7) NULL,
	[CONVERSION_TYPE_CODE] [varchar](30) NULL,
	[CONVERSION_RATE_DATE] [datetime2](7) NULL,
	[PARTIAL_SHIPMENTS_ALLOWED] [varchar](1) NULL,
	[SHIP_TOLERANCE_ABOVE] [decimal](28, 7) NULL,
	[SHIP_TOLERANCE_BELOW] [decimal](28, 7) NULL,
	[TRANSACTIONAL_CURR_CODE] [varchar](15) NULL,
	[AGREEMENT_ID] [decimal](28, 7) NULL,
	[TAX_POINT_CODE] [varchar](30) NULL,
	[CUST_PO_NUMBER] [varchar](50) NULL,
	[INVOICING_RULE_ID] [decimal](15, 0) NULL,
	[ACCOUNTING_RULE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[SHIPPING_METHOD_CODE] [varchar](30) NULL,
	[FREIGHT_CARRIER_CODE] [varchar](30) NULL,
	[FOB_POINT_CODE] [varchar](30) NULL,
	[FREIGHT_TERMS_CODE] [varchar](30) NULL,
	[SOLD_FROM_ORG_ID] [decimal](28, 7) NULL,
	[SOLD_TO_ORG_ID] [decimal](28, 7) NULL,
	[SHIP_FROM_ORG_ID] [decimal](28, 7) NULL,
	[SHIP_TO_ORG_ID] [decimal](28, 7) NULL,
	[INVOICE_TO_ORG_ID] [decimal](28, 7) NULL,
	[DELIVER_TO_ORG_ID] [decimal](28, 7) NULL,
	[SOLD_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[INVOICE_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[DELIVER_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL,
	[CONTEXT] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](240) NULL,
	[CANCELLED_FLAG] [varchar](1) NULL,
	[OPEN_FLAG] [varchar](1) NULL,
	[BOOKED_FLAG] [varchar](1) NULL,
	[SALESREP_ID] [decimal](15, 0) NULL,
	[RETURN_REASON_CODE] [varchar](30) NULL,
	[ORDER_DATE_TYPE_CODE] [varchar](30) NULL,
	[EARLIEST_SCHEDULE_LIMIT] [decimal](28, 7) NULL,
	[LATEST_SCHEDULE_LIMIT] [decimal](28, 7) NULL,
	[PAYMENT_TYPE_CODE] [varchar](30) NULL,
	[PAYMENT_AMOUNT] [decimal](28, 7) NULL,
	[CHECK_NUMBER] [varchar](50) NULL,
	[CREDIT_CARD_CODE] [varchar](80) NULL,
	[CREDIT_CARD_HOLDER_NAME] [varchar](80) NULL,
	[CREDIT_CARD_NUMBER] [varchar](80) NULL,
	[CREDIT_CARD_EXPIRATION_DATE] [datetime2](7) NULL,
	[CREDIT_CARD_APPROVAL_CODE] [varchar](80) NULL,
	[SALES_CHANNEL_CODE] [varchar](30) NULL,
	[FIRST_ACK_CODE] [varchar](30) NULL,
	[FIRST_ACK_DATE] [datetime2](7) NULL,
	[LAST_ACK_CODE] [varchar](30) NULL,
	[LAST_ACK_DATE] [datetime2](7) NULL,
	[ORDER_CATEGORY_CODE] [varchar](30) NULL,
	[CHANGE_SEQUENCE] [varchar](50) NULL,
	[DROP_SHIP_FLAG] [varchar](1) NULL,
	[CUSTOMER_PAYMENT_TERM_ID] [decimal](28, 7) NULL,
	[SHIPPING_INSTRUCTIONS] [varchar](2000) NULL,
	[PACKING_INSTRUCTIONS] [varchar](2000) NULL,
	[TP_CONTEXT] [varchar](30) NULL,
	[TP_ATTRIBUTE1] [varchar](240) NULL,
	[TP_ATTRIBUTE2] [varchar](240) NULL,
	[TP_ATTRIBUTE3] [varchar](240) NULL,
	[TP_ATTRIBUTE4] [varchar](240) NULL,
	[TP_ATTRIBUTE5] [varchar](240) NULL,
	[TP_ATTRIBUTE6] [varchar](240) NULL,
	[TP_ATTRIBUTE7] [varchar](240) NULL,
	[TP_ATTRIBUTE8] [varchar](240) NULL,
	[TP_ATTRIBUTE9] [varchar](240) NULL,
	[TP_ATTRIBUTE10] [varchar](240) NULL,
	[TP_ATTRIBUTE11] [varchar](240) NULL,
	[TP_ATTRIBUTE12] [varchar](240) NULL,
	[TP_ATTRIBUTE13] [varchar](240) NULL,
	[TP_ATTRIBUTE14] [varchar](240) NULL,
	[TP_ATTRIBUTE15] [varchar](240) NULL,
	[FLOW_STATUS_CODE] [varchar](30) NULL,
	[MARKETING_SOURCE_CODE_ID] [decimal](28, 7) NULL,
	[CREDIT_CARD_APPROVAL_DATE] [datetime2](7) NULL,
	[UPGRADED_FLAG] [varchar](1) NULL,
	[CUSTOMER_PREFERENCE_SET_CODE] [varchar](30) NULL,
	[BOOKED_DATE] [datetime2](7) NULL,
	[LOCK_CONTROL] [decimal](28, 7) NULL,
	[PRICE_REQUEST_CODE] [varchar](240) NULL,
	[BATCH_ID] [decimal](28, 7) NULL,
	[XML_MESSAGE_ID] [decimal](28, 7) NULL,
	[ACCOUNTING_RULE_DURATION] [decimal](15, 0) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[BLANKET_NUMBER] [decimal](28, 7) NULL,
	[SALES_DOCUMENT_TYPE_CODE] [varchar](30) NULL,
	[SOLD_TO_PHONE_ID] [decimal](28, 7) NULL,
	[FULFILLMENT_SET_NAME] [varchar](30) NULL,
	[LINE_SET_NAME] [varchar](30) NULL,
	[DEFAULT_FULFILLMENT_SET] [varchar](1) NULL,
	[TRANSACTION_PHASE_CODE] [varchar](30) NULL,
	[SALES_DOCUMENT_NAME] [varchar](240) NULL,
	[QUOTE_NUMBER] [decimal](28, 7) NULL,
	[QUOTE_DATE] [datetime2](7) NULL,
	[USER_STATUS_CODE] [varchar](30) NULL,
	[DRAFT_SUBMITTED_FLAG] [varchar](1) NULL,
	[SOURCE_DOCUMENT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[SOLD_TO_SITE_USE_ID] [decimal](28, 7) NULL,
	[SUPPLIER_SIGNATURE] [varchar](240) NULL,
	[SUPPLIER_SIGNATURE_DATE] [datetime2](7) NULL,
	[CUSTOMER_SIGNATURE] [varchar](240) NULL,
	[CUSTOMER_SIGNATURE_DATE] [datetime2](7) NULL,
	[MINISITE_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_CONTACT_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_SITE_USE_ID] [decimal](28, 7) NULL,
	[IB_OWNER] [varchar](60) NULL,
	[IB_CURRENT_LOCATION] [varchar](60) NULL,
	[IB_INSTALLED_AT_LOCATION] [varchar](60) NULL,
	[ORDER_FIRMED_DATE] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_ORDER_LINES_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_ORDER_LINES_ALL](
	[LINE_ID] [int] NULL,
	[ORG_ID] [int] NULL,
	[HEADER_ID] [int] NULL,
	[LINE_TYPE_ID] [int] NULL,
	[LINE_NUMBER] [int] NULL,
	[ORDERED_ITEM] [varchar](2000) NULL,
	[REQUEST_DATE] [datetime2](7) NULL,
	[PROMISE_DATE] [datetime2](7) NULL,
	[SCHEDULE_SHIP_DATE] [datetime2](7) NULL,
	[ORDER_QUANTITY_UOM] [varchar](3) NULL,
	[PRICING_QUANTITY] [int] NULL,
	[PRICING_QUANTITY_UOM] [varchar](3) NULL,
	[CANCELLED_QUANTITY] [int] NULL,
	[SHIPPED_QUANTITY] [int] NULL,
	[ORDERED_QUANTITY] [int] NULL,
	[FULFILLED_QUANTITY] [int] NULL,
	[SHIPPING_QUANTITY] [int] NULL,
	[SHIPPING_QUANTITY_UOM] [varchar](3) NULL,
	[DELIVERY_LEAD_TIME] [int] NULL,
	[TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[TAX_EXEMPT_NUMBER] [varchar](80) NULL,
	[TAX_EXEMPT_REASON_CODE] [varchar](30) NULL,
	[SHIP_FROM_ORG_ID] [int] NULL,
	[SHIP_TO_ORG_ID] [int] NULL,
	[INVOICE_TO_ORG_ID] [int] NULL,
	[DELIVER_TO_ORG_ID] [int] NULL,
	[SHIP_TO_CONTACT_ID] [int] NULL,
	[DELIVER_TO_CONTACT_ID] [int] NULL,
	[INVOICE_TO_CONTACT_ID] [int] NULL,
	[INTMED_SHIP_TO_ORG_ID] [int] NULL,
	[INTMED_SHIP_TO_CONTACT_ID] [int] NULL,
	[SOLD_FROM_ORG_ID] [int] NULL,
	[SOLD_TO_ORG_ID] [int] NULL,
	[CUST_PO_NUMBER] [varchar](50) NULL,
	[SHIP_TOLERANCE_ABOVE] [int] NULL,
	[SHIP_TOLERANCE_BELOW] [int] NULL,
	[DEMAND_BUCKET_TYPE_CODE] [varchar](30) NULL,
	[VEH_CUS_ITEM_CUM_KEY_ID] [int] NULL,
	[RLA_SCHEDULE_TYPE_CODE] [varchar](30) NULL,
	[CUSTOMER_DOCK_CODE] [varchar](50) NULL,
	[CUSTOMER_JOB] [varchar](50) NULL,
	[CUSTOMER_PRODUCTION_LINE] [varchar](50) NULL,
	[CUST_MODEL_SERIAL_NUMBER] [varchar](50) NULL,
	[PROJECT_ID] [int] NULL,
	[TASK_ID] [int] NULL,
	[INVENTORY_ITEM_ID] [int] NULL,
	[TAX_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[TAX_RATE] [int] NULL,
	[INVOICE_INTERFACE_STATUS_CODE] [varchar](30) NULL,
	[DEMAND_CLASS_CODE] [varchar](30) NULL,
	[PRICE_LIST_ID] [int] NULL,
	[PRICING_DATE] [datetime2](7) NULL,
	[SHIPMENT_NUMBER] [int] NULL,
	[AGREEMENT_ID] [int] NULL,
	[SHIPMENT_PRIORITY_CODE] [varchar](30) NULL,
	[SHIPPING_METHOD_CODE] [varchar](30) NULL,
	[FREIGHT_CARRIER_CODE] [varchar](30) NULL,
	[FREIGHT_TERMS_CODE] [varchar](30) NULL,
	[FOB_POINT_CODE] [varchar](30) NULL,
	[TAX_POINT_CODE] [varchar](30) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[INVOICING_RULE_ID] [decimal](15, 0) NULL,
	[ACCOUNTING_RULE_ID] [decimal](15, 0) NULL,
	[SOURCE_DOCUMENT_TYPE_ID] [int] NULL,
	[ORIG_SYS_DOCUMENT_REF] [varchar](50) NULL,
	[SOURCE_DOCUMENT_ID] [int] NULL,
	[ORIG_SYS_LINE_REF] [varchar](50) NULL,
	[SOURCE_DOCUMENT_LINE_ID] [int] NULL,
	[REFERENCE_LINE_ID] [int] NULL,
	[REFERENCE_TYPE] [varchar](30) NULL,
	[REFERENCE_HEADER_ID] [int] NULL,
	[ITEM_REVISION] [varchar](3) NULL,
	[UNIT_SELLING_PRICE] [int] NULL,
	[UNIT_LIST_PRICE] [int] NULL,
	[TAX_VALUE] [int] NULL,
	[CONTEXT] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](240) NULL,
	[PRICING_CONTEXT] [varchar](30) NULL,
	[PRICING_ATTRIBUTE1] [varchar](240) NULL,
	[PRICING_ATTRIBUTE2] [varchar](240) NULL,
	[PRICING_ATTRIBUTE3] [varchar](240) NULL,
	[PRICING_ATTRIBUTE4] [varchar](240) NULL,
	[PRICING_ATTRIBUTE5] [varchar](240) NULL,
	[PRICING_ATTRIBUTE6] [varchar](240) NULL,
	[PRICING_ATTRIBUTE7] [varchar](240) NULL,
	[PRICING_ATTRIBUTE8] [varchar](240) NULL,
	[PRICING_ATTRIBUTE9] [varchar](240) NULL,
	[PRICING_ATTRIBUTE10] [varchar](240) NULL,
	[INDUSTRY_CONTEXT] [varchar](30) NULL,
	[INDUSTRY_ATTRIBUTE1] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE2] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE3] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE4] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE5] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE6] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE7] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE8] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE9] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE10] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE11] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE13] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE12] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE14] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE15] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE16] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE17] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE18] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE19] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE20] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE21] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE22] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE23] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE24] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE25] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE26] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE27] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE28] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE29] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE30] [varchar](240) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [int] NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [int] NULL,
	[LAST_UPDATE_LOGIN] [int] NULL,
	[PROGRAM_APPLICATION_ID] [int] NULL,
	[PROGRAM_ID] [int] NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[REQUEST_ID] [int] NULL,
	[TOP_MODEL_LINE_ID] [int] NULL,
	[LINK_TO_LINE_ID] [int] NULL,
	[COMPONENT_SEQUENCE_ID] [int] NULL,
	[COMPONENT_CODE] [varchar](1000) NULL,
	[CONFIG_DISPLAY_SEQUENCE] [int] NULL,
	[SORT_ORDER] [varchar](2000) NULL,
	[ITEM_TYPE_CODE] [varchar](30) NULL,
	[OPTION_NUMBER] [int] NULL,
	[OPTION_FLAG] [varchar](1) NULL,
	[DEP_PLAN_REQUIRED_FLAG] [varchar](1) NULL,
	[VISIBLE_DEMAND_FLAG] [varchar](1) NULL,
	[LINE_CATEGORY_CODE] [varchar](30) NULL,
	[ACTUAL_SHIPMENT_DATE] [datetime2](7) NULL,
	[CUSTOMER_TRX_LINE_ID] [int] NULL,
	[RETURN_CONTEXT] [varchar](30) NULL,
	[RETURN_ATTRIBUTE1] [varchar](240) NULL,
	[RETURN_ATTRIBUTE2] [varchar](240) NULL,
	[RETURN_ATTRIBUTE3] [varchar](240) NULL,
	[RETURN_ATTRIBUTE4] [varchar](240) NULL,
	[RETURN_ATTRIBUTE5] [varchar](240) NULL,
	[RETURN_ATTRIBUTE6] [varchar](240) NULL,
	[RETURN_ATTRIBUTE7] [varchar](240) NULL,
	[RETURN_ATTRIBUTE8] [varchar](240) NULL,
	[RETURN_ATTRIBUTE9] [varchar](240) NULL,
	[RETURN_ATTRIBUTE10] [varchar](240) NULL,
	[RETURN_ATTRIBUTE11] [varchar](240) NULL,
	[RETURN_ATTRIBUTE12] [varchar](240) NULL,
	[RETURN_ATTRIBUTE13] [varchar](240) NULL,
	[RETURN_ATTRIBUTE14] [varchar](240) NULL,
	[RETURN_ATTRIBUTE15] [varchar](240) NULL,
	[ACTUAL_ARRIVAL_DATE] [datetime2](7) NULL,
	[ATO_LINE_ID] [int] NULL,
	[AUTO_SELECTED_QUANTITY] [int] NULL,
	[COMPONENT_NUMBER] [int] NULL,
	[EARLIEST_ACCEPTABLE_DATE] [datetime2](7) NULL,
	[EXPLOSION_DATE] [datetime2](7) NULL,
	[LATEST_ACCEPTABLE_DATE] [datetime2](7) NULL,
	[MODEL_GROUP_NUMBER] [int] NULL,
	[SCHEDULE_ARRIVAL_DATE] [datetime2](7) NULL,
	[SHIP_MODEL_COMPLETE_FLAG] [varchar](1) NULL,
	[SCHEDULE_STATUS_CODE] [varchar](30) NULL,
	[SOURCE_TYPE_CODE] [varchar](30) NULL,
	[CANCELLED_FLAG] [varchar](1) NULL,
	[OPEN_FLAG] [varchar](1) NULL,
	[BOOKED_FLAG] [varchar](1) NULL,
	[SALESREP_ID] [int] NULL,
	[RETURN_REASON_CODE] [varchar](30) NULL,
	[ARRIVAL_SET_ID] [int] NULL,
	[SHIP_SET_ID] [int] NULL,
	[SPLIT_FROM_LINE_ID] [int] NULL,
	[CUST_PRODUCTION_SEQ_NUM] [varchar](50) NULL,
	[AUTHORIZED_TO_SHIP_FLAG] [varchar](1) NULL,
	[OVER_SHIP_REASON_CODE] [varchar](30) NULL,
	[OVER_SHIP_RESOLVED_FLAG] [varchar](1) NULL,
	[ORDERED_ITEM_ID] [int] NULL,
	[ITEM_IDENTIFIER_TYPE] [varchar](30) NULL,
	[CONFIGURATION_ID] [int] NULL,
	[COMMITMENT_ID] [int] NULL,
	[SHIPPING_INTERFACED_FLAG] [varchar](1) NULL,
	[CREDIT_INVOICE_LINE_ID] [int] NULL,
	[FIRST_ACK_CODE] [varchar](30) NULL,
	[FIRST_ACK_DATE] [datetime2](7) NULL,
	[LAST_ACK_CODE] [varchar](30) NULL,
	[LAST_ACK_DATE] [datetime2](7) NULL,
	[PLANNING_PRIORITY] [int] NULL,
	[ORDER_SOURCE_ID] [int] NULL,
	[ORIG_SYS_SHIPMENT_REF] [varchar](50) NULL,
	[CHANGE_SEQUENCE] [varchar](50) NULL,
	[DROP_SHIP_FLAG] [varchar](1) NULL,
	[CUSTOMER_LINE_NUMBER] [varchar](50) NULL,
	[CUSTOMER_SHIPMENT_NUMBER] [varchar](50) NULL,
	[CUSTOMER_ITEM_NET_PRICE] [int] NULL,
	[CUSTOMER_PAYMENT_TERM_ID] [float] NULL,
	[FULFILLED_FLAG] [varchar](1) NULL,
	[END_ITEM_UNIT_NUMBER] [varchar](30) NULL,
	[CONFIG_HEADER_ID] [int] NULL,
	[CONFIG_REV_NBR] [int] NULL,
	[MFG_COMPONENT_SEQUENCE_ID] [int] NULL,
	[SHIPPING_INSTRUCTIONS] [varchar](2000) NULL,
	[PACKING_INSTRUCTIONS] [varchar](2000) NULL,
	[INVOICED_QUANTITY] [int] NULL,
	[REFERENCE_CUSTOMER_TRX_LINE_ID] [int] NULL,
	[SPLIT_BY] [varchar](30) NULL,
	[LINE_SET_ID] [int] NULL,
	[SERVICE_TXN_REASON_CODE] [varchar](30) NULL,
	[SERVICE_TXN_COMMENTS] [varchar](2000) NULL,
	[SERVICE_DURATION] [int] NULL,
	[SERVICE_START_DATE] [datetime2](7) NULL,
	[SERVICE_END_DATE] [datetime2](7) NULL,
	[SERVICE_COTERMINATE_FLAG] [varchar](1) NULL,
	[UNIT_LIST_PERCENT] [int] NULL,
	[UNIT_SELLING_PERCENT] [int] NULL,
	[UNIT_PERCENT_BASE_PRICE] [int] NULL,
	[SERVICE_NUMBER] [int] NULL,
	[SERVICE_PERIOD] [varchar](3) NULL,
	[SHIPPABLE_FLAG] [varchar](1) NULL,
	[MODEL_REMNANT_FLAG] [varchar](1) NULL,
	[RE_SOURCE_FLAG] [varchar](1) NULL,
	[FLOW_STATUS_CODE] [varchar](30) NULL,
	[TP_CONTEXT] [varchar](30) NULL,
	[TP_ATTRIBUTE1] [varchar](240) NULL,
	[TP_ATTRIBUTE2] [varchar](240) NULL,
	[TP_ATTRIBUTE3] [varchar](240) NULL,
	[TP_ATTRIBUTE4] [varchar](240) NULL,
	[TP_ATTRIBUTE5] [varchar](240) NULL,
	[TP_ATTRIBUTE6] [varchar](240) NULL,
	[TP_ATTRIBUTE7] [varchar](240) NULL,
	[TP_ATTRIBUTE8] [varchar](240) NULL,
	[TP_ATTRIBUTE9] [varchar](240) NULL,
	[TP_ATTRIBUTE10] [varchar](240) NULL,
	[TP_ATTRIBUTE11] [varchar](240) NULL,
	[TP_ATTRIBUTE12] [varchar](240) NULL,
	[TP_ATTRIBUTE13] [varchar](240) NULL,
	[TP_ATTRIBUTE14] [varchar](240) NULL,
	[TP_ATTRIBUTE15] [varchar](240) NULL,
	[FULFILLMENT_METHOD_CODE] [varchar](30) NULL,
	[MARKETING_SOURCE_CODE_ID] [int] NULL,
	[SERVICE_REFERENCE_TYPE_CODE] [varchar](30) NULL,
	[SERVICE_REFERENCE_LINE_ID] [int] NULL,
	[SERVICE_REFERENCE_SYSTEM_ID] [int] NULL,
	[CALCULATE_PRICE_FLAG] [varchar](1) NULL,
	[UPGRADED_FLAG] [varchar](1) NULL,
	[REVENUE_AMOUNT] [int] NULL,
	[FULFILLMENT_DATE] [datetime2](7) NULL,
	[PREFERRED_GRADE] [varchar](150) NULL,
	[ORDERED_QUANTITY2] [int] NULL,
	[ORDERED_QUANTITY_UOM2] [varchar](3) NULL,
	[SHIPPING_QUANTITY2] [int] NULL,
	[CANCELLED_QUANTITY2] [int] NULL,
	[SHIPPED_QUANTITY2] [int] NULL,
	[SHIPPING_QUANTITY_UOM2] [varchar](3) NULL,
	[FULFILLED_QUANTITY2] [int] NULL,
	[MFG_LEAD_TIME] [int] NULL,
	[LOCK_CONTROL] [int] NULL,
	[SUBINVENTORY] [varchar](10) NULL,
	[UNIT_LIST_PRICE_PER_PQTY] [int] NULL,
	[UNIT_SELLING_PRICE_PER_PQTY] [int] NULL,
	[PRICE_REQUEST_CODE] [varchar](240) NULL,
	[ORIGINAL_INVENTORY_ITEM_ID] [int] NULL,
	[ORIGINAL_ORDERED_ITEM_ID] [int] NULL,
	[ORIGINAL_ORDERED_ITEM] [varchar](2000) NULL,
	[ORIGINAL_ITEM_IDENTIFIER_TYPE] [varchar](30) NULL,
	[ITEM_SUBSTITUTION_TYPE_CODE] [varchar](30) NULL,
	[OVERRIDE_ATP_DATE_CODE] [varchar](30) NULL,
	[LATE_DEMAND_PENALTY_FACTOR] [int] NULL,
	[ACCOUNTING_RULE_DURATION] [decimal](15, 0) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[USER_ITEM_DESCRIPTION] [varchar](1000) NULL,
	[UNIT_COST] [int] NULL,
	[ITEM_RELATIONSHIP_TYPE] [int] NULL,
	[BLANKET_LINE_NUMBER] [int] NULL,
	[BLANKET_NUMBER] [int] NULL,
	[BLANKET_VERSION_NUMBER] [int] NULL,
	[SALES_DOCUMENT_TYPE_CODE] [varchar](30) NULL,
	[FIRM_DEMAND_FLAG] [varchar](1) NULL,
	[EARLIEST_SHIP_DATE] [datetime2](7) NULL,
	[TRANSACTION_PHASE_CODE] [varchar](30) NULL,
	[SOURCE_DOCUMENT_VERSION_NUMBER] [int] NULL,
	[PAYMENT_TYPE_CODE] [varchar](30) NULL,
	[MINISITE_ID] [int] NULL,
	[END_CUSTOMER_ID] [int] NULL,
	[END_CUSTOMER_CONTACT_ID] [int] NULL,
	[END_CUSTOMER_SITE_USE_ID] [int] NULL,
	[IB_OWNER] [varchar](60) NULL,
	[IB_CURRENT_LOCATION] [varchar](60) NULL,
	[IB_INSTALLED_AT_LOCATION] [varchar](60) NULL,
	[RETROBILL_REQUEST_ID] [int] NULL,
	[ORIGINAL_LIST_PRICE] [int] NULL,
	[SERVICE_CREDIT_ELIGIBLE_CODE] [varchar](30) NULL,
	[ORDER_FIRMED_DATE] [datetime2](7) NULL,
	[ACTUAL_FULFILLMENT_DATE] [datetime2](7) NULL,
	[CHARGE_PERIODICITY_CODE] [varchar](3) NULL,
	[CONTINGENCY_ID] [int] NULL,
	[REVREC_EVENT_CODE] [varchar](30) NULL,
	[REVREC_EXPIRATION_DAYS] [int] NULL,
	[ACCEPTED_QUANTITY] [int] NULL,
	[ACCEPTED_BY] [int] NULL,
	[REVREC_COMMENTS] [varchar](2000) NULL,
	[REVREC_REFERENCE_DOCUMENT] [varchar](240) NULL,
	[REVREC_SIGNATURE] [varchar](240) NULL,
	[REVREC_SIGNATURE_DATE] [datetime2](7) NULL,
	[REVREC_IMPLICIT_FLAG] [varchar](1) NULL,
	[BYPASS_SCH_FLAG] [varchar](1) NULL,
	[PRE_EXPLODED_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_ORDER_LINES_ALL_PRESTG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_ORDER_LINES_ALL_PRESTG](
	[LINE_ID] [decimal](28, 7) NULL,
	[ORG_ID] [decimal](28, 7) NULL,
	[HEADER_ID] [decimal](28, 7) NULL,
	[LINE_TYPE_ID] [decimal](28, 7) NULL,
	[LINE_NUMBER] [decimal](28, 7) NULL,
	[ORDERED_ITEM] [varchar](2000) NULL,
	[REQUEST_DATE] [datetime2](7) NULL,
	[PROMISE_DATE] [datetime2](7) NULL,
	[SCHEDULE_SHIP_DATE] [datetime2](7) NULL,
	[ORDER_QUANTITY_UOM] [varchar](3) NULL,
	[PRICING_QUANTITY] [decimal](28, 7) NULL,
	[PRICING_QUANTITY_UOM] [varchar](3) NULL,
	[CANCELLED_QUANTITY] [decimal](28, 7) NULL,
	[SHIPPED_QUANTITY] [decimal](28, 7) NULL,
	[ORDERED_QUANTITY] [decimal](28, 7) NULL,
	[FULFILLED_QUANTITY] [decimal](28, 7) NULL,
	[SHIPPING_QUANTITY] [decimal](28, 7) NULL,
	[SHIPPING_QUANTITY_UOM] [varchar](3) NULL,
	[DELIVERY_LEAD_TIME] [decimal](28, 7) NULL,
	[TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[TAX_EXEMPT_NUMBER] [varchar](80) NULL,
	[TAX_EXEMPT_REASON_CODE] [varchar](30) NULL,
	[SHIP_FROM_ORG_ID] [decimal](28, 7) NULL,
	[SHIP_TO_ORG_ID] [decimal](28, 7) NULL,
	[INVOICE_TO_ORG_ID] [decimal](28, 7) NULL,
	[DELIVER_TO_ORG_ID] [decimal](28, 7) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[DELIVER_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[INVOICE_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[INTMED_SHIP_TO_ORG_ID] [decimal](28, 7) NULL,
	[INTMED_SHIP_TO_CONTACT_ID] [decimal](28, 7) NULL,
	[SOLD_FROM_ORG_ID] [decimal](28, 7) NULL,
	[SOLD_TO_ORG_ID] [decimal](28, 7) NULL,
	[CUST_PO_NUMBER] [varchar](50) NULL,
	[SHIP_TOLERANCE_ABOVE] [decimal](28, 7) NULL,
	[SHIP_TOLERANCE_BELOW] [decimal](28, 7) NULL,
	[DEMAND_BUCKET_TYPE_CODE] [varchar](30) NULL,
	[VEH_CUS_ITEM_CUM_KEY_ID] [decimal](28, 7) NULL,
	[RLA_SCHEDULE_TYPE_CODE] [varchar](30) NULL,
	[CUSTOMER_DOCK_CODE] [varchar](50) NULL,
	[CUSTOMER_JOB] [varchar](50) NULL,
	[CUSTOMER_PRODUCTION_LINE] [varchar](50) NULL,
	[CUST_MODEL_SERIAL_NUMBER] [varchar](50) NULL,
	[PROJECT_ID] [decimal](28, 7) NULL,
	[TASK_ID] [decimal](28, 7) NULL,
	[INVENTORY_ITEM_ID] [decimal](28, 7) NULL,
	[TAX_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[TAX_RATE] [decimal](28, 7) NULL,
	[INVOICE_INTERFACE_STATUS_CODE] [varchar](30) NULL,
	[DEMAND_CLASS_CODE] [varchar](30) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[PRICING_DATE] [datetime2](7) NULL,
	[SHIPMENT_NUMBER] [decimal](28, 7) NULL,
	[AGREEMENT_ID] [decimal](28, 7) NULL,
	[SHIPMENT_PRIORITY_CODE] [varchar](30) NULL,
	[SHIPPING_METHOD_CODE] [varchar](30) NULL,
	[FREIGHT_CARRIER_CODE] [varchar](30) NULL,
	[FREIGHT_TERMS_CODE] [varchar](30) NULL,
	[FOB_POINT_CODE] [varchar](30) NULL,
	[TAX_POINT_CODE] [varchar](30) NULL,
	[PAYMENT_TERM_ID] [decimal](15, 0) NULL,
	[INVOICING_RULE_ID] [decimal](15, 0) NULL,
	[ACCOUNTING_RULE_ID] [decimal](15, 0) NULL,
	[SOURCE_DOCUMENT_TYPE_ID] [decimal](28, 7) NULL,
	[ORIG_SYS_DOCUMENT_REF] [varchar](50) NULL,
	[SOURCE_DOCUMENT_ID] [decimal](28, 7) NULL,
	[ORIG_SYS_LINE_REF] [varchar](50) NULL,
	[SOURCE_DOCUMENT_LINE_ID] [decimal](28, 7) NULL,
	[REFERENCE_LINE_ID] [decimal](28, 7) NULL,
	[REFERENCE_TYPE] [varchar](30) NULL,
	[REFERENCE_HEADER_ID] [decimal](28, 7) NULL,
	[ITEM_REVISION] [varchar](3) NULL,
	[UNIT_SELLING_PRICE] [decimal](28, 7) NULL,
	[UNIT_LIST_PRICE] [decimal](28, 7) NULL,
	[TAX_VALUE] [decimal](28, 7) NULL,
	[CONTEXT] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](240) NULL,
	[PRICING_CONTEXT] [varchar](30) NULL,
	[PRICING_ATTRIBUTE1] [varchar](240) NULL,
	[PRICING_ATTRIBUTE2] [varchar](240) NULL,
	[PRICING_ATTRIBUTE3] [varchar](240) NULL,
	[PRICING_ATTRIBUTE4] [varchar](240) NULL,
	[PRICING_ATTRIBUTE5] [varchar](240) NULL,
	[PRICING_ATTRIBUTE6] [varchar](240) NULL,
	[PRICING_ATTRIBUTE7] [varchar](240) NULL,
	[PRICING_ATTRIBUTE8] [varchar](240) NULL,
	[PRICING_ATTRIBUTE9] [varchar](240) NULL,
	[PRICING_ATTRIBUTE10] [varchar](240) NULL,
	[INDUSTRY_CONTEXT] [varchar](30) NULL,
	[INDUSTRY_ATTRIBUTE1] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE2] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE3] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE4] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE5] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE6] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE7] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE8] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE9] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE10] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE11] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE13] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE12] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE14] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE15] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE16] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE17] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE18] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE19] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE20] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE21] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE22] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE23] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE24] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE25] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE26] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE27] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE28] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE29] [varchar](240) NULL,
	[INDUSTRY_ATTRIBUTE30] [varchar](240) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL,
	[TOP_MODEL_LINE_ID] [decimal](28, 7) NULL,
	[LINK_TO_LINE_ID] [decimal](28, 7) NULL,
	[COMPONENT_SEQUENCE_ID] [decimal](28, 7) NULL,
	[COMPONENT_CODE] [varchar](1000) NULL,
	[CONFIG_DISPLAY_SEQUENCE] [decimal](28, 7) NULL,
	[SORT_ORDER] [varchar](2000) NULL,
	[ITEM_TYPE_CODE] [varchar](30) NULL,
	[OPTION_NUMBER] [decimal](28, 7) NULL,
	[OPTION_FLAG] [varchar](1) NULL,
	[DEP_PLAN_REQUIRED_FLAG] [varchar](1) NULL,
	[VISIBLE_DEMAND_FLAG] [varchar](1) NULL,
	[LINE_CATEGORY_CODE] [varchar](30) NULL,
	[ACTUAL_SHIPMENT_DATE] [datetime2](7) NULL,
	[CUSTOMER_TRX_LINE_ID] [decimal](28, 7) NULL,
	[RETURN_CONTEXT] [varchar](30) NULL,
	[RETURN_ATTRIBUTE1] [varchar](240) NULL,
	[RETURN_ATTRIBUTE2] [varchar](240) NULL,
	[RETURN_ATTRIBUTE3] [varchar](240) NULL,
	[RETURN_ATTRIBUTE4] [varchar](240) NULL,
	[RETURN_ATTRIBUTE5] [varchar](240) NULL,
	[RETURN_ATTRIBUTE6] [varchar](240) NULL,
	[RETURN_ATTRIBUTE7] [varchar](240) NULL,
	[RETURN_ATTRIBUTE8] [varchar](240) NULL,
	[RETURN_ATTRIBUTE9] [varchar](240) NULL,
	[RETURN_ATTRIBUTE10] [varchar](240) NULL,
	[RETURN_ATTRIBUTE11] [varchar](240) NULL,
	[RETURN_ATTRIBUTE12] [varchar](240) NULL,
	[RETURN_ATTRIBUTE13] [varchar](240) NULL,
	[RETURN_ATTRIBUTE14] [varchar](240) NULL,
	[RETURN_ATTRIBUTE15] [varchar](240) NULL,
	[ACTUAL_ARRIVAL_DATE] [datetime2](7) NULL,
	[ATO_LINE_ID] [decimal](28, 7) NULL,
	[AUTO_SELECTED_QUANTITY] [decimal](28, 7) NULL,
	[COMPONENT_NUMBER] [decimal](28, 7) NULL,
	[EARLIEST_ACCEPTABLE_DATE] [datetime2](7) NULL,
	[EXPLOSION_DATE] [datetime2](7) NULL,
	[LATEST_ACCEPTABLE_DATE] [datetime2](7) NULL,
	[MODEL_GROUP_NUMBER] [decimal](28, 7) NULL,
	[SCHEDULE_ARRIVAL_DATE] [datetime2](7) NULL,
	[SHIP_MODEL_COMPLETE_FLAG] [varchar](1) NULL,
	[SCHEDULE_STATUS_CODE] [varchar](30) NULL,
	[SOURCE_TYPE_CODE] [varchar](30) NULL,
	[CANCELLED_FLAG] [varchar](1) NULL,
	[OPEN_FLAG] [varchar](1) NULL,
	[BOOKED_FLAG] [varchar](1) NULL,
	[SALESREP_ID] [decimal](15, 0) NULL,
	[RETURN_REASON_CODE] [varchar](30) NULL,
	[ARRIVAL_SET_ID] [decimal](28, 7) NULL,
	[SHIP_SET_ID] [decimal](28, 7) NULL,
	[SPLIT_FROM_LINE_ID] [decimal](28, 7) NULL,
	[CUST_PRODUCTION_SEQ_NUM] [varchar](50) NULL,
	[AUTHORIZED_TO_SHIP_FLAG] [varchar](1) NULL,
	[OVER_SHIP_REASON_CODE] [varchar](30) NULL,
	[OVER_SHIP_RESOLVED_FLAG] [varchar](1) NULL,
	[ORDERED_ITEM_ID] [decimal](28, 7) NULL,
	[ITEM_IDENTIFIER_TYPE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](28, 7) NULL,
	[COMMITMENT_ID] [decimal](28, 7) NULL,
	[SHIPPING_INTERFACED_FLAG] [varchar](1) NULL,
	[CREDIT_INVOICE_LINE_ID] [decimal](28, 7) NULL,
	[FIRST_ACK_CODE] [varchar](30) NULL,
	[FIRST_ACK_DATE] [datetime2](7) NULL,
	[LAST_ACK_CODE] [varchar](30) NULL,
	[LAST_ACK_DATE] [datetime2](7) NULL,
	[PLANNING_PRIORITY] [decimal](28, 7) NULL,
	[ORDER_SOURCE_ID] [decimal](28, 7) NULL,
	[ORIG_SYS_SHIPMENT_REF] [varchar](50) NULL,
	[CHANGE_SEQUENCE] [varchar](50) NULL,
	[DROP_SHIP_FLAG] [varchar](1) NULL,
	[CUSTOMER_LINE_NUMBER] [varchar](50) NULL,
	[CUSTOMER_SHIPMENT_NUMBER] [varchar](50) NULL,
	[CUSTOMER_ITEM_NET_PRICE] [decimal](28, 7) NULL,
	[CUSTOMER_PAYMENT_TERM_ID] [varchar](100) NULL,
	[FULFILLED_FLAG] [varchar](1) NULL,
	[END_ITEM_UNIT_NUMBER] [varchar](30) NULL,
	[CONFIG_HEADER_ID] [decimal](28, 7) NULL,
	[CONFIG_REV_NBR] [decimal](28, 7) NULL,
	[MFG_COMPONENT_SEQUENCE_ID] [decimal](28, 7) NULL,
	[SHIPPING_INSTRUCTIONS] [varchar](2000) NULL,
	[PACKING_INSTRUCTIONS] [varchar](2000) NULL,
	[INVOICED_QUANTITY] [decimal](28, 7) NULL,
	[REFERENCE_CUSTOMER_TRX_LINE_ID] [decimal](28, 7) NULL,
	[SPLIT_BY] [varchar](30) NULL,
	[LINE_SET_ID] [decimal](28, 7) NULL,
	[SERVICE_TXN_REASON_CODE] [varchar](30) NULL,
	[SERVICE_TXN_COMMENTS] [varchar](2000) NULL,
	[SERVICE_DURATION] [decimal](28, 7) NULL,
	[SERVICE_START_DATE] [datetime2](7) NULL,
	[SERVICE_END_DATE] [datetime2](7) NULL,
	[SERVICE_COTERMINATE_FLAG] [varchar](1) NULL,
	[UNIT_LIST_PERCENT] [decimal](28, 7) NULL,
	[UNIT_SELLING_PERCENT] [decimal](28, 7) NULL,
	[UNIT_PERCENT_BASE_PRICE] [decimal](28, 7) NULL,
	[SERVICE_NUMBER] [decimal](28, 7) NULL,
	[SERVICE_PERIOD] [varchar](3) NULL,
	[SHIPPABLE_FLAG] [varchar](1) NULL,
	[MODEL_REMNANT_FLAG] [varchar](1) NULL,
	[RE_SOURCE_FLAG] [varchar](1) NULL,
	[FLOW_STATUS_CODE] [varchar](30) NULL,
	[TP_CONTEXT] [varchar](30) NULL,
	[TP_ATTRIBUTE1] [varchar](240) NULL,
	[TP_ATTRIBUTE2] [varchar](240) NULL,
	[TP_ATTRIBUTE3] [varchar](240) NULL,
	[TP_ATTRIBUTE4] [varchar](240) NULL,
	[TP_ATTRIBUTE5] [varchar](240) NULL,
	[TP_ATTRIBUTE6] [varchar](240) NULL,
	[TP_ATTRIBUTE7] [varchar](240) NULL,
	[TP_ATTRIBUTE8] [varchar](240) NULL,
	[TP_ATTRIBUTE9] [varchar](240) NULL,
	[TP_ATTRIBUTE10] [varchar](240) NULL,
	[TP_ATTRIBUTE11] [varchar](240) NULL,
	[TP_ATTRIBUTE12] [varchar](240) NULL,
	[TP_ATTRIBUTE13] [varchar](240) NULL,
	[TP_ATTRIBUTE14] [varchar](240) NULL,
	[TP_ATTRIBUTE15] [varchar](240) NULL,
	[FULFILLMENT_METHOD_CODE] [varchar](30) NULL,
	[MARKETING_SOURCE_CODE_ID] [decimal](28, 7) NULL,
	[SERVICE_REFERENCE_TYPE_CODE] [varchar](30) NULL,
	[SERVICE_REFERENCE_LINE_ID] [decimal](28, 7) NULL,
	[SERVICE_REFERENCE_SYSTEM_ID] [decimal](28, 7) NULL,
	[CALCULATE_PRICE_FLAG] [varchar](1) NULL,
	[UPGRADED_FLAG] [varchar](1) NULL,
	[REVENUE_AMOUNT] [decimal](28, 7) NULL,
	[FULFILLMENT_DATE] [datetime2](7) NULL,
	[PREFERRED_GRADE] [varchar](150) NULL,
	[ORDERED_QUANTITY2] [decimal](28, 7) NULL,
	[ORDERED_QUANTITY_UOM2] [varchar](3) NULL,
	[SHIPPING_QUANTITY2] [decimal](28, 7) NULL,
	[CANCELLED_QUANTITY2] [decimal](28, 7) NULL,
	[SHIPPED_QUANTITY2] [decimal](28, 7) NULL,
	[SHIPPING_QUANTITY_UOM2] [varchar](3) NULL,
	[FULFILLED_QUANTITY2] [decimal](28, 7) NULL,
	[MFG_LEAD_TIME] [decimal](28, 7) NULL,
	[LOCK_CONTROL] [decimal](28, 7) NULL,
	[SUBINVENTORY] [varchar](10) NULL,
	[UNIT_LIST_PRICE_PER_PQTY] [decimal](28, 7) NULL,
	[UNIT_SELLING_PRICE_PER_PQTY] [decimal](28, 7) NULL,
	[PRICE_REQUEST_CODE] [varchar](240) NULL,
	[ORIGINAL_INVENTORY_ITEM_ID] [decimal](28, 7) NULL,
	[ORIGINAL_ORDERED_ITEM_ID] [decimal](28, 7) NULL,
	[ORIGINAL_ORDERED_ITEM] [varchar](2000) NULL,
	[ORIGINAL_ITEM_IDENTIFIER_TYPE] [varchar](30) NULL,
	[ITEM_SUBSTITUTION_TYPE_CODE] [varchar](30) NULL,
	[OVERRIDE_ATP_DATE_CODE] [varchar](30) NULL,
	[LATE_DEMAND_PENALTY_FACTOR] [decimal](28, 7) NULL,
	[ACCOUNTING_RULE_DURATION] [decimal](15, 0) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[USER_ITEM_DESCRIPTION] [varchar](1000) NULL,
	[UNIT_COST] [decimal](28, 7) NULL,
	[ITEM_RELATIONSHIP_TYPE] [decimal](28, 7) NULL,
	[BLANKET_LINE_NUMBER] [decimal](28, 7) NULL,
	[BLANKET_NUMBER] [decimal](28, 7) NULL,
	[BLANKET_VERSION_NUMBER] [decimal](28, 7) NULL,
	[SALES_DOCUMENT_TYPE_CODE] [varchar](30) NULL,
	[FIRM_DEMAND_FLAG] [varchar](1) NULL,
	[EARLIEST_SHIP_DATE] [datetime2](7) NULL,
	[TRANSACTION_PHASE_CODE] [varchar](30) NULL,
	[SOURCE_DOCUMENT_VERSION_NUMBER] [decimal](28, 7) NULL,
	[PAYMENT_TYPE_CODE] [varchar](30) NULL,
	[MINISITE_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_CONTACT_ID] [decimal](28, 7) NULL,
	[END_CUSTOMER_SITE_USE_ID] [decimal](28, 7) NULL,
	[IB_OWNER] [varchar](60) NULL,
	[IB_CURRENT_LOCATION] [varchar](60) NULL,
	[IB_INSTALLED_AT_LOCATION] [varchar](60) NULL,
	[RETROBILL_REQUEST_ID] [decimal](28, 7) NULL,
	[ORIGINAL_LIST_PRICE] [decimal](28, 7) NULL,
	[SERVICE_CREDIT_ELIGIBLE_CODE] [varchar](30) NULL,
	[ORDER_FIRMED_DATE] [datetime2](7) NULL,
	[ACTUAL_FULFILLMENT_DATE] [datetime2](7) NULL,
	[CHARGE_PERIODICITY_CODE] [varchar](3) NULL,
	[CONTINGENCY_ID] [decimal](28, 7) NULL,
	[REVREC_EVENT_CODE] [varchar](30) NULL,
	[REVREC_EXPIRATION_DAYS] [decimal](28, 7) NULL,
	[ACCEPTED_QUANTITY] [decimal](28, 7) NULL,
	[ACCEPTED_BY] [decimal](28, 7) NULL,
	[REVREC_COMMENTS] [varchar](2000) NULL,
	[REVREC_REFERENCE_DOCUMENT] [varchar](240) NULL,
	[REVREC_SIGNATURE] [varchar](240) NULL,
	[REVREC_SIGNATURE_DATE] [datetime2](7) NULL,
	[REVREC_IMPLICIT_FLAG] [varchar](1) NULL,
	[BYPASS_SCH_FLAG] [varchar](1) NULL,
	[PRE_EXPLODED_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_ORDER_SOURCES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_ORDER_SOURCES](
	[ORDER_SOURCE_ID] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[NAME] [varchar](240) NULL,
	[DESCRIPTION] [varchar](2000) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[CREATE_CUSTOMERS_FLAG] [varchar](1) NULL,
	[USE_IDS_FLAG] [varchar](1) NULL,
	[AIA_ENABLED_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_ORDER_SOURCES_PRESTG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_ORDER_SOURCES_PRESTG](
	[ORDER_SOURCE_ID] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[NAME] [varchar](240) NULL,
	[DESCRIPTION] [varchar](2000) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[CREATE_CUSTOMERS_FLAG] [varchar](1) NULL,
	[USE_IDS_FLAG] [varchar](1) NULL,
	[AIA_ENABLED_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OE_TRANSACTION_TYPES_TL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OE_TRANSACTION_TYPES_TL](
	[TRANSACTION_TYPE_ID] [decimal](28, 7) NULL,
	[LANGUAGE] [varchar](4) NULL,
	[SOURCE_LANG] [varchar](4) NULL,
	[NAME] [varchar](30) NULL,
	[DESCRIPTION] [varchar](2000) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PRIMARY_SALES_DIRECT]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PRIMARY_SALES_DIRECT](
	[ORG_ID] [decimal](18, 0) NULL,
	[ORG_NAME] [varchar](50) NULL,
	[RGNCODE] [varchar](2) NULL,
	[RGNNAME] [varchar](50) NULL,
	[REGION_SERIAL] [decimal](18, 0) NULL,
	[REGION] [varchar](50) NULL,
	[SALES_CHANNEL_CODE] [varchar](50) NULL,
	[DEMAND_CLASS_CODE] [varchar](50) NULL,
	[CHANNEL] [varchar](50) NULL,
	[ORDER_CATEGORY] [varchar](50) NULL,
	[CFA_CODE] [varchar](10) NULL,
	[CFA_NAME] [varchar](100) NULL,
	[CFA_OLDCODE] [varchar](10) NULL,
	[CFA_CITY] [varchar](50) NULL,
	[CFA_STATE] [varchar](50) NULL,
	[TERRITORY] [varchar](50) NULL,
	[CUSTOMER_TRX_ID] [decimal](18, 0) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[INVOICENUMBER] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[QUARTER] [varchar](20) NULL,
	[WEEK] [varchar](20) NULL,
	[WEEK_SALES] [varchar](20) NULL,
	[SALESORDERNO] [varchar](100) NULL,
	[CUST_PO_NUMBER] [varchar](100) NULL,
	[ORDERTYPE] [varchar](100) NULL,
	[DELIVERY_ID] [varchar](50) NULL,
	[ORDERLINEID] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](18, 0) NULL,
	[ITEM_TYPE] [varchar](30) NULL,
	[BRAND_NAME] [varchar](50) NULL,
	[PACK_SIZE] [varchar](50) NULL,
	[CARTON_COUNT] [decimal](18, 0) NULL,
	[CARTON_WEIGHT] [decimal](18, 2) NULL,
	[INV_ITEM] [varchar](50) NULL,
	[GL_PERIOD_LINE] [varchar](50) NULL,
	[BRAND_CODE] [varchar](50) NULL,
	[PRODUCT_CATEGORY] [varchar](50) NULL,
	[ITEMNO] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[INVOICED_CASES] [decimal](18, 0) NULL,
	[INVOICED_KGS] [decimal](18, 2) NULL,
	[ITEM_MRP] [decimal](18, 2) NULL,
	[MRP_CONTRACT_RATE] [decimal](18, 2) NULL,
	[TOTAL_MRP] [decimal](18, 2) NULL,
	[TOTAL_AMOUNT] [decimal](18, 2) NULL,
	[INV_NUM] [varchar](150) NULL,
	[INV_DATE] [datetime2](7) NULL,
	[RTM] [decimal](18, 2) NULL,
	[RTM_PERCENT] [decimal](18, 2) NULL,
	[DTM] [decimal](18, 2) NULL,
	[DTM_PERCENT] [decimal](18, 2) NULL,
	[ISLST] [decimal](18, 2) NULL,
	[ISLST_PERCENT] [decimal](18, 2) NULL,
	[CSDDISC] [decimal](18, 2) NULL,
	[CSDDISC_PERCENT] [decimal](18, 2) NULL,
	[CB] [decimal](18, 2) NULL,
	[CB_PERCENT] [decimal](18, 2) NULL,
	[PC] [decimal](18, 2) NULL,
	[PC_PERCENT] [decimal](18, 2) NULL,
	[EXCISE] [decimal](18, 2) NULL,
	[TAX_AMOUNT] [decimal](18, 2) NULL,
	[TAX_RATE] [decimal](18, 2) NULL,
	[GSV] [decimal](18, 2) NULL,
	[GL_ACCOUNT] [varchar](100) NULL,
	[PERIOD_445] [varchar](6) NULL,
	[TAX_TYPE] [varchar](100) NULL,
	[ITEM_TAX_CATG] [varchar](100) NULL,
	[OUTPUT_TAX] [decimal](18, 2) NULL,
	[PERIOD_CAL_MONTH] [varchar](20) NULL,
	[PERIOD_CAL] [varchar](6) NULL,
	[VAT_DIFFERENCE] [decimal](18, 2) NULL,
	[SALESREP_ID] [varchar](20) NULL,
	[SALESREP_NAME] [varchar](100) NULL,
	[SUPER_CHANNEL] [varchar](100) NULL,
	[REGION_ATTRIBUTE] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](100) NULL,
	[ASM_TERRITORY] [varchar](100) NULL,
	[BDE_TERRITORY] [varchar](100) NULL,
	[TSI_TERRITORY] [varchar](100) NULL,
	[TOWN_CLASS] [varchar](100) NULL,
	[SUB_STATE] [varchar](100) NULL,
	[MT_TYPE] [varchar](100) NULL,
	[MT_COMPANYNAME] [varchar](100) NULL,
	[LOT_NUMBER] [varchar](100) NULL,
	[SOURCE_ORGANIZATION] [varchar](100) NULL,
	[SHIP_FROM_ORG_ID] [decimal](18, 0) NULL,
	[WDD_DELIVERY_DETAIL_ID] [decimal](18, 0) NULL,
	[EXCISEDUTY_GLCODE_DR] [varchar](50) NULL,
	[EXCISEDUTY_GLCODE_CR] [varchar](50) NULL,
	[TAXABLE_TURNOVER] [decimal](18, 2) NULL,
	[EXCISE_PROVISION] [decimal](18, 2) NULL,
	[EXCISEPROV_GLCODE_DR] [varchar](50) NULL,
	[EXCISEPROV_GLCODE_CR] [varchar](50) NULL,
	[OCTROI_PROVISION] [decimal](18, 2) NULL,
	[OCTROI_GLCODE_DR] [varchar](50) NULL,
	[OCTROI_GLCODE_CR] [varchar](50) NULL,
	[VAT_PROVISION] [decimal](18, 2) NULL,
	[VAT_GLCODE_DR] [varchar](50) NULL,
	[VAT_GLCODE_CR] [varchar](50) NULL,
	[ENTRYTAX_PROVISION] [decimal](18, 2) NULL,
	[ENTRYTAX_GLCODE_DR] [varchar](50) NULL,
	[ENTRYTAX_GLCODE_CR] [varchar](50) NULL,
	[PROVISION_DESCRIPTION1] [varchar](100) NULL,
	[PROVISION_ID1] [decimal](18, 0) NULL,
	[PROVISION_DESCRIPTION2] [varchar](100) NULL,
	[PROVISION_ID2] [decimal](18, 0) NULL,
	[GSV_FINAL] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PRIMARY_SALES_EBS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PRIMARY_SALES_EBS](
	[ORG_ID] [decimal](18, 0) NULL,
	[ORG_NAME] [varchar](50) NULL,
	[RGNCODE] [varchar](2) NULL,
	[RGNNAME] [varchar](50) NULL,
	[REGION_SERIAL] [decimal](18, 0) NULL,
	[REGION] [varchar](50) NULL,
	[SALES_CHANNEL_CODE] [varchar](50) NULL,
	[DEMAND_CLASS_CODE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PRIMARY_SALES_MT]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PRIMARY_SALES_MT](
	[ORG_ID] [decimal](18, 0) NULL,
	[ORG_NAME] [varchar](50) NULL,
	[RGNCODE] [varchar](2) NULL,
	[RGNNAME] [varchar](50) NULL,
	[REGION_SERIAL] [decimal](18, 0) NULL,
	[REGION] [varchar](50) NULL,
	[SALES_CHANNEL_CODE] [varchar](50) NULL,
	[DEMAND_CLASS_CODE] [varchar](50) NULL,
	[CHANNEL] [varchar](50) NULL,
	[ORDER_CATEGORY] [varchar](50) NULL,
	[CFA_CODE] [varchar](10) NULL,
	[CFA_NAME] [varchar](100) NULL,
	[CFA_OLDCODE] [varchar](10) NULL,
	[CFA_CITY] [varchar](50) NULL,
	[CFA_STATE] [varchar](50) NULL,
	[TERRITORY] [varchar](50) NULL,
	[CUSTOMER_TRX_ID] [decimal](18, 0) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[INVOICENUMBER] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[QUARTER] [varchar](20) NULL,
	[WEEK] [varchar](20) NULL,
	[WEEK_SALES] [varchar](20) NULL,
	[SALESORDERNO] [varchar](100) NULL,
	[CUST_PO_NUMBER] [varchar](100) NULL,
	[ORDERTYPE] [varchar](100) NULL,
	[DELIVERY_ID] [varchar](50) NULL,
	[ORDERLINEID] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](18, 0) NULL,
	[ITEM_TYPE] [varchar](30) NULL,
	[BRAND_NAME] [varchar](50) NULL,
	[PACK_SIZE] [varchar](50) NULL,
	[CARTON_COUNT] [decimal](18, 0) NULL,
	[CARTON_WEIGHT] [decimal](18, 2) NULL,
	[INV_ITEM] [varchar](50) NULL,
	[GL_PERIOD_LINE] [varchar](50) NULL,
	[BRAND_CODE] [varchar](50) NULL,
	[PRODUCT_CATEGORY] [varchar](50) NULL,
	[ITEMNO] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[INVOICED_CASES] [decimal](18, 0) NULL,
	[INVOICED_KGS] [decimal](18, 2) NULL,
	[ITEM_MRP] [decimal](18, 2) NULL,
	[MRP_CONTRACT_RATE] [decimal](18, 2) NULL,
	[TOTAL_MRP] [decimal](18, 2) NULL,
	[TOTAL_AMOUNT] [decimal](18, 2) NULL,
	[INV_NUM] [varchar](150) NULL,
	[INV_DATE] [datetime2](7) NULL,
	[RTM] [decimal](18, 2) NULL,
	[RTM_PERCENT] [decimal](18, 2) NULL,
	[DTM] [decimal](18, 2) NULL,
	[DTM_PERCENT] [decimal](18, 2) NULL,
	[ISLST] [decimal](18, 2) NULL,
	[ISLST_PERCENT] [decimal](18, 2) NULL,
	[CSDDISC] [decimal](18, 2) NULL,
	[CSDDISC_PERCENT] [decimal](18, 2) NULL,
	[CB] [decimal](18, 2) NULL,
	[CB_PERCENT] [decimal](18, 2) NULL,
	[PC] [decimal](18, 2) NULL,
	[PC_PERCENT] [decimal](18, 2) NULL,
	[EXCISE] [decimal](18, 2) NULL,
	[TAX_AMOUNT] [decimal](18, 2) NULL,
	[TAX_RATE] [decimal](18, 2) NULL,
	[GSV] [decimal](18, 2) NULL,
	[GL_ACCOUNT] [varchar](100) NULL,
	[PERIOD_445] [varchar](6) NULL,
	[TAX_TYPE] [varchar](100) NULL,
	[ITEM_TAX_CATG] [varchar](100) NULL,
	[OUTPUT_TAX] [decimal](18, 2) NULL,
	[PERIOD_CAL_MONTH] [varchar](20) NULL,
	[PERIOD_CAL] [varchar](6) NULL,
	[VAT_DIFFERENCE] [decimal](18, 2) NULL,
	[SALESREP_ID] [varchar](20) NULL,
	[SALESREP_NAME] [varchar](100) NULL,
	[SUPER_CHANNEL] [varchar](100) NULL,
	[REGION_ATTRIBUTE] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](100) NULL,
	[ASM_TERRITORY] [varchar](100) NULL,
	[BDE_TERRITORY] [varchar](100) NULL,
	[TSI_TERRITORY] [varchar](100) NULL,
	[TOWN_CLASS] [varchar](100) NULL,
	[SUB_STATE] [varchar](100) NULL,
	[MT_TYPE] [varchar](100) NULL,
	[MT_COMPANYNAME] [varchar](100) NULL,
	[LOT_NUMBER] [varchar](100) NULL,
	[SOURCE_ORGANIZATION] [varchar](100) NULL,
	[SHIP_FROM_ORG_ID] [decimal](18, 0) NULL,
	[WDD_DELIVERY_DETAIL_ID] [decimal](18, 0) NULL,
	[EXCISEDUTY_GLCODE_DR] [varchar](50) NULL,
	[EXCISEDUTY_GLCODE_CR] [varchar](50) NULL,
	[TAXABLE_TURNOVER] [decimal](18, 2) NULL,
	[EXCISE_PROVISION] [decimal](18, 2) NULL,
	[EXCISEPROV_GLCODE_DR] [varchar](50) NULL,
	[EXCISEPROV_GLCODE_CR] [varchar](50) NULL,
	[OCTROI_PROVISION] [decimal](18, 2) NULL,
	[OCTROI_GLCODE_DR] [varchar](50) NULL,
	[OCTROI_GLCODE_CR] [varchar](50) NULL,
	[VAT_PROVISION] [decimal](18, 2) NULL,
	[VAT_GLCODE_DR] [varchar](50) NULL,
	[VAT_GLCODE_CR] [varchar](50) NULL,
	[ENTRYTAX_PROVISION] [decimal](18, 2) NULL,
	[ENTRYTAX_GLCODE_DR] [varchar](50) NULL,
	[ENTRYTAX_GLCODE_CR] [varchar](50) NULL,
	[PROVISION_DESCRIPTION1] [varchar](100) NULL,
	[PROVISION_ID1] [decimal](18, 0) NULL,
	[PROVISION_DESCRIPTION2] [varchar](100) NULL,
	[PROVISION_ID2] [decimal](18, 0) NULL,
	[GSV_FINAL] [decimal](18, 2) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[STORE_NAME] [varchar](360) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PRIMARY_SALES_TEST]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PRIMARY_SALES_TEST](
	[ORG_ID] [decimal](18, 0) NULL,
	[ORG_NAME] [varchar](50) NULL,
	[RGNCODE] [varchar](2) NULL,
	[RGNNAME] [varchar](50) NULL,
	[REGION_SERIAL] [decimal](18, 0) NULL,
	[REGION] [varchar](50) NULL,
	[SALES_CHANNEL_CODE] [varchar](50) NULL,
	[DEMAND_CLASS_CODE] [varchar](50) NULL,
	[CHANNEL] [varchar](50) NULL,
	[ORDER_CATEGORY] [varchar](50) NULL,
	[CFA_CODE] [varchar](10) NULL,
	[CFA_NAME] [varchar](100) NULL,
	[CFA_OLDCODE] [varchar](10) NULL,
	[CFA_CITY] [varchar](50) NULL,
	[CFA_STATE] [varchar](50) NULL,
	[TERRITORY] [varchar](50) NULL,
	[CUSTOMER_TRX_ID] [decimal](18, 0) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[INVOICENUMBER] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[QUARTER] [varchar](20) NULL,
	[WEEK] [varchar](20) NULL,
	[WEEK_SALES] [varchar](20) NULL,
	[SALESORDERNO] [varchar](100) NULL,
	[CUST_PO_NUMBER] [varchar](100) NULL,
	[ORDERTYPE] [varchar](100) NULL,
	[DELIVERY_ID] [varchar](50) NULL,
	[ORDERLINEID] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](18, 0) NULL,
	[ITEM_TYPE] [varchar](30) NULL,
	[BRAND_NAME] [varchar](50) NULL,
	[PACK_SIZE] [varchar](50) NULL,
	[CARTON_COUNT] [decimal](18, 0) NULL,
	[CARTON_WEIGHT] [decimal](18, 2) NULL,
	[INV_ITEM] [varchar](50) NULL,
	[GL_PERIOD_LINE] [varchar](50) NULL,
	[BRAND_CODE] [varchar](50) NULL,
	[PRODUCT_CATEGORY] [varchar](50) NULL,
	[ITEMNO] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[INVOICED_CASES] [decimal](18, 0) NULL,
	[INVOICED_KGS] [decimal](18, 2) NULL,
	[ITEM_MRP] [decimal](18, 2) NULL,
	[MRP_CONTRACT_RATE] [decimal](18, 2) NULL,
	[TOTAL_MRP] [decimal](18, 2) NULL,
	[TOTAL_AMOUNT] [decimal](18, 2) NULL,
	[INV_NUM] [varchar](150) NULL,
	[INV_DATE] [datetime2](7) NULL,
	[RTM] [decimal](18, 2) NULL,
	[RTM_PERCENT] [decimal](18, 2) NULL,
	[DTM] [decimal](18, 2) NULL,
	[DTM_PERCENT] [decimal](18, 2) NULL,
	[ISLST] [decimal](18, 2) NULL,
	[ISLST_PERCENT] [decimal](18, 2) NULL,
	[CSDDISC] [decimal](18, 2) NULL,
	[CSDDISC_PERCENT] [decimal](18, 2) NULL,
	[CB] [decimal](18, 2) NULL,
	[CB_PERCENT] [decimal](18, 2) NULL,
	[PC] [decimal](18, 2) NULL,
	[PC_PERCENT] [decimal](18, 2) NULL,
	[EXCISE] [decimal](18, 2) NULL,
	[TAX_AMOUNT] [decimal](18, 2) NULL,
	[TAX_RATE] [decimal](18, 2) NULL,
	[GSV] [decimal](18, 2) NULL,
	[GL_ACCOUNT] [varchar](100) NULL,
	[PERIOD_445] [varchar](6) NULL,
	[TAX_TYPE] [varchar](100) NULL,
	[ITEM_TAX_CATG] [varchar](100) NULL,
	[OUTPUT_TAX] [decimal](18, 2) NULL,
	[PERIOD_CAL_MONTH] [varchar](20) NULL,
	[PERIOD_CAL] [varchar](6) NULL,
	[VAT_DIFFERENCE] [decimal](18, 2) NULL,
	[SALESREP_ID] [varchar](20) NULL,
	[SALESREP_NAME] [varchar](100) NULL,
	[SUPER_CHANNEL] [varchar](100) NULL,
	[REGION_ATTRIBUTE] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](100) NULL,
	[ASM_TERRITORY] [varchar](100) NULL,
	[BDE_TERRITORY] [varchar](100) NULL,
	[TSI_TERRITORY] [varchar](100) NULL,
	[TOWN_CLASS] [varchar](100) NULL,
	[SUB_STATE] [varchar](100) NULL,
	[MT_TYPE] [varchar](100) NULL,
	[MT_COMPANYNAME] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[QP_PRICE_LIST_LINES_V]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[QP_PRICE_LIST_LINES_V](
	[ROW_ID] [varchar](8) NULL,
	[PRICE_LIST_LINE_ID] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[INVENTORY_ITEM_ID] [decimal](28, 7) NULL,
	[UNIT_CODE] [varchar](4000) NULL,
	[METHOD_CODE] [varchar](30) NULL,
	[LIST_PRICE] [decimal](28, 7) NULL,
	[PRICING_RULE_ID] [decimal](28, 7) NULL,
	[REPRICE_FLAG] [varchar](1) NULL,
	[PRICING_CONTEXT] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE1] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE2] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE3] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE4] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE5] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE6] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE7] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE8] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE9] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE10] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE11] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE12] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE13] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE14] [varchar](4000) NULL,
	[PRICING_ATTRIBUTE15] [varchar](4000) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[CONTEXT] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[PADDED_CONCATENATED_SEGMENTS] [varchar](40) NULL,
	[CONCATENATED_SEGMENTS] [varchar](40) NULL,
	[ITEM_DESCRIPTION] [varchar](240) NULL,
	[PRIMARY_UNIT_OF_MEASURE] [varchar](25) NULL,
	[CUSTOMER_ITEM_ID] [decimal](28, 7) NULL,
	[PRIMARY] [varchar](1) NULL,
	[REVISION] [varchar](50) NULL,
	[REVISION_DATE] [datetime2](7) NULL,
	[REVISION_REASON_CODE] [varchar](30) NULL,
	[COMMENTS] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[QP_PRICE_LISTS_V]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[QP_PRICE_LISTS_V](
	[ROW_ID] [varchar](8) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[LAST_UPDATE_LOGIN] [decimal](28, 7) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](28, 7) NULL,
	[PROGRAM_ID] [decimal](28, 7) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[REQUEST_ID] [decimal](28, 7) NULL,
	[NAME] [varchar](240) NULL,
	[CURRENCY_CODE] [varchar](30) NULL,
	[ROUNDING_FACTOR] [decimal](28, 7) NULL,
	[SECONDARY_PRICE_LIST_ID] [decimal](28, 7) NULL,
	[SHIP_METHOD_CODE] [varchar](30) NULL,
	[FREIGHT_TERMS_CODE] [varchar](30) NULL,
	[TERMS_ID] [decimal](28, 7) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[COMMENTS] [varchar](2000) NULL,
	[DESCRIPTION] [varchar](2000) NULL,
	[CONTEXT] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[RA_CUSTOMER_TRX_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[RA_CUSTOMER_TRX_ALL](
	[CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[TRX_NUMBER] [varchar](20) NULL,
	[CUST_TRX_TYPE_ID] [decimal](15, 0) NULL,
	[TRX_DATE] [datetime2](7) NULL,
	[SET_OF_BOOKS_ID] [decimal](15, 0) NULL,
	[BILL_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[BATCH_ID] [decimal](15, 0) NULL,
	[BATCH_SOURCE_ID] [decimal](15, 0) NULL,
	[REASON_CODE] [varchar](30) NULL,
	[SOLD_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[SOLD_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[SOLD_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[BILL_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[BILL_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[SHIP_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[SHIP_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[SHIPMENT_ID] [decimal](15, 0) NULL,
	[REMIT_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[TERM_ID] [decimal](15, 0) NULL,
	[TERM_DUE_DATE] [datetime2](7) NULL,
	[PREVIOUS_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[PRIMARY_SALESREP_ID] [decimal](15, 0) NULL,
	[PRINTING_ORIGINAL_DATE] [datetime2](7) NULL,
	[PRINTING_LAST_PRINTED] [datetime2](7) NULL,
	[PRINTING_OPTION] [varchar](20) NULL,
	[PRINTING_COUNT] [decimal](15, 0) NULL,
	[PRINTING_PENDING] [varchar](1) NULL,
	[PURCHASE_ORDER] [varchar](50) NULL,
	[PURCHASE_ORDER_REVISION] [varchar](50) NULL,
	[PURCHASE_ORDER_DATE] [datetime2](7) NULL,
	[CUSTOMER_REFERENCE] [varchar](30) NULL,
	[CUSTOMER_REFERENCE_DATE] [datetime2](7) NULL,
	[COMMENTS] [varchar](1760) NULL,
	[INTERNAL_NOTES] [varchar](240) NULL,
	[EXCHANGE_RATE_TYPE] [varchar](30) NULL,
	[EXCHANGE_DATE] [datetime2](7) NULL,
	[EXCHANGE_RATE] [decimal](28, 7) NULL,
	[TERRITORY_ID] [decimal](15, 0) NULL,
	[INVOICE_CURRENCY_CODE] [varchar](15) NULL,
	[INITIAL_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[AGREEMENT_ID] [decimal](15, 0) NULL,
	[END_DATE_COMMITMENT] [datetime2](7) NULL,
	[START_DATE_COMMITMENT] [datetime2](7) NULL,
	[LAST_PRINTED_SEQUENCE_NUM] [decimal](15, 0) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ORIG_SYSTEM_BATCH_NAME] [varchar](40) NULL,
	[POST_REQUEST_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[FINANCE_CHARGES] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[POSTING_CONTROL_ID] [decimal](15, 0) NULL,
	[BILL_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[RA_POST_LOOP_NUMBER] [decimal](15, 0) NULL,
	[SHIP_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[CREDIT_METHOD_FOR_RULES] [varchar](30) NULL,
	[CREDIT_METHOD_FOR_INSTALLMENTS] [varchar](30) NULL,
	[RECEIPT_METHOD_ID] [decimal](15, 0) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[RELATED_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[INVOICING_RULE_ID] [decimal](15, 0) NULL,
	[SHIP_VIA] [varchar](30) NULL,
	[SHIP_DATE_ACTUAL] [datetime2](7) NULL,
	[WAYBILL_NUMBER] [varchar](50) NULL,
	[FOB_POINT] [varchar](30) NULL,
	[CUSTOMER_BANK_ACCOUNT_ID] [decimal](15, 0) NULL,
	[INTERFACE_HEADER_ATTRIBUTE1] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE2] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE3] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE4] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE5] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE6] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE7] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE8] [varchar](150) NULL,
	[INTERFACE_HEADER_CONTEXT] [varchar](30) NULL,
	[DEFAULT_USSGL_TRX_CODE_CONTEXT] [varchar](30) NULL,
	[INTERFACE_HEADER_ATTRIBUTE10] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE11] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE12] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE13] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE14] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE15] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE9] [varchar](150) NULL,
	[DEFAULT_USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[RECURRED_FROM_TRX_NUMBER] [varchar](20) NULL,
	[STATUS_TRX] [varchar](30) NULL,
	[DOC_SEQUENCE_ID] [decimal](15, 0) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](15, 0) NULL,
	[PAYING_CUSTOMER_ID] [decimal](15, 0) NULL,
	[PAYING_SITE_USE_ID] [decimal](15, 0) NULL,
	[RELATED_BATCH_SOURCE_ID] [decimal](15, 0) NULL,
	[DEFAULT_TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[CREATED_FROM] [varchar](30) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[EDI_PROCESSED_FLAG] [varchar](1) NULL,
	[EDI_PROCESSED_STATUS] [varchar](10) NULL,
	[GLOBAL_ATTRIBUTE21] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE22] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE23] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE24] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE25] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE26] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE27] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE28] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE29] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE30] [varchar](150) NULL,
	[MRC_EXCHANGE_RATE_TYPE] [varchar](2000) NULL,
	[MRC_EXCHANGE_DATE] [varchar](2000) NULL,
	[MRC_EXCHANGE_RATE] [varchar](2000) NULL,
	[PAYMENT_SERVER_ORDER_NUM] [varchar](80) NULL,
	[APPROVAL_CODE] [varchar](80) NULL,
	[ADDRESS_VERIFICATION_CODE] [varchar](80) NULL,
	[OLD_TRX_NUMBER] [varchar](20) NULL,
	[BR_AMOUNT] [decimal](28, 7) NULL,
	[BR_UNPAID_FLAG] [varchar](1) NULL,
	[BR_ON_HOLD_FLAG] [varchar](1) NULL,
	[DRAWEE_ID] [decimal](15, 0) NULL,
	[DRAWEE_CONTACT_ID] [decimal](15, 0) NULL,
	[DRAWEE_SITE_USE_ID] [decimal](15, 0) NULL,
	[REMITTANCE_BANK_ACCOUNT_ID] [decimal](15, 0) NULL,
	[OVERRIDE_REMIT_ACCOUNT_FLAG] [varchar](1) NULL,
	[DRAWEE_BANK_ACCOUNT_ID] [decimal](15, 0) NULL,
	[SPECIAL_INSTRUCTIONS] [varchar](240) NULL,
	[REMITTANCE_BATCH_ID] [decimal](15, 0) NULL,
	[PREPAYMENT_FLAG] [varchar](1) NULL,
	[CT_REFERENCE] [varchar](150) NULL,
	[CONTRACT_ID] [decimal](28, 7) NULL,
	[BILL_TEMPLATE_ID] [decimal](15, 0) NULL,
	[REVERSED_CASH_RECEIPT_ID] [decimal](15, 0) NULL,
	[CC_ERROR_CODE] [varchar](80) NULL,
	[CC_ERROR_TEXT] [varchar](255) NULL,
	[CC_ERROR_FLAG] [varchar](1) NULL,
	[UPGRADE_METHOD] [varchar](30) NULL,
	[LEGAL_ENTITY_ID] [decimal](15, 0) NULL,
	[REMIT_BANK_ACCT_USE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TRXN_EXTENSION_ID] [decimal](15, 0) NULL,
	[AX_ACCOUNTED_FLAG] [varchar](1) NULL,
	[APPLICATION_ID] [decimal](15, 0) NULL,
	[PAYMENT_ATTRIBUTES] [varchar](1000) NULL,
	[BILLING_DATE] [datetime2](7) NULL,
	[INTEREST_HEADER_ID] [decimal](15, 0) NULL,
	[LATE_CHARGES_ASSESSED] [varchar](30) NULL,
	[TRAILER_NUMBER] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[RA_CUSTOMER_TRX_ALL_PRESTG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[RA_CUSTOMER_TRX_ALL_PRESTG](
	[CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[TRX_NUMBER] [varchar](20) NULL,
	[CUST_TRX_TYPE_ID] [decimal](15, 0) NULL,
	[TRX_DATE] [datetime2](7) NULL,
	[SET_OF_BOOKS_ID] [decimal](15, 0) NULL,
	[BILL_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[BATCH_ID] [decimal](15, 0) NULL,
	[BATCH_SOURCE_ID] [decimal](15, 0) NULL,
	[REASON_CODE] [varchar](30) NULL,
	[SOLD_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[SOLD_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[SOLD_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[BILL_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[BILL_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[SHIP_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[SHIP_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[SHIPMENT_ID] [decimal](15, 0) NULL,
	[REMIT_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[TERM_ID] [decimal](15, 0) NULL,
	[TERM_DUE_DATE] [datetime2](7) NULL,
	[PREVIOUS_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[PRIMARY_SALESREP_ID] [decimal](15, 0) NULL,
	[PRINTING_ORIGINAL_DATE] [datetime2](7) NULL,
	[PRINTING_LAST_PRINTED] [datetime2](7) NULL,
	[PRINTING_OPTION] [varchar](20) NULL,
	[PRINTING_COUNT] [decimal](15, 0) NULL,
	[PRINTING_PENDING] [varchar](1) NULL,
	[PURCHASE_ORDER] [varchar](50) NULL,
	[PURCHASE_ORDER_REVISION] [varchar](50) NULL,
	[PURCHASE_ORDER_DATE] [datetime2](7) NULL,
	[CUSTOMER_REFERENCE] [varchar](30) NULL,
	[CUSTOMER_REFERENCE_DATE] [datetime2](7) NULL,
	[COMMENTS] [varchar](1760) NULL,
	[INTERNAL_NOTES] [varchar](240) NULL,
	[EXCHANGE_RATE_TYPE] [varchar](30) NULL,
	[EXCHANGE_DATE] [datetime2](7) NULL,
	[EXCHANGE_RATE] [decimal](28, 7) NULL,
	[TERRITORY_ID] [decimal](15, 0) NULL,
	[INVOICE_CURRENCY_CODE] [varchar](15) NULL,
	[INITIAL_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[AGREEMENT_ID] [decimal](15, 0) NULL,
	[END_DATE_COMMITMENT] [datetime2](7) NULL,
	[START_DATE_COMMITMENT] [datetime2](7) NULL,
	[LAST_PRINTED_SEQUENCE_NUM] [decimal](15, 0) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ORIG_SYSTEM_BATCH_NAME] [varchar](40) NULL,
	[POST_REQUEST_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[FINANCE_CHARGES] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[POSTING_CONTROL_ID] [decimal](15, 0) NULL,
	[BILL_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[RA_POST_LOOP_NUMBER] [decimal](15, 0) NULL,
	[SHIP_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[CREDIT_METHOD_FOR_RULES] [varchar](30) NULL,
	[CREDIT_METHOD_FOR_INSTALLMENTS] [varchar](30) NULL,
	[RECEIPT_METHOD_ID] [decimal](15, 0) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[RELATED_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[INVOICING_RULE_ID] [decimal](15, 0) NULL,
	[SHIP_VIA] [varchar](30) NULL,
	[SHIP_DATE_ACTUAL] [datetime2](7) NULL,
	[WAYBILL_NUMBER] [varchar](50) NULL,
	[FOB_POINT] [varchar](30) NULL,
	[CUSTOMER_BANK_ACCOUNT_ID] [decimal](15, 0) NULL,
	[INTERFACE_HEADER_ATTRIBUTE1] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE2] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE3] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE4] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE5] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE6] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE7] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE8] [varchar](150) NULL,
	[INTERFACE_HEADER_CONTEXT] [varchar](30) NULL,
	[DEFAULT_USSGL_TRX_CODE_CONTEXT] [varchar](30) NULL,
	[INTERFACE_HEADER_ATTRIBUTE10] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE11] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE12] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE13] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE14] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE15] [varchar](150) NULL,
	[INTERFACE_HEADER_ATTRIBUTE9] [varchar](150) NULL,
	[DEFAULT_USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[RECURRED_FROM_TRX_NUMBER] [varchar](20) NULL,
	[STATUS_TRX] [varchar](30) NULL,
	[DOC_SEQUENCE_ID] [decimal](15, 0) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](15, 0) NULL,
	[PAYING_CUSTOMER_ID] [decimal](15, 0) NULL,
	[PAYING_SITE_USE_ID] [decimal](15, 0) NULL,
	[RELATED_BATCH_SOURCE_ID] [decimal](15, 0) NULL,
	[DEFAULT_TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[CREATED_FROM] [varchar](30) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[EDI_PROCESSED_FLAG] [varchar](1) NULL,
	[EDI_PROCESSED_STATUS] [varchar](10) NULL,
	[GLOBAL_ATTRIBUTE21] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE22] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE23] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE24] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE25] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE26] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE27] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE28] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE29] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE30] [varchar](150) NULL,
	[MRC_EXCHANGE_RATE_TYPE] [varchar](2000) NULL,
	[MRC_EXCHANGE_DATE] [varchar](2000) NULL,
	[MRC_EXCHANGE_RATE] [varchar](2000) NULL,
	[PAYMENT_SERVER_ORDER_NUM] [varchar](80) NULL,
	[APPROVAL_CODE] [varchar](80) NULL,
	[ADDRESS_VERIFICATION_CODE] [varchar](80) NULL,
	[OLD_TRX_NUMBER] [varchar](20) NULL,
	[BR_AMOUNT] [decimal](28, 7) NULL,
	[BR_UNPAID_FLAG] [varchar](1) NULL,
	[BR_ON_HOLD_FLAG] [varchar](1) NULL,
	[DRAWEE_ID] [decimal](15, 0) NULL,
	[DRAWEE_CONTACT_ID] [decimal](15, 0) NULL,
	[DRAWEE_SITE_USE_ID] [decimal](15, 0) NULL,
	[REMITTANCE_BANK_ACCOUNT_ID] [decimal](15, 0) NULL,
	[OVERRIDE_REMIT_ACCOUNT_FLAG] [varchar](1) NULL,
	[DRAWEE_BANK_ACCOUNT_ID] [decimal](15, 0) NULL,
	[SPECIAL_INSTRUCTIONS] [varchar](240) NULL,
	[REMITTANCE_BATCH_ID] [decimal](15, 0) NULL,
	[PREPAYMENT_FLAG] [varchar](1) NULL,
	[CT_REFERENCE] [varchar](150) NULL,
	[CONTRACT_ID] [decimal](28, 7) NULL,
	[BILL_TEMPLATE_ID] [decimal](15, 0) NULL,
	[REVERSED_CASH_RECEIPT_ID] [decimal](15, 0) NULL,
	[CC_ERROR_CODE] [varchar](80) NULL,
	[CC_ERROR_TEXT] [varchar](255) NULL,
	[CC_ERROR_FLAG] [varchar](1) NULL,
	[UPGRADE_METHOD] [varchar](30) NULL,
	[LEGAL_ENTITY_ID] [decimal](15, 0) NULL,
	[REMIT_BANK_ACCT_USE_ID] [decimal](15, 0) NULL,
	[PAYMENT_TRXN_EXTENSION_ID] [decimal](15, 0) NULL,
	[AX_ACCOUNTED_FLAG] [varchar](1) NULL,
	[APPLICATION_ID] [decimal](15, 0) NULL,
	[PAYMENT_ATTRIBUTES] [varchar](1000) NULL,
	[BILLING_DATE] [datetime2](7) NULL,
	[INTEREST_HEADER_ID] [decimal](15, 0) NULL,
	[LATE_CHARGES_ASSESSED] [varchar](30) NULL,
	[TRAILER_NUMBER] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[RA_CUSTOMER_TRX_LINES_ALL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[RA_CUSTOMER_TRX_LINES_ALL](
	[CUSTOMER_TRX_LINE_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[LINE_NUMBER] [decimal](28, 7) NULL,
	[SET_OF_BOOKS_ID] [decimal](15, 0) NULL,
	[REASON_CODE] [varchar](30) NULL,
	[INVENTORY_ITEM_ID] [decimal](15, 0) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[PREVIOUS_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[PREVIOUS_CUSTOMER_TRX_LINE_ID] [decimal](15, 0) NULL,
	[QUANTITY_ORDERED] [decimal](28, 7) NULL,
	[QUANTITY_CREDITED] [decimal](28, 7) NULL,
	[QUANTITY_INVOICED] [decimal](28, 7) NULL,
	[UNIT_STANDARD_PRICE] [decimal](28, 7) NULL,
	[UNIT_SELLING_PRICE] [decimal](28, 7) NULL,
	[SALES_ORDER] [varchar](50) NULL,
	[SALES_ORDER_REVISION] [decimal](28, 7) NULL,
	[SALES_ORDER_LINE] [varchar](30) NULL,
	[SALES_ORDER_DATE] [datetime2](7) NULL,
	[ACCOUNTING_RULE_ID] [decimal](15, 0) NULL,
	[ACCOUNTING_RULE_DURATION] [decimal](15, 0) NULL,
	[LINE_TYPE] [varchar](20) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[RULE_START_DATE] [datetime2](7) NULL,
	[INITIAL_CUSTOMER_TRX_LINE_ID] [decimal](15, 0) NULL,
	[INTERFACE_LINE_CONTEXT] [varchar](30) NULL,
	[INTERFACE_LINE_ATTRIBUTE1] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE2] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE3] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE4] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE5] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE6] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE7] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE8] [varchar](150) NULL,
	[SALES_ORDER_SOURCE] [varchar](50) NULL,
	[TAXABLE_FLAG] [varchar](1) NULL,
	[EXTENDED_AMOUNT] [decimal](28, 7) NULL,
	[REVENUE_AMOUNT] [decimal](28, 7) NULL,
	[AUTORULE_COMPLETE_FLAG] [varchar](1) NULL,
	[LINK_TO_CUST_TRX_LINE_ID] [decimal](15, 0) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[TAX_PRECEDENCE] [decimal](28, 7) NULL,
	[TAX_RATE] [decimal](28, 7) NULL,
	[ITEM_EXCEPTION_RATE_ID] [decimal](15, 0) NULL,
	[TAX_EXEMPTION_ID] [decimal](15, 0) NULL,
	[MEMO_LINE_ID] [decimal](15, 0) NULL,
	[AUTORULE_DURATION_PROCESSED] [decimal](15, 0) NULL,
	[UOM_CODE] [varchar](3) NULL,
	[DEFAULT_USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[DEFAULT_USSGL_TRX_CODE_CONTEXT] [varchar](30) NULL,
	[INTERFACE_LINE_ATTRIBUTE10] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE11] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE12] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE13] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE14] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE15] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE9] [varchar](150) NULL,
	[VAT_TAX_ID] [decimal](15, 0) NULL,
	[AUTOTAX] [varchar](1) NULL,
	[LAST_PERIOD_TO_CREDIT] [decimal](28, 7) NULL,
	[ITEM_CONTEXT] [varchar](30) NULL,
	[TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[TAX_EXEMPT_NUMBER] [varchar](80) NULL,
	[TAX_EXEMPT_REASON_CODE] [varchar](30) NULL,
	[TAX_VENDOR_RETURN_CODE] [varchar](30) NULL,
	[SALES_TAX_ID] [decimal](15, 0) NULL,
	[LOCATION_SEGMENT_ID] [decimal](15, 0) NULL,
	[MOVEMENT_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GROSS_UNIT_SELLING_PRICE] [decimal](28, 7) NULL,
	[GROSS_EXTENDED_AMOUNT] [decimal](28, 7) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAXABLE_AMOUNT] [decimal](28, 7) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[TRANSLATED_DESCRIPTION] [varchar](1000) NULL,
	[EXTENDED_ACCTD_AMOUNT] [decimal](28, 7) NULL,
	[BR_REF_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[BR_REF_PAYMENT_SCHEDULE_ID] [decimal](15, 0) NULL,
	[BR_ADJUSTMENT_ID] [decimal](15, 0) NULL,
	[MRC_EXTENDED_ACCTD_AMOUNT] [varchar](2000) NULL,
	[PAYMENT_SET_ID] [decimal](15, 0) NULL,
	[CONTRACT_LINE_ID] [decimal](28, 7) NULL,
	[SOURCE_DATA_KEY1] [varchar](150) NULL,
	[SOURCE_DATA_KEY2] [varchar](150) NULL,
	[SOURCE_DATA_KEY3] [varchar](150) NULL,
	[SOURCE_DATA_KEY4] [varchar](150) NULL,
	[SOURCE_DATA_KEY5] [varchar](150) NULL,
	[INVOICED_LINE_ACCTG_LEVEL] [varchar](15) NULL,
	[OVERRIDE_AUTO_ACCOUNTING_FLAG] [varchar](1) NULL,
	[SHIP_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[SHIP_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[SHIP_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[HISTORICAL_FLAG] [varchar](1) NULL,
	[TAX_LINE_ID] [decimal](15, 0) NULL,
	[LINE_RECOVERABLE] [decimal](28, 7) NULL,
	[TAX_RECOVERABLE] [decimal](28, 7) NULL,
	[TAX_CLASSIFICATION_CODE] [varchar](50) NULL,
	[AMOUNT_DUE_REMAINING] [decimal](28, 7) NULL,
	[ACCTD_AMOUNT_DUE_REMAINING] [decimal](28, 7) NULL,
	[AMOUNT_DUE_ORIGINAL] [decimal](28, 7) NULL,
	[ACCTD_AMOUNT_DUE_ORIGINAL] [decimal](28, 7) NULL,
	[CHRG_AMOUNT_REMAINING] [decimal](28, 7) NULL,
	[CHRG_ACCTD_AMOUNT_REMAINING] [decimal](28, 7) NULL,
	[FRT_ADJ_REMAINING] [decimal](28, 7) NULL,
	[FRT_ADJ_ACCTD_REMAINING] [decimal](28, 7) NULL,
	[FRT_ED_AMOUNT] [decimal](28, 7) NULL,
	[FRT_ED_ACCTD_AMOUNT] [decimal](28, 7) NULL,
	[FRT_UNED_AMOUNT] [decimal](28, 7) NULL,
	[FRT_UNED_ACCTD_AMOUNT] [decimal](28, 7) NULL,
	[DEFERRAL_EXCLUSION_FLAG] [varchar](1) NULL,
	[RULE_END_DATE] [datetime2](7) NULL,
	[PAYMENT_TRXN_EXTENSION_ID] [decimal](15, 0) NULL,
	[INTEREST_LINE_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[RA_CUSTOMER_TRX_LINES_ALL_PRESTG]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[RA_CUSTOMER_TRX_LINES_ALL_PRESTG](
	[CUSTOMER_TRX_LINE_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[LINE_NUMBER] [decimal](28, 7) NULL,
	[SET_OF_BOOKS_ID] [decimal](15, 0) NULL,
	[REASON_CODE] [varchar](30) NULL,
	[INVENTORY_ITEM_ID] [decimal](15, 0) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[PREVIOUS_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[PREVIOUS_CUSTOMER_TRX_LINE_ID] [decimal](15, 0) NULL,
	[QUANTITY_ORDERED] [decimal](28, 7) NULL,
	[QUANTITY_CREDITED] [decimal](28, 7) NULL,
	[QUANTITY_INVOICED] [decimal](28, 7) NULL,
	[UNIT_STANDARD_PRICE] [decimal](28, 7) NULL,
	[UNIT_SELLING_PRICE] [decimal](28, 7) NULL,
	[SALES_ORDER] [varchar](50) NULL,
	[SALES_ORDER_REVISION] [decimal](28, 7) NULL,
	[SALES_ORDER_LINE] [varchar](30) NULL,
	[SALES_ORDER_DATE] [datetime2](7) NULL,
	[ACCOUNTING_RULE_ID] [decimal](15, 0) NULL,
	[ACCOUNTING_RULE_DURATION] [decimal](15, 0) NULL,
	[LINE_TYPE] [varchar](20) NULL,
	[ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[PROGRAM_APPLICATION_ID] [decimal](15, 0) NULL,
	[PROGRAM_ID] [decimal](15, 0) NULL,
	[PROGRAM_UPDATE_DATE] [datetime2](7) NULL,
	[RULE_START_DATE] [datetime2](7) NULL,
	[INITIAL_CUSTOMER_TRX_LINE_ID] [decimal](15, 0) NULL,
	[INTERFACE_LINE_CONTEXT] [varchar](30) NULL,
	[INTERFACE_LINE_ATTRIBUTE1] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE2] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE3] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE4] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE5] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE6] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE7] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE8] [varchar](150) NULL,
	[SALES_ORDER_SOURCE] [varchar](50) NULL,
	[TAXABLE_FLAG] [varchar](1) NULL,
	[EXTENDED_AMOUNT] [decimal](28, 7) NULL,
	[REVENUE_AMOUNT] [decimal](28, 7) NULL,
	[AUTORULE_COMPLETE_FLAG] [varchar](1) NULL,
	[LINK_TO_CUST_TRX_LINE_ID] [decimal](15, 0) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[TAX_PRECEDENCE] [decimal](28, 7) NULL,
	[TAX_RATE] [decimal](28, 7) NULL,
	[ITEM_EXCEPTION_RATE_ID] [decimal](15, 0) NULL,
	[TAX_EXEMPTION_ID] [decimal](15, 0) NULL,
	[MEMO_LINE_ID] [decimal](15, 0) NULL,
	[AUTORULE_DURATION_PROCESSED] [decimal](15, 0) NULL,
	[UOM_CODE] [varchar](3) NULL,
	[DEFAULT_USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[DEFAULT_USSGL_TRX_CODE_CONTEXT] [varchar](30) NULL,
	[INTERFACE_LINE_ATTRIBUTE10] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE11] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE12] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE13] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE14] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE15] [varchar](150) NULL,
	[INTERFACE_LINE_ATTRIBUTE9] [varchar](150) NULL,
	[VAT_TAX_ID] [decimal](15, 0) NULL,
	[AUTOTAX] [varchar](1) NULL,
	[LAST_PERIOD_TO_CREDIT] [decimal](28, 7) NULL,
	[ITEM_CONTEXT] [varchar](30) NULL,
	[TAX_EXEMPT_FLAG] [varchar](1) NULL,
	[TAX_EXEMPT_NUMBER] [varchar](80) NULL,
	[TAX_EXEMPT_REASON_CODE] [varchar](30) NULL,
	[TAX_VENDOR_RETURN_CODE] [varchar](30) NULL,
	[SALES_TAX_ID] [decimal](15, 0) NULL,
	[LOCATION_SEGMENT_ID] [decimal](15, 0) NULL,
	[MOVEMENT_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[WH_UPDATE_DATE] [datetime2](7) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GROSS_UNIT_SELLING_PRICE] [decimal](28, 7) NULL,
	[GROSS_EXTENDED_AMOUNT] [decimal](28, 7) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAXABLE_AMOUNT] [decimal](28, 7) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[TRANSLATED_DESCRIPTION] [varchar](1000) NULL,
	[EXTENDED_ACCTD_AMOUNT] [decimal](28, 7) NULL,
	[BR_REF_CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[BR_REF_PAYMENT_SCHEDULE_ID] [decimal](15, 0) NULL,
	[BR_ADJUSTMENT_ID] [decimal](15, 0) NULL,
	[MRC_EXTENDED_ACCTD_AMOUNT] [varchar](2000) NULL,
	[PAYMENT_SET_ID] [decimal](15, 0) NULL,
	[CONTRACT_LINE_ID] [decimal](28, 7) NULL,
	[SOURCE_DATA_KEY1] [varchar](150) NULL,
	[SOURCE_DATA_KEY2] [varchar](150) NULL,
	[SOURCE_DATA_KEY3] [varchar](150) NULL,
	[SOURCE_DATA_KEY4] [varchar](150) NULL,
	[SOURCE_DATA_KEY5] [varchar](150) NULL,
	[INVOICED_LINE_ACCTG_LEVEL] [varchar](15) NULL,
	[OVERRIDE_AUTO_ACCOUNTING_FLAG] [varchar](1) NULL,
	[SHIP_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[SHIP_TO_ADDRESS_ID] [decimal](15, 0) NULL,
	[SHIP_TO_SITE_USE_ID] [decimal](15, 0) NULL,
	[SHIP_TO_CONTACT_ID] [decimal](15, 0) NULL,
	[HISTORICAL_FLAG] [varchar](1) NULL,
	[TAX_LINE_ID] [decimal](15, 0) NULL,
	[LINE_RECOVERABLE] [decimal](28, 7) NULL,
	[TAX_RECOVERABLE] [decimal](28, 7) NULL,
	[TAX_CLASSIFICATION_CODE] [varchar](50) NULL,
	[AMOUNT_DUE_REMAINING] [decimal](28, 7) NULL,
	[ACCTD_AMOUNT_DUE_REMAINING] [decimal](28, 7) NULL,
	[AMOUNT_DUE_ORIGINAL] [decimal](28, 7) NULL,
	[ACCTD_AMOUNT_DUE_ORIGINAL] [decimal](28, 7) NULL,
	[CHRG_AMOUNT_REMAINING] [decimal](28, 7) NULL,
	[CHRG_ACCTD_AMOUNT_REMAINING] [decimal](28, 7) NULL,
	[FRT_ADJ_REMAINING] [decimal](28, 7) NULL,
	[FRT_ADJ_ACCTD_REMAINING] [decimal](28, 7) NULL,
	[FRT_ED_AMOUNT] [decimal](28, 7) NULL,
	[FRT_ED_ACCTD_AMOUNT] [decimal](28, 7) NULL,
	[FRT_UNED_AMOUNT] [decimal](28, 7) NULL,
	[FRT_UNED_ACCTD_AMOUNT] [decimal](28, 7) NULL,
	[DEFERRAL_EXCLUSION_FLAG] [varchar](1) NULL,
	[RULE_END_DATE] [datetime2](7) NULL,
	[PAYMENT_TRXN_EXTENSION_ID] [decimal](15, 0) NULL,
	[INTEREST_LINE_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_FND_FLEX_VALUE_SETS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_FND_FLEX_VALUE_SETS](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NOT NULL,
	[FLEX_VALUE_SET_NAME] [varchar](60) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[VALIDATION_TYPE] [varchar](1) NULL,
	[PROTECTED_FLAG] [varchar](1) NULL,
	[SECURITY_ENABLED_FLAG] [varchar](1) NULL,
	[LONGLIST_FLAG] [varchar](1) NULL,
	[FORMAT_TYPE] [varchar](1) NULL,
	[MAXIMUM_SIZE] [int] NULL,
	[ALPHANUMERIC_ALLOWED_FLAG] [varchar](1) NULL,
	[UPPERCASE_ONLY_FLAG] [varchar](1) NULL,
	[NUMERIC_MODE_ENABLED_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[DEPENDANT_DEFAULT_VALUE] [varchar](60) NULL,
	[DEPENDANT_DEFAULT_MEANING] [varchar](240) NULL,
	[PARENT_FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MINIMUM_VALUE] [varchar](150) NULL,
	[MAXIMUM_VALUE] [varchar](150) NULL,
	[NUMBER_PRECISION] [int] NULL,
 CONSTRAINT [PK_STG_FND_FLEX_VALUE_SETS] PRIMARY KEY CLUSTERED 
(
	[FLEX_VALUE_SET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_FND_FLEX_VALUE_SETS_CL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_FND_FLEX_VALUE_SETS_CL](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_SET_NAME] [varchar](60) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[VALIDATION_TYPE] [varchar](1) NULL,
	[PROTECTED_FLAG] [varchar](1) NULL,
	[SECURITY_ENABLED_FLAG] [varchar](1) NULL,
	[LONGLIST_FLAG] [varchar](1) NULL,
	[FORMAT_TYPE] [varchar](1) NULL,
	[MAXIMUM_SIZE] [int] NULL,
	[ALPHANUMERIC_ALLOWED_FLAG] [varchar](1) NULL,
	[UPPERCASE_ONLY_FLAG] [varchar](1) NULL,
	[NUMERIC_MODE_ENABLED_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[DEPENDANT_DEFAULT_VALUE] [varchar](60) NULL,
	[DEPENDANT_DEFAULT_MEANING] [varchar](240) NULL,
	[PARENT_FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MINIMUM_VALUE] [varchar](150) NULL,
	[MAXIMUM_VALUE] [varchar](150) NULL,
	[NUMBER_PRECISION] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_FND_FLEX_VALUES_VL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_FND_FLEX_VALUES_VL](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NOT NULL,
	[FLEX_VALUE_ID] [decimal](15, 0) NOT NULL,
	[FLEX_VALUE] [varchar](150) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[PARENT_FLEX_VALUE_LOW] [varchar](60) NULL,
	[PARENT_FLEX_VALUE_HIGH] [varchar](60) NULL,
	[STRUCTURED_HIERARCHY_LEVEL] [decimal](15, 0) NULL,
	[HIERARCHY_LEVEL] [varchar](30) NULL,
	[COMPILED_VALUE_ATTRIBUTES] [varchar](2000) NULL,
	[VALUE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[ATTRIBUTE31] [varchar](240) NULL,
	[ATTRIBUTE32] [varchar](240) NULL,
	[ATTRIBUTE33] [varchar](240) NULL,
	[ATTRIBUTE34] [varchar](240) NULL,
	[ATTRIBUTE35] [varchar](240) NULL,
	[ATTRIBUTE36] [varchar](240) NULL,
	[ATTRIBUTE37] [varchar](240) NULL,
	[ATTRIBUTE38] [varchar](240) NULL,
	[ATTRIBUTE39] [varchar](240) NULL,
	[ATTRIBUTE40] [varchar](240) NULL,
	[ATTRIBUTE41] [varchar](240) NULL,
	[ATTRIBUTE42] [varchar](240) NULL,
	[ATTRIBUTE43] [varchar](240) NULL,
	[ATTRIBUTE44] [varchar](240) NULL,
	[ATTRIBUTE45] [varchar](240) NULL,
	[ATTRIBUTE46] [varchar](240) NULL,
	[ATTRIBUTE47] [varchar](240) NULL,
	[ATTRIBUTE48] [varchar](240) NULL,
	[ATTRIBUTE49] [varchar](240) NULL,
	[ATTRIBUTE50] [varchar](240) NULL,
	[FLEX_VALUE_MEANING] [varchar](150) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[ATTRIBUTE_SORT_ORDER] [decimal](15, 0) NULL,
 CONSTRAINT [PK_STG_FND_FLEX_VALUES_VL] PRIMARY KEY CLUSTERED 
(
	[FLEX_VALUE_SET_ID] ASC,
	[FLEX_VALUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_FND_FLEX_VALUES_VL_CL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_FND_FLEX_VALUES_VL_CL](
	[FLEX_VALUE_SET_ID] [decimal](10, 0) NULL,
	[FLEX_VALUE_ID] [decimal](15, 0) NULL,
	[FLEX_VALUE] [varchar](150) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[PARENT_FLEX_VALUE_LOW] [varchar](60) NULL,
	[PARENT_FLEX_VALUE_HIGH] [varchar](60) NULL,
	[STRUCTURED_HIERARCHY_LEVEL] [decimal](15, 0) NULL,
	[HIERARCHY_LEVEL] [varchar](30) NULL,
	[COMPILED_VALUE_ATTRIBUTES] [varchar](2000) NULL,
	[VALUE_CATEGORY] [varchar](30) NULL,
	[ATTRIBUTE1] [varchar](240) NULL,
	[ATTRIBUTE2] [varchar](240) NULL,
	[ATTRIBUTE3] [varchar](240) NULL,
	[ATTRIBUTE4] [varchar](240) NULL,
	[ATTRIBUTE5] [varchar](240) NULL,
	[ATTRIBUTE6] [varchar](240) NULL,
	[ATTRIBUTE7] [varchar](240) NULL,
	[ATTRIBUTE8] [varchar](240) NULL,
	[ATTRIBUTE9] [varchar](240) NULL,
	[ATTRIBUTE10] [varchar](240) NULL,
	[ATTRIBUTE11] [varchar](240) NULL,
	[ATTRIBUTE12] [varchar](240) NULL,
	[ATTRIBUTE13] [varchar](240) NULL,
	[ATTRIBUTE14] [varchar](240) NULL,
	[ATTRIBUTE15] [varchar](240) NULL,
	[ATTRIBUTE16] [varchar](240) NULL,
	[ATTRIBUTE17] [varchar](240) NULL,
	[ATTRIBUTE18] [varchar](240) NULL,
	[ATTRIBUTE19] [varchar](240) NULL,
	[ATTRIBUTE20] [varchar](240) NULL,
	[ATTRIBUTE21] [varchar](240) NULL,
	[ATTRIBUTE22] [varchar](240) NULL,
	[ATTRIBUTE23] [varchar](240) NULL,
	[ATTRIBUTE24] [varchar](240) NULL,
	[ATTRIBUTE25] [varchar](240) NULL,
	[ATTRIBUTE26] [varchar](240) NULL,
	[ATTRIBUTE27] [varchar](240) NULL,
	[ATTRIBUTE28] [varchar](240) NULL,
	[ATTRIBUTE29] [varchar](240) NULL,
	[ATTRIBUTE30] [varchar](240) NULL,
	[ATTRIBUTE31] [varchar](240) NULL,
	[ATTRIBUTE32] [varchar](240) NULL,
	[ATTRIBUTE33] [varchar](240) NULL,
	[ATTRIBUTE34] [varchar](240) NULL,
	[ATTRIBUTE35] [varchar](240) NULL,
	[ATTRIBUTE36] [varchar](240) NULL,
	[ATTRIBUTE37] [varchar](240) NULL,
	[ATTRIBUTE38] [varchar](240) NULL,
	[ATTRIBUTE39] [varchar](240) NULL,
	[ATTRIBUTE40] [varchar](240) NULL,
	[ATTRIBUTE41] [varchar](240) NULL,
	[ATTRIBUTE42] [varchar](240) NULL,
	[ATTRIBUTE43] [varchar](240) NULL,
	[ATTRIBUTE44] [varchar](240) NULL,
	[ATTRIBUTE45] [varchar](240) NULL,
	[ATTRIBUTE46] [varchar](240) NULL,
	[ATTRIBUTE47] [varchar](240) NULL,
	[ATTRIBUTE48] [varchar](240) NULL,
	[ATTRIBUTE49] [varchar](240) NULL,
	[ATTRIBUTE50] [varchar](240) NULL,
	[FLEX_VALUE_MEANING] [varchar](150) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[ATTRIBUTE_SORT_ORDER] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_CODE_COMBINATIONS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_CODE_COMBINATIONS](
	[CODE_COMBINATION_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[DETAIL_POSTING_ALLOWED_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED_FLAG] [varchar](1) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE3] [varchar](25) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_FLAG] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[LEDGER_TYPE_CODE] [varchar](1) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
 CONSTRAINT [PK_STG_GL_CODE_COMBINATIONS] PRIMARY KEY CLUSTERED 
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_CODE_COMBINATIONS_KFV]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_CODE_COMBINATIONS_KFV](
	[CODE_COMBINATION_ID] [decimal](15, 0) NOT NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CONCATENATED_SEGMENTS] [varchar](129) NULL,
	[PADDED_CONCATENATED_SEGMENTS] [varchar](25) NULL,
	[GL_ACCOUNT_TYPE] [varchar](1) NULL,
	[GL_CONTROL_ACCOUNT] [varchar](25) NULL,
	[RECONCILIATION_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED] [varchar](1) NULL,
	[DETAIL_POSTING_ALLOWED] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL,
 CONSTRAINT [PK_STG_GL_CODE_COMBINATIONS_KFV] PRIMARY KEY CLUSTERED 
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_CODE_COMBINATIONS_KFV_CL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_CODE_COMBINATIONS_KFV_CL](
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CONCATENATED_SEGMENTS] [varchar](129) NULL,
	[PADDED_CONCATENATED_SEGMENTS] [varchar](25) NULL,
	[GL_ACCOUNT_TYPE] [varchar](1) NULL,
	[GL_CONTROL_ACCOUNT] [varchar](25) NULL,
	[RECONCILIATION_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED] [varchar](1) NULL,
	[DETAIL_POSTING_ALLOWED] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_CODE_COMBINATIONS_NM]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_CODE_COMBINATIONS_NM](
	[CODE_COMBINATION_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[DETAIL_POSTING_ALLOWED_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED_FLAG] [varchar](1) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE3] [varchar](25) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_FLAG] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[LEDGER_TYPE_CODE] [varchar](1) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_JE_BATCHES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_JE_BATCHES](
	[JE_BATCH_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NAME] [varchar](100) NULL,
	[STATUS] [varchar](1) NULL,
	[STATUS_VERIFIED] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[AVERAGE_JOURNAL_FLAG] [varchar](1) NULL,
	[BUDGETARY_CONTROL_STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[STATUS_RESET_FLAG] [varchar](1) NULL,
	[DEFAULT_PERIOD_NAME] [varchar](15) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](35, 7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[PACKET_ID] [decimal](15, 0) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[POSTING_RUN_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[UNRESERVATION_PACKET_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROVAL_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POSTED_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[GROUP_ID] [decimal](28, 7) NULL,
	[APPROVER_EMPLOYEE_ID] [decimal](15, 0) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
 CONSTRAINT [PK_STG_GL_JE_BATCHES] PRIMARY KEY CLUSTERED 
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_JE_BATCHES_CL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_JE_BATCHES_CL](
	[JE_BATCH_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NAME] [varchar](100) NULL,
	[STATUS] [varchar](1) NULL,
	[STATUS_VERIFIED] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[AVERAGE_JOURNAL_FLAG] [varchar](1) NULL,
	[BUDGETARY_CONTROL_STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[STATUS_RESET_FLAG] [varchar](1) NULL,
	[DEFAULT_PERIOD_NAME] [varchar](15) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[PACKET_ID] [decimal](15, 0) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[POSTING_RUN_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[UNRESERVATION_PACKET_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROVAL_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POSTED_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[GROUP_ID] [decimal](28, 7) NULL,
	[APPROVER_EMPLOYEE_ID] [decimal](15, 0) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_JE_HEADERS]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_JE_HEADERS](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[JE_CATEGORY] [varchar](25) NULL,
	[JE_SOURCE] [varchar](25) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[NAME] [varchar](100) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[STATUS] [varchar](1) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[ACCRUAL_REV_FLAG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLAG] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[CONVERSION_FLAG] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENCUMBRANCE_TYPE_ID] [decimal](15, 0) NULL,
	[BUDGET_VERSION_ID] [decimal](15, 0) NULL,
	[BALANCED_JE_FLAG] [varchar](1) NULL,
	[BALANCING_SEGMENT_VALUE] [varchar](25) NULL,
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[FROM_RECURRING_HEADER_ID] [decimal](15, 0) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_EFFECTIVE_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_PERIOD_NAME] [varchar](15) NULL,
	[ACCRUAL_REV_STATUS] [varchar](1) NULL,
	[ACCRUAL_REV_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ACCRUAL_REV_CHANGE_SIGN_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](35, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](35, 7) NULL,
	[CURRENCY_CONVERSION_RATE] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_TYPE] [varchar](30) NULL,
	[CURRENCY_CONVERSION_DATE] [datetime2](7) NULL,
	[EXTERNAL_REFERENCE] [varchar](80) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_HEADER_ID] [decimal](15, 0) NULL,
	[REVERSED_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ORIGINATING_BAL_SEG_VALUE] [varchar](25) NULL,
	[INTERCOMPANY_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VALUE] [varchar](25) NULL,
	[CR_BAL_SEG_VALUE] [varchar](25) NULL,
	[REFERENCE_DATE] [datetime2](7) NULL,
	[LOCAL_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[LOCAL_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[DISPLAY_ALC_JOURNAL_FLAG] [varchar](1) NULL,
	[JE_FROM_SLA_FLAG] [varchar](1) NULL,
	[POSTING_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
 CONSTRAINT [PK_STG_GL_JE_HEADERS] PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_JE_HEADERS_CL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_JE_HEADERS_CL](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[JE_CATEGORY] [varchar](25) NULL,
	[JE_SOURCE] [varchar](25) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[NAME] [varchar](100) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[STATUS] [varchar](1) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[ACCRUAL_REV_FLAG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLAG] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[CONVERSION_FLAG] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENCUMBRANCE_TYPE_ID] [decimal](15, 0) NULL,
	[BUDGET_VERSION_ID] [decimal](15, 0) NULL,
	[BALANCED_JE_FLAG] [varchar](1) NULL,
	[BALANCING_SEGMENT_VALUE] [varchar](25) NULL,
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[FROM_RECURRING_HEADER_ID] [decimal](15, 0) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_EFFECTIVE_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_PERIOD_NAME] [varchar](15) NULL,
	[ACCRUAL_REV_STATUS] [varchar](1) NULL,
	[ACCRUAL_REV_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ACCRUAL_REV_CHANGE_SIGN_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_RATE] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_TYPE] [varchar](30) NULL,
	[CURRENCY_CONVERSION_DATE] [datetime2](7) NULL,
	[EXTERNAL_REFERENCE] [varchar](80) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_HEADER_ID] [decimal](15, 0) NULL,
	[REVERSED_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ORIGINATING_BAL_SEG_VALUE] [varchar](25) NULL,
	[INTERCOMPANY_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VALUE] [varchar](25) NULL,
	[CR_BAL_SEG_VALUE] [varchar](25) NULL,
	[REFERENCE_DATE] [datetime2](7) NULL,
	[LOCAL_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[LOCAL_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[DISPLAY_ALC_JOURNAL_FLAG] [varchar](1) NULL,
	[JE_FROM_SLA_FLAG] [varchar](1) NULL,
	[POSTING_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_JE_LINES]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_JE_LINES](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[JE_LINE_NUM] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[EFFECTIVE_DATE] [datetime2](7) NULL,
	[STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENTERED_DR] [decimal](35, 7) NULL,
	[ENTERED_CR] [decimal](35, 7) NULL,
	[ACCOUNTED_DR] [decimal](35, 7) NULL,
	[ACCOUNTED_CR] [decimal](35, 7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[REFERENCE_1] [varchar](240) NULL,
	[REFERENCE_2] [varchar](240) NULL,
	[REFERENCE_3] [varchar](240) NULL,
	[REFERENCE_4] [varchar](240) NULL,
	[REFERENCE_5] [varchar](240) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[INVOICE_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](15) NULL,
	[INVOICE_IDENTIFIER] [varchar](20) NULL,
	[INVOICE_AMOUNT] [decimal](28, 7) NULL,
	[NO1] [varchar](150) NULL,
	[STAT_AMOUNT] [decimal](28, 7) NULL,
	[IGNORE_RATE_FLAG] [varchar](1) NULL,
	[CONTEXT3] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[SUBLEDGER_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[CONTEXT4] [varchar](150) NULL,
	[SUBLEDGER_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[REFERENCE_6] [varchar](240) NULL,
	[REFERENCE_7] [varchar](240) NULL,
	[REFERENCE_8] [varchar](240) NULL,
	[REFERENCE_9] [varchar](240) NULL,
	[REFERENCE_10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[JGZZ_RECON_STATUS_11I] [varchar](1) NULL,
	[JGZZ_RECON_DATE_11I] [datetime2](7) NULL,
	[JGZZ_RECON_ID_11I] [decimal](28, 7) NULL,
	[JGZZ_RECON_REF_11I] [varchar](240) NULL,
	[JGZZ_RECON_CONTEXT_11I] [varchar](30) NULL,
	[TAXABLE_LINE_FLAG] [varchar](1) NULL,
	[TAX_TYPE_CODE] [varchar](1) NULL,
	[TAX_CODE_ID] [decimal](15, 0) NULL,
	[TAX_ROUNDING_RULE_CODE] [varchar](1) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAX_DOCUMENT_IDENTIFIER] [varchar](50) NULL,
	[TAX_DOCUMENT_DATE] [datetime2](7) NULL,
	[TAX_CUSTOMER_NAME] [varchar](240) NULL,
	[TAX_CUSTOMER_REFERENCE] [varchar](240) NULL,
	[TAX_REGISTRATION_NUMBER] [varchar](50) NULL,
	[TAX_LINE_FLAG] [varchar](1) NULL,
	[TAX_GROUP_ID] [decimal](15, 0) NULL,
	[LINE_TYPE_CODE] [varchar](20) NULL,
	[GL_SL_LINK_ID] [decimal](28, 7) NULL,
	[GL_SL_LINK_TABLE] [varchar](30) NULL,
	[CO_THIRD_PARTY] [varchar](14) NULL,
	[CO_PROCESSED_FLAG] [varchar](1) NULL,
 CONSTRAINT [PK_STG_GL_JE_LINES] PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_JE_LINES_CL]    Script Date: 9/11/2018 6:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_JE_LINES_CL](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[JE_LINE_NUM] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[EFFECTIVE_DATE] [datetime2](7) NULL,
	[STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENTERED_DR] [decimal](28, 7) NULL,
	[ENTERED_CR] [decimal](28, 7) NULL,
	[ACCOUNTED_DR] [decimal](28, 7) NULL,
	[ACCOUNTED_CR] [decimal](28, 7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[REFERENCE_1] [varchar](240) NULL,
	[REFERENCE_2] [varchar](240) NULL,
	[REFERENCE_3] [varchar](240) NULL,
	[REFERENCE_4] [varchar](240) NULL,
	[REFERENCE_5] [varchar](240) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[INVOICE_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](15) NULL,
	[INVOICE_IDENTIFIER] [varchar](20) NULL,
	[INVOICE_AMOUNT] [decimal](28, 7) NULL,
	[NO1] [varchar](150) NULL,
	[STAT_AMOUNT] [decimal](28, 7) NULL,
	[IGNORE_RATE_FLAG] [varchar](1) NULL,
	[CONTEXT3] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[SUBLEDGER_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[CONTEXT4] [varchar](150) NULL,
	[SUBLEDGER_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[REFERENCE_6] [varchar](240) NULL,
	[REFERENCE_7] [varchar](240) NULL,
	[REFERENCE_8] [varchar](240) NULL,
	[REFERENCE_9] [varchar](240) NULL,
	[REFERENCE_10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[JGZZ_RECON_STATUS_11I] [varchar](1) NULL,
	[JGZZ_RECON_DATE_11I] [datetime2](7) NULL,
	[JGZZ_RECON_ID_11I] [decimal](28, 7) NULL,
	[JGZZ_RECON_REF_11I] [varchar](240) NULL,
	[JGZZ_RECON_CONTEXT_11I] [varchar](30) NULL,
	[TAXABLE_LINE_FLAG] [varchar](1) NULL,
	[TAX_TYPE_CODE] [varchar](1) NULL,
	[TAX_CODE_ID] [decimal](15, 0) NULL,
	[TAX_ROUNDING_RULE_CODE] [varchar](1) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAX_DOCUMENT_IDENTIFIER] [varchar](50) NULL,
	[TAX_DOCUMENT_DATE] [datetime2](7) NULL,
	[TAX_CUSTOMER_NAME] [varchar](240) NULL,
	[TAX_CUSTOMER_REFERENCE] [varchar](240) NULL,
	[TAX_REGISTRATION_NUMBER] [varchar](50) NULL,
	[TAX_LINE_FLAG] [varchar](1) NULL,
	[TAX_GROUP_ID] [decimal](15, 0) NULL,
	[LINE_TYPE_CODE] [varchar](20) NULL,
	[GL_SL_LINK_ID] [decimal](28, 7) NULL,
	[GL_SL_LINK_TABLE] [varchar](30) NULL,
	[CO_THIRD_PARTY] [varchar](14) NULL,
	[CO_PROCESSED_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_LEDGERS]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_LEDGERS](
	[LEDGER_ID] [decimal](15, 0) NOT NULL,
	[NAME] [varchar](30) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[LEDGER_CATEGORY_CODE] [varchar](30) NULL,
	[ALC_LEDGER_TYPE_CODE] [varchar](30) NULL,
	[OBJECT_TYPE_CODE] [varchar](1) NULL,
	[LE_LEDGER_TYPE_CODE] [varchar](1) NULL,
	[COMPLETION_STATUS_CODE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[FIRST_LEDGER_PERIOD_NAME] [varchar](15) NULL,
	[RET_EARN_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[SUSPENSE_ALLOWED_FLAG] [varchar](1) NULL,
	[ALLOW_INTERCOMPANY_POST_FLAG] [varchar](1) NULL,
	[TRACK_ROUNDING_IMBALANCE_FLAG] [varchar](1) NULL,
	[ENABLE_AVERAGE_BALANCES_FLAG] [varchar](1) NULL,
	[CUM_TRANS_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[NET_INCOME_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ROUNDING_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ENABLE_BUDGETARY_CONTROL_FLAG] [varchar](1) NULL,
	[REQUIRE_BUDGET_JOURNALS_FLAG] [varchar](1) NULL,
	[ENABLE_JE_APPROVAL_FLAG] [varchar](1) NULL,
	[ENABLE_AUTOMATIC_TAX_FLAG] [varchar](1) NULL,
	[CONSOLIDATION_LEDGER_FLAG] [varchar](1) NULL,
	[TRANSLATE_EOD_FLAG] [varchar](1) NULL,
	[TRANSLATE_QATD_FLAG] [varchar](1) NULL,
	[TRANSLATE_YATD_FLAG] [varchar](1) NULL,
	[TRANSACTION_CALENDAR_ID] [decimal](15, 0) NULL,
	[DAILY_TRANSLATION_RATE_TYPE] [varchar](30) NULL,
	[AUTOMATICALLY_CREATED_FLAG] [varchar](1) NULL,
	[BAL_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[BAL_SEG_COLUMN_NAME] [varchar](25) NULL,
	[MGT_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[MGT_SEG_COLUMN_NAME] [varchar](25) NULL,
	[BAL_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[IMPLICIT_ACCESS_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUTURE_ENTERABLE_PERIODS_LIMIT] [decimal](15, 0) NULL,
	[LEDGER_ATTRIBUTES] [varchar](2000) NULL,
	[IMPLICIT_LEDGER_SET_ID] [decimal](15, 0) NULL,
	[LATEST_OPENED_PERIOD_NAME] [varchar](15) NULL,
	[LATEST_ENCUMBRANCE_YEAR] [decimal](15, 0) NULL,
	[PERIOD_AVERAGE_RATE_TYPE] [varchar](30) NULL,
	[PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_AVG_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_CODE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_TYPE] [varchar](1) NULL,
	[SLA_DESCRIPTION_LANGUAGE] [varchar](15) NULL,
	[SLA_ENTERED_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQUENCING_FLAG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDGER_CURR_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENABLE_SECONDARY_TRACK_FLAG] [varchar](1) NULL,
	[ENABLE_REVAL_SS_TRACK_FLAG] [varchar](1) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTEXT] [varchar](150) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ENABLE_RECONCILIATION_FLAG] [varchar](1) NULL,
	[CREATE_JE_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CASH_BASIS_FLAG] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[COMMITMENT_BUDGET_FLAG] [varchar](1) NULL,
	[NET_CLOSING_BAL_FLAG] [varchar](1) NULL,
	[AUTOMATE_SEC_JRNL_REV_FLAG] [varchar](1) NULL,
 CONSTRAINT [PK_STG_GL_LEDGERS] PRIMARY KEY CLUSTERED 
(
	[LEDGER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_LEDGERS_NM]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_LEDGERS_NM](
	[LEDGER_ID] [decimal](15, 0) NOT NULL,
	[NAME] [varchar](30) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[LEDGER_CATEGORY_CODE] [varchar](30) NULL,
	[ALC_LEDGER_TYPE_CODE] [varchar](30) NULL,
	[OBJECT_TYPE_CODE] [varchar](1) NULL,
	[LE_LEDGER_TYPE_CODE] [varchar](1) NULL,
	[COMPLETION_STATUS_CODE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[FIRST_LEDGER_PERIOD_NAME] [varchar](15) NULL,
	[RET_EARN_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[SUSPENSE_ALLOWED_FLAG] [varchar](1) NULL,
	[ALLOW_INTERCOMPANY_POST_FLAG] [varchar](1) NULL,
	[TRACK_ROUNDING_IMBALANCE_FLAG] [varchar](1) NULL,
	[ENABLE_AVERAGE_BALANCES_FLAG] [varchar](1) NULL,
	[CUM_TRANS_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[NET_INCOME_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ROUNDING_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ENABLE_BUDGETARY_CONTROL_FLAG] [varchar](1) NULL,
	[REQUIRE_BUDGET_JOURNALS_FLAG] [varchar](1) NULL,
	[ENABLE_JE_APPROVAL_FLAG] [varchar](1) NULL,
	[ENABLE_AUTOMATIC_TAX_FLAG] [varchar](1) NULL,
	[CONSOLIDATION_LEDGER_FLAG] [varchar](1) NULL,
	[TRANSLATE_EOD_FLAG] [varchar](1) NULL,
	[TRANSLATE_QATD_FLAG] [varchar](1) NULL,
	[TRANSLATE_YATD_FLAG] [varchar](1) NULL,
	[TRANSACTION_CALENDAR_ID] [decimal](15, 0) NULL,
	[DAILY_TRANSLATION_RATE_TYPE] [varchar](30) NULL,
	[AUTOMATICALLY_CREATED_FLAG] [varchar](1) NULL,
	[BAL_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[BAL_SEG_COLUMN_NAME] [varchar](25) NULL,
	[MGT_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[MGT_SEG_COLUMN_NAME] [varchar](25) NULL,
	[BAL_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[IMPLICIT_ACCESS_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUTURE_ENTERABLE_PERIODS_LIMIT] [decimal](15, 0) NULL,
	[LEDGER_ATTRIBUTES] [varchar](2000) NULL,
	[IMPLICIT_LEDGER_SET_ID] [decimal](15, 0) NULL,
	[LATEST_OPENED_PERIOD_NAME] [varchar](15) NULL,
	[LATEST_ENCUMBRANCE_YEAR] [decimal](15, 0) NULL,
	[PERIOD_AVERAGE_RATE_TYPE] [varchar](30) NULL,
	[PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_AVG_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_CODE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_TYPE] [varchar](1) NULL,
	[SLA_DESCRIPTION_LANGUAGE] [varchar](15) NULL,
	[SLA_ENTERED_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQUENCING_FLAG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDGER_CURR_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENABLE_SECONDARY_TRACK_FLAG] [varchar](1) NULL,
	[ENABLE_REVAL_SS_TRACK_FLAG] [varchar](1) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTEXT] [varchar](150) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ENABLE_RECONCILIATION_FLAG] [varchar](1) NULL,
	[CREATE_JE_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CASH_BASIS_FLAG] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[COMMITMENT_BUDGET_FLAG] [varchar](1) NULL,
	[NET_CLOSING_BAL_FLAG] [varchar](1) NULL,
	[AUTOMATE_SEC_JRNL_REV_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[LEDGER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_GL_LEDGERS1]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_GL_LEDGERS1](
	[LEDGER_ID] [decimal](15, 0) NULL,
	[NAME] [varchar](30) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[LEDGER_CATEGORY_CODE] [varchar](30) NULL,
	[ALC_LEDGER_TYPE_CODE] [varchar](30) NULL,
	[OBJECT_TYPE_CODE] [varchar](1) NULL,
	[LE_LEDGER_TYPE_CODE] [varchar](1) NULL,
	[COMPLETION_STATUS_CODE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[FIRST_LEDGER_PERIOD_NAME] [varchar](15) NULL,
	[RET_EARN_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[SUSPENSE_ALLOWED_FLAG] [varchar](1) NULL,
	[ALLOW_INTERCOMPANY_POST_FLAG] [varchar](1) NULL,
	[TRACK_ROUNDING_IMBALANCE_FLAG] [varchar](1) NULL,
	[ENABLE_AVERAGE_BALANCES_FLAG] [varchar](1) NULL,
	[CUM_TRANS_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[NET_INCOME_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ROUNDING_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ENABLE_BUDGETARY_CONTROL_FLAG] [varchar](1) NULL,
	[REQUIRE_BUDGET_JOURNALS_FLAG] [varchar](1) NULL,
	[ENABLE_JE_APPROVAL_FLAG] [varchar](1) NULL,
	[ENABLE_AUTOMATIC_TAX_FLAG] [varchar](1) NULL,
	[CONSOLIDATION_LEDGER_FLAG] [varchar](1) NULL,
	[TRANSLATE_EOD_FLAG] [varchar](1) NULL,
	[TRANSLATE_QATD_FLAG] [varchar](1) NULL,
	[TRANSLATE_YATD_FLAG] [varchar](1) NULL,
	[TRANSACTION_CALENDAR_ID] [decimal](15, 0) NULL,
	[DAILY_TRANSLATION_RATE_TYPE] [varchar](30) NULL,
	[AUTOMATICALLY_CREATED_FLAG] [varchar](1) NULL,
	[BAL_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[BAL_SEG_COLUMN_NAME] [varchar](25) NULL,
	[MGT_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[MGT_SEG_COLUMN_NAME] [varchar](25) NULL,
	[BAL_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[IMPLICIT_ACCESS_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUTURE_ENTERABLE_PERIODS_LIMIT] [decimal](15, 0) NULL,
	[LEDGER_ATTRIBUTES] [varchar](2000) NULL,
	[IMPLICIT_LEDGER_SET_ID] [decimal](15, 0) NULL,
	[LATEST_OPENED_PERIOD_NAME] [varchar](15) NULL,
	[LATEST_ENCUMBRANCE_YEAR] [decimal](15, 0) NULL,
	[PERIOD_AVERAGE_RATE_TYPE] [varchar](30) NULL,
	[PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_AVG_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_CODE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_TYPE] [varchar](1) NULL,
	[SLA_DESCRIPTION_LANGUAGE] [varchar](15) NULL,
	[SLA_ENTERED_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQUENCING_FLAG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDGER_CURR_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENABLE_SECONDARY_TRACK_FLAG] [varchar](1) NULL,
	[ENABLE_REVAL_SS_TRACK_FLAG] [varchar](1) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTEXT] [varchar](150) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ENABLE_RECONCILIATION_FLAG] [varchar](1) NULL,
	[CREATE_JE_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CASH_BASIS_FLAG] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[COMMITMENT_BUDGET_FLAG] [varchar](1) NULL,
	[NET_CLOSING_BAL_FLAG] [varchar](1) NULL,
	[AUTOMATE_SEC_JRNL_REV_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KAP_EBS_HEADERS_HISTORY]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KAP_EBS_HEADERS_HISTORY](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[JE_CATEGORY] [varchar](25) NULL,
	[JE_SOURCE] [varchar](25) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[NAME] [varchar](100) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[STATUS] [varchar](1) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[ACCRUAL_REV_FLAG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLAG] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[CONVERSION_FLAG] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENCUMBRANCE_TYPE_ID] [decimal](15, 0) NULL,
	[BUDGET_VERSION_ID] [decimal](15, 0) NULL,
	[BALANCED_JE_FLAG] [varchar](1) NULL,
	[BALANCING_SEGMENT_VALUE] [varchar](25) NULL,
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[FROM_RECURRING_HEADER_ID] [decimal](15, 0) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_EFFECTIVE_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_PERIOD_NAME] [varchar](15) NULL,
	[ACCRUAL_REV_STATUS] [varchar](1) NULL,
	[ACCRUAL_REV_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ACCRUAL_REV_CHANGE_SIGN_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_RATE] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_TYPE] [varchar](30) NULL,
	[CURRENCY_CONVERSION_DATE] [datetime2](7) NULL,
	[EXTERNAL_REFERENCE] [varchar](80) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_HEADER_ID] [decimal](15, 0) NULL,
	[REVERSED_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ORIGINATING_BAL_SEG_VALUE] [varchar](25) NULL,
	[INTERCOMPANY_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VALUE] [varchar](25) NULL,
	[CR_BAL_SEG_VALUE] [varchar](25) NULL,
	[REFERENCE_DATE] [datetime2](7) NULL,
	[LOCAL_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[LOCAL_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[DISPLAY_ALC_JOURNAL_FLAG] [varchar](1) NULL,
	[JE_FROM_SLA_FLAG] [varchar](1) NULL,
	[POSTING_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KAP_EBS_LINES_HISTORY]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KAP_EBS_LINES_HISTORY](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[JE_LINE_NUM] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[EFFECTIVE_DATE] [datetime2](7) NULL,
	[STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENTERED_DR] [decimal](28, 7) NULL,
	[ENTERED_CR] [decimal](28, 7) NULL,
	[ACCOUNTED_DR] [decimal](28, 7) NULL,
	[ACCOUNTED_CR] [decimal](28, 7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[REFERENCE_1] [varchar](240) NULL,
	[REFERENCE_2] [varchar](240) NULL,
	[REFERENCE_3] [varchar](240) NULL,
	[REFERENCE_4] [varchar](240) NULL,
	[REFERENCE_5] [varchar](240) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[INVOICE_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](15) NULL,
	[INVOICE_IDENTIFIER] [varchar](20) NULL,
	[INVOICE_AMOUNT] [decimal](28, 7) NULL,
	[NO1] [varchar](150) NULL,
	[STAT_AMOUNT] [decimal](28, 7) NULL,
	[IGNORE_RATE_FLAG] [varchar](1) NULL,
	[CONTEXT3] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[SUBLEDGER_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[CONTEXT4] [varchar](150) NULL,
	[SUBLEDGER_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[REFERENCE_6] [varchar](240) NULL,
	[REFERENCE_7] [varchar](240) NULL,
	[REFERENCE_8] [varchar](240) NULL,
	[REFERENCE_9] [varchar](240) NULL,
	[REFERENCE_10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[JGZZ_RECON_STATUS_11I] [varchar](1) NULL,
	[JGZZ_RECON_DATE_11I] [datetime2](7) NULL,
	[JGZZ_RECON_ID_11I] [decimal](28, 7) NULL,
	[JGZZ_RECON_REF_11I] [varchar](240) NULL,
	[JGZZ_RECON_CONTEXT_11I] [varchar](30) NULL,
	[TAXABLE_LINE_FLAG] [varchar](1) NULL,
	[TAX_TYPE_CODE] [varchar](1) NULL,
	[TAX_CODE_ID] [decimal](15, 0) NULL,
	[TAX_ROUNDING_RULE_CODE] [varchar](1) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAX_DOCUMENT_IDENTIFIER] [varchar](50) NULL,
	[TAX_DOCUMENT_DATE] [datetime2](7) NULL,
	[TAX_CUSTOMER_NAME] [varchar](240) NULL,
	[TAX_CUSTOMER_REFERENCE] [varchar](240) NULL,
	[TAX_REGISTRATION_NUMBER] [varchar](50) NULL,
	[TAX_LINE_FLAG] [varchar](1) NULL,
	[TAX_GROUP_ID] [decimal](15, 0) NULL,
	[LINE_TYPE_CODE] [varchar](20) NULL,
	[GL_SL_LINK_ID] [decimal](28, 7) NULL,
	[GL_SL_LINK_TABLE] [varchar](30) NULL,
	[CO_THIRD_PARTY] [varchar](14) NULL,
	[CO_PROCESSED_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KAP_EBS_TEST_DELTA]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KAP_EBS_TEST_DELTA](
	[JE_BATCH_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NAME] [varchar](100) NULL,
	[STATUS] [varchar](1) NULL,
	[STATUS_VERIFIED] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[AVERAGE_JOURNAL_FLAG] [varchar](1) NULL,
	[BUDGETARY_CONTROL_STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[STATUS_RESET_FLAG] [varchar](1) NULL,
	[DEFAULT_PERIOD_NAME] [varchar](15) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[PACKET_ID] [decimal](15, 0) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[POSTING_RUN_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[UNRESERVATION_PACKET_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROVAL_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POSTED_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[GROUP_ID] [decimal](28, 7) NULL,
	[APPROVER_EMPLOYEE_ID] [decimal](15, 0) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEIN_ZBB_COST_CENTER_MASTER]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEIN_ZBB_COST_CENTER_MASTER](
	[COST_CENTER_CODE] [varchar](250) NOT NULL,
	[COST_CENTER_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_FLAG] [varchar](1) NULL,
	[LOCAL_CURRENCY] [varchar](3) NULL,
	[ATTRIBUTE1] [varchar](25) NULL,
	[CREATION_DATE] [varchar](25) NULL,
 CONSTRAINT [PK_STG_KEIN_ZBB_COST_CENTER_MASTER] PRIMARY KEY CLUSTERED 
(
	[COST_CENTER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEIN_ZBB_COST_CENTER_MASTER_CL]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEIN_ZBB_COST_CENTER_MASTER_CL](
	[COST_CENTER_CODE] [varchar](250) NOT NULL,
	[COST_CENTER_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_FLAG] [varchar](1) NULL,
	[LOCAL_CURRENCY] [varchar](3) NULL,
	[ATTRIBUTE1] [varchar](25) NULL,
	[CREATION_DATE] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[COST_CENTER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEIN_ZBB_ION_MASTER]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEIN_ZBB_ION_MASTER](
	[ION_CODE] [varchar](250) NOT NULL,
	[ION_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_ION] [varchar](1) NULL,
	[ADV_ACTIVE_ION] [varchar](1) NULL,
	[VAP_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[COGS_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[ION_CURRENCY] [varchar](3) NULL,
	[ION_MAPPING] [varchar](250) NULL,
	[ATTRIBUTE1] [varchar](250) NULL,
	[CREATION_DATE] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[ION_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEIN_ZBB_ION_MASTER_CL]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEIN_ZBB_ION_MASTER_CL](
	[ION_CODE] [varchar](250) NOT NULL,
	[ION_NAME] [varchar](500) NULL,
	[ZBB_PARENT] [varchar](250) NULL,
	[ACTIVE_ION] [varchar](1) NULL,
	[ADV_ACTIVE_ION] [varchar](1) NULL,
	[VAP_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[COGS_PROMO_ACTIVE_ION] [varchar](1) NULL,
	[ION_CURRENCY] [varchar](3) NULL,
	[ION_MAPPING] [varchar](250) NULL,
	[ATTRIBUTE1] [varchar](250) NULL,
	[CREATION_DATE] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[ION_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_TEMP_ABC]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_TEMP_ABC](
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](28, 7) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[DETAIL_POSTING_ALLOWED_FLAG] [varchar](1) NULL,
	[DETAIL_BUDGETING_ALLOWED_FLAG] [varchar](1) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ENABLED_FLAG] [varchar](1) NULL,
	[SUMMARY_FLAG] [varchar](1) NULL,
	[SEGMENT1] [varchar](25) NULL,
	[SEGMENT2] [varchar](25) NULL,
	[SEGMENT3] [varchar](25) NULL,
	[SEGMENT4] [varchar](25) NULL,
	[SEGMENT5] [varchar](25) NULL,
	[SEGMENT6] [varchar](25) NULL,
	[SEGMENT7] [varchar](25) NULL,
	[SEGMENT8] [varchar](25) NULL,
	[SEGMENT9] [varchar](25) NULL,
	[SEGMENT10] [varchar](25) NULL,
	[SEGMENT11] [varchar](25) NULL,
	[SEGMENT12] [varchar](25) NULL,
	[SEGMENT13] [varchar](25) NULL,
	[SEGMENT14] [varchar](25) NULL,
	[SEGMENT15] [varchar](25) NULL,
	[SEGMENT16] [varchar](25) NULL,
	[SEGMENT17] [varchar](25) NULL,
	[SEGMENT18] [varchar](25) NULL,
	[SEGMENT19] [varchar](25) NULL,
	[SEGMENT20] [varchar](25) NULL,
	[SEGMENT21] [varchar](25) NULL,
	[SEGMENT22] [varchar](25) NULL,
	[SEGMENT23] [varchar](25) NULL,
	[SEGMENT24] [varchar](25) NULL,
	[SEGMENT25] [varchar](25) NULL,
	[SEGMENT26] [varchar](25) NULL,
	[SEGMENT27] [varchar](25) NULL,
	[SEGMENT28] [varchar](25) NULL,
	[SEGMENT29] [varchar](25) NULL,
	[SEGMENT30] [varchar](25) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[TEMPLATE_ID] [decimal](15, 0) NULL,
	[ALLOCATION_CREATE_FLAG] [varchar](1) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[SEGMENT_ATTRIBUTE1] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE2] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE3] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE4] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE5] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE6] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE7] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE8] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE9] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE10] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE11] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE12] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE13] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE14] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE15] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE16] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE17] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE18] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE19] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE20] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE21] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE22] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE23] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE24] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE25] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE26] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE27] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE28] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE29] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE30] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE31] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE32] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE33] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE34] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE35] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE36] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE37] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE38] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE39] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE40] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE41] [varchar](60) NULL,
	[SEGMENT_ATTRIBUTE42] [varchar](60) NULL,
	[REFERENCE1] [varchar](1) NULL,
	[REFERENCE2] [varchar](1) NULL,
	[REFERENCE3] [varchar](25) NULL,
	[REFERENCE4] [varchar](1) NULL,
	[REFERENCE5] [varchar](1) NULL,
	[JGZZ_RECON_FLAG] [varchar](1) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[PRESERVE_FLAG] [varchar](1) NULL,
	[REFRESH_FLAG] [varchar](1) NULL,
	[IGI_BALANCED_BUDGET_FLAG] [varchar](1) NULL,
	[COMPANY_COST_CENTER_ORG_ID] [decimal](15, 0) NULL,
	[REVALUATION_ID] [decimal](15, 0) NULL,
	[LEDGER_SEGMENT] [varchar](20) NULL,
	[LEDGER_TYPE_CODE] [varchar](1) NULL,
	[ALTERNATE_CODE_COMBINATION_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_BACKUP_GL_JE_HEADERS]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_BACKUP_GL_JE_HEADERS](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[JE_CATEGORY] [varchar](25) NULL,
	[JE_SOURCE] [varchar](25) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[NAME] [varchar](100) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[STATUS] [varchar](1) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[ACCRUAL_REV_FLAG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLAG] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[CONVERSION_FLAG] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENCUMBRANCE_TYPE_ID] [decimal](15, 0) NULL,
	[BUDGET_VERSION_ID] [decimal](15, 0) NULL,
	[BALANCED_JE_FLAG] [varchar](1) NULL,
	[BALANCING_SEGMENT_VALUE] [varchar](25) NULL,
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[FROM_RECURRING_HEADER_ID] [decimal](15, 0) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_EFFECTIVE_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_PERIOD_NAME] [varchar](15) NULL,
	[ACCRUAL_REV_STATUS] [varchar](1) NULL,
	[ACCRUAL_REV_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ACCRUAL_REV_CHANGE_SIGN_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_RATE] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_TYPE] [varchar](30) NULL,
	[CURRENCY_CONVERSION_DATE] [datetime2](7) NULL,
	[EXTERNAL_REFERENCE] [varchar](80) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_HEADER_ID] [decimal](15, 0) NULL,
	[REVERSED_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ORIGINATING_BAL_SEG_VALUE] [varchar](25) NULL,
	[INTERCOMPANY_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VALUE] [varchar](25) NULL,
	[CR_BAL_SEG_VALUE] [varchar](25) NULL,
	[REFERENCE_DATE] [datetime2](7) NULL,
	[LOCAL_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[LOCAL_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[DISPLAY_ALC_JOURNAL_FLAG] [varchar](1) NULL,
	[JE_FROM_SLA_FLAG] [varchar](1) NULL,
	[POSTING_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_BACKUP_GL_JE_LINES]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_BACKUP_GL_JE_LINES](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[JE_LINE_NUM] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[EFFECTIVE_DATE] [datetime2](7) NULL,
	[STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENTERED_DR] [decimal](28, 7) NULL,
	[ENTERED_CR] [decimal](28, 7) NULL,
	[ACCOUNTED_DR] [decimal](28, 7) NULL,
	[ACCOUNTED_CR] [decimal](28, 7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[REFERENCE_1] [varchar](240) NULL,
	[REFERENCE_2] [varchar](240) NULL,
	[REFERENCE_3] [varchar](240) NULL,
	[REFERENCE_4] [varchar](240) NULL,
	[REFERENCE_5] [varchar](240) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[INVOICE_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](15) NULL,
	[INVOICE_IDENTIFIER] [varchar](20) NULL,
	[INVOICE_AMOUNT] [decimal](28, 7) NULL,
	[NO1] [varchar](150) NULL,
	[STAT_AMOUNT] [decimal](28, 7) NULL,
	[IGNORE_RATE_FLAG] [varchar](1) NULL,
	[CONTEXT3] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[SUBLEDGER_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[CONTEXT4] [varchar](150) NULL,
	[SUBLEDGER_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[REFERENCE_6] [varchar](240) NULL,
	[REFERENCE_7] [varchar](240) NULL,
	[REFERENCE_8] [varchar](240) NULL,
	[REFERENCE_9] [varchar](240) NULL,
	[REFERENCE_10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[JGZZ_RECON_STATUS_11I] [varchar](1) NULL,
	[JGZZ_RECON_DATE_11I] [datetime2](7) NULL,
	[JGZZ_RECON_ID_11I] [decimal](28, 7) NULL,
	[JGZZ_RECON_REF_11I] [varchar](240) NULL,
	[JGZZ_RECON_CONTEXT_11I] [varchar](30) NULL,
	[TAXABLE_LINE_FLAG] [varchar](1) NULL,
	[TAX_TYPE_CODE] [varchar](1) NULL,
	[TAX_CODE_ID] [decimal](15, 0) NULL,
	[TAX_ROUNDING_RULE_CODE] [varchar](1) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAX_DOCUMENT_IDENTIFIER] [varchar](50) NULL,
	[TAX_DOCUMENT_DATE] [datetime2](7) NULL,
	[TAX_CUSTOMER_NAME] [varchar](240) NULL,
	[TAX_CUSTOMER_REFERENCE] [varchar](240) NULL,
	[TAX_REGISTRATION_NUMBER] [varchar](50) NULL,
	[TAX_LINE_FLAG] [varchar](1) NULL,
	[TAX_GROUP_ID] [decimal](15, 0) NULL,
	[LINE_TYPE_CODE] [varchar](20) NULL,
	[GL_SL_LINK_ID] [decimal](28, 7) NULL,
	[GL_SL_LINK_TABLE] [varchar](30) NULL,
	[CO_THIRD_PARTY] [varchar](14) NULL,
	[CO_PROCESSED_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_BATCHES_BACKUP]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_BATCHES_BACKUP](
	[JE_BATCH_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[SET_OF_BOOKS_ID_11I] [decimal](15, 0) NULL,
	[NAME] [varchar](100) NULL,
	[STATUS] [varchar](1) NULL,
	[STATUS_VERIFIED] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[AVERAGE_JOURNAL_FLAG] [varchar](1) NULL,
	[BUDGETARY_CONTROL_STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[STATUS_RESET_FLAG] [varchar](1) NULL,
	[DEFAULT_PERIOD_NAME] [varchar](15) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[PACKET_ID] [decimal](15, 0) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[POSTING_RUN_ID] [decimal](15, 0) NULL,
	[REQUEST_ID] [decimal](15, 0) NULL,
	[UNRESERVATION_PACKET_ID] [decimal](15, 0) NULL,
	[ORG_ID] [decimal](15, 0) NULL,
	[APPROVAL_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_BATCH_ID] [decimal](15, 0) NULL,
	[POSTED_BY] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[GROUP_ID] [decimal](28, 7) NULL,
	[APPROVER_EMPLOYEE_ID] [decimal](15, 0) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE11] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE12] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE13] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE14] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE15] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE16] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE17] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE18] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE19] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE20] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_HEADERS_BACKUP]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_HEADERS_BACKUP](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[JE_CATEGORY] [varchar](25) NULL,
	[JE_SOURCE] [varchar](25) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[NAME] [varchar](100) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[STATUS] [varchar](1) NULL,
	[DATE_CREATED] [datetime2](7) NULL,
	[ACCRUAL_REV_FLAG] [varchar](1) NULL,
	[MULTI_BAL_SEG_FLAG] [varchar](1) NULL,
	[ACTUAL_FLAG] [varchar](1) NULL,
	[DEFAULT_EFFECTIVE_DATE] [datetime2](7) NULL,
	[CONVERSION_FLAG] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENCUMBRANCE_TYPE_ID] [decimal](15, 0) NULL,
	[BUDGET_VERSION_ID] [decimal](15, 0) NULL,
	[BALANCED_JE_FLAG] [varchar](1) NULL,
	[BALANCING_SEGMENT_VALUE] [varchar](25) NULL,
	[JE_BATCH_ID] [decimal](15, 0) NULL,
	[FROM_RECURRING_HEADER_ID] [decimal](15, 0) NULL,
	[UNIQUE_DATE] [varchar](30) NULL,
	[EARLIEST_POSTABLE_DATE] [datetime2](7) NULL,
	[POSTED_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_EFFECTIVE_DATE] [datetime2](7) NULL,
	[ACCRUAL_REV_PERIOD_NAME] [varchar](15) NULL,
	[ACCRUAL_REV_STATUS] [varchar](1) NULL,
	[ACCRUAL_REV_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ACCRUAL_REV_CHANGE_SIGN_FLAG] [varchar](1) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[CONTROL_TOTAL] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_CR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_DR] [decimal](28, 7) NULL,
	[RUNNING_TOTAL_ACCOUNTED_CR] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_RATE] [decimal](28, 7) NULL,
	[CURRENCY_CONVERSION_TYPE] [varchar](30) NULL,
	[CURRENCY_CONVERSION_DATE] [datetime2](7) NULL,
	[EXTERNAL_REFERENCE] [varchar](80) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[JGZZ_RECON_CONTEXT] [varchar](30) NULL,
	[JGZZ_RECON_REF] [varchar](240) NULL,
	[TAX_STATUS_CODE] [varchar](1) NULL,
	[PARENT_JE_HEADER_ID] [decimal](15, 0) NULL,
	[REVERSED_JE_HEADER_ID] [decimal](15, 0) NULL,
	[ORIGINATING_BAL_SEG_VALUE] [varchar](25) NULL,
	[INTERCOMPANY_MODE] [decimal](15, 0) NULL,
	[DR_BAL_SEG_VALUE] [varchar](25) NULL,
	[CR_BAL_SEG_VALUE] [varchar](25) NULL,
	[REFERENCE_DATE] [datetime2](7) NULL,
	[LOCAL_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[LOCAL_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[DISPLAY_ALC_JOURNAL_FLAG] [varchar](1) NULL,
	[JE_FROM_SLA_FLAG] [varchar](1) NULL,
	[POSTING_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[POSTING_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VERSION_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_ASSIGN_ID] [decimal](28, 7) NULL,
	[CLOSE_ACCT_SEQ_VALUE] [decimal](28, 7) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_LEDGERS_BACKUP]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_LEDGERS_BACKUP](
	[LEDGER_ID] [decimal](15, 0) NOT NULL,
	[NAME] [varchar](30) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[LEDGER_CATEGORY_CODE] [varchar](30) NULL,
	[ALC_LEDGER_TYPE_CODE] [varchar](30) NULL,
	[OBJECT_TYPE_CODE] [varchar](1) NULL,
	[LE_LEDGER_TYPE_CODE] [varchar](1) NULL,
	[COMPLETION_STATUS_CODE] [varchar](30) NULL,
	[CONFIGURATION_ID] [decimal](15, 0) NULL,
	[CHART_OF_ACCOUNTS_ID] [decimal](15, 0) NULL,
	[CURRENCY_CODE] [varchar](15) NULL,
	[PERIOD_SET_NAME] [varchar](15) NULL,
	[ACCOUNTED_PERIOD_TYPE] [varchar](15) NULL,
	[FIRST_LEDGER_PERIOD_NAME] [varchar](15) NULL,
	[RET_EARN_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[SUSPENSE_ALLOWED_FLAG] [varchar](1) NULL,
	[ALLOW_INTERCOMPANY_POST_FLAG] [varchar](1) NULL,
	[TRACK_ROUNDING_IMBALANCE_FLAG] [varchar](1) NULL,
	[ENABLE_AVERAGE_BALANCES_FLAG] [varchar](1) NULL,
	[CUM_TRANS_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[RES_ENCUMB_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[NET_INCOME_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ROUNDING_CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[ENABLE_BUDGETARY_CONTROL_FLAG] [varchar](1) NULL,
	[REQUIRE_BUDGET_JOURNALS_FLAG] [varchar](1) NULL,
	[ENABLE_JE_APPROVAL_FLAG] [varchar](1) NULL,
	[ENABLE_AUTOMATIC_TAX_FLAG] [varchar](1) NULL,
	[CONSOLIDATION_LEDGER_FLAG] [varchar](1) NULL,
	[TRANSLATE_EOD_FLAG] [varchar](1) NULL,
	[TRANSLATE_QATD_FLAG] [varchar](1) NULL,
	[TRANSLATE_YATD_FLAG] [varchar](1) NULL,
	[TRANSACTION_CALENDAR_ID] [decimal](15, 0) NULL,
	[DAILY_TRANSLATION_RATE_TYPE] [varchar](30) NULL,
	[AUTOMATICALLY_CREATED_FLAG] [varchar](1) NULL,
	[BAL_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[BAL_SEG_COLUMN_NAME] [varchar](25) NULL,
	[MGT_SEG_VALUE_OPTION_CODE] [varchar](1) NULL,
	[MGT_SEG_COLUMN_NAME] [varchar](25) NULL,
	[BAL_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[MGT_SEG_VALUE_SET_ID] [decimal](10, 0) NULL,
	[IMPLICIT_ACCESS_SET_ID] [decimal](15, 0) NULL,
	[CRITERIA_SET_ID] [decimal](15, 0) NULL,
	[FUTURE_ENTERABLE_PERIODS_LIMIT] [decimal](15, 0) NULL,
	[LEDGER_ATTRIBUTES] [varchar](2000) NULL,
	[IMPLICIT_LEDGER_SET_ID] [decimal](15, 0) NULL,
	[LATEST_OPENED_PERIOD_NAME] [varchar](15) NULL,
	[LATEST_ENCUMBRANCE_YEAR] [decimal](15, 0) NULL,
	[PERIOD_AVERAGE_RATE_TYPE] [varchar](30) NULL,
	[PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_AVG_RATE_TYPE] [varchar](30) NULL,
	[BUDGET_PERIOD_END_RATE_TYPE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_CODE] [varchar](30) NULL,
	[SLA_ACCOUNTING_METHOD_TYPE] [varchar](1) NULL,
	[SLA_DESCRIPTION_LANGUAGE] [varchar](15) NULL,
	[SLA_ENTERED_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[SLA_SEQUENCING_FLAG] [varchar](1) NULL,
	[SLA_BAL_BY_LEDGER_CURR_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CUR_BAL_SUS_CCID] [decimal](15, 0) NULL,
	[ENABLE_SECONDARY_TRACK_FLAG] [varchar](1) NULL,
	[ENABLE_REVAL_SS_TRACK_FLAG] [varchar](1) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[CONTEXT] [varchar](150) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ENABLE_RECONCILIATION_FLAG] [varchar](1) NULL,
	[CREATE_JE_FLAG] [varchar](1) NULL,
	[SLA_LEDGER_CASH_BASIS_FLAG] [varchar](1) NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[COMMITMENT_BUDGET_FLAG] [varchar](1) NULL,
	[NET_CLOSING_BAL_FLAG] [varchar](1) NULL,
	[AUTOMATE_SEC_JRNL_REV_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[LEDGER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_LINES_BACKUP]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_LINES_BACKUP](
	[JE_HEADER_ID] [decimal](15, 0) NOT NULL,
	[JE_LINE_NUM] [decimal](15, 0) NOT NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL,
	[LAST_UPDATED_BY] [decimal](15, 0) NULL,
	[LEDGER_ID] [decimal](15, 0) NULL,
	[CODE_COMBINATION_ID] [decimal](15, 0) NULL,
	[PERIOD_NAME] [varchar](15) NULL,
	[EFFECTIVE_DATE] [datetime2](7) NULL,
	[STATUS] [varchar](1) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATED_BY] [decimal](15, 0) NULL,
	[LAST_UPDATE_LOGIN] [decimal](15, 0) NULL,
	[ENTERED_DR] [decimal](28, 7) NULL,
	[ENTERED_CR] [decimal](28, 7) NULL,
	[ACCOUNTED_DR] [decimal](28, 7) NULL,
	[ACCOUNTED_CR] [decimal](28, 7) NULL,
	[DESCRIPTION] [varchar](240) NULL,
	[REFERENCE_1] [varchar](240) NULL,
	[REFERENCE_2] [varchar](240) NULL,
	[REFERENCE_3] [varchar](240) NULL,
	[REFERENCE_4] [varchar](240) NULL,
	[REFERENCE_5] [varchar](240) NULL,
	[ATTRIBUTE1] [varchar](150) NULL,
	[ATTRIBUTE2] [varchar](150) NULL,
	[ATTRIBUTE3] [varchar](150) NULL,
	[ATTRIBUTE4] [varchar](150) NULL,
	[ATTRIBUTE5] [varchar](150) NULL,
	[ATTRIBUTE6] [varchar](150) NULL,
	[ATTRIBUTE7] [varchar](150) NULL,
	[ATTRIBUTE8] [varchar](150) NULL,
	[ATTRIBUTE9] [varchar](150) NULL,
	[ATTRIBUTE10] [varchar](150) NULL,
	[ATTRIBUTE11] [varchar](150) NULL,
	[ATTRIBUTE12] [varchar](150) NULL,
	[ATTRIBUTE13] [varchar](150) NULL,
	[ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL,
	[ATTRIBUTE16] [varchar](150) NULL,
	[ATTRIBUTE17] [varchar](150) NULL,
	[ATTRIBUTE18] [varchar](150) NULL,
	[ATTRIBUTE19] [varchar](150) NULL,
	[ATTRIBUTE20] [varchar](150) NULL,
	[CONTEXT] [varchar](150) NULL,
	[CONTEXT2] [varchar](150) NULL,
	[INVOICE_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](15) NULL,
	[INVOICE_IDENTIFIER] [varchar](20) NULL,
	[INVOICE_AMOUNT] [decimal](28, 7) NULL,
	[NO1] [varchar](150) NULL,
	[STAT_AMOUNT] [decimal](28, 7) NULL,
	[IGNORE_RATE_FLAG] [varchar](1) NULL,
	[CONTEXT3] [varchar](150) NULL,
	[USSGL_TRANSACTION_CODE] [varchar](30) NULL,
	[SUBLEDGER_DOC_SEQUENCE_ID] [decimal](28, 7) NULL,
	[CONTEXT4] [varchar](150) NULL,
	[SUBLEDGER_DOC_SEQUENCE_VALUE] [decimal](28, 7) NULL,
	[REFERENCE_6] [varchar](240) NULL,
	[REFERENCE_7] [varchar](240) NULL,
	[REFERENCE_8] [varchar](240) NULL,
	[REFERENCE_9] [varchar](240) NULL,
	[REFERENCE_10] [varchar](240) NULL,
	[GLOBAL_ATTRIBUTE_CATEGORY] [varchar](30) NULL,
	[GLOBAL_ATTRIBUTE1] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE2] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE3] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE4] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE5] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE6] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE7] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE8] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE9] [varchar](150) NULL,
	[GLOBAL_ATTRIBUTE10] [varchar](150) NULL,
	[JGZZ_RECON_STATUS_11I] [varchar](1) NULL,
	[JGZZ_RECON_DATE_11I] [datetime2](7) NULL,
	[JGZZ_RECON_ID_11I] [decimal](28, 7) NULL,
	[JGZZ_RECON_REF_11I] [varchar](240) NULL,
	[JGZZ_RECON_CONTEXT_11I] [varchar](30) NULL,
	[TAXABLE_LINE_FLAG] [varchar](1) NULL,
	[TAX_TYPE_CODE] [varchar](1) NULL,
	[TAX_CODE_ID] [decimal](15, 0) NULL,
	[TAX_ROUNDING_RULE_CODE] [varchar](1) NULL,
	[AMOUNT_INCLUDES_TAX_FLAG] [varchar](1) NULL,
	[TAX_DOCUMENT_IDENTIFIER] [varchar](50) NULL,
	[TAX_DOCUMENT_DATE] [datetime2](7) NULL,
	[TAX_CUSTOMER_NAME] [varchar](240) NULL,
	[TAX_CUSTOMER_REFERENCE] [varchar](240) NULL,
	[TAX_REGISTRATION_NUMBER] [varchar](50) NULL,
	[TAX_LINE_FLAG] [varchar](1) NULL,
	[TAX_GROUP_ID] [decimal](15, 0) NULL,
	[LINE_TYPE_CODE] [varchar](20) NULL,
	[GL_SL_LINK_ID] [decimal](28, 7) NULL,
	[GL_SL_LINK_TABLE] [varchar](30) NULL,
	[CO_THIRD_PARTY] [varchar](14) NULL,
	[CO_PROCESSED_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[XXKIL_APACANAL_GSV_MONTHSUM]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[XXKIL_APACANAL_GSV_MONTHSUM](
	[PERIOD_NAME] [varchar](20) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[STATE] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](18, 0) NULL,
	[GSV] [decimal](28, 7) NULL,
	[CHANNEL] [varchar](3) NULL,
	[ITEM] [varchar](8) NULL,
	[ITEM_CLASS1] [varchar](12) NULL,
	[ITEM_CLASS2] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[XXKIL_CUST_MASTER_V]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[XXKIL_CUST_MASTER_V](
	[CUST_ACCOUNT_ID] [decimal](15, 0) NULL,
	[CUST_ACCT_SITE_ID] [decimal](15, 0) NULL,
	[ORGANIZATION_ID] [decimal](15, 0) NULL,
	[WAREHOUSE_ID] [decimal](15, 0) NULL,
	[WAREHOUSE] [varchar](3) NULL,
	[ACCOUNT_NUMBER] [varchar](30) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[PARTY_NAME] [varchar](360) NULL,
	[SALES_CHANNEL_CODE] [varchar](30) NULL,
	[DEMAND_CLASS_CODE] [varchar](30) NULL,
	[ORDER_TYPE] [varchar](30) NULL,
	[CUST_ACCT_STATUS] [varchar](8) NULL,
	[CUST_ACCT_SITE_STATUS] [varchar](8) NULL,
	[SITE_USE_CODE] [varchar](30) NULL,
	[SITE_USE_STATUS] [varchar](8) NULL,
	[SITEUSE_CREAT] [datetime2](7) NULL,
	[ADDRESS1] [varchar](240) NULL,
	[ADDRESS2] [varchar](240) NULL,
	[ADDRESS3] [varchar](240) NULL,
	[CITY] [varchar](60) NULL,
	[STATE] [varchar](60) NULL,
	[POSTAL_CODE] [varchar](60) NULL,
	[TERRITORY] [varchar](360) NULL,
	[CUSTOMER_CLASS_CODE] [varchar](30) NULL,
	[CITY_ATTR8] [varchar](150) NULL,
	[STATE_ATTR9] [varchar](150) NULL,
	[SUPER_CHANNEL_ATTR1] [varchar](150) NULL,
	[REGION_ATTRIBUTE_ATTR2] [varchar](150) NULL,
	[SUB_CHANNEL_ATTR3] [varchar](150) NULL,
	[RSM_CODE] [varchar](154) NULL,
	[RSM_NAME] [varchar](154) NULL,
	[ASM_TERRITORY_ATTR4] [varchar](150) NULL,
	[ASM_AREA_NAME] [varchar](150) NULL,
	[BDE_TERRITORY_ATTR5] [varchar](150) NULL,
	[BDE_AREA_NAME] [varchar](150) NULL,
	[TSI_TERRITORY_ATTR6] [varchar](150) NULL,
	[TSI_AREA_NAME] [varchar](150) NULL,
	[TOWN_CLASS_ATTR7] [varchar](150) NULL,
	[FSSAI_NUMBER] [varchar](150) NULL,
	[SUB_STATE] [varchar](150) NULL,
	[DIRECT_INDIRECT] [varchar](150) NULL,
	[MT_COMPANY] [varchar](150) NULL,
	[BANK_ATTRIBUTE14] [varchar](150) NULL,
	[ATTRIBUTE15] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[XXKIL_PRIMARY_SALES]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[XXKIL_PRIMARY_SALES](
	[ORG_ID] [decimal](18, 0) NULL,
	[ORG_NAME] [varchar](50) NULL,
	[RGNCODE] [varchar](2) NULL,
	[RGNNAME] [varchar](50) NULL,
	[REGION_SERIAL] [decimal](18, 0) NULL,
	[REGION] [varchar](50) NULL,
	[SALES_CHANNEL_CODE] [varchar](50) NULL,
	[DEMAND_CLASS_CODE] [varchar](50) NULL,
	[CHANNEL] [varchar](50) NULL,
	[ORDER_CATEGORY] [varchar](50) NULL,
	[CFA_CODE] [varchar](10) NULL,
	[CFA_NAME] [varchar](100) NULL,
	[CFA_OLDCODE] [varchar](10) NULL,
	[CFA_CITY] [varchar](50) NULL,
	[CFA_STATE] [varchar](50) NULL,
	[TERRITORY] [varchar](50) NULL,
	[CUSTOMER_TRX_ID] [decimal](18, 0) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[INVOICENUMBER] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[QUARTER] [varchar](20) NULL,
	[WEEK] [varchar](20) NULL,
	[WEEK_SALES] [varchar](20) NULL,
	[SALESORDERNO] [varchar](100) NULL,
	[CUST_PO_NUMBER] [varchar](100) NULL,
	[ORDERTYPE] [varchar](100) NULL,
	[DELIVERY_ID] [varchar](50) NULL,
	[ORDERLINEID] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](18, 0) NULL,
	[ITEM_TYPE] [varchar](30) NULL,
	[BRAND_NAME] [varchar](50) NULL,
	[PACK_SIZE] [varchar](50) NULL,
	[CARTON_COUNT] [decimal](18, 0) NULL,
	[CARTON_WEIGHT] [decimal](18, 2) NULL,
	[INV_ITEM] [varchar](50) NULL,
	[GL_PERIOD_LINE] [varchar](50) NULL,
	[BRAND_CODE] [varchar](50) NULL,
	[PRODUCT_CATEGORY] [varchar](50) NULL,
	[ITEMNO] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[INVOICED_CASES] [decimal](18, 0) NULL,
	[INVOICED_KGS] [decimal](18, 2) NULL,
	[ITEM_MRP] [decimal](18, 2) NULL,
	[MRP_CONTRACT_RATE] [decimal](18, 2) NULL,
	[TOTAL_MRP] [decimal](18, 2) NULL,
	[TOTAL_AMOUNT] [decimal](18, 2) NULL,
	[INV_NUM] [varchar](150) NULL,
	[INV_DATE] [datetime2](7) NULL,
	[RTM] [decimal](18, 2) NULL,
	[RTM_PERCENT] [decimal](18, 2) NULL,
	[DTM] [decimal](18, 2) NULL,
	[DTM_PERCENT] [decimal](18, 2) NULL,
	[ISLST] [decimal](18, 2) NULL,
	[ISLST_PERCENT] [decimal](18, 2) NULL,
	[CSDDISC] [decimal](18, 2) NULL,
	[CSDDISC_PERCENT] [decimal](18, 2) NULL,
	[CB] [decimal](18, 2) NULL,
	[CB_PERCENT] [decimal](18, 2) NULL,
	[PC] [decimal](18, 2) NULL,
	[PC_PERCENT] [decimal](18, 2) NULL,
	[EXCISE] [decimal](18, 2) NULL,
	[TAX_AMOUNT] [decimal](18, 2) NULL,
	[TAX_RATE] [decimal](18, 2) NULL,
	[GSV] [decimal](18, 2) NULL,
	[GL_ACCOUNT] [varchar](100) NULL,
	[PERIOD_445] [varchar](6) NULL,
	[TAX_TYPE] [varchar](100) NULL,
	[ITEM_TAX_CATG] [varchar](100) NULL,
	[OUTPUT_TAX] [decimal](18, 2) NULL,
	[PERIOD_CAL_MONTH] [varchar](20) NULL,
	[PERIOD_CAL] [varchar](6) NULL,
	[VAT_DIFFERENCE] [decimal](18, 2) NULL,
	[SALESREP_ID] [varchar](20) NULL,
	[SALESREP_NAME] [varchar](100) NULL,
	[SUPER_CHANNEL] [varchar](100) NULL,
	[REGION_ATTRIBUTE] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](100) NULL,
	[ASM_TERRITORY] [varchar](100) NULL,
	[BDE_TERRITORY] [varchar](100) NULL,
	[TSI_TERRITORY] [varchar](100) NULL,
	[TOWN_CLASS] [varchar](100) NULL,
	[SUB_STATE] [varchar](100) NULL,
	[MT_TYPE] [varchar](100) NULL,
	[MT_COMPANYNAME] [varchar](100) NULL,
	[LOT_NUMBER] [varchar](100) NULL,
	[SOURCE_ORGANIZATION] [varchar](100) NULL,
	[SHIP_FROM_ORG_ID] [decimal](18, 0) NULL,
	[WDD_DELIVERY_DETAIL_ID] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[XXKIL_PRIMARY_SALES_PRESTG]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[XXKIL_PRIMARY_SALES_PRESTG](
	[ORG_ID] [decimal](18, 0) NULL,
	[ORG_NAME] [varchar](50) NULL,
	[RGNCODE] [varchar](2) NULL,
	[RGNNAME] [varchar](50) NULL,
	[REGION_SERIAL] [decimal](18, 0) NULL,
	[REGION] [varchar](50) NULL,
	[SALES_CHANNEL_CODE] [varchar](50) NULL,
	[DEMAND_CLASS_CODE] [varchar](50) NULL,
	[CHANNEL] [varchar](50) NULL,
	[ORDER_CATEGORY] [varchar](50) NULL,
	[CFA_CODE] [varchar](10) NULL,
	[CFA_NAME] [varchar](100) NULL,
	[CFA_OLDCODE] [varchar](10) NULL,
	[CFA_CITY] [varchar](50) NULL,
	[CFA_STATE] [varchar](50) NULL,
	[TERRITORY] [varchar](50) NULL,
	[CUSTOMER_TRX_ID] [decimal](18, 0) NULL,
	[CUSTCODE] [varchar](10) NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[INVOICENUMBER] [varchar](20) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[PERIOD_NAME] [varchar](20) NULL,
	[QUARTER] [varchar](20) NULL,
	[WEEK] [varchar](20) NULL,
	[WEEK_SALES] [varchar](20) NULL,
	[SALESORDERNO] [varchar](100) NULL,
	[CUST_PO_NUMBER] [varchar](100) NULL,
	[ORDERTYPE] [varchar](100) NULL,
	[DELIVERY_ID] [varchar](50) NULL,
	[ORDERLINEID] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](18, 0) NULL,
	[ITEM_TYPE] [varchar](30) NULL,
	[BRAND_NAME] [varchar](50) NULL,
	[PACK_SIZE] [varchar](50) NULL,
	[CARTON_COUNT] [decimal](18, 0) NULL,
	[CARTON_WEIGHT] [decimal](18, 2) NULL,
	[INV_ITEM] [varchar](50) NULL,
	[GL_PERIOD_LINE] [varchar](50) NULL,
	[BRAND_CODE] [varchar](50) NULL,
	[PRODUCT_CATEGORY] [varchar](50) NULL,
	[ITEMNO] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[INVOICED_CASES] [decimal](18, 0) NULL,
	[INVOICED_KGS] [decimal](18, 2) NULL,
	[ITEM_MRP] [decimal](18, 2) NULL,
	[MRP_CONTRACT_RATE] [decimal](18, 2) NULL,
	[TOTAL_MRP] [decimal](18, 2) NULL,
	[TOTAL_AMOUNT] [decimal](18, 2) NULL,
	[INV_NUM] [varchar](150) NULL,
	[INV_DATE] [datetime2](7) NULL,
	[RTM] [decimal](18, 2) NULL,
	[RTM_PERCENT] [decimal](18, 2) NULL,
	[DTM] [decimal](18, 2) NULL,
	[DTM_PERCENT] [decimal](18, 2) NULL,
	[ISLST] [decimal](18, 2) NULL,
	[ISLST_PERCENT] [decimal](18, 2) NULL,
	[CSDDISC] [decimal](18, 2) NULL,
	[CSDDISC_PERCENT] [decimal](18, 2) NULL,
	[CB] [decimal](18, 2) NULL,
	[CB_PERCENT] [decimal](18, 2) NULL,
	[PC] [decimal](18, 2) NULL,
	[PC_PERCENT] [decimal](18, 2) NULL,
	[EXCISE] [decimal](18, 2) NULL,
	[TAX_AMOUNT] [decimal](18, 2) NULL,
	[TAX_RATE] [decimal](18, 2) NULL,
	[GSV] [decimal](18, 2) NULL,
	[GL_ACCOUNT] [varchar](100) NULL,
	[PERIOD_445] [varchar](6) NULL,
	[TAX_TYPE] [varchar](100) NULL,
	[ITEM_TAX_CATG] [varchar](100) NULL,
	[OUTPUT_TAX] [decimal](18, 2) NULL,
	[PERIOD_CAL_MONTH] [varchar](20) NULL,
	[PERIOD_CAL] [varchar](6) NULL,
	[VAT_DIFFERENCE] [decimal](18, 2) NULL,
	[SALESREP_ID] [varchar](20) NULL,
	[SALESREP_NAME] [varchar](100) NULL,
	[SUPER_CHANNEL] [varchar](100) NULL,
	[REGION_ATTRIBUTE] [varchar](100) NULL,
	[SUB_CHANNEL] [varchar](100) NULL,
	[ASM_TERRITORY] [varchar](100) NULL,
	[BDE_TERRITORY] [varchar](100) NULL,
	[TSI_TERRITORY] [varchar](100) NULL,
	[TOWN_CLASS] [varchar](100) NULL,
	[SUB_STATE] [varchar](100) NULL,
	[MT_TYPE] [varchar](100) NULL,
	[MT_COMPANYNAME] [varchar](100) NULL,
	[LOT_NUMBER] [varchar](100) NULL,
	[SOURCE_ORGANIZATION] [varchar](100) NULL,
	[SHIP_FROM_ORG_ID] [decimal](18, 0) NULL,
	[WDD_DELIVERY_DETAIL_ID] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [WRK].[ARS_EBS]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [WRK].[ARS_EBS](
	[PRODUCT_CODE] [varchar](100) NULL,
	[DISTRIBUTOR_CODE] [varchar](100) NULL,
	[NAME] [varchar](100) NULL,
	[DATE] [date] NULL,
	[ARS_ORDER_CASE] [decimal](28, 7) NULL,
	[MANUAL_ORDER_CASE] [decimal](28, 7) NULL,
	[ARS_INVOICE_CASE] [decimal](28, 7) NULL,
	[MANUAL_INVOICE_CASE] [decimal](28, 7) NULL,
	[ARS_ORDER_TON] [decimal](28, 7) NULL,
	[MANUAL_ORDER_TON] [decimal](28, 7) NULL,
	[ARS_INVOICE_TON] [decimal](28, 7) NULL,
	[MANUAL_INVOICE_TON] [decimal](28, 7) NULL,
	[HOLD_DUE_TO_FUNDS_CASE] [decimal](28, 7) NULL,
	[HOLD_DUE_TO_FUNDS_TON] [decimal](28, 7) NULL,
	[CRE_USER] [varchar](100) NULL,
	[CRE_TS] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [WRK].[ARS_EBS_NEW]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [WRK].[ARS_EBS_NEW](
	[PRODUCT_CODE] [varchar](100) NULL,
	[DISTRIBUTOR_CODE] [varchar](100) NULL,
	[NAME] [varchar](100) NULL,
	[DATE] [date] NULL,
	[ARS_ORDER_CASE] [decimal](28, 7) NULL,
	[MANUAL_ORDER_CASE] [decimal](28, 7) NULL,
	[ARS_INVOICE_CASE] [decimal](28, 7) NULL,
	[MANUAL_INVOICE_CASE] [decimal](28, 7) NULL,
	[ARS_ORDER_TON] [decimal](28, 7) NULL,
	[MANUAL_ORDER_TON] [decimal](28, 7) NULL,
	[ARS_INVOICE_TON] [decimal](28, 7) NULL,
	[MANUAL_INVOICE_TON] [decimal](28, 7) NULL,
	[HOLD_DUE_TO_FUNDS_CASE] [decimal](28, 7) NULL,
	[HOLD_DUE_TO_FUNDS_TON] [decimal](28, 7) NULL,
	[CRE_USER] [varchar](100) NULL,
	[CRE_TS] [datetime2](7) NULL,
	[CFR_LOSS_REASON] [varchar](240) NULL,
	[MONTH_NAME] [varchar](10) NULL,
	[ORDER_NUMBER] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [WRK].[ARS_EBS_OLD]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [WRK].[ARS_EBS_OLD](
	[PRODUCT_CODE] [varchar](100) NULL,
	[DISTRIBUTOR_CODE] [varchar](100) NULL,
	[NAME] [varchar](100) NULL,
	[DATE] [date] NULL,
	[ARS_ORDER_CASE] [decimal](28, 7) NULL,
	[MANUAL_ORDER_CASE] [decimal](28, 7) NULL,
	[ARS_INVOICE_CASE] [decimal](28, 7) NULL,
	[MANUAL_INVOICE_CASE] [decimal](28, 7) NULL,
	[ARS_ORDER_TON] [decimal](28, 7) NULL,
	[MANUAL_ORDER_TON] [decimal](28, 7) NULL,
	[ARS_INVOICE_TON] [decimal](28, 7) NULL,
	[MANUAL_INVOICE_TON] [decimal](28, 7) NULL,
	[HOLD_DUE_TO_FUNDS_CASE] [decimal](28, 7) NULL,
	[HOLD_DUE_TO_FUNDS_TON] [decimal](28, 7) NULL,
	[CRE_USER] [varchar](100) NULL,
	[CRE_TS] [datetime2](7) NULL,
	[CFR_LOSS_REASON] [varchar](240) NULL,
	[MONTH_NAME] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [WRK].[LDG_KAP_IND_SALES_ARS_EBS]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [WRK].[LDG_KAP_IND_SALES_ARS_EBS](
	[SALESREP_ID] [decimal](15, 0) NULL,
	[ORDERED_ITEM] [varchar](2000) NULL,
	[OL_INVENTORY_ITEM_ID] [decimal](28, 7) NULL,
	[ACCOUNT_NUMBER] [varchar](30) NULL,
	[TRX_DATE] [datetime2](7) NULL,
	[NAME] [varchar](240) NULL,
	[ORDERED_QUANTITY] [decimal](28, 7) NULL,
	[ORDERED_QUANTITY2] [decimal](28, 7) NULL,
	[INVENTORY_ITEM_ID] [decimal](15, 0) NULL,
	[QUANTITY_INVOICED] [decimal](28, 7) NULL,
	[UNIT_SELLING_PRICE] [decimal](28, 7) NULL,
	[HEADER_ID] [decimal](28, 7) NULL,
	[ORDER_SOURCE_ID] [decimal](28, 7) NULL,
	[INTERFACE_HEADER_ATTRIBUTE3] [varchar](150) NULL,
	[SHIP_TO_CUSTOMER_ID] [decimal](15, 0) NULL,
	[CUST_ACCOUNT_ID] [decimal](15, 0) NULL,
	[CUSTOMER_TRX_ID] [decimal](15, 0) NULL,
	[ORDERED_DATE] [datetime2](7) NULL,
	[ORDER_NUMBER] [decimal](28, 7) NULL,
	[CTL_SHIP_TO_CUSTOMER_ID] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [WRK].[PRIMARY_RESULT]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [WRK].[PRIMARY_RESULT](
	[CUSTCODE] [varchar](510) NULL,
	[INVOICENUMBER] [varchar](255) NULL,
	[ITEMNO] [varchar](255) NULL,
	[INVOICEDATE] [datetime2](7) NULL,
	[STATE] [varchar](50) NULL,
	[REGION] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[INVENTORY_ITEM_ID] [decimal](28, 7) NULL,
	[TAX_ID] [decimal](15, 0) NULL,
	[PRICE_LIST_ID] [decimal](28, 7) NULL,
	[SECONDARY_VALUE] [decimal](18, 3) NULL,
	[SECONDARY_CASE] [decimal](18, 3) NULL,
	[SECONDARY_TON] [decimal](18, 3) NULL,
	[PRIMARY_VALUE] [decimal](18, 3) NULL,
	[PRIMARY_CASE] [decimal](18, 3) NULL,
	[PRIMARY_TON] [decimal](18, 3) NULL,
	[TOTALGSVCOMP1] [decimal](38, 6) NULL,
	[SALETAXGSVCOMP2] [decimal](38, 6) NULL,
	[EXCISE] [decimal](38, 6) NULL,
	[QUANTITY] [decimal](38, 6) NULL,
	[LIST_PRICE] [decimal](28, 7) NULL,
	[TAX_RATE] [decimal](28, 7) NULL,
	[MT_TYPE] [varchar](100) NULL,
	[START_DATE] [datetime2](7) NULL,
	[END_DATE] [datetime2](7) NULL,
	[START_DATE_ACTIVE] [datetime2](7) NULL,
	[END_DATE_ACTIVE] [datetime2](7) NULL,
	[START_DATE_ACTIVE_1] [datetime2](7) NULL,
	[END_DATE_ACTIVE_1] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [FND_FLEX_VALUE_SETS_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [FND_FLEX_VALUE_SETS_IX] ON [dbo].[FND_FLEX_VALUE_SETS]
(
	[FLEX_VALUE_SET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FND_FLEX_VALUE_SETS_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [FND_FLEX_VALUE_SETS_IX] ON [dbo].[FND_FLEX_VALUE_SETS_OLD]
(
	[FLEX_VALUE_SET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FND_FLEX_VALUES_VL_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [FND_FLEX_VALUES_VL_IX] ON [dbo].[FND_FLEX_VALUES_VL]
(
	[FLEX_VALUE_SET_ID] ASC,
	[FLEX_VALUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FND_FLEX_VALUES_VL_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [FND_FLEX_VALUES_VL_IX] ON [dbo].[FND_FLEX_VALUES_VL_OLD]
(
	[FLEX_VALUE_SET_ID] ASC,
	[FLEX_VALUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_CODE_COMBINATIONS_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [GL_CODE_COMBINATIONS_IX] ON [dbo].[GL_CODE_COMBINATIONS]
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_CODE_COMBINATIONS_KFV_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [GL_CODE_COMBINATIONS_KFV_IX] ON [dbo].[GL_CODE_COMBINATIONS_KFV]
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_CODE_COMBINATIONS_KFV_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [GL_CODE_COMBINATIONS_KFV_IX] ON [dbo].[GL_CODE_COMBINATIONS_KFV_OLD]
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_CODE_COMBINATIONS_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [GL_CODE_COMBINATIONS_IX] ON [dbo].[GL_CODE_COMBINATIONS_OLD]
(
	[CODE_COMBINATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_LEDGERS_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [GL_LEDGERS_IX] ON [dbo].[GL_LEDGERS]
(
	[LEDGER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GL_LEDGERS_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [GL_LEDGERS_IX] ON [dbo].[GL_LEDGERS_OLD]
(
	[LEDGER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KEIN_ZBB_COST_CENTER_MASTER_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [KEIN_ZBB_COST_CENTER_MASTER_IX] ON [dbo].[KEIN_ZBB_COST_CENTER_MASTER]
(
	[COST_CENTER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KEIN_ZBB_COST_CENTER_MASTER_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [KEIN_ZBB_COST_CENTER_MASTER_IX] ON [dbo].[KEIN_ZBB_COST_CENTER_MASTER_OLD]
(
	[COST_CENTER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KEIN_ZBB_ION_Master_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [KEIN_ZBB_ION_Master_IX] ON [dbo].[KEIN_ZBB_ION_MASTER]
(
	[ION_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KEIN_ZBB_ION_Master_IX]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE NONCLUSTERED INDEX [KEIN_ZBB_ION_Master_IX] ON [dbo].[KEIN_ZBB_ION_MASTER_OLD]
(
	[ION_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_GL_JE_BATCHES]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_GL_JE_BATCHES] ON [STG].[STG_GL_JE_BATCHES]
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_GL_JE_HEADERS]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_GL_JE_HEADERS] ON [STG].[STG_GL_JE_HEADERS]
(
	[JE_HEADER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_GL_JE_LINES]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_GL_JE_LINES] ON [STG].[STG_GL_JE_LINES]
(
	[JE_HEADER_ID] ASC,
	[JE_LINE_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_KAP_EBS_TEST_DELTA]    Script Date: 9/11/2018 6:04:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_KAP_EBS_TEST_DELTA] ON [STG].[STG_KAP_EBS_TEST_DELTA]
(
	[JE_BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_COST_CNTR_MSTR_ZBB]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_COST_CNTR_MSTR_ZBB] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_COST_CNTR',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE  [KAP_EBS].[dbo].[COST_CNTR_MSTR_ZBB] AS mstr
		USING (
			SELECT *
			 FROM [KAP_EBS].[STG].[STG_KEIN_ZBB_COST_CENTER_MASTER]
			) AS sd
	   	ON mstr.[COST_CNTR_COD] = sd.[COST_CENTER_CODE]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET     
				   mstr.[COST_CNTR_NM]=sd.[COST_CENTER_NAME]
				  ,mstr.[ZBB_PARN]=sd.[ZBB_PARENT]
				  ,mstr.[ACT_FLG]=sd.[ACTIVE_FLAG]
				  ,mstr.[LOC_CURR]=sd.[LOCAL_CURRENCY]
				  ,mstr.[ATTRIB1]=sd.[ATTRIBUTE1]
				  ,mstr.[CREA_DT]=sd.[CREATION_DATE]
  				  ,mstr.[DW_MOD_TS]=GETDATE()
				  ,mstr.[DW_MOD_USR]=USER_NAME()
  
    WHEN NOT MATCHED
		THEN
		     INSERT (  [COST_CNTR_COD]
					  ,[COST_CNTR_NM]
					  ,[ZBB_PARN]
					  ,[ACT_FLG]
					  ,[LOC_CURR]
					  ,[ATTRIB1]
					  ,[CREA_DT]
			          ,[DW_CRE_TS]
					  ,[DW_CRE_USR]
						)
	             VALUES( 
				      sd.[COST_CENTER_CODE]
					  ,sd.[COST_CENTER_NAME]
					  ,sd.[ZBB_PARENT]
					  ,sd.[ACTIVE_FLAG]
					  ,sd.[LOCAL_CURRENCY]
					  ,sd.[ATTRIBUTE1]
					  ,sd.[CREATION_DATE]
 					  ,GETDATE()
	    			  ,USER_NAME()
	                             )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_COST_CNTR', @Rows_Insrt, @Rows_Updt, null,null, 'Y';


END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_FND_FLEX_VAL_SETS]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_FND_FLEX_VAL_SETS] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_FLEX_VAL_SETS',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE  [KAP_EBS].[dbo].[FND_FLEX_VAL_SETS] AS com
		USING (
			SELECT *
			 FROM [KAP_EBS].[STG].[STG_FND_FLEX_VALUE_SETS]
			) AS sd
		ON com.[FLEX_VAL_SET_ID] = sd.[FLEX_VALUE_SET_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET     
				   com.[FLEX_VAL_SET_NM]=sd.[FLEX_VALUE_SET_NAME]
				  ,com.[LST_UPD_DT]=sd.[LAST_UPDATE_DATE]
				  ,com.[LST_UPD_BY]=sd.[LAST_UPDATED_BY]
				  ,com.[CRE_DT]=sd.[CREATION_DATE]
				  ,com.[CRE_BY]=sd.[CREATED_BY]
				  ,com.[LST_UPD_LGN]=sd.[LAST_UPDATE_LOGIN]
				  ,com.[VALID_TYP]=sd.[VALIDATION_TYPE]
				  ,com.[PROTCD_FLG]=sd.[PROTECTED_FLAG]
				  ,com.[SEC_ENBL_FLG]=sd.[SECURITY_ENABLED_FLAG]
				  ,com.[LNGLST_FLG]=sd.[LONGLIST_FLAG]
				  ,com.[FMT_TYP]=sd.[FORMAT_TYPE]
				  ,com.[MAX_SIZE]=sd.[MAXIMUM_SIZE]
				  ,com.[ALPHA_ALLOW_FLG]=sd.[ALPHANUMERIC_ALLOWED_FLAG]
				  ,com.[UPCSE_ONLY_FLG]=sd.[UPPERCASE_ONLY_FLAG]
				  ,com.[NUM_MOD_ENBL_FLAG]=sd.[NUMERIC_MODE_ENABLED_FLAG]
				  ,com.[DESC]=sd.[DESCRIPTION]
				  ,com.[DEPEND_DFLT_VAL]=sd.[DEPENDANT_DEFAULT_VALUE]
				  ,com.[DEPEND_DELT_MEAN]=sd.[DEPENDANT_DEFAULT_MEANING]
				  ,com.[PAR_FLEX_VAL_SET_ID]=sd.[PARENT_FLEX_VALUE_SET_ID]
				  ,com.[MIN_VAL]=sd.[MINIMUM_VALUE]
				  ,com.[MAX_VAL]=sd.[MAXIMUM_VALUE]
				  ,com.[NUM_PRECIS]=sd.[NUMBER_PRECISION]
  				  ,com.[DW_MOD_TS]=GETDATE()
				  ,com.[DW_MOD_USR]=USER_NAME()
  
    WHEN NOT MATCHED
		THEN
		     INSERT ( [FLEX_VAL_SET_ID]
					  ,[FLEX_VAL_SET_NM]
					  ,[LST_UPD_DT]
					  ,[LST_UPD_BY]
					  ,[CRE_DT]
					  ,[CRE_BY]
					  ,[LST_UPD_LGN]
					  ,[VALID_TYP]
					  ,[PROTCD_FLG]
					  ,[SEC_ENBL_FLG]
					  ,[LNGLST_FLG]
					  ,[FMT_TYP]
					  ,[MAX_SIZE]
					  ,[ALPHA_ALLOW_FLG]
					  ,[UPCSE_ONLY_FLG]
					  ,[NUM_MOD_ENBL_FLAG]
					  ,[DESC]
					  ,[DEPEND_DFLT_VAL]
					  ,[DEPEND_DELT_MEAN]
					  ,[PAR_FLEX_VAL_SET_ID]
					  ,[MIN_VAL]
					  ,[MAX_VAL]
					  ,[NUM_PRECIS]
					  ,[DW_CRE_TS]
					  ,[DW_CRE_USR]
						)
	             VALUES(sd.[FLEX_VALUE_SET_ID]
						  ,sd.[FLEX_VALUE_SET_NAME]
						  ,sd.[LAST_UPDATE_DATE]
						  ,sd.[LAST_UPDATED_BY]
						  ,sd.[CREATION_DATE]
						  ,sd.[CREATED_BY]
						  ,sd.[LAST_UPDATE_LOGIN]
						  ,sd.[VALIDATION_TYPE]
						  ,sd.[PROTECTED_FLAG]
						  ,sd.[SECURITY_ENABLED_FLAG]
						  ,sd.[LONGLIST_FLAG]
						  ,sd.[FORMAT_TYPE]
						  ,sd.[MAXIMUM_SIZE]
						  ,sd.[ALPHANUMERIC_ALLOWED_FLAG]
						  ,sd.[UPPERCASE_ONLY_FLAG]
						  ,sd.[NUMERIC_MODE_ENABLED_FLAG]
						  ,sd.[DESCRIPTION]
						  ,sd.[DEPENDANT_DEFAULT_VALUE]
						  ,sd.[DEPENDANT_DEFAULT_MEANING]
						  ,sd.[PARENT_FLEX_VALUE_SET_ID]
						  ,sd.[MINIMUM_VALUE]
						  ,sd.[MAXIMUM_VALUE]
						  ,sd.[NUMBER_PRECISION]
 						  ,GETDATE()
						  ,USER_NAME()
	                             )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_FLEX_VAL_SETS', @Rows_Insrt, @Rows_Updt, null,null, 'Y';


END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_FND_FLEX_VAL_VL]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_FND_FLEX_VAL_VL] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_FLEX_VAL',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[FND_FLEX_VAL_VL] AS com
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_FND_FLEX_VALUES_VL]
			) AS sd
		ON com.[FLEX_VAL_SET_ID] = sd.[FLEX_VALUE_SET_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET com.[FLEX_VAL_ID]=sd.[FLEX_VALUE_ID]
				  ,com.[FLEX_VAL]=sd.[FLEX_VALUE]
				  ,com.[LST_UPD_DT]=sd.[LAST_UPDATE_DATE]
				  ,com.[LST_UPD_BY]=sd.[LAST_UPDATED_BY]
				  ,com.[CRE_DT]=sd.[CREATION_DATE]
				  ,com.[CRE_BY]=sd.[CREATED_BY]
				  ,com.[LST_UPD_LGN]=sd.[LAST_UPDATE_LOGIN]
				  ,com.[ENBL_FLG]=sd.[ENABLED_FLAG]
				  ,com.[SUMM_FLG]=sd.[SUMMARY_FLAG]
				  ,com.[STRT_DT_ACT]=sd.[START_DATE_ACTIVE]
				  ,com.[ED_DT_ACT]=sd.[END_DATE_ACTIVE]
				  ,com.[PARN_FLEX_VAL_LOW]=sd.[PARENT_FLEX_VALUE_LOW]
				  ,com.[PARN_FLEX_VAL_HGH]=sd.[PARENT_FLEX_VALUE_HIGH]
				  ,com.[STRUCT_HIRCHY_LVL]=sd.[STRUCTURED_HIERARCHY_LEVEL]
				  ,com.[HIRCHY_LVL]=sd.[HIERARCHY_LEVEL]
				  ,com.[COMPI_VAL_ATTRIB]=sd.[COMPILED_VALUE_ATTRIBUTES]
				  ,com.[VAL_CATEG]=sd.[VALUE_CATEGORY]
				  ,com.[ATTRIB1]=sd.[ATTRIBUTE1]
				  ,com.[ATTRIB2]=sd.[ATTRIBUTE2]
				  ,com.[ATTRIB3]=sd.[ATTRIBUTE3]
				  ,com.[ATTRIB4]=sd.[ATTRIBUTE4]
				  ,com.[ATTRIB5]=sd.[ATTRIBUTE5]
				  ,com.[ATTRIB6]=sd.[ATTRIBUTE6]
				  ,com.[ATTRIB7]=sd.[ATTRIBUTE7]
				  ,com.[ATTRIB8]=sd.[ATTRIBUTE8]
				  ,com.[ATTRIB9]=sd.[ATTRIBUTE9]
				  ,com.[ATTRIB10]=sd.[ATTRIBUTE10]
				  ,com.[ATTRIB11]=sd.[ATTRIBUTE11]
				  ,com.[ATTRIB12]=sd.[ATTRIBUTE12]
				  ,com.[ATTRIB13]=sd.[ATTRIBUTE13]
				  ,com.[ATTRIB14]=sd.[ATTRIBUTE14]
				  ,com.[ATTRIB15]=sd.[ATTRIBUTE15]
				  ,com.[ATTRIB16]=sd.[ATTRIBUTE16]
				  ,com.[ATTRIB17]=sd.[ATTRIBUTE17]
				  ,com.[ATTRIB18]=sd.[ATTRIBUTE18]
				  ,com.[ATTRIB19]=sd.[ATTRIBUTE19]
				  ,com.[ATTRIB20]=sd.[ATTRIBUTE20]
				  ,com.[ATTRIB21]=sd.[ATTRIBUTE21]
				  ,com.[ATTRIB22]=sd.[ATTRIBUTE22]
				  ,com.[ATTRIB23]=sd.[ATTRIBUTE23]
				  ,com.[ATTRIB24]=sd.[ATTRIBUTE24]
				  ,com.[ATTRIB25]=sd.[ATTRIBUTE25]
				  ,com.[ATTRIB26]=sd.[ATTRIBUTE26]
				  ,com.[ATTRIB27]=sd.[ATTRIBUTE27]
				  ,com.[ATTRIB28]=sd.[ATTRIBUTE28]
				  ,com.[ATTRIB29]=sd.[ATTRIBUTE29]
				  ,com.[ATTRIB30]=sd.[ATTRIBUTE30]
				  ,com.[ATTRIB31]=sd.[ATTRIBUTE31]
				  ,com.[ATTRIB32]=sd.[ATTRIBUTE32]
				  ,com.[ATTRIB33]=sd.[ATTRIBUTE33]
				  ,com.[ATTRIB34]=sd.[ATTRIBUTE34]
				  ,com.[ATTRIB35]=sd.[ATTRIBUTE35]
				  ,com.[ATTRIB36]=sd.[ATTRIBUTE36]
				  ,com.[ATTRIB37]=sd.[ATTRIBUTE37]
				  ,com.[ATTRIB38]=sd.[ATTRIBUTE38]
				  ,com.[ATTRIB39]=sd.[ATTRIBUTE39]
				  ,com.[ATTRIB40]=sd.[ATTRIBUTE40]
				  ,com.[ATTRIB41]=sd.[ATTRIBUTE41]
				  ,com.[ATTRIB42]=sd.[ATTRIBUTE42]
				  ,com.[ATTRIB43]=sd.[ATTRIBUTE43]
				  ,com.[ATTRIB44]=sd.[ATTRIBUTE44]
				  ,com.[ATTRIB45]=sd.[ATTRIBUTE45]
				  ,com.[ATTRIB46]=sd.[ATTRIBUTE46]
				  ,com.[ATTRIB47]=sd.[ATTRIBUTE47]
				  ,com.[ATTRIB48]=sd.[ATTRIBUTE48]
				  ,com.[ATTRIB49]=sd.[ATTRIBUTE49]
				  ,com.[ATTRIB50]=sd.[ATTRIBUTE50]
				  ,com.[FLEX_VAL_MEAN]=sd.[FLEX_VALUE_MEANING]
				  ,com.[DESC]=sd.[DESCRIPTION]
				  ,com.[ATTRIB_SORT_ORD]=sd.[ATTRIBUTE_SORT_ORDER]
  				  ,com.[DW_MOD_TS]=GETDATE()
				  ,com.[DW_MOD_USR]=USER_NAME()
  
    WHEN NOT MATCHED
		THEN
		     INSERT (         [FLEX_VAL_SET_ID]
      ,[FLEX_VAL_ID]
      ,[FLEX_VAL]
      ,[LST_UPD_DT]
      ,[LST_UPD_BY]
      ,[CRE_DT]
      ,[CRE_BY]
      ,[LST_UPD_LGN]
      ,[ENBL_FLG]
      ,[SUMM_FLG]
      ,[STRT_DT_ACT]
      ,[ED_DT_ACT]
      ,[PARN_FLEX_VAL_LOW]
      ,[PARN_FLEX_VAL_HGH]
      ,[STRUCT_HIRCHY_LVL]
      ,[HIRCHY_LVL]
      ,[COMPI_VAL_ATTRIB]
      ,[VAL_CATEG]
      ,[ATTRIB1]
      ,[ATTRIB2]
      ,[ATTRIB3]
      ,[ATTRIB4]
      ,[ATTRIB5]
      ,[ATTRIB6]
      ,[ATTRIB7]
      ,[ATTRIB8]
      ,[ATTRIB9]
      ,[ATTRIB10]
      ,[ATTRIB11]
      ,[ATTRIB12]
      ,[ATTRIB13]
      ,[ATTRIB14]
      ,[ATTRIB15]
      ,[ATTRIB16]
      ,[ATTRIB17]
      ,[ATTRIB18]
      ,[ATTRIB19]
      ,[ATTRIB20]
      ,[ATTRIB21]
      ,[ATTRIB22]
      ,[ATTRIB23]
      ,[ATTRIB24]
      ,[ATTRIB25]
      ,[ATTRIB26]
      ,[ATTRIB27]
      ,[ATTRIB28]
      ,[ATTRIB29]
      ,[ATTRIB30]
      ,[ATTRIB31]
      ,[ATTRIB32]
      ,[ATTRIB33]
      ,[ATTRIB34]
      ,[ATTRIB35]
      ,[ATTRIB36]
      ,[ATTRIB37]
      ,[ATTRIB38]
      ,[ATTRIB39]
      ,[ATTRIB40]
      ,[ATTRIB41]
      ,[ATTRIB42]
      ,[ATTRIB43]
      ,[ATTRIB44]
      ,[ATTRIB45]
      ,[ATTRIB46]
      ,[ATTRIB47]
      ,[ATTRIB48]
      ,[ATTRIB49]
      ,[ATTRIB50]
      ,[FLEX_VAL_MEAN]
      ,[DESC]
      ,[ATTRIB_SORT_ORD]
      ,[DW_CRE_TS]
	  ,[DW_CRE_USR]
						  )
	  VALUES(   
        sd.[FLEX_VALUE_SET_ID]
      ,sd.[FLEX_VALUE_ID]
      ,sd.[FLEX_VALUE]
      ,sd.[LAST_UPDATE_DATE]
      ,sd.[LAST_UPDATED_BY]
      ,sd.[CREATION_DATE]
      ,sd.[CREATED_BY]
      ,sd.[LAST_UPDATE_LOGIN]
      ,sd.[ENABLED_FLAG]
      ,sd.[SUMMARY_FLAG]
      ,sd.[START_DATE_ACTIVE]
      ,sd.[END_DATE_ACTIVE]
      ,sd.[PARENT_FLEX_VALUE_LOW]
      ,sd.[PARENT_FLEX_VALUE_HIGH]
      ,sd.[STRUCTURED_HIERARCHY_LEVEL]
      ,sd.[HIERARCHY_LEVEL]
      ,sd.[COMPILED_VALUE_ATTRIBUTES]
      ,sd.[VALUE_CATEGORY]
      ,sd.[ATTRIBUTE1]
      ,sd.[ATTRIBUTE2]
      ,sd.[ATTRIBUTE3]
      ,sd.[ATTRIBUTE4]
      ,sd.[ATTRIBUTE5]
      ,sd.[ATTRIBUTE6]
      ,sd.[ATTRIBUTE7]
      ,sd.[ATTRIBUTE8]
      ,sd.[ATTRIBUTE9]
      ,sd.[ATTRIBUTE10]
      ,sd.[ATTRIBUTE11]
      ,sd.[ATTRIBUTE12]
      ,sd.[ATTRIBUTE13]
      ,sd.[ATTRIBUTE14]
      ,sd.[ATTRIBUTE15]
      ,sd.[ATTRIBUTE16]
      ,sd.[ATTRIBUTE17]
      ,sd.[ATTRIBUTE18]
      ,sd.[ATTRIBUTE19]
      ,sd.[ATTRIBUTE20]
      ,sd.[ATTRIBUTE21]
      ,sd.[ATTRIBUTE22]
      ,sd.[ATTRIBUTE23]
      ,sd.[ATTRIBUTE24]
      ,sd.[ATTRIBUTE25]
      ,sd.[ATTRIBUTE26]
      ,sd.[ATTRIBUTE27]
      ,sd.[ATTRIBUTE28]
      ,sd.[ATTRIBUTE29]
      ,sd.[ATTRIBUTE30]
      ,sd.[ATTRIBUTE31]
      ,sd.[ATTRIBUTE32]
      ,sd.[ATTRIBUTE33]
      ,sd.[ATTRIBUTE34]
      ,sd.[ATTRIBUTE35]
      ,sd.[ATTRIBUTE36]
      ,sd.[ATTRIBUTE37]
      ,sd.[ATTRIBUTE38]
      ,sd.[ATTRIBUTE39]
      ,sd.[ATTRIBUTE40]
      ,sd.[ATTRIBUTE41]
      ,sd.[ATTRIBUTE42]
      ,sd.[ATTRIBUTE43]
      ,sd.[ATTRIBUTE44]
      ,sd.[ATTRIBUTE45]
      ,sd.[ATTRIBUTE46]
      ,sd.[ATTRIBUTE47]
      ,sd.[ATTRIBUTE48]
      ,sd.[ATTRIBUTE49]
      ,sd.[ATTRIBUTE50]
      ,sd.[FLEX_VALUE_MEANING]
      ,sd.[DESCRIPTION]
      ,sd.[ATTRIBUTE_SORT_ORDER]
  	  ,GETDATE()
	  ,USER_NAME()
	 )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_FLEX_VAL', @Rows_Insrt, @Rows_Updt, null,null, 'Y';


END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_COD_COMBN_KFV]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_COD_COMBN_KFV] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_COMBN_KFV',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_COD_COMBN_KFV] AS com
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_CODE_COMBINATIONS_KFV]
			) AS sd
		ON com.[CODE_COMBN_ID] = sd.[CODE_COMBINATION_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET  
       
				        com.[CODE_COMBN_ID]=sd.[CODE_COMBINATION_ID]
      ,com.[CHART_OF_ACCTS_ID]=sd.[CHART_OF_ACCOUNTS_ID]
      ,com.[CONCAT_SEGMS]=sd.[CONCATENATED_SEGMENTS]
      ,com.[PADDED_CONCAT_SEGMS]=sd.[PADDED_CONCATENATED_SEGMENTS]
      ,com.[GL_ACCT_TYP]=sd.[GL_ACCOUNT_TYPE]
      ,com.[GL_CNTL_ACCT]=sd.[GL_CONTROL_ACCOUNT]
      ,com.[RECON_FLG]=sd.[RECONCILIATION_FLAG]
      ,com.[DETL_BDG_ALLOW]=sd.[DETAIL_BUDGETING_ALLOWED]
      ,com.[DETL_POST_ALLOWED]=sd.[DETAIL_POSTING_ALLOWED]
      ,com.[IGI_BAL_BDG_FLG]=sd.[IGI_BALANCED_BUDGET_FLAG]
      ,com.[CO_COST_CNTR_ORG_ID]=sd.[COMPANY_COST_CENTER_ORG_ID]
      ,com.[RV_ID]=sd.[REVALUATION_ID]
      ,com.[LEDR_SEGM]=sd.[LEDGER_SEGMENT]
      ,com.[ALTER_COD_COMBN_ID]=sd.[ALTERNATE_CODE_COMBINATION_ID]
      ,com.[LST_UPD_DAT]=sd.[LAST_UPDATE_DATE]
      ,com.[LST_UPD_BY]=sd.[LAST_UPDATED_BY]
      ,com.[ENBL_FLG]=sd.[ENABLED_FLAG]
      ,com.[SUMM_FLG]=sd.[SUMMARY_FLAG]
      ,com.[SEGM1]=sd.[SEGMENT1]
      ,com.[SEGM2]=sd.[SEGMENT2]
      ,com.[SEGM3]=sd.[SEGMENT3]
      ,com.[SEGM4]=sd.[SEGMENT4]
      ,com.[SEGM5]=sd.[SEGMENT5]
      ,com.[SEGM6]=sd.[SEGMENT6]
      ,com.[SEGM7]=sd.[SEGMENT7]
      ,com.[SEGM8]=sd.[SEGMENT8]
      ,com.[SEGM9]=sd.[SEGMENT9]
      ,com.[SEGM10]=sd.[SEGMENT10]
      ,com.[SEGM11]=sd.[SEGMENT11]
      ,com.[SEGM12]=sd.[SEGMENT12]
      ,com.[SEGM13]=sd.[SEGMENT13]
      ,com.[SEGM14]=sd.[SEGMENT14]
      ,com.[SEGM15]=sd.[SEGMENT15]
      ,com.[SEGM16]=sd.[SEGMENT16]
      ,com.[SEGM17]=sd.[SEGMENT17]
      ,com.[SEGM18]=sd.[SEGMENT18]
      ,com.[SEGM19]=sd.[SEGMENT19]
      ,com.[SEGM20]=sd.[SEGMENT20]
      ,com.[SEGM21]=sd.[SEGMENT21]
      ,com.[SEGM22]=sd.[SEGMENT22]
      ,com.[SEGM23]=sd.[SEGMENT23]
      ,com.[SEGM24]=sd.[SEGMENT24]
      ,com.[SEGM25]=sd.[SEGMENT25]
      ,com.[SEGM26]=sd.[SEGMENT26]
      ,com.[SEGM27]=sd.[SEGMENT27]
      ,com.[SEGM28]=sd.[SEGMENT28]
      ,com.[SEGM29]=sd.[SEGMENT29]
      ,com.[SEGM30]=sd.[SEGMENT30]
      ,com.[DESC]=sd.[DESCRIPTION]
      ,com.[TEMPL_ID]=sd.[TEMPLATE_ID]
      ,com.[ALLOC_CRE_FLG]=sd.[ALLOCATION_CREATE_FLAG]
      ,com.[ST_DT_ACT]=sd.[START_DATE_ACTIVE]
      ,com.[ED_DT_ACT]=sd.[END_DATE_ACTIVE]
      ,com.[ATTRIB1]=sd.[ATTRIBUTE1]
      ,com.[ATTRIB2]=sd.[ATTRIBUTE2]
      ,com.[ATTRIB3]=sd.[ATTRIBUTE3]
      ,com.[ATTRIB4]=sd.[ATTRIBUTE4]
      ,com.[ATTRIB5]=sd.[ATTRIBUTE5]
      ,com.[ATTRIB6]=sd.[ATTRIBUTE6]
      ,com.[ATTRIB7]=sd.[ATTRIBUTE7]
      ,com.[ATTRIB8]=sd.[ATTRIBUTE8]
      ,com.[ATTRIB9]=sd.[ATTRIBUTE9]
      ,com.[ATTRIB10]=sd.[ATTRIBUTE10]
      ,com.[CTX]=sd.[CONTEXT]
      ,com.[SEGM_ATTRIB1]=sd.[SEGMENT_ATTRIBUTE1]
      ,com.[SEGM_ATTRIB2]=sd.[SEGMENT_ATTRIBUTE2]
      ,com.[SEGM_ATTRIB3]=sd.[SEGMENT_ATTRIBUTE3]
      ,com.[SEGM_ATTRIB4]=sd.[SEGMENT_ATTRIBUTE4]
      ,com.[SEGM_ATTRIB5]=sd.[SEGMENT_ATTRIBUTE5]
      ,com.[SEGM_ATTRIB6]=sd.[SEGMENT_ATTRIBUTE6]
      ,com.[SEGM_ATTRIB7]=sd.[SEGMENT_ATTRIBUTE7]
      ,com.[SEGM_ATTRIB8]=sd.[SEGMENT_ATTRIBUTE8]
      ,com.[SEGM_ATTRIB9]=sd.[SEGMENT_ATTRIBUTE9]
      ,com.[SEGM_ATTRIB10]=sd.[SEGMENT_ATTRIBUTE10]
      ,com.[SEGM_ATTRIB11]=sd.[SEGMENT_ATTRIBUTE11]
      ,com.[SEGM_ATTRIB12]=sd.[SEGMENT_ATTRIBUTE12]
      ,com.[SEGM_ATTRIB13]=sd.[SEGMENT_ATTRIBUTE13]
      ,com.[SEGM_ATTRIB14]=sd.[SEGMENT_ATTRIBUTE14]
      ,com.[SEGM_ATTRIB15]=sd.[SEGMENT_ATTRIBUTE15]
      ,com.[SEGM_ATTRIB16]=sd.[SEGMENT_ATTRIBUTE16]
      ,com.[SEGM_ATTRIB17]=sd.[SEGMENT_ATTRIBUTE17]
      ,com.[SEGM_ATTRIB18]=sd.[SEGMENT_ATTRIBUTE18]
      ,com.[SEGM_ATTRIB19]=sd.[SEGMENT_ATTRIBUTE19]
      ,com.[SEGM_ATTRIB20]=sd.[SEGMENT_ATTRIBUTE20]
      ,com.[SEGM_ATTRIB21]=sd.[SEGMENT_ATTRIBUTE21]
      ,com.[SEGM_ATTRIB22]=sd.[SEGMENT_ATTRIBUTE22]
      ,com.[SEGM_ATTRIB23]=sd.[SEGMENT_ATTRIBUTE23]
      ,com.[SEGM_ATTRIB24]=sd.[SEGMENT_ATTRIBUTE24]
      ,com.[SEGM_ATTRIB25]=sd.[SEGMENT_ATTRIBUTE25]
      ,com.[SEGM_ATTRIB26]=sd.[SEGMENT_ATTRIBUTE26]
      ,com.[SEGM_ATTRIB27]=sd.[SEGMENT_ATTRIBUTE27]
      ,com.[SEGM_ATTRIB28]=sd.[SEGMENT_ATTRIBUTE28]
      ,com.[SEGM_ATTRIB29]=sd.[SEGMENT_ATTRIBUTE29]
      ,com.[SEGM_ATTRIB30]=sd.[SEGMENT_ATTRIBUTE30]
      ,com.[SEGM_ATTRIB31]=sd.[SEGMENT_ATTRIBUTE31]
      ,com.[SEGM_ATTRIB32]=sd.[SEGMENT_ATTRIBUTE32]
      ,com.[SEGM_ATTRIB33]=sd.[SEGMENT_ATTRIBUTE33]
      ,com.[SEGM_ATTRIB34]=sd.[SEGMENT_ATTRIBUTE34]
      ,com.[SEGM_ATTRIB35]=sd.[SEGMENT_ATTRIBUTE35]
      ,com.[SEGM_ATTRIB36]=sd.[SEGMENT_ATTRIBUTE36]
      ,com.[SEGM_ATTRIB37]=sd.[SEGMENT_ATTRIBUTE37]
      ,com.[SEGM_ATTRIB38]=sd.[SEGMENT_ATTRIBUTE38]
      ,com.[SEGM_ATTRIB39]=sd.[SEGMENT_ATTRIBUTE39]
      ,com.[SEGM_ATTRIB40]=sd.[SEGMENT_ATTRIBUTE40]
      ,com.[SEGM_ATTRIB41]=sd.[SEGMENT_ATTRIBUTE41]
      ,com.[SEGM_ATTRIB42]=sd.[SEGMENT_ATTRIBUTE42]
      ,com.[REF1]=sd.[REFERENCE1]
      ,com.[REF2]=sd.[REFERENCE2]
      ,com.[REF4]=sd.[REFERENCE4]
      ,com.[REF5]=sd.[REFERENCE5]
      ,com.[JGZZ_RECON_CXT]=sd.[JGZZ_RECON_CONTEXT]
      ,com.[PRESV_FLG]=sd.[PRESERVE_FLAG]
      ,com.[REFRESH_FLG]=sd.[REFRESH_FLAG]
  	  ,com.[DW_MOD_TS]=GETDATE()
	  ,com.[DW_MOD_USR]=USER_NAME()
  
    WHEN NOT MATCHED
		THEN
		     INSERT (  [CODE_COMBN_ID]
						  ,[CHART_OF_ACCTS_ID]
						  ,[CONCAT_SEGMS]
						  ,[PADDED_CONCAT_SEGMS]
						  ,[GL_ACCT_TYP]
						  ,[GL_CNTL_ACCT]
						  ,[RECON_FLG]
						  ,[DETL_BDG_ALLOW]
						  ,[DETL_POST_ALLOWED]
						  ,[IGI_BAL_BDG_FLG]
						  ,[CO_COST_CNTR_ORG_ID]
						  ,[RV_ID]
						  ,[LEDR_SEGM]
						  ,[ALTER_COD_COMBN_ID]
						  ,[LST_UPD_DAT]
						  ,[LST_UPD_BY]
						  ,[ENBL_FLG]
						  ,[SUMM_FLG]
						  ,[SEGM1]
						  ,[SEGM2]
						  ,[SEGM3]
						  ,[SEGM4]
						  ,[SEGM5]
						  ,[SEGM6]
						  ,[SEGM7]
						  ,[SEGM8]
						  ,[SEGM9]
						  ,[SEGM10]
						  ,[SEGM11]
						  ,[SEGM12]
						  ,[SEGM13]
						  ,[SEGM14]
						  ,[SEGM15]
						  ,[SEGM16]
						  ,[SEGM17]
						  ,[SEGM18]
						  ,[SEGM19]
						  ,[SEGM20]
						  ,[SEGM21]
						  ,[SEGM22]
						  ,[SEGM23]
						  ,[SEGM24]
						  ,[SEGM25]
						  ,[SEGM26]
						  ,[SEGM27]
						  ,[SEGM28]
						  ,[SEGM29]
						  ,[SEGM30]
						  ,[DESC]
						  ,[TEMPL_ID]
						  ,[ALLOC_CRE_FLG]
						  ,[ST_DT_ACT]
						  ,[ED_DT_ACT]
						  ,[ATTRIB1]
						  ,[ATTRIB2]
						  ,[ATTRIB3]
						  ,[ATTRIB4]
						  ,[ATTRIB5]
						  ,[ATTRIB6]
						  ,[ATTRIB7]
						  ,[ATTRIB8]
						  ,[ATTRIB9]
						  ,[ATTRIB10]
						  ,[CTX]
						  ,[SEGM_ATTRIB1]
						  ,[SEGM_ATTRIB2]
						  ,[SEGM_ATTRIB3]
						  ,[SEGM_ATTRIB4]
						  ,[SEGM_ATTRIB5]
						  ,[SEGM_ATTRIB6]
						  ,[SEGM_ATTRIB7]
						  ,[SEGM_ATTRIB8]
						  ,[SEGM_ATTRIB9]
						  ,[SEGM_ATTRIB10]
						  ,[SEGM_ATTRIB11]
						  ,[SEGM_ATTRIB12]
						  ,[SEGM_ATTRIB13]
						  ,[SEGM_ATTRIB14]
						  ,[SEGM_ATTRIB15]
						  ,[SEGM_ATTRIB16]
						  ,[SEGM_ATTRIB17]
						  ,[SEGM_ATTRIB18]
						  ,[SEGM_ATTRIB19]
						  ,[SEGM_ATTRIB20]
						  ,[SEGM_ATTRIB21]
						  ,[SEGM_ATTRIB22]
						  ,[SEGM_ATTRIB23]
						  ,[SEGM_ATTRIB24]
						  ,[SEGM_ATTRIB25]
						  ,[SEGM_ATTRIB26]
						  ,[SEGM_ATTRIB27]
						  ,[SEGM_ATTRIB28]
						  ,[SEGM_ATTRIB29]
						  ,[SEGM_ATTRIB30]
						  ,[SEGM_ATTRIB31]
						  ,[SEGM_ATTRIB32]
						  ,[SEGM_ATTRIB33]
						  ,[SEGM_ATTRIB34]
						  ,[SEGM_ATTRIB35]
						  ,[SEGM_ATTRIB36]
						  ,[SEGM_ATTRIB37]
						  ,[SEGM_ATTRIB38]
						  ,[SEGM_ATTRIB39]
						  ,[SEGM_ATTRIB40]
						  ,[SEGM_ATTRIB41]
						  ,[SEGM_ATTRIB42]
						  ,[REF1]
						  ,[REF2]
						  ,[REF4]
						  ,[REF5]
						  ,[JGZZ_RECON_CXT]
						  ,[PRESV_FLG]
						  ,[REFRESH_FLG]
 						  ,[DW_CRE_TS]
						  ,[DW_CRE_USR]
						  )
	  VALUES(   
				      sd.[CODE_COMBINATION_ID]
					  ,sd.[CHART_OF_ACCOUNTS_ID]
					  ,sd.[CONCATENATED_SEGMENTS]
					  ,sd.[PADDED_CONCATENATED_SEGMENTS]
					  ,sd.[GL_ACCOUNT_TYPE]
					  ,sd.[GL_CONTROL_ACCOUNT]
					  ,sd.[RECONCILIATION_FLAG]
					  ,sd.[DETAIL_BUDGETING_ALLOWED]
					  ,sd.[DETAIL_POSTING_ALLOWED]
					  ,sd.[IGI_BALANCED_BUDGET_FLAG]
					  ,sd.[COMPANY_COST_CENTER_ORG_ID]
					  ,sd.[REVALUATION_ID]
					  ,sd.[LEDGER_SEGMENT]
					  ,sd.[ALTERNATE_CODE_COMBINATION_ID]
					  ,sd.[LAST_UPDATE_DATE]
					  ,sd.[LAST_UPDATED_BY]
					  ,sd.[ENABLED_FLAG]
					  ,sd.[SUMMARY_FLAG]
					  ,sd.[SEGMENT1]
					  ,sd.[SEGMENT2]
					  ,sd.[SEGMENT3]
					  ,sd.[SEGMENT4]
					  ,sd.[SEGMENT5]
					  ,sd.[SEGMENT6]
					  ,sd.[SEGMENT7]
					  ,sd.[SEGMENT8]
					  ,sd.[SEGMENT9]
					  ,sd.[SEGMENT10]
					  ,sd.[SEGMENT11]
					  ,sd.[SEGMENT12]
					  ,sd.[SEGMENT13]
					  ,sd.[SEGMENT14]
					  ,sd.[SEGMENT15]
					  ,sd.[SEGMENT16]
					  ,sd.[SEGMENT17]
					  ,sd.[SEGMENT18]
					  ,sd.[SEGMENT19]
					  ,sd.[SEGMENT20]
					  ,sd.[SEGMENT21]
					  ,sd.[SEGMENT22]
					  ,sd.[SEGMENT23]
					  ,sd.[SEGMENT24]
					  ,sd.[SEGMENT25]
					  ,sd.[SEGMENT26]
					  ,sd.[SEGMENT27]
					  ,sd.[SEGMENT28]
					  ,sd.[SEGMENT29]
					  ,sd.[SEGMENT30]
					  ,sd.[DESCRIPTION]
					  ,sd.[TEMPLATE_ID]
					  ,sd.[ALLOCATION_CREATE_FLAG]
					  ,sd.[START_DATE_ACTIVE]
					  ,sd.[END_DATE_ACTIVE]
					  ,sd.[ATTRIBUTE1]
					  ,sd.[ATTRIBUTE2]
					  ,sd.[ATTRIBUTE3]
					  ,sd.[ATTRIBUTE4]
					  ,sd.[ATTRIBUTE5]
					  ,sd.[ATTRIBUTE6]
					  ,sd.[ATTRIBUTE7]
					  ,sd.[ATTRIBUTE8]
					  ,sd.[ATTRIBUTE9]
					  ,sd.[ATTRIBUTE10]
					  ,sd.[CONTEXT]
					  ,sd.[SEGMENT_ATTRIBUTE1]
					  ,sd.[SEGMENT_ATTRIBUTE2]
					  ,sd.[SEGMENT_ATTRIBUTE3]
					  ,sd.[SEGMENT_ATTRIBUTE4]
					  ,sd.[SEGMENT_ATTRIBUTE5]
					  ,sd.[SEGMENT_ATTRIBUTE6]
					  ,sd.[SEGMENT_ATTRIBUTE7]
					  ,sd.[SEGMENT_ATTRIBUTE8]
					  ,sd.[SEGMENT_ATTRIBUTE9]
					  ,sd.[SEGMENT_ATTRIBUTE10]
					  ,sd.[SEGMENT_ATTRIBUTE11]
					  ,sd.[SEGMENT_ATTRIBUTE12]
					  ,sd.[SEGMENT_ATTRIBUTE13]
					  ,sd.[SEGMENT_ATTRIBUTE14]
					  ,sd.[SEGMENT_ATTRIBUTE15]
					  ,sd.[SEGMENT_ATTRIBUTE16]
					  ,sd.[SEGMENT_ATTRIBUTE17]
					  ,sd.[SEGMENT_ATTRIBUTE18]
					  ,sd.[SEGMENT_ATTRIBUTE19]
					  ,sd.[SEGMENT_ATTRIBUTE20]
					  ,sd.[SEGMENT_ATTRIBUTE21]
					  ,sd.[SEGMENT_ATTRIBUTE22]
					  ,sd.[SEGMENT_ATTRIBUTE23]
					  ,sd.[SEGMENT_ATTRIBUTE24]
					  ,sd.[SEGMENT_ATTRIBUTE25]
					  ,sd.[SEGMENT_ATTRIBUTE26]
					  ,sd.[SEGMENT_ATTRIBUTE27]
					  ,sd.[SEGMENT_ATTRIBUTE28]
					  ,sd.[SEGMENT_ATTRIBUTE29]
					  ,sd.[SEGMENT_ATTRIBUTE30]
					  ,sd.[SEGMENT_ATTRIBUTE31]
					  ,sd.[SEGMENT_ATTRIBUTE32]
					  ,sd.[SEGMENT_ATTRIBUTE33]
					  ,sd.[SEGMENT_ATTRIBUTE34]
					  ,sd.[SEGMENT_ATTRIBUTE35]
					  ,sd.[SEGMENT_ATTRIBUTE36]
					  ,sd.[SEGMENT_ATTRIBUTE37]
					  ,sd.[SEGMENT_ATTRIBUTE38]
					  ,sd.[SEGMENT_ATTRIBUTE39]
					  ,sd.[SEGMENT_ATTRIBUTE40]
					  ,sd.[SEGMENT_ATTRIBUTE41]
					  ,sd.[SEGMENT_ATTRIBUTE42]
					  ,sd.[REFERENCE1]
					  ,sd.[REFERENCE2]
					  ,sd.[REFERENCE4]
					  ,sd.[REFERENCE5]
					  ,sd.[JGZZ_RECON_CONTEXT]
					  ,sd.[PRESERVE_FLAG]
					  ,sd.[REFRESH_FLAG]
     				  ,GETDATE()
					  ,USER_NAME()
						  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_COMBN_KFV', @Rows_Insrt, @Rows_Updt, null,null, 'Y';


END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_CODE_COMBN]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_CODE_COMBN] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_COMBN',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_CODE_COMBN] AS com
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_CODE_COMBINATIONS]
			) AS sd
		ON com.[CODE_COMBN_ID] = sd.[CODE_COMBINATION_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET  
       
				  com.[LAST_UPD_DT]=sd.[LAST_UPDATE_DATE]
				  ,com.[LAST_UPD_BY]=sd.[LAST_UPDATED_BY]
				  ,com.[CHART_OF_ACCTS_ID]=sd.[CHART_OF_ACCOUNTS_ID]
				  ,com.[DETL_POST_ALLOW_FLAG]=sd.[DETAIL_POSTING_ALLOWED_FLAG]
				  ,com.[DETL_BDG_ALLOWED_FLAG]=sd.[DETAIL_BUDGETING_ALLOWED_FLAG]
				  ,com.[ACCT_TYPE]=sd.[ACCOUNT_TYPE]
				  ,com.[ENBL_FLAG]=sd.[ENABLED_FLAG]
				  ,com.[SUMM_FLAG]=sd.[SUMMARY_FLAG]
				  ,com.[SEGS1]=sd.[SEGMENT1]
				  ,com.[SEGS2]=sd.[SEGMENT2]
				  ,com.[SEGS3]=sd.[SEGMENT3]
				  ,com.[SEGS4]=sd.[SEGMENT4]
				  ,com.[SEGS5]=sd.[SEGMENT5]
				  ,com.[SEGS6]=sd.[SEGMENT6]
				  ,com.[SEGS7]=sd.[SEGMENT7]
				  ,com.[SEGS8]=sd.[SEGMENT8]
				  ,com.[SEGS9]=sd.[SEGMENT9]
				  ,com.[SEGS10]=sd.[SEGMENT10]
				  ,com.[SEGS11]=sd.[SEGMENT11]
				  ,com.[SEGS12]=sd.[SEGMENT12]
				  ,com.[SEGS13]=sd.[SEGMENT13]
				  ,com.[SEGS14]=sd.[SEGMENT14]
				  ,com.[SEGS15]=sd.[SEGMENT15]
				  ,com.[SEGS16]=sd.[SEGMENT16]
				  ,com.[SEGS17]=sd.[SEGMENT17]
				  ,com.[SEGS18]=sd.[SEGMENT18]
				  ,com.[SEGS19]=sd.[SEGMENT19]
				  ,com.[SEGS20]=sd.[SEGMENT20]
				  ,com.[SEGS21]=sd.[SEGMENT21]
				  ,com.[SEGS22]=sd.[SEGMENT22]
				  ,com.[SEGS23]=sd.[SEGMENT23]
				  ,com.[SEGS24]=sd.[SEGMENT24]
				  ,com.[SEGS25]=sd.[SEGMENT25]
				  ,com.[SEGS26]=sd.[SEGMENT26]
				  ,com.[SEGS27]=sd.[SEGMENT27]
				  ,com.[SEGS28]=sd.[SEGMENT28]
				  ,com.[SEGS29]=sd.[SEGMENT29]
				  ,com.[SEGS30]=sd.[SEGMENT30]
				  ,com.[DESC]=sd.[DESCRIPTION]
				  ,com.[TMPL_ID]=sd.[TEMPLATE_ID]
				  ,com.[ALLOC_CRE_FLG]=sd.[ALLOCATION_CREATE_FLAG]
				  ,com.[ST_DT_ACT]=sd.[START_DATE_ACTIVE]
				  ,com.[EN_DT_ACT]=sd.[END_DATE_ACTIVE]
				  ,com.[ATTRIB1]=sd.[ATTRIBUTE1]
				  ,com.[ATTRIB2]=sd.[ATTRIBUTE2]
				  ,com.[ATTRIB3]=sd.[ATTRIBUTE3]
				  ,com.[ATTRIB4]=sd.[ATTRIBUTE4]
				  ,com.[ATTRIB5]=sd.[ATTRIBUTE5]
				  ,com.[ATTRIB6]=sd.[ATTRIBUTE6]
				  ,com.[ATTRIB7]=sd.[ATTRIBUTE7]
				  ,com.[ATTRIB8]=sd.[ATTRIBUTE8]
				  ,com.[ATTRIB9]=sd.[ATTRIBUTE9]
				  ,com.[ATTRIB10]=sd.[ATTRIBUTE10]
				  ,com.[CTX]=sd.[CONTEXT]
				  ,com.[SEGS_ATTRIB1]=sd.[SEGMENT_ATTRIBUTE1]
				  ,com.[SEGS_ATTRIB2]=sd.[SEGMENT_ATTRIBUTE2]
				  ,com.[SEGS_ATTRIB3]=sd.[SEGMENT_ATTRIBUTE3]
				  ,com.[SEGS_ATTRIB4]=sd.[SEGMENT_ATTRIBUTE4]
				  ,com.[SEGS_ATTRIB5]=sd.[SEGMENT_ATTRIBUTE5]
				  ,com.[SEGS_ATTRIB6]=sd.[SEGMENT_ATTRIBUTE6]
				  ,com.[SEGS_ATTRIB7]=sd.[SEGMENT_ATTRIBUTE7]
				  ,com.[SEGS_ATTRIB8]=sd.[SEGMENT_ATTRIBUTE8]
				  ,com.[SEGS_ATTRIB9]=sd.[SEGMENT_ATTRIBUTE9]
				  ,com.[SEGS_ATTRIB10]=sd.[SEGMENT_ATTRIBUTE10]
				  ,com.[SEGS_ATTRIB11]=sd.[SEGMENT_ATTRIBUTE11]
				  ,com.[SEGS_ATTRIB12]=sd.[SEGMENT_ATTRIBUTE12]
				  ,com.[SEGS_ATTRIB13]=sd.[SEGMENT_ATTRIBUTE13]
				  ,com.[SEGS_ATTRIB14]=sd.[SEGMENT_ATTRIBUTE14]
				  ,com.[SEGS_ATTRIB15]=sd.[SEGMENT_ATTRIBUTE15]
				  ,com.[SEGS_ATTRIB16]=sd.[SEGMENT_ATTRIBUTE16]
				  ,com.[SEGS_ATTRIB17]=sd.[SEGMENT_ATTRIBUTE17]
				  ,com.[SEGS_ATTRIB18]=sd.[SEGMENT_ATTRIBUTE18]
				  ,com.[SEGS_ATTRIB19]=sd.[SEGMENT_ATTRIBUTE19]
				  ,com.[SEGS_ATTRIB20]=sd.[SEGMENT_ATTRIBUTE20]
				  ,com.[SEGS_ATTRIB21]=sd.[SEGMENT_ATTRIBUTE21]
				  ,com.[SEGS_ATTRIB22]=sd.[SEGMENT_ATTRIBUTE22]
				  ,com.[SEGS_ATTRIB23]=sd.[SEGMENT_ATTRIBUTE23]
				  ,com.[SEGS_ATTRIB24]=sd.[SEGMENT_ATTRIBUTE24]
				  ,com.[SEGS_ATTRIB25]=sd.[SEGMENT_ATTRIBUTE25]
				  ,com.[SEGS_ATTRIB26]=sd.[SEGMENT_ATTRIBUTE26]
				  ,com.[SEGS_ATTRIB27]=sd.[SEGMENT_ATTRIBUTE27]
				  ,com.[SEGS_ATTRIB28]=sd.[SEGMENT_ATTRIBUTE28]
				  ,com.[SEGS_ATTRIB29]=sd.[SEGMENT_ATTRIBUTE29]
				  ,com.[SEGS_ATTRIB30]=sd.[SEGMENT_ATTRIBUTE30]
				  ,com.[SEGS_ATTRIB31]=sd.[SEGMENT_ATTRIBUTE31]
				  ,com.[SEGS_ATTRIB32]=sd.[SEGMENT_ATTRIBUTE32]
				  ,com.[SEGS_ATTRIB33]=sd.[SEGMENT_ATTRIBUTE33]
				  ,com.[SEGS_ATTRIB34]=sd.[SEGMENT_ATTRIBUTE34]
				  ,com.[SEGS_ATTRIB35]=sd.[SEGMENT_ATTRIBUTE35]
				  ,com.[SEGS_ATTRIB36]=sd.[SEGMENT_ATTRIBUTE36]
				  ,com.[SEGS_ATTRIB37]=sd.[SEGMENT_ATTRIBUTE37]
				  ,com.[SEGS_ATTRIB38]=sd.[SEGMENT_ATTRIBUTE38]
				  ,com.[SEGS_ATTRIB39]=sd.[SEGMENT_ATTRIBUTE39]
				  ,com.[SEGS_ATTRIB40]=sd.[SEGMENT_ATTRIBUTE40]
				  ,com.[SEGS_ATTRIB41]=sd.[SEGMENT_ATTRIBUTE41]
				  ,com.[SEGS_ATTRIB42]=sd.[SEGMENT_ATTRIBUTE42]
				  ,com.[REF1]=sd.[REFERENCE1]
				  ,com.[REF2]=sd.[REFERENCE2]
				  ,com.[REF3]=sd.[REFERENCE3]
				  ,com.[REF4]=sd.[REFERENCE4]
				  ,com.[REF5]=sd.[REFERENCE5]
				  ,com.[JGZZ_RECON_FLG]=sd.[JGZZ_RECON_FLAG]
				  ,com.[JGZZ_RECON_CTX]=sd.[JGZZ_RECON_CONTEXT]
				  ,com.[PRESV_FLG]=sd.[PRESERVE_FLAG]
				  ,com.[REFH_FLG]=sd.[REFRESH_FLAG]
				  ,com.[IGI_BAL_BDG_FLG]=sd.[IGI_BALANCED_BUDGET_FLAG]
				  ,com.[CO_COST_CNTR_ORG_ID]=sd.[COMPANY_COST_CENTER_ORG_ID]
				  ,com.[RV_ID]=sd.[REVALUATION_ID]
				  ,com.[LDGR_SEGS]=sd.[LEDGER_SEGMENT]
				  ,com.[LDGR_TYE_COD]=sd.[LEDGER_TYPE_CODE]
				  ,com.[ALTR_COD_COMBN_ID]=sd.[ALTERNATE_CODE_COMBINATION_ID]
				  ,com.[DW_MOD_TS]=GETDATE()
				  ,com.[DW_MOD_USR]=USER_NAME()
  
  				  WHEN NOT MATCHED
		THEN
		INSERT (   [CODE_COMBN_ID]
					  ,[LAST_UPD_DT]
					  ,[LAST_UPD_BY]
					  ,[CHART_OF_ACCTS_ID]
					  ,[DETL_POST_ALLOW_FLAG]
					  ,[DETL_BDG_ALLOWED_FLAG]
					  ,[ACCT_TYPE]
					  ,[ENBL_FLAG]
					  ,[SUMM_FLAG]
					  ,[SEGS1]
					  ,[SEGS2]
					  ,[SEGS3]
					  ,[SEGS4]
					  ,[SEGS5]
					  ,[SEGS6]
					  ,[SEGS7]
					  ,[SEGS8]
					  ,[SEGS9]
					  ,[SEGS10]
					  ,[SEGS11]
					  ,[SEGS12]
					  ,[SEGS13]
					  ,[SEGS14]
					  ,[SEGS15]
					  ,[SEGS16]
					  ,[SEGS17]
					  ,[SEGS18]
					  ,[SEGS19]
					  ,[SEGS20]
					  ,[SEGS21]
					  ,[SEGS22]
					  ,[SEGS23]
					  ,[SEGS24]
					  ,[SEGS25]
					  ,[SEGS26]
					  ,[SEGS27]
					  ,[SEGS28]
					  ,[SEGS29]
					  ,[SEGS30]
					  ,[DESC]
					  ,[TMPL_ID]
					  ,[ALLOC_CRE_FLG]
					  ,[ST_DT_ACT]
					  ,[EN_DT_ACT]
					  ,[ATTRIB1]
					  ,[ATTRIB2]
					  ,[ATTRIB3]
					  ,[ATTRIB4]
					  ,[ATTRIB5]
					  ,[ATTRIB6]
					  ,[ATTRIB7]
					  ,[ATTRIB8]
					  ,[ATTRIB9]
					  ,[ATTRIB10]
					  ,[CTX]
					  ,[SEGS_ATTRIB1]
					  ,[SEGS_ATTRIB2]
					  ,[SEGS_ATTRIB3]
					  ,[SEGS_ATTRIB4]
					  ,[SEGS_ATTRIB5]
					  ,[SEGS_ATTRIB6]
					  ,[SEGS_ATTRIB7]
					  ,[SEGS_ATTRIB8]
					  ,[SEGS_ATTRIB9]
					  ,[SEGS_ATTRIB10]
					  ,[SEGS_ATTRIB11]
					  ,[SEGS_ATTRIB12]
					  ,[SEGS_ATTRIB13]
					  ,[SEGS_ATTRIB14]
					  ,[SEGS_ATTRIB15]
					  ,[SEGS_ATTRIB16]
					  ,[SEGS_ATTRIB17]
					  ,[SEGS_ATTRIB18]
					  ,[SEGS_ATTRIB19]
					  ,[SEGS_ATTRIB20]
					  ,[SEGS_ATTRIB21]
					  ,[SEGS_ATTRIB22]
					  ,[SEGS_ATTRIB23]
					  ,[SEGS_ATTRIB24]
					  ,[SEGS_ATTRIB25]
					  ,[SEGS_ATTRIB26]
					  ,[SEGS_ATTRIB27]
					  ,[SEGS_ATTRIB28]
					  ,[SEGS_ATTRIB29]
					  ,[SEGS_ATTRIB30]
					  ,[SEGS_ATTRIB31]
					  ,[SEGS_ATTRIB32]
					  ,[SEGS_ATTRIB33]
					  ,[SEGS_ATTRIB34]
					  ,[SEGS_ATTRIB35]
					  ,[SEGS_ATTRIB36]
					  ,[SEGS_ATTRIB37]
					  ,[SEGS_ATTRIB38]
					  ,[SEGS_ATTRIB39]
					  ,[SEGS_ATTRIB40]
					  ,[SEGS_ATTRIB41]
					  ,[SEGS_ATTRIB42]
					  ,[REF1]
					  ,[REF2]
					  ,[REF3]
					  ,[REF4]
					  ,[REF5]
					  ,[JGZZ_RECON_FLG]
					  ,[JGZZ_RECON_CTX]
					  ,[PRESV_FLG]
					  ,[REFH_FLG]
					  ,[IGI_BAL_BDG_FLG]
					  ,[CO_COST_CNTR_ORG_ID]
					  ,[RV_ID]
					  ,[LDGR_SEGS]
					  ,[LDGR_TYE_COD]
					  ,[ALTR_COD_COMBN_ID]
					  ,[DW_CRE_TS]
					  ,[DW_CRE_USR]
     							 )
				  VALUES(   
				               sd.[CODE_COMBINATION_ID]
							  ,sd.[LAST_UPDATE_DATE]
							  ,sd.[LAST_UPDATED_BY]
							  ,sd.[CHART_OF_ACCOUNTS_ID]
							  ,sd.[DETAIL_POSTING_ALLOWED_FLAG]
							  ,sd.[DETAIL_BUDGETING_ALLOWED_FLAG]
							  ,sd.[ACCOUNT_TYPE]
							  ,sd.[ENABLED_FLAG]
							  ,sd.[SUMMARY_FLAG]
							  ,sd.[SEGMENT1]
							  ,sd.[SEGMENT2]
							  ,sd.[SEGMENT3]
							  ,sd.[SEGMENT4]
							  ,sd.[SEGMENT5]
							  ,sd.[SEGMENT6]
							  ,sd.[SEGMENT7]
							  ,sd.[SEGMENT8]
							  ,sd.[SEGMENT9]
							  ,sd.[SEGMENT10]
							  ,sd.[SEGMENT11]
							  ,sd.[SEGMENT12]
							  ,sd.[SEGMENT13]
							  ,sd.[SEGMENT14]
							  ,sd.[SEGMENT15]
							  ,sd.[SEGMENT16]
							  ,sd.[SEGMENT17]
							  ,sd.[SEGMENT18]
							  ,sd.[SEGMENT19]
							  ,sd.[SEGMENT20]
							  ,sd.[SEGMENT21]
							  ,sd.[SEGMENT22]
							  ,sd.[SEGMENT23]
							  ,sd.[SEGMENT24]
							  ,sd.[SEGMENT25]
							  ,sd.[SEGMENT26]
							  ,sd.[SEGMENT27]
							  ,sd.[SEGMENT28]
							  ,sd.[SEGMENT29]
							  ,sd.[SEGMENT30]
							  ,sd.[DESCRIPTION]
							  ,sd.[TEMPLATE_ID]
							  ,sd.[ALLOCATION_CREATE_FLAG]
							  ,sd.[START_DATE_ACTIVE]
							  ,sd.[END_DATE_ACTIVE]
							  ,sd.[ATTRIBUTE1]
							  ,sd.[ATTRIBUTE2]
							  ,sd.[ATTRIBUTE3]
							  ,sd.[ATTRIBUTE4]
							  ,sd.[ATTRIBUTE5]
							  ,sd.[ATTRIBUTE6]
							  ,sd.[ATTRIBUTE7]
							  ,sd.[ATTRIBUTE8]
							  ,sd.[ATTRIBUTE9]
							  ,sd.[ATTRIBUTE10]
							  ,sd.[CONTEXT]
							  ,sd.[SEGMENT_ATTRIBUTE1]
							  ,sd.[SEGMENT_ATTRIBUTE2]
							  ,sd.[SEGMENT_ATTRIBUTE3]
							  ,sd.[SEGMENT_ATTRIBUTE4]
							  ,sd.[SEGMENT_ATTRIBUTE5]
							  ,sd.[SEGMENT_ATTRIBUTE6]
							  ,sd.[SEGMENT_ATTRIBUTE7]
							  ,sd.[SEGMENT_ATTRIBUTE8]
							  ,sd.[SEGMENT_ATTRIBUTE9]
							  ,sd.[SEGMENT_ATTRIBUTE10]
							  ,sd.[SEGMENT_ATTRIBUTE11]
							  ,sd.[SEGMENT_ATTRIBUTE12]
							  ,sd.[SEGMENT_ATTRIBUTE13]
							  ,sd.[SEGMENT_ATTRIBUTE14]
							  ,sd.[SEGMENT_ATTRIBUTE15]
							  ,sd.[SEGMENT_ATTRIBUTE16]
							  ,sd.[SEGMENT_ATTRIBUTE17]
							  ,sd.[SEGMENT_ATTRIBUTE18]
							  ,sd.[SEGMENT_ATTRIBUTE19]
							  ,sd.[SEGMENT_ATTRIBUTE20]
							  ,sd.[SEGMENT_ATTRIBUTE21]
							  ,sd.[SEGMENT_ATTRIBUTE22]
							  ,sd.[SEGMENT_ATTRIBUTE23]
							  ,sd.[SEGMENT_ATTRIBUTE24]
							  ,sd.[SEGMENT_ATTRIBUTE25]
							  ,sd.[SEGMENT_ATTRIBUTE26]
							  ,sd.[SEGMENT_ATTRIBUTE27]
							  ,sd.[SEGMENT_ATTRIBUTE28]
							  ,sd.[SEGMENT_ATTRIBUTE29]
							  ,sd.[SEGMENT_ATTRIBUTE30]
							  ,sd.[SEGMENT_ATTRIBUTE31]
							  ,sd.[SEGMENT_ATTRIBUTE32]
							  ,sd.[SEGMENT_ATTRIBUTE33]
							  ,sd.[SEGMENT_ATTRIBUTE34]
							  ,sd.[SEGMENT_ATTRIBUTE35]
							  ,sd.[SEGMENT_ATTRIBUTE36]
							  ,sd.[SEGMENT_ATTRIBUTE37]
							  ,sd.[SEGMENT_ATTRIBUTE38]
							  ,sd.[SEGMENT_ATTRIBUTE39]
							  ,sd.[SEGMENT_ATTRIBUTE40]
							  ,sd.[SEGMENT_ATTRIBUTE41]
							  ,sd.[SEGMENT_ATTRIBUTE42]
							  ,sd.[REFERENCE1]
							  ,sd.[REFERENCE2]
							  ,sd.[REFERENCE3]
							  ,sd.[REFERENCE4]
							  ,sd.[REFERENCE5]
							  ,sd.[JGZZ_RECON_FLAG]
							  ,sd.[JGZZ_RECON_CONTEXT]
							  ,sd.[PRESERVE_FLAG]
							  ,sd.[REFRESH_FLAG]
							  ,sd.[IGI_BALANCED_BUDGET_FLAG]
							  ,sd.[COMPANY_COST_CENTER_ORG_ID]
							  ,sd.[REVALUATION_ID]
							  ,sd.[LEDGER_SEGMENT]
							  ,sd.[LEDGER_TYPE_CODE]
							  ,sd.[ALTERNATE_CODE_COMBINATION_ID]
  												  ,GETDATE()
						  ,USER_NAME()
						  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_COMBN', @Rows_Insrt, @Rows_Updt, null,null, 'Y';


END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_JE_BATCH]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_JE_BATCH] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_BATCH',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_JE_BATCH] AS bch
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_JE_BATCHES]
			) AS sd
		ON bch.[JE_BATCH_ID] = sd.[JE_BATCH_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET  
				bch.[LST_UPD_DT]=sd.[LAST_UPDATE_DATE]
				,bch.[LST_UPD_BY]=sd.[LAST_UPDATED_BY]
				,bch.[SET_OF_BOOKS_ID_11I]=sd.[SET_OF_BOOKS_ID_11I]
				,bch.[NM]=sd.[NAME]
				,bch.[STATS]=sd.[STATUS]
				,bch.[STATS_VER]=sd.[STATUS_VERIFIED]
				,bch.[ACTL_FLG]=sd.[ACTUAL_FLAG]
				,bch.[DEF_EFF_DT]=sd.[DEFAULT_EFFECTIVE_DATE]
				,bch.[AVG_JORNL_FLG]=sd.[AVERAGE_JOURNAL_FLAG]
				,bch.[BDG_CNTRL_STATS]=sd.[BUDGETARY_CONTROL_STATUS]
				,bch.[CRE_DT]=sd.[CREATION_DATE]
				,bch.[CREA_BY]=sd.[CREATED_BY]
				,bch.[LST_UPD_LGN]=sd.[LAST_UPDATE_LOGIN]
				,bch.[STATS_RESET_FLG]=sd.[STATUS_RESET_FLAG]
				,bch.[DEF_PD_NM]=sd.[DEFAULT_PERIOD_NAME]
				,bch.[UNIQE_DT]=sd.[UNIQUE_DATE]
				,bch.[EARL_POST_DT]=sd.[EARLIEST_POSTABLE_DATE]
				,bch.[POST_DT]=sd.[POSTED_DATE]
				,bch.[DT_CRE]=sd.[DATE_CREATED]
				,bch.[DESC]=sd.[DESCRIPTION]
				,bch.[CNTRL_TOT]=sd.[CONTROL_TOTAL]
				,bch.[RUN_TOT_DR]=sd.[RUNNING_TOTAL_DR]
				,bch.[RUN_TOT_CR]=sd.[RUNNING_TOTAL_CR]
				,bch.[RUN_TOT_ACCT_DR]=sd.[RUNNING_TOTAL_ACCOUNTED_DR]
				,bch.[RUN_TOT_ACCT_CR]=sd.[RUNNING_TOTAL_ACCOUNTED_CR]
				,bch.[ATTRIB1]=sd.[ATTRIBUTE1]
				,bch.[ATTRIB2]=sd.[ATTRIBUTE2]
				,bch.[ATTRIB3]=sd.[ATTRIBUTE3]
				,bch.[ATTRIB4]=sd.[ATTRIBUTE4]
				,bch.[ATTRIB5]=sd.[ATTRIBUTE5]
				,bch.[ATTRIB6]=sd.[ATTRIBUTE6]
				,bch.[ATTRIB7]=sd.[ATTRIBUTE7]
				,bch.[ATTRIB8]=sd.[ATTRIBUTE8]
				,bch.[ATTRIB9]=sd.[ATTRIBUTE9]
				,bch.[ATTRIB10]=sd.[ATTRIBUTE10]
				,bch.[CTX]=sd.[CONTEXT]
				,bch.[PACK_ID]=sd.[PACKET_ID]
				,bch.[USSGL_TRANS_COD]=sd.[USSGL_TRANSACTION_CODE]
				,bch.[CXT2]=sd.[CONTEXT2]
				,bch.[POST_RUN_ID]=sd.[POSTING_RUN_ID]
				,bch.[REQ_ID]=sd.[REQUEST_ID]
				,bch.[UNRESER_PACK_ID]=sd.[UNRESERVATION_PACKET_ID]
				,bch.[ORG_ID]=sd.[ORG_ID]
				,bch.[APPROV_STATS_COD]=sd.[APPROVAL_STATUS_CODE]
				,bch.[PAR_JE_BATCH_ID]=sd.[PARENT_JE_BATCH_ID]
				,bch.[POST_BY]=sd.[POSTED_BY]
				,bch.[CHART_OF_ACCT_ID]=sd.[CHART_OF_ACCOUNTS_ID]
				,bch.[PD_SET_NM]=sd.[PERIOD_SET_NAME]
				,bch.[ACCT_PD_TYPE]=sd.[ACCOUNTED_PERIOD_TYPE]
				,bch.[GRP_ID]=sd.[GROUP_ID]
				,bch.[APPROV_EMP_ID]=sd.[APPROVER_EMPLOYEE_ID]
				,bch.[GOBL_ATTRIB_CATEG]=sd.[GLOBAL_ATTRIBUTE_CATEGORY]
				,bch.[GOBL_ATTRIB1]=sd.[GLOBAL_ATTRIBUTE1]
				,bch.[GOBL_ATTRIB2]=sd.[GLOBAL_ATTRIBUTE2]
				,bch.[GOBL_ATTRIB3]=sd.[GLOBAL_ATTRIBUTE3]
				,bch.[GOBL_ATTRIB4]=sd.[GLOBAL_ATTRIBUTE4]
				,bch.[GOBL_ATTRIB5]=sd.[GLOBAL_ATTRIBUTE5]
				,bch.[GOBL_ATTRIB6]=sd.[GLOBAL_ATTRIBUTE6]
				,bch.[GOBL_ATTRIB7]=sd.[GLOBAL_ATTRIBUTE7]
				,bch.[GOBL_ATTRIB8]=sd.[GLOBAL_ATTRIBUTE8]
				,bch.[GOBL_ATTRIB9]=sd.[GLOBAL_ATTRIBUTE9]
				,bch.[GOBL_ATTRIB10]=sd.[GLOBAL_ATTRIBUTE10]
				,bch.[GOBL_ATTRIB11]=sd.[GLOBAL_ATTRIBUTE11]
				,bch.[GOBL_ATTRIB12]=sd.[GLOBAL_ATTRIBUTE12]
				,bch.[GOBL_ATTRIB13]=sd.[GLOBAL_ATTRIBUTE13]
				,bch.[GOBL_ATTRIB14]=sd.[GLOBAL_ATTRIBUTE14]
				,bch.[GOBL_ATTRIB15]=sd.[GLOBAL_ATTRIBUTE15]
				,bch.[GOBL_ATTRIB16]=sd.[GLOBAL_ATTRIBUTE16]
				,bch.[GOBL_ATTRIB17]=sd.[GLOBAL_ATTRIBUTE17]
				,bch.[GOBL_ATTRIB18]=sd.[GLOBAL_ATTRIBUTE18]
				,bch.[GOBL_ATTRIB19]=sd.[GLOBAL_ATTRIBUTE19]
				,bch.[GOBL_ATTRIB20]=sd.[GLOBAL_ATTRIBUTE20]
  				,bch.[DW_MOD_TS]=GETDATE()
				,bch.[DW_MOD_USR]=USER_NAME()
				
      WHEN NOT MATCHED
	THEN
		INSERT (
		      [JE_BATCH_ID]
		     ,[LST_UPD_DT]
		     ,[LST_UPD_BY]
		     ,[SET_OF_BOOKS_ID_11I]
		     ,[NM]
		     ,[STATS]
		     ,[STATS_VER]
		     ,[ACTL_FLG]
		     ,[DEF_EFF_DT]
		     ,[AVG_JORNL_FLG]
		     ,[BDG_CNTRL_STATS]
		     ,[CRE_DT]
		     ,[CREA_BY]
		     ,[LST_UPD_LGN]
		     ,[STATS_RESET_FLG]
		     ,[DEF_PD_NM]
		     ,[UNIQE_DT]
		     ,[EARL_POST_DT]
		     ,[POST_DT]
		     ,[DT_CRE]
		     ,[DESC]
		     ,[CNTRL_TOT]
		     ,[RUN_TOT_DR]
		     ,[RUN_TOT_CR]
		     ,[RUN_TOT_ACCT_DR]
		     ,[RUN_TOT_ACCT_CR]
		     ,[ATTRIB1]
		     ,[ATTRIB2]
		     ,[ATTRIB3]
		     ,[ATTRIB4]
		     ,[ATTRIB5]
		     ,[ATTRIB6]
		     ,[ATTRIB7]
		     ,[ATTRIB8]
		     ,[ATTRIB9]
		     ,[ATTRIB10]
		     ,[CTX]
		     ,[PACK_ID]
		     ,[USSGL_TRANS_COD]
		     ,[CXT2]
		     ,[POST_RUN_ID]
		     ,[REQ_ID]
		     ,[UNRESER_PACK_ID]
		     ,[ORG_ID]
		     ,[APPROV_STATS_COD]
		     ,[PAR_JE_BATCH_ID]
		     ,[POST_BY]
		     ,[CHART_OF_ACCT_ID]
		     ,[PD_SET_NM]
		     ,[ACCT_PD_TYPE]
		     ,[GRP_ID]
		     ,[APPROV_EMP_ID]
		     ,[GOBL_ATTRIB_CATEG]
		     ,[GOBL_ATTRIB1]
		     ,[GOBL_ATTRIB2]
		     ,[GOBL_ATTRIB3]
		     ,[GOBL_ATTRIB4]
		     ,[GOBL_ATTRIB5]
		     ,[GOBL_ATTRIB6]
		     ,[GOBL_ATTRIB7]
		     ,[GOBL_ATTRIB8]
		     ,[GOBL_ATTRIB9]
		     ,[GOBL_ATTRIB10]
		     ,[GOBL_ATTRIB11]
		     ,[GOBL_ATTRIB12]
		     ,[GOBL_ATTRIB13]
		     ,[GOBL_ATTRIB14]
		     ,[GOBL_ATTRIB15]
		     ,[GOBL_ATTRIB16]
		     ,[GOBL_ATTRIB17]
		     ,[GOBL_ATTRIB18]
		     ,[GOBL_ATTRIB19]
		     ,[GOBL_ATTRIB20]
		     ,[DW_CRE_TS]
		     ,[DW_CRE_USR]
			 )
		VALUES(   
		  sd.[JE_BATCH_ID]
		  ,sd.[LAST_UPDATE_DATE]
		  ,sd.[LAST_UPDATED_BY]
		  ,sd.[SET_OF_BOOKS_ID_11I]
		  ,sd.[NAME]
		  ,sd.[STATUS]
		  ,sd.[STATUS_VERIFIED]
		  ,sd.[ACTUAL_FLAG]
		  ,sd.[DEFAULT_EFFECTIVE_DATE]
		  ,sd.[AVERAGE_JOURNAL_FLAG]
		  ,sd.[BUDGETARY_CONTROL_STATUS]
		  ,sd.[CREATION_DATE]
		  ,sd.[CREATED_BY]
		  ,sd.[LAST_UPDATE_LOGIN]
		  ,sd.[STATUS_RESET_FLAG]
		  ,sd.[DEFAULT_PERIOD_NAME]
		  ,sd.[UNIQUE_DATE]
		  ,sd.[EARLIEST_POSTABLE_DATE]
		  ,sd.[POSTED_DATE]
		  ,sd.[DATE_CREATED]
		  ,sd.[DESCRIPTION]
		  ,sd.[CONTROL_TOTAL]
		  ,sd.[RUNNING_TOTAL_DR]
		  ,sd.[RUNNING_TOTAL_CR]
		  ,sd.[RUNNING_TOTAL_ACCOUNTED_DR]
		  ,sd.[RUNNING_TOTAL_ACCOUNTED_CR]
		  ,sd.[ATTRIBUTE1]
		  ,sd.[ATTRIBUTE2]
		  ,sd.[ATTRIBUTE3]
		  ,sd.[ATTRIBUTE4]
		  ,sd.[ATTRIBUTE5]
		  ,sd.[ATTRIBUTE6]
		  ,sd.[ATTRIBUTE7]
		  ,sd.[ATTRIBUTE8]
		  ,sd.[ATTRIBUTE9]
		  ,sd.[ATTRIBUTE10]
		  ,sd.[CONTEXT]
		  ,sd.[PACKET_ID]
		  ,sd.[USSGL_TRANSACTION_CODE]
		  ,sd.[CONTEXT2]
		  ,sd.[POSTING_RUN_ID]
		  ,sd.[REQUEST_ID]
		  ,sd.[UNRESERVATION_PACKET_ID]
		  ,sd.[ORG_ID]
		  ,sd.[APPROVAL_STATUS_CODE]
		  ,sd.[PARENT_JE_BATCH_ID]
		  ,sd.[POSTED_BY]
		  ,sd.[CHART_OF_ACCOUNTS_ID]
		  ,sd.[PERIOD_SET_NAME]
		  ,sd.[ACCOUNTED_PERIOD_TYPE]
		  ,sd.[GROUP_ID]
		  ,sd.[APPROVER_EMPLOYEE_ID]
		  ,sd.[GLOBAL_ATTRIBUTE_CATEGORY]
		  ,sd.[GLOBAL_ATTRIBUTE1]
		  ,sd.[GLOBAL_ATTRIBUTE2]
		  ,sd.[GLOBAL_ATTRIBUTE3]
		  ,sd.[GLOBAL_ATTRIBUTE4]
		  ,sd.[GLOBAL_ATTRIBUTE5]
		  ,sd.[GLOBAL_ATTRIBUTE6]
		  ,sd.[GLOBAL_ATTRIBUTE7]
		  ,sd.[GLOBAL_ATTRIBUTE8]
		  ,sd.[GLOBAL_ATTRIBUTE9]
		  ,sd.[GLOBAL_ATTRIBUTE10]
		  ,sd.[GLOBAL_ATTRIBUTE11]
		  ,sd.[GLOBAL_ATTRIBUTE12]
		  ,sd.[GLOBAL_ATTRIBUTE13]
		  ,sd.[GLOBAL_ATTRIBUTE14]
		  ,sd.[GLOBAL_ATTRIBUTE15]
		  ,sd.[GLOBAL_ATTRIBUTE16]
		  ,sd.[GLOBAL_ATTRIBUTE17]
		  ,sd.[GLOBAL_ATTRIBUTE18]
		  ,sd.[GLOBAL_ATTRIBUTE19]
		  ,sd.[GLOBAL_ATTRIBUTE20]
		  ,GETDATE()
		  ,USER_NAME()
		  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_BATCH', @Rows_Insrt, @Rows_Updt, null,null, 'Y';


END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_JE_BATCHES]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_JE_BATCHES] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Sched] 'Transaction Data',@GETDATE,NULL,NULL,NULL,NULL,NULL ;
	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_BATCH',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_JE_BATCHES] AS bch
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_JE_BATCHES]
			) AS sd
		ON bch.[JE_BATCH_ID] = sd.[JE_BATCH_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET  bch.[LAST_UPDATE_DATE]=sd.[LAST_UPDATE_DATE]
					  ,bch.[LAST_UPDATED_BY]=sd.[LAST_UPDATED_BY]
					  ,bch.[SET_OF_BOOKS_ID_11I]=sd.[SET_OF_BOOKS_ID_11I]
					  ,bch.[NAME]=sd.[NAME]
					  ,bch.[STATUS]=sd.[STATUS]
					  ,bch.[STATUS_VERIFIED]=sd.[STATUS_VERIFIED]
					  ,bch.[ACTUAL_FLAG]=sd.[ACTUAL_FLAG]
					  ,bch.[DEFAULT_EFFECTIVE_DATE]=sd.[DEFAULT_EFFECTIVE_DATE]
					  ,bch.[AVERAGE_JOURNAL_FLAG]=sd.[AVERAGE_JOURNAL_FLAG]
					  ,bch.[BUDGETARY_CONTROL_STATUS]=sd.[BUDGETARY_CONTROL_STATUS]
					  ,bch.[CREATION_DATE]=sd.[CREATION_DATE]
					  ,bch.[CREATED_BY]=sd.[CREATED_BY]
					  ,bch.[LAST_UPDATE_LOGIN]=sd.[LAST_UPDATE_LOGIN]
					  ,bch.[STATUS_RESET_FLAG]=sd.[STATUS_RESET_FLAG]
					  ,bch.[DEFAULT_PERIOD_NAME]=sd.[DEFAULT_PERIOD_NAME]
					  ,bch.[UNIQUE_DATE]=sd.[UNIQUE_DATE]
					  ,bch.[EARLIEST_POSTABLE_DATE]=sd.[EARLIEST_POSTABLE_DATE]
					  ,bch.[POSTED_DATE]=sd.[POSTED_DATE]
					  ,bch.[DATE_CREATED]=sd.[DATE_CREATED]
					  ,bch.[DESCRIPTION]=sd.[DESCRIPTION]
					  ,bch.[CONTROL_TOTAL]=sd.[CONTROL_TOTAL]
					  ,bch.[RUNNING_TOTAL_DR]=sd.[RUNNING_TOTAL_DR]
					  ,bch.[RUNNING_TOTAL_CR]=sd.[RUNNING_TOTAL_CR]
					  ,bch.[RUNNING_TOTAL_ACCOUNTED_DR]=sd.[RUNNING_TOTAL_ACCOUNTED_DR]
					  ,bch.[RUNNING_TOTAL_ACCOUNTED_CR]=sd.[RUNNING_TOTAL_ACCOUNTED_CR]
					  ,bch.[ATTRIBUTE1]=sd.[ATTRIBUTE1]
					  ,bch.[ATTRIBUTE2]=sd.[ATTRIBUTE2]
					  ,bch.[ATTRIBUTE3]=sd.[ATTRIBUTE3]
					  ,bch.[ATTRIBUTE4]=sd.[ATTRIBUTE4]
					  ,bch.[ATTRIBUTE5]=sd.[ATTRIBUTE5]
					  ,bch.[ATTRIBUTE6]=sd.[ATTRIBUTE6]
					  ,bch.[ATTRIBUTE7]=sd.[ATTRIBUTE7]
					  ,bch.[ATTRIBUTE8]=sd.[ATTRIBUTE8]
					  ,bch.[ATTRIBUTE9]=sd.[ATTRIBUTE9]
					  ,bch.[ATTRIBUTE10]=sd.[ATTRIBUTE10]
					  ,bch.[CONTEXT]=sd.[CONTEXT]
					  ,bch.[PACKET_ID]=sd.[PACKET_ID]
					  ,bch.[USSGL_TRANSACTION_CODE]=sd.[USSGL_TRANSACTION_CODE]
					  ,bch.[CONTEXT2]=sd.[CONTEXT2]
					  ,bch.[POSTING_RUN_ID]=sd.[POSTING_RUN_ID]
					  ,bch.[REQUEST_ID]=sd.[REQUEST_ID]
					  ,bch.[UNRESERVATION_PACKET_ID]=sd.[UNRESERVATION_PACKET_ID]
					  ,bch.[ORG_ID]=sd.[ORG_ID]
					  ,bch.[APPROVAL_STATUS_CODE]=sd.[APPROVAL_STATUS_CODE]
					  ,bch.[PARENT_JE_BATCH_ID]=sd.[PARENT_JE_BATCH_ID]
					  ,bch.[POSTED_BY]=sd.[POSTED_BY]
					  ,bch.[CHART_OF_ACCOUNTS_ID]=sd.[CHART_OF_ACCOUNTS_ID]
					  ,bch.[PERIOD_SET_NAME]=sd.[PERIOD_SET_NAME]
					  ,bch.[ACCOUNTED_PERIOD_TYPE]=sd.[ACCOUNTED_PERIOD_TYPE]
					  ,bch.[GROUP_ID]=sd.[GROUP_ID]
					  ,bch.[APPROVER_EMPLOYEE_ID]=sd.[APPROVER_EMPLOYEE_ID]
					  ,bch.[GLOBAL_ATTRIBUTE_CATEGORY]=sd.[GLOBAL_ATTRIBUTE_CATEGORY]
					  ,bch.[GLOBAL_ATTRIBUTE1]=sd.[GLOBAL_ATTRIBUTE1]
					  ,bch.[GLOBAL_ATTRIBUTE2]=sd.[GLOBAL_ATTRIBUTE2]
					  ,bch.[GLOBAL_ATTRIBUTE3]=sd.[GLOBAL_ATTRIBUTE3]
					  ,bch.[GLOBAL_ATTRIBUTE4]=sd.[GLOBAL_ATTRIBUTE4]
					  ,bch.[GLOBAL_ATTRIBUTE5]=sd.[GLOBAL_ATTRIBUTE5]
					  ,bch.[GLOBAL_ATTRIBUTE6]=sd.[GLOBAL_ATTRIBUTE6]
					  ,bch.[GLOBAL_ATTRIBUTE7]=sd.[GLOBAL_ATTRIBUTE7]
					  ,bch.[GLOBAL_ATTRIBUTE8]=sd.[GLOBAL_ATTRIBUTE8]
					  ,bch.[GLOBAL_ATTRIBUTE9]=sd.[GLOBAL_ATTRIBUTE9]
					  ,bch.[GLOBAL_ATTRIBUTE10]=sd.[GLOBAL_ATTRIBUTE10]
					  ,bch.[GLOBAL_ATTRIBUTE11]=sd.[GLOBAL_ATTRIBUTE11]
					  ,bch.[GLOBAL_ATTRIBUTE12]=sd.[GLOBAL_ATTRIBUTE12]
					  ,bch.[GLOBAL_ATTRIBUTE13]=sd.[GLOBAL_ATTRIBUTE13]
					  ,bch.[GLOBAL_ATTRIBUTE14]=sd.[GLOBAL_ATTRIBUTE14]
					  ,bch.[GLOBAL_ATTRIBUTE15]=sd.[GLOBAL_ATTRIBUTE15]
					  ,bch.[GLOBAL_ATTRIBUTE16]=sd.[GLOBAL_ATTRIBUTE16]
					  ,bch.[GLOBAL_ATTRIBUTE17]=sd.[GLOBAL_ATTRIBUTE17]
					  ,bch.[GLOBAL_ATTRIBUTE18]=sd.[GLOBAL_ATTRIBUTE18]
					  ,bch.[GLOBAL_ATTRIBUTE19]=sd.[GLOBAL_ATTRIBUTE19]
					  ,bch.[GLOBAL_ATTRIBUTE20]=sd.[GLOBAL_ATTRIBUTE20]
   			       	  ,bch.[DW_MOD_TS]=GETDATE()
				      ,bch.[DW_MOD_USR]=USER_NAME()
				
      WHEN NOT MATCHED
	THEN
		INSERT (
				   [JE_BATCH_ID]
				  ,[LAST_UPDATE_DATE]
				  ,[LAST_UPDATED_BY]
				  ,[SET_OF_BOOKS_ID_11I]
				  ,[NAME]
				  ,[STATUS]
				  ,[STATUS_VERIFIED]
				  ,[ACTUAL_FLAG]
				  ,[DEFAULT_EFFECTIVE_DATE]
				  ,[AVERAGE_JOURNAL_FLAG]
				  ,[BUDGETARY_CONTROL_STATUS]
				  ,[CREATION_DATE]
				  ,[CREATED_BY]
				  ,[LAST_UPDATE_LOGIN]
				  ,[STATUS_RESET_FLAG]
				  ,[DEFAULT_PERIOD_NAME]
				  ,[UNIQUE_DATE]
				  ,[EARLIEST_POSTABLE_DATE]
				  ,[POSTED_DATE]
				  ,[DATE_CREATED]
				  ,[DESCRIPTION]
				  ,[CONTROL_TOTAL]
				  ,[RUNNING_TOTAL_DR]
				  ,[RUNNING_TOTAL_CR]
				  ,[RUNNING_TOTAL_ACCOUNTED_DR]
				  ,[RUNNING_TOTAL_ACCOUNTED_CR]
				  ,[ATTRIBUTE1]
				  ,[ATTRIBUTE2]
				  ,[ATTRIBUTE3]
				  ,[ATTRIBUTE4]
				  ,[ATTRIBUTE5]
				  ,[ATTRIBUTE6]
				  ,[ATTRIBUTE7]
				  ,[ATTRIBUTE8]
				  ,[ATTRIBUTE9]
				  ,[ATTRIBUTE10]
				  ,[CONTEXT]
				  ,[PACKET_ID]
				  ,[USSGL_TRANSACTION_CODE]
				  ,[CONTEXT2]
				  ,[POSTING_RUN_ID]
				  ,[REQUEST_ID]
				  ,[UNRESERVATION_PACKET_ID]
				  ,[ORG_ID]
				  ,[APPROVAL_STATUS_CODE]
				  ,[PARENT_JE_BATCH_ID]
				  ,[POSTED_BY]
				  ,[CHART_OF_ACCOUNTS_ID]
				  ,[PERIOD_SET_NAME]
				  ,[ACCOUNTED_PERIOD_TYPE]
				  ,[GROUP_ID]
				  ,[APPROVER_EMPLOYEE_ID]
				  ,[GLOBAL_ATTRIBUTE_CATEGORY]
				  ,[GLOBAL_ATTRIBUTE1]
				  ,[GLOBAL_ATTRIBUTE2]
				  ,[GLOBAL_ATTRIBUTE3]
				  ,[GLOBAL_ATTRIBUTE4]
				  ,[GLOBAL_ATTRIBUTE5]
				  ,[GLOBAL_ATTRIBUTE6]
				  ,[GLOBAL_ATTRIBUTE7]
				  ,[GLOBAL_ATTRIBUTE8]
				  ,[GLOBAL_ATTRIBUTE9]
				  ,[GLOBAL_ATTRIBUTE10]
				  ,[GLOBAL_ATTRIBUTE11]
				  ,[GLOBAL_ATTRIBUTE12]
				  ,[GLOBAL_ATTRIBUTE13]
				  ,[GLOBAL_ATTRIBUTE14]
				  ,[GLOBAL_ATTRIBUTE15]
				  ,[GLOBAL_ATTRIBUTE16]
				  ,[GLOBAL_ATTRIBUTE17]
				  ,[GLOBAL_ATTRIBUTE18]
				  ,[GLOBAL_ATTRIBUTE19]
				  ,[GLOBAL_ATTRIBUTE20]
      		      ,[DW_CRE_TS]
		          ,[DW_CRE_USR]
			 )
		VALUES(   
		  sd.[JE_BATCH_ID]
		  ,sd.[LAST_UPDATE_DATE]
		  ,sd.[LAST_UPDATED_BY]
		  ,sd.[SET_OF_BOOKS_ID_11I]
		  ,sd.[NAME]
		  ,sd.[STATUS]
		  ,sd.[STATUS_VERIFIED]
		  ,sd.[ACTUAL_FLAG]
		  ,sd.[DEFAULT_EFFECTIVE_DATE]
		  ,sd.[AVERAGE_JOURNAL_FLAG]
		  ,sd.[BUDGETARY_CONTROL_STATUS]
		  ,sd.[CREATION_DATE]
		  ,sd.[CREATED_BY]
		  ,sd.[LAST_UPDATE_LOGIN]
		  ,sd.[STATUS_RESET_FLAG]
		  ,sd.[DEFAULT_PERIOD_NAME]
		  ,sd.[UNIQUE_DATE]
		  ,sd.[EARLIEST_POSTABLE_DATE]
		  ,sd.[POSTED_DATE]
		  ,sd.[DATE_CREATED]
		  ,sd.[DESCRIPTION]
		  ,sd.[CONTROL_TOTAL]
		  ,sd.[RUNNING_TOTAL_DR]
		  ,sd.[RUNNING_TOTAL_CR]
		  ,sd.[RUNNING_TOTAL_ACCOUNTED_DR]
		  ,sd.[RUNNING_TOTAL_ACCOUNTED_CR]
		  ,sd.[ATTRIBUTE1]
		  ,sd.[ATTRIBUTE2]
		  ,sd.[ATTRIBUTE3]
		  ,sd.[ATTRIBUTE4]
		  ,sd.[ATTRIBUTE5]
		  ,sd.[ATTRIBUTE6]
		  ,sd.[ATTRIBUTE7]
		  ,sd.[ATTRIBUTE8]
		  ,sd.[ATTRIBUTE9]
		  ,sd.[ATTRIBUTE10]
		  ,sd.[CONTEXT]
		  ,sd.[PACKET_ID]
		  ,sd.[USSGL_TRANSACTION_CODE]
		  ,sd.[CONTEXT2]
		  ,sd.[POSTING_RUN_ID]
		  ,sd.[REQUEST_ID]
		  ,sd.[UNRESERVATION_PACKET_ID]
		  ,sd.[ORG_ID]
		  ,sd.[APPROVAL_STATUS_CODE]
		  ,sd.[PARENT_JE_BATCH_ID]
		  ,sd.[POSTED_BY]
		  ,sd.[CHART_OF_ACCOUNTS_ID]
		  ,sd.[PERIOD_SET_NAME]
		  ,sd.[ACCOUNTED_PERIOD_TYPE]
		  ,sd.[GROUP_ID]
		  ,sd.[APPROVER_EMPLOYEE_ID]
		  ,sd.[GLOBAL_ATTRIBUTE_CATEGORY]
		  ,sd.[GLOBAL_ATTRIBUTE1]
		  ,sd.[GLOBAL_ATTRIBUTE2]
		  ,sd.[GLOBAL_ATTRIBUTE3]
		  ,sd.[GLOBAL_ATTRIBUTE4]
		  ,sd.[GLOBAL_ATTRIBUTE5]
		  ,sd.[GLOBAL_ATTRIBUTE6]
		  ,sd.[GLOBAL_ATTRIBUTE7]
		  ,sd.[GLOBAL_ATTRIBUTE8]
		  ,sd.[GLOBAL_ATTRIBUTE9]
		  ,sd.[GLOBAL_ATTRIBUTE10]
		  ,sd.[GLOBAL_ATTRIBUTE11]
		  ,sd.[GLOBAL_ATTRIBUTE12]
		  ,sd.[GLOBAL_ATTRIBUTE13]
		  ,sd.[GLOBAL_ATTRIBUTE14]
		  ,sd.[GLOBAL_ATTRIBUTE15]
		  ,sd.[GLOBAL_ATTRIBUTE16]
		  ,sd.[GLOBAL_ATTRIBUTE17]
		  ,sd.[GLOBAL_ATTRIBUTE18]
		  ,sd.[GLOBAL_ATTRIBUTE19]
		  ,sd.[GLOBAL_ATTRIBUTE20]
		  ,GETDATE()
		  ,USER_NAME()
		  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_BATCH', @Rows_Insrt, @Rows_Updt, null,null, 'Y';
 EXECUTE KG_Audit. [dbo].[USP_ETL_End_Btch_Sched] 'Transaction Data',NULL,'Y';


END






GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_JE_HDRS]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_JE_HDRS] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

    EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Sched] 'Transaction Data',@GETDATE,NULL,NULL,NULL,NULL,NULL ;
	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_HRDS',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_JE_HEADERS] AS hrd
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_JE_HEADERS]
			) AS sd
		ON hrd.[JE_HEADER_ID] = sd.[JE_HEADER_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET  
      hrd.[LAST_UPDATE_DATE]=sd.[LAST_UPDATE_DATE]
      ,hrd.[LAST_UPDATED_BY]=sd.[LAST_UPDATED_BY]
      ,hrd.[LEDGER_ID]=sd.[LEDGER_ID]
      ,hrd.[JE_CATEGORY]=sd.[JE_CATEGORY]
      ,hrd.[JE_SOURCE]=sd.[JE_SOURCE]
      ,hrd.[PERIOD_NAME]=sd.[PERIOD_NAME]
      ,hrd.[NAME]=sd.[NAME]
      ,hrd.[CURRENCY_CODE]=sd.[CURRENCY_CODE]
      ,hrd.[STATUS]=sd.[STATUS]
      ,hrd.[DATE_CREATED]=sd.[DATE_CREATED]
      ,hrd.[ACCRUAL_REV_FLAG]=sd.[ACCRUAL_REV_FLAG]
      ,hrd.[MULTI_BAL_SEG_FLAG]=sd.[MULTI_BAL_SEG_FLAG]
      ,hrd.[ACTUAL_FLAG]=sd.[ACTUAL_FLAG]
      ,hrd.[DEFAULT_EFFECTIVE_DATE]=sd.[DEFAULT_EFFECTIVE_DATE]
      ,hrd.[CONVERSION_FLAG]=sd.[CONVERSION_FLAG]
      ,hrd.[CREATION_DATE]=sd.[CREATION_DATE]
      ,hrd.[CREATED_BY]=sd.[CREATED_BY]
      ,hrd.[LAST_UPDATE_LOGIN]=sd.[LAST_UPDATE_LOGIN]
      ,hrd.[ENCUMBRANCE_TYPE_ID]=sd.[ENCUMBRANCE_TYPE_ID]
      ,hrd.[BUDGET_VERSION_ID]=sd.[BUDGET_VERSION_ID]
      ,hrd.[BALANCED_JE_FLAG]=sd.[BALANCED_JE_FLAG]
      ,hrd.[BALANCING_SEGMENT_VALUE]=sd.[BALANCING_SEGMENT_VALUE]
      ,hrd.[JE_BATCH_ID]=sd.[JE_BATCH_ID]
      ,hrd.[FROM_RECURRING_HEADER_ID]=sd.[FROM_RECURRING_HEADER_ID]
      ,hrd.[UNIQUE_DATE]=sd.[UNIQUE_DATE]
      ,hrd.[EARLIEST_POSTABLE_DATE]=sd.[EARLIEST_POSTABLE_DATE]
      ,hrd.[POSTED_DATE]=sd.[POSTED_DATE]
      ,hrd.[ACCRUAL_REV_EFFECTIVE_DATE]=sd.[ACCRUAL_REV_EFFECTIVE_DATE]
      ,hrd.[ACCRUAL_REV_PERIOD_NAME]=sd.[ACCRUAL_REV_PERIOD_NAME]
      ,hrd.[ACCRUAL_REV_STATUS]=sd.[ACCRUAL_REV_STATUS]
      ,hrd.[ACCRUAL_REV_JE_HEADER_ID]=sd.[ACCRUAL_REV_JE_HEADER_ID]
      ,hrd.[ACCRUAL_REV_CHANGE_SIGN_FLAG]=sd.[ACCRUAL_REV_CHANGE_SIGN_FLAG]
      ,hrd.[DESCRIPTION]=sd.[DESCRIPTION]
      ,hrd.[CONTROL_TOTAL]=sd.[CONTROL_TOTAL]
      ,hrd.[RUNNING_TOTAL_DR]=sd.[RUNNING_TOTAL_DR]
      ,hrd.[RUNNING_TOTAL_CR]=sd.[RUNNING_TOTAL_CR]
      ,hrd.[RUNNING_TOTAL_ACCOUNTED_DR]=sd.[RUNNING_TOTAL_ACCOUNTED_DR]
      ,hrd.[RUNNING_TOTAL_ACCOUNTED_CR]=sd.[RUNNING_TOTAL_ACCOUNTED_CR]
      ,hrd.[CURRENCY_CONVERSION_RATE]=sd.[CURRENCY_CONVERSION_RATE]
      ,hrd.[CURRENCY_CONVERSION_TYPE]=sd.[CURRENCY_CONVERSION_TYPE]
      ,hrd.[CURRENCY_CONVERSION_DATE]=sd.[CURRENCY_CONVERSION_DATE]
      ,hrd.[EXTERNAL_REFERENCE]=sd.[EXTERNAL_REFERENCE]
      ,hrd.[ATTRIBUTE1]=sd.[ATTRIBUTE1]
      ,hrd.[ATTRIBUTE2]=sd.[ATTRIBUTE2]
      ,hrd.[ATTRIBUTE3]=sd.[ATTRIBUTE3]
      ,hrd.[ATTRIBUTE4]=sd.[ATTRIBUTE4]
      ,hrd.[ATTRIBUTE5]=sd.[ATTRIBUTE5]
      ,hrd.[ATTRIBUTE6]=sd.[ATTRIBUTE6]
      ,hrd.[ATTRIBUTE7]=sd.[ATTRIBUTE7]
      ,hrd.[ATTRIBUTE8]=sd.[ATTRIBUTE8]
      ,hrd.[ATTRIBUTE9]=sd.[ATTRIBUTE9]
      ,hrd.[ATTRIBUTE10]=sd.[ATTRIBUTE10]
      ,hrd.[CONTEXT]=sd.[CONTEXT]
      ,hrd.[GLOBAL_ATTRIBUTE_CATEGORY]=sd.[GLOBAL_ATTRIBUTE_CATEGORY]
      ,hrd.[GLOBAL_ATTRIBUTE1]=sd.[GLOBAL_ATTRIBUTE1]
      ,hrd.[GLOBAL_ATTRIBUTE2]=sd.[GLOBAL_ATTRIBUTE2]
      ,hrd.[GLOBAL_ATTRIBUTE3]=sd.[GLOBAL_ATTRIBUTE3]
      ,hrd.[GLOBAL_ATTRIBUTE4]=sd.[GLOBAL_ATTRIBUTE4]
      ,hrd.[GLOBAL_ATTRIBUTE5]=sd.[GLOBAL_ATTRIBUTE5]
      ,hrd.[GLOBAL_ATTRIBUTE6]=sd.[GLOBAL_ATTRIBUTE6]
      ,hrd.[GLOBAL_ATTRIBUTE7]=sd.[GLOBAL_ATTRIBUTE7]
      ,hrd.[GLOBAL_ATTRIBUTE8]=sd.[GLOBAL_ATTRIBUTE8]
      ,hrd.[GLOBAL_ATTRIBUTE9]=sd.[GLOBAL_ATTRIBUTE9]
      ,hrd.[GLOBAL_ATTRIBUTE10]=sd.[GLOBAL_ATTRIBUTE10]
      ,hrd.[USSGL_TRANSACTION_CODE]=sd.[USSGL_TRANSACTION_CODE]
      ,hrd.[CONTEXT2]=sd.[CONTEXT2]
      ,hrd.[DOC_SEQUENCE_ID]=sd.[DOC_SEQUENCE_ID]
      ,hrd.[DOC_SEQUENCE_VALUE]=sd.[DOC_SEQUENCE_VALUE]
      ,hrd.[JGZZ_RECON_CONTEXT]=sd.[JGZZ_RECON_CONTEXT]
      ,hrd.[JGZZ_RECON_REF]=sd.[JGZZ_RECON_REF]
      ,hrd.[TAX_STATUS_CODE]=sd.[TAX_STATUS_CODE]
      ,hrd.[PARENT_JE_HEADER_ID]=sd.[PARENT_JE_HEADER_ID]
      ,hrd.[REVERSED_JE_HEADER_ID]=sd.[REVERSED_JE_HEADER_ID]
      ,hrd.[ORIGINATING_BAL_SEG_VALUE]=sd.[ORIGINATING_BAL_SEG_VALUE]
      ,hrd.[INTERCOMPANY_MODE]=sd.[INTERCOMPANY_MODE]
      ,hrd.[DR_BAL_SEG_VALUE]=sd.[DR_BAL_SEG_VALUE]
      ,hrd.[CR_BAL_SEG_VALUE]=sd.[CR_BAL_SEG_VALUE]
      ,hrd.[REFERENCE_DATE]=sd.[REFERENCE_DATE]
      ,hrd.[LOCAL_DOC_SEQUENCE_ID]=sd.[LOCAL_DOC_SEQUENCE_ID]
      ,hrd.[LOCAL_DOC_SEQUENCE_VALUE]=sd.[LOCAL_DOC_SEQUENCE_VALUE]
      ,hrd.[DISPLAY_ALC_JOURNAL_FLAG]=sd.[DISPLAY_ALC_JOURNAL_FLAG]
      ,hrd.[JE_FROM_SLA_FLAG]=sd.[JE_FROM_SLA_FLAG]
      ,hrd.[POSTING_ACCT_SEQ_VERSION_ID]=sd.[POSTING_ACCT_SEQ_VERSION_ID]
      ,hrd.[POSTING_ACCT_SEQ_ASSIGN_ID]=sd.[POSTING_ACCT_SEQ_ASSIGN_ID]
      ,hrd.[POSTING_ACCT_SEQ_VALUE]=sd.[POSTING_ACCT_SEQ_VALUE]
      ,hrd.[CLOSE_ACCT_SEQ_VERSION_ID]=sd.[CLOSE_ACCT_SEQ_VERSION_ID]
      ,hrd.[CLOSE_ACCT_SEQ_ASSIGN_ID]=sd.[CLOSE_ACCT_SEQ_ASSIGN_ID]
      ,hrd.[CLOSE_ACCT_SEQ_VALUE]=sd.[CLOSE_ACCT_SEQ_VALUE]
	  ,hrd.[DW_MOD_TS]=GETDATE()
	  ,hrd.[DW_MOD_USR]=USER_NAME()
	
	  WHEN NOT MATCHED
				THEN
					INSERT ([JE_HEADER_ID]
					  ,[LAST_UPDATE_DATE]
					  ,[LAST_UPDATED_BY]
					  ,[LEDGER_ID]
					  ,[JE_CATEGORY]
					  ,[JE_SOURCE]
					  ,[PERIOD_NAME]
					  ,[NAME]
					  ,[CURRENCY_CODE]
					  ,[STATUS]
					  ,[DATE_CREATED]
					  ,[ACCRUAL_REV_FLAG]
					  ,[MULTI_BAL_SEG_FLAG]
					  ,[ACTUAL_FLAG]
					  ,[DEFAULT_EFFECTIVE_DATE]
					  ,[CONVERSION_FLAG]
					  ,[CREATION_DATE]
					  ,[CREATED_BY]
					  ,[LAST_UPDATE_LOGIN]
					  ,[ENCUMBRANCE_TYPE_ID]
					  ,[BUDGET_VERSION_ID]
					  ,[BALANCED_JE_FLAG]
					  ,[BALANCING_SEGMENT_VALUE]
					  ,[JE_BATCH_ID]
					  ,[FROM_RECURRING_HEADER_ID]
					  ,[UNIQUE_DATE]
					  ,[EARLIEST_POSTABLE_DATE]
					  ,[POSTED_DATE]
					  ,[ACCRUAL_REV_EFFECTIVE_DATE]
					  ,[ACCRUAL_REV_PERIOD_NAME]
					  ,[ACCRUAL_REV_STATUS]
					  ,[ACCRUAL_REV_JE_HEADER_ID]
					  ,[ACCRUAL_REV_CHANGE_SIGN_FLAG]
					  ,[DESCRIPTION]
					  ,[CONTROL_TOTAL]
					  ,[RUNNING_TOTAL_DR]
					  ,[RUNNING_TOTAL_CR]
					  ,[RUNNING_TOTAL_ACCOUNTED_DR]
					  ,[RUNNING_TOTAL_ACCOUNTED_CR]
					  ,[CURRENCY_CONVERSION_RATE]
					  ,[CURRENCY_CONVERSION_TYPE]
					  ,[CURRENCY_CONVERSION_DATE]
					  ,[EXTERNAL_REFERENCE]
					  ,[ATTRIBUTE1]
					  ,[ATTRIBUTE2]
					  ,[ATTRIBUTE3]
					  ,[ATTRIBUTE4]
					  ,[ATTRIBUTE5]
					  ,[ATTRIBUTE6]
					  ,[ATTRIBUTE7]
					  ,[ATTRIBUTE8]
					  ,[ATTRIBUTE9]
					  ,[ATTRIBUTE10]
					  ,[CONTEXT]
					  ,[GLOBAL_ATTRIBUTE_CATEGORY]
					  ,[GLOBAL_ATTRIBUTE1]
					  ,[GLOBAL_ATTRIBUTE2]
					  ,[GLOBAL_ATTRIBUTE3]
					  ,[GLOBAL_ATTRIBUTE4]
					  ,[GLOBAL_ATTRIBUTE5]
					  ,[GLOBAL_ATTRIBUTE6]
					  ,[GLOBAL_ATTRIBUTE7]
					  ,[GLOBAL_ATTRIBUTE8]
					  ,[GLOBAL_ATTRIBUTE9]
					  ,[GLOBAL_ATTRIBUTE10]
					  ,[USSGL_TRANSACTION_CODE]
					  ,[CONTEXT2]
					  ,[DOC_SEQUENCE_ID]
					  ,[DOC_SEQUENCE_VALUE]
					  ,[JGZZ_RECON_CONTEXT]
					  ,[JGZZ_RECON_REF]
					  ,[TAX_STATUS_CODE]
					  ,[PARENT_JE_HEADER_ID]
					  ,[REVERSED_JE_HEADER_ID]
					  ,[ORIGINATING_BAL_SEG_VALUE]
					  ,[INTERCOMPANY_MODE]
					  ,[DR_BAL_SEG_VALUE]
					  ,[CR_BAL_SEG_VALUE]
					  ,[REFERENCE_DATE]
					  ,[LOCAL_DOC_SEQUENCE_ID]
					  ,[LOCAL_DOC_SEQUENCE_VALUE]
					  ,[DISPLAY_ALC_JOURNAL_FLAG]
					  ,[JE_FROM_SLA_FLAG]
					  ,[POSTING_ACCT_SEQ_VERSION_ID]
					  ,[POSTING_ACCT_SEQ_ASSIGN_ID]
					  ,[POSTING_ACCT_SEQ_VALUE]
					  ,[CLOSE_ACCT_SEQ_VERSION_ID]
					  ,[CLOSE_ACCT_SEQ_ASSIGN_ID]
					  ,[CLOSE_ACCT_SEQ_VALUE]
					  ,[DW_CRE_TS]
					  ,[DW_CRE_USR]
								  )
				  VALUES(   
				   sd.[JE_HEADER_ID]
				  ,sd.[LAST_UPDATE_DATE]
				  ,sd.[LAST_UPDATED_BY]
				  ,sd.[LEDGER_ID]
				  ,sd.[JE_CATEGORY]
				  ,sd.[JE_SOURCE]
				  ,sd.[PERIOD_NAME]
				  ,sd.[NAME]
				  ,sd.[CURRENCY_CODE]
				  ,sd.[STATUS]
				  ,sd.[DATE_CREATED]
				  ,sd.[ACCRUAL_REV_FLAG]
				  ,sd.[MULTI_BAL_SEG_FLAG]
				  ,sd.[ACTUAL_FLAG]
				  ,sd.[DEFAULT_EFFECTIVE_DATE]
				  ,sd.[CONVERSION_FLAG]
				  ,sd.[CREATION_DATE]
				  ,sd.[CREATED_BY]
				  ,sd.[LAST_UPDATE_LOGIN]
				  ,sd.[ENCUMBRANCE_TYPE_ID]
				  ,sd.[BUDGET_VERSION_ID]
				  ,sd.[BALANCED_JE_FLAG]
				  ,sd.[BALANCING_SEGMENT_VALUE]
				  ,sd.[JE_BATCH_ID]
				  ,sd.[FROM_RECURRING_HEADER_ID]
				  ,sd.[UNIQUE_DATE]
				  ,sd.[EARLIEST_POSTABLE_DATE]
				  ,sd.[POSTED_DATE]
				  ,sd.[ACCRUAL_REV_EFFECTIVE_DATE]
				  ,sd.[ACCRUAL_REV_PERIOD_NAME]
				  ,sd.[ACCRUAL_REV_STATUS]
				  ,sd.[ACCRUAL_REV_JE_HEADER_ID]
				  ,sd.[ACCRUAL_REV_CHANGE_SIGN_FLAG]
				  ,sd.[DESCRIPTION]
				  ,sd.[CONTROL_TOTAL]
				  ,sd.[RUNNING_TOTAL_DR]
				  ,sd.[RUNNING_TOTAL_CR]
				  ,sd.[RUNNING_TOTAL_ACCOUNTED_DR]
				  ,sd.[RUNNING_TOTAL_ACCOUNTED_CR]
				  ,sd.[CURRENCY_CONVERSION_RATE]
				  ,sd.[CURRENCY_CONVERSION_TYPE]
				  ,sd.[CURRENCY_CONVERSION_DATE]
				  ,sd.[EXTERNAL_REFERENCE]
				  ,sd.[ATTRIBUTE1]
				  ,sd.[ATTRIBUTE2]
				  ,sd.[ATTRIBUTE3]
				  ,sd.[ATTRIBUTE4]
				  ,sd.[ATTRIBUTE5]
				  ,sd.[ATTRIBUTE6]
				  ,sd.[ATTRIBUTE7]
				  ,sd.[ATTRIBUTE8]
				  ,sd.[ATTRIBUTE9]
				  ,sd.[ATTRIBUTE10]
				  ,sd.[CONTEXT]
				  ,sd.[GLOBAL_ATTRIBUTE_CATEGORY]
				  ,sd.[GLOBAL_ATTRIBUTE1]
				  ,sd.[GLOBAL_ATTRIBUTE2]
				  ,sd.[GLOBAL_ATTRIBUTE3]
				  ,sd.[GLOBAL_ATTRIBUTE4]
				  ,sd.[GLOBAL_ATTRIBUTE5]
				  ,sd.[GLOBAL_ATTRIBUTE6]
				  ,sd.[GLOBAL_ATTRIBUTE7]
				  ,sd.[GLOBAL_ATTRIBUTE8]
				  ,sd.[GLOBAL_ATTRIBUTE9]
				  ,sd.[GLOBAL_ATTRIBUTE10]
				  ,sd.[USSGL_TRANSACTION_CODE]
				  ,sd.[CONTEXT2]
				  ,sd.[DOC_SEQUENCE_ID]
				  ,sd.[DOC_SEQUENCE_VALUE]
				  ,sd.[JGZZ_RECON_CONTEXT]
				  ,sd.[JGZZ_RECON_REF]
				  ,sd.[TAX_STATUS_CODE]
				  ,sd.[PARENT_JE_HEADER_ID]
				  ,sd.[REVERSED_JE_HEADER_ID]
				  ,sd.[ORIGINATING_BAL_SEG_VALUE]
				  ,sd.[INTERCOMPANY_MODE]
				  ,sd.[DR_BAL_SEG_VALUE]
				  ,sd.[CR_BAL_SEG_VALUE]
				  ,sd.[REFERENCE_DATE]
				  ,sd.[LOCAL_DOC_SEQUENCE_ID]
				  ,sd.[LOCAL_DOC_SEQUENCE_VALUE]
				  ,sd.[DISPLAY_ALC_JOURNAL_FLAG]
				  ,sd.[JE_FROM_SLA_FLAG]
				  ,sd.[POSTING_ACCT_SEQ_VERSION_ID]
				  ,sd.[POSTING_ACCT_SEQ_ASSIGN_ID]
				  ,sd.[POSTING_ACCT_SEQ_VALUE]
				  ,sd.[CLOSE_ACCT_SEQ_VERSION_ID]
				  ,sd.[CLOSE_ACCT_SEQ_ASSIGN_ID]
				  ,sd.[CLOSE_ACCT_SEQ_VALUE]
				  ,GETDATE()
				  ,USER_NAME()
				  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_HRDS', @Rows_Insrt, @Rows_Updt, null,null, 'Y';
 EXECUTE KG_Audit. [dbo].[USP_ETL_End_Btch_Sched] 'Transaction Data',NULL,'Y';

END






GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_JE_LINES]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_JE_LINES] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Sched] 'Transaction Data',@GETDATE,NULL,NULL,NULL,NULL,NULL ;
	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_LINES',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_JE_LINES] AS ln
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_JE_LINES]
			) AS sd
		ON ln.[JE_HEADER_ID]=sd.[JE_HEADER_ID]
		and ln.[JE_LINE_NUM]=sd.[JE_LINE_NUM]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET  ln.[LAST_UPDATE_DATE]=sd.[LAST_UPDATE_DATE]
					  ,ln.[LAST_UPDATED_BY]=sd.[LAST_UPDATED_BY]
					  ,ln.[LEDGER_ID]=sd.[LEDGER_ID]
					  ,ln.[CODE_COMBINATION_ID]=sd.[CODE_COMBINATION_ID]
					  ,ln.[PERIOD_NAME]=sd.[PERIOD_NAME]
					  ,ln.[EFFECTIVE_DATE]=sd.[EFFECTIVE_DATE]
					  ,ln.[STATUS]=sd.[STATUS]
					  ,ln.[CREATION_DATE]=sd.[CREATION_DATE]
					  ,ln.[CREATED_BY]=sd.[CREATED_BY]
					  ,ln.[LAST_UPDATE_LOGIN]=sd.[LAST_UPDATE_LOGIN]
					  ,ln.[ENTERED_DR]=sd.[ENTERED_DR]
					  ,ln.[ENTERED_CR]=sd.[ENTERED_CR]
					  ,ln.[ACCOUNTED_DR]=sd.[ACCOUNTED_DR]
					  ,ln.[ACCOUNTED_CR]=sd.[ACCOUNTED_CR]
					  ,ln.[DESCRIPTION]=sd.[DESCRIPTION]
					  ,ln.[REFERENCE_1]=sd.[REFERENCE_1]
					  ,ln.[REFERENCE_2]=sd.[REFERENCE_2]
					  ,ln.[REFERENCE_3]=sd.[REFERENCE_3]
					  ,ln.[REFERENCE_4]=sd.[REFERENCE_4]
					  ,ln.[REFERENCE_5]=sd.[REFERENCE_5]
					  ,ln.[ATTRIBUTE1]=sd.[ATTRIBUTE1]
					  ,ln.[ATTRIBUTE2]=sd.[ATTRIBUTE2]
					  ,ln.[ATTRIBUTE3]=sd.[ATTRIBUTE3]
					  ,ln.[ATTRIBUTE4]=sd.[ATTRIBUTE4]
					  ,ln.[ATTRIBUTE5]=sd.[ATTRIBUTE5]
					  ,ln.[ATTRIBUTE6]=sd.[ATTRIBUTE6]
					  ,ln.[ATTRIBUTE7]=sd.[ATTRIBUTE7]
					  ,ln.[ATTRIBUTE8]=sd.[ATTRIBUTE8]
					  ,ln.[ATTRIBUTE9]=sd.[ATTRIBUTE9]
					  ,ln.[ATTRIBUTE10]=sd.[ATTRIBUTE10]
					  ,ln.[ATTRIBUTE11]=sd.[ATTRIBUTE11]
					  ,ln.[ATTRIBUTE12]=sd.[ATTRIBUTE12]
					  ,ln.[ATTRIBUTE13]=sd.[ATTRIBUTE13]
					  ,ln.[ATTRIBUTE14]=sd.[ATTRIBUTE14]
					  ,ln.[ATTRIBUTE15]=sd.[ATTRIBUTE15]
					  ,ln.[ATTRIBUTE16]=sd.[ATTRIBUTE16]
					  ,ln.[ATTRIBUTE17]=sd.[ATTRIBUTE17]
					  ,ln.[ATTRIBUTE18]=sd.[ATTRIBUTE18]
					  ,ln.[ATTRIBUTE19]=sd.[ATTRIBUTE19]
					  ,ln.[ATTRIBUTE20]=sd.[ATTRIBUTE20]
					  ,ln.[CONTEXT]=sd.[CONTEXT]
					  ,ln.[CONTEXT2]=sd.[CONTEXT2]
					  ,ln.[INVOICE_DATE]=sd.[INVOICE_DATE]
					  ,ln.[TAX_CODE]=sd.[TAX_CODE]
					  ,ln.[INVOICE_IDENTIFIER]=sd.[INVOICE_IDENTIFIER]
					  ,ln.[INVOICE_AMOUNT]=sd.[INVOICE_AMOUNT]
					  ,ln.[NO1]=sd.[NO1]
					  ,ln.[STAT_AMOUNT]=sd.[STAT_AMOUNT]
					  ,ln.[IGNORE_RATE_FLAG]=sd.[IGNORE_RATE_FLAG]
					  ,ln.[CONTEXT3]=sd.[CONTEXT3]
					  ,ln.[USSGL_TRANSACTION_CODE]=sd.[USSGL_TRANSACTION_CODE]
					  ,ln.[SUBLEDGER_DOC_SEQUENCE_ID]=sd.[SUBLEDGER_DOC_SEQUENCE_ID]
					  ,ln.[CONTEXT4]=sd.[CONTEXT4]
					  ,ln.[SUBLEDGER_DOC_SEQUENCE_VALUE]=sd.[SUBLEDGER_DOC_SEQUENCE_VALUE]
					  ,ln.[REFERENCE_6]=sd.[REFERENCE_6]
					  ,ln.[REFERENCE_7]=sd.[REFERENCE_7]
					  ,ln.[REFERENCE_8]=sd.[REFERENCE_8]
					  ,ln.[REFERENCE_9]=sd.[REFERENCE_9]
					  ,ln.[REFERENCE_10]=sd.[REFERENCE_10]
					  ,ln.[GLOBAL_ATTRIBUTE_CATEGORY]=sd.[GLOBAL_ATTRIBUTE_CATEGORY]
					  ,ln.[GLOBAL_ATTRIBUTE1]=sd.[GLOBAL_ATTRIBUTE1]
					  ,ln.[GLOBAL_ATTRIBUTE2]=sd.[GLOBAL_ATTRIBUTE2]
					  ,ln.[GLOBAL_ATTRIBUTE3]=sd.[GLOBAL_ATTRIBUTE3]
					  ,ln.[GLOBAL_ATTRIBUTE4]=sd.[GLOBAL_ATTRIBUTE4]
					  ,ln.[GLOBAL_ATTRIBUTE5]=sd.[GLOBAL_ATTRIBUTE5]
					  ,ln.[GLOBAL_ATTRIBUTE6]=sd.[GLOBAL_ATTRIBUTE6]
					  ,ln.[GLOBAL_ATTRIBUTE7]=sd.[GLOBAL_ATTRIBUTE7]
					  ,ln.[GLOBAL_ATTRIBUTE8]=sd.[GLOBAL_ATTRIBUTE8]
					  ,ln.[GLOBAL_ATTRIBUTE9]=sd.[GLOBAL_ATTRIBUTE9]
					  ,ln.[GLOBAL_ATTRIBUTE10]=sd.[GLOBAL_ATTRIBUTE10]
					  ,ln.[JGZZ_RECON_STATUS_11I]=sd.[JGZZ_RECON_STATUS_11I]
					  ,ln.[JGZZ_RECON_DATE_11I]=sd.[JGZZ_RECON_DATE_11I]
					  ,ln.[JGZZ_RECON_ID_11I]=sd.[JGZZ_RECON_ID_11I]
					  ,ln.[JGZZ_RECON_REF_11I]=sd.[JGZZ_RECON_REF_11I]
					  ,ln.[JGZZ_RECON_CONTEXT_11I]=sd.[JGZZ_RECON_CONTEXT_11I]
					  ,ln.[TAXABLE_LINE_FLAG]=sd.[TAXABLE_LINE_FLAG]
					  ,ln.[TAX_TYPE_CODE]=sd.[TAX_TYPE_CODE]
					  ,ln.[TAX_CODE_ID]=sd.[TAX_CODE_ID]
					  ,ln.[TAX_ROUNDING_RULE_CODE]=sd.[TAX_ROUNDING_RULE_CODE]
					  ,ln.[AMOUNT_INCLUDES_TAX_FLAG]=sd.[AMOUNT_INCLUDES_TAX_FLAG]
					  ,ln.[TAX_DOCUMENT_IDENTIFIER]=sd.[TAX_DOCUMENT_IDENTIFIER]
					  ,ln.[TAX_DOCUMENT_DATE]=sd.[TAX_DOCUMENT_DATE]
					  ,ln.[TAX_CUSTOMER_NAME]=sd.[TAX_CUSTOMER_NAME]
					  ,ln.[TAX_CUSTOMER_REFERENCE]=sd.[TAX_CUSTOMER_REFERENCE]
					  ,ln.[TAX_REGISTRATION_NUMBER]=sd.[TAX_REGISTRATION_NUMBER]
					  ,ln.[TAX_LINE_FLAG]=sd.[TAX_LINE_FLAG]
					  ,ln.[TAX_GROUP_ID]=sd.[TAX_GROUP_ID]
					  ,ln.[LINE_TYPE_CODE]=sd.[LINE_TYPE_CODE]
					  ,ln.[GL_SL_LINK_ID]=sd.[GL_SL_LINK_ID]
					  ,ln.[GL_SL_LINK_TABLE]=sd.[GL_SL_LINK_TABLE]
					  ,ln.[CO_THIRD_PARTY]=sd.[CO_THIRD_PARTY]
					  ,ln.[CO_PROCESSED_FLAG]=sd.[CO_PROCESSED_FLAG]
				      ,ln.[DW_MOD_TS]=GETDATE()
				      ,ln.[DW_MOD_USR]=USER_NAME()
  
  	  WHEN NOT MATCHED
		THEN
		INSERT ( 					   [JE_HEADER_ID]
					  ,[JE_LINE_NUM]
					  ,[LAST_UPDATE_DATE]
					  ,[LAST_UPDATED_BY]
					  ,[LEDGER_ID]
					  ,[CODE_COMBINATION_ID]
					  ,[PERIOD_NAME]
					  ,[EFFECTIVE_DATE]
					  ,[STATUS]
					  ,[CREATION_DATE]
					  ,[CREATED_BY]
					  ,[LAST_UPDATE_LOGIN]
					  ,[ENTERED_DR]
					  ,[ENTERED_CR]
					  ,[ACCOUNTED_DR]
					  ,[ACCOUNTED_CR]
					  ,[DESCRIPTION]
					  ,[REFERENCE_1]
					  ,[REFERENCE_2]
					  ,[REFERENCE_3]
					  ,[REFERENCE_4]
					  ,[REFERENCE_5]
					  ,[ATTRIBUTE1]
					  ,[ATTRIBUTE2]
					  ,[ATTRIBUTE3]
					  ,[ATTRIBUTE4]
					  ,[ATTRIBUTE5]
					  ,[ATTRIBUTE6]
					  ,[ATTRIBUTE7]
					  ,[ATTRIBUTE8]
					  ,[ATTRIBUTE9]
					  ,[ATTRIBUTE10]
					  ,[ATTRIBUTE11]
					  ,[ATTRIBUTE12]
					  ,[ATTRIBUTE13]
					  ,[ATTRIBUTE14]
					  ,[ATTRIBUTE15]
					  ,[ATTRIBUTE16]
					  ,[ATTRIBUTE17]
					  ,[ATTRIBUTE18]
					  ,[ATTRIBUTE19]
					  ,[ATTRIBUTE20]
					  ,[CONTEXT]
					  ,[CONTEXT2]
					  ,[INVOICE_DATE]
					  ,[TAX_CODE]
					  ,[INVOICE_IDENTIFIER]
					  ,[INVOICE_AMOUNT]
					  ,[NO1]
					  ,[STAT_AMOUNT]
					  ,[IGNORE_RATE_FLAG]
					  ,[CONTEXT3]
					  ,[USSGL_TRANSACTION_CODE]
					  ,[SUBLEDGER_DOC_SEQUENCE_ID]
					  ,[CONTEXT4]
					  ,[SUBLEDGER_DOC_SEQUENCE_VALUE]
					  ,[REFERENCE_6]
					  ,[REFERENCE_7]
					  ,[REFERENCE_8]
					  ,[REFERENCE_9]
					  ,[REFERENCE_10]
					  ,[GLOBAL_ATTRIBUTE_CATEGORY]
					  ,[GLOBAL_ATTRIBUTE1]
					  ,[GLOBAL_ATTRIBUTE2]
					  ,[GLOBAL_ATTRIBUTE3]
					  ,[GLOBAL_ATTRIBUTE4]
					  ,[GLOBAL_ATTRIBUTE5]
					  ,[GLOBAL_ATTRIBUTE6]
					  ,[GLOBAL_ATTRIBUTE7]
					  ,[GLOBAL_ATTRIBUTE8]
					  ,[GLOBAL_ATTRIBUTE9]
					  ,[GLOBAL_ATTRIBUTE10]
					  ,[JGZZ_RECON_STATUS_11I]
					  ,[JGZZ_RECON_DATE_11I]
					  ,[JGZZ_RECON_ID_11I]
					  ,[JGZZ_RECON_REF_11I]
					  ,[JGZZ_RECON_CONTEXT_11I]
					  ,[TAXABLE_LINE_FLAG]
					  ,[TAX_TYPE_CODE]
					  ,[TAX_CODE_ID]
					  ,[TAX_ROUNDING_RULE_CODE]
					  ,[AMOUNT_INCLUDES_TAX_FLAG]
					  ,[TAX_DOCUMENT_IDENTIFIER]
					  ,[TAX_DOCUMENT_DATE]
					  ,[TAX_CUSTOMER_NAME]
					  ,[TAX_CUSTOMER_REFERENCE]
					  ,[TAX_REGISTRATION_NUMBER]
					  ,[TAX_LINE_FLAG]
					  ,[TAX_GROUP_ID]
					  ,[LINE_TYPE_CODE]
					  ,[GL_SL_LINK_ID]
					  ,[GL_SL_LINK_TABLE]
					  ,[CO_THIRD_PARTY]
					  ,[CO_PROCESSED_FLAG]
      				  ,[DW_CRE_TS]
		    		  ,[DW_CRE_USR]
     			 )
				  VALUES(   
				         sd.[JE_HEADER_ID]
						  ,sd.[JE_LINE_NUM]
						  ,sd.[LAST_UPDATE_DATE]
						  ,sd.[LAST_UPDATED_BY]
						  ,sd.[LEDGER_ID]
						  ,sd.[CODE_COMBINATION_ID]
						  ,sd.[PERIOD_NAME]
						  ,sd.[EFFECTIVE_DATE]
						  ,sd.[STATUS]
						  ,sd.[CREATION_DATE]
						  ,sd.[CREATED_BY]
						  ,sd.[LAST_UPDATE_LOGIN]
						  ,sd.[ENTERED_DR]
						  ,sd.[ENTERED_CR]
						  ,sd.[ACCOUNTED_DR]
						  ,sd.[ACCOUNTED_CR]
						  ,sd.[DESCRIPTION]
						  ,sd.[REFERENCE_1]
						  ,sd.[REFERENCE_2]
						  ,sd.[REFERENCE_3]
						  ,sd.[REFERENCE_4]
						  ,sd.[REFERENCE_5]
						  ,sd.[ATTRIBUTE1]
						  ,sd.[ATTRIBUTE2]
						  ,sd.[ATTRIBUTE3]
						  ,sd.[ATTRIBUTE4]
						  ,sd.[ATTRIBUTE5]
						  ,sd.[ATTRIBUTE6]
						  ,sd.[ATTRIBUTE7]
						  ,sd.[ATTRIBUTE8]
						  ,sd.[ATTRIBUTE9]
						  ,sd.[ATTRIBUTE10]
						  ,sd.[ATTRIBUTE11]
						  ,sd.[ATTRIBUTE12]
						  ,sd.[ATTRIBUTE13]
						  ,sd.[ATTRIBUTE14]
						  ,sd.[ATTRIBUTE15]
						  ,sd.[ATTRIBUTE16]
						  ,sd.[ATTRIBUTE17]
						  ,sd.[ATTRIBUTE18]
						  ,sd.[ATTRIBUTE19]
						  ,sd.[ATTRIBUTE20]
						  ,sd.[CONTEXT]
						  ,sd.[CONTEXT2]
						  ,sd.[INVOICE_DATE]
						  ,sd.[TAX_CODE]
						  ,sd.[INVOICE_IDENTIFIER]
						  ,sd.[INVOICE_AMOUNT]
						  ,sd.[NO1]
						  ,sd.[STAT_AMOUNT]
						  ,sd.[IGNORE_RATE_FLAG]
						  ,sd.[CONTEXT3]
						  ,sd.[USSGL_TRANSACTION_CODE]
						  ,sd.[SUBLEDGER_DOC_SEQUENCE_ID]
						  ,sd.[CONTEXT4]
						  ,sd.[SUBLEDGER_DOC_SEQUENCE_VALUE]
						  ,sd.[REFERENCE_6]
						  ,sd.[REFERENCE_7]
						  ,sd.[REFERENCE_8]
						  ,sd.[REFERENCE_9]
						  ,sd.[REFERENCE_10]
						  ,sd.[GLOBAL_ATTRIBUTE_CATEGORY]
						  ,sd.[GLOBAL_ATTRIBUTE1]
						  ,sd.[GLOBAL_ATTRIBUTE2]
						  ,sd.[GLOBAL_ATTRIBUTE3]
						  ,sd.[GLOBAL_ATTRIBUTE4]
						  ,sd.[GLOBAL_ATTRIBUTE5]
						  ,sd.[GLOBAL_ATTRIBUTE6]
						  ,sd.[GLOBAL_ATTRIBUTE7]
						  ,sd.[GLOBAL_ATTRIBUTE8]
						  ,sd.[GLOBAL_ATTRIBUTE9]
						  ,sd.[GLOBAL_ATTRIBUTE10]
						  ,sd.[JGZZ_RECON_STATUS_11I]
						  ,sd.[JGZZ_RECON_DATE_11I]
						  ,sd.[JGZZ_RECON_ID_11I]
						  ,sd.[JGZZ_RECON_REF_11I]
						  ,sd.[JGZZ_RECON_CONTEXT_11I]
						  ,sd.[TAXABLE_LINE_FLAG]
						  ,sd.[TAX_TYPE_CODE]
						  ,sd.[TAX_CODE_ID]
						  ,sd.[TAX_ROUNDING_RULE_CODE]
						  ,sd.[AMOUNT_INCLUDES_TAX_FLAG]
						  ,sd.[TAX_DOCUMENT_IDENTIFIER]
						  ,sd.[TAX_DOCUMENT_DATE]
						  ,sd.[TAX_CUSTOMER_NAME]
						  ,sd.[TAX_CUSTOMER_REFERENCE]
						  ,sd.[TAX_REGISTRATION_NUMBER]
						  ,sd.[TAX_LINE_FLAG]
						  ,sd.[TAX_GROUP_ID]
						  ,sd.[LINE_TYPE_CODE]
						  ,sd.[GL_SL_LINK_ID]
						  ,sd.[GL_SL_LINK_TABLE]
						  ,sd.[CO_THIRD_PARTY]
						  ,sd.[CO_PROCESSED_FLAG]
  						  ,GETDATE()
						  ,USER_NAME()
						  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_LINES', @Rows_Insrt, @Rows_Updt, null,null, 'Y';
 EXECUTE KG_Audit. [dbo].[USP_ETL_End_Btch_Sched] 'Transaction Data',NULL,'Y';



END







GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_GL_LEDR]    Script Date: 9/11/2018 6:04:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_LOAD_GL_LEDR] 
	
AS
BEGIN
	DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

     EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Sched] 'Transaction Data',@GETDATE,NULL,NULL,NULL,NULL,NULL ;    
	EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KAP_EBS_LEDR',@GETDATE,null,null,null,null,null ;


	-- Merge Statement
	MERGE [KAP_EBS].[dbo].[GL_LEDGERS] AS ldr
		USING (
			SELECT *
			FROM [KAP_EBS].[STG].[STG_GL_LEDGERS]
			) AS sd
		ON ldr.[LEDGER_ID] = sd.[LEDGER_ID]
		
	WHEN MATCHED
			THEN
			UPDATE
				SET ldr.[NAME]=sd.[NAME]
						,ldr.[SHORT_NAME]=sd.[SHORT_NAME]
						,ldr.[DESCRIPTION]=sd.[DESCRIPTION]
						,ldr.[LEDGER_CATEGORY_CODE]=sd.[LEDGER_CATEGORY_CODE]
						,ldr.[ALC_LEDGER_TYPE_CODE]=sd.[ALC_LEDGER_TYPE_CODE]
						,ldr.[OBJECT_TYPE_CODE]=sd.[OBJECT_TYPE_CODE]
						,ldr.[LE_LEDGER_TYPE_CODE]=sd.[LE_LEDGER_TYPE_CODE]
						,ldr.[COMPLETION_STATUS_CODE]=sd.[COMPLETION_STATUS_CODE]
						,ldr.[CONFIGURATION_ID]=sd.[CONFIGURATION_ID]
						,ldr.[CHART_OF_ACCOUNTS_ID]=sd.[CHART_OF_ACCOUNTS_ID]
						,ldr.[CURRENCY_CODE]=sd.[CURRENCY_CODE]
						,ldr.[PERIOD_SET_NAME]=sd.[PERIOD_SET_NAME]
						,ldr.[ACCOUNTED_PERIOD_TYPE]=sd.[ACCOUNTED_PERIOD_TYPE]
						,ldr.[FIRST_LEDGER_PERIOD_NAME]=sd.[FIRST_LEDGER_PERIOD_NAME]
						,ldr.[RET_EARN_CODE_COMBINATION_ID]=sd.[RET_EARN_CODE_COMBINATION_ID]
						,ldr.[SUSPENSE_ALLOWED_FLAG]=sd.[SUSPENSE_ALLOWED_FLAG]
						,ldr.[ALLOW_INTERCOMPANY_POST_FLAG]=sd.[ALLOW_INTERCOMPANY_POST_FLAG]
						,ldr.[TRACK_ROUNDING_IMBALANCE_FLAG]=sd.[TRACK_ROUNDING_IMBALANCE_FLAG]
						,ldr.[ENABLE_AVERAGE_BALANCES_FLAG]=sd.[ENABLE_AVERAGE_BALANCES_FLAG]
						,ldr.[CUM_TRANS_CODE_COMBINATION_ID]=sd.[CUM_TRANS_CODE_COMBINATION_ID]
						,ldr.[RES_ENCUMB_CODE_COMBINATION_ID]=sd.[RES_ENCUMB_CODE_COMBINATION_ID]
						,ldr.[NET_INCOME_CODE_COMBINATION_ID]=sd.[NET_INCOME_CODE_COMBINATION_ID]
						,ldr.[ROUNDING_CODE_COMBINATION_ID]=sd.[ROUNDING_CODE_COMBINATION_ID]
						,ldr.[ENABLE_BUDGETARY_CONTROL_FLAG]=sd.[ENABLE_BUDGETARY_CONTROL_FLAG]
						,ldr.[REQUIRE_BUDGET_JOURNALS_FLAG]=sd.[REQUIRE_BUDGET_JOURNALS_FLAG]
						,ldr.[ENABLE_JE_APPROVAL_FLAG]=sd.[ENABLE_JE_APPROVAL_FLAG]
						,ldr.[ENABLE_AUTOMATIC_TAX_FLAG]=sd.[ENABLE_AUTOMATIC_TAX_FLAG]
						,ldr.[CONSOLIDATION_LEDGER_FLAG]=sd.[CONSOLIDATION_LEDGER_FLAG]
						,ldr.[TRANSLATE_EOD_FLAG]=sd.[TRANSLATE_EOD_FLAG]
						,ldr.[TRANSLATE_QATD_FLAG]=sd.[TRANSLATE_QATD_FLAG]
						,ldr.[TRANSLATE_YATD_FLAG]=sd.[TRANSLATE_YATD_FLAG]
						,ldr.[TRANSACTION_CALENDAR_ID]=sd.[TRANSACTION_CALENDAR_ID]
						,ldr.[DAILY_TRANSLATION_RATE_TYPE]=sd.[DAILY_TRANSLATION_RATE_TYPE]
						,ldr.[AUTOMATICALLY_CREATED_FLAG]=sd.[AUTOMATICALLY_CREATED_FLAG]
						,ldr.[BAL_SEG_VALUE_OPTION_CODE]=sd.[BAL_SEG_VALUE_OPTION_CODE]
						,ldr.[BAL_SEG_COLUMN_NAME]=sd.[BAL_SEG_COLUMN_NAME]
						,ldr.[MGT_SEG_VALUE_OPTION_CODE]=sd.[MGT_SEG_VALUE_OPTION_CODE]
						,ldr.[MGT_SEG_COLUMN_NAME]=sd.[MGT_SEG_COLUMN_NAME]
						,ldr.[BAL_SEG_VALUE_SET_ID]=sd.[BAL_SEG_VALUE_SET_ID]
						,ldr.[MGT_SEG_VALUE_SET_ID]=sd.[MGT_SEG_VALUE_SET_ID]
						,ldr.[IMPLICIT_ACCESS_SET_ID]=sd.[IMPLICIT_ACCESS_SET_ID]
						,ldr.[CRITERIA_SET_ID]=sd.[CRITERIA_SET_ID]
						,ldr.[FUTURE_ENTERABLE_PERIODS_LIMIT]=sd.[FUTURE_ENTERABLE_PERIODS_LIMIT]
						,ldr.[LEDGER_ATTRIBUTES]=sd.[LEDGER_ATTRIBUTES]
						,ldr.[IMPLICIT_LEDGER_SET_ID]=sd.[IMPLICIT_LEDGER_SET_ID]
						,ldr.[LATEST_OPENED_PERIOD_NAME]=sd.[LATEST_OPENED_PERIOD_NAME]
						,ldr.[LATEST_ENCUMBRANCE_YEAR]=sd.[LATEST_ENCUMBRANCE_YEAR]
						,ldr.[PERIOD_AVERAGE_RATE_TYPE]=sd.[PERIOD_AVERAGE_RATE_TYPE]
						,ldr.[PERIOD_END_RATE_TYPE]=sd.[PERIOD_END_RATE_TYPE]
						,ldr.[BUDGET_PERIOD_AVG_RATE_TYPE]=sd.[BUDGET_PERIOD_AVG_RATE_TYPE]
						,ldr.[BUDGET_PERIOD_END_RATE_TYPE]=sd.[BUDGET_PERIOD_END_RATE_TYPE]
						,ldr.[SLA_ACCOUNTING_METHOD_CODE]=sd.[SLA_ACCOUNTING_METHOD_CODE]
						,ldr.[SLA_ACCOUNTING_METHOD_TYPE]=sd.[SLA_ACCOUNTING_METHOD_TYPE]
						,ldr.[SLA_DESCRIPTION_LANGUAGE]=sd.[SLA_DESCRIPTION_LANGUAGE]
						,ldr.[SLA_ENTERED_CUR_BAL_SUS_CCID]=sd.[SLA_ENTERED_CUR_BAL_SUS_CCID]
						,ldr.[SLA_SEQUENCING_FLAG]=sd.[SLA_SEQUENCING_FLAG]
						,ldr.[SLA_BAL_BY_LEDGER_CURR_FLAG]=sd.[SLA_BAL_BY_LEDGER_CURR_FLAG]
						,ldr.[SLA_LEDGER_CUR_BAL_SUS_CCID]=sd.[SLA_LEDGER_CUR_BAL_SUS_CCID]
						,ldr.[ENABLE_SECONDARY_TRACK_FLAG]=sd.[ENABLE_SECONDARY_TRACK_FLAG]
						,ldr.[ENABLE_REVAL_SS_TRACK_FLAG]=sd.[ENABLE_REVAL_SS_TRACK_FLAG]
						,ldr.[LAST_UPDATE_DATE]=sd.[LAST_UPDATE_DATE]
						,ldr.[LAST_UPDATED_BY]=sd.[LAST_UPDATED_BY]
						,ldr.[CREATION_DATE]=sd.[CREATION_DATE]
						,ldr.[CREATED_BY]=sd.[CREATED_BY]
						,ldr.[LAST_UPDATE_LOGIN]=sd.[LAST_UPDATE_LOGIN]
						,ldr.[CONTEXT]=sd.[CONTEXT]
						,ldr.[ATTRIBUTE1]=sd.[ATTRIBUTE1]
						,ldr.[ATTRIBUTE2]=sd.[ATTRIBUTE2]
						,ldr.[ATTRIBUTE3]=sd.[ATTRIBUTE3]
						,ldr.[ATTRIBUTE4]=sd.[ATTRIBUTE4]
						,ldr.[ATTRIBUTE5]=sd.[ATTRIBUTE5]
						,ldr.[ATTRIBUTE6]=sd.[ATTRIBUTE6]
						,ldr.[ATTRIBUTE7]=sd.[ATTRIBUTE7]
						,ldr.[ATTRIBUTE8]=sd.[ATTRIBUTE8]
						,ldr.[ATTRIBUTE9]=sd.[ATTRIBUTE9]
						,ldr.[ATTRIBUTE10]=sd.[ATTRIBUTE10]
						,ldr.[ATTRIBUTE11]=sd.[ATTRIBUTE11]
						,ldr.[ATTRIBUTE12]=sd.[ATTRIBUTE12]
						,ldr.[ATTRIBUTE13]=sd.[ATTRIBUTE13]
						,ldr.[ATTRIBUTE14]=sd.[ATTRIBUTE14]
						,ldr.[ATTRIBUTE15]=sd.[ATTRIBUTE15]
						,ldr.[ENABLE_RECONCILIATION_FLAG]=sd.[ENABLE_RECONCILIATION_FLAG]
						,ldr.[CREATE_JE_FLAG]=sd.[CREATE_JE_FLAG]
						,ldr.[SLA_LEDGER_CASH_BASIS_FLAG]=sd.[SLA_LEDGER_CASH_BASIS_FLAG]
						,ldr.[COMPLETE_FLAG]=sd.[COMPLETE_FLAG]
						,ldr.[COMMITMENT_BUDGET_FLAG]=sd.[COMMITMENT_BUDGET_FLAG]
						,ldr.[NET_CLOSING_BAL_FLAG]=sd.[NET_CLOSING_BAL_FLAG]
						,ldr.[AUTOMATE_SEC_JRNL_REV_FLAG]=sd.[AUTOMATE_SEC_JRNL_REV_FLAG]
				        ,ldr.[DW_MOD_TS]=GETDATE()
				        ,ldr.[DW_MOD_USR]=USER_NAME()
  
  	  WHEN NOT MATCHED
		THEN
		INSERT (  [LEDGER_ID]
							,[NAME]
							,[SHORT_NAME]
							,[DESCRIPTION]
							,[LEDGER_CATEGORY_CODE]
							,[ALC_LEDGER_TYPE_CODE]
							,[OBJECT_TYPE_CODE]
							,[LE_LEDGER_TYPE_CODE]
							,[COMPLETION_STATUS_CODE]
							,[CONFIGURATION_ID]
							,[CHART_OF_ACCOUNTS_ID]
							,[CURRENCY_CODE]
							,[PERIOD_SET_NAME]
							,[ACCOUNTED_PERIOD_TYPE]
							,[FIRST_LEDGER_PERIOD_NAME]
							,[RET_EARN_CODE_COMBINATION_ID]
							,[SUSPENSE_ALLOWED_FLAG]
							,[ALLOW_INTERCOMPANY_POST_FLAG]
							,[TRACK_ROUNDING_IMBALANCE_FLAG]
							,[ENABLE_AVERAGE_BALANCES_FLAG]
							,[CUM_TRANS_CODE_COMBINATION_ID]
							,[RES_ENCUMB_CODE_COMBINATION_ID]
							,[NET_INCOME_CODE_COMBINATION_ID]
							,[ROUNDING_CODE_COMBINATION_ID]
							,[ENABLE_BUDGETARY_CONTROL_FLAG]
							,[REQUIRE_BUDGET_JOURNALS_FLAG]
							,[ENABLE_JE_APPROVAL_FLAG]
							,[ENABLE_AUTOMATIC_TAX_FLAG]
							,[CONSOLIDATION_LEDGER_FLAG]
							,[TRANSLATE_EOD_FLAG]
							,[TRANSLATE_QATD_FLAG]
							,[TRANSLATE_YATD_FLAG]
							,[TRANSACTION_CALENDAR_ID]
							,[DAILY_TRANSLATION_RATE_TYPE]
							,[AUTOMATICALLY_CREATED_FLAG]
							,[BAL_SEG_VALUE_OPTION_CODE]
							,[BAL_SEG_COLUMN_NAME]
							,[MGT_SEG_VALUE_OPTION_CODE]
							,[MGT_SEG_COLUMN_NAME]
							,[BAL_SEG_VALUE_SET_ID]
							,[MGT_SEG_VALUE_SET_ID]
							,[IMPLICIT_ACCESS_SET_ID]
							,[CRITERIA_SET_ID]
							,[FUTURE_ENTERABLE_PERIODS_LIMIT]
							,[LEDGER_ATTRIBUTES]
							,[IMPLICIT_LEDGER_SET_ID]
							,[LATEST_OPENED_PERIOD_NAME]
							,[LATEST_ENCUMBRANCE_YEAR]
							,[PERIOD_AVERAGE_RATE_TYPE]
							,[PERIOD_END_RATE_TYPE]
							,[BUDGET_PERIOD_AVG_RATE_TYPE]
							,[BUDGET_PERIOD_END_RATE_TYPE]
							,[SLA_ACCOUNTING_METHOD_CODE]
							,[SLA_ACCOUNTING_METHOD_TYPE]
							,[SLA_DESCRIPTION_LANGUAGE]
							,[SLA_ENTERED_CUR_BAL_SUS_CCID]
							,[SLA_SEQUENCING_FLAG]
							,[SLA_BAL_BY_LEDGER_CURR_FLAG]
							,[SLA_LEDGER_CUR_BAL_SUS_CCID]
							,[ENABLE_SECONDARY_TRACK_FLAG]
							,[ENABLE_REVAL_SS_TRACK_FLAG]
							,[LAST_UPDATE_DATE]
							,[LAST_UPDATED_BY]
							,[CREATION_DATE]
							,[CREATED_BY]
							,[LAST_UPDATE_LOGIN]
							,[CONTEXT]
							,[ATTRIBUTE1]
							,[ATTRIBUTE2]
							,[ATTRIBUTE3]
							,[ATTRIBUTE4]
							,[ATTRIBUTE5]
							,[ATTRIBUTE6]
							,[ATTRIBUTE7]
							,[ATTRIBUTE8]
							,[ATTRIBUTE9]
							,[ATTRIBUTE10]
							,[ATTRIBUTE11]
							,[ATTRIBUTE12]
							,[ATTRIBUTE13]
							,[ATTRIBUTE14]
							,[ATTRIBUTE15]
							,[ENABLE_RECONCILIATION_FLAG]
							,[CREATE_JE_FLAG]
							,[SLA_LEDGER_CASH_BASIS_FLAG]
							,[COMPLETE_FLAG]
							,[COMMITMENT_BUDGET_FLAG]
							,[NET_CLOSING_BAL_FLAG]
							,[AUTOMATE_SEC_JRNL_REV_FLAG]
           				  ,[DW_CRE_TS]
			        	  ,[DW_CRE_USR]
     			 )
				  VALUES(   
				         sd.[LEDGER_ID]
						  ,sd.[NAME]
						  ,sd.[SHORT_NAME]
						  ,sd.[DESCRIPTION]
						  ,sd.[LEDGER_CATEGORY_CODE]
						  ,sd.[ALC_LEDGER_TYPE_CODE]
						  ,sd.[OBJECT_TYPE_CODE]
						  ,sd.[LE_LEDGER_TYPE_CODE]
						  ,sd.[COMPLETION_STATUS_CODE]
						  ,sd.[CONFIGURATION_ID]
						  ,sd.[CHART_OF_ACCOUNTS_ID]
						  ,sd.[CURRENCY_CODE]
						  ,sd.[PERIOD_SET_NAME]
						  ,sd.[ACCOUNTED_PERIOD_TYPE]
						  ,sd.[FIRST_LEDGER_PERIOD_NAME]
						  ,sd.[RET_EARN_CODE_COMBINATION_ID]
						  ,sd.[SUSPENSE_ALLOWED_FLAG]
						  ,sd.[ALLOW_INTERCOMPANY_POST_FLAG]
						  ,sd.[TRACK_ROUNDING_IMBALANCE_FLAG]
						  ,sd.[ENABLE_AVERAGE_BALANCES_FLAG]
						  ,sd.[CUM_TRANS_CODE_COMBINATION_ID]
						  ,sd.[RES_ENCUMB_CODE_COMBINATION_ID]
						  ,sd.[NET_INCOME_CODE_COMBINATION_ID]
						  ,sd.[ROUNDING_CODE_COMBINATION_ID]
						  ,sd.[ENABLE_BUDGETARY_CONTROL_FLAG]
						  ,sd.[REQUIRE_BUDGET_JOURNALS_FLAG]
						  ,sd.[ENABLE_JE_APPROVAL_FLAG]
						  ,sd.[ENABLE_AUTOMATIC_TAX_FLAG]
						  ,sd.[CONSOLIDATION_LEDGER_FLAG]
						  ,sd.[TRANSLATE_EOD_FLAG]
						  ,sd.[TRANSLATE_QATD_FLAG]
						  ,sd.[TRANSLATE_YATD_FLAG]
						  ,sd.[TRANSACTION_CALENDAR_ID]
						  ,sd.[DAILY_TRANSLATION_RATE_TYPE]
						  ,sd.[AUTOMATICALLY_CREATED_FLAG]
						  ,sd.[BAL_SEG_VALUE_OPTION_CODE]
						  ,sd.[BAL_SEG_COLUMN_NAME]
						  ,sd.[MGT_SEG_VALUE_OPTION_CODE]
						  ,sd.[MGT_SEG_COLUMN_NAME]
						  ,sd.[BAL_SEG_VALUE_SET_ID]
						  ,sd.[MGT_SEG_VALUE_SET_ID]
						  ,sd.[IMPLICIT_ACCESS_SET_ID]
						  ,sd.[CRITERIA_SET_ID]
						  ,sd.[FUTURE_ENTERABLE_PERIODS_LIMIT]
						  ,sd.[LEDGER_ATTRIBUTES]
						  ,sd.[IMPLICIT_LEDGER_SET_ID]
						  ,sd.[LATEST_OPENED_PERIOD_NAME]
						  ,sd.[LATEST_ENCUMBRANCE_YEAR]
						  ,sd.[PERIOD_AVERAGE_RATE_TYPE]
						  ,sd.[PERIOD_END_RATE_TYPE]
						  ,sd.[BUDGET_PERIOD_AVG_RATE_TYPE]
						  ,sd.[BUDGET_PERIOD_END_RATE_TYPE]
						  ,sd.[SLA_ACCOUNTING_METHOD_CODE]
						  ,sd.[SLA_ACCOUNTING_METHOD_TYPE]
						  ,sd.[SLA_DESCRIPTION_LANGUAGE]
						  ,sd.[SLA_ENTERED_CUR_BAL_SUS_CCID]
						  ,sd.[SLA_SEQUENCING_FLAG]
						  ,sd.[SLA_BAL_BY_LEDGER_CURR_FLAG]
						  ,sd.[SLA_LEDGER_CUR_BAL_SUS_CCID]
						  ,sd.[ENABLE_SECONDARY_TRACK_FLAG]
						  ,sd.[ENABLE_REVAL_SS_TRACK_FLAG]
						  ,sd.[LAST_UPDATE_DATE]
						  ,sd.[LAST_UPDATED_BY]
						  ,sd.[CREATION_DATE]
						  ,sd.[CREATED_BY]
						  ,sd.[LAST_UPDATE_LOGIN]
						  ,sd.[CONTEXT]
						  ,sd.[ATTRIBUTE1]
						  ,sd.[ATTRIBUTE2]
						  ,sd.[ATTRIBUTE3]
						  ,sd.[ATTRIBUTE4]
						  ,sd.[ATTRIBUTE5]
						  ,sd.[ATTRIBUTE6]
						  ,sd.[ATTRIBUTE7]
						  ,sd.[ATTRIBUTE8]
						  ,sd.[ATTRIBUTE9]
						  ,sd.[ATTRIBUTE10]
						  ,sd.[ATTRIBUTE11]
						  ,sd.[ATTRIBUTE12]
						  ,sd.[ATTRIBUTE13]
						  ,sd.[ATTRIBUTE14]
						  ,sd.[ATTRIBUTE15]
						  ,sd.[ENABLE_RECONCILIATION_FLAG]
						  ,sd.[CREATE_JE_FLAG]
						  ,sd.[SLA_LEDGER_CASH_BASIS_FLAG]
						  ,sd.[COMPLETE_FLAG]
						  ,sd.[COMMITMENT_BUDGET_FLAG]
						  ,sd.[NET_CLOSING_BAL_FLAG]
						  ,sd.[AUTOMATE_SEC_JRNL_REV_FLAG]
  						  ,GETDATE()
						  ,USER_NAME()
						  )

    OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KAP_EBS_LEDR', @Rows_Insrt, @Rows_Updt, null,null, 'Y';
 EXECUTE KG_Audit. [dbo].[USP_ETL_End_Btch_Sched] 'Transaction Data',NULL,'Y';



END







GO
USE [master]
GO
ALTER DATABASE [KAP_EBS] SET  READ_WRITE 
GO
