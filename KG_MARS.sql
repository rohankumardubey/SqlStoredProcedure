USE [master]
GO
/****** Object:  Database [KG_MARS]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE DATABASE [KG_MARS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_MARS', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_MARS.mdf' , SIZE = 16128000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_MARS_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_MARS_log.ldf' , SIZE = 409600KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_MARS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_MARS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_MARS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_MARS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_MARS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_MARS] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_MARS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_MARS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_MARS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_MARS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_MARS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_MARS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_MARS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_MARS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_MARS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_MARS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_MARS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_MARS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_MARS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_MARS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_MARS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_MARS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_MARS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_MARS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_MARS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_MARS] SET  MULTI_USER 
GO
ALTER DATABASE [KG_MARS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_MARS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_MARS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_MARS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_MARS', N'ON'
GO
USE [KG_MARS]
GO
/****** Object:  User [US\SQL_KG_MARS_USERS_R]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [US\SQL_KG_MARS_USERS_R] FOR LOGIN [US\SQL_KG_MARS_USERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R] WITH DEFAULT_SCHEMA=[US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\DS_SSIS_P]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [US\DS_SSIS_P] FOR LOGIN [US\DS_SSIS_P] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KG_MARS_USERS_R]
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
ALTER ROLE [db_owner] ADD MEMBER [US\DS_SSIS_P]
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
/****** Object:  Schema [Datamart]    Script Date: 11/20/2018 5:30:40 PM ******/
CREATE SCHEMA [Datamart]
GO
/****** Object:  Schema [Error]    Script Date: 11/20/2018 5:30:41 PM ******/
CREATE SCHEMA [Error]
GO
/****** Object:  Schema [Stage]    Script Date: 11/20/2018 5:30:41 PM ******/
CREATE SCHEMA [Stage]
GO
/****** Object:  StoredProcedure [dbo].[CreateFactProjectSnapshot]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateFactProjectSnapshot]
	@SnapshotDate datetime
AS


MERGE INTO dbo.FactProjectSnapshot AS t
USING dbo.FactProject AS s
	ON s.ProjectUID = t.ProjectUID
	AND CAST(CONVERT(varchar(8),@SnapshotDate,112) as int) = t.SnapshotDateKey
WHEN NOT MATCHED THEN INSERT
	([SnapshotDateKey]
	,[ProjectUID]
	,[ProjectKey]
	,[RequestedStartShipDateKey]
	,[Stg1ApprovalDateKey]
	,[Stg2ApprovalTargetDateKey] 
	,[StartupDateKey]  
	,[StartShipDateKey]
	,[SavingsStartDateKey] 
	,[PDR1DueDateKey]  
	,[PDR1AnticipatedDateKey] 
	,[PDR2ReceivedDateKey] 
	,[PDR2DueDateKey]
	,[ProjectCancelledDateKey] 
	,[PlantTestDateKey] 
	,[LAMDueDateKey]
	,[LAMDateKey] 
	,[LAMReceivedDateKey]  
	,[NSV]
	,[GSIPercent]
	,[CannibalizationPercent]
	,[Compression]
	,[EstimatedPercentCompression]
	,[PlannedWork]
	,[Work]
	,[RemainingWork]
	,[EstimatedPotentialSavings]
	,[WeightedSavings]
	,[TotalVolumeWeight]
	,[LaunchBuildVolume]
	,[NSVAtPDR2]
	,[NSVAUD]
	,[ProbabilityOfTechnicalSuccess]
	,[LatestIncrGMPerWeight]
	,[LatestIncrGMPerUnit]
	,[LatestGMPercentNSV]
	,[LatestIncrGMPercentNSV]
	,IsDeleted
	,[InsertAuditKey]
	,[UpdateAuditKey])

	VALUES
	(
	CAST(CONVERT(varchar(8),@SnapshotDate,112) as int)
	,s.[ProjectUID]
	,s.[ProjectKey]
	,s.[RequestedStartShipDateKey]
	,s.[Stg1ApprovalDateKey]
	,s.[Stg2ApprovalTargetDateKey]
	,s.[StartupDateKey] 
	,s.[StartShipDateKey] 
	,s.[SavingsStartDateKey]
	,s.[PDR1DueDateKey] 
	,s.[PDR1AnticipatedDateKey] 
	,s.[PDR2ReceivedDateKey] 
	,s.[PDR2DueDateKey] 
	,s.[ProjectCancelledDateKey] 
	,s.[PlantTestDateKey] 
	,s.[LAMDueDateKey] 
	,s.[LAMDateKey] 
	,s.[LAMReceivedDateKey] 
	,s.[NSV]
	,s.[GSIPercent]
	,s.[CannibalizationPercent]
	,s.[Compression]
	,s.[EstimatedPercentCompression]
	,s.[PlannedWork]
	,s.[Work]
	,s.[RemainingWork]
	,s.[EstimatedPotentialSavings]
	,s.[WeightedSavings]
	,s.[TotalVolumeWeight]
	,s.[LaunchBuildVolume]
	,s.[NSVAtPDR2]
	,s.[NSVAUD]
	,s.[ProbabilityOfTechnicalSuccess]
	,s.[LatestIncrGMPerWeight]
	,s.[LatestIncrGMPerUnit]
	,s.[LatestGMPercentNSV]
	,s.[LatestIncrGMPercentNSV]
	,s.IsDeleted
	,s.[InsertAuditKey]
	,s.[UpdateAuditKey]
	)
;






GO
/****** Object:  StoredProcedure [dbo].[CreateFactTimesheetLineSnapshot]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CreateFactTimesheetLineSnapshot]
	@SnapshotDate datetime
AS


MERGE INTO dbo.FactTimesheetLineSnapshot AS t
USING dbo.FactTimesheetLine AS s
	ON s.TimesheetLineUID = t.TimesheetLineUID
	AND CAST(CONVERT(varchar(8),@SnapshotDate,112) as int) = t.SnapshotDateKey
WHEN NOT MATCHED THEN INSERT
(
SnapshotDateKey

	
	,[TimesheetLineUID]
	,[TimesheetLineKey] 
	,[TimesheetPeriodKey] 
	,[ResourceKey] 
	,[ProjectKey] 
	,[ActualWork] 
	
	,[InsertAuditKey]
	,[UpdateAuditKey]
	)
	VALUES
	(
CAST(CONVERT(varchar(8),@SnapshotDate,112) as int)

	
	,s.[TimesheetLineUID]
	,s.[TimesheetLineKey] 
	,s.[TimesheetPeriodKey] 
	,s.[ResourceKey] 
	,s.[ProjectKey] 
	,s.[ActualWork] 
	
	,s.[InsertAuditKey]
	,s.[UpdateAuditKey]
	);


GO
/****** Object:  StoredProcedure [dbo].[MARS_GSI_Bridge]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/


CREATE procedure [dbo].[MARS_GSI_Bridge]
as
begin
insert into [KG_MARS].[dbo].[ExtGSIBridge]
( [Geography]
      ,[Business Unit]
      ,[Food Category]
      ,[ProjectUID]
      ,[ProjectName]
      ,[Portfolio Bucket]
      ,[Project Status]
      ,[Proj Type]
      ,[YEAR]
      ,[Requested Start Ship]
      ,[CANNIBAL]
      ,[GSI]
      ,[NSV]
      ,[NSV_GSI]
      ,[NSV_INC]
     ,[WrapAroundNSV]
      ,[IncWrapAroundNSV]
      ,[GSIWrapAroundNSV]
     , [Over_3_Million]
     ,[Over_15_Million]
      ,[Parent Project]
      ,[GSI_BU]
      ,[GSI_GEO]
      ,[Project_Link]
      ,[DW_CRE_TS]
      ,[DW_CRE_USR]
      ,[DW_MOD_TS]
      ,[DW_MOD_USR]
      ,[DW_DEL_BIT]
      ,[DW_DEL_TS]
      ,[DW_DEL_USR]
	  ) 
	  
	  select
	   [Geography]
      ,[Business Unit]
      ,[Food Category]
      ,[ProjectUID]
      ,[ProjectName]
      ,[Portfolio Bucket]
      ,[Project Status]
      ,[Proj Type]
      ,[YEAR]
	  , [Requested Start Ship]
	 -- ,cast(cast([Requested Start Ship] as varchar(50)) as datetime2) as [Requested Start Ship]
    --  ,CONVERT(Datetime, [Requested Start Ship], 112) as [Requested Start Ship]
	  -- cast([Requested Start Ship] as datetime2) as [Requested Start Ship]
      ,[CANNIBAL]
      ,[GSI]
      ,[NSV]
      ,[NSV_GSI]
      ,[NSV_INC]
      ,cast(cast([WrapAroundNSV] as float) as decimal)
      ,[IncWrapAroundNSV]
	  ,cast(cast([GSIWrapAroundNSV] as float) as decimal)
      
      ,[Over_3_Million]
    ,[Over_15_Million]
      ,[Parent Project]
      ,[GSI_BU]
      ,[GSI_GEO]
      ,[Project_Link]
      ,getdate()
      ,USER_NAME()
      ,[DW_MOD_TS]
      ,[DW_MOD_USR]
      ,[DW_DEL_BIT]
      ,[DW_DEL_TS]
      ,[DW_DEL_USR]
  FROM 
  [KG_MARS].[Stage].[ExtGSIBridge] 
 
 end


GO
/****** Object:  StoredProcedure [dbo].[MARS_GSI_Bridge_Finaltableload]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/


create procedure [dbo].[MARS_GSI_Bridge_Finaltableload]
as
begin
insert into [KG_MARS].[dbo].[ExtGSIBridge]
( [Geography]
      ,[Business Unit]
      ,[Food Category]
      ,[ProjectUID]
      ,[ProjectName]
      ,[Portfolio Bucket]
      ,[Project Status]
      ,[Proj Type]
      ,[YEAR]
      ,[Requested Start Ship]
      ,[CANNIBAL]
      ,[GSI]
      ,[NSV]
      ,[NSV_GSI]
      ,[NSV_INC]
     ,[WrapAroundNSV]
      ,[IncWrapAroundNSV]
      ,[GSIWrapAroundNSV]
     , [Over_3_Million]
     ,[Over_15_Million]
      ,[Parent Project]
      ,[GSI_BU]
      ,[GSI_GEO]
      ,[Project_Link]
      ,[DW_CRE_TS]
      ,[DW_CRE_USR]
      ,[DW_MOD_TS]
      ,[DW_MOD_USR]
      ,[DW_DEL_BIT]
      ,[DW_DEL_TS]
      ,[DW_DEL_USR]
	  ) 
	  
	  select
	   [Geography]
      ,[Business Unit]
      ,[Food Category]
      ,[ProjectUID]
      ,[ProjectName]
      ,[Portfolio Bucket]
      ,[Project Status]
      ,[Proj Type]
      ,[YEAR]
	  , [Requested Start Ship]
	 -- ,cast(cast([Requested Start Ship] as varchar(50)) as datetime2) as [Requested Start Ship]
    --  ,CONVERT(Datetime, [Requested Start Ship], 112) as [Requested Start Ship]
	  -- cast([Requested Start Ship] as datetime2) as [Requested Start Ship]
      ,[CANNIBAL]
      ,[GSI]
      ,[NSV]
      ,[NSV_GSI]
      ,[NSV_INC]
      ,cast(cast([WrapAroundNSV] as float) as decimal)
      ,[IncWrapAroundNSV]
	  ,cast(cast([GSIWrapAroundNSV] as float) as decimal)
      
      ,[Over_3_Million]
    ,[Over_15_Million]
      ,[Parent Project]
      ,[GSI_BU]
      ,[GSI_GEO]
      ,[Project_Link]
      ,getdate()
      ,USER_NAME()
      ,[DW_MOD_TS]
      ,[DW_MOD_USR]
      ,[DW_DEL_BIT]
      ,[DW_DEL_TS]
      ,[DW_DEL_USR]
  FROM 
  [KG_MARS].[Stage].[ExtGSIBridge] 
 
 end


GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_Package_LogDetails]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_ETL_Package_LogDetails] (

@PkgName nvarchar(50) , 


	@PkgGUID  nvarchar(max) ,
	
	@TaskName  nvarchar(50)  ,
	@ExecStartDT datetime  ,
	
	@ErrorDetails nvarchar (50),
	@ErrorCode nvarchar(max),
	@ErrorDescription nvarchar(max)
	)




as


				
insert into ETL_Package_LogDetails
([PkgName],
	[PkgGUID] ,

	[TaskName] ,
	[ExecStartDT],
	
	[Error Details],
	[Error Code] ,
	[Error Description]
) values
(@PkgName, 


	@PkgGUID  ,
	
	@TaskName  ,
	@ExecStartDT   ,

	@ErrorDetails,
	@ErrorCode ,
	@ErrorDescription 
)




GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMAUDIT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMAUDIT]
AS
/*EXEC USP_GETCOUNT_DIMAUDIT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimAudit
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMBUSINESSUNIT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMBUSINESSUNIT]
AS
BEGIN
SELECT COUNT(*) AS RowCnt FROM dbo.DimBusinessUnit
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMBUYER]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMBUYER]
AS
/*EXEC USP_GETCOUNT_DIMBUYER*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimBuyer
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMFOODCATEGORY]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMFOODCATEGORY]
AS
/*EXEC USP_GETCOUNT_DIMFOODCATEgory*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimFoodCategory
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMGEOGRAPHY]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMGEOGRAPHY]
AS
/*EXEC USP_GETCOUNT_DIMGEOGRAPHY*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimGeography
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMGLOBALBRAND]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMGLOBALBRAND]
AS
/*EXEC USP_GETCOUNT_DIMGLOBALBRAND*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimGlobalBrand
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMMATERIALCATEGORY]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMMATERIALCATEGORY]
AS
/*EXEC USP_GETCOUNT_DIMMATERIALCATEgory*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimMaterialCategory
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMPARENTPROJECT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMPARENTPROJECT]
AS
/*EXEC USP_GETCOUNT_DIMPARENTPROJECT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimParentProject
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMPLANTLOCATION]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMPLANTLOCATION]
AS
/*EXEC USP_GETCOUNT_DIMPLANTLOCATION*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimPlantLocation
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMPRIMARYRESOURCETYPE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMPRIMARYRESOURCETYPE]
AS
/*EXEC USP_GETCOUNT_DIMPRIMARYRESOURCETYPE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimPrimaryResourceType
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMPROJECT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMPROJECT]
AS
/*EXEC USP_GETCOUNT_DIMPROJECT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimProject
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMPROJECTMANAGER]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMPROJECTMANAGER]
AS
/*EXEC USP_GETCOUNT_DIMPROJECTMANAGER*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimProjectManager
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMPROJECTTYPE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMPROJECTTYPE]
AS
/*EXEC USP_GETCOUNT_DIMPROJECTTYPE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimProjectType
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMRBS]
AS
/*EXEC USP_GETCOUNT_DIMRBS*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimRBS
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMRESOURCE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMRESOURCE]
AS
/*EXEC USP_GETCOUNT_DIMRESOURCE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimResource
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMSTAGEGATE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMSTAGEGATE]
AS
/*EXEC USP_GETCOUNT_DIMSTAGEGATE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimStageGate
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMTEMPLATETYPE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMTEMPLATETYPE]
AS
/*EXEC USP_GETCOUNT_DIMTEMPLATETYPE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimTemplateType
END




GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMTIMESHEETLINE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMTIMESHEETLINE]
AS
/*EXEC USP_GETCOUNT_DIMTIMESHEETLINE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimTimesheetLine
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_DIMTIMESHEETPERIOD]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_DIMTIMESHEETPERIOD]
AS
/*EXEC USP_GETCOUNT_DIMTIMESHEETPERIOD*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.DimTimesheetPeriod
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_Ext_MARS_CRT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_GETCOUNT_Ext_MARS_CRT]
AS
/*EXEC USP_GETCOUNT_DIMAUDIT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.Ext_MARS_CRT
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_Ext_MARS_CRT_METADATA]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_GETCOUNT_Ext_MARS_CRT_METADATA]
AS
/*EXEC USP_GETCOUNT_DIMAUDIT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM 	dbo.EXT_CRT_MetadataLookup
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ExtBusinessUnit
--ExtFoodCategory
--ExtGSIBridge
--ExtPrimaryResourceType
--ExtProjectType
--ExtRBS
--ExtRedLineData

create procedure [dbo].[USP_GetCount_ExtBusinessUnit]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtBusinessUnit
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[USP_GetCount_ExtFoodCategory]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtFoodCategory
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtGSIBridge]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_GetCount_ExtGSIBridge]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtGSIBridge
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_GetCount_ExtPrimaryResourceType]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtPrimaryResourceType
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_GetCount_ExtProjectType]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtProjectType
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_GetCount_ExtRBS]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtRBS
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GetCount_ExtRedLineData]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_GetCount_ExtRedLineData]
as
begin
SELECT COUNT(*) AS RowCnt from	dbo.ExtRedLineData
end


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_FACTASSIGNMENT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_FACTASSIGNMENT]
AS
/*EXEC USP_GETCOUNT_FACTASSIGNMENT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM dbo.FactASsignment
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_FACTPROJECT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_FACTPROJECT]
AS
/*EXEC USP_GETCOUNT_FACTPROJECT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM dbo.FactProject
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_FACTPROJECTSNAPSHOT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_FACTPROJECTSNAPSHOT]
AS
/*EXEC USP_GETCOUNT_FACTPROJECTSNAPSHOT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM dbo.FactProjectSnapshot
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_FACTTIMESHEETLINE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_FACTTIMESHEETLINE]
AS
/*EXEC USP_GETCOUNT_FACTTIMESHEETLINE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM dbo.FactTimesheetLine
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_FACTTIMESHEETLINESNAPSHOT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_FACTTIMESHEETLINESNAPSHOT]
AS
/*EXEC USP_GETCOUNT_FACTTIMESHEETLINESNAPSHOT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM dbo.FactTimesheetLineSnapshot
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSEPMLOOKUPTABLE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSEPMLOOKUPTABLE]
AS
/*EXEC USP_GETCOUNT_MARSEPMLOOKUPTABLE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSEPMLookupTable
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSEPMMETADATADIMENSION]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSEPMMETADATADIMENSION]
AS
/*EXEC USP_GETCOUNT_MARSEPMMETADATADIMENSION*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSEPMMetadataDimension
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPEPMASSIGNMENT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPEPMASSIGNMENT]
AS
/*EXEC USP_GETCOUNT_MARSMSPEPMASSIGNMENT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPEpmASsignment
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPEPMASSIGNMENTBYDAY]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPEPMASSIGNMENTBYDAY]
AS
/*EXEC USP_GETCOUNT_MARSMSPEPMASSIGNMENTBYDAY*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPEpmASsignmentByDay
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPEPMPROJECT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPEPMPROJECT]
AS
/*EXEC USP_GETCOUNT_MARSMSPEPMPROJECT*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPEpmProject
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPEPMRESOURCE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPEPMRESOURCE]
AS
/*EXEC USP_GETCOUNT_MARSMSPEPMRESOURCE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPEpmResource
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPTIMESHEETLINE]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPTIMESHEETLINE]
AS
/*EXEC USP_GETCOUNT_MARSMSPTIMESHEETLINE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPTimesheetline
END



GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPTIMESHEETLINEOLAP]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPTIMESHEETLINEOLAP]
AS
/*EXEC USP_GETCOUNT_MARSMSPTIMESHEETLINEOLAP*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPTimesheetlineOlap
END


GO
/****** Object:  StoredProcedure [dbo].[USP_GETCOUNT_MARSMSPTIMESHEETPERIOD]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GETCOUNT_MARSMSPTIMESHEETPERIOD]
AS
/*EXEC USP_GETCOUNT_DIMTIMESHEETLINE*/
BEGIN
SELECT COUNT(*) AS RowCnt FROM Stage.MARSMSPTimesheetPeriod
END


GO
/****** Object:  StoredProcedure [dbo].[uspSendProcessEmail]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
========================================================================
========================================================================
Name:        uspSendProcessEmail
Developer:   Jim Bennett
Create Date: 06/10/2011
Purpose:     The uspSendProcessEmail SP sends an email based
             on information provided in the ProcessEmail table

------------------------------------------------------------------------
Revision History
Revision# Date       Who  Description
--------- ---------  ---  ----------------------------------------------


Example:
EXEC dbo.uspSendProcessEmail 'Test','GENERALERROR'
========================================================================
*/
CREATE PROCEDURE [dbo].[uspSendProcessEmail]
	(
	@ProcessName varchar(100),
	@ProcessState varchar(50),
	@Custom1 varchar(max) = NULL,
	@Custom2 varchar(max) = NULL,
	@Custom3 varchar(max) = NULL,
	@Custom4 varchar(max) = NULL,
	@Custom5 varchar(max) = NULL,
	@Custom6 varchar(max) = NULL,
	@Custom7 varchar(max) = NULL,
	@Custom8 varchar(max) = NULL,
	@Custom9 varchar(max) = NULL,
	@Custom10 varchar(max) = NULL
	)
AS
SET NOCOUNT ON
BEGIN TRY

DECLARE @emailbody varchar(max)
DECLARE @emailsubject varchar(max)
DECLARE @emailrecipients varchar(max)
DECLARE @emailCCrecipients varchar(max)
DECLARE @emailBCCrecipients varchar(max)
DECLARE @emailpriority varchar(6)

SELECT TOP 1
	@emailrecipients = pe.EmailRecipients,
	@emailCCrecipients = pe.EmailCCRecipients,
	@emailBCCrecipients = pe.EmailBCCRecipients,
	@emailsubject = pe.EmailSubject,
	@emailbody = pe.EmailMessage,
	@emailpriority = CASE ISNULL(pe.HighPriority,0)
					WHEN 1 THEN 'HIGH'
					ELSE 'NORMAL'
					END
FROM ProcessEmail AS pe
WHERE pe.ProcessName = CASE 
                        WHEN @ProcessState = 'GENERALERROR' THEN pe.ProcessName
                        ELSE @ProcessName
                        END
AND pe.ProcessState = @ProcessState

--Override with custom values
SELECT  @emailsubject = REPLACE(@emailsubject,'<<PROCESSNAME>>',@ProcessName),
								@emailbody = REPLACE(@emailbody,'<<PROCESSNAME>>',@ProcessName)
IF @Custom1 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM1>>',@Custom1),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM1>>',@Custom1)
IF @Custom2 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM2>>',@Custom2),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM2>>',@Custom2)
IF @Custom3 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM3>>',@Custom3),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM3>>',@Custom3)
IF @Custom4 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM4>>',@Custom4),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM4>>',@Custom4)
IF @Custom5 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM5>>',@Custom5),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM5>>',@Custom5)
IF @Custom6 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM6>>',@Custom6),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM6>>',@Custom6)
IF @Custom7 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM7>>',@Custom7),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM7>>',@Custom7)
IF @Custom8 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM8>>',@Custom8),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM8>>',@Custom8)
IF @Custom9 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM9>>',@Custom9),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM9>>',@Custom9)
IF @Custom10 IS NOT NULL 
        SELECT  @emailsubject = REPLACE(@emailsubject,'<<CUSTOM10>>',@Custom10),
                                        @emailbody = REPLACE(@emailbody,'<<CUSTOM10>>',@Custom10)


--Send the email
--EXEC msdb.dbo.sp_send_dbmail 
--	@profile_name = 'DBMail',
--	@recipients = @emailrecipients,
--	@copy_recipients = @emailCCrecipients,
--	@blind_copy_recipients = @emailBCCrecipients,
--	@subject = @emailsubject,
--	@body = @emailbody,
--	@importance = @emailpriority,
--	@body_format = 'HTML';

-- Update the email table
UPDATE pe
SET LastSentDate = getdate()
FROM ProcessEmail AS pe
WHERE pe.ProcessName = CASE 
                        WHEN @ProcessState = 'GENERALERROR' THEN pe.ProcessName
                        ELSE @ProcessName
                        END
AND pe.ProcessState = @ProcessState

END TRY
BEGIN CATCH
	DECLARE @ErrorMessage varchar(max)
	DECLARE @ErrorSeverity int

	SELECT 
		@ErrorMessage = 'Proc: ' + OBJECT_NAME(@@PROCID) + ' - Line: '+ CONVERT(VARCHAR(255),ERROR_LINE()) + ' - ' + CONVERT(VARCHAR(255),ERROR_NUMBER()) + ' --- ' + CONVERT(varchar(4000), ERROR_MESSAGE()),
		@ErrorSeverity = ERROR_SEVERITY()
	RAISERROR (@ErrorMessage,@ErrorSeverity,1)
END CATCH
RETURN


