USE [master]
GO
/****** Object:  Database [KG_Audit]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE DATABASE [KG_Audit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_Audit', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_Audit.mdf' , SIZE = 516096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_Audit_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_Audit_log.ldf' , SIZE = 308224KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_Audit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_Audit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_Audit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_Audit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_Audit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_Audit] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_Audit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_Audit] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_Audit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_Audit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_Audit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_Audit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_Audit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_Audit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_Audit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_Audit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_Audit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_Audit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_Audit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_Audit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_Audit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_Audit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_Audit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_Audit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_Audit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_Audit] SET  MULTI_USER 
GO
ALTER DATABASE [KG_Audit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_Audit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_Audit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_Audit] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_Audit', N'ON'
GO
USE [KG_Audit]
GO
/****** Object:  User [US\SQL_RGM_SUPPORT_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_RGM_SUPPORT_R] FOR LOGIN [US\SQL_RGM_SUPPORT_R]
GO
/****** Object:  User [US\SQL_KG_AUDIT_USERS_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_KG_AUDIT_USERS_R] FOR LOGIN [US\SQL_KG_AUDIT_USERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_GBS_IT_USERS_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_GBS_IT_USERS_R] FOR LOGIN [US\SQL_GBS_IT_USERS_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_KAP_SUPPORT_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_DS_KAP_SUPPORT_R] FOR LOGIN [US\SQL_DS_KAP_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:19:17 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KG_AUDIT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_GBS_IT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_GBS_IT_USERS_R]
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
/****** Object:  Schema [KEU]    Script Date: 11/20/2018 5:19:18 PM ******/
CREATE SCHEMA [KEU]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:19:18 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_DB_Mtrc_Detl_Pop_Regn]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DB_Mtrc_Detl_Pop_Regn]
AS

/*******************************************************************************************************
   NAME        :  [USP_DB_Mtrc_Detl_Pop_Regn]
   PURPOSE & 
   Description :  THIS SP WOULD POPULATE REGION BASED ON NAMING CONVENTIONS USED FOR NAMING DATABASES 
                        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         02/27/2017       USCNXM74                1. Initial Version - REDEPLOY
 
  *****************************************************************************************************/
/*******************************************************************************************************
--DROP PROCEDURE [dbo].[USP_DB_Mtrc_Detl_Pop_Regn]
--EXEC [dbo].[USP_DB_Mtrc_Detl_Pop_Regn]

  *****************************************************************************************************/
 /**************************************    BEGIN: MAIN LOGIC       ***********************************/

    BEGIN
        SET NOCOUNT ON;
        BEGIN TRY
		BEGIN TRAN T1
        --- ALL THE ALLOCATION RULES SHOULD GO HERE.
            UPDATE  dbo.DB_Mtrc_Detl
            SET     Rgn = CASE WHEN [DB_Nm] LIKE 'KNA%' THEN 'KNA'
                               WHEN [DB_Nm] LIKE 'KAP%' THEN 'KAP'
                               WHEN [DB_Nm] LIKE 'KEU%' THEN 'KEU'
                               WHEN [DB_Nm] LIKE 'KIN%' THEN 'KIN'
                               WHEN [DB_Nm] LIKE 'KLA%' THEN 'KLA'
                               WHEN [DB_Nm] = 'KG_Audit' THEN 'KNA'
                               WHEN [DB_Nm] LIKE 'KG%' THEN 'KG'
                               WHEN [DB_Nm] LIKE 'TPE%' THEN 'KNA'
                               WHEN [DB_Nm] NOT LIKE 'KNA%'
                                    AND [DB_Nm] NOT LIKE 'KAP%'
                                    AND [DB_Nm] NOT LIKE 'KEU%'
                                    AND [DB_Nm] NOT LIKE 'KG%'
                                    AND [DB_Nm] NOT LIKE 'KIN%'
                                    AND [DB_Nm] NOT LIKE 'KLA%' THEN 'OTH'
                          END ,
                    DW_Mod_Ts = GETDATE() ,
                    DW_Mod_Usr = USER_NAME();
        /*** SAME LOGIC ABOVE IS REPLICATED FOR ANOTHER METRIC KEEP THESE TWO IN SYNCH  ******/
            UPDATE  dbo.DB_Sz_Mtrc_Detl
            SET     Rgn = CASE WHEN [DB_Nm] LIKE 'KNA%' THEN 'KNA'
                               WHEN [DB_Nm] LIKE 'KAP%' THEN 'KAP'
                               WHEN [DB_Nm] LIKE 'KEU%' THEN 'KEU'
                               WHEN [DB_Nm] LIKE 'KIN%' THEN 'KIN'
                               WHEN [DB_Nm] LIKE 'KLA%' THEN 'KLA'
                               WHEN [DB_Nm] = 'KG_Audit' THEN 'KNA'
                               WHEN [DB_Nm] LIKE 'KG%' THEN 'KG'
                               WHEN [DB_Nm] LIKE 'TPE%' THEN 'KNA'
                               WHEN [DB_Nm] NOT LIKE 'KNA%'
                                    AND [DB_Nm] NOT LIKE 'KAP%'
                                    AND [DB_Nm] NOT LIKE 'KEU%'
                                    AND [DB_Nm] NOT LIKE 'KG%'
                                    AND [DB_Nm] NOT LIKE 'KIN%'
                                    AND [DB_Nm] NOT LIKE 'KLA%' THEN 'OTH'
                          END ,
                    DW_Mod_Ts = GETDATE() ,
                    DW_Mod_Usr = USER_NAME();
        COMMIT TRAN T1
		END TRY
/**************************************      END: MAIN LOGIC       ***********************************/
/**************************************     BEGIN: CATCH LOGIC     ***********************************/
        BEGIN CATCH
              ROLLBACK TRAN T1; 
		END CATCH;
/**************************************      END: CATCH LOGIC       **********************************/
        SET NOCOUNT OFF;
    END;





GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_Begn_Btch_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_ETL_Begn_Btch_Detl]
    @Btch_Nm NVARCHAR(30) ,
    @Table_Name NVARCHAR(50) ,
    @Data_Strt_Ts_Est DATETIME = NULL ,
    @Data_End_Ts_Est DATETIME = NULL ,
    @Data_Strt_Ts_Gmt DATETIME OUTPUT ,
    @Data_End_Ts_Gmt DATETIME OUTPUT ,
    @Data_Strt_Ts_Gmt_Sap NUMERIC(20) OUTPUT ,
    @Data_End_Ts_Gmt_Sap NUMERIC(20) OUTPUT
AS
    BEGIN
        DECLARE @Getdate AS DATETIME = GETDATE();
        DECLARE @MaxDate_GMT AS DATETIME;
        DECLARE @Username AS NVARCHAR(20) = USER_NAME();
        DECLARE @MaxDate AS DATETIME;
        DECLARE @Data_Start_TS_GMT1 AS DATETIME;
        DECLARE @Data_End_TS_GMT1 AS DATETIME;
        DECLARE @Data_Start_TS_GMT_SAP1 AS NUMERIC(20);
        DECLARE @Data_End_TS_GMT_SAP1 AS NUMERIC(20);
        SELECT  @MaxDate = MAX(Data_End_Ts_Est)
        FROM    dbo.Btch_Detl AS bd
        WHERE   bd.Src_Tbl_Nm = @Table_Name
                AND bd.Sts = 'C'
                AND bd.Is_Success = 'Y';
        SELECT  @MaxDate_GMT = MAX(Data_End_Ts_Gmt)
        FROM    dbo.Btch_Detl AS bd
        WHERE   bd.Src_Tbl_Nm = @Table_Name
                AND bd.Sts = 'C'
                AND bd.Is_Success = 'Y';
        SELECT  @Data_Start_TS_GMT1 = @MaxDate_GMT;
        SELECT  @Data_End_TS_GMT1 = DATEADD(SECOND,
                                            DATEDIFF(SECOND, @Getdate,
                                                     GETUTCDATE()), @Getdate);
        SELECT  @Data_Start_TS_GMT_SAP1 = DATEDIFF(SECOND,
                                                   '1990-01-01 00:00:00',
                                                   @Data_Start_TS_GMT1)
                * CONVERT (NUMERIC(20), ( 10000 ), 0);
        SELECT  @Data_End_TS_GMT_SAP1 = DATEDIFF(SECOND, '1990-01-01 00:00:00',
                                                 @Data_End_TS_GMT1)
                * CONVERT (NUMERIC(20), ( 10000 ), 0);
        SELECT  @MaxDate = MAX(Data_End_Ts_Est)
        FROM    dbo.Btch_Detl AS bd
        WHERE   bd.Src_Tbl_Nm = @Table_Name
                AND bd.Sts = 'C'
                AND bd.Is_Success = 'Y';
        BEGIN TRY
            UPDATE  bd
            SET     bd.Sts = 'C' ,
                    bd.Is_Success = 'N' ,
                    bd.Exec_End_Ts_Est = @Getdate ,
                    bd.Mod_By = @Username ,
                    bd.Mod_Ts = @Getdate
            FROM    dbo.Btch_Detl AS bd
                    INNER JOIN dbo.Btch_Sched AS bs ON bd.Btch_Sched_Id = bs.Btch_Sched_Id
                    INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
            WHERE   bd.Sts = 'I'
                    AND bd.Is_Success IS NULL
                    AND bd.Src_Tbl_Nm = @Table_Name
                    AND bt.Btch_Nm = @Btch_Nm;
            INSERT  INTO dbo.Btch_Detl
                    ( Btch_Sched_Id ,
                      Src_Tbl_Nm ,
                      Data_Strt_Ts_Est ,
                      Data_End_Ts_Est ,
                      Data_Strt_Ts_Gmt ,
                      Data_End_Ts_Gmt ,
                      Data_Strt_Ts_Gmt_Sap ,
                      Data_End_Ts_Gmt_Sap ,
                      Exec_Strt_Ts_Est ,
                      Exec_End_Ts_Est ,
                      Sts ,
                      Is_Success ,
                      ErrNbr ,
                      ErrSvrty ,
                      ErrSt ,
                      ErrProc ,
                      ErrLn ,
                      ErrMsg ,
                      Cre_By ,
                      Cre_Ts ,
                      Mod_By ,
                      Mod_Ts ,
                      Rows_Insrt ,
                      Rows_Updt ,
                      Rows_Del ,
                      Tot_Cnt ,
                      Wrng_Cnt ,
                      Err_Cnt
                    )
                    SELECT DISTINCT
                            bs.Btch_Sched_Id ,
                            @Table_Name ,
                            ISNULL(@Data_Strt_Ts_Est, ( @MaxDate )) ,
                            ISNULL(@Data_End_Ts_Est, @Getdate) ,
                            @Data_Start_TS_GMT1 ,
                            @Data_End_TS_GMT1 ,
                            @Data_Start_TS_GMT_SAP1 ,
                            @Data_End_TS_GMT_SAP1 ,
                            @Getdate AS Exec_Strt_Ts_Est ,
                            NULL AS Exec_End_Ts_Est ,
                            'I' AS Sts ,
                            NULL AS Is_Success ,
                            NULL AS ErrNbr ,
                            NULL AS ErrSvrty ,
                            NULL AS ErrSt ,
                            NULL AS ErrProc ,
                            NULL AS ErrLn ,
                            NULL AS ErrMsg ,
                            @Username AS Cre_By ,
                            @Getdate AS Creation_TS ,
                            NULL AS Mod_By ,
                            NULL AS Mod_Ts ,
                            NULL AS Rows_Insrt ,
                            NULL AS Rows_Updt ,
                            NULL AS Rows_Del ,
                            NULL AS Tot_Cnt ,
                            NULL AS Wrng_Cnt ,
                            NULL AS Err_Cnt
                    FROM    dbo.Btch_Sched AS bs
                            INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
                    WHERE   bt.Btch_Nm = @Btch_Nm
                            AND bs.Sts = 'I'
                            AND bs.Is_Success IS NULL;
        END TRY
        BEGIN CATCH
            DECLARE @err_num AS INT = ERROR_NUMBER() ,
                @err_sev AS NVARCHAR(50) = ERROR_SEVERITY() ,
                @err_state AS NVARCHAR(50) = ERROR_STATE() ,
                @err_proc AS NVARCHAR(50) = ERROR_PROCEDURE() ,
                @err_line AS INT = ERROR_LINE() ,
                @err_msg AS NVARCHAR(50) = ERROR_MESSAGE();
            INSERT  INTO dbo.Btch_Detl
                    ( Btch_Sched_Id ,
                      Src_Tbl_Nm ,
                      Data_Strt_Ts_Est ,
                      Data_End_Ts_Est ,
                      Exec_Strt_Ts_Est ,
                      Exec_End_Ts_Est ,
                      Sts ,
                      Is_Success ,
                      ErrNbr ,
                      ErrSvrty ,
                      ErrSt ,
                      ErrProc ,
                      ErrLn ,
                      ErrMsg ,
                      Cre_By ,
                      Cre_Ts
                    )
                    SELECT  bs.Btch_Sched_Id ,
                            @Table_Name ,
                            ISNULL(@Data_Strt_Ts_Est, ( @MaxDate )) ,
                            ISNULL(@Data_End_Ts_Est, @Getdate) ,
                            @Getdate ,
                            @Getdate ,
                            'C' ,
                            'N' ,
                            @err_num AS ErrNbr ,
                            @err_sev AS ErrSvrty ,
                            @err_state AS ErrSt ,
                            @err_proc AS ErrProc ,
                            @err_line AS ErrLn ,
                            @err_msg AS ErrMsg ,
                            @Username AS Cre_By ,
                            @Getdate AS Creation_TS
                    FROM    dbo.Btch_Detl AS bd
                            INNER JOIN dbo.Btch_Sched AS bs ON bd.Btch_Sched_Id = bs.Btch_Sched_Id
                            INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
                    WHERE   bt.Btch_Nm = @Btch_Nm
                            AND bs.Sts = 'I'
                            AND bs.Is_Success IS NULL;
        END CATCH;
    END;




GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_Begn_Btch_Sched]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_ETL_Begn_Btch_Sched]
    @Btch_Nm NVARCHAR(30) ,
    @Data_Strt_Ts_Est DATETIME = NULL ,
    @Data_End_Ts_Est DATETIME = NULL ,
    @Data_Strt_Ts_Gmt DATETIME OUTPUT ,
    @Data_End_Ts_Gmt DATETIME OUTPUT ,
    @Data_Strt_Ts_Gmt_Sap NUMERIC(20) OUTPUT ,
    @Data_End_Ts_Gmt_Sap NUMERIC(20) OUTPUT
AS /**********************************************************************************
   NAME        : USP_ETL_Begn_Btch_Sched
   PURPOSE & 
   Description : This script will be invoked when the Batch schedule starts.
  		   
			     In case ,If the previous Batch schedule failed ,then this will update 
			     the previous Batch status to 'C' (Completed) and 
			     IS_Success Flag to 'N' (Not Completed)
			   
			     This Script also captures all the input parameters and converts 
			     EST time format to GMT time format and SAP time format			   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version

**********************************************************************************/
    BEGIN
        DECLARE @Getdate AS DATETIME = GETDATE();
        DECLARE @MaxDate AS DATETIME;
        DECLARE @MaxDate_GMT AS DATETIME;
        DECLARE @Username AS NVARCHAR(20) = USER_NAME();
        DECLARE @Data_Start_TS_GMT1 AS DATETIME;
        DECLARE @Data_End_TS_GMT1 AS DATETIME;
        DECLARE @Data_Start_TS_GMT_SAP1 AS NUMERIC(20);
        DECLARE @Data_End_TS_GMT_SAP1 AS NUMERIC(20);
        SELECT  @MaxDate = MAX(Data_End_Ts_Est)
        FROM    dbo.Btch_Sched AS bs
                INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
        WHERE   bt.Btch_Nm = @Btch_Nm
                AND bs.Sts = 'C'
                AND bs.Is_Success = 'Y';
        SELECT  @MaxDate_GMT = MAX(Data_End_Ts_Gmt)
        FROM    dbo.Btch_Sched AS bs
                INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
        WHERE   bt.Btch_Nm = @Btch_Nm
                AND bs.Sts = 'C'
                AND bs.Is_Success = 'Y';
        SELECT  @Data_Start_TS_GMT1 = @MaxDate_GMT;
        SELECT  @Data_End_TS_GMT1 = DATEADD(SECOND,
                                            DATEDIFF(SECOND, @Getdate,
                                                     GETUTCDATE()), @Getdate);
        SELECT  @Data_Start_TS_GMT_SAP1 = DATEDIFF(SECOND,
                                                   '1990-01-01 00:00:00',
                                                   @Data_Start_TS_GMT1)
                * CONVERT (NUMERIC(20), ( 10000 ), 0);
        SELECT  @Data_End_TS_GMT_SAP1 = DATEDIFF(SECOND, '1990-01-01 00:00:00',
                                                 @Data_End_TS_GMT1)
                * CONVERT (NUMERIC(20), ( 10000 ), 0);
        BEGIN TRY
            UPDATE  bs
            SET     bs.Sts = 'C' ,
                    bs.Is_Success = 'N' ,
                    bs.Exec_End_Ts_Est = @Getdate ,
                    bs.Mod_By = @Username ,
                    bs.Mod_Ts = @Getdate
            FROM    dbo.Btch_Sched AS bs
                    INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
            WHERE   bs.Sts = 'I'
                    AND bs.Is_Success IS NULL
                    AND bt.Btch_Nm = @Btch_Nm;
            INSERT  INTO dbo.Btch_Sched
                    ( Btch_Typ_Id ,
                      Data_Strt_Ts_Est ,
                      Data_End_Ts_Est ,
                      Data_Strt_Ts_Gmt ,
                      Data_End_Ts_Gmt ,
                      Data_Strt_Ts_Gmt_Sap ,
                      Data_End_Ts_Gmt_Sap ,
                      Exec_Strt_Ts_Est ,
                      Exec_End_Ts_Est ,
                      Sts ,
                      Is_Success ,
                      ErrNbr ,
                      ErrSvrty ,
                      ErrSt ,
                      ErrProc ,
                      ErrLn ,
                      ErrMsg ,
                      Cre_By ,
                      Cre_Ts ,
                      Mod_By ,
                      Mod_Ts
                    )
                    SELECT  bt.Btch_Typ_Id ,
                            ISNULL(@Data_Strt_Ts_Est, ( @MaxDate )) ,
                            ISNULL(@Data_End_Ts_Est, @Getdate) ,
                            @Data_Start_TS_GMT1 ,
                            @Data_End_TS_GMT1 ,
                            @Data_Start_TS_GMT_SAP1 ,
                            @Data_End_TS_GMT_SAP1 ,
                            @Getdate ,
                            NULL ,
                            'I' ,
                            NULL AS Is_Success ,
                            NULL AS ErrNbr ,
                            NULL AS ErrSvrty ,
                            NULL AS ErrSt ,
                            NULL AS ErrProc ,
                            NULL AS ErrLn ,
                            NULL AS ErrMsg ,
                            @Username AS Cre_By ,
                            @Getdate AS Creation_TS ,
                            NULL AS Mod_By ,
                            NULL AS Mod_Ts
                    FROM    dbo.Btch_Typ AS bt
                    WHERE   bt.Btch_Nm = @Btch_Nm;
        END TRY
        BEGIN CATCH
            DECLARE @err_num AS INT = ERROR_NUMBER() ,
                @err_sev AS NVARCHAR(50) = ERROR_SEVERITY() ,
                @err_state AS NVARCHAR(50) = ERROR_STATE() ,
                @err_proc AS NVARCHAR(50) = ERROR_PROCEDURE() ,
                @err_line AS INT = ERROR_LINE() ,
                @err_msg AS NVARCHAR(50) = ERROR_MESSAGE();
            INSERT  INTO dbo.Btch_Sched
                    ( Btch_Typ_Id ,
                      Data_Strt_Ts_Est ,
                      Data_End_Ts_Est ,
                      Data_Strt_Ts_Gmt ,
                      Data_End_Ts_Gmt ,
                      Data_Strt_Ts_Gmt_Sap ,
                      Data_End_Ts_Gmt_Sap ,
                      Exec_Strt_Ts_Est ,
                      Exec_End_Ts_Est ,
                      Sts ,
                      Is_Success ,
                      ErrNbr ,
                      ErrSvrty ,
                      ErrSt ,
                      ErrProc ,
                      ErrLn ,
                      ErrMsg ,
                      Cre_By ,
                      Cre_Ts ,
                      Mod_By ,
                      Mod_Ts
                    )
                    SELECT  bt.Btch_Typ_Id ,
                            ISNULL(@Data_Strt_Ts_Est, ( @MaxDate )) ,
                            ISNULL(@Data_End_Ts_Est, @Getdate) ,
                            NULL AS Data_Strt_Ts_Gmt ,
                            NULL AS Data_End_Ts_Gmt ,
                            NULL AS Data_Strt_Ts_Gmt_Sap ,
                            NULL AS Data_End_Ts_Gmt_Sap ,
                            @Getdate AS Exec_Strt_Ts_Est ,
                            @Getdate AS Exec_End_Ts_Est ,
                            'C' ,
                            'N' ,
                            @err_num AS ErrNbr ,
                            @err_sev AS ErrSvrty ,
                            @err_state AS ErrSt ,
                            @err_proc AS ErrProc ,
                            @err_line AS ErrLn ,
                            @err_msg AS ErrMsg ,
                            @Username AS Cre_By ,
                            @Getdate AS Creation_TS ,
                            NULL AS Mod_By ,
                            NULL AS Mod_Ts
                    FROM    dbo.Btch_Typ AS bt
                    WHERE   bt.Btch_Nm = @Btch_Nm;
        END CATCH;
    END;





GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_End_Btch_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_ETL_End_Btch_Detl]
    @Btch_Nm NVARCHAR(30) ,
    @Table_Name NVARCHAR(50) ,
    @Rows_Ins INT ,
    @Rows_Upd INT ,
    @Rows_Del INT ,
    @Data_Start_TS_EST DATETIME = NULL ,
    @Success_Flag CHAR(1)
AS 
/**********************************************************************************
   NAME:       : USP_ETL_End_Btch_Detl
   PURPOSE & 
   Description : This script will be invoked when the Batch detail Ends.
			   
			     This will update the previous Batch detail status to 'C' (Completed) 
				 and IS_Success Flag to 'Y'
				 			  		     
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version
*********************************************************************************/
    BEGIN
        DECLARE @Getdate AS DATETIME = GETDATE();
        DECLARE @MaxDate AS DATETIME;
        BEGIN TRY
            UPDATE  bd
            SET     Exec_End_Ts_Est = @Getdate ,
                    Sts = 'C' ,
                    Is_Success = @Success_Flag ,
                    Mod_By = USER_NAME() ,
                    Mod_Ts = @Getdate ,
                    Rows_Insrt = @Rows_Ins ,
                    Rows_Updt = @Rows_Upd ,
                    Rows_Del = @Rows_Del
            FROM    dbo.Btch_Detl AS bd
                    INNER JOIN dbo.Btch_Sched AS bs ON bd.Btch_Sched_Id = bs.Btch_Sched_Id
                    INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
            WHERE   bt.Btch_Nm = @Btch_Nm
                    AND bd.Src_Tbl_Nm = @Table_Name
                    AND bs.Sts = 'I'
                    AND bs.Is_Success IS NULL;
        END TRY
        BEGIN CATCH
            DECLARE @err_num AS INT = ERROR_NUMBER() ,
                @err_sev AS NVARCHAR(50) = ERROR_SEVERITY() ,
                @err_state AS NVARCHAR(50) = ERROR_STATE() ,
                @err_proc AS NVARCHAR(50) = ERROR_PROCEDURE() ,
                @err_line AS INT = ERROR_LINE() ,
                @err_msg AS NVARCHAR(50) = ERROR_MESSAGE();
            UPDATE  bd
            SET     Exec_End_Ts_Est = @Getdate ,
                    Sts = 'C' ,
                    Is_Success = 'N' ,
                    ErrNbr = @err_num ,
                    ErrSvrty = @err_sev ,
                    ErrSt = @err_state ,
                    ErrProc = @err_proc ,
                    ErrLn = @err_line ,
                    ErrMsg = @err_msg ,
                    Mod_By = USER_NAME() ,
                    Mod_Ts = @Getdate
            FROM    dbo.Btch_Detl AS bd
                    INNER JOIN dbo.Btch_Sched AS bs ON bd.Btch_Sched_Id = bs.Btch_Sched_Id
                    INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
            WHERE   bt.Btch_Nm = @Btch_Nm
                    AND bs.Sts = 'I'
                    AND bs.Is_Success IS NULL;
        END CATCH;
    END;




GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_End_Btch_Sched]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ETL_End_Btch_Sched]
    @Btch_Nm NVARCHAR(30) ,
    @Data_Start_TS_EST DATETIME = NULL ,
    @Success_Flag CHAR(1)
