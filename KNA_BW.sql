USE [master]
GO
/****** Object:  Database [KNA_BW]    Script Date: 11/20/2018 5:41:53 PM ******/
CREATE DATABASE [KNA_BW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_BW', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_BW.mdf' , SIZE = 318464000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KNA_BW_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_BW_log.ldf' , SIZE = 15692736KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_BW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_BW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_BW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_BW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_BW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_BW] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_BW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_BW] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_BW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_BW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_BW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_BW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_BW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_BW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_BW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_BW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_BW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_BW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_BW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_BW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_BW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_BW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_BW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_BW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_BW] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_BW] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_BW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_BW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_BW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_BW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_BW', N'ON'
GO
USE [KNA_BW]
GO
/****** Object:  User [US\SQL_SPCLTY_RMBSMT_USERS_R]    Script Date: 11/20/2018 5:41:53 PM ******/
CREATE USER [US\SQL_SPCLTY_RMBSMT_USERS_R] FOR LOGIN [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:41:53 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:41:54 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:41:55 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:41:55 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:41:56 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:41:56 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_ACCENTURE]    Script Date: 11/20/2018 5:41:57 PM ******/
CREATE USER [SQL_ACCENTURE] FOR LOGIN [SQL_ACCENTURE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:41:57 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:41:58 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:41:58 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:41:59 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:41:59 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:42:00 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:42:00 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:42:01 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:42:01 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:42:02 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:42:02 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:42:03 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:42:03 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:42:04 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:42:04 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:42:05 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_OHZOH_B_IND]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_OHZOH_B_IND
   PURPOSE & 
   Description : This script will populate data into dbo.OHZOH_B_IND from STG.OHZOH_B_IND
                 for the DELTA load.
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       11/10/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_OHZOH_B_IND]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

/****** Delete the existing key records in the target table ******/

DELETE [KNA_BW].dbo.OHZOH_B_IND 
 FROM [KNA_BW].dbo.OHZOH_B_IND DBO
INNER JOIN
( SELECT DISTINCT [/B299/S_IPNUM_BB], [/B299/S_IPITM_BB] FROM [KNA_BW].STG.OHZOH_B_IND) STG
ON DBO.[/B299/S_IPNUM_BB] = STG.[/B299/S_IPNUM_BB]
AND DBO.[/B299/S_IPITM_BB] = STG.[/B299/S_IPITM_BB]

/****** Insert the records from Stage table into target table ******/
INSERT INTO [KNA_BW].dbo.OHZOH_B_IND 
 SELECT 
		[/B299/S_IPNUM_BB]
		,[/B299/S_IPITM_BB]
		,[FISCVARNT]
		,[RECORDMODE]
		,[/B299/S_TYPE]
		,[/B299/S_GCRTYP]
		,[SOLD_TO]
		,[SHIP_TO]
		,[PAYER]
		,[/B299/S_RECIP]
		,[/B299/S_GCRNUM]
		,[/B299/S_POSNR]
		,[/B299/S_IPAGRMT]
		,[MATERIAL]
		,[MAT_DESC]
		,[/B299/S_DCIND]
		,[/B299/S_BUDAT]
		,[/BIC/ZPRF_PER]
		,[/B299/S_PCITM]
		,[PRICE_DATE]
		,[/B299/S_SETLDT]
		,[/B299/S_KWMENG]
		,[/B299/S_NETPR]
		,[/B299/S_IPNETWR]
		,[/B299/S_WAVWR]
		,[/BIC/ZSFISCYR]
		,[SUBTOTAL_1]
		,[UNIT]
		,[FUND]
		,[FUND_TXT]
		,[FUNDS_CTR]
		,[FUNDCTR_TXT]
		,[/BIC/ZCMMT_ITM]
		,[CMTIT_TXT]
		,[/BIC/ZSETLPER3]
		,[/BIC/ZMAT_CLAS]
		,[/BIC/C_ABRA001]
		,[CUSTOMER]
		,[CUST_TXT]
		,[/BIC/ZSETLEY]
		,[/B299/S_PYROL]
		,[DOC_CURRCY]
		,[FM_AREA]
		,[/B299/S_SSTAT]
		,[/B299/S_CRRSN]
		,[/BIC/ZCNAME]
		,[/BIC/ZKNAME]
		,[/BIC/ZTNAME]
		,[/BIC/ZNAME]
		,[/BIC/ZZNAME]
		,[/BIC/ZSORT2]
		,[/B299/S_ASTAT]
 FROM [KNA_BW].STG.OHZOH_B_IND
GROUP BY
		[/B299/S_IPNUM_BB]
		,[/B299/S_IPITM_BB]
		,[FISCVARNT]
		,[RECORDMODE]
		,[/B299/S_TYPE]
		,[/B299/S_GCRTYP]
		,[SOLD_TO]
		,[SHIP_TO]
		,[PAYER]
		,[/B299/S_RECIP]
		,[/B299/S_GCRNUM]
		,[/B299/S_POSNR]
		,[/B299/S_IPAGRMT]
		,[MATERIAL]
		,[MAT_DESC]
		,[/B299/S_DCIND]
		,[/B299/S_BUDAT]
		,[/BIC/ZPRF_PER]
		,[/B299/S_PCITM]
		,[PRICE_DATE]
		,[/B299/S_SETLDT]
		,[/B299/S_KWMENG]
		,[/B299/S_NETPR]
		,[/B299/S_IPNETWR]
		,[/B299/S_WAVWR]
		,[/BIC/ZSFISCYR]
		,[SUBTOTAL_1]
		,[UNIT]
		,[FUND]
		,[FUND_TXT]
		,[FUNDS_CTR]
		,[FUNDCTR_TXT]
		,[/BIC/ZCMMT_ITM]
		,[CMTIT_TXT]
		,[/BIC/ZSETLPER3]
		,[/BIC/ZMAT_CLAS]
		,[/BIC/C_ABRA001]
		,[CUSTOMER]
		,[CUST_TXT]
		,[/BIC/ZSETLEY]
		,[/B299/S_PYROL]
		,[DOC_CURRCY]
		,[FM_AREA]
		,[/B299/S_SSTAT]
		,[/B299/S_CRRSN]
		,[/BIC/ZCNAME]
		,[/BIC/ZKNAME]
		,[/BIC/ZTNAME]
		,[/BIC/ZNAME]
		,[/BIC/ZZNAME]
		,[/BIC/ZSORT2]
		,[/B299/S_ASTAT]
			
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END





GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_OHZOH_VSTX]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_OHZOH_VSTX
   PURPOSE & 
   Description : This script will populate data into dbo.OHZOH_VSTX from STG.OHZOH_VSTX
                 for the DELTA load.
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       11/10/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_OHZOH_VSTX]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

/****** Delete the existing key records in the target table ******/

DELETE [KNA_BW].dbo.OHZOH_VSTX 
 FROM [KNA_BW].dbo.OHZOH_VSTX DBO1
INNER JOIN
( SELECT DISTINCT [/B299/S_GCRNUM],[/B299/S_GCRITEM] FROM [KNA_BW].STG.OHZOH_VSTX) STG
ON DBO1.[/B299/S_GCRNUM] = STG.[/B299/S_GCRNUM]
AND DBO1.[/B299/S_GCRITEM] = STG.[/B299/S_GCRITEM]

/****** Insert the records from Stage table into target table ******/
INSERT INTO [KNA_BW].dbo.OHZOH_VSTX 
 SELECT 
		[/B299/S_GCRNUM]
		,[/B299/S_GCRITEM]
		,[FISCVARNT]
		,[RECORDMODE]
		,[/B299/S_IPAGRMT]
		,[/B299/S_GCRTYP]
		,[MATERIAL]
		,[MAT_DESC]
		,[/B299/S_CROGN]
		,[/B299/S_CRRSN]
		,[CRRSN_TXT]
		,[/B299/S_RJRSN]
		,[REFER_DOC]
		,[/BIC/ZREFDOC]
		,[/BIC/ZZCHKCMT]
		,[/BIC/ZZINTCMT]
		,[/BIC/ZSETLFLAG]
		,[/BIC/ZTDATE]
		,[BILL_DATE]
		,[SOLD_TO]
 FROM [KNA_BW].STG.OHZOH_VSTX
