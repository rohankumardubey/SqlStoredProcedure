USE [master]
GO
/****** Object:  Database [KEU_ECC]    Script Date: 11/20/2018 6:19:54 AM ******/
CREATE DATABASE [KEU_ECC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KEU_ECC', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KEU_ECC.mdf' , SIZE = 173875200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KEU_ECC_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KEU_ECC_log.ldf' , SIZE = 16204736KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KEU_ECC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KEU_ECC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KEU_ECC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KEU_ECC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KEU_ECC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KEU_ECC] SET ARITHABORT OFF 
GO
ALTER DATABASE [KEU_ECC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KEU_ECC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KEU_ECC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_ECC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KEU_ECC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KEU_ECC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KEU_ECC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KEU_ECC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KEU_ECC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KEU_ECC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KEU_ECC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KEU_ECC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KEU_ECC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KEU_ECC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KEU_ECC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KEU_ECC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KEU_ECC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KEU_ECC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KEU_ECC] SET  MULTI_USER 
GO
ALTER DATABASE [KEU_ECC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KEU_ECC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KEU_ECC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KEU_ECC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KEU_ECC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KEU_ECC', N'ON'
GO
USE [KEU_ECC]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 6:19:55 AM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 6:19:56 AM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 6:19:56 AM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 6:19:56 AM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 6:19:56 AM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [dbo].[A005]    Script Date: 11/20/2018 6:19:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A005](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[MATNR] [varchar](18) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KNUMH] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[A005_OLD]    Script Date: 11/20/2018 6:19:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A005_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[MATNR] [varchar](18) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KNUMH] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[A900]    Script Date: 11/20/2018 6:19:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A900](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[PLTYP] [varchar](2) NULL,
	[MATNR] [varchar](18) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KNUMH] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[A900_KEU_ECC_OLD]    Script Date: 11/20/2018 6:19:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A900_KEU_ECC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[PLTYP] [varchar](2) NULL,
	[MATNR] [varchar](18) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KNUMH] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADRC]    Script Date: 11/20/2018 6:19:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADRC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[ADDRNUMBER] [varchar](10) NULL,
	[DATE_FROM] [date] NULL,
	[NATION] [varchar](1) NULL,
	[DATE_TO] [date] NULL,
	[TITLE] [varchar](4) NULL,
	[NAME1] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NAME3] [varchar](40) NULL,
	[NAME4] [varchar](40) NULL,
	[NAME_TEXT] [varchar](50) NULL,
	[NAME_CO] [varchar](40) NULL,
	[CITY1] [varchar](40) NULL,
	[CITY2] [varchar](40) NULL,
	[CITY_CODE] [varchar](12) NULL,
	[CITYP_CODE] [varchar](8) NULL,
	[HOME_CITY] [varchar](40) NULL,
	[CITYH_CODE] [varchar](12) NULL,
	[CHCKSTATUS] [varchar](1) NULL,
	[REGIOGROUP] [varchar](8) NULL,
	[POST_CODE1] [varchar](10) NULL,
	[POST_CODE2] [varchar](10) NULL,
	[POST_CODE3] [varchar](10) NULL,
	[PCODE1_EXT] [varchar](10) NULL,
	[PCODE2_EXT] [varchar](10) NULL,
	[PCODE3_EXT] [varchar](10) NULL,
	[PO_BOX] [varchar](10) NULL,
	[DONT_USE_P] [varchar](4) NULL,
	[PO_BOX_NUM] [varchar](1) NULL,
	[PO_BOX_LOC] [varchar](40) NULL,
	[CITY_CODE2] [varchar](12) NULL,
	[PO_BOX_REG] [varchar](3) NULL,
	[PO_BOX_CTY] [varchar](3) NULL,
	[POSTALAREA] [varchar](15) NULL,
	[TRANSPZONE] [varchar](10) NULL,
	[STREET] [varchar](60) NULL,
	[DONT_USE_S] [varchar](4) NULL,
	[STREETCODE] [varchar](12) NULL,
	[STREETABBR] [varchar](2) NULL,
	[HOUSE_NUM1] [varchar](10) NULL,
	[HOUSE_NUM2] [varchar](10) NULL,
	[HOUSE_NUM3] [varchar](10) NULL,
	[STR_SUPPL1] [varchar](40) NULL,
	[STR_SUPPL2] [varchar](40) NULL,
	[STR_SUPPL3] [varchar](40) NULL,
	[LOCATION] [varchar](40) NULL,
	[BUILDING] [varchar](20) NULL,
	[FLOOR] [varchar](10) NULL,
	[ROOMNUMBER] [varchar](10) NULL,
	[COUNTRY] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[REGION] [varchar](3) NULL,
	[ADDR_GROUP] [varchar](4) NULL,
	[FLAGGROUPS] [varchar](1) NULL,
	[PERS_ADDR] [varchar](1) NULL,
	[SORT1] [varchar](20) NULL,
	[SORT2] [varchar](20) NULL,
	[SORT_PHN] [varchar](20) NULL,
	[DEFLT_COMM] [varchar](3) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[FAX_NUMBER] [varchar](30) NULL,
	[FAX_EXTENS] [varchar](10) NULL,
	[FLAGCOMM2] [varchar](1) NULL,
	[FLAGCOMM3] [varchar](1) NULL,
	[FLAGCOMM4] [varchar](1) NULL,
	[FLAGCOMM5] [varchar](1) NULL,
	[FLAGCOMM6] [varchar](1) NULL,
	[FLAGCOMM7] [varchar](1) NULL,
	[FLAGCOMM8] [varchar](1) NULL,
	[FLAGCOMM9] [varchar](1) NULL,
	[FLAGCOMM10] [varchar](1) NULL,
	[FLAGCOMM11] [varchar](1) NULL,
	[FLAGCOMM12] [varchar](1) NULL,
	[FLAGCOMM13] [varchar](1) NULL,
	[ADDRORIGIN] [varchar](4) NULL,
	[MC_NAME1] [varchar](25) NULL,
	[MC_CITY1] [varchar](25) NULL,
	[MC_STREET] [varchar](25) NULL,
	[EXTENSION1] [varchar](40) NULL,
	[EXTENSION2] [varchar](40) NULL,
	[TIME_ZONE] [varchar](6) NULL,
	[TAXJURCODE] [varchar](15) NULL,
	[ADDRESS_ID] [varchar](10) NULL,
	[LANGU_CREA] [varchar](1) NULL,
	[ADRC_UUID] [varchar](32) NULL,
	[UUID_BELATED] [varchar](1) NULL,
	[ID_CATEGORY] [varchar](1) NULL,
	[ADRC_ERR_STATUS] [varchar](1) NULL,
	[PO_BOX_LOBBY] [varchar](40) NULL,
	[DELI_SERV_TYPE] [varchar](4) NULL,
	[DELI_SERV_NUMBER] [varchar](10) NULL,
	[COUNTY_CODE] [varchar](8) NULL,
	[COUNTY] [varchar](40) NULL,
	[TOWNSHIP_CODE] [varchar](8) NULL,
	[TOWNSHIP] [varchar](40) NULL,
	[MC_COUNTY] [varchar](25) NULL,
	[MC_TOWNSHIP] [varchar](25) NULL,
	[XPCPT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADRC_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADRC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[ADDRNUMBER] [varchar](10) NULL,
	[DATE_FROM] [date] NULL,
	[NATION] [varchar](1) NULL,
	[DATE_TO] [date] NULL,
	[TITLE] [varchar](4) NULL,
	[NAME1] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NAME3] [varchar](40) NULL,
	[NAME4] [varchar](40) NULL,
	[NAME_TEXT] [varchar](50) NULL,
	[NAME_CO] [varchar](40) NULL,
	[CITY1] [varchar](40) NULL,
	[CITY2] [varchar](40) NULL,
	[CITY_CODE] [varchar](12) NULL,
	[CITYP_CODE] [varchar](8) NULL,
	[HOME_CITY] [varchar](40) NULL,
	[CITYH_CODE] [varchar](12) NULL,
	[CHCKSTATUS] [varchar](1) NULL,
	[REGIOGROUP] [varchar](8) NULL,
	[POST_CODE1] [varchar](10) NULL,
	[POST_CODE2] [varchar](10) NULL,
	[POST_CODE3] [varchar](10) NULL,
	[PCODE1_EXT] [varchar](10) NULL,
	[PCODE2_EXT] [varchar](10) NULL,
	[PCODE3_EXT] [varchar](10) NULL,
	[PO_BOX] [varchar](10) NULL,
	[DONT_USE_P] [varchar](4) NULL,
	[PO_BOX_NUM] [varchar](1) NULL,
	[PO_BOX_LOC] [varchar](40) NULL,
	[CITY_CODE2] [varchar](12) NULL,
	[PO_BOX_REG] [varchar](3) NULL,
	[PO_BOX_CTY] [varchar](3) NULL,
	[POSTALAREA] [varchar](15) NULL,
	[TRANSPZONE] [varchar](10) NULL,
	[STREET] [varchar](60) NULL,
	[DONT_USE_S] [varchar](4) NULL,
	[STREETCODE] [varchar](12) NULL,
	[STREETABBR] [varchar](2) NULL,
	[HOUSE_NUM1] [varchar](10) NULL,
	[HOUSE_NUM2] [varchar](10) NULL,
	[HOUSE_NUM3] [varchar](10) NULL,
	[STR_SUPPL1] [varchar](40) NULL,
	[STR_SUPPL2] [varchar](40) NULL,
	[STR_SUPPL3] [varchar](40) NULL,
	[LOCATION] [varchar](40) NULL,
	[BUILDING] [varchar](20) NULL,
	[FLOOR] [varchar](10) NULL,
	[ROOMNUMBER] [varchar](10) NULL,
	[COUNTRY] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[REGION] [varchar](3) NULL,
	[ADDR_GROUP] [varchar](4) NULL,
	[FLAGGROUPS] [varchar](1) NULL,
	[PERS_ADDR] [varchar](1) NULL,
	[SORT1] [varchar](20) NULL,
	[SORT2] [varchar](20) NULL,
	[SORT_PHN] [varchar](20) NULL,
	[DEFLT_COMM] [varchar](3) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[FAX_NUMBER] [varchar](30) NULL,
	[FAX_EXTENS] [varchar](10) NULL,
	[FLAGCOMM2] [varchar](1) NULL,
	[FLAGCOMM3] [varchar](1) NULL,
	[FLAGCOMM4] [varchar](1) NULL,
	[FLAGCOMM5] [varchar](1) NULL,
	[FLAGCOMM6] [varchar](1) NULL,
	[FLAGCOMM7] [varchar](1) NULL,
	[FLAGCOMM8] [varchar](1) NULL,
	[FLAGCOMM9] [varchar](1) NULL,
	[FLAGCOMM10] [varchar](1) NULL,
	[FLAGCOMM11] [varchar](1) NULL,
	[FLAGCOMM12] [varchar](1) NULL,
	[FLAGCOMM13] [varchar](1) NULL,
	[ADDRORIGIN] [varchar](4) NULL,
	[MC_NAME1] [varchar](25) NULL,
	[MC_CITY1] [varchar](25) NULL,
	[MC_STREET] [varchar](25) NULL,
	[EXTENSION1] [varchar](40) NULL,
	[EXTENSION2] [varchar](40) NULL,
	[TIME_ZONE] [varchar](6) NULL,
	[TAXJURCODE] [varchar](15) NULL,
	[ADDRESS_ID] [varchar](10) NULL,
	[LANGU_CREA] [varchar](1) NULL,
	[ADRC_UUID] [varchar](32) NULL,
	[UUID_BELATED] [varchar](1) NULL,
	[ID_CATEGORY] [varchar](1) NULL,
	[ADRC_ERR_STATUS] [varchar](1) NULL,
	[PO_BOX_LOBBY] [varchar](40) NULL,
	[DELI_SERV_TYPE] [varchar](4) NULL,
	[DELI_SERV_NUMBER] [varchar](10) NULL,
	[COUNTY_CODE] [varchar](8) NULL,
	[COUNTY] [varchar](40) NULL,
	[TOWNSHIP_CODE] [varchar](8) NULL,
	[TOWNSHIP] [varchar](40) NULL,
	[MC_COUNTY] [varchar](25) NULL,
	[MC_TOWNSHIP] [varchar](25) NULL,
	[XPCPT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUFK]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUFK](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL CONSTRAINT [Constraint_AUFK_DW_Del_Bit]  DEFAULT ((0)),
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [pk_AUFK] PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPC]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[MERKMAL] [varchar](30) NULL,
	[ABTEI] [varchar](12) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[NPRCTR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[BUKRS] [varchar](4) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[REGIO] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[LOCK_IND] [varchar](1) NULL,
	[PCA_TEMPLATE] [varchar](10) NULL,
	[SEGMENT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPC_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[MERKMAL] [varchar](30) NULL,
	[ABTEI] [varchar](12) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[NPRCTR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[BUKRS] [varchar](4) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[REGIO] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[LOCK_IND] [varchar](1) NULL,
	[PCA_TEMPLATE] [varchar](10) NULL,
	[SEGMENT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPCT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPCT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPCT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPCT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COAS]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COAS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COAS_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COAS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBK]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL CONSTRAINT [Constraint_COBK_DW_Del_Bit]  DEFAULT ((0)),
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [pk_COBK] PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COEP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL CONSTRAINT [Constraint_COEP_DW_Del_Bit]  DEFAULT ((0)),
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [pk_COEP] PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 6:19:57 AM ******/
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
/****** Object:  Table [dbo].[COSP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COSP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[PERBL] [decimal](3, 0) NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COSS]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COSS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[PERBL] [decimal](3, 0) NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[PAF001] [decimal](15, 2) NULL,
	[PAF002] [decimal](15, 2) NULL,
	[PAF003] [decimal](15, 2) NULL,
	[PAF004] [decimal](15, 2) NULL,
	[PAF005] [decimal](15, 2) NULL,
	[PAF006] [decimal](15, 2) NULL,
	[PAF007] [decimal](15, 2) NULL,
	[PAF008] [decimal](15, 2) NULL,
	[PAF009] [decimal](15, 2) NULL,
	[PAF010] [decimal](15, 2) NULL,
	[PAF011] [decimal](15, 2) NULL,
	[PAF012] [decimal](15, 2) NULL,
	[PAF013] [decimal](15, 2) NULL,
	[PAF014] [decimal](15, 2) NULL,
	[PAF015] [decimal](15, 2) NULL,
	[PAF016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKA]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKA](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[STEKZ] [varchar](1) NULL,
	[ZAHKZ] [varchar](1) NULL,
	[KSTSN] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKA_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKA_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[STEKZ] [varchar](1) NULL,
	[ZAHKZ] [varchar](1) NULL,
	[KSTSN] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKB]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKB](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KATYP] [varchar](2) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[EIGEN] [varchar](8) NULL,
	[PLAZU] [varchar](1) NULL,
	[PLAOR] [varchar](1) NULL,
	[PLAUS] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[AUFNR] [varchar](12) NULL,
	[MGEFL] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[DEAKT] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[RECID] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKB_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKB_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KATYP] [varchar](2) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[EIGEN] [varchar](8) NULL,
	[PLAZU] [varchar](1) NULL,
	[PLAOR] [varchar](1) NULL,
	[PLAUS] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[AUFNR] [varchar](12) NULL,
	[MGEFL] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[DEAKT] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[RECID] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKS]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[BKZKP] [varchar](1) NULL,
	[PKZKP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSAR] [varchar](1) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[KALSM] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[PRCTR] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BKZKS] [varchar](1) NULL,
	[BKZER] [varchar](1) NULL,
	[BKZOB] [varchar](1) NULL,
	[PKZKS] [varchar](1) NULL,
	[PKZER] [varchar](1) NULL,
	[VMETH] [varchar](2) NULL,
	[MGEFL] [varchar](1) NULL,
	[ABTEI] [varchar](12) NULL,
	[NKOST] [varchar](10) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOSZSCHL] [varchar](6) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOMPL] [varchar](1) NULL,
	[STAKZ] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[FUNKT] [varchar](3) NULL,
	[AFUNK] [varchar](3) NULL,
	[CPI_TEMPL] [varchar](10) NULL,
	[CPD_TEMPL] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCI_TEMPL] [varchar](10) NULL,
	[SCD_TEMPL] [varchar](10) NULL,
	[OVHTYPE] [varchar](10) NULL,
	[BUCODE] [varchar](2) NULL,
	[BUFCODE] [varchar](2) NULL,
	[OVHUSER] [varchar](3) NULL,
	[TCLASS] [varchar](7) NULL,
	[FBRAND] [varchar](13) NULL,
	[LAND] [varchar](3) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[JV_OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKS_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[BKZKP] [varchar](1) NULL,
	[PKZKP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSAR] [varchar](1) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[KALSM] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[PRCTR] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BKZKS] [varchar](1) NULL,
	[BKZER] [varchar](1) NULL,
	[BKZOB] [varchar](1) NULL,
	[PKZKS] [varchar](1) NULL,
	[PKZER] [varchar](1) NULL,
	[VMETH] [varchar](2) NULL,
	[MGEFL] [varchar](1) NULL,
	[ABTEI] [varchar](12) NULL,
	[NKOST] [varchar](10) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOSZSCHL] [varchar](6) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOMPL] [varchar](1) NULL,
	[STAKZ] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[FUNKT] [varchar](3) NULL,
	[AFUNK] [varchar](3) NULL,
	[CPI_TEMPL] [varchar](10) NULL,
	[CPD_TEMPL] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCI_TEMPL] [varchar](10) NULL,
	[SCD_TEMPL] [varchar](10) NULL,
	[OVHTYPE] [varchar](10) NULL,
	[BUCODE] [varchar](2) NULL,
	[BUFCODE] [varchar](2) NULL,
	[OVHUSER] [varchar](3) NULL,
	[TCLASS] [varchar](7) NULL,
	[FBRAND] [varchar](13) NULL,
	[LAND] [varchar](3) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[JV_OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKU]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKU](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKU_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKU_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EBAN]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EBAN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BANFN] [varchar](10) NOT NULL,
	[BNFPO] [decimal](5, 0) NOT NULL,
	[BSART] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[ESTKZ] [varchar](1) NULL,
	[FRGKZ] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGST] [varchar](2) NULL,
	[EKGRP] [varchar](3) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AFNAM] [varchar](12) NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[RESWK] [varchar](4) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BUMNG] [decimal](13, 3) NULL,
	[BADAT] [date] NULL,
	[LPEIN] [varchar](1) NULL,
	[LFDAT] [date] NULL,
	[FRGDT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[PREIS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[KFLAG] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLIEF] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[VRTYP] [varchar](1) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[INFNR] [varchar](10) NULL,
	[ZUGBA] [varchar](1) NULL,
	[QUNUM] [varchar](10) NULL,
	[QUPOS] [decimal](3, 0) NULL,
	[DISPO] [varchar](3) NULL,
	[SERNR] [varchar](8) NULL,
	[BVDAT] [date] NULL,
	[BATOL] [decimal](3, 0) NULL,
	[BVDRK] [decimal](7, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[BEDAT] [date] NULL,
	[BSMNG] [decimal](13, 3) NULL,
	[LBLNI] [varchar](10) NULL,
	[BWTAR] [varchar](10) NULL,
	[XOBLR] [varchar](1) NULL,
	[EBAKZ] [varchar](1) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[FIXKZ] [varchar](1) NULL,
	[BMEIN] [varchar](3) NULL,
	[REVLV] [varchar](2) NULL,
	[VORAB] [varchar](1) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[KANBA] [varchar](1) NULL,
	[BPUEB] [varchar](1) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGRL] [varchar](1) NULL,
	[AKTNR] [varchar](10) NULL,
	[CHARG] [varchar](10) NULL,
	[UMSOK] [varchar](1) NULL,
	[VERID] [varchar](4) NULL,
	[FIPOS] [varchar](14) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[KZKFG] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[MNG02] [decimal](13, 3) NULL,
	[DAT01] [date] NULL,
	[ATTYP] [varchar](2) NULL,
	[ADRNR] [varchar](10) NULL,
	[ADRN2] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[KZBWS] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[IDNLF] [varchar](35) NULL,
	[GSFRG] [varchar](1) NULL,
	[MPROF] [varchar](4) NULL,
	[KZFME] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[TECHS] [varchar](12) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[FORDN] [varchar](10) NULL,
	[FORDP] [decimal](5, 0) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[BERID] [varchar](10) NULL,
	[UZEIT] [time](7) NULL,
	[FKBER] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[MEMORY] [varchar](1) NULL,
	[BANPR] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[BLCKD] [varchar](1) NULL,
	[REVNO] [varchar](8) NULL,
	[BLCKT] [varchar](60) NULL,
	[BESWK] [varchar](4) NULL,
	[EPROFILE] [varchar](2) NULL,
	[EPREFDOC] [varchar](10) NULL,
	[EPREFITM] [decimal](5, 0) NULL,
	[GMMNG] [decimal](13, 3) NULL,
	[WRTKZ] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[MEMORYTYPE] [varchar](1) NULL,
	[ANZSN] [int] NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[IPRKZ] [varchar](1) NULL,
	[NODISP] [varchar](1) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[FMFGUS_KEY] [varchar](22) NULL,
	[ADVCODE] [varchar](2) NULL,
	[STACODE] [varchar](2) NULL,
	[BANFN_CS] [varchar](10) NULL,
	[BNFPO_CS] [decimal](5, 0) NULL,
	[ITEM_CS] [varchar](1) NULL,
	[BSMNG_SND] [decimal](13, 3) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BANFN] ASC,
	[BNFPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EBKN]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EBKN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BANFN] [varchar](10) NOT NULL,
	[BNFPO] [decimal](5, 0) NOT NULL,
	[ZEBKN] [decimal](2, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[VPROZ] [decimal](3, 1) NULL,
	[SAKTO] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[PROJN] [varchar](16) NULL,
	[VBELN] [varchar](10) NULL,
	[VBELP] [decimal](6, 0) NULL,
	[VETEN] [decimal](4, 0) NULL,
	[ANLN1] [varchar](12) NULL,
	[ANLN2] [varchar](4) NULL,
	[AUFNR] [varchar](12) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[KOKRS] [varchar](4) NULL,
	[XBKST] [varchar](1) NULL,
	[XBAUF] [varchar](1) NULL,
	[XBPRO] [varchar](1) NULL,
	[KSTRG] [varchar](12) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[PRCTR] [varchar](10) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[IMKEY] [varchar](8) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[VPTNR] [varchar](10) NULL,
	[FIPOS] [varchar](14) NULL,
	[RECID] [varchar](2) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[FKBER] [varchar](16) NULL,
	[DABRZ] [date] NULL,
	[NETWR] [decimal](13, 2) NULL,
	[AUFPL_ORD] [decimal](10, 0) NULL,
	[APLZL_ORD] [decimal](8, 0) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[LSTAR] [varchar](6) NULL,
	[PRZNR] [varchar](12) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FM_SPLIT_BATCH] [decimal](3, 0) NULL,
	[FM_SPLIT_BEGRU] [varchar](4) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[FMFGUS_KEY] [varchar](22) NULL,
	[EGRUP] [varchar](3) NULL,
	[VNAME] [varchar](6) NULL,
	[TCOBJNR] [varchar](22) NULL,
	[DATEOFSERVICE] [date] NULL,
	[NOTAXCORR] [varchar](1) NULL,
	[DIFFOPTRATE] [decimal](9, 6) NULL,
	[HASDIFFOPTRATE] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BANFN] ASC,
	[BNFPO] ASC,
	[ZEBKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKBE]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKBE](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ZEKKN] [decimal](2, 0) NOT NULL,
	[VGABE] [varchar](1) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](4, 0) NOT NULL,
	[BEWTP] [varchar](1) NULL,
	[BWART] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MENGE] [decimal](13, 3) NULL,
	[BPMNG] [decimal](13, 3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[WRBTR] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[AREWR] [decimal](13, 2) NULL,
	[WESBS] [decimal](13, 3) NULL,
	[BPWES] [decimal](13, 3) NULL,
	[SHKZG] [varchar](1) NULL,
	[BWTAR] [varchar](10) NULL,
	[ELIKZ] [varchar](1) NULL,
	[XBLNR] [varchar](16) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFBNR] [varchar](10) NULL,
	[LFPOS] [decimal](4, 0) NULL,
	[GRUND] [decimal](4, 0) NULL,
	[CPUDT] [date] NULL,
	[CPUTM] [time](7) NULL,
	[REEWR] [decimal](13, 2) NULL,
	[EVERE] [varchar](2) NULL,
	[REFWR] [decimal](13, 2) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[XWSBR] [varchar](1) NULL,
	[ETENS] [decimal](4, 0) NULL,
	[KNUMV] [varchar](10) NULL,
	[MWSKZ] [varchar](2) NULL,
	[LSMNG] [decimal](13, 3) NULL,
	[LSMEH] [varchar](3) NULL,
	[EMATN] [varchar](18) NULL,
	[AREWW] [decimal](13, 2) NULL,
	[HSWAE] [varchar](5) NULL,
	[BAMNG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[BLDAT] [date] NULL,
	[XWOFF] [varchar](1) NULL,
	[XUNPL] [varchar](1) NULL,
	[ERNAM] [varchar](12) NULL,
	[SRVPOS] [varchar](18) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[INTROW] [decimal](10, 0) NULL,
	[BEKKN] [decimal](2, 0) NULL,
	[LEMIN] [varchar](1) NULL,
	[AREWB] [decimal](13, 2) NULL,
	[REWRB] [decimal](13, 2) NULL,
	[SAPRL] [varchar](4) NULL,
	[MENGE_POP] [decimal](13, 3) NULL,
	[BPMNG_POP] [decimal](13, 3) NULL,
	[DMBTR_POP] [decimal](13, 2) NULL,
	[WRBTR_POP] [decimal](13, 2) NULL,
	[WESBB] [decimal](13, 3) NULL,
	[BPWEB] [decimal](13, 3) NULL,
	[WEORA] [varchar](1) NULL,
	[AREWR_POP] [decimal](13, 2) NULL,
	[KUDIF] [decimal](13, 2) NULL,
	[RETAMT_FC] [decimal](13, 2) NULL,
	[RETAMT_LC] [decimal](13, 2) NULL,
	[RETAMTP_FC] [decimal](13, 2) NULL,
	[RETAMTP_LC] [decimal](13, 2) NULL,
	[XMACC] [varchar](1) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[INV_ITEM_ORIGIN] [varchar](1) NULL,
	[VBELN_ST] [varchar](10) NULL,
	[VBELP_ST] [decimal](6, 0) NULL,
	[ET_UPD] [varchar](1) NULL,
	[J_SC_DIE_COMP_F] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ZEKKN] ASC,
	[VGABE] ASC,
	[GJAHR] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKET]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKET](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ETENR] [decimal](4, 0) NOT NULL,
	[EINDT] [date] NULL,
	[SLFDT] [varchar](10) NULL,
	[LPEIN] [varchar](1) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AMENG] [decimal](13, 3) NULL,
	[WEMNG] [decimal](13, 3) NULL,
	[WAMNG] [decimal](13, 3) NULL,
	[UZEIT] [varchar](8) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[ESTKZ] [varchar](1) NULL,
	[QUNUM] [varchar](10) NULL,
	[QUPOS] [decimal](3, 0) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[BEDAT] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[SERNR] [varchar](8) NULL,
	[FIXKZ] [varchar](1) NULL,
	[GLMNG] [decimal](13, 3) NULL,
	[DABMG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[LICHA] [varchar](15) NULL,
	[CHKOM] [varchar](1) NULL,
	[VERID] [varchar](4) NULL,
	[ABART] [varchar](1) NULL,
	[MNG02] [decimal](13, 3) NULL,
	[DAT01] [date] NULL,
	[ALTDT] [date] NULL,
	[AULWE] [varchar](10) NULL,
	[MBDAT] [date] NULL,
	[MBUHR] [time](7) NULL,
	[LDDAT] [date] NULL,
	[LDUHR] [time](7) NULL,
	[TDDAT] [date] NULL,
	[TDUHR] [time](7) NULL,
	[WADAT] [date] NULL,
	[WAUHR] [time](7) NULL,
	[ELDAT] [date] NULL,
	[ELUHR] [time](7) NULL,
	[ANZSN] [int] NULL,
	[NODISP] [varchar](1) NULL,
	[GEO_ROUTE] [varchar](10) NULL,
	[ROUTE_GTS] [varchar](10) NULL,
	[GTS_IND] [varchar](2) NULL,
	[TSP] [varchar](10) NULL,
	[CD_LOCNO] [varchar](20) NULL,
	[CD_LOCTYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[DL_ID] [varchar](22) NULL,
	[HANDOVER_DATE] [date] NULL,
	[NO_SCEM] [varchar](1) NULL,
	[DNG_DATE] [date] NULL,
	[DNG_TIME] [time](7) NULL,
	[CNCL_ANCMNT_DONE] [varchar](1) NULL,
	[DATESHIFT_NUMBER] [decimal](3, 0) NULL,
	[ZZOWNER] [varchar](12) NULL,
	[ZZREASON_CODE] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ETENR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKKN]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKKN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ZEKKN] [decimal](2, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[KFLAG] [varchar](1) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[VPROZ] [decimal](3, 1) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[SAKTO] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[PROJN] [varchar](16) NULL,
	[VBELN] [varchar](10) NULL,
	[VBELP] [decimal](6, 0) NULL,
	[VETEN] [decimal](4, 0) NULL,
	[KZBRB] [varchar](1) NULL,
	[ANLN1] [varchar](12) NULL,
	[ANLN2] [varchar](4) NULL,
	[AUFNR] [varchar](12) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[KOKRS] [varchar](4) NULL,
	[XBKST] [varchar](1) NULL,
	[XBAUF] [varchar](1) NULL,
	[XBPRO] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[KSTRG] [varchar](12) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[PRCTR] [varchar](10) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[IMKEY] [varchar](8) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[VPTNR] [varchar](10) NULL,
	[FIPOS] [varchar](14) NULL,
	[RECID] [varchar](2) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[FKBER] [varchar](16) NULL,
	[DABRZ] [date] NULL,
	[AUFPL_ORD] [decimal](10, 0) NULL,
	[APLZL_ORD] [decimal](8, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[TXJCD] [varchar](15) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[LSTAR] [varchar](6) NULL,
	[PRZNR] [varchar](12) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[FM_SPLIT_BATCH] [decimal](3, 0) NULL,
	[FM_SPLIT_BEGRU] [varchar](4) NULL,
	[AA_FINAL_IND] [varchar](1) NULL,
	[AA_FINAL_REASON] [varchar](2) NULL,
	[AA_FINAL_QTY] [decimal](13, 3) NULL,
	[AA_FINAL_QTY_F] [float] NULL,
	[MENGE_F] [float] NULL,
	[FMFGUS_KEY] [varchar](22) NULL,
	[EGRUP] [varchar](3) NULL,
	[VNAME] [varchar](6) NULL,
	[TCOBJNR] [varchar](22) NULL,
	[DATEOFSERVICE] [date] NULL,
	[NOTAXCORR] [varchar](1) NULL,
	[DIFFOPTRATE] [decimal](9, 6) NULL,
	[HASDIFFOPTRATE] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ZEKKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKKO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKKO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [varchar](10) NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[MEMORYTYPE] [varchar](1) NULL,
	[RETTP] [varchar](1) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[MSR_ID] [varchar](10) NULL,
	[HIERARCHY_EXISTS] [varchar](1) NULL,
	[THRESHOLD_EXISTS] [varchar](1) NULL,
	[LEGAL_CONTRACT] [varchar](40) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[RELEASE_DATE] [date] NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKKO_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EKKO_OLD](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL CONSTRAINT [Constraint_EKKO_DW_Del_Bit]  DEFAULT ((0)),
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [pk_EKKO] PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKPO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKPO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[EMPST] [varchar](25) NULL,
	[DIFF_INVOICE] [varchar](2) NULL,
	[TRMRISK_RELEVANT] [varchar](2) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CRM_FKREL] [varchar](1) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[ANZSN] [int] NULL,
	[SPE_EWM_DTC] [varchar](1) NULL,
	[EXLIN] [varchar](40) NULL,
	[EXSNR] [decimal](5, 0) NULL,
	[EHTYP] [varchar](4) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[FLS_RSTO] [varchar](1) NULL,
	[EXT_RFX_NUMBER] [varchar](35) NULL,
	[EXT_RFX_ITEM] [varchar](10) NULL,
	[EXT_RFX_SYSTEM] [varchar](10) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL,
	[BLK_REASON_ID] [varchar](4) NULL,
	[BLK_REASON_TXT] [varchar](40) NULL,
	[ITCONS] [varchar](1) NULL,
	[FIXMG] [varchar](1) NULL,
	[WABWE] [varchar](1) NULL,
	[TC_AUT_DET] [varchar](2) NULL,
	[MANUAL_TC_REASON] [varchar](2) NULL,
	[FISCAL_INCENTIVE] [varchar](4) NULL,
	[TAX_SUBJECT_ST] [varchar](1) NULL,
	[FISCAL_INCENTIVE_ID] [varchar](4) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[FMFGUS_KEY] [varchar](22) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[MRPIND] [varchar](1) NULL,
	[ZZOWNER] [varchar](12) NULL,
	[ZZREASON_CODE] [varchar](40) NULL,
	[REFSITE] [varchar](4) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKPO_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EKPO_OLD](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[EMPST] [varchar](25) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[SPE_EWM_DTC] [varchar](1) NULL,
	[EXLIN] [varchar](40) NULL,
	[EXSNR] [decimal](5, 0) NULL,
	[EHTYP] [varchar](4) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[ZZOWNER] [varchar](12) NULL,
	[ZZREASON_CODE] [varchar](40) NULL,
	[REFSITE] [varchar](4) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL CONSTRAINT [Constraint_EKPO_DW_Del_Bit]  DEFAULT ((0)),
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [pk_EKPO] PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EORD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EORD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[ZEORD] [decimal](5, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[VDATU] [date] NULL,
	[BDATU] [date] NULL,
	[LIFNR] [varchar](10) NULL,
	[FLIFN] [varchar](1) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[FEBEL] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[FRESW] [varchar](1) NULL,
	[EMATN] [varchar](18) NULL,
	[NOTKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[VRTYP] [varchar](1) NULL,
	[EORTP] [varchar](1) NULL,
	[AUTET] [varchar](1) NULL,
	[MEINS] [varchar](3) NULL,
	[LOGSY] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EORD_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EORD_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[ZEORD] [decimal](5, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[VDATU] [date] NULL,
	[BDATU] [date] NULL,
	[LIFNR] [varchar](10) NULL,
	[FLIFN] [varchar](1) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[FEBEL] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[FRESW] [varchar](1) NULL,
	[EMATN] [varchar](18) NULL,
	[NOTKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[VRTYP] [varchar](1) NULL,
	[EORTP] [varchar](1) NULL,
	[AUTET] [varchar](1) NULL,
	[MEINS] [varchar](3) NULL,
	[LOGSY] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ESSR]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESSR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LBLNI] [varchar](10) NOT NULL,
	[LBLNE] [varchar](16) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[SBNAMAG] [varchar](12) NULL,
	[SBNAMAN] [varchar](12) NULL,
	[DLORT] [varchar](25) NULL,
	[LBLDT] [date] NULL,
	[LZVON] [date] NULL,
	[LZBIS] [date] NULL,
	[LWERT] [decimal](11, 2) NULL,
	[UWERT] [decimal](11, 2) NULL,
	[UNPLV] [decimal](11, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[TXZ01] [varchar](40) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[LOEKZ] [varchar](1) NULL,
	[KZABN] [varchar](1) NULL,
	[FINAL] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKL] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[F_LOCK] [varchar](1) NULL,
	[PWWE] [decimal](3, 0) NULL,
	[PWFR] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[XBLNR] [varchar](16) NULL,
	[BKTXT] [varchar](25) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[NETWR] [decimal](11, 2) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[WARPL] [varchar](12) NULL,
	[WAPOS] [varchar](16) NULL,
	[ABNUM] [int] NULL,
	[FKNUM] [varchar](10) NULL,
	[FKPOS] [decimal](6, 0) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[NAVNW] [decimal](11, 2) NULL,
	[SPEC_NO] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[LEMIN] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[LBLNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAGL_011PC]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAGL_011PC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VERSN] [varchar](4) NULL,
	[ID] [decimal](6, 0) NULL,
	[TYPE] [varchar](4) NULL,
	[ERGSL] [varchar](10) NULL,
	[PARENT] [decimal](6, 0) NULL,
	[CHILD] [decimal](6, 0) NULL,
	[NEXTN] [decimal](6, 0) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[SUMME] [varchar](1) NULL,
	[SIGN] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[USNAM] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAGL_011PC_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAGL_011PC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VERSN] [varchar](4) NULL,
	[ID] [decimal](6, 0) NULL,
	[TYPE] [varchar](4) NULL,
	[ERGSL] [varchar](10) NULL,
	[PARENT] [decimal](6, 0) NULL,
	[CHILD] [decimal](6, 0) NULL,
	[NEXTN] [decimal](6, 0) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[SUMME] [varchar](1) NULL,
	[SIGN] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[USNAM] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAGL_011QT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAGL_011QT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VERSN] [varchar](4) NULL,
	[SPRAS] [varchar](1) NULL,
	[ERGSL] [varchar](10) NULL,
	[TXTYP] [varchar](1) NULL,
	[ZEILE] [decimal](1, 0) NULL,
	[TXT45] [varchar](45) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAGL_011QT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAGL_011QT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VERSN] [varchar](4) NULL,
	[SPRAS] [varchar](1) NULL,
	[ERGSL] [varchar](10) NULL,
	[TXTYP] [varchar](1) NULL,
	[ZEILE] [decimal](1, 0) NULL,
	[TXT45] [varchar](45) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAGL_011ZC]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAGL_011ZC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VERSN] [varchar](4) NULL,
	[ERGSL] [varchar](10) NULL,
	[KTOPL] [varchar](4) NULL,
	[VONKT] [varchar](10) NULL,
	[BISKT] [varchar](10) NULL,
	[XSOLL] [varchar](1) NULL,
	[XHABN] [varchar](1) NULL,
	[XVERD] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAGL_011ZC_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAGL_011ZC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VERSN] [varchar](4) NULL,
	[ERGSL] [varchar](10) NULL,
	[KTOPL] [varchar](4) NULL,
	[VONKT] [varchar](10) NULL,
	[BISKT] [varchar](10) NULL,
	[XSOLL] [varchar](1) NULL,
	[XHABN] [varchar](1) NULL,
	[XVERD] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_BS_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_BS_TEMP](
	[RCLNT] [varchar](3) NULL,
	[RLDNR] [varchar](2) NULL,
	[RRCTY] [varchar](1) NULL,
	[RVERS] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[RYEAR] [decimal](4, 0) NULL,
	[RACCT] [varchar](10) NULL,
	[RBUSA] [varchar](4) NULL,
	[RTCUR] [varchar](5) NULL,
	[DRCRK] [varchar](1) NULL,
	[RPMAX] [decimal](3, 0) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[XBILK] [varchar](1) NULL,
	[GVTYP] [varchar](2) NULL,
	[AMOUNT] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_PNL_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_PNL_TEMP](
	[RCLNT] [varchar](3) NULL,
	[RLDNR] [varchar](2) NULL,
	[RRCTY] [varchar](1) NULL,
	[RVERS] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[RYEAR] [decimal](4, 0) NULL,
	[RACCT] [varchar](10) NULL,
	[RBUSA] [varchar](4) NULL,
	[RTCUR] [varchar](5) NULL,
	[DRCRK] [varchar](1) NULL,
	[RPMAX] [decimal](3, 0) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[XBILK] [varchar](1) NULL,
	[GVTYP] [varchar](2) NULL,
	[AMOUNT] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GLT0]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GLT0](
	[RCLNT] [varchar](3) NULL,
	[RLDNR] [varchar](2) NULL,
	[RRCTY] [varchar](1) NULL,
	[RVERS] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[RYEAR] [decimal](4, 0) NULL,
	[RACCT] [varchar](10) NULL,
	[RBUSA] [varchar](4) NULL,
	[RTCUR] [varchar](5) NULL,
	[DRCRK] [varchar](1) NULL,
	[RPMAX] [decimal](3, 0) NULL,
	[TSLVT] [decimal](15, 2) NULL,
	[TSL01] [decimal](15, 2) NULL,
	[TSL02] [decimal](15, 2) NULL,
	[TSL03] [decimal](15, 2) NULL,
	[TSL04] [decimal](15, 2) NULL,
	[TSL05] [decimal](15, 2) NULL,
	[TSL06] [decimal](15, 2) NULL,
	[TSL07] [decimal](15, 2) NULL,
	[TSL08] [decimal](15, 2) NULL,
	[TSL09] [decimal](15, 2) NULL,
	[TSL10] [decimal](15, 2) NULL,
	[TSL11] [decimal](15, 2) NULL,
	[TSL12] [decimal](15, 2) NULL,
	[TSL13] [decimal](15, 2) NULL,
	[TSL14] [decimal](15, 2) NULL,
	[TSL15] [decimal](15, 2) NULL,
	[TSL16] [decimal](15, 2) NULL,
	[HSLVT] [decimal](15, 2) NULL,
	[HSL01] [decimal](15, 2) NULL,
	[HSL02] [decimal](15, 2) NULL,
	[HSL03] [decimal](15, 2) NULL,
	[HSL04] [decimal](15, 2) NULL,
	[HSL05] [decimal](15, 2) NULL,
	[HSL06] [decimal](15, 2) NULL,
	[HSL07] [decimal](15, 2) NULL,
	[HSL08] [decimal](15, 2) NULL,
	[HSL09] [decimal](15, 2) NULL,
	[HSL10] [decimal](15, 2) NULL,
	[HSL11] [decimal](15, 2) NULL,
	[HSL12] [decimal](15, 2) NULL,
	[HSL13] [decimal](15, 2) NULL,
	[HSL14] [decimal](15, 2) NULL,
	[HSL15] [decimal](15, 2) NULL,
	[HSL16] [decimal](15, 2) NULL,
	[CSPRED] [varchar](4) NULL,
	[KSLVT] [decimal](15, 2) NULL,
	[KSL01] [decimal](15, 2) NULL,
	[KSL02] [decimal](15, 2) NULL,
	[KSL03] [decimal](15, 2) NULL,
	[KSL04] [decimal](15, 2) NULL,
	[KSL05] [decimal](15, 2) NULL,
	[KSL06] [decimal](15, 2) NULL,
	[KSL07] [decimal](15, 2) NULL,
	[KSL08] [decimal](15, 2) NULL,
	[KSL09] [decimal](15, 2) NULL,
	[KSL10] [decimal](15, 2) NULL,
	[KSL11] [decimal](15, 2) NULL,
	[KSL12] [decimal](15, 2) NULL,
	[KSL13] [decimal](15, 2) NULL,
	[KSL14] [decimal](15, 2) NULL,
	[KSL15] [decimal](15, 2) NULL,
	[KSL16] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GLT0_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GLT0_TEMP](
	[RCLNT] [varchar](3) NOT NULL,
	[RLDNR] [varchar](2) NOT NULL,
	[RRCTY] [varchar](1) NOT NULL,
	[RVERS] [varchar](3) NOT NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[RYEAR] [decimal](4, 0) NOT NULL,
	[RACCT] [varchar](10) NOT NULL,
	[RBUSA] [varchar](4) NOT NULL,
	[RTCUR] [varchar](5) NOT NULL,
	[DRCRK] [varchar](1) NOT NULL,
	[RPMAX] [decimal](3, 0) NOT NULL,
	[TSLVT] [decimal](15, 2) NULL,
	[TSL01] [decimal](15, 2) NULL,
	[TSL02] [decimal](15, 2) NULL,
	[TSL03] [decimal](15, 2) NULL,
	[TSL04] [decimal](15, 2) NULL,
	[TSL05] [decimal](15, 2) NULL,
	[TSL06] [decimal](15, 2) NULL,
	[TSL07] [decimal](15, 2) NULL,
	[TSL08] [decimal](15, 2) NULL,
	[TSL09] [decimal](15, 2) NULL,
	[TSL10] [decimal](15, 2) NULL,
	[TSL11] [decimal](15, 2) NULL,
	[TSL12] [decimal](15, 2) NULL,
	[TSL13] [decimal](15, 2) NULL,
	[TSL14] [decimal](15, 2) NULL,
	[TSL15] [decimal](15, 2) NULL,
	[TSL16] [decimal](15, 2) NULL,
	[HSLVT] [decimal](15, 2) NULL,
	[HSL01] [decimal](15, 2) NULL,
	[HSL02] [decimal](15, 2) NULL,
	[HSL03] [decimal](15, 2) NULL,
	[HSL04] [decimal](15, 2) NULL,
	[HSL05] [decimal](15, 2) NULL,
	[HSL06] [decimal](15, 2) NULL,
	[HSL07] [decimal](15, 2) NULL,
	[HSL08] [decimal](15, 2) NULL,
	[HSL09] [decimal](15, 2) NULL,
	[HSL10] [decimal](15, 2) NULL,
	[HSL11] [decimal](15, 2) NULL,
	[HSL12] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[RCLNT] ASC,
	[RLDNR] ASC,
	[RRCTY] ASC,
	[RVERS] ASC,
	[BUKRS] ASC,
	[RYEAR] ASC,
	[RACCT] ASC,
	[RBUSA] ASC,
	[RTCUR] ASC,
	[DRCRK] ASC,
	[RPMAX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[TELF1] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[XCPDK] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[AUFSD] [varchar](2) NULL,
	[BAHNE] [varchar](25) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[EXABL] [varchar](1) NULL,
	[FAKSD] [varchar](2) NULL,
	[FISKN] [varchar](10) NULL,
	[KNAZK] [varchar](2) NULL,
	[KNRZA] [varchar](10) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKD] [varchar](4) NULL,
	[KUKLA] [varchar](2) NULL,
	[LIFNR] [varchar](10) NULL,
	[LIFSD] [varchar](2) NULL,
	[LOCCO] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[NIELS] [varchar](2) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[RPMKR] [varchar](5) NULL,
	[SPERR] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF2] [varchar](16) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[LZONE] [varchar](10) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[STCEG] [varchar](20) NULL,
	[DEAR1] [varchar](1) NULL,
	[DEAR2] [varchar](1) NULL,
	[DEAR3] [varchar](1) NULL,
	[DEAR4] [varchar](1) NULL,
	[DEAR5] [varchar](1) NULL,
	[GFORM] [varchar](2) NULL,
	[BRAN1] [varchar](10) NULL,
	[BRAN2] [varchar](10) NULL,
	[BRAN3] [varchar](10) NULL,
	[BRAN4] [varchar](10) NULL,
	[BRAN5] [varchar](10) NULL,
	[EKONT] [varchar](10) NULL,
	[UMSAT] [decimal](8, 2) NULL,
	[UMJAH] [decimal](4, 0) NULL,
	[UWAER] [varchar](5) NULL,
	[JMZAH] [decimal](6, 0) NULL,
	[JMJAH] [decimal](4, 0) NULL,
	[KATR1] [varchar](2) NULL,
	[KATR2] [varchar](2) NULL,
	[KATR3] [varchar](2) NULL,
	[KATR4] [varchar](2) NULL,
	[KATR5] [varchar](2) NULL,
	[KATR6] [varchar](3) NULL,
	[KATR7] [varchar](3) NULL,
	[KATR8] [varchar](3) NULL,
	[KATR9] [varchar](3) NULL,
	[KATR10] [varchar](3) NULL,
	[STKZN] [varchar](1) NULL,
	[UMSA1] [decimal](15, 2) NULL,
	[TXJCD] [varchar](15) NULL,
	[PERIV] [varchar](2) NULL,
	[ABRVW] [varchar](3) NULL,
	[INSPBYDEBI] [varchar](1) NULL,
	[INSPATDEBI] [varchar](1) NULL,
	[KTOCD] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL,
	[SPERZ] [varchar](1) NULL,
	[ETIKG] [varchar](10) NULL,
	[CIVVE] [varchar](1) NULL,
	[MILVE] [varchar](1) NULL,
	[KDKG1] [varchar](2) NULL,
	[KDKG2] [varchar](2) NULL,
	[KDKG3] [varchar](2) NULL,
	[KDKG4] [varchar](2) NULL,
	[KDKG5] [varchar](2) NULL,
	[XKNZA] [varchar](1) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[STCD5] [varchar](60) NULL,
	[XICMS] [varchar](1) NULL,
	[XXIPI] [varchar](1) NULL,
	[XSUBT] [varchar](3) NULL,
	[CFOPC] [varchar](2) NULL,
	[TXLW1] [varchar](3) NULL,
	[TXLW2] [varchar](3) NULL,
	[CCC01] [varchar](1) NULL,
	[CCC02] [varchar](1) NULL,
	[CCC03] [varchar](1) NULL,
	[CCC04] [varchar](1) NULL,
	[CASSD] [varchar](2) NULL,
	[KNURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[DEAR6] [varchar](1) NULL,
	[SUFRAMA] [varchar](9) NULL,
	[RG] [varchar](11) NULL,
	[EXP] [varchar](3) NULL,
	[UF] [varchar](2) NULL,
	[RGDATE] [date] NULL,
	[RIC] [decimal](11, 0) NULL,
	[RNE] [varchar](10) NULL,
	[RNEDATE] [date] NULL,
	[CNAE] [varchar](7) NULL,
	[LEGALNAT] [decimal](4, 0) NULL,
	[CRTN] [varchar](1) NULL,
	[ICMSTAXPAY] [varchar](2) NULL,
	[INDTYP] [varchar](2) NULL,
	[TDT] [varchar](2) NULL,
	[COMSIZE] [varchar](2) NULL,
	[DECREGPC] [varchar](2) NULL,
	[/VSO/R_PALHGT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_UL] [varchar](3) NULL,
	[/VSO/R_PK_MAT] [varchar](1) NULL,
	[/VSO/R_MATPAL] [varchar](18) NULL,
	[/VSO/R_I_NO_LYR] [decimal](2, 0) NULL,
	[/VSO/R_ONE_MAT] [varchar](1) NULL,
	[/VSO/R_ONE_SORT] [varchar](1) NULL,
	[/VSO/R_ULD_SIDE] [decimal](1, 0) NULL,
	[/VSO/R_LOAD_PREF] [decimal](1, 0) NULL,
	[/VSO/R_DPOINT] [varchar](10) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[PSOO1] [varchar](50) NULL,
	[PSOO2] [varchar](50) NULL,
	[PSOO3] [varchar](50) NULL,
	[PSOO4] [varchar](50) NULL,
	[PSOO5] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[TELF1] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[XCPDK] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[AUFSD] [varchar](2) NULL,
	[BAHNE] [varchar](25) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[EXABL] [varchar](1) NULL,
	[FAKSD] [varchar](2) NULL,
	[FISKN] [varchar](10) NULL,
	[KNAZK] [varchar](2) NULL,
	[KNRZA] [varchar](10) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKD] [varchar](4) NULL,
	[KUKLA] [varchar](2) NULL,
	[LIFNR] [varchar](10) NULL,
	[LIFSD] [varchar](2) NULL,
	[LOCCO] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[NIELS] [varchar](2) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[RPMKR] [varchar](5) NULL,
	[SPERR] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF2] [varchar](16) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[LZONE] [varchar](10) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[STCEG] [varchar](20) NULL,
	[DEAR1] [varchar](1) NULL,
	[DEAR2] [varchar](1) NULL,
	[DEAR3] [varchar](1) NULL,
	[DEAR4] [varchar](1) NULL,
	[DEAR5] [varchar](1) NULL,
	[GFORM] [varchar](2) NULL,
	[BRAN1] [varchar](10) NULL,
	[BRAN2] [varchar](10) NULL,
	[BRAN3] [varchar](10) NULL,
	[BRAN4] [varchar](10) NULL,
	[BRAN5] [varchar](10) NULL,
	[EKONT] [varchar](10) NULL,
	[UMSAT] [decimal](8, 2) NULL,
	[UMJAH] [decimal](4, 0) NULL,
	[UWAER] [varchar](5) NULL,
	[JMZAH] [decimal](6, 0) NULL,
	[JMJAH] [decimal](4, 0) NULL,
	[KATR1] [varchar](2) NULL,
	[KATR2] [varchar](2) NULL,
	[KATR3] [varchar](2) NULL,
	[KATR4] [varchar](2) NULL,
	[KATR5] [varchar](2) NULL,
	[KATR6] [varchar](3) NULL,
	[KATR7] [varchar](3) NULL,
	[KATR8] [varchar](3) NULL,
	[KATR9] [varchar](3) NULL,
	[KATR10] [varchar](3) NULL,
	[STKZN] [varchar](1) NULL,
	[UMSA1] [decimal](15, 2) NULL,
	[TXJCD] [varchar](15) NULL,
	[PERIV] [varchar](2) NULL,
	[ABRVW] [varchar](3) NULL,
	[INSPBYDEBI] [varchar](1) NULL,
	[INSPATDEBI] [varchar](1) NULL,
	[KTOCD] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL,
	[SPERZ] [varchar](1) NULL,
	[ETIKG] [varchar](10) NULL,
	[CIVVE] [varchar](1) NULL,
	[MILVE] [varchar](1) NULL,
	[KDKG1] [varchar](2) NULL,
	[KDKG2] [varchar](2) NULL,
	[KDKG3] [varchar](2) NULL,
	[KDKG4] [varchar](2) NULL,
	[KDKG5] [varchar](2) NULL,
	[XKNZA] [varchar](1) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[STCD5] [varchar](60) NULL,
	[XICMS] [varchar](1) NULL,
	[XXIPI] [varchar](1) NULL,
	[XSUBT] [varchar](3) NULL,
	[CFOPC] [varchar](2) NULL,
	[TXLW1] [varchar](3) NULL,
	[TXLW2] [varchar](3) NULL,
	[CCC01] [varchar](1) NULL,
	[CCC02] [varchar](1) NULL,
	[CCC03] [varchar](1) NULL,
	[CCC04] [varchar](1) NULL,
	[CASSD] [varchar](2) NULL,
	[KNURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[DEAR6] [varchar](1) NULL,
	[SUFRAMA] [varchar](9) NULL,
	[RG] [varchar](11) NULL,
	[EXP] [varchar](3) NULL,
	[UF] [varchar](2) NULL,
	[RGDATE] [date] NULL,
	[RIC] [decimal](11, 0) NULL,
	[RNE] [varchar](10) NULL,
	[RNEDATE] [date] NULL,
	[CNAE] [varchar](7) NULL,
	[LEGALNAT] [decimal](4, 0) NULL,
	[CRTN] [varchar](1) NULL,
	[ICMSTAXPAY] [varchar](2) NULL,
	[INDTYP] [varchar](2) NULL,
	[TDT] [varchar](2) NULL,
	[COMSIZE] [varchar](2) NULL,
	[DECREGPC] [varchar](2) NULL,
	[/VSO/R_PALHGT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_UL] [varchar](3) NULL,
	[/VSO/R_PK_MAT] [varchar](1) NULL,
	[/VSO/R_MATPAL] [varchar](18) NULL,
	[/VSO/R_I_NO_LYR] [decimal](2, 0) NULL,
	[/VSO/R_ONE_MAT] [varchar](1) NULL,
	[/VSO/R_ONE_SORT] [varchar](1) NULL,
	[/VSO/R_ULD_SIDE] [decimal](1, 0) NULL,
	[/VSO/R_LOAD_PREF] [decimal](1, 0) NULL,
	[/VSO/R_DPOINT] [varchar](10) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[PSOO1] [varchar](50) NULL,
	[PSOO2] [varchar](50) NULL,
	[PSOO3] [varchar](50) NULL,
	[PSOO4] [varchar](50) NULL,
	[PSOO5] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[BUSAB] [varchar](2) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[KNRZE] [varchar](10) NULL,
	[KNRZB] [varchar](10) NULL,
	[ZAMIM] [varchar](1) NULL,
	[ZAMIV] [varchar](1) NULL,
	[ZAMIR] [varchar](1) NULL,
	[ZAMIB] [varchar](1) NULL,
	[ZAMIO] [varchar](1) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[WAKON] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[VRBKZ] [varchar](2) NULL,
	[VLIBB] [decimal](13, 2) NULL,
	[VRSZL] [decimal](3, 0) NULL,
	[VRSPR] [decimal](3, 0) NULL,
	[VRSNR] [varchar](10) NULL,
	[VERDT] [date] NULL,
	[PERKZ] [varchar](1) NULL,
	[XDEZV] [varchar](1) NULL,
	[XAUSZ] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[REMIT] [varchar](10) NULL,
	[DATLZ] [date] NULL,
	[XZVER] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[BLNKZ] [varchar](2) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[URLID] [varchar](4) NULL,
	[MGRUP] [varchar](2) NULL,
	[LOCKB] [varchar](7) NULL,
	[UZAWE] [varchar](2) NULL,
	[EKVBD] [varchar](10) NULL,
	[SREGL] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[VRSDG] [varchar](3) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XKNZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[WBRSL] [varchar](2) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[CESSION_KZ] [varchar](2) NULL,
	[AVSND] [varchar](1) NULL,
	[AD_HASH] [varchar](10) NULL,
	[QLAND] [varchar](3) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[GMVKZD] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[BUSAB] [varchar](2) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[KNRZE] [varchar](10) NULL,
	[KNRZB] [varchar](10) NULL,
	[ZAMIM] [varchar](1) NULL,
	[ZAMIV] [varchar](1) NULL,
	[ZAMIR] [varchar](1) NULL,
	[ZAMIB] [varchar](1) NULL,
	[ZAMIO] [varchar](1) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[WAKON] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[VRBKZ] [varchar](2) NULL,
	[VLIBB] [decimal](13, 2) NULL,
	[VRSZL] [decimal](3, 0) NULL,
	[VRSPR] [decimal](3, 0) NULL,
	[VRSNR] [varchar](10) NULL,
	[VERDT] [date] NULL,
	[PERKZ] [varchar](1) NULL,
	[XDEZV] [varchar](1) NULL,
	[XAUSZ] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[REMIT] [varchar](10) NULL,
	[DATLZ] [date] NULL,
	[XZVER] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[BLNKZ] [varchar](2) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[URLID] [varchar](4) NULL,
	[MGRUP] [varchar](2) NULL,
	[LOCKB] [varchar](7) NULL,
	[UZAWE] [varchar](2) NULL,
	[EKVBD] [varchar](10) NULL,
	[SREGL] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[VRSDG] [varchar](3) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XKNZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[WBRSL] [varchar](2) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[CESSION_KZ] [varchar](2) NULL,
	[AVSND] [varchar](1) NULL,
	[AD_HASH] [varchar](10) NULL,
	[QLAND] [varchar](3) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[GMVKZD] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB5]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB5](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[MABER] [varchar](2) NULL,
	[MAHNA] [varchar](4) NULL,
	[MANSP] [varchar](1) NULL,
	[MADAT] [date] NULL,
	[MAHNS] [decimal](1, 0) NULL,
	[KNRMA] [varchar](10) NULL,
	[GMVDT] [date] NULL,
	[BUSAB] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB5_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB5_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[MABER] [varchar](2) NULL,
	[MAHNA] [varchar](4) NULL,
	[MANSP] [varchar](1) NULL,
	[MADAT] [date] NULL,
	[MAHNS] [decimal](1, 0) NULL,
	[KNRMA] [varchar](10) NULL,
	[GMVDT] [date] NULL,
	[BUSAB] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNMT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNMT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[MATNR] [varchar](18) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[SORTL] [varchar](10) NULL,
	[KDMAT] [varchar](35) NULL,
	[POSTX] [varchar](40) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[MINLF] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[CHSPL] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[J_1BTXSDC] [varchar](2) NULL,
	[VWPOS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNMT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNMT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[MATNR] [varchar](18) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[SORTL] [varchar](10) NULL,
	[KDMAT] [varchar](35) NULL,
	[POSTX] [varchar](40) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[MINLF] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[CHSPL] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[J_1BTXSDC] [varchar](2) NULL,
	[VWPOS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVH]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVH](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[HITYP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[HKUNNR] [varchar](10) NULL,
	[HVKORG] [varchar](4) NULL,
	[HVTWEG] [varchar](2) NULL,
	[HSPART] [varchar](2) NULL,
	[GRPNO] [decimal](3, 0) NULL,
	[BOKRE] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVH_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVH_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[HITYP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[HKUNNR] [varchar](10) NULL,
	[HVKORG] [varchar](4) NULL,
	[HVTWEG] [varchar](2) NULL,
	[HSPART] [varchar](2) NULL,
	[GRPNO] [decimal](3, 0) NULL,
	[BOKRE] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[PARVW] [varchar](2) NULL,
	[PARZA] [decimal](3, 0) NULL,
	[KUNN2] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[PARNR] [decimal](10, 0) NULL,
	[KNREF] [varchar](30) NULL,
	[DEFPA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVP_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVP_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[PARVW] [varchar](2) NULL,
	[PARZA] [decimal](3, 0) NULL,
	[KUNN2] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[PARNR] [decimal](10, 0) NULL,
	[KNREF] [varchar](30) NULL,
	[DEFPA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVV]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVV](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[BEGRU] [varchar](4) NULL,
	[LOEVM] [varchar](1) NULL,
	[VERSG] [varchar](1) NULL,
	[AUFSD] [varchar](2) NULL,
	[KALKS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[BZIRK] [varchar](6) NULL,
	[KONDA] [varchar](2) NULL,
	[PLTYP] [varchar](2) NULL,
	[AWAHR] [decimal](3, 0) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[LIFSD] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZAZU] [varchar](1) NULL,
	[CHSPL] [varchar](1) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[VSBED] [varchar](2) NULL,
	[FAKSD] [varchar](2) NULL,
	[MRNKZ] [varchar](1) NULL,
	[PERFK] [varchar](2) NULL,
	[PERRL] [varchar](2) NULL,
	[KVAKZ] [varchar](1) NULL,
	[KVAWT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[KLABC] [varchar](2) NULL,
	[KTGRD] [varchar](2) NULL,
	[ZTERM] [varchar](4) NULL,
	[VWERK] [varchar](4) NULL,
	[VKGRP] [varchar](3) NULL,
	[VKBUR] [varchar](4) NULL,
	[VSORT] [varchar](10) NULL,
	[KVGR1] [varchar](3) NULL,
	[KVGR2] [varchar](3) NULL,
	[KVGR3] [varchar](3) NULL,
	[KVGR4] [varchar](3) NULL,
	[KVGR5] [varchar](3) NULL,
	[BOKRE] [varchar](1) NULL,
	[BOIDT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[PRFRE] [varchar](1) NULL,
	[PRAT1] [varchar](1) NULL,
	[PRAT2] [varchar](1) NULL,
	[PRAT3] [varchar](1) NULL,
	[PRAT4] [varchar](1) NULL,
	[PRAT5] [varchar](1) NULL,
	[PRAT6] [varchar](1) NULL,
	[PRAT7] [varchar](1) NULL,
	[PRAT8] [varchar](1) NULL,
	[PRAT9] [varchar](1) NULL,
	[PRATA] [varchar](1) NULL,
	[KABSS] [varchar](4) NULL,
	[KKBER] [varchar](4) NULL,
	[CASSD] [varchar](2) NULL,
	[RDOFF] [varchar](1) NULL,
	[AGREL] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[PVKSM] [varchar](2) NULL,
	[PODKZ] [varchar](1) NULL,
	[PODTG] [decimal](11, 0) NULL,
	[BLIND] [varchar](1) NULL,
	[CARRIER_NOTIF] [varchar](1) NULL,
	[/BEV1/EMLGPFAND] [varchar](1) NULL,
	[/BEV1/EMLGFORTS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVV_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVV_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[BEGRU] [varchar](4) NULL,
	[LOEVM] [varchar](1) NULL,
	[VERSG] [varchar](1) NULL,
	[AUFSD] [varchar](2) NULL,
	[KALKS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[BZIRK] [varchar](6) NULL,
	[KONDA] [varchar](2) NULL,
	[PLTYP] [varchar](2) NULL,
	[AWAHR] [decimal](3, 0) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[LIFSD] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZAZU] [varchar](1) NULL,
	[CHSPL] [varchar](1) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[VSBED] [varchar](2) NULL,
	[FAKSD] [varchar](2) NULL,
	[MRNKZ] [varchar](1) NULL,
	[PERFK] [varchar](2) NULL,
	[PERRL] [varchar](2) NULL,
	[KVAKZ] [varchar](1) NULL,
	[KVAWT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[KLABC] [varchar](2) NULL,
	[KTGRD] [varchar](2) NULL,
	[ZTERM] [varchar](4) NULL,
	[VWERK] [varchar](4) NULL,
	[VKGRP] [varchar](3) NULL,
	[VKBUR] [varchar](4) NULL,
	[VSORT] [varchar](10) NULL,
	[KVGR1] [varchar](3) NULL,
	[KVGR2] [varchar](3) NULL,
	[KVGR3] [varchar](3) NULL,
	[KVGR4] [varchar](3) NULL,
	[KVGR5] [varchar](3) NULL,
	[BOKRE] [varchar](1) NULL,
	[BOIDT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[PRFRE] [varchar](1) NULL,
	[PRAT1] [varchar](1) NULL,
	[PRAT2] [varchar](1) NULL,
	[PRAT3] [varchar](1) NULL,
	[PRAT4] [varchar](1) NULL,
	[PRAT5] [varchar](1) NULL,
	[PRAT6] [varchar](1) NULL,
	[PRAT7] [varchar](1) NULL,
	[PRAT8] [varchar](1) NULL,
	[PRAT9] [varchar](1) NULL,
	[PRATA] [varchar](1) NULL,
	[KABSS] [varchar](4) NULL,
	[KKBER] [varchar](4) NULL,
	[CASSD] [varchar](2) NULL,
	[RDOFF] [varchar](1) NULL,
	[AGREL] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[PVKSM] [varchar](2) NULL,
	[PODKZ] [varchar](1) NULL,
	[PODTG] [decimal](11, 0) NULL,
	[BLIND] [varchar](1) NULL,
	[CARRIER_NOTIF] [varchar](1) NULL,
	[/BEV1/EMLGPFAND] [varchar](1) NULL,
	[/BEV1/EMLGFORTS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONH]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONH](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[KVEWE] [varchar](1) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VAKEY] [varchar](100) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[KOSRT] [varchar](10) NULL,
	[KZUST] [varchar](3) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[KNUMA_SD] [varchar](10) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[LICNO] [varchar](20) NULL,
	[LICDT] [date] NULL,
	[VADAT] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONH_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONH_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[KVEWE] [varchar](1) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VAKEY] [varchar](100) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[KOSRT] [varchar](10) NULL,
	[KZUST] [varchar](3) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[KNUMA_SD] [varchar](10) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[LICNO] [varchar](20) NULL,
	[LICDT] [date] NULL,
	[VADAT] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONM]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONM](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[KOPOS] [decimal](2, 0) NULL,
	[KLFN1] [decimal](4, 0) NULL,
	[KSTBM] [decimal](15, 3) NULL,
	[KBETR] [decimal](11, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONM_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONM_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[KOPOS] [decimal](2, 0) NULL,
	[KLFN1] [decimal](4, 0) NULL,
	[KSTBM] [decimal](15, 3) NULL,
	[KBETR] [decimal](11, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[KOPOS] [decimal](2, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[KNUMT] [varchar](10) NULL,
	[STFKZ] [varchar](1) NULL,
	[KZBZG] [varchar](1) NULL,
	[KSTBM] [decimal](15, 3) NULL,
	[KONMS] [varchar](3) NULL,
	[KSTBW] [decimal](15, 2) NULL,
	[KONWS] [varchar](5) NULL,
	[KRECH] [varchar](1) NULL,
	[KBETR] [decimal](11, 2) NULL,
	[KONWA] [varchar](5) NULL,
	[KPEIN] [decimal](5, 0) NULL,
	[KMEIN] [varchar](3) NULL,
	[PRSCH] [varchar](4) NULL,
	[KUMZA] [decimal](5, 0) NULL,
	[KUMNE] [decimal](5, 0) NULL,
	[MEINS] [varchar](3) NULL,
	[MXWRT] [decimal](11, 2) NULL,
	[GKWRT] [decimal](11, 2) NULL,
	[PKWRT] [decimal](15, 2) NULL,
	[FKWRT] [decimal](15, 2) NULL,
	[RSWRT] [decimal](15, 2) NULL,
	[KWAEH] [varchar](5) NULL,
	[UKBAS] [decimal](15, 2) NULL,
	[KZNEP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[MWSK1] [varchar](2) NULL,
	[LOEVM_KO] [varchar](1) NULL,
	[ZAEHK_IND] [decimal](2, 0) NULL,
	[BOMAT] [varchar](18) NULL,
	[KBRUE] [decimal](11, 2) NULL,
	[KSPAE] [varchar](1) NULL,
	[BOSTA] [varchar](1) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[VALTG] [decimal](2, 0) NULL,
	[VALDT] [date] NULL,
	[ZTERM] [varchar](4) NULL,
	[ANZAUF] [decimal](2, 0) NULL,
	[MIKBAS] [decimal](15, 3) NULL,
	[MXKBAS] [decimal](15, 3) NULL,
	[KOMXWRT] [decimal](13, 2) NULL,
	[KLF_STG] [decimal](4, 0) NULL,
	[KLF_KAL] [decimal](4, 0) NULL,
	[VKKAL] [varchar](1) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[MWSK2] [varchar](2) NULL,
	[VERTT] [varchar](1) NULL,
	[VERTN] [varchar](13) NULL,
	[VBEWA] [varchar](4) NULL,
	[MDFLG] [varchar](1) NULL,
	[KFRST] [varchar](1) NULL,
	[UASTA] [varchar](1) NULL,
	[/BEV1/ECRTT] [varchar](1) NULL,
	[/BEV1/ECRTN] [varchar](13) NULL,
	[/BEV1/ECEWA] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONP_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONP_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[KOPOS] [decimal](2, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[KNUMT] [varchar](10) NULL,
	[STFKZ] [varchar](1) NULL,
	[KZBZG] [varchar](1) NULL,
	[KSTBM] [decimal](15, 3) NULL,
	[KONMS] [varchar](3) NULL,
	[KSTBW] [decimal](15, 2) NULL,
	[KONWS] [varchar](5) NULL,
	[KRECH] [varchar](1) NULL,
	[KBETR] [decimal](11, 2) NULL,
	[KONWA] [varchar](5) NULL,
	[KPEIN] [decimal](5, 0) NULL,
	[KMEIN] [varchar](3) NULL,
	[PRSCH] [varchar](4) NULL,
	[KUMZA] [decimal](5, 0) NULL,
	[KUMNE] [decimal](5, 0) NULL,
	[MEINS] [varchar](3) NULL,
	[MXWRT] [decimal](11, 2) NULL,
	[GKWRT] [decimal](11, 2) NULL,
	[PKWRT] [decimal](15, 2) NULL,
	[FKWRT] [decimal](15, 2) NULL,
	[RSWRT] [decimal](15, 2) NULL,
	[KWAEH] [varchar](5) NULL,
	[UKBAS] [decimal](15, 2) NULL,
	[KZNEP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[MWSK1] [varchar](2) NULL,
	[LOEVM_KO] [varchar](1) NULL,
	[ZAEHK_IND] [decimal](2, 0) NULL,
	[BOMAT] [varchar](18) NULL,
	[KBRUE] [decimal](11, 2) NULL,
	[KSPAE] [varchar](1) NULL,
	[BOSTA] [varchar](1) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[VALTG] [decimal](2, 0) NULL,
	[VALDT] [date] NULL,
	[ZTERM] [varchar](4) NULL,
	[ANZAUF] [decimal](2, 0) NULL,
	[MIKBAS] [decimal](15, 3) NULL,
	[MXKBAS] [decimal](15, 3) NULL,
	[KOMXWRT] [decimal](13, 2) NULL,
	[KLF_STG] [decimal](4, 0) NULL,
	[KLF_KAL] [decimal](4, 0) NULL,
	[VKKAL] [varchar](1) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[MWSK2] [varchar](2) NULL,
	[VERTT] [varchar](1) NULL,
	[VERTN] [varchar](13) NULL,
	[VBEWA] [varchar](4) NULL,
	[MDFLG] [varchar](1) NULL,
	[KFRST] [varchar](1) NULL,
	[UASTA] [varchar](1) NULL,
	[/BEV1/ECRTT] [varchar](1) NULL,
	[/BEV1/ECRTN] [varchar](13) NULL,
	[/BEV1/ECEWA] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFA1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFA1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ESRNR] [varchar](11) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKK] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LNRZA] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[SPERR] [varchar](1) NULL,
	[SPERM] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[XCPDK] [varchar](1) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[FISKN] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[STKZN] [varchar](1) NULL,
	[SPERQ] [varchar](2) NULL,
	[GBORT] [varchar](25) NULL,
	[GBDAT] [date] NULL,
	[SEXKZ] [varchar](1) NULL,
	[KRAUS] [varchar](11) NULL,
	[REVDB] [date] NULL,
	[QSSYS] [varchar](4) NULL,
	[KTOCK] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[LTSNA] [varchar](1) NULL,
	[WERKR] [varchar](1) NULL,
	[PLKAL] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[SPERZ] [varchar](1) NULL,
	[SCACD] [varchar](4) NULL,
	[SFRGR] [varchar](4) NULL,
	[LZONE] [varchar](10) NULL,
	[XLFZA] [varchar](1) NULL,
	[DLGRP] [varchar](4) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[REGSS] [varchar](1) NULL,
	[ACTSS] [varchar](3) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[IPISP] [varchar](1) NULL,
	[TAXBS] [decimal](1, 0) NULL,
	[PROFS] [varchar](30) NULL,
	[STGDL] [varchar](2) NULL,
	[EMNFR] [varchar](10) NULL,
	[LFURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[QSSYSDAT] [date] NULL,
	[PODKZB] [varchar](1) NULL,
	[FISKU] [varchar](10) NULL,
	[STENR] [varchar](18) NULL,
	[CARRIER_CONF] [varchar](1) NULL,
	[J_SC_CAPITAL] [decimal](15, 2) NULL,
	[J_SC_CURRENCY] [varchar](5) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL,
	[SCHEDULING_TYPE] [varchar](1) NULL,
	[SUBMI_RELEVANT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFA1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFA1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ESRNR] [varchar](11) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKK] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LNRZA] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[SPERR] [varchar](1) NULL,
	[SPERM] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[XCPDK] [varchar](1) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[FISKN] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[STKZN] [varchar](1) NULL,
	[SPERQ] [varchar](2) NULL,
	[GBORT] [varchar](25) NULL,
	[GBDAT] [date] NULL,
	[SEXKZ] [varchar](1) NULL,
	[KRAUS] [varchar](11) NULL,
	[REVDB] [date] NULL,
	[QSSYS] [varchar](4) NULL,
	[KTOCK] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[LTSNA] [varchar](1) NULL,
	[WERKR] [varchar](1) NULL,
	[PLKAL] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[SPERZ] [varchar](1) NULL,
	[SCACD] [varchar](4) NULL,
	[SFRGR] [varchar](4) NULL,
	[LZONE] [varchar](10) NULL,
	[XLFZA] [varchar](1) NULL,
	[DLGRP] [varchar](4) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[REGSS] [varchar](1) NULL,
	[ACTSS] [varchar](3) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[IPISP] [varchar](1) NULL,
	[TAXBS] [decimal](1, 0) NULL,
	[PROFS] [varchar](30) NULL,
	[STGDL] [varchar](2) NULL,
	[EMNFR] [varchar](10) NULL,
	[LFURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[QSSYSDAT] [date] NULL,
	[PODKZB] [varchar](1) NULL,
	[FISKU] [varchar](10) NULL,
	[STENR] [varchar](18) NULL,
	[CARRIER_CONF] [varchar](1) NULL,
	[J_SC_CAPITAL] [decimal](15, 2) NULL,
	[J_SC_CURRENCY] [varchar](5) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL,
	[SCHEDULING_TYPE] [varchar](1) NULL,
	[SUBMI_RELEVANT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFB1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFB1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[BUSAB] [varchar](2) NULL,
	[LNRZE] [varchar](10) NULL,
	[LNRZB] [varchar](10) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[DATLZ] [date] NULL,
	[XDEZV] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[REPRF] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[QSZNR] [varchar](10) NULL,
	[QSZDT] [date] NULL,
	[QSSKZ] [varchar](2) NULL,
	[BLNKZ] [varchar](2) NULL,
	[MINDK] [varchar](3) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[MGRUP] [varchar](2) NULL,
	[UZAWE] [varchar](2) NULL,
	[QSREC] [varchar](2) NULL,
	[QSBGR] [varchar](1) NULL,
	[QLAND] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[TOGRR] [varchar](4) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XLFZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[XAUSZ] [varchar](1) NULL,
	[CERDT] [date] NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[AVSND] [varchar](1) NULL,
	[AD_HASH] [varchar](10) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[J_SC_SUBCONTYPE] [varchar](1) NULL,
	[J_SC_COMPDATE] [decimal](3, 0) NULL,
	[J_SC_OFFSM] [varchar](1) NULL,
	[J_SC_OFFSR] [decimal](3, 0) NULL,
	[BASIS_PNT] [decimal](6, 3) NULL,
	[GMVKZK] [varchar](1) NULL,
	[PREPAY_RELEVANT] [varchar](1) NULL,
	[ASSIGN_TEST] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFB1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFB1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[BUSAB] [varchar](2) NULL,
	[LNRZE] [varchar](10) NULL,
	[LNRZB] [varchar](10) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[DATLZ] [date] NULL,
	[XDEZV] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[REPRF] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[QSZNR] [varchar](10) NULL,
	[QSZDT] [date] NULL,
	[QSSKZ] [varchar](2) NULL,
	[BLNKZ] [varchar](2) NULL,
	[MINDK] [varchar](3) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[MGRUP] [varchar](2) NULL,
	[UZAWE] [varchar](2) NULL,
	[QSREC] [varchar](2) NULL,
	[QSBGR] [varchar](1) NULL,
	[QLAND] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[TOGRR] [varchar](4) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XLFZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[XAUSZ] [varchar](1) NULL,
	[CERDT] [date] NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[AVSND] [varchar](1) NULL,
	[AD_HASH] [varchar](10) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[J_SC_SUBCONTYPE] [varchar](1) NULL,
	[J_SC_COMPDATE] [decimal](3, 0) NULL,
	[J_SC_OFFSM] [varchar](1) NULL,
	[J_SC_OFFSR] [decimal](3, 0) NULL,
	[BASIS_PNT] [decimal](6, 3) NULL,
	[GMVKZK] [varchar](1) NULL,
	[PREPAY_RELEVANT] [varchar](1) NULL,
	[ASSIGN_TEST] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFM1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFM1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERM] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[LFABC] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[MINBW] [decimal](13, 2) NULL,
	[ZTERM] [varchar](4) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[KALSK] [varchar](2) NULL,
	[KZAUT] [varchar](1) NULL,
	[EXPVZ] [varchar](1) NULL,
	[ZOLLA] [varchar](6) NULL,
	[MEPRF] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[XERSY] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[MRPPP] [varchar](3) NULL,
	[LFRHY] [varchar](3) NULL,
	[LIBES] [varchar](1) NULL,
	[LIPRE] [varchar](2) NULL,
	[LISER] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[NRGEW] [varchar](1) NULL,
	[BOIND] [varchar](1) NULL,
	[BLIND] [varchar](1) NULL,
	[KZRET] [varchar](1) NULL,
	[SKRIT] [varchar](1) NULL,
	[BSTAE] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[VENSL] [decimal](4, 1) NULL,
	[BOPNR] [varchar](4) NULL,
	[XERSR] [varchar](1) NULL,
	[EIKTO] [varchar](12) NULL,
	[ABUEB] [varchar](4) NULL,
	[PAPRF] [varchar](4) NULL,
	[AGREL] [varchar](1) NULL,
	[XNBWY] [varchar](1) NULL,
	[VSBED] [varchar](2) NULL,
	[LEBRE] [varchar](1) NULL,
	[BOLRE] [varchar](1) NULL,
	[UMSAE] [varchar](1) NULL,
	[VENDOR_RMA_REQ] [varchar](1) NULL,
	[ACTIVITY_PROFIL] [varchar](4) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFM1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFM1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERM] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[LFABC] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[MINBW] [decimal](13, 2) NULL,
	[ZTERM] [varchar](4) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[KALSK] [varchar](2) NULL,
	[KZAUT] [varchar](1) NULL,
	[EXPVZ] [varchar](1) NULL,
	[ZOLLA] [varchar](6) NULL,
	[MEPRF] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[XERSY] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[MRPPP] [varchar](3) NULL,
	[LFRHY] [varchar](3) NULL,
	[LIBES] [varchar](1) NULL,
	[LIPRE] [varchar](2) NULL,
	[LISER] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[NRGEW] [varchar](1) NULL,
	[BOIND] [varchar](1) NULL,
	[BLIND] [varchar](1) NULL,
	[KZRET] [varchar](1) NULL,
	[SKRIT] [varchar](1) NULL,
	[BSTAE] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[VENSL] [decimal](4, 1) NULL,
	[BOPNR] [varchar](4) NULL,
	[XERSR] [varchar](1) NULL,
	[EIKTO] [varchar](12) NULL,
	[ABUEB] [varchar](4) NULL,
	[PAPRF] [varchar](4) NULL,
	[AGREL] [varchar](1) NULL,
	[XNBWY] [varchar](1) NULL,
	[VSBED] [varchar](2) NULL,
	[LEBRE] [varchar](1) NULL,
	[BOLRE] [varchar](1) NULL,
	[UMSAE] [varchar](1) NULL,
	[VENDOR_RMA_REQ] [varchar](1) NULL,
	[ACTIVITY_PROFIL] [varchar](4) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAKT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAKT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAKT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAKT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARA]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARA](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[VPSTA] [varchar](15) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[MTART] [varchar](4) NULL,
	[MBRSH] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[BISMT] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BSTME] [varchar](3) NULL,
	[ZEINR] [varchar](22) NULL,
	[ZEIAR] [varchar](3) NULL,
	[ZEIVR] [varchar](2) NULL,
	[ZEIFO] [varchar](4) NULL,
	[AESZN] [varchar](6) NULL,
	[BLATT] [varchar](3) NULL,
	[BLANZ] [decimal](3, 0) NULL,
	[FERTH] [varchar](18) NULL,
	[FORMT] [varchar](4) NULL,
	[GROES] [varchar](32) NULL,
	[WRKST] [varchar](48) NULL,
	[NORMT] [varchar](18) NULL,
	[LABOR] [varchar](3) NULL,
	[EKWSL] [varchar](4) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BEHVO] [varchar](2) NULL,
	[RAUBE] [varchar](2) NULL,
	[TEMPB] [varchar](2) NULL,
	[DISST] [varchar](3) NULL,
	[TRAGR] [varchar](4) NULL,
	[STOFF] [varchar](18) NULL,
	[SPART] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[EANNR] [varchar](13) NULL,
	[WESCH] [decimal](13, 3) NULL,
	[BWVOR] [varchar](1) NULL,
	[BWSCL] [varchar](1) NULL,
	[SAISO] [varchar](4) NULL,
	[ETIAR] [varchar](2) NULL,
	[ETIFO] [varchar](2) NULL,
	[ENTAR] [varchar](1) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[AEKLK] [varchar](1) NULL,
	[CADKZ] [varchar](1) NULL,
	[QMPUR] [varchar](1) NULL,
	[ERGEW] [decimal](13, 3) NULL,
	[ERGEI] [varchar](3) NULL,
	[ERVOL] [decimal](13, 3) NULL,
	[ERVOE] [varchar](3) NULL,
	[GEWTO] [decimal](3, 1) NULL,
	[VOLTO] [decimal](3, 1) NULL,
	[VABME] [varchar](1) NULL,
	[KZREV] [varchar](1) NULL,
	[KZKFG] [varchar](1) NULL,
	[XCHPF] [varchar](1) NULL,
	[VHART] [varchar](4) NULL,
	[FUELG] [decimal](3, 0) NULL,
	[STFAK] [int] NULL,
	[MAGRV] [varchar](4) NULL,
	[BEGRU] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[LIQDT] [date] NULL,
	[SAISJ] [varchar](4) NULL,
	[PLGTP] [varchar](2) NULL,
	[MLGUT] [varchar](1) NULL,
	[EXTWG] [varchar](18) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KZKUP] [varchar](1) NULL,
	[KZNFM] [varchar](1) NULL,
	[PMATA] [varchar](18) NULL,
	[MSTAE] [varchar](2) NULL,
	[MSTAV] [varchar](2) NULL,
	[MSTDE] [date] NULL,
	[MSTDV] [date] NULL,
	[TAKLV] [varchar](1) NULL,
	[RBNRM] [varchar](9) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[MHDHB] [decimal](4, 0) NULL,
	[MHDLP] [decimal](3, 0) NULL,
	[INHME] [varchar](3) NULL,
	[INHAL] [decimal](13, 3) NULL,
	[VPREH] [decimal](5, 0) NULL,
	[ETIAG] [varchar](18) NULL,
	[INHBR] [decimal](13, 3) NULL,
	[CMETH] [varchar](1) NULL,
	[CUOBF] [decimal](18, 0) NULL,
	[KZUMW] [varchar](1) NULL,
	[KOSCH] [varchar](18) NULL,
	[SPROF] [varchar](1) NULL,
	[NRFHG] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[BMATN] [varchar](18) NULL,
	[MPROF] [varchar](4) NULL,
	[KZWSM] [varchar](1) NULL,
	[SAITY] [varchar](2) NULL,
	[PROFL] [varchar](3) NULL,
	[IHIVI] [varchar](1) NULL,
	[ILOOS] [varchar](1) NULL,
	[SERLV] [varchar](1) NULL,
	[KZGVH] [varchar](1) NULL,
	[XGCHP] [varchar](1) NULL,
	[KZEFF] [varchar](1) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[IPRKZ] [varchar](1) NULL,
	[RDMHD] [varchar](1) NULL,
	[PRZUS] [varchar](1) NULL,
	[MTPOS_MARA] [varchar](4) NULL,
	[BFLME] [varchar](1) NULL,
	[MATFI] [varchar](1) NULL,
	[CMREL] [varchar](1) NULL,
	[BBTYP] [varchar](1) NULL,
	[SLED_BBD] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[GENNR] [varchar](18) NULL,
	[RMATP] [varchar](18) NULL,
	[GDS_RELEVANT] [varchar](1) NULL,
	[WEORA] [varchar](1) NULL,
	[HUTYP_DFLT] [varchar](4) NULL,
	[PILFERABLE] [varchar](1) NULL,
	[WHSTC] [varchar](2) NULL,
	[WHMATGR] [varchar](4) NULL,
	[HNDLCODE] [varchar](4) NULL,
	[HAZMAT] [varchar](1) NULL,
	[HUTYP] [varchar](4) NULL,
	[TARE_VAR] [varchar](1) NULL,
	[MAXC] [decimal](15, 3) NULL,
	[MAXC_TOL] [decimal](3, 1) NULL,
	[MAXL] [decimal](15, 3) NULL,
	[MAXB] [decimal](15, 3) NULL,
	[MAXH] [decimal](15, 3) NULL,
	[MAXDIM_UOM] [varchar](3) NULL,
	[HERKL] [varchar](3) NULL,
	[MFRGR] [varchar](8) NULL,
	[QQTIME] [decimal](3, 0) NULL,
	[QQTIMEUOM] [varchar](3) NULL,
	[QGRP] [varchar](4) NULL,
	[SERIAL] [varchar](4) NULL,
	[PS_SMARTFORM] [varchar](30) NULL,
	[LOGUNIT] [varchar](3) NULL,
	[CWQREL] [varchar](1) NULL,
	[CWQPROC] [varchar](2) NULL,
	[CWQTOLGR] [varchar](9) NULL,
	[/BEV1/LULEINH] [decimal](8, 0) NULL,
	[/BEV1/LULDEGRP] [varchar](3) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[/DSD/SL_TOLTYP] [varchar](4) NULL,
	[/DSD/SV_CNT_GRP] [varchar](10) NULL,
	[/DSD/VC_GROUP] [varchar](6) NULL,
	[/VSO/R_TILT_IND] [varchar](1) NULL,
	[/VSO/R_STACK_IND] [varchar](1) NULL,
	[/VSO/R_BOT_IND] [varchar](1) NULL,
	[/VSO/R_TOP_IND] [varchar](1) NULL,
	[/VSO/R_STACK_NO] [decimal](3, 0) NULL,
	[/VSO/R_PAL_IND] [varchar](1) NULL,
	[/VSO/R_PAL_OVR_D] [decimal](13, 3) NULL,
	[/VSO/R_PAL_OVR_W] [decimal](13, 3) NULL,
	[/VSO/R_PAL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_MIN_H] [decimal](13, 3) NULL,
	[/VSO/R_TOL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_NO_P_GVH] [decimal](2, 0) NULL,
	[/VSO/R_QUAN_UNIT] [varchar](3) NULL,
	[/VSO/R_KZGVH_IND] [varchar](1) NULL,
	[PACKCODE] [varchar](10) NULL,
	[DG_PACK_STATUS] [varchar](10) NULL,
	[MCOND] [varchar](1) NULL,
	[RETDELC] [varchar](1) NULL,
	[LOGLEV_RETO] [varchar](1) NULL,
	[NSNID] [varchar](9) NULL,
	[IMATN] [varchar](18) NULL,
	[PICNUM] [varchar](18) NULL,
	[BSTAT] [varchar](2) NULL,
	[COLOR_ATINN] [decimal](10, 0) NULL,
	[SIZE1_ATINN] [decimal](10, 0) NULL,
	[SIZE2_ATINN] [decimal](10, 0) NULL,
	[COLOR] [varchar](18) NULL,
	[SIZE1] [varchar](18) NULL,
	[SIZE2] [varchar](18) NULL,
	[FREE_CHAR] [varchar](18) NULL,
	[CARE_CODE] [varchar](16) NULL,
	[BRAND_ID] [varchar](4) NULL,
	[FIBER_CODE1] [varchar](3) NULL,
	[FIBER_PART1] [decimal](3, 0) NULL,
	[FIBER_CODE2] [varchar](3) NULL,
	[FIBER_PART2] [decimal](3, 0) NULL,
	[FIBER_CODE3] [varchar](3) NULL,
	[FIBER_PART3] [decimal](3, 0) NULL,
	[FIBER_CODE4] [varchar](3) NULL,
	[FIBER_PART4] [decimal](3, 0) NULL,
	[FIBER_CODE5] [varchar](3) NULL,
	[FIBER_PART5] [decimal](3, 0) NULL,
	[FASHGRD] [varchar](4) NULL,
	[ZZBFLME] [varchar](18) NULL,
	[ZZPRDPL] [varchar](4) NULL,
	[ZZSELMK] [varchar](3) NULL,
	[ZZMAXLZ] [decimal](5, 0) NULL,
	[ZZPALBD] [varchar](10) NULL,
	[ZZPALTP] [varchar](3) NULL,
	[ZZOPRAW] [varchar](1) NULL,
	[ZZGDPLS] [decimal](12, 3) NULL,
	[ZZGDALU] [decimal](12, 3) NULL,
	[ZZGDCRT] [decimal](12, 3) NULL,
	[ZZGDCNT] [decimal](12, 3) NULL,
	[ZZGDSTW] [decimal](12, 8) NULL,
	[ZZFRM] [varchar](1) NULL,
	[ZZDFCT_GRP] [decimal](6, 0) NULL,
	[ZZMULT_DFCT] [varchar](1) NULL,
	[ZZPCKTYP] [varchar](10) NULL,
	[ZZPRMIND] [varchar](10) NULL,
	[ZZCHNLCAT] [varchar](10) NULL,
	[ZZBUS] [varchar](10) NULL,
	[ZZREGION] [varchar](10) NULL,
	[ZZSPART] [varchar](10) NULL,
	[ZZSKUTYP] [varchar](12) NULL,
	[ZZREMDT] [date] NULL,
	[ZZCATGY] [varchar](10) NULL,
	[ZZDEADT] [date] NULL,
	[ZZACDEDT] [date] NULL,
	[ZZSKUST] [varchar](8) NULL,
	[ZZCULLST] [varchar](10) NULL,
	[ZGDALU] [decimal](12, 3) NULL,
	[ZGDSTL] [decimal](12, 3) NULL,
	[ZGDRPL] [decimal](12, 3) NULL,
	[ZGDSP1] [decimal](12, 3) NULL,
	[ZGDSP2] [decimal](12, 3) NULL,
	[ZZDPFFM] [varchar](30) NULL,
	[ZZDPFFL] [varchar](30) NULL,
	[ZZDPPPT] [varchar](30) NULL,
	[ZZDPCUS] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARA_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARA_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[VPSTA] [varchar](15) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[MTART] [varchar](4) NULL,
	[MBRSH] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[BISMT] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BSTME] [varchar](3) NULL,
	[ZEINR] [varchar](22) NULL,
	[ZEIAR] [varchar](3) NULL,
	[ZEIVR] [varchar](2) NULL,
	[ZEIFO] [varchar](4) NULL,
	[AESZN] [varchar](6) NULL,
	[BLATT] [varchar](3) NULL,
	[BLANZ] [decimal](3, 0) NULL,
	[FERTH] [varchar](18) NULL,
	[FORMT] [varchar](4) NULL,
	[GROES] [varchar](32) NULL,
	[WRKST] [varchar](48) NULL,
	[NORMT] [varchar](18) NULL,
	[LABOR] [varchar](3) NULL,
	[EKWSL] [varchar](4) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BEHVO] [varchar](2) NULL,
	[RAUBE] [varchar](2) NULL,
	[TEMPB] [varchar](2) NULL,
	[DISST] [varchar](3) NULL,
	[TRAGR] [varchar](4) NULL,
	[STOFF] [varchar](18) NULL,
	[SPART] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[EANNR] [varchar](13) NULL,
	[WESCH] [decimal](13, 3) NULL,
	[BWVOR] [varchar](1) NULL,
	[BWSCL] [varchar](1) NULL,
	[SAISO] [varchar](4) NULL,
	[ETIAR] [varchar](2) NULL,
	[ETIFO] [varchar](2) NULL,
	[ENTAR] [varchar](1) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[AEKLK] [varchar](1) NULL,
	[CADKZ] [varchar](1) NULL,
	[QMPUR] [varchar](1) NULL,
	[ERGEW] [decimal](13, 3) NULL,
	[ERGEI] [varchar](3) NULL,
	[ERVOL] [decimal](13, 3) NULL,
	[ERVOE] [varchar](3) NULL,
	[GEWTO] [decimal](3, 1) NULL,
	[VOLTO] [decimal](3, 1) NULL,
	[VABME] [varchar](1) NULL,
	[KZREV] [varchar](1) NULL,
	[KZKFG] [varchar](1) NULL,
	[XCHPF] [varchar](1) NULL,
	[VHART] [varchar](4) NULL,
	[FUELG] [decimal](3, 0) NULL,
	[STFAK] [int] NULL,
	[MAGRV] [varchar](4) NULL,
	[BEGRU] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[LIQDT] [date] NULL,
	[SAISJ] [varchar](4) NULL,
	[PLGTP] [varchar](2) NULL,
	[MLGUT] [varchar](1) NULL,
	[EXTWG] [varchar](18) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KZKUP] [varchar](1) NULL,
	[KZNFM] [varchar](1) NULL,
	[PMATA] [varchar](18) NULL,
	[MSTAE] [varchar](2) NULL,
	[MSTAV] [varchar](2) NULL,
	[MSTDE] [date] NULL,
	[MSTDV] [date] NULL,
	[TAKLV] [varchar](1) NULL,
	[RBNRM] [varchar](9) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[MHDHB] [decimal](4, 0) NULL,
	[MHDLP] [decimal](3, 0) NULL,
	[INHME] [varchar](3) NULL,
	[INHAL] [decimal](13, 3) NULL,
	[VPREH] [decimal](5, 0) NULL,
	[ETIAG] [varchar](18) NULL,
	[INHBR] [decimal](13, 3) NULL,
	[CMETH] [varchar](1) NULL,
	[CUOBF] [decimal](18, 0) NULL,
	[KZUMW] [varchar](1) NULL,
	[KOSCH] [varchar](18) NULL,
	[SPROF] [varchar](1) NULL,
	[NRFHG] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[BMATN] [varchar](18) NULL,
	[MPROF] [varchar](4) NULL,
	[KZWSM] [varchar](1) NULL,
	[SAITY] [varchar](2) NULL,
	[PROFL] [varchar](3) NULL,
	[IHIVI] [varchar](1) NULL,
	[ILOOS] [varchar](1) NULL,
	[SERLV] [varchar](1) NULL,
	[KZGVH] [varchar](1) NULL,
	[XGCHP] [varchar](1) NULL,
	[KZEFF] [varchar](1) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[IPRKZ] [varchar](1) NULL,
	[RDMHD] [varchar](1) NULL,
	[PRZUS] [varchar](1) NULL,
	[MTPOS_MARA] [varchar](4) NULL,
	[BFLME] [varchar](1) NULL,
	[MATFI] [varchar](1) NULL,
	[CMREL] [varchar](1) NULL,
	[BBTYP] [varchar](1) NULL,
	[SLED_BBD] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[GENNR] [varchar](18) NULL,
	[RMATP] [varchar](18) NULL,
	[GDS_RELEVANT] [varchar](1) NULL,
	[WEORA] [varchar](1) NULL,
	[HUTYP_DFLT] [varchar](4) NULL,
	[PILFERABLE] [varchar](1) NULL,
	[WHSTC] [varchar](2) NULL,
	[WHMATGR] [varchar](4) NULL,
	[HNDLCODE] [varchar](4) NULL,
	[HAZMAT] [varchar](1) NULL,
	[HUTYP] [varchar](4) NULL,
	[TARE_VAR] [varchar](1) NULL,
	[MAXC] [decimal](15, 3) NULL,
	[MAXC_TOL] [decimal](3, 1) NULL,
	[MAXL] [decimal](15, 3) NULL,
	[MAXB] [decimal](15, 3) NULL,
	[MAXH] [decimal](15, 3) NULL,
	[MAXDIM_UOM] [varchar](3) NULL,
	[HERKL] [varchar](3) NULL,
	[MFRGR] [varchar](8) NULL,
	[QQTIME] [decimal](3, 0) NULL,
	[QQTIMEUOM] [varchar](3) NULL,
	[QGRP] [varchar](4) NULL,
	[SERIAL] [varchar](4) NULL,
	[PS_SMARTFORM] [varchar](30) NULL,
	[LOGUNIT] [varchar](3) NULL,
	[CWQREL] [varchar](1) NULL,
	[CWQPROC] [varchar](2) NULL,
	[CWQTOLGR] [varchar](9) NULL,
	[/BEV1/LULEINH] [decimal](8, 0) NULL,
	[/BEV1/LULDEGRP] [varchar](3) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[/DSD/SL_TOLTYP] [varchar](4) NULL,
	[/DSD/SV_CNT_GRP] [varchar](10) NULL,
	[/DSD/VC_GROUP] [varchar](6) NULL,
	[/VSO/R_TILT_IND] [varchar](1) NULL,
	[/VSO/R_STACK_IND] [varchar](1) NULL,
	[/VSO/R_BOT_IND] [varchar](1) NULL,
	[/VSO/R_TOP_IND] [varchar](1) NULL,
	[/VSO/R_STACK_NO] [decimal](3, 0) NULL,
	[/VSO/R_PAL_IND] [varchar](1) NULL,
	[/VSO/R_PAL_OVR_D] [decimal](13, 3) NULL,
	[/VSO/R_PAL_OVR_W] [decimal](13, 3) NULL,
	[/VSO/R_PAL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_MIN_H] [decimal](13, 3) NULL,
	[/VSO/R_TOL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_NO_P_GVH] [decimal](2, 0) NULL,
	[/VSO/R_QUAN_UNIT] [varchar](3) NULL,
	[/VSO/R_KZGVH_IND] [varchar](1) NULL,
	[PACKCODE] [varchar](10) NULL,
	[DG_PACK_STATUS] [varchar](10) NULL,
	[MCOND] [varchar](1) NULL,
	[RETDELC] [varchar](1) NULL,
	[LOGLEV_RETO] [varchar](1) NULL,
	[NSNID] [varchar](9) NULL,
	[IMATN] [varchar](18) NULL,
	[PICNUM] [varchar](18) NULL,
	[BSTAT] [varchar](2) NULL,
	[COLOR_ATINN] [decimal](10, 0) NULL,
	[SIZE1_ATINN] [decimal](10, 0) NULL,
	[SIZE2_ATINN] [decimal](10, 0) NULL,
	[COLOR] [varchar](18) NULL,
	[SIZE1] [varchar](18) NULL,
	[SIZE2] [varchar](18) NULL,
	[FREE_CHAR] [varchar](18) NULL,
	[CARE_CODE] [varchar](16) NULL,
	[BRAND_ID] [varchar](4) NULL,
	[FIBER_CODE1] [varchar](3) NULL,
	[FIBER_PART1] [decimal](3, 0) NULL,
	[FIBER_CODE2] [varchar](3) NULL,
	[FIBER_PART2] [decimal](3, 0) NULL,
	[FIBER_CODE3] [varchar](3) NULL,
	[FIBER_PART3] [decimal](3, 0) NULL,
	[FIBER_CODE4] [varchar](3) NULL,
	[FIBER_PART4] [decimal](3, 0) NULL,
	[FIBER_CODE5] [varchar](3) NULL,
	[FIBER_PART5] [decimal](3, 0) NULL,
	[FASHGRD] [varchar](4) NULL,
	[ZZBFLME] [varchar](18) NULL,
	[ZZPRDPL] [varchar](4) NULL,
	[ZZSELMK] [varchar](3) NULL,
	[ZZMAXLZ] [decimal](5, 0) NULL,
	[ZZPALBD] [varchar](10) NULL,
	[ZZPALTP] [varchar](3) NULL,
	[ZZOPRAW] [varchar](1) NULL,
	[ZZGDPLS] [decimal](12, 3) NULL,
	[ZZGDALU] [decimal](12, 3) NULL,
	[ZZGDCRT] [decimal](12, 3) NULL,
	[ZZGDCNT] [decimal](12, 3) NULL,
	[ZZGDSTW] [decimal](12, 8) NULL,
	[ZZFRM] [varchar](1) NULL,
	[ZZDFCT_GRP] [decimal](6, 0) NULL,
	[ZZMULT_DFCT] [varchar](1) NULL,
	[ZZPCKTYP] [varchar](10) NULL,
	[ZZPRMIND] [varchar](10) NULL,
	[ZZCHNLCAT] [varchar](10) NULL,
	[ZZBUS] [varchar](10) NULL,
	[ZZREGION] [varchar](10) NULL,
	[ZZSPART] [varchar](10) NULL,
	[ZZSKUTYP] [varchar](12) NULL,
	[ZZREMDT] [date] NULL,
	[ZZCATGY] [varchar](10) NULL,
	[ZZDEADT] [date] NULL,
	[ZZACDEDT] [date] NULL,
	[ZZSKUST] [varchar](8) NULL,
	[ZZCULLST] [varchar](10) NULL,
	[ZGDALU] [decimal](12, 3) NULL,
	[ZGDSTL] [decimal](12, 3) NULL,
	[ZGDRPL] [decimal](12, 3) NULL,
	[ZGDSP1] [decimal](12, 3) NULL,
	[ZGDSP2] [decimal](12, 3) NULL,
	[ZZDPFFM] [varchar](30) NULL,
	[ZZDPFFL] [varchar](30) NULL,
	[ZZDPPPT] [varchar](30) NULL,
	[ZZDPCUS] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARC]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[BWTTY] [varchar](1) NULL,
	[XCHAR] [varchar](1) NULL,
	[MMSTA] [varchar](2) NULL,
	[MMSTD] [date] NULL,
	[MAABC] [varchar](1) NULL,
	[KZKRI] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[AUSME] [varchar](3) NULL,
	[DISPR] [varchar](4) NULL,
	[DISMM] [varchar](2) NULL,
	[DISPO] [varchar](3) NULL,
	[KZDIE] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[PERKZ] [varchar](1) NULL,
	[AUSSS] [decimal](5, 2) NULL,
	[DISLS] [varchar](2) NULL,
	[BESKZ] [varchar](1) NULL,
	[SOBSL] [varchar](2) NULL,
	[MINBE] [decimal](13, 3) NULL,
	[EISBE] [decimal](13, 3) NULL,
	[BSTMI] [decimal](13, 3) NULL,
	[BSTMA] [decimal](13, 3) NULL,
	[BSTFE] [decimal](13, 3) NULL,
	[BSTRF] [decimal](13, 3) NULL,
	[MABST] [decimal](13, 3) NULL,
	[LOSFX] [decimal](11, 2) NULL,
	[SBDKZ] [varchar](1) NULL,
	[LAGPR] [varchar](1) NULL,
	[ALTSL] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[AUSDT] [date] NULL,
	[NFMAT] [varchar](18) NULL,
	[KZBED] [varchar](1) NULL,
	[MISKZ] [varchar](1) NULL,
	[FHORI] [varchar](3) NULL,
	[PFREI] [varchar](1) NULL,
	[FFREI] [varchar](1) NULL,
	[RGEKZ] [varchar](1) NULL,
	[FEVOR] [varchar](3) NULL,
	[BEARZ] [decimal](5, 2) NULL,
	[RUEZT] [decimal](5, 2) NULL,
	[TRANZ] [decimal](5, 2) NULL,
	[BASMG] [decimal](13, 3) NULL,
	[DZEIT] [decimal](3, 0) NULL,
	[MAXLZ] [decimal](5, 0) NULL,
	[LZEIH] [varchar](3) NULL,
	[KZPRO] [varchar](1) NULL,
	[GPMKZ] [varchar](1) NULL,
	[UEETO] [decimal](3, 1) NULL,
	[UEETK] [varchar](1) NULL,
	[UNETO] [decimal](3, 1) NULL,
	[WZEIT] [decimal](3, 0) NULL,
	[ATPKZ] [varchar](1) NULL,
	[VZUSL] [decimal](5, 2) NULL,
	[HERBL] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPROZ] [decimal](3, 1) NULL,
	[QUAZT] [decimal](3, 0) NULL,
	[SSQSS] [varchar](8) NULL,
	[MPDAU] [decimal](5, 0) NULL,
	[KZPPV] [varchar](1) NULL,
	[KZDKZ] [varchar](1) NULL,
	[WSTGH] [decimal](9, 0) NULL,
	[PRFRQ] [decimal](5, 0) NULL,
	[NKMPR] [date] NULL,
	[UMLMC] [decimal](13, 3) NULL,
	[LADGR] [varchar](4) NULL,
	[XCHPF] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[LGRAD] [decimal](3, 1) NULL,
	[AUFTL] [varchar](1) NULL,
	[PLVAR] [varchar](2) NULL,
	[OTYPE] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[MTVFP] [varchar](2) NULL,
	[PERIV] [varchar](2) NULL,
	[KZKFK] [varchar](1) NULL,
	[VRVEZ] [decimal](5, 2) NULL,
	[VBAMG] [decimal](13, 3) NULL,
	[VBEAZ] [decimal](5, 2) NULL,
	[LIZYK] [varchar](4) NULL,
	[BWSCL] [varchar](1) NULL,
	[KAUTB] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[STAWN] [varchar](17) NULL,
	[HERKL] [varchar](3) NULL,
	[HERKR] [varchar](3) NULL,
	[EXPME] [varchar](3) NULL,
	[MTVER] [varchar](4) NULL,
	[PRCTR] [varchar](10) NULL,
	[TRAME] [decimal](13, 3) NULL,
	[MRPPP] [varchar](3) NULL,
	[SAUFT] [varchar](1) NULL,
	[FXHOR] [decimal](3, 0) NULL,
	[VRMOD] [varchar](1) NULL,
	[VINT1] [decimal](3, 0) NULL,
	[VINT2] [decimal](3, 0) NULL,
	[VERKZ] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[APLAL] [varchar](2) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[SOBSK] [varchar](2) NULL,
	[FRTME] [varchar](3) NULL,
	[LGPRO] [varchar](4) NULL,
	[DISGR] [varchar](4) NULL,
	[KAUSF] [decimal](5, 2) NULL,
	[QZGTP] [varchar](4) NULL,
	[QMATV] [varchar](1) NULL,
	[TAKZT] [decimal](3, 0) NULL,
	[RWPRO] [varchar](3) NULL,
	[COPAM] [varchar](10) NULL,
	[ABCIN] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[SERNP] [varchar](4) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[STDPD] [varchar](18) NULL,
	[SFEPR] [varchar](4) NULL,
	[XMCNG] [varchar](1) NULL,
	[QSSYS] [varchar](4) NULL,
	[LFRHY] [varchar](3) NULL,
	[RDPRF] [varchar](4) NULL,
	[VRBMT] [varchar](18) NULL,
	[VRBWK] [varchar](4) NULL,
	[VRBDT] [date] NULL,
	[VRBFK] [decimal](4, 2) NULL,
	[AUTRU] [varchar](1) NULL,
	[PREFE] [varchar](1) NULL,
	[PRENC] [varchar](1) NULL,
	[PRENO] [varchar](8) NULL,
	[PREND] [date] NULL,
	[PRENE] [varchar](1) NULL,
	[PRENG] [date] NULL,
	[ITARK] [varchar](1) NULL,
	[SERVG] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[STRGR] [varchar](2) NULL,
	[CUOBV] [decimal](18, 0) NULL,
	[LGFSB] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[CCFIX] [varchar](1) NULL,
	[EPRIO] [varchar](4) NULL,
	[QMATA] [varchar](6) NULL,
	[RESVP] [decimal](3, 0) NULL,
	[PLNTY] [varchar](1) NULL,
	[UOMGR] [varchar](3) NULL,
	[UMRSL] [varchar](4) NULL,
	[ABFAC] [decimal](2, 1) NULL,
	[SFCPF] [varchar](6) NULL,
	[SHFLG] [varchar](1) NULL,
	[SHZET] [decimal](2, 0) NULL,
	[MDACH] [varchar](2) NULL,
	[KZECH] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[VKUMC] [decimal](13, 2) NULL,
	[VKTRW] [decimal](13, 2) NULL,
	[KZAGL] [varchar](1) NULL,
	[FVIDK] [varchar](4) NULL,
	[FXPRU] [varchar](1) NULL,
	[LOGGR] [varchar](4) NULL,
	[FPRFM] [varchar](3) NULL,
	[GLGMG] [decimal](13, 3) NULL,
	[VKGLG] [decimal](13, 2) NULL,
	[INDUS] [varchar](2) NULL,
	[MOWNR] [varchar](12) NULL,
	[MOGRU] [varchar](6) NULL,
	[CASNR] [varchar](15) NULL,
	[GPNUM] [varchar](9) NULL,
	[STEUC] [varchar](16) NULL,
	[FABKZ] [varchar](1) NULL,
	[MATGR] [varchar](20) NULL,
	[VSPVB] [varchar](10) NULL,
	[DPLFS] [varchar](2) NULL,
	[DPLPU] [varchar](1) NULL,
	[DPLHO] [decimal](3, 0) NULL,
	[MINLS] [decimal](13, 3) NULL,
	[MAXLS] [decimal](13, 3) NULL,
	[FIXLS] [decimal](13, 3) NULL,
	[LTINC] [decimal](13, 3) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[CONVT] [varchar](2) NULL,
	[SHPRO] [varchar](3) NULL,
	[AHDIS] [varchar](1) NULL,
	[DIBER] [varchar](1) NULL,
	[KZPSP] [varchar](1) NULL,
	[OCMPF] [varchar](6) NULL,
	[APOKZ] [varchar](1) NULL,
	[MCRUE] [varchar](1) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[EISLO] [decimal](13, 3) NULL,
	[NCOST] [varchar](1) NULL,
	[ROTATION_DATE] [varchar](1) NULL,
	[UCHKZ] [varchar](1) NULL,
	[UCMAT] [varchar](18) NULL,
	[BWESB] [decimal](13, 3) NULL,
	[/VSO/R_PKGRP] [varchar](18) NULL,
	[/VSO/R_LANE_NUM] [varchar](3) NULL,
	[/VSO/R_PAL_VEND] [varchar](18) NULL,
	[/VSO/R_FORK_DIR] [varchar](1) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[IUID_TYPE] [varchar](10) NULL,
	[UID_IEA] [varchar](1) NULL,
	[CONS_PROCG] [varchar](1) NULL,
	[GI_PR_TIME] [decimal](3, 0) NULL,
	[MULTIPLE_EKGRP] [varchar](1) NULL,
	[REF_SCHEMA] [varchar](2) NULL,
	[MIN_TROC] [decimal](3, 0) NULL,
	[MAX_TROC] [decimal](3, 0) NULL,
	[TARGET_STOCK] [decimal](13, 3) NULL,
	[ZZPRDPL] [varchar](4) NULL,
	[ZZFRML] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARC_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[BWTTY] [varchar](1) NULL,
	[XCHAR] [varchar](1) NULL,
	[MMSTA] [varchar](2) NULL,
	[MMSTD] [date] NULL,
	[MAABC] [varchar](1) NULL,
	[KZKRI] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[AUSME] [varchar](3) NULL,
	[DISPR] [varchar](4) NULL,
	[DISMM] [varchar](2) NULL,
	[DISPO] [varchar](3) NULL,
	[KZDIE] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[PERKZ] [varchar](1) NULL,
	[AUSSS] [decimal](5, 2) NULL,
	[DISLS] [varchar](2) NULL,
	[BESKZ] [varchar](1) NULL,
	[SOBSL] [varchar](2) NULL,
	[MINBE] [decimal](13, 3) NULL,
	[EISBE] [decimal](13, 3) NULL,
	[BSTMI] [decimal](13, 3) NULL,
	[BSTMA] [decimal](13, 3) NULL,
	[BSTFE] [decimal](13, 3) NULL,
	[BSTRF] [decimal](13, 3) NULL,
	[MABST] [decimal](13, 3) NULL,
	[LOSFX] [decimal](11, 2) NULL,
	[SBDKZ] [varchar](1) NULL,
	[LAGPR] [varchar](1) NULL,
	[ALTSL] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[AUSDT] [date] NULL,
	[NFMAT] [varchar](18) NULL,
	[KZBED] [varchar](1) NULL,
	[MISKZ] [varchar](1) NULL,
	[FHORI] [varchar](3) NULL,
	[PFREI] [varchar](1) NULL,
	[FFREI] [varchar](1) NULL,
	[RGEKZ] [varchar](1) NULL,
	[FEVOR] [varchar](3) NULL,
	[BEARZ] [decimal](5, 2) NULL,
	[RUEZT] [decimal](5, 2) NULL,
	[TRANZ] [decimal](5, 2) NULL,
	[BASMG] [decimal](13, 3) NULL,
	[DZEIT] [decimal](3, 0) NULL,
	[MAXLZ] [decimal](5, 0) NULL,
	[LZEIH] [varchar](3) NULL,
	[KZPRO] [varchar](1) NULL,
	[GPMKZ] [varchar](1) NULL,
	[UEETO] [decimal](3, 1) NULL,
	[UEETK] [varchar](1) NULL,
	[UNETO] [decimal](3, 1) NULL,
	[WZEIT] [decimal](3, 0) NULL,
	[ATPKZ] [varchar](1) NULL,
	[VZUSL] [decimal](5, 2) NULL,
	[HERBL] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPROZ] [decimal](3, 1) NULL,
	[QUAZT] [decimal](3, 0) NULL,
	[SSQSS] [varchar](8) NULL,
	[MPDAU] [decimal](5, 0) NULL,
	[KZPPV] [varchar](1) NULL,
	[KZDKZ] [varchar](1) NULL,
	[WSTGH] [decimal](9, 0) NULL,
	[PRFRQ] [decimal](5, 0) NULL,
	[NKMPR] [date] NULL,
	[UMLMC] [decimal](13, 3) NULL,
	[LADGR] [varchar](4) NULL,
	[XCHPF] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[LGRAD] [decimal](3, 1) NULL,
	[AUFTL] [varchar](1) NULL,
	[PLVAR] [varchar](2) NULL,
	[OTYPE] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[MTVFP] [varchar](2) NULL,
	[PERIV] [varchar](2) NULL,
	[KZKFK] [varchar](1) NULL,
	[VRVEZ] [decimal](5, 2) NULL,
	[VBAMG] [decimal](13, 3) NULL,
	[VBEAZ] [decimal](5, 2) NULL,
	[LIZYK] [varchar](4) NULL,
	[BWSCL] [varchar](1) NULL,
	[KAUTB] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[STAWN] [varchar](17) NULL,
	[HERKL] [varchar](3) NULL,
	[HERKR] [varchar](3) NULL,
	[EXPME] [varchar](3) NULL,
	[MTVER] [varchar](4) NULL,
	[PRCTR] [varchar](10) NULL,
	[TRAME] [decimal](13, 3) NULL,
	[MRPPP] [varchar](3) NULL,
	[SAUFT] [varchar](1) NULL,
	[FXHOR] [decimal](3, 0) NULL,
	[VRMOD] [varchar](1) NULL,
	[VINT1] [decimal](3, 0) NULL,
	[VINT2] [decimal](3, 0) NULL,
	[VERKZ] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[APLAL] [varchar](2) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[SOBSK] [varchar](2) NULL,
	[FRTME] [varchar](3) NULL,
	[LGPRO] [varchar](4) NULL,
	[DISGR] [varchar](4) NULL,
	[KAUSF] [decimal](5, 2) NULL,
	[QZGTP] [varchar](4) NULL,
	[QMATV] [varchar](1) NULL,
	[TAKZT] [decimal](3, 0) NULL,
	[RWPRO] [varchar](3) NULL,
	[COPAM] [varchar](10) NULL,
	[ABCIN] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[SERNP] [varchar](4) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[STDPD] [varchar](18) NULL,
	[SFEPR] [varchar](4) NULL,
	[XMCNG] [varchar](1) NULL,
	[QSSYS] [varchar](4) NULL,
	[LFRHY] [varchar](3) NULL,
	[RDPRF] [varchar](4) NULL,
	[VRBMT] [varchar](18) NULL,
	[VRBWK] [varchar](4) NULL,
	[VRBDT] [date] NULL,
	[VRBFK] [decimal](4, 2) NULL,
	[AUTRU] [varchar](1) NULL,
	[PREFE] [varchar](1) NULL,
	[PRENC] [varchar](1) NULL,
	[PRENO] [varchar](8) NULL,
	[PREND] [date] NULL,
	[PRENE] [varchar](1) NULL,
	[PRENG] [date] NULL,
	[ITARK] [varchar](1) NULL,
	[SERVG] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[STRGR] [varchar](2) NULL,
	[CUOBV] [decimal](18, 0) NULL,
	[LGFSB] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[CCFIX] [varchar](1) NULL,
	[EPRIO] [varchar](4) NULL,
	[QMATA] [varchar](6) NULL,
	[RESVP] [decimal](3, 0) NULL,
	[PLNTY] [varchar](1) NULL,
	[UOMGR] [varchar](3) NULL,
	[UMRSL] [varchar](4) NULL,
	[ABFAC] [decimal](2, 1) NULL,
	[SFCPF] [varchar](6) NULL,
	[SHFLG] [varchar](1) NULL,
	[SHZET] [decimal](2, 0) NULL,
	[MDACH] [varchar](2) NULL,
	[KZECH] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[VKUMC] [decimal](13, 2) NULL,
	[VKTRW] [decimal](13, 2) NULL,
	[KZAGL] [varchar](1) NULL,
	[FVIDK] [varchar](4) NULL,
	[FXPRU] [varchar](1) NULL,
	[LOGGR] [varchar](4) NULL,
	[FPRFM] [varchar](3) NULL,
	[GLGMG] [decimal](13, 3) NULL,
	[VKGLG] [decimal](13, 2) NULL,
	[INDUS] [varchar](2) NULL,
	[MOWNR] [varchar](12) NULL,
	[MOGRU] [varchar](6) NULL,
	[CASNR] [varchar](15) NULL,
	[GPNUM] [varchar](9) NULL,
	[STEUC] [varchar](16) NULL,
	[FABKZ] [varchar](1) NULL,
	[MATGR] [varchar](20) NULL,
	[VSPVB] [varchar](10) NULL,
	[DPLFS] [varchar](2) NULL,
	[DPLPU] [varchar](1) NULL,
	[DPLHO] [decimal](3, 0) NULL,
	[MINLS] [decimal](13, 3) NULL,
	[MAXLS] [decimal](13, 3) NULL,
	[FIXLS] [decimal](13, 3) NULL,
	[LTINC] [decimal](13, 3) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[CONVT] [varchar](2) NULL,
	[SHPRO] [varchar](3) NULL,
	[AHDIS] [varchar](1) NULL,
	[DIBER] [varchar](1) NULL,
	[KZPSP] [varchar](1) NULL,
	[OCMPF] [varchar](6) NULL,
	[APOKZ] [varchar](1) NULL,
	[MCRUE] [varchar](1) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[EISLO] [decimal](13, 3) NULL,
	[NCOST] [varchar](1) NULL,
	[ROTATION_DATE] [varchar](1) NULL,
	[UCHKZ] [varchar](1) NULL,
	[UCMAT] [varchar](18) NULL,
	[BWESB] [decimal](13, 3) NULL,
	[/VSO/R_PKGRP] [varchar](18) NULL,
	[/VSO/R_LANE_NUM] [varchar](3) NULL,
	[/VSO/R_PAL_VEND] [varchar](18) NULL,
	[/VSO/R_FORK_DIR] [varchar](1) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[IUID_TYPE] [varchar](10) NULL,
	[UID_IEA] [varchar](1) NULL,
	[CONS_PROCG] [varchar](1) NULL,
	[GI_PR_TIME] [decimal](3, 0) NULL,
	[MULTIPLE_EKGRP] [varchar](1) NULL,
	[REF_SCHEMA] [varchar](2) NULL,
	[MIN_TROC] [decimal](3, 0) NULL,
	[MAX_TROC] [decimal](3, 0) NULL,
	[TARGET_STOCK] [decimal](13, 3) NULL,
	[ZZPRDPL] [varchar](4) NULL,
	[ZZFRML] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARM]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARM](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[EANNR] [varchar](13) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[MESUB] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[MESRT] [decimal](2, 0) NULL,
	[XFHDW] [varchar](1) NULL,
	[XBEWW] [varchar](1) NULL,
	[KZWSO] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[BFLME_MARM] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[NEST_FTR] [decimal](3, 0) NULL,
	[MAX_STACK] [int] NULL,
	[CAPAUSE] [decimal](15, 3) NULL,
	[TY2TQ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARM_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARM_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[EANNR] [varchar](13) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[MESUB] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[MESRT] [decimal](2, 0) NULL,
	[XFHDW] [varchar](1) NULL,
	[XBEWW] [varchar](1) NULL,
	[KZWSO] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[BFLME_MARM] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[NEST_FTR] [decimal](3, 0) NULL,
	[MAX_STACK] [int] NULL,
	[CAPAUSE] [decimal](15, 3) NULL,
	[TY2TQ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAST]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAST](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLAN] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[LOSVN] [decimal](13, 3) NULL,
	[LOSBS] [decimal](13, 3) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[CSLTY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAST_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAST_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLAN] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[LOSVN] [decimal](13, 3) NULL,
	[LOSBS] [decimal](13, 3) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[CSLTY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MBEW]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBEW](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[BWKEY] [varchar](4) NULL,
	[BWTAR] [varchar](10) NULL,
	[LVORM] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[VERPR] [decimal](11, 2) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BKLAS] [varchar](4) NULL,
	[SALKV] [decimal](13, 2) NULL,
	[VMKUM] [decimal](13, 3) NULL,
	[VMSAL] [decimal](13, 2) NULL,
	[VMVPR] [varchar](1) NULL,
	[VMVER] [decimal](11, 2) NULL,
	[VMSTP] [decimal](11, 2) NULL,
	[VMPEI] [decimal](5, 0) NULL,
	[VMBKL] [varchar](4) NULL,
	[VMSAV] [decimal](13, 2) NULL,
	[VJKUM] [decimal](13, 3) NULL,
	[VJSAL] [decimal](13, 2) NULL,
	[VJVPR] [varchar](1) NULL,
	[VJVER] [decimal](11, 2) NULL,
	[VJSTP] [decimal](11, 2) NULL,
	[VJPEI] [decimal](5, 0) NULL,
	[VJBKL] [varchar](4) NULL,
	[VJSAV] [decimal](13, 2) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[BWTTY] [varchar](1) NULL,
	[STPRV] [decimal](11, 2) NULL,
	[LAEPR] [date] NULL,
	[ZKPRS] [decimal](11, 2) NULL,
	[ZKDAT] [date] NULL,
	[TIMESTAMP] [decimal](15, 0) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPRH] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[VJBWH] [decimal](11, 2) NULL,
	[VVJSL] [decimal](13, 2) NULL,
	[VVJLB] [decimal](13, 3) NULL,
	[VVMLB] [decimal](13, 3) NULL,
	[VVSAL] [decimal](13, 2) NULL,
	[ZPLPR] [decimal](11, 2) NULL,
	[ZPLP1] [decimal](11, 2) NULL,
	[ZPLP2] [decimal](11, 2) NULL,
	[ZPLP3] [decimal](11, 2) NULL,
	[ZPLD1] [date] NULL,
	[ZPLD2] [date] NULL,
	[ZPLD3] [date] NULL,
	[PPERZ] [decimal](6, 0) NULL,
	[PPERL] [decimal](6, 0) NULL,
	[PPERV] [decimal](6, 0) NULL,
	[KALKZ] [varchar](1) NULL,
	[KALKL] [varchar](1) NULL,
	[KALKV] [varchar](1) NULL,
	[KALSC] [varchar](6) NULL,
	[XLIFO] [varchar](1) NULL,
	[MYPOL] [varchar](4) NULL,
	[BWPH1] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[ABWKZ] [decimal](2, 0) NULL,
	[PSTAT] [varchar](15) NULL,
	[KALN1] [decimal](12, 0) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[BWVA1] [varchar](3) NULL,
	[BWVA2] [varchar](3) NULL,
	[BWVA3] [varchar](3) NULL,
	[VERS1] [decimal](2, 0) NULL,
	[VERS2] [decimal](2, 0) NULL,
	[VERS3] [decimal](2, 0) NULL,
	[HRKFT] [varchar](4) NULL,
	[KOSGR] [varchar](10) NULL,
	[PPRDZ] [decimal](3, 0) NULL,
	[PPRDL] [decimal](3, 0) NULL,
	[PPRDV] [decimal](3, 0) NULL,
	[PDATZ] [decimal](4, 0) NULL,
	[PDATL] [decimal](4, 0) NULL,
	[PDATV] [decimal](4, 0) NULL,
	[EKALR] [varchar](1) NULL,
	[VPLPR] [decimal](11, 2) NULL,
	[MLMAA] [varchar](1) NULL,
	[MLAST] [varchar](1) NULL,
	[LPLPR] [decimal](11, 2) NULL,
	[VKSAL] [decimal](13, 2) NULL,
	[HKMAT] [varchar](1) NULL,
	[SPERW] [varchar](1) NULL,
	[KZIWL] [varchar](3) NULL,
	[WLINL] [date] NULL,
	[ABCIW] [varchar](1) NULL,
	[BWSPA] [decimal](6, 2) NULL,
	[LPLPX] [decimal](11, 2) NULL,
	[VPLPX] [decimal](11, 2) NULL,
	[FPLPX] [decimal](11, 2) NULL,
	[LBWST] [varchar](1) NULL,
	[VBWST] [varchar](1) NULL,
	[FBWST] [varchar](1) NULL,
	[EKLAS] [varchar](4) NULL,
	[QKLAS] [varchar](4) NULL,
	[MTUSE] [varchar](1) NULL,
	[MTORG] [varchar](1) NULL,
	[OWNPR] [varchar](1) NULL,
	[XBEWM] [varchar](1) NULL,
	[BWPEI] [decimal](5, 0) NULL,
	[MBRUE] [varchar](1) NULL,
	[OKLAS] [varchar](4) NULL,
	[OIPPINV] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MBEW_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBEW_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[BWKEY] [varchar](4) NULL,
	[BWTAR] [varchar](10) NULL,
	[LVORM] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[VERPR] [decimal](11, 2) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BKLAS] [varchar](4) NULL,
	[SALKV] [decimal](13, 2) NULL,
	[VMKUM] [decimal](13, 3) NULL,
	[VMSAL] [decimal](13, 2) NULL,
	[VMVPR] [varchar](1) NULL,
	[VMVER] [decimal](11, 2) NULL,
	[VMSTP] [decimal](11, 2) NULL,
	[VMPEI] [decimal](5, 0) NULL,
	[VMBKL] [varchar](4) NULL,
	[VMSAV] [decimal](13, 2) NULL,
	[VJKUM] [decimal](13, 3) NULL,
	[VJSAL] [decimal](13, 2) NULL,
	[VJVPR] [varchar](1) NULL,
	[VJVER] [decimal](11, 2) NULL,
	[VJSTP] [decimal](11, 2) NULL,
	[VJPEI] [decimal](5, 0) NULL,
	[VJBKL] [varchar](4) NULL,
	[VJSAV] [decimal](13, 2) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[BWTTY] [varchar](1) NULL,
	[STPRV] [decimal](11, 2) NULL,
	[LAEPR] [date] NULL,
	[ZKPRS] [decimal](11, 2) NULL,
	[ZKDAT] [date] NULL,
	[TIMESTAMP] [decimal](15, 0) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPRH] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[VJBWH] [decimal](11, 2) NULL,
	[VVJSL] [decimal](13, 2) NULL,
	[VVJLB] [decimal](13, 3) NULL,
	[VVMLB] [decimal](13, 3) NULL,
	[VVSAL] [decimal](13, 2) NULL,
	[ZPLPR] [decimal](11, 2) NULL,
	[ZPLP1] [decimal](11, 2) NULL,
	[ZPLP2] [decimal](11, 2) NULL,
	[ZPLP3] [decimal](11, 2) NULL,
	[ZPLD1] [date] NULL,
	[ZPLD2] [date] NULL,
	[ZPLD3] [date] NULL,
	[PPERZ] [decimal](6, 0) NULL,
	[PPERL] [decimal](6, 0) NULL,
	[PPERV] [decimal](6, 0) NULL,
	[KALKZ] [varchar](1) NULL,
	[KALKL] [varchar](1) NULL,
	[KALKV] [varchar](1) NULL,
	[KALSC] [varchar](6) NULL,
	[XLIFO] [varchar](1) NULL,
	[MYPOL] [varchar](4) NULL,
	[BWPH1] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[ABWKZ] [decimal](2, 0) NULL,
	[PSTAT] [varchar](15) NULL,
	[KALN1] [decimal](12, 0) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[BWVA1] [varchar](3) NULL,
	[BWVA2] [varchar](3) NULL,
	[BWVA3] [varchar](3) NULL,
	[VERS1] [decimal](2, 0) NULL,
	[VERS2] [decimal](2, 0) NULL,
	[VERS3] [decimal](2, 0) NULL,
	[HRKFT] [varchar](4) NULL,
	[KOSGR] [varchar](10) NULL,
	[PPRDZ] [decimal](3, 0) NULL,
	[PPRDL] [decimal](3, 0) NULL,
	[PPRDV] [decimal](3, 0) NULL,
	[PDATZ] [decimal](4, 0) NULL,
	[PDATL] [decimal](4, 0) NULL,
	[PDATV] [decimal](4, 0) NULL,
	[EKALR] [varchar](1) NULL,
	[VPLPR] [decimal](11, 2) NULL,
	[MLMAA] [varchar](1) NULL,
	[MLAST] [varchar](1) NULL,
	[LPLPR] [decimal](11, 2) NULL,
	[VKSAL] [decimal](13, 2) NULL,
	[HKMAT] [varchar](1) NULL,
	[SPERW] [varchar](1) NULL,
	[KZIWL] [varchar](3) NULL,
	[WLINL] [date] NULL,
	[ABCIW] [varchar](1) NULL,
	[BWSPA] [decimal](6, 2) NULL,
	[LPLPX] [decimal](11, 2) NULL,
	[VPLPX] [decimal](11, 2) NULL,
	[FPLPX] [decimal](11, 2) NULL,
	[LBWST] [varchar](1) NULL,
	[VBWST] [varchar](1) NULL,
	[FBWST] [varchar](1) NULL,
	[EKLAS] [varchar](4) NULL,
	[QKLAS] [varchar](4) NULL,
	[MTUSE] [varchar](1) NULL,
	[MTORG] [varchar](1) NULL,
	[OWNPR] [varchar](1) NULL,
	[XBEWM] [varchar](1) NULL,
	[BWPEI] [decimal](5, 0) NULL,
	[MBRUE] [varchar](1) NULL,
	[OKLAS] [varchar](4) NULL,
	[OIPPINV] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEAN]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEAN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[LFNUM] [varchar](5) NULL,
	[EAN11] [varchar](18) NULL,
	[EANTP] [varchar](2) NULL,
	[HPEAN] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEAN_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEAN_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[LFNUM] [varchar](5) NULL,
	[EAN11] [varchar](18) NULL,
	[EANTP] [varchar](2) NULL,
	[HPEAN] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MLAN]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MLAN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ALAND] [varchar](3) NULL,
	[TAXM1] [varchar](1) NULL,
	[TAXM2] [varchar](1) NULL,
	[TAXM3] [varchar](1) NULL,
	[TAXM4] [varchar](1) NULL,
	[TAXM5] [varchar](1) NULL,
	[TAXM6] [varchar](1) NULL,
	[TAXM7] [varchar](1) NULL,
	[TAXM8] [varchar](1) NULL,
	[TAXM9] [varchar](1) NULL,
	[TAXIM] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MLAN_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MLAN_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ALAND] [varchar](3) NULL,
	[TAXM1] [varchar](1) NULL,
	[TAXM2] [varchar](1) NULL,
	[TAXM3] [varchar](1) NULL,
	[TAXM4] [varchar](1) NULL,
	[TAXM5] [varchar](1) NULL,
	[TAXM6] [varchar](1) NULL,
	[TAXM7] [varchar](1) NULL,
	[TAXM8] [varchar](1) NULL,
	[TAXM9] [varchar](1) NULL,
	[TAXIM] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVKE]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVKE](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[LVORM] [varchar](1) NULL,
	[VERSG] [varchar](1) NULL,
	[BONUS] [varchar](2) NULL,
	[PROVG] [varchar](2) NULL,
	[SKTOF] [varchar](1) NULL,
	[VMSTA] [varchar](2) NULL,
	[VMSTD] [date] NULL,
	[AUMNG] [decimal](13, 3) NULL,
	[LFMNG] [decimal](13, 3) NULL,
	[EFMNG] [decimal](13, 3) NULL,
	[SCMNG] [decimal](13, 3) NULL,
	[SCHME] [varchar](3) NULL,
	[VRKME] [varchar](3) NULL,
	[MTPOS] [varchar](4) NULL,
	[DWERK] [varchar](4) NULL,
	[PRODH] [varchar](18) NULL,
	[PMATN] [varchar](18) NULL,
	[KONDM] [varchar](2) NULL,
	[KTGRM] [varchar](2) NULL,
	[MVGR1] [varchar](3) NULL,
	[MVGR2] [varchar](3) NULL,
	[MVGR3] [varchar](3) NULL,
	[MVGR4] [varchar](3) NULL,
	[MVGR5] [varchar](3) NULL,
	[SSTUF] [varchar](2) NULL,
	[PFLKS] [varchar](1) NULL,
	[LSTFL] [varchar](2) NULL,
	[LSTVZ] [varchar](2) NULL,
	[LSTAK] [varchar](1) NULL,
	[LDVFL] [date] NULL,
	[LDBFL] [date] NULL,
	[LDVZL] [date] NULL,
	[LDBZL] [date] NULL,
	[VDVFL] [date] NULL,
	[VDBFL] [date] NULL,
	[VDVZL] [date] NULL,
	[VDBZL] [date] NULL,
	[PRAT1] [varchar](1) NULL,
	[PRAT2] [varchar](1) NULL,
	[PRAT3] [varchar](1) NULL,
	[PRAT4] [varchar](1) NULL,
	[PRAT5] [varchar](1) NULL,
	[PRAT6] [varchar](1) NULL,
	[PRAT7] [varchar](1) NULL,
	[PRAT8] [varchar](1) NULL,
	[PRAT9] [varchar](1) NULL,
	[PRATA] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[LFMAX] [decimal](13, 3) NULL,
	[RJART] [varchar](1) NULL,
	[PBIND] [varchar](1) NULL,
	[VAVME] [varchar](1) NULL,
	[MATKC] [varchar](1) NULL,
	[PVMSO] [decimal](8, 0) NULL,
	[/BEV1/EMLGRP] [varchar](4) NULL,
	[/BEV1/EMDRCKSPL] [decimal](1, 0) NULL,
	[/BEV1/RPBEZME] [varchar](3) NULL,
	[/BEV1/RPSNS] [varchar](1) NULL,
	[/BEV1/RPSFA] [varchar](1) NULL,
	[/BEV1/RPSKI] [varchar](1) NULL,
	[/BEV1/RPSCO] [varchar](1) NULL,
	[/BEV1/RPSSO] [varchar](1) NULL,
	[PLGTP] [varchar](2) NULL,
	[ZZSUBCT] [varchar](5) NULL,
	[ZZPNLPG] [varchar](5) NULL,
	[ZZPOWBD] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVKE_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVKE_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[LVORM] [varchar](1) NULL,
	[VERSG] [varchar](1) NULL,
	[BONUS] [varchar](2) NULL,
	[PROVG] [varchar](2) NULL,
	[SKTOF] [varchar](1) NULL,
	[VMSTA] [varchar](2) NULL,
	[VMSTD] [date] NULL,
	[AUMNG] [decimal](13, 3) NULL,
	[LFMNG] [decimal](13, 3) NULL,
	[EFMNG] [decimal](13, 3) NULL,
	[SCMNG] [decimal](13, 3) NULL,
	[SCHME] [varchar](3) NULL,
	[VRKME] [varchar](3) NULL,
	[MTPOS] [varchar](4) NULL,
	[DWERK] [varchar](4) NULL,
	[PRODH] [varchar](18) NULL,
	[PMATN] [varchar](18) NULL,
	[KONDM] [varchar](2) NULL,
	[KTGRM] [varchar](2) NULL,
	[MVGR1] [varchar](3) NULL,
	[MVGR2] [varchar](3) NULL,
	[MVGR3] [varchar](3) NULL,
	[MVGR4] [varchar](3) NULL,
	[MVGR5] [varchar](3) NULL,
	[SSTUF] [varchar](2) NULL,
	[PFLKS] [varchar](1) NULL,
	[LSTFL] [varchar](2) NULL,
	[LSTVZ] [varchar](2) NULL,
	[LSTAK] [varchar](1) NULL,
	[LDVFL] [date] NULL,
	[LDBFL] [date] NULL,
	[LDVZL] [date] NULL,
	[LDBZL] [date] NULL,
	[VDVFL] [date] NULL,
	[VDBFL] [date] NULL,
	[VDVZL] [date] NULL,
	[VDBZL] [date] NULL,
	[PRAT1] [varchar](1) NULL,
	[PRAT2] [varchar](1) NULL,
	[PRAT3] [varchar](1) NULL,
	[PRAT4] [varchar](1) NULL,
	[PRAT5] [varchar](1) NULL,
	[PRAT6] [varchar](1) NULL,
	[PRAT7] [varchar](1) NULL,
	[PRAT8] [varchar](1) NULL,
	[PRAT9] [varchar](1) NULL,
	[PRATA] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[LFMAX] [decimal](13, 3) NULL,
	[RJART] [varchar](1) NULL,
	[PBIND] [varchar](1) NULL,
	[VAVME] [varchar](1) NULL,
	[MATKC] [varchar](1) NULL,
	[PVMSO] [decimal](8, 0) NULL,
	[/BEV1/EMLGRP] [varchar](4) NULL,
	[/BEV1/EMDRCKSPL] [decimal](1, 0) NULL,
	[/BEV1/RPBEZME] [varchar](3) NULL,
	[/BEV1/RPSNS] [varchar](1) NULL,
	[/BEV1/RPSFA] [varchar](1) NULL,
	[/BEV1/RPSKI] [varchar](1) NULL,
	[/BEV1/RPSCO] [varchar](1) NULL,
	[/BEV1/RPSSO] [varchar](1) NULL,
	[PLGTP] [varchar](2) NULL,
	[ZZSUBCT] [varchar](5) NULL,
	[ZZPNLPG] [varchar](5) NULL,
	[ZZPOWBD] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPTESTTAB]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPTESTTAB](
	[MANDT] [varchar](3) NULL,
	[MSEHI] [varchar](3) NOT NULL,
	[KZEX3] [varchar](1) NULL,
	[KZEX6] [varchar](1) NULL,
	[ANDEC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MSEHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADER]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[XDYNAMIC] [varchar](1) NULL,
	[AUTHGR] [varchar](4) NULL,
	[XUNIQ] [varchar](1) NULL,
	[RVALUE] [varchar](24) NULL,
	[CREUSER] [varchar](12) NULL,
	[CREDATE] [date] NULL,
	[CRETIME] [time](7) NULL,
	[UPDUSER] [varchar](12) NULL,
	[UPDDATE] [date] NULL,
	[UPDTIME] [time](7) NULL,
	[SAPRL] [varchar](4) NULL,
	[TABNAME] [varchar](30) NULL,
	[FIELDNAME] [varchar](30) NULL,
	[ROLLNAME] [varchar](30) NULL,
	[SET_OLANGU] [varchar](1) NULL,
	[NO_RWSHEADER] [varchar](1) NULL,
	[NO_RWSLINE] [varchar](1) NULL,
	[NO_SETLINET] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADER_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADER_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[XDYNAMIC] [varchar](1) NULL,
	[AUTHGR] [varchar](4) NULL,
	[XUNIQ] [varchar](1) NULL,
	[RVALUE] [varchar](24) NULL,
	[CREUSER] [varchar](12) NULL,
	[CREDATE] [date] NULL,
	[CRETIME] [time](7) NULL,
	[UPDUSER] [varchar](12) NULL,
	[UPDDATE] [date] NULL,
	[UPDTIME] [time](7) NULL,
	[SAPRL] [varchar](4) NULL,
	[TABNAME] [varchar](30) NULL,
	[FIELDNAME] [varchar](30) NULL,
	[ROLLNAME] [varchar](30) NULL,
	[SET_OLANGU] [varchar](1) NULL,
	[NO_RWSHEADER] [varchar](1) NULL,
	[NO_RWSLINE] [varchar](1) NULL,
	[NO_SETLINET] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADERT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADERT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LANGU] [varchar](1) NULL,
	[DESCRIPT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADERT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADERT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LANGU] [varchar](1) NULL,
	[DESCRIPT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETLEAF]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETLEAF](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[VALSIGN] [varchar](1) NULL,
	[VALOPTION] [varchar](2) NULL,
	[VALFROM] [varchar](24) NULL,
	[VALTO] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETLEAF_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETLEAF_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[VALSIGN] [varchar](1) NULL,
	[VALOPTION] [varchar](2) NULL,
	[VALFROM] [varchar](24) NULL,
	[VALTO] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETNODE]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETNODE](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[SUBSETCLS] [varchar](4) NULL,
	[SUBSETSCLS] [varchar](12) NULL,
	[SUBSETNAME] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETNODE_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETNODE_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[SUBSETCLS] [varchar](4) NULL,
	[SUBSETSCLS] [varchar](12) NULL,
	[SUBSETNAME] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKA1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKA1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[XBILK] [varchar](1) NULL,
	[SAKAN] [varchar](10) NULL,
	[BILKT] [varchar](10) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[GVTYP] [varchar](2) NULL,
	[KTOKS] [varchar](4) NULL,
	[MUSTR] [varchar](10) NULL,
	[VBUND] [varchar](6) NULL,
	[XLOEV] [varchar](1) NULL,
	[XSPEA] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[XSPEP] [varchar](1) NULL,
	[MCOD1] [varchar](25) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKA1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKA1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[XBILK] [varchar](1) NULL,
	[SAKAN] [varchar](10) NULL,
	[BILKT] [varchar](10) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[GVTYP] [varchar](2) NULL,
	[KTOKS] [varchar](4) NULL,
	[MUSTR] [varchar](10) NULL,
	[VBUND] [varchar](6) NULL,
	[XLOEV] [varchar](1) NULL,
	[XSPEA] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[XSPEP] [varchar](1) NULL,
	[MCOD1] [varchar](25) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKAT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKAT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[TXT20] [varchar](20) NULL,
	[TXT50] [varchar](50) NULL,
	[MCOD1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKAT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKAT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[TXT20] [varchar](20) NULL,
	[TXT50] [varchar](50) NULL,
	[MCOD1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKB1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKB1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[BUSAB] [varchar](2) NULL,
	[DATLZ] [date] NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[FDGRV] [varchar](10) NULL,
	[FDLEV] [varchar](2) NULL,
	[FIPLS] [decimal](3, 0) NULL,
	[FSTAG] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[HKTID] [varchar](5) NULL,
	[KDFSL] [varchar](4) NULL,
	[MITKZ] [varchar](1) NULL,
	[MWSKZ] [varchar](2) NULL,
	[STEXT] [varchar](50) NULL,
	[VZSKZ] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[WMETH] [varchar](2) NULL,
	[XGKON] [varchar](1) NULL,
	[XINTB] [varchar](1) NULL,
	[XKRES] [varchar](1) NULL,
	[XLOEB] [varchar](1) NULL,
	[XNKON] [varchar](1) NULL,
	[XOPVW] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[ZUAWA] [varchar](3) NULL,
	[ALTKT] [varchar](10) NULL,
	[XMITK] [varchar](1) NULL,
	[RECID] [varchar](2) NULL,
	[FIPOS] [varchar](14) NULL,
	[XMWNO] [varchar](1) NULL,
	[XSALH] [varchar](1) NULL,
	[BEWGP] [varchar](10) NULL,
	[INFKY] [varchar](8) NULL,
	[TOGRU] [varchar](4) NULL,
	[XLGCLR] [varchar](1) NULL,
	[MCAKEY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKB1_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKB1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[BUSAB] [varchar](2) NULL,
	[DATLZ] [date] NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[FDGRV] [varchar](10) NULL,
	[FDLEV] [varchar](2) NULL,
	[FIPLS] [decimal](3, 0) NULL,
	[FSTAG] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[HKTID] [varchar](5) NULL,
	[KDFSL] [varchar](4) NULL,
	[MITKZ] [varchar](1) NULL,
	[MWSKZ] [varchar](2) NULL,
	[STEXT] [varchar](50) NULL,
	[VZSKZ] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[WMETH] [varchar](2) NULL,
	[XGKON] [varchar](1) NULL,
	[XINTB] [varchar](1) NULL,
	[XKRES] [varchar](1) NULL,
	[XLOEB] [varchar](1) NULL,
	[XNKON] [varchar](1) NULL,
	[XOPVW] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[ZUAWA] [varchar](3) NULL,
	[ALTKT] [varchar](10) NULL,
	[XMITK] [varchar](1) NULL,
	[RECID] [varchar](2) NULL,
	[FIPOS] [varchar](14) NULL,
	[XMWNO] [varchar](1) NULL,
	[XSALH] [varchar](1) NULL,
	[BEWGP] [varchar](10) NULL,
	[INFKY] [varchar](8) NULL,
	[TOGRU] [varchar](4) NULL,
	[XLGCLR] [varchar](1) NULL,
	[MCAKEY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STAS]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STAS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STASZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDVAR] [varchar](5) NULL,
	[LPSRT] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STAS_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STAS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STASZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDVAR] [varchar](5) NULL,
	[LPSRT] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STKO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STKO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STKOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[VGKZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[CADKZ] [varchar](1) NULL,
	[LABOR] [varchar](3) NULL,
	[LTXSP] [varchar](1) NULL,
	[STKTX] [varchar](40) NULL,
	[STLST] [decimal](2, 0) NULL,
	[WRKAN] [varchar](4) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[ALEKZ] [varchar](1) NULL,
	[GUIDX] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STKO_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STKO_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STKOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[VGKZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[CADKZ] [varchar](1) NULL,
	[LABOR] [varchar](3) NULL,
	[LTXSP] [varchar](1) NULL,
	[STKTX] [varchar](40) NULL,
	[STLST] [decimal](2, 0) NULL,
	[WRKAN] [varchar](4) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[ALEKZ] [varchar](1) NULL,
	[GUIDX] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STPO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STPO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[VGKNT] [decimal](8, 0) NULL,
	[VGPZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[IDNRK] [varchar](18) NULL,
	[PSWRK] [varchar](4) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[SORTF] [varchar](10) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[FMENG] [varchar](1) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[SCHGT] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[RVREL] [varchar](1) NULL,
	[SANFE] [varchar](1) NULL,
	[SANIN] [varchar](1) NULL,
	[SANKA] [varchar](1) NULL,
	[SANKO] [varchar](1) NULL,
	[SANVS] [varchar](1) NULL,
	[STKKZ] [varchar](1) NULL,
	[REKRI] [varchar](1) NULL,
	[REKRS] [varchar](1) NULL,
	[CADPO] [varchar](1) NULL,
	[NFMAT] [varchar](18) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[VERTI] [varchar](4) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EKGRP] [varchar](3) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[PREIS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[WAERS] [varchar](5) NULL,
	[SAKTO] [varchar](10) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[RFORM] [varchar](2) NULL,
	[UPSKZ] [varchar](1) NULL,
	[VALKZ] [varchar](1) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[OBJTY] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKVR] [varchar](2) NULL,
	[DOKTL] [varchar](3) NULL,
	[CSSTR] [decimal](5, 2) NULL,
	[CLASS] [varchar](18) NULL,
	[KLART] [varchar](3) NULL,
	[POTPR] [varchar](1) NULL,
	[AWAKZ] [varchar](1) NULL,
	[INSKZ] [varchar](1) NULL,
	[VCEKZ] [varchar](1) NULL,
	[VSTKZ] [varchar](1) NULL,
	[VACKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[CLOBK] [varchar](1) NULL,
	[CLMUL] [varchar](1) NULL,
	[CLALT] [varchar](1) NULL,
	[CVIEW] [varchar](10) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[LGORT] [varchar](4) NULL,
	[KZKUP] [varchar](1) NULL,
	[INTRM] [varchar](18) NULL,
	[TPEKZ] [varchar](1) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[DSPST] [varchar](2) NULL,
	[ALPST] [varchar](1) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPGR] [varchar](2) NULL,
	[KZNFP] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFEAG] [varchar](2) NULL,
	[KNDVB] [varchar](1) NULL,
	[KNDBZ] [varchar](1) NULL,
	[KSTTY] [varchar](1) NULL,
	[KSTNR] [varchar](8) NULL,
	[KSTKN] [decimal](8, 0) NULL,
	[KSTPZ] [decimal](8, 0) NULL,
	[CLSZU] [decimal](8, 0) NULL,
	[KZCLB] [varchar](1) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[PRVBE] [varchar](10) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDHIS] [decimal](5, 0) NULL,
	[IDVAR] [varchar](5) NULL,
	[ALEKZ] [varchar](1) NULL,
	[ITMID] [varchar](8) NULL,
	[GUID] [varchar](22) NULL,
	[ITSOB] [varchar](2) NULL,
	[RFPNT] [varchar](20) NULL,
	[GUIDX] [varchar](32) NULL,
	[CUFACTOR] [decimal](6, 0) NULL,
	[FUNCID] [varchar](40) NULL,
	[EXECUTE_SQL_FLAG] [varchar](1) NULL,
	[EXECUTE_ORA_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STPO_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STPO_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[VGKNT] [decimal](8, 0) NULL,
	[VGPZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[IDNRK] [varchar](18) NULL,
	[PSWRK] [varchar](4) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[SORTF] [varchar](10) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[FMENG] [varchar](1) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[SCHGT] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[RVREL] [varchar](1) NULL,
	[SANFE] [varchar](1) NULL,
	[SANIN] [varchar](1) NULL,
	[SANKA] [varchar](1) NULL,
	[SANKO] [varchar](1) NULL,
	[SANVS] [varchar](1) NULL,
	[STKKZ] [varchar](1) NULL,
	[REKRI] [varchar](1) NULL,
	[REKRS] [varchar](1) NULL,
	[CADPO] [varchar](1) NULL,
	[NFMAT] [varchar](18) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[VERTI] [varchar](4) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EKGRP] [varchar](3) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[PREIS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[WAERS] [varchar](5) NULL,
	[SAKTO] [varchar](10) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[RFORM] [varchar](2) NULL,
	[UPSKZ] [varchar](1) NULL,
	[VALKZ] [varchar](1) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[OBJTY] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKVR] [varchar](2) NULL,
	[DOKTL] [varchar](3) NULL,
	[CSSTR] [decimal](5, 2) NULL,
	[CLASS] [varchar](18) NULL,
	[KLART] [varchar](3) NULL,
	[POTPR] [varchar](1) NULL,
	[AWAKZ] [varchar](1) NULL,
	[INSKZ] [varchar](1) NULL,
	[VCEKZ] [varchar](1) NULL,
	[VSTKZ] [varchar](1) NULL,
	[VACKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[CLOBK] [varchar](1) NULL,
	[CLMUL] [varchar](1) NULL,
	[CLALT] [varchar](1) NULL,
	[CVIEW] [varchar](10) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[LGORT] [varchar](4) NULL,
	[KZKUP] [varchar](1) NULL,
	[INTRM] [varchar](18) NULL,
	[TPEKZ] [varchar](1) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[DSPST] [varchar](2) NULL,
	[ALPST] [varchar](1) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPGR] [varchar](2) NULL,
	[KZNFP] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFEAG] [varchar](2) NULL,
	[KNDVB] [varchar](1) NULL,
	[KNDBZ] [varchar](1) NULL,
	[KSTTY] [varchar](1) NULL,
	[KSTNR] [varchar](8) NULL,
	[KSTKN] [decimal](8, 0) NULL,
	[KSTPZ] [decimal](8, 0) NULL,
	[CLSZU] [decimal](8, 0) NULL,
	[KZCLB] [varchar](1) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[PRVBE] [varchar](10) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDHIS] [decimal](5, 0) NULL,
	[IDVAR] [varchar](5) NULL,
	[ALEKZ] [varchar](1) NULL,
	[ITMID] [varchar](8) NULL,
	[GUID] [varchar](22) NULL,
	[ITSOB] [varchar](2) NULL,
	[RFPNT] [varchar](20) NULL,
	[GUIDX] [varchar](32) NULL,
	[CUFACTOR] [decimal](6, 0) NULL,
	[FUNCID] [varchar](40) NULL,
	[EXECUTE_SQL_FLAG] [varchar](1) NULL,
	[EXECUTE_ORA_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[BUTXT] [varchar](25) NULL,
	[ORT01] [varchar](25) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[WAABW] [decimal](2, 0) NULL,
	[PERIV] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[RCOMP] [varchar](6) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[XFMCO] [varchar](1) NULL,
	[XFMCB] [varchar](1) NULL,
	[XFMCA] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[FMHRDATE] [date] NULL,
	[BUVAR] [varchar](1) NULL,
	[FDBUK] [varchar](4) NULL,
	[XFDIS] [varchar](1) NULL,
	[XVALV] [varchar](1) NULL,
	[XSKFN] [varchar](1) NULL,
	[KKBER] [varchar](4) NULL,
	[XMWSN] [varchar](1) NULL,
	[MREGL] [varchar](4) NULL,
	[XGSBE] [varchar](1) NULL,
	[XGJRV] [varchar](1) NULL,
	[XKDFT] [varchar](1) NULL,
	[XPROD] [varchar](1) NULL,
	[XEINK] [varchar](1) NULL,
	[XJVAA] [varchar](1) NULL,
	[XVVWA] [varchar](1) NULL,
	[XSLTA] [varchar](1) NULL,
	[XFDMM] [varchar](1) NULL,
	[XFDSD] [varchar](1) NULL,
	[XEXTB] [varchar](1) NULL,
	[EBUKR] [varchar](4) NULL,
	[KTOP2] [varchar](4) NULL,
	[UMKRS] [varchar](4) NULL,
	[BUKRS_GLOB] [varchar](6) NULL,
	[FSTVA] [varchar](4) NULL,
	[OPVAR] [varchar](4) NULL,
	[XCOVR] [varchar](1) NULL,
	[TXKRS] [varchar](1) NULL,
	[WFVAR] [varchar](4) NULL,
	[XBBBF] [varchar](1) NULL,
	[XBBBE] [varchar](1) NULL,
	[XBBBA] [varchar](1) NULL,
	[XBBKO] [varchar](1) NULL,
	[XSTDT] [varchar](1) NULL,
	[MWSKV] [varchar](2) NULL,
	[MWSKA] [varchar](2) NULL,
	[IMPDA] [varchar](1) NULL,
	[XNEGP] [varchar](1) NULL,
	[XKKBI] [varchar](1) NULL,
	[WT_NEWWT] [varchar](1) NULL,
	[PP_PDATE] [varchar](1) NULL,
	[INFMT] [varchar](4) NULL,
	[FSTVARE] [varchar](4) NULL,
	[KOPIM] [varchar](1) NULL,
	[DKWEG] [varchar](1) NULL,
	[OFFSACCT] [decimal](1, 0) NULL,
	[BAPOVAR] [varchar](2) NULL,
	[XCOS] [varchar](1) NULL,
	[XCESSION] [varchar](1) NULL,
	[XSPLT] [varchar](1) NULL,
	[SURCCM] [varchar](1) NULL,
	[DTPROV] [varchar](2) NULL,
	[DTAMTC] [varchar](2) NULL,
	[DTTAXC] [varchar](2) NULL,
	[DTTDSP] [varchar](2) NULL,
	[DTAXR] [varchar](4) NULL,
	[XVATDATE] [varchar](1) NULL,
	[FM_DERIVE_ACC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[BUTXT] [varchar](25) NULL,
	[ORT01] [varchar](25) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[WAABW] [decimal](2, 0) NULL,
	[PERIV] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[RCOMP] [varchar](6) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[XFMCO] [varchar](1) NULL,
	[XFMCB] [varchar](1) NULL,
	[XFMCA] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[FMHRDATE] [date] NULL,
	[BUVAR] [varchar](1) NULL,
	[FDBUK] [varchar](4) NULL,
	[XFDIS] [varchar](1) NULL,
	[XVALV] [varchar](1) NULL,
	[XSKFN] [varchar](1) NULL,
	[KKBER] [varchar](4) NULL,
	[XMWSN] [varchar](1) NULL,
	[MREGL] [varchar](4) NULL,
	[XGSBE] [varchar](1) NULL,
	[XGJRV] [varchar](1) NULL,
	[XKDFT] [varchar](1) NULL,
	[XPROD] [varchar](1) NULL,
	[XEINK] [varchar](1) NULL,
	[XJVAA] [varchar](1) NULL,
	[XVVWA] [varchar](1) NULL,
	[XSLTA] [varchar](1) NULL,
	[XFDMM] [varchar](1) NULL,
	[XFDSD] [varchar](1) NULL,
	[XEXTB] [varchar](1) NULL,
	[EBUKR] [varchar](4) NULL,
	[KTOP2] [varchar](4) NULL,
	[UMKRS] [varchar](4) NULL,
	[BUKRS_GLOB] [varchar](6) NULL,
	[FSTVA] [varchar](4) NULL,
	[OPVAR] [varchar](4) NULL,
	[XCOVR] [varchar](1) NULL,
	[TXKRS] [varchar](1) NULL,
	[WFVAR] [varchar](4) NULL,
	[XBBBF] [varchar](1) NULL,
	[XBBBE] [varchar](1) NULL,
	[XBBBA] [varchar](1) NULL,
	[XBBKO] [varchar](1) NULL,
	[XSTDT] [varchar](1) NULL,
	[MWSKV] [varchar](2) NULL,
	[MWSKA] [varchar](2) NULL,
	[IMPDA] [varchar](1) NULL,
	[XNEGP] [varchar](1) NULL,
	[XKKBI] [varchar](1) NULL,
	[WT_NEWWT] [varchar](1) NULL,
	[PP_PDATE] [varchar](1) NULL,
	[INFMT] [varchar](4) NULL,
	[FSTVARE] [varchar](4) NULL,
	[KOPIM] [varchar](1) NULL,
	[DKWEG] [varchar](1) NULL,
	[OFFSACCT] [decimal](1, 0) NULL,
	[BAPOVAR] [varchar](2) NULL,
	[XCOS] [varchar](1) NULL,
	[XCESSION] [varchar](1) NULL,
	[XSPLT] [varchar](1) NULL,
	[SURCCM] [varchar](1) NULL,
	[DTPROV] [varchar](2) NULL,
	[DTAMTC] [varchar](2) NULL,
	[DTTAXC] [varchar](2) NULL,
	[DTTDSP] [varchar](2) NULL,
	[DTAXR] [varchar](4) NULL,
	[XVATDATE] [varchar](1) NULL,
	[FM_DERIVE_ACC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001W]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001W](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WERKS] [varchar](4) NULL,
	[NAME1] [varchar](30) NULL,
	[BWKEY] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[FABKL] [varchar](2) NULL,
	[NAME2] [varchar](30) NULL,
	[STRAS] [varchar](30) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[ORT01] [varchar](25) NULL,
	[EKORG] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[CHAZV] [varchar](1) NULL,
	[KKOWK] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[BEDPL] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[REGIO] [varchar](3) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[ADRNR] [varchar](10) NULL,
	[IWERK] [varchar](4) NULL,
	[TXJCD] [varchar](15) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[SPRAS] [varchar](1) NULL,
	[WKSOP] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[CHAZV_OLD] [varchar](1) NULL,
	[VLFKZ] [varchar](1) NULL,
	[BZIRK] [varchar](6) NULL,
	[ZONE1] [varchar](10) NULL,
	[TAXIW] [varchar](1) NULL,
	[BZQHL] [varchar](1) NULL,
	[LET01] [decimal](3, 0) NULL,
	[LET02] [decimal](3, 0) NULL,
	[LET03] [decimal](3, 0) NULL,
	[TXNAM_MA1] [varchar](16) NULL,
	[TXNAM_MA2] [varchar](16) NULL,
	[TXNAM_MA3] [varchar](16) NULL,
	[BETOL] [decimal](3, 0) NULL,
	[J_1BBRANCH] [varchar](4) NULL,
	[VTBFI] [varchar](2) NULL,
	[FPRFW] [varchar](3) NULL,
	[ACHVM] [varchar](1) NULL,
	[DVSART] [varchar](1) NULL,
	[NODETYPE] [varchar](3) NULL,
	[NSCHEMA] [varchar](4) NULL,
	[PKOSA] [varchar](1) NULL,
	[MISCH] [varchar](1) NULL,
	[MGVUPD] [varchar](1) NULL,
	[VSTEL] [varchar](4) NULL,
	[MGVLAUPD] [varchar](1) NULL,
	[MGVLAREVAL] [varchar](1) NULL,
	[SOURCING] [varchar](1) NULL,
	[OILIVAL] [varchar](1) NULL,
	[OIHVTYPE] [varchar](1) NULL,
	[OIHCREDIPI] [varchar](1) NULL,
	[STORETYPE] [varchar](1) NULL,
	[DEP_STORE] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001W_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001W_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WERKS] [varchar](4) NULL,
	[NAME1] [varchar](30) NULL,
	[BWKEY] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[FABKL] [varchar](2) NULL,
	[NAME2] [varchar](30) NULL,
	[STRAS] [varchar](30) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[ORT01] [varchar](25) NULL,
	[EKORG] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[CHAZV] [varchar](1) NULL,
	[KKOWK] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[BEDPL] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[REGIO] [varchar](3) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[ADRNR] [varchar](10) NULL,
	[IWERK] [varchar](4) NULL,
	[TXJCD] [varchar](15) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[SPRAS] [varchar](1) NULL,
	[WKSOP] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[CHAZV_OLD] [varchar](1) NULL,
	[VLFKZ] [varchar](1) NULL,
	[BZIRK] [varchar](6) NULL,
	[ZONE1] [varchar](10) NULL,
	[TAXIW] [varchar](1) NULL,
	[BZQHL] [varchar](1) NULL,
	[LET01] [decimal](3, 0) NULL,
	[LET02] [decimal](3, 0) NULL,
	[LET03] [decimal](3, 0) NULL,
	[TXNAM_MA1] [varchar](16) NULL,
	[TXNAM_MA2] [varchar](16) NULL,
	[TXNAM_MA3] [varchar](16) NULL,
	[BETOL] [decimal](3, 0) NULL,
	[J_1BBRANCH] [varchar](4) NULL,
	[VTBFI] [varchar](2) NULL,
	[FPRFW] [varchar](3) NULL,
	[ACHVM] [varchar](1) NULL,
	[DVSART] [varchar](1) NULL,
	[NODETYPE] [varchar](3) NULL,
	[NSCHEMA] [varchar](4) NULL,
	[PKOSA] [varchar](1) NULL,
	[MISCH] [varchar](1) NULL,
	[MGVUPD] [varchar](1) NULL,
	[VSTEL] [varchar](4) NULL,
	[MGVLAUPD] [varchar](1) NULL,
	[MGVLAREVAL] [varchar](1) NULL,
	[SOURCING] [varchar](1) NULL,
	[OILIVAL] [varchar](1) NULL,
	[OIHVTYPE] [varchar](1) NULL,
	[OIHCREDIPI] [varchar](1) NULL,
	[STORETYPE] [varchar](1) NULL,
	[DEP_STORE] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T005T]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T005T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[LANDX] [varchar](15) NULL,
	[NATIO] [varchar](15) NULL,
	[LANDX50] [varchar](50) NULL,
	[NATIO50] [varchar](50) NULL,
	[PRQ_SPREGT] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T005T_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T005T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[LANDX] [varchar](15) NULL,
	[NATIO] [varchar](15) NULL,
	[LANDX50] [varchar](50) NULL,
	[NATIO50] [varchar](50) NULL,
	[PRQ_SPREGT] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T006]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T006](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MSEHI] [varchar](3) NULL,
	[KZEX3] [varchar](1) NULL,
	[KZEX6] [varchar](1) NULL,
	[ANDEC] [int] NULL,
	[KZKEH] [varchar](1) NULL,
	[KZWOB] [varchar](1) NULL,
	[KZ1EH] [varchar](1) NULL,
	[KZ2EH] [varchar](1) NULL,
	[DIMID] [varchar](6) NULL,
	[ZAEHL] [int] NULL,
	[NENNR] [int] NULL,
	[EXP10] [int] NULL,
	[ADDKO] [decimal](9, 6) NULL,
	[EXPON] [int] NULL,
	[DECAN] [int] NULL,
	[ISOCODE] [varchar](3) NULL,
	[PRIMARY] [varchar](1) NULL,
	[TEMP_VALUE] [float] NULL,
	[TEMP_UNIT] [varchar](3) NULL,
	[FAMUNIT] [varchar](1) NULL,
	[PRESS_VAL] [float] NULL,
	[PRESS_UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T006_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T006_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MSEHI] [varchar](3) NULL,
	[KZEX3] [varchar](1) NULL,
	[KZEX6] [varchar](1) NULL,
	[ANDEC] [int] NULL,
	[KZKEH] [varchar](1) NULL,
	[KZWOB] [varchar](1) NULL,
	[KZ1EH] [varchar](1) NULL,
	[KZ2EH] [varchar](1) NULL,
	[DIMID] [varchar](6) NULL,
	[ZAEHL] [int] NULL,
	[NENNR] [int] NULL,
	[EXP10] [int] NULL,
	[ADDKO] [decimal](9, 6) NULL,
	[EXPON] [int] NULL,
	[DECAN] [int] NULL,
	[ISOCODE] [varchar](3) NULL,
	[PRIMARY] [varchar](1) NULL,
	[TEMP_VALUE] [float] NULL,
	[TEMP_UNIT] [varchar](3) NULL,
	[FAMUNIT] [varchar](1) NULL,
	[PRESS_VAL] [float] NULL,
	[PRESS_UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKGRP] [varchar](3) NULL,
	[EKNAM] [varchar](18) NULL,
	[EKTEL] [varchar](12) NULL,
	[LDEST] [varchar](4) NULL,
	[TELFX] [varchar](31) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[SMTP_ADDR] [varchar](241) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKGRP] [varchar](3) NULL,
	[EKNAM] [varchar](18) NULL,
	[EKTEL] [varchar](12) NULL,
	[LDEST] [varchar](4) NULL,
	[TELFX] [varchar](31) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[SMTP_ADDR] [varchar](241) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024E]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024E](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKOTX] [varchar](20) NULL,
	[BUKRS] [varchar](4) NULL,
	[TXADR] [varchar](70) NULL,
	[TXKOP] [varchar](70) NULL,
	[TXFUS] [varchar](70) NULL,
	[TXGRU] [varchar](70) NULL,
	[KALSE] [varchar](4) NULL,
	[MKALS] [varchar](6) NULL,
	[BPEFF] [varchar](1) NULL,
	[BUKRS_NTR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024E_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024E_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKOTX] [varchar](20) NULL,
	[BUKRS] [varchar](4) NULL,
	[TXADR] [varchar](70) NULL,
	[TXKOP] [varchar](70) NULL,
	[TXFUS] [varchar](70) NULL,
	[TXGRU] [varchar](70) NULL,
	[KALSE] [varchar](4) NULL,
	[MKALS] [varchar](6) NULL,
	[BPEFF] [varchar](1) NULL,
	[BUKRS_NTR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T077X]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T077X](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOKD] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T077X_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T077X_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOKD] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T151]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T151](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[KDGRP] [varchar](2) NULL,
	[BEZBG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T151_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T151_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[KDGRP] [varchar](2) NULL,
	[BEZBG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T151T]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T151T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[KTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T151T_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T151T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[KTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179T]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRODH] [varchar](18) NULL,
	[VTEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179T_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRODH] [varchar](18) NULL,
	[VTEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T189]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T189](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLTYP] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T189_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T189_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLTYP] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T189T]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T189T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PLTYP] [varchar](2) NULL,
	[PTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T189T_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T189T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PLTYP] [varchar](2) NULL,
	[PTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T682I]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T682I](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOZGF] [varchar](4) NULL,
	[KOLNR] [decimal](2, 0) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KKIDX] [decimal](3, 0) NULL,
	[KZEXL] [varchar](1) NULL,
	[KKMOD] [varchar](1) NULL,
	[KOBED] [decimal](3, 0) NULL,
	[KKOPF] [varchar](1) NULL,
	[GZUGR] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T682I_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T682I_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOZGF] [varchar](4) NULL,
	[KOLNR] [decimal](2, 0) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KKIDX] [decimal](3, 0) NULL,
	[KZEXL] [varchar](1) NULL,
	[KKMOD] [varchar](1) NULL,
	[KOBED] [decimal](3, 0) NULL,
	[KKOPF] [varchar](1) NULL,
	[GZUGR] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T685]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T685](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[KOZGF] [varchar](4) NULL,
	[DATVO] [varchar](1) NULL,
	[DTVOB] [varchar](1) NULL,
	[J_3GPRAEND] [varchar](1) NULL,
	[J_3GBUARTL] [decimal](1, 0) NULL,
	[J_3GBUARTB] [decimal](1, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T685_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T685_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[KOZGF] [varchar](4) NULL,
	[DATVO] [varchar](1) NULL,
	[DTVOB] [varchar](1) NULL,
	[J_3GPRAEND] [varchar](1) NULL,
	[J_3GBUARTL] [decimal](1, 0) NULL,
	[J_3GBUARTB] [decimal](1, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB039A]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB039A](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[TYPE] [varchar](6) NULL,
	[CATEGORY] [varchar](6) NULL,
	[XPROPOSE] [varchar](1) NULL,
	[XPERSON] [varchar](1) NULL,
	[XORGANISATION] [varchar](1) NULL,
	[XGROUP] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB039A_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB039A_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[TYPE] [varchar](6) NULL,
	[CATEGORY] [varchar](6) NULL,
	[XPROPOSE] [varchar](1) NULL,
	[XPERSON] [varchar](1) NULL,
	[XORGANISATION] [varchar](1) NULL,
	[XGROUP] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURC]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[ISOCD] [varchar](3) NULL,
	[ALTWR] [varchar](3) NULL,
	[GDATU] [date] NULL,
	[XPRIMARY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURC_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[ISOCD] [varchar](3) NULL,
	[ALTWR] [varchar](3) NULL,
	[GDATU] [date] NULL,
	[XPRIMARY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURR]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NULL,
	[FCURR] [varchar](5) NULL,
	[TCURR] [varchar](5) NULL,
	[GDATU] [varchar](8) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURR_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURR_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NULL,
	[FCURR] [varchar](5) NULL,
	[TCURR] [varchar](5) NULL,
	[GDATU] [varchar](8) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[LTEXT] [varchar](40) NULL,
	[KTEXT] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[LTEXT] [varchar](40) NULL,
	[KTEXT] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURX]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURX](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CURRKEY] [varchar](5) NULL,
	[CURRDEC] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURX_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURX_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CURRKEY] [varchar](5) NULL,
	[CURRDEC] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TFAVW]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TFAVW](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJCT] [varchar](5) NULL,
	[IDENT] [varchar](10) NULL,
	[VALUE] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TFAVW_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TFAVW_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJCT] [varchar](5) NULL,
	[IDENT] [varchar](10) NULL,
	[VALUE] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA01]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA01](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BEZEI] [varchar](25) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[LMONA] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ALEMT] [varchar](2) NULL,
	[MD_LOGSYSTEM] [varchar](10) NULL,
	[KHINR] [varchar](12) NULL,
	[KOMP1] [varchar](1) NULL,
	[KOMP0] [varchar](1) NULL,
	[KOMP2] [varchar](1) NULL,
	[ERKRS] [varchar](4) NULL,
	[DPRCT] [varchar](10) NULL,
	[PHINR] [varchar](12) NULL,
	[PCLDG] [varchar](2) NULL,
	[PCBEL] [varchar](1) NULL,
	[XWBUK] [varchar](1) NULL,
	[BPHINR] [varchar](12) NULL,
	[XBPALE] [varchar](1) NULL,
	[KSTAR_FIN] [varchar](10) NULL,
	[KSTAR_FID] [varchar](10) NULL,
	[PCACUR] [varchar](5) NULL,
	[PCACURTP] [varchar](2) NULL,
	[PCATRCUR] [varchar](1) NULL,
	[CTYP] [varchar](2) NULL,
	[RCLAC] [varchar](1) NULL,
	[BLART] [varchar](2) NULL,
	[FIKRS] [varchar](4) NULL,
	[RCL_PRIMAC] [varchar](1) NULL,
	[PCA_ALEMT] [varchar](2) NULL,
	[PCA_VALU] [decimal](1, 0) NULL,
	[CVPROF] [varchar](4) NULL,
	[CVACT] [varchar](1) NULL,
	[VNAME] [varchar](12) NULL,
	[PCA_ACC_DIFF] [varchar](1) NULL,
	[TP_VALOHB] [decimal](1, 0) NULL,
	[DEFPRCTR] [varchar](10) NULL,
	[AUTH_USE_NO_STD] [varchar](1) NULL,
	[AUTH_USE_ADD1] [varchar](1) NULL,
	[AUTH_USE_ADD2] [varchar](1) NULL,
	[AUTH_KE_NO_STD] [varchar](1) NULL,
	[AUTH_KE_USE_ADD1] [varchar](1) NULL,
	[AUTH_KE_USE_ADD2] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA01_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA01_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BEZEI] [varchar](25) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[LMONA] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ALEMT] [varchar](2) NULL,
	[MD_LOGSYSTEM] [varchar](10) NULL,
	[KHINR] [varchar](12) NULL,
	[KOMP1] [varchar](1) NULL,
	[KOMP0] [varchar](1) NULL,
	[KOMP2] [varchar](1) NULL,
	[ERKRS] [varchar](4) NULL,
	[DPRCT] [varchar](10) NULL,
	[PHINR] [varchar](12) NULL,
	[PCLDG] [varchar](2) NULL,
	[PCBEL] [varchar](1) NULL,
	[XWBUK] [varchar](1) NULL,
	[BPHINR] [varchar](12) NULL,
	[XBPALE] [varchar](1) NULL,
	[KSTAR_FIN] [varchar](10) NULL,
	[KSTAR_FID] [varchar](10) NULL,
	[PCACUR] [varchar](5) NULL,
	[PCACURTP] [varchar](2) NULL,
	[PCATRCUR] [varchar](1) NULL,
	[CTYP] [varchar](2) NULL,
	[RCLAC] [varchar](1) NULL,
	[BLART] [varchar](2) NULL,
	[FIKRS] [varchar](4) NULL,
	[RCL_PRIMAC] [varchar](1) NULL,
	[PCA_ALEMT] [varchar](2) NULL,
	[PCA_VALU] [decimal](1, 0) NULL,
	[CVPROF] [varchar](4) NULL,
	[CVACT] [varchar](1) NULL,
	[VNAME] [varchar](12) NULL,
	[PCA_ACC_DIFF] [varchar](1) NULL,
	[TP_VALOHB] [decimal](1, 0) NULL,
	[DEFPRCTR] [varchar](10) NULL,
	[AUTH_USE_NO_STD] [varchar](1) NULL,
	[AUTH_USE_ADD1] [varchar](1) NULL,
	[AUTH_USE_ADD2] [varchar](1) NULL,
	[AUTH_KE_NO_STD] [varchar](1) NULL,
	[AUTH_KE_USE_ADD1] [varchar](1) NULL,
	[AUTH_KE_USE_ADD2] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA02]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA02](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA02_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA02_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA1](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BEZEI] [varchar](25) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[LMONA] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ALEMT] [varchar](2) NULL,
	[MD_LOGSYSTEM] [varchar](10) NULL,
	[KHINR] [varchar](12) NULL,
	[KOMP1] [varchar](1) NULL,
	[KOMP0] [varchar](1) NULL,
	[KOMP2] [varchar](1) NULL,
	[ERKRS] [varchar](4) NULL,
	[DPRCT] [varchar](10) NULL,
	[PHINR] [varchar](12) NULL,
	[PCLDG] [varchar](2) NULL,
	[PCBEL] [varchar](1) NULL,
	[XWBUK] [varchar](1) NULL,
	[BPHINR] [varchar](12) NULL,
	[XBPALE] [varchar](1) NULL,
	[KSTAR_FIN] [varchar](10) NULL,
	[KSTAR_FID] [varchar](10) NULL,
	[PCACUR] [varchar](5) NULL,
	[PCACURTP] [varchar](2) NULL,
	[PCATRCUR] [varchar](1) NULL,
	[CTYP] [varchar](2) NULL,
	[RCLAC] [varchar](1) NULL,
	[BLART] [varchar](2) NULL,
	[FIKRS] [varchar](4) NULL,
	[RCL_PRIMAC] [varchar](1) NULL,
	[PCA_ALEMT] [varchar](2) NULL,
	[PCA_VALU] [decimal](1, 0) NULL,
	[CVPROF] [varchar](4) NULL,
	[CVACT] [varchar](1) NULL,
	[VNAME] [varchar](12) NULL,
	[PCA_ACC_DIFF] [varchar](1) NULL,
	[TP_VALOHB] [decimal](1, 0) NULL,
	[DEFPRCTR] [varchar](10) NULL,
	[AUTH_USE_NO_STD] [varchar](1) NULL,
	[AUTH_USE_ADD1] [varchar](1) NULL,
	[AUTH_USE_ADD2] [varchar](1) NULL,
	[AUTH_KE_NO_STD] [varchar](1) NULL,
	[AUTH_KE_USE_ADD1] [varchar](1) NULL,
	[AUTH_KE_USE_ADD2] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKT05]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKT05](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOSAR] [varchar](1) NULL,
	[KTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKT05_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKT05_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOSAR] [varchar](1) NULL,
	[KTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSPAT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSPAT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[SPART] [varchar](2) NULL,
	[VTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSPAT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSPAT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[SPART] [varchar](2) NULL,
	[VTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVGRT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVGRT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VKGRP] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVGRT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVGRT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VKGRP] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVKBT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVKBT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VKBUR] [varchar](4) NULL,
	[BEZEI] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVKBT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVKBT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VKBUR] [varchar](4) NULL,
	[BEZEI] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVKOT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVKOT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VKORG] [varchar](4) NULL,
	[VTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVKOT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVKOT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VKORG] [varchar](4) NULL,
	[VTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVM1T]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVM1T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MVGR1] [varchar](3) NULL,
	[BEZEI] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVM1T_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVM1T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MVGR1] [varchar](3) NULL,
	[BEZEI] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVM4T]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVM4T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MVGR4] [varchar](3) NULL,
	[BEZEI] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVM4T_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVM4T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MVGR4] [varchar](3) NULL,
	[BEZEI] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVTWT]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVTWT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VTWEG] [varchar](2) NULL,
	[VTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVTWT_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVTWT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[SPRAS] [varchar](1) NULL,
	[VTWEG] [varchar](2) NULL,
	[VTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USR02]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USR02](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BNAME] [varchar](12) NULL,
	[BCODE] [varchar](16) NULL,
	[GLTGV] [date] NULL,
	[GLTGB] [date] NULL,
	[USTYP] [varchar](1) NULL,
	[CLASS] [varchar](12) NULL,
	[LOCNT] [int] NULL,
	[UFLAG] [int] NULL,
	[ACCNT] [varchar](12) NULL,
	[ANAME] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[TRDAT] [date] NULL,
	[LTIME] [time](7) NULL,
	[OCOD1] [varchar](16) NULL,
	[BCDA1] [date] NULL,
	[CODV1] [varchar](1) NULL,
	[OCOD2] [varchar](16) NULL,
	[BCDA2] [date] NULL,
	[CODV2] [varchar](1) NULL,
	[OCOD3] [varchar](16) NULL,
	[BCDA3] [date] NULL,
	[CODV3] [varchar](1) NULL,
	[OCOD4] [varchar](16) NULL,
	[BCDA4] [date] NULL,
	[CODV4] [varchar](1) NULL,
	[OCOD5] [varchar](16) NULL,
	[BCDA5] [date] NULL,
	[CODV5] [varchar](1) NULL,
	[VERSN] [varchar](3) NULL,
	[CODVN] [varchar](1) NULL,
	[TZONE] [varchar](6) NULL,
	[ZBVMASTER] [varchar](1) NULL,
	[PASSCODE] [varchar](40) NULL,
	[PWDCHGDATE] [date] NULL,
	[PWDSTATE] [int] NULL,
	[RESERVED] [int] NULL,
	[PWDHISTORY] [int] NULL,
	[PWDLGNDATE] [date] NULL,
	[PWDSETDATE] [date] NULL,
	[PWDINITIAL] [int] NULL,
	[PWDLOCKDATE] [date] NULL,
	[PWDSALTEDHASH] [varchar](255) NULL,
	[SECURITY_POLICY] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USR02_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USR02_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BNAME] [varchar](12) NULL,
	[BCODE] [varchar](16) NULL,
	[GLTGV] [date] NULL,
	[GLTGB] [date] NULL,
	[USTYP] [varchar](1) NULL,
	[CLASS] [varchar](12) NULL,
	[LOCNT] [int] NULL,
	[UFLAG] [int] NULL,
	[ACCNT] [varchar](12) NULL,
	[ANAME] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[TRDAT] [date] NULL,
	[LTIME] [time](7) NULL,
	[OCOD1] [varchar](16) NULL,
	[BCDA1] [date] NULL,
	[CODV1] [varchar](1) NULL,
	[OCOD2] [varchar](16) NULL,
	[BCDA2] [date] NULL,
	[CODV2] [varchar](1) NULL,
	[OCOD3] [varchar](16) NULL,
	[BCDA3] [date] NULL,
	[CODV3] [varchar](1) NULL,
	[OCOD4] [varchar](16) NULL,
	[BCDA4] [date] NULL,
	[CODV4] [varchar](1) NULL,
	[OCOD5] [varchar](16) NULL,
	[BCDA5] [date] NULL,
	[CODV5] [varchar](1) NULL,
	[VERSN] [varchar](3) NULL,
	[CODVN] [varchar](1) NULL,
	[TZONE] [varchar](6) NULL,
	[ZBVMASTER] [varchar](1) NULL,
	[PASSCODE] [varchar](40) NULL,
	[PWDCHGDATE] [date] NULL,
	[PWDSTATE] [int] NULL,
	[RESERVED] [int] NULL,
	[PWDHISTORY] [int] NULL,
	[PWDLGNDATE] [date] NULL,
	[PWDSETDATE] [date] NULL,
	[PWDINITIAL] [int] NULL,
	[PWDLOCKDATE] [date] NULL,
	[PWDSALTEDHASH] [varchar](255) NULL,
	[SECURITY_POLICY] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZANAPLAN_COPA]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZANAPLAN_COPA](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[BUKRS] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[VKGRP] [varchar](3) NULL,
	[KUNN2] [varchar](10) NULL,
	[ENTITY] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZANAPLAN_COPA_OLD]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZANAPLAN_COPA_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[BUKRS] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[VKGRP] [varchar](3) NULL,
	[KUNN2] [varchar](10) NULL,
	[ENTITY] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[A900_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[A900_TEMP](
	[MANDT] [varchar](3) NOT NULL,
	[KAPPL] [varchar](2) NOT NULL,
	[KSCHL] [varchar](4) NOT NULL,
	[VKORG] [varchar](4) NOT NULL,
	[VTWEG] [varchar](2) NOT NULL,
	[SPART] [varchar](2) NOT NULL,
	[PLTYP] [varchar](2) NOT NULL,
	[MATNR] [varchar](18) NOT NULL,
	[DATBI] [date] NOT NULL,
	[DATAB] [date] NULL,
	[KNUMH] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[KAPPL] ASC,
	[KSCHL] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PLTYP] ASC,
	[MATNR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COSP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COSP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[PERBL] [decimal](3, 0) NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COSS]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COSS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[PERBL] [decimal](3, 0) NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[PAF001] [decimal](15, 2) NULL,
	[PAF002] [decimal](15, 2) NULL,
	[PAF003] [decimal](15, 2) NULL,
	[PAF004] [decimal](15, 2) NULL,
	[PAF005] [decimal](15, 2) NULL,
	[PAF006] [decimal](15, 2) NULL,
	[PAF007] [decimal](15, 2) NULL,
	[PAF008] [decimal](15, 2) NULL,
	[PAF009] [decimal](15, 2) NULL,
	[PAF010] [decimal](15, 2) NULL,
	[PAF011] [decimal](15, 2) NULL,
	[PAF012] [decimal](15, 2) NULL,
	[PAF013] [decimal](15, 2) NULL,
	[PAF014] [decimal](15, 2) NULL,
	[PAF015] [decimal](15, 2) NULL,
	[PAF016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_CTR_HIER_UNRVL]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_CTR_HIER_UNRVL](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_CTR_HIER_UNRVL_KAP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_CTR_HIER_UNRVL_KAP](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_CTR_HIER_UNRVL_TMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_CTR_HIER_UNRVL_TMP](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_ELMNT_HIER_UNRVL]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_ELMNT_HIER_UNRVL](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_ELMNT_HIER_UNRVL_KAP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_ELMNT_HIER_UNRVL_KAP](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_ELMNT_HIER_UNRVL_TMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_ELMNT_HIER_UNRVL_TMP](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CUST_HIER_UNRVL]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CUST_HIER_UNRVL](
	[HIER_DT] [varchar](8) NOT NULL,
	[HI_TYP] [varchar](5) NOT NULL,
	[LVL1_CUST_NBR] [varchar](10) NULL,
	[LVL2_CUST_NBR] [varchar](10) NULL,
	[LVL3_CUST_NBR] [varchar](10) NULL,
	[LVL4_CUST_NBR] [varchar](10) NULL,
	[LVL5_CUST_NBR] [varchar](10) NULL,
	[LVL6_CUST_NBR] [varchar](10) NULL,
	[LVL7_CUST_NBR] [varchar](10) NULL,
	[LVL8_CUST_NBR] [varchar](10) NULL,
	[LVL9_CUST_NBR] [varchar](10) NULL,
	[LVL10_CUST_NBR] [varchar](10) NULL,
	[LVL11_CUST_NBR] [varchar](10) NULL,
	[LVL12_CUST_NBR] [varchar](10) NULL,
	[LVL13_CUST_NBR] [varchar](10) NULL,
	[LVL14_CUST_NBR] [varchar](10) NULL,
	[LVL15_CUST_NBR] [varchar](10) NULL,
	[LVL16_CUST_NBR] [varchar](10) NULL,
	[LVL17_CUST_NBR] [varchar](10) NULL,
	[LVL18_CUST_NBR] [varchar](10) NULL,
	[LVL19_CUST_NBR] [varchar](10) NULL,
	[LVL20_CUST_NBR] [varchar](10) NULL,
	[LVL1_CUST_NM] [varchar](35) NULL,
	[LVL2_CUST_NM] [varchar](35) NULL,
	[LVL3_CUST_NM] [varchar](35) NULL,
	[LVL4_CUST_NM] [varchar](35) NULL,
	[LVL5_CUST_NM] [varchar](35) NULL,
	[LVL6_CUST_NM] [varchar](35) NULL,
	[LVL7_CUST_NM] [varchar](35) NULL,
	[LVL8_CUST_NM] [varchar](35) NULL,
	[LVL9_CUST_NM] [varchar](35) NULL,
	[LVL10_CUST_NM] [varchar](35) NULL,
	[LVL11_CUST_NM] [varchar](35) NULL,
	[LVL12_CUST_NM] [varchar](35) NULL,
	[LVL13_CUST_NM] [varchar](35) NULL,
	[LVL14_CUST_NM] [varchar](35) NULL,
	[LVL15_CUST_NM] [varchar](35) NULL,
	[LVL16_CUST_NM] [varchar](35) NULL,
	[LVL17_CUST_NM] [varchar](35) NULL,
	[LVL18_CUST_NM] [varchar](35) NULL,
	[LVL19_CUST_NM] [varchar](35) NULL,
	[LVL20_CUST_NM] [varchar](35) NULL,
	[LST_LVL_CUST_NBR] [varchar](10) NULL,
	[LST_LVL_NBR] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[FIN_STMT_HIER_UNRVL]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[FIN_STMT_HIER_UNRVL](
	[FIN_STMT_VRSN] [varchar](4) NOT NULL,
	[FIN_STMT_ITM] [varchar](14) NULL,
	[FIN_STMT_ID] [numeric](6, 0) NULL,
	[NODE_TYP] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL2_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL3_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL4_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL5_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL6_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL7_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL8_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL9_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL10_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL11_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL12_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL13_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL14_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL15_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL16_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL17_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL18_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL19_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL20_FIN_STMT_ITM] [varchar](14) NULL,
	[LVL1_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL2_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL3_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL4_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL5_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL6_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL7_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL8_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL9_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL10_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL11_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL12_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL13_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL14_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL15_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL16_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL17_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL18_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL19_FIN_STMT_ITM_DESC] [varchar](50) NULL,
	[LVL20_FIN_STMT_ITM_DESC] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_KONH_SEED]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_KONH_SEED](
	[MANDT] [varchar](3) NULL,
	[DSOBJECT] [varchar](40) NULL,
	[DSVALUE] [varchar](132) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EBAN_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EBAN_Keys](
	[BANFN] [varchar](10) NOT NULL,
	[BNFPO] [decimal](5, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BANFN] ASC,
	[BNFPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EBKN_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EBKN_Keys](
	[BANFN] [varchar](10) NOT NULL,
	[BNFPO] [decimal](5, 0) NOT NULL,
	[ZEBKN] [decimal](2, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BANFN] ASC,
	[BNFPO] ASC,
	[ZEBKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EKBE_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EKBE_Keys](
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ZEKKN] [decimal](2, 0) NOT NULL,
	[VGABE] [varchar](1) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](4, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ZEKKN] ASC,
	[VGABE] ASC,
	[GJAHR] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EKET_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EKET_Keys](
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ETENR] [decimal](4, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ETENR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EKKN_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EKKN_Keys](
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ZEKKN] [decimal](2, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ZEKKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EKKO_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EKKO_Keys](
	[EBELN] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_EKPO_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_EKPO_Keys](
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KEU_ECC_MM_Procurement_ESSR_Keys]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KEU_ECC_MM_Procurement_ESSR_Keys](
	[LBLNI] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LBLNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KONH_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KONH_TEMP](
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NOT NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[KVEWE] [varchar](1) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VAKEY] [varchar](100) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[KOSRT] [varchar](10) NULL,
	[KZUST] [varchar](3) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[KNUMA_SD] [varchar](10) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[LICNO] [varchar](20) NULL,
	[LICDT] [date] NULL,
	[VADAT] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[KNUMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KONP_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KONP_TEMP](
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NOT NULL,
	[KOPOS] [decimal](2, 0) NOT NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[KNUMT] [varchar](10) NULL,
	[STFKZ] [varchar](1) NULL,
	[KZBZG] [varchar](1) NULL,
	[KSTBM] [decimal](15, 3) NULL,
	[KONMS] [varchar](3) NULL,
	[KSTBW] [decimal](15, 2) NULL,
	[KONWS] [varchar](5) NULL,
	[KRECH] [varchar](1) NULL,
	[KBETR] [decimal](11, 2) NULL,
	[KONWA] [varchar](5) NULL,
	[KPEIN] [decimal](5, 0) NULL,
	[KMEIN] [varchar](3) NULL,
	[PRSCH] [varchar](4) NULL,
	[KUMZA] [decimal](5, 0) NULL,
	[KUMNE] [decimal](5, 0) NULL,
	[MEINS] [varchar](3) NULL,
	[MXWRT] [decimal](11, 2) NULL,
	[GKWRT] [decimal](11, 2) NULL,
	[PKWRT] [decimal](15, 2) NULL,
	[FKWRT] [decimal](15, 2) NULL,
	[RSWRT] [decimal](15, 2) NULL,
	[KWAEH] [varchar](5) NULL,
	[UKBAS] [decimal](15, 2) NULL,
	[KZNEP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[MWSK1] [varchar](2) NULL,
	[LOEVM_KO] [varchar](1) NULL,
	[ZAEHK_IND] [decimal](2, 0) NULL,
	[BOMAT] [varchar](18) NULL,
	[KBRUE] [decimal](11, 2) NULL,
	[KSPAE] [varchar](1) NULL,
	[BOSTA] [varchar](1) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[VALTG] [decimal](2, 0) NULL,
	[VALDT] [date] NULL,
	[ZTERM] [varchar](4) NULL,
	[ANZAUF] [decimal](2, 0) NULL,
	[MIKBAS] [decimal](15, 3) NULL,
	[MXKBAS] [decimal](15, 3) NULL,
	[KOMXWRT] [decimal](13, 2) NULL,
	[KLF_STG] [decimal](4, 0) NULL,
	[KLF_KAL] [decimal](4, 0) NULL,
	[VKKAL] [varchar](1) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[MWSK2] [varchar](2) NULL,
	[VERTT] [varchar](1) NULL,
	[VERTN] [varchar](13) NULL,
	[VBEWA] [varchar](4) NULL,
	[MDFLG] [varchar](1) NULL,
	[KFRST] [varchar](1) NULL,
	[UASTA] [varchar](1) NULL,
	[/BEV1/ECRTT] [varchar](1) NULL,
	[/BEV1/ECRTN] [varchar](13) NULL,
	[/BEV1/ECEWA] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[KNUMH] ASC,
	[KOPOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Procurement_PO_Delete]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Procurement_PO_Delete](
	[DSOBJECT] [varchar](40) NOT NULL,
	[DSVALUE] [varchar](132) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DSOBJECT] ASC,
	[DSVALUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SKA1_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SKA1_TEMP](
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[XBILK] [varchar](1) NULL,
	[SAKAN] [varchar](10) NULL,
	[BILKT] [varchar](10) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[GVTYP] [varchar](2) NULL,
	[KTOKS] [varchar](4) NULL,
	[MUSTR] [varchar](10) NULL,
	[VBUND] [varchar](6) NULL,
	[XLOEV] [varchar](1) NULL,
	[XSPEA] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[XSPEP] [varchar](1) NULL,
	[MCOD1] [varchar](25) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SKAT_TEMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SKAT_TEMP](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[TXT20] [varchar](20) NULL,
	[TXT50] [varchar](50) NULL,
	[MCOD1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AUFK]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_AUFK](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_COBK]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_COEP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_EKKO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_EKKO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_EKPO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_EKPO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[EMPST] [varchar](25) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[SPE_EWM_DTC] [varchar](1) NULL,
	[EXLIN] [varchar](40) NULL,
	[EXSNR] [decimal](5, 0) NULL,
	[EHTYP] [varchar](4) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[ZZOWNER] [varchar](12) NULL,
	[ZZREASON_CODE] [varchar](40) NULL,
	[REFSITE] [varchar](4) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_USR01]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_USR01](
	[MANDT] [varchar](3) NOT NULL,
	[BNAME] [varchar](12) NOT NULL,
	[STCOD] [varchar](20) NULL,
	[SPLD] [varchar](4) NULL,
	[SPLG] [varchar](1) NULL,
	[SPDB] [varchar](1) NULL,
	[SPDA] [varchar](1) NULL,
	[DATFM] [varchar](1) NULL,
	[DCPFM] [varchar](1) NULL,
	[HDEST] [varchar](8) NULL,
	[HMAND] [varchar](3) NULL,
	[HNAME] [varchar](12) NULL,
	[MENON] [varchar](1) NULL,
	[MENUE] [varchar](20) NULL,
	[STRTT] [varchar](20) NULL,
	[LANGU] [varchar](1) NULL,
	[CATTKENNZ] [varchar](1) NULL,
	[TIMEFM] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[BNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[T001_TEST]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[T001_TEST](
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[BUTXT] [varchar](25) NULL,
	[ORT01] [varchar](25) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[WAABW] [decimal](2, 0) NULL,
	[PERIV] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[RCOMP] [varchar](6) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[XFMCO] [varchar](1) NULL,
	[XFMCB] [varchar](1) NULL,
	[XFMCA] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[FMHRDATE] [date] NULL,
	[BUVAR] [varchar](1) NULL,
	[FDBUK] [varchar](4) NULL,
	[XFDIS] [varchar](1) NULL,
	[XVALV] [varchar](1) NULL,
	[XSKFN] [varchar](1) NULL,
	[KKBER] [varchar](4) NULL,
	[XMWSN] [varchar](1) NULL,
	[MREGL] [varchar](4) NULL,
	[XGSBE] [varchar](1) NULL,
	[XGJRV] [varchar](1) NULL,
	[XKDFT] [varchar](1) NULL,
	[XPROD] [varchar](1) NULL,
	[XEINK] [varchar](1) NULL,
	[XJVAA] [varchar](1) NULL,
	[XVVWA] [varchar](1) NULL,
	[XSLTA] [varchar](1) NULL,
	[XFDMM] [varchar](1) NULL,
	[XFDSD] [varchar](1) NULL,
	[XEXTB] [varchar](1) NULL,
	[EBUKR] [varchar](4) NULL,
	[KTOP2] [varchar](4) NULL,
	[UMKRS] [varchar](4) NULL,
	[BUKRS_GLOB] [varchar](6) NULL,
	[FSTVA] [varchar](4) NULL,
	[OPVAR] [varchar](4) NULL,
	[XCOVR] [varchar](1) NULL,
	[TXKRS] [varchar](1) NULL,
	[WFVAR] [varchar](4) NULL,
	[XBBBF] [varchar](1) NULL,
	[XBBBE] [varchar](1) NULL,
	[XBBBA] [varchar](1) NULL,
	[XBBKO] [varchar](1) NULL,
	[XSTDT] [varchar](1) NULL,
	[MWSKV] [varchar](2) NULL,
	[MWSKA] [varchar](2) NULL,
	[IMPDA] [varchar](1) NULL,
	[XNEGP] [varchar](1) NULL,
	[XKKBI] [varchar](1) NULL,
	[WT_NEWWT] [varchar](1) NULL,
	[PP_PDATE] [varchar](1) NULL,
	[INFMT] [varchar](4) NULL,
	[FSTVARE] [varchar](4) NULL,
	[KOPIM] [varchar](1) NULL,
	[DKWEG] [varchar](1) NULL,
	[OFFSACCT] [decimal](1, 0) NULL,
	[BAPOVAR] [varchar](2) NULL,
	[XCOS] [varchar](1) NULL,
	[XCESSION] [varchar](1) NULL,
	[XSPLT] [varchar](1) NULL,
	[SURCCM] [varchar](1) NULL,
	[DTPROV] [varchar](2) NULL,
	[DTAMTC] [varchar](2) NULL,
	[DTTAXC] [varchar](2) NULL,
	[DTTDSP] [varchar](2) NULL,
	[DTAXR] [varchar](4) NULL,
	[XVATDATE] [varchar](1) NULL,
	[PST_PER_VAR] [varchar](1) NULL,
	[XBBSC] [varchar](1) NULL,
	[FM_DERIVE_ACC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Temp_Delete_1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Temp_Delete_1](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Temp_Delete_1_1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Temp_Delete_1_1](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Temp_Delete_2]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Temp_Delete_2](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Temp_Delete_2_1]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Temp_Delete_2_1](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_DELETE_KEU_COPA]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_DELETE_KEU_COPA](
	[BPC Summary Account] [varchar](32) NULL,
	[Company code] [varchar](4) NULL,
	[SALESORG] [varchar](4) NULL,
	[Sales Organization] [varchar](18) NULL,
	[BRAND] [varchar](10) NULL,
	[Fiscal year period] [decimal](7, 0) NULL,
	[Fiscal year variant] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales group] [varchar](3) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[Sales District] [varchar](6) NULL,
	[Amount] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZCOIO_PRORD_LIST]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZCOIO_PRORD_LIST](
	[MANDT] [varchar](3) NOT NULL,
	[SNO] [int] NOT NULL,
	[ERDAT] [date] NOT NULL,
	[UNAME] [varchar](12) NULL,
	[AUFNR] [varchar](12) NULL,
	[PLNT_CD] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[MTART] [varchar](4) NULL,
	[MAKTX] [varchar](40) NULL,
	[PSTNG_DT] [date] NULL,
	[MV_TYPE] [varchar](3) NULL,
	[QTY_UNITS] [decimal](13, 3) NULL,
	[UOM] [varchar](3) NULL,
	[AMT_LC] [decimal](13, 3) NULL,
	[CURR_LC] [varchar](5) NULL,
	[STD_PRICE] [decimal](13, 3) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[SNO] ASC,
	[ERDAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [A005_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [A005_IX] ON [dbo].[A005]
(
	[KAPPL] ASC,
	[KSCHL] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[KUNNR] ASC,
	[MATNR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [A005_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [A005_IX] ON [dbo].[A005_OLD]
(
	[KAPPL] ASC,
	[KSCHL] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[KUNNR] ASC,
	[MATNR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [A900_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [A900_IX] ON [dbo].[A900]
(
	[KAPPL] ASC,
	[KSCHL] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PLTYP] ASC,
	[MATNR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [A900_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [A900_IX] ON [dbo].[A900_KEU_ECC_OLD]
(
	[KAPPL] ASC,
	[KSCHL] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PLTYP] ASC,
	[MATNR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ADRC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [ADRC_IX] ON [dbo].[ADRC]
(
	[ADDRNUMBER] ASC,
	[DATE_FROM] ASC,
	[NATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ADRC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [ADRC_IX] ON [dbo].[ADRC_OLD]
(
	[ADDRNUMBER] ASC,
	[DATE_FROM] ASC,
	[NATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPC_IX] ON [dbo].[CEPC]
(
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPC_IX] ON [dbo].[CEPC_OLD]
(
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPCT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPCT_IX] ON [dbo].[CEPCT]
(
	[SPRAS] ASC,
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPCT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPCT_IX] ON [dbo].[CEPCT_OLD]
(
	[SPRAS] ASC,
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COAS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [COAS_IX] ON [dbo].[COAS]
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COAS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [COAS_IX] ON [dbo].[COAS_OLD]
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COSP_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [COSP_IX] ON [dbo].[COSP]
(
	[LEDNR] ASC,
	[OBJNR] ASC,
	[GJAHR] ASC,
	[WRTTP] ASC,
	[VERSN] ASC,
	[KSTAR] ASC,
	[HRKFT] ASC,
	[VRGNG] ASC,
	[VBUND] ASC,
	[PARGB] ASC,
	[BEKNZ] ASC,
	[TWAER] ASC,
	[PERBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COSS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE NONCLUSTERED INDEX [COSS_IX] ON [dbo].[COSS]
(
	[LEDNR] ASC,
	[OBJNR] ASC,
	[GJAHR] ASC,
	[WRTTP] ASC,
	[VERSN] ASC,
	[KSTAR] ASC,
	[HRKFT] ASC,
	[VRGNG] ASC,
	[PAROB] ASC,
	[USPOB] ASC,
	[BEKNZ] ASC,
	[TWAER] ASC,
	[PERBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKA_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKA_IX] ON [dbo].[CSKA]
(
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKA_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKA_IX] ON [dbo].[CSKA_OLD]
(
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKB_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKB_IX] ON [dbo].[CSKB]
(
	[KOKRS] ASC,
	[KSTAR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKB_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKB_IX] ON [dbo].[CSKB_OLD]
(
	[KOKRS] ASC,
	[KSTAR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKS_IX] ON [dbo].[CSKS]
(
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKS_IX] ON [dbo].[CSKS_OLD]
(
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKT_IX] ON [dbo].[CSKT]
(
	[SPRAS] ASC,
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKT_IX] ON [dbo].[CSKT_OLD]
(
	[SPRAS] ASC,
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKU_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKU_IX] ON [dbo].[CSKU]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKU_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKU_IX] ON [dbo].[CSKU_OLD]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EORD_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [EORD_IX] ON [dbo].[EORD]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[ZEORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EORD_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [EORD_IX] ON [dbo].[EORD_OLD]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[ZEORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FAGL_011PC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FAGL_011PC_IX] ON [dbo].[FAGL_011PC]
(
	[VERSN] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FAGL_011PC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FAGL_011PC_IX] ON [dbo].[FAGL_011PC_OLD]
(
	[VERSN] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FAGL_011QT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FAGL_011QT_IX] ON [dbo].[FAGL_011QT]
(
	[VERSN] ASC,
	[SPRAS] ASC,
	[ERGSL] ASC,
	[TXTYP] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FAGL_011QT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FAGL_011QT_IX] ON [dbo].[FAGL_011QT_OLD]
(
	[VERSN] ASC,
	[SPRAS] ASC,
	[ERGSL] ASC,
	[TXTYP] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FAGL_011ZC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FAGL_011ZC_IX] ON [dbo].[FAGL_011ZC]
(
	[VERSN] ASC,
	[ERGSL] ASC,
	[KTOPL] ASC,
	[VONKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FAGL_011ZC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FAGL_011ZC_IX] ON [dbo].[FAGL_011ZC_OLD]
(
	[VERSN] ASC,
	[ERGSL] ASC,
	[KTOPL] ASC,
	[VONKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [GLT0_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [GLT0_IX] ON [dbo].[GLT0]
(
	[RCLNT] ASC,
	[RLDNR] ASC,
	[RRCTY] ASC,
	[RVERS] ASC,
	[BUKRS] ASC,
	[RYEAR] ASC,
	[RACCT] ASC,
	[RBUSA] ASC,
	[RTCUR] ASC,
	[DRCRK] ASC,
	[RPMAX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNA1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNA1_IX] ON [dbo].[KNA1]
(
	[KUNNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNA1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNA1_IX] ON [dbo].[KNA1_OLD]
(
	[KUNNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB1_IX] ON [dbo].[KNB1]
(
	[KUNNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB1_IX] ON [dbo].[KNB1_OLD]
(
	[KUNNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB5_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB5_IX] ON [dbo].[KNB5]
(
	[KUNNR] ASC,
	[BUKRS] ASC,
	[MABER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB5_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB5_IX] ON [dbo].[KNB5_OLD]
(
	[KUNNR] ASC,
	[BUKRS] ASC,
	[MABER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNMT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNMT_IX] ON [dbo].[KNMT]
(
	[VKORG] ASC,
	[VTWEG] ASC,
	[KUNNR] ASC,
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNMT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNMT_IX] ON [dbo].[KNMT_OLD]
(
	[VKORG] ASC,
	[VTWEG] ASC,
	[KUNNR] ASC,
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVH_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVH_IX] ON [dbo].[KNVH]
(
	[HITYP] ASC,
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[DATAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVH_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVH_IX] ON [dbo].[KNVH_OLD]
(
	[HITYP] ASC,
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[DATAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVP_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVP_IX] ON [dbo].[KNVP]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PARVW] ASC,
	[PARZA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVP_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVP_IX] ON [dbo].[KNVP_OLD]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PARVW] ASC,
	[PARZA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVV_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVV_IX] ON [dbo].[KNVV]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVV_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVV_IX] ON [dbo].[KNVV_OLD]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONH_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONH_IX] ON [dbo].[KONH]
(
	[KNUMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONH_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONH_IX] ON [dbo].[KONH_OLD]
(
	[KNUMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONM_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONM_IX] ON [dbo].[KONM]
(
	[KNUMH] ASC,
	[KOPOS] ASC,
	[KLFN1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONM_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONM_IX] ON [dbo].[KONM_OLD]
(
	[KNUMH] ASC,
	[KOPOS] ASC,
	[KLFN1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONP_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONP_IX] ON [dbo].[KONP]
(
	[KNUMH] ASC,
	[KOPOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONP_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONP_IX] ON [dbo].[KONP_OLD]
(
	[KNUMH] ASC,
	[KOPOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFA1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFA1_IX] ON [dbo].[LFA1]
(
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFA1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFA1_IX] ON [dbo].[LFA1_OLD]
(
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFB1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFB1_IX] ON [dbo].[LFB1]
(
	[LIFNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFB1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFB1_IX] ON [dbo].[LFB1_OLD]
(
	[LIFNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFM1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFM1_IX] ON [dbo].[LFM1]
(
	[LIFNR] ASC,
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFM1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFM1_IX] ON [dbo].[LFM1_OLD]
(
	[LIFNR] ASC,
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAKT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAKT_IX] ON [dbo].[MAKT]
(
	[MATNR] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAKT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAKT_IX] ON [dbo].[MAKT_OLD]
(
	[MATNR] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARA_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARA_IX] ON [dbo].[MARA]
(
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARA_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARA_IX] ON [dbo].[MARA_OLD]
(
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARC_IX] ON [dbo].[MARC]
(
	[MATNR] ASC,
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARC_IX] ON [dbo].[MARC_OLD]
(
	[MATNR] ASC,
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARM_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARM_IX] ON [dbo].[MARM]
(
	[MATNR] ASC,
	[MEINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARM_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARM_IX] ON [dbo].[MARM_OLD]
(
	[MATNR] ASC,
	[MEINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAST_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAST_IX] ON [dbo].[MAST]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[STLAN] ASC,
	[STLNR] ASC,
	[STLAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAST_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAST_IX] ON [dbo].[MAST_OLD]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[STLAN] ASC,
	[STLNR] ASC,
	[STLAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MBEW_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MBEW_IX] ON [dbo].[MBEW]
(
	[MATNR] ASC,
	[BWKEY] ASC,
	[BWTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MBEW_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MBEW_IX] ON [dbo].[MBEW_OLD]
(
	[MATNR] ASC,
	[BWKEY] ASC,
	[BWTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MEAN_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MEAN_IX] ON [dbo].[MEAN]
(
	[MATNR] ASC,
	[MEINH] ASC,
	[LFNUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MEAN_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MEAN_IX] ON [dbo].[MEAN_OLD]
(
	[MATNR] ASC,
	[MEINH] ASC,
	[LFNUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MLAN_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MLAN_IX] ON [dbo].[MLAN]
(
	[MATNR] ASC,
	[ALAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MLAN_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MLAN_IX] ON [dbo].[MLAN_OLD]
(
	[MATNR] ASC,
	[ALAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MVKE_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MVKE_IX] ON [dbo].[MVKE]
(
	[MATNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MVKE_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MVKE_IX] ON [dbo].[MVKE_OLD]
(
	[MATNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADER_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADER_IX] ON [dbo].[SETHEADER]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADER_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADER_IX] ON [dbo].[SETHEADER_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADERT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADERT_IX] ON [dbo].[SETHEADERT]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADERT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADERT_IX] ON [dbo].[SETHEADERT_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETLEAF_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETLEAF_IX] ON [dbo].[SETLEAF]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETLEAF_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETLEAF_IX] ON [dbo].[SETLEAF_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETNODE_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETNODE_IX] ON [dbo].[SETNODE]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETNODE_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETNODE_IX] ON [dbo].[SETNODE_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKA1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKA1_IX] ON [dbo].[SKA1]
(
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKA1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKA1_IX] ON [dbo].[SKA1_OLD]
(
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKAT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKAT_IX] ON [dbo].[SKAT]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKAT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKAT_IX] ON [dbo].[SKAT_OLD]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKB1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKB1_IX] ON [dbo].[SKB1]
(
	[BUKRS] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKB1_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKB1_IX] ON [dbo].[SKB1_OLD]
(
	[BUKRS] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STAS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STAS_IX] ON [dbo].[STAS]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STLKN] ASC,
	[STASZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STAS_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STAS_IX] ON [dbo].[STAS_OLD]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STLKN] ASC,
	[STASZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STKO_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STKO_IX] ON [dbo].[STKO]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STKOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STKO_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STKO_IX] ON [dbo].[STKO_OLD]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STKOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STPO_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STPO_IX] ON [dbo].[STPO]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLKN] ASC,
	[STPOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STPO_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STPO_IX] ON [dbo].[STPO_OLD]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLKN] ASC,
	[STPOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001_IX] ON [dbo].[T001]
(
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001_IX] ON [dbo].[T001_OLD]
(
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001W_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001W_IX] ON [dbo].[T001W]
(
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001W_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001W_IX] ON [dbo].[T001W_OLD]
(
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T005T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T005T_IX] ON [dbo].[T005T]
(
	[SPRAS] ASC,
	[LAND1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T005T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T005T_IX] ON [dbo].[T005T_OLD]
(
	[SPRAS] ASC,
	[LAND1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T006_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T006_IX] ON [dbo].[T006]
(
	[MSEHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T006_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T006_IX] ON [dbo].[T006_OLD]
(
	[MSEHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T024_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T024_IX] ON [dbo].[T024]
(
	[EKGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T024_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T024_IX] ON [dbo].[T024_OLD]
(
	[EKGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T024E_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T024E_IX] ON [dbo].[T024E]
(
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T024E_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T024E_IX] ON [dbo].[T024E_OLD]
(
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T077X_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T077X_IX] ON [dbo].[T077X]
(
	[SPRAS] ASC,
	[KTOKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T077X_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T077X_IX] ON [dbo].[T077X_OLD]
(
	[SPRAS] ASC,
	[KTOKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T151_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T151_IX] ON [dbo].[T151]
(
	[KDGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T151_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T151_IX] ON [dbo].[T151_OLD]
(
	[KDGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T151T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T151T_IX] ON [dbo].[T151T]
(
	[SPRAS] ASC,
	[KDGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T151T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T151T_IX] ON [dbo].[T151T_OLD]
(
	[SPRAS] ASC,
	[KDGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179_IX] ON [dbo].[T179]
(
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179_IX] ON [dbo].[T179_OLD]
(
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179T_IX] ON [dbo].[T179T]
(
	[SPRAS] ASC,
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179T_IX] ON [dbo].[T179T_OLD]
(
	[SPRAS] ASC,
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T189_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T189_IX] ON [dbo].[T189]
(
	[PLTYP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T189_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T189_IX] ON [dbo].[T189_OLD]
(
	[PLTYP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T189T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T189T_IX] ON [dbo].[T189T]
(
	[SPRAS] ASC,
	[PLTYP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T189T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T189T_IX] ON [dbo].[T189T_OLD]
(
	[SPRAS] ASC,
	[PLTYP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T682I_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T682I_IX] ON [dbo].[T682I]
(
	[KVEWE] ASC,
	[KAPPL] ASC,
	[KOZGF] ASC,
	[KOLNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T682I_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T682I_IX] ON [dbo].[T682I_OLD]
(
	[KVEWE] ASC,
	[KAPPL] ASC,
	[KOZGF] ASC,
	[KOLNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T685_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T685_IX] ON [dbo].[T685]
(
	[KVEWE] ASC,
	[KAPPL] ASC,
	[KSCHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T685_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T685_IX] ON [dbo].[T685_OLD]
(
	[KVEWE] ASC,
	[KAPPL] ASC,
	[KSCHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TB039A_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TB039A_IX] ON [dbo].[TB039A]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TB039A_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TB039A_IX] ON [dbo].[TB039A_OLD]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURC_IX] ON [dbo].[TCURC]
(
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURC_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURC_IX] ON [dbo].[TCURC_OLD]
(
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURR_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURR_IX] ON [dbo].[TCURR]
(
	[KURST] ASC,
	[FCURR] ASC,
	[TCURR] ASC,
	[GDATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURR_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURR_IX] ON [dbo].[TCURR_OLD]
(
	[KURST] ASC,
	[FCURR] ASC,
	[TCURR] ASC,
	[GDATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURT_IX] ON [dbo].[TCURT]
(
	[SPRAS] ASC,
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURT_IX] ON [dbo].[TCURT_OLD]
(
	[SPRAS] ASC,
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURX_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURX_IX] ON [dbo].[TCURX]
(
	[CURRKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURX_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURX_IX] ON [dbo].[TCURX_OLD]
(
	[CURRKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TFAVW_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TFAVW_IX] ON [dbo].[TFAVW]
(
	[OBJCT] ASC,
	[IDENT] ASC,
	[VALUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TFAVW_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TFAVW_IX] ON [dbo].[TFAVW_OLD]
(
	[OBJCT] ASC,
	[IDENT] ASC,
	[VALUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA01_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA01_IX] ON [dbo].[TKA01]
(
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA01_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA01_IX] ON [dbo].[TKA01_OLD]
(
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA02_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA02_IX] ON [dbo].[TKA02]
(
	[BUKRS] ASC,
	[GSBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA02_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA02_IX] ON [dbo].[TKA02_OLD]
(
	[BUKRS] ASC,
	[GSBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKT05_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKT05_IX] ON [dbo].[TKT05]
(
	[SPRAS] ASC,
	[KOSAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKT05_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKT05_IX] ON [dbo].[TKT05_OLD]
(
	[SPRAS] ASC,
	[KOSAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TSPAT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TSPAT_IX] ON [dbo].[TSPAT]
(
	[SPRAS] ASC,
	[SPART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TSPAT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TSPAT_IX] ON [dbo].[TSPAT_OLD]
(
	[SPRAS] ASC,
	[SPART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVGRT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVGRT_IX] ON [dbo].[TVGRT]
(
	[SPRAS] ASC,
	[VKGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVGRT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVGRT_IX] ON [dbo].[TVGRT_OLD]
(
	[SPRAS] ASC,
	[VKGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVKBT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVKBT_IX] ON [dbo].[TVKBT]
(
	[SPRAS] ASC,
	[VKBUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVKBT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVKBT_IX] ON [dbo].[TVKBT_OLD]
(
	[SPRAS] ASC,
	[VKBUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVKOT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVKOT_IX] ON [dbo].[TVKOT]
(
	[SPRAS] ASC,
	[VKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVKOT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVKOT_IX] ON [dbo].[TVKOT_OLD]
(
	[SPRAS] ASC,
	[VKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVM1T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVM1T_IX] ON [dbo].[TVM1T]
(
	[SPRAS] ASC,
	[MVGR1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVM1T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVM1T_IX] ON [dbo].[TVM1T_OLD]
(
	[SPRAS] ASC,
	[MVGR1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVM4T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVM4T_IX] ON [dbo].[TVM4T]
(
	[SPRAS] ASC,
	[MVGR4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVM4T_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVM4T_IX] ON [dbo].[TVM4T_OLD]
(
	[SPRAS] ASC,
	[MVGR4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVTWT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVTWT_IX] ON [dbo].[TVTWT]
(
	[SPRAS] ASC,
	[VTWEG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TVTWT_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TVTWT_IX] ON [dbo].[TVTWT_OLD]
(
	[SPRAS] ASC,
	[VTWEG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [USR02_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [USR02_IX] ON [dbo].[USR02]
(
	[BNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [USR02_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [USR02_IX] ON [dbo].[USR02_OLD]
(
	[BNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ZANAPLAN_COPA_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [ZANAPLAN_COPA_IX] ON [dbo].[ZANAPLAN_COPA]
(
	[BUKRS] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[VKGRP] ASC,
	[KUNN2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ZANAPLAN_COPA_IX]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [ZANAPLAN_COPA_IX] ON [dbo].[ZANAPLAN_COPA_OLD]
(
	[BUKRS] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[VKGRP] ASC,
	[KUNN2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_AUFK]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_AUFK] ON [STG].[STG_AUFK]
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_COBK]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_COBK] ON [STG].[STG_COBK]
(
	[BELNR] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_EKKO]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_EKKO] ON [STG].[STG_EKKO]
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_STG_EKPO]    Script Date: 11/20/2018 6:19:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_EKPO] ON [STG].[STG_EKPO]
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Cobk]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_Load_Cobk]

AS 
BEGIN


	MERGE KEU_ECC.dbo.COBK AS cob
	USING (
		SELECT *
		FROM STG.STG_COBK
		) AS sd
		ON cob.KOKRS = sd.KOKRS
			AND cob.BELNR = sd.BELNR
	WHEN MATCHED
		THEN
			UPDATE
			SET cob.MANDT = sd.MANDT
				,cob.KOKRS = sd.KOKRS
				,cob.BELNR = sd.BELNR
				,cob.GJAHR = sd.GJAHR
				,cob.VERSN = sd.VERSN
				,cob.VRGNG = sd.VRGNG
				,cob.TIMESTMP = sd.TIMESTMP
				,cob.PERAB = sd.PERAB
				,cob.PERBI = sd.PERBI
				,cob.BLDAT = sd.BLDAT
				,cob.BUDAT = sd.BUDAT
				,cob.CPUDT = sd.CPUDT
				,cob.USNAM = sd.USNAM
				,cob.BLTXT = sd.BLTXT
				,cob.STFLG = sd.STFLG
				,cob.STOKZ = sd.STOKZ
				,cob.REFBT = sd.REFBT
				,cob.REFBN = sd.REFBN
				,cob.REFBK = sd.REFBK
				,cob.REFGJ = sd.REFGJ
				,cob.BLART = sd.BLART
				,cob.ORGVG = sd.ORGVG
				,cob.SUMBZ = sd.SUMBZ
				,cob.DELBZ = sd.DELBZ
				,cob.WSDAT = sd.WSDAT
				,cob.KURST = sd.KURST
				,cob.VARNR = sd.VARNR
				,cob.KWAER = sd.KWAER
				,cob.CTYP1 = sd.CTYP1
				,cob.CTYP2 = sd.CTYP2
				,cob.CTYP3 = sd.CTYP3
				,cob.CTYP4 = sd.CTYP4
				,cob.AWTYP = sd.AWTYP
				,cob.AWORG = sd.AWORG
				,cob.LOGSYSTEM = sd.LOGSYSTEM
				,cob.CPUTM = sd.CPUTM
				,cob.ALEBZ = sd.ALEBZ
				,cob.ALEBN = sd.ALEBN
				,cob.AWSYS = sd.AWSYS
				,cob.AWREF_REV = sd.AWREF_REV
				,cob.AWORG_REV = sd.AWORG_REV
				,cob.DW_Mod_Ts=getdate()
				,cob.DW_Mod_Usr=user_name()
				
	WHEN NOT MATCHED
		THEN
			INSERT (
				[MANDT]
				,[KOKRS]
				,[BELNR]
				,[GJAHR]
				,[VERSN]
				,[VRGNG]
				,[TIMESTMP]
				,[PERAB]
				,[PERBI]
				,[BLDAT]
				,[BUDAT]
				,[CPUDT]
				,[USNAM]
				,[BLTXT]
				,[STFLG]
				,[STOKZ]
				,[REFBT]
				,[REFBN]
				,[REFBK]
				,[REFGJ]
				,[BLART]
				,[ORGVG]
				,[SUMBZ]
				,[DELBZ]
				,[WSDAT]
				,[KURST]
				,[VARNR]
				,[KWAER]
				,[CTYP1]
				,[CTYP2]
				,[CTYP3]
				,[CTYP4]
				,[AWTYP]
				,[AWORG]
				,[LOGSYSTEM]
				,[CPUTM]
				,[ALEBZ]
				,[ALEBN]
				,[AWSYS]
				,[AWREF_REV]
				,[AWORG_REV]
				,DW_Cre_Ts
				,DW_Cre_Usr
				)
			VALUES (
				sd.[MANDT]
				,sd.[KOKRS]
				,sd.[BELNR]
				,sd.[GJAHR]
				,sd.[VERSN]
				,sd.[VRGNG]
				,sd.[TIMESTMP]
				,sd.[PERAB]
				,sd.[PERBI]
				,sd.[BLDAT]
				,sd.[BUDAT]
				,sd.[CPUDT]
				,sd.[USNAM]
				,sd.[BLTXT]
				,sd.[STFLG]
				,sd.[STOKZ]
				,sd.[REFBT]
				,sd.[REFBN]
				,sd.[REFBK]
				,sd.[REFGJ]
				,sd.[BLART]
				,sd.[ORGVG]
				,sd.[SUMBZ]
				,sd.[DELBZ]
				,sd.[WSDAT]
				,sd.[KURST]
				,sd.[VARNR]
				,sd.[KWAER]
				,sd.[CTYP1]
				,sd.[CTYP2]
				,sd.[CTYP3]
				,sd.[CTYP4]
				,sd.[AWTYP]
				,sd.[AWORG]
				,sd.[LOGSYSTEM]
				,sd.[CPUTM]
				,sd.[ALEBZ]
				,sd.[ALEBN]
				,sd.[AWSYS]
				,sd.[AWREF_REV]
				,sd.[AWORG_REV]
				,getdate()
				,user_name()
				);


END






GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Coep]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_Load_Coep] 
	
AS
-- Merge Statement
MERGE Keu_ecc.dbo.COEP AS coe
USING (
	SELECT *
	FROM STG.STG_COEP
	) AS sd
	ON coe.KOKRS = sd.KOKRS
		AND coe.BELNR = sd.BELNR
		AND coe.BUZEI = sd.BUZEI
		--WHEN MATCHED AND coe.ACCT_NBR &gt; 250 THEN DELETE
WHEN MATCHED
	THEN
		UPDATE
		SET coe.MANDT = sd.MANDT
			,coe.PERIO = sd.PERIO
			,coe.WTGBTR = sd.WTGBTR
			,coe.WOGBTR = sd.WOGBTR
			,coe.WKGBTR = sd.WKGBTR
			,coe.WKFBTR = sd.WKFBTR
			,coe.PAGBTR = sd.PAGBTR
			,coe.PAFBTR = sd.PAFBTR
			,coe.MEGBTR = sd.MEGBTR
			,coe.MEFBTR = sd.MEFBTR
			,coe.MBGBTR = sd.MBGBTR
			,coe.MBFBTR = sd.MBFBTR
			,coe.LEDNR = sd.LEDNR
			,coe.OBJNR = sd.OBJNR
			,coe.GJAHR = sd.GJAHR
			,coe.WRTTP = sd.WRTTP
			,coe.VERSN = sd.VERSN
			,coe.KSTAR = sd.KSTAR
			,coe.HRKFT = sd.HRKFT
			,coe.VRGNG = sd.VRGNG
			,coe.PAROB = sd.PAROB
			,coe.PAROB1 = sd.PAROB1
			,coe.USPOB = sd.USPOB
			,coe.VBUND = sd.VBUND
			,coe.PARGB = sd.PARGB
			,coe.BEKNZ = sd.BEKNZ
			,coe.TWAER = sd.TWAER
			,coe.OWAER = sd.OWAER
			,coe.MEINH = sd.MEINH
			,coe.MEINB = sd.MEINB
			,coe.MVFLG = sd.MVFLG
			,coe.SGTXT = sd.SGTXT
			,coe.REFBZ = sd.REFBZ
			,coe.ZLENR = sd.ZLENR
			,coe.BW_REFBZ = sd.BW_REFBZ
			,coe.GKONT = sd.GKONT
			,coe.GKOAR = sd.GKOAR
			,coe.WERKS = sd.WERKS
			,coe.MATNR = sd.MATNR
			,coe.RBEST = sd.RBEST
			,coe.EBELN = sd.EBELN
			,coe.EBELP = sd.EBELP
			,coe.ZEKKN = sd.ZEKKN
			,coe.ERLKZ = sd.ERLKZ
			,coe.PERNR = sd.PERNR
			,coe.BTRKL = sd.BTRKL
			,coe.OBJNR_N1 = sd.OBJNR_N1
			,coe.OBJNR_N2 = sd.OBJNR_N2
			,coe.OBJNR_N3 = sd.OBJNR_N3
			,coe.PAOBJNR = sd.PAOBJNR
			,coe.BELTP = sd.BELTP
			,coe.BUKRS = sd.BUKRS
			,coe.GSBER = sd.GSBER
			,coe.FKBER = sd.FKBER
			,coe.SCOPE = sd.SCOPE
			,coe.LOGSYSO = sd.LOGSYSO
			,coe.PKSTAR = sd.PKSTAR
			,coe.PBUKRS = sd.PBUKRS
			,coe.PFKBER = sd.PFKBER
			,coe.PSCOPE = sd.PSCOPE
			,coe.LOGSYSP = sd.LOGSYSP
			,coe.DABRZ = sd.DABRZ
			,coe.BWSTRAT = sd.BWSTRAT
			,coe.OBJNR_HK = sd.OBJNR_HK
			,coe.TIMESTMP = sd.TIMESTMP
			,coe.QMNUM = sd.QMNUM
			,coe.GEBER = sd.GEBER
			,coe.PGEBER = sd.PGEBER
			,coe.GRANT_NBR = sd.GRANT_NBR
			,coe.PGRANT_NBR = sd.PGRANT_NBR
			,coe.REFBZ_FI = sd.REFBZ_FI
			,coe.SEGMENT = sd.SEGMENT
			,coe.PSEGMENT = sd.PSEGMENT
			,coe.[DW_Mod_Ts]=GETDATE()
			,coe.[DW_Mod_Usr]=user_name()
WHEN NOT MATCHED
	THEN
		INSERT (
			MANDT
			,KOKRS
			,BELNR
			,BUZEI
			,PERIO
			,WTGBTR
			,WOGBTR
			,WKGBTR
			,WKFBTR
			,PAGBTR
			,PAFBTR
			,MEGBTR
			,MEFBTR
			,MBGBTR
			,MBFBTR
			,LEDNR
			,OBJNR
			,GJAHR
			,WRTTP
			,VERSN
			,KSTAR
			,HRKFT
			,VRGNG
			,PAROB
			,PAROB1
			,USPOB
			,VBUND
			,PARGB
			,BEKNZ
			,TWAER
			,OWAER
			,MEINH
			,MEINB
			,MVFLG
			,SGTXT
			,REFBZ
			,ZLENR
			,BW_REFBZ
			,GKONT
			,GKOAR
			,WERKS
			,MATNR
			,RBEST
			,EBELN
			,EBELP
			,ZEKKN
			,ERLKZ
			,PERNR
			,BTRKL
			,OBJNR_N1
			,OBJNR_N2
			,OBJNR_N3
			,PAOBJNR
			,BELTP
			,BUKRS
			,GSBER
			,FKBER
			,SCOPE
			,LOGSYSO
			,PKSTAR
			,PBUKRS
			,PFKBER
			,PSCOPE
			,LOGSYSP
			,DABRZ
			,BWSTRAT
			,OBJNR_HK
			,TIMESTMP
			,QMNUM
			,GEBER
			,PGEBER
			,GRANT_NBR
			,PGRANT_NBR
			,REFBZ_FI
			,SEGMENT
			,PSEGMENT
			,[DW_Cre_Ts]
			,[DW_Cre_Usr]
			)
		VALUES (
			sd.MANDT
			,sd.KOKRS
			,sd.BELNR
			,sd.BUZEI
			,sd.PERIO
			,sd.WTGBTR
			,sd.WOGBTR
			,sd.WKGBTR
			,sd.WKFBTR
			,sd.PAGBTR
			,sd.PAFBTR
			,sd.MEGBTR
			,sd.MEFBTR
			,sd.MBGBTR
			,sd.MBFBTR
			,sd.LEDNR
			,sd.OBJNR
			,sd.GJAHR
			,sd.WRTTP
			,sd.VERSN
			,sd.KSTAR
			,sd.HRKFT
			,sd.VRGNG
			,sd.PAROB
			,sd.PAROB1
			,sd.USPOB
			,sd.VBUND
			,sd.PARGB
			,sd.BEKNZ
			,sd.TWAER
			,sd.OWAER
			,sd.MEINH
			,sd.MEINB
			,sd.MVFLG
			,sd.SGTXT
			,sd.REFBZ
			,sd.ZLENR
			,sd.BW_REFBZ
			,sd.GKONT
			,sd.GKOAR
			,sd.WERKS
			,sd.MATNR
			,sd.RBEST
			,sd.EBELN
			,sd.EBELP
			,sd.ZEKKN
			,sd.ERLKZ
			,sd.PERNR
			,sd.BTRKL
			,sd.OBJNR_N1
			,sd.OBJNR_N2
			,sd.OBJNR_N3
			,sd.PAOBJNR
			,sd.BELTP
			,sd.BUKRS
			,sd.GSBER
			,sd.FKBER
			,sd.SCOPE
			,sd.LOGSYSO
			,sd.PKSTAR
			,sd.PBUKRS
			,sd.PFKBER
			,sd.PSCOPE
			,sd.LOGSYSP
			,sd.DABRZ
			,sd.BWSTRAT
			,sd.OBJNR_HK
			,sd.TIMESTMP
			,sd.QMNUM
			,sd.GEBER
			,sd.PGEBER
			,sd.GRANT_NBR
			,sd.PGRANT_NBR
			,sd.REFBZ_FI
			,sd.SEGMENT
			,sd.PSEGMENT
			,getdate()
			,user_name()
			);




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_EKKO]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_EKKO]
AS
BEGIN
	MERGE KEU_ECC.dbo.EKKO AS eko
	USING (
		SELECT *
		FROM STG.STG_EKKO
		) AS sd
		ON eko.EBELN = sd.EBELN
	WHEN MATCHED
		THEN
			UPDATE
			SET eko.EBELN = sd.EBELN
				,eko.BUKRS = sd.BUKRS
				,eko.BSTYP = sd.BSTYP
				,eko.BSART = sd.BSART
				,eko.BSAKZ = sd.BSAKZ
				,eko.LOEKZ = sd.LOEKZ
				,eko.STATU = sd.STATU
				,eko.AEDAT = sd.AEDAT
				,eko.ERNAM = sd.ERNAM
				,eko.PINCR = sd.PINCR
				,eko.LPONR = sd.LPONR
				,eko.LIFNR = sd.LIFNR
				,eko.SPRAS = sd.SPRAS
				,eko.ZTERM = sd.ZTERM
				,eko.ZBD1T = sd.ZBD1T
				,eko.ZBD2T = sd.ZBD2T
				,eko.ZBD3T = sd.ZBD3T
				,eko.ZBD1P = sd.ZBD1P
				,eko.ZBD2P = sd.ZBD2P
				,eko.EKORG = sd.EKORG
				,eko.EKGRP = sd.EKGRP
				,eko.WAERS = sd.WAERS
				,eko.WKURS = sd.WKURS
				,eko.KUFIX = sd.KUFIX
				,eko.BEDAT = sd.BEDAT
				,eko.KDATB = sd.KDATB
				,eko.KDATE = sd.KDATE
				,eko.BWBDT = sd.BWBDT
				,eko.ANGDT = sd.ANGDT
				,eko.BNDDT = sd.BNDDT
				,eko.GWLDT = sd.GWLDT
				,eko.AUSNR = sd.AUSNR
				,eko.ANGNR = sd.ANGNR
				,eko.IHRAN = sd.IHRAN
				,eko.IHREZ = sd.IHREZ
				,eko.VERKF = sd.VERKF
				,eko.TELF1 = sd.TELF1
				,eko.LLIEF = sd.LLIEF
				,eko.KUNNR = sd.KUNNR
				,eko.KONNR = sd.KONNR
				,eko.ABGRU = sd.ABGRU
				,eko.AUTLF = sd.AUTLF
				,eko.WEAKT = sd.WEAKT
				,eko.RESWK = sd.RESWK
				,eko.LBLIF = sd.LBLIF
				,eko.INCO1 = sd.INCO1
				,eko.INCO2 = sd.INCO2
				,eko.KTWRT = sd.KTWRT
				,eko.SUBMI = sd.SUBMI
				,eko.KNUMV = sd.KNUMV
				,eko.KALSM = sd.KALSM
				,eko.STAFO = sd.STAFO
				,eko.LIFRE = sd.LIFRE
				,eko.EXNUM = sd.EXNUM
				,eko.UNSEZ = sd.UNSEZ
				,eko.LOGSY = sd.LOGSY
				,eko.UPINC = sd.UPINC
				,eko.STAKO = sd.STAKO
				,eko.FRGGR = sd.FRGGR
				,eko.FRGSX = sd.FRGSX
				,eko.FRGKE = sd.FRGKE
				,eko.FRGZU = sd.FRGZU
				,eko.FRGRL = sd.FRGRL
				,eko.LANDS = sd.LANDS
				,eko.LPHIS = sd.LPHIS
				,eko.ADRNR = sd.ADRNR
				,eko.STCEG_L = sd.STCEG_L
				,eko.STCEG = sd.STCEG
				,eko.ABSGR = sd.ABSGR
				,eko.ADDNR = sd.ADDNR
				,eko.KORNR = sd.KORNR
				,eko.MEMORY = sd.MEMORY
				,eko.PROCSTAT = sd.PROCSTAT
				,eko.RLWRT = sd.RLWRT
				,eko.REVNO = sd.REVNO
				,eko.SCMPROC = sd.SCMPROC
				,eko.REASON_CODE = sd.REASON_CODE
				,eko.FORCE_ID = sd.FORCE_ID
				,eko.FORCE_CNT = sd.FORCE_CNT
				,eko.RELOC_ID = sd.RELOC_ID
				,eko.RELOC_SEQ_ID = sd.RELOC_SEQ_ID
				,eko.POHF_TYPE = sd.POHF_TYPE
				,eko.EQ_EINDT = sd.EQ_EINDT
				,eko.EQ_WERKS = sd.EQ_WERKS
				,eko.FIXPO = sd.FIXPO
				,eko.EKGRP_ALLOW = sd.EKGRP_ALLOW
				,eko.WERKS_ALLOW = sd.WERKS_ALLOW
				,eko.CONTRACT_ALLOW = sd.CONTRACT_ALLOW
				,eko.PSTYP_ALLOW = sd.PSTYP_ALLOW
				,eko.FIXPO_ALLOW = sd.FIXPO_ALLOW
				,eko.KEY_ID_ALLOW = sd.KEY_ID_ALLOW
				,eko.AUREL_ALLOW = sd.AUREL_ALLOW
				,eko.DELPER_ALLOW = sd.DELPER_ALLOW
				,eko.EINDT_ALLOW = sd.EINDT_ALLOW
				,eko.OTB_LEVEL = sd.OTB_LEVEL
				,eko.OTB_COND_TYPE = sd.OTB_COND_TYPE
				,eko.KEY_ID = sd.KEY_ID
				,eko.OTB_VALUE = sd.OTB_VALUE
				,eko.OTB_CURR = sd.OTB_CURR
				,eko.OTB_RES_VALUE = sd.OTB_RES_VALUE
				,eko.OTB_SPEC_VALUE = sd.OTB_SPEC_VALUE
				,eko.SPR_RSN_PROFILE = sd.SPR_RSN_PROFILE
				,eko.BUDG_TYPE = sd.BUDG_TYPE
				,eko.OTB_STATUS = sd.OTB_STATUS
				,eko.OTB_REASON = sd.OTB_REASON
				,eko.CHECK_TYPE = sd.CHECK_TYPE
				,eko.CON_OTB_REQ = sd.CON_OTB_REQ
				,eko.CON_PREBOOK_LEV = sd.CON_PREBOOK_LEV
				,eko.CON_DISTR_LEV = sd.CON_DISTR_LEV
				,eko.DW_Mod_Ts = getdate()
				,eko.DW_Mod_Usr = USER_NAME()
	WHEN NOT MATCHED
		THEN
			INSERT (
				EBELN
				,BUKRS
				,BSTYP
				,BSART
				,BSAKZ
				,LOEKZ
				,STATU
				,AEDAT
				,ERNAM
				,PINCR
				,LPONR
				,LIFNR
				,SPRAS
				,ZTERM
				,ZBD1T
				,ZBD2T
				,ZBD3T
				,ZBD1P
				,ZBD2P
				,EKORG
				,EKGRP
				,WAERS
				,WKURS
				,KUFIX
				,BEDAT
				,KDATB
				,KDATE
				,BWBDT
				,ANGDT
				,BNDDT
				,GWLDT
				,AUSNR
				,ANGNR
				,IHRAN
				,IHREZ
				,VERKF
				,TELF1
				,LLIEF
				,KUNNR
				,KONNR
				,ABGRU
				,AUTLF
				,WEAKT
				,RESWK
				,LBLIF
				,INCO1
				,INCO2
				,KTWRT
				,SUBMI
				,KNUMV
				,KALSM
				,STAFO
				,LIFRE
				,EXNUM
				,UNSEZ
				,LOGSY
				,UPINC
				,STAKO
				,FRGGR
				,FRGSX
				,FRGKE
				,FRGZU
				,FRGRL
				,LANDS
				,LPHIS
				,ADRNR
				,STCEG_L
				,STCEG
				,ABSGR
				,ADDNR
				,KORNR
				,MEMORY
				,PROCSTAT
				,RLWRT
				,REVNO
				,SCMPROC
				,REASON_CODE
				,FORCE_ID
				,FORCE_CNT
				,RELOC_ID
				,RELOC_SEQ_ID
				,POHF_TYPE
				,EQ_EINDT
				,EQ_WERKS
				,FIXPO
				,EKGRP_ALLOW
				,WERKS_ALLOW
				,CONTRACT_ALLOW
				,PSTYP_ALLOW
				,FIXPO_ALLOW
				,KEY_ID_ALLOW
				,AUREL_ALLOW
				,DELPER_ALLOW
				,EINDT_ALLOW
				,OTB_LEVEL
				,OTB_COND_TYPE
				,KEY_ID
				,OTB_VALUE
				,OTB_CURR
				,OTB_RES_VALUE
				,OTB_SPEC_VALUE
				,SPR_RSN_PROFILE
				,BUDG_TYPE
				,OTB_STATUS
				,OTB_REASON
				,CHECK_TYPE
				,CON_OTB_REQ
				,CON_PREBOOK_LEV
				,CON_DISTR_LEV
				,[DW_Cre_Ts]
				,[DW_Cre_Usr]
				)
			VALUES (
				sd.EBELN
				,sd.BUKRS
				,sd.BSTYP
				,sd.BSART
				,sd.BSAKZ
				,sd.LOEKZ
				,sd.STATU
				,sd.AEDAT
				,sd.ERNAM
				,sd.PINCR
				,sd.LPONR
				,sd.LIFNR
				,sd.SPRAS
				,sd.ZTERM
				,sd.ZBD1T
				,sd.ZBD2T
				,sd.ZBD3T
				,sd.ZBD1P
				,sd.ZBD2P
				,sd.EKORG
				,sd.EKGRP
				,sd.WAERS
				,sd.WKURS
				,sd.KUFIX
				,sd.BEDAT
				,sd.KDATB
				,sd.KDATE
				,sd.BWBDT
				,sd.ANGDT
				,sd.BNDDT
				,sd.GWLDT
				,sd.AUSNR
				,sd.ANGNR
				,sd.IHRAN
				,sd.IHREZ
				,sd.VERKF
				,sd.TELF1
				,sd.LLIEF
				,sd.KUNNR
				,sd.KONNR
				,sd.ABGRU
				,sd.AUTLF
				,sd.WEAKT
				,sd.RESWK
				,sd.LBLIF
				,sd.INCO1
				,sd.INCO2
				,sd.KTWRT
				,sd.SUBMI
				,sd.KNUMV
				,sd.KALSM
				,sd.STAFO
				,sd.LIFRE
				,sd.EXNUM
				,sd.UNSEZ
				,sd.LOGSY
				,sd.UPINC
				,sd.STAKO
				,sd.FRGGR
				,sd.FRGSX
				,sd.FRGKE
				,sd.FRGZU
				,sd.FRGRL
				,sd.LANDS
				,sd.LPHIS
				,sd.ADRNR
				,sd.STCEG_L
				,sd.STCEG
				,sd.ABSGR
				,sd.ADDNR
				,sd.KORNR
				,sd.MEMORY
				,sd.PROCSTAT
				,sd.RLWRT
				,sd.REVNO
				,sd.SCMPROC
				,sd.REASON_CODE
				,sd.FORCE_ID
				,sd.FORCE_CNT
				,sd.RELOC_ID
				,sd.RELOC_SEQ_ID
				,sd.POHF_TYPE
				,sd.EQ_EINDT
				,sd.EQ_WERKS
				,sd.FIXPO
				,sd.EKGRP_ALLOW
				,sd.WERKS_ALLOW
				,sd.CONTRACT_ALLOW
				,sd.PSTYP_ALLOW
				,sd.FIXPO_ALLOW
				,sd.KEY_ID_ALLOW
				,sd.AUREL_ALLOW
				,sd.DELPER_ALLOW
				,sd.EINDT_ALLOW
				,sd.OTB_LEVEL
				,sd.OTB_COND_TYPE
				,sd.KEY_ID
				,sd.OTB_VALUE
				,sd.OTB_CURR
				,sd.OTB_RES_VALUE
				,sd.OTB_SPEC_VALUE
				,sd.SPR_RSN_PROFILE
				,sd.BUDG_TYPE
				,sd.OTB_STATUS
				,sd.OTB_REASON
				,sd.CHECK_TYPE
				,sd.CON_OTB_REQ
				,sd.CON_PREBOOK_LEV
				,sd.CON_DISTR_LEV
				,getdate()
				,USER_NAME()
				);
END


GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Ekpo]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Ekpo]
AS
BEGIN
	BEGIN TRY
		BEGIN
		MERGE KEU_ECC.dbo.EKPO AS coe
USING (
	SELECT *
	FROM STG.STG_EKPO
	) AS sd
	ON coe.EBELN = sd.EBELN
		AND coe.EBELP = sd.EBELP
		
		--WHEN MATCHED AND coe.ACCT_NBR &gt; 250 THEN DELETE
WHEN MATCHED
	THEN
		UPDATE
		SET coe.MANDT=sd.MANDT,
coe.EBELN=sd.EBELN,
coe.EBELP=sd.EBELP,
coe.LOEKZ=sd.LOEKZ,
coe.STATU=sd.STATU,
coe.AEDAT=sd.AEDAT,
coe.TXZ01=sd.TXZ01,
coe.MATNR=sd.MATNR,
coe.EMATN=sd.EMATN,
coe.BUKRS=sd.BUKRS,
coe.WERKS=sd.WERKS,
coe.LGORT=sd.LGORT,
coe.BEDNR=sd.BEDNR,
coe.MATKL=sd.MATKL,
coe.INFNR=sd.INFNR,
coe.IDNLF=sd.IDNLF,
coe.KTMNG=sd.KTMNG,
coe.MENGE=sd.MENGE,
coe.MEINS=sd.MEINS,
coe.BPRME=sd.BPRME,
coe.BPUMZ=sd.BPUMZ,
coe.BPUMN=sd.BPUMN,
coe.UMREZ=sd.UMREZ,
coe.UMREN=sd.UMREN,
coe.NETPR=sd.NETPR,
coe.PEINH=sd.PEINH,
coe.NETWR=sd.NETWR,
coe.BRTWR=sd.BRTWR,
coe.AGDAT=sd.AGDAT,
coe.WEBAZ=sd.WEBAZ,
coe.MWSKZ=sd.MWSKZ,
coe.BONUS=sd.BONUS,
coe.INSMK=sd.INSMK,
coe.SPINF=sd.SPINF,
coe.PRSDR=sd.PRSDR,
coe.SCHPR=sd.SCHPR,
coe.MAHNZ=sd.MAHNZ,
coe.MAHN1=sd.MAHN1,
coe.MAHN2=sd.MAHN2,
coe.MAHN3=sd.MAHN3,
coe.UEBTO=sd.UEBTO,
coe.UEBTK=sd.UEBTK,
coe.UNTTO=sd.UNTTO,
coe.BWTAR=sd.BWTAR,
coe.BWTTY=sd.BWTTY,
coe.ABSKZ=sd.ABSKZ,
coe.AGMEM=sd.AGMEM,
coe.ELIKZ=sd.ELIKZ,
coe.EREKZ=sd.EREKZ,
coe.PSTYP=sd.PSTYP,
coe.KNTTP=sd.KNTTP,
coe.KZVBR=sd.KZVBR,
coe.VRTKZ=sd.VRTKZ,
coe.TWRKZ=sd.TWRKZ,
coe.WEPOS=sd.WEPOS,
coe.WEUNB=sd.WEUNB,
coe.REPOS=sd.REPOS,
coe.WEBRE=sd.WEBRE,
coe.KZABS=sd.KZABS,
coe.LABNR=sd.LABNR,
coe.KONNR=sd.KONNR,
coe.KTPNR=sd.KTPNR,
coe.ABDAT=sd.ABDAT,
coe.ABFTZ=sd.ABFTZ,
coe.ETFZ1=sd.ETFZ1,
coe.ETFZ2=sd.ETFZ2,
coe.KZSTU=sd.KZSTU,
coe.NOTKZ=sd.NOTKZ,
coe.LMEIN=sd.LMEIN,
coe.EVERS=sd.EVERS,
coe.ZWERT=sd.ZWERT,
coe.NAVNW=sd.NAVNW,
coe.ABMNG=sd.ABMNG,
coe.PRDAT=sd.PRDAT,
coe.BSTYP=sd.BSTYP,
coe.EFFWR=sd.EFFWR,
coe.XOBLR=sd.XOBLR,
coe.KUNNR=sd.KUNNR,
coe.ADRNR=sd.ADRNR,
coe.EKKOL=sd.EKKOL,
coe.SKTOF=sd.SKTOF,
coe.STAFO=sd.STAFO,
coe.PLIFZ=sd.PLIFZ,
coe.NTGEW=sd.NTGEW,
coe.GEWEI=sd.GEWEI,
coe.TXJCD=sd.TXJCD,
coe.ETDRK=sd.ETDRK,
coe.SOBKZ=sd.SOBKZ,
coe.ARSNR=sd.ARSNR,
coe.ARSPS=sd.ARSPS,
coe.INSNC=sd.INSNC,
coe.SSQSS=sd.SSQSS,
coe.ZGTYP=sd.ZGTYP,
coe.EAN11=sd.EAN11,
coe.BSTAE=sd.BSTAE,
coe.REVLV=sd.REVLV,
coe.GEBER=sd.GEBER,
coe.FISTL=sd.FISTL,
coe.FIPOS=sd.FIPOS,
coe.KO_GSBER=sd.KO_GSBER,
coe.KO_PARGB=sd.KO_PARGB,
coe.KO_PRCTR=sd.KO_PRCTR,
coe.KO_PPRCTR=sd.KO_PPRCTR,
coe.MEPRF=sd.MEPRF,
coe.BRGEW=sd.BRGEW,
coe.VOLUM=sd.VOLUM,
coe.VOLEH=sd.VOLEH,
coe.INCO1=sd.INCO1,
coe.INCO2=sd.INCO2,
coe.VORAB=sd.VORAB,
coe.KOLIF=sd.KOLIF,
coe.LTSNR=sd.LTSNR,
coe.PACKNO=sd.PACKNO,
coe.FPLNR=sd.FPLNR,
coe.GNETWR=sd.GNETWR,
coe.STAPO=sd.STAPO,
coe.UEBPO=sd.UEBPO,
coe.LEWED=sd.LEWED,
coe.EMLIF=sd.EMLIF,
coe.LBLKZ=sd.LBLKZ,
coe.SATNR=sd.SATNR,
coe.ATTYP=sd.ATTYP,
coe.KANBA=sd.KANBA,
coe.ADRN2=sd.ADRN2,
coe.CUOBJ=sd.CUOBJ,
coe.XERSY=sd.XERSY,
coe.EILDT=sd.EILDT,
coe.DRDAT=sd.DRDAT,
coe.DRUHR=sd.DRUHR,
coe.DRUNR=sd.DRUNR,
coe.AKTNR=sd.AKTNR,
coe.ABELN=sd.ABELN,
coe.ABELP=sd.ABELP,
coe.ANZPU=sd.ANZPU,
coe.PUNEI=sd.PUNEI,
coe.SAISO=sd.SAISO,
coe.SAISJ=sd.SAISJ,
coe.EBON2=sd.EBON2,
coe.EBON3=sd.EBON3,
coe.EBONF=sd.EBONF,
coe.MLMAA=sd.MLMAA,
coe.MHDRZ=sd.MHDRZ,
coe.ANFNR=sd.ANFNR,
coe.ANFPS=sd.ANFPS,
coe.KZKFG=sd.KZKFG,
coe.USEQU=sd.USEQU,
coe.UMSOK=sd.UMSOK,
coe.BANFN=sd.BANFN,
coe.BNFPO=sd.BNFPO,
coe.MTART=sd.MTART,
coe.UPTYP=sd.UPTYP,
coe.UPVOR=sd.UPVOR,
coe.KZWI1=sd.KZWI1,
coe.KZWI2=sd.KZWI2,
coe.KZWI3=sd.KZWI3,
coe.KZWI4=sd.KZWI4,
coe.KZWI5=sd.KZWI5,
coe.KZWI6=sd.KZWI6,
coe.SIKGR=sd.SIKGR,
coe.MFZHI=sd.MFZHI,
coe.FFZHI=sd.FFZHI,
coe.RETPO=sd.RETPO,
coe.AUREL=sd.AUREL,
coe.BSGRU=sd.BSGRU,
coe.LFRET=sd.LFRET,
coe.MFRGR=sd.MFRGR,
coe.NRFHG=sd.NRFHG,
coe.J_1BNBM=sd.J_1BNBM,
coe.J_1BMATUSE=sd.J_1BMATUSE,
coe.J_1BMATORG=sd.J_1BMATORG,
coe.J_1BOWNPRO=sd.J_1BOWNPRO,
coe.J_1BINDUST=sd.J_1BINDUST,
coe.ABUEB=sd.ABUEB,
coe.NLABD=sd.NLABD,
coe.NFABD=sd.NFABD,
coe.KZBWS=sd.KZBWS,
coe.BONBA=sd.BONBA,
coe.FABKZ=sd.FABKZ,
coe.J_1AINDXP=sd.J_1AINDXP,
coe.J_1AIDATEP=sd.J_1AIDATEP,
coe.MPROF=sd.MPROF,
coe.EGLKZ=sd.EGLKZ,
coe.KZTLF=sd.KZTLF,
coe.KZFME=sd.KZFME,
coe.RDPRF=sd.RDPRF,
coe.TECHS=sd.TECHS,
coe.CHG_SRV=sd.CHG_SRV,
coe.CHG_FPLNR=sd.CHG_FPLNR,
coe.MFRPN=sd.MFRPN,
coe.MFRNR=sd.MFRNR,
coe.EMNFR=sd.EMNFR,
coe.NOVET=sd.NOVET,
coe.AFNAM=sd.AFNAM,
coe.TZONRC=sd.TZONRC,
coe.IPRKZ=sd.IPRKZ,
coe.LEBRE=sd.LEBRE,
coe.BERID=sd.BERID,
coe.XCONDITIONS=sd.XCONDITIONS,
coe.APOMS=sd.APOMS,
coe.CCOMP=sd.CCOMP,
coe.GRANT_NBR=sd.GRANT_NBR,
coe.FKBER=sd.FKBER,
coe.STATUS=sd.STATUS,
coe.RESLO=sd.RESLO,
coe.KBLNR=sd.KBLNR,
coe.KBLPOS=sd.KBLPOS,
coe.WEORA=sd.WEORA,
coe.SRV_BAS_COM=sd.SRV_BAS_COM,
coe.PRIO_URG=sd.PRIO_URG,
coe.PRIO_REQ=sd.PRIO_REQ,
coe.EMPST=sd.EMPST,
coe.SPE_ABGRU=sd.SPE_ABGRU,
coe.SPE_CRM_SO=sd.SPE_CRM_SO,
coe.SPE_CRM_SO_ITEM=sd.SPE_CRM_SO_ITEM,
coe.SPE_CRM_REF_SO=sd.SPE_CRM_REF_SO,
coe.SPE_CRM_REF_ITEM=sd.SPE_CRM_REF_ITEM,
coe.SPE_CHNG_SYS=sd.SPE_CHNG_SYS,
coe.SPE_INSMK_SRC=sd.SPE_INSMK_SRC,
coe.SPE_CQ_CTRLTYPE=sd.SPE_CQ_CTRLTYPE,
coe.SPE_CQ_NOCQ=sd.SPE_CQ_NOCQ,
coe.REASON_CODE=sd.REASON_CODE,
coe.CQU_SAR=sd.CQU_SAR,
coe.SPE_EWM_DTC=sd.SPE_EWM_DTC,
coe.EXLIN=sd.EXLIN,
coe.EXSNR=sd.EXSNR,
coe.EHTYP=sd.EHTYP,
coe.[/BEV1/NEGEN_ITEM]=sd.[/BEV1/NEGEN_ITEM],
coe.[/BEV1/NEDEPFREE]=sd.[/BEV1/NEDEPFREE],
coe.[/BEV1/NESTRUCCAT]=sd.[/BEV1/NESTRUCCAT],
coe.ADVCODE=sd.ADVCODE,
coe.EXCPE=sd.EXCPE,
coe.IUID_RELEVANT=sd.IUID_RELEVANT,
coe.ZZOWNER=sd.ZZOWNER,
coe.ZZREASON_CODE=sd.ZZREASON_CODE,
coe.REFSITE=sd.REFSITE,
coe.REF_ITEM=sd.REF_ITEM,
coe.SOURCE_ID=sd.SOURCE_ID,
coe.SOURCE_KEY=sd.SOURCE_KEY,
coe.PUT_BACK=sd.PUT_BACK,
coe.POL_ID=sd.POL_ID,
coe.CONS_ORDER=sd.CONS_ORDER,
coe.DW_Mod_Ts=getdate(),
coe.DW_Mod_Usr=user_name()


WHEN NOT MATCHED
	THEN
		

			-- inserting the data ----
			INSERT  (
				MANDT
				,EBELN
				,EBELP
				,LOEKZ
				,STATU
				,AEDAT
				,TXZ01
				,MATNR
				,EMATN
				,BUKRS
				,WERKS
				,LGORT
				,BEDNR
				,MATKL
				,INFNR
				,IDNLF
				,KTMNG
				,MENGE
				,MEINS
				,BPRME
				,BPUMZ
				,BPUMN
				,UMREZ
				,UMREN
				,NETPR
				,PEINH
				,NETWR
				,BRTWR
				,AGDAT
				,WEBAZ
				,MWSKZ
				,BONUS
				,INSMK
				,SPINF
				,PRSDR
				,SCHPR
				,MAHNZ
				,MAHN1
				,MAHN2
				,MAHN3
				,UEBTO
				,UEBTK
				,UNTTO
				,BWTAR
				,BWTTY
				,ABSKZ
				,AGMEM
				,ELIKZ
				,EREKZ
				,PSTYP
				,KNTTP
				,KZVBR
				,VRTKZ
				,TWRKZ
				,WEPOS
				,WEUNB
				,REPOS
				,WEBRE
				,KZABS
				,LABNR
				,KONNR
				,KTPNR
				,ABDAT
				,ABFTZ
				,ETFZ1
				,ETFZ2
				,KZSTU
				,NOTKZ
				,LMEIN
				,EVERS
				,ZWERT
				,NAVNW
				,ABMNG
				,PRDAT
				,BSTYP
				,EFFWR
				,XOBLR
				,KUNNR
				,ADRNR
				,EKKOL
				,SKTOF
				,STAFO
				,PLIFZ
				,NTGEW
				,GEWEI
				,TXJCD
				,ETDRK
				,SOBKZ
				,ARSNR
				,ARSPS
				,INSNC
				,SSQSS
				,ZGTYP
				,EAN11
				,BSTAE
				,REVLV
				,GEBER
				,FISTL
				,FIPOS
				,KO_GSBER
				,KO_PARGB
				,KO_PRCTR
				,KO_PPRCTR
				,MEPRF
				,BRGEW
				,VOLUM
				,VOLEH
				,INCO1
				,INCO2
				,VORAB
				,KOLIF
				,LTSNR
				,PACKNO
				,FPLNR
				,GNETWR
				,STAPO
				,UEBPO
				,LEWED
				,EMLIF
				,LBLKZ
				,SATNR
				,ATTYP
				,KANBA
				,ADRN2
				,CUOBJ
				,XERSY
				,EILDT
				,DRDAT
				,DRUHR
				,DRUNR
				,AKTNR
				,ABELN
				,ABELP
				,ANZPU
				,PUNEI
				,SAISO
				,SAISJ
				,EBON2
				,EBON3
				,EBONF
				,MLMAA
				,MHDRZ
				,ANFNR
				,ANFPS
				,KZKFG
				,USEQU
				,UMSOK
				,BANFN
				,BNFPO
				,MTART
				,UPTYP
				,UPVOR
				,KZWI1
				,KZWI2
				,KZWI3
				,KZWI4
				,KZWI5
				,KZWI6
				,SIKGR
				,MFZHI
				,FFZHI
				,RETPO
				,AUREL
				,BSGRU
				,LFRET
				,MFRGR
				,NRFHG
				,J_1BNBM
				,J_1BMATUSE
				,J_1BMATORG
				,J_1BOWNPRO
				,J_1BINDUST
				,ABUEB
				,NLABD
				,NFABD
				,KZBWS
				,BONBA
				,FABKZ
				,J_1AINDXP
				,J_1AIDATEP
				,MPROF
				,EGLKZ
				,KZTLF
				,KZFME
				,RDPRF
				,TECHS
				,CHG_SRV
				,CHG_FPLNR
				,MFRPN
				,MFRNR
				,EMNFR
				,NOVET
				,AFNAM
				,TZONRC
				,IPRKZ
				,LEBRE
				,BERID
				,XCONDITIONS
				,APOMS
				,CCOMP
				,GRANT_NBR
				,FKBER
				,STATUS
				,RESLO
				,KBLNR
				,KBLPOS
				,WEORA
				,SRV_BAS_COM
				,PRIO_URG
				,PRIO_REQ
				,EMPST
				,SPE_ABGRU
				,SPE_CRM_SO
				,SPE_CRM_SO_ITEM
				,SPE_CRM_REF_SO
				,SPE_CRM_REF_ITEM
				,SPE_CHNG_SYS
				,SPE_INSMK_SRC
				,SPE_CQ_CTRLTYPE
				,SPE_CQ_NOCQ
				,REASON_CODE
				,CQU_SAR
				,SPE_EWM_DTC
				,EXLIN
				,EXSNR
				,EHTYP
				,[/BEV1/NEGEN_ITEM]
				,[/BEV1/NEDEPFREE]
				,[/BEV1/NESTRUCCAT]
				,ADVCODE
				,EXCPE
				,IUID_RELEVANT
				,ZZOWNER
				,ZZREASON_CODE
				,REFSITE
				,REF_ITEM
				,SOURCE_ID
				,SOURCE_KEY
				,PUT_BACK
				,POL_ID
				,CONS_ORDER
				,DW_Cre_Ts
				,DW_Cre_Usr
				)
			VALUES( sd.MANDT
				,sd.EBELN
				,sd.EBELP
				,sd.LOEKZ
				,sd.STATU
				,sd.AEDAT
				,sd.TXZ01
				,sd.MATNR
				,sd.EMATN
				,sd.BUKRS
				,sd.WERKS
				,sd.LGORT
				,sd.BEDNR
				,sd.MATKL
				,sd.INFNR
				,sd.IDNLF
				,sd.KTMNG
				,sd.MENGE
				,sd.MEINS
				,sd.BPRME
				,sd.BPUMZ
				,sd.BPUMN
				,sd.UMREZ
				,sd.UMREN
				,sd.NETPR
				,sd.PEINH
				,sd.NETWR
				,sd.BRTWR
				,sd.AGDAT
				,sd.WEBAZ
				,sd.MWSKZ
				,sd.BONUS
				,sd.INSMK
				,sd.SPINF
				,sd.PRSDR
				,sd.SCHPR
				,sd.MAHNZ
				,sd.MAHN1
				,sd.MAHN2
				,sd.MAHN3
				,sd.UEBTO
				,sd.UEBTK
				,sd.UNTTO
				,sd.BWTAR
				,sd.BWTTY
				,sd.ABSKZ
				,sd.AGMEM
				,sd.ELIKZ
				,sd.EREKZ
				,sd.PSTYP
				,sd.KNTTP
				,sd.KZVBR
				,sd.VRTKZ
				,sd.TWRKZ
				,sd.WEPOS
				,sd.WEUNB
				,sd.REPOS
				,sd.WEBRE
				,sd.KZABS
				,sd.LABNR
				,sd.KONNR
				,sd.KTPNR
				,sd.ABDAT
				,sd.ABFTZ
				,sd.ETFZ1
				,sd.ETFZ2
				,sd.KZSTU
				,sd.NOTKZ
				,sd.LMEIN
				,sd.EVERS
				,sd.ZWERT
				,sd.NAVNW
				,sd.ABMNG
				,sd.PRDAT
				,sd.BSTYP
				,sd.EFFWR
				,sd.XOBLR
				,sd.KUNNR
				,sd.ADRNR
				,sd.EKKOL
				,sd.SKTOF
				,sd.STAFO
				,sd.PLIFZ
				,sd.NTGEW
				,sd.GEWEI
				,sd.TXJCD
				,sd.ETDRK
				,sd.SOBKZ
				,sd.ARSNR
				,sd.ARSPS
				,sd.INSNC
				,sd.SSQSS
				,sd.ZGTYP
				,sd.EAN11
				,sd.BSTAE
				,sd.REVLV
				,sd.GEBER
				,sd.FISTL
				,sd.FIPOS
				,sd.KO_GSBER
				,sd.KO_PARGB
				,sd.KO_PRCTR
				,sd.KO_PPRCTR
				,sd.MEPRF
				,sd.BRGEW
				,sd.VOLUM
				,sd.VOLEH
				,sd.INCO1
				,sd.INCO2
				,sd.VORAB
				,sd.KOLIF
				,sd.LTSNR
				,sd.PACKNO
				,sd.FPLNR
				,sd.GNETWR
				,sd.STAPO
				,sd.UEBPO
				,sd.LEWED
				,sd.EMLIF
				,sd.LBLKZ
				,sd.SATNR
				,sd.ATTYP
				,sd.KANBA
				,sd.ADRN2
				,sd.CUOBJ
				,sd.XERSY
				,sd.EILDT
				,sd.DRDAT
				,sd.DRUHR
				,sd.DRUNR
				,sd.AKTNR
				,sd.ABELN
				,sd.ABELP
				,sd.ANZPU
				,sd.PUNEI
				,sd.SAISO
				,sd.SAISJ
				,sd.EBON2
				,sd.EBON3
				,sd.EBONF
				,sd.MLMAA
				,sd.MHDRZ
				,sd.ANFNR
				,sd.ANFPS
				,sd.KZKFG
				,sd.USEQU
				,sd.UMSOK
				,sd.BANFN
				,sd.BNFPO
				,sd.MTART
				,sd.UPTYP
				,sd.UPVOR
				,sd.KZWI1
				,sd.KZWI2
				,sd.KZWI3
				,sd.KZWI4
				,sd.KZWI5
				,sd.KZWI6
				,sd.SIKGR
				,sd.MFZHI
				,sd.FFZHI
				,sd.RETPO
				,sd.AUREL
				,sd.BSGRU
				,sd.LFRET
				,sd.MFRGR
				,sd.NRFHG
				,sd.J_1BNBM
				,sd.J_1BMATUSE
				,sd.J_1BMATORG
				,sd.J_1BOWNPRO
				,sd.J_1BINDUST
				,sd.ABUEB
				,sd.NLABD
				,sd.NFABD
				,sd.KZBWS
				,sd.BONBA
				,sd.FABKZ
				,sd.J_1AINDXP
				,sd.J_1AIDATEP
				,sd.MPROF
				,sd.EGLKZ
				,sd.KZTLF
				,sd.KZFME
				,sd.RDPRF
				,sd.TECHS
				,sd.CHG_SRV
				,sd.CHG_FPLNR
				,sd.MFRPN
				,sd.MFRNR
				,sd.EMNFR
				,sd.NOVET
				,sd.AFNAM
				,sd.TZONRC
				,sd.IPRKZ
				,sd.LEBRE
				,sd.BERID
				,sd.XCONDITIONS
				,sd.APOMS
				,sd.CCOMP
				,sd.GRANT_NBR
				,sd.FKBER
				,sd.STATUS
				,sd.RESLO
				,sd.KBLNR
				,sd.KBLPOS
				,sd.WEORA
				,sd.SRV_BAS_COM
				,sd.PRIO_URG
				,sd.PRIO_REQ
				,sd.EMPST
				,sd.SPE_ABGRU
				,sd.SPE_CRM_SO
				,sd.SPE_CRM_SO_ITEM
				,sd.SPE_CRM_REF_SO
				,sd.SPE_CRM_REF_ITEM
				,sd.SPE_CHNG_SYS
				,sd.SPE_INSMK_SRC
				,sd.SPE_CQ_CTRLTYPE
				,sd.SPE_CQ_NOCQ
				,sd.REASON_CODE
				,sd.CQU_SAR
				,sd.SPE_EWM_DTC
				,sd.EXLIN
				,sd.EXSNR
				,sd.EHTYP
				,sd.[/BEV1/NEGEN_ITEM]
				,sd.[/BEV1/NEDEPFREE]
				,sd.[/BEV1/NESTRUCCAT]
				,sd.ADVCODE
				,sd.EXCPE
				,sd.IUID_RELEVANT
				,sd.ZZOWNER
				,sd.ZZREASON_CODE
				,sd.REFSITE
				,sd.REF_ITEM
				,sd.SOURCE_ID
				,sd.SOURCE_KEY
				,sd.PUT_BACK
				,sd.POL_ID
				,sd.CONS_ORDER
				,getdate()
				,user_name()
			);
		END
	END TRY

	BEGIN CATCH
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[USP_Load_Aufk]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_Load_Aufk]

AS
BEGIN
BEGIN TRY

BEGIN

	---Truncating the table 
	TRUNCATE TABLE dbo.AUFK


	-- inserting the data ----
	INSERT INTO [dbo].[AUFK]
	        ( MANDT ,AUFNR ,
	          AUART ,
	          AUTYP ,
	          REFNR ,
	          ERNAM ,
	          ERDAT ,
	          AENAM ,
	          AEDAT ,
	          KTEXT ,
	          LTEXT ,
	          BUKRS ,
	          WERKS ,
	          GSBER ,
	          KOKRS ,
	          CCKEY ,
	          KOSTV ,
	          STORT ,
	          SOWRK ,
	          ASTKZ ,
	          WAERS ,
	          ASTNR ,
	          STDAT ,
	          ESTNR ,
	          PHAS0 ,
	          PHAS1 ,
	          PHAS2 ,
	          PHAS3 ,
	          PDAT1 ,
	          PDAT2 ,
	          PDAT3 ,
	          IDAT1 ,
	          IDAT2 ,
	          IDAT3 ,
	          OBJID ,
	          VOGRP ,
	          LOEKZ ,
	          PLGKZ ,
	          KVEWE ,
	          KAPPL ,
	          KALSM ,
	          ZSCHL ,
	       --   ABKRS ,
	          KSTAR ,
	          KOSTL ,
	          SAKNR ,
	          SETNM ,
	          CYCLE ,
	          SDATE ,
	          SEQNR ,
	          USER0 ,
	          USER1 ,
	          USER2 ,
	          USER3 ,
	          USER4 ,
	          USER5 ,
	          USER6 ,
	          USER7 ,
	          USER8 ,
	          USER9 ,
	          OBJNR ,
	          PRCTR ,
	       --   PSPEL ,
	          AWSLS ,
	          ABGSL ,
	          TXJCD ,
	          FUNC_AREA ,
	          SCOPE ,
	          PLINT ,
	          KDAUF ,
	          KDPOS ,
	          AUFEX ,
	          IVPRO ,
	          LOGSYSTEM ,
	          FLG_MLTPS ,
	          ABUKR ,
	          AKSTL ,
	          SIZECL ,
	          IZWEK ,
	          UMWKZ ,
	          KSTEMPF ,
	          ZSCHM ,
	          PKOSA ,
	          ANFAUFNR ,
	          PROCNR ,
	          PROTY ,
	          RSORD ,
	          BEMOT ,
	          ADRNRA ,
	          ERFZEIT ,
	          AEZEIT ,
	          CSTG_VRNT ,
	          COSTESTNR ,
	          VERAA_USER ,
	          VNAME ,
	          RECID ,
	          ETYPE ,
	          OTYPE ,
	          JV_JIBCL ,
	          JV_JIBSA ,
	          JV_OCO ,
	          [/CUM/INDCU] ,
	          [/CUM/CMNUM] ,
	          [/CUM/AUEST] ,
	          [/CUM/DESNUM] ,
	          VAPLZ ,
	          WAWRK ,
	          FERC_IND ,
			  [DW_Cre_Ts],
			  [DW_Cre_Usr]

	        )
 SELECT  MANDT ,
	          AUFNR ,
	          AUART ,
	          AUTYP ,
	          REFNR ,
	          ERNAM ,
	          ERDAT ,
	          AENAM ,
	          AEDAT ,
	          KTEXT ,
	          LTEXT ,
	          BUKRS ,
	          WERKS ,
	          GSBER ,
	          KOKRS ,
	          CCKEY ,
	          KOSTV ,
	          STORT ,
	          SOWRK ,
	          ASTKZ ,
	          WAERS ,
	          ASTNR ,
	          STDAT ,
	          ESTNR ,
	          PHAS0 ,
	          PHAS1 ,
	          PHAS2 ,
	          PHAS3 ,
	          PDAT1 ,
	          PDAT2 ,
	          PDAT3 ,
	          IDAT1 ,
	          IDAT2 ,
	          IDAT3 ,
	          OBJID ,
	          VOGRP ,
	          LOEKZ ,
	          PLGKZ ,
	          KVEWE ,
	          KAPPL ,
	          KALSM ,
	          ZSCHL ,
	         -- ABKRS ,
	          KSTAR ,
	          KOSTL ,
	          SAKNR ,
	          SETNM ,
	          CYCLE ,
	          SDATE ,
	          SEQNR ,
	          USER0 ,
	          USER1 ,
	          USER2 ,
	          USER3 ,
	          USER4 ,
	          USER5 ,
	          USER6 ,
	          USER7 ,
	          USER8 ,
	          USER9 ,
	          OBJNR ,
	          PRCTR ,
	         -- PSPEL ,
	          AWSLS ,
	          ABGSL ,
	          TXJCD ,
	          FUNC_AREA ,
	          SCOPE ,
	          PLINT ,
	          KDAUF ,
	          KDPOS ,
	          AUFEX ,
	          IVPRO ,
	          LOGSYSTEM ,
	          FLG_MLTPS ,
	          ABUKR ,
	          AKSTL ,
	          SIZECL ,
	          IZWEK ,
	          UMWKZ ,
	          KSTEMPF ,
	          ZSCHM ,
	          PKOSA ,
	          ANFAUFNR ,
	          PROCNR ,
	          PROTY ,
	          RSORD ,
	          BEMOT ,
	          ADRNRA ,
	          ERFZEIT ,
	          AEZEIT ,
	          CSTG_VRNT ,
	          COSTESTNR ,
	          VERAA_USER ,
	          VNAME ,
	          RECID ,
	          ETYPE ,
	          OTYPE ,
	          JV_JIBCL ,
	          JV_JIBSA ,
	          JV_OCO ,
	          [/CUM/INDCU] ,
	          [/CUM/CMNUM] ,
	          [/CUM/AUEST] ,
	          [/CUM/DESNUM] ,
	          VAPLZ ,
	          WAWRK ,
	          FERC_IND ,
			  getdate(),
			  user_name()
			   FROM [Keu_ecc].STG.[STG_AUFK]


END 



 


END TRY
BEGIN CATCH
END CATCH
END








GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_COSP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Wynter Johnson
-- Create date: 3/13/2018
-- Description:	Maintain USP_PROC_MAINT_COSP
--              If Year Data Exists in the STG Tables Remove Data
--              from dbo Table.  Insert STG data into dbo Table.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_COSP]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KEU_ECC.dbo.COSP
            WHERE [GJAHR] in
               (SELECT distinct [GJAHR] FROM KEU_ECC.STG.COSP);

          INSERT INTO KEU_ECC.dbo.COSP
            SELECT *
            FROM KEU_ECC.STG.COSP;

		  IF NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='COSP_IX' 
			AND object_id = OBJECT_ID('KEU_ECC.dbo.COSP'))
   	      BEGIN
		      create index COSP_IX on KEU_ECC.dbo.COSP (LEDNR,OBJNR,GJAHR,WRTTP,VERSN,KSTAR,HRKFT,VRGNG,PAROB,USPOB,BEKNZ,TWAER,PERBL);
          END

      COMMIT TRANSACTION;
      END TRY
      BEGIN CATCH
				PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
			    IF @@TRANCOUNT > 0
                    ROLLBACK TRANSACTION;
			    THROW 60001, 'COSP Maintenance Failed', 1;
		  END CATCH;
		END     
END;




GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_COSS]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Wynter Johnson
-- Create date: 3/13/2018
-- Description:	Maintain USP_PROC_MAINT_COSS
--              If Year Data Exists in the STG Tables Remove Data
--              from dbo Table.  Insert STG data into dbo Table.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_COSS]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KEU_ECC.dbo.COSS
            WHERE [GJAHR] in
               (SELECT distinct [GJAHR] FROM KEU_ECC.STG.COSS);

          INSERT INTO KEU_ECC.dbo.COSS
            SELECT *
            FROM KEU_ECC.STG.COSS;

		  IF NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='COSS_IX' 
			AND object_id = OBJECT_ID('KEU_ECC.dbo.COSS'))
   	      BEGIN
		      create index COSS_IX on KEU_ECC.dbo.COSS (LEDNR,OBJNR,GJAHR,WRTTP,VERSN,KSTAR,HRKFT,VRGNG,PAROB,USPOB,BEKNZ,TWAER,PERBL);
          END

      COMMIT TRANSACTION;
      END TRY
      BEGIN CATCH
				PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
			    IF @@TRANCOUNT > 0
                    ROLLBACK TRANSACTION;
			    THROW 60001, 'COSS Maintenance Failed', 1;
		  END CATCH;
		END     
END;





GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_GLT0]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_GLT0]
-- Author			:	USCUXB73
-- Create date		:	03/09/2018
-- Description		:   Performs Table Maintenenca for a given year	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_GLT0]
AS
  BEGIN TRANSACTION GLT0
  
  DELETE FROM [KEU_ECC].[dbo].[GLT0] WHERE RYEAR IN (Select distinct RYEAR from [KEU_FIN].[STG].[GLT0])
   
 INSERT INTO [KEU_ECC].[dbo].[GLT0] (
  [RCLNT]
      ,[RLDNR]
      ,[RRCTY]
      ,[RVERS]
      ,[BUKRS]
      ,[RYEAR]
      ,[RACCT]
      ,[RBUSA]
      ,[RTCUR]
      ,[DRCRK]
      ,[RPMAX]
      ,[TSLVT]
      ,[TSL01]
      ,[TSL02]
      ,[TSL03]
      ,[TSL04]
      ,[TSL05]
      ,[TSL06]
      ,[TSL07]
      ,[TSL08]
      ,[TSL09]
      ,[TSL10]
      ,[TSL11]
      ,[TSL12]
      ,[TSL13]
      ,[TSL14]
      ,[TSL15]
      ,[TSL16]
      ,[HSLVT]
      ,[HSL01]
      ,[HSL02]
      ,[HSL03]
      ,[HSL04]
      ,[HSL05]
      ,[HSL06]
      ,[HSL07]
      ,[HSL08]
      ,[HSL09]
      ,[HSL10]
      ,[HSL11]
      ,[HSL12]
      ,[HSL13]
      ,[HSL14]
      ,[HSL15]
      ,[HSL16]
      ,[CSPRED]
      ,[KSLVT]
      ,[KSL01]
      ,[KSL02]
      ,[KSL03]
      ,[KSL04]
      ,[KSL05]
      ,[KSL06]
      ,[KSL07]
      ,[KSL08]
      ,[KSL09]
      ,[KSL10]
      ,[KSL11]
      ,[KSL12]
      ,[KSL13]
      ,[KSL14]
      ,[KSL15]
      ,[KSL16])
	   (SELECT 
	[RCLNT]
      ,[RLDNR]
      ,[RRCTY]
      ,[RVERS]
      ,[BUKRS]
      ,[RYEAR]
      ,[RACCT]
      ,[RBUSA]
      ,[RTCUR]
      ,[DRCRK]
      ,[RPMAX]
      ,[TSLVT]
      ,[TSL01]
      ,[TSL02]
      ,[TSL03]
      ,[TSL04]
      ,[TSL05]
      ,[TSL06]
      ,[TSL07]
      ,[TSL08]
      ,[TSL09]
      ,[TSL10]
      ,[TSL11]
      ,[TSL12]
      ,[TSL13]
      ,[TSL14]
      ,[TSL15]
      ,[TSL16]
      ,[HSLVT]
      ,[HSL01]
      ,[HSL02]
      ,[HSL03]
      ,[HSL04]
      ,[HSL05]
      ,[HSL06]
      ,[HSL07]
      ,[HSL08]
      ,[HSL09]
      ,[HSL10]
      ,[HSL11]
      ,[HSL12]
      ,[HSL13]
      ,[HSL14]
      ,[HSL15]
      ,[HSL16]
      ,[CSPRED]
      ,[KSLVT]
      ,[KSL01]
      ,[KSL02]
      ,[KSL03]
      ,[KSL04]
      ,[KSL05]
      ,[KSL06]
      ,[KSL07]
      ,[KSL08]
      ,[KSL09]
      ,[KSL10]
      ,[KSL11]
      ,[KSL12]
      ,[KSL13]
      ,[KSL14]
      ,[KSL15]
      ,[KSL16] FROM [KEU_FIN].[STG].[GLT0])	  
 

 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION GLT0;
END

COMMIT TRANSACTION GLT0;
 






GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier]
WITH EXEC AS CALLER
AS
DECLARE     @LEVEL         SMALLINT;
DECLARE 	  @COUNT         SMALLINT;
DECLARE     @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, CTRL_AREA VARCHAR(4));
DECLARE		  @HIER				   VARCHAR(24);
DECLARE		  @CTRL_AREA	   VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KEU_ECC].[STG].COST_CTR_HIER_UNRVL;

    INSERT @HIERS(HIER, CTRL_AREA ) VALUES ('KEU', 'KELL'), ('KEU_KLPL1', 'KLPL'), ('KEU_KLUK1', 'KLUK');
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
      BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @CTRL_AREA = CTRL_AREA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KEU_ECC].[STG].COST_CTR_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0101'
        			  and h.SUBCLASS=@CTRL_AREA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			      BEGIN                
      				        SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 THROW 60002, 'LEVELS exceeded', 1;        
                      INSERT INTO  [KEU_ECC].[STG].COST_CTR_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t, [KEU_ECC].[dbo].SETNODE n, [KEU_ECC].[STG].COST_CTR_HIER_UNRVL z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KEU_ECC].[STG].COST_CTR_HIER_UNRVL z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KEU_ECC].[STG].COST_CTR_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KOSTL, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KOSTL else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KOSTL else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KOSTL else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KOSTL else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KOSTL else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KOSTL else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KOSTL else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KOSTL else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KOSTL else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KOSTL else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KOSTL else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KOSTL else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KOSTL else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KOSTL else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KOSTL else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KOSTL else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KOSTL else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KOSTL else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KOSTL else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.KTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.KTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.KTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.KTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.KTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.KTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.KTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.KTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.KTEXT else z.LVL10_SETNAME_DESC end,
      							  case when LVL_NBR+1=11 then t.KTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.KTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.KTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.KTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.KTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.KTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.KTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.KTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.KTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.KTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KEU_ECC].[dbo].CSKS c, [KEU_ECC].[dbo].CSKT t, [KEU_ECC].[dbo].SETLEAF l, [KEU_ECC].[STG].COST_CTR_HIER_UNRVL z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KOKRS=@CTRL_AREA 
                    and c.DATAB<=getdate() 
                    and c.DATBI>=getdate()
                    and c.KOKRS=t.KOKRS 
                    and c.KOSTL=t.KOSTL
                    and t.SPRAS='E' 
                    and c.DATBI=t.DATBI
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KOSTL=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KOSTL>=l.VALFROM and c.KOSTL<=l.VALTO)));
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
        END;
        COMMIT TRANSACTION;
	  END TRY
		BEGIN CATCH
    		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
    		THROW 60001, 'Stored Procedure Failed', 1;
    		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		END CATCH;
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier_KAP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier_KAP]
WITH EXEC AS CALLER
AS
DECLARE     @LEVEL         SMALLINT;
DECLARE 	  @COUNT         SMALLINT;
DECLARE     @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, CTRL_AREA VARCHAR(4));
DECLARE		  @HIER				   VARCHAR(24);
DECLARE		  @CTRL_AREA	   VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP;

    INSERT @HIERS(HIER, CTRL_AREA ) VALUES ('ZBB_TOP', 'KEZA');
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
      BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @CTRL_AREA = CTRL_AREA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0101'
        			  and h.SUBCLASS=@CTRL_AREA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			      BEGIN                
      				        SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 THROW 60002, 'LEVELS exceeded', 1;        
                      INSERT INTO  [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t, [KEU_ECC].[dbo].SETNODE n, [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KOSTL, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KOSTL else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KOSTL else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KOSTL else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KOSTL else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KOSTL else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KOSTL else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KOSTL else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KOSTL else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KOSTL else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KOSTL else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KOSTL else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KOSTL else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KOSTL else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KOSTL else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KOSTL else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KOSTL else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KOSTL else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KOSTL else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KOSTL else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.KTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.KTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.KTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.KTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.KTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.KTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.KTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.KTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.KTEXT else z.LVL10_SETNAME_DESC end,
      							  case when LVL_NBR+1=11 then t.KTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.KTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.KTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.KTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.KTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.KTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.KTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.KTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.KTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.KTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KEU_ECC].[dbo].CSKS c, [KEU_ECC].[dbo].CSKT t, [KEU_ECC].[dbo].SETLEAF l, [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_KAP z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KOKRS=@CTRL_AREA 
                    and c.DATAB<=getdate() 
                    and c.DATBI>=getdate()
                    and c.KOKRS=t.KOKRS 
                    and c.KOSTL=t.KOSTL
                    and t.SPRAS='E' 
                    and c.DATBI=t.DATBI
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KOSTL=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KOSTL>=l.VALFROM and c.KOSTL<=l.VALTO)));
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
        END;
        COMMIT TRANSACTION;
	  END TRY
		BEGIN CATCH
    		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
    		THROW 60001, 'Stored Procedure Failed', 1;
    		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		END CATCH;
END;


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier_TMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier_TMP]
WITH EXEC AS CALLER
AS
DECLARE     @LEVEL         SMALLINT;
DECLARE 	  @COUNT         SMALLINT;
DECLARE     @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, CTRL_AREA VARCHAR(4));
DECLARE		  @HIER				   VARCHAR(24);
DECLARE		  @CTRL_AREA	   VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP;

    INSERT @HIERS(HIER, CTRL_AREA) SELECT distinct SETNAME, SUBCLASS from KEU_EXTERNAL.dbo.LKP_APPL_HIER WHERE SETCLASS='0101';
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
      BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @CTRL_AREA = CTRL_AREA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0101'
        			  and h.SUBCLASS=@CTRL_AREA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			  BEGIN                
      				  SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 
					  BEGIN 
					      IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
					      THROW 60002, 'LEVELS exceeded', 1;   
				      END		       
                      INSERT INTO  [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t, [KEU_ECC].[dbo].SETNODE n, [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KOSTL, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KOSTL else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KOSTL else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KOSTL else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KOSTL else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KOSTL else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KOSTL else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KOSTL else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KOSTL else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KOSTL else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KOSTL else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KOSTL else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KOSTL else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KOSTL else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KOSTL else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KOSTL else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KOSTL else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KOSTL else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KOSTL else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KOSTL else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.KTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.KTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.KTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.KTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.KTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.KTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.KTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.KTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.KTEXT else z.LVL10_SETNAME_DESC end,
      							  case when LVL_NBR+1=11 then t.KTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.KTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.KTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.KTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.KTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.KTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.KTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.KTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.KTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.KTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KEU_ECC].[dbo].CSKS c, [KEU_ECC].[dbo].CSKT t, [KEU_ECC].[dbo].SETLEAF l, [KEU_ECC].[STG].COST_CTR_HIER_UNRVL_TMP z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KOKRS=@CTRL_AREA 
                    and c.DATAB<=getdate() 
                    and c.DATBI>=getdate()
                    and c.KOKRS=t.KOKRS 
                    and c.KOSTL=t.KOSTL
                    and t.SPRAS='E' 
                    and c.DATBI=t.DATBI
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KOSTL=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KOSTL>=l.VALFROM and c.KOSTL<=l.VALTO)));
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
        END;
        COMMIT TRANSACTION;
	  END TRY
		BEGIN CATCH
    		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
    		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    		THROW 60001, 'Stored Procedure Failed', 1;
		END CATCH;
END;



GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier]
WITH EXEC AS CALLER
AS
DECLARE   @LEVEL         SMALLINT;
DECLARE 	@COUNT         SMALLINT;
DECLARE   @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, COA VARCHAR(4));
DECLARE   @HIER				   VARCHAR(24);
DECLARE	  @COA           VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL;

  INSERT @HIERS(HIER, COA) VALUES ('KEU', 'COA'), ('KEU_KLPL1', 'COA'), ('KEU_KLUK1', 'COA');
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
        BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @COA  = COA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0102'
        			  and h.SUBCLASS=@COA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			      BEGIN                
      				        SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 THROW 60002, 'LEVELS exceeded', 1;        
                      INSERT INTO  [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t, [KEU_ECC].[dbo].SETNODE n, [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KSTAR, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KSTAR else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KSTAR else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KSTAR else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KSTAR else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KSTAR else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KSTAR else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KSTAR else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KSTAR else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KSTAR else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KSTAR else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KSTAR else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KSTAR else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KSTAR else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KSTAR else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KSTAR else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KSTAR else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KSTAR else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KSTAR else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KSTAR else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.LTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.LTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.LTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.LTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.LTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.LTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.LTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.LTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.LTEXT else z.LVL10_SETNAME end,
      							  case when LVL_NBR+1=11 then t.LTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.LTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.LTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.LTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.LTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.LTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.LTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.LTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.LTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.LTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KEU_ECC].[dbo].CSKA c, [KEU_ECC].[dbo].CSKU t, [KEU_ECC].[dbo].SETLEAF l, [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KTOPL='COA' 
                    and c.KTOPL=t.KTOPL
                    and c.KSTAR=t.KSTAR
                    and t.SPRAS='E' 
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KSTAR=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KSTAR>=l.VALFROM and c.KSTAR<=l.VALTO)));              
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
        END;
        COMMIT TRANSACTION;
	  END TRY
		BEGIN CATCH
    		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
    		THROW 60001, 'Stored Procedure Failed', 1;
    		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		END CATCH;
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier_KAP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier_KAP]
WITH EXEC AS CALLER
AS
DECLARE   @LEVEL         SMALLINT;
DECLARE 	@COUNT         SMALLINT;
DECLARE   @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, COA VARCHAR(4));
DECLARE   @HIER				   VARCHAR(24);
DECLARE	  @COA           VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP;

  INSERT @HIERS(HIER, COA) VALUES ('ZBB_TOP', 'COA');
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
        BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @COA  = COA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0102'
        			  and h.SUBCLASS=@COA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			      BEGIN                
      				        SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 THROW 60002, 'LEVELS exceeded', 1;        
                      INSERT INTO  [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t, [KEU_ECC].[dbo].SETNODE n, [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KSTAR, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KSTAR else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KSTAR else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KSTAR else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KSTAR else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KSTAR else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KSTAR else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KSTAR else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KSTAR else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KSTAR else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KSTAR else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KSTAR else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KSTAR else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KSTAR else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KSTAR else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KSTAR else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KSTAR else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KSTAR else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KSTAR else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KSTAR else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.LTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.LTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.LTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.LTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.LTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.LTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.LTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.LTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.LTEXT else z.LVL10_SETNAME end,
      							  case when LVL_NBR+1=11 then t.LTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.LTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.LTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.LTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.LTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.LTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.LTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.LTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.LTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.LTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KEU_ECC].[dbo].CSKA c, [KEU_ECC].[dbo].CSKU t, [KEU_ECC].[dbo].SETLEAF l, [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_KAP z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KTOPL='COA' 
                    and c.KTOPL=t.KTOPL
                    and c.KSTAR=t.KSTAR
                    and t.SPRAS='E' 
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KSTAR=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KSTAR>=l.VALFROM and c.KSTAR<=l.VALTO)));              
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
        END;
        COMMIT TRANSACTION;
	  END TRY
		BEGIN CATCH
    		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
    		THROW 60001, 'Stored Procedure Failed', 1;
    		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		END CATCH;
END;


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier_TMP]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier_TMP]
WITH EXEC AS CALLER
AS
DECLARE   @LEVEL         SMALLINT;
DECLARE 	@COUNT         SMALLINT;
DECLARE   @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, COA VARCHAR(4));
DECLARE   @HIER				   VARCHAR(24);
DECLARE	  @COA           VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP;

    INSERT @HIERS(HIER, COA) SELECT distinct SETNAME, SUBCLASS from KEU_EXTERNAL.dbo.LKP_APPL_HIER WHERE SETCLASS='0102';
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
        BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @COA  = COA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0102'
        			  and h.SUBCLASS=@COA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			  BEGIN                
      				  SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 
					  BEGIN 
					      IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
					      THROW 60002, 'LEVELS exceeded', 1;   
				      END		       
                      INSERT INTO  [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KEU_ECC].[dbo].SETHEADER h, [KEU_ECC].[dbo].SETHEADERT t, [KEU_ECC].[dbo].SETNODE n, [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KSTAR, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KSTAR else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KSTAR else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KSTAR else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KSTAR else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KSTAR else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KSTAR else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KSTAR else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KSTAR else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KSTAR else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KSTAR else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KSTAR else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KSTAR else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KSTAR else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KSTAR else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KSTAR else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KSTAR else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KSTAR else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KSTAR else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KSTAR else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.LTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.LTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.LTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.LTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.LTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.LTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.LTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.LTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.LTEXT else z.LVL10_SETNAME end,
      							  case when LVL_NBR+1=11 then t.LTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.LTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.LTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.LTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.LTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.LTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.LTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.LTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.LTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.LTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KEU_ECC].[dbo].CSKA c, [KEU_ECC].[dbo].CSKU t, [KEU_ECC].[dbo].SETLEAF l, [KEU_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KTOPL='COA' 
                    and c.KTOPL=t.KTOPL
                    and c.KSTAR=t.KSTAR
                    and t.SPRAS='E' 
					          and z.SUBCLASS=c.KTOPL
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KSTAR=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KSTAR>=l.VALFROM and c.KSTAR<=l.VALTO)));              
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
        END;
        COMMIT TRANSACTION;
	  END TRY
		BEGIN CATCH
    		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
    		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    		THROW 60001, 'Stored Procedure Failed', 1;
		END CATCH;
END;



GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_UNRVL_CUST_HIER]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Wynter Johnson
-- Create date: 6/21/2018 MSSQL 
-- Description:	Unravel the Customer Hierarchy
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_UNRVL_CUST_HIER]
@Hier_ID varchar(1), @Hier_DT varchar(8) = null, @Drp_Cre_Tbl varchar(1) = null, @Del_Tbl varchar(1) = null
WITH EXEC AS CALLER
AS
BEGIN
	SET NOCOUNT ON;
    DECLARE @lkunnr           varchar(10) --[KEU_ECC].[dbo].KNA1.KUNNR%type;      
    DECLARE @nLVL_ctr         smallint;  
    DECLARE @nrecs_inserted   int;                 
    DECLARE @nloop_ctr        smallint;  
    DECLARE @nloop_ctr2       smallint;                  
    DECLARE @v_sql            varchar(8000);
    DECLARE @lhier_DT         varchar(8);
     
	IF RTRIM(ISNULL(@Hier_DT,''))=''
		SET @lhier_DT=convert(varchar,GETDATE(),112);
	ELSE
		BEGIN
			SET @lhier_DT=@Hier_DT;
			IF ISDATE (@lHier_DT)<>1
				THROW 60000, 'Date Entered is not a Valid Date', 1;
		END

	IF RTRIM(ISNULL(@Drp_Cre_Tbl,''))='Y'
	BEGIN
   		IF OBJECT_ID('[KEU_ECC].[STG].CUST_HIER_UNRVL', 'U') IS NOT NULL
		BEGIN
			BEGIN TRY
				SET @v_sql='drop table [KEU_ECC].[STG].CUST_HIER_UNRVL';
--                print @v_sql;
				execute (@v_sql);
			END TRY
			BEGIN CATCH
				THROW 60001, 'Table Drop did not work.', 1;
			END CATCH;
		END
		BEGIN TRY	    
			SET @v_sql=CONCAT('SELECT ', '''',  '        ', '''', ' as HIER_DT,');   
			SET @v_sql=CONCAT(@v_sql, '        ', '''',  '     ',  '''', ' as HI_TYP,');   
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL1_CUST_NBR,');   
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL2_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL3_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL4_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL5_CUST_NBR,');  
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL6_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL7_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL8_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL9_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL10_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL11_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL12_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL13_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL14_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL15_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL16_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL17_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL18_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL19_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LVL20_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL1_CUST_NM,');   
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL2_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL3_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL4_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL5_CUST_NM,');  
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL6_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL7_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL8_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL9_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL10_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL11_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL12_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL13_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL14_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL15_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL16_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL17_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL18_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL19_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        k.NAME1 as LVL20_CUST_NM,');
			SET @v_sql=CONCAT(@v_sql, '        h.KUNNR as LST_LVL_CUST_NBR,');
			SET @v_sql=CONCAT(@v_sql, '        h.GRPNO as LST_LVL_NBR INTO [KEU_ECC].[STG].CUST_HIER_UNRVL');
			SET @v_sql=CONCAT(@v_sql, '        from [KEU_ECC].[dbo].KNVH h, [KEU_ECC].[dbo].KNA1 k');
			SET @v_sql=CONCAT(@v_sql, '        where 1=2');
--		          PRINT @v_sql;               				                
				execute (@v_sql);
        END TRY
		BEGIN CATCH
			THROW 60002, 'Create Table Failed', 1;
		END CATCH
	END
	IF RTRIM(ISNULL(@DEL_TBL,''))='Y'
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION
  		    SET @v_sql='delete [KEU_ECC].[STG].CUST_HIER_UNRVL';
--            PRINT @v_sql;               
  		    execute (@v_sql);
	        COMMIT TRANSACTION;
	    END TRY
		BEGIN CATCH
		    PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					', Line ' + CONVERT(varchar(5), ERROR_LINE());
			IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;
			THROW 60003, 'Delete Failed', 1;
	    END CATCH;
	END     
	IF ((RTRIM(ISNULL(@Drp_Cre_Tbl,''))='') and (RTRIM(ISNULL(@DEL_TBL,''))=''))
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION
   			SET @v_sql='delete [KEU_ECC].[STG].CUST_HIER_UNRVL';
			SET @v_sql=CONCAT(@v_sql, ' where HI_TYP= ', '''', @Hier_ID, '''');
			SET @v_sql=CONCAT(@v_sql, '   and HIER_DT= ', '''', @lhier_DT, '''');   
            PRINT @v_sql;               
			execute (@v_sql);
	    COMMIT TRANSACTION;
	    END TRY
		BEGIN CATCH
			PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					', Line ' + CONVERT(varchar(5), ERROR_LINE());
			THROW 60003, 'Delete Failed', 1;
			IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;
		END CATCH;
	END     

-- get the main parents
    BEGIN
	BEGIN TRY
	BEGIN TRANSACTION
        SET @v_sql='insert into [KEU_ECC].[STG].CUST_HIER_UNRVL (HIER_DT, HI_TYP, LVL1_CUST_NBR, LST_LVL_CUST_NBR, LST_LVL_NBR, LVL1_CUST_NM)';
        SET @v_sql=CONCAT(@v_sql, ' select distinct ', '''', @lhier_DT, '''', ',');
        SET @v_sql=CONCAT(@v_sql, '   h.HITYP, h.KUNNR, h.KUNNR, 1, k.NAME1');
        SET @v_sql=CONCAT(@v_sql, '        from [KEU_ECC].[dbo].KNVH h, [KEU_ECC].[dbo].KNA1 k');
        SET @v_sql=CONCAT(@v_sql, '        where RTRIM(ISNULL(h.HKUNNR,','''','''','))=','''','''');
        SET @v_sql=CONCAT(@v_sql, '          and h.HITYP= ', '''', @Hier_ID, '''');
        SET @v_sql=CONCAT(@v_sql, '          and convert(varchar, h.DATAB, 112) <=', '''', @lhier_DT, '''');
        SET @v_sql=CONCAT(@v_sql, '          and convert(varchar, h.DATBI, 112) >=', '''', @lhier_DT, '''');  
        SET @v_sql=CONCAT(@v_sql, '          and h.KUNNR=k.KUNNR');         
--        PRINT @v_sql;                  
        execute (@v_sql);            
        SET @nrecs_inserted=@@ROWCOUNT;
    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
				', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
				', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
				', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
				', Line ' + CONVERT(varchar(5), ERROR_LINE());
 	    IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
       THROW 60004, 'Failed Insert', 1;
    END CATCH
    END;

    BEGIN
	BEGIN TRY
	BEGIN TRANSACTION
       SET @nLVL_ctr=0;
       WHILE @nrecs_inserted > 0
	       BEGIN
               SET @nLVL_ctr=@nLVL_ctr+1;
               if @nLVL_ctr > 20
                  THROW 60005, 'LVLs_exceeded', 1;        
               SET @v_sql='insert into [KEU_ECC].[STG].CUST_HIER_UNRVL (HIER_DT, HI_TYP, LVL1_CUST_NBR, LVL1_CUST_NM';
			   SET @nloop_ctr=1;    
               WHILE @nloop_ctr<=@nLVL_ctr 
			   BEGIN
                   SET @nloop_ctr2=@nloop_ctr+1;                   
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_CUST_NBR');
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_CUST_NM');
				   SET @nloop_ctr=@nloop_ctr+1;
               END;
               SET @v_sql=CONCAT(@v_sql, ', LST_LVL_CUST_NBR, LST_LVL_NBR)');
               SET @v_sql=CONCAT(@v_sql, ' select distinct ', '''', @lhier_DT, '''', ',');  
               SET @v_sql=CONCAT(@v_sql, ' h.HITYP, ');   
			   SET @nloop_ctr=1;    
               WHILE @nloop_ctr<=@nLVL_ctr
			   BEGIN                   
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_CUST_NBR', ',');
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_CUST_NM', ',');
				   SET @nloop_ctr=@nloop_ctr+1;
               END;
               SET @nloop_ctr=@nLVL_ctr + 1;
               SET @v_sql=CONCAT(@v_sql, ' h.KUNNR, k.NAME1, h.KUNNR, ', @nloop_ctr);
               SET @v_sql=CONCAT(@v_sql, ' from [KEU_ECC].[dbo].KNVH h, [KEU_ECC].[dbo].KNA1 k, [KEU_ECC].[STG].CUST_HIER_UNRVL  t');
               SET @v_sql=CONCAT(@v_sql, ' where h.HKUNNR=t.LVL', @nLVL_ctr, '_CUST_NBR');
               SET @v_sql=CONCAT(@v_sql, '   and h.HKUNNR=t.LVL',  @nLVL_ctr, '_CUST_NBR');
               SET @v_sql=CONCAT(@v_sql, '   and h.KUNNR=k.KUNNR'); 
               SET @v_sql=CONCAT(@v_sql, '   and h.HITYP=', '''', @Hier_ID , '''');
               SET @v_sql=CONCAT(@v_sql, '   and t.HI_TYP=', '''', @Hier_ID, '''');
               SET @v_sql=CONCAT(@v_sql, '   and t.HIER_DT=', '''', @lhier_DT, '''');
               SET @v_sql=CONCAT(@v_sql, '   and convert(varchar, h.DATAB, 112) <=', '''', @lhier_DT, '''');
               SET @v_sql=CONCAT(@v_sql, '   and convert(varchar, h.DATBI, 112) >=', '''', @lhier_DT, '''');  
                        
--              PRINT @v_sql;  
			  if @nLVL_ctr<20   
			  begin             
--                print @v_sql;
	 	          execute (@v_sql);
				  SET @nrecs_inserted=@@ROWCOUNT;
--				  PRINT @nrecs_inserted
			  end
              else
              begin
			      SET @nrecs_inserted=0;
			  end
           END;
    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
				', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
				', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
				', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
				', Line ' + CONVERT(varchar(5), ERROR_LINE());
 	    IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        THROW 60006, 'Failed insert', 1;
    END CATCH
	END
END



GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_UNRVL_FIN_STMT_HIER]    Script Date: 11/20/2018 6:19:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Wynter Johnson
-- Create date: 9/12/2017 MSSQL
-- Description:	Unravel the GL Account Hierarchy
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_UNRVL_FIN_STMT_HIER]
WITH EXEC AS CALLER
AS
BEGIN
	SET NOCOUNT ON;
    DECLARE @nLVL_ctr         smallint;  
    DECLARE @nrecs_inserted   int;                 
    DECLARE @nloop_ctr        smallint;  
    DECLARE @nloop_ctr2       smallint;                  
    DECLARE @v_sql            varchar(8000);
     
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION
   			SET @v_sql='delete [KEU_ECC].[STG].FIN_STMT_HIER_UNRVL';
--                PRINT @v_sql;               
			execute (@v_sql);
	    COMMIT TRANSACTION;
	    END TRY
		BEGIN CATCH
			PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					', Line ' + CONVERT(varchar(5), ERROR_LINE());
			IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;
			THROW 60003, 'Delete Failed', 1;
		END CATCH;
	END     

-- get the main parent
  BEGIN
	BEGIN TRY
	BEGIN TRANSACTION
        SET @v_sql='insert into [KEU_ECC].[STG].FIN_STMT_HIER_UNRVL (FIN_STMT_VRSN, NODE_TYP, LVL_NBR, LVL1_FIN_STMT_ITM, LVL1_FIN_STMT_ITM_DESC, FIN_STMT_ID, FIN_STMT_ITM)';
        SET @v_sql=CONCAT(@v_sql, ' SELECT DISTINCT f.VERSN, ', '''H''', ', 1, f.ERGSL, t.TXT45, f.ID, f.ERGSL');
        SET @v_sql=CONCAT(@v_sql, ' from [KEU_ECC].[dbo].FAGL_011PC f');
		    SET @v_sql=CONCAT(@v_sql, ' LEFT OUTER JOIN [KEU_ECC].[dbo].FAGL_011QT t on f.VERSN=t.VERSN and f.ERGSL=t.ERGSL and t.SPRAS=', '''E''', ' and t.TXTYP=', '''K''');
        SET @v_sql=CONCAT(@v_sql, ' where f.VERSN= ', '''ZPL2''', ' and f.TYPE=', '''R''');         
        PRINT @v_sql;                  
        execute (@v_sql);            
        SET @nrecs_inserted=@@ROWCOUNT;
    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
				', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
				', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
				', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
				', Line ' + CONVERT(varchar(5), ERROR_LINE());
 	    IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
       THROW 60004, 'Failed Insert', 1;
    END CATCH
    END;

    BEGIN
        SET @nLVL_ctr=1;
        WHILE @nrecs_inserted > 0
	      BEGIN
            if @nLVL_ctr > 20
			BEGIN
 	            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
                THROW 60005, 'LVLs_exceeded', 1; 
			END	       
            SET @v_sql='insert into [KEU_ECC].[STG].FIN_STMT_HIER_UNRVL (FIN_STMT_VRSN, NODE_TYP, LVL_NBR, LVL1_FIN_STMT_ITM, LVL1_FIN_STMT_ITM_DESC';
		        SET @nloop_ctr=1;    
            WHILE @nloop_ctr<=@nLVL_ctr 
		        BEGIN
                SET @nloop_ctr2=@nloop_ctr+1;                   
                SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_FIN_STMT_ITM');
                SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_FIN_STMT_ITM_DESC');
			          SET @nloop_ctr=@nloop_ctr+1;
            END;
            SET @v_sql=CONCAT(@v_sql, ', FIN_STMT_ID, FIN_STMT_ITM)');
            SET @v_sql=CONCAT(@v_sql, '   SELECT DISTINCT h.FIN_STMT_VRSN,', '''H''', ',', @nloop_ctr, ',');
		        SET @nloop_ctr=1;    
            WHILE @nloop_ctr<=@nLVL_ctr
		        BEGIN                   
                SET @v_sql=CONCAT(@v_sql, ' h.LVL', @nloop_ctr, '_FIN_STMT_ITM', ',');
                SET @v_sql=CONCAT(@v_sql, ' h.LVL', @nloop_ctr, '_FIN_STMT_ITM_DESC, ');
			          SET @nloop_ctr=@nloop_ctr+1;
            END;
            SET @nloop_ctr=@nLVL_ctr + 1;
		        SET @v_sql=CONCAT(@v_sql, ' f.ERGSL, t.TXT45, f.ID, f.ERGSL');
            SET @v_sql=CONCAT(@v_sql, ' from [KEU_ECC].[dbo].FAGL_011PC f');
            SET @v_sql=CONCAT(@v_sql, ' INNER JOIN [KEU_ECC].[STG].FIN_STMT_HIER_UNRVL h on f.PARENT=h.FIN_STMT_ID');
            SET @v_sql=CONCAT(@v_sql, ' LEFT OUTER JOIN [KEU_ECC].[dbo].FAGL_011QT t on f.VERSN=t.VERSN and f.ERGSL=t.ERGSL and t.SPRAS=', '''E''', ' and t.TXTYP=', '''K''');        
	          SET @v_sql=CONCAT(@v_sql, ' where f.VERSN= ', '''ZPL2''', ' and h.LVL_NBR=' , @nLVL_ctr);                
            PRINT @v_sql;                  
			      BEGIN TRY
			      BEGIN TRANSACTION
                execute (@v_sql);
                SET @nrecs_inserted=@@ROWCOUNT;
                COMMIT TRANSACTION;
			      END TRY
			      BEGIN CATCH
				        PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
						    ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
						    ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
						    ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
						    ', Line ' + CONVERT(varchar(5), ERROR_LINE());
				        IF @@TRANCOUNT > 0
					          ROLLBACK TRANSACTION;
				        THROW 60006, 'Failed insert', 1;
			      END CATCH
            SET @nLVL_ctr=@nLVL_ctr+1;
        END
	END
    BEGIN
	BEGIN TRY
    BEGIN TRANSACTION
      INSERT INTO KEU_ECC.STG.FIN_STMT_HIER_UNRVL (FIN_STMT_VRSN, NODE_TYP, LVL_NBR, FIN_STMT_ID, FIN_STMT_ITM, LVL1_FIN_STMT_ITM,  
        LVL2_FIN_STMT_ITM, LVL3_FIN_STMT_ITM, LVL4_FIN_STMT_ITM, LVL5_FIN_STMT_ITM, LVL6_FIN_STMT_ITM, LVL7_FIN_STMT_ITM,
        LVL8_FIN_STMT_ITM, LVL9_FIN_STMT_ITM, LVL10_FIN_STMT_ITM, LVL11_FIN_STMT_ITM, LVL12_FIN_STMT_ITM, LVL13_FIN_STMT_ITM, LVL14_FIN_STMT_ITM,
        LVL15_FIN_STMT_ITM, LVL16_FIN_STMT_ITM, LVL17_FIN_STMT_ITM, LVL18_FIN_STMT_ITM, LVL19_FIN_STMT_ITM, LVL20_FIN_STMT_ITM, LVL1_FIN_STMT_ITM_DESC,
        LVL2_FIN_STMT_ITM_DESC,LVL3_FIN_STMT_ITM_DESC,LVL4_FIN_STMT_ITM_DESC, LVL5_FIN_STMT_ITM_DESC,LVL6_FIN_STMT_ITM_DESC,LVL7_FIN_STMT_ITM_DESC,
        LVL8_FIN_STMT_ITM_DESC,LVL9_FIN_STMT_ITM_DESC,LVL10_FIN_STMT_ITM_DESC, LVL11_FIN_STMT_ITM_DESC,LVL12_FIN_STMT_ITM_DESC,LVL13_FIN_STMT_ITM_DESC,
        LVL14_FIN_STMT_ITM_DESC,LVL15_FIN_STMT_ITM_DESC,LVL16_FIN_STMT_ITM_DESC, LVL17_FIN_STMT_ITM_DESC, LVL18_FIN_STMT_ITM_DESC, LVL19_FIN_STMT_ITM_DESC,
        LVL20_FIN_STMT_ITM_DESC)
      SELECT z.FIN_STMT_VRSN, 'A', LVL_NBR+1, z.FIN_STMT_ID, 
              CONCAT(convert(char(4), s.KTOPL), s.SAKNR), 
        			z.LVL1_FIN_STMT_ITM,
        			case when LVL_NBR+1=2 then s.SAKNR else z.LVL2_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=3 then s.SAKNR else z.LVL3_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=4 then s.SAKNR else z.LVL4_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=5 then s.SAKNR else z.LVL5_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=6 then s.SAKNR else z.LVL6_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=7 then s.SAKNR else z.LVL7_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=8 then s.SAKNR else z.LVL8_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=9 then s.SAKNR else z.LVL9_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=10 then s.SAKNR else z.LVL10_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=11 then s.SAKNR else z.LVL11_FIN_STMT_ITM end, 
       		  	case when LVL_NBR+1=12 then s.SAKNR else z.LVL12_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=13 then s.SAKNR else z.LVL13_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=14 then s.SAKNR else z.LVL14_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=15 then s.SAKNR else z.LVL15_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=16 then s.SAKNR else z.LVL16_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=17 then s.SAKNR else z.LVL17_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=18 then s.SAKNR else z.LVL18_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=19 then s.SAKNR else z.LVL19_FIN_STMT_ITM end, 
        			case when LVL_NBR+1=20 then s.SAKNR else z.LVL20_FIN_STMT_ITM end, 
        			z.LVL1_FIN_STMT_ITM_DESC,
        			case when LVL_NBR+1=2 then t.TXT50 else z.LVL2_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=3 then t.TXT50 else z.LVL3_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=4 then t.TXT50 else z.LVL4_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=5 then t.TXT50 else z.LVL5_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=6 then t.TXT50 else z.LVL6_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=7 then t.TXT50 else z.LVL7_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=8 then t.TXT50 else z.LVL8_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=9 then t.TXT50 else z.LVL9_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=10 then t.TXT50 else z.LVL10_FIN_STMT_ITM_DESC end,
        			case when LVL_NBR+1=11 then t.TXT50 else z.LVL11_FIN_STMT_ITM_DESC end,
        			case when LVL_NBR+1=12 then t.TXT50 else z.LVL12_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=13 then t.TXT50 else z.LVL13_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=14 then t.TXT50 else z.LVL14_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=15 then t.TXT50 else z.LVL15_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=16 then t.TXT50 else z.LVL16_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=17 then t.TXT50 else z.LVL17_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=18 then t.TXT50 else z.LVL18_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=19 then t.TXT50 else z.LVL19_FIN_STMT_ITM_DESC end, 
        			case when LVL_NBR+1=20 then t.TXT50 else z.LVL20_FIN_STMT_ITM_DESC end
  	FROM [KEU_ECC].[dbo].SKA1 s, [KEU_ECC].[dbo].SKAT t, [KEU_ECC].[dbo].FAGL_011ZC l, [KEU_ECC].[STG].FIN_STMT_HIER_UNRVL z
  	WHERE z.NODE_TYP='H'
  	and s.KTOPL=t.KTOPL
  	and s.SAKNR=t.SAKNR 
  	and t.SPRAS='E'
  	and z.FIN_STMT_VRSN='ZPL2'
  	and z.FIN_STMT_VRSN=l.VERSN
  	and z.FIN_STMT_ITM=l.ERGSL
  	and s.KTOPL=l.KTOPL and s.SAKNR>=l.VONKT and s.SAKNR<=l.BISKT;
    COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
    	PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    					', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    					', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    					', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    					', Line ' + CONVERT(varchar(5), ERROR_LINE());
    	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    	THROW 60001, 'Stored Procedure Failed', 1;
	END CATCH;
	END;
END





GO
USE [master]
GO
ALTER DATABASE [KEU_ECC] SET  READ_WRITE 
GO
