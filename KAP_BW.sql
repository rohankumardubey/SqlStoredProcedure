USE [master]
GO
/****** Object:  Database [KAP_BW]    Script Date: 9/11/2018 5:59:24 AM ******/
CREATE DATABASE [KAP_BW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KAP_BW', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KAP_BW.mdf' , SIZE = 563200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KAP_BW_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KAP_BW_log.ldf' , SIZE = 358400KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KAP_BW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KAP_BW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KAP_BW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KAP_BW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KAP_BW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KAP_BW] SET ARITHABORT OFF 
GO
ALTER DATABASE [KAP_BW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KAP_BW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KAP_BW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KAP_BW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KAP_BW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KAP_BW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KAP_BW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KAP_BW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KAP_BW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KAP_BW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KAP_BW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KAP_BW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KAP_BW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KAP_BW] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [KAP_BW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KAP_BW] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [KAP_BW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KAP_BW] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KAP_BW] SET  MULTI_USER 
GO
ALTER DATABASE [KAP_BW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KAP_BW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KAP_BW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KAP_BW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KAP_BW] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KAP_BW', N'ON'
GO
USE [KAP_BW]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_KAP_TABLEAU_DEVLOPERS]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [US\SQL_KAP_TABLEAU_DEVLOPERS] FOR LOGIN [US\SQL_KAP_TABLEAU_DEVLOPERS]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_KAP_SUPPORT_R]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [US\SQL_DS_KAP_SUPPORT_R] FOR LOGIN [US\SQL_DS_KAP_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 9/11/2018 5:59:25 AM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 9/11/2018 5:59:26 AM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KAP_TABLEAU_DEVLOPERS]
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
/****** Object:  Schema [STG]    Script Date: 9/11/2018 5:59:27 AM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [dbo].[AZOD_PA0100]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_PA0100](
	[FISCPER] [varchar](7) NULL,
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[VERSION] [varchar](3) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[CURTYPE] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[COORDER] [varchar](12) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[G_CWWTYP] [varchar](18) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
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
	[SALES_DIST] [varchar](6) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[SEND_PROC] [varchar](12) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVDLF] [decimal](17, 2) NULL,
	[G_AVVDLV] [decimal](17, 2) NULL,
	[G_AVVFRG] [decimal](17, 2) NULL,
	[G_AVVGRS] [decimal](17, 2) NULL,
	[G_AVVOVF] [decimal](17, 2) NULL,
	[G_AVVOVV] [decimal](17, 2) NULL,
	[G_AVVPRC] [decimal](17, 2) NULL,
	[G_AVVRAW] [decimal](17, 2) NULL,
	[G_AVVSSL] [decimal](17, 2) NULL,
	[G_AVVTRN] [decimal](17, 2) NULL,
	[G_AVVUSL] [decimal](17, 2) NULL,
	[G_AVVX01] [decimal](17, 2) NULL,
	[G_AVVX02] [decimal](17, 2) NULL,
	[G_AVVX03] [decimal](17, 2) NULL,
	[G_AVVX04] [decimal](17, 2) NULL,
	[G_AVVX05] [decimal](17, 2) NULL,
	[G_AVVX06] [decimal](17, 2) NULL,
	[G_AVVX07] [decimal](17, 2) NULL,
	[G_AVVX08] [decimal](17, 2) NULL,
	[G_AVVX09] [decimal](17, 2) NULL,
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
	[G_QVVSWK] [decimal](17, 3) NULL,
	[G_QVVUCS] [decimal](17, 3) NULL,
	[G_QVVUWK] [decimal](17, 3) NULL,
	[G_QVVWGK] [decimal](17, 3) NULL,
	[G_QVVWGT] [decimal](17, 3) NULL,
	[G_UVVINQ] [varchar](3) NULL,
	[G_UVVQT1] [varchar](3) NULL,
	[G_UVVQT2] [varchar](3) NULL,
	[G_UVVQT3] [varchar](3) NULL,
	[G_UVVQT4] [varchar](3) NULL,
	[G_UVVQT5] [varchar](3) NULL,
	[G_UVVQT6] [varchar](3) NULL,
	[G_UVVQT7] [varchar](3) NULL,
	[G_UVVQT8] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UVVQTC] [varchar](3) NULL,
	[G_UVVSCS] [varchar](3) NULL,
	[G_UVVSWK] [varchar](3) NULL,
	[G_UVVUCS] [varchar](3) NULL,
	[G_UVVUWK] [varchar](3) NULL,
	[G_UVVWGK] [varchar](3) NULL,
	[G_UVVWGT] [varchar](3) NULL,
	[GI_DATE] [date] NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[PSTNG_DATE] [date] NULL,
	[G_AVVPKM] [decimal](17, 2) NULL,
	[G_AVVSFG] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_PA0200]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_PA0200](
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[CURTYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BILLTOPRTY] [varchar](10) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/Z_WWPRO] [varchar](10) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[G_CWWVL] [decimal](8, 0) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[/BIC/Z_WWAKT] [varchar](10) NULL,
	[/BIC/Z_VRTNR] [decimal](8, 0) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[/BIC/Z_STOBELN] [varchar](10) NULL,
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
	[COUNTRY] [varchar](3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[EANUPC] [varchar](18) NULL,
	[/BIC/Z_MTVER] [varchar](4) NULL,
	[INDUSTRY] [varchar](4) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[MATL_GRP_2] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[MATL_GRP_5] [varchar](3) NULL,
	[/BIC/Z_UPMAT] [varchar](18) NULL,
	[BPARTNER] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[G_AVVPAD] [decimal](17, 2) NULL,
	[G_AVVFVA] [decimal](17, 2) NULL,
	[G_QVVBQT] [decimal](17, 3) NULL,
	[G_AVVBUR] [decimal](17, 2) NULL,
	[G_AVVBRD] [decimal](17, 2) NULL,
	[G_AVVBPV] [decimal](17, 2) NULL,
	[G_AVVBQV] [decimal](17, 2) NULL,
	[G_AVVBRV] [decimal](17, 2) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVCGS] [decimal](17, 2) NULL,
	[G_AVVUFK] [decimal](17, 2) NULL,
	[G_AVVCR1] [decimal](17, 2) NULL,
	[G_AVVCR4] [decimal](17, 2) NULL,
	[G_AVVCR2] [decimal](17, 2) NULL,
	[G_AVVCR3] [decimal](17, 2) NULL,
	[G_AVVPCM] [decimal](17, 2) NULL,
	[G_AVVKRP] [decimal](17, 2) NULL,
	[G_AVVKR] [decimal](17, 2) NULL,
	[G_AVVKR2] [decimal](17, 2) NULL,
	[G_AVVVDF] [decimal](17, 2) NULL,
	[G_AVVFUL] [decimal](17, 2) NULL,
	[G_AVVFUV] [decimal](17, 2) NULL,
	[G_AVVFUP] [decimal](17, 2) NULL,
	[G_AVVFRT] [decimal](17, 2) NULL,
	[G_AVVAFT] [decimal](17, 2) NULL,
	[G_QVVGWT] [decimal](17, 3) NULL,
	[G_AEINFR] [decimal](17, 2) NULL,
	[G_AVVMDI] [decimal](17, 2) NULL,
	[G_AVVLPV] [decimal](17, 2) NULL,
	[G_AVVLQV] [decimal](17, 2) NULL,
	[G_AVVLRV] [decimal](17, 2) NULL,
	[G_AVVLAB] [decimal](17, 2) NULL,
	[G_AVVLBR] [decimal](17, 2) NULL,
	[G_AVVVLC] [decimal](17, 2) NULL,
	[G_AVVMKP] [decimal](17, 2) NULL,
	[G_AVVMTL] [decimal](17, 2) NULL,
	[G_AVVMAT] [decimal](17, 2) NULL,
	[G_AVVMPV] [decimal](17, 2) NULL,
	[G_AVVPMT] [decimal](17, 2) NULL,
	[G_AVVMQV] [decimal](17, 2) NULL,
	[G_AVVMT2] [decimal](17, 2) NULL,
	[G_AVVMT3] [decimal](17, 2) NULL,
	[G_AVVMT1] [decimal](17, 2) NULL,
	[G_QVVNWT] [decimal](17, 3) NULL,
	[G_AVVNRE] [decimal](17, 2) NULL,
	[G_QVVOQT] [decimal](17, 3) NULL,
	[G_AVVCGT] [decimal](17, 2) NULL,
	[G_AVVAOR] [decimal](17, 2) NULL,
	[G_AVVOHD] [decimal](17, 2) NULL,
	[G_AVVPRB] [decimal](17, 2) NULL,
	[G_AVVPPM] [decimal](17, 2) NULL,
	[G_AVVPRA] [decimal](17, 2) NULL,
	[G_AVVPKA] [decimal](17, 2) NULL,
	[G_AVVPVP] [decimal](17, 2) NULL,
	[G_AVVPSC] [decimal](17, 2) NULL,
	[G_AVVPVV] [decimal](17, 2) NULL,
	[G_AERLOS] [decimal](17, 2) NULL,
	[G_AVVVTK] [decimal](17, 2) NULL,
	[G_AVVTAX] [decimal](17, 2) NULL,
	[G_QVVVOL] [decimal](17, 3) NULL,
	[G_AVVMEA] [decimal](17, 2) NULL,
	[G_QABSMG] [decimal](17, 3) NULL,
	[G_AVVSMP] [decimal](17, 2) NULL,
	[G_AVVBCS] [decimal](17, 2) NULL,
	[G_AVVSBC] [decimal](17, 2) NULL,
	[G_AVVLCS] [decimal](17, 2) NULL,
	[G_AVVSLC] [decimal](17, 2) NULL,
	[G_AVVSMC] [decimal](17, 2) NULL,
	[G_AVVMCS] [decimal](17, 2) NULL,
	[G_AVVCGM] [decimal](17, 2) NULL,
	[G_AVVVBU] [decimal](17, 2) NULL,
	[G_AVVVBP] [decimal](17, 2) NULL,
	[G_AVVVBQ] [decimal](17, 2) NULL,
	[G_AVVVLU] [decimal](17, 2) NULL,
	[G_AVVVLP] [decimal](17, 2) NULL,
	[G_AVVVLQ] [decimal](17, 2) NULL,
	[G_AVVVMP] [decimal](17, 2) NULL,
	[G_AVVVMQ] [decimal](17, 2) NULL,
	[G_AVVVMU] [decimal](17, 2) NULL,
	[G_AVVVRV] [decimal](17, 2) NULL,
	[G_AVVPCU] [decimal](17, 2) NULL,
	[G_AVVVIC] [decimal](17, 2) NULL,
	[G_AVVVSI] [decimal](17, 2) NULL,
	[G_AVVVSR] [decimal](17, 2) NULL,
	[G_AVVVSU] [decimal](17, 2) NULL,
	[G_AVVVST] [decimal](17, 2) NULL,
	[G_AVVVSQ] [decimal](17, 2) NULL,
	[G_AVVVSN] [decimal](17, 2) NULL,
	[G_AVVVSS] [decimal](17, 2) NULL,
	[G_AVVVSO] [decimal](17, 2) NULL,
	[G_AVVVSG] [decimal](17, 2) NULL,
	[G_AVVVSV] [decimal](17, 2) NULL,
	[G_AVVVSM] [decimal](17, 2) NULL,
	[G_AVVVSP] [decimal](17, 2) NULL,
	[G_AVVVSL] [decimal](17, 2) NULL,
	[G_AVVVSH] [decimal](17, 2) NULL,
	[G_AVVVSW] [decimal](17, 2) NULL,
	[G_AVVVSC] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[G_UVVBQT] [varchar](3) NULL,
	[G_UVVGWT] [varchar](3) NULL,
	[G_UVVNWT] [varchar](3) NULL,
	[G_UVVOQT] [varchar](3) NULL,
	[G_UVVVOL] [varchar](3) NULL,
	[G_UABSMG] [varchar](3) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[G_CWWPG1] [varchar](5) NULL,
	[G_CWWPG2] [varchar](10) NULL,
	[G_CWWPG3] [varchar](18) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[SEND_PROC] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_PA0400]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_PA0400](
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[VERSION] [varchar](3) NULL,
	[CURTYPE] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[G_AVVPAD] [decimal](17, 2) NULL,
	[G_AVVFVA] [decimal](17, 2) NULL,
	[G_QVVBQT] [decimal](17, 3) NULL,
	[G_AVVBUR] [decimal](17, 2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BILLTOPRTY] [varchar](10) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[COUNTRY] [varchar](3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[EANUPC] [varchar](18) NULL,
	[/BIC/Z_MTVER] [varchar](4) NULL,
	[INDUSTRY] [varchar](4) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[MATL_GRP_2] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[MATL_GRP_5] [varchar](3) NULL,
	[/BIC/Z_UPMAT] [varchar](18) NULL,
	[BPARTNER] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[G_CWWPG1] [varchar](5) NULL,
	[G_CWWPG2] [varchar](10) NULL,
	[G_CWWPG3] [varchar](18) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/Z_WWPRO] [varchar](10) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[G_CWWVL] [decimal](8, 0) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[/BIC/Z_WWAKT] [varchar](10) NULL,
	[/BIC/Z_VRTNR] [decimal](8, 0) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[/BIC/Z_STOBELN] [varchar](10) NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[GI_DATE] [date] NULL,
	[BA_POSNR] [varchar](6) NULL,
	[COORDER] [varchar](12) NULL,
	[PART_PRCTR] [varchar](10) NULL,
	[PSTNG_DATE] [date] NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[SEND_PROC] [varchar](12) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[G_AVVBRD] [decimal](17, 2) NULL,
	[G_AVVBPV] [decimal](17, 2) NULL,
	[G_AVVBQV] [decimal](17, 2) NULL,
	[G_AVVBRV] [decimal](17, 2) NULL,
	[G_AVVCGS] [decimal](17, 2) NULL,
	[G_AVVUFK] [decimal](17, 2) NULL,
	[G_AVVCR1] [decimal](17, 2) NULL,
	[G_AVVCR4] [decimal](17, 2) NULL,
	[G_AVVCR2] [decimal](17, 2) NULL,
	[G_AVVCR3] [decimal](17, 2) NULL,
	[G_AVVPCM] [decimal](17, 2) NULL,
	[G_AVVKRP] [decimal](17, 2) NULL,
	[G_AVVKR] [decimal](17, 2) NULL,
	[G_AVVKR2] [decimal](17, 2) NULL,
	[G_AVVFUL] [decimal](17, 2) NULL,
	[G_AVVFUV] [decimal](17, 2) NULL,
	[G_AVVFUP] [decimal](17, 2) NULL,
	[G_AVVFRT] [decimal](17, 2) NULL,
	[G_AVVAFT] [decimal](17, 2) NULL,
	[G_QVVGWT] [decimal](17, 3) NULL,
	[G_AEINFR] [decimal](17, 2) NULL,
	[G_AVVMDI] [decimal](17, 2) NULL,
	[G_AVVLPV] [decimal](17, 2) NULL,
	[G_AVVLQV] [decimal](17, 2) NULL,
	[G_AVVLRV] [decimal](17, 2) NULL,
	[G_AVVLAB] [decimal](17, 2) NULL,
	[G_AVVLBR] [decimal](17, 2) NULL,
	[G_AVVMKP] [decimal](17, 2) NULL,
	[G_AVVMTL] [decimal](17, 2) NULL,
	[G_AVVMAT] [decimal](17, 2) NULL,
	[G_AVVMPV] [decimal](17, 2) NULL,
	[G_AVVPMT] [decimal](17, 2) NULL,
	[G_AVVMQV] [decimal](17, 2) NULL,
	[G_AVVMT2] [decimal](17, 2) NULL,
	[G_AVVMT3] [decimal](17, 2) NULL,
	[G_AVVMT1] [decimal](17, 2) NULL,
	[G_QVVNWT] [decimal](17, 3) NULL,
	[G_QVVOQT] [decimal](17, 3) NULL,
	[G_AVVCGT] [decimal](17, 2) NULL,
	[G_AVVAOR] [decimal](17, 2) NULL,
	[G_AVVOHD] [decimal](17, 2) NULL,
	[G_AVVPRB] [decimal](17, 2) NULL,
	[G_AVVPPM] [decimal](17, 2) NULL,
	[G_AVVPRA] [decimal](17, 2) NULL,
	[G_AVVPKA] [decimal](17, 2) NULL,
	[G_AVVPVP] [decimal](17, 2) NULL,
	[G_AVVPSC] [decimal](17, 2) NULL,
	[G_AVVPVV] [decimal](17, 2) NULL,
	[G_AERLOS] [decimal](17, 2) NULL,
	[G_AVVVTK] [decimal](17, 2) NULL,
	[G_AVVTAX] [decimal](17, 2) NULL,
	[G_QVVVOL] [decimal](17, 3) NULL,
	[G_AVVMEA] [decimal](17, 2) NULL,
	[G_QABSMG] [decimal](17, 3) NULL,
	[G_AVVSMP] [decimal](17, 2) NULL,
	[G_AVVBCS] [decimal](17, 2) NULL,
	[G_AVVSBC] [decimal](17, 2) NULL,
	[G_AVVLCS] [decimal](17, 2) NULL,
	[G_AVVSLC] [decimal](17, 2) NULL,
	[G_AVVSMC] [decimal](17, 2) NULL,
	[G_AVVMCS] [decimal](17, 2) NULL,
	[G_AVVCGM] [decimal](17, 2) NULL,
	[G_AVVVBU] [decimal](17, 2) NULL,
	[G_AVVVBP] [decimal](17, 2) NULL,
	[G_AVVVBQ] [decimal](17, 2) NULL,
	[G_AVVVLU] [decimal](17, 2) NULL,
	[G_AVVVLP] [decimal](17, 2) NULL,
	[G_AVVVLQ] [decimal](17, 2) NULL,
	[G_AVVVMP] [decimal](17, 2) NULL,
	[G_AVVVMQ] [decimal](17, 2) NULL,
	[G_AVVVMU] [decimal](17, 2) NULL,
	[G_AVVVRV] [decimal](17, 2) NULL,
	[G_AVVPCU] [decimal](17, 2) NULL,
	[G_AVVVSI] [decimal](17, 2) NULL,
	[G_AVVVSR] [decimal](17, 2) NULL,
	[G_AVVVSU] [decimal](17, 2) NULL,
	[G_AVVVST] [decimal](17, 2) NULL,
	[G_AVVVSQ] [decimal](17, 2) NULL,
	[G_AVVVSN] [decimal](17, 2) NULL,
	[G_AVVVSS] [decimal](17, 2) NULL,
	[G_AVVVSO] [decimal](17, 2) NULL,
	[G_AVVVSG] [decimal](17, 2) NULL,
	[G_AVVVSV] [decimal](17, 2) NULL,
	[G_AVVVSM] [decimal](17, 2) NULL,
	[G_AVVVSP] [decimal](17, 2) NULL,
	[G_AVVVSL] [decimal](17, 2) NULL,
	[G_AVVVSH] [decimal](17, 2) NULL,
	[G_AVVVSW] [decimal](17, 2) NULL,
	[G_AVVVSC] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[G_UVVBQT] [varchar](3) NULL,
	[G_UVVGWT] [varchar](3) NULL,
	[G_UVVNWT] [varchar](3) NULL,
	[G_UVVOQT] [varchar](3) NULL,
	[G_UVVVOL] [varchar](3) NULL,
	[G_UABSMG] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZOD_PA0700]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZOD_PA0700](
	[FISCPER] [varchar](7) NULL,
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[VERSION] [varchar](3) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[CURTYPE] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[COORDER] [varchar](12) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[G_CWWTYP] [varchar](18) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
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
	[SALES_DIST] [varchar](6) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[SEND_PROC] [varchar](12) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVDLF] [decimal](17, 2) NULL,
	[G_AVVDLV] [decimal](17, 2) NULL,
	[G_AVVFRG] [decimal](17, 2) NULL,
	[G_AVVGRS] [decimal](17, 2) NULL,
	[G_AVVOVF] [decimal](17, 2) NULL,
	[G_AVVOVV] [decimal](17, 2) NULL,
	[G_AVVPRC] [decimal](17, 2) NULL,
	[G_AVVRAW] [decimal](17, 2) NULL,
	[G_AVVSSL] [decimal](17, 2) NULL,
	[G_AVVTRN] [decimal](17, 2) NULL,
	[G_AVVUSL] [decimal](17, 2) NULL,
	[G_AVVX01] [decimal](17, 2) NULL,
	[G_AVVX02] [decimal](17, 2) NULL,
	[G_AVVX03] [decimal](17, 2) NULL,
	[G_AVVX04] [decimal](17, 2) NULL,
	[G_AVVX05] [decimal](17, 2) NULL,
	[G_AVVX06] [decimal](17, 2) NULL,
	[G_AVVX07] [decimal](17, 2) NULL,
	[G_AVVX08] [decimal](17, 2) NULL,
	[G_AVVX09] [decimal](17, 2) NULL,
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
	[G_QVVSWK] [decimal](17, 3) NULL,
	[G_QVVUCS] [decimal](17, 3) NULL,
	[G_QVVUWK] [decimal](17, 3) NULL,
	[G_QVVWGK] [decimal](17, 3) NULL,
	[G_QVVWGT] [decimal](17, 3) NULL,
	[G_UVVINQ] [varchar](3) NULL,
	[G_UVVQT1] [varchar](3) NULL,
	[G_UVVQT2] [varchar](3) NULL,
	[G_UVVQT3] [varchar](3) NULL,
	[G_UVVQT4] [varchar](3) NULL,
	[G_UVVQT5] [varchar](3) NULL,
	[G_UVVQT6] [varchar](3) NULL,
	[G_UVVQT7] [varchar](3) NULL,
	[G_UVVQT8] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UVVQTC] [varchar](3) NULL,
	[G_UVVSCS] [varchar](3) NULL,
	[G_UVVSWK] [varchar](3) NULL,
	[G_UVVUCS] [varchar](3) NULL,
	[G_UVVUWK] [varchar](3) NULL,
	[G_UVVWGK] [varchar](3) NULL,
	[G_UVVWGT] [varchar](3) NULL,
	[GI_DATE] [date] NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[PSTNG_DATE] [date] NULL,
	[G_AVVPKM] [decimal](17, 2) NULL,
	[G_AVVSFG] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[G_AVVX46] [decimal](17, 2) NULL,
	[G_AVVX47] [decimal](17, 2) NULL,
	[G_AVVX48] [decimal](17, 2) NULL,
	[G_AVVX49] [decimal](17, 2) NULL,
	[G_AVVX50] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_PA0100]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_PA0100](
	[FISCPER] [varchar](7) NULL,
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[VERSION] [varchar](3) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[CURTYPE] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[COORDER] [varchar](12) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[G_CWWTYP] [varchar](18) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
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
	[SALES_DIST] [varchar](6) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[SEND_PROC] [varchar](12) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVDLF] [decimal](17, 2) NULL,
	[G_AVVDLV] [decimal](17, 2) NULL,
	[G_AVVFRG] [decimal](17, 2) NULL,
	[G_AVVGRS] [decimal](17, 2) NULL,
	[G_AVVOVF] [decimal](17, 2) NULL,
	[G_AVVOVV] [decimal](17, 2) NULL,
	[G_AVVPRC] [decimal](17, 2) NULL,
	[G_AVVRAW] [decimal](17, 2) NULL,
	[G_AVVSSL] [decimal](17, 2) NULL,
	[G_AVVTRN] [decimal](17, 2) NULL,
	[G_AVVUSL] [decimal](17, 2) NULL,
	[G_AVVX01] [decimal](17, 2) NULL,
	[G_AVVX02] [decimal](17, 2) NULL,
	[G_AVVX03] [decimal](17, 2) NULL,
	[G_AVVX04] [decimal](17, 2) NULL,
	[G_AVVX05] [decimal](17, 2) NULL,
	[G_AVVX06] [decimal](17, 2) NULL,
	[G_AVVX07] [decimal](17, 2) NULL,
	[G_AVVX08] [decimal](17, 2) NULL,
	[G_AVVX09] [decimal](17, 2) NULL,
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
	[G_QVVSWK] [decimal](17, 3) NULL,
	[G_QVVUCS] [decimal](17, 3) NULL,
	[G_QVVUWK] [decimal](17, 3) NULL,
	[G_QVVWGK] [decimal](17, 3) NULL,
	[G_QVVWGT] [decimal](17, 3) NULL,
	[G_UVVINQ] [varchar](3) NULL,
	[G_UVVQT1] [varchar](3) NULL,
	[G_UVVQT2] [varchar](3) NULL,
	[G_UVVQT3] [varchar](3) NULL,
	[G_UVVQT4] [varchar](3) NULL,
	[G_UVVQT5] [varchar](3) NULL,
	[G_UVVQT6] [varchar](3) NULL,
	[G_UVVQT7] [varchar](3) NULL,
	[G_UVVQT8] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UVVQTC] [varchar](3) NULL,
	[G_UVVSCS] [varchar](3) NULL,
	[G_UVVSWK] [varchar](3) NULL,
	[G_UVVUCS] [varchar](3) NULL,
	[G_UVVUWK] [varchar](3) NULL,
	[G_UVVWGK] [varchar](3) NULL,
	[G_UVVWGT] [varchar](3) NULL,
	[GI_DATE] [date] NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[PSTNG_DATE] [date] NULL,
	[G_AVVPKM] [decimal](17, 2) NULL,
	[G_AVVSFG] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_PA0200]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_PA0200](
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[CURTYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BILLTOPRTY] [varchar](10) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/Z_WWPRO] [varchar](10) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[G_CWWVL] [decimal](8, 0) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[/BIC/Z_WWAKT] [varchar](10) NULL,
	[/BIC/Z_VRTNR] [decimal](8, 0) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[/BIC/Z_STOBELN] [varchar](10) NULL,
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
	[COUNTRY] [varchar](3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[EANUPC] [varchar](18) NULL,
	[/BIC/Z_MTVER] [varchar](4) NULL,
	[INDUSTRY] [varchar](4) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[MATL_GRP_2] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[MATL_GRP_5] [varchar](3) NULL,
	[/BIC/Z_UPMAT] [varchar](18) NULL,
	[BPARTNER] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[G_AVVPAD] [decimal](17, 2) NULL,
	[G_AVVFVA] [decimal](17, 2) NULL,
	[G_QVVBQT] [decimal](17, 3) NULL,
	[G_AVVBUR] [decimal](17, 2) NULL,
	[G_AVVBRD] [decimal](17, 2) NULL,
	[G_AVVBPV] [decimal](17, 2) NULL,
	[G_AVVBQV] [decimal](17, 2) NULL,
	[G_AVVBRV] [decimal](17, 2) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVCGS] [decimal](17, 2) NULL,
	[G_AVVUFK] [decimal](17, 2) NULL,
	[G_AVVCR1] [decimal](17, 2) NULL,
	[G_AVVCR4] [decimal](17, 2) NULL,
	[G_AVVCR2] [decimal](17, 2) NULL,
	[G_AVVCR3] [decimal](17, 2) NULL,
	[G_AVVPCM] [decimal](17, 2) NULL,
	[G_AVVKRP] [decimal](17, 2) NULL,
	[G_AVVKR] [decimal](17, 2) NULL,
	[G_AVVKR2] [decimal](17, 2) NULL,
	[G_AVVVDF] [decimal](17, 2) NULL,
	[G_AVVFUL] [decimal](17, 2) NULL,
	[G_AVVFUV] [decimal](17, 2) NULL,
	[G_AVVFUP] [decimal](17, 2) NULL,
	[G_AVVFRT] [decimal](17, 2) NULL,
	[G_AVVAFT] [decimal](17, 2) NULL,
	[G_QVVGWT] [decimal](17, 3) NULL,
	[G_AEINFR] [decimal](17, 2) NULL,
	[G_AVVMDI] [decimal](17, 2) NULL,
	[G_AVVLPV] [decimal](17, 2) NULL,
	[G_AVVLQV] [decimal](17, 2) NULL,
	[G_AVVLRV] [decimal](17, 2) NULL,
	[G_AVVLAB] [decimal](17, 2) NULL,
	[G_AVVLBR] [decimal](17, 2) NULL,
	[G_AVVVLC] [decimal](17, 2) NULL,
	[G_AVVMKP] [decimal](17, 2) NULL,
	[G_AVVMTL] [decimal](17, 2) NULL,
	[G_AVVMAT] [decimal](17, 2) NULL,
	[G_AVVMPV] [decimal](17, 2) NULL,
	[G_AVVPMT] [decimal](17, 2) NULL,
	[G_AVVMQV] [decimal](17, 2) NULL,
	[G_AVVMT2] [decimal](17, 2) NULL,
	[G_AVVMT3] [decimal](17, 2) NULL,
	[G_AVVMT1] [decimal](17, 2) NULL,
	[G_QVVNWT] [decimal](17, 3) NULL,
	[G_AVVNRE] [decimal](17, 2) NULL,
	[G_QVVOQT] [decimal](17, 3) NULL,
	[G_AVVCGT] [decimal](17, 2) NULL,
	[G_AVVAOR] [decimal](17, 2) NULL,
	[G_AVVOHD] [decimal](17, 2) NULL,
	[G_AVVPRB] [decimal](17, 2) NULL,
	[G_AVVPPM] [decimal](17, 2) NULL,
	[G_AVVPRA] [decimal](17, 2) NULL,
	[G_AVVPKA] [decimal](17, 2) NULL,
	[G_AVVPVP] [decimal](17, 2) NULL,
	[G_AVVPSC] [decimal](17, 2) NULL,
	[G_AVVPVV] [decimal](17, 2) NULL,
	[G_AERLOS] [decimal](17, 2) NULL,
	[G_AVVVTK] [decimal](17, 2) NULL,
	[G_AVVTAX] [decimal](17, 2) NULL,
	[G_QVVVOL] [decimal](17, 3) NULL,
	[G_AVVMEA] [decimal](17, 2) NULL,
	[G_QABSMG] [decimal](17, 3) NULL,
	[G_AVVSMP] [decimal](17, 2) NULL,
	[G_AVVBCS] [decimal](17, 2) NULL,
	[G_AVVSBC] [decimal](17, 2) NULL,
	[G_AVVLCS] [decimal](17, 2) NULL,
	[G_AVVSLC] [decimal](17, 2) NULL,
	[G_AVVSMC] [decimal](17, 2) NULL,
	[G_AVVMCS] [decimal](17, 2) NULL,
	[G_AVVCGM] [decimal](17, 2) NULL,
	[G_AVVVBU] [decimal](17, 2) NULL,
	[G_AVVVBP] [decimal](17, 2) NULL,
	[G_AVVVBQ] [decimal](17, 2) NULL,
	[G_AVVVLU] [decimal](17, 2) NULL,
	[G_AVVVLP] [decimal](17, 2) NULL,
	[G_AVVVLQ] [decimal](17, 2) NULL,
	[G_AVVVMP] [decimal](17, 2) NULL,
	[G_AVVVMQ] [decimal](17, 2) NULL,
	[G_AVVVMU] [decimal](17, 2) NULL,
	[G_AVVVRV] [decimal](17, 2) NULL,
	[G_AVVPCU] [decimal](17, 2) NULL,
	[G_AVVVIC] [decimal](17, 2) NULL,
	[G_AVVVSI] [decimal](17, 2) NULL,
	[G_AVVVSR] [decimal](17, 2) NULL,
	[G_AVVVSU] [decimal](17, 2) NULL,
	[G_AVVVST] [decimal](17, 2) NULL,
	[G_AVVVSQ] [decimal](17, 2) NULL,
	[G_AVVVSN] [decimal](17, 2) NULL,
	[G_AVVVSS] [decimal](17, 2) NULL,
	[G_AVVVSO] [decimal](17, 2) NULL,
	[G_AVVVSG] [decimal](17, 2) NULL,
	[G_AVVVSV] [decimal](17, 2) NULL,
	[G_AVVVSM] [decimal](17, 2) NULL,
	[G_AVVVSP] [decimal](17, 2) NULL,
	[G_AVVVSL] [decimal](17, 2) NULL,
	[G_AVVVSH] [decimal](17, 2) NULL,
	[G_AVVVSW] [decimal](17, 2) NULL,
	[G_AVVVSC] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[G_UVVBQT] [varchar](3) NULL,
	[G_UVVGWT] [varchar](3) NULL,
	[G_UVVNWT] [varchar](3) NULL,
	[G_UVVOQT] [varchar](3) NULL,
	[G_UVVVOL] [varchar](3) NULL,
	[G_UABSMG] [varchar](3) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[G_CWWPG1] [varchar](5) NULL,
	[G_CWWPG2] [varchar](10) NULL,
	[G_CWWPG3] [varchar](18) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[SEND_PROC] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_PA0400]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_PA0400](
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[VERSION] [varchar](3) NULL,
	[CURTYPE] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[G_AVVPAD] [decimal](17, 2) NULL,
	[G_AVVFVA] [decimal](17, 2) NULL,
	[G_QVVBQT] [decimal](17, 3) NULL,
	[G_AVVBUR] [decimal](17, 2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BILLTOPRTY] [varchar](10) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[COUNTRY] [varchar](3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[EANUPC] [varchar](18) NULL,
	[/BIC/Z_MTVER] [varchar](4) NULL,
	[INDUSTRY] [varchar](4) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
	[MATL_GRP_2] [varchar](3) NULL,
	[MATL_GRP_3] [varchar](3) NULL,
	[MATL_GRP_4] [varchar](3) NULL,
	[MATL_GRP_5] [varchar](3) NULL,
	[/BIC/Z_UPMAT] [varchar](18) NULL,
	[BPARTNER] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[PLANT] [varchar](4) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[G_CWWPG1] [varchar](5) NULL,
	[G_CWWPG2] [varchar](10) NULL,
	[G_CWWPG3] [varchar](18) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/Z_WWPRO] [varchar](10) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[G_CWWVL] [decimal](8, 0) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[/BIC/Z_WWAKT] [varchar](10) NULL,
	[/BIC/Z_VRTNR] [decimal](8, 0) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[/BIC/Z_STOBELN] [varchar](10) NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[GI_DATE] [date] NULL,
	[BA_POSNR] [varchar](6) NULL,
	[COORDER] [varchar](12) NULL,
	[PART_PRCTR] [varchar](10) NULL,
	[PSTNG_DATE] [date] NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[SEND_PROC] [varchar](12) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[G_AVVBRD] [decimal](17, 2) NULL,
	[G_AVVBPV] [decimal](17, 2) NULL,
	[G_AVVBQV] [decimal](17, 2) NULL,
	[G_AVVBRV] [decimal](17, 2) NULL,
	[G_AVVCGS] [decimal](17, 2) NULL,
	[G_AVVUFK] [decimal](17, 2) NULL,
	[G_AVVCR1] [decimal](17, 2) NULL,
	[G_AVVCR4] [decimal](17, 2) NULL,
	[G_AVVCR2] [decimal](17, 2) NULL,
	[G_AVVCR3] [decimal](17, 2) NULL,
	[G_AVVPCM] [decimal](17, 2) NULL,
	[G_AVVKRP] [decimal](17, 2) NULL,
	[G_AVVKR] [decimal](17, 2) NULL,
	[G_AVVKR2] [decimal](17, 2) NULL,
	[G_AVVFUL] [decimal](17, 2) NULL,
	[G_AVVFUV] [decimal](17, 2) NULL,
	[G_AVVFUP] [decimal](17, 2) NULL,
	[G_AVVFRT] [decimal](17, 2) NULL,
	[G_AVVAFT] [decimal](17, 2) NULL,
	[G_QVVGWT] [decimal](17, 3) NULL,
	[G_AEINFR] [decimal](17, 2) NULL,
	[G_AVVMDI] [decimal](17, 2) NULL,
	[G_AVVLPV] [decimal](17, 2) NULL,
	[G_AVVLQV] [decimal](17, 2) NULL,
	[G_AVVLRV] [decimal](17, 2) NULL,
	[G_AVVLAB] [decimal](17, 2) NULL,
	[G_AVVLBR] [decimal](17, 2) NULL,
	[G_AVVMKP] [decimal](17, 2) NULL,
	[G_AVVMTL] [decimal](17, 2) NULL,
	[G_AVVMAT] [decimal](17, 2) NULL,
	[G_AVVMPV] [decimal](17, 2) NULL,
	[G_AVVPMT] [decimal](17, 2) NULL,
	[G_AVVMQV] [decimal](17, 2) NULL,
	[G_AVVMT2] [decimal](17, 2) NULL,
	[G_AVVMT3] [decimal](17, 2) NULL,
	[G_AVVMT1] [decimal](17, 2) NULL,
	[G_QVVNWT] [decimal](17, 3) NULL,
	[G_QVVOQT] [decimal](17, 3) NULL,
	[G_AVVCGT] [decimal](17, 2) NULL,
	[G_AVVAOR] [decimal](17, 2) NULL,
	[G_AVVOHD] [decimal](17, 2) NULL,
	[G_AVVPRB] [decimal](17, 2) NULL,
	[G_AVVPPM] [decimal](17, 2) NULL,
	[G_AVVPRA] [decimal](17, 2) NULL,
	[G_AVVPKA] [decimal](17, 2) NULL,
	[G_AVVPVP] [decimal](17, 2) NULL,
	[G_AVVPSC] [decimal](17, 2) NULL,
	[G_AVVPVV] [decimal](17, 2) NULL,
	[G_AERLOS] [decimal](17, 2) NULL,
	[G_AVVVTK] [decimal](17, 2) NULL,
	[G_AVVTAX] [decimal](17, 2) NULL,
	[G_QVVVOL] [decimal](17, 3) NULL,
	[G_AVVMEA] [decimal](17, 2) NULL,
	[G_QABSMG] [decimal](17, 3) NULL,
	[G_AVVSMP] [decimal](17, 2) NULL,
	[G_AVVBCS] [decimal](17, 2) NULL,
	[G_AVVSBC] [decimal](17, 2) NULL,
	[G_AVVLCS] [decimal](17, 2) NULL,
	[G_AVVSLC] [decimal](17, 2) NULL,
	[G_AVVSMC] [decimal](17, 2) NULL,
	[G_AVVMCS] [decimal](17, 2) NULL,
	[G_AVVCGM] [decimal](17, 2) NULL,
	[G_AVVVBU] [decimal](17, 2) NULL,
	[G_AVVVBP] [decimal](17, 2) NULL,
	[G_AVVVBQ] [decimal](17, 2) NULL,
	[G_AVVVLU] [decimal](17, 2) NULL,
	[G_AVVVLP] [decimal](17, 2) NULL,
	[G_AVVVLQ] [decimal](17, 2) NULL,
	[G_AVVVMP] [decimal](17, 2) NULL,
	[G_AVVVMQ] [decimal](17, 2) NULL,
	[G_AVVVMU] [decimal](17, 2) NULL,
	[G_AVVVRV] [decimal](17, 2) NULL,
	[G_AVVPCU] [decimal](17, 2) NULL,
	[G_AVVVSI] [decimal](17, 2) NULL,
	[G_AVVVSR] [decimal](17, 2) NULL,
	[G_AVVVSU] [decimal](17, 2) NULL,
	[G_AVVVST] [decimal](17, 2) NULL,
	[G_AVVVSQ] [decimal](17, 2) NULL,
	[G_AVVVSN] [decimal](17, 2) NULL,
	[G_AVVVSS] [decimal](17, 2) NULL,
	[G_AVVVSO] [decimal](17, 2) NULL,
	[G_AVVVSG] [decimal](17, 2) NULL,
	[G_AVVVSV] [decimal](17, 2) NULL,
	[G_AVVVSM] [decimal](17, 2) NULL,
	[G_AVVVSP] [decimal](17, 2) NULL,
	[G_AVVVSL] [decimal](17, 2) NULL,
	[G_AVVVSH] [decimal](17, 2) NULL,
	[G_AVVVSW] [decimal](17, 2) NULL,
	[G_AVVVSC] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[G_UVVBQT] [varchar](3) NULL,
	[G_UVVGWT] [varchar](3) NULL,
	[G_UVVNWT] [varchar](3) NULL,
	[G_UVVOQT] [varchar](3) NULL,
	[G_UVVVOL] [varchar](3) NULL,
	[G_UABSMG] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZOD_PA0700]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZOD_PA0700](
	[FISCPER] [varchar](7) NULL,
	[BA_BELNR] [varchar](10) NULL,
	[CALDAY] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SALESORG] [varchar](4) NULL,
	[VERSION] [varchar](3) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[REF_DOC_NR] [varchar](10) NULL,
	[REF_DOC_IT] [decimal](5, 0) NULL,
	[CURTYPE] [varchar](2) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[COORDER] [varchar](12) NULL,
	[COSTELMNT] [varchar](10) NULL,
	[COSTOBJ] [varchar](12) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CUST_CLASS] [varchar](2) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[DOC_NUMBER] [varchar](10) NULL,
	[G_CWWBRD] [varchar](10) NULL,
	[G_CWWCTG] [varchar](5) NULL,
	[G_CWWTYP] [varchar](18) NULL,
	[ITEM_CATEG] [varchar](4) NULL,
	[MATL_GROUP] [varchar](9) NULL,
	[MATL_GRP_1] [varchar](3) NULL,
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
	[SALES_DIST] [varchar](6) NULL,
	[VTYPE] [decimal](3, 0) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[SEND_CCTR] [varchar](10) NULL,
	[SEND_PROC] [varchar](12) NULL,
	[BA_POSNR] [varchar](6) NULL,
	[VALUATION] [decimal](1, 0) NULL,
	[G_AVVCSH] [decimal](17, 2) NULL,
	[G_AVVDLF] [decimal](17, 2) NULL,
	[G_AVVDLV] [decimal](17, 2) NULL,
	[G_AVVFRG] [decimal](17, 2) NULL,
	[G_AVVGRS] [decimal](17, 2) NULL,
	[G_AVVOVF] [decimal](17, 2) NULL,
	[G_AVVOVV] [decimal](17, 2) NULL,
	[G_AVVPRC] [decimal](17, 2) NULL,
	[G_AVVRAW] [decimal](17, 2) NULL,
	[G_AVVSSL] [decimal](17, 2) NULL,
	[G_AVVTRN] [decimal](17, 2) NULL,
	[G_AVVUSL] [decimal](17, 2) NULL,
	[G_AVVX01] [decimal](17, 2) NULL,
	[G_AVVX02] [decimal](17, 2) NULL,
	[G_AVVX03] [decimal](17, 2) NULL,
	[G_AVVX04] [decimal](17, 2) NULL,
	[G_AVVX05] [decimal](17, 2) NULL,
	[G_AVVX06] [decimal](17, 2) NULL,
	[G_AVVX07] [decimal](17, 2) NULL,
	[G_AVVX08] [decimal](17, 2) NULL,
	[G_AVVX09] [decimal](17, 2) NULL,
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
	[G_QVVSWK] [decimal](17, 3) NULL,
	[G_QVVUCS] [decimal](17, 3) NULL,
	[G_QVVUWK] [decimal](17, 3) NULL,
	[G_QVVWGK] [decimal](17, 3) NULL,
	[G_QVVWGT] [decimal](17, 3) NULL,
	[G_UVVINQ] [varchar](3) NULL,
	[G_UVVQT1] [varchar](3) NULL,
	[G_UVVQT2] [varchar](3) NULL,
	[G_UVVQT3] [varchar](3) NULL,
	[G_UVVQT4] [varchar](3) NULL,
	[G_UVVQT5] [varchar](3) NULL,
	[G_UVVQT6] [varchar](3) NULL,
	[G_UVVQT7] [varchar](3) NULL,
	[G_UVVQT8] [varchar](3) NULL,
	[G_UVVQT9] [varchar](3) NULL,
	[G_UVVQTC] [varchar](3) NULL,
	[G_UVVSCS] [varchar](3) NULL,
	[G_UVVSWK] [varchar](3) NULL,
	[G_UVVUCS] [varchar](3) NULL,
	[G_UVVUWK] [varchar](3) NULL,
	[G_UVVWGK] [varchar](3) NULL,
	[G_UVVWGT] [varchar](3) NULL,
	[GI_DATE] [date] NULL,
	[BA_STO_PNR] [varchar](6) NULL,
	[PSTNG_DATE] [date] NULL,
	[G_AVVPKM] [decimal](17, 2) NULL,
	[G_AVVSFG] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[G_AVVX46] [decimal](17, 2) NULL,
	[G_AVVX47] [decimal](17, 2) NULL,
	[G_AVVX48] [decimal](17, 2) NULL,
	[G_AVVX49] [decimal](17, 2) NULL,
	[G_AVVX50] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_PA0100]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_PA0100]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_PA0100]
AS
  BEGIN TRANSACTION AZOD_PA0100;
  
  DELETE FROM [KAP_BW].[dbo].[AZOD_PA0100]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KAP_BW].[STG].[AZOD_PA0100])

	 INSERT INTO [KAP_BW].[dbo].[AZOD_PA0100] (
  [FISCPER]
      ,[BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[VERSION]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[CURTYPE]
      ,[RECORDMODE]
      ,[BILL_TYPE]
      ,[BUS_AREA]
      ,[CHRT_ACCTS]
      ,[COMP_CODE]
      ,[COORDER]
      ,[COSTELMNT]
      ,[COSTOBJ]
      ,[CO_AREA]
      ,[CUST_CLASS]
      ,[CUST_GROUP]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[DOC_NUMBER]
      ,[G_CWWBRD]
      ,[G_CWWCTG]
      ,[G_CWWTYP]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
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
      ,[SALES_DIST]
      ,[VTYPE]
      ,[WBS_ELEMT]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SHIP_TO]
      ,[S_ORD_ITEM]
      ,[SEND_CCTR]
      ,[SEND_PROC]
      ,[BA_POSNR]
      ,[VALUATION]
      ,[G_AVVCSH]
      ,[G_AVVDLF]
      ,[G_AVVDLV]
      ,[G_AVVFRG]
      ,[G_AVVGRS]
      ,[G_AVVOVF]
      ,[G_AVVOVV]
      ,[G_AVVPRC]
      ,[G_AVVRAW]
      ,[G_AVVSSL]
      ,[G_AVVTRN]
      ,[G_AVVUSL]
      ,[G_AVVX01]
      ,[G_AVVX02]
      ,[G_AVVX03]
      ,[G_AVVX04]
      ,[G_AVVX05]
      ,[G_AVVX06]
      ,[G_AVVX07]
      ,[G_AVVX08]
      ,[G_AVVX09]
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
      ,[G_QVVSWK]
      ,[G_QVVUCS]
      ,[G_QVVUWK]
      ,[G_QVVWGK]
      ,[G_QVVWGT]
      ,[G_UVVINQ]
      ,[G_UVVQT1]
      ,[G_UVVQT2]
      ,[G_UVVQT3]
      ,[G_UVVQT4]
      ,[G_UVVQT5]
      ,[G_UVVQT6]
      ,[G_UVVQT7]
      ,[G_UVVQT8]
      ,[G_UVVQT9]
      ,[G_UVVQTC]
      ,[G_UVVSCS]
      ,[G_UVVSWK]
      ,[G_UVVUCS]
      ,[G_UVVUWK]
      ,[G_UVVWGK]
      ,[G_UVVWGT]
      ,[GI_DATE]
      ,[BA_STO_PNR]
      ,[PSTNG_DATE]
      ,[G_AVVPKM]
      ,[G_AVVSFG]
      ,[CURRENCY])

	  (SELECT
	  [FISCPER]
      ,[BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[VERSION]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[CURTYPE]
      ,[RECORDMODE]
      ,[BILL_TYPE]
      ,[BUS_AREA]
      ,[CHRT_ACCTS]
      ,[COMP_CODE]
      ,[COORDER]
      ,[COSTELMNT]
      ,[COSTOBJ]
      ,[CO_AREA]
      ,[CUST_CLASS]
      ,[CUST_GROUP]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[DOC_NUMBER]
      ,[G_CWWBRD]
      ,[G_CWWCTG]
      ,[G_CWWTYP]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
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
      ,[SALES_DIST]
      ,[VTYPE]
      ,[WBS_ELEMT]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SHIP_TO]
      ,[S_ORD_ITEM]
      ,[SEND_CCTR]
      ,[SEND_PROC]
      ,[BA_POSNR]
      ,[VALUATION]
      ,[G_AVVCSH]
      ,[G_AVVDLF]
      ,[G_AVVDLV]
      ,[G_AVVFRG]
      ,[G_AVVGRS]
      ,[G_AVVOVF]
      ,[G_AVVOVV]
      ,[G_AVVPRC]
      ,[G_AVVRAW]
      ,[G_AVVSSL]
      ,[G_AVVTRN]
      ,[G_AVVUSL]
      ,[G_AVVX01]
      ,[G_AVVX02]
      ,[G_AVVX03]
      ,[G_AVVX04]
      ,[G_AVVX05]
      ,[G_AVVX06]
      ,[G_AVVX07]
      ,[G_AVVX08]
      ,[G_AVVX09]
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
      ,[G_QVVSWK]
      ,[G_QVVUCS]
      ,[G_QVVUWK]
      ,[G_QVVWGK]
      ,[G_QVVWGT]
      ,[G_UVVINQ]
      ,[G_UVVQT1]
      ,[G_UVVQT2]
      ,[G_UVVQT3]
      ,[G_UVVQT4]
      ,[G_UVVQT5]
      ,[G_UVVQT6]
      ,[G_UVVQT7]
      ,[G_UVVQT8]
      ,[G_UVVQT9]
      ,[G_UVVQTC]
      ,[G_UVVSCS]
      ,[G_UVVSWK]
      ,[G_UVVUCS]
      ,[G_UVVUWK]
      ,[G_UVVWGK]
      ,[G_UVVWGT]
      ,[GI_DATE]
      ,[BA_STO_PNR]
      ,[PSTNG_DATE]
      ,[G_AVVPKM]
      ,[G_AVVSFG]
      ,[CURRENCY]
	  FROM [KAP_BW].[STG].[AZOD_PA0100])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_PA0100;
END

COMMIT TRANSACTION AZOD_PA0100;
 







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_PA0200]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_PA0200]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_PA0200]
AS
  BEGIN TRANSACTION AZOD_PA0200;
  
  DELETE FROM [KAP_BW].[dbo].[AZOD_PA0200]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KAP_BW].[STG].[AZOD_PA0200])

	 INSERT INTO [KAP_BW].[dbo].[AZOD_PA0200] (
  [BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[CURTYPE]
      ,[VERSION]
      ,[FISCVARNT]
      ,[RECORDMODE]
      ,[VTYPE]
      ,[VALUATION]
      ,[COMP_CODE]
      ,[BILLTOPRTY]
      ,[BUS_AREA]
      ,[CO_AREA]
      ,[COSTCENTER]
      ,[PROFIT_CTR]
      ,[/BIC/Z_WWPRO]
      ,[SALES_GRP]
      ,[G_CWWVL]
      ,[SEND_CCTR]
      ,[WBS_ELEMT]
      ,[SALES_OFF]
      ,[/BIC/Z_WWAKT]
      ,[/BIC/Z_VRTNR]
      ,[SHIP_TO]
      ,[BILL_TYPE]
      ,[/BIC/Z_STOBELN]
      ,[BA_STO_PNR]
      ,[COSTELMNT]
      ,[CHRT_ACCTS]
      ,[COSTOBJ]
      ,[GI_DATE]
      ,[COORDER]
      ,[PART_PRCTR]
      ,[PSTNG_DATE]
      ,[S_ORD_ITEM]
      ,[DOC_NUMBER]
      ,[COUNTRY]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[EANUPC]
      ,[/BIC/Z_MTVER]
      ,[INDUSTRY]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
      ,[MATL_GRP_2]
      ,[MATL_GRP_3]
      ,[MATL_GRP_4]
      ,[MATL_GRP_5]
      ,[/BIC/Z_UPMAT]
      ,[BPARTNER]
      ,[PAYER]
      ,[PLANT]
      ,[G_AVVPAD]
      ,[G_AVVFVA]
      ,[G_QVVBQT]
      ,[G_AVVBUR]
      ,[G_AVVBRD]
      ,[G_AVVBPV]
      ,[G_AVVBQV]
      ,[G_AVVBRV]
      ,[G_AVVCSH]
      ,[G_AVVCGS]
      ,[G_AVVUFK]
      ,[G_AVVCR1]
      ,[G_AVVCR4]
      ,[G_AVVCR2]
      ,[G_AVVCR3]
      ,[G_AVVPCM]
      ,[G_AVVKRP]
      ,[G_AVVKR]
      ,[G_AVVKR2]
      ,[G_AVVVDF]
      ,[G_AVVFUL]
      ,[G_AVVFUV]
      ,[G_AVVFUP]
      ,[G_AVVFRT]
      ,[G_AVVAFT]
      ,[G_QVVGWT]
      ,[G_AEINFR]
      ,[G_AVVMDI]
      ,[G_AVVLPV]
      ,[G_AVVLQV]
      ,[G_AVVLRV]
      ,[G_AVVLAB]
      ,[G_AVVLBR]
      ,[G_AVVVLC]
      ,[G_AVVMKP]
      ,[G_AVVMTL]
      ,[G_AVVMAT]
      ,[G_AVVMPV]
      ,[G_AVVPMT]
      ,[G_AVVMQV]
      ,[G_AVVMT2]
      ,[G_AVVMT3]
      ,[G_AVVMT1]
      ,[G_QVVNWT]
      ,[G_AVVNRE]
      ,[G_QVVOQT]
      ,[G_AVVCGT]
      ,[G_AVVAOR]
      ,[G_AVVOHD]
      ,[G_AVVPRB]
      ,[G_AVVPPM]
      ,[G_AVVPRA]
      ,[G_AVVPKA]
      ,[G_AVVPVP]
      ,[G_AVVPSC]
      ,[G_AVVPVV]
      ,[G_AERLOS]
      ,[G_AVVVTK]
      ,[G_AVVTAX]
      ,[G_QVVVOL]
      ,[G_AVVMEA]
      ,[G_QABSMG]
      ,[G_AVVSMP]
      ,[G_AVVBCS]
      ,[G_AVVSBC]
      ,[G_AVVLCS]
      ,[G_AVVSLC]
      ,[G_AVVSMC]
      ,[G_AVVMCS]
      ,[G_AVVCGM]
      ,[G_AVVVBU]
      ,[G_AVVVBP]
      ,[G_AVVVBQ]
      ,[G_AVVVLU]
      ,[G_AVVVLP]
      ,[G_AVVVLQ]
      ,[G_AVVVMP]
      ,[G_AVVVMQ]
      ,[G_AVVVMU]
      ,[G_AVVVRV]
      ,[G_AVVPCU]
      ,[G_AVVVIC]
      ,[G_AVVVSI]
      ,[G_AVVVSR]
      ,[G_AVVVSU]
      ,[G_AVVVST]
      ,[G_AVVVSQ]
      ,[G_AVVVSN]
      ,[G_AVVVSS]
      ,[G_AVVVSO]
      ,[G_AVVVSG]
      ,[G_AVVVSV]
      ,[G_AVVVSM]
      ,[G_AVVVSP]
      ,[G_AVVVSL]
      ,[G_AVVVSH]
      ,[G_AVVVSW]
      ,[G_AVVVSC]
      ,[CURRENCY]
      ,[G_UVVBQT]
      ,[G_UVVGWT]
      ,[G_UVVNWT]
      ,[G_UVVOQT]
      ,[G_UVVVOL]
      ,[G_UABSMG]
      ,[PROD_HIER]
      ,[G_CWWPG1]
      ,[G_CWWPG2]
      ,[G_CWWPG3]
      ,[FISCPER]
      ,[FISCYEAR]
      ,[BA_POSNR]
      ,[SEND_PROC])

	  (SELECT
	  [BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[CURTYPE]
      ,[VERSION]
      ,[FISCVARNT]
      ,[RECORDMODE]
      ,[VTYPE]
      ,[VALUATION]
      ,[COMP_CODE]
      ,[BILLTOPRTY]
      ,[BUS_AREA]
      ,[CO_AREA]
      ,[COSTCENTER]
      ,[PROFIT_CTR]
      ,[/BIC/Z_WWPRO]
      ,[SALES_GRP]
      ,[G_CWWVL]
      ,[SEND_CCTR]
      ,[WBS_ELEMT]
      ,[SALES_OFF]
      ,[/BIC/Z_WWAKT]
      ,[/BIC/Z_VRTNR]
      ,[SHIP_TO]
      ,[BILL_TYPE]
      ,[/BIC/Z_STOBELN]
      ,[BA_STO_PNR]
      ,[COSTELMNT]
      ,[CHRT_ACCTS]
      ,[COSTOBJ]
      ,[GI_DATE]
      ,[COORDER]
      ,[PART_PRCTR]
      ,[PSTNG_DATE]
      ,[S_ORD_ITEM]
      ,[DOC_NUMBER]
      ,[COUNTRY]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[EANUPC]
      ,[/BIC/Z_MTVER]
      ,[INDUSTRY]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
      ,[MATL_GRP_2]
      ,[MATL_GRP_3]
      ,[MATL_GRP_4]
      ,[MATL_GRP_5]
      ,[/BIC/Z_UPMAT]
      ,[BPARTNER]
      ,[PAYER]
      ,[PLANT]
      ,[G_AVVPAD]
      ,[G_AVVFVA]
      ,[G_QVVBQT]
      ,[G_AVVBUR]
      ,[G_AVVBRD]
      ,[G_AVVBPV]
      ,[G_AVVBQV]
      ,[G_AVVBRV]
      ,[G_AVVCSH]
      ,[G_AVVCGS]
      ,[G_AVVUFK]
      ,[G_AVVCR1]
      ,[G_AVVCR4]
      ,[G_AVVCR2]
      ,[G_AVVCR3]
      ,[G_AVVPCM]
      ,[G_AVVKRP]
      ,[G_AVVKR]
      ,[G_AVVKR2]
      ,[G_AVVVDF]
      ,[G_AVVFUL]
      ,[G_AVVFUV]
      ,[G_AVVFUP]
      ,[G_AVVFRT]
      ,[G_AVVAFT]
      ,[G_QVVGWT]
      ,[G_AEINFR]
      ,[G_AVVMDI]
      ,[G_AVVLPV]
      ,[G_AVVLQV]
      ,[G_AVVLRV]
      ,[G_AVVLAB]
      ,[G_AVVLBR]
      ,[G_AVVVLC]
      ,[G_AVVMKP]
      ,[G_AVVMTL]
      ,[G_AVVMAT]
      ,[G_AVVMPV]
      ,[G_AVVPMT]
      ,[G_AVVMQV]
      ,[G_AVVMT2]
      ,[G_AVVMT3]
      ,[G_AVVMT1]
      ,[G_QVVNWT]
      ,[G_AVVNRE]
      ,[G_QVVOQT]
      ,[G_AVVCGT]
      ,[G_AVVAOR]
      ,[G_AVVOHD]
      ,[G_AVVPRB]
      ,[G_AVVPPM]
      ,[G_AVVPRA]
      ,[G_AVVPKA]
      ,[G_AVVPVP]
      ,[G_AVVPSC]
      ,[G_AVVPVV]
      ,[G_AERLOS]
      ,[G_AVVVTK]
      ,[G_AVVTAX]
      ,[G_QVVVOL]
      ,[G_AVVMEA]
      ,[G_QABSMG]
      ,[G_AVVSMP]
      ,[G_AVVBCS]
      ,[G_AVVSBC]
      ,[G_AVVLCS]
      ,[G_AVVSLC]
      ,[G_AVVSMC]
      ,[G_AVVMCS]
      ,[G_AVVCGM]
      ,[G_AVVVBU]
      ,[G_AVVVBP]
      ,[G_AVVVBQ]
      ,[G_AVVVLU]
      ,[G_AVVVLP]
      ,[G_AVVVLQ]
      ,[G_AVVVMP]
      ,[G_AVVVMQ]
      ,[G_AVVVMU]
      ,[G_AVVVRV]
      ,[G_AVVPCU]
      ,[G_AVVVIC]
      ,[G_AVVVSI]
      ,[G_AVVVSR]
      ,[G_AVVVSU]
      ,[G_AVVVST]
      ,[G_AVVVSQ]
      ,[G_AVVVSN]
      ,[G_AVVVSS]
      ,[G_AVVVSO]
      ,[G_AVVVSG]
      ,[G_AVVVSV]
      ,[G_AVVVSM]
      ,[G_AVVVSP]
      ,[G_AVVVSL]
      ,[G_AVVVSH]
      ,[G_AVVVSW]
      ,[G_AVVVSC]
      ,[CURRENCY]
      ,[G_UVVBQT]
      ,[G_UVVGWT]
      ,[G_UVVNWT]
      ,[G_UVVOQT]
      ,[G_UVVVOL]
      ,[G_UABSMG]
      ,[PROD_HIER]
      ,[G_CWWPG1]
      ,[G_CWWPG2]
      ,[G_CWWPG3]
      ,[FISCPER]
      ,[FISCYEAR]
      ,[BA_POSNR]
      ,[SEND_PROC]
	  FROM [KAP_BW].[STG].[AZOD_PA0200])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_PA0200;
END

COMMIT TRANSACTION AZOD_PA0200;
 







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_PA0400]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_PA0400]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_PA0400]
AS
  BEGIN TRANSACTION AZOD_PA0400;
  
  DELETE FROM [KAP_BW].[dbo].[AZOD_PA0400]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KAP_BW].[STG].[AZOD_PA0400])

	 INSERT INTO [KAP_BW].[dbo].[AZOD_PA0400] (
  [BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[VERSION]
      ,[CURTYPE]
      ,[RECORDMODE]
      ,[G_AVVPAD]
      ,[G_AVVFVA]
      ,[G_QVVBQT]
      ,[G_AVVBUR]
      ,[FISCYEAR]
      ,[VALUATION]
      ,[VTYPE]
      ,[COMP_CODE]
      ,[BILLTOPRTY]
      ,[BUS_AREA]
      ,[CO_AREA]
      ,[COSTCENTER]
      ,[COUNTRY]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[EANUPC]
      ,[/BIC/Z_MTVER]
      ,[INDUSTRY]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
      ,[MATL_GRP_2]
      ,[MATL_GRP_3]
      ,[MATL_GRP_4]
      ,[MATL_GRP_5]
      ,[/BIC/Z_UPMAT]
      ,[BPARTNER]
      ,[PAYER]
      ,[PLANT]
      ,[PROD_HIER]
      ,[G_CWWPG1]
      ,[G_CWWPG2]
      ,[G_CWWPG3]
      ,[PROFIT_CTR]
      ,[/BIC/Z_WWPRO]
      ,[SALES_GRP]
      ,[G_CWWVL]
      ,[SALES_OFF]
      ,[/BIC/Z_WWAKT]
      ,[/BIC/Z_VRTNR]
      ,[SHIP_TO]
      ,[BILL_TYPE]
      ,[/BIC/Z_STOBELN]
      ,[BA_STO_PNR]
      ,[COSTELMNT]
      ,[CHRT_ACCTS]
      ,[COSTOBJ]
      ,[GI_DATE]
      ,[BA_POSNR]
      ,[COORDER]
      ,[PART_PRCTR]
      ,[PSTNG_DATE]
      ,[S_ORD_ITEM]
      ,[DOC_NUMBER]
      ,[SEND_PROC]
      ,[SEND_CCTR]
      ,[WBS_ELEMT]
      ,[FISCVARNT]
      ,[FISCPER]
      ,[G_AVVBRD]
      ,[G_AVVBPV]
      ,[G_AVVBQV]
      ,[G_AVVBRV]
      ,[G_AVVCGS]
      ,[G_AVVUFK]
      ,[G_AVVCR1]
      ,[G_AVVCR4]
      ,[G_AVVCR2]
      ,[G_AVVCR3]
      ,[G_AVVPCM]
      ,[G_AVVKRP]
      ,[G_AVVKR]
      ,[G_AVVKR2]
      ,[G_AVVFUL]
      ,[G_AVVFUV]
      ,[G_AVVFUP]
      ,[G_AVVFRT]
      ,[G_AVVAFT]
      ,[G_QVVGWT]
      ,[G_AEINFR]
      ,[G_AVVMDI]
      ,[G_AVVLPV]
      ,[G_AVVLQV]
      ,[G_AVVLRV]
      ,[G_AVVLAB]
      ,[G_AVVLBR]
      ,[G_AVVMKP]
      ,[G_AVVMTL]
      ,[G_AVVMAT]
      ,[G_AVVMPV]
      ,[G_AVVPMT]
      ,[G_AVVMQV]
      ,[G_AVVMT2]
      ,[G_AVVMT3]
      ,[G_AVVMT1]
      ,[G_QVVNWT]
      ,[G_QVVOQT]
      ,[G_AVVCGT]
      ,[G_AVVAOR]
      ,[G_AVVOHD]
      ,[G_AVVPRB]
      ,[G_AVVPPM]
      ,[G_AVVPRA]
      ,[G_AVVPKA]
      ,[G_AVVPVP]
      ,[G_AVVPSC]
      ,[G_AVVPVV]
      ,[G_AERLOS]
      ,[G_AVVVTK]
      ,[G_AVVTAX]
      ,[G_QVVVOL]
      ,[G_AVVMEA]
      ,[G_QABSMG]
      ,[G_AVVSMP]
      ,[G_AVVBCS]
      ,[G_AVVSBC]
      ,[G_AVVLCS]
      ,[G_AVVSLC]
      ,[G_AVVSMC]
      ,[G_AVVMCS]
      ,[G_AVVCGM]
      ,[G_AVVVBU]
      ,[G_AVVVBP]
      ,[G_AVVVBQ]
      ,[G_AVVVLU]
      ,[G_AVVVLP]
      ,[G_AVVVLQ]
      ,[G_AVVVMP]
      ,[G_AVVVMQ]
      ,[G_AVVVMU]
      ,[G_AVVVRV]
      ,[G_AVVPCU]
      ,[G_AVVVSI]
      ,[G_AVVVSR]
      ,[G_AVVVSU]
      ,[G_AVVVST]
      ,[G_AVVVSQ]
      ,[G_AVVVSN]
      ,[G_AVVVSS]
      ,[G_AVVVSO]
      ,[G_AVVVSG]
      ,[G_AVVVSV]
      ,[G_AVVVSM]
      ,[G_AVVVSP]
      ,[G_AVVVSL]
      ,[G_AVVVSH]
      ,[G_AVVVSW]
      ,[G_AVVVSC]
      ,[CURRENCY]
      ,[G_UVVBQT]
      ,[G_UVVGWT]
      ,[G_UVVNWT]
      ,[G_UVVOQT]
      ,[G_UVVVOL]
      ,[G_UABSMG])

	  (SELECT
	  [BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[VERSION]
      ,[CURTYPE]
      ,[RECORDMODE]
      ,[G_AVVPAD]
      ,[G_AVVFVA]
      ,[G_QVVBQT]
      ,[G_AVVBUR]
      ,[FISCYEAR]
      ,[VALUATION]
      ,[VTYPE]
      ,[COMP_CODE]
      ,[BILLTOPRTY]
      ,[BUS_AREA]
      ,[CO_AREA]
      ,[COSTCENTER]
      ,[COUNTRY]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[EANUPC]
      ,[/BIC/Z_MTVER]
      ,[INDUSTRY]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
      ,[MATL_GRP_2]
      ,[MATL_GRP_3]
      ,[MATL_GRP_4]
      ,[MATL_GRP_5]
      ,[/BIC/Z_UPMAT]
      ,[BPARTNER]
      ,[PAYER]
      ,[PLANT]
      ,[PROD_HIER]
      ,[G_CWWPG1]
      ,[G_CWWPG2]
      ,[G_CWWPG3]
      ,[PROFIT_CTR]
      ,[/BIC/Z_WWPRO]
      ,[SALES_GRP]
      ,[G_CWWVL]
      ,[SALES_OFF]
      ,[/BIC/Z_WWAKT]
      ,[/BIC/Z_VRTNR]
      ,[SHIP_TO]
      ,[BILL_TYPE]
      ,[/BIC/Z_STOBELN]
      ,[BA_STO_PNR]
      ,[COSTELMNT]
      ,[CHRT_ACCTS]
      ,[COSTOBJ]
      ,[GI_DATE]
      ,[BA_POSNR]
      ,[COORDER]
      ,[PART_PRCTR]
      ,[PSTNG_DATE]
      ,[S_ORD_ITEM]
      ,[DOC_NUMBER]
      ,[SEND_PROC]
      ,[SEND_CCTR]
      ,[WBS_ELEMT]
      ,[FISCVARNT]
      ,[FISCPER]
      ,[G_AVVBRD]
      ,[G_AVVBPV]
      ,[G_AVVBQV]
      ,[G_AVVBRV]
      ,[G_AVVCGS]
      ,[G_AVVUFK]
      ,[G_AVVCR1]
      ,[G_AVVCR4]
      ,[G_AVVCR2]
      ,[G_AVVCR3]
      ,[G_AVVPCM]
      ,[G_AVVKRP]
      ,[G_AVVKR]
      ,[G_AVVKR2]
      ,[G_AVVFUL]
      ,[G_AVVFUV]
      ,[G_AVVFUP]
      ,[G_AVVFRT]
      ,[G_AVVAFT]
      ,[G_QVVGWT]
      ,[G_AEINFR]
      ,[G_AVVMDI]
      ,[G_AVVLPV]
      ,[G_AVVLQV]
      ,[G_AVVLRV]
      ,[G_AVVLAB]
      ,[G_AVVLBR]
      ,[G_AVVMKP]
      ,[G_AVVMTL]
      ,[G_AVVMAT]
      ,[G_AVVMPV]
      ,[G_AVVPMT]
      ,[G_AVVMQV]
      ,[G_AVVMT2]
      ,[G_AVVMT3]
      ,[G_AVVMT1]
      ,[G_QVVNWT]
      ,[G_QVVOQT]
      ,[G_AVVCGT]
      ,[G_AVVAOR]
      ,[G_AVVOHD]
      ,[G_AVVPRB]
      ,[G_AVVPPM]
      ,[G_AVVPRA]
      ,[G_AVVPKA]
      ,[G_AVVPVP]
      ,[G_AVVPSC]
      ,[G_AVVPVV]
      ,[G_AERLOS]
      ,[G_AVVVTK]
      ,[G_AVVTAX]
      ,[G_QVVVOL]
      ,[G_AVVMEA]
      ,[G_QABSMG]
      ,[G_AVVSMP]
      ,[G_AVVBCS]
      ,[G_AVVSBC]
      ,[G_AVVLCS]
      ,[G_AVVSLC]
      ,[G_AVVSMC]
      ,[G_AVVMCS]
      ,[G_AVVCGM]
      ,[G_AVVVBU]
      ,[G_AVVVBP]
      ,[G_AVVVBQ]
      ,[G_AVVVLU]
      ,[G_AVVVLP]
      ,[G_AVVVLQ]
      ,[G_AVVVMP]
      ,[G_AVVVMQ]
      ,[G_AVVVMU]
      ,[G_AVVVRV]
      ,[G_AVVPCU]
      ,[G_AVVVSI]
      ,[G_AVVVSR]
      ,[G_AVVVSU]
      ,[G_AVVVST]
      ,[G_AVVVSQ]
      ,[G_AVVVSN]
      ,[G_AVVVSS]
      ,[G_AVVVSO]
      ,[G_AVVVSG]
      ,[G_AVVVSV]
      ,[G_AVVVSM]
      ,[G_AVVVSP]
      ,[G_AVVVSL]
      ,[G_AVVVSH]
      ,[G_AVVVSW]
      ,[G_AVVVSC]
      ,[CURRENCY]
      ,[G_UVVBQT]
      ,[G_UVVGWT]
      ,[G_UVVNWT]
      ,[G_UVVOQT]
      ,[G_UVVVOL]
      ,[G_UABSMG]
	  FROM [KAP_BW].[STG].[AZOD_PA0400])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_PA0400;
END

COMMIT TRANSACTION AZOD_PA0400;
 







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_AZOD_PA0700]    Script Date: 9/11/2018 5:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_AZOD_PA0700]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_AZOD_PA0700]
AS
  BEGIN TRANSACTION AZOD_PA0700;
  
  DELETE FROM [KAP_BW].[dbo].[AZOD_PA0700]  WHERE FISCPER IN (SELECT DISTINCT FISCPER FROM [KAP_BW].[STG].[AZOD_PA0700])

	 INSERT INTO [KAP_BW].[dbo].[AZOD_PA0700] (
  [FISCPER]
      ,[BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[VERSION]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[CURTYPE]
      ,[RECORDMODE]
      ,[BILL_TYPE]
      ,[BUS_AREA]
      ,[CHRT_ACCTS]
      ,[COMP_CODE]
      ,[COORDER]
      ,[COSTELMNT]
      ,[COSTOBJ]
      ,[CO_AREA]
      ,[CUST_CLASS]
      ,[CUST_GROUP]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[DOC_NUMBER]
      ,[G_CWWBRD]
      ,[G_CWWCTG]
      ,[G_CWWTYP]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
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
      ,[SALES_DIST]
      ,[VTYPE]
      ,[WBS_ELEMT]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SHIP_TO]
      ,[S_ORD_ITEM]
      ,[SEND_CCTR]
      ,[SEND_PROC]
      ,[BA_POSNR]
      ,[VALUATION]
      ,[G_AVVCSH]
      ,[G_AVVDLF]
      ,[G_AVVDLV]
      ,[G_AVVFRG]
      ,[G_AVVGRS]
      ,[G_AVVOVF]
      ,[G_AVVOVV]
      ,[G_AVVPRC]
      ,[G_AVVRAW]
      ,[G_AVVSSL]
      ,[G_AVVTRN]
      ,[G_AVVUSL]
      ,[G_AVVX01]
      ,[G_AVVX02]
      ,[G_AVVX03]
      ,[G_AVVX04]
      ,[G_AVVX05]
      ,[G_AVVX06]
      ,[G_AVVX07]
      ,[G_AVVX08]
      ,[G_AVVX09]
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
      ,[G_QVVSWK]
      ,[G_QVVUCS]
      ,[G_QVVUWK]
      ,[G_QVVWGK]
      ,[G_QVVWGT]
      ,[G_UVVINQ]
      ,[G_UVVQT1]
      ,[G_UVVQT2]
      ,[G_UVVQT3]
      ,[G_UVVQT4]
      ,[G_UVVQT5]
      ,[G_UVVQT6]
      ,[G_UVVQT7]
      ,[G_UVVQT8]
      ,[G_UVVQT9]
      ,[G_UVVQTC]
      ,[G_UVVSCS]
      ,[G_UVVSWK]
      ,[G_UVVUCS]
      ,[G_UVVUWK]
      ,[G_UVVWGK]
      ,[G_UVVWGT]
      ,[GI_DATE]
      ,[BA_STO_PNR]
      ,[PSTNG_DATE]
      ,[G_AVVPKM]
      ,[G_AVVSFG]
      ,[CURRENCY]
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
      ,[G_AVVX46]
      ,[G_AVVX47]
      ,[G_AVVX48]
      ,[G_AVVX49]
      ,[G_AVVX50])

	  (SELECT
	  [FISCPER]
      ,[BA_BELNR]
      ,[CALDAY]
      ,[MATERIAL]
      ,[SOLD_TO]
      ,[SALESORG]
      ,[VERSION]
      ,[REC_TYPE]
      ,[REF_DOC_NR]
      ,[REF_DOC_IT]
      ,[CURTYPE]
      ,[RECORDMODE]
      ,[BILL_TYPE]
      ,[BUS_AREA]
      ,[CHRT_ACCTS]
      ,[COMP_CODE]
      ,[COORDER]
      ,[COSTELMNT]
      ,[COSTOBJ]
      ,[CO_AREA]
      ,[CUST_CLASS]
      ,[CUST_GROUP]
      ,[DISTR_CHAN]
      ,[DIVISION]
      ,[DOC_NUMBER]
      ,[G_CWWBRD]
      ,[G_CWWCTG]
      ,[G_CWWTYP]
      ,[ITEM_CATEG]
      ,[MATL_GROUP]
      ,[MATL_GRP_1]
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
      ,[SALES_DIST]
      ,[VTYPE]
      ,[WBS_ELEMT]
      ,[SALES_GRP]
      ,[SALES_OFF]
      ,[SHIP_TO]
      ,[S_ORD_ITEM]
      ,[SEND_CCTR]
      ,[SEND_PROC]
      ,[BA_POSNR]
      ,[VALUATION]
      ,[G_AVVCSH]
      ,[G_AVVDLF]
      ,[G_AVVDLV]
      ,[G_AVVFRG]
      ,[G_AVVGRS]
      ,[G_AVVOVF]
      ,[G_AVVOVV]
      ,[G_AVVPRC]
      ,[G_AVVRAW]
      ,[G_AVVSSL]
      ,[G_AVVTRN]
      ,[G_AVVUSL]
      ,[G_AVVX01]
      ,[G_AVVX02]
      ,[G_AVVX03]
      ,[G_AVVX04]
      ,[G_AVVX05]
      ,[G_AVVX06]
      ,[G_AVVX07]
      ,[G_AVVX08]
      ,[G_AVVX09]
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
      ,[G_QVVSWK]
      ,[G_QVVUCS]
      ,[G_QVVUWK]
      ,[G_QVVWGK]
      ,[G_QVVWGT]
      ,[G_UVVINQ]
      ,[G_UVVQT1]
      ,[G_UVVQT2]
      ,[G_UVVQT3]
      ,[G_UVVQT4]
      ,[G_UVVQT5]
      ,[G_UVVQT6]
      ,[G_UVVQT7]
      ,[G_UVVQT8]
      ,[G_UVVQT9]
      ,[G_UVVQTC]
      ,[G_UVVSCS]
      ,[G_UVVSWK]
      ,[G_UVVUCS]
      ,[G_UVVUWK]
      ,[G_UVVWGK]
      ,[G_UVVWGT]
      ,[GI_DATE]
      ,[BA_STO_PNR]
      ,[PSTNG_DATE]
      ,[G_AVVPKM]
      ,[G_AVVSFG]
      ,[CURRENCY]
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
      ,[G_AVVX46]
      ,[G_AVVX47]
      ,[G_AVVX48]
      ,[G_AVVX49]
      ,[G_AVVX50]
	  FROM [KAP_BW].[STG].[AZOD_PA0700])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION AZOD_PA0700;
END

COMMIT TRANSACTION AZOD_PA0700;
 







GO
USE [master]
GO
ALTER DATABASE [KAP_BW] SET  READ_WRITE 
GO
