USE [master]
GO
/****** Object:  Database [KEU_SALES]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE DATABASE [KEU_SALES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KEU_SALES', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KEU_SALES.mdf' , SIZE = 1536000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 512000KB )
 LOG ON 
( NAME = N'KEU_SALES_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KEU_SALES_log.ldf' , SIZE = 51200KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KEU_SALES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KEU_SALES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KEU_SALES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KEU_SALES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KEU_SALES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KEU_SALES] SET ARITHABORT OFF 
GO
ALTER DATABASE [KEU_SALES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KEU_SALES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KEU_SALES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_SALES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KEU_SALES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KEU_SALES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KEU_SALES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KEU_SALES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KEU_SALES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KEU_SALES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KEU_SALES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KEU_SALES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KEU_SALES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KEU_SALES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KEU_SALES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KEU_SALES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KEU_SALES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KEU_SALES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KEU_SALES] SET  MULTI_USER 
GO
ALTER DATABASE [KEU_SALES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KEU_SALES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KEU_SALES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KEU_SALES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KEU_SALES] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KEU_SALES', N'ON'
GO
USE [KEU_SALES]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R] WITH DEFAULT_SCHEMA=[US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 6:26:05 AM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 6:26:06 AM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 6:26:06 AM ******/
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
/****** Object:  Schema [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 6:26:07 AM ******/
CREATE SCHEMA [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  View [dbo].[UVW_CSL_DATA]    Script Date: 11/20/2018 6:26:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[UVW_CSL_DATA]
AS

SELECT   
		 UPPER(ISNULL(CL.REGION_NAME,'NA')) AS REGION
		,UPPER(ISNULL(CL.CLUSTER_NAME,'NA')) AS CLUSTER
		,UPPER(ISNULL(CL.ORG_NAME,'NA')) AS NODE_FULL_NAME
		,UPPER(BR.PROD_HIER_CATEGORY COLLATE DATABASE_DEFAULT) AS PRODUCT_CATEGORY_CODE
		,UPPER(t.[/BIC/ZALTCAT] COLLATE DATABASE_DEFAULT) AS PRODUCT_ALT_CAT_CODE
		,UPPER(ISNULL(ALT.CHRSTC_VAL,t.TXTSH) COLLATE DATABASE_DEFAULT) AS PRODUCT_CATEGORY_NAME
		,UPPER(ISNULL(CD.MEDIUM_DESC,'OTHERS')) AS MANUFACTURING_PLANT
		,UPPER(ISNULL(CD.PLNT_TXT,'OTHERS')) AS SHIPPING_PLANT
		,UPPER(ISNULL(CD.VNDR_TXT,'OTHERS')) AS FORWARDING_AGENT
		,UPPER(ISNULL(MAT.MATRL_DESC,'OTHERS')) AS SKU
		,UPPER(ISNULL(BR.PROD_HIER_BRAND_DESC,'OTHERS')COLLATE DATABASE_DEFAULT) AS BRAND_NAME
		,ISNULL(DD.DSCRPNCY_RSN_CODE,'NA') COLLATE DATABASE_DEFAULT AS DISCREPANCY_REASON
		,UPPER(ISNULL(CUD.LVL10_CUST_NM,'OTHERS')) AS CUSTOMER_NAME
		,UPPER(ISNULL(PAYER.NAME1 COLLATE DATABASE_DEFAULT,'OTHERS')) AS PAYER_NAME
		,UPPER(ISNULL(SHIP_TO_PARTY.NAME1 COLLATE DATABASE_DEFAULT,'OTHERS')) AS SHIP_TO_PARTY_NAME --SHIP_TO_NAME
		,UPPER(ISNULL(CUD2.LVL7_CUST_NM ,'OTHERS')) AS PLAN_TO_NAME
		,UPPER(CD.RSN_CODE) AS REASON_CODE
		,UPPER(CD.ISS_TYP) AS ISSUE_TYPE
		,CD.DSCRPNCY_QTY --CD.[ BIC Z_DISCQTY]
		,CD.TRGT_QTY_BASE_UOM --CD.[ BIC ZBTGTQTY]
		,CD.MISS_VOL_BASE_UOM --CD.[ BIC ZMISD_VOL]
		,CD.RECV_QTY --CD.[ BIC ZRCV_QTY]
		,CD.SHIPMNT_QTY --CD.[ BIC ZSHQTY]
		,CD.SALES_DOC_NBR --CD.DOC_NUMBER
		,CD.DELVRY_NBR --CD.DELIV_NUMB
		,CD.MATRL AS MATRL_ID --CD.MATERIAL AS MATERIAL_ID
		,CD.ACTV_GDS_ISS_DT --CD.ACT_GI_DTE
		,CD.FISCPD --CD.FISCPER
		,CD.CALWK --CD.CALWEEK
		,CD.FLG --CD.FLAG
		,CD.AGIPD --CD.[ BIC ZAGIPER]
		,CD.NO_STK --CD.NST
		,CD.DMG
		,CD.REFUSALS --CD.REF
		,CD.EXCL_SL --CD.EXC
		,CD.LOADING_ERR --CD.LOD
		,CD.OTHR --CD.OTH
		FROM KEU_BW.[dbo].CUST_SERV_LVL (NOLOCK) CD
		LEFT JOIN [KEU_EXTERNAL].[dbo].[CSL_CLUSTER_INFO] (NOLOCK) CL
		ON  CD.SALESORG =CL.SALESORG 

		LEFT JOIN KG_VIEWS.KEU.UVW_MATRL (NOLOCK) MAT
		ON RIGHT(CD.MATRL COLLATE DATABASE_DEFAULT,10)=RIGHT(MAT.MATRL_NBR COLLATE DATABASE_DEFAULT,10)

		LEFT JOIN KG_VIEWS.KEU.UVW_PROD_HIER BR on
		MAT.PROD_HIER COLLATE DATABASE_DEFAULT=BR.PROD_HIER COLLATE DATABASE_DEFAULT

		LEFT JOIN (SELECT DISTINCT LVL10_CUST_NBR,LVL10_CUST_NM FROM KG_VIEWS.KEU.UVW_CUST_HIER_UNRVL (NOLOCK)) CUD
		ON (CASE WHEN ISNUMERIC(CD.SOLD_TO_PARTY COLLATE DATABASE_DEFAULT)=0 THEN CD.SOLD_TO_PARTY COLLATE DATABASE_DEFAULT 
		ELSE CD.SOLD_TO_PARTY COLLATE DATABASE_DEFAULT END)=CUD.LVL10_CUST_NBR COLLATE DATABASE_DEFAULT

		LEFT JOIN (SELECT DISTINCT LVL7_CUST_NBR,LVL7_CUST_NM FROM KG_VIEWS.KEU.UVW_CUST_HIER_UNRVL (NOLOCK)) CUD2
		ON CD.PLN_TO COLLATE DATABASE_DEFAULT=CUD2.LVL7_CUST_NBR COLLATE DATABASE_DEFAULT

		LEFT JOIN KEU_BW.dbo.DSCRPNCY (NOLOCK) DD
		ON CD.DSCRPNCY_RSN_CODE COLLATE DATABASE_DEFAULT=DD.DSCRPNCY_RSN_CODE COLLATE DATABASE_DEFAULT

		LEFT JOIN KG_VIEWS.KEU.UVW_MATRL_CLASFCTN ALT on MAT.MATRL_NBR=ALT.MATRL_NBR
		and ALT.CLAS='ALT_PROD_HIERARCHY' and ALT.CHRSTC_NM='ALT_CATEGORY'

		LEFT OUTER JOIN KEU_BW.dbo.[TZALTCAT] t with (NOLOCK)
		on LEFT(MAT.PROD_HIER COLLATE DATABASE_DEFAULT,5)=t.[/BIC/ZALTCAT] COLLATE DATABASE_DEFAULT and t.LANGU COLLATE DATABASE_DEFAULT='E'

																	
		LEFT JOIN KEU_ECC.dbo.KNA1 (NOLOCK) PAYER
		ON  CD.PAYER COLLATE DATABASE_DEFAULT =PAYER.KUNNR COLLATE DATABASE_DEFAULT

		LEFT JOIN KEU_ECC.dbo.KNA1 (NOLOCK) SHIP_TO_PARTY
		ON CD.SHIP_TO_PARTY COLLATE DATABASE_DEFAULT =SHIP_TO_PARTY.KUNNR COLLATE DATABASE_DEFAULT

    	WHERE CD.RSN_FOR_RJCT NOT IN ('ZN','ZH','ZK','ZA','Z5','Z3','Z2','Z1','Z0')
    	AND (CD.[SOLD_TO_PARTY] NOT LIKE '%4490800%' OR CD.[SOLD_TO_PARTY] NOT LIKE '%4490000%')
    	AND CD.PLN_TO NOT IN ('IT6902','ES6902','FR6902','DE6904','IT6904','GB6904','DK6904','ES6904','FR6904','IE6904',
    	'NL6904','AT6905','BE6905','DK6905','FI6905','FR6905','DE6905','IT6905','NL6905','NO6905','IE6905','ES6905','CH6905',
    	'GB6905','DE6906','IT6906','NL6906','IE6906','ES6906','GB6906','BE6903','BE6907','DE6907','ES6903','FR6903','GB6032',
    	'GB6041','GB6043','GB6057','GB6080','GB6082','IT6903','NL6903')
    	AND CD.CUST_SUB_SUB_CHNL NOT IN ('0000662002','00002710029','00002710030','00002799713','00002799714','00006682176'
    	,'00006682177','00006682178','00006682179','00006706000','00006706001','00006706002','000006706100','00006706101','00006706102'
    	,'0000662010','0000800002','0000802002','0000802000')
	
	






GO
USE [master]
GO
ALTER DATABASE [KEU_SALES] SET  READ_WRITE 
GO