GO
/****** Object:  StoredProcedure [Stage].[MergeDimBusinessUnitUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimBusinessUnitUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimBusinessUnit AS t
USING Stage.DimBusinessUnitUpdate AS s
	ON s.BusinessUnitKey = t.BusinessUnitKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.BusinessUnitKey
FROM dbo.DimBusinessUnit as m
INNER JOIN dbo.DimBusinessUnit as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimBuyerUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimBuyerUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimBuyer AS t
USING Stage.DimBuyerUpdate AS s
	ON s.BuyerKey = t.BuyerKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.BuyerKey
FROM dbo.DimBuyer as m
INNER JOIN dbo.DimBuyer as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimFoodCategoryUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimFoodCategoryUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimFoodCategory AS t
USING Stage.DimFoodCategoryUpdate AS s
	ON s.FoodCategoryKey = t.FoodCategoryKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.FoodCategoryKey
FROM dbo.DimFoodCategory as m
INNER JOIN dbo.DimFoodCategory as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimGeographyUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimGeographyUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimGeography AS t
USING Stage.DimGeographyUpdate AS s
	ON s.GeographyKey = t.GeographyKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.GeographyKey
FROM dbo.DimGeography as m
INNER JOIN dbo.DimGeography as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimGlobalBrandUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimGlobalBrandUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimGlobalBrand AS t
USING Stage.DimGlobalBrandUpdate AS s
	ON s.GlobalBrandKey = t.GlobalBrandKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.GlobalBrandKey
FROM dbo.DimGlobalBrand as m
INNER JOIN dbo.DimGlobalBrand as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimMaterialCategoryUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimMaterialCategoryUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimMaterialCategory AS t
USING Stage.DimMaterialCategoryUpdate AS s
	ON s.MaterialCategoryKey = t.MaterialCategoryKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.MaterialCategoryKey
FROM dbo.DimMaterialCategory as m
INNER JOIN dbo.DimMaterialCategory as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimParentProjectUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimParentProjectUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimParentProject AS t
USING Stage.DimParentProjectUpdate AS s
	ON s.ParentProjectKey = t.ParentProjectKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.ParentProjectKey
FROM dbo.DimParentProject as m
INNER JOIN dbo.DimParentProject as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimPlantLocationUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimPlantLocationUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimPlantLocation AS t
USING Stage.DimPlantLocationUpdate AS s
	ON s.PlantLocationKey = t.PlantLocationKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.PlantLocationKey
FROM dbo.DimPlantLocation as m
INNER JOIN dbo.DimPlantLocation as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimPrimaryResourceTypeUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimPrimaryResourceTypeUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimPrimaryResourceType AS t
USING Stage.DimPrimaryResourceTypeUpdate AS s
	ON s.PrimaryResourceTypeKey = t.PrimaryResourceTypeKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.PrimaryResourceTypeKey
FROM dbo.DimPrimaryResourceType as m
INNER JOIN dbo.DimPrimaryResourceType as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimProjectManagerUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimProjectManagerUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimProjectManager AS t
USING Stage.DimProjectManagerUpdate AS s
	ON s.ProjectManagerKey = t.ProjectManagerKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.ProjectManagerKey
FROM dbo.DimProjectManager as m
INNER JOIN dbo.DimProjectManager as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimProjectTypeUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimProjectTypeUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimProjectType AS t
USING Stage.DimProjectTypeUpdate AS s
	ON s.ProjectTypeKey = t.ProjectTypeKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.ProjectTypeKey
FROM dbo.DimProjectType as m
INNER JOIN dbo.DimProjectType as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimProjectUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Stage].[MergeDimProjectUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimProject AS t
USING Stage.DimProjectUpdate AS s
	ON s.ProjectUID = t.ProjectUID
WHEN MATCHED THEN UPDATE SET
     [Name] = s.[Name]
	,[Description] = s.[Description]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Soft Delete Projects that no longer exist in MARS
UPDATE d
SET IsDeleted = 1
FROM dbo.DimProject as d
LEFT OUTER JOIN Stage.MARSMSPEpmProject as p
	ON p.ProjectUID = d.ProjectUID
WHERE p.ProjectUID IS NULL
AND d.RowIsCurrent = 1

--Type 2 Changes

INSERT INTO dbo.DimProject
(
	[ProjectUID]
	,[Name]
	,[Description]
	,[StartDate]
	,[FinishDate]
	,[URL]
	,[CreatedDate]
	,[ModifiedDate]
	,[CalendarDurationDays]
	,[IHUTFormulaDue]
	,[COGSPlantTest3]
	,[IHUTNLIDue]
	,[SensoryCompletion]
	,[IHUTProdStart]
	,[IHUTTopLinesCompletion]
	,[SSProdStart]
	,[RequestedStartShip]
	,[SSNLIDue]
	,[FinalNLIDue]
	,[RMISDue]
	,[SSFormulaDue]
	,[FinalFormulaDue]
	,[TemplateDurationDays]
	,[ShelfLifeDays]
	,[GeographyKey]
	,[BusinessUnitKey]
	,[FoodCategoryKey]
	,[ProjectTypeKey]
	,[ProjectManagerKey]
	,[PlantLocationKey]
	,[StageGateKey]
	,[Status]
	,[TemplateTypeKey]
	,[MaterialCategoryKey]
	,[GlobalBrandKey]
	,[COGSPercentProbability]
	,[COGS1stYearInStd]
	,[BuyerKey]
	,[ParentProjectKey]
	,[PortfolioBucket]
	,[NewIngredientsRequired]
	,[NewPlantorSupplier]
	,[isLeadProject]
	,[isBackupProject]
	,[Equivalent]
	,[FoodDescription]
	,[PackagingFormat]
	,[Comment]
	,[MarketingLead]
	,[ProductDeveloper]
	,[FoodTechnologist]
	,[PackagingEngineer]
	,[Risk]
	,[ProductDeveloper2]
	,[PilotPlantTest]
	,[COGSStartup2]
	,[COGSStartup3]
	,[COGSPlantTest2]
	,[DateBFIReceived]
	,[PDR2Comments]
	,[LAMComments]
	,[ValidationMethod]
	,[IsStageGateFlex]
	,[MarketType]
	,[LAMConsumerTesting]
	,[StrategicFit]
	,[Flavor]
	,[LabelConversion]
	,[MarketingPlatform]	
	,[RowIsCurrent]
	,[RowStartDate]
	,[RowEndDate]
	,[RowChangeReason]
	,[HashValue]
	,[InsertAuditKey]
	,[UpdateAuditKey]
	,[LoadDate]
	,[LastUpdateDate]
	,[RowVersion]	
)
SELECT
	MERGE_OUTPUT.[ProjectUID]
	,MERGE_OUTPUT.[Name]
	,MERGE_OUTPUT.[Description]
	,MERGE_OUTPUT.[StartDate]
	,MERGE_OUTPUT.[FinishDate]
	,MERGE_OUTPUT.[URL]
	,MERGE_OUTPUT.[CreatedDate]
	,MERGE_OUTPUT.[ModifiedDate]
	,MERGE_OUTPUT.[CalendarDurationDays]
	,MERGE_OUTPUT.[IHUTFormulaDue]
	,MERGE_OUTPUT.[COGSPlantTest3]
	,MERGE_OUTPUT.[IHUTNLIDue]
	,MERGE_OUTPUT.[SensoryCompletion]
	,MERGE_OUTPUT.[IHUTProdStart]
	,MERGE_OUTPUT.[IHUTTopLinesCompletion]
	,MERGE_OUTPUT.[SSProdStart]
	,MERGE_OUTPUT.[RequestedStartShip]
	,MERGE_OUTPUT.[SSNLIDue]
	,MERGE_OUTPUT.[FinalNLIDue]
	,MERGE_OUTPUT.[RMISDue]
	,MERGE_OUTPUT.[SSFormulaDue]
	,MERGE_OUTPUT.[FinalFormulaDue]
	,MERGE_OUTPUT.[TemplateDurationDays]
	,MERGE_OUTPUT.[ShelfLifeDays]
	,MERGE_OUTPUT.[GeographyKey]
	,MERGE_OUTPUT.[BusinessUnitKey]
	,MERGE_OUTPUT.[FoodCategoryKey]
	,MERGE_OUTPUT.[ProjectTypeKey]
	,MERGE_OUTPUT.[ProjectManagerKey]
	,MERGE_OUTPUT.[PlantLocationKey]
	,MERGE_OUTPUT.[StageGateKey]
	,MERGE_OUTPUT.[Status]
	,MERGE_OUTPUT.[TemplateTypeKey]
	,MERGE_OUTPUT.[MaterialCategoryKey]
	,MERGE_OUTPUT.[GlobalBrandKey]
	,MERGE_OUTPUT.[COGSPercentProbability]
	,MERGE_OUTPUT.[COGS1stYearInStd]
	,MERGE_OUTPUT.[BuyerKey]
	,MERGE_OUTPUT.[ParentProjectKey]
	,MERGE_OUTPUT.[PortfolioBucket]
	,MERGE_OUTPUT.[NewIngredientsRequired]
	,MERGE_OUTPUT.[NewPlantorSupplier]
	,MERGE_OUTPUT.[isLeadProject]
	,MERGE_OUTPUT.[isBackupProject]
	,MERGE_OUTPUT.[Equivalent]
	,MERGE_OUTPUT.[FoodDescription]
	,MERGE_OUTPUT.[PackagingFormat]
	,MERGE_OUTPUT.[Comment]
	,MERGE_OUTPUT.[MarketingLead]
	,MERGE_OUTPUT.[ProductDeveloper]
	,MERGE_OUTPUT.[FoodTechnologist]
	,MERGE_OUTPUT.[PackagingEngineer]
	,MERGE_OUTPUT.[Risk]
	,MERGE_OUTPUT.[ProductDeveloper2]
	,MERGE_OUTPUT.[PilotPlantTest]
	,MERGE_OUTPUT.[COGSStartup2]
	,MERGE_OUTPUT.[COGSStartup3]
	,MERGE_OUTPUT.[COGSPlantTest2]
	,MERGE_OUTPUT.[DateBFIReceived]
	,MERGE_OUTPUT.[PDR2Comments]
	,MERGE_OUTPUT.[LAMComments]
	,MERGE_OUTPUT.[ValidationMethod]
	,MERGE_OUTPUT.[IsStageGateFlex]
	,MERGE_OUTPUT.[MarketType]
	,MERGE_OUTPUT.[LAMConsumerTesting]
	,MERGE_OUTPUT.[StrategicFit]
	,MERGE_OUTPUT.[Flavor]
	,MERGE_OUTPUT.[LabelConversion]
	,MERGE_OUTPUT.[MarketingPlatform]
	,MERGE_OUTPUT.[RowIsCurrent]
	,MERGE_OUTPUT.[RowStartDate]
	,MERGE_OUTPUT.[RowEndDate]
	,MERGE_OUTPUT.[RowChangeReason]
	,MERGE_OUTPUT.[HashValue]
	,MERGE_OUTPUT.[InsertAuditKey]
	,MERGE_OUTPUT.[UpdateAuditKey]
	,MERGE_OUTPUT.[LoadDate]
	,MERGE_OUTPUT.[LastUpdateDate]
	,MERGE_OUTPUT.[RowVersion]	
FROM
	(
    MERGE dbo.DimProject t
    USING Stage.DimProjectUpdate s
    ON s.ProjectKey = t.ProjectKey
    WHEN MATCHED AND
    (
    --Compare Type 2 columns to see if we have a change
      COALESCE(t.[StartDate],'1/1/1900') <> COALESCE(s.[StartDate],'1/1/1900')
      OR COALESCE(t.[FinishDate],'1/1/1900') <> COALESCE(s.[FinishDate],'1/1/1900')
      OR COALESCE(t.[URL],'') <> COALESCE(s.[URL],'')
      OR COALESCE(t.[CalendarDurationDays],0) <> COALESCE(s.[CalendarDurationDays],0)
      OR COALESCE(t.[IHUTFormulaDue],'1/1/1900') <> COALESCE(s.[IHUTFormulaDue],'1/1/1900')
      OR COALESCE(t.[COGSPlantTest3],'1/1/1900') <> COALESCE(s.[COGSPlantTest3],'1/1/1900')
      OR COALESCE(t.[IHUTNLIDue],'1/1/1900') <> COALESCE(s.[IHUTNLIDue],'1/1/1900')
      OR COALESCE(t.[SensoryCompletion],'1/1/1900') <> COALESCE(s.[SensoryCompletion],'1/1/1900')
      OR COALESCE(t.[IHUTProdStart],'1/1/1900') <> COALESCE(s.[IHUTProdStart],'1/1/1900')
      OR COALESCE(t.[IHUTTopLinesCompletion],'1/1/1900') <> COALESCE(s.[IHUTTopLinesCompletion],'1/1/1900')
      OR COALESCE(t.[SSProdStart],'1/1/1900') <> COALESCE(s.[SSProdStart],'1/1/1900')
      OR COALESCE(t.[RequestedStartShip],'1/1/1900') <> COALESCE(s.[RequestedStartShip],'1/1/1900')
      OR COALESCE(t.[SSNLIDue],'1/1/1900') <> COALESCE(s.[SSNLIDue],'1/1/1900')
      OR COALESCE(t.[FinalNLIDue],'1/1/1900') <> COALESCE(s.[FinalNLIDue],'1/1/1900')
      OR COALESCE(t.[RMISDue],'1/1/1900') <> COALESCE(s.[RMISDue],'1/1/1900')
      OR COALESCE(t.[SSFormulaDue],'1/1/1900') <> COALESCE(s.[SSFormulaDue],'1/1/1900')
      OR COALESCE(t.[FinalFormulaDue],'1/1/1900') <> COALESCE(s.[FinalFormulaDue],'1/1/1900')
      OR COALESCE(t.[TemplateDurationDays],0) <> COALESCE(s.[TemplateDurationDays],0)
      OR COALESCE(t.[ShelfLifeDays],0) <> COALESCE(s.[ShelfLifeDays],0)
      OR t.[GeographyKey] <> s.[GeographyKey]
      OR t.[BusinessUnitKey] <> s.[BusinessUnitKey]
      OR t.[FoodCategoryKey] <> s.[FoodCategoryKey]
      OR t.[ProjectTypeKey] <> s.[ProjectTypeKey]
      OR t.[ProjectManagerKey] <> s.[ProjectManagerKey]
      OR t.[PlantLocationKey] <> s.[PlantLocationKey]
      OR t.[StageGateKey] <> s.[StageGateKey]
      OR COALESCE(t.[Status],'') <> COALESCE(s.[Status],'')
      OR t.[TemplateTypeKey] <> s.[TemplateTypeKey]
      OR t.[MaterialCategoryKey] <> s.[MaterialCategoryKey]
      OR t.[GlobalBrandKey] <> s.[GlobalBrandKey]
      OR COALESCE(t.[COGSPercentProbability],0) <> COALESCE(s.[COGSPercentProbability],0)
      OR COALESCE(t.[COGS1stYearInStd],0) <> COALESCE(s.[COGS1stYearInStd],0)
      OR t.[BuyerKey] <> s.[BuyerKey]
      OR t.[ParentProjectKey] <> s.[ParentProjectKey]
      OR COALESCE(t.[PortfolioBucket],'') <> COALESCE(s.[PortfolioBucket],'')
      OR COALESCE(t.[NewIngredientsRequired],0) <> COALESCE(s.[NewIngredientsRequired],0)
      OR COALESCE(t.[NewPlantorSupplier],0) <> COALESCE(s.[NewPlantorSupplier],0)
      OR COALESCE(t.[isLeadProject],0) <> COALESCE(s.[isLeadProject],0)
      OR COALESCE(t.[isBackupProject],0) <> COALESCE(s.[isBackupProject],0)
      OR COALESCE(t.[Equivalent],0) <> COALESCE(s.[Equivalent],0)
      OR COALESCE(t.[FoodDescription],'') <> COALESCE(s.[FoodDescription],'')
      OR COALESCE(t.[PackagingFormat],'') <> COALESCE(s.[PackagingFormat],'')
      OR COALESCE(t.[Comment],'') <> COALESCE(s.[Comment],'')
      OR COALESCE(t.[MarketingLead],'') <> COALESCE(s.[MarketingLead],'')
      OR COALESCE(t.[ProductDeveloper],'') <> COALESCE(s.[ProductDeveloper],'')
      OR COALESCE(t.[FoodTechnologist],'') <> COALESCE(s.[FoodTechnologist],'')
      OR COALESCE(t.[PackagingEngineer],'') <> COALESCE(s.[PackagingEngineer],'')
      OR COALESCE(t.[Risk],'') <> COALESCE(s.[Risk],'')
      OR COALESCE(t.[ProductDeveloper2],'') <> COALESCE(s.[ProductDeveloper2],'')
      OR COALESCE(t.[PilotPlantTest],'1/1/1900') <> COALESCE(s.[PilotPlantTest],'1/1/1900')
      OR COALESCE(t.[COGSStartup2],'1/1/1900') <> COALESCE(s.[COGSStartup2],'1/1/1900')
      OR COALESCE(t.[COGSStartup3],'1/1/1900') <> COALESCE(s.[COGSStartup3],'1/1/1900')
      OR COALESCE(t.[COGSPlantTest2],'1/1/1900') <> COALESCE(s.[COGSPlantTest2],'1/1/1900')
      OR COALESCE(t.[DateBFIReceived],'1/1/1900') <> COALESCE(s.[DateBFIReceived],'1/1/1900')
      OR COALESCE(t.[PDR2Comments],'') <> COALESCE(s.[PDR2Comments],'')
      OR COALESCE(t.[LAMComments],'') <> COALESCE(s.[LAMComments],'')
      OR COALESCE(t.[ValidationMethod],'') <> COALESCE(s.[ValidationMethod],'')
      OR COALESCE(t.[IsStageGateFlex],0) <> COALESCE(s.[IsStageGateFlex],0)
      OR COALESCE(t.[MarketType],'') <> COALESCE(s.[MarketType],'')
      OR COALESCE(t.[LAMConsumerTesting],'') <> COALESCE(s.[LAMConsumerTesting],'')
      OR COALESCE(t.[StrategicFit],'') <> COALESCE(s.[StrategicFit],'')
      OR COALESCE(t.[Flavor],'') <> COALESCE(s.[Flavor],'')
	  OR COALESCE(t.[LabelConversion],'') <> COALESCE(s.[LabelConversion],'')
	  OR COALESCE(t.[MarketingPlatform],'') <> COALESCE(s.[MarketingPlatform],'')
    )
    THEN
    UPDATE 
    SET t.RowIsCurrent = 0,
    t.RowEndDate = s.RowStartDate
    --Output the changed rows which will feed into the INSERT statement
    OUTPUT 
		$Action Out_Action 
		,s.[ProjectUID]
		,s.[Name]
		,s.[Description]
		,s.[StartDate]
		,s.[FinishDate]
		,s.[URL]
		,s.[CreatedDate]
		,s.[ModifiedDate]
		,s.[CalendarDurationDays]
		,s.[IHUTFormulaDue]
		,s.[COGSPlantTest3]
		,s.[IHUTNLIDue]
		,s.[SensoryCompletion]
		,s.[IHUTProdStart]
		,s.[IHUTTopLinesCompletion]
		,s.[SSProdStart]
		,s.[RequestedStartShip]
		,s.[SSNLIDue]
		,s.[FinalNLIDue]
		,s.[RMISDue]
		,s.[SSFormulaDue]
		,s.[FinalFormulaDue]
		,s.[TemplateDurationDays]
		,s.[ShelfLifeDays]
		,s.[GeographyKey]
		,s.[BusinessUnitKey]
		,s.[FoodCategoryKey]
		,s.[ProjectTypeKey]
		,s.[ProjectManagerKey]
		,s.[PlantLocationKey]
		,s.[StageGateKey]
		,s.[Status]
		,s.[TemplateTypeKey]
		,s.[MaterialCategoryKey]
		,s.[GlobalBrandKey]
		,s.[COGSPercentProbability]
		,s.[COGS1stYearInStd]
		,s.[BuyerKey]
		,s.[ParentProjectKey]
		,s.[PortfolioBucket]
		,s.[NewIngredientsRequired]
		,s.[NewPlantorSupplier]
		,s.[isLeadProject]
		,s.[isBackupProject]
		,s.[Equivalent]
		,s.[FoodDescription]
		,s.[PackagingFormat]
		,s.[Comment]
		,s.[MarketingLead]
		,s.[ProductDeveloper]
		,s.[FoodTechnologist]
		,s.[PackagingEngineer]
		,s.[Risk]
		,s.[ProductDeveloper2]
		,s.[PilotPlantTest]
		,s.[COGSStartup2]
		,s.[COGSStartup3]
		,s.[COGSPlantTest2]
		,s.[DateBFIReceived]
		,s.[PDR2Comments]
		,s.[LAMComments]
		,s.[ValidationMethod]
		,s.[IsStageGateFlex]
		,s.[MarketType]
		,s.[LAMConsumerTesting]
		,s.[StrategicFit]
		,s.[Flavor]
		,s.[LabelConversion]
		,s.[MarketingPlatform]	
		,s.[RowStartDate]
		,NULL AS [RowEndDate]
		,1 AS [RowIsCurrent]
		,s.[HashValue]
		,'' as RowChangeReason
		,GETDATE() AS [LoadDate]
		,GETDATE() AS [LastUpdateDate]
		,s.[UpdateAuditKey] AS [InsertAuditKey]
		,s.[UpdateAuditKey]
		,s.[RowVersion]
	
    ) AS MERGE_OUTPUT
WHERE 
MERGE_OUTPUT.Out_Action = 'UPDATE'
;




GO
/****** Object:  StoredProcedure [Stage].[MergeDimRBSUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimRBSUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimRBS AS t
USING Stage.DimRBSUpdate AS s
	ON s.RBSKey = t.RBSKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.RBSKey
FROM dbo.DimRBS as m
INNER JOIN dbo.DimRBS as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimResourceUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************************************************************
		NAME:      MergeDimResourceUpdates
		PURPOSE:   Stored Proc to update dbo.DimResource
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        2/19/2018   USCMXJ11         INC0695709 - Updated.
		
		1.0 - Commenting out the condition to join based on ResourceUID 
******************************************************************************/





CREATE PROCEDURE [Stage].[MergeDimResourceUpdates] AS


MERGE INTO dbo.DimResource AS t
USING Stage.DimResourceUpdate AS s
	ON s.ResourceKey = t.ResourceKey
	--and s.RBSkey=t.RBSkey
	and s.ResourceUID =t.ResourceUID
WHEN MATCHED THEN UPDATE SET
	t.[EmailAddress] = s.[EmailAddress]
	,t.[Name] = s.[Name]
	,t.[ADAccount] = s.[ADAccount]
	,t.[IsActive] = s.[IsActive]
	,t.[IsGeneric] = s.[IsGeneric]
	,t.[IsTimeTracker] = s.[IsTimeTracker]
	,t.[RBSKey] = s.[RBSKey]
	,t.[PrimaryResourceTypeKey] = s.[PrimaryResourceTypeKey]

	,t.[HashValue] = s.[HashValue]
	,t.[UpdateAuditKey] = s.[UpdateAuditKey]
	,t.[LastUpdateDate] = GETDATE()
;









GO
/****** Object:  StoredProcedure [Stage].[MergeDimStageGateUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimStageGateUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimStageGate AS t
USING Stage.DimStageGateUpdate AS s
	ON s.StageGateKey = t.StageGateKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.StageGateKey
FROM dbo.DimStageGate as m
INNER JOIN dbo.DimStageGate as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimTemplateTypeUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimTemplateTypeUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimTemplateType AS t
USING Stage.DimTemplateTypeUpdate AS s
	ON s.TemplateTypeKey = t.TemplateTypeKey
WHEN MATCHED THEN UPDATE SET
	[MemberUID] = s.[MemberUID]
	,[Name] = s.[Name]
	,[FullName] = s.[FullName]
	,[ParentMemberUID] = s.[ParentMemberUID]

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Now Update the Parent Key References
UPDATE m
SET ParentKey = p.TemplateTypeKey
FROM dbo.DimTemplateType as m
INNER JOIN dbo.DimTemplateType as p
	ON p.MemberUID = m.ParentMemberUID



GO
/****** Object:  StoredProcedure [Stage].[MergeDimTimesheetLineUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Stage].[MergeDimTimesheetLineUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimTimesheetLine AS t
USING Stage.DimTimesheetLineUpdate AS s
	ON s.TimesheetLineKey = t.TimesheetLineKey
WHEN MATCHED THEN UPDATE SET
	TimesheetLineUID = s.TimesheetLineUID
	,TimesheetStatus = s.TimesheetStatus
	,TimesheetLineClass = s.TimesheetLineClass
	,TimesheetLineClassType = s.TimesheetLineClassType
	,TaskName = s.TaskName
	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Delete lines that no longer exist in MARS
DELETE d
FROM dbo.DimTimesheetLine as d
LEFT OUTER JOIN Stage.MARSMSPTimesheetline as tsl
	ON tsl.TimesheetLineUID = d.TimesheetLineUID
WHERE tsl.TimesheetLineUID IS NULL



GO
/****** Object:  StoredProcedure [Stage].[MergeDimTimesheetPeriodUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeDimTimesheetPeriodUpdates] AS

--Type 1 Changes
MERGE INTO dbo.DimTimesheetPeriod AS t
USING Stage.DimTimesheetPeriodUpdate AS s
	ON s.TimesheetPeriodKey = t.TimesheetPeriodKey
WHEN MATCHED THEN UPDATE SET
	TimesheetPeriodUID = s.TimesheetPeriodUID
	,PeriodName = s.PeriodName

	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None





GO
/****** Object:  StoredProcedure [Stage].[MergeFactAssignmentUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [Stage].[MergeFactAssignmentUpdates] AS

--Type 1 Changes
MERGE INTO dbo.FactAssignment AS t
USING Stage.FactAssignmentUpdate AS s
	ON s.FactAssignmentKey = t.FactAssignmentKey
WHEN MATCHED THEN UPDATE SET
	[ResourceKey] = s.[ResourceKey]
	,[ProjectKey] = s.[ProjectKey]
	,YearMonthKey = s.YearMonthKey
	,[PlannedWork] = s.[PlannedWork]
	,[Work] = s.[Work]
	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Delete assignments that no longer exist in MARS
--DELETE f
--FROM dbo.FactAssignment as f
--LEFT OUTER JOIN Stage.MARSMSPEpmAssignment as ea
--	ON ea.AssignmentUID = f.AssignmentUID
--WHERE ea.AssignmentUID IS NULL



GO
/****** Object:  StoredProcedure [Stage].[MergeFactProjectUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Stage].[MergeFactProjectUpdates] AS

--Type 1 Changes

----Added code to delete duplicate rec count in  Stage.FactProjectUpdate
--with cte as(SELECT ROW_NUMBER() OVER (PARTITION BY FactProjectKey ORDER BY FactProjectKey) AS DuplicateRecCount,
--                *
--         FROM   Stage.FactProjectUpdate AS t )
--delete from  cte where DuplicateRecCount>1 


MERGE INTO dbo.FactProject AS t
USING Stage.FactProjectUpdate AS s
	ON s.FactProjectKey = t.FactProjectKey
WHEN MATCHED THEN UPDATE SET
	[ProjectKey] = s.[ProjectKey]
	,[RequestedStartShipDateKey] = s.[RequestedStartShipDateKey]
	,  [Stg1ApprovalDateKey] = s.[Stg1ApprovalDateKey]
	,  [Stg2ApprovalTargetDateKey] = s.[Stg2ApprovalTargetDateKey]
	,  [StartupDateKey] = s.[StartupDateKey]
	,  [StartShipDateKey] = s.[StartShipDateKey]
	,  [SavingsStartDateKey] = s.[SavingsStartDateKey]
	,  [PDR1DueDateKey] = s.[PDR1DueDateKey]
	,  [PDR1AnticipatedDateKey] = s.[PDR1AnticipatedDateKey]
	,  [PDR2ReceivedDateKey] = s.[PDR2ReceivedDateKey]
	,  [PDR2DueDateKey] = s.[PDR2DueDateKey]
	,  [ProjectCancelledDateKey] = s.[ProjectCancelledDateKey]
	,  [PlantTestDateKey] = s.[PlantTestDateKey]
	,  [LAMDueDateKey] = s.[LAMDueDateKey]
	,  [LAMDateKey] = s.[LAMDateKey]
	,  [LAMReceivedDateKey] = s.[LAMReceivedDateKey]
	,[NSV] = s.[NSV]
	,[GSIPercent] = s.[GSIPercent]
	,[CannibalizationPercent] = s.[CannibalizationPercent]
	,[Compression] = s.[Compression]
	,[EstimatedPercentCompression] = s.[EstimatedPercentCompression]
	,[PlannedWork] = s.[PlannedWork]
	,[Work] = s.[Work]
	,[RemainingWork] = s.[RemainingWork]
	,[EstimatedPotentialSavings] = s.[EstimatedPotentialSavings]
	,[WeightedSavings] = s.[WeightedSavings]
	,[TotalVolumeWeight] = s.[TotalVolumeWeight]
	,[LaunchBuildVolume] = s.[LaunchBuildVolume]
	,[NSVAtPDR2] = s.[NSVAtPDR2]
	,[NSVAUD] = s.[NSVAUD]
	,[ProbabilityOfTechnicalSuccess] = s.[ProbabilityOfTechnicalSuccess]
	,[LatestIncrGMPerWeight] = s.[LatestIncrGMPerWeight]
	,[LatestIncrGMPerUnit] = s.[LatestIncrGMPerUnit]
	,[LatestGMPercentNSV] = s.[LatestGMPercentNSV]
	,[LatestIncrGMPercentNSV] = s.[LatestIncrGMPercentNSV]
	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None


--Soft Delete Projects that no longer exist in MARS
UPDATE f
SET IsDeleted = 1
FROM dbo.FactProject as f
LEFT OUTER JOIN Stage.MARSMSPEpmProject as p
	ON p.ProjectUID = f.ProjectUID
WHERE p.ProjectUID IS NULL











GO
/****** Object:  StoredProcedure [Stage].[MergeFactTimesheetLineUpdates]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Stage].[MergeFactTimesheetLineUpdates] AS

--Type 1 Changes
MERGE INTO dbo.FactTimesheetLine AS t
USING Stage.FactTimesheetLineUpdate AS s
	ON s.FactTimesheetLineKey = t.FactTimesheetLineKey
WHEN MATCHED THEN UPDATE SET
	[TimesheetLineKey] = s.[TimesheetLineKey]
	,[TimesheetPeriodKey] = s.[TimesheetPeriodKey]
	,[ResourceKey] = s.[ResourceKey]
	,[ProjectKey] = s.[ProjectKey]
	,[ActualWork] = s.[ActualWork]
	,[HashValue] = s.[HashValue]
	,[UpdateAuditKey] = s.[UpdateAuditKey]
	,[LastUpdateDate] = GETDATE()
;

--Type 2 Changes
--None

--Delete lines that no longer exist in MARS
DELETE f
FROM dbo.FactTimesheetLine as f
LEFT OUTER JOIN Stage.MARSMSPTimesheetline as tsl
	ON tsl.TimesheetLineUID = f.TimesheetLineUID
WHERE tsl.TimesheetLineUID IS NULL


GO
/****** Object:  UserDefinedFunction [dbo].[fnDaysInMonthExcludingWeekends]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnDaysInMonthExcludingWeekends]
               (@Year  INT,
                @Month INT)
RETURNS INT
AS
  BEGIN
    DECLARE  @FirstDay SMALLDATETIME,
             @LastDay  SMALLDATETIME,
             @Days     INT
    DECLARE  @RunningDay SMALLDATETIME
    SET @FirstDay = convert(SMALLDATETIME,convert(VARCHAR,@Year) + '/'
                  + convert(VARCHAR,@Month) + '/01')
    SET @LastDay = dateadd(DAY,-1,dateadd(MONTH,1,@FirstDay))
    SET @Days = 0
    SET @RunningDay = @FirstDay
    WHILE (@RunningDay <= @LastDay)
      BEGIN
        IF datepart(dw,@RunningDay) not in (1, 7) -- Exclude SUN, SAT
          SET @Days = @Days + 1
        SET @RunningDay = @RunningDay + 1
      END
    RETURN (@Days)
  END


GO
/****** Object:  UserDefinedFunction [dbo].[fnDimDate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[fnDimDate](
	 @beginDate					date = '2006-01-01'
	,@endDate					date = '2011-12-31'
	,@FiscalYearOffsetInMonths	int = -6
	,@YearFirstInStringFormat	int = 1
	,@WeekStartDate				int = 1 --Day of week number, Sun=1, Mon=2, Tue=3, Wed=4, Thu=5, Fri=6, Sat=7
)
/*

/* 
	Usage:
	SELECT * FROM dbo.fnDimDate(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT)
*/

*/ 
RETURNS @ret TABLE (
	-- Date is the granularity
	 [DateKey]				int NOT NULL PRIMARY KEY	-- 20100101
	,[Date]					date						-- 01/01/2010
	,[DateShortName]		varchar(55)					-- 01/01/2010
	,[DateLongName]			varchar(55)					-- Friday, January 1, 2010
	,[JulianDate]			int							-- 
	,[JulianDateModified]	int							-- 
	-- Calendar
	-- Year
	,[YearKey]				int							-- 2010
	,[YearName]				varchar(55)					-- 2010
	,[YearStartDate]		date						-- 01/01/2010
	,[YearEndDate]			date						-- 12/31/2010
	,[YearSeqNo]			int							-- XXX  Sequential Year number as offset from Year starting 01/01/1753
	-- Quarter
	,[YearQuarterKey]		int							-- 20101
	,[YearQuarterName]		varchar(55)					-- 2010 Q1
	,[QuarterOfYearKey]		int							-- 41
	,[QuarterOfYearName]	varchar(55)					-- Q1
	,[YearQuarterStartDate]	date						-- 01/01/2010
	,[YearQuarterEndDate]	date						-- 03/31/2010
	,[YearQuarterSeqNo]		int							-- XXX  Sequential Quarter number as offset from Year starting 01/01/1753
	-- Month
	,[YearMonthKey]			int							-- 201001
	,[YearMonthShortName]	varchar(55)					-- Jan 2010
	,[YearMonthLongName]	varchar(55)					-- January 2010
	,[MonthOfYearKey]		int							-- 1201
	,[MonthOfYearShortName]	varchar(55)					-- Jan
	,[MonthOfYearLongName]	varchar(55)					-- January
	,[YearMonthStartDate]	date						-- 01/01/2010
	,[YearMonthEndDate]		date						-- 01/31/2010
	,[YearMonthSeqNo]		int							-- XXX  Sequential Month number as offset from Year starting 01/01/1753
	-- Week
	,[YearWeekKey]			int							-- 20105201
	,[YearWeekShortName]	varchar(55)					-- W1 2010
	,[YearWeekLongName]		varchar(55)					-- Week 1, 2010
	,[YearWeekStartDate]	date						-- 01/01/2010
	,[YearWeekEndDate]		date						-- 01/01/2010
	,[YearWeekSeqNo]		int							-- XXX  Sequential Week number as offset from Year starting 01/01/1753
	,[WeekOfYearKey]		int
	,[WeekOfYearShortName]	varchar(55)
	,[WeekOfYearLongName]	varchar(55)
	-- Day
	,[YearDOYKey]			int							-- 2010001
	,[YearDOYShortName]		varchar(55)					-- D1 2010
	,[YearDOYLongName]		varchar(55)					-- Day 1, 2010
	,[DayOfYearKey]			int							-- 365001
	,[DayOfYearName]		varchar(55)					-- Day 1
	,[DayOfMonthKey]		int							-- 3101
	,[DayOfMonthName]		varchar(55)					-- Day 1
	,[DayOfWeekKey]			int							-- 76
	,[DayOfWeekName]		varchar(55)					-- Friday
	-- Fiscal
	-- Year
	--,[FiscalYearKey]				int					-- 2010
	--,[FiscalYearName]				varchar(55)			-- 2010
	--,[FiscalYearStartDate]			date				-- 01/01/2010
	--,[FiscalYearEndDate]			date				-- 12/31/2010
	--,[FiscalYearSeqNo]				int					-- XXX  Sequential Year number as offset from Year starting 01/01/1753
	---- Quarter
	--,[FiscalYearQuarterKey]			int					-- 20101
	--,[FiscalYearQuarterName]		varchar(55)			-- 2010 Q1
	--,[FiscalQuarterOfYearKey]		int					-- 41
	--,[FiscalQuarterOfYearName]		varchar(55)			-- Q1
	--,[FiscalYearQuarterStartDate]	date				-- 01/01/2010
	--,[FiscalYearQuarterEndDate]		date				-- 03/31/2010
	--,[FiscalYearQuarterSeqNo]		int					-- XXX  Sequential Quarter number as offset from Year starting 01/01/1753
	---- Month
	--,[FiscalYearMonthKey]			int					-- 201001
	--,[FiscalYearMonthShortName]		varchar(55)			-- Jan 2010
	--,[FiscalYearMonthLongName]		varchar(55)			-- January 2010
	--,[FiscalMonthOfYearKey]			int					-- 121
	--,[FiscalMonthOfYearShortName]	varchar(55)			-- Jan
	--,[FiscalMonthOfYearLongName]	varchar(55)			-- January
	--,[FiscalYearMonthStartDate]		date				-- 01/01/2010
	--,[FiscalYearMonthEndDate]		date				-- 01/31/2010
	--,[FiscalYearMonthSeqNo]			int					-- XXX  Sequential Month number as offset from Year starting 01/01/1753
	---- Week
	--,[FiscalYearWeekKey]			int					-- 20105201
	--,[FiscalYearWeekShortName]		varchar(55)			-- W1 2010
	--,[FiscalYearWeekLongName]		varchar(55)			-- Week 1, 2010
	--,[FiscalYearWeekSeqNo]			int					-- XXX  Sequential Week number as offset from Year starting 01/01/1753
	---- Day
	--,[FiscalYearDOYKey]				int					-- 2010001
	--,[FiscalYearDOYShortName]		varchar(55)			-- D1 2010
	--,[FiscalYearDOYLongName]		varchar(55)			-- Day 1, 2010
	--,[FiscalDayOfYearKey]			int					-- 365001
	--,[FiscalDayOfYearName]			varchar(55)			-- Day 1
	--,[FiscalDayOfMonthKey]			int					-- 3101
	--,[FiscalDayOfMonthName]			varchar(55)			-- Day 1
	--,[FiscalDayOfWeekKey]			int					-- 76
	--,[FiscalDayOfWeekName]			varchar(55)			-- Friday
	---- ISO
	---- Year
	--,[ISOYearKey]				int						-- 2010
	--,[ISOYearName]				varchar(55)				-- 2010
	--,[ISOYearStartDate]			date					-- 01/01/2010
	--,[ISOYearEndDate]			date					-- 12/31/2010
	--,[ISOYearSeqNo]				int						-- XXX  Sequential Year number as offset from Year starting 01/01/1753
	-- Quarter
	--,[ISOYearQuarterKey]		int						-- 20101
	--,[ISOYearQuarterName]		varchar(7)				-- 2010 Q1
	--,[ISOQuarterOfYearKey]		int						-- 41
	--,[ISOQuarterOfYearName]		varchar(2)				-- Q1
	--,[ISOYearQuarterStartDate]	date					-- 01/01/2010
	--,[ISOYearQuarterEndDate]	date					-- 03/31/2010
	--,[ISOYearQuarterSeqNo]		int						-- XXX  Sequential Quarter number as offset from Year starting 01/01/1753
	-- Month
	--,[ISOYearMonthKey]			int						-- 201001
	--,[ISOYearMonthShortName]	varchar(15)				-- Jan 2010
	--,[ISOYearMonthLongName]		varchar(55)				-- January 2010
	--,[ISOMonthOfYearKey]		int						-- 121
	--,[ISOMonthOfYearShortName]	varchar(55)				-- Jan
	--,[ISOMonthOfYearLongName]	varchar(55)				-- January
	--,[ISOYearMonthStartDate]	date					-- 01/01/2010
	--,[ISOYearMonthEndDate]		date					-- 01/31/2010
	--,[ISOYearMonthSeqNo]		int						-- XXX  Sequential Month number as offset from Year starting 01/01/1753
	-- Week
	--,[ISOYearWeekKey]			int						-- 20105201
	--,[ISOYearWeekName]			varchar(55)				-- Week 1, 2010
	--,[ISOYearWeekSeqNo]			int						-- XXX  Sequential Week number as offset from Year starting 01/01/1753
	-- Day
	--,[ISOYearDOYKey]			int						-- 2010001
	--,[ISOYearDOYShortName]		varchar(55)				-- D1 2010
	--,[ISOYearDOYLongName]		varchar(55)				-- Day 1, 2010
	--,[ISODayOfYearKey]			int						-- 365001
	--,[ISODayOfYearName]			varchar(55)				-- Day 1
	--,[ISODayOfMonthKey]			int						-- 3101
	--,[ISODayOfMonthName]		varchar(55)				-- Day 1
	--,[ISODayOfWeekKey]			int						-- 76
	--,[ISODayOfWeekName]			varchar(55)				-- Friday
	-- 4-4-5 (Manufacturing)
	,[ManufacturingYearKey]					int						-- 2010
	,[ManufacturingYearName]				varchar(55)				-- 2010
	,[ManufacturingYearStartDate]			date					-- 01/01/2010
	,[ManufacturingYearEndDate]				date					-- 12/31/2010
	,[ManufacturingYearSeqNo]				int						-- XXX  Sequential Year number as offset from Year starting 01/01/1753
	,[ManufacturingYearQuarterKey]			int						-- 20101
	,[ManufacturingYearQuarterName]			varchar(7)				-- 2010 Q1
	,[ManufacturingQuarterOfYearKey]		int						-- 41
	,[ManufacturingQuarterOfYearName]		varchar(2)				-- Q1
	,[ManufacturingYearQuarterStartDate]	date					-- 01/01/2010
	,[ManufacturingYearQuarterEndDate]		date					-- 03/31/2010
	,[ManufacturingYearQuarterSeqNo]		int						-- XXX  Sequential Quarter number as offset from Year starting 01/01/1753
	,[ManufacturingYearMonthKey]			int					-- 201001
	,[ManufacturingYearMonthName]			varchar(55)			-- Jan 2010
	,[ManufacturingMonthOfYearKey]			int					-- 121
	,[ManufacturingMonthOfYearShortName]	varchar(55)			-- Jan
	,[ManufacturingMonthOfYearLongName]		varchar(55)			-- January
	,[ManufacturingYearMonthStartDate]		date				-- 01/01/2010
	,[ManufacturingYearMonthEndDate]		date				-- 01/31/2010
	,[ManufacturingYearMonthSeqNo]			int					-- XXX  Sequential Month number as offset from Year starting 01/01/1753
	-- Week
	,[ManufacturingYearWeekKey]				int					-- 20105201
	,[ManufacturingYearWeekShortName]		varchar(55)			-- W1 2010
	,[ManufacturingYearWeekLongName]		varchar(55)			-- Week 1, 2010
	,[ManufacturingYearWeekSeqNo]			int					-- XXX  Sequential Week number as offset from Year starting 01/01/1753
	,[ManufacturingYearDayOfYearKey]		int
	,[ManufacturingYearDayOfYearName]		varchar(55)
	-- Other
	,[IsWeekend]							int
	,[IsWeekday]                            int
	,[IsHoliday]							int
	,[HolidayName]							varchar(255)
	
	
)
AS 
BEGIN

