USE [master]
GO
/****** Object:  Database [KG_DP]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE DATABASE [KG_DP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_DP', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_DP.mdf' , SIZE = 1707268096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_DP_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_DP_log.ldf' , SIZE = 411034624KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_DP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_DP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_DP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_DP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_DP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_DP] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_DP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_DP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_DP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_DP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_DP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_DP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_DP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_DP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_DP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_DP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_DP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_DP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_DP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_DP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_DP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_DP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_DP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_DP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_DP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_DP] SET  MULTI_USER 
GO
ALTER DATABASE [KG_DP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_DP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_DP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_DP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_DP', N'ON'
GO
USE [KG_DP]
GO
/****** Object:  User [US\SQL_SC_PWRUSERS_R]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\SQL_SC_PWRUSERS_R] FOR LOGIN [US\SQL_SC_PWRUSERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\ISM_READ_WRITE]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\ISM_READ_WRITE] FOR LOGIN [US\ISM_READ_WRITE]
GO
/****** Object:  User [US\ISM_READ]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [US\ISM_READ] FOR LOGIN [US\ISM_READ]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKMWM01]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_PU_USKMWM01] FOR LOGIN [SAS_PU_USKMWM01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKJPG07]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_PU_USKJPG07] FOR LOGIN [SAS_PU_USKJPG07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKD1M14]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [SAS_PU_USKD1M14] FOR LOGIN [SAS_PU_USKD1M14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 11/20/2018 5:23:54 PM ******/
CREATE ROLE [db_exeproc]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SC_PWRUSERS_R]
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
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_READ_WRITE]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_READ]
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[ARCHIVE_DDPO_S1P_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ARCHIVE_DDPO_S1P_FORECAST]
@WK_VRSN nvarchar(8) = null, @PD_VRSN nvarchar(8) = null
WITH EXEC AS CALLER
AS
BEGIN

/****************************************************************************************************************************************************
		NAME:      archive_DDPO_S1P data
		PURPOSE:   ensures that only data that hasnt been loaded is uploaded
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/29/2016   USCDXS92         Created.
		1.1  	   03/07/2018	USCAKK02		 Changed the order of columns to be inserted from source to target to match the target schema
		
		This stored procedure archives the daily  extract from the hadoop 
		into the history tables present in the SQL server.  
    
******************************************************************************************************************************************************/
    
	SET NOCOUNT ON;
  
	SET IMPLICIT_TRANSACTIONS OFF;

DECLARE @WK_LAG INT = NULL
DECLARE @PD_LAG INT = NULL


IF @WK_VRSN IS NOT NULL
	SET @WK_LAG = 0
IF @PD_VRSN IS NOT NULL
	SET @PD_LAG = 0
	
    --SAVE TRANSACTION  
BEGIN TRANSACTION;
SAVE TRANSACTION  start_tran;


DELETE [KG_DP].[dbo].[KNA_S1P_FORECAST]
WHERE  EXISTS (SELECT [VERSION]
               FROM   [KG_HADOOP].[DP].[KNA_S1P_FORECAST] 
               WHERE  [KG_DP].[dbo].[KNA_S1P_FORECAST].[VERSN] = [KG_HADOOP].[DP].[KNA_S1P_FORECAST].[VERSION]);

 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end

--CREATE CLUSTERED COLUMNSTORE INDEX CCI_KNA_S1P_FORECAST ON [KG_HADOOP].[DP].[KNA_S1P_FORECAST];

INSERT INTO [KG_DP].[dbo].[KNA_S1P_FORECAST]
select s1p.*, @WK_VRSN, @WK_LAG , @PD_VRSN, @PD_LAG
from [KG_HADOOP].[DP].[KNA_S1P_FORECAST] s1p
WHERE (s1p.ZDPFFCST <> 0 or s1p.ZBWADJST <> 0 or s1p.ZBWORDHS <> 0 or s1p.ZBWSHORT <>0 
or s1p.ZBWSHPHS<> 0 or s1p.ZDPADJHS <> 0 or s1p.ZDPBASHS <> 0 or s1p.ZDPBDGFC <> 0 
or s1p.ZDPBSTAT <> 0 or s1p.ZDPCAUF1 <> 0 or s1p.ZDPCAUF2 <> 0 or s1p.ZDPCAUF3 <> 0 
or s1p.ZDPCAUF4 <>0 or s1p.ZDPCLHIST <> 0 or s1p.ZDPCOMFC <> 0 or  s1p.ZDPCRMBA<> 0 
or s1p.ZDPCRMIN <>0 or s1p.ZDPCRMPC<> 0 or s1p.ZDPCRMS<>0 or s1p.ZDPCRMSH<>0
or s1p.ZDPCRMTS<>0 or s1p.ZDPCRPTS<>0 or s1p.ZDPCUSTF <> 0 or s1p.ZDPEXKF1 <> 0
or s1p.ZDPFCSTO<>0 or s1p.ZDPFF1PL <> 0 or s1p.ZDPFF2PL <>0 or s1p.ZDPFFCSF<>0
or s1p.ZDPFFCST<>0 or s1p.ZDPLOCSH<>0 or s1p.ZDPLRPLS<>0 or s1p.ZDPLRPUF<>0
or s1p.ZDPMANCO<>0 or s1p.ZDPMKTFC<> 0 or s1p.ZDPMLRFC<>0 or s1p.ZDPMODBA <> 0 
or s1p.ZDPORDHS<>0 or s1p.ZZPPFFST<>0 or s1p.ZDPPOSPR<>0 or s1p.ZDPPOSQT<>0
or s1p.ZDPPTSTA<>0 or s1p.ZDPSHORT<>0 or s1p.ZDPSHPHS<> 0 or s1p.ZDPSTFC1<>0
or s1p.ZDPSTFC2<> 0 or s1p.ZDPSTFC3<> 0 or s1p.ZDPSUPP<>0 or s1p.ZDPTERFC<>0
or s1p.ZDPTERPF<>0 or s1p.ZDPTSTAT<>0 or s1p.ZDPWRKFC <>0 or s1p.ZDPWRKFF <>0 
or s1p.ZDPXADJH<>0 or s1p.ZDPXSHPH <>0)

