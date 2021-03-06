USE [master]
GO
/****** Object:  Database [KEU_BW]    Script Date: 11/20/2018 6:21:41 AM ******/
CREATE DATABASE [KEU_BW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KEU_BW', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KEU_BW.mdf' , SIZE = 3123200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KEU_BW_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KEU_BW_log.ldf' , SIZE = 870400KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KEU_BW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KEU_BW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KEU_BW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KEU_BW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KEU_BW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KEU_BW] SET ARITHABORT OFF 
GO
ALTER DATABASE [KEU_BW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KEU_BW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KEU_BW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_BW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KEU_BW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KEU_BW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KEU_BW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KEU_BW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KEU_BW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KEU_BW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KEU_BW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KEU_BW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KEU_BW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KEU_BW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KEU_BW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KEU_BW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KEU_BW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KEU_BW] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KEU_BW] SET  MULTI_USER 
GO
ALTER DATABASE [KEU_BW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KEU_BW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KEU_BW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KEU_BW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KEU_BW] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KEU_BW', N'ON'
GO
USE [KEU_BW]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 6:21:42 AM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 6:21:43 AM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 6:21:43 AM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 6:21:43 AM ******/
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 6:21:43 AM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [dbo].[AZOS_PA1000]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOS_PA1000](
	[FISCPER] [decimal](7, 0) NULL,
	[CALDAY] [date] NULL,
	[FISCVARNT] [varchar](2) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CURTYPE] [varchar](2) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[G_UABSMG] [varchar](3) NULL,
	[G_UVVINQ] [varchar](3) NULL,
	[G_UVVQT1] [varchar](3) NULL,
	[G_UVVQT2] [varchar](3) NULL,
	[G_AVVADM] [decimal](17, 2) NULL,
	[G_AVVADV] [decimal](17, 2) NULL,
	[G_AVVBIL] [decimal](17, 2) NULL,
	[G_AVVBRK] [decimal](17, 2) NULL,
	[G_AVVCON] [decimal](17, 2) NULL,
	[G_AVVCOR] [decimal](17, 2) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVDLF] [decimal](17, 2) NULL,
	[G_AVVDLV] [decimal](17, 2) NULL,
	[G_AVVDST] [decimal](17, 2) NULL,
	[G_AVVFIS] [decimal](17, 2) NULL,
	[G_AVVFRE] [decimal](17, 2) NULL,
	[G_AVVFRG] [decimal](17, 2) NULL,
	[G_AVVGRS] [decimal](17, 2) NULL,
	[G_AVVICC] [decimal](17, 2) NULL,
	[G_AVVICF] [decimal](17, 2) NULL,
	[G_AVVICM] [decimal](17, 2) NULL,
	[G_AVVICO] [decimal](17, 2) NULL,
	[G_AVVICR] [decimal](17, 2) NULL,
	[G_AVVICS] [decimal](17, 2) NULL,
	[G_AVVILV] [decimal](17, 2) NULL,
	[G_AVVINL] [decimal](17, 2) NULL,
	[G_AVVINV] [decimal](17, 2) NULL,
	[G_AVVOHF] [decimal](17, 2) NULL,
	[G_AVVOHV] [decimal](17, 2) NULL,
	[G_AVVOTA] [decimal](17, 2) NULL,
	[G_AVVOTH] [decimal](17, 2) NULL,
	[G_AVVOVF] [decimal](17, 2) NULL,
	[G_AVVOVV] [decimal](17, 2) NULL,
	[G_AVVPKD] [decimal](17, 2) NULL,
	[G_AVVPKM] [decimal](17, 2) NULL,
	[G_AVVPLA] [decimal](17, 2) NULL,
	[G_AVVPLO] [decimal](17, 2) NULL,
	[G_AVVPMV] [decimal](17, 2) NULL,
	[G_AVVPOP] [decimal](17, 2) NULL,
	[G_AVVPPV] [decimal](17, 2) NULL,
	[G_AVVPRC] [decimal](17, 2) NULL,
	[G_AVVRAW] [decimal](17, 2) NULL,
	[G_AVVRMV] [decimal](17, 2) NULL,
	[G_AVVRSR] [decimal](17, 2) NULL,
	[G_AVVSAM] [decimal](17, 2) NULL,
	[G_AVVSBR] [decimal](17, 2) NULL,
	[G_AVVSFG] [decimal](17, 2) NULL,
	[G_AVVSLF] [decimal](17, 2) NULL,
	[G_AVVSPA] [decimal](17, 2) NULL,
	[G_AVVSSL] [decimal](17, 2) NULL,
	[G_AVVTPR] [decimal](17, 2) NULL,
	[G_AVVTRD] [decimal](17, 2) NULL,
	[G_AVVTRN] [decimal](17, 2) NULL,
	[G_AVVUSL] [decimal](17, 2) NULL,
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
	[G_AVVX20] [decimal](17, 2) NULL,
	[G_AVVX21] [decimal](17, 2) NULL,
	[G_AVVX22] [decimal](17, 2) NULL,
	[G_AVVX23] [decimal](17, 2) NULL,
	[G_AVVX24] [decimal](17, 2) NULL,
	[G_AVVX25] [decimal](17, 2) NULL,
	[G_AVVX26] [decimal](17, 2) NULL,
	[G_AVVX27] [decimal](17, 2) NULL,
	[G_AVVX28] [decimal](17, 2) NULL,
	[G_AVVX29] [decimal](17, 2) NULL,
	[G_AVVX30] [decimal](17, 2) NULL,
	[G_AVVX31] [decimal](17, 2) NULL,
	[G_AVVX32] [decimal](17, 2) NULL,
	[G_AVVX33] [decimal](17, 2) NULL,
	[G_AVVX34] [decimal](17, 2) NULL,
	[G_AVVX35] [decimal](17, 2) NULL,
	[G_AVVX36] [decimal](17, 2) NULL,
	[G_AVVX37] [decimal](17, 2) NULL,
	[G_AVVX38] [decimal](17, 2) NULL,
	[G_AVVX39] [decimal](17, 2) NULL,
	[G_AVVX40] [decimal](17, 2) NULL,
	[G_AVVX41] [decimal](17, 2) NULL,
	[G_AVVX42] [decimal](17, 2) NULL,
	[G_AVVX43] [decimal](17, 2) NULL,
	[G_AVVX44] [decimal](17, 2) NULL,
	[G_AVVX45] [decimal](17, 2) NULL,
	[G_AVVXT1] [decimal](17, 2) NULL,
	[G_AVVXT2] [decimal](17, 2) NULL,
	[G_AVVXT3] [decimal](17, 2) NULL,
	[G_AVVXT4] [decimal](17, 2) NULL,
	[G_AVVXT5] [decimal](17, 2) NULL,
	[G_AVVXT6] [decimal](17, 2) NULL,
	[G_AVVXT7] [decimal](17, 2) NULL,
	[G_AVVXT8] [decimal](17, 2) NULL,
	[G_AVVXT9] [decimal](17, 2) NULL,
	[G_QABSMG] [decimal](17, 3) NULL,
	[G_QVVINQ] [decimal](17, 3) NULL,
	[G_QVVQT1] [decimal](17, 3) NULL,
	[G_QVVQT2] [decimal](17, 3) NULL,
	[G_QVVQT3] [decimal](17, 3) NULL,
	[G_QVVQT4] [decimal](17, 3) NULL,
	[G_QVVQT5] [decimal](17, 3) NULL,
	[G_QVVQT6] [decimal](17, 3) NULL,
	[G_QVVQT7] [decimal](17, 3) NULL,
	[G_QVVQT8] [decimal](17, 3) NULL,
	[G_QVVQT9] [decimal](17, 3) NULL,
	[G_QVVQTC] [decimal](17, 3) NULL,
	[G_QVVSCS] [decimal](17, 3) NULL,
	[G_QVVSWG] [decimal](17, 3) NULL,
	[G_QVVSWK] [decimal](17, 3) NULL,
	[G_QVVUCS] [decimal](17, 3) NULL,
	[G_QVVUWG] [decimal](17, 3) NULL,
	[G_QVVUWK] [decimal](17, 3) NULL,
	[G_QVVWGK] [decimal](17, 3) NULL,
	[G_QVVWGT] [decimal](17, 3) NULL,
	[G_UVVQT3] [varchar](3) NULL,
	[G_UVVQT4] [varchar](3) NULL,
	[G_UVVQT5] [varchar](3) NULL,
	[G_UVVQT6] [varchar](3) NULL,
	[G_UVVQT7] [varchar](3) NULL,
	[G_UVVQT8] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UVVQTC] [varchar](3) NULL,
	[G_UVVSCS] [varchar](3) NULL,
	[G_UVVSWG] [varchar](3) NULL,
	[G_UVVSWK] [varchar](3) NULL,
	[G_UVVUCS] [varchar](3) NULL,
	[G_UVVUWG] [varchar](3) NULL,
	[G_UVVUWK] [varchar](3) NULL,
	[G_UVVWGK] [varchar](3) NULL,
	[G_UVVWGT] [varchar](3) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[DOC_NUM] [varchar](10) NULL,
	[PSTNG_DATE] [date] NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[/BIC/Z_ACTMGR] [varchar](10) NULL,
	[/BIC/Z_CHAIN] [varchar](12) NULL,
	[BILL_ITEM] [decimal](6, 0) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[VERSION] [varchar](3) NULL,
	[MATL_GRP_2] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[MATL_GRP_5] [varchar](3) NULL,
	[PART_PRCTR] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[PROV_GROUP] [varchar](2) NULL,
	[REBATE_GRP] [varchar](2) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[COORDER] [varchar](12) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[GI_DATE] [date] NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[G_CWWTYP] [varchar](18) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[/BIC/Z_SLSKGS] [decimal](17, 3) NULL,
	[NT_WT_KG] [decimal](17, 3) NULL,
	[/BIC/Z_UNSKGS] [decimal](17, 3) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[/BIC/ZTNETKIL] [decimal](17, 3) NULL,
	[/BIC/Z_TNETCAS] [decimal](17, 3) NULL,
	[/BIC/Z_NETINVA] [decimal](17, 2) NULL,
	[/BIC/Z_PALLET] [decimal](17, 3) NULL,
	[/BIC/Z_PALLET2] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOS_PA1100]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOS_PA1100](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[CUST_CLASS] [varchar](2) NOT NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[RECORDMODE] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUST_SERV_LVL]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUST_SERV_LVL](
	[SALES_DOC_NBR] [varchar](10) NULL,
	[DELVRY_NBR] [varchar](10) NULL,
	[SOLD_TO_PARTY] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[PLNT] [varchar](4) NULL,
	[SALESORG] [varchar](4) NULL,
	[ACTV_GDS_ISS_DT] [date] NULL,
	[RQST_DELVRY_DT] [date] NULL,
	[ACTL_DELVRY_DT] [date] NULL,
	[FISCPD] [int] NULL,
	[CALWK] [int] NULL,
	[FISC_YR_VARNT] [varchar](2) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CUST_PO_NBR] [varchar](35) NULL,
	[DSCRPNCY_RSN_CODE] [varchar](3) NULL,
	[CMNT] [varchar](16) NULL,
	[RSN_CODE] [varchar](50) NULL,
	[ISS_TYP] [varchar](50) NULL,
	[ISS_CMNT] [varchar](50) NULL,
	[ID_SKU_DOC] [varchar](20) NULL,
	[SKU] [varchar](10) NULL,
	[ALTN_CATG] [varchar](5) NULL,
	[RSN_FOR_RJCT] [varchar](2) NULL,
	[PROD_PLNT] [varchar](4) NULL,
	[LSL_CODE] [varchar](3) NULL,
	[FISCYR] [decimal](4, 0) NULL,
	[FLG] [varchar](1) NULL,
	[OTIF_FLG] [varchar](1) NULL,
	[OTIF_FLG2] [varchar](1) NULL,
	[AGIPD] [int] NULL,
	[AGIYR] [int] NULL,
	[ORG_RQST_DELVRY_DT] [date] NULL,
	[CRE_ON] [date] NULL,
	[FWD_AGNT] [varchar](10) NULL,
	[SHIPMNT_NBR] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[SHIP_TO_PARTY] [varchar](10) NULL,
	[CUST_SUB_SUB_CHNL] [varchar](10) NULL,
	[CUST_SUB_CHNL] [varchar](10) NULL,
	[PLN_TO] [varchar](10) NULL,
	[CUST_CHNL] [varchar](10) NULL,
	[CSE_FILL_RT] [decimal](17, 3) NULL,
	[TRGT_QTY_BASE_UOM] [decimal](17, 3) NULL,
	[CONF_QTY_BASE_UOM] [decimal](17, 3) NULL,
	[SHIPMNT_QTY] [decimal](17, 3) NULL,
	[MISS_VOL_BASE_UOM] [decimal](17, 3) NULL,
	[DSCRPNCY_QTY] [decimal](17, 3) NULL,
	[TOTL_CSE] [decimal](17, 3) NULL,
	[RECV_QTY] [decimal](17, 3) NULL,
	[OTIF_QTY] [decimal](17, 3) NULL,
	[NO_STK] [decimal](17, 3) NULL,
	[DMG] [decimal](17, 3) NULL,
	[REFUSALS] [decimal](17, 3) NULL,
	[EXCL_SL] [decimal](17, 3) NULL,
	[LOADING_ERR] [decimal](17, 3) NULL,
	[OTHR] [decimal](17, 3) NULL,
	[MERGED_DSCRPNCY] [varchar](3) NULL,
	[MEDIUM_DESC] [varchar](40) NULL,
	[PLNT_TXT] [varchar](40) NULL,
	[VNDR_TXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DSCRPNCY]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DSCRPNCY](
	[DSCRPNCY_RSN_CODE] [varchar](3) NOT NULL,
	[DSCRPNCY_RSN] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[DSCRPNCY_RSN_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PZBRDACAT]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PZBRDACAT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[/BIC/ZBRDACAT] [varchar](10) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[/BIC/ZALTCAT] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PZBRDACAT_OLD]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PZBRDACAT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[/BIC/ZBRDACAT] [varchar](10) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[/BIC/ZALTCAT] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TZALTCAT]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TZALTCAT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[/BIC/ZALTCAT] [varchar](5) NULL,
	[LANGU] [varchar](1) NULL,
	[TXTSH] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TZALTCAT_OLD]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TZALTCAT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[/BIC/ZALTCAT] [varchar](5) NULL,
	[LANGU] [varchar](1) NULL,
	[TXTSH] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOS_PA1000]    Script Date: 11/20/2018 6:21:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOS_PA1000](
	[FISCPER] [decimal](7, 0) NULL,
	[CALDAY] [date] NULL,
	[FISCVARNT] [varchar](2) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CURTYPE] [varchar](2) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[G_UABSMG] [varchar](3) NULL,
	[G_UVVINQ] [varchar](3) NULL,
	[G_UVVQT1] [varchar](3) NULL,
	[G_UVVQT2] [varchar](3) NULL,
	[G_AVVADM] [decimal](17, 2) NULL,
	[G_AVVADV] [decimal](17, 2) NULL,
	[G_AVVBIL] [decimal](17, 2) NULL,
	[G_AVVBRK] [decimal](17, 2) NULL,
	[G_AVVCON] [decimal](17, 2) NULL,
	[G_AVVCOR] [decimal](17, 2) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVDLF] [decimal](17, 2) NULL,
	[G_AVVDLV] [decimal](17, 2) NULL,
	[G_AVVDST] [decimal](17, 2) NULL,
	[G_AVVFIS] [decimal](17, 2) NULL,
	[G_AVVFRE] [decimal](17, 2) NULL,
	[G_AVVFRG] [decimal](17, 2) NULL,
	[G_AVVGRS] [decimal](17, 2) NULL,
	[G_AVVICC] [decimal](17, 2) NULL,
	[G_AVVICF] [decimal](17, 2) NULL,
	[G_AVVICM] [decimal](17, 2) NULL,
	[G_AVVICO] [decimal](17, 2) NULL,
	[G_AVVICR] [decimal](17, 2) NULL,
	[G_AVVICS] [decimal](17, 2) NULL,
	[G_AVVILV] [decimal](17, 2) NULL,
	[G_AVVINL] [decimal](17, 2) NULL,
	[G_AVVINV] [decimal](17, 2) NULL,
	[G_AVVOHF] [decimal](17, 2) NULL,
	[G_AVVOHV] [decimal](17, 2) NULL,
	[G_AVVOTA] [decimal](17, 2) NULL,
	[G_AVVOTH] [decimal](17, 2) NULL,
	[G_AVVOVF] [decimal](17, 2) NULL,
	[G_AVVOVV] [decimal](17, 2) NULL,
	[G_AVVPKD] [decimal](17, 2) NULL,
	[G_AVVPKM] [decimal](17, 2) NULL,
	[G_AVVPLA] [decimal](17, 2) NULL,
	[G_AVVPLO] [decimal](17, 2) NULL,
	[G_AVVPMV] [decimal](17, 2) NULL,
	[G_AVVPOP] [decimal](17, 2) NULL,
	[G_AVVPPV] [decimal](17, 2) NULL,
	[G_AVVPRC] [decimal](17, 2) NULL,
	[G_AVVRAW] [decimal](17, 2) NULL,
	[G_AVVRMV] [decimal](17, 2) NULL,
	[G_AVVRSR] [decimal](17, 2) NULL,
	[G_AVVSAM] [decimal](17, 2) NULL,
	[G_AVVSBR] [decimal](17, 2) NULL,
	[G_AVVSFG] [decimal](17, 2) NULL,
	[G_AVVSLF] [decimal](17, 2) NULL,
	[G_AVVSPA] [decimal](17, 2) NULL,
	[G_AVVSSL] [decimal](17, 2) NULL,
	[G_AVVTPR] [decimal](17, 2) NULL,
	[G_AVVTRD] [decimal](17, 2) NULL,
	[G_AVVTRN] [decimal](17, 2) NULL,
	[G_AVVUSL] [decimal](17, 2) NULL,
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
	[G_AVVX20] [decimal](17, 2) NULL,
	[G_AVVX21] [decimal](17, 2) NULL,
	[G_AVVX22] [decimal](17, 2) NULL,
	[G_AVVX23] [decimal](17, 2) NULL,
	[G_AVVX24] [decimal](17, 2) NULL,
	[G_AVVX25] [decimal](17, 2) NULL,
	[G_AVVX26] [decimal](17, 2) NULL,
	[G_AVVX27] [decimal](17, 2) NULL,
	[G_AVVX28] [decimal](17, 2) NULL,
	[G_AVVX29] [decimal](17, 2) NULL,
	[G_AVVX30] [decimal](17, 2) NULL,
	[G_AVVX31] [decimal](17, 2) NULL,
	[G_AVVX32] [decimal](17, 2) NULL,
	[G_AVVX33] [decimal](17, 2) NULL,
	[G_AVVX34] [decimal](17, 2) NULL,
	[G_AVVX35] [decimal](17, 2) NULL,
	[G_AVVX36] [decimal](17, 2) NULL,
	[G_AVVX37] [decimal](17, 2) NULL,
	[G_AVVX38] [decimal](17, 2) NULL,
	[G_AVVX39] [decimal](17, 2) NULL,
	[G_AVVX40] [decimal](17, 2) NULL,
	[G_AVVX41] [decimal](17, 2) NULL,
	[G_AVVX42] [decimal](17, 2) NULL,
	[G_AVVX43] [decimal](17, 2) NULL,
	[G_AVVX44] [decimal](17, 2) NULL,
	[G_AVVX45] [decimal](17, 2) NULL,
	[G_AVVXT1] [decimal](17, 2) NULL,
	[G_AVVXT2] [decimal](17, 2) NULL,
	[G_AVVXT3] [decimal](17, 2) NULL,
	[G_AVVXT4] [decimal](17, 2) NULL,
	[G_AVVXT5] [decimal](17, 2) NULL,
	[G_AVVXT6] [decimal](17, 2) NULL,
	[G_AVVXT7] [decimal](17, 2) NULL,
	[G_AVVXT8] [decimal](17, 2) NULL,
	[G_AVVXT9] [decimal](17, 2) NULL,
	[G_QABSMG] [decimal](17, 3) NULL,
	[G_QVVINQ] [decimal](17, 3) NULL,
	[G_QVVQT1] [decimal](17, 3) NULL,
	[G_QVVQT2] [decimal](17, 3) NULL,
	[G_QVVQT3] [decimal](17, 3) NULL,
	[G_QVVQT4] [decimal](17, 3) NULL,
	[G_QVVQT5] [decimal](17, 3) NULL,
	[G_QVVQT6] [decimal](17, 3) NULL,
	[G_QVVQT7] [decimal](17, 3) NULL,
	[G_QVVQT8] [decimal](17, 3) NULL,
	[G_QVVQT9] [decimal](17, 3) NULL,
	[G_QVVQTC] [decimal](17, 3) NULL,
	[G_QVVSCS] [decimal](17, 3) NULL,
	[G_QVVSWG] [decimal](17, 3) NULL,
	[G_QVVSWK] [decimal](17, 3) NULL,
	[G_QVVUCS] [decimal](17, 3) NULL,
	[G_QVVUWG] [decimal](17, 3) NULL,
	[G_QVVUWK] [decimal](17, 3) NULL,
	[G_QVVWGK] [decimal](17, 3) NULL,
	[G_QVVWGT] [decimal](17, 3) NULL,
	[G_UVVQT3] [varchar](3) NULL,
	[G_UVVQT4] [varchar](3) NULL,
	[G_UVVQT5] [varchar](3) NULL,
	[G_UVVQT6] [varchar](3) NULL,
	[G_UVVQT7] [varchar](3) NULL,
	[G_UVVQT8] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UVVQTC] [varchar](3) NULL,
	[G_UVVSCS] [varchar](3) NULL,
	[G_UVVSWG] [varchar](3) NULL,
	[G_UVVSWK] [varchar](3) NULL,
	[G_UVVUCS] [varchar](3) NULL,
	[G_UVVUWG] [varchar](3) NULL,
	[G_UVVUWK] [varchar](3) NULL,
	[G_UVVWGK] [varchar](3) NULL,
	[G_UVVWGT] [varchar](3) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[DOC_NUM] [varchar](10) NULL,
	[PSTNG_DATE] [date] NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[/BIC/Z_ACTMGR] [varchar](10) NULL,
	[/BIC/Z_CHAIN] [varchar](12) NULL,
	[BILL_ITEM] [decimal](6, 0) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[VERSION] [varchar](3) NULL,
	[MATL_GRP_2] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[MATL_GRP_5] [varchar](3) NULL,
	[PART_PRCTR] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[PROV_GROUP] [varchar](2) NULL,
	[REBATE_GRP] [varchar](2) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[COORDER] [varchar](12) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[GI_DATE] [date] NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[G_CWWTYP] [varchar](18) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[/BIC/Z_SLSKGS] [decimal](17, 3) NULL,
	[NT_WT_KG] [decimal](17, 3) NULL,
	[/BIC/Z_UNSKGS] [decimal](17, 3) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[/BIC/ZTNETKIL] [decimal](17, 3) NULL,
	[/BIC/Z_TNETCAS] [decimal](17, 3) NULL,
	[/BIC/Z_NETINVA] [decimal](17, 2) NULL,
	[/BIC/Z_PALLET] [decimal](17, 3) NULL,
	[/BIC/Z_PALLET2] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CSL_PD]    Script Date: 11/20/2018 6:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[CSL_PD](
	[AGIPER] [decimal](7, 0) NULL,
	[DT] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PZBRDACAT_IX]    Script Date: 11/20/2018 6:21:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PZBRDACAT_IX] ON [dbo].[PZBRDACAT]