DECLARE 
	 @EarliestPossibleDate		date = '1753-01-01'
	,@ModifiedJulianDateStart	date = '1858-11-17'
/*
DECLARE @minDate AS date
		,@maxDate AS date
		
SELECT @minDate = MIN(ReceiptDateTime), @maxDate = MAX(ReceiptDateTime)
FROM dbo.TransactionHeader WITH (NOLOCK)

SELECT @beginDate = DATEADD(year, DATEDIFF(YEAR, 0, @minDate), 0)
SELECT @endDate = DATEADD(day, -1, DATEADD(year, DATEDIFF(YEAR, 0, @maxDate) + 1, 0))
*/
;WITH cte(TheDate, FiscalDate, YearStartDate)
AS (
	SELECT @beginDate AS TheDate, DATEADD(MONTH, -@FiscalYearOffsetInMonths, @beginDate) AS FiscalDate,
		DATEADD(YEAR, DATEDIFF(YEAR, 0, @beginDate), 0)
	UNION ALL
	SELECT DATEADD(day, 1, TheDate), DATEADD(day, 1, FiscalDate),
		DATEADD(YEAR, DATEDIFF(YEAR, 0, DATEADD(day, 1, TheDate)), 0)
	FROM cte
	WHERE TheDate < @endDate
)
--SELECT * FROM cte OPTION (MAXRECURSION 1000)
,
cte2(TheDate, FiscalDate, YearStartDate, ISOYearStart, ISOYearEnd, ManufacturingYearStart)
AS (
	SELECT TheDate, FiscalDate, YearStartDate,
		CASE 
			WHEN DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(YY, 1, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0))))/7)*7, -53690) <= TheDate THEN DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(YY, 1, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0))))/7)*7, -53690)
			WHEN DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0)))/7)*7, -53690) <= TheDate THEN DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0)))/7)*7, -53690)
			ELSE DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(YY, -1, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0))))/7)*7, -53690)
		END AS ISOYearStart,
		CASE 
			WHEN DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(YY, 1, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0))))/7)*7, -53690) <= TheDate THEN DATEADD(DAY, -1, DATEADD(YEAR, 1, DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(YY, 1, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0))))/7)*7, -53690)))
			WHEN DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0)))/7)*7, -53690) <= TheDate THEN DATEADD(DAY, -1, DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(YY, 1, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0))))/7)*7, -53690))
			ELSE DATEADD(DAY, -1, DATEADD(DD, (DATEDIFF(DD, -53690, DATEADD(DD, 3, DATEADD(YY, DATEDIFF(YY, 0, TheDate), 0)))/7)*7, -53690))
		END AS ISOYearEnd,
		-- There will be cases where the ManufacturingYearStart won't be correct - typically at the beginning of the year
		-- Don't worry about that here, we'll handle it later in the query
		CASE 
			WHEN DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)) = @WeekStartDate THEN DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)  
			WHEN DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)) < @WeekStartDate THEN DateAdd(d, @WeekStartDate - DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)), DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)) 
			ELSE DateAdd(d, @WeekStartDate - DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)) + 7, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, TheDate) , YearStartDate)) 
		END
	FROM cte
)
,
cte3(TheDate, FiscalDate, YearStartDate, ISOYearStart, ISOYearEnd, ManufacturingYearStart, 
	 AdjustedManufacturingYearStart, YearNumber)
AS (
SELECT  TheDate, FiscalDate, YearStartDate, ISOYearStart, ISOYearEnd, ManufacturingYearStart, 
		CASE WHEN DATEDIFF(d, ManufacturingYearStart, TheDate) < 0 THEN 
			 CASE 
				WHEN DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)) = @WeekStartDate THEN DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)  
				WHEN DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)) < @WeekStartDate THEN DateAdd(d, @WeekStartDate - DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)), DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)) 
				ELSE DateAdd(d, @WeekStartDate - DatePart(dw, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)) + 7, DATEADD(YEAR, DATEDIFF(YEAR, YearStartDate, DATEADD(day, -7, TheDate)) , YearStartDate)) 
			 END 
		ELSE ManufacturingYearStart END,
		YEAR(TheDate)
FROM cte2
)
,holidays(holidayName, holidayYear, holidayDate)
AS (
SELECT	'New Years' AS Holiday, YearNumber AS [Year], TheDate AS [Date]
  FROM	cte3
 WHERE	DAY(TheDate) = 1 AND MONTH(TheDate) = 1
 UNION
SELECT	'New Years (Observed)' AS Holiday, YearNumber AS [Year],
		CASE
			WHEN DATEPART(DW, TheDate) = 1 THEN DATEADD(DAY, 1, TheDate)
			WHEN DATEPART(DW, TheDate) = 7 THEN DATEADD(DAY, -1, TheDate)
			ELSE TheDate
		END AS [Date]
  FROM	cte3
 WHERE	DAY(TheDate) = 1 AND MONTH(TheDate) = 1
		AND DATEPART(DW, TheDate) IN (1,7)
 UNION
-- Martin Luther King Day: Third Monday in January:
-- (MAX) WHERE DW = 2 and DAY < 22
SELECT	'Martin Luther King Day', YearNumber, MAX(TheDate)
  FROM	cte3
 WHERE	MONTH(TheDate) = 1
		AND DATEPART(DW, TheDate) = 2
		AND DAY(TheDate) < 22
 GROUP	BY YearNumber
 UNION
-- Memorial Day: Last Monday in May: (MAX) WHERE dw = 2
SELECT	'Memorial Day', YearNumber, MAX(TheDate)
  FROM	cte3
 WHERE	MONTH(TheDate) = 5
		AND DATEPART(DW, TheDate) = 2
 GROUP	BY YearNumber
UNION
SELECT	'Fourth Of July', YearNumber, TheDate
  FROM	cte3
 WHERE	MONTH(TheDate) = 7
		AND DAY(TheDate) = 4
UNION
SELECT	'Fourth Of July (Observed)', YearNumber,
		CASE
			WHEN DATEPART(DW, TheDate)= 1 THEN DATEADD(DAY, 1, TheDate)
			WHEN DATEPART(DW, TheDate)= 7 THEN DATEADD(DAY, -1, TheDate)
			ELSE TheDate
		END
  FROM	cte3
 WHERE	MONTH(TheDate) = 7
		AND DAY(TheDate) = 4
		AND DATEPART(DW, TheDate) IN (1,7)
UNION
-- Labor Day: First Monday in September: MIN WHERE dw = 2
SELECT	'Labor Day', YearNumber, MIN(TheDate)
  FROM	cte3
 WHERE	MONTH(TheDate) = 9
		AND DATEPART(DW, TheDate) = 2
 GROUP	BY YearNumber
UNION
-- Thanksgiving: Fourth Thursday in November: MAX WHERE dw = 5 and day_int < 29
SELECT	'Thanksgiving', YearNumber, MAX(TheDate)
  FROM	cte3
 WHERE	MONTH(TheDate) = 11
		AND DATEPART(DW, TheDate) = 5
		AND DAY(TheDate) < 29
 GROUP	BY YearNumber
UNION
SELECT	'Christmas', YearNumber, TheDate
  FROM	cte3
 WHERE	MONTH(TheDate) = 12
		AND DAY(TheDate) = 25
UNION
SELECT	'Christmas (Observed)', YearNumber,
		CASE
			WHEN DATEPART(DW, TheDate)= 1 THEN DATEADD(DAY, 1, TheDate)
			WHEN DATEPART(DW, TheDate)= 7 THEN DATEADD(DAY, -1, TheDate)
			ELSE TheDate
		END
  FROM	cte3
 WHERE	MONTH(TheDate) = 12
		AND DAY(TheDate) = 25
		AND DATEPART(DW, TheDate) IN (1,7)
UNION
SELECT	'Easter', YearNumber,
		CONVERT(DATE, 
			(SELECT RIGHT('0' + CONVERT(varchar(2),(3 + (((((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) - ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4) - 7 * ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4) / 7))) + 40) / 44 )),2) + 
			'/' + RIGHT('0' + CONVERT(varchar(2),(((((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11)) ) - ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) - 7 * ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) / 7))) + 28 - 31 * ( (3 + (((((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11)) ) - ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) - 7 * ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) / 7))) + 40) / 44 ) / 4 ) )),2) + 
			'/' + CONVERT(varchar(4), YearNumber)) )
  FROM	cte3
 GROUP	BY YearNumber
UNION
SELECT	'Good Friday', YearNumber,
		DATEADD(day, -2, 
			CONVERT(DATE, 
				(SELECT RIGHT('0' + CONVERT(varchar(2),(3 + (((((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) - ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4) - 7 * ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4) / 7))) + 40) / 44 )),2) + 
				'/' + RIGHT('0' + CONVERT(varchar(2),(((((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11)) ) - ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) - 7 * ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) / 7))) + 28 - 31 * ( (3 + (((((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11)) ) - ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) - 7 * ((YearNumber + YearNumber / 4 + (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (1 - (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) / 28) * (29 / (((((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) - 30 * ( (((YearNumber / 100)) - ((YearNumber / 100)) / 4 - ( ((YearNumber / 100)) - ((((YearNumber / 100)) - 17) / 25)) / 3 + 19 * (YearNumber - 19 * (YearNumber / 19)) + 15) / 30 )) + 1)) * ((21 - (YearNumber - 19 * (YearNumber / 19))) / 11))) + 2 - ((YearNumber / 100)) + ((YearNumber / 100)) / 4 ) / 7))) + 40) / 44 ) / 4 ) )),2) + 
				'/' + CONVERT(varchar(4), YearNumber)) )	
		 )
  FROM	cte3
 GROUP	BY YearNumber
)

