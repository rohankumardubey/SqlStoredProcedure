USE [master]
GO
/****** Object:  Database [KNA_COMRCL]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE DATABASE [KNA_COMRCL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_COMRCL', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_COMRCL.mdf' , SIZE = 576716800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 5242880KB )
 LOG ON 
( NAME = N'KNA_COMRCL_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_COMRCL_log.ldf' , SIZE = 102498240KB , MAXSIZE = 2048GB , FILEGROWTH = 524288KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_COMRCL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_COMRCL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_COMRCL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_COMRCL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_COMRCL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_COMRCL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_COMRCL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_COMRCL] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_COMRCL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_COMRCL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_COMRCL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_COMRCL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_COMRCL', N'ON'
GO
USE [KNA_COMRCL]
GO
/****** Object:  User [US\SQL_TPE_USERS_R]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_TPE_USERS_R] FOR LOGIN [US\SQL_TPE_USERS_R]
GO
/****** Object:  User [US\SQL_RGM_SUPPORT_R]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_RGM_SUPPORT_R] FOR LOGIN [US\SQL_RGM_SUPPORT_R]
GO
/****** Object:  User [US\SQL_KNA_COMRCL_SALES_USERS_R]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_KNA_COMRCL_SALES_USERS_R] FOR LOGIN [US\SQL_KNA_COMRCL_SALES_USERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE6]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE6] FOR LOGIN [US\SQL_DS_HYPERCARE6]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R] WITH DEFAULT_SCHEMA=[US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\SQL_CAPSIM_USERS_ADMIN]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [US\SQL_CAPSIM_USERS_ADMIN] FOR LOGIN [US\SQL_CAPSIM_USERS_ADMIN]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJLE08]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKJLE08] FOR LOGIN [SAS_USKJLE08] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_RGM]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_RGM] FOR LOGIN [SAS_RGM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKSDC40]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_PU_USKSDC40] FOR LOGIN [SAS_PU_USKSDC40] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USCERD01]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_PU_USCERD01] FOR LOGIN [SAS_PU_USCERD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USCC1L05]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [SAS_PU_USCC1L05] FOR LOGIN [SAS_PU_USCC1L05] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 11/20/2018 5:42:38 PM ******/
CREATE ROLE [db_exeproc]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_TPE_USERS_R]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KNA_COMRCL_SALES_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_HYPERCARE6]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE6]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJLE08]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_RGM]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKSDC40]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USCERD01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USCC1L05]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_FEED_TRK_DMND]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_FEED_TRK_DMND] (@period_end varchar(1))


AS
BEGIN
    SET NOCOUNT ON;
    /******************************************************************************
		NAME:      [USP_FEED_TRACK_DEMAND]
		PURPOSE:   Get the daily demand for the table
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        08/15/2017   USCDXS92         Created.
		2.0		   10/29/2018	USCDXS92		 Added delete logic to Period End Run
		
		Archives the daily demand file from the Feed Track.  The business logic was submitted by Cathie Koshar and Keith Christleib.

		******************************************************************************/
if @period_end = 'Y'
begin

	-- Add delete command to clear out bad data in case of repeated runs on period end
	DELETE FROM KNA_COMRCL.dbo.TRK_PD_END WHERE TRK_DY = CAST(GETDATE() as date);

	--build the period end dataset based on the business logic specified by the business.
	INSERT INTO KNA_COMRCL.dbo.TRK_PD_END
	SELECT  shape.[CATG] 
      ,shape.[BU]
      ,shape.[LVL_B]
      ,shape.[TRK_DY]
      ,shape.[DY_IN_PD] as [Pace Day]
      ,shape.[DY_IN_PD]
      ,shape.[PTD_SHAPE_PCT]
      ,shape.[PREV_SHAPE_PCT]
	  ,(new.[P Gross Sales $]-old.[Open Order $] -old.[P Gross Sales $]) as [Daily Demand]
      ,shape.[OPN_ORDR_DOL]
      ,shape.[PD_GROS_SALES_DOL]
      ,shape.[QTR_GROS_SALES_DOL]
      ,shape.[YR_GROS_SALES_DOL]
      ,shape.[PD_IBP]
      ,shape.[QTR_IBP]
      ,shape.[YR_IBP]
      ,shape.[PD_BUD]
      ,shape.[QTR_BUD]
      ,shape.[YR_BUD]
      ,shape.[PD_STRATG_ESTMT]
      ,shape.[QTR_STRATG_ESTMT]
      ,shape.[YR_STRATG_ESTMT]
      ,shape.[PD_YR_AGO_GROS_SALES_DOL]
      ,shape.[QTR_YR_AGO_GROS_SALES_DOL]
      ,shape.[YR_YR_AGO_GROS_SALES_DOL]
      ,shape.[NXT_PD_OPN_ORDR_DOL]
      ,shape.[QTR_BUD_LESS_THAN_PD]
      ,shape.[YR_BUD_LESS_THAN_PD]
      ,shape.[QTR_STRATG_ESTMT_LESS_THAN_PD]
      ,shape.[YR_STRATG_ESTMT_LESS_THAN_PD]
      ,shape.[QTR_YR_AGO_LESS_THAN_PD]
      ,shape.[YR_YR_AGO_LESS_THAN_PD]
      ,shape.[CURR_PTD_INDIR]
      ,shape.[NEW_PTD_INDIR]
  FROM [KNA_COMRCL].[dbo].[UVW_FEEDMSTR_SHAPE] shape
  LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER new ON (UPPER(new.Category) = UPPER(shape.CATG) AND UPPER(new.[Business Unit]) = UPPER(shape.BU) AND 
                         new.[Sales MGT] = shape.LVL_B AND shape.TRK_DY = new.TRACK_DAY )
  LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER_OLD old ON (old.Category = new.Category AND old.[Business Unit] = new.[Business Unit] 
																			and old.[Sales MGT] = new.[Sales MGT])
	-- Add delete command to clear out bad data in case of repeated runs on period end
	DELETE FROM KNA_COMRCL.dbo.SHAPE_DLY_DMND WHERE TRK_DY = CAST(GETDATE() as date);
	--insert the period end dataset into the period end table

	INSERT INTO KNA_COMRCL.dbo.SHAPE_DLY_DMND
	SELECT *
	FROM (SELECT DISTINCT new.[Sales MGT]
	  ,new.[Category]
      ,new.[Business Unit]
	  ,new.[TRACK_DAY] 
	  ,(new.[P Gross Sales $]) - (old.[Open Order $] + old.[P Gross Sales $]) as [Daily Demand]
	FROM KNA_EXTERNAL.USER_SALES.SHAPE shape 
	LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER new ON (UPPER(new.Category) = UPPER(shape.CATEGORY) AND UPPER(new.[Business Unit]) = UPPER(shape.BUSINESS_UNIT) AND 
                         new.[Sales MGT] = shape.LEVEL_B AND shape.TRACK_DAY = new.TRACK_DAY )
	LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER_OLD old ON (old.Category = new.Category AND old.[Business Unit] = new.[Business Unit] 
																			and old.[Sales MGT] = new.[Sales MGT])
	INNER JOIN (SELECT FISC_PD, FISC_YR, MAX(FISC_WK_END_DT)as max_dt FROM KG_VIEWS.dbo.UVW_FISC_CAL GROUP BY FISC_PD, FISC_YR ) fisc ON (fisc.FISC_PD = shape.SHAPE_PD and fisc.FISC_YR = YEAR(getdate()))) tmp
	WHERE [Sales MGT] IS NOT NULL and [Category] IS NOT NULL and [Business Unit] IS NOT NULL AND [TRACK_DAY] IS NOT NULL
	ORDER BY [Sales MGT], [Category], [Business Unit]
end
ELSE
begin
	if CAST(GETDATE() as date) = (SELECT max(TRACK_DAY) as TRACK_DAY FROM (SELECT DISTINCT TOP 2 CAST(DC_DAY as int) as DC_DAY, TRACK_DAY FROM [KNA_EXTERNAL].[USER_SALES].[SHAPE] WHERE [RUN_TRACK] = 'Y' ORDER BY DC_DAY, TRACK_DAY ASC) tmp)
	begin
		--If it is one of the first two days of the period then there should be zero daily demand which is business logic supplied by the business
		DELETE FROM KNA_COMRCL.dbo.SHAPE_DLY_DMND WHERE TRK_DY = CAST(GETDATE() as date)

		INSERT INTO KNA_COMRCL.dbo.SHAPE_DLY_DMND
		SELECT *
		FROM (SELECT DISTINCT new.[Sales MGT]
			,new.[Category]
			,new.[Business Unit]
			,new.[TRACK_DAY] 
			,0 as [Daily Demand]
		FROM KNA_EXTERNAL.USER_SALES.SHAPE shape 
		LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER new ON (UPPER(new.Category) = UPPER(shape.CATEGORY) AND UPPER(new.[Business Unit]) = UPPER(shape.BUSINESS_UNIT) AND 
                         new.[Sales MGT] = shape.LEVEL_B AND shape.TRACK_DAY = new.TRACK_DAY )
		LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER_OLD old ON (old.Category = new.Category AND old.[Business Unit] = new.[Business Unit] 
																			and old.[Sales MGT] = new.[Sales MGT])
		INNER JOIN (SELECT FISC_PD, FISC_YR, MAX(FISC_WK_END_DT)as max_dt FROM KG_VIEWS.dbo.UVW_FISC_CAL GROUP BY FISC_PD, FISC_YR ) fisc ON (fisc.FISC_PD = shape.SHAPE_PD and fisc.FISC_YR = YEAR(getdate()))) tmp
		WHERE [Sales MGT] IS NOT NULL and [Category] IS NOT NULL and [Business Unit] IS NOT NULL AND [TRACK_DAY] IS NOT NULL
		ORDER BY [Sales MGT], [Category], [Business Unit]
	end
	ELSE
	begin
		--this section is run on a typical daily run for most of each month.  It calculates the daily demand and inserts it into the daily demand table.
		DELETE FROM KNA_COMRCL.dbo.SHAPE_DLY_DMND WHERE TRK_DY = CAST(GETDATE() as date)

		INSERT INTO KNA_COMRCL.dbo.SHAPE_DLY_DMND
		SELECT *
		FROM (SELECT DISTINCT new.[Sales MGT]
			 ,new.[Category]
			 ,new.[Business Unit]
			 ,new.[TRACK_DAY] 
			 ,(new.[Open Order $] + new.[P Gross Sales $]) - (old.[Open Order $] + old.[P Gross Sales $]) as [Daily Demand]
		FROM KNA_EXTERNAL.USER_SALES.SHAPE shape 
		LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER new ON (UPPER(new.Category) = UPPER(shape.CATEGORY) AND UPPER(new.[Business Unit]) = UPPER(shape.BUSINESS_UNIT) AND 
                         new.[Sales MGT] = shape.LEVEL_B AND shape.TRACK_DAY = new.TRACK_DAY )
		LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER_OLD old ON (old.Category = new.Category AND old.[Business Unit] = new.[Business Unit] 
																			and old.[Sales MGT] = new.[Sales MGT])
		INNER JOIN (SELECT FISC_PD, FISC_YR, MAX(FISC_WK_END_DT)as max_dt FROM KG_VIEWS.dbo.UVW_FISC_CAL GROUP BY FISC_PD, FISC_YR ) fisc ON (fisc.FISC_PD = shape.SHAPE_PD and fisc.FISC_YR = YEAR(getdate()))) tmp
		WHERE [Sales MGT] IS NOT NULL and [Category] IS NOT NULL and [Business Unit] IS NOT NULL AND [TRACK_DAY] IS NOT NULL
		ORDER BY [Sales MGT], [Category], [Business Unit]
	end
END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_GET_BOM]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Smith, Dylan>
-- Create date: <04/05/2017>
-- Description:	<Description,,>
--This stored procedure creates the BOM that is used by the RGM rebuild of 3 BEx queries  
--in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
--values and then combines them all into one final dataset.
-- =============================================
CREATE PROCEDURE [dbo].[USP_GET_BOM] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--PRINT N'00: #Start ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--GO

--Every day we bring the BOM table over from CRM system and this USP formats the data for use in the RGM project
--It is almost a straight mapping with the CRM values being translated into ECC values for Sales Org
/*TRUNCATE TABLE [KNA_COMRCL].[dbo].[BOM]
INSERT INTO [KNA_COMRCL].[dbo].[BOM]
SELECT [ZZ_PRODUCT] as [MOD Material]
      ,[ZZ_COMPONENT] as [Component Material]
	  ,[SALES_ORG] = CASE
						  WHEN ZZ_SALES_ORG = 'O 50000001' THEN '1001'
						  WHEN  ZZ_SALES_ORG = 'O 50000003' THEN '1002'
						  ELSE NULL
						END
	  ,[ZZ_DIS_CHANNEL] as [Distribution Channel]
      ,[ZZ_DIVISION] as [DIVISION]
	  ,[ZZ_ALLOCATION] as [PERCENT]
      ,[ZZ_NUMBER_UNITS] as [QUANTITY]
      ,[ZZ_UOM] as [UNIT]
  FROM [KNA_CRM].[dbo].[ZMNS_PRODUCN_BOM]*/
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_LST_PRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*-- =============================================
-- Author:		<Smith, Dylan>
-- Create date: <04/05/2017>
-- Description:	<Description,,>
--This stored procedure creates the LIST_PRICE that is used by the RGM rebuild of 3 BEx queries  
--in Keystone.  It runs different calculations based on the UNIT to get the correct
--values and then combines them all into one final dataset.  This logic was created by Joe Wright's team
--for the TPE project in BODS and was transcribed to SQL USPs by Dylan Smith for the RGM rebuild.
	Ver        Date        Author           Description
---------  ----------  ---------------  ------------------------------------
		2.0        11/12/2018   USCMXJ11         Added parameter to calculate LIst price for plan data.
-- =============================================*/
CREATE PROCEDURE [dbo].[USP_GET_LST_PRC] @PLAN_FLAG varchar(1)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET IMPLICIT_TRANSACTIONS OFF;

--Populate the staging list price table with the desired records in the correct format.  This stored procedure takes all of the records that we
--need to caclulate the List Price for (to correctly explode the Mod materials)
EXEC KNA_COMRCL.dbo.USP_GET_ZMATCHAWK @PLAN_FLAG

--Get the data and format it correctly
IF OBJECT_ID ('tempDB..#LIST_PRICE_1') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_1;
end
SELECT [MIXD_PLT_MATRL] as [MATERIAL]
      ,[CAL_WK] as [Calendar Week]
      ,[SALES_ORG] as [Sales Org.]
      ,[Channel (Customer Group)] = CASE
										WHEN [CUST_GRP] IS NULL THEN '00'
										ELSE [CUST_GRP]
									END
      ,[LST_PRC] as [List Price per Case]
      ,[CURR] as [CURRENCY]
  INTO #LIST_PRICE_1
  FROM [KNA_COMRCL].[STG].[LST_PRC_SRC]
  WHERE [SALES_ORG]<>'0'

--Get all of the units and conversions for all of the different UOM's.  Take this to create table that has List Price per case and will lead us to calculate the 
--list price per unit.
IF OBJECT_ID ('tempDB..#LIST_PRICE_2') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_2;
end
SELECT DISTINCT b.[MATERIAL]
      ,b.[Calendar Week]
      ,b.[Sales Org.]
      ,b.[Channel (Customer Group)]
      ,b.[List Price per Case]
      ,b.[CURRENCY]
      ,[UNIT]
      ,[BASE_UOM]
	  ,tmp.[CS_NUM_DIV]
      ,[NUM_DIV]
      ,[DENO_DIV]
INTO #LIST_PRICE_2
FROM #LIST_PRICE_1 b
--Get the correct UOM for each material that we are comparing.
LEFT OUTER JOIN (SELECT a.[MATERIAL]
      ,[Calendar Week]
      ,[Sales Org.]
      ,[Channel (Customer Group)]
	  ,[CS_NUM_DIV] = CASE 
						 WHEN UNIT = 'CS' THEN [NUM_DIV]
						 ELSE 0.00
						 END
	  FROM #LIST_PRICE_1 a
	  INNER JOIN  [KNA_COMRCL].[dbo].[UOM] uom ON (a.MATERIAL = uom.MATRL and uom.UNIT IN ('EA','PKG','CS','PCH','BOT')) 
	  WHERE UNIT = 'CS' ) tmp ON (tmp.MATERIAL = b.MATERIAL and tmp.[Calendar Week] = b.[Calendar Week] 
								and b.[Sales Org.] = tmp.[Sales Org.] and b.[Channel (Customer Group)] = tmp.[Channel (Customer Group)])
		INNER JOIN [KNA_COMRCL].[dbo].[UOM] uom ON (b.MATERIAL = uom.MATRL and uom.UNIT IN ('EA','PKG','CS','PCH','BOT'))

--create a final table on all values that have a List Price values, so if a value is missing a LST_PRC we can go back and find it
IF OBJECT_ID ('tempDB..#LIST_PRICE_2AA') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_2AA;
end
SELECT DISTINCT *
INTO #LIST_PRICE_2AA
FROM (SELECT MATRL as [MATERIAL],
		[CAL_WK] as [Calendar Week],
		SALES_ORG as [Sales Org.],
		CHNL_CUST_GRP as [Channel (Customer Group)],
		LST_PRC_PER_CASE as [List Price per Case],
		UNIT,
		CURR as CURRENCY
FROM KNA_COMRCL.dbo.LST_PRC

UNION ALL

SELECT MATERIAL,
	[Calendar Week],
	[Sales Org.],
	[Channel (Customer Group)],
	[List Price per Case],
	UNIT,
	CURRENCY
FROM #LIST_PRICE_2 ) tmp
--calculate List Prices for years that are missing
IF OBJECT_ID ('tempDB..#LIST_PRICE_2A') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_2A;
end
SELECT DISTINCT tmp1.MATERIAL, 
		[List Price per Case],  
		[Calendar Week Zero] as [Calendar Week],	
		tmp1.[Sales Org.], 
		tmp1.[Channel (Customer Group)], 
		tmp1.[CURRENCY] , 
		tmp1.UNIT
INTO #LIST_PRICE_2A
FROM (SELECT DISTINCT tmp.MATERIAL, 
			[Calendar Week Zero] ,
			min(cal.[Calendar Week]) as [Calendar Week],	
			tmp.[Sales Org.], 
			cal.[Channel (Customer Group)], 
			tmp.[CURRENCY], 
			tmp.UNIT 
		FROM(SELECT MATERIAL ,	
		[Calendar Week] as [Calendar Week Zero], 
		[Sales Org.], 
		[Channel (Customer Group)], 
		[CURRENCY], 
		UNIT 
		FROM #LIST_PRICE_2AA
		WHERE [List Price per Case] = 0.00) tmp 
		LEFT OUTER JOIN #LIST_PRICE_2AA cal ON (tmp.MATERIAL = cal.MATERIAL and tmp.[Sales Org.] = cal.[Sales Org.] and tmp.CURRENCY = cal.CURRENCY and tmp.UNIT = cal.UNIT )
		WHERE [List Price per Case] <> 0.00 
		GROUP BY tmp.MATERIAL ,	tmp.[Sales Org.], tmp.[Channel (Customer Group)],tmp.[CURRENCY] , tmp.UNIT ,[Calendar Week Zero], cal.[Channel (Customer Group)])tmp1
INNER JOIN #LIST_PRICE_2AA two ON (tmp1.MATERIAL = two.MATERIAL and tmp1.[Sales Org.] = two.[Sales Org.] and tmp1.[Channel (Customer Group)] = two.[Channel (Customer Group)]
												and tmp1.[Calendar Week] = two.[Calendar Week] and tmp1.CURRENCY = two.CURRENCY and tmp1.UNIT = two.UNIT )

--Calculate the list price per each unit to accompany the List Price per Case
IF OBJECT_ID ('tempDB..#LIST_PRICE_3') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_3;
end
SELECT two.[MATERIAL]
      ,two.[Calendar Week]
      ,two.[Sales Org.]
      ,two.[Channel (Customer Group)]
      ,[List Price per Case] = CASE WHEN two.[List Price per Case] = 0.00 THEN tmp1.[List Price per Case]
									ELSE two.[List Price per Case]
								END
      ,two.[CURRENCY]
      ,two.[UNIT]
      ,[BASE_UOM]
	  ,[CS_NUM_DIV]
      ,[NUM_DIV]
      ,[DENO_DIV]
INTO #LIST_PRICE_3
FROM #LIST_PRICE_2 two
LEFT OUTER JOIN #LIST_PRICE_2A tmp1 ON (tmp1.MATERIAL = two.MATERIAL and tmp1.[Sales Org.] = two.[Sales Org.] and tmp1.[Channel (Customer Group)] = two.[Channel (Customer Group)]
												and tmp1.[Calendar Week] = two.[Calendar Week] and tmp1.CURRENCY = two.CURRENCY and tmp1.UNIT = two.UNIT )
--Calculate the price pereaches/units by using the data from the UOM table 
IF OBJECT_ID ('tempDB..#LIST_PRICE_4') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_4;
end
SELECT DISTINCT [MATERIAL]
      ,[Calendar Week]
      ,[Sales Org.]
      ,[Channel (Customer Group)]
	  ,[List Price per Case]
      ,[CURRENCY] = CASE 
						WHEN CURRENCY IS NULL THEN 'USD'
						ELSE [CURRENCY]
					 END
	  ,[List Price Per Unit EA] = CASE
									WHEN BASE_UOM = 'CS'
									THEN CASE
											WHEN UNIT = 'EA'  THEN [List Price per Case]/ [NUM_DIV]
											ELSE 0.00
										 END
									WHEN BASE_UOM <> 'CS'
									THEN CASE
										    WHEN UNIT = 'EA' THEN [List Price per Case]*[CS_NUM_DIV]/[NUM_DIV]
											ELSE 0.00
										 END
									END
	  ,[UNIT_EA] = CASE
						WHEN UNIT = 'EA' THEN 'EA'
						ELSE NULL
					END
	  ,[List Price Per Unit PCH] = CASE
									WHEN BASE_UOM = 'CS'
									THEN CASE
											WHEN UNIT = 'PCH'  THEN [List Price per Case]/ [NUM_DIV]
											ELSE 0.00
										 END
									WHEN BASE_UOM <> 'CS'
									THEN CASE
										    WHEN UNIT = 'PCH' THEN [List Price per Case]*[CS_NUM_DIV]/[NUM_DIV]
											ELSE 0.00
										 END
									END
	  ,[UNIT_PCH] = CASE
						WHEN UNIT = 'PCH' THEN 'PCH'
						ELSE NULL
					END
	  ,[List Price Per Unit PKG] = CASE
									WHEN BASE_UOM = 'CS'
									THEN CASE
											WHEN UNIT = 'PKG'  THEN [List Price per Case]/ [NUM_DIV]
											ELSE 0.00
										 END
									WHEN BASE_UOM <> 'CS'
									THEN CASE
										    WHEN UNIT = 'PKG' THEN [List Price per Case]*[CS_NUM_DIV]/[NUM_DIV]
											ELSE 0.00
										 END
									END
	  ,[UNIT_PKG] = CASE
						WHEN UNIT = 'PKG' THEN 'PKG'
						ELSE NULL
					END
	  ,[List Price Per Unit BOT] = CASE
									WHEN BASE_UOM = 'CS'
									THEN CASE
											WHEN UNIT = 'BOT'  THEN [List Price per Case]/ [NUM_DIV]
											ELSE 0.00
										 END
									WHEN BASE_UOM <> 'CS'
									THEN CASE
										    WHEN UNIT = 'BOT' THEN [List Price per Case]*[CS_NUM_DIV]/[NUM_DIV]
											ELSE 0.00
										 END
									END
	  ,[UNIT_BOT] = CASE
						WHEN UNIT = 'BOT' THEN 'BOT'
						ELSE NULL
					END
						
	  INTO #LIST_PRICE_4
	  FROM #LIST_PRICE_3
	  WHERE UNIT <> 'CS' 

--Take the List Price Per the different types of Units and use them to create a final lookup temp table with the List price per Unit (Unit)
IF OBJECT_ID ('tempDB..#LIST_PRICE_5') IS NOT NULL
begin
	DROP TABLE #LIST_PRICE_5;
end
	 SELECT DISTINCT [MATERIAL]
      ,[Calendar Week]
      ,[Sales Org.]
      ,[Channel (Customer Group)]
	  ,[List Price per Case]
      ,[CURRENCY] 
	  ,max([List Price Per Unit EA]) as [List Price Per Unit EA]
	  ,max([UNIT_EA]) as [UNIT_EA]
	  ,max([List Price Per Unit PCH]) as [List Price Per Unit PCH]
	  ,max([UNIT_PCH]) as [UNIT_PCH]
	  ,max([List Price Per Unit PKG]) as [List Price Per Unit PKG] 
	  ,max([UNIT_PKG]) as [UNIT_PKG] 
	  ,max([List Price Per Unit BOT]) as [List Price Per Unit BOT]
	  ,max([UNIT_BOT]) as [UNIT_BOT]
	  INTO #LIST_PRICE_5
	  FROM #LIST_PRICE_4
	  GROUP BY [MATERIAL]
      ,[Calendar Week]
      ,[Sales Org.]
      ,[Channel (Customer Group)]
	  ,[List Price per Case]
      ,[CURRENCY] 

	
	  --This Logic gets the final Unit and List Price per unit for each Material and populates the reporting table used 
	  --to calculate the plan to Item Actual Table.

	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

	DELETE FROM [KNA_COMRCL].[dbo].[LST_PRC] 
	WHERE EXISTS (SELECT [MATERIAL] ,[Calendar Week] ,[Sales Org.] ,[Channel (Customer Group)] ,[CURRENCY] 
				FROM #LIST_PRICE_5 lst
				WHERE lst.[MATERIAL] = [KNA_COMRCL].[dbo].[LST_PRC].[MATRL] and lst.[Calendar Week] = [KNA_COMRCL].[dbo].[LST_PRC].[CAL_WK]
				and lst.[Sales Org.] = [KNA_COMRCL].[dbo].[LST_PRC].[SALES_ORG] and lst.[Channel (Customer Group)] = [KNA_COMRCL].[dbo].[LST_PRC].[CHNL_CUST_GRP]
				and lst.[CURRENCY] = [KNA_COMRCL].[dbo].[LST_PRC].[CURR])

	--TRUNCATE TABLE [KNA_COMRCL].[dbo].[LST_PRC]
	 INSERT INTO [KNA_COMRCL].[dbo].[LST_PRC]	 
	 SELECT  [MATERIAL]
			,[Calendar Week]
			,[Sales Org.]
			,[Channel (Customer Group)]
			,[List Price per Case] 
			,[CURRENCY] 
			,[List Price Per Unit] = CASE 
								   WHEN [List Price per Case] = 0.00 THEN 0.00
								   WHEN [List Price Per Unit PKG] <> 0.00 THEN [List Price Per Unit PKG]
								   WHEN [List Price Per Unit EA] <> 0.00 THEN [List Price Per Unit EA]
								   WHEN [List Price Per Unit PCH]<> 0.00 THEN [List Price Per Unit PCH]
								   WHEN [List Price Per Unit BOT]<>0.00 THEN [List Price Per Unit BOT]
								   ELSE 0.00
								 END
			,[UNIT] = CASE 
					 WHEN [List Price Per Unit PKG] <> 0.00  THEN [UNIT_PKG]
					 WHEN [List Price Per Unit EA] <> 0.00 THEN [UNIT_EA]
					 WHEN [List Price Per Unit PCH] <> 0.00  THEN [UNIT_PCH]
					 WHEN [List Price Per Unit BOT]<>0.00 THEN [UNIT_BOT]
					 ELSE 'PKG'
				END					
			FROM #LIST_PRICE_5
	 
	 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_MATRL_STD_PRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_GET_MATRL_STD_PRC]
		PURPOSE:   Get Material Standard Prices for all Materials (KNA_COMRCL.dbo.MATRL_STD_PRC)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/05/2017   USCDXS92         Created.
		
		This stored procedure creates the MATERIAL STANDARD PRICE that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset. Logic was created in BODS for the TPE project
		By Joe Wrights team and transcribed into SQL

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_GET_MATRL_STD_PRC] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--Written in the statement for troubleshooting and performance optimization
--PRINT N'00: #Start ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

--Set the current year to allow to filter for the correct time period
DECLARE @curr_year INT
SET @curr_year = YEAR(getdate())

--From the MBEWH and MBEW table get the current and previous material standard price for each material.  
--US prices are for BW Key 0300 and the Canadian costs are in BW Key 0400.  We also limit the materials to 
--FERTs and HALBs.  We calculate the price by dividing STPRS/PEINH.
IF OBJECT_ID ('tempDB..#mat_std_price_1') IS NOT NULL
begin
	DROP TABLE #mat_std_price_1;
end
SELECT MATERIAL
	  ,[Fiscal Year]
	  ,[Month]
	  ,/*CASE WHEN NUM_DIV IS NOT NULL THEN [Standard Price]/NUM_DIV
		ELSE [Standard Price]
		END as */[Standard Price]
	  ,[CURRENCY]
INTO #mat_std_price_1
FROM( SELECT  a.MATNR as MATERIAL
		,a.LFGJA as [Fiscal Year]
		,a.LFMON as [Month]
		,[Standard Price] = CASE 
								WHEN PEINH <> 0 THEN STPRS/PEINH
								ELSE 0
							  END
		,[CURRENCY] = CASE
							WHEN BWKEY = '0300' THEN 'USD'
							WHEN BWKEY = '0400' THEN 'CAD'
							ELSE NULL
						END
		FROM [KNA_ECC].[dbo].[MBEWH] a
		INNER JOIN (SELECT DISTINCT b.MATNR from [KNA_ECC].[dbo].[MARA] b where b.MTART IN ('HALB','FERT')) mara ON mara.MATNR = a.MATNR
		WHERE BWKEY IN ('0300','0400')

		UNION ALL

		SELECT c.MATNR as MATERIAL
		,LFGJA as [Fiscal Year]
		,LFMON as [Month]
		,[Standard Price] = CASE 
								WHEN PEINH <> 0 THEN STPRS/PEINH
								ELSE 0
							  END
		,[CURRENCY] = CASE
							WHEN BWKEY = '0300' THEN 'USD'
							WHEN BWKEY = '0400' THEN 'CAD'
							ELSE NULL
						END
		FROM [KNA_ECC].[dbo].[MBEW] c
		INNER JOIN (SELECT DISTINCT b.MATNR from [KNA_ECC].[dbo].[MARA] b where b.MTART IN ('HALB','FERT')) mara ON mara.MATNR = c.MATNR
		WHERE BWKEY IN ('0300','0400') ) tmp
		--LEFT OUTER JOIN KNA_COMRCL.dbo.UOM u ON (u.MATRL = tmp.MATERIAL and UNIT = 'CS' and NUM_DIV <> 1)

--get the max month per year per material to only use one price per year.  Drop the index to improve performance.
--This table must be an actual table because temp tables can't be used in scalar functions
 
IF EXISTS (SELECT name from sys.indexes where name = 'mat_std_price_lkup_ix')
begin
	 DROP INDEX mat_std_price_lkup_ix ON KNA_COMRCL.STG.MAT_STD_PRICE_LKUP 
end

		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

TRUNCATE TABLE KNA_COMRCL.STG.MAT_STD_PRICE_LKUP
INSERT  INTO KNA_COMRCL.STG.MAT_STD_PRICE_LKUP
SELECT DISTINCT vals.MATERIAL
	   ,vals.[Fiscal Year] as [Calendar Year]
	   ,vals.[Standard Price]
	   ,vals.CURRENCY
FROM #mat_std_price_1 vals
INNER JOIN (SELECT a.MATERIAL ,[Fiscal Year] ,max([Month]) as [Month]  ,[CURRENCY] 
            FROM #mat_std_price_1 a
	       GROUP BY MATERIAL, [Fiscal Year], [CURRENCY]) max_dt ON (max_dt.MATERIAL = vals.MATERIAL and max_dt.CURRENCY= vals.CURRENCY 
												                  and max_dt.[Fiscal Year]  = vals.[Fiscal Year] and max_dt.[Month] = vals.[Month])
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end
	COMMIT TRANSACTION;

--create an index that will allow for quicker lookups		
CREATE UNIQUE INDEX mat_std_price_lkup_ix on [KNA_COMRCL].[STG].[MAT_STD_PRICE_LKUP] (MATERIAL, [CAL_YR], CURR)

--ensure that we have values for the past 3 years, create a table that has 3 rows to represent this
IF OBJECT_ID ('tempDB..#years') IS NOT NULL
begin
	DROP TABLE #years;
end
SELECT @curr_year as [YEAR] INTO #years
INSERT INTO #years values (@curr_year-1)
INSERT INTO #years values (@curr_year-2)

--left outer join all years that have values and then run the USF function that looks up missing values.
IF OBJECT_ID ('tempDB..#mat_std_price_2') IS NOT NULL
begin
	DROP TABLE #mat_std_price_2;
end
SELECT  MATERIAL
	   ,[Calendar Year]
	   ,[Standard Price] = CASE
								WHEN [Standard Price] IS NULL THEN KNA_COMRCL.dbo.USF_LKUP_YR_PRC(MATERIAL,[Calendar Year],[CURRENCY])
								ELSE [Standard Price]
							END
	   ,[CURRENCY]
INTO #mat_std_price_2
FROM (SELECT tmp.MATERIAL
	  ,tmp.[YEAR] as [Calendar Year]
	  ,[STD_PRC] as  [Standard Price]
	  ,tmp.CURRENCY
FROM (Select DISTINCT MATERIAL
	   ,[YEAR]
	   ,[CURR] as [CURRENCY]
	   FROM KNA_COMRCL.STG.MAT_STD_PRICE_LKUP
	   LEFT OUTER JOIN #years ON (1=1) )tmp
	   LEFT OUTER JOIN KNA_COMRCL.STG.MAT_STD_PRICE_LKUP mat ON (tmp.[YEAR]= mat.[CAL_YR] and tmp.MATERIAL = mat.MATERIAL
										 and tmp.CURRENCY = mat.CURR) ) tmp1


--Create the Material Standard Pricing where the MOD Material is the same as component Material
IF OBJECT_ID ('tempDB..#mat_std_price_3') IS NOT NULL
begin
	DROP TABLE #mat_std_price_3;
end
SELECT  MATERIAL as [MOD Material]
	   ,MATERIAL as [Component Material]
	   ,[Calendar Year]
	   ,[Standard Price]
	   ,[CURRENCY]
	   ,100.00 as [Percent]
	   ,NULL as [Quantity]
	   ,'NULL' as [UNIT]
	   ,'NULL' as [Sales Org]
	INTO #mat_std_price_3
	FROM #mat_std_price_2
--Get the full list of Material Prices
IF OBJECT_ID ('tempDB..#mat_std_price_4') IS NOT NULL
begin
	DROP TABLE #mat_std_price_4;
end
SELECT [MOD Material]
	   ,[Component Material]
	   ,[Calendar Year]
	   ,[Standard Price]
	   ,[CURRENCY]
	   ,[Percent]
	   ,[Quantity]
	   ,[UNIT]
	   ,[Sales Org]
INTO #mat_std_price_4
FROM (SELECT  [MOD Material]
	   ,[Component Material]
	   ,[Calendar Year]
	   ,[Standard Price]
	   ,[CURRENCY]
	   ,[Percent]
	   ,[Quantity]
	   ,[UNIT]
	   ,[Sales Org]
	FROM #mat_std_price_3

UNION ALL

SELECT  bom.[MOD_MATRL] as [MOD Material]
	   ,a.MATERIAL as [Component Material]
	   ,a.[Calendar Year]
	   ,a.[Standard Price]
	   ,a.[CURRENCY]
	   ,bom.[PCT] as [Percent]
	   ,bom.[QTY] as Quantity
	   ,bom.[UNIT]
	   ,bom.[SALES_ORG] as [Sales Org]
	FROM #mat_std_price_3 mat
	INNER JOIN [KNA_COMRCL].[dbo].[BOM] bom ON (mat.[MOD Material] = bom.[MOD_MATRL] and (CASE WHEN bom.SALES_ORG = '1001' THEN 'USD' 
																								WHEN bom.SALES_ORG = '1002' THEN 'CAD' ELSE NULL END) = mat.CURRENCY)
	INNER JOIN #mat_std_price_2 a ON (bom.[CMPT_MATRL] = a.MATERIAL and a.[Calendar Year] = mat.[Calendar Year] and a.[CURRENCY]= mat.CURRENCY ) ) tmp

--sum the component COST of production for each MOD Material per calendar year and currency. 
--This will be used to calculate the remod for the prices of materials.  This gets the sum of 
--the components
IF OBJECT_ID ('tempDB..#mat_std_price_sum') IS NOT NULL
begin
	DROP TABLE #mat_std_price_sum;
end
Select [MOD Material]
	   ,[Calendar Year]
	   ,sum([Standard Price]*Quantity) as [Sum Component COP$]
	   ,[CURRENCY] as [Component COP Currency]
	   INTO #mat_std_price_sum
	   FROM #mat_std_price_4
	   WHERE [MOD Material]<>[Component Material] 
	   GROUP BY [MOD Material]
	   ,[Calendar Year]
	   ,[CURRENCY]

--Calculate the final Material Standard Price table and insert it into the database
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

TRUNCATE TABLE [KNA_COMRCL].[dbo].[MATRL_STD_PRC]
INSERT INTO [KNA_COMRCL].[dbo].[MATRL_STD_PRC]
--insert the standard price into the final table.
SELECT DISTINCT [MOD Material]
	   ,[Component Material]
	   ,[Calendar Year]
	   ,[Standard Price]
	   ,[CURRENCY]
FROM ( 
	--recalculate the standard price using the Mod Adjustment as well as listed standard price
		SELECT fin.[MOD Material]
	   ,fin.[Component Material]
	   ,fin.[Calendar Year]
	   ,([MOD Std Price Adjustment]*([Percent]/100) + [Standard Price]*Quantity)/[Quantity] as [Standard Price]
	   ,[CURRENCY]
    FROM #mat_std_price_4 fin
	INNER JOIN (
	--calculate the difference between how much the standard price for a mod is and get the price adjustment as the
	--difference to recalculate the Standard Price.
	Select a.[MOD Material]
	   ,a.[Calendar Year]
	   ,[Sum Component COP$]
	   ,[Component COP Currency]
	   ,a.[Standard Price] - mat_sum.[Sum Component COP$] as [MOD Std Price Adjustment]
	   FROM #mat_std_price_4 a
	   INNER JOIN #mat_std_price_sum mat_sum ON (mat_sum.[Calendar Year] = a.[Calendar Year] 
												and mat_sum.[MOD Material] = a.[MOD Material] 
												and mat_sum.[Component COP Currency] = a.CURRENCY)
	   WHERE a.[Component Material] = a.[MOD Material]
	   
					) b ON (fin.[Calendar Year]=b.[Calendar Year] and fin.[MOD Material] = b.[MOD Material] 
							     and fin.CURRENCY = b.[Component COP Currency])
	
	WHERE fin.[MOD Material]<> fin.[Component Material]

	UNION ALL

	SELECT [MOD Material]
	   ,[Component Material]
	   ,[Calendar Year]
	   ,[Standard Price]
	   ,[CURRENCY] 
	FROM #mat_std_price_4 
	WHERE [Component Material] = [MOD Material]
	) tmp
	WHERE [Standard Price] > 0 

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
	end
	COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_UOM]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_GET_UOM]
		PURPOSE:   Get UOM for all Materials (KNA_COMRCL.dbo.UOM)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/04/2017   USCDXS92         Created.
		
		This stored procedure creates the UOM dataset that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It selects the correct fields from the material master tables as well as corrects for missing
		records based on specific units.  Logic was created in BODS jobs for the TPE project led by Joe Wright's team
		and transcribed into SQL USPs.

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_GET_UOM] 
	
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;
SAVE TRANSACTION uom_lkup;


TRUNCATE TABLE [KNA_COMRCL].[dbo].[UOM]
INSERT INTO [KNA_COMRCL].[dbo].[UOM]
Select *
FROM (
--This first section Trims the leading 0s and spaces in front of material as well as formats the table and adds the unit fields.
--This is applied to all the values that are currently in the MARM and MARA table and also trims leaves out Materials with lengths
--greater then 15 so as to leave out the Store components
    SELECT a.MATNR as MATERIAL,
       b.MEINH as UNIT,
	   a.MEINS as BASE_UOM,
	   b.UMREZ as NUM,
	   b.UMREN as DENO,
	   b.UMREN/b.UMREZ as NUM_DIV , 
	   b.UMREZ/b.UMREN as DENO_DIV,
	   [UNIT_FLAG] = CASE 
		   WHEN b.MEINH = 'PKG' THEN 1
		   WHEN b.MEINH = 'EA' THEN 2
		   WHEN b.MEINH = 'BOT' THEN 3
		   WHEN b.MEINH = 'PCH' THEN 4
		   WHEN b.MEINH = 'ZNK' THEN 5
		   WHEN b.MEINH = 'CS' THEN 6
		   ELSE 0
		END
   FROM [KNA_ECC].[dbo].[MARA] a
   INNER JOIN [KNA_ECC].[dbo].[MARM] b ON b.MATNR = a.MATNR
   WHERE b.MEINH IN ('PKG', 'EA' ,'BOT','PCH','ZNK','CS') 
   and (a.MTART IN ('HALB', 'FERT')) and (ISNUMERIC(a.MATNR) = 1)
   --VERP is a packaging material
   --If we need more the FERT AND HALB, use a non-numeric

   UNION ALL

   --This second section creates a new record with the Unit as 'PKG' if the material has either PCH, BOT or an EA and not PKG.  It unions with the
      --original query because we want to add this Package record for future use.
   SELECT a.MATNR as MATERIAL,
       'PKG' as UNIT,
	   a.MEINS as BASE_UOM,
	   b.UMREZ as NUM,
	   b.UMREN as DENO,
	   b.UMREN/b.UMREZ as NUM_DIV , 
	   b.UMREZ/b.UMREN as DENO_DIV,
	   [UNIT_FLAG] = 1
   FROM [KNA_ECC].[dbo].[MARA] a
   INNER JOIN [KNA_ECC].[dbo].[MARM] b ON b.MATNR = a.MATNR

   --This section selects materials that have a UNIT of either PCH, BOT or EA and not a record with a PKG value
   INNER JOIN ( 
	--We need to select the record with the value (EA, PCH, BOT) to apply the numerator and denomerator values.
	Select 	MATERIAL, c.MEINH
	    --tmp2	
		--Here we select the Materials that have a value of (EA,PCH,BOT) associated with them but no PKG by selecting those records with a flag of 0
		FROM(
			SELECT MATERIAL
			--tmp1
			--Creating a flag value and summing them up.  Any material that has a Package value associated will be 1, any material that doesnt will be 0
			FROM (
				SELECT MATERIAL,
					   sum(FLAG) as FLAG
				--tmp
				--applies the flag logic of PKG =1 and everyhing else equal to 0 to be used in future queries.
				FROM (  
					select a.MATNR as MATERIAL,
						 b.MEINH as UNIT,
						 FLAG = CASE
									WHEN b.MEINH = 'PKG' THEN 1
									ELSE 0
								END	 
					FROM [KNA_ECC].[dbo].[MARA] a
					INNER JOIN [KNA_ECC].[dbo].[MARM] b ON b.MATNR = a.MATNR
					WHERE (b.MEINH = 'EA' or b.MEINH = 'BOT' or b.MEINH = 'PCH' or b.MEINH = 'PKG') 
					and a.MTART IN ('HALB', 'FERT')
					) tmp
					GROUP BY tmp.MATERIAL

				)tmp1 WHERE FLAG = 0 
			) tmp2   INNER JOIN  [KNA_ECC].[dbo].[MARM] c ON tmp2.MATERIAL = c.MATNR
		) tmp3 ON  tmp3.MATERIAL = b.MATNR and tmp3.MEINH = b.MEINH and b.MEINH in ('EA','BOT','PCH')
     WHERE ISNUMERIC(a.MATNR) = 1
   ) tmp4;

   
IF (@@ERROR <> 0)
begin
       ROLLBACK TRANSACTION uom_lkup;
end
COMMIT TRANSACTION;

END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_ZMATCHAWK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*-- =============================================
-- Author:		<Smith, Dylan>
-- Create date: <04/05/2017>
-- Description:	<Description,,>
--This stored procedure creates the LIST_PRICE that is used by the RGM rebuild of 3 BEx queries  
--in Keystone.  It runs different calculations based on the UNIT to get the correct
--values and then combines them all into one final dataset.  It is called by the Stored Procedure
--USP_GET_LST_PRC in order to calculate the List Price for RGM data that will be used to properly explode MOD materials
Ver        Date        Author           Description
---------  ----------  ---------------  ------------------------------------
		2.0        11/12/2018   USCMXJ11         Added parameter to calculate LIst price for plan data.
-- =============================================*/
CREATE PROCEDURE [dbo].[USP_GET_ZMATCHAWK] @PLAN_FLAG varchar(1)
	
AS
BEGIN

--Get all of the Red K List Prices for all company materials.
IF OBJECT_ID ('tempDB..#lookupPriceRedK') IS NOT NULL
begin
	DROP TABLE #lookupPriceRedK;
end
select DISTINCT MATRL_NBR as MATRL_NBR
				,SALES_ORG
				,STRT_DT
				,END_DT
				,PRC
				INTO #lookupPriceRedK
				from KG_VIEWS.KNA.UVW_MATRL_PRC 


--Get all of the Red K List Prices for the materials and re-calculate the List Price for when it is used in the Military channel.
--This logic uses the ZBCS price and multiplies it by the amount of units per case.
IF OBJECT_ID ('tempDB..#lookupPriceMilitary') IS NOT NULL
begin
	DROP TABLE #lookupPriceMilitary;
end
SELECT tmp.MATRL_NBR as MATRL_NBR
	  ,tmp.SALES_ORG
	  ,tmp.CUST_GRP 
	  ,tmp.STRT_DT
	  ,tmp.END_DT
	  ,COALESCE(tmp.PRC*tmp.UMREN+tmp2.PRC,tmp.PRC*tmp.UMREN,tmp2.PRC) as PRC
	INTO #lookupPriceMilitary
	FROM(select DISTINCT MATRL_NBR as MATRL_NBR
				,SALES_ORG
				,STRT_DT
				,END_DT
				,PRC
				from #lookupPriceRedK )tmp2
	INNER JOIN (select DISTINCT m.MATNR as MATRL_NBR
						,b.VKORG as SALES_ORG
						,b.KDGRP as CUST_GRP
						,b.DATAB as STRT_DT 
						,b.DATBI as END_DT
						,p.KBETR as PRC
						,marm.UMREN
						from KNA_ECC.dbo.MARA m 
						join KNA_ECC.dbo.A902 b on b.KSCHL = 'ZBCS' and m.MATNR = b.MATNR and KDGRP = '04' and PLTYP = '21'
						join KNA_ECC.dbo.KONH h on b.KNUMH=h.KNUMH and b.DATAB<=h.DATBI and b.DATAB>=h.DATAB and b.DATBI<=h.DATBI and b.DATBI>=h.DATAB
						join KNA_ECC.dbo.KONP p on h.KNUMH=p.KNUMH
						join KNA_ECC.dbo.MARM marm on m.MATNR = marm.MATNR and marm.MEINH = p.KMEIN ) tmp ON 
										(tmp2.MATRL_NBR = tmp.MATRL_NBR and tmp.SALES_ORG = tmp2.SALES_ORG and (tmp.END_DT between tmp2.STRT_DT and tmp2.END_DT))

--Get the list price for materials.  We will also add a customer channel based on the CUST_HIER and create a Sales Org.  
--This will be used for the non military customers and then unioned with the military subset.


DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')

IF OBJECT_ID ('tempDB..#allValues') IS NOT NULL
begin
	DROP TABLE #allValues;
end
CREATE TABLE #allValues(CUSTOMER VARCHAR(10) COLLATE DATABASE_DEFAULT,[/BIC/ZMXDPALM] VARCHAR(18) COLLATE DATABASE_DEFAULT,
[CALWEEK] VARCHAR(8) COLLATE DATABASE_DEFAULT,[/BIC/ZMXDFLG] VARCHAR(1) COLLATE DATABASE_DEFAULT,CURRENCY VARCHAR(5) COLLATE DATABASE_DEFAULT)

--delta load only adds the records that were brought over new

if(@PLAN_FLAG = 'N')

BEGIN

--FULL LOAD, run the full build if there was a BW Full load, else run a delta load for performance tuning.

if (@full_load = 'Y')
begin
	--full load uses the dbo table to get all the values
	INSERT INTO #allValues
	SELECT DISTINCT CUSTOMER,
		 b.[CMPT_MATRL] as [/BIC/ZMXDPALM],
		[CALWEEK],
		[/BIC/ZMXDFLG],
		CURRENCY
	FROM [KNA_BW].[dbo].[AZD_CON6100]
	LEFT OUTER JOIN KNA_COMRCL.dbo.BOM  b ON (b.[MOD_MATRL]= MATERIAL)
	WHERE [MOD_MATRL] IS NOT NULL
end

else
BEGIN

insert INTO #allValues
SELECT DISTINCT CUSTOMER,
	 b.[CMPT_MATRL] as [/BIC/ZMXDPALM],
	[CALWEEK],
	[/BIC/ZMXDFLG],
	CURRENCY
FROM [KNA_BW].[STG].[AZD_CON6100]
LEFT OUTER JOIN KNA_COMRCL.dbo.BOM  b ON (b.[MOD_MATRL]= MATERIAL)
WHERE [MOD_MATRL] IS NOT NULL

END


END


ELSE IF(@PLAN_FLAG = 'Y')

BEGIN
print(@PLAN_FLAG)

--FULL LOAD, run the full build if there was a BW Full load, else run a delta load for performance tuning.

if (@full_load = 'Y')
begin
	--full load uses the dbo table to get all the values
	TRUNCATE TABLE #allValues
	INSERT INTO #allValues
	SELECT DISTINCT CUST,
	 b.[CMPT_MATRL] as [/BIC/ZMXDPALM],
	CAL_WK,
	MIXD_PLT_FLG,
	CURR
	FROM --[KNA_BW].[dbo].[AZD_CON6100]
	KNA_COMRCL.dbo.ZM_TPM60
	LEFT OUTER JOIN KNA_COMRCL.dbo.BOM  b ON (b.[MOD_MATRL] = MATRL )
	WHERE [MOD_MATRL] IS NOT NULL
end

else
begin

INSERT INTO #allValues
SELECT DISTINCT CUST,
	 b.[CMPT_MATRL] as [/BIC/ZMXDPALM],
	CAL_WK,
	MIXD_PLT_FLG,
	CURR
FROM --[KNA_BW].[STG].[AZD_CON6100]
KNA_COMRCL.STG.ZM_TPM60
LEFT OUTER JOIN KNA_COMRCL.dbo.BOM  b ON (b.[MOD_MATRL] = MATRL )
WHERE [MOD_MATRL]  IS NOT NULL
end


END

--Get the list price per combination of unique identifiers and ensure that it is for the right channel.
IF OBJECT_ID ('tempDB..#zmatchawk') IS NOT NULL
begin
	DROP TABLE #zmatchawk;
end
SELECT DISTINCT [CUSTOMER]
      ,[Mixed Pallet Material]
	  ,[Calendar Week]
	  ,con.[CUSTOMER_GRP]
	  ,con.SALES_ORG 
	  ,[List Price] = (SELECT DISTINCT PRC FROM #lookupPriceRedK st WHERE con.[Mixed Pallet Material] = MATRL_NBR 
											and con.FISC_WK_END_DT BETWEEN st.STRT_DT and st.END_DT AND con.SALES_ORG  = st.SALES_ORG)
      ,[CURRENCY]
	  ,FISC_WK_END_DT
INTO #zmatchawk
FROM (
--Get all the non military customers
SELECT DISTINCT [CUSTOMER]
      ,[/BIC/ZMXDPALM] as [Mixed Pallet Material]
	  ,[CHNL_IND] as [CUSTOMER_GRP]
	  ,[CALWEEK] as [Calendar Week]
	  ,cust.SALES_ORG
      ,[CURRENCY]
	  ,fisc.FISC_WK_END_DT
  FROM #allValues a 
  INNER JOIN KG_VIEWS.KNA.UVW_CUST cust ON (a.CUSTOMER  = CUST_NBR  ) 
  INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc ON ([CALWEEK] = FISC_YR*100 + FISC_WK) ) con
  WHERE con.CUSTOMER_GRP <> '04'

UNION ALL
--find the List Prices for all the military customers. 
SELECT [CUSTOMER]
      ,[Mixed Pallet Material]
	  ,[Calendar Week]
	  ,[CUSTOMER_GRP]
	  ,con.SALES_ORG 
	  ,[List Price] = (SELECT DISTINCT PRC FROM #lookupPriceMilitary st WHERE con.[Mixed Pallet Material] = MATRL_NBR 
											and con.FISC_WK_END_DT BETWEEN st.STRT_DT and st.END_DT AND con.SALES_ORG  = st.SALES_ORG 
											and CUSTOMER_GRP = CUST_GRP )
      ,[CURRENCY]
	  ,FISC_WK_END_DT
FROM (SELECT DISTINCT [CUSTOMER]
      ,[/BIC/ZMXDPALM] as[Mixed Pallet Material]
	  ,[CHNL_IND] as [CUSTOMER_GRP]
	  ,[CALWEEK] as [Calendar Week]
	  ,cust.SALES_ORG
      ,[CURRENCY]
	  ,fisc.FISC_WK_END_DT
 FROM #allValues a 
  INNER JOIN KG_VIEWS.KNA.UVW_CUST cust ON (a.CUSTOMER = CUST_NBR ) 
  INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc ON ([CALWEEK] = FISC_YR*100 + FISC_WK ) 
  WHERE  CHNL_IND = '04' )con

--if military customers are missing a price correction, use the Red K price table
IF OBJECT_ID ('tempDB..#zmatchawk1') IS NOT NULL
begin
	DROP TABLE #zmatchawk1;
end
SELECT [CUSTOMER]
      ,[Mixed Pallet Material]
	  ,[Calendar Week]
	  ,z.[CUSTOMER_GRP]
	  ,z.SALES_ORG as [Sales Org.]
	  ,[List Price] = CASE
						WHEN [List Price] IS NULL THEN (SELECT DISTINCT PRC FROM #lookupPriceRedK st WHERE [Mixed Pallet Material] = MATRL_NBR
											and FISC_WK_END_DT BETWEEN st.STRT_DT and st.END_DT AND z.SALES_ORG  = st.SALES_ORG)
						ELSE [List Price]
					   END
      ,[CURRENCY]
	 ,FISC_WK_END_DT
	INTO #zmatchawk1 
	FROM #zmatchawk z


--This commented out section looks up the "Reference" Materials List price.  Will be handled by Wynter Johnson's view.
-------------------------------------------------------------------------------------------------------------------------------------------
/*
IF OBJECT_ID ('tempDB..#lookupPriceLookup') IS NOT NULL
begin
	DROP TABLE #lookupPriceLookup;
end
select m.MATNR as MATRL_NBR
				,a.VKORG as SALES_ORG
				,a.DATAB as STRT_DT
				,a.DATBI as END_DT
				,p.KBETR as PRC
				INTO #lookupPriceLookup
				from (SELECT DISTINCT [Mixed Pallet Material] as MATNR, [Sales Org.] as VKORG FROM KNA_MKTG.dbo.LIST_PRICE_SRC_TEST WHERE [List Price] IS NULL) m 
				join KNA_ECC.dbo.MVKE v on v.MATNR LIKE '%'+ m.MATNR and m.VKORG = v.VKORG
				join KNA_ECC.dbo.A901 a on a.KSCHL='ZBAS' and a.MATNR=v.PMATN
				join KNA_ECC.dbo.KONH h on a.KNUMH=h.KNUMH and a.DATAB<=h.DATBI and a.DATAB>=h.DATAB and a.DATBI<=h.DATBI and a.DATBI>=h.DATAB
				join KNA_ECC.dbo.KONP p on h.KNUMH=p.KNUMH


IF OBJECT_ID ('tempDB..#zmatchawk2') IS NOT NULL
begin
	DROP TABLE #zmatchawk2;
end

SELECT [CUSTOMER]
      ,[Mixed Pallet Material]
	  ,[Calendar Week]
	  ,[CUSTOMER_GRP]
	  ,[Sales Org.]
	  ,[List Price] = CASE
						WHEN [List Price] IS NULL THEN (SELECT DISTINCT PRC FROM #lookupPriceLookup st WHERE [Mixed Pallet Material] = MATRL_NBR COLLATE SQL_Latin1_General_CP1_CI_AS 
											and FISC_WK_END_DT BETWEEN st.STRT_DT and st.END_DT AND [Sales Org.] = st.SALES_ORG COLLATE SQL_Latin1_General_CP1_CI_AS)
						ELSE [List Price]
					   END
      ,[CURRENCY]
	 ,FISC_WK_END_DT
	INTO #zmatchawk2
	FROM #zmatchawk1  
*/
-------------------------------------------------------------------------------------------------------------------------------------------------------
--Insert into the lookup table to be used in USP_GET_LST_PRC to calculate the correct List Prices
	
	
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

TRUNCATE TABLE [KNA_COMRCL].[STG].[LST_PRC_SRC]		
INSERT INTO [KNA_COMRCL].[STG].[LST_PRC_SRC]	
	SELECT  [CUSTOMER]
      ,[Mixed Pallet Material]
	  ,[Calendar Week]
	  ,[CUSTOMER_GRP]
	  ,[Sales Org.]
	  ,ISNULL([List Price],0.00) as [List Price]
      ,[CURRENCY]
	FROM #zmatchawk1

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
END

GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PROMTN_CNTR_CHK_SNPSHT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_LOAD_PROMTN_CNTR_CHK_SNPSHT]
@FISC_YR SMALLINT
,@FISC_PD SMALLINT

AS 
/**********************************************************************************
   NAME        : USP_LOAD_PROMTN_CNTR_CHK_SNPSHT
   PURPOSE & 
   Description : This script will populate data into promotion counter snapshot
                 table for KPI 6.		   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       06/4/2017      USCB1S07                1. Initial Version

**********************************************************************************/
BEGIN
     SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;


BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;

/**************** Deletes the existing data for the same period from the snapshot table ****************/

DELETE FROM KNA_COMRCL.dbo.PROMTN_CNTR_CHK_SNPSHT
WHERE VERSN_YR = @FISC_YR
      AND VERSN_MN = @FISC_PD;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

/**************** Inserting promotion data into snapshot table ****************/

INSERT INTO KNA_COMRCL.dbo.PROMTN_CNTR_CHK_SNPSHT
(
FISC_YR
,FISC_PD
,TRADE_PROMTN_ID
,TRADE_PROMTN_DESC
,PROMTN_TYP
,PLN_TO_NBR
,PLN_TO_TERR
,PLN_ACCT
,PLN_STRT_DT
,PLN_END_DT
,STATUS
,EMPL_RESP
,KLG_MERCHNG_FUND_PCT
,GROS_SALE
,GROS_SALE_CURR
,TRADE_SPND
,TRADE_SPND_CURR
,BUYNG_STRT_DT
,BUYNG_END_DT
,CNTR_ATTCH
,PROMTN_CNTR_ATTCH_CNT
,RSN_CODE
,VERSN
,VERSN_YR
,VERSN_MN
,DW_CRE_TS
,DW_CRE_USR
)
SELECT CAL.FISC_YR
      ,CAL.FISC_PD
	  ,PRJ.EXTERNAL_ID AS TRADE_PROMTN_ID
      ,TXT.TEXT1 AS TRADE_PROMTN_DESC
	  ,CTYPT.CAMP_TYPETX AS PROMTN_TYP
	  ,CHD.LST_LVL_CUST_NBR AS PLN_TO_NBR
	  ,CAST(CAST(CHD.LST_LVL_CUST_NBR AS INTEGER) AS VARCHAR(10)) + '/' + ATTR.ZZECC_SORG_CR + '0101' AS PLN_TO_TERR
	  ,PAR.NAME_ORG1 AS PLN_ACCT
	  ,CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),1,8) AS DATE) AS PLN_STRT_DT
	  ,CAST(SUBSTRING(CAST(PRJ.PLANFINISH AS VARCHAR(20)),1,8) AS DATE) AS PLN_END_DT
	  ,T.TXT30 AS STATUS
	  ,PAR1.NAME_FIRST + ' ' + PAR1.NAME_LAST AS EMPL_RESP
	  ,CAST(ATTR.ZZKMF_PER AS DECIMAL(15,2)) AS KLG_MERCHNG_FUND_PCT
	  ,CAST(ATTR.ZZAFLD00003I AS DECIMAL(15,2)) AS GROS_SALE
	  ,ATTR.ZZAFLD00003J AS GROS_SALE_CURR
	  ,CAST(ATTR.ZZAFLD00003M AS DECIMAL(15,2)) TRADE_SPND
	  ,ATTR.ZZAFLD00003N AS TRADE_SPND_CURR
	  ,CAST(SUBSTRING(CAST(MKTPL_DT.START_DATE AS VARCHAR(20)),1,8) AS DATE) AS BUYNG_STRT_DT
	  ,CAST(SUBSTRING(CAST(MKTPL_DT.END_DATE AS VARCHAR(20)),1,8) AS DATE) AS BUYNG_END_DT
	  ,CASE WHEN LTRIM(RTRIM(ATTR.ZZAFLD000003)) = '' THEN NULL ELSE ATTR.ZZAFLD000003 END AS CNTR_ATTCH
	  ,CASE WHEN LTRIM(RTRIM(ATTR.ZZAFLD000003)) = '' THEN 0 ELSE 1 END AS PROMTN_CNTR_ATTCH_CNT
	  ,NULL AS RSN_CODE
	  ,CAST(GETDATE() AS DATE)
	  ,CAL.FISC_YR
      ,CAL.FISC_PD
	  ,GETDATE()
	  ,'BODS'
FROM
KNA_CRM..CGPL_PROJECT PRJ

INNER JOIN KNA_CRM..CGPL_TEXT TXT
ON PRJ.GUID = TXT.GUID
   AND PRJ.PLANSTART <> 0

INNER JOIN KG_VIEWS..UVW_FISC_CAL CAL
ON CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),1,8) AS DATE) BETWEEN CAL.FISC_WK_STRT_DT
   AND CAL.FISC_WK_END_DT

INNER JOIN KNA_CRM..CRM_MKTPL_ATTR ATTR 
ON PRJ.GUID = ATTR.GUID
   AND PRJ.CLIENT = ATTR.CLIENT

INNER JOIN KNA_CRM..CRMC_MKTPL_CTYPT CTYPT
ON CTYPT.CAMP_TYPE = ATTR.CAMP_TYPE
   AND CTYPT.LANGU = 'E'

INNER JOIN KNA_CRM..CRM_JSTO JSTO
ON PRJ.GUID = JSTO.OBJNR

INNER JOIN KNA_CRM..TJ30T T
ON T.STSMA = JSTO.STSMA
   AND T.SPRAS = 'E'

INNER JOIN (SELECT OBJNR, STAT, UDATE
				   ,RANK() OVER (PARTITION BY OBJNR ORDER BY OBJNR, UDATE DESC, UTIME DESC) RNK
            FROM KNA_CRM..CRM_JCDS
            WHERE INACT <> 'X'
           ) JCDS
ON JCDS.OBJNR = JSTO.OBJNR
   AND JCDS.STAT = T.ESTAT
   AND JCDS.RNK = 1

INNER JOIN KNA_CRM..BUT000 PAR
ON ATTR.ZZCUSTOMER_NO = PAR.PARTNER

LEFT JOIN KNA_CRM..BUT000 PAR1
ON ATTR.RESPONSIBLE = PAR1.PARTNER_GUID

INNER JOIN KNA_CRM..CRMD_MKTPL_DATE MKTPL_DT
ON MKTPL_DT.PROJECT_GUID = ATTR.GUID
   AND MKTPL_DT.DATE_ID = 2

INNER JOIN KNA_CRM..CRM_MKTPL_TPATTR TPATTR
ON ATTR.GUID = TPATTR.GUID

LEFT JOIN KNA_CRM..CRMD_MKTPL_PAR PTNR
ON ATTR.GUID = PTNR.PROJECT_GUID

LEFT OUTER JOIN KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL CHD  
 ON CHD.HIER_TYP='D' 
    AND CHD.LST_LVL_CUST_NBR = ATTR.ZZCUSTOMER_NO
    AND CHD.HIER_TM_PD='CURRENT'
WHERE
     CAL.FISC_YR = @FISC_YR
     AND CAL.FISC_PD = @FISC_PD
	 AND ATTR.CAMP_TYPE  NOT IN ('Z160','Z260','Z610')
     AND JCDS.STAT NOT IN ('E0001', 'E0002', 'E0007')

;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_BW_ARCHIVE]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PROC_BW_ARCHIVE] (@delta_Flag varchar(5))


AS
BEGIN
    SET NOCOUNT ON;
    /******************************************************************************
		NAME:      [USP_PROC_BW_ARCHIVE]
		PURPOSE:   remove duplicates from archive tables and insert from daily tables
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        07/24/2017   USCDXS92         Created.
		2.0		   10/15/2018	USCMXJ11		TASK0564827 - ADD Scanner apps and overlay amount columns
		
		This stored procedure archives the daily delta extract from the BW system 
		into the history tables present in the SQL server.  Each table is first cleansed
		 of any records that represent old data using key fields before the whole delta 
		 table is inserted into the history table.  This process is completed for each 
		 of the delta tables from the BW extract.  It uses the BW delta flag to ensure
		 optimal performance

		******************************************************************************/
	SET IMPLICIT_TRANSACTIONS OFF;

	DECLARE @index TABLE (index_nm varchar(23))

	--declare rowcount variable for index checking
	--Enter a try catch loop
    --TPM82  
PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
if (@delta_Flag = 'TPM88')
begin
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

	IF ((SELECT TOP 1 [/BIC/ZFLGDLTA] FROM [KNA_BW].[STG].[AZD_TPM8800]) = 'F')
	begin
		--check if a full load.  If so, Truncate the history table and update the last updated time
		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_TPM8800])WHERE TABLE_NM = 'AZD_TPM8800'
		--drop the index if a full load.  For a full load we rename the table and drop the correct fields to reformat and same time
		INSERT @index
		exec(N'USE KNA_BW; 
				SELECT TOP 1 * 
				INTO KNA_BW.STG.AZD_TPM8800_TEST
				FROM KNA_BW.STG.AZD_TPM8800
				WHERE 1=2;
				DROP TABLE KNA_BW.dbo.AZD_TPM8800;
				ALTER SCHEMA dbo TRANSFER STG.AZD_TPM8800;
				ALTER TABLE dbo.AZD_TPM8800 DROP COLUMN MA_DATTIME, RECORDMODE, [/BIC/ZFLGDLTA];
				DELETE FROM dbo.AZD_TPM8800 WHERE CURRENCY = '''' or CUSTOMER = '''' or MATERIAL = '''' or [/BIC/ZMXDPALM] = '''' or [CRM_MKTELM] = '''' or [/BIC/ZMXDFLG] = '''';
				exec sp_rename ''STG.AZD_TPM8800_TEST'', ''AZD_TPM8800'';') 

		INSERT @index
		exec( N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_TPM8800_AGG'';') 
		IF ((SELECT count(*) FROM @index ) =1)
		begin
			DROP INDEX IX_TPM8800_AGG ON [KNA_BW].[dbo].[AZD_TPM8800_AGG]
		end
		DELETE FROM @index

		--create an index on the dbo table
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_TPM8800'';') 
		IF((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_TPM8800 ON [KNA_BW].[dbo].[AZD_TPM8800] ([CUSTOMER] ,[MATERIAL] ,[/BIC/ZMXDPALM]  ,[CALWEEK]  ,[/BIC/ZMXDFLG]  ,[CRM_MKTELM],[PERIOD_TYP],[PROFIT_CTR],[CRM_PR_A05],[PR_CAT_SAL],[CO_AREA], [CURRENCY] ,[SALES_UNIT])
		end
		DELETE FROM @index		

		--Insert all the records into TPM8800 if there is a full load
		TRUNCATE TABLE [KNA_BW].[dbo].[AZD_TPM8800_AGG]
		INSERT INTO [KNA_BW].[dbo].[AZD_TPM8800_AGG] 
		SELECT [CUSTOMER]   ,[MATERIAL]   ,[/BIC/ZMXDPALM]  ,[CALWEEK]  ,[/BIC/ZMXDFLG]  ,[CRM_MKTELM]  ,sum([/BIC/ZC_DISPER])  ,sum([/BIC/ZC_FADPER])  ,sum([/BIC/ZC_FEAPER])
			,sum([/BIC/ZP_INCCOP])  ,sum([/BIC/ZS_PGSVOL]) ,sum([/BIC/ZS_PLCOP]) ,sum([/BIC/ZS_PLPDD])  ,sum([/BIC/ZS_PLPRD]) ,sum([/BIC/ZS_PLRPS]) ,sum([/BIC/ZS_PLRSD]) ,sum([/BIC/ZS_PLTPQD])  ,sum([/BIC/ZS_PLTPQE])
			,sum([/BIC/ZS_PLTPQK])  ,sum([/BIC/ZS_PLTPQP]) ,sum([/BIC/ZS_PROCOP]),sum([/BIC/ZS_TPINCD]) ,sum([/BIC/ZS_TPINCE]) ,sum([/BIC/ZS_TPINCK]) ,sum([/BIC/ZS_TPINCP])  ,sum([/BIC/ZS_TPINSD])
			,sum([/BIC/ZS_TPINSE]) ,sum([/BIC/ZS_TPINSK]) ,sum([/BIC/ZS_TPINSP]) ,sum([/BIC/ZS_TPSVOE]) ,sum([/BIC/ZS_TPSVOK]) ,sum([/BIC/ZS_TPSVOL]) ,sum([/BIC/ZS_TPSVOP]) ,sum([/BIC/ZT_ADIVOL])
			,sum([/BIC/ZT_ADJVOL]) ,sum([/BIC/ZT_BBPAMT]) ,sum([/BIC/ZT_BBRAMT]) ,sum([/BIC/ZT_CRFAMT])  ,sum([/BIC/ZT_CTFAMT]) ,sum([/BIC/ZT_EBPAMT]) ,sum([/BIC/ZT_EBRAMT]) ,sum([/BIC/ZT_EDLPSP])
			,sum([/BIC/ZT_EIPAMT]) ,sum([/BIC/ZT_EIRAMT]) ,sum([/BIC/ZT_ESHVOD]) ,sum([/BIC/ZT_ESHVOE]) ,sum([/BIC/ZT_ESHVOK]) ,sum([/BIC/ZT_ESHVOL]) ,sum([/BIC/ZT_ESHVOP]) ,sum([/BIC/ZT_ESPAMT])
			,sum([/BIC/ZT_ESRAMT]) ,sum([/BIC/ZT_FXFAMT]) ,sum([/BIC/ZT_LIPAMT]) ,sum([/BIC/ZT_LIRAMT]) ,sum([/BIC/ZT_LQFAMT]) ,sum([/BIC/ZT_MLFAMT]) ,sum([/BIC/ZT_NPFAMT]) ,sum([/BIC/ZT_OIPAMT])
			,sum([/BIC/ZT_OIRAMT]) ,sum([/BIC/ZT_SCFAMT]) ,sum([/BIC/ZT_SCPAMT])  ,sum([/BIC/ZT_SCRAMT]) ,sum([/BIC/ZT_SPPAMT]) ,sum([/BIC/ZT_SPRAMT]) ,sum([/BIC/ZT_STOVOD]) ,sum([/BIC/ZT_STOVOE])
			,sum([/BIC/ZT_STOVOK]) ,sum([/BIC/ZT_STOVOL]) ,sum([/BIC/ZT_STOVOP]) ,sum([/BIC/ZT_SUPVOD])  ,sum([/BIC/ZT_SUPVOE]) ,sum([/BIC/ZT_SUPVOK]) ,sum([/BIC/ZT_SUPVOL])  ,sum([/BIC/ZT_TSPAMT])
			,sum([/BIC/ZT_WWTOTL]) ,[CURRENCY] ,[SALES_UNIT] ,sum(CASE WHEN [PERIOD_TYP] = '95' THEN [/BIC/ZT_ADJPER] ELSE 0 END )  ,'TPM82' as [InfoProvider],sum([/BIC/ZT_SAOAMT]),sum([/BIC/ZT_OVLAMT]) --TASK0564827 - ADD Scanner apps columns
		 FROM [KNA_BW].[dbo].[AZD_TPM8800]
		 WHERE (CUSTOMER <> '' AND MATERIAL <> '' AND [/BIC/ZMXDPALM]<> '' AND [/BIC/ZMXDFLG]<>'' AND CURRENCY <> '' )
		 GROUP BY [CUSTOMER]   ,[MATERIAL]   ,[/BIC/ZMXDPALM]  ,[CALWEEK]  ,[/BIC/ZMXDFLG]  ,[CRM_MKTELM], [CURRENCY] ,[SALES_UNIT];

		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_TPM8800_AGG'';') 
		IF((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_TPM8800_AGG ON [KNA_BW].[dbo].[AZD_TPM8800_AGG] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		end
		DELETE FROM @index

	end
	ELSE
	begin 

		INSERT @index
		exec( N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_TPM8800'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_STG_TPM8800 ON [KNA_BW].[STG].[AZD_TPM8800] ([CUSTOMER]   ,[MATERIAL]   ,[/BIC/ZMXDPALM]  ,[CALWEEK]  ,[/BIC/ZMXDFLG]  ,[CRM_MKTELM], [CURRENCY] ,[PERIOD_TYP], [PROFIT_CTR], [CRM_PR_A05],[PR_CAT_SAL],[CO_AREA], [SALES_UNIT])
		end
		DELETE FROM @index
		--clean out the records in the dbo table as well as clean out records in the AGG table

		DELETE FROM [KNA_BW].[dbo].[AZD_TPM8800] 
		WHERE  EXISTS (SELECT [CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY],[PERIOD_TYP], [PROFIT_CTR], [CRM_PR_A05],[PR_CAT_SAL],[CO_AREA], [SALES_UNIT]
						FROM   [KNA_BW].[STG].[AZD_TPM8800] stg
						WHERE  (stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_TPM8800].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_TPM8800].[MATERIAL] and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_TPM8800].[/BIC/ZMXDPALM]  
							and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_TPM8800].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_TPM8800].[/BIC/ZMXDFLG] and stg.CRM_MKTELM = [KNA_BW].[dbo].[AZD_TPM8800].CRM_MKTELM 
							and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_TPM8800].[CURRENCY] and stg.[PERIOD_TYP] =[KNA_BW].[dbo].[AZD_TPM8800].[PERIOD_TYP] and stg.[PROFIT_CTR] = [KNA_BW].[dbo].[AZD_TPM8800].[PROFIT_CTR] 
								and stg.[CRM_PR_A05] = [KNA_BW].[dbo].[AZD_TPM8800].[CRM_PR_A05]  and stg.[PR_CAT_SAL] = [KNA_BW].[dbo].[AZD_TPM8800].[PR_CAT_SAL] and stg.[CO_AREA] = [KNA_BW].[dbo].[AZD_TPM8800].[CO_AREA] 
								and  stg.[SALES_UNIT] = [KNA_BW].[dbo].[AZD_TPM8800].[SALES_UNIT]));

		--clean out Aggregate records
		DELETE FROM [KNA_BW].[dbo].[AZD_TPM8800_AGG] 
		WHERE  EXISTS (SELECT [CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY]
						FROM   [KNA_BW].[STG].[AZD_TPM8800] stg
						WHERE (stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_TPM8800_AGG].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_TPM8800_AGG].[MATERIAL] 
								and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_TPM8800_AGG].[/BIC/ZMXDPALM]  and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_TPM8800_AGG].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_TPM8800_AGG].[/BIC/ZMXDFLG] 
								and stg.CRM_MKTELM = [KNA_BW].[dbo].[AZD_TPM8800_AGG].CRM_MKTELM and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_TPM8800_AGG].[CURRENCY]));
		
		--insert into the archived table where the file is update or insert
		INSERT INTO [KNA_BW].[dbo].[AZD_TPM8800]
		SELECT [CUSTOMER] ,[MATERIAL] ,[/BIC/ZMXDPALM] ,[CALWEEK] ,[/BIC/ZMXDFLG] ,[CRM_MKTELM] ,[PERIOD_TYP] ,[PROFIT_CTR] ,[CRM_PR_A05] ,[PR_CAT_SAL] ,[CO_AREA] ,[/BIC/ZC_DISPER]
			,[/BIC/ZC_FADPER] ,[/BIC/ZC_FEAPER] ,[/BIC/ZP_INCCOP] ,[/BIC/ZS_PGSVOL] ,[/BIC/ZS_PLCOP] ,[/BIC/ZS_PLPDD] ,[/BIC/ZS_PLPRD] ,[/BIC/ZS_PLRPS] ,[/BIC/ZS_PLRSD] ,[/BIC/ZS_PLTPQD]
			,[/BIC/ZS_PLTPQE] ,[/BIC/ZS_PLTPQK] ,[/BIC/ZS_PLTPQP] ,[/BIC/ZS_PROCOP] ,[/BIC/ZS_TPINCD] ,[CURRENCY] ,[/BIC/ZS_TPINCE] ,[/BIC/ZS_TPINCK] ,[/BIC/ZS_TPINCP] ,[/BIC/ZS_TPINSD]
			,[/BIC/ZS_TPINSE] ,[/BIC/ZS_TPINSK] ,[/BIC/ZS_TPINSP] ,[/BIC/ZS_TPSVOE] ,[/BIC/ZS_TPSVOK] ,[/BIC/ZS_TPSVOL] ,[/BIC/ZS_TPSVOP] ,[/BIC/ZT_ADIVOL] ,[/BIC/ZT_ADJVOL] ,[/BIC/ZT_BBPAMT]
			,[/BIC/ZT_BBRAMT] ,[/BIC/ZT_CRFAMT] ,[SALES_UNIT] ,[/BIC/ZT_CTFAMT] ,[/BIC/ZT_EBPAMT] ,[/BIC/ZT_EBRAMT] ,[/BIC/ZT_EDLPSP] ,[/BIC/ZT_EIPAMT] ,[/BIC/ZT_EIRAMT] ,[/BIC/ZT_ESHVOD]
			,[/BIC/ZT_ESHVOE] ,[/BIC/ZT_ESHVOK] ,[/BIC/ZT_ESHVOL] ,[/BIC/ZT_ESHVOP] ,[/BIC/ZT_ESPAMT] ,[/BIC/ZT_ESRAMT] ,[/BIC/ZT_FXFAMT] ,[/BIC/ZT_LIPAMT] ,[/BIC/ZT_LIRAMT]
			,[/BIC/ZT_LQFAMT] ,[/BIC/ZT_MLFAMT] ,[/BIC/ZT_NPFAMT] ,[/BIC/ZT_OIPAMT] ,[/BIC/ZT_OIRAMT] ,[/BIC/ZT_SCFAMT] ,[/BIC/ZT_SCPAMT] ,[/BIC/ZT_SCRAMT]
			,[/BIC/ZT_SPPAMT] ,[/BIC/ZT_SPRAMT] ,[/BIC/ZT_STOVOD] ,[/BIC/ZT_STOVOE] ,[/BIC/ZT_STOVOK] ,[/BIC/ZT_STOVOL] ,[/BIC/ZT_STOVOP] ,[/BIC/ZT_SUPVOD] ,[/BIC/ZT_SUPVOE] ,[/BIC/ZT_SUPVOK]
			,[/BIC/ZT_SUPVOL] ,[/BIC/ZT_TSPAMT] ,[/BIC/ZT_WWTOTL] ,[/BIC/ZT_ADJPER],[/BIC/ZT_SAOAMT],[/BIC/ZT_OVLAMT]--TASK0564827 - ADD Scanner apps and overlay amount columns
		FROM [KNA_BW].[STG].[AZD_TPM8800]
		WHERE  [/BIC/ZFLGDLTA] IN ('U','I') and (CUSTOMER <> '' AND MATERIAL <> '' AND [/BIC/ZMXDPALM]<> '' AND [/BIC/ZMXDFLG]<>'' AND CURRENCY <> '' and CRM_MKTELM <> '' )
		
		--FOR THE DELTA PROCESS FOR TPM82,  Need a second staging table to ensure the delta process goes correctly.  Be sure to capture all records that are used to sum
		--use a temporary table to sort the records before they are summed.
		IF OBJECT_ID ('tempDB..#TPM88_delta') IS NOT NULL
		begin
			DROP TABLE #TPM88_delta;
		end
		SELECT  DISTINCT dbo.[CUSTOMER]   ,dbo.[MATERIAL]   ,dbo.[/BIC/ZMXDPALM]  ,dbo.[CALWEEK]  ,dbo.[/BIC/ZMXDFLG]  ,dbo.[CRM_MKTELM]  ,dbo.[/BIC/ZC_DISPER]  ,dbo.[/BIC/ZC_FADPER]  ,dbo.[/BIC/ZC_FEAPER]
			,dbo.[/BIC/ZP_INCCOP]  ,dbo.[/BIC/ZS_PGSVOL] ,dbo.[/BIC/ZS_PLCOP] ,dbo.[/BIC/ZS_PLPDD]  ,dbo.[/BIC/ZS_PLPRD] ,dbo.[/BIC/ZS_PLRPS] ,dbo.[/BIC/ZS_PLRSD] ,dbo.[/BIC/ZS_PLTPQD]  ,dbo.[/BIC/ZS_PLTPQE]
			,dbo.[/BIC/ZS_PLTPQK]  ,dbo.[/BIC/ZS_PLTPQP] ,dbo.[/BIC/ZS_PROCOP],dbo.[/BIC/ZS_TPINCD] ,dbo.[/BIC/ZS_TPINCE] ,dbo.[/BIC/ZS_TPINCK] ,dbo.[/BIC/ZS_TPINCP]  ,dbo.[/BIC/ZS_TPINSD]
			,dbo.[/BIC/ZS_TPINSE] ,dbo.[/BIC/ZS_TPINSK] ,dbo.[/BIC/ZS_TPINSP] ,dbo.[/BIC/ZS_TPSVOE] ,dbo.[/BIC/ZS_TPSVOK] ,dbo.[/BIC/ZS_TPSVOL] ,dbo.[/BIC/ZS_TPSVOP] ,dbo.[/BIC/ZT_ADIVOL]
			,dbo.[/BIC/ZT_ADJVOL] ,dbo.[/BIC/ZT_BBPAMT] ,dbo.[/BIC/ZT_BBRAMT] ,dbo.[/BIC/ZT_CRFAMT]  ,dbo.[/BIC/ZT_CTFAMT] ,dbo.[/BIC/ZT_EBPAMT] ,dbo.[/BIC/ZT_EBRAMT] ,dbo.[/BIC/ZT_EDLPSP]
			,dbo.[/BIC/ZT_EIPAMT] ,dbo.[/BIC/ZT_EIRAMT] ,dbo.[/BIC/ZT_ESHVOD] ,dbo.[/BIC/ZT_ESHVOE] ,dbo.[/BIC/ZT_ESHVOK] ,dbo.[/BIC/ZT_ESHVOL] ,dbo.[/BIC/ZT_ESHVOP] ,dbo.[/BIC/ZT_ESPAMT]
			,dbo.[/BIC/ZT_ESRAMT] ,dbo.[/BIC/ZT_FXFAMT] ,dbo.[/BIC/ZT_LIPAMT] ,dbo.[/BIC/ZT_LIRAMT] ,dbo.[/BIC/ZT_LQFAMT] ,dbo.[/BIC/ZT_MLFAMT] ,dbo.[/BIC/ZT_NPFAMT] ,dbo.[/BIC/ZT_OIPAMT]
			,dbo.[/BIC/ZT_OIRAMT] ,dbo.[/BIC/ZT_SCFAMT] ,dbo.[/BIC/ZT_SCPAMT]  ,dbo.[/BIC/ZT_SCRAMT] ,dbo.[/BIC/ZT_SPPAMT] ,dbo.[/BIC/ZT_SPRAMT] ,dbo.[/BIC/ZT_STOVOD] ,dbo.[/BIC/ZT_STOVOE]
			,dbo.[/BIC/ZT_STOVOK] ,dbo.[/BIC/ZT_STOVOL] ,dbo.[/BIC/ZT_STOVOP] ,dbo.[/BIC/ZT_SUPVOD]  ,dbo.[/BIC/ZT_SUPVOE] ,dbo.[/BIC/ZT_SUPVOK] ,dbo.[/BIC/ZT_SUPVOL]  ,dbo.[/BIC/ZT_TSPAMT]
			,dbo.[/BIC/ZT_WWTOTL] ,dbo.[CURRENCY] ,dbo.[SALES_UNIT], dbo.[PERIOD_TYP]  ,dbo.[/BIC/ZT_ADJPER],'TPM82' as [InfoProvider],dbo.[/BIC/ZT_SAOAMT],dbo.[/BIC/ZT_OVLAMT]--TASK0564827 - ADD Scanner apps and overlay amount columns
		 INTO #TPM88_delta
		 FROM  [KNA_BW].[dbo].[AZD_TPM8800] dbo
		 INNER JOIN [KNA_BW].[STG].[AZD_TPM8800] stg ON (stg.[CUSTOMER]=dbo.[CUSTOMER] and stg.[MATERIAL]=dbo.[MATERIAL] and stg.[/BIC/ZMXDPALM]=dbo.[/BIC/ZMXDPALM] and stg.[CALWEEK]=dbo.[CALWEEK] and
													stg.[/BIC/ZMXDFLG]=dbo.[/BIC/ZMXDFLG] and stg.[CRM_MKTELM]= dbo.[CRM_MKTELM] and stg.[CURRENCY]=dbo.[CURRENCY] and stg.[SALES_UNIT]=dbo.[SALES_UNIT]) 
		ORDER BY dbo.[CUSTOMER]   ,dbo.[MATERIAL]   ,dbo.[/BIC/ZMXDPALM]  ,dbo.[CALWEEK]  ,dbo.[/BIC/ZMXDFLG]  ,dbo.[CRM_MKTELM] 
		--create index on staging table to boost performance
		create clustered index ix_tpm88_stg on #TPM88_delta ([CUSTOMER],[MATERIAL],[/BIC/ZMXDPALM],[CALWEEK],[/BIC/ZMXDFLG],[CRM_MKTELM],[CURRENCY],[SALES_UNIT],[PERIOD_TYP])
		
		INSERT @index
		 exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_TPM8800_AGG'';') 
		 IF((SELECT count(*) FROM @index ) =1)
		 begin
				DROP INDEX IX_STG_TPM8800_AGG ON [KNA_BW].[STG].[AZD_TPM8800_AGG] 
		 end
		 DELETE FROM @index

		--create the aggregate staging table to be used in the future.
		TRUNCATE TABLE [KNA_BW].[STG].[AZD_TPM8800_AGG] 
		INSERT INTO [KNA_BW].[STG].[AZD_TPM8800_AGG] 
		SELECT tmp.[CUSTOMER]   ,tmp.[MATERIAL]   ,tmp.[/BIC/ZMXDPALM]  ,tmp.[CALWEEK]  ,tmp.[/BIC/ZMXDFLG]  ,tmp.[CRM_MKTELM]  ,sum(tmp.[/BIC/ZC_DISPER])  ,sum(tmp.[/BIC/ZC_FADPER])  ,sum(tmp.[/BIC/ZC_FEAPER])
			,sum(tmp.[/BIC/ZP_INCCOP])  ,sum(tmp.[/BIC/ZS_PGSVOL]) ,sum(tmp.[/BIC/ZS_PLCOP]) ,sum(tmp.[/BIC/ZS_PLPDD])  ,sum(tmp.[/BIC/ZS_PLPRD]) ,sum(tmp.[/BIC/ZS_PLRPS]) ,sum(tmp.[/BIC/ZS_PLRSD]) ,sum(tmp.[/BIC/ZS_PLTPQD])  ,sum(tmp.[/BIC/ZS_PLTPQE])
			,sum(tmp.[/BIC/ZS_PLTPQK])  ,sum(tmp.[/BIC/ZS_PLTPQP]) ,sum(tmp.[/BIC/ZS_PROCOP]),sum(tmp.[/BIC/ZS_TPINCD]) ,sum(tmp.[/BIC/ZS_TPINCE]) ,sum(tmp.[/BIC/ZS_TPINCK]) ,sum(tmp.[/BIC/ZS_TPINCP])  ,sum(tmp.[/BIC/ZS_TPINSD])
			,sum(tmp.[/BIC/ZS_TPINSE]) ,sum(tmp.[/BIC/ZS_TPINSK]) ,sum(tmp.[/BIC/ZS_TPINSP]) ,sum(tmp.[/BIC/ZS_TPSVOE]) ,sum(tmp.[/BIC/ZS_TPSVOK]) ,sum(tmp.[/BIC/ZS_TPSVOL]) ,sum(tmp.[/BIC/ZS_TPSVOP]) ,sum(tmp.[/BIC/ZT_ADIVOL])
			,sum(tmp.[/BIC/ZT_ADJVOL]) ,sum(tmp.[/BIC/ZT_BBPAMT]) ,sum(tmp.[/BIC/ZT_BBRAMT]) ,sum(tmp.[/BIC/ZT_CRFAMT])  ,sum(tmp.[/BIC/ZT_CTFAMT]) ,sum(tmp.[/BIC/ZT_EBPAMT]) ,sum(tmp.[/BIC/ZT_EBRAMT]) ,sum(tmp.[/BIC/ZT_EDLPSP])
			,sum(tmp.[/BIC/ZT_EIPAMT]) ,sum(tmp.[/BIC/ZT_EIRAMT]) ,sum(tmp.[/BIC/ZT_ESHVOD]) ,sum(tmp.[/BIC/ZT_ESHVOE]) ,sum(tmp.[/BIC/ZT_ESHVOK]) ,sum(tmp.[/BIC/ZT_ESHVOL]) ,sum(tmp.[/BIC/ZT_ESHVOP]) ,sum(tmp.[/BIC/ZT_ESPAMT])
			,sum(tmp.[/BIC/ZT_ESRAMT]) ,sum(tmp.[/BIC/ZT_FXFAMT]) ,sum(tmp.[/BIC/ZT_LIPAMT]) ,sum(tmp.[/BIC/ZT_LIRAMT]) ,sum(tmp.[/BIC/ZT_LQFAMT]) ,sum(tmp.[/BIC/ZT_MLFAMT]) ,sum(tmp.[/BIC/ZT_NPFAMT]) ,sum(tmp.[/BIC/ZT_OIPAMT])
			,sum(tmp.[/BIC/ZT_OIRAMT]) ,sum(tmp.[/BIC/ZT_SCFAMT]) ,sum(tmp.[/BIC/ZT_SCPAMT])  ,sum(tmp.[/BIC/ZT_SCRAMT]) ,sum(tmp.[/BIC/ZT_SPPAMT]) ,sum(tmp.[/BIC/ZT_SPRAMT]) ,sum(tmp.[/BIC/ZT_STOVOD]) ,sum(tmp.[/BIC/ZT_STOVOE])
			,sum(tmp.[/BIC/ZT_STOVOK]) ,sum(tmp.[/BIC/ZT_STOVOL]) ,sum(tmp.[/BIC/ZT_STOVOP]) ,sum(tmp.[/BIC/ZT_SUPVOD])  ,sum(tmp.[/BIC/ZT_SUPVOE]) ,sum(tmp.[/BIC/ZT_SUPVOK]) ,sum(tmp.[/BIC/ZT_SUPVOL])  ,sum(tmp.[/BIC/ZT_TSPAMT])
			,sum(tmp.[/BIC/ZT_WWTOTL]) ,tmp.[CURRENCY] ,tmp.[SALES_UNIT] ,sum(CASE WHEN tmp.[PERIOD_TYP] = '95' THEN tmp.[/BIC/ZT_ADJPER] ELSE 0 END )  ,'TPM82' as [InfoProvider],sum([/BIC/ZT_SAOAMT]),sum([/BIC/ZT_OVLAMT])--TASK0564827 - ADD Scanner apps and overlay amount columns
		 FROM #TPM88_delta tmp
		 GROUP BY [CUSTOMER]   ,[MATERIAL]   ,[/BIC/ZMXDPALM]  ,[CALWEEK]  ,[/BIC/ZMXDFLG]  ,[CRM_MKTELM], [CURRENCY] ,[SALES_UNIT];

		 --create an aggregate index
		 INSERT @index
		 exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_TPM8800_AGG'';') 
		 IF((SELECT count(*) FROM @index ) =0)
		 begin
				CREATE UNIQUE CLUSTERED INDEX IX_STG_TPM8800_AGG ON [KNA_BW].[STG].[AZD_TPM8800_AGG] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		 end
		 DELETE FROM @index
		 --insert the Aggregate data into the BW cube
		 INSERT INTO [KNA_BW].[dbo].[AZD_TPM8800_AGG] 
		 SELECT *
		 FROM [KNA_BW].[STG].[AZD_TPM8800_AGG] 

		 DROP INDEX IX_STG_TPM8800 ON [KNA_BW].[STG].[AZD_TPM8800]
		IF (SELECT COUNT(*) FROM [KNA_BW].[STG].[AZD_TPM8800]) <> 0
		begin
			UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_TPM8800])WHERE TABLE_NM = 'AZD_TPM8800'
		end	
	end
	
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

end
---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------
   --LES52 
 if (@delta_Flag = 'LES56')
 begin
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;
	--check if a full load.  If so, Truncate the history table, drop the index and update the delta key
	
	IF ((SELECT TOP 1 [/BIC/ZFLGDLTA] FROM [KNA_BW].[STG].[AZD_LES5600]) = 'F')
	begin

		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_LES5600])WHERE TABLE_NM = 'AZD_LES5600'
		--drop index for a full load
		INSERT @index
		exec(N'  USE KNA_BW; 
				SELECT TOP 1 * 
				INTO KNA_BW.STG.AZD_LES5600_TEST
				FROM KNA_BW.STG.AZD_LES5600
				WHERE 1=2;
				DROP TABLE KNA_BW.dbo.AZD_LES5600;
				ALTER SCHEMA dbo TRANSFER STG.AZD_LES5600;
				ALTER TABLE dbo.AZD_LES5600 DROP COLUMN MA_DATTIME, RECORDMODE, [/BIC/ZFLGDLTA];
				ALTER TABLE dbo.AZD_LES5600 ADD InfoProvider varchar(100);
				UPDATE dbo.AZD_LES5600 SET InfoProvider = ''LES52'';
				DELETE FROM dbo.AZD_LES5600 WHERE CURRENCY = '''' or CUSTOMER = '''' or MATERIAL = '''' or [/BIC/ZMXDPALM] = '''' or [/BIC/ZMXDFLG] = '''';
				exec sp_rename ''STG.AZD_LES5600_TEST'', ''AZD_LES5600'';') 

		
		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = 'Y' WHERE TABLE_NM = 'FULL_LOAD'

		
		--Also build an index if one doesnt exist.
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_LES5600'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_LES5600 ON [KNA_BW].[dbo].[AZD_LES5600] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		end
		DELETE FROM @index

	end
	ELSE
	begin
		--Also build an index if one doesnt exist.
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_LES5600'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_STG_LES5600 ON [KNA_BW].[STG].[AZD_LES5600] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		end
		DELETE FROM @index

		--create an index on the staging table to allow for quicker deletes on the dbo table
		DELETE FROM [KNA_BW].[dbo].[AZD_LES5600] 
		WHERE  EXISTS (SELECT [CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY]
						FROM   [KNA_BW].[STG].[AZD_LES5600] stg
						WHERE [/BIC/ZFLGDLTA] IN ('U','D') and(stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_LES5600].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_LES5600].[MATERIAL] 
								and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_LES5600].[/BIC/ZMXDPALM]  and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_LES5600].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_LES5600].[/BIC/ZMXDFLG] 
								and stg.CRM_MKTELM = [KNA_BW].[dbo].[AZD_LES5600].CRM_MKTELM and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_LES5600].[CURRENCY]));
		
		INSERT INTO [KNA_BW].[dbo].[AZD_LES5600] 
		SELECT [CUSTOMER]  ,[/BIC/ZMXDPALM] ,[MATERIAL] ,[CALWEEK] ,[/BIC/ZMXDFLG] ,[CRM_MKTELM] ,[/BIC/ZT_BBPAMT]  ,[/BIC/ZT_BBRAMT]  ,[/BIC/ZT_CADAMT]
			,[/BIC/ZT_CCOAMT] ,[/BIC/ZT_CCUAMT] ,[/BIC/ZT_CRFAMT] ,[/BIC/ZT_CVAAMT] ,[/BIC/ZT_EBPAMT] ,[/BIC/ZT_EBRAMT] ,[/BIC/ZT_FXFAMT] ,[/BIC/ZT_LQFAMT]
			,[/BIC/ZT_MISSOI] ,[/BIC/ZT_MLFAMT] ,[/BIC/ZT_NPFAMT] ,[/BIC/ZT_SCFAMT] ,[/BIC/ZT_SCPAMT] ,[/BIC/ZT_SCRAMT] ,[/BIC/ZT_SPPAMT]  ,[/BIC/ZT_SPRAMT]
			,[/BIC/ZT_WWTOTL] ,[CURRENCY] ,[/BIC/ZT_SAOAMT],[/BIC/ZT_OVLAMT], 'LES52' as [InfoProvider]---TASK0564827 - ADD Scanner apps and overlay amount columns
		FROM [KNA_BW].[STG].[AZD_LES5600]
		WHERE  [/BIC/ZFLGDLTA] IN ('U','I') 
		
		--Set the last updated date for the delta and update the table.
		IF (SELECT COUNT(*) FROM [KNA_BW].[STG].[AZD_LES5600]) <> 0
		begin
			UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_LES5600])WHERE TABLE_NM = 'AZD_LES5600'
		end

	end

	
    IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

end
---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------
      --CON53 
if (@delta_Flag = 'CON65')
begin
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;
	--check if a full load.  If so, Truncate the history table, drop the index and update the delta key
	
	IF ((SELECT TOP 1 [/BIC/ZFLGDLTA] FROM [KNA_BW].[STG].[AZD_CON6500] ) = 'F')
	begin
		--update the timestamp
		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_CON6500])WHERE TABLE_NM = 'AZD_CON6500'
		--drop the index for a full build
		INSERT @index
		exec(N' USE KNA_BW; 
			SELECT TOP 1 * 
			INTO KNA_BW.STG.AZD_CON6500_TEST
			FROM KNA_BW.STG.AZD_CON6500
			WHERE 1=2;
			DROP TABLE KNA_BW.dbo.AZD_CON6500;
			ALTER SCHEMA dbo TRANSFER STG.AZD_CON6500;
			ALTER TABLE dbo.AZD_CON6500 DROP COLUMN MA_DATTIME, RECORDMODE, [/BIC/ZFLGDLTA];
			ALTER TABLE dbo.AZD_CON6500 ADD InfoProvider varchar(100);
			UPDATE dbo.AZD_CON6500 SET InfoProvider = ''CON53'';
			DELETE FROM dbo.AZD_CON6500 WHERE CURRENCY = '''' or CUSTOMER = '''' or MATERIAL = '''' or [/BIC/ZMXDPALM] = '''' or [/BIC/ZMXDFLG] = '''';
			exec sp_rename ''STG.AZD_CON6500_TEST'', ''AZD_CON6500'';') 

		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = 'Y' WHERE TABLE_NM = 'FULL_LOAD'

		--Also build an index if one doesnt exist.
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_CON6500'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_CON6500 ON [KNA_BW].[dbo].[AZD_CON6500] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK],[/BIC/ZMXDFLG],[CRM_MKTELM],[CURRENCY])
		end
		DELETE FROM @index
	end
	ELSE
	begin
				--Also build an index if one doesnt exist.
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_CON6500'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_STG_CON6500 ON [KNA_BW].[STG].[AZD_CON6500] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		end
		DELETE FROM @index
		--create an index on the staging table to allow for quicker deletes on the dbo table 
		DELETE FROM [KNA_BW].[dbo].[AZD_CON6500] 
		WHERE  EXISTS (SELECT [CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY]
						FROM   [KNA_BW].[STG].[AZD_CON6500] stg
						WHERE [/BIC/ZFLGDLTA] IN ('U','D') and (stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_CON6500].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_CON6500].[MATERIAL] 
								and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_CON6500].[/BIC/ZMXDPALM]  and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_CON6500].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_CON6500].[/BIC/ZMXDFLG] 
								and stg.CRM_MKTELM = [KNA_BW].[dbo].[AZD_CON6500].CRM_MKTELM and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_CON6500].[CURRENCY]));
		
		--Insert all updated and new records into the table
		INSERT INTO [KNA_BW].[dbo].[AZD_CON6500] 
		SELECT [CUSTOMER] ,[MATERIAL],[/BIC/ZMXDPALM],[/BIC/ZMXDFLG] ,[CALWEEK],[CRM_MKTELM] ,[/BIC/ZC_AGRDL],[/BIC/ZC_QGRCS],[/BIC/ZC_QGRLBS],[/BIC/ZC_QGRECH]
				 ,[/BIC/ZG_QVVGPK] , [/BIC/ZC_ACTCOP] ,[CURRENCY],NULL as [/BIC/ZC_UPRCAS] ,NULL as [/BIC/ZC_UPRECH],NULL as [/BIC/ZC_UGRLBS], NULL as [/BIC/ZG_UVVGPK] ,[/BIC/ZC_ASPA],
			  [/BIC/ZC_QGRKGS]  ,NULL as [/BIC/ZC_UNETKG]   ,'CON53' as [InfoProvider]
		FROM [KNA_BW].[STG].[AZD_CON6500]
		WHERE  [/BIC/ZFLGDLTA] IN ('U','I') AND (CUSTOMER <> '' AND MATERIAL <> '' AND [/BIC/ZMXDPALM]<> '' 
												AND [/BIC/ZMXDFLG]<>''  AND CURRENCY <> '' );										


		--Set the last updated date for the delta and update the table.  
		IF (SELECT COUNT(*) FROM [KNA_BW].[STG].[AZD_CON6500]) <> 0
		begin
			UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_CON6500])WHERE TABLE_NM = 'AZD_CON6500'
		end	
	end


    IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
end
---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------
	  --SVP06
if (@delta_Flag = 'SVP13')
begin
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;
	--check if a full load.  If so, Truncate the history table, drop the index and update the delta key

	IF ((SELECT TOP 1 [/BIC/ZFLGDLTA] FROM [KNA_BW].[STG].[AZD_SVP1300]) = 'F')
	begin
		--update the datetime
		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_SVP1300]) WHERE TABLE_NM = 'AZD_SVP1300'
		--drop the index for a full build
		INSERT @index
		exec(N' USE KNA_BW; 
			SELECT TOP 1 * 
			INTO KNA_BW.STG.AZD_SVP1300_TEST
			FROM KNA_BW.STG.AZD_SVP1300
			WHERE 1=2;
			DROP TABLE KNA_BW.dbo.AZD_SVP1300;
			ALTER SCHEMA dbo TRANSFER STG.AZD_SVP1300;
			ALTER TABLE dbo.AZD_SVP1300 DROP COLUMN MA_DATTIME, RECORDMODE, [/BIC/ZFLGDLTA];
			ALTER TABLE dbo.AZD_SVP1300 ADD InfoProvider varchar(100);
			UPDATE dbo.AZD_SVP1300 SET InfoProvider = ''SVP06'';
			DELETE FROM dbo.AZD_SVP1300 WHERE CURRENCY = '''' or CUSTOMER = '''' or MATERIAL = '''' or [/BIC/ZMXDPALM] = ''''  or [/BIC/ZMXDFLG] = '''';
			exec sp_rename ''STG.AZD_SVP1300_TEST'', ''AZD_SVP1300'';') 


		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = 'Y' WHERE TABLE_NM = 'FULL_LOAD'

		--Also build an index if one doesnt exist.
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_SVP1300'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin	
			CREATE UNIQUE CLUSTERED INDEX IX_SVP1300 ON [KNA_BW].[dbo].[AZD_SVP1300] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		end
		DELETE FROM @index
	end
	ELSE
	begin 
				--Also build an index if one doesnt exist.
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_SVP1300'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin	
			CREATE UNIQUE CLUSTERED INDEX IX_STG_SVP1300 ON [KNA_BW].[STG].[AZD_SVP1300] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY])
		end
		DELETE FROM @index
		--create an index on the staging table to allow for quicker deletes on the dbo table
		DELETE FROM [KNA_BW].[dbo].[AZD_SVP1300] 
		WHERE  EXISTS (SELECT [CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], [CURRENCY]
						FROM   [KNA_BW].[STG].[AZD_SVP1300] stg
						WHERE  [/BIC/ZFLGDLTA] IN ('U','D') and (stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_SVP1300].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_SVP1300].[MATERIAL] 
								and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_SVP1300].[/BIC/ZMXDPALM]  and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_SVP1300].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_SVP1300].[/BIC/ZMXDFLG] 
								and stg.CRM_MKTELM = [KNA_BW].[dbo].[AZD_SVP1300].CRM_MKTELM and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_SVP1300].[CURRENCY]));
		
		--insert into the final table
		INSERT INTO [KNA_BW].[dbo].[AZD_SVP1300] 
		SELECT [CUSTOMER] ,[CRM_MKTELM] ,[MATERIAL],[/BIC/ZMXDPALM],[/BIC/ZMXDFLG] ,[CALWEEK],[/BIC/ZCANQTY],[/BIC/ZCANQTYE],[/BIC/ZCANQTYK] ,[/BIC/ZCANQTYP]
			,[/BIC/ZFWBUY],[/BIC/ZFWBUYE],[/BIC/ZFWBUYK],[/BIC/ZFWBUYP],[/BIC/ZS_CANDOL],[/BIC/ZS_FWBDOL],[/BIC/ZS_PCBVOE],[/BIC/ZS_PCBVOK] ,[/BIC/ZS_PCBVOL]
			,[/BIC/ZS_PCBVOP],[/BIC/ZS_PGSVOL] ,[/BIC/ZS_PLCOP],[/BIC/ZS_PLRSD] ,[/BIC/ZS_PSHPRC] ,[/BIC/ZS_SBAVOD],[/BIC/ZS_SBAVOE],[/BIC/ZS_SBAVOK],[/BIC/ZS_SBAVOL]
			,[/BIC/ZS_SBAVOP],[/BIC/ZS_SSHPRC] ,[/BIC/ZS_TPBDOL],[/BIC/ZS_TPSVOE],[/BIC/ZS_TPSVOK] ,[/BIC/ZS_TPSVOL] ,[/BIC/ZS_TPSVOP]  ,[/BIC/ZTPBVOL]
			,[SALES_UNIT],[CURRENCY], 'SVP06' as [InfoProvider]
		 FROM [KNA_BW].[STG].[AZD_SVP1300]
		 WHERE  [/BIC/ZFLGDLTA] IN ('U','I') AND (CUSTOMER <> '' AND MATERIAL <> '' AND [/BIC/ZMXDPALM]<> '' 
												AND [/BIC/ZMXDFLG]<>'' AND CURRENCY <> '' );
		--Set the last updated date for the delta and update the table.  
		IF (SELECT count(*) FROM [KNA_BW].[STG].[AZD_SVP1300] ) <>0
		begin
			UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_SVP1300]) WHERE TABLE_NM = 'AZD_SVP1300'
		end

	end
    
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

	end
---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------
if (@delta_Flag = 'CON61')
begin	
		  --CON61
	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

	--check if a full load.  If so, Truncate the history table
	IF ((SELECT TOP 1 [/BIC/ZFLGDLTA] FROM [KNA_BW].[STG].[AZD_CON6100]) = 'F')
	begin
		--update last updated field
		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_CON6100])WHERE TABLE_NM = 'AZD_CON6100'
		
		INSERT @index
				exec(N'  USE KNA_BW; 
				SELECT TOP 1 * 
				INTO KNA_BW.STG.AZD_CON6100_TEST
				FROM KNA_BW.STG.AZD_CON6100
				WHERE 1=2;
				DROP TABLE KNA_BW.dbo.AZD_CON6100;
				ALTER SCHEMA dbo TRANSFER STG.AZD_CON6100;
				ALTER TABLE dbo.AZD_CON6100 DROP COLUMN MA_DATTIME, RECORDMODE, [/BIC/ZFLGDLTA];
				DELETE FROM dbo.AZD_CON6100 WHERE CURRENCY = '''' or CUSTOMER = '''' or MATERIAL = '''' or [/BIC/ZMXDPALM] = '''' or [/BIC/ZMXDFLG] = '''';
				exec sp_rename ''STG.AZD_CON6100_TEST'', ''AZD_CON6100'';')  
		IF ((SELECT count(*) FROM @index ) =1)
		begin
			DROP INDEX IX_CON6100_AGG ON [KNA_BW].[dbo].[AZD_CON6100_AGG]
		end
		DELETE FROM @index
		
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_CON6100'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE CLUSTERED INDEX IX_CON6100 ON [KNA_BW].[dbo].[AZD_CON6100] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CURRENCY])
		end
		DELETE FROM @index

		--Insert all updated and new records into the table that will hold aggregated records for the delta
		TRUNCATE TABLE [KNA_BW].[dbo].[AZD_CON6100_AGG] 
		INSERT INTO [KNA_BW].[dbo].[AZD_CON6100_AGG] 
		SELECT [CUSTOMER] ,[MATERIAL] ,[/BIC/ZMXDPALM] ,[/BIC/ZMXDFLG] ,[CALWEEK],sum([/BIC/ZC_AGRDL]) ,sum([/BIC/ZC_QGRCS]) ,sum([/BIC/ZC_QGRLBS]),sum([/BIC/ZC_QGRECH])  ,sum([/BIC/ZS_ACRSD])
				,sum([/BIC/ZG_QVVGPK]) ,sum([/BIC/ZC_ACTCOP]) ,[CURRENCY] ,sum([/BIC/ZC_ASPA])
		 FROM  [KNA_BW].[dbo].[AZD_CON6100]
		 WHERE MATERIAL NOT IN ('000000001000002100','000000001000007666') 
		 AND (CUSTOMER <> '' AND MATERIAL <> '' AND [/BIC/ZMXDPALM]<> '' AND [/BIC/ZMXDFLG]<>'' AND CURRENCY <> '')
		 GROUP BY [CUSTOMER] ,[MATERIAL] ,[/BIC/ZMXDPALM] ,[/BIC/ZMXDFLG],[CURRENCY],[CALWEEK] ;

		TRUNCATE TABLE [KNA_BW].[STG].[AZD_CON6100_AGG] 
		INSERT INTO [KNA_BW].[STG].[AZD_CON6100_AGG] 
		SELECT *
		FROM [KNA_BW].[dbo].[AZD_CON6100_AGG]

		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_CON6100_AGG'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_CON6100_AGG ON [KNA_BW].[dbo].[AZD_CON6100_AGG] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CURRENCY])
		end
		DELETE FROM @index
		
	end
	--else begin delta teletion of records
	ELSE
	begin 
		INSERT @index
		exec(N' USE KNA_BW; SELECT name FROM sysindexes WHERE name = ''IX_STG_CON6100'';') 
		IF ((SELECT count(*) FROM @index ) =0)
		begin
			CREATE UNIQUE CLUSTERED INDEX IX_STG_CON6100 ON [KNA_BW].[STG].[AZD_CON6100] ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CURRENCY])
		end
		DELETE FROM @index
		
		--delete from the dbo table records from the staging table where update or deletes are present
		DELETE FROM [KNA_BW].[dbo].[AZD_CON6100] 
		WHERE  EXISTS (SELECT [CUSTOMER]
						,[MATERIAL]
						,[/BIC/ZMXDPALM]
						,[CALWEEK]
						,[/BIC/ZMXDFLG]
						,[CURRENCY]
					FROM   KNA_BW.STG.AZD_CON6100 stg
					WHERE  stg.[/BIC/ZFLGDLTA] IN ('U','D') and(stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_CON6100].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_CON6100].[MATERIAL] 
							and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_CON6100].[/BIC/ZMXDPALM]  and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_CON6100].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_CON6100].[/BIC/ZMXDFLG] 
						    and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_CON6100].[CURRENCY]));
		
		--delete from the aggregate record to ensure that we are capturing all changes.
		DELETE FROM [KNA_BW].[dbo].[AZD_CON6100_AGG] 
		WHERE  EXISTS (SELECT [CUSTOMER]	,[MATERIAL]	,[/BIC/ZMXDPALM],[CALWEEK]	,[/BIC/ZMXDFLG]	,[CURRENCY]
					FROM   KNA_BW.STG.AZD_CON6100 stg
					WHERE  stg.[/BIC/ZFLGDLTA] IN ('U','D', 'I') and (stg.[CUSTOMER] =[KNA_BW].[dbo].[AZD_CON6100_AGG].[CUSTOMER] and stg.[MATERIAL] = [KNA_BW].[dbo].[AZD_CON6100_AGG].[MATERIAL] 
							and stg.[/BIC/ZMXDPALM] = [KNA_BW].[dbo].[AZD_CON6100_AGG].[/BIC/ZMXDPALM]  and stg.[CALWEEK] = [KNA_BW].[dbo].[AZD_CON6100_AGG].[CALWEEK] and stg.[/BIC/ZMXDFLG] = [KNA_BW].[dbo].[AZD_CON6100_AGG].[/BIC/ZMXDFLG] 
						    and stg.[CURRENCY] = [KNA_BW].[dbo].[AZD_CON6100_AGG].[CURRENCY]));

		INSERT INTO [KNA_BW].[dbo].[AZD_CON6100]
		SELECT stg.[CUSTOMER] ,stg.[MATERIAL] ,stg.[/BIC/ZMXDPALM] ,stg.[/BIC/ZMXDFLG] ,stg.[CALWEEK] ,[/BIC/ZC_AGRDL] ,[/BIC/ZC_QGRCS] ,[/BIC/ZC_QGRLBS] 
			,[/BIC/ZC_QGRECH] ,[/BIC/ZS_ACRSD],[/BIC/ZG_QVVGPK] ,[/BIC/ZC_ACTCOP] ,stg.[CURRENCY] ,[/BIC/ZC_UPRCAS] ,[/BIC/ZC_UPRECH] ,[/BIC/ZC_UGRLBS] 
			,[/BIC/ZG_UVVGPK]	,[/BIC/ZC_ASPA]
		FROM [KNA_BW].[STG].[AZD_CON6100] stg
		WHERE stg.[/BIC/ZFLGDLTA] IN ('U', 'I')and stg.MATERIAL NOT IN ('000000001000002100','000000001000007666') and (stg.CUSTOMER <> '' AND stg.MATERIAL <> '' 
		 AND stg.[/BIC/ZMXDPALM]<> '' AND stg.[/BIC/ZMXDFLG]<>'' AND stg.CURRENCY <> '')

		--Insert all updated and new records into the table that will hold aggregated records for the delta
		TRUNCATE TABLE [KNA_BW].[STG].[AZD_CON6100_AGG] 
		INSERT INTO [KNA_BW].[STG].[AZD_CON6100_AGG] 
		SELECT stg.[CUSTOMER] ,stg.[MATERIAL] ,stg.[/BIC/ZMXDPALM] ,stg.[/BIC/ZMXDFLG] ,stg.[CALWEEK],sum(stg.[/BIC/ZC_AGRDL]) ,sum(stg.[/BIC/ZC_QGRCS]) 
			,sum(stg.[/BIC/ZC_QGRLBS]),sum(stg.[/BIC/ZC_QGRECH])  ,sum(stg.[/BIC/ZS_ACRSD]),sum(stg.[/BIC/ZG_QVVGPK]) ,sum(stg.[/BIC/ZC_ACTCOP]) ,stg.[CURRENCY] 
			,sum(stg.[/BIC/ZC_ASPA])
		 FROM  [KNA_BW].[dbo].[AZD_CON6100] stg
		 INNER JOIN KNA_BW.STG.AZD_CON6100 mstr ON (stg.[CUSTOMER] = mstr.[CUSTOMER] and stg.[MATERIAL]=mstr.[MATERIAL] and stg.[/BIC/ZMXDPALM]=mstr.[/BIC/ZMXDPALM] and
												stg.[CALWEEK]=mstr.[CALWEEK] and stg.[/BIC/ZMXDFLG]=mstr.[/BIC/ZMXDFLG] and stg.[CURRENCY]=mstr.[CURRENCY])
		 WHERE mstr.[/BIC/ZFLGDLTA] IN ('U', 'I') and stg.MATERIAL NOT IN ('000000001000002100','000000001000007666') AND (stg.CUSTOMER <> '' AND stg.MATERIAL <> '' 
		 AND stg.[/BIC/ZMXDPALM]<> '' AND stg.[/BIC/ZMXDFLG]<>'' AND stg.CURRENCY <> '')
		 GROUP BY stg.[CUSTOMER] ,stg.[MATERIAL] ,stg.[/BIC/ZMXDPALM] ,stg.[/BIC/ZMXDFLG] ,stg.[CALWEEK],stg.[CURRENCY] 
		
		--move the records to the final dbo cube
		INSERT INTO [KNA_BW].[dbo].[AZD_CON6100_AGG] 
		SELECT * 
		FROM [KNA_BW].[STG].[AZD_CON6100_AGG] 

		DROP INDEX IX_STG_CON6100 ON [KNA_BW].[STG].[AZD_CON6100] 

		--update the "last updated" flag for the archiving process
		IF (SELECT COUNT(*) FROM [KNA_BW].[STG].[AZD_CON6100]) <> 0
		begin
			UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT MAX([MA_DATTIME]) FROM  [KNA_BW].[STG].[AZD_CON6100])WHERE TABLE_NM = 'AZD_CON6100'
		end
	end
	

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

end



---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------
if (@delta_Flag = 'BPC56')
begin
	 --BPC54
	--check if a full load.  If so, Truncate the history table
	IF (SELECT count(*) FROM [KNA_BW].[STG].[AZD_BPC5600] ) <>0
	begin
		TRUNCATE TABLE [KNA_BW].[dbo].[AZD_BPC5600]
		INSERT INTO [KNA_BW].[dbo].[AZD_BPC5600]
		SELECT *
		FROM [KNA_BW].[STG].[AZD_BPC5600]

		UPDATE [KNA_COMRCL].[dbo].[RGM_DELTA_KEY] SET LAST_UPDT = (SELECT TOP 1 [MA_DATTIME] FROM [KNA_BW].[dbo].[AZD_BPC5600]) WHERE TABLE_NM = 'AZD_BPC5600'

		TRUNCATE TABLE [KNA_BW].[STG].[AZD_BPC5600]
	end
   
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK]
AS
/*******************************************************************************************
   
   NAME        :  [USP_PROC_FLD_SALES_UPDT_OUTLK]
   PURPOSE & 
   Description :  This SP recreates the BODS dataflow that builds the Field Sales Update Outlook table
				  from the TPE datastream.  The most pertinent business contact is Ben Pineda or Joe Wright 
				  and the logic used here was replicating a pre-built BODS job.
                        
  REVISIONS:
   Ver          Date             AuthOR                     Change Reason
   ------    ----------      ---------------         ---------------------------------------
   1.0         05/23/2017       USCDXS92                1. Initial Version
   2.0		   02/19/2018       USCMXJ11                2. TASK0473036 - Adding data from current year - 3
   3.0		   06/22/2018       USCMXJ11				3. Adding currency for joining
   ------    ----------      ---------------         ---------------------------------------

*********************************************************************************/
BEGIN

PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--GO


PRINT N'01: #pti' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

IF OBJECT_ID ('tempDB..#kpi_sc_bud_pti') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pti;
end
SELECT  CUST
	   ,bw.[/BIC/ZBPC_BUUN] as BU
	   ,ALT_CATG = CASE 
						WHEN CHRSTC_VAL IS NULL THEN 'NULL'
						ELSE CHRSTC_VAL
					  END
	   ,FISC_YR as POSTNG_YR
	   ,FISC_PD as POSTNG_PD
	   ,CURR 
	   ,sum(LE_SHIP_USD) as TPM_LE_GSV
	   ,sum(LE_KMF_USD) as TPM_LE_KMF
	   ,sum(LE_COST_OF_PROD_USD) as LE_COP
	   ,sum(LE_SHIP_LBS) as LE_LBS
	INTO #kpi_sc_bud_pti
	FROM KNA_COMRCL.dbo.PLN_TO_ITM itm
	LEFT OUTER JOIN KNA_BW.dbo.PZCUST_MAT bw ON ([/BIC/ZCUST_MAT] = CUST and MATRL = MATERIAL)
	LEFT OUTER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN matrl ON (itm.MIXD_PLT_MATRL = matrl.MATRL_NBR and CHRSTC_NM = 'ALT_CATEGORY')
	LEFT OUTER JOIN KG_VIEWS.dbo.UVW_FISC_CAL ON (itm.[CAL_WK] = FISC_YR*100 + FISC_WK )
	WHERE (itm.CUST + itm.MIXD_PLT_MATRL+ CAST(itm.CAL_WK as varchar) ) <> '0000300231240000000010070569201609' 
	GROUP BY CUST
			,bw.[/BIC/ZBPC_BUUN]
			,CHRSTC_VAL
			,FISC_YR
			,FISC_PD
			,CURR

PRINT N'02: #union' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

IF OBJECT_ID ('tempDB..#kpi_sc_bud_union') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_union;
end
SELECT DISTINCT *
INTO #kpi_sc_bud_union
FROM (SELECT PLN_TO as CUST
	   ,BU
	   ,ALTN_CATG as ALT_CATG
       ,POSTNG_PD
	   ,POSTNG_YR
	   ,CURR
	FROM KNA_COMRCL.dbo.PLN_TO_CATG
		
		UNION ALL

 SELECT CUST
	   ,BU
       ,ALT_CATG
	   ,POSTNG_PD
	   ,POSTNG_YR
	   ,CURR
	FROM #kpi_sc_bud_pti) tmp


PRINT N'03: #rs' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--GO

DECLARE @curr_year INT
SET @curr_year = YEAR(getdate())

IF OBJECT_ID ('tempDB..#kpi_sc_bud_rs') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_rs;
end
SELECT DISTINCT u.CUST
	  ,u.BU
	  ,u.ALT_CATG
	  ,u.POSTNG_PD
	  ,u.POSTNG_YR
	  ,ISNULL(BUD_GSV_ORIG,0) as BUD_GSV
	  ,ISNULL(BUD_BASE_KMF,0) as BUD_KMF
	  ,ISNULL(BUD_KMF_ADJ,0) as BUD_KMF_ADJ
	  ,ISNULL((BUD_GSV_ORIG - BUD_BASE_KMF - BUD_KMF_ADJ),0) as BUD_NSV
	  ,ISNULL(IBP_GSV_ORIG,0) as IBP_GSV
	  ,ISNULL(IBP_KMF_ORIG,0) as IBP_KMF
	  ,ISNULL([LAST_PD_GSV_IBP] , 0) as [LAST_PD_GSV_IBP]
	  ,ISNULL([LAST_PD_TRADE_IBP],0) as [LAST_PD_TRADE_IBP]
	  ,ISNULL(IBP_GSV_ORIG - IBP_KMF_ORIG,0) as IBP_NSV
	  ,ISNULL(TPM_LE_GSV,0) as TPM_LE_GSV
	  ,ISNULL(TPM_LE_KMF,0) as TPM_LE_KMF
	  ,ISNULL(LE_COP,0) as LE_COP
	  ,ISNULL(LE_LBS,0) as LE_LBS
	  ,ISNULL(SE_GSV_ORIG,0) as SE_GSV_ORIG 
	  ,ISNULL(SE_KMF_ORIG,0) as SE_KMF_ORIG
	  ,ISNULL(SE_KMF_ADJ,0) as SE_KMF_ADJ
INTO #kpi_sc_bud_rs
FROM #kpi_sc_bud_union u
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N map ON (CAST(u.CUST as decimal)= CAST(map.PLANTO as decimal))
LEFT OUTER JOIN KNA_COMRCL.dbo.PLN_TO_CATG b ON (u.CUST = b.PLN_TO and u.BU = b.BU and u.ALT_CATG = b.ALTN_CATG and b.POSTNG_PD = u.POSTNG_PD 
										and b.POSTNG_YR = u.POSTNG_YR and b.CURR = u.CURR)
LEFT OUTER JOIN #kpi_sc_bud_pti p ON (u.CUST = p.CUST and u.BU = p.BU and u.ALT_CATG = p.ALT_CATG and p.POSTNG_PD = u.POSTNG_PD 
										and p.POSTNG_YR = u.POSTNG_YR and p.CURR = u.CURR)
   -- WHERE u.CUST = '0000300002' and u.BU = 'Morning Foods' and u.ALT_CATG = 'COLD CEREAL' and u.POSTNG_PD = 1 and u.POSTNG_YR = 2017


PRINT N'04: #rs' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#kpi_sc_bud_curr_yr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_curr_yr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year as POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
INTO #kpi_sc_bud_curr_yr
FROM #kpi_sc_bud_rs u
WHERE @curr_year = POSTNG_YR

IF OBJECT_ID ('tempDB..#kpi_sc_bud_future_yr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_future_yr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
INTO #kpi_sc_bud_future_yr
FROM #kpi_sc_bud_rs u
WHERE @curr_year + 1 = POSTNG_YR 

IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
      ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
INTO #kpi_sc_bud_pre_yr
FROM #kpi_sc_bud_rs u
WHERE (@curr_year - 1) = POSTNG_YR 



---Adding Currentyear - 2 data
IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr2_curr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr2_curr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
      ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
INTO #kpi_sc_bud_pre_yr2_curr
FROM #kpi_sc_bud_rs u
WHERE (@curr_year - 2) = POSTNG_YR 


--Adding current year -3  data

IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr3_curr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr3_curr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
      ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
INTO #kpi_sc_bud_pre_yr3_curr
FROM #kpi_sc_bud_rs u
WHERE (@curr_year - 3) = POSTNG_YR 

-------------- Adding current year -4 data
IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr4') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr3;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year - 3 as POSTNG_YR
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
INTO #kpi_sc_bud_pre_yr4
FROM #kpi_sc_bud_rs u
WHERE (@curr_year -4) = POSTNG_YR



	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

TRUNCATE TABLE KNA_COMRCL.[dbo].[FLD_SALES_UPDT_OUTLK_FEED]
INSERT INTO KNA_COMRCL.[dbo].[FLD_SALES_UPDT_OUTLK_FEED]
SELECT CUST
      ,[BU]
      ,[ALT_CATG]
      ,[POSTNG_PD]
      ,[POSTNG_YR]
	  ,sum([LAST_PD_GSV_IBP])
	  ,sum([LAST_PD_TRADE_IBP])
      ,sum([BUD_GSV])
      ,sum([BUD_KMF])
      ,sum([BUD_KMF_ADJ])
      ,sum([BUD_NSV])
      ,sum([IBP_GSV])
      ,sum([IBP_KMF])
      ,sum([IBP_NSV])
      ,sum([TPM_LE_GSV])
      ,sum([TPM_LE_KMF])
      ,sum([LE_COP])
      ,sum([LE_LBS])
      ,sum([SE_GSV_ORIG])
      ,sum([SE_KMF_ORIG])
      ,sum([SE_KMF_ADJ])
      ,sum(YAG_TPM_LE_GSV)
      ,sum(YAG_TPM_LE_KMF)
      ,sum(YAG_LE_COP)
      ,sum(YAG_LE_LBS)
FROM ( SELECT *
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
	FROM #kpi_sc_bud_curr_yr

	UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
FROM #kpi_sc_bud_future_yr

UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year + 1 as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
FROM #kpi_sc_bud_curr_yr

UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
FROM #kpi_sc_bud_pre_yr

	UNION ALL 

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
FROM #kpi_sc_bud_pre_yr

	UNION ALL 


SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
FROM #kpi_sc_bud_pre_yr2_curr

    UNION ALL 

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
FROM #kpi_sc_bud_pre_yr3_curr

	UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year - 1 as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
FROM  #kpi_sc_bud_pre_yr2_curr

	 UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year - 2 as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
FROM  #kpi_sc_bud_pre_yr3_curr

	UNION ALL 

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,YAG_TPM_LE_GSV
	  ,YAG_TPM_LE_KMF
	  ,YAG_LE_COP
	  ,YAG_LE_LBS
FROM  #kpi_sc_bud_pre_yr4



)tmp
GROUP BY CUST
      ,[BU]
      ,[ALT_CATG]
      ,[POSTNG_PD]
      ,[POSTNG_YR]


	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

END								


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK_CAD]
AS
/*******************************************************************************************
   
   NAME        :  [USP_PROC_FLD_SALES_UPDT_OUTLK_CAD]
   PURPOSE & 
   Description :  This SP recreates the BODS dataflow that builds the Field Sales Update Outlook table
				  from the TPE datastream.  The most pertinent business contact is Ben Pineda or Joe Wright 
				  and the logic used here was replicating a pre-built BODS job.
                        
  REVISIONS:
   Ver          Date             AuthOR                     Change Reason
   ------    ----------      ---------------         ---------------------------------------
   1.0         11/12/2018       USCMXJ11                1. Initial Version
   ------    ----------      ---------------         ---------------------------------------

*********************************************************************************/
BEGIN


IF OBJECT_ID ('tempDB..#kpi_sc_bud_union') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_union;
end
SELECT DISTINCT *
INTO #kpi_sc_bud_union
FROM (SELECT SUBSTRING(PLN_TO,5,10) as CUST
	   ,PLN_TO_CATG.BU
	   ,ALTN_CATG as ALT_CATG
       ,POSTNG_PD
	   ,POSTNG_YR
	   ,CURR
	FROM KNA_COMRCL.dbo.PLN_TO_CATG
		INNER JOIN    KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N map ON (CAST(PLN_TO as decimal)= CAST(map.PLANTO as decimal)) where LEVEL_A  = 'CANADA L3'
		UNION ALL

 SELECT PLN_TO_NBR as CUST
	   ,BU
       ,CATG as ALT_CATG
	   ,PD as POSTNG_PD
	   ,FISC_YR as POSTNG_YR
	   ,CURR
	FROM KNA_COMRCL.dbo.PLN_TO_ITM_CAD ) tmp

PRINT N'03: #rs' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--GO

DECLARE @curr_year INT
SET @curr_year = YEAR(getdate())

IF OBJECT_ID ('tempDB..#kpi_sc_bud_rs') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_rs;
end
SELECT DISTINCT u.CUST
	  ,u.BU
	  ,u.ALT_CATG
	  ,u.POSTNG_PD
	  ,u.POSTNG_YR
	  ,SUM(ISNULL(BUD_GSV_ORIG,0)) as BUD_GSV
	  ,SUM(ISNULL(BUD_BASE_KMF,0))as BUD_KMF
	  ,SUM(ISNULL(BUD_KMF_ADJ,0)) as BUD_KMF_ADJ
	  ,SUM(ISNULL((BUD_GSV_ORIG - BUD_BASE_KMF - BUD_KMF_ADJ),0)) as BUD_NSV
	  ,SUM(ISNULL(IBP_GSV_ORIG,0)) as IBP_GSV
	  ,SUM(ISNULL(IBP_KMF_ORIG,0)) as IBP_KMF
	  ,SUM(ISNULL([LAST_PD_GSV_IBP] , 0)) as [LAST_PD_GSV_IBP]
	  ,SUM(ISNULL([LAST_PD_TRADE_IBP],0)) as [LAST_PD_TRADE_IBP]
	  ,SUM(ISNULL(IBP_GSV_ORIG - IBP_KMF_ORIG,0)) as IBP_NSV
	  ,SUM(ISNULL(TPM_LE_GSV,0)) as TPM_LE_GSV
	  ,SUM(ISNULL(TPM_LE_KMF,0)) as TPM_LE_KMF
	  ,SUM(ISNULL(LE_COP,0)) as LE_COP
	  ,SUM(ISNULL(LE_LBS,0)) as LE_LBS
	  ,SUM(ISNULL(SE_GSV_ORIG,0)) as SE_GSV_ORIG 
	  ,SUM(ISNULL(SE_KMF_ORIG,0)) as SE_KMF_ORIG
	  ,SUM(ISNULL(SE_KMF_ADJ,0)) as SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_rs
FROM 
(
select u.CUST
	  ,u.BU
	  ,u.ALT_CATG
	  ,u.POSTNG_PD
	  ,u.POSTNG_YR
	  ,0 as BUD_GSV_ORIG
	  ,0 as BUD_BASE_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as IBP_GSV_ORIG
	  ,0 as IBP_KMF_ORIG
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,ISNULL(LATST_ESTMT_GSV,0) as TPM_LE_GSV
	  ,ISNULL(LATST_ESTMT_KMF_USD,0) as TPM_LE_KMF
	  ,ISNULL(LATST_ESTMT_COST_OF_PROD_USD,0) as LE_COP
	  ,ISNULL(LATST_ESTMT_SHIP_LBS,0) as LE_LBS
	  ,0 as SE_GSV_ORIG 
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
	  from #kpi_sc_bud_union u
	  LEFT JOIN KNA_COMRCL.dbo.PLN_TO_ITM_CAD p ON (u.CUST = p.PLN_TO_NBR and u.BU = p.BU and u.ALT_CATG = p.CATG and p.PD = u.POSTNG_PD 
										and p.FISC_YR = u.POSTNG_YR and p.CURR = u.CURR)
UNION ALL

SELECT u.CUST
	  ,u.BU
	  ,u.ALT_CATG
	  ,u.POSTNG_PD
	  ,u.POSTNG_YR
	  ,ISNULL(BUD_GSV_ORIG,0) as BUD_GSV_ORIG
	  ,ISNULL(BUD_BASE_KMF,0) as BUD_BASE_KMF
	  ,ISNULL(BUD_KMF_ADJ,0) as BUD_KMF_ADJ
	  ,ISNULL(IBP_GSV_ORIG,0) as IBP_GSV_ORIG
	  ,ISNULL(IBP_KMF_ORIG,0) as IBP_KMF_ORIG
	  ,ISNULL([LAST_PD_GSV_IBP] , 0) as [LAST_PD_GSV_IBP]
	  ,ISNULL([LAST_PD_TRADE_IBP],0) as [LAST_PD_TRADE_IBP]
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,ISNULL(SE_GSV_ORIG,0) as SE_GSV_ORIG 
	  ,ISNULL(SE_KMF_ORIG,0) as SE_KMF_ORIG
	  ,ISNULL(SE_KMF_ADJ,0) as SE_KMF_ADJ
	  ,'B-#' AS KEY_EVNT
	  ,'B-#' AS KEY_EVNT_DESC
	  ,'B-#' AS PROMOTION_TYPE
	   from #kpi_sc_bud_union u
	   LEFT OUTER JOIN KNA_COMRCL.dbo.PLN_TO_CATG b ON (u.CUST = SUBSTRING(PLN_TO,5,10)  and u.BU = b.BU and u.ALT_CATG = b.ALTN_CATG and b.POSTNG_PD = u.POSTNG_PD 
										and b.POSTNG_YR = u.POSTNG_YR and b.CURR = u.CURR)


)u
GROUP BY
	   u.CUST
	  ,u.BU
	  ,u.ALT_CATG
	  ,u.POSTNG_PD
	  ,u.POSTNG_YR
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE


PRINT N'04: #rs' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#kpi_sc_bud_curr_yr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_curr_yr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year as POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_curr_yr
FROM #kpi_sc_bud_rs u
WHERE @curr_year = POSTNG_YR

IF OBJECT_ID ('tempDB..#kpi_sc_bud_future_yr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_future_yr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_future_yr
FROM #kpi_sc_bud_rs u
WHERE @curr_year + 1 = POSTNG_YR 

IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
      ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_pre_yr
FROM #kpi_sc_bud_rs u
WHERE (@curr_year - 1) = POSTNG_YR 



---Adding Currentyear - 2 data
IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr2_curr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr2_curr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
      ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_pre_yr2_curr
FROM #kpi_sc_bud_rs u
WHERE (@curr_year - 2) = POSTNG_YR 


--Adding current year -3  data

IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr3_curr') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr3_curr;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
      ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_pre_yr3_curr
FROM #kpi_sc_bud_rs u
WHERE (@curr_year - 3) = POSTNG_YR 

-------------- Adding current year -4 data
IF OBJECT_ID ('tempDB..#kpi_sc_bud_pre_yr4') IS NOT NULL
begin
	DROP TABLE #kpi_sc_bud_pre_yr3;
end
SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year - 3 as POSTNG_YR
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
INTO #kpi_sc_bud_pre_yr4
FROM #kpi_sc_bud_rs u
WHERE (@curr_year -4) = POSTNG_YR



	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;

TRUNCATE TABLE KNA_COMRCL.[dbo].[FLD_SALES_UPDT_OUTLK_FEED_CAD]
INSERT INTO KNA_COMRCL.[dbo].[FLD_SALES_UPDT_OUTLK_FEED_CAD]
SELECT CUST
      ,[BU]
      ,[ALT_CATG]
      ,[POSTNG_PD]
      ,[POSTNG_YR]
	  ,sum([LAST_PD_GSV_IBP])
	  ,sum([LAST_PD_TRADE_IBP])
      ,sum([BUD_GSV])
      ,sum([BUD_KMF])
      ,sum([BUD_KMF_ADJ])
      ,sum([BUD_NSV])
      ,sum([IBP_GSV])
      ,sum([IBP_KMF])
      ,sum([IBP_NSV])
      ,sum([TPM_LE_GSV])
      ,sum([TPM_LE_KMF])
      ,sum([LE_COP])
      ,sum([LE_LBS])
      ,sum([SE_GSV_ORIG])
      ,sum([SE_KMF_ORIG])
      ,sum([SE_KMF_ADJ])
      ,sum(YAG_TPM_LE_GSV)
      ,sum(YAG_TPM_LE_KMF)
      ,sum(YAG_LE_COP)
      ,sum(YAG_LE_LBS)
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM ( SELECT 
	   CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
	FROM #kpi_sc_bud_curr_yr

	UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM #kpi_sc_bud_future_yr

UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year + 1 as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM #kpi_sc_bud_curr_yr

UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM #kpi_sc_bud_pre_yr

	UNION ALL 

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM #kpi_sc_bud_pre_yr

	UNION ALL 


SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM #kpi_sc_bud_pre_yr2_curr

    UNION ALL 

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,BUD_GSV
	  ,BUD_KMF
	  ,BUD_KMF_ADJ
	  ,[LAST_PD_GSV_IBP]
	  ,[LAST_PD_TRADE_IBP]
	  ,BUD_NSV
	  ,IBP_GSV
	  ,IBP_KMF
	  ,IBP_NSV
	  ,TPM_LE_GSV
	  ,TPM_LE_KMF
	  ,LE_COP
	  ,LE_LBS
	  ,SE_GSV_ORIG
	  ,SE_KMF_ORIG
	  ,SE_KMF_ADJ
	  ,0 as YAG_TPM_LE_GSV
	  ,0 as YAG_TPM_LE_KMF
	  ,0 as YAG_LE_COP
	  ,0 as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM #kpi_sc_bud_pre_yr3_curr

	UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year - 1 as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM  #kpi_sc_bud_pre_yr2_curr

	 UNION ALL

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,@curr_year - 2 as POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,TPM_LE_GSV as YAG_TPM_LE_GSV
	  ,TPM_LE_KMF as YAG_TPM_LE_KMF
	  ,LE_COP as YAG_LE_COP
	  ,LE_LBS as YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM  #kpi_sc_bud_pre_yr3_curr

	UNION ALL 

SELECT CUST
	  ,BU
	  ,ALT_CATG
	  ,POSTNG_PD
	  ,POSTNG_YR
	  ,0 as BUD_GSV
	  ,0 as BUD_KMF
	  ,0 as BUD_KMF_ADJ
	  ,0 as [LAST_PD_GSV_IBP]
	  ,0 as [LAST_PD_TRADE_IBP]
	  ,0 as BUD_NSV
	  ,0 as IBP_GSV
	  ,0 as IBP_KMF
	  ,0 as IBP_NSV
	  ,0 as TPM_LE_GSV
	  ,0 as TPM_LE_KMF
	  ,0 as LE_COP
	  ,0 as LE_LBS
	  ,0 as SE_GSV_ORIG
	  ,0 as SE_KMF_ORIG
	  ,0 as SE_KMF_ADJ
	  ,YAG_TPM_LE_GSV
	  ,YAG_TPM_LE_KMF
	  ,YAG_LE_COP
	  ,YAG_LE_LBS
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE
FROM  #kpi_sc_bud_pre_yr4



)tmp
GROUP BY CUST
      ,[BU]
      ,[ALT_CATG]
      ,[POSTNG_PD]
      ,[POSTNG_YR]
	  ,KEY_EVNT
	  ,KEY_EVNT_DESC
	  ,PROMOTION_TYPE


	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

END								


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK_MANUAL_EXTRACT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************************************************************
		NAME:      [[USP_PROC_FLD_SALES_UPDT_OUTLK_MANUAL_EXTRACT]]
		PURPOSE:   To create the manually extracted FLD_SALES_OUTLK_UPDT table
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        07/26/2018   USCDXS92         Created.
		
		This stored procedure creates the FLD_SALES_UPDT_MANUAL tables that were requested by the 
		business.  Logic was copied from Ben Pineda's Stored Procedures.

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK_MANUAL_EXTRACT] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;

DECLARE @curr_pd INT
DECLARE @curr_year INT
SET @curr_pd = (SELECT FISC_PD FROM KG_VIEWS.KG.UVW_FISC_CAL
		WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT]);
SET @curr_year = (SELECT YEAR(GETDATE()));

TRUNCATE TABLE KNA_COMRCL.dbo.FLD_SALES_UPDT_OUTLK_FEED_MANUAL;
INSERT INTO KNA_COMRCL.dbo.FLD_SALES_UPDT_OUTLK_FEED_MANUAL
SELECT DISTINCT
b.LEVEL_A as LVL_A,
b.LEVEL_B as LVL_B,
b.LEVEL_C as LVL_C,
b.LEVEL_D as LVL_D,
b.LEVEL_E as LVL_E,
a.[YEAR] as FISC_YR,
a.[PLAN_TO] as PLN_TO,
a.[PT_NAME] as PLN_TO_NM,
b.ALL_IN_FLAG as ALL_IN_FLG,
a.[BUSINESS_UNIT] as BU,
a.CATEGORY as CATG,
a.[POSTING_PERIOD] as POSTNG_PD,
a.[CRM LE ORIG Gross Sales (monthly)],
a.[CRM Base KMF (OI+BB)],
CASE WHEN a.[IBP GSV] is NULL THEN 0 ELSE a.[IBP GSV] END AS [IBP_GSV],
CASE WHEN a.[IBP KMF] is NULL THEN 0 ELSE a.[IBP KMF] END AS [IBP_KMF],
CASE WHEN a.[BUD GSV] is NULL THEN 0 ELSE a.[BUD GSV] END AS [BUD_GSV],
a.[BUD KMF],
a.[YAG GSV],
a.[YAG KMF],
CASE WHEN a.[LP IBP GSV] is NULL THEN 0 ELSE a.[LP IBP GSV] END AS [LP IBP GSV],
CASE WHEN a.[LP IBP KMF] is NULL THEN 0 ELSE a.[LP IBP KMF] END AS [LP IBP KMF],
a.[SE GSV],
a.[SE KMF],
a.[CON GSV],
a.[CRM LE COP],
a.[YAG CRM LE COP],
a.[CRM LE LBS],
a.[YAG CRM LE LBS],
a.[COP SE],
a.[COP BUDGET],
CASE WHEN a.[BUD KMF ADJ] is NULL THEN 0 ELSE a.[BUD KMF ADJ] END AS [BUD KMF ADJ] ,
CASE WHEN a.[SE KMF ADJ] is NULL THEN 0 ELSE a.[SE KMF ADJ] END AS [SE KMF ADJ] ,
CASE WHEN d.FLAG='Acosta' THEN 'ACOSTA'
		ELSE 'NOT ACOSTA' END as FLAG,
d.[KLG_BANNER],
d.[KLG Sr Mgr Agency Retail],
d.[Acosta Retail Bus Mgr],
d.[ACOSTA FRZ Bus Mgr],
d.[Frozen Region],
d.[KLG VP DRA Director],
d.[KLG Director MTS],
CASE WHEN [POSTING_PERIOD] >= @curr_pd and [YEAR] = @curr_year THEN 'TO GO' 
	 WHEN [POSTING_PERIOD] < @curr_pd and [YEAR] = @curr_year THEN 'TO DATE'
	 WHEN [YEAR] > @curr_year THEN 'TO GO'
	 ELSE 'TO DATE' END as [TO_DT_YR],
CASE WHEN [POSTING_PERIOD] < 10 THEN 'P0' + CAST(POSTING_PERIOD as  varchar) + ' ' + CAST([YEAR] as varchar)
	ELSE  'P' + CAST(POSTING_PERIOD as  varchar) + ' ' + CAST([YEAR] as varchar) END as  [PD_YR],
'TOTAL KUSA' AS [HIER],
CASE WHEN a.[POSTING_PERIOD] in (1,2,3) THEN 'Q1' 
	 WHEN a.[POSTING_PERIOD] in (4,5,6) THEN 'Q2'
	 WHEN a.[POSTING_PERIOD] in (7,8,9) THEN 'Q3'
     ELSE 'Q4' END AS [QTR],
CASE WHEN a.[POSTING_PERIOD] in (1,2,3) THEN 1
	 WHEN a.[POSTING_PERIOD] in (4,5,6) THEN 2
	 WHEN a.[POSTING_PERIOD] in (7,8,9) THEN 3
     ELSE 4 END AS QTR_NUM,
a.[POSTING_PERIOD] AS PD_NBR,
convert(date,getdate()) AS [UPDT_DT],
b.TIER,
b.TIER_NAME as TIER_NM
FROM KNA_EXTERNAL.USER_SALES.SALES_OUTLOOK_FEED a
LEFT JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N b ON (a.[PLAN_TO]=b.[PT_N_TEXT] AND a.[BUSINESS_UNIT]=b.BU)
LEFT JOIN KNA_EXTERNAL.USER_SALES.[ACOSTA_HIERARCHY] d ON (a.[PLAN_TO]=d.[Plan To] AND a.[BUSINESS_UNIT]=d.[BU] 
				AND a.CATEGORY=d.CATEGORY)
LEFT JOIN KG_VIEWS.dbo.UVW_FISC_CAL e ON (a.[POSTING_PERIOD]=e.[FISC_PD] AND a.[YEAR]=e.[FISC_YR]);

TRUNCATE TABLE KNA_COMRCL.dbo.FLD_SALES_UPDT_OUTLK_FEED_BW_HIER;
INSERT INTO KNA_COMRCL.dbo.FLD_SALES_UPDT_OUTLK_FEED_BW_HIER
SELECT DISTINCT
b.Level_A as LVL_A,
b.Level_B as LVL_B,
b.Level_C as LVL_C,
b.Level_D as LVL_D,
b.Level_E as LVL_E,
a.[YEAR] as FISC_YR,
a.[PLAN_TO] as PLN_TO,
a.[PT_NAME] as PLN_TO_NM,
CASE 
	WHEN a.[BUSINESS_UNIT]='Morning Foods'AND b.ALL_IN_Flag_Morning_Foods='SPT' THEN 'x'
	WHEN a.[BUSINESS_UNIT]='Snacks'AND b.ALL_IN_Flag_Snacks='SPT' THEN 'x'
	WHEN a.[BUSINESS_UNIT]='Frozen'AND b.ALL_IN_Flag_Frozen='SPT' THEN 'x'
	WHEN a.[BUSINESS_UNIT]='Kashi'AND b.ALL_IN_Flag_Kashi='SPT' THEN 'x'
	ELSE ''
	END AS [LIFELINE],
a.[BUSINESS_UNIT],
a.CATEGORY,
a.[POSTING_PERIOD],
a.[CRM LE ORIG Gross Sales (monthly)],
a.[CRM Base KMF (OI+BB)],
CASE WHEN a.[BUD GSV] is NULL
THEN 0 ELSE a.[BUD GSV] END AS [BUD GSV],
a.[BUD KMF],
a.[YAG GSV],
a.[YAG KMF],
a.[SE GSV],
a.[SE KMF],
a.[CON GSV],
a.[CRM LE COP],
a.[YAG CRM LE COP],
a.[CRM LE LBS],
a.[YAG CRM LE LBS],
a.[COP SE],
a.[COP BUDGET],
CASE WHEN a.[BUD KMF ADJ] is NULL THEN 0 ELSE a.[BUD KMF ADJ] END AS [BUD KMF ADJ] ,
CASE WHEN a.[SE KMF ADJ] is NULL THEN 0 ELSE a.[SE KMF ADJ] END AS [SE KMF ADJ] ,
CASE WHEN a.[IBP GSV] is NULL THEN 0 ELSE a.[IBP GSV] END AS [IBP GSV],
CASE WHEN a.[IBP KMF] is NULL THEN 0 ELSE a.[IBP KMF] END AS [IBP KMF],
CASE WHEN a.[LP IBP GSV] is NULL THEN 0 ELSE a.[LP IBP GSV] END AS [LP IBP GSV],
CASE WHEN a.[LP IBP KMF] is NULL THEN 0 ELSE a.[LP IBP KMF] END AS [LP IBP KMF],
CASE WHEN d.FLAG='Acosta' THEN 'ACOSTA' ELSE 'NOT ACOSTA' END as Flag,
d.[KLG_BANNER],
d.[KLG Sr Mgr Agency Retail],
d.[Acosta Retail Bus Mgr],
d.[ACOSTA FRZ Bus Mgr],
d.[Frozen Region],
d.[KLG VP DRA Director],
d.[KLG Director MTS],
CASE WHEN [POSTING_PERIOD] >= @curr_pd and [YEAR] = @curr_year THEN 'TO GO' 
	 WHEN [POSTING_PERIOD] < @curr_pd and [YEAR] = @curr_year THEN 'TO DATE'
	 WHEN [YEAR] > @curr_year THEN 'TO GO'
	 ELSE 'TO DATE' END as [TO_DT_YR],
CASE WHEN [POSTING_PERIOD] < 10 THEN 'P0' + CAST(POSTING_PERIOD as  varchar) + ' ' + CAST([YEAR] as varchar)
	ELSE  'P' + CAST(POSTING_PERIOD as  varchar) + ' ' + CAST([YEAR] as varchar) END as  [PD_YR],
'TOTAL KUSA' AS [HIER],
CASE WHEN a.[POSTING_PERIOD] in (1,2,3) THEN 'Q1' 
	 WHEN a.[POSTING_PERIOD] in (4,5,6) THEN 'Q2'
	 WHEN a.[POSTING_PERIOD] in (7,8,9) THEN 'Q3'
     ELSE 'Q4' END AS [QTR],
CASE WHEN a.[POSTING_PERIOD] in (1,2,3) THEN 1
	 WHEN a.[POSTING_PERIOD] in (4,5,6) THEN 2
	 WHEN a.[POSTING_PERIOD] in (7,8,9) THEN 3
     ELSE 4 END AS QTR_NUM,
a.[POSTING_PERIOD] AS PD_NBR
FROM KNA_EXTERNAL.USER_SALES.SALES_OUTLOOK_FEED a
LEFT JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP b ON (a.[PLAN_TO]=b.[PT_N_TEXT])
LEFT JOIN KNA_EXTERNAL.USER_SALES.[ACOSTA_HIERARCHY] d ON (a.[PLAN_TO]=d.[Plan To] AND a.[BUSINESS_UNIT]=d.[BU]
						AND a.CATEGORY=d.CATEGORY)
LEFT JOIN KG_VIEWS.dbo.UVW_FISC_CAL e ON (a.[POSTING_PERIOD]=e.[FISC_PD] AND a.[YEAR]=e.[FISC_YR]);

END

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_IBP_CAD_SNAPSHOT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************************************************************
		NAME:      [USP_PROC_IBP_CAD_SNAPSHOT]
		PURPOSE:   Take snapshot of CAD IBP table
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/12/2018   USCMXJ11         Created.
		
		
		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_IBP_CAD_SNAPSHOT] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--Timestamps are included for debugging and to test the execution times of each procedure
--PRINT N'00: #Start: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--in order to poperly filter records out and apply the current week we first set variables to reflect what is in UVW_FISC_CAL
BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

---below logic is to get the closed period max week

DECLARE @PD VARCHAR(10), @YR VARCHAR(10)
SELECT   @PD =  FISC_PD ,  @YR =  FISC_YR FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT]

IF EXISTS (SELECT name from sys.indexes where name = 'IX_IBP_CAD_SNAPSHOT')
begin
	drop index IX_IBP_CAD_SNAPSHOT on [dbo].IBP_CAD_SNAPSHOT
end 					

DELETE FROM dbo.IBP_CAD_SNAPSHOT WHERE  SNAPSHOT_YR = @YR AND SNAPSHOT_PD = @PD

INSERT INTO dbo.IBP_CAD_SNAPSHOT
SELECT CAST(GETDATE() as Date) ,@YR,@PD,* FROM dbo.[FLD_SALES_UPDT_OUTLK_FEED_CAD] where POSTNG_YR >= @YR-2

DELETE FROM dbo.IBP_CAD_SNAPSHOT WHERE  SNAPSHOT_YR <= SNAPSHOT_YR-2

IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_IBP_CAD_SNAPSHOT')
	begin
		CREATE UNIQUE CLUSTERED INDEX IX_IBP_CAD_SNAPSHOT ON [dbo].IBP_CAD_SNAPSHOT (SNAPSHOT_DT,PLN_TO,BU,CATG,POSTNG_PD,POSTNG_YR,[CAL_WK],KEY_EVNT_DESC,PROMOTION_TYPE)
	end


IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

END

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_INSIGHTS_PT_TYP_PRFMNCE]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Smith, Dylan>
-- Create date: <06/12/2018>
-- Description:	<Description,,>
--This stored procedure creates the custome table that is being used by Joe's team
-- =============================================
Create PROCEDURE [dbo].[USP_PROC_INSIGHTS_PT_TYP_PRFMNCE]
	
AS
BEGIN
IF OBJECT_ID ('tempDB..#materialLookupTable') IS NOT NULL
begin
       drop table #materialLookupTable
end
SELECT catg.MATRL_NBR,
          catg.CHRSTC_VAL as 'ALT_CATEGORY',
          sub.CHRSTC_VAL as 'ALT_SUB_CATEGORY',
          prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE] as [PROD_HIER_TYP],
       prod_hier.[PROD_HIER_TYPE_DESC] as [PROD_HIER_TYP_DESC],
          toSize.SIZE as SZ
INTO #materialLookupTable
FROM KG_VIEWS.KNA.UVW_MATRL_CLASFCTN catg
INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN sub ON (catg.MATRL_NBR = sub.MATRL_NBR and sub.CHRSTC_NM = 'ALT_SUB_CATEGORY')
INNER JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON (matrl.MATRL_NBR = catg.MATRL_NBR)
INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER prod_hier ON (prod_hier.PROD_HIER = matrl.[PROD_HIER])
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.TYPE_TOSIZE toSize ON (toSize.TYPE_ID = LEFT(prod_hier.PROD_HIER,14) )
WHERE catg.CHRSTC_NM = 'ALT_CATEGORY'

CREATE UNIQUE INDEX TMP_MATRL_NBR_IX ON #materialLookupTable (MATRL_NBR)

IF OBJECT_ID ('tempDB..#tempValuesFromPlanTo') IS NOT NULL
begin
       drop table #tempValuesFromPlanTo
end
             SELECT pln.CUST,
                    pln.MIXD_PLT_MATRL,
                    CAL_WK,
                    CURR,
                    SUM(pln.[LE_SHIP_USD]) AS [LATST_ESTMT_GSV], 
                    SUM(pln.[LE_COST_OF_PROD_USD]) AS [LATST_ESTMT_COST_OF_PROD_USD], 
                    SUM(pln.[LE_KMF_USD]) AS [LATST_ESTMT_KMF_USD], 
                    SUM(pln.[LE_SHIP_LBS]) AS [LATST_ESTMT_SHIP_LBS], 
                    SUM(pln.[LE_SHIP_UNITS]) AS [LATST_ESTMT_SHIP_UNITS], 
                    SUM(pln.[TOTL_PLN_KMF_USD]) AS [PLN_KMF], 
                    SUM(pln.[LE_SHIP_USD] - pln.[LE_KMF_USD]) AS [LATST_ESTMT_NSV_PRXY_USD], 
                    SUM(pln.[LE_SHIP_USD] - pln.[LE_KMF_USD] - pln.[LE_COST_OF_PROD_USD]) AS [LATST_ESTMT_SC_PRXY_USD], 
                    SUM(pln.[LE_SHIP_USD] - pln.[LE_COST_OF_PROD_USD]) AS [LATST_ESTMT_SC_PRXY_USD_GSV],
                    SUM(pln.[LE_CS] )  AS [LATST_ESTMT_COST_OF_PROD_USD_FXD]
          INTO #tempValuesFromPlanTo
          FROM KNA_COMRCL.dbo.PLN_TO_ITM pln
          WHERE CAL_WK > 201600 
          GROUP BY pln.CUST,
                    pln.MIXD_PLT_MATRL,
                    CAL_WK,
                    CURR

CREATE UNIQUE INDEX TMP_PLNTO_IX ON #tempValuesFromPlanTo (CUST,MIXD_PLT_MATRL, CAL_WK, CURR)

IF OBJECT_ID ('tempDB..#tempBUValues') IS NOT NULL
begin
       drop table #tempBUValues
end
SELECT DISTINCT CUST, 
MIXD_PLT_MATRL, 
CASE WHEN zcust.[/BIC/ZBPC_BUUN] IS NULL THEN zcust1.[/BIC/ZBPC_BUUN]
               ELSE  zcust.[/BIC/ZBPC_BUUN]
                    END as BU
INTO #tempBUValues
FROM (SELECT DISTINCT CUST, 
MIXD_PLT_MATRL
FROM #tempValuesFromPlanTo) pln
LEFT OUTER JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (zcust.[/BIC/ZCUST_MAT] = pln.CUST AND zcust.[MATERIAL] = pln.MIXD_PLT_MATRL )
LEFT OUTER JOIN KNA_BW.dbo.PZCUST_MAT zcust1 ON ( zcust1.[MATERIAL] = pln.MIXD_PLT_MATRL and zcust1.[/BIC/ZBPC_BUUN] NOT IN (''/*,'Specialty'*/))

CREATE INDEX TMP_BU_IX ON #tempBUValues (CUST,MIXD_PLT_MATRL)

TRUNCATE TABLE [KNA_COMRCL].[dbo].[INSIGHTS_PT_TYP_PRFMNCE]
INSERT INTO [KNA_COMRCL].[dbo].[INSIGHTS_PT_TYP_PRFMNCE]
SELECT norm.PLANTO AS [PLN_TO_NBR], 
       norm.PT_NAME AS [PLN_TO_NM], 
       norm.LEVEL_A AS [LVL_A], 
          norm.LEVEL_B AS [LVL_B], 
       norm.LEVEL_C AS [LVL_C], 
          norm.LEVEL_D AS [LVL_D], 
       norm.LEVEL_E AS [LVL_E], 
          norm.TIER_NAME AS [TIER_NM], 
       norm.ALL_IN_FLAG AS ALL_IN_FLG, 
          pln.MIXD_PLT_MATRL as MIXD_PLT_MATRL,
          bw.[BU], 
          matrlLkup.ALT_CATEGORY AS CATG, 
       can.[Ca Category] as [CAN_CATG], 
          matrlLkup.ALT_SUB_CATEGORY AS [SUB_CATG], 
          matrlLkup.[PROD_HIER_BRAND],
       matrlLkup.[PROD_HIER_BRAND_DESC],
       matrlLkup.[PROD_HIER_TYP],
       matrlLkup.[PROD_HIER_TYP_DESC],
       fisc_cal.FISC_YR, 
          fisc_cal.FISC_QTR AS QTR,
          'P' + CAST(fisc_cal.FISC_PD as varchar) + ' ' + CAST(fisc_cal.FISC_YR as varchar) as [PD_YR], 
          fisc_cal.FISC_PD AS PD, 
          pln.CAL_WK as CAL_WK,
       matrlLkup.SZ, 
          pln.[LATST_ESTMT_GSV], 
          pln.[LATST_ESTMT_COST_OF_PROD_USD], 
       pln.[LATST_ESTMT_KMF_USD], 
          pln.[LATST_ESTMT_SHIP_LBS], 
       pln.[LATST_ESTMT_SHIP_UNITS], 
          pln.[PLN_KMF], 
       pln.[LATST_ESTMT_NSV_PRXY_USD], 
       pln.[LATST_ESTMT_SC_PRXY_USD], 
       pln.[LATST_ESTMT_SC_PRXY_USD_GSV],
       pln.[LATST_ESTMT_COST_OF_PROD_USD_FXD]*std.[STD_PRC] AS [LATST_ESTMT_COST_OF_PROD_USD_FXD]
FROM #tempValuesFromPlanTo pln
INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = pln.[CAL_WK])
LEFT OUTER JOIN #tempBUValues bw on (bw.CUST = pln.CUST and bw.MIXD_PLT_MATRL = pln.MIXD_PLT_MATRL)
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N  norm ON ('0000'+ norm.PLANTO  = pln.CUST AND norm.BU = bw.BU and (CASE WHEN norm.LEVEL_A = 'CANADA L3' THEN 'CAD' ELSE 'USD' END) = pln.CURR)
INNER JOIN #materialLookupTable matrlLkup ON (pln.MIXD_PLT_MATRL = matrlLkup.MATRL_NBR)
LEFT OUTER JOIN KNA_COMRCL.dbo.UVW_STD_PRC_MIX std ON (std.MATRL = pln.[MIXD_PLT_MATRL] AND std.CURR = pln.CURR )
INNER JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON can.CATEGORY = matrlLkup.ALT_CATEGORY

end

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_NIELSEN_AMPS_UPDT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PROC_NIELSEN_AMPS_UPDT]

AS
BEGIN
-- =============================================
-- Author:		<Smith, Dylan>
-- Create date: <04/05/2017>
-- Description:	<Description,,>
--This stored procedure creates the AMPS_US table that is currently being used by Erin Chamberlain.
--Received this USP from the RGM sales team and reformatted it to reflect the new environment.
--No documentation was received from the business and the USP was created by the end user.
-- =============================================


IF OBJECT_ID ('tempDB..#AMPS_temp1') IS NOT NULL
begin
	DROP TABLE #AMPS_temp1;
end
SELECT b.[Source Tab],
	b.[Database Name],
	AVG(ISNULL(a.Dol,0)) AS Dol,
	a.[All Markets],
	a.[All Periods],
	AVG (ISNULL(a.[Base Unit Price],0)) AS [Base Unit Price],
	AVG(ISNULL(a.[Base Unit Price YA],0)) AS [Base Unit Price YA],
	AVG(ISNULL(a.[Avg # of Items],0)) AS [Avg # of Items],
	AVG(ISNULL(a.[Avg # of Items],0)-ISNULL(a.[Avg # of Items CYA],0)) AS [Avg # of Items YA],
	AVG(ISNULL(a.[Any Disp # Disp],0)) AS [Any Disp # Disp],
	AVG (ISNULL(a.[Any Disp # Disp CYA],0)) AS [Any Disp # Disp CYA]
INTO #AMPS_temp1
FROM KNA_EXTERNAL.USER_SALES.NIEL_AMPS_US_SRC a
RIGHT JOIN KNA_EXTERNAL.USER_SALES.NIEL_PRODUCT_SHARE_MAP b ON (a.[Source Tab] = b.[Source Tab] AND a.[All Products]=b.[Database Name])
GROUP BY b.[Source Tab],
	b.[Database Name],
	a.[All Markets],
	a.[All Periods]


IF OBJECT_ID ('tempDB..#AMPS_temp2') IS NOT NULL
begin
	DROP TABLE #AMPS_temp2;
end
SELECT a.[All Products] AS ALL_PRODUCTS_B,
	a.[All Markets]+c.[Share To]+a.[All Products]+a.[All Periods] AS COMBO,
	a.[All Markets],
	c.[Share To]+a.[All Products] AS [All Products] ,
	a.[All Periods],
	a.Dol as Dol, 
	a.[Dol % Chg YA],
	a.[Base $ % Chg YA],
	a.[Dol CYA],
	a.[Incr $],
	a.[Incr $ YA],
	a.[EQ% Chg YA] as [EQ % Chg YA],
	a.[Units % Chg YA],
	a.[Dol Shr- Prompt] as [Dol Shr - Prompt], 
	a.[Dol Shr CYA-Prompt] as [Dol Shr CYA - Prompt],
	a.[Any Promo $ % Chg YA],
	a.[No Promo $ % Chg YA],
	a.[% $ No Promo],
	a.[Avg EQ Price CYA],
	a.[Avg EQ Price],
	a.[Base Unit Price YA],
	a.[Base Unit Price],
	a.[Base Unit Price CYA],
	a.[Avg Unit Price],
	a.[Avg Unit Price CYA],
	a.[Qual Unit Price],
	a.[Qual Unit Price CYA],
	a.[Any Disp # Disp],
	a.[Any Disp # Disp CYA],
	a.[Dol / $MM ACV / Item],
	a.[Dol / $MM ACV / Item CYA],
	a.[%ACV],
	a.[%ACV CYA],
	a.TDP,
	a.[TDP % Chg YA],
	a.[Avg # of Items],
	a.[Avg # of Items CYA],
	a.[Any Promo Units % Lift],
	a.[Any Promo Units % Lift CYA],
	a.[% Units ANy Promo] as [% Units Any Promo],
	a.[% Units Any Promo CYA],
	a.[Any Disp %ACV],
	a.[Any Disp %ACV CYA],
	a.[Qual CWW],
	a.[Qual CWW CYA],
	a.[Feat & Disp %ACV /Any Feat %ACV] as [Feat & Disp %ACV / Any Feat %ACV],
	a.[Feat & Disp %ACV / Any Feat %ACV CYA],
	CASE
		WHEN a.[Incr $ YA]<0
			THEN ((a.[Incr $]/  (CASE WHEN a.[Incr $ YA]=0 THEN 1 ELSE a.[Incr $ YA] END) -1)*-1)*100
			ELSE ((a.[Incr $]/   (CASE WHEN a.[Incr $ YA]=0 THEN 1 ELSE a.[Incr $ YA] END)-1)*100)
		END  AS [Incremental % Chg vs YA],
	ROUND(a.[Base Unit Price]-b.[Base Unit Price],3) AS [Base U Price Gap],
	ROUND((ROUND(a.[Base Unit Price]-b.[Base Unit Price],3))-(a.[Base Unit Price YA]-b.[Base Unit Price YA]),3) AS [Base U Price Gap Chg vs YA],
	ROUND(((a.[Avg # of Items]/b.[Avg # of Items])*100)/ (CASE WHEN a.[Dol Shr- Prompt]=0 THEN 1 ELSE a.[Dol Shr- Prompt] END) ,3)*100 AS [Item Share of Category],
	ROUND(    (ROUND(((a.[Avg # of Items]/b.[Avg # of Items])*100)/ (CASE WHEN a.[Dol Shr- Prompt]=0 THEN .00000001 ELSE a.[Dol Shr- Prompt] END) ,3)*100)     - 
	(((((a.[Avg # of Items]-a.[Avg # of Items CYA])*100)/ ( CASE WHEN b.[Avg # of Items YA]=0 THEN 1 ELSE b.[Avg # of Items YA] END ))/(( CASE WHEN a.[Dol Shr- Prompt]-a.[Dol Shr CYA-Prompt]=0 THEN .0000001 ELSE a.[Dol Shr- Prompt]-a.[Dol Shr CYA-Prompt] END )))*100),3) AS [Item Share of Category CYA],
	ROUND(   ((a.[Any Disp # Disp]/(CASE WHEN b.[Any Disp # Disp]=0 THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) AS [Display Share], 
	ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ (CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 THEN 1 ELSE 
	(b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) END))*100,3) AS [Display Share YA],
	ROUND(   ((a.[Any Disp # Disp]/(CASE WHEN b.[Any Disp # Disp]=0 THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) -
								ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ (CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 THEN 1 ELSE 
	(b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) END))*100,3) AS [Declining Display Share],
	(ROUND(   ((a.[Any Disp # Disp]/ (CASE WHEN b.[Any Disp # Disp]= 0  THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) / 
	(CASE WHEN a.[Dol Shr- Prompt]=0 THEN 1 ELSE a.[Dol Shr- Prompt] END))*100 AS [Display/Dollar Index],
	(ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ (CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 THEN 1 ELSE (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) END))*100,3)/
	(CASE WHEN (a.[Dol Shr- Prompt]-a.[Dol Shr CYA-Prompt])=0THEN 1 ELSE (a.[Dol Shr- Prompt]-a.[Dol Shr CYA-Prompt])END))*100 AS [Display/Dollar Index YAG],
	((ROUND(   ((a.[Any Disp # Disp]/ (CASE WHEN b.[Any Disp # Disp]= 0  THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) / (CASE WHEN a.[Dol Shr- Prompt]=0 THEN 1 ELSE a.[Dol Shr- Prompt] END))*100)-
	((ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ (CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 THEN 1 ELSE (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) END))*100,3)/
	(CASE WHEN (a.[Dol Shr- Prompt]-a.[Dol Shr CYA-Prompt])=0 THEN 1 ELSE (a.[Dol Shr- Prompt]-a.[Dol Shr CYA-Prompt])END))*100) AS [Display/Dollar Index CYA],
	a.[Any Promo Unit Price % Disc],
	a.[Any Promo Unit Price % Disc CYA],
	a.[% Subsidized Units],
	a.[% Subsidized Units CYA] AS [Subsidized Base Unit Chg vs YA],
	a.[Avg # of Items Reach]
INTO #AMPS_temp2
FROM KNA_EXTERNAL.USER_SALES.NIEL_AMPS_US_SRC a
LEFT JOIN #AMPS_temp1 b ON (a.[Source Tab] = b.[Source Tab] AND a.[All Markets]=b.[All Markets] AND a.[All Periods]=b.[All Periods])
INNER JOIN  KNA_EXTERNAL.USER_SALES.NIEL_PRODUCT_SHARE_MAP c ON (a.[Source Tab] = c.[Source Tab])

IF OBJECT_ID ('tempDB..#AMPS_JOE_ATT') IS NOT NULL
begin
	DROP TABLE #AMPS_JOE_ATT;
end

SELECT b.[All Products] AS ALL_PRODUCTS,
	b.CATEGORY,
	b.[Nielsen Name],
	b.[ORDER] as [Order],
	b.[LEVEL] as [Level],
	b.MASK as Mask,
	b.AGG as Agg,
	b.[Level Name],
	b.BRAND as Brand,
	b.CORP as Corp,
	b.SEGMENT as Segment,
	b.[Sub Segment],
	b.[BW Category],
	b.[BW BU],
	b.[BW Number],
	b.[BW Name],
	b.[Profit Center]
INTO #AMPS_JOE_ATT
FROM KNA_EXTERNAL.USER_SALES.NIEL_PRODUCT_XREF b


IF OBJECT_ID ('tempDB..#AMPS_WITH_JOE_ATT') IS NOT NULL
begin
	DROP TABLE #AMPS_WITH_JOE_ATT;
end

SELECT *,
	Right(a.[All Periods],8) As Week_Ending,
	Left(a.[All Periods], Len (a.[All Periods])-16) As Time
INTO #AMPS_WITH_JOE_ATT
FROM #AMPS_JOE_ATT b
INNER JOIN #AMPS_temp2 a ON (b.ALL_PRODUCTS = a.ALL_PRODUCTS_B )

BEGIN TRY
TRUNCATE TABLE KNA_COMRCL.dbo.AMPS_US
INSERT INTO KNA_COMRCL.dbo.AMPS_US
SELECT a.ALL_PRODUCTS,           
	   a.CATEGORY,         
	   a.Mask,                
	   a.[Nielsen Name],           
	   a.[Order],            
	   a.[Level],             
	   a.Agg,   
	   a.[Level Name],                
	   a.Brand,               
	   a.Corp, 
	   a.Segment,         
	   a.[Sub Segment],             
	   a.[BW Category],             
	   a.[BW BU],          
       a.[BW Number],               
       a.[BW Name],   
       a.[Profit Center],             
       a.COMBO,           
       a.[All Markets], 
       a.[All Products],                
       a.[All Periods],  
       a.Dol,
       a.[Dol % Chg YA],
       a.[Base $ % Chg YA],       
       a.[Dol CYA],
       a.[EQ % Chg YA],
       a.[Incr $],
       a.[Incr $ YA],              
       a.[Units % Chg YA],         
       a.[Dol Shr - Prompt],
       a.[Dol Shr CYA - Prompt],
       a.[Any Promo $ % Chg YA],          
       a.[No Promo $ % Chg YA],            
       a.[% $ No Promo],           
       a.[Avg EQ Price CYA],     
       a.[Avg EQ Price],              
       a.[Base Unit Price YA],   
       a.[Base Unit Price],         
       a.[Base Unit Price CYA],                
       a.[Avg Unit Price],           
       a.[Avg Unit Price CYA],  
       a.[Qual Unit Price],          
       a.[Qual Unit Price CYA], 
       a.[Any Disp # Disp],         
       a.[Any Disp # Disp CYA],                
       a.[Dol / $MM ACV / Item],
       a.[Dol / $MM ACV / Item CYA],
       a.[%ACV],           
       a.[%ACV CYA],  
       a.TDP,   
       a.[TDP % Chg YA],            
       a.[Avg # of Items],          
       a.[Avg # of Items CYA], 
       a.[Any Promo Units % Lift],         
       a.[Any Promo Units % Lift CYA],                
       a.[% Units Any Promo], 
       a.[% Units Any Promo CYA],        
       a.[Any Disp %ACV],         
       a.[Any Disp %ACV CYA],                
       a.[Qual CWW],  
       a.[Qual CWW CYA],         
       a.[Feat & Disp %ACV / Any Feat %ACV],                
       a.[Feat & Disp %ACV / Any Feat %ACV CYA],       
       a.[Incremental % Chg vs YA],      
       a.[Base U Price Gap],     
       a.[Base U Price Gap Chg vs YA], 
       a.[Item Share of Category],         
       a.[Item Share of Category CYA],                
       a.[Display Share],             
       a.[Display Share YA],      
       a.[Declining Display Share],         
       a.[Display/Dollar Index],               
       a.[Any Promo Unit Price % Disc],               
       a.[Any Promo Unit Price % Disc CYA],      
       a.[% Subsidized Units],  
       a.[Subsidized Base Unit Chg vs YA],
       a.[Display/Dollar Index CYA],
       a.[Display/Dollar Index YAG],      
       a.Week_Ending,               
       a.[Time],
       b.[MKT Mask],
       b.[Mkt Sort Order],
       b.[Mkt Grouping Level],
       b.[All Regions],
       b.[EXECUTIVE],
       b.[EAST],
       b.[WEST],
       b.[CHANNELS],
       b.[TOTALS], 
       b.[CUSTOMER], 
	   b.[CUSTOMER_SORT_ORDER],
	   a.[Avg # of Items Reach]
FROM #AMPS_WITH_JOE_ATT a
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.NIEL_AMPS_MKT_ATTRIB b ON  (a.[All Markets]= b.[All Markets])

END TRY

BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_NIELSEN_ICEBERGS_UPDT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Smith, Dylan>
-- Create date: <04/05/2017>
-- Description:	<Description,,>
--This stored procedure creates the AOD Nielsen Icebergs table that is used for sales reporting
--in Keystone.  It extracts four files, reformats them and then combines them into one final reporting table
--No documentation was recieved from the business.  Current business contact is Erin Chamberlain
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_NIELSEN_ICEBERGS_UPDT]

AS
BEGIN

IF OBJECT_ID ('tempDB..#ICEBERG_TEMP2') IS NOT NULL
begin
	DROP TABLE #ICEBERG_TEMP2;
end
SELECT *,
'''' AS [KEL_SUB-SEGMENT],
'''' AS KEL_SEGMENT
INTO #ICEBERG_TEMP2
FROM KNA_EXTERNAL.USER_SALES.[AOD_NIELSEN_ICEBERGS2]

--------------------------------------------------------------
---******************************************************
IF OBJECT_ID ('tempDB..#ICEBERG_TEMP3') IS NOT NULL
begin
	DROP TABLE #ICEBERG_TEMP3;
end
SELECT *,
'''' AS [KEL_SUB-SEGMENT],
'''' AS KEL_SEGMENT
INTO #ICEBERG_TEMP3
FROM KNA_EXTERNAL.USER_SALES.[AOD_NIELSEN_ICEBERGS3]

-----------------------------------------------------------
--*******************************************************
IF OBJECT_ID ('tempDB..#ICEBERG_TEMP1') IS NOT NULL
begin
	DROP TABLE #ICEBERG_TEMP1;
end
SELECT 
a.[Source File],
a.[Source Tab],
a.[Extract Date],
a.[All Markets],
a.[All Products],
a.[All Periods],
a.[$],
a.[$ % Chg YA],
a.[Base $ % Chg YA],
a.[Incr $ % Chg YA],
a.[$ Shr - Prompt],
a.[$ Shr CYA - Prompt],
a.[KEL_CATEGORY],
'''' AS KEL_SEGMENT,
a.[KEL_SUB-SEGMENT]
INTO #ICEBERG_TEMP1
FROM KNA_EXTERNAL.USER_SALES.[AOD_NIELSEN_ICEBERGS1] a

-------------------------------------------------------------
---**********************************************************
IF OBJECT_ID ('tempDB..#ICEBERG_TEMP4') IS NOT NULL
begin
	DROP TABLE #ICEBERG_TEMP4;
end
SELECT *,
'''' AS [KEL_SUB-SEGMENT]
INTO #ICEBERG_TEMP4
FROM KNA_EXTERNAL.USER_SALES.[AOD_NIELSEN_ICEBERGS4]

---*************************************************
--***********************************************
IF OBJECT_ID ('tempDB..#ICEBERG_TEMP5') IS NOT NULL
begin
	DROP TABLE #ICEBERG_TEMP5;
end
SELECT * 

INTO #ICEBERG_TEMP5

FROM #ICEBERG_TEMP1  
UNION ALL 

SELECT * 
FROM #ICEBERG_TEMP2

UNION ALL 

SELECT * 
FROM #ICEBERG_TEMP3

UNION ALL 

SELECT * 
FROM #ICEBERG_TEMP4

----------------------******
----------**********************************************************************

BEGIN TRY

TRUNCATE TABLE KNA_COMRCL.dbo.AOD_NIELSEN_ICEBERGS
INSERT INTO  KNA_COMRCL.dbo.AOD_NIELSEN_ICEBERGS
SELECT
a.[Source File],
a.[Source Tab],
a.[Extract Date],
a.[All Markets],
a.[All Products],
a.[All Periods],
a.[$],
a.[$ % Chg YA],
a.[Base $ % Chg YA],
a.[Incr $ % Chg YA],
a.[$ Shr - Prompt],
a.[$ Shr CYA - Prompt],
a.[KEL_CATEGORY],
a.KEL_SEGMENT,
a.[KEL_SUB-SEGMENT],
b.CATEGORY
FROM #ICEBERG_TEMP5 a
LEFT JOIN KNA_EXTERNAL.USER_SALES.AOD_SHARE_TO_MAPPING_ICEBERGS b
ON a.[Source Tab]=b.[Source Tab]

END TRY

BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PLN_TO_CATG]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_PLN_TO_CATG]
		PURPOSE:   Plan To Category Fact table creation (KNA_COMRCL.dbo.PLN_TO_CATG)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/18/2017   USCDXS92         Created.
		
		This USP creates the final output for a Plan to Item Category BEx query
        and is one the last steps in the RGM process chain.  Initial logic was created 
		by Joe Wright's team for the TPE project and the logic below was written to those specifications
		with minor fixes to meet the business' specifications

		******************************************************************************/

CREATE PROCEDURE [dbo].[USP_PROC_PLN_TO_CATG] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;

--Declare the current year and current week variables that allow us to determine the current time and separate
--actuals from forecasting data
--declare a current year variable to help sort records later
DECLARE @curr_year INT
SET @curr_year = YEAR(getdate())

--declare a current week variable to help sort records later.  The last portion of the join is to ensure Saturday runs are succesfull. Between statement
--is not inclusive
DECLARE @curr_week INT
SET @curr_week = YEAR(getdate())*100+ (SELECT FISC_WK FROM KG_VIEWS.dbo.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Datetime2 (3)) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_END_DT])

--declare a current period variable to help sort records later.  The last portion of the join is to ensure Saturday runs are succesfull. Between statement
--is not inclusive
DECLARE @curr_pd INT
SET @curr_pd =(SELECT FISC_PD
					FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_END_DT])

--Pivot the records into fields from the BPC data which will be aggregated in the next step.  This uses source data from the AZD_BPC5600 cube.
IF OBJECT_ID ('tempDB..#pln_to_cat1') IS NOT NULL
begin
	DROP TABLE #pln_to_cat1;
end
SELECT [CUSTOMER] as [Plan To]
      ,[/BIC/ZBPC_BUUN] as [Business Unit]
      ,[Alternate Category] = CASE
								WHEN [/BIC/C_AALT002] IS NOT NULL THEN [/BIC/C_AALT002]
								ELSE '#'
							   END
      ,[FISCPER] as [Fiscal Period]
      ,[FISCPER] - floor([FISCPER]/1000)*1000 as [Posting Period] 
      ,floor([FISCPER]/1000) as [Posting Year]
      ,[CURRENCY]
      ,[IBP GSV ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSV_IBP' and [/BIC/ZAPPTYP] = 'IBP' THEN AMOUNT
							ELSE 0.00
						  END
      ,[IBP GSV ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSVADJ_IBP' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[IBP KMF ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRD_IBP' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[IBP KMF ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRDADJ_IBP' and [/BIC/ZAPPTYP] = 'PNL' THEN AMOUNT
							ELSE 0.00
						  END
	  ,[LP TRD IBP] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRD_LPIBP' and [/BIC/ZAPPTYP] = 'IBP' THEN AMOUNT
							ELSE 0.00
						  END
	  ,[LP GSV IBP] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSV_LPIBP' and [/BIC/ZAPPTYP] = 'IBP' THEN AMOUNT
							ELSE 0.00
						  END
      ,[BUD GSV ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'FINAL_GSV_BUDJ' and [/BIC/ZAPPTYP] = 'AOP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[BUD GSV ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSVADJ_BUDJ' and [/BIC/ZAPPTYP] = 'PNL' THEN AMOUNT
							ELSE 0.00
						  END
      ,[BUD BASE KMF] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'FINAL_TRD_BUDJ' and [/BIC/ZAPPTYP] = 'AOP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[CRM LE GSV ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSVADJ_LE' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[BUD KMF ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRDADJ_BUDJ' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE GSV ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSV_SE' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE GSV ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSVADJ_SE' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE KMF ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRD_SE' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE KMF ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRDADJ_SE' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE2 GSV ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSV_SE_2' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE2 GSV ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSVADJ_SE_2' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE2 KMF ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRD_SE_2' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE2 KMF ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRDADJ_SE_2' and [/BIC/ZAPPTYP] = 'PNL' THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE3 GSV ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSV_SE_3' and [/BIC/ZAPPTYP] =  'IBP' THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE3 GSV ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'GSVADJ_SE_3' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE3 KMF ORIG] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRD_SE_3' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
      ,[SE3 KMF ADJ] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'TRDADJ_SE_3' and [/BIC/ZAPPTYP] = 'PNL'  THEN AMOUNT
							ELSE 0.00
						  END
  INTO #pln_to_cat1
  FROM [KNA_BW].[dbo].[AZD_BPC5600]
  WHERE [/BIC/ZAPPTYP] IN ('IBP','AOP','PNL') 
			and [/BIC/ZAOP_ACCT] IN ('TRDADJ_SE_3','TRD_SE_3','GSVADJ_SE_3','GSV_SE_3','TRDADJ_SE_2','GSV_SE','GSVADJ_LE',
						'GSVADJ_BUDJ','TRDADJ_IBP','TRD_IBP','GSV_IBP','TRD_SE_2','GSVADJ_SE_2','GSV_SE_2','TRDADJ_SE'
						,'TRD_SE','GSVADJ_SE','TRDADJ_BUDJ','FINAL_TRD_BUDJ','FINAL_GSV_BUDJ','GSVADJ_IBP','TRD_LPIBP','GSV_LPIBP')

  --Roll up the data from the previous step to ensure that we have one record for each of unique set of conditions(Plan To, BU, Alt Cat, ...etc)
  IF OBJECT_ID ('tempDB..#pln_to_cat2') IS NOT NULL
  begin
	DROP TABLE #pln_to_cat2;
  end
  SELECT [Plan To]
      ,[Business Unit]
      ,[Alternate Category] 
      ,[Fiscal Period]
      ,[Posting Period]
      ,[Posting Year]
      ,[CURRENCY]
      ,sum([IBP GSV ORIG]) as [IBP GSV ORIG]
      ,sum([IBP GSV ADJ]) as [IBP GSV ADJ]
      ,sum([IBP KMF ORIG]) as [IBP KMF ORIG]
      ,sum([IBP KMF ADJ]) as [IBP KMF ADJ]
	  ,sum([LP TRD IBP]) as [LP TRD IBP]
	  ,sum([LP GSV IBP]) as [LP GSV IBP]
      ,sum([BUD GSV ORIG])as [BUD GSV ORIG]
      ,sum([BUD GSV ADJ]) as [BUD GSV ADJ]
      ,sum([BUD BASE KMF]) as [BUD BASE KMF]
      ,sum([CRM LE GSV ADJ]) as [CRM LE GSV ADJ]
      ,sum([BUD KMF ADJ]) as [BUD KMF ADJ]
      ,sum([SE GSV ORIG]) as [SE GSV ORIG]
      ,sum([SE GSV ADJ]) as [SE GSV ADJ]
      ,sum([SE KMF ORIG]) as [SE KMF ORIG]
      ,sum([SE KMF ADJ]) as [SE KMF ADJ]
      ,sum([SE2 GSV ORIG]) as [SE2 GSV ORIG]
      ,sum([SE2 GSV ADJ]) as [SE2 GSV ADJ]
      ,sum([SE2 KMF ORIG]) as [SE2 KMF ORIG]
      ,sum([SE2 KMF ADJ]) as [SE2 KMF ADJ]
      ,sum([SE3 GSV ORIG]) as [SE3 GSV ORIG]
      ,sum([SE3 GSV ADJ]) as [SE3 GSV ADJ]
      ,sum([SE3 KMF ORIG]) as [SE3 KMF ORIG]
      ,sum([SE3 KMF ADJ]) as [SE3 KMF ADJ]
	  INTO #pln_to_cat2
	  FROM #pln_to_cat1
	  GROUP BY [Plan To]
      ,[Business Unit]
      ,[Alternate Category]
      ,[Fiscal Period]
      ,[Posting Period]
      ,[Posting Year]
      ,[CURRENCY]

	  --create a temp table for material classification
	IF OBJECT_ID ('tempDB..#matrl_clsfctn') IS NOT NULL
	begin
		DROP TABLE #matrl_clsfctn;
	end
	  SELECT MATRL_NBR,
			CHRSTC_VAL
	  INTO #matrl_clsfctn
	  FROM [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] 
	  WHERE CHRSTC_NM = 'ALT_CATEGORY' 
--Get the ATPM PLAN TO SHIP DOLLARS for each business unit and category for future periods.  This is forecast data from the TPM60 Cube 
--Wrap up this data by Business Unit and Alternate Category by Customer.
  IF OBJECT_ID ('tempDB..#tpm82') IS NOT NULL
  begin
	DROP TABLE #tpm82;
  end
SELECT CUSTOMER
	   ,[Business Unit]
	   ,[Alternative Category]
	   ,[PERIOD]
	   ,[YEAR]
	   ,sum([ATPM - Plan Ship Dollars]) as [ATPM - Plan Ship Dollars]
	   ,[ATPM - Currency]	
INTO #tpm82
FROM (SELECT   tpm.[CUST]  as CUSTOMER
		,bw.[/BIC/ZBPC_BUUN] as [Business Unit]
		,[CHRSTC_VAL] as [Alternative Category]
		,[CAL_WK] as [Calendar Week] 
		,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
		,[MIXD_PLT_FLG] as [Mixed Pallet Flag]
		,FISC_PD as [PERIOD]
		,FISC_YR as [YEAR]
		,[PLN_SHIP_USD]  as [ATPM - Plan Ship Dollars]
		,[CURR]   as [ATPM - Currency]		     
		FROM[KNA_COMRCL].[dbo].[ZM_TPM60_CKF] tpm 
		LEFT OUTER  JOIN [KNA_BW].[dbo].[PZCUST_MAT] bw ON (tpm.[MIXD_PLT_MATRL]  = bw.MATERIAL and [CUST] = bw.[/BIC/ZCUST_MAT] )
		INNER JOIN [KG_VIEWS].[dbo].[UVW_FISC_CAL] cal ON (tpm.[CAL_WK]  =  cal.FISC_YR*100 + cal.FISC_WK ) 
		LEFT OUTER JOIN #matrl_clsfctn mat ON (tpm.[MIXD_PLT_MATRL] =  mat.MATRL_NBR )
		WHERE @curr_week<=[CAL_WK] 
		)tpm82
		GROUP BY CUSTOMER
	   ,[Business Unit]
	   ,[Alternative Category]
	   ,[PERIOD]
	   ,[YEAR]
	   ,[ATPM - Currency]

--Get the ATPM PLAN TO SHIP DOLLARS for each business unit and category for past periods.  This uses actuals from the PLN TO ITM ACT table
 IF OBJECT_ID ('tempDB..#con52') IS NOT NULL
  begin
	DROP TABLE #con52;
  end
SELECT CUSTOMER
	   ,[Business Unit]
	   ,[Alternative Category]
	   ,[PERIOD]
	   ,[YEAR]
	   ,sum([TPM: Plan Ship Dollars]) as [TPM: Plan Ship Dollars]
	   ,[TPM: Currency]	
INTO #con52
FROM (SELECT   con.[CUST] as CUSTOMER
		,bw.[/BIC/ZBPC_BUUN] as [Business Unit]
		,[CHRSTC_VAL] as [Alternative Category]
		,[CAL_WK] as [Calendar Week]
		,[MIXD_PLT_MATRL] as [Mixed Pallet Material]
		,FISC_PD as [PERIOD]
		,FISC_YR as [YEAR]
		,con.[ACTL_USD] as [TPM: Plan Ship Dollars]
		,con.[CURR]  as [TPM: Currency]	     
		FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] con
		LEFT OUTER  JOIN [KNA_BW].[dbo].[PZCUST_MAT] bw ON (con.[MIXD_PLT_MATRL]  = bw.MATERIAL and [CUST] = bw.[/BIC/ZCUST_MAT] )
		LEFT OUTER JOIN #matrl_clsfctn mat ON (con.[MIXD_PLT_MATRL] =  mat.MATRL_NBR  )
		LEFT OUTER JOIN [KG_VIEWS].[dbo].[UVW_FISC_CAL] cal ON (con.[CAL_WK]  = cal.FISC_YR*100 + cal.FISC_WK ) 
		WHERE [CAL_WK]<@curr_week ) con52		
		GROUP BY CUSTOMER
	   ,[Business Unit]
	   ,[Alternative Category]
	   ,[PERIOD]
	   ,[YEAR]
	   ,[TPM: Currency]	

--to build the final table we need to have all the unique records from both the actuals table as well as the forecasting table.
 IF OBJECT_ID ('tempDB..#pln_to_cat_master') IS NOT NULL
  begin
	DROP TABLE #plben_to_cat_master;
  end
SELECT DISTINCT [Plan To]
      ,[Business Unit]
      ,[Alternate Category]
      ,[Posting Period]
      ,[Posting Year]
      ,[CURRENCY]
INTO #pln_to_cat_master
FROM(
SELECT [CUSTOMER] as [Plan To]
      ,[Business Unit]
      ,[Alternative Category] as [Alternate Category]
      ,[PERIOD] as [Posting Period]
      ,[YEAR] as [Posting Year]
      ,[TPM: Currency] as [CURRENCY]
	  FROM #con52
	  WHERE [Business Unit] IS NOT NULL and [Alternative Category] IS NOT NULL and [YEAR] = @curr_year

UNION ALL

SELECT [CUSTOMER] as [Plan To]
      ,[Business Unit]
      ,[Alternative Category] as [Alternate Category]
      ,[PERIOD] as [Posting Period]
      ,[YEAR] as [Posting Year]
      ,[ATPM - Currency] as [CURRENCY]
	  FROM #tpm82
	  WHERE [Business Unit] IS NOT NULL and [Alternative Category] IS NOT NULL and [YEAR] = @curr_year
UNION ALL 

SELECT [Plan To]
      ,[Business Unit]
      ,[Alternate Category]
      ,[Posting Period]
      ,[Posting Year]
      ,[CURRENCY]
	  FROM #pln_to_cat2) tmp

--Create a unique index on this lookup table to improve performance
create unique clustered index ix_pln_to_cat_master on #pln_to_cat_master ([Plan To],[Business Unit],[Alternate Category],[Posting Period],[Posting Year],[CURRENCY])

		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

--Once we have all the records we add the BPC values to the final table as well as coalesce the CRM latest estimates field that takes forecasts if the table is in
--the future, acutals if the data is in the past, and a combination if it is in the current period.
TRUNCATE TABLE [KNA_COMRCL].[dbo].[PLN_TO_CATG]	   
INSERT INTO [KNA_COMRCL].[dbo].[PLN_TO_CATG]
SELECT cat.[Plan To]
      ,cat.[Business Unit]
      ,cat.[Alternate Category]
      ,cat.[Posting Period]
      ,cat.[Posting Year]
      ,cat.[CURRENCY]
      ,Coalesce([ATPM - Plan Ship Dollars] + [TPM: Plan Ship Dollars], [ATPM - Plan Ship Dollars],[TPM: Plan Ship Dollars],0) as [TPM Latest Estimate (GSV)]
      ,ISNULL([IBP GSV ORIG],0)
      ,ISNULL([IBP GSV ADJ],0)
      ,ISNULL([IBP KMF ORIG],0)
      ,ISNULL([IBP KMF ADJ],0)
	  ,ISNULL([LP TRD IBP] ,0)
	  ,ISNULL([LP GSV IBP] ,0)
      ,ISNULL([BUD GSV ORIG],0)
      ,ISNULL([BUD GSV ADJ],0)
      ,ISNULL([BUD BASE KMF],0)
      ,ISNULL([BUD KMF ADJ],0)
      ,ISNULL([SE GSV ORIG],0)
      ,ISNULL([SE GSV ADJ],0)
      ,ISNULL([SE KMF ORIG],0)
      ,ISNULL([SE KMF ADJ],0)
      ,ISNULL([SE2 GSV ORIG],0)
      ,ISNULL([SE2 GSV ADJ],0)
      ,ISNULL([SE2 KMF ORIG],0)
      ,ISNULL([SE2 KMF ADJ],0)
      ,ISNULL([SE3 GSV ORIG],0)
      ,ISNULL([SE3 GSV ADJ],0)
      ,ISNULL([SE3 KMF ORIG],0)
      ,ISNULL([SE3 KMF ADJ],0)
  FROM #pln_to_cat_master cat
  LEFT OUTER JOIN #pln_to_cat2 cat2 ON (cat2.[Plan To] = cat.[Plan To] and cat2.[Business Unit] = cat.[Business Unit]
								and cat2.CURRENCY = cat.CURRENCY and cat2.[Alternate Category] = cat.[Alternate Category]
								and cat2.[Posting Period] = cat.[Posting Period] and cat2.[Posting Year] = cat.[Posting Year])
  LEFT OUTER JOIN #tpm82 tpm ON (tpm.CUSTOMER = cat.[Plan To] and tpm.[Business Unit] = cat.[Business Unit]
								and tpm.[ATPM - Currency] = cat.CURRENCY and tpm.[Alternative Category] = cat.[Alternate Category]
								and tpm.PERIOD = cat.[Posting Period] and tpm.[YEAR] = cat.[Posting Year])
  LEFT OUTER JOIN #con52 con ON (con.CUSTOMER = cat.[Plan To] and con.[Business Unit] = cat.[Business Unit]
								and con.[TPM: Currency] = cat.CURRENCY and con.[Alternative Category] = cat.[Alternate Category]
								and con.PERIOD = cat.[Posting Period] and con.[YEAR] = cat.[Posting Year]) 
WHERE [ATPM - Plan Ship Dollars]<>0 or [TPM: Plan Ship Dollars]<>0 or [IBP GSV ORIG]<>0 or [IBP GSV ADJ]<>0 or [IBP KMF ORIG]<>0 or [IBP KMF ADJ]<>0 or [BUD GSV ORIG]<>0 
		or [BUD GSV ADJ]<>0 or [BUD BASE KMF]<>0 or [BUD KMF ADJ]<>0 or [SE GSV ORIG]<>0 or [SE GSV ADJ]<>0 or [SE KMF ORIG]<>0 or [SE KMF ADJ]<>0 
		or [SE2 GSV ORIG]<>0 or [SE2 GSV ADJ]<>0 or [SE2 KMF ORIG]<>0 or [SE2 KMF ADJ]<>0 or [SE3 GSV ORIG]<>0 or [SE3 GSV ADJ]<>0 or [SE3 KMF ORIG]<>0 or [SE3 KMF ADJ] <>0
	
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PLN_TO_ITM]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_PLN_TO_ITM]
		PURPOSE:   To create a reporting table that merges plan to with forecasting and actuals data.
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/05/2017   USCDXS92         Created.
		2.0		   10/15/2018	USCMXJ11		TASK0564827 - ADD Scanner apps and overlay amount columns
		3.0		   11/13/2018	USCMXJ11		Include Actuals only till closed period
		
		This stored procedure creates the USP_PLN_TO_ITM_FACT that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset. Initial logic was created 
		by Joe Wright's team for the TPE project and the logic below was written to those specifications
		with minor fixes to meet the business' specifications

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_PLN_TO_ITM] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--Timestamps are included for debugging and to test the execution times of each procedure
--PRINT N'00: #Start: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--in order to poperly filter records out and apply the current week we first set variables to reflect what is in UVW_FISC_CAL
DECLARE @curr_week INT
DECLARE @curr_year INT
SET @curr_year =  YEAR(getdate()) 
SET @curr_week = YEAR(getdate())*100 + (SELECT FISC_WK FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT])

DECLARE @CLS_PD VARCHAR(10), @CLS_YR VARCHAR(10),  @CLS_WK VARCHAR(10);
SELECT   @CLS_PD =  FISC_PD-1 ,  @CLS_YR =  FISC_YR FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT]
IF(@CLS_PD < 1) 
BEGIN
	 SET @CLS_PD = 12 
	 SET  @CLS_YR = @CLS_YR - 1
END

SELECT @CLS_WK = FISC_YR*100 + MAX(FISC_WK) FROM KG_VIEWS.KG.UVW_FISC_CAL WHERE FISC_YR = @CLS_YR AND FISC_PD = @CLS_PD GROUP BY FISC_YR



DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')
--get full load vs delta load flag

--FULL LOAD, run the full build if there was a BW Full load, else run a delta load for performance tuning.
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
if (@full_load = 'Y')
begin


---PRINT N'01: #Start Loading the multiprovider master: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Get a distinct list of all records to be used.  This includes getting the list of all unique records that make up the 6 indicator fields from
--the Plan To Item Actual table (Actuals) as well as the TPM60 table (Forecasting)
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_fct_mstr') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_fct_mstr;
end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG]
INTO #zm_pln_to_itm_pln_fct_mstr
FROM ( SELECT [CUST] as [CUSTOMER]
      ,[MATRL] as[MATERIAL]
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,[CAL_WK] as[Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,[CURR] as CURRENCY
	  ,SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT]
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>''
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR]<>'' 
UNION ALL

	SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,[CURR] as CURRENCY 
	  ,SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF]
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>'' 
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR] <>'' ) tmp 


--PRINT N'02: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create unique clustered index ix_pln_to_itm_final on #zm_pln_to_itm_pln_fct_mstr ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY, SALE_FLAG)

--get all the forecasting values for future weeks from the TPM60 calculated table.  Use the current week variable.  This table will be applied to the final join
--conditions in the Fact table
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_gtwk') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_gtwk;
end
SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week] 
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
      ,[CURR] as[CURRENCY] 
      ,[PLN_SHIP_USD] as [Plan Ship $]
      ,[PLN_SHIP_LBS] as [Plan Ship LBS]
      ,[PLN_SHIP_EA] as [Plan Ship EA]
      ,[PLN_TOTL_OFF_INVC_USD] as [Plan Total Off Invoice Dollars]
      ,[TOTL_PLN_COST_OF_PROD_USD] as [Total Planned COP $]
      ,[TOTL_PLN_SHIPMNT_CS] as [Total Planned Shipment CS]
      ,[TOTL_PLN_SHIPMNT_KGS] as [Total Planned Shipment Kilos]
      ,[SALE_FLG] as SALE_FLAG
	  INTO #zm_pln_to_itm_pln_gtwk
	  FROM KNA_COMRCL.dbo.ZM_TPM60_CKF
	  WHERE @CLS_WK < [CAL_WK] --CHANGED TO CLOSED PERIOD WEEK

--PRINT N'03: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_pln_to_itm_final on #zm_pln_to_itm_pln_gtwk ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY)

--Use the multiprovider to create calculated fields that will be used in the final table.
--Use Plan To Item Actual to get all previous values as well as the table that was created previously
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_fct_1') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_fct_1;
end
SELECT  mstr.[CUSTOMER]
      ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
      ,mstr.[Mixed Pallet Flag]
	  ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
      ,ISNULL([PLN_BASE_LBS],0) as [Plan Base LBS]
      ,ISNULL([PLN_INCR_LBS],0) as [Plan Incr LBS]
      ,ISNULL([PLN_BASE_UNITS],0) as [Plan Base Units]
      ,ISNULL([PLN_INCR_UNITS],0) as [Plan Incr Units]
      ,ISNULL([PLN_BASE_RTL_USD],0) as [Plan Base Ret $'s]
      ,ISNULL([PLN_INCR_RTL_USD] ,0) as [Plan Incr Ret $'s]
      ,ISNULL([PLN_BASE_USD] ,0) as [Plan Base $]
      ,ISNULL([PLN_INCR_SHIP_USD],0) as [Plan Incr Ship $]
      ,ISNULL(tpm.[PLN_SHIP_USD],0) as [Plan Ship $]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_CS],0) as [Plan Ship CS]
      ,ISNULL(tpm.[PLN_SHIP_LBS],0) as [Plan Ship LBS]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_KGS],0) as [Plan Ship KG]
      ,ISNULL(tpm.[PLN_SHIP_EA],0) as [Plan Ship EA]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_USD],0) else 0 end as [Actual Ship $]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_CS],0) else 0 end as [Actual Ship CS]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_LBS],0) else 0 end  as [Actual Ship LBS]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_EA],0)  else 0 end as [Actual Ship Units]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_KGS],0) else 0 end  as [Actual Ship KG]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as[Actual COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_USD],0) else 0 end as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,ISNULL(gtw.[Plan Ship $],0) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_LBS],0) else 0 end as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,ISNULL(gtw.[Plan Ship LBS],0) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_EA],0) else 0 end as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,ISNULL(gtw.[Plan Ship EA],0) as [>= Curr Week: LE Ship Units - Plan Ship EA]
      ,ISNULL(tpm.[TOTL_PLN_COST_OF_PROD_USD] ,0) as [Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as  [< Curr Week: LE COP $ - Actual COP $]
      ,ISNULL(gtw.[Total Planned COP $],0) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_CS],0) else 0 end as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,ISNULL(gtw.[Total Planned Shipment CS],0) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_KGS],0) else 0 end as [< Curr Week: LE Kilos - Actual Kilograms (KG)]
      ,ISNULL(gtw.[Total Planned Shipment Kilos],0) as [>= Curr Week: LE Kilos - Total Planned Shipment Kilos]
      ,ISNULL([PLN_BASE_CS],0) as [Plan Base Cases]
      ,ISNULL([PLN_INCR_CS],0) as [Plan Incr Cases]
      ,ISNULL([PLN_INCR_SHIP_CS],0) as [Plan Incr Ship Cases]
      ,ISNULL([PLN_INCR_SHIP_UNITS],0) as [Plan Incr Ship Units]
      ,ISNULL([PLN_INCR_SHIP_LBS],0) as [Plan Incr Ship LBS]
      ,ISNULL([PLN_INCR_SHIP_KG],0) as [Plan Incr Ship Kilos]
      ,ISNULL([SUGSTD_BASE_VOL_SAS],0) as [Suggested Base Volume (SAS)]
      ,ISNULL([SUGSTD_SHLF_PRC_SAS],0) as [Suggested Shelf Price (SAS)]
      ,ISNULL([LATST_ESTMT_MISS_OI],0) as [Lastest Estimate Missed OI]
      ,ISNULL([LATST_ESTMT_BILLBACK_USD],0) as [Latest Estimate Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_EDLP_BILLBACK_USD],0) as [Latest Estimate EDLP Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCANAPPS_BILLBACK_USD],0) as [Latest Estimate Scan Apps Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCAN_USD],0) as [Latest Estimate Scan Dollars]
      ,ISNULL([LE_WW_USD],0) as [LE WW$]
      ,ISNULL([LATST_ESTMT_TOTL_FIX_KMF],0) as [Latest Estimate Total Fixed KMF]
      ,case when @curr_week <=tpm.[CAL_WK] then  ISNULL(gtw.[Plan Total Off Invoice Dollars],0) else 0 end as [Plan Total Off Invoice Dollars]
      ,ISNULL(pln.[SPCL_PROMTN_ALLWNC]*(-1),0) as [Actual OI Spend (Not restricted)]
      ,ISNULL([PLN_TOTL_FIX_KMF_SPND],0) as [Plan Total Fixed KMF Spend]
      ,ISNULL([PLN_VAR_KMF_SPND],0) as [Plan Variable KMF Spend]
	  ,ISNULL([SCAN_APPS_OL_RT_AMT],0) + ISNULL([OL_AMT],0) as [Overlay Amount]  ----TASK0564827 - ADD Scanner apps and overlay amount columns
	INTO #zm_pln_to_itm_pln_fct_1
	FROM  #zm_pln_to_itm_pln_fct_mstr mstr 
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] tpm ON (tpm.[CUST]  = mstr.CUSTOMER and tpm.[MATRL] = mstr.MATERIAL and tpm.[MIXD_PLT_MATRL] = mstr.[Mixed Pallet Material] 
												and tpm.[CAL_WK]  = mstr.[Calendar Week] and tpm.[MIXD_PLT_FLG]  = mstr.[Mixed Pallet Flag] and  tpm.[CURR] = mstr.CURRENCY and 
												tpm.[SALE_FLG]  = mstr.SALE_FLAG )
	LEFT OUTER JOIN #zm_pln_to_itm_pln_gtwk gtw ON (gtw.CUSTOMER = mstr.CUSTOMER and gtw.MATERIAL = mstr.MATERIAL and gtw.[Mixed Pallet Material] = mstr.[Mixed Pallet Material] 
												and gtw.[Calendar Week] = mstr.[Calendar Week] and gtw.[Mixed Pallet Flag] = mstr.[Mixed Pallet Flag] and  gtw.CURRENCY = mstr.CURRENCY and 
												gtw.[SALE_FLAG]= mstr.SALE_FLAG )
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] pln ON (mstr.CUSTOMER = pln.[CUST] and mstr.MATERIAL = pln.[MATRL] and mstr.[Mixed Pallet Material] = pln.[MIXD_PLT_MATRL] 
												and mstr.[Calendar Week] = pln.[CAL_WK] and mstr.[Mixed Pallet Flag] = pln.[MIXD_PLT_FLG] and  mstr.CURRENCY = pln.[CURR] and mstr.SALE_FLAG = pln.SALE_FLG
												and  pln.[CAL_WK] < @curr_week-- CHANGED TO CLOSED PERIOD WEEK
												)
	
--PRINT N'05: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;
--aggregate some fields that will be used in the final table as well as move the final table into the correct format.  Also be sure to filter out any records
--That sum to 0. 
IF EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM')
begin
	drop index [IX_PLN_TO_ITM] on KNA_COMRCL.[dbo].[PLN_TO_ITM]
end 
TRUNCATE TABLE [KNA_COMRCL].[dbo].[PLN_TO_ITM]
INSERT INTO [KNA_COMRCL].[dbo].[PLN_TO_ITM]
SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
      ,sum([Plan Base LBS])
      ,sum([Plan Incr LBS])
      ,sum([Plan Base Units])
      ,sum([Plan Incr Units])
      ,sum([Plan Base Ret $'s])
      ,sum([Plan Incr Ret $'s])
      ,sum([Plan Base $])
      ,sum([Plan Incr Ship $])
      ,sum([Plan Ship CS])
      ,sum([Plan Ship $])
      ,sum([Plan Ship LBS])
      ,sum([Plan Ship KG])
      ,sum([Plan Ship EA])
      ,sum([Actual Ship $])
      ,sum([Actual Ship CS])
      ,sum([Actual Ship LBS])
      ,sum([Actual Ship Units])
      ,sum([Actual Ship KG])
	  ,sum([LE Ship $])
	  ,sum([LE Ship LBS])
	  ,sum([LE Ship Units])
	  ,sum([Total Planned KMF $])
	  ,sum([LE KMF $])
	  ,sum([Total Planned COP $])
	  ,sum([Actual COP $])
	  ,sum([LE COP $])
	  ,sum([LE Cases])
	  ,sum([LE Kilos])
      ,sum([Plan Base Cases])
      ,sum([Plan Incr Cases])
      ,sum([Plan Incr Ship Cases])
      ,sum([Plan Incr Ship Units])
      ,sum([Plan Incr Ship LBS])
      ,sum([Plan Incr Ship Kilos])
      ,sum([Suggested Base Volume (SAS)])
      ,sum([Suggested Shelf Price (SAS)])
FROM (SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
      ,[Plan Base LBS]
      ,[Plan Incr LBS]
      ,[Plan Base Units]
      ,[Plan Incr Units]
      ,[Plan Base Ret $'s]
      ,[Plan Incr Ret $'s]
      ,[Plan Base $]
      ,[Plan Incr Ship $]
      ,[Plan Ship CS]
      ,[Plan Ship $]
      ,[Plan Ship LBS]
      ,[Plan Ship KG]
      ,[Plan Ship EA]
      ,[Actual Ship $]
      ,[Actual Ship CS]
      ,[Actual Ship LBS]
      ,[Actual Ship Units]
      ,[Actual Ship KG]
      ,[< Curr Week: LE Ship $ - Actual Dollars ($)]+[>= Curr Week: LE Ship $ - Plan Ship $] as [LE Ship $]
      ,[< Curr Week: LE Ship LBS - Actual Pounds (LB)]+[>= Curr Week: LE Ship LBS - Plan Ship LBS] as [LE Ship LBS]
      ,[< Curr Week: LE Ship Units - Actual Eaches (EA)]+[>= Curr Week: LE Ship Units - Plan Ship EA] as [LE Ship Units]
      ,[Plan Total Fixed KMF Spend]+[Plan Variable KMF Spend] as [Total Planned KMF $]
      ,[LE KMF $] = CASE
						WHEN @curr_week > [Calendar Week] and @curr_year >= floor([Calendar Week]/100)
						THEN [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] - [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
															[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] +[Overlay Amount]
						ELSE [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] + [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
							[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] +[Overlay Amount]---TASK0564827 - ADD Scanner apps and overlay amount columns
					END
      ,[Total Planned COP $]
      ,[Actual COP $]
      ,[< Curr Week: LE COP $ - Actual COP $]+[>= Curr Week: LE COP $ - Total Planned COP $] as [LE COP $]
      ,[< Curr Week: LE Cases - Actual Cases (CS)]+[>= Curr Week: LE Cases - Total Planned Shipment CS] as [LE Cases]
      ,[< Curr Week: LE Kilos - Actual Kilograms (KG)]+[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] as [LE Kilos]
      ,[Plan Base Cases]
      ,[Plan Incr Cases]
      ,[Plan Incr Ship Cases]
      ,[Plan Incr Ship Units]
      ,[Plan Incr Ship LBS]
      ,[Plan Incr Ship Kilos]
      ,[Suggested Base Volume (SAS)]
      ,[Suggested Shelf Price (SAS)]
	  FROM #zm_pln_to_itm_pln_fct_1 )tmp
	  WHERE tmp.[Plan Base LBS]<> 0.000 or tmp.[Plan Incr LBS]<> 0.000 or tmp.[Plan Base Units]<> 0.000 or tmp.[Plan Incr Units]<> 0.000 or tmp.[Plan Base Ret $'s]<> 0.000 or tmp.[Plan Incr Ret $'s]<> 0.000 or tmp.[Plan Base $]<> 0.000 or tmp.[Plan Incr Ship $] <> 0.000 or tmp.[Plan Ship CS] <> 0.000 or tmp.[Plan Ship $]<> 0.000 or tmp.[Plan Ship LBS]<> 0.000 or tmp.[Plan Ship KG]
      <> 0.000 or tmp.[Plan Ship EA]<> 0.000 or tmp.[Actual Ship $]<> 0.000 or tmp.[Actual Ship CS]<> 0.000 or tmp.[Actual Ship LBS]<> 0.000 or tmp.[Actual Ship Units]<> 0.000 or tmp.[Actual Ship KG]<> 0.000 or tmp.[LE Ship $]<> 0.000 or tmp.[LE Ship LBS]<> 0.000 or tmp.[LE Ship Units]<> 0.000 or (tmp.[Total Planned KMF $]
      + tmp.[LE KMF $])<> 0.000 or tmp.[Total Planned COP $]<> 0.000 or tmp.[Actual COP $]<> 0.000 or tmp.[LE COP $]<> 0.000 or tmp.[LE Cases]<> 0.000 or tmp.[LE Kilos]<> 0.000 or tmp.[Plan Base Cases]<> 0.000 or tmp.[Plan Incr Cases]<> 0.000 or tmp.[Plan Incr Ship Cases]<> 0.000 or tmp.[Plan Incr Ship Units]
      <> 0.000 or tmp.[Plan Incr Ship LBS]<> 0.000 or tmp.[Plan Incr Ship Kilos]<> 0.000 or tmp.[Suggested Base Volume (SAS)]<> 0.000 or tmp.[Suggested Shelf Price (SAS)] <> 0.000 
	  GROUP BY [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
	--PRINT N'06 Finish loading agg table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

	insert into [dbo].[PLN_TO_ITM]  select * from [dbo].[PLN_TO_ITM_HIST]  where  CAL_WK <= (year(getdate())-1)*100 


	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

	
	IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM')
	begin
		CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM] ON [dbo].[PLN_TO_ITM] ([CUST],[MATRL],[MIXD_PLT_MATRL],[MIXD_PLT_FLG],[CAL_WK],[CURR])
	end
	--PRINT N'07 full load finished: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	end
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	--DELTA LOAD:  Use if the BW cubes were all deltas
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	else
	begin

--PRINT N'01: Start DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_mstr') IS NOT NULL
	begin
		DROP TABLE #zm_pln_to_itm_delta_mstr;
	end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG]
INTO #zm_pln_to_itm_delta_mstr
FROM ( SELECT dbo.[CUST] as [CUSTOMER]
      ,dbo.[MATRL] as[MATERIAL]
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,dbo.[CAL_WK] as[Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,dbo.[CURR] as CURRENCY
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  INNER JOIN [KNA_COMRCL].[STG].[ZM_TPM60] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>''
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' and dbo.[CURR]<>''
UNION ALL

	SELECT dbo.[CUST] as [CUSTOMER] 
      ,dbo.[MATRL] as [MATERIAL] 
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,dbo.[CAL_WK] as [Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,dbo.[CURR] as CURRENCY 
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] dbo
	  INNER JOIN [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>'' 
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' and dbo.[CURR] <>'' 
UNION ALL

SELECT dbo.[CUST] as [CUSTOMER]
      ,dbo.[MATRL] as[MATERIAL]
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,dbo.[CAL_WK] as[Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,dbo.[CURR] as CURRENCY
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  INNER JOIN [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>''
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' and dbo.[CURR]<>''
UNION ALL

	SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,[CURR] as CURRENCY 
	  ,SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[STG].[ZM_TPM60_CKF]
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>'' 
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR] <>'' ) tmp 

--On Monday we need to change the previous weeks data to be actuals and not the forecasting
IF (DATEPART(dw, GETDATE()) = 2)
begin
	IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_mstr_Monday') IS NOT NULL
	begin
		DROP TABLE #zm_pln_to_itm_delta_mstr_Monday;
	end
	SELECT DISTINCT [CUST]
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
	  ,[CURR] 
	  ,SALE_FLG 
	  INTO #zm_pln_to_itm_delta_mstr_Monday
	  FROM (SELECT dbo.[CUST]
      ,dbo.[MATRL] 
      ,dbo.[MIXD_PLT_MATRL] 
      ,dbo.[CAL_WK] 
      ,dbo.[MIXD_PLT_FLG] 
	  ,dbo.[CURR] 
	  ,dbo.SALE_FLG 
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  WHERE CAL_WK = @curr_week - 1

	UNION ALL 

	SELECT dbo.[CUST]  
      ,dbo.[MATRL] 
      ,dbo.[MIXD_PLT_MATRL] 
      ,dbo.[CAL_WK] 
      ,dbo.[MIXD_PLT_FLG] 
	  ,dbo.[CURR] 
	  ,dbo.SALE_FLG 
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] dbo
	  WHERE CAL_WK = @curr_week - 1 ) tmp

	  --Delete any records that would cause the unique index to fail
	  DELETE FROM #zm_pln_to_itm_delta_mstr_Monday 
	  WHERE EXISTS ( SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG] 
	  FROM #zm_pln_to_itm_delta_mstr mstr 
	  WHERE [CUSTOMER] = [CUST] and [MATERIAL] = [MATRL] and [Mixed Pallet Material] = [MIXD_PLT_MATRL] and [CAL_WK] = [Calendar Week]
	  and [Mixed Pallet Flag] = [MIXD_PLT_FLG] and [CURR] =[CURRENCY] and mstr.SALE_FLAG = #zm_pln_to_itm_delta_mstr_Monday.SALE_FLG )


	  --ensure that you delete the previous weeks records
	  DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM]
	  WHERE EXISTS ( SELECT [CUST] ,[MATRL],[MIXD_PLT_MATRL],[CAL_WK],[MIXD_PLT_FLG] ,CURR FROM #zm_pln_to_itm_delta_mstr_Monday stg
				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].CUST and stg.[MATRL]=[KNA_COMRCL].[dbo].[PLN_TO_ITM].[MATRL] and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[MIXD_PLT_MATRL] 
				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[CAL_WK] and stg.[MIXD_PLT_FLG]=[KNA_COMRCL].[dbo].[PLN_TO_ITM].[MIXD_PLT_FLG]
				 and stg.CURR = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[CURR])

	  --insert the changed records
	  INSERT INTO #zm_pln_to_itm_delta_mstr
	  SELECT * 
	  FROM #zm_pln_to_itm_delta_mstr_Monday
end
--PRINT N'02: Create Master Delta index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create unique clustered index ix_pln_to_itm_final on #zm_pln_to_itm_delta_mstr ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY, SALE_FLAG)

--PRINT N'03: #index created, start loaded gtw: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--get all the forecasting values for future weeks from the TPM60 calculated table.  Use the current week variable.  This table will be applied to the final join
--conditions in the Fact table
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_gtwk') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_delta_gtwk;
end
SELECT DISTINCT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week] 
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
      ,[CURR] as[CURRENCY] 
      ,[PLN_SHIP_USD] as [Plan Ship $]
      ,[PLN_SHIP_LBS] as [Plan Ship LBS]
      ,[PLN_SHIP_EA] as [Plan Ship EA]
      ,[PLN_TOTL_OFF_INVC_USD] as [Plan Total Off Invoice Dollars]
      ,[TOTL_PLN_COST_OF_PROD_USD] as [Total Planned COP $]
      ,[TOTL_PLN_SHIPMNT_CS] as [Total Planned Shipment CS]
      ,[TOTL_PLN_SHIPMNT_KGS] as [Total Planned Shipment Kilos]
      ,[SALE_FLAG] = CASE
						WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
						WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
						ELSE 'D'
					  END
	  INTO #zm_pln_to_itm_delta_gtwk
	  FROM KNA_COMRCL.dbo.ZM_TPM60_CKF dbo
	  INNER JOIN #zm_pln_to_itm_delta_mstr mstr ON ([CUSTOMER] = [CUST] and [MATERIAL]= [MATRL] and [Mixed Pallet Material] = [MIXD_PLT_MATRL] and
		 [Calendar Week] = [CAL_WK] and [Mixed Pallet Flag] = [MIXD_PLT_FLG] and [CURR]= [CURRENCY])
	  WHERE @CLS_WK < [CAL_WK] -- CHANGED TO CLOSED PERIOD WEEK

--PRINT N'04: GTW loaded, create index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_pln_to_itm_final on #zm_pln_to_itm_delta_gtwk ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY,[SALE_FLAG])

--PRINT N'05:Start loading prep1' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Use the multiprovider to create calculated fields that will be used in the final table.
--Use Plan To Item Actual to get all previous values as well as the table that was created previously
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_1') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_delta_1;
end
SELECT  mstr.[CUSTOMER]
      ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
      ,mstr.[Mixed Pallet Flag]
	  ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
      ,ISNULL([PLN_BASE_LBS],0) as [Plan Base LBS]
      ,ISNULL([PLN_INCR_LBS],0) as [Plan Incr LBS]
      ,ISNULL([PLN_BASE_UNITS],0) as [Plan Base Units]
      ,ISNULL([PLN_INCR_UNITS],0) as [Plan Incr Units]
      ,ISNULL([PLN_BASE_RTL_USD],0) as [Plan Base Ret $'s]
      ,ISNULL([PLN_INCR_RTL_USD] ,0) as [Plan Incr Ret $'s]
      ,ISNULL([PLN_BASE_USD] ,0) as [Plan Base $]
      ,ISNULL([PLN_INCR_SHIP_USD],0) as [Plan Incr Ship $]
      ,ISNULL(tpm.[PLN_SHIP_USD],0) as [Plan Ship $]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_CS],0) as [Plan Ship CS]
      ,ISNULL(tpm.[PLN_SHIP_LBS],0) as [Plan Ship LBS]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_KGS],0) as [Plan Ship KG]
      ,ISNULL(tpm.[PLN_SHIP_EA],0) as [Plan Ship EA]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_USD],0)  else 0 end as [Actual Ship $]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_CS],0)  else 0 end as [Actual Ship CS]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_LBS],0) else 0 end  as [Actual Ship LBS]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_EA],0)  else 0 end as [Actual Ship Units]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL([ACTL_KGS],0) else 0 end  as [Actual Ship KG]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as[Actual COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_USD],0) else 0 end as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,ISNULL(gtw.[Plan Ship $],0) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_LBS],0) else 0 end as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,ISNULL(gtw.[Plan Ship LBS],0) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_EA],0) else 0 end as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,ISNULL(gtw.[Plan Ship EA],0) as [>= Curr Week: LE Ship Units - Plan Ship EA]
      ,ISNULL(tpm.[TOTL_PLN_COST_OF_PROD_USD] ,0) as [Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as  [< Curr Week: LE COP $ - Actual COP $]
      ,ISNULL(gtw.[Total Planned COP $],0) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_CS],0) else 0 end as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,ISNULL(gtw.[Total Planned Shipment CS],0) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_KGS],0) else 0 end as [< Curr Week: LE Kilos - Actual Kilograms (KG)]
      ,ISNULL(gtw.[Total Planned Shipment Kilos],0) as [>= Curr Week: LE Kilos - Total Planned Shipment Kilos]
      ,ISNULL([PLN_BASE_CS],0) as [Plan Base Cases]
      ,ISNULL([PLN_INCR_CS],0) as [Plan Incr Cases]
      ,ISNULL([PLN_INCR_SHIP_CS],0) as [Plan Incr Ship Cases]
      ,ISNULL([PLN_INCR_SHIP_UNITS],0) as [Plan Incr Ship Units]
      ,ISNULL([PLN_INCR_SHIP_LBS],0) as [Plan Incr Ship LBS]
      ,ISNULL([PLN_INCR_SHIP_KG],0) as [Plan Incr Ship Kilos]
      ,ISNULL([SUGSTD_BASE_VOL_SAS],0) as [Suggested Base Volume (SAS)]
      ,ISNULL([SUGSTD_SHLF_PRC_SAS],0) as [Suggested Shelf Price (SAS)]
      ,ISNULL([LATST_ESTMT_MISS_OI],0) as [Lastest Estimate Missed OI]
      ,ISNULL([LATST_ESTMT_BILLBACK_USD],0) as [Latest Estimate Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_EDLP_BILLBACK_USD],0) as [Latest Estimate EDLP Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCANAPPS_BILLBACK_USD],0) as [Latest Estimate Scan Apps Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCAN_USD],0) as [Latest Estimate Scan Dollars]
      ,ISNULL([LE_WW_USD],0) as [LE WW$]
      ,ISNULL([LATST_ESTMT_TOTL_FIX_KMF],0) as [Latest Estimate Total Fixed KMF]
      ,case when @curr_week <=tpm.[CAL_WK] then  ISNULL(gtw.[Plan Total Off Invoice Dollars],0) else 0 end as [Plan Total Off Invoice Dollars]
      ,ISNULL(pln.[SPCL_PROMTN_ALLWNC]*(-1),0) as [Actual OI Spend (Not restricted)]
      ,ISNULL([PLN_TOTL_FIX_KMF_SPND],0) as [Plan Total Fixed KMF Spend]
      ,ISNULL([PLN_VAR_KMF_SPND],0) as [Plan Variable KMF Spend]
	  ,ISNULL([SCAN_APPS_OL_RT_AMT],0) + ISNULL([OL_AMT],0) as [Overlay Amount]---TASK0564827 - ADD Scanner apps and overlay amount columns
	INTO #zm_pln_to_itm_delta_1
	FROM  #zm_pln_to_itm_delta_mstr mstr 
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] tpm ON (tpm.[CUST]  = mstr.CUSTOMER and tpm.[MATRL] = mstr.MATERIAL and tpm.[MIXD_PLT_MATRL] = mstr.[Mixed Pallet Material] 
												and tpm.[CAL_WK]  = mstr.[Calendar Week] and tpm.[MIXD_PLT_FLG]  = mstr.[Mixed Pallet Flag] and  tpm.[CURR] = mstr.CURRENCY and 
												tpm.[SALE_FLG]  = mstr.SALE_FLAG )
	LEFT OUTER JOIN #zm_pln_to_itm_delta_gtwk gtw ON (gtw.CUSTOMER = mstr.CUSTOMER and gtw.MATERIAL = mstr.MATERIAL and gtw.[Mixed Pallet Material] = mstr.[Mixed Pallet Material] 
												and gtw.[Calendar Week] = mstr.[Calendar Week] and gtw.[Mixed Pallet Flag] = mstr.[Mixed Pallet Flag] and  gtw.CURRENCY = mstr.CURRENCY and 
												gtw.[SALE_FLAG]= mstr.SALE_FLAG )
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] pln ON (mstr.CUSTOMER = pln.[CUST] and mstr.MATERIAL = pln.[MATRL] and mstr.[Mixed Pallet Material] = pln.[MIXD_PLT_MATRL] 
												and mstr.[Calendar Week] = pln.[CAL_WK] and mstr.[Mixed Pallet Flag] = pln.[MIXD_PLT_FLG] and  mstr.CURRENCY = pln.[CURR] and mstr.SALE_FLAG = pln.SALE_FLG
												and  pln.[CAL_WK] < @curr_week -- CHANGED TO CLOSED  PERIOD WEEK
												)
	

--PRINT N'09: begin final DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))*/
--aggregate some fields that will be used in the final table as well as move the final table into the correct format.  Also be sure to filter out any records
--That sum to 0.  
SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
      ,sum([Plan Base LBS]) as [Plan Base LBS]
      ,sum([Plan Incr LBS]) as [Plan Incr LBS]
      ,sum([Plan Base Units]) as [Plan Base Units]
      ,sum([Plan Incr Units]) as [Plan Incr Units]
      ,sum([Plan Base Ret $'s]) as [Plan Base Ret $'s]
      ,sum([Plan Incr Ret $'s]) as [Plan Incr Ret $'s]
      ,sum([Plan Base $]) as [Plan Base $]
      ,sum([Plan Incr Ship $]) as [Plan Incr Ship $]
      ,sum([Plan Ship CS]) as [Plan Ship CS]
      ,sum([Plan Ship $]) as [Plan Ship $]
      ,sum([Plan Ship LBS]) as [Plan Ship LBS]
      ,sum([Plan Ship KG]) as [Plan Ship KG]
      ,sum([Plan Ship EA]) as [Plan Ship EA]
      ,sum([Actual Ship $]) as [Actual Ship $]
      ,sum([Actual Ship CS]) as [Actual Ship CS]
      ,sum([Actual Ship LBS]) as [Actual Ship LBS]
      ,sum([Actual Ship Units]) as [Actual Ship Units]
      ,sum([Actual Ship KG]) as [Actual Ship KG]
	  ,sum([LE Ship $]) as [LE Ship $]
	  ,sum([LE Ship LBS]) as [LE Ship LBS]
	  ,sum([LE Ship Units]) as [LE Ship Units]
	  ,sum([Total Planned KMF $]) as [Total Planned KMF $]
	  ,sum([LE KMF $]) as [LE KMF $]
	  ,sum([Total Planned COP $]) as [Total Planned COP $]
	  ,sum([Actual COP $]) as [Actual COP $]
	  ,sum([LE COP $]) as [LE COP $]
	  ,sum([LE Cases]) as [LE Cases]
	  ,sum([LE Kilos]) as [LE Kilos]
      ,sum([Plan Base Cases]) as [Plan Base Cases]
      ,sum([Plan Incr Cases]) as [Plan Incr Cases]
      ,sum([Plan Incr Ship Cases]) as [Plan Incr Ship Cases]
      ,sum([Plan Incr Ship Units]) as [Plan Incr Ship Units]
      ,sum([Plan Incr Ship LBS]) as [Plan Incr Ship LBS]
      ,sum([Plan Incr Ship Kilos]) as [Plan Incr Ship Kilos]
      ,sum([Suggested Base Volume (SAS)]) as [Suggested Base Volume (SAS)]
      ,sum([Suggested Shelf Price (SAS)]) as [Suggested Shelf Price (SAS)]
	  INTO #pln_to_itm_final_delta
	  FROM (SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
      ,[Plan Base LBS]
      ,[Plan Incr LBS]
      ,[Plan Base Units]
      ,[Plan Incr Units]
      ,[Plan Base Ret $'s]
      ,[Plan Incr Ret $'s]
      ,[Plan Base $]
      ,[Plan Incr Ship $]
      ,[Plan Ship CS]
      ,[Plan Ship $]
      ,[Plan Ship LBS]
      ,[Plan Ship KG]
      ,[Plan Ship EA]
      ,[Actual Ship $]
      ,[Actual Ship CS]
      ,[Actual Ship LBS]
      ,[Actual Ship Units]
      ,[Actual Ship KG]
      ,[< Curr Week: LE Ship $ - Actual Dollars ($)]+[>= Curr Week: LE Ship $ - Plan Ship $] as [LE Ship $]
      ,[< Curr Week: LE Ship LBS - Actual Pounds (LB)]+[>= Curr Week: LE Ship LBS - Plan Ship LBS] as [LE Ship LBS]
      ,[< Curr Week: LE Ship Units - Actual Eaches (EA)]+[>= Curr Week: LE Ship Units - Plan Ship EA] as [LE Ship Units]
      ,[Plan Total Fixed KMF Spend]+[Plan Variable KMF Spend] as [Total Planned KMF $]
      ,[LE KMF $] = CASE
						WHEN @curr_week > [Calendar Week] and @curr_year = floor([Calendar Week]/100)
						THEN [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] - [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
															[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] + [Overlay Amount]
						ELSE [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] + [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
							[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] +[Overlay Amount]----TASK0564827 - ADD Scanner apps and overlay amount columns
					END
      ,[Total Planned COP $]
      ,[Actual COP $]
      ,[< Curr Week: LE COP $ - Actual COP $]+[>= Curr Week: LE COP $ - Total Planned COP $] as [LE COP $]
      ,[< Curr Week: LE Cases - Actual Cases (CS)]+[>= Curr Week: LE Cases - Total Planned Shipment CS] as [LE Cases]
      ,[< Curr Week: LE Kilos - Actual Kilograms (KG)]+[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] as [LE Kilos]
      ,[Plan Base Cases]
      ,[Plan Incr Cases]
      ,[Plan Incr Ship Cases]
      ,[Plan Incr Ship Units]
      ,[Plan Incr Ship LBS]
      ,[Plan Incr Ship Kilos]
      ,[Suggested Base Volume (SAS)]
      ,[Suggested Shelf Price (SAS)]
	  FROM #zm_pln_to_itm_delta_1) tmp
	  WHERE tmp.[Plan Base LBS]<> 0.000 or tmp.[Plan Incr LBS]<> 0.000 or tmp.[Plan Base Units]<> 0.000 or tmp.[Plan Incr Units]<> 0.000 or tmp.[Plan Base Ret $'s]<> 0.000 or tmp.[Plan Incr Ret $'s]<> 0.000 or tmp.[Plan Base $]<> 0.000 or tmp.[Plan Incr Ship $] <> 0.000 or tmp.[Plan Ship CS] <> 0.000 or tmp.[Plan Ship $]<> 0.000 or tmp.[Plan Ship LBS]<> 0.000 or tmp.[Plan Ship KG]
      <> 0.000 or tmp.[Plan Ship EA]<> 0.000 or tmp.[Actual Ship $]<> 0.000 or tmp.[Actual Ship CS]<> 0.000 or tmp.[Actual Ship LBS]<> 0.000 or tmp.[Actual Ship Units]<> 0.000 or tmp.[Actual Ship KG]<> 0.000 or tmp.[LE Ship $]<> 0.000 or tmp.[LE Ship LBS]<> 0.000 or tmp.[LE Ship Units]<> 0.000 or (tmp.[Total Planned KMF $]
      + tmp.[LE KMF $])<> 0.000 or tmp.[Total Planned COP $]<> 0.000 or tmp.[Actual COP $]<> 0.000 or tmp.[LE COP $]<> 0.000 or tmp.[LE Cases]<> 0.000 or tmp.[LE Kilos]<> 0.000 or tmp.[Plan Base Cases]<> 0.000 or tmp.[Plan Incr Cases]<> 0.000 or tmp.[Plan Incr Ship Cases]<> 0.000 or tmp.[Plan Incr Ship Units]
      <> 0.000 or tmp.[Plan Incr Ship LBS]<> 0.000 or tmp.[Plan Incr Ship Kilos]<> 0.000 or tmp.[Suggested Base Volume (SAS)]<> 0.000 or tmp.[Suggested Shelf Price (SAS)] <> 0.000 
	  GROUP BY [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]


	  BEGIN TRANSACTION;
	  SAVE TRANSACTION  start_tran;
--PRINT N'08: begin delete and loading of final table' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Delete old records
--delete using delta from tpm60 and data that has been updated
DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM]
WHERE EXISTS ( SELECT [CUST] ,[MATRL],[MIXD_PLT_MATRL],[CAL_WK],[MIXD_PLT_FLG] ,CURR FROM [KNA_COMRCL].[STG].[ZM_TPM60] stg
				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].CUST and stg.[MATRL]=[KNA_COMRCL].[dbo].[PLN_TO_ITM].[MATRL] and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[MIXD_PLT_MATRL] 
				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[CAL_WK] and stg.[MIXD_PLT_FLG]=[KNA_COMRCL].[dbo].[PLN_TO_ITM].[MIXD_PLT_FLG]
				 and stg.CURR = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[CURR])


DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM]
WHERE EXISTS ( SELECT [CUST] ,[MATRL],[MIXD_PLT_MATRL],[CAL_WK],[MIXD_PLT_FLG] ,CURR FROM [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg
				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].CUST and stg.[MATRL]=[KNA_COMRCL].[dbo].[PLN_TO_ITM].[MATRL] and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[MIXD_PLT_MATRL] 
				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[CAL_WK] and stg.[MIXD_PLT_FLG]=[KNA_COMRCL].[dbo].[PLN_TO_ITM].[MIXD_PLT_FLG]
				 and stg.CURR = [KNA_COMRCL].[dbo].[PLN_TO_ITM].[CURR])
--insert all appropriate records into the final table
INSERT INTO KNA_COMRCL.dbo.PLN_TO_ITM
SELECT * 
FROM #pln_to_itm_final_delta

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	--PRINT N'06: DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	
	end

END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PLN_TO_ITM_ACTL]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_TPM60]
		PURPOSE:   Create the Promotion Fact table (KNA_COMRCL.dbo.ZM_TPM60)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/05/2017   USCDXS92         Created.
		
		This stored procedure creates the PLN_TO_ITM_ACT that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset.  This correctly explodes the MOD materials
		which were not exploded correctly in BW.  The logic was designed and built in BODS by Joe Wright's team
		for the initial TPE project and were transcribed into SQL for the RGM rebuild

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_PLN_TO_ITM_ACTL] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--check to see if a full load is desired
DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')

--PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Take all current records (In the time frame of the past two years of actuals data from CON52) and then classify them into 
--sales flags.  Ensure the records exist in the BOM as this plays a role in classifying the flags. Ensure that these records are distinct as well
--for all the unique identifiers.
IF OBJECT_ID ('tempDB..#pln_to_itm_act') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_act;
end
SELECT a.[CUSTOMER]
      ,a.[MATERIAL]
	  ,a.[Mixed Pallet Material]
	  ,a.[Calendar_Week]
      ,a.[Mixed Pallet Flag]
	  ,sum(a.[Actual Dollars ($)]) as [Actual Dollars ($)]
      ,sum(a.[Actual Cases (CS)]) as [Actual Cases (CS)]
      ,sum(a.[Actual Eaches I (EA)]) as [Actual Eaches I (EA)]
      ,sum(a.[Actual Pounds (LB)]) as [Actual Pounds (LB)]
      ,sum(a.[Retail Sales $]) as [Retail Sales $]
      ,sum(a.[Actual Eaches II (EA)]) as [Actual Eaches II (EA)]
      ,sum(a.[Actual COP $]) as [Actual COP $]
      ,a.[CURRENCY]
      ,sum(a.[SPA (Special Promo Allowance)]) as [SPA (Special Promo Allowance)]
INTO #pln_to_itm_act
FROM ( SELECT con.[CUSTOMER]
      ,con.[MATERIAL]
	  ,con.[/BIC/ZMXDPALM] as [Mixed Pallet Material]
	  ,con.[CALWEEK] as [Calendar_Week]
      ,[Mixed Pallet Flag] = (CASE 
	                            WHEN con.[/BIC/ZMXDFLG] = 'Z'
								THEN CASE 
								          WHEN b.[MOD_MATRL] IS NOT NULL THEN 'Z'
										  ELSE 'B'
								END
								WHEN con.[/BIC/ZMXDFLG] = 'N'
								THEN CASE
								          WHEN b.[MOD_MATRL] IS NOT NULL THEN 'Z'
										  ELSE 'N'
									END
								ELSE con.[/BIC/ZMXDFLG]
							END)
	  ,[/BIC/ZC_AGRDL] as [Actual Dollars ($)]
      ,[/BIC/ZC_QGRCS] as [Actual Cases (CS)]
      ,[/BIC/ZC_QGRECH] as [Actual Eaches I (EA)]
      ,[/BIC/ZC_QGRLBS] as [Actual Pounds (LB)]
      ,[/BIC/ZS_ACRSD] as [Retail Sales $]
      ,[/BIC/ZG_QVVGPK] as [Actual Eaches II (EA)]
      ,[/BIC/ZC_ACTCOP] as [Actual COP $]
      ,con.[CURRENCY]
      ,[/BIC/ZC_ASPA] as [SPA (Special Promo Allowance)]
	FROM [KNA_BW].[STG].[AZD_CON6100_AGG] con
	LEFT OUTER JOIN  (Select Distinct [MOD_MATRL] FROM [KNA_COMRCL].[dbo].[BOM]) b ON b.[MOD_MATRL]=con.MATERIAL ) a
GROUP BY  a.[CUSTOMER]
      ,a.[MATERIAL]
	  ,a.[Mixed Pallet Material]
      ,a.[Mixed Pallet Flag]
	  ,a.[Calendar_Week]
	  ,a.[CURRENCY]

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--get full load vs delta load flag
if (@full_load = 'Y')
begin
	TRUNCATE TABLE #pln_to_itm_act
	INSERT INTO #pln_to_itm_act
	SELECT a.[CUSTOMER]
		,a.[MATERIAL]
		,a.[Mixed Pallet Material]
		,a.[Calendar_Week]
		,a.[Mixed Pallet Flag]
		,sum(a.[Actual Dollars ($)]) as [Actual Dollars ($)]
		,sum(a.[Actual Cases (CS)]) as [Actual Cases (CS)]
		,sum(a.[Actual Eaches I (EA)]) as [Actual Eaches I (EA)]
		,sum(a.[Actual Pounds (LB)]) as [Actual Pounds (LB)]
		,sum(a.[Retail Sales $]) as [Retail Sales $]
		,sum(a.[Actual Eaches II (EA)]) as [Actual Eaches II (EA)]
		,sum(a.[Actual COP $]) as [Actual COP $]
		,a.[CURRENCY]
		,sum(a.[SPA (Special Promo Allowance)]) as [SPA (Special Promo Allowance)]
	FROM ( SELECT con.[CUSTOMER]
		,con.[MATERIAL]
		,con.[/BIC/ZMXDPALM] as [Mixed Pallet Material]
		,con.[CALWEEK] as [Calendar_Week]
		,[Mixed Pallet Flag] = (CASE 
	                            WHEN con.[/BIC/ZMXDFLG] = 'Z'
								THEN CASE 
								          WHEN b.[MOD_MATRL] IS NOT NULL THEN 'Z'
										  ELSE 'B'
								END
								WHEN con.[/BIC/ZMXDFLG] = 'N'
								THEN CASE
								          WHEN b.[MOD_MATRL] IS NOT NULL THEN 'Z'
										  ELSE 'N'
									END
								ELSE con.[/BIC/ZMXDFLG]
							END)
		,[/BIC/ZC_AGRDL] as [Actual Dollars ($)]
		,[/BIC/ZC_QGRCS] as [Actual Cases (CS)]
		,[/BIC/ZC_QGRECH] as [Actual Eaches I (EA)]
		,[/BIC/ZC_QGRLBS] as [Actual Pounds (LB)]
		,[/BIC/ZS_ACRSD] as [Retail Sales $]
		,[/BIC/ZG_QVVGPK] as [Actual Eaches II (EA)]
		,[/BIC/ZC_ACTCOP] as [Actual COP $]
		,con.[CURRENCY]
		,[/BIC/ZC_ASPA] as [SPA (Special Promo Allowance)]
		FROM [KNA_BW].[dbo].[AZD_CON6100] con
		LEFT OUTER JOIN  (Select Distinct [MOD_MATRL] FROM [KNA_COMRCL].[dbo].[BOM]) b ON b.[MOD_MATRL]=con.MATERIAL ) a
	GROUP BY  a.[CUSTOMER]
      ,a.[MATERIAL]
	  ,a.[Mixed Pallet Material]
      ,a.[Mixed Pallet Flag]
	  ,a.[Calendar_Week]
	  ,a.[CURRENCY]
end
--PRINT N'1: pln_to_itm_act' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Reclassify the Mixed Pallet Flag to get ensure that we get a correct list of values that did not explode correctly
IF OBJECT_ID ('tempDB..#pln_to_itm_act1') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_act1;
end
Select [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
	  ,[STD_PRC]
      ,[Mixed Pallet Flag]= (CASE 
									WHEN [Mixed Pallet Flag] = 'Z'
									THEN CASE 
											 WHEN  b.[MOD_MATRL] IS NOT NULL THEN [Mixed Pallet Flag]
											 ELSE 'B'
								         END
									ELSE [Mixed Pallet Flag]
								  END)
      ,[Calendar_Week]
      ,[Actual Dollars ($)]
      ,[Actual Cases (CS)]
      ,[Actual Eaches I (EA)]
      ,[Actual Pounds (LB)]
      ,[Retail Sales $]
      ,[Actual Eaches II (EA)]
      ,[Actual COP $]
      ,tmp_act.[CURRENCY]
      ,[SPA (Special Promo Allowance)]
	  ,[SALE_FLAG] = CASE 
						 WHEN [Mixed Pallet Flag] = 'N' THEN 'N'
						 WHEN [Mixed Pallet Flag] = 'Z' THEN 'Z'
						 ELSE 'D'
					 END
INTO #pln_to_itm_act1
FROM #pln_to_itm_act tmp_act
LEFT OUTER JOIN [KNA_COMRCL].[dbo].[MATRL_STD_PRC] b ON (b.[MOD_MATRL]= MATERIAL and b.[CMPT_MATRL] = [Mixed Pallet Material] 
                                                   and b.[CAL_YR]  = floor([Calendar_Week]/100) and b.CURR = tmp_act.CURRENCY)

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--get a unique standard price from the previous table for each record
IF OBJECT_ID ('tempDB..#pln_to_itm_actgroup') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actgroup;
end
Select [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
	  ,[Calendar_Week]
	  ,max([STD_PRC]) as [Standard Price]
      ,[Mixed Pallet Flag]
      ,[Actual Dollars ($)]
      ,[Actual Cases (CS)]
      ,[Actual Eaches I (EA)]
      ,[Actual Pounds (LB)]
      ,[Retail Sales $]
      ,[Actual Eaches II (EA)]
      ,[Actual COP $]
      ,[CURRENCY]
      ,[SPA (Special Promo Allowance)]
	  ,[SALE_FLAG]
INTO #pln_to_itm_actgroup
FROM #pln_to_itm_act1
GROUP BY [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material]
	  ,[Mixed Pallet Flag]
	  ,[Calendar_Week]
      ,[Actual Dollars ($)]
      ,[Actual Cases (CS)]
      ,[Actual Eaches I (EA)]
      ,[Actual Pounds (LB)]
      ,[Retail Sales $]
      ,[Actual Eaches II (EA)]
      ,[Actual COP $]
      ,[CURRENCY]
      ,[SPA (Special Promo Allowance)]
	  ,[SALE_FLAG]

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'2: pln_to_itm_act1 and group ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Calculate values for all of the records.
--calculate DM Actual COP, Actual Eaches and Actual Kilos
IF OBJECT_ID ('tempDB..#pln_to_itm_actALL') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actALL;
end
Select
       [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Mixed Pallet Flag] 								
	  ,[Calendar_Week]
      ,[Actual Dollars ($)]
      ,[Actual Cases (CS)]
      ,[Actual Eaches I (EA)] + [Actual Eaches II (EA)] as [Actual Eaches (EA)] 
      ,[Actual Pounds (LB)]
	  ,[Actual Pounds (LB)]/2.20462 as [Actual Kilos (KG)]
      ,[Retail Sales $]
	  ,[Actual COP $] as [ECC Actual COP $]
      ,[DM Actual COP $] = CASE 
								WHEN [Mixed Pallet Flag]  = 'Z' 
								THEN CASE
										WHEN [Standard Price] IS NULL THEN [Actual COP $]
										ELSE ([Actual COP $] + [Standard Price])
									END
								ELSE CASE
										WHEN [Standard Price] IS NULL THEN [Actual Dollars ($)]
										ELSE [Actual Cases (CS)]*[Standard Price]
									  END
						   END
      ,[CURRENCY]
      ,[SPA (Special Promo Allowance)]
	  ,[SALE_FLAG]
INTO #pln_to_itm_actALL
FROM #pln_to_itm_actgroup

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'3: #pln_to_itm_actALL' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create table with Flag not equal to Z
--this will be used for the final merging of all the tables.  These are all records that were not mixed pallet
IF OBJECT_ID ('tempDB..#pln_to_itm_actNE') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actNE;
end
Select
       ne.[CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Mixed Pallet Flag] = CASE 
								 WHEN [Mixed Pallet Flag] = 'B' THEN 'Z'
								 ELSE [Mixed Pallet Flag]
							 END
	  ,[Calendar_Week]
      ,[Actual Dollars ($)]
      ,[Actual Cases (CS)]
	  ,[Actual Eaches (EA)] 
      ,[Actual Pounds (LB)]
	  ,[Actual Kilos (KG)]
      ,[Retail Sales $]
	  ,[ECC Actual COP $]
      ,[DM Actual COP $] 
      ,ne.[CURRENCY]
      ,[SPA (Special Promo Allowance)]
	  ,[SALE_FLAG]
INTO #pln_to_itm_actNE
FROM #pln_to_itm_actALL ne
WHERE [Mixed Pallet Flag] <> 'Z'

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'4: #pln_to_itm_actNE' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create table with Flag equal to D
--these record sets will also be used in the final Plan to table.  These records reflect all the values that 
--need to be exploded.
IF OBJECT_ID ('tempDB..#pln_to_itm_actD') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actD;
end
Select
       [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,'D' as [Mixed Pallet Flag] 
	  ,[Calendar_Week]
      ,[Actual Dollars ($)]
      ,[Actual Cases (CS)]
	  ,[Actual Eaches (EA)] 
      ,[Actual Pounds (LB)]
	  ,[Actual Kilos (KG)]
      ,[Retail Sales $]
	  ,[ECC Actual COP $]
      ,[DM Actual COP $] 
      ,[CURRENCY]
      ,[SPA (Special Promo Allowance)]
	  ,[SALE_FLAG]
INTO #pln_to_itm_actD
FROM #pln_to_itm_actALL
WHERE [Mixed Pallet Flag] = 'Z'

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'5: #pln_to_itm_actD' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--create a table with all the values that are equal to E, this uses the inverse values.
--This table also be used in the final merge table.
IF OBJECT_ID ('tempDB..#pln_to_itm_actE') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actE;
end
Select
       [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,'E' as [Mixed Pallet Flag]
	  ,[Calendar_Week]
      ,[Actual Dollars ($)]*(-1) as [Actual Dollars ($)]
      ,[Actual Cases (CS)]*(-1) as [Actual Cases (CS)]
      ,[Actual Eaches (EA)]*(-1) as [Actual Eaches (EA)] 
      ,[Actual Pounds (LB)]*(-1) as [Actual Pounds (LB)]
	  ,[Actual Kilos (KG)]*(-1) as [Actual Kilos (KG)]
      ,[Retail Sales $]*(-1) as [Retail Sales $]
	  ,[ECC Actual COP $]*(-1) as [ECC Actual COP $]
      ,[DM Actual COP $]*(-1) as [DM Actual COP $]
      ,[CURRENCY]
      ,[SPA (Special Promo Allowance)]*(-1) as [SPA (Special Promo Allowance)]
	  ,[SALE_FLAG]
INTO #pln_to_itm_actE
FROM #pln_to_itm_actD

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'6: #pln_to_itm_actE' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--USE the dataset that has values equal to D to calculate missing or bad values
--also add list price based on customer and different values and calculate actual dollars.
IF OBJECT_ID ('tempDB..#pln_to_itm_actlp') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actlp;
end
Select tmp.[CUSTOMER]   
	   ,tmp.[MATERIAL]  
	   ,tmp.[Component Material]  
	   ,tmp.[Calendar_Week]
	   ,[List Price per Case] = CASE 
									WHEN lp.[LST_PRC_PER_CASE] IS NULL THEN 0
									ELSE lp.[LST_PRC_PER_CASE]
								 END
	   ,[Actual Dollars ($)] = CASE
									WHEN  lp.[LST_PRC_PER_CASE] IS NULL THEN 0   
									ELSE lp.[LST_PRC_PER_CASE]*tmp.[Actual Cases (CS)]*tmp.[QUANTITY] 
								END 
	   ,tmp.[Actual Cases (CS)]*tmp.[QUANTITY] as [Actual Cases (CS)]  
	   ,tmp.[ECC Actual COP $]  
	   ,tmp.[Actual Cases (CS)]*tmp.[QUANTITY]*tst.[STD_PRC] as [DM Actual COP $]
       ,tmp.[CURRENCY]  
       ,tmp.[SALE_FLAG]
	   ,tmp.[SPA (Special Promo Allowance)]
INTO #pln_to_itm_actlp
FROM  (Select 
		d.CUSTOMER 
	   ,d.MATERIAL
	   ,BOM.[CMPT_MATRL] as [Component Material]
	   ,d.[Calendar_Week]
	   ,d.[ECC Actual COP $]
	   ,d.[CURRENCY]
	   ,BOM.[PCT] as [PERCENT]
	   ,BOM.[QTY] as [QUANTITY]
	   ,cust.[CHNL_IND] as [CHANNEL]
	   ,[Actual Cases (CS)] = CASE 
								WHEN d.[Actual Cases (CS)] IS NULL THEN 0.000
								ELSE d.[Actual Cases (CS)]
							  END
	   ,d.[SPA (Special Promo Allowance)]
	   ,d.[SALE_FLAG]
	   FROM #pln_to_itm_actD d
	  LEFT OUTER JOIN  [KG_VIEWS].[KNA].[UVW_CUST] cust ON d.CUSTOMER = cust.CUST_NBR
	   LEFT OUTER JOIN [KNA_COMRCL].[dbo].[BOM] BOM ON (BOM.[MOD_MATRL] = d.[MATERIAL])
	   ) tmp
	   INNER JOIN [KNA_COMRCL].[dbo].[MATRL_STD_PRC] tst ON (tst.[MOD_MATRL]= tmp.MATERIAL and tst.[CMPT_MATRL] = tmp.[Component Material] 
                                                   and tst.[CAL_YR] = floor(tmp.[Calendar_Week]/100) and tst.CURR = tmp.CURRENCY)
	   LEFT OUTER JOIN [KNA_COMRCL].[dbo].[LST_PRC] lp ON (lp.MATRL = tmp.[Component Material] and lp.[CAL_WK] = tmp.[Calendar_Week]
																	  and tmp.CURRENCY = lp.CURR and tmp.[CHANNEL] = lp.[CHNL_CUST_GRP] and 
																	  lp.[LST_PRC_PER_CASE]<>0.00)

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end

--PRINT N'7: #pln_to_itm_actlp' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--add BOM and caclulcate the values based on the different Base Unit of Measures
IF OBJECT_ID ('tempDB..#pln_to_itm_actUOM') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actUOM;
end

Select DISTINCT y.[CUSTOMER]   
	   ,y.[MATERIAL]  
	   ,y.[Component Material]  
	   ,y.[Calendar_Week]
	   ,y.[Actual Dollars ($)]
	   ,y.[Actual Cases (CS)]
	   ,y.[ECC Actual COP $]  
	   ,y.[DM Actual COP $]
       ,y.[CURRENCY]
	   ,uom.UNIT
	   ,uom.BASE_UOM
	   ,uom.NUM_DIV
	   ,uom.DENO_DIV
       ,y.[SALE_FLAG]
	   ,y.[SPA (Special Promo Allowance)]
INTO #pln_to_itm_actUOM
FROM #pln_to_itm_actlp y
LEFT OUTER JOIN [KNA_COMRCL].[dbo].[UOM] uom ON (uom.MATRL = y.[Component Material])

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'8: #pln_to_itm_actUOM' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--use the BOM to calculate Actual Eaches, Cases, Pounds and Kilograms for each record.  
IF OBJECT_ID ('tempDB..#pln_to_itm_actUOMcalc') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actUOMcalc;
end
Select  [CUSTOMER]   
	   ,[MATERIAL]  
	   ,[Component Material]  
	   ,'Y' as [Mixed Pallet Flag] 
	   ,[Calendar_Week]
	   ,[Actual Dollars ($)]
	   ,[Actual Cases (CS)] = CASE
								WHEN BASE_UOM <> 'CS' 
								THEN  CASE 
										 WHEN UNIT = 'CS' THEN [Actual Cases (CS)]*DENO_DIV*NUM_DIV
										 ELSE 0.00
								      END
								WHEN BASE_UOM = 'CS'
								THEN CASE 
										 WHEN UNIT = 'CS' THEN [Actual Cases (CS)]
										 ELSE 0.00
								      END
								ELSE [Actual Cases (CS)]
							  END
	   ,[Actual Eaches (EA)] = CASE
								WHEN BASE_UOM <> 'CS' 
								THEN  CASE 
										 WHEN UNIT = 'EA' THEN [Actual Cases (CS)]*DENO_DIV*NUM_DIV
										 ELSE 0.000
									  END
								WHEN BASE_UOM = 'CS'
								THEN CASE
										 WHEN UNIT IN ('PKG','EA') THEN [Actual Cases (CS)]*NUM_DIV
								         ELSE 0.000
									  END
							  END
	   ,[Actual Pounds (LB)] = CASE
								WHEN BASE_UOM <> 'CS' 
								THEN  CASE 
										 WHEN UNIT = 'LB' THEN [Actual Cases (CS)]*DENO_DIV*NUM_DIV
										 WHEN UNIT = 'ZNK' THEN [Actual Cases (CS)]*DENO_DIV*NUM_DIV*2.205
										 ELSE 0.000
								      END
								WHEN BASE_UOM = 'CS' 
								THEN CASE
										 WHEN UNIT = 'LB' THEN [Actual Cases (CS)]*NUM_DIV
										 WHEN UNIT = 'ZNK' THEN [Actual Cases (CS)]*NUM_DIV*2.205
										 ELSE 0.000
									 END
								ELSE 0.000
							  END 
	   ,[Actual Kilos (KG)] = CASE
								WHEN BASE_UOM <> 'CS' 
								THEN  CASE 
										 WHEN UNIT = 'LB' THEN [Actual Cases (CS)]*NUM_DIV/2.205
										 WHEN UNIT = 'ZNK' THEN [Actual Cases (CS)]*DENO_DIV*NUM_DIV
										 ELSE 0.000
								      END
								WHEN BASE_UOM = 'CS' 
								THEN CASE
										 WHEN UNIT = 'LB' THEN [Actual Cases (CS)]*NUM_DIV/2.205
										 WHEN UNIT = 'ZNK' THEN [Actual Cases (CS)]*NUM_DIV
										 ELSE 0.000
									 END
								ELSE 0.000
							  END 
	   ,0.00 as [Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,[CURRENCY]
       ,[SALE_FLAG]
	   ,[SPA (Special Promo Allowance)]
INTO #pln_to_itm_actUOMcalc
FROM #pln_to_itm_actUOM

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'9: #pln_to_itm_actUOMcalc' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--get the maximum value for all the fields and combine the values
IF OBJECT_ID ('tempDB..#pln_to_itm_actUOMcalc1') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actUOMcalc1;
end
Select  [CUSTOMER]   
	   ,[MATERIAL]  
	   ,[Component Material] as [Mixed Pallet Material]
	   ,[Mixed Pallet Flag]  
	   ,[Calendar_Week]
	   ,[Actual Dollars ($)]
	   ,sum([Actual Cases (CS)]) as [Actual Cases (CS)]
	   ,sum([Actual Eaches (EA)]) as [Actual Eaches (EA)]
	   ,sum([Actual Pounds (LB)]) as [Actual Pounds (LB)]
	   ,sum([Actual Kilos (KG)]) as [Actual Kilos (KG)]
	   ,[Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,[CURRENCY]
       ,[SALE_FLAG]
	   ,[SPA (Special Promo Allowance)]
INTO #pln_to_itm_actUOMcalc1
FROM #pln_to_itm_actUOMcalc
GROUP BY [CUSTOMER]   
	   ,[MATERIAL]  
	   ,[Component Material]
	   ,[Mixed Pallet Flag]   
	   ,[Calendar_Week]
	   ,[Actual Dollars ($)]
	   ,[Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,[CURRENCY]
	   ,[SPA (Special Promo Allowance)]
       ,[SALE_FLAG]

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'10: #pln_to_itm_actUOMcalc1' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--use the BOM to look up MODS and Percent.  This will be used to calculate the adjustment for each mixed pallet material 
IF OBJECT_ID ('tempDB..#pln_to_itm_actY_FLG1') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actY_FLG1;
end
Select  [CUSTOMER]   
	   ,tmp1.[MATERIAL]  
	   ,[Mixed Pallet Material]
	   ,[Mixed Pallet Flag]  
	   ,[Calendar_Week]
	   ,[Sales Org.]
	   ,[Channel (Customer Group)]
	   ,bom.[PCT] as [PERCENT]
	   ,[Actual Dollars ($)]
	   ,[Actual Cases (CS)]
	   ,[Actual Eaches (EA)]
	   ,[Actual Pounds (LB)]
	   ,[Actual Kilos (KG)]
	   ,[Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,[CURRENCY]
       ,[SALE_FLAG]
	   ,[SPA (Special Promo Allowance)]*(bom.[PCT]/100) as [SPA (Special Promo Allowance)]
	   ,[SPA (Special Promo Allowance)] as [SPA (Special Promo Allowance)_OLD]
INTO #pln_to_itm_actY_FLG1
from (Select DISTINCT [CUSTOMER]   
	   ,tmp.[MATERIAL]  
	   ,[Mixed Pallet Material]  
	   ,[Calendar_Week]
	   ,[Mixed Pallet Flag] 
	   ,lp.[SALES_ORG] as [Sales Org.]
	   ,cust.[CHNL_IND] as [Channel (Customer Group)]
	   ,[Actual Dollars ($)]
	   ,[Actual Cases (CS)]
	   ,[Actual Eaches (EA)]
	   ,[Actual Pounds (LB)]
	   ,[Actual Kilos (KG)]
	   ,[Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,tmp.[CURRENCY]
       ,[SALE_FLAG]
	   ,[SPA (Special Promo Allowance)]
		FROM #pln_to_itm_actUOMcalc1 tmp
		LEFT OUTER JOIN [KNA_COMRCL].[dbo].[LST_PRC] lp 
				ON ([Mixed Pallet Material] = lp.[MATRL] and lp.[CAL_WK] = tmp.[Calendar_Week] and lp.CURR = tmp.CURRENCY) 
		INNER JOIN KG_VIEWS.KNA.UVW_CUST cust ON  (cust.CUST_NBR = tmp.CUSTOMER)
		) tmp1 
		LEFT OUTER JOIN [KNA_COMRCL].[dbo].[BOM] bom 
				ON (tmp1.MATERIAL = bom.[MOD_MATRL] and bom.[SALES_ORG] = tmp1.[Sales Org.]
			    and tmp1.[Mixed Pallet Material] = bom.[CMPT_MATRL] and bom.[DIST_CHNL] = tmp1.[Channel (Customer Group)] )

--Fill any missing values with the 01 Channel BOM Values
IF OBJECT_ID ('tempDB..#pln_to_itm_actY_FLG1A') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actY_FLG1A;
end
Select  [CUSTOMER]   
	   ,tmp1.[MATERIAL]  
	   ,[Mixed Pallet Material]
	   ,[Mixed Pallet Flag]  
	   ,[Calendar_Week]
	   ,[Sales Org.]
	   ,[Channel (Customer Group)]
	   ,[PERCENT] = CASE WHEN tmp1.[PERCENT] IS NULL THEN bom.[PCT] 
						 ELSE tmp1.[PERCENT]
						END
	   ,[Actual Dollars ($)]
	   ,[Actual Cases (CS)]
	   ,[Actual Eaches (EA)]
	   ,[Actual Pounds (LB)]
	   ,[Actual Kilos (KG)]
	   ,[Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,[CURRENCY]
       ,[SALE_FLAG]
	   ,[SPA (Special Promo Allowance)] = CASE WHEN tmp1.[SPA (Special Promo Allowance)] IS NULL THEN [SPA (Special Promo Allowance)_OLD]*(bom.[PCT]/100)
												ELSE [SPA (Special Promo Allowance)] 
											  END
INTO #pln_to_itm_actY_FLG1A
FROM #pln_to_itm_actY_FLG1 tmp1
LEFT OUTER JOIN [KNA_COMRCL].[dbo].[BOM] bom 
				ON (tmp1.MATERIAL = bom.[MOD_MATRL] and bom.[SALES_ORG] = tmp1.[Sales Org.]
			    and tmp1.[Mixed Pallet Material] = bom.[CMPT_MATRL] and bom.[DIST_CHNL] = '01' )

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
 --get the sum of all the actual dollars and the special promo allowed per the different seperators.  This gets the modified costs
 --for each of the exploded materials
 --PRINT N'11: #pln_to_itm_actY_FLG1' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#pln_to_itm_actY_FLGsum') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actY_FLGsum;
end
 select [CUSTOMER]   
	   ,[MATERIAL]  
	   ,[Mixed Pallet Flag]  
	   ,[Calendar_Week]
	   ,sum([Actual Dollars ($)]) as [Actual Dollars ($)]
       ,[CURRENCY]
	   ,sum([SPA (Special Promo Allowance)]) as [SPA (Special Promo Allowance)]
INTO #pln_to_itm_actY_FLGsum
FROM #pln_to_itm_actY_FLG1A
GROUP BY [CUSTOMER]   
	   ,[MATERIAL]  
	   ,[Mixed Pallet Flag]  
	   ,[Calendar_Week]
	   ,[CURRENCY]

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--PRINT N'12: #pln_to_itm_actY_FLGsum' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--apply delta and then perform the final logic to the Y flag table
--to get the values for the Actual Cases, Actual Eaches, Pounds and Kilos
--use Percent and the deltas to calculate actual dollars and promo dollars.  This gets the correct remod values that were calculated for the 
--exploded pallets.
IF OBJECT_ID ('tempDB..#pln_to_itm_actYfinal') IS NOT NULL
begin
	DROP TABLE #pln_to_itm_actYfinal;
end
SELECT DISTINCT  yflg.[CUSTOMER]   
	   ,yflg.[MATERIAL]  
	   ,yflg.[Mixed Pallet Material]
	   ,yflg.[Mixed Pallet Flag]  
	   ,yflg.[Calendar_Week]
	   ,yflg.[Actual Dollars ($)]+([PERCENT]/100)*tmp.[Actual Dollars Delta] as [Actual Dollars ($)]
	   ,[Actual Cases (CS)]
	   ,[Actual Eaches (EA)]
	   ,[Actual Pounds (LB)]
	   ,[Actual Kilos (KG)]
	   ,[Retail Sales $]
	   ,[ECC Actual COP $]  
	   ,[DM Actual COP $]
       ,[CURRENCY]
	   ,yflg.[SPA (Special Promo Allowance)]+([PERCENT]/100)*[SPA (Special Promo Allowance) Delta] as [SPA (Special Promo Allowance)]
       ,[SALE_FLAG]
INTO #pln_to_itm_actYfinal
FROM #pln_to_itm_actY_FLG1A yflg
	LEFT OUTER JOIN (select y.[CUSTOMER]   
			  ,y.[MATERIAL]
	          ,y.[Calendar_Week]
	          ,d.[Actual Dollars ($)]-y.[Actual Dollars ($)] as [Actual Dollars Delta]
	          ,d.[SPA (Special Promo Allowance)] - y.[SPA (Special Promo Allowance)] as [SPA (Special Promo Allowance) Delta]
            FROM #pln_to_itm_actY_FLGsum y
			LEFT OUTER JOIN #pln_to_itm_actD d ON (y.MATERIAL = d.MATERIAL and y.Calendar_Week = d.Calendar_Week 
													and y.CUSTOMER = d.CUSTOMER and y.CURRENCY = d.CURRENCY)

													)tmp ON (yflg.CUSTOMER = tmp.CUSTOMER and yflg.MATERIAL = tmp.MATERIAL 
															and yflg.Calendar_Week = tmp.Calendar_Week)

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end
--Perform the last calculations on the Actual Cases and Eaches.  This step also applies a union on all the four tables
--with different flags (Y,D,E and NE)
--verified that the logic to calculate eaches and cases is correct.  We also re-cacluate the Actual Cases based on the list price per case brought over and
--the sales of each material.
--PRINT N'13: #pln_to_itm_actYfinal' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
if (@full_load = 'Y')
begin
	--drop index on the final table
	--DROP INDEX [IX_PLN_TO_ITM_ACT] ON [dbo].[PLN_TO_ITM_ACT]

 		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

IF EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM_ACT')
begin
	DROP INDEX [IX_PLN_TO_ITM_ACT] ON [dbo].[PLN_TO_ITM_ACT]
end 

	TRUNCATE TABLE [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT]
	INSERT INTO [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT]
	SELECT  tmp.[CUSTOMER]   
	   ,tmp.[MATERIAL]  
	   ,tmp.[Mixed Pallet Material]
	   ,tmp.[Mixed Pallet Flag]  
	   ,tmp.[Calendar_Week]
	   ,tmp.[Actual Dollars ($)]
	   ,[Actual Cases (CS)] = CASE
									WHEN tmp.[Actual Dollars ($)] <> 0 and tmp.[Actual Cases (CS)] = 0
									THEN CASE
											WHEN lp.[LST_PRC_PER_CASE] <> 0.00 THEN tmp.[Actual Dollars ($)]/lp.[LST_PRC_PER_CASE]
											ELSE 0.000
									    END
									ELSE tmp.[Actual Cases (CS)]
								END
	   ,[Actual Eaches (EA)]  = CASE
									WHEN tmp.[Actual Dollars ($)] <> 0 and tmp.[Actual Eaches (EA)] = 0
									THEN CASE
											WHEN lp.[LST_PRC_PER_UNIT] <> 0.00 THEN tmp.[Actual Dollars ($)]/lp.[LST_PRC_PER_UNIT]
											ELSE 0.000
									     END
									ELSE tmp.[Actual Eaches (EA)]
								END
	   ,lp.UNIT
	   ,tmp.[Actual Pounds (LB)]
	   ,tmp.[Actual Kilos (KG)]
	   ,tmp.[Retail Sales $]
	   ,tmp.[ECC Actual COP $]  
	   ,tmp.[DM Actual COP $]
       ,tmp.[CURRENCY]
	   ,tmp.[SPA (Special Promo Allowance)]
	   ,tmp.[SALE_FLAG]
	FROM(SELECT x.[CUSTOMER]   
	   ,x.[MATERIAL]  
	   ,x.[Mixed Pallet Material]
	   ,x.[Mixed Pallet Flag]  
	   ,x.[Calendar_Week]
	   ,x.[Actual Dollars ($)] 
	   ,x.[Actual Cases (CS)]
	   ,x.[Actual Eaches (EA)]
	   ,x.[Actual Pounds (LB)]
	   ,x.[Actual Kilos (KG)]
	   ,x.[Retail Sales $]
	   ,x.[ECC Actual COP $]  
	   ,x.[DM Actual COP $]
       ,x.[CURRENCY]
	   ,cust.[CHNL_IND] as CHANNEL
	   ,x.[SPA (Special Promo Allowance)]
	   ,x.[SALE_FLAG]
	FROM(SELECT * FROM #pln_to_itm_actYfinal
		UNION ALL
		SELECT * FROM #pln_to_itm_actD
		UNION ALL
		SELECT * FROM #pln_to_itm_actE
		UNION ALL
		SELECT * FROM #pln_to_itm_actNE) x
	LEFT OUTER JOIN [KG_VIEWS].[KNA].[UVW_CUST] cust on cust.CUST_NBR = CUSTOMER)  tmp
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[LST_PRC] lp ON (lp.MATRL = tmp.[Mixed Pallet Material] and lp.[CAL_WK] = tmp.[Calendar_Week]
																	  and tmp.CURRENCY = lp.CURR and tmp.CHANNEL = lp.[CHNL_CUST_GRP] and 
																	  lp.[LST_PRC_PER_CASE]<>0.00)
	--create index on the final table

IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM_ACT')
begin
	CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM_ACT] ON [dbo].[PLN_TO_ITM_ACT] ([CUST],[MATRL],[MIXD_PLT_MATRL],[MIXD_PLT_FLG],[CAL_WK],[CURR],[SALE_FLG])
end
	--Clean Up Final Staging Table

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
end
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
--DELTA LOAD
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
ELSE
begin
	
	 	BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;
	TRUNCATE TABLE [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT]
	INSERT INTO [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT]
	SELECT  tmp.[CUSTOMER]   
	   ,tmp.[MATERIAL]  
	   ,tmp.[Mixed Pallet Material]
	   ,tmp.[Mixed Pallet Flag]  
	   ,tmp.[Calendar_Week]
	   ,tmp.[Actual Dollars ($)]
	   ,[Actual Cases (CS)] = CASE
									WHEN tmp.[Actual Dollars ($)] <> 0 and tmp.[Actual Cases (CS)] = 0
									THEN CASE
											WHEN lp.[LST_PRC_PER_CASE] <> 0.00 THEN tmp.[Actual Dollars ($)]/lp.[LST_PRC_PER_CASE]
											ELSE 0.000
									    END
									ELSE tmp.[Actual Cases (CS)]
								END
	   ,[Actual Eaches (EA)]  = CASE
									WHEN tmp.[Actual Dollars ($)] <> 0 and tmp.[Actual Eaches (EA)] = 0
									THEN CASE
											WHEN lp.[LST_PRC_PER_UNIT] <> 0.00 THEN tmp.[Actual Dollars ($)]/lp.[LST_PRC_PER_UNIT]
											ELSE 0.000
									     END
									ELSE tmp.[Actual Eaches (EA)]
								END
	   ,lp.UNIT
	   ,tmp.[Actual Pounds (LB)]
	   ,tmp.[Actual Kilos (KG)]
	   ,tmp.[Retail Sales $]
	   ,tmp.[ECC Actual COP $]  
	   ,tmp.[DM Actual COP $]
       ,tmp.[CURRENCY]
	   ,tmp.[SPA (Special Promo Allowance)]
	   ,tmp.[SALE_FLAG]
	FROM(SELECT x.[CUSTOMER]   
	   ,x.[MATERIAL]  
	   ,x.[Mixed Pallet Material]
	   ,x.[Mixed Pallet Flag]  
	   ,x.[Calendar_Week]
	   ,x.[Actual Dollars ($)] 
	   ,x.[Actual Cases (CS)]
	   ,x.[Actual Eaches (EA)]
	   ,x.[Actual Pounds (LB)]
	   ,x.[Actual Kilos (KG)]
	   ,x.[Retail Sales $]
	   ,x.[ECC Actual COP $]  
	   ,x.[DM Actual COP $]
       ,x.[CURRENCY]
	   ,cust.[CHNL_IND] as CHANNEL
	   ,x.[SPA (Special Promo Allowance)]
	   ,x.[SALE_FLAG]
	FROM(SELECT * FROM #pln_to_itm_actYfinal
		UNION ALL
		SELECT * FROM #pln_to_itm_actD
		UNION ALL
		SELECT * FROM #pln_to_itm_actE
		UNION ALL
		SELECT * FROM #pln_to_itm_actNE) x
	LEFT OUTER JOIN [KG_VIEWS].[KNA].[UVW_CUST] cust on cust.CUST_NBR = CUSTOMER)  tmp
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[LST_PRC] lp ON (lp.MATRL = tmp.[Mixed Pallet Material] and lp.[CAL_WK] = tmp.[Calendar_Week]
																	  and tmp.CURRENCY = lp.CURR and tmp.CHANNEL = lp.[CHNL_CUST_GRP] and 
																	  lp.[LST_PRC_PER_CASE]<>0.00)	
																	  

	--Select all the records from the staging table into the database.  The staging table will be used for the delta load
	DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] 
	WHERE  EXISTS (SELECT [CUST],[MATRL],[MIXD_PLT_MATRL],[CAL_WK],	[MIXD_PLT_FLG]	,[CURR], [SALE_FLG]
					FROM   [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg
					WHERE  (stg.[CUST] =[KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[CUST] and stg.[MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[MATRL] and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[MIXD_PLT_MATRL]  
					and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[CAL_WK] and stg.[MIXD_PLT_FLG] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[MIXD_PLT_FLG] 
						    and stg.[CURR] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[CURR] and stg.[SALE_FLG] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT].[SALE_FLG]));

	--insert all values into the final table
	INSERT INTO [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT]
	SELECT *
	FROM [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT]
	
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	end
--PRINT N'14:#done ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PLN_TO_ITM_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_PLN_TO_ITM]
		PURPOSE:   To create a reporting table that merges plan to with forecasting and actuals data.
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/01/2018   USCMXJ11         Created.
		
		This stored procedure creates the PLN_TO_ITM_FACT_CAD that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset. Initial logic was created 
		by Joe Wright's team for the TPE project and the logic below was written to those specifications
		with minor fixes to meet the business' specifications. This adds promotion fields to plan to item level for key event
		and promotion type filter required for canada. 

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_PLN_TO_ITM_CAD] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--Timestamps are included for debugging and to test the execution times of each procedure
--PRINT N'00: #Start: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--in order to poperly filter records out and apply the current week we first set variables to reflect what is in UVW_FISC_CAL
DECLARE @curr_week INT
DECLARE @curr_year INT
SET @curr_year =  YEAR(getdate()) 
SET @curr_week = YEAR(getdate())*100 + (SELECT FISC_WK FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT])

DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')

---below logic is to get the closed period max week

DECLARE @CLS_PD VARCHAR(10), @CLS_YR VARCHAR(10),  @CLS_WK VARCHAR(10);
SELECT   @CLS_PD =  FISC_PD-1 ,  @CLS_YR =  FISC_YR FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT]
IF(@CLS_PD < 1) 
BEGIN
	 SET @CLS_PD = 12 
	 SET  @CLS_YR = @CLS_YR - 1
END

SELECT @CLS_WK = FISC_YR*100 + MAX(FISC_WK) FROM KG_VIEWS.KG.UVW_FISC_CAL WHERE FISC_YR = @CLS_YR AND FISC_PD = @CLS_PD GROUP BY FISC_YR

---below temp table required to filter out the only customers requried for the canada region

IF OBJECT_ID ('tempDB..#zm_pln_to_map_cad') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_map_cad;
end
 
select  distinct '0000'+ PLANTO as PLANTO into #zm_pln_to_map_cad  from KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N where LEVEL_A  = 'CANADA L3'


--get full load vs delta load flag

--FULL LOAD, run the full build if there was a BW Full load, else run a delta load for performance tuning.
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------


if (@full_load = 'Y')
begin


---PRINT N'01: #Start Loading the multiprovider master: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Get a distinct list of all records to be used.  This includes getting the list of all unique records that make up the 6 indicator fields from
--the Plan To Item Actual table (Actuals) as well as the TPM60 table (Forecasting)
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_fct_mstr') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_fct_mstr;
end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG]
INTO #zm_pln_to_itm_pln_fct_mstr
FROM ( SELECT [CUST] as [CUSTOMER]
      ,[MATRL] as[MATERIAL]
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,[CAL_WK] as[Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,[CURR] as CURRENCY
	  ,SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT]
	  INNER JOIN #zm_pln_to_map_cad  norm ON ( norm.PLANTO  = [CUST])
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>''
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR]<>''  
UNION ALL

	SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,[CURR] as CURRENCY 
	  ,SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD]
	  INNER JOIN #zm_pln_to_map_cad norm ON (norm.PLANTO  = [CUST])
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>'' 
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR] <>'' ) tmp 


--PRINT N'02: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create unique clustered index ix_pln_to_itm_final on #zm_pln_to_itm_pln_fct_mstr ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY, SALE_FLAG)

--get all the forecasting values for future weeks from the TPM60 calculated table.  Use the current week variable.  This table will be applied to the final join
--conditions in the Fact table
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_gtwk') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_gtwk;
end
SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week] 
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
      ,[CURR] as[CURRENCY] 
	  ,PROMTNS as PROMOTIONS
      ,[PLN_SHIP_USD] as [Plan Ship $]
      ,[PLN_SHIP_LBS] as [Plan Ship LBS]
      ,[PLN_SHIP_EA] as [Plan Ship EA]
      ,[PLN_TOTL_OFF_INVC_USD] as [Plan Total Off Invoice Dollars]
      ,[TOTL_PLN_COST_OF_PROD_USD] as [Total Planned COP $]
      ,[TOTL_PLN_SHIPMNT_CS] as [Total Planned Shipment CS]
      ,[TOTL_PLN_SHIPMNT_KGS] as [Total Planned Shipment Kilos]
      ,[SALE_FLG] as SALE_FLAG
	  INTO #zm_pln_to_itm_pln_gtwk
	  FROM KNA_COMRCL.dbo.ZM_TPM60_CKF_CAD
	  INNER JOIN #zm_pln_to_map_cad norm ON ( norm.PLANTO  = [CUST])
	  WHERE @CLS_WK <[CAL_WK]  -- CHANGED TO THE CLOSED PERIOD WEEK



--PRINT N'03: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_pln_to_itm_final on #zm_pln_to_itm_pln_gtwk ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY,PROMOTIONS)

--Use the multiprovider to create calculated fields that will be used in the final table.
--Use Plan To Item Actual to get all previous values as well as the table that was created previously
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_fct_1') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_fct_1;
end

	SELECT  [CUSTOMER],
	MATERIAL,
     [Mixed Pallet Material]
	 ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
	  ,PROMOTIONS
      ,SUM([< Curr Week: LE Ship $ - Actual Dollars ($)]) as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,SUM([>= Curr Week: LE Ship $ - Plan Ship $]) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,SUM([< Curr Week: LE Ship LBS - Actual Pounds (LB)]) as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,SUM([>= Curr Week: LE Ship LBS - Plan Ship LBS]) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,SUM([< Curr Week: LE Ship Units - Actual Eaches (EA)]) as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,SUM([>= Curr Week: LE Ship Units - Plan Ship EA]) as [>= Curr Week: LE Ship Units - Plan Ship EA]
      ,SUM([Total Planned COP $] ) as [Total Planned COP $]
      ,SUM([< Curr Week: LE COP $ - Actual COP $]) as  [< Curr Week: LE COP $ - Actual COP $]
      ,SUM([>= Curr Week: LE COP $ - Total Planned COP $]) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,SUM([< Curr Week: LE Cases - Actual Cases (CS)]) as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,SUM([>= Curr Week: LE Cases - Total Planned Shipment CS]) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,SUM([Lastest Estimate Missed OI]) as [Lastest Estimate Missed OI]
      ,SUM([Latest Estimate Bill Back Dollars]) as [Latest Estimate Bill Back Dollars]
      ,SUM([Latest Estimate EDLP Bill Back Dollars]) as [Latest Estimate EDLP Bill Back Dollars]
      ,SUM([Latest Estimate Scan Apps Bill Back Dollars]) as [Latest Estimate Scan Apps Bill Back Dollars]
	  ,SUM([Latest Estimate Scan Dollars]) as [Latest Estimate Scan Dollars]
      ,SUM([LE WW$]) as [LE WW$]
      ,SUM([Latest Estimate Total Fixed KMF]) as [Latest Estimate Total Fixed KMF]
      ,SUM([Plan Total Off Invoice Dollars]) as [Plan Total Off Invoice Dollars]
      ,SUM([Actual OI Spend (Not restricted)]*(-1)) as [Actual OI Spend (Not restricted)]
      ,SUM([Plan Total Fixed KMF Spend]) as [Plan Total Fixed KMF Spend]
      ,SUM([Plan Variable KMF Spend]) as [Plan Variable KMF Spend]
	  ,sum([Overlay Amount]) as [Overlay Amount]
	 
	INTO #zm_pln_to_itm_pln_fct_1
 from(
	  select
	   mstr.[CUSTOMER]
	  ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
	  ,mstr.[Mixed Pallet Flag]
      ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
	  ,PROMTNS as PROMOTIONS
	  ,0 as [< Curr Week: LE Ship $ - Actual Dollars ($)]  
      ,0 as [>= Curr Week: LE Ship $ - Plan Ship $]  
      ,0 as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]  
      ,0 as [>= Curr Week: LE Ship LBS - Plan Ship LBS] 
      ,0 as [< Curr Week: LE Ship Units - Actual Eaches (EA)] 
      ,0 as [>= Curr Week: LE Ship Units - Plan Ship EA]   
	  ,ISNULL(tpm.[TOTL_PLN_COST_OF_PROD_USD] ,0) as [Total Planned COP $]
     ,0 as  [< Curr Week: LE COP $ - Actual COP $] 
      ,0 as [>= Curr Week: LE COP $ - Total Planned COP $] 
      ,0 as [< Curr Week: LE Cases - Actual Cases (CS)]  
      ,0 as [>= Curr Week: LE Cases - Total Planned Shipment CS]  
      ,ISNULL([LATST_ESTMT_MISS_OI],0) as [Lastest Estimate Missed OI] 
      ,ISNULL([LATST_ESTMT_BILLBACK_USD],0) as [Latest Estimate Bill Back Dollars] 
      ,ISNULL([LATST_ESTMT_EDLP_BILLBACK_USD],0) as [Latest Estimate EDLP Bill Back Dollars] 
      ,ISNULL([LATST_ESTMT_SCANAPPS_BILLBACK_USD],0) as [Latest Estimate Scan Apps Bill Back Dollars] 
      ,ISNULL([LATST_ESTMT_SCAN_USD],0) as [Latest Estimate Scan Dollars]
      ,ISNULL([LE_WW_USD],0) as [LE WW$] 
      ,ISNULL([LATST_ESTMT_TOTL_FIX_KMF],0) as [Latest Estimate Total Fixed KMF] 
      ,case when @curr_week <=[CAL_WK] then PLN_TOTL_OFF_INVC_USD else 0  end as [Plan Total Off Invoice Dollars]   
      ,0 as [Actual OI Spend (Not restricted)]   
      ,ISNULL([PLN_TOTL_FIX_KMF_SPND],0) as [Plan Total Fixed KMF Spend]  
      ,ISNULL([PLN_VAR_KMF_SPND],0) as [Plan Variable KMF Spend]  
	  ,ISNULL([SCAN_APPS_OL_RT_AMT],0) + ISNULL([OL_AMT],0) as [Overlay Amount]
	FROM  #zm_pln_to_itm_pln_fct_mstr mstr 
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD] tpm ON (tpm.[CUST]  = mstr.CUSTOMER and tpm.[MATRL] = mstr.MATERIAL and tpm.[MIXD_PLT_MATRL] = mstr.[Mixed Pallet Material] 
												and tpm.[CAL_WK]  = mstr.[Calendar Week] and tpm.[MIXD_PLT_FLG]  = mstr.[Mixed Pallet Flag] and  tpm.[CURR] = mstr.CURRENCY and 
												tpm.[SALE_FLG]  = mstr.SALE_FLAG )

	UNION ALL

	  select
	   mstr.[CUSTOMER]
	  ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
	  ,mstr.[Mixed Pallet Flag]
      ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
	  ,'A-#' AS PROMOTIONS
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_USD],0) else 0 end as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,0 as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_LBS],0) else 0 end  as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,0 as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_EA],0) else 0 end  as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,0 as [>= Curr Week: LE Ship Units - Plan Ship EA]
	  ,0 as [Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0)  else 0 end as  [< Curr Week: LE COP $ - Actual COP $]
      ,0 as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_CS],0)  else 0 end as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,0 as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,0 as [Lastest Estimate Missed OI]
      ,0 as [Latest Estimate Bill Back Dollars]
      ,0 as [Latest Estimate EDLP Bill Back Dollars]
      ,0 as [Latest Estimate Scan Apps Bill Back Dollars]
      ,0 as [Latest Estimate Scan Dollars]
      ,0 as [LE WW$]
      ,0 as [Latest Estimate Total Fixed KMF]
      ,0 as [Plan Total Off Invoice Dollars]
      ,ISNULL(pln.[SPCL_PROMTN_ALLWNC],0) as [Actual OI Spend (Not restricted)]
      ,0 as [Plan Total Fixed KMF Spend]
      ,0 as [Plan Variable KMF Spend]
	  ,0 as [Overlay Amount]
	FROM  #zm_pln_to_itm_pln_fct_mstr mstr 
    LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] pln ON (mstr.CUSTOMER = pln.[CUST] and mstr.MATERIAL = pln.[MATRL] and mstr.[Mixed Pallet Material] = pln.[MIXD_PLT_MATRL] 
												and mstr.[Calendar Week] = pln.[CAL_WK] and mstr.[Mixed Pallet Flag] = pln.[MIXD_PLT_FLG] and  mstr.CURRENCY = pln.[CURR] and mstr.SALE_FLAG = pln.SALE_FLG
												and pln.[CAL_WK] < @curr_week)  
	  UNION ALL
         
	   select
	   mstr.[CUSTOMER]
	  ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
	  ,mstr.[Mixed Pallet Flag]
      ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
	  ,gtw.PROMOTIONS
	  ,0 as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,ISNULL(gtw.[Plan Ship $],0) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,0 as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,ISNULL(gtw.[Plan Ship LBS],0) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,0 as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,ISNULL(gtw.[Plan Ship EA],0) as [>= Curr Week: LE Ship Units - Plan Ship EA]
	  ,0 as [Total Planned COP $]
      ,0 as  [< Curr Week: LE COP $ - Actual COP $]
      ,ISNULL(gtw.[Total Planned COP $],0) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,0 as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,ISNULL(gtw.[Total Planned Shipment CS],0) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,0 as [Lastest Estimate Missed OI]
      ,0 as [Latest Estimate Bill Back Dollars]
      ,0 as [Latest Estimate EDLP Bill Back Dollars]
      ,0 as [Latest Estimate Scan Apps Bill Back Dollars]
      ,0 as [Latest Estimate Scan Dollars]
      ,0 as [LE WW$]
      ,0 as [Latest Estimate Total Fixed KMF]
      ,0 as [Plan Total Off Invoice Dollars]
      ,0 as [Actual OI Spend (Not restricted)]
      ,0 as [Plan Total Fixed KMF Spend]
      ,0 as [Plan Variable KMF Spend]
	  ,0 as [Overlay Amount]
	  FROM  #zm_pln_to_itm_pln_fct_mstr mstr 
	  LEFT OUTER JOIN #zm_pln_to_itm_pln_gtwk gtw ON (gtw.CUSTOMER = mstr.CUSTOMER and gtw.MATERIAL = mstr.MATERIAL and gtw.[Mixed Pallet Material] = mstr.[Mixed Pallet Material] 
												and gtw.[Calendar Week] = mstr.[Calendar Week] and gtw.[Mixed Pallet Flag] = mstr.[Mixed Pallet Flag] and  gtw.CURRENCY = mstr.CURRENCY and 
												gtw.[SALE_FLAG]= mstr.SALE_FLAG )
												
	  									
												
												
												
												

	)  EVNT
	group by [CUSTOMER]
	 ,[MATERIAL]
      ,[Mixed Pallet Material]
	  ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
	  ,PROMOTIONS

		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;
--aggregate some fields that will be used in the final table as well as move the final table into the correct format.  Also be sure to filter out any records
--That sum to 0. 
IF EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM_CAD')
begin
	drop index IX_PLN_TO_ITM_CAD on [dbo].PLN_TO_ITM_CAD
end 
TRUNCATE TABLE [KNA_COMRCL].[dbo].PLN_TO_ITM_CAD
INSERT INTO [KNA_COMRCL].[dbo].PLN_TO_ITM_CAD
SELECT 
	   [PLN_TO_NBR], 
       [PLN_TO_NM], 
       [LVL_A], 
	   [LVL_B], 
       [LVL_C], 
	   [LVL_D], 
       [LVL_E], 
	   [TIER_NM], 
       ALL_IN_FLG, 
	   MATRL,
	   [MIXD_PLT_MATRL],
	   [MIXD_PLT_FLG],
	   CURR,
	   [BU], 
	   CATG, 
       [CAN_CATG], 
	   [SUB_CATG], 
	   [PROD_HIER_BRAND],
       [PROD_HIER_BRAND_DESC],
       [PROD_HIER_TYP],
       [PROD_HIER_TYP_DESC],
       FISC_YR, 
	   QTR,
	   [PD_YR], 
	   PD, 
	   CAL_WK,
       SZ,
	   PROMOTIONS,
	   KEY_EVNT,
	   KEY_EVNT_DESC,
	   PROMOTION_TYPE
	  ,sum(ISNULL([LE Ship $],0)) AS [LATST_ESTMT_GSV]
	  ,sum(ISNULL([LE COP $],0)) AS [LATST_ESTMT_COST_OF_PROD_USD]
	  ,sum(ISNULL([LE KMF $],0)) AS [LATST_ESTMT_KMF_USD]
	  ,sum(ISNULL([LE Ship LBS],0)) AS [LATST_ESTMT_SHIP_LBS]
	  ,sum(ISNULL([LE Ship Units],0))  AS [LATST_ESTMT_SHIP_UNITS]
	  ,sum(ISNULL([Total Planned KMF $],0)) AS [PLN_KMF]
	  ,SUM(ISNULL([LE Ship $],0) - ISNULL([LE KMF $],0)) AS [LATST_ESTMT_NSV_PRXY_USD]
      ,SUM(ISNULL([LE Ship $],0) - ISNULL([LE KMF $],0) - ISNULL([LE COP $],0)) AS [LATST_ESTMT_SC_PRXY_USD]
      ,SUM(ISNULL([LE Ship $],0) - ISNULL([LE COP $],0)) AS [LATST_ESTMT_SC_PRXY_USD_GSV]
      ,SUM(ISNULL([LE Cases],0) * ISNULL([STD_PRC],0)) AS [LATST_ESTMT_COST_OF_PROD_USD_FXD]
	 
FROM (SELECT 
		norm.PLANTO AS [PLN_TO_NBR], 
       norm.PT_NAME AS [PLN_TO_NM], 
       norm.LEVEL_A AS [LVL_A], 
	   norm.LEVEL_B AS [LVL_B], 
       norm.LEVEL_C AS [LVL_C], 
	   norm.LEVEL_D AS [LVL_D], 
       norm.LEVEL_E AS [LVL_E], 
	   norm.TIER_NAME AS [TIER_NM], 
       norm.ALL_IN_FLAG AS ALL_IN_FLG, 
	   pln.MATERIAL as MATRL,
	   [Mixed Pallet Material] AS [MIXD_PLT_MATRL],
	   [Mixed Pallet Flag] AS [MIXD_PLT_FLG],
	   [CURRENCY] as CURR,
	   zcust.[/BIC/ZBPC_BUUN] AS [BU], 
	   catg.CHRSTC_VAL AS CATG, 
       can.[Ca Category] as [CAN_CATG], 
	   sub.[CHRSTC_VAL] AS [SUB_CATG], 
	   prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE] as [PROD_HIER_TYP],
       prod_hier.[PROD_HIER_TYPE_DESC] as [PROD_HIER_TYP_DESC],
       fisc_cal.FISC_YR, 
	   fisc_cal.FISC_QTR AS QTR,
	   'P' + CAST(fisc_cal.FISC_PD as varchar) + ' ' + CAST(fisc_cal.FISC_YR as varchar) as [PD_YR], 
	   fisc_cal.FISC_PD AS PD, 
	   [Calendar Week] AS CAL_WK,
       toSize.SIZE as SZ,
	   PROMOTIONS AS PROMOTIONS,
	   [KEY_EVNT] as [KEY_EVNT],
	   [PROMTN_MSTR].KEY_EVNT_DESC as [KEY_EVNT_DESC],
	   CMPGN_DESC as [PROMOTION_TYPE]
	  ,[< Curr Week: LE Ship $ - Actual Dollars ($)]+[>= Curr Week: LE Ship $ - Plan Ship $] as [LE Ship $]
      ,[< Curr Week: LE Ship LBS - Actual Pounds (LB)]+[>= Curr Week: LE Ship LBS - Plan Ship LBS] as [LE Ship LBS]
      ,[< Curr Week: LE Ship Units - Actual Eaches (EA)]+[>= Curr Week: LE Ship Units - Plan Ship EA] as [LE Ship Units]
      ,[Plan Total Fixed KMF Spend]+[Plan Variable KMF Spend] as [Total Planned KMF $]
      ,[LE KMF $] = CASE
						WHEN @curr_week > [Calendar Week] and @curr_year >= floor([Calendar Week]/100)
						THEN [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] - [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
															[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] +[Overlay Amount]
						ELSE [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] + [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
							[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] +[Overlay Amount]
					END
      ,[Total Planned COP $]
      ,[< Curr Week: LE COP $ - Actual COP $]+[>= Curr Week: LE COP $ - Total Planned COP $] as [LE COP $]
      ,[< Curr Week: LE Cases - Actual Cases (CS)]+[>= Curr Week: LE Cases - Total Planned Shipment CS] as [LE Cases]
	  ,std.[STD_PRC]
      FROM #zm_pln_to_itm_pln_fct_1 pln
	  INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = pln.[Calendar Week])
      RIGHT OUTER JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (zcust.[/BIC/ZCUST_MAT] = pln.[CUSTOMER] AND zcust.[MATERIAL] = pln.[MATERIAL] )
	  INNER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N  norm ON ('0000'+ norm.PLANTO  = pln.[CUSTOMER] AND norm.BU = zcust.[/BIC/ZBPC_BUUN] )
      INNER JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON (matrl.MATRL_NBR = pln.[Mixed Pallet Material])
      INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN catg ON (pln.[Mixed Pallet Material] = catg.MATRL_NBR and catg.CHRSTC_NM = 'ALT_CATEGORY')
      INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN sub ON (pln.[Mixed Pallet Material] = sub.MATRL_NBR and sub.CHRSTC_NM = 'ALT_SUB_CATEGORY')
      INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER prod_hier ON (prod_hier.PROD_HIER = matrl.[PROD_HIER])
      LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.TYPE_TOSIZE toSize ON (toSize.TYPE_ID = LEFT(prod_hier.PROD_HIER,14) )
      LEFT OUTER JOIN KNA_COMRCL.dbo.UVW_STD_PRC_MIX std ON (std.MATRL = pln.[Mixed Pallet Material] AND std.CURR = pln.CURRENCY )
      LEFT JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON can.CATEGORY = catg.CHRSTC_VAL 
	  LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PROMTN_MSTR] on PROMOTIONS = [PROMTN_ID]
	  --LEFT OUTER JOIN #zm_promotion_key_event on [KEY_EVNT] collate database_default = [KEY_EVENT] collate database_default 
	  )tmp
	  --where [PLN_TO_NBR]  IS NOT NULL
	  GROUP BY [PLN_TO_NBR], 
       [PLN_TO_NM], 
       [LVL_A], 
	   [LVL_B], 
       [LVL_C], 
	   [LVL_D], 
       [LVL_E], 
	   [TIER_NM], 
       ALL_IN_FLG, 
	   MATRL,
	   [MIXD_PLT_MATRL],
	   [MIXD_PLT_FLG],
	   CURR,
	   [BU], 
	   CATG, 
       [CAN_CATG], 
	   [SUB_CATG], 
	   [PROD_HIER_BRAND],
       [PROD_HIER_BRAND_DESC],
       [PROD_HIER_TYP],
       [PROD_HIER_TYP_DESC],
       FISC_YR, 
	   QTR,
	   [PD_YR], 
	   PD, 
	   CAL_WK,
       SZ,
	   PROMOTIONS,
	   [KEY_EVNT],
	   [KEY_EVNT_DESC],
	   [PROMOTION_TYPE]
	--PRINT N'06 Finish loading agg table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end

	insert into [dbo].PLN_TO_ITM_CAD  select * from [dbo].PLN_TO_ITM_CAD_HIST  where  CAL_WK <= (year(getdate())-1)*100 

	COMMIT TRANSACTION;
	IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM_CAD')
	begin
		CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM_CAD] ON [dbo].PLN_TO_ITM_CAD ([PLN_TO_NBR],MATRL,[MIXD_PLT_MATRL],MIXD_PLT_FLG,CURR,[BU],[CAL_WK],PROMOTIONS)
	end
	--PRINT N'07 full load finished: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	end
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	--DELTA LOAD:  Use if the BW cubes were all deltas
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	else
	begin

--PRINT N'01: Start DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_mstr') IS NOT NULL
	begin
		DROP TABLE #zm_pln_to_itm_delta_mstr;
	end
SELECT DISTINCT [CUSTOMER]
	  ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
    ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG]
INTO #zm_pln_to_itm_delta_mstr
FROM ( SELECT dbo.[CUST] as [CUSTOMER]
     ,dbo.[MATRL] as[MATERIAL]
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,dbo.[CAL_WK] as[Calendar Week]
    ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,dbo.[CURR] as CURRENCY
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  INNER JOIN #zm_pln_to_map_cad  norm ON ( norm.PLANTO  = dbo.[CUST])
	  INNER JOIN [KNA_COMRCL].[STG].[ZM_TPM60] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL 
	  and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG
															 and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>''
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>''
			 and dbo.[CURR]<>'' 
UNION ALL

	SELECT dbo.[CUST] as [CUSTOMER] 
      ,dbo.[MATRL] as [MATERIAL] 
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,dbo.[CAL_WK] as [Calendar Week]
     ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,dbo.[CURR] as CURRENCY 
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD] dbo
	  INNER JOIN #zm_pln_to_map_cad norm ON ( norm.PLANTO  = dbo.[CUST])
	  INNER JOIN [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL
	   and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG 
															and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>'' 
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' 
			and dbo.[CURR] <>'' 
UNION ALL

SELECT dbo.[CUST] as [CUSTOMER]
      ,dbo.[MATRL] as[MATERIAL]
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,dbo.[CAL_WK] as[Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,dbo.[CURR] as CURRENCY
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  INNER JOIN #zm_pln_to_map_cad norm ON ( norm.PLANTO  = dbo.[CUST])
	  INNER JOIN [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL 
	  and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG 
															and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>''
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' 
			and dbo.[CURR]<>'' 
UNION ALL

	SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,[CURR] as CURRENCY 
	  ,SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[STG].[ZM_TPM60_CKF_CAD]
	  INNER JOIN #zm_pln_to_map_cad  norm ON ( norm.PLANTO  = [CUST])
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>'' 
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR] <>'' ) tmp 

--On Monday we need to change the previous weeks data to be actuals and not the forecasting
IF (DATEPART(dw, GETDATE()) = 2)
begin
	IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_mstr_Monday') IS NOT NULL
	begin
		DROP TABLE #zm_pln_to_itm_delta_mstr_Monday;
	end
	SELECT DISTINCT [CUST]
     ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
	  ,[CURR] 
	  ,SALE_FLG 
	  INTO #zm_pln_to_itm_delta_mstr_Monday
	  FROM (SELECT dbo.[CUST]
      ,dbo.[MATRL] 
      ,dbo.[MIXD_PLT_MATRL] 
      ,dbo.[CAL_WK] 
      ,dbo.[MIXD_PLT_FLG] 
	  ,dbo.[CURR] 
	  ,dbo.SALE_FLG 
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	 INNER JOIN #zm_pln_to_map_cad  norm ON ( norm.PLANTO  = dbo.[CUST])
	  WHERE CAL_WK = @curr_week - 1  

	UNION ALL 

	SELECT dbo.[CUST]  
      ,dbo.[MATRL] 
      ,dbo.[MIXD_PLT_MATRL] 
      ,dbo.[CAL_WK] 
     ,dbo.[MIXD_PLT_FLG] 
	  ,dbo.[CURR] 
	  ,dbo.SALE_FLG 
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD] dbo
	  INNER JOIN #zm_pln_to_map_cad norm ON ( norm.PLANTO  = dbo.[CUST])
	  WHERE CAL_WK = @curr_week - 1   ) tmp

	  --Delete any records that would cause the unique index to fail
	  DELETE FROM #zm_pln_to_itm_delta_mstr_Monday 
	  WHERE EXISTS ( SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
     ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG] 
	  FROM #zm_pln_to_itm_delta_mstr mstr 
	  WHERE [CUSTOMER] = [CUST] and [MATERIAL] = [MATRL] 
	  and [Mixed Pallet Material] = [MIXD_PLT_MATRL] and [CAL_WK] = [Calendar Week]
	 and [Mixed Pallet Flag] = [MIXD_PLT_FLG] 
	 and [CURR] =[CURRENCY] and mstr.SALE_FLAG = #zm_pln_to_itm_delta_mstr_Monday.SALE_FLG )


	  --ensure that you delete the previous weeks records
	  DELETE FROM [dbo].PLN_TO_ITM_CAD
	  WHERE EXISTS ( SELECT [dbo].PLN_TO_ITM_CAD.PLN_TO_NBR ,[dbo].PLN_TO_ITM_CAD.MIXD_PLT_MATRL,[dbo].PLN_TO_ITM_CAD.[CAL_WK] ,[dbo].PLN_TO_ITM_CAD.CURR FROM #zm_pln_to_itm_delta_mstr_Monday stg
				WHERE stg.[CUST] = PLN_TO_NBR and stg.[MIXD_PLT_MATRL] = [dbo].PLN_TO_ITM_CAD.MIXD_PLT_MATRL
				and stg.[CAL_WK] = [dbo].PLN_TO_ITM_CAD.CAL_WK
				 and stg.CURR = [dbo].PLN_TO_ITM_CAD.[CURR])

	  --insert the changed records
	  INSERT INTO #zm_pln_to_itm_delta_mstr
	  SELECT * 
	  FROM #zm_pln_to_itm_delta_mstr_Monday
end
--PRINT N'02: Create Master Delta index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create unique clustered index ix_pln_to_itm_final on #zm_pln_to_itm_delta_mstr ([CUSTOMER] ,[MATERIAL]
,[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] 
,CURRENCY, SALE_FLAG)

--PRINT N'03: #index created, start loaded gtw: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--get all the forecasting values for future weeks from the TPM60 calculated table.  Use the current week variable.  This table will be applied to the final join
--conditions in the Fact table
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_gtwk') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_delta_gtwk;
end
SELECT DISTINCT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week] 
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
      ,[CURR] as[CURRENCY] 
      ,[PLN_SHIP_USD] as [Plan Ship $]
      ,[PLN_SHIP_LBS] as [Plan Ship LBS]
      ,[PLN_SHIP_EA] as [Plan Ship EA]
      ,[PLN_TOTL_OFF_INVC_USD] as [Plan Total Off Invoice Dollars]
      ,[TOTL_PLN_COST_OF_PROD_USD] as [Total Planned COP $]
      ,[TOTL_PLN_SHIPMNT_CS] as [Total Planned Shipment CS]
      ,[TOTL_PLN_SHIPMNT_KGS] as [Total Planned Shipment Kilos]
      ,[SALE_FLAG] = CASE
						WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
						WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
						ELSE 'D'
					  END
	, PROMTNS as PROMOTIONS
	  INTO #zm_pln_to_itm_delta_gtwk
	  FROM KNA_COMRCL.dbo.ZM_TPM60_CKF_CAD dbo
	  INNER JOIN #zm_pln_to_itm_delta_mstr mstr ON ([CUSTOMER] = [CUST] and [MATERIAL]= [MATRL] 
	  and [Mixed Pallet Material] = [MIXD_PLT_MATRL] and
		 [Calendar Week] = [CAL_WK] and [Mixed Pallet Flag] = [MIXD_PLT_FLG] 
		 and [CURR]= [CURRENCY])
	  WHERE @CLS_WK < [CAL_WK] 

--PRINT N'04: GTW loaded, create index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_pln_to_itm_final on #zm_pln_to_itm_delta_gtwk ([CUSTOMER] ,[MATERIAL]
,[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag]
 ,CURRENCY,PROMOTIONS)

--PRINT N'05:Start loading prep1' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Use the multiprovider to create calculated fields that will be used in the final table.
--Use Plan To Item Actual to get all previous values as well as the table that was created previously
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_1') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_delta_1;
end

	SELECT  [CUSTOMER],
	  MATERIAL,
     [Mixed Pallet Material]
	 ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
	  ,PROMOTIONS
      ,SUM([< Curr Week: LE Ship $ - Actual Dollars ($)]) as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,SUM([>= Curr Week: LE Ship $ - Plan Ship $]) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,SUM([< Curr Week: LE Ship LBS - Actual Pounds (LB)]) as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,SUM([>= Curr Week: LE Ship LBS - Plan Ship LBS]) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,SUM([< Curr Week: LE Ship Units - Actual Eaches (EA)]) as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,SUM([>= Curr Week: LE Ship Units - Plan Ship EA]) as [>= Curr Week: LE Ship Units - Plan Ship EA]
      ,SUM([Total Planned COP $] ) as [Total Planned COP $]
      ,SUM([< Curr Week: LE COP $ - Actual COP $]) as  [< Curr Week: LE COP $ - Actual COP $]
      ,SUM([>= Curr Week: LE COP $ - Total Planned COP $]) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,SUM([< Curr Week: LE Cases - Actual Cases (CS)]) as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,SUM([>= Curr Week: LE Cases - Total Planned Shipment CS]) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,SUM([Lastest Estimate Missed OI]) as [Lastest Estimate Missed OI]
      ,SUM([Latest Estimate Bill Back Dollars]) as [Latest Estimate Bill Back Dollars]
      ,SUM([Latest Estimate EDLP Bill Back Dollars]) as [Latest Estimate EDLP Bill Back Dollars]
      ,SUM([Latest Estimate Scan Apps Bill Back Dollars]) as [Latest Estimate Scan Apps Bill Back Dollars]
	  ,SUM([Latest Estimate Scan Dollars]) as [Latest Estimate Scan Dollars]
      ,SUM([LE WW$]) as [LE WW$]
      ,SUM([Latest Estimate Total Fixed KMF]) as [Latest Estimate Total Fixed KMF]
      ,SUM([Plan Total Off Invoice Dollars]) as [Plan Total Off Invoice Dollars]
      ,SUM([Actual OI Spend (Not restricted)]*(-1)) as [Actual OI Spend (Not restricted)]
      ,SUM([Plan Total Fixed KMF Spend]) as [Plan Total Fixed KMF Spend]
      ,SUM([Plan Variable KMF Spend]) as [Plan Variable KMF Spend]
	  ,sum([Overlay Amount]) as [Overlay Amount]
	INTO #zm_pln_to_itm_delta_1
 from(
	  select
	   mstr.[CUSTOMER]
	  ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
	  ,mstr.[Mixed Pallet Flag]
      ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
	  ,PROMTNS as PROMOTIONS
	  ,0 as [< Curr Week: LE Ship $ - Actual Dollars ($)]   ------
      ,0 as [>= Curr Week: LE Ship $ - Plan Ship $]  -----
      ,0 as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]   -----
      ,0 as [>= Curr Week: LE Ship LBS - Plan Ship LBS]  -------
      ,0 as [< Curr Week: LE Ship Units - Actual Eaches (EA)]  -----
      ,0 as [>= Curr Week: LE Ship Units - Plan Ship EA]   -----
	  ,ISNULL(tpm.[TOTL_PLN_COST_OF_PROD_USD] ,0) as [Total Planned COP $]
     ,0 as  [< Curr Week: LE COP $ - Actual COP $]   ------
      ,0 as [>= Curr Week: LE COP $ - Total Planned COP $]  ------------------
      ,0 as [< Curr Week: LE Cases - Actual Cases (CS)]   ----------------
      ,0 as [>= Curr Week: LE Cases - Total Planned Shipment CS]   -----------------
      ,ISNULL([LATST_ESTMT_MISS_OI],0) as [Lastest Estimate Missed OI]  ---------
      ,ISNULL([LATST_ESTMT_BILLBACK_USD],0) as [Latest Estimate Bill Back Dollars]  ------------------
      ,ISNULL([LATST_ESTMT_EDLP_BILLBACK_USD],0) as [Latest Estimate EDLP Bill Back Dollars] -------------------
      ,ISNULL([LATST_ESTMT_SCANAPPS_BILLBACK_USD],0) as [Latest Estimate Scan Apps Bill Back Dollars]  ----------------
      ,ISNULL([LATST_ESTMT_SCAN_USD],0) as [Latest Estimate Scan Dollars]
      ,ISNULL([LE_WW_USD],0) as [LE WW$] --------
      ,ISNULL([LATST_ESTMT_TOTL_FIX_KMF],0) as [Latest Estimate Total Fixed KMF]   ------
      ,case when @curr_week <=[CAL_WK] then PLN_TOTL_OFF_INVC_USD else 0  end as [Plan Total Off Invoice Dollars]   --------------------
      ,0 as [Actual OI Spend (Not restricted)]   --------------------
      ,ISNULL([PLN_TOTL_FIX_KMF_SPND],0) as [Plan Total Fixed KMF Spend]  ----
      ,ISNULL([PLN_VAR_KMF_SPND],0) as [Plan Variable KMF Spend]  ---------------
	  ,ISNULL([SCAN_APPS_OL_RT_AMT],0) + ISNULL([OL_AMT],0) as [Overlay Amount]
	FROM  #zm_pln_to_itm_delta_mstr mstr 
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD] tpm ON (tpm.[CUST]  = mstr.CUSTOMER and tpm.[MATRL] = mstr.MATERIAL 
	and tpm.[MIXD_PLT_MATRL] = mstr.[Mixed Pallet Material] 
												and tpm.[CAL_WK]  = mstr.[Calendar Week] and tpm.[MIXD_PLT_FLG]  = mstr.[Mixed Pallet Flag]
												 and  tpm.[CURR] = mstr.CURRENCY and 
												tpm.[SALE_FLG]  = mstr.SALE_FLAG )

	UNION ALL

	  select
	   mstr.[CUSTOMER]
	  ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
	   ,mstr.[Mixed Pallet Flag]
      ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
	  ,'A-#' AS PROMOTIONS
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_USD],0) else 0 end as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,0 as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_LBS],0) else 0 end as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,0 as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_EA],0) else 0 end as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,0 as [>= Curr Week: LE Ship Units - Plan Ship EA]
	  ,0 as [Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as  [< Curr Week: LE COP $ - Actual COP $]
      ,0 as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_CS],0) else 0 end as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,0 as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,0 as [Lastest Estimate Missed OI]
      ,0 as [Latest Estimate Bill Back Dollars]
      ,0 as [Latest Estimate EDLP Bill Back Dollars]
      ,0 as [Latest Estimate Scan Apps Bill Back Dollars]
      ,0 as [Latest Estimate Scan Dollars]
      ,0 as [LE WW$]
      ,0 as [Latest Estimate Total Fixed KMF]
      ,0 as [Plan Total Off Invoice Dollars]
      ,ISNULL(pln.[SPCL_PROMTN_ALLWNC],0) as [Actual OI Spend (Not restricted)]
      ,0 as [Plan Total Fixed KMF Spend]
      ,0 as [Plan Variable KMF Spend]
	  ,0 as [Overlay Amount]
	FROM  #zm_pln_to_itm_delta_mstr mstr 
    LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] pln ON (mstr.CUSTOMER = pln.[CUST] and mstr.MATERIAL = pln.[MATRL] 
	and mstr.[Mixed Pallet Material] = pln.[MIXD_PLT_MATRL] 
												and mstr.[Calendar Week] = pln.[CAL_WK] and mstr.[Mixed Pallet Flag] = pln.[MIXD_PLT_FLG] 
												and  mstr.CURRENCY = pln.[CURR] and mstr.SALE_FLAG = pln.SALE_FLG
												and pln.[CAL_WK] < @curr_week)  
	  UNION ALL
         
	   select
	   mstr.[CUSTOMER]
	  ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
	  ,mstr.[Mixed Pallet Flag]
      ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
	  ,gtw.PROMOTIONS
	  ,0 as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,ISNULL(gtw.[Plan Ship $],0) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,0 as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,ISNULL(gtw.[Plan Ship LBS],0) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,0 as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,ISNULL(gtw.[Plan Ship EA],0) as [>= Curr Week: LE Ship Units - Plan Ship EA]
	  ,0 as [Total Planned COP $]
      ,0 as  [< Curr Week: LE COP $ - Actual COP $]
      ,ISNULL(gtw.[Total Planned COP $],0) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,0 as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,ISNULL(gtw.[Total Planned Shipment CS],0) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,0 as [Lastest Estimate Missed OI]
      ,0 as [Latest Estimate Bill Back Dollars]
      ,0 as [Latest Estimate EDLP Bill Back Dollars]
      ,0 as [Latest Estimate Scan Apps Bill Back Dollars]
      ,0 as [Latest Estimate Scan Dollars]
      ,0 as [LE WW$]
      ,0 as [Latest Estimate Total Fixed KMF]
      ,0 as [Plan Total Off Invoice Dollars]
      ,0 as [Actual OI Spend (Not restricted)]
      ,0 as [Plan Total Fixed KMF Spend]
      ,0 as [Plan Variable KMF Spend]
	  ,0 as [Overlay Amount]
	  FROM  #zm_pln_to_itm_delta_mstr mstr 
	  LEFT OUTER JOIN #zm_pln_to_itm_delta_gtwk gtw ON (gtw.CUSTOMER = mstr.CUSTOMER and gtw.MATERIAL = mstr.MATERIAL
	   and gtw.[Mixed Pallet Material] = mstr.[Mixed Pallet Material] 
												and gtw.[Calendar Week] = mstr.[Calendar Week] and gtw.[Mixed Pallet Flag] = mstr.[Mixed Pallet Flag] 
												and  gtw.CURRENCY = mstr.CURRENCY and 
												gtw.[SALE_FLAG]= mstr.SALE_FLAG )

	)  EVNT
	group by [CUSTOMER]
	 ,[MATERIAL]
      ,[Mixed Pallet Material]
	  ,[Mixed Pallet Flag]
      ,[Calendar Week]
      ,[CURRENCY]
	  ,PROMOTIONS
	

--PRINT N'09: begin final DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))*/
--aggregate some fields that will be used in the final table as well as move the final table into the correct format.  Also be sure to filter out any records
--That sum to 0.  
SELECT  [PLN_TO_NBR], 
       [PLN_TO_NM], 
       [LVL_A], 
	   [LVL_B], 
       [LVL_C], 
	   [LVL_D], 
       [LVL_E], 
	   [TIER_NM], 
       ALL_IN_FLG, 
	   MATRL,
	   [MIXD_PLT_MATRL],
	   [MIXD_PLT_FLG],
	   CURR,
	   [BU], 
	   CATG, 
       [CAN_CATG], 
	   [SUB_CATG], 
	   [PROD_HIER_BRAND],
       [PROD_HIER_BRAND_DESC],
       [PROD_HIER_TYP],
       [PROD_HIER_TYP_DESC],
       FISC_YR, 
	   QTR,
	   [PD_YR], 
	   PD, 
	   CAL_WK,
       SZ,
	   PROMOTIONS,
	   KEY_EVNT,
	   KEY_EVNT_DESC,
	   PROMOTION_TYPE
	  ,sum([LE Ship $]) AS [LATST_ESTMT_GSV]
	  ,sum([LE COP $]) AS [LATST_ESTMT_COST_OF_PROD_USD]
	  ,sum([LE KMF $]) AS [LATST_ESTMT_KMF_USD]
	  ,sum([LE Ship LBS]) AS [LATST_ESTMT_SHIP_LBS]
	  ,sum([LE Ship Units])  AS [LATST_ESTMT_SHIP_UNITS]
	  ,sum([Total Planned KMF $]) AS [PLN_KMF]
	  ,SUM([LE Ship $] - [LE KMF $]) AS [LATST_ESTMT_NSV_PRXY_USD]
      ,SUM([LE Ship $] - [LE KMF $] - [LE COP $]) AS [LATST_ESTMT_SC_PRXY_USD]
      ,SUM([LE Ship $] - [LE COP $]) AS [LATST_ESTMT_SC_PRXY_USD_GSV]
      ,SUM([LE Cases] * [STD_PRC]) AS [LATST_ESTMT_COST_OF_PROD_USD_FXD]
	  INTO #pln_to_itm_final_delta
	  FROM (SELECT 
	   norm.PLANTO AS [PLN_TO_NBR], 
       norm.PT_NAME AS [PLN_TO_NM], 
       norm.LEVEL_A AS [LVL_A], 
	   norm.LEVEL_B AS [LVL_B], 
       norm.LEVEL_C AS [LVL_C], 
	   norm.LEVEL_D AS [LVL_D], 
       norm.LEVEL_E AS [LVL_E], 
	   norm.TIER_NAME AS [TIER_NM], 
       norm.ALL_IN_FLAG AS ALL_IN_FLG, 
	   pln.MATERIAL AS MATRL ,
	   [Mixed Pallet Material] AS [MIXD_PLT_MATRL],
	   pln.[Mixed Pallet Flag] AS [MIXD_PLT_FLG],
	   [CURRENCY] as CURR,
	   zcust.[/BIC/ZBPC_BUUN] AS [BU], 
	   catg.CHRSTC_VAL AS CATG, 
       can.[Ca Category] as [CAN_CATG], 
	   sub.[CHRSTC_VAL] AS [SUB_CATG], 
	   prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE] as [PROD_HIER_TYP],
       prod_hier.[PROD_HIER_TYPE_DESC] as [PROD_HIER_TYP_DESC],
       fisc_cal.FISC_YR, 
	   fisc_cal.FISC_QTR AS QTR,
	   'P' + CAST(fisc_cal.FISC_PD as varchar) + ' ' + CAST(fisc_cal.FISC_YR as varchar) as [PD_YR], 
	   fisc_cal.FISC_PD AS PD, 
	   [Calendar Week] AS CAL_WK,
       toSize.SIZE as SZ,
	   PROMOTIONS AS PROMOTIONS,
	   [KEY_EVNT] as [KEY_EVNT],
	   KEY_EVNT_DESC as [KEY_EVNT_DESC],
	   CMPGN_DESC as [PROMOTION_TYPE]
	  ,[< Curr Week: LE Ship $ - Actual Dollars ($)]+[>= Curr Week: LE Ship $ - Plan Ship $] as [LE Ship $]
      ,[< Curr Week: LE Ship LBS - Actual Pounds (LB)]+[>= Curr Week: LE Ship LBS - Plan Ship LBS] as [LE Ship LBS]
      ,[< Curr Week: LE Ship Units - Actual Eaches (EA)]+[>= Curr Week: LE Ship Units - Plan Ship EA] as [LE Ship Units]
      ,[Plan Total Fixed KMF Spend]+[Plan Variable KMF Spend] as [Total Planned KMF $]
      ,[LE KMF $] = CASE
						WHEN @curr_week > [Calendar Week] and @curr_year >= floor([Calendar Week]/100)
						THEN [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] - [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
															[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] +[Overlay Amount]
						ELSE [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] + [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
							[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] + [Overlay Amount]
					END
      ,[Total Planned COP $]
      ,[< Curr Week: LE COP $ - Actual COP $]+[>= Curr Week: LE COP $ - Total Planned COP $] as [LE COP $]
      ,[< Curr Week: LE Cases - Actual Cases (CS)]+[>= Curr Week: LE Cases - Total Planned Shipment CS] as [LE Cases]
	  ,std.[STD_PRC]
      FROM #zm_pln_to_itm_delta_1 pln
	  INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = pln.[Calendar Week])
      RIGHT OUTER JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (zcust.[/BIC/ZCUST_MAT] = pln.[CUSTOMER] AND zcust.[MATERIAL] = pln.[Mixed Pallet Material] )
	  INNER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N  norm ON ('0000'+ norm.PLANTO  = pln.[CUSTOMER] AND norm.BU = zcust.[/BIC/ZBPC_BUUN] )
      INNER JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON (matrl.MATRL_NBR = pln.[Mixed Pallet Material])
      INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN catg ON (pln.[Mixed Pallet Material] = catg.MATRL_NBR and catg.CHRSTC_NM = 'ALT_CATEGORY')
      INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN sub ON (pln.[Mixed Pallet Material] = sub.MATRL_NBR and sub.CHRSTC_NM = 'ALT_SUB_CATEGORY')
      INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER prod_hier ON (prod_hier.PROD_HIER = matrl.[PROD_HIER])
      LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.TYPE_TOSIZE toSize ON (toSize.TYPE_ID = LEFT(prod_hier.PROD_HIER,14) )
      LEFT OUTER JOIN KNA_COMRCL.dbo.UVW_STD_PRC_MIX std ON (std.MATRL = pln.[Mixed Pallet Material] AND std.CURR = pln.CURRENCY )
      LEFT JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON can.CATEGORY = catg.CHRSTC_VAL 
	  LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PROMTN_MSTR] on PROMOTIONS = [PROMTN_ID]
	  --LEFT OUTER JOIN #zm_promotion_key_event on [KEY_EVNT]  collate database_default = [KEY_EVENT]  collate database_default 
	  )tmp
	  --WHERE [PLN_TO_NBR] IS NOT NULL
	  GROUP BY [PLN_TO_NBR], 
       [PLN_TO_NM], 
       [LVL_A], 
	   [LVL_B], 
       [LVL_C], 
	   [LVL_D], 
       [LVL_E], 
	   [TIER_NM], 
       ALL_IN_FLG,
	   MATRL,
	   [MIXD_PLT_FLG] ,
	   [MIXD_PLT_MATRL],
	   CURR,
	   [BU], 
	   CATG, 
       [CAN_CATG], 
	   [SUB_CATG], 
	   [PROD_HIER_BRAND],
       [PROD_HIER_BRAND_DESC],
       [PROD_HIER_TYP],
       [PROD_HIER_TYP_DESC],
       FISC_YR, 
	   QTR,
	   [PD_YR], 
	   PD, 
	   CAL_WK,
       SZ,
	   PROMOTIONS,
	   [KEY_EVNT],
	   [KEY_EVNT_DESC],
	   [PROMOTION_TYPE]


	  BEGIN TRANSACTION;
	  SAVE TRANSACTION  start_tran;
--PRINT N'08: begin delete and loading of final table' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Delete old records
--delete using delta from tpm60 and data that has been updated


	DELETE FROM [dbo].PLN_TO_ITM_CAD
WHERE EXISTS ( select 	
PLN_TO_ITM_CAD.PLN_TO_NBR,PLN_TO_ITM_CAD.MATRL,
PLN_TO_ITM_CAD.MIXD_PLT_MATRL,PLN_TO_ITM_CAD.CURR,
PLN_TO_ITM_CAD.CAL_WK,PLN_TO_ITM_CAD.MIXD_PLT_FLG from #pln_to_itm_final_delta
where #pln_to_itm_final_delta.PLN_TO_NBR = PLN_TO_ITM_CAD.PLN_TO_NBR 
and #pln_to_itm_final_delta.MATRL = PLN_TO_ITM_CAD.MATRL
and #pln_to_itm_final_delta.MIXD_PLT_MATRL = PLN_TO_ITM_CAD.MIXD_PLT_MATRL
and #pln_to_itm_final_delta.MIXD_PLT_FLG = PLN_TO_ITM_CAD.MIXD_PLT_FLG
and #pln_to_itm_final_delta.CURR =  PLN_TO_ITM_CAD.CURR and #pln_to_itm_final_delta.CAL_WK = PLN_TO_ITM_CAD.CAL_WK)
--insert all appropriate records into the final table


INSERT INTO [dbo].PLN_TO_ITM_CAD
SELECT * 
FROM #pln_to_itm_final_delta --WHERE [PLN_TO_NBR] IS NOT NULL

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	--PRINT N'06: DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	
	end

END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PLN_TO_ITM_WK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/******************************************************************************
		NAME:      [USP_PROC_PLN_TO_ITM_WK]
		PURPOSE:   To create a reporting table that merges plan to with forecasting and actuals data.
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/12/2018   USCMXJ11         Created.
		
		This stored procedure creates the USP_PLN_TO_ITM_FACT_WK that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset. Initial logic was created 
		by Joe Wright's team for the TPE project and the logic below was written to those specifications
		with minor fixes to meet the business' specifications

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_PLN_TO_ITM_WK] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--Timestamps are included for debugging and to test the execution times of each procedure
--PRINT N'00: #Start: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--in order to poperly filter records out and apply the current week we first set variables to reflect what is in UVW_FISC_CAL
DECLARE @curr_week INT
DECLARE @curr_year INT
SET @curr_year =  YEAR(getdate()) 
SET @curr_week = YEAR(getdate())*100 + (SELECT FISC_WK FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT])

IF OBJECT_ID ('tempDB..#zm_pln_to_map') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_map;
end

select  distinct '0000'+ PLANTO as PLANTO into #zm_pln_to_map  from KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N


DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')

DECLARE @CLS_PD VARCHAR(10), @CLS_YR VARCHAR(10),  @CLS_WK VARCHAR(10);
SELECT   @CLS_PD =  FISC_PD-1 ,  @CLS_YR =  FISC_YR FROM KG_VIEWS.KG.UVW_FISC_CAL
					WHERE CAST(GETDATE() as Date) BETWEEN [FISC_WK_STRT_DT] and [FISC_WK_END_DT] or CAST(GETDATE() as Date) = [FISC_WK_STRT_DT]
IF(@CLS_PD < 1) 
BEGIN
	 SET @CLS_PD = 12 
	 SET  @CLS_YR = @CLS_YR - 1
END

SELECT @CLS_WK = FISC_YR*100 + MAX(FISC_WK) FROM KG_VIEWS.KG.UVW_FISC_CAL WHERE FISC_YR = @CLS_YR AND FISC_PD = @CLS_PD GROUP BY FISC_YR


--get full load vs delta load flag

--FULL LOAD, run the full build if there was a BW Full load, else run a delta load for performance tuning.
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
if (@full_load = 'Y')
begin


---PRINT N'01: #Start Loading the multiprovider master: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Get a distinct list of all records to be used.  This includes getting the list of all unique records that make up the 6 indicator fields from
--the Plan To Item Actual table (Actuals) as well as the TPM60 table (Forecasting)
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_fct_mstr') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_fct_mstr;
end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG]
INTO #zm_pln_to_itm_pln_fct_mstr
FROM ( SELECT [CUST] as [CUSTOMER]
      ,[MATRL] as[MATERIAL]
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,[CAL_WK] as[Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,[CURR] as CURRENCY
	  ,SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT]
	  INNER JOIN  #zm_pln_to_map  norm ON ( norm.PLANTO  = [PLN_TO_ITM_ACT].[CUST])
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>''
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR]<>''
UNION ALL

	SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,[CURR] as CURRENCY 
	  ,SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF]
	  INNER JOIN #zm_pln_to_map  norm ON ( norm.PLANTO  = [CUST])
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>'' 
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR] <>''   ) tmp 


--PRINT N'02: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create unique clustered index ix_pln_to_itm_final on #zm_pln_to_itm_pln_fct_mstr ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY, SALE_FLAG)

--get all the forecasting values for future weeks from the TPM60 calculated table.  Use the current week variable.  This table will be applied to the final join
--conditions in the Fact table
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_gtwk') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_gtwk;
end
SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week] 
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
      ,[CURR] as[CURRENCY] 
      ,[PLN_SHIP_USD] as [Plan Ship $]
      ,[PLN_SHIP_LBS] as [Plan Ship LBS]
      ,[PLN_SHIP_EA] as [Plan Ship EA]
      ,[PLN_TOTL_OFF_INVC_USD] as [Plan Total Off Invoice Dollars]
      ,[TOTL_PLN_COST_OF_PROD_USD] as [Total Planned COP $]
      ,[TOTL_PLN_SHIPMNT_CS] as [Total Planned Shipment CS]
      ,[TOTL_PLN_SHIPMNT_KGS] as [Total Planned Shipment Kilos]
      ,[SALE_FLG] as SALE_FLAG
	  INTO #zm_pln_to_itm_pln_gtwk
	  FROM KNA_COMRCL.dbo.ZM_TPM60_CKF
	  INNER JOIN #zm_pln_to_map norm ON ( norm.PLANTO  = [CUST])
	  WHERE @CLS_WK < [CAL_WK] 

--PRINT N'03: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_pln_to_itm_final on #zm_pln_to_itm_pln_gtwk ([CUSTOMER] ,[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag] ,CURRENCY)

--Use the multiprovider to create calculated fields that will be used in the final table.
--Use Plan To Item Actual to get all previous values as well as the table that was created previously
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_pln_fct_1') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_pln_fct_1;
end
SELECT  mstr.[CUSTOMER]
      ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
      ,mstr.[Mixed Pallet Flag]
	  ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
      ,ISNULL([PLN_BASE_LBS],0) as [Plan Base LBS]
      ,ISNULL([PLN_INCR_LBS],0) as [Plan Incr LBS]
      ,ISNULL([PLN_BASE_UNITS],0) as [Plan Base Units]
      ,ISNULL([PLN_INCR_UNITS],0) as [Plan Incr Units]
      ,ISNULL([PLN_BASE_RTL_USD],0) as [Plan Base Ret $'s]
      ,ISNULL([PLN_INCR_RTL_USD] ,0) as [Plan Incr Ret $'s]
      ,ISNULL([PLN_BASE_USD] ,0) as [Plan Base $]
      ,ISNULL([PLN_INCR_SHIP_USD],0) as [Plan Incr Ship $]
      ,ISNULL(tpm.[PLN_SHIP_USD],0) as [Plan Ship $]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_CS],0) as [Plan Ship CS]
      ,ISNULL(tpm.[PLN_SHIP_LBS],0) as [Plan Ship LBS]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_KGS],0) as [Plan Ship KG]
      ,ISNULL(tpm.[PLN_SHIP_EA],0) as [Plan Ship EA]
	  ,case when pln.[CAL_WK] <= @CLS_WK then  ISNULL([ACTL_USD],0) else 0 end as [Actual Ship $]
	  ,case when pln.[CAL_WK] <= @CLS_WK then  ISNULL([ACTL_CS],0) else 0 end as [Actual Ship CS]
	  ,case when pln.[CAL_WK] <= @CLS_WK then  ISNULL([ACTL_LBS],0) else 0 end as [Actual Ship LBS]
	  ,case when pln.[CAL_WK] <= @CLS_WK then  ISNULL([ACTL_EA],0) else 0 end  as [Actual Ship Units]
	  ,case when pln.[CAL_WK] <= @CLS_WK then  ISNULL([ACTL_KGS],0) else 0 end as [Actual Ship KG]
	  ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as [Actual COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_USD],0) else 0 end as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,ISNULL(gtw.[Plan Ship $],0) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_LBS],0) else 0 end as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,ISNULL(gtw.[Plan Ship LBS],0) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_EA],0) else 0 end as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,ISNULL(gtw.[Plan Ship EA],0) as [>= Curr Week: LE Ship Units - Plan Ship EA]
      ,ISNULL(tpm.[TOTL_PLN_COST_OF_PROD_USD] ,0) as [Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as  [< Curr Week: LE COP $ - Actual COP $]
      ,ISNULL(gtw.[Total Planned COP $],0) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_CS],0) else 0  end as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,ISNULL(gtw.[Total Planned Shipment CS],0) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_KGS],0) else 0 end as [< Curr Week: LE Kilos - Actual Kilograms (KG)]
      ,ISNULL(gtw.[Total Planned Shipment Kilos],0) as [>= Curr Week: LE Kilos - Total Planned Shipment Kilos]
      ,ISNULL([PLN_BASE_CS],0) as [Plan Base Cases]
      ,ISNULL([PLN_INCR_CS],0) as [Plan Incr Cases]
      ,ISNULL([PLN_INCR_SHIP_CS],0) as [Plan Incr Ship Cases]
      ,ISNULL([PLN_INCR_SHIP_UNITS],0) as [Plan Incr Ship Units]
      ,ISNULL([PLN_INCR_SHIP_LBS],0) as [Plan Incr Ship LBS]
      ,ISNULL([PLN_INCR_SHIP_KG],0) as [Plan Incr Ship Kilos]
      ,ISNULL([SUGSTD_BASE_VOL_SAS],0) as [Suggested Base Volume (SAS)]
      ,ISNULL([SUGSTD_SHLF_PRC_SAS],0) as [Suggested Shelf Price (SAS)]
      ,ISNULL([LATST_ESTMT_MISS_OI],0) as [Lastest Estimate Missed OI]
      ,ISNULL([LATST_ESTMT_BILLBACK_USD],0) as [Latest Estimate Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_EDLP_BILLBACK_USD],0) as [Latest Estimate EDLP Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCANAPPS_BILLBACK_USD],0) as [Latest Estimate Scan Apps Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCAN_USD],0) as [Latest Estimate Scan Dollars]
      ,ISNULL([LE_WW_USD],0) as [LE WW$]
      ,ISNULL([LATST_ESTMT_TOTL_FIX_KMF],0) as [Latest Estimate Total Fixed KMF]
      ,case when @curr_week <=tpm.[CAL_WK] then  ISNULL(tpm.PLN_TOTL_OFF_INVC_USD,0) else 0 end as [Plan Total Off Invoice Dollars]
      ,ISNULL(pln.[SPCL_PROMTN_ALLWNC]*(-1),0) as [Actual OI Spend (Not restricted)]
      ,ISNULL([PLN_TOTL_FIX_KMF_SPND],0) as [Plan Total Fixed KMF Spend]
      ,ISNULL([PLN_VAR_KMF_SPND],0) as [Plan Variable KMF Spend]
	  ,ISNULL([SCAN_APPS_OL_RT_AMT],0) + ISNULL([OL_AMT],0) as [Overlay Amount]
	INTO #zm_pln_to_itm_pln_fct_1
	FROM  #zm_pln_to_itm_pln_fct_mstr mstr 
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] tpm ON (tpm.[CUST]  = mstr.CUSTOMER and tpm.[MATRL] = mstr.MATERIAL and tpm.[MIXD_PLT_MATRL] = mstr.[Mixed Pallet Material] 
												and tpm.[CAL_WK]  = mstr.[Calendar Week] and tpm.[MIXD_PLT_FLG]  = mstr.[Mixed Pallet Flag] and  tpm.[CURR] = mstr.CURRENCY and 
												tpm.[SALE_FLG]  = mstr.SALE_FLAG )
	LEFT OUTER JOIN #zm_pln_to_itm_pln_gtwk gtw ON (gtw.CUSTOMER = mstr.CUSTOMER and gtw.MATERIAL = mstr.MATERIAL and gtw.[Mixed Pallet Material] = mstr.[Mixed Pallet Material] 
												and gtw.[Calendar Week] = mstr.[Calendar Week] and gtw.[Mixed Pallet Flag] = mstr.[Mixed Pallet Flag] and  gtw.CURRENCY = mstr.CURRENCY and 
												gtw.[SALE_FLAG]= mstr.SALE_FLAG )
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] pln ON (mstr.CUSTOMER = pln.[CUST] and mstr.MATERIAL = pln.[MATRL] and mstr.[Mixed Pallet Material] = pln.[MIXD_PLT_MATRL] 
												and mstr.[Calendar Week] = pln.[CAL_WK] and mstr.[Mixed Pallet Flag] = pln.[MIXD_PLT_FLG] and  mstr.CURRENCY = pln.[CURR] and mstr.SALE_FLAG = pln.SALE_FLG
												and pln.[CAL_WK] < @curr_week)
	
--PRINT N'05: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;
--aggregate some fields that will be used in the final table as well as move the final table into the correct format.  Also be sure to filter out any records
--That sum to 0. 
IF EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM_WK')
begin
	drop index IX_PLN_TO_ITM_WK on KNA_COMRCL.[dbo].[PLN_TO_ITM_WK]
end 
TRUNCATE TABLE KNA_COMRCL.[dbo].[PLN_TO_ITM_WK]
INSERT INTO KNA_COMRCL.[dbo].[PLN_TO_ITM_WK]
SELECT [PLN_TO_NBR]
       ,[PLN_TO_NM]
       ,[LVL_A] 
       ,[LVL_B] 
       ,[LVL_C] 
       ,[LVL_D] 
       ,[LVL_E] 
       ,[TIER_NM]
       ,ALL_IN_FLG
	   ,MATRL
	   ,[Mixed Pallet Material]
	   ,MIXD_PLT_FLG
	   ,[MIXD_PLT_MATRL_DESC]
	   ,[CURRENCY]
       ,[BU]
       ,CATG
       ,[CAN_CATG]
       ,[SUB_CATG]
	   ,ALT_SEGMENT
       ,[PROD_HIER_BRAND]
       ,[PROD_HIER_BRAND_DESC]
       ,[PROD_HIER_TYP]
       ,[PROD_HIER_TYP_DESC]
	   ,FISC_YR
       ,QTR
       ,[PD_YR]
       ,PD
       ,CAL_WK
       ,SUBSTRING(CAST(CAL_WK AS VARCHAR(10)),5,2) as WK
	   ,SZ
	  ,sum([Actual COP $])
	  ,sum([Actual Ship CS])
	  ,sum([Actual Ship KG])
	  ,sum([Actual Ship LBS])
      ,sum([Actual Ship Units])
      ,sum([Actual Ship $])
	  ,sum([Actual Ship $] - [LE KMF $]) AS ACT_NSV_PRXY_USD
	  ,sum([Actual Ship $] - [LE KMF $] - [Actual COP $]) as ACT_SC_PRXY_USD
	  ,SUM([LE COP $]) AS [LATST_ESTMT_COST_OF_PROD_USD]
	  ,SUM([LE Cases])  AS [LATST_ESTMT_COST_OF_PROD_USD_FXD]
	  ,SUM([LE Ship $]) AS [LATST_ESTMT_GSV]
      ,SUM([LE KMF $]) AS [LATST_ESTMT_KMF_USD]
	  ,SUM([LE Ship $] - [LE KMF $]) AS [LATST_ESTMT_NSV_PRXY_USD]
      ,SUM([LE Ship $] - [LE KMF $]- [LE COP $]) AS [LATST_ESTMT_SC_PRXY_USD]
      ,SUM([LE Ship $] - [LE COP $]) AS [LATST_ESTMT_SC_PRXY_USD_GSV]
      ,SUM([LE Ship LBS]) AS [LATST_ESTMT_SHIP_LBS]
      ,SUM([LE Ship Units]) AS [LATST_ESTMT_SHIP_UNITS]
	  ,sum([LE Cases])
	  ,sum([LE Kilos])
	  ,sum(ISNULL([LE Cases] * PRICING_CHANGES,0)) as [LE_PRICE_CHNG_USD]
	  ,sum(ISNULL([LE Cases] * STD_PRC,0)) as [LE_COP_FIXED]
      ,sum([Plan Base Cases])
	  ,sum([Plan Base LBS])
      ,sum([Plan Base Ret $'s])
      ,sum([Plan Base Units])
      ,sum([Plan Base $])
      ,sum([Plan Incr Cases])
	  ,sum([Plan Incr LBS])
      ,sum([Plan Incr Ret $'s])
      ,sum([Plan Incr Units])
      ,sum(ISNULL([Plan Incr Units] * LST_PRC_PER_CASE,0)) as PLN_INC_USD
	  ,sum([Plan Base LBS] + [Plan Incr LBS]) as PLN_CONS_LBS
	  ,sum([Plan Base Ret $'s] + [Plan Incr Ret $'s]) as PLN_CONS_RTN_USD
	  ,sum([Plan Base Units] + [Plan Incr Units] ) as PLN_CONS_UNITS
	  ,sum(ISNULL([Plan Base $] + ([Plan Incr Units] * LST_PRC_PER_CASE),0)) PLN_CONS_USD
      ,sum([Plan Incr Ship Cases])
      ,sum([Plan Incr Ship Kilos])
	  ,sum([Plan Incr LBS])
      ,sum([Plan Incr Ship Units])
      ,sum([Plan Incr Ship $])
	  ,sum([Total Planned KMF $]) as PLN_KMF
      ,sum([Plan Ship CS])
	  ,sum([Plan Ship EA])
      ,sum([Plan Ship KG])
      ,sum([Plan Ship LBS])
      ,sum([Plan Ship $])
	  ,sum([Total Planned COP $])
	  ,sum( [Plan Ship $] - [Total Planned KMF $]) as PLN_NSV_PRXY_USD
	  ,sum( [Plan Ship $] - [Total Planned KMF $] -[Total Planned COP $] ) as PLN_SC_PRXY_USD
	  ,sum([Suggested Base Volume (SAS)])as SUGSTD_BASE_VOL_SAS
	  ,sum([Suggested Shelf Price (SAS)]) as SUGSTD_SHLF_PRC_SAS	
FROM (SELECT 
	   norm.PLANTO AS [PLN_TO_NBR], 
       norm.PT_NAME AS [PLN_TO_NM], 
       norm.LEVEL_A AS [LVL_A], 
       norm.LEVEL_B AS [LVL_B], 
       norm.LEVEL_C AS [LVL_C], 
       norm.LEVEL_D AS [LVL_D], 
       norm.LEVEL_E AS [LVL_E], 
       norm.TIER_NAME AS [TIER_NM], 
       norm.ALL_IN_FLAG AS ALL_IN_FLG, 
	   #zm_pln_to_itm_pln_fct_1.MATERIAL as MATRL,
	   [Mixed Pallet Material] as [Mixed Pallet Material],
	   matrl.MATRL_DESC as [MIXD_PLT_MATRL_DESC],
       zcust.[/BIC/ZBPC_BUUN] as [BU], 
	   catg.CHRSTC_VAL AS CATG, 
       can.[Ca Category] as [CAN_CATG], 
       sub.[CHRSTC_VAL] AS [SUB_CATG], 
	   seg.[CHRSTC_VAL] AS ALT_SEGMENT, 
       prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE] as [PROD_HIER_TYP], 
       prod_hier.[PROD_HIER_TYPE_DESC] as [PROD_HIER_TYP_DESC] ,
	  [BRAND_PRTY_NUM] as [GGS Brand Priority Number],
	  [BRAND_PRTY] as [GGS Brand Priority],
      [SUB_PRTY] as [GGS Brand Sub Priority],
       fisc_cal.FISC_YR, 
       fisc_cal.FISC_QTR AS QTR,
       'P' + CAST(fisc_cal.FISC_PD as varchar) + ' ' + CAST(fisc_cal.FISC_YR as varchar) as [PD_YR], 
       fisc_cal.FISC_PD AS PD, 
       toSize.SIZE as SZ, 
	   [Mixed Pallet Flag] AS MIXD_PLT_FLG
      ,[Calendar Week] as CAL_WK
      ,[CURRENCY]
      ,[Plan Base LBS]
      ,[Plan Incr LBS]
      ,[Plan Base Units]
      ,[Plan Incr Units]
      ,[Plan Base Ret $'s]
      ,[Plan Incr Ret $'s]
      ,[Plan Base $]
      ,[Plan Incr Ship $]
      ,[Plan Ship CS]
      ,[Plan Ship $]
      ,[Plan Ship LBS]
      ,[Plan Ship KG]
      ,[Plan Ship EA]
      ,[Actual Ship $]
      ,[Actual Ship CS]
      ,[Actual Ship LBS]
      ,[Actual Ship Units]
      ,[Actual Ship KG]
      ,[< Curr Week: LE Ship $ - Actual Dollars ($)]+[>= Curr Week: LE Ship $ - Plan Ship $] as [LE Ship $]
      ,[< Curr Week: LE Ship LBS - Actual Pounds (LB)]+[>= Curr Week: LE Ship LBS - Plan Ship LBS] as [LE Ship LBS]
      ,[< Curr Week: LE Ship Units - Actual Eaches (EA)]+[>= Curr Week: LE Ship Units - Plan Ship EA] as [LE Ship Units]
      ,[Plan Total Fixed KMF Spend]+[Plan Variable KMF Spend] as [Total Planned KMF $]
      ,[LE KMF $] = CASE
						WHEN @curr_week > [Calendar Week] and @curr_year >= floor([Calendar Week]/100)
						THEN [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] - [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
															[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] + [Overlay Amount]
						ELSE [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] + [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
							[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] + [Overlay Amount]
					END
      ,[Total Planned COP $]
      ,[Actual COP $]
      ,[< Curr Week: LE COP $ - Actual COP $]+[>= Curr Week: LE COP $ - Total Planned COP $] as [LE COP $]
      ,[< Curr Week: LE Cases - Actual Cases (CS)]+[>= Curr Week: LE Cases - Total Planned Shipment CS] as [LE Cases]
      ,[< Curr Week: LE Kilos - Actual Kilograms (KG)]+[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] as [LE Kilos]
	  , lp.PRICING_CHANGES
	  ,lp.LST_PRC_PER_CASE
	  ,std.STD_PRC
      ,[Plan Base Cases]
      ,[Plan Incr Cases]
      ,[Plan Incr Ship Cases]
      ,[Plan Incr Ship Units]
      ,[Plan Incr Ship LBS]
      ,[Plan Incr Ship Kilos]
      ,[Suggested Base Volume (SAS)]
      ,[Suggested Shelf Price (SAS)]
	  FROM #zm_pln_to_itm_pln_fct_1 INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = [Calendar Week])
	   INNER JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (zcust.[/BIC/ZCUST_MAT] = CUSTOMER AND zcust.[MATERIAL] = #zm_pln_to_itm_pln_fct_1.[MATERIAL] )
	   INNER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N  norm ON ('0000'+ norm.PLANTO  = CUSTOMER AND norm.BU = zcust.[/BIC/ZBPC_BUUN] )
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON (matrl.MATRL_NBR = #zm_pln_to_itm_pln_fct_1.[Mixed Pallet Material])
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN catg ON ([Mixed Pallet Material] = catg.MATRL_NBR and catg.CHRSTC_NM = 'ALT_CATEGORY')
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN sub ON ([Mixed Pallet Material] = sub.MATRL_NBR and sub.CHRSTC_NM = 'ALT_SUB_CATEGORY')
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN seg ON ([Mixed Pallet Material] = seg.MATRL_NBR and seg.CHRSTC_NM = 'ALT_MARKET_SEG')
	   INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER prod_hier ON (prod_hier.PROD_HIER = matrl.[PROD_HIER])
	   LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.TYPE_TOSIZE toSize ON (toSize.TYPE_ID = LEFT(prod_hier.PROD_HIER,14) )
	   LEFT OUTER JOIN KNA_COMRCL.dbo.UVW_STD_PRC_MIX std ON (std.MATRL = [Mixed Pallet Material] AND std.CURR = CURRENCY )
	   LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON can.CATEGORY = catg.CHRSTC_VAL
	   LEFT OUTER JOIN  [KNA_EXTERNAL].[USER_SALES].[GRNULR_GWTH] on [BRAND_ID] = prod_hier.PROD_HIER_BRAND
	   LEFT OUTER JOIN  [KG_VIEWS].[KNA].[UVW_CUST] cust ON CUSTOMER = cust.CUST_NBR
	   LEFT OUTER JOIN [KNA_COMRCL].[dbo].UVW_LST_PRC_CHNG lp ON (lp.MATRL = [Mixed Pallet Material] and lp.[CAL_WK] = [Calendar Week]
																	  and CURRENCY = lp.CURR and cust.[CHNL_IND] = lp.[CHNL_CUST_GRP] and 
																	  lp.[LST_PRC_PER_CASE]<>0.00)
	   )tmp
	  -- WHERE [PLN_TO_NBR] IS NOT NULL
	  GROUP BY [PLN_TO_NBR]
       ,[PLN_TO_NM]
       ,[LVL_A] 
       ,[LVL_B] 
       ,[LVL_C] 
       ,[LVL_D] 
       ,[LVL_E] 
       ,[TIER_NM]
       ,ALL_IN_FLG
	   ,MATRL
	   ,[Mixed Pallet Material]
	   ,MIXD_PLT_FLG
	   ,[CURRENCY]
       ,[BU]
       ,CATG
       ,[CAN_CATG]
       ,[SUB_CATG]
	   ,ALT_SEGMENT
       ,[PROD_HIER_BRAND]
       ,[PROD_HIER_BRAND_DESC]
       ,[PROD_HIER_TYP]
       ,[PROD_HIER_TYP_DESC]
	   ,FISC_YR
       ,QTR
       ,[PD_YR]
       ,PD
       ,CAL_WK
       ,SZ,[MIXD_PLT_MATRL_DESC]

	--PRINT N'06 Finish loading agg table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	
	insert into [dbo].[PLN_TO_ITM_WK]  select * from [dbo].[PLN_TO_ITM_WK_HIST]  where  CAL_WK <= (year(getdate())-1)*100 


	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_PLN_TO_ITM_WK')
	begin
		CREATE UNIQUE CLUSTERED INDEX IX_PLN_TO_ITM_WK ON [dbo].[PLN_TO_ITM_WK] ([PLN_TO_NBR],MATRL,[MIXD_PLT_MATRL],[MIXD_PLT_FLG],[CAL_WK],[CURR],BU)
	end

	--insert into dbo.PLN_TO_ITM select * from dbo.PLN_TO_ITM_HIST where  CAL_WK <= (year(getdate())-1)*100

	--PRINT N'07 full load finished: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	end
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	--DELTA LOAD:  Use if the BW cubes were all deltas
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------
	else
	begin

--PRINT N'01: Start DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_mstr') IS NOT NULL
	begin
		DROP TABLE #zm_pln_to_itm_delta_mstr;
	end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG]
INTO #zm_pln_to_itm_delta_mstr
FROM ( SELECT dbo.[CUST] as [CUSTOMER]
      ,dbo.[MATRL] as[MATERIAL]
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,dbo.[CAL_WK] as[Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,dbo.[CURR] as CURRENCY
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  INNER JOIN [KNA_COMRCL].[STG].[ZM_TPM60] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>''
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' and dbo.[CURR]<>''
UNION ALL

	SELECT dbo.[CUST] as [CUSTOMER] 
      ,dbo.[MATRL] as [MATERIAL] 
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,dbo.[CAL_WK] as [Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,dbo.[CURR] as CURRENCY 
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] dbo
	  INNER JOIN [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>'' 
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' and dbo.[CURR] <>'' 
UNION ALL

SELECT dbo.[CUST] as [CUSTOMER]
      ,dbo.[MATRL] as[MATERIAL]
      ,dbo.[MIXD_PLT_MATRL] as [Mixed Pallet Material]
      ,dbo.[CAL_WK] as[Calendar Week]
      ,dbo.[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,dbo.[CURR] as CURRENCY
	  ,dbo.SALE_FLG as SALE_FLAG
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  INNER JOIN [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg ON (dbo.CUST = stg.CUST and dbo.MATRL = stg.MATRL and dbo.MIXD_PLT_MATRL = stg.MIXD_PLT_MATRL
															and dbo.MIXD_PLT_FLG = stg.MIXD_PLT_FLG and stg.CURR = dbo.CURR and stg.CAL_WK = dbo.CAL_WK)
	  WHERE dbo.[CUST] <>'' and dbo.[MATRL] <>'' and dbo.[MIXD_PLT_MATRL] <>''
			and dbo.[CAL_WK] IS NOT NULL and dbo.[MIXD_PLT_FLG] <>'' and dbo.[CURR]<>''
UNION ALL

	SELECT [CUST] as [CUSTOMER] 
      ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
	  ,[CURR] as CURRENCY 
	  ,SALE_FLG as SALE_FLAG
	  FROM [KNA_COMRCL].[STG].[ZM_TPM60_CKF]
	  WHERE [CUST] <>'' and [MATRL] <>'' and [MIXD_PLT_MATRL] <>'' 
			and [CAL_WK] IS NOT NULL and [MIXD_PLT_FLG] <>'' and [CURR] <>'' ) tmp 

--On Monday we need to change the previous weeks data to be actuals and not the forecasting
IF (DATEPART(dw, GETDATE()) = 2)
begin
	IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_mstr_Monday') IS NOT NULL
	begin
		DROP TABLE #zm_pln_to_itm_delta_mstr_Monday;
	end
	SELECT DISTINCT [CUST]
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
	  ,[CURR] 
	  ,SALE_FLG 
	  INTO #zm_pln_to_itm_delta_mstr_Monday
	  FROM (SELECT dbo.[CUST]
      ,dbo.[MATRL] 
      ,dbo.[MIXD_PLT_MATRL] 
      ,dbo.[CAL_WK] 
      ,dbo.[MIXD_PLT_FLG] 
	  ,dbo.[CURR] 
	  ,dbo.SALE_FLG 
	  FROM  [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] dbo
	  WHERE CAL_WK = @curr_week - 1

	UNION ALL 

	SELECT dbo.[CUST]  
      ,dbo.[MATRL] 
      ,dbo.[MIXD_PLT_MATRL] 
      ,dbo.[CAL_WK] 
      ,dbo.[MIXD_PLT_FLG] 
	  ,dbo.[CURR] 
	  ,dbo.SALE_FLG 
	  FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] dbo
	  WHERE CAL_WK = @curr_week - 1 ) tmp

	  --Delete any records that would cause the unique index to fail
	  DELETE FROM #zm_pln_to_itm_delta_mstr_Monday 
	  WHERE EXISTS ( SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[Mixed Pallet Material] 
      ,[Calendar Week]
      ,[Mixed Pallet Flag]
	  ,[CURRENCY]
	  ,[SALE_FLAG] 
	  FROM #zm_pln_to_itm_delta_mstr mstr 
	  WHERE [CUSTOMER] = [CUST] and [MATERIAL] = [MATRL] and [Mixed Pallet Material] = [MIXD_PLT_MATRL] and [CAL_WK] = [Calendar Week]
	  and [Mixed Pallet Flag] = [MIXD_PLT_FLG] and [CURR] =[CURRENCY] and mstr.SALE_FLAG = #zm_pln_to_itm_delta_mstr_Monday.SALE_FLG )


	  --ensure that you delete the previous weeks records
	  DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK]
	  WHERE EXISTS ( SELECT PLN_TO_NBR ,MIXD_PLT_MATRL,[CAL_WK] ,CURR FROM #zm_pln_to_itm_delta_mstr_Monday stg
				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].PLN_TO_NBR and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[MIXD_PLT_MATRL] 
				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[CAL_WK] 
				 and stg.CURR = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[CURR])

	  --insert the changed records
	  INSERT INTO #zm_pln_to_itm_delta_mstr
	  SELECT * 
	  FROM #zm_pln_to_itm_delta_mstr_Monday
end
--PRINT N'02: Create Master Delta index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create unique clustered index ix_pln_to_itm_final on #zm_pln_to_itm_delta_mstr ([CUSTOMER],[MATERIAL]
,[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag],
CURRENCY, SALE_FLAG)

--PRINT N'03: #index created, start loaded gtw: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--get all the forecasting values for future weeks from the TPM60 calculated table.  Use the current week variable.  This table will be applied to the final join
--conditions in the Fact table
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_gtwk') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_delta_gtwk;
end
SELECT DISTINCT [CUST] as [CUSTOMER] 
       ,[MATRL] as [MATERIAL] 
      ,[MIXD_PLT_MATRL] as [Mixed Pallet Material] 
      ,[CAL_WK] as [Calendar Week] 
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag] 
      ,[CURR] as[CURRENCY] 
      ,[PLN_SHIP_USD] as [Plan Ship $]
      ,[PLN_SHIP_LBS] as [Plan Ship LBS]
      ,[PLN_SHIP_EA] as [Plan Ship EA]
      ,[PLN_TOTL_OFF_INVC_USD] as [Plan Total Off Invoice Dollars]
      ,[TOTL_PLN_COST_OF_PROD_USD] as [Total Planned COP $]
      ,[TOTL_PLN_SHIPMNT_CS] as [Total Planned Shipment CS]
      ,[TOTL_PLN_SHIPMNT_KGS] as [Total Planned Shipment Kilos]
      ,[SALE_FLAG] = CASE
						WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
						WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
						ELSE 'D'
					  END
	  INTO #zm_pln_to_itm_delta_gtwk
	  FROM KNA_COMRCL.dbo.ZM_TPM60_CKF dbo
	  INNER JOIN #zm_pln_to_itm_delta_mstr mstr ON ([CUSTOMER] = [CUST] and [MATERIAL]= [MATRL] 
	  and [Mixed Pallet Material] = [MIXD_PLT_MATRL] and
		 [Calendar Week] = [CAL_WK] and [Mixed Pallet Flag] = [MIXD_PLT_FLG] 
		 and [CURR]= [CURRENCY])
	  WHERE @CLS_WK < [CAL_WK] 

--PRINT N'04: GTW loaded, create index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_pln_to_itm_final on #zm_pln_to_itm_delta_gtwk ([CUSTOMER],[MATERIAL],[Mixed Pallet Material],[Calendar Week],[Mixed Pallet Flag],CURRENCY)

--PRINT N'05:Start loading prep1' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Use the multiprovider to create calculated fields that will be used in the final table.
--Use Plan To Item Actual to get all previous values as well as the table that was created previously
IF OBJECT_ID ('tempDB..#zm_pln_to_itm_delta_1') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_itm_delta_1;
end
SELECT  mstr.[CUSTOMER]
      ,mstr.[MATERIAL]
      ,mstr.[Mixed Pallet Material]
      ,mstr.[Mixed Pallet Flag]
	  ,mstr.[Calendar Week]
      ,mstr.[CURRENCY]
      ,ISNULL([PLN_BASE_LBS],0) as [Plan Base LBS]
      ,ISNULL([PLN_INCR_LBS],0) as [Plan Incr LBS]
      ,ISNULL([PLN_BASE_UNITS],0) as [Plan Base Units]
      ,ISNULL([PLN_INCR_UNITS],0) as [Plan Incr Units]
      ,ISNULL([PLN_BASE_RTL_USD],0) as [Plan Base Ret $'s]
      ,ISNULL([PLN_INCR_RTL_USD] ,0) as [Plan Incr Ret $'s]
      ,ISNULL([PLN_BASE_USD] ,0) as [Plan Base $]
      ,ISNULL([PLN_INCR_SHIP_USD],0) as [Plan Incr Ship $]
      ,ISNULL(tpm.[PLN_SHIP_USD],0) as [Plan Ship $]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_CS],0) as [Plan Ship CS]
      ,ISNULL(tpm.[PLN_SHIP_LBS],0) as [Plan Ship LBS]
      ,ISNULL(tpm.[TOTL_PLN_SHIPMNT_KGS],0) as [Plan Ship KG]
      ,ISNULL(tpm.[PLN_SHIP_EA],0) as [Plan Ship EA]
	  ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL([ACTL_USD],0) else 0 end as [Actual Ship $]
	  ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL([ACTL_CS],0) else 0 end  as [Actual Ship CS]
	  ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL([ACTL_LBS],0) else 0 end  as [Actual Ship LBS]
	  ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL([ACTL_EA],0)  else 0 end as [Actual Ship Units]
	  ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL([ACTL_KGS],0) else 0 end  as [Actual Ship KG]
	  ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as[Actual COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK  then ISNULL(pln.[ACTL_USD],0) else 0 end as [< Curr Week: LE Ship $ - Actual Dollars ($)] 
      ,ISNULL(gtw.[Plan Ship $],0) as [>= Curr Week: LE Ship $ - Plan Ship $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_LBS],0) else 0 end as [< Curr Week: LE Ship LBS - Actual Pounds (LB)]
      ,ISNULL(gtw.[Plan Ship LBS],0) as [>= Curr Week: LE Ship LBS - Plan Ship LBS]
      ,case when pln.[CAL_WK] <= @CLS_WK then  ISNULL(pln.[ACTL_EA],0) else 0 end as [< Curr Week: LE Ship Units - Actual Eaches (EA)]
      ,ISNULL(gtw.[Plan Ship EA],0) as [>= Curr Week: LE Ship Units - Plan Ship EA]
      ,ISNULL(tpm.[TOTL_PLN_COST_OF_PROD_USD] ,0) as [Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[DM_ACTL_COST_OF_PROD_USD],0) else 0 end as  [< Curr Week: LE COP $ - Actual COP $]
      ,ISNULL(gtw.[Total Planned COP $],0) as [>= Curr Week: LE COP $ - Total Planned COP $]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_CS],0) else 0 end as [< Curr Week: LE Cases - Actual Cases (CS)]
      ,ISNULL(gtw.[Total Planned Shipment CS],0) as [>= Curr Week: LE Cases - Total Planned Shipment CS]
      ,case when pln.[CAL_WK] <= @CLS_WK then ISNULL(pln.[ACTL_KGS],0) else 0 end as [< Curr Week: LE Kilos - Actual Kilograms (KG)]
      ,ISNULL(gtw.[Total Planned Shipment Kilos],0) as [>= Curr Week: LE Kilos - Total Planned Shipment Kilos]
      ,ISNULL([PLN_BASE_CS],0) as [Plan Base Cases]
      ,ISNULL([PLN_INCR_CS],0) as [Plan Incr Cases]
      ,ISNULL([PLN_INCR_SHIP_CS],0) as [Plan Incr Ship Cases]
      ,ISNULL([PLN_INCR_SHIP_UNITS],0) as [Plan Incr Ship Units]
      ,ISNULL([PLN_INCR_SHIP_LBS],0) as [Plan Incr Ship LBS]
      ,ISNULL([PLN_INCR_SHIP_KG],0) as [Plan Incr Ship Kilos]
      ,ISNULL([SUGSTD_BASE_VOL_SAS],0) as [Suggested Base Volume (SAS)]
      ,ISNULL([SUGSTD_SHLF_PRC_SAS],0) as [Suggested Shelf Price (SAS)]
      ,ISNULL([LATST_ESTMT_MISS_OI],0) as [Lastest Estimate Missed OI]
      ,ISNULL([LATST_ESTMT_BILLBACK_USD],0) as [Latest Estimate Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_EDLP_BILLBACK_USD],0) as [Latest Estimate EDLP Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCANAPPS_BILLBACK_USD],0) as [Latest Estimate Scan Apps Bill Back Dollars]
      ,ISNULL([LATST_ESTMT_SCAN_USD],0) as [Latest Estimate Scan Dollars]
      ,ISNULL([LE_WW_USD],0) as [LE WW$]
      ,ISNULL([LATST_ESTMT_TOTL_FIX_KMF],0) as [Latest Estimate Total Fixed KMF]
      ,case when @curr_week <=tpm.[CAL_WK] then ISNULL(tpm.PLN_TOTL_OFF_INVC_USD,0) else 0 end as [Plan Total Off Invoice Dollars]
      ,ISNULL(pln.[SPCL_PROMTN_ALLWNC]*(-1),0) as [Actual OI Spend (Not restricted)]
      ,ISNULL([PLN_TOTL_FIX_KMF_SPND],0) as [Plan Total Fixed KMF Spend]
      ,ISNULL([PLN_VAR_KMF_SPND],0) as [Plan Variable KMF Spend]
	  ,ISNULL([SCAN_APPS_OL_RT_AMT],0) + ISNULL([OL_AMT],0) as [Overlay Amount]
	INTO #zm_pln_to_itm_delta_1
	FROM  #zm_pln_to_itm_delta_mstr mstr 
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[ZM_TPM60_CKF] tpm ON (tpm.[CUST]  = mstr.CUSTOMER and tpm.[MATRL] = mstr.MATERIAL 
	and tpm.[MIXD_PLT_MATRL] = mstr.[Mixed Pallet Material] 
												and tpm.[CAL_WK]  = mstr.[Calendar Week] and tpm.[MIXD_PLT_FLG]  = mstr.[Mixed Pallet Flag] and 
												 tpm.[CURR] = mstr.CURRENCY and 
												tpm.[SALE_FLG]  = mstr.SALE_FLAG )
	LEFT OUTER JOIN #zm_pln_to_itm_delta_gtwk gtw ON (gtw.CUSTOMER = mstr.CUSTOMER  and gtw.MATERIAL = mstr.MATERIAL
	 and gtw.[Mixed Pallet Material] = mstr.[Mixed Pallet Material] 
												and gtw.[Calendar Week] = mstr.[Calendar Week] and gtw.[Mixed Pallet Flag] = mstr.[Mixed Pallet Flag] and 
												 gtw.CURRENCY = mstr.CURRENCY and 
												gtw.[SALE_FLAG]= mstr.SALE_FLAG )
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PLN_TO_ITM_ACT] pln ON (mstr.CUSTOMER = pln.[CUST] and mstr.MATERIAL = pln.[MATRL] 
	and mstr.[Mixed Pallet Material] = pln.[MIXD_PLT_MATRL] 
												and mstr.[Calendar Week] = pln.[CAL_WK] and mstr.[Mixed Pallet Flag] = pln.[MIXD_PLT_FLG] and 
												 mstr.CURRENCY = pln.[CURR] and mstr.SALE_FLAG = pln.SALE_FLG
												and pln.[CAL_WK] < @curr_week)
	

--PRINT N'09: begin final DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))*/
--aggregate some fields that will be used in the final table as well as move the final table into the correct format.  Also be sure to filter out any records
--That sum to 0.  
SELECT 
	   [PLN_TO_NBR]															as	PLN_TO_NBR	,
       [PLN_TO_NM] 															as	PLN_TO_NM	,
       [LVL_A] 																as	LVL_A	,
       [LVL_B] 																as	LVL_B	,
       [LVL_C] 																as	LVL_C	,
       [LVL_D] 																as	LVL_D	,
       [LVL_E] 																as	LVL_E	,
       [TIER_NM] 															as	TIER_NM	,
       ALL_IN_FLG 															as	ALL_IN_FLG	,
	   MATERIAL																as MATRL,
	   [Mixed Pallet Material]												as	MIXD_PLT_MATRL	,
	   [Mixed Pallet Flag]													as MIXD_PLT_FLG,
	   [MIXD_PLT_MATRL_DESC]												as [MIXD_PLT_MATRL_DESC]	,
	   [CURRENCY]															as  [CURR],
       [BU] 																as	BU	,
       CATG 																as	CATG	,
       [CAN_CATG] 															as	CAN_CATG	,
       [SUB_CATG] 															as	SUB_CATG	,
	   ALT_SEGMENT															as ALT_SEGMENT,
       [PROD_HIER_BRAND]													as	PROD_HIER_BRAND	,
       [PROD_HIER_BRAND_DESC]												as	PROD_HIER_BRAND_DESC	,
       [PROD_HIER_TYP]														as	PROD_HIER_TYP	,
       [PROD_HIER_TYP_DESC] 												as	PROD_HIER_TYP_DESC	,
	   FISC_YR 																as	FISC_YR	,
       QTR																	as	QTR	,
       [PD_YR] 																as	PD_YR	,
       PD 																	as	PD	,
       CAL_WK																as	CAL_WK	,
	   SUBSTRING(cast(CAL_WK as varchar(10)),5,2)							as	WK,
       SZ																	as	SZ	,
	  sum([Actual COP $])													as	ACTL_COST_OF_PROD_USD	,
	  sum([Actual Ship CS])													as	ACTL_SHIP_CS	,
	  sum([Actual Ship KG])													as	ACTL_SHIP_KG	,
	  sum([Actual Ship LBS])												as	ACTL_SHIP_LBS	,
      sum([Actual Ship Units])												as	ACTL_SHIP_UNITS	,
      sum([Actual Ship $])													as	ACTL_SHIP_USD	,
	  sum([Actual Ship $] - [LE KMF $]) 									as	ACT_NSV_PRXY_USD	,
	  sum([Actual Ship $] - [LE KMF $] - [Actual COP $]) 					as	ACT_SC_PRXY_USD	,
	  SUM([LE COP $])  														as	LATST_ESTMT_COST_OF_PROD_USD	,
	   SUM([LE Cases])  													as	LATST_ESTMT_COST_OF_PROD_USD_FXD	,
	  SUM([LE Ship $])  													as	LATST_ESTMT_GSV	,
       SUM([LE KMF $])  													as	LATST_ESTMT_KMF_USD	,
	   SUM([LE Ship $] - [LE KMF $]) 										as	LATST_ESTMT_NSV_PRXY_USD	,
       SUM([LE Ship $] - [LE KMF $]- [LE COP $])  							as	LATST_ESTMT_SC_PRXY_USD	,
       SUM([LE Ship $] - [LE COP $])										as	LATST_ESTMT_SC_PRXY_USD_GSV	,
       SUM([LE Ship LBS]) 													as	LATST_ESTMT_SHIP_LBS	,
       SUM([LE Ship Units])  												as	LATST_ESTMT_SHIP_UNITS	,
	   sum([LE Cases])														as	LE_CS	,
	   sum([LE Kilos])														as	LE_KGS	,
	   sum(ISNULL([LE Cases] * PRICING_CHANGES,0))									as  [LE_PRICE_CHNG_USD],
	  sum(ISNULL([LE Cases] * STD_PRC,0	))										as  [LE_COP_FIXED],
      sum([Plan Base Cases])												as	PLN_BASE_CS	,
	  sum([Plan Base LBS])													as	PLN_BASE_LBS	,
      sum([Plan Base Ret $'s])												as	PLN_BASE_RTN_USD	,
      sum([Plan Base Units])												as	PLN_BASE_UNITS	,
      sum([Plan Base $])													as	PLN_BASE_USD	,
      sum([Plan Incr Cases])												as	PLN_INCR_CS	,
	  sum([Plan Incr LBS])													as	PLN_INCR_LBS	,
      sum([Plan Incr Ret $'s])												as	PLN_INCR_RTN_USD	,
      sum([Plan Incr Units])												as	PLN_INCR_UNITS	,
	 sum(ISNULL([Plan Incr Units] * LST_PRC_PER_CASE,0))								as	PLN_INC_USD	,
	  sum([Plan Base LBS] + [Plan Incr LBS]) 								as	PLN_CONS_LBS	,
	  sum([Plan Base Ret $'s] + [Plan Incr Ret $'s]) 						as	PLN_CONS_RTN_USD	,
	  sum([Plan Base Units] + [Plan Incr Units] )							as	PLN_CONS_UNITS	,
	  sum(ISNULL([Plan Base $] + ([Plan Incr Units] * LST_PRC_PER_CASE),0))			as	PLN_CONS_USD	,
      sum([Plan Incr Ship Cases])											as	PLN_INCR_SHIP_CS	,
      sum([Plan Incr Ship Kilos])											as	PLN_INCR_SHIP_KGS	,
	  sum([Plan Incr LBS])													as	PLN_INCR_SHIP_LBS	,
      sum([Plan Incr Ship Units])											as	PLN_INCR_SHIP_UNITS	,
      sum([Plan Incr Ship $])												as	PLN_INCR_SHIP_USD	,
	  sum([Total Planned KMF $]) 											as	PLN_KMF	,
      sum([Plan Ship CS])													as	PLN_SHIP_CS	,
	  sum([Plan Ship EA])													as	PLN_SHIP_EA	,
      sum([Plan Ship KG])													as	PLN_SHIP_KG	,
      sum([Plan Ship LBS])													as	PLN_SHIP_LBS	,
      sum([Plan Ship $])													as	PLN_SHIP_USD	,
	  sum([Total Planned COP $])											as	TOTL_PLN_KMF_COST_OF_PROD_USD	,
	  sum( [Plan Ship $] - [Total Planned KMF $]) 							as	PLN_NSV_PRXY_USD	,
	  sum( [Plan Ship $] - [Total Planned KMF $] -[Total Planned COP $] ) 	as	PLN_SC_PRXY_USD	,
	  sum([Suggested Base Volume (SAS)])									as	SUGSTD_BASE_VOL_SAS	,
	  sum([Suggested Shelf Price (SAS)]) 									as	SUGSTD_SHLF_PRC_SAS	
	  INTO #pln_to_itm_final_delta
	  FROM (SELECT 
	   
	   norm.PLANTO AS [PLN_TO_NBR], 
       norm.PT_NAME AS [PLN_TO_NM], 
        norm.LEVEL_A AS [LVL_A], 
       norm.LEVEL_B AS [LVL_B], 
       norm.LEVEL_C AS [LVL_C], 
       norm.LEVEL_D AS [LVL_D], 
       norm.LEVEL_E AS [LVL_E], 
       norm.TIER_NAME AS [TIER_NM], 
       norm.ALL_IN_FLAG AS ALL_IN_FLG,
	  #zm_pln_to_itm_delta_1.MATERIAL as MATERIAL,
	   [Mixed Pallet Material] as [Mixed Pallet Material],
	   matrl.MATRL_DESC as [MIXD_PLT_MATRL_DESC],
       zcust.[/BIC/ZBPC_BUUN] as [BU], 
	   catg.CHRSTC_VAL AS CATG, 
       can.[Ca Category] as [CAN_CATG], 
       sub.[CHRSTC_VAL] AS [SUB_CATG], 
	   seg.[CHRSTC_VAL] AS ALT_SEGMENT,
       prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE] as [PROD_HIER_TYP], 
       prod_hier.[PROD_HIER_TYPE_DESC] as [PROD_HIER_TYP_DESC] ,
	  [BRAND_PRTY_NUM] as [GGS Brand Priority Number],
	  [BRAND_PRTY] as [GGS Brand Priority],
      [SUB_PRTY] as [GGS Brand Sub Priority],
       fisc_cal.FISC_YR, 
       fisc_cal.FISC_QTR AS QTR,
       'P' + CAST(fisc_cal.FISC_PD as varchar) + ' ' + CAST(fisc_cal.FISC_YR as varchar) as [PD_YR], 
       fisc_cal.FISC_PD AS PD, 
       toSize.SIZE as SZ ,
      [Mixed Pallet Flag]
      ,[Calendar Week] as CAL_WK
      ,[CURRENCY]
      ,[Plan Base LBS]
      ,[Plan Incr LBS]
      ,[Plan Base Units]
      ,[Plan Incr Units]
      ,[Plan Base Ret $'s]
      ,[Plan Incr Ret $'s]
      ,[Plan Base $]
      ,[Plan Incr Ship $]
      ,[Plan Ship CS]
      ,[Plan Ship $]
      ,[Plan Ship LBS]
      ,[Plan Ship KG]
      ,[Plan Ship EA]
      ,[Actual Ship $]
      ,[Actual Ship CS]
      ,[Actual Ship LBS]
      ,[Actual Ship Units]
      ,[Actual Ship KG]
      ,[< Curr Week: LE Ship $ - Actual Dollars ($)]+[>= Curr Week: LE Ship $ - Plan Ship $] as [LE Ship $]
      ,[< Curr Week: LE Ship LBS - Actual Pounds (LB)]+[>= Curr Week: LE Ship LBS - Plan Ship LBS] as [LE Ship LBS]
      ,[< Curr Week: LE Ship Units - Actual Eaches (EA)]+[>= Curr Week: LE Ship Units - Plan Ship EA] as [LE Ship Units]
      ,[Plan Total Fixed KMF Spend]+[Plan Variable KMF Spend] as [Total Planned KMF $]
      ,[LE KMF $] = CASE
						WHEN @curr_week > [Calendar Week] and @curr_year >= floor([Calendar Week]/100)
						THEN [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] - [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
															[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] + [Overlay Amount]
						ELSE [Latest Estimate Total Fixed KMF] + [Actual OI Spend (Not restricted)] + [Plan Total Off Invoice Dollars] + [Lastest Estimate Missed OI] + 
							[Latest Estimate Bill Back Dollars] + [Latest Estimate EDLP Bill Back Dollars] + [Latest Estimate Scan Apps Bill Back Dollars] + [Latest Estimate Scan Dollars] + [LE WW$] + [Overlay Amount]
					END
      ,[Total Planned COP $]
      ,[Actual COP $]
      ,[< Curr Week: LE COP $ - Actual COP $]+[>= Curr Week: LE COP $ - Total Planned COP $] as [LE COP $]
      ,[< Curr Week: LE Cases - Actual Cases (CS)]+[>= Curr Week: LE Cases - Total Planned Shipment CS] as [LE Cases]
      ,[< Curr Week: LE Kilos - Actual Kilograms (KG)]+[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] as [LE Kilos]
	  ,lp.PRICING_CHANGES
	  ,lp.LST_PRC_PER_CASE
	  ,std.STD_PRC
      ,[Plan Base Cases]
      ,[Plan Incr Cases]
      ,[Plan Incr Ship Cases]
      ,[Plan Incr Ship Units]
      ,[Plan Incr Ship LBS]
      ,[Plan Incr Ship Kilos]
      ,[Suggested Base Volume (SAS)]
      ,[Suggested Shelf Price (SAS)]
	  FROM #zm_pln_to_itm_delta_1 INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = [Calendar Week])
	   INNER JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (zcust.[/BIC/ZCUST_MAT] = CUSTOMER AND zcust.[MATERIAL] = #zm_pln_to_itm_delta_1.[Mixed Pallet Material] )
	   INNER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N  norm ON ('0000'+ norm.PLANTO  = CUSTOMER AND norm.BU = zcust.[/BIC/ZBPC_BUUN] )
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON (matrl.MATRL_NBR = #zm_pln_to_itm_delta_1.[Mixed Pallet Material])
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN catg ON ([Mixed Pallet Material] = catg.MATRL_NBR and catg.CHRSTC_NM = 'ALT_CATEGORY')
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN sub ON ([Mixed Pallet Material] = sub.MATRL_NBR and sub.CHRSTC_NM = 'ALT_SUB_CATEGORY')
	   INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN seg ON ([Mixed Pallet Material] = seg.MATRL_NBR and seg.CHRSTC_NM = 'ALT_MARKET_SEG')
	   INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER prod_hier ON (prod_hier.PROD_HIER = matrl.[PROD_HIER])
	   LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.TYPE_TOSIZE toSize ON (toSize.TYPE_ID = LEFT(prod_hier.PROD_HIER,14) )
	   LEFT OUTER JOIN KNA_COMRCL.dbo.UVW_STD_PRC_MIX std ON (std.MATRL = [Mixed Pallet Material] AND std.CURR = CURRENCY )
	   LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON can.CATEGORY = catg.CHRSTC_VAL
	   LEFT OUTER JOIN  [KNA_EXTERNAL].[USER_SALES].[GRNULR_GWTH] on [BRAND_ID] = prod_hier.PROD_HIER_BRAND
	   LEFT OUTER JOIN  [KG_VIEWS].[KNA].[UVW_CUST] cust ON CUSTOMER = cust.CUST_NBR
	   LEFT OUTER JOIN [KNA_COMRCL].[dbo].UVW_LST_PRC_CHNG lp ON (lp.MATRL = #zm_pln_to_itm_delta_1.[Mixed Pallet Material] and lp.[CAL_WK] = [Calendar Week]
																	  and CURRENCY = lp.CURR and cust.[CHNL_IND] = lp.[CHNL_CUST_GRP] and 
																	  lp.[LST_PRC_PER_CASE]<>0.00)) tmp
																	  WHERE [PLN_TO_NBR] IS NOT NULL
	  GROUP BY 
	  [PLN_TO_NBR]
       ,[PLN_TO_NM]
       ,[LVL_A] 
       ,[LVL_B] 
       ,[LVL_C] 
       ,[LVL_D] 
       ,[LVL_E] 
       ,[TIER_NM]
       ,ALL_IN_FLG
	   , MATERIAL,
	   [Mixed Pallet Material],
	   [Mixed Pallet Flag],[MIXD_PLT_MATRL_DESC],
	   [CURRENCY]
       ,[BU]
       ,CATG
       ,[CAN_CATG]
       ,[SUB_CATG]
	   ,ALT_SEGMENT
       ,[PROD_HIER_BRAND]
       ,[PROD_HIER_BRAND_DESC]
       ,[PROD_HIER_TYP]
       ,[PROD_HIER_TYP_DESC]
	   ,FISC_YR
       ,QTR
       ,[PD_YR]
       ,PD
       ,CAL_WK
       ,SZ


	  BEGIN TRANSACTION;
	  SAVE TRANSACTION  start_tran;
--PRINT N'08: begin delete and loading of final table' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Delete old records
--delete using delta from tpm60 and data that has been updated
--DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK]
--WHERE EXISTS ( SELECT [PLN_TO_ITM_WK].PLN_TO_NBR,[PLN_TO_ITM_WK].[MIXD_PLT_MATRL],[PLN_TO_ITM_WK].[CAL_WK] ,[PLN_TO_ITM_WK].CURR,
--					[PLN_TO_ITM_WK].MATRL,[PLN_TO_ITM_WK].MIXD_PLT_FLG	 FROM [KNA_COMRCL].[STG].[ZM_TPM60] stg
--				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].PLN_TO_NBR  and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[MIXD_PLT_MATRL] 
--				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[CAL_WK] and stg.MATRL = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].MATRL and
--				stg.MIXD_PLT_FLG =  [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].MIXD_PLT_FLG
--				 and stg.CURR = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[CURR])


--DELETE FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK]
--WHERE EXISTS ( SELECT [PLN_TO_ITM_WK].PLN_TO_NBR,[PLN_TO_ITM_WK].[MIXD_PLT_MATRL],[PLN_TO_ITM_WK].[CAL_WK] ,[PLN_TO_ITM_WK].CURR,
--					[PLN_TO_ITM_WK].MATRL,[PLN_TO_ITM_WK].MIXD_PLT_FLG	FROM [KNA_COMRCL].[STG].[PLN_TO_ITM_ACT] stg
--				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].PLN_TO_NBR  and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[MIXD_PLT_MATRL] 
--				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[CAL_WK] and stg.MATRL = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].MATRL and
--				stg.MIXD_PLT_FLG =  [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].MIXD_PLT_FLG
--				 and stg.CURR = [KNA_COMRCL].[dbo].[PLN_TO_ITM_WK].[CURR])

DELETE FROM [dbo].[PLN_TO_ITM_WK]
WHERE EXISTS ( select 	[PLN_TO_ITM_WK].PLN_TO_NBR,[PLN_TO_ITM_WK].MIXD_PLT_MATRL,[PLN_TO_ITM_WK].CURR,[PLN_TO_ITM_WK].CAL_WK,
[PLN_TO_ITM_WK].MIXD_PLT_FLG , [PLN_TO_ITM_WK].MATRL ,[PLN_TO_ITM_WK].BU  from #pln_to_itm_final_delta
where #pln_to_itm_final_delta.PLN_TO_NBR = [PLN_TO_ITM_WK].PLN_TO_NBR and #pln_to_itm_final_delta.MIXD_PLT_MATRL = [PLN_TO_ITM_WK].MIXD_PLT_MATRL
and #pln_to_itm_final_delta.CURR =  [PLN_TO_ITM_WK].CURR and #pln_to_itm_final_delta.CAL_WK = [PLN_TO_ITM_WK].CAL_WK and
 #pln_to_itm_final_delta.MIXD_PLT_FLG = [PLN_TO_ITM_WK].MIXD_PLT_FLG and  #pln_to_itm_final_delta.MATRL = [PLN_TO_ITM_WK].MATRL and
  #pln_to_itm_final_delta.BU = [PLN_TO_ITM_WK].BU
)




--insert all appropriate records into the final table
INSERT INTO KNA_COMRCL.dbo.[PLN_TO_ITM_WK]
SELECT * 
FROM #pln_to_itm_final_delta

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	--PRINT N'06: DELTA' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	
	end

END


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PROMTN]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_PROMTN]
		PURPOSE:   Create the Promotion Fact table (KNA_COMRCL.dbo.PROMTN)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/17/2017   USCDXS92         Created.
		
		This stored procedure creates the final Promotions field that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset. Logic was created in BODS for the TPE project
		By Joe Wrights team and transcribed into SQL

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_PROMTN] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
--Timestamps are included to debug as well as test execution times of specific procedures.
--PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')

--PRINT N'01: #Start Loading the multiprovider master: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
-------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------


if (@full_load = 'Y')
begin
--Select the records from the multiprovider to create the Promotions query.  This involves filtering some records out and creating some calculated Key fields
IF OBJECT_ID ('tempDB..#zm_prom_1') IS NOT NULL
begin
	DROP TABLE #zm_prom_1;
end
SELECT [PROMTNS]  as [Promotion ID]
	  ,[MATRL]  as [MATERIAL]
      ,[MIXD_PLT_MATRL]  as [Mixed Pallet Material]
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,[CUST] as [Plan to]
	  ,[CMPGN_TYP] as CAMPAIGN_TYPE
	  ,[CURR] as [TPM: Currency]
      ,[TPM_PLN_PROMTN_USD_FULL_PRC] + [ATPM_PLN_PROMTN_USD_FULL_PRC]  as [TPM: Planned Promo Dollars @ Full Price]
      ,[TPM_PLN_RETLR_PROMTN_SALES] + [ATPM_PLN_RETLR_PROMTN_SALES]  as [TPM: Planned Retailer Promotion Sales]
	  ,[TPM_PLN_TPQ_EA] + [ATPM_PLN_TPQ_EA]  as [TPM: Planned TPQ Eaches]
	  ,[SALES_PROMTN_GROS_SALES_USD] as [Sales Promo: Gross Sales Dollars]
	  ,[TPM_PLN_SHIP_USD] + [ATPM_PLN_SHIP_USD]  AS [TPM: Plan Ship Dollars] 
	  ,[TPM_TOTL_PLN_INCR_USD]  + [ATPM_TOTL_PLN_INCR_USD]  AS [TPM: Total Planned Incremental Dollars]
	  ,[TPM_PLN_PROMTN_COST_OF_PROD_USD] + [ATPM_PLN_PROMTN_COST_OF_PROD_USD] as [TPM: Planned Promo COP $]
	  ,[LE_CSM_VAP]  as [LE: CSM VAP]
	  ,[LE_CSM_COGS] as [LE: CSM COGS]
	  ,[LE_CSM_ADVER] as [LE: CSM Advertising]
	  ,[LE_CSM_CPN] as [LE: CSM Coupon]
	  ,[LE_FIX_LUMP_SUM] as [LE: Fixed Lump Sum]
	  ,[LE_SCAN_APPL_FIX] as [LE: Scanned Application Fixed]
	  ,[LE_CORRCTN_LUMP_SUM]  as[LE: Correction Lump Sum]
      ,[LE_NEW_ITM_FIX] as [LE: New Item Fixed]
      ,[LE_MIL_FIX] as [LE: Military Fixed]
	  ,[LE_LQDTN_FIX] as [LE: Liquidation Fixed]
      ,[TPM_PLN_TPQ_USD] + [ATPM_PLN_TPQ_USD] as [TPM: Planned TPQ Dollars]
      ,[TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_RT_TOTL]  as [TPM: Off-Invoice Rate Total]
      ,[TPM_OFF_INVC_PCT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL]  as [TPM: Off-Invoice % Total]
      ,[TPM_LQDTN_OI_RT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL]  as [TPM: Liquidation OI Rate Total]
      ,[TPM_LQDTN_OI_PCT_TOTL] + [ATPM_LQDTN_OI_PCT_TOTL]  as [TPM: Liquidation OI % Total]
	  ,[TPM_BILLBACK_RT_TOTL] + [ATPM_BILLBACK_RT_TOTL]  as [TPM: Bill-back Rate Total]
      ,[TPM_BILLBACK_PCT_TOTL] + [ATPM_BILLBACK_PCT_TOTL]  as [TPM: Bill-back % Total]
      ,[TPM_EDLP_OFF_INVC_RT_TOTL] + [ATPM_EDLP_OFF_INVC_RT_TOTL]  as [TPM: EDLP Off-Invoice Rate Total]
      ,[TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_EDLP_OFF_INVC_PCT_TOTL]  as [TPM: EDLP Off-Invoice % Total]
      ,[TPM_PROMTN_SCAN_RT_TOTL] + [ATPM_PROMTN_SCAN_RT_TOTL]  as [TPM: Promo Scan Rate Total]
      ,[TPM_PROMTN_SCAN_PCT_TOTL] + [ATPM_PROMTN_SCAN_PCT_TOTL]  as [TPM: Promo Scan % Total]
      ,[TPM_SCANAPPS_SCAN_RT_TOTL] + [ATPM_SCANAPPS_SCAN_RT_TOTL] as [TPM: ScanApps Scan Rate Total]
      ,[TPM_SCANAPPS_SCAN_PCT_TOTL] + [ATPM_SCANAPPS_SCAN_PCT_TOTL] as [TPM: ScanApps Scan % Total]
      ,[TPM_EDLP_BILLBACK_RT_TOTL] + [ATPM_EDLP_BILLBACK_RT_TOTL] as [TPM: EDLP Bill-back Rate Total]
      ,[TPM_EDLP_BILLBACK_PCT_TOTL] + [ATPM_EDLP_BILLBACK_PCT_TOTL] as [TPM: EDLP Bill-back % Total]
      ,[TPM_PAR_OI_RT_TOTL] + [ATPM_PAR_OI_RT_TOTL] as [TPM: Parent OI Rate Total]
      ,[TPM_PAR_OI_PCT_TOTL] + [ATPM_PAR_OI_PCT_TOTL] as [TPM: Parent OI % Total]
      ,[TPM_WHSE_WDRL_TOTL_SPND] + [ATPM_WHSE_WDRL_TOTL_SPND] as [TPM: Warehouse Withdrawal Total Spend]
      ,[TPM_FIX_LUMP_SUM] + [ATPM_FIX_LUMP_SUM] as [TPM: Fixed Lump Sum]
      ,[TPM_SCNR_APPL_FIX] + [ATPM_SCNR_APPL_FIX] as [TPM: Scanner Application Fixed]
      ,[TPM_CORRCTV_LUMP_SUM] + [ATPM_CORRCTV_LUMP_SUM] as [TPM: Corrective Lump Sum] 
      ,[TPM_NEW_ITM_FIX] + [ATPM_NEW_ITM_FIX] as [TPM: New Item Fixed]
      ,[TPM_MIL_FIX] + [ATPM_MIL_FIX] as [TPM: Military Fixed]
	  ,[TPM_LQDTN_FIX] + [ATPM_LQDTN_FIX] as [TPM: Liquidation Fixed]
      ,[LE_SCANAPPS_SCAN_RT_TOTL] as [LE: Promo Scan Rate Total]
      ,[LE_PROMTN_SCAN_PCT_TOTL] as [LE: Promo Scan % Total] 
      ,[TPM_CSM_TRDE] as [TPM: CSM Trade]
      ,[TPM_SUGSTD_TPQ_USD] + [ATPM_SUGSTD_TPQ_USD] as [TPM: Suggested TPQ Dollars]
	  ,[ATPM_PLN_INCR_COST_OF_PROD_USD]+ [TPM_PLN_INCR_COST_OF_PROD_USD] as [TPM: Plan Incremental COP $]
	  ,[TPM_DISP]  + [ATPM_DISP] as [TPM: Display]
      ,[TPM_FEATUR]  + [ATPM_FEATUR]  as [TPM: Feature]
      ,[TPM_F_D] + [ATPM_F_D] as [TPM: F&D]
      ,[TPM_SUGSTD_TPQ] + [ATPM_SUGSTD_TPQ] as [TPM: Suggested TPQ] 
      ,[TPM_SUGSTD_INCR_VOL] + [ATPM_SUGSTD_INCR_VOL] as [TPM: Suggested Incremental Volume]
      ,[SVP_SUGSTD_BASE_VOL_SAS] as [SVP - Suggested Base Volume (SAS)]
      ,[SVP_PLN_SHLF_PRC] as [SVP - Planned Shelf Price]
      ,[ATPM_VARNC_PCT] as [ATPM - Variance %]
      ,[ATPM_TOTL_PLN_SHIPMNT_USD] as [ATPM - Total Planned Shipment Dollars]
      ,[TPM_EDLP_SPND] + [ATPM_EDLP_SPND] as [TPM: EDLP Spend]
  INTO #zm_prom_1
  FROM [KNA_COMRCL].[dbo].[ZM_TPM60]
  WHERE ([CMPGN_TYP] <> 'Z950' and [PROMTN_STATUS] <> '99'and [HIER_D_LVL5] <> '600010') and ([MIXD_PLT_FLG]  IN ('Z','N','Y'))

--PRINT N'02: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

 		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;
IF EXISTS (SELECT name from sys.indexes where name = 'IX_PROMTN')
begin
	drop index IX_PROMTN on KNA_COMRCL.dbo.PROMTN
end
 --This process is creates final calculated key fields from the subset derived from the multiprovider and sums the key fields by Promotion ID/Mixed Pallet Material/Calendar Week/Plan To/Currency
TRUNCATE TABLE KNA_COMRCL.[dbo].[PROMTN]
INSERT INTO KNA_COMRCL.[dbo].[PROMTN]
SELECT [Promotion ID]
      ,[Mixed Pallet Material]
      ,[Calendar Week]
      ,[Plan to] as [Plan To]
      ,[TPM: Currency]
      ,sum([TPM: Planned Promo Dollars @ Full Price])
      ,sum([TPM: Planned Retailer Promotion Sales])
      ,sum([TPM: Planned TPQ Eaches])
      ,sum([Gross Sales $])
      ,sum([Planned Ship $])
      ,sum([Planned Incremental Volume $])
      ,sum([Planned Promo COP $])
      ,sum([LE Total Non-Trade])
      ,sum([LE Total Fixed KMF $])
      ,sum([Total Planned Promo $])
      ,sum([Reserved Total KMF $])
      ,sum([Total Planned Promo Units])
      ,sum([Reserved CSM Trade $])
      ,sum([Total Modeled Promo $])
      ,sum([Plan Incremental COP $])
      ,sum([DISPLAY])
      ,sum([FEATURE])
      ,sum([F&D])
      ,sum([Sugg TPQ])
      ,sum([Sugg Incr])
      ,sum([SVP: Suggested Base])
      ,sum([SVP: Planned Shelf Price])
      ,sum([Planned Incrementality %])
      ,sum([Plan Activity GSV])
      ,sum([EDLP Spend]) 
FROM (
	--Create further calculated key fields for the promotions query.  This applies some some filtering and grouping of terms.
	SELECT [Promotion ID]
	  ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Calendar Week]
      ,[Plan to]
	  ,[Mixed Pallet Flag]
      ,[TPM: Currency]
      ,[TPM: Planned Promo Dollars @ Full Price]
      ,[TPM: Planned Retailer Promotion Sales]
      ,[TPM: Planned TPQ Eaches]
      ,[Sales Promo: Gross Sales Dollars] as [Gross Sales $]
      ,[TPM: Plan Ship Dollars]  as [Planned Ship $]
      ,[TPM: Total Planned Incremental Dollars] as [Planned Incremental Volume $]
      ,[TPM: Planned Promo COP $] as [Planned Promo COP $]
      ,[LE: CSM VAP] + [LE: CSM COGS] + [LE: CSM Advertising] + [LE: CSM Coupon] as [LE Total Non-Trade]
      ,[LE: Fixed Lump Sum] + [LE: Scanned Application Fixed] + [LE: Correction Lump Sum] + [LE: New Item Fixed] + [LE: Military Fixed] + [LE: Liquidation Fixed] as [LE Total Fixed KMF $]
      ,[TPM: Planned TPQ Dollars] as [Total Planned Promo $]
      ,[TPM: Off-Invoice Rate Total] + [TPM: Off-Invoice % Total] + [TPM: Liquidation OI Rate Total] + [TPM: Liquidation OI % Total] +
		[TPM: Bill-back Rate Total] + [TPM: Bill-back % Total] + [TPM: EDLP Off-Invoice Rate Total] + [TPM: EDLP Off-Invoice % Total] +
		[TPM: Promo Scan Rate Total] + [TPM: Promo Scan % Total] + [TPM: ScanApps Scan Rate Total] + [TPM: ScanApps Scan % Total] +
		[TPM: EDLP Bill-back Rate Total] + [TPM: EDLP Bill-back % Total] + [TPM: Parent OI Rate Total] + [TPM: Parent OI % Total] +
		[TPM: Warehouse Withdrawal Total Spend] + [TPM: Fixed Lump Sum] + [TPM: Scanner Application Fixed] + [TPM: Corrective Lump Sum] +
		[TPM: New Item Fixed] + [TPM: Military Fixed] + [TPM: Liquidation Fixed] as [Reserved Total KMF $]
      ,[TPM: Planned TPQ Eaches] as [Total Planned Promo Units]
      ,[TPM: CSM Trade] as [Reserved CSM Trade $]
      ,[TPM: Suggested TPQ Dollars] as [Total Modeled Promo $]
      ,[TPM: Plan Incremental COP $] as [Plan Incremental COP $]
      ,[TPM: Display] as [DISPLAY]
      ,[TPM: Feature] as [FEATURE]
      ,[TPM: F&D] as [F&D]
      ,[TPM: Suggested TPQ] as [Sugg TPQ]
      ,[TPM: Suggested Incremental Volume] as [Sugg Incr]
      ,[SVP - Suggested Base Volume (SAS)] as [SVP: Suggested Base]
      ,[SVP - Planned Shelf Price] as [SVP: Planned Shelf Price]
      ,[Planned Incrementality %] = CASE 
										WHEN CAMPAIGN_TYPE = 'Z800' THEN [ATPM - Variance %]
										ELSE 0.00
									END		
      ,[Plan Activity GSV] = CASE 
								WHEN CAMPAIGN_TYPE= 'Z800' THEN [ATPM - Total Planned Shipment Dollars]
								ELSE 0.00
							   END									
      ,[TPM: EDLP Spend] as [EDLP Spend]
	  FROM #zm_prom_1 ) tmp
	  WHERE [TPM: Planned Promo Dollars @ Full Price] <>0 or  [TPM: Planned Retailer Promotion Sales] <>0 or  [TPM: Planned TPQ Eaches] <>0 or [Gross Sales $] 
	  <>0 or  [Planned Ship $] <>0 or  [Planned Incremental Volume $] <>0 or  [Planned Promo COP $] <>0 or  [Total Planned Promo $] <>0 or  [Reserved CSM Trade $] <>0 or  [Total Modeled Promo $]
	   <>0 or  [Plan Incremental COP $] <>0 or  [DISPLAY] <>0 or   [FEATURE] <>0 or  [F&D] <>0 or  [Sugg TPQ] <>0 or  [Sugg Incr] <>0 or [SVP: Suggested Base] <>0 or  [SVP: Planned Shelf Price] <>0 or  [EDLP Spend] <>0 or  
			[LE Total Non-Trade] <>0 or  [LE Total Fixed KMF $] <>0 or  [Reserved Total KMF $] <>0 or  [Planned Incrementality %] <>0 or  [Plan Activity GSV]<> 0
	GROUP BY tmp.[Promotion ID]
			,tmp.[Mixed Pallet Material]
			,tmp.[Calendar Week]
			,tmp.[Plan to]
			,tmp.[TPM: Currency]
	PRINT N'03: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

	insert into dbo.PROMTN select * from dbo.PROMTN_HIST where  CAL_WK <= (year(getdate())-1)*100  
	
	IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_PROMTN')
	begin
		CREATE unique clustered index IX_PROMTN on KNA_COMRCL.dbo.PROMTN ([PROMTN_ID], [MIXD_PLT_MATRL], [CAL_WK], [PLN_TO], [TPM_CURR])
	end

	
	--PRINT N'04: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	end
	-------------------------------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------------------------------
	--DELTA LOAD:  This is controlled by the Delta flag
	-------------------------------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------------------------------
	ELSE
	begin

--PRINT N'00 Delta Begin, get all recrods that are affected: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#zm_tpm60_delta') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_delta;
end
SELECT src.*
INTO #zm_tpm60_delta
FROM  [KNA_COMRCL].[dbo].[ZM_TPM60] src
INNER JOIN [KNA_COMRCL].[STG].[ZM_TPM60] stg ON (stg.PROMTNS = src.PROMTNS and stg.CUST = src.CUST and stg.[MIXD_PLT_MATRL] = src.[MIXD_PLT_MATRL] and stg.[CAL_WK] = src.[CAL_WK] 
				and stg.[CURR] = src.[CURR])

--PRINT N'01 Delta create new promtn fields: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#zm_prom_delta') IS NOT NULL
begin
	DROP TABLE #zm_prom_delta;
end
SELECT [PROMTNS]  as [Promotion ID]
	  ,[MATRL]  as [MATERIAL]
      ,[MIXD_PLT_MATRL]  as [Mixed Pallet Material]
      ,[CAL_WK] as [Calendar Week]
      ,[MIXD_PLT_FLG] as [Mixed Pallet Flag]
	  ,[CUST] as [Plan To]
	  ,[CMPGN_TYP] as CAMPAIGN_TYPE
	  ,[CURR] as [TPM: Currency]
      ,[TPM_PLN_PROMTN_USD_FULL_PRC] + [ATPM_PLN_PROMTN_USD_FULL_PRC]  as [TPM: Planned Promo Dollars @ Full Price]
      ,[TPM_PLN_RETLR_PROMTN_SALES] + [ATPM_PLN_RETLR_PROMTN_SALES]  as [TPM: Planned Retailer Promotion Sales]
	  ,[TPM_PLN_TPQ_EA] + [ATPM_PLN_TPQ_EA]  as [TPM: Planned TPQ Eaches]
	  ,[SALES_PROMTN_GROS_SALES_USD] as [Sales Promo: Gross Sales Dollars]
	  ,[TPM_PLN_SHIP_USD] + [ATPM_PLN_SHIP_USD]  AS [TPM: Plan Ship Dollars] 
	  ,[TPM_TOTL_PLN_INCR_USD]  + [ATPM_TOTL_PLN_INCR_USD]  AS [TPM: Total Planned Incremental Dollars]
	  ,[TPM_PLN_PROMTN_COST_OF_PROD_USD] + [ATPM_PLN_PROMTN_COST_OF_PROD_USD] as [TPM: Planned Promo COP $]
	  ,[LE_CSM_VAP]  as [LE: CSM VAP]
	  ,[LE_CSM_COGS] as [LE: CSM COGS]
	  ,[LE_CSM_ADVER] as [LE: CSM Advertising]
	  ,[LE_CSM_CPN] as [LE: CSM Coupon]
	  ,[LE_FIX_LUMP_SUM] as [LE: Fixed Lump Sum]
	  ,[LE_SCAN_APPL_FIX] as [LE: Scanned Application Fixed]
	  ,[LE_CORRCTN_LUMP_SUM]  as[LE: Correction Lump Sum]
      ,[LE_NEW_ITM_FIX] as [LE: New Item Fixed]
      ,[LE_MIL_FIX] as [LE: Military Fixed]
	  ,[LE_LQDTN_FIX] as [LE: Liquidation Fixed]
      ,[TPM_PLN_TPQ_USD] + [ATPM_PLN_TPQ_USD] as [TPM: Planned TPQ Dollars]
      ,[TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_RT_TOTL]  as [TPM: Off-Invoice Rate Total]
      ,[TPM_OFF_INVC_PCT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL]  as [TPM: Off-Invoice % Total]
      ,[TPM_LQDTN_OI_RT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL]  as [TPM: Liquidation OI Rate Total]
      ,[TPM_LQDTN_OI_PCT_TOTL] + [ATPM_LQDTN_OI_PCT_TOTL]  as [TPM: Liquidation OI % Total]
	  ,[TPM_BILLBACK_RT_TOTL] + [ATPM_BILLBACK_RT_TOTL]  as [TPM: Bill-back Rate Total]
      ,[TPM_BILLBACK_PCT_TOTL] + [ATPM_BILLBACK_PCT_TOTL]  as [TPM: Bill-back % Total]
      ,[TPM_EDLP_OFF_INVC_RT_TOTL] + [ATPM_EDLP_OFF_INVC_RT_TOTL]  as [TPM: EDLP Off-Invoice Rate Total]
      ,[TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_EDLP_OFF_INVC_PCT_TOTL]  as [TPM: EDLP Off-Invoice % Total]
      ,[TPM_PROMTN_SCAN_RT_TOTL] + [ATPM_PROMTN_SCAN_RT_TOTL]  as [TPM: Promo Scan Rate Total]
      ,[TPM_PROMTN_SCAN_PCT_TOTL] + [ATPM_PROMTN_SCAN_PCT_TOTL]  as [TPM: Promo Scan % Total]
      ,[TPM_SCANAPPS_SCAN_RT_TOTL] + [ATPM_SCANAPPS_SCAN_RT_TOTL] as [TPM: ScanApps Scan Rate Total]
      ,[TPM_SCANAPPS_SCAN_PCT_TOTL] + [ATPM_SCANAPPS_SCAN_PCT_TOTL] as [TPM: ScanApps Scan % Total]
      ,[TPM_EDLP_BILLBACK_RT_TOTL] + [ATPM_EDLP_BILLBACK_RT_TOTL] as [TPM: EDLP Bill-back Rate Total]
      ,[TPM_EDLP_BILLBACK_PCT_TOTL] + [ATPM_EDLP_BILLBACK_PCT_TOTL] as [TPM: EDLP Bill-back % Total]
      ,[TPM_PAR_OI_RT_TOTL] + [ATPM_PAR_OI_RT_TOTL] as [TPM: Parent OI Rate Total]
      ,[TPM_PAR_OI_PCT_TOTL] + [ATPM_PAR_OI_PCT_TOTL] as [TPM: Parent OI % Total]
      ,[TPM_WHSE_WDRL_TOTL_SPND] + [ATPM_WHSE_WDRL_TOTL_SPND] as [TPM: Warehouse Withdrawal Total Spend]
      ,[TPM_FIX_LUMP_SUM] + [ATPM_FIX_LUMP_SUM] as [TPM: Fixed Lump Sum]
      ,[TPM_SCNR_APPL_FIX] + [ATPM_SCNR_APPL_FIX] as [TPM: Scanner Application Fixed]
      ,[TPM_CORRCTV_LUMP_SUM] + [ATPM_CORRCTV_LUMP_SUM] as [TPM: Corrective Lump Sum] 
      ,[TPM_NEW_ITM_FIX] + [ATPM_NEW_ITM_FIX] as [TPM: New Item Fixed]
      ,[TPM_MIL_FIX] + [ATPM_MIL_FIX] as [TPM: Military Fixed]
	  ,[TPM_LQDTN_FIX] + [ATPM_LQDTN_FIX] as [TPM: Liquidation Fixed]
      ,[LE_SCANAPPS_SCAN_RT_TOTL] as [LE: Promo Scan Rate Total]
      ,[LE_PROMTN_SCAN_PCT_TOTL] as [LE: Promo Scan % Total] 
      ,[TPM_CSM_TRDE] as [TPM: CSM Trade]
      ,[TPM_SUGSTD_TPQ_USD] + [ATPM_SUGSTD_TPQ_USD] as [TPM: Suggested TPQ Dollars]
	  ,[ATPM_PLN_INCR_COST_OF_PROD_USD]+ [TPM_PLN_INCR_COST_OF_PROD_USD] as [TPM: Plan Incremental COP $]
	  ,[TPM_DISP]  + [ATPM_DISP] as [TPM: Display]
      ,[TPM_FEATUR]  + [ATPM_FEATUR]  as [TPM: Feature]
      ,[TPM_F_D] + [ATPM_F_D] as [TPM: F&D]
      ,[TPM_SUGSTD_TPQ] + [ATPM_SUGSTD_TPQ] as [TPM: Suggested TPQ] 
      ,[TPM_SUGSTD_INCR_VOL] + [ATPM_SUGSTD_INCR_VOL] as [TPM: Suggested Incremental Volume]
      ,[SVP_SUGSTD_BASE_VOL_SAS] as [SVP - Suggested Base Volume (SAS)]
      ,[SVP_PLN_SHLF_PRC] as [SVP - Planned Shelf Price]
      ,[ATPM_VARNC_PCT] as [ATPM - Variance %]
      ,[ATPM_TOTL_PLN_SHIPMNT_USD] as [ATPM - Total Planned Shipment Dollars]
      ,[TPM_EDLP_SPND] + [ATPM_EDLP_SPND] as [TPM: EDLP Spend]
  INTO #zm_prom_delta
  FROM #zm_tpm60_delta
  WHERE ([CMPGN_TYP] <> 'Z950' and [PROMTN_STATUS] <> '99'and [HIER_D_LVL5] <> '600010') and ([MIXD_PLT_FLG]  IN ('Z','N','Y'))


--PRINT N'01 Delta create final loading table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#zm_prom_delta_final') IS NOT NULL
begin
	DROP TABLE #zm_prom_delta_final;
end		
SELECT [Promotion ID]
	  ,[MATERIAL]
      ,[Mixed Pallet Material]
      ,[Calendar Week]
      ,[Plan To]
	  ,[Mixed Pallet Flag]
      ,[TPM: Currency]
      ,[TPM: Planned Promo Dollars @ Full Price]
      ,[TPM: Planned Retailer Promotion Sales]
      ,[TPM: Planned TPQ Eaches]
      ,[Sales Promo: Gross Sales Dollars] as [Gross Sales $]
      ,[TPM: Plan Ship Dollars]  as [Planned Ship $]
      ,[TPM: Total Planned Incremental Dollars] as [Planned Incremental Volume $]
      ,[TPM: Planned Promo COP $] as [Planned Promo COP $]
      ,[LE: CSM VAP] + [LE: CSM COGS] + [LE: CSM Advertising] + [LE: CSM Coupon] as [LE Total Non-Trade]
      ,[LE: Fixed Lump Sum] + [LE: Scanned Application Fixed] + [LE: Correction Lump Sum] + [LE: New Item Fixed] + [LE: Military Fixed] + [LE: Liquidation Fixed] as [LE Total Fixed KMF $]
      ,[TPM: Planned TPQ Dollars] as [Total Planned Promo $]
      ,[TPM: Off-Invoice Rate Total] + [TPM: Off-Invoice % Total] + [TPM: Liquidation OI Rate Total] + [TPM: Liquidation OI % Total] +
		[TPM: Bill-back Rate Total] + [TPM: Bill-back % Total] + [TPM: EDLP Off-Invoice Rate Total] + [TPM: EDLP Off-Invoice % Total] +
		[TPM: Promo Scan Rate Total] + [TPM: Promo Scan % Total] + [TPM: ScanApps Scan Rate Total] + [TPM: ScanApps Scan % Total] +
		[TPM: EDLP Bill-back Rate Total] + [TPM: EDLP Bill-back % Total] + [TPM: Parent OI Rate Total] + [TPM: Parent OI % Total] +
		[TPM: Warehouse Withdrawal Total Spend] + [TPM: Fixed Lump Sum] + [TPM: Scanner Application Fixed] + [TPM: Corrective Lump Sum] +
		[TPM: New Item Fixed] + [TPM: Military Fixed] + [TPM: Liquidation Fixed] as [Reserved Total KMF $]
      ,[TPM: Planned TPQ Eaches] as [Total Planned Promo Units]
      ,[TPM: CSM Trade] as [Reserved CSM Trade $]
      ,[TPM: Suggested TPQ Dollars] as [Total Modeled Promo $]
      ,[TPM: Plan Incremental COP $] as [Plan Incremental COP $]
      ,[TPM: Display] as [DISPLAY]
      ,[TPM: Feature] as [FEATURE]
      ,[TPM: F&D] as [F&D]
      ,[TPM: Suggested TPQ] as [Sugg TPQ]
      ,[TPM: Suggested Incremental Volume] as [Sugg Incr]
      ,[SVP - Suggested Base Volume (SAS)] as [SVP: Suggested Base]
      ,[SVP - Planned Shelf Price] as [SVP: Planned Shelf Price]
      ,[Planned Incrementality %] = CASE 
										WHEN CAMPAIGN_TYPE = 'Z800' THEN [ATPM - Variance %]
										ELSE 0.00
									END		
      ,[Plan Activity GSV] = CASE 
								WHEN CAMPAIGN_TYPE= 'Z800' THEN [ATPM - Total Planned Shipment Dollars]
								ELSE 0.00
							   END									
      ,[TPM: EDLP Spend] as [EDLP Spend]
	  INTO #zm_prom_delta_final
	  FROM #zm_prom_delta 

--PRINT N'02 start index on final prep table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
create clustered index ix_zm_prom_delta_final on #zm_prom_delta_final ([Plan To], [Mixed Pallet Material],[Calendar Week],[Promotion ID],[TPM: Currency])
--Delete old records

 		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

--PRINT N'02 delete files from promotion history table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
/*DELETE FROM [KNA_COMRCL].[dbo].[PROMTN]
WHERE EXISTS ( SELECT [Plan To] ,[Mixed Pallet Material],[Calendar Week],[Promotion ID],[TPM: Currency] FROM #zm_prom_delta_final stg
				WHERE stg.[Plan To] = [KNA_COMRCL].[dbo].[PROMTN].[PLN_TO]  and stg.[Mixed Pallet Material] = [KNA_COMRCL].[dbo].[PROMTN].[MIXD_PLT_MATRL] 
				and stg.[Calendar Week] = [KNA_COMRCL].[dbo].[PROMTN].[CAL_WK] and stg.[Promotion ID]=[KNA_COMRCL].[dbo].[PROMTN].[PROMTN_ID]
				 and stg.[TPM: Currency] = [KNA_COMRCL].[dbo].[PROMTN].[TPM_CURR])*/
DELETE FROM [KNA_COMRCL].[dbo].[PROMTN]
WHERE EXISTS ( SELECT [CUST] ,[MIXD_PLT_MATRL],[CAL_WK],[PROMTNS],[CURR] FROM [KNA_COMRCL].[STG].[ZM_TPM60] stg
				WHERE stg.[CUST] = [KNA_COMRCL].[dbo].[PROMTN].[PLN_TO]  and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[PROMTN].[MIXD_PLT_MATRL] 
				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[PROMTN].[CAL_WK] and stg.[PROMTNS]=[KNA_COMRCL].[dbo].[PROMTN].[PROMTN_ID]
				 and stg.[CURR] = [KNA_COMRCL].[dbo].[PROMTN].[TPM_CURR])
--PRINT N'02 insert into promtn history table: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--This process is creates final calculated key fields from the subset derived from the multiprovider and sums the key fields by Promotion ID/Mixed Pallet Material/Calendar Week/Plan To/Currency
INSERT INTO KNA_COMRCL.[dbo].[PROMTN]
SELECT [Promotion ID]
      ,[Mixed Pallet Material]
      ,[Calendar Week]
      ,[Plan To] as [Plan To]
      ,[TPM: Currency]
      ,sum([TPM: Planned Promo Dollars @ Full Price])
      ,sum([TPM: Planned Retailer Promotion Sales])
      ,sum([TPM: Planned TPQ Eaches])
      ,sum([Gross Sales $])
      ,sum([Planned Ship $])
      ,sum([Planned Incremental Volume $])
      ,sum([Planned Promo COP $])
      ,sum([LE Total Non-Trade])
      ,sum([LE Total Fixed KMF $])
      ,sum([Total Planned Promo $])
      ,sum([Reserved Total KMF $])
      ,sum([Total Planned Promo Units])
      ,sum([Reserved CSM Trade $])
      ,sum([Total Modeled Promo $])
      ,sum([Plan Incremental COP $])
      ,sum([DISPLAY])
      ,sum([FEATURE])
      ,sum([F&D])
      ,sum([Sugg TPQ])
      ,sum([Sugg Incr])
      ,sum([SVP: Suggested Base])
      ,sum([SVP: Planned Shelf Price])
      ,sum([Planned Incrementality %])
      ,sum([Plan Activity GSV])
      ,sum([EDLP Spend]) 
FROM #zm_prom_delta_final tmp
WHERE [TPM: Planned Promo Dollars @ Full Price] <>0 or  [TPM: Planned Retailer Promotion Sales] <>0 or  [TPM: Planned TPQ Eaches] <>0 or [Gross Sales $] 
	  <>0 or  [Planned Ship $] <>0 or  [Planned Incremental Volume $] <>0 or  [Planned Promo COP $] <>0 or  [Total Planned Promo $] <>0 or  [Reserved CSM Trade $] <>0 or  [Total Modeled Promo $]
	   <>0 or  [Plan Incremental COP $] <>0 or  [DISPLAY] <>0 or   [FEATURE] <>0 or  [F&D] <>0 or  [Sugg TPQ] <>0 or  [Sugg Incr] <>0 or [SVP: Suggested Base] <>0 or  [SVP: Planned Shelf Price] <>0 or  [EDLP Spend] <>0 or  
			[LE Total Non-Trade] <>0 or  [LE Total Fixed KMF $] <>0 or  [Reserved Total KMF $] <>0 or  [Planned Incrementality %] <>0 or  [Plan Activity GSV]<> 0
	GROUP BY tmp.[Promotion ID]
			,tmp.[Mixed Pallet Material]
			,tmp.[Calendar Week]
			,tmp.[Plan To]
			,tmp.[TPM: Currency]

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
	--PRINT N'03 Delta finished: ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_PROMTN_MSTR]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_PROC_PROMTN_MSTR]
AS
 /******************************************************************************
		NAME:      [USP_PROC_PROMTN_MSTR]
		PURPOSE:   Get a Promotion Master Table (KNA_COMRCL.dbo.PROMTN_MSTR)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        07/25/2017   USCDXS92         Created.
		2.0        08/17/2018   USCMXJ11         Changed join condition to improve the peformance.
		
		This stored procedure creates the Promotion Master table using CRM data to be used in the RGM build

		******************************************************************************/
BEGIN
    /*********************MAIN LOGIC IN STOREDPROCEDURE ****************************/
		
	
		-- BUILD A TEMPORARY TABLE WITH ALL REQUIRED COLUMNS.

			IF OBJECT_ID ('tempDB..#TEMPT1') IS NOT NULL
			begin
				DROP TABLE #TEMPT1;
			end
			SELECT DISTINCT * 
			INTO #TEMPT1
			FROM(SELECT
			  T1.[EXTERNAL_ID] AS PROMTN_ID
			 ,T0.[TEXT1] AS PROMTN_DESC                              
			 ,T2.[ZZACT_TYPE] AS ACTVTY_TYP     
			 ,T8.[DDTEXT] AS ACTVTY_DESC     
			 ,SUBSTRING(CAST (T3.[START_DATE] AS VARCHAR(16)) , 1, 8)  AS SHIPNG_STRT_DT
			 ,SUBSTRING(CAST (T3.[END_DATE] AS VARCHAR(16)) , 1 ,8)  AS SHIPNG_END_DT 
			 ,CAST(T5.[STONR] AS VARCHAR(2)) AS PROMTN_STATUS
			 ,T6.[TXT30] AS PROMTN_STATUS_DESC
			 ,T2.[ZZASTORE1] AS SCAN_APPL_CNTR_ID
			 ,T9.[PARTNER] AS EMPL_RESP
			 ,T1.[CHANGED_BY] AS PROMTN_MOD_USR
			 ,T1.[CHANGED_ON] as PROMTN_MOD_DT 
			 ,T1.[CREATED_BY] AS PROMTN_CRE_USR
			 ,T1.[CREATED_ON] as PROMTN_CRE_DT 
			 ,T2.[CAMP_TYPE] AS CMP_TYP
			 ,T10.CAMP_TYPETX  AS CMPGN_TYP_DESC                 
			 ,SUBSTRING(CAST (T1.ACTUALSTART  AS VARCHAR(16)), 1 , 8) AS ACTL_STRT_DT
			 ,SUBSTRING(CAST (T1.ACTUALFINISH AS VARCHAR(16)), 1 , 8) AS ACTL_END_DT
			  ,NULL   AS TRADE_PROMTN_AGRMNT          
			 ,SUBSTRING(CAST (T1.PLANSTART  AS VARCHAR(16)), 1 , 8)       AS PLN_STRT_DT
			 ,SUBSTRING(CAST (T1.PLANFINISH AS VARCHAR(16)), 1 , 8)       AS PLN_END_DT
			 ,CAST(T1.[PRIORITY] AS VARCHAR(3)) AS KEY_EVNT
			 ,NULL     AS KEY_EVNT_DESC            
			 ,T7.[SALES_ORG] AS SALES_ORG
			 ,T2.[TACTICS] AS TACT
			 ,T2.[CURRENCY] AS CURR_KEY
			 ,T7.[DIS_CHANNEL] AS DISTR_CHNL
			 ,T7.[DIVISION] AS DIV
		FROM KNA_CRM.dbo.CGPL_PROJECT  T1 
		INNER JOIN  KNA_CRM.dbo.CGPL_TEXT T0 ON (T1.[GUID] = T0.[GUID])
		INNER JOIN  KNA_CRM.dbo.CRMD_MKTPL_DATE T3 ON (T1.[GUID] = T3.[PROJECT_GUID] AND T3.[DATE_ID] = '01')
		LEFT OUTER JOIN  
		(SELECT tmp1.OBJNR, STAT
			FROM (SELECT tmp.OBJNR, tmp.UDATE, max(UTIME) as UTIME
					FROM (SELECT OBJNR ,max(UDATE) as UDATE 
						  FROM [KNA_CRM].[dbo].[CRM_JCDS] 
						  WHERE INACT <> 'X' AND STAT LIKE 'E%' 
						  GROUP BY OBJNR )tmp 
						  INNER JOIN [KNA_CRM].[dbo].[CRM_JCDS] jcds ON (jcds.UDATE = tmp.UDATE and INACT <> 'X' and tmp.OBJNR = jcds.OBJNR)
						  WHERE STAT LIKE 'E%' AND INACT <> 'X'
						  GROUP BY tmp.OBJNR, tmp.UDATE ) tmp1
						  INNER JOIN [KNA_CRM].[dbo].[CRM_JCDS] jcds ON (jcds.UDATE = tmp1.UDATE and jcds.UTIME = tmp1.UTIME and tmp1.OBJNR = jcds.OBJNR)
						  WHERE STAT LIKE 'E%' AND INACT <> 'X')  T4 ON (T1.[GUID] = T4.[OBJNR] /*AND T4.[INACT] <> 'X'*/ )
		LEFT OUTER JOIN  KNA_CRM.dbo.TJ30 T5 ON T4.[STAT] = T5.[ESTAT] AND T5.[STSMA] = 'ZKELTP5'
		LEFT OUTER JOIN  KNA_CRM.dbo.TJ30T T6 ON T4.[STAT] = T6.[ESTAT] AND T6.[STSMA] = 'ZKELTP5' AND T6.[SPRAS] = 'E'
		INNER JOIN  KNA_CRM.dbo.CRM_MKTPL_TPATTR T7  ON T1.[GUID] = T7.[GUID]
	    LEFT JOIN  KNA_CRM.dbo.CRM_MKTPL_ATTR T2 ON (T1.[GUID] = T2.[GUID])  ---- changed the join condition
		LEFT OUTER JOIN  KNA_CRM.dbo.BUT000 T9 ON (T2.[RESPONSIBLE] = T9.[PARTNER_GUID])
		LEFT OUTER JOIN  KNA_CRM.dbo.DD07T  T8  ON (T2.[ZZACT_TYPE] = T8.[DOMVALUE_L] AND [DOMNAME] = 'ZACTIVITY_TYPE' AND [DDLANGUAGE] = 'E')
		LEFT OUTER JOIN KNA_CRM.dbo.CRMC_MKTPL_CTYPT T10 ON (T2.CAMP_TYPE = T10.CAMP_TYPE and T10.LANGU = 'E')

					 UNION ALL 

		 SELECT EXTERNAL_ID as  [PROMTN_ID]
						,'' as [DESC]
						,'00' as [ACTVTY_TYP]
						,NULL as [ACTVTY_DESC]
						,'12319999' as [SHIP_DT_FR]
						,'12319999' as [SHIP_DT_TO]
						,'99' as [PROMTN_STATUS]
						,'Deleted' as [PROMTN_DESC]
						,NULL as [SCNR_APPS_ID]
						,NULL as  [EMPL_RESP]
						,[CHANGED_BY] as [CHG_BY]
						,[CHANGED_ON] as [LAST_CHG_ON]
						,[CREATED_BY] as [PERS_NM]
						,[CREATED_ON] as [DT_CRE]
						,NULL as [CMPGN_TYP]
						,NULL as [CMPGN_DESC]
						,'12319999' as [ACTL_DT_FR]
						,NULL as [ACTL_DT_TO]
						,NULL as [TRDE_PROMTN_AGRMT]
						,'12319999' as [PLN_DT_FR]
						,'12319999' as [PLN_DT_TO]
						,'000' as [KEY_EVNT]
						,NULL as [KEY_EVNT_DESC]
						,'00000000' as [SALES_ORG]
						,NULL as [TACTC]
						,NULL as [CURR_KEY]
						,NULL as [DISTR_CHNL]
						,NULL as [DIV]
			FROM KNA_CRM.dbo.CRMD_MKTPL_OPER)tmp

		--create a table that stages the difference between the two tables and snapshots the promotions that have changed.
		TRUNCATE TABLE KNA_COMRCL.[STG].[PROMTN_MSTR]
		INSERT INTO KNA_COMRCL.[STG].[PROMTN_MSTR]
		SELECT DISTINCT tmp.PROMTN_ID
		FROM (SELECT 'NEW' as Tablename,
					PROMTN_ID,
					 PROMTN_STATUS,
					CMP_TYP as CMPGN_TYP
				FROM #TEMPT1

				UNION ALL

				SELECT 'OLD' as Tablename,
						PROMTN_ID,
					 PROMTN_STATUS,
					 CMP_TYP  as CMPGN_TYP
				FROM [KNA_COMRCL].[STG].[PROMTN_MSTR_LKUP] ) tmp
				INNER JOIN [KNA_COMRCL].[STG].[PROMTN_MSTR_LKUP] pr ON (pr.PROMTN_ID = tmp.PROMTN_ID)
				GROUP BY tmp.PROMTN_ID, tmp.PROMTN_STATUS, tmp.CMPGN_TYP
				HAVING COUNT(*) = 1
		
		--insert into the final promotions master table
        BEGIN TRANSACTION;
		SAVE TRANSACTION promtn_mstr;

		--Get the non TPE data
		TRUNCATE TABLE KNA_COMRCL.STG.PROMTN_MSTR_LKUP		
		INSERT INTO KNA_COMRCL.STG.PROMTN_MSTR_LKUP
		SELECT * 
		FROM #TEMPT1

		--drop the index to load quicker
		DROP INDEX IX_PROMTN_MSTR ON KNA_COMRCL.dbo.PROMTN_MSTR

		--insert the new day's promotions data into the master table
        TRUNCATE TABLE [KNA_COMRCL].[dbo].[PROMTN_MSTR];
		INSERT INTO [KNA_COMRCL].[dbo].[PROMTN_MSTR]
		SELECT DISTINCT 
			PROMTN_ID 
		   ,PROMTN_DESC          
		   ,ACTVTY_TYP       
		   ,ACTVTY_DESC       
		   ,LEFT(RIGHT(SHIPNG_STRT_DT,4),2)+'/'+ RIGHT(SHIPNG_STRT_DT,2) + '/' + LEFT(SHIPNG_STRT_DT,4) as     SHIPNG_STRT_DT 
		   ,LEFT(RIGHT(SHIPNG_END_DT,4),2)+'/'+ RIGHT(SHIPNG_END_DT,2) + '/' + LEFT(SHIPNG_END_DT,4)  as SHIPNG_END_DT
		   ,PROMTN_STATUS 
		   ,PROMTN_STATUS_DESC 
		   ,SCAN_APPL_CNTR_ID as SCNR_APPS_ID  
		   ,EMPL_RESP         
		   ,PROMTN_MOD_USR as CHG_BY 
		   ,CONVERT(varchar,PROMTN_MOD_DT,101 ) as LAST_CHG_ON
		   ,PROMTN_CRE_USR as PERS_NM   
		   ,CONVERT(varchar,PROMTN_CRE_DT, 101) as DT_CRE      
		   ,CMP_TYP as CMPGN_TYP
		   ,CMPGN_TYP_DESC           
		   ,ACTL_STRT_DT = CASE
							WHEN ACTL_STRT_DT = '0' THEN '12/31/9999'
							ELSE ACTL_STRT_DT
						   END       
		   ,ACTL_END_DT   = CASE
							WHEN ACTL_END_DT = '0' THEN '12/31/9999'
							ELSE ACTL_END_DT
						   END
		   ,TRADE_PROMTN_AGRMNT         
		   ,LEFT(RIGHT(PLN_STRT_DT ,4),2)+'/'+ RIGHT(PLN_STRT_DT ,2) + '/' + LEFT(PLN_STRT_DT ,4)  as PLN_STRT_DT           
		   ,LEFT(RIGHT(PLN_END_DT,4),2)+'/'+ RIGHT(PLN_END_DT,2) + '/' + LEFT(PLN_END_DT,4)  as PLN_END_DT
		   ,KEY_EVNT    
		   ,KEY_EVNT_DESC
		   ,RIGHT(SALES_ORG,8)
		   ,TACT as TACTC
		   ,CURR_KEY    
		   ,DISTR_CHNL           
		   ,DIV
         FROM   #TEMPT1
	
		--create a unique index on the promotion id to allow for quicker lookups
		CREATE UNIQUE CLUSTERED INDEX IX_PROMTN_MSTR ON KNA_COMRCL.dbo.PROMTN_MSTR (PROMTN_ID)
/*
INSERT INTO [KNA_COMRCL].[dbo].[PROMTN_MSTR]
SELECT [PROMOTION_ID] as [PROMTN_ID]
      ,[DESCRIPTION] as [DESC]
      ,[ACTIVITY_TYPE] as [ACTVTY_TYP]
      ,[ACTIVITY_DESC] as [ACTVTY_DESC]
      ,[SHIP_DATE_FROM] as [SHIP_DT_FR]
      ,[SHIP_DATE_TO] as [SHIP_DT_TO]
      ,[PROMOTION_STATUS] as [PROMTN_STATUS]
      ,[PROMOTION_DESC] as [PROMTN_DESC]
      ,[SCANNER_APPS_ID] as [SCNR_APPS_ID]
      ,[EMPLOYEE_RESPONSIBLE] as [EMPL_RESP]
      ,[CHANGED_BY] as [CHG_BY]
      ,[LAST_CHANGED_ON] as [LAST_CHG_ON]
      ,[PERSON_NAME] as [PERS_NM]
      ,[DATE_CREATED] as [DT_CRE]
      ,[CAMPAIGN_TYPE] as [CMPGN_TYP]
      ,[CAMPAIGN_DESC] as [CMPGN_DESC]
      ,[ACTUAL_DATE_FROM] as [ACTL_DT_FR]
      ,[TRADE_PROMO_AGREEMENT] as [ACTL_DT_TO]
      ,[TRADE_PROMO_AGREEMENT] as [TRDE_PROMTN_AGRMT]
      ,[PLANNED_DATE_FROM] as [PLN_DT_FR]
      ,[PLANNED_DATE_TO] as [PLN_DT_TO]
      ,[KEY_EVENT] as [KEY_EVNT]
      ,[KEY_EVENT_DESC] as [KEY_EVNT_DESC]
      ,[SALES_ORG]
      ,[TACTIC] as [TACTC]
      ,[CURRENCY_KEY] as [CURR_KEY]
      ,[DISTR_CHANNEL] as [DISTR_CHNL]
      ,[DIVISION] as [DIV]
		FROM (SELECT tpe.* 
		FROM [TPE_DS_Target].[dbo].[KLG_TPE_PROMOTION_DIM_TGT] tpe
		INNER JOIN [KNA_COMRCL].[dbo].[PROMTN_MSTR] ON (PROMTN_ID COLLATE SQL_Latin1_General_CP1_CI_AS = PROMOTION_ID) 
		
		UNION ALL
		
		SELECT * 
		FROM [TPE_DS_Target].[dbo].[KLG_TPE_PROMOTION_DIM_TGT] tpe ) tmp
		GROUP BY [PROMOTION_ID]
      ,[DESCRIPTION]
      ,[ACTIVITY_TYPE]
      ,[ACTIVITY_DESC]
      ,[SHIP_DATE_FROM]
      ,[SHIP_DATE_TO]
      ,[PROMOTION_STATUS]
      ,[PROMOTION_DESC]
      ,[SCANNER_APPS_ID]
      ,[EMPLOYEE_RESPONSIBLE]
      ,[CHANGED_BY]
      ,[LAST_CHANGED_ON]
      ,[PERSON_NAME]
      ,[DATE_CREATED]
      ,[CAMPAIGN_TYPE]
      ,[CAMPAIGN_DESC]
      ,[ACTUAL_DATE_FROM]
      ,[ACTUAL_DATE_TO]
      ,[TRADE_PROMO_AGREEMENT]
      ,[PLANNED_DATE_FROM]
      ,[PLANNED_DATE_TO]
      ,[KEY_EVENT]
      ,[KEY_EVENT_DESC]
      ,[SALES_ORG]
      ,[TACTIC]
      ,[CURRENCY_KEY]
      ,[DISTR_CHANNEL]
      ,[DIVISION]
	HAVING COUNT(*) = 1
*/
        IF (@@ERROR <> 0)
		begin
			 ROLLBACK TRANSACTION promtn_mstr;
		end
		COMMIT TRANSACTION;

 
END


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_TPM60]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_TPM60]
		PURPOSE:   Create the Promotion Fact table (KNA_COMRCL.dbo.ZM_TPM60)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/05/2017   USCDXS92         Created.

		
		This stored procedure creates the USP_PROC_TPM60 that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset.  This logic was used in BODS jobs for the TPE
		project was written in SQL USPs for the RGM rebuild.

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_TPM60] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;

--Timestamps are included to debug and to test execution times of specific procedures
--PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create a lookup table to get all the distinct combinations of master fields so that the multiprovider contains all possible records
IF OBJECT_ID ('tempDB..#zm_tpm60_master') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_master;
end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM] 
      ,[CALWEEK]
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM]
	  ,CURRENCY
INTO #zm_tpm60_master
FROM ( SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM] 
      ,[CALWEEK]
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM]
	  ,CURRENCY
	  FROM [KNA_BW].[dbo].[AZD_SLC8800]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <> ''

    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM] 
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[dbo].[AZD_TPM8800_AGG]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <> ''
			
    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM]
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG] 
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[dbo].[AZD_CON6500]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <> ''
			
    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM]
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[dbo].[AZD_SVP1300]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			 and [/BIC/ZMXDFLG] <> '' and CURRENCY <> ''
			
    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM]
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG] 
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[dbo].[AZD_LES5600]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <>''
			) tmp1
	WHERE CALWEEK >201500
--PRINT N'01: #Start Loading #ZM_TPM60 Index ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create an index on this table to boost performance
create unique clustered index ix_tpm60_master on #zm_tpm60_master ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], CURRENCY)

IF OBJECT_ID ('tempDB..#uvw_cust_hier') IS NOT NULL
begin
	DROP TABLE #uvw_cust_hier;
end
SELECT [LST_LVL_CUST_NBR],
	LVL5_CUST_NBR
INTO #uvw_cust_hier
FROM [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL]
WHERE HIER_TYP = 'D' and HIER_TM_PD = 'CURRENT'

create unique clustered index ix_uvw_cust_hier on #uvw_cust_hier ([LST_LVL_CUST_NBR])
--Start loading the multiprovider ZM_TPM60
--PRINT N'02: #Start Loading #ZM_TPM60 ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Join all five cubes to the master lookup table to create the multiprovider ZM_TMP60
IF OBJECT_ID ('tempDB..#zm_tpm60_null') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_null;
end
SELECT tmp.[CUSTOMER]
      ,tmp.[MATERIAL]
      ,tmp.[/BIC/ZMXDPALM]
      ,tmp.[CALWEEK]
      ,tmp.[/BIC/ZMXDFLG]
      ,tmp.[CRM_MKTELM]
      ,tmp.CURRENCY
      ,a.[/BIC/ZC_DISPER] as [TPM: Display]
      ,a.[/BIC/ZC_FADPER] as [TPM: F&D]
      ,a.[/BIC/ZC_FEAPER] as [TPM: Feature]
      ,a.[/BIC/ZP_INCCOP] as [TPM: Plan Incremental COP $]
      ,a.[/BIC/ZS_PGSVOL] as [TPM: Total Planned Shipment Dollars]
      ,a.[/BIC/ZS_PLCOP] as [TPM: Total Planned COP]
      ,a.[/BIC/ZS_PLPDD] as [TPM: Planned Promotion Discount Dollars]
      ,a.[/BIC/ZS_PLPRD] as [TPM: Planned Promo Dollars @ Full Price]
      ,a.[/BIC/ZS_PLRPS] as [TPM: Planned Retailer Promotion Sales]
      ,a.[/BIC/ZS_PLRSD] as [TPM: Planned Retailer Sales Dollar]
      ,a.[/BIC/ZS_PLTPQD] as [TPM: Planned TPQ Dollars]
      ,a.[/BIC/ZS_PLTPQE] as [TPM: Planned TPQ Eaches]
      ,a.[/BIC/ZS_PLTPQK] as [TPM: Planned TPQ Kilos]
      ,a.[/BIC/ZS_PLTPQP] as [TPM: Planned TPQ Pounds]
      ,a.[/BIC/ZS_PROCOP] as [TPM: Planned Promo COP $]
      ,a.[/BIC/ZS_TPINCD] as [TPM: Total Planned Incremental Dollars]
      ,a.[/BIC/ZS_TPINCE] as [TPM: Total Planned Incremental Eaches]
      ,a.[/BIC/ZS_TPINCK] as [TPM: Total Planned Incremental Kilos]
      ,a.[/BIC/ZS_TPINCP] as [TPM: Total Planned Incremental Pounds]
      ,a.[/BIC/ZS_TPINSD] as [TPM: Total Planned Incremental Ship Dollars]
      ,a.[/BIC/ZS_TPINSE] as [TPM: Total Planned Incremental Ship Eaches]
      ,a.[/BIC/ZS_TPINSK] as [TPM: Total Planned Incremental Ship Kilos]
      ,a.[/BIC/ZS_TPINSP] as [TPM: Total Planned Incremental Ship Pounds]
      ,a.[/BIC/ZS_TPSVOE] as [TPM: Total Planned Shipment Eaches]
      ,a.[/BIC/ZS_TPSVOK] as [TPM: Total Planned Shipment Kilos]
      ,a.[/BIC/ZS_TPSVOL] as [TPM: Total Planned Shipment CS]
      ,a.[/BIC/ZS_TPSVOP] as [TPM: Total Planned Shipment Pounds]
      ,a.[/BIC/ZT_ADIVOL] as [TPM: Plan Incremental Volume]
      ,a.[/BIC/ZT_ADJVOL] as [TPM: Plan TPQ]
      ,a.[/BIC/ZT_BBPAMT] as [TPM: Bill-back % Total]
      ,a.[/BIC/ZT_BBRAMT] as [TPM: Bill-back Rate Total]
      ,a.[/BIC/ZT_CRFAMT] as [TPM: Corrective Lump Sum]
      ,a.[/BIC/ZT_CTFAMT] as [TPM: CSM Trade]
      ,a.[/BIC/ZT_EBPAMT] as [TPM: EDLP Bill-back % Total]
      ,a.[/BIC/ZT_EBRAMT] as [TPM: EDLP Bill-back Rate Total]
      ,a.[/BIC/ZT_EDLPSP] as [TPM: EDLP Spend]
      ,a.[/BIC/ZT_EIPAMT] as [TPM: EDLP Off-Invoice % Total]
      ,a.[/BIC/ZT_EIRAMT] as [TPM: EDLP Off-Invoice Rate Total]
      ,a.[/BIC/ZT_ESHVOD] as [TPM: Plan Ship Dollars]
      ,a.[/BIC/ZT_ESHVOE] as [TPM: Plan Ship Eaches]
      ,a.[/BIC/ZT_ESHVOK] as [TPM: Plan Ship Kilos]
      ,a.[/BIC/ZT_ESHVOL] as [TPM: Plan Est Ship Vol]
      ,a.[/BIC/ZT_ESHVOP] as [TPM: Plan Ship Pounds]
      ,a.[/BIC/ZT_ESPAMT] as [TPM: Parent OI % Total]
      ,a.[/BIC/ZT_ESRAMT] as [TPM: Parent OI Rate Total]
      ,a.[/BIC/ZT_FXFAMT] as [TPM: Fixed Lump Sum]
      ,a.[/BIC/ZT_LIPAMT] as [TPM: Liquidation OI % Total]
      ,a.[/BIC/ZT_LIRAMT] as [TPM: Liquidation OI Rate Total]
      ,a.[/BIC/ZT_LQFAMT] as [TPM: Liquidation Fixed]
      ,a.[/BIC/ZT_MLFAMT] as [TPM: Military Fixed]
      ,a.[/BIC/ZT_NPFAMT] as [TPM: New Item Fixed]
      ,a.[/BIC/ZT_OIPAMT] as [TPM: Off-Invoice % Total]
      ,a.[/BIC/ZT_OIRAMT] as [TPM: Off-Invoice Rate Total]
      ,a.[/BIC/ZT_SCFAMT] as [TPM: Scanner Application Fixed]
      ,a.[/BIC/ZT_SCPAMT] as [TPM: ScanApps Scan % Total]
      ,a.[/BIC/ZT_SCRAMT] as [TPM: ScanApps Scan Rate Total]
      ,a.[/BIC/ZT_SPPAMT] as [TPM: Promo Scan % Total]
      ,a.[/BIC/ZT_SPRAMT] as [TPM: Promo Scan Rate Total]
      ,a.[/BIC/ZT_STOVOD] as [TPM: Suggested TPQ Dollars]
      ,a.[/BIC/ZT_STOVOE] as [TPM: Suggested TPQ Eaches]
      ,a.[/BIC/ZT_STOVOK] as [TPM: Suggested TPQ Kilos]
      ,a.[/BIC/ZT_STOVOL] as [TPM: Suggested TPQ]
      ,a.[/BIC/ZT_STOVOP] as [TPM: Suggested TPQ Pounds]
      ,a.[/BIC/ZT_SUPVOD] as [TPM: Suggested Incremental Dollars]
      ,a.[/BIC/ZT_SUPVOE] as [TPM: Suggested Incremental Eaches]
      ,a.[/BIC/ZT_SUPVOK] as [TPM: Suggested Incremental Kilos]
      ,a.[/BIC/ZT_SUPVOL] as [TPM: Suggested Incremental Volume]
      ,a.[/BIC/ZT_TSPAMT] as [TPM: Total Trade Spend]
      ,a.[/BIC/ZT_WWTOTL] as [TPM: Warehouse Withdrawal Total Spend]
      ,a.[CURRENCY] as [TPM: Currency]
      ,a.[SALES_UNIT] as [TPM: Sales Unit]
      ,a.[InfoProvider] as [TPM: InfoProvider]
      ,b.[/BIC/ZC_DISPER] as [ATPM - Display]
      ,b.[/BIC/ZC_FADPER] as [ATPM - F&D]
      ,b.[/BIC/ZC_FEAPER] as [ATPM - Feature]
      ,b.[/BIC/ZP_INCCOP] as [ATPM - Plan Incremental COP $]
      ,b.[/BIC/ZS_PGSVOL] as [ATPM - Total Planned Shipment Dollars]
      ,b.[/BIC/ZS_PLCOP] as [ATPM - Total Planned COP]
      ,b.[/BIC/ZS_PLPDD] as [ATPM - Planned Promotion Discount Dollars]
      ,b.[/BIC/ZS_PLPRD] as [ATPM - Planned Promo Dollars @ Full Price]
      ,b.[/BIC/ZS_PLRPS] as [ATPM - Planned Retailer Promotion Sales]
      ,b.[/BIC/ZS_PLRSD] as [ATPM - Planned Retailer Sales Dollar]
      ,b.[/BIC/ZS_PLTPQD] as [ATPM - Planned TPQ Dollars]
      ,b.[/BIC/ZS_PLTPQE] as [ATPM - Planned TPQ Eaches]
      ,b.[/BIC/ZS_PLTPQK] as [ATPM - Planned TPQ Kilos]
      ,b.[/BIC/ZS_PLTPQP] as [ATPM - Planned TPQ Pounds]
      ,b.[/BIC/ZS_PROCOP] as [ATPM - Planned Promo COP $]
      ,b.[/BIC/ZS_TPINCD] as [ATPM - Total Planned Incremental Dollars]
      ,b.[/BIC/ZS_TPINCE] as [ATPM - Total Planned Incremental Eaches]
      ,b.[/BIC/ZS_TPINCK] as [ATPM - Total Planned Incremental Kilos]
      ,b.[/BIC/ZS_TPINCP] as [ATPM - Total Planned Incremental Pounds]
      ,b.[/BIC/ZS_TPINSD] as [ATPM - Total Planned Incremental Ship Dollars]
      ,b.[/BIC/ZS_TPINSE] as [ATPM - Total Planned Incremental Ship Eaches]
      ,b.[/BIC/ZS_TPINSK] as [ATPM - Total Planned Incremental Ship Kilos]
      ,b.[/BIC/ZS_TPINSP] as [ATPM - Total Planned Incremental Ship Pounds]
      ,b.[/BIC/ZS_TPSVOE] as [ATPM - Total Planned Shipment Eaches]
      ,b.[/BIC/ZS_TPSVOK] as [ATPM - Total Planned Shipment Kilos]
      ,b.[/BIC/ZS_TPSVOL] as [ATPM - Total Planned Shipment CS]
      ,b.[/BIC/ZS_TPSVOP] as [ATPM - Total Planned Shipment Pounds]
      ,b.[/BIC/ZT_ADIVOL] as [ATPM - Plan Incremental Volume]
      ,b.[/BIC/ZT_ADJVOL] as [ATPM - Plan TPQ]
      ,b.[/BIC/ZT_BBPAMT] as [ATPM - Bill-back % Total]
      ,b.[/BIC/ZT_BBRAMT] as [ATPM - Bill-back Rate Total]
      ,b.[/BIC/ZT_CRFAMT] as [ATPM - Corrective Lump Sum]
      ,b.[/BIC/ZT_CTFAMT] as [ATPM - CSM Trade]
      ,b.[/BIC/ZT_EBPAMT] as [ATPM - EDLP Bill-back % Total]
      ,b.[/BIC/ZT_EBRAMT] as [ATPM - EDLP Bill-back Rate Total]
      ,b.[/BIC/ZT_EDLPSP] as [ATPM - EDLP Spend]
      ,b.[/BIC/ZT_EIPAMT] as [ATPM - EDLP Off-Invoice % Total]
      ,b.[/BIC/ZT_EIRAMT] as [ATPM - EDLP Off-Invoice Rate Total]
      ,b.[/BIC/ZT_ESHVOD] as [ATPM - Plan Ship Dollars]
      ,b.[/BIC/ZT_ESHVOE] as [ATPM - Plan Ship Eaches]
      ,b.[/BIC/ZT_ESHVOK] as [ATPM - Plan Ship Kilos]
      ,b.[/BIC/ZT_ESHVOL] as [ATPM - Plan Est Ship Vol]
      ,b.[/BIC/ZT_ESHVOP] as [ATPM - Plan Ship Pounds]
      ,b.[/BIC/ZT_ESPAMT] as [ATPM - Parent OI % Total]
      ,b.[/BIC/ZT_ESRAMT] as [ATPM - Parent OI Rate Total]
      ,b.[/BIC/ZT_FXFAMT] as [ATPM - Fixed Lump Sum]
      ,b.[/BIC/ZT_LIPAMT] as [ATPM - Liquidation OI % Total]
      ,b.[/BIC/ZT_LIRAMT] as [ATPM - Liquidation OI Rate Total]
      ,b.[/BIC/ZT_LQFAMT] as [ATPM - Liquidation Fixed]
      ,b.[/BIC/ZT_MLFAMT] as [ATPM - Military Fixed]
      ,b.[/BIC/ZT_NPFAMT] as [ATPM - New Item Fixed]
      ,b.[/BIC/ZT_OIPAMT] as [ATPM - Off-Invoice % Total]
      ,b.[/BIC/ZT_OIRAMT] as [ATPM - Off-Invoice Rate Total]
      ,b.[/BIC/ZT_SCFAMT] as [ATPM - Scanner Application Fixed]
      ,b.[/BIC/ZT_SCPAMT] as [ATPM - ScanApps Scan % Total]
      ,b.[/BIC/ZT_SCRAMT] as [ATPM - ScanApps Scan Rate Total]
      ,b.[/BIC/ZT_SPPAMT] as [ATPM - Promo Scan % Total]
      ,b.[/BIC/ZT_SPRAMT] as [ATPM - Promo Scan Rate Total]
      ,b.[/BIC/ZT_STOVOD] as [ATPM - Suggested TPQ Dollars]
      ,b.[/BIC/ZT_STOVOE] as [ATPM - Suggested TPQ Eaches]
      ,b.[/BIC/ZT_STOVOK] as [ATPM - Suggested TPQ Kilos]
      ,b.[/BIC/ZT_STOVOL] as [ATPM - Suggested TPQ]
      ,b.[/BIC/ZT_STOVOP] as [ATPM - Suggested TPQ Pounds]
      ,b.[/BIC/ZT_SUPVOD] as [ATPM - Suggested Incremental Dollars]
      ,b.[/BIC/ZT_SUPVOE] as [ATPM - Suggested Incremental Eaches]
      ,b.[/BIC/ZT_SUPVOK] as [ATPM - Suggested Incremental Kilos]
      ,b.[/BIC/ZT_SUPVOL] as [ATPM - Suggested Incremental Volume]
      ,b.[/BIC/ZT_TSPAMT] as [ATPM - Total Trade Spend]
      ,b.[/BIC/ZT_WWTOTL] as [ATPM - Warehouse Withdrawal Total Spend]
      ,b.[CURRENCY] as [ATPM - Currency]
      ,b.[SALES_UNIT] as [ATPM - Sales Unit]
      ,b.[/BIC/ZT_ADJPER] as [ATPM - Variance %]
      ,b.[InfoProvider] as [ATPM - InfoProvider]
      ,c.[/BIC/ZC_ACTCOP] as [Sales Promo: Actual COP $]
      ,c.[/BIC/ZC_AGRDL] as [Sales Promo: Gross Sales Dollars]
      ,c.[/BIC/ZC_ASPA] as [Sales Promo: SPA (Special Promo Allowance)]
      ,c.[/BIC/ZC_QGRCS] as [Sales Promo: Gross Cases]
      ,c.[/BIC/ZC_QGRECH] as [Sales Promo: Gross Eaches]
      ,c.[/BIC/ZC_QGRKGS] as [Sales Promo: Gross Kilos]
      ,c.[/BIC/ZC_QGRLBS] as [Sales Promo: Gross Pounds]
      ,c.[/BIC/ZG_QVVGPK] as [Sales Promo: Gross Packages]
      ,c.[CURRENCY] as [Sales Promo: Currency]
      ,/*ISNULL(c.[/BIC/ZC_UPRCAS],0)*/0 as [Sales Promo: Promo Cases Unit]
      ,/*ISNULL(c.[/BIC/ZC_UPRECH],0)*/0 as [Sales Promo: Promo Eaches Unit]
      ,/*ISNULL(c.[/BIC/ZC_UNETKG],0)*/0 as [Sales Promo: True Gross Kilos Unit]
      ,/*ISNULL(c.[/BIC/ZC_UGRLBS],0)*/0 as [Sales Promo: Gross Pounds Unit]
      ,/*ISNULL(c.[/BIC/ZG_UVVGPK],0)*/0 as [Sales Promo: Un Gross Packages UOM]
      ,c.[InfoProvider] as [Sales Promo: InfoProvider]
      ,d.[/BIC/ZCANQTY] as [SVP - Cannibilization Quantity]
      ,d.[/BIC/ZCANQTYE] as [SVP - Total Planned Cannibilization Ship Eaches]
      ,d.[/BIC/ZCANQTYK] as [SVP - Total Planned Cannibilization Ship Kilos]
      ,d.[/BIC/ZCANQTYP] as [SVP - Total Planned Cannibilization Ship Pounds]
      ,d.[/BIC/ZFWBUY] as [SVP - Forward Buy]
      ,d.[/BIC/ZFWBUYE] as [SVP - Total Planned Forward Buy Ship Eaches]
      ,d.[/BIC/ZFWBUYK] as [SVP - Total Planned Forward Buy Ship Kilos]
      ,d.[/BIC/ZFWBUYP] as [SVP - Total Planned Forward Buy Ship Pounds]
      ,d.[/BIC/ZS_CANDOL] as [SVP - Total Planned Cannibilization Ship Dollar]
      ,d.[/BIC/ZS_FWBDOL] as [SVP - Total Planned Forward Buy Ship Dollars]
      ,d.[/BIC/ZS_PCBVOE] as [SVP - Planned Base Eaches]
      ,d.[/BIC/ZS_PCBVOK] as [SVP - Planned Base Kilos]
      ,d.[/BIC/ZS_PCBVOL] as [SVP -  Planned Base Volume]
      ,d.[/BIC/ZS_PCBVOP] as [SVP - Planned Base Pounds]
      ,d.[/BIC/ZS_PGSVOL] as [SVP - Total Planned Shipment Dollars]
      ,d.[/BIC/ZS_PLCOP] as [SVP - Total Planned COP]
      ,d.[/BIC/ZS_PLRSD] as [SVP - Planned Retailer Sales Dollar]
      ,d.[/BIC/ZS_PSHPRC] as [SVP - Planned Shelf Price]
      ,d.[/BIC/ZS_SBAVOD] as [SVP - Suggested Base Dollars]
      ,d.[/BIC/ZS_SBAVOE] as [SVP - Suggested Base Eaches]
      ,d.[/BIC/ZS_SBAVOK] as [SVP - Suggested Base Kilos]
      ,d.[/BIC/ZS_SBAVOL] as [SVP - Suggested Base Volume (SAS)]
      ,d.[/BIC/ZS_SBAVOP] as [SVP - Suggested Base Pounds]
      ,d.[/BIC/ZS_SSHPRC] as [SVP - Suggested Shelf Price (SAS)]
      ,d.[/BIC/ZS_TPBDOL] as [SVP - Total Planned Base $]
      ,d.[/BIC/ZS_TPSVOE] as [SVP - Total Planned Shipment Eaches]
      ,d.[/BIC/ZS_TPSVOK] as [SVP - Total Planned Shipment Kilos]
      ,d.[/BIC/ZS_TPSVOL] as [SVP - Total Planned Shipment CS]
      ,d.[/BIC/ZS_TPSVOP] as [SVP - Total Planned Shipment Pounds]
      ,d.[/BIC/ZTPBVOL] as [SVP - Total Planned Base Volume]
      ,d.[SALES_UNIT] as [SVP - Sales Unit]
      ,d.[CURRENCY] as [SVP - Currency]
      ,d.[InfoProvider] as [SVP - InfoProvider]
      ,e.[/BIC/ZT_BBPAMT] as [LE: Bill-back % Total]
      ,e.[/BIC/ZT_BBRAMT] as [LE: Bill-back Rate Total]
      ,e.[/BIC/ZT_CADAMT] as [LE: CSM Advertising]
      ,e.[/BIC/ZT_CCOAMT] as [LE: CSM COGS]
      ,e.[/BIC/ZT_CCUAMT] as [LE: CSM Coupon]
      ,e.[/BIC/ZT_CRFAMT] as [LE: Correction Lump Sum]
      ,e.[/BIC/ZT_CVAAMT] as [LE: CSM VAP]
      ,e.[/BIC/ZT_EBPAMT] as [LE: EDLP Bill-back % Total]
      ,e.[/BIC/ZT_EBRAMT] as [LE: EDLP Bill-back Rate Total]
      ,e.[/BIC/ZT_FXFAMT] as [LE: Fixed Lump Sum]
      ,e.[/BIC/ZT_LQFAMT] as [LE: Liquidation Fixed]
      ,e.[/BIC/ZT_MISSOI] as [LE: Missed OI]
      ,e.[/BIC/ZT_MLFAMT] as [LE: Military Fixed]
      ,e.[/BIC/ZT_NPFAMT] as [LE: New Item Fixed]
      ,e.[/BIC/ZT_SCFAMT] as [LE: Scanned Application Fixed]
      ,e.[/BIC/ZT_SCPAMT] as [LE: ScanApps Scan % Total]
      ,e.[/BIC/ZT_SCRAMT] as [LE: ScanApps Scan Rate Total]
      ,e.[/BIC/ZT_SPPAMT] as [LE: Promo Scan % Total]
      ,e.[/BIC/ZT_SPRAMT] as [LE: Promo Scan Rate Total]
      ,e.[/BIC/ZT_WWTOTL] as [LE: Warehouse Withdrawal Total]
      ,e.[CURRENCY] as [LE: Currency]
      ,e.[InfoProvider] as [LE: InfoProvider]
	  ,[PROMOTION_STATUS] = CASE 
								WHEN prom.PROMTN_STATUS IS NULL THEN '#'
								ELSE prom.PROMTN_STATUS
							 END
	  ,CAMPAIGN_TYPE = CASE 
								WHEN prom.CMPGN_TYP IS NULL THEN '#'
								ELSE prom.CMPGN_TYP
							 END
	  ,HIER_D_LVL5 = CASE 
								WHEN cust.LVL5_CUST_NBR IS NULL THEN '#'
								ELSE cust.LVL5_CUST_NBR
							 END
	 ,b.[/BIC/ZT_SAOAMT] as [ATPM : Scanner Apps Overlay Rate Amount]  ----TASK0564827 - ADD Scanner apps and overlay amount columns
	 ,b.[/BIC/ZT_OVLAMT] as [ATPM : Overlay Amount]
	 ,e.[/BIC/ZT_SAOAMT] as [LE : Scanner Apps Overlay Rate Amount]
	 ,e.[/BIC/ZT_OVLAMT] as [LE : Overlay Amount]
	INTO #zm_tpm60_null
	FROM #zm_tpm60_master tmp
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_SLC8800] a ON (a.[CUSTOMER]= tmp.CUSTOMER and a.[MATERIAL] = tmp.MATERIAL and  a.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and a.[CALWEEK]=tmp.[CALWEEK] and a.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and a.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =a.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_TPM8800_AGG] b ON (b.[CUSTOMER]= tmp.CUSTOMER and b.[MATERIAL] = tmp.MATERIAL and  b.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and b.[CALWEEK]=tmp.[CALWEEK] and b.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and b.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =b.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_CON6500] c ON (c.[CUSTOMER]= tmp.CUSTOMER and c.[MATERIAL] = tmp.MATERIAL and  c.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and c.[CALWEEK]=tmp.[CALWEEK] and c.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and c.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =c.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_SVP1300] d ON (d.[CUSTOMER]= tmp.CUSTOMER and d.[MATERIAL] = tmp.MATERIAL and  d.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and d.[CALWEEK]=tmp.[CALWEEK] and d.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and d.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =d.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_LES5600] e ON (e.[CUSTOMER]= tmp.CUSTOMER and e.[MATERIAL] = tmp.MATERIAL and  e.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and e.[CALWEEK]=tmp.[CALWEEK] and e.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and e.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY = e.CURRENCY)--
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PROMTN_MSTR] prom on (tmp.[CRM_MKTELM] = prom.PROMTN_ID)
	LEFT OUTER JOIN #uvw_cust_hier cust ON (tmp.CUSTOMER  = cust.[LST_LVL_CUST_NBR]) 
	
	
--PRINT N'03: #Start Loading final table ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Insert the multiprovider into a table.  Ensure that if a field is NULL it gets replaced by a zero.
IF EXISTS (SELECT name from sys.indexes where name = 'IX_ZM_TPM60')
begin
	drop index IX_ZM_TPM60 on KNA_COMRCL.dbo.ZM_TPM60
end
		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

TRUNCATE TABLE KNA_COMRCL.dbo.ZM_TPM60
INSERT INTO KNA_COMRCL.dbo.ZM_TPM60
SELECT [CUSTOMER] as [CUST]
      ,[MATERIAL] as [MATRL]
      ,[/BIC/ZMXDPALM] as [MIXD_PLT_MATRL]
      ,[CALWEEK] as [CAL_WK]
      ,[/BIC/ZMXDFLG] as [MIXD_PLT_FLG]
      ,[CRM_MKTELM] as [PROMTNS]
      ,[CURRENCY] as [CURR]
      ,ISNULL([TPM: Display],0) as [TPM_DISP]
      ,ISNULL([TPM: F&D],0) as [TPM_F_D]
      ,ISNULL([TPM: Feature],0) as [TPM_FEATUR] 
      ,ISNULL([TPM: Plan Incremental COP $],0) as [TPM_PLN_INCR_COST_OF_PROD_USD]
      ,ISNULL([TPM: Total Planned Shipment Dollars],0) as [TPM_TOTL_PLN_SHIPMNT_USD]
      ,ISNULL([TPM: Total Planned COP],0) as [TPM_TOTL_PLN_COST_OF_PROD_USD]
      ,ISNULL([TPM: Planned Promotion Discount Dollars],0) as [TPM_PLN_PROMTN_DISC_USD]
      ,ISNULL([TPM: Planned Promo Dollars @ Full Price],0) as [TPM_PLN_PROMTN_USD_FULL_PRC]
      ,ISNULL([TPM: Planned Retailer Promotion Sales],0) as [TPM_PLN_RETLR_PROMTN_SALES] 
      ,ISNULL([TPM: Planned Retailer Sales Dollar],0) as [TPM_PLN_RETLR_SALES_USD]
      ,ISNULL([TPM: Planned TPQ Dollars],0) as [TPM_PLN_TPQ_USD]
      ,ISNULL([TPM: Planned TPQ Eaches],0) as [TPM_PLN_TPQ_EA]
      ,ISNULL([TPM: Planned TPQ Kilos],0) as [TPM_PLN_TPQ_KGS]
      ,ISNULL([TPM: Planned TPQ Pounds],0) as [TPM_PLN_TPQ_LBS]
      ,ISNULL([TPM: Planned Promo COP $],0) as [TPM_PLN_PROMTN_COST_OF_PROD_USD]
      ,ISNULL([TPM: Total Planned Incremental Dollars],0) as [TPM_TOTL_PLN_INCR_USD]
      ,ISNULL([TPM: Total Planned Incremental Eaches],0) as [TPM_TOTL_PLN_INCR_EA]
      ,ISNULL([TPM: Total Planned Incremental Kilos],0) as [TPM_TOTL_PLN_INCR_KGS]
      ,ISNULL([TPM: Total Planned Incremental Pounds],0) as [TPM_TOTL_PLN_INCR_LBS]
      ,ISNULL([TPM: Total Planned Incremental Ship Dollars],0) as [TPM_TOTL_PLN_INCR_SHIP_USD]
      ,ISNULL([TPM: Total Planned Incremental Ship Eaches],0) as [TPM_TOTL_PLN_INCR_SHIP_EA]
      ,ISNULL([TPM: Total Planned Incremental Ship Kilos],0) as [TPM_TOTL_PLN_INCR_SHIP_KGS]
      ,ISNULL([TPM: Total Planned Incremental Ship Pounds],0) as [TPM_TOTL_PLN_INCR_SHIP_LBS]
      ,ISNULL([TPM: Total Planned Shipment Eaches],0) as [TPM_TOTL_PLN_SHIPMNT_EA]
      ,ISNULL([TPM: Total Planned Shipment Kilos],0) as [TPM_TOTL_PLN_SHIPMNT_KGS]
      ,ISNULL([TPM: Total Planned Shipment CS],0) as [TPM_TOTL_PLN_SHIPMNT_CS]
      ,ISNULL([TPM: Total Planned Shipment Pounds],0) as [TPM_TOTL_PLN_SHIPMNT_LBS]
      ,ISNULL([TPM: Plan Incremental Volume],0) as [TPM_PLN_INCR_VOL]
      ,ISNULL([TPM: Plan TPQ],0) as [TPM_PLN_TPQ]
      ,ISNULL([TPM: Bill-back % Total],0) as [TPM_BILLBACK_PCT_TOTL]
      ,ISNULL([TPM: Bill-back Rate Total],0) as [TPM_BILLBACK_RT_TOTL] 
      ,ISNULL([TPM: Corrective Lump Sum],0) as [TPM_CORRCTV_LUMP_SUM]
      ,ISNULL([TPM: CSM Trade],0) as [TPM_CSM_TRDE]
      ,ISNULL([TPM: EDLP Bill-back % Total],0) as [TPM_EDLP_BILLBACK_PCT_TOTL]
      ,ISNULL([TPM: EDLP Bill-back Rate Total],0) as [TPM_EDLP_BILLBACK_RT_TOTL]
      ,ISNULL([TPM: EDLP Spend],0) as [TPM_EDLP_SPND]
      ,ISNULL([TPM: EDLP Off-Invoice % Total],0) as [TPM_EDLP_OFF_INVC_PCT_TOTL]
      ,ISNULL([TPM: EDLP Off-Invoice Rate Total],0) as [TPM_EDLP_OFF_INVC_RT_TOTL]
      ,ISNULL([TPM: Plan Ship Dollars],0) as [TPM_PLN_SHIP_USD]
      ,ISNULL([TPM: Plan Ship Eaches],0) as [TPM_PLN_SHIP_EA]
      ,ISNULL([TPM: Plan Ship Kilos],0) as [TPM_PLN_SHIP_KGS]
      ,ISNULL([TPM: Plan Est Ship Vol],0) as [TPM_PLN_EST_SHIP_VOL]
      ,ISNULL([TPM: Plan Ship Pounds],0) as [TPM_PLN_EST_SHIP_VOL]
      ,ISNULL([TPM: Parent OI % Total],0) as [TPM_PAR_OI_PCT_TOTL]
      ,ISNULL([TPM: Parent OI Rate Total],0) as [TPM_PAR_OI_RT_TOTL]
      ,ISNULL([TPM: Fixed Lump Sum],0) as [TPM_FIX_LUMP_SUM]
      ,ISNULL([TPM: Liquidation OI % Total],0) as [TPM_LQDTN_OI_PCT_TOTL]
      ,ISNULL([TPM: Liquidation OI Rate Total],0) as [TPM_LQDTN_OI_RT_TOTL]
      ,ISNULL([TPM: Liquidation Fixed],0) as [TPM_LQDTN_FIX]
      ,ISNULL([TPM: Military Fixed],0) as [TPM_MIL_FIX]
      ,ISNULL([TPM: New Item Fixed],0) as [TPM_NEW_ITM_FIX]
      ,ISNULL([TPM: Off-Invoice % Total],0) as [TPM_OFF_INVC_PCT_TOTL]
      ,ISNULL([TPM: Off-Invoice Rate Total],0) as [TPM_OFF_INVC_RT_TOTL]
      ,ISNULL([TPM: Scanner Application Fixed],0) as [TPM_SCNR_APPL_FIX]
      ,ISNULL([TPM: ScanApps Scan % Total],0) as [TPM_SCANAPPS_SCAN_PCT_TOTL]
      ,ISNULL([TPM: ScanApps Scan Rate Total],0) as [TPM_SCANAPPS_SCAN_RT_TOTL]
      ,ISNULL([TPM: Promo Scan % Total],0) as [TPM_PROMTN_SCAN_PCT_TOTL]
      ,ISNULL([TPM: Promo Scan Rate Total],0) as [TPM_PROMTN_SCAN_RT_TOTL]
      ,ISNULL([TPM: Suggested TPQ Dollars],0) as [TPM_SUGSTD_TPQ_USD]
      ,ISNULL([TPM: Suggested TPQ Eaches],0) as [TPM_SUGSTD_TPQ_EA]
      ,ISNULL([TPM: Suggested TPQ Kilos],0) as [TPM_SUGSTD_TPQ_KGS]
      ,ISNULL([TPM: Suggested TPQ],0) as [TPM_SUGSTD_TPQ]
      ,ISNULL([TPM: Suggested TPQ Pounds],0) as [TPM_SUGSTD_TPQ_LBS]
      ,ISNULL([TPM: Suggested Incremental Dollars],0) as [TPM_SUGSTD_INCR_USD]
      ,ISNULL([TPM: Suggested Incremental Eaches],0) as [TPM_SUGSTD_INCR_EA]
      ,ISNULL([TPM: Suggested Incremental Kilos],0) as [TPM_SUGSTD_INCR_KGS]
      ,ISNULL([TPM: Suggested Incremental Volume],0) as [TPM_SUGSTD_INCR_VOL]
      ,ISNULL([TPM: Total Trade Spend],0) as [TPM_TOTL_TRDE_SPND]
      ,ISNULL([TPM: Warehouse Withdrawal Total Spend],0) as [TPM_WHSE_WDRL_TOTL_SPND] 
      ,ISNULL([TPM: Currency],0) as [TPM_CURR]
      ,ISNULL([TPM: Sales Unit],0) as [TPM_SALES_UNIT]
      ,ISNULL([TPM: InfoProvider],0) as [TPM_BW_SRC]
      ,ISNULL([ATPM - Display],0) as [ATPM_DISP]
      ,ISNULL([ATPM - F&D],0) as [ATPM_F_D]
      ,ISNULL([ATPM - Feature],0) as [ATPM_FEATUR]
      ,ISNULL([ATPM - Plan Incremental COP $],0) as [ATPM_PLN_INCR_COST_OF_PROD_USD]
      ,ISNULL([ATPM - Total Planned Shipment Dollars],0) as [ATPM_TOTL_PLN_SHIPMNT_USD]
      ,ISNULL([ATPM - Total Planned COP],0) as [ATPM_TOTL_PLN_COST_OF_PROD]
      ,ISNULL([ATPM - Planned Promotion Discount Dollars],0) as [ATPM_PLN_PROMTN_DISC_USD]
      ,ISNULL([ATPM - Planned Promo Dollars @ Full Price],0) as [ATPM_PLN_PROMTN_USD_FULL_PRC]
      ,ISNULL([ATPM - Planned Retailer Promotion Sales],0) as [ATPM_PLN_RETLR_PROMTN_SALES]
      ,ISNULL([ATPM - Planned Retailer Sales Dollar],0) as [ATPM_PLN_RETLR_SALES_USD]
      ,ISNULL([ATPM - Planned TPQ Dollars],0) as [ATPM_PLN_TPQ_USD]
      ,ISNULL([ATPM - Planned TPQ Eaches],0) as [ATPM_PLN_TPQ_EA]
      ,ISNULL([ATPM - Planned TPQ Kilos],0) as [ATPM_PLN_TPQ_KGS]
      ,ISNULL([ATPM - Planned TPQ Pounds],0) as [ATPM_PLN_TPQ_LBS]
      ,ISNULL([ATPM - Planned Promo COP $],0) as [ATPM_PLN_TPQ_LBS]
      ,ISNULL([ATPM - Total Planned Incremental Dollars],0) as [ATPM_TOTL_PLN_INCR_USD]
      ,ISNULL([ATPM - Total Planned Incremental Eaches],0) as [ATPM_TOTL_PLN_INCR_EA] 
      ,ISNULL([ATPM - Total Planned Incremental Kilos],0) as [ATPM_TOTL_PLN_INCR_KGS]
      ,ISNULL([ATPM - Total Planned Incremental Pounds],0) as [ATPM_TOTL_PLN_INCR_LBS]
      ,ISNULL([ATPM - Total Planned Incremental Ship Dollars],0) as [ATPM_TOTL_PLN_INCR_SHIP_USD]
      ,ISNULL([ATPM - Total Planned Incremental Ship Eaches],0) as [ATPM_TOTL_PLN_INCR_SHIP_EA]
      ,ISNULL([ATPM - Total Planned Incremental Ship Kilos],0) as [ATPM_TOTL_PLN_INCR_SHIP_EA]
      ,ISNULL([ATPM - Total Planned Incremental Ship Pounds],0) as [ATPM_TOTL_PLN_INCR_SHIP_LBS] 
      ,ISNULL([ATPM - Total Planned Shipment Eaches],0) as [ATPM_TOTL_PLN_SHIPMNT_EA]
      ,ISNULL([ATPM - Total Planned Shipment Kilos],0) as [ATPM_TOTL_PLN_SHIPMNT_KGS]
      ,ISNULL([ATPM - Total Planned Shipment CS],0) as [ATPM_TOTL_PLN_SHIPMNT_CS]
      ,ISNULL([ATPM - Total Planned Shipment Pounds],0) as [ATPM_TOTL_PLN_SHIPMNT_LBS]
      ,ISNULL([ATPM - Plan Incremental Volume],0) as [ATPM_PLN_INCR_VOL] 
      ,ISNULL([ATPM - Plan TPQ],0) as [ATPM_PLN_TPQ] 
      ,ISNULL([ATPM - Bill-back % Total],0) as [ATPM_BILLBACK_PCT_TOTL] 
      ,ISNULL([ATPM - Bill-back Rate Total],0) as [ATPM_BILLBACK_RT_TOTL] 
      ,ISNULL([ATPM - Corrective Lump Sum],0) as [ATPM_CORRCTV_LUMP_SUM] 
      ,ISNULL([ATPM - CSM Trade],0) as [ATPM_CSM_TRDE] 
      ,ISNULL([ATPM - EDLP Bill-back % Total],0) as [ATPM_EDLP_BILLBACK_PCT_TOTL] 
      ,ISNULL([ATPM - EDLP Bill-back Rate Total],0) as [ATPM_EDLP_BILLBACK_RT_TOTL] 
      ,ISNULL([ATPM - EDLP Spend],0) as [ATPM_EDLP_SPND] 
      ,ISNULL([ATPM - EDLP Off-Invoice % Total],0) as [ATPM_EDLP_OFF_INVC_PCT_TOTL] 
      ,ISNULL([ATPM - EDLP Off-Invoice Rate Total],0) as [ATPM_EDLP_OFF_INVC_RT_TOTL] 
      ,ISNULL([ATPM - Plan Ship Dollars],0) as [ATPM_PLN_SHIP_USD] 
      ,ISNULL([ATPM - Plan Ship Eaches],0) as [ATPM_PLN_SHIP_EA] 
      ,ISNULL([ATPM - Plan Ship Kilos],0) as [ATPM_PLN_SHIP_KGS] 
      ,ISNULL([ATPM - Plan Est Ship Vol],0) as [ATPM_PLN_EST_SHIP_VOL] 
      ,ISNULL([ATPM - Plan Ship Pounds],0) as [ATPM_PLN_SHIP_LBS] 
      ,ISNULL([ATPM - Parent OI % Total],0) as [ATPM_PAR_OI_PCT_TOTL] 
      ,ISNULL([ATPM - Parent OI Rate Total],0) as [ATPM_PAR_OI_RT_TOTL] 
      ,ISNULL([ATPM - Fixed Lump Sum],0) as [ATPM_FIX_LUMP_SUM] 
      ,ISNULL([ATPM - Liquidation OI % Total],0) as [ATPM_LQDTN_OI_PCT_TOTL] 
      ,ISNULL([ATPM - Liquidation OI Rate Total],0) as [ATPM_LQDTN_OI_RT_TOTL] 
      ,ISNULL([ATPM - Liquidation Fixed],0) as [ATPM_LQDTN_FIX] 
      ,ISNULL([ATPM - Military Fixed],0) as [ATPM_MIL_FIX] 
      ,ISNULL([ATPM - New Item Fixed],0) as [ATPM_NEW_ITM_FIX] 
      ,ISNULL([ATPM - Off-Invoice % Total],0) as [ATPM_OFF_INVC_PCT_TOTL] 
      ,ISNULL([ATPM - Off-Invoice Rate Total],0) as [ATPM_OFF_INVC_RT_TOTL] 
      ,ISNULL([ATPM - Scanner Application Fixed],0) as [ATPM_SCNR_APPL_FIX] 
      ,ISNULL([ATPM - ScanApps Scan % Total],0) as [ATPM_SCANAPPS_SCAN_PCT_TOTL] 
      ,ISNULL([ATPM - ScanApps Scan Rate Total],0) as [ATPM_SCANAPPS_SCAN_RT_TOTL] 
      ,ISNULL([ATPM - Promo Scan % Total],0) as [ATPM_PROMTN_SCAN_PCT_TOTL] 
      ,ISNULL([ATPM - Promo Scan Rate Total],0) as [ATPM_PROMTN_SCAN_RT_TOTL] 
      ,ISNULL([ATPM - Suggested TPQ Dollars],0) as [ATPM_SUGSTD_TPQ_USD] 
      ,ISNULL([ATPM - Suggested TPQ Eaches],0) as [ATPM_SUGSTD_TPQ_EA] 
      ,ISNULL([ATPM - Suggested TPQ Kilos],0) as [ATPM_SUGSTD_TPQ_KGS] 
      ,ISNULL([ATPM - Suggested TPQ],0) as [ATPM_SUGSTD_TPQ] 
      ,ISNULL([ATPM - Suggested TPQ Pounds],0) as [ATPM_SUGSTD_TPQ_LBS] 
      ,ISNULL([ATPM - Suggested Incremental Dollars],0) as [ATPM_SUGSTD_INCR_USD] 
      ,ISNULL([ATPM - Suggested Incremental Eaches],0) as [ATPM_SUGSTD_INCR_EA] 
      ,ISNULL([ATPM - Suggested Incremental Kilos],0) as [ATPM_SUGSTD_INCR_KGS] 
      ,ISNULL([ATPM - Suggested Incremental Volume],0) as [ATPM_SUGSTD_INCR_VOL] 
      ,ISNULL([ATPM - Total Trade Spend],0) as [ATPM_TOTL_TRDE_SPND] 
      ,ISNULL([ATPM - Warehouse Withdrawal Total Spend],0) as [ATPM_WHSE_WDRL_TOTL_SPND] 
      ,ISNULL([ATPM - Currency],0) as [ATPM_CURR] 
      ,ISNULL([ATPM - Sales Unit],0) as [ATPM_SALES_UNIT] 
      ,ISNULL([ATPM - Variance %],0) as [ATPM_VARNC_PCT] 
      ,ISNULL([ATPM - InfoProvider],0) as [ATPM_BW_SRC] 
      ,ISNULL([Sales Promo: Actual COP $],0) as [SALES_PROMTN_ACTL_COST_OF_PROD_USD] 
      ,ISNULL([Sales Promo: Gross Sales Dollars],0) as [SALES_PROMTN_GROS_SALES_USD] 
      ,ISNULL([Sales Promo: SPA (Special Promo Allowance)],0) as [SALES_PROMTN_SPCL_PROMTN_ALLWNC] 
      ,ISNULL([Sales Promo: Gross Cases],0) as [SALES_PROMTN_GROS_CS] 
      ,ISNULL([Sales Promo: Gross Eaches],0) as [SALES_PROMTN_GROS_EA] 
      ,ISNULL([Sales Promo: Gross Kilos],0) as [SALES_PROMTN_GROS_KGS] 
      ,ISNULL([Sales Promo: Gross Pounds],0) as [SALES_PROMTN_GROS_LBS] 
      ,ISNULL([Sales Promo: Gross Packages],0) as [SALES_PROMTN_GROS_PKGS] 
      ,ISNULL([Sales Promo: Currency],0) as [SALES_PROMTN_CURR] 
      ,ISNULL([Sales Promo: Promo Cases Unit],0) as [SALES_PROMTN_PROMTN_CS_UNIT] 
      ,ISNULL([Sales Promo: Promo Eaches Unit],0) as [SALES_PROMTN_PROMTN_EA_UNIT] 
      ,ISNULL([Sales Promo: True Gross Kilos Unit],0) as [SALES_PROMTN_TRUE_GROS_LBS_UNIT] 
      ,ISNULL([Sales Promo: Gross Pounds Unit],0) as [SALES_PROMTN_GROS_LBS_UNIT] 
      ,ISNULL([Sales Promo: Un Gross Packages UOM],0) as [SALES_PROMTN_UN_GROS_PKGS_UOM] 
      ,ISNULL([Sales Promo: InfoProvider],0) as [SALES_PROMTN_BW_SRC] 
      ,ISNULL([SVP - Cannibilization Quantity],0) as [SVP_CANBLZTN_QTY] 
      ,ISNULL([SVP - Total Planned Cannibilization Ship Eaches],0) as [SVP_TOTL_PLN_CANBLZTN_SHIP_EA] 
      ,ISNULL([SVP - Total Planned Cannibilization Ship Kilos],0) as [SVP_TOTL_PLN_CANBLZTN_SHIP_KGS] 
      ,ISNULL([SVP - Total Planned Cannibilization Ship Pounds],0) as [SVP_TOTL_PLN_CANBLZTN_SHIP_LBS] 
      ,ISNULL([SVP - Forward Buy],0) as [SVP_FWD_BUY] 
      ,ISNULL([SVP - Total Planned Forward Buy Ship Eaches],0) as [SVP_TOTL_PLN_FWD_BUY_SHIP_EA] 
      ,ISNULL([SVP - Total Planned Forward Buy Ship Kilos],0) as [SVP_TOTL_PLN_FWD_BUY_SHIP_KGS] 
      ,ISNULL([SVP - Total Planned Forward Buy Ship Pounds],0) as [SVP_TOTL_PLN_FWD_BUY_SHIP_LBS] 
      ,ISNULL([SVP - Total Planned Cannibilization Ship Dollar],0) as [SVP_TOTL_PLN_CANBLZTN_SHIP_USD] 
      ,ISNULL([SVP - Total Planned Forward Buy Ship Dollars],0) as [SVP_TOTL_PLN_FWD_BUY_SHIP_USD] 
      ,ISNULL([SVP - Planned Base Eaches],0) as [SVP_PLN_BASE_EA] 
      ,ISNULL([SVP - Planned Base Kilos],0) as [SVP_PLN_BASE_KGS] 
      ,ISNULL([SVP -  Planned Base Volume],0) as [SVP_PLN_BASE_VOL] 
      ,ISNULL([SVP - Planned Base Pounds],0) as [SVP_PLN_BASE_LBS] 
      ,ISNULL([SVP - Total Planned Shipment Dollars],0) as [SVP_TOTL_PLN_SHIPMNT_USD] 
      ,ISNULL([SVP - Total Planned COP],0) as [SVP_TOTL_PLN_COST_OF_PROD_USD] 
      ,ISNULL([SVP - Planned Retailer Sales Dollar],0) as [SVP_PLN_RETLR_SALES_USD] 
      ,ISNULL([SVP - Planned Shelf Price],0) as [SVP_PLN_SHLF_PRC] 
      ,ISNULL([SVP - Suggested Base Dollars],0) as [SVP_SUGSTD_BASE_USD] 
      ,ISNULL([SVP - Suggested Base Eaches],0) as [SVP_SUGSTD_BASE_EA] 
      ,ISNULL([SVP - Suggested Base Kilos],0) as [SVP_SUGSTD_BASE_KGS] 
      ,ISNULL([SVP - Suggested Base Volume (SAS)],0) as [SVP_SUGSTD_BASE_VOL_SAS] 
      ,ISNULL([SVP - Suggested Base Pounds],0) as [SVP_SUGSTD_BASE_LBS] 
      ,ISNULL([SVP - Suggested Shelf Price (SAS)],0) as [SVP_SUGSTD_SHLF_PRC_SAS] 
      ,ISNULL([SVP - Total Planned Base $],0) as [SVP_TOTL_PLN_BASE_USD] 
      ,ISNULL([SVP - Total Planned Shipment Eaches],0) as [SVP_TOTL_PLN_SHIPMNT_EA] 
      ,ISNULL([SVP - Total Planned Shipment Kilos],0) as [SVP_TOTL_PLN_SHIPMNT_KGS] 
      ,ISNULL([SVP - Total Planned Shipment CS],0) as [SVP_TOTL_PLN_SHIPMNT_CS] 
      ,ISNULL([SVP - Total Planned Shipment Pounds],0) as [SVP_TOTL_PLN_SHIPMNT_LBS] 
      ,ISNULL([SVP - Total Planned Base Volume],0) as [SVP_TOTL_PLN_BASE_VOL] 
      ,ISNULL([SVP - Sales Unit],0) as [SVP_SALES_UNIT] 
      ,ISNULL([SVP - Currency],0) as [SVP_CURR] 
      ,ISNULL([SVP - InfoProvider],0) as [SVP_BW_SRC] 
      ,ISNULL([LE: Bill-back % Total],0) as [LE_BILLBACK_PCT_TOTL] 
      ,ISNULL([LE: Bill-back Rate Total],0) as [LE_BILLBACK_RT_TOTL] 
      ,ISNULL([LE: CSM Advertising],0) as [LE_CSM_ADVER] 
      ,ISNULL([LE: CSM COGS],0) as [LE_CSM_COGS] 
      ,ISNULL([LE: CSM Coupon],0) as [LE_CSM_CPN] 
      ,ISNULL([LE: Correction Lump Sum],0) as [LE_CORRCTN_LUMP_SUM] 
      ,ISNULL([LE: CSM VAP],0) as [LE_CSM_VAP] 
      ,ISNULL([LE: EDLP Bill-back % Total],0) as [LE_EDLP_BILLBACK_PCT_TOTL] 
      ,ISNULL([LE: EDLP Bill-back Rate Total],0) as [LE_EDLP_BILLBACK_RT_TOTL] 
      ,ISNULL([LE: Fixed Lump Sum],0) as [LE_FIX_LUMP_SUM] 
      ,ISNULL([LE: Liquidation Fixed],0) as [LE_LQDTN_FIX] 
      ,ISNULL([LE: Missed OI],0) as [LE_MISS_OI] 
      ,ISNULL([LE: Military Fixed],0) as [LE_MIL_FIX] 
      ,ISNULL([LE: New Item Fixed],0) as [LE_NEW_ITM_FIX] 
      ,ISNULL([LE: Scanned Application Fixed],0) as [LE_SCAN_APPL_FIX] 
      ,ISNULL([LE: ScanApps Scan % Total],0) as [LE_SCANAPPS_SCAN_PCT_TOTL] 
      ,ISNULL([LE: ScanApps Scan Rate Total],0) as [LE_SCANAPPS_SCAN_RT_TOTL] 
      ,ISNULL([LE: Promo Scan % Total],0) as [LE_PROMTN_SCAN_PCT_TOTL] 
      ,ISNULL([LE: Promo Scan Rate Total],0) as [LE_PROMTN_SCAN_RT_TOTL] 
      ,ISNULL([LE: Warehouse Withdrawal Total],0) as [LE_WHSE_WDRL_TOTL] 
      ,ISNULL([LE: Currency],0) as [LE_CURR] 
      ,ISNULL([LE: InfoProvider],0) as [LE_BW_SRC] 
	  ,[PROMOTION_STATUS] as [PROMTN_STATUS] 
	  ,[CAMPAIGN_TYPE] as [CMPGN_TYP] 
	  ,[HIER_D_LVL5] 
	  ,ISNULL([ATPM : Scanner Apps Overlay Rate Amount],0) as [ATPM_SCAN_APPS_OL_RT_AMT] ----TASK0564827 - ADD Scanner apps and overlay amount columns
	  ,ISNULL([ATPM : Overlay Amount],0)as [ATPM_OL_AMT]
	  ,ISNULL([LE : Scanner Apps Overlay Rate Amount],0)as [LE_SCAN_APPS_OL_RT_AMT]
	  ,ISNULL([LE : Overlay Amount],0)as [LE_OL_AMT] 
	  FROM #zm_tpm60_null
	  
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		--RETURN @@ERROR
	end
	COMMIT TRANSACTION;

IF NOT EXISTS (SELECT name from sys.indexes where name = 'IX_ZM_TPM60')
begin
	create unique clustered index IX_ZM_TPM60 on KNA_COMRCL.dbo.ZM_TPM60 ([CUST], [MATRL], [MIXD_PLT_MATRL], [CAL_WK], [PROMTNS],[MIXD_PLT_FLG], [CURR])
end

--PRINT N'02: #Start Loading final calculated table ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

--The Final three BEx query outputs requires a calculated table built off the multiprovider.  This step calculates important fields as well as filters
--incorrect recors out
--drop the index that is on the table
IF EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF')
begin
	drop index ix_tpm60_pln_CKF on KNA_COMRCL.dbo.ZM_TPM60_CKF
end

--Load the calculated TPM60 table and sum up all values to ensure 
		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

TRUNCATE TABLE [KNA_COMRCL].[dbo].[ZM_TPM60_CKF]
INSERT INTO [KNA_COMRCL].[dbo].[ZM_TPM60_CKF]
	SELECT  [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
      ,sum([SVP_PLN_BASE_LBS] ) as [PLN_BASE_LBS] 
      ,sum([ATPM_TOTL_PLN_INCR_LBS]  + [TPM_TOTL_PLN_INCR_LBS] ) as [PLN_INCR_LBS] 
      ,sum([SVP_PLN_BASE_EA] ) as [PLN_BASE_UNITS] 
      ,sum([ATPM_TOTL_PLN_INCR_EA] + [TPM_TOTL_PLN_INCR_EA]) as [PLN_INCR_UNITS] 
      ,sum([SVP_PLN_RETLR_SALES_USD] ) as [PLN_BASE_RTN_USD] 
      ,sum([ATPM_PLN_RETLR_SALES_USD] + [TPM_PLN_RETLR_SALES_USD]) as [PLN_INCR_RTN_USD] 
      ,sum([SVP_TOTL_PLN_BASE_VOL] ) as [PLN_BASE_USD] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_USD] + [TPM_TOTL_PLN_INCR_SHIP_USD]) as [PLN_INCR_SHIP_USD] 
      ,sum([TPM_TOTL_PLN_INCR_SHIP_USD]  + [SVP_TOTL_PLN_SHIPMNT_USD] + [ATPM_TOTL_PLN_SHIPMNT_USD]) as [PLN_SHIP_USD] 
      ,sum([TPM_TOTL_PLN_INCR_SHIP_LBS] + [SVP_TOTL_PLN_SHIPMNT_LBS] + [ATPM_TOTL_PLN_INCR_SHIP_LBS]) as [PLN_SHIP_LBS] 
      ,sum([TPM_TOTL_PLN_SHIPMNT_EA]  + [SVP_TOTL_PLN_SHIPMNT_EA] + [ATPM_TOTL_PLN_SHIPMNT_EA]) as [PLN_SHIP_EA] 
      ,sum([ATPM_FIX_LUMP_SUM] + [TPM_FIX_LUMP_SUM] + [ATPM_SCNR_APPL_FIX] + [TPM_SCNR_APPL_FIX] +[ATPM_CORRCTV_LUMP_SUM]  
	   +[TPM_CORRCTV_LUMP_SUM] + [ATPM_NEW_ITM_FIX] + [TPM_NEW_ITM_FIX] + [ATPM_MIL_FIX] + [TPM_MIL_FIX] 
	   +[ATPM_LQDTN_FIX] + [TPM_LQDTN_FIX]) as [PLN_TOTL_FIX_KMF_SPND] 
      ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL]  + [TPM_LQDTN_OI_RT_TOTL] +
	   [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] + [ATPM_BILLBACK_RT_TOTL] + [TPM_BILLBACK_RT_TOTL] + [ATPM_BILLBACK_PCT_TOTL]  + [TPM_BILLBACK_PCT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] + [ATPM_EDLP_OFF_INVC_PCT_TOTL] + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_PROMTN_SCAN_RT_TOTL] + [TPM_PROMTN_SCAN_RT_TOTL] +
       [ATPM_PROMTN_SCAN_PCT_TOTL] + [TPM_PROMTN_SCAN_PCT_TOTL] + [ATPM_SCANAPPS_SCAN_RT_TOTL] + [TPM_SCANAPPS_SCAN_RT_TOTL] + [ATPM_SCANAPPS_SCAN_PCT_TOTL] + [TPM_SCANAPPS_SCAN_PCT_TOTL] +
       [ATPM_EDLP_BILLBACK_RT_TOTL] + [TPM_EDLP_BILLBACK_RT_TOTL]  + [ATPM_EDLP_BILLBACK_PCT_TOTL] + [TPM_EDLP_BILLBACK_PCT_TOTL] + [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] +
       [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL] + [ATPM_WHSE_WDRL_TOTL_SPND] + [TPM_WHSE_WDRL_TOTL_SPND]) as [PLN_VAR_KMF_SPND] 
      ,sum([SALES_PROMTN_SPCL_PROMTN_ALLWNC]*-1) as [ACTL_OI_SPND_NOT_RSTR] 
      ,sum([LE_FIX_LUMP_SUM] + [LE_SCAN_APPL_FIX] + [LE_CORRCTN_LUMP_SUM] + [LE_NEW_ITM_FIX] 
	  +[LE_MIL_FIX] + [LE_LQDTN_FIX]) as [LATST_ESTMT_TOTL_FIX_KMF] 
      ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_PCT_TOTL]  + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL] + [TPM_LQDTN_OI_RT_TOTL] + [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] +
	   [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] + [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL]) as [PLN_TOTL_OFF_INVC_USD] 
      ,sum([LE_MISS_OI] ) as [LATST_ESTMT_MISS_OI] 
      ,sum([LE_BILLBACK_RT_TOTL]  + [LE_BILLBACK_PCT_TOTL] ) as [LATST_ESTMT_BILLBACK_USD] 
      ,sum([LE_EDLP_BILLBACK_RT_TOTL] + [LE_EDLP_BILLBACK_PCT_TOTL]) as [LATST_ESTMT_EDLP_BILLBACK_USD] 
      ,sum([LE_SCANAPPS_SCAN_RT_TOTL] + [LE_SCANAPPS_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_APPS_BILLBACK_USD] 
      ,sum([LE_PROMTN_SCAN_RT_TOTL] + [LE_PROMTN_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_USD] 
      ,sum([LE_WHSE_WDRL_TOTL]) as [LE_WW_USD] 
      ,sum([ATPM_TOTL_PLN_COST_OF_PROD] + [TPM_TOTL_PLN_COST_OF_PROD_USD] + [SVP_TOTL_PLN_COST_OF_PROD_USD]) as [TOTL_PLN_COST_OF_PROD_USD] 
      ,sum([ATPM_TOTL_PLN_SHIPMNT_CS] + [TPM_TOTL_PLN_SHIPMNT_CS] + [SVP_TOTL_PLN_SHIPMNT_CS]) as [TOTL_PLN_SHIPMNT_CS] 
      ,sum([ATPM_TOTL_PLN_SHIPMNT_KGS] + [TPM_TOTL_PLN_SHIPMNT_KGS] + [SVP_TOTL_PLN_SHIPMNT_KGS]) as [TOTL_PLN_SHIPMNT_KGS] 
      ,sum([SVP_PLN_BASE_VOL]) as [PLN_BASE_CS] 
      ,sum([ATPM_PLN_INCR_VOL] + [TPM_PLN_INCR_VOL]) as [PLN_INCR_CS] 
      ,sum([ATPM_TOTL_PLN_SHIPMNT_CS] + [TPM_TOTL_PLN_SHIPMNT_CS]) as [PLN_INCR_SHIP_CS] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_EA] + [TPM_TOTL_PLN_INCR_SHIP_EA]) as [PLN_INCR_SHIP_UNITS] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_LBS] + [TPM_TOTL_PLN_INCR_SHIP_LBS]) as [PLN_INCR_SHIP_LBS] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_KGS] + [TPM_TOTL_PLN_INCR_SHIP_KGS]) as [PLN_INCR_SHIP_KG] 
      ,sum([SVP_SUGSTD_BASE_VOL_SAS]) as [SUGSTD_BASE_VOL_SAS] 
      ,sum([SVP_SUGSTD_SHLF_PRC_SAS]) as [SUGSTD_SHLF_PRC_SAS] 
	  ,SALE_FLG  = CASE
					 WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
					 WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
					ELSE 'D'
				END
	 ,sum([LE_SCAN_APPS_OL_RT_AMT]) as [SCAN_APPS_OL_RT_AMT] ----TASK0564827 - ADD Scanner apps and overlay amount columns
	 ,sum([LE_OL_AMT]) as [OL_AMT]
	FROM [KNA_COMRCL].[dbo].[ZM_TPM60]
	WHERE [PROMTN_STATUS]  NOT IN ('99','10','30') and [CMPGN_TYP] <> 'Z950' and [HIER_D_LVL5] <> '600010'
	GROUP BY [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
--create the unique clustered index on the table
IF NOT EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF')
begin
	create unique clustered index ix_tpm60_pln_CKF on KNA_COMRCL.dbo.ZM_TPM60_CKF ([CUST], [MATRL], [MIXD_PLT_MATRL], [CAL_WK], [MIXD_PLT_FLG], [CURR])
end

END
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_TPM60_CKF_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_TPM60_CKF_CAD]
		PURPOSE:   Create the Calculated key figure for CAD customers (KNA_COMRCL.dbo.ZM_TPM60_CKF)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/01/2018   USCMXJ11         Created.
		
		This stored procedure creates the ZM_TPM60_CKF that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset.  

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_TPM60_CKF_CAD] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;

--below is to restrict only the cad customers

IF OBJECT_ID ('tempDB..#zm_pln_to_map') IS NOT NULL
begin
	DROP TABLE #zm_pln_to_map;
end

select  distinct '0000'+ PLANTO as PLANTO into #zm_pln_to_map  from KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N where LEVEL_A  = 'CANADA L3'

DECLARE @full_load varchar(1)
SET @full_load = (SELECT LAST_UPDT FROM KNA_COMRCL.dbo.RGM_DELTA_KEY WHERE TABLE_NM = 'FULL_LOAD')
if (@full_load = 'Y')
begin
--Timestamps are included to debug and to test execution times of specific procedures
--PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create a lookup table to get all the distinct combinations of master fields so that the multiprovider contains all possible records

--PRINT N'02: #Start Loading final calculated table ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

--The Final three BEx query outputs requires a calculated table built off the multiprovider.  This step calculates important fields as well as filters
--incorrect recors out
--drop the index that is on the table
IF EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF_CAD')
begin
	drop index ix_tpm60_pln_CKF_CAD on KNA_COMRCL.dbo.ZM_TPM60_CKF_CAD
end

--Load the calculated TPM60 table and sum up all values to ensure 
		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

TRUNCATE TABLE [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD]
INSERT INTO [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD]
	SELECT [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
	  ,PROMTNS
	  ,sum([TPM_TOTL_PLN_INCR_SHIP_USD]  + [SVP_TOTL_PLN_SHIPMNT_USD] + [ATPM_TOTL_PLN_SHIPMNT_USD]) as [PLN_SHIP_USD] ----------
      ,sum([TPM_TOTL_PLN_INCR_SHIP_LBS] + [SVP_TOTL_PLN_SHIPMNT_LBS] + [ATPM_TOTL_PLN_INCR_SHIP_LBS]) as [PLN_SHIP_LBS] --------
      ,sum([TPM_TOTL_PLN_SHIPMNT_EA]  + [SVP_TOTL_PLN_SHIPMNT_EA] + [ATPM_TOTL_PLN_SHIPMNT_EA]) as [PLN_SHIP_EA]  ---------------
	  ,sum([ATPM_FIX_LUMP_SUM] + [TPM_FIX_LUMP_SUM] + [ATPM_SCNR_APPL_FIX] + [TPM_SCNR_APPL_FIX] +[ATPM_CORRCTV_LUMP_SUM]  
	   +[TPM_CORRCTV_LUMP_SUM] + [ATPM_NEW_ITM_FIX] + [TPM_NEW_ITM_FIX] + [ATPM_MIL_FIX] + [TPM_MIL_FIX] 
	   +[ATPM_LQDTN_FIX] + [TPM_LQDTN_FIX]) as [PLN_TOTL_FIX_KMF_SPND]             --------------------
	  ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL]  + [TPM_LQDTN_OI_RT_TOTL] +
	   [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] + [ATPM_BILLBACK_RT_TOTL] + [TPM_BILLBACK_RT_TOTL] + [ATPM_BILLBACK_PCT_TOTL]  + [TPM_BILLBACK_PCT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] + [ATPM_EDLP_OFF_INVC_PCT_TOTL] + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_PROMTN_SCAN_RT_TOTL] + [TPM_PROMTN_SCAN_RT_TOTL] +
       [ATPM_PROMTN_SCAN_PCT_TOTL] + [TPM_PROMTN_SCAN_PCT_TOTL] + [ATPM_SCANAPPS_SCAN_RT_TOTL] + [TPM_SCANAPPS_SCAN_RT_TOTL] + [ATPM_SCANAPPS_SCAN_PCT_TOTL] + [TPM_SCANAPPS_SCAN_PCT_TOTL] +
       [ATPM_EDLP_BILLBACK_RT_TOTL] + [TPM_EDLP_BILLBACK_RT_TOTL]  + [ATPM_EDLP_BILLBACK_PCT_TOTL] + [TPM_EDLP_BILLBACK_PCT_TOTL] + [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] +
       [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL] + [ATPM_WHSE_WDRL_TOTL_SPND] + [TPM_WHSE_WDRL_TOTL_SPND]) as [PLN_VAR_KMF_SPND] ----------------------------
	  ,sum([LE_FIX_LUMP_SUM] + [LE_SCAN_APPL_FIX] + [LE_CORRCTN_LUMP_SUM] + [LE_NEW_ITM_FIX] 
	  +[LE_MIL_FIX] + [LE_LQDTN_FIX]) as [LATST_ESTMT_TOTL_FIX_KMF]  ---------------------
	  ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_PCT_TOTL]  + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL] + [TPM_LQDTN_OI_RT_TOTL] + [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] +
	   [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] + [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL]) as [PLN_TOTL_OFF_INVC_USD] ----------------
	  ,sum([LE_MISS_OI] ) as [LATST_ESTMT_MISS_OI]  --------------------
      ,sum([LE_BILLBACK_RT_TOTL]  + [LE_BILLBACK_PCT_TOTL] ) as [LATST_ESTMT_BILLBACK_USD]  -------------
      ,sum([LE_EDLP_BILLBACK_RT_TOTL] + [LE_EDLP_BILLBACK_PCT_TOTL]) as [LATST_ESTMT_EDLP_BILLBACK_USD] -----------------
      ,sum([LE_SCANAPPS_SCAN_RT_TOTL] + [LE_SCANAPPS_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_APPS_BILLBACK_USD] ------------------
      ,sum([LE_PROMTN_SCAN_RT_TOTL] + [LE_PROMTN_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_USD] -----------------------
      ,sum([LE_WHSE_WDRL_TOTL]) as [LE_WW_USD] ----------------
      ,sum([ATPM_TOTL_PLN_COST_OF_PROD] + [TPM_TOTL_PLN_COST_OF_PROD_USD] + [SVP_TOTL_PLN_COST_OF_PROD_USD]) as [TOTL_PLN_COST_OF_PROD_USD] ----------------
      ,sum([ATPM_TOTL_PLN_SHIPMNT_CS] + [TPM_TOTL_PLN_SHIPMNT_CS] + [SVP_TOTL_PLN_SHIPMNT_CS]) as [TOTL_PLN_SHIPMNT_CS]   ------------
      ,sum([ATPM_TOTL_PLN_SHIPMNT_KGS] + [TPM_TOTL_PLN_SHIPMNT_KGS] + [SVP_TOTL_PLN_SHIPMNT_KGS]) as [TOTL_PLN_SHIPMNT_KGS]   --------------------
	  ,SALE_FLG  = CASE
					 WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
					 WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
					ELSE 'D'
				END 
	 ,sum([ATPM_SCAN_APPS_OL_RT_AMT] + [LE_SCAN_APPS_OL_RT_AMT]) as [SCAN_APPS_OL_RT_AMT]
	 ,sum([ATPM_OL_AMT]+[LE_OL_AMT]) as [OL_AMT]

	FROM [KNA_COMRCL].[dbo].[ZM_TPM60]
	INNER JOIN  #zm_pln_to_map  norm ON ( norm.PLANTO  = [ZM_TPM60].[CUST])
	WHERE [PROMTN_STATUS]  NOT IN ('99','10','30') and [CMPGN_TYP] <> 'Z950' and [HIER_D_LVL5] <> '600010'
	GROUP BY [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
	  ,PROMTNS

	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;
--create the unique clustered index on the table
IF NOT EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF_cad')
begin
	create unique clustered index ix_tpm60_pln_CKF_cad on KNA_COMRCL.dbo.ZM_TPM60_CKF_CAD ([CUST], [MATRL], [MIXD_PLT_MATRL], [CAL_WK], [MIXD_PLT_FLG], [CURR],PROMTNS)
end


end
else

------------------------
begin
IF OBJECT_ID ('tempDB..#zm_tpm60_delta_master_ckf') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_delta_master_ckf;
end
SELECT DISTINCT CUST, 
			MATRL, 
			MIXD_PLT_MATRL, 
			CAL_WK, 
			MIXD_PLT_FLG,
			CURR
INTO #zm_tpm60_delta_master_ckf
FROM KNA_COMRCL.STG.ZM_TPM60 
INNER JOIN  #zm_pln_to_map  norm ON ( norm.PLANTO  = [ZM_TPM60].[CUST])

--create a unique index on the table to improve speed
CREATE UNIQUE CLUSTERED INDEX ix_tpm60_master_ckf on #zm_tpm60_delta_master_ckf (CUST,MATRL, MIXD_PLT_MATRL, CAL_WK, MIXD_PLT_FLG,	CURR)
--PRINT N'07: #get ckf src' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Get all attached records that will be summed up in the final table
IF OBJECT_ID ('tempDB..#zm_tpm60_delta_ckf') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_delta_ckf;
end
SELECT src.*
INTO #zm_tpm60_delta_ckf
FROM  [KNA_COMRCL].[dbo].[ZM_TPM60] src
INNER JOIN #zm_tpm60_delta_master_ckf stg ON (stg.CUST = src.CUST and stg.[MATRL]=src.[MATRL] and stg.[MIXD_PLT_MATRL] = src.[MIXD_PLT_MATRL] and stg.[CAL_WK] = src.[CAL_WK] and stg.[MIXD_PLT_FLG]=src.[MIXD_PLT_FLG]
				and stg.[CURR] = src.[CURR])

--PRINT N'08: #Create ckf' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--sum up all the calculated fields.
IF EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF_cad_stg')
begin
	drop index ix_tpm60_pln_CKF_cad_stg on KNA_COMRCL.STG.ZM_TPM60_CKF_CAD
end

		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;
TRUNCATE TABLE [KNA_COMRCL].[STG].[ZM_TPM60_CKF_CAD]
INSERT INTO [KNA_COMRCL].[STG].[ZM_TPM60_CKF_CAD]
SELECT [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
	  ,PROMTNS
	  ,sum([TPM_TOTL_PLN_INCR_SHIP_USD]  + [SVP_TOTL_PLN_SHIPMNT_USD] + [ATPM_TOTL_PLN_SHIPMNT_USD]) as [PLN_SHIP_USD] ----------
      ,sum([TPM_TOTL_PLN_INCR_SHIP_LBS] + [SVP_TOTL_PLN_SHIPMNT_LBS] + [ATPM_TOTL_PLN_INCR_SHIP_LBS]) as [PLN_SHIP_LBS] --------
      ,sum([TPM_TOTL_PLN_SHIPMNT_EA]  + [SVP_TOTL_PLN_SHIPMNT_EA] + [ATPM_TOTL_PLN_SHIPMNT_EA]) as [PLN_SHIP_EA]  ---------------
	  ,sum([ATPM_FIX_LUMP_SUM] + [TPM_FIX_LUMP_SUM] + [ATPM_SCNR_APPL_FIX] + [TPM_SCNR_APPL_FIX] +[ATPM_CORRCTV_LUMP_SUM]  
	   +[TPM_CORRCTV_LUMP_SUM] + [ATPM_NEW_ITM_FIX] + [TPM_NEW_ITM_FIX] + [ATPM_MIL_FIX] + [TPM_MIL_FIX] 
	   +[ATPM_LQDTN_FIX] + [TPM_LQDTN_FIX]) as [PLN_TOTL_FIX_KMF_SPND]             --------------------
	  ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL]  + [TPM_LQDTN_OI_RT_TOTL] +
	   [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] + [ATPM_BILLBACK_RT_TOTL] + [TPM_BILLBACK_RT_TOTL] + [ATPM_BILLBACK_PCT_TOTL]  + [TPM_BILLBACK_PCT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] + [ATPM_EDLP_OFF_INVC_PCT_TOTL] + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_PROMTN_SCAN_RT_TOTL] + [TPM_PROMTN_SCAN_RT_TOTL] +
       [ATPM_PROMTN_SCAN_PCT_TOTL] + [TPM_PROMTN_SCAN_PCT_TOTL] + [ATPM_SCANAPPS_SCAN_RT_TOTL] + [TPM_SCANAPPS_SCAN_RT_TOTL] + [ATPM_SCANAPPS_SCAN_PCT_TOTL] + [TPM_SCANAPPS_SCAN_PCT_TOTL] +
       [ATPM_EDLP_BILLBACK_RT_TOTL] + [TPM_EDLP_BILLBACK_RT_TOTL]  + [ATPM_EDLP_BILLBACK_PCT_TOTL] + [TPM_EDLP_BILLBACK_PCT_TOTL] + [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] +
       [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL] + [ATPM_WHSE_WDRL_TOTL_SPND] + [TPM_WHSE_WDRL_TOTL_SPND]) as [PLN_VAR_KMF_SPND] ----------------------------
	  ,sum([LE_FIX_LUMP_SUM] + [LE_SCAN_APPL_FIX] + [LE_CORRCTN_LUMP_SUM] + [LE_NEW_ITM_FIX] 
	  +[LE_MIL_FIX] + [LE_LQDTN_FIX]) as [LATST_ESTMT_TOTL_FIX_KMF]  ---------------------
	  ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_PCT_TOTL]  + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL] + [TPM_LQDTN_OI_RT_TOTL] + [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] +
	   [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] + [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL]) as [PLN_TOTL_OFF_INVC_USD] ----------------
	  ,sum([LE_MISS_OI] ) as [LATST_ESTMT_MISS_OI]  --------------------
      ,sum([LE_BILLBACK_RT_TOTL]  + [LE_BILLBACK_PCT_TOTL] ) as [LATST_ESTMT_BILLBACK_USD]  -------------
      ,sum([LE_EDLP_BILLBACK_RT_TOTL] + [LE_EDLP_BILLBACK_PCT_TOTL]) as [LATST_ESTMT_EDLP_BILLBACK_USD] -----------------
      ,sum([LE_SCANAPPS_SCAN_RT_TOTL] + [LE_SCANAPPS_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_APPS_BILLBACK_USD] ------------------
      ,sum([LE_PROMTN_SCAN_RT_TOTL] + [LE_PROMTN_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_USD] -----------------------
      ,sum([LE_WHSE_WDRL_TOTL]) as [LE_WW_USD] ----------------
      ,sum([ATPM_TOTL_PLN_COST_OF_PROD] + [TPM_TOTL_PLN_COST_OF_PROD_USD] + [SVP_TOTL_PLN_COST_OF_PROD_USD]) as [TOTL_PLN_COST_OF_PROD_USD] ----------------
      ,sum([ATPM_TOTL_PLN_SHIPMNT_CS] + [TPM_TOTL_PLN_SHIPMNT_CS] + [SVP_TOTL_PLN_SHIPMNT_CS]) as [TOTL_PLN_SHIPMNT_CS]   ------------
      ,sum([ATPM_TOTL_PLN_SHIPMNT_KGS] + [TPM_TOTL_PLN_SHIPMNT_KGS] + [SVP_TOTL_PLN_SHIPMNT_KGS]) as [TOTL_PLN_SHIPMNT_KGS]   --------------------
	  ,SALE_FLG  = CASE
					 WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
					 WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
					ELSE 'D'
				END 
	  ,sum([ATPM_SCAN_APPS_OL_RT_AMT] + [LE_SCAN_APPS_OL_RT_AMT]) as [SCAN_APPS_OL_RT_AMT]
	  ,sum([ATPM_OL_AMT]+[LE_OL_AMT]) as [OL_AMT]
	FROM #zm_tpm60_delta_ckf
	WHERE [PROMTN_STATUS]  NOT IN ('99','10','30') and [CMPGN_TYP] <> 'Z950' and [HIER_D_LVL5] <> '600010'
	GROUP BY [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
	  ,PROMTNS

--PRINT N'02: #Start Loading final calculated table ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

--The Final three BEx query outputs requires a calculated table built off the multiprovider.  This step calculates important fields as well as filters
--incorrect records out
--create the unique clustered index on the table
IF NOT EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF_cad_stg')
begin
	create unique clustered index ix_tpm60_pln_CKF_cad_stg on KNA_COMRCL.STG.ZM_TPM60_CKF_CAD ([CUST], [MATRL], [MIXD_PLT_MATRL], [CAL_WK], [MIXD_PLT_FLG], [CURR],PROMTNS)
end

--PRINT N'09: #Delete from ckf' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

DELETE FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD]
WHERE EXISTS ( SELECT [CUST] ,[MATRL],[MIXD_PLT_MATRL],[CAL_WK],[MIXD_PLT_FLG] ,[CURR] FROM [KNA_COMRCL].[STG].[ZM_TPM60] stg
				WHERE stg.CUST = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD].CUST and stg.[MATRL]=[KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD].[MATRL] 
				and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD].[MIXD_PLT_MATRL] and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD].[CAL_WK] 
				and stg.[MIXD_PLT_FLG]=[KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD].[MIXD_PLT_FLG] and stg.[CURR] = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD].[CURR])

--PRINT N'10: #insert into final ckf' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
INSERT INTO [KNA_COMRCL].[dbo].[ZM_TPM60_CKF_CAD]
SELECT *
FROM [KNA_COMRCL].[STG].[ZM_TPM60_CKF_CAD]

IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

END

end
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_TPM60_DELTA]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************************************************************
		NAME:      [USP_PROC_TPM60]
		PURPOSE:   Create the Promotion Fact table (KNA_COMRCL.dbo.ZM_TPM60)
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        04/05/2017   USCDXS92         Created.
		2.0		   10/15/2018	USCMXJ11		TASK0564827 - ADD Scanner apps and overlay amount columns
		
		This stored procedure creates the USP_PROC_TPM60 that is used by the RGM rebuild of 3 BEx queries  
		in Keystone.  It runs different calculations based on the Mixed Pallet Flag to get the correct
		values and then combines them all into one final dataset.  This logic was used in BODS jobs for the TPE
		project was written in SQL USPs for the RGM rebuild.  This is run when the delta job is activated

		******************************************************************************/
CREATE PROCEDURE [dbo].[USP_PROC_TPM60_DELTA] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;


--Get anything that has changed in the customer hierarchy and add it to the STG.TPM60 table. We only want the customers that have changed 
--From the previous days standards.
IF OBJECT_ID ('tempDB..#uvw_cust_hier') IS NOT NULL
begin
	DROP TABLE #uvw_cust_hier;
end
SELECT [LST_LVL_CUST_NBR]
INTO #uvw_cust_hier
FROM (
SELECT min(Tablename) as Tablename
  ,[LST_LVL_CUST_NBR]
FROM (
SELECT 'NEW' as Tablename,
	[LST_LVL_CUST_NBR],
	LVL5_CUST_NBR
FROM [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL]
WHERE HIER_TYP = 'D' and HIER_TM_PD = 'CURRENT'

UNION ALL

SELECT 'OLD' as  Tablename,
	[LST_LVL_CUST_NBR],
	LVL5_CUST_NBR
FROM KNA_COMRCL.STG.CUST_HIER ) tmp
GROUP BY [LST_LVL_CUST_NBR],
	LVL5_CUST_NBR
HAVING COUNT(*) = 1 )tmp1
WHERE tmp1.Tablename = 'OLD'

--drop the customer index
DROP INDEX ix_uvw_cust_hier_tmp on KNA_COMRCL.STG.CUST_HIER

--Create the snapshot of the customer hierarchy
TRUNCATE TABLE KNA_COMRCL.STG.CUST_HIER
INSERT INTO KNA_COMRCL.STG.CUST_HIER
SELECT [LST_LVL_CUST_NBR],
	LVL5_CUST_NBR
FROM [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL]
WHERE HIER_TYP = 'D' and HIER_TM_PD = 'CURRENT'

--create an index on the lookup view
CREATE UNIQUE CLUSTERED INDEX ix_uvw_cust_hier_tmp on KNA_COMRCL.STG.CUST_HIER (LST_LVL_CUST_NBR)

--Timestamps are included to debug and to test execution times of specific procedures
--PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create a lookup table to get all the distinct combinations of master fields so that the multiprovider contains all possible records
--PRINT N'00: #Start' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF OBJECT_ID ('tempDB..#zm_tpm60_delta_master') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_delta_master;
end
SELECT DISTINCT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM] 
      ,[CALWEEK]
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM]
	  ,CURRENCY
INTO #zm_tpm60_delta_master
FROM ( SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM] 
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[STG].[AZD_TPM8800]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <> ''
			
    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM]
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG] 
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[STG].[AZD_CON6500]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <> ''
			
    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM]
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG]
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[STG].[AZD_SVP1300]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			 and [/BIC/ZMXDFLG] <> '' and CURRENCY <> ''
			
    UNION ALL

	SELECT [CUSTOMER]
      ,[MATERIAL]
      ,[/BIC/ZMXDPALM]
      ,[CALWEEK] 
      ,[/BIC/ZMXDFLG] 
      ,[CRM_MKTELM] 
	  ,CURRENCY
	  FROM [KNA_BW].[STG].[AZD_LES5600]
	  WHERE [CUSTOMER] <> '' and [MATERIAL] <> '' and [/BIC/ZMXDPALM] <> '' 
			and [/BIC/ZMXDFLG] <> '' and [CRM_MKTELM] <> '' and CURRENCY <>''
			
	UNION ALL
	
	SELECT CUST as [CUSTOMER]
      ,[MATRL] as [MATERIAL]
      ,[MIXD_PLT_MATRL] as [/BIC/ZMXDPALM]
      ,[CAL_WK] as [CALWEEK] 
      ,[MIXD_PLT_FLG] as [/BIC/ZMXDFLG] 
      ,[PROMTNS] as [CRM_MKTELM] 
	  ,[CURR] as CURRENCY
	  FROM KNA_COMRCL.dbo.ZM_TPM60 tpm60
	  INNER JOIN #uvw_cust_hier ON  CUST = LST_LVL_CUST_NBR		
	  
	  UNION ALL
	  
	  SELECT CUST as [CUSTOMER]
      ,[MATRL] as [MATERIAL]
      ,[MIXD_PLT_MATRL] as [/BIC/ZMXDPALM]
      ,[CAL_WK] as [CALWEEK] 
      ,[MIXD_PLT_FLG] as [/BIC/ZMXDFLG] 
      ,[PROMTNS] as [CRM_MKTELM] 
	  ,[CURR] as CURRENCY
	  FROM KNA_COMRCL.dbo.ZM_TPM60 tpm60 
	  INNER JOIN KNA_COMRCL.STG.PROMTN_MSTR promo ON (promo.PROMTN_ID = tpm60.PROMTNS)) tmp1

--PRINT N'01: #Start Loading #ZM_TPM60 Index ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Create an index on this table to boost performance
create unique clustered index ix_tpm60_delta_master on #zm_tpm60_delta_master ([CUSTOMER], [MATERIAL], [/BIC/ZMXDPALM], [CALWEEK], [/BIC/ZMXDFLG], [CRM_MKTELM], CURRENCY)

--PRINT N'02: #temp table index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

--create an index on the lookup view
CREATE UNIQUE CLUSTERED INDEX ix_uvw_cust_hier_tmp on #uvw_cust_hier (LST_LVL_CUST_NBR)
--Start loading the multiprovider ZM_TPM60
--PRINT N'03: #Start Loading #ZM_TPM60 ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Join all five cubes to the master lookup table to create the multiprovider ZM_TMP60
	IF EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_stg')
	begin
		drop index ix_tpm60_stg on KNA_COMRCL.STG.ZM_TPM60 
	end

TRUNCATE TABLE KNA_COMRCL.STG.ZM_TPM60
INSERT INTO KNA_COMRCL.STG.ZM_TPM60
SELECT tmp.[CUSTOMER]
      ,tmp.[MATERIAL]
      ,tmp.[/BIC/ZMXDPALM]
      ,tmp.[CALWEEK]
      ,tmp.[/BIC/ZMXDFLG]
      ,tmp.[CRM_MKTELM]
      ,tmp.CURRENCY
      ,ISNULL(a.[/BIC/ZC_DISPER],0) as [TPM: Display]
      ,ISNULL(a.[/BIC/ZC_FADPER],0) as [TPM: F&D]
      ,ISNULL(a.[/BIC/ZC_FEAPER],0) as [TPM: Feature]
      ,ISNULL(a.[/BIC/ZP_INCCOP],0) as [TPM: Plan Incremental COP $]
      ,ISNULL(a.[/BIC/ZS_PGSVOL],0) as [TPM: Total Planned Shipment Dollars]
      ,ISNULL(a.[/BIC/ZS_PLCOP],0) as [TPM: Total Planned COP]
      ,ISNULL(a.[/BIC/ZS_PLPDD],0) as [TPM: Planned Promotion Discount Dollars]
      ,ISNULL(a.[/BIC/ZS_PLPRD],0) as [TPM: Planned Promo Dollars @ Full Price]
      ,ISNULL(a.[/BIC/ZS_PLRPS],0) as [TPM: Planned Retailer Promotion Sales]
      ,ISNULL(a.[/BIC/ZS_PLRSD],0) as [TPM: Planned Retailer Sales Dollar]
      ,ISNULL(a.[/BIC/ZS_PLTPQD],0) as [TPM: Planned TPQ Dollars]
      ,ISNULL(a.[/BIC/ZS_PLTPQE],0) as [TPM: Planned TPQ Eaches]
      ,ISNULL(a.[/BIC/ZS_PLTPQK],0) as [TPM: Planned TPQ Kilos]
      ,ISNULL(a.[/BIC/ZS_PLTPQP],0) as [TPM: Planned TPQ Pounds]
      ,ISNULL(a.[/BIC/ZS_PROCOP],0) as [TPM: Planned Promo COP $]
      ,ISNULL(a.[/BIC/ZS_TPINCD],0) as [TPM: Total Planned Incremental Dollars]
      ,ISNULL(a.[/BIC/ZS_TPINCE],0) as [TPM: Total Planned Incremental Eaches]
      ,ISNULL(a.[/BIC/ZS_TPINCK],0) as [TPM: Total Planned Incremental Kilos]
      ,ISNULL(a.[/BIC/ZS_TPINCP],0) as [TPM: Total Planned Incremental Pounds]
      ,ISNULL(a.[/BIC/ZS_TPINSD],0) as [TPM: Total Planned Incremental Ship Dollars]
      ,ISNULL(a.[/BIC/ZS_TPINSE],0) as [TPM: Total Planned Incremental Ship Eaches]
      ,ISNULL(a.[/BIC/ZS_TPINSK],0) as [TPM: Total Planned Incremental Ship Kilos]
      ,ISNULL(a.[/BIC/ZS_TPINSP],0) as [TPM: Total Planned Incremental Ship Pounds]
      ,ISNULL(a.[/BIC/ZS_TPSVOE],0) as [TPM: Total Planned Shipment Eaches]
      ,ISNULL(a.[/BIC/ZS_TPSVOK],0) as [TPM: Total Planned Shipment Kilos]
      ,ISNULL(a.[/BIC/ZS_TPSVOL],0) as [TPM: Total Planned Shipment CS]
      ,ISNULL(a.[/BIC/ZS_TPSVOP],0) as [TPM: Total Planned Shipment Pounds]
      ,ISNULL(a.[/BIC/ZT_ADIVOL],0) as [TPM: Plan Incremental Volume]
      ,ISNULL(a.[/BIC/ZT_ADJVOL],0) as [TPM: Plan TPQ]
      ,ISNULL(a.[/BIC/ZT_BBPAMT],0) as [TPM: Bill-back % Total]
      ,ISNULL(a.[/BIC/ZT_BBRAMT],0) as [TPM: Bill-back Rate Total]
      ,ISNULL(a.[/BIC/ZT_CRFAMT],0) as [TPM: Corrective Lump Sum]
      ,ISNULL(a.[/BIC/ZT_CTFAMT],0) as [TPM: CSM Trade]
      ,ISNULL(a.[/BIC/ZT_EBPAMT],0) as [TPM: EDLP Bill-back % Total]
      ,ISNULL(a.[/BIC/ZT_EBRAMT],0) as [TPM: EDLP Bill-back Rate Total]
      ,ISNULL(a.[/BIC/ZT_EDLPSP],0) as [TPM: EDLP Spend]
      ,ISNULL(a.[/BIC/ZT_EIPAMT],0) as [TPM: EDLP Off-Invoice % Total]
      ,ISNULL(a.[/BIC/ZT_EIRAMT],0) as [TPM: EDLP Off-Invoice Rate Total]
      ,ISNULL(a.[/BIC/ZT_ESHVOD],0) as [TPM: Plan Ship Dollars]
      ,ISNULL(a.[/BIC/ZT_ESHVOE],0) as [TPM: Plan Ship Eaches]
      ,ISNULL(a.[/BIC/ZT_ESHVOK],0) as [TPM: Plan Ship Kilos]
      ,ISNULL(a.[/BIC/ZT_ESHVOL],0) as [TPM: Plan Est Ship Vol]
      ,ISNULL(a.[/BIC/ZT_ESHVOP],0) as [TPM: Plan Ship Pounds]
      ,ISNULL(a.[/BIC/ZT_ESPAMT],0) as [TPM: Parent OI % Total]
      ,ISNULL(a.[/BIC/ZT_ESRAMT],0) as [TPM: Parent OI Rate Total]
      ,ISNULL(a.[/BIC/ZT_FXFAMT],0) as [TPM: Fixed Lump Sum]
      ,ISNULL(a.[/BIC/ZT_LIPAMT],0) as [TPM: Liquidation OI % Total]
      ,ISNULL(a.[/BIC/ZT_LIRAMT],0) as [TPM: Liquidation OI Rate Total]
      ,ISNULL(a.[/BIC/ZT_LQFAMT],0) as [TPM: Liquidation Fixed]
      ,ISNULL(a.[/BIC/ZT_MLFAMT],0) as [TPM: Military Fixed]
      ,ISNULL(a.[/BIC/ZT_NPFAMT],0) as [TPM: New Item Fixed]
      ,ISNULL(a.[/BIC/ZT_OIPAMT],0) as [TPM: Off-Invoice % Total]
      ,ISNULL(a.[/BIC/ZT_OIRAMT],0) as [TPM: Off-Invoice Rate Total]
      ,ISNULL(a.[/BIC/ZT_SCFAMT],0) as [TPM: Scanner Application Fixed]
      ,ISNULL(a.[/BIC/ZT_SCPAMT],0) as [TPM: ScanApps Scan % Total]
      ,ISNULL(a.[/BIC/ZT_SCRAMT],0) as [TPM: ScanApps Scan Rate Total]
      ,ISNULL(a.[/BIC/ZT_SPPAMT],0) as [TPM: Promo Scan % Total]
      ,ISNULL(a.[/BIC/ZT_SPRAMT],0) as [TPM: Promo Scan Rate Total]
      ,ISNULL(a.[/BIC/ZT_STOVOD],0) as [TPM: Suggested TPQ Dollars]
      ,ISNULL(a.[/BIC/ZT_STOVOE],0) as [TPM: Suggested TPQ Eaches]
      ,ISNULL(a.[/BIC/ZT_STOVOK],0) as [TPM: Suggested TPQ Kilos]
      ,ISNULL(a.[/BIC/ZT_STOVOL],0) as [TPM: Suggested TPQ]
      ,ISNULL(a.[/BIC/ZT_STOVOP],0) as [TPM: Suggested TPQ Pounds]
      ,ISNULL(a.[/BIC/ZT_SUPVOD],0) as [TPM: Suggested Incremental Dollars]
      ,ISNULL(a.[/BIC/ZT_SUPVOE],0) as [TPM: Suggested Incremental Eaches]
      ,ISNULL(a.[/BIC/ZT_SUPVOK],0) as [TPM: Suggested Incremental Kilos]
      ,ISNULL(a.[/BIC/ZT_SUPVOL],0) as [TPM: Suggested Incremental Volume]
      ,ISNULL(a.[/BIC/ZT_TSPAMT],0) as [TPM: Total Trade Spend]
      ,ISNULL(a.[/BIC/ZT_WWTOTL],0) as [TPM: Warehouse Withdrawal Total Spend]
      ,ISNULL(a.[CURRENCY],0) as [TPM: Currency]
      ,ISNULL(a.[SALES_UNIT],0) as [TPM: Sales Unit]
      ,ISNULL(a.[InfoProvider],0) as [TPM: InfoProvider]
      ,ISNULL(b.[/BIC/ZC_DISPER],0) as [ATPM - Display]
      ,ISNULL(b.[/BIC/ZC_FADPER],0) as [ATPM - F&D]
      ,ISNULL(b.[/BIC/ZC_FEAPER],0) as [ATPM - Feature]
      ,ISNULL(b.[/BIC/ZP_INCCOP],0) as [ATPM - Plan Incremental COP $]
      ,ISNULL(b.[/BIC/ZS_PGSVOL],0) as [ATPM - Total Planned Shipment Dollars]
      ,ISNULL(b.[/BIC/ZS_PLCOP],0) as [ATPM - Total Planned COP]
      ,ISNULL(b.[/BIC/ZS_PLPDD],0) as [ATPM - Planned Promotion Discount Dollars]
      ,ISNULL(b.[/BIC/ZS_PLPRD],0) as [ATPM - Planned Promo Dollars @ Full Price]
      ,ISNULL(b.[/BIC/ZS_PLRPS],0) as [ATPM - Planned Retailer Promotion Sales]
      ,ISNULL(b.[/BIC/ZS_PLRSD],0) as [ATPM - Planned Retailer Sales Dollar]
      ,ISNULL(b.[/BIC/ZS_PLTPQD],0) as [ATPM - Planned TPQ Dollars]
      ,ISNULL(b.[/BIC/ZS_PLTPQE],0) as [ATPM - Planned TPQ Eaches]
      ,ISNULL(b.[/BIC/ZS_PLTPQK],0) as [ATPM - Planned TPQ Kilos]
      ,ISNULL(b.[/BIC/ZS_PLTPQP],0) as [ATPM - Planned TPQ Pounds]
      ,ISNULL(b.[/BIC/ZS_PROCOP],0) as [ATPM - Planned Promo COP $]
      ,ISNULL(b.[/BIC/ZS_TPINCD],0) as [ATPM - Total Planned Incremental Dollars]
      ,ISNULL(b.[/BIC/ZS_TPINCE],0) as [ATPM - Total Planned Incremental Eaches]
      ,ISNULL(b.[/BIC/ZS_TPINCK],0) as [ATPM - Total Planned Incremental Kilos]
      ,ISNULL(b.[/BIC/ZS_TPINCP],0) as [ATPM - Total Planned Incremental Pounds]
      ,ISNULL(b.[/BIC/ZS_TPINSD],0) as [ATPM - Total Planned Incremental Ship Dollars]
      ,ISNULL(b.[/BIC/ZS_TPINSE],0) as [ATPM - Total Planned Incremental Ship Eaches]
      ,ISNULL(b.[/BIC/ZS_TPINSK],0) as [ATPM - Total Planned Incremental Ship Kilos]
      ,ISNULL(b.[/BIC/ZS_TPINSP],0) as [ATPM - Total Planned Incremental Ship Pounds]
      ,ISNULL(b.[/BIC/ZS_TPSVOE],0) as [ATPM - Total Planned Shipment Eaches]
      ,ISNULL(b.[/BIC/ZS_TPSVOK],0) as [ATPM - Total Planned Shipment Kilos]
      ,ISNULL(b.[/BIC/ZS_TPSVOL],0) as [ATPM - Total Planned Shipment CS]
      ,ISNULL(b.[/BIC/ZS_TPSVOP],0) as [ATPM - Total Planned Shipment Pounds]
      ,ISNULL(b.[/BIC/ZT_ADIVOL],0) as [ATPM - Plan Incremental Volume]
      ,ISNULL(b.[/BIC/ZT_ADJVOL],0) as [ATPM - Plan TPQ]
      ,ISNULL(b.[/BIC/ZT_BBPAMT],0) as [ATPM - Bill-back % Total]
      ,ISNULL(b.[/BIC/ZT_BBRAMT],0) as [ATPM - Bill-back Rate Total]
      ,ISNULL(b.[/BIC/ZT_CRFAMT],0) as [ATPM - Corrective Lump Sum]
      ,ISNULL(b.[/BIC/ZT_CTFAMT],0) as [ATPM - CSM Trade]
      ,ISNULL(b.[/BIC/ZT_EBPAMT],0) as [ATPM - EDLP Bill-back % Total]
      ,ISNULL(b.[/BIC/ZT_EBRAMT],0) as [ATPM - EDLP Bill-back Rate Total]
      ,ISNULL(b.[/BIC/ZT_EDLPSP],0) as [ATPM - EDLP Spend]
      ,ISNULL(b.[/BIC/ZT_EIPAMT],0) as [ATPM - EDLP Off-Invoice % Total]
      ,ISNULL(b.[/BIC/ZT_EIRAMT],0) as [ATPM - EDLP Off-Invoice Rate Total]
      ,ISNULL(b.[/BIC/ZT_ESHVOD],0) as [ATPM - Plan Ship Dollars]
      ,ISNULL(b.[/BIC/ZT_ESHVOE],0) as [ATPM - Plan Ship Eaches]
      ,ISNULL(b.[/BIC/ZT_ESHVOK],0) as [ATPM - Plan Ship Kilos]
      ,ISNULL(b.[/BIC/ZT_ESHVOL],0) as [ATPM - Plan Est Ship Vol]
      ,ISNULL(b.[/BIC/ZT_ESHVOP],0) as [ATPM - Plan Ship Pounds]
      ,ISNULL(b.[/BIC/ZT_ESPAMT],0) as [ATPM - Parent OI % Total]
      ,ISNULL(b.[/BIC/ZT_ESRAMT],0) as [ATPM - Parent OI Rate Total]
      ,ISNULL(b.[/BIC/ZT_FXFAMT],0) as [ATPM - Fixed Lump Sum]
      ,ISNULL(b.[/BIC/ZT_LIPAMT],0) as [ATPM - Liquidation OI % Total]
      ,ISNULL(b.[/BIC/ZT_LIRAMT],0) as [ATPM - Liquidation OI Rate Total]
      ,ISNULL(b.[/BIC/ZT_LQFAMT],0) as [ATPM - Liquidation Fixed]
      ,ISNULL(b.[/BIC/ZT_MLFAMT],0) as [ATPM - Military Fixed]
      ,ISNULL(b.[/BIC/ZT_NPFAMT],0) as [ATPM - New Item Fixed]
      ,ISNULL(b.[/BIC/ZT_OIPAMT],0) as [ATPM - Off-Invoice % Total]
      ,ISNULL(b.[/BIC/ZT_OIRAMT],0) as [ATPM - Off-Invoice Rate Total]
      ,ISNULL(b.[/BIC/ZT_SCFAMT],0) as [ATPM - Scanner Application Fixed]
      ,ISNULL(b.[/BIC/ZT_SCPAMT],0) as [ATPM - ScanApps Scan % Total]
      ,ISNULL(b.[/BIC/ZT_SCRAMT],0) as [ATPM - ScanApps Scan Rate Total]
      ,ISNULL(b.[/BIC/ZT_SPPAMT],0) as [ATPM - Promo Scan % Total]
      ,ISNULL(b.[/BIC/ZT_SPRAMT],0) as [ATPM - Promo Scan Rate Total]
      ,ISNULL(b.[/BIC/ZT_STOVOD],0) as [ATPM - Suggested TPQ Dollars]
      ,ISNULL(b.[/BIC/ZT_STOVOE],0) as [ATPM - Suggested TPQ Eaches]
      ,ISNULL(b.[/BIC/ZT_STOVOK],0) as [ATPM - Suggested TPQ Kilos]
      ,ISNULL(b.[/BIC/ZT_STOVOL],0) as [ATPM - Suggested TPQ]
      ,ISNULL(b.[/BIC/ZT_STOVOP],0) as [ATPM - Suggested TPQ Pounds]
      ,ISNULL(b.[/BIC/ZT_SUPVOD],0) as [ATPM - Suggested Incremental Dollars]
      ,ISNULL(b.[/BIC/ZT_SUPVOE],0) as [ATPM - Suggested Incremental Eaches]
      ,ISNULL(b.[/BIC/ZT_SUPVOK],0) as [ATPM - Suggested Incremental Kilos]
      ,ISNULL(b.[/BIC/ZT_SUPVOL],0) as [ATPM - Suggested Incremental Volume]
      ,ISNULL(b.[/BIC/ZT_TSPAMT],0) as [ATPM - Total Trade Spend]
      ,ISNULL(b.[/BIC/ZT_WWTOTL],0) as [ATPM - Warehouse Withdrawal Total Spend]
      ,ISNULL(b.[CURRENCY],0) as [ATPM - Currency]
      ,ISNULL(b.[SALES_UNIT],0) as [ATPM - Sales Unit]
      ,ISNULL(b.[/BIC/ZT_ADJPER],0) as [ATPM - Variance %]
      ,ISNULL(b.[InfoProvider],0) as [ATPM - InfoProvider]
      ,ISNULL(c.[/BIC/ZC_ACTCOP],0) as [Sales Promo: Actual COP $]
      ,ISNULL(c.[/BIC/ZC_AGRDL],0) as [Sales Promo: Gross Sales Dollars]
      ,ISNULL(c.[/BIC/ZC_ASPA],0) as [Sales Promo: SPA (Special Promo Allowance)]
      ,ISNULL(c.[/BIC/ZC_QGRCS],0) as [Sales Promo: Gross Cases]
      ,ISNULL(c.[/BIC/ZC_QGRECH],0) as [Sales Promo: Gross Eaches]
      ,ISNULL(c.[/BIC/ZC_QGRKGS],0) as [Sales Promo: Gross Kilos]
      ,ISNULL(c.[/BIC/ZC_QGRLBS],0) as [Sales Promo: Gross Pounds]
      ,ISNULL(c.[/BIC/ZG_QVVGPK],0) as [Sales Promo: Gross Packages]
      ,ISNULL(c.[CURRENCY],0) as [Sales Promo: Currency]
      ,/*ISNULL(c.[/BIC/ZC_UPRCAS],0)*/0 as [Sales Promo: Promo Cases Unit]
      ,/*ISNULL(c.[/BIC/ZC_UPRECH],0)*/0 as [Sales Promo: Promo Eaches Unit]
      ,/*ISNULL(c.[/BIC/ZC_UNETKG],0)*/0 as [Sales Promo: True Gross Kilos Unit]
      ,/*ISNULL(c.[/BIC/ZC_UGRLBS],0)*/0 as [Sales Promo: Gross Pounds Unit]
      ,/*ISNULL(c.[/BIC/ZG_UVVGPK],0)*/0 as [Sales Promo: Un Gross Packages UOM]
      ,ISNULL(c.[InfoProvider],0) as [Sales Promo: InfoProvider]
      ,ISNULL(d.[/BIC/ZCANQTY],0) as [SVP - Cannibilization Quantity]
      ,ISNULL(d.[/BIC/ZCANQTYE],0) as [SVP - Total Planned Cannibilization Ship Eaches]
      ,ISNULL(d.[/BIC/ZCANQTYK],0) as [SVP - Total Planned Cannibilization Ship Kilos]
      ,ISNULL(d.[/BIC/ZCANQTYP],0) as [SVP - Total Planned Cannibilization Ship Pounds]
      ,ISNULL(d.[/BIC/ZFWBUY],0) as [SVP - Forward Buy]
      ,ISNULL(d.[/BIC/ZFWBUYE],0) as [SVP - Total Planned Forward Buy Ship Eaches]
      ,ISNULL(d.[/BIC/ZFWBUYK],0) as [SVP - Total Planned Forward Buy Ship Kilos]
      ,ISNULL(d.[/BIC/ZFWBUYP],0) as [SVP - Total Planned Forward Buy Ship Pounds]
      ,ISNULL(d.[/BIC/ZS_CANDOL],0) as [SVP - Total Planned Cannibilization Ship Dollar]
      ,ISNULL(d.[/BIC/ZS_FWBDOL],0) as [SVP - Total Planned Forward Buy Ship Dollars]
      ,ISNULL(d.[/BIC/ZS_PCBVOE],0) as [SVP - Planned Base Eaches]
      ,ISNULL(d.[/BIC/ZS_PCBVOK],0) as [SVP - Planned Base Kilos]
      ,ISNULL(d.[/BIC/ZS_PCBVOL],0) as [SVP -  Planned Base Volume]
      ,ISNULL(d.[/BIC/ZS_PCBVOP],0) as [SVP - Planned Base Pounds]
      ,ISNULL(d.[/BIC/ZS_PGSVOL],0) as [SVP - Total Planned Shipment Dollars]
      ,ISNULL(d.[/BIC/ZS_PLCOP],0) as [SVP - Total Planned COP]
      ,ISNULL(d.[/BIC/ZS_PLRSD],0) as [SVP - Planned Retailer Sales Dollar]
      ,ISNULL(d.[/BIC/ZS_PSHPRC],0) as [SVP - Planned Shelf Price]
      ,ISNULL(d.[/BIC/ZS_SBAVOD],0) as [SVP - Suggested Base Dollars]
      ,ISNULL(d.[/BIC/ZS_SBAVOE],0) as [SVP - Suggested Base Eaches]
      ,ISNULL(d.[/BIC/ZS_SBAVOK],0) as [SVP - Suggested Base Kilos]
      ,ISNULL(d.[/BIC/ZS_SBAVOL],0) as [SVP - Suggested Base Volume (SAS)]
      ,ISNULL(d.[/BIC/ZS_SBAVOP],0) as [SVP - Suggested Base Pounds]
      ,ISNULL(d.[/BIC/ZS_SSHPRC],0) as [SVP - Suggested Shelf Price (SAS)]
      ,ISNULL(d.[/BIC/ZS_TPBDOL],0) as [SVP - Total Planned Base $]
      ,ISNULL(d.[/BIC/ZS_TPSVOE],0) as [SVP - Total Planned Shipment Eaches]
      ,ISNULL(d.[/BIC/ZS_TPSVOK],0) as [SVP - Total Planned Shipment Kilos]
      ,ISNULL(d.[/BIC/ZS_TPSVOL],0) as [SVP - Total Planned Shipment CS]
      ,ISNULL(d.[/BIC/ZS_TPSVOP],0) as [SVP - Total Planned Shipment Pounds]
      ,ISNULL(d.[/BIC/ZTPBVOL],0) as [SVP - Total Planned Base Volume]
      ,ISNULL(d.[SALES_UNIT],0) as [SVP - Sales Unit]
      ,ISNULL(d.[CURRENCY],0) as [SVP - Currency]
      ,ISNULL(d.[InfoProvider],0) as [SVP - InfoProvider]
      ,ISNULL(e.[/BIC/ZT_BBPAMT],0) as [LE: Bill-back % Total]
      ,ISNULL(e.[/BIC/ZT_BBRAMT],0) as [LE: Bill-back Rate Total]
      ,ISNULL(e.[/BIC/ZT_CADAMT],0) as [LE: CSM Advertising]
      ,ISNULL(e.[/BIC/ZT_CCOAMT],0) as [LE: CSM COGS]
      ,ISNULL(e.[/BIC/ZT_CCUAMT],0) as [LE: CSM Coupon]
      ,ISNULL(e.[/BIC/ZT_CRFAMT],0) as [LE: Correction Lump Sum]
      ,ISNULL(e.[/BIC/ZT_CVAAMT],0) as [LE: CSM VAP]
      ,ISNULL(e.[/BIC/ZT_EBPAMT],0) as [LE: EDLP Bill-back % Total]
      ,ISNULL(e.[/BIC/ZT_EBRAMT],0) as [LE: EDLP Bill-back Rate Total]
      ,ISNULL(e.[/BIC/ZT_FXFAMT],0) as [LE: Fixed Lump Sum]
      ,ISNULL(e.[/BIC/ZT_LQFAMT],0) as [LE: Liquidation Fixed]
      ,ISNULL(e.[/BIC/ZT_MISSOI],0) as [LE: Missed OI]
      ,ISNULL(e.[/BIC/ZT_MLFAMT],0) as [LE: Military Fixed]
      ,ISNULL(e.[/BIC/ZT_NPFAMT],0) as [LE: New Item Fixed]
      ,ISNULL(e.[/BIC/ZT_SCFAMT],0) as [LE: Scanned Application Fixed]
      ,ISNULL(e.[/BIC/ZT_SCPAMT],0) as [LE: ScanApps Scan % Total]
      ,ISNULL(e.[/BIC/ZT_SCRAMT],0) as [LE: ScanApps Scan Rate Total]
      ,ISNULL(e.[/BIC/ZT_SPPAMT],0) as [LE: Promo Scan % Total]
      ,ISNULL(e.[/BIC/ZT_SPRAMT],0) as [LE: Promo Scan Rate Total]
      ,ISNULL(e.[/BIC/ZT_WWTOTL],0) as [LE: Warehouse Withdrawal Total]
      ,ISNULL(e.[CURRENCY],0) as [LE: Currency]
      ,ISNULL(e.[InfoProvider],0) as [LE: InfoProvider]
	  ,[PROMOTION_STATUS] = CASE 
								WHEN prom.PROMTN_STATUS IS NULL THEN '#'
								ELSE prom.PROMTN_STATUS
							 END
	  ,CAMPAIGN_TYPE = CASE 
								WHEN prom.CMPGN_TYP IS NULL THEN '#'
								ELSE prom.CMPGN_TYP
							 END
	  ,HIER_D_LVL5 = CASE 
								WHEN cust.LVL5_CUST_NBR IS NULL THEN '#'
								ELSE cust.LVL5_CUST_NBR
							 END
	 ,ISNULL(b.[/BIC/ZT_SAOAMT],0) as [ATPM : Scanner Apps Overlay Rate Amount]  ----TASK0564827 - ADD Scanner apps and overlay amount columns
	 ,ISNULL(b.[/BIC/ZT_OVLAMT],0) as [ATPM : Overlay Amount]
	 ,ISNULL(e.[/BIC/ZT_SAOAMT],0) as [LE : Scanner Apps Overlay Rate Amount]
	 ,ISNULL(e.[/BIC/ZT_OVLAMT],0) as [LE : Overlay Amount]
	FROM #zm_tpm60_delta_master tmp
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_SLC8800] a ON (a.[CUSTOMER]= tmp.CUSTOMER and a.[MATERIAL] = tmp.MATERIAL and  a.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and a.[CALWEEK]=tmp.[CALWEEK] and a.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and a.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =a.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_TPM8800_AGG] b ON (b.[CUSTOMER]= tmp.CUSTOMER and b.[MATERIAL] = tmp.MATERIAL and  b.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and b.[CALWEEK]=tmp.[CALWEEK] and b.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and b.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =b.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_CON6500] c ON (c.[CUSTOMER]= tmp.CUSTOMER and c.[MATERIAL] = tmp.MATERIAL and  c.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and c.[CALWEEK]=tmp.[CALWEEK] and c.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and c.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =c.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_SVP1300] d ON (d.[CUSTOMER]= tmp.CUSTOMER and d.[MATERIAL] = tmp.MATERIAL and  d.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and d.[CALWEEK]=tmp.[CALWEEK] and d.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and d.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY =d.CURRENCY)
	LEFT OUTER JOIN [KNA_BW].[dbo].[AZD_LES5600] e ON (e.[CUSTOMER]= tmp.CUSTOMER and e.[MATERIAL] = tmp.MATERIAL and  e.[/BIC/ZMXDPALM]= tmp.[/BIC/ZMXDPALM]
			and e.[CALWEEK]=tmp.[CALWEEK] and e.[/BIC/ZMXDFLG]= tmp.[/BIC/ZMXDFLG] and e.[CRM_MKTELM]= tmp.[CRM_MKTELM] and tmp.CURRENCY = e.CURRENCY)
	LEFT OUTER JOIN [KNA_COMRCL].[dbo].[PROMTN_MSTR] prom on (tmp.[CRM_MKTELM] = prom.PROMTN_ID)
	LEFT OUTER JOIN KNA_COMRCL.STG.CUST_HIER cust ON (tmp.CUSTOMER  = cust.[LST_LVL_CUST_NBR] ) 
	
--PRINT N'03: #Start Loading final table ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Insert the multiprovider into a table.  Ensure that if a field is NULL it gets replaced by a zero.

	IF (@@ERROR <> 0)
	begin
		RETURN @@ERROR
	end

--PRINT N'04: #build stg index' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
	IF NOT EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_stg')
	begin
		create unique clustered index ix_tpm60_stg on KNA_COMRCL.STG.ZM_TPM60 ([CUST], [MATRL], [MIXD_PLT_MATRL], [CAL_WK], [PROMTNS],[MIXD_PLT_FLG], [CURR])
	end


	BEGIN TRANSACTION;
	SAVE TRANSACTION  start_tran;
--PRINT N'05: #delete from target' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--delete from the historical table where we are trying to insert records into there
DELETE FROM [KNA_COMRCL].[dbo].[ZM_TPM60]
WHERE EXISTS ( SELECT [CUST] ,[MATRL],[MIXD_PLT_MATRL],[CAL_WK],[MIXD_PLT_FLG] ,[PROMTNS] ,[CURR] FROM [KNA_COMRCL].[STG].[ZM_TPM60] stg
				WHERE stg.CUST = [KNA_COMRCL].[dbo].[ZM_TPM60].CUST and stg.[MATRL]=[KNA_COMRCL].[dbo].[ZM_TPM60].[MATRL] and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[ZM_TPM60].[MIXD_PLT_MATRL] 
				and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[ZM_TPM60].[CAL_WK] and stg.[MIXD_PLT_FLG]=[KNA_COMRCL].[dbo].[ZM_TPM60].[MIXD_PLT_FLG]
				and stg.[PROMTNS] = [KNA_COMRCL].[dbo].[ZM_TPM60].[PROMTNS] and stg.[CURR] = [KNA_COMRCL].[dbo].[ZM_TPM60].[CURR])

--PRINT N'06: #Insert into target' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--insert only records that still have values in cubes.
INSERT INTO [KNA_COMRCL].[dbo].[ZM_TPM60]
SELECT *
FROM [KNA_COMRCL].[STG].[ZM_TPM60]
WHERE [TPM_BW_SRC] <> '0' or [LE_BW_SRC] <> '0' or [SVP_BW_SRC] <> '0' or [SALES_PROMTN_BW_SRC] <>'0' or [ATPM_BW_SRC] <>'0'

IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end

--create a master table of all of the records that have been changed.  This gets rid of any duplicates based on double promotions
IF OBJECT_ID ('tempDB..#zm_tpm60_delta_master_ckf') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_delta_master_ckf;
end
SELECT DISTINCT CUST, 
			MATRL, 
			MIXD_PLT_MATRL, 
			CAL_WK, 
			MIXD_PLT_FLG,
			CURR
INTO #zm_tpm60_delta_master_ckf
FROM KNA_COMRCL.STG.ZM_TPM60 

--create a unique index on the table to improve speed
CREATE UNIQUE CLUSTERED INDEX ix_tpm60_master_ckf on #zm_tpm60_delta_master_ckf (CUST,MATRL, MIXD_PLT_MATRL, CAL_WK, MIXD_PLT_FLG,	CURR)
--PRINT N'07: #get ckf src' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--Get all attached records that will be summed up in the final table
IF OBJECT_ID ('tempDB..#zm_tpm60_delta_ckf') IS NOT NULL
begin
	DROP TABLE #zm_tpm60_delta_ckf;
end
SELECT src.*
INTO #zm_tpm60_delta_ckf
FROM  [KNA_COMRCL].[dbo].[ZM_TPM60] src
INNER JOIN #zm_tpm60_delta_master_ckf stg ON (stg.CUST = src.CUST and stg.[MATRL]=src.[MATRL] and stg.[MIXD_PLT_MATRL] = src.[MIXD_PLT_MATRL] and stg.[CAL_WK] = src.[CAL_WK] and stg.[MIXD_PLT_FLG]=src.[MIXD_PLT_FLG]
				and stg.[CURR] = src.[CURR])

--PRINT N'08: #Create ckf' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
--sum up all the calculated fields.
IF EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF_stg')
begin
	drop index ix_tpm60_pln_CKF_stg on KNA_COMRCL.STG.ZM_TPM60_CKF
end
TRUNCATE TABLE [KNA_COMRCL].[STG].[ZM_TPM60_CKF]
INSERT INTO [KNA_COMRCL].[STG].[ZM_TPM60_CKF]
	SELECT  [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
      ,sum([SVP_PLN_BASE_LBS] ) as [PLN_BASE_LBS] 
      ,sum([ATPM_TOTL_PLN_INCR_LBS]  + [TPM_TOTL_PLN_INCR_LBS] ) as [PLN_INCR_LBS] 
      ,sum([SVP_PLN_BASE_EA] ) as [PLN_BASE_UNITS] 
      ,sum([ATPM_TOTL_PLN_INCR_EA] + [TPM_TOTL_PLN_INCR_EA]) as [PLN_INCR_UNITS] 
      ,sum([SVP_PLN_RETLR_SALES_USD] ) as [PLN_BASE_RTN_USD] 
      ,sum([ATPM_PLN_RETLR_SALES_USD] + [TPM_PLN_RETLR_SALES_USD]) as [PLN_INCR_RTN_USD] 
      ,sum([SVP_TOTL_PLN_BASE_VOL] ) as [PLN_BASE_USD] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_USD] + [TPM_TOTL_PLN_INCR_SHIP_USD]) as [PLN_INCR_SHIP_USD] 
      ,sum([TPM_TOTL_PLN_INCR_SHIP_USD]  + [SVP_TOTL_PLN_SHIPMNT_USD] + [ATPM_TOTL_PLN_SHIPMNT_USD]) as [PLN_SHIP_USD] 
      ,sum([TPM_TOTL_PLN_INCR_SHIP_LBS] + [SVP_TOTL_PLN_SHIPMNT_LBS] + [ATPM_TOTL_PLN_INCR_SHIP_LBS]) as [PLN_SHIP_LBS] 
      ,sum([TPM_TOTL_PLN_SHIPMNT_EA]  + [SVP_TOTL_PLN_SHIPMNT_EA] + [ATPM_TOTL_PLN_SHIPMNT_EA]) as [PLN_SHIP_EA] 
      ,sum([ATPM_FIX_LUMP_SUM] + [TPM_FIX_LUMP_SUM] + [ATPM_SCNR_APPL_FIX] + [TPM_SCNR_APPL_FIX] +[ATPM_CORRCTV_LUMP_SUM]  
	   +[TPM_CORRCTV_LUMP_SUM] + [ATPM_NEW_ITM_FIX] + [TPM_NEW_ITM_FIX] + [ATPM_MIL_FIX] + [TPM_MIL_FIX] 
	   +[ATPM_LQDTN_FIX] + [TPM_LQDTN_FIX]) as [PLN_TOTL_FIX_KMF_SPND] 
      ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL]  + [TPM_LQDTN_OI_RT_TOTL] +
	   [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] + [ATPM_BILLBACK_RT_TOTL] + [TPM_BILLBACK_RT_TOTL] + [ATPM_BILLBACK_PCT_TOTL]  + [TPM_BILLBACK_PCT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] + [ATPM_EDLP_OFF_INVC_PCT_TOTL] + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_PROMTN_SCAN_RT_TOTL] + [TPM_PROMTN_SCAN_RT_TOTL] +
       [ATPM_PROMTN_SCAN_PCT_TOTL] + [TPM_PROMTN_SCAN_PCT_TOTL] + [ATPM_SCANAPPS_SCAN_RT_TOTL] + [TPM_SCANAPPS_SCAN_RT_TOTL] + [ATPM_SCANAPPS_SCAN_PCT_TOTL] + [TPM_SCANAPPS_SCAN_PCT_TOTL] +
       [ATPM_EDLP_BILLBACK_RT_TOTL] + [TPM_EDLP_BILLBACK_RT_TOTL]  + [ATPM_EDLP_BILLBACK_PCT_TOTL] + [TPM_EDLP_BILLBACK_PCT_TOTL] + [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] +
       [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL] + [ATPM_WHSE_WDRL_TOTL_SPND] + [TPM_WHSE_WDRL_TOTL_SPND]) as [PLN_VAR_KMF_SPND] 
      ,sum([SALES_PROMTN_SPCL_PROMTN_ALLWNC]*-1) as [ACTL_OI_SPND_NOT_RSTR] 
      ,sum([LE_FIX_LUMP_SUM] + [LE_SCAN_APPL_FIX] + [LE_CORRCTN_LUMP_SUM] + [LE_NEW_ITM_FIX] 
	  +[LE_MIL_FIX] + [LE_LQDTN_FIX]) as [LATST_ESTMT_TOTL_FIX_KMF] 
      ,sum([ATPM_OFF_INVC_RT_TOTL] + [TPM_OFF_INVC_RT_TOTL] + [ATPM_OFF_INVC_PCT_TOTL] + [TPM_OFF_INVC_PCT_TOTL] + [ATPM_EDLP_OFF_INVC_RT_TOTL] + [TPM_EDLP_OFF_INVC_RT_TOTL] +
	   [ATPM_EDLP_OFF_INVC_PCT_TOTL]  + [TPM_EDLP_OFF_INVC_PCT_TOTL] + [ATPM_LQDTN_OI_RT_TOTL] + [TPM_LQDTN_OI_RT_TOTL] + [ATPM_LQDTN_OI_PCT_TOTL] + [TPM_LQDTN_OI_PCT_TOTL] +
	   [ATPM_PAR_OI_RT_TOTL] + [TPM_PAR_OI_RT_TOTL] + [ATPM_PAR_OI_PCT_TOTL] + [TPM_PAR_OI_PCT_TOTL]) as [PLN_TOTL_OFF_INVC_USD] 
      ,sum([LE_MISS_OI] ) as [LATST_ESTMT_MISS_OI] 
      ,sum([LE_BILLBACK_RT_TOTL]  + [LE_BILLBACK_PCT_TOTL] ) as [LATST_ESTMT_BILLBACK_USD] 
      ,sum([LE_EDLP_BILLBACK_RT_TOTL] + [LE_EDLP_BILLBACK_PCT_TOTL]) as [LATST_ESTMT_EDLP_BILLBACK_USD] 
      ,sum([LE_SCANAPPS_SCAN_RT_TOTL] + [LE_SCANAPPS_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_APPS_BILLBACK_USD] 
      ,sum([LE_PROMTN_SCAN_RT_TOTL] + [LE_PROMTN_SCAN_PCT_TOTL]) as [LATST_ESTMT_SCAN_USD] 
      ,sum([LE_WHSE_WDRL_TOTL]) as [LE_WW_USD] 
      ,sum([ATPM_TOTL_PLN_COST_OF_PROD] + [TPM_TOTL_PLN_COST_OF_PROD_USD] + [SVP_TOTL_PLN_COST_OF_PROD_USD]) as [TOTL_PLN_COST_OF_PROD_USD] 
      ,sum([ATPM_TOTL_PLN_SHIPMNT_CS] + [TPM_TOTL_PLN_SHIPMNT_CS] + [SVP_TOTL_PLN_SHIPMNT_CS]) as [TOTL_PLN_SHIPMNT_CS] 
      ,sum([ATPM_TOTL_PLN_SHIPMNT_KGS] + [TPM_TOTL_PLN_SHIPMNT_KGS] + [SVP_TOTL_PLN_SHIPMNT_KGS]) as [TOTL_PLN_SHIPMNT_KGS] 
      ,sum([SVP_PLN_BASE_VOL]) as [PLN_BASE_CS] 
      ,sum([ATPM_PLN_INCR_VOL] + [TPM_PLN_INCR_VOL]) as [PLN_INCR_CS] 
      ,sum([ATPM_TOTL_PLN_SHIPMNT_CS] + [TPM_TOTL_PLN_SHIPMNT_CS]) as [PLN_INCR_SHIP_CS] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_EA] + [TPM_TOTL_PLN_INCR_SHIP_EA]) as [PLN_INCR_SHIP_UNITS] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_LBS] + [TPM_TOTL_PLN_INCR_SHIP_LBS]) as [PLN_INCR_SHIP_LBS] 
      ,sum([ATPM_TOTL_PLN_INCR_SHIP_KGS] + [TPM_TOTL_PLN_INCR_SHIP_KGS]) as [PLN_INCR_SHIP_KG] 
      ,sum([SVP_SUGSTD_BASE_VOL_SAS]) as [SUGSTD_BASE_VOL_SAS] 
      ,sum([SVP_SUGSTD_SHLF_PRC_SAS]) as [SUGSTD_SHLF_PRC_SAS] 
	  ,SALE_FLG  = CASE
					 WHEN [MIXD_PLT_FLG]  = 'N' THEN 'N'
					 WHEN [MIXD_PLT_FLG]  = 'Z' THEN 'Z'
					ELSE 'D'
				END
	 ,sum([LE_SCAN_APPS_OL_RT_AMT]) as [SCAN_APPS_OL_RT_AMT] ----TASK0564827 - ADD Scanner apps and overlay amount columns
	 ,sum([LE_OL_AMT]) as [OL_AMT]
	FROM #zm_tpm60_delta_ckf
	WHERE [PROMTN_STATUS]  NOT IN ('99','10','30') and [CMPGN_TYP] <> 'Z950' and [HIER_D_LVL5] <> '600010'
	GROUP BY [CUST] 
      ,[MATRL] 
      ,[MIXD_PLT_MATRL] 
      ,[CAL_WK] 
      ,[MIXD_PLT_FLG] 
      ,[CURR] 
--PRINT N'02: #Start Loading final calculated table ' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

--The Final three BEx query outputs requires a calculated table built off the multiprovider.  This step calculates important fields as well as filters
--incorrect records out
--create the unique clustered index on the table
IF NOT EXISTS (SELECT name from sys.indexes where name = 'ix_tpm60_pln_CKF_stg')
begin
	create unique clustered index ix_tpm60_pln_CKF_stg on KNA_COMRCL.STG.ZM_TPM60_CKF ([CUST], [MATRL], [MIXD_PLT_MATRL], [CAL_WK], [MIXD_PLT_FLG], [CURR])
end

--PRINT N'09: #Delete from ckf' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))

DELETE FROM [KNA_COMRCL].[dbo].[ZM_TPM60_CKF]
WHERE EXISTS ( SELECT [CUST] ,[MATRL],[MIXD_PLT_MATRL],[CAL_WK],[MIXD_PLT_FLG] ,[CURR] FROM [KNA_COMRCL].[STG].[ZM_TPM60] stg
				WHERE stg.CUST = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF].CUST and stg.[MATRL]=[KNA_COMRCL].[dbo].[ZM_TPM60_CKF].[MATRL] 
				and stg.[MIXD_PLT_MATRL] = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF].[MIXD_PLT_MATRL] and stg.[CAL_WK] = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF].[CAL_WK] 
				and stg.[MIXD_PLT_FLG]=[KNA_COMRCL].[dbo].[ZM_TPM60_CKF].[MIXD_PLT_FLG] and stg.[CURR] = [KNA_COMRCL].[dbo].[ZM_TPM60_CKF].[CURR])

--PRINT N'10: #insert into final ckf' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
INSERT INTO [KNA_COMRCL].[dbo].[ZM_TPM60_CKF]
SELECT *
FROM [KNA_COMRCL].[STG].[ZM_TPM60_CKF]

--Drop indexes on the staging tables to help for the next run.
BEGIN TRY
	DROP INDEX IX_STG_TPM8800_AGG ON [KNA_BW].[STG].[AZD_TPM8800_AGG]
END TRY
BEGIN CATCH
END CATCH
BEGIN TRY
	DROP INDEX IX_STG_LES5600 ON [KNA_BW].[STG].[AZD_LES5600]
END TRY
BEGIN CATCH
END CATCH
BEGIN TRY
	DROP INDEX IX_STG_CON6500 ON [KNA_BW].[STG].[AZD_CON6500]
END TRY
BEGIN CATCH
END CATCH
BEGIN TRY
	DROP INDEX IX_STG_SVP1300 ON [KNA_BW].[STG].[AZD_SVP1300]
END TRY
BEGIN CATCH
END CATCH

--PRINT N'11: #go from there' + CAST(CAST(GETDATE() as Datetime2 (3)) as Varchar(20))
IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;

END
GO
/****** Object:  UserDefinedFunction [dbo].[USF_LKUP_YR_PRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[USF_LKUP_YR_PRC]
(@Material VARCHAR (18), @Original_Year INT, @Currency VARCHAR (3))
RETURNS FLOAT
AS
BEGIN
    /******************************************************************************
		NAME:      USF_LKUP_YR_PRC
		PURPOSE:   If a price is missing for a year, lookup the price based on past years.  This gets used to lookup 
		           Material Standard Prices that are missing
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        4/28/2017   USCDXS92       1. Created this function.
		
		
		******************************************************************************/
	DECLARE @lmatnr AS VARCHAR (18);
	DECLARE @lmatnr_comp AS VARCHAR (18);
	DECLARE @year as INT;
	DECLARE @Curr as VARCHAR (3);
	DECLARE @price as FLOAT;


	SET @lmatnr = @Material;
	set @year = @Original_Year;
	set @Curr = @Currency;
	set @price = NULL;
	--First we get the most recent year that has a material standard price.  We take the max calendar year that is below the year 
	--in question and then get the Mat Standard Price from that year.
	SET @price = ( SELECT  [STD_PRC] 
					FROM [KNA_COMRCL].[STG].[MAT_STD_PRICE_LKUP] mat
					INNER JOIN (Select MAX([CAL_YR]) as [Calendar Year]
								FROM [KNA_COMRCL].[STG].[MAT_STD_PRICE_LKUP] 
								WHERE [CAL_YR]< @year and @lmatnr = [MATERIAL] and @Curr = [CURR])
																		 max_year ON (mat.[MATERIAL] = @lmatnr and mat.CURR = @Curr
																					 and max_year.[Calendar Year] = mat.[CAL_YR]))
	--If that returns a Null value (There are no previous prices), then we go into the future years to get a Mat Standard Price
	--This will only be included if the Material Standard Price was entered incorrectly
	IF @price IS NULL or @price = 0.00
	begin 
		SET @price = ( SELECT  [STD_PRC] 
					FROM [KNA_COMRCL].[STG].[MAT_STD_PRICE_LKUP] mat
					INNER JOIN (Select MIN([CAL_YR]) as [Calendar Year]
						FROM [KNA_COMRCL].[STG].[MAT_STD_PRICE_LKUP] 
						WHERE [CAL_YR]> @year and @lmatnr = [MATERIAL] and @Curr = [CURR])
									 max_year ON (mat.[MATERIAL] = @lmatnr and mat.CURR = @Curr
									 and max_year.[Calendar Year] = mat.[CAL_YR]))
	
	--If no prices are found, the set the price to zero
	IF @price IS NULL
	BEGIN
		SET @price = 0;
	END
	END
	return @price 

	END
GO
/****** Object:  Table [dbo].[AMPS_US]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AMPS_US](
	[ALL_PROD] [nvarchar](255) NULL,
	[CATG] [nvarchar](255) NULL,
	[MSK] [nvarchar](255) NULL,
	[NIELSEN_NM] [nvarchar](255) NULL,
	[ORDR] [nvarchar](255) NULL,
	[LVL] [nvarchar](255) NULL,
	[AGG] [nvarchar](255) NULL,
	[LVL_NM] [nvarchar](255) NULL,
	[BRAND] [nvarchar](255) NULL,
	[CORP] [nvarchar](255) NULL,
	[SEG] [nvarchar](255) NULL,
	[SUB_SEG] [nvarchar](255) NULL,
	[BW_CATG] [nvarchar](255) NULL,
	[BW_BU] [nvarchar](255) NULL,
	[BW_NBR] [nvarchar](255) NULL,
	[BW_NM] [nvarchar](255) NULL,
	[PRFT_CTR] [nvarchar](255) NULL,
	[COMBO] [nvarchar](1020) NULL,
	[ALL_MKTS] [nvarchar](255) NULL,
	[ALL_PRODUCTS] [nvarchar](510) NULL,
	[ALL_PD] [nvarchar](255) NULL,
	[DOL] [decimal](20, 5) NULL,
	[DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[BASE_DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[DOL_CHG_YR_AGO] [decimal](20, 5) NULL,
	[EQ_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[INCR_DOL] [decimal](20, 5) NULL,
	[INCR_DOL_YR_AGO] [decimal](20, 5) NULL,
	[UNITS_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[DOL_SHARE_PRMPT] [decimal](20, 5) NULL,
	[DOL_SHARE_CHG_YR_AGO_PRMPT] [decimal](20, 5) NULL,
	[ANY_PROMTN_DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[NBR_PROMTN_DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_DOL_NBR_PROMTN] [decimal](20, 5) NULL,
	[AVG_EQ_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[AVG_EQ_PRC] [decimal](20, 5) NULL,
	[BASE_UNIT_PRC_YR_AGO] [decimal](20, 5) NULL,
	[BASE_UNIT_PRC] [decimal](20, 5) NULL,
	[BASE_UNIT_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[AVG_UNIT_PRC] [decimal](20, 5) NULL,
	[AVG_UNIT_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[QUAL_UNIT_PRC] [decimal](20, 5) NULL,
	[QUAL_UNIT_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[ANY_DISP_NBR_DISP] [decimal](20, 5) NULL,
	[ANY_DISP_NBR_DISP_CHG_YR_AGO] [decimal](20, 5) NULL,
	[DOL_DOL_MM_ACV_ITM] [decimal](20, 5) NULL,
	[DOL_DOL_MM_ACV_ITM_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_ACV] [decimal](20, 5) NULL,
	[PCT_ACV_CHG_YR_AGO] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[AVG_NBR_OF_ITMS] [decimal](20, 5) NULL,
	[AVG_NBR_OF_ITMS_CHG_YR_AGO] [decimal](20, 5) NULL,
	[ANY_PROMTN_UNITS_PCT_LIFT] [decimal](20, 5) NULL,
	[ANY_PROMTN_UNITS_PCT_LIFT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_UNITS_ANY_PROMTN] [decimal](20, 5) NULL,
	[PCT_UNITS_ANY_PROMTN_CHG_YR_AGO] [decimal](20, 5) NULL,
	[ANY_DISP_PCT_ACV] [decimal](20, 5) NULL,
	[ANY_DISP_PCT_ACV_CHG_YR_AGO] [decimal](20, 5) NULL,
	[QUAL_CWW] [decimal](20, 5) NULL,
	[QUAL_CWW_CHG_YR_AGO] [decimal](20, 5) NULL,
	[FEAT_AND_DISP_PCT_ACV_ANY_FEAT_PCT_ACV] [decimal](20, 5) NULL,
	[FEAT_AND_DISP_PCT_ACV_ANY_FEAT_PCT_ACV_CHG_YR_AGO] [decimal](20, 5) NULL,
	[INCR_PCT_CHG_ALL_YR_AGO] [decimal](38, 12) NULL,
	[BASE_U_PRC_GAP] [decimal](38, 6) NULL,
	[BASE_U_PRC_GAP_CHG_ALL_YR_AGO] [decimal](38, 6) NULL,
	[ITM_SHARE_OF_CATG] [decimal](38, 6) NULL,
	[ITM_SHARE_OF_CATG_CHG_YR_AGO] [numeric](38, 6) NULL,
	[DISP_SHARE] [decimal](38, 13) NULL,
	[DISP_SHARE_YR_AGO] [decimal](38, 12) NULL,
	[DCLNG_DISP_SHARE] [decimal](38, 12) NULL,
	[DISP_DOL_IDX] [decimal](38, 6) NULL,
	[ANY_PROMTN_UNIT_PRC_PCT_DISC] [decimal](20, 5) NULL,
	[ANY_PROMTN_UNIT_PRC_PCT_DISC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_SUBSDZD_UNITS] [decimal](20, 5) NULL,
	[SUBSDZD_BASE_UNIT_CHG_ALL_YR_AGO] [decimal](20, 5) NULL,
	[DISP_DOL_IDX_CHG_YR_AGO] [decimal](38, 6) NULL,
	[DISP_DOL_IDX_YR_AGO] [decimal](38, 6) NULL,
	[WK_END] [nvarchar](8) NULL,
	[TM] [nvarchar](255) NULL,
	[MKT MSK] [varchar](50) NULL,
	[MKT_SRT_ORDR] [varchar](50) NULL,
	[MKT_GRP_LVL] [varchar](50) NULL,
	[ALL_RGN] [varchar](50) NULL,
	[EXECUTV] [varchar](50) NULL,
	[EAST] [varchar](50) NULL,
	[WEST] [varchar](50) NULL,
	[CHNL] [varchar](50) NULL,
	[TOTLS] [varchar](50) NULL,
	[CUST] [varchar](50) NULL,
	[CUST_SORT_ORDR] [varchar](50) NULL,
	[AVG_NBR_ITM_REACH] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AOD_NIELSEN_ICEBERGS]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AOD_NIELSEN_ICEBERGS](
	[SRC_FILE] [nvarchar](255) NULL,
	[SRC_TAB] [nvarchar](255) NULL,
	[Extract_DT] [nvarchar](255) NULL,
	[ALL_MKTS] [nvarchar](255) NULL,
	[ALL_PROD] [nvarchar](255) NULL,
	[ALL_PDS] [nvarchar](255) NULL,
	[USD] [decimal](17, 3) NULL,
	[USD_PCT_CHG YR_AGO] [decimal](17, 3) NULL,
	[BASE_USD_PCT_CHG_YR_AGO] [decimal](17, 3) NULL,
	[INCR_USD_PCT_CHG_YR_AGO] [decimal](17, 3) NULL,
	[USD_SHARE_PRMPT] [decimal](17, 3) NULL,
	[USD_SHARE_CHG_YR_AGO_PRMPT] [decimal](17, 3) NULL,
	[KLG_CATG] [nvarchar](255) NULL,
	[KLG_SEG] [nvarchar](255) NULL,
	[KLG_SUB-SEG] [nvarchar](255) NULL,
	[CATG] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOM]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOM](
	[MOD_MATRL] [varchar](18) NULL,
	[CMPT_MATRL] [varchar](18) NULL,
	[SALES_ORG] [varchar](8) NULL,
	[DIST_CHNL] [varchar](2) NULL,
	[DIV] [varchar](4) NULL,
	[PCT] [decimal](10, 3) NULL,
	[QTY] [decimal](16, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLD_SALES_UPDT_OUTLK_FEED]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLD_SALES_UPDT_OUTLK_FEED](
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[LAST_PD_GSV_IBP] [decimal](20, 0) NULL,
	[LAST_PD_TRADE_IBP] [decimal](20, 0) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE_SV_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ADJ] [decimal](20, 0) NULL,
	[YR_AGO_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YR_AGO_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YR_AGO_LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[YR_AGO_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLD_SALES_UPDT_OUTLK_FEED_BW_HIER]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLD_SALES_UPDT_OUTLK_FEED_BW_HIER](
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[FISC_YR] [int] NULL,
	[PLN_TO_NBR] [varchar](100) NULL,
	[PLN_TO_NM] [varchar](100) NULL,
	[LIFE_LN] [varchar](1) NOT NULL,
	[BU] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[POSTNG_PD] [int] NULL,
	[CRM_LE_ORIG_GROS_SALES_MNTLY] [float] NULL,
	[CRM_BASE_KMF_OI_BB] [float] NULL,
	[BUD_GSV] [float] NULL,
	[BUD_KMF] [float] NULL,
	[YAGO_GSV] [float] NULL,
	[YAGO_KMF] [float] NULL,
	[SE_GSV] [float] NULL,
	[SE_KMF] [float] NULL,
	[CON_GSV] [float] NULL,
	[CRM_LE_COP] [float] NULL,
	[YAGO_CRM_LE_COP] [float] NULL,
	[CRM_LE_LBS] [float] NULL,
	[YAGO_CRM_LE_LBS] [float] NULL,
	[COP_SE] [float] NULL,
	[COP_BUD] [float] NULL,
	[BUD_KMF_ADJ] [float] NULL,
	[SE_KMF_ADJ] [float] NULL,
	[IBP_GSV] [float] NULL,
	[IBP_KMF] [float] NULL,
	[LP_IBP_GSV] [float] NULL,
	[LP_IBP_KMF] [float] NULL,
	[FLG] [varchar](10) NOT NULL,
	[KLG_BNR] [varchar](255) NULL,
	[KLG_AGCY_RTL_SR_MGR] [varchar](255) NULL,
	[ACOSTA_RTL_BUS_MGR] [varchar](255) NULL,
	[ACOSTA_FRZ_BUS_MGR] [varchar](255) NULL,
	[FRZ_RGN] [varchar](255) NULL,
	[KLG_VP_DRA_DIR] [varchar](255) NULL,
	[KLG_MTS_DIR] [varchar](255) NULL,
	[TO_DT_YR] [varchar](7) NOT NULL,
	[PD_YR] [varchar](63) NULL,
	[HIER] [varchar](10) NOT NULL,
	[QTR_NM] [varchar](2) NOT NULL,
	[QTR_NBR] [int] NOT NULL,
	[PD_NBR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLD_SALES_UPDT_OUTLK_FEED_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLD_SALES_UPDT_OUTLK_FEED_CAD](
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[LAST_PD_GSV_IBP] [decimal](20, 0) NULL,
	[LAST_PD_TRADE_IBP] [decimal](20, 0) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE_GSV_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ADJ] [decimal](20, 0) NULL,
	[YR_AGO_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YR_AGO_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YR_AGO_LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[YR_AGO_LE_LBS] [decimal](17, 3) NULL,
	[KEY_EVNT] [varchar](20) NULL,
	[KEY_EVNT_DESC] [varchar](2555) NULL,
	[PROMOTION_TYPE] [varchar](225) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLD_SALES_UPDT_OUTLK_FEED_MANUAL]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLD_SALES_UPDT_OUTLK_FEED_MANUAL](
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[FISC_YR] [int] NULL,
	[PLN_TO_NBR] [varchar](100) NULL,
	[PLN_TO_NM] [varchar](100) NULL,
	[ALL_IN_FLG] [varchar](1) NULL,
	[BU] [varchar](100) NULL,
	[CATG] [varchar](100) NULL,
	[POSTNG_PD] [int] NULL,
	[CRM_LE_ORIG_GROS_SALES_MNTLY] [float] NULL,
	[CRM_BASE_KMF_OI_BB] [float] NULL,
	[IBP_GSV] [float] NULL,
	[IBP_KMF] [float] NULL,
	[BUD_GSV] [float] NULL,
	[BUD_KMF] [float] NULL,
	[YAGO_GSV] [float] NULL,
	[YAGO_KMF] [float] NULL,
	[LP_IBP_GSV] [float] NULL,
	[LP_IBP_KMF] [float] NULL,
	[SE_GSV] [float] NULL,
	[SE_KMF] [float] NULL,
	[CON_GSV] [float] NULL,
	[CRM_LE_COP] [float] NULL,
	[YAGO_CRM_LE_COP] [float] NULL,
	[CRM_LE_LBS] [float] NULL,
	[YAGO_CRM_LE_LBS] [float] NULL,
	[COP_SE] [float] NULL,
	[COP_BUD] [float] NULL,
	[BUD_KMF_ADJ] [float] NULL,
	[SE_KMF_ADJ] [float] NULL,
	[FLG] [varchar](10) NOT NULL,
	[KLG_BNR] [varchar](255) NULL,
	[KLG_AGCY_RTL_SR_MGR] [varchar](255) NULL,
	[ACOSTA_RTL_BUS_MGR] [varchar](255) NULL,
	[ACOSTA_FRZ_BUS_MGR] [varchar](255) NULL,
	[FRZ_RGN] [varchar](255) NULL,
	[KLG_VP_DRA_DIR] [varchar](255) NULL,
	[KLG_MTS_DIR] [varchar](255) NULL,
	[TO_DT_YR] [varchar](7) NOT NULL,
	[PD_YR] [varchar](63) NULL,
	[HIER] [varchar](10) NOT NULL,
	[QTR_NM] [varchar](2) NOT NULL,
	[QTR_NBR] [int] NOT NULL,
	[PD_NBR] [int] NULL,
	[UPDT_DT] [date] NULL,
	[TIER_NBR] [varchar](255) NULL,
	[TIER_NM] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IBP_CAD_SNAPSHOT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IBP_CAD_SNAPSHOT](
	[SNAPSHOT_DT] [varchar](15) NULL,
	[SNAPSHOT_YR] [decimal](4, 0) NULL,
	[SNAPSHOT_PD] [decimal](2, 0) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[LAST_PD_GSV_IBP] [decimal](20, 0) NULL,
	[LAST_PD_TRADE_IBP] [decimal](20, 0) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE_SV_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ADJ] [decimal](20, 0) NULL,
	[YR_AGO_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YR_AGO_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YR_AGO_LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[YR_AGO_LE_LBS] [decimal](17, 3) NULL,
	[KEY_EVNT] [varchar](20) NULL,
	[KEY_EVNT_DESC] [varchar](2555) NULL,
	[PROMOTION_TYPE] [varchar](225) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INSIGHTS_PT_TYP_PRFMNCE]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INSIGHTS_PT_TYP_PRFMNCE](
	[PLN_TO_NBR] [varchar](255) NULL,
	[PLN_TO_NM] [varchar](255) NULL,
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[TIER_NM] [varchar](255) NULL,
	[ALL_IN_FLG] [varchar](30) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[CAN_CATG] [varchar](255) NULL,
	[SUB_CATG] [varchar](30) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYP] [varchar](14) NULL,
	[PROD_HIER_TYP_DESC] [varchar](40) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[QTR] [decimal](3, 0) NULL,
	[PD_YR] [varchar](62) NULL,
	[PD] [decimal](3, 0) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[SZ] [varchar](255) NULL,
	[LATST_ESTMT_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_KMF_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_LBS] [decimal](38, 3) NULL,
	[LATST_ESTMT_SHIP_UNITS] [decimal](38, 3) NULL,
	[PLN_KMF] [decimal](38, 2) NULL,
	[LATST_ESTMT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD_FXD] [decimal](38, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LST_PRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LST_PRC](
	[MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[SALES_ORG] [varchar](4) NULL,
	[CHNL_CUST_GRP] [varchar](2) NULL,
	[LST_PRC_PER_CASE] [decimal](17, 2) NULL,
	[CURR] [varchar](5) NULL,
	[LST_PRC_PER_UNIT] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATRL_STD_PRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATRL_STD_PRC](
	[MOD_MATRL] [varchar](18) NULL,
	[CMPT_MATRL] [varchar](18) NULL,
	[CAL_YR] [varchar](4) NULL,
	[STD_PRC] [decimal](17, 2) NULL,
	[CURR] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_CATG]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_CATG](
	[PLN_TO] [varchar](10) NULL,
	[BU] [varchar](60) NULL,
	[ALTN_CATG] [varchar](30) NULL,
	[POSTNG_PD] [decimal](2, 0) NULL,
	[POSTNG_YR] [decimal](4, 0) NULL,
	[CURR] [varchar](5) NULL,
	[TPM_LATST_ESTMT_GSV] [decimal](17, 2) NULL,
	[IBP_GSV_ORIG] [decimal](20, 0) NULL,
	[IBP_GSV_ADJ] [decimal](20, 0) NULL,
	[IBP_KMF_ORIG] [decimal](20, 0) NULL,
	[IBP_KMF_ADJ] [decimal](20, 0) NULL,
	[LAST_PD_TRADE_IBP] [decimal](20, 0) NULL,
	[LAST_PD_GSV_IBP] [decimal](20, 0) NULL,
	[BUD_GSV_ORIG] [decimal](20, 0) NULL,
	[BUD_GSV_ADJ] [decimal](20, 0) NULL,
	[BUD_BASE_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[SE_GSV_ORIG] [decimal](20, 0) NULL,
	[SE_GSV_ADJ] [decimal](20, 0) NULL,
	[SE_KMF_ORIG] [decimal](20, 0) NULL,
	[SE_KMF_ADJ] [decimal](20, 0) NULL,
	[SE2_GSV_ORIG] [decimal](20, 0) NULL,
	[SE2_GSV_ADJ] [decimal](20, 0) NULL,
	[SE2_KMF_ORIG] [decimal](20, 0) NULL,
	[SE2_KMF_ADJ] [decimal](20, 0) NULL,
	[SE3_GSV_ORIG] [decimal](20, 0) NULL,
	[SE3_GSV_ADJ] [decimal](20, 0) NULL,
	[SE3_KMF_ORIG] [decimal](20, 0) NULL,
	[SE3_KMF_ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[CURR] [varchar](5) NULL,
	[PLN_BASE_LBS] [decimal](17, 3) NULL,
	[PLN_INCR_LBS] [decimal](17, 3) NULL,
	[PLN_BASE_UNITS] [decimal](17, 3) NULL,
	[PLN_INCR_UNITS] [decimal](17, 3) NULL,
	[PLN_BASE_RTN_USD] [decimal](17, 2) NULL,
	[PLN_INCR_RTN_USD] [decimal](17, 2) NULL,
	[PLN_BASE_USD] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_USD] [decimal](17, 2) NULL,
	[PLN_SHIP_CS] [decimal](17, 3) NULL,
	[PLN_SHIP_USD] [decimal](17, 2) NULL,
	[PLN_SHIP_LBS] [decimal](17, 3) NULL,
	[PLN_SHIP_KG] [decimal](17, 3) NULL,
	[PLN_SHIP_EA] [decimal](17, 3) NULL,
	[ACTL_SHIP_USD] [decimal](17, 2) NULL,
	[ACTL_SHIP_CS] [decimal](17, 3) NULL,
	[ACTL_SHIP_LBS] [decimal](17, 3) NULL,
	[ACTL_SHIP_UNITS] [decimal](17, 3) NULL,
	[ACTL_SHIP_KG] [decimal](17, 3) NULL,
	[LE_SHIP_USD] [decimal](17, 2) NULL,
	[LE_SHIP_LBS] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS] [decimal](17, 3) NULL,
	[TOTL_PLN_KMF_USD] [decimal](17, 2) NULL,
	[LE_KMF_USD] [decimal](17, 2) NULL,
	[TOTL_PLN_KMF_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[LE_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[LE_CS] [decimal](17, 3) NULL,
	[LE_KGS] [decimal](17, 3) NULL,
	[PLN_BASE_CS] [decimal](17, 3) NULL,
	[PLN_INCR_CS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_CS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_UNITS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_LBS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[SUGSTD_BASE_VOL_SAS] [decimal](17, 3) NULL,
	[SUGSTD_SHLF_PRC_SAS] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM_ACT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM_ACT](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[ACTL_USD] [decimal](17, 2) NULL,
	[ACTL_CS] [decimal](17, 3) NULL,
	[ACTL_EA] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
	[ACTL_LBS] [decimal](17, 3) NULL,
	[ACTL_KGS] [decimal](17, 3) NULL,
	[RETL_SALES_USD] [decimal](17, 2) NULL,
	[ECC_ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[DM_ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[CURR] [varchar](5) NULL,
	[SPCL_PROMTN_ALLWNC] [decimal](17, 3) NULL,
	[SALE_FLG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM_CAD](
	[PLN_TO_NBR] [varchar](255) NULL,
	[PLN_TO_NM] [varchar](255) NULL,
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[TIER_NM] [varchar](255) NULL,
	[ALL_IN_FLG] [varchar](30) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CURR] [varchar](18) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[CAN_CATG] [varchar](255) NULL,
	[SUB_CATG] [varchar](30) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYP] [varchar](14) NULL,
	[PROD_HIER_TYP_DESC] [varchar](40) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[QTR] [decimal](3, 0) NULL,
	[PD_YR] [varchar](62) NULL,
	[PD] [decimal](3, 0) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[SZ] [varchar](255) NULL,
	[PROMOTIONS] [varchar](155) NULL,
	[KEY_EVNT] [varchar](20) NULL,
	[KEY_EVNT_DESC] [varchar](2555) NULL,
	[PROMOTION_TYPE] [varchar](225) NULL,
	[LATST_ESTMT_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_KMF_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_LBS] [decimal](38, 3) NULL,
	[LATST_ESTMT_SHIP_UNITS] [decimal](38, 3) NULL,
	[PLN_KMF] [decimal](38, 2) NULL,
	[LATST_ESTMT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD_FXD] [decimal](38, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM_CAD_HIST]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM_CAD_HIST](
	[PLN_TO_NBR] [varchar](255) NULL,
	[PLN_TO_NM] [varchar](255) NULL,
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[TIER_NM] [varchar](255) NULL,
	[ALL_IN_FLG] [varchar](30) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CURR] [varchar](18) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[CAN_CATG] [varchar](255) NULL,
	[SUB_CATG] [varchar](30) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYP] [varchar](14) NULL,
	[PROD_HIER_TYP_DESC] [varchar](40) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[QTR] [decimal](3, 0) NULL,
	[PD_YR] [varchar](62) NULL,
	[PD] [decimal](3, 0) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[SZ] [varchar](255) NULL,
	[PROMOTIONS] [varchar](155) NULL,
	[KEY_EVNT] [varchar](20) NULL,
	[KEY_EVNT_DESC] [varchar](2555) NULL,
	[PROMOTION_TYPE] [varchar](225) NULL,
	[LATST_ESTMT_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_KMF_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_LBS] [decimal](38, 3) NULL,
	[LATST_ESTMT_SHIP_UNITS] [decimal](38, 3) NULL,
	[PLN_KMF] [decimal](38, 2) NULL,
	[LATST_ESTMT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD_FXD] [decimal](38, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM_HIST]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM_HIST](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[CURR] [varchar](5) NULL,
	[PLN_BASE_LBS] [decimal](17, 3) NULL,
	[PLN_INCR_LBS] [decimal](17, 3) NULL,
	[PLN_BASE_UNITS] [decimal](17, 3) NULL,
	[PLN_INCR_UNITS] [decimal](17, 3) NULL,
	[PLN_BASE_RTN_USD] [decimal](17, 2) NULL,
	[PLN_INCR_RTN_USD] [decimal](17, 2) NULL,
	[PLN_BASE_USD] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_USD] [decimal](17, 2) NULL,
	[PLN_SHIP_CS] [decimal](17, 3) NULL,
	[PLN_SHIP_USD] [decimal](17, 2) NULL,
	[PLN_SHIP_LBS] [decimal](17, 3) NULL,
	[PLN_SHIP_KG] [decimal](17, 3) NULL,
	[PLN_SHIP_EA] [decimal](17, 3) NULL,
	[ACTL_SHIP_USD] [decimal](17, 2) NULL,
	[ACTL_SHIP_CS] [decimal](17, 3) NULL,
	[ACTL_SHIP_LBS] [decimal](17, 3) NULL,
	[ACTL_SHIP_UNITS] [decimal](17, 3) NULL,
	[ACTL_SHIP_KG] [decimal](17, 3) NULL,
	[LE_SHIP_USD] [decimal](17, 2) NULL,
	[LE_SHIP_LBS] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS] [decimal](17, 3) NULL,
	[TOTL_PLN_KMF_USD] [decimal](17, 2) NULL,
	[LE_KMF_USD] [decimal](17, 2) NULL,
	[TOTL_PLN_KMF_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[LE_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[LE_CS] [decimal](17, 3) NULL,
	[LE_KGS] [decimal](17, 3) NULL,
	[PLN_BASE_CS] [decimal](17, 3) NULL,
	[PLN_INCR_CS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_CS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_UNITS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_LBS] [decimal](17, 3) NULL,
	[PLN_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[SUGSTD_BASE_VOL_SAS] [decimal](17, 3) NULL,
	[SUGSTD_SHLF_PRC_SAS] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM_WK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM_WK](
	[PLN_TO_NBR] [varchar](255) NULL,
	[PLN_TO_NM] [varchar](255) NULL,
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[TIER_NM] [varchar](255) NULL,
	[ALL_IN_FLG] [varchar](30) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[MIXD_PLT_MATRL_DESC] [varchar](255) NULL,
	[CURR] [varchar](5) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[CAN_CATG] [varchar](255) NULL,
	[SUB_CATG] [varchar](30) NULL,
	[ALT_SEGMENT] [varchar](30) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYP] [varchar](14) NULL,
	[PROD_HIER_TYP_DESC] [varchar](40) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[QTR] [decimal](3, 0) NULL,
	[PD_YR] [varchar](62) NULL,
	[PD] [decimal](3, 0) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[WK] [decimal](2, 0) NULL,
	[SZ] [varchar](255) NULL,
	[ACTL_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[ACTL_SHIP_CS] [decimal](38, 2) NULL,
	[ACTL_SHIP_KG] [decimal](38, 2) NULL,
	[ACTL_SHIP_LBS] [decimal](38, 2) NULL,
	[ACTL_SHIP_UNITS] [decimal](38, 2) NULL,
	[ACTL_SHIP_USD] [decimal](38, 2) NULL,
	[ACT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[ACT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD_FXD] [decimal](38, 2) NULL,
	[LATST_ESTMT_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_KMF_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_LBS] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_UNITS] [decimal](38, 2) NULL,
	[LE_CS] [decimal](38, 2) NULL,
	[LE_KGS] [decimal](38, 2) NULL,
	[LE_PRICE_CHNG_USD] [decimal](38, 2) NULL,
	[LE_COP_FIXED] [decimal](38, 2) NULL,
	[PLN_BASE_CS] [decimal](38, 2) NULL,
	[PLN_BASE_LBS] [decimal](38, 2) NULL,
	[PLN_BASE_RTN_USD] [decimal](38, 2) NULL,
	[PLN_BASE_UNITS] [decimal](38, 2) NULL,
	[PLN_BASE_USD] [decimal](38, 2) NULL,
	[PLN_INCR_CS] [decimal](38, 2) NULL,
	[PLN_INCR_LBS] [decimal](38, 2) NULL,
	[PLN_INCR_RTN_USD] [decimal](38, 2) NULL,
	[PLN_INCR_UNITS] [decimal](38, 2) NULL,
	[PLN_INC_USD] [decimal](38, 2) NULL,
	[PLN_CONS_LBS] [decimal](38, 2) NULL,
	[PLN_CONS_RTN_USD] [decimal](38, 2) NULL,
	[PLN_CONS_UNITS] [decimal](38, 2) NULL,
	[PLN_CONS_USD] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_CS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_KGS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_LBS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_UNITS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_KMF] [decimal](38, 2) NULL,
	[PLN_SHIP_CS] [decimal](38, 2) NULL,
	[PLN_SHIP_EA] [decimal](38, 2) NULL,
	[PLN_SHIP_KG] [decimal](38, 2) NULL,
	[PLN_SHIP_LBS] [decimal](38, 2) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_KMF_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[PLN_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[PLN_SC_PRXY_USD] [decimal](38, 2) NULL,
	[SUGSTD_BASE_VOL_SAS] [decimal](38, 2) NULL,
	[SUGSTD_SHLF_PRC_SAS] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLN_TO_ITM_WK_HIST]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLN_TO_ITM_WK_HIST](
	[PLN_TO_NBR] [varchar](255) NULL,
	[PLN_TO_NM] [varchar](255) NULL,
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[TIER_NM] [varchar](255) NULL,
	[ALL_IN_FLG] [varchar](30) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[MIXD_PLT_MATRL_DESC] [varchar](255) NULL,
	[CURR] [varchar](5) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[CAN_CATG] [varchar](255) NULL,
	[SUB_CATG] [varchar](30) NULL,
	[ALT_SEGMENT] [varchar](30) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYP] [varchar](14) NULL,
	[PROD_HIER_TYP_DESC] [varchar](40) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[QTR] [decimal](3, 0) NULL,
	[PD_YR] [varchar](62) NULL,
	[PD] [decimal](3, 0) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[WK] [decimal](2, 0) NULL,
	[SZ] [varchar](255) NULL,
	[ACTL_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[ACTL_SHIP_CS] [decimal](38, 2) NULL,
	[ACTL_SHIP_KG] [decimal](38, 2) NULL,
	[ACTL_SHIP_LBS] [decimal](38, 2) NULL,
	[ACTL_SHIP_UNITS] [decimal](38, 2) NULL,
	[ACTL_SHIP_USD] [decimal](38, 2) NULL,
	[ACT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[ACT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_COST_OF_PROD_USD_FXD] [decimal](38, 2) NULL,
	[LATST_ESTMT_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_KMF_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SC_PRXY_USD_GSV] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_LBS] [decimal](38, 2) NULL,
	[LATST_ESTMT_SHIP_UNITS] [decimal](38, 2) NULL,
	[LE_CS] [decimal](38, 2) NULL,
	[LE_KGS] [decimal](38, 2) NULL,
	[LE_PRICE_CHNG_USD] [decimal](38, 2) NULL,
	[LE_COP_FIXED] [decimal](38, 2) NULL,
	[PLN_BASE_CS] [decimal](38, 2) NULL,
	[PLN_BASE_LBS] [decimal](38, 2) NULL,
	[PLN_BASE_RTN_USD] [decimal](38, 2) NULL,
	[PLN_BASE_UNITS] [decimal](38, 2) NULL,
	[PLN_BASE_USD] [decimal](38, 2) NULL,
	[PLN_INCR_CS] [decimal](38, 2) NULL,
	[PLN_INCR_LBS] [decimal](38, 2) NULL,
	[PLN_INCR_RTN_USD] [decimal](38, 2) NULL,
	[PLN_INCR_UNITS] [decimal](38, 2) NULL,
	[PLN_INC_USD] [decimal](38, 2) NULL,
	[PLN_CONS_LBS] [decimal](38, 2) NULL,
	[PLN_CONS_RTN_USD] [decimal](38, 2) NULL,
	[PLN_CONS_UNITS] [decimal](38, 2) NULL,
	[PLN_CONS_USD] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_CS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_KGS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_LBS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_UNITS] [decimal](38, 2) NULL,
	[PLN_INCR_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_KMF] [decimal](38, 2) NULL,
	[PLN_SHIP_CS] [decimal](38, 2) NULL,
	[PLN_SHIP_EA] [decimal](38, 2) NULL,
	[PLN_SHIP_KG] [decimal](38, 2) NULL,
	[PLN_SHIP_LBS] [decimal](38, 2) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_KMF_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[PLN_NSV_PRXY_USD] [decimal](38, 2) NULL,
	[PLN_SC_PRXY_USD] [decimal](38, 2) NULL,
	[SUGSTD_BASE_VOL_SAS] [decimal](38, 2) NULL,
	[SUGSTD_SHLF_PRC_SAS] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMTN]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMTN](
	[PROMTN_ID] [varchar](24) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[PLN_TO] [varchar](10) NULL,
	[TPM_CURR] [varchar](5) NULL,
	[TPM_PLN_PROMTN_USD_FULL_PRC] [decimal](17, 2) NULL,
	[TPM_PLN_RETLR_PROMTN_SALES] [decimal](17, 2) NULL,
	[TPM_PLN_TPQ_EA] [decimal](17, 3) NULL,
	[GROS_SALES_USD] [decimal](17, 2) NULL,
	[PLN_SHIP_USD] [decimal](17, 2) NULL,
	[PLN_INC_VOL_USD] [decimal](17, 2) NULL,
	[PLN_PROMO_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[LE_TOTL_NON_TRDE] [decimal](17, 2) NULL,
	[LE_TOTL_FIX_KMF_USD] [decimal](17, 2) NULL,
	[TOTL_PLN_PROMTN_USD] [decimal](17, 2) NULL,
	[RSRV_TOTL_KMF_USD] [decimal](17, 2) NULL,
	[TOTL_PLN_PROMTN_UNITS] [decimal](17, 2) NULL,
	[RSRV_CSM_TRDE_USD] [decimal](17, 2) NULL,
	[TOTL_MODELED_PROMTN_USD] [decimal](17, 2) NULL,
	[PLN_INCR_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[DISP] [decimal](17, 2) NULL,
	[FEATUR] [decimal](17, 2) NULL,
	[F_D] [decimal](17, 2) NULL,
	[SUGG_TPQ] [decimal](17, 2) NULL,
	[SUGG_INCR] [decimal](17, 2) NULL,
	[SVP_SUGSTD_BASE] [decimal](17, 2) NULL,
	[SVP_PLN_SHLF_PRC] [decimal](17, 2) NULL,
	[PLN_INCR_PCT] [decimal](17, 2) NULL,
	[PLN_ACTVTY_GSV] [decimal](17, 2) NULL,
	[EDLP_SPND] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMTN_CNTR_CHK_SNPSHT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMTN_CNTR_CHK_SNPSHT](
	[FISC_YR] [int] NOT NULL,
	[FISC_PD] [int] NOT NULL,
	[TRADE_PROMTN_ID] [varchar](255) NOT NULL,
	[TRADE_PROMTN_DESC] [varchar](255) NULL,
	[PROMTN_TYP] [varchar](255) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[PLN_TO_TERR] [varchar](255) NULL,
	[PLN_ACCT] [varchar](255) NULL,
	[PLN_STRT_DT] [date] NULL,
	[PLN_END_DT] [date] NULL,
	[STATUS] [varchar](255) NULL,
	[EMPL_RESP] [varchar](255) NULL,
	[KLG_MERCHNG_FUND_PCT] [decimal](15, 2) NULL,
	[GROS_SALE] [decimal](15, 2) NULL,
	[GROS_SALE_CURR] [varchar](3) NULL,
	[TRADE_SPND] [decimal](15, 2) NULL,
	[TRADE_SPND_CURR] [varchar](3) NULL,
	[BUYNG_STRT_DT] [date] NULL,
	[BUYNG_END_DT] [date] NULL,
	[CNTR_ATTCH] [varchar](1) NULL,
	[PROMTN_CNTR_ATTCH_CNT] [int] NULL,
	[RSN_CODE] [varchar](26) NULL,
	[VERSN] [date] NULL,
	[VERSN_YR] [int] NULL,
	[VERSN_MN] [int] NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[FISC_YR] ASC,
	[FISC_PD] ASC,
	[TRADE_PROMTN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMTN_HIST]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMTN_HIST](
	[PROMTN_ID] [varchar](24) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[PLN_TO] [varchar](10) NULL,
	[TPM_CURR] [varchar](5) NULL,
	[TPM_PLN_PROMTN_USD_FULL_PRC] [decimal](17, 2) NULL,
	[TPM_PLN_RETLR_PROMTN_SALES] [decimal](17, 2) NULL,
	[TPM_PLN_TPQ_EA] [decimal](17, 3) NULL,
	[GROS_SALES_USD] [decimal](17, 2) NULL,
	[PLN_SHIP_USD] [decimal](17, 2) NULL,
	[PLN_INC_VOL_USD] [decimal](17, 2) NULL,
	[PLN_PROMO_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[LE_TOTL_NON_TRDE] [decimal](17, 2) NULL,
	[LE_TOTL_FIX_KMF_USD] [decimal](17, 2) NULL,
	[TOTL_PLN_PROMTN_USD] [decimal](17, 2) NULL,
	[RSRV_TOTL_KMF_USD] [decimal](17, 2) NULL,
	[TOTL_PLN_PROMTN_UNITS] [decimal](17, 2) NULL,
	[RSRV_CSM_TRDE_USD] [decimal](17, 2) NULL,
	[TOTL_MODELED_PROMTN_USD] [decimal](17, 2) NULL,
	[PLN_INCR_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[DISP] [decimal](17, 2) NULL,
	[FEATUR] [decimal](17, 2) NULL,
	[F_D] [decimal](17, 2) NULL,
	[SUGG_TPQ] [decimal](17, 2) NULL,
	[SUGG_INCR] [decimal](17, 2) NULL,
	[SVP_SUGSTD_BASE] [decimal](17, 2) NULL,
	[SVP_PLN_SHLF_PRC] [decimal](17, 2) NULL,
	[PLN_INCR_PCT] [decimal](17, 2) NULL,
	[PLN_ACTVTY_GSV] [decimal](17, 2) NULL,
	[EDLP_SPND] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMTN_MSTR]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMTN_MSTR](
	[PROMTN_ID] [varchar](24) NULL,
	[DESC] [varchar](40) NULL,
	[ACTVTY_TYP] [varchar](2) NULL,
	[ACTVTY_DESC] [varchar](40) NULL,
	[SHIP_DT_FR] [varchar](10) NULL,
	[SHIP_DT_TO] [varchar](10) NULL,
	[PROMTN_STATUS] [varchar](2) NULL,
	[PROMTN_DESC] [varchar](40) NULL,
	[SCNR_APPS_ID] [varchar](60) NULL,
	[EMPL_RESP] [varchar](10) NULL,
	[CHG_BY] [varchar](12) NULL,
	[LAST_CHG_ON] [varchar](10) NULL,
	[PERS_NM] [varchar](12) NULL,
	[DT_CRE] [varchar](10) NULL,
	[CMPGN_TYP] [varchar](4) NULL,
	[CMPGN_DESC] [varchar](40) NULL,
	[ACTL_DT_FR] [varchar](10) NULL,
	[ACTL_DT_TO] [varchar](10) NULL,
	[TRDE_PROMTN_AGRMT] [varchar](24) NULL,
	[PLN_DT_FR] [varchar](10) NULL,
	[PLN_DT_TO] [varchar](10) NULL,
	[KEY_EVNT] [varchar](3) NULL,
	[KEY_EVNT_DESC] [varchar](40) NULL,
	[SALES_ORG] [varchar](8) NULL,
	[TACTC] [varchar](4) NULL,
	[CURR_KEY] [varchar](5) NULL,
	[DISTR_CHNL] [varchar](2) NULL,
	[DIV] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RGM_DELTA_KEY]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RGM_DELTA_KEY](
	[TABLE_NM] [varchar](20) NULL,
	[LAST_UPDT] [varchar](23) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHAPE_DLY_DMND]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHAPE_DLY_DMND](
	[SALES_MGMT] [varchar](255) NULL,
	[CATG] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[TRK_DY] [date] NULL,
	[DLY_DMND] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRK_PD_END]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRK_PD_END](
	[CATG] [varchar](100) NULL,
	[BU] [varchar](100) NULL,
	[LVL_B] [varchar](100) NULL,
	[TRK_DY] [date] NULL,
	[PACE_DY] [int] NULL,
	[DY_IN_PD] [int] NULL,
	[PTD_SHAPE_PCT] [decimal](38, 5) NOT NULL,
	[PREV_SHAPE_PCT] [decimal](15, 5) NOT NULL,
	[DLY_DMND] [float] NULL,
	[OPN_ORDR_DOL] [float] NOT NULL,
	[PD_GROS_SALES_DOL] [float] NOT NULL,
	[QTR_GROS_SALES_DOL] [float] NOT NULL,
	[YR_GROS_SALES_DOL] [float] NOT NULL,
	[PD_IBP] [float] NOT NULL,
	[QTR_IBP] [float] NOT NULL,
	[YR_IBP] [float] NOT NULL,
	[PD_BUD] [float] NOT NULL,
	[QTR_BUD] [float] NOT NULL,
	[YR_BUD] [float] NOT NULL,
	[PD_STRATG_ESTMT] [float] NOT NULL,
	[QTR_STRATG_ESTMT] [float] NOT NULL,
	[YR_STRATG_ESTMT] [float] NOT NULL,
	[PD_YR_AGO_GROS_SALES_DOL] [float] NOT NULL,
	[QTR_YR_AGO_GROS_SALES_DOL] [float] NOT NULL,
	[YR_YR_AGO_GROS_SALES_DOL] [float] NOT NULL,
	[NXT_PD_OPN_ORDR_DOL] [float] NOT NULL,
	[QTR_BUD_LESS_THAN_PD] [float] NOT NULL,
	[YR_BUD_LESS_THAN_PD] [float] NOT NULL,
	[QTR_STRATG_ESTMT_LESS_THAN_PD] [float] NOT NULL,
	[YR_STRATG_ESTMT_LESS_THAN_PD] [float] NOT NULL,
	[QTR_YR_AGO_LESS_THAN_PD] [float] NOT NULL,
	[YR_YR_AGO_LESS_THAN_PD] [float] NOT NULL,
	[CURR_PTD_INDIR] [decimal](38, 5) NOT NULL,
	[NEW_PTD_INDIR] [decimal](38, 6) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UOM]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UOM](
	[MATRL] [varchar](18) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UOM_DENO] [decimal](5, 0) NULL,
	[UOM_NUM] [decimal](5, 0) NULL,
	[NUM_DIV] [decimal](11, 6) NULL,
	[DENO_DIV] [decimal](11, 6) NULL,
	[UNIT_FLG] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZM_TPM60]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZM_TPM60](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[PROMTNS] [varchar](24) NULL,
	[CURR] [varchar](5) NULL,
	[TPM_DISP] [decimal](17, 3) NULL,
	[TPM_F_D] [decimal](17, 3) NULL,
	[TPM_FEATUR] [decimal](17, 3) NULL,
	[TPM_PLN_INCR_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_SHIPMNT_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[TPM_PLN_PROMTN_DISC_USD] [decimal](17, 2) NULL,
	[TPM_PLN_PROMTN_USD_FULL_PRC] [decimal](17, 2) NULL,
	[TPM_PLN_RETLR_PROMTN_SALES] [decimal](17, 2) NULL,
	[TPM_PLN_RETLR_SALES_USD] [decimal](17, 2) NULL,
	[TPM_PLN_TPQ_USD] [decimal](17, 2) NULL,
	[TPM_PLN_TPQ_EA] [decimal](17, 3) NULL,
	[TPM_PLN_TPQ_KGS] [decimal](17, 3) NULL,
	[TPM_PLN_TPQ_LBS] [decimal](17, 3) NULL,
	[TPM_PLN_PROMTN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_INCR_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_INCR_EA] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_KGS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_LBS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_EA] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_LBS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_EA] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_KGS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_CS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_LBS] [decimal](17, 3) NULL,
	[TPM_PLN_INCR_VOL] [decimal](17, 3) NULL,
	[TPM_PLN_TPQ] [decimal](17, 3) NULL,
	[TPM_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_CORRCTV_LUMP_SUM] [decimal](17, 2) NULL,
	[TPM_CSM_TRDE] [decimal](17, 2) NULL,
	[TPM_EDLP_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_EDLP_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_EDLP_SPND] [decimal](17, 2) NULL,
	[TPM_EDLP_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_EDLP_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_PLN_SHIP_USD] [decimal](17, 2) NULL,
	[TPM_PLN_SHIP_EA] [decimal](17, 3) NULL,
	[TPM_PLN_SHIP_KGS] [decimal](17, 3) NULL,
	[TPM_PLN_EST_SHIP_VOL] [decimal](17, 3) NULL,
	[TPM_PLN_SHIP_LBS] [decimal](17, 3) NULL,
	[TPM_PAR_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_PAR_OI_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_FIX_LUMP_SUM] [decimal](17, 2) NULL,
	[TPM_LQDTN_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_LQDTN_OI_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_LQDTN_FIX] [decimal](17, 2) NULL,
	[TPM_MIL_FIX] [decimal](17, 2) NULL,
	[TPM_NEW_ITM_FIX] [decimal](17, 2) NULL,
	[TPM_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_SCNR_APPL_FIX] [decimal](17, 2) NULL,
	[TPM_SCANAPPS_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_SCANAPPS_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_PROMTN_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_PROMTN_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_SUGSTD_TPQ_USD] [decimal](17, 2) NULL,
	[TPM_SUGSTD_TPQ_EA] [decimal](17, 3) NULL,
	[TPM_SUGSTD_TPQ_KGS] [decimal](17, 3) NULL,
	[TPM_SUGSTD_TPQ] [decimal](17, 3) NULL,
	[TPM_SUGSTD_TPQ_LBS] [decimal](17, 3) NULL,
	[TPM_SUGSTD_INCR_USD] [decimal](17, 2) NULL,
	[TPM_SUGSTD_INCR_EA] [decimal](17, 3) NULL,
	[TPM_SUGSTD_INCR_KGS] [decimal](17, 3) NULL,
	[TPM_SUGSTD_INCR_VOL] [decimal](17, 3) NULL,
	[TPM_TOTL_TRDE_SPND] [decimal](17, 2) NULL,
	[TPM_WHSE_WDRL_TOTL_SPND] [decimal](17, 2) NULL,
	[TPM_CURR] [varchar](5) NULL,
	[TPM_SALES_UNIT] [varchar](3) NULL,
	[TPM_BW_SRC] [varchar](40) NULL,
	[ATPM_DISP] [decimal](17, 3) NULL,
	[ATPM_F_D] [decimal](17, 3) NULL,
	[ATPM_FEATUR] [decimal](17, 3) NULL,
	[ATPM_PLN_INCR_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_COST_OF_PROD] [decimal](17, 2) NULL,
	[ATPM_PLN_PROMTN_DISC_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_PROMTN_USD_FULL_PRC] [decimal](17, 2) NULL,
	[ATPM_PLN_RETLR_PROMTN_SALES] [decimal](17, 2) NULL,
	[ATPM_PLN_RETLR_SALES_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_TPQ_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_TPQ_EA] [decimal](17, 3) NULL,
	[ATPM_PLN_TPQ_KGS] [decimal](17, 3) NULL,
	[ATPM_PLN_TPQ_LBS] [decimal](17, 3) NULL,
	[ATPM_PLN_PROMTN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_INCR_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_INCR_EA] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_KGS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_LBS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_EA] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_LBS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_EA] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_KGS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_CS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_LBS] [decimal](17, 3) NULL,
	[ATPM_PLN_INCR_VOL] [decimal](17, 3) NULL,
	[ATPM_PLN_TPQ] [decimal](17, 3) NULL,
	[ATPM_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_CORRCTV_LUMP_SUM] [decimal](17, 2) NULL,
	[ATPM_CSM_TRDE] [decimal](17, 2) NULL,
	[ATPM_EDLP_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_EDLP_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_EDLP_SPND] [decimal](17, 2) NULL,
	[ATPM_EDLP_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_EDLP_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PLN_SHIP_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_SHIP_EA] [decimal](17, 3) NULL,
	[ATPM_PLN_SHIP_KGS] [decimal](17, 3) NULL,
	[ATPM_PLN_EST_SHIP_VOL] [decimal](17, 3) NULL,
	[ATPM_PLN_SHIP_LBS] [decimal](17, 3) NULL,
	[ATPM_PAR_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PAR_OI_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_FIX_LUMP_SUM] [decimal](17, 2) NULL,
	[ATPM_LQDTN_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_LQDTN_OI_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_LQDTN_FIX] [decimal](17, 2) NULL,
	[ATPM_MIL_FIX] [decimal](17, 2) NULL,
	[ATPM_NEW_ITM_FIX] [decimal](17, 2) NULL,
	[ATPM_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_SCNR_APPL_FIX] [decimal](17, 2) NULL,
	[ATPM_SCANAPPS_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_SCANAPPS_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PROMTN_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PROMTN_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_SUGSTD_TPQ_USD] [decimal](17, 2) NULL,
	[ATPM_SUGSTD_TPQ_EA] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_TPQ_KGS] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_TPQ] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_TPQ_LBS] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_INCR_USD] [decimal](17, 2) NULL,
	[ATPM_SUGSTD_INCR_EA] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_INCR_KGS] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_INCR_VOL] [decimal](17, 3) NULL,
	[ATPM_TOTL_TRDE_SPND] [decimal](17, 2) NULL,
	[ATPM_WHSE_WDRL_TOTL_SPND] [decimal](17, 2) NULL,
	[ATPM_CURR] [varchar](5) NULL,
	[ATPM_SALES_UNIT] [varchar](3) NULL,
	[ATPM_VARNC_PCT] [decimal](17, 3) NULL,
	[ATPM_BW_SRC] [varchar](20) NULL,
	[SALES_PROMTN_ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[SALES_PROMTN_GROS_SALES_USD] [decimal](17, 2) NULL,
	[SALES_PROMTN_SPCL_PROMTN_ALLWNC] [decimal](17, 2) NULL,
	[SALES_PROMTN_GROS_CS] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_EA] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_KGS] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_LBS] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_PKGS] [decimal](17, 3) NULL,
	[SALES_PROMTN_CURR] [varchar](5) NULL,
	[SALES_PROMTN_PROMTN_CS_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_PROMTN_EA_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_TRUE_GROS_LBS_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_GROS_LBS_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_UN_GROS_PKGS_UOM] [decimal](10, 3) NULL,
	[SALES_PROMTN_BW_SRC] [varchar](40) NULL,
	[SVP_CANBLZTN_QTY] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_EA] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_KGS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_LBS] [decimal](17, 3) NULL,
	[SVP_FWD_BUY] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_EA] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_KGS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_LBS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_USD] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_USD] [decimal](17, 2) NULL,
	[SVP_PLN_BASE_EA] [decimal](17, 3) NULL,
	[SVP_PLN_BASE_KGS] [decimal](17, 3) NULL,
	[SVP_PLN_BASE_VOL] [decimal](17, 3) NULL,
	[SVP_PLN_BASE_LBS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_USD] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[SVP_PLN_RETLR_SALES_USD] [decimal](17, 2) NULL,
	[SVP_PLN_SHLF_PRC] [decimal](17, 2) NULL,
	[SVP_SUGSTD_BASE_USD] [decimal](17, 2) NULL,
	[SVP_SUGSTD_BASE_EA] [decimal](17, 3) NULL,
	[SVP_SUGSTD_BASE_KGS] [decimal](17, 3) NULL,
	[SVP_SUGSTD_BASE_VOL_SAS] [decimal](17, 3) NULL,
	[SVP_SUGSTD_BASE_LBS] [decimal](17, 3) NULL,
	[SVP_SUGSTD_SHLF_PRC_SAS] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_BASE_USD] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_SHIPMNT_EA] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_KGS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_CS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_LBS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_BASE_VOL] [decimal](17, 3) NULL,
	[SVP_SALES_UNIT] [varchar](3) NULL,
	[SVP_CURR] [varchar](5) NULL,
	[SVP_BW_SRC] [varchar](40) NULL,
	[LE_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[LE_CSM_ADVER] [decimal](17, 2) NULL,
	[LE_CSM_COGS] [decimal](17, 2) NULL,
	[LE_CSM_CPN] [decimal](17, 2) NULL,
	[LE_CORRCTN_LUMP_SUM] [decimal](17, 2) NULL,
	[LE_CSM_VAP] [decimal](17, 2) NULL,
	[LE_EDLP_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_EDLP_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[LE_FIX_LUMP_SUM] [decimal](17, 2) NULL,
	[LE_LQDTN_FIX] [decimal](17, 2) NULL,
	[LE_MISS_OI] [decimal](17, 2) NULL,
	[LE_MIL_FIX] [decimal](17, 2) NULL,
	[LE_NEW_ITM_FIX] [decimal](17, 2) NULL,
	[LE_SCAN_APPL_FIX] [decimal](17, 2) NULL,
	[LE_SCANAPPS_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_SCANAPPS_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[LE_PROMTN_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_PROMTN_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[LE_WHSE_WDRL_TOTL] [decimal](17, 2) NULL,
	[LE_CURR] [varchar](5) NULL,
	[LE_BW_SRC] [varchar](40) NULL,
	[PROMTN_STATUS] [varchar](2) NULL,
	[CMPGN_TYP] [varchar](4) NULL,
	[HIER_D_LVL5] [varchar](10) NULL,
	[ATPM_SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[ATPM_OL_AMT] [decimal](17, 2) NULL,
	[LE_SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[LE_OL_AMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZM_TPM60_CKF]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZM_TPM60_CKF](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CURR] [varchar](5) NULL,
	[PLN_BASE_LBS] [decimal](38, 3) NULL,
	[PLN_INCR_LBS] [decimal](38, 3) NULL,
	[PLN_BASE_UNITS] [decimal](38, 3) NULL,
	[PLN_INCR_UNITS] [decimal](38, 3) NULL,
	[PLN_BASE_RTL_USD] [decimal](38, 2) NULL,
	[PLN_INCR_RTL_USD] [decimal](38, 2) NULL,
	[PLN_BASE_USD] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_LBS] [decimal](38, 3) NULL,
	[PLN_SHIP_EA] [decimal](38, 3) NULL,
	[PLN_TOTL_FIX_KMF_SPND] [decimal](38, 2) NULL,
	[PLN_VAR_KMF_SPND] [decimal](38, 2) NULL,
	[ACTL_OI_SPND_NOT_RSTR] [decimal](38, 2) NULL,
	[LATST_ESTMT_TOTL_FIX_KMF] [decimal](38, 2) NULL,
	[PLN_TOTL_OFF_INVC_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_MISS_OI] [decimal](38, 2) NULL,
	[LATST_ESTMT_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_EDLP_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCANAPPS_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCAN_USD] [decimal](38, 2) NULL,
	[LE_WW_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_SHIPMNT_CS] [decimal](38, 3) NULL,
	[TOTL_PLN_SHIPMNT_KGS] [decimal](38, 3) NULL,
	[PLN_BASE_CS] [decimal](38, 3) NULL,
	[PLN_INCR_CS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_CS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_UNITS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_LBS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_KG] [decimal](38, 3) NULL,
	[SUGSTD_BASE_VOL_SAS] [decimal](38, 3) NULL,
	[SUGSTD_SHLF_PRC_SAS] [decimal](38, 2) NULL,
	[SALE_FLG] [varchar](1) NOT NULL,
	[SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[OL_AMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZM_TPM60_CKF_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZM_TPM60_CKF_CAD](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CURR] [varchar](5) NULL,
	[PROMTNS] [varchar](24) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_LBS] [decimal](38, 3) NULL,
	[PLN_SHIP_EA] [decimal](38, 3) NULL,
	[PLN_TOTL_FIX_KMF_SPND] [decimal](38, 2) NULL,
	[PLN_VAR_KMF_SPND] [decimal](38, 2) NULL,
	[LATST_ESTMT_TOTL_FIX_KMF] [decimal](38, 2) NULL,
	[PLN_TOTL_OFF_INVC_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_MISS_OI] [decimal](38, 2) NULL,
	[LATST_ESTMT_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_EDLP_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCANAPPS_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCAN_USD] [decimal](38, 2) NULL,
	[LE_WW_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_SHIPMNT_CS] [decimal](38, 3) NULL,
	[TOTL_PLN_SHIPMNT_KGS] [decimal](38, 3) NULL,
	[SALE_FLG] [varchar](1) NOT NULL,
	[SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[OL_AMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CUST_HIER]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CUST_HIER](
	[LST_LVL_CUST_NBR] [varchar](10) NULL,
	[LVL5_CUST_NBR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[LST_PRC_SRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[LST_PRC_SRC](
	[CUST] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [varchar](7) NULL,
	[CUST_GRP] [varchar](2) NULL,
	[SALES_ORG] [varchar](4) NULL,
	[LST_PRC] [decimal](17, 2) NULL,
	[CURR] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MAT_STD_PRICE_LKUP]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MAT_STD_PRICE_LKUP](
	[MATERIAL] [varchar](18) NULL,
	[CAL_YR] [decimal](4, 0) NULL,
	[STD_PRC] [decimal](17, 8) NULL,
	[CURR] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PLN_TO_ITM_ACT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PLN_TO_ITM_ACT](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[ACTL_USD] [decimal](17, 2) NULL,
	[ACTL_CS] [decimal](17, 3) NULL,
	[ACTL_EA] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
	[ACTL_LBS] [decimal](17, 3) NULL,
	[ACTL_KGS] [decimal](17, 3) NULL,
	[RETL_SALES_USD] [decimal](17, 2) NULL,
	[ECC_ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[DM_ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[CURR] [varchar](5) NULL,
	[SPCL_PROMTN_ALLWNC] [decimal](17, 3) NULL,
	[SALE_FLG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PROMTN_MSTR]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PROMTN_MSTR](
	[PROMTN_ID] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PROMTN_MSTR_LKUP]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PROMTN_MSTR_LKUP](
	[PROMTN_ID] [varchar](24) NULL,
	[PROMTN_DESC] [varchar](40) NULL,
	[ACTVTY_TYP] [varchar](2) NULL,
	[ACTVTY_DESC] [varchar](60) NULL,
	[SHIPNG_STRT_DT] [varchar](8) NULL,
	[SHIPNG_END_DT] [varchar](8) NULL,
	[PROMTN_STATUS] [varchar](2) NULL,
	[PROMTN_STATUS_DESC] [varchar](30) NULL,
	[SCAN_APPL_CNTR_ID] [varchar](60) NULL,
	[EMPL_RESP] [varchar](10) NULL,
	[PROMTN_MOD_USR] [varchar](12) NULL,
	[PROMTN_MOD_DT] [date] NULL,
	[PROMTN_CRE_USR] [varchar](12) NULL,
	[PROMTN_CRE_DT] [date] NULL,
	[CMP_TYP] [varchar](4) NULL,
	[CMPGN_TYP_DESC] [varchar](40) NULL,
	[ACTL_STRT_DT] [varchar](8) NULL,
	[ACTL_END_DT] [varchar](8) NULL,
	[TRADE_PROMTN_AGRMNT] [int] NULL,
	[PLN_STRT_DT] [varchar](8) NULL,
	[PLN_END_DT] [varchar](8) NULL,
	[KEY_EVNT] [varchar](3) NULL,
	[KEY_EVNT_DESC] [int] NULL,
	[SALES_ORG] [varchar](14) NULL,
	[TACT] [varchar](4) NULL,
	[CURR_KEY] [varchar](5) NULL,
	[DISTR_CHNL] [varchar](2) NULL,
	[DIV] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZM_TPM60]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZM_TPM60](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[PROMTNS] [varchar](24) NULL,
	[CURR] [varchar](5) NULL,
	[TPM_DISP] [decimal](17, 3) NULL,
	[TPM_F_D] [decimal](17, 3) NULL,
	[TPM_FEATUR] [decimal](17, 3) NULL,
	[TPM_PLN_INCR_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_SHIPMNT_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[TPM_PLN_PROMTN_DISC_USD] [decimal](17, 2) NULL,
	[TPM_PLN_PROMTN_USD_FULL_PRC] [decimal](17, 2) NULL,
	[TPM_PLN_RETLR_PROMTN_SALES] [decimal](17, 2) NULL,
	[TPM_PLN_RETLR_SALES_USD] [decimal](17, 2) NULL,
	[TPM_PLN_TPQ_USD] [decimal](17, 2) NULL,
	[TPM_PLN_TPQ_EA] [decimal](17, 3) NULL,
	[TPM_PLN_TPQ_KGS] [decimal](17, 3) NULL,
	[TPM_PLN_TPQ_LBS] [decimal](17, 3) NULL,
	[TPM_PLN_PROMTN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_INCR_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_INCR_EA] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_KGS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_LBS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_USD] [decimal](17, 2) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_EA] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_INCR_SHIP_LBS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_EA] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_KGS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_CS] [decimal](17, 3) NULL,
	[TPM_TOTL_PLN_SHIPMNT_LBS] [decimal](17, 3) NULL,
	[TPM_PLN_INCR_VOL] [decimal](17, 3) NULL,
	[TPM_PLN_TPQ] [decimal](17, 3) NULL,
	[TPM_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_CORRCTV_LUMP_SUM] [decimal](17, 2) NULL,
	[TPM_CSM_TRDE] [decimal](17, 2) NULL,
	[TPM_EDLP_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_EDLP_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_EDLP_SPND] [decimal](17, 2) NULL,
	[TPM_EDLP_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_EDLP_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_PLN_SHIP_USD] [decimal](17, 2) NULL,
	[TPM_PLN_SHIP_EA] [decimal](17, 3) NULL,
	[TPM_PLN_SHIP_KGS] [decimal](17, 3) NULL,
	[TPM_PLN_EST_SHIP_VOL] [decimal](17, 3) NULL,
	[TPM_PLN_SHIP_LBS] [decimal](17, 3) NULL,
	[TPM_PAR_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_PAR_OI_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_FIX_LUMP_SUM] [decimal](17, 2) NULL,
	[TPM_LQDTN_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_LQDTN_OI_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_LQDTN_FIX] [decimal](17, 2) NULL,
	[TPM_MIL_FIX] [decimal](17, 2) NULL,
	[TPM_NEW_ITM_FIX] [decimal](17, 2) NULL,
	[TPM_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_SCNR_APPL_FIX] [decimal](17, 2) NULL,
	[TPM_SCANAPPS_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_SCANAPPS_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_PROMTN_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[TPM_PROMTN_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[TPM_SUGSTD_TPQ_USD] [decimal](17, 2) NULL,
	[TPM_SUGSTD_TPQ_EA] [decimal](17, 3) NULL,
	[TPM_SUGSTD_TPQ_KGS] [decimal](17, 3) NULL,
	[TPM_SUGSTD_TPQ] [decimal](17, 3) NULL,
	[TPM_SUGSTD_TPQ_LBS] [decimal](17, 3) NULL,
	[TPM_SUGSTD_INCR_USD] [decimal](17, 2) NULL,
	[TPM_SUGSTD_INCR_EA] [decimal](17, 3) NULL,
	[TPM_SUGSTD_INCR_KGS] [decimal](17, 3) NULL,
	[TPM_SUGSTD_INCR_VOL] [decimal](17, 3) NULL,
	[TPM_TOTL_TRDE_SPND] [decimal](17, 2) NULL,
	[TPM_WHSE_WDRL_TOTL_SPND] [decimal](17, 2) NULL,
	[TPM_CURR] [varchar](5) NULL,
	[TPM_SALES_UNIT] [varchar](3) NULL,
	[TPM_BW_SRC] [varchar](40) NULL,
	[ATPM_DISP] [decimal](17, 3) NULL,
	[ATPM_F_D] [decimal](17, 3) NULL,
	[ATPM_FEATUR] [decimal](17, 3) NULL,
	[ATPM_PLN_INCR_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_COST_OF_PROD] [decimal](17, 2) NULL,
	[ATPM_PLN_PROMTN_DISC_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_PROMTN_USD_FULL_PRC] [decimal](17, 2) NULL,
	[ATPM_PLN_RETLR_PROMTN_SALES] [decimal](17, 2) NULL,
	[ATPM_PLN_RETLR_SALES_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_TPQ_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_TPQ_EA] [decimal](17, 3) NULL,
	[ATPM_PLN_TPQ_KGS] [decimal](17, 3) NULL,
	[ATPM_PLN_TPQ_LBS] [decimal](17, 3) NULL,
	[ATPM_PLN_PROMTN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_INCR_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_INCR_EA] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_KGS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_LBS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_USD] [decimal](17, 2) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_EA] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_INCR_SHIP_LBS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_EA] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_KGS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_CS] [decimal](17, 3) NULL,
	[ATPM_TOTL_PLN_SHIPMNT_LBS] [decimal](17, 3) NULL,
	[ATPM_PLN_INCR_VOL] [decimal](17, 3) NULL,
	[ATPM_PLN_TPQ] [decimal](17, 3) NULL,
	[ATPM_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_CORRCTV_LUMP_SUM] [decimal](17, 2) NULL,
	[ATPM_CSM_TRDE] [decimal](17, 2) NULL,
	[ATPM_EDLP_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_EDLP_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_EDLP_SPND] [decimal](17, 2) NULL,
	[ATPM_EDLP_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_EDLP_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PLN_SHIP_USD] [decimal](17, 2) NULL,
	[ATPM_PLN_SHIP_EA] [decimal](17, 3) NULL,
	[ATPM_PLN_SHIP_KGS] [decimal](17, 3) NULL,
	[ATPM_PLN_EST_SHIP_VOL] [decimal](17, 3) NULL,
	[ATPM_PLN_SHIP_LBS] [decimal](17, 3) NULL,
	[ATPM_PAR_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PAR_OI_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_FIX_LUMP_SUM] [decimal](17, 2) NULL,
	[ATPM_LQDTN_OI_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_LQDTN_OI_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_LQDTN_FIX] [decimal](17, 2) NULL,
	[ATPM_MIL_FIX] [decimal](17, 2) NULL,
	[ATPM_NEW_ITM_FIX] [decimal](17, 2) NULL,
	[ATPM_OFF_INVC_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_OFF_INVC_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_SCNR_APPL_FIX] [decimal](17, 2) NULL,
	[ATPM_SCANAPPS_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_SCANAPPS_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PROMTN_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[ATPM_PROMTN_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[ATPM_SUGSTD_TPQ_USD] [decimal](17, 2) NULL,
	[ATPM_SUGSTD_TPQ_EA] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_TPQ_KGS] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_TPQ] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_TPQ_LBS] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_INCR_USD] [decimal](17, 2) NULL,
	[ATPM_SUGSTD_INCR_EA] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_INCR_KGS] [decimal](17, 3) NULL,
	[ATPM_SUGSTD_INCR_VOL] [decimal](17, 3) NULL,
	[ATPM_TOTL_TRDE_SPND] [decimal](17, 2) NULL,
	[ATPM_WHSE_WDRL_TOTL_SPND] [decimal](17, 2) NULL,
	[ATPM_CURR] [varchar](5) NULL,
	[ATPM_SALES_UNIT] [varchar](3) NULL,
	[ATPM_VARNC_PCT] [decimal](17, 3) NULL,
	[ATPM_BW_SRC] [varchar](20) NULL,
	[SALES_PROMTN_ACTL_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[SALES_PROMTN_GROS_SALES_USD] [decimal](17, 2) NULL,
	[SALES_PROMTN_SPCL_PROMTN_ALLWNC] [decimal](17, 2) NULL,
	[SALES_PROMTN_GROS_CS] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_EA] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_KGS] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_LBS] [decimal](17, 3) NULL,
	[SALES_PROMTN_GROS_PKGS] [decimal](17, 3) NULL,
	[SALES_PROMTN_CURR] [varchar](5) NULL,
	[SALES_PROMTN_PROMTN_CS_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_PROMTN_EA_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_TRUE_GROS_LBS_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_GROS_LBS_UNIT] [decimal](10, 3) NULL,
	[SALES_PROMTN_UN_GROS_PKGS_UOM] [decimal](10, 3) NULL,
	[SALES_PROMTN_BW_SRC] [varchar](40) NULL,
	[SVP_CANBLZTN_QTY] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_EA] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_KGS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_LBS] [decimal](17, 3) NULL,
	[SVP_FWD_BUY] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_EA] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_KGS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_LBS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_CANBLZTN_SHIP_USD] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_FWD_BUY_SHIP_USD] [decimal](17, 2) NULL,
	[SVP_PLN_BASE_EA] [decimal](17, 3) NULL,
	[SVP_PLN_BASE_KGS] [decimal](17, 3) NULL,
	[SVP_PLN_BASE_VOL] [decimal](17, 3) NULL,
	[SVP_PLN_BASE_LBS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_USD] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_COST_OF_PROD_USD] [decimal](17, 2) NULL,
	[SVP_PLN_RETLR_SALES_USD] [decimal](17, 2) NULL,
	[SVP_PLN_SHLF_PRC] [decimal](17, 2) NULL,
	[SVP_SUGSTD_BASE_USD] [decimal](17, 2) NULL,
	[SVP_SUGSTD_BASE_EA] [decimal](17, 3) NULL,
	[SVP_SUGSTD_BASE_KGS] [decimal](17, 3) NULL,
	[SVP_SUGSTD_BASE_VOL_SAS] [decimal](17, 3) NULL,
	[SVP_SUGSTD_BASE_LBS] [decimal](17, 3) NULL,
	[SVP_SUGSTD_SHLF_PRC_SAS] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_BASE_USD] [decimal](17, 2) NULL,
	[SVP_TOTL_PLN_SHIPMNT_EA] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_KGS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_CS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_SHIPMNT_LBS] [decimal](17, 3) NULL,
	[SVP_TOTL_PLN_BASE_VOL] [decimal](17, 3) NULL,
	[SVP_SALES_UNIT] [varchar](3) NULL,
	[SVP_CURR] [varchar](5) NULL,
	[SVP_BW_SRC] [varchar](40) NULL,
	[LE_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[LE_CSM_ADVER] [decimal](17, 2) NULL,
	[LE_CSM_COGS] [decimal](17, 2) NULL,
	[LE_CSM_CPN] [decimal](17, 2) NULL,
	[LE_CORRCTN_LUMP_SUM] [decimal](17, 2) NULL,
	[LE_CSM_VAP] [decimal](17, 2) NULL,
	[LE_EDLP_BILLBACK_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_EDLP_BILLBACK_RT_TOTL] [decimal](17, 2) NULL,
	[LE_FIX_LUMP_SUM] [decimal](17, 2) NULL,
	[LE_LQDTN_FIX] [decimal](17, 2) NULL,
	[LE_MISS_OI] [decimal](17, 2) NULL,
	[LE_MIL_FIX] [decimal](17, 2) NULL,
	[LE_NEW_ITM_FIX] [decimal](17, 2) NULL,
	[LE_SCAN_APPL_FIX] [decimal](17, 2) NULL,
	[LE_SCANAPPS_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_SCANAPPS_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[LE_PROMTN_SCAN_PCT_TOTL] [decimal](17, 2) NULL,
	[LE_PROMTN_SCAN_RT_TOTL] [decimal](17, 2) NULL,
	[LE_WHSE_WDRL_TOTL] [decimal](17, 2) NULL,
	[LE_CURR] [varchar](5) NULL,
	[LE_BW_SRC] [varchar](40) NULL,
	[PROMTN_STATUS] [varchar](2) NULL,
	[CMPGN_TYP] [varchar](4) NULL,
	[HIER_D_LVL5] [varchar](10) NULL,
	[ATPM_SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[ATPM_OL_AMT] [decimal](17, 2) NULL,
	[LE_SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[LE_OL_AMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZM_TPM60_CKF]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZM_TPM60_CKF](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CURR] [varchar](5) NULL,
	[PLN_BASE_LBS] [decimal](38, 3) NULL,
	[PLN_INCR_LBS] [decimal](38, 3) NULL,
	[PLN_BASE_UNITS] [decimal](38, 3) NULL,
	[PLN_INCR_UNITS] [decimal](38, 3) NULL,
	[PLN_BASE_RTL_USD] [decimal](38, 2) NULL,
	[PLN_INCR_RTL_USD] [decimal](38, 2) NULL,
	[PLN_BASE_USD] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_LBS] [decimal](38, 3) NULL,
	[PLN_SHIP_EA] [decimal](38, 3) NULL,
	[PLN_TOTL_FIX_KMF_SPND] [decimal](38, 2) NULL,
	[PLN_VAR_KMF_SPND] [decimal](38, 2) NULL,
	[ACTL_OI_SPND_NOT_RSTR] [decimal](38, 2) NULL,
	[LATST_ESTMT_TOTL_FIX_KMF] [decimal](38, 2) NULL,
	[PLN_TOTL_OFF_INVC_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_MISS_OI] [decimal](38, 2) NULL,
	[LATST_ESTMT_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_EDLP_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCANAPPS_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCAN_USD] [decimal](38, 2) NULL,
	[LE_WW_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_SHIPMNT_CS] [decimal](38, 3) NULL,
	[TOTL_PLN_SHIPMNT_KGS] [decimal](38, 3) NULL,
	[PLN_BASE_CS] [decimal](38, 3) NULL,
	[PLN_INCR_CS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_CS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_UNITS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_LBS] [decimal](38, 3) NULL,
	[PLN_INCR_SHIP_KG] [decimal](38, 3) NULL,
	[SUGSTD_BASE_VOL_SAS] [decimal](38, 3) NULL,
	[SUGSTD_SHLF_PRC_SAS] [decimal](38, 2) NULL,
	[SALE_FLG] [varchar](1) NOT NULL,
	[SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[OL_AMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZM_TPM60_CKF_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZM_TPM60_CKF_CAD](
	[CUST] [varchar](10) NULL,
	[MATRL] [varchar](18) NULL,
	[MIXD_PLT_MATRL] [varchar](18) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[MIXD_PLT_FLG] [varchar](1) NULL,
	[CURR] [varchar](5) NULL,
	[PROMTNS] [varchar](24) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_LBS] [decimal](38, 3) NULL,
	[PLN_SHIP_EA] [decimal](38, 3) NULL,
	[PLN_TOTL_FIX_KMF_SPND] [decimal](38, 2) NULL,
	[PLN_VAR_KMF_SPND] [decimal](38, 2) NULL,
	[LATST_ESTMT_TOTL_FIX_KMF] [decimal](38, 2) NULL,
	[PLN_TOTL_OFF_INVC_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_MISS_OI] [decimal](38, 2) NULL,
	[LATST_ESTMT_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_EDLP_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCANAPPS_BILLBACK_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_SCAN_USD] [decimal](38, 2) NULL,
	[LE_WW_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_SHIPMNT_CS] [decimal](38, 3) NULL,
	[TOTL_PLN_SHIPMNT_KGS] [decimal](38, 3) NULL,
	[SALE_FLG] [varchar](1) NOT NULL,
	[SCAN_APPS_OL_RT_AMT] [decimal](17, 2) NULL,
	[OL_AMT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UVW_RCNT_STD_PRC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_RCNT_STD_PRC]
AS 
SELECT [MOD_MATRL] AS MATRL
	  ,MAX([CAL_YR]) AS MAX_YR
	  ,CURR
FROM [KNA_COMRCL].[dbo].[MATRL_STD_PRC]
GROUP BY [MOD_MATRL], CURR
GO
/****** Object:  View [dbo].[UVW_STD_PRC_MIX]    Script Date: 11/20/2018 5:42:39 PM ******/
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
/****** Object:  View [dbo].[UVW_YR_AGO_REDK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_YR_AGO_REDK]
AS
SELECT pln.CUST, 
pln.MIXD_PLT_MATRL, 
pln.CAL_WK, 
SUM(pln.LE_SHIP_USD / pln.LE_SHIP_UNITS)AS [YR_AGO_GSV_PER_UNIT], 
pln.LE_SHIP_USD as LATST_ESTMT_SHIP_USD, 
pln.LE_SHIP_UNITS as LATST_ESTMT_SHIP_UNITS, 
pln.CAL_WK - (YEAR(GETDATE()) - 1)*100 AS FISC_WK
FROM dbo.PLN_TO_ITM pln
WHERE floor(pln.CAL_WK/100) = YEAR(GETDATE()) - 1 AND (pln.LE_SHIP_UNITS > 0) 
GROUP BY pln.CUST, pln.MIXD_PLT_MATRL, pln.CAL_WK, pln.LE_SHIP_USD, pln.LE_SHIP_UNITS
GO
/****** Object:  View [dbo].[UVW_PRC_IMPC]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_PRC_IMPC]
AS
SELECT pln.CUST, pln.MIXD_PLT_MATRL, 
				pln.CAL_WK, pln.LE_SHIP_USD as LATST_ESTMT_SHIP_USD,
				 pln.LE_SHIP_UNITS as LATST_ESTMT_SHIP_UNITS,
				  SUM(pln.LE_SHIP_USD) 
                         / SUM(pln.LE_SHIP_UNITS) AS [GSV_PER_UNIT],
						  redk.[YR_AGO_GSV_PER_UNIT] as YR_AGO_GSV_PER_UNIT, 
						  SUM(pln.LE_SHIP_USD) / SUM(pln.LE_SHIP_UNITS)
                         - redk.[YR_AGO_GSV_PER_UNIT] AS [GSV_PER_UNIT_CHG], 
						 (SUM(pln.LE_SHIP_USD) / SUM(pln.LE_SHIP_UNITS) - redk.[YR_AGO_GSV_PER_UNIT]) 
                         * pln.LE_SHIP_UNITS AS [GSV_PRC_CHG], 
						 'P' + CAST(fisc.FISC_PD as varchar) +' ' + CAST(fisc.FISC_YR as varchar) AS PD
FROM dbo.PLN_TO_ITM pln
INNER JOIN   KG_VIEWS.dbo.UVW_FISC_CAL fisc ON fisc.FISC_YR * 100 + fisc.FISC_WK = pln.CAL_WK 
INNER JOIN  dbo.UVW_YR_AGO_REDK redk ON (redk.CUST = pln.CUST AND redk.MIXD_PLT_MATRL = pln.MIXD_PLT_MATRL AND 
                         redk.CAL_WK = fisc.FISC_YR * 100 + fisc.FISC_PD )
WHERE fisc.FISC_YR = YEAR(GETDATE()) AND (pln.LE_SHIP_USD > 0) AND (pln.LE_SHIP_UNITS > 0) AND (redk.[YR_AGO_GSV_PER_UNIT] > 0)
GROUP BY pln.CUST, pln.MIXD_PLT_MATRL, pln.CAL_WK, pln.LE_SHIP_USD, pln.LE_SHIP_UNITS, fisc.FISC_PD, fisc.FISC_YR, redk.[YR_AGO_GSV_PER_UNIT]
GO
/****** Object:  View [dbo].[UVW_INSIGHTS_PT_TYP_PRFMNCE]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_INSIGHTS_PT_TYP_PRFMNCE]
AS 
SELECT norm.PLANTO AS [PLN_TO_NBR], 
       norm.PT_NAME AS [PLN_TO_NM], 
       norm.LEVEL_A AS [LVL_A], 
	   norm.LEVEL_B AS [LVL_B], 
       norm.LEVEL_C AS [LVL_C], 
	   norm.LEVEL_D AS [LVL_D], 
       norm.LEVEL_E AS [LVL_E], 
	   norm.TIER_NAME AS [TIER_NM], 
       norm.ALL_IN_FLAG AS ALL_IN_FLG, 
	   zcust.[/BIC/ZBPC_BUUN] AS [BU], 
	   catg.CHRSTC_VAL AS CATG, 
       can.[Ca Category] as [CAN_CATG], 
	   sub.[CHRSTC_VAL] AS [SUB_CATG], 
	   prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE] as [PROD_HIER_TYP],
       prod_hier.[PROD_HIER_TYPE_DESC] as [PROD_HIER_TYP_DESC],
       fisc_cal.FISC_YR, 
	   fisc_cal.FISC_QTR AS QTR,
	   'P' + CAST(fisc_cal.FISC_PD as varchar) + ' ' + CAST(fisc_cal.FISC_YR as varchar) as [PD_YR], 
	   fisc_cal.FISC_PD AS PD, 
       toSize.SIZE as SZ, 
	   SUM(pln.[LE_SHIP_USD]) AS [LATST_ESTMT_GSV], 
	   SUM(pln.[LE_COST_OF_PROD_USD]) AS [LATST_ESTMT_COST_OF_PROD_USD], 
       SUM(pln.[LE_KMF_USD]) AS [LATST_ESTMT_KMF_USD], 
	   SUM(pln.[LE_SHIP_LBS]) AS [LATST_ESTMT_SHIP_LBS], 
       SUM(pln.[LE_SHIP_UNITS]) AS [LATST_ESTMT_SHIP_UNITS], 
	   SUM(pln.[TOTL_PLN_KMF_USD]) AS [PLN_KMF], 
       SUM(pln.[LE_SHIP_USD] - pln.[LE_KMF_USD]) AS [LATST_ESTMT_NSV_PRXY_USD], 
       SUM(pln.[LE_SHIP_USD] - pln.[LE_KMF_USD] - pln.[LE_COST_OF_PROD_USD]) AS [LATST_ESTMT_SC_PRXY_USD], 
       SUM(pln.[LE_SHIP_USD] - pln.[LE_COST_OF_PROD_USD]) AS [LATST_ESTMT_SC_PRXY_USD_GSV],
       SUM(pln.[LE_CS] * std.[STD_PRC]) AS [LATST_ESTMT_COST_OF_PROD_USD_FXD]
FROM KNA_COMRCL.dbo.PLN_TO_ITM pln
INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = pln.[CAL_WK])
RIGHT OUTER JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (zcust.[/BIC/ZCUST_MAT] = pln.CUST AND zcust.[MATERIAL] = pln.MATRL )
INNER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N  norm ON ('0000'+ norm.PLANTO  = pln.CUST AND norm.BU = zcust.[/BIC/ZBPC_BUUN] )
INNER JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON (matrl.MATRL_NBR = pln.MIXD_PLT_MATRL)
INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN catg ON (pln.MIXD_PLT_MATRL = catg.MATRL_NBR and catg.CHRSTC_NM = 'ALT_CATEGORY')
INNER JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN sub ON (pln.MIXD_PLT_MATRL = sub.MATRL_NBR and sub.CHRSTC_NM = 'ALT_SUB_CATEGORY')
INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER prod_hier ON (prod_hier.PROD_HIER = matrl.[PROD_HIER])
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.TYPE_TOSIZE toSize ON (toSize.TYPE_ID = LEFT(prod_hier.PROD_HIER,14) )
LEFT OUTER JOIN KNA_COMRCL.dbo.UVW_STD_PRC_MIX std ON (std.MATRL = pln.[MIXD_PLT_MATRL] AND std.CURR = pln.CURR )
RIGHT OUTER JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON can.CATEGORY = catg.CHRSTC_VAL
WHERE (pln.CUST + pln.MATRL + CAST(pln.[CAL_WK] as varchar) <> '0000300231240000000010070569201606') AND (zcust.[COMP_CODE] IS NOT NULL) AND 
      (norm.LEVEL_A <> 'SPECIALTY') 
GROUP BY norm.PLANTO, 
		norm.LEVEL_B, 
		norm.PT_NAME, 
        norm.LEVEL_A, 
		norm.LEVEL_C, 
		norm.LEVEL_D, 
        norm.LEVEL_E, 
		zcust.[/BIC/ZBPC_BUUN], 
		catg.[CHRSTC_VAL], 
        sub.[CHRSTC_VAL], 
		fisc_cal.FISC_PD,
		 prod_hier.[PROD_HIER_BRAND],
       prod_hier.[PROD_HIER_BRAND_DESC],
       prod_hier.[PROD_HIER_TYPE],
       prod_hier.[PROD_HIER_TYPE_DESC],
		fisc_cal.FISC_YR, 
        norm.ALL_IN_FLAG, 
		fisc_cal.FISC_QTR, 
		toSize.SIZE, 
		norm.TIER_NAME, 
        can.[Ca Category]


GO
/****** Object:  View [dbo].[UVW_FEEDMSTR_SHAPE]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[UVW_FEEDMSTR_SHAPE]
AS
SELECT  UPPER(shape.CATEGORY) as CATG, 
shape.BUSINESS_UNIT as BU,
 shape.LEVEL_B as LVL_B, 
 CAST(shape.TRACK_DAY as date) as TRK_DY, 
 shape.[Pace Day] as PACE_DY,
 shape.[Days in Period] as DY_IN_PD,
 ISNULL(old.PTD_SHAPE_PCT, 0) as PTD_SHAPE_PCT,
 ISNULL(minus.CUR_SHAPE_PCT,0) as PREV_SHAPE_PCT,
 ISNULL(feed.[Open Order $],0) as OPN_ORDR_DOL,
 ISNULL(feed.[P Gross Sales $],0) as PD_GROS_SALES_DOL, 
 ISNULL(feed.[Q Gross Sales $],0) as QTR_GROS_SALES_DOL, 
 ISNULL(feed.[Y Gross Sales $],0) as YR_GROS_SALES_DOL, 
 ISNULL(feed.[P IBP PER],0) as PD_IBP, 
 ISNULL(feed.[Q IBP PER],0) as QTR_IBP, 
 ISNULL(feed.[Y IBP PER],0) as YR_IBP, 
 ISNULL(feed.[P BUDGET PER],0) as PD_BUD, 
 ISNULL(feed.[Q BUDGET PER],0) as QTR_BUD, 
 ISNULL(feed.[Y BUDGET PER],0) as YR_BUD, 
 ISNULL(feed.[P SE PER],0) as PD_STRATG_ESTMT, 
 ISNULL(feed.[Q SE PER],0) as QTR_STRATG_ESTMT, 
 ISNULL(feed.[Y SE PER],0) as YR_STRATG_ESTMT, 
 ISNULL(feed.[P YAG Gross Sales $],0) as PD_YR_AGO_GROS_SALES_DOL, 
 ISNULL(feed.[Q YAG Gross Sales $],0) as QTR_YR_AGO_GROS_SALES_DOL, 
 ISNULL(feed.[Y YAG Gross Sales $],0) as YR_YR_AGO_GROS_SALES_DOL, 
 ISNULL(feed.[Next Period Open Order $],0) as NXT_PD_OPN_ORDR_DOL, 
 ISNULL(feed.[Q BUDGET < PER],0) as QTR_BUD_LESS_THAN_PD, 
 ISNULL(feed.[Y BUDGET < PER],0) as YR_BUD_LESS_THAN_PD, 
 ISNULL(feed.[Q SE < PER],0) as QTR_STRATG_ESTMT_LESS_THAN_PD, 
 ISNULL(feed.[Y SE < PER],0) as YR_STRATG_ESTMT_LESS_THAN_PD, 
 ISNULL(feed.[Q YAG < PER],0) as QTR_YR_AGO_LESS_THAN_PD, 
 ISNULL(feed.[Y YAG < PER],0) as YR_YR_AGO_LESS_THAN_PD, 
 ISNULL(tmp.CURR_PD_IND, 0 ) as CURR_PTD_INDIR,
 ISNULL(old.CATG_SHAPE_PCT*tmp.CURR_PD_IND,0) as NEW_PTD_INDIR
FROM  KNA_EXTERNAL.USER_SALES.SHAPE AS shape 
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_FEEDMASTER AS feed ON UPPER(feed.Category) = UPPER(shape.CATEGORY) AND UPPER(feed.[Business Unit]) = UPPER(shape.BUSINESS_UNIT) AND 
                         feed.[Sales MGT] = shape.LEVEL_B AND shape.TRACK_DAY = feed.TRACK_DAY 
LEFT OUTER JOIN  (SELECT LEVEL_B, CATEGORY, BU , SUM([CURR PD IND$]) as [CURR_PD_IND]   
				FROM (SELECT n.LEVEL_B, i.Category as CATEGORY, i.BU, i.[CURR PD IND$]
                      FROM  KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N AS n 
					  INNER JOIN KNA_EXTERNAL.USER_SALES.KUSA_TRACK_INDIRECT_LOADER AS i ON RIGHT(n.PLANTO, 6) = i.PT and n.BU = 'BW HIERARCHY') tmp1
					  GROUP BY LEVEL_B, CATEGORY, BU/*, [Track Day]*/) AS tmp ON tmp.LEVEL_B = shape.LEVEL_B AND UPPER(tmp.BU) = UPPER(shape.BUSINESS_UNIT) AND UPPER(tmp.CATEGORY) 
                         = UPPER(shape.CATEGORY) 
left outer join (SELECT CATEGORY, BUSINESS_UNIT, LEVEL_B, sum(CUR_SHAPE_PCT) as PTD_SHAPE_PCT, sum(CATG_SHAPE_PCT) as CATG_SHAPE_PCT FROM KNA_EXTERNAL.USER_SALES.SHAPE WHERE CAST(GETDATE() AS date) >  CAST(TRACK_DAY AS DATE) --LEFT(CAST(TRACK_DAY as varchar),6) + '20' + RIGHT(CAST(TRACK_DAY as varchar),2)--TRACK_DAY 
				GROUP BY CATEGORY, BUSINESS_UNIT, LEVEL_B) old on old.CATEGORY = shape.CATEGORY and old.BUSINESS_UNIT = shape.BUSINESS_UNIT and old.LEVEL_B = shape.LEVEL_B
left outer join KNA_EXTERNAL.USER_SALES.SHAPE minus on minus.CATEGORY = shape.CATEGORY and minus.BUSINESS_UNIT = shape.BUSINESS_UNIT and minus.LEVEL_B = shape.LEVEL_B and (CASE WHEN DATEPART(WEEKDAY, GETDATE()) = 2
																																	THEN DATEADD(day,-3,CAST(GETDATE() AS date)) ELSE DATEADD(day,-1,CAST(GETDATE() AS date)) END)  = minus.TRACK_DAY 
WHERE        (shape.TRACK_DAY = CAST(GETDATE() AS date)) 

		




GO
/****** Object:  View [dbo].[UVW_LST_PRC_CHNG]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/******************************************************************************
		NAME:      [UVW_LST_PRC_CHNG]
		PURPOSE:   changes in list price over the weeks.
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/12/2018   USCMXJ11         Created.
		
		This view will return the pricing changes 

		******************************************************************************/

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[UVW_LST_PRC_CHNG]
AS 
SELECT  [MATRL]
      ,[CAL_WK]
      ,[SALES_ORG]
      ,[CHNL_CUST_GRP]
      ,[LST_PRC_PER_CASE]
      ,[CURR]
      ,[LST_PRC_PER_UNIT]
      ,[UNIT]
	  , ISNULL( 
	  
	  ( 
	  CASE WHEN substring(cast(LAG([CAL_WK])
						 OVER(Partition BY [MATRL]
										  ,[SALES_ORG]
										  ,[CHNL_CUST_GRP],[CURR],[UNIT],substring(cast([CAL_WK] as varchar(24)),5,2) 
							  ORDER BY substring(cast([CAL_WK] as varchar(24)),5,2) asc 
									  ,substring(cast([CAL_WK] as varchar(24)),1,4) ASC 
							)
						as varchar(24)),1,4) + 1 =  substring(cast([CAL_WK] as varchar(24)),1,4) 
			THEN [LST_PRC_PER_CASE]-LAG([LST_PRC_PER_CASE]) 
			OVER(Partition BY [MATRL]
							 ,[SALES_ORG]
							 ,[CHNL_CUST_GRP],[CURR],[UNIT],substring(cast([CAL_WK] as varchar(24)),5,2) 
			ORDER BY 
					substring(cast([CAL_WK] as varchar(24)),5,2) asc ,
					substring(cast([CAL_WK] as varchar(24)),1,4) ASC) END 
					
		) ,0)AS  'PRICING_CHANGES' 
	  FROM [KNA_COMRCL].[dbo].[LST_PRC] 




GO
/****** Object:  View [dbo].[UVW_PROMTN_CMPL_CHK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_PROMTN_CMPL_CHK]
AS
SELECT FISC_YR
      ,FISC_PD
      ,TRADE_PROMTN_ID
      ,TRADE_PROMTN_DESC
        ,PLN_TO_TERR
        ,PLN_STRT_DT
        ,INPROC_DT
        ,RLSE_DT
        ,CRE_DT
        ,LATE_ENTR_STATUS
        ,PLN_HRZN_STATUS
        ,RLSE_STATUS
        ,CTRY
        ,HIER_D_LVL4_NM
        ,PLN_TO_NBR
        ,PLN_TO_NM
        ,PROMTN_CNT
        ,CASE when PLN_HRZN_STATUS ='Compliant' THEN 1 ELSE 0 END AS PROMTN_PLN_HRZN_CMPLIANT_CNT
        ,CASE WHEN LATE_ENTR_STATUS ='Compliant' THEN 1 ELSE 0 END AS PROMTN_LATE_ENTR_CMPLIANT_CNT
      ,CASE when RLSE_STATUS ='Compliant' THEN 1 ELSE 0 END AS PROMTN_RLSE_CMPLIANT_CNT
FROM (SELECT CAST(CASE WHEN CAL.FISC_PD >= 10 THEN FISC_YR+1 ELSE FISC_YR END AS VARCHAR(4)) AS FISC_YR
            ,CAST(FORMAT(CASE WHEN CAL.FISC_PD >= 10 THEN  (FISC_PD-12)+3 ELSE FISC_PD+3 END,'000') AS VARCHAR(3)) AS FISC_PD
                  ,PRJ.EXTERNAL_ID AS TRADE_PROMTN_ID
            ,TXT.TEXT1 AS TRADE_PROMTN_DESC
                  ,CAST(CAST(CHD.LST_LVL_CUST_NBR AS INTEGER) AS VARCHAR(10)) + '/' + ATTR.ZZECC_SORG_CR + '0101' AS PLN_TO_TERR
            ,CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),1,8) AS DATE) AS PLN_STRT_DT         
            ,JCDS1.INPROC_DT
            ,JCDS1.RLSE_DT
            ,COALESCE(JCDS1.CRE_DT,'1900-01-01') AS CRE_DT
            ,CASE WHEN DATEDIFF(DD ,COALESCE(JCDS1.CRE_DT,'1900-01-01') ,CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),1,8) AS DATE)) > 0 THEN 'Compliant' ELSE 'Non-Compliant' END AS LATE_ENTR_STATUS
            ,CASE WHEN DATEDIFF(DD ,COALESCE(JCDS1.CRE_DT,'1900-01-01') ,CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),1,8) AS DATE)) >= 120 THEN 'Compliant' ELSE 'Non-Compliant' END AS PLN_HRZN_STATUS
            ,CASE WHEN DATEDIFF(DD ,JCDS1.RLSE_DT ,CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),1,8) AS DATE)) >= 28 THEN 'Compliant' ELSE 'Non-Compliant' END AS RLSE_STATUS
            ,CHD.LVL2_CUST_NM AS CTRY
            ,CHD.LVL4_CUST_NM AS HIER_D_LVL4_NM
            ,CHD.LST_LVL_CUST_NBR AS PLN_TO_NBR
            ,CASE WHEN CHD.LST_LVL_NBR=1 THEN CHD.LVL1_CUST_NM
             WHEN CHD.LST_LVL_NBR=2 THEN CHD.LVL2_CUST_NM
                  WHEN CHD.LST_LVL_NBR=3 THEN CHD.LVL3_CUST_NM
                  WHEN CHD.LST_LVL_NBR=4 THEN CHD.LVL4_CUST_NM
                  WHEN CHD.LST_LVL_NBR=5 THEN CHD.LVL5_CUST_NM
                  WHEN CHD.LST_LVL_NBR=6 THEN CHD.LVL6_CUST_NM
                  WHEN CHD.LST_LVL_NBR=7 THEN CHD.LVL7_CUST_NM
                  WHEN CHD.LST_LVL_NBR=8 THEN CHD.LVL8_CUST_NM
                  WHEN CHD.LST_LVL_NBR=9 THEN CHD.LVL9_CUST_NM
                  WHEN CHD.LST_LVL_NBR=10 THEN CHD.LVL10_CUST_NM
                  WHEN CHD.LST_LVL_NBR=11 THEN CHD.LVL11_CUST_NM
                  WHEN CHD.LST_LVL_NBR=12 THEN CHD.LVL12_CUST_NM
                  WHEN CHD.LST_LVL_NBR=13 THEN CHD.LVL13_CUST_NM
                  WHEN CHD.LST_LVL_NBR=14 THEN CHD.LVL14_CUST_NM
                  WHEN CHD.LST_LVL_NBR=15 THEN CHD.LVL15_CUST_NM
                  WHEN CHD.LST_LVL_NBR=16 THEN CHD.LVL16_CUST_NM
                  WHEN CHD.LST_LVL_NBR=17 THEN CHD.LVL17_CUST_NM
                  WHEN CHD.LST_LVL_NBR=18 THEN CHD.LVL18_CUST_NM
                  WHEN CHD.LST_LVL_NBR=19 THEN CHD.LVL19_CUST_NM
                  WHEN CHD.LST_LVL_NBR=20 THEN CHD.LVL20_CUST_NM END AS PLN_TO_NM
         ,1 AS PROMTN_CNT
     FROM
         KNA_CRM..CGPL_PROJECT PRJ
         INNER JOIN KNA_CRM..CGPL_TEXT TXT
         ON PRJ.GUID = TXT.GUID
            AND PRJ.PLANSTART <> 0
    
       INNER JOIN KG_VIEWS..UVW_FISC_CAL CAL
         ON CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),0,9) AS DATE) BETWEEN CAL.FISC_WK_STRT_DT
              AND CAL.FISC_WK_END_DT
         
         INNER JOIN KNA_CRM..CRM_MKTPL_ATTR ATTR 
         ON PRJ.GUID = ATTR.GUID
            AND PRJ.CLIENT = ATTR.CLIENT
       
             INNER JOIN KNA_CRM..CRM_JSTO JSTO
             ON PRJ.GUID = JSTO.OBJNR
            
            INNER JOIN KNA_CRM..TJ30T T
       ON T.STSMA = JSTO.STSMA
          AND T.SPRAS = 'E'

       INNER JOIN (SELECT OBJNR, STAT, UDATE
                                 ,RANK() OVER (PARTITION BY OBJNR ORDER BY OBJNR, UDATE DESC, UTIME DESC) RNK
                     FROM KNA_CRM..CRM_JCDS
                         WHERE INACT <> 'X'
                    ) JCDS
         ON JCDS.OBJNR = JSTO.OBJNR
            AND JCDS.STAT = T.ESTAT
            AND JCDS.RNK = 1

         LEFT JOIN (SELECT OBJNR
                          ,MIN(CASE WHEN STAT = 'E0004' THEN UDATE END) AS INPROC_DT
                          ,MIN(CASE WHEN STAT = 'E0003' THEN UDATE END) AS RLSE_DT
                          ,MIN(UDATE) AS CRE_DT
                     FROM KNA_CRM..CRM_JCDS JCDS
                         WHERE CHGNR = 1
                              AND INACT <> 'X'
                         AND STAT IN ('E0004', 'E0003')
                     GROUP BY OBJNR
                     ) JCDS1
         ON JCDS1.OBJNR = PRJ.GUID
     
           LEFT OUTER JOIN KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL CHD  
          ON CHD.HIER_TYP='D' 
               AND CHD.LST_LVL_CUST_NBR = ATTR.ZZCUSTOMER_NO
            AND CHD.HIER_TM_PD='CURRENT'

WHERE CAST(SUBSTRING(CAST(PRJ.PLANSTART AS VARCHAR(20)),0,9) AS DATE) >= '2017-01-01'
AND ATTR.CAMP_TYPE NOT IN ('Z160','Z260','Z610')
AND JCDS.STAT NOT IN ('E0001', 'E0002')

) A
WHERE 
CAST((FISC_YR+FISC_PD) AS  INTEGER) < (SELECT CAST(CAST(FISC_YR AS VARCHAR(4)) + CAST(FORMAT(FISC_PD,'000') AS VARCHAR(3)) AS  INTEGER) FROM KG_VIEWS..UVW_FISC_CAL WHERE CAST(GETDATE() AS DATE) BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT);

GO
/****** Object:  View [dbo].[UVW_PROMTN_CNTR_CHK]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_PROMTN_CNTR_CHK]
AS

SELECT FISC_YR 
      ,FISC_PD
      ,TRADE_PROMTN_ID
      ,TRADE_PROMTN_DESC
      ,PROMTN_TYP
      ,PLN_TO_TERR
      ,PLN_ACCT
      ,PLN_STRT_DT
      ,PLN_END_DT
      ,STATUS
      ,EMPL_RESP
      ,KLG_MERCHNG_FUND_PCT
      ,GROS_SALE
      ,GROS_SALE_CURR
      ,TRADE_SPND
      ,TRADE_SPND_CURR
      ,CNTR_ATTCH
      ,RSN_CODE
      ,1 as [PROMTN_CNT]
      ,PROMTN_CNTR_ATTCH_CNT
      ,CHD.LVL2_CUST_NM as CTRY
      ,CHD.LST_LVL_CUST_NBR as PLN_TO_NBR
      ,CHD.LVL4_CUST_NM as HIER_D_LVL4_NM
      ,CASE WHEN CHD.LST_LVL_NBR=1 THEN CHD.LVL1_CUST_NM
	    WHEN CHD.LST_LVL_NBR=2 THEN CHD.LVL2_CUST_NM
			WHEN CHD.LST_LVL_NBR=3 THEN CHD.LVL3_CUST_NM
			WHEN CHD.LST_LVL_NBR=4 THEN CHD.LVL4_CUST_NM
			WHEN CHD.LST_LVL_NBR=5 THEN CHD.LVL5_CUST_NM
			WHEN CHD.LST_LVL_NBR=6 THEN CHD.LVL6_CUST_NM
			WHEN CHD.LST_LVL_NBR=7 THEN CHD.LVL7_CUST_NM
			WHEN CHD.LST_LVL_NBR=8 THEN CHD.LVL8_CUST_NM
			WHEN CHD.LST_LVL_NBR=9 THEN CHD.LVL9_CUST_NM
			WHEN CHD.LST_LVL_NBR=10 THEN CHD.LVL10_CUST_NM
			WHEN CHD.LST_LVL_NBR=11 THEN CHD.LVL11_CUST_NM
			WHEN CHD.LST_LVL_NBR=12 THEN CHD.LVL12_CUST_NM
			WHEN CHD.LST_LVL_NBR=13 THEN CHD.LVL13_CUST_NM
			WHEN CHD.LST_LVL_NBR=14 THEN CHD.LVL14_CUST_NM
			WHEN CHD.LST_LVL_NBR=15 THEN CHD.LVL15_CUST_NM
			WHEN CHD.LST_LVL_NBR=16 THEN CHD.LVL16_CUST_NM
			WHEN CHD.LST_LVL_NBR=17 THEN CHD.LVL17_CUST_NM
			WHEN CHD.LST_LVL_NBR=18 THEN CHD.LVL18_CUST_NM
			WHEN CHD.LST_LVL_NBR=19 THEN CHD.LVL19_CUST_NM
			WHEN CHD.LST_LVL_NBR=20 THEN CHD.LVL20_CUST_NM end as PLN_TO_NM
  FROM KNA_COMRCL.dbo.PROMTN_CNTR_CHK_SNPSHT SNPSHT
  LEFT OUTER JOIN KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL CHD  
          ON CHD.HIER_TYP = 'D' 
	         AND CHD.LST_LVL_CUST_NBR = SNPSHT.PLN_TO_NBR
	    	 AND CHD.HIER_TM_PD='CURRENT'

	   UNION

  select FISC_YR 
      ,FISC_PD
      ,[TRADE PROMOTION ID] as TRADE_PROM_ID				--change to promo in 1+
      ,[TRADE PROMOTION DESCRIPTION] as TRADE_PROM_DESC		--change to promo in 1+
      ,[PROMOTION TYPE] as PROM_TYP							--change to promo in 1+
      ,[PLAN TO] as PLN_TO_TERR
      ,[PLANNING ACCOUNT] PLN_ACCT
      ,[PLANNED START DATE] as PLN_STRT_DT
      ,[PLANNED END DATE]  as PLN_END_DT
      ,[STATUS] as STATUS
      ,[EMPLOYEE RESPONSIBLE] as EMPL_RESP
      ,[KMF%] as KLG_MERCHNG_FUND_PCT
      ,[GROSS SALES] as GROS_SALE
      ,[GROSS SALE CURRENCY] as GROS_SALE_CURR
      ,[TRADE SPEND] as TRADE_SPND
      ,[TRADE SPEND CURRENCY] as TRADE_SPND_CURR
      ,[CONTRACT ATTACHED] as CNTR_ATTCH
      ,[REASON CODE] as RSN_CODE
      ,1 as [PROMTN_CNT]
      ,case WHEN [CONTRACT ATTACHED] is NULL then 0 else 1 end as PROMTN_CNTR_ATTCH_CNT
      ,chd.LVL2_CUST_NM as CTRY
      ,chd.LST_LVL_CUST_NBR as PLN_TO_NBR
      ,chd.LVL4_CUST_NM as HIER_D_LVL4_NM
      ,CASE WHEN chd.LST_LVL_NBR=1 THEN chd.LVL1_CUST_NM
	    WHEN chd.LST_LVL_NBR=2 THEN chd.LVL2_CUST_NM
			WHEN chd.LST_LVL_NBR=3 THEN chd.LVL3_CUST_NM
			WHEN chd.LST_LVL_NBR=4 THEN chd.LVL4_CUST_NM
			WHEN chd.LST_LVL_NBR=5 THEN chd.LVL5_CUST_NM
			WHEN chd.LST_LVL_NBR=6 THEN chd.LVL6_CUST_NM
			WHEN chd.LST_LVL_NBR=7 THEN chd.LVL7_CUST_NM
			WHEN chd.LST_LVL_NBR=8 THEN chd.LVL8_CUST_NM
			WHEN chd.LST_LVL_NBR=9 THEN chd.LVL9_CUST_NM
			WHEN chd.LST_LVL_NBR=10 THEN chd.LVL10_CUST_NM
			WHEN chd.LST_LVL_NBR=11 THEN chd.LVL11_CUST_NM
			WHEN chd.LST_LVL_NBR=12 THEN chd.LVL12_CUST_NM
			WHEN chd.LST_LVL_NBR=13 THEN chd.LVL13_CUST_NM
			WHEN chd.LST_LVL_NBR=14 THEN chd.LVL14_CUST_NM
			WHEN chd.LST_LVL_NBR=15 THEN chd.LVL15_CUST_NM
			WHEN chd.LST_LVL_NBR=16 THEN chd.LVL16_CUST_NM
			WHEN chd.LST_LVL_NBR=17 THEN chd.LVL17_CUST_NM
			WHEN chd.LST_LVL_NBR=18 THEN chd.LVL18_CUST_NM
			WHEN chd.LST_LVL_NBR=19 THEN chd.LVL19_CUST_NM
			WHEN chd.LST_LVL_NBR=20 THEN chd.LVL20_CUST_NM end as PLN_TO_NM
  FROM [KNA_EXTERNAL].USER_ODAG.[sls_contractflag] p
  left outer join KG_VIEWS.KG.UVW_FISC_CAL fc on p.[PLANNED START DATE] between fc.FISC_WK_STRT_DT and fc.FISC_WK_END_DT
  left outer join KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL chd on  
       chd.HIER_TYP='D' and chd.LST_LVL_CUST_NBR=RIGHT('0000000000'+ISNULL(substring(p.[PLAN TO], 1,charindex('/', p.[PLAN TO],1)-1),''),10) and chd.HIER_TM_PD='CURRENT'
GO
/****** Object:  View [dbo].[UVW_PROMTN_TYP_MT]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_PROMTN_TYP_MT]
AS
SELECT promo.[PROMTN_ID]
	,promo.[CAL_WK]
	,promo.[PLN_TO]  
    ,Sum(promo.[TPM_PLN_RETLR_PROMTN_SALES]) AS [TPM_PLN_RETLR_PROMTN_SALES]
	,Sum(promo.[TPM_PLN_TPQ_EA]) AS [TPM_PLN_TPQ_EA]
	,sum(promo.[GROS_SALES_USD]) AS [GROS_SALES_USD]
	,Sum(promo.[PLN_SHIP_USD]) AS [PLN_SHIP_USD] 
    ,Sum(promo.[PLN_INC_VOL_USD]) AS [PLN_INCR_VOL_USD]
	,Sum(promo.[PLN_PROMO_COST_OF_PROD_USD]) AS [PLN_PROMTN_COST_OF_PROD_USD] 
    ,Sum(promo.[LE_TOTL_NON_TRDE]) AS [LATST_ESTMT_TOTL_NON_TRDE]
	,Sum(promo.[LE_TOTL_FIX_KMF_USD]) AS [LATST_ESTMT_TOTL_FIX_KMF_USD]
    ,Sum(promo.[TOTL_PLN_PROMTN_USD]) AS [TOTL_PLN_PROMTN_USD]
	,Sum(promo.[RSRV_TOTL_KMF_USD]) AS [RSRV_TOTL_KMF_USD] 
    ,Sum(promo.[TOTL_PLN_PROMTN_UNITS]) AS [TOTL_PLN_PROMTN_UNITS]
	,sum(promo.[RSRV_CSM_TRDE_USD]) AS [RSRV_CSM_TRDE_USD] 
    ,Sum(promo.[TOTL_MODELED_PROMTN_USD]) AS [TOTL_MDLED_PROMTN_USD]
	,Sum(promo.[PLN_INCR_COST_OF_PROD_USD]) AS [PLN_INCR_COST_OF_PROD_USD] 
    ,Max(promo.[DISP]) AS [DISP]
	,max(promo.[FEATUR]) AS [FEATUR]
	,Max(promo.[F_D]) AS [F_D]
    ,Sum(promo.[SUGG_TPQ]) AS [SUGG_TPQ]
	,Sum(promo.[SUGG_INCR]) AS [SUGG_INCR] 
    ,Max(promo.[SVP_PLN_SHLF_PRC]) AS [SVP_PLN_SHLF_PRC]
	,Max(promo.[PLN_INCR_PCT]) AS [PLN_INCR_PCT]
    ,Sum(promo.[PLN_ACTVTY_GSV]) AS [PLN_ACTVTY_GSV]
	,Sum(promo.[EDLP_SPND]) AS [EDLP_SPND] 
    ,Sum(promo.[TPM_PLN_PROMTN_USD_FULL_PRC]) AS [TPM_PLN_PROMTN_USD_FULL_PRC]
	,sum(promo.[SVP_SUGSTD_BASE]) AS [SVP_SUGSTD_BASE]
	,sum(tpm60.[ATPM_PLN_TPQ_LBS]) AS [ATPM_PLN_TPQ_LBS]
	,sum(tpm60.[ATPM_PLN_TPQ_KGS]) AS [ATPM_PLN_TPQ_KGS]
	,sum(tpm60.[ATPM_TOTL_PLN_INCR_EA]) AS [ATPM_TOTL_PLN_INCR_EA] 
    ,sum(tpm60.[ATPM_PLN_TPQ_EA] - tpm60.[ATPM_TOTL_PLN_INCR_EA]) AS [PLN_PROMTN_BASE_UNITS]
    ,sum(IIF(tpm60.[ATPM_PLN_TPQ_EA] = 0, 0,(tpm60.[ATPM_TOTL_PLN_INCR_EA] / tpm60.[ATPM_PLN_TPQ_EA]) * promo.[EDLP_SPND])) AS [INCR_EDLP_SPND]
	,sum(tpm60.[ATPM_PLN_EST_SHIP_VOL]) AS [ATPM_PLN_EST_SHIP_VOL] 
    ,sum(tpm60.[ATPM_PLN_SHIP_EA]) AS [ATPM_PLN_SHIP_EA]
	,mstr.[ACTVTY_DESC] 
    ,mstr.[DESC] AS [DESC]
	,mstr.[ACTVTY_TYP]
	,mstr.[SHIP_DT_FR] 
    ,mstr.[SHIP_DT_TO]
	,mstr.[PROMTN_DESC]
	,mstr.[SCNR_APPS_ID] 
    ,mstr.[EMPL_RESP]
	,mstr.[CHG_BY]
	,mstr.[LAST_CHG_ON] 
    ,mstr.[PERS_NM]
	,mstr.[DT_CRE]
	,mstr.[CMPGN_TYP] 
    ,mstr.[CMPGN_DESC]
	,mstr.[PLN_DT_FR]
	,Cast(CONVERT(varchar, cast(mstr.[PLN_DT_FR] AS date), 112) AS Int) AS [PROMTN_ST_VAL]
	,mstr.[PLN_DT_TO] 
    ,mstr.[KEY_EVNT]
	,mstr.[CURR_KEY]
	,'P' + CAST(fisc_cal.[FISC_PD] as varchar) AS [PD]
	,fisc_cal.[FISC_PD] AS [PD_NBR] 
    ,'P' + CAST(fisc_cal.[FISC_PD] as varchar) + ' '+ CAST(fisc_cal.[FISC_YR] as varchar) AS [PD_YR]
	,'Q' + CAST(fisc_cal.[FISC_QTR] as varchar) AS [QTR]
	,fisc_cal.[FISC_QTR] AS [QTR_NBR]
	,'Q' + CAST(fisc_cal.[FISC_QTR] as varchar) +  ' ' + CAST([FISC_YR] as varchar) AS [QTR_YR] 
    ,fisc_cal.[FISC_YR] AS [YR]
--	, CONCAT(CASE WHEN DATALENGTH(RTRIM(LTRIM(KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_PD]))) = 1 THEN CONCAT('00', KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_PD]) 
--		WHEN DATALENGTH(RTRIM(LTRIM(KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_PD]))) = 2 THEN CONCAT('0', KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_PD]) END 
--	, '/' , KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_YR] ) AS [BW Period]
--	, CONCAT('WEEK ENDING ', Convert(varchar(10),CONVERT(date,KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_WK_END_DT],111),1) ) AS [Niel Week]
--	, KG_VIEWS.dbo.UVW_FISC_CAL.[Pay Week]
	,CLASFCTN1.[CHRSTC_VAL] AS ALTN_CATG
	,CLASFCTN2.[CHRSTC_VAL] AS ALTN_SUB_CATG
	,PD_HIER.PROD_HIER_BRAND AS PROD_H4
	,PD_HIER.PROD_HIER_BRAND_DESC AS PROD_HIER_TXT4
	,PD_HIER.PROD_HIER_TYPE AS PROD_H5
	,PD_HIER.PROD_HIER_TYPE_DESC AS PROD_HIER_TXT5
	,zcust.[/BIC/ZBPC_BUUN] as BU
	,norm.PLANTO as PLANTO
	,norm.PT_NAME as PLANTO_NM
    ,norm.LEVEL_A as LVL_A
	,norm.LEVEL_B as LVL_B
	,norm.LEVEL_C as LVL_C
    ,norm.LEVEL_D as LVL_D
	,norm.LEVEL_E as LVL_E
	,norm.ALL_IN_FLAG as ALL_IN_FLG
    ,norm.TIER_NAME as TIER_NM
	,norm.TIER as TIER
	,norm.AKV 
    ,can.[Ca Category] as CAN_CATG
	,tpole.TENT_POLE_DESC
--INTO KNA_COMRCL.dbo.PROMTN_TYP_MT
FROM KNA_COMRCL.dbo.PROMTN promo
LEFT JOIN KNA_COMRCL.dbo.PROMTN_MSTR mstr ON promo.[PROMTN_ID] = mstr.[PROMTN_ID] 
LEFT JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = promo.[CAL_WK])
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL matrl ON ( promo.[MIXD_PLT_MATRL] = matrl.MATRL_NBR) --MIXED_PAL_MATERIAL)
LEFT JOIN KNA_BW.dbo.PZCUST_MAT zcust ON (promo.[MIXD_PLT_MATRL] = MATERIAL AND promo.[PLN_TO] = zcust.[/BIC/ZCUST_MAT])
RIGHT JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N norm ON ('0000'+ norm.PLANTO =  promo.[PLN_TO]  AND norm.BU = zcust.[/BIC/ZBPC_BUUN])
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN CLASFCTN1 ON (CLASFCTN1.CHRSTC_NM = 'ALT_CATEGORY' AND matrl.MATRL_NBR = CLASFCTN1.MATRL_NBR)
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN CLASFCTN2 ON (CLASFCTN2.CHRSTC_NM = 'ALT_SUB_CATEGORY' AND matrl.MATRL_NBR = CLASFCTN2.MATRL_NBR)
LEFT JOIN KG_VIEWS.KNA.UVW_PROD_HIER PD_HIER ON (matrl.PROD_HIER = PD_HIER.PROD_HIER)					
INNER JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP can ON ( CLASFCTN1.[CHRSTC_VAL] = can.CATEGORY )
LEFT JOIN KNA_COMRCL.dbo.ZM_TPM60 tpm60 ON (promo.[PROMTN_ID] = tpm60.PROMTNS  AND  promo.[MIXD_PLT_MATRL] = tpm60.MATRL  AND promo.[CAL_WK] = tpm60.CAL_WK 
							AND promo.[PLN_TO] = tpm60.[CUST] )
LEFT JOIN KNA_EXTERNAL.USER_SALES.TENTPOLE_MAPPING tpole ON( mstr.KEY_EVNT = tpole.TENT_POLE_BW_DESC)
WHERE  (fisc_cal.FISC_YR IN (YEAR(GETDATE()), YEAR(GETDATE()) -1) ) AND mstr.PROMTN_DESC NOT IN ('Cancelled', 'Draft', 'Deleted')
GROUP BY promo.[PROMTN_ID]
			, promo.[CAL_WK] 
            , promo.[PLN_TO]
			, mstr.[ACTVTY_DESC]
			, mstr.[DESC] 
 			, mstr.[ACTVTY_TYP]
			, mstr.[SHIP_DT_FR] 
            , mstr.[SHIP_DT_TO]
			, mstr.[PROMTN_DESC]
			, mstr.[SCNR_APPS_ID] 
            , mstr.[EMPL_RESP]
			, mstr.[CHG_BY]
			, mstr.[LAST_CHG_ON] 
            , mstr.[PERS_NM]
			, mstr.[DT_CRE]
			, mstr.[CMPGN_TYP] 
            , mstr.[CMPGN_DESC]
			, mstr.[PLN_DT_FR]
			, mstr.[PLN_DT_TO] 
            , mstr.[KEY_EVNT]
			, mstr.[CURR_KEY]
			,fisc_cal.[FISC_PD]
			,fisc_cal.[FISC_YR]
			,fisc_cal.[FISC_QTR]
--			, CONCAT('WEEK ENDING ', Convert(varchar(10),CONVERT(date,KG_VIEWS.dbo.UVW_FISC_CAL.[FISC_WK_END_DT],111),1) )
--			, KG_VIEWS.dbo.UVW_FISC_CAL.[Pay Week]
			,CLASFCTN1.[CHRSTC_VAL]
			,CLASFCTN2.[CHRSTC_VAL]
			,PD_HIER.PROD_HIER_BRAND
			,PD_HIER.PROD_HIER_BRAND_DESC
			,PD_HIER.PROD_HIER_TYPE
			,PD_HIER.PROD_HIER_TYPE_DESC
			,zcust.[/BIC/ZBPC_BUUN]
			,norm.PT_NAME
			,norm.PLANTO
			,norm.LEVEL_A
			,norm.LEVEL_B 
            ,norm.LEVEL_C
			,norm.LEVEL_D
			,norm.LEVEL_E
            ,norm.ALL_IN_FLAG
			,can.[Ca Category]
			,norm.TIER_NAME
            ,norm.TIER
			,norm.AKV
			,tpole.TENT_POLE_DESC
GO
/****** Object:  View [dbo].[UVW_SCIM_WK_CORP]    Script Date: 11/20/2018 5:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_SCIM_WK_CORP]
AS 
SELECT  CONCAT(norm.CONS_CLASS, 
		zcust_mat.[/BIC/ZBPC_BUUN], 
		mat.[CHRSTC_VAL], 
        pln.CAL_WK) AS COMBO, 
		fisc_cal.FISC_YR, 
		zcust_mat.[/BIC/ZBPC_BUUN] as BU, 
        mat.[CHRSTC_VAL] AS [ALTN_CATG], 
		pln.CAL_WK as CAL_WK, 
		fisc_cal.FISC_PD,
        norm.CONS_CLASS, 
		fisc_cal.FISC_WK_END_DT as [WK_END_DT], 
		SUM(pln.[PLN_BASE_LBS]) AS [PLN_BASE_LBS], 
        SUM(pln.[PLN_INCR_LBS]) AS [PLN_INCR_LBS], 
		SUM(pln.[PLN_BASE_RTN_USD]) AS [PLN_BASE_RTN_USD], 
		SUM(pln.[PLN_INCR_RTN_USD]) AS [PLN_INCR_RTN_USD], 
		SUM(pln.[PLN_SHIP_USD]) AS [PLN_SHIP_USD], 
        SUM(pln.[PLN_SHIP_LBS]) AS [PLN_SHIP_LBS], 
		SUM(pln.[ACTL_SHIP_USD]) AS [ACTL_SHIP_USD], 
        SUM(pln.[ACTL_SHIP_LBS]) AS [ACTL_SHIP_LBS], 
		SUM(pln.[LE_KMF_USD]) AS [LATST_ESTMT_KMF_USD]
FROM  KNA_COMRCL.dbo.PLN_TO_ITM pln
INNER JOIN KG_VIEWS.dbo.UVW_FISC_CAL fisc_cal ON (fisc_cal.FISC_YR*100 + fisc_cal.FISC_WK = pln.[CAL_WK])
RIGHT OUTER JOIN KNA_BW.dbo.PZCUST_MAT zcust_mat ON (zcust_mat.[/BIC/ZCUST_MAT] = pln.CUST AND zcust_mat.[MATERIAL] = pln.MATRL )
INNER JOIN [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] mat ON ( mat.[MATRL_NBR] =  pln.[MIXD_PLT_MATRL] AND CHRSTC_NM = 'ALT_CATEGORY')
RIGHT OUTER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N norm ON ('0000' + norm.PLANTO  = pln.CUST  AND 
                         norm.BU = zcust_mat.[/BIC/ZBPC_BUUN] )
WHERE (norm.LEVEL_A <> 'CANADA L3') AND (norm.LEVEL_A <> 'SPECIALTY')
GROUP BY fisc_cal.FISC_YR, 
         pln.CAL_WK, 
		mat.[CHRSTC_VAL],
		 fisc_cal.FISC_PD, 
         norm.CONS_CLASS,
		 zcust_mat.[/BIC/ZBPC_BUUN], 
		 fisc_cal.FISC_WK_END_DT
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PLN_TO_ITM]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM] ON [dbo].[PLN_TO_ITM]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[MIXD_PLT_FLG] ASC,
	[CAL_WK] ASC,
	[CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PLN_TO_ITM_ACT]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM_ACT] ON [dbo].[PLN_TO_ITM_ACT]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[MIXD_PLT_FLG] ASC,
	[CAL_WK] ASC,
	[CURR] ASC,
	[SALE_FLG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PLN_TO_ITM_CAD]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM_CAD] ON [dbo].[PLN_TO_ITM_CAD]
(
	[PLN_TO_NBR] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC,
	[BU] ASC,
	[CAL_WK] ASC,
	[PROMOTIONS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PLN_TO_ITM_WK]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_PLN_TO_ITM_WK] ON [dbo].[PLN_TO_ITM_WK]
(
	[PLN_TO_NBR] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[MIXD_PLT_FLG] ASC,
	[CAL_WK] ASC,
	[CURR] ASC,
	[BU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PROMTN]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_PROMTN] ON [dbo].[PROMTN]
(
	[PROMTN_ID] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[PLN_TO] ASC,
	[TPM_CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PROMTN_MSTR]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_PROMTN_MSTR] ON [dbo].[PROMTN_MSTR]
(
	[PROMTN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ZM_TPM60]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_ZM_TPM60] ON [dbo].[ZM_TPM60]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[PROMTNS] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_tpm60_pln_CKF]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [ix_tpm60_pln_CKF] ON [dbo].[ZM_TPM60_CKF]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_tpm60_pln_CKF_cad]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [ix_tpm60_pln_CKF_cad] ON [dbo].[ZM_TPM60_CKF_CAD]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC,
	[PROMTNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_uvw_cust_hier_tmp]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [ix_uvw_cust_hier_tmp] ON [STG].[CUST_HIER]
(
	[LST_LVL_CUST_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_tpm60_stg]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [ix_tpm60_stg] ON [STG].[ZM_TPM60]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[PROMTNS] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_tpm60_pln_CKF_stg]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [ix_tpm60_pln_CKF_stg] ON [STG].[ZM_TPM60_CKF]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_tpm60_pln_CKF_cad_stg]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE CLUSTERED INDEX [ix_tpm60_pln_CKF_cad_stg] ON [STG].[ZM_TPM60_CKF_CAD]
(
	[CUST] ASC,
	[MATRL] ASC,
	[MIXD_PLT_MATRL] ASC,
	[CAL_WK] ASC,
	[MIXD_PLT_FLG] ASC,
	[CURR] ASC,
	[PROMTNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [mat_std_price_lkup_ix]    Script Date: 11/20/2018 5:42:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [mat_std_price_lkup_ix] ON [STG].[MAT_STD_PRICE_LKUP]
(
	[MATERIAL] ASC,
	[CAL_YR] ASC,
	[CURR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [KNA_COMRCL] SET  READ_WRITE 
GO