AS 
/******************************************************************************
NAME        :  USP_ETL_End_Btch_Sched
PURPOSE & 
Description :  This script will be invoked when the Batch schedule ends.
			   
			    This will update the previous Batch schedule status to
				'C'(Completed) and IS_Success Flag to 'Y'
			        
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         10/23/2015       USCHXJ15                1. Initial Version

******************************************************************************/
    BEGIN
        DECLARE @Getdate AS DATETIME = GETDATE();
        DECLARE @MaxDate AS DATETIME;
        BEGIN TRY
            UPDATE  bs
            SET     Exec_End_Ts_Est = @Getdate ,
                    Sts = 'C' ,
                    Is_Success = @Success_Flag ,
                    Mod_By = USER_NAME() ,
                    Mod_Ts = @Getdate
            FROM    dbo.Btch_Sched AS bs
                    INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
            WHERE   bt.Btch_Nm = @Btch_Nm
                    AND bs.Sts = 'I'
                    AND bs.Is_Success IS NULL;
        END TRY
        BEGIN CATCH
            DECLARE @err_num AS INT = ERROR_NUMBER() ,
                @err_sev AS NVARCHAR(50) = ERROR_SEVERITY() ,
                @err_state AS NVARCHAR(50) = ERROR_STATE() ,
                @err_proc AS NVARCHAR(50) = ERROR_PROCEDURE() ,
                @err_line AS INT = ERROR_LINE() ,
                @err_msg AS NVARCHAR(50) = ERROR_MESSAGE();
            UPDATE  bs
            SET     Sts = 'C' ,
                    Is_Success = 'N' ,
                    bs.ErrNbr = @err_num ,
                    bs.ErrSvrty = @err_sev ,
                    bs.ErrSt = @err_state ,
                    bs.ErrProc = @err_proc ,
                    bs.ErrLn = @err_line ,
                    bs.ErrMsg = @err_msg ,
                    Mod_By = USER_NAME() ,
                    Mod_Ts = @Getdate
            FROM    dbo.Btch_Sched AS bs
                    INNER JOIN dbo.Btch_Typ AS bt ON bs.Btch_Typ_Id = bt.Btch_Typ_Id
            WHERE   bt.Btch_Nm = @Btch_Nm
                    AND Sts = 'I'
                    AND Is_Success IS NULL;
        END CATCH;
    END;




GO
/****** Object:  StoredProcedure [dbo].[USP_EXEC_STRD_PROCD]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================================================================
-- Author:		Vikram Ghanti
-- Create date: March 22, 2017
-- Description:	Executes the Stored Procedure with parameters passed as a parameter and return the status.
--              Updates start and end time of execution for stored procedure. Once all SP in domain are
--              successfully executed set domain timestamp  
-- ======================================================================================================
CREATE PROCEDURE [dbo].[USP_EXEC_STRD_PROCD]
@Domain_Name_In varchar(200), 
@Domain_Name_Occurance_In int, 
@Max_Count int,
@lDatabase_Name_In varchar(200), 
@lSchema_Name_In varchar(200), 
@lProcedure_Name_In varchar(200), 
@lParameter_String_In varchar(200),
@lStart_Timestamp varchar(14)

WITH EXEC AS CALLER
AS
BEGIN
	DECLARE @str varchar(1000)
	DECLARE @errorString varchar(100)
	DECLARE @err int
	DECLARE @l_success_count int
	BEGIN TRY

        -- Check if procedure is already executing by getting exclusive lock 
		exec @err = sp_getapplock @Resource = N'[dbo].[USP_EXEC_STRD_PROCD]'
        ,@LockMode = N'Exclusive'
        ,@LockOwner = N'Session'
        ,@LockTimeout = 120000
        if (@err < 0)
        begin
            set @errorString = 'Failed to get exclusive lock.'
            goto onError
        end

		-- Set start time for SP
        UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
	       SET START_TIMESTAMP=replace(convert(varchar(8), getdate(), 112)+convert(varchar(8), getdate(), 114), ':',''),
               END_TIMESTAMP=NULL
		WHERE DOMAIN_NAME =@Domain_Name_In
		  and DOMAIN_NAME_OCCURANCE=@Domain_Name_Occurance_In;
        
		-- Execute SP
		SET @str = Concat(@lDatabase_Name_In, '.', @lSchema_Name_In, '.', @lProcedure_Name_in, ' ', @lParameter_String_In)
		EXEC(@str)
        
		-- Set end time for SP
		UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
	       SET END_TIMESTAMP=replace(convert(varchar(8), getdate(), 112)+convert(varchar(8), getdate(), 114), ':','') 
		WHERE DOMAIN_NAME =@Domain_Name_In
		  and DOMAIN_NAME_OCCURANCE=@Domain_Name_Occurance_In;
        
		-- If all SP in domain were executed successfully set domain timestamp
		if (@Domain_Name_Occurance_In = @Max_Count)
		begin
			set @l_success_count = (SELECT count(*) from dbo.Master_Data_Job_Followup_List WITH (NOLOCK) 
			                         WHERE DOMAIN_NAME=@Domain_Name_In 
									   and START_TIMESTAMP>=@lStart_Timestamp 
									   and END_TIMESTAMP is not NULL 
									group by DOMAIN_NAME);
			if (@l_success_count = @Max_Count)
			begin
				UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
				   SET DOMAIN_TIMESTAMP_SQL=replace(convert(varchar(8), getdate(), 112)+convert(varchar(8), getdate(), 114), ':','')
		         WHERE DOMAIN_NAME =@Domain_Name_In
			end 
		end

		set @err = 0
        goto theEnd

        onError:
        RETURN(1)

        theEnd:
		-- release exclusive lock
        exec sp_releaseapplock @Resource = N'[dbo].[USP_EXEC_STRD_PROCD]' ,@LockOwner = N'Session'
        return(@err)

    END TRY
	BEGIN CATCH
		RETURN(1)
	END CATCH	
END

GO
/****** Object:  StoredProcedure [dbo].[Usp_load_KG_Audit]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Venkata
-- Create date: 16 jun 2016
-- Description:	This Proc will load data into audit tables from KG_DBB audit schema
-- =============================================
CREATE PROCEDURE [dbo].[Usp_load_KG_Audit]
AS
    BEGIN


/* Loading into Btch_Typ table*/
       -- TRUNCATE TABLE dbo.Btch_Typ;

        INSERT  INTO dbo.Btch_Typ
                ( Btch_Typ_Id ,
                  Btch_Nm ,
                  Btch_Desc ,
                  Sched_Strt_Time ,
                  Freq ,
                  Btch_Job_Nm ,
                  Monday ,
                  Tuesday ,
                  Wednesday ,
                  Thursday ,
                  Friday ,
                  Saturday ,
                  Sunday ,
                  Cre_By ,
                  Cre_Ts ,
                  Mod_By ,
                  Mod_Ts
                )
                SELECT  Batch_Type_ID ,
                        Batch_Name ,
                        Batch_Desc ,
                        Scheduled_Start_Time ,
                        Frequency ,
                        Batch_Job_name ,
                        Monday ,
                        Tuesday ,
                        Wednesday ,
                        Thursday ,
                        Friday ,
                        Saturday ,
                        Sunday ,
                        Created_By ,
                        Created_TS ,
                        Modified_By ,
                        Modified_TS
                FROM    KG_ZBB.ADT.Batch_type;

				
/* Loading into Btch_Sched table*/
        TRUNCATE TABLE dbo.Btch_Sched;

        INSERT  INTO dbo.Btch_Sched
                ( Btch_Sched_Id ,
                  Btch_Typ_Id ,
                  Data_Strt_Ts_Est ,
                  Data_End_Ts_Est ,
                  Data_Strt_Ts_Gmt ,
                  Data_End_Ts_Gmt ,
                  Data_Strt_Ts_Gmt_Sap ,
                  Data_End_Ts_Gmt_Sap ,
                  Exec_Strt_Ts_Est ,
                  Exec_End_Ts_Est ,
                  Sts ,
                  Is_Success ,
                  ErrNbr ,
                  ErrSvrty ,
                  ErrSt ,
                  ErrProc ,
                  ErrLn ,
                  ErrMsg ,
                  Cre_By ,
                  Cre_Ts ,
                  Mod_By ,
                  Mod_Ts
                )
                SELECT  Batch_Schedule_Id ,
                        Batch_Type_Id ,
                        Data_Start_TS_EST ,
                        Data_End_TS_EST ,
                        Data_Start_TS_GMT ,
                        Data_End_TS_GMT ,
                        Data_Start_TS_GMT_SAP ,
                        Data_End_TS_GMT_SAP ,
                        Execution_Start_TS_EST ,
                        Execution_End_TS_EST ,
                        Status ,
                        Is_Success ,
                        ErrorNumber ,
                        ErrorSeverity ,
                        ErrorState ,
                        ErrorProcedure ,
                        ErrorLine ,
                        ErrorMessage ,
                        Created_By ,
                        Created_TS ,
                        Modified_By ,
                        Modified_TS
                FROM    KG_ZBB.ADT.Batch_Schedule;

				/* Loading into Batch Detail table*/
        TRUNCATE TABLE dbo.Btch_Detl;


        INSERT  INTO dbo.Btch_Detl
                ( Btch_Detl_Id ,
                  Btch_Sched_Id ,
                  Src_Tbl_Nm ,
                  Data_Strt_Ts_Est ,
                  Data_End_Ts_Est ,
                  Data_Strt_Ts_Gmt ,
                  Data_End_Ts_Gmt ,
                  Data_Strt_Ts_Gmt_Sap ,
                  Data_End_Ts_Gmt_Sap ,
                  Exec_Strt_Ts_Est ,
                  Exec_End_Ts_Est ,
                  Sts ,
                  Is_Success ,
                  ErrNbr ,
                  ErrSvrty ,
                  ErrSt ,
                  ErrProc ,
                  ErrLn ,
                  ErrMsg ,
                  Cre_By ,
                  Cre_Ts ,
                  Mod_By ,
                  Mod_Ts ,
                  Rows_Insrt ,
                  Rows_Updt ,
                  Rows_Del ,
                  Tot_Cnt ,
                  Wrng_Cnt ,
                  Err_Cnt
                )
                SELECT  Batch_Detail_Id ,
                        Batch_Schedule_Id ,
                        Source_Table_Name ,
                        Data_Start_TS_EST ,
                        Data_End_TS_EST ,
                        Data_Start_TS_GMT ,
                        Data_End_TS_GMT ,
                        Data_Start_TS_GMT_SAP ,
                        Data_End_TS_GMT_SAP ,
                        Execution_Start_TS_EST ,
                        Execution_End_TS_EST ,
                        Status ,
                        Is_Success ,
                        ErrorNumber ,
                        ErrorSeverity ,
                        ErrorState ,
                        ErrorProcedure ,
                        ErrorLine ,
                        ErrorMessage ,
                        Created_By ,
                        Created_TS ,
                        Modified_By ,
                        Modified_TS ,
                        Rows_Inserted ,
                        Rows_Updated ,
                        Rows_Deleted ,
                        Total_Count ,
                        Warning_Count ,
                        Error_Count
                FROM    KG_ZBB.ADT.Batch_Detail;