,ret(
	 [DateId]
	,[Date]
	,[DateShortName]
	,[DateLongName]
	,[JulianDate]
	,[JulianDateModified]
	,[YearKey]
	,[YearName]
	,[YearStartDate]
	,[YearEndDate]
	,[YearSeqNo]
	,[YearQuarterKey]
	,[YearQuarterName]
	,[QuarterOfYearKey]
	,[QuarterOfYearName]
	,[YearQuarterStartDate]
	,[YearQuarterEndDate]
	,[YearQuarterSeqNo]
	,[YearMonthKey]
	,[YearMonthShortName]
	,[YearMonthLongName]
	,[MonthOfYearKey]
	,[MonthOfYearShortName]
	,[MonthOfYearLongName]
	,[YearMonthStartDate]
	,[YearMonthEndDate]
	,[YearMonthSeqNo]
	,[YearWeekKey]
	,[YearWeekShortName]
	,[YearWeekLongName]
	,[YearWeekStartDate]
	,[YearWeekEndDate]
	,[YearWeekSeqNo]
	,[WeekOfYearKey]		
	,[WeekOfYearShortName]	
	,[WeekOfYearLongName]	
	,[YearDOYKey]
	,[YearDOYShortName]
	,[YearDOYLongName]
	,[DayOfYearKey]
	,[DayOfYearName]
	,[DayOfMonthKey]
	,[DayOfMonthName]
	,[DayOfWeekKey]
	,[DayOfWeekName]
	--,[FiscalYearKey]
	--,[FiscalYearName]
	--,[FiscalYearStartDate]
	--,[FiscalYearEndDate]
	--,[FiscalYearSeqNo]
	--,[FiscalYearQuarterKey]
	--,[FiscalYearQuarterName]
	--,[FiscalQuarterOfYearKey]
	--,[FiscalQuarterOfYearName]
	--,[FiscalYearQuarterStartDate]
	--,[FiscalYearQuarterEndDate]
	--,[FiscalYearQuarterSeqNo]
	--,[FiscalYearMonthKey]
	--,[FiscalYearMonthShortName]
	--,[FiscalYearMonthLongName]
	--,[FiscalMonthOfYearKey]
	--,[FiscalMonthOfYearShortName]
	--,[FiscalMonthOfYearLongName]
	--,[FiscalYearMonthStartDate]
	--,[FiscalYearMonthEndDate]
	--,[FiscalYearMonthSeqNo]
	--,[FiscalYearWeekKey]
	--,[FiscalYearWeekShortName]
	--,[FiscalYearWeekLongName]
	--,[FiscalYearWeekSeqNo]
	--,[FiscalYearDOYKey]
	--,[FiscalYearDOYShortName]
	--,[FiscalYearDOYLongName]
	--,[FiscalDayOfYearKey]
	--,[FiscalDayOfYearName]
	--,[FiscalDayOfMonthKey]
	--,[FiscalDayOfMonthName]
	--,[FiscalDayOfWeekKey]
	--,[FiscalDayOfWeekName]
	--,[ISOYearKey]
	--,[ISOYearName]
	--,[ISOYearStartDate]
	--,[ISOYearEndDate]
	--,[ISOYearSeqNo]
	--,[ISOYearQuarterKey]
	--,[ISOYearQuarterName]
	--,[ISOQuarterOfYearKey]
	--,[ISOQuarterOfYearName]
	--,[ISOYearQuarterStartDate]
	--,[ISOYearQuarterEndDate]
	--,[ISOYearQuarterSeqNo]
	--,[ISOYearMonthKey]
	--,[ISOYearMonthShortName]
	--,[ISOYearMonthLongName]
	--,[ISOMonthOfYearKey]
	--,[ISOMonthOfYearShortName]
	--,[ISOMonthOfYearLongName]
	--,[ISOYearMonthStartDate]
	--,[ISOYearMonthEndDate]
	--,[ISOYearMonthSeqNo]
	--,[ISOYearWeekKey]
	--,[ISOYearWeekName]
	--,[ISOYearWeekSeqNo]
	--,[ISOYearDOYKey]
	--,[ISOYearDOYShortName]
	--,[ISOYearDOYLongName]
	--,[ISODayOfYearKey]
	--,[ISODayOfYearName]
	--,[ISODayOfMonthKey]
	--,[ISODayOfMonthName]
	--,[ISODayOfWeekKey]
	--,[ISODayOfWeekName]
	,[ManufacturingYearKey]
	,[ManufacturingYearName]
	,[ManufacturingYearStartDate]
	,[ManufacturingYearEndDate]
	,[ManufacturingYearSeqNo]
	,[ManufacturingYearQuarterKey]
	,[ManufacturingYearQuarterName]
	,[ManufacturingQuarterOfYearKey]
	,[ManufacturingQuarterOfYearName]
	,[ManufacturingYearQuarterStartDate]
	,[ManufacturingYearQuarterEndDate]
	,[ManufacturingYearQuarterSeqNo]
	,[ManufacturingYearMonthKey]
	,[ManufacturingYearMonthName]
	,[ManufacturingMonthOfYearKey]
	,[ManufacturingMonthOfYearShortName]
	,[ManufacturingMonthOfYearLongName]
	,[ManufacturingYearMonthStartDate]
	,[ManufacturingYearMonthEndDate]
	,[ManufacturingYearMonthSeqNo]
	,[ManufacturingYearWeekKey]
	,[ManufacturingYearWeekShortName]
	,[ManufacturingYearWeekLongName]
	,[ManufacturingYearWeekSeqNo]
	,[ManufacturingYearDayOfYearKey]
	,[ManufacturingYearDayOfYearName]
	,[IsWeekend]
	,[IsWeekday]
	,[IsHoliday]
	,[HolidayName]
)
AS (
SELECT 
	 DateId					= CONVERT(int, CONVERT(varchar(8), TheDate, 112)) 
	,[Date]					= TheDate
	,[DateShortName]		= CONVERT(varchar(10), TheDate, 120)
	,[DateLongName]			= DATENAME(DW, TheDate) + ', ' + DATENAME(MONTH, TheDate) + ' ' + DATENAME(DAY, TheDate) + ', ' + DATENAME(YEAR, TheDate)
	,[JulianDate]			= DATEDIFF(DAY, @EarliestPossibleDate, TheDate)+2361331
	,[JulianDateModified]	= DATEDIFF(DAY, @ModifiedJulianDateStart, TheDate)
	,[YearKey]				= DATEPART(YEAR, TheDate)
	,[YearName]				= DATENAME(YEAR, TheDate)
	,[YearStartDate]		= CONVERT(date, DATEADD(YEAR, DATEDIFF(YEAR, 0, TheDate), 0))
	,[YearEndDate]			= CONVERT(date, DATEADD(DAY, -1, DATEADD(YEAR, DATEDIFF(YEAR, 0, TheDate) + 1, 0)))
	,[YearSeqNo]			= DATEDIFF(YEAR, @EarliestPossibleDate, TheDate)
	,[YearQuarterKey]		= CONVERT(int, DATENAME(YEAR, TheDate) + DATENAME(QUARTER, TheDate))
	,[YearQuarterName]		= 'Q' + DATENAME(QUARTER, TheDate) + ' ' + DATENAME(YEAR, TheDate)
	,[QuarterOfYearKey]		= CONVERT(int, '4' + DATENAME(QUARTER, TheDate))
	,[QuarterOfYearName]	= 'Q' + DATENAME(QUARTER, TheDate)
	,[YearQuarterStartDate]	= CONVERT(date, DATEADD(QUARTER, DATEDIFF(QUARTER, 0, TheDate), 0))
	,[YearQuarterEndDate]	= CONVERT(date, DATEADD(DAY, -1, DATEADD(QUARTER, DATEDIFF(QUARTER, 0, TheDate) + 1, 0)))
	,[YearQuarterSeqNo]		= DATEDIFF(QUARTER, @EarliestPossibleDate, TheDate)
	,[YearMonthKey]			= CONVERT(int, CONVERT(varchar(6), TheDate, 112)) 
	,[YearMonthShortName]	= RIGHT(CONVERT(varchar(11), TheDate, 106), 8)
	,[YearMonthLongName]	= DATENAME(MONTH, TheDate) + ' ' + DATENAME(YEAR, TheDate)
	,[MonthOfYearKey]		= CONVERT(int, '12' + RIGHT('00' + CONVERT(varchar(2), MONTH(TheDate)), 2))
	,[MonthOfYearShortName]	= LEFT(DATENAME(MONTH, TheDate), 3)
	,[MonthOfYearLongName]	= DATENAME(MONTH, TheDate)
	,[YearMonthStartDate]	= CONVERT(date, DATEADD(MONTH, DATEDIFF(MONTH, 0, TheDate), 0))
	,[YearMonthEndDate]		= CONVERT(date, DATEADD(DAY, -1, DATEADD(MONTH, DATEDIFF(MONTH, 0, TheDate) + 1, 0)))
	,[YearMonthSeqNo]		= DATEDIFF(MONTH, @EarliestPossibleDate, TheDate)
	,[YearWeekKey]			= CONVERT(int, DATENAME(YEAR, TheDate) + '52' + RIGHT('00' + CONVERT(varchar(2), DATEPART(WEEK, TheDate)), 2))
	,[YearWeekShortName]	= 'W' + DATENAME(WEEK, TheDate) + ' ' + DATENAME(YEAR, TheDate)
	,[YearWeekLongName]		= 'Week ' + DATENAME(WEEK, TheDate) + ', ' + DATENAME(YEAR, TheDate)
	,[YearWeekStartDate]	= CONVERT(date, DATEADD(DAY, -1, DATEADD(WEEK, DATEDIFF(WEEK, 0, TheDate), 0)))
	,[YearWeekEndDate]		= CONVERT(date, DATEADD(DAY, -2, DATEADD(WEEK, DATEDIFF(WEEK, 0, TheDate) + 1, 0)))
	,[YearWeekSeqNo]		= DATEDIFF(WEEK, @EarliestPossibleDate, TheDate)
	,[WeekOfYearKey]		= CONVERT(int, '5252' + RIGHT('00' + CONVERT(varchar(2), DATEPART(WEEK, TheDate)), 2))
	,[WeekOfYearShortName]	= 'W' + DATENAME(WEEK, TheDate)
	,[WeekOfYearLongName]	= 'Week ' + DATENAME(WEEK, TheDate)
	,[YearDOYKey]			= CONVERT(int, DATENAME(YEAR, TheDate) + RIGHT('000' + CONVERT(varchar(3), DATEPART(DAYOFYEAR, TheDate)), 3))
	,[YearDOYShortName]		= 'D' + DATENAME(DAYOFYEAR, TheDate) + ' ' + DATENAME(YEAR, TheDate)
	,[YearDOYLongName]		= 'Day ' + DATENAME(DAYOFYEAR, TheDate) + ', ' + DATENAME(YEAR, TheDate)
	,[DayOfYearKey]			= CONVERT(int, '365' + RIGHT('000' + CONVERT(varchar(3), DATEPART(DAYOFYEAR, TheDate)), 3))
	,[DayOfYearName]		= 'Day ' + DATENAME(DAYOFYEAR, TheDate)
	,[DayOfMonthKey]		= CONVERT(int, '31' + RIGHT('00' + DATENAME(DAY, TheDate), 2))
	,[DayOfMonthName]		= 'Day ' + DATENAME(DAY, TheDate)
	,[DayOfWeekKey]			= CONVERT(int, '7' + CONVERT(varchar(1), DATEPART(DW, TheDate)))
	,[DayOfWeekName]		= DATENAME(DW, TheDate)
	--,[FiscalYearKey]				= DATEPART(YEAR, fiscalDate)
	--,[FiscalYearName]				= 'FY' + DATENAME(YEAR, fiscalDate)
	--,[FiscalYearStartDate]			= DATEADD(MONTH, @FiscalYearOffsetInMonths, CONVERT(date, DATENAME(YEAR, fiscalDate)))
	--,[FiscalYearEndDate]			= DATEADD(DAY, -1, DATEADD(YEAR, 1, DATEADD(MONTH, @FiscalYearOffsetInMonths, CONVERT(date, DATENAME(YEAR, fiscalDate)))))
	--,[FiscalYearSeqNo]				= DATEDIFF(YEAR, @EarliestPossibleDate, TheDate)
	--,[FiscalYearQuarterKey]			= CONVERT(int, DATENAME(YEAR, fiscalDate) + DATENAME(QUARTER, fiscalDate))
	--,[FiscalYearQuarterName]		= 'Q' + DATENAME(QUARTER, fiscalDate) + ' FY'  + DATENAME(YEAR, fiscalDate)
	--,[FiscalQuarterOfYearKey]		= CONVERT(int, '4' + DATENAME(QUARTER, fiscalDate))
	--,[FiscalQuarterOfYearName]		= 'FYQ' + DATENAME(QUARTER, fiscalDate)
	--,[FiscalYearQuarterStartDate]	= CONVERT(date, DATEADD(QUARTER, DATEDIFF(QUARTER, 0, TheDate), 0))
	--,[FiscalYearQuarterEndDate]		= CONVERT(date, DATEADD(DAY, -1, DATEADD(QUARTER, DATEDIFF(QUARTER, 0, TheDate) + 1, 0)))
	--,[FiscalYearQuarterSeqNo]		= DATEDIFF(QUARTER, @EarliestPossibleDate, TheDate)
	--,[FiscalYearMonthKey]			= CONVERT(int, DATENAME(YEAR, fiscalDate) + RIGHT('00' + CONVERT(varchar(2), DATEPART(MONTH, fiscalDate)), 2))
	--,[FiscalYearMonthShortName]		= LEFT(DATENAME(MONTH, TheDate), 3) + ' FY'  + DATENAME(YEAR, fiscalDate)
	--,[FiscalYearMonthLongName]		= DATENAME(MONTH, TheDate) + ' FY'  + DATENAME(YEAR, fiscalDate)
	--,[FiscalMonthOfYearKey]			= CONVERT(int, '12' + RIGHT('00' + CONVERT(varchar(2), DATEPART(MONTH, fiscalDate)), 2))
	--,[FiscalMonthOfYearShortName]	= LEFT(DATENAME(MONTH, TheDate), 3)
	--,[FiscalMonthOfYearLongName]	= DATENAME(MONTH, TheDate)
	--,[FiscalYearMonthStartDate]		= CONVERT(date, DATEADD(MONTH, DATEDIFF(MONTH, 0, TheDate), 0))
	--,[FiscalYearMonthEndDate]		= CONVERT(date, DATEADD(DAY, -1, DATEADD(MONTH, DATEDIFF(MONTH, 0, TheDate) + 1, 0)))
	--,[FiscalYearMonthSeqNo]			= DATEDIFF(MONTH, @EarliestPossibleDate, TheDate)
	--,[FiscalYearWeekKey]			= CONVERT(int, DATENAME(YEAR, fiscalDate) + '52' + RIGHT('00' + CONVERT(varchar(2), DATEPART(WEEK, fiscalDate)), 2))
	--,[FiscalYearWeekShortName]		= 'W' + DATENAME(WEEK, fiscalDate) + ' FY' + DATENAME(YEAR, fiscalDate)
	--,[FiscalYearWeekLongName]		= 'Week ' + DATENAME(WEEK, fiscalDate) + ', FY' + DATENAME(YEAR, fiscalDate)
	--,[FiscalYearWeekSeqNo]			= DATEDIFF(WEEK, @EarliestPossibleDate, TheDate)
	--,[FiscalYearDOYKey]				= CONVERT(int, DATENAME(YEAR, fiscalDate) + '365' + RIGHT('000' + CONVERT(varchar(3), DATEPART(DAYOFYEAR, fiscalDate)), 3))
	--,[FiscalYearDOYShortName]		= 'D' + DATENAME(DAYOFYEAR, fiscalDate) + ' FY' + DATENAME(YEAR, fiscalDate)
	--,[FiscalYearDOYLongName]		= 'Day ' + DATENAME(DAYOFYEAR, fiscalDate) + ', FY' + DATENAME(YEAR, fiscalDate)
	--,[FiscalDayOfYearKey]			= CONVERT(int, '365' + RIGHT('000' + CONVERT(varchar(3), DATEPART(DAYOFYEAR, fiscalDate)), 3))
	--,[FiscalDayOfYearName]			= 'Day ' + DATENAME(DAYOFYEAR, fiscalDate)
	--,[FiscalDayOfMonthKey]			= CONVERT(int, '31' + RIGHT('00' + DATENAME(DAY, TheDate), 2))
	--,[FiscalDayOfMonthName]			= 'Day ' + DATENAME(DAY, TheDate)
	--,[FiscalDayOfWeekKey]			= CONVERT(int, '7' + CONVERT(varchar(1), DATEPART(DW, TheDate)))
	--,[FiscalDayOfWeekName]			= DATENAME(DW, TheDate)
	--,[ISOYearKey]					= YEAR(ISOYearStart)
	--,[ISOYearName]					= DATENAME(YEAR, ISOYearStart)
	--,[ISOYearStartDate]				= CONVERT(date, ISOYearStart)
	--,[ISOYearEndDate]				= CONVERT(date, ISOYearEnd)
	--,[ISOYearSeqNo]					= DATEDIFF(YEAR, @EarliestPossibleDate, ISOYearStart)
	--,[ISOYearQuarterKey]
	--,[ISOYearQuarterName]
	--,[ISOQuarterOfYearKey]
	--,[ISOQuarterOfYearName]
	--,[ISOYearQuarterStartDate]
	--,[ISOYearQuarterEndDate]
	--,[ISOYearQuarterSeqNo]
	--,[ISOYearMonthKey]
	--,[ISOYearMonthShortName]
	--,[ISOYearMonthLongName]
	--,[ISOMonthOfYearKey]
	--,[ISOMonthOfYearShortName]
	--,[ISOMonthOfYearLongName]
	--,[ISOYearMonthStartDate]
	--,[ISOYearMonthEndDate]
	--,[ISOYearMonthSeqNo]
	--,[ISOYearWeekKey] = CONVERT(int, DATENAME(YEAR, ISOYearStart) + '53' + RIGHT('00' + CONVERT(varchar(2),(DATEDIFF(DD, ISOYearStart, TheDate)/7)+1),2))
	--,[ISOYearWeekName] = CONVERT(varchar(4),YEAR(DATEADD(DD, 7, ISOYearStart))) + '-W' + RIGHT('00' + CONVERT(varchar(2),(DATEDIFF(DD, ISOYearStart, TheDate)/7)+1),2)
	--,[ISOYearWeekSeqNo] = 0
	--,[ISOYearDOYKey]
	--,[ISOYearDOYShortName]
	--,[ISOYearDOYLongName]
	--,[ISODayOfYearKey]
	--,[ISODayOfYearName]
	--,[ISODayOfMonthKey]
	--,[ISODayOfMonthName]
	--,[ISODayOfWeekKey] = CONVERT(int, CONVERT(varchar(4), YEAR(DATEADD(DD, 7, ISOYearStart))) + '364' + RIGHT('00' + CONVERT(varchar(2),(DATEDIFF(DD, ISOYearStart, TheDate)/7)+1),2) + CONVERT(varchar(1),(DATEDIFF(DD, ISOYearStart, TheDate)%7)+1))
	--,[ISODayOfWeekName] = CONVERT(varchar(4), YEAR(DATEADD(DD, 7, ISOYearStart))) + '-W' + RIGHT('00' + CONVERT(varchar(2),(DATEDIFF(DD, ISOYearStart, TheDate)/7)+1),2) + '-' + CONVERT(varchar(1),(DATEDIFF(DD, ISOYearStart, TheDate)%7)+1)
	,[ManufacturingYearKey] = CASE WHEN DATEDIFF(d, ManufacturingYearStart, TheDate) < 0 THEN YEAR(ManufacturingYearStart) - 1 ELSE YEAR(ManufacturingYearStart) END
	,[ManufacturingYearName] = CASE WHEN DATEDIFF(d, ManufacturingYearStart, TheDate) < 0 THEN CONVERT(varchar(4), YEAR(ManufacturingYearStart) - 1) ELSE CONVERT(varchar(4), YEAR(ManufacturingYearStart)) END
	,[ManufacturingYearStartDate] = CONVERT(date, AdjustedManufacturingYearStart)
	,[ManufacturingYearEndDate] = CONVERT(date, DATEADD(DAY, 363, AdjustedManufacturingYearStart))
	,[ManufacturingYearSeqNo] = DATEDIFF(YEAR, @EarliestPossibleDate, AdjustedManufacturingYearStart)
	,[ManufacturingYearQuarterKey] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN 0000 -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN CONVERT(int, CONVERT(varchar(4), YEAR(AdjustedManufacturingYearStart)-1) + '44') -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '44') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '43') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '42') -- Repeat the pattern 
										ELSE CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '41') -- First period of 28 days 
									END
	,[ManufacturingYearQuarterName] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN 'Error13' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN convert(varchar(4), YEAR(AdjustedManufacturingYearStart)-1) + ' Q4' -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' Q4' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' Q3' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' Q2' -- Repeat the pattern 
										ELSE DATENAME(year, AdjustedManufacturingYearStart) + ' Q1' -- First period of 28 days 
									END
	,[ManufacturingQuarterOfYearKey] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN 0000 -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 44 -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 44
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 43
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 42 -- Repeat the pattern 
										ELSE 41 -- First period of 28 days 
									END
	,[ManufacturingQuarterOfYearName] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN 'Error13' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 'Q4' -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 'Q4' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 'Q3' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 'Q2' -- Repeat the pattern 
										ELSE 'Q1' -- First period of 28 days 
									END
	,[ManufacturingYearQuarterStartDate] = CONVERT(date, 
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN DATEADD(DAY, -91, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN DATEADD(DAY, 273, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN DATEADD(DAY, 182, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN DATEADD(DAY, 91, AdjustedManufacturingYearStart)
										ELSE AdjustedManufacturingYearStart
									END)
	,[ManufacturingYearQuarterEndDate] = CONVERT(date, 
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN DATEADD(DAY, -91, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN DATEADD(DAY, 363, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN DATEADD(DAY, 272, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN DATEADD(DAY, 181, AdjustedManufacturingYearStart)
										ELSE DATEADD(DAY, 90, AdjustedManufacturingYearStart)
									END)
	,[ManufacturingYearQuarterSeqNo] = 
									DATEDIFF(QUARTER, @EarliestPossibleDate, AdjustedManufacturingYearStart)
									+
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN -1
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 3
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 2
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 1
										ELSE 0
									END
	,[ManufacturingYearMonthKey] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN '0000' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN CONVERT(int, convert(varchar(4), YEAR(AdjustedManufacturingYearStart)-1) + '12') -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '12') -- All remaining days in the year 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '11') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '10')
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '09') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '08') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '07') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '06') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '05') 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '04') -- Repeat the pattern 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '03') -- Third period of 35 days 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '02') -- Second period of 28 days 
										ELSE CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '01') -- First period of 28 days 
									END
	,[ManufacturingYearMonthShortName] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN '0000' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN convert(varchar(4), YEAR(AdjustedManufacturingYearStart)-1) + ' P12' -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P12' -- All remaining days in the year 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P11' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P10' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P09' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P08' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P07' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P06' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P05' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P04' -- Repeat the pattern 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P03' -- Third period of 35 days 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN DATENAME(year, AdjustedManufacturingYearStart) + ' P02' -- Second period of 28 days 
										ELSE DATENAME(year, AdjustedManufacturingYearStart) + ' P01' -- First period of 28 days 
									END
	,[ManufacturingMonthOfYearKey] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN '0000' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 1212 -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN 1212 -- All remaining days in the year 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN 1211 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 1210
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN 1209
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN 1208
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 1207
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN 1206
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN 1205
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 1204
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN 1203 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN 1202
										ELSE 1201
									END
	,[ManufacturingMonthOfYearShortName] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN '0000' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 'P12' -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN 'P12' -- All remaining days in the year 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN 'P11' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 'P10' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN 'P09' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN 'P08' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 'P07' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN 'P06' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN 'P05' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 'P04' -- Repeat the pattern 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN 'P03' -- Third period of 35 days 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN 'P02' -- Second period of 28 days 
										ELSE 'P01' -- First period of 28 days 
									END
	,[ManufacturingMonthOfYearLongName] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN '0000' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 'Period 12' -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN 'Period 12' -- All remaining days in the year 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN 'Period 11' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 'Period 10' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN 'Period 09' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN 'Period 08' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 'Period 07' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN 'Period 06' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN 'Period 05' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 'Period 04' -- Repeat the pattern 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN 'Period 03' -- Third period of 35 days 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN 'Period 02' -- Second period of 28 days 
										ELSE 'Period 01' -- First period of 28 days 
									END
	,[ManufacturingYearMonthStartDate] = CONVERT(date, 
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN DATEADD(DAY, -35, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN DATEADD(DAY, 329, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN DATEADD(DAY, 301, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN DATEADD(DAY, 273, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN DATEADD(DAY, 238, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN DATEADD(DAY, 210, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN DATEADD(DAY, 182, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN DATEADD(DAY, 147, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN DATEADD(DAY, 119, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN DATEADD(DAY, 91, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN DATEADD(DAY, 56, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN DATEADD(DAY, 28, AdjustedManufacturingYearStart)
										ELSE AdjustedManufacturingYearStart
									END)
	,[ManufacturingYearMonthEndDate] = CONVERT(date, 
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN DATEADD(DAY, -1, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN DATEADD(DAY, 363, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN DATEADD(DAY, 328, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN DATEADD(DAY, 300, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN DATEADD(DAY, 272, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN DATEADD(DAY, 237, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN DATEADD(DAY, 209, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN DATEADD(DAY, 181, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN DATEADD(DAY, 146, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN DATEADD(DAY, 118, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN DATEADD(DAY, 90, AdjustedManufacturingYearStart)
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN DATEADD(DAY, 55, AdjustedManufacturingYearStart)
										ELSE DATEADD(DAY, 27, AdjustedManufacturingYearStart)
									END)
	,[ManufacturingYearMonthSeqNo] = 
									DATEDIFF(MONTH, @EarliestPossibleDate, AdjustedManufacturingYearStart)
									+
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN -1
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN 11
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN 10
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 9
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN 8
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN 7
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 6
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN 5
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN 4
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 3
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN 2
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN 1
										ELSE 0
									END									 
	,[ManufacturingYearWeekKey] = CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN CONVERT(int, convert(varchar(4), YEAR(AdjustedManufacturingYearStart)-1) + '5252')
										ELSE CONVERT(int, DATENAME(year, AdjustedManufacturingYearStart) + '52' + RIGHT('00' + CONVERT(varchar(2), ((DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) / 7) + 1)), 2))
								  END
	,[ManufacturingYearWeekShortName] = 
								  CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN ''
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN convert(varchar(4), YEAR(AdjustedManufacturingYearStart)-1) + ' W52'
										ELSE DATENAME(year, AdjustedManufacturingYearStart) + ' W' + RIGHT('00' + CONVERT(varchar(2), ((DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) / 7) + 1)), 2)
								  END
	,[ManufacturingYearWeekLongName] = 
								  CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN ''
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN convert(varchar(4), YEAR(AdjustedManufacturingYearStart)-1)
										ELSE DATENAME(year, AdjustedManufacturingYearStart)
								  END
								  + ' ' + 
								  CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN '0000' -- This is an error condition. The maximum days in any year should be either 364 or 371 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 'P12' -- This is when the day is in the previous year of Periods. 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 329 THEN 'P12' -- All remaining days in the year 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 301 THEN 'P11' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 273 THEN 'P10' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 238 THEN 'P09' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 210 THEN 'P08' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 182 THEN 'P07' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 147 THEN 'P06' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 119 THEN 'P05' 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 91 THEN 'P04' -- Repeat the pattern 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 56 THEN 'P03' -- Third period of 35 days 
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) >= 28 THEN 'P02' -- Second period of 28 days 
										ELSE 'P01' -- First period of 28 days 
								  END
								  +
								  CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN ''
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN ' W52'
										ELSE ' W' + RIGHT('00' + CONVERT(varchar(2), ((DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) / 7) + 1)), 2)
								  END
	,[ManufacturingYearWeekSeqNo] = DATEDIFF(WEEK, @EarliestPossibleDate, AdjustedManufacturingYearStart)
									+
									CASE  
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) > 371 THEN NULL
										WHEN DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) < 0 THEN 52
										ELSE (DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) / 7)
									END
	,ManufacturingYearDayOfYearKey = CONVERT(int, '365365' + RIGHT('000' + CONVERT(varchar(3), DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) + 1), 3))
	,ManufacturingYearDayOfYearName = 'Day ' + CONVERT(varchar(3), DATEDIFF(d, AdjustedManufacturingYearStart, TheDate) + 1)
	,IsWeekend = CASE WHEN DATEPART(DW, TheDate) IN (1,7) THEN 1 ELSE 0 END
	,IsWeekday = CASE WHEN DATEPART(DW, TheDate) NOT IN (1,7) THEN 1 ELSE 0 END
	,IsHoliday = CASE WHEN h.holidayDate IS NOT NULL THEN 1 ELSE 0 END
	,holidayName = h.holidayName
	
FROM cte3 a
LEFT OUTER JOIN holidays h ON a.TheDate = h.holidayDate
)
INSERT INTO @ret(
	 [DateKey]
	,[Date]
	,[DateShortName]
	,[DateLongName]
	,[JulianDate]
	,[JulianDateModified]
	,[YearKey]
	,[YearName]
	,[YearStartDate]
	,[YearEndDate]
	,[YearSeqNo]
	,[YearQuarterKey]
	,[YearQuarterName]
	,[QuarterOfYearKey]
	,[QuarterOfYearName]
	,[YearQuarterStartDate]
	,[YearQuarterEndDate]
	,[YearQuarterSeqNo]
	,[YearMonthKey]
	,[YearMonthShortName]
	,[YearMonthLongName]
	,[MonthOfYearKey]
	,[MonthOfYearShortName]
	,[MonthOfYearLongName]
	,[YearMonthStartDate]
	,[YearMonthEndDate]
	,[YearMonthSeqNo]
	,[YearWeekKey]
	,[YearWeekShortName]
	,[YearWeekLongName]
	,[YearWeekStartDate]
	,[YearWeekEndDate]
	,[YearWeekSeqNo]
	,[WeekOfYearKey]		
	,[WeekOfYearShortName]	
	,[WeekOfYearLongName]	
	,[YearDOYKey]
	,[YearDOYShortName]
	,[YearDOYLongName]
	,[DayOfYearKey]
	,[DayOfYearName]
	,[DayOfMonthKey]
	,[DayOfMonthName]
	,[DayOfWeekKey]
	,[DayOfWeekName]
	--,[FiscalYearKey]
	--,[FiscalYearName]
	--,[FiscalYearStartDate]
	--,[FiscalYearEndDate]
	--,[FiscalYearSeqNo]
	--,[FiscalYearQuarterKey]
	--,[FiscalYearQuarterName]
	--,[FiscalQuarterOfYearKey]
	--,[FiscalQuarterOfYearName]
	--,[FiscalYearQuarterStartDate]
	--,[FiscalYearQuarterEndDate]
	--,[FiscalYearQuarterSeqNo]
	--,[FiscalYearMonthKey]
	--,[FiscalYearMonthShortName]
	--,[FiscalYearMonthLongName]
	--,[FiscalMonthOfYearKey]
	--,[FiscalMonthOfYearShortName]
	--,[FiscalMonthOfYearLongName]
	--,[FiscalYearMonthStartDate]
	--,[FiscalYearMonthEndDate]
	--,[FiscalYearMonthSeqNo]
	--,[FiscalYearWeekKey]
	--,[FiscalYearWeekShortName]
	--,[FiscalYearWeekLongName]
	--,[FiscalYearWeekSeqNo]
	--,[FiscalYearDOYKey]
	--,[FiscalYearDOYShortName]
	--,[FiscalYearDOYLongName]
	--,[FiscalDayOfYearKey]
	--,[FiscalDayOfYearName]
	--,[FiscalDayOfMonthKey]
	--,[FiscalDayOfMonthName]
	--,[FiscalDayOfWeekKey]
	--,[FiscalDayOfWeekName]
	--,[ISOYearKey]
	--,[ISOYearName]
	--,[ISOYearStartDate]
	--,[ISOYearEndDate]
	--,[ISOYearSeqNo]
	--,[ISOYearQuarterKey]
	--,[ISOYearQuarterName]
	--,[ISOQuarterOfYearKey]
	--,[ISOQuarterOfYearName]
	--,[ISOYearQuarterStartDate]
	--,[ISOYearQuarterEndDate]
	--,[ISOYearQuarterSeqNo]
	--,[ISOYearMonthKey]
	--,[ISOYearMonthShortName]
	--,[ISOYearMonthLongName]
	--,[ISOMonthOfYearKey]
	--,[ISOMonthOfYearShortName]
	--,[ISOMonthOfYearLongName]
	--,[ISOYearMonthStartDate]
	--,[ISOYearMonthEndDate]
	--,[ISOYearMonthSeqNo]
	--,[ISOYearWeekKey]
	--,[ISOYearWeekName]
	--,[ISOYearWeekSeqNo]
	--,[ISOYearDOYKey]
	--,[ISOYearDOYShortName]
	--,[ISOYearDOYLongName]
	--,[ISODayOfYearKey]
	--,[ISODayOfYearName]
	--,[ISODayOfMonthKey]
	--,[ISODayOfMonthName]
	--,[ISODayOfWeekKey]
	--,[ISODayOfWeekName]
	,[ManufacturingYearKey]
	,[ManufacturingYearName]
	,[ManufacturingYearStartDate]
	,[ManufacturingYearEndDate]
	,[ManufacturingYearSeqNo]
	,[ManufacturingYearQuarterKey]
	,[ManufacturingYearQuarterName]
	,[ManufacturingQuarterOfYearKey]
	,[ManufacturingQuarterOfYearName]
	,[ManufacturingYearQuarterStartDate]
	,[ManufacturingYearQuarterEndDate]
	,[ManufacturingYearQuarterSeqNo]
	,[ManufacturingYearMonthKey]
	,[ManufacturingYearMonthName]
	,[ManufacturingMonthOfYearKey]
	,[ManufacturingMonthOfYearShortName]
	,[ManufacturingMonthOfYearLongName]
	,[ManufacturingYearMonthStartDate]
	,[ManufacturingYearMonthEndDate]
	,[ManufacturingYearMonthSeqNo]
	,[ManufacturingYearWeekKey]
	,[ManufacturingYearWeekShortName]
	,[ManufacturingYearWeekLongName]
	,[ManufacturingYearWeekSeqNo]
	,[ManufacturingYearDayOfYearKey]
	,[ManufacturingYearDayOfYearName]
	,[IsWeekend]
	,[IsWeekday]
	,[IsHoliday]
	,[HolidayName]
)

SELECT 
	 [DateId]
	,[Date]
	,[DateShortName]
	,[DateLongName]
	,[JulianDate]
	,[JulianDateModified]
	,[YearKey]
	,[YearName]
	,[YearStartDate]
	,[YearEndDate]
	,[YearSeqNo]
	,[YearQuarterKey]
	,[YearQuarterName]
	,[QuarterOfYearKey]
	,[QuarterOfYearName]
	,[YearQuarterStartDate]
	,[YearQuarterEndDate]
	,[YearQuarterSeqNo]
	,[YearMonthKey]
	,[YearMonthShortName]
	,[YearMonthLongName]
	,[MonthOfYearKey]
	,[MonthOfYearShortName]
	,[MonthOfYearLongName]
	,[YearMonthStartDate]
	,[YearMonthEndDate]
	,[YearMonthSeqNo]
	,[YearWeekKey]
	,[YearWeekShortName]
	,[YearWeekLongName]
	,[YearWeekStartDate]
	,[YearWeekEndDate]
	,[YearWeekSeqNo]
	,[WeekOfYearKey]		
	,[WeekOfYearShortName]	
	,[WeekOfYearLongName]	
	,[YearDOYKey]
	,[YearDOYShortName]
	,[YearDOYLongName]
	,[DayOfYearKey]
	,[DayOfYearName]
	,[DayOfMonthKey]
	,[DayOfMonthName]
	,[DayOfWeekKey]
	,[DayOfWeekName]
	--,[FiscalYearKey]
	--,[FiscalYearName]
	--,[FiscalYearStartDate]
	--,[FiscalYearEndDate]
	--,[FiscalYearSeqNo]
	--,[FiscalYearQuarterKey]
	--,[FiscalYearQuarterName]
	--,[FiscalQuarterOfYearKey]
	--,[FiscalQuarterOfYearName]
	--,[FiscalYearQuarterStartDate]
	--,[FiscalYearQuarterEndDate]
	--,[FiscalYearQuarterSeqNo]
	--,[FiscalYearMonthKey]
	--,[FiscalYearMonthShortName]
	--,[FiscalYearMonthLongName]
	--,[FiscalMonthOfYearKey]
	--,[FiscalMonthOfYearShortName]
	--,[FiscalMonthOfYearLongName]
	--,[FiscalYearMonthStartDate]
	--,[FiscalYearMonthEndDate]
	--,[FiscalYearMonthSeqNo]
	--,[FiscalYearWeekKey]
	--,[FiscalYearWeekShortName]
	--,[FiscalYearWeekLongName]
	--,[FiscalYearWeekSeqNo]
	--,[FiscalYearDOYKey]
	--,[FiscalYearDOYShortName]
	--,[FiscalYearDOYLongName]
	--,[FiscalDayOfYearKey]
	--,[FiscalDayOfYearName]
	--,[FiscalDayOfMonthKey]
	--,[FiscalDayOfMonthName]
	--,[FiscalDayOfWeekKey]
	--,[FiscalDayOfWeekName]
	--,[ISOYearKey]
	--,[ISOYearName]
	--,[ISOYearStartDate]
	--,[ISOYearEndDate]
	--,[ISOYearSeqNo]
	--,[ISOYearQuarterKey]
	--,[ISOYearQuarterName]
	--,[ISOQuarterOfYearKey]
	--,[ISOQuarterOfYearName]
	--,[ISOYearQuarterStartDate]
	--,[ISOYearQuarterEndDate]
	--,[ISOYearQuarterSeqNo]
	--,[ISOYearMonthKey]
	--,[ISOYearMonthShortName]
	--,[ISOYearMonthLongName]
	--,[ISOMonthOfYearKey]
	--,[ISOMonthOfYearShortName]
	--,[ISOMonthOfYearLongName]
	--,[ISOYearMonthStartDate]
	--,[ISOYearMonthEndDate]
	--,[ISOYearMonthSeqNo]
	--,[ISOYearWeekKey]
	--,[ISOYearWeekName]
	--,[ISOYearWeekSeqNo]
	--,[ISOYearDOYKey]
	--,[ISOYearDOYShortName]
	--,[ISOYearDOYLongName]
	--,[ISODayOfYearKey]
	--,[ISODayOfYearName]
	--,[ISODayOfMonthKey]
	--,[ISODayOfMonthName]
	--,[ISODayOfWeekKey]
	--,[ISODayOfWeekName]
	,[ManufacturingYearKey]
	,[ManufacturingYearName]
	,[ManufacturingYearStartDate]
	,[ManufacturingYearEndDate]
	,[ManufacturingYearSeqNo]
	,[ManufacturingYearQuarterKey]
	,[ManufacturingYearQuarterName]
	,[ManufacturingQuarterOfYearKey]
	,[ManufacturingQuarterOfYearName]
	,[ManufacturingYearQuarterStartDate]
	,[ManufacturingYearQuarterEndDate]
	,[ManufacturingYearQuarterSeqNo]
	,[ManufacturingYearMonthKey]
	,[ManufacturingYearMonthName]
	,[ManufacturingMonthOfYearKey]
	,[ManufacturingMonthOfYearShortName]
	,[ManufacturingMonthOfYearLongName]
	,[ManufacturingYearMonthStartDate]
	,[ManufacturingYearMonthEndDate]
	,[ManufacturingYearMonthSeqNo]
	,[ManufacturingYearWeekKey]
	,[ManufacturingYearWeekShortName]
	,[ManufacturingYearWeekLongName]
	,[ManufacturingYearWeekSeqNo]
	,[ManufacturingYearDayOfYearKey]
	,[ManufacturingYearDayOfYearName]
	,[IsWeekend]
	,[IsWeekday]
	,[IsHoliday]
	,[HolidayName]

FROM ret
OPTION (MAXRECURSION 32767)


RETURN

END




GO
/****** Object:  UserDefinedFunction [dbo].[fnMaxSystemDateKey]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnMaxSystemDateKey]()
RETURNS INT
AS
BEGIN
	DECLARE @return int
	
	SELECT @return = MAX(DateKey)
	FROM dbo.DimDate

	RETURN @return
END


GO
/****** Object:  Table [dbo].[DimAudit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimAudit](
	[AuditKey] [int] IDENTITY(1,1) NOT NULL,
	[ParentAuditKey] [int] NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[PkgName] [nvarchar](50) NOT NULL,
	[PkgGUID] [uniqueidentifier] NULL,
	[PkgVersionGUID] [uniqueidentifier] NULL,
	[PkgVersionMajor] [smallint] NULL,
	[PkgVersionMinor] [smallint] NULL,
	[ExecStartDT] [datetime] NOT NULL,
	[ExecStopDT] [datetime] NULL,
	[ExecutionInstanceGUID] [uniqueidentifier] NULL,
	[ExtractRowCnt] [bigint] NULL,
	[InsertRowCnt] [bigint] NULL,
	[UpdateRowCnt] [bigint] NULL,
	[ErrorRowCnt] [bigint] NULL,
	[TableInitialRowCnt] [bigint] NULL,
	[TableFinalRowCnt] [bigint] NULL,
	[TableMaxSurrogateKey] [bigint] NULL,
	[SuccessfulProcessingInd] [nchar](1) NOT NULL,
	[DataStartDT] [datetime] NULL,
	[DataEndDT] [datetime] NULL,
	[HashValue] [varchar](35) NULL,
 CONSTRAINT [PK_dbo.DimAudit] PRIMARY KEY CLUSTERED 
(
	[AuditKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimBusinessUnit](
	[BusinessUnitKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimBusinessUnit] PRIMARY KEY CLUSTERED 
(
	[BusinessUnitKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimBuyer]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimBuyer](
	[BuyerKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimBuyer] PRIMARY KEY CLUSTERED 
(
	[BuyerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[Date] [date] NULL,
	[DateShortName] [varchar](55) NULL,
	[DateLongName] [varchar](55) NULL,
	[JulianDate] [int] NULL,
	[JulianDateModified] [int] NULL,
	[YearKey] [int] NULL,
	[YearName] [varchar](55) NULL,
	[YearStartDate] [date] NULL,
	[YearEndDate] [date] NULL,
	[YearSeqNo] [int] NULL,
	[YearQuarterKey] [int] NULL,
	[YearQuarterName] [varchar](55) NULL,
	[QuarterOfYearKey] [int] NULL,
	[QuarterOfYearName] [varchar](55) NULL,
	[YearQuarterStartDate] [date] NULL,
	[YearQuarterEndDate] [date] NULL,
	[YearQuarterSeqNo] [int] NULL,
	[YearMonthKey] [int] NULL,
	[YearMonthShortName] [varchar](55) NULL,
	[YearMonthLongName] [varchar](55) NULL,
	[MonthOfYearKey] [int] NULL,
	[MonthOfYearShortName] [varchar](55) NULL,
	[MonthOfYearLongName] [varchar](55) NULL,
	[YearMonthStartDate] [date] NULL,
	[YearMonthEndDate] [date] NULL,
	[YearMonthSeqNo] [int] NULL,
	[YearWeekKey] [int] NULL,
	[YearWeekShortName] [varchar](55) NULL,
	[YearWeekLongName] [varchar](55) NULL,
	[YearWeekStartDate] [date] NULL,
	[YearWeekEndDate] [date] NULL,
	[YearWeekSeqNo] [int] NULL,
	[WeekOfYearKey] [int] NULL,
	[WeekOfYearShortName] [varchar](55) NULL,
	[WeekOfYearLongName] [varchar](55) NULL,
	[YearDOYKey] [int] NULL,
	[YearDOYShortName] [varchar](55) NULL,
	[YearDOYLongName] [varchar](55) NULL,
	[DayOfYearKey] [int] NULL,
	[DayOfYearName] [varchar](55) NULL,
	[DayOfMonthKey] [int] NULL,
	[DayOfMonthName] [varchar](55) NULL,
	[DayOfWeekKey] [int] NULL,
	[DayOfWeekName] [varchar](55) NULL,
	[ManufacturingYearKey] [int] NULL,
	[ManufacturingYearName] [varchar](55) NULL,
	[ManufacturingYearStartDate] [date] NULL,
	[ManufacturingYearEndDate] [date] NULL,
	[ManufacturingYearSeqNo] [int] NULL,
	[ManufacturingYearQuarterKey] [int] NULL,
	[ManufacturingYearQuarterName] [varchar](7) NULL,
	[ManufacturingQuarterOfYearKey] [int] NULL,
	[ManufacturingQuarterOfYearName] [varchar](2) NULL,
	[ManufacturingYearQuarterStartDate] [date] NULL,
	[ManufacturingYearQuarterEndDate] [date] NULL,
	[ManufacturingYearQuarterSeqNo] [int] NULL,
	[ManufacturingYearMonthKey] [int] NULL,
	[ManufacturingYearMonthName] [varchar](55) NULL,
	[ManufacturingMonthOfYearKey] [int] NULL,
	[ManufacturingMonthOfYearShortName] [varchar](55) NULL,
	[ManufacturingMonthOfYearLongName] [varchar](55) NULL,
	[ManufacturingYearMonthStartDate] [date] NULL,
	[ManufacturingYearMonthEndDate] [date] NULL,
	[ManufacturingYearMonthSeqNo] [int] NULL,
	[ManufacturingYearWeekKey] [int] NULL,
	[ManufacturingYearWeekShortName] [varchar](55) NULL,
	[ManufacturingYearWeekLongName] [varchar](55) NULL,
	[ManufacturingYearWeekSeqNo] [int] NULL,
	[ManufacturingYearDayOfYearKey] [int] NULL,
	[ManufacturingYearDayOfYearName] [varchar](55) NULL,
	[IsWeekend] [int] NULL,
	[IsWeekday] [int] NULL,
	[IsHoliday] [int] NULL,
	[HolidayName] [varchar](255) NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimFoodCategory](
	[FoodCategoryKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimFoodCategory] PRIMARY KEY CLUSTERED 
(
	[FoodCategoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimGeography]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimGeography](
	[GeographyKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimGeography] PRIMARY KEY CLUSTERED 
(
	[GeographyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimGlobalBrand]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimGlobalBrand](
	[GlobalBrandKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimGlobalBrand] PRIMARY KEY CLUSTERED 
(
	[GlobalBrandKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimMaterialCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimMaterialCategory](
	[MaterialCategoryKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimMaterialCategory] PRIMARY KEY CLUSTERED 
(
	[MaterialCategoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimParentProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimParentProject](
	[ParentProjectKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimParentProject] PRIMARY KEY CLUSTERED 
(
	[ParentProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimPlantLocation]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimPlantLocation](
	[PlantLocationKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimPlantLocation] PRIMARY KEY CLUSTERED 
(
	[PlantLocationKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimPrimaryResourceType](
	[PrimaryResourceTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimPrimaryResourceType] PRIMARY KEY CLUSTERED 
(
	[PrimaryResourceTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimProject](
	[ProjectKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](1000) NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
	[URL] [varchar](500) NULL,
	[CreatedDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[CalendarDurationDays] [int] NULL,
	[IHUTFormulaDue] [date] NULL,
	[COGSPlantTest3] [date] NULL,
	[IHUTNLIDue] [date] NULL,
	[SensoryCompletion] [date] NULL,
	[IHUTProdStart] [date] NULL,
	[IHUTTopLinesCompletion] [date] NULL,
	[SSProdStart] [date] NULL,
	[RequestedStartShip] [date] NULL,
	[SSNLIDue] [date] NULL,
	[FinalNLIDue] [date] NULL,
	[RMISDue] [date] NULL,
	[SSFormulaDue] [date] NULL,
	[FinalFormulaDue] [date] NULL,
	[TemplateDurationDays] [int] NULL,
	[ShelfLifeDays] [int] NULL,
	[GeographyKey] [int] NOT NULL,
	[BusinessUnitKey] [int] NOT NULL,
	[FoodCategoryKey] [int] NOT NULL,
	[ProjectTypeKey] [int] NOT NULL,
	[ProjectManagerKey] [int] NOT NULL,
	[PlantLocationKey] [int] NOT NULL,
	[StageGateKey] [int] NOT NULL,
	[Status] [varchar](50) NULL,
	[TemplateTypeKey] [int] NOT NULL,
	[MaterialCategoryKey] [int] NOT NULL,
	[GlobalBrandKey] [int] NOT NULL,
	[COGSPercentProbability] [int] NULL,
	[COGS1stYearInStd] [int] NULL,
	[BuyerKey] [int] NOT NULL,
	[ParentProjectKey] [int] NOT NULL,
	[PortfolioBucket] [varchar](50) NULL,
	[NewIngredientsRequired] [bit] NULL,
	[NewPlantorSupplier] [bit] NULL,
	[isLeadProject] [bit] NULL,
	[isBackupProject] [bit] NULL,
	[Equivalent] [tinyint] NULL,
	[FoodDescription] [varchar](500) NULL,
	[PackagingFormat] [varchar](100) NULL,
	[Comment] [varchar](500) NULL,
	[MarketingLead] [varchar](100) NULL,
	[ProductDeveloper] [varchar](50) NULL,
	[FoodTechnologist] [varchar](50) NULL,
	[PackagingEngineer] [varchar](50) NULL,
	[Risk] [varchar](50) NULL,
	[ProductDeveloper2] [varchar](50) NULL,
	[PilotPlantTest] [date] NULL,
	[COGSStartup2] [date] NULL,
	[COGSStartup3] [date] NULL,
	[COGSPlantTest2] [date] NULL,
	[DateBFIReceived] [date] NULL,
	[PDR2Comments] [varchar](50) NULL,
	[LAMComments] [varchar](50) NULL,
	[ValidationMethod] [varchar](50) NULL,
	[IsStageGateFlex] [bit] NULL,
	[MarketType] [varchar](50) NULL,
	[LAMConsumerTesting] [varchar](50) NULL,
	[StrategicFit] [varchar](3) NULL,
	[Flavor] [varchar](50) NULL,
	[RowIsCurrent] [bit] NOT NULL,
	[RowStartDate] [datetime] NOT NULL,
	[RowEndDate] [datetime] NULL,
	[RowChangeReason] [varchar](200) NOT NULL,
	[RowVersion] [int] NOT NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[LabelConversion] [varchar](100) NULL,
	[MarketingPlatform] [varchar](500) NULL,
	[Granular Growth Strategy] [nvarchar](4000) NULL,
	[Final Artwork Due] [datetime] NULL,
	[Listing Process Start] [datetime] NULL,
	[Order Materials Start] [datetime] NULL,
	[Final Financials Due] [datetime] NULL,
	[Registration Process Ready] [datetime] NULL,
	[Preliminary Artwork Due] [datetime] NULL,
	[Stage 2 Financials Due] [datetime] NULL,
 CONSTRAINT [PK_dbo.DimProject] PRIMARY KEY CLUSTERED 
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimProjectManager]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimProjectManager](
	[ProjectManagerKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimProjectManager] PRIMARY KEY CLUSTERED 
(
	[ProjectManagerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimProjectType](
	[ProjectTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimProjectType] PRIMARY KEY CLUSTERED 
(
	[ProjectTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimRBS](
	[RBSKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimRBS] PRIMARY KEY CLUSTERED 
(
	[RBSKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimResource]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimResource](
	[ResourceKey] [int] IDENTITY(1,1) NOT NULL,
	[ResourceUID] [uniqueidentifier] NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[Name] [varchar](100) NULL,
	[ADAccount] [varchar](50) NOT NULL,
	[IsActive] [tinyint] NOT NULL,
	[IsGeneric] [tinyint] NOT NULL,
	[IsTimeTracker] [tinyint] NOT NULL,
	[RBSKey] [int] NOT NULL,
	[PrimaryResourceTypeKey] [int] NOT NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimResource] PRIMARY KEY CLUSTERED 
(
	[ResourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimStageGate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimStageGate](
	[StageGateKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimStageGate] PRIMARY KEY CLUSTERED 
(
	[StageGateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimTemplateType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimTemplateType](
	[TemplateTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[ParentKey] [int] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimTemplateType] PRIMARY KEY CLUSTERED 
(
	[TemplateTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimTimesheetLine](
	[TimesheetLineKey] [int] IDENTITY(1,1) NOT NULL,
	[TimesheetLineUID] [uniqueidentifier] NOT NULL,
	[TimesheetStatus] [varchar](50) NULL,
	[TimesheetLineClass] [varchar](50) NULL,
	[TimesheetLineClassType] [varchar](50) NOT NULL,
	[TaskName] [varchar](255) NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimTimesheetLine] PRIMARY KEY CLUSTERED 
(
	[TimesheetLineKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DimTimesheetPeriod]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimTimesheetPeriod](
	[TimesheetPeriodKey] [int] IDENTITY(1,1) NOT NULL,
	[TimesheetPeriodUID] [uniqueidentifier] NOT NULL,
	[PeriodName] [varchar](20) NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.DimTimesheetPeriod] PRIMARY KEY CLUSTERED 
(
	[TimesheetPeriodKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ETL_Package_LogDetails]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ETL_Package_LogDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PkgName] [nvarchar](50) NULL,
	[PkgGUID] [nvarchar](max) NULL,
	[TaskName] [nvarchar](50) NULL,
	[ExecStartDT] [datetime] NULL,
	[Error Details] [varchar](100) NULL,
	[Error Code] [nvarchar](max) NULL,
	[Error Description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXT_CRT_MetadataLookup]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXT_CRT_MetadataLookup](
	[Id] [int] NULL,
	[ContentTypeID] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXT_CRT_MetadataLookup_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXT_CRT_MetadataLookup_Previous](
	[Id] [int] NULL,
	[ContentTypeID] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ext_MARS_CRT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ext_MARS_CRT](
	[ContentTypeID] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ProjectNameId] [int] NULL,
	[StageGateValue] [nvarchar](max) NULL,
	[c_1WillThisBigIdeaDriveDesireValue] [nvarchar](max) NULL,
	[c_1aConceptValue] [nvarchar](max) NULL,
	[c_1bCategoryValue] [nvarchar](max) NULL,
	[c_1cBrandValue] [nvarchar](max) NULL,
	[c_2WillTheFoodAndPackDelightValue] [nvarchar](max) NULL,
	[c_2aGreatFoodValue] [nvarchar](max) NULL,
	[c_2bPackagingValue] [nvarchar](max) NULL,
	[c_2cFoodAndPackDesignValue] [nvarchar](max) NULL,
	[c_3HowWillWeMakeThisValue] [nvarchar](max) NULL,
	[c_3aFeasibilityValue] [nvarchar](max) NULL,
	[c_3bCapacityValue] [nvarchar](max) NULL,
	[c_3cCostsValue] [nvarchar](max) NULL,
	[c_4HowWillWeGetShoppersAndCustomersToDecideValue] [nvarchar](max) NULL,
	[c_4aChannelValue] [nvarchar](max) NULL,
	[c_4bCustomerValueValue] [nvarchar](max) NULL,
	[c_4cIntegratedCommercialPlanValue] [nvarchar](max) NULL,
	[c_5HowWillWeMakeMoneyValue] [nvarchar](max) NULL,
	[c_5aBusinessModelValue] [nvarchar](max) NULL,
	[c_5bIncrementalNetSalesValue] [nvarchar](max) NULL,
	[c_5cMarginValue] [nvarchar](max) NULL,
	[c_6CanWeDoThisWellValue] [nvarchar](max) NULL,
	[c_6aRightTimeValue] [nvarchar](max) NULL,
	[c_6bRightResourcesValue] [nvarchar](max) NULL,
	[c_6cSkillsAndToolsValue] [nvarchar](max) NULL,
	[c_1ActionPlan] [nvarchar](max) NULL,
	[c_1Comments] [nvarchar](max) NULL,
	[c_2ActionPlan] [nvarchar](max) NULL,
	[c_2Comments] [nvarchar](max) NULL,
	[c_3ActionPlan] [nvarchar](max) NULL,
	[c_3Comments] [nvarchar](max) NULL,
	[c_4ActionPlan] [nvarchar](max) NULL,
	[c_4Comments] [nvarchar](max) NULL,
	[c_5ActionPlan] [nvarchar](max) NULL,
	[c_5Comments] [nvarchar](max) NULL,
	[c_6ActionPlan] [nvarchar](max) NULL,
	[c_6Comments] [nvarchar](max) NULL,
	[OverallProjectStatusValue] [nvarchar](max) NULL,
	[Id] [int] NULL,
	[ContentType] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[OverallComments] [nvarchar](max) NULL,
	[Projecttiervalue] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ext_MARS_CRT_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ext_MARS_CRT_Previous](
	[ContentTypeID] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ProjectNameId] [int] NULL,
	[StageGateValue] [nvarchar](max) NULL,
	[c_1WillThisBigIdeaDriveDesireValue] [nvarchar](max) NULL,
	[c_1aConceptValue] [nvarchar](max) NULL,
	[c_1bCategoryValue] [nvarchar](max) NULL,
	[c_1cBrandValue] [nvarchar](max) NULL,
	[c_2WillTheFoodAndPackDelightValue] [nvarchar](max) NULL,
	[c_2aGreatFoodValue] [nvarchar](max) NULL,
	[c_2bPackagingValue] [nvarchar](max) NULL,
	[c_2cFoodAndPackDesignValue] [nvarchar](max) NULL,
	[c_3HowWillWeMakeThisValue] [nvarchar](max) NULL,
	[c_3aFeasibilityValue] [nvarchar](max) NULL,
	[c_3bCapacityValue] [nvarchar](max) NULL,
	[c_3cCostsValue] [nvarchar](max) NULL,
	[c_4HowWillWeGetShoppersAndCustomersToDecideValue] [nvarchar](max) NULL,
	[c_4aChannelValue] [nvarchar](max) NULL,
	[c_4bCustomerValueValue] [nvarchar](max) NULL,
	[c_4cIntegratedCommercialPlanValue] [nvarchar](max) NULL,
	[c_5HowWillWeMakeMoneyValue] [nvarchar](max) NULL,
	[c_5aBusinessModelValue] [nvarchar](max) NULL,
	[c_5bIncrementalNetSalesValue] [nvarchar](max) NULL,
	[c_5cMarginValue] [nvarchar](max) NULL,
	[c_6CanWeDoThisWellValue] [nvarchar](max) NULL,
	[c_6aRightTimeValue] [nvarchar](max) NULL,
	[c_6bRightResourcesValue] [nvarchar](max) NULL,
	[c_6cSkillsAndToolsValue] [nvarchar](max) NULL,
	[c_1ActionPlan] [nvarchar](max) NULL,
	[c_1Comments] [nvarchar](max) NULL,
	[c_2ActionPlan] [nvarchar](max) NULL,
	[c_2Comments] [nvarchar](max) NULL,
	[c_3ActionPlan] [nvarchar](max) NULL,
	[c_3Comments] [nvarchar](max) NULL,
	[c_4ActionPlan] [nvarchar](max) NULL,
	[c_4Comments] [nvarchar](max) NULL,
	[c_5ActionPlan] [nvarchar](max) NULL,
	[c_5Comments] [nvarchar](max) NULL,
	[c_6ActionPlan] [nvarchar](max) NULL,
	[c_6Comments] [nvarchar](max) NULL,
	[OverallProjectStatusValue] [nvarchar](max) NULL,
	[Id] [int] NULL,
	[ContentType] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[OverallComments] [nvarchar](max) NULL,
	[Projecttiervalue] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExtBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtBusinessUnit](
	[Business_Unit_Name] [varchar](50) NULL,
	[Business_Unit_Full_Name] [varchar](100) NULL,
	[Consolidated_Business_Unit] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtBusinessUnit_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtBusinessUnit_Previous](
	[Business_Unit_Name] [varchar](50) NULL,
	[Business_Unit_Full_Name] [varchar](100) NULL,
	[Consolidated_Business_Unit] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtFoodCategory](
	[Food_Category_Name] [varchar](50) NULL,
	[Food_Category_Full_Name] [varchar](100) NULL,
	[Food_Classification] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtFoodCategory_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtFoodCategory_Previous](
	[Food_Category_Name] [varchar](50) NULL,
	[Food_Category_Full_Name] [varchar](100) NULL,
	[Food_Classification] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtGSIBridge_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtGSIBridge_Previous](
	[Geography] [varchar](50) NULL,
	[Business Unit] [varchar](50) NULL,
	[Food Category] [varchar](50) NULL,
	[ProjectUID] [varchar](50) NULL,
	[ProjectName] [varchar](100) NULL,
	[Portfolio Bucket] [varchar](50) NULL,
	[Project Status] [varchar](50) NULL,
	[Proj Type] [varchar](50) NULL,
	[YEAR] [varchar](50) NULL,
	[Requested Start Ship] [varchar](50) NULL,
	[CANNIBAL] [varchar](50) NULL,
	[GSI] [varchar](50) NULL,
	[NSV] [varchar](50) NULL,
	[NSV_GSI] [varchar](50) NULL,
	[NSV_INC] [varchar](50) NULL,
	[WrapAroundNSV] [varchar](50) NULL,
	[IncWrapAroundNSV] [varchar](50) NULL,
	[GSIWrapAroundNSV] [varchar](50) NULL,
	[Over_3_Million] [varchar](50) NULL,
	[Over_15_Million] [varchar](50) NULL,
	[Parent Project] [varchar](50) NULL,
	[GSI_BU] [varchar](50) NULL,
	[GSI_GEO] [varchar](50) NULL,
	[Project_Link] [varchar](500) NULL,
	[DW_CRE_TS] [varchar](50) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [varchar](50) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](50) NULL,
	[DW_DEL_TS] [varchar](50) NULL,
	[DW_DEL_USR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExtPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtPrimaryResourceType](
	[Primary_Resource_Type_Name] [varchar](50) NULL,
	[Primary_Resource_Type_Full_Name] [varchar](100) NULL,
	[Resource_Class] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtPrimaryResourceType_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtPrimaryResourceType_Previous](
	[Primary_Resource_Type_Name] [varchar](50) NULL,
	[Primary_Resource_Type_Full_Name] [varchar](100) NULL,
	[Resource_Class] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtProjectType](
	[Project_Type_Name] [varchar](100) NULL,
	[Project_Type_Full_Name] [varchar](100) NULL,
	[Project_Category] [varchar](50) NULL,
	[Line_Color] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtProjectType_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtProjectType_Previous](
	[Project_Type_Name] [varchar](100) NULL,
	[Project_Type_Full_Name] [varchar](100) NULL,
	[Project_Category] [varchar](50) NULL,
	[Line_Color] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtRBS](
	[RBS_Name] [varchar](50) NULL,
	[RBS_Full_Name] [varchar](200) NULL,
	[Department] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtRBS_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtRBS_Previous](
	[RBS_Name] [varchar](50) NULL,
	[RBS_Full_Name] [varchar](200) NULL,
	[Department] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[ExtRedLineData]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ExtRedLineData](
	[Date] [varchar](50) NULL,
	[Geography] [varchar](50) NULL,
	[Business_Unit] [varchar](50) NULL,
	[RedLine_Days] [varchar](50) NULL,
	[Line_Color] [nvarchar](10) NULL,
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
/****** Object:  Table [dbo].[ExtRedLineData_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ExtRedLineData_Previous](
	[Date] [varchar](50) NULL,
	[Geography] [varchar](50) NULL,
	[Business_Unit] [varchar](50) NULL,
	[RedLine_Days] [varchar](50) NULL,
	[Line_Color] [nvarchar](10) NULL,
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
/****** Object:  Table [dbo].[FactAssignment]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactAssignment](
	[FactAssignmentKey] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentUID] [uniqueidentifier] NOT NULL,
	[ResourceKey] [int] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[YearMonthKey] [int] NOT NULL,
	[PlannedWork] [float] NULL,
	[Work] [float] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.FactAssignment] PRIMARY KEY CLUSTERED 
(
	[FactAssignmentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FactProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactProject](
	[FactProjectKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectUID] [uniqueidentifier] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[RequestedStartShipDateKey] [int] NOT NULL,
	[Stg1ApprovalDateKey] [int] NOT NULL,
	[Stg2ApprovalTargetDateKey] [int] NOT NULL,
	[StartupDateKey] [int] NOT NULL,
	[StartShipDateKey] [int] NOT NULL,
	[SavingsStartDateKey] [int] NOT NULL,
	[PDR1DueDateKey] [int] NOT NULL,
	[PDR1AnticipatedDateKey] [int] NOT NULL,
	[PDR2ReceivedDateKey] [int] NOT NULL,
	[PDR2DueDateKey] [int] NOT NULL,
	[ProjectCancelledDateKey] [int] NOT NULL,
	[PlantTestDateKey] [int] NOT NULL,
	[LAMDueDateKey] [int] NOT NULL,
	[LAMDateKey] [int] NOT NULL,
	[LAMReceivedDateKey] [int] NOT NULL,
	[NSV] [money] NULL,
	[GSIPercent] [float] NULL,
	[CannibalizationPercent] [float] NULL,
	[Compression] [float] NULL,
	[EstimatedPercentCompression] [float] NULL,
	[PlannedWork] [float] NULL,
	[Work] [float] NULL,
	[RemainingWork] [float] NULL,
	[EstimatedPotentialSavings] [float] NULL,
	[WeightedSavings] [float] NULL,
	[TotalVolumeWeight] [float] NULL,
	[LaunchBuildVolume] [float] NULL,
	[NSVAtPDR2] [float] NULL,
	[NSVAUD] [float] NULL,
	[ProbabilityOfTechnicalSuccess] [float] NULL,
	[LatestIncrGMPerWeight] [float] NULL,
	[LatestIncrGMPerUnit] [float] NULL,
	[LatestGMPercentNSV] [float] NULL,
	[LatestIncrGMPercentNSV] [float] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.FactProject] PRIMARY KEY CLUSTERED 
(
	[FactProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FactProjectSnapshot]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactProjectSnapshot](
	[FactProjectSnapshotKey] [bigint] IDENTITY(1,1) NOT NULL,
	[SnapshotDateKey] [int] NOT NULL,
	[ProjectUID] [uniqueidentifier] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[RequestedStartShipDateKey] [int] NOT NULL,
	[Stg1ApprovalDateKey] [int] NOT NULL,
	[Stg2ApprovalTargetDateKey] [int] NOT NULL,
	[StartupDateKey] [int] NOT NULL,
	[StartShipDateKey] [int] NOT NULL,
	[SavingsStartDateKey] [int] NOT NULL,
	[PDR1DueDateKey] [int] NOT NULL,
	[PDR1AnticipatedDateKey] [int] NOT NULL,
	[PDR2ReceivedDateKey] [int] NOT NULL,
	[PDR2DueDateKey] [int] NOT NULL,
	[ProjectCancelledDateKey] [int] NOT NULL,
	[PlantTestDateKey] [int] NOT NULL,
	[LAMDueDateKey] [int] NOT NULL,
	[LAMDateKey] [int] NOT NULL,
	[LAMReceivedDateKey] [int] NOT NULL,
	[NSV] [money] NULL,
	[GSIPercent] [float] NULL,
	[CannibalizationPercent] [float] NULL,
	[Compression] [float] NULL,
	[EstimatedPercentCompression] [float] NULL,
	[PlannedWork] [float] NULL,
	[Work] [float] NULL,
	[RemainingWork] [float] NULL,
	[EstimatedPotentialSavings] [float] NULL,
	[WeightedSavings] [float] NULL,
	[TotalVolumeWeight] [float] NULL,
	[LaunchBuildVolume] [float] NULL,
	[NSVAtPDR2] [float] NULL,
	[NSVAUD] [float] NULL,
	[ProbabilityOfTechnicalSuccess] [float] NULL,
	[LatestIncrGMPerWeight] [float] NULL,
	[LatestIncrGMPerUnit] [float] NULL,
	[LatestGMPercentNSV] [float] NULL,
	[LatestIncrGMPercentNSV] [float] NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.FactProjectSnapshot] PRIMARY KEY CLUSTERED 
(
	[FactProjectSnapshotKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactTimesheetLine](
	[FactTimesheetLineKey] [int] IDENTITY(1,1) NOT NULL,
	[TimesheetLineUID] [uniqueidentifier] NOT NULL,
	[TimesheetLineKey] [int] NOT NULL,
	[TimesheetPeriodKey] [int] NOT NULL,
	[ResourceKey] [int] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[ActualWork] [float] NULL,
	[HashValue] [varchar](35) NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
	[LoadDate] [smalldatetime] NULL,
	[LastUpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_dbo.FactTimesheetLine] PRIMARY KEY CLUSTERED 
(
	[FactTimesheetLineKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FactTimesheetLineSnapshot]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactTimesheetLineSnapshot](
	[FactTimesheetLineSnapshotKey] [bigint] IDENTITY(1,1) NOT NULL,
	[SnapshotDateKey] [int] NOT NULL,
	[TimesheetLineUID] [uniqueidentifier] NOT NULL,
	[TimesheetLineKey] [int] NOT NULL,
	[TimesheetPeriodKey] [int] NOT NULL,
	[ResourceKey] [int] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[ActualWork] [float] NULL,
	[InsertAuditKey] [int] NOT NULL,
	[UpdateAuditKey] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FactTimesheetLineSnapshot] PRIMARY KEY CLUSTERED 
(
	[FactTimesheetLineSnapshotKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MARS_CRT_REPORT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARS_CRT_REPORT](
	[StageGateValue] [varchar](10) NULL,
	[Submetric] [varchar](100) NULL,
	[Metric] [varchar](100) NULL,
	[CommentName] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessEmail]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessEmail](
	[ProcessName] [varchar](100) NOT NULL,
	[ProcessState] [varchar](50) NOT NULL,
	[EmailRecipients] [varchar](500) NOT NULL,
	[EmailCCRecipients] [varchar](500) NULL,
	[EmailBCCRecipients] [varchar](500) NULL,
	[EmailSubject] [varchar](200) NOT NULL,
	[EmailMessage] [varchar](max) NULL,
	[HighPriority] [bit] NOT NULL,
	[LastSentDate] [datetime] NULL,
 CONSTRAINT [PK_ProcessEmail] PRIMARY KEY CLUSTERED 
(
	[ProcessName] ASC,
	[ProcessState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RedLineData_Previous]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RedLineData_Previous](
	[Date] [date] NULL,
	[Geography] [varchar](50) NULL,
	[Business_Unit] [varchar](50) NULL,
	[RedLine_Days] [decimal](13, 2) NULL,
	[Line_Color] [varchar](10) NULL,
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
/****** Object:  Table [Error].[DimBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimBusinessUnit](
	[BusinessUnitKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimBuyer]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimBuyer](
	[BuyerKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimFoodCategory](
	[FoodCategoryKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimGeography]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimGeography](
	[GeographyKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimGlobalBrand]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimGlobalBrand](
	[GlobalBrandKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimMaterialCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimMaterialCategory](
	[MaterialCategoryKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimParentProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimParentProject](
	[ParentProjectKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimPlantLocation]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimPlantLocation](
	[PlantLocationKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimPrimaryResourceType](
	[PrimaryResourceTypeKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimProject](
	[ProjectKey] [int] NULL,
	[ProjectUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[StartDate] [varchar](max) NULL,
	[FinishDate] [varchar](max) NULL,
	[URL] [varchar](max) NULL,
	[CreatedDate] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL,
	[CalendarDurationDays] [varchar](max) NULL,
	[IHUTFormulaDue] [varchar](max) NULL,
	[COGSPlantTest3] [varchar](max) NULL,
	[IHUTNLIDue] [varchar](max) NULL,
	[SensoryCompletion] [varchar](max) NULL,
	[IHUTProdStart] [varchar](max) NULL,
	[IHUTTopLinesCompletion] [varchar](max) NULL,
	[SSProdStart] [varchar](max) NULL,
	[RequestedStartShip] [varchar](max) NULL,
	[SSNLIDue] [varchar](max) NULL,
	[FinalNLIDue] [varchar](max) NULL,
	[RMISDue] [varchar](max) NULL,
	[SSFormulaDue] [varchar](max) NULL,
	[FinalFormulaDue] [varchar](max) NULL,
	[TemplateDurationDays] [varchar](max) NULL,
	[ShelfLifeDays] [varchar](max) NULL,
	[GeographyKey] [varchar](max) NULL,
	[BusinessUnitKey] [varchar](max) NULL,
	[FoodCategoryKey] [varchar](max) NULL,
	[ProjectTypeKey] [varchar](max) NULL,
	[ProjectManagerKey] [varchar](max) NULL,
	[PlantLocationKey] [varchar](max) NULL,
	[StageGateKey] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
	[TemplateTypeKey] [varchar](max) NULL,
	[MaterialCategoryKey] [varchar](max) NULL,
	[GlobalBrandKey] [varchar](max) NULL,
	[COGSPercentProbability] [varchar](max) NULL,
	[COGS1stYearInStd] [varchar](max) NULL,
	[BuyerKey] [varchar](max) NULL,
	[ParentProjectKey] [varchar](max) NULL,
	[PortfolioBucket] [varchar](max) NULL,
	[NewIngredientsRequired] [varchar](max) NULL,
	[NewPlantorSupplier] [varchar](max) NULL,
	[isLeadProject] [varchar](max) NULL,
	[isBackupProject] [varchar](max) NULL,
	[Equivalent] [varchar](max) NULL,
	[FoodDescription] [varchar](max) NULL,
	[PackagingFormat] [varchar](max) NULL,
	[Comment] [varchar](max) NULL,
	[MarketingLead] [varchar](max) NULL,
	[ProductDeveloper] [varchar](max) NULL,
	[FoodTechnologist] [varchar](max) NULL,
	[PackagingEngineer] [varchar](max) NULL,
	[Risk] [varchar](max) NULL,
	[ProductDeveloper2] [varchar](max) NULL,
	[PilotPlantTest] [varchar](max) NULL,
	[COGSStartup2] [varchar](max) NULL,
	[COGSStartup3] [varchar](max) NULL,
	[COGSPlantTest2] [varchar](max) NULL,
	[DateBFIReceived] [varchar](max) NULL,
	[PDR2Comments] [varchar](max) NULL,
	[LAMComments] [varchar](max) NULL,
	[ValidationMethod] [varchar](max) NULL,
	[IsStageGateFlex] [varchar](max) NULL,
	[MarketType] [varchar](max) NULL,
	[LAMConsumerTesting] [varchar](max) NULL,
	[StrategicFit] [varchar](max) NULL,
	[Flavor] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL,
	[LabelConversion] [varchar](max) NULL,
	[MarketingPlatform] [varchar](max) NULL,
	[Granular Growth Strategy] [nvarchar](4000) NULL,
	[Final Artwork Due] [datetime] NULL,
	[Listing Process Start] [datetime] NULL,
	[Order Materials Start] [datetime] NULL,
	[Final Financials Due] [datetime] NULL,
	[Registration Process Ready] [datetime] NULL,
	[Preliminary Artwork Due] [datetime] NULL,
	[Stage 2 Financials Due] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimProjectManager]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimProjectManager](
	[ProjectManagerKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimProjectType](
	[ProjectTypeKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimRBS](
	[RBSKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimResource]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimResource](
	[ResourceKey] [int] NULL,
	[ResourceUID] [varchar](max) NULL,
	[EmailAddress] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[ADAccount] [varchar](max) NULL,
	[IsActive] [varchar](max) NULL,
	[IsGeneric] [varchar](max) NULL,
	[IsTimeTracker] [varchar](max) NULL,
	[RBSKey] [varchar](max) NULL,
	[PrimaryResourceTypeKey] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimStageGate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimStageGate](
	[StageGateKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimTemplateType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimTemplateType](
	[TemplateTypeKey] [int] NULL,
	[MemberUID] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[FullName] [varchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimTimesheetLine](
	[TimesheetLineKey] [int] NULL,
	[TimesheetLineUID] [varchar](max) NULL,
	[TimesheetStatus] [varchar](max) NULL,
	[TimesheetLineClass] [varchar](max) NULL,
	[TimesheetLineClassType] [varchar](max) NULL,
	[TaskName] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[DimTimesheetPeriod]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[DimTimesheetPeriod](
	[TimesheetPeriodKey] [int] NULL,
	[TimesheetPeriodUID] [varchar](max) NULL,
	[PeriodName] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[EXT_CRT_MetadataLookup]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[EXT_CRT_MetadataLookup](
	[Id] [int] NULL,
	[ContentTypeID] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[Ext_MARS_CRT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[Ext_MARS_CRT](
	[ContentTypeID] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ProjectNameId] [int] NULL,
	[StageGateValue] [nvarchar](max) NULL,
	[c_1WillThisBigIdeaDriveDesireValue] [nvarchar](max) NULL,
	[c_1aConceptValue] [nvarchar](max) NULL,
	[c_1bCategoryValue] [nvarchar](max) NULL,
	[c_1cBrandValue] [nvarchar](max) NULL,
	[c_2WillTheFoodAndPackDelightValue] [nvarchar](max) NULL,
	[c_2aGreatFoodValue] [nvarchar](max) NULL,
	[c_2bPackagingValue] [nvarchar](max) NULL,
	[c_2cFoodAndPackDesignValue] [nvarchar](max) NULL,
	[c_3HowWillWeMakeThisValue] [nvarchar](max) NULL,
	[c_3aFeasibilityValue] [nvarchar](max) NULL,
	[c_3bCapacityValue] [nvarchar](max) NULL,
	[c_3cCostsValue] [nvarchar](max) NULL,
	[c_4HowWillWeGetShoppersAndCustomersToDecideValue] [nvarchar](max) NULL,
	[c_4aChannelValue] [nvarchar](max) NULL,
	[c_4bCustomerValueValue] [nvarchar](max) NULL,
	[c_4cIntegratedCommercialPlanValue] [nvarchar](max) NULL,
	[c_5HowWillWeMakeMoneyValue] [nvarchar](max) NULL,
	[c_5aBusinessModelValue] [nvarchar](max) NULL,
	[c_5bIncrementalNetSalesValue] [nvarchar](max) NULL,
	[c_5cMarginValue] [nvarchar](max) NULL,
	[c_6CanWeDoThisWellValue] [nvarchar](max) NULL,
	[c_6aRightTimeValue] [nvarchar](max) NULL,
	[c_6bRightResourcesValue] [nvarchar](max) NULL,
	[c_6cSkillsAndToolsValue] [nvarchar](max) NULL,
	[c_1ActionPlan] [nvarchar](max) NULL,
	[c_1Comments] [nvarchar](max) NULL,
	[c_2ActionPlan] [nvarchar](max) NULL,
	[c_2Comments] [nvarchar](max) NULL,
	[c_3ActionPlan] [nvarchar](max) NULL,
	[c_3Comments] [nvarchar](max) NULL,
	[c_4ActionPlan] [nvarchar](max) NULL,
	[c_4Comments] [nvarchar](max) NULL,
	[c_5ActionPlan] [nvarchar](max) NULL,
	[c_5Comments] [nvarchar](max) NULL,
	[c_6ActionPlan] [nvarchar](max) NULL,
	[c_6Comments] [nvarchar](max) NULL,
	[OverallProjectStatusValue] [nvarchar](max) NULL,
	[Id] [int] NULL,
	[ContentType] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[ExtBusinessUnit](
	[Business_Unit_Name] [varchar](50) NULL,
	[Business_Unit_Full_Name] [varchar](100) NULL,
	[Consolidated_Business_Unit] [varchar](50) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[ExtFoodCategory](
	[Food_Category_Name] [varchar](50) NULL,
	[Food_Category_Full_Name] [varchar](100) NULL,
	[Food_Classification] [varchar](50) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtGSIBridge]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[ExtGSIBridge](
	[Geography] [varchar](50) NULL,
	[Business Unit] [varchar](50) NULL,
	[Food Category] [varchar](50) NULL,
	[ProjectUID] [varchar](50) NULL,
	[ProjectName] [varchar](100) NULL,
	[Portfolio Bucket] [varchar](50) NULL,
	[Project Status] [varchar](50) NULL,
	[Proj Type] [varchar](50) NULL,
	[YEAR] [varchar](50) NULL,
	[Requested Start Ship] [datetime] NULL,
	[CANNIBAL] [int] NULL,
	[GSI] [smallint] NULL,
	[NSV] [float] NULL,
	[NSV_GSI] [float] NULL,
	[NSV_INC] [float] NULL,
	[WrapAroundNSV] [float] NULL,
	[IncWrapAroundNSV] [float] NULL,
	[GSIWrapAroundNSV] [float] NULL,
	[Over_3_Million] [smallint] NULL,
	[Over_15_Million] [smallint] NULL,
	[Parent Project] [smallint] NULL,
	[GSI_BU] [varchar](50) NULL,
	[GSI_GEO] [varchar](50) NULL,
	[Project_Link] [varchar](100) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[ExtPrimaryResourceType](
	[Primary_Resource_Type_Name] [varchar](50) NULL,
	[Primary_Resource_Type_Full_Name] [varchar](100) NULL,
	[Resource_Class] [varchar](50) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[ExtProjectType](
	[Project_Type_Name] [varchar](100) NULL,
	[Project_Type_Full_Name] [varchar](100) NULL,
	[Project_Category] [varchar](50) NULL,
	[Line_Color] [varchar](50) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[ExtRBS](
	[RBS_Name] [varchar](50) NULL,
	[RBS_Full_Name] [varchar](200) NULL,
	[Department] [varchar](50) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[ExtRedLineData]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [Error].[ExtRedLineData](
	[Date] [varchar](50) NULL,
	[Geography] [varchar](50) NULL,
	[Business_Unit] [varchar](50) NULL,
	[RedLine_Days] [varchar](50) NULL,
	[Line_Color] [nvarchar](10) NULL,
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
/****** Object:  Table [Error].[FactAssignment]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[FactAssignment](
	[FactAssignmentKey] [int] NULL,
	[AssignmentUID] [varchar](max) NULL,
	[ResourceKey] [varchar](max) NULL,
	[ProjectKey] [varchar](max) NULL,
	[YearMonthKey] [varchar](max) NULL,
	[PlannedWork] [varchar](max) NULL,
	[Work] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[FactProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[FactProject](
	[FactProjectKey] [int] NULL,
	[ProjectUID] [varchar](max) NULL,
	[ProjectKey] [varchar](max) NULL,
	[RequestedStartShipDateKey] [varchar](max) NULL,
	[Stg1ApprovalDateKey] [varchar](max) NULL,
	[Stg2ApprovalTargetDateKey] [varchar](max) NULL,
	[StartupDateKey] [varchar](max) NULL,
	[StartShipDateKey] [varchar](max) NULL,
	[SavingsStartDateKey] [varchar](max) NULL,
	[PDR1DueDateKey] [varchar](max) NULL,
	[PDR1AnticipatedDateKey] [varchar](max) NULL,
	[PDR2ReceivedDateKey] [varchar](max) NULL,
	[PDR2DueDateKey] [varchar](max) NULL,
	[ProjectCancelledDateKey] [varchar](max) NULL,
	[PlantTestDateKey] [varchar](max) NULL,
	[LAMDueDateKey] [varchar](max) NULL,
	[LAMDateKey] [varchar](max) NULL,
	[LAMReceivedDateKey] [varchar](max) NULL,
	[NSV] [varchar](max) NULL,
	[GSIPercent] [varchar](max) NULL,
	[CannibalizationPercent] [varchar](max) NULL,
	[Compression] [varchar](max) NULL,
	[EstimatedPercentCompression] [varchar](max) NULL,
	[PlannedWork] [varchar](max) NULL,
	[Work] [varchar](max) NULL,
	[RemainingWork] [varchar](max) NULL,
	[EstimatedPotentialSavings] [varchar](max) NULL,
	[WeightedSavings] [varchar](max) NULL,
	[TotalVolumeWeight] [varchar](max) NULL,
	[LaunchBuildVolume] [varchar](max) NULL,
	[NSVAtPDR2] [varchar](max) NULL,
	[NSVAUD] [varchar](max) NULL,
	[ProbabilityOfTechnicalSuccess] [varchar](max) NULL,
	[LatestIncrGMPerWeight] [varchar](max) NULL,
	[LatestIncrGMPerUnit] [varchar](max) NULL,
	[LatestGMPercentNSV] [varchar](max) NULL,
	[LatestIncrGMPercentNSV] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[FactTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[FactTimesheetLine](
	[FactTimesheetLineKey] [int] NULL,
	[TimesheetLineUID] [varchar](max) NULL,
	[TimesheetLineKey] [varchar](max) NULL,
	[TimesheetPeriodKey] [varchar](max) NULL,
	[ResourceKey] [varchar](max) NULL,
	[ProjectKey] [varchar](max) NULL,
	[ActualWork] [varchar](max) NULL,
	[HashValue] [varchar](35) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSEPMLookupTable]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSEPMLookupTable](
	[LookupTableUID] [varchar](max) NULL,
	[MemberUID] [varchar](max) NULL,
	[MemberValue] [nvarchar](max) NULL,
	[ParentMemberUID] [varchar](max) NULL,
	[LCID] [varchar](max) NULL,
	[MemberFullValue] [nvarchar](max) NULL,
	[MemberDescription] [nvarchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSEPMMetadataDimension]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSEPMMetadataDimension](
	[DimensionUID] [varchar](max) NULL,
	[DimensionName] [nvarchar](max) NULL,
	[DimensionTableName] [nvarchar](max) NULL,
	[DimensionIsIntrinsic] [varchar](max) NULL,
	[HasNoHierarchy] [varchar](max) NULL,
	[MemberType] [varchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPEpmAssignment]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPEpmAssignment](
	[AssignmentUID] [varchar](max) NULL,
	[ProjectUID] [varchar](max) NULL,
	[ResourceUID] [varchar](max) NULL,
	[TaskUID] [varchar](max) NULL,
	[TimesheetClassUID] [varchar](max) NULL,
	[ResourceOwnerUID] [varchar](max) NULL,
	[AssignmentWork] [varchar](max) NULL,
	[AssignmentActualWork] [varchar](max) NULL,
	[AssignmentPercentWorkCompleted] [varchar](max) NULL,
	[AssignmentStartDate] [varchar](max) NULL,
	[AssignmentFinishDate] [varchar](max) NULL,
	[AssignmentCreatedDate] [varchar](max) NULL,
	[AssignmentModifiedDate] [varchar](max) NULL,
	[TaskIsActive] [varchar](max) NULL,
	[AssignmentRemainingWork] [varchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPEpmAssignmentByDay]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPEpmAssignmentByDay](
	[AssignmentUID] [varchar](max) NULL,
	[TimeByDay] [varchar](max) NULL,
	[ProjectUID] [varchar](max) NULL,
	[TaskUID] [varchar](max) NULL,
	[AssignmentWork] [varchar](max) NULL,
	[AssignmentActualWork] [varchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPEpmProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPEpmProject](
	[ProjectUID] [varchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[ProjectDescription] [nvarchar](max) NULL,
	[ProjectOwnerResourceUID] [varchar](max) NULL,
	[ProjectStartDate] [varchar](max) NULL,
	[ProjectFinishDate] [varchar](max) NULL,
	[ProjectStatusDate] [varchar](max) NULL,
	[ProjectWorkspaceInternalHRef] [nvarchar](max) NULL,
	[ProjectCreatedDate] [varchar](max) NULL,
	[ProjectModifiedDate] [varchar](max) NULL,
	[ProjectCalendarDuration] [varchar](max) NULL,
	[ProjectWork] [varchar](max) NULL,
	[ProjectActualWork] [varchar](max) NULL,
	[ProjectDuration] [varchar](max) NULL,
	[ProjectActualDuration] [varchar](max) NULL,
	[ProjectPercentCompleted] [varchar](max) NULL,
	[ProjectPercentWorkCompleted] [varchar](max) NULL,
	[ProjectResourcePlanWork] [varchar](max) NULL,
	[ProjectRegularWork] [varchar](max) NULL,
	[ProjectRemainingWork] [varchar](max) NULL,
	[ProjectActualRegularWork] [varchar](max) NULL,
	[ProjectRemainingRegularWork] [varchar](max) NULL,
	[Est Potential Savings] [varchar](max) NULL,
	[Weighted Savings] [varchar](max) NULL,
	[IHUT Formula Due] [varchar](max) NULL,
	[Stg 1 Approval] [varchar](max) NULL,
	[COGS Plant Test 3] [varchar](max) NULL,
	[IHUT NLI Due] [varchar](max) NULL,
	[Stg 2 Approval Target] [varchar](max) NULL,
	[Sensory Comp] [varchar](max) NULL,
	[IHUT Prod Start] [varchar](max) NULL,
	[IHUT Top Lines Comp] [varchar](max) NULL,
	[SS Prod Start] [varchar](max) NULL,
	[Startup] [varchar](max) NULL,
	[Start Ship] [varchar](max) NULL,
	[Savings Start] [varchar](max) NULL,
	[PDR 1 Due Date] [varchar](max) NULL,
	[PDR 1 Anticipated Date] [varchar](max) NULL,
	[Requested Start Ship] [varchar](max) NULL,
	[Date PDR 2 Received] [varchar](max) NULL,
	[Date Project Cancelled] [varchar](max) NULL,
	[SS NLI Due] [varchar](max) NULL,
	[Final NLI Due] [varchar](max) NULL,
	[RMIS Due] [varchar](max) NULL,
	[SS Formula Due] [varchar](max) NULL,
	[Final Formula Due] [varchar](max) NULL,
	[Project Compression] [varchar](max) NULL,
	[Template Duration] [varchar](max) NULL,
	[Shelf Life] [varchar](max) NULL,
	[Geography] [nvarchar](max) NULL,
	[Business Unit] [nvarchar](max) NULL,
	[Food Category] [nvarchar](max) NULL,
	[Proj Type] [nvarchar](max) NULL,
	[Proj Manager] [nvarchar](max) NULL,
	[Managing Organization] [nvarchar](max) NULL,
	[Plant] [nvarchar](max) NULL,
	[Stage Gates] [nvarchar](max) NULL,
	[Project Status] [nvarchar](max) NULL,
	[Template Types] [nvarchar](max) NULL,
	[Material Category] [nvarchar](max) NULL,
	[Global Brand] [nvarchar](max) NULL,
	[COGS_Pct Probability] [nvarchar](max) NULL,
	[COGS_1st Yr in Std] [nvarchar](max) NULL,
	[Buyer] [nvarchar](max) NULL,
	[Parent Project] [nvarchar](max) NULL,
	[Portfolio Bucket] [nvarchar](max) NULL,
	[New Ingredients Required] [varchar](max) NULL,
	[New Plant or Supplier] [varchar](max) NULL,
	[Lead Project] [varchar](max) NULL,
	[Backup Project] [varchar](max) NULL,
	[Global Program] [varchar](max) NULL,
	[Total Volume_Weight] [varchar](max) NULL,
	[Launch Build Volume] [varchar](max) NULL,
	[Percent Cannibalization] [varchar](max) NULL,
	[Probability of Technical Success] [varchar](max) NULL,
	[Est Pct Compression] [varchar](max) NULL,
	[Est Pct Comp Ind] [varchar](max) NULL,
	[NSV] [varchar](max) NULL,
	[Latest Incr GM per Weight] [varchar](max) NULL,
	[Latest Incr GM per Unit] [varchar](max) NULL,
	[LAM GM Pct] [varchar](max) NULL,
	[Latest Incr GM Pct NSV] [varchar](max) NULL,
	[GSI Percent] [varchar](max) NULL,
	[Project Equivalent] [varchar](max) NULL,
	[NSV AUD] [varchar](max) NULL,
	[Food Description] [nvarchar](max) NULL,
	[Packaging Format] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[Marketing Lead] [nvarchar](max) NULL,
	[Product Developer] [nvarchar](max) NULL,
	[Food Technologist] [nvarchar](max) NULL,
	[Packaging Engineer] [nvarchar](max) NULL,
	[Project Risk] [nvarchar](max) NULL,
	[Product Developer 2] [nvarchar](max) NULL,
	[Pilot Plant Test] [nvarchar](max) NULL,
	[Plant Test] [nvarchar](max) NULL,
	[COGS Startup 2] [nvarchar](max) NULL,
	[COGS Startup 3] [nvarchar](max) NULL,
	[COGS Plant Test 2] [nvarchar](max) NULL,
	[Date BFI Received] [varchar](max) NULL,
	[Date LAM Approved] [varchar](max) NULL,
	[PDR2 Comments] [nvarchar](max) NULL,
	[LAM Comments] [nvarchar](max) NULL,
	[Validation Method] [nvarchar](max) NULL,
	[NSV at PDR2] [varchar](max) NULL,
	[Stage Gate Flex] [varchar](max) NULL,
	[Market Type] [nvarchar](max) NULL,
	[PDR 2 Due Date] [varchar](max) NULL,
	[LAM Due Date] [varchar](max) NULL,
	[LAM Consumer Testing] [nvarchar](max) NULL,
	[LAM] [varchar](max) NULL,
	[Strategic Fit] [nvarchar](max) NULL,
	[Flavor] [nvarchar](max) NULL,
	[Label Conversion] [nvarchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL,
	[Marketing Platform] [nvarchar](max) NULL,
	[Granular Growth Strategy] [nvarchar](4000) NULL,
	[Final Artwork Due] [datetime] NULL,
	[Listing Process Start] [datetime] NULL,
	[Order Materials Start] [datetime] NULL,
	[Final Financials Due] [datetime] NULL,
	[Registration Process Ready] [datetime] NULL,
	[Preliminary Artwork Due] [datetime] NULL,
	[Stage 2 Financials Due] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPEpmResource]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPEpmResource](
	[ResourceUID] [varchar](max) NULL,
	[ResourceName] [nvarchar](max) NULL,
	[ResourceEmailAddress] [nvarchar](max) NULL,
	[ResourceType] [varchar](max) NULL,
	[ResourceMaxUnits] [varchar](max) NULL,
	[ResourceNTAccount] [nvarchar](max) NULL,
	[ResourceIsActive] [varchar](max) NULL,
	[ResourceIsGeneric] [varchar](max) NULL,
	[ResourceCreatedDate] [varchar](max) NULL,
	[ResourceModifiedDate] [varchar](max) NULL,
	[UserClaimsAccount] [nvarchar](max) NULL,
	[RBS] [nvarchar](max) NULL,
	[Time Tracker] [varchar](max) NULL,
	[Primary RES Type] [nvarchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPTimesheetline]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPTimesheetline](
	[PeriodUID] [varchar](max) NULL,
	[TimesheetUID] [varchar](max) NULL,
	[TimesheetStatus] [nvarchar](max) NULL,
	[TimesheetStatusID] [varchar](max) NULL,
	[TimesheetLineClass] [nvarchar](max) NULL,
	[TimesheetLineClassType] [varchar](max) NULL,
	[ResourceUID] [varchar](max) NULL,
	[ProjectUID] [varchar](max) NULL,
	[TaskName] [nvarchar](max) NULL,
	[TaskUID] [varchar](max) NULL,
	[TimesheetLineUID] [varchar](max) NULL,
	[PlannedWork] [varchar](max) NULL,
	[ActualWorkBillable] [varchar](max) NULL,
	[ActualWorkNonBillable] [varchar](max) NULL,
	[ActualOvertimeWorkBillable] [varchar](max) NULL,
	[ActualOvertimeWorkNonBillable] [varchar](max) NULL,
	[CreatedDate] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPTimesheetlineOlap]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPTimesheetlineOlap](
	[TimesheetLineUID] [varchar](max) NULL,
	[TimesheetUID] [varchar](max) NULL,
	[ProjectNameUID] [varchar](max) NULL,
	[TaskNameUID] [varchar](max) NULL,
	[AssignmentUID] [varchar](max) NULL,
	[ClassUID] [varchar](max) NULL,
	[ValidationType] [varchar](max) NULL,
	[ApproverResourceNameUID] [varchar](max) NULL,
	[TimesheetLineStatus] [varchar](max) NULL,
	[CreatedDate] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Error].[MARSMSPTimesheetPeriod]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Error].[MARSMSPTimesheetPeriod](
	[PeriodUID] [varchar](max) NULL,
	[PeriodStatusID] [varchar](max) NULL,
	[StartDate] [varchar](max) NULL,
	[EndDate] [varchar](max) NULL,
	[PeriodName] [nvarchar](max) NULL,
	[LCID] [varchar](max) NULL,
	[AuditKey] [int] NULL,
	[ErrorRowId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[ErrorColumnName] [varchar](128) NULL,
	[ErrorDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimBusinessUnitUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimBusinessUnitUpdate](
	[BusinessUnitKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimBuyerUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimBuyerUpdate](
	[BuyerKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimFoodCategoryUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimFoodCategoryUpdate](
	[FoodCategoryKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimGeographyUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimGeographyUpdate](
	[GeographyKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimGlobalBrandUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimGlobalBrandUpdate](
	[GlobalBrandKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimMaterialCategoryUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimMaterialCategoryUpdate](
	[MaterialCategoryKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimParentProjectUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimParentProjectUpdate](
	[ParentProjectKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimPlantLocationUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimPlantLocationUpdate](
	[PlantLocationKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimPrimaryResourceTypeUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimPrimaryResourceTypeUpdate](
	[PrimaryResourceTypeKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimProjectManagerUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimProjectManagerUpdate](
	[ProjectManagerKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimProjectTypeUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimProjectTypeUpdate](
	[ProjectTypeKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimProjectUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimProjectUpdate](
	[ProjectKey] [int] NOT NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](1000) NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
	[URL] [varchar](500) NULL,
	[CreatedDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[CalendarDurationDays] [int] NULL,
	[IHUTFormulaDue] [date] NULL,
	[COGSPlantTest3] [date] NULL,
	[IHUTNLIDue] [date] NULL,
	[SensoryCompletion] [date] NULL,
	[IHUTProdStart] [date] NULL,
	[IHUTTopLinesCompletion] [date] NULL,
	[SSProdStart] [date] NULL,
	[RequestedStartShip] [date] NULL,
	[SSNLIDue] [date] NULL,
	[FinalNLIDue] [date] NULL,
	[RMISDue] [date] NULL,
	[SSFormulaDue] [date] NULL,
	[FinalFormulaDue] [date] NULL,
	[TemplateDurationDays] [int] NULL,
	[ShelfLifeDays] [int] NULL,
	[GeographyKey] [int] NOT NULL,
	[BusinessUnitKey] [int] NOT NULL,
	[FoodCategoryKey] [int] NOT NULL,
	[ProjectTypeKey] [int] NOT NULL,
	[ProjectManagerKey] [int] NOT NULL,
	[PlantLocationKey] [int] NOT NULL,
	[StageGateKey] [int] NOT NULL,
	[Status] [varchar](50) NULL,
	[TemplateTypeKey] [int] NOT NULL,
	[MaterialCategoryKey] [int] NOT NULL,
	[GlobalBrandKey] [int] NOT NULL,
	[COGSPercentProbability] [int] NULL,
	[COGS1stYearInStd] [int] NULL,
	[BuyerKey] [int] NOT NULL,
	[ParentProjectKey] [int] NOT NULL,
	[PortfolioBucket] [varchar](50) NULL,
	[NewIngredientsRequired] [bit] NULL,
	[NewPlantorSupplier] [bit] NULL,
	[isLeadProject] [bit] NULL,
	[isBackupProject] [bit] NULL,
	[Equivalent] [tinyint] NULL,
	[FoodDescription] [varchar](500) NULL,
	[PackagingFormat] [varchar](100) NULL,
	[Comment] [varchar](500) NULL,
	[MarketingLead] [varchar](100) NULL,
	[ProductDeveloper] [varchar](50) NULL,
	[FoodTechnologist] [varchar](50) NULL,
	[PackagingEngineer] [varchar](50) NULL,
	[Risk] [varchar](50) NULL,
	[ProductDeveloper2] [varchar](50) NULL,
	[PilotPlantTest] [date] NULL,
	[COGSStartup2] [date] NULL,
	[COGSStartup3] [date] NULL,
	[COGSPlantTest2] [date] NULL,
	[DateBFIReceived] [date] NULL,
	[PDR2Comments] [varchar](50) NULL,
	[LAMComments] [varchar](50) NULL,
	[ValidationMethod] [varchar](50) NULL,
	[IsStageGateFlex] [bit] NULL,
	[MarketType] [varchar](50) NULL,
	[LAMConsumerTesting] [varchar](50) NULL,
	[StrategicFit] [varchar](3) NULL,
	[Flavor] [varchar](50) NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL,
	[RowStartDate] [datetime] NULL,
	[RowVersion] [int] NULL,
	[LabelConversion] [varchar](100) NULL,
	[MarketingPlatform] [varchar](500) NULL,
	[Granular Growth Strategy] [nvarchar](4000) NULL,
	[Final Artwork Due] [datetime] NULL,
	[Listing Process Start] [datetime] NULL,
	[Order Materials Start] [datetime] NULL,
	[Final Financials Due] [datetime] NULL,
	[Registration Process Ready] [datetime] NULL,
	[Preliminary Artwork Due] [datetime] NULL,
	[Stage 2 Financials Due] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimRBSUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimRBSUpdate](
	[RBSKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimResourceUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimResourceUpdate](
	[ResourceKey] [int] NOT NULL,
	[ResourceUID] [uniqueidentifier] NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[Name] [varchar](100) NULL,
	[ADAccount] [varchar](50) NOT NULL,
	[IsActive] [tinyint] NOT NULL,
	[IsGeneric] [tinyint] NOT NULL,
	[IsTimeTracker] [tinyint] NOT NULL,
	[RBSKey] [int] NOT NULL,
	[PrimaryResourceTypeKey] [int] NOT NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimStageGateUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimStageGateUpdate](
	[StageGateKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimTemplateTypeUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimTemplateTypeUpdate](
	[TemplateTypeKey] [int] NOT NULL,
	[MemberUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FullName] [varchar](500) NOT NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimTimesheetLineUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimTimesheetLineUpdate](
	[TimesheetLineKey] [int] NOT NULL,
	[TimesheetLineUID] [uniqueidentifier] NOT NULL,
	[TimesheetStatus] [varchar](50) NULL,
	[TimesheetLineClass] [varchar](50) NULL,
	[TimesheetLineClassType] [varchar](50) NOT NULL,
	[TaskName] [varchar](255) NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[DimTimesheetPeriodUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[DimTimesheetPeriodUpdate](
	[TimesheetPeriodKey] [int] NOT NULL,
	[TimesheetPeriodUID] [uniqueidentifier] NOT NULL,
	[PeriodName] [varchar](20) NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[EXT_CRT_MetadataLookup]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[EXT_CRT_MetadataLookup](
	[Id] [int] NULL,
	[ContentTypeID] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Stage].[Ext_MARS_CRT]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[Ext_MARS_CRT](
	[ContentTypeID] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ProjectNameId] [int] NULL,
	[StageGateValue] [nvarchar](max) NULL,
	[c_1WillThisBigIdeaDriveDesireValue] [nvarchar](max) NULL,
	[c_1aConceptValue] [nvarchar](max) NULL,
	[c_1bCategoryValue] [nvarchar](max) NULL,
	[c_1cBrandValue] [nvarchar](max) NULL,
	[c_2WillTheFoodAndPackDelightValue] [nvarchar](max) NULL,
	[c_2aGreatFoodValue] [nvarchar](max) NULL,
	[c_2bPackagingValue] [nvarchar](max) NULL,
	[c_2cFoodAndPackDesignValue] [nvarchar](max) NULL,
	[c_3HowWillWeMakeThisValue] [nvarchar](max) NULL,
	[c_3aFeasibilityValue] [nvarchar](max) NULL,
	[c_3bCapacityValue] [nvarchar](max) NULL,
	[c_3cCostsValue] [nvarchar](max) NULL,
	[c_4HowWillWeGetShoppersAndCustomersToDecideValue] [nvarchar](max) NULL,
	[c_4aChannelValue] [nvarchar](max) NULL,
	[c_4bCustomerValueValue] [nvarchar](max) NULL,
	[c_4cIntegratedCommercialPlanValue] [nvarchar](max) NULL,
	[c_5HowWillWeMakeMoneyValue] [nvarchar](max) NULL,
	[c_5aBusinessModelValue] [nvarchar](max) NULL,
	[c_5bIncrementalNetSalesValue] [nvarchar](max) NULL,
	[c_5cMarginValue] [nvarchar](max) NULL,
	[c_6CanWeDoThisWellValue] [nvarchar](max) NULL,
	[c_6aRightTimeValue] [nvarchar](max) NULL,
	[c_6bRightResourcesValue] [nvarchar](max) NULL,
	[c_6cSkillsAndToolsValue] [nvarchar](max) NULL,
	[c_1ActionPlan] [nvarchar](max) NULL,
	[c_1Comments] [nvarchar](max) NULL,
	[c_2ActionPlan] [nvarchar](max) NULL,
	[c_2Comments] [nvarchar](max) NULL,
	[c_3ActionPlan] [nvarchar](max) NULL,
	[c_3Comments] [nvarchar](max) NULL,
	[c_4ActionPlan] [nvarchar](max) NULL,
	[c_4Comments] [nvarchar](max) NULL,
	[c_5ActionPlan] [nvarchar](max) NULL,
	[c_5Comments] [nvarchar](max) NULL,
	[c_6ActionPlan] [nvarchar](max) NULL,
	[c_6Comments] [nvarchar](max) NULL,
	[OverallProjectStatusValue] [nvarchar](max) NULL,
	[Id] [int] NULL,
	[ContentType] [nvarchar](max) NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[CreatedById] [int] NULL,
	[ModifiedById] [int] NULL,
	[Owshiddenversion] [int] NULL,
	[Version] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[OverallComments] [nvarchar](max) NULL,
	[Projecttiervalue] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Stage].[ExtBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[ExtBusinessUnit](
	[Business_Unit_Name] [varchar](50) NULL,
	[Business_Unit_Full_Name] [varchar](100) NULL,
	[Consolidated_Business_Unit] [varchar](50) NULL,
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
/****** Object:  Table [Stage].[ExtFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[ExtFoodCategory](
	[Food_Category_Name] [varchar](50) NULL,
	[Food_Category_Full_Name] [varchar](100) NULL,
	[Food_Classification] [varchar](50) NULL,
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
/****** Object:  Table [Stage].[ExtGSIBridge]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[ExtGSIBridge](
	[Geography] [varchar](50) NULL,
	[Business Unit] [varchar](50) NULL,
	[Food Category] [varchar](50) NULL,
	[ProjectUID] [varchar](50) NULL,
	[ProjectName] [varchar](100) NULL,
	[Portfolio Bucket] [varchar](50) NULL,
	[Project Status] [varchar](50) NULL,
	[Proj Type] [varchar](50) NULL,
	[YEAR] [varchar](50) NULL,
	[Requested Start Ship] [varchar](50) NULL,
	[CANNIBAL] [varchar](50) NULL,
	[GSI] [varchar](50) NULL,
	[NSV] [varchar](50) NULL,
	[NSV_GSI] [varchar](50) NULL,
	[NSV_INC] [varchar](50) NULL,
	[WrapAroundNSV] [varchar](50) NULL,
	[IncWrapAroundNSV] [varchar](50) NULL,
	[GSIWrapAroundNSV] [varchar](50) NULL,
	[Over_3_Million] [varchar](50) NULL,
	[Over_15_Million] [varchar](50) NULL,
	[Parent Project] [varchar](50) NULL,
	[GSI_BU] [varchar](50) NULL,
	[GSI_GEO] [varchar](50) NULL,
	[Project_Link] [varchar](500) NULL,
	[DW_CRE_TS] [varchar](50) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [varchar](50) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](50) NULL,
	[DW_DEL_TS] [varchar](50) NULL,
	[DW_DEL_USR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[ExtPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[ExtPrimaryResourceType](
	[Primary_Resource_Type_Name] [varchar](50) NULL,
	[Primary_Resource_Type_Full_Name] [varchar](100) NULL,
	[Resource_Class] [varchar](50) NULL,
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
/****** Object:  Table [Stage].[ExtProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[ExtProjectType](
	[Project_Type_Name] [varchar](100) NULL,
	[Project_Type_Full_Name] [varchar](100) NULL,
	[Project_Category] [varchar](50) NULL,
	[Line_Color] [varchar](50) NULL,
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
/****** Object:  Table [Stage].[ExtRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[ExtRBS](
	[RBS_Name] [nvarchar](50) NULL,
	[RBS_Full_Name] [nvarchar](200) NULL,
	[Department] [nvarchar](50) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [nvarchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [nvarchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime] NULL,
	[DW_DEL_USR] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[ExtRedLineData]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[ExtRedLineData](
	[Date] [varchar](50) NULL,
	[Geography] [varchar](50) NULL,
	[Business_Unit] [varchar](50) NULL,
	[RedLine_Days] [varchar](50) NULL,
	[Line_Color] [nvarchar](10) NULL,
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
/****** Object:  Table [Stage].[FactAssignmentUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[FactAssignmentUpdate](
	[FactAssignmentKey] [int] NOT NULL,
	[AssignmentUID] [uniqueidentifier] NOT NULL,
	[ResourceKey] [int] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[YearMonthKey] [int] NOT NULL,
	[PlannedWork] [float] NULL,
	[Work] [float] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[FactProjectUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[FactProjectUpdate](
	[FactProjectKey] [int] NOT NULL,
	[ProjectUID] [uniqueidentifier] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[RequestedStartShipDateKey] [int] NOT NULL,
	[Stg1ApprovalDateKey] [int] NOT NULL,
	[Stg2ApprovalTargetDateKey] [int] NOT NULL,
	[StartupDateKey] [int] NOT NULL,
	[StartShipDateKey] [int] NOT NULL,
	[SavingsStartDateKey] [int] NOT NULL,
	[PDR1DueDateKey] [int] NOT NULL,
	[PDR1AnticipatedDateKey] [int] NOT NULL,
	[PDR2ReceivedDateKey] [int] NOT NULL,
	[PDR2DueDateKey] [int] NOT NULL,
	[ProjectCancelledDateKey] [int] NOT NULL,
	[PlantTestDateKey] [int] NOT NULL,
	[LAMDueDateKey] [int] NOT NULL,
	[LAMDateKey] [int] NOT NULL,
	[LAMReceivedDateKey] [int] NOT NULL,
	[NSV] [money] NULL,
	[GSIPercent] [float] NULL,
	[CannibalizationPercent] [float] NULL,
	[Compression] [float] NULL,
	[EstimatedPercentCompression] [float] NULL,
	[PlannedWork] [float] NULL,
	[Work] [float] NULL,
	[RemainingWork] [float] NULL,
	[EstimatedPotentialSavings] [float] NULL,
	[WeightedSavings] [float] NULL,
	[TotalVolumeWeight] [float] NULL,
	[LaunchBuildVolume] [float] NULL,
	[NSVAtPDR2] [float] NULL,
	[NSVAUD] [float] NULL,
	[ProbabilityOfTechnicalSuccess] [float] NULL,
	[LatestIncrGMPerWeight] [float] NULL,
	[LatestIncrGMPerUnit] [float] NULL,
	[LatestGMPercentNSV] [float] NULL,
	[LatestIncrGMPercentNSV] [float] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[FactTimesheetLineUpdate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stage].[FactTimesheetLineUpdate](
	[FactTimesheetLineKey] [int] NOT NULL,
	[TimesheetLineUID] [uniqueidentifier] NOT NULL,
	[TimesheetLineKey] [int] NOT NULL,
	[TimesheetPeriodKey] [int] NOT NULL,
	[ResourceKey] [int] NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[ActualWork] [float] NULL,
	[HashValue] [varchar](35) NOT NULL,
	[UpdateAuditKey] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stage].[MARSEPMLookupTable]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSEPMLookupTable](
	[LookupTableUID] [uniqueidentifier] NULL,
	[MemberUID] [uniqueidentifier] NULL,
	[MemberValue] [nvarchar](255) NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[LCID] [int] NULL,
	[MemberFullValue] [nvarchar](500) NULL,
	[MemberDescription] [nvarchar](1000) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSEPMLookupTable_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSEPMLookupTable_old](
	[LookupTableUID] [uniqueidentifier] NULL,
	[MemberUID] [uniqueidentifier] NULL,
	[MemberValue] [nvarchar](255) NULL,
	[ParentMemberUID] [uniqueidentifier] NULL,
	[LCID] [int] NULL,
	[MemberFullValue] [nvarchar](500) NULL,
	[MemberDescription] [nvarchar](1000) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSEPMMetadataDimension]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSEPMMetadataDimension](
	[DimensionUID] [uniqueidentifier] NULL,
	[DimensionName] [nvarchar](255) NULL,
	[DimensionTableName] [nvarchar](255) NULL,
	[DimensionIsIntrinsic] [bit] NULL,
	[HasNoHierarchy] [bit] NULL,
	[MemberType] [tinyint] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSEPMMetadataDimension_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSEPMMetadataDimension_old](
	[DimensionUID] [uniqueidentifier] NULL,
	[DimensionName] [nvarchar](255) NULL,
	[DimensionTableName] [nvarchar](255) NULL,
	[DimensionIsIntrinsic] [bit] NULL,
	[HasNoHierarchy] [bit] NULL,
	[MemberType] [tinyint] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmAssignment]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmAssignment](
	[AssignmentUID] [uniqueidentifier] NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[ResourceUID] [uniqueidentifier] NULL,
	[TaskUID] [uniqueidentifier] NULL,
	[TimesheetClassUID] [uniqueidentifier] NULL,
	[ResourceOwnerUID] [uniqueidentifier] NULL,
	[AssignmentWork] [numeric](25, 6) NULL,
	[AssignmentActualWork] [numeric](25, 6) NULL,
	[AssignmentPercentWorkCompleted] [smallint] NULL,
	[AssignmentStartDate] [datetime] NULL,
	[AssignmentFinishDate] [datetime] NULL,
	[AssignmentCreatedDate] [datetime] NULL,
	[AssignmentModifiedDate] [datetime] NULL,
	[TaskIsActive] [bit] NULL,
	[AssignmentRemainingWork] [numeric](26, 6) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmAssignment_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmAssignment_old](
	[AssignmentUID] [uniqueidentifier] NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[ResourceUID] [uniqueidentifier] NULL,
	[TaskUID] [uniqueidentifier] NULL,
	[TimesheetClassUID] [uniqueidentifier] NULL,
	[ResourceOwnerUID] [uniqueidentifier] NULL,
	[AssignmentWork] [numeric](25, 6) NULL,
	[AssignmentActualWork] [numeric](25, 6) NULL,
	[AssignmentPercentWorkCompleted] [smallint] NULL,
	[AssignmentStartDate] [datetime] NULL,
	[AssignmentFinishDate] [datetime] NULL,
	[AssignmentCreatedDate] [datetime] NULL,
	[AssignmentModifiedDate] [datetime] NULL,
	[TaskIsActive] [bit] NULL,
	[AssignmentRemainingWork] [numeric](26, 6) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmAssignmentByDay]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmAssignmentByDay](
	[AssignmentUID] [uniqueidentifier] NULL,
	[TimeByDay] [datetime] NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[TaskUID] [uniqueidentifier] NULL,
	[AssignmentWork] [numeric](25, 6) NULL,
	[AssignmentActualWork] [numeric](25, 6) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmAssignmentByDay_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmAssignmentByDay_old](
	[AssignmentUID] [uniqueidentifier] NULL,
	[TimeByDay] [datetime] NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[TaskUID] [uniqueidentifier] NULL,
	[AssignmentWork] [numeric](25, 6) NULL,
	[AssignmentActualWork] [numeric](25, 6) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmProject](
	[ProjectUID] [uniqueidentifier] NULL,
	[ProjectName] [nvarchar](255) NULL,
	[ProjectDescription] [nvarchar](max) NULL,
	[ProjectOwnerResourceUID] [uniqueidentifier] NULL,
	[ProjectStartDate] [datetime] NULL,
	[ProjectFinishDate] [datetime] NULL,
	[ProjectStatusDate] [datetime] NULL,
	[ProjectWorkspaceInternalHRef] [nvarchar](1024) NULL,
	[ProjectCreatedDate] [datetime] NULL,
	[ProjectModifiedDate] [datetime] NULL,
	[ProjectCalendarDuration] [int] NULL,
	[ProjectWork] [numeric](25, 6) NULL,
	[ProjectActualWork] [numeric](25, 6) NULL,
	[ProjectDuration] [numeric](25, 6) NULL,
	[ProjectActualDuration] [numeric](25, 6) NULL,
	[ProjectPercentCompleted] [smallint] NULL,
	[ProjectPercentWorkCompleted] [smallint] NULL,
	[ProjectResourcePlanWork] [numeric](25, 6) NULL,
	[ProjectRegularWork] [numeric](26, 6) NULL,
	[ProjectRemainingWork] [numeric](26, 6) NULL,
	[ProjectActualRegularWork] [numeric](26, 6) NULL,
	[ProjectRemainingRegularWork] [numeric](27, 6) NULL,
	[Est Potential Savings] [numeric](25, 6) NULL,
	[Weighted Savings] [numeric](25, 6) NULL,
	[IHUT Formula Due] [datetime] NULL,
	[Stg 1 Approval] [datetime] NULL,
	[COGS Plant Test 3] [datetime] NULL,
	[IHUT NLI Due] [datetime] NULL,
	[Stg 2 Approval Target] [datetime] NULL,
	[Sensory Comp] [datetime] NULL,
	[IHUT Prod Start] [datetime] NULL,
	[IHUT Top Lines Comp] [datetime] NULL,
	[SS Prod Start] [datetime] NULL,
	[Startup] [datetime] NULL,
	[Start Ship] [datetime] NULL,
	[Savings Start] [datetime] NULL,
	[PDR 1 Due Date] [datetime] NULL,
	[PDR 1 Anticipated Date] [datetime] NULL,
	[Requested Start Ship] [datetime] NULL,
	[Date PDR 2 Received] [datetime] NULL,
	[Date Project Cancelled] [datetime] NULL,
	[SS NLI Due] [datetime] NULL,
	[Final NLI Due] [datetime] NULL,
	[RMIS Due] [datetime] NULL,
	[SS Formula Due] [datetime] NULL,
	[Final Formula Due] [datetime] NULL,
	[Project Compression] [numeric](25, 6) NULL,
	[Template Duration] [numeric](25, 6) NULL,
	[Shelf Life] [numeric](25, 6) NULL,
	[Geography] [nvarchar](4000) NULL,
	[Business Unit] [nvarchar](4000) NULL,
	[Food Category] [nvarchar](4000) NULL,
	[Proj Type] [nvarchar](4000) NULL,
	[Proj Manager] [nvarchar](4000) NULL,
	[Managing Organization] [nvarchar](4000) NULL,
	[Plant] [nvarchar](4000) NULL,
	[Stage Gates] [nvarchar](4000) NULL,
	[Project Status] [nvarchar](4000) NULL,
	[Template Types] [nvarchar](4000) NULL,
	[Material Category] [nvarchar](4000) NULL,
	[Global Brand] [nvarchar](4000) NULL,
	[COGS_Pct Probability] [nvarchar](4000) NULL,
	[COGS_1st Yr in Std] [nvarchar](4000) NULL,
	[Buyer] [nvarchar](4000) NULL,
	[Parent Project] [nvarchar](4000) NULL,
	[Portfolio Bucket] [nvarchar](4000) NULL,
	[New Ingredients Required] [bit] NULL,
	[New Plant or Supplier] [bit] NULL,
	[Lead Project] [bit] NULL,
	[Backup Project] [bit] NULL,
	[Global Program] [bit] NULL,
	[Total Volume_Weight] [numeric](25, 6) NULL,
	[Launch Build Volume] [numeric](25, 6) NULL,
	[Percent Cannibalization] [numeric](25, 6) NULL,
	[Probability of Technical Success] [numeric](25, 6) NULL,
	[Est Pct Compression] [numeric](25, 6) NULL,
	[Est Pct Comp Ind] [numeric](25, 6) NULL,
	[NSV] [numeric](25, 6) NULL,
	[Latest Incr GM per Weight] [numeric](25, 6) NULL,
	[Latest Incr GM per Unit] [numeric](25, 6) NULL,
	[LAM GM Pct] [numeric](25, 6) NULL,
	[Latest Incr GM Pct NSV] [numeric](25, 6) NULL,
	[GSI Percent] [numeric](25, 6) NULL,
	[Project Equivalent] [numeric](25, 6) NULL,
	[NSV AUD] [numeric](25, 6) NULL,
	[Food Description] [nvarchar](4000) NULL,
	[Packaging Format] [nvarchar](4000) NULL,
	[Comment] [nvarchar](4000) NULL,
	[Marketing Lead] [nvarchar](4000) NULL,
	[Product Developer] [nvarchar](4000) NULL,
	[Food Technologist] [nvarchar](4000) NULL,
	[Packaging Engineer] [nvarchar](4000) NULL,
	[Project Risk] [nvarchar](4000) NULL,
	[Product Developer 2] [nvarchar](4000) NULL,
	[Pilot Plant Test] [nvarchar](4000) NULL,
	[Plant Test] [nvarchar](4000) NULL,
	[COGS Startup 2] [nvarchar](4000) NULL,
	[COGS Startup 3] [nvarchar](4000) NULL,
	[COGS Plant Test 2] [nvarchar](4000) NULL,
	[Date BFI Received] [datetime] NULL,
	[Date LAM Approved] [datetime] NULL,
	[PDR2 Comments] [nvarchar](4000) NULL,
	[LAM Comments] [nvarchar](4000) NULL,
	[Validation Method] [nvarchar](4000) NULL,
	[NSV at PDR2] [numeric](25, 6) NULL,
	[Stage Gate Flex] [bit] NULL,
	[Market Type] [nvarchar](4000) NULL,
	[PDR 2 Due Date] [datetime] NULL,
	[LAM Due Date] [datetime] NULL,
	[LAM Consumer Testing] [nvarchar](4000) NULL,
	[LAM] [datetime] NULL,
	[Strategic Fit] [nvarchar](4000) NULL,
	[Flavor] [nvarchar](4000) NULL,
	[Label Conversion] [nvarchar](4000) NULL,
	[AuditKey] [int] NULL,
	[Marketing Platform] [nvarchar](4000) NULL,
	[Granular Growth Strategy] [nvarchar](4000) NULL,
	[Final Artwork Due] [datetime] NULL,
	[Listing Process Start] [datetime] NULL,
	[Order Materials Start] [datetime] NULL,
	[Final Financials Due] [datetime] NULL,
	[Registration Process Ready] [datetime] NULL,
	[Preliminary Artwork Due] [datetime] NULL,
	[Stage 2 Financials Due] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmProject_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmProject_old](
	[ProjectUID] [uniqueidentifier] NULL,
	[ProjectName] [nvarchar](255) NULL,
	[ProjectDescription] [nvarchar](max) NULL,
	[ProjectOwnerResourceUID] [uniqueidentifier] NULL,
	[ProjectStartDate] [datetime] NULL,
	[ProjectFinishDate] [datetime] NULL,
	[ProjectStatusDate] [datetime] NULL,
	[ProjectWorkspaceInternalHRef] [nvarchar](1024) NULL,
	[ProjectCreatedDate] [datetime] NULL,
	[ProjectModifiedDate] [datetime] NULL,
	[ProjectCalendarDuration] [int] NULL,
	[ProjectWork] [numeric](25, 6) NULL,
	[ProjectActualWork] [numeric](25, 6) NULL,
	[ProjectDuration] [numeric](25, 6) NULL,
	[ProjectActualDuration] [numeric](25, 6) NULL,
	[ProjectPercentCompleted] [smallint] NULL,
	[ProjectPercentWorkCompleted] [smallint] NULL,
	[ProjectResourcePlanWork] [numeric](25, 6) NULL,
	[ProjectRegularWork] [numeric](26, 6) NULL,
	[ProjectRemainingWork] [numeric](26, 6) NULL,
	[ProjectActualRegularWork] [numeric](26, 6) NULL,
	[ProjectRemainingRegularWork] [numeric](27, 6) NULL,
	[Est Potential Savings] [numeric](25, 6) NULL,
	[Weighted Savings] [numeric](25, 6) NULL,
	[IHUT Formula Due] [datetime] NULL,
	[Stg 1 Approval] [datetime] NULL,
	[COGS Plant Test 3] [datetime] NULL,
	[IHUT NLI Due] [datetime] NULL,
	[Stg 2 Approval Target] [datetime] NULL,
	[Sensory Comp] [datetime] NULL,
	[IHUT Prod Start] [datetime] NULL,
	[IHUT Top Lines Comp] [datetime] NULL,
	[SS Prod Start] [datetime] NULL,
	[Startup] [datetime] NULL,
	[Start Ship] [datetime] NULL,
	[Savings Start] [datetime] NULL,
	[PDR 1 Due Date] [datetime] NULL,
	[PDR 1 Anticipated Date] [datetime] NULL,
	[Requested Start Ship] [datetime] NULL,
	[Date PDR 2 Received] [datetime] NULL,
	[Date Project Cancelled] [datetime] NULL,
	[SS NLI Due] [datetime] NULL,
	[Final NLI Due] [datetime] NULL,
	[RMIS Due] [datetime] NULL,
	[SS Formula Due] [datetime] NULL,
	[Final Formula Due] [datetime] NULL,
	[Project Compression] [numeric](25, 6) NULL,
	[Template Duration] [numeric](25, 6) NULL,
	[Shelf Life] [numeric](25, 6) NULL,
	[Geography] [nvarchar](4000) NULL,
	[Business Unit] [nvarchar](4000) NULL,
	[Food Category] [nvarchar](4000) NULL,
	[Proj Type] [nvarchar](4000) NULL,
	[Proj Manager] [nvarchar](4000) NULL,
	[Managing Organization] [nvarchar](4000) NULL,
	[Plant] [nvarchar](4000) NULL,
	[Stage Gates] [nvarchar](4000) NULL,
	[Project Status] [nvarchar](4000) NULL,
	[Template Types] [nvarchar](4000) NULL,
	[Material Category] [nvarchar](4000) NULL,
	[Global Brand] [nvarchar](4000) NULL,
	[COGS_Pct Probability] [nvarchar](4000) NULL,
	[COGS_1st Yr in Std] [nvarchar](4000) NULL,
	[Buyer] [nvarchar](4000) NULL,
	[Parent Project] [nvarchar](4000) NULL,
	[Portfolio Bucket] [nvarchar](4000) NULL,
	[New Ingredients Required] [bit] NULL,
	[New Plant or Supplier] [bit] NULL,
	[Lead Project] [bit] NULL,
	[Backup Project] [bit] NULL,
	[Global Program] [bit] NULL,
	[Total Volume_Weight] [numeric](25, 6) NULL,
	[Launch Build Volume] [numeric](25, 6) NULL,
	[Percent Cannibalization] [numeric](25, 6) NULL,
	[Probability of Technical Success] [numeric](25, 6) NULL,
	[Est Pct Compression] [numeric](25, 6) NULL,
	[Est Pct Comp Ind] [numeric](25, 6) NULL,
	[NSV] [numeric](25, 6) NULL,
	[Latest Incr GM per Weight] [numeric](25, 6) NULL,
	[Latest Incr GM per Unit] [numeric](25, 6) NULL,
	[Latest GM Pct NSV] [numeric](25, 6) NULL,
	[Latest Incr GM Pct NSV] [numeric](25, 6) NULL,
	[GSI Percent] [numeric](25, 6) NULL,
	[Project Equivalent] [numeric](25, 6) NULL,
	[NSV AUD] [numeric](25, 6) NULL,
	[Food Description] [nvarchar](4000) NULL,
	[Packaging Format] [nvarchar](4000) NULL,
	[Comment] [nvarchar](4000) NULL,
	[Marketing Lead] [nvarchar](4000) NULL,
	[Product Developer] [nvarchar](4000) NULL,
	[Food Technologist] [nvarchar](4000) NULL,
	[Packaging Engineer] [nvarchar](4000) NULL,
	[Project Risk] [nvarchar](4000) NULL,
	[Product Developer 2] [nvarchar](4000) NULL,
	[Pilot Plant Test] [nvarchar](4000) NULL,
	[Plant Test] [nvarchar](4000) NULL,
	[COGS Startup 2] [nvarchar](4000) NULL,
	[COGS Startup 3] [nvarchar](4000) NULL,
	[COGS Plant Test 2] [nvarchar](4000) NULL,
	[Date BFI Received] [datetime] NULL,
	[Date LAM Received] [datetime] NULL,
	[PDR2 Comments] [nvarchar](4000) NULL,
	[LAM Comments] [nvarchar](4000) NULL,
	[Validation Method] [nvarchar](4000) NULL,
	[NSV at PDR2] [numeric](25, 6) NULL,
	[Stage Gate Flex] [bit] NULL,
	[Market Type] [nvarchar](4000) NULL,
	[PDR 2 Due Date] [datetime] NULL,
	[LAM Due Date] [datetime] NULL,
	[LAM Consumer Testing] [nvarchar](4000) NULL,
	[LAM] [datetime] NULL,
	[Strategic Fit] [nvarchar](4000) NULL,
	[Flavor] [nvarchar](4000) NULL,
	[Label Conversion] [nvarchar](4000) NULL,
	[AuditKey] [int] NULL,
	[Marketing Platform] [nvarchar](4000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmResource]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmResource](
	[ResourceUID] [uniqueidentifier] NULL,
	[ResourceName] [nvarchar](255) NULL,
	[ResourceEmailAddress] [nvarchar](255) NULL,
	[ResourceType] [smallint] NULL,
	[ResourceMaxUnits] [numeric](25, 6) NULL,
	[ResourceNTAccount] [nvarchar](255) NULL,
	[ResourceIsActive] [bit] NULL,
	[ResourceIsGeneric] [bit] NULL,
	[ResourceCreatedDate] [datetime] NULL,
	[ResourceModifiedDate] [datetime] NULL,
	[UserClaimsAccount] [nvarchar](255) NULL,
	[RBS] [nvarchar](4000) NULL,
	[Time Tracker] [bit] NULL,
	[Primary RES Type] [nvarchar](4000) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPEpmResource_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPEpmResource_old](
	[ResourceUID] [uniqueidentifier] NULL,
	[ResourceName] [nvarchar](255) NULL,
	[ResourceEmailAddress] [nvarchar](255) NULL,
	[ResourceType] [smallint] NULL,
	[ResourceMaxUnits] [numeric](25, 6) NULL,
	[ResourceNTAccount] [nvarchar](255) NULL,
	[ResourceIsActive] [bit] NULL,
	[ResourceIsGeneric] [bit] NULL,
	[ResourceCreatedDate] [datetime] NULL,
	[ResourceModifiedDate] [datetime] NULL,
	[UserClaimsAccount] [nvarchar](255) NULL,
	[RBS] [nvarchar](4000) NULL,
	[Time Tracker] [bit] NULL,
	[Primary RES Type] [nvarchar](4000) NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPTimesheetline]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPTimesheetline](
	[PeriodUID] [uniqueidentifier] NULL,
	[TimesheetUID] [uniqueidentifier] NULL,
	[TimesheetStatus] [nvarchar](1000) NULL,
	[TimesheetStatusID] [tinyint] NULL,
	[TimesheetLineClass] [nvarchar](255) NULL,
	[TimesheetLineClassType] [tinyint] NULL,
	[ResourceUID] [uniqueidentifier] NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[TaskName] [nvarchar](255) NULL,
	[TaskUID] [uniqueidentifier] NULL,
	[TimesheetLineUID] [uniqueidentifier] NULL,
	[PlannedWork] [numeric](38, 6) NULL,
	[ActualWorkBillable] [numeric](38, 6) NULL,
	[ActualWorkNonBillable] [numeric](38, 6) NULL,
	[ActualOvertimeWorkBillable] [numeric](38, 6) NULL,
	[ActualOvertimeWorkNonBillable] [numeric](38, 6) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPTimesheetline_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPTimesheetline_old](
	[PeriodUID] [uniqueidentifier] NULL,
	[TimesheetUID] [uniqueidentifier] NULL,
	[TimesheetStatus] [nvarchar](1000) NULL,
	[TimesheetStatusID] [tinyint] NULL,
	[TimesheetLineClass] [nvarchar](255) NULL,
	[TimesheetLineClassType] [tinyint] NULL,
	[ResourceUID] [uniqueidentifier] NULL,
	[ProjectUID] [uniqueidentifier] NULL,
	[TaskName] [nvarchar](255) NULL,
	[TaskUID] [uniqueidentifier] NULL,
	[TimesheetLineUID] [uniqueidentifier] NULL,
	[PlannedWork] [numeric](38, 6) NULL,
	[ActualWorkBillable] [numeric](38, 6) NULL,
	[ActualWorkNonBillable] [numeric](38, 6) NULL,
	[ActualOvertimeWorkBillable] [numeric](38, 6) NULL,
	[ActualOvertimeWorkNonBillable] [numeric](38, 6) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPTimesheetlineOlap]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPTimesheetlineOlap](
	[TimesheetLineUID] [uniqueidentifier] NULL,
	[TimesheetUID] [uniqueidentifier] NULL,
	[ProjectNameUID] [uniqueidentifier] NULL,
	[TaskNameUID] [uniqueidentifier] NULL,
	[AssignmentUID] [uniqueidentifier] NULL,
	[ClassUID] [uniqueidentifier] NULL,
	[ValidationType] [tinyint] NULL,
	[ApproverResourceNameUID] [uniqueidentifier] NULL,
	[TimesheetLineStatus] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPTimesheetlineOlap_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPTimesheetlineOlap_old](
	[TimesheetLineUID] [uniqueidentifier] NULL,
	[TimesheetUID] [uniqueidentifier] NULL,
	[ProjectNameUID] [uniqueidentifier] NULL,
	[TaskNameUID] [uniqueidentifier] NULL,
	[AssignmentUID] [uniqueidentifier] NULL,
	[ClassUID] [uniqueidentifier] NULL,
	[ValidationType] [tinyint] NULL,
	[ApproverResourceNameUID] [uniqueidentifier] NULL,
	[TimesheetLineStatus] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPTimesheetPeriod]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPTimesheetPeriod](
	[PeriodUID] [uniqueidentifier] NULL,
	[PeriodStatusID] [tinyint] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PeriodName] [nvarchar](255) NULL,
	[LCID] [int] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Stage].[MARSMSPTimesheetPeriod_old]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stage].[MARSMSPTimesheetPeriod_old](
	[PeriodUID] [uniqueidentifier] NULL,
	[PeriodStatusID] [tinyint] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PeriodName] [nvarchar](255) NULL,
	[LCID] [int] NULL,
	[AuditKey] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[UVW_MARS_CRT_NEW]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[UVW_MARS_CRT_NEW] AS
SELECT CML.Title as ProjectNameID, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments,
DP.RequestedStartShip as LaunchDate,
DPM.Name as LPM,
DP.MarketingLead as Marketer,
DP.ProductDeveloper as Developer FROM
(SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments
FROM
(
  SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],[c_1WillThisBigIdeaDriveDesireValue],[c_1aConceptValue],[c_1bCategoryValue],[c_1cBrandValue]
  ,ISNULL([c_1Comments],'') AS c_1Comments
  FROM [dbo].[Ext_MARS_CRT]
) AS cp
UNPIVOT 
(
  SubMetricColor FOR Submetric IN ([c_1aConceptValue],[c_1bCategoryValue],[c_1cBrandValue])
) AS up
UNPIVOT
(
MetricColor FOR Metric IN ([c_1WillThisBigIdeaDriveDesireValue])
) AS up1
UNPIVOT
(
Comments FOR CommentName IN (c_1Comments)
)AS up2
UNION ALL
SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments
FROM
(
  SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],[c_2WillTheFoodAndPackDelightValue]
      ,[c_2aGreatFoodValue]
      ,[c_2bPackagingValue]
      ,[c_2cFoodAndPackDesignValue]
	  ,ISNULL([c_2Comments],'') AS c_2Comments
  FROM [dbo].[Ext_MARS_CRT]
) AS cp
UNPIVOT 
(
  SubMetricColor FOR Submetric IN ([c_2aGreatFoodValue]
      ,[c_2bPackagingValue]
      ,[c_2cFoodAndPackDesignValue])
) AS up
UNPIVOT
(
MetricColor FOR Metric IN ([c_2WillTheFoodAndPackDelightValue])
) AS up1
UNPIVOT
(
Comments FOR CommentName IN (c_2Comments)
)AS up2

UNION ALL
SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments
FROM
(
  SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],[c_3HowWillWeMakeThisValue]
      ,[c_3aFeasibilityValue]
      ,[c_3bCapacityValue]
      ,[c_3cCostsValue]
	  ,ISNULL([c_3Comments],'') AS c_3Comments
  FROM [dbo].[Ext_MARS_CRT]
) AS cp
UNPIVOT 
(
  SubMetricColor FOR Submetric IN (
       [c_3aFeasibilityValue]
      ,[c_3bCapacityValue]
      ,[c_3cCostsValue])
) AS up
UNPIVOT
(
MetricColor FOR Metric IN ([c_3HowWillWeMakeThisValue])
) AS up1
UNPIVOT
(
Comments FOR CommentName IN (c_3Comments)
)AS up2

UNION ALL
SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments
FROM
(
  SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],[c_4HowWillWeGetShoppersAndCustomersToDecideValue]
      ,[c_4aChannelValue]
      ,[c_4bCustomerValueValue]
      ,[c_4cIntegratedCommercialPlanValue]
	  ,ISNULL([c_4Comments],'') AS c_4Comments
  FROM [dbo].[Ext_MARS_CRT]
) AS cp
UNPIVOT 
(
  SubMetricColor FOR Submetric IN (
      [c_4aChannelValue]
      ,[c_4bCustomerValueValue]
      ,[c_4cIntegratedCommercialPlanValue]) )AS up
UNPIVOT
(
MetricColor FOR Metric IN ([c_4HowWillWeGetShoppersAndCustomersToDecideValue])
) AS up1
UNPIVOT
(
Comments FOR CommentName IN (c_4Comments)
)AS up2

UNION ALL
SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments
FROM
(
  SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],[c_5HowWillWeMakeMoneyValue]
      ,[c_5aBusinessModelValue]
      ,[c_5bIncrementalNetSalesValue]
      ,[c_5cMarginValue]
	  ,ISNULL([c_5Comments],'') AS c_5Comments
  FROM [dbo].[Ext_MARS_CRT]
) AS cp
UNPIVOT 
(
  SubMetricColor FOR Submetric IN (
       [c_5aBusinessModelValue]
      ,[c_5bIncrementalNetSalesValue]
      ,[c_5cMarginValue]) )AS up
UNPIVOT
(
MetricColor FOR Metric IN ([c_5HowWillWeMakeMoneyValue])
) AS up1
UNPIVOT
(
Comments FOR CommentName IN (c_5Comments)
)AS up2
UNION ALL
SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],Submetric,SubMetricColor,Metric,MetricColor,CommentName,Comments
FROM
(
  SELECT ProjectNameId, StageGateValue,[OverallProjectStatusValue],[c_6CanWeDoThisWellValue]
      ,[c_6aRightTimeValue]
      ,[c_6bRightResourcesValue]
      ,[c_6cSkillsAndToolsValue]
	  ,ISNULL([c_6Comments],'') AS c_6Comments
  FROM [dbo].[Ext_MARS_CRT]
) AS cp
UNPIVOT 
(
  SubMetricColor FOR Submetric IN (
       [c_6aRightTimeValue]
      ,[c_6bRightResourcesValue]
      ,[c_6cSkillsAndToolsValue]) )AS up
UNPIVOT
(
MetricColor FOR Metric IN ([c_6CanWeDoThisWellValue])
) AS up1
UNPIVOT
(
Comments FOR CommentName IN (c_6Comments)
)AS up2
)ILV
LEFT JOIN 
[dbo].[EXT_CRT_MetadataLookup] CML
ON ILV.ProjectNameId=CML.Id
LEFT JOIN 
[dbo].[DimProject]  DP
ON CML.Title=DP.Name AND DP.RowIsCurrent=1
LEFT JOIN 
[dbo].[DimProjectManager] DPM
ON DP.ProjectManagerKey=DPM.ProjectManagerKey







GO
/****** Object:  View [dbo].[UVW_MARS_CRT_NEW_2]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_MARS_CRT_NEW_2]
AS
WITH CTE AS(
SELECT DISTINCT MCR.*,[ProjectNameID]
 FROM [dbo].MARS_CRT_REPORT MCR
		  CROSS Join [dbo].[UVW_MARS_CRT_NEW] UMCN),

CTE2
AS
(SELECT CTE.[ProjectNameID],CTE.StageGateValue,
  case CTE.StageGateValue 
	   when 'BFI' then 1
	   when 'PDR 1'then 2
	   when 'PDR 2'then 3
	   when 'LAM'then 4
	   when 'In-Market'then 5 end StageGateValue_latest,[OverallProjectStatusValue]  FROM CTE LEFT JOIN
[dbo].[UVW_MARS_CRT_NEW] UMCN ON
CTE.[ProjectNameID]=UMCN.[ProjectNameID] AND
CTE.StageGateValue=UMCN.StageGateValue AND
CTE.[Submetric]=UMCN.[Submetric] AND
CTE.[Metric]=UMCN.[Metric] AND
CTE.[CommentName]=UMCN.[CommentName] WHERE [OverallProjectStatusValue] is not null) 


SELECT 
       CTE.[ProjectNameID],
       CTE.StageGateValue,
	   case StageGateValue_latest 
	   when  1 then 'BFI'
	   when 2 then 'PDR 1'
	   when 3 then 'PDR 2'
	   when 4 then 'LAM'
	   when 5 then 'In-Market' end  as StageGateValue_latest
      ,[OverallProjectStatusValue]
      ,CTE.[Submetric]
      ,[SubMetricColor]
      ,CTE.[Metric]
      ,[MetricColor]
      ,CTE.[CommentName]
      ,[Comments]
      ,[LaunchDate]
      ,[LPM]
      ,[Marketer]
      ,[Developer] FROM CTE LEFT JOIN
[dbo].[UVW_MARS_CRT_NEW] UMCN ON
CTE.[ProjectNameID]=UMCN.[ProjectNameID] AND
CTE.StageGateValue=UMCN.StageGateValue AND
CTE.[Submetric]=UMCN.[Submetric] AND
CTE.[Metric]=UMCN.[Metric] AND
CTE.[CommentName]=UMCN.[CommentName]
LEFT JOIN (SELECT [ProjectNameID], MAX(StageGateValue_latest) StageGateValue_latest FROM CTE2 GROUP BY [ProjectNameID]) B 
ON CTE.[ProjectNameID]=B.[ProjectNameID]
---WHERE  CTE.[ProjectNameID]  LIKE 'Neha%' 
-- Musketeer Global



GO
/****** Object:  View [Datamart].[DimRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimRBS]
AS

SELECT 
	dim.RBSKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimRBS as dim


GO
/****** Object:  View [Datamart].[DimResource]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Datamart].[DimResource]
AS

SELECT 
	dim.[ResourceKey]
	,dim.[ResourceUID]
	,dim.[EmailAddress]
	,dim.[Name]
	,dim.[ADAccount]
	,CASE 
	  WHEN dim.[IsActive] = 0 THEN 'False'
	  ELSE 'True'
	 END as [IsActive]
	,CASE 
	  WHEN dim.[IsGeneric] = 0 THEN 'False'
	  ELSE 'True'
	 END as [IsGeneric]
	,CASE 
	  WHEN dim.[IsTimeTracker] = 0 THEN 'False'
	  ELSE 'True'
	 END as [IsTimeTracker]
	,dim.[RBSKey]
	,dim.[PrimaryResourceTypeKey]
FROM dbo.DimResource as dim


GO
/****** Object:  View [Datamart].[DimTimesheetPeriod]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimTimesheetPeriod]
AS

SELECT 
	dim.TimesheetPeriodKey,
	dim.PeriodName,
	CASE RIGHT(dim.PeriodName,3)
	  WHEN 'Jan' THEN CAST(LEFT(dim.PeriodName,4) + '01' as int)
	  WHEN 'Feb' THEN CAST(LEFT(dim.PeriodName,4) + '02' as int)
	  WHEN 'Mar' THEN CAST(LEFT(dim.PeriodName,4) + '03' as int)
	  WHEN 'Apr' THEN CAST(LEFT(dim.PeriodName,4) + '04' as int)
	  WHEN 'May' THEN CAST(LEFT(dim.PeriodName,4) + '05' as int)
	  WHEN 'Jun' THEN CAST(LEFT(dim.PeriodName,4) + '06' as int)
	  WHEN 'Jul' THEN CAST(LEFT(dim.PeriodName,4) + '07' as int)
	  WHEN 'Aug' THEN CAST(LEFT(dim.PeriodName,4) + '08' as int)
	  WHEN 'Sep' THEN CAST(LEFT(dim.PeriodName,4) + '09' as int)
	  WHEN 'oct' THEN CAST(LEFT(dim.PeriodName,4) + '10' as int)
	  WHEN 'Nov' THEN CAST(LEFT(dim.PeriodName,4) + '11' as int)
	  WHEN 'Dec' THEN CAST(LEFT(dim.PeriodName,4) + '12' as int)
	  ELSE CAST(LEFT(dim.PeriodName,4) + '999999' as int)
	END as PeriodNameSortOrder
FROM dbo.DimTimesheetPeriod as dim


GO
/****** Object:  View [dbo].[UVW_MARS_OVERTIME_ANALYSIS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_MARS_OVERTIME_ANALYSIS]
AS
SELECT ERB.DEPARTMENT, 
ERB.RBS_Name Team,
DR.Name AS ResourceName,
DR.ResourceKey AS ResourceKey,
DTP.PeriodName,
SUBSTRING(DTP.PeriodName,1,4) as PeriodYear,
ISNULL(FT.ActualWork,0) as ActualWork,
dbo.fnDaysInMonthExcludingWeekends(SUBSTRING(CAST(DTP.PeriodNameSortOrder AS VARCHAR(6)),1,4),
SUBSTRING(CAST(DTP.PeriodNameSortOrder AS VARCHAR(6)),5,2) ) WDays,
DR.IsActive,
DR.IsTimeTracker
FROM [Datamart].[DimResource] DR
LEFT join [Datamart].[DimRBS] DRB ON
DR.RBSKey=DRB.RBSKey 
LEFT JOIN dbo.ExtRBS ERB ON
DRB.Name = ERB.RBS_Name
LEFT join
[dbo].[FactTimesheetLine] FT ON
DR.ResourceKey=FT.ResourceKey 
LEFT JOIN 
Datamart.DimTimesheetPeriod DTP
ON FT.TimesheetPeriodKey=DTP.TimesheetPeriodKey  
where (ERB.DEPARTMENT IS NOT NULL  AND ERB.DEPARTMENT NOT IN ('NO RBS','Quality'))






GO
/****** Object:  View [dbo].[UVW_MARS_OVERTIME_ANALYSIS_HIST]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[UVW_MARS_OVERTIME_ANALYSIS_HIST]
AS
SELECT ERB.DEPARTMENT, 
ERB.RBS_Name Team,
DR.Name AS ResourceName,
DR.ResourceKey AS ResourceKey,
DTP.PeriodName,
SUBSTRING(DTP.PeriodName,1,4) as PeriodYear,
ISNULL(FT.ActualWork,0) as ActualWork,
dbo.fnDaysInMonthExcludingWeekends(SUBSTRING(CAST(DTP.PeriodNameSortOrder AS VARCHAR(6)),1,4),
SUBSTRING(CAST(DTP.PeriodNameSortOrder AS VARCHAR(6)),5,2) ) WDays,
DR.IsActive,
DR.IsTimeTracker,
DD.Date AS SnapShotDate
FROM [Datamart].[DimResource] DR
LEFT join [Datamart].[DimRBS] DRB ON
DR.RBSKey=DRB.RBSKey 
LEFT JOIN dbo.ExtRBS ERB ON
DRB.Name = ERB.RBS_Name
LEFT join
[dbo].[FactTimesheetLineSnapshot] FT ON
DR.ResourceKey=FT.ResourceKey 
LEFT JOIN 
Datamart.DimTimesheetPeriod DTP
ON FT.TimesheetPeriodKey=DTP.TimesheetPeriodKey  
LEFT JOIN
[dbo].DimDate DD 
ON FT.SnapshotDateKey=DD.DateKey
where (ERB.DEPARTMENT IS NOT NULL  AND ERB.DEPARTMENT NOT IN ('NO RBS','Quality'))






GO
/****** Object:  View [Datamart].[DimBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Datamart].[DimBusinessUnit]
AS

SELECT 
	dim.BusinessUnitKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimBusinessUnit as dim


GO
/****** Object:  View [Datamart].[DimBuyer]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Datamart].[DimBuyer]
AS

SELECT 
	dim.BuyerKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimBuyer as dim


GO
/****** Object:  View [Datamart].[DimDate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Datamart].[DimDate] AS
SELECT 
DateKey, CAST(NULLIF(Date,'') as datetime) as [Date], DateShortName, DateLongName, JulianDate, JulianDateModified, YearKey, YearName, YearStartDate, YearEndDate, YearSeqNo, YearQuarterKey, YearQuarterName, QuarterOfYearKey, QuarterOfYearName, YearQuarterStartDate, YearQuarterEndDate, YearQuarterSeqNo, YearMonthKey, YearMonthShortName, YearMonthLongName, MonthOfYearKey, MonthOfYearShortName, MonthOfYearLongName, YearMonthStartDate, YearMonthEndDate, YearMonthSeqNo, YearWeekKey, YearWeekShortName, YearWeekLongName, YearWeekStartDate, YearWeekEndDate, YearWeekSeqNo, WeekOfYearKey, WeekOfYearShortName, WeekOfYearLongName, YearDOYKey, YearDOYShortName, YearDOYLongName, DayOfYearKey, DayOfYearName, DayOfMonthKey, DayOfMonthName, DayOfWeekKey, DayOfWeekName, ManufacturingYearKey, ManufacturingYearName, ManufacturingYearStartDate, ManufacturingYearEndDate, ManufacturingYearSeqNo, ManufacturingYearQuarterKey, ManufacturingYearQuarterName, ManufacturingQuarterOfYearKey, ManufacturingQuarterOfYearName, ManufacturingYearQuarterStartDate, ManufacturingYearQuarterEndDate, ManufacturingYearQuarterSeqNo, ManufacturingYearMonthKey, ManufacturingYearMonthName, ManufacturingMonthOfYearKey, ManufacturingMonthOfYearShortName, ManufacturingMonthOfYearLongName, ManufacturingYearMonthStartDate, ManufacturingYearMonthEndDate, ManufacturingYearMonthSeqNo, ManufacturingYearWeekKey, ManufacturingYearWeekShortName, ManufacturingYearWeekLongName, ManufacturingYearWeekSeqNo, ManufacturingYearDayOfYearKey, ManufacturingYearDayOfYearName, IsWeekend, IsWeekday, IsHoliday, HolidayName
FROM dbo.DimDate



GO
/****** Object:  View [Datamart].[DimFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimFoodCategory]
AS

SELECT 
	dim.FoodCategoryKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimFoodCategory as dim


GO
/****** Object:  View [Datamart].[DimGeography]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimGeography]
AS

SELECT 
	dim.GeographyKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimGeography as dim


GO
/****** Object:  View [Datamart].[DimGlobalBrand]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimGlobalBrand]
AS

SELECT 
	dim.GlobalBrandKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimGlobalBrand as dim


GO
/****** Object:  View [Datamart].[DimMaterialCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimMaterialCategory]
AS

SELECT 
	dim.MaterialCategoryKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimMaterialCategory as dim


GO
/****** Object:  View [Datamart].[DimParentProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimParentProject]
AS

SELECT 
	dim.ParentProjectKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimParentProject as dim


GO
/****** Object:  View [Datamart].[DimPlantLocation]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimPlantLocation]
AS

SELECT 
	dim.PlantLocationKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimPlantLocation as dim


GO
/****** Object:  View [Datamart].[DimPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimPrimaryResourceType]
AS

SELECT 
	dim.PrimaryResourceTypeKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimPrimaryResourceType as dim


GO
/****** Object:  View [Datamart].[DimProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimProject] AS 
SELECT 
	dim.[ProjectKey]
	,dim.[ProjectUID]
	,dim.[Name]
	,dim.[Description]
	,dim.[StartDate]
	,dim.[FinishDate]
	,dim.[URL]
	,dim.[CreatedDate]
	,dim.[ModifiedDate]
	,dim.[CalendarDurationDays]
	,dim.[IHUTFormulaDue]
	,dim.[COGSPlantTest3]
	,dim.[IHUTNLIDue]
	,dim.[SensoryCompletion]
	,dim.[IHUTProdStart]
	,dim.[IHUTTopLinesCompletion]
	,dim.[SSProdStart]
	,dim.[RequestedStartShip]
	,dim.[SSNLIDue]
	,dim.[FinalNLIDue]
	,dim.[RMISDue]
	,dim.[SSFormulaDue]
	,dim.[FinalFormulaDue]
	,dim.[TemplateDurationDays]
	,dim.[ShelfLifeDays]
	,dim.[GeographyKey]
	,dim.[BusinessUnitKey]
	,dim.[FoodCategoryKey]
	,dim.[ProjectTypeKey]
	,dim.[ProjectManagerKey]
	,dim.[PlantLocationKey]
	,dim.[StageGateKey]
	,dim.[Status]
	,dim.[TemplateTypeKey]
	,dim.[MaterialCategoryKey]
	,dim.[GlobalBrandKey]
	,dim.[COGSPercentProbability]
	,dim.[COGS1stYearInStd]
	,dim.[BuyerKey]
	,dim.[ParentProjectKey]
	,dim.[PortfolioBucket]
	,dim.[NewIngredientsRequired]
	,dim.[NewPlantorSupplier]
	,dim.[isLeadProject]
	,dim.[isBackupProject]
	,dim.[Equivalent]
	,dim.[FoodDescription]
	,dim.[PackagingFormat]
	,dim.[Comment]
	,dim.[MarketingLead]
	,dim.[ProductDeveloper]
	,dim.[FoodTechnologist]
	,dim.[PackagingEngineer]
	,dim.[Risk]
	,dim.[ProductDeveloper2]
	,dim.[PilotPlantTest]
	,dim.[COGSStartup2]
	,dim.[COGSStartup3]
	,dim.[COGSPlantTest2]
	,dim.[DateBFIReceived]
	,dim.[PDR2Comments]
	,dim.[LAMComments]
	,dim.[ValidationMethod]
	,dim.[IsStageGateFlex]
	,dim.[MarketType]
	,dim.[LAMConsumerTesting]
	,dim.[StrategicFit]
	,dim.[Flavor]
	,dim.[LabelConversion]
	,dim.[RowIsCurrent]
	,dim.[RowStartDate]
	,dim.[RowEndDate]
	,dim.[RowVersion]
	,dim.[IsDeleted]
	,dim.[MarketingPlatform]
	,dim.[Granular Growth Strategy]
    ,dim.[Final Artwork Due] 
    ,dim.[Listing Process Start]
    ,dim.[Order Materials Start]
    ,dim.[Final Financials Due] 
    ,dim.[Registration Process Ready]
    ,dim.[Preliminary Artwork Due]
    ,dim.[Stage 2 Financials Due]

FROM dbo.DimProject as dim




GO
/****** Object:  View [Datamart].[DimProjectManager]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimProjectManager]
AS

SELECT 
	dim.ProjectManagerKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimProjectManager as dim


GO
/****** Object:  View [Datamart].[DimProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimProjectType]
AS

SELECT 
	dim.ProjectTypeKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimProjectType as dim


GO
/****** Object:  View [Datamart].[DimStageGate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimStageGate]
AS

SELECT 
	dim.StageGateKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimStageGate as dim


GO
/****** Object:  View [Datamart].[DimTemplateType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimTemplateType]
AS

SELECT 
	dim.TemplateTypeKey,
	dim.Name,
	dim.FullName,
	dim.ParentKey
FROM dbo.DimTemplateType as dim


GO
/****** Object:  View [Datamart].[DimTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[DimTimesheetLine]
AS

SELECT 
	dim.TimesheetLineKey,
	dim.TimesheetStatus,
	dim.TimesheetLineClass,
	dim.TimesheetLineClassType,
	dim.TaskName
FROM dbo.DimTimesheetLine as dim


GO
/****** Object:  View [Datamart].[FactAssignment]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[FactAssignment]
AS

SELECT 
	f.[FactAssignmentKey]
	,f.[ResourceKey]
	,f.[ProjectKey]
	,f.YearMonthKey
	,f.[PlannedWork]
	,f.[Work]
FROM dbo.FactAssignment as f


GO
/****** Object:  View [Datamart].[FactProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Datamart].[FactProject]
AS

SELECT 
	f.[FactProjectKey]
	,f.[ProjectKey]
	,f.[RequestedStartShipDateKey]
	,f.[NSV]
	,f.[GSIPercent]
	,f.[CannibalizationPercent]
	,f.[Compression]
	,f.[EstimatedPercentCompression]
	,f.[PlannedWork]
	,f.[Work]
	,f.[RemainingWork]
	,f.[EstimatedPotentialSavings]
	,f.[WeightedSavings]
	,f.[TotalVolumeWeight]
	,f.[LaunchBuildVolume]
	,f.[NSVAtPDR2]
	,f.[NSVAUD]
	,f.[ProbabilityOfTechnicalSuccess]
	,f.[LatestIncrGMPerWeight]
	,f.[LatestIncrGMPerUnit]
	,f.[LatestGMPercentNSV]
	,f.[LatestIncrGMPercentNSV]
    ,f.[Stg1ApprovalDateKey] 
	,f.[Stg2ApprovalTargetDateKey]
	,f.[StartupDateKey] 
	,f.[StartShipDateKey]
	,f.[SavingsStartDateKey] 
	,f.[PDR1DueDateKey] 
	,f.[PDR1AnticipatedDateKey]
	,f.[PDR2ReceivedDateKey]
	,f.[PDR2DueDateKey]
	,f.[ProjectCancelledDateKey]
	,f.[PlantTestDateKey]
	,f.[LAMDueDateKey]
	,f.[LAMDateKey]
	,f.[LAMReceivedDateKey] 
	,f.IsDeleted
FROM dbo.FactProject as f


GO
/****** Object:  View [Datamart].[FactProjectSnapshot]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Datamart].[FactProjectSnapshot]
AS

WITH CurrentProject AS
(
	SELECT 
		[ProjectUID],
		[ProjectKey]
	FROM dbo.DimProject d
	WHERE RowIsCurrent = 1
)
SELECT 
	f.[FactProjectSnapshotKey]
	,f.[SnapshotDateKey]
	,f.[ProjectUID]
	,f.[ProjectKey]
	,cp.ProjectKey as CurrentProjectKey
	,f.[RequestedStartShipDateKey]
	,f.[Stg1ApprovalDateKey]
	,f.[Stg2ApprovalTargetDateKey]
	,f.[StartupDateKey] 
	,f.[StartShipDateKey] 
	,f.[SavingsStartDateKey]
	,f.[PDR1DueDateKey] 
	,f.[PDR1AnticipatedDateKey] 
	,f.[PDR2ReceivedDateKey] 
	,f.[PDR2DueDateKey] 
	,f.[ProjectCancelledDateKey] 
	,f.[PlantTestDateKey] 
	,f.[LAMDueDateKey] 
	,f.[LAMDateKey] 
	,f.[LAMReceivedDateKey] 
	,f.[NSV]
	,f.[GSIPercent]
	,f.[CannibalizationPercent]
	,f.[Compression]
	,f.[EstimatedPercentCompression]
	,f.[PlannedWork]
	,f.[Work]
	,f.[RemainingWork]
	,f.[EstimatedPotentialSavings]
	,f.[WeightedSavings]
	,f.[TotalVolumeWeight]
	,f.[LaunchBuildVolume]
	,f.[NSVAtPDR2]
	,f.[NSVAUD]
	,f.[ProbabilityOfTechnicalSuccess]
	,f.[LatestIncrGMPerWeight]
	,f.[LatestIncrGMPerUnit]
	,f.[LatestGMPercentNSV]
	,f.[LatestIncrGMPercentNSV]
	,f.IsDeleted
FROM dbo.FactProjectSnapshot as f
INNER JOIN CurrentProject as cp
	ON cp.ProjectUID = f.ProjectUID


GO
/****** Object:  View [Datamart].[FactTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Datamart].[FactTimesheetLine]
AS

SELECT 
	f.[FactTimesheetLineKey]
	,f.[TimesheetLineKey]
	,f.[TimesheetPeriodKey]
	,f.[ResourceKey]
	,f.[ProjectKey]
	,f.[ActualWork]

FROM dbo.FactTimesheetLine as f


GO
/****** Object:  View [Stage].[DimBusinessUnit]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Stage].[DimBusinessUnit]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Business Unit'


GO
/****** Object:  View [Stage].[DimBuyer]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Stage].[DimBuyer]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Buyer'


GO
/****** Object:  View [Stage].[DimFoodCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Stage].[DimFoodCategory]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Food Category'


GO
/****** Object:  View [Stage].[DimGeography]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Stage].[DimGeography]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Geography'


GO
/****** Object:  View [Stage].[DimGlobalBrand]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Stage].[DimGlobalBrand]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Global Brand'


GO
/****** Object:  View [Stage].[DimMaterialCategory]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Stage].[DimMaterialCategory]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Material Category'

GO
/****** Object:  View [Stage].[DimParentProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimParentProject;
DROP TABLE dbo.DimParentProject;
DROP TABLE Error.DimParentProject;
DROP TABLE Stage.DimParentProjectUpdate;
DROP PROCEDURE Stage.MergeDimParentProjectUpdates;
DROP VIEW Datamart.DimParentProject;
*/




CREATE VIEW [Stage].[DimParentProject]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Parent Project'


GO
/****** Object:  View [Stage].[DimPlantLocation]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimPlantLocation;
DROP TABLE dbo.DimPlantLocation;
DROP TABLE Error.DimPlantLocation;
DROP TABLE Stage.DimPlantLocationUpdate;
DROP PROCEDURE Stage.MergeDimPlantLocationUpdates;
DROP VIEW Datamart.DimPlantLocation;
*/




CREATE VIEW [Stage].[DimPlantLocation]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Plant Location'


GO
/****** Object:  View [Stage].[DimPrimaryResourceType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimPrimaryResourceType;
DROP TABLE dbo.DimPrimaryResourceType;
DROP TABLE Error.DimPrimaryResourceType;
DROP TABLE Stage.DimPrimaryResourceTypeUpdate;
DROP PROCEDURE Stage.MergeDimPrimaryResourceTypeUpdates;
DROP VIEW Datamart.DimPrimaryResourceType;
*/




CREATE VIEW [Stage].[DimPrimaryResourceType]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Primary RES Type'


GO
/****** Object:  View [Stage].[DimProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Stage].[DimProject]
AS
SELECT 
	p.ProjectUID,
	CAST(COALESCE(p.[ProjectName],'') as varchar(255)) as Name,
	CAST(LEFT(CAST(p.[ProjectDescription] as varchar(max)),1000)as varchar(1000)) as [Description],
	CAST(p.[ProjectStartDate] as [date]) as StartDate,
	CAST(p.[ProjectFinishDate] as [date]) as FinishDate,
	CAST(p.ProjectWorkspaceInternalHRef as varchar(500)) as [URL],
	CAST(p.[ProjectCreatedDate] as [date]) as [CreatedDate],
	CAST(p.[ProjectModifiedDate] as [date]) as [ModifiedDate],
	CAST(p.[ProjectCalendarDuration] /8 as int) as [CalendarDurationDays],
	CAST(p.[IHUT Formula Due] as date) as [IHUTFormulaDue],
	--CAST(p.[Stg 1 Approval] as date) as [Stg1Approval],
	CAST(p.[COGS Plant Test 3] as date) as [COGSPlantTest3],
	CAST(p.[IHUT NLI Due] as date) as [IHUTNLIDue],
	--CAST(p.[Stg 2 Approval Target] as date) as [Stg2ApprovalTarget],
	CAST(p.[Sensory Comp] as date) as [SensoryCompletion],
	CAST(p.[IHUT Prod Start] as date) as [IHUTProdStart],
	CAST(p.[IHUT Top Lines Comp] as date) as [IHUTTopLinesCompletion],
	CAST(p.[SS Prod Start] as date) as [SSProdStart],
	--CAST(p.[Startup] as date) as [Startup],
	--CAST(p.[Start Ship] as date) as [StartShip],
	--CAST(p.[Savings Start] as date) as [SavingsStart],
	--CAST(p.[PDR 1 Due Date] as date) as [PDR1DueDate],
	--CAST(p.[PDR 1 Anticipated Date] as date) as [PDR1AnticipatedDate],
	CAST(p.[Requested Start Ship] as date) as [RequestedStartShip],
	--CAST(p.[Date PDR 2 Received] as date) as [DatePDR2Received],
	--CAST(p.[Date Project Cancelled] as date) as [DateProjectCancelled],
	CAST(p.[SS NLI Due] as date) as [SSNLIDue],
	CAST(p.[Final NLI Due] as date) as [FinalNLIDue],
	CAST(p.[RMIS Due] as date) as [RMISDue],
	CAST(p.[SS Formula Due] as date) as [SSFormulaDue],
	CAST(p.[Final Formula Due] as date) as [FinalFormulaDue],
	CAST(p.[Template Duration]/8 as int) as [TemplateDurationDays],
	CAST(p.[Shelf Life] as int) as [ShelfLifeDays],
	COALESCE(g.[GeographyKey],-1) as [GeographyKey],
	COALESCE(bu.[BusinessUnitKey],-1) as [BusinessUnitKey],
	COALESCE(fc.[FoodCategoryKey],-1) as [FoodCategoryKey],
	COALESCE(pt.[ProjectTypeKey],-1) as [ProjectTypeKey],
	COALESCE(pm.[ProjectManagerKey],-1) as [ProjectManagerKey],
	COALESCE(pl.[PlantLocationKey],-1) as [PlantLocationKey],
	COALESCE(sg.[StageGateKey],-1) as [StageGateKey],
	CAST(p.[Project Status] as varchar(50)) as [Status],
	COALESCE(tt.[TemplateTypeKey],-1) as [TemplateTypeKey],
	COALESCE(mc.[MaterialCategoryKey],-1) as [MaterialCategoryKey],
	COALESCE(gb.[GlobalBrandKey],-1) as [GlobalBrandKey],
	CAST(p.[COGS_Pct Probability] as int) as [COGSPercentProbability],
	CAST(p.[COGS_1st Yr in Std] as int) as  [COGS1stYearInStd],
	COALESCE(b.[BuyerKey],-1) as [BuyerKey],
	COALESCE(pp.[ParentProjectKey],-1) as [ParentProjectKey],
	CAST(p.[Portfolio Bucket] as varchar(50)) as [PortfolioBucket],
	[New Ingredients Required] as [NewIngredientsRequired],
	[New Plant or Supplier] as [NewPlantorSupplier],
	[Lead Project] as [isLeadProject],
	[Backup Project] as [isBackupProject],
	CAST(p.[Project Equivalent] as tinyint) as [Equivalent],
	CAST(p.[Food Description] as varchar(500)) as [FoodDescription],
	CAST(p.[Packaging Format] as varchar(100)) as [PackagingFormat],
	CAST(p.[Comment] as varchar(500)) as [Comment],
	CAST(p.[Marketing Lead] as varchar(100)) as  [MarketingLead],
	CAST(p.[Product Developer] as varchar(50)) as [ProductDeveloper],
	CAST(p.[Food Technologist] as varchar(50)) as [FoodTechnologist],
	CAST(p.[Packaging Engineer] as varchar(50)) as [PackagingEngineer],
	CAST(p.[Project Risk] as varchar(50)) as [Risk],
	CAST(p.[Product Developer 2] as varchar(50)) as [ProductDeveloper2],
	CAST(CASE WHEN ISDATE(p.[Pilot Plant Test])=0 THEN NULL ELSE p.[Pilot Plant Test] END as date) [PilotPlantTest],
	--CAST(CASE WHEN ISDATE(p.[Plant Test])=0 THEN NULL ELSE p.[Plant Test] END as date) [PlantTest],
	CAST(CASE WHEN ISDATE(p.[COGS Startup 2])=0 THEN NULL ELSE p.[COGS Startup 2] END as date) [COGSStartup2],
	CAST(CASE WHEN ISDATE(p.[COGS Startup 3])=0 THEN NULL ELSE p.[COGS Startup 3] END as date) [COGSStartup3],
	CAST(CASE WHEN ISDATE(p.[COGS Plant Test 2])=0 THEN NULL ELSE p.[COGS Plant Test 2] END as date) [COGSPlantTest2],
	CAST(CASE WHEN ISDATE(p.[Date BFI Received])=0 THEN NULL ELSE p.[Date BFI Received] END as date) as [DateBFIReceived],
	--CAST(CASE WHEN ISDATE(p.[Date LAM Received])=0 THEN NULL ELSE p.[Date LAM Received] END as date) as [DateLAMReceived],
	CAST(p.[PDR2 Comments] as varchar(50)) as [PDR2Comments],
	CAST(p.[LAM Comments] as varchar(50)) as [LAMComments],
	CAST(p.[Validation Method] as varchar(50)) as [ValidationMethod],
	p.[Stage Gate Flex] as [IsStageGateFlex],
	CAST(p.[Market Type] as varchar(50)) as  [MarketType],
	--CAST(p.[PDR 2 Due Date] as date) as [PDR2DueDate],
	--CAST(p.[LAM Due Date] as date) as [LAMDueDate],
	CAST(p.[LAM Consumer Testing] as varchar(50)) as [LAMConsumerTesting],
	--CAST(p.[LAM] as date) as [LAM],
	CAST(p.[Strategic Fit] as varchar(3)) as [StrategicFit],
	CAST(p.[Flavor] as varchar(50)) as  [Flavor],
	CAST(p.[Label Conversion] as varchar(100)) as  [LabelConversion],
	p.AuditKey,
	CAST(p.[Marketing Platform] as varchar(500)) as  [MarketingPlatform],
	[Granular Growth Strategy] AS [Granular Growth Strategy] , 
    [Final Artwork Due] AS [Final Artwork Due],
    [Listing Process Start] AS [Listing Process Start] ,
    [Order Materials Start] AS [Order Materials Start] ,
    [Final Financials Due] AS [Final Financials Due] ,
    [Registration Process Ready] AS [Registration Process Ready] ,
    [Preliminary Artwork Due] AS [Preliminary Artwork Due] ,
    [Stage 2 Financials Due] AS [Stage 2 Financials Due] 
FROM Stage.MARSMSPEpmProject AS p
LEFT OUTER JOIN dbo.DimBusinessUnit AS bu
	ON bu.FullName = CAST(COALESCE(p.[Business Unit],'') as varchar(500))
LEFT OUTER JOIN dbo.DimBuyer AS b
	ON b.FullName = CAST(COALESCE(p.[Buyer],'') as varchar(500))
LEFT OUTER JOIN dbo.DimFoodCategory AS fc
	ON fc.FullName = CAST(COALESCE(p.[Food Category],'') as varchar(500))
LEFT OUTER JOIN dbo.DimGeography AS g
	ON g.FullName = CAST(COALESCE(p.[Geography],'') as varchar(500))
LEFT OUTER JOIN dbo.DimGlobalBrand AS gb
	ON gb.FullName = CAST(COALESCE(p.[Global Brand],'') as varchar(500))
LEFT OUTER JOIN dbo.DimMaterialCategory AS mc
	ON mc.FullName = CAST(COALESCE(p.[Material Category],'') as varchar(500))
LEFT OUTER JOIN dbo.DimParentProject AS pp
	ON pp.FullName = CAST(COALESCE(p.[Parent Project],'') as varchar(500))
LEFT OUTER JOIN dbo.DimPlantLocation AS pl
	ON pl.FullName = CAST(COALESCE(p.[Plant],'') as varchar(500))
LEFT OUTER JOIN dbo.DimProjectManager AS pm
	ON pm.FullName = CAST(COALESCE(p.[Proj Manager],'') as varchar(500))
LEFT OUTER JOIN dbo.DimProjectType AS pt
	ON pt.FullName = CAST(COALESCE(p.[Proj Type],'') as varchar(500))
LEFT OUTER JOIN dbo.DimStageGate AS sg
	ON sg.FullName = CAST(COALESCE(p.[Stage Gates],'') as varchar(500))
LEFT OUTER JOIN dbo.DimTemplateType AS tt
	ON tt.FullName = CAST(COALESCE(p.[Template Types],'') as varchar(500))




GO
/****** Object:  View [Stage].[DimProjectManager]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimProjectManager;
DROP TABLE dbo.DimProjectManager;
DROP TABLE Error.DimProjectManager;
DROP TABLE Stage.DimProjectManagerUpdate;
DROP PROCEDURE Stage.MergeDimProjectManagerUpdates;
DROP VIEW Datamart.DimProjectManager;
*/




CREATE VIEW [Stage].[DimProjectManager]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Proj Manager'


GO
/****** Object:  View [Stage].[DimProjectType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimProjectType;
DROP TABLE dbo.DimProjectType;
DROP TABLE Error.DimProjectType;
DROP TABLE Stage.DimProjectTypeUpdate;
DROP PROCEDURE Stage.MergeDimProjectTypeUpdates;
DROP VIEW Datamart.DimProjectType;
*/




CREATE VIEW [Stage].[DimProjectType]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Proj Type'


GO
/****** Object:  View [Stage].[DimRBS]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimRBS;
DROP TABLE dbo.DimRBS;
DROP TABLE Error.DimRBS;
DROP TABLE Stage.DimRBSUpdate;
DROP PROCEDURE Stage.MergeDimRBSUpdates;
DROP VIEW Datamart.DimRBS;
*/




CREATE VIEW [Stage].[DimRBS]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'RBS'


GO
/****** Object:  View [Stage].[DimResource]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Stage].[DimResource]
AS
SELECT 
	r.ResourceUID,
	CAST(COALESCE(r.ResourceEmailAddress,'') as varchar(100)) as EmailAddress,
	CAST(COALESCE(r.ResourceName,'') as varchar(100)) as Name,
	CAST(COALESCE(REPLACE(r.ResourceNTAccount,'i:0#.w|',''),'') as varchar(50)) as ADAccount,
	CASE WHEN r.ResourceIsActive = 0 THEN 0 ELSE 1 END as IsActive,
	CASE WHEN r.ResourceIsGeneric = 0 THEN 0 ELSE 1 END as IsGeneric,
	CASE WHEN r.[Time Tracker] = 0 THEN 0 ELSE 1 END as IsTimeTracker,
	COALESCE(rbs.RBSKey,-1) as RBSKey,
	COALESCE(prt.PrimaryResourceTypeKey,-1) as PrimaryResourceTypeKey,
	r.AuditKey
FROM Stage.MARSMSPEpmResource AS r
LEFT OUTER JOIN dbo.DimRBS AS rbs
	ON rbs.FullName = CAST(COALESCE(r.RBS,'') as varchar(500))
LEFT OUTER JOIN dbo.DimPrimaryResourceType AS prt
	ON prt.FullName = CAST(COALESCE(r.[Primary RES Type],'') as varchar(500))


GO
/****** Object:  View [Stage].[DimStageGate]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimStageGate;
DROP TABLE dbo.DimStageGate;
DROP TABLE Error.DimStageGate;
DROP TABLE Stage.DimStageGateUpdate;
DROP PROCEDURE Stage.MergeDimStageGateUpdates;
DROP VIEW Datamart.DimStageGate;
*/




CREATE VIEW [Stage].[DimStageGate]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Stage Gates'


GO
/****** Object:  View [Stage].[DimTemplateType]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimTemplateType;
DROP TABLE dbo.DimTemplateType;
DROP TABLE Error.DimTemplateType;
DROP TABLE Stage.DimTemplateTypeUpdate;
DROP PROCEDURE Stage.MergeDimTemplateTypeUpdates;
DROP VIEW Datamart.DimTemplateType;
*/




CREATE VIEW [Stage].[DimTemplateType]
AS
SELECT 
	l.MemberUID,
	CAST(COALESCE(l.MemberValue,'') as varchar(255)) as Name,
	CAST(COALESCE(l.MemberFullValue,'') as varchar(500)) as FullName,
	l.ParentMemberUID,
	l.AuditKey
FROM Stage.MARSEPMMetadataDimension AS d
INNER JOIN Stage.MARSEPMLookupTable AS l
	ON d.DimensionUID = l.LookupTableUID
WHERE d.DimensionName = 'Template Types'


GO
/****** Object:  View [Stage].[DimTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Stage].[DimTimesheetLine]
AS
SELECT 
	l.TimesheetLineUID,
	CAST(l.TimesheetStatus as varchar(50)) as TimesheetStatus,
	CAST(l.TimesheetLineClass as varchar(50)) as TimesheetLineClass,
	CAST(CASE l.TimesheetLineClassType
	  WHEN 0 THEN 'Standard Line'
	  WHEN 1 THEN 'SickTime Line'
	  WHEN 2 THEN 'Vacation Line'
	  WHEN 2 THEN 'Administrative Line'
	  ELSE 'Unknown'
	END as varchar(50)) as TimesheetLineClassType,
	CAST(l.TaskName as varchar(255)) as TaskName,
	l.AuditKey
FROM Stage.MARSMSPTimesheetline AS l


GO
/****** Object:  View [Stage].[DimTimesheetPeriod]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DROP VIEW Stage.DimTimesheetPeriod;
DROP TABLE dbo.DimTimesheetPeriod;
DROP TABLE Error.DimTimesheetPeriod;
DROP TABLE Stage.DimTimesheetPeriodUpdate;
DROP PROCEDURE Stage.MergeDimTimesheetPeriodUpdates;
DROP VIEW Datamart.DimTimesheetPeriod;
*/




CREATE VIEW [Stage].[DimTimesheetPeriod]
AS
SELECT 
	PeriodUID as TimesheetPeriodUID,
	CAST(l.PeriodName as varchar(20)) as PeriodName,
	l.AuditKey
FROM Stage.MARSMSPTimesheetPeriod AS l


GO
/****** Object:  View [Stage].[FactAssignment]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Stage].[FactAssignment]
AS
WITH TimesheetWork AS
(
	SELECT 
		o.[AssignmentUID],
		CAST(LEFT(CONVERT(varchar(8),MAX(p.StartDate),112),6) as int) as YearMonthKey,
		COALESCE(t.ResourceKey,-1) as ResourceKey,
		COALESCE(t.ProjectKey,-1) as ProjectKey,
		CAST(SUM(t.ActualWork) as float) as ActualWork
	FROM Stage.MARSMSPTimesheetlineOlap AS o
	INNER JOIN dbo.FactTimesheetLine as t
		ON t.TimesheetLineUID = o.TimesheetLineUID
	INNER JOIN dbo.DimTimesheetPeriod as dp
		ON dp.TimesheetPeriodKey = t.TimesheetPeriodKey
	INNER JOIN Stage.MARSMSPTimesheetPeriod as p
		ON p.PeriodUID = dp.TimesheetPeriodUID
	WHERE t.ActualWork IS NOT NULL
	GROUP BY 
		o.[AssignmentUID],
		YEAR(p.StartDate), 
		MONTH(p.StartDate),
		COALESCE(t.ResourceKey,-1),
		COALESCE(t.ProjectKey,-1)
),
PlannedWork AS
(

SELECT 
	a.AssignmentUID,
	CAST(LEFT(CONVERT(varchar(8),MAX(a.TimeByDay),112),6) as int) as YearMonthKey,
	COALESCE(r.ResourceKey,-1) as ResourceKey,
	COALESCE(p.ProjectKey,-1) as ProjectKey,
	SUM(CASE WHEN YEAR(a.TimeByDay) > YEAR(GETDATE()) OR (YEAR(a.TimeByDay) = YEAR(GETDATE()) AND MONTH(a.TimeByDay) >= MONTH(GETDATE())) THEN a.[AssignmentWork] ELSE NULL END) as PlannedWork
FROM Stage.MARSMSPEpmAssignmentByDay AS a
INNER JOIN Stage.MARSMSPEpmAssignment AS ea
	ON ea.AssignmentUID = a.AssignmentUID
INNER JOIN dbo.DimResource as r
	ON r.ResourceUID = ea.ResourceUID
LEFT OUTER JOIN dbo.DimProject as p
	ON p.ProjectUID = a.ProjectUID
	AND p.RowIsCurrent = 1
WHERE r.IsGeneric = 1
GROUP BY 
    a.AssignmentUID,
	YEAR(a.TimeByDay), 
	MONTH(a.TimeByDay),
	COALESCE(r.ResourceKey,-1),
	COALESCE(p.ProjectKey,-1)
)
SELECT 
	COALESCE(tw.AssignmentUID, pw.AssignmentUID) as AssignmentUID,
	COALESCE(tw.YearMonthKey, pw.YearMonthKey) as YearMonthKey,
	COALESCE(tw.ResourceKey, pw.ResourceKey) as ResourceKey,
	COALESCE(tw.ProjectKey, pw.ProjectKey) as ProjectKey,
	COALESCE(pw.PlannedWork,0) as PlannedWork,
	COALESCE(tw.ActualWork,0) as Work
FROM PlannedWork AS pw
FULL OUTER JOIN TimesheetWork as tw
	ON tw.AssignmentUID = pw.AssignmentUID
	AND tw.YearMonthKey = pw.YearMonthKey
	AND tw.ResourceKey = pw.ResourceKey
	AND tw.ProjectKey = pw.ProjectKey




GO
/****** Object:  View [Stage].[FactProject]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Stage].[FactProject]
AS
WITH TimesheetWork AS
(
	SELECT 
		ProjectKey,
		CAST(SUM(ActualWork) as float) as ActualWork
	FROM dbo.FactTimesheetLine
	GROUP BY ProjectKey
)
, AssignmentWork AS
(
	SELECT 
		ProjectUID,
		SUM(a.[AssignmentWork]) as PlannedWork
	FROM Stage.MARSMSPEpmAssignment as a
	INNER JOIN dbo.DimResource r
		ON r.ResourceUID = a.ResourceUID
	WHERE r.IsGeneric = 1
	GROUP BY ProjectUID
)
SELECT 
	p.ProjectUID,
	COALESCE(dp.ProjectKey,-1) as ProjectKey,
	COALESCE(CAST(CONVERT(varchar(10),COALESCE(p.[Requested Start Ship],p.[Start Ship]),112) as int),0) as [RequestedStartShipDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Stg 1 Approval],112) as int),0) as [Stg1ApprovalDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Stg 2 Approval Target],112) as int),0) as [Stg2ApprovalTargetDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Startup],112) as int),0) as [StartupDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Start Ship],112) as int),0) as [StartShipDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Savings Start],112) as int),0) as [SavingsStartDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[PDR 1 Due Date],112) as int),0) as [PDR1DueDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[PDR 1 Anticipated Date],112) as int),0) as [PDR1AnticipatedDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Date PDR 2 Received],112) as int),0) as [PDR2ReceivedDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[PDR 2 Due Date],112) as int),0) as [PDR2DueDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[Date Project Cancelled],112) as int),0) as [ProjectCancelledDateKey],
	COALESCE(CAST(CONVERT(varchar(10),CAST(CASE WHEN ISDATE(p.[Plant Test])=0 THEN NULL ELSE p.[Plant Test] END as date),112) as int),0) as [PlantTestDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[LAM Due Date],112) as int),0) as [LAMDueDateKey],
	COALESCE(CAST(CONVERT(varchar(10),p.[LAM],112) as int),0) as [LAMDateKey],
	COALESCE(CAST(CONVERT(varchar(10),CAST(CASE WHEN ISDATE(p.[Date LAM Approved])=0 THEN NULL ELSE p.[Date LAM Approved] END as date),112) as int),0) as [LAMReceivedDateKey],
	CAST(p.NSV as float) as NSV,
	CAST(p.[GSI Percent]/100.0 as float) as GSIPercent,
	CAST(p.[Percent Cannibalization]/100.0 as float) as CannibalizationPercent,
	CAST(p.[Project Compression] as float) as [Compression],
	CAST(p.[Est Pct Compression]/100.0 as float) as [EstimatedPercentCompression],
	CAST(COALESCE(aw.PlannedWork,0.00) as float) as [PlannedWork],
	--CAST(COALESCE(p.ProjectActualWork,0.00) + COALESCE(tsw.ActualWork,0.00) as float) as [Work],
	CAST(COALESCE(tsw.ActualWork,0.00) as float) as [Work],
	--CAST(COALESCE(aw.PlannedWork,0.00)  as float) - CAST(COALESCE(p.ProjectActualWork,0.00) + COALESCE(tsw.ActualWork,0.00) as float) AS [RemainingWork],
	CAST(COALESCE(aw.PlannedWork,0.00)  as float) - CAST(COALESCE(tsw.ActualWork,0.00) as float) AS [RemainingWork],
	CAST(p.[Est Potential Savings] as float) as [EstimatedPotentialSavings],
	CAST(p.[Weighted Savings] as float) as [WeightedSavings],
	CAST(p.[Total Volume_Weight] as float) as [TotalVolumeWeight],
	CAST(p.[Launch Build Volume] as float) as [LaunchBuildVolume],
	CAST(p.[NSV at PDR2] as float) as [NSVAtPDR2],
	CAST(p.[NSV AUD] as float) as [NSVAUD],
	CAST(p.[Probability of Technical Success] as float) as [ProbabilityOfTechnicalSuccess],
	CAST(p.[Latest Incr GM per Weight] as float) as [LatestIncrGMPerWeight],
	CAST(p.[Latest Incr GM per Unit] as float) as [LatestIncrGMPerUnit],
	CAST(p.[LAM GM Pct] as float) as [LatestGMPercentNSV],
	CAST(p.[Latest Incr GM Pct NSV] as float) as [LatestIncrGMPercentNSV],

	p.AuditKey
FROM Stage.MARSMSPEpmProject AS p
LEFT OUTER JOIN dbo.DimProject as dp
	ON dp.ProjectUID = p.ProjectUID
	ANd dp.RowIsCurrent = 1
LEFT OUTER JOIN TimesheetWork AS tsw
	ON tsw.ProjectKey = dp.ProjectKey
LEFT OUTER JOIN AssignmentWork AS aw
	ON aw.ProjectUID = dp.ProjectUID




GO
/****** Object:  View [Stage].[FactTimesheetLine]    Script Date: 11/20/2018 5:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Stage].[FactTimesheetLine]
AS
SELECT 
	t.TimesheetLineUID,
	COALESCE(tsl.TimesheetLineKey,-1) as TimesheetLineKey,
	COALESCE(tsp.TimesheetPeriodKey,-1) as TimesheetPeriodKey,
	COALESCE(r.ResourceKey,-1) as ResourceKey,
	COALESCE(p.ProjectKey,-1) as ProjectKey,
	t.ActualWorkBillable as ActualWork,
	t.AuditKey
FROM Stage.MARSMSPTimesheetline AS t
LEFT OUTER JOIN dbo.DimTimesheetLine AS tsl
	ON tsl.TimesheetLineUID = t.TimesheetLineUID
LEFT OUTER JOIN dbo.DimTimesheetPeriod as tsp
	ON tsp.TimesheetPeriodUID = t.PeriodUID
LEFT OUTER JOIN dbo.DimResource as r
	ON r.ResourceUID = t.ResourceUID
LEFT OUTER JOIN dbo.DimProject as p
	ON p.ProjectUID = t.ProjectUID
	AND p.RowIsCurrent = 1


GO
ALTER TABLE [dbo].[DimProject] ADD  DEFAULT ((1)) FOR [RowVersion]
GO
ALTER TABLE [dbo].[DimProject] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FactProject] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FactProjectSnapshot] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Surrogate primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'AuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'AuditKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'AuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'AuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'AuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to self, to identify calling package execution' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ParentAuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'ParentAuditKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ParentAuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ParentAuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ParentAuditKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Name of the main table loaded by this package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'TableName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Name of the SSIS package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgName'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'PkgName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgName'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Identifier for the package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'PkgGUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Identifier for the package version' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgVersionGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'PkgVersionGUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgVersionGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Major version number for the package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgVersionMajor'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'PkgVersionMajor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgVersionMajor'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Minor version number for the package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgVersionMinor'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'PkgVersionMinor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'PkgVersionMinor'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Date-time the package started executing' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExecStartDT'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'ExecStartDT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExecStartDT'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Date-time the package finished executing' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExecStopDT'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'ExecStopDT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExecStopDT'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Identifier for the execution of the package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExecutionInstanceGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'ExecutionInstanceGUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExecutionInstanceGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Count of rows extracted from the source(s)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExtractRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'ExtractRowCnt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ExtractRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Count of rows inserted in the destination table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'InsertRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'InsertRowCnt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'InsertRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Count of rows updated in the destination table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'UpdateRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'UpdateRowCnt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'UpdateRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Count of error rows' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ErrorRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'ErrorRowCnt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'ErrorRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Count of rows in target table before we begin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableInitialRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'TableInitialRowCnt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableInitialRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Count of rows in target table after package ends' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableFinalRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'TableFinalRowCnt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableFinalRowCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Maximum surrogate key value in table (if we''re maintaining ourselves)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableMaxSurrogateKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'TableMaxSurrogateKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'TableMaxSurrogateKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Did the package finish executing successfully?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'SuccessfulProcessingInd'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'SuccessfulProcessingInd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'SuccessfulProcessingInd'
GO
EXEC sys.sp_addextendedproperty @name=N'Example Values', @value=N'Y, N' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit', @level2type=N'COLUMN',@level2name=N'SuccessfulProcessingInd'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Audit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Audit dimension tags each data row with the the process that added or updated it.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Audit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBusinessUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBusinessUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each BU in the BU hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBusinessUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBusinessUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBuyer'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBuyer'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Buyer in the Buyer hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBuyer'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimBuyer'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFoodCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFoodCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Food Category in the Food Category hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFoodCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFoodCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGeography'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGeography'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Geography in the Geography hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGeography'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGeography'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGlobalBrand'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGlobalBrand'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Global Brand in the Global Brand hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGlobalBrand'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimGlobalBrand'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimMaterialCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimMaterialCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Material Category in the Material Category hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimMaterialCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimMaterialCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimParentProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimParentProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Parent Project in the Parent Project hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimParentProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimParentProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPlantLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPlantLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Plant Location in the Plant Location hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPlantLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPlantLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPrimaryResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Business Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPrimaryResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Primary RES Type in the Primary RES Type hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPrimaryResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimPrimaryResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Project and changes over time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectManager'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project Manager' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectManager'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Project Manager in the Project Manager hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectManager'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectManager'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Project Type in the Project Type hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRBS'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'RBS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRBS'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each RBS in the RBS hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRBS'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRBS'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimResource'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Resource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimResource'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Resource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimResource'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimResource'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimStageGate'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Stage Gate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimStageGate'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Stage Gate in the Stage Gate hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimStageGate'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimStageGate'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTemplateType'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Template Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTemplateType'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Template Type in the Template Type hierarchy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTemplateType'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTemplateType'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Timesheet Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each TimesheetLine' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Timesheet Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Timesheet Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimTimesheetPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Assignment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Assignment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProject'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProjectSnapshot'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project Snapshot' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProjectSnapshot'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Project every day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProjectSnapshot'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactProjectSnapshot'
GO
EXEC sys.sp_addextendedproperty @name=N'Database Schema', @value=N'dbo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Display Name', @value=N'Timesheet Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'One record for each Timesheet Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactTimesheetLine'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactTimesheetLine'
GO
USE [master]
GO
ALTER DATABASE [KG_MARS] SET  READ_WRITE 
GO