--DROP INDEX CCI_KNA_S1P_FORECAST ON [KG_HADOOP].[DP].[KNA_S1P_FORECAST];

 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end
COMMIT TRANSACTION;
BEGIN TRANSACTION;
SAVE TRANSACTION  start_tran;

DELETE [KG_DP].[dbo].[KNA_DDPO_FORECAST]
WHERE  EXISTS (SELECT [VERSION]
               FROM   [KG_HADOOP].[DP].[KNA_DDPO_FORECAST] 
               WHERE  [KG_DP].[dbo].[KNA_DDPO_FORECAST].[VERSN] = [KG_HADOOP].[DP].[KNA_DDPO_FORECAST].[VERSION]);

 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end

--CREATE CLUSTERED COLUMNSTORE INDEX CCI_KNA_DDPO_FORECAST ON [KG_HADOOP].[DP].[KNA_DDPO_FORECAST];

INSERT INTO [KG_DP].[dbo].[KNA_DDPO_FORECAST]
select 
ddpo.BUSINESS_UNIT,
ddpo.DP_MATERIAL,
ddpo.PLANTO,
ddpo.LOCATION,
ddpo.CHANNEL,
ddpo.SALESORG,
ddpo.FISCAL_WEEK,
ddpo.EXPLODED_MATERIAL,
ddpo.BOM_FLAG,
ddpo.BASE_MATERIAL,
ddpo.Z1YA_ADJ_HIST,
ddpo.ZDPADJHS,
ddpo.ZDPCAUF3,
ddpo.ZDPCRMTS,
ddpo.ZDPCRPTS,
ddpo.ZDPCUSTF,
ddpo.ZDPPFFST,
ddpo.ZDPPOSPR,
ddpo.ZDPPOSQTY,
ddpo.ZDPSHORT,
ddpo.ZDPSHPHS,
ddpo.ZDPTERFC,
ddpo.ZDPWRKFC,
ddpo.ZDPMLRFC,
ddpo.ZDPCRMIN,
ddpo.CRM_ACTIVITY_INC,
ddpo.ZDPCAUF1,
ddpo.ZDPEXKF1,
ddpo.ZDPMKTFC,
ddpo.ZDPCAUF2,
ddpo.ZDPCAUF4,
ddpo.ZDPSTFC3,
ddpo.Z1YA_ADJ_HIST_GSV,
ddpo.ZDPADJHS_GSV,
ddpo.ZDPCAUF3_GSV,
ddpo.ZDPCRMTS_GSV,
ddpo.ZDPCRPTS_GSV,
ddpo.ZDPCUSTF_GSV,
ddpo.ZDPPFFST_GSV,
ddpo.ZDPPOSPR_GSV,
ddpo.ZDPPOSQTY_GSV,
ddpo.ZDPSHORT_GSV,
ddpo.ZDPSHPHS_GSV,
ddpo.ZDPTERFC_GSV,
ddpo.ZDPWRKFC_GSV,
ddpo.ZDPMLRFC_GSV,
ddpo.ZDPCRMIN_GSV,
ddpo.CRM_ACTIVITY_INC_GSV,
ddpo.ZDPCAUF1_GSV,
ddpo.ZDPEXKF1_GSV,
ddpo.ZDPMKTFC_GSV,
ddpo.ZDPCAUF2_GSV,
ddpo.ZDPCAUF4_GSV,
ddpo.ZDPSTFC3_GSV,
ddpo.Z1YA_ADJ_HIST_ZNL,
ddpo.ZDPADJHS_ZNL,
ddpo.ZDPCAUF3_ZNL,
ddpo.ZDPCRMTS_ZNL,
ddpo.ZDPCRPTS_ZNL,
ddpo.ZDPCUSTF_ZNL,
ddpo.ZDPPFFST_ZNL,
ddpo.ZDPPOSPR_ZNL,
ddpo.ZDPPOSQTY_ZNL,
ddpo.ZDPSHORT_ZNL,
ddpo.ZDPSHPHS_ZNL,
ddpo.ZDPTERFC_ZNL,
ddpo.ZDPWRKFC_ZNL,
ddpo.ZDPMLRFC_ZNL,
ddpo.ZDPCRMIN_ZNL,
ddpo.CRM_ACTIVITY_INC_ZNL,
ddpo.ZCPCAUF1_ZNL,
ddpo.ZDPEXKF1_ZNL,
ddpo.ZDPMKTFC_ZNL,
ddpo.ZDPCAUF2_ZNL,
ddpo.ZDPCAUF4_ZNL,
ddpo.ZDPSTFC3_ZNL,
ddpo.Z1YA_ADJ_HIST_ZNK,
ddpo.ZDPADJHS_ZNK,
ddpo.ZDPCAUF3_ZNK,
ddpo.ZDPCRMTS_ZNK,
ddpo.ZDPCRPTS_ZNK,
ddpo.ZDPCUSTF_ZNK,
ddpo.ZDPPFFST_ZNK,
ddpo.ZDPPOSPR_ZNK,
ddpo.ZDPPOSQTY_ZNK,
ddpo.ZDPSHORT_ZNK,
ddpo.ZDPSHPHS_ZNK,
ddpo.ZDPTERFC_ZNK,
ddpo.ZDPWRKFC_ZNK,
ddpo.ZDPMLRFC_ZNK,
ddpo.ZDPCRMIN_ZNK,
ddpo.CRM_ACTIVITY_INC_ZNK,
ddpo.ZDPCAUF1_ZNK,
ddpo.ZDPEXKF1_ZNK,
ddpo.ZDPMKTFC_ZNK,
ddpo.ZDPCAUF2_ZNK,
ddpo.ZDPCAUF4_ZNK,
ddpo.ZDPSTFC3_ZNK,
ddpo.FISC_YR_WK,
ddpo.FISC_YR_PD,
ddpo.VERSION,
ddpo.VERSION_YEAR,
ddpo.VERSION_MONTH,
ddpo.VERSION_DAY,
@WK_VRSN,   --added parameters in between to match the target table schema
@WK_LAG ,	--added parameters in between to match the target table schema
@PD_VRSN,	--added parameters in between to match the target table schema
@PD_LAG,	--added parameters in between to match the target table schema
ddpo.ZDPFLST,
ddpo.ZDPFSACC,
ddpo.KEYFIG1,
ddpo.KEYFIG2,
ddpo.KEYFIG3,
ddpo.ZDPFLST_GSV,
ddpo.ZDPFSACC_GSV,
ddpo.KEYFIG1_GSV,
ddpo.KEYFIG2_GSV,
ddpo.KEYFIG3_GSV,
ddpo.ZDPFLST_ZNL,
ddpo.ZDPFSACC_ZNL,
ddpo.KEYFIG1_ZNL,
ddpo.KEYFIG2_ZNL,
ddpo.KEYFIG3_ZNL,
ddpo.ZDPFLST_ZNK,
ddpo.ZDPFSACC_ZNK,
ddpo.KEYFIG1_ZNK,
ddpo.KEYFIG2_ZNK,
ddpo.KEYFIG3_ZNK
from [KG_HADOOP].[DP].[KNA_DDPO_FORECAST] ddpo
WHERE (ddpo.ZDPPFFST<>0 or ddpo.Z1YA_ADJ_HIST<>0 or ddpo.ZDPADJHS<>0
or ddpo.ZDPCAUF3<> 0 or ddpo.ZDPCRMTS<>0 
or ddpo.ZDPCRPTS<>0 or ddpo.ZDPCUSTF<>0
or ddpo.ZDPPFFST<>0 or ddpo.ZDPPOSPR<>0
or ddpo.ZDPPOSQTY<>0 or ddpo.ZDPSHORT<>0
or ddpo.ZDPSHPHS<>0 or ddpo.ZDPTERFC<>0
or ddpo.ZDPWRKFC<> 0 or ddpo.ZDPMLRFC<>0 
or ddpo.ZDPCRMIN<>0 or ddpo.CRM_ACTIVITY_INC<>0
or ddpo.ZDPCAUF1<>0 or ddpo.ZDPEXKF1<>0 
or ddpo.ZDPMKTFC<>0 or ddpo.ZDPCAUF2<>0
or ddpo.ZDPCAUF4<>0 or ddpo.ZDPSTFC3<>0)