(
	[/BIC/ZBRDACAT] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PZBRDACAT_IX]    Script Date: 11/20/2018 6:21:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PZBRDACAT_IX] ON [dbo].[PZBRDACAT_OLD]
(
	[/BIC/ZBRDACAT] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TZALTCAT_IX]    Script Date: 11/20/2018 6:21:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TZALTCAT_IX] ON [dbo].[TZALTCAT]
(
	[/BIC/ZALTCAT] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TZALTCAT_IX]    Script Date: 11/20/2018 6:21:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TZALTCAT_IX] ON [dbo].[TZALTCAT_OLD]
(
	[/BIC/ZALTCAT] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOS_PA1000]    Script Date: 11/20/2018 6:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOS_PA1000]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOS_PA1000]
AS
  BEGIN TRANSACTION AZOS_PA1000;
  
  DELETE FROM [KEU_BW].[dbo].[AZOS_PA1000]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KEU_BW].[STG].[AZOS_PA1000])

	 INSERT INTO [KEU_BW].[dbo].[AZOS_PA1000] (
  [FISCPER]
      ,[CALDAY]
      ,[FISCVARNT]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[SOLD_TO]
      ,[MATERIAL]
      ,[CURRENCY]
      ,[CURTYPE]
      ,[DOC_NUMBER]
      ,[SALESORG]
      ,[/BIC/Z_MXDPAL]
      ,[RECORDMODE]
      ,[G_UABSMG]
      ,[G_UVVINQ]
      ,[G_UVVQT1]
      ,[G_UVVQT2]
      ,[G_AVVADM]
      ,[G_AVVADV]
      ,[G_AVVBIL]
      ,[G_AVVBRK]
      ,[G_AVVCON]
      ,[G_AVVCOR]
      ,[G_AVVCSH]
      ,[G_AVVDLF]
      ,[G_AVVDLV]
      ,[G_AVVDST]
      ,[G_AVVFIS]
      ,[G_AVVFRE]
      ,[G_AVVFRG]
      ,[G_AVVGRS]
      ,[G_AVVICC]
      ,[G_AVVICF]
      ,[G_AVVICM]
      ,[G_AVVICO]
      ,[G_AVVICR]
      ,[G_AVVICS]
      ,[G_AVVILV]
      ,[G_AVVINL]
      ,[G_AVVINV]
      ,[G_AVVOHF]
      ,[G_AVVOHV]
      ,[G_AVVOTA]
      ,[G_AVVOTH]
      ,[G_AVVOVF]
      ,[G_AVVOVV]
      ,[G_AVVPKD]
      ,[G_AVVPKM]
      ,[G_AVVPLA]
      ,[G_AVVPLO]
      ,[G_AVVPMV]
      ,[G_AVVPOP]
      ,[G_AVVPPV]
      ,[G_AVVPRC]
      ,[G_AVVRAW]
      ,[G_AVVRMV]
      ,[G_AVVRSR]
      ,[G_AVVSAM]
      ,[G_AVVSBR]
      ,[G_AVVSFG]
      ,[G_AVVSLF]
      ,[G_AVVSPA]
      ,[G_AVVSSL]
      ,[G_AVVTPR]
      ,[G_AVVTRD]
      ,[G_AVVTRN]
      ,[G_AVVUSL]
      ,[G_AVVX10]
      ,[G_AVVX11]
      ,[G_AVVX12]
      ,[G_AVVX13]
      ,[G_AVVX14]
      ,[G_AVVX15]
      ,[G_AVVX16]
      ,[G_AVVX17]
      ,[G_AVVX18]
      ,[G_AVVX19]
      ,[G_AVVX20]
      ,[G_AVVX21]
      ,[G_AVVX22]
      ,[G_AVVX23]
      ,[G_AVVX24]
      ,[G_AVVX25]
      ,[G_AVVX26]
      ,[G_AVVX27]
      ,[G_AVVX28]
      ,[G_AVVX29]
      ,[G_AVVX30]
      ,[G_AVVX31]
      ,[G_AVVX32]
      ,[G_AVVX33]
      ,[G_AVVX34]
      ,[G_AVVX35]
      ,[G_AVVX36]
      ,[G_AVVX37]
      ,[G_AVVX38]
      ,[G_AVVX39]
      ,[G_AVVX40]
      ,[G_AVVX41]
      ,[G_AVVX42]
      ,[G_AVVX43]
      ,[G_AVVX44]
      ,[G_AVVX45]
      ,[G_AVVXT1]
      ,[G_AVVXT2]
      ,[G_AVVXT3]
      ,[G_AVVXT4]
      ,[G_AVVXT5]
      ,[G_AVVXT6]
      ,[G_AVVXT7]
      ,[G_AVVXT8]
      ,[G_AVVXT9]
      ,[G_QABSMG]
      ,[G_QVVINQ]
      ,[G_QVVQT1]
      ,[G_QVVQT2]
      ,[G_QVVQT3]
      ,[G_QVVQT4]
      ,[G_QVVQT5]
      ,[G_QVVQT6]
      ,[G_QVVQT7]
      ,[G_QVVQT8]
      ,[G_QVVQT9]
      ,[G_QVVQTC]
      ,[G_QVVSCS]
      ,[G_QVVSWG]
      ,[G_QVVSWK]
      ,[G_QVVUCS]
      ,[G_QVVUWG]
      ,[G_QVVUWK]
      ,[G_QVVWGK]
      ,[G_QVVWGT]
      ,[G_UVVQT3]
      ,[G_UVVQT4]
      ,[G_UVVQT5]
      ,[G_UVVQT6]
      ,[G_UVVQT7]
      ,[G_UVVQT8]
      ,[G_UVVQT9]
      ,[G_UVVQTC]
      ,[G_UVVSCS]
      ,[G_UVVSWG]
      ,[G_UVVSWK]
      ,[G_UVVUCS]
      ,[G_UVVUWG]
      ,[G_UVVUWK]
      ,[G_UVVWGK]
      ,[G_UVVWGT]
      ,[BILL_TYPE]
      ,[MATL_GROUP]
      ,[DOC_NUM]
      ,[PSTNG_DATE]
      ,[VTYPE]
      ,[WBS_ELEMT]
      ,[CALWEEK]
      ,[FISCYEAR]
      ,[/BIC/Z_ACTMGR]
      ,[/BIC/Z_CHAIN]
      ,[BILL_ITEM]
      ,[VALUATION]
      ,[MATL_GRP_1]
      ,[VERSION]
      ,[MATL_GRP_2]
      ,[MATL_GRP_3]
      ,[MATL_GRP_4]
      ,[MATL_GRP_5]
      ,[PART_PRCTR]
      ,[PLANT]
      ,[PROD_HIER]
      ,[PROFIT_CTR]
      ,[PROV_GROUP]
      ,[REBATE_GRP]
      ,[REC_TYPE]
      ,[SALES_DIST]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[S_ORD_ITEM]
      ,[BUS_AREA]
      ,[CHRT_ACCTS]
      ,[COMP_CODE]
      ,[COORDER]
      ,[COSTELMNT]
      ,[CO_AREA]
      ,[CUST_CLASS]
      ,[CUST_GROUP]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[GI_DATE]
      ,[G_CWWBRD]
      ,[G_CWWCTG]
      ,[G_CWWTYP]
      ,[ITEM_CATEG]
      ,[SHIP_TO]
      ,[/BIC/Z_SLSKGS]
      ,[NT_WT_KG]
      ,[/BIC/Z_UNSKGS]
      ,[/BIC/Z_MXDFLG]
      ,[/BIC/ZTNETKIL]
      ,[/BIC/Z_TNETCAS]
      ,[/BIC/Z_NETINVA]
      ,[/BIC/Z_PALLET]
      ,[/BIC/Z_PALLET2])

	  (SELECT
	  [FISCPER]
      ,[CALDAY]
      ,[FISCVARNT]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[SOLD_TO]
      ,[MATERIAL]
      ,[CURRENCY]
      ,[CURTYPE]
      ,[DOC_NUMBER]
      ,[SALESORG]
      ,[/BIC/Z_MXDPAL]
      ,[RECORDMODE]
      ,[G_UABSMG]
      ,[G_UVVINQ]
      ,[G_UVVQT1]
      ,[G_UVVQT2]
      ,[G_AVVADM]
      ,[G_AVVADV]
      ,[G_AVVBIL]
      ,[G_AVVBRK]
      ,[G_AVVCON]
      ,[G_AVVCOR]
      ,[G_AVVCSH]
      ,[G_AVVDLF]
      ,[G_AVVDLV]
      ,[G_AVVDST]
      ,[G_AVVFIS]
      ,[G_AVVFRE]
      ,[G_AVVFRG]
      ,[G_AVVGRS]
      ,[G_AVVICC]
      ,[G_AVVICF]
      ,[G_AVVICM]
      ,[G_AVVICO]
      ,[G_AVVICR]
      ,[G_AVVICS]
      ,[G_AVVILV]
      ,[G_AVVINL]
      ,[G_AVVINV]
      ,[G_AVVOHF]
      ,[G_AVVOHV]
      ,[G_AVVOTA]
      ,[G_AVVOTH]
      ,[G_AVVOVF]
      ,[G_AVVOVV]
      ,[G_AVVPKD]
      ,[G_AVVPKM]
      ,[G_AVVPLA]
      ,[G_AVVPLO]
      ,[G_AVVPMV]
      ,[G_AVVPOP]
      ,[G_AVVPPV]
      ,[G_AVVPRC]
      ,[G_AVVRAW]
      ,[G_AVVRMV]
      ,[G_AVVRSR]
      ,[G_AVVSAM]
      ,[G_AVVSBR]
      ,[G_AVVSFG]
      ,[G_AVVSLF]
      ,[G_AVVSPA]
      ,[G_AVVSSL]
      ,[G_AVVTPR]
      ,[G_AVVTRD]
      ,[G_AVVTRN]
      ,[G_AVVUSL]
      ,[G_AVVX10]
      ,[G_AVVX11]
      ,[G_AVVX12]
      ,[G_AVVX13]
      ,[G_AVVX14]
      ,[G_AVVX15]
      ,[G_AVVX16]
      ,[G_AVVX17]
      ,[G_AVVX18]
      ,[G_AVVX19]
      ,[G_AVVX20]
      ,[G_AVVX21]
      ,[G_AVVX22]
      ,[G_AVVX23]
      ,[G_AVVX24]
      ,[G_AVVX25]
      ,[G_AVVX26]
      ,[G_AVVX27]
      ,[G_AVVX28]
      ,[G_AVVX29]
      ,[G_AVVX30]
      ,[G_AVVX31]
      ,[G_AVVX32]
      ,[G_AVVX33]
      ,[G_AVVX34]
      ,[G_AVVX35]
      ,[G_AVVX36]
      ,[G_AVVX37]
      ,[G_AVVX38]
      ,[G_AVVX39]
      ,[G_AVVX40]
      ,[G_AVVX41]
      ,[G_AVVX42]
      ,[G_AVVX43]
      ,[G_AVVX44]
      ,[G_AVVX45]
      ,[G_AVVXT1]
      ,[G_AVVXT2]
      ,[G_AVVXT3]
      ,[G_AVVXT4]
      ,[G_AVVXT5]
      ,[G_AVVXT6]
      ,[G_AVVXT7]
      ,[G_AVVXT8]
      ,[G_AVVXT9]
      ,[G_QABSMG]
      ,[G_QVVINQ]
      ,[G_QVVQT1]
      ,[G_QVVQT2]
      ,[G_QVVQT3]
      ,[G_QVVQT4]
      ,[G_QVVQT5]
      ,[G_QVVQT6]
      ,[G_QVVQT7]
      ,[G_QVVQT8]
      ,[G_QVVQT9]
      ,[G_QVVQTC]
      ,[G_QVVSCS]
      ,[G_QVVSWG]
      ,[G_QVVSWK]
      ,[G_QVVUCS]
      ,[G_QVVUWG]
      ,[G_QVVUWK]
      ,[G_QVVWGK]
      ,[G_QVVWGT]
      ,[G_UVVQT3]
      ,[G_UVVQT4]
      ,[G_UVVQT5]
      ,[G_UVVQT6]
      ,[G_UVVQT7]
      ,[G_UVVQT8]
      ,[G_UVVQT9]
      ,[G_UVVQTC]
      ,[G_UVVSCS]
      ,[G_UVVSWG]
      ,[G_UVVSWK]
      ,[G_UVVUCS]
      ,[G_UVVUWG]
      ,[G_UVVUWK]
      ,[G_UVVWGK]
      ,[G_UVVWGT]
      ,[BILL_TYPE]
      ,[MATL_GROUP]
      ,[DOC_NUM]
      ,[PSTNG_DATE]
      ,[VTYPE]
      ,[WBS_ELEMT]
      ,[CALWEEK]
      ,[FISCYEAR]
      ,[/BIC/Z_ACTMGR]
      ,[/BIC/Z_CHAIN]
      ,[BILL_ITEM]
      ,[VALUATION]
      ,[MATL_GRP_1]
      ,[VERSION]
      ,[MATL_GRP_2]
      ,[MATL_GRP_3]
      ,[MATL_GRP_4]
      ,[MATL_GRP_5]
      ,[PART_PRCTR]
      ,[PLANT]
      ,[PROD_HIER]
      ,[PROFIT_CTR]
      ,[PROV_GROUP]
      ,[REBATE_GRP]
      ,[REC_TYPE]
      ,[SALES_DIST]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[S_ORD_ITEM]
      ,[BUS_AREA]
      ,[CHRT_ACCTS]
      ,[COMP_CODE]
      ,[COORDER]
      ,[COSTELMNT]
      ,[CO_AREA]
      ,[CUST_CLASS]
      ,[CUST_GROUP]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[GI_DATE]
      ,[G_CWWBRD]
      ,[G_CWWCTG]
      ,[G_CWWTYP]
      ,[ITEM_CATEG]
      ,[SHIP_TO]
      ,[/BIC/Z_SLSKGS]
      ,[NT_WT_KG]
      ,[/BIC/Z_UNSKGS]
      ,[/BIC/Z_MXDFLG]
      ,[/BIC/ZTNETKIL]
      ,[/BIC/Z_TNETCAS]
      ,[/BIC/Z_NETINVA]
      ,[/BIC/Z_PALLET]
      ,[/BIC/Z_PALLET2]
	  FROM [KEU_BW].[STG].[AZOS_PA1000])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOS_PA1000;
END

COMMIT TRANSACTION AZOS_PA1000;
 







GO
USE [master]
GO
ALTER DATABASE [KEU_BW] SET  READ_WRITE 
GO