GROUP BY
         [/B299/S_GCRNUM]
		,[/B299/S_GCRITEM]
		,[FISCVARNT]
		,[RECORDMODE]
		,[/B299/S_IPAGRMT]
		,[/B299/S_GCRTYP]
		,[MATERIAL]
		,[MAT_DESC]
		,[/B299/S_CROGN]
		,[/B299/S_CRRSN]
		,[CRRSN_TXT]
		,[/B299/S_RJRSN]
		,[REFER_DOC]
		,[/BIC/ZREFDOC]
		,[/BIC/ZZCHKCMT]
		,[/BIC/ZZINTCMT]
		,[/BIC/ZSETLFLAG]
		,[/BIC/ZTDATE]
		,[BILL_DATE]
		,[SOLD_TO]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END





GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_BAL_SHET_DATA]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: 3/23/2017
-- Description:	Maintain BAL_SHET_Data
--              If Period Data Exists in the STG Tables Remove Data
--              from dbo Tables.  Insert STG data into dbo Tables.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_BAL_SHET_DATA]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KNA_BW.dbo.OHZOH_BPC62
            WHERE [FISCPER] in
               ( SELECT distinct [FISCPER] FROM KNA_BW.STG.OHZOH_BPC62 );

          INSERT INTO KNA_BW.dbo.OHZOH_BPC62
            SELECT *
            FROM KNA_BW.STG.OHZOH_BPC62 ;

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
			    THROW 60001, 'BAL_SHET Maintenance Failed', 1;
		  END CATCH;
		END     
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MAINT_COPA_DATA]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: 3/23/2017
-- Description:	Maintain COPA_Data
--              If Period Data Exists in the STG Tables Remove Data
--              from dbo Tables.  Insert STG data into dbo Tables.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MAINT_COPA_DATA]
WITH EXEC AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			BEGIN TRY
			BEGIN TRANSACTION
	
        	DELETE FROM KNA_BW.dbo.AZD_COPB200
            WHERE [FISCPER] in
               ( SELECT distinct [FISCPER] FROM KNA_BW.STG.AZD_COPB200 );

          INSERT INTO KNA_BW.dbo.AZD_COPB200
            SELECT *
            FROM KNA_BW.STG.AZD_COPB200 ;

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
			    THROW 60001, 'COPA Maintenance Failed', 1;
		  END CATCH;
		END     
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_USP_PROC_Unrvl_Co_Code_Hier]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Wynter Johnson
-- Create date: March 27, 2017
-- Description:	Unravel the Company Code Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_USP_PROC_Unrvl_Co_Code_Hier]
WITH EXEC AS CALLER
AS
DECLARE   @LEVEL      SMALLINT;
DECLARE   @COUNT      SMALLINT;

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
  	    DELETE [KNA_BW].[STG].CO_CODE_HIER_UNRVL;

        BEGIN
      	   --unravel HIERARCHY
			INSERT INTO [KNA_BW].[STG].CO_CODE_HIER_UNRVL (NODEID, NODENAME, LVL_NBR, LVL1_NODEID, LVL1_NODENAME)
			    SELECT h.NODEID, h.NODENAME, 1, h.NODEID, h.NODENAME
			    FROM [KNA_BW].[dbo].HFMDDJUO h
			    WHERE h.TLEVEL='1'
				    and h.OBJVERS='A';

			SET @COUNT = @@ROWCOUNT;       

      		SET @LEVEL = 1;
      		WHILE @COUNT>0
      		BEGIN                
      			SET @LEVEL = @LEVEL+1;
				if @LEVEL > 10 
				BEGIN
      				IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    				THROW 60002, 'LEVELS exceeded', 1;
				END   
				INSERT INTO  [KNA_BW].[STG].CO_CODE_HIER_UNRVL (NODEID, NODENAME, LVL_NBR, 
        							LVL1_NODEID, LVL2_NODEID, LVL3_NODEID, LVL4_NODEID, LVL5_NODEID, 
        							LVL6_NODEID, LVL7_NODEID, LVL8_NODEID, LVL9_NODEID, LVL10_NODEID,
       								LVL1_NODENAME, LVL2_NODENAME, LVL3_NODENAME, 
        							LVL4_NODENAME, LVL5_NODENAME, LVL6_NODENAME, LVL7_NODENAME, 
        							LVL8_NODENAME, LVL9_NODENAME, LVL10_NODENAME)						 
        			SELECT h.NODEID, h.NODENAME, @LEVEL, z.LVL1_NODEID,
        				case when @LEVEL=2 then h.NODEID else z.LVL2_NODEID end, 
        				case when @LEVEL=3 then h.NODEID else z.LVL3_NODEID end, 
        				case when @LEVEL=4 then h.NODEID else z.LVL4_NODEID end, 
        				case when @LEVEL=5 then h.NODEID else z.LVL5_NODEID end, 
        				case when @LEVEL=6 then h.NODEID else z.LVL6_NODEID end, 
        				case when @LEVEL=7 then h.NODEID else z.LVL7_NODEID end, 
        				case when @LEVEL=8 then h.NODEID else z.LVL8_NODEID end, 
        				case when @LEVEL=9 then h.NODEID else z.LVL9_NODEID end, 
        				case when @LEVEL=10 then h.NODEID else z.LVL10_NODEID end,
        				z.LVL1_NODENAME,
        				case when @LEVEL=2 then h.NODENAME else z.LVL2_NODENAME end, 
        				case when @LEVEL=3 then h.NODENAME else z.LVL3_NODENAME end, 
        				case when @LEVEL=4 then h.NODENAME else z.LVL4_NODENAME end, 
        				case when @LEVEL=5 then h.NODENAME else z.LVL5_NODENAME end, 
        				case when @LEVEL=6 then h.NODENAME else z.LVL6_NODENAME end, 
        				case when @LEVEL=7 then h.NODENAME else z.LVL7_NODENAME end, 
        				case when @LEVEL=8 then h.NODENAME else z.LVL8_NODENAME end, 
        				case when @LEVEL=9 then h.NODENAME else z.LVL9_NODENAME end, 
        				case when @LEVEL=10 then h.NODENAME else z.LVL10_NODENAME end
        			FROM [KNA_BW].[dbo].HFMDDJUO h, [KNA_BW].[STG].CO_CODE_HIER_UNRVL z
        			WHERE z.LVL_NBR=(@LEVEL-1)
						and convert(int,h.TLEVEL)=@LEVEL
						and h.PARENTID=z.NODEID
						and h.OBJVERS='A';
        		SET @COUNT = @@ROWCOUNT;  
				print(concat('LEVEL ', @LEVEL, ' COUNT ', @COUNT));   
			END;
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
/****** Object:  Table [dbo].[AZD_BPC5600]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_BPC5600](
	[CUSTOMER] [varchar](10) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[/BIC/ZAOP_ACCT] [varchar](18) NULL,
	[/BIC/ZAPPTYP] [varchar](3) NULL,
	[/BIC/ZBPCACCT] [varchar](20) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/C_AALT002] [varchar](30) NULL,
	[MA_DATTIME] [varchar](23) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[AMOUNT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_CON6100]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_CON6100](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZC_AGRDL] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRCS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRLBS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRECH] [decimal](17, 3) NULL,
	[/BIC/ZS_ACRSD] [decimal](17, 2) NULL,
	[/BIC/ZG_QVVGPK] [decimal](17, 3) NULL,
	[/BIC/ZC_ACTCOP] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZC_UPRCAS] [varchar](3) NULL,
	[/BIC/ZC_UPRECH] [varchar](3) NULL,
	[/BIC/ZC_UGRLBS] [varchar](3) NULL,
	[/BIC/ZG_UVVGPK] [varchar](3) NULL,
	[/BIC/ZC_ASPA] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_CON6100_AGG]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_CON6100_AGG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZC_AGRDL] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRCS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRLBS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRECH] [decimal](17, 3) NULL,
	[/BIC/ZS_ACRSD] [decimal](17, 2) NULL,
	[/BIC/ZG_QVVGPK] [decimal](17, 3) NULL,
	[/BIC/ZC_ACTCOP] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZC_ASPA] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_CON6500]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_CON6500](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[/BIC/ZC_AGRDL] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRCS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRLBS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRECH] [decimal](17, 3) NULL,
	[/BIC/ZG_QVVGPK] [decimal](17, 3) NULL,
	[/BIC/ZC_ACTCOP] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZC_UPRCAS] [varchar](3) NULL,
	[/BIC/ZC_UPRECH] [varchar](3) NULL,
	[/BIC/ZC_UGRLBS] [varchar](3) NULL,
	[/BIC/ZG_UVVGPK] [varchar](3) NULL,
	[/BIC/ZC_ASPA] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRKGS] [decimal](17, 3) NULL,
	[/BIC/ZC_UNETKG] [varchar](3) NULL,
	[InfoProvider] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P10]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P10](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P11]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P11](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P12]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P12](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018001]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018001](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018002]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018002](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018003]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018003](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018004]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018004](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018005]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018005](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018006]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018006](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018007]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018007](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P2018008]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P2018008](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P4]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P4](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_B4P5]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_B4P5](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_COPB200_b4P9]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_COPB200_b4P9](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_LES5600]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_LES5600](
	[CUSTOMER] [varchar](10) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
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
	[/BIC/ZT_SAOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OVLAMT] [decimal](17, 2) NULL,
	[InfoProvider] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_OR52]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_OR52](
	[REQUEST] [varchar](30) NULL,
	[DATAPAKID] [decimal](6, 0) NULL,
	[RECORD] [int] NULL,
	[PLANT] [varchar](4) NULL,
	[/BIC/ZRESO_NET] [varchar](10) NULL,
	[WORKCENTER] [varchar](8) NULL,
	[RESTYPE] [varchar](4) NULL,
	[/BIC/ZSHIFT] [varchar](2) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PM_ORDER] [varchar](12) NULL,
	[CALDAY] [date] NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZDN_OP_A] [decimal](17, 3) NULL,
	[/BIC/ZDN_ME_A] [decimal](17, 3) NULL,
	[/BIC/ZUT_PRD_A] [decimal](17, 3) NULL,
	[/BIC/ZTR_THRPT] [decimal](17, 3) NULL,
	[/BIC/ZTR_MATVL] [float] NULL,
	[/BIC/ZTR_PKMVL] [float] NULL,
	[/BIC/ZPROD_FRM] [decimal](17, 3) NULL,
	[/BIC/ZACT_RWMT] [decimal](17, 3) NULL,
	[/BIC/ZTR_RAWVL] [float] NULL,
	[/BIC/ZAT_RAWVL] [float] NULL,
	[/BIC/ZTR_WSTWT] [decimal](17, 3) NULL,
	[PO_UNIT] [varchar](3) NULL,
	[OUTP_UNIT] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[/BIC/ZAT_SCPWT] [decimal](17, 3) NULL,
	[/BIC/ZTR_PAKWT] [decimal](17, 3) NULL,
	[/BIC/ZAT_PKGWT] [decimal](17, 3) NULL,
	[/BIC/ZNT_PKGWT] [decimal](17, 3) NULL,
	[/BIC/ZTR_PACK] [decimal](17, 3) NULL,
	[/BIC/ZAT_PACK] [decimal](17, 3) NULL,
	[/BIC/ZNT_PACK] [decimal](17, 3) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[/BIC/ZTR_USGVL] [float] NULL,
	[/BIC/ZAT_USGVL] [float] NULL,
	[/BIC/ZTR_CR_SZ] [decimal](17, 3) NULL,
	[/BIC/ZAT_CR_SZ] [decimal](17, 3) NULL,
	[/BIC/ZCRE_HR_T] [decimal](17, 3) NULL,
	[/BIC/ZCRE_HR_A] [decimal](17, 3) NULL,
	[/BIC/ZTR_CR_VL] [float] NULL,
	[/BIC/ZTR_FRZCT] [float] NULL,
	[/BIC/ZTR_STDCT] [float] NULL,
	[/BIC/ZAT_FRZCT] [float] NULL,
	[/BIC/ZAT_STDCT] [float] NULL,
	[/BIC/ZPLQTY_OR] [decimal](17, 3) NULL,
	[/BIC/ZPL_LN_HR] [decimal](17, 3) NULL,
	[/BIC/ZQLF_RATE] [decimal](17, 3) NULL,
	[/BIC/ZPLN_RATE] [decimal](17, 3) NULL,
	[/BIC/ZAT_CR_VL] [float] NULL,
	[/BIC/ZLNE_HR_A] [decimal](17, 3) NULL,
	[/BIC/ZDN_TME_A] [decimal](17, 3) NULL,
	[/BIC/ZTR_SCPWT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_SLC8800]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_SLC8800](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[/BIC/ZC_DISPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FADPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FEAPER] [decimal](17, 3) NULL,
	[/BIC/ZP_INCCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPDD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPRD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRPS] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQE] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQK] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQP] [decimal](17, 3) NULL,
	[/BIC/ZS_PROCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINSE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ADIVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ADJVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CTFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EDLPSP] [decimal](17, 2) NULL,
	[/BIC/ZT_EIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ESPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_SUPVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_TSPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[InfoProvider] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_SLC8800_HIST]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_SLC8800_HIST](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[/BIC/ZC_DISPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FADPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FEAPER] [decimal](17, 3) NULL,
	[/BIC/ZP_INCCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPDD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPRD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRPS] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQE] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQK] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQP] [decimal](17, 3) NULL,
	[/BIC/ZS_PROCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINSE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ADIVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ADJVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CTFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EDLPSP] [decimal](17, 2) NULL,
	[/BIC/ZT_EIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ESPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_SUPVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_TSPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[InfoProvider] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_SVP1300]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_SVP1300](
	[CUSTOMER] [varchar](10) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZCANQTY] [decimal](17, 3) NULL,
	[/BIC/ZCANQTYE] [decimal](17, 3) NULL,
	[/BIC/ZCANQTYK] [decimal](17, 3) NULL,
	[/BIC/ZCANQTYP] [decimal](17, 3) NULL,
	[/BIC/ZFWBUY] [decimal](17, 3) NULL,
	[/BIC/ZFWBUYE] [decimal](17, 3) NULL,
	[/BIC/ZFWBUYK] [decimal](17, 3) NULL,
	[/BIC/ZFWBUYP] [decimal](17, 3) NULL,
	[/BIC/ZS_CANDOL] [decimal](17, 2) NULL,
	[/BIC/ZS_FWBDOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PCBVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_PCBVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_PCBVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_PCBVOP] [decimal](17, 3) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PSHPRC] [decimal](17, 2) NULL,
	[/BIC/ZS_SBAVOD] [decimal](17, 2) NULL,
	[/BIC/ZS_SBAVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_SBAVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_SBAVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_SBAVOP] [decimal](17, 3) NULL,
	[/BIC/ZS_SSHPRC] [decimal](17, 2) NULL,
	[/BIC/ZS_TPBDOL] [decimal](17, 2) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZTPBVOL] [decimal](17, 2) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[InfoProvider] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_TPM8800]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_TPM8800](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[PERIOD_TYP] [varchar](2) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[CRM_PR_A05] [varchar](32) NULL,
	[PR_CAT_SAL] [varchar](32) NULL,
	[CO_AREA] [varchar](4) NULL,
	[/BIC/ZC_DISPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FADPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FEAPER] [decimal](17, 3) NULL,
	[/BIC/ZP_INCCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPDD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPRD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRPS] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQE] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQK] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQP] [decimal](17, 3) NULL,
	[/BIC/ZS_PROCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCD] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZS_TPINCE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINSE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ADIVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ADJVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[/BIC/ZT_CTFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EDLPSP] [decimal](17, 2) NULL,
	[/BIC/ZT_EIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ESPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_SUPVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_TSPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[/BIC/ZT_ADJPER] [decimal](17, 3) NULL,
	[/BIC/ZT_SAOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OVLAMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_TPM8800_AGG]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_TPM8800_AGG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[/BIC/ZC_DISPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FADPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FEAPER] [decimal](17, 3) NULL,
	[/BIC/ZP_INCCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPDD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPRD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRPS] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQE] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQK] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQP] [decimal](17, 3) NULL,
	[/BIC/ZS_PROCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINSE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ADIVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ADJVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CTFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EDLPSP] [decimal](17, 2) NULL,
	[/BIC/ZT_EIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ESPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_SUPVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_TSPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[/BIC/ZT_ADJPER] [decimal](17, 3) NULL,
	[InfoProvider] [varchar](100) NULL,
	[/BIC/ZT_SAOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OVLAMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5200]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5200](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLANT] [varchar](4) NOT NULL,
	[/BIC/ZSTOCK] [varchar](4) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[/BIC/ZCODEDATE] [varchar](8) NOT NULL,
	[/BIC/ZDLX_LOC] [varchar](10) NOT NULL,
	[/BIC/ZMFG_DATE] [date] NOT NULL,
	[QUANTITY] [decimal](17, 3) NULL,
	[CREATEDON] [date] NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[/1RW/S_CVFDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[/BIC/ZMFG_DT] [date] NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZADDFEED] [varchar](6) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PLANT] ASC,
	[/BIC/ZSTOCK] ASC,
	[MATERIAL] ASC,
	[/BIC/ZCODEDATE] ASC,
	[/BIC/ZDLX_LOC] ASC,
	[/BIC/ZMFG_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5200_20170508]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5200_20170508](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLANT] [varchar](4) NOT NULL,
	[/BIC/ZSTOCK] [varchar](4) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[/BIC/ZCODEDATE] [varchar](8) NOT NULL,
	[/BIC/ZDLX_LOC] [varchar](10) NOT NULL,
	[/BIC/ZMFG_DATE] [date] NOT NULL,
	[QUANTITY] [decimal](17, 3) NULL,
	[CREATEDON] [date] NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[/1RW/S_CVFDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[/BIC/ZMFG_DT] [date] NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZADDFEED] [varchar](6) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5300]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5300](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[STOR_LOC] [varchar](4) NULL,
	[CREATEDON] [date] NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZMFG_DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5300_20170508]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5300_20170508](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[STOR_LOC] [varchar](4) NULL,
	[CREATEDON] [date] NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZMFG_DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5400]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5400](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLANT] [varchar](4) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CREATEDON] [date] NULL,
	[BATCH] [varchar](10) NULL,
	[/BIC/ZRECTYPE] [varchar](1) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZMFG_DATE] [date] NULL,
	[/BIC/ZPERIOD] [decimal](2, 0) NULL,
	[TIME] [time](7) NULL,
	[/BIC/ZSTATUS] [varchar](1) NULL,
	[/BIC/ZDMGLGMNG] [decimal](17, 3) NULL,
	[/BIC/ZHLDLGMNG] [decimal](17, 3) NULL,
	[/BIC/ZLGMNG] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[/BIC/ZSAP0001] [decimal](17, 3) NULL,
	[/BIC/ZSAPDAMG] [decimal](17, 3) NULL,
	[/BIC/ZSAPQUAL] [decimal](17, 3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5400_20170508]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5400_20170508](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLANT] [varchar](4) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CREATEDON] [date] NULL,
	[BATCH] [varchar](10) NULL,
	[/BIC/ZRECTYPE] [varchar](1) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZMFG_DATE] [date] NULL,
	[/BIC/ZPERIOD] [decimal](2, 0) NULL,
	[TIME] [time](7) NULL,
	[/BIC/ZSTATUS] [varchar](1) NULL,
	[/BIC/ZDMGLGMNG] [decimal](17, 3) NULL,
	[/BIC/ZHLDLGMNG] [decimal](17, 3) NULL,
	[/BIC/ZLGMNG] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[/BIC/ZSAP0001] [decimal](17, 3) NULL,
	[/BIC/ZSAPDAMG] [decimal](17, 3) NULL,
	[/BIC/ZSAPQUAL] [decimal](17, 3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5500]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5500](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[STOR_LOC] [varchar](4) NULL,
	[CREATEDON] [date] NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZMFG_DATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZEXPDATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_WM5500_20170508]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_WM5500_20170508](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[STOR_LOC] [varchar](4) NULL,
	[CREATEDON] [date] NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZMFG_DATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZEXPDATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_ZFPL00]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_ZFPL00](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[GL_ACCOUNT] [varchar](10) NULL,
	[/BIC/ZGL_ACCNT] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPC_FA] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AZD_ZFPL00_OLD]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AZD_ZFPL00_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[GL_ACCOUNT] [varchar](10) NULL,
	[/BIC/ZGL_ACCNT] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPC_FA] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BW_MZMTL_CUST]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BW_MZMTL_CUST](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZCUST] [varchar](10) NULL,
	[ZMTL_CUST] [varchar](18) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/ZBPC_CATG] [varchar](60) NULL,
	[/BIC/Z_PLANTO] [varchar](10) NULL,
	[PRODH4] [varchar](18) NULL,
	[FMD_FISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BW_MZMTL_CUST_BKP]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BW_MZMTL_CUST_BKP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZCUST] [varchar](10) NULL,
	[ZMTL_CUST] [varchar](18) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/ZBPC_CATG] [varchar](60) NULL,
	[/BIC/Z_PLANTO] [varchar](10) NULL,
	[PRODH4] [varchar](18) NULL,
	[FMD_FISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BW_MZMTL_CUST_OLD]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BW_MZMTL_CUST_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZCUST] [varchar](10) NULL,
	[ZMTL_CUST] [varchar](18) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/ZBPC_CATG] [varchar](60) NULL,
	[/BIC/Z_PLANTO] [varchar](10) NULL,
	[PRODH4] [varchar](18) NULL,
	[FMD_FISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 5:42:17 PM ******/
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
/****** Object:  Table [dbo].[EB_MZMTL_CUST]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EB_MZMTL_CUST](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ZCUST] [varchar](10) NULL,
	[ZMTL_CUST] [varchar](18) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/ZBPC_CATG] [varchar](60) NULL,
	[/BIC/Z_PLANTO] [varchar](10) NULL,
	[PRODH4] [varchar](18) NULL,
	[FMD_FISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[EB_MZMTL_CUST] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[HFMDDJUO]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HFMDDJUO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[HIEID] [varchar](25) NULL,
	[OBJVERS] [varchar](1) NULL,
	[NODEID] [decimal](8, 0) NULL,
	[IOBJNM] [varchar](30) NULL,
	[NODENAME] [varchar](1333) NULL,
	[TLEVEL] [decimal](2, 0) NULL,
	[LINK] [varchar](1) NULL,
	[PARENTID] [decimal](8, 0) NULL,
	[CHILDID] [decimal](8, 0) NULL,
	[NEXTID] [decimal](8, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HFMDDJUO_OLD]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HFMDDJUO_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[HIEID] [varchar](25) NULL,
	[OBJVERS] [varchar](1) NULL,
	[NODEID] [decimal](8, 0) NULL,
	[IOBJNM] [varchar](30) NULL,
	[NODENAME] [varchar](1333) NULL,
	[TLEVEL] [decimal](2, 0) NULL,
	[LINK] [varchar](1) NULL,
	[PARENTID] [decimal](8, 0) NULL,
	[CHILDID] [decimal](8, 0) NULL,
	[NEXTID] [decimal](8, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_B_IND]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_B_IND](
	[/B299/S_IPNUM_BB] [varchar](10) NOT NULL,
	[/B299/S_IPITM_BB] [decimal](6, 0) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[RECORDMODE] [varchar](1) NOT NULL,
	[/B299/S_TYPE] [varchar](4) NULL,
	[/B299/S_GCRTYP] [varchar](4) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[/B299/S_RECIP] [varchar](10) NULL,
	[/B299/S_GCRNUM] [varchar](10) NULL,
	[/B299/S_POSNR] [decimal](6, 0) NULL,
	[/B299/S_IPAGRMT] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MAT_DESC] [varchar](40) NULL,
	[/B299/S_DCIND] [varchar](1) NULL,
	[/B299/S_BUDAT] [date] NULL,
	[/BIC/ZPRF_PER] [decimal](7, 0) NULL,
	[/B299/S_PCITM] [decimal](6, 0) NULL,
	[PRICE_DATE] [date] NULL,
	[/B299/S_SETLDT] [date] NULL,
	[/B299/S_KWMENG] [decimal](17, 3) NULL,
	[/B299/S_NETPR] [decimal](17, 2) NULL,
	[/B299/S_IPNETWR] [decimal](17, 2) NULL,
	[/B299/S_WAVWR] [decimal](17, 2) NULL,
	[/BIC/ZSFISCYR] [decimal](4, 0) NULL,
	[SUBTOTAL_1] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[FUND] [varchar](20) NULL,
	[FUND_TXT] [varchar](40) NULL,
	[FUNDS_CTR] [varchar](16) NULL,
	[FUNDCTR_TXT] [varchar](40) NULL,
	[/BIC/ZCMMT_ITM] [varchar](14) NULL,
	[CMTIT_TXT] [varchar](40) NULL,
	[/BIC/ZSETLPER3] [decimal](3, 0) NULL,
	[/BIC/ZMAT_CLAS] [varchar](36) NULL,
	[/BIC/C_ABRA001] [varchar](60) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[CUST_TXT] [varchar](40) NULL,
	[/BIC/ZSETLEY] [decimal](7, 0) NULL,
	[/B299/S_PYROL] [varchar](2) NULL,
	[DOC_CURRCY] [varchar](5) NULL,
	[FM_AREA] [varchar](4) NULL,
	[/B299/S_SSTAT] [varchar](1) NULL,
	[/B299/S_CRRSN] [varchar](3) NULL,
	[/BIC/ZCNAME] [varchar](10) NULL,
	[/BIC/ZKNAME] [varchar](10) NULL,
	[/BIC/ZTNAME] [varchar](10) NULL,
	[/BIC/ZNAME] [varchar](30) NULL,
	[/BIC/ZZNAME] [varchar](10) NULL,
	[/BIC/ZSORT2] [varchar](20) NULL,
	[/B299/S_ASTAT] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[/B299/S_IPNUM_BB] ASC,
	[/B299/S_IPITM_BB] ASC,
	[FISCVARNT] ASC,
	[RECORDMODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P10]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P10](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P11]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P11](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P12]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P12](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018001]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018001](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018002]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018002](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018003]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018003](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018004]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018004](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018004_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018004_bck](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018005]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018005](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018005_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018005_bck](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018006]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018006](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018006_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018006_bck](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018007]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018007](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P2018008]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P2018008](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P4]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P4](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_B4P5]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_B4P5](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P6]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P6](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P7]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P7](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P8]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P8](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_b4P9]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_b4P9](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_BPC62_P3]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_BPC62_P3](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OHZOH_VSTX]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OHZOH_VSTX](
	[/B299/S_GCRNUM] [varchar](10) NOT NULL,
	[/B299/S_GCRITEM] [decimal](6, 0) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[RECORDMODE] [varchar](1) NOT NULL,
	[/B299/S_IPAGRMT] [varchar](10) NULL,
	[/B299/S_GCRTYP] [varchar](4) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MAT_DESC] [varchar](40) NULL,
	[/B299/S_CROGN] [varchar](1) NULL,
	[/B299/S_CRRSN] [varchar](3) NULL,
	[CRRSN_TXT] [varchar](40) NULL,
	[/B299/S_RJRSN] [varchar](4) NULL,
	[REFER_DOC] [varchar](10) NULL,
	[/BIC/ZREFDOC] [varchar](16) NULL,
	[/BIC/ZZCHKCMT] [varchar](50) NULL,
	[/BIC/ZZINTCMT] [varchar](50) NULL,
	[/BIC/ZSETLFLAG] [varchar](1) NULL,
	[/BIC/ZTDATE] [date] NULL,
	[BILL_DATE] [date] NULL,
	[SOLD_TO] [varchar](10) NULL,
	[/BIC/ZZINTCMT1] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[/B299/S_GCRNUM] ASC,
	[/B299/S_GCRITEM] ASC,
	[FISCVARNT] ASC,
	[RECORDMODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PZCUST_MAT]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PZCUST_MAT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZCUST_MAT] [varchar](10) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/Z_PLANTO] [varchar](10) NULL,
	[PRODH4] [varchar](18) NULL,
	[FMD_FISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PZCUST_MAT_OLD]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PZCUST_MAT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZCUST_MAT] [varchar](10) NULL,
	[OBJVERS] [varchar](1) NULL,
	[CHANGED] [varchar](1) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/Z_PLANTO] [varchar](10) NULL,
	[PRODH4] [varchar](18) NULL,
	[FMD_FISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_BPC5600]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_BPC5600](
	[CUSTOMER] [varchar](10) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[/BIC/ZAOP_ACCT] [varchar](18) NULL,
	[/BIC/ZAPPTYP] [varchar](3) NULL,
	[/BIC/ZBPCACCT] [varchar](20) NULL,
	[/BIC/ZBPC_BUUN] [varchar](60) NULL,
	[/BIC/C_AALT002] [varchar](30) NULL,
	[MA_DATTIME] [varchar](23) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[AMOUNT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_CON6100]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_CON6100](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[MA_DATTIME] [varchar](23) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZC_AGRDL] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRCS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRLBS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRECH] [decimal](17, 3) NULL,
	[/BIC/ZS_ACRSD] [decimal](17, 2) NULL,
	[/BIC/ZG_QVVGPK] [decimal](17, 3) NULL,
	[/BIC/ZC_ACTCOP] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZC_UPRCAS] [varchar](3) NULL,
	[/BIC/ZC_UPRECH] [varchar](3) NULL,
	[/BIC/ZC_UGRLBS] [varchar](3) NULL,
	[/BIC/ZG_UVVGPK] [varchar](3) NULL,
	[/BIC/ZC_ASPA] [decimal](17, 2) NULL,
	[/BIC/ZFLGDLTA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_CON6100_AGG]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_CON6100_AGG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZC_AGRDL] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRCS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRLBS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRECH] [decimal](17, 3) NULL,
	[/BIC/ZS_ACRSD] [decimal](17, 2) NULL,
	[/BIC/ZG_QVVGPK] [decimal](17, 3) NULL,
	[/BIC/ZC_ACTCOP] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZC_ASPA] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_CON6500]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_CON6500](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[MA_DATTIME] [varchar](23) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZC_AGRDL] [decimal](17, 2) NULL,
	[/BIC/ZC_QGRCS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRLBS] [decimal](17, 3) NULL,
	[/BIC/ZC_QGRECH] [decimal](17, 3) NULL,
	[/BIC/ZG_QVVGPK] [decimal](17, 3) NULL,
	[/BIC/ZC_ACTCOP] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZC_UPRCAS] [varchar](3) NULL,
	[/BIC/ZC_UPRECH] [varchar](3) NULL,
	[/BIC/ZC_UGRLBS] [varchar](3) NULL,
	[/BIC/ZG_UVVGPK] [varchar](3) NULL,
	[/BIC/ZC_ASPA] [decimal](17, 2) NULL,
	[/BIC/ZFLGDLTA] [varchar](1) NULL,
	[/BIC/ZC_QGRKGS] [decimal](17, 3) NULL,
	[/BIC/ZC_UNETKG] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_COPB200]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_COPB200](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[/BIC/ZGL_ACNT] [varchar](20) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZPROFCMXD] [varchar](10) NULL,
	[CUST_GROUP] [varchar](2) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[CO_AREA] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZAMOUNT] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_LES5600]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_LES5600](
	[CUSTOMER] [varchar](10) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[MA_DATTIME] [varchar](23) NULL,
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
	[/BIC/ZFLGDLTA] [varchar](1) NULL,
	[/BIC/ZT_SAOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OVLAMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_SVP1300]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_SVP1300](
	[CUSTOMER] [varchar](10) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[MA_DATTIME] [varchar](23) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZCANQTY] [decimal](17, 3) NULL,
	[/BIC/ZCANQTYE] [decimal](17, 3) NULL,
	[/BIC/ZCANQTYK] [decimal](17, 3) NULL,
	[/BIC/ZCANQTYP] [decimal](17, 3) NULL,
	[/BIC/ZFWBUY] [decimal](17, 3) NULL,
	[/BIC/ZFWBUYE] [decimal](17, 3) NULL,
	[/BIC/ZFWBUYK] [decimal](17, 3) NULL,
	[/BIC/ZFWBUYP] [decimal](17, 3) NULL,
	[/BIC/ZS_CANDOL] [decimal](17, 2) NULL,
	[/BIC/ZS_FWBDOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PCBVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_PCBVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_PCBVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_PCBVOP] [decimal](17, 3) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PSHPRC] [decimal](17, 2) NULL,
	[/BIC/ZS_SBAVOD] [decimal](17, 2) NULL,
	[/BIC/ZS_SBAVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_SBAVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_SBAVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_SBAVOP] [decimal](17, 3) NULL,
	[/BIC/ZS_SSHPRC] [decimal](17, 2) NULL,
	[/BIC/ZS_TPBDOL] [decimal](17, 2) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZTPBVOL] [decimal](17, 2) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZFLGDLTA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_TPM8800]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_TPM8800](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[PERIOD_TYP] [varchar](2) NULL,
	[MA_DATTIME] [varchar](23) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[CRM_PR_A05] [varchar](32) NULL,
	[PR_CAT_SAL] [varchar](32) NULL,
	[CO_AREA] [varchar](4) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZC_DISPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FADPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FEAPER] [decimal](17, 3) NULL,
	[/BIC/ZP_INCCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPDD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPRD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRPS] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQE] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQK] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQP] [decimal](17, 3) NULL,
	[/BIC/ZS_PROCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCD] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZS_TPINCE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINSE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ADIVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ADJVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[/BIC/ZT_CTFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EDLPSP] [decimal](17, 2) NULL,
	[/BIC/ZT_EIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ESPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_SUPVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_TSPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[/BIC/ZT_ADJPER] [decimal](17, 3) NULL,
	[/BIC/ZFLGDLTA] [varchar](1) NULL,
	[/BIC/ZT_SAOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OVLAMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_TPM8800_AGG]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_TPM8800_AGG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[/BIC/ZMXDPALM] [varchar](18) NULL,
	[CALWEEK] [decimal](6, 0) NULL,
	[/BIC/ZMXDFLG] [varchar](1) NULL,
	[CRM_MKTELM] [varchar](24) NULL,
	[/BIC/ZC_DISPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FADPER] [decimal](17, 3) NULL,
	[/BIC/ZC_FEAPER] [decimal](17, 3) NULL,
	[/BIC/ZP_INCCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PGSVOL] [decimal](17, 2) NULL,
	[/BIC/ZS_PLCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPDD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLPRD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRPS] [decimal](17, 2) NULL,
	[/BIC/ZS_PLRSD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQD] [decimal](17, 2) NULL,
	[/BIC/ZS_PLTPQE] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQK] [decimal](17, 3) NULL,
	[/BIC/ZS_PLTPQP] [decimal](17, 3) NULL,
	[/BIC/ZS_PROCOP] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINCE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINCP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSD] [decimal](17, 2) NULL,
	[/BIC/ZS_TPINSE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPINSP] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOE] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOK] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOL] [decimal](17, 3) NULL,
	[/BIC/ZS_TPSVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ADIVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ADJVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_BBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_BBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CRFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_CTFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EBRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EDLPSP] [decimal](17, 2) NULL,
	[/BIC/ZT_EIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_EIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_ESHVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_ESHVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_ESPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_ESRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_FXFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_LQFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_MLFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_NPFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OIRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCFAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SCRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_SPRAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_STOVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_STOVOP] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOD] [decimal](17, 2) NULL,
	[/BIC/ZT_SUPVOE] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOK] [decimal](17, 3) NULL,
	[/BIC/ZT_SUPVOL] [decimal](17, 3) NULL,
	[/BIC/ZT_TSPAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_WWTOTL] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SALES_UNIT] [varchar](3) NULL,
	[/BIC/ZT_ADJPER] [decimal](17, 3) NULL,
	[InfoProvider] [varchar](100) NULL,
	[/BIC/ZT_SAOAMT] [decimal](17, 2) NULL,
	[/BIC/ZT_OVLAMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_WM5200_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_WM5200_bck](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLANT] [varchar](4) NOT NULL,
	[/BIC/ZSTOCK] [varchar](4) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[/BIC/ZCODEDATE] [varchar](8) NOT NULL,
	[/BIC/ZDLX_LOC] [varchar](10) NOT NULL,
	[/BIC/ZMFG_DATE] [date] NOT NULL,
	[QUANTITY] [decimal](17, 3) NULL,
	[CREATEDON] [date] NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[/1RW/S_CVFDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[/BIC/ZMFG_DT] [date] NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZADDFEED] [varchar](6) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_WM5300_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_WM5300_bck](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[STOR_LOC] [varchar](4) NULL,
	[CREATEDON] [date] NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZMFG_DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_WM5400_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_WM5400_bck](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[PLANT] [varchar](4) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CREATEDON] [date] NULL,
	[BATCH] [varchar](10) NULL,
	[/BIC/ZRECTYPE] [varchar](1) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[/BIC/ZEXPDATE] [date] NULL,
	[/BIC/ZMFG_DATE] [date] NULL,
	[/BIC/ZPERIOD] [decimal](2, 0) NULL,
	[TIME] [time](7) NULL,
	[/BIC/ZSTATUS] [varchar](1) NULL,
	[/BIC/ZDMGLGMNG] [decimal](17, 3) NULL,
	[/BIC/ZHLDLGMNG] [decimal](17, 3) NULL,
	[/BIC/ZLGMNG] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[/BIC/ZSAP0001] [decimal](17, 3) NULL,
	[/BIC/ZSAPDAMG] [decimal](17, 3) NULL,
	[/BIC/ZSAPQUAL] [decimal](17, 3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AZD_WM5500_bck]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AZD_WM5500_bck](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[STOR_LOC] [varchar](4) NULL,
	[CREATEDON] [date] NULL,
	[/BIC/ZLOTNBR] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZMFG_DATE] [date] NULL,
	[/BIC/ZSLOTQTY] [decimal](17, 3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[STGEPERIOD] [decimal](17, 3) NULL,
	[/BIC/ZSTD_PRCE] [decimal](17, 2) NULL,
	[PRICE_UNIT] [decimal](17, 3) NULL,
	[/BIC/ZTSHLLIFE] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[/BIC/ZEXPDATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CO_CODE_HIER_UNRVL]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CO_CODE_HIER_UNRVL](
	[NODEID] [decimal](8, 0) NULL,
	[NODENAME] [varchar](1333) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_NODEID] [decimal](8, 0) NULL,
	[LVL2_NODEID] [decimal](8, 0) NULL,
	[LVL3_NODEID] [decimal](8, 0) NULL,
	[LVL4_NODEID] [decimal](8, 0) NULL,
	[LVL5_NODEID] [decimal](8, 0) NULL,
	[LVL6_NODEID] [decimal](8, 0) NULL,
	[LVL7_NODEID] [decimal](8, 0) NULL,
	[LVL8_NODEID] [decimal](8, 0) NULL,
	[LVL9_NODEID] [decimal](8, 0) NULL,
	[LVL10_NODEID] [decimal](8, 0) NULL,
	[LVL1_NODENAME] [varchar](1333) NULL,
	[LVL2_NODENAME] [varchar](1333) NULL,
	[LVL3_NODENAME] [varchar](1333) NULL,
	[LVL4_NODENAME] [varchar](1333) NULL,
	[LVL5_NODENAME] [varchar](1333) NULL,
	[LVL6_NODENAME] [varchar](1333) NULL,
	[LVL7_NODENAME] [varchar](1333) NULL,
	[LVL8_NODENAME] [varchar](1333) NULL,
	[LVL9_NODENAME] [varchar](1333) NULL,
	[LVL10_NODENAME] [varchar](1333) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EB_SFDC_ACCOUNT]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EB_SFDC_ACCOUNT](
	[Id] [varchar](18) NULL,
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
	[Additional_Notes__c] [varchar](8000) NULL,
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
	[Intercompany_Indicator__c] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EB_SFDC_ASSET]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EB_SFDC_ASSET](
	[Id] [varchar](18) NULL,
	[ContactId] [varchar](18) NULL,
	[AccountId] [varchar](18) NULL,
	[Product2Id] [varchar](18) NULL,
	[IsCompetitorProduct] [varchar](5) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [varchar](18) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedById] [varchar](18) NULL,
	[SystemModstamp] [datetime2](7) NULL,
	[IsDeleted] [varchar](5) NULL,
	[Name] [varchar](255) NULL,
	[SerialNumber] [varchar](80) NULL,
	[InstallDate] [date] NULL,
	[PurchaseDate] [date] NULL,
	[UsageEndDate] [date] NULL,
	[Status] [varchar](40) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [decimal](12, 2) NULL,
	[Description] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OHZOH_B_IND]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OHZOH_B_IND](
	[/B299/S_IPNUM_BB] [varchar](10) NOT NULL,
	[/B299/S_IPITM_BB] [decimal](6, 0) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/B299/S_TYPE] [varchar](4) NULL,
	[/B299/S_GCRTYP] [varchar](4) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SHIP_TO] [varchar](10) NULL,
	[PAYER] [varchar](10) NULL,
	[/B299/S_RECIP] [varchar](10) NULL,
	[/B299/S_GCRNUM] [varchar](10) NULL,
	[/B299/S_POSNR] [decimal](6, 0) NULL,
	[/B299/S_IPAGRMT] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MAT_DESC] [varchar](40) NULL,
	[/B299/S_DCIND] [varchar](1) NULL,
	[/B299/S_BUDAT] [date] NULL,
	[/BIC/ZPRF_PER] [decimal](7, 0) NULL,
	[/B299/S_PCITM] [decimal](6, 0) NULL,
	[PRICE_DATE] [date] NULL,
	[/B299/S_SETLDT] [date] NULL,
	[/B299/S_KWMENG] [decimal](17, 3) NULL,
	[/B299/S_NETPR] [decimal](17, 2) NULL,
	[/B299/S_IPNETWR] [decimal](17, 2) NULL,
	[/B299/S_WAVWR] [decimal](17, 2) NULL,
	[/BIC/ZSFISCYR] [decimal](4, 0) NULL,
	[SUBTOTAL_1] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[FUND] [varchar](20) NULL,
	[FUND_TXT] [varchar](40) NULL,
	[FUNDS_CTR] [varchar](16) NULL,
	[FUNDCTR_TXT] [varchar](40) NULL,
	[/BIC/ZCMMT_ITM] [varchar](14) NULL,
	[CMTIT_TXT] [varchar](40) NULL,
	[/BIC/ZSETLPER3] [decimal](3, 0) NULL,
	[/BIC/ZMAT_CLAS] [varchar](36) NULL,
	[/BIC/C_ABRA001] [varchar](60) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[CUST_TXT] [varchar](40) NULL,
	[/BIC/ZSETLEY] [decimal](7, 0) NULL,
	[/B299/S_PYROL] [varchar](2) NULL,
	[DOC_CURRCY] [varchar](5) NULL,
	[FM_AREA] [varchar](4) NULL,
	[/B299/S_SSTAT] [varchar](1) NULL,
	[/B299/S_CRRSN] [varchar](3) NULL,
	[/BIC/ZCNAME] [varchar](10) NULL,
	[/BIC/ZKNAME] [varchar](10) NULL,
	[/BIC/ZTNAME] [varchar](10) NULL,
	[/BIC/ZNAME] [varchar](30) NULL,
	[/BIC/ZZNAME] [varchar](10) NULL,
	[/BIC/ZSORT2] [varchar](20) NULL,
	[/B299/S_ASTAT] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[/B299/S_IPNUM_BB] ASC,
	[/B299/S_IPITM_BB] ASC,
	[FISCVARNT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OHZOH_BPC62]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OHZOH_BPC62](
	[TRID] [varchar](100) NULL,
	[CHRT_ACCTS] [varchar](4) NULL,
	[BAL_FLAG] [varchar](1) NULL,
	[INCST_FLAG] [varchar](2) NULL,
	[/BIC/ZGL_ACT1] [varchar](20) NULL,
	[CO_AREA] [varchar](4) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[AC_LEDGER] [varchar](2) NULL,
	[/BIC/Z_BPCTRP] [varchar](6) NULL,
	[/BIC/ZGL_ACT2] [varchar](20) NULL,
	[FISCPER] [decimal](7, 0) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[FISCYEAR] [decimal](4, 0) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BALANCE] [decimal](17, 2) NULL,
	[TURNOVER] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[OHZOH_VSTX]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[OHZOH_VSTX](
	[/B299/S_GCRNUM] [varchar](10) NOT NULL,
	[/B299/S_GCRITEM] [decimal](6, 0) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/B299/S_IPAGRMT] [varchar](10) NULL,
	[/B299/S_GCRTYP] [varchar](4) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MAT_DESC] [varchar](40) NULL,
	[/B299/S_CROGN] [varchar](1) NULL,
	[/B299/S_CRRSN] [varchar](3) NULL,
	[CRRSN_TXT] [varchar](40) NULL,
	[/B299/S_RJRSN] [varchar](4) NULL,
	[REFER_DOC] [varchar](10) NULL,
	[/BIC/ZREFDOC] [varchar](16) NULL,
	[/BIC/ZZCHKCMT] [varchar](50) NULL,
	[/BIC/ZZINTCMT] [varchar](50) NULL,
	[/BIC/ZSETLFLAG] [varchar](1) NULL,
	[/BIC/ZTDATE] [date] NULL,
	[BILL_DATE] [date] NULL,
	[SOLD_TO] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[/B299/S_GCRNUM] ASC,
	[/B299/S_GCRITEM] ASC,
	[FISCVARNT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZZM_OR51_HIST]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZZM_OR51_HIST](
	[PLANT_CODE] [varchar](255) NULL,
	[PLANT_DESC] [varchar](255) NULL,
	[LINE_RNW] [varchar](255) NULL,
	[PERIOD] [varchar](255) NULL,
	[SCRAP] [varchar](255) NULL,
	[UNMEAURED_WASTE] [varchar](255) NULL,
	[PACKAGE_WT_ACT_AMT] [varchar](255) NULL,
	[PACKAGE_WT_NET_AMT] [varchar](255) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZZM_OR51_MONTHLY]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZZM_OR51_MONTHLY](
	[SCRAP_AMOUNT] [decimal](28, 10) NULL,
	[SCRAP_CURRENCY] [varchar](10) NULL,
	[UNMEASURED_WASTE_AMOUNT] [decimal](28, 10) NULL,
	[UNMEASURED_WASTE_CUR] [varchar](10) NULL,
	[PACKED_WEIGHT_AMOUNT] [decimal](28, 10) NULL,
	[PACKED_WEIGHT_CURRENCY] [varchar](10) NULL,
	[PACKED_WEIGHT_NET_AMT] [decimal](28, 10) NULL,
	[PACKED_WEIGHT_NET_CUR] [varchar](10) NULL,
	[PLANT_CODE] [varchar](10) NULL,
	[FISCAL_YEAR_PERIOD:0FISCPER] [varchar](10) NULL,
	[RESOURCE_NETWORK] [varchar](100) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZZM_SNP64_HIST]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZZM_SNP64_HIST](
	[LOCATION] [varchar](255) NOT NULL,
	[FIELD2] [varchar](255) NULL,
	[MATERIAL] [varchar](255) NOT NULL,
	[MATERIAL_DESC] [varchar](255) NULL,
	[MFG_RES_NETWORK] [varchar](255) NULL,
	[MATERIAL_TYPE] [varchar](255) NULL,
	[MATERIAL_TYPE_DESC] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](255) NULL,
	[UOM] [varchar](255) NULL,
	[BASE_UOM_FLAG] [varchar](255) NOT NULL,
	[SNP_VERSION] [varchar](255) NULL,
	[FISC_YR] [varchar](255) NOT NULL,
	[FISC_PD] [varchar](255) NULL,
	[FISC_WK] [varchar](255) NOT NULL,
	[DUMMY] [varchar](255) NULL,
	[PLND_PROD] [varchar](255) NULL,
	[ACT_PROD_FINAL_VALUE] [varchar](255) NULL,
	[ACT_PROD] [varchar](255) NULL,
	[COMAN_GR_QTY] [varchar](255) NULL,
	[VAS_GR_QTY] [varchar](255) NULL,
	[BUDG_PLND_PROD] [varchar](255) NULL,
	[PROJ_DIST_RECEIPTS] [varchar](255) NULL,
	[DISTR_RECEIPTS_TLB] [varchar](255) NULL,
	[DISTR_RECEIPTS_PLND] [varchar](255) NULL,
	[DISTR_RECEIPTS_CONF] [varchar](255) NULL,
	[SUBST_RECEIPT_PLND] [varchar](255) NULL,
	[SUBST_RECEIPT_CONF] [varchar](255) NULL,
	[ACT_DISTRB_RECEIPT] [varchar](255) NULL,
	[PROJ_TTL_SUPPLY] [varchar](255) NULL,
	[RECEIPTS_VAS_MTO] [varchar](255) NULL,
	[PROD_SC_PLND] [varchar](255) NULL,
	[PROD_CONFIRMED_COMAN] [varchar](255) NULL,
	[PROD_CONF] [varchar](255) NULL,
	[ACT_TTL_SUPPLY] [varchar](255) NULL,
	[ACT_PROD_1] [varchar](255) NULL,
	[COMAN_GR_QTY_1] [varchar](255) NULL,
	[VAS_GR_QTY_1] [varchar](255) NULL,
	[ACT_DISTR_RECEIPT] [varchar](255) NULL,
	[ACT_SUBST_RECEIPT] [varchar](255) NULL,
	[LAST_SCH_QTY] [varchar](255) NULL,
	[LAST_AVA_QTY] [varchar](255) NULL,
	[ADJ_SCH_QTY] [varchar](255) NULL,
	[NET_WEIGHT] [varchar](255) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LOCATION] ASC,
	[MATERIAL] ASC,
	[BASE_UOM_FLAG] ASC,
	[FISC_YR] ASC,
	[FISC_WK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZZM_SNP64_WKLY]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZZM_SNP64_WKLY](
	[KYF_0014:ZADRBU] [decimal](10, 3) NULL,
	[KYF_0014_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0020:0QUANTITY] [decimal](10, 3) NULL,
	[KYF_0021:ZAPRDQBU] [decimal](10, 3) NULL,
	[KYF_0021_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0004:ZAPRDQBU] [decimal](10, 3) NULL,
	[KYF_0004_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0003:0QUANTITY] [decimal](10, 3) NULL,
	[KYF_0024:ZADRBU] [decimal](10, 3) NULL,
	[KYF_0024_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0025:ZASRBU] [decimal](10, 3) NULL,
	[KYF_0025_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0028:ZADJ_QTY] [decimal](10, 3) NULL,
	[KYF_0028_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0007:0QUANTITY] [decimal](10, 3) NULL,
	[KYF_0005:ZACGRBU] [decimal](10, 3) NULL,
	[KYF_0005_UNIT:0UNIT] [varchar](1) NULL,
	[KYF_0022:ZACGRBU] [decimal](10, 3) NULL,
	[KYF_0022_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0009:Z9ATSHIP] [decimal](10, 3) NULL,
	[KYF_0009_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0010:Z9APSHIP] [decimal](10, 3) NULL,
	[KYF_0010_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0011:Z9AFSHIP] [decimal](10, 3) NULL,
	[KYF_0011_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0001:Z9ADFCST] [decimal](10, 3) NULL,
	[KYF_0001_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0027:ZAVA_QTY] [decimal](10, 3) NULL,
	[KYF_0027_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0026:ZSCH_QTY] [decimal](10, 3) NULL,
	[KYF_0026_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0029:0NET_WEIGHT] [decimal](10, 3) NULL,
	[KYF_0029_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0019:Z9AFPROD] [decimal](10, 3) NULL,
	[KYF_0019_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0018:Z9ATSHIP] [decimal](10, 3) NULL,
	[KYF_0018_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0002:Z9APPROD] [decimal](10, 3) NULL,
	[KYF_0002_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0017:Z9APPRDSC] [decimal](10, 3) NULL,
	[KYF_0017_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0008:0QUANTITY] [decimal](10, 3) NULL,
	[KYF_0015:0QUANTITY] [decimal](10, 3) NULL,
	[KYF_0016:ZSNPADD2] [decimal](10, 3) NULL,
	[KYF_0016_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0012:Z9APSUBZU] [decimal](10, 3) NULL,
	[KYF_0012_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0013:Z9APSBZUB] [decimal](10, 3) NULL,
	[KYF_0013_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0023:ZAVGRBU] [decimal](10, 3) NULL,
	[KYF_0023_UNIT:0UNIT] [varchar](2) NULL,
	[KYF_0006:ZAVGRBU] [decimal](10, 3) NULL,
	[KYF_0006_UNIT:0UNIT] [varchar](2) NULL,
	[PLANT:0PLANT] [varchar](4) NULL,
	[MATERIAL:0MATERIAL] [varchar](18) NULL,
	[MATERIAL__ZZMFGRSNW:ZZMFGRSNW] [varchar](19) NULL,
	[MATERIAL__0MATL_TYPE:0MATL_TYPE] [varchar](4) NULL,
	[MATERIAL__ZZBUSUNIT:ZZBUSUNIT] [varchar](6) NULL,
	[UNIT:0UNIT] [varchar](2) NULL,
	[/BIC/ZBUOMFLAG:ZBUOMFLAG] [varchar](1) NULL,
	[/BIC/ZSNPVER:ZSNPVER] [int] NULL,
	[FISCYEAR:0FISCYEAR] [int] NULL,
	[FISCPER:0FISCPER] [int] NULL,
	[/BIC/ZFISCWEK:ZFISCWEK] [varchar](7) NULL,
	[FISCVARNT:0FISCVARNT] [int] NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UVW_STD_PRC_MIX]    Script Date: 11/20/2018 5:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_STD_PRC_MIX]
AS 
SELECT   rcnt.MATRL,
		 rcnt.MAX_YR, 
		 rcnt.CURR, 
		 prc.[STD_PRC]
FROM [KNA_COMRCL].[dbo].[UVW_RCNT_STD_PRC] rcnt
LEFT OUTER JOIN KNA_COMRCL.dbo.MATRL_STD_PRC prc ON prc.[MOD_MATRL] = rcnt.MATRL AND 
                         rcnt.MAX_YR = prc.[CAL_YR] AND rcnt.CURR = prc.CURR AND 
                         prc.[CMPT_MATRL] = rcnt.MATRL
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CON6100]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE CLUSTERED INDEX [IX_CON6100] ON [dbo].[AZD_CON6100]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CON6100_AGG]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_CON6100_AGG] ON [dbo].[AZD_CON6100_AGG]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CON6500]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_CON6500] ON [dbo].[AZD_CON6500]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CRM_MKTELM] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LES5600]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_LES5600] ON [dbo].[AZD_LES5600]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CRM_MKTELM] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SLC8800]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_SLC8800] ON [dbo].[AZD_SLC8800]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CRM_MKTELM] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SVP1300]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_SVP1300] ON [dbo].[AZD_SVP1300]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CRM_MKTELM] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TPM8800]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_TPM8800] ON [dbo].[AZD_TPM8800]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CRM_MKTELM] ASC,
	[PERIOD_TYP] ASC,
	[PROFIT_CTR] ASC,
	[CRM_PR_A05] ASC,
	[PR_CAT_SAL] ASC,
	[CO_AREA] ASC,
	[CURRENCY] ASC,
	[SALES_UNIT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TPM8800_AGG]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_TPM8800_AGG] ON [dbo].[AZD_TPM8800_AGG]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[/BIC/ZMXDPALM] ASC,
	[CALWEEK] ASC,
	[/BIC/ZMXDFLG] ASC,
	[CRM_MKTELM] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AZD_WM5200_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AZD_WM5200_IX] ON [dbo].[AZD_WM5200]
(
	[PLANT] ASC,
	[/BIC/ZSTOCK] ASC,
	[MATERIAL] ASC,
	[/BIC/ZCODEDATE] ASC,
	[/BIC/ZDLX_LOC] ASC,
	[/BIC/ZMFG_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AZD_WM5300_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AZD_WM5300_IX] ON [dbo].[AZD_WM5300]
(
	[MATERIAL] ASC,
	[PLANT] ASC,
	[STOR_LOC] ASC,
	[CREATEDON] ASC,
	[/BIC/ZLOTNBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AZD_WM5400_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AZD_WM5400_IX] ON [dbo].[AZD_WM5400]
(
	[PLANT] ASC,
	[MATERIAL] ASC,
	[CREATEDON] ASC,
	[BATCH] ASC,
	[/BIC/ZRECTYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AZD_WM5500_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AZD_WM5500_IX] ON [dbo].[AZD_WM5500]
(
	[MATERIAL] ASC,
	[PLANT] ASC,
	[STOR_LOC] ASC,
	[CREATEDON] ASC,
	[/BIC/ZLOTNBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AZD_ZFPL00_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AZD_ZFPL00_IX] ON [dbo].[AZD_ZFPL00]
(
	[GL_ACCOUNT] ASC,
	[/BIC/ZGL_ACCNT] ASC,
	[FUNC_AREA] ASC,
	[CHRT_ACCTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AZD_ZFPL00_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [AZD_ZFPL00_IX] ON [dbo].[AZD_ZFPL00_OLD]
(
	[GL_ACCOUNT] ASC,
	[/BIC/ZGL_ACCNT] ASC,
	[FUNC_AREA] ASC,
	[CHRT_ACCTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [BW_MZMTL_CUST_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [BW_MZMTL_CUST_IX] ON [dbo].[BW_MZMTL_CUST]
(
	[ZCUST] ASC,
	[ZMTL_CUST] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [BW_MZMTL_CUST_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [BW_MZMTL_CUST_IX] ON [dbo].[BW_MZMTL_CUST_OLD]
(
	[ZCUST] ASC,
	[ZMTL_CUST] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [HFMDDJUO_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [HFMDDJUO_IX] ON [dbo].[HFMDDJUO]
(
	[HIEID] ASC,
	[OBJVERS] ASC,
	[NODEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [HFMDDJUO_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [HFMDDJUO_IX] ON [dbo].[HFMDDJUO_OLD]
(
	[HIEID] ASC,
	[OBJVERS] ASC,
	[NODEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PZCUST_MAT_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PZCUST_MAT_IX] ON [dbo].[PZCUST_MAT]
(
	[MATERIAL] ASC,
	[/BIC/ZCUST_MAT] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PZCUST_MAT_IX]    Script Date: 11/20/2018 5:42:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PZCUST_MAT_IX] ON [dbo].[PZCUST_MAT_OLD]
(
	[MATERIAL] ASC,
	[/BIC/ZCUST_MAT] ASC,
	[OBJVERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [KNA_BW] SET  READ_WRITE 
GO