--DROP INDEX CCI_KNA_DDPO_FORECAST ON [KG_HADOOP].[DP].[KNA_DDPO_FORECAST];

COMMIT TRANSACTION;
END

GO
/****** Object:  StoredProcedure [dbo].[ARCHIVE_ISM_FORECAST_METRIC]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ARCHIVE_ISM_FORECAST_METRIC]

AS

BEGIN
    SET NOCOUNT ON;
    /******************************************************************************
		NAME:      archive_ISM_FORECAST_METRIC
		PURPOSE:   ensures that only data that hasnt been loaded is uploaded
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        12/06/2016   USCDXS92         Created.
		2.0		   26/8/2017	USCMXJ11		 INC0569381
		3.0			1/8/2017	USCMXJ11		 TASK0420942
		This stored procedure archives the daily  extract from the hadoop 
		into the history tables present in the SQL server.  
		******************************************************************************/
	SET IMPLICIT_TRANSACTIONS OFF;	
		
BEGIN TRANSACTION;
SAVE TRANSACTION  start_tran;

--Index dropping statements have been moved from BODS to SQL

if exists( select 'X' from sys.objects where object_id in ( select object_id from sys.indexes where name = 'IDX_ISM_FORECST_MTRC') and name = 'ISM_FORECST_MTRC' and schema_id = 1 ) 
	DROP INDEX IDX_ISM_FORECST_MTRC ON KG_DP.dbo.ISM_FORECST_MTRC

if exists( select 'X' from sys.objects where object_id in ( select object_id from sys.indexes where name = 'IDX_STG_ISM_FORECST_MTRC') and name = 'ISM_FORECST_MTRC' and schema_id = 5) 
	DROP INDEX IDX_STG_ISM_FORECST_MTRC ON KG_DP.STG.ISM_FORECST_MTRC;

	
UPDATE KG_HADOOP.DP.ISM_FORECST_MTRC SET LOC = RIGHT(LOC, 4)
	
	DELETE [KG_DP].[dbo].[ISM_FORECST_MTRC]
	WHERE  EXISTS (SELECT DISTINCT [FISCAL_WEEK],[LG]
               FROM   [KG_HADOOP].[DP].[ISM_FORECST_MTRC] 
               WHERE  [KG_DP].[dbo].[ISM_FORECST_MTRC].[FISCAL_WEEK] = [KG_HADOOP].[DP].[ISM_FORECST_MTRC].[FISCAL_WEEK]
			   and	  [KG_DP].[dbo].[ISM_FORECST_MTRC].[LG] = [KG_HADOOP].[DP].[ISM_FORECST_MTRC].[LG] --USCMXJ11 For data reload we need to delete based on WK and LG since filter applied on BOM flag level 
			  )

 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end

INSERT INTO [KG_DP].[dbo].[ISM_FORECST_MTRC]
select *
from [KG_HADOOP].[DP].[ISM_FORECST_MTRC]

 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end

--Delete the data from the target table based on the source data to rather than truncating the data to preserve the history

	DELETE FROM [STG].[ISM_FORECST_MTRC] where EXISTS (SELECT DISTINCT FISC_YR from [KG_HADOOP].[DP].[ISM_FORECST_MTRC]  where [STG].[ISM_FORECST_MTRC].FISC_YR = [KG_HADOOP].[DP].[ISM_FORECST_MTRC] .FISC_YR)

--Index creation statements have been moved from BODS to SQL

if not exists( select 'X' from sys.objects where object_id in ( select object_id from sys.indexes where name = 'IDX_ISM_FORECST_MTRC') and name = 'ISM_FORECST_MTRC'  and schema_id = 1) 
	CREATE NONCLUSTERED INDEX IDX_ISM_FORECST_MTRC ON KG_DP.dbo.ISM_FORECST_MTRC (FISCAL_WEEK, SALESORG, PLN_TO)


COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_FORECST_MTRC]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_LOAD_FORECST_MTRC]
AS /**********************************************************************************
   NAME        : USP_LOAD_FORECST_MTRC
   PURPOSE & 
   Description : This script will Populate data into ISM forecast Matric.		   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         12/1/2016      DI Team                     1. Initial Version

   2.0         12/5/2016      DI team                     2.Fin BU Pointing KG_VIEWS

   3.0		   26/8/2017	  USCMXJ11					  3. INC0569381

   4.0		   26/10/2017     USCMXJ11                    4. YTD delete and load

   5.0			1/8/2018	  USCMXJ11						5. PTD shipments

**********************************************************************************/