/* Loading into [dbo].[DB_mtrc_Detl] table*/
        TRUNCATE TABLE [dbo].[DB_Mtrc_Detl];

        INSERT  INTO dbo.DB_Mtrc_Detl
                ( DB_Nm ,
                  Schm_Nm ,
                  Tbl_Nm ,
                  Row_Cnt ,
                  Rgn ,
                  Poll_Dt ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  DBName ,
                        SchemaName ,
                        TABLEName ,
                        RowsCount ,
                        Region ,
                        Poll_Date ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Metric_Detail;

/* Loading into [dbo].[DB_mtrc_Detl_Hst] table*/
        TRUNCATE TABLE [dbo].[DB_Mtrc_Detl_Hst]; 

        INSERT  INTO dbo.DB_Mtrc_Detl_Hst
                ( DB_Nm ,
                  Schm_Nm ,
                  Tbl_Nm ,
                  Row_Cnt ,
                  Rgn ,
                  Poll_Dt ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  DBName ,
                        SchemaName ,
                        TABLEName ,
                        RowsCount ,
                        Region ,
                        Poll_Date ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Metric_Detail_History;


/* Loading into DB_mtrc_Detl_Raw table*/
        TRUNCATE TABLE DB_Mtrc_Detl_Raw; 

        INSERT  INTO dbo.DB_Mtrc_Detl_Raw
                ( DB_Nm ,
                  Schm_Nm ,
                  Tbl_Nm ,
                  Row_Cnt ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  DBName ,
                        SchemaName ,
                        TABLEName ,
                        RowsCount ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Metric_Detail_Raw;


	   /* Loading into DB_mtrc_Sumry table*/
        TRUNCATE TABLE DB_Mtrc_Sumry; 
        INSERT  INTO dbo.DB_Mtrc_Sumry
                ( Rgn ,
                  Poll_Dt ,
                  DB_Cnt ,
                  Schm_Cnt ,
                  Rec_Cnt ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  Region ,
                        Poll_Date ,
                        DB_Count ,
                        Schema_Count ,
                        Record_Count ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Metric_Summary;

  /* Loading into DB_mtrc_Sumry_Hst table*/
        TRUNCATE TABLE DB_Mtrc_Sumry_Hst; 

        INSERT  INTO dbo.DB_Mtrc_Sumry_Hst
                ( Rgn ,
                  Poll_Dt ,
                  DB_Cnt ,
                  Schm_Cnt ,
                  Rec_Cnt ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  Region ,
                        Poll_Date ,
                        DB_Count ,
                        Schema_Count ,
                        Record_Count ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Metric_Summary_History;


	     /* Loading into DB_Sz_mtrc_Detl table*/
        TRUNCATE TABLE DB_Sz_Mtrc_Detl; 
        INSERT  INTO dbo.DB_Sz_Mtrc_Detl
                ( DB_Nm ,
                  Rgn ,
                  Poll_Dt ,
                  File_Sz_MB ,
                  Use_Spc_MB ,
                  Free_Spc_MB ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
          
                )
                SELECT  DBName ,
                        Region ,
                        PollDate ,
                        FileSizeMB ,
                        UsedSpaceMB ,
                        FreeSpaceMB ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Size_Metric_Detail;

	   	     /* Loading into DB_Sz_mtrc_Detl_Hst table*/
        TRUNCATE TABLE DB_Sz_Mtrc_Detl_Hst; 
        INSERT  INTO dbo.DB_Sz_Mtrc_Detl_Hst
                ( DB_Nm ,
                  Rgn ,
                  Poll_Dt ,
                  File_Sz_MB ,
                  Use_Spc_MB ,
                  Free_Spc_MB ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
          
                )
                SELECT  DBName ,
                        Region ,
                        PollDate ,
                        FileSizeMB ,
                        UsedSpaceMB ,
                        FreeSpaceMB ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Size_Metric_Detail_History;

	   	    /* Loading into DB_Sz_mtrc_Detl_Raw table*/
        TRUNCATE TABLE DB_Sz_Mtrc_Detl_Raw; 

        INSERT  INTO dbo.DB_Sz_Mtrc_Detl_Raw
                ( Server_Nm ,
                  Db_Nm ,
                  File_Sz_MB ,
                  Lgcl_File_Nm ,
                  Physcl_File_Nm ,
                  Sts ,
                  Updtblty ,
                  Rcvry_Mode ,
                  Free_Spc_MB ,
                  Free_Spc_Pct ,
                  Free_Spc_Pgs ,
                  Poll_Dt ,
                  Use_Spc_MB ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
          
                )
                SELECT  ServerName ,
                        DatabaseName ,
                        FileSizeMB ,
                        LogicalFileName ,
                        PhysicalFileName ,
                        Status ,
                        Updateability ,
                        RecoveryMode ,
                        FreeSpaceMB ,
                        FreeSpacePct ,
                        FreeSpacePages ,
                        PollDate ,
                        UsedSpaceMB ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Size_Metric_Detail_Raw;

   	    /* Loading into DB_Sz_mtrc_Sumry table*/
        TRUNCATE TABLE DB_Sz_Mtrc_Sumry;

        INSERT  INTO dbo.DB_Sz_Mtrc_Sumry
                ( Rgn ,
                  Poll_Dt ,
                  Tot_Alloc_Spc_MB ,
                  Tot_Use_Spc_MB ,
                  Tot_Free_Spc_MB ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  Region ,
                        Poll_Date ,
                        Total_Alloc_Space_MB ,
                        Total_Used_Space_MB ,
                        Total_Free_Space_MB ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Size_Metric_Summary;
	   
	    /* Loading into DB_Sz_mtrc_Sumry_Hst table*/
        TRUNCATE TABLE DB_Sz_Mtrc_Sumry_Hst;

        INSERT  INTO dbo.DB_Sz_Mtrc_Sumry_Hst
                ( Rgn ,
                  Poll_Dt ,
                  Tot_Alloc_Spc_MB ,
                  Tot_Use_Spc_MB ,
                  Tot_Free_Spc_MB ,
                  DW_Cre_Ts ,
                  DW_Cre_Usr 
                )
                SELECT  Region ,
                        Poll_Date ,
                        Total_Alloc_Space_MB ,
                        Total_Used_Space_MB ,
                        Total_Free_Space_MB ,
                        GETDATE() ,
                        USER_NAME()
                FROM    KG_ZBB.dbo.DB_Size_Metric_Summary_History;
    END;




GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MSTR_RFRSH_FOLLWUP]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Wynter Johnson
-- Create date: Original 3/17/2017
-- Description:	Performs Master Data Follow-up for a Domain provided by a Parameter.
--              Example KNA_ECC_CUSTOMER
--
--   REVISIONS:
--   Ver          Date             Author                    Change Reason
--   ------    ----------      ---------------         ------------------------------
--   2.0         5/3/2017         USKEXB13             Added mechanism for executing stored procedure only once
--
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_MSTR_RFRSH_FOLLWUP]
@Domain_Name_In varchar(100)
WITH EXEC AS CALLER
AS
BEGIN
  DECLARE @lDatabase_Name     varchar(100); 
  DECLARE @lSchema_Name       varchar(100);
  DECLARE @lProcedure_Name    varchar(100);      
  DECLARE @lParameter_String  varchar(1024);      
  DECLARE @nCnt               smallint;  
  DECLARE @nMax_Cnt           smallint;                 
  DECLARE @v_sql              varchar(2000);
  DECLARE @nStatus            int;
  DECLARE @return_status      int;
  DECLARE @lMessage           varchar(100);
  DECLARE @nStatus_Ovrl       int; 
  DECLARE @ParmDefinition     nvarchar(500);
  DECLARE @err                int;

  set @nStatus=0;
  
  exec @err = sp_getapplock @Resource = N'[dbo].[USP_PROC_MSTR_RFRSH_FOLLWUP]'
        ,@LockMode = N'Exclusive'
        ,@LockOwner = N'Session'
        ,@LockTimeout = 600000
  if (@err < 0) goto onError
  
	UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
	SET DOMAIN_TIMESTAMP_SQL=NULL 
	WHERE DOMAIN_NAME =@Domain_Name_In;

  
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
  SET IMPLICIT_TRANSACTIONS OFF;

  print concat('INFO - Run the Master Refresh Follow-up Procedures for Domain_Name=', @Domain_Name_In);
  

  if (rtrim(isnull(@Domain_Name_In,''))='')
  begin
      set @lMessage='ERROR - Domain Name not Provided';
  	  set @nStatus=50000;
  end

  if (@nStatus=0)
  begin
    SELECT @nMax_Cnt = max(DOMAIN_NAME_OCCURANCE) 
    from KG_Audit.dbo.Master_Data_Job_Followup_List 
    WHERE DOMAIN_NAME=@Domain_Name_In
    group by DOMAIN_NAME; 

    set @nCnt=0;
    if (@nMax_Cnt is null)
    begin
        print 'INFO - Domain Name Requires no Follow-up';
    end 
    else
    begin
        print 'INFO - Domain Name Requires ' + str(@nMax_Cnt) + ' Follow-ups';
		set @nStatus_Ovrl=0;
        while (@nCnt<@nMax_Cnt)-- and @nStatus=0)
        begin
    	    set @nCnt=@nCnt+1;
            set @nStatus=0;
			select @lDatabase_Name=DATABASE_NAME, @lSchema_Name=SCHEMA_NAME, @lProcedure_Name=PROCEDURE_NAME, @lParameter_String=PARAMETER_STRING 
            from KG_Audit.dbo.Master_Data_Job_Followup_List 
            WHERE DOMAIN_NAME =@Domain_Name_In
              and DOMAIN_NAME_OCCURANCE=@nCnt; 
            print concat('INFO - Database_Name=', @lDatabase_Name, '/Procedure_Name=', @lProcedure_Name, '/Parameter_String=', @lParameter_String, '/DOMAIN_NAME_OCCURANCE=', @nCnt);

            if (rtrim(isnull(@lDatabase_Name,''))='')
            begin
                set @lMessage='ERROR - Database_Name not Provided;'
    	          set @nStatus=50001;
            end
            if (rtrim(isnull(@lSchema_Name,''))='')
            begin
                set @lMessage='ERROR - Schema_Name not Provided;'
    	          set @nStatus=50002;
            end
            if (rtrim(isnull(@lProcedure_Name,''))='')
            begin
                set @lMessage='ERROR - Procedure_Name not Provided';
    	          set @nStatus=50003;
            end
            if (@nStatus=0)
            begin
       	        print concat('INFO - Executing Stored Procedure ', @lProcedure_Name);
-- 				EXEC @nStatus=USP_EXEC_STRD_PROCD @Domain_Name_In,@nCnt,@lDatabase_Name,@lSchema_Name,@lProcedure_Name, @lParameter_String
				
				
                BEGIN TRY
     				UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
	                  SET START_TIMESTAMP=replace(convert(varchar(8), getdate(), 112)+convert(varchar(8), getdate(), 114), ':',''),
                          END_TIMESTAMP=NULL
		            WHERE DOMAIN_NAME =@Domain_Name_In
		              and DOMAIN_NAME_OCCURANCE=@nCnt;
		            SET @v_sql = Concat(@lDatabase_Name, '.', @lSchema_Name, '.', @lProcedure_Name, ' ', @lParameter_String)
		            EXEC(@v_sql)
					WAITFOR DELAY '00:00:10';
                    UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
	                   SET END_TIMESTAMP=replace(convert(varchar(8), getdate(), 112)+convert(varchar(8), getdate(), 114), ':','') 
		             WHERE DOMAIN_NAME =@Domain_Name_In
		               and DOMAIN_NAME_OCCURANCE=@nCnt;
				END TRY
				BEGIN CATCH
					set @nStatus=1
				END CATCH	

				if @nStatus_Ovrl=0 and @nStatus<>0
				begin
				    set @nStatus_Ovrl=@nStatus;
                end
				if (@nStatus=0)
				begin
					BEGIN TRY
						if (@nCnt=@nMAX_Cnt) and (@nStatus_Ovrl=0)
						begin
							UPDATE KG_Audit.dbo.Master_Data_Job_Followup_List 
							SET DOMAIN_TIMESTAMP_SQL=replace(convert(varchar(8), getdate(), 112)+convert(varchar(8), getdate(), 114), ':','') 
							WHERE DOMAIN_NAME =@Domain_Name_In;
                        end
					END TRY
					BEGIN CATCH
    					PRINT 'Error ' + CONVERT(varchar(50), ERROR_NUMBER()) +
    									', Severity ' + CONVERT(varchar(5), ERROR_SEVERITY()) +
    									', State ' + CONVERT(varchar(5), ERROR_STATE()) + 
    									', Procedure ' + ISNULL(ERROR_PROCEDURE(), '-') + 
    									', Line ' + CONVERT(varchar(5), ERROR_LINE());
--    					IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
              exec sp_releaseapplock @Resource = N'[dbo].[USP_PROC_MSTR_RFRSH_FOLLWUP]' ,@LockOwner = N'Session';
    					THROW 50005, 'Update End Failed', 1;
					END CATCH;
				end
            end
        end
    end 
  end

  if (@nStatus<>0)
  begin
      exec sp_releaseapplock @Resource = N'[dbo].[USP_PROC_MSTR_RFRSH_FOLLWUP]' ,@LockOwner = N'Session';
      THROW @nStatus, @lMessage, 1;
  end    

  set @err = 0
  goto theEnd

  onError:
  PRINT 'Failed to get exclusive lock.'
  RETURN(1)

  theEnd:
  exec sp_releaseapplock @Resource = N'[dbo].[USP_PROC_MSTR_RFRSH_FOLLWUP]' ,@LockOwner = N'Session'
  RETURN(0)

END

GO
/****** Object:  StoredProcedure [dbo].[USP_Rfrsh_DB_Mtrc_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_Rfrsh_DB_Mtrc_Detl]
AS

/*******************************************************************************************************
   NAME        :  [USP_Rfrsh_DB_Mtrc_Detl]
   PURPOSE & 
   Description :  THIS SP WOULD COLLECT STATISTICS ON NUMBER DBS, SCHEMAS, TABLES AND THEIR RECORD COUNT 
                        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         02/27/2017       USCNXM74                1. Initial Version - REDEPLOY
 
  *****************************************************************************************************/
/*******************************************************************************************************
--DROP PROCEDURE [dbo].[USP_Rfrsh_DB_Mtrc_Detl]
--EXEC [dbo].[USP_Rfrsh_DB_Mtrc_Detl]

  *****************************************************************************************************/
 /**************************************    BEGIN: MAIN LOGIC       ***********************************/
    BEGIN
        SET NOCOUNT ON;
 
        BEGIN TRY
		BEGIN TRAN T1

 /**************************************     DELETE TABLES         ***********************************/
            DELETE FROM dbo.DB_Mtrc_Detl_Raw;
            DELETE FROM dbo.DB_Mtrc_Detl;
 /**************************************    DECLARE VARIABLES       ***********************************/
            DECLARE @SearchSvr AS NVARCHAR(200) ,
                @SearchDB AS NVARCHAR(200) ,
                @SearchS AS NVARCHAR(200) ,
                @SearchTbl AS NVARCHAR(200) ,
                @SQL AS NVARCHAR(4000);
            SET @SQL = 'SELECT ''?'' AS DB_Nm, s.name AS Schm_Nm, t.name AS Tbl_Nm, p.rows AS RowCnt,getdate(),user_name() 
FROM [?].sys.tables t INNER JOIN [?].sys.schemas s ON t.schema_id=s.schema_id INNER JOIN [?].sys.partitions p ON p.OBJECT_ID = t.OBJECT_ID
and t.is_ms_shipped = 0 AND p.index_id IN (1,0)
WHERE  ''?'' NOT IN (''master'',''model'',''msdb'',''tempdb'', ''tempdb'',''Kellogg_DBA_Management'')
--AND ''?''  IN (''KG_SC'')
';
/**************************************    COLLECT DATA IN RAW TABLE  ***********************************/
            INSERT  INTO dbo.DB_Mtrc_Detl_Raw
                    ( DB_Nm ,
                      Schm_Nm ,
                      Tbl_Nm ,
                      Row_Cnt ,
                      DW_Cre_Ts ,
                      DW_Cre_Usr
                    )
                    EXECUTE sp_MSforeachdb @SQL;

/********************************    SUMMARIZE AT TABLE LEVEL FROM RAW ***********************************/
            INSERT  INTO dbo.DB_Mtrc_Detl
                    ( DB_Nm ,
                      Schm_Nm ,
                      Tbl_Nm ,
                      Row_Cnt ,
                      Rgn ,
                      Poll_Dt ,
                      DW_Cre_Usr ,
                      DW_Cre_Ts
                    )
                    SELECT  DB_Nm ,
                            Schm_Nm ,
                            Tbl_Nm ,
                            SUM(Row_Cnt) ,
                            'MISC' ,
                            CAST (GETDATE() AS DATE) AS Poll_Dt ,
                            USER_NAME() ,
                            GETDATE()
                    FROM    dbo.DB_Mtrc_Detl_Raw
                    GROUP BY DB_Nm ,
                            Schm_Nm ,
                            Tbl_Nm
                    ORDER BY DB_Nm ,
                            Schm_Nm ,
                            Tbl_Nm;
            SET NOCOUNT OFF;
			COMMIT TRAN T1
            END TRY
/**************************************      END: MAIN LOGIC       ***********************************/
/**************************************     BEGIN: CATCH LOGIC     ***********************************/
        BEGIN CATCH
		    ROLLBACK TRAN T1;
        END CATCH;
    

/**************************************      END: CATCH LOGIC       **********************************/
END;


GO
/****** Object:  StoredProcedure [dbo].[USP_Rfrsh_DB_Mtrc_Sumry]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_Rfrsh_DB_Mtrc_Sumry]

AS
BEGIN

/*******************************************************************************************************
   NAME        :  USP_Rfrsh_DB_Mtrc_Sumry
   PURPOSE & 
   Description :  THIS SP WOULD COLLECT STATISTICS ON NUMBER DBS, SCHEMAS, TABLES AND THEIR RECORD COUNT 
                        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         02/27/2017       USCNXM74                1. Initial Version - REDEPLOY
 
  *****************************************************************************************************/
/*******************************************************************************************************
--DROP PROCEDURE [dbo].[USP_Rfrsh_DB_Mtrc_Sumry]
--EXEC [dbo].[USP_Rfrsh_DB_Mtrc_Sumry]

  *****************************************************************************************************/
 /**************************************    BEGIN: MAIN LOGIC       ***********************************/

    BEGIN TRY
        BEGIN TRAN T1
        SET NOCOUNT ON;
        --- METRIC 1 :DATABASES BY Rgn 
/**************************************      DELETE TABLES         ***********************************/
        DELETE FROM dbo.DB_Mtrc_Sumry;

/**************************************    GET DISTINCT REGIONS    ***********************************/
        INSERT INTO dbo.DB_Mtrc_Sumry (Rgn, DB_Cnt, Schm_Cnt, Rec_Cnt, Poll_Dt)
        (SELECT DISTINCT Rgn,
                         CAST (0 AS BIGINT) AS DB_Cnt,
                         CAST (0 AS BIGINT) AS Schm_Cnt,
                         CAST (0 AS BIGINT) AS Rec_Cnt,
                         Poll_Dt AS Poll_Dt
         FROM   dbo.DB_Mtrc_Detl);
/**************************************    POPULATE METRICS       ***********************************/
        --- METRIC 1 :DATABASES BY Rgn 
        ;WITH    X1  AS 
                (SELECT   DB_Nm,
                          MAX(Rgn) AS Rgn
                 FROM     dbo.DB_Mtrc_Detl
                 GROUP BY DB_Nm)
                ,X2  AS 
                (SELECT   Rgn,
                          COUNT(*) AS DB_Cnt
                 FROM     X1
                 GROUP BY Rgn)
        UPDATE  T1
            SET DB_Cnt = X2.DB_Cnt
        FROM    dbo.DB_Mtrc_Sumry AS T1
                INNER JOIN
                X2
                ON X2.Rgn = T1.Rgn;
        --- METRIC 2 :schema BY Rgn 
        ;WITH    X1
        AS      (SELECT   DB_Nm,
                          Schm_Nm,
                          MAX(Rgn) AS Rgn
                 FROM     dbo.DB_Mtrc_Detl
                 GROUP BY DB_Nm, Schm_Nm),
                X2
        AS      (SELECT   Rgn,
                          COUNT(*) AS Schm_Cnt
                 FROM     X1
                 GROUP BY Rgn)
        UPDATE  T1
            SET Schm_Cnt = X2.Schm_Cnt
        FROM    dbo.DB_Mtrc_Sumry AS T1
                INNER JOIN
                X2
                ON X2.Rgn = T1.Rgn;
        --- METRIC 3 :Record Counts BY Rgn 
        ;WITH    X2
        AS      (SELECT   Rgn,
                          sum(Row_Cnt) AS Rec_Cnt
                 FROM     dbo.DB_Mtrc_Detl
                 GROUP BY Rgn)
        UPDATE  T1
            SET Rec_Cnt = X2.Rec_Cnt
        FROM    dbo.DB_Mtrc_Sumry AS T1
                INNER JOIN
                X2
                ON X2.Rgn = T1.Rgn;
        -- POPULATE HISTORY FOR SUMMARY
        DELETE dbo.DB_Mtrc_Sumry_Hst
        WHERE  1 = 1
               AND EXISTS (SELECT 1
                           FROM   dbo.DB_Mtrc_Sumry AS T2
                           WHERE  dbo.DB_Mtrc_Sumry_Hst.Poll_Dt = T2.Poll_Dt
                                  AND dbo.DB_Mtrc_Sumry_Hst.Rgn = T2.Rgn);
        INSERT INTO dbo.DB_Mtrc_Sumry_Hst (Rgn, DB_Cnt, Schm_Cnt, Rec_Cnt, Poll_Dt)
        SELECT Rgn,
               DB_Cnt,
               Schm_Cnt,
               Rec_Cnt,
               Poll_Dt
        FROM   dbo.DB_Mtrc_Sumry;
        -- POPULATE HISTORY FOR DETAIL 
        DELETE dbo.DB_Mtrc_Detl_Hst
        WHERE  1 = 1
               AND EXISTS (SELECT 1
                           FROM   dbo.DB_Mtrc_Detl AS T2
                           WHERE  dbo.DB_Mtrc_Detl_Hst.Poll_Dt = T2.Poll_Dt
                                  AND dbo.DB_Mtrc_Detl_Hst.Rgn = T2.Rgn);
        INSERT INTO dbo.DB_Mtrc_Detl_Hst (DB_Nm, Schm_Nm, Tbl_Nm, [Row_Cnt], Rgn, Poll_Dt)
        SELECT DB_Nm,
               Schm_Nm,
               Tbl_Nm,
               Row_Cnt,
               Rgn,
               Poll_Dt
        FROM   dbo.DB_Mtrc_Detl;
    COMMIT TRAN T1
    END TRY
/**************************************      END: MAIN LOGIC       ***********************************/
/**************************************     BEGIN: CATCH LOGIC     ***********************************/
        BEGIN CATCH
              ROLLBACK TRAN T1;
        END CATCH;
    

/**************************************      END: CATCH LOGIC       **********************************/
END;


GO
/****** Object:  StoredProcedure [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Detl]
AS

/*******************************************************************************************************
   NAME        :  USP_Rfrsh_DB_Sz_Mtrc_Detl
   PURPOSE & 
   Description :  THIS SP WOULD COLLECT STATISTICS ON NUMBER DBS AND THEIR SPACE USAGE
                        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         02/27/2017       USCNXM74                1. Initial Version - REDEPLOY
 
  *****************************************************************************************************/
/*******************************************************************************************************
DROP PROCEDURE [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Detl]
EXEC [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Detl]

  *****************************************************************************************************/
 /**************************************    BEGIN: MAIN LOGIC       ***********************************/
    BEGIN
        BEGIN TRY
		BEGIN TRAN T1
            SET NOCOUNT ON;
/**************************************       DELETE TABLES         ***********************************/
            DELETE FROM dbo.DB_Sz_Mtrc_Detl_Raw;
            DELETE FROM dbo.DB_Sz_Mtrc_Detl;
 /**************************************    DECLARE VARIABLES       ***********************************/
            DECLARE @command AS VARCHAR(5000);
            SELECT  @command = 'Use [' + '?' + '] 
			                    SELECT  
								@@servername as ServerName,  
								' + '''' + '?' + '''' + ' AS DatabaseName,  
								CAST(sysfiles.size/128.0 AS bigint) AS FileSize,  
								sysfiles.name AS LogicalFileName, sysfiles.filename AS PhysicalFileName,  
								CONVERT(sysname,DatabasePropertyEx(''?'',''Status'')) AS Status,  
								CONVERT(sysname,DatabasePropertyEx(''?'',''Updateability'')) AS Updateability,  
								CONVERT(sysname,DatabasePropertyEx(''?'',''Recovery'')) AS RecoveryMode,  
								CAST(sysfiles.size/128.0 - CAST(FILEPROPERTY(sysfiles.name, ' + ''''
								+ 'SpaceUsed' + '''' + ' ) AS bigint)/128.0 AS bigint) AS FreeSpaceMB,  
								CAST(100 * (CAST (((sysfiles.size/128.0 -CAST(FILEPROPERTY(sysfiles.name,  
								' + '''' + 'SpaceUsed' + '''' + ' ) AS bigint)/128.0)/(sysfiles.size/128.0))  
								AS decimal(4,2))) AS varchar(8)) + ' + '''' + '%' + ''''
								+ ' AS FreeSpacePct,GETDATE() as PollDate FROM dbo.sysfiles';
            INSERT  INTO dbo.DB_Sz_Mtrc_Detl_Raw
                    ( Server_Nm ,
                      Db_Nm ,
                      File_Sz_MB ,
                      Lgcl_File_Nm ,
                      Physcl_File_Nm ,
                      Sts ,
                      Updtblty ,
                      Rcvry_Mode ,
                      Free_Spc_MB ,
                      Free_Spc_Pct ,
                      --Free_Spc_Pgs ,
                      Poll_Dt 
                      --,Use_Spc_MB
                    )
                    EXECUTE sp_MSforeachdb @command;
            UPDATE  dbo.DB_Sz_Mtrc_Detl_Raw
            SET     Use_Spc_MB = Free_Spc_MB - Free_Spc_MB;
 
            DELETE  dbo.DB_Sz_Mtrc_Detl_Raw
            WHERE   Db_Nm IN ( 'master', 'model', 'msdb', 'tempdb',
                               'Kellogg_DBA_Management' );

            INSERT  INTO dbo.DB_Sz_Mtrc_Detl
                    ( DB_Nm ,
                      Rgn ,
                      Poll_Dt ,
                      File_Sz_MB ,
                      Use_Spc_MB ,
                      Free_Spc_MB
                    )
                    SELECT  db_nm ,
                            CAST ('MISC' AS VARCHAR(100)) AS Region ,
                            CAST (Poll_Dt AS DATE) AS PollDate ,
                            SUM(File_Sz_MB) AS FileSizeMB ,
                            SUM(CASE WHEN Physcl_File_Nm LIKE '%LDF'
                                     THEN File_Sz_MB
                                     ELSE Use_Spc_MB
                                END) AS UsedSpaceMB , 
                            SUM(CASE WHEN Physcl_File_Nm LIKE '%LDF' THEN 0
                                     ELSE Free_Spc_MB
                                END) AS FreeSpaceMB 
                    FROM    dbo.DB_Sz_Mtrc_Detl_Raw
                    GROUP BY Db_Nm,
                    CAST (Poll_Dt AS DATE)
                    ORDER BY Db_Nm;

        COMMIT TRAN T1
		END TRY
/**************************************      END: MAIN LOGIC       ***********************************/
/**************************************     BEGIN: CATCH LOGIC     ***********************************/
        BEGIN CATCH
		      ROLLBACK TRAN T1;
        END CATCH;
/**************************************      END: CATCH LOGIC       **********************************/
END;


GO
/****** Object:  StoredProcedure [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Sumry]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Sumry]
AS
    BEGIN
/*******************************************************************************************************
   NAME        :  USP_Rfrsh_DB_Sz_Mtrc_Sumry
   PURPOSE & 
   Description :  THIS SP WOULD SUMMARIZE DB SIZE UTILIZATION AT A REGION LEVEL BY DATE 
                        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         02/27/2017       USCNXM74                1. Initial Version - REDEPLOY
 
  *****************************************************************************************************/
/*******************************************************************************************************
DROP PROCEDURE [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Sumry]
EXEC [dbo].[USP_Rfrsh_DB_Sz_Mtrc_Sumry]

  *****************************************************************************************************/
 /**************************************    BEGIN: MAIN LOGIC       ***********************************/
         BEGIN TRY
            BEGIN TRAN T1
			SET NOCOUNT ON;
/**************************************      DELETE TABLES         **********************************/
            DELETE FROM dbo.DB_Sz_Mtrc_Sumry;

/**************************************    POPULATE METRICS       ***********************************/
        --- METRIC 1 :DATABASES BY REGION 
            INSERT  INTO dbo.DB_Sz_Mtrc_Sumry
                    ( Rgn ,
                      Poll_Dt ,
                      Tot_Alloc_Spc_MB ,
                      Tot_Use_Spc_MB ,
                      Tot_Free_Spc_MB
                    )
                    SELECT  Rgn AS region ,
                            Poll_Dt AS Poll_Date ,
                            SUM(File_Sz_MB) AS Total_Alloc_Space_MB ,
                            SUM(Use_Spc_MB) AS Total_Used_Space_MB ,
                            SUM(Free_Spc_MB) AS Total_Free_Space_MB
                    FROM    dbo.DB_Sz_Mtrc_Detl
                    GROUP BY Rgn ,
                            Poll_Dt;
/**************************************    POPULATE HISTORY       ***********************************/

-- DELETE FROM HISTORY(SUMMARY) TO HANDLE MULTIPLE RUNS IN A DAY
            DELETE  dbo.DB_Sz_Mtrc_Sumry_Hst
            WHERE   1 = 1
                    AND EXISTS ( SELECT 1
                                 FROM   dbo.DB_Sz_Mtrc_Sumry AS T2
                                 WHERE  dbo.DB_Sz_Mtrc_Sumry_Hst.Poll_Dt = T2.Poll_Dt
                                        AND dbo.DB_Sz_Mtrc_Sumry_Hst.Rgn = T2.Rgn );
-- POPULATE HISTORY FOR SUMMARY 
            INSERT  INTO dbo.DB_Sz_Mtrc_Sumry_Hst
                    ( Rgn ,
                      Poll_Dt ,
                      Tot_Alloc_Spc_MB ,
                      Tot_Use_Spc_MB ,
                      Tot_Free_Spc_MB
                    )
                    SELECT  Rgn ,
                            Poll_Dt ,
                            Tot_Alloc_Spc_MB ,
                            Tot_Use_Spc_MB ,
                            Tot_Free_Spc_MB
                    FROM    dbo.DB_Sz_Mtrc_Sumry;

-- DELETE FROM HISTORY(DETAIL) TO HANDLE MULTIPLE RUNS IN A DAY
        
            DELETE  dbo.DB_Sz_Mtrc_Detl_Hst
            WHERE   1 = 1
                    AND EXISTS ( SELECT 1
                                 FROM   dbo.DB_Sz_Mtrc_Detl AS T2
                                 WHERE  dbo.DB_Sz_Mtrc_Detl_Hst.Poll_Dt = T2.Poll_Dt
                                        AND dbo.DB_Sz_Mtrc_Detl_Hst.DB_Nm = T2.DB_Nm );
-- POPULATE HISTORY FOR DETAIL 
            INSERT  INTO dbo.DB_Sz_Mtrc_Detl_Hst
                    ( DB_Nm ,
                      Rgn ,
                      Poll_Dt ,
                      File_Sz_MB ,
                      Use_Spc_MB ,
                      Free_Spc_MB
                    )
                    SELECT  DB_Nm ,
                            Rgn ,
                            Poll_Dt ,
                            File_Sz_MB ,
                            Use_Spc_MB ,
                            Free_Spc_MB
                    FROM    dbo.DB_Sz_Mtrc_Detl;
 
        COMMIT TRAN T1
		END TRY
/**************************************      END: MAIN LOGIC       ***********************************/
/**************************************     BEGIN: CATCH LOGIC     ***********************************/
        BEGIN CATCH
              ROLLBACK TRAN T1;
		END CATCH;
    

/**************************************      END: CATCH LOGIC       **********************************/
END;


GO
/****** Object:  UserDefinedFunction [dbo].[fn_ConvertIntToBinary]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*****This function converts decimal value to binary value*/
CREATE FUNCTION [dbo].[fn_ConvertIntToBinary]
(@input int)
RETURNS VARCHAR(256)
AS 
BEGIN
declare @intvalue int
declare @vsresult varchar(64)
declare @inti int
set @intvalue=@input

select @inti = 32, @vsresult = ''
while @inti>0
  begin
    select @vsresult=convert(char(1), @intvalue % 2)+@vsresult
    select @intvalue = convert(int, (@intvalue / 2)), @inti=@inti-1
  end
return SUBSTRING(@vsresult, PATINDEX('%[^0]%', @vsresult+'.'), LEN(@vsresult))
end

GO
/****** Object:  UserDefinedFunction [dbo].[ufn_Cnv_Str_2_TS]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================
-- Author:		Emil Beloglavec
-- Create date: 3/23/2017
-- Description:	Converts String YYYYMMDDHH24MISSFFFFFFF to TimeStamp (datetime2)
-- ========================================================================
CREATE FUNCTION [dbo].[ufn_Cnv_Str_2_TS]
(@str varchar(21))
RETURNS datetime2(7)
WITH EXEC AS CALLER
AS
BEGIN
DECLARE @str_inp varchar(50);
   DECLARE @TS      datetime2;

   set @str_inp = substring(@str,1,4) + '-' + 
              substring(@str,5,2) + '-' +
			  substring(@str,7,2) + ' ' +
			  substring(@str,9,2) + ':' +
			  substring(@str,11,2) + ':' +
			  substring(@str,13,2) + '.' +
			  substring(@str,15,7);

   set @TS = (SELECT CONVERT(datetime2, @str_inp , 121));
--   set @TS = (SELECT CONVERT(datetime, @str_inp , 121));
   RETURN @TS;
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_Cnv_TS_2_Str]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================
-- Author:		Emil Beloglavec
-- Create date: 3/23/2017
-- Description:	Converts Date TimeStamp into string YYYYMMDDHH24MISSFFFFFFF
-- ========================================================================
CREATE FUNCTION [dbo].[ufn_Cnv_TS_2_Str]
(@datetime datetime2(7))
RETURNS varchar(21)
WITH EXEC AS CALLER
AS
BEGIN
   DECLARE @str varchar(21);
   set @str = (SELECT CONVERT(VARCHAR(50), @datetime, 112) + REPLACE(REPLACE(CONVERT(VARCHAR(50), @datetime, 114), ':', '') , '.', ''));
   RETURN @str;
END
GO
/****** Object:  Table [dbo].[ABAP_MESSAGE_LOG]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ABAP_MESSAGE_LOG](
	[JOB] [varchar](80) NULL,
	[PROGRAM] [varchar](40) NULL,
	[TIMESTAMP] [varchar](14) NULL,
	[MESSAGE] [varchar](132) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Btch_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Btch_Detl](
	[Btch_Detl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Btch_Sched_Id] [int] NULL,
	[Src_Tbl_Nm] [nvarchar](100) NULL,
	[Data_Strt_Ts_Est] [datetime] NULL,
	[Data_End_Ts_Est] [datetime] NULL,
	[Data_Strt_Ts_Gmt] [datetime] NULL,
	[Data_End_Ts_Gmt] [datetime] NULL,
	[Data_Strt_Ts_Gmt_Sap] [numeric](20, 0) NULL,
	[Data_End_Ts_Gmt_Sap] [numeric](20, 0) NULL,
	[Exec_Strt_Ts_Est] [datetime] NULL,
	[Exec_End_Ts_Est] [datetime] NULL,
	[Sts] [char](1) NULL,
	[Is_Success] [char](1) NULL,
	[ErrNbr] [nvarchar](10) NULL,
	[ErrSvrty] [nvarchar](10) NULL,
	[ErrSt] [nvarchar](10) NULL,
	[ErrProc] [nvarchar](max) NULL,
	[ErrLn] [nvarchar](10) NULL,
	[ErrMsg] [nvarchar](max) NULL,
	[Cre_By] [nvarchar](100) NULL,
	[Cre_Ts] [datetime] NULL,
	[Mod_By] [nvarchar](100) NULL,
	[Mod_Ts] [datetime] NULL,
	[Rows_Insrt] [int] NULL,
	[Rows_Updt] [int] NULL,
	[Rows_Del] [int] NULL,
	[Tot_Cnt] [int] NULL,
	[Wrng_Cnt] [int] NULL,
	[Err_Cnt] [int] NULL,
 CONSTRAINT [PK_Btch_Detl] PRIMARY KEY CLUSTERED 
(
	[Btch_Detl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Btch_Sched]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Btch_Sched](
	[Btch_Sched_Id] [int] IDENTITY(1,1) NOT NULL,
	[Btch_Typ_Id] [int] NULL,
	[Data_Strt_Ts_Est] [datetime] NULL,
	[Data_End_Ts_Est] [datetime] NULL,
	[Data_Strt_Ts_Gmt] [datetime] NULL,
	[Data_End_Ts_Gmt] [datetime] NULL,
	[Data_Strt_Ts_Gmt_Sap] [numeric](20, 0) NULL,
	[Data_End_Ts_Gmt_Sap] [numeric](20, 0) NULL,
	[Exec_Strt_Ts_Est] [datetime] NULL,
	[Exec_End_Ts_Est] [datetime] NULL,
	[Sts] [char](1) NULL,
	[Is_Success] [char](1) NULL,
	[ErrNbr] [nvarchar](10) NULL,
	[ErrSvrty] [nvarchar](10) NULL,
	[ErrSt] [nvarchar](10) NULL,
	[ErrProc] [nvarchar](max) NULL,
	[ErrLn] [nvarchar](10) NULL,
	[ErrMsg] [nvarchar](max) NULL,
	[Cre_By] [nvarchar](100) NULL,
	[Cre_Ts] [datetime] NULL,
	[Mod_By] [nvarchar](100) NULL,
	[Mod_Ts] [datetime] NULL,
 CONSTRAINT [PK_Btch_Sched] PRIMARY KEY CLUSTERED 
(
	[Btch_Sched_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Btch_Typ]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Btch_Typ](
	[Btch_Typ_Id] [int] NOT NULL,
	[Btch_Nm] [nvarchar](30) NULL,
	[Btch_Desc] [nvarchar](max) NULL,
	[Sched_Strt_Time] [time](7) NULL,
	[Freq] [nvarchar](20) NULL,
	[Btch_Job_Nm] [nvarchar](50) NULL,
	[Monday] [char](1) NULL,
	[Tuesday] [char](1) NULL,
	[Wednesday] [char](1) NULL,
	[Thursday] [char](1) NULL,
	[Friday] [char](1) NULL,
	[Saturday] [char](1) NULL,
	[Sunday] [char](1) NULL,
	[Cre_By] [nvarchar](100) NULL,
	[Cre_Ts] [datetime] NULL,
	[Mod_By] [nvarchar](100) NULL,
	[Mod_Ts] [datetime] NULL,
 CONSTRAINT [PK_Btch_Typ] PRIMARY KEY CLUSTERED 
(
	[Btch_Typ_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Btch_Nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CANADAWEB_SFTP_XML]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CANADAWEB_SFTP_XML](
	[FILENAME] [varchar](1024) NULL,
	[SUCCESS] [varchar](1024) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Mtrc_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Mtrc_Detl](
	[DB_Nm] [nvarchar](100) NOT NULL,
	[Schm_Nm] [nvarchar](100) NOT NULL,
	[Tbl_Nm] [varchar](200) NOT NULL,
	[Row_Cnt] [bigint] NULL,
	[Rgn] [nvarchar](100) NULL,
	[Poll_Dt] [date] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Metric_Detl] PRIMARY KEY CLUSTERED 
(
	[DB_Nm] ASC,
	[Schm_Nm] ASC,
	[Tbl_Nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Mtrc_Detl_Hst]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Mtrc_Detl_Hst](
	[DB_Nm] [nvarchar](100) NOT NULL,
	[Schm_Nm] [nvarchar](100) NOT NULL,
	[Tbl_Nm] [varchar](200) NOT NULL,
	[Row_Cnt] [bigint] NULL,
	[Rgn] [nvarchar](100) NULL,
	[Poll_Dt] [date] NOT NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Metric_Detl_Hst] PRIMARY KEY CLUSTERED 
(
	[DB_Nm] ASC,
	[Poll_Dt] ASC,
	[Schm_Nm] ASC,
	[Tbl_Nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Mtrc_Detl_Raw]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Mtrc_Detl_Raw](
	[DB_Nm] [nvarchar](100) NULL,
	[Schm_Nm] [nvarchar](100) NULL,
	[Tbl_Nm] [varchar](200) NULL,
	[Row_Cnt] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Mtrc_Sumry]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Mtrc_Sumry](
	[Rgn] [nvarchar](100) NOT NULL,
	[Poll_Dt] [date] NULL,
	[DB_Cnt] [bigint] NULL,
	[Schm_Cnt] [bigint] NULL,
	[Rec_Cnt] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Metric_Sumry] PRIMARY KEY CLUSTERED 
(
	[Rgn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Mtrc_Sumry_Hst]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Mtrc_Sumry_Hst](
	[Rgn] [nvarchar](100) NOT NULL,
	[Poll_Dt] [date] NOT NULL,
	[DB_Cnt] [bigint] NULL,
	[Schm_Cnt] [bigint] NULL,
	[Rec_Cnt] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Metric_Sumry_Hst] PRIMARY KEY CLUSTERED 
(
	[Poll_Dt] ASC,
	[Rgn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Sz_Mtrc_Detl]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Sz_Mtrc_Detl](
	[DB_Nm] [nvarchar](100) NOT NULL,
	[Rgn] [nvarchar](100) NULL,
	[Poll_Dt] [date] NULL,
	[File_Sz_MB] [bigint] NULL,
	[Use_Spc_MB] [bigint] NULL,
	[Free_Spc_MB] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Sz_Metric_Detl] PRIMARY KEY CLUSTERED 
(
	[DB_Nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Sz_Mtrc_Detl_Hst]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Sz_Mtrc_Detl_Hst](
	[DB_Nm] [nvarchar](100) NOT NULL,
	[Rgn] [nvarchar](100) NULL,
	[Poll_Dt] [date] NOT NULL,
	[File_Sz_MB] [bigint] NULL,
	[Use_Spc_MB] [bigint] NULL,
	[Free_Spc_MB] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Sz_Metric_Detl_Hst] PRIMARY KEY CLUSTERED 
(
	[DB_Nm] ASC,
	[Poll_Dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Sz_Mtrc_Detl_Raw]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Sz_Mtrc_Detl_Raw](
	[Server_Nm] [varchar](100) NULL,
	[Db_Nm] [varchar](100) NULL,
	[File_Sz_MB] [bigint] NULL,
	[Lgcl_File_Nm] [nvarchar](128) NOT NULL,
	[Physcl_File_Nm] [nvarchar](520) NULL,
	[Sts] [nvarchar](128) NOT NULL,
	[Updtblty] [nvarchar](128) NOT NULL,
	[Rcvry_Mode] [nvarchar](128) NOT NULL,
	[Free_Spc_MB] [bigint] NULL,
	[Free_Spc_Pct] [varchar](7) NULL,
	[Free_Spc_Pgs] [bigint] NULL,
	[Poll_Dt] [datetime] NULL,
	[Use_Spc_MB] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Sz_Mtrc_Sumry]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Sz_Mtrc_Sumry](
	[Rgn] [nvarchar](100) NOT NULL,
	[Poll_Dt] [date] NOT NULL,
	[Tot_Alloc_Spc_MB] [bigint] NULL,
	[Tot_Use_Spc_MB] [bigint] NULL,
	[Tot_Free_Spc_MB] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Sz_Metric_Sumry] PRIMARY KEY CLUSTERED 
(
	[Poll_Dt] ASC,
	[Rgn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Sz_Mtrc_Sumry_Hst]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Sz_Mtrc_Sumry_Hst](
	[Rgn] [nvarchar](100) NOT NULL,
	[Poll_Dt] [date] NOT NULL,
	[Tot_Alloc_Spc_MB] [bigint] NULL,
	[Tot_Use_Spc_MB] [bigint] NULL,
	[Tot_Free_Spc_MB] [bigint] NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_DB_Sz_Metric_Sumry_Hst] PRIMARY KEY CLUSTERED 
(
	[Poll_Dt] ASC,
	[Rgn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEDUCTION_LOG_SFTP_XML]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEDUCTION_LOG_SFTP_XML](
	[FILENAME] [varchar](1024) NULL,
	[SUCCESS] [varchar](1024) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEDUCTION_SFTP_XML]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEDUCTION_SFTP_XML](
	[FILENAME] [varchar](1024) NULL,
	[SUCCESS] [varchar](1024) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DS_JOBS]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DS_JOBS](
	[AUDIT_ID] [int] IDENTITY(1,1) NOT NULL,
	[REPOSITORY] [varchar](100) NULL,
	[JOB_NAME] [varchar](100) NULL,
	[HOST_NAME] [varchar](100) NULL,
	[JOB_START_DATETIME] [datetime2](7) NULL,
	[JOB_END_DATETIME] [datetime2](7) NULL,
	[STATUS] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[DS_JOBS] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[DS_SCHED]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DS_SCHED](
	[SCHED_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRJ_NM] [varchar](100) NOT NULL,
	[JOB_NM] [varchar](100) NOT NULL,
	[JOB_DESC] [varchar](1000) NOT NULL,
	[SCHED_NM] [varchar](100) NOT NULL,
	[NXT_SCHED_TM] [datetime] NOT NULL,
	[CRE_DT] [datetime] NOT NULL,
	[UPDT_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DS_SNACKS_JOBS]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DS_SNACKS_JOBS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PARENT_JOB_NAME] [varchar](255) NULL,
	[JOB_NAME] [varchar](255) NULL,
	[FILE_NAME] [varchar](255) NULL,
	[SCHEDULED_DATETIME] [datetime2](7) NULL,
	[START_DATETIME] [datetime2](7) NULL,
	[END_DATETIME] [datetime2](7) NULL,
	[STATUS] [char](1) NULL,
	[MESSAGE] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KG_EXTERNAL_SERVNOW_ACTIVITY]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KG_EXTERNAL_SERVNOW_ACTIVITY](
	[ID] [int] NOT NULL,
	[TABLE_NAME] [varchar](255) NULL,
	[STARTDATETIME] [datetime2](7) NULL,
	[MESSAGE] [varchar](4000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_ECC_DELTA_CONTROL]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_ECC_DELTA_CONTROL](
	[GEN_KEY] [int] NULL,
	[WF_NAME] [varchar](100) NULL,
	[EXTRACT_FROM_DATE] [varchar](10) NULL,
	[EXTRACT_TO_DATE] [varchar](10) NULL,
	[FISCIAL_YEAR] [int] NULL,
	[PERIOD] [int] NULL,
	[LOAD_DATE] [datetime2](7) NULL,
	[WF_STATUS] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_ECC_DELTA_CONTROL]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_ECC_DELTA_CONTROL](
	[GEN_KEY] [int] NULL,
	[WF_NAME] [varchar](100) NULL,
	[EXTRACT_FROM_DATE] [varchar](10) NULL,
	[EXTRACT_TO_DATE] [varchar](10) NULL,
	[FISCIAL_YEAR] [int] NULL,
	[PERIOD] [int] NULL,
	[LOAD_DATE] [varchar](10) NULL,
	[WF_STATUS] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Data_Job_Active_List]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Active_List](
	[GROUP_NUMBER] [int] NULL,
	[SAP_SOURCE_NAME] [varchar](30) NULL,
	[TABLE_NAME] [varchar](30) NULL,
	[SCHEMA_NAME] [varchar](30) NULL,
	[DOMAIN_NAME] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Active_List] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[Master_Data_Job_Followup_List]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Followup_List](
	[DOMAIN_NAME] [varchar](40) NULL,
	[DOMAIN_NAME_OCCURANCE] [int] NULL,
	[DATABASE_NAME] [varchar](40) NULL,
	[SCHEMA_NAME] [varchar](5) NULL,
	[PROCEDURE_NAME] [varchar](60) NULL,
	[PARAMETER_STRING] [varchar](1024) NULL,
	[START_TIMESTAMP] [varchar](14) NULL,
	[END_TIMESTAMP] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_SQL] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Followup_List] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[Master_Data_Job_Group_List]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Group_List](
	[JOB_RUN_NUMBER] [decimal](2, 0) NOT NULL,
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[SKIP_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[JOB_RUN_NUMBER] ASC,
	[GROUP_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Group_List] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[Master_Data_Job_Group_List_History]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Group_List_History](
	[COPY_TIMESTAMP] [varchar](14) NOT NULL,
	[JOB_RUN_NUMBER] [decimal](2, 0) NOT NULL,
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[SKIP_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[COPY_TIMESTAMP] ASC,
	[JOB_RUN_NUMBER] ASC,
	[GROUP_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Group_List_History] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[MASTER_DATA_JOB_GROUP_LIST_TMP]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MASTER_DATA_JOB_GROUP_LIST_TMP](
	[JOB_RUN_NUMBER] [decimal](2, 0) NOT NULL,
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[SKIP_FLAG] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[JOB_RUN_NUMBER] ASC,
	[GROUP_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Data_Job_Index_List]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Index_List](
	[TABLE_NAME] [varchar](30) NOT NULL,
	[INDEX_NAME_SQL] [varchar](30) NOT NULL,
	[INDEX_NAME_ORA] [varchar](30) NOT NULL,
	[INDEX_UNIQUE] [varchar](1) NULL,
	[INDEX_FIELDS] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[TABLE_NAME] ASC,
	[INDEX_NAME_SQL] ASC,
	[INDEX_NAME_ORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Index_List] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[Master_Data_Job_Index_List_bck]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Index_List_bck](
	[TABLE_NAME] [varchar](30) NOT NULL,
	[INDEX_NAME_SQL] [varchar](30) NOT NULL,
	[INDEX_NAME_ORA] [varchar](30) NOT NULL,
	[INDEX_UNIQUE] [varchar](1) NULL,
	[INDEX_FIELDS] [varchar](120) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Data_Job_Index_List_History]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Index_List_History](
	[COPY_TIMESTAMP] [varchar](14) NOT NULL,
	[TABLE_NAME] [varchar](30) NOT NULL,
	[INDEX_NAME_SQL] [varchar](30) NOT NULL,
	[INDEX_NAME_ORA] [varchar](30) NOT NULL,
	[INDEX_UNIQUE] [varchar](1) NULL,
	[INDEX_FIELDS] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[COPY_TIMESTAMP] ASC,
	[TABLE_NAME] ASC,
	[INDEX_NAME_SQL] ASC,
	[INDEX_NAME_ORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Index_List_History] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[MASTER_DATA_JOB_INDEX_LIST_TMP]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MASTER_DATA_JOB_INDEX_LIST_TMP](
	[TABLE_NAME] [varchar](30) NOT NULL,
	[INDEX_NAME_SQL] [varchar](30) NOT NULL,
	[INDEX_NAME_ORA] [varchar](30) NOT NULL,
	[INDEX_UNIQUE] [varchar](1) NULL,
	[INDEX_FIELDS] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[TABLE_NAME] ASC,
	[INDEX_NAME_SQL] ASC,
	[INDEX_NAME_ORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Data_Job_Table_List]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Table_List](
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[SAP_SOURCE_NAME] [varchar](30) NOT NULL,
	[TABLE_NAME] [varchar](30) NOT NULL,
	[SCHEMA_NAME] [varchar](30) NOT NULL,
	[DOMAIN_NAME] [varchar](40) NULL,
	[TABLE_NAME_SQL] [varchar](30) NULL,
	[TABLE_NAME_ORA] [varchar](30) NULL,
	[PRIORITY_RANK] [decimal](4, 0) NULL,
	[SKIP_FLAG] [varchar](1) NULL,
	[EXECUTION_FLAG] [varchar](1) NULL,
	[START_TIMESTAMP] [varchar](14) NULL,
	[END_TIMESTAMP] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_SQL] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_ORA] [varchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[GROUP_NUMBER] ASC,
	[SAP_SOURCE_NAME] ASC,
	[TABLE_NAME] ASC,
	[SCHEMA_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Table_List] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[Master_Data_Job_Table_List_bck]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Table_List_bck](
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[SAP_SOURCE_NAME] [varchar](30) NOT NULL,
	[TABLE_NAME] [varchar](30) NOT NULL,
	[SCHEMA_NAME] [varchar](30) NOT NULL,
	[DOMAIN_NAME] [varchar](40) NULL,
	[TABLE_NAME_SQL] [varchar](30) NULL,
	[TABLE_NAME_ORA] [varchar](30) NULL,
	[PRIORITY_RANK] [decimal](4, 0) NULL,
	[SKIP_FLAG] [varchar](1) NULL,
	[EXECUTION_FLAG] [varchar](1) NULL,
	[START_TIMESTAMP] [varchar](14) NULL,
	[END_TIMESTAMP] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_SQL] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_ORA] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Data_Job_Table_List_History]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Data_Job_Table_List_History](
	[COPY_TIMESTAMP] [varchar](14) NOT NULL,
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[DOMAIN_NAME] [varchar](40) NOT NULL,
	[SAP_SOURCE_NAME] [varchar](30) NOT NULL,
	[TABLE_NAME] [varchar](30) NOT NULL,
	[SCHEMA_NAME] [varchar](30) NOT NULL,
	[TABLE_NAME_SQL] [varchar](30) NULL,
	[TABLE_NAME_ORA] [varchar](30) NULL,
	[PRIORITY_RANK] [decimal](4, 0) NULL,
	[SKIP_FLAG] [varchar](1) NULL,
	[EXECUTION_FLAG] [varchar](1) NULL,
	[START_TIMESTAMP] [varchar](14) NULL,
	[END_TIMESTAMP] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_SQL] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_ORA] [varchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[COPY_TIMESTAMP] ASC,
	[GROUP_NUMBER] ASC,
	[DOMAIN_NAME] ASC,
	[SAP_SOURCE_NAME] ASC,
	[TABLE_NAME] ASC,
	[SCHEMA_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Master_Data_Job_Table_List_History] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[MASTER_DATA_JOB_TABLE_LIST_TMP]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MASTER_DATA_JOB_TABLE_LIST_TMP](
	[GROUP_NUMBER] [decimal](4, 0) NOT NULL,
	[SAP_SOURCE_NAME] [varchar](30) NOT NULL,
	[TABLE_NAME] [varchar](30) NOT NULL,
	[SCHEMA_NAME] [varchar](30) NOT NULL,
	[DOMAIN_NAME] [varchar](40) NULL,
	[TABLE_NAME_SQL] [varchar](30) NULL,
	[TABLE_NAME_ORA] [varchar](30) NULL,
	[PRIORITY_RANK] [decimal](4, 0) NULL,
	[SKIP_FLAG] [varchar](1) NULL,
	[EXECUTION_FLAG] [varchar](1) NULL,
	[START_TIMESTAMP] [varchar](14) NULL,
	[END_TIMESTAMP] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_SQL] [varchar](14) NULL,
	[DOMAIN_TIMESTAMP_ORA] [varchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[GROUP_NUMBER] ASC,
	[SAP_SOURCE_NAME] ASC,
	[TABLE_NAME] ASC,
	[SCHEMA_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMSQL_FILE_LOADER]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMSQL_FILE_LOADER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SCRPT_DIR] [varchar](255) NULL,
	[SCRPT_NM] [varchar](255) NULL,
	[SRC_FILE_DIR] [varchar](255) NULL,
	[SRC_FILE_NM] [varchar](255) NULL,
	[SRC_FILE_FMT] [varchar](10) NULL,
	[SRC_FILE_DELMTR] [varchar](4) NULL,
	[HDFS_WRK_DIR] [varchar](255) NULL,
	[TGT_SYS] [varchar](50) NULL,
	[TGT_SYS_INSTNC] [varchar](50) NULL,
	[TGT_DB] [varchar](50) NULL,
	[TGT_TBL_NM] [varchar](100) NULL,
	[TGT_TBL_IS_REF] [varchar](5) NULL,
	[TGT_TBL_TRUNC_BEF_LOAD] [varchar](5) NULL,
	[TGT_TBL_FLDS] [varchar](4000) NULL,
	[FILE_SET_NM] [varchar](10) NULL,
	[SEQ_NBR] [int] NULL,
	[LOAD_IN_PROG] [varchar](1) NULL,
 CONSTRAINT [PK__MEMSQL_F__3214EC274BB83D74] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMSQL_LOADER]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMSQL_LOADER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SCHED_RUN] [varchar](5) NULL,
	[WRK_FLW] [int] NULL,
	[LOAD_FLG] [varchar](1) NULL,
	[LOAD_TYP] [varchar](8) NULL,
	[SRC_SYS] [varchar](50) NULL,
	[SRC_SYS_INSTNC] [varchar](25) NULL,
	[SRC_LOC_NM] [varchar](255) NULL,
	[SRC_NM] [varchar](100) NULL,
	[SRC_FLDS_TO_DRP] [varchar](100) NULL,
	[TGT_SYS] [varchar](50) NULL,
	[TGT_SYS_INSTNC] [varchar](50) NULL,
	[TGT_LOC_NM] [varchar](255) NULL,
	[TGT_NM] [varchar](100) NULL,
	[TGT_TBL_IS_REF] [varchar](5) NULL,
	[PREV_TRNSFR_TM_SEC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMSQL_LOADER_bck]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMSQL_LOADER_bck](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SCHED_RUN] [varchar](5) NULL,
	[WRK_FLW] [int] NULL,
	[LOAD_FLG] [varchar](1) NULL,
	[LOAD_TYP] [varchar](8) NULL,
	[SRC_SYS] [varchar](50) NULL,
	[SRC_SYS_INSTNC] [varchar](25) NULL,
	[SRC_LOC_NM] [varchar](255) NULL,
	[SRC_NM] [varchar](100) NULL,
	[SRC_FLDS_TO_DRP] [varchar](100) NULL,
	[TGT_SYS] [varchar](50) NULL,
	[TGT_SYS_INSTNC] [varchar](50) NULL,
	[TGT_LOC_NM] [varchar](255) NULL,
	[TGT_NM] [varchar](100) NULL,
	[TGT_TBL_IS_REF] [varchar](5) NULL,
	[PREV_TRNSFR_TM_SEC] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module_Snap]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module_Snap](
	[Module_Snap_Id] [int] IDENTITY(1,1) NOT NULL,
	[Module_Snap_Lkp_Id] [int] NULL,
	[Snap_Typ] [varchar](10) NOT NULL,
	[Snap_Seq] [int] NOT NULL,
	[Snap_Dt] [datetime] NOT NULL,
	[Snap_Yr] [int] NOT NULL,
	[Snap_Wk] [int] NOT NULL,
	[Snap_Pd] [int] NOT NULL,
	[Dw_Cre_Ts] [datetime] NOT NULL,
	[Dw_Cre_Usr] [varchar](50) NOT NULL,
	[Dw_Mod_Ts] [datetime] NULL,
	[Dw_Mod_Usr] [varchar](50) NULL,
	[Dw_Del_Bit] [bit] NOT NULL,
	[Dw_Del_Usr] [varchar](50) NULL,
	[Dw_Del_Ts] [datetime] NULL,
 CONSTRAINT [Pk_Module_Snap] PRIMARY KEY CLUSTERED 
(
	[Module_Snap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module_Snap_Lkp]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module_Snap_Lkp](
	[Module_Snap_Lkp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Module] [varchar](100) NOT NULL,
	[Snap_Typ] [varchar](10) NOT NULL,
	[Max_Snap] [int] NOT NULL,
	[Dw_Cre_Ts] [datetime] NOT NULL,
	[Dw_Cre_Usr] [varchar](50) NOT NULL,
	[Dw_Mod_Ts] [datetime] NULL,
	[Dw_Mod_Usr] [varchar](50) NULL,
	[Dw_Del_Bit] [bit] NOT NULL,
	[Dw_Del_Usr] [varchar](50) NULL,
	[Dw_Del_Ts] [datetime] NULL,
 CONSTRAINT [Pk_Module_Snap_Lkp] PRIMARY KEY CLUSTERED 
(
	[Module_Snap_Lkp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NIELSON_ACV_TURN]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NIELSON_ACV_TURN](
	[UPC] [float] NULL,
	[DATE] [datetime2](7) NULL,
	[MKT_DSP_NM] [varchar](255) NULL,
	[PCTACV] [float] NULL,
	[SKU] [float] NULL,
	[DMMACV] [float] NULL,
	[UNTS_MMACV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_USFOODS_WKTRANSPOSE]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_USFOODS_WKTRANSPOSE](
	[MFR PROD NBR - ( MATERIAL)] [varchar](255) NULL,
	[DIVISION NBR] [float] NULL,
	[Period/Snapshot] [varchar](255) NULL,
	[PIVOT_SEQ] [int] NULL,
	[WEEK] [varchar](40) NULL,
	[PIVOT_DATA1] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_INVOICING_EXTRACT]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_INVOICING_EXTRACT](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_KAP_BKPF]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_KAP_BKPF](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_KLA_ECC_WASTE_MGMT_SEED]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_KLA_ECC_WASTE_MGMT_SEED](
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
/****** Object:  Table [STG].[ABAP_CTL_KNA_BKPF]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_KNA_BKPF](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_KNA_BSID_PRELOAD]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_KNA_BSID_PRELOAD](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_MASTER_PRICING_CDHDR_SEED]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_MASTER_PRICING_CDHDR_SEED](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_OPEN_SALES_ORDERS]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_OPEN_SALES_ORDERS](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ABAP_CTL_PROMOTIONS_EXTRACT]    Script Date: 11/20/2018 5:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ABAP_CTL_PROMOTIONS_EXTRACT](
	[MESSAGE] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl_Hst] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_Hst_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl_Hst] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_Hst_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl_Hst] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_Hst_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl_Raw] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_Raw_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl_Raw] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_Raw_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Mtrc_Detl_Raw] ADD  CONSTRAINT [DF_DB_Mtrc_Detl_Raw_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Mtrc_Sumry] ADD  CONSTRAINT [DF_DB_Mtrc_Sumry_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Mtrc_Sumry] ADD  CONSTRAINT [DF_DB_Mtrc_Sumry_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Mtrc_Sumry] ADD  CONSTRAINT [DF_DB_Mtrc_Sumry_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Mtrc_Sumry_Hst] ADD  CONSTRAINT [DF_DB_Mtrc_Sumry_Hst_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Mtrc_Sumry_Hst] ADD  CONSTRAINT [DF_DB_Mtrc_Sumry_Hst_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Mtrc_Sumry_Hst] ADD  CONSTRAINT [DF_DB_Mtrc_Sumry_Hst_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl_Hst] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_Hst_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl_Hst] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_Hst_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl_Hst] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_Hst_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl_Raw] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_Raw_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl_Raw] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_Raw_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Detl_Raw] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Detl_Raw_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Sumry] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Sumry_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Sumry] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Sumry_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Sumry] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Sumry_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Sumry_Hst] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Sumry_Hst_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Sumry_Hst] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Sumry_Hst_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[DB_Sz_Mtrc_Sumry_Hst] ADD  CONSTRAINT [DF_DB_Sz_Mtrc_Sumry_Hst_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[Btch_Sched]  WITH CHECK ADD  CONSTRAINT [FK_Btch_Sched] FOREIGN KEY([Btch_Typ_Id])
REFERENCES [dbo].[Btch_Typ] ([Btch_Typ_Id])
GO
ALTER TABLE [dbo].[Btch_Sched] CHECK CONSTRAINT [FK_Btch_Sched]
GO
ALTER TABLE [dbo].[Module_Snap]  WITH CHECK ADD  CONSTRAINT [Fk_Module_Snap_Module_Snap_Lkp] FOREIGN KEY([Module_Snap_Lkp_Id])
REFERENCES [dbo].[Module_Snap_Lkp] ([Module_Snap_Lkp_Id])
GO
ALTER TABLE [dbo].[Module_Snap] CHECK CONSTRAINT [Fk_Module_Snap_Module_Snap_Lkp]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - STARTED
2 - IN PROGRESS
3 - FAILED
4 - COMPLETED
5 - EXCEPTION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_SNACKS_JOBS', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Job Log for Richmond Snacks Analytics Project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_SNACKS_JOBS'
GO
USE [master]
GO
ALTER DATABASE [KG_Audit] SET  READ_WRITE 
GO
