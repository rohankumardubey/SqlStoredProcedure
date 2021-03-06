USE [master]
GO
/****** Object:  Database [KNA_CRM]    Script Date: 11/20/2018 5:42:58 PM ******/
CREATE DATABASE [KNA_CRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_CRM', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_CRM.mdf' , SIZE = 2406400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KNA_CRM_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_CRM_log.ldf' , SIZE = 665600KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_CRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_CRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_CRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_CRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_CRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_CRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_CRM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_CRM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_CRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_CRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_CRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_CRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_CRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_CRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_CRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_CRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_CRM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_CRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_CRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_CRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_CRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_CRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_CRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_CRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_CRM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_CRM] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_CRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_CRM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_CRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_CRM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_CRM', N'ON'
GO
USE [KNA_CRM]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:42:59 PM ******/
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [dbo].[AUSP]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUSP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJEK] [varchar](50) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[ATZHL] [decimal](3, 0) NULL,
	[MAFID] [varchar](1) NULL,
	[KLART] [varchar](3) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ATWRT] [varchar](30) NULL,
	[ATFLV] [float] NULL,
	[ATAWE] [varchar](3) NULL,
	[ATFLB] [float] NULL,
	[ATAW1] [varchar](3) NULL,
	[ATCOD] [varchar](1) NULL,
	[ATTLV] [float] NULL,
	[ATTLB] [float] NULL,
	[ATPRZ] [varchar](1) NULL,
	[ATINC] [float] NULL,
	[ATAUT] [varchar](1) NULL,
	[AENNR] [varchar](12) NULL,
	[DATUV] [date] NULL,
	[LKENZ] [varchar](1) NULL,
	[ATIMB] [decimal](10, 0) NULL,
	[ATZIS] [decimal](3, 0) NULL,
	[ATSRT] [decimal](4, 0) NULL,
	[ATVGLART] [varchar](1) NULL,
	[PARTNER_GUID] [varchar](32) NULL,
	[CHANGED_AT] [decimal](15, 0) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[TYPE_BP_GUID] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUSP_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUSP_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJEK] [varchar](50) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[ATZHL] [decimal](3, 0) NULL,
	[MAFID] [varchar](1) NULL,
	[KLART] [varchar](3) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ATWRT] [varchar](30) NULL,
	[ATFLV] [float] NULL,
	[ATAWE] [varchar](3) NULL,
	[ATFLB] [float] NULL,
	[ATAW1] [varchar](3) NULL,
	[ATCOD] [varchar](1) NULL,
	[ATTLV] [float] NULL,
	[ATTLB] [float] NULL,
	[ATPRZ] [varchar](1) NULL,
	[ATINC] [float] NULL,
	[ATAUT] [varchar](1) NULL,
	[AENNR] [varchar](12) NULL,
	[DATUV] [date] NULL,
	[LKENZ] [varchar](1) NULL,
	[ATIMB] [decimal](10, 0) NULL,
	[ATZIS] [decimal](3, 0) NULL,
	[ATSRT] [decimal](4, 0) NULL,
	[ATVGLART] [varchar](1) NULL,
	[PARTNER_GUID] [varchar](32) NULL,
	[CHANGED_AT] [decimal](15, 0) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[TYPE_BP_GUID] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BUT000]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUT000](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[PARTNER] [varchar](10) NULL,
	[TYPE] [varchar](1) NULL,
	[BPKIND] [varchar](4) NULL,
	[BU_GROUP] [varchar](4) NULL,
	[BPEXT] [varchar](20) NULL,
	[BU_SORT1] [varchar](20) NULL,
	[BU_SORT2] [varchar](20) NULL,
	[SOURCE] [varchar](4) NULL,
	[TITLE] [varchar](4) NULL,
	[XDELE] [varchar](1) NULL,
	[XBLCK] [varchar](1) NULL,
	[AUGRP] [varchar](4) NULL,
	[TITLE_LET] [varchar](50) NULL,
	[BU_LOGSYS] [varchar](10) NULL,
	[CONTACT] [varchar](1) NULL,
	[NOT_RELEASED] [varchar](1) NULL,
	[NOT_LG_COMPETENT] [varchar](1) NULL,
	[PRINT_MODE] [varchar](1) NULL,
	[BP_EEW_DUMMY] [varchar](1) NULL,
	[NAME_ORG1] [varchar](40) NULL,
	[NAME_ORG2] [varchar](40) NULL,
	[NAME_ORG3] [varchar](40) NULL,
	[NAME_ORG4] [varchar](40) NULL,
	[LEGAL_ENTY] [varchar](2) NULL,
	[IND_SECTOR] [varchar](10) NULL,
	[LEGAL_ORG] [varchar](2) NULL,
	[FOUND_DAT] [date] NULL,
	[LIQUID_DAT] [date] NULL,
	[LOCATION_1] [decimal](7, 0) NULL,
	[LOCATION_2] [decimal](5, 0) NULL,
	[LOCATION_3] [decimal](1, 0) NULL,
	[NAME_LAST] [varchar](40) NULL,
	[NAME_FIRST] [varchar](40) NULL,
	[NAME_LST2] [varchar](40) NULL,
	[NAME_LAST2] [varchar](40) NULL,
	[NAMEMIDDLE] [varchar](40) NULL,
	[TITLE_ACA1] [varchar](4) NULL,
	[TITLE_ACA2] [varchar](4) NULL,
	[TITLE_ROYL] [varchar](4) NULL,
	[PREFIX1] [varchar](4) NULL,
	[PREFIX2] [varchar](4) NULL,
	[NAME1_TEXT] [varchar](80) NULL,
	[NICKNAME] [varchar](40) NULL,
	[INITIALS] [varchar](10) NULL,
	[NAMEFORMAT] [varchar](2) NULL,
	[NAMCOUNTRY] [varchar](3) NULL,
	[LANGU_CORR] [varchar](1) NULL,
	[XSEXM] [varchar](1) NULL,
	[XSEXF] [varchar](1) NULL,
	[BIRTHPL] [varchar](40) NULL,
	[MARST] [varchar](1) NULL,
	[EMPLO] [varchar](35) NULL,
	[JOBGR] [varchar](4) NULL,
	[NATIO] [varchar](3) NULL,
	[CNTAX] [varchar](3) NULL,
	[CNDSC] [varchar](3) NULL,
	[PERSNUMBER] [varchar](10) NULL,
	[XSEXU] [varchar](1) NULL,
	[XUBNAME] [varchar](12) NULL,
	[BU_LANGU] [varchar](1) NULL,
	[BIRTHDT] [date] NULL,
	[DEATHDT] [date] NULL,
	[PERNO] [decimal](8, 0) NULL,
	[CHILDREN] [decimal](2, 0) NULL,
	[MEM_HOUSE] [decimal](2, 0) NULL,
	[PARTGRPTYP] [varchar](4) NULL,
	[NAME_GRP1] [varchar](40) NULL,
	[NAME_GRP2] [varchar](40) NULL,
	[MC_NAME1] [varchar](35) NULL,
	[MC_NAME2] [varchar](35) NULL,
	[CRUSR] [varchar](12) NULL,
	[CRDAT] [date] NULL,
	[CRTIM] [time](7) NULL,
	[CHUSR] [varchar](12) NULL,
	[CHDAT] [date] NULL,
	[CHTIM] [time](7) NULL,
	[PARTNER_GUID] [varchar](32) NULL,
	[ADDRCOMM] [varchar](10) NULL,
	[TD_SWITCH] [varchar](1) NULL,
	[IS_ORG_CENTRE] [varchar](1) NULL,
	[DB_KEY] [varchar](32) NULL,
	[VALID_FROM] [decimal](15, 0) NULL,
	[VALID_TO] [decimal](15, 0) NULL,
	[XPCPT] [varchar](1) NULL,
	[NATPERS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BUT000_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUT000_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[PARTNER] [varchar](10) NULL,
	[TYPE] [varchar](1) NULL,
	[BPKIND] [varchar](4) NULL,
	[BU_GROUP] [varchar](4) NULL,
	[BPEXT] [varchar](20) NULL,
	[BU_SORT1] [varchar](20) NULL,
	[BU_SORT2] [varchar](20) NULL,
	[SOURCE] [varchar](4) NULL,
	[TITLE] [varchar](4) NULL,
	[XDELE] [varchar](1) NULL,
	[XBLCK] [varchar](1) NULL,
	[AUGRP] [varchar](4) NULL,
	[TITLE_LET] [varchar](50) NULL,
	[BU_LOGSYS] [varchar](10) NULL,
	[CONTACT] [varchar](1) NULL,
	[NOT_RELEASED] [varchar](1) NULL,
	[NOT_LG_COMPETENT] [varchar](1) NULL,
	[PRINT_MODE] [varchar](1) NULL,
	[BP_EEW_DUMMY] [varchar](1) NULL,
	[NAME_ORG1] [varchar](40) NULL,
	[NAME_ORG2] [varchar](40) NULL,
	[NAME_ORG3] [varchar](40) NULL,
	[NAME_ORG4] [varchar](40) NULL,
	[LEGAL_ENTY] [varchar](2) NULL,
	[IND_SECTOR] [varchar](10) NULL,
	[LEGAL_ORG] [varchar](2) NULL,
	[FOUND_DAT] [date] NULL,
	[LIQUID_DAT] [date] NULL,
	[LOCATION_1] [decimal](7, 0) NULL,
	[LOCATION_2] [decimal](5, 0) NULL,
	[LOCATION_3] [decimal](1, 0) NULL,
	[NAME_LAST] [varchar](40) NULL,
	[NAME_FIRST] [varchar](40) NULL,
	[NAME_LST2] [varchar](40) NULL,
	[NAME_LAST2] [varchar](40) NULL,
	[NAMEMIDDLE] [varchar](40) NULL,
	[TITLE_ACA1] [varchar](4) NULL,
	[TITLE_ACA2] [varchar](4) NULL,
	[TITLE_ROYL] [varchar](4) NULL,
	[PREFIX1] [varchar](4) NULL,
	[PREFIX2] [varchar](4) NULL,
	[NAME1_TEXT] [varchar](80) NULL,
	[NICKNAME] [varchar](40) NULL,
	[INITIALS] [varchar](10) NULL,
	[NAMEFORMAT] [varchar](2) NULL,
	[NAMCOUNTRY] [varchar](3) NULL,
	[LANGU_CORR] [varchar](1) NULL,
	[XSEXM] [varchar](1) NULL,
	[XSEXF] [varchar](1) NULL,
	[BIRTHPL] [varchar](40) NULL,
	[MARST] [varchar](1) NULL,
	[EMPLO] [varchar](35) NULL,
	[JOBGR] [varchar](4) NULL,
	[NATIO] [varchar](3) NULL,
	[CNTAX] [varchar](3) NULL,
	[CNDSC] [varchar](3) NULL,
	[PERSNUMBER] [varchar](10) NULL,
	[XSEXU] [varchar](1) NULL,
	[XUBNAME] [varchar](12) NULL,
	[BU_LANGU] [varchar](1) NULL,
	[BIRTHDT] [date] NULL,
	[DEATHDT] [date] NULL,
	[PERNO] [decimal](8, 0) NULL,
	[CHILDREN] [decimal](2, 0) NULL,
	[MEM_HOUSE] [decimal](2, 0) NULL,
	[PARTGRPTYP] [varchar](4) NULL,
	[NAME_GRP1] [varchar](40) NULL,
	[NAME_GRP2] [varchar](40) NULL,
	[MC_NAME1] [varchar](35) NULL,
	[MC_NAME2] [varchar](35) NULL,
	[CRUSR] [varchar](12) NULL,
	[CRDAT] [date] NULL,
	[CRTIM] [time](7) NULL,
	[CHUSR] [varchar](12) NULL,
	[CHDAT] [date] NULL,
	[CHTIM] [time](7) NULL,
	[PARTNER_GUID] [varchar](32) NULL,
	[ADDRCOMM] [varchar](10) NULL,
	[TD_SWITCH] [varchar](1) NULL,
	[IS_ORG_CENTRE] [varchar](1) NULL,
	[DB_KEY] [varchar](32) NULL,
	[VALID_FROM] [decimal](15, 0) NULL,
	[VALID_TO] [decimal](15, 0) NULL,
	[XPCPT] [varchar](1) NULL,
	[NATPERS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CABN]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CABN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ATNAM] [varchar](30) NULL,
	[ATIDN] [varchar](2) NULL,
	[ATFOR] [varchar](4) NULL,
	[ANZST] [int] NULL,
	[ANZDZ] [int] NULL,
	[ATVOR] [varchar](1) NULL,
	[ATSCH] [varchar](30) NULL,
	[ATKLE] [varchar](1) NULL,
	[ATKON] [varchar](5) NULL,
	[ATEND] [varchar](1) NULL,
	[ATAEN] [varchar](1) NULL,
	[ATKLA] [varchar](10) NULL,
	[ATERF] [varchar](1) NULL,
	[ATEIN] [varchar](1) NULL,
	[ATAME] [varchar](1) NULL,
	[ATWME] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[ATDIM] [int] NULL,
	[ATGLO] [varchar](1) NULL,
	[ATGLA] [varchar](1) NULL,
	[ATINT] [varchar](1) NULL,
	[ATUNS] [varchar](1) NULL,
	[ATSON] [varchar](1) NULL,
	[ATTAB] [varchar](30) NULL,
	[ATFEL] [varchar](30) NULL,
	[ATTEI] [varchar](30) NULL,
	[ATPRT] [varchar](30) NULL,
	[ATPRR] [varchar](40) NULL,
	[ATPRF] [varchar](30) NULL,
	[ATWRD] [varchar](1) NULL,
	[ATFOD] [varchar](1) NULL,
	[ATHIE] [varchar](1) NULL,
	[ATDEX] [decimal](1, 0) NULL,
	[ATFGA] [varchar](1) NULL,
	[ATVSC] [varchar](1) NULL,
	[ANAME] [varchar](12) NULL,
	[ADATU] [date] NULL,
	[VNAME] [varchar](12) NULL,
	[VDATU] [date] NULL,
	[ATXAC] [varchar](1) NULL,
	[ATYAC] [varchar](1) NULL,
	[ATMST] [varchar](1) NULL,
	[ATWSO] [varchar](1) NULL,
	[ATBSO] [varchar](1) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[ATWRI] [varchar](1) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKVR] [varchar](2) NULL,
	[DOKTL] [varchar](3) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[ATINP] [varchar](1) NULL,
	[ATVIE] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[KATALOGART] [varchar](1) NULL,
	[AUSWAHLMGE] [varchar](8) NULL,
	[ATHKA] [varchar](1) NULL,
	[ATHKO] [varchar](1) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[ATTOL] [varchar](1) NULL,
	[ATZUS] [varchar](1) NULL,
	[ATVPL] [varchar](1) NULL,
	[ATAUTH] [varchar](3) NULL,
	[COUNTRYGRP] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CABN_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CABN_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ATNAM] [varchar](30) NULL,
	[ATIDN] [varchar](2) NULL,
	[ATFOR] [varchar](4) NULL,
	[ANZST] [int] NULL,
	[ANZDZ] [int] NULL,
	[ATVOR] [varchar](1) NULL,
	[ATSCH] [varchar](30) NULL,
	[ATKLE] [varchar](1) NULL,
	[ATKON] [varchar](5) NULL,
	[ATEND] [varchar](1) NULL,
	[ATAEN] [varchar](1) NULL,
	[ATKLA] [varchar](10) NULL,
	[ATERF] [varchar](1) NULL,
	[ATEIN] [varchar](1) NULL,
	[ATAME] [varchar](1) NULL,
	[ATWME] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[ATDIM] [int] NULL,
	[ATGLO] [varchar](1) NULL,
	[ATGLA] [varchar](1) NULL,
	[ATINT] [varchar](1) NULL,
	[ATUNS] [varchar](1) NULL,
	[ATSON] [varchar](1) NULL,
	[ATTAB] [varchar](30) NULL,
	[ATFEL] [varchar](30) NULL,
	[ATTEI] [varchar](30) NULL,
	[ATPRT] [varchar](30) NULL,
	[ATPRR] [varchar](40) NULL,
	[ATPRF] [varchar](30) NULL,
	[ATWRD] [varchar](1) NULL,
	[ATFOD] [varchar](1) NULL,
	[ATHIE] [varchar](1) NULL,
	[ATDEX] [decimal](1, 0) NULL,
	[ATFGA] [varchar](1) NULL,
	[ATVSC] [varchar](1) NULL,
	[ANAME] [varchar](12) NULL,
	[ADATU] [date] NULL,
	[VNAME] [varchar](12) NULL,
	[VDATU] [date] NULL,
	[ATXAC] [varchar](1) NULL,
	[ATYAC] [varchar](1) NULL,
	[ATMST] [varchar](1) NULL,
	[ATWSO] [varchar](1) NULL,
	[ATBSO] [varchar](1) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[ATWRI] [varchar](1) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKVR] [varchar](2) NULL,
	[DOKTL] [varchar](3) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[ATINP] [varchar](1) NULL,
	[ATVIE] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[KATALOGART] [varchar](1) NULL,
	[AUSWAHLMGE] [varchar](8) NULL,
	[ATHKA] [varchar](1) NULL,
	[ATHKO] [varchar](1) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[ATTOL] [varchar](1) NULL,
	[ATZUS] [varchar](1) NULL,
	[ATVPL] [varchar](1) NULL,
	[ATAUTH] [varchar](3) NULL,
	[COUNTRYGRP] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CABNT]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CABNT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[SPRAS] [varchar](1) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ATBEZ] [varchar](30) NULL,
	[ATUE1] [varchar](30) NULL,
	[ATUE2] [varchar](30) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CABNT_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CABNT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[SPRAS] [varchar](1) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ATBEZ] [varchar](30) NULL,
	[ATUE1] [varchar](30) NULL,
	[ATUE2] [varchar](30) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGPL_PROJECT]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGPL_PROJECT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NOT NULL,
	[EXTERNAL_ID] [varchar](24) NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
	[PRIORITY] [decimal](3, 0) NULL,
	[ACTUALSTART] [decimal](15, 0) NULL,
	[ACTUALFINISH] [decimal](15, 0) NULL,
	[PLANSTART] [decimal](15, 0) NULL,
	[PLANFINISH] [decimal](15, 0) NULL,
	[COMPLETION] [decimal](3, 0) NULL,
	[MILESTONE] [varchar](1) NULL,
	[CONSTRAINT_TYPE] [varchar](1) NULL,
	[CONSTRAINT_TIME] [decimal](15, 0) NULL,
	[CREATED_BY] [varchar](12) NULL,
	[CREATED_ON] [date] NULL,
	[CREATED_IN_BW] [varchar](1) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[CHANGED_ON] [date] NULL,
	[UPDATED_IN_BW] [varchar](1) NULL,
	[BWIDENTIFIER] [decimal](8, 0) NULL,
	[PLANGROUP] [varchar](4) NULL,
	[LATEST_START] [decimal](15, 0) NULL,
	[LATEST_FINISH] [decimal](15, 0) NULL,
	[TOTAL_FLOAT] [decimal](8, 2) NULL,
	[DURATION] [decimal](8, 2) NULL,
	[DURATION_UNIT] [varchar](3) NULL,
	[CALENDAR_ID] [varchar](2) NULL,
	[CONSTR_TYPE_FIN] [varchar](1) NULL,
	[CONSTR_TIME_FIN] [decimal](15, 0) NULL,
	[APPLICATION] [varchar](3) NULL,
	[FORECAST_START] [decimal](15, 0) NULL,
	[FORECAST_FINISH] [decimal](15, 0) NULL,
 CONSTRAINT [PK_CGPL_PROJECT] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGPL_TEXT]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGPL_TEXT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NOT NULL,
	[LANGU] [varchar](1) NOT NULL,
	[TEXT_GUID] [varchar](32) NULL,
	[TEXT1] [varchar](40) NULL,
	[TEXTU] [varchar](40) NULL,
 CONSTRAINT [PK_CGPL_TEXT] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 5:42:59 PM ******/
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
/****** Object:  Table [dbo].[CRM_JCDS]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRM_JCDS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJNR] [varchar](32) NOT NULL,
	[STAT] [varchar](5) NOT NULL,
	[CHGNR] [decimal](3, 0) NOT NULL,
	[USNAM] [varchar](12) NULL,
	[UDATE] [date] NULL,
	[UTIME] [time](7) NULL,
	[CDTCODE] [varchar](20) NULL,
	[INACT] [varchar](1) NULL,
	[CHIND] [varchar](1) NULL,
 CONSTRAINT [PK_CRM_JCDS] PRIMARY KEY CLUSTERED 
(
	[OBJNR] ASC,
	[STAT] ASC,
	[CHGNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRM_JEST]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRM_JEST](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJNR] [varchar](32) NOT NULL,
	[STAT] [varchar](5) NOT NULL,
	[INACT] [varchar](1) NULL,
	[CHGNR] [decimal](3, 0) NULL,
 CONSTRAINT [PK_CRM_JEST] PRIMARY KEY CLUSTERED 
(
	[OBJNR] ASC,
	[STAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRM_JSTO]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRM_JSTO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJNR] [varchar](32) NOT NULL,
	[OBTYP] [varchar](3) NULL,
	[STSMA] [varchar](8) NULL,
	[CHGKZ] [varchar](1) NULL,
	[CHGNR] [decimal](3, 0) NULL,
 CONSTRAINT [PK_CRM_JSTO] PRIMARY KEY CLUSTERED 
(
	[OBJNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRM_MKTPL_ATTR]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRM_MKTPL_ATTR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NOT NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[CAMP_TYPE] [varchar](4) NULL,
	[CHANNEL] [varchar](4) NULL,
	[RESPONSIBLE] [varchar](32) NULL,
	[SMARTFORM] [varchar](30) NULL,
	[ADRESS_ID] [varchar](12) NULL,
	[SCRIPT] [varchar](32) NULL,
	[SHORTCUT] [varchar](4) NULL,
	[MAIL_FORM] [varchar](30) NULL,
	[FAX_FORM] [varchar](30) NULL,
	[PRINT_ID] [varchar](12) NULL,
	[SEND_PARTNER] [varchar](10) NULL,
	[SMS_FORM] [varchar](30) NULL,
	[TACTICS] [varchar](4) NULL,
	[OBJECTIVE] [varchar](4) NULL,
	[AUTH_GROUP] [varchar](4) NULL,
	[ORIG_SYSTEM] [varchar](1) NULL,
	[SPICE_SCRIPT] [varchar](32) NULL,
	[ACTION_PROFILE] [varchar](30) NULL,
	[CAMPAIGN_LINK] [varchar](32) NULL,
	[CURRENCY] [varchar](5) NULL,
	[NO_R3_INT] [varchar](1) NULL,
	[MKT_ORG] [varchar](14) NULL,
	[FILE_EXPORT_FORM] [varchar](30) NULL,
	[CPT_TYPE] [varchar](2) NULL,
	[SURVEYID] [varchar](32) NULL,
	[SURVEYVERSION] [decimal](10, 0) NULL,
	[RECURRING] [varchar](1) NULL,
	[MKTCA_WFTASK] [varchar](4) NULL,
	[CAMP_PERIOD] [varchar](30) NULL,
	[N_CAMP_PERIODS] [int] NULL,
	[RESPONSE_FLAG] [varchar](1) NULL,
	[ET_CAMPAIGN] [varchar](1) NULL,
	[SCHEDULING_TYPE] [varchar](2) NULL,
	[DELAY] [int] NULL,
	[DELAY_UNIT] [varchar](2) NULL,
	[CAMP_PERIOD_DUR] [int] NULL,
	[TERR_PATH_GUID] [varchar](32) NULL,
	[TERR_PATH_ID] [varchar](30) NULL,
	[INACTIVE] [varchar](1) NULL,
	[CHM_RELEVANT] [varchar](1) NULL,
	[EXCL_IND] [varchar](1) NULL,
	[TIMEZONE_CREATED] [varchar](6) NULL,
	[PROD_PL_BASIS] [decimal](3, 0) NULL,
	[ADI_FLAG] [varchar](1) NULL,
	[ENROLLMENT_REQ] [varchar](1) NULL,
	[REF_TYPE] [varchar](4) NULL,
	[TEMPLATE] [varchar](1) NULL,
	[SMARTDAY_FLAG] [varchar](1) NULL,
	[VALIDATION_PROF] [varchar](30) NULL,
	[DETERM_PROC] [varchar](8) NULL,
	[RATES_ORIGIN] [varchar](1) NULL,
	[USE_FIX_TZ_UTC] [varchar](1) NULL,
	[COMB_TYPE] [varchar](4) NULL,
	[EXECUTION_LANG] [varchar](1) NULL,
	[BP_CORR_LANG_IND] [varchar](1) NULL,
	[NOTIF_PROF] [varchar](10) NULL,
	[MKTPL_HEADER] [varchar](1) NULL,
	[ZZAFLD000002] [varchar](40) NULL,
	[ZZAFLD000003] [varchar](1) NULL,
	[ZZAFLD000004] [varchar](32) NULL,
	[ZZAFLD00000Z] [varchar](45) NULL,
	[ZZASTORE1] [varchar](60) NULL,
	[ZZLATEST_SPEND] [decimal](20, 2) NULL,
	[ZZAFLD000022] [varchar](5) NULL,
	[ZZEDLP_SPEND] [decimal](20, 2) NULL,
	[ZZAFLD000028] [varchar](5) NULL,
	[ZZBRNADNAME] [varchar](60) NULL,
	[ZZAFLD00003I] [decimal](20, 2) NULL,
	[ZZAFLD00003J] [varchar](5) NULL,
	[ZZAFLD00003M] [decimal](20, 2) NULL,
	[ZZAFLD00003N] [varchar](5) NULL,
	[ZZKMFPCT] [decimal](5, 2) NULL,
	[ZZKMF_PER] [decimal](15, 2) NULL,
	[ZZFLD000000] [varchar](1) NULL,
	[ZZ_ACC_NUMBER] [decimal](8, 0) NULL,
	[ZZ_CMP_MIN_V] [decimal](8, 2) NULL,
	[ZZ_CMP_MAX_V] [decimal](8, 2) NULL,
	[ZZMNP] [varchar](20) NULL,
	[ZZ_CMP_DIST_QTY] [decimal](10, 2) NULL,
	[ZZFLD00000H] [varchar](3) NULL,
	[ZZ_BUY_QTY] [decimal](10, 2) NULL,
	[ZZFLD00000I] [varchar](3) NULL,
	[ZZFLD00000K] [varchar](60) NULL,
	[ZZ_CMP_MARKET] [varchar](60) NULL,
	[ZZFLD00001A] [varchar](1) NULL,
	[ZZFUND_REQUIRED] [varchar](1) NULL,
	[ZZUSER_STATUS] [decimal](2, 0) NULL,
	[ZZCUSTOMER_NO] [varchar](18) NULL,
	[ZZCUST_SALES_CR] [varchar](18) NULL,
	[ZZECC_SORG_CR] [varchar](4) NULL,
	[ZZCUST_GROUP_CR] [varchar](2) NULL,
	[ZZCUST_MAT_CR] [varchar](10) NULL,
	[ZZFLD000020] [decimal](10, 3) NULL,
	[ZZACT_TYPE] [varchar](2) NULL,
	[ENROLLMENT_TYPE] [varchar](8) NULL,
	[CHECK_CONSENT] [varchar](1) NULL,
 CONSTRAINT [PK_CRM_MKTPL_ATTR] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRM_MKTPL_TPATTR]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRM_MKTPL_TPATTR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NOT NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[BP_GUID] [varchar](32) NULL,
	[NODE_GUID] [varchar](32) NULL,
	[SALES_ORG] [varchar](14) NULL,
	[DIS_CHANNEL] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[BPAT_TYPE] [varchar](3) NULL,
	[DEAL_GUID] [varchar](32) NULL,
	[TARGETGRP_GUID] [varchar](32) NULL,
	[TGRP_OWNER_GUID] [varchar](32) NULL,
	[ACC_PL_GUID] [varchar](32) NULL,
	[PPG_STATUS] [varchar](1) NULL,
	[NO_UPLIFT_IND] [varchar](1) NULL,
	[INDIRECT_IND] [varchar](1) NULL,
	[SALES_ORG_RESP] [varchar](14) NULL,
	[VOLUME_ORIGIN] [varchar](1) NULL,
 CONSTRAINT [PK_CRM_MKTPL_TPATTR] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRMC_MKTPL_CTYPT]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRMC_MKTPL_CTYPT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[CAMP_TYPE] [varchar](4) NULL,
	[CAMP_TYPETX] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRMC_MKTPL_CTYPT_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRMC_MKTPL_CTYPT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[CAMP_TYPE] [varchar](4) NULL,
	[CAMP_TYPETX] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRMD_MKTPL_DATE]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRMD_MKTPL_DATE](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[GUID] [varchar](32) NOT NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[TASK_GUID] [varchar](32) NULL,
	[DATE_ID] [decimal](2, 0) NULL,
	[START_DATE] [decimal](15, 0) NULL,
	[END_DATE] [decimal](15, 0) NULL,
	[OBJECT_CLASS] [varchar](3) NULL,
	[REF_DATE_GUID] [varchar](32) NULL,
	[REL_START] [varchar](2) NULL,
	[REL_START_OFFSET] [decimal](8, 2) NULL,
	[REL_START_UNIT] [varchar](2) NULL,
	[REL_RANGE_DUR] [decimal](8, 2) NULL,
	[REL_RANGE_UNIT] [varchar](2) NULL,
	[MKTPL_DATERANGE] [varchar](1) NULL,
 CONSTRAINT [PK_CRMD_MKTPL_DATE] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRMD_MKTPL_OPER]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRMD_MKTPL_OPER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NOT NULL,
	[GUID] [varchar](32) NOT NULL,
	[OPERATION_ID] [varchar](1) NULL,
	[MKTELEM_GUID] [varchar](32) NULL,
	[EXTERNAL_ID] [varchar](24) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
	[TEMPLATE] [varchar](1) NULL,
	[CREATED_BY] [varchar](12) NULL,
	[CREATED_ON] [date] NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[CHANGED_ON] [date] NULL,
	[DELETED_BY] [varchar](12) NULL,
	[DELETED_ON] [decimal](15, 0) NULL,
 CONSTRAINT [CRMD_MKTPL_OPER_IX] PRIMARY KEY CLUSTERED 
(
	[CLIENT] ASC,
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRMD_MKTPL_OPER_bck]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRMD_MKTPL_OPER_bck](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NOT NULL,
	[GUID] [varchar](32) NOT NULL,
	[OPERATION_ID] [varchar](1) NULL,
	[MKTELEM_GUID] [varchar](32) NULL,
	[EXTERNAL_ID] [varchar](24) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
	[TEMPLATE] [varchar](1) NULL,
	[CREATED_BY] [varchar](12) NULL,
	[CREATED_ON] [date] NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[CHANGED_ON] [date] NULL,
	[DELETED_BY] [varchar](12) NULL,
	[DELETED_ON] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRMD_MKTPL_PAR]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRMD_MKTPL_PAR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NOT NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[TASK_GUID] [varchar](32) NULL,
	[PARSET_GUID] [varchar](32) NULL,
 CONSTRAINT [PK_CRMD_MKTPL_PAR] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DD07T]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DD07T](
	[SOURCE_SYSTEM] [varchar](100) NULL,
	[DOMNAME] [varchar](30) NULL,
	[DDLANGUAGE] [varchar](1) NULL,
	[AS4LOCAL] [varchar](1) NULL,
	[VALPOS] [decimal](4, 0) NULL,
	[AS4VERS] [decimal](4, 0) NULL,
	[DDTEXT] [varchar](60) NULL,
	[DOMVAL_LD] [varchar](10) NULL,
	[DOMVAL_HD] [varchar](10) NULL,
	[DOMVALUE_L] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INOB]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INOB](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[KLART] [varchar](3) NULL,
	[OBTAB] [varchar](30) NULL,
	[OBJEK] [varchar](50) NULL,
	[ROBTAB] [varchar](30) NULL,
	[ROBJEK] [varchar](50) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[STATU] [varchar](1) NULL,
	[CUCOZHL] [decimal](4, 0) NULL,
	[PARENT] [decimal](18, 0) NULL,
	[ROOT] [decimal](18, 0) NULL,
	[EXPERTE] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[TECHS] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INOB_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INOB_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[KLART] [varchar](3) NULL,
	[OBTAB] [varchar](30) NULL,
	[OBJEK] [varchar](50) NULL,
	[ROBTAB] [varchar](30) NULL,
	[ROBJEK] [varchar](50) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[STATU] [varchar](1) NULL,
	[CUCOZHL] [decimal](4, 0) NULL,
	[PARENT] [decimal](18, 0) NULL,
	[ROOT] [decimal](18, 0) NULL,
	[EXPERTE] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[TECHS] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLAH]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLAH](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[KLART] [varchar](3) NULL,
	[CLASS] [varchar](18) NULL,
	[STATU] [varchar](1) NULL,
	[KLAGR] [varchar](10) NULL,
	[BGRSE] [varchar](3) NULL,
	[BGRKL] [varchar](3) NULL,
	[BGRKP] [varchar](3) NULL,
	[ANAME] [varchar](12) NULL,
	[ADATU] [date] NULL,
	[VNAME] [varchar](12) NULL,
	[VDATU] [date] NULL,
	[VONDT] [date] NULL,
	[BISDT] [date] NULL,
	[ANZUO] [decimal](5, 0) NULL,
	[PRAUS] [varchar](1) NULL,
	[SICHT] [varchar](10) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKTL] [varchar](3) NULL,
	[DOKVR] [varchar](2) NULL,
	[DINKZ] [varchar](1) NULL,
	[NNORM] [varchar](10) NULL,
	[NORMN] [varchar](20) NULL,
	[NORMB] [varchar](70) NULL,
	[NRMT1] [varchar](70) NULL,
	[NRMT2] [varchar](70) NULL,
	[AUSGD] [date] NULL,
	[VERSD] [date] NULL,
	[VERSI] [decimal](2, 0) NULL,
	[LEIST] [varchar](20) NULL,
	[VERWE] [varchar](1) NULL,
	[SPART] [varchar](2) NULL,
	[LREF3] [varchar](3) NULL,
	[WWSKZ] [varchar](1) NULL,
	[WWSSI] [varchar](1) NULL,
	[POTPR] [varchar](1) NULL,
	[CLOBK] [varchar](1) NULL,
	[CLMUL] [varchar](1) NULL,
	[CVIEW] [varchar](10) NULL,
	[DISST] [varchar](3) NULL,
	[MEINS] [varchar](3) NULL,
	[CLMOD] [varchar](1) NULL,
	[VWSTL] [varchar](1) NULL,
	[VWPLA] [varchar](1) NULL,
	[CLALT] [varchar](1) NULL,
	[LBREI] [decimal](3, 0) NULL,
	[BNAME] [varchar](20) NULL,
	[MAXBL] [varchar](18) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[LOCLA] [varchar](1) NULL,
	[KATALOG] [varchar](30) NULL,
	[KDOKAZ] [varchar](1) NULL,
	[GENRKZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLAH_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLAH_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[KLART] [varchar](3) NULL,
	[CLASS] [varchar](18) NULL,
	[STATU] [varchar](1) NULL,
	[KLAGR] [varchar](10) NULL,
	[BGRSE] [varchar](3) NULL,
	[BGRKL] [varchar](3) NULL,
	[BGRKP] [varchar](3) NULL,
	[ANAME] [varchar](12) NULL,
	[ADATU] [date] NULL,
	[VNAME] [varchar](12) NULL,
	[VDATU] [date] NULL,
	[VONDT] [date] NULL,
	[BISDT] [date] NULL,
	[ANZUO] [decimal](5, 0) NULL,
	[PRAUS] [varchar](1) NULL,
	[SICHT] [varchar](10) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKTL] [varchar](3) NULL,
	[DOKVR] [varchar](2) NULL,
	[DINKZ] [varchar](1) NULL,
	[NNORM] [varchar](10) NULL,
	[NORMN] [varchar](20) NULL,
	[NORMB] [varchar](70) NULL,
	[NRMT1] [varchar](70) NULL,
	[NRMT2] [varchar](70) NULL,
	[AUSGD] [date] NULL,
	[VERSD] [date] NULL,
	[VERSI] [decimal](2, 0) NULL,
	[LEIST] [varchar](20) NULL,
	[VERWE] [varchar](1) NULL,
	[SPART] [varchar](2) NULL,
	[LREF3] [varchar](3) NULL,
	[WWSKZ] [varchar](1) NULL,
	[WWSSI] [varchar](1) NULL,
	[POTPR] [varchar](1) NULL,
	[CLOBK] [varchar](1) NULL,
	[CLMUL] [varchar](1) NULL,
	[CVIEW] [varchar](10) NULL,
	[DISST] [varchar](3) NULL,
	[MEINS] [varchar](3) NULL,
	[CLMOD] [varchar](1) NULL,
	[VWSTL] [varchar](1) NULL,
	[VWPLA] [varchar](1) NULL,
	[CLALT] [varchar](1) NULL,
	[LBREI] [decimal](3, 0) NULL,
	[BNAME] [varchar](20) NULL,
	[MAXBL] [varchar](18) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[LOCLA] [varchar](1) NULL,
	[KATALOG] [varchar](30) NULL,
	[KDOKAZ] [varchar](1) NULL,
	[GENRKZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KSML]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KSML](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[POSNR] [decimal](3, 0) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ABTEI] [varchar](10) NULL,
	[DINKB] [varchar](3) NULL,
	[HERKU] [varchar](10) NULL,
	[IMERK] [decimal](10, 0) NULL,
	[OMERK] [decimal](10, 0) NULL,
	[KLART] [varchar](3) NULL,
	[RELEV] [varchar](1) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[VMERK] [varchar](1) NULL,
	[DPLEN] [decimal](3, 0) NULL,
	[OFFST] [int] NULL,
	[BLLIN] [decimal](2, 0) NULL,
	[DPTXT] [varchar](1) NULL,
	[CUSTR] [varchar](40) NULL,
	[JUSTR] [varchar](1) NULL,
	[COLOR] [varchar](1) NULL,
	[INTSF] [varchar](1) NULL,
	[INVER] [varchar](1) NULL,
	[CKBOX] [int] NULL,
	[INPUT] [int] NULL,
	[AMERK] [decimal](10, 0) NULL,
	[MKENN] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KSML_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KSML_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[POSNR] [decimal](3, 0) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ABTEI] [varchar](10) NULL,
	[DINKB] [varchar](3) NULL,
	[HERKU] [varchar](10) NULL,
	[IMERK] [decimal](10, 0) NULL,
	[OMERK] [decimal](10, 0) NULL,
	[KLART] [varchar](3) NULL,
	[RELEV] [varchar](1) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[VMERK] [varchar](1) NULL,
	[DPLEN] [decimal](3, 0) NULL,
	[OFFST] [int] NULL,
	[BLLIN] [decimal](2, 0) NULL,
	[DPTXT] [varchar](1) NULL,
	[CUSTR] [varchar](40) NULL,
	[JUSTR] [varchar](1) NULL,
	[COLOR] [varchar](1) NULL,
	[INTSF] [varchar](1) NULL,
	[INVER] [varchar](1) NULL,
	[CKBOX] [int] NULL,
	[INPUT] [int] NULL,
	[AMERK] [decimal](10, 0) NULL,
	[MKENN] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KSSK]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KSSK](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJEK] [varchar](50) NULL,
	[MAFID] [varchar](1) NULL,
	[KLART] [varchar](3) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ZAEHL] [int] NULL,
	[STATU] [varchar](1) NULL,
	[STDCL] [varchar](1) NULL,
	[REKRI] [varchar](1) NULL,
	[AENNR] [varchar](12) NULL,
	[DATUV] [date] NULL,
	[LKENZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KSSK_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KSSK_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJEK] [varchar](50) NULL,
	[MAFID] [varchar](1) NULL,
	[KLART] [varchar](3) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[ADZHL] [decimal](4, 0) NULL,
	[ZAEHL] [int] NULL,
	[STATU] [varchar](1) NULL,
	[STDCL] [varchar](1) NULL,
	[REKRI] [varchar](1) NULL,
	[AENNR] [varchar](12) NULL,
	[DATUV] [date] NULL,
	[LKENZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TJ30]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TJ30](
	[SOURCE_SYSTEM] [varchar](100) NULL,
	[MANDT] [varchar](3) NULL,
	[STSMA] [varchar](8) NULL,
	[ESTAT] [varchar](5) NULL,
	[INIST] [varchar](1) NULL,
	[STONR] [decimal](2, 0) NULL,
	[HSONR] [decimal](2, 0) NULL,
	[NSONR] [decimal](2, 0) NULL,
	[LINEP] [decimal](2, 0) NULL,
	[STATP] [decimal](2, 0) NULL,
	[BERSL] [varchar](8) NULL,
	[CRM_VRGNG] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TJ30T]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TJ30T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STSMA] [varchar](8) NULL,
	[ESTAT] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[TXT04] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL,
	[LTEXT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TJ30T_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TJ30T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STSMA] [varchar](8) NULL,
	[ESTAT] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[TXT04] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL,
	[LTEXT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZMNS_PRODUCN_BOM]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZMNS_PRODUCN_BOM](
	[MANDT] [varchar](3) NULL,
	[ZZ_PROD_GUID] [varchar](32) NULL,
	[ZZ_COMP_GUID] [varchar](32) NULL,
	[ZZ_SALES_ORG] [varchar](14) NULL,
	[ZZ_DIS_CHANNEL] [varchar](2) NULL,
	[ZZ_DIVISION] [varchar](2) NULL,
	[ZZ_PRODUCT] [varchar](40) NULL,
	[ZZ_COMPONENT] [varchar](40) NULL,
	[ZZ_NUMBER_UNITS] [varchar](15) NULL,
	[ZZ_UOM] [varchar](3) NULL,
	[ZZ_LIST_PRICE] [varchar](15) NULL,
	[ZZ_CURRENCY] [varchar](5) NULL,
	[ZZ_PRICE_START] [date] NULL,
	[ZZ_PRICE_END] [date] NULL,
	[ZZ_ALLOCATION] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZV_PTNR_PRORANGE]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZV_PTNR_PRORANGE](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NULL,
	[PRP_ID] [varchar](40) NULL,
	[PRODUCT_GUID] [varchar](32) NULL,
	[PRODUCT_ID] [varchar](40) NULL,
	[HIER_NODE_GUID] [varchar](32) NULL,
	[VALID_FROM] [decimal](15, 0) NULL,
	[LISTED_FROM] [decimal](15, 0) NULL,
	[LISTED_TO] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZV_PTNR_PRORANGE_OLD]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZV_PTNR_PRORANGE_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NULL,
	[PRP_ID] [varchar](40) NULL,
	[PRODUCT_GUID] [varchar](32) NULL,
	[PRODUCT_ID] [varchar](40) NULL,
	[HIER_NODE_GUID] [varchar](32) NULL,
	[VALID_FROM] [decimal](15, 0) NULL,
	[LISTED_FROM] [decimal](15, 0) NULL,
	[LISTED_TO] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CRMD_MKTPL_OPER]    Script Date: 11/20/2018 5:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CRMD_MKTPL_OPER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[GUID] [varchar](32) NULL,
	[OPERATION_ID] [varchar](1) NULL,
	[MKTELEM_GUID] [varchar](32) NULL,
	[EXTERNAL_ID] [varchar](24) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
	[TEMPLATE] [varchar](1) NULL,
	[CREATED_BY] [varchar](12) NULL,
	[CREATED_ON] [date] NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[CHANGED_ON] [date] NULL,
	[DELETED_BY] [varchar](12) NULL,
	[DELETED_ON] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AUSP_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AUSP_IX] ON [dbo].[AUSP]
(
	[OBJEK] ASC,
	[ATINN] ASC,
	[ATZHL] ASC,
	[MAFID] ASC,
	[KLART] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AUSP_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AUSP_IX] ON [dbo].[AUSP_OLD]
(
	[OBJEK] ASC,
	[ATINN] ASC,
	[ATZHL] ASC,
	[MAFID] ASC,
	[KLART] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [BUT000_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [BUT000_IX] ON [dbo].[BUT000]
(
	[PARTNER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [BUT000_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [BUT000_IX] ON [dbo].[BUT000_OLD]
(
	[PARTNER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CABN_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CABN_IX] ON [dbo].[CABN]
(
	[ATINN] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CABN_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CABN_IX] ON [dbo].[CABN_OLD]
(
	[ATINN] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CABNT_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CABNT_IX] ON [dbo].[CABNT]
(
	[ATINN] ASC,
	[SPRAS] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CABNT_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CABNT_IX] ON [dbo].[CABNT_OLD]
(
	[ATINN] ASC,
	[SPRAS] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CRMC_MKTPL_CTYPT_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CRMC_MKTPL_CTYPT_IX] ON [dbo].[CRMC_MKTPL_CTYPT]
(
	[LANGU] ASC,
	[CAMP_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CRMC_MKTPL_CTYPT_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CRMC_MKTPL_CTYPT_IX] ON [dbo].[CRMC_MKTPL_CTYPT_OLD]
(
	[LANGU] ASC,
	[CAMP_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INOB_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [INOB_IX] ON [dbo].[INOB]
(
	[CUOBJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INOB_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [INOB_IX] ON [dbo].[INOB_OLD]
(
	[CUOBJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KLAH_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KLAH_IX] ON [dbo].[KLAH]
(
	[CLINT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KLAH_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KLAH_IX] ON [dbo].[KLAH_OLD]
(
	[CLINT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KSML_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KSML_IX] ON [dbo].[KSML]
(
	[CLINT] ASC,
	[POSNR] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KSML_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KSML_IX] ON [dbo].[KSML_OLD]
(
	[CLINT] ASC,
	[POSNR] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KSSK_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KSSK_IX] ON [dbo].[KSSK]
(
	[OBJEK] ASC,
	[MAFID] ASC,
	[KLART] ASC,
	[CLINT] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KSSK_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KSSK_IX] ON [dbo].[KSSK_OLD]
(
	[OBJEK] ASC,
	[MAFID] ASC,
	[KLART] ASC,
	[CLINT] ASC,
	[ADZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TJ30T_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TJ30T_IX] ON [dbo].[TJ30T]
(
	[STSMA] ASC,
	[ESTAT] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TJ30T_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TJ30T_IX] ON [dbo].[TJ30T_OLD]
(
	[STSMA] ASC,
	[ESTAT] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ZV_PTNR_PRORANGE_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE NONCLUSTERED INDEX [ZV_PTNR_PRORANGE_IX] ON [dbo].[ZV_PTNR_PRORANGE]
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ZV_PTNR_PRORANGE_IX]    Script Date: 11/20/2018 5:42:59 PM ******/
CREATE NONCLUSTERED INDEX [ZV_PTNR_PRORANGE_IX] ON [dbo].[ZV_PTNR_PRORANGE_OLD]
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [KNA_CRM] SET  READ_WRITE 
GO