BEGIN


with Forecast as (

SELECT   FISC_YR, FISC_WK, FISCAL_WEEK, MTRL, LOC, SALESORG,BU_VW,BU,CHNNL,PLN_TO,[0] as WKLY_FRCST,[1] as WKLY_FRCST1, [2] as WKLY_FRCST2
	FROM (
		SELECT FISC_YR, FISC_WK, FISCAL_WEEK, MTRL, LOC, LG, SALESORG,BU_VW,BU,CHNNL,PLN_TO,WKLY_FRCST
			FROM [KG_DP].[dbo].[ISM_FORECST_MTRC] 
		) tab
	pivot(SUM(WKLY_FRCST) FOR LG IN (
				[0]
				,[1]
				,[2]
				)) piv
				
			)


INSERT INTO [STG].[ISM_FORECST_MTRC] (
		SALESORG
		,BU_VW
		,BU
		,MTRL
		,MATRL_DESC
		,FIN_BU
		,CNTRL_AREA
		,LOC
		,LG
		,DIST_CHNL
		,PROD_HIER_BRAND_DESC
		,PROD_HIER_TYPE_DESC
		,PROD_HIER_CATEGORY_DESC
		,FISC_YR
		,FISC_PD
		,FISCAL_PERIOD
		,WKLY_FRCST
		,SHIP_QTY_CS_UOM
		,ORIG_ORDR_QTY_CS_UOM
		,ABS_CALC
		,WKLY_FRCST1
		,WKLY_FRCST2
		,MTRC.FISC_PD_WK
		,PLAN_TO
		)
SELECT 
		 MTRC.[SALESORG]
		,MTRC.[BU_VW]
		,MTRC.[BU]
		,MTRC.[MTRL] [MTRL]
		,MTRC.[MATRL_DESC]
		,MTRC.FIN_BU
		,MTRC.CNTRL_AREA
		,MTRC.[LOC]
		,MTRC.[LG]
		,MTRC.CHNNL
		,MTRC.[PROD_HIER_BRAND_DESC]
		,MTRC.[PROD_HIER_TYPE_DESC]
		,MTRC.[PROD_HIER_CATEGORY_DESC]
		,MTRC.[FISC_YR]
		,MTRC.[FISC_PD]
		,MTRC.FISCAL_PERIOD
		,SUM(ISNULL(MTRC.[WKLY_FRCST],0)) AS [WKLY_FRCST]
		,SUM(ISNULL(MTRC.[SHIP_QTY_CS_UOM],0)) AS [SHIP_QTY_CS_UOM]
		,SUM(ISNULL(MTRC.[ORIG_ORDR_QTY_CS_UOM],0)) AS [ORIG_ORDR_QTY_CS_UOM]
		,ABS(SUM(ISNULL(MTRC.[WKLY_FRCST],0)) - SUM(ISNULL(MTRC.[SHIP_QTY_CS_UOM],0))) AS [ABS_CALC]
		,SUM(ISNULL(MTRC.WKLY_FRCST1,0)) AS [WKLY_FRCST1]
		,SUM(ISNULL(MTRC.WKLY_FRCST2,0)) AS [WKLY_FRCST1]
		,MTRC.FISC_PD_WK
		,MTRC.PLAN_TO
	FROM ( 
	-- Shipment data has been loaded from CLS build
	SELECT 
	Ship.SALES_ORG [SALESORG]
		,Ship.[BU] BU_VW
		,case Ship.BU when 'Specialty' then 'KBLRSPCLTY' when 'Kashi' then 'KBLRKASHI' when 'Morning Foods' then 'KBLRMF' when 'Frozen' then  'KBLRFROZEN' when 'Snacks' then 'KBLRSNACKS' end BU
		,Ship.MATRL_NBR [MTRL]
		,Mat.[MATRL_DESC]
		,Mat.FIN_BU
		,Mat.CNTRL_AREA
		,Ship.[PLANT_NBR] as [LOC]
		,0 AS [LG]
		,Ship.DIST_CHNL CHNNL
		,Prod.[PROD_HIER_BRAND_DESC]
		,Prod.[PROD_HIER_TYPE_DESC]
		,Prod.[PROD_HIER_CATEGORY_DESC]
		,Cal.[FISC_YR]
		,Cal.[FISC_PD]
		,CONCAT (
			Cal.[FISC_YR]
			,RIGHT(CONCAT (
					'000'
					,Cal.[FISC_PD]
					), 3)
			) AS FISCAL_PERIOD
		,0 AS [WKLY_FRCST] -- Forecast data doesn't exits in Shipment
		,Ship.[SHIP_QTY_CS_UOM] AS [SHIP_QTY_CS_UOM]
		,Ship.[ORIG_ORDR_QTY_CS_UOM] AS [ORIG_ORDR_QTY_CS_UOM]
		,0 AS [ABS_CALC] -- Calculation will do in one level up
		,0 AS [WKLY_FRCST1]
		,0 AS [WKLY_FRCST2]
		,Ship.FISC_PD_WK [FISC_PD_WK]
		,NULL PLAN_TO
from
KNA_ECC.[dbo].[UVW_SHIPMNT_SUMRY] Ship,
[KNA_ECC].[dbo].[UVW_FISC_CAL] Cal
			,[KG_VIEWS].[KNA].[UVW_MATRL] Mat
			,[KNA_ECC].[dbo].[UVW_PROD_HIER] Prod
			where
			substring(Ship.FISC_PD_WK,1,4) = Cal.FISC_YR and
			substring(Ship.FISC_PD_WK,6,2) = Cal.FISC_WK and
			 Ship.[MATRL_NBR] = Mat.MATRL_NBR and Mat.PROD_HIER = Prod.PROD_HIER AND
			 Ship.SALESMGMTA<>'REMARKETING'  -- filter applied in IP dashboard
			AND Ship.SALESMGMTC<>'GIRL SCOUTS L5' -- filter applied in IP dashboard
			AND Cal.FISC_YR in (SELECT distinct FISC_YR from [KG_HADOOP].[DP].[ISM_FORECST_MTRC])  -- MJ : Load data based on year exist in source file
	
UNION ALL

-- Union with the forecast data which extracted from hive union of DDPO (US) & S1P (CAD) table
	SELECT 
	Forecast.SALESORG
		,Forecast.BU_VW
		,Forecast.[BU]
		,Forecast.MTRL
		,Mat.[MATRL_DESC]
		,Mat.FIN_BU
		,Mat.CNTRL_AREA
		,Forecast.LOC as [LOC]
		,0 AS [LG]
		,Forecast.CHNNL CHNNL
		,Prod.[PROD_HIER_BRAND_DESC]
		,Prod.[PROD_HIER_TYPE_DESC]
		,Prod.[PROD_HIER_CATEGORY_DESC]
		,Cal.[FISC_YR]
		,Cal.[FISC_PD]
		,CONCAT (
			Cal.[FISC_YR]
			,RIGHT(CONCAT (
					'000'
					,Cal.[FISC_PD]
					), 3)
			) AS FISCAL_PERIOD
		,WKLY_FRCST AS [WKLY_FRCST]
		,0 AS [SHIP_QTY_CS_UOM]  -- Shipment data exists in shipment dataset
		,0 AS [ORIG_ORDR_QTY_CS_UOM] -- order shipped exists in shipment dataset
		,0 AS [ABS_CALC]     -- calculation will be done in one level up
		,WKLY_FRCST1 AS [WKLY_FRCST1]
		,WKLY_FRCST2 AS [WKLY_FRCST2]
		,Forecast.FISCAL_WEEK AS [FISC_PD_WK] 
		,Forecast.PLN_TO PLAN_TO
from
Forecast,
[KNA_ECC].[dbo].[UVW_FISC_CAL] Cal
			,[KG_VIEWS].[KNA].[UVW_MATRL] Mat
			,[KNA_ECC].[dbo].[UVW_PROD_HIER] Prod
			where
			cast(Forecast.FISC_WK as int)  = Cal.FISC_WK and
			Forecast.FISC_WK   =  Cal.FISC_WK  and
			Forecast.FISC_YR	=	Cal.FISC_YR and
			Forecast.MTRL = Mat.MATRL_NBR and 
			Mat.PROD_HIER = Prod.PROD_HIER 
			AND Cal.FISC_YR in (SELECT distinct FISC_YR from [KG_HADOOP].[DP].[ISM_FORECST_MTRC]) -- MJ : Load data based on year exist in source file
			 ) MTRC

			 GROUP BY
			 
		 MTRC.[SALESORG]
		,MTRC.[BU_VW]
		,MTRC.[BU]
		,MTRC.[MTRL]
		,MTRC.[MATRL_DESC]
		,MTRC.FIN_BU
		,MTRC.CNTRL_AREA
		,MTRC.[LOC]
		,MTRC.[LG]
		,MTRC.CHNNL
		,MTRC.[PROD_HIER_BRAND_DESC]
		,MTRC.[PROD_HIER_TYPE_DESC]
		,MTRC.[PROD_HIER_CATEGORY_DESC]
		,MTRC.[FISC_YR]
		,MTRC.[FISC_PD]
		,MTRC.FISCAL_PERIOD
		,MTRC.[FISC_PD_WK]
		,MTRC.PLAN_TO 
		END

