USE [master]
GO
/****** Object:  Database [KG_SANDBOX]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE DATABASE [KG_SANDBOX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_SANDBOX', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_SANDBOX.mdf' , SIZE = 122392576KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_SANDBOX_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_SANDBOX_log.ldf' , SIZE = 42189824KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_SANDBOX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_SANDBOX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_SANDBOX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_SANDBOX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_SANDBOX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_SANDBOX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_SANDBOX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_SANDBOX] SET  MULTI_USER 
GO
ALTER DATABASE [KG_SANDBOX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_SANDBOX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_SANDBOX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_SANDBOX] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_SANDBOX', N'ON'
GO
USE [KG_SANDBOX]
GO
/****** Object:  User [US\USKCXR28]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\USKCXR28] FOR LOGIN [US\USKCXR28] WITH DEFAULT_SCHEMA=[US\USKCXR28]
GO
/****** Object:  User [US\SQL_SANDBOX_PROD]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\SQL_SANDBOX_PROD] FOR LOGIN [US\SQL_SANDBOX_PROD]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE7]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE7] FOR LOGIN [US\SQL_DS_HYPERCARE7]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_ACCENTURE]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SQL_ACCENTURE] FOR LOGIN [SQL_ACCENTURE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKSDC40]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SAS_PU_USKSDC40] FOR LOGIN [SAS_PU_USKSDC40] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USCERD01]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [SAS_PU_USCERD01] FOR LOGIN [SAS_PU_USCERD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AS\incv1g04]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE USER [AS\incv1g04] FOR LOGIN [AS\incv1g04] WITH DEFAULT_SCHEMA=[AS\incv1g04]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 11/20/2018 5:32:20 PM ******/
CREATE ROLE [db_exeproc]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [US\SQL_SANDBOX_PROD]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [US\SQL_SANDBOX_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SANDBOX_PROD]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [US\SQL_SANDBOX_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [US\SQL_DS_HYPERCARE7]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE7]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [US\SQL_DS_HYPERCARE7]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_owner] ADD MEMBER [SQL_SPARK_PROD]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [SQL_ACCENTURE]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SQL_ACCENTURE]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SQL_ACCENTURE]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SQL_ACCENTURE]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKLCH06]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKSDC40]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USCERD01]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [ACCENTURE]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [ACCENTURE]
GO
/****** Object:  Schema [AS\incv1g04]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [AS\incv1g04]
GO
/****** Object:  Schema [JWALSH00]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [JWALSH00]
GO
/****** Object:  Schema [US\USCDXS92]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [US\USCDXS92]
GO
/****** Object:  Schema [US\USKCXR28]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [US\USKCXR28]
GO
/****** Object:  Schema [USCAXZ09]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USCAXZ09]
GO
/****** Object:  Schema [USCERD01]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USCERD01]
GO
/****** Object:  Schema [USCMXJ11]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USCMXJ11]
GO
/****** Object:  Schema [USCUXB73]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USCUXB73]
GO
/****** Object:  Schema [USER_SALES]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USER_SALES]
GO
/****** Object:  Schema [USKBDM02]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKBDM02]
GO
/****** Object:  Schema [USKEJC05]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKEJC05]
GO
/****** Object:  Schema [USKJDW73]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKJDW73]
GO
/****** Object:  Schema [USKJMG03]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKJMG03]
GO
/****** Object:  Schema [USKJTB03]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKJTB03]
GO
/****** Object:  Schema [USKS1W02]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKS1W02]
GO
/****** Object:  Schema [USKSDC40]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKSDC40]
GO
/****** Object:  Schema [USKSXF12]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE SCHEMA [USKSXF12]
GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_ClosedDeductionsData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_ClosedDeductionsData]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.StgOTCDeductionsClosed									

			INSERT INTO [ACCENTURE].StgOTCDeductionsClosed
				(
					[Batch_ID]
					,[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]
					,[CASE_STATUS]
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]
					,[CRE_TM]
					,[CLS_TM]
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
					,[HST_QTR]
					, REPORT_EXT_DT
					--,[ActionFlag]
				)			
			SELECT		
					SUC.BatchId AS BATCH_ID
					,[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,SDLS.[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,SDLS.[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]
					,SDLS.[CASE_STATUS]
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]					
					, CRE_TM
					, CLS_TM
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
					,[HST_QTR]	
					, REPORT_EXT_DT				
			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SDLS
			JOIN	
					ACCENTURE.StgUniqueCases SUC
			ON		
					SDLS.SEQ_ID = SUC.DED_SEQ_ID
			WHERE 
					SUC.CASE_STATUS = 'Closed'
			
			OPTION(MAXDOP 8)			

			--SELECT	COUNT(1)
			--FROM	ACCENTURE.StgOTCDeductionsClosed
			--WHERE	REPORT_EXT_DT < '2017-10-16'

			-- DELETING All the closed cases prior to week 42 & year 2017
			DELETE
			FROM	ACCENTURE.StgOTCDeductionsClosed
			WHERE	REPORT_EXT_DT < '2017-10-16'

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_OpenDeductionsData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_OpenDeductionsData]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.StgOTCDeductionsOpen									

			INSERT INTO [ACCENTURE].[StgOTCDeductionsOpen]
				(
					[Batch_ID]
					,[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]
					,[CASE_STATUS]
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]
					,[CRE_TM]
					,[CLS_TM]
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
					,[HST_QTR]
					,REPORT_EXT_DT
					--,[ActionFlag]
				)			
			SELECT		
					SUC.BatchId AS BATCH_ID
					,[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,SDLS.[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,SDLS.[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]
					,SDLS.[CASE_STATUS]
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]					
					, CRE_TM
					, CLS_TM
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
					,[HST_QTR]	
					,REPORT_EXT_DT				
			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SDLS
			JOIN	
					ACCENTURE.StgUniqueCases SUC
			ON		
					SDLS.SEQ_ID = SUC.DED_SEQ_ID
			WHERE 
					SUC.CASE_STATUS = 'Open'

			OPTION(MAXDOP 8)


		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_PublishKPIMetrics]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ACCENTURE].[USP_Populate_PublishKPIMetrics]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.PublishKPIMetrics									
			
			INSERT INTO [ACCENTURE].[PublishKPIMetrics]
			(
					BATCH_ID
					,CASE_ID
					,RSN_CASE_DESC
					,DEDUCTION_AMOUNT_USD
					,PLNT_NBR
					,PLANTO_DESC
					,ROOT_CAUSE_DESC
					,ROOT_CAUSE_CD
					,RSN_CD_PAY_TXT
					,RSN_ESCAL_DESC
					,PROCESSOR_ID
					,PROCESSOR_NM
					,PERS_RESP_NM
					,BAS_LN_DT
					,CLSN_DT
					,AGE_END_OF_PERIOD
					,BU
					,SALES_MGMT_A
					,SALES_MGMT_B
					,SALES_MGMT_C
					,SALES_MGMT_D
					,CUST_NBR
					,CUST_MAIL_ADDR
					,CUSTOMER_CHANNEL
					,DEDUCTION_CATEGORY
					,DEDUCTION_CONTROLLABLE_UNCONTROLLABLE
					,TEAM
					,TRADE_FLAG
					,REPORT_EXTRACTION_DATE
					,LAST_DAY_OF_WEEK_FLAG
					,VALID_FLAG
					,ACTION_FLAG
					,CASE_STATUS
					,ACTIVITY_DATE
					,UNDER_TOLERANCE
					,INVLD_COLLECTIONS_AMT
					,TOP_20_CUSTOMERS
					,TOP_10_CUSTOMERS
					,UCD
					,FY
					,HST_WK
					,HST_PD
					,HST_YR
					,HST_QTR
					,WEEK_DETAILS
					,PERIOD
					,QTR
					,DAY_OF_WEEK
					,CRE_WK
					,CRE_PD
					,CRE_YR
					,CRE_QTR
					,AGE_INVLD_PNDG_RVW
					,AGE_CLSFD_INVLD
					,AGE_INVLD_CLSD
					,WRITE_OFF_AMT
					,WRITE_OFF_RSN
					,INVLD_DED_AGEING
					,CREDITS
					,FROM_UNKWN_TO_CODED
					,OTC_CUST_CHNL
					,CATEG_DATE
					,CODED_DATE
					,CODED_WK
					,CODED_YR
					,UNKNOWN_DATE
					,UNKNOWN_WK
					,UNKNOWN_YR
					,INVLD_CONFRMD_REPAY_DATE
					,INVLD_APPRVD_DATE
					,INVLD_SALES_APPRVD_WRTOFF_DATE
					,INVLD_PNDG_SALES_RVW_DATE
					,INVLD_PNDG_RSC_RVW_DATE
					,CODING_STATUS
					,DED_FIRST_PASS_CODED_DATE
					,STAT_CLSD_DATE
					,AGE_IDENTIFY_INVLD
					,AGE_AUTOCASH_TO_CODED
					,AGE_INVCE_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_CDG_TO_ACTN_TAKEN
					,AGE_SALES_FLWUP_TO_CODED
					,AGE_CUSTMR_FLWUP_TO_CODED
					,AGE_POD_REQ_TO_CODED
					,AGE_RSPNS_RCVD_TO_ACTN_TKN
					,AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC
					,AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_POD_REQ_TO_CODED_PST_ESC
					,AGE_UNWN_ESC_TO_INVLD
					,AGE_CDG_TO_ACTN_TKN
					,AGE_ACTN_TKN_TO_RSPNS_RCVD
					,AGE_CDG_TO_INVLD
					,AGE_CDG_SLS_CUSTMR_POD_REQ_ESC
					,AGE_CDG_ESC_TO_INVLD
					,AGE_SLS_BRKR_TO_CLSR
					,AGE_CUSTMR_TO_CLSR
					,AGE_POD_REQ_TO_CLSR
					,AGE_INVLD_TO_CLSR
					,CP_OR_NOT
			)

			SELECT	
					BATCH_ID	
					,CASE_ID
					,RSN_CASE_DESC
					,DEDUCTION_AMOUNT_USD
					,PLNT_NBR
					,PLANTO_DESC
					,ROOT_CAUSE_DESC
					,ROOT_CAUSE_CD
					,RSN_CD_PAY_TXT
					,RSN_ESCAL_DESC
					,PROCESSOR_ID
					,PROCESSOR_NM
					,PERS_RESP_NM
					,BAS_LN_DT
					,CLSN_DT
					,AGE_END_OF_PERIOD
					,BU
					,SALES_MGMT_A
					,SALES_MGMT_B
					,SALES_MGMT_C
					,SALES_MGMT_D
					,CUST_NBR
					,CUST_MAIL_ADDR
					,CUSTOMER_CHANNEL
					,DEDUCTION_CATEGORY
					,DEDUCTION_CONTROLLABLE_UNCONTROLLABLE
					,TEAM
					,TRADE_FLAG
					,REPORT_EXTRACTION_DATE
					,LAST_DAY_OF_WEEK_FLAG
					,VALID_FLAG
					,ACTION_FLAG
					,CASE_STATUS
					,ACTIVITY_DATE
					,UNDER_TOLERANCE
					,INVLD_COLLECTIONS_AMT
					,TOP_20_CUSTOMERS
					,TOP_10_CUSTOMERS
					,UCD
					,FY
					,HST_WK
					,HST_PD
					,HST_YR
					,HST_QTR
					,WEEK_DETAILS
					,PERIOD
					,QTR
					,DAY_OF_WEEK
					,CRE_WK
					,CRE_PD
					,CRE_YR
					,CRE_QTR
					,AGE_INVLD_PNDG_RVW
					,AGE_CLSFD_INVLD
					,AGE_INVLD_CLSD
					,WRITE_OFF_AMT
					,WRITE_OFF_RSN
					,INVLD_DED_AGEING
					,CREDITS
					,FROM_UNKWN_TO_CODED
					,OTC_CUST_CHNL
					,CATEG_DATE
					,CODED_DATE
					,CODED_WK
					,CODED_YR
					,UNKNOWN_DATE
					,UNKNOWN_WK
					,UNKNOWN_YR
					,INVLD_CONFRMD_REPAY_DATE
					,INVLD_APPRVD_DATE
					,INVLD_SALES_APPRVD_WRTOFF_DATE
					,INVLD_PNDG_SALES_RVW_DATE
					,INVLD_PNDG_RSC_RVW_DATE
					,CODING_STATUS
					,DED_FIRST_PASS_CODED_DATE
					,STAT_CLSD_DATE
					,AGE_IDENTIFY_INVLD
					,AGE_AUTOCASH_TO_CODED
					,AGE_INVCE_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_CDG_TO_ACTN_TAKEN
					,AGE_SALES_FLWUP_TO_CODED
					,AGE_CUSTMR_FLWUP_TO_CODED
					,AGE_POD_REQ_TO_CODED
					,AGE_RSPNS_RCVD_TO_ACTN_TKN
					,AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC
					,AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_POD_REQ_TO_CODED_PST_ESC
					,AGE_UNWN_ESC_TO_INVLD
					,AGE_CDG_TO_ACTN_TKN
					,AGE_ACTN_TKN_TO_RSPNS_RCVD
					,AGE_CDG_TO_INVLD
					,AGE_CDG_SLS_CUSTMR_POD_REQ_ESC
					,AGE_CDG_ESC_TO_INVLD
					,AGE_SLS_BRKR_TO_CLSR
					,AGE_CUSTMR_TO_CLSR
					,AGE_POD_REQ_TO_CLSR
					,AGE_INVLD_TO_CLSR
					,CP_OR_NOT
			FROM	
					ACCENTURE.StgKPIMetricsDelta			
			OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_PublishLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [ACCENTURE].[USP_Populate_PublishLogData]
--(
--	@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.PublishLogData

			INSERT INTO [ACCENTURE].[PublishLogData]
			(
					CASE_ID
					,STATUS_FLAG
					,INVOICE_AUTOCASH_DATE
					,UNKNOWN_AUTOCASH_DATE
					,UNKNOWN_DATE
					,CODED_DATE
					,BLANK_ROOT_CAUSE_DATE
					,REQ_BKP_FROM_CUST_DATE
					,REQ_CONT_FROM_SALES_DATE
					,REQ_BKP_FROM_SALES_DATE
					,REQ_PRODUCT_ADD_DATE
					,REQ_PROMO_ADD_DATE
					,REQ_PROMO_ADD_FROM_BROKER_DATE
					,REQ_BKP_FROM_BROKER_DATE
					,REQ_CONT_FROM_BROKER_DATE
					,OTHER_ROOT_CAUSE_CODE_DATE
					,POD_REQ_DATE
					,POD_REQ_CPU_DATE
					,POD_REQ_DC_DATE
					,ESC_REG_DED_BACK_OFFICE_DATE
					,INVLD_CONFRMD_REPAY_DATE
					,INVLD_APPRVD_DATE
					,INVLD_SALES_APPRVD_WRTOFF_DATE
					,INVLD_PNDG_SALES_RVW_DATE
					,INVLD_PNDG_RSC_RVW_DATE
					,CATEG_DATE
					,STAT_CLSD_DATE
					,AGE_AUTOCASH_TO_CODED
					,AGE_INVCE_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_CDG_TO_ACTN_TAKEN
					,AGE_SALES_FLWUP_TO_CODED
					,AGE_CUSTMR_FLWUP_TO_CODED
					,AGE_POD_REQ_TO_CODED
					,AGE_RSPNS_RCVD_TO_ACTN_TKN
					,AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC
					,AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_POD_REQ_TO_CODED_PST_ESC
					,AGE_UNWN_ESC_TO_INVLD
					,AGE_CDG_TO_ACTN_TKN
					,AGE_ACTN_TKN_TO_RSPNS_RCVD
					,AGE_CDG_TO_INVLD
					,AGE_CDG_SLS_CUSTMR_POD_REQ_ESC
					,AGE_CDG_ESC_TO_INVLD
					,AGE_SLS_BRKR_TO_CLSR
					,AGE_CUSTMR_TO_CLSR
					,AGE_POD_REQ_TO_CLSR
					,AGE_INVLD_TO_CLSR
			)
			SELECT 
					CASE_ID
					,STATUS_FLAG
					,INVOICE_AUTOCASH_DATE
					,UNKNOWN_AUTOCASH_DATE
					,UNKNOWN_DATE
					,CODED_DATE
					,BLANK_ROOT_CAUSE_DATE
					,REQ_BKP_FROM_CUST_DATE
					,REQ_CONT_FROM_SALES_DATE
					,REQ_BKP_FROM_SALES_DATE
					,REQ_PRODUCT_ADD_DATE
					,REQ_PROMO_ADD_DATE
					,REQ_PROMO_ADD_FROM_BROKER_DATE
					,REQ_BKP_FROM_BROKER_DATE
					,REQ_CONT_FROM_BROKER_DATE
					,OTHER_ROOT_CAUSE_CODE_DATE
					,POD_REQ_DATE
					,POD_REQ_CPU_DATE
					,POD_REQ_DC_DATE
					,ESC_REG_DED_BACK_OFFICE_DATE
					,INVLD_CONFRMD_REPAY_DATE
					,INVLD_APPRVD_DATE
					,INVLD_SALES_APPRVD_WRTOFF_DATE
					,INVLD_PNDG_SALES_RVW_DATE
					,INVLD_PNDG_RSC_RVW_DATE
					,CATEG_DATE
					,STAT_CLSD_DATE
					,AGE_AUTOCASH_TO_CODED
					,AGE_INVCE_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_AUTOCASH_TO_UNKWN
					,AGE_UNKWN_CDG_TO_ACTN_TAKEN
					,AGE_SALES_FLWUP_TO_CODED
					,AGE_CUSTMR_FLWUP_TO_CODED
					,AGE_POD_REQ_TO_CODED
					,AGE_RSPNS_RCVD_TO_ACTN_TKN
					,AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC
					,AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC
					,AGE_UNWN_POD_REQ_TO_CODED_PST_ESC
					,AGE_UNWN_ESC_TO_INVLD
					,AGE_CDG_TO_ACTN_TKN
					,AGE_ACTN_TKN_TO_RSPNS_RCVD
					,AGE_CDG_TO_INVLD
					,AGE_CDG_SLS_CUSTMR_POD_REQ_ESC
					,AGE_CDG_ESC_TO_INVLD
					,AGE_SLS_BRKR_TO_CLSR
					,AGE_CUSTMR_TO_CLSR
					,AGE_POD_REQ_TO_CLSR
					,AGE_INVLD_TO_CLSR
			FROM	
					ACCENTURE.StgIntermediateLogData 		

			OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_SnapshotHistory]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_SnapshotHistory]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION								
			
			--DECLARE @BatchId BIGINT
			--SELECT	@BatchId = MAX(BatchId)
			--FROM	ACCENTURE.StgBatchInfo

			INSERT INTO [ACCENTURE].StgOTCDeductionsLiveSnapshotHistory
				(
					[Batch_ID]
					,[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]
					,[CASE_STATUS]
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]
					,[CRE_TM]
					,[CLS_TM]
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
					,[HST_QTR]
					--,[ActionFlag]
				)			
			SELECT		
					BatchId
					,[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]				
					, CASE_STATUS	
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]					
					, CRE_TM
					, CLS_TM
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
					, [HST_QTR]					
			FROM	
					ACCENTURE.SrcOTCDeductionsLiveSnapshot
								
			OPTION(MAXDOP 8)


		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_SrcDMLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [ACCENTURE].[USP_Populate_SrcDMLogData]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.SrcDMLogData						
			
			INSERT INTO ACCENTURE.SrcDMLogData
			(EXT_KEY
			 ,CASE_GUID
			 ,CHANGED_BY
			 ,POID_ID
			 ,SY_DATUM
			 ,SY_UZEIT
			 ,ARG_STRING
			 ,ARG1
			 ,ARG2
			 ,UTC_CHANGE_TIME
			 ,CT_CHANGE_TIME
			 )
			 SELECT EXT_KEY
			 ,CASE_GUID
			 ,CHANGED_BY
			 ,POID_ID
			 ,[SY-DATUM]
			 ,[SY-UZEIT]
			 ,ARG_STRING
			 ,ARG1
			 ,ARG2
			 ,convert(datetime,
                     stuff(
                           stuff(
                                  stuff(concat([SY-DATUM],[SY-UZEIT]),13,0,':')
                           ,11,0,':')
                     ,9,0,' ')
           ) as UTC_CHANGE_TIME ,
		   convert (datetime2,
					switchoffset(
				convert(datetime,
                     stuff(
                           stuff(
                                  stuff(concat([SY-DATUM],[SY-UZEIT]),13,0,':')
                           ,11,0,':')
								 ,9,0,' ')
				   ),
			   '-06:00')) as CT_CHANGE_TIME   
			 FROM [KG_SANDBOX].[ACCENTURE].[UVW_DSPUT_CASE_CHG_LOG]
			 OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_SrcOTCDeductions]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_SrcOTCDeductions]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION		
			
			--TRUNCATE TABLE [ACCENTURE].SrcOTCDeductionsLiveSnapshot

			DECLARE @maxyrwk VARCHAR(50)
			SELECT 
					@maxyrwk = CONCAT(MAX(HST_YR),MAX(HST_WK))
			FROM 
					KNA_FIN.dbo.UVW_OTC_DED_LVE_SNPSHT

			INSERT INTO [ACCENTURE].SrcOTCDeductionsLiveSnapshot
				(
					[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]
					,[CASE_STATUS]
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]
					,[CRE_TM]
					,[CLS_TM]
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]
				)			
			SELECT							
					[PROCESSOR_ID]
					,[PROCESSOR_NM]
					,[PERS_RESP_ID]
					,[PERS_RESP_NM]
					,[COORDINATOR_ID]
					,[COORDINATOR_NM]
					,[USR_ID]
					,[USR_NM]
					,[RELATION]
					,[CLASSIFICATION]
					,[IS_VOIDED]
					,[IS_CONFIRMED]
					,[PMT_IN_FLG]
					,[CASE_ID]
					,[COMB_FLG]
					,[CASE_TITL]
					,[CASE_GUID]
					,[CASE_TYP]
					,[COMB_DSPUT_CASE_ID]
					,[DOC_TYP]
					,[CO_CD]
					,[DOC_TYP_DESC]
					,[ACCTG_DOC_NBR]
					,[DOC_HDR_TXT]
					,[ITM_TXT]
					,[REF_DOC_NBR]
					,[BILL_DOC]
					,[EXTR_REF]
					,[CHG_TM]
					,[FIN_CUSTDISP_AMT]
					,[FIN_CUSTDISP_CUR]
					,[FIN_NOT_SOLV_AMT]
					,[CURR]
					,[ASGN]
					,[POST_KEY]
					,[POST_KEY_NM]
					,[FY]
					,[LN_ITM_NBR]
					,[OTC_CUST_CHNL]
					,[CUST_CHNL_TXT]
					,[BU]
					,[CUST_NBR]
					,[CUST_MAIL_ADDR]
					,[PLNT_NBR]
					,[PLANTO_DESC]
					,[SALE_MGMT_A]
					,[SALE_MGMT_B]
					,[SALE_MGMT_C]
					,[SALE_MGMT_D]
					,[RSN_CD_PAY]
					,[RSN_CD_PAY_TXT]
					,[RSN_ESCAL_CD]
					,[RSN_ESCAL_DESC]
					,[RSN_CASE_CD]
					,[RSN_CASE_DESC]
					,[ROOT_CAUSE_CD]
					,[ROOT_CAUSE_DESC]				
					, CASE_STATUS	
					,[CASE_STATUS_DESC]
					,[CASE_CATG]
					,[BAS_LN_DT]
					,[PLN_CLO_DT]					
					, CRE_TM
					, CLS_TM
					,[AGE]
					,[PAY_METH_SUPL]
					,[AMT_LOC_CURR]
					,[CUR_DISPUTED_AMT]
					,[ORIG_AMT]
					,[CLR_MANUALLY]
					,[AMT_PAID]
					,[AMT_CR]
					,[DSPUT_CURR]
					,[DOC_DT]
					,[POST_DT]
					,[DED_USE_FLAG]
					,[UNDR_TOLRNC_FLG]
					,[CLSN_DT]
					,[OPN_FLG]
					,[CLSN_PD]
					,[CLSN_YR]
					,[HST_INT]
					,[CRE_PD]
					,[CRE_YR]
					,[CRE_PD_END_DT]
					,[CRE_INT]
					,[CRE_FLG]
					,[INVLD_FLG]
					,[HST_WK]
					,[HST_PD]
					,[HST_YR]			
			FROM	
					KNA_FIN.dbo.UVW_OTC_DED_LVE_SNPSHT
			WHERE	
					CO_CD = 'NUSC' 
			AND		
					UPPER(CUST_CHNL_TXT) = 'RETAIL' 
			AND		
					(
						RELATION IN ('F1','F2') 
						OR RELATION IS NULL
					) 
			AND		(
						SALE_MGMT_A IS NULL
						OR
						SALE_MGMT_A NOT IN ('SPECIALTY','CANADA L3')
					)
			AND 
					RSN_CASE_CD NOT IN(	2,0300,0301,0302,0303,0304,0305,0306
							, 0307,0308,0309,0310,0311
						) 
			--AND		
			--		concat(HST_YR,HST_WK) = @maxyrwk
								
			OPTION(MAXDOP 8)


		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_StgIntermediateLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [ACCENTURE].[USP_Populate_StgIntermediateLogData]
--(
--	@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.StgIntermediateLogData
			
			DECLARE @BatchId BIGINT
			SELECT	@BatchId = MAX(BatchId) 
			FROM	ACCENTURE.StgBatchInfo

			INSERT INTO ACCENTURE.StgIntermediateLogData
			(
					CASE_ID
					, STATUS_FLAG
			)

			SELECT	
				DISTINCT 
					EXT_KEY AS CASE_ID
					, STATUS_FLAG
			FROM	
					ACCENTURE.StgLogData A 
			--WHERE	
			--		Batch_ID = @BatchId
			OPTION (MAXDOP 8)
			
			-- Below section is to calculate the dates of various lifestage changes
			UPDATE	
					SIL
			SET		
					UNKNOWN_AUTOCASH_DATE = A.UNKNOWN_AUTOCASH_DATE
					, INVOICE_AUTOCASH_DATE = A.INVOICE_AUTOCASH_DATE
					, UNKNOWN_DATE = A.UNKNOWN_DATE
					, CODED_DATE = A.CODED_DATE
			FROM	
					ACCENTURE.StgIntermediateLogData SIL 
			JOIN 
			(
					SELECT 		
							EXT_KEY
							, MIN(CASE WHEN [ARG2] = 0000 THEN SY_DATUM END) AS UNKNOWN_AUTOCASH_DATE
							, MIN(CASE WHEN [ARG2] = 0001 THEN SY_DATUM END) AS INVOICE_AUTOCASH_DATE
							, MAX(CASE WHEN [ARG2] = 0015 THEN SY_DATUM END) AS UNKNOWN_DATE
							, MAX(CASE WHEN [ARG2] IN (0016,0020,0004,0010,0024,0900,0012,0011,0003,0021,0013,0014,0006,0007,0018,0005,0009,0022,0019,9999,0023,0008) THEN SY_DATUM END) AS CODED_DATE
					FROM	
							ACCENTURE.StgLogData SDL					
					WHERE	
							ARG_STRING in('REASON_COD','REASON_CODE')			
					--AND		
					--		SDL.Batch_ID = @BatchId					

					GROUP BY 
							EXT_KEY
			)A
			ON		
					A.EXT_KEY = SIL.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS
			--WHERE	
			--		SIL.STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			UPDATE	
					SIL
			SET		
					BLANK_ROOT_CAUSE_DATE = A.BLANK_ROOT_CAUSE_DATE
					, OTHER_ROOT_CAUSE_CODE_DATE = A.OTHER_ROOT_CAUSE_CODE_DATE
					, REQ_BKP_FROM_CUST_DATE = A.REQ_BKP_FROM_CUST_DATE
					, REQ_CONT_FROM_SALES_DATE = A.REQ_CONT_FROM_SALES_DATE
					, REQ_BKP_FROM_SALES_DATE = A.REQ_BKP_FROM_SALES_DATE
					, REQ_PRODUCT_ADD_DATE = A.REQ_PRODUCT_ADD_DATE
					, REQ_PROMO_ADD_DATE = A.REQ_PROMO_ADD_DATE
					, REQ_PROMO_ADD_FROM_BROKER_DATE = A.REQ_PROMO_ADD_FROM_BROKER_DATE
					, REQ_BKP_FROM_BROKER_DATE = A.REQ_BKP_FROM_BROKER_DATE
					, REQ_CONT_FROM_BROKER_DATE = A.REQ_CONT_FROM_BROKER_DATE					
					, POD_REQ_DATE = A.POD_REQ_DATE
					, POD_REQ_CPU_DATE = A.POD_REQ_CPU_DATE
					, POD_REQ_DC_DATE = A.POD_REQ_DC_DATE
					, INVLD_PNDG_RSC_RVW_DATE = A.INVLD_PNDG_RSC_RVW_DATE
					, INVLD_PNDG_SALES_RVW_DATE = A.INVLD_PNDG_SALES_RVW_DATE
					, INVLD_APPRVD_DATE = A.INVLD_APPRVD_DATE
					, INVLD_SALES_APPRVD_WRTOFF_DATE = A.INVLD_SALES_APPRVD_WRTOFF_DATE
					, INVLD_CONFRMD_REPAY_DATE = A.INVLD_CONFRMD_REPAY_DATE					

			FROM	
					ACCENTURE.StgIntermediateLogData SIL 
			JOIN 
			(
					SELECT 		
							EXT_KEY
							, MAX(CASE WHEN [ARG2] = '' OR [ARG2] IS NULL THEN SY_DATUM END) AS BLANK_ROOT_CAUSE_DATE
							--, MAX(CASE WHEN [ARG2] NOT IN ('',0039,0024,0040,0048,0047,0070,0069,0068,0058,0077,0078,0088,0089,0090,0092,0093)THEN SY_DATUM END) AS OTHER_ROOT_CAUSE_CODE_DATE
							, MAX(CASE WHEN [ARG2] <> '' OR [ARG2] IS NOT NULL THEN SY_DATUM END) AS OTHER_ROOT_CAUSE_CODE_DATE
							, MAX(CASE WHEN [ARG2] = 0039 THEN SY_DATUM END) AS REQ_BKP_FROM_CUST_DATE
							, MAX(CASE WHEN [ARG2] = 0024 THEN SY_DATUM END) AS REQ_CONT_FROM_SALES_DATE
							, MAX(CASE WHEN [ARG2] = 0040 THEN SY_DATUM END) AS REQ_BKP_FROM_SALES_DATE
							, MAX(CASE WHEN [ARG2] = 0048 THEN SY_DATUM END) AS REQ_PRODUCT_ADD_DATE
							, MAX(CASE WHEN [ARG2] = 0047 THEN SY_DATUM END) AS REQ_PROMO_ADD_DATE
							, MAX(CASE WHEN [ARG2] = 0070 THEN SY_DATUM END) AS REQ_PROMO_ADD_FROM_BROKER_DATE
							, MAX(CASE WHEN [ARG2] = 0069 THEN SY_DATUM END) AS REQ_BKP_FROM_BROKER_DATE
							, MAX(CASE WHEN [ARG2] = 0068 THEN SY_DATUM END) AS REQ_CONT_FROM_BROKER_DATE
							, MAX(CASE WHEN [ARG2] = 0058 THEN SY_DATUM END) AS POD_REQ_DATE
							, MAX(CASE WHEN [ARG2] = 0077 THEN SY_DATUM END) AS POD_REQ_CPU_DATE
							, MAX(CASE WHEN [ARG2] = 0078 THEN SY_DATUM END) AS POD_REQ_DC_DATE
							, MAX(CASE WHEN [ARG2] = 0088 THEN SY_DATUM END) AS INVLD_PNDG_RSC_RVW_DATE
							, MAX(CASE WHEN [ARG2] = 0089 THEN SY_DATUM END) AS INVLD_PNDG_SALES_RVW_DATE
							, MAX(CASE WHEN [ARG2] = 0090 THEN SY_DATUM END) AS INVLD_APPRVD_DATE
							, MAX(CASE WHEN [ARG2] = 0092 THEN SY_DATUM END) AS INVLD_SALES_APPRVD_WRTOFF_DATE
							, MAX(CASE WHEN [ARG2] = 0093 THEN SY_DATUM END) AS INVLD_CONFRMD_REPAY_DATE							
					FROM	
							ACCENTURE.StgLogData SDL
					WHERE	
							ARG_STRING in('FIN_ROOT_C','FIN_ROOT_CCODE')			
					--AND		
					--		SDL.Batch_ID = @BatchId
					GROUP BY 
						EXT_KEY
			)A
			ON		
					A.EXT_KEY = SIL.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS
			--WHERE	
			--		SIL.STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			UPDATE	
					SIL
			SET		
					ESC_REG_DED_BACK_OFFICE_DATE = A.ESC_REG_DED_BACK_OFFICE_DATE					
			FROM	
					ACCENTURE.StgIntermediateLogData SIL 
			JOIN 
			(
					SELECT 		
							EXT_KEY
							, MAX(CASE WHEN [ARG2] = 03 THEN SY_DATUM END) AS ESC_REG_DED_BACK_OFFICE_DATE							
					FROM	
							ACCENTURE.StgLogData SDL
					WHERE	
							ARG_STRING in( 'ESCAL_REAS'	,'ESCAL_REASON')
					--AND		
					--		SDL.Batch_ID = @BatchId					

					GROUP BY 
						EXT_KEY
			)A
			ON		
					A.EXT_KEY = SIL.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS
			--WHERE	
			--		SIL.STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			UPDATE	
					SIL
			SET		
					STAT_CLSD_DATE = A.STAT_CLSD_DATE					
			FROM	
					ACCENTURE.StgIntermediateLogData SIL 
			JOIN 
			(
					SELECT 		
							EXT_KEY
							, MAX(CASE WHEN [ARG2] = 30 THEN SY_DATUM END) AS STAT_CLSD_DATE							
					FROM	
							ACCENTURE.StgLogData SDL
					WHERE	
							ARG_STRING in('STAT_ORDER','STAT_ORDERNO')
					--AND		
					--		SDL.Batch_ID = @BatchId					

					GROUP BY 
						EXT_KEY
			)A
			ON		
					A.EXT_KEY = SIL.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS
			--WHERE	
			--		SIL.STATUS_FLAG = 'Closed'
			OPTION (MAXDOP 8)

			UPDATE	
					SIL
			SET		
					CATEG_DATE = A.CATEG_DATE					
			FROM	
					ACCENTURE.StgIntermediateLogData SIL 
			JOIN 
			(
					SELECT 		
							EXT_KEY
							, MAX(CASE WHEN [ARG2] IN (0004 ,0002) THEN SY_DATUM END) AS CATEG_DATE							
					FROM	
							ACCENTURE.StgLogData SDL
					WHERE	
							ARG_STRING = 'CATEGORY'			
					--AND		
					--		SDL.Batch_ID = @BatchId					

					GROUP BY 
						EXT_KEY
			)A
			ON		
					A.EXT_KEY = SIL.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS
			--WHERE	
			--		SIL.STATUS_FLAG = 'Closed'
			OPTION (MAXDOP 8)

			-- Below section is for the age calculation of each Lifestage Changes
			-- 3.1.2
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET			
					AGE_INVCE_AUTOCASH_TO_UNKWN = DATEDIFF(DD,INVOICE_AUTOCASH_DATE,UNKNOWN_DATE)
			WHERE	
					UNKNOWN_DATE >= INVOICE_AUTOCASH_DATE
			AND
					(
						INVOICE_AUTOCASH_DATE >= UNKNOWN_AUTOCASH_DATE
						OR
						UNKNOWN_AUTOCASH_DATE IS NULL
					)			
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)
			
			-- 3.1.3
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNKWN_AUTOCASH_TO_UNKWN = DATEDIFF(DD,UNKNOWN_AUTOCASH_DATE,UNKNOWN_DATE)
			WHERE	
					UNKNOWN_DATE >= UNKNOWN_AUTOCASH_DATE
			AND
					(
						UNKNOWN_AUTOCASH_DATE >= INVOICE_AUTOCASH_DATE 
						OR 
						INVOICE_AUTOCASH_DATE IS NULL
					)
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.1.1
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_AUTOCASH_TO_CODED = CASE 
												WHEN (INVOICE_AUTOCASH_DATE IS NOT NULL AND (INVOICE_AUTOCASH_DATE < UNKNOWN_AUTOCASH_DATE OR UNKNOWN_AUTOCASH_DATE IS NULL))
													THEN DATEDIFF(DD, INVOICE_AUTOCASH_DATE, CODED_DATE)
												WHEN (UNKNOWN_AUTOCASH_DATE IS NOT NULL AND (UNKNOWN_AUTOCASH_DATE < INVOICE_AUTOCASH_DATE OR INVOICE_AUTOCASH_DATE IS NULL))
													THEN DATEDIFF(DD, UNKNOWN_AUTOCASH_DATE, CODED_DATE)
											END
			WHERE	
					(
						CODED_DATE >= UNKNOWN_DATE
						OR UNKNOWN_DATE IS NULL
					)
			AND 
					(						
						CODED_DATE >= UNKNOWN_AUTOCASH_DATE 
						OR CODED_DATE >= INVOICE_AUTOCASH_DATE
					)
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.1
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNKWN_CDG_TO_ACTN_TAKEN = DATEDIFF(DD, UNKNOWN_DATE, OTHER_ROOT_CAUSE_CODE_DATE)								
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND
					OTHER_ROOT_CAUSE_CODE_DATE >= UNKNOWN_DATE
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)
				
			--3.2.2
			--UPDATE	
			--		ACCENTURE.StgIntermediateLogData
			--SET		
			--		AGE_SALES_FLWUP_TO_CODED = CASE 
			--										WHEN REQ_CONT_FROM_SALES_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_CONT_FROM_SALES_DATE, CODED_DATE)								
			--										WHEN REQ_BKP_FROM_SALES_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_BKP_FROM_SALES_DATE, CODED_DATE)		
			--										WHEN REQ_PRODUCT_ADD_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_PRODUCT_ADD_DATE, CODED_DATE)
			--										WHEN REQ_PROMO_ADD_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_PROMO_ADD_DATE, CODED_DATE)		
			--										WHEN REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_PROMO_ADD_FROM_BROKER_DATE, CODED_DATE)		
			--										WHEN REQ_BKP_FROM_BROKER_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_BKP_FROM_BROKER_DATE, CODED_DATE)																																																															
			--										WHEN REQ_CONT_FROM_BROKER_DATE IS NOT NULL 
			--											THEN DATEDIFF(DD, REQ_CONT_FROM_BROKER_DATE, CODED_DATE)		
			--									END
																			
			--WHERE	
			--		UNKNOWN_DATE IS NOT NULL
			--AND		
			--		CODED_DATE >= UNKNOWN_DATE
			--AND
			--		(
			--			CODED_DATE >= REQ_CONT_FROM_SALES_DATE OR CODED_DATE >= REQ_BKP_FROM_SALES_DATE
			--			OR	CODED_DATE >= REQ_PRODUCT_ADD_DATE OR CODED_DATE >= REQ_PROMO_ADD_DATE
			--			OR	CODED_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE OR CODED_DATE >= REQ_BKP_FROM_BROKER_DATE
			--			OR	CODED_DATE >= REQ_CONT_FROM_BROKER_DATE
			--		)
			--AND
			--		STATUS_FLAG = 'Open'
			--OPTION (MAXDOP 8)

			;WITH CTE
			AS
			(

			SELECT CASE_ID ,		
					AGE_SALES_FLWUP_TO_CODED = CASE 
													WHEN REQ_CONT_FROM_SALES_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_CONT_FROM_SALES_DATE, CODED_DATE)								
													WHEN REQ_BKP_FROM_SALES_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_BKP_FROM_SALES_DATE, CODED_DATE)		
													WHEN REQ_PRODUCT_ADD_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_PRODUCT_ADD_DATE, CODED_DATE)
													WHEN REQ_PROMO_ADD_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_PROMO_ADD_DATE, CODED_DATE)		
													WHEN REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_PROMO_ADD_FROM_BROKER_DATE, CODED_DATE)		
													WHEN REQ_BKP_FROM_BROKER_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_BKP_FROM_BROKER_DATE, CODED_DATE)																																																															
													WHEN REQ_CONT_FROM_BROKER_DATE IS NOT NULL 
														THEN DATEDIFF(DD, REQ_CONT_FROM_BROKER_DATE, CODED_DATE)		
												END
			FROM	ACCENTURE.StgIntermediateLogData
																			
			WHERE	
					UNKNOWN_DATE IS NOT NULL
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND
					(
						CODED_DATE >= REQ_CONT_FROM_SALES_DATE OR CODED_DATE >= REQ_BKP_FROM_SALES_DATE
						OR	CODED_DATE >= REQ_PRODUCT_ADD_DATE OR CODED_DATE >= REQ_PROMO_ADD_DATE
						OR	CODED_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE OR CODED_DATE >= REQ_BKP_FROM_BROKER_DATE
						OR	CODED_DATE >= REQ_CONT_FROM_BROKER_DATE
					)
			AND
					STATUS_FLAG = 'Open'
	)

	UPDATE	A
			SET		AGE_SALES_FLWUP_TO_CODED = B.AGE_SALES_FLWUP_TO_CODED
			FROM	ACCENTURE.StgIntermediateLogData A
			JOIN	CTE B
			ON		A.CASE_ID = B.CASE_ID
			WHERE	B.AGE_SALES_FLWUP_TO_CODED >= 0 
			OPTION (MAXDOP 8)

			-- 3.2.3
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_CUSTMR_FLWUP_TO_CODED = DATEDIFF(DD, REQ_BKP_FROM_CUST_DATE, CODED_DATE)
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND
					CODED_DATE >= REQ_BKP_FROM_CUST_DATE
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND 					
					REQ_BKP_FROM_CUST_DATE IS NOT NULL					
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.4
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_POD_REQ_TO_CODED = CASE 
												WHEN POD_REQ_DATE IS NOT NULL 
													THEN DATEDIFF(DD, POD_REQ_DATE, CODED_DATE)
												WHEN POD_REQ_CPU_DATE IS NOT NULL 
													THEN DATEDIFF(DD, POD_REQ_CPU_DATE, CODED_DATE)		
												WHEN POD_REQ_DC_DATE IS NOT NULL 
													THEN DATEDIFF(DD, POD_REQ_DC_DATE, CODED_DATE)													
											END
																			
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND 
					(
						CODED_DATE >= POD_REQ_DATE
						OR CODED_DATE>= POD_REQ_CPU_DATE
						OR	CODED_DATE>= POD_REQ_DC_DATE
					)
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.5
			;WITH CTE
			AS
			(
				SELECT 
					CASE_ID
					,AGE_RSPNS_RCVD_TO_ACTN_TKN = CASE 
														WHEN REQ_CONT_FROM_SALES_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_CONT_FROM_SALES_DATE, BLANK_ROOT_CAUSE_DATE)								
														WHEN REQ_BKP_FROM_SALES_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_BKP_FROM_SALES_DATE, BLANK_ROOT_CAUSE_DATE)		
														WHEN REQ_PRODUCT_ADD_DATE IS NOT NULL 
															THEN DATEDIFF(DD,  BLANK_ROOT_CAUSE_DATE,REQ_PRODUCT_ADD_DATE)
														WHEN REQ_PROMO_ADD_DATE IS NOT NULL 
															THEN DATEDIFF(DD,  BLANK_ROOT_CAUSE_DATE,REQ_PROMO_ADD_DATE)		
														WHEN REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_PROMO_ADD_FROM_BROKER_DATE, BLANK_ROOT_CAUSE_DATE)		
														WHEN REQ_BKP_FROM_BROKER_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_BKP_FROM_BROKER_DATE, BLANK_ROOT_CAUSE_DATE)																																																															
														WHEN REQ_CONT_FROM_BROKER_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_CONT_FROM_BROKER_DATE, BLANK_ROOT_CAUSE_DATE)	
														WHEN REQ_BKP_FROM_CUST_DATE IS NOT NULL
															THEN DATEDIFF(DD,  BLANK_ROOT_CAUSE_DATE,REQ_BKP_FROM_CUST_DATE)
														WHEN POD_REQ_DATE IS NOT NULL 
															THEN DATEDIFF(DD, POD_REQ_DATE, BLANK_ROOT_CAUSE_DATE)
														WHEN POD_REQ_CPU_DATE IS NOT NULL 
															THEN DATEDIFF(DD, POD_REQ_CPU_DATE, BLANK_ROOT_CAUSE_DATE)		
														WHEN POD_REQ_DC_DATE IS NOT NULL 
															THEN DATEDIFF(DD, POD_REQ_DC_DATE, BLANK_ROOT_CAUSE_DATE)																
													END

				FROM	ACCENTURE.StgIntermediateLogData
																			
				WHERE	
						UNKNOWN_DATE IS NOT NULL 	
				AND		
						UNKNOWN_DATE >= CODED_DATE		
				AND
						(
							BLANK_ROOT_CAUSE_DATE>= REQ_CONT_FROM_SALES_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_BKP_FROM_SALES_DATE
							OR	BLANK_ROOT_CAUSE_DATE >= REQ_PRODUCT_ADD_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_PROMO_ADD_DATE
							OR	BLANK_ROOT_CAUSE_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_BKP_FROM_BROKER_DATE
							OR	BLANK_ROOT_CAUSE_DATE >= REQ_CONT_FROM_BROKER_DATE OR BLANK_ROOT_CAUSE_DATE >= POD_REQ_DATE
							OR	BLANK_ROOT_CAUSE_DATE >= POD_REQ_CPU_DATE OR BLANK_ROOT_CAUSE_DATE >= POD_REQ_DC_DATE
							OR	BLANK_ROOT_CAUSE_DATE >= REQ_BKP_FROM_CUST_DATE
						)
				AND
						STATUS_FLAG = 'Open'
			)

			UPDATE	A
			SET		AGE_RSPNS_RCVD_TO_ACTN_TKN = B.AGE_RSPNS_RCVD_TO_ACTN_TKN
			FROM	ACCENTURE.StgIntermediateLogData A
			JOIN	CTE B
			ON		A.CASE_ID = B.CASE_ID
			WHERE	B.AGE_RSPNS_RCVD_TO_ACTN_TKN >= 0 
			OPTION (MAXDOP 8)

			-- 3.2.5.1
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC = CASE 
													WHEN REQ_CONT_FROM_SALES_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_CONT_FROM_SALES_DATE)								
													WHEN REQ_BKP_FROM_SALES_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_BKP_FROM_SALES_DATE)		
													WHEN REQ_PRODUCT_ADD_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_PRODUCT_ADD_DATE)		
													WHEN REQ_PROMO_ADD_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_PROMO_ADD_DATE)		
													WHEN REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_PROMO_ADD_FROM_BROKER_DATE)		
													WHEN REQ_BKP_FROM_BROKER_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_BKP_FROM_BROKER_DATE)																																																															
													WHEN REQ_CONT_FROM_BROKER_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_CONT_FROM_BROKER_DATE)
													WHEN REQ_BKP_FROM_CUST_DATE IS NOT NULL
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, REQ_BKP_FROM_CUST_DATE)
													WHEN POD_REQ_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, POD_REQ_DATE)								
													WHEN POD_REQ_CPU_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, POD_REQ_CPU_DATE)		
													WHEN POD_REQ_DC_DATE IS NOT NULL 
														THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, POD_REQ_DC_DATE)
																
												END
																			
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND 
					CODED_DATE IS NULL			
			AND 
					(
						REQ_CONT_FROM_SALES_DATE >= ESC_REG_DED_BACK_OFFICE_DATE OR REQ_BKP_FROM_SALES_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	REQ_PRODUCT_ADD_DATE >= ESC_REG_DED_BACK_OFFICE_DATE OR REQ_PROMO_ADD_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	REQ_PROMO_ADD_FROM_BROKER_DATE >= ESC_REG_DED_BACK_OFFICE_DATE OR REQ_BKP_FROM_BROKER_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	REQ_CONT_FROM_BROKER_DATE >= ESC_REG_DED_BACK_OFFICE_DATE OR POD_REQ_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	POD_REQ_CPU_DATE >= ESC_REG_DED_BACK_OFFICE_DATE OR	POD_REQ_DC_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	REQ_BKP_FROM_CUST_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
					)
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.5.2
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC = CASE 
														WHEN REQ_CONT_FROM_SALES_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_CONT_FROM_SALES_DATE, CODED_DATE)								
														WHEN REQ_BKP_FROM_SALES_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_BKP_FROM_SALES_DATE, CODED_DATE)		
														WHEN REQ_PRODUCT_ADD_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_PRODUCT_ADD_DATE, CODED_DATE)
														WHEN REQ_PROMO_ADD_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_PROMO_ADD_DATE, CODED_DATE)		
														WHEN REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_PROMO_ADD_FROM_BROKER_DATE, CODED_DATE)		
														WHEN REQ_BKP_FROM_BROKER_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_BKP_FROM_BROKER_DATE, CODED_DATE)																																																															
														WHEN REQ_CONT_FROM_BROKER_DATE IS NOT NULL 
															THEN DATEDIFF(DD, REQ_CONT_FROM_BROKER_DATE, CODED_DATE)										
													END					
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND
					ESC_REG_DED_BACK_OFFICE_DATE IS NOT NULL
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND
					(
						CODED_DATE >= REQ_CONT_FROM_SALES_DATE OR CODED_DATE >= REQ_BKP_FROM_SALES_DATE
						OR	CODED_DATE >= REQ_PRODUCT_ADD_DATE OR CODED_DATE >= REQ_PROMO_ADD_DATE
						OR	CODED_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE OR CODED_DATE >= REQ_BKP_FROM_BROKER_DATE
						OR	CODED_DATE >= REQ_CONT_FROM_BROKER_DATE
					)			
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.5.3
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC = DATEDIFF(DD, REQ_BKP_FROM_CUST_DATE, CODED_DATE)	
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND
					ESC_REG_DED_BACK_OFFICE_DATE IS NOT NULL			
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND 
					CODED_DATE >= REQ_BKP_FROM_CUST_DATE		
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.5.4
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNWN_POD_REQ_TO_CODED_PST_ESC = CASE 
															WHEN POD_REQ_DATE IS NOT NULL 
																THEN DATEDIFF(DD, POD_REQ_DATE, CODED_DATE)
															WHEN POD_REQ_CPU_DATE IS NOT NULL 
																THEN DATEDIFF(DD, POD_REQ_CPU_DATE, CODED_DATE)		
															WHEN POD_REQ_DC_DATE IS NOT NULL 
																THEN DATEDIFF(DD, POD_REQ_DC_DATE, CODED_DATE)													
														END
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND
					ESC_REG_DED_BACK_OFFICE_DATE IS NOT NULL
			--AND 
			--		CODED_DATE IS NOT NULL			
			--AND 
			--		(
			--			POD_REQ_DATE IS NOT NULL 
			--			OR POD_REQ_CPU_DATE IS NOT NULL
			--			OR	POD_REQ_DC_DATE IS NOT NULL 
			--		)
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND 
					(
						CODED_DATE >= POD_REQ_DATE
						OR CODED_DATE>= POD_REQ_CPU_DATE
						OR	CODED_DATE>= POD_REQ_DC_DATE
					)					
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.2.5.5
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_UNWN_ESC_TO_INVLD = CASE 
												WHEN INVLD_CONFRMD_REPAY_DATE IS NOT NULL 
													THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, INVLD_CONFRMD_REPAY_DATE)
												WHEN INVLD_APPRVD_DATE IS NOT NULL 
													THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, INVLD_APPRVD_DATE)		
												WHEN INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL 
													THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, INVLD_SALES_APPRVD_WRTOFF_DATE)	
												WHEN INVLD_PNDG_SALES_RVW_DATE IS NOT NULL 
													THEN DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, INVLD_PNDG_SALES_RVW_DATE)	
											END
			WHERE	
					UNKNOWN_DATE IS NOT NULL 
			AND
					ESC_REG_DED_BACK_OFFICE_DATE IS NOT NULL
			AND 
					CODED_DATE IS NULL			
			AND 
					(
						INVLD_CONFRMD_REPAY_DATE >= ESC_REG_DED_BACK_OFFICE_DATE 
						OR INVLD_APPRVD_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	INVLD_SALES_APPRVD_WRTOFF_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
						OR	INVLD_PNDG_SALES_RVW_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
					)
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.3.1
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_CDG_TO_ACTN_TKN = DATEDIFF(DD, CODED_DATE, OTHER_ROOT_CAUSE_CODE_DATE)	
			WHERE	
					CODED_DATE IS NOT NULL			
			--AND 
			--		OTHER_ROOT_CAUSE_CODE_DATE IS NOT NULL
			AND 
					OTHER_ROOT_CAUSE_CODE_DATE >= CODED_DATE
			AND
					CODED_DATE >= UNKNOWN_DATE
					
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.3.2
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_ACTN_TKN_TO_RSPNS_RCVD = CASE 
														WHEN ( REQ_CONT_FROM_SALES_DATE IS NOT NULL AND REQ_CONT_FROM_SALES_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_CONT_FROM_SALES_DATE >= REQ_PRODUCT_ADD_DATE AND REQ_CONT_FROM_SALES_DATE >= REQ_PROMO_ADD_DATE AND REQ_CONT_FROM_SALES_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND REQ_CONT_FROM_SALES_DATE >= REQ_BKP_FROM_BROKER_DATE AND REQ_CONT_FROM_SALES_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_CONT_FROM_SALES_DATE >= REQ_BKP_FROM_CUST_DATE
																AND REQ_CONT_FROM_SALES_DATE >= INVLD_CONFRMD_REPAY_DATE AND REQ_CONT_FROM_SALES_DATE >= INVLD_APPRVD_DATE AND REQ_CONT_FROM_SALES_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
																AND REQ_CONT_FROM_SALES_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)

															THEN DATEDIFF(DD, REQ_CONT_FROM_SALES_DATE, BLANK_ROOT_CAUSE_DATE)	
																						
														WHEN ( REQ_BKP_FROM_SALES_DATE IS NOT NULL AND REQ_BKP_FROM_SALES_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_BKP_FROM_SALES_DATE >= REQ_PRODUCT_ADD_DATE
																AND REQ_BKP_FROM_SALES_DATE >= REQ_PROMO_ADD_DATE AND REQ_BKP_FROM_SALES_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_BKP_FROM_SALES_DATE >= REQ_BKP_FROM_BROKER_DATE
																AND REQ_BKP_FROM_SALES_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_BKP_FROM_SALES_DATE >= REQ_BKP_FROM_CUST_DATE AND REQ_BKP_FROM_SALES_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_BKP_FROM_SALES_DATE >= INVLD_APPRVD_DATE AND REQ_BKP_FROM_SALES_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_BKP_FROM_SALES_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, REQ_BKP_FROM_SALES_DATE, BLANK_ROOT_CAUSE_DATE)		

														WHEN ( REQ_PROMO_ADD_DATE IS NOT NULL AND REQ_PROMO_ADD_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_PROMO_ADD_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_PROMO_ADD_DATE >= REQ_PRODUCT_ADD_DATE AND REQ_PROMO_ADD_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_PROMO_ADD_DATE >= REQ_BKP_FROM_BROKER_DATE
																AND REQ_PROMO_ADD_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_PROMO_ADD_DATE >= REQ_BKP_FROM_CUST_DATE AND REQ_PROMO_ADD_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_PROMO_ADD_DATE >= INVLD_APPRVD_DATE AND REQ_PROMO_ADD_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_PROMO_ADD_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, REQ_PROMO_ADD_DATE, BLANK_ROOT_CAUSE_DATE)

														WHEN ( REQ_PRODUCT_ADD_DATE IS NOT NULL AND REQ_PRODUCT_ADD_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_PRODUCT_ADD_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_PRODUCT_ADD_DATE >= REQ_PROMO_ADD_DATE AND REQ_PRODUCT_ADD_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_PRODUCT_ADD_DATE >= REQ_BKP_FROM_BROKER_DATE
																AND REQ_PRODUCT_ADD_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_PRODUCT_ADD_DATE >= REQ_BKP_FROM_CUST_DATE AND REQ_PRODUCT_ADD_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_PRODUCT_ADD_DATE >= INVLD_APPRVD_DATE AND REQ_PRODUCT_ADD_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_PRODUCT_ADD_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, REQ_PRODUCT_ADD_DATE, BLANK_ROOT_CAUSE_DATE)		

														WHEN ( REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_PROMO_ADD_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_PRODUCT_ADD_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_BKP_FROM_BROKER_DATE
																AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= REQ_BKP_FROM_CUST_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_PROMO_ADD_FROM_BROKER_DATE >= INVLD_APPRVD_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, REQ_PROMO_ADD_FROM_BROKER_DATE, BLANK_ROOT_CAUSE_DATE)		

														WHEN ( REQ_BKP_FROM_BROKER_DATE IS NOT NULL AND REQ_BKP_FROM_BROKER_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_BKP_FROM_BROKER_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_BKP_FROM_BROKER_DATE >= REQ_PROMO_ADD_DATE AND REQ_BKP_FROM_BROKER_DATE >= REQ_PRODUCT_ADD_DATE AND REQ_BKP_FROM_BROKER_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND REQ_BKP_FROM_BROKER_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_BKP_FROM_BROKER_DATE >= REQ_BKP_FROM_CUST_DATE AND REQ_BKP_FROM_BROKER_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_BKP_FROM_BROKER_DATE >= INVLD_APPRVD_DATE AND REQ_BKP_FROM_BROKER_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_BKP_FROM_BROKER_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)

															THEN DATEDIFF(DD, REQ_BKP_FROM_BROKER_DATE, BLANK_ROOT_CAUSE_DATE)																																																															

														WHEN ( REQ_CONT_FROM_BROKER_DATE IS NOT NULL AND REQ_CONT_FROM_BROKER_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_CONT_FROM_BROKER_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_CONT_FROM_BROKER_DATE >= REQ_PROMO_ADD_DATE AND REQ_CONT_FROM_BROKER_DATE >= REQ_PRODUCT_ADD_DATE AND REQ_CONT_FROM_BROKER_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND REQ_CONT_FROM_BROKER_DATE >= REQ_BKP_FROM_BROKER_DATE AND REQ_CONT_FROM_BROKER_DATE >= REQ_BKP_FROM_CUST_DATE AND REQ_CONT_FROM_BROKER_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_CONT_FROM_BROKER_DATE >= INVLD_APPRVD_DATE AND REQ_CONT_FROM_BROKER_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_CONT_FROM_BROKER_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, REQ_CONT_FROM_BROKER_DATE, BLANK_ROOT_CAUSE_DATE)

														WHEN ( REQ_BKP_FROM_CUST_DATE IS NOT NULL AND REQ_BKP_FROM_CUST_DATE >= REQ_CONT_FROM_SALES_DATE AND REQ_BKP_FROM_CUST_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND REQ_BKP_FROM_CUST_DATE >= REQ_PROMO_ADD_DATE AND REQ_BKP_FROM_CUST_DATE >= REQ_PRODUCT_ADD_DATE AND REQ_BKP_FROM_CUST_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND REQ_BKP_FROM_CUST_DATE >= REQ_BKP_FROM_BROKER_DATE AND REQ_BKP_FROM_CUST_DATE >= REQ_CONT_FROM_BROKER_DATE AND REQ_BKP_FROM_CUST_DATE >= INVLD_CONFRMD_REPAY_DATE
																AND REQ_BKP_FROM_CUST_DATE >= INVLD_APPRVD_DATE AND REQ_BKP_FROM_CUST_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND REQ_BKP_FROM_CUST_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, REQ_BKP_FROM_CUST_DATE, BLANK_ROOT_CAUSE_DATE)

														--WHEN POD_REQ_DATE IS NOT NULL 
														--	THEN DATEDIFF(DD, POD_REQ_DATE, BLANK_ROOT_CAUSE_DATE)
														--WHEN POD_REQ_CPU_DATE IS NOT NULL 
														--	THEN DATEDIFF(DD, POD_REQ_CPU_DATE, BLANK_ROOT_CAUSE_DATE)
														--WHEN POD_REQ_DC_DATE IS NOT NULL 
														--	THEN DATEDIFF(DD, POD_REQ_DC_DATE, BLANK_ROOT_CAUSE_DATE)
														WHEN ( INVLD_CONFRMD_REPAY_DATE IS NOT NULL AND INVLD_CONFRMD_REPAY_DATE >= REQ_CONT_FROM_SALES_DATE AND INVLD_CONFRMD_REPAY_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND INVLD_CONFRMD_REPAY_DATE >= REQ_PROMO_ADD_DATE AND INVLD_CONFRMD_REPAY_DATE >= REQ_PRODUCT_ADD_DATE AND INVLD_CONFRMD_REPAY_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND INVLD_CONFRMD_REPAY_DATE >= REQ_BKP_FROM_BROKER_DATE AND INVLD_CONFRMD_REPAY_DATE >= REQ_CONT_FROM_BROKER_DATE AND INVLD_CONFRMD_REPAY_DATE >= REQ_BKP_FROM_CUST_DATE
																AND INVLD_CONFRMD_REPAY_DATE >= INVLD_APPRVD_DATE AND INVLD_CONFRMD_REPAY_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_CONFRMD_REPAY_DATE >= INVLD_PNDG_SALES_RVW_DATE
															) 
															
															THEN DATEDIFF(DD, INVLD_CONFRMD_REPAY_DATE, BLANK_ROOT_CAUSE_DATE)

														WHEN ( INVLD_APPRVD_DATE IS NOT NULL AND INVLD_APPRVD_DATE >= REQ_CONT_FROM_SALES_DATE AND INVLD_APPRVD_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND INVLD_APPRVD_DATE >= REQ_PROMO_ADD_DATE AND INVLD_APPRVD_DATE >= REQ_PRODUCT_ADD_DATE AND INVLD_APPRVD_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND INVLD_APPRVD_DATE >= REQ_BKP_FROM_BROKER_DATE AND INVLD_APPRVD_DATE >= REQ_CONT_FROM_BROKER_DATE AND INVLD_APPRVD_DATE >= REQ_BKP_FROM_CUST_DATE
																AND INVLD_APPRVD_DATE >= INVLD_CONFRMD_REPAY_DATE AND INVLD_APPRVD_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_APPRVD_DATE >= INVLD_PNDG_SALES_RVW_DATE
															) 
															
															THEN DATEDIFF(DD, INVLD_APPRVD_DATE, BLANK_ROOT_CAUSE_DATE)		

														WHEN ( INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_CONT_FROM_SALES_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_PROMO_ADD_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_PRODUCT_ADD_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_BKP_FROM_BROKER_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_CONT_FROM_BROKER_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= REQ_BKP_FROM_CUST_DATE
																AND INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_CONFRMD_REPAY_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_APPRVD_DATE AND INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_PNDG_SALES_RVW_DATE
															)
															
															THEN DATEDIFF(DD, INVLD_SALES_APPRVD_WRTOFF_DATE, BLANK_ROOT_CAUSE_DATE)

														WHEN ( INVLD_PNDG_SALES_RVW_DATE IS NOT NULL AND INVLD_PNDG_SALES_RVW_DATE >= REQ_CONT_FROM_SALES_DATE AND INVLD_PNDG_SALES_RVW_DATE >= REQ_BKP_FROM_SALES_DATE 
																AND INVLD_PNDG_SALES_RVW_DATE >= REQ_PROMO_ADD_DATE AND INVLD_PNDG_SALES_RVW_DATE >= REQ_PRODUCT_ADD_DATE AND INVLD_PNDG_SALES_RVW_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE
																AND INVLD_PNDG_SALES_RVW_DATE >= REQ_BKP_FROM_BROKER_DATE AND INVLD_PNDG_SALES_RVW_DATE >= REQ_CONT_FROM_BROKER_DATE AND INVLD_PNDG_SALES_RVW_DATE >= REQ_BKP_FROM_CUST_DATE
																AND INVLD_PNDG_SALES_RVW_DATE >= INVLD_CONFRMD_REPAY_DATE AND INVLD_PNDG_SALES_RVW_DATE >= INVLD_APPRVD_DATE AND INVLD_PNDG_SALES_RVW_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
															)
															
															THEN DATEDIFF(DD, INVLD_PNDG_SALES_RVW_DATE, BLANK_ROOT_CAUSE_DATE)
													END					
			WHERE	
					CODED_DATE IS NOT NULL			
			AND 
					(
						BLANK_ROOT_CAUSE_DATE >= REQ_CONT_FROM_SALES_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_BKP_FROM_SALES_DATE
						OR	BLANK_ROOT_CAUSE_DATE >= REQ_PRODUCT_ADD_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_PROMO_ADD_DATE
						OR	BLANK_ROOT_CAUSE_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_BKP_FROM_BROKER_DATE
						OR	BLANK_ROOT_CAUSE_DATE >= REQ_CONT_FROM_BROKER_DATE OR BLANK_ROOT_CAUSE_DATE >= INVLD_CONFRMD_REPAY_DATE
						OR	BLANK_ROOT_CAUSE_DATE >= INVLD_APPRVD_DATE OR	BLANK_ROOT_CAUSE_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
						OR	BLANK_ROOT_CAUSE_DATE >= INVLD_PNDG_SALES_RVW_DATE OR BLANK_ROOT_CAUSE_DATE >= REQ_BKP_FROM_CUST_DATE
						--OR INVLD_CONFRMD_REPAY_DATE IS NOT NULL 
						--OR INVLD_APPRVD_DATE IS NOT NULL
						--OR	INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL 
						--OR	INVLD_PNDG_SALES_RVW_DATE IS NOT NULL
					)
			AND
					CODED_DATE >= UNKNOWN_DATE
			AND
					CODED_DATE >= BLANK_ROOT_CAUSE_DATE
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)
			
			-- 3.3.3
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_CDG_TO_INVLD = CASE
											WHEN INVLD_CONFRMD_REPAY_DATE IS NOT NULL 
												THEN DATEDIFF(DD, CODED_DATE, INVLD_CONFRMD_REPAY_DATE)
											WHEN INVLD_APPRVD_DATE IS NOT NULL 
												THEN DATEDIFF(DD, CODED_DATE, INVLD_APPRVD_DATE)		
											WHEN INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL 
												THEN DATEDIFF(DD, CODED_DATE, INVLD_SALES_APPRVD_WRTOFF_DATE)
											WHEN INVLD_PNDG_SALES_RVW_DATE IS NOT NULL 
												THEN DATEDIFF(DD, CODED_DATE, INVLD_PNDG_SALES_RVW_DATE)
									END
			WHERE	
					CODED_DATE IS NOT NULL						
			AND 
					(
						INVLD_CONFRMD_REPAY_DATE >= CODED_DATE
						OR INVLD_APPRVD_DATE >= CODED_DATE
						OR	INVLD_SALES_APPRVD_WRTOFF_DATE >= CODED_DATE
						OR	INVLD_PNDG_SALES_RVW_DATE >= CODED_DATE
					)		
			AND		
					(
						INVLD_CONFRMD_REPAY_DATE >= OTHER_ROOT_CAUSE_CODE_DATE
						OR INVLD_APPRVD_DATE >= OTHER_ROOT_CAUSE_CODE_DATE
						OR	INVLD_SALES_APPRVD_WRTOFF_DATE >= OTHER_ROOT_CAUSE_CODE_DATE
						OR	INVLD_PNDG_SALES_RVW_DATE >= OTHER_ROOT_CAUSE_CODE_DATE
					)		
			AND
					CODED_DATE >= UNKNOWN_DATE
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.3.4.1
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_CDG_SLS_CUSTMR_POD_REQ_ESC = DATEDIFF(DD, ESC_REG_DED_BACK_OFFICE_DATE, OTHER_ROOT_CAUSE_CODE_DATE)
			WHERE	
					CODED_DATE IS NOT NULL			
			--AND 
			--		ESC_REG_DED_BACK_OFFICE_DATE IS NOT NULL
			--AND 
			--		OTHER_ROOT_CAUSE_CODE_DATE IS NOT NULL					
			AND
					OTHER_ROOT_CAUSE_CODE_DATE >= ESC_REG_DED_BACK_OFFICE_DATE
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.3.4.2
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_CDG_ESC_TO_INVLD = CASE
												WHEN INVLD_CONFRMD_REPAY_DATE IS NOT NULL 
													THEN DATEDIFF(DD, INVLD_PNDG_RSC_RVW_DATE, INVLD_CONFRMD_REPAY_DATE)
												WHEN INVLD_APPRVD_DATE IS NOT NULL 
													THEN DATEDIFF(DD, INVLD_PNDG_RSC_RVW_DATE, INVLD_APPRVD_DATE)		
												WHEN INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL 
													THEN DATEDIFF(DD, INVLD_PNDG_RSC_RVW_DATE, INVLD_SALES_APPRVD_WRTOFF_DATE)
												WHEN INVLD_PNDG_SALES_RVW_DATE IS NOT NULL 
													THEN DATEDIFF(DD, INVLD_PNDG_RSC_RVW_DATE, INVLD_PNDG_SALES_RVW_DATE)
											END
			WHERE	
					CODED_DATE IS NOT NULL						
			AND 
					(
						INVLD_CONFRMD_REPAY_DATE >= INVLD_PNDG_RSC_RVW_DATE
						OR INVLD_APPRVD_DATE >= INVLD_PNDG_RSC_RVW_DATE
						OR	INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_PNDG_RSC_RVW_DATE
						OR	INVLD_PNDG_SALES_RVW_DATE >= INVLD_PNDG_RSC_RVW_DATE
					)	
			AND		
					CODED_DATE >= UNKNOWN_DATE
			AND
					STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			-- 3.4.1
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_SLS_BRKR_TO_CLSR = CASE 
												WHEN ( REQ_CONT_FROM_SALES_DATE IS NOT NULL AND REQ_CONT_FROM_SALES_DATE < REQ_BKP_FROM_SALES_DATE 
														AND REQ_CONT_FROM_SALES_DATE < REQ_PRODUCT_ADD_DATE AND REQ_CONT_FROM_SALES_DATE < REQ_PROMO_ADD_DATE
														AND REQ_CONT_FROM_SALES_DATE < REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_CONT_FROM_SALES_DATE < REQ_BKP_FROM_BROKER_DATE
														AND REQ_CONT_FROM_SALES_DATE < REQ_CONT_FROM_BROKER_DATE
													)
													
													THEN DATEDIFF(DD, REQ_CONT_FROM_SALES_DATE, STAT_CLSD_DATE)								

												WHEN ( REQ_BKP_FROM_SALES_DATE IS NOT NULL AND REQ_BKP_FROM_SALES_DATE < REQ_CONT_FROM_SALES_DATE
														AND REQ_BKP_FROM_SALES_DATE < REQ_PRODUCT_ADD_DATE AND REQ_BKP_FROM_SALES_DATE < REQ_PROMO_ADD_DATE
														AND REQ_BKP_FROM_SALES_DATE < REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_BKP_FROM_SALES_DATE < REQ_BKP_FROM_BROKER_DATE
														AND REQ_BKP_FROM_SALES_DATE < REQ_CONT_FROM_BROKER_DATE
													)

													THEN DATEDIFF(DD, REQ_BKP_FROM_SALES_DATE, STAT_CLSD_DATE)		

												WHEN ( REQ_PRODUCT_ADD_DATE IS NOT NULL AND REQ_PRODUCT_ADD_DATE < REQ_CONT_FROM_SALES_DATE
														AND REQ_PRODUCT_ADD_DATE < REQ_BKP_FROM_SALES_DATE AND REQ_PRODUCT_ADD_DATE < REQ_PROMO_ADD_DATE
														AND REQ_PRODUCT_ADD_DATE < REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_PRODUCT_ADD_DATE < REQ_BKP_FROM_BROKER_DATE
														AND REQ_PRODUCT_ADD_DATE < REQ_CONT_FROM_BROKER_DATE
													)

													THEN DATEDIFF(DD, REQ_PRODUCT_ADD_DATE, STAT_CLSD_DATE)

												WHEN ( REQ_PROMO_ADD_DATE IS NOT NULL AND REQ_PROMO_ADD_DATE < REQ_CONT_FROM_SALES_DATE
														AND REQ_PROMO_ADD_DATE < REQ_BKP_FROM_SALES_DATE AND REQ_PROMO_ADD_DATE < REQ_PRODUCT_ADD_DATE
														AND REQ_PROMO_ADD_DATE < REQ_PROMO_ADD_FROM_BROKER_DATE AND REQ_PROMO_ADD_DATE < REQ_BKP_FROM_BROKER_DATE
														AND REQ_PROMO_ADD_DATE < REQ_CONT_FROM_BROKER_DATE
													)

													THEN DATEDIFF(DD, REQ_PROMO_ADD_DATE, STAT_CLSD_DATE)		

												WHEN ( REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL AND REQ_PROMO_ADD_FROM_BROKER_DATE < REQ_CONT_FROM_SALES_DATE
														AND REQ_PROMO_ADD_FROM_BROKER_DATE < REQ_BKP_FROM_SALES_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE < REQ_PRODUCT_ADD_DATE
														AND REQ_PROMO_ADD_FROM_BROKER_DATE < REQ_PROMO_ADD_DATE AND REQ_PROMO_ADD_FROM_BROKER_DATE < REQ_BKP_FROM_BROKER_DATE
														AND REQ_PROMO_ADD_FROM_BROKER_DATE < REQ_CONT_FROM_BROKER_DATE
													)

													THEN DATEDIFF(DD, REQ_PROMO_ADD_FROM_BROKER_DATE, STAT_CLSD_DATE)		

												WHEN ( REQ_BKP_FROM_BROKER_DATE IS NOT NULL AND REQ_BKP_FROM_BROKER_DATE < REQ_CONT_FROM_SALES_DATE
														AND REQ_BKP_FROM_BROKER_DATE < REQ_BKP_FROM_SALES_DATE AND REQ_BKP_FROM_BROKER_DATE < REQ_PRODUCT_ADD_DATE
														AND REQ_BKP_FROM_BROKER_DATE < REQ_PROMO_ADD_DATE AND REQ_BKP_FROM_BROKER_DATE < REQ_PROMO_ADD_FROM_BROKER_DATE
														AND REQ_BKP_FROM_BROKER_DATE < REQ_CONT_FROM_BROKER_DATE
													)

													THEN DATEDIFF(DD, REQ_BKP_FROM_BROKER_DATE, STAT_CLSD_DATE)																																																															

												WHEN ( REQ_CONT_FROM_BROKER_DATE IS NOT NULL AND REQ_CONT_FROM_BROKER_DATE < REQ_CONT_FROM_SALES_DATE
														AND REQ_CONT_FROM_BROKER_DATE < REQ_BKP_FROM_SALES_DATE AND REQ_CONT_FROM_BROKER_DATE < REQ_PRODUCT_ADD_DATE
														AND REQ_CONT_FROM_BROKER_DATE < REQ_PROMO_ADD_DATE AND REQ_CONT_FROM_BROKER_DATE < REQ_PROMO_ADD_FROM_BROKER_DATE
														AND REQ_CONT_FROM_BROKER_DATE < REQ_BKP_FROM_BROKER_DATE
													)

													THEN DATEDIFF(DD, REQ_CONT_FROM_BROKER_DATE, STAT_CLSD_DATE)	
																						
											END					
			WHERE	
					STAT_CLSD_DATE IS NOT NULL 
			--AND			
			--		(
			--			REQ_CONT_FROM_SALES_DATE IS NOT NULL OR REQ_BKP_FROM_SALES_DATE IS NOT NULL
			--			OR	REQ_PRODUCT_ADD_DATE IS NOT NULL OR REQ_PROMO_ADD_DATE IS NOT NULL
			--			OR	REQ_PROMO_ADD_FROM_BROKER_DATE IS NOT NULL OR REQ_BKP_FROM_BROKER_DATE IS NOT NULL
			--			OR	REQ_CONT_FROM_BROKER_DATE IS NOT NULL 
			--		)
			AND			
					(
						STAT_CLSD_DATE >= REQ_CONT_FROM_SALES_DATE OR STAT_CLSD_DATE >= REQ_BKP_FROM_SALES_DATE
						OR	STAT_CLSD_DATE >= REQ_PRODUCT_ADD_DATE OR STAT_CLSD_DATE >= REQ_PROMO_ADD_DATE
						OR	STAT_CLSD_DATE >= REQ_PROMO_ADD_FROM_BROKER_DATE OR STAT_CLSD_DATE >= REQ_BKP_FROM_BROKER_DATE
						OR	STAT_CLSD_DATE >= REQ_CONT_FROM_BROKER_DATE
					)
			AND
					STATUS_FLAG = 'Closed'
			OPTION (MAXDOP 8)

			-- 3.4.2
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_CUSTMR_TO_CLSR = DATEDIFF(DD, REQ_BKP_FROM_CUST_DATE, STAT_CLSD_DATE)										
			WHERE	
					STAT_CLSD_DATE IS NOT NULL 
			--AND			
			--		REQ_BKP_FROM_CUST_DATE IS NOT NULL
			AND
					STAT_CLSD_DATE >= REQ_BKP_FROM_CUST_DATE
			AND
					STATUS_FLAG = 'Closed'
			-- 3.4.3
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_POD_REQ_TO_CLSR = CASE 
												WHEN ( POD_REQ_DATE IS NOT NULL AND POD_REQ_DATE < POD_REQ_CPU_DATE AND POD_REQ_DATE < POD_REQ_DC_DATE)
													THEN DATEDIFF(DD, POD_REQ_DATE, STAT_CLSD_DATE)								
												WHEN ( POD_REQ_CPU_DATE IS NOT NULL AND POD_REQ_CPU_DATE < POD_REQ_DATE AND POD_REQ_CPU_DATE < POD_REQ_DC_DATE)
													THEN DATEDIFF(DD, POD_REQ_CPU_DATE, STAT_CLSD_DATE)		
												WHEN ( POD_REQ_DC_DATE IS NOT NULL AND POD_REQ_DC_DATE < POD_REQ_DATE AND POD_REQ_DC_DATE < POD_REQ_CPU_DATE)
													THEN DATEDIFF(DD, POD_REQ_DC_DATE, STAT_CLSD_DATE)																					
											END					
			WHERE	
					STAT_CLSD_DATE IS NOT NULL 
			--AND			
			--		(
			--			POD_REQ_DATE IS NOT NULL
			--			OR	POD_REQ_CPU_DATE IS NOT NULL						
			--			OR	POD_REQ_DC_DATE IS NOT NULL 
			--		)
			AND			
					(
						STAT_CLSD_DATE >= POD_REQ_DATE
						OR	STAT_CLSD_DATE >= POD_REQ_CPU_DATE
						OR	STAT_CLSD_DATE >= POD_REQ_DC_DATE
					)
			AND
					STATUS_FLAG = 'Closed'
			OPTION (MAXDOP 8)
			-- 3.4.4
			UPDATE	
					ACCENTURE.StgIntermediateLogData
			SET		
					AGE_INVLD_TO_CLSR = CASE 
											WHEN ( INVLD_CONFRMD_REPAY_DATE IS NOT NULL)
											 --AND INVLD_CONFRMD_REPAY_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE 
												--	AND INVLD_CONFRMD_REPAY_DATE < INVLD_PNDG_SALES_RVW_DATE AND INVLD_CONFRMD_REPAY_DATE < INVLD_PNDG_RSC_RVW_DATE
												--	AND INVLD_CONFRMD_REPAY_DATE < INVLD_APPRVD_DATE)
												
												THEN DATEDIFF(DD,INVLD_CONFRMD_REPAY_DATE, STAT_CLSD_DATE)											

											WHEN ( INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL )
											 --AND INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_CONFRMD_REPAY_DATE
												--	AND INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_PNDG_SALES_RVW_DATE AND  INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_PNDG_RSC_RVW_DATE
												--	AND INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_APPRVD_DATE)

												THEN DATEDIFF(DD,INVLD_SALES_APPRVD_WRTOFF_DATE, STAT_CLSD_DATE)

											WHEN ( INVLD_PNDG_SALES_RVW_DATE IS NOT NULL )
											--AND INVLD_PNDG_SALES_RVW_DATE < INVLD_CONFRMD_REPAY_DATE
											--		AND INVLD_PNDG_SALES_RVW_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_PNDG_SALES_RVW_DATE < INVLD_PNDG_RSC_RVW_DATE
											--		AND INVLD_PNDG_SALES_RVW_DATE < INVLD_APPRVD_DATE )

												THEN DATEDIFF(DD,INVLD_PNDG_SALES_RVW_DATE, STAT_CLSD_DATE)

											WHEN ( INVLD_PNDG_RSC_RVW_DATE IS NOT NULL )
											--AND INVLD_PNDG_RSC_RVW_DATE < INVLD_CONFRMD_REPAY_DATE
											--		AND INVLD_PNDG_RSC_RVW_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_PNDG_RSC_RVW_DATE < INVLD_PNDG_SALES_RVW_DATE
											--		AND INVLD_PNDG_RSC_RVW_DATE < INVLD_APPRVD_DATE )

												THEN DATEDIFF(DD,INVLD_PNDG_RSC_RVW_DATE, STAT_CLSD_DATE)

											WHEN ( INVLD_APPRVD_DATE IS NOT NULL )
											--AND INVLD_APPRVD_DATE < INVLD_CONFRMD_REPAY_DATE
											--		AND INVLD_APPRVD_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_APPRVD_DATE < INVLD_PNDG_SALES_RVW_DATE
											--		AND	INVLD_APPRVD_DATE < INVLD_PNDG_RSC_RVW_DATE )

												THEN DATEDIFF(DD,INVLD_APPRVD_DATE, STAT_CLSD_DATE)

										END			
			WHERE	
					STAT_CLSD_DATE IS NOT NULL 
			AND			
					(
						STAT_CLSD_DATE >= INVLD_CONFRMD_REPAY_DATE
						OR STAT_CLSD_DATE >= INVLD_APPRVD_DATE
						OR	STAT_CLSD_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
						OR	STAT_CLSD_DATE >= INVLD_PNDG_SALES_RVW_DATE 
					)
			AND
					STATUS_FLAG = 'Closed'
			OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_StgKPIMetricsDelta]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_StgKPIMetricsDelta]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.StgKPIMetricsDelta												

			INSERT INTO [ACCENTURE].StgKPIMetricsDelta
			(
					--SEQ_ID
					BATCH_ID
					, CASE_ID
					, ROOT_CAUSE_DESC
					, RSN_CASE_DESC
					, DEDUCTION_AMOUNT_USD
					, PLNT_NBR
					, PLANTO_DESC
					, ROOT_CAUSE_CD
					, RSN_CD_PAY_TXT
					, RSN_ESCAL_DESC
					, PROCESSOR_ID
					, PROCESSOR_NM
					, PERS_RESP_NM
					, BAS_LN_DT
					, CLSN_DT
					, BU
					, SALES_MGMT_A
					, SALES_MGMT_B
					, SALES_MGMT_C
					, SALES_MGMT_D
					, WRITE_OFF_AMT
					, CUST_NBR
					, CUST_MAIL_ADDR
					, OTC_CUST_CHNL
					, REPORT_EXTRACTION_DATE
					, VALID_FLAG
					, ACTION_FLAG
					, [ACTIVITY_DATE]
					, [UNDER_TOLERANCE]
					, WRITE_OFF_RSN
					, HST_WK
					, HST_PD
					, HST_YR
					, HST_QTR
					--, FY
					--, WEEK_DETAILS
					--, PERIOD
					--, QTR
					, [UCD]					
			)
			SELECT		
					--ROW_NUMBER() OVER(ORDER BY CASE_ID,HST_WK,HST_YR) SEQ_ID
					BatchId AS BATCH_ID
					, SODL.CASE_ID
					, SODL.ROOT_CAUSE_DESC
					, SODL.RSN_CASE_DESC
					, SODL.CUR_DISPUTED_AMT--SODL.ORIG_AMT
					, SODL.PLNT_NBR
					, SODL.PLANTO_DESC
					, SODL.ROOT_CAUSE_CD
					, SODL.RSN_CD_PAY_TXT
					, SODL.RSN_ESCAL_DESC
					, SODL.PROCESSOR_ID
					, SODL.PROCESSOR_NM
					, SODL.PERS_RESP_NM
					, SODL.BAS_LN_DT
					, SODL.CLSN_DT
					, SODL.BU
					, SODL.SALE_MGMT_A
					, SODL.SALE_MGMT_B
					, SODL.SALE_MGMT_C
					, SODL.SALE_MGMT_D
					, CASE 
						WHEN SODL.CASE_CATG = '0005'
							THEN SODL.CUR_DISPUTED_AMT--SODL.ORIG_AMT
					END AS WRITE_OFF_AMT
					, SODL.CUST_NBR
					, SODL.CUST_MAIL_ADDR
					, SODL.OTC_CUST_CHNL
					, SODL.REPORT_EXT_DT AS [REPORT_EXTRACTION_ DATE]
					, CASE 
						WHEN SODL.INVLD_FLG = 0 
							THEN 'Valid'
						ELSE 'Invalid'
					END AS [VALID_FLAG]
					--, CASE 
					--	WHEN OPN_FLG = 1 
					--		THEN 'Open'
					--	ELSE 'Closed'
					--END AS [ACTION_FLAG]
					, 'Open' AS ACTION_FLAG
					, CASE
						WHEN SODL.OPN_FLG = 1 
							THEN SODL.BAS_LN_DT 
						ELSE SODL.CLSN_DT
					END	AS [ACTIVITY_DATE]
					, CASE 
						WHEN SODL.RSN_CASE_DESC = 'Undertolerance'
							THEN 'Yes'
						ELSE 'No'
					END AS [UNDER_TOLERANCE]
					, CASE 
						WHEN SODL.CASE_CATG = '0005' AND SODL.RSN_CASE_DESC = 'Unknown'
							THEN 'Unknown'
						WHEN DATEDIFF(DD,SODL.BAS_LN_DT,SODL.CLSN_DT) > 180 
							THEN 'Aged Invalid'
						ELSE 'Other Invalid'
					END AS WRITE_OFF_RSN
					, SODL.HST_WK
					, SODL.HST_PD
					, SODL.HST_YR
					, SODL.HST_QTR
					--, CRE_YR AS FY
					--, (SELECT FISC_WK FROM UVW_FISC_CAL WHERE BAS_LN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS WEEK_DETAILS
					--, (SELECT FISC_PD FROM UVW_FISC_CAL WHERE REPORT_EXT_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS PERIOD
					--, (SELECT FISC_QTR FROM UVW_FISC_CAL WHERE BAS_LN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS QTR					
					, CASE
						WHEN SODL.RSN_CASE_CD IN ( 2,0300,0301,0302,0303,0304,0305,0306, 0307,0308,0309,0310,0311)
							THEN 'Yes'
						ELSE 'No'
					END AS [UCD]

			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			JOIN 
					ACCENTURE.StgOTCDeductionsOpen SODO
			ON
					SODL.CASE_ID = SODO.CASE_ID
				AND 
					SODL.ACCTG_DOC_NBR = SODO.ACCTG_DOC_NBR 
			WHERE 
					SODL.OPN_FLG = 1	
									
			UNION
			SELECT		
					--ROW_NUMBER() OVER(ORDER BY CASE_ID,HST_WK,HST_YR) SEQ_ID
					BatchId AS BATCH_ID
					, SODL.CASE_ID
					, SODL.ROOT_CAUSE_DESC
					, SODL.RSN_CASE_DESC
					, SODL.CUR_DISPUTED_AMT--SODL.ORIG_AMT
					, SODL.PLNT_NBR
					, SODL.PLANTO_DESC
					, SODL.ROOT_CAUSE_CD
					, SODL.RSN_CD_PAY_TXT
					, SODL.RSN_ESCAL_DESC
					, SODL.PROCESSOR_ID
					, SODL.PROCESSOR_NM
					, SODL.PERS_RESP_NM
					, SODL.BAS_LN_DT
					, SODL.CLSN_DT
					, SODL.BU
					, SODL.SALE_MGMT_A
					, SODL.SALE_MGMT_B
					, SODL.SALE_MGMT_C
					, SODL.SALE_MGMT_D
					, CASE 
						WHEN SODL.CASE_CATG = '0005'
							THEN SODL.CUR_DISPUTED_AMT--SODL.ORIG_AMT
					END AS WRITE_OFF_AMT
					, SODL.CUST_NBR
					, SODL.CUST_MAIL_ADDR
					, SODL.OTC_CUST_CHNL
					, SODL.REPORT_EXT_DT AS [REPORT_EXTRACTION_ DATE]
					, CASE 
						WHEN SODL.INVLD_FLG = 0 
							THEN 'Valid'
						ELSE 'Invalid'
					END AS [VALID_FLAG]
					--, CASE 
					--	WHEN OPN_FLG = 1 
					--		THEN 'Open'
					--	ELSE 'Closed'
					--END AS [ACTION_FLAG]
					, 'Open' AS ACTION_FLAG
					, CASE
						WHEN SODL.OPN_FLG = 1 
							THEN SODL.BAS_LN_DT 
						ELSE SODL.CLSN_DT
					END	AS [ACTIVITY_DATE]
					, CASE 
						WHEN SODL.RSN_CASE_DESC = 'Undertolerance'
							THEN 'Yes'
						ELSE 'No'
					END AS [UNDER_TOLERANCE]
					, CASE 
						WHEN SODL.CASE_CATG = '0005' AND SODL.RSN_CASE_DESC = 'Unknown'
							THEN 'Unknown'
						WHEN DATEDIFF(DD,SODL.BAS_LN_DT,SODL.CLSN_DT) > 180 
							THEN 'Aged Invalid'
						ELSE 'Other Invalid'
					END AS WRITE_OFF_RSN
					, SODL.HST_WK
					, SODL.HST_PD
					, SODL.HST_YR
					, SODL.HST_QTR
					--, CRE_YR AS FY
					--, (SELECT FISC_WK FROM UVW_FISC_CAL WHERE BAS_LN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS WEEK_DETAILS
					--, (SELECT FISC_PD FROM UVW_FISC_CAL WHERE REPORT_EXT_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS PERIOD
					--, (SELECT FISC_QTR FROM UVW_FISC_CAL WHERE BAS_LN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS QTR					
					, CASE
						WHEN SODL.RSN_CASE_CD IN ( 2,0300,0301,0302,0303,0304,0305,0306, 0307,0308,0309,0310,0311)
							THEN 'Yes'
						ELSE 'No'
					END AS [UCD]

			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL			
			WHERE 
					SODL.OPN_FLG = 1
			AND		
					CASE_ID IS NULL
			UNION
			SELECT		
					Batch_ID AS BATCH_ID
					, CASE_ID
					, ROOT_CAUSE_DESC
					, RSN_CASE_DESC
					, ORIG_AMT
					, PLNT_NBR
					, PLANTO_DESC
					, ROOT_CAUSE_CD
					, RSN_CD_PAY_TXT
					, RSN_ESCAL_DESC
					, PROCESSOR_ID
					, PROCESSOR_NM
					, PERS_RESP_NM
					, BAS_LN_DT
					, CLSN_DT
					, BU
					, SALE_MGMT_A
					, SALE_MGMT_B
					, SALE_MGMT_C
					, SALE_MGMT_D
					, CASE 
						WHEN CASE_CATG = '0005'
							THEN CUR_DISPUTED_AMT--ORIG_AMT
					END AS WRITE_OFF_AMT
					, CUST_NBR
					, CUST_MAIL_ADDR
					, OTC_CUST_CHNL
					, REPORT_EXT_DT AS [REPORT_EXTRACTION_ DATE]
					, CASE 
						WHEN INVLD_FLG = 0 
							THEN 'Valid'
						ELSE 'Invalid'
					END AS [VALID_FLAG]
					, 'Closed' AS [ACTION_FLAG]
					, CLSN_DT AS [ACTIVITY_DATE]
					, CASE 
						WHEN RSN_CASE_DESC = 'Undertolerance'
							THEN 'Yes'
						ELSE 'No'
					END AS [UNDER_TOLERANCE]
					, CASE 
						WHEN CASE_CATG = '0005' AND RSN_CASE_DESC = 'Unknown'
							THEN 'Unknown'
						WHEN DATEDIFF(DD,BAS_LN_DT,CLSN_DT) > 180 
							THEN 'Aged Invalid'
						ELSE 'Other Invalid'
					END AS WRITE_OFF_RSN
					, HST_WK
					, HST_PD
					, HST_YR
					, HST_QTR
					--, CLSN_YR AS FY 
					--, (SELECT FISC_WK FROM UVW_FISC_CAL WHERE CLSN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS WEEK_DETAILS
					--, (SELECT FISC_PD FROM UVW_FISC_CAL WHERE CLSN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS PERIOD
					--, (SELECT FISC_QTR FROM UVW_FISC_CAL WHERE CLSN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS QTR					
					, CASE
						WHEN RSN_CASE_CD IN ( 2,0300,0301,0302,0303,0304,0305,0306, 0307,0308,0309,0310,0311)
							THEN 'Yes'
						ELSE 'No'
					END AS [UCD]

			FROM	
					ACCENTURE.StgOTCDeductionsClosed
-- Code added by Satendra to populate the open line items of closed cases
UNION
SELECT		
					--ROW_NUMBER() OVER(ORDER BY CASE_ID,HST_WK,HST_YR) SEQ_ID
					BatchId AS BATCH_ID
					, SODL.CASE_ID
					, SODL.ROOT_CAUSE_DESC
					, SODL.RSN_CASE_DESC
					, SODL.CUR_DISPUTED_AMT--SODL.ORIG_AMT
					, SODL.PLNT_NBR
					, SODL.PLANTO_DESC
					, SODL.ROOT_CAUSE_CD
					, SODL.RSN_CD_PAY_TXT
					, SODL.RSN_ESCAL_DESC
					, SODL.PROCESSOR_ID
					, SODL.PROCESSOR_NM
					, SODL.PERS_RESP_NM
					, SODL.BAS_LN_DT
					, SODL.CLSN_DT
					, SODL.BU
					, SODL.SALE_MGMT_A
					, SODL.SALE_MGMT_B
					, SODL.SALE_MGMT_C
					, SODL.SALE_MGMT_D
					, CASE 
						WHEN SODL.CASE_CATG = '0005'
							THEN SODL.CUR_DISPUTED_AMT--SODL.ORIG_AMT
					END AS WRITE_OFF_AMT
					, SODL.CUST_NBR
					, SODL.CUST_MAIL_ADDR
					, SODL.OTC_CUST_CHNL
					, SODL.REPORT_EXT_DT AS [REPORT_EXTRACTION_ DATE]
					, CASE 
						WHEN SODL.INVLD_FLG = 0 
							THEN 'Valid'
						ELSE 'Invalid'
					END AS [VALID_FLAG]
					--, CASE 
					--	WHEN OPN_FLG = 1 
					--		THEN 'Open'
					--	ELSE 'Closed'
					--END AS [ACTION_FLAG]
					, 'Open' AS ACTION_FLAG
					, CASE
						WHEN SODL.OPN_FLG = 1 
							THEN SODL.BAS_LN_DT 
						ELSE SODL.CLSN_DT
					END	AS [ACTIVITY_DATE]
					, CASE 
						WHEN SODL.RSN_CASE_DESC = 'Undertolerance'
							THEN 'Yes'
						ELSE 'No'
					END AS [UNDER_TOLERANCE]
					, CASE 
						WHEN SODL.CASE_CATG = '0005' AND SODL.RSN_CASE_DESC = 'Unknown'
							THEN 'Unknown'
						WHEN DATEDIFF(DD,SODL.BAS_LN_DT,SODL.CLSN_DT) > 180 
							THEN 'Aged Invalid'
						ELSE 'Other Invalid'
					END AS WRITE_OFF_RSN
					, SODL.HST_WK
					, SODL.HST_PD
					, SODL.HST_YR
					, SODL.HST_QTR
					--, CRE_YR AS FY
					--, (SELECT FISC_WK FROM UVW_FISC_CAL WHERE BAS_LN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS WEEK_DETAILS
					--, (SELECT FISC_PD FROM UVW_FISC_CAL WHERE REPORT_EXT_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS PERIOD
					--, (SELECT FISC_QTR FROM UVW_FISC_CAL WHERE BAS_LN_DT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS QTR					
					, CASE
						WHEN SODL.RSN_CASE_CD IN ( 2,0300,0301,0302,0303,0304,0305,0306, 0307,0308,0309,0310,0311)
							THEN 'Yes'
						ELSE 'No'
					END AS [UCD]

			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			JOIN 
					ACCENTURE.StgOTCDeductionsClosed SODO
			ON
					SODL.CASE_ID = SODO.CASE_ID
					and SODL.ACCTG_DOC_NBR = SODO.ACCTG_DOC_NBR
			where   SODL.OPN_FLG = 1
			OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_StgLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_StgLogData]
--(
--	@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
						
			INSERT INTO [ACCENTURE].[StgLogData]
			(
					[Batch_ID]
				   ,[EXT_KEY]
				   ,STATUS_FLAG
				   ,[CASE_GUID]
				   ,[CHANGED_BY]
				   ,[POID_ID]
				   ,[SY_DATUM]
				   ,[SY_UZEIT]
				   ,[ARG_STRING]
				   ,[ARG1]
				   ,[ARG2]
			)

			SELECT 
					[Batch_ID]
					, [EXT_KEY]
					, STATUS_FLAG
					, [CASE_GUID]
					, [CHANGED_BY]
					, [POID_ID]
					, [SY_DATUM]
					, [SY_UZEIT]
					, [ARG_STRING]
					, [ARG1]
					, [ARG2]
			FROM	ACCENTURE.StgLogDataDelta

		OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_StgLogDataDelta]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_Populate_StgLogDataDelta]
--(
--	@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			DECLARE @BatchId BIGINT
			SELECT	@BatchId = MAX(BatchId) 
			FROM	ACCENTURE.StgBatchInfo

			TRUNCATE TABLE ACCENTURE.StgLogDataDelta

			INSERT INTO ACCENTURE.StgLogDataDelta
			(
					[EXT_KEY]					
					, [CASE_GUID]
					, [CHANGED_BY]
					, [POID_ID]
					, [SY_DATUM]
					, [SY_UZEIT]
					, [ARG_STRING]
					, [ARG1]
					, [ARG2]
			)
			SELECT 
					A.[EXT_KEY]					
					, A.[CASE_GUID]
					, A.[CHANGED_BY]
					, A.[POID_ID]
					, A.[SY_DATUM]
					, A.[SY_UZEIT]
					, A.[ARG_STRING]
					, A.[ARG1]
					, A.[ARG2]
			
			FROM	
					ACCENTURE.SrcDMLogData A 
			JOIN	
					ACCENTURE.StgUniqueCases B
			ON		
					A.EXT_KEY = B.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS 
			EXCEPT 
			SELECT 
					[EXT_KEY] 	COLLATE SQL_Latin1_General_CP1_CI_AS 
					, [CASE_GUID] COLLATE SQL_Latin1_General_CP1_CI_AS 
					, [CHANGED_BY] COLLATE SQL_Latin1_General_CP1_CI_AS 
					, [POID_ID] COLLATE SQL_Latin1_General_CP1_CI_AS 
					, [SY_DATUM]
					, [SY_UZEIT]
					, [ARG_STRING] COLLATE SQL_Latin1_General_CP1_CI_AS 
					, [ARG1] COLLATE SQL_Latin1_General_CP1_CI_AS 
					, [ARG2] COLLATE SQL_Latin1_General_CP1_CI_AS 
			FROM	
					ACCENTURE.StgLogData  


			UPDATE	
					SLD
			SET		
					Batch_ID = @BatchId
					, STATUS_FLAG = SUC.CASE_STATUS
			FROM	
					ACCENTURE.StgLogDataDelta SLD
			JOIN 
					ACCENTURE.StgUniqueCases SUC
			ON
					SLD.EXT_KEY =SUC.CASE_ID COLLATE SQL_Latin1_General_CP1_CI_AS 

			
		OPTION (MAXDOP 8)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END

GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_StgOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [ACCENTURE].[USP_Populate_StgOTCDeductionsLiveSnapshot]
--(
	--@CurrBatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshot]	

			INSERT INTO [ACCENTURE].[StgOTCDeductionsLiveSnapshot]	
			(
				PROCESSOR_ID,
				PROCESSOR_NM,
				PERS_RESP_ID,
				PERS_RESP_NM,
				COORDINATOR_ID,
				COORDINATOR_NM,
				USR_ID,
				USR_NM,
				RELATION,
				CLASSIFICATION,
				IS_VOIDED,
				IS_CONFIRMED,
				PMT_IN_FLG,
				CASE_ID,
				COMB_FLG,
				CASE_TITL,
				CASE_GUID,
				CASE_TYP,
				COMB_DSPUT_CASE_ID,
				DOC_TYP,
				CO_CD,
				DOC_TYP_DESC,
				ACCTG_DOC_NBR,
				DOC_HDR_TXT,
				ITM_TXT,
				REF_DOC_NBR,
				BILL_DOC,
				EXTR_REF,
				CHG_TM,
				FIN_CUSTDISP_AMT,
				FIN_CUSTDISP_CUR,
				FIN_NOT_SOLV_AMT,
				CURR,
				ASGN,
				POST_KEY,
				POST_KEY_NM,
				FY,
				LN_ITM_NBR,
				OTC_CUST_CHNL,
				CUST_CHNL_TXT,
				BU,
				CUST_NBR,
				CUST_MAIL_ADDR,
				PLNT_NBR,
				PLANTO_DESC,
				SALE_MGMT_A,
				SALE_MGMT_B,
				SALE_MGMT_C,
				SALE_MGMT_D,
				RSN_CD_PAY,
				RSN_CD_PAY_TXT,
				RSN_ESCAL_CD,
				RSN_ESCAL_DESC,
				RSN_CASE_CD,
				RSN_CASE_DESC,
				ROOT_CAUSE_CD,
				ROOT_CAUSE_DESC,
				CASE_STATUS,
				CASE_STATUS_DESC,
				CASE_CATG,
				BAS_LN_DT,
				PLN_CLO_DT,
				CRE_TM,
				CLS_TM,
				AGE,
				PAY_METH_SUPL,
				AMT_LOC_CURR,
				CUR_DISPUTED_AMT,
				ORIG_AMT,
				CLR_MANUALLY,
				AMT_PAID,
				AMT_CR,
				DSPUT_CURR,
				DOC_DT,
				POST_DT,
				DED_USE_FLAG,
				UNDR_TOLRNC_FLG,
				CLSN_DT,
				OPN_FLG,
				CLSN_PD,
				CLSN_YR,
				HST_INT,
				CRE_PD,
				CRE_YR,
				CRE_PD_END_DT,
				CRE_INT,
				CRE_FLG,
				INVLD_FLG,
				HST_WK,
				HST_PD,
				HST_YR,
				BatchId
				)
			SELECT
				PROCESSOR_ID,
				PROCESSOR_NM,
				PERS_RESP_ID,
				PERS_RESP_NM,
				COORDINATOR_ID,
				COORDINATOR_NM,
				USR_ID,
				USR_NM,
				RELATION,
				CLASSIFICATION,
				IS_VOIDED,
				IS_CONFIRMED,
				PMT_IN_FLG,
				CASE_ID,
				COMB_FLG,
				CASE_TITL,
				CASE_GUID,
				CASE_TYP,
				COMB_DSPUT_CASE_ID,
				DOC_TYP,
				CO_CD,
				DOC_TYP_DESC,
				ACCTG_DOC_NBR,
				DOC_HDR_TXT,
				ITM_TXT,
				REF_DOC_NBR,
				BILL_DOC,
				EXTR_REF,
				CHG_TM,
				FIN_CUSTDISP_AMT,
				FIN_CUSTDISP_CUR,
				FIN_NOT_SOLV_AMT,
				CURR,
				ASGN,
				POST_KEY,
				POST_KEY_NM,
				FY,
				LN_ITM_NBR,
				OTC_CUST_CHNL,
				CUST_CHNL_TXT,
				BU,
				CUST_NBR,
				CUST_MAIL_ADDR,
				PLNT_NBR,
				PLANTO_DESC,
				SALE_MGMT_A,
				SALE_MGMT_B,
				SALE_MGMT_C,
				SALE_MGMT_D,
				RSN_CD_PAY,
				RSN_CD_PAY_TXT,
				RSN_ESCAL_CD,
				RSN_ESCAL_DESC,
				RSN_CASE_CD,
				RSN_CASE_DESC,
				ROOT_CAUSE_CD,
				ROOT_CAUSE_DESC,
				CASE_STATUS,
				CASE_STATUS_DESC,
				CASE_CATG,
				BAS_LN_DT,
				PLN_CLO_DT,
				CRE_TM,
				CLS_TM,
				AGE,
				PAY_METH_SUPL,
				AMT_LOC_CURR,
				CUR_DISPUTED_AMT,
				ORIG_AMT,
				CLR_MANUALLY,
				AMT_PAID,
				AMT_CR,
				DSPUT_CURR,
				DOC_DT,
				POST_DT,
				DED_USE_FLAG,
				UNDR_TOLRNC_FLG,
				CLSN_DT,
				OPN_FLG,
				CLSN_PD,
				CLSN_YR,
				HST_INT,
				CRE_PD,
				CRE_YR,
				CRE_PD_END_DT,
				CRE_INT,
				CRE_FLG,
				INVLD_FLG,
				HST_WK,
				HST_PD,
				HST_YR,
				BatchId	
			FROM	[ACCENTURE].[SrcOTCDeductionsLiveSnapshot]
			OPTION(MAXDOP 8)
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Populate_StgUniqueCases]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [ACCENTURE].[USP_Populate_StgUniqueCases]
--(
--	@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE ACCENTURE.StgUniqueCases

			DECLARE @BatchId BIGINT
			SELECT	@BatchId = MAX(BatchId) 
			FROM	ACCENTURE.StgBatchInfo

			DECLARE @maxyrwk varchar(10), @maxyr varchar(10), @maxwk varchar(10)
			
			SELECT	@maxyr = MAX(HST_YR) 
			FROM	ACCENTURE.SrcOTCDeductionsLiveSnapshot

			SELECT	@maxwk = MAX(HST_WK) 
            FROM	ACCENTURE.SrcOTCDeductionsLiveSnapshot
            WHERE	HST_YR = @maxyr

			SET		@maxyrwk = CONCAT(@maxyr,@maxwk)


						
			;WITH CTE
			AS
			(
					SELECT	
							MAX(ACCTG_DOC_NBR) ACCTG_DOC_NBR,
							A.CASE_ID, 
							A.OPN_FLG						
					FROM	
							ACCENTURE.StgOTCDeductionsLiveSnapshot A 
					INNER JOIN
					(
							SELECT	
									CASE_ID
									, OPN_FLG
									, MAX(FY) MaxFy
							FROM	
									ACCENTURE.StgOTCDeductionsLiveSnapshot											
							GROUP BY 
									CASE_ID,OPN_FLG
					)B
					ON	
							A.CASE_ID = B.CASE_ID
					AND 
							A.FY = B.MaxFy
					AND		
							A.OPN_FLG = B.OPN_FLG

					--WHERE	
					--		A.CASE_ID  IS NOT NULL	
					--		--AND  A.[CASE_ID] in( '000002256992','000002256993','000002257768','000002194294','000002261528')			
					--AND		
					--		CONCAT(HST_YR,HST_WK) = @maxyrwk
					--AND 
					--		BatchId = @BatchId
					GROUP BY
							A.CASE_ID,A.OPN_FLG				
			)
		
			SELECT	
					CASE_ID
					, ACCTG_DOC_NBR
					, SEQ_ID
					, OPN_FLG		
			INTO	#TmpUniqueCASES_testStatusLogic						
			FROM	
				(
					SELECT	
						--DISTINCT
						  B.CASE_ID
						, B.ACCTG_DOC_NBR						
						, B.OPN_FLG
						, MAX(B.SEQ_ID) SEQ_ID
				FROM	
						CTE A
				JOIN	
						ACCENTURE.StgOTCDeductionsLiveSnapshot B
				ON		
						A.CASE_ID = B.CASE_ID
				AND		
						A.ACCTG_DOC_NBR = B.ACCTG_DOC_NBR
				AND 
						A.OPN_FLG = B.OPN_FLG
				--WHERE	
				--		CONCAT(B.HST_YR,B.HST_WK) = @maxyrwk
				--AND
				--		B.BatchId = @BatchId
				GROUP BY B.CASE_ID, B.ACCTG_DOC_NBR, B.OPN_FLG
				)X 

			--UNION
			--SELECT 
			--	DISTINCT 
			--		CASE_ID
			--		, ACCTG_DOC_NBR
			--		, OPN_FLG
			--FROM	
			--		ACCENTURE.SrcOTCDeductionsLiveSnapshot
			--WHERE	
			--		CASE_ID IS NULL
			--AND		
			--		CONCAT(HST_YR,HST_WK) = @maxyrwk
			--AND
			--			BatchId = @BatchId
			
			--DELETE 
			--		SUC
			--FROM	
			--		ACCENTURE.StgUniqueCases SUC
			--JOIN
			--		#TmpUniqueCASES_testStatusLogic tmp
			--ON
			--	SUC.CASE_ID = tmp.CASE_ID
			--AND 
				--	SUC.CASE_STATUS =  tmp.OPN_FLG

			INSERT INTO ACCENTURE.StgUniqueCases
			(
					DED_SEQ_ID
					, BatchId
					, CASE_ID
					, ACCTG_DOC_NBR
					, CASE_STATUS
			)
			SELECT 
					SEQ_ID AS DED_SEQ_ID
					, @BatchId
					, CASE_ID
					, ACCTG_DOC_NBR
					, CASE 
						WHEN OPN_FLG = 1 
							THEN 'Open'
						ELSE 'Closed'
					END AS CASE_STATUS
			FROM	
					#TmpUniqueCASES_testStatusLogic

			DROP TABLE #TmpUniqueCASES_testStatusLogic

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_PopulateBatchInfo]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ACCENTURE].[USP_PopulateBatchInfo]
(
	@JobName VARCHAR(100)
	--@BatchId BIGINT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			INSERT INTO StgBatchInfo(JobName)			
				VALUES (@JobName)

			--SET @BatchId = SCOPE_IDENTITY()

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END 


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Update_SrcOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [ACCENTURE].[USP_Update_SrcOTCDeductionsLiveSnapshot]
--(
	--@CurrBatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			DECLARE @CurrBatchId BIGINT	
			
		
			SELECT  CONCAT(HST_WK, HST_YR)WkYr
			into #tmp 
			FROM    ACCENTURE.SrcOTCDeductionsLiveSnapshot 
			WHERE BatchId IS NULL

			TRUNCATE TABLE ACCENTURE.DELETEDSrcOTCDeductionsLiveSnapshot

			INSERT INTO ACCENTURE.DELETEDSrcOTCDeductionsLiveSnapshot
			SELECT * 
			FROM    ACCENTURE.SrcOTCDeductionsLiveSnapshot
			WHERE CONCAT(HST_WK, HST_YR) IN(SELECT WkYr FROM #tmp)
			AND       BatchId IS NOT NULL 
			OPTION (MAXDOP 8)


			DELETE 
			FROM    ACCENTURE.SrcOTCDeductionsLiveSnapshot
			WHERE CONCAT(HST_WK, HST_YR) IN(SELECT WkYr FROM #tmp)
			AND       BatchId IS NOT NULL
			OPTION (MAXDOP 8)
	

			--- updating Batchid 			

			SELECT	
					@CurrBatchId = MAX(BatchId)					
			FROM	
					ACCENTURE.StgBatchInfo			
								
			UPDATE	
					SODL
			SET
					BatchId = @CurrBatchId
			FROM	
					ACCENTURE.SrcOTCDeductionsLiveSnapshot SODL
			WHERE 
					BatchId IS NULL
			OPTION (MAXDOP 8)


			DROP TABLE #tmp 
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Update_StgKPIMetricsDelta]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [ACCENTURE].[USP_Update_StgKPIMetricsDelta]
--(
	--@BatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			UPDATE	
					SMD
			SET 
					DEDUCTION_CONTROLLABLE_UNCONTROLLABLE = SDR.ControllableFlag
					, TEAM = SDR.Team
					, TRADE_FLAG = SDR.TradeFlag
			FROM	
					ACCENTURE.StgKPIMetricsDelta SMD
			JOIN 
					ACCENTURE.StgDimReason SDR
			ON 
					SMD.RSN_CASE_DESC = SDR.DESCRIPTION
			OPTION (MAXDOP 8)

			------------------------- Coded Added By Satendra to update Planto_Desc
			
			UPDATE	
					SMD
			SET  PLANTO_DESC = PDR.PLANTO_DESC,
				 PLNT_NBR = PDR.PLNT_NBR
			FROM	
					ACCENTURE.StgKPIMetricsDelta SMD
			JOIN 
					ACCENTURE.StgDimPlanToDecscription PDR
			ON 
					SMD.CUST_NBR = PDR.CUST_NBR and SMD.PLANTO_DESC is null
			OPTION (MAXDOP 8)


			UPDATE	
					SMD
			SET  CP_OR_NOT = PDR.CP_OR_NOT
			FROM	
					ACCENTURE.StgKPIMetricsDelta SMD
			JOIN 
					ACCENTURE.StgDimCPUflag PDR
			ON 
					SMD.CUST_NBR = PDR.CUST_NBR 
			OPTION (MAXDOP 8)


			-------------------------------------------------------------------------------

			UPDATE	
					SMD
			SET 
					LAST_DAY_OF_WEEK_FLAG = 'Y'
			FROM 
					ACCENTURE.StgKPIMetricsDelta SMD
			JOIN 
					KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON 
					SMD.REPORT_EXTRACTION_DATE = UFC.FISC_WK_END_DT
			--WHERE
			--		BatchId = @CurrBatchId
			OPTION (MAXDOP 8)			

			UPDATE 
					SMD
			SET
					WEEK_DETAILS = UFC.FISC_WK
					, FY = UFC.FISC_YR
					, PERIOD= UFC.FISC_PD
					, QTR = UFC.FISC_QTR
					, DAY_OF_WEEK = DAY(REPORT_EXTRACTION_DATE)
			FROM		
					ACCENTURE.StgKPIMetricsDelta SMD

			JOIN 
					KNA_FIN.dbo.UVW_FISC_CAL UFC 
			ON
					SMD.REPORT_EXTRACTION_DATE BETWEEN UFC.FISC_WK_STRT_DT AND UFC.FISC_WK_END_DT
			--WHERE
			--		ACTION_FLAG = 'Open'
			OPTION (MAXDOP 8)

			UPDATE 
					SMD
			SET
					CRE_WK = UFC.FISC_WK
					, CRE_YR = UFC.FISC_YR
					, CRE_PD= UFC.FISC_PD
					, CRE_QTR = UFC.FISC_QTR					
			FROM		
					ACCENTURE.StgKPIMetricsDelta SMD

			JOIN 
					KNA_FIN.dbo.UVW_FISC_CAL UFC 
			ON
					SMD.BAS_LN_DT BETWEEN UFC.FISC_WK_STRT_DT AND UFC.FISC_WK_END_DT
			--WHERE
			--		ACTION_FLAG = 'Open' Commented by satendra
			OPTION (MAXDOP 8)

			------------- Code added by Satendra to remove same week open record in which case got closed 

			DELETE	SMD
			FROM	ACCENTURE.StgKPIMetricsDelta SMD
			JOIN	
			(		SELECT 
							CASE_ID
							, WEEK_DETAILS
							, ACTION_FLAG
							, ROW_NUMBER() OVER (PARTITION BY CASE_ID, WEEK_DETAILS ORDER BY ACTION_FLAG)SEQ 
					FROM	ACCENTURE.StgKPIMetricsDelta 
					WHERE	CASE_ID IS NOT NULL
			)A
			ON		A.CASE_ID = SMD.CASE_ID
			AND		A.WEEK_DETAILS = SMD.WEEK_DETAILS
			AND		A.SEQ > 1
			WHERE	SMD.ACTION_FLAG = 'Open'
			AND		EXISTS (
								SELECT	CASE_ID 
								FROM	ACCENTURE.StgKPIMetricsDelta 
								WHERE	CASE_ID = SMD.CASE_ID 
								AND		WEEK_DETAILS=SMD.WEEK_DETAILS 
								AND		ACTION_FLAG ='Closed'
							)

			-------------------------------------------------------

			;WITH CTE_A
			AS
			(
				SELECT 
						ROW_NUMBER()OVER(ORDER BY ORIG_AMT DESC) RowNo
						, A.PLANTO_DESC
						, A.ORIG_AMT
				FROM 
				(
					SELECT
							PLANTO_DESC
							, SUM(DEDUCTION_AMOUNT_USD) ORIG_AMT
					FROM	ACCENTURE.StgKPIMetricsDelta
					--FROM	ACCENTURE.StgOTCDeductionsOpen
					GROUP BY PLANTO_DESC
				)A
			)
			UPDATE 
					SKD
			SET 
					TOP_20_CUSTOMERS = CASE 
											WHEN CTE.RowNo BETWEEN 1 AND 20
												THEN 'Y'
											ELSE 'N'
										END
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN	
					CTE_A CTE
			ON 
					SKD.CUST_NBR = CTE.PLANTO_DESC
			OPTION (MAXDOP 8)

			;WITH CTE_A
			AS
			(
				SELECT 
						ROW_NUMBER()OVER(ORDER BY ORIG_AMT DESC) RowNo
						, A.PLANTO_DESC
						, A.ORIG_AMT
				FROM 
				(
					SELECT
							PLANTO_DESC
							, SUM(DEDUCTION_AMOUNT_USD) ORIG_AMT
					FROM	ACCENTURE.StgKPIMetricsDelta
					--FROM	ACCENTURE.StgOTCDeductionsOpen
					GROUP BY PLANTO_DESC
				)A
			)
			UPDATE 
					SKD
			SET 
					TOP_10_CUSTOMERS = CASE 
											WHEN CTE.RowNo BETWEEN 1 AND 10
												THEN 'Y'
											ELSE 'N'
										END
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN	
					CTE_A CTE
			ON 
					SKD.PLANTO_DESC = CTE.PLANTO_DESC
			OPTION (MAXDOP 8)

			UPDATE
					SKD
			SET
					AGE_END_OF_PERIOD = CASE 
											WHEN ACTION_FLAG = 'Open'
												THEN DATEDIFF(DD,BAS_LN_DT, GETDATE())
											ELSE DATEDIFF(DD,CLSN_DT, GETDATE())
										END
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD						
			OPTION (MAXDOP 8)

			UPDATE 
					SKD
			SET 
					--INVLD_CONFRMD_REPAY_DATE = PLD.INVLD_CONFRMD_REPAY_DATE
					--, INVLD_APPRVD_DATE = PLD.INVLD_APPRVD_DATE
					--, INVLD_SALES_APPRVD_WRTOFF_DATE = PLD.INVLD_SALES_APPRVD_WRTOFF_DATE
					--, INVLD_PNDG_SALES_RVW_DATE = PLD.INVLD_PNDG_SALES_RVW_DATE
					--, INVLD_PNDG_RSC_RVW_DATE = PLD.INVLD_PNDG_RSC_RVW_DATE
					CATEG_DATE = PLD.CATEG_DATE					
			--		, AGE_AUTOCASH_TO_CODED = PLD.AGE_AUTOCASH_TO_CODED
			--		, AGE_INVCE_AUTOCASH_TO_UNKWN = PLD.AGE_INVCE_AUTOCASH_TO_UNKWN
			--		, AGE_UNKWN_AUTOCASH_TO_UNKWN = PLD.AGE_UNKWN_AUTOCASH_TO_UNKWN					
					, AGE_CDG_TO_ACTN_TKN = PLD.AGE_CDG_TO_ACTN_TKN
					
					--, AGE_CDG_TO_INVLD = PLD.AGE_CDG_TO_INVLD
					, AGE_CDG_SLS_CUSTMR_POD_REQ_ESC = PLD.AGE_CDG_SLS_CUSTMR_POD_REQ_ESC
					--, AGE_CDG_ESC_TO_INVLD = PLD.AGE_CDG_ESC_TO_INVLD
			--		--, AGE_SLS_BRKR_TO_CLSR = PLD.AGE_SLS_BRKR_TO_CLSR
			--		--, AGE_CUSTMR_TO_CLSR = PLD.AGE_CUSTMR_TO_CLSR
			--		--, AGE_POD_REQ_TO_CLSR = PLD.AGE_POD_REQ_TO_CLSR
			--		--, AGE_INVLD_TO_CLSR = PLD.AGE_INVLD_TO_CLSR
					--, DED_FIRST_PASS_CODED_DATE = PLD.CODED_DATE
					--, CODED_DATE = PLD.CODED_DATE
			--		, STAT_CLSD_DATE = PLD.STAT_CLSD_DATE

			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON 
					SKD.CASE_ID = PLD.CASE_ID
			--WHERE
			--		PLD.STATUS_FLAG = 'Open'
			OPTION (MAXDOP 8)

			--JOIN 
			--		KNA_FIN.dbo.UVW_FISC_CAL UFC
			--ON
			--		PLD.CODED_DATE BETWEEN UFC.FISC_WK_STRT_DT AND UFC.FISC_WK_END_DT

			
			SELECT	
					PLD.CASE_ID
					, INVLD_APPRVD_DATE
					, INVLD_CONFRMD_REPAY_DATE
					, INVLD_PNDG_RSC_RVW_DATE
					, INVLD_PNDG_SALES_RVW_DATE
					, INVLD_SALES_APPRVD_WRTOFF_DATE
					, 0 AS INVLD_WK
					, 0 AS INVLD_YR
			INTO	#TempCodingToInvalidCases
			FROM	
					ACCENTURE.PublishLogData PLD
			WHERE	
					STATUS_FLAG = 'Open'			
			AND		
					AGE_CDG_TO_INVLD IS NOT NULL
			
			UPDATE	tmp
			SET		tmp.INVLD_WK = UFC.FISC_WK
					, tmp.INVLD_YR = UFC.FISC_YR
			FROM	#TempCodingToInvalidCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		INVLD_APPRVD_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			WHERE
					INVLD_APPRVD_DATE IS NOT NULL	
				OR 
			(		INVLD_APPRVD_DATE >= INVLD_CONFRMD_REPAY_DATE AND 
					INVLD_APPRVD_DATE >= INVLD_PNDG_RSC_RVW_DATE AND
					INVLD_APPRVD_DATE >= INVLD_PNDG_SALES_RVW_DATE AND
					INVLD_APPRVD_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
			)

			UPDATE	tmp
			SET		tmp.INVLD_WK = UFC.FISC_WK
					, tmp.INVLD_YR = UFC.FISC_YR
			FROM	#TempCodingToInvalidCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		INVLD_CONFRMD_REPAY_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			WHERE
				INVLD_CONFRMD_REPAY_DATE IS NOT NULL
				OR	
			(		INVLD_CONFRMD_REPAY_DATE >= INVLD_APPRVD_DATE AND 
					INVLD_CONFRMD_REPAY_DATE >= INVLD_PNDG_RSC_RVW_DATE	AND
					INVLD_CONFRMD_REPAY_DATE >= INVLD_PNDG_SALES_RVW_DATE AND
					INVLD_CONFRMD_REPAY_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
			)

			UPDATE	tmp
			SET		tmp.INVLD_WK = UFC.FISC_WK
					, tmp.INVLD_YR = UFC.FISC_YR
			FROM	#TempCodingToInvalidCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		INVLD_PNDG_RSC_RVW_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			WHERE	
			INVLD_PNDG_RSC_RVW_DATE IS NOT NULL
			OR
			(		INVLD_PNDG_RSC_RVW_DATE >= INVLD_APPRVD_DATE AND 
					INVLD_PNDG_RSC_RVW_DATE	>= INVLD_CONFRMD_REPAY_DATE AND
					INVLD_PNDG_RSC_RVW_DATE >= INVLD_PNDG_SALES_RVW_DATE AND
					INVLD_PNDG_RSC_RVW_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
			)

			UPDATE	tmp
			SET		tmp.INVLD_WK = UFC.FISC_WK
					, tmp.INVLD_YR = UFC.FISC_YR
			FROM	#TempCodingToInvalidCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		INVLD_PNDG_SALES_RVW_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			WHERE	
			INVLD_PNDG_SALES_RVW_DATE IS NOT NULL
			OR 
			(		INVLD_PNDG_SALES_RVW_DATE >= INVLD_APPRVD_DATE AND 
					INVLD_PNDG_SALES_RVW_DATE >= INVLD_CONFRMD_REPAY_DATE AND
					INVLD_PNDG_SALES_RVW_DATE >= INVLD_PNDG_RSC_RVW_DATE AND
					INVLD_PNDG_SALES_RVW_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
			)

			UPDATE	tmp
			SET		tmp.INVLD_WK = UFC.FISC_WK
					, tmp.INVLD_YR = UFC.FISC_YR
			FROM	#TempCodingToInvalidCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		INVLD_SALES_APPRVD_WRTOFF_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			WHERE	
			INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL
			OR
			(		INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_APPRVD_DATE AND 
					INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_CONFRMD_REPAY_DATE AND
					INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_PNDG_RSC_RVW_DATE AND
					INVLD_SALES_APPRVD_WRTOFF_DATE >= INVLD_PNDG_SALES_RVW_DATE
			)

			UPDATE	
					SKD
			SET		
					INVLD_CONFRMD_REPAY_DATE = PLD.INVLD_CONFRMD_REPAY_DATE
					, INVLD_APPRVD_DATE = PLD.INVLD_APPRVD_DATE
					, INVLD_SALES_APPRVD_WRTOFF_DATE = PLD.INVLD_SALES_APPRVD_WRTOFF_DATE
					, INVLD_PNDG_SALES_RVW_DATE = PLD.INVLD_PNDG_SALES_RVW_DATE
					, INVLD_PNDG_RSC_RVW_DATE = PLD.INVLD_PNDG_RSC_RVW_DATE
					, AGE_CDG_TO_INVLD = PLD.AGE_CDG_TO_INVLD
					, AGE_CDG_ESC_TO_INVLD = PLD.AGE_CDG_ESC_TO_INVLD
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON 
					SKD.CASE_ID = PLD.CASE_ID	
			JOIN	
					#TempCodingToInvalidCases tmp
			ON		
					SKD.CASE_ID = tmp.CASE_ID
			WHERE	
					SKD.HST_WK = tmp.INVLD_WK
			AND 
					SKD.HST_YR = tmp.INVLD_YR
			OPTION (MAXDOP 8)

			SELECT	
					PLD.CASE_ID
					, PLD.OTHER_ROOT_CAUSE_CODE_DATE
					, 0 AS OTHER_RC_WK
					, 0 AS OTHER_RC_YR
			INTO	#TmpOtherRCCases
			FROM	
					ACCENTURE.PublishLogData PLD
			WHERE	
					STATUS_FLAG = 'Open'			
			AND		
					AGE_CDG_SLS_CUSTMR_POD_REQ_ESC IS NOT NULL

			UPDATE	tmp
			SET		OTHER_RC_WK = UFC.FISC_WK
					, OTHER_RC_YR = UFC.FISC_YR
			FROM	#TmpOtherRCCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		OTHER_ROOT_CAUSE_CODE_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT

			UPDATE	
					SKD
			SET		
					AGE_CDG_SLS_CUSTMR_POD_REQ_ESC = PLD.AGE_CDG_SLS_CUSTMR_POD_REQ_ESC
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON 
					SKD.CASE_ID = PLD.CASE_ID	
			JOIN	
					#TmpOtherRCCases tmp
			ON		
					SKD.CASE_ID = tmp.CASE_ID
			WHERE	
					SKD.HST_WK = tmp.OTHER_RC_WK
			AND 
					SKD.HST_YR = tmp.OTHER_RC_YR
			OPTION (MAXDOP 8)

			; WITH CTE_Coded_UnknownCases
			AS
			(
				SELECT	
						CASE_ID
						, STATUS_FLAG
						, CODED_DATE
						, UNKNOWN_DATE
						, BLANK_ROOT_CAUSE_DATE
						, 0 AS CODED_YR
						, 0 AS CODED_WK
						, 0 AS UNKNOWN_YR
						, 0 AS UNKNOWN_WK
						, 0 AS BLANK_RC_YR
						, 0 AS BLANK_RC_WK
			
				FROM	
						ACCENTURE.PublishLogData PLD
				WHERE	
						--STATUS_FLAG = 'Open'	AND		
						AGE_UNKWN_AUTOCASH_TO_UNKWN IS NOT NULL
				UNION
				SELECT	
						CASE_ID
						, STATUS_FLAG
						, CODED_DATE
						, UNKNOWN_DATE
						, BLANK_ROOT_CAUSE_DATE
						, 0 AS CODED_YR
						, 0 AS CODED_WK
						, 0 AS UNKNOWN_YR
						, 0 AS UNKNOWN_WK
						, 0 AS BLANK_RC_YR
						, 0 AS BLANK_RC_WK
			
				FROM	
						ACCENTURE.PublishLogData PLD
				WHERE	
						--STATUS_FLAG = 'Open'	AND		
						AGE_INVCE_AUTOCASH_TO_UNKWN IS NOT NULL
				UNION
				SELECT	
						CASE_ID
						, STATUS_FLAG
						, CODED_DATE
						, UNKNOWN_DATE
						, BLANK_ROOT_CAUSE_DATE
						, 0 AS CODED_YR
						, 0 AS CODED_WK
						, 0 AS UNKNOWN_YR
						, 0 AS UNKNOWN_WK
						, 0 AS BLANK_RC_YR
						, 0 AS BLANK_RC_WK
			
				FROM	
						ACCENTURE.PublishLogData PLD
				WHERE	
						--STATUS_FLAG = 'Open'	AND		
						( AGE_AUTOCASH_TO_CODED IS NOT NULL OR AGE_SALES_FLWUP_TO_CODED IS NOT NULL
							OR AGE_CUSTMR_FLWUP_TO_CODED IS NOT NULL OR AGE_POD_REQ_TO_CODED IS NOT NULL
							OR AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC IS NOT NULL OR AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC IS NOT NULL
							OR AGE_UNWN_POD_REQ_TO_CODED_PST_ESC IS NOT NULL 
						)
				UNION
				SELECT	
						CASE_ID
						, STATUS_FLAG
						, CODED_DATE
						, UNKNOWN_DATE
						, BLANK_ROOT_CAUSE_DATE
						, 0 AS CODED_YR
						, 0 AS CODED_WK
						, 0 AS UNKNOWN_YR
						, 0 AS UNKNOWN_WK
						, 0 AS BLANK_RC_YR
						, 0 AS BLANK_RC_WK
			
				FROM	
						ACCENTURE.PublishLogData PLD
				WHERE	
						--STATUS_FLAG = 'Open' AND		
						AGE_RSPNS_RCVD_TO_ACTN_TKN IS NOT NULL

			)
			SELECT	*
			INTO	
					#TmpOpenCases
			FROM	CTE_Coded_UnknownCases
	
			UPDATE
					tmp
			SET 
					tmp.CODED_WK = UFC.FISC_WK
					, tmp.CODED_YR = UFC.FISC_YR
			FROM	#TmpOpenCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		CODED_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT

			UPDATE
					tmp
			SET 
					tmp.UNKNOWN_WK = UFC.FISC_WK
					, tmp.UNKNOWN_YR = UFC.FISC_YR
			FROM	#TmpOpenCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		UNKNOWN_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			OPTION (MAXDOP 8)

			UPDATE
					tmp
			SET 
					tmp.BLANK_RC_WK = UFC.FISC_WK
					, tmp.BLANK_RC_YR = UFC.FISC_YR
			FROM	#TmpOpenCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		BLANK_ROOT_CAUSE_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			OPTION (MAXDOP 8)

			SELECT	
					CASE_ID
					, STATUS_FLAG						
					, BLANK_ROOT_CAUSE_DATE
					, 0 AS BLANK_RC_YR
					, 0 AS BLANK_RC_WK
			INTO 
					#TmpBlankCases
			FROM	
					ACCENTURE.PublishLogData PLD
			WHERE	
					STATUS_FLAG = 'Open'			
			AND		
					AGE_ACTN_TKN_TO_RSPNS_RCVD IS NOT NULL
			
			UPDATE
					tmp
			SET 
					tmp.BLANK_RC_WK = UFC.FISC_WK
					, tmp.BLANK_RC_YR = UFC.FISC_YR
			FROM	#TmpBlankCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		BLANK_ROOT_CAUSE_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			OPTION (MAXDOP 8)

			UPDATE 
					SKD
			SET
					AGE_ACTN_TKN_TO_RSPNS_RCVD = PLD.AGE_ACTN_TKN_TO_RSPNS_RCVD	
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN 
					#TmpBlankCases Tmp
			ON
					SKD.CASE_ID = Tmp.CASE_ID			
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON
					SKD.CASE_ID = PLD.CASE_ID
			WHERE
					SKD.ACTION_FLAG = 'Open'
			AND
					SKD.HST_WK = Tmp.BLANK_RC_WK
			AND
					SKD.HST_YR = Tmp.BLANK_RC_YR
			OPTION(MAXDOP 8)

			UPDATE 
					SKD
			SET
					AGE_AUTOCASH_TO_CODED = PLD.AGE_AUTOCASH_TO_CODED		
					, AGE_SALES_FLWUP_TO_CODED = PLD.AGE_SALES_FLWUP_TO_CODED
					, AGE_CUSTMR_FLWUP_TO_CODED = PLD.AGE_CUSTMR_FLWUP_TO_CODED
					, AGE_POD_REQ_TO_CODED = PLD.AGE_POD_REQ_TO_CODED	
					, AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC = PLD.AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC
					, AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC = PLD.AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC
					, AGE_UNWN_POD_REQ_TO_CODED_PST_ESC = PLD.AGE_UNWN_POD_REQ_TO_CODED_PST_ESC 
					, DED_FIRST_PASS_CODED_DATE = PLD.CODED_DATE
					, CODED_DATE = PLD.CODED_DATE		
					, CODED_WK = Tmp.CODED_WK
					, CODED_YR = Tmp.CODED_YR
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN 
					#TmpOpenCases Tmp
			ON
					SKD.CASE_ID = Tmp.CASE_ID			
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON
					SKD.CASE_ID = PLD.CASE_ID
			WHERE
					--SKD.ACTION_FLAG = 'Open'	AND
					SKD.HST_WK = Tmp.CODED_WK
			AND
					SKD.HST_YR = Tmp.CODED_YR
			--AND
			--		PLD.CODED_DATE IS NOT NULL
			--WHERE
					--SKD.RSN_CASE_DESC = 'Unknown'
			OPTION(MAXDOP 8)

			UPDATE 
					SKD
			SET
					AGE_INVCE_AUTOCASH_TO_UNKWN = PLD.AGE_INVCE_AUTOCASH_TO_UNKWN
					, AGE_UNKWN_AUTOCASH_TO_UNKWN = PLD.AGE_UNKWN_AUTOCASH_TO_UNKWN	
					, AGE_UNKWN_CDG_TO_ACTN_TAKEN = PLD.AGE_UNKWN_CDG_TO_ACTN_TAKEN					
					, AGE_RSPNS_RCVD_TO_ACTN_TKN = PLD.AGE_RSPNS_RCVD_TO_ACTN_TKN
					, AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC = PLD.AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC					
					, AGE_UNWN_ESC_TO_INVLD = PLD.AGE_UNWN_ESC_TO_INVLD 
					, UNKNOWN_DATE = PLD.UNKNOWN_DATE
					, UNKNOWN_WK = Tmp.UNKNOWN_WK
					, UNKNOWN_YR = Tmp.UNKNOWN_YR
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN 
					#TmpOpenCases Tmp
			ON
					SKD.CASE_ID = Tmp.CASE_ID			
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON
					SKD.CASE_ID = PLD.CASE_ID
			WHERE
					SKD.ACTION_FLAG = 'Open'
			AND
					SKD.HST_WK = Tmp.UNKNOWN_WK
			AND
					SKD.HST_YR = Tmp.UNKNOWN_YR
			--AND
			--		PLD.UNKNOWN_DATE IS NOT NULL
			OPTION (MAXDOP 8)

			UPDATE 
					SKD
			SET 					
					AGE_SLS_BRKR_TO_CLSR = PLD.AGE_SLS_BRKR_TO_CLSR
					, AGE_CUSTMR_TO_CLSR = PLD.AGE_CUSTMR_TO_CLSR
					, AGE_POD_REQ_TO_CLSR = PLD.AGE_POD_REQ_TO_CLSR
					, AGE_INVLD_TO_CLSR = PLD.AGE_INVLD_TO_CLSR
					--, CODED_DATE = PLD.CODED_DATE
					, STAT_CLSD_DATE = PLD.STAT_CLSD_DATE

			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			JOIN	
					ACCENTURE.PublishLogData PLD
			ON 
					SKD.CASE_ID = PLD.CASE_ID
			WHERE
					PLD.STATUS_FLAG = 'Closed'
			OPTION (MAXDOP 8)

			UPDATE 
					SKD
			SET 
					AGE_INVLD_PNDG_RVW = DATEDIFF(DD, BAS_LN_DT,GETDATE())																						
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD			
			WHERE
					BAS_LN_DT IS NOT NULL
			AND					
					( 
						INVLD_PNDG_RSC_RVW_DATE IS NOT NULL 
						OR INVLD_PNDG_SALES_RVW_DATE IS NOT NULL
					)
			AND 
					INVLD_APPRVD_DATE IS NULL
			AND
					ACTION_FLAG = 'Open'
			OPTION (MAXDOP 8)

			SELECT	CASE_ID
					, INVLD_APPRVD_DATE
					, 0 AS INVLD_APPRVD_WK
					, 0 AS INVLD_APPRVD_YR
			INTO	#TmpInvalidCases
			FROM	ACCENTURE.StgKPIMetricsDelta	
			WHERE	INVLD_APPRVD_DATE IS NOT NULL	
			
			UPDATE	tmp
			SET		INVLD_APPRVD_WK = UFC.FISC_WK
					, INVLD_APPRVD_YR = UFC.FISC_YR
			FROM	#TmpInvalidCases tmp
			JOIN	KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		INVLD_APPRVD_DATE BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT
			
								
			UPDATE 
					SKD
			SET 
					AGE_INVLD_PNDG_RVW = DATEDIFF(DD, BAS_LN_DT, SKD.INVLD_APPRVD_DATE)																						
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD	
			JOIN 
					#TmpInvalidCases tmp
			ON
					SKD.CASE_ID = tmp.CASE_ID
			AND
					SKD.HST_WK = tmp.INVLD_APPRVD_WK
			AND
					SKD.HST_YR= tmp.INVLD_APPRVD_YR		
			WHERE
					BAS_LN_DT IS NOT NULL			
			AND 
					SKD.INVLD_APPRVD_DATE IS NOT NULL
			AND
					ACTION_FLAG = 'Open'			

			OPTION (MAXDOP 8)
		

			UPDATE 
					SKD
			SET 
					AGE_CLSFD_INVLD = DATEDIFF(DD,INVLD_APPRVD_DATE, GETDATE())
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD

			WHERE
					CATEG_DATE IS NOT NULL
			AND
					INVLD_APPRVD_DATE IS NOT NULL
			AND
					ACTION_FLAG = 'Open'
			OPTION (MAXDOP 8)

			UPDATE 
					SKD
			SET 
					AGE_INVLD_CLSD = DATEDIFF(DD, CATEG_DATE,STAT_CLSD_DATE)										
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			WHERE
					CATEG_DATE IS NOT NULL
			AND
					STAT_CLSD_DATE IS NOT NULL
			AND
					ACTION_FLAG = 'Closed'
			OPTION (MAXDOP 8)

			UPDATE 
					SKD
			SET 
					AGE_IDENTIFY_INVLD = CASE 
											WHEN ( INVLD_CONFRMD_REPAY_DATE IS NOT NULL AND INVLD_CONFRMD_REPAY_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE 
													AND INVLD_CONFRMD_REPAY_DATE < INVLD_PNDG_SALES_RVW_DATE AND INVLD_CONFRMD_REPAY_DATE < INVLD_PNDG_RSC_RVW_DATE
													AND INVLD_CONFRMD_REPAY_DATE < INVLD_APPRVD_DATE)
												
												THEN DATEDIFF(DD,INVLD_CONFRMD_REPAY_DATE, STAT_CLSD_DATE)											

											WHEN ( INVLD_SALES_APPRVD_WRTOFF_DATE IS NOT NULL AND INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_CONFRMD_REPAY_DATE
													AND INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_PNDG_SALES_RVW_DATE AND  INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_PNDG_RSC_RVW_DATE
													AND INVLD_SALES_APPRVD_WRTOFF_DATE < INVLD_APPRVD_DATE)

												THEN DATEDIFF(DD,INVLD_SALES_APPRVD_WRTOFF_DATE, STAT_CLSD_DATE)

											WHEN ( INVLD_PNDG_SALES_RVW_DATE IS NOT NULL AND INVLD_PNDG_SALES_RVW_DATE < INVLD_CONFRMD_REPAY_DATE
													AND INVLD_PNDG_SALES_RVW_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_PNDG_SALES_RVW_DATE < INVLD_PNDG_RSC_RVW_DATE
													AND INVLD_PNDG_SALES_RVW_DATE < INVLD_APPRVD_DATE )

												THEN DATEDIFF(DD,INVLD_PNDG_SALES_RVW_DATE, STAT_CLSD_DATE)

											WHEN ( INVLD_PNDG_RSC_RVW_DATE IS NOT NULL AND INVLD_PNDG_RSC_RVW_DATE < INVLD_CONFRMD_REPAY_DATE
													AND INVLD_PNDG_RSC_RVW_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_PNDG_RSC_RVW_DATE < INVLD_PNDG_SALES_RVW_DATE
													AND INVLD_PNDG_RSC_RVW_DATE < INVLD_APPRVD_DATE )

												THEN DATEDIFF(DD,INVLD_PNDG_RSC_RVW_DATE, STAT_CLSD_DATE)

											WHEN ( INVLD_APPRVD_DATE IS NOT NULL AND INVLD_APPRVD_DATE < INVLD_CONFRMD_REPAY_DATE
													AND INVLD_APPRVD_DATE < INVLD_SALES_APPRVD_WRTOFF_DATE AND INVLD_APPRVD_DATE < INVLD_PNDG_SALES_RVW_DATE
													AND	INVLD_APPRVD_DATE < INVLD_PNDG_RSC_RVW_DATE )

												THEN DATEDIFF(DD,INVLD_APPRVD_DATE, STAT_CLSD_DATE)

										END										
			FROM	
					ACCENTURE.StgKPIMetricsDelta SKD
			WHERE
					STAT_CLSD_DATE IS NOT NULL
			AND
					(
						STAT_CLSD_DATE >= INVLD_CONFRMD_REPAY_DATE
						OR STAT_CLSD_DATE >= INVLD_APPRVD_DATE
						OR	STAT_CLSD_DATE >= INVLD_SALES_APPRVD_WRTOFF_DATE
						OR	STAT_CLSD_DATE >= INVLD_PNDG_SALES_RVW_DATE 
					)		
			AND 
					ACTION_FLAG = 'Closed'
			OPTION (MAXDOP 8)

			DROP TABLE #TmpOpenCases
			DROP TABLE #TmpBlankCases
			DROP TABLE #TmpInvalidCases
			DROP TABLE #TempCodingToInvalidCases
			DROP TABLE #TmpOtherRCCases
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_Update_StgOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [ACCENTURE].[USP_Update_StgOTCDeductionsLiveSnapshot]
--(
	--@CurrBatchId BIGINT
--)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			DECLARE @CurrBatchId BIGINT					

			SELECT	
					@CurrBatchId = MAX(BatchId)					
			FROM	
					ACCENTURE.StgBatchInfo			
								
			--UPDATE	
			--		SODL
			--SET
			--		BatchId = @CurrBatchId
			--FROM	
			--		ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			--WHERE 
			--		BatchId IS NULL
			--OPTION (MAXDOP 8)

			-- Getting FISC_QTR value from view KNA_FIN.dbo.UVW_FISC_CAL to update HST_QTR column in StgOTCDeductionsOpen table.
			UPDATE	
					SDO
			SET		
					HST_QTR = UFC.FISC_QTR
			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SDO
			JOIN	
					KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON		
					SDO.HST_WK = UFC.FISC_WK
			AND	
					SDO.HST_YR = UFC.FISC_YR
			--WHERE
			--		BatchId = @CurrBatchId
			OPTION (MAXDOP 8)


			-- Calculation of Report Extraction Date for Open Cases
			UPDATE 
					SODL
			SET
					REPORT_EXT_DT = GETDATE()
									--CASE
									--	WHEN UFC.FISC_WK_END_DT <= '2017-12-01'
									--		THEN UFC.FISC_WK_END_DT
									--	ELSE GETDATE()
									--END
			FROM		
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			JOIN 
					KNA_FIN.dbo.UVW_FISC_CAL UFC 
			ON
					SODL.HST_WK = UFC.FISC_WK
			AND
					SODL.HST_YR = UFC.FISC_YR
			WHERE
					OPN_FLG = 1
			AND
					BatchId = @CurrBatchId
			OPTION (MAXDOP 8)

			----- Code added by Satendra for previous weeks report extraction date 

			UPDATE 
					SODL
			SET
					REPORT_EXT_DT = UFC.FISC_WK_END_DT
			FROM		
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			JOIN 
					KNA_FIN.dbo.UVW_FISC_CAL UFC 
			ON
					SODL.HST_WK = UFC.FISC_WK
			AND
					SODL.HST_YR = UFC.FISC_YR
			WHERE
					OPN_FLG = 1
			AND
					BatchId <> @CurrBatchId
			OPTION (MAXDOP 8)



			-- Report Extraction Date for Closed Items
			UPDATE 
					SODL
			SET
					REPORT_EXT_DT = CLSN_DT
			FROM		
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL			
			WHERE
					OPN_FLG = 0
			--AND
			--		BatchId = @CurrBatchId
			OPTION (MAXDOP 8)					

			-- Keep only rolling 2 years of historical data.
			DELETE 
					SODL
			FROM	
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			WHERE
					DATEDIFF(YY, SODL.REPORT_EXT_DT,GETDATE()) > 2	

			-- Identifying the Last Day of Each Week record and marking that to Y so that when period/month changes the daily records i.e. Last Day Flag = N 
			-- records can be deleted
			UPDATE	
					SODL
			SET 
					LAST_DAY_OF_WEEK_FLAG = 'Y'
			FROM 
					ACCENTURE.StgOTCDeductionsLiveSnapshot SODL
			JOIN 
					KNA_FIN.dbo.UVW_FISC_CAL UFC
			ON 
					SODL.REPORT_EXT_DT = UFC.FISC_WK_END_DT
			--WHERE
					--BatchId = @CurrBatchId
			OPTION (MAXDOP 8)

			-- DELETE all the daily history of records when Month/Period Changes

			DELETE 
			FROM 
					ACCENTURE.StgOTCDeductionsLiveSnapshot
			WHERE 
					LAST_DAY_OF_WEEK_FLAG = 'N'
			AND
					OPN_FLG = 1
			AND
					DATEDIFF(DD, REPORT_EXT_DT, GETDATE()) > 31

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_UpdatedARMasterData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [ACCENTURE].[USP_UpdatedARMasterData]

AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			TRUNCATE TABLE [ACCENTURE].[StgARMasterData]	

			INSERT INTO [ACCENTURE].[StgARMasterData]	
			(
				[CustomerChannelText]
      ,[BU]
      ,[CustomerNo]
      ,[FiscalYear]
      ,[FY]
      ,[PD]
      ,[WK]
      ,[QTR]
      ,[ARAmt]
				)
				SELECT		
						CASE 
							WHEN B.PT_Channel IN ('RETAIL','1','4','5','6','9','10','13','14','19','Retail')
								THEN 'RETAIL' 
						END AS CustomerChannelText
						, C.LVL3_CUST_NM AS BU
						, A.KUNNR AS CustomerNo
						, A.AUGDT AS FiscalYear
						, (SELECT FISC_YR FROM KNA_FIN.dbo.UVW_FISC_CAL WHERE AUGDT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS FY
						, (SELECT FISC_PD FROM KNA_FIN.dbo.UVW_FISC_CAL WHERE AUGDT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS PD
						, (SELECT FISC_WK FROM KNA_FIN.dbo.UVW_FISC_CAL WHERE AUGDT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS WK
						, (SELECT FISC_QTR FROM KNA_FIN.dbo.UVW_FISC_CAL WHERE AUGDT BETWEEN FISC_WK_STRT_DT AND FISC_WK_END_DT) AS QTR
						, SUM(A.DMBTR) AS ARAmt
			FROM		
						[KNA_ECC].dbo.BSAD A
			LEFT JOIN	
						[KNA_FIN].STG.[OTC_PAYER_CHNL] B
			ON			
						A.KUNNR = B.Payer_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
			LEFT JOIN	
						[KG_SANDBOX].[ACCENTURE].[UVW_CUST_HIER] C
			ON			
						B.SoldTo_NBR COLLATE SQL_Latin1_General_CP1_CI_AS = C.LVL10_CUST_NBR
			AND			
						HIER_TYP ='D' 
			AND			
						HIER_TM_PD ='CURRENT'
			WHERE		
						BUKRS = 'NUSC'
			AND			
						BLART = 'RV'
			AND			
						BSCHL = '01'
			AND			
						B.PT_Channel IN ('RETAIL','1','4','5','6','9','10','13','14','19','Retail')
			AND		
						(
							LVL3_CUST_NM IS NULL
							OR
							UPPER(LVL3_CUST_NM) NOT IN ('SPECIALTY','CANADA L3')
						)
			GROUP BY 
					B.PT_Channel 
					, C.LVL3_CUST_NM
					, A.KUNNR 
					, A.AUGDT

			OPTION(MAXDOP 8)
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [ACCENTURE].[USP_UpdatedSrcOTC]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [ACCENTURE].[USP_UpdatedSrcOTC]

AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
			
			--TRUNCATE TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshot]	

			INSERT INTO [ACCENTURE].[SrcOTCDeductionsLiveSnapshot]	
			(
				PROCESSOR_ID,
				PROCESSOR_NM,
				PERS_RESP_ID,
				PERS_RESP_NM,
				COORDINATOR_ID,
				COORDINATOR_NM,
				USR_ID,
				USR_NM,
				RELATION,
				CLASSIFICATION,
				IS_VOIDED,
				IS_CONFIRMED,
				PMT_IN_FLG,
				CASE_ID,
				COMB_FLG,
				CASE_TITL,
				CASE_GUID,
				CASE_TYP,
				COMB_DSPUT_CASE_ID,
				DOC_TYP,
				CO_CD,
				DOC_TYP_DESC,
				ACCTG_DOC_NBR,
				DOC_HDR_TXT,
				ITM_TXT,
				REF_DOC_NBR,
				BILL_DOC,
				EXTR_REF,
				CHG_TM,
				FIN_CUSTDISP_AMT,
				FIN_CUSTDISP_CUR,
				FIN_NOT_SOLV_AMT,
				CURR,
				ASGN,
				POST_KEY,
				POST_KEY_NM,
				FY,
				LN_ITM_NBR,
				OTC_CUST_CHNL,
				CUST_CHNL_TXT,
				BU,
				CUST_NBR,
				CUST_MAIL_ADDR,
				PLNT_NBR,
				PLANTO_DESC,
				SALE_MGMT_A,
				SALE_MGMT_B,
				SALE_MGMT_C,
				SALE_MGMT_D,
				RSN_CD_PAY,
				RSN_CD_PAY_TXT,
				RSN_ESCAL_CD,
				RSN_ESCAL_DESC,
				RSN_CASE_CD,
				RSN_CASE_DESC,
				ROOT_CAUSE_CD,
				ROOT_CAUSE_DESC,
				CASE_STATUS,
				CASE_STATUS_DESC,
				CASE_CATG,
				BAS_LN_DT,
				PLN_CLO_DT,
				CRE_TM,
				CLS_TM,
				AGE,
				PAY_METH_SUPL,
				AMT_LOC_CURR,
				CUR_DISPUTED_AMT,
				ORIG_AMT,
				CLR_MANUALLY,
				AMT_PAID,
				AMT_CR,
				DSPUT_CURR,
				DOC_DT,
				POST_DT,
				DED_USE_FLAG,
				UNDR_TOLRNC_FLG,
				CLSN_DT,
				OPN_FLG,
				CLSN_PD,
				CLSN_YR,
				HST_INT,
				CRE_PD,
				CRE_YR,
				CRE_PD_END_DT,
				CRE_INT,
				CRE_FLG,
				INVLD_FLG,
				HST_WK,
				HST_PD,
				HST_YR
				)
				select
				PROCESSOR_ID,
				PROCESSOR_NM,
				PERS_RESP_ID,
				PERS_RESP_NM,
				COORDINATOR_ID,
				COORDINATOR_NM,
				USR_ID,
				USR_NM,
				RELATION,
				CLASSIFICATION,
				IS_VOIDED,
				IS_CONFIRMED,
				PMT_IN_FLG,
				CASE_ID,
				COMB_FLG,
				CASE_TITL,
				CASE_GUID,
				CASE_TYP,
				COMB_DSPUT_CASE_ID,
				DOC_TYP,
				CO_CD,
				DOC_TYP_DESC,
				ACCTG_DOC_NBR,
				DOC_HDR_TXT,
				ITM_TXT,
				REF_DOC_NBR,
				BILL_DOC,
				EXTR_REF,
				CHG_TM,
				FIN_CUSTDISP_AMT,
				FIN_CUSTDISP_CUR,
				FIN_NOT_SOLV_AMT,
				CURR,
				ASGN,
				POST_KEY,
				POST_KEY_NM,
				FY,
				LN_ITM_NBR,
				OTC_CUST_CHNL,
				CUST_CHNL_TXT,
				BU,
				CUST_NBR,
				CUST_MAIL_ADDR,
				/*PLNT_NBR, appears to have changed to PLANT_NBR 11/9 */
				PLANT_NBR,
				PLANTO_DESC,
				SALE_MGMT_A,
				SALE_MGMT_B,
				SALE_MGMT_C,
				SALE_MGMT_D,
				RSN_CD_PAY,
				RSN_CD_PAY_TXT,
				RSN_ESCAL_CD,
				RSN_ESCAL_DESC,
				RSN_CASE_CD,
				RSN_CASE_DESC,
				ROOT_CAUSE_CD,
				ROOT_CAUSE_DESC,
				CASE_STATUS,
				CASE_STATUS_DESC,
				CASE_CATG,
				BAS_LN_DT,
				PLN_CLO_DT,
				CRE_TM,
				CLS_TM,
				AGE,
				PAY_METH_SUPL,
				AMT_LOC_CURR,
				CUR_DISPUTED_AMT,
				ORIG_AMT,
				CLR_MANUALLY,
				AMT_PAID,
				AMT_CR,
				DSPUT_CURR,
				DOC_DT,
				POST_DT,
				DED_USE_FLAG,
				UNDR_TOLRNC_FLG,
				CLSN_DT,
				OPN_FLG,
				CLSN_PD,
				CLSN_YR,
				HST_INT,
				CRE_PD,
				CRE_YR,
				CRE_PD_END_DT,
				CRE_INT,
				CRE_FLG,
				INVLD_FLG,
				HST_WK,
				HST_PD,
				HST_YR
			FROM  
				KNA_FIN.DBO.UVW_OTC_DED_LVE_SNPSHT
			WHERE 
				CO_CD = 'NUSC' 
			AND        
			   UPPER(CUST_CHNL_TXT) = 'RETAIL' 
			AND        
			   (
					 RELATION IN ('F1','F2') 
					 OR RELATION IS NULL
			   ) 
			AND   (
					 SALE_MGMT_A IS NULL
					 OR
					 SALE_MGMT_A NOT IN ('SPECIALTY','CANADA L3')
			   )
			AND   HST_WK IN (   SELECT MAX(HST_WK) 
				FROM KNA_FIN.dbo.UVW_OTC_DED_LVE_SNPSHT 
				WHERE HST_YR IN (SELECT MAX(HST_YR) FROM KNA_FIN.DBO.UVW_OTC_DED_LVE_SNPSHT)
											  )
			and 
               RSN_CASE_CD NOT IN( 2,0300,0301,0302,0303,0304,0305,0306, 0307,0308,0309,0310,0311 )

			OPTION(MAXDOP 8)
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		SELECT 
				@ErrorMessage = ERROR_MESSAGE()
				, @ErrorSeverity = ERROR_SEVERITY()
				, @ErrorState = ERROR_STATE()
		RAISERROR 
				( 
				  @ErrorMessage
				 , @ErrorSeverity
				 , @ErrorState
				)
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[ACOSTA_HIERARCHY_Loader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACOSTA_HIERARCHY_Loader] /**** Create = first run, ALTER = to updated****/
AS
BEGIN
 TRUNCATE TABLE KG_SANDBOX.dbo.ACOSTA_HIERARCHY /****clears data***/
	BULK INSERT  KG_SANDBOX.dbo.ACOSTA_HIERARCHY
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\FOR KEYSTONE\ACOSTA_HIERARCHY.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT GETDATE() AS 'AH Last Run'
END

GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_GSV_Loader_P]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_GSV_Loader_P]
AS
BEGIN
 TRUNCATE TABLE KG_SANDBOX.dbo.KUSA_TRACK_GSV_Loader
	BULK INSERT  KG_SANDBOX.dbo.KUSA_TRACK_GSV_Loader
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\FOR KEYSTONE\gsv.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT GETDATE() AS 'GSV Last Run'
END

GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_IND_Loader_P]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_IND_Loader_P]
AS
BEGIN
 TRUNCATE TABLE KG_SANDBOX.dbo.KUSA_TRACK_INDIRECT_Loader
	BULK INSERT  KG_SANDBOX.dbo.KUSA_TRACK_INDIRECT_Loader
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\FOR KEYSTONE\INDIRECTS.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT Getdate() AS 'Indirects Last Run Date'
END


GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_KPI_Loader_P]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_KPI_Loader_P]
AS
BEGIN
 TRUNCATE TABLE KG_SANDBOX.dbo.KUSA_TRACK_KPI_Loader
	BULK INSERT  KG_SANDBOX.dbo.KUSA_TRACK_KPI_Loader 
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\FOR KEYSTONE\KPI.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
SELECT Getdate() AS 'KPI Last Run Date'
END


GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_SHAPE_Loader_P]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_SHAPE_Loader_P]
AS
BEGIN
 TRUNCATE TABLE KG_SANDBOX.dbo.KUSA_TRACK_SHAPE_Loader
	BULK INSERT  KG_SANDBOX.dbo.KUSA_TRACK_SHAPE_Loader
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\FOR KEYSTONE\SHAPE.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT Getdate() AS 'Last Upload:'
END



GO
/****** Object:  StoredProcedure [dbo].[PLANTO_MAP_N_Loader_P]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PLANTO_MAP_N_Loader_P]
AS
BEGIN

 TRUNCATE TABLE KG_SANDBOX.dbo.PLANTO_MAP_N
	BULK INSERT  KG_SANDBOX.dbo.PLANTO_MAP_N
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\FOR KEYSTONE\PLANTO_MAP_N.csv'

		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
			SELECT GETDATE() AS 'Hierarchy Last Update'	
END

GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_INV_POS_SUMMARY]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_LOAD_INV_POS_SUMMARY] @FULL_REFRESH varchar(30)
AS
BEGIN


IF OBJECT_ID ('tempDB..#DAY') IS NOT NULL
begin
	DROP TABLE #DAY;
end

IF OBJECT_ID ('tempDB..#FINAL') IS NOT NULL
begin
	DROP TABLE #FINAL;
end

IF OBJECT_ID ('tempDB..#INV_WM_SUM') IS NOT NULL
begin
	DROP TABLE #INV_WM_SUM;
end
CREATE TABLE #INV_WM_SUM ( SUBPART_SUFFIX_TXT VARCHAR(255),DAY DATE,ONHANDQTY FLOAT,ONHANDRETAIL FLOAT)

IF OBJECT_ID ('tempDB..#POS_WM_SUM') IS NOT NULL
begin
	DROP TABLE #POS_WM_SUM;
end
CREATE TABLE #POS_WM_SUM ( SUBPARTSUFFIXTXT VARCHAR(255),DAY DATE,POS_QTY FLOAT,POS_SALES FLOAT)

IF OBJECT_ID ('tempDB..#INV_SM_SUM') IS NOT NULL
begin
	DROP TABLE #INV_SM_SUM;
end
CREATE TABLE #INV_SM_SUM ( SUBPART_SUFFIX_TXT VARCHAR(255),DAY DATE,ONHANDQTY FLOAT,ONHANDRETAIL FLOAT)

IF OBJECT_ID ('tempDB..#POS_SM_SUM') IS NOT NULL
begin
	DROP TABLE #POS_SM_SUM;
end
CREATE TABLE #POS_SM_SUM ( SUBPARTSUFFIXTXT VARCHAR(255),DAY DATE,POS_QTY FLOAT,POS_SALES FLOAT)


IF OBJECT_ID ('tempDB..#UVW_FISC_CAL_52') IS NOT NULL
begin
	DROP TABLE #UVW_FISC_CAL_52;
end
select FISC_YR,FISC_QTR,FISC_PD,FISC_WK,FISC_WK_STRT_DT,FISC_WK_END_DT into #UVW_FISC_CAL_52 from(
select ROW_NUMBER()  over( order by FISC_YR desc,FISC_WK desc) as RNO,* from KG_VIEWS.dbo.UVW_FISC_CAL
 where  FISC_WK_STRT_DT <= getdate()-7 )tmp
 where  RNO <= 52


---------------
IF(@FULL_REFRESH != 'Y' OR @FULL_REFRESH IS NULL)

BEGIN
---------------


INSERT INTO #INV_WM_SUM SELECT *
from
(select SUBPART_SUFFIX_TXT,DAY,SUM(ISNULL(ONHANDQTY,0)) ONHANDQTY,SUM(ISNULL(ONHANDRETAIL,0)) ONHANDRETAIL  from 
 [KNA_SALES].STG.[INV_WM_HIST] [INV_WM] 
GROUP BY SUBPART_SUFFIX_TXT,DAY
)TMP
--------

INSERT INTO #POS_WM_SUM SELECT *
from
(select  SUBPARTSUFFIXTXT,DAY,SUM(POS_QTY) POS_QTY,SUM(POS_SALES) POS_SALES from 
 [KNA_SALES].STG.POS_WM_HIST
GROUP BY SUBPARTSUFFIXTXT,DAY
 ) tmp1
--------------

INSERT INTO #INV_SM_SUM SELECT *
from
(
select SUBPART_SUFFIX_TXT,DAY,sum(ISNULL([INV_SM].ONHANDQTY,0)) ONHANDQTY,sum(ISNULL([INV_SM].ONHANDRETAIL,0)) as ONHANDRETAIL
 from [KNA_SALES].STG.[INV_SM_HIST] [INV_SM]
group by DAY,SUBPART_SUFFIX_TXT
)TMP

-------------------------------


INSERT INTO #POS_SM_SUM SELECT *
from
(
select SUBPARTSUFFIXTXT,DAY,sum(ISNULL(POS_SM.POS_QTY,0))  as POS_QTY ,sum(ISNULL(POS_SM.POS_SALES,0)) as POS_SALES
from  [KNA_SALES].STG.POS_SM_HIST POS_SM
group by DAY,SUBPARTSUFFIXTXT
)TMP


-------

END
-------------------
ELSE

BEGIN

INSERT INTO #INV_WM_SUM SELECT *
from
(select SUBPART_SUFFIX_TXT,DAY,SUM(ISNULL(ONHANDQTY,0)) ONHANDQTY,SUM(ISNULL(ONHANDRETAIL,0)) ONHANDRETAIL  from 
 [KNA_SALES].dbo.[INV_WM] [INV_WM] 
 INNER JOIN #UVW_FISC_CAL_52 ON  ( FISC_WK_STRT_DT <= DAY  AND  FISC_WK_END_DT >= DAY)
GROUP BY SUBPART_SUFFIX_TXT,DAY
)TMP
--------

INSERT INTO #POS_WM_SUM SELECT *
from
(select  SUBPARTSUFFIXTXT,DAY,SUM(POS_QTY) POS_QTY,SUM(POS_SALES) POS_SALES from 
 [KNA_SALES].dbo.POS_WM
 INNER JOIN #UVW_FISC_CAL_52 ON  ( FISC_WK_STRT_DT <= DAY  AND  FISC_WK_END_DT >= DAY)
GROUP BY SUBPARTSUFFIXTXT,DAY
 ) tmp1
--------------

INSERT INTO #INV_SM_SUM SELECT *
from
(
select SUBPART_SUFFIX_TXT,DAY,sum(ISNULL([INV_SM].ONHANDQTY,0)) ONHANDQTY,sum(ISNULL([INV_SM].ONHANDRETAIL,0)) as ONHANDRETAIL
 from [KNA_SALES].dbo.[INV_SM] [INV_SM]
  INNER JOIN #UVW_FISC_CAL_52 ON  ( FISC_WK_STRT_DT <= DAY  AND  FISC_WK_END_DT >= DAY)
group by DAY,SUBPART_SUFFIX_TXT
)TMP

-------------------------------

INSERT INTO #POS_SM_SUM SELECT *
from
(
select SUBPARTSUFFIXTXT,DAY,sum(ISNULL(POS_SM.POS_QTY,0))  as POS_QTY ,sum(ISNULL(POS_SM.POS_SALES,0)) as POS_SALES
from  [KNA_SALES].dbo.POS_SM POS_SM
 INNER JOIN #UVW_FISC_CAL_52 ON  ( FISC_WK_STRT_DT <= DAY  AND  FISC_WK_END_DT >= DAY)
group by DAY,SUBPARTSUFFIXTXT
)TMP

-------

END


SELECT  DISTINCT * INTO #DAY FROM( 

select DISTINCT DAY,SUBPART_SUFFIX_TXT from #INV_WM_SUM
UNION ALL

select  DISTINCT DAY,SUBPARTSUFFIXTXT AS SUBPART_SUFFIX_TXT from #POS_WM_SUM

UNION ALL
SELECT DISTINCT DAY,SUBPART_SUFFIX_TXT FROM #INV_SM_SUM

UNION ALL
SELECT DISTINCT DAY,SUBPARTSUFFIXTXT AS SUBPART_SUFFIX_TXT FROM #POS_SM_SUM)TMP


SELECT * INTO #FINAL FROM(
select

case when FISC_WK < 10 then  CONCAT(FISC_YR,0,FISC_WK) else CONCAT(FISC_YR,FISC_WK) end as WEEK,
CASE WHEN CTE.SUBPART_SUFFIX_TXT like '%SM%' then 'Sam''s Club'
WHEN CTE.SUBPART_SUFFIX_TXT LIKE '%WMCOMUS%'THEN 'Walmart.com'
else  'Walmart' end 'Retailer'
 ,CASE CTE.SUBPART_SUFFIX_TXT
WHEN	'WMCRAR'	THEN	'Argentina'
WHEN	'WMCRBR'	THEN	'Brazil'
WHEN	'WMCRCA'	THEN	'Canada'
WHEN	'WMCRCL'	THEN	'Chile'
WHEN	'WMCRCN'	THEN	'China'
WHEN	'WMCRCR'	THEN	'Costa Rica'
WHEN	'WMCRGT'	THEN	'Guatemala'
WHEN	'WMCRHN'	THEN	'Honduras'
WHEN	'WMCRJP'	THEN	'Japan'
WHEN	'WMCRMX'	THEN	'Mexico'
WHEN	'WMCRNI'	THEN	'Nicaragua'
WHEN	'WMCRSV'	THEN	'El Salvador'
WHEN	'WMCRUK'	THEN	'United Kingdom'
WHEN	'WMCRUS'	THEN	'United States'
WHEN	'SMCRMX'	THEN	'Mexico'
WHEN	'SMCRBR'	THEN	'Brazil'
WHEN	'SMCRUS'	THEN	'United States'
WHEN	'SMCRIN'	THEN	'India'
WHEN	'SMCRCN'	THEN	'China'
WHEN	'WMCOMUS'	THEN	'United States'
ELSE	CTE.SUBPART_SUFFIX_TXT
END AS  Country, 
sum(ISNULL(POS_WM.POS_SALES,0))+SUM(ISNULL([POS_SM].POS_SALES,0))  as POS_SALES,
sum(ISNULL(POS_WM.POS_QTY,0))+SUM(ISNULL([POS_SM].POS_QTY,0))  as POS_QTY,
sum(ISNULL([INV_WM].ONHANDQTY,0))+SUM(ISNULL([INV_SM].ONHANDQTY,0))  as ONHANDQTY,
sum(ISNULL([INV_WM].ONHANDRETAIL,0)) + SUM(ISNULL([INV_SM].ONHANDRETAIL,0))  as ONHANDRETAIL from 
#DAY CTE
left join #INV_WM_SUM [INV_WM] on CTE.SUBPART_SUFFIX_TXT = [INV_WM].SUBPART_SUFFIX_TXT and  CTE.DAY = [INV_WM].DAY
left join #POS_WM_SUM POS_WM on CTE.SUBPART_SUFFIX_TXT = POS_WM.SUBPARTSUFFIXTXT and  CTE.DAY = POS_WM.DAY
left join #POS_SM_SUM [POS_SM] on CTE.SUBPART_SUFFIX_TXT = [POS_SM].SUBPARTSUFFIXTXT and  CTE.DAY = [POS_SM].DAY
left join #INV_SM_SUM [INV_SM] on CTE.SUBPART_SUFFIX_TXT = [INV_SM].SUBPART_SUFFIX_TXT and  CTE.DAY = [INV_SM].DAY
LEFT OUTER JOIN #UVW_FISC_CAL_52 ON  ( FISC_WK_STRT_DT <= CTE.DAY  AND  FISC_WK_END_DT >= CTE.DAY)
group by FISC_WK,FISC_YR,CONCAT(FISC_YR,FISC_WK), CTE.SUBPART_SUFFIX_TXT
)TMP


		BEGIN TRANSACTION;
		SAVE TRANSACTION  start_tran;

MERGE dbo.INV_POS_WM_SM_SUMMARY  AS dbo
USING (
	SELECT *
	FROM #FINAL
	) AS STG
	ON STG.WEEK    = dbo.WEEK 
	    AND STG.Retailer COLLATE DATABASE_DEFAULT = dbo.RETAILER COLLATE DATABASE_DEFAULT 
		AND STG.Country COLLATE DATABASE_DEFAULT  = dbo.COUNTRY COLLATE DATABASE_DEFAULT 
WHEN MATCHED
	THEN
		UPDATE
		SET dbo.POS_SALES = STG.POS_SALES
			,dbo.POS_QTY = STG.POS_QTY
			,dbo.ONHANDQTY = STG.ONHANDQTY
			,dbo.ONHANDRETAIL = STG.ONHANDRETAIL
WHEN NOT MATCHED
	THEN
		INSERT
		(	WEEK,
			RETAILER,
			COUNTRY,
			POS_SALES,
			POS_QTY,
			ONHANDQTY,
			ONHANDRETAIL
		)
		VALUES
		(
			STG.WEEK,
			STG.Retailer,
			STG.Country,
			STG.POS_SALES,
			STG.POS_QTY,
			STG.ONHANDQTY,
			STG.ONHANDRETAIL
		);

delete dbo.INV_POS_WM_SM_SUMMARY from dbo.INV_POS_WM_SM_SUMMARY left join #UVW_FISC_CAL_52 on
INV_POS_WM_SM_SUMMARY.WEEK =case when FISC_WK < 10 then  CONCAT(FISC_YR,0,FISC_WK) else CONCAT(FISC_YR,FISC_WK) end
where #UVW_FISC_CAL_52.FISC_YR IS NULL or #UVW_FISC_CAL_52.FISC_WK is NULL
		
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;


END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_KSOP_MIX]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






/*
-- ===================================================================================================================================================
 Author:		SIVAMARAN
 Create date:   8/8/2017
 Description:	MATERIAL, ACTUAL, CONSENSUS FORECAST, TPM FORECAST,BUDGET , LATEST SE DATA FOR MF MIX
 NAME:          USP_LOAD_MF_MIX
	
 REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        08/08/2017   USCS1B13         Initial Version.
		2.0			04/15/20118	Venkatesh R		Final Version

		1) Load Data into KSOP_MIX_MATRL, KSOP_MIX_ACTL, KSOP_MIX_FCST, KSOP_MIX_TPM, KSOP_MIX_BUD_KGSPD, KSOP_MIX_BUD_GSVPD Table (DROP AND CREATE)
		2) It has got no parameters 
		3) All the open issues have been resolved as of 2018-02-18
		4) Working on changes related to the Budget external file details, populating SE fields for KGS and GSV
		5) Added Consensus Forecast fields and roll up fields for Previous Forecast Version and populated these with thefinal table and SQ View
		6) Integrated the Budget/SE SQL Views from KNA_FIN database (instead of referring directly with the KNA_EXTERNAL tables)
		7) Added 'CUR_FLG' to Driving Table to process/execute one BU at a time from the BODS
		8) Hierarchy modified to inlcude Brand instead of Category with Channel & Brand
		9) A new filter with 'FERT' - material type is inlcuded to filter all the data set in the process;
		9-A) ANAPLAN_BRAND and corresponding roll-up fields are added to support Snacks BU - Keith email
		10) At the end of the process, a new step is added to include BASE SKU# in place of the eoriginal SKU# and 
			populate the attributes related to the BASE SKU#.  The roll up and aggregates needed a few tweaks with this;
		10-A) Modified final SQL to populate the KSOP_MIX_FULL with Anaplan Brand and roll up fields...
		10-B) All TYPE related roll-up fields are recaluclated to support the scenario with BASE SKU# having multiple Original SKU# each with different TYPES

SUMMARY:	There are 7 Steps in total to populate the final target table - KNA_SC.dbo.KSOP_MIX_FULL	

		1.	Staging all the Materials with original SKU# and related dimensions					-	[STG].[KSOP_MIX_MATRL]
		2.	Staing Consensus Forecast data set - Current Version and the Previous Version		-	[STG].[KSOP_MIX_FCST]
		3.	Staging Actual Sales data set														-	[STG].[KSOP_MIX_ACTL]
		4.	Staging TPM Sales data set															-	[STG].[KSOP_MIX_TPM]
		5.	Staging Budget and SE data set														-	[STG].[KSOP_MIX_BUD_KGSPD]
																								-	[STG].[KSOP_MIX_BU_GSVPD]
																								-	[STG].[KSOP_MIX_SE1_KGSPD]
																								-	[STG].[KSOP_MIX_SE_GSVPD]
		6.	Staging all the above 5 data set by merging/combining into one full data set with original SKU#					-	[KNA_SC].[STG].[KSOP_MIX_FULL_STG]
				(blending the output of step 1-5 above is thru FULL JOIN... not UNION)
		7.	Transforming Original SKU# into BASE SKU# and populating with BASE SKU# dimensions into the final target table	-	[KNA_SC].[dbo].[KSOP_MIX_FULL]
			-	Upto Step 6 - regular MATRL_NBR from the UVW_MATRL is populated and this is original SKU#
			-	Step 7 is transforming this original SKU# into BASE SKU# using the UVW_MATRL.BASE_MATRL_NBR and its attributes

-- TRUNCATE TABLE KNA_SC.STG.KSOP_MIX_FULL_STG
-- BODS needs to execute this procedure for each Business Unit in the KSOP_MIX_DRV_TAB table, updating CUR_FLG = 1 (1 by 1 in a loop)
-- ====================================================================================================================================================
*/
CREATE PROCEDURE [dbo].[USP_LOAD_KSOP_MIX] 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3)) as FISC_YR_PD,
	       concat(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_WK), 3)) as FISC_YR_WK,
		   x.FRCST_DT
    into #KSOP_MIX_FCST_TMP2
	FROM KG_VIEWS.KG.UVW_FISC_CAL CAL WITH (NOLOCK)
	INNER JOIN
	(SELECT CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3)) as FISC_YR_PD,
	        DATEADD(DD, - 2, MIN(FISC_WK_STRT_DT)) AS FRCST_DT
	from KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
	GROUP BY CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3))) x 
		on x.FISC_YR_PD=CONCAT(RIGHT(CONCAT('000', CAL.FISC_YR), 4), RIGHT(CONCAT('000', CAL.FISC_PD), 3))
    WHERE CONCAT(FISC_YR ,0 ,Right('00' + CAST(FISC_PD AS VARCHAR(2)), 2))  >=	
		(SELECT CONCAT (FISC_YR ,0 ,Right('00' + CAST(FISC_PD AS VARCHAR(2)), 2)) FISC_YR_PD
		FROM KG_VIEWS.KG.UVW_FISC_CAL CAL1
		WHERE 
		DATEADD(MM, - 12, CAST(GETDATE() AS DATE)) BETWEEN CAL1.FISC_WK_STRT_DT
				AND CAL1.FISC_WK_END_DT) -- Prev Month (-0) Period starting point
    AND CAL.FISC_YR >= YEAR(GETDATE())-1 AND CAL.FISC_YR <= YEAR(GETDATE())+1  -- PREV, CURRENT AND NEXT YEAR

	
	CREATE INDEX IDX_FCST_TMP2_KSOP_MIX ON #KSOP_MIX_FCST_TMP2(FISC_YR_WK, FRCST_DT);

	BEGIN TRANSACTION

	SAVE TRANSACTION  start_tran;

	IF OBJECT_ID(N'STG.KSOP_MIX_MATRL', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_MATRL;

	IF OBJECT_ID(N'STG.KSOP_MIX_FCST', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_FCST;

	IF OBJECT_ID(N'STG.KSOP_MIX_ACTL', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_ACTL;    

	IF OBJECT_ID(N'STG.KSOP_MIX_TPM', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_TPM;

	IF OBJECT_ID(N'STG.KSOP_MIX_BUD_KGSPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BUD_KGSPD;

	IF OBJECT_ID(N'STG.KSOP_MIX_BU_GSVPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BU_GSVPD;

	IF OBJECT_ID(N'STG.KSOP_MIX_SE1_KGSPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_SE1_KGSPD;

	IF OBJECT_ID(N'STG.KSOP_MIX_SE_GSVPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_SE_GSVPD;

	--- Do not drop this table  ---- Needed at the end to insert rows for the corresponding BU
---  This needs to be executed only when new columns are added to this table as part of the temp table dynamically
	--IF OBJECT_ID(N'dbo.KSOP_MIX_FULL', N'U') IS NOT NULL
	--DROP TABLE KNA_SC.STG.KSOP_MIX_FULL_STG;

	IF OBJECT_ID(N'STG.KSOP_MIX_BUG_KGSPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BUG_KGSPD;
	
/***********************************************************************************
	1	-	MATERIAL MASTER DATA 
************************************************************************************/

SELECT 
A.MATRL_NBR,
A.MATRL_DESC, 
(SELECT TOP 1 CA.CHRSTC_VAL FROM [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] CA WITH (NOLOCK)
	WHERE CA.MATRL_NBR = A.MATRL_NBR
	AND CA.CLAS= 'ALT_PROD_HIERARCHY' AND
	CA.CHRSTC_NM = 'ALT_CATEGORY') as Category,
B.PROD_HIER_BRAND_DESC as BRAND ,
(SELECT TOP 1 CC.CHRSTC_VAL FROM [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] CC WITH (NOLOCK)
	WHERE CC.MATRL_NBR = A.MATRL_NBR
	AND CC.CHRSTC_NM = 'SUB-BRAND') as SUB_BRAND,
B.PROD_HIER_TYPE_DESC as [Type], 
B.PROD_HIER_SUB_TYPE_DESC as SUB_TYPE, 
CASE 
	WHEN A.WGT_UOM = 'LB'
		THEN A.NET_WGT
	ELSE 0
END AS NET_WGT_LBS,
CASE 
	WHEN A.WGT_UOM = 'KG'
		THEN A.NET_WGT
	ELSE 0
END AS NET_WGT_KGS,
D.PRC as PRC, 
D.SALES_ORG,
CASE 
	WHEN D.SALES_ORG= '1001'
		THEN 'US'
	WHEN D.SALES_ORG = '1002'
		THEN 'CA'
	WHEN A.MATRL_NBR like '%6410052103%' THEN 'CA'   
	ELSE 'US'
	END AS COUNTRY,
B.PROD_HIER ,
B.PROD_HIER_DESC,
A.COST_OF_PROD ,
A.BASE_UOM,
H.LVL7_SETNAME AS ANAPLAN_BRAND,
(SELECT TOP 1 E.[CNV_FCTR]
  FROM [KG_VIEWS].[KNA].[UVW_MATRL_ALTN_UOM] E WITH (NOLOCK)
  WHERE E.ALTN_UOM='CS' AND E.MATRL_NBR = A.MATRL_NBR) AS CNV_FCTR,
  
  A.COST_OF_PROD * (SELECT TOP 1 E.[CNV_FCTR]
  FROM [KG_VIEWS].[KNA].[UVW_MATRL_ALTN_UOM] E WITH (NOLOCK)
  WHERE E.ALTN_UOM='CS' AND E.MATRL_NBR = A.MATRL_NBR) AS COP_CS
    
INTO KNA_SC.STG.KSOP_MIX_MATRL
--Select * from KNA_SC.STG.KSOP_MIX_MATRL
FROM [KG_VIEWS].[KNA].[UVW_MATRL] A  WITH (NOLOCK)
left outer join KNA_ECC.[dbo].[UVW_PROD_HIER] B WITH (NOLOCK)
	on A.PROD_HIER=B.PROD_HIER AND A.MATRL_TYP = 'FERT'
left outer join [KG_VIEWS].[KNA].[UVW_MATRL_PRC_CUR] D WITH (NOLOCK)
	on A.MATRL_NBR = D.MATRL_NBR AND D.SALES_ORG <> '1000'
left outer join [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] C WITH (NOLOCK)
	on A.MATRL_NBR = C.MATRL_NBR
left outer join [KG_VIEWS].[KNA].[UVW_PRFT_CTR_HIER_UNRVL] H WITH (NOLOCK)
    on H.SETNAME = A.PRFT_CTR AND H.APPL_NM = 'KNA_KSOP_MIX' 
WHERE C.CLAS= 'ALT_PROD_HIERARCHY' AND
	  C.CHRSTC_NM = 'ALT_CATEGORY';

/***********************************************************************************
	2	-	CONSENSUS FORECAST DATA INTO KSOP_MIX_FCST_CONS_TMP TABLE
************************************************************************************/
	
	SELECT FOR1.* 
	INTO #KSOP_MIX_FCST_TMP3
	FROM KG_DP.dbo.KNA_DDPO_FORECAST FOR1 WITH (NOLOCK)
	WHERE FOR1.BU IN (SELECT BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)				----- Driving Table with BU enabled
	AND FOR1.BOM_FLAG IN ('C','N')
	AND FOR1.SALESORG <> '1009'													----- As per Keith's request
--	AND FOR1.CHANNEL NOT IN ('03','11','16','19')								----- As per Keith's and Jen request; Latesst request 
																				----- and this filter will be done in the Tableau
--	AND FOR1.VERSN IN (SELECT MAX(VERSN) FROM KG_DP.dbo.KNA_DDPO_FORECAST WITH (NOLOCK))
	AND FOR1.VERSN IN (SELECT MAX(VERSN) FROM KG_DP.dbo.KNA_DDPO_FORECAST WITH (NOLOCK)
						WHERE VERSN_YR = (CASE WHEN (Month(GetDate()) - 1) = 0 THEN Year(GETDate()) - 1 ELSE  Year(GETDate()) END) 
						AND VERSN_MN = (CASE WHEN (Month(GetDate()) - 1) = 0 THEN 12 ELSE Month(GetDate()) - 1 END ) )	
				--	Always the load the previous month last friday version
	SELECT 
		CASE 
			WHEN FORECAST.BU = 'KBLRFROZEN'
				THEN 'Frozen'
			WHEN FORECAST.BU = 'KBLRKASHI'
				THEN 'Frozen'
			WHEN FORECAST.BU = 'KBLRMF'
				THEN 'Morning Foods'
			WHEN FORECAST.BU = 'KBLRSNACKS'
				THEN 'Snacks'
			WHEN FORECAST.BU = 'KBLRSPCLTY'
				THEN 'Specialty'
			ELSE 'z Other'
			END AS BU
		,FORECAST.MATRL_NBR
		,FORECAST.CHANNEL 
		,FORECAST.CATEGORY
		,FORECAST.BRAND
		,FORECAST.ANAPLAN_BRAND
		,FORECAST.TYPE
		,FORECAST.FISC_YR_PD AS 'FISC_YR_PD'
		,FORECAST.FISC_YR_WK AS 'FISC_YR_WK'
		,FORECAST.CURR_VRSN
		,FORECAST.FORECAST_IN_CASES AS 'FORECAST_IN_CASES'
		,FORECAST.FORECAST_GSV_AMOUNT AS 'FORECAST_GSV_AMOUNT'
        ,FORECAST.FORECAST_KILOS_AMOUNT AS 'FORECAST_KILOS_AMOUNT'
		,FORECAST.FORECAST_LBS_AMOUNT AS 'FORECAST_LBS_AMOUNT'
		,FORECAST.FORECAST_COP_AMOUNT as 'FORECAST_COP_AMOUNT'
		,FORECAST.COP_VAL as 'COP_VAL'
		,FORECAST.DP_MTRIL
		,FORECAST.FISCA_DT
		,FORECAST.FORE_PD_CS
		,FORECAST.FORE_PD_GSV
		,FORECAST.FORE_PD_KGS
		,FORECAST.FORE_PD_LBS
		,FORECAST.FORE_PD_COP
    INTO #KSOP_MIX_FCST_CONS_TMP
	FROM
		
	/*********************Forcast USA Company*********************/
	(
    SELECT 
 		F1.BU
		,F1.EXPLODED_MTRIL AS 'MATRL_NBR'
		,F1.CHANNEL
		,(select CATE.CHRSTC_VAL 
			from [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] CATE WITH (NOLOCK)
			where CATE.CLAS= 'ALT_PROD_HIERARCHY' AND
				  CATE.CHRSTC_NM = 'ALT_CATEGORY' AND
				  CATE.MATRL_NBR = F1.EXPLODED_MTRIL
		) AS CATEGORY
		,(SELECT DISTINCT MATL.BRAND 
			FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
			WHERE MATL.MATRL_NBR = F1.EXPLODED_MTRIL
		) AS BRAND
		,(SELECT DISTINCT MATL.ANAPLAN_BRAND 
			FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
			WHERE MATL.MATRL_NBR = F1.EXPLODED_MTRIL
		) AS ANAPLAN_BRAND
		,(SELECT DISTINCT MAT.[Type] 
			FROM KNA_SC.STG.KSOP_MIX_MATRL MAT
			WHERE MAT.MATRL_NBR = F1.EXPLODED_MTRIL
		) AS [TYPE]
		,F1.FISC_YR_PD 
		,F1.FISC_YR_WK
		,F1.VERSN as CURR_VRSN

		,F1.ZDPWRKFC AS 'FORECAST_IN_CASES'
		,F1.ZDPWRKFC_GSV AS 'FORECAST_GSV_AMOUNT'
		,F1.ZDPWRKFC_ZNK AS 'FORECAST_KILOS_AMOUNT'
		,F1.ZDPWRKFC_ZNL AS 'FORECAST_LBS_AMOUNT' 

--- As per Keiths request and email - 20180307
		--,F1.ZDPFFCST AS 'FORECAST_IN_CASES'
		--,F1.ZDPPFCST_GSV AS 'FORECAST_GSV_AMOUNT'
		--,F1.ZDPPFCST_ZNK AS 'FORECAST_KILOS_AMOUNT'
		--,F1.ZDPPFCST_ZNL AS 'FORECAST_LBS_AMOUNT'

		,CAST(0 AS DECIMAL(11,2)) AS FORECAST_COP_AMOUNT
		,(SELECT DISTINCT MATL.COST_OF_PROD 
			FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
			WHERE MATL.MATRL_NBR = F1.EXPLODED_MTRIL) AS COP_VAL
		,F1.DP_MTRIL AS DP_MTRIL
		,F1.VERSN AS FISCA_DT
		,(select sum(F2.ZDPWRKFC) from #KSOP_MIX_FCST_TMP3 F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_CS 
		,(select sum(F2.ZDPWRKFC_GSV) from #KSOP_MIX_FCST_TMP3 F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_GSV 
		,(select sum(F2.ZDPWRKFC_ZNK) from #KSOP_MIX_FCST_TMP3 F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_KGS
		,(select sum(F2.ZDPWRKFC_ZNL) from #KSOP_MIX_FCST_TMP3 F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_LBS 
		,CAST(0 AS DECIMAL(11,2)) AS FORE_PD_COP
	FROM #KSOP_MIX_FCST_TMP3 F1
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = F1.EXPLODED_MTRIL AND A.MATRL_TYP = 'FERT'
	) FORECAST;

	
	/***********************************************************************************
	FORCAST COP $ CALCULATION 
	************************************************************************************/
	UPDATE #KSOP_MIX_FCST_CONS_TMP 
	SET FORECAST_COP_AMOUNT = FORECAST_IN_CASES * COP_VAL ;

	UPDATE #KSOP_MIX_FCST_CONS_TMP 
	SET FORE_PD_COP = FORE_PD_CS * COP_VAL;

/***********************************************************************************
	CONSENSUS FORECAST DATA INTO KSOP_MIX_FCST_CONS_TMP TABLE - for Previous version
************************************************************************************/
	
	SELECT FOR1.* 
	INTO #KSOP_MIX_FCST_TMP3_PREV
	FROM KG_DP.dbo.KNA_DDPO_FORECAST FOR1 WITH (NOLOCK)
	WHERE FOR1.BU IN (SELECT BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB  WHERE CUR_FLG = 1)				----- Driving Table with BU enabled
	AND FOR1.BOM_FLAG IN ('C','N')
	AND FOR1.SALESORG <> '1009'													----- As per Keith's request
--	AND FOR1.CHANNEL NOT IN ('03','11','16','19')								----- As per Keith's and Jen request
	--AND FOR1.VERSN IN (SELECT distinct MAX(VERSN) FROM KG_DP.dbo.KNA_DDPO_FORECAST WITH (NOLOCK)
	--						WHERE VERSN NOT IN (SELECT MAX(VERSN) FROM KG_DP.dbo.KNA_DDPO_FORECAST WITH (NOLOCK) ) )
	AND FOR1.VERSN IN (SELECT MAX(VERSN) FROM KG_DP.dbo.KNA_DDPO_FORECAST WITH (NOLOCK)
						WHERE VERSN_YR = (CASE WHEN (Month(GetDate()) - 2) = 0 THEN Year(GETDate()) - 1 
												WHEN (Month(GetDate()) - 2) = -1 THEN Year(GETDate()) - 1 
												ELSE  Year(GETDate()) END) 
						AND VERSN_MN = (CASE WHEN (Month(GetDate()) - 2) = 0 THEN 12
												WHEN (Month(GetDate()) - 2) = -1 THEN 11
												ELSE Month(GetDate()) - 2 END ) )		--- last 2 month
	--	Always the load the previous to the last month - last friday version


	SELECT 
		CASE 
			WHEN FORECAST.BU = 'KBLRFROZEN'
				THEN 'Frozen'
			WHEN FORECAST.BU = 'KBLRKASHI'
				THEN 'Frozen'
			WHEN FORECAST.BU = 'KBLRMF'
				THEN 'Morning Foods'
			WHEN FORECAST.BU = 'KBLRSNACKS'
				THEN 'Snacks'
			WHEN FORECAST.BU = 'KBLRSPCLTY'
				THEN 'Specialty'
			ELSE 'z Other'
			END AS BU
		,FORECAST.MATRL_NBR
		,FORECAST.CHANNEL 
		,FORECAST.CATEGORY
		,FORECAST.BRAND
		,FORECAST.ANAPLAN_BRAND
		,FORECAST.TYPE
		,FORECAST.FISC_YR_PD AS 'FISC_YR_PD'
		,FORECAST.FISC_YR_WK AS 'FISC_YR_WK'
		,FORECAST.PREV_VRSN
		,FORECAST.FORECAST_IN_CASES AS 'FORECAST_IN_CASES'
		,FORECAST.FORECAST_GSV_AMOUNT AS 'FORECAST_GSV_AMOUNT'
        ,FORECAST.FORECAST_KILOS_AMOUNT AS 'FORECAST_KILOS_AMOUNT'
		,FORECAST.FORECAST_LBS_AMOUNT AS 'FORECAST_LBS_AMOUNT'
		,FORECAST.FORECAST_COP_AMOUNT as 'FORECAST_COP_AMOUNT'
		,FORECAST.COP_VAL as 'COP_VAL'
		,FORECAST.DP_MTRIL
		,FORECAST.FISCA_DT
		,FORECAST.FORE_PD_CS
		,FORECAST.FORE_PD_GSV
		,FORECAST.FORE_PD_KGS
		,FORECAST.FORE_PD_LBS
		,FORECAST.FORE_PD_COP
    INTO #KSOP_MIX_FCST_CONS_TMP_PREV
	FROM
		
	/*********************Forcast USA Company*********************/
	(
    SELECT 
 		F1.BU
		,F1.EXPLODED_MTRIL AS 'MATRL_NBR'
		,F1.CHANNEL
		,(select CATE.CHRSTC_VAL 
		from [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] CATE WITH (NOLOCK)
		where 
		CATE.CLAS= 'ALT_PROD_HIERARCHY' AND
		CATE.CHRSTC_NM = 'ALT_CATEGORY' AND
		CATE.MATRL_NBR = F1.EXPLODED_MTRIL
		) AS CATEGORY
		,(SELECT DISTINCT MATL.BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		WHERE MATL.MATRL_NBR = F1.EXPLODED_MTRIL) AS BRAND
		,(SELECT DISTINCT MATL.ANAPLAN_BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		WHERE MATL.MATRL_NBR = F1.EXPLODED_MTRIL) AS ANAPLAN_BRAND
		,(SELECT DISTINCT MAT.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MAT
		WHERE MAT.MATRL_NBR = F1.EXPLODED_MTRIL) AS [TYPE]
		,F1.FISC_YR_PD 
		,F1.FISC_YR_WK
		,F1.VERSN as PREV_VRSN
---- As per Keith's email, modified the Key column
		,F1.ZDPWRKFC AS 'FORECAST_IN_CASES'
		,F1.ZDPWRKFC_GSV AS 'FORECAST_GSV_AMOUNT'
		,F1.ZDPWRKFC_ZNK AS 'FORECAST_KILOS_AMOUNT'
		,F1.ZDPWRKFC_ZNL AS 'FORECAST_LBS_AMOUNT' 

		--,F1.ZDPFFCST	 AS 'FORECAST_IN_CASES'
		--,F1.ZDPPFCST_GSV AS 'FORECAST_GSV_AMOUNT'
		--,F1.ZDPPFCST_ZNK AS 'FORECAST_KILOS_AMOUNT'
		--,F1.ZDPPFCST_ZNL AS 'FORECAST_LBS_AMOUNT'

		,CAST(0 AS DECIMAL(11,2)) AS FORECAST_COP_AMOUNT
		,(SELECT DISTINCT MATL.COST_OF_PROD 
			FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
			WHERE MATL.MATRL_NBR = F1.EXPLODED_MTRIL) AS COP_VAL
		,F1.DP_MTRIL AS DP_MTRIL
		,F1.VERSN AS FISCA_DT
		,(select sum(F2.ZDPWRKFC) from #KSOP_MIX_FCST_TMP3_PREV F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_CS 
		,(select sum(F2.ZDPWRKFC_GSV) from #KSOP_MIX_FCST_TMP3_PREV F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_GSV 
		,(select sum(F2.ZDPWRKFC_ZNK) from #KSOP_MIX_FCST_TMP3_PREV F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_KGS
		,(select sum(F2.ZDPWRKFC_ZNL) from #KSOP_MIX_FCST_TMP3_PREV F2
	            where F2.BU = F1.BU AND F2.CHANNEL = F1.CHANNEL AND F2.EXPLODED_MTRIL = F1.EXPLODED_MTRIL AND F2.FISC_YR_PD=F1.FISC_YR_PD) as FORE_PD_LBS 
		,CAST(0 AS DECIMAL(11,2)) AS FORE_PD_COP
	FROM #KSOP_MIX_FCST_TMP3_PREV F1
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = F1.EXPLODED_MTRIL AND A.MATRL_TYP = 'FERT'
	) FORECAST;
	
	
	/***********************************************************************************
	FORCAST COP $ CALCULATION 
	************************************************************************************/
	UPDATE #KSOP_MIX_FCST_CONS_TMP_PREV
	SET FORECAST_COP_AMOUNT = FORECAST_IN_CASES * COP_VAL ;

	UPDATE #KSOP_MIX_FCST_CONS_TMP_PREV 
	SET FORE_PD_COP = FORE_PD_CS * COP_VAL;

	/***********************************************************************************
	FORCAST FORMULA CALCULATION INTO KSOP_MIX_FCST TABLE
	************************************************************************************/
	SELECT DISTINCT
		FORECAST1.BU,
		FORECAST1.MATRL_NBR,
		FORECAST1.CHANNEL,
		FORECAST1.CATEGORY,
		FORECAST1.BRAND,
		FORECAST1.ANAPLAN_BRAND,
		FORECAST1.[TYPE],
--		FORECAST1.FISC_YR_WK,
		FORECAST1.FISC_YR_PD,
		FORECAST1.CURR_VRSN,		
		FORECAST1.FORECAST_IN_CASES AS FCST_CASES,
		FORECAST1.FORECAST_LBS_AMOUNT AS FCST_LBS, 
		FORECAST1.FORECAST_KILOS_AMOUNT AS FCST_KGS,  
		FORECAST1.FORECAST_GSV_AMOUNT AS FCST_GSV,
        FORECAST1.FORECAST_COP_AMOUNT AS FCST_COP,  
	    
		FORECAST1.CONS_FCST_GSV_BU, 
		FORECAST1.CONS_FCST_GSV_CATE, 
		FORECAST1.CONS_FCST_GSV_ANA_BRAN,
		FORECAST1.CONS_FCST_GSV_CHAN,
		FORECAST1.CONS_FCST_GSV_BRAN,
		FORECAST1.CONS_FCST_GSV_TYPE,

		FORECAST1.CONS_FCST_KGS_BU, 
		FORECAST1.CONS_FCST_KGS_CATE, 
		FORECAST1.CONS_FCST_KGS_ANA_BRAN,
		FORECAST1.CONS_FCST_KGS_CHAN,
		FORECAST1.CONS_FCST_KGS_BRAN,
		FORECAST1.CONS_FCST_KGS_TYPE,

		FORECAST1.CONS_FCST_COP_BU, 
		FORECAST1.CONS_FCST_COP_CATE, 
		FORECAST1.CONS_FCST_COP_ANA_BRAN,
		FORECAST1.CONS_FCST_COP_CHAN,
		FORECAST1.CONS_FCST_COP_BRAN,
		FORECAST1.CONS_FCST_COP_TYPE


		,FORECAST1.DP_MTRIL
		,FORECAST1.FISCA_DT
		
		,FORECAST1.FORE_PD_CS
		,FORECAST1.FORE_PD_GSV
		,FORECAST1.FORE_PD_KGS
		,FORECAST1.FORE_PD_LBS
		,FORECAST1.FORE_PD_COP
	
	INTO  #KSOP_MIX_FCST_CURR_VRSN
	FROM
	(
	SELECT  
        FORE1.BU,
		FORE1.MATRL_NBR,
		FORE1.CHANNEL,
		FORE1.CATEGORY,
		FORE1.BRAND,
		FORE1.ANAPLAN_BRAND,
		FORE1.[TYPE],
		FORE1.FISC_YR_PD,
	    FORE1.FISC_YR_WK,
		FORE1.CURR_VRSN,
		FORE1.FORECAST_IN_CASES ,
		FORE1.FORECAST_GSV_AMOUNT,
        FORE1.FORECAST_KILOS_AMOUNT , 
		FORE1.FORECAST_LBS_AMOUNT ,  
		FORE1.FORECAST_COP_AMOUNT ,  

	    (select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_GSV_BU ,
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP  F2
	            where F2.BU = FORE1.BU AND F2.CATEGORY = FORE1.CATEGORY AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_GSV_CATE ,
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP  F2
	            where F2.BU = FORE1.BU AND F2.ANAPLAN_BRAND = FORE1.ANAPLAN_BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_GSV_ANA_BRAN ,
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.CHANNEL = FORE1.CHANNEL AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_GSV_CHAN , 
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_GSV_BRAN , 
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.[TYPE] = FORE1.[TYPE] AND F2.CHANNEL = FORE1.CHANNEL  AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_GSV_TYPE ,

		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_KGS_BU ,
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP  F2
	            where F2.BU = FORE1.BU AND F2.CATEGORY = FORE1.CATEGORY AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_KGS_CATE ,
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP  F2
	            where F2.BU = FORE1.BU AND F2.ANAPLAN_BRAND = FORE1.ANAPLAN_BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_KGS_ANA_BRAN ,
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.CHANNEL = FORE1.CHANNEL AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_KGS_CHAN , 
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_KGS_BRAN , 
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.[TYPE] = FORE1.[TYPE] AND F2.CHANNEL = FORE1.CHANNEL AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_KGS_TYPE ,

		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.BU = FORE1.BU AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_COP_BU ,
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP  F2
	            where F2.BU = FORE1.BU AND F2.CATEGORY = FORE1.CATEGORY AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_COP_CATE ,
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP  F2
	            where F2.BU = FORE1.BU AND F2.ANAPLAN_BRAND = FORE1.ANAPLAN_BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_COP_ANA_BRAN ,
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.CHANNEL = FORE1.CHANNEL AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_COP_CHAN , 
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_COP_BRAN , 
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP F2
	            where F2.BU = FORE1.BU AND F2.[TYPE] = FORE1.[TYPE] AND F2.CHANNEL = FORE1.CHANNEL AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as CONS_FCST_COP_TYPE 

		,FORE1.DP_MTRIL
		,FORE1.FISCA_DT
		,FORE1.FORE_PD_CS
		,FORE1.FORE_PD_GSV
		,FORE1.FORE_PD_KGS
		,FORE1.FORE_PD_LBS
		,FORE1.FORE_PD_COP


		FROM #KSOP_MIX_FCST_CONS_TMP FORE1
		) FORECAST1;
		

--------------------
	SELECT DISTINCT
		FORECAST1.BU,
		FORECAST1.MATRL_NBR,
		FORECAST1.CHANNEL,
		FORECAST1.CATEGORY,
		FORECAST1.BRAND,
		FORECAST1.ANAPLAN_BRAND,
		FORECAST1.[TYPE],
--		FORECAST1.FISC_YR_WK,
		FORECAST1.FISC_YR_PD,
		FORECAST1.PREV_VRSN,
		FORECAST1.FORECAST_IN_CASES AS FCST_CASES,
		FORECAST1.FORECAST_LBS_AMOUNT AS FCST_LBS, 
		FORECAST1.FORECAST_KILOS_AMOUNT AS FCST_KGS,  
		FORECAST1.FORECAST_GSV_AMOUNT AS FCST_GSV,
        FORECAST1.FORECAST_COP_AMOUNT AS FCST_COP,  
	    
		FORECAST1.PREV_CONS_FCST_GSV_BU, 
		FORECAST1.PREV_CONS_FCST_GSV_CATE,
		FORECAST1.PREV_CONS_FCST_GSV_ANA_BRAN,
		FORECAST1.PREV_CONS_FCST_GSV_CHAN,
		FORECAST1.PREV_CONS_FCST_GSV_BRAN,
		FORECAST1.PREV_CONS_FCST_GSV_TYPE,

		FORECAST1.PREV_CONS_FCST_KGS_BU, 
		FORECAST1.PREV_CONS_FCST_KGS_CATE,
		FORECAST1.PREV_CONS_FCST_KGS_ANA_BRAN,
		FORECAST1.PREV_CONS_FCST_KGS_CHAN,
		FORECAST1.PREV_CONS_FCST_KGS_BRAN,
		FORECAST1.PREV_CONS_FCST_KGS_TYPE,

		FORECAST1.PREV_CONS_FCST_COP_BU, 
		FORECAST1.PREV_CONS_FCST_COP_CATE,
		FORECAST1.PREV_CONS_FCST_COP_ANA_BRAN,
		FORECAST1.PREV_CONS_FCST_COP_CHAN,
		FORECAST1.PREV_CONS_FCST_COP_BRAN,
		FORECAST1.PREV_CONS_FCST_COP_TYPE


		,FORECAST1.DP_MTRIL
		,FORECAST1.FISCA_DT
		
		,FORECAST1.FORE_PD_CS
		,FORECAST1.FORE_PD_GSV
		,FORECAST1.FORE_PD_KGS
		,FORECAST1.FORE_PD_LBS
		,FORECAST1.FORE_PD_COP
	
	INTO #KSOP_MIX_FCST_PREV_VRSN
	FROM
	(
	SELECT  
        FORE1.BU,
		FORE1.MATRL_NBR,
		FORE1.CHANNEL,
		FORE1.CATEGORY,
		FORE1.BRAND,
		FORE1.ANAPLAN_BRAND,
		FORE1.[TYPE],
		FORE1.FISC_YR_PD,
	    FORE1.FISC_YR_WK,
		FORE1.PREV_VRSN,
		FORE1.FORECAST_IN_CASES ,
		FORE1.FORECAST_GSV_AMOUNT,
        FORE1.FORECAST_KILOS_AMOUNT , 
		FORE1.FORECAST_LBS_AMOUNT , 
		FORE1.FORECAST_COP_AMOUNT ,  

	    (select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_GSV_BU ,
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV  F2
	            where F2.BU = FORE1.BU AND F2.CATEGORY = FORE1.CATEGORY AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_GSV_CATE ,
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.ANAPLAN_BRAND = FORE1.ANAPLAN_BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_GSV_ANA_BRAN ,
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.CHANNEL = FORE1.CHANNEL AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_GSV_CHAN , 
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_GSV_BRAN , 
		(select sum(F2.FORECAST_GSV_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.[TYPE] = FORE1.[TYPE] AND F2.CHANNEL = FORE1.CHANNEL  AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_GSV_TYPE ,

		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_KGS_BU ,
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV  F2
	            where F2.BU = FORE1.BU AND F2.CATEGORY = FORE1.CATEGORY AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_KGS_CATE ,
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.ANAPLAN_BRAND = FORE1.ANAPLAN_BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_KGS_ANA_BRAN ,
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.CHANNEL = FORE1.CHANNEL AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_KGS_CHAN , 
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_KGS_BRAN , 
		(select sum(F2.FORECAST_KILOS_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.[TYPE] = FORE1.[TYPE] AND F2.CHANNEL = FORE1.CHANNEL AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_KGS_TYPE ,

		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.BU = FORE1.BU AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_COP_BU ,
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV  F2
	            where F2.BU = FORE1.BU AND F2.CATEGORY = FORE1.CATEGORY AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_COP_CATE ,
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.ANAPLAN_BRAND = FORE1.ANAPLAN_BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_COP_ANA_BRAN ,
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.CHANNEL = FORE1.CHANNEL AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_COP_CHAN , 
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.BRAND = FORE1.BRAND AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_COP_BRAN , 
		(select sum(F2.FORECAST_COP_AMOUNT) from #KSOP_MIX_FCST_CONS_TMP_PREV F2
	            where F2.BU = FORE1.BU AND F2.[TYPE] = FORE1.[TYPE] AND F2.CHANNEL = FORE1.CHANNEL AND F2.FISC_YR_PD=FORE1.FISC_YR_PD) as PREV_CONS_FCST_COP_TYPE 


		,FORE1.DP_MTRIL
		,FORE1.FISCA_DT
		,FORE1.FORE_PD_CS
		,FORE1.FORE_PD_GSV
		,FORE1.FORE_PD_KGS
		,FORE1.FORE_PD_LBS
		,FORE1.FORE_PD_COP


		FROM #KSOP_MIX_FCST_CONS_TMP_PREV FORE1
		) FORECAST1;

------------

		SELECT 	
		COALESCE(FORE1.BU,FORE_PREV.BU) as BU,
		COALESCE(FORE1.MATRL_NBR, FORE_PREV.MATRL_NBR) as MATRL_NBR,
		COALESCE(FORE1.CHANNEL, FORE_PREV.CHANNEL) as CHANNEL,
		COALESCE(FORE1.CATEGORY, FORE_PREV.CATEGORY) as CATEGORY,
		COALESCE(FORE1.BRAND, FORE_PREV.BRAND) as BRAND,
		COALESCE(FORE1.ANAPLAN_BRAND, FORE_PREV.ANAPLAN_BRAND) as ANAPLAN_BRAND,
		COALESCE(FORE1.[TYPE], FORE_PREV.[TYPE]) as [TYPE],
--		COALESCE(FORE1.FISC_YR_WK, FORE_PREV.FISC_YR_WK) as FISC_YR_WK,
		CAST(null as VARCHAR(10)) as FISC_YR_WK,
		COALESCE(FORE1.FISC_YR_PD, FORE_PREV.FISC_YR_PD) as FISC_YR_PD,
				
		FORE1.FCST_CASES,
		FORE1.FCST_LBS, 
		FORE1.FCST_KGS,  
		FORE1.FCST_GSV,
        FORE1.FCST_COP,  

		FORE1.CONS_FCST_GSV_BU, 
		FORE1.CONS_FCST_GSV_CATE,
		FORE1.CONS_FCST_GSV_ANA_BRAN,
		FORE1.CONS_FCST_GSV_CHAN,
		FORE1.CONS_FCST_GSV_BRAN,
		FORE1.CONS_FCST_GSV_TYPE,

		FORE1.CONS_FCST_KGS_BU, 
		FORE1.CONS_FCST_KGS_CATE,
		FORE1.CONS_FCST_KGS_ANA_BRAN,
		FORE1.CONS_FCST_KGS_CHAN,
		FORE1.CONS_FCST_KGS_BRAN,
		FORE1.CONS_FCST_KGS_TYPE,

		FORE1.CONS_FCST_COP_BU, 
		FORE1.CONS_FCST_COP_CATE,
		FORE1.CONS_FCST_COP_ANA_BRAN,
		FORE1.CONS_FCST_COP_CHAN,
		FORE1.CONS_FCST_COP_BRAN,
		FORE1.CONS_FCST_COP_TYPE,
	    
		FORE_PREV.PREV_CONS_FCST_GSV_BU, 
		FORE_PREV.PREV_CONS_FCST_GSV_CATE,
		FORE_PREV.PREV_CONS_FCST_GSV_ANA_BRAN,
		FORE_PREV.PREV_CONS_FCST_GSV_CHAN,
		FORE_PREV.PREV_CONS_FCST_GSV_BRAN,
		FORE_PREV.PREV_CONS_FCST_GSV_TYPE,

		FORE_PREV.PREV_CONS_FCST_KGS_BU, 
		FORE_PREV.PREV_CONS_FCST_KGS_CATE,
		FORE_PREV.PREV_CONS_FCST_KGS_ANA_BRAN,
		FORE_PREV.PREV_CONS_FCST_KGS_CHAN,
		FORE_PREV.PREV_CONS_FCST_KGS_BRAN,
		FORE_PREV.PREV_CONS_FCST_KGS_TYPE,

		FORE_PREV.PREV_CONS_FCST_COP_BU, 
		FORE_PREV.PREV_CONS_FCST_COP_CATE,
		FORE_PREV.PREV_CONS_FCST_COP_ANA_BRAN,
		FORE_PREV.PREV_CONS_FCST_COP_CHAN,
		FORE_PREV.PREV_CONS_FCST_COP_BRAN,
		FORE_PREV.PREV_CONS_FCST_COP_TYPE

		,FORE1.DP_MTRIL
		,FORE1.FISCA_DT
		,FORE1.CURR_VRSN as CURR_VRSN
		,FORE_PREV.PREV_VRSN
		,FORE1.FORE_PD_CS
		,FORE1.FORE_PD_GSV
		,FORE1.FORE_PD_KGS
		,FORE1.FORE_PD_LBS
		,FORE1.FORE_PD_COP

		,FORE_PREV.FORE_PD_CS  AS PREV_FORE_PD_CS
		,FORE_PREV.FORE_PD_GSV  AS PREV_FORE_PD_GSV
		,FORE_PREV.FORE_PD_KGS  AS PREV_FORE_PD_KGS
		,FORE_PREV.FORE_PD_LBS  AS PREV_FORE_PD_LBS
		,FORE_PREV.FORE_PD_COP  AS PREV_FORE_PD_COP
			
	INTO KNA_SC.STG.KSOP_MIX_FCST

		FROM #KSOP_MIX_FCST_CURR_VRSN	FORE1
		INNER JOIN ( 
	SELECT DISTINCT
		FORECAST1.BU,
		FORECAST1.MATRL_NBR,
		FORECAST1.CHANNEL,
		FORECAST1.CATEGORY,
		FORECAST1.BRAND,
		FORECAST1.ANAPLAN_BRAND,
		FORECAST1.[TYPE],
--		FORECAST1.FISC_YR_WK,
		FORECAST1.FISC_YR_PD,
		FORECAST1.PREV_VRSN,
    
		FORECAST1.PREV_CONS_FCST_GSV_BU, 
		FORECAST1.PREV_CONS_FCST_GSV_CATE,
		FORECAST1.PREV_CONS_FCST_GSV_ANA_BRAN,
		FORECAST1.PREV_CONS_FCST_GSV_CHAN,
		FORECAST1.PREV_CONS_FCST_GSV_BRAN,
		FORECAST1.PREV_CONS_FCST_GSV_TYPE,

		FORECAST1.PREV_CONS_FCST_KGS_BU, 
		FORECAST1.PREV_CONS_FCST_KGS_CATE,
		FORECAST1.PREV_CONS_FCST_KGS_ANA_BRAN,
		FORECAST1.PREV_CONS_FCST_KGS_CHAN,
		FORECAST1.PREV_CONS_FCST_KGS_BRAN,
		FORECAST1.PREV_CONS_FCST_KGS_TYPE,

		FORECAST1.PREV_CONS_FCST_COP_BU, 
		FORECAST1.PREV_CONS_FCST_COP_CATE,
		FORECAST1.PREV_CONS_FCST_COP_ANA_BRAN,
		FORECAST1.PREV_CONS_FCST_COP_CHAN,
		FORECAST1.PREV_CONS_FCST_COP_BRAN,
		FORECAST1.PREV_CONS_FCST_COP_TYPE


		,FORECAST1.DP_MTRIL
		,FORECAST1.FISCA_DT
		,FORECAST1.FORE_PD_CS
		,FORECAST1.FORE_PD_GSV
		,FORECAST1.FORE_PD_KGS
		,FORECAST1.FORE_PD_LBS
		,FORECAST1.FORE_PD_COP

	FROM #KSOP_MIX_FCST_PREV_VRSN	FORECAST1	
		) FORE_PREV
		ON   FORE1.BU = FORE_PREV.BU AND FORE1.MATRL_NBR = FORE_PREV.MATRL_NBR
		AND  FORE1.CHANNEL = FORE_PREV.CHANNEL AND FORE1.CATEGORY = FORE_PREV.CATEGORY
		AND  FORE1.BRAND = FORE_PREV.BRAND AND FORE1.[TYPE] = FORE_PREV.[TYPE]
		AND FORE1.FISC_YR_PD = FORE_PREV.FISC_YR_PD --AND FORE1.FISC_YR_WK = FORE_PREV.FISC_YR_WK
		AND  FORE1.DP_MTRIL = FORE_PREV.DP_MTRIL --AND  FORE1.FISCA_DT = FORE_PREV.FISCA_DT 
		;


	DROP TABLE #KSOP_MIX_FCST_TMP2;
	DROP TABLE #KSOP_MIX_FCST_TMP3;
	DROP TABLE #KSOP_MIX_FCST_CONS_TMP;
	DROP TABLE #KSOP_MIX_FCST_TMP3_PREV;
	DROP TABLE #KSOP_MIX_FCST_CONS_TMP_PREV;
	DROP TABLE #KSOP_MIX_FCST_PREV_VRSN;
	DROP TABLE #KSOP_MIX_FCST_CURR_VRSN;

/*


SELECT * FROM #KSOP_MIX_FCST_PREV_VRSN
  WHERE MATRL_NBR = '000000002410010684' and FISC_YR_PD = '2018002' and CHANNEL = '01' and BRAND = 'Cheez-It' AND BU = 'Snacks'
*/

/***********************************************************************************
	3	-	ACTUALS FORMULA CALCULATION INTO KSOP_MIX_ACTL TABLE
***********************************************************************************/

	SELECT CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3)) as FISC_YR_PD,
	       concat(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('00', FISC_WK), 2)) as FISC_YR_WK,
		   x.FRCST_DT
    INTO #KSOP_MIX_ACT_CAL
	FROM KG_VIEWS.KG.UVW_FISC_CAL CAL WITH (NOLOCK)
	INNER JOIN
	(SELECT CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3)) as FISC_YR_PD,
	        DATEADD(DD, - 2, MIN(FISC_WK_STRT_DT)) AS FRCST_DT
	from KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
	GROUP BY CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3))
	) x 
	on x.FISC_YR_PD=CONCAT(RIGHT(CONCAT('000', CAL.FISC_YR), 4), RIGHT(CONCAT('000', CAL.FISC_PD), 3))
    WHERE CAL.FISC_YR >= YEAR(GETDATE())-1 AND CAL.FISC_YR<=YEAR(GETDATE()) + 1; -- PREVIOUS YEAR, CURRENT YEAR AND NEXT YEAR (2016,2017,2018)
	
    CREATE INDEX IDX_ACTL_CAL_KSOP_MIX ON #KSOP_MIX_ACT_CAL(FISC_YR_WK, FRCST_DT);

	SELECT MATR_BU.CUST_NBR,MATR_BU.MATRL_NBR, MATR_BU.BU 
	into #ACTL_TMP1 
	FROM KG_VIEWS.KNA.UVW_CUST_MATRL_BU MATR_BU WITH (NOLOCK)
	WHERE MATR_BU.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);		----- Driving table with BU enabled

	SELECT CATE.CHRSTC_VAL,CATE.MATRL_NBR 
	into #ACTL_TMP2 
	FROM KG_VIEWS.KNA.[UVW_MATRL_CLASFCTN] CATE WITH (NOLOCK) 
	WHERE CATE.CLAS= 'ALT_PROD_HIERARCHY' AND CATE.CHRSTC_NM = 'ALT_CATEGORY';

	SELECT CUST_NBR, CHNL_IND  
	into #ACTL_TMP3 
	FROM KG_VIEWS.KNA.UVW_CUST WITH (NOLOCK) 
	WHERE CHNL_IND IS NOT NULL;

	CREATE INDEX IDX_ACTL_TMP1_01 ON #ACTL_TMP1(MATRL_NBR);
	CREATE INDEX IDX_ACTL_TMP1_02 ON #ACTL_TMP1(CUST_NBR);
	CREATE INDEX IDX_ACTL_TMP1_03 ON #ACTL_TMP1(MATRL_NBR,CUST_NBR);
	CREATE INDEX IDX_ACTL_TMP2 ON #ACTL_TMP2(MATRL_NBR);
	CREATE INDEX IDX_ACTL_TMP3 ON #ACTL_TMP3(CUST_NBR);
		
	UPDATE STATISTICS #ACTL_TMP1;
	UPDATE STATISTICS #ACTL_TMP2;
	UPDATE STATISTICS #ACTL_TMP3;

	SELECT LVL2_CUST_NM, LVL2_CUST_NBR, LVL8_CUST_NM, LVL8_CUST_NBR
    INTO #ACTL_TMP0
	FROM [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL] WITH (NOLOCK)
    WHERE HIER_TM_PD='CURRENT'
    AND HIER_TYP='D'
    AND LST_LVL_NBR='8';

	CREATE INDEX IDX_ACTL_TMP0 ON #ACTL_TMP0 (LVL8_CUST_NBR);

	SELECT ACTS1.*, CAST(NULL AS VARCHAR(7)) AS FISC_YR_PD, CAST(NULL AS VARCHAR(7)) AS PREV_FISC_YR_PD
	INTO #ACTL_TMP4
	FROM KNA_COMRCL.dbo.PLN_TO_ITM ACTS1 WITH (NOLOCK)
	INNER JOIN #KSOP_MIX_ACT_CAL CALEN
	    ON ACTS1.CAL_WK=CALEN.FISC_YR_WK
	WHERE ACTS1.MIXD_PLT_FLG IN ('Y','Z','N'); 
	
	UPDATE #ACTL_TMP4 
	SET #ACTL_TMP4.FISC_YR_PD = CALE.FISC_YR_PD 
	FROM #KSOP_MIX_ACT_CAL CALE 
	WHERE CALE.FISC_YR_WK=#ACTL_TMP4.CAL_WK ;

	UPDATE #ACTL_TMP4 
	SET #ACTL_TMP4.PREV_FISC_YR_PD = CONCAT(LEFT(#ACTL_TMP4.FISC_YR_PD,4)-1, RIGHT(#ACTL_TMP4.FISC_YR_PD,3));
	
	CREATE INDEX IDX_ACTL_TMP4 ON #ACTL_TMP4 (MATRL);
	CREATE INDEX IDX_ACTL_TMP4_CUST ON #ACTL_TMP4 (CUST);
		
	UPDATE STATISTICS #ACTL_TMP4;
	
	
	--CURRENT YEAR AND PREV YEAR WHICH IS PRESENT CURRENT YEAR DATA
	SELECT
 		 ACTLS.BU
		,ACTLS.COUNTRY
		,ACTLS.MATRL_NBR
		,ACTLS.CHANNEL
		,ACTLS.CATEGORY
		,ACTLS.BRAND
		,ACTLS.ANAPLAN_BRAND
		,ACTLS.[TYPE]
		,ACTLS.CAL_YR_WK
		,ACTLS.ACT_SAL_CASES
		,ACTLS.ACT_SAL_KGS
		,ACTLS.ACT_SAL_LBS
		,ACTLS.ACT_SAL_GSV
		,ACTLS.ACT_SAL_COP

        ,ACTLS.TPM_FORE_CASES
		,ACTLS.TPM_FORE_LBS
		,ACTLS.TPM_FORE_KGS
		,ACTLS.TPM_FORE_GSV
		,ACTLS.TPM_LE_KMF
		,ACTLS.TPM_FORE_COP

		,ACTLS.FISC_YR_PD
		,ACTLS.PREV_FISC_YR_PD
		,ACTLS.DP_MATRL
		
	INTO #KSOP_MIX_ACTL_TMP
	
	FROM 
	(
	SELECT
		(SELECT TOP 1 BU FROM #ACTL_TMP1 WHERE MATRL_NBR =  A1.MIXD_PLT_MATRL AND CUST_NBR = A1.CUST) AS BU
		,A1.MIXD_PLT_MATRL AS MATRL_NBR
		,(SELECT TOP 1 CHNL_IND from #ACTL_TMP3 WHERE CUST_NBR = A1.CUST) AS CHANNEL
		,(SELECT TOP 1 CATE.CHRSTC_VAL FROM #ACTL_TMP2 CATE
	      WHERE CATE.MATRL_NBR=A1.MIXD_PLT_MATRL) AS CATEGORY
		,(SELECT TOP 1 MATL.BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		  WHERE MATL.MATRL_NBR = A1.MIXD_PLT_MATRL) AS BRAND
		,(SELECT TOP 1 MATL.ANAPLAN_BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		  WHERE MATL.MATRL_NBR = A1.MIXD_PLT_MATRL) AS ANAPLAN_BRAND
		 ,(SELECT TOP 1 MAT.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MAT
		  WHERE MAT.MATRL_NBR = A1.MIXD_PLT_MATRL) AS [TYPE]
		,A1.CAL_WK AS CAL_YR_WK
		
		,A1.ACTL_SHIP_CS AS ACT_SAL_CASES
		,A1.ACTL_SHIP_KG AS ACT_SAL_KGS
		,A1.ACTL_SHIP_LBS AS ACT_SAL_LBS
		,A1.ACTL_SHIP_USD AS ACT_SAL_GSV
		,A1.ACTL_COST_OF_PROD_USD AS ACT_SAL_COP

		,A1.PLN_SHIP_CS AS TPM_FORE_CASES
		,A1.PLN_SHIP_LBS AS TPM_FORE_LBS 
		,A1.PLN_SHIP_KG AS TPM_FORE_KGS
		,A1.PLN_SHIP_USD AS TPM_FORE_GSV
		,A1.LE_KMF_USD AS TPM_LE_KMF
		,A1.TOTL_PLN_KMF_COST_OF_PROD_USD AS TPM_FORE_COP
		
		,A1.FISC_YR_PD
		,A1.PREV_FISC_YR_PD
		,A1.MATRL AS DP_MATRL
--		,(SELECT TOP 1 LVL2_CUST_NM FROM #ACTL_TMP0 WHERE LVL8_CUST_NBR =A1.CUST) AS COUNTRY
		, CAST(NULL as CHAR(2)) as COUNTRY
		
	FROM
	#ACTL_TMP4 A1
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = A1.MIXD_PLT_MATRL AND A.MATRL_TYP = 'FERT'
	WHERE A1.MIXD_PLT_MATRL IN (SELECT MATRL_NBR FROM #ACTL_TMP1)
	AND A1.CUST IN (SELECT CUST_NBR FROM #ACTL_TMP1)
	) ACTLS
    WHERE ACTLS.BU IS NOT NULL;

	UPDATE T
	SET T.COUNTRY = M.COUNTRY
	FROM #KSOP_MIX_ACTL_TMP T 
	INNER JOIN KNA_SC.STG.KSOP_MIX_MATRL M
	on M.MATRL_NBR = T.MATRL_NBR
	WHERE T.COUNTRY IS NULL AND T.MATRL_NBR IS NOT NULL;

	CREATE INDEX IDX_KSOP_MIX_ACTL_TM_01 ON #KSOP_MIX_ACTL_TMP (MATRL_NBR);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TM_02 ON #KSOP_MIX_ACTL_TMP (PREV_FISC_YR_PD);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TM_03 ON #KSOP_MIX_ACTL_TMP (CHANNEL);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TM_04 ON #KSOP_MIX_ACTL_TMP (FISC_YR_PD);

/*

SELECT MATRL_NBR, BU, Type, CHANNEL, FISC_YR_PD, ACT_SAL_GSV
  FROM #KSOP_MIX_ACTL_TMP  
WHERE  BU = 'Snacks' and CHANNEL = '01' and FISC_YR_PD = '2017004'  AND Type = 'Fudge Shoppe M'



*/

	
--ALL PREV YEAR DATA 
SELECT
 		 ACTLS.BU
		,ACTLS.COUNTRY
		,ACTLS.MATRL_NBR
		,ACTLS.CHANNEL
		,ACTLS.CATEGORY
		,ACTLS.BRAND
		,ACTLS.ANAPLAN_BRAND
		,ACTLS.[TYPE]
		,ACTLS.CAL_YR_WK
		
		,ACTLS.ACT_SAL_CASES
		,ACTLS.ACT_SAL_KGS
		,ACTLS.ACT_SAL_LBS
		,ACTLS.ACT_SAL_GSV
		,ACTLS.ACT_SAL_COP

        ,ACTLS.TPM_FORE_CASES
		,ACTLS.TPM_FORE_LBS
		,ACTLS.TPM_FORE_KGS
		,ACTLS.TPM_FORE_GSV
		,ACTLS.TPM_LE_KMF
		,ACTLS.TPM_FORE_COP

		,ACTLS.FISC_YR_PD
		,ACTLS.PREV_FISC_YR_PD
		,ACTLS.DP_MATRL
		
	INTO #KSOP_MIX_ACTL_TMP1
	
	FROM 
	(
	SELECT
		(SELECT TOP 1 BU FROM #ACTL_TMP1 WHERE MATRL_NBR =  A1.MIXD_PLT_MATRL AND CUST_NBR = A1.CUST) AS BU
		,A1.MIXD_PLT_MATRL AS MATRL_NBR
		,(SELECT TOP 1 CHNL_IND from #ACTL_TMP3 WHERE CUST_NBR = A1.CUST) AS CHANNEL
		,(SELECT TOP 1 CATE.CHRSTC_VAL FROM #ACTL_TMP2 CATE
	      WHERE CATE.MATRL_NBR=A1.MIXD_PLT_MATRL) AS CATEGORY
		,(SELECT TOP 1 MATL.BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		  WHERE MATL.MATRL_NBR = A1.MIXD_PLT_MATRL) AS BRAND
		,(SELECT TOP 1 MATL.ANAPLAN_BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		  WHERE MATL.MATRL_NBR = A1.MIXD_PLT_MATRL) AS ANAPLAN_BRAND
		,(SELECT TOP 1 MAT.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MAT
		  WHERE MAT.MATRL_NBR = A1.MIXD_PLT_MATRL) AS [TYPE]
		,A1.CAL_WK AS CAL_YR_WK
		
		,A1.ACTL_SHIP_CS AS ACT_SAL_CASES
		,A1.ACTL_SHIP_KG AS ACT_SAL_KGS
		,A1.ACTL_SHIP_LBS AS ACT_SAL_LBS
		,A1.ACTL_SHIP_USD AS ACT_SAL_GSV
		,A1.ACTL_COST_OF_PROD_USD AS ACT_SAL_COP

		,0 AS TPM_FORE_CASES
		,0 AS TPM_FORE_LBS 
		,0 AS TPM_FORE_KGS
		,0 AS TPM_FORE_GSV
		,0 AS TPM_LE_KMF
		,0 AS TPM_FORE_COP
		
		,CAST(NULL AS VARCHAR(7)) AS FISC_YR_PD
		,A1.FISC_YR_PD AS PREV_FISC_YR_PD
		,A1.MATRL AS DP_MATRL
--		,(SELECT TOP 1 LVL2_CUST_NM FROM #ACTL_TMP0 WHERE LVL8_CUST_NBR =A1.CUST) AS COUNTRY
		,CAST(NULL as CHAR(2)) AS COUNTRY
	FROM
	#ACTL_TMP4 A1
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = A1.MIXD_PLT_MATRL AND A.MATRL_TYP = 'FERT'
	WHERE A1.MIXD_PLT_MATRL IN 
	(SELECT MATRL_NBR FROM #ACTL_TMP1) AND LEFT(A1.FISC_YR_PD,4) = YEAR(GETDATE())-1		----???earlier  -2
	AND A1.CUST IN (SELECT CUST_NBR FROM #ACTL_TMP1)
	) ACTLS
    WHERE ACTLS.BU IS NOT NULL;

	UPDATE #KSOP_MIX_ACTL_TMP1 
	SET #KSOP_MIX_ACTL_TMP1.FISC_YR_PD = CONCAT(LEFT(#KSOP_MIX_ACTL_TMP1.PREV_FISC_YR_PD,4)+1, RIGHT(#KSOP_MIX_ACTL_TMP1.PREV_FISC_YR_PD,3));

	UPDATE T1
	SET T1.COUNTRY = M.COUNTRY
	FROM #KSOP_MIX_ACTL_TMP1 T1 
	INNER JOIN KNA_SC.STG.KSOP_MIX_MATRL M
	on M.MATRL_NBR = T1.MATRL_NBR
	WHERE T1.COUNTRY IS NULL AND T1.MATRL_NBR IS NOT NULL;
	
	--PREV YEAR DELTA DATA ONLY NOT IN CURRENT YEAR

	CREATE INDEX IDX_KSOP_MIX_ACTL_TMP_01 ON #KSOP_MIX_ACTL_TMP1 (MATRL_NBR);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TMP_02 ON #KSOP_MIX_ACTL_TMP1 (PREV_FISC_YR_PD);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TMP_03 ON #KSOP_MIX_ACTL_TMP1 (CHANNEL);
	 
	SELECT * 
	INTO #KSOP_MIX_ACTL_TMP_PREV
	FROM #KSOP_MIX_ACTL_TMP1 P
	WHERE 
	P.MATRL_NBR NOT IN 
		(SELECT C.MATRL_NBR 
		FROM #KSOP_MIX_ACTL_TMP C 
		WHERE C.MATRL_NBR= P.MATRL_NBR AND C.PREV_FISC_YR_PD = P.PREV_FISC_YR_PD AND C.CHANNEL = P.CHANNEL)
	
--ALL (NEXT) CURRENT YEAR DATA 
SELECT
 		 ACTLS.BU
		,ACTLS.COUNTRY
		,ACTLS.MATRL_NBR
		,ACTLS.CHANNEL
		,ACTLS.CATEGORY
		,ACTLS.BRAND
		,ACTLS.ANAPLAN_BRAND
		,ACTLS.[TYPE]
		,ACTLS.CAL_YR_WK
		
		,ACTLS.ACT_SAL_CASES
		,ACTLS.ACT_SAL_KGS
		,ACTLS.ACT_SAL_LBS
		,ACTLS.ACT_SAL_GSV
		,ACTLS.ACT_SAL_COP

        ,ACTLS.TPM_FORE_CASES
		,ACTLS.TPM_FORE_LBS
		,ACTLS.TPM_FORE_KGS
		,ACTLS.TPM_FORE_GSV
		,ACTLS.TPM_LE_KMF
		,ACTLS.TPM_FORE_COP

		,ACTLS.FISC_YR_PD
		,ACTLS.PREV_FISC_YR_PD
		,ACTLS.DP_MATRL
		
	INTO #KSOP_MIX_ACTL_TMP2
	
	FROM 
	(
	SELECT
		(SELECT TOP 1 BU FROM #ACTL_TMP1 WHERE MATRL_NBR =  A1.MIXD_PLT_MATRL AND CUST_NBR = A1.CUST) AS BU
		,A1.MIXD_PLT_MATRL AS MATRL_NBR
		,(SELECT TOP 1 CHNL_IND from #ACTL_TMP3 WHERE CUST_NBR = A1.CUST) AS CHANNEL
		,(SELECT TOP 1 CATE.CHRSTC_VAL FROM #ACTL_TMP2 CATE
	      WHERE CATE.MATRL_NBR=A1.MIXD_PLT_MATRL) AS CATEGORY
		,(SELECT TOP 1 MATL.BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		  WHERE MATL.MATRL_NBR = A1.MIXD_PLT_MATRL) AS BRAND
		,(SELECT TOP 1 MATL.ANAPLAN_BRAND FROM KNA_SC.STG.KSOP_MIX_MATRL MATL
		  WHERE MATL.MATRL_NBR = A1.MIXD_PLT_MATRL) AS ANAPLAN_BRAND
		,(SELECT TOP 1 MAT.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MAT
		  WHERE MAT.MATRL_NBR = A1.MIXD_PLT_MATRL) AS [TYPE]
		,A1.CAL_WK AS CAL_YR_WK
		
		,A1.ACTL_SHIP_CS AS ACT_SAL_CASES
		,A1.ACTL_SHIP_KG AS ACT_SAL_KGS
		,A1.ACTL_SHIP_LBS AS ACT_SAL_LBS
		,A1.ACTL_SHIP_USD AS ACT_SAL_GSV
		,A1.ACTL_COST_OF_PROD_USD AS ACT_SAL_COP

		,0 AS TPM_FORE_CASES
		,0 AS TPM_FORE_LBS 
		,0 AS TPM_FORE_KGS
		,0 AS TPM_FORE_GSV
		,0 AS TPM_LE_KMF
		,0 AS TPM_FORE_COP
		
		,A1.FISC_YR_PD AS PREV_FISC_YR_PD
		,CAST(NULL AS VARCHAR(7)) AS FISC_YR_PD
		
		,A1.MATRL AS DP_MATRL
----		,(SELECT TOP 1 LVL2_CUST_NM FROM #ACTL_TMP0 WHERE LVL8_CUST_NBR =A1.CUST) AS COUNTRY
		,CAST(NULL as CHAR(2)) as  COUNTRY
		
	FROM
	#ACTL_TMP4 A1
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = A1.MIXD_PLT_MATRL AND A.MATRL_TYP = 'FERT'
	WHERE A1.MIXD_PLT_MATRL IN 
	(SELECT MATRL_NBR FROM #ACTL_TMP1) AND LEFT(A1.FISC_YR_PD,4) = YEAR(GETDATE()) 		-----????  - 1
	AND A1.CUST IN (SELECT CUST_NBR FROM #ACTL_TMP1)
	) ACTLS
    WHERE ACTLS.BU IS NOT NULL;

	UPDATE T2
	SET T2.COUNTRY = M.COUNTRY
	FROM #KSOP_MIX_ACTL_TMP2 T2
	INNER JOIN KNA_SC.STG.KSOP_MIX_MATRL M
	on M.MATRL_NBR = T2.MATRL_NBR
	WHERE T2.COUNTRY IS NULL AND T2.MATRL_NBR IS NOT NULL;	

	UPDATE #KSOP_MIX_ACTL_TMP2 
	SET #KSOP_MIX_ACTL_TMP2.FISC_YR_PD = CONCAT(LEFT(#KSOP_MIX_ACTL_TMP2.PREV_FISC_YR_PD,4)+1, RIGHT(#KSOP_MIX_ACTL_TMP2.PREV_FISC_YR_PD,3));
	
	--NEXT YEAR DELTA DATA ONLY NOT IN CURRENT YEAR

	CREATE INDEX IDX_KSOP_MIX_ACTL_TP_01 ON #KSOP_MIX_ACTL_TMP2 (MATRL_NBR);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TP_02 ON #KSOP_MIX_ACTL_TMP2 (FISC_YR_PD);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TP_03 ON #KSOP_MIX_ACTL_TMP2 (CHANNEL);
	CREATE INDEX IDX_KSOP_MIX_ACTL_TP_04 ON #KSOP_MIX_ACTL_TMP2 (PREV_FISC_YR_PD);
	
	SELECT * 
	INTO #KSOP_MIX_ACTL_TMP_NPRE
	FROM #KSOP_MIX_ACTL_TMP2 P
	WHERE P.MATRL_NBR NOT IN 
		(SELECT C.MATRL_NBR 
		FROM #KSOP_MIX_ACTL_TMP C 
		WHERE C.MATRL_NBR= P.MATRL_NBR AND C.FISC_YR_PD = P.FISC_YR_PD AND C.CHANNEL = P.CHANNEL);
	
	UPDATE STATISTICS #KSOP_MIX_ACTL_TMP_NPRE;
	UPDATE STATISTICS #KSOP_MIX_ACTL_TMP_PREV;
	UPDATE STATISTICS #KSOP_MIX_ACTL_TMP;

	DROP TABLE #ACTL_TMP1;
	DROP TABLE #ACTL_TMP2;
	DROP TABLE #ACTL_TMP3;
	DROP TABLE #ACTL_TMP4;
	DROP TABLE #ACTL_TMP0;
	DROP TABLE #KSOP_MIX_ACTL_TMP1;
	DROP TABLE #KSOP_MIX_ACTL_TMP2;


	----------- ACTUALS SUMMING PERIOD WISE
	--CURRENT YEAR SUMMARY
	SELECT DISTINCT
		ACTALS.MATRL_NBR,
		ACTALS.BU,
		ACTALS.COUNTRY,
		ACTALS.CHANNEL,
		ACTALS.CATEGORY,
		ACTALS.BRAND,
		ACTALS.ANAPLAN_BRAND,
		ACTALS.[TYPE],

		ACTALS.ACT_SAL_CASES,
		ACTALS.ACT_SAL_KGS,
		ACTALS.ACT_SAL_LBS,
		ACTALS.ACT_SAL_GSV, 
		ACTALS.ACT_SAL_COP,

		ACTALS.PREV_ACT_SAL_CASES,
		ACTALS.PREV_ACT_SAL_KGS,
		ACTALS.PREV_ACT_SAL_LBS,
		ACTALS.PREV_ACT_SAL_GSV, 
		ACTALS.PREV_ACT_SAL_COP,

		ACTALS.FISC_YR_PD,
		ACTALS.PREV_FISC_YR_PD

        ,ACTALS.TPM_FORE_CASES
		,ACTALS.TPM_FORE_LBS
		,ACTALS.TPM_FORE_KGS
		,ACTALS.TPM_FORE_GSV
		,ACTALS.TPM_LE_KMF
		,ACTALS.TPM_FORE_COP

	INTO #KSOP_MIX_ACTL_TEMP
	FROM 

	(
	SELECT  
		ACT1.MATRL_NBR ,
		ACT1.BU,
		ACT1.COUNTRY,
		ACT1.CHANNEL,
		ACT1.CATEGORY,
		ACT1.BRAND,
		ACT1.ANAPLAN_BRAND,
		ACT1.[TYPE],
		ACT1.FISC_YR_PD,
		ACT1.PREV_FISC_YR_PD,

		(select sum(A2.ACT_SAL_CASES) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACT_SAL_CASES ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACT_SAL_KGS ,  
		(select sum(A2.ACT_SAL_LBS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACT_SAL_LBS ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACT_SAL_GSV ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACT_SAL_COP ,  

		(select sum(A2.ACT_SAL_CASES) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_CASES ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_KGS ,  
		(select sum(A2.ACT_SAL_LBS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_LBS ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_GSV ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_COP ,   

	
		(select sum(A2.TPM_FORE_CASES) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_FORE_CASES ,  
		(select sum(A2.TPM_FORE_LBS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_FORE_LBS ,  
		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_FORE_KGS ,  
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_FORE_GSV ,  
		(select sum(A2.TPM_LE_KMF) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_LE_KMF ,  
	    (select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_FORE_COP 
	    
		FROM #KSOP_MIX_ACTL_TMP ACT1
	
		) ACTALS;
	
		
	-- SUM-UP OTHER COLUMNS -CURRENT YEAR
		SELECT DISTINCT
		ACTUALS.MATRL_NBR,
		ACTUALS.BU,
		ACTUALS.COUNTRY,
		ACTUALS.CHANNEL,
		ACTUALS.CATEGORY,
		ACTUALS.BRAND,
		ACTUALS.ANAPLAN_BRAND,
		ACTUALS.[TYPE],

		ACTUALS.ACT_SAL_CASES,
		ACTUALS.ACT_SAL_KGS,
		ACTUALS.ACT_SAL_LBS,
		ACTUALS.ACT_SAL_GSV, 
		ACTUALS.ACT_SAL_COP,

		ACTUALS.ACTL_GSV_BU, 
		ACTUALS.ACTL_GSV_CATE, 
		ACTUALS.ACTL_GSV_ANA_BRAN,
		ACTUALS.ACTL_GSV_CHAN,
		ACTUALS.ACTL_GSV_BRAN,
		ACTUALS.ACTL_GSV_TYPE,

		ACTUALS.ACTL_KGS_BU, 
		ACTUALS.ACTL_KGS_CATE, 
		ACTUALS.ACTL_KGS_ANA_BRAN,
		ACTUALS.ACTL_KGS_CHAN,
		ACTUALS.ACTL_KGS_BRAN,
		ACTUALS.ACTL_KGS_TYPE,

		ACTUALS.ACTL_COP_BU, 
		ACTUALS.ACTL_COP_CATE, 
		ACTUALS.ACTL_COP_ANA_BRAN,
		ACTUALS.ACTL_COP_CHAN,
		ACTUALS.ACTL_COP_BRAN,
		ACTUALS.ACTL_COP_TYPE,
		ACTUALS.FISC_YR_PD,

		ACTUALS.PREV_ACT_SAL_CASES,
		ACTUALS.PREV_ACT_SAL_KGS,
		ACTUALS.PREV_ACT_SAL_LBS,
		ACTUALS.PREV_ACT_SAL_GSV, 
		ACTUALS.PREV_ACT_SAL_COP,

		ACTUALS.PREV_ACTL_GSV_BU, 
		ACTUALS.PREV_ACTL_GSV_CATE,
		ACTUALS.PREV_ACTL_GSV_ANA_BRAN,
		ACTUALS.PREV_ACTL_GSV_CHAN,
		ACTUALS.PREV_ACTL_GSV_BRAN,
		ACTUALS.PREV_ACTL_GSV_TYPE,

		ACTUALS.PREV_ACTL_KGS_BU, 
		ACTUALS.PREV_ACTL_KGS_CATE,
		ACTUALS.PREV_ACTL_KGS_ANA_BRAN,
		ACTUALS.PREV_ACTL_KGS_CHAN,
		ACTUALS.PREV_ACTL_KGS_BRAN,
		ACTUALS.PREV_ACTL_KGS_TYPE,

		ACTUALS.PREV_ACTL_COP_BU, 
		ACTUALS.PREV_ACTL_COP_CATE,
		ACTUALS.PREV_ACTL_COP_ANA_BRAN,
		ACTUALS.PREV_ACTL_COP_CHAN,
		ACTUALS.PREV_ACTL_COP_BRAN,
		ACTUALS.PREV_ACTL_COP_TYPE,
		ACTUALS.PREV_FISC_YR_PD

        ,ACTUALS.TPM_FORE_CASES
		,ACTUALS.TPM_FORE_LBS
		,ACTUALS.TPM_FORE_KGS
		,ACTUALS.TPM_FORE_GSV
		,ACTUALS.TPM_LE_KMF
		,ACTUALS.TPM_FORE_COP
		
		,ACTUALS.TPM_KGS_BU
		,ACTUALS.TPM_KGS_CATE 
		,ACTUALS.TPM_KGS_ANA_BRAN
		,ACTUALS.TPM_KGS_CHAN
		,ACTUALS.TPM_KGS_BRAN
		,ACTUALS.TPM_KGS_TYPE 

		,ACTUALS.TPM_GSV_BU
		,ACTUALS.TPM_GSV_CATE 
		,ACTUALS.TPM_GSV_ANA_BRAN
		,ACTUALS.TPM_GSV_CHAN
		,ACTUALS.TPM_GSV_BRAN
		,ACTUALS.TPM_GSV_TYPE 

		,ACTUALS.TPM_COP_BU
		,ACTUALS.TPM_COP_CATE 
		,ACTUALS.TPM_COP_ANA_BRAN
		,ACTUALS.TPM_COP_CHAN
		,ACTUALS.TPM_COP_BRAN
		,ACTUALS.TPM_COP_TYPE 
		,CAST(NULL AS VARCHAR(1)) AS FLG
	INTO KNA_SC.STG.KSOP_MIX_ACTL
	FROM 

	(
	SELECT  
		ACT1.MATRL_NBR ,
		ACT1.BU,
		ACT1.COUNTRY,
		ACT1.CHANNEL,
		ACT1.CATEGORY,
		ACT1.BRAND,
		ACT1.ANAPLAN_BRAND,
		ACT1.[TYPE],
		ACT1.FISC_YR_PD,

		ACT1.ACT_SAL_CASES,
		ACT1.ACT_SAL_KGS,
		ACT1.ACT_SAL_LBS,
		ACT1.ACT_SAL_GSV, 
		ACT1.ACT_SAL_COP,

		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_BU ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_CATE ,    
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_CHAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_GSV_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_TYPE ,  
		
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_BU ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_CATE ,      
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_ANA_BRAN , 
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_CHAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_KGS_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_TYPE ,  
		
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_COP_BU ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_CATE ,     
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_CHAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_TYPE  ,

		ACT1.PREV_ACT_SAL_CASES,
		ACT1.PREV_ACT_SAL_KGS,
		ACT1.PREV_ACT_SAL_LBS,
		ACT1.PREV_ACT_SAL_GSV, 
		ACT1.PREV_ACT_SAL_COP,
		ACT1.PREV_FISC_YR_PD,

		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY = ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_BU ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_CATE ,      
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_ANA_BRAN , 
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_CHAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_TYPE ,  
		
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_BU ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_CATE ,        
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_ANA_BRAN , 
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_CHAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_TYPE ,  
		
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_BU ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_CATE ,       
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND  AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_CHAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_TYPE  ,

		 ACT1.TPM_FORE_CASES
		,ACT1.TPM_FORE_LBS
		,ACT1.TPM_FORE_KGS
		,ACT1.TPM_FORE_GSV
		,ACT1.TPM_LE_KMF
		,ACT1.TPM_FORE_COP,

		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_KGS_BU ,  
		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_KGS_CATE ,    
		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_KGS_ANA_BRAN , 
		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_KGS_CHAN ,  
		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as TPM_KGS_BRAN ,  
		(select sum(A2.TPM_FORE_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_KGS_TYPE ,
				
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_GSV_BU ,  
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_GSV_CATE ,    
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_GSV_ANA_BRAN ,  
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_GSV_CHAN ,  
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as TPM_GSV_BRAN ,  
		(select sum(A2.TPM_FORE_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_GSV_TYPE, 
				
		(select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_COP_BU ,  
		(select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_COP_CATE ,     
		(select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_COP_ANA_BRAN , 
		(select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_COP_CHAN ,  
		(select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as TPM_COP_BRAN ,  
		(select sum(A2.TPM_FORE_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as TPM_COP_TYPE 
				
		FROM #KSOP_MIX_ACTL_TEMP ACT1
		) ACTUALS;

/*
SELECT --MATRL_NBR, 
BU, Type, CHANNEL, FISC_YR_PD, --ACT_SAL_GSV
SUM(ACT_SAL_GSV)
  FROM #KSOP_MIX_ACTL_TEMP  --[KNA_SC].[dbo].[KSOP_MIX_FULL]
WHERE  BU = 'Snacks' and CHANNEL = '01' and FISC_YR_PD = '2017004'  AND Type = 'Fudge Shoppe M'

group by BU, Type, CHANNEL, FISC_YR_PD

SELECT		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_TYPE   
  FROM #KSOP_MIX_ACTL_TEMP ACT1
WHERE  BU = 'Snacks' and CHANNEL = '01' and FISC_YR_PD = '2017004'  AND Type = 'Fudge Shoppe M'
*/
	
		SELECT * INTO #KSOP_MIX_ACTL_FLG FROM KNA_SC.STG.KSOP_MIX_ACTL;
				
		UPDATE KNA_SC.STG.KSOP_MIX_ACTL SET 
		KNA_SC.STG.KSOP_MIX_ACTL.FLG='1'
		FROM #KSOP_MIX_ACTL_FLG FLG
		WHERE 
		KNA_SC.STG.KSOP_MIX_ACTL.MATRL_NBR = FLG.MATRL_NBR AND
		KNA_SC.STG.KSOP_MIX_ACTL.CHANNEL =FLG.CHANNEL AND 
		KNA_SC.STG.KSOP_MIX_ACTL.FISC_YR_PD = FLG.PREV_FISC_YR_PD;
	

		UPDATE KNA_SC.STG.KSOP_MIX_ACTL SET 
		KNA_SC.STG.KSOP_MIX_ACTL.FLG='1'
		FROM #KSOP_MIX_ACTL_FLG FLG
		WHERE 
		KNA_SC.STG.KSOP_MIX_ACTL.MATRL_NBR = FLG.MATRL_NBR AND
		KNA_SC.STG.KSOP_MIX_ACTL.CHANNEL =FLG.CHANNEL AND 
		KNA_SC.STG.KSOP_MIX_ACTL.PREV_FISC_YR_PD = FLG.FISC_YR_PD;
		
		DROP TABLE #KSOP_MIX_ACTL_FLG;

		UPDATE KNA_SC.STG.KSOP_MIX_ACTL SET 
		PREV_ACT_SAL_CASES=NULL,
		PREV_ACT_SAL_KGS=NULL,
		PREV_ACT_SAL_LBS=NULL,
		PREV_ACT_SAL_GSV=NULL, 
		PREV_ACT_SAL_COP=NULL,
		
		PREV_ACTL_GSV_BU=NULL, 
		PREV_ACTL_GSV_CATE=NULL,
		PREV_ACTL_GSV_ANA_BRAN=NULL,
		PREV_ACTL_GSV_CHAN=NULL,
		PREV_ACTL_GSV_BRAN=NULL,
		PREV_ACTL_GSV_TYPE=NULL,

		PREV_ACTL_KGS_BU=NULL, 
		PREV_ACTL_KGS_CATE=NULL,
		PREV_ACTL_KGS_ANA_BRAN=NULL,
		PREV_ACTL_KGS_CHAN=NULL,
		PREV_ACTL_KGS_BRAN=NULL,
		PREV_ACTL_KGS_TYPE=NULL,

		PREV_ACTL_COP_BU=NULL, 
		PREV_ACTL_COP_CATE=NULL,
		PREV_ACTL_COP_ANA_BRAN=NULL,
		PREV_ACTL_COP_CHAN=NULL,
		PREV_ACTL_COP_BRAN=NULL,
		PREV_ACTL_COP_TYPE=NULL
		
		WHERE FLG IS NULL;
	
		
	--PREV YEAR SUMMARY
	
	SELECT DISTINCT
		ACTALS.MATRL_NBR,
		ACTALS.BU,
		ACTALS.COUNTRY,
		ACTALS.CHANNEL,
		ACTALS.CATEGORY,
		ACTALS.BRAND,
		ACTALS.ANAPLAN_BRAND,
		ACTALS.[TYPE],

		ACTALS.ACT_SAL_CASES,
		ACTALS.ACT_SAL_KGS,
		ACTALS.ACT_SAL_LBS,
		ACTALS.ACT_SAL_GSV, 
		ACTALS.ACT_SAL_COP,
		
		ACTALS.PREV_ACT_SAL_CASES,
		ACTALS.PREV_ACT_SAL_KGS,
		ACTALS.PREV_ACT_SAL_LBS,
		ACTALS.PREV_ACT_SAL_GSV, 
		ACTALS.PREV_ACT_SAL_COP,

		ACTALS.FISC_YR_PD,
		ACTALS.PREV_FISC_YR_PD

        ,ACTALS.TPM_FORE_CASES
		,ACTALS.TPM_FORE_LBS
		,ACTALS.TPM_FORE_KGS
		,ACTALS.TPM_FORE_GSV
		,ACTALS.TPM_LE_KMF
		,ACTALS.TPM_FORE_COP
		
		INTO #KSOP_MIX_ACTL_TEMP_PREV
	FROM 

	(
	SELECT  
		ACT1.MATRL_NBR ,
		ACT1.BU,
		ACT1.COUNTRY,
		ACT1.CHANNEL,
		ACT1.CATEGORY,
		ACT1.BRAND,
		ACT1.ANAPLAN_BRAND,
		ACT1.[TYPE],
		ACT1.FISC_YR_PD,
		ACT1.PREV_FISC_YR_PD,

		0 as ACT_SAL_CASES ,  
		0 as ACT_SAL_KGS ,  
		0 as ACT_SAL_LBS ,  
		0 as ACT_SAL_GSV ,  
		0 as ACT_SAL_COP ,  
		
		(select sum(A2.ACT_SAL_CASES) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_CASES , 
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_KGS ,  
		(select sum(A2.ACT_SAL_LBS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_LBS ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_GSV ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_COP ,  


		0 as TPM_FORE_CASES ,  
		0 as TPM_FORE_LBS ,  
		0 as TPM_FORE_KGS ,  
		0 as TPM_FORE_GSV ,  
		0 as TPM_LE_KMF ,  
	    0 as TPM_FORE_COP 
	    

		FROM #KSOP_MIX_ACTL_TMP_PREV ACT1
	
		) ACTALS;	

		-- SUM-UP OTHER COLUMNS -PREV YEAR
		
		SELECT DISTINCT
		ACTUALS.MATRL_NBR,
		ACTUALS.BU,
		ACTUALS.COUNTRY,
		ACTUALS.CHANNEL,
		ACTUALS.CATEGORY,
		ACTUALS.BRAND,
		ACTUALS.ANAPLAN_BRAND,
		ACTUALS.[TYPE],
				
		ACTUALS.ACT_SAL_CASES,
		ACTUALS.ACT_SAL_KGS,
		ACTUALS.ACT_SAL_LBS,
		ACTUALS.ACT_SAL_GSV, 
		ACTUALS.ACT_SAL_COP,
		
		ACTUALS.ACTL_GSV_BU, 
		ACTUALS.ACTL_GSV_CATE, 
		ACTUALS.ACTL_GSV_ANA_BRAN,
		ACTUALS.ACTL_GSV_CHAN,
		ACTUALS.ACTL_GSV_BRAN,
		ACTUALS.ACTL_GSV_TYPE,

		ACTUALS.ACTL_KGS_BU, 
		ACTUALS.ACTL_KGS_CATE, 
		ACTUALS.ACTL_KGS_ANA_BRAN,
		ACTUALS.ACTL_KGS_CHAN,
		ACTUALS.ACTL_KGS_BRAN,
		ACTUALS.ACTL_KGS_TYPE,

		ACTUALS.ACTL_COP_BU, 
		ACTUALS.ACTL_COP_CATE, 
		ACTUALS.ACTL_COP_ANA_BRAN,
		ACTUALS.ACTL_COP_CHAN,
		ACTUALS.ACTL_COP_BRAN,
		ACTUALS.ACTL_COP_TYPE,
		
		ACTUALS.FISC_YR_PD,

		ACTUALS.PREV_ACT_SAL_CASES,
		ACTUALS.PREV_ACT_SAL_KGS,
		ACTUALS.PREV_ACT_SAL_LBS,
		ACTUALS.PREV_ACT_SAL_GSV, 
		ACTUALS.PREV_ACT_SAL_COP,

		ACTUALS.PREV_ACTL_GSV_BU, 
		ACTUALS.PREV_ACTL_GSV_CATE, 
		ACTUALS.PREV_ACTL_GSV_ANA_BRAN,
		ACTUALS.PREV_ACTL_GSV_CHAN,
		ACTUALS.PREV_ACTL_GSV_BRAN,
		ACTUALS.PREV_ACTL_GSV_TYPE,

		ACTUALS.PREV_ACTL_KGS_BU, 
		ACTUALS.PREV_ACTL_KGS_CATE, 
		ACTUALS.PREV_ACTL_KGS_ANA_BRAN,
		ACTUALS.PREV_ACTL_KGS_CHAN,
		ACTUALS.PREV_ACTL_KGS_BRAN,
		ACTUALS.PREV_ACTL_KGS_TYPE,

		ACTUALS.PREV_ACTL_COP_BU, 
		ACTUALS.PREV_ACTL_COP_CATE, 
		ACTUALS.PREV_ACTL_COP_ANA_BRAN,
		ACTUALS.PREV_ACTL_COP_CHAN,
		ACTUALS.PREV_ACTL_COP_BRAN,
		ACTUALS.PREV_ACTL_COP_TYPE,
		
		ACTUALS.PREV_FISC_YR_PD

        ,ACTUALS.TPM_FORE_CASES
		,ACTUALS.TPM_FORE_LBS
		,ACTUALS.TPM_FORE_KGS
		,ACTUALS.TPM_FORE_GSV
		,ACTUALS.TPM_LE_KMF
		,ACTUALS.TPM_FORE_COP
		
		,ACTUALS.TPM_KGS_BU
		,ACTUALS.TPM_KGS_CATE  
		,ACTUALS.TPM_KGS_ANA_BRAN
		,ACTUALS.TPM_KGS_CHAN
		,ACTUALS.TPM_KGS_BRAN
		,ACTUALS.TPM_KGS_TYPE 
		,ACTUALS.TPM_GSV_BU
		,ACTUALS.TPM_GSV_CATE  
		,ACTUALS.TPM_GSV_ANA_BRAN
		,ACTUALS.TPM_GSV_CHAN
		,ACTUALS.TPM_GSV_BRAN
		,ACTUALS.TPM_GSV_TYPE 
		,ACTUALS.TPM_COP_BU
		,ACTUALS.TPM_COP_CATE  
		,ACTUALS.TPM_COP_ANA_BRAN
		,ACTUALS.TPM_COP_CHAN
		,ACTUALS.TPM_COP_BRAN
		,ACTUALS.TPM_COP_TYPE 
		,CAST(NULL AS VARCHAR(1)) AS FLG
	INTO #KSOP_MIX_ACTLP
	FROM 

	(
	SELECT  
		ACT1.MATRL_NBR ,
		ACT1.BU,
		ACT1.COUNTRY,
		ACT1.CHANNEL,
		ACT1.CATEGORY,
		ACT1.BRAND,
		ACT1.ANAPLAN_BRAND,
		ACT1.[TYPE],
		ACT1.FISC_YR_PD,
		ACT1.PREV_FISC_YR_PD,
		
		ACT1.ACT_SAL_CASES,
		ACT1.ACT_SAL_KGS,
		ACT1.ACT_SAL_LBS,
		ACT1.ACT_SAL_GSV, 
		ACT1.ACT_SAL_COP,
	
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_BU ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_CATE ,   
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_ANA_BRAN , 
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_CHAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_GSV_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_TYPE ,  
		
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_BU ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_CATE ,    
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_ANA_BRAN , 
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_CHAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_KGS_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_TYPE ,  
		
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_COP_BU ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_CATE ,   
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_CHAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_TYPE  ,


		ACT1.PREV_ACT_SAL_CASES,
		ACT1.PREV_ACT_SAL_KGS,
		ACT1.PREV_ACT_SAL_LBS,
		ACT1.PREV_ACT_SAL_GSV, 
		ACT1.PREV_ACT_SAL_COP,
		
		
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_BU ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_CATE ,   
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_CHAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_TYPE ,  
		
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_BU ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_CATE , 
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_ANA_BRAN ,   
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_CHAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_TYPE ,  
		
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_BU ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_CATE , 
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_ANA_BRAN ,   
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_CHAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_TYPE  ,
				
				
		 0 AS TPM_FORE_CASES
		,0 AS TPM_FORE_LBS
		,0 AS TPM_FORE_KGS
		,0 AS TPM_FORE_GSV
		,0 AS TPM_LE_KMF
		,0 AS TPM_FORE_COP,

		0 as TPM_KGS_BU ,  
		0 as TPM_KGS_CATE ,  
		0 as TPM_KGS_ANA_BRAN ,  
		0 as TPM_KGS_CHAN ,  
		0 as TPM_KGS_BRAN ,  
		0 as TPM_KGS_TYPE ,

		0 as TPM_GSV_BU ,  
		0 as TPM_GSV_CATE ,  
		0 as TPM_GSV_ANA_BRAN ,  
		0 as TPM_GSV_CHAN ,  
		0 as TPM_GSV_BRAN ,  
		0 as TPM_GSV_TYPE ,

		0 as TPM_COP_BU ,  
		0 as TPM_COP_CATE ,  
		0 as TPM_COP_ANA_BRAN ,  
		0 as TPM_COP_CHAN ,  
		0 as TPM_COP_BRAN ,  
		0 as TPM_COP_TYPE 

		FROM #KSOP_MIX_ACTL_TEMP_PREV ACT1
	
		) ACTUALS;

/*
SELECT --MATRL_NBR, 
BU, Type, CHANNEL, FISC_YR_PD, --ACT_SAL_GSV
SUM(ACT_SAL_GSV)
  FROM #KSOP_MIX_ACTL_TEMP_PREV  --[KNA_SC].[dbo].[KSOP_MIX_FULL]
WHERE  BU = 'Snacks' and CHANNEL = '01' and FISC_YR_PD = '2017004'  AND Type = 'Fudge Shoppe M'

group by BU, Type, CHANNEL, FISC_YR_PD


*/

--NEXT YEAR SUMMARY
	
	SELECT DISTINCT
		ACTALS.MATRL_NBR,
		ACTALS.BU,
		ACTALS.COUNTRY,
		ACTALS.CHANNEL,
		ACTALS.CATEGORY,
		ACTALS.BRAND,
		ACTALS.ANAPLAN_BRAND,
		ACTALS.[TYPE],

		ACTALS.ACT_SAL_CASES,
		ACTALS.ACT_SAL_KGS,
		ACTALS.ACT_SAL_LBS,
		ACTALS.ACT_SAL_GSV, 
		ACTALS.ACT_SAL_COP,
		
		ACTALS.PREV_ACT_SAL_CASES,
		ACTALS.PREV_ACT_SAL_KGS,
		ACTALS.PREV_ACT_SAL_LBS,
		ACTALS.PREV_ACT_SAL_GSV, 
		ACTALS.PREV_ACT_SAL_COP,

		ACTALS.FISC_YR_PD,
		ACTALS.PREV_FISC_YR_PD

        ,ACTALS.TPM_FORE_CASES
		,ACTALS.TPM_FORE_LBS
		,ACTALS.TPM_FORE_KGS
		,ACTALS.TPM_FORE_GSV
		,ACTALS.TPM_LE_KMF
		,ACTALS.TPM_FORE_COP
		
		INTO #KSOP_MIX_ACTL_TEMP_NPRE
	FROM 

	(
	SELECT  
		ACT1.MATRL_NBR ,
		ACT1.BU,
		ACT1.COUNTRY,
		ACT1.CHANNEL,
		ACT1.CATEGORY,
		ACT1.BRAND,
		ACT1.ANAPLAN_BRAND,
		ACT1.[TYPE],
		ACT1.FISC_YR_PD,
		ACT1.PREV_FISC_YR_PD,

		0 as ACT_SAL_CASES ,  
		0 as ACT_SAL_KGS ,  
		0 as ACT_SAL_LBS ,  
		0 as ACT_SAL_GSV ,  
		0 as ACT_SAL_COP ,  
		
		(select sum(A2.ACT_SAL_CASES) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.PREV_FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_CASES ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.PREV_FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_KGS ,  
		(select sum(A2.ACT_SAL_LBS) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.PREV_FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_LBS ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.PREV_FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_GSV ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
						where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.MATRL_NBR =ACT1.MATRL_NBR AND A2.PREV_FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACT_SAL_COP ,  

		 0 AS TPM_FORE_CASES
		,0 AS TPM_FORE_LBS
		,0 AS TPM_FORE_KGS
		,0 AS TPM_FORE_GSV
		,0 AS TPM_LE_KMF
		,0 AS TPM_FORE_COP

		FROM #KSOP_MIX_ACTL_TMP_NPRE ACT1
		) ACTALS;	

	-- SUM-UP OTHER COLUMNS -NEXT YEAR

		SELECT DISTINCT
		ACTUALS.MATRL_NBR,
		ACTUALS.BU,
		ACTUALS.COUNTRY,
		ACTUALS.CHANNEL,
		ACTUALS.CATEGORY,
		ACTUALS.BRAND,
		ACTUALS.ANAPLAN_BRAND,
		ACTUALS.[TYPE],
				
		ACTUALS.ACT_SAL_CASES,
		ACTUALS.ACT_SAL_KGS,
		ACTUALS.ACT_SAL_LBS,
		ACTUALS.ACT_SAL_GSV, 
		ACTUALS.ACT_SAL_COP,
		
		ACTUALS.ACTL_GSV_BU, 
		ACTUALS.ACTL_GSV_CATE, 
		ACTUALS.ACTL_GSV_ANA_BRAN,
		ACTUALS.ACTL_GSV_CHAN,
		ACTUALS.ACTL_GSV_BRAN,
		ACTUALS.ACTL_GSV_TYPE,

		ACTUALS.ACTL_KGS_BU, 
		ACTUALS.ACTL_KGS_CATE, 
		ACTUALS.ACTL_KGS_ANA_BRAN,
		ACTUALS.ACTL_KGS_CHAN,
		ACTUALS.ACTL_KGS_BRAN,
		ACTUALS.ACTL_KGS_TYPE,

		ACTUALS.ACTL_COP_BU, 
		ACTUALS.ACTL_COP_CATE, 
		ACTUALS.ACTL_COP_ANA_BRAN,
		ACTUALS.ACTL_COP_CHAN,
		ACTUALS.ACTL_COP_BRAN,
		ACTUALS.ACTL_COP_TYPE,
		
		ACTUALS.FISC_YR_PD,

		ACTUALS.PREV_ACT_SAL_CASES,
		ACTUALS.PREV_ACT_SAL_KGS,
		ACTUALS.PREV_ACT_SAL_LBS,
		ACTUALS.PREV_ACT_SAL_GSV, 
		ACTUALS.PREV_ACT_SAL_COP,

		ACTUALS.PREV_ACTL_GSV_BU, 
		ACTUALS.PREV_ACTL_GSV_CATE, 
		ACTUALS.PREV_ACTL_GSV_ANA_BRAN,
		ACTUALS.PREV_ACTL_GSV_CHAN,
		ACTUALS.PREV_ACTL_GSV_BRAN,
		ACTUALS.PREV_ACTL_GSV_TYPE,

		ACTUALS.PREV_ACTL_KGS_BU, 
		ACTUALS.PREV_ACTL_KGS_CATE,
		ACTUALS.PREV_ACTL_KGS_ANA_BRAN,
		ACTUALS.PREV_ACTL_KGS_CHAN,
		ACTUALS.PREV_ACTL_KGS_BRAN,
		ACTUALS.PREV_ACTL_KGS_TYPE,

		ACTUALS.PREV_ACTL_COP_BU, 
		ACTUALS.PREV_ACTL_COP_CATE,
		ACTUALS.PREV_ACTL_COP_ANA_BRAN,
		ACTUALS.PREV_ACTL_COP_CHAN,
		ACTUALS.PREV_ACTL_COP_BRAN,
		ACTUALS.PREV_ACTL_COP_TYPE,
		
		ACTUALS.PREV_FISC_YR_PD

        ,ACTUALS.TPM_FORE_CASES
		,ACTUALS.TPM_FORE_LBS
		,ACTUALS.TPM_FORE_KGS
		,ACTUALS.TPM_FORE_GSV
		,ACTUALS.TPM_LE_KMF
		,ACTUALS.TPM_FORE_COP
		
		,ACTUALS.TPM_KGS_BU
		,ACTUALS.TPM_KGS_CATE 
		,ACTUALS.TPM_KGS_ANA_BRAN
		,ACTUALS.TPM_KGS_CHAN
		,ACTUALS.TPM_KGS_BRAN
		,ACTUALS.TPM_KGS_TYPE 
		,ACTUALS.TPM_GSV_BU
		,ACTUALS.TPM_GSV_CATE 
		,ACTUALS.TPM_GSV_ANA_BRAN
		,ACTUALS.TPM_GSV_CHAN
		,ACTUALS.TPM_GSV_BRAN
		,ACTUALS.TPM_GSV_TYPE 
		,ACTUALS.TPM_COP_BU
		,ACTUALS.TPM_COP_CATE 
		,ACTUALS.TPM_COP_ANA_BRAN
		,ACTUALS.TPM_COP_CHAN
		,ACTUALS.TPM_COP_BRAN
		,ACTUALS.TPM_COP_TYPE 
		,CAST(NULL AS VARCHAR(1)) AS FLG
	INTO #KSOP_MIX_ACTLN
	FROM 

	(
	SELECT  
		ACT1.MATRL_NBR ,
		ACT1.BU,
		ACT1.COUNTRY,
		ACT1.CHANNEL,
		ACT1.CATEGORY,
		ACT1.BRAND,
		ACT1.ANAPLAN_BRAND,
		ACT1.[TYPE],
		ACT1.FISC_YR_PD,
		ACT1.PREV_FISC_YR_PD,
		
		ACT1.ACT_SAL_CASES,
		ACT1.ACT_SAL_KGS,
		ACT1.ACT_SAL_LBS,
		ACT1.ACT_SAL_GSV, 
		ACT1.ACT_SAL_COP,

		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_BU ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_CATE ,   
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_ANA_BRAN ,   
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_CHAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_GSV_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_GSV_TYPE ,  
		
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_BU ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_CATE ,   
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_CHAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_KGS_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_KGS_TYPE ,  
		
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.FISC_YR_PD) as ACTL_COP_BU ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_CATE ,   
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_CHAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.FISC_YR_PD) as ACTL_COP_TYPE  ,

		ACT1.PREV_ACT_SAL_CASES,
		ACT1.PREV_ACT_SAL_KGS,
		ACT1.PREV_ACT_SAL_LBS,
		ACT1.PREV_ACT_SAL_GSV, 
		ACT1.PREV_ACT_SAL_COP,
		
		
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_BU ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_CATE ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_ANA_BRAN ,   
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_CHAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_BRAN ,  
		(select sum(A2.ACT_SAL_GSV) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY  AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_GSV_TYPE ,  
		
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_BU ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_CATE ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_ANA_BRAN ,   
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_CHAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_BRAN ,  
		(select sum(A2.ACT_SAL_KGS) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_KGS_TYPE ,  
		
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD= ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_BU ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CATEGORY = ACT1.CATEGORY AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_CATE ,   
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.ANAPLAN_BRAND = ACT1.ANAPLAN_BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_ANA_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.CHANNEL = ACT1.CHANNEL AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_CHAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.BRAND = ACT1.BRAND AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_BRAN ,  
		(select sum(A2.ACT_SAL_COP) from #KSOP_MIX_ACTL_TMP A2
	            where A2.BU = ACT1.BU AND A2.[TYPE] = ACT1.[TYPE] AND A2.CHANNEL = ACT1.CHANNEL AND A2.COUNTRY=ACT1.COUNTRY AND A2.FISC_YR_PD = ACT1.PREV_FISC_YR_PD) as PREV_ACTL_COP_TYPE  ,
				
				
		 0 AS TPM_FORE_CASES
		,0 AS TPM_FORE_LBS
		,0 AS TPM_FORE_KGS
		,0 AS TPM_FORE_GSV
		,0 AS TPM_LE_KMF
		,0 AS TPM_FORE_COP,

		0 as TPM_KGS_BU ,  
		0 as TPM_KGS_CATE ,   
		0 as TPM_KGS_ANA_BRAN , 
		0 as TPM_KGS_CHAN ,  
		0 as TPM_KGS_BRAN ,  
		0 as TPM_KGS_TYPE  ,

		0 as TPM_GSV_BU ,  
		0 as TPM_GSV_CATE ,  
		0 as TPM_GSV_ANA_BRAN , 
		0 as TPM_GSV_CHAN ,  
		0 as TPM_GSV_BRAN ,  
		0 as TPM_GSV_TYPE ,

		0 as TPM_COP_BU ,  
		0 as TPM_COP_CATE ,  
		0 as TPM_COP_ANA_BRAN , 
		0 as TPM_COP_CHAN ,  
		0 as TPM_COP_BRAN ,  
		0 as TPM_COP_TYPE 
	
		FROM #KSOP_MIX_ACTL_TEMP_NPRE ACT1
	
		) ACTUALS;

/*
SELECT --MATRL_NBR, 
BU, TYPE, CHANNEL, FISC_YR_PD, --ACT_SAL_GSV
SUM(ACT_SAL_GSV)
  FROM KNA_SC.STG.KSOP_MIX_ACTL  
WHERE  BU = 'Snacks' and CHANNEL = '01' and FISC_YR_PD = '2017004'  AND TYPE = 'Fudge Shoppe M'

group by BU, TYPE, CHANNEL, FISC_YR_PD

SELECT ACTL.MATRL_NBR, ACTL.BU, ACTL.TYPE, ACTL.CHANNEL, ACTL.FISC_YR_PD, ACTL.ACT_SAL_GSV
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL 
FULL JOIN KNA_SC.STG.KSOP_MIX_FCST CONS_FCST
ON ACTL.MATRL_NBR = CONS_FCST.MATRL_NBR
AND ACTL.FISC_YR_PD = CONS_FCST.FISC_YR_PD
AND ACTL.CHANNEL  = CONS_FCST.CHANNEL
WHERE  ACTL.BU = 'Snacks' and ACTL.CHANNEL = '01' and ACTL.FISC_YR_PD = '2017004'  AND ACTL.TYPE = 'Fudge Shoppe M';


*/

-- Inserting data from prev year and next year into final actual table
		INSERT INTO KNA_SC.STG.KSOP_MIX_ACTL
		SELECT * FROM #KSOP_MIX_ACTLP;

		INSERT INTO KNA_SC.STG.KSOP_MIX_ACTL
		SELECT * FROM #KSOP_MIX_ACTLN;

---------  Populate PREV ACTL SAL CASES  with previous year numbers -------------------


UPDATE ACTL
SET ACTL.[PREV_ACT_SAL_CASES] = PREV.[ACT_SAL_CASES]
, ACTL.[PREV_ACT_SAL_KGS] = PREV.[ACT_SAL_KGS]
, ACTL.[PREV_ACT_SAL_LBS] = PREV.[ACT_SAL_LBS]
, ACTL.[PREV_ACT_SAL_GSV] = PREV.[ACT_SAL_GSV]
, ACTL.[PREV_ACT_SAL_COP] = PREV.[ACT_SAL_COP]
-- SELECT *
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, TYPE, MATRL_NBR, [BRAND],[CATEGORY], FISC_YR_PD + 1000 AS FISC_YR_PD, [ACT_SAL_CASES], [ACT_SAL_KGS], [ACT_SAL_LBS], [ACT_SAL_GSV], [ACT_SAL_COP]
				FROM KNA_SC.STG.KSOP_MIX_ACTL PREV ) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD  = PREV.FISC_YR_PD AND COALESCE(ACTL.TYPE,'') = COALESCE(PREV.TYPE,'') 
AND ACTL.CHANNEL = PREV.CHANNEL AND ACTL.MATRL_NBR = PREV.MATRL_NBR AND ACTL.BRAND = PREV.BRAND AND ACTL.CATEGORY = PREV.CATEGORY
 --WHERE ACTL.MATRL_NBR = '000000000110010270' AND ACTL.CHANNEL = '19'
 --AND (ACTL.FISC_YR_PD = '2019002' OR ACTL.FISC_YR_PD = '2018002' or ACTL.FISC_YR_PD = '2017002')  


--  Update PREV aggregate columns for ACTAL Sales fields after New items/products are populated

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_BU] = PREV.BU_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as BU_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD
WHERE ACTL.PREV_ACTL_KGS_BU is null 


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_BU] = PREV.BU_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as BU_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD
WHERE ACTL.PREV_ACTL_GSV_BU is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_BU] = PREV.BU_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as BU_COP_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD
WHERE ACTL.PREV_ACTL_COP_BU is null 

----- CATEGORY


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_CATE] = PREV.CATG_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CATEGORY, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as CATG_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, CATEGORY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.CATEGORY = PREV.CATEGORY
WHERE ACTL.[PREV_ACTL_GSV_CATE] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_CATE] = PREV.CATG_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CATEGORY, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as CATG_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, CATEGORY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.CATEGORY = PREV.CATEGORY
WHERE ACTL.[PREV_ACTL_KGS_CATE] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_CATE] = PREV.CATG_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CATEGORY, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as CATG_COP_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, CATEGORY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.CATEGORY = PREV.CATEGORY
WHERE ACTL.[PREV_ACTL_COP_CATE] is null 

----- CHANNEL


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_CHAN] = PREV.CHAN_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as CHAN_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_GSV_CHAN] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_CHAN] = PREV.CHAN_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as CHAN_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_KGS_CHAN] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_CHAN] = PREV.CHAN_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as CHAN_COP_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_COP_CHAN] is null 

----- BRAND


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_BRAN] = PREV.BRAN_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY,  BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as BRAN_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY,  BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND 
WHERE ACTL.[PREV_ACTL_GSV_BRAN] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_BRAN] = PREV.BRAN_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY,  BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as BRAN_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY,  BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND 
WHERE ACTL.[PREV_ACTL_KGS_BRAN] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_BRAN] = PREV.BRAN_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY,  BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as BRAN_COP_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY,  BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND 
WHERE ACTL.[PREV_ACTL_COP_BRAN] is null 

----- TYPE


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_TYPE] = PREV.TYPE_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, TYPE, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as TYPE_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, CHANNEL, TYPE, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.TYPE = PREV.TYPE AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_GSV_TYPE] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_TYPE] = PREV.TYPE_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, TYPE, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as TYPE_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, CHANNEL, TYPE, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.TYPE = PREV.TYPE AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_KGS_TYPE] is null

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_TYPE] = PREV.TYPE_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, TYPE, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as TYPE_COP_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, CHANNEL, TYPE, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.TYPE = PREV.TYPE AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_COP_TYPE] is null

----- ANA_BRAN   tweaks ---------


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_ANA_BRAN] = PREV.CATG_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as CATG_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.ANAPLAN_BRAND = PREV.ANAPLAN_BRAND
WHERE ACTL.[PREV_ACTL_GSV_ANA_BRAN] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_ANA_BRAN] = PREV.CATG_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as CATG_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.ANAPLAN_BRAND = PREV.ANAPLAN_BRAND
WHERE ACTL.[PREV_ACTL_KGS_ANA_BRAN] is null 

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_ANA_BRAN] = PREV.CATG_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL
INNER JOIN 	(SELECT BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as CATG_COP_SUM FROM KNA_SC.STG.KSOP_MIX_ACTL PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.ANAPLAN_BRAND = PREV.ANAPLAN_BRAND
WHERE ACTL.[PREV_ACTL_COP_ANA_BRAN] is null 


-------------------------------



		DROP TABLE #KSOP_MIX_ACTLP;
		DROP TABLE #KSOP_MIX_ACTLN;
		DROP TABLE #KSOP_MIX_ACTL_TEMP;		
		DROP TABLE #KSOP_MIX_ACT_CAL;
		DROP TABLE #KSOP_MIX_ACTL_TMP;
		DROP TABLE #KSOP_MIX_ACTL_TMP_PREV;
		DROP TABLE #KSOP_MIX_ACTL_TEMP_PREV;
		DROP TABLE #KSOP_MIX_ACTL_TMP_NPRE;
		DROP TABLE #KSOP_MIX_ACTL_TEMP_NPRE;

/***********************************************************************************
	4	-	TPM FORECAST DATA INTO KSOP_MIX_TPM TABLE
************************************************************************************/

	SELECT CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3)) as FISC_YR_PD,
	       concat(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('00', FISC_WK), 2)) as FISC_YR_WK,
		   x.FRCST_DT
    INTO #KSOP_MIX_TPM_CAL
	FROM KG_VIEWS.KG.UVW_FISC_CAL CAL WITH (NOLOCK)
	INNER JOIN
	(SELECT CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3)) as FISC_YR_PD,
	        DATEADD(DD, - 2, MIN(FISC_WK_STRT_DT)) AS FRCST_DT
	from KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
	GROUP BY CONCAT(RIGHT(CONCAT('000', FISC_YR), 4), RIGHT(CONCAT('000', FISC_PD), 3))
	) x 
	on x.FISC_YR_PD=CONCAT(RIGHT(CONCAT('000', CAL.FISC_YR), 4), RIGHT(CONCAT('000', CAL.FISC_PD), 3))
    WHERE --CAL.FISC_YR>=YEAR(GETDATE())-1 AND CAL.FISC_YR<=YEAR(GETDATE()); -- CURRENT YEAR AND NEXT YEAR
	        CAL.FISC_YR>=YEAR(GETDATE())-1 AND CAL.FISC_YR<=YEAR(GETDATE())+1; -- PREV, CURRENT AND NEXT YEAR  --???
	
	
	SELECT
 			TPM_DATA.BU
			,TPM_DATA.MATRL_NBR
			,TPM_DATA.CHANNEL
			,TPM_DATA.CATEGORY
			,TPM_DATA.BRAND
			,TPM_DATA.ANAPLAN_BRAND
			,TPM_DATA.[TYPE]
			,TPM_DATA.TPM_FORE_CASES
			,TPM_DATA.TPM_FORE_LBS
			,TPM_DATA.TPM_FORE_KGS
			,TPM_DATA.TPM_FORE_GSV
			,TPM_DATA.TPM_LE_KMF
			,TPM_DATA.TPM_FORE_COP
			,TPM_DATA.TPM_KGS_BU
			,TPM_DATA.TPM_KGS_CATE 
			,TPM_DATA.TPM_KGS_CHAN
			,TPM_DATA.TPM_KGS_BRAN
			,TPM_DATA.TPM_KGS_TYPE 
			,TPM_DATA.TPM_GSV_BU
			,TPM_DATA.TPM_GSV_CATE 
			,TPM_DATA.TPM_GSV_CHAN
			,TPM_DATA.TPM_GSV_BRAN
			,TPM_DATA.TPM_GSV_TYPE 
			,TPM_DATA.TPM_COP_BU
			,TPM_DATA.TPM_COP_CATE 
			,TPM_DATA.TPM_COP_CHAN
			,TPM_DATA.TPM_COP_BRAN
			,TPM_DATA.TPM_COP_TYPE 
			,TPM_DATA.FISC_YR_PD
	INTO KNA_SC.STG.KSOP_MIX_TPM
	FROM KNA_SC.STG.KSOP_MIX_ACTL TPM_DATA
	WHERE TPM_DATA.FISC_YR_PD IN (SELECT CALET.FISC_YR_PD FROM #KSOP_MIX_TPM_CAL CALET)
	AND TPM_DATA.TPM_FORE_CASES <> 0
	AND TPM_DATA.TPM_FORE_LBS <> 0
	AND TPM_DATA.TPM_FORE_KGS <> 0
	AND TPM_DATA.TPM_FORE_GSV <> 0
	AND TPM_DATA.TPM_LE_KMF <> 0
	AND TPM_DATA.TPM_FORE_COP <> 0;
			
	DROP TABLE #KSOP_MIX_TPM_CAL;

/***********************************************************************************
	5	-	BUDGET DATA FOR ONLY MORNING FOODS MIX INTO TABLE
************************************************************************************/


--------------------
--	BUDGET KGS
--------------------


	SELECT BUG.MATNR_NBR AS MATRL_NBR, BUG.MATRL_DESC, BUG.[CHNL] AS CHANNEL_DESC, CAST(NULL AS VARCHAR(30)) AS BRAND --BUG.[Brand L5] AS BRAND 
	,(SELECT CHAN.KDGRP FROM KNA_ECC.dbo.T151T CHAN WHERE CHAN.KTEXT=BUG.[CHNL] AND CHAN.SPRAS='E' ) AS CHANNEL
--	,SUBSTRING(FILENAME,25,(CHARINDEX('_',FILENAME,25)-25)) as BU, 	SUBSTRING(FILENAME,(CHARINDEX('_',FILENAME,25)+1),2) as CATG
	, (CASE WHEN BU = 'MF' THEN 'Morning Foods' ELSE BU END) as BU, [BUD_TYP] AS CATG
	, BUG.PD1, BUG.PD2, BUG.PD3,BUG.PD4
	, BUG.PD5, BUG.PD6, BUG.PD7,BUG.PD8
	, BUG.PD9, BUG.PD10, BUG.PD11, BUG.PD12
	, YR 
	INTO #KSOP_MIX_BUD_KGSFIL
--  Select *
    FROM [KNA_FIN].[dbo].[UVW_FIN_ADJ_BUD_KG] BUG
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = BUG.MATNR_NBR AND A.MATRL_TYP = 'FERT'
	WHERE BUG.[MATNR_NBR] IS NOT NULL ;
	
	--FROM KNA_SC.dbo.KSOP_MIX_BUD_KGS BUG 
	--WHERE BUG.[Row Labels] IS NOT NULL;

---  Process only subset of 'BU' records

	SELECT  MATRL_NBR, BRAND, CHANNEL, BU, CATEGORY,[TYPE], COP, CONV_FCT_CS, CONV_FCT_KGS, BUD_BUOM, BUD_CS, BUDGET_COP,
	FISC_YR_PD , PREV_FISC_YR_PD, PREV_BUDGET_VAL, PERIOD, BUDGET_VAL
	INTO KNA_SC.STG.KSOP_MIX_BUG_KGSPD
	FROM 
		(SELECT  MATRL_NBR, BRAND, CHANNEL, 
		(SELECT CASE WHEN BU_DESC  = 'MF' THEN 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1) AS BU, 
		CAST(NULL AS VARCHAR(30)) AS CATEGORY, CAST(NULL AS VARCHAR(40)) AS [TYPE], 
		CAST(NULL AS FLOAT) AS COP, CAST(NULL AS FLOAT) AS CONV_FCT_CS, 
		CAST(NULL AS FLOAT) AS CONV_FCT_KGS, CAST(NULL AS FLOAT) AS BUD_BUOM, 
		CAST(NULL AS FLOAT) AS BUD_CS,  CAST(NULL AS FLOAT) AS BUDGET_COP,
--		CAST(NULL AS VARCHAR(7)) AS FISC_YR_PD , 
		CAST(YR as varchar(7)) AS FISC_YR_PD ,
		CAST(NULL AS VARCHAR(7)) AS PREV_FISC_YR_PD, 
		CAST(NULL AS FLOAT) AS PREV_BUDGET_VAL, 
		[PD1] AS [P1],[PD2] AS [P2],[PD3] AS [P3],[PD4] AS [P4], [PD5] AS [P5],[PD6] AS [P6],[PD7] AS [P7],[PD8] AS [P8],[PD9] AS [P9],[PD10] AS [P10],[PD11] AS [P11],[PD12] AS [P12] 
		FROM #KSOP_MIX_BUD_KGSFIL		
		WHERE CATG = 'BU' AND UPPER(BU) = (SELECT CASE WHEN BU_DESC = 'MF' THEN UPPER('Morning Foods') ELSE UPPER(BU_DESC) END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
		) UNV
	UNPIVOT
	(
	BUDGET_VAL
	FOR PERIOD IN ([P1],[P2],[P3],[P4], [P5],[P6],[P7],[P8],[P9],[P10],[P11],[P12])
     ) AS UNPVTBU ;
	
	
	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'001')
	WHERE PERIOD='P1';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'002')
	WHERE PERIOD='P2';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'003')
	WHERE PERIOD='P3';

    UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'004')
	WHERE PERIOD='P4';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'005')
	WHERE PERIOD='P5';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'006')
	WHERE PERIOD='P6';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'007')
	WHERE PERIOD='P7';

    UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'008')
	WHERE PERIOD='P8';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'009')
	WHERE PERIOD='P9';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'010')
	WHERE PERIOD='P10';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'011')
	WHERE PERIOD='P11';

    UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'012')
	WHERE PERIOD='P12';

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET MATRL_NBR = CONCAT(REPLICATE('0', 18-LEN(MATRL_NBR)) , MATRL_NBR)
	WHERE MATRL_NBR IS NOT NULL;

		
	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET COP = MATERIAL.COP_CS FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET CONV_FCT_CS = MATERIAL.CNV_FCTR FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET CATEGORY = MATERIAL.Category FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR ;
	
	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET [TYPE] = MATERIAL.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET [BRAND] = MATERIAL.[BRAND] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET CONV_FCT_KGS = E.[CNV_FCTR] FROM [KG_VIEWS].[KNA].[UVW_MATRL_ALTN_UOM] E
	WHERE E.ALTN_UOM='ZNK' AND E.MATRL_NBR = KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR;

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET BUD_BUOM = BUDGET_VAL/CONV_FCT_KGS;
	
	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET BUD_CS = BUD_BUOM * CONV_FCT_CS;

	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD SET BUDGET_COP = BUD_CS * COP;
	
	--PREV YEAR DATA
	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD 
	SET KNA_SC.STG.KSOP_MIX_BUG_KGSPD.PREV_FISC_YR_PD = 
			CONCAT(LEFT(KNA_SC.STG.KSOP_MIX_BUG_KGSPD.FISC_YR_PD,4)-1, RIGHT(KNA_SC.STG.KSOP_MIX_BUG_KGSPD.FISC_YR_PD,3));
	
	UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD 
	SET PREV_BUDGET_VAL = A.ACT_SAL_KGS 
	FROM KNA_SC.STG.KSOP_MIX_ACTL A
	WHERE A.MATRL_NBR = KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR 
	AND A.CHANNEL=KNA_SC.STG.KSOP_MIX_BUG_KGSPD.CHANNEL 
	AND A.FISC_YR_PD=KNA_SC.STG.KSOP_MIX_BUG_KGSPD.PREV_FISC_YR_PD;
	

	SELECT DISTINCT
		BUGKGS.MATRL_NBR, 
		BUGKGS.BRAND, 
		BUGKGS.ANAPLAN_BRAND, 
		BUGKGS.CHANNEL,
		BUGKGS.BU,
		BUGKGS.CATEGORY,
		BUGKGS.[TYPE], 
		BUGKGS.COP,
		BUGKGS.FISC_YR_PD ,
		BUGKGS.PERIOD, 
		BUGKGS.BUDGET_VAL,
		
		BUGKGS.PREV_FISC_YR_PD ,
		BUGKGS.PREV_BUDGET_VAL,

		BUGKGS.BUDGET_COP,
		
		BUGKGS.BUD_KGS_BU,
		BUGKGS.BUD_KGS_BRAND, 
		BUGKGS.BUD_KGS_CATEGORY,
		BUGKGS.BUD_KGS_ANA_BRAN ,
		BUGKGS.BUD_KGS_CHANNEL, 
		BUGKGS.BUD_KGS_TYPE, 
	
		BUGKGS.BUD_COP_BU,
		BUGKGS.BUD_COP_BRAND, 
		BUGKGS.BUD_COP_CATEGORY,
		BUGKGS.BUD_COP_ANA_BRAN ,
		BUGKGS.BUD_COP_CHANNEL, 
		BUGKGS.BUD_COP_TYPE
		
	INTO KNA_SC.STG.KSOP_MIX_BUD_KGSPD
	FROM 

	(
	SELECT  

		BUGKGS1.MATRL_NBR, 
		BUGKGS1.BRAND, 
		M.ANAPLAN_BRAND as ANAPLAN_BRAND,
		BUGKGS1.CHANNEL,
		BUGKGS1.BU,
		BUGKGS1.CATEGORY,
		BUGKGS1.[TYPE], 
		BUGKGS1.COP,
		BUGKGS1.FISC_YR_PD ,
		BUGKGS1.PERIOD, 
		BUGKGS1.BUDGET_VAL,
		
		BUGKGS1.PREV_FISC_YR_PD ,
		BUGKGS1.PREV_BUDGET_VAL,

		BUGKGS1.BUDGET_COP,

		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_KGS_BU ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD= BUGKGS1.FISC_YR_PD) as BUD_KGS_BRAND ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CATEGORY = BUGKGS1.CATEGORY AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_KGS_CATEGORY ,   
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2 		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M1 on M1.MATRL_NBR = BUGKGS2.MATRL_NBR
	            where BUGKGS2.BU = BUGKGS1.BU AND M1.ANAPLAN_BRAND = M.ANAPLAN_BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_KGS_ANA_BRAN ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_KGS_CHANNEL ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.[TYPE] = BUGKGS1.[TYPE] AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_KGS_TYPE,

		(select sum(BUGKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_COP_BU ,  
		(select sum(BUGKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD= BUGKGS1.FISC_YR_PD) as BUD_COP_BRAND ,  
		(select sum(BUGKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CATEGORY = BUGKGS1.CATEGORY AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_COP_CATEGORY ,   
		(select sum(BUGKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2 		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M1 on M1.MATRL_NBR = BUGKGS2.MATRL_NBR
	            where BUGKGS2.BU = BUGKGS1.BU AND M1.ANAPLAN_BRAND = M.ANAPLAN_BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_COP_ANA_BRAN ,   
		(select sum(BUGKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.BRAND = BUGKGS1.BRAND  AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_COP_CHANNEL ,  
		(select sum(BUGKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.[TYPE] = BUGKGS1.[TYPE] AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_COP_TYPE
				
		FROM KNA_SC.STG.KSOP_MIX_BUG_KGSPD BUGKGS1
		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M on M.MATRL_NBR = BUGKGS1.MATRL_NBR
	) BUGKGS;
	
	IF OBJECT_ID(N'STG.KSOP_MIX_BUG_KGSPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BUG_KGSPD;

----------

---  Process only subset of 'SE' records

	SELECT  MATRL_NBR, BRAND, CHANNEL, BU, CATEGORY,[TYPE], COP, CONV_FCT_CS, CONV_FCT_KGS, BUD_BUOM, BUD_CS, BUDGET_COP,
	FISC_YR_PD , --PREV_FISC_YR_PD, PREV_BUDGET_VAL, 
	PERIOD, SE_VAL
	INTO KNA_SC.STG.KSOP_MIX_SE_KGSPD
	FROM 
		(SELECT  MATRL_NBR, BRAND, CHANNEL, 
		(SELECT CASE WHEN BU_DESC = 'MF' THEN 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1) AS BU, 
		CAST(NULL AS VARCHAR(30)) AS CATEGORY, CAST(NULL AS VARCHAR(40)) AS [TYPE], 
		CAST(NULL AS FLOAT) AS COP, CAST(NULL AS FLOAT) AS CONV_FCT_CS, 
		CAST(NULL AS FLOAT) AS CONV_FCT_KGS, CAST(NULL AS FLOAT) AS BUD_BUOM, 
		CAST(NULL AS FLOAT) AS BUD_CS,  CAST(NULL AS FLOAT) AS BUDGET_COP,
		CAST(YR AS VARCHAR(7)) AS FISC_YR_PD , 
		--CAST(NULL AS VARCHAR(7)) AS PREV_FISC_YR_PD, 
		--CAST(NULL AS FLOAT) AS PREV_BUDGET_VAL, 
		[PD1] AS [P1],[PD2] AS [P2],[PD3] AS [P3],[PD4] AS [P4], [PD5] AS [P5],[PD6] AS [P6],[PD7] AS [P7],[PD8] AS [P8],[PD9] AS [P9],[PD10] AS [P10],[PD11] AS [P11],[PD12] AS [P12] 
		FROM #KSOP_MIX_BUD_KGSFIL		
		WHERE RTRIM(CATG) = 'SE' AND UPPER(RTRIM(BU)) = (SELECT CASE WHEN BU_DESC = 'MF' THEN UPPER('Morning Foods') ELSE UPPER(BU_DESC) END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
		) UNV
	UNPIVOT
	(
	SE_VAL
	FOR PERIOD IN ([P1],[P2],[P3],[P4], [P5],[P6],[P7],[P8],[P9],[P10],[P11],[P12])
     ) AS UNPVTSE ;

	
	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'001')
	WHERE PERIOD='P1';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'002')
	WHERE PERIOD='P2';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'003')
	WHERE PERIOD='P3';

    UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'004')
	WHERE PERIOD='P4';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'005')
	WHERE PERIOD='P5';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'006')
	WHERE PERIOD='P6';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'007')
	WHERE PERIOD='P7';

    UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'008')
	WHERE PERIOD='P8';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'009')
	WHERE PERIOD='P9';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'010')
	WHERE PERIOD='P10';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'011')
	WHERE PERIOD='P11';

    UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'012')
	WHERE PERIOD='P12';

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET MATRL_NBR = CONCAT(REPLICATE('0', 18-LEN(MATRL_NBR)) , MATRL_NBR)
	WHERE MATRL_NBR IS NOT NULL;

		
	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET COP = MATERIAL.COP_CS FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET CONV_FCT_CS = MATERIAL.CNV_FCTR FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET CATEGORY = MATERIAL.Category FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE_KGSPD.MATRL_NBR ;
	
	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET [TYPE] = MATERIAL.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET [BRAND] = MATERIAL.[BRAND] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE_KGSPD.MATRL_NBR ;

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET CONV_FCT_KGS = E.[CNV_FCTR] FROM [KG_VIEWS].[KNA].[UVW_MATRL_ALTN_UOM] E
	WHERE E.ALTN_UOM='ZNK' AND E.MATRL_NBR = KNA_SC.STG.KSOP_MIX_SE_KGSPD.MATRL_NBR;

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET BUD_BUOM = SE_VAL/CONV_FCT_KGS;
	
	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET BUD_CS = BUD_BUOM * CONV_FCT_CS;

	UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD SET BUDGET_COP = BUD_CS * COP;
	
	--PREV YEAR DATA
	--UPDATE KNA_SC.STG.KSOP_MIX_SE_KGSPD 
	--SET KNA_SC.STG.KSOP_MIX_BUG_KGSPD.PREV_FISC_YR_PD = 
	--		CONCAT(LEFT(KNA_SC.STG.KSOP_MIX_BUG_KGSPD.FISC_YR_PD,4)-1, RIGHT(KNA_SC.STG.KSOP_MIX_BUG_KGSPD.FISC_YR_PD,3));
	
	--UPDATE KNA_SC.STG.KSOP_MIX_BUG_KGSPD 
	--SET PREV_BUDGET_VAL = A.ACT_SAL_KGS 
	--FROM KNA_SC.STG.KSOP_MIX_ACTL A
	--WHERE A.MATRL_NBR = KNA_SC.STG.KSOP_MIX_BUG_KGSPD.MATRL_NBR 
	--AND A.CHANNEL=KNA_SC.STG.KSOP_MIX_BUG_KGSPD.CHANNEL 
	--AND A.FISC_YR_PD=KNA_SC.STG.KSOP_MIX_BUG_KGSPD.PREV_FISC_YR_PD;
	

	SELECT DISTINCT
		SEKGS.MATRL_NBR, 
		SEKGS.BRAND, 
		SEKGS.ANAPLAN_BRAND,
		SEKGS.CHANNEL,
		SEKGS.BU,
		SEKGS.CATEGORY,
		SEKGS.[TYPE], 
		SEKGS.COP,
		SEKGS.FISC_YR_PD ,
		SEKGS.PERIOD, 
		SEKGS.SE_VAL,
		
		--BUGKGS.PREV_FISC_YR_PD ,
		--BUGKGS.PREV_BUDGET_VAL,

		SEKGS.BUDGET_COP,
		
		SEKGS.BUD_KGS_BU,
		SEKGS.BUD_KGS_BRAND, 
		SEKGS.BUD_KGS_CATEGORY, 
		SEKGS.BUD_KGS_ANA_BRAN,
		SEKGS.BUD_KGS_CHANNEL, 
		SEKGS.BUD_KGS_TYPE, 
	
		SEKGS.BUD_COP_BU,
		SEKGS.BUD_COP_BRAND, 
		SEKGS.BUD_COP_CATEGORY, 
		SEKGS.BUD_COP_ANA_BRAN,
		SEKGS.BUD_COP_CHANNEL, 
		SEKGS.BUD_COP_TYPE
		
	INTO KNA_SC.STG.KSOP_MIX_SE1_KGSPD
	FROM 

	(
	SELECT  

		SEKGS1.MATRL_NBR, 
		SEKGS1.BRAND, 
		M.ANAPLAN_BRAND,
		SEKGS1.CHANNEL,
		SEKGS1.BU,
		SEKGS1.CATEGORY,
		SEKGS1.[TYPE], 
		SEKGS1.COP,
		SEKGS1.FISC_YR_PD ,
		SEKGS1.PERIOD, 
		SEKGS1.SE_VAL,
		
		--SEKGS1.PREV_FISC_YR_PD ,
		--SEKGS1.PREV_BUDGET_VAL,

		SEKGS1.BUDGET_COP,

		(select sum(SEKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.CHANNEL = SEKGS1.CHANNEL AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_KGS_BU ,  
		(select sum(SEKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.BRAND = SEKGS1.BRAND AND SEKGS2.FISC_YR_PD= SEKGS1.FISC_YR_PD) as BUD_KGS_BRAND ,  
		(select sum(SEKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.CATEGORY = SEKGS1.CATEGORY AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_KGS_CATEGORY ,  
		(select sum(SEKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2 		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M1 on M1.MATRL_NBR = SEKGS2.MATRL_NBR
	            where SEKGS2.BU = SEKGS1.BU AND M1.ANAPLAN_BRAND = M.ANAPLAN_BRAND AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_KGS_ANA_BRAN ,      
		(select sum(SEKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.CHANNEL = SEKGS1.CHANNEL AND SEKGS2.BRAND = SEKGS1.BRAND AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_KGS_CHANNEL ,  
		(select sum(SEKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.[TYPE] = SEKGS1.[TYPE] AND SEKGS2.CHANNEL = SEKGS1.CHANNEL AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_KGS_TYPE,

		(select sum(SEKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.CHANNEL = SEKGS1.CHANNEL AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_COP_BU ,  
		(select sum(SEKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.BRAND = SEKGS1.BRAND AND SEKGS2.FISC_YR_PD= SEKGS1.FISC_YR_PD) as BUD_COP_BRAND ,  
		(select sum(SEKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.CATEGORY = SEKGS1.CATEGORY AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_COP_CATEGORY ,   
		(select sum(SEKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M1 on M1.MATRL_NBR = SEKGS2.MATRL_NBR
	            where SEKGS2.BU = SEKGS1.BU AND M1.ANAPLAN_BRAND = M.ANAPLAN_BRAND AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_COP_ANA_BRAN ,    
		(select sum(SEKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.CHANNEL = SEKGS1.CHANNEL AND SEKGS2.BRAND = SEKGS1.BRAND AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_COP_CHANNEL ,  
		(select sum(SEKGS2.COP) FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS2
	            where SEKGS2.BU = SEKGS1.BU AND SEKGS2.[TYPE] = SEKGS1.[TYPE] AND SEKGS2.CHANNEL = SEKGS1.CHANNEL AND SEKGS2.FISC_YR_PD = SEKGS1.FISC_YR_PD) as BUD_COP_TYPE
				
		FROM KNA_SC.STG.KSOP_MIX_SE_KGSPD SEKGS1
		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M on M.MATRL_NBR = SEKGS1.MATRL_NBR

	) SEKGS;
	
	IF OBJECT_ID(N'STG.KSOP_MIX_SE_KGSPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_SE_KGSPD;

	
	--------------------
	-- BUDGET GSV
	--------------------

	SELECT BUG.[MATNR_NBR] AS MATRL_NBR, BUG.MATRL_DESC, BUG.[CHNL] AS CHANNEL_DESC, CAST(NULL AS VARCHAR(30)) as BRAND --BUG.[Brand L5] AS BRAND 
	,(SELECT CHAN.KDGRP FROM KNA_ECC.dbo.T151T CHAN WHERE CHAN.KTEXT=BUG.[CHNL] AND CHAN.SPRAS='E' ) AS CHANNEL
--	,SUBSTRING(FILENAME,25,(CHARINDEX('_',FILENAME,25)-25)) as BU, 	SUBSTRING(FILENAME,(CHARINDEX('_',FILENAME,25)+1),2) as CATG
	, (CASE WHEN BU = 'MF' THEN 'Morning Foods' ELSE BU END) as BU, [BUD_TYP] as CATG
	, BUG.PD1, BUG.PD2, BUG.PD3,BUG.PD4
	, BUG.PD5, BUG.PD6, BUG.PD7,BUG.PD8
	, BUG.PD9, BUG.PD10, BUG.PD11, BUG.PD12
	, YR
	INTO #KSOP_MIX_BUD_GSVFIL
--	FROM KNA_EXTERNAL.USER_FIN.FIN_ADJ_BUD_GSV BUG
	FROM KNA_FIN.dbo.UVW_FIN_ADJ_BUD_GSV BUG
	INNER JOIN KG_VIEWS.KNA.UVW_MATRL A ON A.MATRL_NBR  = BUG.MATNR_NBR AND A.MATRL_TYP = 'FERT'
	WHERE BUG.[MATNR_NBR] IS NOT NULL ;

----- Process only sub set of 'BU' records
		
	SELECT  MATRL_NBR, BRAND, CHANNEL, BU, FISC_YR_PD , PREV_FISC_YR_PD, PREV_BUDGET_VAL, PERIOD, GSV_VAL as BUDGET_VAL, CATEGORY, [TYPE]
	INTO KNA_SC.STG.KSOP_MIX_BUD_GSVPD
	FROM 
		(SELECT  MATRL_NBR, BRAND, CHANNEL, 
		(SELECT CASE WHEN BU_DESC = 'MF' THEN 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1) AS BU,  
		CAST(NULL AS VARCHAR(30)) AS CATEGORY, CAST(NULL AS VARCHAR(40)) AS [TYPE], 
		CAST(YR AS VARCHAR(7)) AS FISC_YR_PD , 
		CAST(NULL AS VARCHAR(7)) AS PREV_FISC_YR_PD, 
		CAST(NULL AS FLOAT) AS PREV_BUDGET_VAL,  
		[PD1] AS [P1],[PD2] AS [P2],[PD3] AS [P3],[PD4] AS [P4], [PD5] AS [P5],[PD6] AS [P6],[PD7] AS [P7],[PD8] AS [P8],[PD9] AS [P9],[PD10] AS [P10],[PD11] AS [P11],[PD12] AS [P12] 
		FROM #KSOP_MIX_BUD_GSVFIL
		WHERE CATG = 'BU' AND UPPER(BU) = (SELECT CASE WHEN BU_DESC = 'MF' THEN UPPER('Morning Foods') ELSE UPPER(BU_DESC) END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
		) UNV
	UNPIVOT
	(
	GSV_VAL
	FOR PERIOD IN ([P1],[P2],[P3],[P4], [P5],[P6],[P7],[P8],[P9],[P10],[P11],[P12])
     ) AS UNPVTBU ;
	
	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'001')
	WHERE PERIOD='P1';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'002')
	WHERE PERIOD='P2';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'003')
	WHERE PERIOD='P3';

    UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'004')
	WHERE PERIOD='P4';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'005')
	WHERE PERIOD='P5';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'006')
	WHERE PERIOD='P6';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'007')
	WHERE PERIOD='P7';

    UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'008')
	WHERE PERIOD='P8';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'009')
	WHERE PERIOD='P9';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'010')
	WHERE PERIOD='P10';

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'011')
	WHERE PERIOD='P11';

    UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'012')
	WHERE PERIOD='P12';


	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET MATRL_NBR= CONCAT(REPLICATE('0', 18-LEN(MATRL_NBR)) , MATRL_NBR)
	WHERE MATRL_NBR IS NOT NULL;

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET [BRAND] = MATERIAL.[BRAND] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUD_GSVPD.MATRL_NBR ;	

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET CATEGORY = MATERIAL.Category FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUD_GSVPD.MATRL_NBR ;
	
	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD SET [TYPE] = MATERIAL.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_BUD_GSVPD.MATRL_NBR ;

--PREV YEAR DATA

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD 
	SET KNA_SC.STG.KSOP_MIX_BUD_GSVPD.PREV_FISC_YR_PD = 
		CONCAT(LEFT(KNA_SC.STG.KSOP_MIX_BUD_GSVPD.FISC_YR_PD,4)-1, RIGHT(KNA_SC.STG.KSOP_MIX_BUD_GSVPD.FISC_YR_PD,3));

	UPDATE KNA_SC.STG.KSOP_MIX_BUD_GSVPD 
	SET PREV_BUDGET_VAL = A.ACT_SAL_GSV 
	FROM KNA_SC.STG.KSOP_MIX_ACTL A
	WHERE A.MATRL_NBR = KNA_SC.STG.KSOP_MIX_BUD_GSVPD.MATRL_NBR 
	AND A.CHANNEL=KNA_SC.STG.KSOP_MIX_BUD_GSVPD.CHANNEL 
	AND A.FISC_YR_PD=KNA_SC.STG.KSOP_MIX_BUD_GSVPD.PREV_FISC_YR_PD;

----------

	SELECT DISTINCT
		BUGKGS.MATRL_NBR, 
		BUGKGS.BRAND, 
		BUGKGS.ANAPLAN_BRAND, 
		BUGKGS.CHANNEL,
		BUGKGS.BU,
		BUGKGS.CATEGORY,
		BUGKGS.[TYPE], 
		BUGKGS.FISC_YR_PD ,
		BUGKGS.PERIOD, 
		BUGKGS.BUDGET_VAL,
		
		--BUGKGS.PREV_FISC_YR_PD ,
		--BUGKGS.PREV_BUDGET_VAL,

		
		BUGKGS.BUD_GSV_BU,
		BUGKGS.BUD_GSV_BRAND, 
		BUGKGS.BUD_GSV_CATEGORY,
		BUGKGS.BUD_GSV_ANA_BRAN ,
		BUGKGS.BUD_GSV_CHANNEL, 
		BUGKGS.BUD_GSV_TYPE
		
	INTO KNA_SC.STG.KSOP_MIX_BU_GSVPD
	FROM 

	(
	SELECT  

		BUGKGS1.MATRL_NBR, 
		BUGKGS1.BRAND, 
		M.ANAPLAN_BRAND, 
		BUGKGS1.CHANNEL,
		BUGKGS1.BU,
		BUGKGS1.CATEGORY,
		BUGKGS1.[TYPE], 
		BUGKGS1.FISC_YR_PD ,
		BUGKGS1.PERIOD, 
		BUGKGS1.BUDGET_VAL,
		
		--BUGKGS1.PREV_FISC_YR_PD ,
		--BUGKGS1.PREV_BUDGET_VAL,

		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_GSV_BU ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD= BUGKGS1.FISC_YR_PD) as BUD_GSV_BRAND ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CATEGORY = BUGKGS1.CATEGORY AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_GSV_CATEGORY ,    
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS2 		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M1 on M1.MATRL_NBR = BUGKGS2.MATRL_NBR
	            where BUGKGS2.BU = BUGKGS1.BU AND M1.ANAPLAN_BRAND = M.ANAPLAN_BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_GSV_ANA_BRAN ,   
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_GSV_CHANNEL ,  
		(select sum(BUGKGS2.BUDGET_VAL) FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.[TYPE] = BUGKGS1.[TYPE] AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as BUD_GSV_TYPE
	
		FROM KNA_SC.STG.KSOP_MIX_BUD_GSVPD BUGKGS1
		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M on M.MATRL_NBR = BUGKGS1.MATRL_NBR
	) BUGKGS;
	
	IF OBJECT_ID(N'STG.KSOP_MIX_BUD_GSVPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BUD_GSVPD;

---------


----- Process only next set of 'SE' records
		
	SELECT  MATRL_NBR, BRAND, CHANNEL, BU, FISC_YR_PD , PREV_FISC_YR_PD, PREV_BUDGET_VAL, PERIOD, SE_VAL, CATEGORY, [TYPE]
	INTO KNA_SC.STG.KSOP_MIX_SE1_GSVPD
	FROM 
		(SELECT  MATRL_NBR, BRAND, CHANNEL, 
		(SELECT CASE WHEN BU_DESC = 'MF' THEN 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1) AS BU,  
		CAST(NULL AS VARCHAR(30)) AS CATEGORY, CAST(NULL AS VARCHAR(40)) AS [TYPE], 
		CAST(YR AS VARCHAR(7)) AS FISC_YR_PD , 
		CAST(NULL AS VARCHAR(7)) AS PREV_FISC_YR_PD, 
		CAST(NULL AS FLOAT) AS PREV_BUDGET_VAL,  
		[PD1] AS [P1],[PD2] AS [P2],[PD3] AS [P3],[PD4] AS [P4], [PD5] AS [P5],[PD6] AS [P6],[PD7] AS [P7],[PD8] AS [P8],[PD9] AS [P9],[PD10] AS [P10],[PD11] AS [P11],[PD12] AS [P12] 
		FROM #KSOP_MIX_BUD_GSVFIL
		WHERE CATG = 'SE' AND UPPER(BU) = (SELECT CASE WHEN BU_DESC = 'MF' THEN UPPER('Morning Foods') ELSE UPPER(BU_DESC) END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
		) UNV
	UNPIVOT
	(
	SE_VAL
	FOR PERIOD IN ([P1],[P2],[P3],[P4], [P5],[P6],[P7],[P8],[P9],[P10],[P11],[P12])
     ) AS UNPVTSE ;
	
	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'001')
	WHERE PERIOD='P1';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'002')
	WHERE PERIOD='P2';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'003')
	WHERE PERIOD='P3';

    UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'004')
	WHERE PERIOD='P4';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'005')
	WHERE PERIOD='P5';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'006')
	WHERE PERIOD='P6';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'007')
	WHERE PERIOD='P7';

    UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'008')
	WHERE PERIOD='P8';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'009')
	WHERE PERIOD='P9';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'010')
	WHERE PERIOD='P10';

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'011')
	WHERE PERIOD='P11';

    UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET FISC_YR_PD = CONCAT(CONVERT(varchar(4),FISC_YR_PD),'012')
	WHERE PERIOD='P12';


	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET MATRL_NBR= CONCAT(REPLICATE('0', 18-LEN(MATRL_NBR)) , MATRL_NBR)
	WHERE MATRL_NBR IS NOT NULL;

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET [BRAND] = MATERIAL.[BRAND] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE1_GSVPD.MATRL_NBR ;	

	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET CATEGORY = MATERIAL.Category FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE1_GSVPD.MATRL_NBR ;
	
	UPDATE KNA_SC.STG.KSOP_MIX_SE1_GSVPD SET [TYPE] = MATERIAL.[Type] FROM KNA_SC.STG.KSOP_MIX_MATRL MATERIAL 
	WHERE MATERIAL.MATRL_NBR =KNA_SC.STG.KSOP_MIX_SE1_GSVPD.MATRL_NBR ;

----------

	SELECT DISTINCT
		BUGKGS.MATRL_NBR, 
		BUGKGS.BRAND, 
		BUGKGS.ANAPLAN_BRAND, 
		BUGKGS.CHANNEL,
		BUGKGS.BU,
		BUGKGS.CATEGORY,
		BUGKGS.[TYPE], 
		BUGKGS.FISC_YR_PD ,
		BUGKGS.PERIOD, 
		BUGKGS.SE_VAL,
		
		BUGKGS.PREV_FISC_YR_PD ,
		BUGKGS.PREV_BUDGET_VAL,

		
		BUGKGS.SE_GSV_BU,
		BUGKGS.SE_GSV_BRAND, 
		BUGKGS.SE_GSV_CATEGORY, 
		BUGKGS.SE_GSV_ANA_BRAN, 
		BUGKGS.SE_GSV_CHANNEL, 
		BUGKGS.SE_GSV_TYPE
		
	INTO KNA_SC.STG.KSOP_MIX_SE_GSVPD
	FROM 

	(
	SELECT  

		BUGKGS1.MATRL_NBR, 
		BUGKGS1.BRAND, 
		M.ANAPLAN_BRAND, 
		BUGKGS1.CHANNEL,
		BUGKGS1.BU,
		BUGKGS1.CATEGORY,
		BUGKGS1.[TYPE], 
		BUGKGS1.FISC_YR_PD ,
		BUGKGS1.PERIOD, 
		BUGKGS1.SE_VAL,
		
		BUGKGS1.PREV_FISC_YR_PD ,
		BUGKGS1.PREV_BUDGET_VAL,

		(select sum(BUGKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as SE_GSV_BU ,  
		(select sum(BUGKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD= BUGKGS1.FISC_YR_PD) as SE_GSV_BRAND ,  
		(select sum(BUGKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CATEGORY = BUGKGS1.CATEGORY AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as SE_GSV_CATEGORY ,    
		(select sum(BUGKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS2 		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M1 on M1.MATRL_NBR = BUGKGS2.MATRL_NBR
	            where BUGKGS2.BU = BUGKGS1.BU AND M1.ANAPLAN_BRAND = M.ANAPLAN_BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as SE_GSV_ANA_BRAN , 
		(select sum(BUGKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.BRAND = BUGKGS1.BRAND AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as SE_GSV_CHANNEL ,  
		(select sum(BUGKGS2.SE_VAL) FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS2
	            where BUGKGS2.BU = BUGKGS1.BU AND BUGKGS2.[TYPE] = BUGKGS1.[TYPE] AND BUGKGS2.CHANNEL = BUGKGS1.CHANNEL AND BUGKGS2.FISC_YR_PD = BUGKGS1.FISC_YR_PD) as SE_GSV_TYPE
	
		FROM KNA_SC.STG.KSOP_MIX_SE1_GSVPD BUGKGS1
		LEFT JOIN KNA_SC.[STG].[KSOP_MIX_MATRL] M on M.MATRL_NBR = BUGKGS1.MATRL_NBR
	) BUGKGS;
	
	IF OBJECT_ID(N'STG.KSOP_MIX_SE1_GSVPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_SE1_GSVPD;

---------
	
/***************************************************************************************************
	6	-	MERGE ACTUALS, CONSENSUS FORECAST , TPM FORECAST , BUDGET DATA INTO SINGLE TABLE AS A FULL JOIN
****************************************************************************************************/

---ACTUALS & FORECAST MERGE
SELECT
DISTINCT
	CASE 
	WHEN len(ACTL.MATRL_NBR) > 0
		THEN ACTL.MATRL_NBR
	WHEN len(CONS_FCST.MATRL_NBR) > 0
		THEN CONS_FCST.MATRL_NBR
	ELSE ''
	END AS MATRL_NBR,

	CASE 
	WHEN len(ACTL.BU) > 0
		THEN ACTL.BU
	WHEN len(CONS_FCST.BU) > 0
		THEN CONS_FCST.BU
	ELSE ''
	END AS BU,

	CASE 
	WHEN len(ACTL.CHANNEL ) > 0
		THEN ACTL.CHANNEL 
	WHEN len(CONS_FCST.CHANNEL) > 0
		THEN CONS_FCST.CHANNEL
	ELSE ''
	END AS CHANNEL,

	CASE 
	WHEN len(ACTL.FISC_YR_PD) > 0
		THEN ACTL.FISC_YR_PD
	WHEN len(CONS_FCST.FISC_YR_PD) > 0
		THEN CONS_FCST.FISC_YR_PD
	ELSE ''
	END AS FISC_YR_PD ,

ACTL.PREV_FISC_YR_PD,
ACTL.COUNTRY,
ACTL.BRAND,
ACTL.ANAPLAN_BRAND,
ACTL.TYPE,
ACTL.ACT_SAL_CASES,
ACTL.ACT_SAL_KGS,
ACTL.ACT_SAL_LBS,
ACTL.ACT_SAL_GSV,
ACTL.ACT_SAL_COP,

ACTL.ACTL_GSV_BU,
ACTL.ACTL_GSV_CATE,
ACTL.ACTL_GSV_ANA_BRAN,
ACTL.ACTL_GSV_CHAN,
ACTL.ACTL_GSV_BRAN,
ACTL.ACTL_GSV_TYPE,

ACTL.ACTL_KGS_BU,
ACTL.ACTL_KGS_CATE,
ACTL.ACTL_KGS_ANA_BRAN,
ACTL.ACTL_KGS_CHAN,
ACTL.ACTL_KGS_BRAN,
ACTL.ACTL_KGS_TYPE,

ACTL.ACTL_COP_BU,
ACTL.ACTL_COP_CATE,
ACTL.ACTL_COP_ANA_BRAN,
ACTL.ACTL_COP_CHAN,
ACTL.ACTL_COP_BRAN,
ACTL.ACTL_COP_TYPE,

ACTL.PREV_ACT_SAL_CASES,
ACTL.PREV_ACT_SAL_KGS,
ACTL.PREV_ACT_SAL_LBS,
ACTL.PREV_ACT_SAL_GSV,
ACTL.PREV_ACT_SAL_COP,

ACTL.PREV_ACTL_GSV_BU,
ACTL.PREV_ACTL_GSV_CATE,
ACTL.PREV_ACTL_GSV_ANA_BRAN,
ACTL.PREV_ACTL_GSV_CHAN,
ACTL.PREV_ACTL_GSV_BRAN,
ACTL.PREV_ACTL_GSV_TYPE,

ACTL.PREV_ACTL_KGS_BU,
ACTL.PREV_ACTL_KGS_CATE,
ACTL.PREV_ACTL_KGS_ANA_BRAN,
ACTL.PREV_ACTL_KGS_CHAN,
ACTL.PREV_ACTL_KGS_BRAN,
ACTL.PREV_ACTL_KGS_TYPE,

ACTL.PREV_ACTL_COP_BU,
ACTL.PREV_ACTL_COP_CATE,
ACTL.PREV_ACTL_COP_ANA_BRAN,
ACTL.PREV_ACTL_COP_CHAN,
ACTL.PREV_ACTL_COP_BRAN,
ACTL.PREV_ACTL_COP_TYPE,

CONS_FCST.FORE_PD_CS,
CONS_FCST.FORE_PD_GSV,
CONS_FCST.FORE_PD_KGS,
CONS_FCST.FORE_PD_LBS,
CONS_FCST.FORE_PD_COP,
CONS_FCST.CURR_VRSN,
CONS_FCST.PREV_VRSN,

CONS_FCST.CONS_FCST_GSV_BU,
CONS_FCST.CONS_FCST_GSV_CATE,
CONS_FCST.CONS_FCST_GSV_ANA_BRAN,
CONS_FCST.CONS_FCST_GSV_CHAN,
CONS_FCST.CONS_FCST_GSV_BRAN,
CONS_FCST.CONS_FCST_GSV_TYPE,

CONS_FCST.CONS_FCST_KGS_BU,
CONS_FCST.CONS_FCST_KGS_CATE,
CONS_FCST.CONS_FCST_KGS_ANA_BRAN,
CONS_FCST.CONS_FCST_KGS_CHAN,
CONS_FCST.CONS_FCST_KGS_BRAN,
CONS_FCST.CONS_FCST_KGS_TYPE,

CONS_FCST.CONS_FCST_COP_BU,
CONS_FCST.CONS_FCST_COP_CATE,
CONS_FCST.CONS_FCST_COP_ANA_BRAN,
CONS_FCST.CONS_FCST_COP_CHAN,
CONS_FCST.CONS_FCST_COP_BRAN,
CONS_FCST.CONS_FCST_COP_TYPE,

CONS_FCST.PREV_FORE_PD_CS,
CONS_FCST.PREV_FORE_PD_GSV,
CONS_FCST.PREV_FORE_PD_KGS,
CONS_FCST.PREV_FORE_PD_LBS,
CONS_FCST.PREV_FORE_PD_COP,

CONS_FCST.PREV_CONS_FCST_GSV_BU,
CONS_FCST.PREV_CONS_FCST_GSV_CATE,
CONS_FCST.PREV_CONS_FCST_GSV_ANA_BRAN,
CONS_FCST.PREV_CONS_FCST_GSV_CHAN,
CONS_FCST.PREV_CONS_FCST_GSV_BRAN,
CONS_FCST.PREV_CONS_FCST_GSV_TYPE,

CONS_FCST.PREV_CONS_FCST_KGS_BU,
CONS_FCST.PREV_CONS_FCST_KGS_CATE,
CONS_FCST.PREV_CONS_FCST_KGS_ANA_BRAN,
CONS_FCST.PREV_CONS_FCST_KGS_CHAN,
CONS_FCST.PREV_CONS_FCST_KGS_BRAN,
CONS_FCST.PREV_CONS_FCST_KGS_TYPE,

CONS_FCST.PREV_CONS_FCST_COP_BU,
CONS_FCST.PREV_CONS_FCST_COP_CATE,
CONS_FCST.PREV_CONS_FCST_COP_ANA_BRAN,
CONS_FCST.PREV_CONS_FCST_COP_CHAN,
CONS_FCST.PREV_CONS_FCST_COP_BRAN,
CONS_FCST.PREV_CONS_FCST_COP_TYPE,


ACTL.TPM_FORE_CASES,
ACTL.TPM_FORE_LBS,
ACTL.TPM_FORE_KGS,
ACTL.TPM_FORE_GSV,
ACTL.TPM_LE_KMF,
ACTL.TPM_FORE_COP,

ACTL.TPM_KGS_BU,
ACTL.TPM_KGS_CATE, 
ACTL.TPM_KGS_ANA_BRAN, 
ACTL.TPM_KGS_CHAN,
ACTL.TPM_KGS_BRAN,
ACTL.TPM_KGS_TYPE ,

ACTL.TPM_GSV_BU,
ACTL.TPM_GSV_CATE,  
ACTL.TPM_GSV_ANA_BRAN, 
ACTL.TPM_GSV_CHAN,
ACTL.TPM_GSV_BRAN,
ACTL.TPM_GSV_TYPE ,

ACTL.TPM_COP_BU,
ACTL.TPM_COP_CATE,  
ACTL.TPM_COP_ANA_BRAN, 
ACTL.TPM_COP_CHAN,
ACTL.TPM_COP_BRAN,
ACTL.TPM_COP_TYPE 

INTO #KSOP_MIX_ACTCONTPM
-- SELECT * 
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL WITH (NOLOCK)
FULL JOIN KNA_SC.STG.KSOP_MIX_FCST CONS_FCST WITH (NOLOCK)
ON ACTL.MATRL_NBR = CONS_FCST.MATRL_NBR
AND ACTL.FISC_YR_PD = CONS_FCST.FISC_YR_PD
AND ACTL.CHANNEL  = CONS_FCST.CHANNEL
--WHERE ACTL.TYPE = 'Pringles Crisps L Tray' AND ACTL.FISC_YR_PD = '2018004' AND ACTL.CHANNEL = '01'
;

UPDATE A
SET A.COUNTRY = M.COUNTRY
FROM #KSOP_MIX_ACTCONTPM A 
INNER JOIN KNA_SC.STG.KSOP_MIX_MATRL M WITH (NOLOCK)
on M.MATRL_NBR = A.MATRL_NBR
WHERE A.COUNTRY IS NULL AND A.MATRL_NBR IS NOT NULL;

---BUDGET MERGE - BUD
SELECT 
DISTINCT
	CASE 
	WHEN len(BUD_KGS.MATRL_NBR) > 0
		THEN BUD_KGS.MATRL_NBR
	WHEN len(BUD_GSV.MATRL_NBR) > 0
		THEN BUD_GSV.MATRL_NBR
	ELSE ''
	END AS MATRL_NBR,
	CASE 
	WHEN len(BUD_KGS.CHANNEL) > 0
		THEN BUD_KGS.CHANNEL
	WHEN len(BUD_GSV.CHANNEL) > 0
		THEN BUD_GSV.CHANNEL
	ELSE ''
	END AS BUD_CHANNEL,
	CASE 
	WHEN len(BUD_KGS.FISC_YR_PD) > 0
		THEN BUD_KGS.FISC_YR_PD
	WHEN len(BUD_GSV.FISC_YR_PD) > 0
		THEN BUD_GSV.FISC_YR_PD 
	ELSE ''
	END AS BUD_FISC_YR_PD ,
	CASE 
	WHEN len(BUD_KGS.PREV_FISC_YR_PD) > 0
		THEN BUD_KGS.PREV_FISC_YR_PD
	--WHEN len(BUD_GSV.PREV_FISC_YR_PD) > 0
	--	THEN BUD_GSV.PREV_FISC_YR_PD 
	ELSE ''
	END AS BUD_PREV_FISC_YR_PD ,
	CASE 
	WHEN len(BUD_KGS.BU) > 0
		THEN BUD_KGS.BU
	WHEN len(BUD_GSV.BU) > 0
		THEN BUD_GSV.BU 
	ELSE ''
	END AS BU,
BUD_KGS.BUDGET_VAL AS BUD_KGS_BUDGET_VAL,
BUD_KGS.PREV_BUDGET_VAL AS BUD_KGS_PREV_BUDGET_VAL,
BUD_KGS.BUDGET_COP AS BUD_KGS_COP_VAL,

BUD_KGS.BUD_KGS_BU,
BUD_KGS.BUD_KGS_BRAND, 
BUD_KGS.BUD_KGS_CATEGORY, 
BUD_KGS.BUD_KGS_ANA_BRAN, 
BUD_KGS.BUD_KGS_CHANNEL, 
BUD_KGS.BUD_KGS_TYPE, 

BUD_KGS.BUD_COP_BU,
BUD_KGS.BUD_COP_BRAND, 
BUD_KGS.BUD_COP_CATEGORY, 
BUD_KGS.BUD_COP_ANA_BRAN, 
BUD_KGS.BUD_COP_CHANNEL, 
BUD_KGS.BUD_COP_TYPE, 

BUD_GSV.BUDGET_VAL AS BUD_GSV_BUDGET_VAL,
--BUD_GSV.PREV_BUDGET_VAL AS BUD_GSV_PREV_BUDGET_VAL,
null  AS BUD_GSV_PREV_BUDGET_VAL,

BUD_GSV.BUD_GSV_BU,
BUD_GSV.BUD_GSV_BRAND, 
BUD_GSV.BUD_GSV_CATEGORY,
BUD_GSV.BUD_GSV_ANA_BRAN,  
BUD_GSV.BUD_GSV_CHANNEL, 
BUD_GSV.BUD_GSV_TYPE

INTO #KSOP_MIX_BUD 
FROM KNA_SC.STG.KSOP_MIX_BUD_KGSPD BUD_KGS WITH (NOLOCK)
FULL JOIN KNA_SC.STG.KSOP_MIX_BU_GSVPD BUD_GSV WITH (NOLOCK)
ON BUD_KGS.MATRL_NBR = BUD_GSV.MATRL_NBR
AND BUD_KGS.FISC_YR_PD = BUD_GSV.FISC_YR_PD
AND BUD_KGS.CHANNEL = BUD_GSV.CHANNEL;

---BUDGET MERGE	- SE
SELECT 
DISTINCT
	CASE 
	WHEN len(SE_KGS.MATRL_NBR) > 0
		THEN SE_KGS.MATRL_NBR
	WHEN len(SE_GSV.MATRL_NBR) > 0
		THEN SE_GSV.MATRL_NBR
	ELSE ''
	END AS MATRL_NBR,
	CASE 
	WHEN len(SE_KGS.CHANNEL) > 0
		THEN SE_KGS.CHANNEL
	WHEN len(SE_GSV.CHANNEL) > 0
		THEN SE_GSV.CHANNEL
	ELSE ''
	END AS SE_CHANNEL,
	CASE 
	WHEN len(SE_KGS.FISC_YR_PD) > 0
		THEN SE_KGS.FISC_YR_PD
	WHEN len(SE_GSV.FISC_YR_PD) > 0
		THEN SE_GSV.FISC_YR_PD 
	ELSE ''
	END AS SE_FISC_YR_PD ,
--	CASE 
	--WHEN len(SE_KGS.PREV_FISC_YR_PD) > 0
	--	THEN SE_KGS.PREV_FISC_YR_PD
	--WHEN len(SE_GSV.PREV_FISC_YR_PD) > 0
	--	THEN SE_GSV.PREV_FISC_YR_PD 
	--ELSE ''
	--END AS SE_PREV_FISC_YR_PD ,
	CASE 
	WHEN len(SE_KGS.BU) > 0
		THEN SE_KGS.BU
	WHEN len(SE_GSV.BU) > 0
		THEN SE_GSV.BU 
	ELSE ''
	END AS BU,

SE_KGS.SE_VAL as SE_KGS_BUDGET_VAL,
SE_GSV.SE_VAL AS SE_GSV_BUDGET_VAL,
SE_GSV.PREV_BUDGET_VAL AS SE_GSV_PREV_BUDGET_VAL,
SE_KGS.BUDGET_COP AS SE_KGS_COP_VAL,

SE_KGS.BUD_KGS_BU,
SE_KGS.BUD_KGS_BRAND, 
SE_KGS.BUD_KGS_CATEGORY,  
SE_KGS.BUD_KGS_ANA_BRAN,
SE_KGS.BUD_KGS_CHANNEL, 
SE_KGS.BUD_KGS_TYPE, 

SE_KGS.BUD_COP_BU,
SE_KGS.BUD_COP_BRAND, 
SE_KGS.BUD_COP_CATEGORY,  
SE_KGS.BUD_COP_ANA_BRAN,
SE_KGS.BUD_COP_CHANNEL, 
SE_KGS.BUD_COP_TYPE, 

SE_GSV.SE_GSV_BU,
SE_GSV.SE_GSV_BRAND, 
SE_GSV.SE_GSV_CATEGORY,  
SE_GSV.SE_GSV_ANA_BRAN,
SE_GSV.SE_GSV_CHANNEL, 
SE_GSV.SE_GSV_TYPE

INTO #KSOP_MIX_SE 
FROM KNA_SC.STG.KSOP_MIX_SE1_KGSPD SE_KGS WITH (NOLOCK)
FULL JOIN KNA_SC.STG.KSOP_MIX_SE_GSVPD SE_GSV WITH (NOLOCK)
ON SE_KGS.MATRL_NBR = SE_GSV.MATRL_NBR
AND SE_KGS.FISC_YR_PD = SE_GSV.FISC_YR_PD
AND SE_KGS.CHANNEL = SE_GSV.CHANNEL;

---BUDGET MERGE - Both BUD and SE Merge into one BUD
SELECT 
DISTINCT
	CASE 
	WHEN len(BUD.MATRL_NBR) > 0
		THEN BUD.MATRL_NBR
	WHEN len(SE.MATRL_NBR) > 0
		THEN SE.MATRL_NBR
	ELSE ''
	END AS MATRL_NBR,
	CASE 
	WHEN len(BUD.BUD_CHANNEL) > 0
		THEN BUD.BUD_CHANNEL
	WHEN len(SE.SE_CHANNEL) > 0
		THEN SE.SE_CHANNEL
	ELSE ''
	END AS BUD_CHANNEL,
	CASE 
	WHEN len(BUD.BUD_FISC_YR_PD) > 0
		THEN BUD.BUD_FISC_YR_PD
	WHEN len(SE.SE_FISC_YR_PD) > 0
		THEN SE.SE_FISC_YR_PD 
	ELSE ''
	END AS BUD_FISC_YR_PD ,
	CASE 
	WHEN len(BUD.BUD_PREV_FISC_YR_PD) > 0
		THEN BUD.BUD_PREV_FISC_YR_PD
	ELSE ''
	END AS BUD_PREV_FISC_YR_PD ,
	CASE 
	WHEN len(BUD.BU) > 0
		THEN BUD.BU
	WHEN len(SE.BU) > 0
		THEN SE.BU 
	ELSE ''
	END AS BU,
BUD.BUD_KGS_BUDGET_VAL AS BUD_KGS_BUDGET_VAL,
BUD.BUD_KGS_PREV_BUDGET_VAL AS BUD_KGS_PREV_BUDGET_VAL,
BUD.BUD_KGS_COP_VAL AS BUD_KGS_COP_VAL,

BUD.BUD_KGS_BU,
BUD.BUD_KGS_BRAND, 
BUD.BUD_KGS_CATEGORY,  
BUD.BUD_KGS_ANA_BRAN,
BUD.BUD_KGS_CHANNEL, 
BUD.BUD_KGS_TYPE, 

BUD.BUD_COP_BU,
BUD.BUD_COP_BRAND, 
BUD.BUD_COP_CATEGORY,   
BUD.BUD_COP_ANA_BRAN,
BUD.BUD_COP_CHANNEL, 
BUD.BUD_COP_TYPE, 

BUD.BUD_GSV_BU,
BUD.BUD_GSV_BRAND, 
BUD.BUD_GSV_CATEGORY,  
BUD.BUD_GSV_ANA_BRAN, 
BUD.BUD_GSV_CHANNEL, 
BUD.BUD_GSV_TYPE, 

BUD.BUD_GSV_BUDGET_VAL,
SE.SE_KGS_BUDGET_VAL,
SE.SE_GSV_BUDGET_VAL AS SE_GSV_BUDGET_VAL,
SE.SE_KGS_COP_VAL AS SE_KGS_COP_VAL,

SE.BUD_KGS_BU as SE_KGS_BU,
SE.BUD_KGS_BRAND as SE_KGS_BRAND, 
SE.BUD_KGS_CATEGORY as SE_KGS_CATEGORY,  
SE.BUD_KGS_ANA_BRAN as SE_KGS_ANA_BRAN,
SE.BUD_KGS_CHANNEL as SE_KGS_CHANNEL,
SE.BUD_KGS_TYPE as SE_KGS_TYPE, 

SE.BUD_COP_BU as SE_COP_BU,
SE.BUD_COP_BRAND as SE_COP_BRAND, 
SE.BUD_COP_CATEGORY as SE_COP_CATEGORY,   
SE.BUD_COP_ANA_BRAN as SE_COP_ANA_BRAN,
SE.BUD_COP_CHANNEL as SE_COP_CHANNEL, 
SE.BUD_COP_TYPE  as SE_COP_TYPE, 

SE.SE_GSV_BU,
SE.SE_GSV_BRAND, 
SE.SE_GSV_CATEGORY,  
SE.SE_GSV_ANA_BRAN, 
SE.SE_GSV_CHANNEL, 
SE.SE_GSV_TYPE

INTO #KSOP_MIX_BUD_FNL 
FROM #KSOP_MIX_BUD BUD
FULL JOIN #KSOP_MIX_SE SE
ON BUD.MATRL_NBR = SE.MATRL_NBR
AND BUD.BUD_FISC_YR_PD = SE.SE_FISC_YR_PD
AND BUD.BUD_CHANNEL = SE.SE_CHANNEL;


--- BOTH TABLE MERGE  (Actuals and combined Budgets)

SELECT  
DISTINCT
CASE 
	WHEN len(A.MATRL_NBR) > 0
		THEN A.MATRL_NBR
	WHEN len(B.MATRL_NBR) > 0
		THEN B.MATRL_NBR
	ELSE ''
	END AS MATRL_NBR,

	CASE 
	WHEN len(A.BU) > 0
		THEN A.BU
	WHEN len(B.BU) > 0
		THEN B.BU
	
	ELSE ''
	END AS BU,

	CASE 
	WHEN len(A.CHANNEL) > 0
		THEN A.CHANNEL 
	WHEN len(B.BUD_CHANNEL) > 0
		THEN B.BUD_CHANNEL
	ELSE ''
	END AS CHANNEL,

	CASE 
	WHEN len(A.FISC_YR_PD) > 0
		THEN A.FISC_YR_PD
	WHEN len(B.BUD_FISC_YR_PD) > 0
		THEN B.BUD_FISC_YR_PD
	ELSE ''
	END AS FISC_YR_PD ,

	CASE 
	WHEN len(A.PREV_FISC_YR_PD) > 0
		THEN A.PREV_FISC_YR_PD
	WHEN len(B.BUD_PREV_FISC_YR_PD) > 0
		THEN B.BUD_PREV_FISC_YR_PD
	ELSE ''
	END AS PREV_FISC_YR_PD

	  ,A.COUNTRY
	  ,A.BRAND
	  ,A.ANAPLAN_BRAND
      ,A.[ACT_SAL_CASES]
      ,A.[ACT_SAL_KGS]
      ,A.[ACT_SAL_LBS]
      ,A.[ACT_SAL_GSV]
      ,A.[ACT_SAL_COP]
      ,A.[ACTL_GSV_BU]
      ,A.[ACTL_GSV_CATE]
      ,A.[ACTL_GSV_ANA_BRAN]
      ,A.[ACTL_GSV_CHAN]
      ,A.[ACTL_GSV_BRAN]
      ,A.[ACTL_GSV_TYPE]
      ,A.[ACTL_KGS_BU]
      ,A.[ACTL_KGS_CATE]
      ,A.[ACTL_KGS_ANA_BRAN]
      ,A.[ACTL_KGS_CHAN]
      ,A.[ACTL_KGS_BRAN]
      ,A.[ACTL_KGS_TYPE]
      ,A.[ACTL_COP_BU]
      ,A.[ACTL_COP_CATE]
      ,A.[ACTL_COP_ANA_BRAN]
      ,A.[ACTL_COP_CHAN]
      ,A.[ACTL_COP_BRAN]
      ,A.[ACTL_COP_TYPE]

      ,A.[PREV_ACT_SAL_CASES]
      ,A.[PREV_ACT_SAL_KGS]
      ,A.[PREV_ACT_SAL_LBS]
      ,A.[PREV_ACT_SAL_GSV]
      ,A.[PREV_ACT_SAL_COP]
      ,A.[PREV_ACTL_GSV_BU]
      ,A.[PREV_ACTL_GSV_CATE]
      ,A.[PREV_ACTL_GSV_ANA_BRAN]
      ,A.[PREV_ACTL_GSV_CHAN]
      ,A.[PREV_ACTL_GSV_BRAN]
      ,A.[PREV_ACTL_GSV_TYPE]
      ,A.[PREV_ACTL_KGS_BU]
      ,A.[PREV_ACTL_KGS_CATE]
      ,A.[PREV_ACTL_KGS_ANA_BRAN]
      ,A.[PREV_ACTL_KGS_CHAN]
      ,A.[PREV_ACTL_KGS_BRAN]
      ,A.[PREV_ACTL_KGS_TYPE]
      ,A.[PREV_ACTL_COP_BU]
      ,A.[PREV_ACTL_COP_CATE]
      ,A.[PREV_ACTL_COP_ANA_BRAN]
      ,A.[PREV_ACTL_COP_CHAN]
      ,A.[PREV_ACTL_COP_BRAN]
      ,A.[PREV_ACTL_COP_TYPE]

      ,A.[FORE_PD_CS]
      ,A.[FORE_PD_GSV]
      ,A.[FORE_PD_KGS]
      ,A.[FORE_PD_LBS]
      ,A.[FORE_PD_COP]
	  ,A.[CURR_VRSN]
	  ,A.[PREV_VRSN]

      ,A.[CONS_FCST_GSV_BU]
      ,A.[CONS_FCST_GSV_CATE]
      ,A.[CONS_FCST_GSV_ANA_BRAN]
      ,A.[CONS_FCST_GSV_CHAN]
      ,A.[CONS_FCST_GSV_BRAN]
      ,A.[CONS_FCST_GSV_TYPE]
      ,A.[CONS_FCST_KGS_BU]
      ,A.[CONS_FCST_KGS_CATE]
      ,A.[CONS_FCST_KGS_ANA_BRAN]
      ,A.[CONS_FCST_KGS_CHAN]
      ,A.[CONS_FCST_KGS_BRAN]
      ,A.[CONS_FCST_KGS_TYPE]
      ,A.[CONS_FCST_COP_BU]
      ,A.[CONS_FCST_COP_CATE]
      ,A.[CONS_FCST_COP_ANA_BRAN]
      ,A.[CONS_FCST_COP_CHAN]
      ,A.[CONS_FCST_COP_BRAN]
      ,A.[CONS_FCST_COP_TYPE]

      ,A.[PREV_FORE_PD_CS]
      ,A.[PREV_FORE_PD_GSV]
      ,A.[PREV_FORE_PD_KGS]
      ,A.[PREV_FORE_PD_LBS]
      ,A.[PREV_FORE_PD_COP]
	,A.PREV_CONS_FCST_GSV_BU
	,A.PREV_CONS_FCST_GSV_CATE
	,A.PREV_CONS_FCST_GSV_ANA_BRAN
	,A.PREV_CONS_FCST_GSV_CHAN
	,A.PREV_CONS_FCST_GSV_BRAN
	,A.PREV_CONS_FCST_GSV_TYPE

	,A.PREV_CONS_FCST_KGS_BU
	,A.PREV_CONS_FCST_KGS_CATE
	,A.PREV_CONS_FCST_KGS_ANA_BRAN
	,A.PREV_CONS_FCST_KGS_CHAN
	,A.PREV_CONS_FCST_KGS_BRAN
	,A.PREV_CONS_FCST_KGS_TYPE

	,A.PREV_CONS_FCST_COP_BU
	,A.PREV_CONS_FCST_COP_CATE
	,A.PREV_CONS_FCST_COP_ANA_BRAN
	,A.PREV_CONS_FCST_COP_CHAN
	,A.PREV_CONS_FCST_COP_BRAN
	,A.PREV_CONS_FCST_COP_TYPE
      ,A.[TPM_FORE_CASES]
      ,A.[TPM_FORE_LBS]
      ,A.[TPM_FORE_KGS]
      ,A.[TPM_FORE_GSV]
      ,A.[TPM_LE_KMF]
      ,A.[TPM_FORE_COP]
	  ,A.TPM_KGS_BU
	  ,A.TPM_KGS_CATE 
	  ,A.TPM_KGS_ANA_BRAN 
	  ,A.TPM_KGS_CHAN
	  ,A.TPM_KGS_BRAN
	  ,A.TPM_KGS_TYPE 
	  ,A.TPM_COP_BU
	  ,A.TPM_COP_CATE 
	  ,A.TPM_COP_ANA_BRAN 
	  ,A.TPM_COP_CHAN
	  ,A.TPM_COP_BRAN
	  ,A.TPM_COP_TYPE 
	  ,A.TPM_GSV_BU
	  ,A.TPM_GSV_CATE 
	  ,A.TPM_GSV_ANA_BRAN 
	  ,A.TPM_GSV_CHAN
	  ,A.TPM_GSV_BRAN
	  ,A.TPM_GSV_TYPE 
	  	  
	  ,B.BUD_KGS_BUDGET_VAL
	  ,B.BUD_KGS_COP_VAL
	  ,B.BUD_KGS_BU, B.BUD_KGS_BRAND, B.BUD_KGS_ANA_BRAN, B.BUD_KGS_CATEGORY, B.BUD_KGS_CHANNEL, B.BUD_KGS_TYPE
	  ,B.BUD_COP_BU, B.BUD_COP_BRAND, B.BUD_COP_ANA_BRAN, B.BUD_COP_CATEGORY, B.BUD_COP_CHANNEL, B.BUD_COP_TYPE
	  ,B.BUD_GSV_BU, B.BUD_GSV_BRAND, B.BUD_GSV_ANA_BRAN, B.BUD_GSV_CATEGORY, B.BUD_GSV_CHANNEL, B.BUD_GSV_TYPE
	  ,B.SE_KGS_BUDGET_VAL
	  ,B.SE_GSV_BUDGET_VAL 
	  ,B.BUD_GSV_BUDGET_VAL
	  ,B.SE_KGS_BU, B.SE_KGS_BRAND, B.SE_KGS_ANA_BRAN, B.SE_KGS_CATEGORY, B.SE_KGS_CHANNEL, B.SE_KGS_TYPE
	  ,B.SE_COP_BU, B.SE_COP_BRAND, B.SE_COP_ANA_BRAN, B.SE_COP_CATEGORY, B.SE_COP_CHANNEL, B.SE_COP_TYPE
	  ,B.SE_GSV_BU, B.SE_GSV_BRAND, B.SE_GSV_ANA_BRAN, B.SE_GSV_CATEGORY, B.SE_GSV_CHANNEL, B.SE_GSV_TYPE
	  ,B.SE_KGS_COP_VAL
	  ,CAST(NULL AS VARCHAR(20)) AS CHANNEL_DESC
INTO #KSOP_MIX_HALF
FROM #KSOP_MIX_ACTCONTPM A 
FULL JOIN #KSOP_MIX_BUD_FNL B  
ON A.MATRL_NBR = B.MATRL_NBR
AND A.FISC_YR_PD = B.BUD_FISC_YR_PD
AND A.CHANNEL  = B.BUD_CHANNEL ;

/*
SELECT  BU, CHANNEL, BRAND, FISC_YR_PD, SUM(ACT_SAL_GSV)
FROM #KSOP_MIX_HALF ACTL
WHERE  ACTL.BU = 'Snacks' and ACTL.CHANNEL = '01' and ACTL.FISC_YR_PD = '2017004'  AND ACTL.BRAND like 'Fudge Shoppe M%'
GROUP BY BU, CHANNEL, BRAND, FISC_YR_PD

SELECT ACTL.MATRL_NBR, ACTL.BU, ACTL.TYPE, ACTL.CHANNEL, ACTL.FISC_YR_PD, ACTL.ACT_SAL_GSV
FROM KNA_SC.STG.KSOP_MIX_ACTL ACTL 
FULL JOIN KNA_SC.STG.KSOP_MIX_FCST CONS_FCST
ON ACTL.MATRL_NBR = CONS_FCST.MATRL_NBR
AND ACTL.FISC_YR_PD = CONS_FCST.FISC_YR_PD
AND ACTL.CHANNEL  = CONS_FCST.CHANNEL
WHERE  ACTL.BU = 'Snacks' and ACTL.CHANNEL = '01' and ACTL.FISC_YR_PD = '2017004'  AND ACTL.TYPE like 'Fudge Shoppe M%';

SELECT *
FROM #KSOP_MIX_ACTCONTPM ACTL
WHERE  ACTL.BU = 'Snacks' and ACTL.CHANNEL = '01' and ACTL.FISC_YR_PD = '2017004'  AND ACTL.BRAND like 'Fudge Shoppe%';


*/

UPDATE #KSOP_MIX_HALF 
SET #KSOP_MIX_HALF.CHANNEL_DESC = CHAN.KTEXT 
FROM KNA_ECC.dbo.T151T CHAN 
WHERE CHAN.SPRAS='E' AND #KSOP_MIX_HALF.CHANNEL = CHAN.KDGRP;

UPDATE H
SET H.COUNTRY = M.COUNTRY
FROM #KSOP_MIX_HALF H
INNER JOIN KNA_SC.STG.KSOP_MIX_MATRL M
on M.MATRL_NBR = H.MATRL_NBR
WHERE H.COUNTRY IS NULL AND H.MATRL_NBR IS NOT NULL;

UPDATE H
SET H.BRAND = M.BRAND
FROM #KSOP_MIX_HALF H
INNER JOIN KNA_SC.STG.KSOP_MIX_MATRL M
on M.MATRL_NBR = H.MATRL_NBR
WHERE H.BRAND IS NULL AND H.MATRL_NBR IS NOT NULL;

/*********************************************************************************************************
	7	-	MERGE WITH BASE - MATERIAL  and replace all the original material number partf of the above data set
**********************************************************************************************************/
---------DELETE THE records for the BU in process; So no duplicate added

DELETE FROM KNA_SC.STG.KSOP_MIX_FULL_STG 
WHERE BU = (SELECT CASE WHEN BU = 'MF' THEN 'Morning Foods' ELSE BU END as BU FROM (SELECT DISTINCT TOP 1 BU as BU FROM #KSOP_MIX_HALF) M) 

---------------


INSERT INTO KNA_SC.STG.KSOP_MIX_FULL_STG
(
[MATRL_DESC]
      ,[Category]
      ,[SUB_BRAND]
      ,[Type]
      ,[SUB_TYPE]
      ,[NET_WGT_LBS]
      ,[NET_WGT_KGS]
      ,[PRC]
      ,[PROD_HIER]
      ,[PROD_HIER_DESC]
      ,[COST_OF_PROD]
      ,[LOAD_DT]
      ,[MATRL_NBR]
      ,[BU]
      ,[CHANNEL]
      ,[FISC_YR_PD]
      ,[PREV_FISC_YR_PD]
      ,[COUNTRY]
      ,[BRAND]
      ,[ANAPLAN_BRAND]
      ,[ACT_SAL_CASES]
      ,[ACT_SAL_KGS]
      ,[ACT_SAL_LBS]
      ,[ACT_SAL_GSV]
      ,[ACT_SAL_COP]
      ,[ACTL_GSV_BU]
      ,[ACTL_GSV_CATE]
      ,[ACTL_GSV_ANA_BRAN]
      ,[ACTL_GSV_CHAN]
      ,[ACTL_GSV_BRAN]
      ,[ACTL_GSV_TYPE]
      ,[ACTL_KGS_BU]
      ,[ACTL_KGS_CATE]
      ,[ACTL_KGS_ANA_BRAN]
      ,[ACTL_KGS_CHAN]
      ,[ACTL_KGS_BRAN]
      ,[ACTL_KGS_TYPE]
      ,[ACTL_COP_BU]
      ,[ACTL_COP_CATE]
      ,[ACTL_COP_ANA_BRAN]
      ,[ACTL_COP_CHAN]
      ,[ACTL_COP_BRAN]
      ,[ACTL_COP_TYPE]
      ,[PREV_ACT_SAL_CASES]
      ,[PREV_ACT_SAL_KGS]
      ,[PREV_ACT_SAL_LBS]
      ,[PREV_ACT_SAL_GSV]
      ,[PREV_ACT_SAL_COP]
      ,[PREV_ACTL_GSV_BU]
      ,[PREV_ACTL_GSV_CATE]
      ,[PREV_ACTL_GSV_ANA_BRAN]
      ,[PREV_ACTL_GSV_CHAN]
      ,[PREV_ACTL_GSV_BRAN]
      ,[PREV_ACTL_GSV_TYPE]
      ,[PREV_ACTL_KGS_BU]
      ,[PREV_ACTL_KGS_CATE]
      ,[PREV_ACTL_KGS_ANA_BRAN]
      ,[PREV_ACTL_KGS_CHAN]
      ,[PREV_ACTL_KGS_BRAN]
      ,[PREV_ACTL_KGS_TYPE]
      ,[PREV_ACTL_COP_BU]
      ,[PREV_ACTL_COP_CATE]
      ,[PREV_ACTL_COP_ANA_BRAN]
      ,[PREV_ACTL_COP_CHAN]
      ,[PREV_ACTL_COP_BRAN]
      ,[PREV_ACTL_COP_TYPE]
      ,[FORE_PD_CS]
      ,[FORE_PD_GSV]
      ,[FORE_PD_KGS]
      ,[FORE_PD_LBS]
      ,[FORE_PD_COP]
      ,[CURR_VRSN]
      ,[PREV_VRSN]
      ,[CONS_FCST_GSV_BU]
      ,[CONS_FCST_GSV_CATE]
      ,[CONS_FCST_GSV_ANA_BRAN]
      ,[CONS_FCST_GSV_CHAN]
      ,[CONS_FCST_GSV_BRAN]
      ,[CONS_FCST_GSV_TYPE]
      ,[CONS_FCST_KGS_BU]
      ,[CONS_FCST_KGS_CATE]
      ,[CONS_FCST_KGS_ANA_BRAN]
      ,[CONS_FCST_KGS_CHAN]
      ,[CONS_FCST_KGS_BRAN]
      ,[CONS_FCST_KGS_TYPE]
      ,[CONS_FCST_COP_BU]
      ,[CONS_FCST_COP_CATE]
      ,[CONS_FCST_COP_ANA_BRAN]
      ,[CONS_FCST_COP_CHAN]
      ,[CONS_FCST_COP_BRAN]
      ,[CONS_FCST_COP_TYPE]
      ,[PREV_FORE_PD_CS]
      ,[PREV_FORE_PD_GSV]
      ,[PREV_FORE_PD_KGS]
      ,[PREV_FORE_PD_LBS]
      ,[PREV_FORE_PD_COP]
      ,[PREV_CONS_FCST_GSV_BU]
      ,[PREV_CONS_FCST_GSV_CATE]
      ,[PREV_CONS_FCST_GSV_ANA_BRAN]
      ,[PREV_CONS_FCST_GSV_CHAN]
      ,[PREV_CONS_FCST_GSV_BRAN]
      ,[PREV_CONS_FCST_GSV_TYPE]
      ,[PREV_CONS_FCST_KGS_BU]
      ,[PREV_CONS_FCST_KGS_CATE]
      ,[PREV_CONS_FCST_KGS_ANA_BRAN]
      ,[PREV_CONS_FCST_KGS_CHAN]
      ,[PREV_CONS_FCST_KGS_BRAN]
      ,[PREV_CONS_FCST_KGS_TYPE]
      ,[PREV_CONS_FCST_COP_BU]
      ,[PREV_CONS_FCST_COP_CATE]
      ,[PREV_CONS_FCST_COP_ANA_BRAN]
      ,[PREV_CONS_FCST_COP_CHAN]
      ,[PREV_CONS_FCST_COP_BRAN]
      ,[PREV_CONS_FCST_COP_TYPE]
      ,[TPM_FORE_CASES]
      ,[TPM_FORE_LBS]
      ,[TPM_FORE_KGS]
      ,[TPM_FORE_GSV]
      ,[TPM_LE_KMF]
      ,[TPM_FORE_COP]
      ,[TPM_KGS_BU]
      ,[TPM_KGS_CATE]
      ,[TPM_KGS_ANA_BRAN]
      ,[TPM_KGS_CHAN]
      ,[TPM_KGS_BRAN]
      ,[TPM_KGS_TYPE]
      ,[TPM_COP_BU]
      ,[TPM_COP_CATE]
      ,[TPM_COP_ANA_BRAN]
      ,[TPM_COP_CHAN]
      ,[TPM_COP_BRAN]
      ,[TPM_COP_TYPE]
      ,[TPM_GSV_BU]
      ,[TPM_GSV_CATE]
      ,[TPM_GSV_ANA_BRAN]
      ,[TPM_GSV_CHAN]
      ,[TPM_GSV_BRAN]
      ,[TPM_GSV_TYPE]
      ,[BUD_KGS_BUDGET_VAL]
      ,[BUD_KGS_COP_VAL]
      ,[BUD_KGS_BU]
      ,[BUD_KGS_BRAND]
      ,[BUD_KGS_ANA_BRAN]
      ,[BUD_KGS_CATEGORY]
      ,[BUD_KGS_CHANNEL]
      ,[BUD_KGS_TYPE]
      ,[BUD_COP_BU]
      ,[BUD_COP_BRAND]
      ,[BUD_COP_ANA_BRAN]
      ,[BUD_COP_CATEGORY]
      ,[BUD_COP_CHANNEL]
      ,[BUD_COP_TYPE]
      ,[BUD_GSV_BU]
      ,[BUD_GSV_BRAND]
      ,[BUD_GSV_ANA_BRAN]
      ,[BUD_GSV_CATEGORY]
      ,[BUD_GSV_CHANNEL]
      ,[BUD_GSV_TYPE]
      ,[SE_KGS_BUDGET_VAL]
      ,[SE_GSV_BUDGET_VAL]
      ,[BUD_GSV_BUDGET_VAL]
      ,[SE_KGS_BU]
      ,[SE_KGS_BRAND]
      ,[SE_KGS_ANA_BRAN]
      ,[SE_KGS_CATEGORY]
      ,[SE_KGS_CHANNEL]
      ,[SE_KGS_TYPE]
      ,[SE_COP_BU]
      ,[SE_COP_BRAND]
      ,[SE_COP_ANA_BRAN]
      ,[SE_COP_CATEGORY]
      ,[SE_COP_CHANNEL]
      ,[SE_COP_TYPE]
      ,[SE_GSV_BU]
      ,[SE_GSV_BRAND]
      ,[SE_GSV_ANA_BRAN]
      ,[SE_GSV_CATEGORY]
      ,[SE_GSV_CHANNEL]
      ,[SE_GSV_TYPE]
      ,[SE_KGS_COP_VAL]
      ,[CHANNEL_DESC]
)

SELECT
DISTINCT
MAT_MAST.MATRL_DESC,
MAT_MAST.Category,
MAT_MAST.SUB_BRAND,
MAT_MAST.[Type],
MAT_MAST.SUB_TYPE,
MAT_MAST.NET_WGT_LBS,
MAT_MAST.NET_WGT_KGS,
MAT_MAST.PRC,
MAT_MAST.PROD_HIER,
MAT_MAST.PROD_HIER_DESC,
MAT_MAST.COP_CS AS COST_OF_PROD,
GETDATE() as 'LOAD_DT',
KSOP_MIX_HAL.*
--INTO KNA_SC.STG.KSOP_MIX_FULL_STG						---ONly used to first time to generate all the columns and table
FROM #KSOP_MIX_HALF KSOP_MIX_HAL
INNER JOIN KG_VIEWS.KNA.UVW_MATRL M ON M.MATRL_NBR = KSOP_MIX_HAL.MATRL_NBR AND M.MATRL_TYP = 'FERT'
LEFT OUTER JOIN KNA_SC.STG.KSOP_MIX_MATRL MAT_MAST WITH (NOLOCK)
ON KSOP_MIX_HAL.MATRL_NBR=MAT_MAST.MATRL_NBR
AND KSOP_MIX_HAL.COUNTRY = MAT_MAST.COUNTRY
WHERE KSOP_MIX_HAL.MATRL_NBR <> '000000000000000000';

--- Update missing BRAND
UPDATE MF
SET BRAND = M.BRAND
FROM KNA_SC.STG.KSOP_MIX_FULL_STG MF 
INNER JOIN [KNA_SC].[STG].[KSOP_MIX_MATRL] M
ON M.MATRL_NBR = MF.MATRL_NBR
AND MF.BRAND is null
WHERE BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);
;

--- Update missing BRAND
UPDATE MF
SET ANAPLAN_BRAND = M.ANAPLAN_BRAND
FROM KNA_SC.STG.KSOP_MIX_FULL_STG MF 
INNER JOIN [KNA_SC].[STG].[KSOP_MIX_MATRL] M
ON M.MATRL_NBR = MF.MATRL_NBR
AND MF.ANAPLAN_BRAND is null
WHERE BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

--;

--- Update missing Countries to US  (Mostly Budget entries where there are no matching Keystone materials)
UPDATE MF
SET COUNTRY = 'US'
FROM KNA_SC.STG.KSOP_MIX_FULL_STG MF 
WHERE MF.COUNTRY is NULL
AND BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);
;


---------

UPDATE KNA_SC.STG.KSOP_MIX_FULL_STG SET 
	KNA_SC.STG.KSOP_MIX_FULL_STG.PREV_ACT_SAL_CASES = CHAN.ACT_SAL_CASES ,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_KGS] = CHAN.ACT_SAL_KGS, 
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_LBS] = CHAN.ACT_SAL_LBS,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_GSV] = CHAN.ACT_SAL_GSV,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_COP] = CHAN.ACT_SAL_COP,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_BU] = CHAN.ACTL_GSV_BU,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_CATE] = CHAN.ACTL_GSV_CATE,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_CHAN] = CHAN.ACTL_GSV_CHAN,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_BRAN] = CHAN.ACTL_GSV_BRAN,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_TYPE] = CHAN.ACTL_GSV_TYPE,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_BU] = CHAN.ACTL_KGS_BU,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_CATE] = CHAN.ACTL_KGS_CATE,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_CHAN] = CHAN.ACTL_KGS_CHAN,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_BRAN] = CHAN.ACTL_KGS_BRAN,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_TYPE] = CHAN.ACTL_KGS_TYPE,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_BU] = CHAN.ACTL_COP_BU,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_CATE] = CHAN.ACTL_COP_CATE,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_CHAN] = CHAN.ACTL_COP_CHAN,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_BRAN] = CHAN.ACTL_COP_BRAN,
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_TYPE] = CHAN.ACTL_COP_TYPE,
	  KNA_SC.STG.KSOP_MIX_FULL_STG.[COUNTRY] = CHAN.COUNTRY

FROM #KSOP_MIX_HALF CHAN 
WHERE KNA_SC.STG.KSOP_MIX_FULL_STG.MATRL_NBR = CHAN.MATRL_NBR AND
	  KNA_SC.STG.KSOP_MIX_FULL_STG.CHANNEL = CHAN.CHANNEL AND
	  KNA_SC.STG.KSOP_MIX_FULL_STG.BU = CHAN.BU AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.PREV_FISC_YR_PD = CHAN.FISC_YR_PD AND
	  (KNA_SC.STG.KSOP_MIX_FULL_STG.BUD_GSV_BUDGET_VAL is NOT null
	  OR KNA_SC.STG.KSOP_MIX_FULL_STG.BUD_KGS_BUDGET_VAL IS NOT NULL) AND
	  KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_CASES] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_KGS] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_LBS] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_GSV] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACT_SAL_COP] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_BU] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_CATE] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_CHAN] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_BRAN] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_GSV_TYPE] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_BU] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_CATE] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_CHAN] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_BRAN] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_KGS_TYPE] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_BU] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_CATE] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_CHAN] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_BRAN] IS NULL AND
      KNA_SC.STG.KSOP_MIX_FULL_STG.[PREV_ACTL_COP_TYPE] IS NULL;

--  Update PREV aggregate columns for ACTAL Sales fields after New items/products are populated

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_BU] = PREV.BU_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as BU_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD
WHERE ACTL.PREV_ACTL_KGS_BU is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_BU] = PREV.BU_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as BU_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD
WHERE ACTL.PREV_ACTL_GSV_BU is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_BU] = PREV.BU_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as BU_COP_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD
WHERE ACTL.PREV_ACTL_COP_BU is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

----- CATEGORY


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_CATE] = PREV.CATG_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, Category, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as CATG_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, Category, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.Category = PREV.Category
WHERE ACTL.[PREV_ACTL_GSV_CATE] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_CATE] = PREV.CATG_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, Category, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as CATG_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, Category, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.Category = PREV.Category
WHERE ACTL.[PREV_ACTL_KGS_CATE] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_CATE] = PREV.CATG_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, Category, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as CATG_COP_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, Category, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.Category = PREV.Category
WHERE ACTL.[PREV_ACTL_COP_CATE] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

----- CHANNEL


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_CHAN] = PREV.CHAN_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as CHAN_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_GSV_CHAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_CHAN] = PREV.CHAN_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as CHAN_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_KGS_CHAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_CHAN] = PREV.CHAN_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as CHAN_COP_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, CHANNEL, BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_COP_CHAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

----- BRAND


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_BRAN] = PREV.BRAN_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY,  BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as BRAN_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY,  BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND
WHERE ACTL.[PREV_ACTL_GSV_BRAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_BRAN] = PREV.BRAN_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY,  BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as BRAN_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY,  BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND 
WHERE ACTL.[PREV_ACTL_KGS_BRAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_BRAN] = PREV.BRAN_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY,  BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as BRAN_COP_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY,  BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.BRAND = PREV.BRAND 
WHERE ACTL.[PREV_ACTL_COP_BRAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

----- TYPE


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_TYPE] = PREV.TYPE_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, Type, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as TYPE_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, CHANNEL, Type, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.Type = PREV.Type AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_GSV_TYPE] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_TYPE] = PREV.TYPE_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, Type, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as TYPE_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, CHANNEL, Type, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.Type = PREV.Type AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_KGS_TYPE] is null
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_TYPE] = PREV.TYPE_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, CHANNEL, Type, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as TYPE_COP_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, CHANNEL, Type, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.Type = PREV.Type AND ACTL.CHANNEL = PREV.CHANNEL
WHERE ACTL.[PREV_ACTL_COP_TYPE] is null
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);


----- ANA_BRAN   tweaks ---------


UPDATE ACTL
SET ACTL.[PREV_ACTL_GSV_ANA_BRAN] = PREV.CATG_GSV_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_GSV]) as CATG_GSV_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_GSV is not null 
				GROUP BY BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.ANAPLAN_BRAND = PREV.ANAPLAN_BRAND
WHERE ACTL.[PREV_ACTL_GSV_ANA_BRAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_KGS_ANA_BRAN] = PREV.CATG_KGS_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_KGS]) as CATG_KGS_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_KGS is not null 
				GROUP BY BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.ANAPLAN_BRAND = PREV.ANAPLAN_BRAND
WHERE ACTL.[PREV_ACTL_KGS_ANA_BRAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

UPDATE ACTL
SET ACTL.[PREV_ACTL_COP_ANA_BRAN] = PREV.CATG_COP_SUM
FROM KNA_SC.STG.KSOP_MIX_FULL_STG ACTL
INNER JOIN 	(SELECT BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD, SUM([PREV_ACT_SAL_COP]) as CATG_COP_SUM FROM KNA_SC.STG.KSOP_MIX_FULL_STG PREV
				WHERE  PREV_ACT_SAL_COP is not null 
				GROUP BY BU, COUNTRY, ANAPLAN_BRAND, FISC_YR_PD) PREV
ON ACTL.BU = PREV.BU AND ACTL.COUNTRY = PREV.COUNTRY AND ACTL.FISC_YR_PD = PREV.FISC_YR_PD AND ACTL.ANAPLAN_BRAND = PREV.ANAPLAN_BRAND
WHERE ACTL.[PREV_ACTL_COP_ANA_BRAN] is null 
AND ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

-------------  Upto this code above everything is related to Original SKU#  ---------------

-------------------  Added code below to populate BASE SKU# instead of the original SKU# in the target table and aggregate all the numbers
---------------------------------------------------------------------------


DELETE FROM KNA_SC.dbo.KSOP_MIX_FULL
WHERE BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1);

---------------

INSERT INTO [KNA_SC].[dbo].[KSOP_MIX_FULL] 
SELECT M_BASE.MATRL_DESC 
      ,(SELECT TOP 1 CA.CHRSTC_VAL FROM [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] CA WITH (NOLOCK)
		WHERE CA.MATRL_NBR = M_BASE.MATRL_NBR
		AND CA.CLAS= 'ALT_PROD_HIERARCHY' AND
		CA.CHRSTC_NM = 'ALT_CATEGORY')  as [Category]
      ,(SELECT TOP 1 CC.CHRSTC_VAL FROM [KG_VIEWS].[KNA].[UVW_MATRL_CLASFCTN] CC WITH (NOLOCK)
		WHERE CC.MATRL_NBR = M_BASE.MATRL_NBR
		AND CC.CHRSTC_NM = 'SUB-BRAND') as[SUB_BRAND]
      ,[PROD_HIER_TYPE_DESC] as [Type]
      ,[PROD_HIER_SUB_TYPE_DESC] as [SUB_TYPE]			
		,CASE 
			WHEN M_BASE.WGT_UOM = 'LB'
				THEN M_BASE.NET_WGT
			ELSE 0
		END AS NET_WGT_LBS
		,CASE 
			WHEN M_BASE.WGT_UOM = 'KG'
				THEN M_BASE.NET_WGT
			ELSE 0
		END AS NET_WGT_KGS
      ,D.PRC as PRC 
      ,M_BASE.[PROD_HIER]
      ,PH.[PROD_HIER_DESC]
	  ,M_BASE.COST_OF_PROD
      ,[LOAD_DT]
      ,M_BASE.[MATRL_NBR]
      ,[BU]
      ,[CHANNEL]
      ,[FISC_YR_PD] as [FISC_YR_PD]										
      ,CASE WHEN [PREV_FISC_YR_PD] is null THEN  ([FISC_YR_PD] - 1000 ) 
	       WHEN [PREV_FISC_YR_PD] = 0 THEN  ([FISC_YR_PD] - 1000 ) 
		   	       WHEN [PREV_FISC_YR_PD] = 0 THEN  ([FISC_YR_PD] - 1000 ) 
		   ELSE [PREV_FISC_YR_PD] END as [PREV_FISC_YR_PD] 
      ,[COUNTRY]
      ,[PROD_HIER_BRAND_DESC] as [BRAND]
	  ,NULL as ANAPLAN_BRAND					-- Updated with ANAPLAN_BRAND for BASE_SKU# after this -------------
      ,SUM([ACT_SAL_CASES]) as [ACT_SAL_CASES]
      ,SUM([ACT_SAL_KGS]) as [ACT_SAL_KGS]
      ,SUM([ACT_SAL_LBS]) as [ACT_SAL_LBS]
      ,SUM([ACT_SAL_GSV]) as [ACT_SAL_GSV]
      ,SUM([ACT_SAL_COP]) as [ACT_SAL_COP]
      ,MAX([ACTL_GSV_BU]) as [ACTL_GSV_BU]
      ,MAX([ACTL_GSV_CATE]) as [ACTL_GSV_CATE]
      ,MAX([ACTL_GSV_ANA_BRAN]) as [ACTL_GSV_ANA_BRAN]
      ,MAX([ACTL_GSV_CHAN]) as [ACTL_GSV_CHAN]
      ,MAX([ACTL_GSV_BRAN]) as [ACTL_GSV_BRAN]
      ,SUM([ACTL_GSV_TYPE]) as [ACTL_GSV_TYPE]
      ,MAX([ACTL_KGS_BU]) as [ACTL_KGS_BU]
      ,MAX([ACTL_KGS_CATE]) as [ACTL_KGS_CATE]
      ,MAX([ACTL_KGS_ANA_BRAN]) as [ACTL_KGS_ANA_BRAN]
      ,MAX([ACTL_KGS_CHAN]) as [ACTL_KGS_CHAN]
      ,MAX([ACTL_KGS_BRAN]) as [ACTL_KGS_BRAN]
      ,SUM([ACTL_KGS_TYPE]) as [ACTL_KGS_TYPE]
      ,MAX([ACTL_COP_BU]) as [ACTL_COP_BU]
      ,MAX([ACTL_COP_CATE]) as [ACTL_COP_CATE]
      ,MAX([ACTL_COP_ANA_BRAN]) as [ACTL_COP_ANA_BRAN]
      ,MAX([ACTL_COP_CHAN]) as [ACTL_COP_CHAN]
      ,MAX([ACTL_COP_BRAN]) as [ACTL_COP_BRAN]
      ,SUM([ACTL_COP_TYPE]) as [ACTL_COP_TYPE]
      ,SUM([PREV_ACT_SAL_CASES]) as [PREV_ACT_SAL_CASES]
      ,SUM([PREV_ACT_SAL_KGS]) as [PREV_ACT_SAL_KGS]
      ,SUM([PREV_ACT_SAL_LBS]) as [PREV_ACT_SAL_LBS]
      ,SUM([PREV_ACT_SAL_GSV]) as [PREV_ACT_SAL_GSV]
      ,SUM([PREV_ACT_SAL_COP]) as [PREV_ACT_SAL_COP]
      ,MAX([PREV_ACTL_GSV_BU]) as [PREV_ACTL_GSV_BU]
      ,MAX([PREV_ACTL_GSV_CATE]) as [PREV_ACTL_GSV_CATE]
      ,MAX([PREV_ACTL_GSV_ANA_BRAN]) as [PREV_ACTL_GSV_ANA_BRAN]
      ,MAX([PREV_ACTL_GSV_CHAN]) as [PREV_ACTL_GSV_CHAN]
      ,MAX([PREV_ACTL_GSV_BRAN]) as [PREV_ACTL_GSV_BRAN]
      ,SUM([PREV_ACT_SAL_GSV]) as [PREV_ACTL_GSV_TYPE]
      ,MAX([PREV_ACTL_KGS_BU]) as [PREV_ACTL_KGS_BU]
      ,MAX([PREV_ACTL_KGS_CATE]) as [PREV_ACTL_KGS_CATE]
      ,MAX([PREV_ACTL_KGS_ANA_BRAN]) as [PREV_ACTL_KGS_ANA_BRAN]
      ,MAX([PREV_ACTL_KGS_CHAN]) as [PREV_ACTL_KGS_CHAN]
      ,MAX([PREV_ACTL_KGS_BRAN]) as [PREV_ACTL_KGS_BRAN]
      ,SUM([PREV_ACTL_KGS_TYPE]) as [PREV_ACTL_KGS_TYPE]
      ,MAX([PREV_ACTL_COP_BU]) as [PREV_ACTL_COP_BU]
      ,MAX([PREV_ACTL_COP_CATE]) as [PREV_ACTL_COP_CATE]
      ,MAX([PREV_ACTL_COP_ANA_BRAN]) as [PREV_ACTL_COP_ANA_BRAN]
      ,MAX([PREV_ACTL_COP_CHAN]) as [PREV_ACTL_COP_CHAN]
      ,MAX([PREV_ACTL_COP_BRAN]) as [PREV_ACTL_COP_BRAN]
      ,SUM([PREV_ACTL_COP_TYPE]) as [PREV_ACTL_COP_TYPE]
      ,SUM([FORE_PD_CS]) as [FORE_PD_CS]
      ,SUM([FORE_PD_GSV]) as [FORE_PD_GSV]
      ,SUM([FORE_PD_KGS]) as [FORE_PD_KGS]
      ,SUM([FORE_PD_LBS]) as [FORE_PD_LBS]
      ,SUM([FORE_PD_COP]) as [FORE_PD_COP]
      ,MAX([CURR_VRSN]) as [CURR_VRSN]
      ,MAX([PREV_VRSN]) as PREV_VRSN
      ,MAX([CONS_FCST_GSV_BU]) as [CONS_FCST_GSV_BU]
      ,MAX([CONS_FCST_GSV_CATE]) as [CONS_FCST_GSV_CATE]
      ,MAX([CONS_FCST_GSV_ANA_BRAN]) as [CONS_FCST_GSV_ANA_BRAN]
      ,MAX([CONS_FCST_GSV_CHAN]) as [CONS_FCST_GSV_CHAN]
      ,MAX([CONS_FCST_GSV_BRAN]) as [CONS_FCST_GSV_BRAN]
      ,MAX([CONS_FCST_GSV_TYPE]) as [CONS_FCST_GSV_TYPE]
      ,MAX([CONS_FCST_KGS_BU]) as [CONS_FCST_KGS_BU]
      ,MAX([CONS_FCST_KGS_CATE]) as [CONS_FCST_KGS_CATE]
      ,MAX([CONS_FCST_KGS_ANA_BRAN]) as [CONS_FCST_KGS_ANA_BRAN]
      ,MAX([CONS_FCST_KGS_CHAN]) as [CONS_FCST_KGS_CHAN]
      ,MAX([CONS_FCST_KGS_BRAN]) as [CONS_FCST_KGS_BRAN]
      ,MAX([CONS_FCST_KGS_TYPE]) as [CONS_FCST_KGS_TYPE]
      ,MAX([CONS_FCST_COP_BU]) as [CONS_FCST_COP_BU]
      ,MAX([CONS_FCST_COP_CATE]) as [CONS_FCST_COP_CATE]
      ,MAX([CONS_FCST_COP_ANA_BRAN]) as [CONS_FCST_COP_ANA_BRAN]
      ,MAX([CONS_FCST_COP_CHAN]) as [CONS_FCST_COP_CHAN]
      ,MAX([CONS_FCST_COP_BRAN]) as [CONS_FCST_COP_BRAN]
      ,MAX([CONS_FCST_COP_TYPE]) as [CONS_FCST_COP_TYPE]
      ,SUM([PREV_FORE_PD_CS]) as [PREV_FORE_PD_CS]
      ,SUM([PREV_FORE_PD_GSV]) as [PREV_FORE_PD_GSV]
      ,SUM([PREV_FORE_PD_KGS]) as [PREV_FORE_PD_KGS]
      ,SUM([PREV_FORE_PD_LBS]) as [PREV_FORE_PD_LBS]
      ,SUM([PREV_FORE_PD_COP]) as [PREV_FORE_PD_COP]
      ,MAX([PREV_CONS_FCST_GSV_BU]) as [PREV_CONS_FCST_GSV_BU]
      ,MAX([PREV_CONS_FCST_GSV_CATE]) as [PREV_CONS_FCST_GSV_CATE]
      ,MAX([PREV_CONS_FCST_GSV_ANA_BRAN]) as [PREV_CONS_FCST_GSV_ANA_BRAN]	
      ,MAX([PREV_CONS_FCST_GSV_CHAN]) as [PREV_CONS_FCST_GSV_CHAN]
      ,MAX([PREV_CONS_FCST_GSV_BRAN]) as [PREV_CONS_FCST_GSV_BRAN]
      ,MAX([PREV_CONS_FCST_GSV_TYPE]) as [PREV_CONS_FCST_GSV_TYPE]
      ,MAX([PREV_CONS_FCST_KGS_BU]) as [PREV_CONS_FCST_KGS_BU]
      ,MAX([PREV_CONS_FCST_KGS_CATE]) as [PREV_CONS_FCST_KGS_CATE]
      ,MAX([PREV_CONS_FCST_KGS_ANA_BRAN]) as [PREV_CONS_FCST_KGS_ANA_BRAN]
      ,MAX([PREV_CONS_FCST_KGS_CHAN]) as [PREV_CONS_FCST_KGS_CHAN]
      ,MAX([PREV_CONS_FCST_KGS_BRAN]) as [PREV_CONS_FCST_KGS_BRAN]
      ,MAX([PREV_CONS_FCST_KGS_TYPE]) as [PREV_CONS_FCST_KGS_TYPE]
      ,MAX([PREV_CONS_FCST_COP_BU]) as [PREV_CONS_FCST_COP_BU]
      ,MAX([PREV_CONS_FCST_COP_CATE]) as [PREV_CONS_FCST_COP_CATE]
      ,MAX([PREV_CONS_FCST_COP_ANA_BRAN]) as [PREV_CONS_FCST_COP_ANA_BRAN]
      ,MAX([PREV_CONS_FCST_COP_CHAN]) as [PREV_CONS_FCST_COP_CHAN]
      ,MAX([PREV_CONS_FCST_COP_BRAN]) as [PREV_CONS_FCST_COP_BRAN]
      ,MAX([PREV_CONS_FCST_COP_TYPE]) as [PREV_CONS_FCST_COP_TYPE]
      ,SUM([TPM_FORE_CASES]) as [TPM_FORE_CASES]
      ,SUM([TPM_FORE_LBS]) as [TPM_FORE_LBS]
      ,SUM([TPM_FORE_KGS]) as [TPM_FORE_KGS]
      ,SUM([TPM_FORE_GSV]) as [TPM_FORE_GSV]
      ,SUM([TPM_LE_KMF]) as [TPM_LE_KMF]
      ,SUM([TPM_FORE_COP]) as [TPM_FORE_COP]
      ,MAX([TPM_KGS_BU]) as [TPM_KGS_BU]
      ,MAX([TPM_KGS_CATE]) as [TPM_KGS_CATE]
      ,MAX([TPM_KGS_ANA_BRAN]) as [TPM_KGS_ANA_BRAN]
      ,MAX([TPM_KGS_CHAN]) as [TPM_KGS_CHAN]
      ,MAX([TPM_KGS_BRAN]) as [TPM_KGS_BRAN]
      ,SUM(DISTINCT [TPM_KGS_TYPE]) as [TPM_KGS_TYPE]
      ,MAX([TPM_COP_BU]) as [TPM_COP_BU]
      ,MAX([TPM_COP_CATE]) as [TPM_COP_CATE]
      ,MAX([TPM_COP_ANA_BRAN]) as [TPM_COP_ANA_BRAN]
      ,MAX([TPM_COP_CHAN]) as [TPM_COP_CHAN]
      ,MAX([TPM_COP_BRAN]) as [TPM_COP_BRAN]
      ,SUM(DISTINCT [TPM_COP_TYPE]) as [TPM_COP_TYPE]
      ,MAX([TPM_GSV_BU]) as [TPM_GSV_BU]
      ,MAX([TPM_GSV_CATE]) as [TPM_GSV_CATE]
      ,MAX([TPM_GSV_ANA_BRAN]) as [TPM_GSV_ANA_BRAN]
      ,MAX([TPM_GSV_CHAN]) as [TPM_GSV_CHAN]
      ,MAX([TPM_GSV_BRAN]) as [TPM_GSV_BRAN]
      ,SUM(DISTINCT [TPM_GSV_TYPE]) as [TPM_GSV_TYPE]
      ,SUM([BUD_KGS_BUDGET_VAL]) as [BUD_KGS_BUDGET_VAL]
      ,SUM([BUD_KGS_COP_VAL]) as [BUD_KGS_COP_VAL]
      ,MAX([BUD_KGS_BU]) as [BUD_KGS_BU]
      ,MAX([BUD_KGS_BRAND]) as [BUD_KGS_BRAND]
      ,MAX([BUD_KGS_CATEGORY]) as [BUD_KGS_CATEGORY]
      ,MAX([BUD_KGS_ANA_BRAN]) as [BUD_KGS_ANA_BRAN]
      ,MAX([BUD_KGS_CHANNEL]) as [BUD_KGS_CHANNEL]
      ,MAX([BUD_KGS_TYPE]) as [BUD_KGS_TYPE]
      ,MAX([BUD_COP_BU]) as [BUD_COP_BU]
      ,MAX([BUD_COP_BRAND]) as [BUD_COP_BRAND]
      ,MAX([BUD_COP_CATEGORY]) as [BUD_COP_CATEGORY]
      ,MAX([BUD_COP_ANA_BRAN]) as [BUD_COP_ANA_BRAN]
      ,MAX([BUD_COP_CHANNEL]) as [BUD_COP_CHANNEL]
      ,MAX([BUD_COP_TYPE]) as [BUD_COP_TYPE]
      ,MAX([BUD_GSV_BU]) as [BUD_GSV_BU]
      ,MAX([BUD_GSV_BRAND]) as [BUD_GSV_BRAND]
      ,MAX([BUD_GSV_CATEGORY]) as [BUD_GSV_CATEGORY]
      ,MAX([BUD_GSV_ANA_BRAN]) as [BUD_GSV_ANA_BRAN]
	  ,MAX([BUD_GSV_CHANNEL]) as [BUD_GSV_CHANNEL]
	  ,MAX([BUD_GSV_TYPE])	as [BUD_GSV_TYPE]
	  ,MAX([SE_KGS_BUDGET_VAL])  as [SE_KGS_BUDGET_VAL]
      ,SUM([SE_GSV_BUDGET_VAL]) as [SE_GSV_BUDGET_VAL]
      ,SUM([BUD_GSV_BUDGET_VAL]) as [BUD_GSV_BUDGET_VAL]
      ,MAX([SE_KGS_BU]) as [SE_KGS_BU]
      ,MAX([SE_KGS_BRAND]) as [SE_KGS_BRAND]
      ,MAX([SE_KGS_CATEGORY]) as [SE_KGS_CATEGORY]
      ,MAX([SE_KGS_ANA_BRAN]) as [SE_KGS_ANA_BRAN]
      ,MAX([SE_KGS_CHANNEL]) as [SE_KGS_CHANNEL]
      ,MAX([SE_KGS_TYPE]) as [SE_KGS_TYPE]
      ,MAX([SE_COP_BU]) as [SE_COP_BU]
      ,MAX([SE_COP_BRAND]) as [SE_COP_BRAND]
      ,MAX([SE_COP_CATEGORY]) as [SE_COP_CATEGORY]
      ,MAX([SE_COP_ANA_BRAN]) as [SE_COP_ANA_BRAN]
      ,MAX([SE_COP_CHANNEL]) as [SE_COP_CHANNEL]
      ,MAX([SE_COP_TYPE]) as [SE_COP_TYPE]
      ,MAX([SE_GSV_BU]) as [SE_GSV_BU]
      ,MAX([SE_GSV_BRAND]) as [SE_GSV_BRAND]
      ,MAX([SE_GSV_CATEGORY]) as [SE_GSV_CATEGORY]
      ,MAX([SE_GSV_ANA_BRAN]) as [SE_GSV_ANA_BRAN]
      ,MAX([SE_GSV_CHANNEL]) as [SE_GSV_CHANNEL]
      ,MAX([SE_GSV_TYPE]) as [SE_GSV_TYPE]
      ,MAX([SE_KGS_COP_VAL]) as [SE_KGS_COP_VAL]
      ,[CHANNEL_DESC]
--INTO [KNA_SC].[dbo].[KSOP_MIX_FULL]						----------Only used this approach to generate target table
-- SELECT count(*)
  FROM KNA_SC.STG.KSOP_MIX_FULL_STG MF WITH (NOLOCK)
  LEFT JOIN KG_VIEWS.KNA.UVW_MATRL M WITH (NOLOCK) ON MF.MATRL_NBR = M.MATRL_NBR AND M.MATRL_TYP = 'FERT'
		AND MF.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
  LEFT JOIN KG_VIEWS.KNA.UVW_MATRL AS M_BASE WITH (NOLOCK) ON M_BASE.MATRL_NBR = M.BASE_MATRL_NBR AND M_BASE.MATRL_TYP = 'FERT'
  LEFT OUTER JOIN KG_VIEWS.[KNA].[UVW_PROD_HIER] PH WITH (NOLOCK) ON PH.PROD_HIER = M_BASE.PROD_HIER
  left outer join [KG_VIEWS].[KNA].[UVW_MATRL_PRC_CUR] D WITH (NOLOCK) on M_BASE.MATRL_NBR = D.MATRL_NBR AND D.SALES_ORG = '1001'

  WHERE MF.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
--  AND M_BASE.MATRL_NBR in ('000000003800012467') AND CHANNEL = '01' and FISC_YR_PD = '2017001'
     group by 
		M_BASE.MATRL_DESC 
	  ,M_BASE.PRFT_CTR
      ,[PROD_HIER_CATEGORY]
 --     ,[SUB_BRAND]
      ,[PROD_HIER_TYPE_DESC]
      ,[PROD_HIER_SUB_TYPE_DESC]
	  ,M_BASE.WGT_UOM
	  ,M_BASE.NET_WGT
      ,D.[PRC]
      ,PH.[PROD_HIER]
      ,PH.[PROD_HIER_DESC]
      ,M_BASE.COST_OF_PROD 
      ,[LOAD_DT]
	  ,M_BASE.PROD_HIER
      ,M_BASE.MATRL_NBR 
      ,[BU]
      ,[CHANNEL]
      ,[FISC_YR_PD]
      ,CASE WHEN [PREV_FISC_YR_PD] is null THEN  ([FISC_YR_PD] - 1000 ) 
	       WHEN [PREV_FISC_YR_PD] = 0 THEN  ([FISC_YR_PD] - 1000 ) 
		   	       WHEN [PREV_FISC_YR_PD] = 0 THEN  ([FISC_YR_PD] - 1000 ) 
		   ELSE [PREV_FISC_YR_PD] END 
      ,[COUNTRY]
      ,[PROD_HIER_BRAND_DESC]
	  ,[CHANNEL_DESC]

-----------  Update ANAPLAN_BRAND data for the BASE SKU# --------------

  UPDATE MF
  SET ANAPLAN_BRAND = H.[LVL7_SETNAME_DESC]
  FROM [KNA_SC].[dbo].[KSOP_MIX_FULL] MF WITH (NOLOCK)
  LEFT JOIN KG_VIEWS.KNA.UVW_MATRL AS M_BASE WITH (NOLOCK) ON M_BASE.MATRL_NBR = MF.MATRL_NBR AND M_BASE.MATRL_TYP = 'FERT'
 LEFT JOIN [KG_VIEWS].[KNA].[UVW_PRFT_CTR_HIER_UNRVL] H WITH (NOLOCK) ON H.SETNAME = M_BASE.PRFT_CTR AND H.APPL_NM = 'KNA_KSOP_MIX' 
  WHERE MF.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)


-----------  Update all the TYPE/SIZE from the SNacks data set loaded from the external table - for all the BASE SKU# --------------

  UPDATE MF
  SET [Type]= PH_TYP.[PROD_HIER_TYPE_DESC_OVR]
--  SELECT COUNT(*)
  FROM [KNA_SC].[dbo].[KSOP_MIX_FULL] MF WITH (NOLOCK)
  INNER JOIN KG_VIEWS.KNA.UVW_MATRL AS M WITH (NOLOCK) ON M.MATRL_NBR = MF.MATRL_NBR
  INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER AS PH WITH (NOLOCK) ON PH.PROD_HIER_TYPE_DESC = MF.Type AND M.PROD_HIER = PH.PROD_HIER
  INNER JOIN KNA_FIN.[dbo].[UVW_PROD_HIER_TYPE_DESC_OVR] AS PH_TYP WITH (NOLOCK) ON PH_TYP.[PROD_HIER_TYPE] = PH.PROD_HIER_TYPE
  WHERE MF.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)



--------------   TPM aggregates with multiple Types for each Base SKU need further update ------  
--------------   Make TYPE aggregates to be same as the TPM individual KPIs					----------

UPDATE TPM
SET TPM.[TPM_KGS_BU] = STG.[TPM_KGS_BU]
,TPM.[TPM_KGS_CATE] = STG.[TPM_KGS_CATE]
,TPM.[TPM_KGS_CHAN] = STG.[TPM_KGS_CHAN]
,TPM.[TPM_KGS_BRAN] = STG.[TPM_KGS_BRAN]
,TPM.[TPM_KGS_TYPE] = STG.[TPM_KGS_TYPE]
,TPM.[TPM_COP_BU] = STG.[TPM_COP_BU]
,TPM.[TPM_COP_CATE] = STG.[TPM_COP_CATE]
,TPM.[TPM_COP_CHAN] = STG.[TPM_COP_CHAN]
,TPM.[TPM_COP_BRAN] = STG.[TPM_COP_BRAN]
,TPM.[TPM_COP_TYPE] = STG.[TPM_COP_TYPE]
,TPM.[TPM_GSV_BU] = STG.[TPM_GSV_BU]
,TPM.[TPM_GSV_CATE] = STG.[TPM_GSV_CATE]
,TPM.[TPM_GSV_CHAN] = STG.[TPM_GSV_CHAN]
,TPM.[TPM_GSV_BRAN] = STG.[TPM_GSV_BRAN]
,TPM.[TPM_GSV_TYPE] = STG.[TPM_GSV_TYPE]

--SELECT COUNT(*)
FROM KNA_SC.dbo.KSOP_MIX_FULL TPM
LEFT JOIN 	KNA_SC.dbo.KSOP_MIX_FULL STG 
ON TPM.BU = STG.BU AND TPM.COUNTRY = STG.COUNTRY AND TPM.FISC_YR_PD = STG.FISC_YR_PD AND TPM.Type = STG.Type AND TPM.CHANNEL = STG.CHANNEL
AND TPM.MATRL_NBR = STG.MATRL_NBR  
WHERE TPM.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)

--------------   TPM aggregates where BASE SKU# does not exist by itself but has associates original SKU# need to be updated with 0  
------  Make TYPE aggregates 0 with all the BASE SKU# where it does not have a corresponding original SKU# in KSOP_MIX_FULL_STG table  ----------


-------------   For Actual sales only------------

---Step 1 to Update
SELECT DISTINCT S.MATRL_NBR as MATRL_NBR, CHANNEL, S.Type, S.BRAND, S.COUNTRY, S.FISC_YR_PD
INTO #STEP1
-- SELECT S.*
FROM [KNA_SC].[dbo].[KSOP_MIX_FULL] S WITH (NOLOCK)
WHERE  S.Type is not null	----	AND S.Type = 'All Bran Cereal M' and S.FISC_YR_PD = '2017002' AND S.CHANNEL = '01' --and S.BU = 'Snacks' 
AND S.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1) 

----- STEP 2
SELECT CHANNEL, BRAND,  Type, COUNTRY, FISC_YR_PD, 
SUM([ACT_SAL_GSV]) as [ACT_SAL_GSV], SUM([ACT_SAL_KGS]) as [ACT_SAL_KGS], SUM([ACT_SAL_COP]) as [ACT_SAL_COP], 
SUM([PREV_ACT_SAL_GSV]) as [PREV_ACT_SAL_GSV], SUM([PREV_ACT_SAL_KGS]) as [PREV_ACT_SAL_KGS], SUM([PREV_ACT_SAL_COP]) as [PREV_ACT_SAL_COP],
SUM([TPM_FORE_KGS]) as [TPM_KGS_TYPE], SUM([TPM_FORE_GSV]) as [TPM_GSV_TYPE], SUM([TPM_FORE_COP]) as [TPM_COP_TYPE]
INTO #STEP2
-- SELECT MF.*
FROM [KNA_SC].[dbo].[KSOP_MIX_FULL] MF WITH (NOLOCK)
WHERE CHANNEL is not null  
AND MF.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
---			AND Type = 'All Bran Cereal M' and FISC_YR_PD = '2017002' AND CHANNEL = '01' --and BU = 'Snacks'  
group by CHANNEL,  BRAND, Type, COUNTRY, FISC_YR_PD 


 -----------------------------------------------------------------------------------

----------  STEP 3 - final Update

UPDATE ACTL
SET ACTL.[ACTL_GSV_TYPE] = M.[ACT_SAL_GSV]
      ,ACTL.[ACTL_KGS_TYPE] = M.[ACT_SAL_KGS]
       ,ACTL.[ACTL_COP_TYPE] = M.[ACT_SAL_COP]
      ,ACTL.[PREV_ACTL_GSV_TYPE] = M.[PREV_ACT_SAL_GSV]
      ,ACTL.[PREV_ACTL_KGS_TYPE] = M.[PREV_ACT_SAL_KGS]
      ,ACTL.[PREV_ACTL_COP_TYPE] = M.[PREV_ACT_SAL_COP]
	  ,ACTL.[TPM_KGS_TYPE] = M.[TPM_KGS_TYPE]
	  ,ACTL.[TPM_COP_TYPE] = M.[TPM_COP_TYPE]
	  ,ACTL.[TPM_GSV_TYPE] = M.[TPM_GSV_TYPE]
-- Select M.*
FROM KNA_SC.dbo.KSOP_MIX_FULL ACTL
INNER JOIN  (
  SELECT  S.CHANNEL, S.BRAND, S.Type, S.COUNTRY, S.FISC_YR_PD, [ACT_SAL_GSV], [ACT_SAL_KGS],
				[ACT_SAL_COP],[PREV_ACT_SAL_GSV],[PREV_ACT_SAL_KGS],[PREV_ACT_SAL_COP], [TPM_KGS_TYPE], [TPM_COP_TYPE], [TPM_GSV_TYPE],
				S.MATRL_NBR as MATRL_NBR
  FROM #STEP2 M
  INNER JOIN #STEP1 S
  ON M.Type = S.Type AND S.CHANNEL = M.CHANNEL AND M.[BRAND] = S.[BRAND] AND S.FISC_YR_PD = M.FISC_YR_PD AND S.COUNTRY = M.COUNTRY
) M
 ON M.CHANNEL = ACTL.CHANNEL AND M.FISC_YR_PD = ACTL.FISC_YR_PD AND M.Type = ACTL.Type AND M.MATRL_NBR = ACTL.MATRL_NBR 
 AND M.[BRAND] = ACTL.BRAND AND M.COUNTRY = ACTL.COUNTRY
 WHERE ACTL.BU IN (SELECT CASE WHEN BU_DESC = 'MF' Then 'Morning Foods' ELSE BU_DESC END as BU FROM KNA_SC.dbo.KSOP_MIX_DRV_TAB WHERE CUR_FLG = 1)
 --AND PROD_HIER_TYPE_DESC =  'Special K Protein Bars SS' AND M.FISC_YR_PD = '2017001' AND M.CHANNEL = '01'

 --------  Remove the temp tables created above -------
 drop table #STEP1

  drop table #STEP2


------------------------  End of addition -------------



/*
---DROP SOURCE TABLES
	IF OBJECT_ID(N'STG.KSOP_MIX_MATRL', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_MATRL;

	IF OBJECT_ID(N'STG.KSOP_MIX_FCST', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_FCST;

	IF OBJECT_ID(N'STG.KSOP_MIX_ACTL', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_ACTL;    

	IF OBJECT_ID(N'STG.KSOP_MIX_TPM', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_TPM;

	IF OBJECT_ID(N'STG.KSOP_MIX_BUD_KGSPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BUD_KGSPD;

	IF OBJECT_ID(N'STG.KSOP_MIX_BUD_GSVPD', N'U') IS NOT NULL
	DROP TABLE KNA_SC.STG.KSOP_MIX_BUD_GSVPD;

	*/
	IF (@@ERROR <> 0)
	BEGIN
		ROLLBACK TRANSACTION start_tran;
	END
	ELSE
    BEGIN
   	    COMMIT TRANSACTION start_tran;
	END

 END







GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_FLD_SALES_UPDT_OUTLK]    Script Date: 11/20/2018 5:32:21 PM ******/
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
	FROM KNA_COMRCL.dbo.PLN_TO_CATG
		
		UNION ALL

 SELECT CUST
	   ,BU
       ,ALT_CATG
	   ,POSTNG_PD
	   ,POSTNG_YR
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
--==============COP stuff
	  ,ISNULL(BUD_COST_OF_PROD,0) as BUD_COST_OF_PROD
	  ,ISNULL(SE_COST_OF_PROD,0) as SE_COST_OF_PROD

--===============================
INTO #kpi_sc_bud_rs
FROM #kpi_sc_bud_union u
LEFT OUTER JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N map ON (CAST(u.CUST as decimal)= CAST(map.PLANTO as decimal))
LEFT OUTER JOIN KG_SANDBOX.dbo.PLN_TO_CATG b ON (u.CUST = b.PLN_TO and u.BU = b.BU and u.ALT_CATG = b.ALTN_CATG and b.POSTNG_PD = u.POSTNG_PD 
										and b.POSTNG_YR = u.POSTNG_YR)
LEFT OUTER JOIN #kpi_sc_bud_pti p ON (u.CUST = p.CUST and u.BU = p.BU and u.ALT_CATG = p.ALT_CATG and p.POSTNG_PD = u.POSTNG_PD 
										and p.POSTNG_YR = u.POSTNG_YR)
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
--------==============================
		,BUD_COST_OF_PROD
		,SE_COST_OF_PROD
--=========================================
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
--------==============================
		,BUD_COST_OF_PROD
		,SE_COST_OF_PROD
--=========================================
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
--------==============================
		,BUD_COST_OF_PROD
		,SE_COST_OF_PROD
--=========================================
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
--------==============================
		,BUD_COST_OF_PROD
		,SE_COST_OF_PROD
--=========================================
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
--------==============================
		,BUD_COST_OF_PROD
		,SE_COST_OF_PROD
--=========================================
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

TRUNCATE TABLE KG_SANDBOX.[dbo].[FLD_SALES_UPDT_OUTLK_FEED]
INSERT INTO KG_SANDBOX.[dbo].[FLD_SALES_UPDT_OUTLK_FEED]
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
--==============================
,sum(BUD_COST_OF_PROD)
,sum(SE_COST_OF_PROD)
---==================================
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
--==============================
,BUD_COST_OF_PROD
,SE_COST_OF_PROD
---==================================

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
--==============================
,0 as BUD_COST_OF_PROD
,0 as SE_COST_OF_PROD
---==================================
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
--==============================
,0 as BUD_COST_OF_PROD
,0 as SE_COST_OF_PROD
---==================================
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
--==============================
,BUD_COST_OF_PROD
,SE_COST_OF_PROD
---==================================
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
--==============================
,BUD_COST_OF_PROD
,SE_COST_OF_PROD
---==================================
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
--==============================
,BUD_COST_OF_PROD
,SE_COST_OF_PROD
---==================================
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
--==============================
,0 as BUD_COST_OF_PROD
,0 as SE_COST_OF_PROD
---==================================
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
--==============================
,0 as BUD_COST_OF_PROD
,0 as SE_COST_OF_PROD
---==================================
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
--==============================
,0 as BUD_COST_OF_PROD
,0 as SE_COST_OF_PROD
---==================================
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
/****** Object:  StoredProcedure [dbo].[USP_PROC_PLN_TO_CATG]    Script Date: 11/20/2018 5:32:21 PM ******/
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
----------------COP FIELDS--------------------------------
-------------------============================================

      ,[BUD_COST_OF_PROD] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'COP_BUDJ' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END

      ,[SE_COST_OF_PROD] = CASE 
							WHEN [/BIC/ZAOP_ACCT] = 'COP_SE' and [/BIC/ZAPPTYP] = 'IBP'  THEN AMOUNT
							ELSE 0.00
						  END
----------------------END OF COP FIELDS
---------------------==============================================================
  INTO #pln_to_cat1
  FROM [KNA_BW].[dbo].[AZD_BPC5600]
  WHERE [/BIC/ZAPPTYP] IN ('IBP','AOP','PNL') 
			and [/BIC/ZAOP_ACCT] IN ('TRDADJ_SE_3','TRD_SE_3','GSVADJ_SE_3','GSV_SE_3','TRDADJ_SE_2','GSV_SE','GSVADJ_LE',
						'GSVADJ_BUDJ','TRDADJ_IBP','TRD_IBP','GSV_IBP','TRD_SE_2','GSVADJ_SE_2','GSV_SE_2','TRDADJ_SE'
						,'TRD_SE','GSVADJ_SE','TRDADJ_BUDJ','FINAL_TRD_BUDJ','FINAL_GSV_BUDJ','GSVADJ_IBP','TRD_LPIBP','GSV_LPIBP','COP_BUDJ','COP_SE')

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
---------------===========================================
,sum([BUD_COST_OF_PROD]) as [BUD_COST_OF_PROD]
,sum([SE_COST_OF_PROD]) as [SE_COST_OF_PROD]


--===========================================================
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

TRUNCATE TABLE [KG_SANDBOX].[dbo].[PLN_TO_CATG]	   
INSERT INTO [KG_SANDBOX].[dbo].[PLN_TO_CATG]
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
--========================================

 ,ISNULL([BUD_COST_OF_PROD],0)
 ,ISNULL([SE_COST_OF_PROD],0)

--=-==============================================
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
----------===========================================================
----COP    
or [BUD_COST_OF_PROD]<>0 or [SE_COST_OF_PROD] <>0
-----==============================================
	
	IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION start_tran;
		RETURN @@ERROR
	end
	COMMIT TRANSACTION;


END
GO
/****** Object:  StoredProcedure [USKS1W02].[SP_PC_POC]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [USKS1W02].[SP_PC_POC]
AS
BEGIN
 insert into KG_SANDBOX.USKS1W02.WM_INV
select distinct	SUBPART_SUFFIX_TXT as CUSTOMER_CODE 
	, SOLDTO   
	, STORENBR 
	, UPC 
	, DAY as TRANSACTION_DATE  
	, DATENAME(weekday,DAY)as DAYNAME
	, DATEPART(WW,DAY) as FISC_WEEK
	, DATEPART(YYYY,DAY) as FISC_YEAR
	, cast(DATEPART(YYYY,DAY) as varchar)+''+ RIGHT('00'+cast(DATEPART(WW,DAY) as varchar),2) as FISC_YR_WK
	, SUM(ONHANDQTY) as ONHANDQTY
	, SUM(ONHANDRETAIL) as ONHANDRETAIL
	, SUM(NWEA) as NWEA
	, SUM(NTEA) as NTEA

from
	KNA_SALES.dbo.INV_WM AS a
WHERE
	DAY between '16SEP2018' and '22SEP2018'
group by
	SUBPART_SUFFIX_TXT  
	, SOLDTO   
	, STORENBR 
	, UPC 
	, DAY
	, DATENAME(weekday,DAY)
	, DATEPART(WW,DAY) 
	, DATEPART(YYYY,DAY) 
	, cast(DATEPART(YYYY,DAY) as varchar)+''+ RIGHT('00'+cast(DATEPART(WW,DAY) as varchar),2)
  
END

GO
/****** Object:  Table [ACCENTURE].[DELETEDSrcOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[DELETEDSrcOTCDeductionsLiveSnapshot](
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [numeric](11, 0) NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [numeric](16, 0) NULL,
	[FIN_CUSTDISP_AMT] [numeric](16, 2) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [numeric](16, 2) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [int] NULL,
	[LN_ITM_NBR] [smallint] NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [varchar](10) NULL,
	[PLN_CLO_DT] [varchar](10) NULL,
	[CRE_TM] [numeric](16, 0) NULL,
	[CLS_TM] [numeric](16, 0) NULL,
	[AGE] [numeric](11, 0) NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [numeric](16, 2) NULL,
	[CUR_DISPUTED_AMT] [numeric](16, 2) NULL,
	[ORIG_AMT] [numeric](16, 2) NULL,
	[CLR_MANUALLY] [numeric](16, 2) NULL,
	[AMT_PAID] [numeric](16, 2) NULL,
	[AMT_CR] [numeric](16, 2) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [varchar](10) NULL,
	[POST_DT] [varchar](10) NULL,
	[DED_USE_FLAG] [numeric](11, 0) NULL,
	[UNDR_TOLRNC_FLG] [numeric](11, 0) NULL,
	[CLSN_DT] [varchar](10) NULL,
	[OPN_FLG] [numeric](11, 0) NULL,
	[CLSN_PD] [smallint] NULL,
	[CLSN_YR] [numeric](11, 0) NULL,
	[HST_INT] [int] NULL,
	[CRE_PD] [smallint] NULL,
	[CRE_YR] [int] NULL,
	[CRE_PD_END_DT] [varchar](10) NULL,
	[CRE_INT] [int] NULL,
	[CRE_FLG] [numeric](11, 0) NULL,
	[INVLD_FLG] [numeric](11, 0) NULL,
	[HST_WK] [smallint] NULL,
	[HST_PD] [smallint] NULL,
	[HST_YR] [int] NULL,
	[SEQ_ID] [bigint] NULL,
	[HST_QTR] [int] NULL,
	[BatchId] [bigint] NULL,
	[CreateDttm] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[REPORT_EXT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[Predictive_Model_output]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[Predictive_Model_output](
	[CASE_ID] [varchar](12) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[BAS_LN_DT] [date] NULL,
	[ORIG_AMT] [numeric](19, 0) NULL,
	[HST_PD] [numeric](19, 0) NULL,
	[HST_YR] [numeric](19, 0) NULL,
	[Invalid_rate_Vol] [float] NULL,
	[P_0] [float] NULL,
	[P_1] [float] NULL,
	[Pred_P2] [float] NULL,
	[AR_Amount] [float] NULL,
	[Probability_Band] [varchar](20) NULL,
	[Amount_Bucket] [varchar](14) NULL,
	[Region_Code] [varchar](2) NULL,
	[Region_Name] [varchar](14) NULL,
	[Week] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[PublishKPIMetrics]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[PublishKPIMetrics](
	[BATCH_ID] [bigint] NULL,
	[CASE_ID] [varchar](12) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[DEDUCTION_AMOUNT_USD] [decimal](18, 0) NULL,
	[PLNT_NBR] [varchar](100) NULL,
	[PLANTO_DESC] [varchar](100) NULL,
	[ROOT_CAUSE_DESC] [varchar](100) NULL,
	[ROOT_CAUSE_CD] [varchar](100) NULL,
	[RSN_CD_PAY_TXT] [varchar](100) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[BAS_LN_DT] [date] NULL,
	[CLSN_DT] [date] NULL,
	[AGE_END_OF_PERIOD] [numeric](18, 0) NULL,
	[BU] [varchar](100) NULL,
	[SALES_MGMT_A] [varchar](100) NULL,
	[SALES_MGMT_B] [varchar](35) NULL,
	[SALES_MGMT_C] [varchar](35) NULL,
	[SALES_MGMT_D] [varchar](35) NULL,
	[CUST_NBR] [varchar](100) NULL,
	[CUST_MAIL_ADDR] [varchar](100) NULL,
	[CUSTOMER_CHANNEL] [varchar](255) NULL,
	[DEDUCTION_CATEGORY] [varchar](255) NULL,
	[DEDUCTION_CONTROLLABLE_UNCONTROLLABLE] [varchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[TRADE_FLAG] [varchar](50) NULL,
	[REPORT_EXTRACTION_DATE] [date] NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[VALID_FLAG] [varchar](50) NULL,
	[ACTION_FLAG] [varchar](10) NULL,
	[CASE_STATUS] [varchar](10) NULL,
	[ACTIVITY_DATE] [date] NULL,
	[UNDER_TOLERANCE] [varchar](10) NULL,
	[INVLD_COLLECTIONS_AMT] [decimal](18, 0) NULL,
	[TOP_20_CUSTOMERS] [varchar](10) NULL,
	[TOP_10_CUSTOMERS] [varchar](10) NULL,
	[UCD] [varchar](10) NULL,
	[FY] [decimal](18, 0) NULL,
	[HST_WK] [decimal](18, 0) NULL,
	[HST_PD] [decimal](18, 0) NULL,
	[HST_YR] [decimal](18, 0) NULL,
	[HST_QTR] [decimal](18, 0) NULL,
	[WEEK_DETAILS] [decimal](18, 0) NULL,
	[PERIOD] [decimal](18, 0) NULL,
	[QTR] [decimal](18, 0) NULL,
	[DAY_OF_WEEK] [decimal](18, 0) NULL,
	[CRE_WK] [decimal](18, 0) NULL,
	[CRE_PD] [decimal](18, 0) NULL,
	[CRE_YR] [decimal](18, 0) NULL,
	[CRE_QTR] [decimal](18, 0) NULL,
	[AGE_INVLD_PNDG_RVW] [numeric](18, 0) NULL,
	[AGE_CLSFD_INVLD] [numeric](18, 0) NULL,
	[AGE_INVLD_CLSD] [numeric](18, 0) NULL,
	[WRITE_OFF_AMT] [numeric](18, 0) NULL,
	[WRITE_OFF_RSN] [varchar](100) NULL,
	[INVLD_DED_AGEING] [numeric](18, 0) NULL,
	[CREDITS] [numeric](18, 0) NULL,
	[FROM_UNKWN_TO_CODED] [varchar](100) NULL,
	[OTC_CUST_CHNL] [varchar](50) NULL,
	[CATEG_DATE] [date] NULL,
	[CODED_DATE] [date] NULL,
	[CODED_WK] [decimal](18, 0) NULL,
	[CODED_YR] [decimal](18, 0) NULL,
	[UNKNOWN_DATE] [date] NULL,
	[UNKNOWN_WK] [decimal](18, 0) NULL,
	[UNKNOWN_YR] [decimal](18, 0) NULL,
	[INVLD_CONFRMD_REPAY_DATE] [date] NULL,
	[INVLD_APPRVD_DATE] [date] NULL,
	[INVLD_SALES_APPRVD_WRTOFF_DATE] [date] NULL,
	[INVLD_PNDG_SALES_RVW_DATE] [date] NULL,
	[INVLD_PNDG_RSC_RVW_DATE] [date] NULL,
	[CODING_STATUS] [varchar](100) NULL,
	[DED_FIRST_PASS_CODED_DATE] [date] NULL,
	[STAT_CLSD_DATE] [date] NULL,
	[AGE_IDENTIFY_INVLD] [numeric](18, 0) NULL,
	[AGE_AUTOCASH_TO_CODED] [numeric](18, 0) NULL,
	[AGE_INVCE_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_CDG_TO_ACTN_TAKEN] [numeric](18, 0) NULL,
	[AGE_SALES_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_CUSTMR_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CODED] [numeric](18, 0) NULL,
	[AGE_RSPNS_RCVD_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_POD_REQ_TO_CODED_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_ACTN_TKN_TO_RSPNS_RCVD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_CDG_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_SLS_BRKR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_CUSTMR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_INVLD_TO_CLSR] [numeric](18, 0) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL,
	[CP_OR_NOT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[PublishLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[PublishLogData](
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CASE_ID] [varchar](50) NULL,
	[STATUS_FLAG] [varchar](50) NULL,
	[INVOICE_AUTOCASH_DATE] [date] NULL,
	[UNKNOWN_AUTOCASH_DATE] [date] NULL,
	[UNKNOWN_DATE] [date] NULL,
	[CODED_DATE] [date] NULL,
	[BLANK_ROOT_CAUSE_DATE] [date] NULL,
	[REQ_BKP_FROM_CUST_DATE] [date] NULL,
	[REQ_CONT_FROM_SALES_DATE] [date] NULL,
	[REQ_BKP_FROM_SALES_DATE] [date] NULL,
	[REQ_PRODUCT_ADD_DATE] [date] NULL,
	[REQ_PROMO_ADD_DATE] [date] NULL,
	[REQ_PROMO_ADD_FROM_BROKER_DATE] [date] NULL,
	[REQ_BKP_FROM_BROKER_DATE] [date] NULL,
	[REQ_CONT_FROM_BROKER_DATE] [date] NULL,
	[OTHER_ROOT_CAUSE_CODE_DATE] [date] NULL,
	[POD_REQ_DATE] [date] NULL,
	[POD_REQ_CPU_DATE] [date] NULL,
	[POD_REQ_DC_DATE] [date] NULL,
	[ESC_REG_DED_BACK_OFFICE_DATE] [date] NULL,
	[INVLD_CONFRMD_REPAY_DATE] [date] NULL,
	[INVLD_APPRVD_DATE] [date] NULL,
	[INVLD_SALES_APPRVD_WRTOFF_DATE] [date] NULL,
	[INVLD_PNDG_SALES_RVW_DATE] [date] NULL,
	[INVLD_PNDG_RSC_RVW_DATE] [date] NULL,
	[CATEG_DATE] [date] NULL,
	[STAT_CLSD_DATE] [date] NULL,
	[AGE_AUTOCASH_TO_CODED] [numeric](18, 0) NULL,
	[AGE_INVCE_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_CDG_TO_ACTN_TAKEN] [numeric](18, 0) NULL,
	[AGE_SALES_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_CUSTMR_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CODED] [numeric](18, 0) NULL,
	[AGE_RSPNS_RCVD_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_POD_REQ_TO_CODED_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_ACTN_TKN_TO_RSPNS_RCVD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_CDG_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_SLS_BRKR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_CUSTMR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_INVLD_TO_CLSR] [numeric](18, 0) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[SrcDMLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[SrcDMLogData](
	[EXT_KEY] [varchar](12) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[POID_ID] [varchar](32) NULL,
	[SY_DATUM] [varchar](10) NULL,
	[SY_UZEIT] [varchar](8) NULL,
	[ARG_STRING] [varchar](16) NULL,
	[ARG1] [varchar](200) NULL,
	[ARG2] [varchar](200) NULL,
	[UTC_CHANGE_TIME] [datetime] NULL,
	[CT_CHANGE_TIME] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[SrcOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot](
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [numeric](11, 0) NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [numeric](16, 0) NULL,
	[FIN_CUSTDISP_AMT] [numeric](16, 2) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [numeric](16, 2) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [int] NULL,
	[LN_ITM_NBR] [smallint] NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [varchar](10) NULL,
	[PLN_CLO_DT] [varchar](10) NULL,
	[CRE_TM] [numeric](16, 0) NULL,
	[CLS_TM] [numeric](16, 0) NULL,
	[AGE] [numeric](11, 0) NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [numeric](16, 2) NULL,
	[CUR_DISPUTED_AMT] [numeric](16, 2) NULL,
	[ORIG_AMT] [numeric](16, 2) NULL,
	[CLR_MANUALLY] [numeric](16, 2) NULL,
	[AMT_PAID] [numeric](16, 2) NULL,
	[AMT_CR] [numeric](16, 2) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [varchar](10) NULL,
	[POST_DT] [varchar](10) NULL,
	[DED_USE_FLAG] [numeric](11, 0) NULL,
	[UNDR_TOLRNC_FLG] [numeric](11, 0) NULL,
	[CLSN_DT] [varchar](10) NULL,
	[OPN_FLG] [numeric](11, 0) NULL,
	[CLSN_PD] [smallint] NULL,
	[CLSN_YR] [numeric](11, 0) NULL,
	[HST_INT] [int] NULL,
	[CRE_PD] [smallint] NULL,
	[CRE_YR] [int] NULL,
	[CRE_PD_END_DT] [varchar](10) NULL,
	[CRE_INT] [int] NULL,
	[CRE_FLG] [numeric](11, 0) NULL,
	[INVLD_FLG] [numeric](11, 0) NULL,
	[HST_WK] [smallint] NULL,
	[HST_PD] [smallint] NULL,
	[HST_YR] [int] NULL,
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HST_QTR] [int] NULL,
	[BatchId] [bigint] NULL,
	[CreateDttm] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[REPORT_EXT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[SrcOTCDeductionsLiveSnapshot_1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot_1](
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [numeric](11, 0) NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [numeric](16, 0) NULL,
	[FIN_CUSTDISP_AMT] [numeric](16, 2) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [numeric](16, 2) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [int] NULL,
	[LN_ITM_NBR] [smallint] NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [varchar](10) NULL,
	[PLN_CLO_DT] [varchar](10) NULL,
	[CRE_TM] [numeric](16, 0) NULL,
	[CLS_TM] [numeric](16, 0) NULL,
	[AGE] [numeric](11, 0) NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [numeric](16, 2) NULL,
	[CUR_DISPUTED_AMT] [numeric](16, 2) NULL,
	[ORIG_AMT] [numeric](16, 2) NULL,
	[CLR_MANUALLY] [numeric](16, 2) NULL,
	[AMT_PAID] [numeric](16, 2) NULL,
	[AMT_CR] [numeric](16, 2) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [varchar](10) NULL,
	[POST_DT] [varchar](10) NULL,
	[DED_USE_FLAG] [numeric](11, 0) NULL,
	[UNDR_TOLRNC_FLG] [numeric](11, 0) NULL,
	[CLSN_DT] [varchar](10) NULL,
	[OPN_FLG] [numeric](11, 0) NULL,
	[CLSN_PD] [smallint] NULL,
	[CLSN_YR] [numeric](11, 0) NULL,
	[HST_INT] [int] NULL,
	[CRE_PD] [smallint] NULL,
	[CRE_YR] [int] NULL,
	[CRE_PD_END_DT] [varchar](10) NULL,
	[CRE_INT] [int] NULL,
	[CRE_FLG] [numeric](11, 0) NULL,
	[INVLD_FLG] [numeric](11, 0) NULL,
	[HST_WK] [smallint] NULL,
	[HST_PD] [smallint] NULL,
	[HST_YR] [int] NULL,
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HST_QTR] [int] NULL,
	[BatchId] [bigint] NULL,
	[CreateDttm] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[REPORT_EXT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgARMasterData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgARMasterData](
	[CustomerChannelText] [varchar](6) NULL,
	[BU] [varchar](35) NULL,
	[CustomerNo] [varchar](10) NULL,
	[FiscalYear] [varchar](10) NULL,
	[FY] [int] NULL,
	[PD] [smallint] NULL,
	[WK] [smallint] NULL,
	[QTR] [smallint] NULL,
	[ARAmt] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgBatchInfo]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgBatchInfo](
	[BatchId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[JobName] [varchar](100) NULL,
	[ExecutionId] [uniqueidentifier] NULL,
	[CreateDttm] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
 CONSTRAINT [StgBatchInfo_Pk_BatchId] PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgDimCPUflag]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgDimCPUflag](
	[CUST_NBR] [varchar](20) NULL,
	[CUST_NAME] [varchar](200) NULL,
	[CP_OR_NOT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgDimPlanToDecscription]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgDimPlanToDecscription](
	[CUST_NBR] [varchar](30) NULL,
	[CUST_DESC] [varchar](200) NULL,
	[PLANTO_DESC] [varchar](200) NULL,
	[PLNT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgDimReason]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgDimReason](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[CASE_TYPE] [varchar](4) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[DESCRIPTION] [varchar](60) NULL,
	[TradeFlag] [varchar](255) NULL,
	[ControllableFlag] [varchar](255) NULL,
	[Team] [varchar](255) NULL,
	[CreateDttm] [datetime] NULL,
	[CreateUserId] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgIntermediateLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgIntermediateLogData](
	[CASE_ID] [varchar](50) NULL,
	[STATUS_FLAG] [varchar](50) NULL,
	[INVOICE_AUTOCASH_DATE] [date] NULL,
	[UNKNOWN_AUTOCASH_DATE] [date] NULL,
	[UNKNOWN_DATE] [date] NULL,
	[CODED_DATE] [date] NULL,
	[BLANK_ROOT_CAUSE_DATE] [date] NULL,
	[REQ_BKP_FROM_CUST_DATE] [date] NULL,
	[REQ_CONT_FROM_SALES_DATE] [date] NULL,
	[REQ_BKP_FROM_SALES_DATE] [date] NULL,
	[REQ_PRODUCT_ADD_DATE] [date] NULL,
	[REQ_PROMO_ADD_DATE] [date] NULL,
	[REQ_PROMO_ADD_FROM_BROKER_DATE] [date] NULL,
	[REQ_BKP_FROM_BROKER_DATE] [date] NULL,
	[REQ_CONT_FROM_BROKER_DATE] [date] NULL,
	[OTHER_ROOT_CAUSE_CODE_DATE] [date] NULL,
	[POD_REQ_DATE] [date] NULL,
	[POD_REQ_CPU_DATE] [date] NULL,
	[POD_REQ_DC_DATE] [date] NULL,
	[ESC_REG_DED_BACK_OFFICE_DATE] [date] NULL,
	[INVLD_CONFRMD_REPAY_DATE] [date] NULL,
	[INVLD_APPRVD_DATE] [date] NULL,
	[INVLD_SALES_APPRVD_WRTOFF_DATE] [date] NULL,
	[INVLD_PNDG_SALES_RVW_DATE] [date] NULL,
	[INVLD_PNDG_RSC_RVW_DATE] [date] NULL,
	[CATEG_DATE] [date] NULL,
	[STAT_CLSD_DATE] [date] NULL,
	[AGE_AUTOCASH_TO_CODED] [numeric](18, 0) NULL,
	[AGE_INVCE_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_CDG_TO_ACTN_TAKEN] [numeric](18, 0) NULL,
	[AGE_SALES_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_CUSTMR_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CODED] [numeric](18, 0) NULL,
	[AGE_RSPNS_RCVD_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_POD_REQ_TO_CODED_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_ACTN_TKN_TO_RSPNS_RCVD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_CDG_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_SLS_BRKR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_CUSTMR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_INVLD_TO_CLSR] [numeric](18, 0) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgKPIMetricsDelta]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgKPIMetricsDelta](
	[BATCH_ID] [bigint] NULL,
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CASE_ID] [varchar](12) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[DEDUCTION_AMOUNT_USD] [decimal](18, 0) NULL,
	[PLNT_NBR] [varchar](100) NULL,
	[PLANTO_DESC] [varchar](100) NULL,
	[ROOT_CAUSE_DESC] [varchar](100) NULL,
	[ROOT_CAUSE_CD] [varchar](100) NULL,
	[RSN_CD_PAY_TXT] [varchar](100) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[BAS_LN_DT] [date] NULL,
	[CLSN_DT] [date] NULL,
	[AGE_END_OF_PERIOD] [numeric](18, 0) NULL,
	[BU] [varchar](100) NULL,
	[SALES_MGMT_A] [varchar](100) NULL,
	[SALES_MGMT_B] [varchar](35) NULL,
	[SALES_MGMT_C] [varchar](35) NULL,
	[SALES_MGMT_D] [varchar](35) NULL,
	[CUST_NBR] [varchar](100) NULL,
	[CUST_MAIL_ADDR] [varchar](100) NULL,
	[CUSTOMER_CHANNEL] [varchar](255) NULL,
	[DEDUCTION_CATEGORY] [varchar](255) NULL,
	[DEDUCTION_CONTROLLABLE_UNCONTROLLABLE] [varchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[TRADE_FLAG] [varchar](50) NULL,
	[REPORT_EXTRACTION_DATE] [date] NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[VALID_FLAG] [varchar](50) NULL,
	[ACTION_FLAG] [varchar](10) NULL,
	[CASE_STATUS] [varchar](10) NULL,
	[ACTIVITY_DATE] [date] NULL,
	[UNDER_TOLERANCE] [varchar](10) NULL,
	[INVLD_COLLECTIONS_AMT] [decimal](18, 0) NULL,
	[TOP_20_CUSTOMERS] [varchar](10) NULL,
	[TOP_10_CUSTOMERS] [varchar](10) NULL,
	[UCD] [varchar](10) NULL,
	[FY] [decimal](18, 0) NULL,
	[HST_WK] [decimal](18, 0) NULL,
	[HST_PD] [decimal](18, 0) NULL,
	[HST_YR] [decimal](18, 0) NULL,
	[HST_QTR] [decimal](18, 0) NULL,
	[WEEK_DETAILS] [decimal](18, 0) NULL,
	[PERIOD] [decimal](18, 0) NULL,
	[QTR] [decimal](18, 0) NULL,
	[DAY_OF_WEEK] [decimal](18, 0) NULL,
	[CRE_WK] [decimal](18, 0) NULL,
	[CRE_PD] [decimal](18, 0) NULL,
	[CRE_YR] [decimal](18, 0) NULL,
	[CRE_QTR] [decimal](18, 0) NULL,
	[AGE_INVLD_PNDG_RVW] [numeric](18, 0) NULL,
	[AGE_CLSFD_INVLD] [numeric](18, 0) NULL,
	[AGE_INVLD_CLSD] [numeric](18, 0) NULL,
	[WRITE_OFF_AMT] [numeric](18, 0) NULL,
	[WRITE_OFF_RSN] [varchar](100) NULL,
	[INVLD_DED_AGEING] [numeric](18, 0) NULL,
	[CREDITS] [numeric](18, 0) NULL,
	[FROM_UNKWN_TO_CODED] [varchar](100) NULL,
	[OTC_CUST_CHNL] [varchar](50) NULL,
	[CATEG_DATE] [date] NULL,
	[CODED_DATE] [date] NULL,
	[CODED_WK] [decimal](18, 0) NULL,
	[CODED_YR] [decimal](18, 0) NULL,
	[UNKNOWN_DATE] [date] NULL,
	[UNKNOWN_WK] [decimal](18, 0) NULL,
	[UNKNOWN_YR] [decimal](18, 0) NULL,
	[INVLD_CONFRMD_REPAY_DATE] [date] NULL,
	[INVLD_APPRVD_DATE] [date] NULL,
	[INVLD_SALES_APPRVD_WRTOFF_DATE] [date] NULL,
	[INVLD_PNDG_SALES_RVW_DATE] [date] NULL,
	[INVLD_PNDG_RSC_RVW_DATE] [date] NULL,
	[CODING_STATUS] [varchar](100) NULL,
	[DED_FIRST_PASS_CODED_DATE] [date] NULL,
	[STAT_CLSD_DATE] [date] NULL,
	[AGE_IDENTIFY_INVLD] [numeric](18, 0) NULL,
	[AGE_AUTOCASH_TO_CODED] [numeric](18, 0) NULL,
	[AGE_INVCE_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_AUTOCASH_TO_UNKWN] [numeric](18, 0) NULL,
	[AGE_UNKWN_CDG_TO_ACTN_TAKEN] [numeric](18, 0) NULL,
	[AGE_SALES_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_CUSTMR_FLWUP_TO_CODED] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CODED] [numeric](18, 0) NULL,
	[AGE_RSPNS_RCVD_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_POD_REQ_TO_CODED_PST_ESC] [numeric](18, 0) NULL,
	[AGE_UNWN_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_ACTN_TKN] [numeric](18, 0) NULL,
	[AGE_ACTN_TKN_TO_RSPNS_RCVD] [numeric](18, 0) NULL,
	[AGE_CDG_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_CDG_SLS_CUSTMR_POD_REQ_ESC] [numeric](18, 0) NULL,
	[AGE_CDG_ESC_TO_INVLD] [numeric](18, 0) NULL,
	[AGE_SLS_BRKR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_CUSTMR_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_POD_REQ_TO_CLSR] [numeric](18, 0) NULL,
	[AGE_INVLD_TO_CLSR] [numeric](18, 0) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL,
	[CP_OR_NOT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgLogData]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgLogData](
	[SEQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_ID] [bigint] NULL,
	[EXT_KEY] [varchar](50) NULL,
	[STATUS_FLAG] [varchar](50) NULL,
	[CASE_GUID] [nvarchar](255) NULL,
	[CHANGED_BY] [nvarchar](255) NULL,
	[POID_ID] [nvarchar](255) NULL,
	[SY_DATUM] [date] NULL,
	[SY_UZEIT] [float] NULL,
	[ARG_STRING] [nvarchar](255) NULL,
	[ARG1] [nvarchar](255) NULL,
	[ARG2] [nvarchar](255) NULL,
	[CreateDttm] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgLogDataDelta]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgLogDataDelta](
	[SEQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_ID] [bigint] NULL,
	[EXT_KEY] [varchar](50) NULL,
	[STATUS_FLAG] [varchar](50) NULL,
	[CASE_GUID] [nvarchar](255) NULL,
	[CHANGED_BY] [nvarchar](255) NULL,
	[POID_ID] [nvarchar](255) NULL,
	[SY_DATUM] [date] NULL,
	[SY_UZEIT] [float] NULL,
	[ARG_STRING] [nvarchar](255) NULL,
	[ARG1] [nvarchar](255) NULL,
	[ARG2] [nvarchar](255) NULL,
	[CreateDttm] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgOTCDeductionsClosed]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgOTCDeductionsClosed](
	[SEQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_ID] [bigint] NULL,
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [int] NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [decimal](18, 0) NULL,
	[FIN_CUSTDISP_AMT] [decimal](18, 0) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [decimal](18, 0) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [decimal](18, 0) NULL,
	[LN_ITM_NBR] [decimal](18, 0) NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [date] NULL,
	[PLN_CLO_DT] [date] NULL,
	[CRE_TM] [decimal](18, 0) NULL,
	[CLS_TM] [decimal](18, 0) NULL,
	[AGE] [int] NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [decimal](18, 0) NULL,
	[CUR_DISPUTED_AMT] [decimal](18, 0) NULL,
	[ORIG_AMT] [decimal](18, 0) NULL,
	[CLR_MANUALLY] [decimal](18, 0) NULL,
	[AMT_PAID] [decimal](18, 0) NULL,
	[AMT_CR] [decimal](18, 0) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [date] NULL,
	[POST_DT] [date] NULL,
	[DED_USE_FLAG] [int] NULL,
	[UNDR_TOLRNC_FLG] [int] NULL,
	[CLSN_DT] [date] NULL,
	[OPN_FLG] [int] NULL,
	[CLSN_PD] [decimal](18, 0) NULL,
	[CLSN_YR] [int] NULL,
	[HST_INT] [decimal](18, 0) NULL,
	[CRE_PD] [decimal](18, 0) NULL,
	[CRE_YR] [decimal](18, 0) NULL,
	[CRE_PD_END_DT] [date] NULL,
	[CRE_INT] [decimal](18, 0) NULL,
	[CRE_FLG] [int] NULL,
	[INVLD_FLG] [int] NULL,
	[HST_WK] [decimal](18, 0) NULL,
	[HST_PD] [decimal](18, 0) NULL,
	[HST_YR] [decimal](18, 0) NULL,
	[HST_QTR] [decimal](18, 0) NULL,
	[REPORT_EXT_DT] [date] NULL,
	[ActionFlag] [varchar](10) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshot](
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [numeric](11, 0) NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [numeric](16, 0) NULL,
	[FIN_CUSTDISP_AMT] [numeric](16, 2) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [numeric](16, 2) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [int] NULL,
	[LN_ITM_NBR] [smallint] NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [varchar](10) NULL,
	[PLN_CLO_DT] [varchar](10) NULL,
	[CRE_TM] [numeric](16, 0) NULL,
	[CLS_TM] [numeric](16, 0) NULL,
	[AGE] [numeric](11, 0) NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [numeric](16, 2) NULL,
	[CUR_DISPUTED_AMT] [numeric](16, 2) NULL,
	[ORIG_AMT] [numeric](16, 2) NULL,
	[CLR_MANUALLY] [numeric](16, 2) NULL,
	[AMT_PAID] [numeric](16, 2) NULL,
	[AMT_CR] [numeric](16, 2) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [varchar](10) NULL,
	[POST_DT] [varchar](10) NULL,
	[DED_USE_FLAG] [numeric](11, 0) NULL,
	[UNDR_TOLRNC_FLG] [numeric](11, 0) NULL,
	[CLSN_DT] [varchar](10) NULL,
	[OPN_FLG] [numeric](11, 0) NULL,
	[CLSN_PD] [smallint] NULL,
	[CLSN_YR] [numeric](11, 0) NULL,
	[HST_INT] [int] NULL,
	[CRE_PD] [smallint] NULL,
	[CRE_YR] [int] NULL,
	[CRE_PD_END_DT] [varchar](10) NULL,
	[CRE_INT] [int] NULL,
	[CRE_FLG] [numeric](11, 0) NULL,
	[INVLD_FLG] [numeric](11, 0) NULL,
	[HST_WK] [smallint] NULL,
	[HST_PD] [smallint] NULL,
	[HST_YR] [int] NULL,
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HST_QTR] [int] NULL,
	[BatchId] [bigint] NULL,
	[CreateDttm] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[REPORT_EXT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgOTCDeductionsLiveSnapshotHistory]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshotHistory](
	[SEQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_ID] [bigint] NULL,
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [int] NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [decimal](18, 0) NULL,
	[FIN_CUSTDISP_AMT] [decimal](18, 0) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [decimal](18, 0) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [decimal](18, 0) NULL,
	[LN_ITM_NBR] [decimal](18, 0) NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [date] NULL,
	[PLN_CLO_DT] [date] NULL,
	[CRE_TM] [decimal](18, 0) NULL,
	[CLS_TM] [decimal](18, 0) NULL,
	[AGE] [int] NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [decimal](18, 0) NULL,
	[CUR_DISPUTED_AMT] [decimal](18, 0) NULL,
	[ORIG_AMT] [decimal](18, 0) NULL,
	[CLR_MANUALLY] [decimal](18, 0) NULL,
	[AMT_PAID] [decimal](18, 0) NULL,
	[AMT_CR] [decimal](18, 0) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [date] NULL,
	[POST_DT] [date] NULL,
	[DED_USE_FLAG] [int] NULL,
	[UNDR_TOLRNC_FLG] [int] NULL,
	[CLSN_DT] [date] NULL,
	[OPN_FLG] [int] NULL,
	[CLSN_PD] [decimal](18, 0) NULL,
	[CLSN_YR] [int] NULL,
	[HST_INT] [decimal](18, 0) NULL,
	[CRE_PD] [decimal](18, 0) NULL,
	[CRE_YR] [decimal](18, 0) NULL,
	[CRE_PD_END_DT] [date] NULL,
	[CRE_INT] [decimal](18, 0) NULL,
	[CRE_FLG] [int] NULL,
	[INVLD_FLG] [int] NULL,
	[HST_WK] [decimal](18, 0) NULL,
	[HST_PD] [decimal](18, 0) NULL,
	[HST_YR] [decimal](18, 0) NULL,
	[HST_QTR] [decimal](18, 0) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgOTCDeductionsOpen]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgOTCDeductionsOpen](
	[SEQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_ID] [bigint] NULL,
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [int] NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [decimal](18, 0) NULL,
	[FIN_CUSTDISP_AMT] [decimal](18, 0) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [decimal](18, 0) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [decimal](18, 0) NULL,
	[LN_ITM_NBR] [decimal](18, 0) NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [date] NULL,
	[PLN_CLO_DT] [date] NULL,
	[CRE_TM] [decimal](18, 0) NULL,
	[CLS_TM] [decimal](18, 0) NULL,
	[AGE] [int] NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [decimal](18, 0) NULL,
	[CUR_DISPUTED_AMT] [decimal](18, 0) NULL,
	[ORIG_AMT] [decimal](18, 0) NULL,
	[CLR_MANUALLY] [decimal](18, 0) NULL,
	[AMT_PAID] [decimal](18, 0) NULL,
	[AMT_CR] [decimal](18, 0) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [date] NULL,
	[POST_DT] [date] NULL,
	[DED_USE_FLAG] [int] NULL,
	[UNDR_TOLRNC_FLG] [int] NULL,
	[CLSN_DT] [date] NULL,
	[OPN_FLG] [int] NULL,
	[CLSN_PD] [decimal](18, 0) NULL,
	[CLSN_YR] [int] NULL,
	[HST_INT] [decimal](18, 0) NULL,
	[CRE_PD] [decimal](18, 0) NULL,
	[CRE_YR] [decimal](18, 0) NULL,
	[CRE_PD_END_DT] [date] NULL,
	[CRE_INT] [decimal](18, 0) NULL,
	[CRE_FLG] [int] NULL,
	[INVLD_FLG] [int] NULL,
	[HST_WK] [decimal](18, 0) NULL,
	[HST_PD] [decimal](18, 0) NULL,
	[HST_YR] [decimal](18, 0) NULL,
	[HST_QTR] [decimal](18, 0) NULL,
	[REPORT_EXT_DT] [date] NULL,
	[ActionFlag] [varchar](10) NULL,
	[Created_Dt] [datetime] NULL,
	[Created_By] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[StgUniqueCases]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[StgUniqueCases](
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DED_SEQ_ID] [bigint] NULL,
	[BatchId] [bigint] NULL,
	[CASE_ID] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](40) NULL,
	[CASE_STATUS] [varchar](20) NULL,
	[CreateDttm] [datetime] NULL,
	[CreateUserId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ACCENTURE].[TESTONE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[TESTONE](
	[EXT_KEY] [varchar](12) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[POID_ID] [varchar](32) NULL,
	[SY_DATUM] [varchar](10) NULL,
	[SY_UZEIT] [varchar](8) NULL,
	[ARG_STRING] [varchar](16) NULL,
	[ARG1] [varchar](200) NULL,
	[ARG2] [varchar](200) NULL,
	[UTC_CHANGE_TIME] [datetime] NULL,
	[CT_CHANGE_TIME] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ACOSTA_HIERARCHY]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACOSTA_HIERARCHY](
	[KLG Banner] [nvarchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [nvarchar](255) NULL,
	[Acosta Retail Bus Mgr] [nvarchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [nvarchar](255) NULL,
	[Frozen Region] [nvarchar](255) NULL,
	[KLG VP DRA Director] [nvarchar](255) NULL,
	[KLG Director MTS] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AE_TABLE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_TABLE](
	[VERSION] [varchar](255) NULL,
	[USER] [varchar](255) NULL,
	[PERSONA] [varchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_TABLE_STAGE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_TABLE_STAGE](
	[VERSION] [varchar](255) NULL,
	[USER] [varchar](255) NULL,
	[PERSONA] [varchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKAFR01_VERSION_1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKAFR01_VERSION_1](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKAFR01_VERSION_2]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKAFR01_VERSION_2](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKAFR01_VERSION_3]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKAFR01_VERSION_3](
	[VERSION] [nvarchar](255) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKBPH02_VERSION_1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKBPH02_VERSION_1](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKBPH02_VERSION_2]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKBPH02_VERSION_2](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKBPH02_VERSION_3]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKBPH02_VERSION_3](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKTIR01_VERSION_1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKTIR01_VERSION_1](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKTIR01_VERSION_2]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKTIR01_VERSION_2](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AE_USKTIR01_VERSION_3]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AE_USKTIR01_VERSION_3](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FF_FEED]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FF_FEED](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PLANTO] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[LAST_PD_GSV_IBP] [numeric](21, 2) NULL,
	[LAST_PD_TRADE_IBP] [numeric](21, 2) NULL,
	[BUD_GSV] [numeric](21, 2) NULL,
	[BUD_KMF] [numeric](21, 2) NULL,
	[BUD_KMF_ADJ] [numeric](21, 2) NULL,
	[BUD_NSV] [numeric](21, 2) NULL,
	[IBP_GSV] [numeric](21, 2) NULL,
	[IBP_KMF] [numeric](21, 2) NULL,
	[IBP_NSV] [numeric](21, 2) NULL,
	[TPM_LE_GSV] [numeric](21, 2) NULL,
	[TPM_LE_KMF] [numeric](21, 2) NULL,
	[LE_COST_OF_PROD] [numeric](21, 2) NULL,
	[LE_LBS] [numeric](21, 2) NULL,
	[SE_GSV_ORIG] [numeric](21, 2) NULL,
	[SE_KMF_ORIG] [numeric](21, 2) NULL,
	[SE_KMF_ADJ] [numeric](21, 2) NULL,
	[YR_AGO_TPM_LE_GSV] [numeric](21, 2) NULL,
	[YR_AGO_TPM_LE_KMF] [numeric](21, 2) NULL,
	[YR_AGO_LE_COST_OF_PROD] [numeric](21, 2) NULL,
	[YR_AGO_LE_LBS] [numeric](21, 2) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FILE_VARIABLES]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FILE_VARIABLES](
	[PLN_TO] [varchar](255) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FILES_TO_IMPORT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FILES_TO_IMPORT](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLD_SALES_UPDT_OUTLK_FEED]    Script Date: 11/20/2018 5:32:21 PM ******/
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
	[BUD_COST_OF_PROD] [decimal](20, 0) NULL,
	[SE_COST_OF_PROD] [decimal](20, 0) NULL,
	[YR_AGO_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YR_AGO_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YR_AGO_LE_COST_OF_PROD] [decimal](17, 2) NULL,
	[YR_AGO_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FLD_SALES_UPDT_OUTLK_FEED_SNPSHOT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FLD_SALES_UPDT_OUTLK_FEED_SNPSHOT](
	[PROCESSING_DT] [date] NULL,
	[LAG_PD] [int] NULL,
	[PLN_TO] [varchar](255) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HIR_SAMPLE_DATA]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIR_SAMPLE_DATA](
	[LEVEL_A] [nvarchar](255) NULL,
	[LEVEL_B] [nvarchar](255) NULL,
	[LEVEL_C] [nvarchar](255) NULL,
	[LEVEL_D] [nvarchar](255) NULL,
	[LEVEL_E] [nvarchar](255) NULL,
	[PLN_TO] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[GSV1] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INSIGHTS_PT_TYP_PRFMNCE_JOE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INSIGHTS_PT_TYP_PRFMNCE_JOE](
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
/****** Object:  Table [dbo].[INV_POS_WM_SM_SUMMARY]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_POS_WM_SM_SUMMARY](
	[WEEK] [int] NULL,
	[RETAILER] [varchar](55) NULL,
	[COUNTRY] [varchar](255) NULL,
	[POS_SALES] [float] NULL,
	[POS_QTY] [float] NULL,
	[ONHANDQTY] [float] NULL,
	[ONHANDRETAIL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_TYPE_snacks]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_TYPE_snacks](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MATERIAL_DIM_TGT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MATERIAL_DIM_TGT](
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[ALT_SEGMENT] [varchar](30) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[INNOVATION_FLAG] [varchar](2) NULL,
	[MATERIAL_RPTG] [varchar](18) NULL,
	[BRAND] [varchar](40) NULL,
	[CATEGORY] [varchar](40) NULL,
	[UPC_CODE] [varchar](15) NULL,
	[DP_MATERIAL] [varchar](18) NULL,
	[MATERIAL_STATUS] [varchar](2) NULL,
	[MATERIAL_CLASS] [varchar](36) NULL,
	[PACKAGE_UNITS] [varchar](40) NULL,
	[STANDARD_PRICE] [decimal](17, 2) NULL,
	[SUBBARAND] [varchar](30) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[UOM] [varchar](3) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[CONTROLLING_AREA] [varchar](4) NULL,
	[CONTENT_UNIT] [varchar](3) NULL,
	[PRODUCT] [varchar](32) NULL,
	[EAN_UPC] [varchar](18) NULL,
	[MATERIAL_GRP] [varchar](9) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[PROD_H1] [varchar](18) NULL,
	[PROD_HIER_TEXT] [varchar](60) NULL,
	[PROD_H2] [varchar](18) NULL,
	[PROD_HIER_TEXT2] [varchar](60) NULL,
	[PROD_H3] [varchar](18) NULL,
	[PROD_HIER_TEXT3] [varchar](60) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_H6] [varchar](18) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PROD_HIERARCHY] [varchar](18) NULL,
	[PRODUCT_HIERARCHY] [varchar](60) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[Net Weight] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_TGT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_TGT](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_DDPO_FORECAST_S]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_DDPO_FORECAST_S](
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
/****** Object:  Table [dbo].[KSOP_MIX_FCST_TMP3]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KSOP_MIX_FCST_TMP3](
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
/****** Object:  Table [dbo].[KUSA_TRACK_GSV_Loader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_GSV_Loader](
	[PT] [nvarchar](255) NULL,
	[PT Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Brand#] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Open Order $] [decimal](38, 5) NULL,
	[PTD GSV$] [decimal](38, 5) NULL,
	[QTD GSV$] [decimal](38, 5) NULL,
	[YTD GSV$] [decimal](38, 5) NULL,
	[PTD YAG GSV$] [decimal](38, 5) NULL,
	[QTD YAG GSV$] [decimal](38, 5) NULL,
	[YTD YAG GSV$] [decimal](38, 5) NULL,
	[Next Period OO] [decimal](38, 5) NULL,
	[Last Refresh Date] [nvarchar](255) NULL,
	[Track Day] [nvarchar](255) NULL,
	[Period] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Today GSV$] [decimal](38, 5) NULL,
	[Today OO$] [decimal](38, 5) NULL,
	[PTD Combo Key] [nvarchar](255) NULL,
	[YEST Combo Key] [nvarchar](255) NULL,
	[YEST OO$] [decimal](38, 5) NULL,
	[YEST GSV$] [decimal](38, 5) NULL,
	[YEST PT] [nvarchar](255) NULL,
	[YEST PT Name] [nvarchar](255) NULL,
	[YEST BU] [nvarchar](255) NULL,
	[YEST Brand#] [nvarchar](255) NULL,
	[YEST Brand] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_INDIRECT_Loader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_INDIRECT_Loader](
	[Period_Year] [nvarchar](255) NULL,
	[PT] [nvarchar](255) NULL,
	[PT Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[CURR PD IND$] [decimal](38, 5) NULL,
	[PTD IND$] [decimal](38, 5) NULL,
	[PTD Pace] [decimal](38, 5) NULL,
	[QTD Pace] [decimal](38, 5) NULL,
	[YTD Pace] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_KPI_Loader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_KPI_Loader](
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
/****** Object:  Table [dbo].[KUSA_TRACK_SHAPE_Loader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_SHAPE_Loader](
	[Shape Pd] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Track Day] [date] NULL,
	[DC Day] [nvarchar](255) NULL,
	[Week] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Cur Shape %] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NORMALIZE_BU_HIERARCHY]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMALIZE_BU_HIERARCHY](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMAHA_OEE_TARGETS]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OMAHA_OEE_TARGETS](
	[REGION] [varchar](50) NULL,
	[BUSINESS_UNIT] [varchar](50) NULL,
	[PLANT] [varchar](50) NULL,
	[LINE] [varchar](50) NULL,
	[METRIC_ID] [varchar](50) NULL,
	[FISC_PD] [bigint] NULL,
	[FISC_YR] [bigint] NULL,
	[TARGET] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLANTO_HIERARCHY_BU]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLANTO_HIERARCHY_BU](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL,
	[Level_A_Morning_Foods] [nvarchar](255) NULL,
	[Level_B_Morning_Foods] [nvarchar](255) NULL,
	[Level_C_Morning_Foods] [nvarchar](255) NULL,
	[Level_D_Morning_Foods] [nvarchar](255) NULL,
	[Level_E_Morning_Foods] [nvarchar](255) NULL,
	[ALL_IN_Flag_Morning_Foods] [nvarchar](255) NULL,
	[Level_A_Frozen] [nvarchar](255) NULL,
	[Level_B_Frozen] [nvarchar](255) NULL,
	[Level_C_Frozen] [nvarchar](255) NULL,
	[Level_D_Frozen] [nvarchar](255) NULL,
	[Level_E_Frozen] [nvarchar](255) NULL,
	[ALL_IN_Flag_Frozen] [nvarchar](255) NULL,
	[Level_A_Kashi] [nvarchar](255) NULL,
	[Level_B_Kashi] [nvarchar](255) NULL,
	[Level_C_Kashi] [nvarchar](255) NULL,
	[Level_D_Kashi] [nvarchar](255) NULL,
	[Level_E_Kashi] [nvarchar](255) NULL,
	[ALL_IN_Flag_Kashi] [nvarchar](255) NULL,
	[Level_A_Snacks] [nvarchar](255) NULL,
	[Level_B_Snacks] [nvarchar](255) NULL,
	[Level_C_Snacks] [nvarchar](255) NULL,
	[Level_D_Snacks] [nvarchar](255) NULL,
	[Level_E_Snacks] [nvarchar](255) NULL,
	[ALL_IN_Flag_Snacks] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLANTO_MAP_N]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLANTO_MAP_N](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLN_TO_CATG]    Script Date: 11/20/2018 5:32:21 PM ******/
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
	[SE3_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_COST_OF_PROD] [decimal](20, 0) NULL,
	[SE_COST_OF_PROD] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMTN_TYP_MT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMTN_TYP_MT](
	[PROMTN_ID] [varchar](24) NULL,
	[CAL_WK] [decimal](6, 0) NULL,
	[PLN_TO] [varchar](10) NULL,
	[TPM_PLN_RETLR_PROMTN_SALES] [decimal](38, 2) NULL,
	[TPM_PLN_TPQ_EA] [decimal](38, 3) NULL,
	[GROS_SALES_USD] [decimal](38, 2) NULL,
	[PLN_SHIP_USD] [decimal](38, 2) NULL,
	[PLN_INCR_VOL_USD] [decimal](38, 2) NULL,
	[PLN_PROMTN_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[LATST_ESTMT_TOTL_NON_TRDE] [decimal](38, 2) NULL,
	[LATST_ESTMT_TOTL_FIX_KMF_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_PROMTN_USD] [decimal](38, 2) NULL,
	[RSRV_TOTL_KMF_USD] [decimal](38, 2) NULL,
	[TOTL_PLN_PROMTN_UNITS] [decimal](38, 2) NULL,
	[RSRV_CSM_TRDE_USD] [decimal](38, 2) NULL,
	[TOTL_MDLED_PROMTN_USD] [decimal](38, 2) NULL,
	[PLN_INCR_COST_OF_PROD_USD] [decimal](38, 2) NULL,
	[DISP] [decimal](17, 2) NULL,
	[FEATUR] [decimal](17, 2) NULL,
	[F_D] [decimal](17, 2) NULL,
	[SUGG_TPQ] [decimal](38, 2) NULL,
	[SUGG_INCR] [decimal](38, 2) NULL,
	[SVP_PLN_SHLF_PRC] [decimal](17, 2) NULL,
	[PLN_INCR_PCT] [decimal](17, 2) NULL,
	[PLN_ACTVTY_GSV] [decimal](38, 2) NULL,
	[EDLP_SPND] [decimal](38, 2) NULL,
	[TPM_PLN_PROMTN_USD_FULL_PRC] [decimal](38, 2) NULL,
	[SVP_SUGSTD_BASE] [decimal](38, 2) NULL,
	[ATPM_PLN_TPQ_LBS] [decimal](38, 3) NULL,
	[ATPM_PLN_TPQ_KGS] [decimal](38, 3) NULL,
	[ATPM_TOTL_PLN_INCR_EA] [decimal](38, 3) NULL,
	[PLN_PROMTN_BASE_UNITS] [decimal](38, 3) NULL,
	[INCR_EDLP_SPND] [decimal](38, 6) NULL,
	[ATPM_PLN_EST_SHIP_VOL] [decimal](38, 3) NULL,
	[ATPM_PLN_SHIP_EA] [decimal](38, 3) NULL,
	[ACTVTY_DESC] [varchar](40) NULL,
	[DESC] [varchar](40) NULL,
	[ACTVTY_TYP] [varchar](2) NULL,
	[SHIP_DT_FR] [varchar](10) NULL,
	[SHIP_DT_TO] [varchar](10) NULL,
	[PROMTN_DESC] [varchar](40) NULL,
	[SCNR_APPS_ID] [varchar](60) NULL,
	[EMPL_RESP] [varchar](10) NULL,
	[CHG_BY] [varchar](12) NULL,
	[LAST_CHG_ON] [varchar](10) NULL,
	[PERS_NM] [varchar](12) NULL,
	[DT_CRE] [varchar](10) NULL,
	[CMPGN_TYP] [varchar](4) NULL,
	[CMPGN_DESC] [varchar](40) NULL,
	[PLN_DT_FR] [varchar](10) NULL,
	[PROMTN_ST_VAL] [int] NULL,
	[PLN_DT_TO] [varchar](10) NULL,
	[KEY_EVNT] [varchar](3) NULL,
	[CURR_KEY] [varchar](5) NULL,
	[PD] [varchar](31) NULL,
	[PD_NBR] [decimal](3, 0) NULL,
	[PD_YR] [varchar](62) NULL,
	[QTR] [varchar](31) NULL,
	[QTR_NBR] [decimal](3, 0) NULL,
	[QTR_YR] [varchar](62) NULL,
	[YR] [decimal](4, 0) NULL,
	[ALTN_CATG] [varchar](30) NULL,
	[ALTN_SUB_CATG] [varchar](30) NULL,
	[PROD_H4] [varchar](10) NULL,
	[PROD_HIER_TXT4] [varchar](40) NULL,
	[PROD_H5] [varchar](14) NULL,
	[PROD_HIER_TXT5] [varchar](40) NULL,
	[BU] [varchar](60) NULL,
	[PLANTO] [varchar](255) NULL,
	[PLANTO_NM] [varchar](255) NULL,
	[LVL_A] [varchar](255) NULL,
	[LVL_B] [varchar](255) NULL,
	[LVL_C] [varchar](255) NULL,
	[LVL_D] [varchar](255) NULL,
	[LVL_E] [varchar](255) NULL,
	[ALL_IN_FLG] [varchar](1) NULL,
	[TIER_NM] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[CAN_CATG] [varchar](255) NULL,
	[TENT_POLE_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RGM_TABLE_Snacks]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RGM_TABLE_Snacks](
	[CUST] [varchar](10) NULL,
	[BU] [varchar](60) NULL,
	[PROD_HIER_TYPE] [varchar](14) NULL,
	[POSTNG_YR] [decimal](4, 0) NULL,
	[POSTNG_PD] [decimal](3, 0) NULL,
	[YR_QTR] [varchar](10) NOT NULL,
	[TPM_LE_GSV] [decimal](38, 2) NULL,
	[TPM_LE_KMF] [decimal](38, 2) NULL,
	[LE_COP] [decimal](38, 2) NULL,
	[LE_LBS] [decimal](38, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SECURITY_TABLE_TEST_BEN]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECURITY_TABLE_TEST_BEN](
	[PERSONA] [nvarchar](255) NULL,
	[USER] [nvarchar](255) NULL,
	[TEAM] [nvarchar](255) NULL,
	[PLANTOS] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SP_USKPRA01_VERSION_1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_USKPRA01_VERSION_1](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_USKPRA01_VERSION_2]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_USKPRA01_VERSION_2](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_USKPRA01_VERSION_3]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_USKPRA01_VERSION_3](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_USKVIJI01_VERSION_1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_USKVIJI01_VERSION_1](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_USKVIJI01_VERSION_2]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_USKVIJI01_VERSION_2](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_USKVIJI01_VERSION_3]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_USKVIJI01_VERSION_3](
	[VERSION] [nvarchar](521) NULL,
	[USER] [nvarchar](255) NULL,
	[PERSONA] [nvarchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[PLN_TO] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[POSTNG_PD] [varchar](3) NULL,
	[POSTNG_YR] [varchar](4) NULL,
	[TEMP_GSV] [numeric](21, 2) NULL,
	[TEMP_KMF] [numeric](21, 2) NULL,
	[CREATED] [datetime] NOT NULL,
	[COMMENT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WKLY_SALES_SHIPMNT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WKLY_SALES_SHIPMNT](
	[FISC_PD_YR] [varchar](69) NULL,
	[CAL_WK] [varchar](7) NULL,
	[PLN_TO_NBR] [varchar](255) NULL,
	[PLN_TO_NM] [varchar](255) NULL,
	[BU] [varchar](60) NULL,
	[CATG] [varchar](30) NULL,
	[GROS_SALES_DOL] [decimal](38, 2) NULL,
	[GROS_SALES_LBS] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKCXR28].[FISCAL_CALENDAR]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [US\USKCXR28].[FISCAL_CALENDAR](
	[DATE] [date] NULL,
	[FISC_YR] [decimal](5, 0) NULL,
	[FISC_QTR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](4, 0) NULL,
	[FISC_WK] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [US\USKCXR28].[FX_RATE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [US\USKCXR28].[FX_RATE](
	[CALDAY] [date] NULL,
	[FX_RATE] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [US\USKCXR28].[OEE_KPI_TABLEAU_KPI_NAME]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKCXR28].[OEE_KPI_TABLEAU_KPI_NAME](
	[KPI_NAME] [varchar](255) NULL,
	[CHART_TYPE] [varchar](255) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKCXR28].[PLANT_LEVEL_TARGETS]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKCXR28].[PLANT_LEVEL_TARGETS](
	[REGION] [char](3) NULL,
	[BUSINESS_UNIT] [char](17) NULL,
	[PLANT] [char](12) NULL,
	[LINE] [char](11) NULL,
	[METRIC_ID] [char](20) NULL,
	[FISC_PD] [float] NULL,
	[FISC_YR] [float] NULL,
	[TARGET] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKCXR28].[TEMP_ISM_TARGETS]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKCXR28].[TEMP_ISM_TARGETS](
	[REGION] [varchar](100) NULL,
	[BUSINESS_UNIT] [varchar](100) NULL,
	[PLANT] [varchar](100) NULL,
	[LINE] [varchar](100) NULL,
	[FISC_PD] [varchar](4) NULL,
	[FISC_YR] [int] NULL,
	[METRIC_ID] [varchar](100) NULL,
	[ACTUAL] [decimal](28, 10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKEJC05].[Media_for_RTEC_Drilldown_agg_vf]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USKEJC05].[Media_for_RTEC_Drilldown_agg_vf](
	[COUNTRY_NAME] [nvarchar](255) NULL,
	[GL_MANUFACTURER] [nvarchar](255) NULL,
	[GL_BRAND] [nvarchar](255) NULL,
	[PERIOD_TAG] [nvarchar](255) NULL,
	[LATEST_YEAR] [nvarchar](255) NULL,
	[LATEST_MONTH] [nvarchar](255) NULL,
	[YEAR_MONTH] [nvarchar](255) NULL,
	[YEAR] [nvarchar](255) NULL,
	[MONTH] [nvarchar](255) NULL,
	[ACTUAL_GRPS] [nvarchar](255) NULL,
	[REPORTED_MEDIA_SPENDS] [nvarchar](255) NULL,
	[REPORTED_MEDIA_TV_SPENDS] [nvarchar](255) NULL,
	[REPORTED_MEDIA_PRINT_SPENDS] [nvarchar](255) NULL,
	[REPORTED_MEDIA_RADIO_SPENDS] [nvarchar](255) NULL,
	[REPORTED_MEDIA_DIGITAL_SPENDS] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USKEJC05].[RTEC_Consolidated_RedSlim_Data]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USKEJC05].[RTEC_Consolidated_RedSlim_Data](
	[COUNTRY_NAME] [nvarchar](255) NULL,
	[MARKET_TAG] [nvarchar](255) NULL,
	[GL_STORE_TYPES] [nvarchar](255) NULL,
	[GL_COUNTRY_RANK] [nvarchar](255) NULL,
	[PRODUCT_TAG] [nvarchar](255) NULL,
	[GL_MANUFACTURER] [nvarchar](255) NULL,
	[GL_LEVEL] [nvarchar](255) NULL,
	[GL_CATEGORY] [nvarchar](255) NULL,
	[GL_SEGMENT] [nvarchar](255) NULL,
	[GL_BRAND] [nvarchar](255) NULL,
	[GL_TARGET] [nvarchar](255) NULL,
	[PERIOD_TAG] [nvarchar](255) NULL,
	[YEAR] [nvarchar](255) NULL,
	[MONTH] [nvarchar](255) NULL,
	[VALUE] [nvarchar](255) NULL,
	[VOLUME] [nvarchar](255) NULL,
	[UNIT] [nvarchar](255) NULL,
	[WTDDIST] [nvarchar](255) NULL,
	[SUMWTDDIST] [nvarchar](255) NULL,
	[YEAR_MONTH] [nvarchar](255) NULL,
	[LATEST_DATEREF] [nvarchar](255) NULL,
	[LATEST_YEAR] [nvarchar](255) NULL,
	[LATEST_MONTH] [nvarchar](255) NULL,
	[PREMIUM_CORE_FLAG] [nvarchar](255) NULL,
	[HH_COUNTRY] [nvarchar](255) NULL,
	[HH_MANUFACTURER] [nvarchar](255) NULL,
	[HH_BRAND] [nvarchar](255) NULL,
	[HH_TARGET] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USKEJC05].[RTEC_Homepanel_Dataset]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USKEJC05].[RTEC_Homepanel_Dataset](
	[COUNTRY NAME] [nvarchar](255) NULL,
	[GL MANUFACTURER] [nvarchar](255) NULL,
	[GL BRAND] [nvarchar](255) NULL,
	[GL TARGET] [nvarchar](255) NULL,
	[PERIOD TAG] [nvarchar](255) NULL,
	[PENETRATION] [nvarchar](255) NULL,
	[SPEND PER HH] [nvarchar](255) NULL,
	[VOLUME PER HH] [nvarchar](255) NULL,
	[AVERAGE FREQUENCY] [nvarchar](255) NULL,
	[SPEND PER TRIP] [nvarchar](255) NULL,
	[VOLUME PER TRIP] [nvarchar](255) NULL,
	[REPEATED BUYERS] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [USKEJC05].[test_table]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKEJC05].[test_table](
	[field1] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKJDW73].[KLG_KPEL_TPM]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKJDW73].[KLG_KPEL_TPM](
	[Promo_ID] [varchar](255) NULL,
	[Plan_To_Number] [varchar](255) NULL,
	[Retailer_Dollars] [decimal](38, 2) NULL,
	[Promo_Units] [decimal](38, 3) NULL,
	[Incr_GSV_Dollars] [decimal](38, 2) NULL,
	[Promo_COP] [decimal](38, 2) NULL,
	[Promo_GSV_Dollars] [decimal](38, 2) NULL,
	[Total_KMF] [decimal](38, 2) NULL,
	[Promo_Incremental_COP] [decimal](38, 2) NULL,
	[Total_Investment] [decimal](38, 2) NULL,
	[Incremental_Contribution_Dollars] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[Promo_Desc] [varchar](255) NULL,
	[Promo_Start_Date] [varchar](255) NULL,
	[Promo_End_Date] [varchar](255) NULL,
	[Key_Event_Desc] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[Type] [varchar](255) NULL,
	[Qtr_Num] [varchar](255) NULL,
	[YEAR] [varchar](255) NULL,
	[Source] [varchar](255) NULL,
	[Promo_Incremental_Units] [decimal](38, 2) NULL,
	[Promo_LB] [decimal](38, 2) NULL,
	[Business_Unit] [varchar](255) NULL,
	[Promo_Base_Units] [varchar](255) NULL,
	[Promo_Fixed_Fees] [varchar](255) NULL,
	[F&D] [decimal](17, 2) NULL,
	[FEAT] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKJDW73].[KLG_PRICE_IMPACT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKJDW73].[KLG_PRICE_IMPACT](
	[CUSTOMER] [varchar](10) NULL,
	[Period Year] [varchar](10) NULL,
	[GSV Price Chg] [decimal](38, 6) NULL,
	[Type Name] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKJDW73].[KLG_PROMO_MAT_OTC]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKJDW73].[KLG_PROMO_MAT_OTC](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[Planned Ship Cases] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[Brand] [varchar](60) NULL,
	[Type] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL,
	[Update Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKJDW73].[PLANTO_TYPE_PER_PERFORM]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKJDW73].[PLANTO_TYPE_PER_PERFORM](
	[PT# TEXT] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Level A] [nvarchar](255) NULL,
	[Level B] [nvarchar](255) NULL,
	[Level C] [nvarchar](255) NULL,
	[Level D] [nvarchar](255) NULL,
	[Level E] [nvarchar](255) NULL,
	[Tier Name] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Business Unit] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Sub Category] [varchar](30) NULL,
	[Brand ID] [varchar](18) NULL,
	[Brand Name] [varchar](60) NULL,
	[Type ID] [varchar](18) NULL,
	[Type Name] [varchar](60) NULL,
	[Material ID] [varchar](18) NULL,
	[Material Desc] [varchar](40) NULL,
	[GGS Brand Priority Number] [nvarchar](255) NULL,
	[GGS Brand Priority] [nvarchar](255) NULL,
	[GGS Brand Sub Priority] [nvarchar](255) NULL,
	[YEAR] [varchar](4) NULL,
	[Quarter] [varchar](1) NULL,
	[Period Year] [varchar](10) NULL,
	[Period] [int] NULL,
	[Size] [nvarchar](255) NULL,
	[LE GSV] [decimal](38, 2) NULL,
	[LE COP] [decimal](38, 2) NULL,
	[LE KMF $] [decimal](38, 2) NULL,
	[LE Ship LB] [decimal](38, 3) NULL,
	[LE Ship Units] [decimal](38, 3) NULL,
	[Plan KMF] [decimal](38, 2) NULL,
	[LE NSV PRXY $] [decimal](38, 2) NULL,
	[LE SC PRXY $] [decimal](38, 2) NULL,
	[LE SC PRXY $ GSV] [decimal](38, 2) NULL,
	[LE COP Fixed] [decimal](38, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKJDW73].[PROMO_TYPE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKJDW73].[PROMO_TYPE](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[Ca Category] [varchar](255) NULL,
	[TENT_POLE_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKJDW73].[PROMO_TYPE_n]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKJDW73].[PROMO_TYPE_n](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[TIER] [varchar](255) NULL,
	[AKV] [decimal](17, 3) NULL,
	[Ca Category] [varchar](255) NULL,
	[TENT_POLE_DESC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USKS1W02].[WM_INV]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USKS1W02].[WM_INV](
	[CUSTOMER_CODE] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[TRANSACTION_DATE] [date] NULL,
	[DAYNAME] [nvarchar](30) NULL,
	[FISC_WEEK] [int] NULL,
	[FISC_YEAR] [int] NULL,
	[FISC_YR_WK] [varchar](33) NULL,
	[ONHANDQTY] [int] NULL,
	[ONHANDRETAIL] [float] NULL,
	[NWEA] [int] NULL,
	[NTEA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [US\USKCXR28].[OEE_DATA]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[OEE_DATA]
AS
SELECT        REGION, PLANT, BUSINESS_UNIT, LINE, FISC_PD, FISC_YR, ACTUAL, TARGET, METRIC_ID, CASE WHEN [ACTUAL] IS NULL 
                         THEN [TARGET] ELSE [ACTUAL] END AS OEE_DATA
FROM            KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS

GO
/****** Object:  View [US\USKCXR28].[OEE_DATA_FINAL]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[OEE_DATA_FINAL]
AS
SELECT DISTINCT 
                         REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR, SUM(ALL_SCH_UNSCH) AS ALL_SCH_UNSCH, SUM(ELAPSE_TIME) AS ELAPSE_TIME, 
                         SUM(OVERWEIGHTS_NMR) AS OVERWEIGHTS_NMR, SUM(OVERWEIGHTS_DNR) AS OVERWEIGHTS_DNR, SUM(QUALITY_Q_NMR) AS QUALITY_Q_NMR, 
                         SUM(QUALITY_Q_DNR) AS QUALITY_Q_DNR, SUM(RATE_R_NMR) AS RATE_R_NMR, SUM(RATE_R_DNR) AS RATE_R_DNR, SUM(SCH_CAPITAL_PROJECT) 
                         AS SCH_CAPITAL_PROJECT, SUM(SCH_CHANGE_OVER) AS SCH_CHANGE_OVER, SUM(SCH_CLEANUP_SANITATION) AS SCH_CLEANUP_SANITATION, 
                         SUM(SCH_DOWN) AS SCH_DOWN, SUM(SCH_FOOD_SAFETY) AS SCH_FOOD_SAFETY, SUM(SCH_FUMIGATION) AS SCH_FUMIGATION, SUM(SCH_HOLIDAY) 
                         AS SCH_HOLIDAY, SUM(SCH_MAINTENANCE) AS SCH_MAINTENANCE, SUM(SCH_NO_DEMAND) AS SCH_NO_DEMAND, SUM(SCH_OPERATION) 
                         AS SCH_OPERATION, SUM(SCH_SETUP_STARTUP) AS SCH_SETUP_STARTUP, SUM(SCH_TEST_TRIAL) AS SCH_TEST_TRIAL, SUM(SCH_UTILITY_OUTAGE) 
                         AS SCH_UTILITY_OUTAGE, SUM(SCRAP_NMR) AS SCRAP_NMR, SUM(SCRAP_DNR) AS SCRAP_DNR, SUM(UNSCH_CAPITAL_PROJECT) 
                         AS UNSCH_CAPITAL_PROJECT, SUM(UNSCH_CLEANUP_SANITATION) AS UNSCH_CLEANUP_SANITATION, SUM(UNSCH_FOOD_SAFETY) AS UNSCH_FOOD_SAFETY, 
                         SUM(UNSCH_MAINTENANCE) AS UNSCH_MAINTENANCE, SUM(UNSCH_MATERIAL) AS UNSCH_MATERIAL, SUM(UNSCH_NO_CREW) AS UNSCH_NO_CREW, 
                         SUM(UNSCH_OPERATIONS) AS UNSCH_OPERATIONS, SUM(UNSCH_UTILITY_OUTAGE) AS UNSCH_UTILITY_OUTAGE, SUM(UNSCH_WEATHER) 
                         AS UNSCH_WEATHER, SUM(PLNT_RELIABILITY_TGT) AS PLNT_RELIABILITY_TGT
FROM            [KG_SANDBOX].[US\USKCXR28].[OEE_DATA] AS SourceTable PIVOT (SUM(OEE_DATA) FOR METRIC_ID IN (ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, 
                         OVERWEIGHTS_DNR, QUALITY_Q_NMR, QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, 
                         SCH_CLEANUP_SANITATION, SCH_DOWN, SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, SCH_NO_DEMAND, SCH_OPERATION, 
                         SCH_SETUP_STARTUP, SCH_TEST_TRIAL, SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, 
                         UNSCH_FOOD_SAFETY, UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, 
                         PLNT_RELIABILITY_TGT)) AS PivotTable
GROUP BY REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR

GO
/****** Object:  View [US\USKCXR28].[OEE_DATA_PREVIOUS_FINAL]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[OEE_DATA_PREVIOUS_FINAL]
AS
WITH Tool13_f6cf AS (SELECT        REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR, ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, 
                                                                         QUALITY_Q_NMR, QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, 
                                                                         SCH_CLEANUP_SANITATION, SCH_DOWN, SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, SCH_NO_DEMAND, 
                                                                         SCH_OPERATION, SCH_SETUP_STARTUP, SCH_TEST_TRIAL, SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, 
                                                                         UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, UNSCH_FOOD_SAFETY, UNSCH_MAINTENANCE, UNSCH_MATERIAL, 
                                                                         UNSCH_NO_CREW, UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, PLNT_RELIABILITY_TGT
                                                FROM            [US\USKCXR28].OEE_DATA_FINAL), Tool32_4fa4 AS
    (SELECT        REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR, ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, QUALITY_Q_NMR, 
                                QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, SCH_CLEANUP_SANITATION, SCH_DOWN, 
                                SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, SCH_NO_DEMAND, SCH_OPERATION, SCH_SETUP_STARTUP, SCH_TEST_TRIAL, 
                                SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, UNSCH_FOOD_SAFETY, 
                                UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, 
                                PLNT_RELIABILITY_TGT, FISC_YR - 1 AS PREV_YEAR
      FROM            Tool13_f6cf AS Tool13_f6cf_1), Tool36_f6cf AS
    (SELECT        REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR, ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, QUALITY_Q_NMR, 
                                QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, SCH_CLEANUP_SANITATION, SCH_DOWN, 
                                SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, SCH_NO_DEMAND, SCH_OPERATION, SCH_SETUP_STARTUP, SCH_TEST_TRIAL, 
                                SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, UNSCH_FOOD_SAFETY, 
                                UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, 
                                PLNT_RELIABILITY_TGT
      FROM            [US\USKCXR28].OEE_DATA_FINAL AS OEE_DATA_FINAL_1), Tool35_8d33 AS
    (SELECT        Tool32_4fa4_1.REGION, Tool32_4fa4_1.BUSINESS_UNIT, Tool32_4fa4_1.PLANT, Tool32_4fa4_1.LINE, Tool32_4fa4_1.FISC_PD, Tool32_4fa4_1.FISC_YR, 
                                Tool32_4fa4_1.ALL_SCH_UNSCH, Tool32_4fa4_1.ELAPSE_TIME, Tool32_4fa4_1.OVERWEIGHTS_NMR, Tool32_4fa4_1.OVERWEIGHTS_DNR, 
                                Tool32_4fa4_1.QUALITY_Q_NMR, Tool32_4fa4_1.QUALITY_Q_DNR, Tool32_4fa4_1.RATE_R_NMR, Tool32_4fa4_1.RATE_R_DNR, 
                                Tool32_4fa4_1.SCH_CAPITAL_PROJECT, Tool32_4fa4_1.SCH_CHANGE_OVER, Tool32_4fa4_1.SCH_CLEANUP_SANITATION, Tool32_4fa4_1.SCH_DOWN, 
                                Tool32_4fa4_1.SCH_FOOD_SAFETY, Tool32_4fa4_1.SCH_FUMIGATION, Tool32_4fa4_1.SCH_HOLIDAY, Tool32_4fa4_1.SCH_MAINTENANCE, 
                                Tool32_4fa4_1.SCH_NO_DEMAND, Tool32_4fa4_1.SCH_OPERATION, Tool32_4fa4_1.SCH_SETUP_STARTUP, Tool32_4fa4_1.SCH_TEST_TRIAL, 
                                Tool32_4fa4_1.SCH_UTILITY_OUTAGE, Tool32_4fa4_1.SCRAP_NMR, Tool32_4fa4_1.SCRAP_DNR, Tool32_4fa4_1.UNSCH_CAPITAL_PROJECT, 
                                Tool32_4fa4_1.UNSCH_CLEANUP_SANITATION, Tool32_4fa4_1.UNSCH_FOOD_SAFETY, Tool32_4fa4_1.UNSCH_MAINTENANCE, 
                                Tool32_4fa4_1.UNSCH_MATERIAL, Tool32_4fa4_1.UNSCH_NO_CREW, Tool32_4fa4_1.UNSCH_OPERATIONS, Tool32_4fa4_1.UNSCH_UTILITY_OUTAGE, 
                                Tool32_4fa4_1.UNSCH_WEATHER, Tool32_4fa4_1.PLNT_RELIABILITY_TGT, Tool32_4fa4_1.PREV_YEAR, Tool36_f6cf_1.REGION AS R_REGION, 
                                Tool36_f6cf_1.BUSINESS_UNIT AS R_BUSINESS_UNIT, Tool36_f6cf_1.PLANT AS R_PLANT, Tool36_f6cf_1.LINE AS R_LINE, 
                                Tool36_f6cf_1.FISC_PD AS R_FISC_PD, Tool36_f6cf_1.FISC_YR AS R_FISC_YR, Tool36_f6cf_1.ALL_SCH_UNSCH AS R_ALL_SCH_UNSCH, 
                                Tool36_f6cf_1.ELAPSE_TIME AS R_ELAPSE_TIME, Tool36_f6cf_1.OVERWEIGHTS_NMR AS R_OVERWEIGHTS_NMR, 
                                Tool36_f6cf_1.OVERWEIGHTS_DNR AS R_OVERWEIGHTS_DNR, Tool36_f6cf_1.QUALITY_Q_NMR AS R_QUALITY_Q_NMR, 
                                Tool36_f6cf_1.QUALITY_Q_DNR AS R_QUALITY_Q_DNR, Tool36_f6cf_1.RATE_R_NMR AS R_RATE_R_NMR, Tool36_f6cf_1.RATE_R_DNR AS R_RATE_R_DNR, 
                                Tool36_f6cf_1.SCH_CAPITAL_PROJECT AS R_SCH_CAPITAL_PROJECT, Tool36_f6cf_1.SCH_CHANGE_OVER AS R_SCH_CHANGE_OVER, 
                                Tool36_f6cf_1.SCH_CLEANUP_SANITATION AS R_SCH_CLEANUP_SANITATION, Tool36_f6cf_1.SCH_DOWN AS R_SCH_DOWN, 
                                Tool36_f6cf_1.SCH_FOOD_SAFETY AS R_SCH_FOOD_SAFETY, Tool36_f6cf_1.SCH_FUMIGATION AS R_SCH_FUMIGATION, 
                                Tool36_f6cf_1.SCH_HOLIDAY AS R_SCH_HOLIDAY, Tool36_f6cf_1.SCH_MAINTENANCE AS R_SCH_MAINTENANCE, 
                                Tool36_f6cf_1.SCH_NO_DEMAND AS R_SCH_NO_DEMAND, Tool36_f6cf_1.SCH_OPERATION AS R_SCH_OPERATION, 
                                Tool36_f6cf_1.SCH_SETUP_STARTUP AS R_SCH_SETUP_STARTUP, Tool36_f6cf_1.SCH_TEST_TRIAL AS R_SCH_TEST_TRIAL, 
                                Tool36_f6cf_1.SCH_UTILITY_OUTAGE AS R_SCH_UTILITY_OUTAGE, Tool36_f6cf_1.SCRAP_NMR AS R_SCRAP_NMR, 
                                Tool36_f6cf_1.SCRAP_DNR AS R_SCRAP_DNR, Tool36_f6cf_1.UNSCH_CAPITAL_PROJECT AS R_UNSCH_CAPITAL_PROJECT, 
                                Tool36_f6cf_1.UNSCH_CLEANUP_SANITATION AS R_UNSCH_CLEANUP_SANITATION, Tool36_f6cf_1.UNSCH_FOOD_SAFETY AS R_UNSCH_FOOD_SAFETY, 
                                Tool36_f6cf_1.UNSCH_MAINTENANCE AS R_UNSCH_MAINTENANCE, Tool36_f6cf_1.UNSCH_MATERIAL AS R_UNSCH_MATERIAL, 
                                Tool36_f6cf_1.UNSCH_NO_CREW AS R_UNSCH_NO_CREW, Tool36_f6cf_1.UNSCH_OPERATIONS AS R_UNSCH_OPERATIONS, 
                                Tool36_f6cf_1.UNSCH_UTILITY_OUTAGE AS R_UNSCH_UTILITY_OUTAGE, Tool36_f6cf_1.UNSCH_WEATHER AS R_UNSCH_WEATHER, 
                                Tool36_f6cf_1.PLNT_RELIABILITY_TGT AS R_PLNT_RELIABILITY_TGT
      FROM            Tool32_4fa4 AS Tool32_4fa4_1 INNER JOIN
                                Tool36_f6cf AS Tool36_f6cf_1 ON Tool32_4fa4_1.REGION = Tool36_f6cf_1.REGION AND Tool32_4fa4_1.BUSINESS_UNIT = Tool36_f6cf_1.BUSINESS_UNIT AND 
                                Tool32_4fa4_1.PLANT = Tool36_f6cf_1.PLANT AND Tool32_4fa4_1.LINE = Tool36_f6cf_1.LINE AND Tool32_4fa4_1.PREV_YEAR = Tool36_f6cf_1.FISC_YR AND 
                                Tool32_4fa4_1.FISC_PD = Tool36_f6cf_1.FISC_PD)
    SELECT        REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR, ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, QUALITY_Q_NMR, 
                              QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, SCH_CLEANUP_SANITATION, SCH_DOWN, SCH_FOOD_SAFETY, 
                              SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, SCH_NO_DEMAND, SCH_OPERATION, SCH_SETUP_STARTUP, SCH_TEST_TRIAL, 
                              SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, UNSCH_FOOD_SAFETY, 
                              UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, PLNT_RELIABILITY_TGT, 
                              PREV_YEAR, R_ALL_SCH_UNSCH AS PREV_YEAR_ALL_SCH_UNSCH, R_ELAPSE_TIME AS PREV_YEAR_ELAPSE_TIME, 
                              R_OVERWEIGHTS_NMR AS PREV_YEAR_OVERWEIGHTS_NMR, R_OVERWEIGHTS_DNR AS PREV_YEAR_OVERWEIGHTS_DNR, 
                              R_QUALITY_Q_NMR AS PREV_YEAR_QUALITY_Q_NMR, R_QUALITY_Q_DNR AS PREV_YEAR_QUALITY_Q_DNR, 
                              R_RATE_R_NMR AS PREV_YEAR_RATE_R_NMR, R_RATE_R_DNR AS PREV_YEAR_RATE_R_DNR, 
                              R_SCH_CAPITAL_PROJECT AS PREV_YEAR_SCH_CAPITAL_PROJECT, R_SCH_CHANGE_OVER AS PREV_YEAR_SCH_CHANGE_OVER, 
                              R_SCH_CLEANUP_SANITATION AS PREV_YEAR_SCH_CLEANUP_SANITATION, R_SCH_DOWN AS PREV_YEAR_SCH_DOWN, 
                              R_SCH_FOOD_SAFETY AS PREV_YEAR_SCH_FOOD_SAFETY, R_SCH_FUMIGATION AS PREV_YEAR_SCH_FUMIGATION, 
                              R_SCH_HOLIDAY AS PREV_YEAR_SCH_HOLIDAY, R_SCH_MAINTENANCE AS PREV_YEAR_SCH_MAINTENANCE, 
                              R_SCH_NO_DEMAND AS PREV_YEAR_SCH_NO_DEMAND, R_SCH_OPERATION AS PREV_YEAR_SCH_OPERATION, 
                              R_SCH_SETUP_STARTUP AS PREV_YEAR_SCH_SETUP_STARTUP, R_SCH_TEST_TRIAL AS PREV_YEAR_SCH_TEST_TRIAL, 
                              R_SCH_UTILITY_OUTAGE AS PREV_YEAR_SCH_UTILITY_OUTAGE, R_SCRAP_NMR AS PREV_YEAR_SCRAP_NMR, R_SCRAP_DNR AS PREV_YEAR_SCRAP_DNR, 
                              R_UNSCH_CAPITAL_PROJECT AS PREV_YEAR_UNSCH_CAPITAL_PROJECT, R_UNSCH_CLEANUP_SANITATION AS PREV_YEAR_UNSCH_CLEANUP_SANITATION, 
                              R_UNSCH_FOOD_SAFETY AS PREV_YEAR_UNSCH_FOOD_SAFETY, R_UNSCH_MAINTENANCE AS PREV_YEAR_UNSCH_MAINTENANCE, 
                              R_UNSCH_MATERIAL AS PREV_YEAR_UNSCH_MATERIAL, R_UNSCH_NO_CREW AS PREV_YEAR_UNSCH_NO_CREW, 
                              R_UNSCH_OPERATIONS AS PREV_YEAR_UNSCH_OPERATIONS, R_UNSCH_UTILITY_OUTAGE AS PREV_YEAR_UNSCH_UTILITY_OUTAGE, 
                              R_UNSCH_WEATHER AS PREV_YEAR_UNSCH_WEATHER, R_PLNT_RELIABILITY_TGT AS PREV_YEAR_PLNT_RELIABILITY_TGT
     FROM            Tool35_8d33 AS Tool35_8d33_1

GO
/****** Object:  View [US\USKCXR28].[ISM_PR_TARGET]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [US\USKCXR28].[ISM_PR_TARGET] AS 
SELECT DISTINCT 
[REGION],
[PLANT],
[LINE],
[FISC_PD],
[FISC_YR],
PLNT_RELIABILITY_TGT AS 'PR TARGET'
FROM [KG_ANALYTICS_APPS].[ISM].[OEE_TRANSACTIONS] AS SourceTable
PIVOT
(SUM([TARGET])
FOR [METRIC_ID]
IN (PLNT_RELIABILITY_TGT)) AS PivotTable
WHERE PLNT_RELIABILITY_TGT IS NOT NULL
GROUP BY [REGION], [PLANT], [LINE], [FISC_YR], [FISC_PD], PLNT_RELIABILITY_TGT

GO
/****** Object:  View [US\USKCXR28].[UVW_ISM_OEE_TRANSACTIONS_CRR_PIVOT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[UVW_ISM_OEE_TRANSACTIONS_CRR_PIVOT]
AS
WITH Tool1_d906 AS (SELECT REGION, PLANT, LINE, FISC_YR, FISC_PD, ELAPSE_TIME_ACTUAL, ELAPSE_TIME_TARGET, AVL_ELEMENT_LOSSES_ACTUAL, 
                                                            AVL_ELEMENT_LOSSES_TARGET, SCH_CAPITAL_PROJECT_ACTUAL, SCH_CAPITAL_PROJECT_TARGET, SCH_CHANGE_OVER_ACTUAL, 
                                                            SCH_CHANGE_OVER_TARGET, SCH_CLEANUP_SANITATION_ACTUAL, SCH_CLEANUP_SANITATION_TARGET, SCH_DOWN_ACTUAL, 
                                                            SCH_DOWN_TARGET, SCH_FOOD_SAFETY_ACTUAL, SCH_FOOD_SAFETY_TARGET, SCH_FUMIGATION_ACTUAL, SCH_FUMIGATION_TARGET, 
                                                            SCH_HOLIDAY_ACTUAL, SCH_HOLIDAY_TARGET, SCH_MAINTENANCE_ACTUAL, SCH_MAINTENANCE_TARGET, SCH_NO_DEMAND_ACTUAL, 
                                                            SCH_NO_DEMAND_TARGET, SCH_OPERATION_ACTUAL, SCH_OPERATION_TARGET, SCH_SETUP_STARTUP_ACTUAL, 
                                                            SCH_SETUP_STARTUP_TARGET, SCH_TEST_TRIAL_ACTUAL, SCH_TEST_TRIAL_TARGET, SCH_UTILITY_OUTAGE_ACTUAL, 
                                                            SCH_UTILITY_OUTAGE_TARGET, UNSCH_CAPITAL_PROJECT_ACTUAL, UNSCH_CAPITAL_PROJECT_TARGET, 
                                                            UNSCH_CLEANUP_SANITATION_ACTUAL, UNSCH_CLEANUP_SANITATION_TARGET, UNSCH_FOOD_SAFETY_ACTUAL, 
                                                            UNSCH_FOOD_SAFETY_TARGET, UNSCH_MAINTENANCE_ACTUAL, UNSCH_MAINTENANCE_TARGET, UNSCH_MATERIAL_ACTUAL, 
                                                            UNSCH_MATERIAL_TARGET, UNSCH_NO_CREW_ACTUAL, UNSCH_OPERATIONS_ACTUAL, UNSCH_NO_CREW_TARGET, 
                                                            UNSCH_OPERATIONS_TARGET, UNSCH_UTILITY_OUTAGE_ACTUAL, UNSCH_UTILITY_OUTAGE_TARGET, UNSCH_WEATHER_ACTUAL, 
                                                            UNSCH_WEATHER_TARGET, ALL_SCH_UNSCH_ACTUAL, ALL_SCH_UNSCH_TARGET, ANET_TGT_NMR_ACTUAL, ANET_TGT_NMR_TARGET, 
                                                            RATE_LOSS_ACTUAL, RATE_LOSS_TARGET, R_TGT_NMR_ACTUAL, R_TGT_NMR_TARGET, OVERWEIGHT_ACTUAL, OVERWEIGHT_TARGET, 
                                                            SCRAP_ACTUAL, SCRAP_TARGET, Q_ACTUAL, Q_TARGET, UNMSRD_PROCESS_WASTE_ACTUAL, UNMSRD_PROCESS_WASTE_TARGET, 
                                                            Q_TGT_NMR_ACTUAL, Q_TGT_NMR_TARGET, OVERWEIGHTS_NMR_ACTUAL, OVERWEIGHTS_NMR_TARGET, OVERWEIGHTS_DNR_ACTUAL, 
                                                            OVERWEIGHTS_DNR_TARGET, SCRAP_NMR_ACTUAL, SCRAP_NMR_TARGET, SCRAP_DNR_ACTUAL, SCRAP_DNR_TARGET, 
                                                            QUALITY_Q_NMR_ACTUAL, QUALITY_Q_NMR_TARGET, QUALITY_Q_DNR_ACTUAL, QUALITY_Q_DNR_TARGET, RATE_R_NMR_ACTUAL, 
                                                            RATE_R_NMR_TARGET, RATE_R_DNR_ACTUAL, RATE_R_DNR_TARGET, OEE_NET_TGT_ACTUAL, OEE_NET_TGT_TARGET, 
                                                            ANET_TGT_NMR_WF_TARGET, R_TGT_NMR_WF_TARGET, Q_TGT_NMR_WF_TARGET, BUSINESS_UNIT, SAP_PLANT_CODE, COUNTRY, 
                                                            PLANT_NM
                                          FROM      KG_SC.dbo.UVW_ISM_OEE_TRANSACTIONS_RV_PIVOT), Tool12_ac8d AS
    (SELECT REGION, PLANT, LINE, FISC_PD, FISC_YR, [PR TARGET]
     FROM      [US\USKCXR28].ISM_PR_TARGET), Tool13_cc95 AS
    (SELECT Tool1_d906_1.REGION, Tool1_d906_1.PLANT, Tool1_d906_1.LINE, Tool1_d906_1.FISC_YR, Tool1_d906_1.FISC_PD, Tool1_d906_1.ELAPSE_TIME_ACTUAL, 
                       Tool1_d906_1.ELAPSE_TIME_TARGET, Tool1_d906_1.AVL_ELEMENT_LOSSES_ACTUAL, Tool1_d906_1.AVL_ELEMENT_LOSSES_TARGET, 
                       Tool1_d906_1.SCH_CAPITAL_PROJECT_ACTUAL, Tool1_d906_1.SCH_CAPITAL_PROJECT_TARGET, Tool1_d906_1.SCH_CHANGE_OVER_ACTUAL, 
                       Tool1_d906_1.SCH_CHANGE_OVER_TARGET, Tool1_d906_1.SCH_CLEANUP_SANITATION_ACTUAL, Tool1_d906_1.SCH_CLEANUP_SANITATION_TARGET, 
                       Tool1_d906_1.SCH_DOWN_ACTUAL, Tool1_d906_1.SCH_DOWN_TARGET, Tool1_d906_1.SCH_FOOD_SAFETY_ACTUAL, Tool1_d906_1.SCH_FOOD_SAFETY_TARGET, 
                       Tool1_d906_1.SCH_FUMIGATION_ACTUAL, Tool1_d906_1.SCH_FUMIGATION_TARGET, Tool1_d906_1.SCH_HOLIDAY_ACTUAL, Tool1_d906_1.SCH_HOLIDAY_TARGET, 
                       Tool1_d906_1.SCH_MAINTENANCE_ACTUAL, Tool1_d906_1.SCH_MAINTENANCE_TARGET, Tool1_d906_1.SCH_NO_DEMAND_ACTUAL, 
                       Tool1_d906_1.SCH_NO_DEMAND_TARGET, Tool1_d906_1.SCH_OPERATION_ACTUAL, Tool1_d906_1.SCH_OPERATION_TARGET, 
                       Tool1_d906_1.SCH_SETUP_STARTUP_ACTUAL, Tool1_d906_1.SCH_SETUP_STARTUP_TARGET, Tool1_d906_1.SCH_TEST_TRIAL_ACTUAL, 
                       Tool1_d906_1.SCH_TEST_TRIAL_TARGET, Tool1_d906_1.SCH_UTILITY_OUTAGE_ACTUAL, Tool1_d906_1.SCH_UTILITY_OUTAGE_TARGET, 
                       Tool1_d906_1.UNSCH_CAPITAL_PROJECT_ACTUAL, Tool1_d906_1.UNSCH_CAPITAL_PROJECT_TARGET, Tool1_d906_1.UNSCH_CLEANUP_SANITATION_ACTUAL, 
                       Tool1_d906_1.UNSCH_CLEANUP_SANITATION_TARGET, Tool1_d906_1.UNSCH_FOOD_SAFETY_ACTUAL, Tool1_d906_1.UNSCH_FOOD_SAFETY_TARGET, 
                       Tool1_d906_1.UNSCH_MAINTENANCE_ACTUAL, Tool1_d906_1.UNSCH_MAINTENANCE_TARGET, Tool1_d906_1.UNSCH_MATERIAL_ACTUAL, 
                       Tool1_d906_1.UNSCH_MATERIAL_TARGET, Tool1_d906_1.UNSCH_NO_CREW_ACTUAL, Tool1_d906_1.UNSCH_OPERATIONS_ACTUAL, 
                       Tool1_d906_1.UNSCH_NO_CREW_TARGET, Tool1_d906_1.UNSCH_OPERATIONS_TARGET, Tool1_d906_1.UNSCH_UTILITY_OUTAGE_ACTUAL, 
                       Tool1_d906_1.UNSCH_UTILITY_OUTAGE_TARGET, Tool1_d906_1.UNSCH_WEATHER_ACTUAL, Tool1_d906_1.UNSCH_WEATHER_TARGET, 
                       Tool1_d906_1.ALL_SCH_UNSCH_ACTUAL, Tool1_d906_1.ALL_SCH_UNSCH_TARGET, Tool1_d906_1.ANET_TGT_NMR_ACTUAL, Tool1_d906_1.ANET_TGT_NMR_TARGET, 
                       Tool1_d906_1.RATE_LOSS_ACTUAL, Tool1_d906_1.RATE_LOSS_TARGET, Tool1_d906_1.R_TGT_NMR_ACTUAL, Tool1_d906_1.R_TGT_NMR_TARGET, 
                       Tool1_d906_1.OVERWEIGHT_ACTUAL, Tool1_d906_1.OVERWEIGHT_TARGET, Tool1_d906_1.SCRAP_ACTUAL, Tool1_d906_1.SCRAP_TARGET, Tool1_d906_1.Q_ACTUAL, 
                       Tool1_d906_1.Q_TARGET, Tool1_d906_1.UNMSRD_PROCESS_WASTE_ACTUAL, Tool1_d906_1.UNMSRD_PROCESS_WASTE_TARGET, 
                       Tool1_d906_1.Q_TGT_NMR_ACTUAL, Tool1_d906_1.Q_TGT_NMR_TARGET, Tool1_d906_1.OVERWEIGHTS_NMR_ACTUAL, Tool1_d906_1.OVERWEIGHTS_NMR_TARGET, 
                       Tool1_d906_1.OVERWEIGHTS_DNR_ACTUAL, Tool1_d906_1.OVERWEIGHTS_DNR_TARGET, Tool1_d906_1.SCRAP_NMR_ACTUAL, Tool1_d906_1.SCRAP_NMR_TARGET, 
                       Tool1_d906_1.SCRAP_DNR_ACTUAL, Tool1_d906_1.SCRAP_DNR_TARGET, Tool1_d906_1.QUALITY_Q_NMR_ACTUAL, Tool1_d906_1.QUALITY_Q_NMR_TARGET, 
                       Tool1_d906_1.QUALITY_Q_DNR_ACTUAL, Tool1_d906_1.QUALITY_Q_DNR_TARGET, Tool1_d906_1.RATE_R_NMR_ACTUAL, Tool1_d906_1.RATE_R_NMR_TARGET, 
                       Tool1_d906_1.RATE_R_DNR_ACTUAL, Tool1_d906_1.RATE_R_DNR_TARGET, Tool1_d906_1.OEE_NET_TGT_ACTUAL, Tool1_d906_1.OEE_NET_TGT_TARGET, 
                       Tool1_d906_1.ANET_TGT_NMR_WF_TARGET, Tool1_d906_1.R_TGT_NMR_WF_TARGET, Tool1_d906_1.Q_TGT_NMR_WF_TARGET, Tool1_d906_1.BUSINESS_UNIT, 
                       Tool1_d906_1.SAP_PLANT_CODE, Tool1_d906_1.COUNTRY, Tool1_d906_1.PLANT_NM, Tool12_ac8d_1.REGION AS R_REGION, Tool12_ac8d_1.PLANT AS R_PLANT, 
                       Tool12_ac8d_1.LINE AS R_LINE, Tool12_ac8d_1.FISC_PD AS R_FISC_PD, Tool12_ac8d_1.FISC_YR AS R_FISC_YR, Tool12_ac8d_1.[PR TARGET]
     FROM      Tool1_d906 AS Tool1_d906_1 LEFT OUTER JOIN
                       Tool12_ac8d AS Tool12_ac8d_1 ON Tool1_d906_1.REGION = Tool12_ac8d_1.REGION AND Tool1_d906_1.PLANT = Tool12_ac8d_1.PLANT AND 
                       Tool1_d906_1.LINE = Tool12_ac8d_1.LINE AND Tool1_d906_1.FISC_YR = Tool12_ac8d_1.FISC_YR AND Tool1_d906_1.FISC_PD = Tool12_ac8d_1.FISC_PD)
    SELECT REGION, PLANT, LINE, FISC_YR, FISC_PD, ELAPSE_TIME_ACTUAL, ELAPSE_TIME_TARGET, AVL_ELEMENT_LOSSES_ACTUAL, AVL_ELEMENT_LOSSES_TARGET, 
                      SCH_CAPITAL_PROJECT_ACTUAL, SCH_CAPITAL_PROJECT_TARGET, SCH_CHANGE_OVER_ACTUAL, SCH_CHANGE_OVER_TARGET, 
                      SCH_CLEANUP_SANITATION_ACTUAL, SCH_CLEANUP_SANITATION_TARGET, SCH_DOWN_ACTUAL, SCH_DOWN_TARGET, SCH_FOOD_SAFETY_ACTUAL, 
                      SCH_FOOD_SAFETY_TARGET, SCH_FUMIGATION_ACTUAL, SCH_FUMIGATION_TARGET, SCH_HOLIDAY_ACTUAL, SCH_HOLIDAY_TARGET, 
                      SCH_MAINTENANCE_ACTUAL, SCH_MAINTENANCE_TARGET, SCH_NO_DEMAND_ACTUAL, SCH_NO_DEMAND_TARGET, SCH_OPERATION_ACTUAL, 
                      SCH_OPERATION_TARGET, SCH_SETUP_STARTUP_ACTUAL, SCH_SETUP_STARTUP_TARGET, SCH_TEST_TRIAL_ACTUAL, SCH_TEST_TRIAL_TARGET, 
                      SCH_UTILITY_OUTAGE_ACTUAL, SCH_UTILITY_OUTAGE_TARGET, UNSCH_CAPITAL_PROJECT_ACTUAL, UNSCH_CAPITAL_PROJECT_TARGET, 
                      UNSCH_CLEANUP_SANITATION_ACTUAL, UNSCH_CLEANUP_SANITATION_TARGET, UNSCH_FOOD_SAFETY_ACTUAL, UNSCH_FOOD_SAFETY_TARGET, 
                      UNSCH_MAINTENANCE_ACTUAL, UNSCH_MAINTENANCE_TARGET, UNSCH_MATERIAL_ACTUAL, UNSCH_MATERIAL_TARGET, UNSCH_NO_CREW_ACTUAL, 
                      UNSCH_OPERATIONS_ACTUAL, UNSCH_NO_CREW_TARGET, UNSCH_OPERATIONS_TARGET, UNSCH_UTILITY_OUTAGE_ACTUAL, UNSCH_UTILITY_OUTAGE_TARGET, 
                      UNSCH_WEATHER_ACTUAL, UNSCH_WEATHER_TARGET, ALL_SCH_UNSCH_ACTUAL, ALL_SCH_UNSCH_TARGET, ANET_TGT_NMR_ACTUAL, 
                      ANET_TGT_NMR_TARGET, RATE_LOSS_ACTUAL, RATE_LOSS_TARGET, R_TGT_NMR_ACTUAL, R_TGT_NMR_TARGET, OVERWEIGHT_ACTUAL, OVERWEIGHT_TARGET, 
                      SCRAP_ACTUAL, SCRAP_TARGET, Q_ACTUAL, Q_TARGET, UNMSRD_PROCESS_WASTE_ACTUAL, UNMSRD_PROCESS_WASTE_TARGET, Q_TGT_NMR_ACTUAL, 
                      Q_TGT_NMR_TARGET, OVERWEIGHTS_NMR_ACTUAL, OVERWEIGHTS_NMR_TARGET, OVERWEIGHTS_DNR_ACTUAL, OVERWEIGHTS_DNR_TARGET, 
                      SCRAP_NMR_ACTUAL, SCRAP_NMR_TARGET, SCRAP_DNR_ACTUAL, SCRAP_DNR_TARGET, QUALITY_Q_NMR_ACTUAL, QUALITY_Q_NMR_TARGET, 
                      QUALITY_Q_DNR_ACTUAL, QUALITY_Q_DNR_TARGET, RATE_R_NMR_ACTUAL, RATE_R_NMR_TARGET, RATE_R_DNR_ACTUAL, RATE_R_DNR_TARGET, 
                      OEE_NET_TGT_ACTUAL, OEE_NET_TGT_TARGET, ANET_TGT_NMR_WF_TARGET, R_TGT_NMR_WF_TARGET, Q_TGT_NMR_WF_TARGET, BUSINESS_UNIT, 
                      SAP_PLANT_CODE, COUNTRY, PLANT_NM, [PR TARGET]
    FROM     Tool13_cc95 AS Tool13_cc95_1

GO
/****** Object:  View [dbo].[KUSA_TRACK_BRAND_CAT_MAP]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_BRAND_CAT_MAP]
AS
SELECT        *
FROM            (SELECT        SUM(a.[Actual Ship $]) AS GSV, b.PROD_H4, b.PROD_HIER_TEXT4, b.ALT_CATEGORY, b.ALT_SUBCATEGORY, ROW_NUMBER() OVER (PARTITION BY 
                                                    b.PROD_H4
                          ORDER BY SUM([Actual Ship $]) DESC) AS RN
FROM            KG_SANDBOX.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT AS a LEFT JOIN
                         KG_SANDBOX.dbo.KLG_TPE_MATERIAL_DIM_TGT AS b ON a.[Mixed Pallet Material] = b.MIXED_PAL_MATERIAL
WHERE        a.[Actual Ship $] <> 0 AND (RIGHT([Calendar Week], 4) = YEAR(getdate()) OR
                         RIGHT([Calendar Week], 4) = YEAR(getdate()) - 1)
GROUP BY b.PROD_H4, b.PROD_HIER_TEXT4, b.ALT_CATEGORY, b.ALT_SUBCATEGORY) v
WHERE        v.RN = 1

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET1_GSVLoader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE VIEW [dbo].[KUSA_TRACK_DET1_GSVLoader] AS 
SELECT
a.BU,
a.PT,
a.[PT Name],
CAST(a.Brand# AS NVARCHAR) AS [Brand#],
a.Brand,
CASE a.Brand 
               WHEN 'Joybol' THEN 'COLD CEREAL'
               WHEN 'Happy Inside' THEN 'COLD CEREAL'
  ELSE   b.ALT_SUBCATEGORY
END as ALT_SUBCATEGORY,
CASE a.Brand 
               WHEN 'Joybol' THEN 'COLD CEREAL'
               WHEN 'Happy Inside' THEN 'COLD CEREAL'
  ELSE   b.ALT_CATEGORY
END as ALT_CATEGORY,
 
 
0 AS [P IBP PER],
0 AS [Q IBP PER],
0 AS [Y IBP PER],
0 AS [P BUDGET PER],
0 AS [Q BUDGET PER],
0 AS [Y BUDGET PER],
0 AS [P SE PER],
0 AS [Q SE PER],
0 AS [Y SE PER],
 
a.[Last Refresh Date],
a.[Track Day],
a.Period,
a.[Year],
'Period ' + right ('00'+ltrim(str(a.Period)),2 ) + ' ' + a.[Year] AS Period_Year,
 
Sum(a.[Today GSV$]) AS [Today GSV$],
Sum(a.[Today OO$]) AS [Today OO$],
Sum(a.[PTD GSV$]) AS [PTD GSV$],
Sum(a.[Open Order $]) AS [Open Order $],
Sum(a.[QTD GSV$]) AS [QTD GSV$],
Sum(a.[YTD GSV$]) AS [YTD GSV$],
Sum(a.[PTD YAG GSV$]) AS [PER YAG GSV$],
Sum(a.[QTD YAG GSV$]) AS [QTR YAG GSV$],
Sum(a.[YTD YAG GSV$]) AS [YR YAG GSV$],
Sum(a.[Next Period OO]) AS [Next Period OO],
 
0 as [CURR PD IND$],
0 as [PTD IND$],
0 as [PTD Pace],
0 as [QTD Pace],
0 as [YTD Pace],
Sum(a.[YEST OO$]) as [YEST OO$],
Sum(a.[YEST GSV$]) as [YEST GSV$]
 
FROM
KG_SANDBOX.dbo.KUSA_TRACK_GSV_Loader AS a
LEFT JOIN KG_SANDBOX.dbo.KUSA_TRACK_BRAND_CAT_MAP AS b ON a.Brand# = b.PROD_H4 collate SQL_Latin1_General_CP1_CI_AS
 
GROUP BY
a.BU,
a.PT,
a.[PT Name],
a.Brand#,
a.Brand,
b.ALT_SUBCATEGORY,
b.ALT_CATEGORY,
a.[Last Refresh Date],
a.[Track Day],
a.Period,
a.[Year]

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET1_IndLoader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET1_IndLoader] AS 
SELECT
a.BU,
a.PT,
a.[PT Name],
CAST(null as NVARCHAR) AS [Brand#],
'Not Assigned' as [Brand],
'Not Assigned' AS ALT_SUBCATEGORY,
a.Category AS ALT_CATEGORY,

0 AS [P IBP PER],
0 AS [Q IBP PER],
0 AS [Y IBP PER],
0 AS [P BUDGET PER],
0 AS [Q BUDGET PER],
0 AS [Y BUDGET PER],
0 AS [P SE PER],
0 AS [Q SE PER],
0 AS [Y SE PER],

a.[Last Refresh Date],
a.[Track Day],
SUBSTRING(a.Period_Year, 8, 2) as [Period],
SUBSTRING(a.Period_Year, 11, 4) as [Year],
a.Period_Year,

0 AS [Today GSV$],
0 AS [Today OO$],
0 AS [PTD GSV$],
0 AS [Open Order $],
0 AS [QTD GSV$],
0 AS [YTD GSV$],
0 AS [PER YAG GSV$],
0 AS [QTR YAG GSV$],
0 AS [YR YAG GSV$],
0 AS [Next Period OO],

a.[CURR PD IND$] as [CURR PD IND$],
a.[PTD IND$],
a.[PTD Pace],
a.[QTD Pace],
a.[YTD Pace],
0 as [YEST OO$],
0 as [YEST GSV$]

FROM
dbo.KUSA_TRACK_INDIRECT_Loader a

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET1_KPILoader]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET1_KPILoader] AS 
SELECT
a.[Business Unit] as BU,
a.[Plan To] as PT,
a.[Plan To Name] as [PT Name],
CAST(null as NVARCHAR) AS [Brand#],
'Not Assigned' as [Brand],
'Not Assigned' AS ALT_SUBCATEGORY,
a.Category AS ALT_CATEGORY,

a.[P IBP PER],
a.[Q IBP PER],
a.[Y IBP PER],
a.[P BUDGET PER],
a.[Q BUDGET PER],
a.[Y BUDGET PER],
a.[P SE PER],
a.[Q SE PER],
a.[Y SE PER],

a.[Last Refresh Date],
a.[Track Day],
'' AS Period,
'' AS Year,
'' AS Period_Year,
0 AS [Today GSV$],
0 AS [Today OO$],
0 AS [PTD GSV$],
0 AS [Open Order $],
0 AS [QTD GSV$],
0 AS [YTD GSV$],
0 AS [PER YAG GSV$],
0 AS [QTR YAG GSV$],
0 AS [YR YAG GSV$],
0 AS [Next Period OO],

0 as [CURR PD IND$],
0 as [PTD IND$],
0 as [PTD Pace],
0 as [QTD Pace],
0 as [YTD Pace],
0 as [YEST OO$],
0 as [YEST GSV$]

FROM
dbo.KUSA_TRACK_KPI_Loader AS a

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET2_Union]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET2_Union] AS 
SELECT * FROM dbo.KUSA_TRACK_DET1_GSVLoader
UNION ALL
SELECT * FROM dbo.KUSA_TRACK_DET1_IndLoader
UNION ALL
SELECT * FROM dbo.KUSA_TRACK_DET1_KPILoader

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET3_NORMALIZED]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET3_NORMALIZED]
AS
SELECT        a.BU, a.PT, a.[PT Name], a.Brand#, a.Brand, a.ALT_SUBCATEGORY, a.ALT_CATEGORY, a.[P IBP PER], a.[Q IBP PER], a.[Y IBP PER], a.[P BUDGET PER], 
                         a.[Q BUDGET PER], a.[Y BUDGET PER], a.[P SE PER], a.[Q SE PER], a.[Y SE PER], a.[Last Refresh Date], a.[Track Day], a.Period, a.Year, a.Period_Year, 
                         a.[Today GSV$], a.[Today OO$], a.[PTD GSV$], a.[Open Order $], a.[QTD GSV$], a.[YTD GSV$], a.[PER YAG GSV$], a.[QTR YAG GSV$], a.[YR YAG GSV$], 
                         a.[Next Period OO], a.[CURR PD IND$], a.[PTD IND$], a.[PTD Pace], a.[QTD Pace], a.[YTD Pace], b.Level_A, b.Level_B, b.Level_C, b.Level_D, b.Level_E, 
                         b.BU AS BU_Hierarchy
FROM            dbo.KUSA_TRACK_DET2_Union AS a LEFT OUTER JOIN
                         dbo.PLANTO_MAP_N AS b ON a.PT = b.PLANTO
WHERE        (a.[P IBP PER] <> 0) OR
                         (a.[Q IBP PER] <> 0) OR
                         (a.[Y IBP PER] <> 0) OR
                         (a.[P BUDGET PER] <> 0) OR
                         (a.[Q BUDGET PER] <> 0) OR
                         (a.[Y BUDGET PER] <> 0) OR
                         (a.[P SE PER] <> 0) OR
                         (a.[Q SE PER] <> 0) OR
                         (a.[Y SE PER] <> 0) OR
                         (a.[Today GSV$] <> 0) OR
                         (a.[Today OO$] <> 0) OR
                         (a.[PTD GSV$] <> 0) OR
                         (a.[Open Order $] <> 0) OR
                         (a.[QTD GSV$] <> 0) OR
                         (a.[YTD GSV$] <> 0) OR
                         (a.[PER YAG GSV$] <> 0) OR
                         (a.[QTR YAG GSV$] <> 0) OR
                         (a.[YR YAG GSV$] <> 0) OR
                         (a.[Next Period OO] <> 0) OR
                         (a.[CURR PD IND$] <> 0) OR
                         (a.[PTD IND$] <> 0) OR
                         (a.[PTD Pace] <> 0) OR
                         (a.[QTD Pace] <> 0) OR
                         (a.[YTD Pace] <> 0)

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET3_OUTPUT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET3_OUTPUT] AS 
SELECT        a.BU, a.PT, a.[PT Name], a.Brand#, a.Brand, a.ALT_SUBCATEGORY, a.ALT_CATEGORY, a.[P IBP PER], a.[Q IBP PER], a.[Y IBP PER], a.[P BUDGET PER], 
                         a.[Q BUDGET PER], a.[Y BUDGET PER], a.[P SE PER], a.[Q SE PER], a.[Y SE PER], a.[Last Refresh Date], a.[Track Day], a.Period, a.Year, a.Period_Year, 
                         a.[Today GSV$], a.[Today OO$], a.[PTD GSV$], a.[Open Order $], a.[QTD GSV$], a.[YTD GSV$], a.[PER YAG GSV$], a.[QTR YAG GSV$], a.[YR YAG GSV$], 
                         a.[Next Period OO], a.[CURR PD IND$], a.[PTD IND$], a.[PTD Pace], a.[QTD Pace], a.[YTD Pace], b.Level_A_Frozen, b.Level_B_Frozen, b.Level_C_Frozen, 
                         b.Level_D_Frozen, b.Level_E_Frozen, b.Level_A, b.Level_B, b.Level_C, b.Level_D, b.Level_E, b.Level_A_Morning_Foods, b.Level_B_Morning_Foods, 
                         b.Level_C_Morning_Foods, b.Level_D_Morning_Foods, b.Level_E_Morning_Foods, b.Level_A_Kashi, b.Level_B_Kashi, b.Level_C_Kashi, b.Level_D_Kashi, 
                         b.Level_E_Kashi, b.Level_A_Snacks, b.Level_B_Snacks, b.Level_C_Snacks, b.Level_D_Snacks, b.Level_E_Snacks
FROM            dbo.KUSA_TRACK_DET2_Union AS a LEFT OUTER JOIN
                         dbo.PLANTO_HIERARCHY_BU AS b ON a.PT = b.PLANTO
WHERE        (a.[P IBP PER] <> 0) OR
                         (a.[Q IBP PER] <> 0) OR
                         (a.[Y IBP PER] <> 0) OR
                         (a.[P BUDGET PER] <> 0) OR
                         (a.[Q BUDGET PER] <> 0) OR
                         (a.[Y BUDGET PER] <> 0) OR
                         (a.[P SE PER] <> 0) OR
                         (a.[Q SE PER] <> 0) OR
                         (a.[Y SE PER] <> 0) OR
                         (a.[Today GSV$] <> 0) OR
                         (a.[Today OO$] <> 0) OR
                         (a.[PTD GSV$] <> 0) OR
                         (a.[Open Order $] <> 0) OR
                         (a.[QTD GSV$] <> 0) OR
                         (a.[YTD GSV$] <> 0) OR
                         (a.[PER YAG GSV$] <> 0) OR
                         (a.[QTR YAG GSV$] <> 0) OR
                         (a.[YR YAG GSV$] <> 0) OR
                         (a.[Next Period OO] <> 0) OR
                         (a.[CURR PD IND$] <> 0) OR
                         (a.[PTD IND$] <> 0) OR
                         (a.[PTD Pace] <> 0) OR
                         (a.[QTD Pace] <> 0) OR
                         (a.[YTD Pace] <> 0)

GO
/****** Object:  View [dbo].[KUSA_TRACK_ACOSTA_OUTPUT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_ACOSTA_OUTPUT] AS 
SELECT        Hierarchy.[KLG Banner], Hierarchy.[KLG Sr Mgr Agency Retail], Hierarchy.[ACOSTA FRZ Bus Mgr], Hierarchy.[Frozen Region], Hierarchy.[KLG VP DRA Director], 
                         Hierarchy.[KLG Director MTS], Hierarchy.[PT Name], Data.PT, Data.ALT_CATEGORY, Data.ALT_SUBCATEGORY, Data.Brand, Data.[P IBP PER], Data.[Q IBP PER], 
                         Data.[Y IBP PER], Data.[P BUDGET PER], Data.[Q BUDGET PER], Data.[Y BUDGET PER], Data.[P SE PER], Data.[Q SE PER], Data.[Y SE PER], 
                         Data.[Last Refresh Date], Data.[Track Day], Data.Period, Data.Year, Data.Period_Year, Data.[Today GSV$], Data.[Today OO$], Data.[PTD GSV$], Data.[Open Order $], 
                         Data.[QTD GSV$], Data.[YTD GSV$], Data.[PER YAG GSV$], Data.[QTR YAG GSV$], Data.[YR YAG GSV$], Data.[Next Period OO], Data.[CURR PD IND$], 
                         Data.[PTD IND$], Data.[PTD Pace], Data.[QTD Pace], Data.[YTD Pace], Data.BU
FROM            dbo.ACOSTA_HIERARCHY AS Hierarchy INNER JOIN
                         dbo.KUSA_TRACK_DET3_OUTPUT AS Data ON Hierarchy.[Plan To] = Data.PT AND Hierarchy.Category = Data.ALT_CATEGORY AND Hierarchy.BU = Data.BU
WHERE        (Hierarchy.Flag = 'Acosta') AND (Data.[P IBP PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Q IBP PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Y IBP PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[P BUDGET PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Q BUDGET PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Y BUDGET PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[P SE PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Q SE PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Y SE PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Today GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Today OO$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PTD GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Open Order $] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[QTD GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[YTD GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PER YAG GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[QTR YAG GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[YR YAG GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Next Period OO] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[CURR PD IND$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PTD IND$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PTD Pace] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[QTD Pace] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[YTD Pace] <> 0)

GO
/****** Object:  View [US\USKCXR28].[ISM_SCM_SANITATION]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[ISM_SCM_SANITATION]
AS
SELECT DISTINCT  
[HIERARCHY_LV2], 
[FISC_PD], 
[FISC_YR], 
SUM(MONTHLY_SANITATION_SCORE) AS MONTHLY_SANITATION_SCORE, 
SUM(MSSIC_SCHEDULE_ADHERENCE) AS MSSIC_SCHEDULE_ADHERENCE, 
SUM(VERIFICATION_AND_VALIDATION) AS VERIFICATION_AND_VALIDATION, 
SUM(PCIC_PEST_MANAGEMENT) AS PCIC_PEST_MANAGEMENT
FROM [KG_ANALYTICS_APPS].[ISM].[SCM_TRANSACTIONS] AS SourceTable 
	PIVOT (SUM([ACTUAL]) FOR [METRIC_ID] 
	IN (MONTHLY_SANITATION_SCORE, VERIFICATION_AND_VALIDATION, PCIC_PEST_MANAGEMENT, MSSIC_SCHEDULE_ADHERENCE)) AS PivotTable
WHERE [HIERARCHY_LV2] NOT LIKE 'ALL' AND [BUSINESS_UNIT] NOT LIKE 'ALL'
GROUP BY [HIERARCHY_LV2], [FISC_YR], [FISC_PD]

GO
/****** Object:  View [US\USKCXR28].[ISM_SCM_SANITATION_YTD]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[ISM_SCM_SANITATION_YTD]
AS
SELECT DISTINCT 
[HIERARCHY_LV2], 
[FISC_PD], 
[FISC_YR], 
SUM(MONTHLY_SANITATION_SCORE) AS MONTHLY_SANITATION_SCORE, 
SUM(MSSIC_SCHEDULE_ADHERENCE) AS MSSIC_SCHEDULE_ADHERENCE, 
SUM(VERIFICATION_AND_VALIDATION) AS VERIFICATION_AND_VALIDATION, 
SUM(PCIC_PEST_MANAGEMENT) AS PCIC_PEST_MANAGEMENT
FROM [KG_ANALYTICS_APPS].[ISM].[SCM_TRANSACTIONS] AS SourceTable 
	PIVOT (SUM([YTD]) FOR [METRIC_ID] 
	IN (MONTHLY_SANITATION_SCORE, VERIFICATION_AND_VALIDATION, PCIC_PEST_MANAGEMENT, MSSIC_SCHEDULE_ADHERENCE)) AS PivotTable
WHERE [HIERARCHY_LV2] NOT LIKE 'ALL' AND [BUSINESS_UNIT] NOT LIKE 'ALL'
GROUP BY [HIERARCHY_LV2], [FISC_PD], [FISC_YR]

GO
/****** Object:  View [US\USKCXR28].[ISM_SCM_SANITATION_FINAL]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[ISM_SCM_SANITATION_FINAL]
AS
SELECT        [US\USKCXR28].ISM_SCM_SANITATION.HIERARCHY_LV2, [US\USKCXR28].ISM_SCM_SANITATION.FISC_PD, [US\USKCXR28].ISM_SCM_SANITATION.FISC_YR, 
                         [US\USKCXR28].ISM_SCM_SANITATION.MONTHLY_SANITATION_SCORE, [US\USKCXR28].ISM_SCM_SANITATION.VERIFICATION_AND_VALIDATION, 
                         [US\USKCXR28].ISM_SCM_SANITATION.PCIC_PEST_MANAGEMENT, 
                         [US\USKCXR28].ISM_SCM_SANITATION_YTD.MONTHLY_SANITATION_SCORE AS [MONTHLY_SANITATION_SCORE YTD], 
                         [US\USKCXR28].ISM_SCM_SANITATION_YTD.VERIFICATION_AND_VALIDATION AS [VERIFICATION_AND_VALIDATION YTD], 
                         [US\USKCXR28].ISM_SCM_SANITATION_YTD.PCIC_PEST_MANAGEMENT AS [PCIC_PEST_MANAGEMENT YTD], 
                         [US\USKCXR28].ISM_SCM_SANITATION.MSSIC_SCHEDULE_ADHERENCE, 
                         [US\USKCXR28].ISM_SCM_SANITATION_YTD.MSSIC_SCHEDULE_ADHERENCE AS [MSSIC_SCHEDULE_ADHERENCE YTD]
FROM            [US\USKCXR28].ISM_SCM_SANITATION INNER JOIN
                         [US\USKCXR28].ISM_SCM_SANITATION_YTD ON 
                         [US\USKCXR28].ISM_SCM_SANITATION.HIERARCHY_LV2 = [US\USKCXR28].ISM_SCM_SANITATION_YTD.HIERARCHY_LV2 AND 
                         [US\USKCXR28].ISM_SCM_SANITATION.FISC_PD = [US\USKCXR28].ISM_SCM_SANITATION_YTD.FISC_PD AND 
                         [US\USKCXR28].ISM_SCM_SANITATION.FISC_YR = [US\USKCXR28].ISM_SCM_SANITATION_YTD.FISC_YR

GO
/****** Object:  View [USKJDW73].[KLG_PRICE _YAGO_REDK_MIX]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[KLG_PRICE _YAGO_REDK_MIX] AS 
SELECT
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
Round(Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] / TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) AS [YAG GSV per Unit],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.WK

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
WHERE
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = '2018' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units] > 0
GROUP BY
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.WK
GO
/****** Object:  View [USKJDW73].[KLG_PRICE _CY_IMPACT_MIX]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[KLG_PRICE _CY_IMPACT_MIX] AS 
SELECT
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [GSV per Unit],
KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit],
Round(Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) - KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit] AS [GSV per Unit Chg],
((Round(Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) - KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit])*TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [GSV Price Chg],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year]

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX] ON KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].CUSTOMER = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].WK = TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.WK
WHERE
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = '2019' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] > 0 AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units] > 0 AND
KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit] >0
-- TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = '301102' AND
-- TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year] = 'P4 2017'

GROUP BY
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
KG_SANDBOX.USKJDW73.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit]
GO
/****** Object:  View [USKJDW73].[KLG_PRICE_IMPACT_SUM_MT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[KLG_PRICE_IMPACT_SUM_MT] AS 
SELECT
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER,
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].[Period Year],
Sum(KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].[GSV Price Chg]) AS [GSV Price Chg],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name]

/*Into KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT
Drop Table KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT
Insert Into KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT */

FROM
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX]
INNER JOIN TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].[Mixed Pallet Material]
WHERE
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit Chg] > 0.03 OR
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit Chg] < -0.03
GROUP BY
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER,
KG_SANDBOX.USKJDW73.[KLG_PRICE _CY_IMPACT_MIX].[Period Year],
TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5
GO
/****** Object:  View [ACCENTURE].[UVW_AR_DATA]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[ACCENTURE].[UVW_AR_DATA]
AS
(
	SELECT	
			CustomerChannelText,
			BU,
			CustomerNo,
			FiscalYear,
			FY,			
			CONCAT(CONVERT(VARCHAR(10),WK),'-',FY) AS WK,
			CONCAT(CONVERT(VARCHAR(10),PD),'-',FY)AS PD,
			CONCAT(CONVERT(VARCHAR(10),QTR),'-',FY) AS QTR,
			ARAmt
	FROM	ACCENTURE.StgARMasterData
)


GO
/****** Object:  View [ACCENTURE].[UVW_CUST_HIER]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [ACCENTURE].[UVW_CUST_HIER]
AS
SELECT        CASE WHEN HIER_DT = '99991231' THEN 'FUTURE' ELSE 'CURRENT' END AS HIER_TM_PD, HI_TYP as HIER_TYP, LVL1_CUST_NBR, LVL2_CUST_NBR, LVL3_CUST_NBR, LVL4_CUST_NBR, LVL5_CUST_NBR, 
                         LVL6_CUST_NBR, LVL7_CUST_NBR, LVL8_CUST_NBR, LVL9_CUST_NBR, LVL10_CUST_NBR, LVL11_CUST_NBR, LVL12_CUST_NBR, LVL13_CUST_NBR, LVL14_CUST_NBR, LVL15_CUST_NBR, 
                         LVL16_CUST_NBR, LVL17_CUST_NBR, LVL18_CUST_NBR, LVL19_CUST_NBR, LVL20_CUST_NBR, LVL1_CUST_NM, LVL2_CUST_NM, LVL3_CUST_NM, LVL4_CUST_NM, LVL5_CUST_NM, LVL6_CUST_NM, 
                         LVL7_CUST_NM, LVL8_CUST_NM, LVL9_CUST_NM, LVL10_CUST_NM, LVL11_CUST_NM, LVL12_CUST_NM, LVL13_CUST_NM, LVL14_CUST_NM, LVL15_CUST_NM, LVL16_CUST_NM, LVL17_CUST_NM, 
                         LVL18_CUST_NM, LVL19_CUST_NM, LVL20_CUST_NM, LST_LVL_CUST_NBR, LST_LVL_NBR
FROM          [KNA_ECC].STG.CUST_HIER_UNRVL

GO
/****** Object:  View [ACCENTURE].[UVW_DED_LS_HKPI_MTRCS]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW	[ACCENTURE].[UVW_DED_LS_HKPI_MTRCS]
AS
(
	SELECT	
			CASE_ID AS [Case ID],
			RSN_CASE_DESC [Reason case description],
			DEDUCTION_AMOUNT_USD AS [Deduction Amount (USD)],
			CONCAT(REPLICATE(0,10-LEN(CONVERT(VARCHAR(10), PLNT_NBR))),PLNT_NBR) AS [Planto #],
			PLANTO_DESC AS [Planto Description],
			ROOT_CAUSE_DESC AS [Cause Desc],			
			ROOT_CAUSE_CD AS [Root Cause Code (Description)] ,
			RSN_CD_PAY_TXT,
			RSN_ESCAL_DESC AS [Reason for Escalation],
			PROCESSOR_ID AS [Analysts (ID)],
			PROCESSOR_NM AS [Analysts (Name)],
			PERS_RESP_NM AS [Person Responsible (Full Name)],
			BAS_LN_DT AS [Deduction Creation Date],
			CLSN_DT AS [Deduction Close Date],
			AGE_END_OF_PERIOD AS [Age_End_of_Period],
			BU AS [Buiness Unit],
			SALES_MGMT_A AS [Sales Mgmt - A],
			SALES_MGMT_B AS [Sales Mgmt - B],
			SALES_MGMT_C AS [Sales Mgmt - C],
			SALES_MGMT_D AS [Sales Mgmt - D],
			CUST_NBR ,
			CUST_MAIL_ADDR AS [Short Description of Customer],
			CUSTOMER_CHANNEL,
			DEDUCTION_CATEGORY,
			DEDUCTION_CONTROLLABLE_UNCONTROLLABLE AS [Deduction Controllable/Uncontrollable],
			TEAM AS [Team],
			TRADE_FLAG AS [Trade / Non Trade / Unknown],
			REPORT_EXTRACTION_DATE AS [Report Extraction date],
			VALID_FLAG AS [Valid/Invalid],
			ACTION_FLAG AS [Status],
			CASE_STATUS AS [CreatedStatus],
			ACTIVITY_DATE AS [Activity Date],
			UNDER_TOLERANCE AS [Undertolerance (Yes/No)],
			INVLD_COLLECTIONS_AMT AS [Invalid Collections Amt],
			TOP_20_CUSTOMERS AS [Top 20 Customers],
			TOP_10_CUSTOMERS AS [Top 10 Customers],
			UCD,
			--HST_WK [Historical Week],
			--HST_PD [Historical Period],
			--HST_QTR [Historical Quarter],
			--HST_YR [Historical Year],
			FY AS [Fiscal Year],
			--CONCAT(CONVERT(VARCHAR(10),WEEK_DETAILS),'-',FY) AS [Week details],
			CONCAT(CONCAT(REPLICATE(0,2-LEN(CONVERT(VARCHAR(10), WEEK_DETAILS))),CONVERT(VARCHAR(10), WEEK_DETAILS)),'-',FY)[Week details],
			--CONCAT(CONVERT(VARCHAR(10),PERIOD),'-',FY)AS [Period],
			CONCAT(CONCAT(REPLICATE(0,2-LEN(CONVERT(VARCHAR(10), PERIOD))),CONVERT(VARCHAR(10), PERIOD)),'-',FY) AS [Period],
			CONCAT(CONVERT(VARCHAR(10),QTR),'-',FY) AS [Quarter],
			DAY_OF_WEEK [Day],
			--CONCAT(CONVERT(VARCHAR(10),CRE_WK),'-',CRE_YR) AS [Created Week],
			CONCAT(CONCAT(REPLICATE(0,2-LEN(CONVERT(VARCHAR(10), CRE_WK))),CONVERT(VARCHAR(10), CRE_WK)),'-',CRE_YR)AS [Created Week],
			--CONCAT(CONVERT(VARCHAR(10),CRE_PD),'-',CRE_YR)AS [Created Period],
			CONCAT(CONCAT(REPLICATE(0,2-LEN(CONVERT(VARCHAR(10), CRE_PD))),CONVERT(VARCHAR(10), CRE_PD)),'-',CRE_YR)AS [Created Period],
			CONCAT(CONVERT(VARCHAR(10),CRE_QTR),'-',CRE_YR) AS [Created Quarter],			 			 
			CRE_YR AS [Created Year],			 
			AGE_INVLD_PNDG_RVW AS [Time Taken to identify Invalid - Pending Review],
			AGE_CLSFD_INVLD AS [Invalid stages- Classified Invalid],
			AGE_INVLD_CLSD AS [Invalid stages- Valid Closed],
			WRITE_OFF_AMT AS [Write Off $],
			WRITE_OFF_RSN AS [Write Off Reason],
			INVLD_DED_AGEING  ,
			CREDITS,
			FROM_UNKWN_TO_CODED AS [Deduction Reason Case Description - From unknown to coded date],
			OTC_CUST_CHNL AS [Customer Channel],
			CODED_DATE AS [Coded date],
			CODED_WK AS [Coded Week],
			CODED_YR AS [Coded Year],
			UNKNOWN_DATE AS [Unknown Date],
			UNKNOWN_WK AS [Unknown Week],
			UNKNOWN_YR AS [Unknown Year],
			--CATEG_DATE,
			--INVLD_CONFRMD_REPAY_DATE,
			--INVLD_APPRVD_DATE,
			--INVLD_SALES_APPRVD_WRTOFF_DATE,
			--INVLD_PNDG_SALES_RVW_DATE,
			--INVLD_PNDG_RSC_RVW_DATE,
			CODING_STATUS,
			DED_FIRST_PASS_CODED_DATE AS [Deduction First Paas Date/Date coded],
			--STAT_CLSD_DATE,
			AGE_IDENTIFY_INVLD AS [Time Taken to identify Invalid],
			AGE_AUTOCASH_TO_CODED AS [Autocash to Coded],
			AGE_INVCE_AUTOCASH_TO_UNKWN AS [Invoice Autocash to Unknown],
			AGE_UNKWN_AUTOCASH_TO_UNKWN AS [Unknown Autocash to Unknown],
			AGE_UNKWN_CDG_TO_ACTN_TAKEN AS [Unknown Coding to Action Taken],
			AGE_SALES_FLWUP_TO_CODED AS [Sales Followup to Coded],
			AGE_CUSTMR_FLWUP_TO_CODED AS [Customer followup to Coded],
			AGE_POD_REQ_TO_CODED AS [POD request to Coded],
			AGE_RSPNS_RCVD_TO_ACTN_TKN AS [Response received to taken action],
			AGE_UNWN_SLS_CUSTMR_POD_REQ_ESC AS [Queried to Sales, Customer or POD Request],
			AGE_UNWN_SALES_FLWUP_TO_CD_PST_ESC AS [Post escalation, Sales Followup to Coded],
			AGE_UNWN_CUSTMR_FLWUP_TO_CD_PST_ESC AS [Post escalation, Customer followup to Coded],
			AGE_UNWN_POD_REQ_TO_CODED_PST_ESC AS [Post escalation, POD request to Coded],
			AGE_UNWN_ESC_TO_INVLD AS [Unknown Escalation to Invalid],
			AGE_CDG_TO_ACTN_TKN AS [Coding to Action Taken],
			AGE_ACTN_TKN_TO_RSPNS_RCVD AS [Action taken to Response received (Customer/Sales/POD)],
			AGE_CDG_TO_INVLD AS [Coding to Invalid],
			AGE_CDG_SLS_CUSTMR_POD_REQ_ESC AS [Escalation to Sales/Customer/POD],
			AGE_CDG_ESC_TO_INVLD AS [Coding Escalation to Invalid],
			AGE_SLS_BRKR_TO_CLSR AS [Sales to Closure],
			AGE_CUSTMR_TO_CLSR AS [Customer to Closure],
			AGE_POD_REQ_TO_CLSR AS [POD request to Closure],
			AGE_INVLD_TO_CLSR AS [Invalid to Closure],
			ISNULL(CP_OR_NOT,'Not CP') AS [CP OR Not]
	FROM	
			ACCENTURE.PublishKPIMetrics
	WHERE 
	--		FY IN (2016,2017)
	--AND 
			ISNULL(DEDUCTION_AMOUNT_USD,0) > 0 
	--AND
	--		WEEK_DETAILS >= 42
	--AND
	--		FY = 2017
)


GO
/****** Object:  View [ACCENTURE].[UVW_DSPUT_CASE_CHG_LOG]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [ACCENTURE].[UVW_DSPUT_CASE_CHG_LOG] as 
select EXT_KEY as EXT_KEY,
       CASE_GUID as CASE_GUID,
	   CHANGED_BY as CHANGED_BY,
	   POID_ID as POID_ID,
	   [SY-DATUM] as [SY-DATUM],
	   [SY-UZEIT] as [SY-UZEIT],
	   ARG_STRING as ARG_STRING,
	   ARG1 as ARG1,
	   ARG2 as ARG2 
from KNA_EXTERNAL.ECC.LOGDISPUTECASE with(NOLOCK);


GO
/****** Object:  View [ACCENTURE].[UVW_PRED_MODEL_OUTPUT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[ACCENTURE].[UVW_PRED_MODEL_OUTPUT]
AS
(
	SELECT	*
	FROM	ACCENTURE.Predictive_Model_output
)


GO
/****** Object:  View [dbo].[KUSA_TRACK_BRAND_CAT_MAP_BACKUP]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_BRAND_CAT_MAP_BACKUP] AS 
SELECT
	*
FROM
	(
		SELECT
			SUM (a.[Actual Ship $]) AS GSV,
			b.PROD_H4,
			b.PROD_HIER_TEXT4,
			b.ALT_CATEGORY,
			b.ALT_SUBCATEGORY,
			ROW_NUMBER () OVER (
				PARTITION BY b.PROD_H4
				ORDER BY
					SUM ([Actual Ship $]) DESC
			) AS RN
		FROM
			KG_SANDBOX.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT AS a
		LEFT JOIN KG_SANDBOX.dbo.KLG_TPE_MATERIAL_DIM_TGT AS b ON a.[Mixed Pallet Material] = b.MIXED_PAL_MATERIAL
		WHERE
			a.[Actual Ship $] <> 0
		AND (
			RIGHT ([Calendar Week], 4) = YEAR (getdate())
			OR RIGHT ([Calendar Week], 4) = YEAR (getdate()) - 1
		)
		GROUP BY
			b.PROD_H4,
			b.PROD_HIER_TEXT4,
			b.ALT_CATEGORY,
			b.ALT_SUBCATEGORY
	) v
WHERE
	v.RN = 1
GO
/****** Object:  View [dbo].[KUSA_TRACK_BRAND_CAT_MAP_TPE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_BRAND_CAT_MAP_TPE]
AS
SELECT      *
FROM            (SELECT        SUM(a.[Actual Ship $]) AS GSV, b.PROD_H4, b.PROD_HIER_TEXT4, b.ALT_CATEGORY, b.ALT_SUBCATEGORY, ROW_NUMBER() OVER (PARTITION BY 
                                                    b.PROD_H4
                          ORDER BY SUM([Actual Ship $]) DESC) AS RN
FROM            TPE_DS_Target.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT AS a LEFT JOIN
                         TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT AS b ON a.[Mixed Pallet Material] = b.MIXED_PAL_MATERIAL
WHERE        a.[Actual Ship $] <> 0 AND (RIGHT([Calendar Week], 4) = YEAR(getdate()) OR
                         RIGHT([Calendar Week], 4) = YEAR(getdate()) - 1)
GROUP BY b.PROD_H4, b.PROD_HIER_TEXT4, b.ALT_CATEGORY, b.ALT_SUBCATEGORY) v
WHERE        v.RN = 1

GO
/****** Object:  View [dbo].[UVW_OEE_KPI_TABLEAU_CHAD]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =====================================================================================================================================================
-- NAME        	:  UVW_OEE_KPI_TABLEAU
-- PURPOSE & 
-- Description  :  SQL VIEW for Tableau data source
                        
-- REVISIONS:
-- Ver          Date             Author                    Change Reason

-- 1.0         15-DEC-2016      Venkatesh Ramadhyani       1. Initial Version

-- 1.1		   28-NOV-2017	    Anil Kondla				   2. To restrict L3 and L4 Lines for SAO PAULO Plant from 10 Period, 2017 onwards (TASK0431557)
-- =====================================================================================================================================================


CREATE VIEW [dbo].[UVW_OEE_KPI_TABLEAU_CHAD]
AS
WITH CTE as (
  SELECT distinct Y.[FISC_YR], Y.[FISC_PD], H.[REGION], H.[PLANT], H.[LINE], [KPI_NAME]
  FROM [KG_SANDBOX].[US\USKCXR28].[OEE_KPI_TABLEAU_KPI_NAME] T
  CROSS JOIN (SELECT DISTINCT REGION, PLANT, LINE  FROM [KG_SC].[dbo].[ENTITY_HIERARCHY]) H  
  CROSS JOIN (SELECT DISTINCT [FISC_YR]	, 	[FISC_PD] FROM [KG_ANALYTICS_APPS].[ISM].[OEE_TRANSACTIONS_PIVOT]  ) Y)

SELECT * FROM CTE
EXCEPT
(SELECT * FROM CTE
WHERE PLANT = 'SAO PAULO' and FISC_YR >= 2017 and FISC_PD >= 10 and LINE IN ('L3 Cereal - DX','L4 Coating 2') )        --To restrict L3 and L4 Lines for SAO PAULO Plant from 10 Period, 2017 onwards (TASK0431557)






GO
/****** Object:  View [dbo].[UVW_OEE_KPI_TABLEAU_CHAD1]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =====================================================================================================================================================
-- NAME        	:  UVW_OEE_KPI_TABLEAU
-- PURPOSE & 
-- Description  :  SQL VIEW for Tableau data source
                        
-- REVISIONS:
-- Ver          Date             Author                    Change Reason

-- 1.0         15-DEC-2016      Venkatesh Ramadhyani       1. Initial Version

-- 1.1		   28-NOV-2017	    Anil Kondla				   2. To restrict L3 and L4 Lines for SAO PAULO Plant from 10 Period, 2017 onwards (TASK0431557)
-- =====================================================================================================================================================


CREATE VIEW [dbo].[UVW_OEE_KPI_TABLEAU_CHAD1]
AS
WITH CTE as (
  SELECT distinct Y.[FISC_YR], Y.[FISC_PD], Y.[REGION], Y.[PLANT], Y.[LINE], [KPI_NAME]
  FROM [KG_SANDBOX].[US\USKCXR28].[OEE_KPI_TABLEAU_KPI_NAME] T
  CROSS JOIN (SELECT DISTINCT [FISC_YR],[FISC_PD],[REGION],[PLANT],[LINE] FROM [KG_ANALYTICS_APPS].[ISM].[OEE_TRANSACTIONS_PIVOT])Y)

SELECT * FROM CTE
EXCEPT
(SELECT * FROM CTE
WHERE PLANT = 'SAO PAULO' and FISC_YR >= 2017 and FISC_PD >= 10 and LINE IN ('L3 Cereal - DX','L4 Coating 2') )        --To restrict L3 and L4 Lines for SAO PAULO Plant from 10 Period, 2017 onwards (TASK0431557)







GO
/****** Object:  View [US\USKCXR28].[EHS_WASTE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[EHS_WASTE]
AS
SELECT DISTINCT
HIERARCHY_LV1,
HIERARCHY_LV2, 
BUSINESS_UNIT, 
FISC_PD, 
FISC_YR, 
SUM(TOT_ANAEOBIC_DIGESTION) AS TOT_ANAEOBIC_DIGESTION,
SUM(TOT_ANIMAL_FEED_WASTE) AS TOT_ANIMAL_FEED_WASTE,
SUM(TOT_BIO_RECYCLING) AS TOT_BIO_RECYCLING,
SUM(TOT_COMPOSTING) AS TOT_COMPOSTING,
SUM(TOT_EXTERNAL_WWTP) AS TOT_EXTERNAL_WWTP,
SUM(TOT_FERMENTATION) AS TOT_FERMENTATION,
SUM(TOT_INCINERATE) AS TOT_INCINERATE, 
SUM(TOT_LAND_APPLICATION) AS TOT_LAND_APPLICATION,
SUM(TOT_RECYCLED) AS TOT_RECYCLED,
SUM(TOT_WASTE_TO_LANDFILL) AS TOT_WASTE_TO_LANDFILL,
SUM(PROD_PRODUCED_TONNES) AS PROD_PRODUCED_TONNES
FROM [KG_ANALYTICS_APPS].[ISM].[SCM_TRANSACTIONS] AS SOURCETABLE
PIVOT (SUM(ACTUAL)
	FOR METRIC_ID
	IN (TOT_ANAEOBIC_DIGESTION, TOT_ANIMAL_FEED_WASTE, TOT_BIO_RECYCLING,
		TOT_COMPOSTING, TOT_EXTERNAL_WWTP, TOT_FERMENTATION, TOT_INCINERATE,
		TOT_LAND_APPLICATION, TOT_RECYCLED, TOT_WASTE_TO_LANDFILL, 
		PROD_PRODUCED_TONNES)) AS PIVOTTABLE
GROUP BY HIERARCHY_LV1, HIERARCHY_LV2, BUSINESS_UNIT, FISC_PD, FISC_YR

GO
/****** Object:  View [US\USKCXR28].[FACTORY_EXPENSE_WATERFALL_CHART]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[FACTORY_EXPENSE_WATERFALL_CHART]
AS
SELECT        x.REGION, x.BUSINESS_UNIT, x.PLANT, x.FISC_YR, x.FISC_PD, x.CATEGORY, x.AMOUNT_USD, y.PROD_PRODUCED_KG, 
                         x.AMOUNT_USD / y.PROD_PRODUCED_KG AS USD_PER_KILO
FROM            (SELECT        REGION, BUSINESS_UNIT, PLANT, FISC_YR, FISC_PD, CE_CATEGORY AS CATEGORY, AMOUNT_USD
                          FROM            KG_ANALYTICS_APPS.ISM.FP_FACTORY_EXPENSE
                          WHERE        (REGION = 'KNA') AND (PLANT IS NOT NULL)
                          UNION
                          SELECT        REGION, BUSINESS_UNIT, PLANT, FISC_YR, FISC_PD, CATEGORY, AMOUNT_USD
                          FROM            KG_ANALYTICS_APPS.ISM.FP_WASTE
                          WHERE        (REGION = 'KNA') AND (PLANT IS NOT NULL)) AS x LEFT OUTER JOIN
                             (SELECT        HIERARCHY_LV1 AS REGION, HIERARCHY_LV2 AS PLANT, BUSINESS_UNIT, FISC_YR, FISC_PD, ACTUAL AS PROD_PRODUCED_KG
                               FROM            KG_ANALYTICS_APPS.ISM.SCM_TRANSACTIONS
                               WHERE        (METRIC_ID = 'PROD_PRODUCED_KG') AND (ACTUAL > 0)) AS y ON x.PLANT = y.PLANT AND x.FISC_YR = y.FISC_YR AND x.FISC_PD = y.FISC_PD

GO
/****** Object:  View [US\USKCXR28].[ISM_OEE_TRANSACTIONS_PIVOT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[ISM_OEE_TRANSACTIONS_PIVOT]
AS
SELECT DISTINCT 
                         REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR, SUM(ALL_SCH_UNSCH) AS ALL_SCH_UNSCH, SUM(ELAPSE_TIME) AS ELAPSE_TIME, 
                         SUM(OVERWEIGHTS_NMR) AS OVERWEIGHTS_NMR, SUM(OVERWEIGHTS_DNR) AS OVERWEIGHTS_DNR, SUM(QUALITY_Q_NMR) AS QUALITY_Q_NMR, 
                         SUM(QUALITY_Q_DNR) AS QUALITY_Q_DNR, SUM(RATE_R_NMR) AS RATE_R_NMR, SUM(RATE_R_DNR) AS RATE_R_DNR, SUM(SCH_CAPITAL_PROJECT) 
                         AS SCH_CAPITAL_PROJECT, SUM(SCH_CHANGE_OVER) AS SCH_CHANGE_OVER, SUM(SCH_CLEANUP_SANITATION) AS SCH_CLEANUP_SANITATION, 
                         SUM(SCH_DOWN) AS SCH_DOWN, SUM(SCH_FOOD_SAFETY) AS SCH_FOOD_SAFETY, SUM(SCH_FUMIGATION) AS SCH_FUMIGATION, SUM(SCH_HOLIDAY) 
                         AS SCH_HOLIDAY, SUM(SCH_MAINTENANCE) AS SCH_MAINTENANCE, SUM(SCH_NO_DEMAND) AS SCH_NO_DEMAND, SUM(SCH_OPERATION) 
                         AS SCH_OPERATION, SUM(SCH_SETUP_STARTUP) AS SCH_SETUP_STARTUP, SUM(SCH_TEST_TRIAL) AS SCH_TEST_TRIAL, SUM(SCH_UTILITY_OUTAGE) 
                         AS SCH_UTILITY_OUTAGE, SUM(SCRAP_NMR) AS SCRAP_NMR, SUM(SCRAP_DNR) AS SCRAP_DNR, SUM(UNSCH_CAPITAL_PROJECT) 
                         AS UNSCH_CAPITAL_PROJECT, SUM(UNSCH_CLEANUP_SANITATION) AS UNSCH_CLEANUP_SANITATION, SUM(UNSCH_FOOD_SAFETY) AS UNSCH_FOOD_SAFETY, 
                         SUM(UNSCH_MAINTENANCE) AS UNSCH_MAINTENANCE, SUM(UNSCH_MATERIAL) AS UNSCH_MATERIAL, SUM(UNSCH_NO_CREW) AS UNSCH_NO_CREW, 
                         SUM(UNSCH_OPERATIONS) AS UNSCH_OPERATIONS, SUM(UNSCH_UTILITY_OUTAGE) AS UNSCH_UTILITY_OUTAGE, SUM(UNSCH_WEATHER) 
                         AS UNSCH_WEATHER
FROM            [KG_ANALYTICS_APPS].[ISM].[OEE_TRANSACTIONS] AS SourceTable PIVOT (SUM(ACTUAL) FOR METRIC_ID IN (ALL_SCH_UNSCH, ELAPSE_TIME, 
                         OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, QUALITY_Q_NMR, QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, 
                         SCH_CLEANUP_SANITATION, SCH_DOWN, SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, SCH_NO_DEMAND, SCH_OPERATION, 
                         SCH_SETUP_STARTUP, SCH_TEST_TRIAL, SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, 
                         UNSCH_FOOD_SAFETY, UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER)) 
                         AS PivotTable
GROUP BY REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR

GO
/****** Object:  View [US\USKCXR28].[ISM_SCM_ADHOC_DATA]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[ISM_SCM_ADHOC_DATA]
AS
SELECT DISTINCT 
[HIERARCHY_LV1], 
[HIERARCHY_LV2], 
[FISC_PD], 
[FISC_YR], 
SUM(RECORDABLE_INCIDENTS) AS RECORDABLE_INCIDENTS,
SUM(TTL_OT_HRS_WORKED) AS TTL_OT_HRS_WORKED, 
SUM(TTL_LABOR_HRS_WORKED) AS TTL_LABOR_HRS_WORKED, 
SUM(CAC_RTM) AS CAC_RTM, 
SUM(PROD_PRODUCED_TONNES) AS PROD_PRODUCED_TONNES, 
SUM(TOTAL_FOOD_WASTE) AS TOTAL_FOOD_WASTE, 
SUM(TOTAL_WASTE) AS TOTAL_WASTE, 
SUM(LOST_TIME_INCIDENTS) AS LOST_TIME_INCIDENTS, 
SUM(WATER_USED) AS WATER_USED, 
SUM(WATER_USAGE) AS WATER_USAGE, 
SUM(ENERGY_USAGE) AS ENERGY_USAGE, 
SUM(B_DEFECTS) AS B_DEFECTS, 
SUM(C_DEFECTS) AS C_DEFECTS, 
SUM(FOOD_SAFETY_VIOLATIONS) AS FOOD_SAFETY_VIOLATIONS, 
SUM(REGULATORY_ENVIRONMENTAL) AS REGULATORY_ENVIRONMENTAL, 
SUM(REGULATORY_FOOD_SAFETY) AS REGULATORY_FOOD_SAFETY, 
SUM(REGULATORY_PEOPLE_SAFETY) AS REGULATORY_PEOPLE_SAFETY
FROM [KG_ANALYTICS_APPS].[ISM].[SCM_TRANSACTIONS] AS SourceTable 
PIVOT (SUM([ACTUAL]) FOR [METRIC_ID] IN (RECORDABLE_INCIDENTS, TTL_OT_HRS_WORKED, 
TTL_LABOR_HRS_WORKED, CAC_RTM, PROD_PRODUCED_TONNES, TOTAL_FOOD_WASTE, TOTAL_WASTE, LOST_TIME_INCIDENTS, WATER_USED, 
WATER_USAGE, ENERGY_USAGE, B_DEFECTS, C_DEFECTS, FOOD_SAFETY_VIOLATIONS, REGULATORY_ENVIRONMENTAL, REGULATORY_FOOD_SAFETY, 
REGULATORY_PEOPLE_SAFETY)) AS PivotTable
WHERE [HIERARCHY_LV2] NOT LIKE 'ALL' AND [BUSINESS_UNIT] NOT LIKE 'ALL'
GROUP BY [HIERARCHY_LV1], [HIERARCHY_LV2], [FISC_PD], [FISC_YR]

GO
/****** Object:  View [US\USKCXR28].[OEE_DATA_WITH_TARGETS]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[OEE_DATA_WITH_TARGETS]
AS
WITH  Tool1_cf26  
	AS (SELECT KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.PLANT, KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.LINE, 
    KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.FISC_PD, KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.FISC_YR, 
    KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.METRIC_ID, KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.METRIC_TYPE, 
    KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.ACTUAL 
	FROM KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS 
	WHERE KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.FISC_YR = 2018),
	Tool13_42d1  AS (SELECT  PLANT ,  LINE ,  FISC_PD ,  FISC_YR ,  METRIC_ID ,  METRIC_TYPE ,  ACTUAL  AS  "VALUES"  FROM  Tool1_cf26 ), 
	Tool15_4a98  AS (SELECT  PLANT ,  LINE ,  FISC_PD ,  FISC_YR ,  METRIC_ID ,  METRIC_TYPE , MIN( "VALUES" ) AS  Min_VALUES  FROM  Tool13_42d1  
	GROUP BY  PLANT ,  LINE ,  FISC_PD ,  FISC_YR ,  METRIC_ID ,  METRIC_TYPE ), 
Tool27True_6583  
	AS (SELECT * FROM  Tool15_4a98  WHERE  Min_VALUES  IS NOT NULL), 
Tool6_7e5b  
	AS (SELECT KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.PLANT, KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.LINE, 
	KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.FISC_PD, KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.FISC_YR, 
    KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.METRIC_ID, KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.METRIC_TYPE, 
    KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.TARGET From KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS 
	WHERE KG_ANALYTICS_APPS.ISM.OEE_TRANSACTIONS.FISC_YR = 2018), 
Tool18_0695 
	AS (SELECT  PLANT ,  LINE ,  FISC_PD ,  FISC_YR ,  METRIC_ID ,  METRIC_TYPE ,  TARGET  AS  "VALUES"  FROM  Tool6_7e5b ), 
Tool19_c53b 
	AS (SELECT  PLANT ,  LINE ,  FISC_PD ,  FISC_YR ,  METRIC_ID ,  METRIC_TYPE , MIN( "VALUES" ) AS  Min_VALUES  FROM  Tool18_0695  
	GROUP BY  PLANT ,  LINE ,  FISC_PD ,  FISC_YR ,  METRIC_ID ,  METRIC_TYPE ), 
Tool20True_a710 
	AS (SELECT * FROM  Tool19_c53b  WHERE  Min_VALUES  IS NOT NULL), 
TARGET_TEMP_TABLE  
	AS (SELECT  PLANT, LINE, FISC_PD, FISC_YR, METRIC_ID, METRIC_TYPE, Min_VALUES 
	FROM  Tool27True_6583  
    UNION ALL 
    SELECT PLANT, LINE, FISC_PD, FISC_YR, METRIC_ID, METRIC_TYPE, Min_VALUES 
	FROM  Tool20True_a710)
SELECT DISTINCT 
	PLANT, LINE, FISC_PD, FISC_YR, METRIC_TYPE, 
	SUM(ALL_SCH_UNSCH) AS ALL_SCH_UNSCH, SUM(ELAPSE_TIME) AS ELAPSE_TIME, SUM(OVERWEIGHTS_NMR) AS OVERWEIGHTS_NMR, 
    SUM(OVERWEIGHTS_DNR) AS OVERWEIGHTS_DNR, SUM(QUALITY_Q_NMR) AS QUALITY_Q_NMR, SUM(QUALITY_Q_DNR) AS QUALITY_Q_DNR, 
    SUM(RATE_R_NMR) AS RATE_R_NMR, SUM(RATE_R_DNR) AS RATE_R_DNR, SUM(SCH_CAPITAL_PROJECT) AS SCH_CAPITAL_PROJECT, 
    SUM(SCH_CHANGE_OVER) AS SCH_CHANGE_OVER, SUM(SCH_CLEANUP_SANITATION) AS SCH_CLEANUP_SANITATION, SUM(SCH_DOWN) AS SCH_DOWN, 
    SUM(SCH_FOOD_SAFETY) AS SCH_FOOD_SAFETY, SUM(SCH_FUMIGATION) AS SCH_FUMIGATION, SUM(SCH_HOLIDAY) AS SCH_HOLIDAY, 
    SUM(SCH_MAINTENANCE) AS SCH_MAINTENANCE, SUM(SCH_NO_DEMAND) AS SCH_NO_DEMAND, SUM(SCH_OPERATION) AS SCH_OPERATION, 
    SUM(SCH_SETUP_STARTUP) AS SCH_SETUP_STARTUP, SUM(SCH_TEST_TRIAL) AS SCH_TEST_TRIAL, SUM(SCH_UTILITY_OUTAGE) AS SCH_UTILITY_OUTAGE, 
    SUM(SCRAP_NMR) AS SCRAP_NMR, SUM(SCRAP_DNR) AS SCRAP_DNR, SUM(UNSCH_CAPITAL_PROJECT) AS UNSCH_CAPITAL_PROJECT, 
    SUM(UNSCH_CLEANUP_SANITATION) AS UNSCH_CLEANUP_SANITATION, SUM(UNSCH_FOOD_SAFETY) AS UNSCH_FOOD_SAFETY, 
    SUM(UNSCH_MAINTENANCE) AS UNSCH_MAINTENANCE, SUM(UNSCH_MATERIAL) AS UNSCH_MATERIAL, SUM(UNSCH_NO_CREW) AS UNSCH_NO_CREW, 
    SUM(UNSCH_OPERATIONS) AS UNSCH_OPERATIONS, SUM(UNSCH_UTILITY_OUTAGE) AS UNSCH_UTILITY_OUTAGE, SUM(UNSCH_WEATHER) AS UNSCH_WEATHER, 
    SUM(PLNT_RELIABILITY_TGT) AS PLNT_RELIABILITY_TGT, SUM(PLND_MAINT_UTL_TGT) AS PLND_MAINT_UTL_TGT, 
    SUM(BUDGETED_VOLUME) AS BUDGETED_VOLUME, SUM(AVL_GROSS_TGT) AS AVL_GROSS_TGT, SUM(AVL_NET_TGT) AS AVL_NET_TGT,
    SUM(CHG_TGT) AS CHG_TGT, SUM(CLNSNG_SANIT_TGT) AS CLNSNG_SANIT_TGT, SUM(CPTL_PROJ_TGT) AS CPTL_PROJ_TGT,
    SUM(EQP_BRKDN_TGT) AS EQP_BRKDN_TGT, SUM(FUMIGATION_TGT) AS FUMIGATION_TGT, SUM(HOLIDAY_TGT) AS HOLIDAY_TGT,
    SUM(LN_DNTM_TGT) AS LN_DNTM_TGT, SUM(NO_DEMAND_TGT) AS NO_DEMAND_TGT, SUM(OEE_GROSS_TGT) AS OEE_GROSS_TGT,
    SUM(OEE_NET_TGT_KPI) AS OEE_NET_TGT_KPI, SUM(OVERWEIGHT_TGT) AS OVERWEIGHT_TGT, SUM(PLNT_TEST_TGT) AS PLNT_TEST_TGT,
    SUM(QUALITY_TGT) AS QUALITY_TGT, SUM(SCRAP_TGT) AS SCRAP_TGT, SUM(SPD_LS_MNR_STPS_TGT) AS SPD_LS_MNR_STPS_TGT, SUM(UMPW_TGT) AS UMPW_TGT
	FROM TARGET_TEMP_TABLE  
	PIVOT (SUM(Min_VALUES) 
	FOR METRIC_ID 
    IN (ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, QUALITY_Q_NMR, QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, 
    SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, SCH_CLEANUP_SANITATION, SCH_DOWN, SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, 
    SCH_MAINTENANCE, SCH_NO_DEMAND, SCH_OPERATION, SCH_SETUP_STARTUP, SCH_TEST_TRIAL, SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, 
    UNSCH_CAPITAL_PROJECT, UNSCH_CLEANUP_SANITATION, UNSCH_FOOD_SAFETY, UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, 
    UNSCH_OPERATIONS, UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, PLNT_RELIABILITY_TGT, PLND_MAINT_UTL_TGT, BUDGETED_VOLUME, 
    AVL_GROSS_TGT, AVL_NET_TGT, CHG_TGT, CLNSNG_SANIT_TGT, CPTL_PROJ_TGT, EQP_BRKDN_TGT, FUMIGATION_TGT, HOLIDAY_TGT,
    LN_DNTM_TGT, NO_DEMAND_TGT, OEE_GROSS_TGT, OEE_NET_TGT_KPI, OVERWEIGHT_TGT, PLNT_TEST_TGT, 
    QUALITY_TGT, SCRAP_TGT, SPD_LS_MNR_STPS_TGT, UMPW_TGT)) AS PivotTable
GROUP BY  PLANT, LINE , FISC_PD, FISC_YR, METRIC_TYPE

GO
/****** Object:  View [US\USKCXR28].[OEE_TARGETS_DATA]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[OEE_TARGETS_DATA]
AS
SELECT DISTINCT 
REGION, 
BUSINESS_UNIT, 
PLANT, LINE, FISC_PD, FISC_YR, 
	SUM(BUDGETED_VOLUME) AS BUDGETED_VOLUME, SUM(CHG_TGT) AS CHG_TGT,
	SUM(CLNSNG_SANIT_TGT) AS CLNSNG_SANIT_TGT, SUM(CPTL_PROJ_TGT) AS CPTL_PROJ_TGT,
	SUM(EQP_BRKDN_TGT) AS EQP_BRKDN_TGT, SUM(FUMIGATION_TGT) AS FUMIGATION_TGT,
	SUM(HOLIDAY_TGT) AS HOLIDAY_TGT, SUM(LN_DNTM_TGT) AS LN_DNTM_TGT,
	SUM(NO_DEMAND_TGT) AS NO_DEMAND_TGT, SUM(OVERWEIGHT_TGT) AS OVERWEIGHT_TGT,
	SUM(PLND_MAINT_UTL_TGT) AS PLND_MAINT_UTL_TGT, SUM(PLNT_RELIABILITY_TGT) AS PLNT_RELIABILITY_TGT,
	SUM(PLNT_TEST_TGT) AS PLNT_TEST_TGT, SUM(QUALITY_TGT) AS QUALITY_TGT,
	SUM(SCRAP_TGT) AS SCRAP_TGT, SUM(SPD_LS_MNR_STPS_TGT) AS SPD_LS_MNR_STPS_TGT,
	SUM(UMPW_TGT) AS UMPW_TGT
FROM [KG_ANALYTICS_APPS].[ISM].[OEE_TRANSACTIONS] AS SourceTable 
	PIVOT (SUM(TARGET) FOR METRIC_ID 
	IN (BUDGETED_VOLUME, CHG_TGT, CLNSNG_SANIT_TGT, CPTL_PROJ_TGT, EQP_BRKDN_TGT,
	    FUMIGATION_TGT, HOLIDAY_TGT, LN_DNTM_TGT, NO_DEMAND_TGT, OVERWEIGHT_TGT,
		PLND_MAINT_UTL_TGT, PLNT_RELIABILITY_TGT, PLNT_TEST_TGT, QUALITY_TGT,
		SCRAP_TGT, SPD_LS_MNR_STPS_TGT, UMPW_TGT)) AS PivotTable
GROUP BY REGION, BUSINESS_UNIT, PLANT, LINE, FISC_PD, FISC_YR

GO
/****** Object:  View [US\USKCXR28].[PLANT_LEVEL_DATA_WPREVYEAR]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [US\USKCXR28].[PLANT_LEVEL_DATA_WPREVYEAR]
AS
WITH "Tool1_a9a1" AS (SELECT DISTINCT 
REGION, BUSINESS_UNIT, PLANT, CONVERT(INT,FISC_PD) AS FISC_PD, FISC_YR, 
SUM(ALL_SCH_UNSCH) AS ALL_SCH_UNSCH, SUM(ELAPSE_TIME) AS ELAPSE_TIME, SUM(OVERWEIGHTS_NMR) AS OVERWEIGHTS_NMR, 
SUM(OVERWEIGHTS_DNR) AS OVERWEIGHTS_DNR, SUM(QUALITY_Q_NMR) AS QUALITY_Q_NMR, SUM(QUALITY_Q_DNR) AS QUALITY_Q_DNR, 
SUM(RATE_R_NMR) AS RATE_R_NMR, SUM(RATE_R_DNR) AS RATE_R_DNR, SUM(SCH_CAPITAL_PROJECT) AS SCH_CAPITAL_PROJECT, 
SUM(SCH_CHANGE_OVER) AS SCH_CHANGE_OVER, SUM(SCH_CLEANUP_SANITATION) AS SCH_CLEANUP_SANITATION, SUM(SCH_DOWN) AS SCH_DOWN, 
SUM(SCH_FOOD_SAFETY) AS SCH_FOOD_SAFETY, SUM(SCH_FUMIGATION) AS SCH_FUMIGATION, SUM(SCH_HOLIDAY) AS SCH_HOLIDAY, 
SUM(SCH_MAINTENANCE) AS SCH_MAINTENANCE, SUM(SCH_NO_DEMAND) AS SCH_NO_DEMAND, SUM(SCH_OPERATION) AS SCH_OPERATION, 
SUM(SCH_SETUP_STARTUP) AS SCH_SETUP_STARTUP, SUM(SCH_TEST_TRIAL) AS SCH_TEST_TRIAL, SUM(SCH_UTILITY_OUTAGE) AS SCH_UTILITY_OUTAGE, 
SUM(SCRAP_NMR) AS SCRAP_NMR, SUM(SCRAP_DNR) AS SCRAP_DNR, SUM(UNSCH_CAPITAL_PROJECT) AS UNSCH_CAPITAL_PROJECT, 
SUM(UNSCH_CLEANUP_SANITATION) AS UNSCH_CLEANUP_SANITATION, SUM(UNSCH_FOOD_SAFETY) AS UNSCH_FOOD_SAFETY, 
SUM(UNSCH_MAINTENANCE) AS UNSCH_MAINTENANCE, SUM(UNSCH_MATERIAL) AS UNSCH_MATERIAL, SUM(UNSCH_NO_CREW) AS UNSCH_NO_CREW, 
SUM(UNSCH_OPERATIONS) AS UNSCH_OPERATIONS, SUM(UNSCH_UTILITY_OUTAGE) AS UNSCH_UTILITY_OUTAGE, SUM(UNSCH_WEATHER) AS UNSCH_WEATHER
FROM [KG_ANALYTICS_APPS].[ISM].[OEE_TRANSACTIONS] AS SourceTable 
PIVOT (SUM(ACTUAL) FOR 
METRIC_ID 
IN (ALL_SCH_UNSCH, ELAPSE_TIME, OVERWEIGHTS_NMR, OVERWEIGHTS_DNR, QUALITY_Q_NMR, QUALITY_Q_DNR, RATE_R_NMR, RATE_R_DNR, 
SCH_CAPITAL_PROJECT, SCH_CHANGE_OVER, SCH_CLEANUP_SANITATION, SCH_DOWN, SCH_FOOD_SAFETY, SCH_FUMIGATION, SCH_HOLIDAY, SCH_MAINTENANCE, 
SCH_NO_DEMAND, SCH_OPERATION, SCH_SETUP_STARTUP, SCH_TEST_TRIAL, SCH_UTILITY_OUTAGE, SCRAP_NMR, SCRAP_DNR, UNSCH_CAPITAL_PROJECT, 
UNSCH_CLEANUP_SANITATION, UNSCH_FOOD_SAFETY, UNSCH_MAINTENANCE, UNSCH_MATERIAL, UNSCH_NO_CREW, UNSCH_OPERATIONS, 
UNSCH_UTILITY_OUTAGE, UNSCH_WEATHER, PLNT_RELIABILITY_TGT)) AS PivotTable 
GROUP BY REGION, BUSINESS_UNIT, PLANT, FISC_PD, FISC_YR), "Tool15_5b56" AS (SELECT DISTINCT 
REGION, BUSINESS_UNIT, PLANT, FISC_PD, FISC_YR, 
SUM(PLNT_RELIABILITY_TGT) AS PLNT_RELIABILITY_TGT

FROM [KG_SANDBOX].[dbo].[OMAHA_OEE_TARGETS] AS SourceTable 

PIVOT (SUM(TARGET) FOR 
METRIC_ID 

IN (PLNT_RELIABILITY_TGT)) AS PivotTable 
GROUP BY REGION, BUSINESS_UNIT, PLANT, FISC_PD, FISC_YR), "Tool30_a029" AS (SELECT "Tool1_a9a1"."REGION", "Tool1_a9a1"."BUSINESS_UNIT", "Tool1_a9a1"."PLANT", "Tool1_a9a1"."FISC_PD", "Tool1_a9a1"."FISC_YR", "Tool1_a9a1"."ALL_SCH_UNSCH", "Tool1_a9a1"."ELAPSE_TIME", "Tool1_a9a1"."OVERWEIGHTS_NMR", "Tool1_a9a1"."OVERWEIGHTS_DNR", "Tool1_a9a1"."QUALITY_Q_NMR", "Tool1_a9a1"."QUALITY_Q_DNR", "Tool1_a9a1"."RATE_R_NMR", "Tool1_a9a1"."RATE_R_DNR", "Tool1_a9a1"."SCH_CAPITAL_PROJECT", "Tool1_a9a1"."SCH_CHANGE_OVER", "Tool1_a9a1"."SCH_CLEANUP_SANITATION", "Tool1_a9a1"."SCH_DOWN", "Tool1_a9a1"."SCH_FOOD_SAFETY", "Tool1_a9a1"."SCH_FUMIGATION", "Tool1_a9a1"."SCH_HOLIDAY", "Tool1_a9a1"."SCH_MAINTENANCE", "Tool1_a9a1"."SCH_NO_DEMAND", "Tool1_a9a1"."SCH_OPERATION", "Tool1_a9a1"."SCH_SETUP_STARTUP", "Tool1_a9a1"."SCH_TEST_TRIAL", "Tool1_a9a1"."SCH_UTILITY_OUTAGE", "Tool1_a9a1"."SCRAP_NMR", "Tool1_a9a1"."SCRAP_DNR", "Tool1_a9a1"."UNSCH_CAPITAL_PROJECT", "Tool1_a9a1"."UNSCH_CLEANUP_SANITATION", "Tool1_a9a1"."UNSCH_FOOD_SAFETY", "Tool1_a9a1"."UNSCH_MAINTENANCE", "Tool1_a9a1"."UNSCH_MATERIAL", "Tool1_a9a1"."UNSCH_NO_CREW", "Tool1_a9a1"."UNSCH_OPERATIONS", "Tool1_a9a1"."UNSCH_UTILITY_OUTAGE", "Tool1_a9a1"."UNSCH_WEATHER", "Tool15_5b56"."REGION" AS "R_REGION", "Tool15_5b56"."BUSINESS_UNIT" AS "R_BUSINESS_UNIT", "Tool15_5b56"."PLANT" AS "R_PLANT", "Tool15_5b56"."FISC_PD" AS "R_FISC_PD", "Tool15_5b56"."FISC_YR" AS "R_FISC_YR", "Tool15_5b56"."PLNT_RELIABILITY_TGT" FROM "Tool1_a9a1" LEFT JOIN "Tool15_5b56" ON "Tool1_a9a1"."REGION" = "Tool15_5b56"."REGION" AND "Tool1_a9a1"."PLANT" = "Tool15_5b56"."PLANT" AND "Tool1_a9a1"."FISC_PD" = "Tool15_5b56"."FISC_PD" AND "Tool1_a9a1"."FISC_YR" = "Tool15_5b56"."FISC_YR"), "Tool33_6557" AS (SELECT "REGION", "BUSINESS_UNIT", "PLANT", "FISC_PD", "FISC_YR", "ALL_SCH_UNSCH", "ELAPSE_TIME", "OVERWEIGHTS_NMR", "OVERWEIGHTS_DNR", "QUALITY_Q_NMR", "QUALITY_Q_DNR", "RATE_R_NMR", "RATE_R_DNR", "SCH_CAPITAL_PROJECT", "SCH_CHANGE_OVER", "SCH_CLEANUP_SANITATION", "SCH_DOWN", "SCH_FOOD_SAFETY", "SCH_FUMIGATION", "SCH_HOLIDAY", "SCH_MAINTENANCE", "SCH_NO_DEMAND", "SCH_OPERATION", "SCH_SETUP_STARTUP", "SCH_TEST_TRIAL", "SCH_UTILITY_OUTAGE", "SCRAP_NMR", "SCRAP_DNR", "UNSCH_CAPITAL_PROJECT", "UNSCH_CLEANUP_SANITATION", "UNSCH_FOOD_SAFETY", "UNSCH_MAINTENANCE", "UNSCH_MATERIAL", "UNSCH_NO_CREW", "UNSCH_OPERATIONS", "UNSCH_UTILITY_OUTAGE", "UNSCH_WEATHER", "PLNT_RELIABILITY_TGT" FROM "Tool30_a029"), "Tool48_129a" AS (SELECT "REGION", "BUSINESS_UNIT", "PLANT", "FISC_PD", "FISC_YR", "ALL_SCH_UNSCH", "ELAPSE_TIME", "OVERWEIGHTS_NMR", "OVERWEIGHTS_DNR", "QUALITY_Q_NMR", "QUALITY_Q_DNR", "RATE_R_NMR", "RATE_R_DNR", "SCH_CAPITAL_PROJECT", "SCH_CHANGE_OVER", "SCH_CLEANUP_SANITATION", "SCH_DOWN", "SCH_FOOD_SAFETY", "SCH_FUMIGATION", "SCH_HOLIDAY", "SCH_MAINTENANCE", "SCH_NO_DEMAND", "SCH_OPERATION", "SCH_SETUP_STARTUP", "SCH_TEST_TRIAL", "SCH_UTILITY_OUTAGE", "SCRAP_NMR", "SCRAP_DNR", "UNSCH_CAPITAL_PROJECT", "UNSCH_CLEANUP_SANITATION", "UNSCH_FOOD_SAFETY", "UNSCH_MAINTENANCE", "UNSCH_MATERIAL", "UNSCH_NO_CREW", "UNSCH_OPERATIONS", "UNSCH_UTILITY_OUTAGE", "UNSCH_WEATHER", "PLNT_RELIABILITY_TGT", ("FISC_YR"-1) AS "PREV_YEAR" FROM "Tool33_6557"), "Tool41_2b10" AS (SELECT "Tool48_129a"."REGION", "Tool48_129a"."BUSINESS_UNIT", "Tool48_129a"."PLANT", "Tool48_129a"."FISC_PD", "Tool48_129a"."FISC_YR", "Tool48_129a"."ALL_SCH_UNSCH", "Tool48_129a"."ELAPSE_TIME", "Tool48_129a"."OVERWEIGHTS_NMR", "Tool48_129a"."OVERWEIGHTS_DNR", "Tool48_129a"."QUALITY_Q_NMR", "Tool48_129a"."QUALITY_Q_DNR", "Tool48_129a"."RATE_R_NMR", "Tool48_129a"."RATE_R_DNR", "Tool48_129a"."SCH_CAPITAL_PROJECT", "Tool48_129a"."SCH_CHANGE_OVER", "Tool48_129a"."SCH_CLEANUP_SANITATION", "Tool48_129a"."SCH_DOWN", "Tool48_129a"."SCH_FOOD_SAFETY", "Tool48_129a"."SCH_FUMIGATION", "Tool48_129a"."SCH_HOLIDAY", "Tool48_129a"."SCH_MAINTENANCE", "Tool48_129a"."SCH_NO_DEMAND", "Tool48_129a"."SCH_OPERATION", "Tool48_129a"."SCH_SETUP_STARTUP", "Tool48_129a"."SCH_TEST_TRIAL", "Tool48_129a"."SCH_UTILITY_OUTAGE", "Tool48_129a"."SCRAP_NMR", "Tool48_129a"."SCRAP_DNR", "Tool48_129a"."UNSCH_CAPITAL_PROJECT", "Tool48_129a"."UNSCH_CLEANUP_SANITATION", "Tool48_129a"."UNSCH_FOOD_SAFETY", "Tool48_129a"."UNSCH_MAINTENANCE", "Tool48_129a"."UNSCH_MATERIAL", "Tool48_129a"."UNSCH_NO_CREW", "Tool48_129a"."UNSCH_OPERATIONS", "Tool48_129a"."UNSCH_UTILITY_OUTAGE", "Tool48_129a"."UNSCH_WEATHER", "Tool48_129a"."PLNT_RELIABILITY_TGT", "Tool48_129a"."PREV_YEAR", "Tool33_6557"."REGION" AS "R_REGION", "Tool33_6557"."BUSINESS_UNIT" AS "R_BUSINESS_UNIT", "Tool33_6557"."PLANT" AS "R_PLANT", "Tool33_6557"."FISC_PD" AS "R_FISC_PD", "Tool33_6557"."FISC_YR" AS "R_FISC_YR", "Tool33_6557"."ALL_SCH_UNSCH" AS "R_ALL_SCH_UNSCH", "Tool33_6557"."ELAPSE_TIME" AS "R_ELAPSE_TIME", "Tool33_6557"."OVERWEIGHTS_NMR" AS "R_OVERWEIGHTS_NMR", "Tool33_6557"."OVERWEIGHTS_DNR" AS "R_OVERWEIGHTS_DNR", "Tool33_6557"."QUALITY_Q_NMR" AS "R_QUALITY_Q_NMR", "Tool33_6557"."QUALITY_Q_DNR" AS "R_QUALITY_Q_DNR", "Tool33_6557"."RATE_R_NMR" AS "R_RATE_R_NMR", "Tool33_6557"."RATE_R_DNR" AS "R_RATE_R_DNR", "Tool33_6557"."SCH_CAPITAL_PROJECT" AS "R_SCH_CAPITAL_PROJECT", "Tool33_6557"."SCH_CHANGE_OVER" AS "R_SCH_CHANGE_OVER", "Tool33_6557"."SCH_CLEANUP_SANITATION" AS "R_SCH_CLEANUP_SANITATION", "Tool33_6557"."SCH_DOWN" AS "R_SCH_DOWN", "Tool33_6557"."SCH_FOOD_SAFETY" AS "R_SCH_FOOD_SAFETY", "Tool33_6557"."SCH_FUMIGATION" AS "R_SCH_FUMIGATION", "Tool33_6557"."SCH_HOLIDAY" AS "R_SCH_HOLIDAY", "Tool33_6557"."SCH_MAINTENANCE" AS "R_SCH_MAINTENANCE", "Tool33_6557"."SCH_NO_DEMAND" AS "R_SCH_NO_DEMAND", "Tool33_6557"."SCH_OPERATION" AS "R_SCH_OPERATION", "Tool33_6557"."SCH_SETUP_STARTUP" AS "R_SCH_SETUP_STARTUP", "Tool33_6557"."SCH_TEST_TRIAL" AS "R_SCH_TEST_TRIAL", "Tool33_6557"."SCH_UTILITY_OUTAGE" AS "R_SCH_UTILITY_OUTAGE", "Tool33_6557"."SCRAP_NMR" AS "R_SCRAP_NMR", "Tool33_6557"."SCRAP_DNR" AS "R_SCRAP_DNR", "Tool33_6557"."UNSCH_CAPITAL_PROJECT" AS "R_UNSCH_CAPITAL_PROJECT", "Tool33_6557"."UNSCH_CLEANUP_SANITATION" AS "R_UNSCH_CLEANUP_SANITATION", "Tool33_6557"."UNSCH_FOOD_SAFETY" AS "R_UNSCH_FOOD_SAFETY", "Tool33_6557"."UNSCH_MAINTENANCE" AS "R_UNSCH_MAINTENANCE", "Tool33_6557"."UNSCH_MATERIAL" AS "R_UNSCH_MATERIAL", "Tool33_6557"."UNSCH_NO_CREW" AS "R_UNSCH_NO_CREW", "Tool33_6557"."UNSCH_OPERATIONS" AS "R_UNSCH_OPERATIONS", "Tool33_6557"."UNSCH_UTILITY_OUTAGE" AS "R_UNSCH_UTILITY_OUTAGE", "Tool33_6557"."UNSCH_WEATHER" AS "R_UNSCH_WEATHER", "Tool33_6557"."PLNT_RELIABILITY_TGT" AS "R_PLNT_RELIABILITY_TGT" FROM "Tool48_129a" LEFT JOIN "Tool33_6557" ON "Tool48_129a"."PLANT" = "Tool33_6557"."PLANT" AND "Tool48_129a"."FISC_PD" = "Tool33_6557"."FISC_PD" AND "Tool48_129a"."PREV_YEAR" = "Tool33_6557"."FISC_YR") SELECT "REGION", "BUSINESS_UNIT", "PLANT", "FISC_PD", "FISC_YR", "ALL_SCH_UNSCH", "ELAPSE_TIME", "OVERWEIGHTS_NMR", "OVERWEIGHTS_DNR", "QUALITY_Q_NMR", "QUALITY_Q_DNR", "RATE_R_NMR", "RATE_R_DNR", "SCH_CAPITAL_PROJECT", "SCH_CHANGE_OVER", "SCH_CLEANUP_SANITATION", "SCH_DOWN", "SCH_FOOD_SAFETY", "SCH_FUMIGATION", "SCH_HOLIDAY", "SCH_MAINTENANCE", "SCH_NO_DEMAND", "SCH_OPERATION", "SCH_SETUP_STARTUP", "SCH_TEST_TRIAL", "SCH_UTILITY_OUTAGE", "SCRAP_NMR", "SCRAP_DNR", "UNSCH_CAPITAL_PROJECT", "UNSCH_CLEANUP_SANITATION", "UNSCH_FOOD_SAFETY", "UNSCH_MAINTENANCE", "UNSCH_MATERIAL", "UNSCH_NO_CREW", "UNSCH_OPERATIONS", "UNSCH_UTILITY_OUTAGE", "UNSCH_WEATHER", "PLNT_RELIABILITY_TGT", "PREV_YEAR", "R_ALL_SCH_UNSCH" AS "PREV_YEAR_ALL_SCH_UNSCH", "R_ELAPSE_TIME" AS "PREV_YEAR_ELAPSE_TIME", "R_OVERWEIGHTS_NMR" AS "PREV_YEAR_OVERWEIGHTS_NMR", "R_OVERWEIGHTS_DNR" AS "PREV_YEAR_OVERWEIGHTS_DNR", "R_QUALITY_Q_NMR" AS "PREV_YEAR_QUALITY_Q_NMR", "R_QUALITY_Q_DNR" AS "PREV_YEAR_QUALITY_Q_DNR", "R_RATE_R_NMR" AS "PREV_YEAR_RATE_R_NMR", "R_RATE_R_DNR" AS "PREV_YEAR_RATE_R_DNR", "R_SCH_CAPITAL_PROJECT" AS "PREV_YEAR_SCH_CAPITAL_PROJECT", "R_SCH_CHANGE_OVER" AS "PREV_YEAR_SCH_CHANGE_OVER", "R_SCH_CLEANUP_SANITATION" AS "PREV_YEAR_SCH_CLEANUP_SANITATION", "R_SCH_DOWN" AS "PREV_YEAR_SCH_DOWN", "R_SCH_FOOD_SAFETY" AS "PREV_YEAR_SCH_FOOD_SAFETY", "R_SCH_FUMIGATION" AS "PREV_YEAR_SCH_FUMIGATION", "R_SCH_HOLIDAY" AS "PREV_YEAR_SCH_HOLIDAY", "R_SCH_MAINTENANCE" AS "PREV_YEAR_SCH_MAINTENANCE", "R_SCH_NO_DEMAND" AS "PREV_YEAR_SCH_NO_DEMAND", "R_SCH_OPERATION" AS "PREV_YEAR_SCH_OPERATION", "R_SCH_SETUP_STARTUP" AS "PREV_YEAR_SCH_SETUP_STARTUP", "R_SCH_TEST_TRIAL" AS "PREV_YEAR_SCH_TEST_TRIAL", "R_SCH_UTILITY_OUTAGE" AS "PREV_YEAR_SCH_UTILITY_OUTAGE", "R_SCRAP_NMR" AS "PREV_YEAR_SCRAP_NMR", "R_SCRAP_DNR" AS "PREV_YEAR_SCRAP_DNR", "R_UNSCH_CAPITAL_PROJECT" AS "PREV_YEAR_UNSCH_CAPITAL_PROJECT", "R_UNSCH_CLEANUP_SANITATION" AS "PREV_YEAR_UNSCH_CLEANUP_SANITATION", "R_UNSCH_FOOD_SAFETY" AS "PREV_YEAR_UNSCH_FOOD_SAFETY", "R_UNSCH_MAINTENANCE" AS "PREV_YEAR_UNSCH_MAINTENANCE", "R_UNSCH_MATERIAL" AS "PREV_YEAR_UNSCH_MATERIAL", "R_UNSCH_NO_CREW" AS "PREV_YEAR_UNSCH_NO_CREW", "R_UNSCH_OPERATIONS" AS "PREV_YEAR_UNSCH_OPERATIONS", "R_UNSCH_UTILITY_OUTAGE" AS "PREV_YEAR_UNSCH_UTILITY_OUTAGE", "R_UNSCH_WEATHER" AS "PREV_YEAR_UNSCH_WEATHER", "R_PLNT_RELIABILITY_TGT" AS "PREV_YEAR_PLNT_RELIABILITY_TGT" FROM "Tool41_2b10"

GO
/****** Object:  View [USKJDW73].[EDLP Promo]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[EDLP Promo] AS 
SELECT
USKJDW73.PROMO_TYPE.BUSINESS_UNIT,
USKJDW73.PROMO_TYPE.PROD_HIER_TEXT5,
USKJDW73.PROMO_TYPE.[YEAR],
USKJDW73.PROMO_TYPE.[Period Number],
Sum(USKJDW73.PROMO_TYPE.[EDLP Spend]) AS [EDLP Spend],
Sum(USKJDW73.PROMO_TYPE.[Reserved Total KMF $]) AS [Reserved KMF],
USKJDW73.PROMO_TYPE.CAMPAIGN_DESC

FROM
USKJDW73.PROMO_TYPE
WHERE
USKJDW73.PROMO_TYPE.CAMPAIGN_DESC like '%EDLP%'
GROUP BY
USKJDW73.PROMO_TYPE.BUSINESS_UNIT,
USKJDW73.PROMO_TYPE.PROD_HIER_TEXT5,
USKJDW73.PROMO_TYPE.[YEAR],
USKJDW73.PROMO_TYPE.[Period Number],
USKJDW73.PROMO_TYPE.CAMPAIGN_DESC

GO
/****** Object:  View [USKJDW73].[JW_PT_CAT_PER_TRBLSHOOT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[JW_PT_CAT_PER_TRBLSHOOT] AS 
SELECT
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NBR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NM,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_A,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_B,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.BU,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CATG,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.FISC_YR,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_GSV) AS LATST_ESTMT_GSV,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_COST_OF_PROD_USD) AS LATST_ESTMT_COST_OF_PROD_USD,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_KMF_USD) AS LATST_ESTMT_KMF_USD,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_SHIP_LBS) AS LATST_ESTMT_SHIP_LBS,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PD

FROM
KNA_COMRCL.dbo.PLN_TO_ITM_WK

/* WHERE
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NBR = '301030' AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.FISC_YR ='2017' AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PD = '6' AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CATG = 'CRACKERS'
*/


Group By
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NBR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NM,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.BU,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CATG,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.FISC_YR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PD,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_A,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_B
GO
/****** Object:  View [USKJDW73].[JW_SBOX_PT_ITEM_Week_TRBLSHOOT]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[JW_SBOX_PT_ITEM_Week_TRBLSHOOT] AS 
SELECT
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NBR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NM,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_A,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_B,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.BU,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CATG,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.FISC_YR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CAL_WK,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.MIXD_PLT_MATRL,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PROD_HIER_TYP_DESC,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_GSV) AS LATST_ESTMT_GSV,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_COST_OF_PROD_USD) AS LATST_ESTMT_COST_OF_PROD_USD,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_KMF_USD) AS LATST_ESTMT_KMF_USD,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_SHIP_LBS) AS LATST_ESTMT_SHIP_LBS,
Sum(KNA_COMRCL.dbo.PLN_TO_ITM_WK.LATST_ESTMT_SHIP_UNITS) AS LATST_ESTMT_SHIP_UNITS,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PD

FROM
KNA_COMRCL.dbo.PLN_TO_ITM_WK

WHERE
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NBR = '300855' AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.FISC_YR ='2018' AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PD in ('1') AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.BU = 'Snacks' AND
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CATG in ('BARS')

Group By
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NBR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PLN_TO_NM,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.BU,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CATG,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.FISC_YR,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PD,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_A,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.LVL_B,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.MIXD_PLT_MATRL,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.PROD_HIER_TYP_DESC,
KNA_COMRCL.dbo.PLN_TO_ITM_WK.CAL_WK
GO
/****** Object:  View [USKJDW73].[KLG_EDLP_RATES]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[KLG_EDLP_RATES] AS 
SELECT
USKJDW73.PROMO_TYPE.[Calender Week],
USKJDW73.PROMO_TYPE.PROD_HIER_TEXT4,
USKJDW73.PROMO_TYPE.PROD_H4,
USKJDW73.PROMO_TYPE.CAMPAIGN_DESC,
SUM(USKJDW73.PROMO_TYPE.[Reserved Total KMF $]/USKJDW73.PROMO_TYPE.[Total Planned Shipment Eaches]) AS 'EDLP OI RATE'

FROM
USKJDW73.PROMO_TYPE
WHERE
USKJDW73.PROMO_TYPE.CAMPAIGN_DESC LIKE N'%ED%'
GROUP BY
USKJDW73.PROMO_TYPE.[Calender Week],
USKJDW73.PROMO_TYPE.PROD_HIER_TEXT4,
USKJDW73.PROMO_TYPE.PROD_H4,
USKJDW73.PROMO_TYPE.CAMPAIGN_DESC 
GO
/****** Object:  View [USKJDW73].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE] AS 
SELECT
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[PT# TEXT],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[PT NAME],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Level A],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Level B],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Level C],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Level D],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Level E],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.ALL_IN_Flag,
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Business Unit],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.Category,
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Sub Category],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Brand ID],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Brand Name],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Type ID],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Type Name],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[YEAR],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.Quarter,
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Period Year],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.Period,
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Size],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE GSV],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE COP],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE KMF $],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE Ship LB],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE Ship Units],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Plan KMF],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE NSV PRXY $],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE SC PRXY $],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE SC PRXY $ GSV],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[LE COP Fixed],
KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT.[GSV Price Chg],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Tier Name],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Ca Category],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[GGS Brand Priority Number],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[GGS Brand Priority],
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[GGS Brand Sub Priority]

FROM
KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM
Left JOIN KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT ON KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT.CUSTOMER = KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[PT# TEXT] AND KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT.[Period Year] = KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Period Year] AND KG_SANDBOX.USKJDW73.KLG_PRICE_IMPACT.[Type Name] = KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM.[Type Name]
GO
/****** Object:  View [USKJDW73].[MT_PROMO_OTC]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[MT_PROMO_OTC] AS 
SELECT
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Base Units],
sum(IIF(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Shipment CS]) AS [Planned Ship Cases],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 as [Brand],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 as [Type],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION] As [Material Description],
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
convert(date,getdate()) AS [Update Date]

/*Into KG_SANDBOX.USKJDW73.KLG_PROMO_MAT_OTC
Drop Table KG_SANDBOX.USKJDW73.KLG_PROMO_MAT_OTC*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
LEFT JOIN TPE_DS_User.dbo.TENTPOLE_MAPPING ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC = TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_BW_Desc
WHERE
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] > 8 AND 
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] <= 12  AND
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted') AND
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC in ('Short Term', 'Short Term Parent')

GROUP BY
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION]
GO
/****** Object:  View [USKJDW73].[MT_PROMO_TYPE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[MT_PROMO_TYPE] AS 
SELECT
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Base Units],
sum(IIF(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PLANTO,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PT_NAME,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_A,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_B,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_C,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_D,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_E,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.ALL_IN_FLAG,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.TIER_NAME,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.TIER,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.AKV,
KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP.[Ca Category],
KNA_EXTERNAL.USER_SALES.TENTPOLE_MAPPING.TENT_POLE_DESC

/*Into KG_SANDBOX.USKJDW73.PROMO_TYPE
Drop Table KG_SANDBOX.USKJDW73.PROMO_TYPE*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N ON KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PLANTO collate database_Default= TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO collate database_Default
AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] collate database_Default = KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PLANTO collate database_Default AND KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.BU collate database_Default =TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT collate database_Default
INNER JOIN KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY collate database_Default= KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP.CATEGORY collate database_Default
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
LEFT JOIN KNA_EXTERNAL.USER_SALES.TENTPOLE_MAPPING ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC collate database_Default = KNA_EXTERNAL.USER_SALES.TENTPOLE_MAPPING.TENT_POLE_BW_DESC collate database_Default
WHERE
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] in (2019,2017,2018) AND
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted')

GROUP BY
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PT_NAME,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PLANTO,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_A,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_B,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_C,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_D,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_E,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.ALL_IN_FLAG,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.TIER_NAME,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.TIER,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.AKV,
KNA_EXTERNAL.USER_SALES.CAN_CATG_MAP.[Ca Category],
KNA_EXTERNAL.USER_SALES.TENTPOLE_MAPPING.TENT_POLE_DESC

GO
/****** Object:  View [USKJDW73].[MT_SALES_PERFORMANCE_TYPE]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[MT_SALES_PERFORMANCE_TYPE] AS 
SELECT
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo AS [PT# TEXT],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME AS [PT NAME],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A AS [Level A],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B AS [Level B],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C AS [Level C],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D AS [Level D],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E AS [Level E],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name AS [Tier Name],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Desc],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num AS [GGS Brand Priority Number],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority AS [GGS Brand Priority],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority AS [GGS Brand Sub Priority],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.[Size],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases] * TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX.[Standard Price]) AS [LE COP Fixed]

/*Into KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM
Drop Table KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE ON TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.Type_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX ON TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX.Material = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX.Currency = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
Left JOIN TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP ON TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4
WHERE
-- (TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150241001085931/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150241001085932/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606731/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606731/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094632/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001495032/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001494732/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001593331/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094631/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001634532/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001408932/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001585931/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606732/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001593332/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094632/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001585932/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001495132/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001547832/2016' AND
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL
-- TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
-- TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 9 AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo = '300994' AND
-- TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 = 'Eggo Waffles Thick & Fluffy M' AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
/****** Object:  View [USKJDW73].[MT_WM_FEED]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[MT_WM_FEED] AS 
SELECT
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Base Units],
sum(IIF(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
sum(TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Shipment CS]) AS [Planned Ship Cases],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 as [Brand],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 as [Type],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION] As [Material Description],
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
convert(date,getdate()) AS [Update Date]

/*Into KG_SANDBOX.USKJDW73.KLG_PROMO_MAT_OTC
Drop Table KG_SANDBOX.USKJDW73.KLG_PROMO_MAT_OTC*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
LEFT JOIN TPE_DS_User.dbo.TENTPOLE_MAPPING ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC = TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_BW_Desc
WHERE
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] > 8 AND 
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] <= 12  AND
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted') AND
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC in ('Short Term', 'Short Term Parent')

GROUP BY
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION]
GO
/****** Object:  View [USKJDW73].[PROMO_PRE_POST]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[PROMO_PRE_POST] AS 
SELECT
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Plan_To_Number,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PT_NAME,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_A AS 'Level_A',
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_B AS 'Level_B',
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_C AS 'Level_C',
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_D AS 'Level_D',
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_E AS 'Level_E',
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.TIER_NAME AS 'Tier_Name',
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Source,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Category,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Brand,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Type,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Qtr_Num,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.[YEAR],
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_ID,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Desc,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Start_Date,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_End_Date,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Key_Event_Desc,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Retailer_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Units,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Incr_GSV_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_COP,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_GSV_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Total_KMF,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Incremental_COP,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Total_Investment,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Incremental_Contribution_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.DISPLAY,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Incremental_Units,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_LB,
Sum(KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_GSV_Dollars - KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Total_Investment) AS [NSV Dollars],
Sum(KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_GSV_Dollars - KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Total_Investment - KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_COP) AS [SC Dollars],
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Business_Unit,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Base_Units,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Fixed_Fees,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.FEAT,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.[F&D],
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.BU

FROM
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N
INNER JOIN KG_SANDBOX.USKJDW73.KLG_KPEL_TPM ON KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PT_N_TEXT = KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Plan_To_Number

WHERE
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.BU = 'BW HIERARCHY'

GROUP BY
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Plan_To_Number,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.PT_NAME,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_A,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_B,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_C,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_D,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.LEVEL_E,
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.TIER_NAME,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Source,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Category,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Brand,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Type,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Qtr_Num,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.[YEAR],
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_ID,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Desc,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Start_Date,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_End_Date,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Key_Event_Desc,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Retailer_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Units,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Incr_GSV_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_COP,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_GSV_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Total_KMF,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Incremental_COP,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Total_Investment,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Incremental_Contribution_Dollars,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.DISPLAY,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Incremental_Units,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_LB,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Business_Unit,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Base_Units,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.Promo_Fixed_Fees,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.FEAT,
KG_SANDBOX.USKJDW73.KLG_KPEL_TPM.[F&D],
KNA_EXTERNAL.USER_SALES.PLANTO_MAP_N.BU

GO
/****** Object:  View [USKJDW73].[PROMO_TENT_POLES]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[PROMO_TENT_POLES] AS 
SELECT
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_TO],
Cast(Convert(varchar,cast(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
Cast(Convert(varchar,cast(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_TO]as date),112) As Int) As [Promo_ End_Value],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units]



/*Into TPE_DS_User.dbo.KLG_PROMO_TYPE
Drop Table TPE_DS_User.dbo.KLG_PROMO_TYPE*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = TPE_DS_TARGET.dbo.KLG_CANADA_CAT_MAP.Category

WHERE
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] in (2018) AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] in (1) And
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted') AND
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC = 'Short Term' AND
-- dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Morning Foods' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO in ('300350','302049','301735','302050','301736','300837','300231','300182','300672','301117','302054','300475','300663','301179','300150','300317','301354','300850','300433','301030','300671','301086','301869','300049','300994','301146','300708','300696','300761','300719','302494'
)
GROUP BY
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM],
TPE_DS_TARGET.dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_TO],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number]
GO
/****** Object:  View [USKJDW73].[temp]    Script Date: 11/20/2018 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [USKJDW73].[temp] AS 
SELECT
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo AS [PT# TEXT],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME AS [PT NAME],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A AS [Level A],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B AS [Level B],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C AS [Level C],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D AS [Level D],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E AS [Level E],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name AS [Tier Name],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Desc],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.[Size],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases] * TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX.[Standard Price]) AS [LE COP Fixed]

/*Into KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM
Drop Table KG_SANDBOX.USKJDW73.PLANTO_TYPE_PER_PERFORM*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE ON TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.Type_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX ON TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX.Material = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX.Currency = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
WHERE
-- (TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL ='3010012187'
-- TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
-- TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 9 AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo = '300994' AND
-- TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 = 'Eggo Waffles Thick & Fluffy M' AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_upc_transdate]    Script Date: 11/20/2018 5:32:21 PM ******/
CREATE CLUSTERED INDEX [idx_upc_transdate] ON [USKS1W02].[WM_INV]
(
	[UPC] ASC,
	[TRANSACTION_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT ('N') FOR [LAST_DAY_OF_WEEK_FLAG]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT (sysdatetime()) FOR [REPORT_EXT_DT]
GO
ALTER TABLE [ACCENTURE].[StgBatchInfo] ADD  DEFAULT (newsequentialid()) FOR [ExecutionId]
GO
ALTER TABLE [ACCENTURE].[StgBatchInfo] ADD  CONSTRAINT [StgBatchInfo_Default_DateTime]  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[StgBatchInfo] ADD  CONSTRAINT [StgBatchInfo_Default_UserId]  DEFAULT (suser_sname()) FOR [CreateUserId]
GO
ALTER TABLE [ACCENTURE].[StgDimReason] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[StgDimReason] ADD  DEFAULT (suser_sname()) FOR [CreateUserId]
GO
ALTER TABLE [ACCENTURE].[StgLogData] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[StgLogData] ADD  DEFAULT (suser_sname()) FOR [CreateUserId]
GO
ALTER TABLE [ACCENTURE].[StgLogDataDelta] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[StgLogDataDelta] ADD  DEFAULT (suser_sname()) FOR [CreateUserId]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsClosed] ADD  DEFAULT ('Closed') FOR [ActionFlag]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsClosed] ADD  DEFAULT (sysdatetime()) FOR [Created_Dt]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsClosed] ADD  DEFAULT (suser_sname()) FOR [Created_By]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshot] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshot] ADD  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshot] ADD  DEFAULT ('N') FOR [LAST_DAY_OF_WEEK_FLAG]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshotHistory] ADD  DEFAULT (sysdatetime()) FOR [Created_Dt]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsLiveSnapshotHistory] ADD  DEFAULT (suser_sname()) FOR [Created_By]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsOpen] ADD  DEFAULT ('Open') FOR [ActionFlag]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsOpen] ADD  DEFAULT (sysdatetime()) FOR [Created_Dt]
GO
ALTER TABLE [ACCENTURE].[StgOTCDeductionsOpen] ADD  DEFAULT (suser_sname()) FOR [Created_By]
GO
ALTER TABLE [ACCENTURE].[StgUniqueCases] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[StgUniqueCases] ADD  DEFAULT (suser_sname()) FOR [CreateUserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Top = -192
         Left = 0
      End
      Begin Tables = 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_BRAND_CAT_MAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_BRAND_CAT_MAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 272
               Bottom = 135
               Right = 446
            End
            DisplayFlags = 280
            TopColumn = 0
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
      Begin ColumnWidths = 32
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
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_DET3_NORMALIZED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_DET3_NORMALIZED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "SCM_TRANSACTIONS (KG_ANALYTICS_APPS.ISM)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
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
      Begin ColumnWidths = 19
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
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'EHS_WASTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'EHS_WASTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "x"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "y"
            Begin Extent = 
               Top = 6
               Left = 248
               Bottom = 135
               Right = 454
            End
            DisplayFlags = 280
            TopColumn = 0
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'FACTORY_EXPENSE_WATERFALL_CHART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'FACTORY_EXPENSE_WATERFALL_CHART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_OEE_TRANSACTIONS_PIVOT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_OEE_TRANSACTIONS_PIVOT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_ADHOC_DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_ADHOC_DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_SANITATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_SANITATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "ISM_SCM_SANITATION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 264
               Right = 306
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ISM_SCM_SANITATION_YTD"
            Begin Extent = 
               Top = 6
               Left = 344
               Bottom = 264
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 0
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
         Column = 4980
         Alias = 3885
         Table = 3840
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_SANITATION_FINAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_SANITATION_FINAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_SANITATION_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'ISM_SCM_SANITATION_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "OEE_TRANSACTIONS (KG_ANALYTICS_APPS.ISM)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA_FINAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA_FINAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "Tool35_8d33_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA_PREVIOUS_FINAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA_PREVIOUS_FINAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA_WITH_TARGETS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_DATA_WITH_TARGETS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_TARGETS_DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'OEE_TARGETS_DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'PLANT_LEVEL_DATA_WPREVYEAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'PLANT_LEVEL_DATA_WPREVYEAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "Tool13_cc95_1"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 168
               Right = 412
            End
            DisplayFlags = 280
            TopColumn = 0
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
' , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'UVW_ISM_OEE_TRANSACTIONS_CRR_PIVOT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'US\USKCXR28', @level1type=N'VIEW',@level1name=N'UVW_ISM_OEE_TRANSACTIONS_CRR_PIVOT'
GO
USE [master]
GO
ALTER DATABASE [KG_SANDBOX] SET  READ_WRITE 
GO
