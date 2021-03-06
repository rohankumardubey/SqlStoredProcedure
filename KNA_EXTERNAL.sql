USE [master]
GO
/****** Object:  Database [KNA_EXTERNAL]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE DATABASE [KNA_EXTERNAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_EXTERNAL', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_EXTERNAL.mdf' , SIZE = 143769600KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'KNA_EXTERNAL_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_EXTERNAL_log.ldf' , SIZE = 51276736KB , MAXSIZE = 2048GB , FILEGROWTH = 25600KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_EXTERNAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_EXTERNAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_EXTERNAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_EXTERNAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_EXTERNAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_EXTERNAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_EXTERNAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_EXTERNAL] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_EXTERNAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_EXTERNAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_EXTERNAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_EXTERNAL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_EXTERNAL', N'ON'
GO
USE [KNA_EXTERNAL]
GO
/****** Object:  User [US\USKWKJ01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\USKWKJ01] FOR LOGIN [US\USKWKJ01] WITH DEFAULT_SCHEMA=[US\USKWKJ01]
GO
/****** Object:  User [US\SQL_YIELD_RPT_USERS_R]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_YIELD_RPT_USERS_R] FOR LOGIN [US\SQL_YIELD_RPT_USERS_R]
GO
/****** Object:  User [US\SQL_SPCLTY_RMBSMT_USERS_R]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_SPCLTY_RMBSMT_USERS_R] FOR LOGIN [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
/****** Object:  User [US\SQL_KNA_EXTERNAL_USERS_R]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_KNA_EXTERNAL_USERS_R] FOR LOGIN [US\SQL_KNA_EXTERNAL_USERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE9]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE9] FOR LOGIN [US\SQL_DS_HYPERCARE9]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE7]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE7] FOR LOGIN [US\SQL_DS_HYPERCARE7]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE6]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE6] FOR LOGIN [US\SQL_DS_HYPERCARE6]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE4 ]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE4 ] FOR LOGIN [US\SQL_DS_HYPERCARE4]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE3]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE3] FOR LOGIN [US\SQL_DS_HYPERCARE3]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\SQL_CAPSIM_USERS_ADMIN]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [US\SQL_CAPSIM_USERS_ADMIN] FOR LOGIN [US\SQL_CAPSIM_USERS_ADMIN]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_ACCENTURE]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SQL_ACCENTURE] FOR LOGIN [SQL_ACCENTURE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKHXS06]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKHXS06] FOR LOGIN [SAS_USKHXS06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_SNKS_RETL_ANLYTC]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [SAS_SNKS_RETL_ANLYTC] FOR LOGIN [SAS_SNKS_RETL_ANLYTC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_YIELD_RPT_USERS_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KNA_EXTERNAL_USERS_R]
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
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_HYPERCARE6]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE6]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_HYPERCARE4 ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE4 ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE3]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_CAPSIM_USERS_ADMIN]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKHXS06]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKCRS01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_SNKS_RETL_ANLYTC]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [ANAPLAN]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [ANAPLAN]
GO
/****** Object:  Schema [AOD]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [AOD]
GO
/****** Object:  Schema [BW]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [BW]
GO
/****** Object:  Schema [ECC]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [ECC]
GO
/****** Object:  Schema [EMAIL_ECOMM]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [EMAIL_ECOMM]
GO
/****** Object:  Schema [INFOMETRICS]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [INFOMETRICS]
GO
/****** Object:  Schema [KEEP_SAFE]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [KEEP_SAFE]
GO
/****** Object:  Schema [ORCHESTRO]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [ORCHESTRO]
GO
/****** Object:  Schema [OTC_KPI]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [OTC_KPI]
GO
/****** Object:  Schema [RECLMNTN]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [RECLMNTN]
GO
/****** Object:  Schema [RTA]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [RTA]
GO
/****** Object:  Schema [SFDC]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [SFDC]
GO
/****** Object:  Schema [SIF]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [SIF]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Schema [SYSCO]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [SYSCO]
GO
/****** Object:  Schema [TDLINX]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [TDLINX]
GO
/****** Object:  Schema [TIBERSOFT]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [TIBERSOFT]
GO
/****** Object:  Schema [TRANSPLACE]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [TRANSPLACE]
GO
/****** Object:  Schema [US\USKWKJ01]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [US\USKWKJ01]
GO
/****** Object:  Schema [US_FOODS]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [US_FOODS]
GO
/****** Object:  Schema [USER_FIN]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [USER_FIN]
GO
/****** Object:  Schema [USER_GBS_OTC]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [USER_GBS_OTC]
GO
/****** Object:  Schema [USER_ODAG]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [USER_ODAG]
GO
/****** Object:  Schema [USER_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [USER_SALES]
GO
/****** Object:  Schema [USER_SC]    Script Date: 11/20/2018 5:44:12 PM ******/
CREATE SCHEMA [USER_SC]
GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_DELVRY_RSN_CODE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================================================================================
-- Author 		:	ANIL KUMAR KONDLA
-- Date   		:	02/22/2018
-- Description 	:	This Stored procedure Updates/Inserts the data from STG.DELVRY_RSN_CODE to USER_SC.DELVRY_RSN_CODE 
-- ======================================================================================================================

CREATE PROCEDURE [dbo].[USP_LOAD_DELVRY_RSN_CODE] AS

with CTE as 
(
SELECT ROW_NUMBER() OVER (PARTITION BY PRI_REF ORDER BY PRI_REF) as ROW_ID FROM
KNA_EXTERNAL.STG.[DELVRY_RSN_CODE]
)

delete FROM CTE 
WHERE ROW_ID <>1 

MERGE [USER_SC].[DELVRY_RSN_CODE] T
	USING [STG].[DELVRY_RSN_CODE] S WITH (NOLOCK)
ON S.PRI_REF = T.PRI_REF 

WHEN MATCHED THEN 

UPDATE SET
T.BUSINESS_UNIT		=S.BUSINESS_UNIT,
T.ME_CREATED_DATE	=S.ME_CREATED_DATE,
T.ORDER_TYPE		=S.ORDER_TYPE,
T.CUSTOMER		=S.CUSTOMER,
T.MODE_TYPE		=S.MODE_TYPE,
T.LANE			=S.LANE,
T.ORG_LOC_ID		=S.ORG_LOC_ID,
T.ORG_NAME		=S.ORG_NAME,
T.ORG_CITY		=S.ORG_CITY,
T.ORG_STATE		=S.ORG_STATE,
T.ORG_ZIP		=S.ORG_ZIP,
T.MODE_EXE		=S.MODE_EXE,
T.REC_LOC_ID		=S.REC_LOC_ID,
T.REC_NAME		=S.REC_NAME,
T.REC_CITY		=S.REC_CITY,
T.REC_STATE		=S.REC_STATE,
T.REC_ZIP		=S.REC_ZIP,
T.CAR_SCAC		=S.CAR_SCAC,
T.STOP_NBR		=S.STOP_NBR,
T.DID_APT_CHA		=S.DID_APT_CHA,
T.ANY_APT_CHA_CARR_FLT_CD=S.ANY_APT_CHA_CARR_FLT_CD,
T.NUM_TIM_TP_USR_CNGD_APT=S.NUM_TIM_TP_USR_CNGD_APT,
T.NAM_TP_USR_CHNG_APPTS	=S.NAM_TP_USR_CHNG_APPTS,
T.TP_USR_APT_CHNG_RESN	=S.TP_USR_APT_CHNG_RESN,
T.REQ_ERL_DEL_DT	=S.REQ_ERL_DEL_DT,
T.REQ_LAT_DEL_D		=S.REQ_LAT_DEL_D,
T.FST_CONF_APPT_RESET	=S.FST_CONF_APPT_RESET,
T.FST_CONF_APPT_DT	=S.FST_CONF_APPT_DT,
T.FST_CONF_APPT_RSET_RES_PTY=S.FST_CONF_APPT_RSET_RES_PTY,
T.FST_CONF_APPT_RESN	=S.FST_CONF_APPT_RESN,
T.LAT_CAR_APPT_DT	=S.LAT_CAR_APPT_DT,
T.MST_ARVE_BY_DT	=S.MST_ARVE_BY_DT,
T.ACT_DEL_DT		=S.ACT_DEL_DT,
T.ACT_DEL_DEP_DT	=S.ACT_DEL_DEP_DT,
T.CHE_CAL_RESN		=S.CHE_CAL_RESN,
T.CHE_CAL_RESN_RES_PTY	=S.CHE_CAL_RESN_RES_PTY,
T.MEA_SAT_ADJ_CNT	=S.MEA_SAT_ADJ_CNT,
T.SAT_ADJ_OT_CNT	=S.SAT_ADJ_OT_CNT,
T.SAT_ADJ_RESN		=S.SAT_ADJ_RESN,
T.SAT_ADJ_OT		=S.SAT_ADJ_OT,
T.MEAS_SAT_CNT		=S.MEAS_SAT_CNT,
T.SAT_OT_CNT		=S.SAT_OT_CNT,
T.SAT_OT		=S.SAT_OT,
T.MEAS_RAD_CNT		=S.MEAS_RAD_CNT,
T.RAD_OT_CNT		=S.RAD_OT_CNT,
T.RAD_ADJ_RESN		=S.RAD_ADJ_RESN,
T.RAD_OT		=S.RAD_OT,
T.MEAS_RAD_ADJ_CNT	=S.MEAS_RAD_ADJ_CNT,
T.RAD_ADJ_OT_CNT	=S.RAD_ADJ_OT_CNT,
T.RAD_ADJ_OT		=S.RAD_ADJ_OT,
T.MEAS_SAD_OT_CNT	=S.MEAS_SAD_OT_CNT,
T.SAD_OT_CNT		=S.SAD_OT_CNT,
T.SAD_OT		=S.SAD_OT,
T.MEAS_RAD_DN_OT_CNT	=S.MEAS_RAD_DN_OT_CNT,
T.RAD_DN_OT_CNT		=S.RAD_DN_OT_CNT,
T.RAD_AT_DN_OT		=S.RAD_AT_DN_OT,
T.WEEK			=S.WEEK,
T.PERIOD		=S.PERIOD,
T.STO_CLASS		=S.STO_CLASS,
T.CUST_CLASS		=S.CUST_CLASS,
T.ACT_SHIP_DT		=S.ACT_SHIP_DT,
T.DW_CRE_TS		=S.DW_CRE_TS,
T.DW_CRE_USR		=S.DW_CRE_USR,
T.DW_MOD_TS		=S.DW_MOD_TS,
T.DW_MOD_USR		=S.DW_MOD_USR,
T.DW_DEL_BIT		=S.DW_DEL_BIT,
T.DW_DEL_USR		=S.DW_DEL_USR,
T.DW_DEL_TS		=S.DW_DEL_TS
WHEN NOT MATCHED BY TARGET THEN 

INSERT(
BUSINESS_UNIT,
ME_CREATED_DATE,
ORDER_TYPE,
CUSTOMER,
MODE_TYPE,
LANE,
ORG_LOC_ID,
ORG_NAME,
ORG_CITY,
ORG_STATE,
ORG_ZIP,
REC_LOC_ID,
REC_NAME,
REC_CITY,
REC_STATE,
REC_ZIP,
MODE_EXE,
PRI_REF,
CAR_SCAC,
STOP_NBR,
DID_APT_CHA,
ANY_APT_CHA_CARR_FLT_CD,
NUM_TIM_TP_USR_CNGD_APT,
NAM_TP_USR_CHNG_APPTS,
TP_USR_APT_CHNG_RESN,
REQ_ERL_DEL_DT,
REQ_LAT_DEL_D,
FST_CONF_APPT_RESET,
FST_CONF_APPT_DT,
FST_CONF_APPT_RSET_RES_PTY,
FST_CONF_APPT_RESN,
LAT_CAR_APPT_DT,
MST_ARVE_BY_DT,
ACT_DEL_DT,
ACT_DEL_DEP_DT,
CHE_CAL_RESN,
CHE_CAL_RESN_RES_PTY,
MEA_SAT_ADJ_CNT,
SAT_ADJ_OT_CNT,
SAT_ADJ_RESN,
SAT_ADJ_OT,
MEAS_SAT_CNT,
SAT_OT_CNT,
SAT_OT,
MEAS_RAD_CNT,
RAD_OT_CNT,
RAD_ADJ_RESN,
RAD_OT,
MEAS_RAD_ADJ_CNT,
RAD_ADJ_OT_CNT,
RAD_ADJ_OT,
MEAS_SAD_OT_CNT,
SAD_OT_CNT,
SAD_OT,
MEAS_RAD_DN_OT_CNT,
RAD_DN_OT_CNT,
RAD_AT_DN_OT,
WEEK,
PERIOD,
STO_CLASS,
CUST_CLASS,
ACT_SHIP_DT,
DW_CRE_TS,
DW_CRE_USR,
DW_MOD_TS,
DW_MOD_USR,
DW_DEL_BIT,
DW_DEL_USR,
DW_DEL_TS

)
VALUES
(
S.BUSINESS_UNIT,
S.ME_CREATED_DATE,
S.ORDER_TYPE,
S.CUSTOMER,
S.MODE_TYPE,
S.LANE,
S.ORG_LOC_ID,
S.ORG_NAME,
S.ORG_CITY,
S.ORG_STATE,
S.ORG_ZIP,
S.REC_LOC_ID,
S.REC_NAME,
S.REC_CITY,
S.REC_STATE,
S.REC_ZIP,
S.MODE_EXE,
S.PRI_REF,
S.CAR_SCAC,
S.STOP_NBR,
S.DID_APT_CHA,
S.ANY_APT_CHA_CARR_FLT_CD,
S.NUM_TIM_TP_USR_CNGD_APT,
S.NAM_TP_USR_CHNG_APPTS,
S.TP_USR_APT_CHNG_RESN,
S.REQ_ERL_DEL_DT,
S.REQ_LAT_DEL_D,
S.FST_CONF_APPT_RESET,
S.FST_CONF_APPT_DT,
S.FST_CONF_APPT_RSET_RES_PTY,
S.FST_CONF_APPT_RESN,
S.LAT_CAR_APPT_DT,
S.MST_ARVE_BY_DT,
S.ACT_DEL_DT,
S.ACT_DEL_DEP_DT,
S.CHE_CAL_RESN,
S.CHE_CAL_RESN_RES_PTY,
S.MEA_SAT_ADJ_CNT,
S.SAT_ADJ_OT_CNT,
S.SAT_ADJ_RESN,
S.SAT_ADJ_OT,
S.MEAS_SAT_CNT,
S.SAT_OT_CNT,
S.SAT_OT,
S.MEAS_RAD_CNT,
S.RAD_OT_CNT,
S.RAD_ADJ_RESN,
S.RAD_OT,
S.MEAS_RAD_ADJ_CNT,
S.RAD_ADJ_OT_CNT,
S.RAD_ADJ_OT,
S.MEAS_SAD_OT_CNT,
S.SAD_OT_CNT,
S.SAD_OT,
S.MEAS_RAD_DN_OT_CNT,
S.RAD_DN_OT_CNT,
S.RAD_AT_DN_OT,
S.WEEK,
S.PERIOD,
S.STO_CLASS,
S.CUST_CLASS,
S.ACT_SHIP_DT,
S.DW_CRE_TS,
S.DW_CRE_USR,
S.DW_MOD_TS,
S.DW_MOD_USR,
S.DW_DEL_BIT,
S.DW_DEL_USR,
S.DW_DEL_TS
);


GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_INFOMETRICS_ACTL_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ============================================================================================
-- Name				:   USP_LOAD_INFOMETRICS_ACTL_SALES
-- Author			:	Ramadhyani, Venkatesh\Chandars
-- Create date		:	10/17/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data to [INFOMETRICS_ACTL_SALES] STAGE table to actual  KNA_EXTERNAL 
-- Comments			:
-- =============================================================================================

CREATE PROCEDURE    [dbo].[USP_LOAD_INFOMETRICS_ACTL_SALES] 
AS 
BEGIN
SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

	WITH CTE AS(
	SELECT
	  
       [DST_WHSE_NM]
      ,[RETL_CHN_NM]
      ,[CATG_CODE]
      ,[SUB_CATG_CODE]
      ,[SUB_BRAND]
	, [KLG_WHSE_NBR]
      ,[CASE_CODE]
      ,[WEEK]
      ,[OUTBND_USD_CUR_YR]
      ,[OUTBND_USD_PREV_YR]
      ,[LOAD_DT]
		FROM [KNA_EXTERNAL].[STG].[INFOMETRICS_ACTLS_SALES]
--		WHERE  [CASE_CODE] IS NOT NULL
         )

--		 SELECT * FROM  [dbo].[INFOMETRICS_ACTLS_SALES]

/* this MERGE JOIN Used to update if exist or insert if data not exist on INFOMETRICS_ACTL_SALES table based  on the MATERIAL and week */
     	
		MERGE [KNA_EXTERNAL].[INFOMETRICS].[INFOMETRICS_ACTLS_SALES] T
		USING CTE S WITH (NOLOCK)
		ON  T.[CASE_CODE]       = S.[CASE_CODE] 
		AND T.[WEEK]            = S.[WEEK]
		AND	T.[DST_WHSE_NM]	    = S.[DST_WHSE_NM] 
		AND	T.RETL_CHN_NM	    = S.[RETL_CHN_NM] 
		AND T.[KLG_WHSE_NBR]    = S.[KLG_WHSE_NBR]

		
		WHEN MATCHED THEN 	UPDATE   
		SET	    T.OUTBND_USD_CUR_YR	 = S.[OUTBND_USD_CUR_YR],
				T.OUTBND_USD_PREV_YR = S.[OUTBND_USD_PREV_YR],
				T.[CATG_CODE]			= S.[CATG_CODE],
		 T.[SUB_CATG_CODE]			= S.[SUB_CATG_CODE],
		 T.[SUB_BRAND]				= S.[SUB_BRAND],
		 T.[LOAD_DT]				= S.[LOAD_DT]
			  

		WHEN NOT MATCHED BY TARGET THEN INSERT(
				   
				  [DST_WHSE_NM]
				  ,[RETL_CHN_NM]
				  ,[CATG_CODE]
				  ,[SUB_CATG_CODE]
				  ,[SUB_BRAND]
				  ,[KLG_WHSE_NBR]
				  ,[CASE_CODE]
				  ,[WEEK]
				  ,[OUTBND_USD_CUR_YR]
				  ,[OUTBND_USD_PREV_YR]
				  ,[LOAD_DT]
				   )
		VALUES  (
				   
				  [DST_WHSE_NM]
				  ,[RETL_CHN_NM]
				  ,[CATG_CODE]
				  ,[SUB_CATG_CODE]
				  ,[SUB_BRAND]
				  ,[KLG_WHSE_NBR]
				  ,[CASE_CODE]
				  ,[WEEK]
				  ,[OUTBND_USD_CUR_YR]
				  ,[OUTBND_USD_PREV_YR]
				  ,[LOAD_DT]
				   );

 ----------End of exception handling------------------------
	 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SYSCO_NONRDC_FCST_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name:   USP_LOAD_SYSCO_NONRDC_FCST_INFO
-- Author:Ramadhyani, Venkatesh\Chandar
-- Create date:10/17/2017
-- Modified By:
-- Modified date:
-- Description: Load the data to [dbo].[SYSCO_NONRDC_FCST_INFO] STAGE to actual table in KNA_EXTERNAL 
-- Comments:
-- =============================================================================================


CREATE PROCEDURE  [dbo].[USP_LOAD_SYSCO_NONRDC_FCST_INFO] 

AS 
BEGIN
SET NOCOUNT ON;


SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

/* this MERGE JOIN Used to update if exist or insert if data not exist on SYSCO_NONRDC_FCST_INFO table based  on the Snap shot period, company number, Ship from SUVC , Material and Item Number */

			MERGE KNA_EXTERNAL.[SYSCO].[SYSCO_NONRDC_FCST_INFO] T
			USING KNA_EXTERNAL.STG.SYSCO_NONRDC_FCST_INFO S WITH (NOLOCK)
				ON  T.[SNP_SHT_PRD]=S.[SNP_SHT_PRD]
				AND T.[CMPNY_NBR]=S.[CMPNY_NBR]
				AND T.[SHP_FRM_SUVC]=S.[SHP_FRM_SUVC]
				AND T.[MATRL]=S.[MATRL]
				AND T.[ITM_NBR]=S.[ITM_NBR]

			WHEN MATCHED THEN UPDATE   SET

			T.[CMPNY_NM]            =S.[CMPNY_NM],
			T.[OPCO_ZIP_COD]        =S.[OPCO_ZIP_COD],
			T.[PAY_TO_SUVC]         =S.[PAY_TO_SUVC],
			T.[PAY_TO_SUPLR_NM]     =S.[PAY_TO_SUPLR_NM],
			T.[SHP_FRM_SUPLR_NM]    =S.[SHP_FRM_SUPLR_NM],
			T.[RDC_FLG]             =S.[RDC_FLG],
			T.[ADDR]                =S.[ADDR],
			T.[CITY]                =S.[CITY],
			T.[STATE]               =S.[STATE],
			T.[ZIP_COD]             =S.[ZIP_COD],
			T.[ITM_DESC]            =S.[ITM_DESC],
			T.[PACK]				=S.[PACK],
			T.[SIZE]				=S.[SIZE],
			T.[BRAND]			    =S.[BRAND],
			T.[ON_HAND_QTY]          =S.[ON_HAND_QTY],
			T.[TOT_CMTD_UNTS]       =S.[TOT_CMTD_UNTS],
			T.[ORDRD_QTY]           =S.[ORDRD_QTY],
			T.[WK_1]                =S.[WK_1],
			T.[WK_2]				=S.[WK_2],
			T.[WK_3]				=S.[WK_3],
			T.[WK_4]				=S.[WK_4],
			T.[WK_5]				=S.[WK_5],
			T.[WK_6]				=S.[WK_6],
			T.[WK_7]				=S.[WK_7],
			T.[WK_8]				=S.[WK_8],
			T.[WK_9]				=S.[WK_9],
			T.[WK_10]				=S.[WK_10],
			T.[WK_11]				=S.[WK_11],
			T.[WK_12]				=S.[WK_12],
			T.[WK_13]				=S.[WK_13],
			T.[WK_14]				=S.[WK_14],
			T.[WK_15]				=S.[WK_15],
			T.[WK_16]				=S.[WK_16],
			T.[WK_17]				=S.[WK_17],
			T.[WK_18]				=S.[WK_18],
			T.[WK_19]				=S.[WK_19],
			T.[WK_20]				=S.[WK_20],
			T.[WK_21]				=S.[WK_21],
			T.[WK_22]				=S.[WK_22],
			T.[WK_23]				=S.[WK_23],
			T.[WK_24]				=S.[WK_24],
			T.[WK_25]				=S.[WK_25],
			T.[LOAD_DT]				=S.[LOAD_DT]
		WHEN NOT MATCHED BY TARGET THEN INSERT(
	   [SNP_SHT_PRD]
      ,[CMPNY_NBR]
      ,[CMPNY_NM]
      ,[OPCO_ZIP_COD]
      ,[PAY_TO_SUVC]
      ,[PAY_TO_SUPLR_NM]
      ,[SHP_FRM_SUVC]
      ,[SHP_FRM_SUPLR_NM]
      ,[RDC_FLG]
      ,[ADDR]
      ,[CITY]
      ,[STATE]
      ,[ZIP_COD]
      ,[ITM_NBR]
      ,[ITM_DESC]
      ,[MATRL]
      ,[PACK]
      ,[SIZE]
      ,[BRAND]
      ,[ON_HAND_QTY]
      ,[TOT_CMTD_UNTS]
      ,[ORDRD_QTY]
      ,[WK_1]
      ,[WK_2]
      ,[WK_3]
      ,[WK_4]
      ,[WK_5]
      ,[WK_6]
      ,[WK_7]
      ,[WK_8]
      ,[WK_9]
      ,[WK_10]
      ,[WK_11]
      ,[WK_12]
      ,[WK_13]
      ,[WK_14]
      ,[WK_15]
      ,[WK_16]
      ,[WK_17]
      ,[WK_18]
      ,[WK_19]
      ,[WK_20]
      ,[WK_21]
      ,[WK_22]
      ,[WK_23]
      ,[WK_24]
      ,[WK_25]
      ,[LOAD_DT]
			   )
			VALUES  (
	   [SNP_SHT_PRD]
      ,[CMPNY_NBR]
      ,[CMPNY_NM]
      ,[OPCO_ZIP_COD]
      ,[PAY_TO_SUVC]
      ,[PAY_TO_SUPLR_NM]
      ,[SHP_FRM_SUVC]
      ,[SHP_FRM_SUPLR_NM]
      ,[RDC_FLG]
      ,[ADDR]
      ,[CITY]
      ,[STATE]
      ,[ZIP_COD]
      ,[ITM_NBR]
      ,[ITM_DESC]
      ,[MATRL]
      ,[PACK]
      ,[SIZE]
      ,[BRAND]
      ,[ON_HAND_QTY]
      ,[TOT_CMTD_UNTS]
      ,[ORDRD_QTY]
      ,[WK_1]
      ,[WK_2]
      ,[WK_3]
      ,[WK_4]
      ,[WK_5]
      ,[WK_6]
      ,[WK_7]
      ,[WK_8]
      ,[WK_9]
      ,[WK_10]
      ,[WK_11]
      ,[WK_12]
      ,[WK_13]
      ,[WK_14]
      ,[WK_15]
      ,[WK_16]
      ,[WK_17]
      ,[WK_18]
      ,[WK_19]
      ,[WK_20]
      ,[WK_21]
      ,[WK_22]
      ,[WK_23]
      ,[WK_24]
      ,[WK_25]
      ,[LOAD_DT]
			   );

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SYSCO_RDC_FCST_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name				:   USP_LOAD_SYSCO_RDC_FCST_INFO
-- Author			:	Ramadhyani, Venkatesh\Chandar
-- Create date		:	10/17/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data to [SYSCO_RDC_FCST_INFO] STAGE table  to actual table in KNA_EXTERNAL 
-- Comments			:
-- =============================================================================================


CREATE PROCEDURE  [dbo].[USP_LOAD_SYSCO_RDC_FCST_INFO] 

AS 
BEGIN
SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;
	

/* this MERGE JOIN Used to update if exist or insert if data not exist on SYSCO_RDC_FCST_INFO table based on the Snap shot period, company number, Ship from SUVC , Material and Item Number */
		
		MERGE KNA_EXTERNAL.[SYSCO].[SYSCO_RDC_FCST_INFO] T
		USING KNA_EXTERNAL.STG.SYSCO_RDC_FCST_INFO S WITH (NOLOCK)
		ON 	T.[SHP_SHT_PRD]			=	S.[SHP_SHT_PRD] AND	
			T.[CMPNY_NBR]			=	S.[CMPNY_NBR]AND	
			T.[SHP_FRM_SUVC]		=	S.[SHP_FRM_SUVC] AND 	
			T.[MATRL]				=	S.[MATRL]	AND
			T.[ITM_NBR]				=	S.[ITM_NBR]

		WHEN MATCHED THEN UPDATE   SET
			T.[CMPNY_NM]			= S.[CMPNY_NM],	
			T.[OPCO_ZIP_COD]		= S.[OPCO_ZIP_COD],
			T.[PAY_TO_SUVC]			= S.[PAY_TO_SUVC],
			T.[PAY_TO_SUPLR_NM]		= S.[PAY_TO_SUPLR_NM],
			T.[SHP_FRM_SUPLR_NM]	= S.[SHP_FRM_SUPLR_NM],
			T.[RDC_FLG]				= S.[RDC_FLG],
			T.[ADDR]				= S.[ADDR],
			T.[CTY]					= S.[CTY],
			T.[STATE]				= S.[STATE],
			T.[ZIP_CODE]			= S.[ZIP_CODE],
			T.[ITM_DESC]			= S.[ITM_DESC],
			T.[PACK]				= S.[PACK],
			T.[SIZE]				= S.[SIZE],
			T.[BRAND]				= S.[BRAND],
			T.[ON_HAND_QTY]			= S.[ON_HAND_QTY],
			T.[TOT_CMTD_UNTS]		= S.[TOT_CMTD_UNTS],
			T.[ORDRD_QTY]			= S.[ORDRD_QTY],
			T.[WK_1]				= S.[WK_1],
			T.[WK_2]				= S.[WK_2],
			T.[WK_3]				= S.[WK_3],
			T.[WK_4]				= S.[WK_4],
			T.[WK_5]				= S.[WK_5],
			T.[WK_6]				= S.[WK_6],
			T.[WK_7]				= S.[WK_7],
			T.[WK_8]				= S.[WK_8],
			T.[WK_9]				= S.[WK_9],
			T.[WK_10]				= S.[WK_10],
			T.[WK_11]				= S.[WK_11],
			T.[WK_12]				= S.[WK_12],
			T.[WK_13]				= S.[WK_13],
			T.[WK_14]				= S.[WK_14],
			T.[WK_15]				= S.[WK_15],
			T.[WK_16]				= S.[WK_16],
			T.[WK_17]				= S.[WK_17],
			T.[WK_18]				= S.[WK_18],
			T.[WK_19]				= S.[WK_19],
			T.[WK_20]				= S.[WK_20],
			T.[WK_21]				= S.[WK_21],
			T.[WK_22]				= S.[WK_22],
			T.[WK_23]				= S.[WK_23],
			T.[WK_24]				= S.[WK_24],
			T.[WK_25]				= S.[WK_25],
			T.[LOAD_DT]				= S.[LOAD_DT]

			  

		WHEN NOT MATCHED BY TARGET THEN INSERT(
			   [SHP_SHT_PRD]
			  ,[CMPNY_NBR]
			  ,[CMPNY_NM]
			  ,[OPCO_ZIP_COD]
			  ,[PAY_TO_SUVC]
			  ,[PAY_TO_SUPLR_NM]
			  ,[SHP_FRM_SUVC]
			  ,[SHP_FRM_SUPLR_NM]
			  ,[RDC_FLG]
			  ,[ADDR]
			  ,[CTY]
			  ,[STATE]
			  ,[ZIP_CODE]
			  ,[ITM_NBR]
			  ,[ITM_DESC]
			  ,[MATRL]
			  ,[PACK]
			  ,[SIZE]
			  ,[BRAND]
			  ,[ON_HAND_QTY]
			  ,[TOT_CMTD_UNTS]
			  ,[ORDRD_QTY]
			  ,[WK_1]
			  ,[WK_2]
			  ,[WK_3]
			  ,[WK_4]
			  ,[WK_5]
			  ,[WK_6]
			  ,[WK_7]
			  ,[WK_8]
			  ,[WK_9]
			  ,[WK_10]
			  ,[WK_11]
			  ,[WK_12]
			  ,[WK_13]
			  ,[WK_14]
			  ,[WK_15]
			  ,[WK_16]
			  ,[WK_17]
			  ,[WK_18]
			  ,[WK_19]
			  ,[WK_20]
			  ,[WK_21]
			  ,[WK_22]
			  ,[WK_23]
			  ,[WK_24]
			  ,[WK_25]
			  ,[LOAD_DT]
						   )
		VALUES  (
			   [SHP_SHT_PRD]
			  ,[CMPNY_NBR]
			  ,[CMPNY_NM]
			  ,[OPCO_ZIP_COD]
			  ,[PAY_TO_SUVC]
			  ,[PAY_TO_SUPLR_NM]
			  ,[SHP_FRM_SUVC]
			  ,[SHP_FRM_SUPLR_NM]
			  ,[RDC_FLG]
			  ,[ADDR]
			  ,[CTY]
			  ,[STATE]
			  ,[ZIP_CODE]
			  ,[ITM_NBR]
			  ,[ITM_DESC]
			  ,[MATRL]
			  ,[PACK]
			  ,[SIZE]
			  ,[BRAND]
			  ,[ON_HAND_QTY]
			  ,[TOT_CMTD_UNTS]
			  ,[ORDRD_QTY]
			  ,[WK_1]
			  ,[WK_2]
			  ,[WK_3]
			  ,[WK_4]
			  ,[WK_5]
			  ,[WK_6]
			  ,[WK_7]
			  ,[WK_8]
			  ,[WK_9]
			  ,[WK_10]
			  ,[WK_11]
			  ,[WK_12]
			  ,[WK_13]
			  ,[WK_14]
			  ,[WK_15]
			  ,[WK_16]
			  ,[WK_17]
			  ,[WK_18]
			  ,[WK_19]
			  ,[WK_20]
			  ,[WK_21]
			  ,[WK_22]
			  ,[WK_23]
			  ,[WK_24]
			  ,[WK_25]
          	  ,[LOAD_DT]
				   );

 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_USFOODS_SALS_FCST_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:   USP_LOAD_USFOODS_SALS_FCST_INFO
-- Author			:	Ramadhyani, Venkatesh\Chandars
-- Create date		:	10/17/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data from [USFOODS_SALS_FCST_INFO] STAGE table to target table in KNA_EXTERNAL 
-- Comments			:
-- =============================================================================================

CREATE PROCEDURE  [dbo].[USP_LOAD_USFOODS_SALS_FCST_INFO] 

AS 
BEGIN
SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;
  
/* This MERGE JOIN Used to update if exist or insert if data not exist on USFOODS_SALS_FCST_INFO table based  on the Snap shot period, Division Number, MFR Prod Number and Ship From Number */
     		
		MERGE KNA_EXTERNAL.[US_FOODS].[USFOODS_SALS_FCST_INFO] T
		USING KNA_EXTERNAL.[STG].[USFOODS_SALS_FCST_INFO] S WITH (NOLOCK)
			ON  T. [SNP_SHT_PRD]	=	S.[SNP_SHT_PRD]							
			AND T. [DVSN_NBR]	    =	S.[DVSN_NBR]						
			AND T. [MFR_PRD_NBR]	=   S.[MFR_PRD_NBR]						
			AND T. [SHP_FRM_NBR]	=	S.[SHP_FRM_NBR]				
				
		WHEN MATCHED THEN UPDATE   SET
			T.[A-SYS_CODE]		=S.[A-SYS_CODE]	,
			T.[PRD_DESC]		=S.[PRD_DESC]	,
			T.[RGN_NM]			=S.[RGN_NM]	,
			T.[DVSN_NM]			=S.[DVSN_NM]	,
			T.[PIM_GTIN]		=S.[PIM_GTIN]	,
			T.[ITM_STAT]		=S.[ITM_STAT]	,
			T.[PIM_MRCH_CT]		=S.[PIM_MRCH_CT]	,
			T.[PIM_BRND_TYP]	=S.[PIM_BRND_TYP]	,
			T.[CLS_DESC]		=S.[CLS_DESC]	,
			T.[CTG_DESC]		=S.[CTG_DESC]	,
			T.[BRAND]			=S.[BRAND]	,
			T.[SHP_FRM_NM]		=S.[SHP_FRM_NM]	,
			T.[SHP_FRM_CTY]		=S.[SHP_FRM_CTY]	,
			T.[SHP_FRM_ST]		=S.[SHP_FRM_ST]	,
			T.[PUR_VEN_DESC]    =S.[PUR_VEN_DESC]	,
			T.[PUR_VEN_NBR]     =S.[PUR_VEN_NBR]	,
			T.[WK_1]		    =S.[WK_1]	,
			T.[WK_2]		    =S.[WK_2]	,
			T.[WK_3]		    =S.[WK_3]	,
			T.[WK_4]		    =S.[WK_4]	,
			T.[WK_5]		    =S.[WK_5]	,
			T.[WK_6]		    =S.[WK_6]	,
			T.[WK_7]		    =S.[WK_7]	,
			T.[WK_8]		    =S.[WK_8]	,
			T.[WK_9]		    =S.[WK_9]	,
			T.[WK_10]			=S.[WK_10]	,
			T.[WK_11]			=S.[WK_11]	,
			T.[WK_12]			=S.[WK_12]	,
			T.[WK_13]			=S.[WK_13]	,
			T.[WK_14]			=S.[WK_14]	,
			T.[WK_15]			=S.[WK_15]	,
			T.[WK_16]			=S.[WK_16]	,
			T.[LOAD_DT]         =S.[LOAD_DT]

		WHEN NOT MATCHED BY TARGET THEN INSERT(
			   [SNP_SHT_PRD]
			  ,[A-SYS_CODE]
			  ,[PRD_DESC]
			  ,[RGN_NM]
			  ,[DVSN_NBR]
			  ,[DVSN_NM]
			  ,[MFR_PRD_NBR]
			  ,[PIM_GTIN]
			  ,[ITM_STAT]
			  ,[PIM_MRCH_CT]
			  ,[PIM_BRND_TYP]
			  ,[CLS_DESC]
			  ,[CTG_DESC]
			  ,[BRAND]
			  ,[SHP_FRM_NBR]
			  ,[SHP_FRM_NM]
			  ,[SHP_FRM_CTY]
			  ,[SHP_FRM_ST]
			  ,[PUR_VEN_DESC]
			  ,[ON_HAND]
			  ,[ON_ORDR]
			  ,[WKS_ON_HND_W/O_OPN_ORDR]
			  ,[WKS_ON_HND_WTH_OPN_ORDR]
			  ,[PUR_VEN_NBR]
			  ,[16_WK_QTY]
			  ,[WK_1]
			  ,[WK_2]
			  ,[WK_3]
			  ,[WK_4]
			  ,[WK_5]
			  ,[WK_6]
			  ,[WK_7]
			  ,[WK_8]
			  ,[WK_9]
			  ,[WK_10]
			  ,[WK_11]
			  ,[WK_12]
			  ,[WK_13]
			  ,[WK_14]
			  ,[WK_15]
			  ,[WK_16]
			  ,[LOAD_DT]
				   )
		VALUES  (
			   [SNP_SHT_PRD]
			  ,[A-SYS_CODE]
			  ,[PRD_DESC]
			  ,[RGN_NM]
			  ,[DVSN_NBR]
			  ,[DVSN_NM]
			  ,[MFR_PRD_NBR]
			  ,[PIM_GTIN]
			  ,[ITM_STAT]
			  ,[PIM_MRCH_CT]
			  ,[PIM_BRND_TYP]
			  ,[CLS_DESC]
			  ,[CTG_DESC]
			  ,[BRAND]
			  ,[SHP_FRM_NBR]
			  ,[SHP_FRM_NM]
			  ,[SHP_FRM_CTY]
			  ,[SHP_FRM_ST]
			  ,[PUR_VEN_DESC]
			  ,[ON_HAND]
			  ,[ON_ORDR]
			  ,[WKS_ON_HND_W/O_OPN_ORDR]
			  ,[WKS_ON_HND_WTH_OPN_ORDR]
			  ,[PUR_VEN_NBR]
			  ,[16_WK_QTY]
			  ,[WK_1]
			  ,[WK_2]
			  ,[WK_3]
			  ,[WK_4]
			  ,[WK_5]
			  ,[WK_6]
			  ,[WK_7]
			  ,[WK_8]
			  ,[WK_9]
			  ,[WK_10]
			  ,[WK_11]
			  ,[WK_12]
			  ,[WK_13]
			  ,[WK_14]
			  ,[WK_15]
			  ,[WK_16]
			  ,[LOAD_DT]);

 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_CALC_YIELD_MATRL_USAGE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_CALC_YIELD_MATRL_USAGE]
WITH EXEC AS CALLER
AS
BEGIN
	  SET NOCOUNT ON;
    DECLARE @lmatrl           varchar(18) --[KNA_ECC].[dbo].MARA.MATNR%type;      
    DECLARE @nLVL_ctr         smallint;  
    DECLARE @nrecs_inserted   int;                 
    DECLARE @nloop_ctr        smallint;  
    DECLARE @nloop_ctr2       smallint;                  
    DECLARE @v_sql            varchar(8000);

		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
   			    SET @v_sql='delete [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_CALC';
--                PRINT @v_sql;               
	          execute (@v_sql);
	        COMMIT TRANSACTION
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
      insert into KNA_EXTERNAL.STG.YIELD_MATRL_USAGE_CALC
        select d.FISC_YR, d.FISC_PD, d.PLANT_NBR, d.MATRL_NBR, d.CMPNT_MATRL_NBR, d.ACTL_QTY, d.TGT_QTY, 
               d.PRODCTN_QTY, d.STK_XFER_OUT_QTY, d.STK_XFER_IN_QTY, 
               s.SUM_ACTL_QTY, s.SUM_TGT_QTY, 
               CASE WHEN s.SUM_ACTL_QTY<>0 THEN d.ACTL_QTY/s.SUM_ACTL_QTY else 0 end as ACTL_USAGE_PCT, 
               CASE WHEN s.SUM_TGT_QTY <> 0 then d.TGT_QTY/s.SUM_TGT_QTY else 0 end as TGT_USAGE_PCT
--        into KNA_EXTERNAL.STG.YIELD_MATRL_USAGE_CALC
        from
        (select yu.[f0FISCYEAR:0FISCYEAR] as FISC_YR, substring(yu.[f0FISCPER:0FISCPER],5,3) as FISC_PD, yu.[f0PLANT:0PLANT] as PLANT_NBR, 
         yu.[f0MATERIAL:0MATERIAL] as MATRL_NBR, yu.[f0COMPONENT:0COMPONENT] as CMPNT_MATRL_NBR, 
         case when yu.[ACTUAL_QTY_UNIT:]<>'LB' and m.GEWEI='LB' then yu.[ACTUAL_QTY:0QUANTITY]*m.NTGEW else yu.[ACTUAL_QTY:0QUANTITY] end as ACTL_QTY, 
         case when yu.[TARGET_QTY_CRRNT_UNIT:]<>'LB' and m.GEWEI='LB' then yu.[TARGET_QTY_CRRNT:0QUANTITY]*m.NTGEW else yu.[TARGET_QTY_CRRNT:0QUANTITY] end as TGT_QTY,
         yi.PRODCTN_QTY,
         yi.STK_XFER_OUT_QTY,
         yi.STK_XFER_IN_QTY
        from KNA_EXTERNAL.dbo.YIELD_USAGE yu, KNA_ECC.dbo.MARA m, KG_VIEWS.KNA.UVW_YIELD_INVNTRY yi
        where yu.[f0COMPONENT:0COMPONENT]=m.MATNR COLLATE DATABASE_DEFAULT 
          and yu.[f0COMPONENT:0COMPONENT]=yi.MATRL_NBR
          and yu.[f0PLANT:0PLANT]=yi.PLANT_NBR
          and yu.[f0FISCYEAR:0FISCYEAR]=substring(yi.FISC_YR_PD,5,4)
          and substring(yu.[f0FISCPER:0FISCPER],5,3)=substring(yi.FISC_YR_PD,1,3)
        and m.MTART in ('HALB','FERT')) d,
        (select yu.[f0FISCYEAR:0FISCYEAR] as FISC_YR, substring(yu.[f0FISCPER:0FISCPER],5,3) as FISC_PD, 
        yu.[f0PLANT:0PLANT] as PLANT_NBR, yu.[f0COMPONENT:0COMPONENT] as CMPNT_MATRL_NBR, 
        sum(case when yu.[ACTUAL_QTY_UNIT:]<>'LB' and m.GEWEI='LB' then yu.[ACTUAL_QTY:0QUANTITY]*m.NTGEW else yu.[ACTUAL_QTY:0QUANTITY] end) as SUM_ACTL_QTY, 
        sum(case when yu.[TARGET_QTY_CRRNT_UNIT:]<>'LB' and m.GEWEI='LB' then yu.[TARGET_QTY_CRRNT:0QUANTITY]*m.NTGEW else yu.[TARGET_QTY_CRRNT:0QUANTITY] end) as SUM_TGT_QTY
        from KNA_EXTERNAL.dbo.YIELD_USAGE yu, KNA_ECC.dbo.MARA m
        where yu.[f0COMPONENT:0COMPONENT]=m.MATNR COLLATE DATABASE_DEFAULT
        and m.MTART in ('HALB','FERT')
        group by yu.[f0FISCYEAR:0FISCYEAR], substring(yu.[f0FISCPER:0FISCPER],5,3), yu.[f0PLANT:0PLANT], yu.[f0COMPONENT:0COMPONENT]) s
        where s.CMPNT_MATRL_NBR=d.CMPNT_MATRL_NBR
        and s.FISC_PD=d.FISC_PD
        and s.FISC_YR=d.FISC_YR
        and s.PLANT_NBR=d.PLANT_NBR        
        order by MATRL_NBR, CMPNT_MATRL_NBR;   
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
       SET @nLVL_ctr=1;
       WHILE @nLVL_ctr<20
	     BEGIN
               if @nLVL_ctr > 20
                  THROW 60005, 'LVLs_exceeded', 1;        
               SET @v_sql='update t1';
               SET @v_sql=concat(@v_sql,' SET t1.LVL', @nLVL_ctr+1, '_ACTL_USAGE_PCT=CASE WHEN t1.LST_LVL_NBR<>', @nLVL_ctr+1, ' or (t1.LST_LVL_NBR=', @nLVL_ctr+1, ' and t1.PARNT=''X'') then t2.ACTL_USAGE_PCT else 1 end,');
               SET @v_sql=concat(@v_sql,' t1.LST_LVL_ACTL_USAGE=t1.LST_LVL_ACTL_USAGE*CASE WHEN t1.LST_LVL_NBR<>', @nLVL_ctr+1, ' or (t1.LST_LVL_NBR=', @nLVL_ctr+1, ' and t1.PARNT=''X'') then t2.ACTL_USAGE_PCT else 1 end,');
               SET @v_sql=concat(@v_sql,' t1.LVL', @nLVL_ctr+1, '_TGT_USAGE_PCT=CASE WHEN t1.LST_LVL_NBR<>', @nLVL_ctr+1, ' or (t1.LST_LVL_NBR=', @nLVL_ctr+1, ' and t1.PARNT=''X'') then t2.TGT_USAGE_PCT else 1 end,');
               SET @v_sql=concat(@v_sql,' t1.LST_LVL_TGT_USAGE=t1.LST_LVL_TGT_USAGE*CASE WHEN t1.LST_LVL_NBR<>', @nLVL_ctr+1, ' or (t1.LST_LVL_NBR=', @nLVL_ctr+1, ' and t1.PARNT=''X'') then t2.TGT_USAGE_PCT else 1 end');
               SET @v_sql=concat(@v_sql,' FROM [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL as t1');
               SET @v_sql=concat(@v_sql,' join KNA_EXTERNAL.STG.YIELD_MATRL_USAGE_CALC as t2');
               SET @v_sql=concat(@v_sql,' on t1.LVL', @nLVL_ctr, '_MATRL_NBR=t2.MATRL_NBR and t1.LVL', @nLVL_ctr+1, '_MATRL_NBR=t2.CMPNT_MATRL_NBR');
               SET @v_sql=concat(@v_sql,' and t1.FISC_YR=t2.FISC_YR and t1.FISC_PD=t2.FISC_PD');
               PRINT @v_sql;  
               execute (@v_sql);
               SET @nLVL_ctr=@nLVL_ctr+1;
      END;
		   
    COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
				', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
				', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
				', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
				', Line ' + CONVERT(varchar(5), ERROR_LINE());
 	    IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        THROW 60006, 'Failed update', 1;
    END CATCH
 	  END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_FIN_ADJ_BUD_COP]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_FIN_ADJ_BUD_COP]
-- Author			:	George Hemmerling
-- Create date		:	09/14/2018
-- Description		:   Performs Table Maintenence on FIN_ADJ_BUD_COP	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_FIN_ADJ_BUD_COP]
AS
  BEGIN TRANSACTION FIN_ADJ_BUD_COP;
  
  DELETE [KNA_EXTERNAL].[USER_FIN].[FIN_ADJ_BUD_COP];  
  INSERT INTO [KNA_EXTERNAL].[USER_FIN].[FIN_ADJ_BUD_COP] SELECT * FROM [KNA_EXTERNAL].[STG].[FIN_ADJ_BUD_COP]  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION FIN_ADJ_BUD_COP;
END

COMMIT TRANSACTION FIN_ADJ_BUD_COP;
 







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_FIN_ADJ_BUD_GSV]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_FIN_ADJ_BUD_GSV]
-- Author			:	Wynter Johnson
-- Create date		:	03/18/2018
-- Description		:   Performs Table Maintenence on FIN_ADJ_BUD_GSV	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_FIN_ADJ_BUD_GSV]
AS
  BEGIN TRANSACTION FIN_ADJ_BUD_GSV;
  
  DELETE [KNA_EXTERNAL].[USER_FIN].[FIN_ADJ_BUD_GSV];  
  INSERT INTO [KNA_EXTERNAL].[USER_FIN].[FIN_ADJ_BUD_GSV] SELECT * FROM [KNA_EXTERNAL].[STG].[FIN_ADJ_BUD_GSV]  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION FIN_ADJ_BUD_GSV;
END

COMMIT TRANSACTION FIN_ADJ_BUD_GSV;
 





GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_FIN_ADJ_BUD_KG]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- ============================================================================================
-- Name				:	[dbo.USP_PROC_MAINT_FIN_ADJ_BUD_KG]
-- Author			:	Wynter Johnson
-- Create date		:	03/18/2018
-- Description		:   Performs Table Maintenence on FIN_ADJ_BUD_KG	
-- =============================================================================================

CREATE PROCEDURE [dbo].[USP_PROC_MAINT_FIN_ADJ_BUD_KG]
AS
  BEGIN TRANSACTION FIN_ADJ_BUD_KG;
  
  DELETE [KNA_EXTERNAL].[USER_FIN].[FIN_ADJ_BUD_KG];  
  INSERT INTO [KNA_EXTERNAL].[USER_FIN].[FIN_ADJ_BUD_KG] SELECT * FROM [KNA_EXTERNAL].[STG].[FIN_ADJ_BUD_KG]  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION FIN_ADJ_BUD_KG;
END

COMMIT TRANSACTION FIN_ADJ_BUD_KG;
 





GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_LOGDISPUTECASE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		Wynter Johnson
-- Create date: 11/2/2017
-- Description:	Maintain LOGDISPUTECASE
--              If Record Exists in the STG Table, Remove Data
--              from ECC Table.  Insert STG data into ECC Table.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_LOGDISPUTECASE]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
		BEGIN TRY
		BEGIN TRANSACTION
	
			INSERT INTO KNA_EXTERNAL.ECC.LOGDISPUTECASE
				select li.*
				from KNA_EXTERNAL.STG.LOGDISPUTECASE li
				left outer join KNA_EXTERNAL.ECC.LOGDISPUTECASE lo 
				on (li.[EXT_KEY]=lo.[EXT_KEY] or (li.[EXT_KEY] is null and lo.[EXT_KEY] is null))
				 and (li.[CASE_GUID]=lo.[CASE_GUID] or (li.[CASE_GUID] is null and lo.[CASE_GUID] is null))
				 and (li.[CHANGED_BY]=lo.[CHANGED_BY] or (li.[CHANGED_BY] is null and lo.[CHANGED_BY] is null))
				 and (li.[POID_ID]=lo.[POID_ID] or (li.[POID_ID] is null and lo.[POID_ID] is null))
				 and (li.[SY-DATUM]=lo.[SY-DATUM] or (li.[SY-DATUM] is null and lo.[SY-DATUM] is null))
				 and (li.[SY-UZEIT]=lo.[SY-UZEIT] or (li.[SY-UZEIT] is null and lo.[SY-UZEIT] is null))
				 and (li.[ARG_STRING]=lo.[ARG_STRING] or (li.[ARG_STRING] is null and lo.[ARG_STRING] is null))
				 and (li.[ARG1]=lo.[ARG1] or (li.[ARG1] is null and lo.[ARG1] is null))
				 and (li.[ARG2]=lo.[ARG2] or (li.[ARG2] is null and lo.[ARG2] is null))
				where lo.[EXT_KEY] is null and lo.[CASE_GUID] is null and lo.[CHANGED_BY] is null and lo.[POID_ID] is null
				  and lo.[SY-DATUM] is null and lo.[SY-UZEIT] is null and lo.[ARG_STRING] is null
				  and lo.[ARG1] is null and lo.[ARG2] is null;

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
			    THROW 60001, 'USP_PROC_MAINT_LOGDISPUTECASE Failed', 1;
		  END CATCH;
		END     
END;







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_SD57_SHIPMNT_PLN_TO_SUMRY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Wynter Johnson
-- Create date: 3/24/2017
-- Description:	Maintatin SD57_SHIPMNT_PLN_TO_SUMRY
--              If Week Data Exists in the STG Tables Remove Data
--              from BW Table.  Insert STG data into BW Table.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_SD57_SHIPMNT_PLN_TO_SUMRY]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KNA_EXTERNAL.BW.SD57_SHIPMNT_PLN_TO_SUMRY
            WHERE [CALWEEK:0CALWEEK] in
               ( SELECT distinct [CALWEEK:0CALWEEK] FROM KNA_EXTERNAL.STG.SD57_SHIPMNT_PLN_TO_SUMRY );

          INSERT INTO KNA_EXTERNAL.BW.SD57_SHIPMNT_PLN_TO_SUMRY
            SELECT *
            FROM KNA_EXTERNAL.STG.SD57_SHIPMNT_PLN_TO_SUMRY ;

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
			    THROW 60001, 'SD57_SHIPMNT_PLN_TO_SUMRY Maintenance Failed', 1;
		  END CATCH;
		END     
END;




GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_SHPMNT_COST_DOC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Miller, Mark>
-- Create date: <06/08/2017>
-- Description:	<Maintain Shipping Cost Document Data>
-- This stored procedure performs delete and inserts for period-to-date or full period data
-- loads from BODS for Canada (CA), US Inbound (US_IN) and US Outbound (US_OUT) data sources.
-- The premise is that all data for the data source and period will be removed and replaced
-- with the incoming data for the master table [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].
-- =============================================
-- Revision History
-- =============================================
-- Change:
-- Changed By:
-- Change Date:
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_SHPMNT_COST_DOC]
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
   SET NOCOUNT ON;
---==================================================================================================================
---   Store Procedure Logic
---==================================================================================================================
---   BODS will send over period-to-date (PTD) data from ZCOSTALOCX extract for 3 areas (US_OUT, US_IN and CA)
---   This process will
---			1 - delete for the source/period combination
---			2 - Append period-to-date (or historical full period) data into [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL] 
---			3 - Create staging table for total shipped quantities at the BOL Number and Order Number level
---			4 - Create staging table for total shipped quantities at the BOL Number level
---==================================================================================================================
---	  START PROCESS
---==================================================================================================================
BEGIN TRY
	SET XACT_ABORT ON;    --set xact_abort option
	BEGIN TRAN            --begin transaction
---==================================================================================================================
---				ZCOSTALOCX_US_IN - USA Inbound Shipments
---==================================================================================================================
		DELETE FROM [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL]
			   WHERE EXISTS (SELECT DISTINCT [ZCOSTALOCX Source],[Period] 
       							FROM [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_IN] WITH (NOLOCK)
								WHERE [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_IN].[ZCOSTALOCX Source] = [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].[ZCOSTALOCX Source]
								AND [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_IN].[Period] = [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].[Period])

			   INSERT INTO [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL] SELECT * FROM [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_IN] WITH (NOLOCK)
---==================================================================================================================
---				ZCOSTALOCX_US_OUT - USA Outbound Shipments
---==================================================================================================================
		DELETE FROM [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL]
			   WHERE EXISTS (SELECT DISTINCT [ZCOSTALOCX Source],[Period] 
       							FROM [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_OUT] WITH (NOLOCK)
								WHERE [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_OUT].[ZCOSTALOCX Source] = [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].[ZCOSTALOCX Source]
								AND [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_OUT].[Period] = [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].[Period])

			   INSERT INTO [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL] SELECT * FROM [KNA_EXTERNAL].[STG].[ZCOSTALOCX_US_OUT] WITH (NOLOCK)
---==================================================================================================================
---				ZCOSTALOCX_CA - Canada Shipments
---==================================================================================================================
		DELETE FROM [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL]
			   WHERE EXISTS (SELECT DISTINCT [ZCOSTALOCX Source],[Period] 
       							FROM [KNA_EXTERNAL].[STG].[ZCOSTALOCX_CA] WITH (NOLOCK)
								WHERE [KNA_EXTERNAL].[STG].[ZCOSTALOCX_CA].[ZCOSTALOCX Source] = [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].[ZCOSTALOCX Source]
								AND [KNA_EXTERNAL].[STG].[ZCOSTALOCX_CA].[Period] = [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL].[Period])

			   INSERT INTO [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL] SELECT * FROM [KNA_EXTERNAL].[STG].[ZCOSTALOCX_CA] WITH (NOLOCK)
---==================================================================================================================
---	  END PROCESS
---==================================================================================================================
	COMMIT TRAN           --commit transaction
END TRY
BEGIN CATCH
 
    IF @@TRANCOUNT > 0  --check if there are open transaction?
      ROLLBACK TRAN;    --rollback transaction
 
    THROW              
     
END CATCH



BEGIN TRY
	SET XACT_ABORT ON;    --set xact_abort option
 
	BEGIN TRAN            --begin transaction
---==================================================================================================================
---			Create table for total shipped quantities at the BOL Number, Order Number and SKU level
---==================================================================================================================
		IF OBJECT_ID ('[KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR_SKU]') IS NOT NULL
			DROP TABLE [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR_SKU];

		SELECT distinct [BOL_NBR] AS BOL_NBR
			,[ORDR_NBR] AS ORDR_NBR
			,[SKU_NBR] AS SKU_NBR
			,[GROS_WGT_LBS] AS GROS_WGT_LBS
			,[NET_WGT_LBS] AS NET_WGT_LBS
			,[SKU_UL] AS SKU_UL
			,[SKU_CUBE_SHIPD] AS SKU_CUBE_SHIPD
			,[PKG_UNIT] AS PKG_UNIT
		INTO [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR_SKU]
		FROM [KNA_SC].[dbo].[UVW_ZCOSTALOCX_DETL] WITH (NOLOCK)
---==================================================================================================================
---			Create table for total shipped quantities at the BOL and Order level
---==================================================================================================================
		IF OBJECT_ID ('[KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR]') IS NOT NULL
			DROP TABLE [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR];

		SELECT [BOL_NBR] AS BOL_NBR
			,[ORDR_NBR] AS ORDR_NBR
			,sum([GROS_WGT_LBS]) as GROS_WGT_LBS
			,sum([NET_WGT_LBS]) as NET_WGT_LBS
			,sum([SKU_UL]) as SKU_UL
			,sum([SKU_CUBE_SHIPD]) as SKU_CUBE_SHIPD
			,sum([PKG_UNIT]) as PKG_UNIT
		INTO [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR]
		FROM [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR_SKU] WITH (NOLOCK) group by BOL_NBR, ORDR_NBR
---==================================================================================================================
---			Create table for total shipped quantities at the BOL level
---==================================================================================================================
		IF OBJECT_ID ('[KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL]') IS NOT NULL
			DROP TABLE [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL];

		SELECT [BOL_NBR] AS BOL_NBR
			,sum([GROS_WGT_LBS]) as GROS_WGT_LBS
			,sum([NET_WGT_LBS]) as NET_WGT_LBS
			,sum([SKU_UL]) as SKU_UL
			,sum([SKU_CUBE_SHIPD]) as SKU_CUBE_SHIPD
			,sum([PKG_UNIT]) as PKG_UNIT
		INTO [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL]
		FROM [KNA_SC].[STG].[ZCOSTALOCX_TOTL_BOL_ORDR_SKU] WITH (NOLOCK) group by BOL_NBR
		
	COMMIT TRAN           --commit transaction
END TRY
BEGIN CATCH
 
    IF @@TRANCOUNT > 0  --check if there are open transaction?
      ROLLBACK TRAN;    --rollback transaction
 
    THROW              
     
END CATCH
---==================================================================================================================
---			Run Stored Procedure to create summary table for Tableau
---==================================================================================================================
EXECUTE [KNA_SC].[dbo].[USP_LOAD_SHPMNT_COST_DOC_SUMRY] 
---==================================================================================================================
---			End Of Stored Procedure
---==================================================================================================================
END



GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_YIELD_INVENTORY_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Wynter Johnson
-- Create date: 12/28/2016
-- Description:	Maintain YIELD_Data
--              If Period Data Exists in the STG Tables Remove Data
--              from dbo Tables.  Insert STG data into dbo Tables.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_YIELD_INVENTORY_DATA]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KNA_EXTERNAL.dbo.YIELD_INVENTORY
            WHERE CONCAT([f0FISCYEAR:0FISCYEAR],[f0FISCPER3:0FISCPER3]) in 
               ( select distinct CONCAT([f0FISCYEAR:0FISCYEAR],[f0FISCPER3:0FISCPER3]) FROM KNA_EXTERNAL.STG.YIELD_INVENTORY );
          INSERT INTO KNA_EXTERNAL.dbo.YIELD_INVENTORY
            SELECT *
            FROM   KNA_EXTERNAL.STG.YIELD_INVENTORY;

      COMMIT TRANSACTION;
      END TRY
      BEGIN CATCH
				PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
			    THROW 60001, 'Maintenance Failed', 1;
			    IF @@TRANCOUNT > 0
                    ROLLBACK TRANSACTION;
		  END CATCH;
		END     
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_YIELD_USAGE_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Wynter Johnson
-- Create date: 12/28/2016
-- Description:	Maintain YIELD_Data
--              If Period Data Exists in the STG Tables Remove Data
--              from dbo Tables.  Insert STG data into dbo Tables.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_YIELD_USAGE_DATA]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KNA_EXTERNAL.dbo.YIELD_USAGE
            WHERE [f0FISCPER:0FISCPER] in
               ( SELECT distinct [f0FISCPER:0FISCPER] FROM KNA_EXTERNAL.STG.YIELD_USAGE );

          INSERT INTO KNA_EXTERNAL.dbo.YIELD_USAGE
            SELECT *
            FROM   KNA_EXTERNAL.STG.YIELD_USAGE;

      COMMIT TRANSACTION;
      END TRY
      BEGIN CATCH
				PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
					  ', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
					  ', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
					  ', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
					  ', Line ' + CONVERT(varchar(5), ERROR_LINE());
			    THROW 60001, 'Maintenance Failed', 1;
			    IF @@TRANCOUNT > 0
                    ROLLBACK TRANSACTION;
		  END CATCH;
		END     
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PRG_SHPMNT_COST_DOC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Miller, Mark>
-- Create date: <06/08/2017>
-- Description:	<Purge History for Shipment Cost Document>
-- This stored procedure deletes records from the master SKU detail data for
-- Shipment Cost Document.  The [Period] field is varchar (6) in the format of 'yyyypp'
-- where yyyy is 4-digit Kellogg fiscal year
-- and pp is 2-digit Kellogg fiscal period
-- 
-- Initial BODS design is to keep current year + 2 years
-- When BODS job runs in January, it will trigger this stored procedure to delete
-- an entire fiscal year, passed in as @PURGE_YEAR and is used with a wildcard in the WHERE clause
-- =============================================
-- Revision History
-- =============================================
-- Change:
-- Changed By:
-- Change Date:
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_PRG_SHPMNT_COST_DOC] @PURGE_YEAR nvarchar(4)
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
   SET NOCOUNT ON;
BEGIN TRY
	SET XACT_ABORT ON;    --set xact_abort option
	BEGIN TRAN            --begin transaction
---==================================================================================================================
---			Delete all records based on the purge year parameter passed in
---==================================================================================================================
    DELETE FROM [KNA_EXTERNAL].[ECC].[ZCOSTALOCX_MSTR_SKU_DETL]
    WHERE [Period] Like @PURGE_YEAR + '%'
---==================================================================================================================
---			Commit Transaction
---==================================================================================================================
	COMMIT TRAN           --commit transaction
END TRY
BEGIN CATCH
 
    IF @@TRANCOUNT > 0  --check if there are open transaction?
      ROLLBACK TRAN;    --rollback transaction
 
    THROW              
     
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_UNRVL_YIELD_MATRL_USAGE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_UNRVL_YIELD_MATRL_USAGE]
WITH EXEC AS CALLER
AS
BEGIN
	  SET NOCOUNT ON;
    DECLARE @lmatrl           varchar(18) --[KNA_ECC].[dbo].MARA.MATNR%type;      
    DECLARE @nLVL_ctr         smallint;  
    DECLARE @nrecs_inserted   int;                 
    DECLARE @nloop_ctr        smallint;  
    DECLARE @nloop_ctr2       smallint;                  
    DECLARE @v_sql            varchar(8000);

		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
   			    SET @v_sql='delete [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL';
--                PRINT @v_sql;               
	          execute (@v_sql);
	    COMMIT TRANSACTION
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
        SET @v_sql='insert into [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL (FISC_YR, FISC_PD, PLANT_NBR, LVL1_MATRL_NBR, LST_LVL_MATRL_NBR, LST_LVL_NBR)';
        SET @v_sql=CONCAT(@v_sql, ' select distinct [f0FISCYEAR:0FISCYEAR], substring([f0FISCPER:0FISCPER],5,3),[f0PLANT:0PLANT], ');
        SET @v_sql=CONCAT(@v_sql, '                 [f0MATERIAL:0MATERIAL],[f0MATERIAL:0MATERIAL], 1');
        SET @v_sql=CONCAT(@v_sql, ' from [KNA_EXTERNAL].[dbo].YIELD_USAGE h');
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
               SET @v_sql='insert into [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL (FISC_YR, FISC_PD, PLANT_NBR, LVL1_MATRL_NBR, ';
               set @v_sql=concat(@v_sql,'LVL1_ACTL_QTY, LVL1_ACTL_QTY_UOM, LVL1_TGT_QTY, LVL1_TGT_QTY_UOM');
               SET @nloop_ctr=1;    
               WHILE @nloop_ctr<=@nLVL_ctr 
  			       BEGIN
                   SET @nloop_ctr2=@nloop_ctr+1;                   
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_MATRL_NBR');
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_ACTL_QTY');
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_ACTL_QTY_UOM');
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_TGT_QTY');
                   SET @v_sql=CONCAT(@v_sql, ', LVL', @nloop_ctr2, '_TGT_QTY_UOM');        				   
                   SET @nloop_ctr=@nloop_ctr+1;
               END;

               SET @v_sql=CONCAT(@v_sql, ', LST_LVL_MATRL_NBR, LST_LVL_NBR, LST_LVL_ACTL_USAGE, LST_LVL_TGT_USAGE)');
               SET @v_sql=CONCAT(@v_sql, ' select distinct ');  
               SET @v_sql=CONCAT(@v_sql, ' FISC_YR, FISC_PD, PLANT_NBR, ');   
      			   SET @nloop_ctr=1;    
               WHILE @nloop_ctr<=@nLVL_ctr
			         BEGIN                   
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_MATRL_NBR', ',');
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_ACTL_QTY', ',');
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_ACTL_QTY_UOM', ',');
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_TGT_QTY', ',');
                   SET @v_sql=CONCAT(@v_sql, 't.LVL', @nloop_ctr, '_TGT_QTY_UOM', ',');
				           SET @nloop_ctr=@nloop_ctr+1;
               END;
               SET @nloop_ctr=@nLVL_ctr + 1;
               SET @v_sql=CONCAT(@v_sql, ' h.[f0COMPONENT:0COMPONENT], ');
               SET @v_sql=CONCAT(@v_sql, ' case when h.[ACTUAL_QTY_UNIT:]=''LB'' then h.[ACTUAL_QTY:0QUANTITY]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[ACTUAL_QTY_UNIT:] and m.NTGEW<>0 then h.[ACTUAL_QTY:0QUANTITY]*m.NTGEW ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[ACTUAL_QTY_UNIT:] and m.NTGEW=0 then h.[ACTUAL_QTY:0QUANTITY]  ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]=''KG'' then ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[ACTUAL_QTY_UNIT:], ''LB''), h.[ACTUAL_QTY:0QUANTITY])');
               SET @v_sql=CONCAT(@v_sql, '      else ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[ACTUAL_QTY_UNIT:], m.MEINS)*m.NTGEW, h.[ACTUAL_QTY:0QUANTITY]) ');
               SET @v_sql=CONCAT(@v_sql, ' end,');
               SET @v_sql=CONCAT(@v_sql, ' case when h.[ACTUAL_QTY_UNIT:]=''LB'' then h.[ACTUAL_QTY_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[ACTUAL_QTY_UNIT:] and m.NTGEW<>0 then m.GEWEI COLLATE DATABASE_DEFAULT');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[ACTUAL_QTY_UNIT:] and m.NTGEW=0 then h.[ACTUAL_QTY_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]=''KG'' and KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[ACTUAL_QTY_UNIT:], ''LB'') is not null then ''LB''');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]=''KG'' then h.[ACTUAL_QTY_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, '      when KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[ACTUAL_QTY_UNIT:], m.MEINS) is not null then ''LB''');
               SET @v_sql=CONCAT(@v_sql, '      else h.[ACTUAL_QTY_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, ' end, ');               
               SET @v_sql=CONCAT(@v_sql, ' case when h.[TARGET_QTY_CRRNT_UNIT:]=''LB'' then h.[TARGET_QTY_CRRNT:0QUANTITY]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[TARGET_QTY_CRRNT_UNIT:] and m.NTGEW<>0 then h.[TARGET_QTY_CRRNT:0QUANTITY]*m.NTGEW ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[TARGET_QTY_CRRNT_UNIT:] and m.NTGEW=0 then h.[TARGET_QTY_CRRNT:0QUANTITY]  ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]=''KG'' then ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[TARGET_QTY_CRRNT:0QUANTITY], h.[ACTUAL_QTY_UNIT:], ''LB''), h.[TARGET_QTY_CRRNT:0QUANTITY])');
               SET @v_sql=CONCAT(@v_sql, '      else ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[TARGET_QTY_CRRNT:0QUANTITY], h.[ACTUAL_QTY_UNIT:], m.MEINS)*m.NTGEW, h.[TARGET_QTY_CRRNT:0QUANTITY]) ');
               SET @v_sql=CONCAT(@v_sql, ' end,');
               SET @v_sql=CONCAT(@v_sql, ' case when h.[TARGET_QTY_CRRNT_UNIT:]=''LB'' then h.[TARGET_QTY_CRRNT_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[TARGET_QTY_CRRNT_UNIT:] and m.NTGEW<>0 then m.GEWEI COLLATE DATABASE_DEFAULT');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[TARGET_QTY_CRRNT_UNIT:] and m.NTGEW=0 then h.[TARGET_QTY_CRRNT_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]=''KG'' and KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[TARGET_QTY_CRRNT:0QUANTITY], h.[TARGET_QTY_CRRNT_UNIT:], ''LB'') is not null then ''LB''');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]=''KG'' then h.[TARGET_QTY_CRRNT_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, '      when KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[TARGET_QTY_CRRNT_UNIT:], m.MEINS) is not null then ''LB''');
               SET @v_sql=CONCAT(@v_sql, '      else h.[TARGET_QTY_CRRNT_UNIT:]');
               SET @v_sql=CONCAT(@v_sql, ' end, ');  
               SET @v_sql=CONCAT(@v_sql, ' h.[f0COMPONENT:0COMPONENT], ', @nloop_ctr, ', ');
               SET @v_sql=CONCAT(@v_sql, ' case when h.[ACTUAL_QTY_UNIT:]=''LB'' then h.[ACTUAL_QTY:0QUANTITY]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[ACTUAL_QTY_UNIT:] and m.NTGEW<>0 then h.[ACTUAL_QTY:0QUANTITY]*m.NTGEW ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[ACTUAL_QTY_UNIT:] and m.NTGEW=0 then h.[ACTUAL_QTY:0QUANTITY]  ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[ACTUAL_QTY_UNIT:]=''KG'' then ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[ACTUAL_QTY_UNIT:], ''LB''), h.[ACTUAL_QTY:0QUANTITY])');
               SET @v_sql=CONCAT(@v_sql, '      else ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[ACTUAL_QTY:0QUANTITY], h.[ACTUAL_QTY_UNIT:], m.MEINS)*m.NTGEW, h.[ACTUAL_QTY:0QUANTITY]) ');
               SET @v_sql=CONCAT(@v_sql, ' end,');
               SET @v_sql=CONCAT(@v_sql, ' case when h.[TARGET_QTY_CRRNT_UNIT:]=''LB'' then h.[TARGET_QTY_CRRNT:0QUANTITY]');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[TARGET_QTY_CRRNT_UNIT:] and m.NTGEW<>0 then h.[TARGET_QTY_CRRNT:0QUANTITY]*m.NTGEW ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]<>''LB'' and m.GEWEI=''LB'' and m.MEINS COLLATE DATABASE_DEFAULT=h.[TARGET_QTY_CRRNT_UNIT:] and m.NTGEW=0 then h.[TARGET_QTY_CRRNT:0QUANTITY]  ');
               SET @v_sql=CONCAT(@v_sql, '      when h.[TARGET_QTY_CRRNT_UNIT:]=''KG'' then ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[TARGET_QTY_CRRNT:0QUANTITY], h.[ACTUAL_QTY_UNIT:], ''LB''), h.[TARGET_QTY_CRRNT:0QUANTITY])');
               SET @v_sql=CONCAT(@v_sql, '      else ISNULL(KNA_EXTERNAL.[dbo].[convert_mult_qty_uom_kna] (h.[f0MATERIAL:0MATERIAL], h.[TARGET_QTY_CRRNT:0QUANTITY], h.[ACTUAL_QTY_UNIT:], m.MEINS)*m.NTGEW, h.[TARGET_QTY_CRRNT:0QUANTITY]) ');
               SET @v_sql=CONCAT(@v_sql, ' end');
               SET @v_sql=CONCAT(@v_sql, ' from [KNA_EXTERNAL].[dbo].YIELD_USAGE h, [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL  t, ');
               SET @v_sql=CONCAT(@v_sql, '      [KNA_ECC].[dbo].MARA m ');
               SET @v_sql=CONCAT(@v_sql, ' where h.[f0MATERIAL:0MATERIAL]=t.LVL', @nLVL_ctr, '_MATRL_NBR ');
               SET @v_sql=CONCAT(@v_sql, '   and h.[f0COMPONENT:0COMPONENT] is not null ');
               SET @v_sql=CONCAT(@v_sql, '   and h.[f0COMPONENT:0COMPONENT]=m.MATNR COLLATE DATABASE_DEFAULT ');
        	     SET @v_sql=CONCAT(@v_sql, '	 and h.[f0COMPONENT:0COMPONENT]<>t.LVL', @nLVL_ctr, '_MATRL_NBR ');				  
        	     SET @v_sql=CONCAT(@v_sql, '	 and t.FISC_YR=h.[f0FISCYEAR:0FISCYEAR] and t.FISC_PD=substring(h.[f0FISCPER:0FISCPER],5,3) and t.PLANT_NBR=h.[f0PLANT:0PLANT]');				  
--               PRINT @v_sql;  
----			  if @nLVL_ctr<9   
----				  begin             
  					  execute (@v_sql);
  					  SET @nrecs_inserted=@@ROWCOUNT;
--  					  PRINT @nrecs_inserted
----				  end
----              else
----			      SET @nrecs_inserted=0;
          END;
		   
    COMMIT TRANSACTION
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

  BEGIN
	  BEGIN TRY
	  BEGIN TRANSACTION
       SELECT @nLVL_ctr=MAX(LST_LVL_NBR) from [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL;
--       PRINT @nLVL_ctr;
       WHILE @nLVL_ctr > 0
       BEGIN
          set @v_sql='update mm';
          set @v_sql=CONCAT(@v_sql, ' set PARNT=''X'' ');
          set @v_sql=CONCAT(@v_sql, ' from [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL mm');
          set @v_sql=CONCAT(@v_sql, ' join (SELECT m.LST_LVL_NBR, m.FISC_YR, m.FISC_PD, m.PLANT_NBR,'); 
      		SET @nloop_ctr=1; 
          WHILE @nloop_ctr<=@nLVL_ctr
			    BEGIN                   
              SET @v_sql=CONCAT(@v_sql, 'm.LVL', @nloop_ctr, '_MATRL_NBR', ',');
				      SET @nloop_ctr=@nloop_ctr+1;
          END;
          set @v_sql=CONCAT(@v_sql, ' count(*) as cnt');
          set @v_sql=CONCAT(@v_sql, ' FROM [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL m, ');
          set @v_sql=CONCAT(@v_sql, '      [KNA_EXTERNAL].[STG].YIELD_MATRL_USAGE_UNRVL m2 ');
          set @v_sql=CONCAT(@v_sql, ' where m.LST_LVL_NBR=', @nLVL_ctr);
          set @v_sql=CONCAT(@v_sql, '   and m2.LST_LVL_NBR=m.LST_LVL_NBR+1');
          set @v_sql=CONCAT(@v_sql, '   and m.FISC_YR=m2.FISC_YR');
          set @v_sql=CONCAT(@v_sql, '   and m.FISC_PD=m2.FISC_PD');
          set @v_sql=CONCAT(@v_sql, '   and m.PLANT_NBR=m2.PLANT_NBR');
      		SET @nloop_ctr=1;    
          WHILE @nloop_ctr<=@nLVL_ctr
			    BEGIN                   
              SET @v_sql=CONCAT(@v_sql, ' and m.LVL', @nloop_ctr, '_MATRL_NBR', '=m2.LVL', @nloop_ctr, '_MATRL_NBR');
				      SET @nloop_ctr=@nloop_ctr+1;
          END;
          set @v_sql=CONCAT(@v_sql, '   GROUP by m.LST_LVL_NBR, m.FISC_YR, m.FISC_PD, m.PLANT_NBR ');
      		SET @nloop_ctr=1;    
          WHILE @nloop_ctr<=@nLVL_ctr
			    BEGIN                   
              SET @v_sql=CONCAT(@v_sql, ', m.LVL', @nloop_ctr, '_MATRL_NBR');
				      SET @nloop_ctr=@nloop_ctr+1;
          END;
          set @v_sql=CONCAT(@v_sql, ') x on mm.LST_LVL_NBR=x.LST_LVL_NBR');
          set @v_sql=CONCAT(@v_sql, '    and mm.FISC_YR=x.FISC_YR');
          set @v_sql=CONCAT(@v_sql, '    and mm.FISC_PD=x.FISC_PD');
          set @v_sql=CONCAT(@v_sql, '    and mm.PLANT_NBR=x.PLANT_NBR');
      		SET @nloop_ctr=1;    
          WHILE @nloop_ctr<=@nLVL_ctr
			    BEGIN                   
              SET @v_sql=CONCAT(@v_sql, ' and mm.LVL', @nloop_ctr, '_MATRL_NBR', '=x.LVL', @nloop_ctr, '_MATRL_NBR');
				      SET @nloop_ctr=@nloop_ctr+1;
          END;
--          PRINT @v_sql
  	    	execute (@v_sql);
          SET  @nLVL_ctr=@nLVL_ctr-1;
      END;
      COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
		PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
				', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
				', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
				', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
				', Line ' + CONVERT(varchar(5), ERROR_LINE());
 	    IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        THROW 60006, 'Failed update', 1;
    END CATCH
	END

END

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_YIELD_RPT_SUMRY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PROC_YIELD_RPT_SUMRY]
WITH EXEC AS CALLER
AS
BEGIN
	SET NOCOUNT ON;

  -- store UVW_YIELD_USAGE in a temporary table for performance reasons
  select * into #UVW_YIELD_USAGE FROM [KG_VIEWS].[KNA].[UVW_YIELD_USAGE];
 
  CREATE INDEX UVW_YIELD_USAGE_IX ON #UVW_YIELD_USAGE(FISC_YR_PD, PLANT_NBR, MATRL_NBR);

  -- store UVW_YIELD_INVNTRY in a temporary table for performance reasons
  select * into #UVW_YIELD_INVNTRY FROM [KG_VIEWS].[KNA].[UVW_YIELD_INVNTRY];
 
  CREATE INDEX UVW_YIELD_USAGE_IX ON #UVW_YIELD_INVNTRY(FISC_YR_PD, PLANT_NBR, MATRL_NBR);


  -- create unique id
  select 
  pbu.FIN_BU, yi.[PLANT_NBR], yi.[FISC_YR_PD], yi.[MATRL_NBR], yi.[MATRL_GRP], yi.[MATRL_DESC], yi.[PRC],
  yi.[PRC_CURR], yi.[PRC_UOM], yi.[BEG_INVNTRY_QTY],  yi.[BEG_INVNTRY_QTY_UOM], yi.[END_INVNTRY_QTY],
  yi.[END_INVNTRY_QTY_UOM], yi.[RCPT_QTY], yi.[RCPT_QTY_UOM], yi.[STOK_TRNSFR_QTY],
  yi.[STOK_TRNSFR_QTY_UOM], yi.[MATRL_TYP], yu.[FNL_MATRL_NBR], yu.[FNL_MATRL_DESC], yu.[FNL_MATRL_TYP],
  yu.[ACTL_USAGE], yu.[TGT_USAGE], yu.[FNL_MATRL_PRDCTN_QTY], yu.[FNL_MATRL_PRDCTN_QTY_UOM], yu.[FNL_MATRL_NET_WGT], yu.[FNL_MATRL_WGT_UOM],
  p.REGN, p.CITY, p.PLANT_NM
  INTO #YIELD_RPT_SUMRY
  FROM #UVW_YIELD_INVNTRY yi
  join [KG_VIEWS].[KNA].[UVW_PLANT] p on yi.PLANT_NBR=p.PLANT_NBR collate DATABASE_DEFAULT
  join [KG_VIEWS].[KNA].[UVW_PLANT_FIN_BU] pbu on yi.PLANT_NBR=pbu.PLANT_NBR collate DATABASE_DEFAULT
  left outer join #UVW_YIELD_USAGE yu on yi.FISC_YR_PD=yu.FISC_YR_PD and yi.PLANT_NBR=yu.PLANT_NBR and yi.MATRL_NBR=yu.MATRL_NBR
  WHERE (yi.MATRL_TYP='ROH' or 
        (yi.MATRL_TYP in ('HALB','FERT') and yi.MATRL_NBR in 
        (SELECT MATRL_NBR FROM #UVW_YIELD_USAGE)))
    and yi.[MATRL_NBR]<>yu.[FNL_MATRL_NBR]  
--  WHERE yi.PLANT_NBR='0301' and yi.FISC_YR_PD='001/2016' and (yi.MATRL_NBR in ('R000130150',' R000110350') or FNL_MATRL_NBR in ('000000003010005314', '000000003010025033'))
  ORDER BY yi.MATRL_NBR, yu.FNL_MATRL_NBR;

  alter table #YIELD_RPT_SUMRY
  add rownum int identity(1,1);

  CREATE INDEX YIELD_RPT_SUMRY_IX ON #YIELD_RPT_SUMRY(FISC_YR_PD, PLANT_NBR, MATRL_NBR, rownum);

  begin try drop table STG.YIELD_RPT_SUMRY end try
  begin catch end catch;

  select main.FIN_BU, main.[PLANT_NBR], main.[FISC_YR_PD], main.[MATRL_NBR], main.[MATRL_GRP], main.[MATRL_DESC], main.[PRC],
  main.[PRC_CURR], main.[PRC_UOM], 
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[BEG_INVNTRY_QTY] end as [BEG_INVNTRY_QTY],  
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[BEG_INVNTRY_QTY_UOM] end as [BEG_INVNTRY_QTY_UOM], 
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[END_INVNTRY_QTY] end as [END_INVNTRY_QTY],
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[END_INVNTRY_QTY_UOM] end as [END_INVNTRY_QTY_UOM], 
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[RCPT_QTY] end as [RCPT_QTY], 
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[RCPT_QTY_UOM] end as [RCPT_QTY_UOM], 
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[STOK_TRNSFR_QTY] end as [STOK_TRNSFR_QTY],
  CASE WHEN main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR and main.rownum=keym.mrw then main.[STOK_TRNSFR_QTY_UOM] end as [STOK_TRNSFR_QTY_UOM], 
  main.[MATRL_TYP], main.[FNL_MATRL_NBR], main.[FNL_MATRL_DESC], main.[FNL_MATRL_TYP],
  main.[ACTL_USAGE], main.[TGT_USAGE], main.[FNL_MATRL_PRDCTN_QTY], main.[FNL_MATRL_PRDCTN_QTY_UOM], main.[FNL_MATRL_NET_WGT],main.[FNL_MATRL_WGT_UOM],  main.REGN, main.CITY, main.PLANT_NM
  INTO STG.YIELD_RPT_SUMRY
  from #YIELD_RPT_SUMRY main
  LEFT OUTER JOIN (select FISC_YR_PD, PLANT_NBR, MATRL_NBR, min(rownum) as mrw
                  from #YIELD_RPT_SUMRY
                  GROUP BY FISC_YR_PD, PLANT_NBR, MATRL_NBR) keym on main.FISC_YR_PD=keym.FISC_YR_PD and main.PLANT_NBR=keym.PLANT_NBR and main.MATRL_NBR=keym.MATRL_NBR

  DROP TABLE #YIELD_RPT_SUMRY;
  DROP TABLE #UVW_YIELD_USAGE;

END;

GO
/****** Object:  StoredProcedure [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_ALLIED]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[RECLMNTN.USP_PROC_MAINT_CA_UNSALEABLS_ALLIED]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_ALLIED]
AS
  BEGIN TRANSACTION CA_UNSALEABLS_ALLIED;
  
  DELETE FROM [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_ALLIED]  WHERE FILE_PD IN (SELECT DISTINCT FISC_PD FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_ALLIED])
															AND FILE_YR IN (SELECT DISTINCT FISC_YR FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_ALLIED])
	 INSERT INTO [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_ALLIED] (
  [InvoiceID]
      ,[PeriodStartDate]
      ,[PeriodEndDate]
      ,[Distributor]
      ,[Period]
      ,[ManufacturerCompanyName]
      ,[ManufacturerNumber]
      ,[Location]
      ,[InvoiceNumber]
      ,[UPC]
      ,[ProductDescription]
      ,[CausalFactor]
      ,[Quantity]
      ,[Cost]
      ,[ExtendedCost]
      ,[ItemGST]
      ,[HandlingCharge]
      ,[HandlingChargeGST]
      ,[TotalGST]
      ,[Total]
      ,[ReducedItem]
      ,[ReducedFees]
      ,[ReducedGST]
      ,[ReducedTotal]
      ,[FILE_YR]
      ,[FILE_PD]
	  ,[LOAD_TIMESTAMP])
	  (SELECT
	  [InvoiceID]
      ,[PeriodStartDate]
      ,[PeriodEndDate]
      ,[Distributor]
      ,[Period]
      ,[ManufacturerCompanyName]
      ,[ManufacturerNumber]
      ,[Location]
      ,[InvoiceNumber]
      ,[UPC]
      ,[ProductDescription]
      ,[CausalFactor]
      ,[Quantity]
      ,[Cost]
      ,[ExtendedCost]
      ,[ItemGST]
      ,[HandlingCharge]
      ,[HandlingChargeGST]
      ,[TotalGST]
      ,[Total]
      ,[ReducedItem]
      ,[ReducedFees]
      ,[ReducedGST]
      ,[ReducedTotal]
      ,[FISC_YR]
      ,[FISC_PD]
	  ,SYSDATETIME()
	  FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_ALLIED])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION CA_UNSALEABLS_ALLIED;
END

COMMIT TRANSACTION CA_UNSALEABLS_ALLIED;







GO
/****** Object:  StoredProcedure [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_APS_INVC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[RECLMNTN.USP_PROC_MAINT_CA_UNSALEABLS_APS_INVC]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_APS_INVC]
AS
  BEGIN TRANSACTION CA_UNSALEABLS_APS_INVC;
  
  DELETE FROM [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_APS_INVC]  WHERE FILE_PD IN (SELECT DISTINCT FISC_PD FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_APS_INVC])
															AND FILE_YR IN (SELECT DISTINCT FISC_YR FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_APS_INVC])
	 INSERT INTO [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_APS_INVC] (
  [Distributor]
      ,[Vendor Name]
      ,[Invoice]
      ,[Invoice Date]
      ,[Items]
      ,[Cost]
      ,[Handling]
      ,[Sub Total]
      ,[Reduction]
      ,[%Reduction]
      ,[GST]
      ,[HST]
      ,[QST]
      ,[Invoice Total]
      ,[FILE_YR]
      ,[FILE_PD]
      ,[LOAD_TIMESTAMP])
	  (SELECT
	  [Distributor]
      ,[Vendor Name]
      ,[Invoice]
      ,[Invoice Date]
      ,[Items]
      ,[Cost]
      ,[Handling]
      ,[Sub Total]
      ,[Reduction]
      ,[%Reduction]
      ,[GST]
      ,[HST]
      ,[QST]
      ,[Invoice Total]
      ,[FISC_YR]
      ,[FISC_PD]
	  ,SYSDATETIME()
	  FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_APS_INVC])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION CA_UNSALEABLS_APS_INVC;
END

COMMIT TRANSACTION CA_UNSALEABLS_APS_INVC;







GO
/****** Object:  StoredProcedure [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_APS_ITM]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[RECLMNTN.USP_PROC_MAINT_CA_UNSALEABLS_APS_ITM]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_APS_ITM]
AS
  BEGIN TRANSACTION CA_UNSALEABLS_APS_ITM;
  
  DELETE FROM [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_APS_ITM]  WHERE FILE_PD IN (SELECT DISTINCT FISC_PD FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_APS_ITM])
															AND FILE_YR IN (SELECT DISTINCT FISC_YR FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_APS_ITM])
	 INSERT INTO [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_APS_ITM] (
  [Distributor]
      ,[Invoice]
      ,[UPC]
      ,[Description]
      ,[Damage]
      ,[Items]
      ,[Cost]
      ,[Handling]
      ,[Total]
      ,[FILE_YR]
      ,[FILE_PD]
      ,[LOAD_TIMESTAMP])
	  (SELECT
	  [Distributor]
      ,[Invoice]
      ,[UPC]
      ,[Description]
      ,[Damage]
      ,[Items]
      ,[Cost]
      ,[Handling]
      ,[Total]
      ,[FISC_YR]
      ,[FISC_PD]
	  ,SYSDATETIME()
	  FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_APS_ITM])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION CA_UNSALEABLS_APS_ITM;
END

COMMIT TRANSACTION CA_UNSALEABLS_APS_ITM;







GO
/****** Object:  StoredProcedure [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_RPD_DRAFT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ============================================================================================
-- Name				:	[RECLMNTN.USP_PROC_MAINT_CA_UNSALEABLS_RPD_DRAFT]
-- Author			:	USCCXL22
-- Create date		:	03/11/2018
-- Description		:   Performs Table Maintenenca for a given period 	
-- =============================================================================================

CREATE PROCEDURE [RECLMNTN].[USP_PROC_MAINT_CA_UNSALEABLS_RPD_DRAFT]
AS
  BEGIN TRANSACTION CA_UNSALEABLS_RPD_DRAFT;
  
  DELETE FROM [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_RPD_DRAFT]  WHERE FILE_PD IN (SELECT DISTINCT FISC_PD FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_RPD_DRAFT])
															AND FILE_YR IN (SELECT DISTINCT FISC_YR FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_RPD_DRAFT])
	 INSERT INTO [KNA_EXTERNAL].[RECLMNTN].[CA_UNSALEABLS_RPD_DRAFT] (
  [Draft Number]
      ,[Customer Number]
      ,[Product Code]
      ,[Cost Center]
      ,[Payee]
      ,[Auth Number]
      ,[RW3ID]
      ,[Region]
      ,[Issued Date]
      ,[Cleared Date]
      ,[Item Amount]
      ,[Total Amount]
      ,[FILE_YR]
      ,[FILE_PD]
      ,[LOAD_TIMESTAMP])
	  (SELECT
	  [Draft Number]
      ,[Customer Number]
      ,[Product Code]
      ,[Cost Center]
      ,[Payee]
      ,[Auth Number]
      ,[RW3ID]
      ,[Region]
      ,[Issued Date]
      ,[Cleared Date]
      ,[Item Amount]
      ,[Total Amount]
      ,[FISC_YR]
      ,[FISC_PD]
	  ,SYSDATETIME()
	  FROM [KNA_EXTERNAL].[STG].[CA_UNSALEABLS_RPD_DRAFT])	  
 
 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION CA_UNSALEABLS_RPD_DRAFT;
END

COMMIT TRANSACTION CA_UNSALEABLS_RPD_DRAFT;







GO
/****** Object:  UserDefinedFunction [dbo].[convert_mult_qty_uom_kna]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[convert_mult_qty_uom_kna]
(@Material varchar(18), @Source_Qty float, @Source_UOM varchar(10), @Target_UOM varchar(10))
RETURNS float
WITH EXEC AS CALLER
AS
BEGIN
/******************************************************************************
		NAME:      convert_mult_qty_uom
		PURPOSE:   Convert Multiple Quantity UOM using SAP Material Master Data 
               and T006.
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        1/15/2017   USKWKJ01       1. Created this function.
		
		SAP Documentation:  
		Alternate UOM -- Quantity (in alternative unit of measure) = quotient * quantity (in base unit of measure)
    
    Simple UOM -- 
    A * measurement unit = (A * N/D * 10**E + K) * SI unit

    A = number of measurement units ADKO
    N = numerator   ZAEHL
    D = denominator NENNR
    E = exponent (only required in the case of very large or very small  numbers) EXP10
    K = additive constant (only required for temperature conversions) ADDKO

		******************************************************************************/
    DECLARE @nsource_qty AS FLOAT;
    DECLARE @ntarget_qty AS FLOAT;
    DECLARE @nfctr as FLOAT; 
    
    SET @ntarget_qty = NULL;
    SET @nsource_qty = @Source_Qty;

-- simple conversion
--make it more complex at a later date -- only dealing with KG to LB for simple conversion
    if @Source_UOM='KG' and @Target_UOM='LB'
        BEGIN
            select @nfctr=convert(float, ZAEHL)/NENNR*power(10, EXP10) from KNA_ECC.dbo.T006 where MSEHI='LB'
            SET @ntarget_QTY =  @nsource_qty / @nfctr;
        END
    ELSE
-- alternate UOM conversion
        BEGIN
            SET @ntarget_qty = KNA_ECC.[dbo].[convert_qty_uom_kna] (@Material, @Source_Qty, @Source_UOM, @Target_UOM);
        END
        
    return @ntarget_qty;
END

GO
/****** Object:  Table [ANAPLAN].[INV_WRT_OFF_BUD_EXTRCT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ANAPLAN].[INV_WRT_OFF_BUD_EXTRCT](
	[VERSION] [varchar](255) NULL,
	[WRT_OFF_ROUT_CAUSE] [varchar](255) NULL,
	[COST_CTR] [varchar](10) NULL,
	[LOCAL_CURR] [varchar](10) NULL,
	[ACCT] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[LC_AMT] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[KLG_RGM_CAT_MAP_KPI_SC_120916]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[KLG_RGM_CAT_MAP_KPI_SC_120916](
	[Kellogg_Category] [varchar](255) NULL,
	[Nielsen_All_Products] [varchar](255) NULL,
	[Nielsen_All_Products_Count] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[KLG_RGM_KPI_SC_LOAD_MAP_AOD]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[KLG_RGM_KPI_SC_LOAD_MAP_AOD](
	[All_Markets] [varchar](255) NULL,
	[All_Products] [varchar](255) NULL,
	[All_Periods] [varchar](255) NULL,
	[Dollars] [float] NULL,
	[Units] [float] NULL,
	[Perc_Subsidized_Units] [float] NULL,
	[Avg_EQ_Price] [float] NULL,
	[Base_EQ_Price] [float] NULL,
	[Any_Promo_EQ_Price] [float] NULL,
	[Avg_No_of_Items] [float] NULL,
	[Qual_CWW] [float] NULL,
	[Any_Promo_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[Any_Feat_CWW] [float] NULL,
	[Any_Promo_Units_Perc_Lift] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[Div_] [float] NULL,
	[Time] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[KLG_RGM_PLANTO_TO_MARKET_MAP]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[KLG_RGM_PLANTO_TO_MARKET_MAP](
	[PlanTo#] [float] NULL,
	[Current PT name] [varchar](255) NULL,
	[Sales Mgmt B name] [varchar](255) NULL,
	[Nielsen Market] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[REX_PUBLIX_CHAIN_STORE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AOD].[REX_PUBLIX_CHAIN_STORE](
	[PLAN_TO_NBR] [float] NULL,
	[PLAN_TO_NAME] [nvarchar](255) NULL,
	[CHAIN_NBR] [float] NULL,
	[CHAIN_NAME] [nvarchar](255) NULL,
	[NIELSEN_DIV] [nvarchar](255) NULL,
	[CUSTOMER_NBR] [decimal](15, 0) NULL,
	[CUSTOMER_NAME] [nvarchar](255) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[STATE] [nvarchar](255) NULL,
	[STORE_NBR] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [AOD].[REX_PUBLIX_DIV_POS]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[REX_PUBLIX_DIV_POS](
	[(All Markets)] [varchar](255) NULL,
	[(All Markets)1] [varchar](255) NULL,
	[(KEL_CATEGORY)] [varchar](255) NULL,
	[(KEL_SEGMENT)] [varchar](255) NULL,
	[(KEL_CORPORATE)] [varchar](128) NULL,
	[(KEL_BRAND)] [varchar](64) NULL,
	[(All Products)] [varchar](255) NULL,
	[(Current Scan Periods)] [varchar](255) NULL,
	[(All Periods)] [varchar](255) NULL,
	[($)] [float] NULL,
	[($ YA)] [float] NULL,
	[($ Shr - Prompt)] [float] NULL,
	[($ Shr CYA - Prompt)] [float] NULL,
	[(UNITS)] [int] NULL,
	[(UNITS YA)] [int] NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[REX_WALMART_POS_SHARE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[REX_WALMART_POS_SHARE](
	[All Markets] [varchar](255) NULL,
	[All Markets 1] [varchar](255) NULL,
	[KEL_CATEGORY] [varchar](255) NULL,
	[KEL_SEGMENT] [varchar](255) NULL,
	[KEL_CORPORATE] [varchar](255) NULL,
	[KEL_BRAND] [varchar](255) NULL,
	[All Products] [varchar](255) NULL,
	[Period Description Short] [varchar](255) NULL,
	[All Periods] [varchar](255) NULL,
	[$] [decimal](15, 3) NULL,
	[$ YA] [decimal](15, 3) NULL,
	[UNITS] [int] NULL,
	[UNITS_YA] [int] NULL,
	[$ Shr - Prompt] [decimal](15, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](15, 3) NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[SNACKS_AE_SURVEY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[SNACKS_AE_SURVEY](
	[TDLINX_STORE_CODE] [int] NULL,
	[CHANNEL] [varchar](34) NULL,
	[POD_SHORT_DESCRIPTION] [varchar](76) NULL,
	[ALL_STORES] [varchar](117) NULL,
	[KEL_CATEGORY] [varchar](16) NULL,
	[PRODUCT_DESC] [varchar](51) NULL,
	[UPC] [varchar](50) NULL,
	[ALL_PRODUCTS] [varchar](77) NULL,
	[PERIOD_SCAN] [varchar](41) NULL,
	[ALL_PERIODS] [varchar](41) NULL,
	[ACV] [float] NULL,
	[FIRSTWEEKSELLING] [datetime] NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[SNACKS_PUBLIX_CHAIN_STORE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AOD].[SNACKS_PUBLIX_CHAIN_STORE](
	[PLAN_TO_NBR] [float] NULL,
	[PLAN_TO_NAME] [nvarchar](255) NULL,
	[CHAIN_NBR] [float] NULL,
	[CHAIN_NAME] [nvarchar](255) NULL,
	[NIELSEN_DIV] [nvarchar](255) NULL,
	[CUSTOMER_NBR] [decimal](15, 0) NULL,
	[CUSTOMER_NAME] [nvarchar](255) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[STATE] [nvarchar](255) NULL,
	[STORE_NBR] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [AOD].[SNACKS_PUBLIX_DIV_POS]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AOD].[SNACKS_PUBLIX_DIV_POS](
	[(All Markets)] [nvarchar](255) NULL,
	[(All Markets)1] [nvarchar](255) NULL,
	[(KEL_CATEGORY)] [nvarchar](255) NULL,
	[(KEL_SEGMENT)] [nvarchar](255) NULL,
	[(KEL_CORPORATE)] [nvarchar](255) NULL,
	[(KEL_BRAND)] [nvarchar](255) NULL,
	[(All Products)] [nvarchar](255) NULL,
	[(Current Scan Periods)] [nvarchar](255) NULL,
	[(All Periods)] [nvarchar](255) NULL,
	[($)] [float] NULL,
	[($ YA)] [float] NULL,
	[($ Shr - Prompt)] [float] NULL,
	[($ Shr CYA - Prompt)] [float] NULL,
	[(TDP)] [float] NULL,
	[(TDP YA)] [float] NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [AOD].[SNACKS_WALMART_POS_SHARE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[SNACKS_WALMART_POS_SHARE](
	[FILE_NAME] [varchar](1000) NULL,
	[[All Markets]]] [varchar](255) NULL,
	[DIVISION] [varchar](255) NULL,
	[[KEL_TOTAL CORE]]] [varchar](255) NULL,
	[[KEL_SEGMENT]]] [varchar](255) NULL,
	[[KEL_CORPORATE]]] [varchar](255) NULL,
	[[KEL_BRAND]]] [varchar](255) NULL,
	[[All Products]]] [varchar](255) NULL,
	[[Current Scan Periods]]] [varchar](255) NULL,
	[[All Periods]]] [varchar](255) NULL,
	[[$]]] [decimal](15, 3) NULL,
	[[$ YA]]] [decimal](15, 3) NULL,
	[[$ Shr - Prompt]]] [decimal](15, 3) NULL,
	[[$ Shr CYA - Prompt]]] [decimal](15, 3) NULL,
	[[TDP]]] [decimal](15, 3) NULL,
	[[TDP YA]]] [decimal](15, 3) NULL,
	[LOAD_TIME] [date] NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [AOD].[TDLINX_SANNVOLCD]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [AOD].[TDLINX_SANNVOLCD](
	[CODE] [varchar](2) NULL,
	[MIN] [bigint] NOT NULL,
	[MAX] [bigint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[COMAN_PROD]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[COMAN_PROD](
	[MTRL] [varchar](18) NULL,
	[PLNT] [varchar](4) NULL,
	[PLNT_TYPE] [varchar](4) NULL,
	[FISC_WK] [varchar](8) NULL,
	[FRCST_QTY] [decimal](17, 2) NULL,
	[ACT_PRD_QTY] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[PLNT_CAP_UTILZ]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[PLNT_CAP_UTILZ](
	[LOAD_PD] [date] NULL,
	[FISC_YR_PD] [varchar](8) NULL,
	[PLNT] [varchar](4) NULL,
	[RES] [varchar](150) NULL,
	[DT_FNL] [decimal](18, 2) NULL,
	[AVAL_CAP] [decimal](18, 3) NULL,
	[CAP_CONS] [decimal](18, 3) NULL,
	[RES_CAP_LVL_PCT] [decimal](18, 3) NULL,
	[DT_HRS] [decimal](18, 2) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](20) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](20) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](20) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[SD57_SHIPMNT_PLN_TO_SUMRY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[SD57_SHIPMNT_PLN_TO_SUMRY](
	[PLANTO:Z_PLANTO] [varchar](10) NULL,
	[MATERIAL:C_MATRPTG] [varchar](18) NULL,
	[CALWEEK:0CALWEEK] [varchar](6) NULL,
	[DOLLARS:ZSALEAMT] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 5:44:12 PM ******/
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
/****** Object:  Table [dbo].[COUPONS_ALLOCATION]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUPONS_ALLOCATION](
	[CHNL_IND] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[YEAR] [decimal](4, 0) NULL,
	[PERCENT] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUST_PLANT_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUST_PLANT_DATA](
	[CUST_NBR] [varchar](10) NULL,
	[PLANT_NBR] [varchar](4) NULL,
	[LEAD_DAYS] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_ACTLS_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFOMETRICS_ACTLS_SALES](
	[DST_WHSE_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[CATG_CODE] [varchar](255) NULL,
	[SUB_CATG_CODE] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[CASE_CODE] [float] NULL,
	[WEEK] [datetime2](7) NULL,
	[OUTBND_USD_CUR_YR] [float] NULL,
	[OUTBND_USD_PREV_YR] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL,
	[KLG_WHSE_NBR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_ACTLS_SALES_1]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFOMETRICS_ACTLS_SALES_1](
	[DST_WHSE_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[CATG_CODE] [varchar](255) NULL,
	[SUB_CATG_CODE] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[CASE_CODE] [float] NULL,
	[WEEK] [datetime2](7) NULL,
	[OUTBND_USD_CUR_YR] [float] NULL,
	[OUTBND_USD_PREV_YR] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_AGRMNT_FUND]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFOMETRICS_AGRMNT_FUND](
	[CATEGORY] [varchar](255) NULL,
	[FIELD_CATEGORY] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SKU] [decimal](28, 0) NULL,
	[SKU_DESC] [varchar](255) NULL,
	[YEAR] [decimal](28, 0) NULL,
	[AGRFUND_NBR] [decimal](28, 0) NULL,
	[AGRFUND_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_ALL_INCLUSIVE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFOMETRICS_ALL_INCLUSIVE](
	[YEAR] [decimal](28, 0) NULL,
	[AGRFUND_NBR] [decimal](28, 0) NULL,
	[AGRFUND_DESC] [varchar](255) NULL,
	[FUND_TYPE] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_NSD_MAP]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFOMETRICS_NSD_MAP](
	[DIST_WHSE_NM] [varchar](255) NULL,
	[SOLD_TO] [float] NULL,
	[SHIP_LOC] [float] NULL,
	[ADDR] [varchar](255) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_RETAILER]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFOMETRICS_RETAILER](
	[SOLDTO] [decimal](28, 0) NULL,
	[SOLDTO_NM] [varchar](255) NULL,
	[INFO_RETAILER] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LKP_APPL_HIER]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_APPL_HIER](
	[APPL_NM] [varchar](40) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[QUALFR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LKP_APPL_HIER_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_APPL_HIER_wc](
	[APPL_NM] [varchar](40) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LKP_CANADA_MATNR_EXCEPTION]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_CANADA_MATNR_EXCEPTION](
	[MATNR] [varchar](18) NULL,
	[EXCEPTION_FLAG] [varchar](1) NULL,
	[EXCEPTION_MATNR] [varchar](18) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MF_FIN_ADJ_BUD_GSV]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MF_FIN_ADJ_BUD_GSV](
	[Row Labels] [varchar](50) NULL,
	[Sku Description] [varchar](100) NULL,
	[Brand L5] [varchar](50) NULL,
	[Channel Detail] [varchar](50) NULL,
	[P1] [varchar](50) NULL,
	[P2] [varchar](50) NULL,
	[P3] [varchar](50) NULL,
	[P4] [varchar](50) NULL,
	[P5] [varchar](50) NULL,
	[P6] [varchar](50) NULL,
	[P7] [varchar](50) NULL,
	[P8] [varchar](50) NULL,
	[P9] [varchar](50) NULL,
	[P10] [varchar](50) NULL,
	[P11] [varchar](50) NULL,
	[P12] [varchar](50) NULL,
	[Grand Total] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLANT_FIN_BU]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLANT_FIN_BU](
	[PLANT_NBR] [varchar](4) NULL,
	[FIN_BU] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLANT_FIN_BU_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLANT_FIN_BU_wc](
	[PLANT_NBR] [varchar](4) NULL,
	[FIN_BU] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REX_RPT_KSR_BUD_Q3_2018]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_RPT_KSR_BUD_Q3_2018](
	[CORP] [varchar](35) NULL,
	[BU] [varchar](35) NULL,
	[CATG] [varchar](40) NULL,
	[PD_DT] [date] NULL,
	[RGN] [varchar](35) NULL,
	[RGN_NBR] [varchar](10) NULL,
	[ZN] [varchar](35) NULL,
	[ZN_NBR] [varchar](35) NULL,
	[TYP] [varchar](3) NOT NULL,
	[TERR] [varchar](35) NULL,
	[TERR_NBR] [varchar](10) NULL,
	[PLN_TO] [varchar](35) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[SOLD_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[YR] [int] NULL,
	[PD_DESC] [varchar](3) NULL,
	[DOL_SALE] [decimal](38, 3) NULL,
	[BUD] [float] NULL,
	[PACE] [decimal](7, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHIPNG_CND_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHIPNG_CND_DATA](
	[SHIPNG_CND] [varchar](2) NULL,
	[DELVRY_TYP] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHIPNG_CND_DATA_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHIPNG_CND_DATA_wc](
	[SHIPNG_CND] [varchar](2) NULL,
	[DELVRY_TYP] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYSCO_ORDR_PRJN_SALES_FCST]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYSCO_ORDR_PRJN_SALES_FCST](
	[CPNY_NUM] [varchar](255) NULL,
	[CPNY_NM] [varchar](255) NULL,
	[OPCO_ZIP] [varchar](255) NULL,
	[PAY_TO_SUVC] [varchar](255) NULL,
	[PAY_TO_SPLR_NM] [varchar](255) NULL,
	[SHP_FRM_SUVC] [varchar](255) NULL,
	[SHP_FRM_SPLR_NM] [varchar](255) NULL,
	[RDC_FLG] [varchar](255) NULL,
	[ADDR] [varchar](255) NULL,
	[CTY] [varchar](255) NULL,
	[ST] [varchar](255) NULL,
	[ZIP_COD] [varchar](255) NULL,
	[ITM_NUM] [varchar](255) NULL,
	[ITM_DESC] [varchar](255) NULL,
	[MPC] [varchar](255) NULL,
	[PCK] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[ON_HAND_QTY] [float] NULL,
	[TOT_CMTD_UNTS] [float] NULL,
	[ORD_QTY] [float] NULL,
	[PRJ_QTY] [varchar](255) NULL,
	[PRJ_QTY1] [varchar](255) NULL,
	[PRJ_QTY2] [varchar](255) NULL,
	[PRJ_QTY3] [varchar](255) NULL,
	[PRJ_QTY4] [varchar](255) NULL,
	[PRJ_QTY5] [float] NULL,
	[PRJ_QTY6] [varchar](255) NULL,
	[PRJ_QTY7] [varchar](255) NULL,
	[PRJ_QTY8] [varchar](255) NULL,
	[PRJ_QTY9] [float] NULL,
	[PRJ_QTY10] [varchar](255) NULL,
	[PRJ_QTY11] [varchar](255) NULL,
	[PRJ_QTY12] [float] NULL,
	[PRJ_QTY13] [varchar](255) NULL,
	[PRJ_QTY14] [varchar](255) NULL,
	[PRJ_QTY15] [varchar](255) NULL,
	[PRJ_QTY16] [varchar](255) NULL,
	[PRJ_QTY17] [varchar](255) NULL,
	[PRJ_QTY18] [varchar](255) NULL,
	[PRJ_QTY19] [varchar](255) NULL,
	[PRJ_QTY20] [varchar](255) NULL,
	[PRJ_QTY21] [varchar](255) NULL,
	[PRJ_QTY22] [varchar](255) NULL,
	[PRJ_QTY23] [varchar](255) NULL,
	[PRJ_QTY24] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_FT_7]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_FT_7](
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
	[SAKNR] [varchar](10) NULL,
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
	[SAKNR_PNL_ACCNT] [varchar](10) NULL,
	[PERIOD_YEAR] [varchar](10) NULL,
	[Period_Default_Date] [date] NULL,
	[Period_to_Report] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_JOB]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_JOB](
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
/****** Object:  Table [dbo].[USFOODS_PIVOT_WK_QTY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USFOODS_PIVOT_WK_QTY](
	[MFR PROD NBR - ( MATERIAL)] [varchar](255) NULL,
	[DIVISION NBR] [float] NULL,
	[Period/Snapshot] [varchar](255) NULL,
	[PIVOT_SEQ] [int] NULL,
	[WEEK] [varchar](40) NULL,
	[QTY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USFOODS_SALES_FCST]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USFOODS_SALES_FCST](
	[A-SYS_COD] [float] NULL,
	[PRD_DESC] [varchar](255) NULL,
	[RGN_NM] [varchar](255) NULL,
	[DVSN_NBR] [float] NULL,
	[DVSN_NM] [varchar](255) NULL,
	[MFR_PRD_NBR] [varchar](255) NULL,
	[PIM_GTIN] [varchar](255) NULL,
	[ITM_STAT] [float] NULL,
	[CLS_DESC] [varchar](255) NULL,
	[CTGRY_DESC] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[PUR_VEN_DESC] [varchar](255) NULL,
	[ON_HAND] [float] NULL,
	[ON_ORD] [float] NULL,
	[WKS_ON_HND_W/0_OPN_ORD] [float] NULL,
	[WKS_ON_HND_WTH_OPN_ORD] [float] NULL,
	[PUR_VEN_NBR] [varchar](255) NULL,
	[13_WK_QTY] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USFS_16WK_SALES_FCST]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USFS_16WK_SALES_FCST](
	[A-SYS_COD] [float] NULL,
	[PROD_DESC] [varchar](255) NULL,
	[RGN_NM] [varchar](255) NULL,
	[DVSN_NBR] [float] NULL,
	[DVSN_NM] [varchar](255) NULL,
	[MFR_PRD_NBR] [varchar](255) NULL,
	[PIM_GTIN] [varchar](255) NULL,
	[ITM_STAT] [float] NULL,
	[PIM_MCHNT_CAT] [varchar](255) NULL,
	[PIM_BRND_TYP] [varchar](255) NULL,
	[CLS_DESC] [varchar](255) NULL,
	[CTGR_DESC] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SHP_FRM_NBR] [varchar](255) NULL,
	[SHP_FRM_NM] [varchar](255) NULL,
	[PER_SBMSN] [varchar](255) NULL,
	[SHP_FRM_CTY] [varchar](255) NULL,
	[NSD] [float] NULL,
	[SHP_FRM_ST] [varchar](255) NULL,
	[PUR_VEN_DESC] [varchar](255) NULL,
	[ON_HAND] [float] NULL,
	[ON_ORDR] [float] NULL,
	[WKS_ON_HAND_W/O_OPN_ORD] [float] NULL,
	[WKS_ON_HAND_WTH_OPN_ORD] [float] NULL,
	[PUR_VEN_NBR] [varchar](255) NULL,
	[16_WK_QTY] [float] NULL,
	[8/6/2017] [float] NULL,
	[8/13/2017] [float] NULL,
	[8/20/2017] [float] NULL,
	[8/27/2017] [float] NULL,
	[9/3/2017] [float] NULL,
	[9/10/2017] [float] NULL,
	[9/17/2017] [float] NULL,
	[9/24/2017] [float] NULL,
	[10/1/2017] [float] NULL,
	[10/8/2017] [varchar](8) NULL,
	[10/15/2017] [varchar](8) NULL,
	[10/22/2017] [varchar](8) NULL,
	[10/29/2017] [varchar](8) NULL,
	[11/05/2017] [varchar](8) NULL,
	[11/12/2017] [varchar](8) NULL,
	[11/19/2017] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YIELD_INVENTORY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YIELD_INVENTORY](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER3:0FISCPER3] [varchar](3) NULL,
	[ACTUAL_PRICE_UNIT_COST:Z9ADFCST] [decimal](38, 12) NULL,
	[AMOUNT:0AMOUNT] [decimal](38, 12) NULL,
	[AMT_UNIT:0CURRENCY] [varchar](3) NULL,
	[BEG_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[BEG_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_ORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ACTL_PRICE:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[DIFFERENCES_CONTNT_COPY:Z9ADFCST] [decimal](38, 12) NULL,
	[END_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[END_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[QUANTITY:0QUANTITY] [decimal](38, 12) NULL,
	[QUANTITY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PRDCTN_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PRDCTN_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PURCHORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PURCHORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YIELD_INVENTORY_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YIELD_INVENTORY_wc](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER3:0FISCPER3] [varchar](3) NULL,
	[ACTUAL_PRICE_UNIT_COST:Z9ADFCST] [decimal](38, 12) NULL,
	[AMOUNT:0AMOUNT] [decimal](38, 12) NULL,
	[AMT_UNIT:0CURRENCY] [varchar](3) NULL,
	[BEG_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[BEG_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_ORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ACTL_PRICE:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[DIFFERENCES_CONTNT_COPY:Z9ADFCST] [decimal](38, 12) NULL,
	[END_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[END_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[QUANTITY:0QUANTITY] [decimal](38, 12) NULL,
	[QUANTITY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PRDCTN_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PRDCTN_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PURCHORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PURCHORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YIELD_USAGE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YIELD_USAGE](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER:0FISCPER] [varchar](7) NULL,
	[f0COMPONENT:0COMPONENT] [varchar](18) NULL,
	[MATERIAL_GROUP:0MATL_GROUP] [varchar](8) NULL,
	[ACTUAL_COSTS:0AMOUNT] [decimal](38, 12) NULL,
	[ACTUAL_COSTS_UNIT:] [varchar](3) NULL,
	[ACTUAL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[ACTUAL_QTY_UNIT:] [varchar](3) NULL,
	[FRZN_STND_COST:0AMOUNT] [decimal](38, 12) NULL,
	[FRZN_STND_COST_UNIT:] [varchar](3) NULL,
	[FRZN_STND_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[FRZN_STND_QTY_UNIT:] [varchar](3) NULL,
	[TARGET_CST_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TARGET_CST_CRRNT_UNIT:] [varchar](3) NULL,
	[TARGET_QTY_CRRNT:0QUANTITY] [decimal](38, 12) NULL,
	[TARGET_QTY_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_FRZN:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_FRZN_UNIT:] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YIELD_USAGE_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YIELD_USAGE_wc](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER:0FISCPER] [varchar](7) NULL,
	[f0COMPONENT:0COMPONENT] [varchar](18) NULL,
	[MATERIAL_GROUP:0MATL_GROUP] [varchar](8) NULL,
	[ACTUAL_COSTS:0AMOUNT] [decimal](38, 12) NULL,
	[ACTUAL_COSTS_UNIT:] [varchar](3) NULL,
	[ACTUAL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[ACTUAL_QTY_UNIT:] [varchar](3) NULL,
	[FRZN_STND_COST:0AMOUNT] [decimal](38, 12) NULL,
	[FRZN_STND_COST_UNIT:] [varchar](3) NULL,
	[FRZN_STND_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[FRZN_STND_QTY_UNIT:] [varchar](3) NULL,
	[TARGET_CST_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TARGET_CST_CRRNT_UNIT:] [varchar](3) NULL,
	[TARGET_QTY_CRRNT:0QUANTITY] [decimal](38, 12) NULL,
	[TARGET_QTY_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_FRZN:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_FRZN_UNIT:] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ECC].[FIN_COST_CONTROL]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ECC].[FIN_COST_CONTROL](
	[Project] [varchar](24) NULL,
	[Project Group] [varchar](30) NULL,
	[Plant] [varchar](4) NULL,
	[Plant Description] [varchar](30) NULL,
	[Project Manager] [varchar](25) NULL,
	[WBS] [varchar](24) NULL,
	[Activity] [varchar](5) NULL,
	[Material Component] [varchar](5) NULL,
	[Description] [varchar](40) NULL,
	[Vendor Name] [varchar](35) NULL,
	[PO/Req. Number] [varchar](10) NULL,
	[Line Number] [int] NULL,
	[Expected Delivery] [date] NULL,
	[Appropriated] [decimal](11, 2) NULL,
	[Working Budget] [decimal](11, 2) NULL,
	[Open Commitments] [decimal](11, 2) NULL,
	[Spending Current Period] [decimal](11, 2) NULL,
	[Spending Current Year] [decimal](11, 2) NULL,
	[Spending All Years] [decimal](11, 2) NULL,
	[Exposure (Spending + Open Commit)] [decimal](11, 2) NULL,
	[Working Budget Remaining] [decimal](11, 2) NULL,
	[System Status] [varchar](4) NULL,
	[User Status] [varchar](4) NULL,
	[Current  Projected Final Cost] [decimal](11, 2) NULL,
	[WBS Type] [int] NULL,
	[Extraction Date] [date] NULL,
	[Source_System] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ECC].[LOGDISPUTECASE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ECC].[LOGDISPUTECASE](
	[EXT_KEY] [varchar](12) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[POID_ID] [varchar](32) NULL,
	[SY-DATUM] [varchar](8) NULL,
	[SY-UZEIT] [varchar](8) NULL,
	[ARG_STRING] [varchar](16) NULL,
	[ARG1] [varchar](200) NULL,
	[ARG2] [varchar](200) NULL,
	[DI_FILENAME] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ECC].[LOGDISPUTECASE1]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ECC].[LOGDISPUTECASE1](
	[EXT_KEY] [varchar](12) NOT NULL,
	[CASE_GUID] [varchar](32) NOT NULL,
	[CHANGED_BY] [varchar](12) NOT NULL,
	[POID_ID] [varchar](32) NOT NULL,
	[SY-DATUM] [varchar](8) NOT NULL,
	[SY-UZEIT] [varchar](8) NOT NULL,
	[ARG_STRING] [varchar](16) NOT NULL,
	[ARG1] [varchar](200) NULL,
	[ARG2] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ECC].[ZCOSTALOCX_MSTR_SKU_DETL]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ECC].[ZCOSTALOCX_MSTR_SKU_DETL](
	[ZCOSTALOCX Source] [varchar](6) NULL,
	[BOL Number] [varchar](20) NULL,
	[Period] [varchar](6) NULL,
	[Period Expense] [decimal](10, 2) NULL,
	[Sett. date] [varchar](10) NULL,
	[Shipmt Cost No.] [varchar](10) NULL,
	[Ship. cost item] [varchar](6) NULL,
	[Shipment Number] [varchar](10) NULL,
	[Delivery Number] [varchar](10) NULL,
	[Order Number] [varchar](10) NULL,
	[Customer Order Number] [varchar](20) NULL,
	[Carrier Pro Number] [varchar](20) NULL,
	[Invoice Date] [varchar](10) NULL,
	[WIP Indicator] [varchar](5) NULL,
	[Ship Date] [varchar](10) NULL,
	[PGI/Check Call Date] [varchar](10) NULL,
	[Origin] [varchar](10) NULL,
	[Origin Name] [varchar](30) NULL,
	[Origin Type] [varchar](5) NULL,
	[Destination] [varchar](10) NULL,
	[Destination Name] [varchar](30) NULL,
	[Destination Type] [varchar](8) NULL,
	[Mode] [varchar](5) NULL,
	[Origin City] [varchar](20) NULL,
	[Origin State] [varchar](5) NULL,
	[Origin Zip] [varchar](10) NULL,
	[Destination City] [varchar](20) NULL,
	[Destination State] [varchar](5) NULL,
	[Destination Zip] [varchar](10) NULL,
	[Sales Org] [varchar](5) NULL,
	[Fleet Indicator] [varchar](5) NULL,
	[Shipment Type] [varchar](5) NULL,
	[SCAC] [varchar](5) NULL,
	[SKU Number] [varchar](20) NULL,
	[SKU Description] [varchar](40) NULL,
	[Total Miles] [decimal](10, 3) NULL,
	[GL Account] [varchar](10) NULL,
	[Cost Center] [varchar](10) NULL,
	[Temp. controlled] [varchar](5) NULL,
	[Service Type level] [varchar](5) NULL,
	[Order Type] [varchar](20) NULL,
	[SKU BU] [varchar](5) NULL,
	[SKU Uls] [decimal](15, 3) NULL,
	[SKU Qty Shipped] [decimal](15, 3) NULL,
	[SKUQtyShippedUOM] [varchar](5) NULL,
	[SKU Cube Shipped] [decimal](15, 3) NULL,
	[Weight] [decimal](15, 3) NULL,
	[Packaging Units] [decimal](15, 3) NULL,
	[SCD create date] [varchar](10) NULL,
	[SCD create time] [varchar](8) NULL,
	[SCD Changed date] [varchar](10) NULL,
	[SCD changed time] [varchar](8) NULL,
	[Pay Flag] [varchar](5) NULL,
	[Total Dollars] [decimal](10, 2) NULL,
	[Shipping date] [varchar](10) NULL,
	[AFTERHOURS_DELIVERY] [decimal](10, 2) NULL,
	[BASE_CHARGE] [decimal](10, 2) NULL,
	[BOL_CORRECTION] [decimal](10, 2) NULL,
	[BORDER_CROSSING] [decimal](10, 2) NULL,
	[BORDER_SECURITY] [decimal](10, 2) NULL,
	[BROKERAGE_FEE] [decimal](10, 2) NULL,
	[BUNKER_SURCHARGE] [decimal](10, 2) NULL,
	[CIRCUITOS] [decimal](10, 2) NULL,
	[CIRCUITOUS_MILEAGE] [decimal](10, 2) NULL,
	[CONGESTION] [decimal](10, 2) NULL,
	[DEADHEAD_MILEAGE] [decimal](10, 2) NULL,
	[DEFICIT_WEIGHT] [decimal](10, 2) NULL,
	[DETENTION] [decimal](10, 2) NULL,
	[DISCOUNT] [decimal](10, 2) NULL,
	[DRAYAGE] [decimal](10, 2) NULL,
	[DRIVER] [decimal](10, 2) NULL,
	[DROP_TRAILER] [decimal](10, 2) NULL,
	[EXCESS_MILEAGE] [decimal](10, 2) NULL,
	[EXPEDITED] [decimal](10, 2) NULL,
	[FUEL_SURCHARGE] [decimal](10, 2) NULL,
	[GUARANTEE] [decimal](10, 2) NULL,
	[GUARANTEED_NOON_DEL] [decimal](10, 2) NULL,
	[HAZARDOUS] [decimal](10, 2) NULL,
	[HIGH_COST_DELIVERY] [decimal](10, 2) NULL,
	[INSIDE_DELIVER] [decimal](10, 2) NULL,
	[INVASIVE] [decimal](10, 2) NULL,
	[LAYOVER] [decimal](10, 2) NULL,
	[LIFT] [decimal](10, 2) NULL,
	[LINEHAUL] [decimal](10, 2) NULL,
	[LUMPER] [decimal](10, 2) NULL,
	[MANAGEMENT] [decimal](10, 2) NULL,
	[MEXICAN] [decimal](10, 2) NULL,
	[MISCELLANEOUS] [decimal](10, 2) NULL,
	[NEWYORK_SURCHARGE] [decimal](10, 2) NULL,
	[OUT_OF_ROUTE] [decimal](10, 2) NULL,
	[PALLET] [decimal](10, 2) NULL,
	[RAMPSTORAGE_CHARGE] [decimal](10, 2) NULL,
	[RECONSIGNMENT] [decimal](10, 2) NULL,
	[REDELIVERY] [decimal](10, 2) NULL,
	[REFRIDERATED] [decimal](10, 2) NULL,
	[REFRIGERATED] [decimal](10, 2) NULL,
	[RETURN_CHARGE] [decimal](10, 2) NULL,
	[SECURITY] [decimal](10, 2) NULL,
	[SORT_AND_SEGREGATE] [decimal](10, 2) NULL,
	[SPOTTING] [decimal](10, 2) NULL,
	[STOPOFF] [decimal](10, 2) NULL,
	[STORAGE] [decimal](10, 2) NULL,
	[TAG] [decimal](10, 2) NULL,
	[TEMPACCESSORIAL] [decimal](10, 2) NULL,
	[TERMINAL] [decimal](10, 2) NULL,
	[TOLL] [decimal](10, 2) NULL,
	[TRUCK] [decimal](10, 2) NULL,
	[UNLOADING] [decimal](10, 2) NULL,
	[UNLOADING_LABOR] [decimal](10, 2) NULL,
	[WEIGHT_CHARGE] [decimal](10, 2) NULL,
	[TIMESTAMP] [varchar](15) NULL,
	[SPECIAL_DELIVERY] [decimal](10, 2) NULL,
	[PROVINCIAL_SURCHG] [decimal](10, 2) NULL,
	[PROVINCIAL_TAX_RECOV] [decimal](10, 2) NULL,
	[CARBON_TAX_SURCHG] [decimal](10, 2) NULL,
	[CUSTOMS_FEE] [decimal](10, 2) NULL,
	[BOND_CHARGE] [decimal](10, 2) NULL,
	[INBOND_CHARGE] [decimal](10, 2) NULL,
	[COST_RECOVERY_SURCHG] [decimal](10, 2) NULL,
	[SHUNTING_CHARGE] [decimal](10, 2) NULL,
	[ADMINSTRATION_CHG] [decimal](10, 2) NULL,
	[RE_PALLETIZATION_CHG] [decimal](10, 2) NULL,
	[TPP_CNTRY] [varchar](20) NULL,
	[MATERIAL_GRP] [varchar](20) NULL,
	[CURRENCY] [varchar](20) NULL,
	[DETENTION_ORIGIN] [decimal](10, 2) NULL,
	[DETENTION_DEST] [decimal](10, 2) NULL,
	[NET_WT] [decimal](15, 3) NULL,
	[WT_UOM] [varchar](5) NULL,
	[GLCC_EXPENSE] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EMAIL_ECOMM].[GLBL_SHIPMNT_CANADA_WM_PROC_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EMAIL_ECOMM].[GLBL_SHIPMNT_CANADA_WM_PROC_DATA](
	[RGN] [varchar](100) NULL,
	[CTRY] [varchar](100) NULL,
	[RETLR] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[GSV] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EMAIL_ECOMM].[GLBL_SHIPMNT_CANADA_WM_SRC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EMAIL_ECOMM].[GLBL_SHIPMNT_CANADA_WM_SRC](
	[FINELINE_NBR] [int] NULL,
	[RGN] [varchar](100) NULL,
	[CTRY] [varchar](100) NULL,
	[RETLR] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[POS_SALES] [float] NULL,
	[GSV] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [int] NULL,
	[EXCH_RT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EMAIL_ECOMM].[GLBL_SHIPMNT_US_AL_HEB_HY_MEI_SMC_SHIPT_PROC_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EMAIL_ECOMM].[GLBL_SHIPMNT_US_AL_HEB_HY_MEI_SMC_SHIPT_PROC_DATA](
	[RGN] [varchar](100) NULL,
	[CTRY] [varchar](100) NULL,
	[RETLR] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[GSV] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EMAIL_ECOMM].[GLBL_SHIPMNT_US_AL_HEB_HY_MEI_SMC_SHIPT_SRC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EMAIL_ECOMM].[GLBL_SHIPMNT_US_AL_HEB_HY_MEI_SMC_SHIPT_SRC](
	[RGN] [varchar](100) NULL,
	[CTRY] [varchar](100) NULL,
	[RETLR] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL,
	[GSV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EMAIL_ECOMM].[GLBL_SHIPMNT_US_WM_PROC_DATA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EMAIL_ECOMM].[GLBL_SHIPMNT_US_WM_PROC_DATA](
	[RGN] [varchar](100) NULL,
	[CTRY] [varchar](100) NULL,
	[RETLR] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[GSV] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EMAIL_ECOMM].[GLBL_SHIPMNT_US_WM_SRC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EMAIL_ECOMM].[GLBL_SHIPMNT_US_WM_SRC](
	[UPC] [varchar](100) NULL,
	[PARSED_DT] [date] NULL,
	[RGN] [varchar](100) NULL,
	[CTRY] [varchar](100) NULL,
	[RETLR] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[FISC_YR] [int] NULL,
	[FISC_WK] [int] NULL,
	[FISC_QTR] [int] NULL,
	[POS_SALES] [float] NULL,
	[GSV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [INFOMETRICS].[INFOMETRICS_ACTLS_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [INFOMETRICS].[INFOMETRICS_ACTLS_SALES](
	[DST_WHSE_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[CATG_CODE] [varchar](255) NULL,
	[SUB_CATG_CODE] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[CASE_CODE] [float] NULL,
	[WEEK] [datetime2](7) NULL,
	[OUTBND_USD_CUR_YR] [float] NULL,
	[OUTBND_USD_PREV_YR] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL,
	[KLG_WHSE_NBR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [INFOMETRICS].[INFOMETRICS_AGRMNT_FUND]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [INFOMETRICS].[INFOMETRICS_AGRMNT_FUND](
	[CATEGORY] [varchar](255) NULL,
	[FIELD_CATEGORY] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SKU] [decimal](28, 0) NULL,
	[SKU_DESC] [varchar](255) NULL,
	[YEAR] [decimal](28, 0) NULL,
	[AGRFUND_NBR] [decimal](28, 0) NULL,
	[AGRFUND_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [INFOMETRICS].[INFOMETRICS_ALL_INCLUSIVE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [INFOMETRICS].[INFOMETRICS_ALL_INCLUSIVE](
	[YEAR] [decimal](28, 0) NULL,
	[AGRFUND_NBR] [decimal](28, 0) NULL,
	[AGRFUND_DESC] [varchar](255) NULL,
	[FUND_TYPE] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [INFOMETRICS].[INFOMETRICS_NSD_MAP]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [INFOMETRICS].[INFOMETRICS_NSD_MAP](
	[DIST_WHSE_NM] [varchar](255) NULL,
	[SOLD_TO] [float] NULL,
	[SHIP_LOC] [float] NULL,
	[ADDR] [varchar](255) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [INFOMETRICS].[INFOMETRICS_RETAILER]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [INFOMETRICS].[INFOMETRICS_RETAILER](
	[SOLDTO] [decimal](28, 0) NULL,
	[SOLDTO_NM] [varchar](255) NULL,
	[INFO_RETAILER] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEEP_SAFE].[REX_DATAFEED]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEEP_SAFE].[REX_DATAFEED](
	[EMPLOYEENUMBER] [varchar](10) NULL,
	[FIRSTNAME] [varchar](2) NULL,
	[LASTNAME] [varchar](2) NULL,
	[OBSERVATION] [int] NULL,
	[SAFETYMESSAGE1] [int] NULL,
	[SAFETYMESSAGE2] [int] NULL,
	[MODULE] [int] NULL,
	[DATE_LOADED] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEEP_SAFE].[SNACKS_DATAFEED]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEEP_SAFE].[SNACKS_DATAFEED](
	[EMPLOYEENUMBER] [varchar](10) NULL,
	[FIRSTNAME] [varchar](2) NULL,
	[LASTNAME] [varchar](2) NULL,
	[OBSERVATION] [int] NULL,
	[SAFETYMESSAGE1] [int] NULL,
	[SAFETYMESSAGE2] [int] NULL,
	[MODULE] [int] NULL,
	[DATE_LOADED] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ORCHESTRO].[WALMARTCALENDAR]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ORCHESTRO].[WALMARTCALENDAR](
	[DAY] [date] NULL,
	[WEEK] [varchar](6) NULL,
	[MONTH] [varchar](50) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[col_baddebt]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[col_baddebt](
	[ST] [int] NULL,
	[PERIOD] [int] NULL,
	[ASSIGNMENT] [varchar](18) NULL,
	[USER NAME] [varchar](8) NULL,
	[TYP] [varchar](2) NULL,
	[PK] [int] NULL,
	[PSTNG DATE] [varchar](9) NULL,
	[AMOUNT IN LOCAL CURR] [decimal](10, 3) NULL,
	[LCURR] [varchar](3) NULL,
	[TX] [int] NULL,
	[CLRNG DOC] [int] NULL,
	[PROFIT CTR] [varchar](9) NULL,
	[TEXT] [varchar](19) NULL,
	[REFERENCE] [varchar](14) NULL,
	[DOCUMENT HEADER TEXTT] [int] NULL,
	[COST CTR] [int] NULL,
	[P COST CTR] [int] NULL,
	[INV REF] [int] NULL,
	[REF TRAN] [varchar](4) NULL,
	[COCD] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[DED_BAL]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[DED_BAL](
	[Person Responsible II] [varchar](255) NULL,
	[RSC/Global] [varchar](255) NULL,
	[Escalation Reason] [varchar](255) NULL,
	[Processor (Full Name)] [varchar](255) NULL,
	[Person Responsible] [varchar](255) NULL,
	[Customer] [float] NULL,
	[Short Description of Customer] [varchar](255) NULL,
	[PT# - PT Name] [varchar](255) NULL,
	[Ext# ref#] [varchar](255) NULL,
	[Disputed] [float] NULL,
	[Cause Desc] [varchar](255) NULL,
	[Root Cause Code] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Age] [float] NULL,
	[Bline Date] [datetime2](7) NULL,
	[Case ID] [float] NULL,
	[Case Title] [varchar](255) NULL,
	[CGrp] [varchar](255) NULL,
	[Busi# Unit] [varchar](255) NULL,
	[Team Lead] [varchar](255) NULL,
	[Age Group] [varchar](255) NULL,
	[Sales Mgmt A] [varchar](255) NULL,
	[Sales Mgmt B] [varchar](255) NULL,
	[Sales Mgmt C] [varchar](255) NULL,
	[Sales Mgmt D] [varchar](255) NULL,
	[Sales Mgmt a1] [varchar](255) NULL,
	[Sales Mgmt b1] [varchar](255) NULL,
	[KSC/Retail/Canada] [varchar](255) NULL,
	[Doc# Date] [datetime2](7) NULL,
	[Pstng Date] [datetime2](7) NULL,
	[RV11?] [varchar](255) NULL,
	[Reference] [varchar](255) NULL,
	[Doc #] [float] NULL,
	[Correspondent] [varchar](255) NULL,
	[Planned Closed Date] [varchar](255) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[DED_CRE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[DED_CRE](
	[Action] [varchar](255) NULL,
	[Case ID] [float] NULL,
	[Activity Date] [datetime2](7) NULL,
	[External refer#] [varchar](255) NULL,
	[Cause Desc] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Amt] [float] NULL,
	[Other Activity] [datetime2](7) NULL,
	[Cust#] [varchar](255) NULL,
	[Short Description of Customer] [varchar](255) NULL,
	[CGrp] [varchar](255) NULL,
	[Processor (Full Name)] [varchar](255) NULL,
	[Person Responsible (Full Name)] [varchar](255) NULL,
	[Reason for Escalation] [varchar](255) NULL,
	[Root Cause Code (Description)] [varchar](255) NULL,
	[Business Unit] [varchar](255) NULL,
	[Case Title] [varchar](255) NULL,
	[Coordinator] [varchar](255) NULL,
	[Cleared Manually] [float] NULL,
	[Credited] [float] NULL,
	[Paid] [float] NULL,
	[Team] [varchar](255) NULL,
	[KSC/Retail] [varchar](255) NULL,
	[Associate] [varchar](255) NULL,
	[Combined?] [varchar](255) NULL,
	[Ct] [float] NULL,
	[Age bucket when closed] [varchar](255) NULL,
	[UT?] [varchar](255) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[DED_VOL]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[DED_VOL](
	[Region] [varchar](255) NULL,
	[Year] [float] NULL,
	[Retail Closed Deductions] [varchar](255) NULL,
	[P1] [float] NULL,
	[P2] [float] NULL,
	[P3] [float] NULL,
	[P4] [float] NULL,
	[P5] [float] NULL,
	[P6] [float] NULL,
	[P7] [float] NULL,
	[P8] [float] NULL,
	[P9] [float] NULL,
	[P10] [float] NULL,
	[P11] [float] NULL,
	[P12] [float] NULL,
	[YTD Avg] [float] NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[om_latedelivery]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[om_latedelivery](
	[REPORT DATE] [datetime2](7) NULL,
	[CSR PLANNER ID] [varchar](255) NULL,
	[TEAM LEAD] [varchar](255) NULL,
	[BUSINESS UNIT] [varchar](255) NULL,
	[CANADA] [varchar](255) NULL,
	[CUST PO NUMBER] [varchar](255) NULL,
	[PRIMARY REFERENCE] [varchar](255) NULL,
	[DELIVERY NUMBER] [varchar](255) NULL,
	[SHIPMENT NUMBER] [decimal](28, 6) NULL,
	[TP LOAD NUMBER] [decimal](28, 6) NULL,
	[BOL NUMBER] [varchar](255) NULL,
	[ORIGIN ID] [varchar](255) NULL,
	[MODE] [varchar](255) NULL,
	[SCAC] [varchar](255) NULL,
	[OUTBOUND SHIPMENT PLAN SENT] [varchar](255) NULL,
	[ORDER CREATED] [datetime2](7) NULL,
	[EARLIEST PICKUP] [datetime2](7) NULL,
	[LATEST PICKUP] [datetime2](7) NULL,
	[MUST ARRIVE BY] [datetime2](7) NULL,
	[EARLIEST DELIVERY] [datetime2](7) NULL,
	[LATEST DELIVERY] [datetime2](7) NULL,
	[LOAD STATUS] [varchar](255) NULL,
	[DESTINATION NAME] [varchar](255) NULL,
	[CPU?] [varchar](255) NULL,
	[MISSING DN?] [decimal](28, 6) NULL,
	[MISSING SHP?] [decimal](28, 6) NULL,
	[TENDER ACPT?] [varchar](255) NULL,
	[OSPS?] [decimal](28, 6) NULL,
	[MISSING PU APT?] [varchar](255) NULL,
	[MISSING DELV APT?] [varchar](255) NULL,
	[TOM / TOM +1] [varchar](255) NULL,
	[AM/PM] [varchar](255) NULL,
	[DAY] [varchar](255) NULL,
	[WEEK] [decimal](28, 6) NULL,
	[PERIOD] [decimal](28, 6) NULL,
	[YEAR] [decimal](28, 6) NULL,
	[FOR TOTALS] [decimal](28, 6) NULL,
	[DW_CRE_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[sls_contractflag]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[sls_contractflag](
	[TRADE PROMOTION ID] [varchar](255) NULL,
	[TRADE PROMOTION DESCRIPTION] [varchar](255) NULL,
	[PROMOTION TYPE] [varchar](255) NULL,
	[PLAN TO] [varchar](255) NULL,
	[PLANNING ACCOUNT] [varchar](255) NULL,
	[PLANNED START DATE] [date] NULL,
	[PLANNED END DATE] [date] NULL,
	[STATUS] [varchar](255) NULL,
	[EMPLOYEE RESPONSIBLE] [varchar](255) NULL,
	[KMF%] [decimal](10, 2) NULL,
	[GROSS SALES] [decimal](10, 2) NULL,
	[TRADE SPEND] [decimal](10, 2) NULL,
	[GROSS SALE CURRENCY] [varchar](3) NULL,
	[TRADE SPEND CURRENCY] [varchar](3) NULL,
	[CONTRACT ATTACHED] [varchar](1) NULL,
	[REASON CODE] [varchar](26) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OTC_KPI].[sls_nonchain_planstartdate]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OTC_KPI].[sls_nonchain_planstartdate](
	[ROW] [varchar](2) NULL,
	[PERIOD] [varchar](7) NULL,
	[TRADE PROMOTION ID] [varchar](10) NULL,
	[TRADE PROMOTION DESCRIPTION] [varchar](34) NULL,
	[PLAN TO] [varchar](15) NULL,
	[PLANNED START DATE] [date] NULL,
	[PLAN TO 2] [int] NULL,
	[PLANNED START DATE 2] [date] NULL,
	[PLAN TO 3] [int] NULL,
	[PLAN TO NAME] [varchar](25) NULL,
	[PLAN TO REGION] [varchar](14) NULL,
	[GUID] [varchar](32) NULL,
	[INPROCESS DATE] [date] NULL,
	[RELEASED DATE] [date] NULL,
	[CREATE DATE] [date] NULL,
	[DAYS CREATED PRIOR TO PLANNED STARTT] [int] NULL,
	[DAYS RELEASE PRIOR TO PLANNED START] [int] NULL,
	[PLANNING HORIZON] [varchar](9) NULL,
	[LATE ENTRY] [varchar](9) NULL,
	[RELEASE] [varchar](13) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RECLMNTN].[CA_UNSALEABLS_ALLIED]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RECLMNTN].[CA_UNSALEABLS_ALLIED](
	[InvoiceID] [int] NULL,
	[PeriodStartDate] [date] NULL,
	[PeriodEndDate] [date] NULL,
	[Distributor] [varchar](255) NULL,
	[Period] [int] NULL,
	[ManufacturerCompanyName] [varchar](255) NULL,
	[ManufacturerNumber] [varchar](255) NULL,
	[Location] [varchar](255) NULL,
	[InvoiceNumber] [varchar](255) NULL,
	[UPC] [varchar](255) NULL,
	[ProductDescription] [varchar](255) NULL,
	[CausalFactor] [varchar](255) NULL,
	[Quantity] [decimal](28, 2) NULL,
	[Cost] [decimal](28, 2) NULL,
	[ExtendedCost] [decimal](28, 2) NULL,
	[ItemGST] [decimal](28, 2) NULL,
	[HandlingCharge] [decimal](28, 2) NULL,
	[HandlingChargeGST] [decimal](28, 2) NULL,
	[TotalGST] [decimal](28, 2) NULL,
	[Total] [decimal](28, 2) NULL,
	[ReducedItem] [decimal](28, 2) NULL,
	[ReducedFees] [decimal](28, 2) NULL,
	[ReducedGST] [decimal](28, 2) NULL,
	[ReducedTotal] [decimal](28, 2) NULL,
	[FILE_YR] [varchar](4) NULL,
	[FILE_PD] [varchar](2) NULL,
	[LOAD_TIMESTAMP] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RECLMNTN].[CA_UNSALEABLS_APS_INVC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RECLMNTN].[CA_UNSALEABLS_APS_INVC](
	[Distributor] [varchar](255) NULL,
	[Vendor Name] [varchar](255) NULL,
	[Invoice] [varchar](255) NULL,
	[Invoice Date] [datetime2](7) NULL,
	[Items] [decimal](28, 6) NULL,
	[Cost] [decimal](28, 6) NULL,
	[Handling] [decimal](28, 6) NULL,
	[Sub Total] [decimal](28, 6) NULL,
	[Reduction] [decimal](28, 6) NULL,
	[%Reduction] [decimal](28, 6) NULL,
	[GST] [decimal](28, 6) NULL,
	[HST] [decimal](28, 6) NULL,
	[QST] [decimal](28, 6) NULL,
	[Invoice Total] [decimal](28, 6) NULL,
	[FILE_YR] [varchar](4) NULL,
	[FILE_PD] [varchar](2) NULL,
	[LOAD_TIMESTAMP] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RECLMNTN].[CA_UNSALEABLS_APS_ITM]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RECLMNTN].[CA_UNSALEABLS_APS_ITM](
	[Distributor] [varchar](255) NULL,
	[Invoice] [varchar](255) NULL,
	[UPC] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Damage] [varchar](255) NULL,
	[Items] [decimal](28, 2) NULL,
	[Cost] [decimal](28, 2) NULL,
	[Handling] [decimal](28, 2) NULL,
	[Total] [decimal](28, 2) NULL,
	[FILE_YR] [varchar](4) NULL,
	[FILE_PD] [varchar](2) NULL,
	[LOAD_TIMESTAMP] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RECLMNTN].[CA_UNSALEABLS_RPD_DRAFT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RECLMNTN].[CA_UNSALEABLS_RPD_DRAFT](
	[Draft Number] [varchar](255) NULL,
	[Customer Number] [varchar](255) NULL,
	[Product Code] [varchar](255) NULL,
	[Cost Center] [varchar](255) NULL,
	[Payee] [varchar](255) NULL,
	[Auth Number] [varchar](255) NULL,
	[RW3ID] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Issued Date] [date] NULL,
	[Cleared Date] [date] NULL,
	[Item Amount] [decimal](28, 2) NULL,
	[Total Amount] [decimal](28, 2) NULL,
	[FILE_YR] [varchar](4) NULL,
	[FILE_PD] [varchar](2) NULL,
	[LOAD_TIMESTAMP] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RTA].[DOCUMENTS]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RTA].[DOCUMENTS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[DOCID] [int] NULL,
	[DOCGUID] [varchar](50) NULL,
	[URL] [varchar](255) NULL,
	[CREATETIME] [datetime2](7) NULL,
	[SHIPSTARTDATE] [date] NULL,
	[SHIPENDDATE] [date] NULL,
	[PLANNEDSTARTDATE] [date] NULL,
	[PLANNEDENDDATE] [date] NULL,
	[PROMOTIONSTARTDATE] [date] NULL,
	[PROMOTIONENDDATE] [date] NULL,
	[SPENDTYPE] [varchar](50) NULL,
	[PLANTONUMBER] [varchar](50) NULL,
	[AE_EMAIL] [varchar](128) NULL,
	[ALT_EMAIL] [varchar](128) NULL,
	[RTAARRIVAL] [datetime2](7) NULL,
	[RTARELEASE] [datetime2](7) NULL,
	[FIXEDFEE] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RTA].[DOCUMENTS_OLD]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RTA].[DOCUMENTS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[DOCID] [int] NULL,
	[DOCGUID] [varchar](50) NULL,
	[URL] [varchar](255) NULL,
	[CREATETIME] [datetime2](7) NULL,
	[SHIPSTARTDATE] [date] NULL,
	[SHIPENDDATE] [date] NULL,
	[PLANNEDSTARTDATE] [date] NULL,
	[PLANNEDENDDATE] [date] NULL,
	[PROMOTIONSTARTDATE] [date] NULL,
	[PROMOTIONENDDATE] [date] NULL,
	[SPENDTYPE] [varchar](50) NULL,
	[PLANTONUMBER] [varchar](50) NULL,
	[AE_EMAIL] [varchar](128) NULL,
	[ALT_EMAIL] [varchar](128) NULL,
	[RTAARRIVAL] [datetime2](7) NULL,
	[RTARELEASE] [datetime2](7) NULL,
	[FIXEDFEE] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RTA].[LINEITEMFIELDS]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RTA].[LINEITEMFIELDS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[LINEID] [decimal](19, 0) NULL,
	[DOCID] [int] NULL,
	[KELLOGGSKU] [varchar](50) NULL,
	[KELLOGGPK] [varchar](50) NULL,
	[KELLOGGUPC] [varchar](50) NULL,
	[KELLOGGUOM_UPC] [varchar](50) NULL,
	[CUSTOMERSKU] [varchar](50) NULL,
	[CUSTOMERUOM_SKU] [varchar](50) NULL,
	[CUSTOMERUPC] [varchar](50) NULL,
	[SHIPSTARTDATE] [date] NULL,
	[SHIPENDDATE] [date] NULL,
	[PLNSTARTDATE] [date] NULL,
	[PLNENDDATE] [date] NULL,
	[PROMOSTARTDATE] [date] NULL,
	[PROMOENDDATE] [date] NULL,
	[LISTPRICE] [varchar](50) NULL,
	[PARENTOIDOLLAR_CS] [varchar](50) NULL,
	[OIDOLLAR_CS] [varchar](50) NULL,
	[EDLPOIDOLLAR_CS] [varchar](50) NULL,
	[LIQOIDOLLAR_CS] [varchar](50) NULL,
	[LIQDOLLARFIXED] [varchar](50) NULL,
	[SCANDOLLAR_PKG] [varchar](50) NULL,
	[SCANAPPSDOLLAR_PKG] [varchar](50) NULL,
	[SCANAPPSDOLLARFIXED] [varchar](50) NULL,
	[FIXEDDOLLAR] [varchar](50) NULL,
	[FIXFEE_CS] [varchar](50) NULL,
	[FIXFEE_UNIT] [varchar](50) NULL,
	[MILITARYDOLLARFIXED] [varchar](50) NULL,
	[CORRECTIONDOLLARFIXED] [varchar](50) NULL,
	[NIFDOLLARFIXED] [varchar](50) NULL,
	[BBDOLLAR_CS] [varchar](50) NULL,
	[EDLPDOLLAR_CS] [varchar](50) NULL,
	[WWDOLLAR_CS] [varchar](50) NULL,
	[PARENTOIPERC_CS] [varchar](50) NULL,
	[OIPERC_CS] [varchar](50) NULL,
	[EDLPOIPERC_CS] [varchar](50) NULL,
	[LIQOIPERC_CS] [varchar](50) NULL,
	[SCANPERC_PKG] [varchar](50) NULL,
	[SCANAPPSPERC_PKG] [varchar](50) NULL,
	[BBPERC_CS] [varchar](50) NULL,
	[EDLPBBPERC_PKG] [varchar](50) NULL,
	[LIQDOLLAR_PKG] [varchar](50) NULL,
	[BBDOLLAR_PKG] [varchar](50) NULL,
	[EDLPBBDOLLAR_PKG] [varchar](50) NULL,
	[OIPERC_PKG] [varchar](50) NULL,
	[EDLPPERC_PKG] [varchar](50) NULL,
	[LIQOIPERC_PKG] [varchar](50) NULL,
	[BBPERC_PKG] [varchar](50) NULL,
	[LI_PROMOTIONCODES] [varchar](50) NULL,
	[SPNEDTYPELI] [varchar](50) NULL,
	[PERCS_BB_OI] [varchar](50) NULL,
	[INVPER_CS] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RTA].[LINEITEMFIELDS_OLD]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RTA].[LINEITEMFIELDS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[LINEID] [decimal](19, 0) NULL,
	[DOCID] [int] NULL,
	[KELLOGGSKU] [varchar](50) NULL,
	[KELLOGGPK] [varchar](50) NULL,
	[KELLOGGUPC] [varchar](50) NULL,
	[KELLOGGUOM_UPC] [varchar](50) NULL,
	[CUSTOMERSKU] [varchar](50) NULL,
	[CUSTOMERUOM_SKU] [varchar](50) NULL,
	[CUSTOMERUPC] [varchar](50) NULL,
	[SHIPSTARTDATE] [date] NULL,
	[SHIPENDDATE] [date] NULL,
	[PLNSTARTDATE] [date] NULL,
	[PLNENDDATE] [date] NULL,
	[PROMOSTARTDATE] [date] NULL,
	[PROMOENDDATE] [date] NULL,
	[LISTPRICE] [varchar](50) NULL,
	[PARENTOIDOLLAR_CS] [varchar](50) NULL,
	[OIDOLLAR_CS] [varchar](50) NULL,
	[EDLPOIDOLLAR_CS] [varchar](50) NULL,
	[LIQOIDOLLAR_CS] [varchar](50) NULL,
	[LIQDOLLARFIXED] [varchar](50) NULL,
	[SCANDOLLAR_PKG] [varchar](50) NULL,
	[SCANAPPSDOLLAR_PKG] [varchar](50) NULL,
	[SCANAPPSDOLLARFIXED] [varchar](50) NULL,
	[FIXEDDOLLAR] [varchar](50) NULL,
	[FIXFEE_CS] [varchar](50) NULL,
	[FIXFEE_UNIT] [varchar](50) NULL,
	[MILITARYDOLLARFIXED] [varchar](50) NULL,
	[CORRECTIONDOLLARFIXED] [varchar](50) NULL,
	[NIFDOLLARFIXED] [varchar](50) NULL,
	[BBDOLLAR_CS] [varchar](50) NULL,
	[EDLPDOLLAR_CS] [varchar](50) NULL,
	[WWDOLLAR_CS] [varchar](50) NULL,
	[PARENTOIPERC_CS] [varchar](50) NULL,
	[OIPERC_CS] [varchar](50) NULL,
	[EDLPOIPERC_CS] [varchar](50) NULL,
	[LIQOIPERC_CS] [varchar](50) NULL,
	[SCANPERC_PKG] [varchar](50) NULL,
	[SCANAPPSPERC_PKG] [varchar](50) NULL,
	[BBPERC_CS] [varchar](50) NULL,
	[EDLPBBPERC_PKG] [varchar](50) NULL,
	[LIQDOLLAR_PKG] [varchar](50) NULL,
	[BBDOLLAR_PKG] [varchar](50) NULL,
	[EDLPBBDOLLAR_PKG] [varchar](50) NULL,
	[OIPERC_PKG] [varchar](50) NULL,
	[EDLPPERC_PKG] [varchar](50) NULL,
	[LIQOIPERC_PKG] [varchar](50) NULL,
	[BBPERC_PKG] [varchar](50) NULL,
	[LI_PROMOTIONCODES] [varchar](50) NULL,
	[SPNEDTYPELI] [varchar](50) NULL,
	[PERCS_BB_OI] [varchar](50) NULL,
	[INVPER_CS] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RTA].[PROMOCODES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RTA].[PROMOCODES](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PROMOCODEID] [decimal](19, 0) NULL,
	[DOCID] [int] NULL,
	[PROMOCODE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RTA].[PROMOCODES_OLD]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RTA].[PROMOCODES_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PROMOCODEID] [decimal](19, 0) NULL,
	[DOCID] [int] NULL,
	[PROMOCODE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SFDC].[ALERT_CASE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SFDC].[ALERT_CASE](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [varchar](5) NULL,
	[CaseNumber] [varchar](30) NULL,
	[ContactId] [varchar](18) NULL,
	[AccountId] [varchar](18) NULL,
	[AssetId] [varchar](18) NULL,
	[ProductId] [varchar](18) NULL,
	[EntitlementId] [varchar](18) NULL,
	[QuestionId] [varchar](18) NULL,
	[BusinessHoursId] [varchar](18) NULL,
	[ParentId] [varchar](18) NULL,
	[SuppliedName] [varchar](80) NULL,
	[SuppliedEmail] [varchar](80) NULL,
	[SuppliedPhone] [varchar](40) NULL,
	[SuppliedCompany] [varchar](80) NULL,
	[Type] [varchar](40) NULL,
	[RecordTypeId] [varchar](18) NULL,
	[Status] [varchar](40) NULL,
	[Reason] [varchar](40) NULL,
	[Origin] [varchar](40) NULL,
	[IsVisibleInSelfService] [varchar](5) NULL,
	[Subject] [varchar](255) NULL,
	[Description] [varchar](8000) NULL,
	[IsClosed] [varchar](5) NULL,
	[ClosedDate] [datetime2](7) NULL,
	[IsEscalated] [varchar](5) NULL,
	[HasCommentsUnreadByOwner] [varchar](5) NULL,
	[HasSelfServiceComments] [varchar](5) NULL,
	[OwnerId] [varchar](18) NULL,
	[IsClosedOnCreate] [varchar](5) NULL,
	[IsSelfServiceClosed] [varchar](5) NULL,
	[SlaStartDate] [datetime2](7) NULL,
	[SlaExitDate] [datetime2](7) NULL,
	[IsStopped] [varchar](5) NULL,
	[StopStartDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [varchar](18) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedById] [varchar](18) NULL,
	[SystemModstamp] [datetime2](7) NULL,
	[MilestoneStatus] [varchar](30) NULL,
	[Alert_Category__c] [varchar](255) NULL,
	[Alert_Type__c] [varchar](255) NULL,
	[Booking_Reference_Number__c] [varchar](16) NULL,
	[Business_Unit__c] [varchar](30) NULL,
	[CSR__c] [varchar](10) NULL,
	[Company_Code__c] [varchar](4) NULL,
	[Escalate__c] [varchar](5) NULL,
	[IDOC_for_Failed_Refusal__c] [varchar](20) NULL,
	[IDocId__c] [varchar](30) NULL,
	[IDoc_Header_Identifier__c] [varchar](18) NULL,
	[IDoc_Identifier__c] [varchar](255) NULL,
	[Lead_Time__c] [decimal](18, 0) NULL,
	[Manager_E_mail__c] [varchar](80) NULL,
	[Manager__c] [varchar](1300) NULL,
	[PO_Number__c] [varchar](70) NULL,
	[Payer_Number__c] [varchar](10) NULL,
	[Plant__c] [varchar](4) NULL,
	[Region_Identifier__c] [varchar](10) NULL,
	[Requested_Del_Date__c] [date] NULL,
	[Resolution_Time__c] [varchar](1300) NULL,
	[SAP_Load_Date__c] [date] NULL,
	[SAP_Order__c] [varchar](10) NULL,
	[Sales_Document__c] [varchar](255) NULL,
	[Ship_Mode__c] [varchar](2) NULL,
	[Ship_To_Number__c] [varchar](10) NULL,
	[Sold_To_Number__c] [varchar](10) NULL,
	[Owner_Check__c] [varchar](5) NULL,
	[Manager_Name__c] [varchar](1300) NULL,
	[Diff_b_w_created_and_closed_date__c] [decimal](18, 0) NULL,
	[Market__c] [varchar](255) NULL,
	[Market_On_Case__c] [varchar](1300) NULL,
	[Carrier_Reason_Code_SAP__c] [varchar](20) NULL,
	[New_Requested_Del_Date__c] [date] NULL,
	[SAP_Order_Create_Date__c] [date] NULL,
	[SAP_Total_Number_of_Cases__c] [decimal](18, 3) NULL,
	[SAP_Total_Number_of_Pallets__c] [decimal](18, 3) NULL,
	[SAP_Total_UL__c] [decimal](18, 3) NULL,
	[Case_Priority__c] [varchar](1300) NULL,
	[Cube_Adjusted_Weight_CAW__c] [decimal](18, 2) NULL,
	[Total_Stacked_Unit_Load_SUL__c] [decimal](18, 2) NULL,
	[Shipment_No_Case__c] [varchar](1300) NULL,
	[Delivery_Number_Case__c] [varchar](1300) NULL,
	[Sales_Org_number__c] [varchar](1300) NULL,
	[BODS_Timestamp] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SFDC].[CUSTOMER_ACCOUNT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SFDC].[CUSTOMER_ACCOUNT](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [varchar](5) NULL,
	[MasterRecordId] [varchar](18) NULL,
	[Name] [varchar](255) NULL,
	[Type] [varchar](40) NULL,
	[RecordTypeId] [varchar](18) NULL,
	[ParentId] [varchar](18) NULL,
	[BillingStreet] [varchar](255) NULL,
	[BillingCity] [varchar](40) NULL,
	[BillingState] [varchar](80) NULL,
	[BillingPostalCode] [varchar](20) NULL,
	[BillingCountry] [varchar](80) NULL,
	[ShippingStreet] [varchar](255) NULL,
	[ShippingCity] [varchar](40) NULL,
	[ShippingState] [varchar](80) NULL,
	[ShippingPostalCode] [varchar](20) NULL,
	[ShippingCountry] [varchar](80) NULL,
	[Phone] [varchar](40) NULL,
	[Fax] [varchar](40) NULL,
	[AccountNumber] [varchar](40) NULL,
	[Website] [varchar](255) NULL,
	[Sic] [varchar](20) NULL,
	[Industry] [varchar](40) NULL,
	[AnnualRevenue] [decimal](18, 0) NULL,
	[NumberOfEmployees] [int] NULL,
	[Ownership] [varchar](40) NULL,
	[TickerSymbol] [varchar](20) NULL,
	[Description] [varchar](8000) NULL,
	[Rating] [varchar](40) NULL,
	[Site] [varchar](80) NULL,
	[OwnerId] [varchar](18) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [varchar](18) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedById] [varchar](18) NULL,
	[SystemModstamp] [datetime2](7) NULL,
	[LastActivityDate] [date] NULL,
	[IsCustomerPortal] [varchar](5) NULL,
	[Account_Channel__c] [varchar](255) NULL,
	[Account_Indicator__c] [varchar](1) NULL,
	[Account_Number__c] [varchar](40) NULL,
	[Account_Portal_Link__c] [varchar](255) NULL,
	[Account_Priority__c] [varchar](30) NULL,
	[Account_Specific_Block__c] [varchar](5) NULL,
	[Additional_Notes__c] [varchar](255) NULL,
	[Business_Unit__c] [varchar](255) NULL,
	[CSR_Partner_ID__c] [varchar](18) NULL,
	[Finance_Alert_Flag__c] [varchar](1300) NULL,
	[Inactive__c] [varchar](5) NULL,
	[Name_2__c] [varchar](100) NULL,
	[Partner_Account_Number__c] [varchar](40) NULL,
	[Receiving_Hours__c] [varchar](255) NULL,
	[Region_Identifier__c] [varchar](50) NULL,
	[Count_Finance_Alerts__c] [decimal](18, 0) NULL,
	[Sales_Org__c] [varchar](10) NULL,
	[Market__c] [varchar](255) NULL,
	[Distribution_Channel__c] [varchar](2) NULL,
	[Division__c] [varchar](2) NULL,
	[Intercompany_Indicator__c] [varchar](2) NULL,
	[BODS_Timestamp] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SFDC].[USER]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SFDC].[USER](
	[Id] [varchar](18) NOT NULL,
	[Username] [varchar](80) NULL,
	[LastName] [varchar](80) NULL,
	[FirstName] [varchar](40) NULL,
	[Name] [varchar](121) NULL,
	[CompanyName] [varchar](80) NULL,
	[Division] [varchar](80) NULL,
	[Department] [varchar](80) NULL,
	[Title] [varchar](80) NULL,
	[Street] [varchar](255) NULL,
	[City] [varchar](40) NULL,
	[State] [varchar](80) NULL,
	[PostalCode] [varchar](20) NULL,
	[Country] [varchar](80) NULL,
	[Email] [varchar](128) NULL,
	[Phone] [varchar](40) NULL,
	[Fax] [varchar](40) NULL,
	[MobilePhone] [varchar](40) NULL,
	[Alias] [varchar](8) NULL,
	[CommunityNickname] [varchar](40) NULL,
	[IsActive] [varchar](5) NULL,
	[TimeZoneSidKey] [varchar](40) NULL,
	[UserRoleId] [varchar](18) NULL,
	[LocaleSidKey] [varchar](40) NULL,
	[ReceivesInfoEmails] [varchar](5) NULL,
	[ReceivesAdminInfoEmails] [varchar](5) NULL,
	[EmailEncodingKey] [varchar](40) NULL,
	[ProfileId] [varchar](18) NULL,
	[UserType] [varchar](40) NULL,
	[LanguageLocaleKey] [varchar](40) NULL,
	[EmployeeNumber] [varchar](20) NULL,
	[DelegatedApproverId] [varchar](18) NULL,
	[ManagerId] [varchar](18) NULL,
	[LastLoginDate] [datetime2](7) NULL,
	[LastPasswordChangeDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [varchar](18) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedById] [varchar](18) NULL,
	[SystemModstamp] [datetime2](7) NULL,
	[OfflineTrialExpirationDate] [datetime2](7) NULL,
	[OfflinePdaTrialExpirationDate] [datetime2](7) NULL,
	[UserPermissionsMarketingUser] [varchar](5) NULL,
	[UserPermissionsOfflineUser] [varchar](5) NULL,
	[UserPermissionsAvantgoUser] [varchar](5) NULL,
	[UserPermissionsCallCenterAutoLogin] [varchar](5) NULL,
	[UserPermissionsMobileUser] [varchar](5) NULL,
	[UserPermissionsSFContentUser] [varchar](5) NULL,
	[UserPermissionsKnowledgeUser] [varchar](5) NULL,
	[UserPermissionsInteractionUser] [varchar](5) NULL,
	[UserPermissionsSupportUser] [varchar](5) NULL,
	[ForecastEnabled] [varchar](5) NULL,
	[UserPreferencesActivityRemindersPopup] [varchar](5) NULL,
	[UserPreferencesEventRemindersCheckboxDefault] [varchar](5) NULL,
	[UserPreferencesTaskRemindersCheckboxDefault] [varchar](5) NULL,
	[UserPreferencesReminderSoundOff] [varchar](5) NULL,
	[UserPreferencesDisableAutoSubForFeeds] [varchar](5) NULL,
	[UserPreferencesApexPagesDeveloperMode] [varchar](5) NULL,
	[UserPreferencesHideCSNGetChatterMobileTask] [varchar](5) NULL,
	[UserPreferencesHideCSNDesktopTask] [varchar](5) NULL,
	[UserPreferencesSortFeedByComment] [varchar](5) NULL,
	[UserPreferencesOptOutOfTouch] [varchar](5) NULL,
	[UserPreferencesLightningExperiencePreferred] [varchar](5) NULL,
	[ContactId] [varchar](18) NULL,
	[AccountId] [varchar](18) NULL,
	[CallCenterId] [varchar](18) NULL,
	[Extension] [varchar](40) NULL,
	[PortalRole] [varchar](40) NULL,
	[IsPortalEnabled] [varchar](5) NULL,
	[IsPortalSelfRegistered] [varchar](5) NULL,
	[FederationIdentifier] [varchar](512) NULL,
	[AboutMe] [varchar](1000) NULL,
	[CurrentStatus] [varchar](1000) NULL,
	[FullPhotoUrl] [varchar](1024) NULL,
	[SmallPhotoUrl] [varchar](1024) NULL,
	[DigestFrequency] [varchar](40) NULL,
	[DefaultGroupNotificationFrequency] [varchar](40) NULL,
	[CSR_ID__c] [varchar](50) NULL,
	[Email_ID__c] [varchar](80) NULL,
	[BODS_Timestamp] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[REX_AUDIT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[REX_AUDIT](
	[VISITGUID] [varchar](36) NULL,
	[PRODUCTPACKEXTERNALID] [varchar](20) NULL,
	[PRODUCTPACKUPC] [varchar](20) NULL,
	[PRODUCTPACKNAME] [varchar](300) NULL,
	[PRODUCTPACKPACKINGCODE] [varchar](30) NULL,
	[SHELFCODE] [varchar](20) NULL,
	[ONHAND] [numeric](10, 2) NULL,
	[DAYSOFSUPPLY] [numeric](10, 2) NULL,
	[UNITSPERSTOREPERWEEK] [numeric](10, 2) NULL,
	[STOREAUTHORIZATION] [int] NULL,
	[INDISTRIBUTION] [int] NULL,
	[ORCHESTROALERTID] [varchar](20) NULL,
	[ORCHESTROITEMALERT] [varchar](20) NULL,
	[REPITEMALERT] [varchar](1000) NULL,
	[ALERTDATE] [datetime] NULL,
	[ACTION] [varchar](1000) NULL,
	[SALESDOLLARRISK] [numeric](9, 3) NULL,
	[UNITSRISK] [numeric](9, 3) NULL,
	[FACINGS] [varchar](10) NULL,
	[INNOVATION] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[LAST_MOD] [datetime2](7) NULL,
	[BVOIDFILLED] [varchar](1) NULL,
	[SALESACTIVITY] [varchar](50) NULL,
	[SALESTYPE] [varchar](50) NULL,
	[CASESSOLD] [numeric](10, 0) NULL,
	[CASESPUTONDISPLAY] [numeric](10, 0) NULL,
	[PRODUCTPACKPRICE] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[REX_CALL_COVERAGE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[REX_CALL_COVERAGE](
	[TERRITORYEXTERNALID] [int] NULL,
	[TERRITORYNAME] [varchar](50) NULL,
	[AREAEXTERNALID] [int] NULL,
	[AREANAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPID] [varchar](50) NULL,
	[TERRITORYPRIMARYREPFIRSTNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPLASTNAME] [varchar](50) NULL,
	[COMPLETEDVISITSCOUNT] [int] NULL,
	[NOTCANCELLEDVISITSCOUNT] [int] NULL,
	[REGIONEXTERNALID] [int] NULL,
	[REGIONEXTERNALNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPKSMMANAGERFIRSTNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPKSMMANAGERLASTNAME] [varchar](50) NULL,
	[LAST_MOD] [datetime2](7) NULL,
	[TERRITORYPRIMARYREPEMPNUM] [varchar](50) NULL,
	[TERRITORYPRIMARYREPKSMMANAGEREMPNUM] [varchar](50) NULL,
	[STARTDATE] [datetime2](7) NULL,
	[ENDDATE] [datetime2](7) NULL,
	[CALLCOVERAGE%] [numeric](10, 4) NULL,
	[AREACALLCOVERAGE%] [numeric](10, 4) NULL,
	[REGIONCALLCOVERAGE%] [numeric](10, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[REX_KPI_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[REX_KPI_SALES](
	[KPI_ID] [varchar](32) NOT NULL,
	[CLASS] [varchar](32) NOT NULL,
	[Object_ID] [float] NULL,
	[KPIDate] [char](10) NULL,
	[Calculation] [float] NULL,
	[TargetCalculation] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[REX_PREBOOKED_ORDERS]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[REX_PREBOOKED_ORDERS](
	[ORDERHEADERGUID] [varchar](36) NULL,
	[VISITGUID] [varchar](36) NULL,
	[RECORDSTAMPWHENUPDATE] [datetime] NULL,
	[STOREEXTERNALID] [varchar](20) NULL,
	[STORENAME] [varchar](100) NULL,
	[KEYACCOUNTEXTERNALID] [varchar](20) NULL,
	[KEYACCOUNTNAME] [varchar](100) NULL,
	[ORDERREPID] [varchar](255) NULL,
	[ORDERREPFIRSTNAME] [varchar](40) NULL,
	[ORDERREPLASTNAME] [varchar](40) NULL,
	[STOREPRIMETERRITORYEXTERNALID] [varchar](20) NULL,
	[STOREPRIMETERRITORYNAME] [varchar](35) NULL,
	[CONTACTNAME] [varchar](100) NULL,
	[PROMOTIONNAME] [varchar](60) NULL,
	[PROMOSTARTDATE] [datetime] NULL,
	[PROMOENDDATE] [datetime] NULL,
	[PROMOBUYINSTARTDATE] [datetime] NULL,
	[PROMOBUYINENDDATE] [datetime] NULL,
	[PROMOSUMMARY] [varchar](1000) NULL,
	[PRODUCTPACKEXTERNALID] [varchar](20) NULL,
	[PRODUCTPACKUPC] [varchar](20) NULL,
	[PRODUCTPACKNAME] [varchar](100) NULL,
	[PRODUCTPACKPACKINGCODE] [varchar](20) NULL,
	[SHELFCODE] [varchar](20) NULL,
	[QTY1] [numeric](14, 3) NULL,
	[QTY2] [numeric](5, 0) NULL,
	[QTY3] [numeric](5, 0) NULL,
	[QTY4] [numeric](5, 0) NULL,
	[DELIVERYINSTRUCTIONS] [varchar](1000) NULL,
	[LAST_MOD] [datetime2](7) NULL,
	[CONTACTTITLE] [varchar](255) NULL,
	[COMMENTSNOTES] [varchar](255) NULL,
	[PRODUCTPACKPRICE] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[REX_VISIT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[REX_VISIT](
	[VISITGUID] [varchar](36) NULL,
	[STOREEXTERNALID] [varchar](20) NULL,
	[STORENAME] [varchar](100) NULL,
	[KEYACCOUNTEXTERNALID] [varchar](20) NULL,
	[KEYACCOUNTNAME] [varchar](100) NULL,
	[CONSULTANTID] [varchar](255) NULL,
	[CONSULTANTFIRSTNAME] [varchar](40) NULL,
	[CONSULTANTLASTNAME] [varchar](40) NULL,
	[STOREPRIMETERRITORYEXTERNALID] [varchar](20) NULL,
	[STOREPRIMETERRITORYNAME] [varchar](35) NULL,
	[ACTUALSTARTDATETIME] [datetime] NULL,
	[ACTUALFINISHDATETIME] [datetime] NULL,
	[SCHEDULEDSTARTDATETIME] [datetime] NULL,
	[SCHEDULEDFINISHDATETIME] [datetime] NULL,
	[LAST_MOD] [datetime2](7) NULL,
	[RMXCALLTYPE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[SNACKS_AUDIT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[SNACKS_AUDIT](
	[VISITGUID] [varchar](36) NULL,
	[PRODUCTPACKEXTERNALID] [varchar](20) NULL,
	[PRODUCTPACKUPC] [varchar](20) NULL,
	[PRODUCTPACKNAME] [varchar](300) NULL,
	[PRODUCTPACKPACKINGCODE] [varchar](30) NULL,
	[SHELFCODE] [varchar](20) NULL,
	[ONHAND] [numeric](10, 2) NULL,
	[DAYSOFSUPPLY] [numeric](10, 2) NULL,
	[UNITSPERSTOREPERWEEK] [numeric](10, 2) NULL,
	[STOREAUTHORIZATION] [int] NULL,
	[INDISTRIBUTION] [int] NULL,
	[ORCHESTROALERTID] [varchar](20) NULL,
	[ORCHESTROITEMALERT] [varchar](20) NULL,
	[REPITEMALERT] [varchar](1000) NULL,
	[ALERTDATE] [datetime] NULL,
	[ACTION] [varchar](1000) NULL,
	[SALESDOLLARRISK] [numeric](9, 3) NULL,
	[UNITSRISK] [numeric](9, 3) NULL,
	[FACINGS] [varchar](10) NULL,
	[INNOVATION] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[SNACKS_CALL_COVERAGE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[SNACKS_CALL_COVERAGE](
	[TERRITORYEXTERNALID] [int] NULL,
	[TERRITORYNAME] [varchar](50) NULL,
	[AREAEXTERNALID] [int] NULL,
	[AREANAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPID] [varchar](50) NULL,
	[TERRITORYPRIMARYREPFIRSTNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPLASTNAME] [varchar](50) NULL,
	[COMPLETEDVISITSCOUNT] [int] NULL,
	[NOTCANCELLEDVISITSCOUNT] [int] NULL,
	[TERRITORYPRIMARYREPEMPNUM] [varchar](50) NULL,
	[REGIONEXTERNALID] [int] NULL,
	[REGIONEXTERNALNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPKSMMANAGERFIRSTNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPKSMMANAGERLASTNAME] [varchar](50) NULL,
	[TERRITORYPRIMARYREPKSMMANAGEREMPNUM] [varchar](50) NULL,
	[STARTDATE] [datetime2](7) NULL,
	[ENDDATE] [datetime2](7) NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[SNACKS_DISPLAY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[SNACKS_DISPLAY](
	[VISITGUID] [varchar](36) NULL,
	[DETAILITEMEXTERNALID] [varchar](20) NULL,
	[DETAILITEMNAME] [varchar](50) NULL,
	[QUANTITY] [int] NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[SNACKS_KPI_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[SNACKS_KPI_SALES](
	[KPI_ID] [varchar](22) NOT NULL,
	[CLASS] [varchar](12) NOT NULL,
	[Object_ID] [float] NULL,
	[KPIDate] [char](10) NULL,
	[Calculation] [float] NULL,
	[TargetCalculation] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[SNACKS_PREBOOKED_ORDERS]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[SNACKS_PREBOOKED_ORDERS](
	[ORDERHEADERGUID] [varchar](36) NULL,
	[VISITGUID] [varchar](36) NULL,
	[RECORDSTAMPWHENUPDATE] [datetime] NULL,
	[STOREEXTERNALID] [varchar](20) NULL,
	[STORENAME] [varchar](100) NULL,
	[KEYACCOUNTEXTERNALID] [varchar](20) NULL,
	[KEYACCOUNTNAME] [varchar](100) NULL,
	[ORDERREPID] [varchar](255) NULL,
	[ORDERREPFIRSTNAME] [varchar](40) NULL,
	[ORDERREPLASTNAME] [varchar](40) NULL,
	[STOREPRIMETERRITORYEXTERNALID] [varchar](20) NULL,
	[STOREPRIMETERRITORYNAME] [varchar](35) NULL,
	[CONTACTNAME] [varchar](100) NULL,
	[PROMOTIONNAME] [varchar](60) NULL,
	[PROMOSTARTDATE] [datetime] NULL,
	[PROMOENDDATE] [datetime] NULL,
	[PROMOBUYINSTARTDATE] [datetime] NULL,
	[PROMOBUYINENDDATE] [datetime] NULL,
	[PROMOSUMMARY] [varchar](1000) NULL,
	[PRODUCTPACKEXTERNALID] [varchar](20) NULL,
	[PRODUCTPACKUPC] [varchar](20) NULL,
	[PRODUCTPACKNAME] [varchar](100) NULL,
	[PRODUCTPACKPACKINGCODE] [varchar](20) NULL,
	[SHELFCODE] [varchar](20) NULL,
	[QTY1] [numeric](14, 3) NULL,
	[QTY2] [numeric](5, 0) NULL,
	[QTY3] [numeric](5, 0) NULL,
	[QTY4] [numeric](5, 0) NULL,
	[DELIVERYINSTRUCTIONS] [varchar](1000) NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SIF].[SNACKS_VISIT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SIF].[SNACKS_VISIT](
	[VISITGUID] [varchar](36) NULL,
	[STOREEXTERNALID] [varchar](20) NULL,
	[STORENAME] [varchar](100) NULL,
	[KEYACCOUNTEXTERNALID] [varchar](20) NULL,
	[KEYACCOUNTNAME] [varchar](100) NULL,
	[CONSULTANTID] [varchar](255) NULL,
	[CONSULTANTFIRSTNAME] [varchar](40) NULL,
	[CONSULTANTLASTNAME] [varchar](40) NULL,
	[STOREPRIMETERRITORYEXTERNALID] [varchar](20) NULL,
	[STOREPRIMETERRITORYNAME] [varchar](35) NULL,
	[ACTUALSTARTDATETIME] [datetime] NULL,
	[ACTUALFINISHDATETIME] [datetime] NULL,
	[SCHEDULEDSTARTDATETIME] [datetime] NULL,
	[SCHEDULEDFINISHDATETIME] [datetime] NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CA_UNSALEABLS_ALLIED]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CA_UNSALEABLS_ALLIED](
	[InvoiceID] [int] NULL,
	[PeriodStartDate] [date] NULL,
	[PeriodEndDate] [date] NULL,
	[Distributor] [varchar](255) NULL,
	[Period] [int] NULL,
	[ManufacturerCompanyName] [varchar](255) NULL,
	[ManufacturerNumber] [varchar](255) NULL,
	[Location] [varchar](255) NULL,
	[InvoiceNumber] [varchar](255) NULL,
	[UPC] [varchar](255) NULL,
	[ProductDescription] [varchar](255) NULL,
	[CausalFactor] [varchar](255) NULL,
	[Quantity] [decimal](28, 2) NULL,
	[Cost] [decimal](28, 2) NULL,
	[ExtendedCost] [decimal](28, 2) NULL,
	[ItemGST] [decimal](28, 2) NULL,
	[HandlingCharge] [decimal](28, 2) NULL,
	[HandlingChargeGST] [decimal](28, 2) NULL,
	[TotalGST] [decimal](28, 2) NULL,
	[Total] [decimal](28, 2) NULL,
	[ReducedItem] [decimal](28, 2) NULL,
	[ReducedFees] [decimal](28, 2) NULL,
	[ReducedGST] [decimal](28, 2) NULL,
	[ReducedTotal] [decimal](28, 2) NULL,
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CA_UNSALEABLS_APS_INVC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CA_UNSALEABLS_APS_INVC](
	[Distributor] [varchar](255) NULL,
	[Vendor Name] [varchar](255) NULL,
	[Invoice] [varchar](255) NULL,
	[Invoice Date] [datetime2](7) NULL,
	[Items] [decimal](28, 6) NULL,
	[Cost] [decimal](28, 6) NULL,
	[Handling] [decimal](28, 6) NULL,
	[Sub Total] [decimal](28, 6) NULL,
	[Reduction] [decimal](28, 6) NULL,
	[%Reduction] [decimal](28, 6) NULL,
	[GST] [decimal](28, 6) NULL,
	[HST] [decimal](28, 6) NULL,
	[QST] [decimal](28, 6) NULL,
	[Invoice Total] [decimal](28, 6) NULL,
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CA_UNSALEABLS_APS_ITM]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CA_UNSALEABLS_APS_ITM](
	[Distributor] [varchar](255) NULL,
	[Invoice] [varchar](255) NULL,
	[UPC] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Damage] [varchar](255) NULL,
	[Items] [decimal](28, 2) NULL,
	[Cost] [decimal](28, 2) NULL,
	[Handling] [decimal](28, 2) NULL,
	[Total] [decimal](28, 2) NULL,
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CA_UNSALEABLS_RPD_DRAFT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CA_UNSALEABLS_RPD_DRAFT](
	[Draft Number] [varchar](255) NULL,
	[Customer Number] [varchar](255) NULL,
	[Product Code] [varchar](255) NULL,
	[Cost Center] [varchar](255) NULL,
	[Payee] [varchar](255) NULL,
	[Auth Number] [varchar](255) NULL,
	[RW3ID] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Issued Date] [date] NULL,
	[Cleared Date] [date] NULL,
	[Item Amount] [decimal](28, 2) NULL,
	[Total Amount] [decimal](28, 2) NULL,
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CA_UNSALEABLS_RPD_DRAFT_EXCPTN_RPT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CA_UNSALEABLS_RPD_DRAFT_EXCPTN_RPT](
	[Auth Number] [float] NULL,
	[Customer Number] [float] NULL,
	[Draft Number] [float] NULL,
	[Payee] [varchar](255) NULL,
	[Item Amount] [float] NULL,
	[Total Amount] [float] NULL,
	[Region] [varchar](255) NULL,
	[Correct_Plan_To] [float] NULL,
	[LOAD_TIMESTAMP] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CA_UNSALEABLS_RPD_DRAFT_RAW]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CA_UNSALEABLS_RPD_DRAFT_RAW](
	[Draft Number] [varchar](255) NULL,
	[Customer Number] [varchar](255) NULL,
	[Product Code] [varchar](255) NULL,
	[Cost Center] [varchar](255) NULL,
	[Payee] [varchar](255) NULL,
	[Auth Number] [varchar](255) NULL,
	[RW3ID] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Issued Date] [varchar](10) NULL,
	[Cleared Date] [varchar](10) NULL,
	[Item Amount] [varchar](48) NULL,
	[Total Amount] [varchar](48) NULL,
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[DELOITTE_SALES_ORDR]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[DELOITTE_SALES_ORDR](
	[SALES_ORDR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[DELVRY_RSN_CODE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[DELVRY_RSN_CODE](
	[BUSINESS_UNIT] [varchar](255) NULL,
	[ME_CREATED_DATE] [datetime2](7) NULL,
	[ORDER_TYPE] [varchar](255) NULL,
	[CUSTOMER] [varchar](255) NULL,
	[MODE_TYPE] [varchar](255) NULL,
	[LANE] [varchar](255) NULL,
	[ORG_LOC_ID] [float] NULL,
	[ORG_NAME] [varchar](255) NULL,
	[ORG_CITY] [varchar](255) NULL,
	[ORG_STATE] [varchar](255) NULL,
	[ORG_ZIP] [varchar](255) NULL,
	[REC_LOC_ID] [varchar](255) NULL,
	[REC_NAME] [varchar](255) NULL,
	[REC_CITY] [varchar](255) NULL,
	[REC_STATE] [varchar](255) NULL,
	[REC_ZIP] [varchar](255) NULL,
	[MODE_EXE] [float] NULL,
	[PRI_REF] [float] NULL,
	[CAR_SCAC] [varchar](255) NULL,
	[STOP_NBR] [float] NULL,
	[DID_APT_CHA] [varchar](255) NULL,
	[ANY_APT_CHA_CARR_FLT_CD] [varchar](255) NULL,
	[NUM_TIM_TP_USR_CNGD_APT] [float] NULL,
	[NAM_TP_USR_CHNG_APPTS] [varchar](255) NULL,
	[TP_USR_APT_CHNG_RESN] [varchar](255) NULL,
	[REQ_ERL_DEL_DT] [datetime2](7) NULL,
	[REQ_LAT_DEL_D] [datetime2](7) NULL,
	[FST_CONF_APPT_RESET] [varchar](255) NULL,
	[FST_CONF_APPT_DT] [datetime2](7) NULL,
	[FST_CONF_APPT_RSET_RES_PTY] [varchar](255) NULL,
	[FST_CONF_APPT_RESN] [varchar](255) NULL,
	[LAT_CAR_APPT_DT] [datetime2](7) NULL,
	[MST_ARVE_BY_DT] [datetime2](7) NULL,
	[ACT_DEL_DT] [datetime2](7) NULL,
	[ACT_DEL_DEP_DT] [datetime2](7) NULL,
	[CHE_CAL_RESN] [varchar](255) NULL,
	[CHE_CAL_RESN_RES_PTY] [varchar](255) NULL,
	[MEA_SAT_ADJ_CNT] [float] NULL,
	[SAT_ADJ_OT_CNT] [float] NULL,
	[SAT_ADJ_RESN] [varchar](255) NULL,
	[SAT_ADJ_OT] [float] NULL,
	[MEAS_SAT_CNT] [float] NULL,
	[SAT_OT_CNT] [float] NULL,
	[SAT_OT] [float] NULL,
	[MEAS_RAD_CNT] [float] NULL,
	[RAD_OT_CNT] [float] NULL,
	[RAD_ADJ_RESN] [varchar](255) NULL,
	[RAD_OT] [float] NULL,
	[MEAS_RAD_ADJ_CNT] [float] NULL,
	[RAD_ADJ_OT_CNT] [float] NULL,
	[RAD_ADJ_OT] [float] NULL,
	[MEAS_SAD_OT_CNT] [float] NULL,
	[SAD_OT_CNT] [float] NULL,
	[SAD_OT] [float] NULL,
	[MEAS_RAD_DN_OT_CNT] [float] NULL,
	[RAD_DN_OT_CNT] [float] NULL,
	[RAD_AT_DN_OT] [float] NULL,
	[WEEK] [float] NULL,
	[PERIOD] [float] NULL,
	[STO_CLASS] [varchar](255) NULL,
	[CUST_CLASS] [varchar](255) NULL,
	[ACT_SHIP_DT] [datetime2](7) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](20) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](20) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](20) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[FIN_ADJ_BUD_COP]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[FIN_ADJ_BUD_COP](
	[SKU #] [varchar](255) NULL,
	[SKU Text] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[P1] [decimal](20, 2) NULL,
	[P2] [decimal](20, 2) NULL,
	[P3] [decimal](20, 2) NULL,
	[P4] [decimal](20, 2) NULL,
	[P5] [decimal](20, 2) NULL,
	[P6] [decimal](20, 2) NULL,
	[P7] [decimal](20, 2) NULL,
	[P8] [decimal](20, 2) NULL,
	[P9] [decimal](20, 2) NULL,
	[P10] [decimal](20, 2) NULL,
	[P11] [decimal](20, 2) NULL,
	[P12] [decimal](20, 2) NULL,
	[FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[FIN_ADJ_BUD_GSV]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[FIN_ADJ_BUD_GSV](
	[SKU #] [varchar](255) NULL,
	[SKU Text] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[P1] [decimal](20, 2) NULL,
	[P2] [decimal](20, 2) NULL,
	[P3] [decimal](20, 2) NULL,
	[P4] [decimal](20, 2) NULL,
	[P5] [decimal](20, 2) NULL,
	[P6] [decimal](20, 2) NULL,
	[P7] [decimal](20, 2) NULL,
	[P8] [decimal](20, 2) NULL,
	[P9] [decimal](20, 2) NULL,
	[P10] [decimal](20, 2) NULL,
	[P11] [decimal](20, 2) NULL,
	[P12] [decimal](20, 2) NULL,
	[FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[FIN_ADJ_BUD_KG]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[FIN_ADJ_BUD_KG](
	[SKU #] [varchar](255) NULL,
	[SKU Text] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[P1] [decimal](20, 2) NULL,
	[P2] [decimal](20, 2) NULL,
	[P3] [decimal](20, 2) NULL,
	[P4] [decimal](20, 2) NULL,
	[P5] [decimal](20, 2) NULL,
	[P6] [decimal](20, 2) NULL,
	[P7] [decimal](20, 2) NULL,
	[P8] [decimal](20, 2) NULL,
	[P9] [decimal](20, 2) NULL,
	[P10] [decimal](20, 2) NULL,
	[P11] [decimal](20, 2) NULL,
	[P12] [decimal](20, 2) NULL,
	[FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INFOMETRICS_ACTLS_SALES]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INFOMETRICS_ACTLS_SALES](
	[KLG_WHSE_NBR] [float] NULL,
	[DST_WHSE_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[CATG_CODE] [varchar](255) NULL,
	[SUB_CATG_CODE] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[CASE_CODE] [float] NULL,
	[WEEK] [datetime2](7) NULL,
	[OUTBND_USD_CUR_YR] [float] NULL,
	[OUTBND_USD_PREV_YR] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INVNTRY_IMPORT]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INVNTRY_IMPORT](
	[Material - Key] [varchar](18) NULL,
	[Material - Medium Text] [varchar](19) NULL,
	[ABC Classification - Key] [varchar](1) NULL,
	[Material - IP Brand (Text)] [varchar](12) NULL,
	[Ext# Matl Group - Key] [varchar](8) NULL,
	[Created on - Key] [varchar](10) NULL,
	[Aging DD Feed - Text] [varchar](5) NULL,
	[Material Type - Text] [varchar](20) NULL,
	[Material group - Text] [varchar](8) NULL,
	[SKU Type - Text] [varchar](7) NULL,
	[Business Unit - Text] [varchar](6) NULL,
	[Plant - Key] [varchar](4) NULL,
	[Old Material Number - Key] [varchar](3) NULL,
	[SC Planner - Text] [varchar](10) NULL,
	[Team Manager - Text] [varchar](3) NULL,
	[Material Classificat - Mod / Shipper Descri (Text)] [varchar](12) NULL,
	[Material Classificat - LONG_DESCRIPTION (Text)] [varchar](12) NULL,
	[Storage Location - Key (Not Compounded)] [varchar](12) NULL,
	[Lot Code(Code Date) - Key] [varchar](8) NULL,
	[Expiration Date - Key] [varchar](10) NULL,
	[Manufacturing Date - Key] [varchar](10) NULL,
	[Total Shelf Life - Key] [varchar](10) NULL,
	[Quantity CS] [varchar](10) NULL,
	[Quantity UL] [varchar](10) NULL,
	[Sum Lot Qty] [varchar](10) NULL,
	[Standard price] [varchar](10) NULL,
	[Counter] [varchar](10) NULL,
	[Age of Inventory] [varchar](10) NULL,
	[Days remaining __for expiration] [varchar](10) NULL,
	[Max# Storage__Period] [varchar](10) NULL,
	[Days remaining __for Stop Ship] [varchar](10) NULL,
	[Stop Ship __Date] [varchar](19) NULL,
	[Extended CS] [varchar](10) NULL,
	[Extended $] [varchar](10) NULL,
	[f0-30 CS] [varchar](10) NULL,
	[f0-30 $] [varchar](10) NULL,
	[31-60 CS] [varchar](10) NULL,
	[31-60 $] [varchar](10) NULL,
	[61-90 CS] [varchar](10) NULL,
	[61-90 $] [varchar](10) NULL,
	[91-120 CS] [varchar](10) NULL,
	[91-120 $] [varchar](10) NULL,
	[>120 CS] [varchar](10) NULL,
	[>120 $] [varchar](10) NULL,
	[Age Risk CS] [varchar](10) NULL,
	[Age Risk $] [varchar](10) NULL,
	[CS/UL] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INVNTRY_TEMP]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[INVNTRY_TEMP](
	[Material] [nvarchar](50) NULL,
	[Plnt] [int] NULL,
	[BUn] [nvarchar](50) NULL,
	[Total Stock] [decimal](28, 10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[LOGDISPUTECASE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[LOGDISPUTECASE](
	[EXT_KEY] [varchar](12) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[POID_ID] [varchar](32) NULL,
	[SY-DATUM] [varchar](8) NULL,
	[SY-UZEIT] [varchar](8) NULL,
	[ARG_STRING] [varchar](16) NULL,
	[ARG1] [varchar](200) NULL,
	[ARG2] [varchar](200) NULL,
	[DI_FILENAME] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SD57_SHIPMNT_PLN_TO_SUMRY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SD57_SHIPMNT_PLN_TO_SUMRY](
	[PLANTO:Z_PLANTO] [varchar](10) NULL,
	[MATERIAL:C_MATRPTG] [varchar](18) NULL,
	[CALWEEK:0CALWEEK] [varchar](6) NULL,
	[DOLLARS:ZSALEAMT] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SYSCO_NONRDC_FCST_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SYSCO_NONRDC_FCST_INFO](
	[SNP_SHT_PRD] [varchar](10) NULL,
	[CMPNY_NBR] [varchar](20) NULL,
	[CMPNY_NM] [varchar](50) NULL,
	[OPCO_ZIP_COD] [varchar](10) NULL,
	[PAY_TO_SUVC] [varchar](50) NULL,
	[PAY_TO_SUPLR_NM] [varchar](50) NULL,
	[SHP_FRM_SUVC] [varchar](50) NULL,
	[SHP_FRM_SUPLR_NM] [varchar](50) NULL,
	[RDC_FLG] [varchar](10) NULL,
	[ADDR] [varchar](255) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[ZIP_COD] [varchar](10) NULL,
	[ITM_NBR] [varchar](20) NULL,
	[ITM_DESC] [varchar](50) NULL,
	[MATRL] [varchar](20) NULL,
	[PACK] [varchar](50) NULL,
	[SIZE] [varchar](20) NULL,
	[BRAND] [varchar](50) NULL,
	[ON_HAND_QTY] [float] NULL,
	[TOT_CMTD_UNTS] [float] NULL,
	[ORDRD_QTY] [float] NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[WK_17] [varchar](20) NULL,
	[WK_18] [varchar](20) NULL,
	[WK_19] [varchar](20) NULL,
	[WK_20] [varchar](20) NULL,
	[WK_21] [varchar](20) NULL,
	[WK_22] [varchar](20) NULL,
	[WK_23] [varchar](20) NULL,
	[WK_24] [varchar](20) NULL,
	[WK_25] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SYSCO_NONRDC_HDR_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SYSCO_NONRDC_HDR_INFO](
	[SNP_SHT_PRD] [varchar](10) NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[WK_17] [varchar](20) NULL,
	[WK_18] [varchar](20) NULL,
	[WK_19] [varchar](20) NULL,
	[WK_20] [varchar](20) NULL,
	[WK_21] [varchar](20) NULL,
	[WK_22] [varchar](20) NULL,
	[WK_23] [varchar](20) NULL,
	[WK_24] [varchar](20) NULL,
	[WK_25] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SYSCO_RDC_FCST_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SYSCO_RDC_FCST_INFO](
	[SHP_SHT_PRD] [varchar](255) NULL,
	[CMPNY_NBR] [varchar](255) NULL,
	[CMPNY_NM] [varchar](255) NULL,
	[OPCO_ZIP_COD] [varchar](255) NULL,
	[PAY_TO_SUVC] [varchar](255) NULL,
	[PAY_TO_SUPLR_NM] [varchar](255) NULL,
	[SHP_FRM_SUVC] [varchar](255) NULL,
	[SHP_FRM_SUPLR_NM] [varchar](255) NULL,
	[RDC_FLG] [varchar](255) NULL,
	[ADDR] [varchar](255) NULL,
	[CTY] [varchar](255) NULL,
	[STATE] [varchar](255) NULL,
	[ZIP_CODE] [varchar](255) NULL,
	[ITM_NBR] [varchar](255) NULL,
	[ITM_DESC] [varchar](255) NULL,
	[MATRL] [varchar](255) NULL,
	[PACK] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[ON_HAND_QTY] [varchar](255) NULL,
	[TOT_CMTD_UNTS] [varchar](255) NULL,
	[ORDRD_QTY] [varchar](255) NULL,
	[WK_1] [varchar](255) NULL,
	[WK_2] [varchar](255) NULL,
	[WK_3] [varchar](255) NULL,
	[WK_4] [varchar](255) NULL,
	[WK_5] [varchar](255) NULL,
	[WK_6] [varchar](255) NULL,
	[WK_7] [varchar](255) NULL,
	[WK_8] [varchar](255) NULL,
	[WK_9] [varchar](255) NULL,
	[WK_10] [varchar](255) NULL,
	[WK_11] [varchar](255) NULL,
	[WK_12] [varchar](255) NULL,
	[WK_13] [varchar](255) NULL,
	[WK_14] [varchar](255) NULL,
	[WK_15] [varchar](255) NULL,
	[WK_16] [varchar](255) NULL,
	[WK_17] [varchar](255) NULL,
	[WK_18] [varchar](255) NULL,
	[WK_19] [varchar](255) NULL,
	[WK_20] [varchar](255) NULL,
	[WK_21] [varchar](255) NULL,
	[WK_22] [varchar](255) NULL,
	[WK_23] [varchar](255) NULL,
	[WK_24] [varchar](255) NULL,
	[WK_25] [varchar](255) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SYSCO_RDC_HDR_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SYSCO_RDC_HDR_INFO](
	[SNP_SHT_PRD] [varchar](255) NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[WK_17] [varchar](20) NULL,
	[WK_18] [varchar](20) NULL,
	[WK_19] [varchar](20) NULL,
	[WK_20] [varchar](20) NULL,
	[WK_21] [varchar](20) NULL,
	[WK_22] [varchar](20) NULL,
	[WK_23] [varchar](20) NULL,
	[WK_24] [varchar](20) NULL,
	[WK_25] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[USFOODS_HDR_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[USFOODS_HDR_INFO](
	[SNP_SHT_PRD] [varchar](10) NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[USFOODS_SALS_FCST_INFO]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[USFOODS_SALS_FCST_INFO](
	[SNP_SHT_PRD] [varchar](255) NULL,
	[A-SYS_CODE] [float] NULL,
	[PRD_DESC] [varchar](255) NULL,
	[RGN_NM] [varchar](255) NULL,
	[DVSN_NBR] [float] NULL,
	[DVSN_NM] [varchar](255) NULL,
	[MFR_PRD_NBR] [varchar](255) NULL,
	[PIM_GTIN] [varchar](255) NULL,
	[ITM_STAT] [float] NULL,
	[PIM_MRCH_CT] [varchar](255) NULL,
	[PIM_BRND_TYP] [varchar](255) NULL,
	[CLS_DESC] [varchar](255) NULL,
	[CTG_DESC] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SHP_FRM_NBR] [varchar](255) NULL,
	[SHP_FRM_NM] [varchar](255) NULL,
	[SHP_FRM_CTY] [varchar](255) NULL,
	[SHP_FRM_ST] [varchar](255) NULL,
	[PUR_VEN_DESC] [varchar](255) NULL,
	[ON_HAND] [float] NULL,
	[ON_ORDR] [float] NULL,
	[WKS_ON_HND_W/O_OPN_ORDR] [float] NULL,
	[WKS_ON_HND_WTH_OPN_ORDR] [float] NULL,
	[PUR_VEN_NBR] [varchar](255) NULL,
	[16_WK_QTY] [float] NULL,
	[WK_1] [float] NULL,
	[WK_2] [float] NULL,
	[WK_3] [float] NULL,
	[WK_4] [float] NULL,
	[WK_5] [float] NULL,
	[WK_6] [float] NULL,
	[WK_7] [float] NULL,
	[WK_8] [float] NULL,
	[WK_9] [float] NULL,
	[WK_10] [float] NULL,
	[WK_11] [float] NULL,
	[WK_12] [float] NULL,
	[WK_13] [float] NULL,
	[WK_14] [float] NULL,
	[WK_15] [float] NULL,
	[WK_16] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_INVENTORY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_INVENTORY](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER3:0FISCPER3] [varchar](3) NULL,
	[ACTUAL_PRICE_UNIT_COST:Z9ADFCST] [decimal](38, 12) NULL,
	[AMOUNT:0AMOUNT] [decimal](38, 12) NULL,
	[AMT_UNIT:0CURRENCY] [varchar](3) NULL,
	[BEG_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[BEG_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_ORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ACTL_PRICE:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[DIFFERENCES_CONTNT_COPY:Z9ADFCST] [decimal](38, 12) NULL,
	[END_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[END_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[QUANTITY:0QUANTITY] [decimal](38, 12) NULL,
	[QUANTITY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PRDCTN_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PRDCTN_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PURCHORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PURCHORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_INVENTORY_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_INVENTORY_wc](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER3:0FISCPER3] [varchar](3) NULL,
	[ACTUAL_PRICE_UNIT_COST:Z9ADFCST] [decimal](38, 12) NULL,
	[AMOUNT:0AMOUNT] [decimal](38, 12) NULL,
	[AMT_UNIT:0CURRENCY] [varchar](3) NULL,
	[BEG_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[BEG_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_ORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[CONSMPTN_ACTL_PRICE:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[CONSMPTN_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[DIFFERENCES_CONTNT_COPY:Z9ADFCST] [decimal](38, 12) NULL,
	[END_INV_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[END_INV_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[QUANTITY:0QUANTITY] [decimal](38, 12) NULL,
	[QUANTITY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_CC_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_CC_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_OTHR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_OTHR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PRDCTN_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PRDCTN_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_PURCHORD_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_PURCHORD_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_STCKTR_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_STCKTR_QTY_UNIT:0UNIT] [varchar](3) NULL,
	[RECEIPTS_TTL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[RECEIPTS_TTL_QTY_UNIT:0UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_MATRL_USAGE_CALC]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_MATRL_USAGE_CALC](
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](3) NULL,
	[PLANT_NBR] [varchar](4) NULL,
	[MATRL_NBR] [varchar](18) NULL,
	[CMPNT_MATRL_NBR] [varchar](18) NULL,
	[ACTL_QTY] [decimal](38, 12) NULL,
	[TGT_QTY] [decimal](38, 12) NULL,
	[PRODCTN_QTY] [decimal](38, 6) NULL,
	[STK_XFER_OUT_QTY] [decimal](38, 6) NULL,
	[STK_XFER_IN_QTY] [decimal](38, 6) NULL,
	[SUM_ACTL_QTY] [decimal](38, 12) NULL,
	[SUM_TGT_QTY] [decimal](38, 12) NULL,
	[ACTL_USAGE_PCT] [decimal](38, 6) NULL,
	[TGT_USAGE_PCT] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_MATRL_USAGE_CALC_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_MATRL_USAGE_CALC_wc](
	[FISC_YR] [varchar](4) NULL,
	[FISC_PD] [varchar](3) NULL,
	[PLANT_NBR] [varchar](4) NULL,
	[MATRL_NBR] [varchar](18) NULL,
	[CMPNT_MATRL_NBR] [varchar](18) NULL,
	[ACTL_QTY] [decimal](38, 12) NULL,
	[TGT_QTY] [decimal](38, 12) NULL,
	[PRODCTN_QTY] [decimal](38, 6) NULL,
	[STK_XFER_OUT_QTY] [decimal](38, 6) NULL,
	[STK_XFER_IN_QTY] [decimal](38, 6) NULL,
	[SUM_ACTL_QTY] [decimal](38, 12) NULL,
	[SUM_TGT_QTY] [decimal](38, 12) NULL,
	[ACTL_USAGE_PCT] [decimal](38, 6) NULL,
	[TGT_USAGE_PCT] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_MATRL_USAGE_UNRVL]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_MATRL_USAGE_UNRVL](
	[FISC_YR] [varchar](8) NOT NULL,
	[FISC_PD] [varchar](5) NOT NULL,
	[PLANT_NBR] [varchar](4) NULL,
	[LVL1_MATRL_NBR] [varchar](18) NULL,
	[LVL2_MATRL_NBR] [varchar](18) NULL,
	[LVL3_MATRL_NBR] [varchar](18) NULL,
	[LVL4_MATRL_NBR] [varchar](18) NULL,
	[LVL5_MATRL_NBR] [varchar](18) NULL,
	[LVL6_MATRL_NBR] [varchar](18) NULL,
	[LVL7_MATRL_NBR] [varchar](18) NULL,
	[LVL8_MATRL_NBR] [varchar](18) NULL,
	[LVL9_MATRL_NBR] [varchar](18) NULL,
	[LVL10_MATRL_NBR] [varchar](18) NULL,
	[LVL11_MATRL_NBR] [varchar](18) NULL,
	[LVL12_MATRL_NBR] [varchar](18) NULL,
	[LVL13_MATRL_NBR] [varchar](18) NULL,
	[LVL14_MATRL_NBR] [varchar](18) NULL,
	[LVL15_MATRL_NBR] [varchar](18) NULL,
	[LVL16_MATRL_NBR] [varchar](18) NULL,
	[LVL17_MATRL_NBR] [varchar](18) NULL,
	[LVL18_MATRL_NBR] [varchar](18) NULL,
	[LVL19_MATRL_NBR] [varchar](18) NULL,
	[LVL20_MATRL_NBR] [varchar](18) NULL,
	[LVL1_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL1_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL2_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL2_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL3_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL3_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL4_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL4_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL5_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL5_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL6_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL6_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL7_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL7_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL8_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL8_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL9_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL9_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL10_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL10_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL11_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL11_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL12_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL12_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL13_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL13_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL14_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL14_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL15_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL15_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL16_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL16_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL17_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL17_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL18_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL18_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL19_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL19_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL20_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL20_ACTL_QTY_UOM] [varchar](3) NULL,
	[LST_LVL_MATRL_NBR] [varchar](18) NULL,
	[LST_LVL_NBR] [decimal](3, 0) NULL,
	[LVL1_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL2_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL3_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL4_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL5_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL6_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL7_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL8_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL9_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL10_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL11_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL12_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL13_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL14_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL15_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL16_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL17_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL18_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL19_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL20_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LST_LVL_ACTL_USAGE] [decimal](38, 12) NULL,
	[LVL1_TGT_QTY] [decimal](38, 12) NULL,
	[LVL1_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL2_TGT_QTY] [decimal](38, 12) NULL,
	[LVL2_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL3_TGT_QTY] [decimal](38, 12) NULL,
	[LVL3_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL4_TGT_QTY] [decimal](38, 12) NULL,
	[LVL4_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL5_TGT_QTY] [decimal](38, 12) NULL,
	[LVL5_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL6_TGT_QTY] [decimal](38, 12) NULL,
	[LVL6_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL7_TGT_QTY] [decimal](38, 12) NULL,
	[LVL7_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL8_TGT_QTY] [decimal](38, 12) NULL,
	[LVL8_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL9_TGT_QTY] [decimal](38, 12) NULL,
	[LVL9_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL10_TGT_QTY] [decimal](38, 12) NULL,
	[LVL10_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL11_TGT_QTY] [decimal](38, 12) NULL,
	[LVL11_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL12_TGT_QTY] [decimal](38, 12) NULL,
	[LVL12_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL13_TGT_QTY] [decimal](38, 12) NULL,
	[LVL13_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL14_TGT_QTY] [decimal](38, 12) NULL,
	[LVL14_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL15_TGT_QTY] [decimal](38, 12) NULL,
	[LVL15_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL16_TGT_QTY] [decimal](38, 12) NULL,
	[LVL16_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL17_TGT_QTY] [decimal](38, 12) NULL,
	[LVL17_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL18_TGT_QTY] [decimal](38, 12) NULL,
	[LVL18_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL19_TGT_QTY] [decimal](38, 12) NULL,
	[LVL19_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL20_TGT_QTY] [decimal](38, 12) NULL,
	[LVL20_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL1_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL2_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL3_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL4_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL5_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL6_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL7_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL8_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL9_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL10_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL11_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL12_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL13_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL14_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL15_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL16_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL17_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL18_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL19_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL20_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LST_LVL_TGT_USAGE] [decimal](38, 12) NULL,
	[PARNT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_MATRL_USAGE_UNRVL_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_MATRL_USAGE_UNRVL_wc](
	[FISC_YR] [varchar](8) NOT NULL,
	[FISC_PD] [varchar](5) NOT NULL,
	[PLANT_NBR] [varchar](4) NULL,
	[LVL1_MATRL_NBR] [varchar](18) NULL,
	[LVL2_MATRL_NBR] [varchar](18) NULL,
	[LVL3_MATRL_NBR] [varchar](18) NULL,
	[LVL4_MATRL_NBR] [varchar](18) NULL,
	[LVL5_MATRL_NBR] [varchar](18) NULL,
	[LVL6_MATRL_NBR] [varchar](18) NULL,
	[LVL7_MATRL_NBR] [varchar](18) NULL,
	[LVL8_MATRL_NBR] [varchar](18) NULL,
	[LVL9_MATRL_NBR] [varchar](18) NULL,
	[LVL10_MATRL_NBR] [varchar](18) NULL,
	[LVL11_MATRL_NBR] [varchar](18) NULL,
	[LVL12_MATRL_NBR] [varchar](18) NULL,
	[LVL13_MATRL_NBR] [varchar](18) NULL,
	[LVL14_MATRL_NBR] [varchar](18) NULL,
	[LVL15_MATRL_NBR] [varchar](18) NULL,
	[LVL16_MATRL_NBR] [varchar](18) NULL,
	[LVL17_MATRL_NBR] [varchar](18) NULL,
	[LVL18_MATRL_NBR] [varchar](18) NULL,
	[LVL19_MATRL_NBR] [varchar](18) NULL,
	[LVL20_MATRL_NBR] [varchar](18) NULL,
	[LVL1_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL1_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL2_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL2_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL3_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL3_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL4_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL4_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL5_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL5_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL6_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL6_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL7_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL7_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL8_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL8_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL9_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL9_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL10_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL10_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL11_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL11_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL12_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL12_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL13_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL13_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL14_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL14_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL15_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL15_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL16_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL16_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL17_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL17_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL18_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL18_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL19_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL19_ACTL_QTY_UOM] [varchar](3) NULL,
	[LVL20_ACTL_QTY] [decimal](38, 12) NULL,
	[LVL20_ACTL_QTY_UOM] [varchar](3) NULL,
	[LST_LVL_MATRL_NBR] [varchar](18) NULL,
	[LST_LVL_NBR] [decimal](3, 0) NULL,
	[LVL1_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL2_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL3_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL4_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL5_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL6_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL7_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL8_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL9_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL10_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL11_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL12_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL13_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL14_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL15_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL16_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL17_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL18_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL19_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL20_ACTL_USAGE_PCT] [decimal](15, 12) NULL,
	[LST_LVL_ACTL_USAGE] [decimal](38, 12) NULL,
	[LVL1_TGT_QTY] [decimal](38, 12) NULL,
	[LVL1_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL2_TGT_QTY] [decimal](38, 12) NULL,
	[LVL2_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL3_TGT_QTY] [decimal](38, 12) NULL,
	[LVL3_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL4_TGT_QTY] [decimal](38, 12) NULL,
	[LVL4_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL5_TGT_QTY] [decimal](38, 12) NULL,
	[LVL5_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL6_TGT_QTY] [decimal](38, 12) NULL,
	[LVL6_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL7_TGT_QTY] [decimal](38, 12) NULL,
	[LVL7_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL8_TGT_QTY] [decimal](38, 12) NULL,
	[LVL8_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL9_TGT_QTY] [decimal](38, 12) NULL,
	[LVL9_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL10_TGT_QTY] [decimal](38, 12) NULL,
	[LVL10_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL11_TGT_QTY] [decimal](38, 12) NULL,
	[LVL11_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL12_TGT_QTY] [decimal](38, 12) NULL,
	[LVL12_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL13_TGT_QTY] [decimal](38, 12) NULL,
	[LVL13_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL14_TGT_QTY] [decimal](38, 12) NULL,
	[LVL14_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL15_TGT_QTY] [decimal](38, 12) NULL,
	[LVL15_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL16_TGT_QTY] [decimal](38, 12) NULL,
	[LVL16_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL17_TGT_QTY] [decimal](38, 12) NULL,
	[LVL17_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL18_TGT_QTY] [decimal](38, 12) NULL,
	[LVL18_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL19_TGT_QTY] [decimal](38, 12) NULL,
	[LVL19_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL20_TGT_QTY] [decimal](38, 12) NULL,
	[LVL20_TGT_QTY_UOM] [varchar](3) NULL,
	[LVL1_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL2_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL3_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL4_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL5_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL6_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL7_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL8_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL9_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL10_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL11_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL12_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL13_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL14_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL15_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL16_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL17_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL18_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL19_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LVL20_TGT_USAGE_PCT] [decimal](15, 12) NULL,
	[LST_LVL_TGT_USAGE] [decimal](38, 12) NULL,
	[PARNT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_RPT_SUMRY]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_RPT_SUMRY](
	[FIN_BU] [varchar](20) NULL,
	[PLANT_NBR] [varchar](4) NULL,
	[FISC_YR_PD] [varchar](8) NOT NULL,
	[MATRL_NBR] [varchar](18) NULL,
	[MATRL_GRP] [varchar](9) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[PRC] [float] NULL,
	[PRC_CURR] [varchar](3) NULL,
	[PRC_UOM] [varchar](3) NULL,
	[BEG_INVNTRY_QTY] [float] NULL,
	[BEG_INVNTRY_QTY_UOM] [varchar](3) NULL,
	[END_INVNTRY_QTY] [float] NULL,
	[END_INVNTRY_QTY_UOM] [varchar](3) NULL,
	[RCPT_QTY] [float] NULL,
	[RCPT_QTY_UOM] [varchar](3) NULL,
	[STOK_TRNSFR_QTY] [float] NULL,
	[STOK_TRNSFR_QTY_UOM] [varchar](3) NULL,
	[MATRL_TYP] [varchar](4) NULL,
	[FNL_MATRL_NBR] [varchar](18) NULL,
	[FNL_MATRL_DESC] [varchar](40) NULL,
	[FNL_MATRL_TYP] [varchar](4) NULL,
	[ACTL_USAGE] [decimal](38, 12) NULL,
	[TGT_USAGE] [decimal](38, 12) NULL,
	[FNL_MATRL_PRDCTN_QTY] [float] NULL,
	[FNL_MATRL_PRDCTN_QTY_UOM] [varchar](3) NULL,
	[FNL_MATRL_NET_WGT] [decimal](13, 3) NULL,
	[FNL_MATRL_WGT_UOM] [varchar](3) NULL,
	[REGN] [varchar](3) NULL,
	[CITY] [varchar](25) NULL,
	[PLANT_NM] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_RPT_SUMRY_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_RPT_SUMRY_wc](
	[FIN_BU] [varchar](20) NULL,
	[PLANT_NBR] [varchar](4) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FISC_YR_PD] [varchar](8) NOT NULL
SET ANSI_PADDING ON
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [MATRL_NBR] [varchar](18) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [MATRL_GRP] [varchar](9) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [MATRL_DESC] [varchar](40) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [PRC] [float] NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [PRC_CURR] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [PRC_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [BEG_INVNTRY_QTY] [float] NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [BEG_INVNTRY_QTY_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [END_INVNTRY_QTY] [float] NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [END_INVNTRY_QTY_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [RCPT_QTY] [float] NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [RCPT_QTY_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [STOK_TRNSFR_QTY] [float] NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [STOK_TRNSFR_QTY_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [MATRL_TYP] [varchar](4) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_NBR] [varchar](18) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_DESC] [varchar](40) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_TYP] [varchar](4) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [ACTL_USAGE] [decimal](38, 12) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [TGT_USAGE] [decimal](38, 12) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_PRDCTN_QTY] [float] NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_PRDCTN_QTY_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_NET_WGT] [decimal](13, 3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [FNL_MATRL_WGT_UOM] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [REGN] [varchar](3) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [CITY] [varchar](25) NULL
ALTER TABLE [STG].[YIELD_RPT_SUMRY_wc] ADD [PLANT_NM] [varchar](30) NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_USAGE]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_USAGE](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER:0FISCPER] [varchar](7) NULL,
	[f0COMPONENT:0COMPONENT] [varchar](18) NULL,
	[MATERIAL_GROUP:0MATL_GROUP] [varchar](8) NULL,
	[ACTUAL_COSTS:0AMOUNT] [decimal](38, 12) NULL,
	[ACTUAL_COSTS_UNIT:] [varchar](3) NULL,
	[ACTUAL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[ACTUAL_QTY_UNIT:] [varchar](3) NULL,
	[FRZN_STND_COST:0AMOUNT] [decimal](38, 12) NULL,
	[FRZN_STND_COST_UNIT:] [varchar](3) NULL,
	[FRZN_STND_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[FRZN_STND_QTY_UNIT:] [varchar](3) NULL,
	[TARGET_CST_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TARGET_CST_CRRNT_UNIT:] [varchar](3) NULL,
	[TARGET_QTY_CRRNT:0QUANTITY] [decimal](38, 12) NULL,
	[TARGET_QTY_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_FRZN:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_FRZN_UNIT:] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[YIELD_USAGE_wc]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[YIELD_USAGE_wc](
	[f0PLANT:0PLANT] [varchar](4) NULL,
	[f0MATERIAL:0MATERIAL] [varchar](18) NULL,
	[f0FISCYEAR:0FISCYEAR] [varchar](4) NULL,
	[f0FISCPER:0FISCPER] [varchar](7) NULL,
	[f0COMPONENT:0COMPONENT] [varchar](18) NULL,
	[MATERIAL_GROUP:0MATL_GROUP] [varchar](8) NULL,
	[ACTUAL_COSTS:0AMOUNT] [decimal](38, 12) NULL,
	[ACTUAL_COSTS_UNIT:] [varchar](3) NULL,
	[ACTUAL_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[ACTUAL_QTY_UNIT:] [varchar](3) NULL,
	[FRZN_STND_COST:0AMOUNT] [decimal](38, 12) NULL,
	[FRZN_STND_COST_UNIT:] [varchar](3) NULL,
	[FRZN_STND_QTY:0QUANTITY] [decimal](38, 12) NULL,
	[FRZN_STND_QTY_UNIT:] [varchar](3) NULL,
	[TARGET_CST_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TARGET_CST_CRRNT_UNIT:] [varchar](3) NULL,
	[TARGET_QTY_CRRNT:0QUANTITY] [decimal](38, 12) NULL,
	[TARGET_QTY_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_CRRNT:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_CRRNT_UNIT:] [varchar](3) NULL,
	[TOT_VAR_FRZN:0AMOUNT] [decimal](38, 12) NULL,
	[TOT_VAR_FRZN_UNIT:] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZCOSTALOCX_CA]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZCOSTALOCX_CA](
	[ZCOSTALOCX Source] [varchar](6) NULL,
	[BOL Number] [varchar](20) NULL,
	[Period] [varchar](6) NULL,
	[Period Expense] [decimal](10, 2) NULL,
	[Sett. date] [varchar](10) NULL,
	[Shipmt Cost No.] [varchar](10) NULL,
	[Ship. cost item] [varchar](6) NULL,
	[Shipment Number] [varchar](10) NULL,
	[Delivery Number] [varchar](10) NULL,
	[Order Number] [varchar](10) NULL,
	[Customer Order Number] [varchar](20) NULL,
	[Carrier Pro Number] [varchar](20) NULL,
	[Invoice Date] [varchar](10) NULL,
	[WIP Indicator] [varchar](5) NULL,
	[Ship Date] [varchar](10) NULL,
	[PGI/Check Call Date] [varchar](10) NULL,
	[Origin] [varchar](10) NULL,
	[Origin Name] [varchar](30) NULL,
	[Origin Type] [varchar](5) NULL,
	[Destination] [varchar](10) NULL,
	[Destination Name] [varchar](30) NULL,
	[Destination Type] [varchar](8) NULL,
	[Mode] [varchar](5) NULL,
	[Origin City] [varchar](20) NULL,
	[Origin State] [varchar](5) NULL,
	[Origin Zip] [varchar](10) NULL,
	[Destination City] [varchar](20) NULL,
	[Destination State] [varchar](5) NULL,
	[Destination Zip] [varchar](10) NULL,
	[Sales Org] [varchar](5) NULL,
	[Fleet Indicator] [varchar](5) NULL,
	[Shipment Type] [varchar](5) NULL,
	[SCAC] [varchar](5) NULL,
	[SKU Number] [varchar](20) NULL,
	[SKU Description] [varchar](40) NULL,
	[Total Miles] [decimal](10, 3) NULL,
	[GL Account] [varchar](10) NULL,
	[Cost Center] [varchar](10) NULL,
	[Temp. controlled] [varchar](5) NULL,
	[Service Type level] [varchar](5) NULL,
	[Order Type] [varchar](20) NULL,
	[SKU BU] [varchar](5) NULL,
	[SKU Uls] [decimal](15, 3) NULL,
	[SKU Qty Shipped] [decimal](15, 3) NULL,
	[SKUQtyShippedUOM] [varchar](5) NULL,
	[SKU Cube Shipped] [decimal](15, 3) NULL,
	[Weight] [decimal](15, 3) NULL,
	[Packaging Units] [decimal](15, 3) NULL,
	[SCD create date] [varchar](10) NULL,
	[SCD create time] [varchar](8) NULL,
	[SCD Changed date] [varchar](10) NULL,
	[SCD changed time] [varchar](8) NULL,
	[Pay Flag] [varchar](5) NULL,
	[Total Dollars] [decimal](10, 2) NULL,
	[Shipping date] [varchar](10) NULL,
	[AFTERHOURS_DELIVERY] [decimal](10, 2) NULL,
	[BASE_CHARGE] [decimal](10, 2) NULL,
	[BOL_CORRECTION] [decimal](10, 2) NULL,
	[BORDER_CROSSING] [decimal](10, 2) NULL,
	[BORDER_SECURITY] [decimal](10, 2) NULL,
	[BROKERAGE_FEE] [decimal](10, 2) NULL,
	[BUNKER_SURCHARGE] [decimal](10, 2) NULL,
	[CIRCUITOS] [decimal](10, 2) NULL,
	[CIRCUITOUS_MILEAGE] [decimal](10, 2) NULL,
	[CONGESTION] [decimal](10, 2) NULL,
	[DEADHEAD_MILEAGE] [decimal](10, 2) NULL,
	[DEFICIT_WEIGHT] [decimal](10, 2) NULL,
	[DETENTION] [decimal](10, 2) NULL,
	[DISCOUNT] [decimal](10, 2) NULL,
	[DRAYAGE] [decimal](10, 2) NULL,
	[DRIVER] [decimal](10, 2) NULL,
	[DROP_TRAILER] [decimal](10, 2) NULL,
	[EXCESS_MILEAGE] [decimal](10, 2) NULL,
	[EXPEDITED] [decimal](10, 2) NULL,
	[FUEL_SURCHARGE] [decimal](10, 2) NULL,
	[GUARANTEE] [decimal](10, 2) NULL,
	[GUARANTEED_NOON_DEL] [decimal](10, 2) NULL,
	[HAZARDOUS] [decimal](10, 2) NULL,
	[HIGH_COST_DELIVERY] [decimal](10, 2) NULL,
	[INSIDE_DELIVER] [decimal](10, 2) NULL,
	[INVASIVE] [decimal](10, 2) NULL,
	[LAYOVER] [decimal](10, 2) NULL,
	[LIFT] [decimal](10, 2) NULL,
	[LINEHAUL] [decimal](10, 2) NULL,
	[LUMPER] [decimal](10, 2) NULL,
	[MANAGEMENT] [decimal](10, 2) NULL,
	[MEXICAN] [decimal](10, 2) NULL,
	[MISCELLANEOUS] [decimal](10, 2) NULL,
	[NEWYORK_SURCHARGE] [decimal](10, 2) NULL,
	[OUT_OF_ROUTE] [decimal](10, 2) NULL,
	[PALLET] [decimal](10, 2) NULL,
	[RAMPSTORAGE_CHARGE] [decimal](10, 2) NULL,
	[RECONSIGNMENT] [decimal](10, 2) NULL,
	[REDELIVERY] [decimal](10, 2) NULL,
	[REFRIDERATED] [decimal](10, 2) NULL,
	[REFRIGERATED] [decimal](10, 2) NULL,
	[RETURN_CHARGE] [decimal](10, 2) NULL,
	[SECURITY] [decimal](10, 2) NULL,
	[SORT_AND_SEGREGATE] [decimal](10, 2) NULL,
	[SPOTTING] [decimal](10, 2) NULL,
	[STOPOFF] [decimal](10, 2) NULL,
	[STORAGE] [decimal](10, 2) NULL,
	[TAG] [decimal](10, 2) NULL,
	[TEMPACCESSORIAL] [decimal](10, 2) NULL,
	[TERMINAL] [decimal](10, 2) NULL,
	[TOLL] [decimal](10, 2) NULL,
	[TRUCK] [decimal](10, 2) NULL,
	[UNLOADING] [decimal](10, 2) NULL,
	[UNLOADING_LABOR] [decimal](10, 2) NULL,
	[WEIGHT_CHARGE] [decimal](10, 2) NULL,
	[TIMESTAMP] [varchar](15) NULL,
	[SPECIAL_DELIVERY] [decimal](10, 2) NULL,
	[PROVINCIAL_SURCHG] [decimal](10, 2) NULL,
	[PROVINCIAL_TAX_RECOV] [decimal](10, 2) NULL,
	[CARBON_TAX_SURCHG] [decimal](10, 2) NULL,
	[CUSTOMS_FEE] [decimal](10, 2) NULL,
	[BOND_CHARGE] [decimal](10, 2) NULL,
	[INBOND_CHARGE] [decimal](10, 2) NULL,
	[COST_RECOVERY_SURCHG] [decimal](10, 2) NULL,
	[SHUNTING_CHARGE] [decimal](10, 2) NULL,
	[ADMINSTRATION_CHG] [decimal](10, 2) NULL,
	[RE_PALLETIZATION_CHG] [decimal](10, 2) NULL,
	[TPP_CNTRY] [varchar](20) NULL,
	[MATERIAL_GRP] [varchar](20) NULL,
	[CURRENCY] [varchar](20) NULL,
	[DETENTION_ORIGIN] [decimal](10, 2) NULL,
	[DETENTION_DEST] [decimal](10, 2) NULL,
	[NET_WT] [decimal](15, 3) NULL,
	[WT_UOM] [varchar](5) NULL,
	[GLCC_EXPENSE] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZCOSTALOCX_US_IN]    Script Date: 11/20/2018 5:44:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZCOSTALOCX_US_IN](
	[ZCOSTALOCX Source] [varchar](6) NULL,
	[BOL Number] [varchar](20) NULL,
	[Period] [varchar](6) NULL,
	[Period Expense] [decimal](10, 2) NULL,
	[Sett. date] [varchar](10) NULL,
	[Shipmt Cost No.] [varchar](10) NULL,
	[Ship. cost item] [varchar](6) NULL,
	[Shipment Number] [varchar](10) NULL,
	[Delivery Number] [varchar](10) NULL,
	[Order Number] [varchar](10) NULL,
	[Customer Order Number] [varchar](20) NULL,
	[Carrier Pro Number] [varchar](20) NULL,
	[Invoice Date] [varchar](10) NULL,
	[WIP Indicator] [varchar](5) NULL,
	[Ship Date] [varchar](10) NULL,
	[PGI/Check Call Date] [varchar](10) NULL,
	[Origin] [varchar](10) NULL,
	[Origin Name] [varchar](30) NULL,
	[Origin Type] [varchar](5) NULL,
	[Destination] [varchar](10) NULL,
	[Destination Name] [varchar](30) NULL,
	[Destination Type] [varchar](8) NULL,
	[Mode] [varchar](5) NULL,
	[Origin City] [varchar](20) NULL,
	[Origin State] [varchar](5) NULL,
	[Origin Zip] [varchar](10) NULL,
	[Destination City] [varchar](20) NULL,
	[Destination State] [varchar](5) NULL,
	[Destination Zip] [varchar](10) NULL,
	[Sales Org] [varchar](5) NULL,
	[Fleet Indicator] [varchar](5) NULL,
	[Shipment Type] [varchar](5) NULL,
	[SCAC] [varchar](5) NULL,
	[SKU Number] [varchar](20) NULL,
	[SKU Description] [varchar](40) NULL,
	[Total Miles] [decimal](10, 3) NULL,
	[GL Account] [varchar](10) NULL,
	[Cost Center] [varchar](10) NULL,
	[Temp. controlled] [varchar](5) NULL,
	[Service Type level] [varchar](5) NULL,
	[Order Type] [varchar](20) NULL,
	[SKU BU] [varchar](5) NULL,
	[SKU Uls] [decimal](15, 3) NULL,
	[SKU Qty Shipped] [decimal](15, 3) NULL,
	[SKUQtyShippedUOM] [varchar](5) NULL,
	[SKU Cube Shipped] [decimal](15, 3) NULL,
	[Weight] [decimal](15, 3) NULL,
	[Packaging Units] [decimal](15, 3) NULL,
	[SCD create date] [varchar](10) NULL,
	[SCD create time] [varchar](8) NULL,
	[SCD Changed date] [varchar](10) NULL,
	[SCD changed time] [varchar](8) NULL,
	[Pay Flag] [varchar](5) NULL,
	[Total Dollars] [decimal](10, 2) NULL,
	[Shipping date] [varchar](10) NULL,
	[AFTERHOURS_DELIVERY] [decimal](10, 2) NULL,
	[BASE_CHARGE] [decimal](10, 2) NULL,
	[BOL_CORRECTION] [decimal](10, 2) NULL,
	[BORDER_CROSSING] [decimal](10, 2) NULL,
	[BORDER_SECURITY] [decimal](10, 2) NULL,
	[BROKERAGE_FEE] [decimal](10, 2) NULL,
	[BUNKER_SURCHARGE] [decimal](10, 2) NULL,
	[CIRCUITOS] [decimal](10, 2) NULL,
	[CIRCUITOUS_MILEAGE] [decimal](10, 2) NULL,
	[CONGESTION] [decimal](10, 2) NULL,
	[DEADHEAD_MILEAGE] [decimal](10, 2) NULL,
	[DEFICIT_WEIGHT] [decimal](10, 2) NULL,
	[DETENTION] [decimal](10, 2) NULL,
	[DISCOUNT] [decimal](10, 2) NULL,
	[DRAYAGE] [decimal](10, 2) NULL,
	[DRIVER] [decimal](10, 2) NULL,
	[DROP_TRAILER] [decimal](10, 2) NULL,
	[EXCESS_MILEAGE] [decimal](10, 2) NULL,
	[EXPEDITED] [decimal](10, 2) NULL,
	[FUEL_SURCHARGE] [decimal](10, 2) NULL,
	[GUARANTEE] [decimal](10, 2) NULL,
	[GUARANTEED_NOON_DEL] [decimal](10, 2) NULL,
	[HAZARDOUS] [decimal](10, 2) NULL,
	[HIGH_COST_DELIVERY] [decimal](10, 2) NULL,
	[INSIDE_DELIVER] [decimal](10, 2) NULL,
	[INVASIVE] [decimal](10, 2) NULL,
	[LAYOVER] [decimal](10, 2) NULL,
	[LIFT] [decimal](10, 2) NULL,
	[LINEHAUL] [decimal](10, 2) NULL,
	[LUMPER] [decimal](10, 2) NULL,
	[MANAGEMENT] [decimal](10, 2) NULL,
	[MEXICAN] [decimal](10, 2) NULL,
	[MISCELLANEOUS] [decimal](10, 2) NULL,
	[NEWYORK_SURCHARGE] [decimal](10, 2) NULL,
	[OUT_OF_ROUTE] [decimal](10, 2) NULL,
	[PALLET] [decimal](10, 2) NULL,
	[RAMPSTORAGE_CHARGE] [decimal](10, 2) NULL,
	[RECONSIGNMENT] [decimal](10, 2) NULL,
	[REDELIVERY] [decimal](10, 2) NULL,
	[REFRIDERATED] [decimal](10, 2) NULL,
	[REFRIGERATED] [decimal](10, 2) NULL,
	[RETURN_CHARGE] [decimal](10, 2) NULL,
	[SECURITY] [decimal](10, 2) NULL,
	[SORT_AND_SEGREGATE] [decimal](10, 2) NULL,
	[SPOTTING] [decimal](10, 2) NULL,
	[STOPOFF] [decimal](10, 2) NULL,
	[STORAGE] [decimal](10, 2) NULL,
	[TAG] [decimal](10, 2) NULL,
	[TEMPACCESSORIAL] [decimal](10, 2) NULL,
	[TERMINAL] [decimal](10, 2) NULL,
	[TOLL] [decimal](10, 2) NULL,
	[TRUCK] [decimal](10, 2) NULL,
	[UNLOADING] [decimal](10, 2) NULL,
	[UNLOADING_LABOR] [decimal](10, 2) NULL,
	[WEIGHT_CHARGE] [decimal](10, 2) NULL,
	[TIMESTAMP] [varchar](15) NULL,
	[SPECIAL_DELIVERY] [decimal](10, 2) NULL,
	[PROVINCIAL_SURCHG] [decimal](10, 2) NULL,
	[PROVINCIAL_TAX_RECOV] [decimal](10, 2) NULL,
	[CARBON_TAX_SURCHG] [decimal](10, 2) NULL,
	[CUSTOMS_FEE] [decimal](10, 2) NULL,
	[BOND_CHARGE] [decimal](10, 2) NULL,
	[INBOND_CHARGE] [decimal](10, 2) NULL,
	[COST_RECOVERY_SURCHG] [decimal](10, 2) NULL,
	[SHUNTING_CHARGE] [decimal](10, 2) NULL,
	[ADMINSTRATION_CHG] [decimal](10, 2) NULL,
	[RE_PALLETIZATION_CHG] [decimal](10, 2) NULL,
	[TPP_CNTRY] [varchar](20) NULL,
	[MATERIAL_GRP] [varchar](20) NULL,
	[CURRENCY] [varchar](20) NULL,
	[DETENTION_ORIGIN] [decimal](10, 2) NULL,
	[DETENTION_DEST] [decimal](10, 2) NULL,
	[NET_WT] [decimal](15, 3) NULL,
	[WT_UOM] [varchar](5) NULL,
	[GLCC_EXPENSE] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZCOSTALOCX_US_OUT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZCOSTALOCX_US_OUT](
	[ZCOSTALOCX Source] [varchar](6) NULL,
	[BOL Number] [varchar](20) NULL,
	[Period] [varchar](6) NULL,
	[Period Expense] [decimal](10, 2) NULL,
	[Sett. date] [varchar](10) NULL,
	[Shipmt Cost No.] [varchar](10) NULL,
	[Ship. cost item] [varchar](6) NULL,
	[Shipment Number] [varchar](10) NULL,
	[Delivery Number] [varchar](10) NULL,
	[Order Number] [varchar](10) NULL,
	[Customer Order Number] [varchar](20) NULL,
	[Carrier Pro Number] [varchar](20) NULL,
	[Invoice Date] [varchar](10) NULL,
	[WIP Indicator] [varchar](5) NULL,
	[Ship Date] [varchar](10) NULL,
	[PGI/Check Call Date] [varchar](10) NULL,
	[Origin] [varchar](10) NULL,
	[Origin Name] [varchar](30) NULL,
	[Origin Type] [varchar](5) NULL,
	[Destination] [varchar](10) NULL,
	[Destination Name] [varchar](30) NULL,
	[Destination Type] [varchar](8) NULL,
	[Mode] [varchar](5) NULL,
	[Origin City] [varchar](20) NULL,
	[Origin State] [varchar](5) NULL,
	[Origin Zip] [varchar](10) NULL,
	[Destination City] [varchar](20) NULL,
	[Destination State] [varchar](5) NULL,
	[Destination Zip] [varchar](10) NULL,
	[Sales Org] [varchar](5) NULL,
	[Fleet Indicator] [varchar](5) NULL,
	[Shipment Type] [varchar](5) NULL,
	[SCAC] [varchar](5) NULL,
	[SKU Number] [varchar](20) NULL,
	[SKU Description] [varchar](40) NULL,
	[Total Miles] [decimal](10, 3) NULL,
	[GL Account] [varchar](10) NULL,
	[Cost Center] [varchar](10) NULL,
	[Temp. controlled] [varchar](5) NULL,
	[Service Type level] [varchar](5) NULL,
	[Order Type] [varchar](20) NULL,
	[SKU BU] [varchar](5) NULL,
	[SKU Uls] [decimal](15, 3) NULL,
	[SKU Qty Shipped] [decimal](15, 3) NULL,
	[SKUQtyShippedUOM] [varchar](5) NULL,
	[SKU Cube Shipped] [decimal](15, 3) NULL,
	[Weight] [decimal](15, 3) NULL,
	[Packaging Units] [decimal](15, 3) NULL,
	[SCD create date] [varchar](10) NULL,
	[SCD create time] [varchar](8) NULL,
	[SCD Changed date] [varchar](10) NULL,
	[SCD changed time] [varchar](8) NULL,
	[Pay Flag] [varchar](5) NULL,
	[Total Dollars] [decimal](10, 2) NULL,
	[Shipping date] [varchar](10) NULL,
	[AFTERHOURS_DELIVERY] [decimal](10, 2) NULL,
	[BASE_CHARGE] [decimal](10, 2) NULL,
	[BOL_CORRECTION] [decimal](10, 2) NULL,
	[BORDER_CROSSING] [decimal](10, 2) NULL,
	[BORDER_SECURITY] [decimal](10, 2) NULL,
	[BROKERAGE_FEE] [decimal](10, 2) NULL,
	[BUNKER_SURCHARGE] [decimal](10, 2) NULL,
	[CIRCUITOS] [decimal](10, 2) NULL,
	[CIRCUITOUS_MILEAGE] [decimal](10, 2) NULL,
	[CONGESTION] [decimal](10, 2) NULL,
	[DEADHEAD_MILEAGE] [decimal](10, 2) NULL,
	[DEFICIT_WEIGHT] [decimal](10, 2) NULL,
	[DETENTION] [decimal](10, 2) NULL,
	[DISCOUNT] [decimal](10, 2) NULL,
	[DRAYAGE] [decimal](10, 2) NULL,
	[DRIVER] [decimal](10, 2) NULL,
	[DROP_TRAILER] [decimal](10, 2) NULL,
	[EXCESS_MILEAGE] [decimal](10, 2) NULL,
	[EXPEDITED] [decimal](10, 2) NULL,
	[FUEL_SURCHARGE] [decimal](10, 2) NULL,
	[GUARANTEE] [decimal](10, 2) NULL,
	[GUARANTEED_NOON_DEL] [decimal](10, 2) NULL,
	[HAZARDOUS] [decimal](10, 2) NULL,
	[HIGH_COST_DELIVERY] [decimal](10, 2) NULL,
	[INSIDE_DELIVER] [decimal](10, 2) NULL,
	[INVASIVE] [decimal](10, 2) NULL,
	[LAYOVER] [decimal](10, 2) NULL,
	[LIFT] [decimal](10, 2) NULL,
	[LINEHAUL] [decimal](10, 2) NULL,
	[LUMPER] [decimal](10, 2) NULL,
	[MANAGEMENT] [decimal](10, 2) NULL,
	[MEXICAN] [decimal](10, 2) NULL,
	[MISCELLANEOUS] [decimal](10, 2) NULL,
	[NEWYORK_SURCHARGE] [decimal](10, 2) NULL,
	[OUT_OF_ROUTE] [decimal](10, 2) NULL,
	[PALLET] [decimal](10, 2) NULL,
	[RAMPSTORAGE_CHARGE] [decimal](10, 2) NULL,
	[RECONSIGNMENT] [decimal](10, 2) NULL,
	[REDELIVERY] [decimal](10, 2) NULL,
	[REFRIDERATED] [decimal](10, 2) NULL,
	[REFRIGERATED] [decimal](10, 2) NULL,
	[RETURN_CHARGE] [decimal](10, 2) NULL,
	[SECURITY] [decimal](10, 2) NULL,
	[SORT_AND_SEGREGATE] [decimal](10, 2) NULL,
	[SPOTTING] [decimal](10, 2) NULL,
	[STOPOFF] [decimal](10, 2) NULL,
	[STORAGE] [decimal](10, 2) NULL,
	[TAG] [decimal](10, 2) NULL,
	[TEMPACCESSORIAL] [decimal](10, 2) NULL,
	[TERMINAL] [decimal](10, 2) NULL,
	[TOLL] [decimal](10, 2) NULL,
	[TRUCK] [decimal](10, 2) NULL,
	[UNLOADING] [decimal](10, 2) NULL,
	[UNLOADING_LABOR] [decimal](10, 2) NULL,
	[WEIGHT_CHARGE] [decimal](10, 2) NULL,
	[TIMESTAMP] [varchar](15) NULL,
	[SPECIAL_DELIVERY] [decimal](10, 2) NULL,
	[PROVINCIAL_SURCHG] [decimal](10, 2) NULL,
	[PROVINCIAL_TAX_RECOV] [decimal](10, 2) NULL,
	[CARBON_TAX_SURCHG] [decimal](10, 2) NULL,
	[CUSTOMS_FEE] [decimal](10, 2) NULL,
	[BOND_CHARGE] [decimal](10, 2) NULL,
	[INBOND_CHARGE] [decimal](10, 2) NULL,
	[COST_RECOVERY_SURCHG] [decimal](10, 2) NULL,
	[SHUNTING_CHARGE] [decimal](10, 2) NULL,
	[ADMINSTRATION_CHG] [decimal](10, 2) NULL,
	[RE_PALLETIZATION_CHG] [decimal](10, 2) NULL,
	[TPP_CNTRY] [varchar](20) NULL,
	[MATERIAL_GRP] [varchar](20) NULL,
	[CURRENCY] [varchar](20) NULL,
	[DETENTION_ORIGIN] [decimal](10, 2) NULL,
	[DETENTION_DEST] [decimal](10, 2) NULL,
	[NET_WT] [decimal](15, 3) NULL,
	[WT_UOM] [varchar](5) NULL,
	[GLCC_EXPENSE] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SYSCO].[SYSCO_NONRDC_FCST_INFO]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SYSCO].[SYSCO_NONRDC_FCST_INFO](
	[SNP_SHT_PRD] [varchar](10) NULL,
	[CMPNY_NBR] [varchar](20) NULL,
	[CMPNY_NM] [varchar](50) NULL,
	[OPCO_ZIP_COD] [varchar](10) NULL,
	[PAY_TO_SUVC] [varchar](50) NULL,
	[PAY_TO_SUPLR_NM] [varchar](50) NULL,
	[SHP_FRM_SUVC] [varchar](50) NULL,
	[SHP_FRM_SUPLR_NM] [varchar](50) NULL,
	[RDC_FLG] [varchar](10) NULL,
	[ADDR] [varchar](255) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[ZIP_COD] [varchar](10) NULL,
	[ITM_NBR] [varchar](20) NULL,
	[ITM_DESC] [varchar](50) NULL,
	[MATRL] [varchar](20) NULL,
	[PACK] [varchar](50) NULL,
	[SIZE] [varchar](20) NULL,
	[BRAND] [varchar](50) NULL,
	[ON_HAND_QTY] [float] NULL,
	[TOT_CMTD_UNTS] [float] NULL,
	[ORDRD_QTY] [float] NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[WK_17] [varchar](20) NULL,
	[WK_18] [varchar](20) NULL,
	[WK_19] [varchar](20) NULL,
	[WK_20] [varchar](20) NULL,
	[WK_21] [varchar](20) NULL,
	[WK_22] [varchar](20) NULL,
	[WK_23] [varchar](20) NULL,
	[WK_24] [varchar](20) NULL,
	[WK_25] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SYSCO].[SYSCO_NONRDC_HDR_INFO]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SYSCO].[SYSCO_NONRDC_HDR_INFO](
	[SNP_SHT_PRD] [varchar](10) NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[WK_17] [varchar](20) NULL,
	[WK_18] [varchar](20) NULL,
	[WK_19] [varchar](20) NULL,
	[WK_20] [varchar](20) NULL,
	[WK_21] [varchar](20) NULL,
	[WK_22] [varchar](20) NULL,
	[WK_23] [varchar](20) NULL,
	[WK_24] [varchar](20) NULL,
	[WK_25] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SYSCO].[SYSCO_NSD_MAP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SYSCO].[SYSCO_NSD_MAP](
	[City] [varchar](255) NULL,
	[NSD] [varchar](255) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SYSCO].[SYSCO_RDC_FCST_INFO]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SYSCO].[SYSCO_RDC_FCST_INFO](
	[SHP_SHT_PRD] [varchar](255) NULL,
	[CMPNY_NBR] [varchar](255) NULL,
	[CMPNY_NM] [varchar](255) NULL,
	[OPCO_ZIP_COD] [varchar](255) NULL,
	[PAY_TO_SUVC] [varchar](255) NULL,
	[PAY_TO_SUPLR_NM] [varchar](255) NULL,
	[SHP_FRM_SUVC] [varchar](255) NULL,
	[SHP_FRM_SUPLR_NM] [varchar](255) NULL,
	[RDC_FLG] [varchar](255) NULL,
	[ADDR] [varchar](255) NULL,
	[CTY] [varchar](255) NULL,
	[STATE] [varchar](255) NULL,
	[ZIP_CODE] [varchar](255) NULL,
	[ITM_NBR] [varchar](255) NULL,
	[ITM_DESC] [varchar](255) NULL,
	[MATRL] [varchar](255) NULL,
	[PACK] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[ON_HAND_QTY] [varchar](255) NULL,
	[TOT_CMTD_UNTS] [varchar](255) NULL,
	[ORDRD_QTY] [varchar](255) NULL,
	[WK_1] [varchar](255) NULL,
	[WK_2] [varchar](255) NULL,
	[WK_3] [varchar](255) NULL,
	[WK_4] [varchar](255) NULL,
	[WK_5] [varchar](255) NULL,
	[WK_6] [varchar](255) NULL,
	[WK_7] [varchar](255) NULL,
	[WK_8] [varchar](255) NULL,
	[WK_9] [varchar](255) NULL,
	[WK_10] [varchar](255) NULL,
	[WK_11] [varchar](255) NULL,
	[WK_12] [varchar](255) NULL,
	[WK_13] [varchar](255) NULL,
	[WK_14] [varchar](255) NULL,
	[WK_15] [varchar](255) NULL,
	[WK_16] [varchar](255) NULL,
	[WK_17] [varchar](255) NULL,
	[WK_18] [varchar](255) NULL,
	[WK_19] [varchar](255) NULL,
	[WK_20] [varchar](255) NULL,
	[WK_21] [varchar](255) NULL,
	[WK_22] [varchar](255) NULL,
	[WK_23] [varchar](255) NULL,
	[WK_24] [varchar](255) NULL,
	[WK_25] [varchar](255) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SYSCO].[SYSCO_RDC_HDR_INFO]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SYSCO].[SYSCO_RDC_HDR_INFO](
	[SNP_SHT_PRD] [varchar](255) NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[WK_17] [varchar](20) NULL,
	[WK_18] [varchar](20) NULL,
	[WK_19] [varchar](20) NULL,
	[WK_20] [varchar](20) NULL,
	[WK_21] [varchar](20) NULL,
	[WK_22] [varchar](20) NULL,
	[WK_23] [varchar](20) NULL,
	[WK_24] [varchar](20) NULL,
	[WK_25] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TDLINX].[KELLGRS1]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TDLINX].[KELLGRS1](
	[RCLIENTNO] [varchar](50) NULL,
	[RTRANSCD] [varchar](1) NULL,
	[RFILEDT] [varchar](8) NULL,
	[RTDLINXSCD] [varchar](7) NULL,
	[RTDLINXACD] [varchar](6) NULL,
	[RTRADECLCD] [varchar](2) NULL,
	[RFORMATCD] [varchar](1) NULL,
	[RSSTATUSCD] [varchar](1) NULL,
	[RASTATUSCD] [varchar](1) NULL,
	[RREPLSCD] [varchar](7) NULL,
	[RREPLACD] [varchar](6) NULL,
	[RCLVERDT] [varchar](8) NULL,
	[RSHIPTOACD] [varchar](6) NULL,
	[RFILLER] [varchar](31) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TDLINX].[KELLGSTR]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TDLINX].[KELLGSTR](
	[STDLINXSCD] [varchar](7) NULL,
	[STRANSCD] [varchar](1) NULL,
	[SMODCHGIND] [varchar](15) NULL,
	[SFILEDT] [varchar](8) NULL,
	[SSTATUSIND] [varchar](1) NULL,
	[SNAME] [varchar](32) NULL,
	[SNO] [varchar](8) NULL,
	[SSTREETADD] [varchar](32) NULL,
	[SCITY] [varchar](25) NULL,
	[SST] [varchar](2) NULL,
	[SZIP] [varchar](9) NULL,
	[SPLACENM] [varchar](25) NULL,
	[SSTCD] [varchar](2) NULL,
	[SCNTCD] [varchar](3) NULL,
	[SCNTRYNM] [varchar](10) NULL,
	[STRADECLCD] [varchar](2) NULL,
	[SFORMATCD] [varchar](1) NULL,
	[SNOSTRCD] [varchar](1) NULL,
	[SCHAININD] [varchar](1) NULL,
	[SFILLER1] [varchar](67) NULL,
	[SLAT] [float] NULL,
	[SLONG] [float] NULL,
	[SLATLONGCD] [varchar](1) NULL,
	[SBLOCKID] [varchar](15) NULL,
	[SFILLER2] [varchar](6) NULL,
	[SAREACD] [varchar](3) NULL,
	[SPHONENO] [varchar](7) NULL,
	[SFILLER3] [varchar](50) NULL,
	[SANNVOLCD] [varchar](2) NULL,
	[SWKLYVOL] [float] NULL,
	[SSQFT] [float] NULL,
	[SFTEMPLOY] [float] NULL,
	[SNMCHKOUT] [float] NULL,
	[SFILLER4] [varchar](35) NULL,
	[STDLINXOCD] [varchar](6) NULL,
	[SOWNFAMCD] [varchar](5) NULL,
	[SOWNNM] [varchar](32) NULL,
	[SOWNCITY] [varchar](25) NULL,
	[SOWNST] [varchar](2) NULL,
	[SOWNSTCD] [varchar](2) NULL,
	[SOWNCNTCD] [varchar](3) NULL,
	[SFILLER5] [varchar](25) NULL,
	[STDLINXPCD] [varchar](6) NULL,
	[SSUPFAMCD] [varchar](5) NULL,
	[SSUPNM] [varchar](32) NULL,
	[SSUPCITY] [varchar](25) NULL,
	[SSUPST] [varchar](2) NULL,
	[SSUPSTCD] [varchar](2) NULL,
	[SSUPCNTCD] [varchar](3) NULL,
	[SFILLER6] [varchar](25) NULL,
	[STDLINXGCD] [varchar](6) NULL,
	[SGRPNM] [varchar](32) NULL,
	[SFRANIND] [varchar](1) NULL,
	[SFILLER7] [varchar](31) NULL,
	[SGAS] [varchar](1) NULL,
	[SHIVOLCIG] [varchar](1) NULL,
	[SPHARM] [varchar](1) NULL,
	[SLIQUOR] [varchar](1) NULL,
	[SWINE] [varchar](1) NULL,
	[SBEER] [varchar](1) NULL,
	[SONPREM] [varchar](1) NULL,
	[SFOODTYPE] [varchar](2) NULL,
	[SFUTURE1] [varchar](1) NULL,
	[SFUTURE2] [varchar](1) NULL,
	[SFUTURE3] [varchar](1) NULL,
	[SFILLER8] [varchar](18) NULL,
	[ATDLINXACD] [varchar](6) NULL,
	[AFAMCD] [varchar](5) NULL,
	[ATRANSCD] [varchar](1) NULL,
	[ASTATUSIND] [varchar](1) NULL,
	[ATYPECD] [varchar](1) NULL,
	[ANAME] [varchar](32) NULL,
	[ASTREET] [varchar](32) NULL,
	[ACITY] [varchar](25) NULL,
	[ASTATE] [varchar](2) NULL,
	[AZIP] [varchar](9) NULL,
	[ASTCD] [varchar](2) NULL,
	[ACNTCD] [varchar](3) NULL,
	[ACNTRYNM] [varchar](10) NULL,
	[AOPERNAME] [varchar](40) NULL,
	[ATRADECLCD] [varchar](2) NULL,
	[ANOSTRCD] [varchar](1) NULL,
	[ATDLINXICD] [varchar](6) NULL,
	[AIMNAME] [varchar](32) NULL,
	[AIMCITY] [varchar](25) NULL,
	[AIMSTATE] [varchar](2) NULL,
	[ATDLINXUCD] [varchar](6) NULL,
	[AULNAME] [varchar](32) NULL,
	[AULCITY] [varchar](25) NULL,
	[AULSTATE] [varchar](2) NULL,
	[MSTCD] [varchar](2) NULL,
	[MCNTCD] [varchar](3) NULL,
	[MSTATE] [varchar](2) NULL,
	[MCOUNTYNM] [varchar](12) NULL,
	[MNIELSZCD] [varchar](1) NULL,
	[MDMACD] [varchar](3) NULL,
	[MDMANM] [varchar](40) NULL,
	[MDMARNK] [float] NULL,
	[MMSACD] [varchar](4) NULL,
	[MMSANM] [varchar](40) NULL,
	[MMSARNK] [float] NULL,
	[MIRICD] [varchar](3) NULL,
	[MIRINM] [varchar](40) NULL,
	[MIRIRNK] [float] NULL,
	[MACNCD] [varchar](3) NULL,
	[MACNNM] [varchar](40) NULL,
	[MACNRNK] [float] NULL,
	[MMGBMKTCD] [varchar](3) NULL,
	[MMGBMKTNM] [varchar](40) NULL,
	[MMGBREGNM] [varchar](40) NULL,
	[MMGBRNK] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TIBERSOFT].[TIBERSOFT_CLAIMS]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [TIBERSOFT].[TIBERSOFT_CLAIMS](
	[Segment Description] [varchar](255) NULL,
	[Operator ID] [varchar](255) NULL,
	[Material Code] [varchar](255) NULL,
	[Sold To Code] [varchar](255) NULL,
	[Total Cases] [float] NULL,
	[Billback Dollars] [float] NULL,
	[Rebate Dollars] [float] NULL,
	[Total Dollars] [float] NULL,
	[Kelloggs Fiscal Period] [varchar](15) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TIBERSOFT].[TIBERSOFT_NATL_ACCT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [TIBERSOFT].[TIBERSOFT_NATL_ACCT](
	[Segment] [varchar](255) NULL,
	[OperatorID] [varchar](255) NULL,
	[MaterialCode] [varchar](255) NULL,
	[SoldToCode] [varchar](255) NULL,
	[Cases] [float] NULL,
	[KelloggsFiscalPeriod] [varchar](10) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TRANSPLACE].[SERVICE]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TRANSPLACE].[SERVICE](
	[BUSINESS_UNIT_TYPE] [varchar](13) NULL,
	[LOAD_CREATED_DTM] [varchar](10) NULL,
	[EVENT_TYPE] [int] NULL,
	[ORDER_TYPE] [varchar](11) NULL,
	[TOP_CUSTOMER_NAME] [varchar](29) NULL,
	[MODE_TYPE] [varchar](10) NULL,
	[ME_LANE] [varchar](38) NULL,
	[ORIGIN_LOC_ID] [int] NULL,
	[ORIGIN_NAME] [varchar](31) NULL,
	[ORIGIN_CITY] [varchar](14) NULL,
	[ORIGIN_STATE] [varchar](2) NULL,
	[ORIGIN_ZIP] [varchar](6) NULL,
	[DESTINATION_LOC_ID] [varchar](10) NULL,
	[DESTINATION_NAME] [varchar](33) NULL,
	[DESTINATION_CITY] [varchar](12) NULL,
	[DESTINATION_STATE] [varchar](2) NULL,
	[DESTINATION_ZIP] [varchar](6) NULL,
	[MODE_EXECUTION_ID] [int] NULL,
	[PRIMARY_REFERENCE_NO] [varchar](11) NULL,
	[CARRIER_SCAC] [varchar](4) NULL,
	[DELIVERY_STOP_NBR] [int] NULL,
	[APPT_CHANGE_CNT] [varchar](3) NULL,
	[ANYAPPT_CHG_CARR_FAULT] [varchar](3) NULL,
	[TPUSER_APPT_CHG] [int] NULL,
	[TPUSER_NAME] [varchar](42) NULL,
	[TPUSER_APPT_CHG_REASONS] [varchar](39) NULL,
	[REQ_EARLIEST_DELIVERY_DATETIME] [varchar](15) NULL,
	[REQ_LATEST_DELIVERY_DATETIME] [varchar](16) NULL,
	[FIRST_DELIVERY_RESET_APPT_DTM1] [varchar](16) NULL,
	[FIRST_DELIV_APPT_RESET_REASON] [varchar](21) NULL,
	[LAST_DELIVERY_APPT_DTM] [varchar](16) NULL,
	[MUST_ARRIVE_BY_DATETIME] [varchar](10) NULL,
	[ACTUAL_DELIVERY_DTM] [varchar](15) NULL,
	[ACTUAL_DELIVERY_DEP_DTM] [varchar](15) NULL,
	[CHECK_CALL_REASON] [varchar](38) NULL,
	[CC_REASON_RESPONSIBLE_PARTY] [varchar](17) NULL,
	[MEASURABLE_TRANS_FA] [int] NULL,
	[ON_TIME_ARRIVAL_CNT2] [int] NULL,
	[SAT_ADJ_REASON] [varchar](38) NULL,
	[TRANS_FA_OT_PCT] [varchar](7) NULL,
	[MEASURABLE_DO1A] [int] NULL,
	[DO1A_ON_TIME_COUNT1] [int] NULL,
	[MEASURABLE_DO1A_PCT] [varchar](7) NULL,
	[MEASURABLE_MABD] [int] NULL,
	[MABD] [int] NULL,
	[RAD_ADJ_REASON] [varchar](38) NULL,
	[MABD_OT_PCT] [varchar](7) NULL,
	[MEASURABLE_MABD1] [int] NULL,
	[MABD_ADJ_ON_TIME_DELIV_CNT] [int] NULL,
	[MABD_ADJ_OT_PCT] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US_FOODS].[USFOODS_HDR_INFO]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US_FOODS].[USFOODS_HDR_INFO](
	[SNP_SHT_PRD] [varchar](10) NULL,
	[WK_1] [varchar](20) NULL,
	[WK_2] [varchar](20) NULL,
	[WK_3] [varchar](20) NULL,
	[WK_4] [varchar](20) NULL,
	[WK_5] [varchar](20) NULL,
	[WK_6] [varchar](20) NULL,
	[WK_7] [varchar](20) NULL,
	[WK_8] [varchar](20) NULL,
	[WK_9] [varchar](20) NULL,
	[WK_10] [varchar](20) NULL,
	[WK_11] [varchar](20) NULL,
	[WK_12] [varchar](20) NULL,
	[WK_13] [varchar](20) NULL,
	[WK_14] [varchar](20) NULL,
	[WK_15] [varchar](20) NULL,
	[WK_16] [varchar](20) NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US_FOODS].[USFOODS_NSD_LOC]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US_FOODS].[USFOODS_NSD_LOC](
	[SHP_FRM_CITY] [varchar](255) NULL,
	[NSD_LOC] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US_FOODS].[USFOODS_SALS_FCST_INFO]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US_FOODS].[USFOODS_SALS_FCST_INFO](
	[SNP_SHT_PRD] [varchar](255) NULL,
	[A-SYS_CODE] [float] NULL,
	[PRD_DESC] [varchar](255) NULL,
	[RGN_NM] [varchar](255) NULL,
	[DVSN_NBR] [float] NULL,
	[DVSN_NM] [varchar](255) NULL,
	[MFR_PRD_NBR] [varchar](255) NULL,
	[PIM_GTIN] [varchar](255) NULL,
	[ITM_STAT] [float] NULL,
	[PIM_MRCH_CT] [varchar](255) NULL,
	[PIM_BRND_TYP] [varchar](255) NULL,
	[CLS_DESC] [varchar](255) NULL,
	[CTG_DESC] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SHP_FRM_NBR] [varchar](255) NULL,
	[SHP_FRM_NM] [varchar](255) NULL,
	[SHP_FRM_CTY] [varchar](255) NULL,
	[SHP_FRM_ST] [varchar](255) NULL,
	[PUR_VEN_DESC] [varchar](255) NULL,
	[ON_HAND] [float] NULL,
	[ON_ORDR] [float] NULL,
	[WKS_ON_HND_W/O_OPN_ORDR] [float] NULL,
	[WKS_ON_HND_WTH_OPN_ORDR] [float] NULL,
	[PUR_VEN_NBR] [varchar](255) NULL,
	[16_WK_QTY] [float] NULL,
	[WK_1] [float] NULL,
	[WK_2] [float] NULL,
	[WK_3] [float] NULL,
	[WK_4] [float] NULL,
	[WK_5] [float] NULL,
	[WK_6] [float] NULL,
	[WK_7] [float] NULL,
	[WK_8] [float] NULL,
	[WK_9] [float] NULL,
	[WK_10] [float] NULL,
	[WK_11] [float] NULL,
	[WK_12] [float] NULL,
	[WK_13] [float] NULL,
	[WK_14] [float] NULL,
	[WK_15] [float] NULL,
	[WK_16] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[AGRMT_DUP_FLG]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[AGRMT_DUP_FLG](
	[Agreement] [varchar](255) NOT NULL,
	[Description of agreement] [varchar](255) NULL,
	[Duplicate Flag] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Agreement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[BB_EXCL_DISTBR]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [USER_FIN].[BB_EXCL_DISTBR](
	[Distributor #] [float] NULL,
	[Distributor Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[BB_EXCL_OPR]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [USER_FIN].[BB_EXCL_OPR](
	[Operator #] [float] NULL,
	[Operator Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_CAUSAL_FCTRS]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_CAUSAL_FCTRS](
	[CAUSAL_FCTRS] [varchar](255) NULL,
	[CAUSAL_FCTRS COMPRESSED] [varchar](255) NULL,
	[MAPPING] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_CAUSAL_FCTRS_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_CAUSAL_FCTRS_OLD](
	[CAUSAL_FCTRS] [varchar](255) NULL,
	[CAUSAL_FCTRS COMPRESSED] [varchar](255) NULL,
	[MAPPING] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_RECLMNTN_DISTR]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_RECLMNTN_DISTR](
	[Reclamation Center Distributor Names] [varchar](255) NULL,
	[Reclamation Center Distributor Names Compressed] [varchar](255) NULL,
	[Kellogg PlanTo Name] [varchar](255) NULL,
	[Kellogg PlanTo Number] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_RECLMNTN_DISTR_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_RECLMNTN_DISTR_OLD](
	[Reclamation Center Distributor Names] [varchar](255) NULL,
	[Reclamation Center Distributor Names Compressed] [varchar](255) NULL,
	[Kellogg PlanTo Name] [varchar](255) NULL,
	[Kellogg PlanTo Number] [decimal](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_RPD_DRAFT_EXCPTN_RPT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_RPD_DRAFT_EXCPTN_RPT](
	[Auth Number] [decimal](10, 0) NULL,
	[Customer Number] [decimal](10, 0) NULL,
	[Draft Number] [decimal](10, 0) NULL,
	[Payee] [varchar](255) NULL,
	[Item Amount] [decimal](28, 2) NULL,
	[Total Amount] [decimal](28, 2) NULL,
	[Region] [varchar](255) NULL,
	[Correct_Plan_To] [decimal](10, 0) NULL,
	[LOAD_TIMESTAMP] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_RPD_DRAFT_REP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_RPD_DRAFT_REP](
	[Name] [varchar](255) NULL,
	[AuthNumber] [decimal](10, 0) NULL,
	[Status] [varchar](255) NULL,
	[Limit] [decimal](28, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[CA_UNSALEABLS_RPD_DRAFT_REP_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[CA_UNSALEABLS_RPD_DRAFT_REP_OLD](
	[Name] [varchar](255) NULL,
	[AuthNumber] [decimal](10, 0) NULL,
	[Status] [varchar](255) NULL,
	[Limit] [decimal](28, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[DED_CURRENT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[DED_CURRENT](
	[Payer_NBR] [decimal](28, 0) NULL,
	[PlanTo_NBR] [varchar](255) NULL,
	[Placeholder1] [varchar](255) NULL,
	[Placeholder2] [varchar](255) NULL,
	[SoldTo_NBR] [varchar](255) NULL,
	[Placeholder3] [varchar](255) NULL,
	[Placeholder4] [varchar](255) NULL,
	[Placeholder5] [varchar](255) NULL,
	[Placeholder6] [varchar](255) NULL,
	[PAYER_NM] [varchar](255) NULL,
	[Credit_Processor] [varchar](255) NULL,
	[PT_Channel] [varchar](255) NULL,
	[Sales_Mgmt_A_NM] [varchar](255) NULL,
	[Sales_Mgmt_B_NM] [varchar](255) NULL,
	[Sales_Mgmt_C_NM] [varchar](255) NULL,
	[Sales_Mgmt_D_NM] [varchar](255) NULL,
	[Sales_Mgmt_E_NM] [varchar](255) NULL,
	[Placeholder7] [varchar](255) NULL,
	[PlanTo_NM] [varchar](255) NULL,
	[PlanTo_NBR_NM] [varchar](255) NULL,
	[Customer_Group] [varchar](255) NULL,
	[Mapped] [varchar](255) NULL,
	[Company] [varchar](255) NULL,
	[Row_IX] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[FIN_ADJ_BUD_COP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[FIN_ADJ_BUD_COP](
	[SKU #] [varchar](255) NULL,
	[SKU Text] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[P1] [decimal](20, 2) NULL,
	[P2] [decimal](20, 2) NULL,
	[P3] [decimal](20, 2) NULL,
	[P4] [decimal](20, 2) NULL,
	[P5] [decimal](20, 2) NULL,
	[P6] [decimal](20, 2) NULL,
	[P7] [decimal](20, 2) NULL,
	[P8] [decimal](20, 2) NULL,
	[P9] [decimal](20, 2) NULL,
	[P10] [decimal](20, 2) NULL,
	[P11] [decimal](20, 2) NULL,
	[P12] [decimal](20, 2) NULL,
	[FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[FIN_ADJ_BUD_GSV]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[FIN_ADJ_BUD_GSV](
	[SKU #] [varchar](255) NULL,
	[SKU Text] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[P1] [decimal](20, 2) NULL,
	[P2] [decimal](20, 2) NULL,
	[P3] [decimal](20, 2) NULL,
	[P4] [decimal](20, 2) NULL,
	[P5] [decimal](20, 2) NULL,
	[P6] [decimal](20, 2) NULL,
	[P7] [decimal](20, 2) NULL,
	[P8] [decimal](20, 2) NULL,
	[P9] [decimal](20, 2) NULL,
	[P10] [decimal](20, 2) NULL,
	[P11] [decimal](20, 2) NULL,
	[P12] [decimal](20, 2) NULL,
	[FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[FIN_ADJ_BUD_KG]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[FIN_ADJ_BUD_KG](
	[SKU #] [varchar](255) NULL,
	[SKU Text] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[P1] [decimal](20, 2) NULL,
	[P2] [decimal](20, 2) NULL,
	[P3] [decimal](20, 2) NULL,
	[P4] [decimal](20, 2) NULL,
	[P5] [decimal](20, 2) NULL,
	[P6] [decimal](20, 2) NULL,
	[P7] [decimal](20, 2) NULL,
	[P8] [decimal](20, 2) NULL,
	[P9] [decimal](20, 2) NULL,
	[P10] [decimal](20, 2) NULL,
	[P11] [decimal](20, 2) NULL,
	[P12] [decimal](20, 2) NULL,
	[FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[FISC_PD_CLS]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_FIN].[FISC_PD_CLS](
	[FISC_YR] [int] NULL,
	[FISC_PD] [int] NULL,
	[CLS_DY] [int] NOT NULL,
	[CLS_DT] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USER_FIN].[FISC_PD_CLS_WK]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[FISC_PD_CLS_WK](
	[APPL_NM] [varchar](255) NULL,
	[REGION] [varchar](255) NULL,
	[FISC_YR] [int] NULL,
	[FISC_PD] [int] NULL,
	[CLS_DY] [int] NULL,
	[CLS_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[JW_MATERIAL_XREF]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [USER_FIN].[JW_MATERIAL_XREF](
	[Material #] [varchar](15) NULL,
	[Material Name] [varchar](255) NULL,
	[Segment] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[JW_SOLDTO_XREF]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [USER_FIN].[JW_SOLDTO_XREF](
	[Sold To] [varchar](15) NULL,
	[Sold To Name] [varchar](255) NULL,
	[Segment] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[LKP_SCMGATTR_REASON_CATG_TYP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[LKP_SCMGATTR_REASON_CATG_TYP](
	[CASE_TYPE] [varchar](4) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CATG_TYP] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[LKP_T053S_CATG_TYP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[LKP_T053S_CATG_TYP](
	[BUKRS] [varchar](4) NULL,
	[RSTGR] [varchar](3) NULL,
	[CATG_TYP] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[PROD_HIER_TYPE_DESC_OVR]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[PROD_HIER_TYPE_DESC_OVR](
	[PROD_HIER_TYPE] [varchar](14) NULL,
	[PROD_HIER_TYPE_DESC_OVR] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[PROD_HIER_TYPE_DESC_OVR_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_FIN].[PROD_HIER_TYPE_DESC_OVR_OLD](
	[PROD_HIER_TYPE] [varchar](14) NULL,
	[PROD_HIER_TYPE_DESC_OVR] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_FIN].[RGM_SEG_CASE_RED_XREF]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_FIN].[RGM_SEG_CASE_RED_XREF](
	[Operator ID] [float] NULL,
	[%] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USER_FIN].[RGM_SEG_NEW_SEG_XREF]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [USER_FIN].[RGM_SEG_NEW_SEG_XREF](
	[Source] [varchar](255) NULL,
	[Segment Name] [varchar](255) NULL,
	[New Segment Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_GBS_OTC].[LATE_DELVRY_TEAM_LEAD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_GBS_OTC].[LATE_DELVRY_TEAM_LEAD](
	[USK] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Team Lead] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_GBS_OTC].[LATE_DELVRY_TEAM_LEAD_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_GBS_OTC].[LATE_DELVRY_TEAM_LEAD_OLD](
	[USK] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Team Lead] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_ODAG].[sls_contractflag]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_ODAG].[sls_contractflag](
	[TRADE PROMOTION ID] [varchar](255) NULL,
	[TRADE PROMOTION DESCRIPTION] [varchar](255) NULL,
	[PROMOTION TYPE] [varchar](255) NULL,
	[PLAN TO] [varchar](255) NULL,
	[PLANNING ACCOUNT] [varchar](255) NULL,
	[PLANNED START DATE] [date] NULL,
	[PLANNED END DATE] [date] NULL,
	[STATUS] [varchar](255) NULL,
	[EMPLOYEE RESPONSIBLE] [varchar](255) NULL,
	[KMF%] [decimal](10, 2) NULL,
	[GROSS SALES] [decimal](10, 2) NULL,
	[TRADE SPEND] [decimal](10, 2) NULL,
	[GROSS SALE CURRENCY] [varchar](3) NULL,
	[TRADE SPEND CURRENCY] [varchar](3) NULL,
	[CONTRACT ATTACHED] [varchar](1) NULL,
	[REASON CODE] [varchar](26) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[ACOSTA_HIERARCHY]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[ACOSTA_HIERARCHY](
	[KLG_BANNER] [varchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [varchar](255) NULL,
	[Acosta Retail Bus Mgr] [varchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [varchar](255) NULL,
	[Frozen Region] [varchar](255) NULL,
	[KLG VP DRA Director] [varchar](255) NULL,
	[KLG Director MTS] [varchar](255) NULL,
	[Plan To] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[FLAG] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[ACOSTA_HIERARCHY_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[ACOSTA_HIERARCHY_OLD](
	[KLG_BANNER] [varchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [varchar](255) NULL,
	[Acosta Retail Bus Mgr] [varchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [varchar](255) NULL,
	[Frozen Region] [varchar](255) NULL,
	[KLG VP DRA Director] [varchar](255) NULL,
	[KLG Director MTS] [varchar](255) NULL,
	[Plan To] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[FLAG] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[AOD_NIELSEN_ICEBERGS1]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[AOD_NIELSEN_ICEBERGS1](
	[Source File] [varchar](255) NULL,
	[Source Tab] [varchar](255) NULL,
	[Extract Date] [varchar](255) NULL,
	[All Markets] [varchar](255) NULL,
	[All Products] [varchar](255) NULL,
	[All Periods] [varchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [varchar](255) NULL,
	[KEL_SUB-SEGMENT] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[AOD_NIELSEN_ICEBERGS2]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[AOD_NIELSEN_ICEBERGS2](
	[Source File] [varchar](255) NULL,
	[Source Tab] [varchar](255) NULL,
	[Extract Date] [varchar](255) NULL,
	[All Markets] [varchar](255) NULL,
	[All Products] [varchar](255) NULL,
	[All Periods] [varchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[AOD_NIELSEN_ICEBERGS3]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[AOD_NIELSEN_ICEBERGS3](
	[Source File] [varchar](255) NULL,
	[Source Tab] [varchar](255) NULL,
	[Extract Date] [varchar](255) NULL,
	[All Markets] [varchar](255) NULL,
	[All Products] [varchar](255) NULL,
	[All Periods] [varchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[AOD_NIELSEN_ICEBERGS4]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[AOD_NIELSEN_ICEBERGS4](
	[Source File] [varchar](255) NULL,
	[Source Tab] [varchar](255) NULL,
	[Extract Date] [varchar](255) NULL,
	[All Markets] [varchar](255) NULL,
	[All Products] [varchar](255) NULL,
	[All Periods] [varchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [varchar](255) NULL,
	[KEL_SEGMENT] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[AOD_SHARE_TO_MAPPING_ICEBERGS]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[AOD_SHARE_TO_MAPPING_ICEBERGS](
	[Source Tab] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[CAN_CATG_MAP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[CAN_CATG_MAP](
	[CATEGORY] [varchar](255) NULL,
	[Ca Category] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[CAN_CATG_MAP_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[CAN_CATG_MAP_OLD](
	[CATEGORY] [varchar](255) NULL,
	[Ca Category] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[GRNULR_GWTH]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[GRNULR_GWTH](
	[BRAND_ID] [varchar](255) NULL,
	[BRAND_NM] [varchar](255) NULL,
	[BRAND_PRTY_NUM] [varchar](255) NULL,
	[BRAND_PRTY] [varchar](255) NULL,
	[SUB_PRTY] [varchar](255) NULL,
	[CORE] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[GRNULR_GWTH_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[GRNULR_GWTH_OLD](
	[BRAND_ID] [varchar](255) NULL,
	[BRAND_NM] [varchar](255) NULL,
	[BRAND_PRTY_NUM] [varchar](255) NULL,
	[BRAND_PRTY] [varchar](255) NULL,
	[SUB_PRTY] [varchar](255) NULL,
	[CORE] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KPEL]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KPEL](
	[EVENT_NAME] [varchar](255) NULL,
	[EVENT_PRODUCT] [varchar](255) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](255) NULL,
	[START_DATE] [varchar](24) NULL,
	[END_DATE] [varchar](24) NULL,
	[NIELSEN_WEEK_ENDING] [varchar](24) NULL,
	[PLAN_TO_NAME] [varchar](255) NULL,
	[Plan_TO] [varchar](255) NULL,
	[T_ID] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[VENDOR] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[SUBBRAND] [varchar](255) NULL,
	[SEGMENT] [varchar](255) NULL,
	[YEAR] [varchar](255) NULL,
	[QTR] [varchar](255) NULL,
	[ADJ_PROMO_START] [varchar](24) NULL,
	[ADJ_PROMO_END] [varchar](24) NULL,
	[WEEK_IN_PROMO] [decimal](28, 6) NULL,
	[Price Tactic] [varchar](255) NULL,
	[Price Desc] [varchar](255) NULL,
	[Overlay Tactic] [varchar](255) NULL,
	[Overlay Desc] [varchar](255) NULL,
	[National Program] [varchar](255) NULL,
	[Customer Program] [varchar](255) NULL,
	[Rev Size] [varchar](255) NULL,
	[Demo Flag] [varchar](255) NULL,
	[ISB Flag] [varchar](255) NULL,
	[TOTAL_UNITS] [decimal](28, 6) NULL,
	[BASE_UNITS_WITH_EDLP] [decimal](28, 6) NULL,
	[INCR_UNITS_WITH_EDLP] [decimal](28, 6) NULL,
	[TOTAL_RETAIL_SALES_DOLLARS] [decimal](28, 6) NULL,
	[BASE_RETAIL_SALES_DOLLARS] [decimal](28, 6) NULL,
	[INCR_RETAIL_SALES_DOLLARS] [decimal](28, 6) NULL,
	[TOTAL_GSV] [decimal](28, 6) NULL,
	[BASE_GSV] [decimal](28, 6) NULL,
	[INCR_GSV] [decimal](28, 6) NULL,
	[TTL_INVESTMENT] [decimal](28, 6) NULL,
	[ANY_DISP] [decimal](28, 6) NULL,
	[INCR_GM] [decimal](28, 6) NULL,
	[TOTAL_RETAILER_MARGIN] [decimal](28, 6) NULL,
	[LIST_UNIT] [decimal](28, 6) NULL,
	[NUMBER_OF_SKUS] [decimal](28, 6) NULL,
	[PROMO_LENGTH] [decimal](28, 6) NULL,
	[KMF_COST] [decimal](28, 6) NULL,
	[TOTAL_COP] [decimal](28, 6) NULL,
	[Base_Profit] [decimal](28, 6) NULL,
	[Incr_Profit] [decimal](28, 6) NULL,
	[Total_Profit] [decimal](28, 6) NULL,
	[Base_Edlp_Spend] [decimal](28, 6) NULL,
	[Sku Weeks] [varchar](255) NULL,
	[Price Point] [varchar](255) NULL,
	[Event Avg Price] [varchar](255) NULL,
	[Shopper Marketing] [varchar](255) NULL,
	[Overlay Select] [varchar](255) NULL,
	[Price Strategy] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Register Flag] [varchar](100) NULL,
	[LBS] [decimal](15, 3) NULL,
	[BLBS] [decimal](15, 3) NULL,
	[INCR_LBS] [decimal](15, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KPEL_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KPEL_OLD](
	[EVENT_NAME] [varchar](255) NULL,
	[EVENT_PRODUCT] [varchar](255) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](255) NULL,
	[START_DATE] [varchar](24) NULL,
	[END_DATE] [varchar](24) NULL,
	[NIELSEN_WEEK_ENDING] [varchar](24) NULL,
	[PLAN_TO_NAME] [varchar](255) NULL,
	[Plan_TO] [varchar](255) NULL,
	[T_ID] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[VENDOR] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[SUBBRAND] [varchar](255) NULL,
	[SEGMENT] [varchar](255) NULL,
	[YEAR] [varchar](255) NULL,
	[QTR] [varchar](255) NULL,
	[ADJ_PROMO_START] [varchar](24) NULL,
	[ADJ_PROMO_END] [varchar](24) NULL,
	[WEEK_IN_PROMO] [decimal](28, 6) NULL,
	[Price Tactic] [varchar](255) NULL,
	[Price Desc] [varchar](255) NULL,
	[Overlay Tactic] [varchar](255) NULL,
	[Overlay Desc] [varchar](255) NULL,
	[National Program] [varchar](255) NULL,
	[Customer Program] [varchar](255) NULL,
	[Rev Size] [varchar](255) NULL,
	[Demo Flag] [varchar](255) NULL,
	[ISB Flag] [varchar](255) NULL,
	[TOTAL_UNITS] [decimal](28, 6) NULL,
	[BASE_UNITS_WITH_EDLP] [decimal](28, 6) NULL,
	[INCR_UNITS_WITH_EDLP] [decimal](28, 6) NULL,
	[TOTAL_RETAIL_SALES_DOLLARS] [decimal](28, 6) NULL,
	[BASE_RETAIL_SALES_DOLLARS] [decimal](28, 6) NULL,
	[INCR_RETAIL_SALES_DOLLARS] [decimal](28, 6) NULL,
	[TOTAL_GSV] [decimal](28, 6) NULL,
	[BASE_GSV] [decimal](28, 6) NULL,
	[INCR_GSV] [decimal](28, 6) NULL,
	[TTL_INVESTMENT] [decimal](28, 6) NULL,
	[ANY_DISP] [decimal](28, 6) NULL,
	[INCR_GM] [decimal](28, 6) NULL,
	[TOTAL_RETAILER_MARGIN] [decimal](28, 6) NULL,
	[LIST_UNIT] [decimal](28, 6) NULL,
	[NUMBER_OF_SKUS] [decimal](28, 6) NULL,
	[PROMO_LENGTH] [decimal](28, 6) NULL,
	[KMF_COST] [decimal](28, 6) NULL,
	[TOTAL_COP] [decimal](28, 6) NULL,
	[Base_Profit] [decimal](28, 6) NULL,
	[Incr_Profit] [decimal](28, 6) NULL,
	[Total_Profit] [decimal](28, 6) NULL,
	[Base_Edlp_Spend] [decimal](28, 6) NULL,
	[Sku Weeks] [varchar](255) NULL,
	[Price Point] [varchar](255) NULL,
	[Event Avg Price] [varchar](255) NULL,
	[Shopper Marketing] [varchar](255) NULL,
	[Overlay Select] [varchar](255) NULL,
	[Price Strategy] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Register Flag] [varchar](100) NULL,
	[LBS] [decimal](15, 3) NULL,
	[BLBS] [decimal](15, 3) NULL,
	[INCR_LBS] [decimal](15, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_DETAIL_INDIRECTS_LOADER]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_DETAIL_INDIRECTS_LOADER](
	[Period_Year] [varchar](255) NULL,
	[PT] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[CURR PD IND$] [decimal](38, 5) NULL,
	[PTD IND$] [decimal](38, 5) NULL,
	[PTD Pace] [decimal](38, 5) NULL,
	[QTD Pace] [decimal](38, 5) NULL,
	[YTD Pace] [decimal](38, 5) NULL,
	[Last Refresh Date] [varchar](30) NULL,
	[Track Day] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_DETAIL_INDIRECTS_LOADER_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_DETAIL_INDIRECTS_LOADER_OLD](
	[Period_Year] [varchar](255) NULL,
	[PT] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[CURR PD IND$] [decimal](38, 5) NULL,
	[PTD IND$] [decimal](38, 5) NULL,
	[PTD Pace] [decimal](38, 5) NULL,
	[QTD Pace] [decimal](38, 5) NULL,
	[YTD Pace] [decimal](38, 5) NULL,
	[Last Refresh Date] [varchar](30) NULL,
	[Track Day] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_DETAIL]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_DETAIL](
	[Plan To] [varchar](255) NULL,
	[Business Unit] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[Open Order $] [decimal](38, 5) NULL,
	[P Gross Sales $] [decimal](38, 5) NULL,
	[Q Gross Sales $] [decimal](38, 5) NULL,
	[Y Gross Sales $] [decimal](38, 5) NULL,
	[P YAG Gross Sales $] [decimal](38, 5) NULL,
	[Q YAG Gross Sales $] [decimal](38, 5) NULL,
	[Y YAG Gross Sales $] [decimal](38, 5) NULL,
	[Next Period Open Order $] [decimal](38, 5) NULL,
	[P IBP PER] [decimal](38, 5) NULL,
	[Q IBP PER] [decimal](38, 5) NULL,
	[Y IBP PER] [decimal](38, 5) NULL,
	[P BUDGET PER] [decimal](38, 5) NULL,
	[Q BUDGET PER] [decimal](38, 5) NULL,
	[Y BUDGET PER] [decimal](38, 5) NULL,
	[P SE PER] [decimal](38, 5) NULL,
	[Q SE PER] [decimal](38, 5) NULL,
	[Y SE PER] [decimal](38, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_FEEDMASTER]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_FEEDMASTER](
	[Sales MGT] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Business Unit] [varchar](255) NULL,
	[TRACK_DAY] [date] NULL,
	[Open Order $] [float] NULL,
	[P Gross Sales $] [float] NULL,
	[Q Gross Sales $] [float] NULL,
	[Y Gross Sales $] [float] NULL,
	[P IBP PER] [float] NULL,
	[Q IBP PER] [float] NULL,
	[Y IBP PER] [float] NULL,
	[P BUDGET PER] [float] NULL,
	[Q BUDGET PER] [float] NULL,
	[Y BUDGET PER] [float] NULL,
	[P SE PER] [float] NULL,
	[Q SE PER] [float] NULL,
	[Y SE PER] [float] NULL,
	[P YAG Gross Sales $] [float] NULL,
	[Q YAG Gross Sales $] [float] NULL,
	[Y YAG Gross Sales $] [float] NULL,
	[Next Period Open Order $] [float] NULL,
	[P CASE ORD] [float] NULL,
	[Q CASE ORD] [float] NULL,
	[Y CASE ORD] [float] NULL,
	[P CASE SHIP] [float] NULL,
	[Q CASE SHIP] [float] NULL,
	[Y CASE SHIP] [float] NULL,
	[Q BUDGET < PER] [float] NULL,
	[Y BUDGET < PER] [float] NULL,
	[Q SE < PER] [float] NULL,
	[Y SE < PER] [float] NULL,
	[Q YAG < PER] [float] NULL,
	[Y YAG < PER] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_FEEDMASTER_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_FEEDMASTER_OLD](
	[Sales MGT] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Business Unit] [varchar](255) NULL,
	[TRACK_DAY] [date] NULL,
	[Open Order $] [float] NULL,
	[P Gross Sales $] [float] NULL,
	[Q Gross Sales $] [float] NULL,
	[Y Gross Sales $] [float] NULL,
	[P IBP PER] [float] NULL,
	[Q IBP PER] [float] NULL,
	[Y IBP PER] [float] NULL,
	[P BUDGET PER] [float] NULL,
	[Q BUDGET PER] [float] NULL,
	[Y BUDGET PER] [float] NULL,
	[P SE PER] [float] NULL,
	[Q SE PER] [float] NULL,
	[Y SE PER] [float] NULL,
	[P YAG Gross Sales $] [float] NULL,
	[Q YAG Gross Sales $] [float] NULL,
	[Y YAG Gross Sales $] [float] NULL,
	[Next Period Open Order $] [float] NULL,
	[P CASE ORD] [float] NULL,
	[Q CASE ORD] [float] NULL,
	[Y CASE ORD] [float] NULL,
	[P CASE SHIP] [float] NULL,
	[Q CASE SHIP] [float] NULL,
	[Y CASE SHIP] [float] NULL,
	[Q BUDGET < PER] [float] NULL,
	[Y BUDGET < PER] [float] NULL,
	[Q SE < PER] [float] NULL,
	[Y SE < PER] [float] NULL,
	[Q YAG < PER] [float] NULL,
	[Y YAG < PER] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_GSV_LOADER]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_GSV_LOADER](
	[PT] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Brand#] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[Open Order $] [decimal](38, 5) NULL,
	[PTD GSV$] [decimal](38, 5) NULL,
	[QTD GSV$] [decimal](38, 5) NULL,
	[YTD GSV$] [decimal](38, 5) NULL,
	[PTD YAG GSV$] [decimal](38, 5) NULL,
	[QTD YAG GSV$] [decimal](38, 5) NULL,
	[YTD YAG GSV$] [decimal](38, 5) NULL,
	[Next Period OO] [varchar](255) NULL,
	[Last Refresh Date] [varchar](255) NULL,
	[Track Day] [varchar](255) NULL,
	[Period] [varchar](255) NULL,
	[Year] [varchar](255) NULL,
	[Today GSV$] [decimal](38, 5) NULL,
	[Today OO$] [decimal](38, 5) NULL,
	[PTD Combo Key] [varchar](255) NULL,
	[YEST Combo Key] [varchar](255) NULL,
	[YEST OO$] [decimal](38, 5) NULL,
	[YEST GSV$] [decimal](38, 5) NULL,
	[YEST PT] [varchar](255) NULL,
	[YEST PT Name] [varchar](255) NULL,
	[YEST BU] [varchar](255) NULL,
	[YEST Brand#] [varchar](255) NULL,
	[YEST Brand] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_GSV_LOADER_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_GSV_LOADER_OLD](
	[PT] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Brand#] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[Open Order $] [decimal](38, 5) NULL,
	[PTD GSV$] [decimal](38, 5) NULL,
	[QTD GSV$] [decimal](38, 5) NULL,
	[YTD GSV$] [decimal](38, 5) NULL,
	[PTD YAG GSV$] [decimal](38, 5) NULL,
	[QTD YAG GSV$] [decimal](38, 5) NULL,
	[YTD YAG GSV$] [decimal](38, 5) NULL,
	[Next Period OO] [varchar](255) NULL,
	[Last Refresh Date] [varchar](255) NULL,
	[Track Day] [varchar](255) NULL,
	[Period] [varchar](255) NULL,
	[Year] [varchar](255) NULL,
	[Today GSV$] [decimal](38, 5) NULL,
	[Today OO$] [decimal](38, 5) NULL,
	[PTD Combo Key] [varchar](255) NULL,
	[YEST Combo Key] [varchar](255) NULL,
	[YEST OO$] [decimal](38, 5) NULL,
	[YEST GSV$] [decimal](38, 5) NULL,
	[YEST PT] [varchar](255) NULL,
	[YEST PT Name] [varchar](255) NULL,
	[YEST BU] [varchar](255) NULL,
	[YEST Brand#] [varchar](255) NULL,
	[YEST Brand] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_INDIRECT_LOADER]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_INDIRECT_LOADER](
	[Period_Year] [varchar](255) NULL,
	[PT] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[CURR PD IND$] [decimal](38, 5) NULL,
	[PTD IND$] [decimal](38, 5) NULL,
	[PTD Pace] [decimal](38, 5) NULL,
	[QTD Pace] [decimal](38, 5) NULL,
	[YTD Pace] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_INDIRECT_LOADER_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_INDIRECT_LOADER_OLD](
	[Period_Year] [varchar](255) NULL,
	[PT] [varchar](255) NULL,
	[PT Name] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[CURR PD IND$] [decimal](38, 5) NULL,
	[PTD IND$] [decimal](38, 5) NULL,
	[PTD Pace] [decimal](38, 5) NULL,
	[QTD Pace] [decimal](38, 5) NULL,
	[YTD Pace] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_KPI_LOADER]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_KPI_LOADER](
	[Plan To] [varchar](255) NULL,
	[Plan To Name] [varchar](255) NULL,
	[Business Unit] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[P IBP PER] [decimal](38, 5) NULL,
	[Q IBP PER] [decimal](38, 5) NULL,
	[Y IBP PER] [decimal](38, 5) NULL,
	[P BUDGET PER] [decimal](38, 5) NULL,
	[Q BUDGET PER] [decimal](38, 5) NULL,
	[Y BUDGET PER] [decimal](38, 5) NULL,
	[P SE PER] [decimal](38, 5) NULL,
	[Q SE PER] [decimal](38, 5) NULL,
	[Y SE PER] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[KUSA_TRACK_KPI_LOADER_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[KUSA_TRACK_KPI_LOADER_OLD](
	[Plan To] [varchar](255) NULL,
	[Plan To Name] [varchar](255) NULL,
	[Business Unit] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[P IBP PER] [decimal](38, 5) NULL,
	[Q IBP PER] [decimal](38, 5) NULL,
	[Y IBP PER] [decimal](38, 5) NULL,
	[P BUDGET PER] [decimal](38, 5) NULL,
	[Q BUDGET PER] [decimal](38, 5) NULL,
	[Y BUDGET PER] [decimal](38, 5) NULL,
	[P SE PER] [decimal](38, 5) NULL,
	[Q SE PER] [decimal](38, 5) NULL,
	[Y SE PER] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_AMPS_MKT_ATTRIB]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_AMPS_MKT_ATTRIB](
	[All Markets] [varchar](50) NULL,
	[MKT Mask] [varchar](50) NULL,
	[Mkt Sort Order] [varchar](50) NULL,
	[Mkt Grouping Level] [varchar](50) NULL,
	[All Regions] [varchar](50) NULL,
	[EXECUTIVE] [varchar](50) NULL,
	[EAST] [varchar](50) NULL,
	[WEST] [varchar](50) NULL,
	[CHANNELS] [varchar](50) NULL,
	[TOTALS] [varchar](50) NULL,
	[CUSTOMER] [varchar](50) NULL,
	[CUSTOMER_SORT_ORDER] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_AMPS_MKT_ATTRIB_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_AMPS_MKT_ATTRIB_OLD](
	[All Markets] [varchar](50) NULL,
	[MKT Mask] [varchar](50) NULL,
	[Mkt Sort Order] [varchar](50) NULL,
	[Mkt Grouping Level] [varchar](50) NULL,
	[All Regions] [varchar](50) NULL,
	[EXECUTIVE] [varchar](50) NULL,
	[EAST] [varchar](50) NULL,
	[WEST] [varchar](50) NULL,
	[CHANNELS] [varchar](50) NULL,
	[TOTALS] [varchar](50) NULL,
	[CUSTOMER] [varchar](50) NULL,
	[CUSTOMER_SORT_ORDER] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_AMPS_US_SRC]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_AMPS_US_SRC](
	[Source File] [varchar](255) NULL,
	[Source Tab] [varchar](255) NULL,
	[Extract Date] [varchar](255) NULL,
	[All Markets] [varchar](255) NULL,
	[All Products] [varchar](510) NULL,
	[All Periods] [varchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ% Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr- Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA-Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units ANy Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV /Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL,
	[Avg # of Items Reach] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_AMPS_US_SRC_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_AMPS_US_SRC_OLD](
	[Source File] [varchar](255) NULL,
	[Source Tab] [varchar](255) NULL,
	[Extract Date] [varchar](255) NULL,
	[All Markets] [varchar](255) NULL,
	[All Products] [varchar](510) NULL,
	[All Periods] [varchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ% Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr- Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA-Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units ANy Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV /Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL,
	[Avg # of Items Reach] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_PRODUCT_SHARE_MAP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_PRODUCT_SHARE_MAP](
	[Source Tab] [varchar](255) NULL,
	[Share To] [varchar](255) NULL,
	[Database Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_PRODUCT_SHARE_MAP_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_PRODUCT_SHARE_MAP_OLD](
	[Source Tab] [varchar](255) NULL,
	[Share To] [varchar](255) NULL,
	[Database Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_PRODUCT_XREF]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_PRODUCT_XREF](
	[All Products] [varchar](255) NULL,
	[COMBO] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[MASK] [varchar](255) NULL,
	[Nielsen Name] [varchar](255) NULL,
	[ORDER] [varchar](255) NULL,
	[LEVEL] [varchar](255) NULL,
	[AGG] [varchar](255) NULL,
	[Level Name] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[CORP] [varchar](255) NULL,
	[SEGMENT] [varchar](255) NULL,
	[Sub Segment] [varchar](255) NULL,
	[BW Category] [varchar](255) NULL,
	[BW BU] [varchar](255) NULL,
	[BW Number] [varchar](255) NULL,
	[BW Name] [varchar](255) NULL,
	[Profit Center] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIEL_PRODUCT_XREF_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIEL_PRODUCT_XREF_OLD](
	[All Products] [varchar](255) NULL,
	[COMBO] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[MASK] [varchar](255) NULL,
	[Nielsen Name] [varchar](255) NULL,
	[ORDER] [varchar](255) NULL,
	[LEVEL] [varchar](255) NULL,
	[AGG] [varchar](255) NULL,
	[Level Name] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[CORP] [varchar](255) NULL,
	[SEGMENT] [varchar](255) NULL,
	[Sub Segment] [varchar](255) NULL,
	[BW Category] [varchar](255) NULL,
	[BW BU] [varchar](255) NULL,
	[BW Number] [varchar](255) NULL,
	[BW Name] [varchar](255) NULL,
	[Profit Center] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIELSEN_INNOV]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIELSEN_INNOV](
	[Combo] [varchar](68) NULL,
	[All Markets] [varchar](30) NULL,
	[DOLLAR] [decimal](18, 2) NULL,
	[Units] [decimal](18, 2) NULL,
	[DOLLAR /  DOLLAR MM ACV] [decimal](18, 2) NULL,
	[PCT ACV] [decimal](18, 2) NULL,
	[PCT ACV Reach] [decimal](18, 2) NULL,
	[DOLLAR Shr - Prompt] [decimal](18, 2) NULL,
	[No Promo Unit Price] [decimal](18, 2) NULL,
	[Any Promo Unit Price] [decimal](18, 2) NULL,
	[PCT Dollar Any Promo] [decimal](18, 2) NULL,
	[UPC] [varchar](32) NULL,
	[Mask] [varchar](36) NULL,
	[Corporate] [varchar](7) NULL,
	[Innovation Half] [varchar](6) NULL,
	[BU] [varchar](13) NULL,
	[KLG Category] [varchar](11) NULL,
	[PT] [varchar](6) NULL,
	[PlanTo] [varchar](22) NULL,
	[All Periods] [varchar](28) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIELSEN_INNOV_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIELSEN_INNOV_OLD](
	[Combo] [varchar](68) NULL,
	[All Markets] [varchar](30) NULL,
	[DOLLAR] [decimal](18, 2) NULL,
	[Units] [decimal](18, 2) NULL,
	[DOLLAR /  DOLLAR MM ACV] [decimal](18, 2) NULL,
	[PCT ACV] [decimal](18, 2) NULL,
	[PCT ACV Reach] [decimal](18, 2) NULL,
	[DOLLAR Shr - Prompt] [decimal](18, 2) NULL,
	[No Promo Unit Price] [decimal](18, 2) NULL,
	[Any Promo Unit Price] [decimal](18, 2) NULL,
	[PCT Dollar Any Promo] [decimal](18, 2) NULL,
	[UPC] [varchar](32) NULL,
	[Mask] [varchar](36) NULL,
	[Corporate] [varchar](7) NULL,
	[Innovation Half] [varchar](6) NULL,
	[BU] [varchar](13) NULL,
	[KLG Category] [varchar](11) NULL,
	[PT] [varchar](6) NULL,
	[PlanTo] [varchar](22) NULL,
	[All Periods] [varchar](28) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIELSEN_SCIM_CORP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIELSEN_SCIM_CORP](
	[SRC_FILE] [varchar](255) NULL,
	[SRC_TAB] [varchar](255) NULL,
	[EXTRCT_DT] [varchar](255) NULL,
	[ALL_MKTS] [varchar](255) NULL,
	[ALL_PRODS] [varchar](255) NULL,
	[ALL_PDS] [varchar](255) NULL,
	[RET_$] [decimal](15, 3) NULL,
	[RET_BASE_$] [decimal](15, 3) NULL,
	[RET_INCR_$] [decimal](15, 3) NULL,
	[RET_LB] [decimal](15, 3) NULL,
	[RET_BASE_LB] [decimal](15, 3) NULL,
	[RET_INCR_LB] [decimal](15, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[NIELSEN_SCIM_CORP_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[NIELSEN_SCIM_CORP_OLD](
	[SRC_FILE] [varchar](255) NULL,
	[SRC_TAB] [varchar](255) NULL,
	[EXTRCT_DT] [varchar](255) NULL,
	[ALL_MKTS] [varchar](255) NULL,
	[ALL_PRODS] [varchar](255) NULL,
	[ALL_PDS] [varchar](255) NULL,
	[RET_$] [decimal](15, 3) NULL,
	[RET_BASE_$] [decimal](15, 3) NULL,
	[RET_INCR_$] [decimal](15, 3) NULL,
	[RET_LB] [decimal](15, 3) NULL,
	[RET_BASE_LB] [decimal](15, 3) NULL,
	[RET_INCR_LB] [decimal](15, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[PLANTO_MAP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[PLANTO_MAP](
	[PT_N_TEXT] [varchar](255) NULL,
	[PLANTO] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[Cons_Class] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[Nielsen_Mkt] [varchar](255) NULL,
	[Pricing_Strategy] [varchar](255) NULL,
	[CHANNEL] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[Niel_ACV] [decimal](17, 3) NULL,
	[Level_A_Morning_Foods] [varchar](255) NULL,
	[Level_B_Morning_Foods] [varchar](255) NULL,
	[Level_C_Morning_Foods] [varchar](255) NULL,
	[Level_D_Morning_Foods] [varchar](255) NULL,
	[Level_E_Morning_Foods] [varchar](255) NULL,
	[ALL_IN_Flag_Morning_Foods] [varchar](255) NULL,
	[Level_A_Frozen] [varchar](255) NULL,
	[Level_B_Frozen] [varchar](255) NULL,
	[Level_C_Frozen] [varchar](255) NULL,
	[Level_D_Frozen] [varchar](255) NULL,
	[Level_E_Frozen] [varchar](255) NULL,
	[ALL_IN_Flag_Frozen] [varchar](255) NULL,
	[Level_A_Kashi] [varchar](255) NULL,
	[Level_B_Kashi] [varchar](255) NULL,
	[Level_C_Kashi] [varchar](255) NULL,
	[Level_D_Kashi] [varchar](255) NULL,
	[Level_E_Kashi] [varchar](255) NULL,
	[ALL_IN_Flag_Kashi] [varchar](255) NULL,
	[Level_A_Snacks] [varchar](255) NULL,
	[Level_B_Snacks] [varchar](255) NULL,
	[Level_C_Snacks] [varchar](255) NULL,
	[Level_D_Snacks] [varchar](255) NULL,
	[Level_E_Snacks] [varchar](255) NULL,
	[ALL_IN_Flag_Snacks] [varchar](255) NULL,
	[Level_A_Specialty] [varchar](255) NULL,
	[Level_B_Specialty] [varchar](255) NULL,
	[Level_C_Specialty] [varchar](255) NULL,
	[Level_D_Specialty] [varchar](255) NULL,
	[Level_E_Specialty] [varchar](255) NULL,
	[ALL_IN_Flag_Specialty] [varchar](1) NULL,
	[ACTIVE_STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[PLANTO_MAP_N]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[PLANTO_MAP_N](
	[PT_N_TEXT] [varchar](255) NULL,
	[PLANTO] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL,
	[CONS_CLASS] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[NIELSEN_MKT] [varchar](255) NULL,
	[PRICING_STRATEGY] [varchar](255) NULL,
	[CHANNEL] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[NIEL_ACV] [decimal](17, 3) NULL,
	[ACTIVE_STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[PLANTO_MAP_N_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[PLANTO_MAP_N_OLD](
	[PT_N_TEXT] [varchar](255) NULL,
	[PLANTO] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL,
	[CONS_CLASS] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[NIELSEN_MKT] [varchar](255) NULL,
	[PRICING_STRATEGY] [varchar](255) NULL,
	[CHANNEL] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[NIEL_ACV] [decimal](17, 3) NULL,
	[ACTIVE_STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[PLANTO_MAP_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[PLANTO_MAP_OLD](
	[PT_N_TEXT] [varchar](255) NULL,
	[PLANTO] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[Cons_Class] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[Nielsen_Mkt] [varchar](255) NULL,
	[Pricing_Strategy] [varchar](255) NULL,
	[CHANNEL] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[Niel_ACV] [decimal](17, 3) NULL,
	[Level_A_Morning_Foods] [varchar](255) NULL,
	[Level_B_Morning_Foods] [varchar](255) NULL,
	[Level_C_Morning_Foods] [varchar](255) NULL,
	[Level_D_Morning_Foods] [varchar](255) NULL,
	[Level_E_Morning_Foods] [varchar](255) NULL,
	[ALL_IN_Flag_Morning_Foods] [varchar](255) NULL,
	[Level_A_Frozen] [varchar](255) NULL,
	[Level_B_Frozen] [varchar](255) NULL,
	[Level_C_Frozen] [varchar](255) NULL,
	[Level_D_Frozen] [varchar](255) NULL,
	[Level_E_Frozen] [varchar](255) NULL,
	[ALL_IN_Flag_Frozen] [varchar](255) NULL,
	[Level_A_Kashi] [varchar](255) NULL,
	[Level_B_Kashi] [varchar](255) NULL,
	[Level_C_Kashi] [varchar](255) NULL,
	[Level_D_Kashi] [varchar](255) NULL,
	[Level_E_Kashi] [varchar](255) NULL,
	[ALL_IN_Flag_Kashi] [varchar](255) NULL,
	[Level_A_Snacks] [varchar](255) NULL,
	[Level_B_Snacks] [varchar](255) NULL,
	[Level_C_Snacks] [varchar](255) NULL,
	[Level_D_Snacks] [varchar](255) NULL,
	[Level_E_Snacks] [varchar](255) NULL,
	[ALL_IN_Flag_Snacks] [varchar](255) NULL,
	[Level_A_Specialty] [varchar](255) NULL,
	[Level_B_Specialty] [varchar](255) NULL,
	[Level_C_Specialty] [varchar](255) NULL,
	[Level_D_Specialty] [varchar](255) NULL,
	[Level_E_Specialty] [varchar](255) NULL,
	[ALL_IN_Flag_Specialty] [varchar](1) NULL,
	[ACTIVE_STATUS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[REX_GSV_BUDGET]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[REX_GSV_BUDGET](
	[PLAN_TO_NBR] [varchar](10) NULL,
	[PLAN_TO_DESC] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[BUDGET_GSV] [numeric](18, 2) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[REX_GSV_BUDGET_09202018]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[REX_GSV_BUDGET_09202018](
	[PLAN_TO_NBR] [varchar](10) NULL,
	[PLAN_TO_DESC] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[BUDGET_GSV] [numeric](18, 2) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[REX_NSD_SCORCARD_METRICS]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_SALES].[REX_NSD_SCORCARD_METRICS](
	[Category] [nvarchar](255) NULL,
	[KSR] [float] NULL,
	[KSM] [float] NULL,
	[RSD] [float] NULL,
	[Measurement] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USER_SALES].[REX_POS_BUDGET]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[REX_POS_BUDGET](
	[PLAN_TO_NBR] [varchar](20) NULL,
	[PLAN_TO] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[YAGO] [varchar](50) NULL,
	[GO_PCT] [varchar](50) NULL,
	[Q_TOTAL] [float] NULL,
	[GO] [varchar](50) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[REX_POS_BUDGET_09202018]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[REX_POS_BUDGET_09202018](
	[PLAN_TO_NBR] [varchar](20) NULL,
	[PLAN_TO] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[YAGO] [varchar](50) NULL,
	[GO_PCT] [varchar](50) NULL,
	[Q_TOTAL] [float] NULL,
	[GO] [varchar](50) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SALES_OUTLOOK_FEED]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SALES_OUTLOOK_FEED](
	[YEAR] [int] NULL,
	[PLAN_TO] [varchar](100) NULL,
	[PT_NAME] [varchar](100) NULL,
	[BUSINESS_UNIT] [varchar](100) NULL,
	[CATEGORY] [varchar](100) NULL,
	[POSTING_PERIOD] [int] NULL,
	[CRM LE ORIG Gross Sales (monthly)] [float] NULL,
	[CRM Base KMF (OI+BB)] [float] NULL,
	[IBP GSV] [float] NULL,
	[IBP KMF] [float] NULL,
	[BUD GSV] [float] NULL,
	[BUD KMF] [float] NULL,
	[YAG GSV] [float] NULL,
	[YAG KMF] [float] NULL,
	[LP IBP GSV] [float] NULL,
	[LP IBP KMF] [float] NULL,
	[SE GSV] [float] NULL,
	[SE KMF] [float] NULL,
	[BUD KMF ADJ] [float] NULL,
	[SE KMF ADJ] [float] NULL,
	[CRM LE COP] [float] NULL,
	[YAG CRM LE COP] [float] NULL,
	[SE2 GSV] [float] NULL,
	[SE2 KMF] [float] NULL,
	[SE2 KMF ADJ] [float] NULL,
	[SE3 GSV] [float] NULL,
	[SE3 KMF] [float] NULL,
	[SE3 KMF ADJ] [float] NULL,
	[CASES ORDERED] [float] NULL,
	[CASES SHIPPED] [float] NULL,
	[CRM LE LBS] [float] NULL,
	[CON GSV] [float] NULL,
	[CON LBS] [float] NULL,
	[DIR GSV] [float] NULL,
	[YAG CRM LE LBS] [float] NULL,
	[COP SE] [float] NULL,
	[COP BUDGET] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SHAPE]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SHAPE](
	[SHAPE_PD] [varchar](100) NULL,
	[CATEGORY] [varchar](100) NULL,
	[BUSINESS_UNIT] [varchar](100) NULL,
	[TRACK_DAY] [varchar](100) NULL,
	[DC_DAY] [varchar](100) NULL,
	[WEEK] [varchar](100) NULL,
	[LEVEL_B] [varchar](100) NULL,
	[CUR_SHAPE_DOL] [decimal](15, 5) NULL,
	[CUR_SHAPE_PCT] [decimal](15, 5) NULL,
	[CATG_SHAPE_PCT] [decimal](15, 5) NULL,
	[RUN_TRACK] [varchar](1) NULL,
	[Days in Period] [int] NULL,
	[Pace Day] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_AE_PT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_AE_PT](
	[KEY] [varchar](200) NULL,
	[PT_NBR] [varchar](50) NULL,
	[PT Name] [varchar](50) NULL,
	[BU] [varchar](50) NULL,
	[CAT] [varchar](50) NULL,
	[Package Description] [varchar](200) NULL,
	[Employee Name] [varchar](50) NULL,
	[Plan to Store Count] [varchar](50) NULL,
	[% of stores accepting (enter whole #)] [varchar](50) NULL,
	[Week innovation will be presented] [varchar](50) NULL,
	[Reset Start Date] [varchar](50) NULL,
	[Reset Duration (in weeks)] [varchar](50) NULL,
	[Acceptance Status] [varchar](50) NULL,
	[On Shelf Date] [varchar](50) NULL,
	[Item set up in DPS (Acosta)?] [varchar](50) NULL,
	[Item set up with Materfiles (DSD)] [varchar](50) NULL,
	[Item set up with backdoor receiving (DSD)] [varchar](50) NULL,
	[Auto ship date (DSD)] [varchar](50) NULL,
	[COMMENTS] [varchar](200) NULL,
	[Blank 1] [varchar](50) NULL,
	[Blank 2] [varchar](50) NULL,
	[Blank 3] [varchar](50) NULL,
	[Blank 4] [varchar](50) NULL,
	[Blank 5] [varchar](50) NULL,
	[Blank 6] [varchar](50) NULL,
	[Blank 7] [varchar](50) NULL,
	[Extract Date] [varchar](50) NULL,
	[Source File] [varchar](50) NULL,
	[Last Save Date] [varchar](50) NULL,
	[Store Count Accepted] [varchar](50) NULL,
	[Store Count Pending Likely] [varchar](50) NULL,
	[Store Count Pending Unlikely] [varchar](50) NULL,
	[Store Count Rejected] [varchar](50) NULL,
	[Level A] [varchar](50) NULL,
	[Level B] [varchar](50) NULL,
	[Level C] [varchar](50) NULL,
	[Level D] [varchar](50) NULL,
	[Level E] [varchar](50) NULL,
	[AKV] [varchar](50) NULL,
	[Acceptance Value] [varchar](50) NULL,
	[Kashi Flag] [varchar](50) NULL,
	[BU2] [varchar](50) NULL,
	[UPC] [varchar](50) NULL,
	[CATEGORY2] [varchar](50) NULL,
	[MATERIAL_NBR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_AE_SURVEY]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_AE_SURVEY](
	[SOLD_TO_NBR] [int] NULL,
	[MATERIAL_DESC] [varchar](66) NULL,
	[MATRL_NBR] [bigint] NULL,
	[STATUS] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_GSV_BUDGET]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_GSV_BUDGET](
	[PLAN_TO_NBR] [varchar](10) NULL,
	[PLAN_TO_DESC] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[BUDGET_GSV] [numeric](18, 2) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_GSV_BUDGET_BAK_1103]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_GSV_BUDGET_BAK_1103](
	[PLAN_TO_NBR] [varchar](10) NULL,
	[PLAN_TO_DESC] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[BUDGET_GSV] [numeric](18, 2) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_HEB_SURVEY]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_SALES].[SNACKS_HEB_SURVEY](
	[Geography] [nvarchar](255) NULL,
	[Product] [nvarchar](255) NULL,
	[Time] [nvarchar](255) NULL,
	[%ACV (non-projected)] [float] NULL,
	[Avg Wkly %ACV (non-projected)] [float] NULL,
	[Retailer Store Number] [nvarchar](255) NULL,
	[UPC 12 digit] [nvarchar](255) NULL,
	[Dollar Sales (non-projected)] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USER_SALES].[SNACKS_NSD_SCORCARD_METRICS]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_SALES].[SNACKS_NSD_SCORCARD_METRICS](
	[Category] [nvarchar](255) NULL,
	[KSR] [float] NULL,
	[KSM] [float] NULL,
	[RSD] [float] NULL,
	[Measurement] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USER_SALES].[SNACKS_POS_BUDGET]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_POS_BUDGET](
	[PLAN_TO_NBR] [varchar](20) NULL,
	[PLAN_TO] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[YAGO] [varchar](50) NULL,
	[GO_PCT] [varchar](50) NULL,
	[Q_TOTAL] [float] NULL,
	[GO] [varchar](50) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_POS_BUDGET_BAK_1204]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_POS_BUDGET_BAK_1204](
	[PLAN_TO_NBR] [varchar](20) NULL,
	[PLAN_TO] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[YAGO] [varchar](50) NULL,
	[GO_PCT] [varchar](50) NULL,
	[Q_TOTAL] [float] NULL,
	[GO] [varchar](50) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[TENTPOLE_MAPPING]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[TENTPOLE_MAPPING](
	[TENT_POLE_BW_DESC] [varchar](255) NULL,
	[TENT_POLE_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[TENTPOLE_MAPPING_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[TENTPOLE_MAPPING_OLD](
	[TENT_POLE_BW_DESC] [varchar](255) NULL,
	[TENT_POLE_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[TYPE_TOSIZE]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[TYPE_TOSIZE](
	[TYPE_NAME] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[COUNT] [varchar](255) NULL,
	[TYPE_ID] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[TYPE_TOSIZE_OLD]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[TYPE_TOSIZE_OLD](
	[TYPE_NAME] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[COUNT] [varchar](255) NULL,
	[TYPE_ID] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[CPU_RSN_CODE]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[CPU_RSN_CODE](
	[MODE_EXE_ID] [float] NULL,
	[PRI_REF] [decimal](15, 0) NULL,
	[BUS_UNIT] [varchar](100) NULL,
	[ORD_TYPE] [varchar](50) NULL,
	[MODE_TYPE] [varchar](50) NULL,
	[LANE] [varchar](150) NULL,
	[ORGN_LOC_ID] [float] NULL,
	[ORGN_NAME] [varchar](50) NULL,
	[ORGN_CITY] [varchar](50) NULL,
	[ORGN_STATE] [varchar](50) NULL,
	[ORGN_ZIP] [varchar](10) NULL,
	[REC_LOC_ID] [float] NULL,
	[REC_NAME] [varchar](150) NULL,
	[REC_CITY] [varchar](30) NULL,
	[REC_STATE] [varchar](30) NULL,
	[REC_ZIP] [varchar](10) NULL,
	[CAR_TMS_SCAC] [varchar](20) NULL,
	[CPU_CAR_SCH_SCAC] [varchar](20) NULL,
	[ME_CRE_DT] [datetime2](7) NULL,
	[REQ_EAR_DEL_DT] [datetime2](7) NULL,
	[REQ_LAT_DEL_DT] [datetime2](7) NULL,
	[MST_ARR_DT] [datetime2](7) NULL,
	[FST_CONF_APPT_PICK_DT] [datetime2](7) NULL,
	[KELL_PGI_DT] [datetime2](7) NULL,
	[MEAS_CPU_OT_CNT] [float] NULL,
	[CPU_ON_TIME_PU_CNT] [float] NULL,
	[WEEK] [float] NULL,
	[PERIOD] [float] NULL,
	[CUSTOMER] [varchar](100) NULL,
	[CUST_CLASS] [varchar](50) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](20) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](20) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](20) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[DELVRY_ACCSL_2015]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[DELVRY_ACCSL_2015](
	[DELVRY_NBR] [varchar](50) NULL,
	[UNLD_AMT] [decimal](8, 2) NULL,
	[UNLD_CURR] [varchar](3) NULL,
	[DETN_AMT] [decimal](8, 2) NULL,
	[DETN_CURR] [varchar](3) NULL,
	[OTHR_AMT] [decimal](8, 2) NULL,
	[OTHR_CURR] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[DELVRY_RSN_CODE]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[DELVRY_RSN_CODE](
	[BUSINESS_UNIT] [varchar](255) NULL,
	[ME_CREATED_DATE] [datetime2](7) NULL,
	[ORDER_TYPE] [varchar](255) NULL,
	[CUSTOMER] [varchar](255) NULL,
	[MODE_TYPE] [varchar](255) NULL,
	[LANE] [varchar](255) NULL,
	[ORG_LOC_ID] [float] NULL,
	[ORG_NAME] [varchar](255) NULL,
	[ORG_CITY] [varchar](255) NULL,
	[ORG_STATE] [varchar](255) NULL,
	[ORG_ZIP] [varchar](255) NULL,
	[REC_LOC_ID] [varchar](255) NULL,
	[REC_NAME] [varchar](255) NULL,
	[REC_CITY] [varchar](255) NULL,
	[REC_STATE] [varchar](255) NULL,
	[REC_ZIP] [varchar](255) NULL,
	[MODE_EXE] [float] NULL,
	[PRI_REF] [decimal](18, 0) NULL,
	[CAR_SCAC] [varchar](255) NULL,
	[STOP_NBR] [float] NULL,
	[DID_APT_CHA] [varchar](255) NULL,
	[ANY_APT_CHA_CARR_FLT_CD] [varchar](255) NULL,
	[NUM_TIM_TP_USR_CNGD_APT] [float] NULL,
	[NAM_TP_USR_CHNG_APPTS] [varchar](255) NULL,
	[TP_USR_APT_CHNG_RESN] [varchar](255) NULL,
	[REQ_ERL_DEL_DT] [datetime2](7) NULL,
	[REQ_LAT_DEL_D] [datetime2](7) NULL,
	[FST_CONF_APPT_RESET] [varchar](255) NULL,
	[FST_CONF_APPT_DT] [datetime2](7) NULL,
	[FST_CONF_APPT_RSET_RES_PTY] [varchar](255) NULL,
	[FST_CONF_APPT_RESN] [varchar](255) NULL,
	[LAT_CAR_APPT_DT] [datetime2](7) NULL,
	[MST_ARVE_BY_DT] [datetime2](7) NULL,
	[ACT_DEL_DT] [datetime2](7) NULL,
	[ACT_DEL_DEP_DT] [datetime2](7) NULL,
	[CHE_CAL_RESN] [varchar](255) NULL,
	[CHE_CAL_RESN_RES_PTY] [varchar](255) NULL,
	[MEA_SAT_ADJ_CNT] [float] NULL,
	[SAT_ADJ_OT_CNT] [float] NULL,
	[SAT_ADJ_RESN] [varchar](255) NULL,
	[SAT_ADJ_OT] [float] NULL,
	[MEAS_SAT_CNT] [float] NULL,
	[SAT_OT_CNT] [float] NULL,
	[SAT_OT] [float] NULL,
	[MEAS_RAD_CNT] [float] NULL,
	[RAD_OT_CNT] [float] NULL,
	[RAD_ADJ_RESN] [varchar](255) NULL,
	[RAD_OT] [float] NULL,
	[MEAS_RAD_ADJ_CNT] [float] NULL,
	[RAD_ADJ_OT_CNT] [float] NULL,
	[RAD_ADJ_OT] [float] NULL,
	[MEAS_SAD_OT_CNT] [float] NULL,
	[SAD_OT_CNT] [float] NULL,
	[SAD_OT] [float] NULL,
	[MEAS_RAD_DN_OT_CNT] [float] NULL,
	[RAD_DN_OT_CNT] [float] NULL,
	[RAD_AT_DN_OT] [float] NULL,
	[WEEK] [float] NULL,
	[PERIOD] [float] NULL,
	[STO_CLASS] [varchar](255) NULL,
	[CUST_CLASS] [varchar](255) NULL,
	[ACT_SHIP_DT] [datetime2](7) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](20) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](20) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](20) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[LATST_STRATG_ESTMT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[LATST_STRATG_ESTMT](
	[PD] [int] NULL,
	[LATST_ESTMT] [varchar](4) NULL,
	[STRATG_ESTMT] [varchar](4) NULL,
	[PRIOR_YR_ACTL] [varchar](15) NULL,
	[PRIOR_PD_VRSN] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[LKP_ACCSL_BCKT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[LKP_ACCSL_BCKT](
	[EDI_PAY_CODE] [varchar](8) NULL,
	[PAY_COND_TYPE] [varchar](8) NULL,
	[PAY_CODE_TEXT] [varchar](50) NULL,
	[GROUP_CODE] [varchar](50) NULL,
	[ACCESSORIAL_BUCKET] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[LKP_CHG_LOG_BCKT]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[LKP_CHG_LOG_BCKT](
	[TBL_NM] [varchar](30) NULL,
	[FLD_NM] [varchar](30) NULL,
	[DESC] [varchar](60) NOT NULL,
	[LOGNG] [varchar](1) NOT NULL,
	[ACTN] [varchar](20) NOT NULL,
	[HI_LVL_BCKT] [varchar](50) NOT NULL,
	[LOW_LVL_BCKT] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[PLNT_RSRC_CAP_MAP]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[PLNT_RSRC_CAP_MAP](
	[RES_NM] [varchar](100) NULL,
	[PLNT] [varchar](10) NULL,
	[BU] [varchar](10) NULL,
	[PROD_HIER] [varchar](50) NULL,
	[UTILIZATION_TARGET] [float] NULL,
	[WOS_TGT] [varchar](10) NULL,
	[PROD_HIER_DESC] [varchar](100) NULL,
	[RES_NM_DESC] [varchar](100) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[WGT_AVG_PRC]    Script Date: 11/20/2018 5:44:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[WGT_AVG_PRC](
	[CHNL_SKU] [varchar](255) NULL,
	[CHNL] [varchar](255) NULL,
	[SKU] [float] NULL,
	[NET_WT] [float] NULL,
	[PRICE] [float] NULL,
	[MATRL] [float] NULL,
	[VARIABLE] [float] NULL,
	[FIXED] [float] NULL,
	[TOT_COP] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_SNACKS_PUBLIX_CHAIN_STORE]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_SNACKS_PUBLIX_CHAIN_STORE] ON [AOD].[SNACKS_PUBLIX_CHAIN_STORE]
(
	[PLAN_TO_NBR] ASC,
	[CHAIN_NBR] ASC,
	[CUSTOMER_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INFO_ACTL_SALES_1]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE CLUSTERED INDEX [IDX_INFO_ACTL_SALES_1] ON [INFOMETRICS].[INFOMETRICS_ACTLS_SALES]
(
	[LOAD_DT] ASC,
	[CASE_CODE] ASC,
	[WEEK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_KPI_SALES]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE CLUSTERED INDEX [IX_SNACKS_KPI_SALES] ON [SIF].[SNACKS_KPI_SALES]
(
	[KPI_ID] ASC,
	[CLASS] ASC,
	[Object_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_GSV_BUDGET]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE CLUSTERED INDEX [IDX_GSV_BUDGET] ON [USER_SALES].[SNACKS_GSV_BUDGET]
(
	[PLAN_TO_NBR] ASC,
	[CATEGORY] ASC,
	[QTR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_SNACKS_POS_BUDGET]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE CLUSTERED INDEX [IDX_SNACKS_POS_BUDGET] ON [USER_SALES].[SNACKS_POS_BUDGET]
(
	[SOLD_TO_NBR] ASC,
	[CATEGORY] ASC,
	[QTR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PAY_COND_TYPE_CIX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE CLUSTERED INDEX [PAY_COND_TYPE_CIX] ON [USER_SC].[LKP_ACCSL_BCKT]
(
	[PAY_COND_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_AE_SURVEY]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_AE_SURVEY] ON [AOD].[SNACKS_AE_SURVEY]
(
	[TDLINX_STORE_CODE] ASC,
	[KEL_CATEGORY] ASC,
	[UPC] ASC,
	[ACV] ASC,
	[FIRSTWEEKSELLING] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_PUBLIX_DIV_POS]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_PUBLIX_DIV_POS] ON [AOD].[SNACKS_PUBLIX_DIV_POS]
(
	[(All Markets)] ASC,
	[(KEL_CATEGORY)] ASC,
	[(KEL_BRAND)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_WALMART_POS_SHARE]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_WALMART_POS_SHARE] ON [AOD].[SNACKS_WALMART_POS_SHARE]
(
	[[KEL_TOTAL CORE]]] ASC,
	[[KEL_BRAND]]] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SD57_SHIPMNT_PLN_TO]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SD57_SHIPMNT_PLN_TO] ON [BW].[SD57_SHIPMNT_PLN_TO_SUMRY]
(
	[PLANTO:Z_PLANTO] ASC,
	[CALWEEK:0CALWEEK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SD57_SHIPMNT_PLN_TO_SUMRY]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SD57_SHIPMNT_PLN_TO_SUMRY] ON [BW].[SD57_SHIPMNT_PLN_TO_SUMRY]
(
	[PLANTO:Z_PLANTO] ASC,
	[MATERIAL:C_MATRPTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LOGDISPUTECASE_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [LOGDISPUTECASE_IX] ON [ECC].[LOGDISPUTECASE]
(
	[EXT_KEY] ASC,
	[CASE_GUID] ASC,
	[CHANGED_BY] ASC,
	[POID_ID] ASC,
	[SY-DATUM] ASC,
	[SY-UZEIT] ASC,
	[ARG_STRING] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DOCUMENTS_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [DOCUMENTS_IX] ON [RTA].[DOCUMENTS]
(
	[DOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DOCUMENTS_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [DOCUMENTS_IX] ON [RTA].[DOCUMENTS_OLD]
(
	[DOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [LINEITEMFIELDS_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [LINEITEMFIELDS_IX] ON [RTA].[LINEITEMFIELDS]
(
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [LINEITEMFIELDS_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [LINEITEMFIELDS_IX] ON [RTA].[LINEITEMFIELDS_OLD]
(
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PROMOCODES_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [PROMOCODES_IX] ON [RTA].[PROMOCODES]
(
	[PROMOCODEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PROMOCODES_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [PROMOCODES_IX] ON [RTA].[PROMOCODES_OLD]
(
	[PROMOCODEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_REX_AUDIT]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_REX_AUDIT] ON [SIF].[REX_AUDIT]
(
	[VISITGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_REX_VISIT]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_REX_VISIT] ON [SIF].[REX_VISIT]
(
	[VISITGUID] ASC,
	[STOREEXTERNALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_AUDIT]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_AUDIT] ON [SIF].[SNACKS_AUDIT]
(
	[VISITGUID] ASC,
	[CATEGORY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_DISPLAY]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_DISPLAY] ON [SIF].[SNACKS_DISPLAY]
(
	[VISITGUID] ASC,
	[DETAILITEMEXTERNALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_VISIT]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_VISIT] ON [SIF].[SNACKS_VISIT]
(
	[VISITGUID] ASC,
	[STOREEXTERNALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_AE_PT]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_AE_PT] ON [USER_SALES].[SNACKS_AE_PT]
(
	[PT_NBR] ASC,
	[PT Name] ASC,
	[BU] ASC,
	[CAT] ASC,
	[Acceptance Status] ASC,
	[On Shelf Date] ASC,
	[UPC] ASC,
	[MATERIAL_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_AE_SURVEY]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_SNACKS_AE_SURVEY] ON [USER_SALES].[SNACKS_AE_SURVEY]
(
	[SOLD_TO_NBR] ASC,
	[MATRL_NBR] ASC,
	[STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DELVRY_NBR_IX]    Script Date: 11/20/2018 5:44:13 PM ******/
CREATE NONCLUSTERED INDEX [DELVRY_NBR_IX] ON [USER_SC].[DELVRY_ACCSL_2015]
(
	[DELVRY_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [AOD].[SNACKS_AE_SURVEY] ADD  CONSTRAINT [DF_SNACKS_AE_SURVEY_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [AOD].[SNACKS_PUBLIX_DIV_POS] ADD  CONSTRAINT [DF_SNACKS_PUBLIX_DIV_POS_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [AOD].[SNACKS_WALMART_POS_SHARE] ADD  CONSTRAINT [DF_SNACKS_WALMART_POS_SHARE_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [KEEP_SAFE].[SNACKS_DATAFEED] ADD  CONSTRAINT [SNACKS_DATAFEED_DEFAULT]  DEFAULT (getdate()) FOR [DATE_LOADED]
GO
ALTER TABLE [SIF].[REX_AUDIT] ADD  CONSTRAINT [SIF_AUDIT_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[REX_CALL_COVERAGE] ADD  CONSTRAINT [SIF_CALL_COVERAGE_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[REX_PREBOOKED_ORDERS] ADD  CONSTRAINT [SIF_PREBOOKED_ORDERS_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[REX_VISIT] ADD  CONSTRAINT [SIF_VISIT_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[SNACKS_AUDIT] ADD  CONSTRAINT [AUDIT_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[SNACKS_CALL_COVERAGE] ADD  CONSTRAINT [SNACKS_CALL_COVERAGE_DEFAULT]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[SNACKS_DISPLAY] ADD  CONSTRAINT [DISPLAY_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[SNACKS_PREBOOKED_ORDERS] ADD  CONSTRAINT [DF_PREBOOKED_ORDERS_LAST_MODIFIED]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [SIF].[SNACKS_VISIT] ADD  CONSTRAINT [VISIT_DEF]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [USER_SALES].[REX_GSV_BUDGET] ADD  CONSTRAINT [DF_REX_GSV_BUDGET_YR]  DEFAULT (datepart(year,getdate())) FOR [YR]
GO
ALTER TABLE [USER_SALES].[REX_GSV_BUDGET] ADD  CONSTRAINT [DF_REX_GSV_BUDGET_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [USER_SALES].[REX_POS_BUDGET] ADD  CONSTRAINT [DF_REX_POS_BUDGET_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [USER_SALES].[SNACKS_GSV_BUDGET] ADD  CONSTRAINT [DF_SNACKS_GSV_BUDGET_YR]  DEFAULT (datepart(year,getdate())) FOR [YR]
GO
ALTER TABLE [USER_SALES].[SNACKS_GSV_BUDGET] ADD  CONSTRAINT [DF_SNACKS_GSV_BUDGET_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
ALTER TABLE [USER_SALES].[SNACKS_POS_BUDGET] ADD  CONSTRAINT [DF_SNACKS_POS_BUDGET_YR]  DEFAULT (datepart(year,getdate())) FOR [YR]
GO
ALTER TABLE [USER_SALES].[SNACKS_POS_BUDGET] ADD  CONSTRAINT [DF_SNACKS_POS_BUDGET_LAST_MOD]  DEFAULT (getdate()) FOR [LAST_MOD]
GO
USE [master]
GO
ALTER DATABASE [KNA_EXTERNAL] SET  READ_WRITE 
GO