-- Create index on the table for tableau feed and changes columnstore to normal index. added validation to create only if not exits, code moved from BODS to SQL

if not exists( select 'X' from sys.objects where object_id in ( select object_id from sys.indexes where name = 'IDX_STG_ISM_FORECST_MTRC') and name = 'ISM_FORECST_MTRC'  and schema_id = 5 ) 
CREATE NONCLUSTERED INDEX IDX_STG_ISM_FORECST_MTRC ON KG_DP.STG.ISM_FORECST_MTRC (SALESORG, MTRL, FISCAL_PERIOD)






GO
/****** Object:  Table [dbo].[CLOSED_PERIOD]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLOSED_PERIOD](
	[FISC_YR] [int] NULL,
	[FISC_PD] [int] NULL,
	[CURR_FISC_CLOSED_PD] [int] NULL,
	[CURR_FISC_YR] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ISM_CHNL_LKP]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ISM_CHNL_LKP](
	[CHNL_ID] [varchar](10) NOT NULL,
	[CHNL_DESC] [varchar](100) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_ISM_CHNL_LKP] PRIMARY KEY CLUSTERED 
(
	[CHNL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ISM_FORECST_MTRC]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ISM_FORECST_MTRC](
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
	[DW_CRE_TS] [datetime2](7) NOT NULL,
	[DW_CRE_USR] [varchar](50) NOT NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NOT NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_DDPO_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_DDPO_FORECAST](
	[BU] [varchar](32) NULL,
	[DP_MTRIL] [varchar](32) NULL,
	[PLANTO] [varchar](32) NULL,
	[LOC] [varchar](32) NULL,
	[CHANNEL] [varchar](32) NULL,
	[SALESORG] [varchar](32) NULL,
	[FISCA_WK] [varchar](7) NULL,
	[EXPLODED_MTRIL] [varchar](32) NULL,
	[BOM_FLAG] [varchar](1) NULL,
	[BASE_MTRIL] [varchar](32) NULL,
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
	[VERSN] [date] NULL,
	[VERSN_YR] [int] NULL,
	[VERSN_MN] [int] NULL,
	[VERSN_DY] [int] NULL,
	[WK_VERSN] [varchar](8) NULL,
	[WK_LG] [int] NULL,
	[PD_VERSN] [varchar](8) NULL,
	[PD_LG] [int] NULL,
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
/****** Object:  Table [dbo].[KNA_DDPO_FORECAST_temp_apr]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_DDPO_FORECAST_temp_apr](
	[BU] [varchar](32) NULL,
	[DP_MTRIL] [varchar](32) NULL,
	[PLANTO] [varchar](32) NULL,
	[LOC] [varchar](32) NULL,
	[CHANNEL] [varchar](32) NULL,
	[SALESORG] [varchar](32) NULL,
	[FISCA_WK] [varchar](7) NULL,
	[EXPLODED_MTRIL] [varchar](32) NULL,
	[BOM_FLAG] [varchar](1) NULL,
	[BASE_MTRIL] [varchar](32) NULL,
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
	[VERSN] [date] NULL,
	[VERSN_YR] [int] NULL,
	[VERSN_MN] [int] NULL,
	[VERSN_DY] [int] NULL,
	[WK_VERSN] [varchar](8) NULL,
	[WK_LG] [int] NULL,
	[PD_VERSN] [varchar](8) NULL,
	[PD_LG] [int] NULL,
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
/****** Object:  Table [dbo].[KNA_DDPO_FORECST_HSTRY]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_DDPO_FORECST_HSTRY](
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
	[ZDPFLST] [float] NULL,
	[ZDPFSACC] [float] NULL,
	[Keyfig1] [float] NULL,
	[Keyfig2] [float] NULL,
	[Keyfig3] [float] NULL,
	[ZDPFLST_GSV] [float] NULL,
	[ZDPFSACC_GSV] [float] NULL,
	[Keyfig1_GSV] [float] NULL,
	[Keyfig2_GSV] [float] NULL,
	[Keyfig3_GSV] [float] NULL,
	[ZDPFLST_ZNL] [float] NULL,
	[ZDPFSACC_ZNL] [float] NULL,
	[Keyfig1_ZNL] [float] NULL,
	[Keyfig2_ZNL] [float] NULL,
	[Keyfig3_ZNL] [float] NULL,
	[ZDPFLST_ZNK] [float] NULL,
	[ZDPFSACC_ZNK] [float] NULL,
	[Keyfig1_ZNK] [float] NULL,
	[Keyfig2_ZNK] [float] NULL,
	[Keyfig3_ZNK] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_S1P_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_S1P_FORECAST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CURR] [varchar](5) NULL,
	[CUST_GRP] [varchar](2) NULL,
	[CUST_SALES] [varchar](10) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIV] [varchar](2) NULL,
	[FISCPER] [varchar](7) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[MTRIL] [varchar](18) NULL,
	[SALESORG] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[AVERSN] [varchar](1) NULL,
	[Z9AEXMAT] [varchar](40) NULL,
	[Z9ALOCNO] [varchar](20) NULL,
	[ZPAMATNR] [varchar](40) NULL,
	[ZCUST] [varchar](10) NULL,
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
	[VERSN] [date] NULL,
	[VERSN_YR] [int] NULL,
	[VERSN_MN] [int] NULL,
	[VERSN_DY] [int] NULL,
	[WK_VERSN] [varchar](8) NULL,
	[WK_LG] [int] NULL,
	[PD_VERSN] [varchar](8) NULL,
	[PD_LG] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_S1P_FORECST_HSTRY]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_S1P_FORECST_HSTRY](
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
	[ZMANT_CHAN_ZPCH_BUUN] [varchar](60) NULL,
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
	[ZDPXSHPH] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_B3P_EXTRACT]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_B3P_EXTRACT](
	[CUSTOMER] [varchar](10) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CADAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CCOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CCUAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CVAAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MISSOI] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZFLGDLTA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CALENDAR]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CALENDAR](
	[WK_FG] [varchar](10) NULL,
	[PD_FG] [varchar](10) NULL,
	[VRSN] [date] NULL,
	[YR] [int] NULL,
	[MN] [int] NULL,
	[DY] [int] NULL,
	[WK_LAG] [int] NULL,
	[PD_LAG] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ISM_FORECST_MTRC]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ISM_FORECST_MTRC](
	[SALESORG] [varchar](100) NULL,
	[BU_VW] [varchar](100) NULL,
	[BU] [varchar](100) NULL,
	[MTRL] [varchar](100) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[FIN_BU] [varchar](20) NULL,
	[CNTRL_AREA] [varchar](4) NULL,
	[LOC] [varchar](100) NULL,
	[LG] [int] NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYPE_DESC] [varchar](40) NULL,
	[PROD_HIER_CATEGORY_DESC] [varchar](40) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[FISCAL_PERIOD] [varchar](44) NULL,
	[WKLY_FRCST] [float] NULL,
	[SHIP_QTY_CS_UOM] [decimal](38, 3) NULL,
	[ORIG_ORDR_QTY_CS_UOM] [decimal](38, 3) NULL,
	[ABS_CALC] [float] NULL,
	[DIST_CHNL] [varchar](100) NULL,
	[WKLY_FRCST1] [float] NULL,
	[WKLY_FRCST2] [float] NULL,
	[FISC_PD_WK] [varchar](44) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [STG].[ISM_FORECST_MTRC] ADD [PLAN_TO] [varchar](100) NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KNA_DDPO_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KNA_DDPO_FORECAST](
	[BU] [varchar](32) NULL,
	[DP_MTRIL] [varchar](32) NULL,
	[PLANTO] [varchar](32) NULL,
	[LOC] [varchar](32) NULL,
	[CHANNEL] [varchar](32) NULL,
	[SALESORG] [varchar](32) NULL,
	[FISCA_WK] [varchar](7) NULL,
	[EXPLODED_MTRIL] [varchar](32) NULL,
	[BOM_FLAG] [varchar](1) NULL,
	[BASE_MTRIL] [varchar](32) NULL,
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
	[VERSN] [date] NULL,
	[VERSN_YR] [int] NULL,
	[VERSN_MN] [int] NULL,
	[VERSN_DY] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KNA_DDPO_FORECST_HSTRY]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KNA_DDPO_FORECST_HSTRY](
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
	[ZDPFLST] [float] NULL,
	[ZDPFSACC] [float] NULL,
	[Keyfig1] [float] NULL,
	[Keyfig2] [float] NULL,
	[Keyfig3] [float] NULL,
	[ZDPFLST_GSV] [float] NULL,
	[ZDPFSACC_GSV] [float] NULL,
	[Keyfig1_GSV] [float] NULL,
	[Keyfig2_GSV] [float] NULL,
	[Keyfig3_GSV] [float] NULL,
	[ZDPFLST_ZNL] [float] NULL,
	[ZDPFSACC_ZNL] [float] NULL,
	[Keyfig1_ZNL] [float] NULL,
	[Keyfig2_ZNL] [float] NULL,
	[Keyfig3_ZNL] [float] NULL,
	[ZDPFLST_ZNK] [float] NULL,
	[ZDPFSACC_ZNK] [float] NULL,
	[Keyfig1_ZNK] [float] NULL,
	[Keyfig2_ZNK] [float] NULL,
	[Keyfig3_ZNK] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KNA_S1P_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_KNA_S1P_FORECAST](
	[CURR] [varchar](5) NULL,
	[CUST_GRP] [varchar](2) NULL,
	[CUST_SALES] [varchar](10) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIV] [varchar](2) NULL,
	[FISCPER] [varchar](7) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[MTRIL] [varchar](18) NULL,
	[SALESORG] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[AVERSN] [varchar](1) NULL,
	[Z9AEXMAT] [varchar](40) NULL,
	[Z9ALOCNO] [varchar](20) NULL,
	[ZPAMATNR] [varchar](40) NULL,
	[ZCUST] [varchar](10) NULL,
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
	[VERSN] [date] NULL,
	[VERSN_YR] [int] NULL,
	[VERSN_MN] [int] NULL,
	[VERSN_DY] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KNA_S1P_FORECST_HSTRY]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KNA_S1P_FORECST_HSTRY](
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
	[ZMANT_CHAN_ZPCH_BUUN] [varchar](60) NULL,
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
	[ZDPXSHPH] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UVW_CURRENT_PD]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************
Author : Atheeth rao koppula
Date : 28-11-2017
desc : changed to show period based on fiscal calendar week
Incident : INC0650119
*******************************/


CREATE VIEW [dbo].[UVW_CURRENT_PD]
AS
SELECT DISTINCT FISC_YR, FISC_PD,
                          (SELECT     CASE WHEN FISC_PD = 1 THEN 12 ELSE FISC_PD - 1 END AS FISC_PD
                            FROM          KNA_ECC.dbo.UVW_FISC_CAL WITH (NOLOCK)
                            WHERE      (CAST(GETDATE() as date) BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT)) AS CURR_FISC_CLOSED_PD,
                          (SELECT     CASE WHEN FISC_PD = 1 THEN FISC_YR - 1 ELSE FISC_YR END As FISC_YR
                            FROM          KNA_ECC.dbo.UVW_FISC_CAL AS UVW_FISC_CAL_5 WITH (NOLOCK)
                            WHERE     (CAST(GETDATE() as date) BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT)) AS CURR_FISC_YR
FROM         KNA_ECC.dbo.UVW_FISC_CAL AS UVW_FISC_CAL_4 WITH (NOLOCK)

WHERE (datepart(year, CAST(GETDATE() as date) ) - FISC_YR) >= 1 and (datepart(year, CAST(GETDATE() as date) ) - FISC_YR) < 2
or ( FISC_PD<=(SELECT FISC_PD FROM KNA_ECC.dbo.UVW_FISC_CAL WITH (NOLOCK)
                            WHERE      (CAST(GETDATE() as date) BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT))
--// Logic as been changed to show period based on financial week format INC0650119 //

--or ( (FISC_PD <= datepart(Month, CAST(GETDATE() as date) ) - 1 )
and  (FISC_YR = datepart(year, CAST(GETDATE() as date) ) ) )










GO
/****** Object:  View [dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS]
AS


SELECT     
	'KNA' AS Region, FRCST.SALESORG, FRCST.BU_VW AS BU, FRCST.FIN_BU + FRCST.CNTRL_AREA AS FinBU, FRCST.MTRL AS Material, FRCST.MATRL_DESC AS MaterialDesc, 
	FRCST.PROD_HIER_TYPE_DESC AS Type, FRCST.PROD_HIER_CATEGORY_DESC AS Category, FRCST.DIST_CHNL as Channel, '' AS ChannelDesc, FRCST.LOC AS Location, 
	FRCST.PROD_HIER_BRAND_DESC AS Brand, FRCST.FISCAL_PERIOD AS FiscalPD, FRCST.FISC_YR AS FiscalYear, FRCST.FISC_PD AS Period, FRCST.LG AS Lag, FRCST.SHIP_QTY_CS_UOM AS Shipment, 
	FRCST.ORIG_ORDR_QTY_CS_UOM AS Orders, FRCST.WKLY_FRCST AS Forecast, FRCST.ABS_CALC AS ABS , FRCST.WKLY_FRCST1 AS Forecast1, FRCST.WKLY_FRCST2 AS Forecast2, FRCST.FISC_PD_WK AS WEEK,
	PLNT.PLANT_NM as PLNT_DESC, FRCST.PLAN_TO

FROM  STG.[ISM_FORECST_MTRC] FRCST
left join [KG_VIEWS].[KNA].[UVW_PLANT] PLNT on --Added PLANT_NM for INC0569381 
LOC = PLNT.PLANT_NBR




GO
/****** Object:  View [dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS_2]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*,CLKP.CHNL_DESC*/
CREATE VIEW [dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS_2]
AS
SELECT     'KNA' AS Region, fst.SALESORG, fst.BU_VW AS BU, phr.PROD_HIER_BRAND_DESC AS Brand, fst.MTRL AS Material, mat.MATRL_DESC AS MaterialDesc, 
                      phr.PROD_HIER_TYPE_DESC AS Type, mat.ITEM_CATG_GRP AS Category, fst.CHNNL AS Channel, CLKP.CHNL_DESC AS ChannelDesc, 
                      cust.LVL6_CUST_NM AS Customer, fst.LOC AS Location, cal.FISC_PD AS Period, fst.FISC_WK AS FiscalWeek, cal.FISC_YR AS FiscalYear, fst.LG AS Lag, 
                      shp.SHIP_QTY_CS_UOM AS Shipment, shp.ORIG_ORDR_QTY_CS_UOM AS Orders, fst.WKLY_FRCST AS Forecast, ABS(shp.SHIP_QTY_CS_UOM - fst.WKLY_FRCST) 
                      AS ABS, ABS(SUM(shp.SHIP_QTY_CS_UOM) - SUM(fst.WKLY_FRCST)) / SUM(shp.SHIP_QTY_CS_UOM) AS MAPE, (SUM(shp.SHIP_QTY_CS_UOM) 
                      - SUM(fst.WKLY_FRCST)) / SUM(shp.SHIP_QTY_CS_UOM) AS BIAS
FROM         dbo.ISM_FORECST_MTRC AS fst INNER JOIN
                      KNA_ECC.dbo.UVW_SHIPMNT_SUMRY AS shp ON fst.SALESORG = shp.SALES_ORG AND fst.MTRL = shp.MATRL_NBR AND fst.FISCAL_WEEK = shp.FISC_PD_WK AND
                       fst.BU_VW = shp.BU INNER JOIN
                      KNA_ECC.dbo.UVW_FISC_CAL AS cal ON fst.FISC_YR = cal.FISC_YR AND fst.FISC_WK = cal.FISC_WK INNER JOIN
                      KNA_ECC.dbo.UVW_MATRL AS mat ON fst.MTRL = mat.MATRL_NBR INNER JOIN
                      KNA_ECC.dbo.UVW_PROD_HIER_FCST AS phr ON mat.PROD_HIER = phr.PROD_HIER INNER JOIN
                      KNA_ECC.dbo.UVW_CUST_HIER AS cust ON fst.PLN_TO = cust.LST_LVL_CUST_NBR INNER JOIN
                      dbo.ISM_CHNL_LKP AS CLKP ON CLKP.CHNL_ID = fst.CHNNL
WHERE     (shp.SHIP_QTY_CS_UOM <> 0) AND (cust.LST_LVL_NBR = 8) AND (cust.HIER_TM_PD = 'CURRENT') AND (cust.HI_TYP = 'D')
GROUP BY fst.SALESORG, cal.FISC_PD, fst.BU_VW, phr.PROD_HIER_BRAND_DESC, fst.MTRL, mat.MATRL_DESC, fst.LOC, fst.FISC_WK, shp.SHIP_QTY_CS_UOM, 
                      fst.WKLY_FRCST, cal.FISC_YR, mat.ITEM_CATG_GRP, cust.LVL6_CUST_NM, fst.CHNNL, CLKP.CHNL_DESC, fst.LG, shp.ORIG_ORDR_QTY_CS_UOM, 
                      phr.PROD_HIER_TYPE_DESC

GO
/****** Object:  View [dbo].[UVW_KNA_DDPO_FORECAST_SAS]    Script Date: 11/20/2018 5:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_KNA_DDPO_FORECAST_SAS]
AS
SELECT        FISC_YR_PD, FISC_YR_WK, BU, SALESORG, CHANNEL, DP_MTRIL, LOC, PLANTO, BOM_FLAG, FISCA_WK, ZDPCRMTS, ZDPWRKFC, ZDPCRMTS_GSV, ZDPWRKFC_GSV, VERSN, VERSN_YR, VERSN_MN, 
                         VERSN_DY, WK_VERSN, WK_LG, PD_VERSN, PD_LG
FROM            dbo.KNA_DDPO_FORECAST

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_ISM_FORECST_MTRC]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE NONCLUSTERED INDEX [IDX_ISM_FORECST_MTRC] ON [dbo].[ISM_FORECST_MTRC]
(
	[FISCAL_WEEK] ASC,
	[SALESORG] ASC,
	[PLN_TO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INC_KNA_DDPO_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE NONCLUSTERED INDEX [INC_KNA_DDPO_FORECAST] ON [dbo].[KNA_DDPO_FORECAST]
(
	[VERSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [INC_KNA_S1P_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE NONCLUSTERED INDEX [INC_KNA_S1P_FORECAST] ON [dbo].[KNA_S1P_FORECAST]
(
	[VERSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_STG_ISM_FORECST_MTRC]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE NONCLUSTERED INDEX [IDX_STG_ISM_FORECST_MTRC] ON [STG].[ISM_FORECST_MTRC]
(
	[SALESORG] ASC,
	[MTRL] ASC,
	[FISCAL_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ISM_CHNL_LKP] ADD  DEFAULT ((0)) FOR [DW_DEL_BIT]
GO
ALTER TABLE [dbo].[ISM_FORECST_MTRC] ADD  DEFAULT (getdate()) FOR [DW_CRE_TS]
GO
ALTER TABLE [dbo].[ISM_FORECST_MTRC] ADD  DEFAULT (user_name()) FOR [DW_CRE_USR]
GO
ALTER TABLE [dbo].[ISM_FORECST_MTRC] ADD  DEFAULT ((0)) FOR [DW_DEL_BIT]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[26] 2[26] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "fst"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "shp"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 114
               Right = 486
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cal"
            Begin Extent = 
               Top = 6
               Left = 524
               Bottom = 114
               Right = 715
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mat"
            Begin Extent = 
               Top = 6
               Left = 753
               Bottom = 114
               Right = 970
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "phr"
            Begin Extent = 
               Top = 6
               Left = 1008
               Bottom = 114
               Right = 1279
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cust"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CLKP"
            Begin Extent = 
               Top = 6
               Left = 1317
               Bottom = 114
               Right = 1485
            End
            DisplayFlags = 280
            TopColumn = 0
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_FORECAST_SHIPMENT_MAPE_BIAS_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2565
         Width = 1500
         Width = 3000
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_FORECAST_SHIPMENT_MAPE_BIAS_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_FORECAST_SHIPMENT_MAPE_BIAS_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[26] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "KNA_DDPO_FORECAST (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 254
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 98
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2565
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_KNA_DDPO_FORECAST_SAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_KNA_DDPO_FORECAST_SAS'
GO
/****** Object:  Index [IDX_KNA_DDPO_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE NONCLUSTERED COLUMNSTORE INDEX [IDX_KNA_DDPO_FORECAST] ON [dbo].[KNA_DDPO_FORECAST]
(
	[FISC_YR_WK],
	[VERSN]
)WITH (DROP_EXISTING = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_KNA_S1P_FORECAST]    Script Date: 11/20/2018 5:23:55 PM ******/
CREATE NONCLUSTERED COLUMNSTORE INDEX [IDX_KNA_S1P_FORECAST] ON [dbo].[KNA_S1P_FORECAST]
(
	[FISC_YR_WK],
	[VERSN]
)WITH (DROP_EXISTING = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [KG_DP] SET  READ_WRITE 
GO
