USE [master]
GO
/****** Object:  Database [TPE_DS_Target]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE DATABASE [TPE_DS_Target]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPE_DS_Target', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\TPE_DS_Target.mdf' , SIZE = 483588096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'TPE_DS_Target_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\TPE_DS_Target_log.ldf' , SIZE = 3892224KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPE_DS_Target].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPE_DS_Target] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_Target] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_Target] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPE_DS_Target] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPE_DS_Target] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPE_DS_Target] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TPE_DS_Target] SET  MULTI_USER 
GO
ALTER DATABASE [TPE_DS_Target] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPE_DS_Target] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPE_DS_Target] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPE_DS_Target] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPE_DS_Target', N'ON'
GO
USE [TPE_DS_Target]
GO
/****** Object:  User [US\SQL_TPE_USERS_R]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [US\SQL_TPE_USERS_R] FOR LOGIN [US\SQL_TPE_USERS_R]
GO
/****** Object:  User [US\SQL_RGM_SUPPORT_R]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [US\SQL_RGM_SUPPORT_R] FOR LOGIN [US\SQL_RGM_SUPPORT_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_VIZ_REP]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SQL_VIZ_REP] FOR LOGIN [SQL_VIZ_REP] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:52:34 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_TPE_USERS_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
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
ALTER ROLE [db_datareader] ADD MEMBER [SQL_VIZ_REP]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SQL_VIZ_REP]
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
/****** Object:  Schema [stg]    Script Date: 11/20/2018 5:52:35 PM ******/
CREATE SCHEMA [stg]
GO
/****** Object:  Schema [US\USKBPH02]    Script Date: 11/20/2018 5:52:35 PM ******/
CREATE SCHEMA [US\USKBPH02]
GO
/****** Object:  Schema [US\USKJDW73]    Script Date: 11/20/2018 5:52:35 PM ******/
CREATE SCHEMA [US\USKJDW73]
GO
/****** Object:  PartitionFunction [partFn]    Script Date: 11/20/2018 5:52:35 PM ******/
CREATE PARTITION FUNCTION [partFn](varchar(4)) AS RANGE RIGHT FOR VALUES (N'2012', N'2013', N'2014', N'2015', N'2016', N'2017', N'2018', N'2019')
GO
/****** Object:  PartitionScheme [partSh]    Script Date: 11/20/2018 5:52:35 PM ******/
CREATE PARTITION SCHEME [partSh] AS PARTITION [partFn] TO ([PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY])
GO
/****** Object:  StoredProcedure [dbo].[LOAD_TABLE_CSV_HR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOAD_TABLE_CSV_HR]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIELDTERMINATOR = '','',ROWTERMINATOR = ''\r'')';
PRINT @QUERY

EXEC (@QUERY)
END

GO
/****** Object:  StoredProcedure [dbo].[LOAD_TABLE_CSV_RW2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOAD_TABLE_CSV_RW2]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIRSTROW = 2, FIELDTERMINATOR = '','',ROWTERMINATOR = ''\n'')';
PRINT @QUERY

EXEC (@QUERY)
END

GO
/****** Object:  StoredProcedure [dbo].[OVERRIDEBENTEST2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OVERRIDEBENTEST2]

@TABLENAME VARCHAR(128),
@FIELD VARCHAR (1000),
@SOURCE VARCHAR(128)

AS
BEGIN

DECLARE @QUERY VARCHAR (1000)

--SET @QUERY = 'DROP TABLE '+ @TABLENAME;

--PRINT @QUERY

--EXEC (@QUERY)



SET @QUERY= 'SELECT DISTINCT '+@FIELD+ ' INTO '+@TABLENAME +' FROM '+@SOURCE;

PRINT @QUERY

EXEC (@QUERY)

END


GO
/****** Object:  StoredProcedure [dbo].[PROMO_TABLES]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROMO_TABLES]

AS

BEGIN

DECLARE @QUERY VARCHAR (8000)


SET @QUERY = '
IF OBJECT_ID(''TPE_DS_User.dbo.KLG_PROMO_TYPE'', ''U'') 
IS NOT NULL DROP TABLE TPE_DS_User.dbo.KLG_PROMO_TYPE;

';

PRINT @QUERY
EXEC (@QUERY)



SET @QUERY = '
SELECT
a.[Promotion ID],
a.[Calender Week],
a.[Plan To],
Sum(a.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(a.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(a.[Gross Sales $]) AS [Gross Sales $],
Sum(a.[Planned Ship $]) AS [Planned Ship $],
Sum(a.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(a.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(a.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(a.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(a.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(a.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(a.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(a.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(a.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(a.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(a.DISPLAY) AS DISPLAY,
Max(a.FEATURE) AS FEATURE,
Max(a.[F&D]) AS [F&D],
Sum(a.[Sugg TPQ]) AS [Sugg TPQ],
Sum(a.[Sugg Incr]) AS [Sugg Incr],
Max(a.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(a.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(a.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(a.[EDLP Spend]) AS [EDLP Spend],
Sum(a.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(a.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(h.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(h.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(h.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(h.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(h.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
b.ACTIVITY_DESC,
b.DESCRIPTION AS Promo_Desc,
b.ACTIVITY_TYPE,
b.SHIP_DATE_FROM,
b.SHIP_DATE_TO,
b.PROMOTION_DESC,
b.SCANNER_APPS_ID,
b.EMPLOYEE_RESPONSIBLE,
b.CHANGED_BY,
b.LAST_CHANGED_ON,
b.PERSON_NAME,
b.DATE_CREATED,
b.CAMPAIGN_TYPE,
b.CAMPAIGN_DESC,
b.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(b.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
b.PLANNED_DATE_TO,
b.KEY_EVENT_DESC,
b.CURRENCY_KEY,
c.PERIOD,
c.[Period Number],
c.[Period Year],
c.QUARTER,
c.[Quarter Number],
c.[Quarter Year],
c.[YEAR],
c.[BW Period],
c.[Niel Week],
c.[Pay Week],
d.ALT_CATEGORY,
d.ALT_SUBCATEGORY,
d.PROD_H4,
d.PROD_HIER_TEXT4,
d.PROD_H5,
d.PROD_HIER_TEXT5,
e.BUSINESS_UNIT,
f.PLANTO,
f.PT_NAME,
f.Level_A,
f.Level_B,
f.Level_C,
f.Level_D,
f.Level_E,
f.ALL_IN_Flag,
f.Tier_Name,
f.Tier,
f.AKV,
g.[Ca Category]

Into TPE_DS_User.dbo.KLG_PROMO_TYPE


FROM
TPE_DS_Target.dbo.KLG_TPE_PROMOTION_FACT_TGT a
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PROMOTION_DIM_TGT b ON a.[Promotion ID] = b.PROMOTION_ID
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_TIME_DIM_TGT c ON a.[Calender Week] = c.CALENDER_WEEK
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT d ON a.[Mixed Pallet Material] = d.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT e ON a.[Mixed Pallet Material] = e.MIXED_PAL_MATERIAL AND a.[Plan To] = e.PLAN_TO
LEFT JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY f ON f.PLANTO = e.PLAN_TO AND a.[Plan To] = f.PLANTO AND f.BU=e.BUSINESS_UNIT
INNER JOIN TPE_DS_Target.dbo.KLG_CANADA_CAT_MAP g ON d.ALT_CATEGORY = g.Category
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PROM_ZM_TPM60_TGT h ON a.[Promotion ID] = h.PROMOTIONS AND a.[Mixed Pallet Material] = h.MATERIAL AND a.[Calender Week] = h.[calendar week]
WHERE
c.[YEAR] = 2016 OR
c.[YEAR] = 2017 AND
b.PROMOTION_DESC not in (''Cancelled'', ''Draft'', ''Deleted'')

GROUP BY
a.[Promotion ID],
a.[Calender Week],
a.[Plan To],
b.ACTIVITY_DESC,
b.DESCRIPTION,
b.ACTIVITY_TYPE,
b.SHIP_DATE_FROM,
b.SHIP_DATE_TO,
b.PROMOTION_DESC,
b.SCANNER_APPS_ID,
b.EMPLOYEE_RESPONSIBLE,
b.CHANGED_BY,
b.LAST_CHANGED_ON,
b.PERSON_NAME,
b.DATE_CREATED,
b.CAMPAIGN_TYPE,
b.CAMPAIGN_DESC,
b.PLANNED_DATE_FROM,
b.PLANNED_DATE_TO,
b.KEY_EVENT_DESC,
b.CURRENCY_KEY,
c.PERIOD,
c.[Period Number],
c.[Period Year],
c.QUARTER,
c.[Quarter Number],
c.[Quarter Year],
c.[YEAR],
c.[BW Period],
c.[Niel Week],
c.[Pay Week],
d.ALT_CATEGORY,
d.ALT_SUBCATEGORY,
d.PROD_H4,
d.PROD_HIER_TEXT4,
d.PROD_H5,
d.PROD_HIER_TEXT5,
e.BUSINESS_UNIT,
f.PT_NAME,
f.PLANTO,
f.Level_A,
f.Level_B,
f.Level_C,
f.Level_D,
f.Level_E,
f.ALL_IN_Flag,
g.[Ca Category],
f.Tier_Name,
f.Tier,
f.AKV

';

PRINT @QUERY
EXEC (@QUERY)




END

GO
/****** Object:  StoredProcedure [dbo].[USP_BU_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_BU_12P]

AS
BEGIN


--------------------------------------###################################################################################################--------------------------------------
--1) NSV ACTUAL
--if [GSV v.YA] = 0 then NULL Else (if (Group) = 'YTD' THEN Sum(DM.SCM)/1000000)

select [BUSINESS_UNIT], sum(NSV)/1000000 as [NSV_ACTUAL] into #BU_NSV_ACTUAL    from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]

--------------------------------------###################################################################################################--------------------------------------

-- 2)NSV % Chg YA
--A = if (Group) = 'YTD' THEN Sum(DM.NSV);B = if (Group) = 'YTD YA' THEN Sum(DM.NSV);C = ((A-B) / B)"
select [BUSINESS_UNIT], sum(NSV) as [NSV_ACTUAL_CHG_YTD] into #NSV_ACTUAL_CHG_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi')group by [BUSINESS_UNIT]  -- A

select [BUSINESS_UNIT], sum(NSV) as [NSV_ACTUAL_CHG_YA] into #NSV_ACTUAL_CHG_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi')group by [BUSINESS_UNIT]--B

select #NSV_ACTUAL_CHG_YTD.[BUSINESS_UNIT], (([NSV_ACTUAL_CHG_YTD])-([NSV_ACTUAL_CHG_YA]))/([NSV_ACTUAL_CHG_YA]) as [NSV_%_CHG_YA] 
into #BU_NSV_CHG_YA

from 
#NSV_ACTUAL_CHG_YTD ,
#NSV_ACTUAL_CHG_YA

where 
#NSV_ACTUAL_CHG_YTD.[BUSINESS_UNIT] = #NSV_ACTUAL_CHG_YA.[BUSINESS_UNIT]

--------------------------------------###################################################################################################--------------------------------------

--3)NSV $ CHG YA

select [BUSINESS_UNIT] , sum(NSV) as [NSV_CHG_YTD] into #NSV_CHG_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] -- A

select [BUSINESS_UNIT] , sum(NSV) as [NSV_CHG_YA] into #NSV_CHG_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] --B

select #NSV_CHG_YTD.[BUSINESS_UNIT],  (([NSV_CHG_YTD])-([NSV_CHG_YA]))/1000000 as [NSV_USD_CHG_YA] 
into #BU_NSV_USD_CHG_YA

from 
#NSV_CHG_YTD ,
#NSV_CHG_YA

where 
#NSV_CHG_YTD.[BUSINESS_UNIT] = #NSV_CHG_YA.[BUSINESS_UNIT] 

--------------------------------------###################################################################################################--------------------------------------
-- 4) NSV V. Budget
--select [BUSINESS UNIT] , sum(NSV) as [NSV_YTD] into #NSV_YTD   from  dbo.KLG_RGM_KPI_DATAMART_DUMMY where [Group] = '12P' group by [BUSINESS UNIT]  -- A
--select [BUSINESS UNIT] , sum(NSV) as [NSV_BD] into #NSV_BD   from  dbo.KLG_RGM_KPI_BUDGET_DUMMY  group by [BUSINESS UNIT] -- B

--select #NSV_YTD.[BUSINESS UNIT],  (([NSV_YTD])-([NSV_BD]))/[NSV_BD] as [NSV_V_BD] 
--into #BU_NSV_V_BD

--from 
--#NSV_YTD left outer join  #NSV_BD
--on 

--#NSV_YTD.[BUSINESS UNIT] = #NSV_BD.[BUSINESS UNIT]

--select * from #BU_NSV_V_BD

--------------------------------------###################################################################################################--------------------------------------
-- 5) NSV/LB Actual
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_LB] into #NSV_YTD_LB   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(LBS) as [LBS_YTD_LB] into #LBS_YTD_LB   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- B

select #NSV_YTD_LB.[BUSINESS_UNIT] , ([NSV_YTD_LB])/([LBS_YTD_LB]) as [NSV_LB_ACTUAL] into #BU_NSV_LB_ACTUAL 
from 
#NSV_YTD_LB,
#LBS_YTD_LB

where 
#NSV_YTD_LB.[BUSINESS_UNIT] = #LBS_YTD_LB.[BUSINESS_UNIT] 
--------------------------------------###################################################################################################--------------------------------------
--6) NSV/LB Actual V. YA
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_ACTUAL_LB] into #NSV_LB_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(LBS) as [LBS_YTD_ACTUAL_LB] into #LBS_LB_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- B
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_LB_YA] into #NSV_LB_ACTUAL_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- C
select [BUSINESS_UNIT] , sum(LBS) as [LBS_YTD_LB_YA] into #LBS_LB_ACTUAL_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- D


select #NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] ,  
((([NSV_YTD_ACTUAL_LB])/([LBS_YTD_ACTUAL_LB]))-(([NSV_YTD_LB_YA])/([LBS_YTD_LB_YA])))/(([NSV_YTD_LB_YA])/([LBS_YTD_LB_YA])) as [NSV_LB_ACTUAL_V_YA]

into #BU_NSV_LB_ACTUAL_V_YA

from 
#NSV_LB_ACTUAL_YA,
#LBS_LB_ACTUAL_YA,
#NSV_LB_ACTUAL_YTD_YA,
#LBS_LB_ACTUAL_YTD_YA 

where 
#NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] = #LBS_LB_ACTUAL_YA.[BUSINESS_UNIT] and 

#NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] = #NSV_LB_ACTUAL_YTD_YA.[BUSINESS_UNIT] and 

#NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] = #LBS_LB_ACTUAL_YTD_YA.[BUSINESS_UNIT] 

--------------------------------------###################################################################################################--------------------------------------
--7) SCM % Actual
select [BUSINESS_UNIT] , sum(SCM) as [SCM_PERC_ACTUAL_YA] into #SCM_PERC_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(NSV) as [NSV_PERC_ACTUAL_YA] into #NSV_PERC_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- B


select #SCM_PERC_ACTUAL_YA.[BUSINESS_UNIT] ,([SCM_PERC_ACTUAL_YA])/([NSV_PERC_ACTUAL_YA]) as [SCM_%_ACTUAL] 

into #BU_SCM_PERC_ACTUAL
from 
#SCM_PERC_ACTUAL_YA,
#NSV_PERC_ACTUAL_YA

where 
#SCM_PERC_ACTUAL_YA.[BUSINESS_UNIT] = #NSV_PERC_ACTUAL_YA.[BUSINESS_UNIT] 

--------------------------------------###################################################################################################--------------------------------------
--8)SCM % v. YA

select [BUSINESS_UNIT] , sum(SCM) as [SCM_YTD_V] into #SCM_YTD_V   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_V] into #NSV_YTD_V   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- B
select [BUSINESS_UNIT] , sum(SCM) as [SCM_YTD_V_YA] into #SCM_YTD_V_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- C
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_V_YA] into #NSV_YTD_V_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- D


select #SCM_YTD_V.[BUSINESS_UNIT] , ((([SCM_YTD_V])/([NSV_YTD_V]))*100 - (([SCM_YTD_V_YA])/([NSV_YTD_V_YA]))*100) as [SCM_%_V_YA]


into #BU_SCM_PERC_V_YA

from 
#SCM_YTD_V,
#NSV_YTD_V,
#SCM_YTD_V_YA,
#NSV_YTD_V_YA 

where 
#SCM_YTD_V.[BUSINESS_UNIT] = #NSV_YTD_V.[BUSINESS_UNIT] and 

#SCM_YTD_V.[BUSINESS_UNIT] = #SCM_YTD_V_YA.[BUSINESS_UNIT] and 

#SCM_YTD_V.[BUSINESS_UNIT] = #NSV_YTD_V_YA.[BUSINESS_UNIT]  


--------------------------------------###################################################################################################--------------------------------------
--------------------------------------###################################################################################################--------------------------------------
--Additional KPI's Requested by Anupama.

select [BUSINESS_UNIT] , sum(NSV) as [ACTUAL_NSV] into #ACTUAL_NSV   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  --  ACTUAL NSV
select [BUSINESS_UNIT] , sum(NSV) as [ACTUAL_NSV_12P_YA] into #BU_ACTUAL_NSV_12P_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  --  ACTUAL NSV YTD YA
select [BUSINESS_UNIT] , sum(LBS) as [ACTUAL_LBS] into #ACTUAL_LBS   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- ACTUAL LBS
select [BUSINESS_UNIT] , sum(LBS) as [ACTUAL_LBS_12P_YA] into #BU_ACTUAL_LBS_12P_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT]  -- ACTUAL LBS YTD YA
select [BUSINESS_UNIT] , sum(SCM) as [ACTUAL_SCM] into #ACTUAL_SCM  from  dbo.KLG_RGM_KPI_SC_DATAMART Y where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] -- ACTUAL SCM
select [BUSINESS_UNIT] , sum(SCM) as [ACTUAL_SCM_12P_YA] into #BU_ACTUAL_SCM_12P_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] -- ACTUAL SCM YTD YA
--select [BUSINESS UNIT] , sum(NSV) as [BUDGET_NSV] into #BUDGET_NSV   from  dbo.KLG_RGM_KPI_BUDGET_DUMMY  group by [BUSINESS UNIT]  -- BUDGET NSV




--------------------------------------###################################################################################################---------------------------------------
--------------------------------------###################################################################################################--------------------------------------

--Final View 

-- 1) #BU_NSV_ACTUAL.[NSV_ACTUAL]
-- 2) #BU_NSV_CHG_YA.[NSV_%_CHG_YA]
-- 3) #BU_NSV_USD_CHG_YA.[NSV_USD_CHG_YA]
-- 4) #BU_NSV_V_BD.[NSV_V_BD]  -- Left Outer Join.
-- 5) #BU_NSV_LB_ACTUAL.[NSV_LB_ACTUAL]
-- 6) #BU_NSV_LB_ACTUAL_V_YA.[NSV_LB_ACTUAL_V_YA]
-- 7) #BU_SCM_PERC_ACTUAL.[SCM_%_ACTUAL]
-- 8) #BU_SCM_PERC_V_YA.[SCM_%_V_YA]

truncate table [STG].[RGM_BU_12P]
Insert Into [STG].[RGM_BU_12P](
[BUSINESS_UNIT] ,[NSV_ACTUAL],[NSV_%_CHG_YA],[NSV_USD_CHG_YA] 
--, [NSV_V_BD]
,[NSV_LB_ACTUAL],[NSV_LB_ACTUAL_V_YA],[SCM_%_ACTUAL],[SCM_%_V_YA],[ACTUAL_NSV],[ACTUAL_LBS],[ACTUAL_SCM]
--,[BUDGET_NSV]
,[ACTUAL_NSV_12P_YA],[ACTUAL_LBS_12P_YA],[ACTUAL_SCM_12P_YA])

(
select  #BU_NSV_ACTUAL.[BUSINESS_UNIT]  ,[NSV_ACTUAL],[NSV_%_CHG_YA],[NSV_USD_CHG_YA] 
--, [NSV_V_BD]
,[NSV_LB_ACTUAL],[NSV_LB_ACTUAL_V_YA],[SCM_%_ACTUAL],[SCM_%_V_YA]
,[ACTUAL_NSV],[ACTUAL_LBS],[ACTUAL_SCM]
--,[BUDGET_NSV]
,[ACTUAL_NSV_12P_YA],[ACTUAL_LBS_12P_YA],[ACTUAL_SCM_12P_YA]

from 
 #BU_NSV_ACTUAL ,
  --#BU_NSV_V_BD ,
 #BU_NSV_CHG_YA,
 #BU_NSV_USD_CHG_YA,
  #BU_NSV_LB_ACTUAL,
 #BU_NSV_LB_ACTUAL_V_YA,
 #BU_SCM_PERC_ACTUAL,
#BU_SCM_PERC_V_YA,
#ACTUAL_NSV,
#ACTUAL_LBS,
#ACTUAL_SCM,
--#BUDGET_NSV,
#BU_ACTUAL_NSV_12P_YA,
#BU_ACTUAL_LBS_12P_YA,
#BU_ACTUAL_SCM_12P_YA

 

 Where 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_CHG_YA.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_USD_CHG_YA.[BUSINESS_UNIT] and 

 #BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_LB_ACTUAL.[BUSINESS_UNIT] and 
 
 #BU_NSV_ACTUAL.[BUSINESS_UNIT]  = #BU_NSV_LB_ACTUAL_V_YA.[BUSINESS_UNIT] and 
 
  #BU_NSV_ACTUAL.[BUSINESS_UNIT]= #BU_SCM_PERC_ACTUAL.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_SCM_PERC_V_YA.[BUSINESS_UNIT] and 

--#BU_NSV_ACTUAL.[BUSINESS UNIT] = #BU_NSV_V_BD.[BUSINESS UNIT]  and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #ACTUAL_NSV.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #ACTUAL_LBS.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #ACTUAL_SCM.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_ACTUAL_NSV_12P_YA.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_ACTUAL_LBS_12P_YA.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_ACTUAL_SCM_12P_YA.[BUSINESS_UNIT]  
  
  )

 

------------------------Drop  Main Temp Tables----------------------------------------------
drop table #BU_NSV_ACTUAL 

drop table #BU_NSV_CHG_YA
drop table #BU_NSV_USD_CHG_YA
drop table #BU_NSV_LB_ACTUAL
drop table #BU_NSV_LB_ACTUAL_V_YA
drop table #BU_SCM_PERC_ACTUAL
drop table #BU_SCM_PERC_V_YA
drop table #BU_ACTUAL_NSV_12P_YA
drop table #BU_ACTUAL_LBS_12P_YA
drop table #BU_ACTUAL_SCM_12P_YA

------------------------Drop Intermediate Temp Tables----------------------------------------------















END













GO
/****** Object:  StoredProcedure [dbo].[USP_BU_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Uman,Bandari>
-- Create date: <02/26/2017>
-- Description:	<BU YTD  KPI's>
-- =============================================




CREATE PROCEDURE [dbo].[USP_BU_YTD] 
AS
	--------------------------------------###################################################################################################--------------------------------------
--1) NSV ACTUAL
--if [GSV v.YA] = 0 then NULL Else (if (Group) = 'YTD' THEN Sum(DM.SCM)/1000000)

select [BUSINESS_UNIT], sum(NSV)/1000000 as [NSV_ACTUAL] into #BU_NSV_ACTUAL    from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]

--------------------------------------###################################################################################################--------------------------------------

-- 2)NSV % Chg YA
--A = if (Group) = 'YTD' THEN Sum(DM.NSV);B = if (Group) = 'YTD YA' THEN Sum(DM.NSV);C = ((A-B) / B)"
select [BUSINESS_UNIT], sum(NSV) as [NSV_ACTUAL_CHG_YTD] into #NSV_ACTUAL_CHG_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- A

select [BUSINESS_UNIT], sum(NSV) as [NSV_ACTUAL_CHG_YA] into #NSV_ACTUAL_CHG_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]--B

select #NSV_ACTUAL_CHG_YTD.[BUSINESS_UNIT], (([NSV_ACTUAL_CHG_YTD])-([NSV_ACTUAL_CHG_YA]))/([NSV_ACTUAL_CHG_YA]) as [NSV_%_CHG_YA] 
into #BU_NSV_CHG_YA

from 
#NSV_ACTUAL_CHG_YTD ,
#NSV_ACTUAL_CHG_YA

where 
#NSV_ACTUAL_CHG_YTD.[BUSINESS_UNIT] = #NSV_ACTUAL_CHG_YA.[BUSINESS_UNIT]



--------------------------------------###################################################################################################--------------------------------------

--3)NSV $ CHG YA

select [BUSINESS_UNIT] , sum(NSV) as [NSV_CHG_YTD] into #NSV_CHG_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT] -- A

select [BUSINESS_UNIT] , sum(NSV) as [NSV_CHG_YA] into #NSV_CHG_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT] --B

select #NSV_CHG_YTD.[BUSINESS_UNIT],  (([NSV_CHG_YTD])-([NSV_CHG_YA]))/1000000 as [NSV_USD_CHG_YA] 
into #BU_NSV_USD_CHG_YA

from 
#NSV_CHG_YTD ,
#NSV_CHG_YA

where 
#NSV_CHG_YTD.[BUSINESS_UNIT] = #NSV_CHG_YA.[BUSINESS_UNIT] 

--------------------------------------###################################################################################################--------------------------------------
-- 4) NSV V. Budget
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD] into #NSV_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(NSV) as [NSV_BD] into #NSV_BD   from  dbo.KLG_RGM_KPI_SC_BUDGET  where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT] -- B

select #NSV_YTD.[BUSINESS_UNIT], CASE WHEN ([NSV_BD] <> 0) THEN ( (([NSV_YTD])-([NSV_BD]))/[NSV_BD]) ELSE 0 END as [NSV_V_BD] 
into #BU_NSV_V_BD

from 
#NSV_YTD left outer join  #NSV_BD
on 

#NSV_YTD.[BUSINESS_UNIT] = #NSV_BD.[BUSINESS_UNIT]



--------------------------------------###################################################################################################--------------------------------------
-- 5) NSV/LB Actual
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_LB] into #NSV_YTD_LB   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(LBS) as [LBS_YTD_LB] into #LBS_YTD_LB   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- B

select #NSV_YTD_LB.[BUSINESS_UNIT] , ([NSV_YTD_LB])/([LBS_YTD_LB]) as [NSV_LB_ACTUAL] into #BU_NSV_LB_ACTUAL 
from 
#NSV_YTD_LB,
#LBS_YTD_LB

where 
#NSV_YTD_LB.[BUSINESS_UNIT] = #LBS_YTD_LB.[BUSINESS_UNIT] 
--------------------------------------###################################################################################################--------------------------------------
--6) NSV/LB Actual V. YA
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_ACTUAL_LB] into #NSV_LB_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(LBS) as [LBS_YTD_ACTUAL_LB] into #LBS_LB_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- B
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_LB_YA] into #NSV_LB_ACTUAL_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]  -- C
select [BUSINESS_UNIT] , sum(LBS) as [LBS_YTD_LB_YA] into #LBS_LB_ACTUAL_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]  -- D


select #NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] ,  
((([NSV_YTD_ACTUAL_LB])/([LBS_YTD_ACTUAL_LB]))-(([NSV_YTD_LB_YA])/([LBS_YTD_LB_YA])))/(([NSV_YTD_LB_YA])/([LBS_YTD_LB_YA])) as [NSV_LB_ACTUAL_V_YA]

into #BU_NSV_LB_ACTUAL_V_YA

from 
#NSV_LB_ACTUAL_YA,
#LBS_LB_ACTUAL_YA,
#NSV_LB_ACTUAL_YTD_YA,
#LBS_LB_ACTUAL_YTD_YA 

where 
#NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] = #LBS_LB_ACTUAL_YA.[BUSINESS_UNIT] and 

#NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] = #NSV_LB_ACTUAL_YTD_YA.[BUSINESS_UNIT] and 

#NSV_LB_ACTUAL_YA.[BUSINESS_UNIT] = #LBS_LB_ACTUAL_YTD_YA.[BUSINESS_UNIT] 

--------------------------------------###################################################################################################--------------------------------------
--7) SCM % Actual
select [BUSINESS_UNIT] , sum(SCM) as [SCM_PERC_ACTUAL_YA] into #SCM_PERC_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(NSV) as [NSV_PERC_ACTUAL_YA] into #NSV_PERC_ACTUAL_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- B


select #SCM_PERC_ACTUAL_YA.[BUSINESS_UNIT] ,([SCM_PERC_ACTUAL_YA])/([NSV_PERC_ACTUAL_YA]) as [SCM_%_ACTUAL] 

into #BU_SCM_PERC_ACTUAL
from 
#SCM_PERC_ACTUAL_YA,
#NSV_PERC_ACTUAL_YA

where 
#SCM_PERC_ACTUAL_YA.[BUSINESS_UNIT] = #NSV_PERC_ACTUAL_YA.[BUSINESS_UNIT] 

--------------------------------------###################################################################################################--------------------------------------
--8)SCM % v. YA

select [BUSINESS_UNIT] , sum(SCM) as [SCM_YTD_V] into #SCM_YTD_V   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- A
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_V] into #NSV_YTD_V   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- B
select [BUSINESS_UNIT] , sum(SCM) as [SCM_YTD_V_YA] into #SCM_YTD_V_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]  -- C
select [BUSINESS_UNIT] , sum(NSV) as [NSV_YTD_V_YA] into #NSV_YTD_V_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]  -- D


select #SCM_YTD_V.[BUSINESS_UNIT] , ((([SCM_YTD_V])/([NSV_YTD_V]))*100 - (([SCM_YTD_V_YA])/([NSV_YTD_V_YA]))*100) as [SCM_%_V_YA]


into #BU_SCM_PERC_V_YA

from 
#SCM_YTD_V,
#NSV_YTD_V,
#SCM_YTD_V_YA,
#NSV_YTD_V_YA 

where 
#SCM_YTD_V.[BUSINESS_UNIT] = #NSV_YTD_V.[BUSINESS_UNIT] and 

#SCM_YTD_V.[BUSINESS_UNIT] = #SCM_YTD_V_YA.[BUSINESS_UNIT] and 

#SCM_YTD_V.[BUSINESS_UNIT] = #NSV_YTD_V_YA.[BUSINESS_UNIT]  


--------------------------------------###################################################################################################--------------------------------------
--Additional KPI's Requested by Anupama.

select [BUSINESS_UNIT] , sum(NSV) as [ACTUAL_NSV] into #ACTUAL_NSV   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  --  ACTUAL NSV
select [BUSINESS_UNIT] , sum(NSV) as [ACTUAL_NSV_YTD_YA] into #BU_ACTUAL_NSV_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]  --  ACTUAL NSV YTD YA
select [BUSINESS_UNIT] , sum(LBS) as [ACTUAL_LBS] into #ACTUAL_LBS   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT]  -- ACTUAL LBS
select [BUSINESS_UNIT] , sum(LBS) as [ACTUAL_LBS_YTD_YA] into #BU_ACTUAL_LBS_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT]  -- ACTUAL LBS YTD YA
select [BUSINESS_UNIT] , sum(SCM) as [ACTUAL_SCM] into #ACTUAL_SCM  from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD' group by [BUSINESS_UNIT] -- ACTUAL SCM
select [BUSINESS_UNIT] , sum(SCM) as [ACTUAL_SCM_YTD_YA] into #BU_ACTUAL_SCM_YTD_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART  where [Group] = 'YTD_YA' group by [BUSINESS_UNIT] -- ACTUAL SCM YTD YA
select [BUSINESS_UNIT] , sum(NSV) as [BUDGET_NSV] into #BUDGET_NSV   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]  -- BUDGET NSV




--------------------------------------###################################################################################################---------------------------------------

--Final View 

-- 1) #BU_NSV_ACTUAL.[NSV_ACTUAL]
-- 2) #BU_NSV_CHG_YA.[NSV_%_CHG_YA]
-- 3) #BU_NSV_USD_CHG_YA.[NSV_USD_CHG_YA]
-- 4) #BU_NSV_V_BD.[NSV_V_BD]  -- Left Outer Join.
-- 5) #BU_NSV_LB_ACTUAL.[NSV_LB_ACTUAL]
-- 6) #BU_NSV_LB_ACTUAL_V_YA.[NSV_LB_ACTUAL_V_YA]
-- 7) #BU_SCM_PERC_ACTUAL.[SCM_%_ACTUAL]
-- 8) #BU_SCM_PERC_V_YA.[SCM_%_V_YA]

truncate table [STG].[RGM_BU_YTD]

Insert Into [STG].[RGM_BU_YTD](
[BUSINESS_UNIT] ,[NSV_ACTUAL],[NSV_%_CHG_YA],[NSV_USD_CHG_YA] , [NSV_V_BD],[NSV_LB_ACTUAL],[NSV_LB_ACTUAL_V_YA],[SCM_%_ACTUAL],[SCM_%_V_YA],[ACTUAL_NSV],[ACTUAL_LBS],[ACTUAL_SCM],[BUDGET_NSV]
,[ACTUAL_NSV_YTD_YA] ,[ACTUAL_LBS_YTD_YA],[ACTUAL_SCM_YTD_YA])

(
select  #BU_NSV_ACTUAL.[BUSINESS_UNIT]  ,[NSV_ACTUAL],[NSV_%_CHG_YA],[NSV_USD_CHG_YA] , [NSV_V_BD],[NSV_LB_ACTUAL],[NSV_LB_ACTUAL_V_YA],[SCM_%_ACTUAL],[SCM_%_V_YA]
,[ACTUAL_NSV],[ACTUAL_LBS],[ACTUAL_SCM],[BUDGET_NSV]
,[ACTUAL_NSV_YTD_YA] ,[ACTUAL_LBS_YTD_YA],[ACTUAL_SCM_YTD_YA]

from 
 #BU_NSV_ACTUAL ,
  #BU_NSV_V_BD ,
 #BU_NSV_CHG_YA,
 #BU_NSV_USD_CHG_YA,
  #BU_NSV_LB_ACTUAL,
 #BU_NSV_LB_ACTUAL_V_YA,
 #BU_SCM_PERC_ACTUAL,
#BU_SCM_PERC_V_YA,
#ACTUAL_NSV,
#ACTUAL_LBS,
#ACTUAL_SCM,
#BUDGET_NSV,
#BU_ACTUAL_NSV_YTD_YA,
#BU_ACTUAL_LBS_YTD_YA ,
#BU_ACTUAL_SCM_YTD_YA

  

 Where 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_CHG_YA.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_USD_CHG_YA.[BUSINESS_UNIT] and 

 #BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_LB_ACTUAL.[BUSINESS_UNIT] and 
 
 #BU_NSV_ACTUAL.[BUSINESS_UNIT]  = #BU_NSV_LB_ACTUAL_V_YA.[BUSINESS_UNIT] and 
 
  #BU_NSV_ACTUAL.[BUSINESS_UNIT]= #BU_SCM_PERC_ACTUAL.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_SCM_PERC_V_YA.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_NSV_V_BD.[BUSINESS_UNIT]  and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #ACTUAL_NSV.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #ACTUAL_LBS.[BUSINESS_UNIT] and 

#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #ACTUAL_SCM.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BUDGET_NSV.[BUSINESS_UNIT] and 
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_ACTUAL_NSV_YTD_YA.[BUSINESS_UNIT] and
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_ACTUAL_LBS_YTD_YA.[BUSINESS_UNIT] and
#BU_NSV_ACTUAL.[BUSINESS_UNIT] = #BU_ACTUAL_SCM_YTD_YA.[BUSINESS_UNIT]

  )
   
 



GO
/****** Object:  StoredProcedure [dbo].[USP_BU_YTD_IBP]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		<Uman,Bandari>
-- Create date: <02/26/2017>
-- Description:	<BU YTD KPI's>
-- =============================================
CREATE PROCEDURE [dbo].[USP_BU_YTD_IBP]
	
AS
BEGIN


-------------------------------------------------------------------------------------------------------------------------------------------------------
--1.NSV Actual IBP
--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = A-B

select [BUSINESS_UNIT], sum(IBP_GSV) as [NSV_ACTUAL_GSV_IBP] into #BU_NSV_ACTUAL_GSV_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] 
select [BUSINESS_UNIT], sum(IBP_KMF) as [NSV_ACTUAL_KMF_IBP] into #BU_NSV_ACTUAL_KMF_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]

select #BU_NSV_ACTUAL_GSV_IBP.[BUSINESS_UNIT], ([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP]) as NSV_ACTUAL_IBP into #BU_NSV_ACTUAL_BP 

from #BU_NSV_ACTUAL_GSV_IBP Inner Join #BU_NSV_ACTUAL_KMF_IBP
on #BU_NSV_ACTUAL_GSV_IBP.BUSINESS_UNIT = #BU_NSV_ACTUAL_KMF_IBP.BUSINESS_UNIT

-------------------------------------------------------------------------------------------------------------------------------------------------------
--2.NSV $ CHG YA IBP
--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--D = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--E = (A-B) - (C-D)

select [BUSINESS_UNIT], sum(IBP_GSV) as [NSV_ACTUAL_GSV_IBP] into #BU_NSV_CHG_GSV_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]
select [BUSINESS_UNIT], sum(IBP_KMF) as [NSV_ACTUAL_KMF_IBP] into #BU_NSV_CHG_KMF_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]

select [BUSINESS_UNIT], sum(GSV) as [NSV_ACTUAL_YA_GSV_IBP] into #BU_NSV_CHG_YA_GSV_IBP   from  dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD_YA'   group by [BUSINESS_UNIT]
select [BUSINESS_UNIT], sum(KMF) as [NSV_ACTUAL_YA_KMF_IBP] into #BU_NSV_CHG_YA_KMF_IBP   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA'  group by [BUSINESS_UNIT]


select #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT
--, [NSV_ACTUAL_GSV_IBP],[NSV_ACTUAL_KMF_IBP] ,[NSV_ACTUAL_YA_GSV_IBP] ,[NSV_ACTUAL_YA_KMF_IBP] 
--,(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) as Temp1 
--,(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) as Temp2,
  ,(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP]))-(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) as NSV_CHG_YA_IBP  into #NSV_CHG_YA_IBP from 

#BU_NSV_CHG_YA_GSV_IBP INNER JOIN #BU_NSV_CHG_YA_KMF_IBP on #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT = #BU_NSV_CHG_YA_KMF_IBP.BUSINESS_UNIT
LEFT OUTER JOIN #BU_NSV_CHG_GSV_IBP on #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT = #BU_NSV_CHG_GSV_IBP.BUSINESS_UNIT
LEFT OUTER JOIN #BU_NSV_CHG_KMF_IBP on #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT = #BU_NSV_CHG_KMF_IBP.BUSINESS_UNIT

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--3.NSV % CHG YA IBP
--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--D = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--E = ((A-B) - (C-D)) / (C-D)


select [BUSINESS_UNIT], sum(IBP_GSV) as [NSV_ACTUAL_GSV_IBP] into #BU_NSV_CHG_GSV_PRT_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')   group by [BUSINESS_UNIT]
select [BUSINESS_UNIT], sum(IBP_KMF) as [NSV_ACTUAL_KMF_IBP] into #BU_NSV_CHG_KMF_PRT_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]

select [BUSINESS_UNIT], sum(GSV) as [NSV_ACTUAL_YA_GSV_IBP] into #BU_NSV_CHG_YA_GSV_PRT_IBP   from  dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD_YA'   group by [BUSINESS_UNIT]
select [BUSINESS_UNIT], sum(KMF) as [NSV_ACTUAL_YA_KMF_IBP] into #BU_NSV_CHG_YA_KMF_PRT_IBP   from  dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA'  group by [BUSINESS_UNIT]


select #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT, 
--[NSV_ACTUAL_GSV_IBP],[NSV_ACTUAL_KMF_IBP] ,[NSV_ACTUAL_YA_GSV_IBP] ,[NSV_ACTUAL_YA_KMF_IBP] 
--,(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) as Temp1 
--,(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) as Temp2,
  --,CASE WHEN ((([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) <> 0)THEN ((([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP]))-(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP]))/(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP]))) ELSE 0 END  as NSV_CHG_YA_PRT_IBP 
  ((([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP]))-(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])))/(([NSV_ACTUAL_GSV_IBP])-([NSV_ACTUAL_KMF_IBP])) as  NSV_CHG_YA_PRT_IBP 
  
  into #BU_NSV_CHG_YA_PRT_IBP
  
  from 

#BU_NSV_CHG_YA_GSV_IBP INNER JOIN #BU_NSV_CHG_YA_KMF_IBP on #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT = #BU_NSV_CHG_YA_KMF_IBP.BUSINESS_UNIT
LEFT OUTER JOIN #BU_NSV_CHG_GSV_IBP on #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT = #BU_NSV_CHG_GSV_IBP.BUSINESS_UNIT
LEFT OUTER JOIN #BU_NSV_CHG_KMF_IBP on #BU_NSV_CHG_YA_GSV_IBP.BUSINESS_UNIT = #BU_NSV_CHG_KMF_IBP.BUSINESS_UNIT

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--4.NSV V. Budget

--A = if (Group) = 'YTD' THEN sum(BD.BUD_KMF)
--B=  if (Group) = 'YTD' THEN sum(BD.BUD_GSV)
--C=Base_Bud_T_Rate = A/B
--D = if (Group) = 'YTD' THEN sum(BD.IBP_GSV)
--E = if (Group) = 'YTD' THEN sum(BD.BUD_KMF_ADJ)
--Total_Bud_KMF = C * (D+E)
--Total_Bud_T_Rate = Total_Bud_KMF / D
--G = if (Group) = 'YTD' THEN sum(BD.BUD_NSV)
--Final = G - B - (B * Total_Bud_T_Rate)
--g = B-(B*Total_Bud_T_Rate)


select [BUSINESS_UNIT], (Sum(GSV))-(sum(GSV))*(CASE WHEN (SUM(IBP_GSV) <> 0) THEN (((CASE WHEN (sum(GSV) <> 0 ) THEN (sum(KMF)/sum(GSV)) ELSE 0 END)*(sum(IBP_GSV)+sum(BUD_KMF_ADJ)))/(SUM(IBP_GSV))) ELSE 0 END) as [NSV_KMF_GSV_IBP] 

into #BU_NSV_KMF_IBP   

from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]






--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--5.NSV Proxy Actual
--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD' THEN Sum(DM.LBS)
--D = (A-B) / C

Select [BUSINESS_UNIT] , (sum(IBP_GSV))-(sum(IBP_KMF)) as BU_IBP_GSV_KMF into #BU_IBP_GSV_KMF  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT]

Select [BUSINESS_UNIT] , sum(LBS)  as BU_DM_LBS  into #BU_DM_LBS from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD' group by [BUSINESS_UNIT]

select #BU_DM_LBS.BUSINESS_UNIT , BU_IBP_GSV_KMF/BU_DM_LBS as NSV_PRXY_ACTL_IBP into #NSV_PRXY_ACTL from 
#BU_DM_LBS LEFT OUTER JOIN #BU_IBP_GSV_KMF on #BU_DM_LBS.BUSINESS_UNIT = #BU_IBP_GSV_KMF.BUSINESS_UNIT 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--6.NSV Proxy v. YA

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.LBS)
--D = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--E = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--F = if (Group) = 'YTD YA' THEN Sum(DM.LBS)
--G = ((A-B) / C) - ((D-E) / F)"

Select [BUSINESS_UNIT] , (sum(IBP_GSV))-(sum(IBP_KMF)) as BU_IBP_GSV_KMF_YA into #BU_IBP_GSV_KMF_YA  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT]

Select [BUSINESS_UNIT] ,  sum(LBS)  as BU_DM_LBS_YA  into #BU_DM_LBS_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT]

select #BU_DM_LBS_YA.BUSINESS_UNIT , BU_IBP_GSV_KMF_YA/BU_DM_LBS_YA as NSV_PRXY_ACTL_YA  into #NSV_PRXY_ACTL_YA from 
#BU_DM_LBS_YA LEFT OUTER JOIN #BU_IBP_GSV_KMF_YA on #BU_DM_LBS_YA.BUSINESS_UNIT = #BU_IBP_GSV_KMF_YA.BUSINESS_UNIT 


Select [BUSINESS_UNIT] , ((sum(GSV))-(sum(KMF)))/ sum(LBS)  as BU_DM_LBS_GSV_KMF_YA  into #BU_DM_LBS_GSV_KMF_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT]

select #NSV_PRXY_ACTL_YA .BUSINESS_UNIT,(NSV_PRXY_ACTL_YA)-(BU_DM_LBS_GSV_KMF_YA) as NSV_PRXY_V_YA_IBP into #NSV_PRXY_V_YA  from 

#NSV_PRXY_ACTL_YA inner Join #BU_DM_LBS_GSV_KMF_YA on #BU_DM_LBS_GSV_KMF_YA.BUSINESS_UNIT = #NSV_PRXY_ACTL_YA.BUSINESS_UNIT

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--7.SCM Proxy Actual

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD' THEN Sum(DM.COP)
--D = (A-B) - C"

Select [BUSINESS_UNIT] ,  sum(COP)  as BU_DM_COP  into #BU_DM_COP from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD' group by [BUSINESS_UNIT]

select #BU_DM_COP.BUSINESS_UNIT,(BU_IBP_GSV_KMF_YA-BU_DM_COP) as SCM_PRXY_ACTL_IBP  into #SCM_PRXY_ACTL from 
#BU_DM_COP LEFT OUTER JOIN #BU_IBP_GSV_KMF_YA on #BU_IBP_GSV_KMF_YA.BUSINESS_UNIT = #BU_DM_COP.BUSINESS_UNIT

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--8.SCM Proxy YA
--A = if (Group) = 'YTD ' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.COP)
--D = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--E = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--F = if (Group) = 'YTD YA' THEN Sum(DM.COP)
--G = (A-B - C) - (D-E - F)"

Select [BUSINESS_UNIT], ((SUM(GSV))-(sum(KMF))-(sum(COP))) as GSV_KMF_COP_YA into #BU_GSV_KMF_COP_YA  from [dbo].[KLG_RGM_KPI_SC_DATAMART] where  [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT]

Select [BUSINESS_UNIT] ,  sum(COP)  as BU_DM_COP_YA  into #BU_DM_COP_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT]

Select #BU_DM_COP_YA.BUSINESS_UNIT, #BU_IBP_GSV_KMF_YA.BU_IBP_GSV_KMF_YA - BU_DM_COP_YA as BD_GSV_KMF_COP into #BD_GSV_KMF_COP from 

#BU_DM_COP_YA LEFT OUTER JOIN #BU_IBP_GSV_KMF_YA on #BU_IBP_GSV_KMF_YA.BUSINESS_UNIT = #BU_DM_COP_YA.BUSINESS_UNIT

Select #BU_GSV_KMF_COP_YA.[BUSINESS_UNIT], (GSV_KMF_COP_YA-BD_GSV_KMF_COP) as SCM_PRXY_YA_IBP into #SCM_PRXY_YA from 

#BU_GSV_KMF_COP_YA  LEFT OUTER JOIN #BD_GSV_KMF_COP on #BD_GSV_KMF_COP.BUSINESS_UNIT = #BU_GSV_KMF_COP_YA.BUSINESS_UNIT

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


select [BUSINESS_UNIT], sum(GSV) as [GSV_BUD] into #BU_GSV_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]  -- BUD_GSV
select [BUSINESS_UNIT], sum(KMF) as [KMF_BUD] into #BU_KMF_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]  --BUD_KMF
select [BUSINESS_UNIT], sum(NSV) as [NSV_BUD] into #BU_NSV_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]  --BUD_NSV


select [BUSINESS_UNIT], sum(BUD_KMF_ADJ) as [GSV_KMF_ADJ_BUD] into #BU_GSV_KMF_ADJ_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT]  --BUD_KMF_ADJ
select [BUSINESS_UNIT], sum(IBP_GSV) as [GSV_IBP] into #BU_GSV_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] --IBP_GSV
select [BUSINESS_UNIT], sum(IBP_KMF) as [KMF_IBP] into #BU_KMF_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] --IBP_KMF
select [BUSINESS_UNIT], sum(IBP_NSV) as [NSV_IBP] into #BU_NSV_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] --IBP_NSV
select [BUSINESS_UNIT], sum(YAG_GSV) as [YAG_GSV] into #BU_YAG_GSV  from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] --YAG_GSV
select [BUSINESS_UNIT], sum(YAG_KMF) as [YAG_KMF] into #BU_YAG_KMF   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] --YAG_KMF
select [BUSINESS_UNIT], sum(YAG_NSV) as [YAG_NSV] into #BU_YAG_NSV   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] --YAG_KMF
select [BUSINESS_UNIT], sum(COP) as [COP_YTD_IBP] into #BU_COP_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD'  group by [BUSINESS_UNIT] --COP_YA
select [BUSINESS_UNIT], sum(COP) as [COP_YTD_YA_IBP] into #BU_COP_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD_YA'  group by [BUSINESS_UNIT] --COP_YTD_YA


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TRUNCATE TABLE [STG].[RGM_BU_YTD_IBP] 

INSERT INTO  [STG].[RGM_BU_YTD_IBP] ([BUSINESS_UNIT]
      ,[NSV_ACTUAL_IBP]
      ,[NSV_CHG_YA_IBP]
      ,[NSV_CHG_YA_PRT_IBP]
      ,[NSV_KMF_GSV_IBP]
      ,[NSV_PRXY_ACTL_IBP]
      ,[NSV_PRXY_V_YA_IBP]
      ,[SCM_PRXY_ACTL_IBP]
      ,[SCM_PRXY_YA_IBP]
 ,[GSV_BUD]
 ,[KMF_BUD]
 ,[NSV_BUD]
 ,[GSV_KMF_ADJ_BUD]
 ,[GSV_IBP]
 ,[KMF_IBP]
 ,[NSV_IBP]
 ,[YAG_GSV]
 ,[YAG_KMF]
 ,[YAG_NSV]
 ,[COP_YTD]
 ,[COP_YTD_YA]

 )
 

(
Select 
#NSV_CHG_YA_IBP.[BUSINESS_UNIT],NSV_ACTUAL_IBP,NSV_CHG_YA_IBP ,NSV_CHG_YA_PRT_IBP ,[NSV_KMF_GSV_IBP],NSV_PRXY_ACTL_IBP,NSV_PRXY_V_YA_IBP,SCM_PRXY_ACTL_IBP,SCM_PRXY_YA_IBP
,[GSV_BUD]
 ,[KMF_BUD]
 ,[NSV_BUD]
 ,[GSV_KMF_ADJ_BUD]
 ,[GSV_IBP]
 ,[KMF_IBP]
 ,[NSV_IBP]
 ,[YAG_GSV]
 ,[YAG_KMF]
 ,[YAG_NSV]
 ,[COP_YTD_IBP]
 ,[COP_YTD_YA_IBP]

from 
 #NSV_CHG_YA_IBP LEFT OUTER JOIN #BU_NSV_ACTUAL_BP on #NSV_CHG_YA_IBP.BUSINESS_UNIT = #BU_NSV_ACTUAL_BP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_NSV_CHG_YA_PRT_IBP on #BU_NSV_CHG_YA_PRT_IBP.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_NSV_KMF_IBP on #BU_NSV_KMF_IBP.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #NSV_PRXY_ACTL on #NSV_PRXY_ACTL.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #NSV_PRXY_V_YA on #NSV_PRXY_V_YA.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #SCM_PRXY_ACTL on #SCM_PRXY_ACTL.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #SCM_PRXY_YA on #SCM_PRXY_YA.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_GSV_BUD on #BU_GSV_BUD.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_KMF_BUD on #BU_KMF_BUD.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_NSV_BUD on #BU_NSV_BUD.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_GSV_KMF_ADJ_BUD on #BU_GSV_KMF_ADJ_BUD.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_GSV_IBP on #BU_GSV_IBP.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN  #BU_KMF_IBP on #BU_KMF_IBP.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_NSV_IBP on #BU_NSV_IBP.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_YAG_GSV on #BU_YAG_GSV.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_YAG_KMF on #BU_YAG_KMF.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_YAG_NSV on #BU_YAG_NSV.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_COP_YA on #BU_COP_YA.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 LEFT OUTER JOIN #BU_COP_YTD_YA on #BU_COP_YTD_YA.BUSINESS_UNIT = #NSV_CHG_YA_IBP.BUSINESS_UNIT
 )

END











GO
/****** Object:  StoredProcedure [dbo].[USP_CATEGORY_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













-- =============================================
-- Author:		<Uman Bandari>
-- Create date: <02/26/2017>
-- Description:	<Category 12P KPI's>
-- =============================================
CREATE PROCEDURE [dbo].[USP_CATEGORY_12P]

AS
--------------------- 1) SCM $ Actual
select    
[BUSINESS_UNIT], 
[CATEGORY],
sum(SCM)/1000000 as [SCM_$_ACTUAL]

into #CAT_SCM_ACTUAL
from dbo.KLG_RGM_KPI_SC_DATAMART    where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT], [CATEGORY]  order by [BUSINESS_UNIT], [CATEGORY]



-------------------##############################################################################################################################################---------------------------------------------------------
-- 2) GSV v. YA

select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD into #temp_GSV_YTD from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]

SELECT [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_YA into #temp_GSV_YTD_YA FROM   dbo.KLG_RGM_KPI_SC_DATAMART  WHERE [GROUP] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] , [CATEGORY]

select #temp_GSV_YTD_YA.[BUSINESS_UNIT], #temp_GSV_YTD_YA.[CATEGORY], GSV_YTD , GSV_YTD_YA  , ((GSV_YTD) - (GSV_YTD_YA))/(GSV_YTD_YA) as [GSV_V_YA]  into #CAT_GSV_V_YA 
from  #temp_GSV_YTD_YA  LEFT OUTER JOIN #temp_GSV_YTD   on #temp_GSV_YTD.CATEGORY = #temp_GSV_YTD_YA.CATEGORY and #temp_GSV_YTD.[BUSINESS_UNIT] = #temp_GSV_YTD_YA.[BUSINESS_UNIT]
order by #temp_GSV_YTD.[BUSINESS_UNIT], #temp_GSV_YTD.[CATEGORY]




-------------------###################################################################################################################################################---------------------------------------------------------
-- 3) NSV v.YA

select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD into #temp_NSV_YTD from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]

SELECT [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_YA into #temp_NSV_YTD_YA FROM   dbo.KLG_RGM_KPI_SC_DATAMART  WHERE [GROUP] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] , [CATEGORY]


select #temp_NSV_YTD_YA.[BUSINESS_UNIT], #temp_NSV_YTD_YA.[CATEGORY], NSV_YTD , NSV_YTD_YA  , ((NSV_YTD) - (NSV_YTD_YA))/(NSV_YTD_YA) as [NSV_V_YA]  into #CAT_NSV_V_YA 
from #temp_NSV_YTD_YA LEFT OUTER JOIN #temp_NSV_YTD    on  #temp_NSV_YTD.CATEGORY = #temp_NSV_YTD_YA .CATEGORY and #temp_NSV_YTD.[BUSINESS_UNIT] = #temp_NSV_YTD_YA.[BUSINESS_UNIT]
order by #temp_NSV_YTD.[BUSINESS_UNIT], #temp_NSV_YTD.[CATEGORY]



-------------------###################################################################################################################################################---------------------------------------------------------
-- 4) NSV v. Budget
--select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_DM into #temp_NSV_YTD_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]

--select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_BD into #temp_NSV_BD from dbo.KLG_RGM_KPI_SC_BUDGET    group by  [BUSINESS_UNIT] ,[CATEGORY]

--select #temp_NSV_BD.[BUSINESS_UNIT] , #temp_NSV_BD.CATEGORY , NSV_YTD_DM , NSV_YTD_BD , 
--CASE WHEN (NSV_YTD_BD <> 0) THEN (((NSV_YTD_DM)-(NSV_YTD_BD))/(NSV_YTD_BD)) ELSE 0 END  as [NSV_v_BUDGET] 
--into #CAT_NSV_BUDGET 

--from  #temp_NSV_BD left outer join #temp_NSV_YTD_DM
--on  #temp_NSV_YTD_DM.[BUSINESS_UNIT] = #temp_NSV_BD.[BUSINESS_UNIT] and #temp_NSV_YTD_DM.[CATEGORY] = #temp_NSV_BD.CATEGORY



-------------------###################################################################################################################################################---------------------------------------------------------
-- 5) Trade % v.YA
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF) as KMF_YTD_YA_TRADE_DM into #temp_KMF_YTD_YA_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --A
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_YA_TRADE_DM into #temp_GSV_YTD_YA_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY] --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF) as KMF_YTD_TRADE_DM into #temp_KMF_YTD_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY] --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_TRADE_DM into #temp_GSV_YTD_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY] --D


select #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] , #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY] ,
 --(((KMF_YTD_YA_TRADE_DM)/(GSV_YTD_YA_TRADE_DM))*100) as G ,
 -- (((KMF_YTD_TRADE_DM)/(GSV_YTD_TRADE_DM))*100) as H , 
CASE WHEN (GSV_YTD_YA_TRADE_DM <> 0 and GSV_YTD_TRADE_DM <> 0) THEN (((((KMF_YTD_YA_TRADE_DM)/(GSV_YTD_YA_TRADE_DM))*100) - (((KMF_YTD_TRADE_DM)/(GSV_YTD_TRADE_DM))*100))) ELSE 0 END as [TRADE_%_V_YA]

into #CAT_TRADE_V_YA from 

#temp_KMF_YTD_YA_TRADE_DM LEFT OUTER JOIN #temp_GSV_YTD_YA_TRADE_DM on #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] = #temp_GSV_YTD_YA_TRADE_DM.[BUSINESS_UNIT] and #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY] = #temp_GSV_YTD_YA_TRADE_DM.[CATEGORY]
LEFT OUTER JOIN #temp_KMF_YTD_TRADE_DM on #temp_KMF_YTD_TRADE_DM.[BUSINESS_UNIT] = #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] and #temp_KMF_YTD_TRADE_DM.[CATEGORY] = #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY]
LEFT OUTER JOIN #temp_GSV_YTD_TRADE_DM on #temp_GSV_YTD_TRADE_DM.[BUSINESS_UNIT] = #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] and #temp_GSV_YTD_TRADE_DM.CATEGORY = #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY]




-------------------###################################################################################################################################################---------------------------------------------------------
----6) Trade%v.Budget  , Divide by Zero Error , Data issue
--select [BUSINESS UNIT] , [CATEGORY] , SUM(KMF)/SUM(GSV)  from dbo.KLG_RGM_KPI_BUDGET_DUMMY  group by  [BUSINESS UNIT] ,[CATEGORY]  -- A
--select [BUSINESS UNIT] , [CATEGORY] , SUM(KMF)  from dbo.KLG_RGM_KPI_DATAMART_DUMMY where [GROUP] = '12P' group by  [BUSINESS UNIT] ,[CATEGORY]  --B
--select [BUSINESS UNIT] , [CATEGORY] , SUM(GSV)  from dbo.KLG_RGM_KPI_DATAMART_DUMMY where [GROUP] = '12P' group by  [BUSINESS UNIT] ,[CATEGORY] --C

-------------------###################################################################################################################################################---------------------------------------------------------
-- 7) NSV/ LB Actual 

select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_NSV_LB_ACTUAL into  #NSV_YTD_NSV_LB_ACTUAL from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi')
group by  [BUSINESS_UNIT] ,[CATEGORY]  --A
select [BUSINESS_UNIT] , [CATEGORY] , SUM(LBS) as LBS_YTD_NSV_LB_ACTUAL into #LBS_YTD_NSV_LB_ACTUAL from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi')  group by  [BUSINESS_UNIT] ,[CATEGORY]  --B

select #NSV_YTD_NSV_LB_ACTUAL.[BUSINESS_UNIT] , #NSV_YTD_NSV_LB_ACTUAL.[CATEGORY] ,  NSV_YTD_NSV_LB_ACTUAL , LBS_YTD_NSV_LB_ACTUAL  ,CASE WHEN(LBS_YTD_NSV_LB_ACTUAL <>0) THEN ((NSV_YTD_NSV_LB_ACTUAL)/(LBS_YTD_NSV_LB_ACTUAL)) ELSE 0 END as [NSV_BY_LB_ACTUAL] 

into #CAT_NSV_LB_ACTUAL
from #NSV_YTD_NSV_LB_ACTUAL ,#LBS_YTD_NSV_LB_ACTUAL 
where #NSV_YTD_NSV_LB_ACTUAL.[BUSINESS_UNIT] = #LBS_YTD_NSV_LB_ACTUAL.[BUSINESS_UNIT] and 
#NSV_YTD_NSV_LB_ACTUAL.CATEGORY = #LBS_YTD_NSV_LB_ACTUAL.CATEGORY



-------------------###################################################################################################################################################---------------------------------------------------------
-- 8) NSV/LBv.YA

select [BUSINESS_UNIT] , [CATEGORY] , sum(NSV) as NSV_YTD_NSV_LB into  #NSV_YTD_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY] --A
select [BUSINESS_UNIT] , [CATEGORY] , sum(LBS) as LBS_YTD_NSV_LB into #LBS_YTD_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P'and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY] --B
select [BUSINESS_UNIT] , [CATEGORY] , sum(NSV) as NSV_YTD_YA_NSV_LB into  #NSV_YTD_YA_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi')
group by  [BUSINESS_UNIT] ,[CATEGORY]  --C
select [BUSINESS_UNIT] , [CATEGORY] , sum(LBS) as LBS_YTD_YA_NSV_LB into #LBS_YTD_YA_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY] --D

select #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] , #NSV_YTD_YA_NSV_LB.[CATEGORY] , 
--(NSV_YTD_NSV_LB)/(LBS_YTD_NSV_LB) as G 
--, (NSV_YTD_YA_NSV_LB)/(LBS_YTD_YA_NSV_LB) as H , 
CASE WHEN (LBS_YTD_NSV_LB <> 0 and LBS_YTD_YA_NSV_LB <> 0 ) THEN ( (((NSV_YTD_NSV_LB)/(LBS_YTD_NSV_LB))-((NSV_YTD_YA_NSV_LB)/(LBS_YTD_YA_NSV_LB)))/((NSV_YTD_YA_NSV_LB)/(LBS_YTD_YA_NSV_LB))) ELSE 0 END  as [NSV_LB_V_YA]

into #CAT_NSV_LB_V_YA
from 
#NSV_YTD_YA_NSV_LB LEFT OUTER JOIN  #LBS_YTD_YA_NSV_LB  on #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] = #LBS_YTD_YA_NSV_LB.[BUSINESS_UNIT] and #NSV_YTD_YA_NSV_LB.CATEGORY = #LBS_YTD_YA_NSV_LB.CATEGORY 
LEFT OUTER JOIN #NSV_YTD_NSV_LB on #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] = #NSV_YTD_NSV_LB.[BUSINESS_UNIT] and #NSV_YTD_YA_NSV_LB.CATEGORY = #NSV_YTD_NSV_LB.CATEGORY 
LEFT OUTER JOIN #LBS_YTD_NSV_LB on #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] = #LBS_YTD_NSV_LB.[BUSINESS_UNIT] and #NSV_YTD_YA_NSV_LB.CATEGORY = #LBS_YTD_NSV_LB.CATEGORY 


-------------------###################################################################################################################################################---------------------------------------------------------
-- 9) SCM%v.YA
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM) as SCM_YTD_SCM_DM   into #SCM_YTD_SCM_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_SCM_DM   into #NSV_YTD_SCM_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P ' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM) as SCM_YTD_YA_SCM_DM into #SCM_YTD_YA_SCM_DM from dbo.KLG_RGM_KPI_SC_DATAMART   where [GROUP] = '12P_YA ' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_YA_SCM_DM  into #NSV_YTD_YA_SCM_DM from  dbo.KLG_RGM_KPI_SC_DATAMART   where [GROUP] = '12P_YA ' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --D

select #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] , #SCM_YTD_YA_SCM_DM.[CATEGORY] , 
--((SCM_YTD_SCM_DM)/(NSV_YTD_SCM_DM)) *100 as G , 
--(SCM_YTD_YA_SCM_DM)/(NSV_YTD_YA_SCM_DM) *100 as H , 
CASE WHEN (NSV_YTD_SCM_DM <> 0 and NSV_YTD_YA_SCM_DM <> 0) THEN (((((SCM_YTD_SCM_DM)/(NSV_YTD_SCM_DM)) *100)-((SCM_YTD_YA_SCM_DM)/(NSV_YTD_YA_SCM_DM) *100))) ELSE 0 END as [SCM_%_V_YA] 

into #CAT_SCM_V_YA
from 
#SCM_YTD_YA_SCM_DM LEFT OUTER JOIN #NSV_YTD_YA_SCM_DM on #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] = #NSV_YTD_YA_SCM_DM.[BUSINESS_UNIT] and #SCM_YTD_YA_SCM_DM.[CATEGORY] = #NSV_YTD_YA_SCM_DM.[CATEGORY]
LEFT OUTER JOIN #SCM_YTD_SCM_DM on #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] = #SCM_YTD_SCM_DM.[BUSINESS_UNIT] and #SCM_YTD_YA_SCM_DM.[CATEGORY] = #SCM_YTD_SCM_DM.[CATEGORY]
LEFT OUTER JOIN #NSV_YTD_SCM_DM on #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] = #NSV_YTD_SCM_DM.[BUSINESS_UNIT] and #SCM_YTD_YA_SCM_DM.[CATEGORY] = #NSV_YTD_SCM_DM.[CATEGORY]



-------------------###################################################################################################################################################---------------------------------------------------------
-- 10) Mix v.YA 
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM2) as SCM2_YTD_MIX_DM   into #SCM2_YTD_MIX_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_MIX_DM   into #GSV_YTD_MIX_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM2) as SCM2_YTD_YA_MIX_DM into #SCM2_YTD_YA_MIX_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P_YA ' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_YA_MIX_DM  into #GSV_YTD_YA_MIX_DM from  dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = '12P_YA ' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  --D

select #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] , #SCM2_YTD_YA_MIX_DM.[CATEGORY] ,
--((SCM2_YTD_MIX_DM)/(GSV_YTD_MIX_DM )*100) as G , 
--((SCM2_YTD_YA_MIX_DM )/(GSV_YTD_YA_MIX_DM))*100 as H
 
CASE WHEN (GSV_YTD_MIX_DM <> 0 and GSV_YTD_YA_MIX_DM <>0 ) THEN (((((SCM2_YTD_MIX_DM)/(GSV_YTD_MIX_DM )*100))-(((SCM2_YTD_YA_MIX_DM )/(GSV_YTD_YA_MIX_DM))*100))) ELSE 0 END 

as [MIX_V_YA] 

into #CAT_MIX_V_YA
from 
#SCM2_YTD_YA_MIX_DM LEFT OUTER JOIN #GSV_YTD_YA_MIX_DM on #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] = #GSV_YTD_YA_MIX_DM.[BUSINESS_UNIT] and #SCM2_YTD_YA_MIX_DM.[CATEGORY] = #GSV_YTD_YA_MIX_DM.[CATEGORY]
LEFT OUTER JOIN #SCM2_YTD_MIX_DM on #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] = #SCM2_YTD_MIX_DM.[BUSINESS_UNIT] and #SCM2_YTD_YA_MIX_DM.[CATEGORY] = #SCM2_YTD_MIX_DM.[CATEGORY]
LEFT OUTER JOIN #GSV_YTD_MIX_DM on #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] = #GSV_YTD_MIX_DM.[BUSINESS_UNIT] and #SCM2_YTD_YA_MIX_DM.[CATEGORY] = #GSV_YTD_MIX_DM.[CATEGORY]



-------------------###################################################################################################################################################---------------------------------------------------------
-- 11) $ Share Actual   --16 records.
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_K into #USD_SHARE_K_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = '12P'  and [MARKET] = 'K' and  [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_N into #USD_SHARE_N_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = '12P'  and [MARKET] = 'N' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #USD_SHARE_K_AOD.[BUSINESS_UNIT] , #USD_SHARE_K_AOD.[CATEGORY]  , (USD_SHARE_K)/(USD_SHARE_N) as [$_SHARE_ACTUAL] into #CAT_USD_SHARE_ACTUAL 

from 
#USD_SHARE_K_AOD left outer join #USD_SHARE_N_AOD on #USD_SHARE_K_AOD.[BUSINESS_UNIT] = #USD_SHARE_N_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_AOD.[CATEGORY] = #USD_SHARE_N_AOD.[CATEGORY]






-------------------###################################################################################################################################################---------------------------------------------------------
--12 ) $ Share v. YA
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_K_YTD into #USD_SHARE_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_N_YTD into #USD_SHARE_N_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = '12P'  and [MARKET] = 'N' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_K_YTD_YA into #USD_SHARE_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_N_YTD_YA into #USD_SHARE_N_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = '12P YA'  and [MARKET] = 'N' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] , #USD_SHARE_K_YTD_AOD.[CATEGORY] , 
--(((USD_SHARE_K_YTD)/(USD_SHARE_N_YTD))*100) as G ,
 --(((USD_SHARE_K_YTD_YA)/(USD_SHARE_N_YTD_YA))*100) as H , 

CASE WHEN (USD_SHARE_N_YTD <> 0 and USD_SHARE_N_YTD_YA <> 0) THEN (((((USD_SHARE_K_YTD)/(USD_SHARE_N_YTD))*100) - (((USD_SHARE_K_YTD_YA)/(USD_SHARE_N_YTD_YA))*100))) ELSE 0 END as [$_SHARE_V_YA]

into  #CAT_USD_SHARE_V_YA
from 
#USD_SHARE_K_YTD_AOD LEFT OUTER JOIN #USD_SHARE_N_YTD_AOD on  #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] = #USD_SHARE_N_YTD_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_YTD_AOD.[CATEGORY]= #USD_SHARE_N_YTD_AOD.[CATEGORY] 
 LEFT OUTER JOIN  #USD_SHARE_K_YTD_YA_AOD on #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] = #USD_SHARE_K_YTD_YA_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_YTD_AOD.[CATEGORY] = #USD_SHARE_K_YTD_YA_AOD.[CATEGORY] 
LEFT OUTER JOIN #USD_SHARE_N_YTD_YA_AOD on #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] = #USD_SHARE_N_YTD_YA_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_YTD_AOD.[CATEGORY] = #USD_SHARE_N_YTD_YA_AOD.[CATEGORY] 


-------------------###################################################################################################################################################---------------------------------------------------------
--13) EDLP % KMF  , Needs to be updated once available
select [BUSINESS_UNIT] , [CATEGORY] , SUM(EDLP_PROMO) as EDLP_YTD_EDLP into  #EDLP_YTD_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] , [CATEGORY]   --A
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF_PROMO) as KMF_YTD_EDLP into #KMF_YTD_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] , [CATEGORY] --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(EDLP_PROMO) as EDLP_YTD_YA_EDLP into  #EDLP_YTD_YA_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] , [CATEGORY] --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF_PROMO) as KMF_YTD_YA_EDLP into #KMF_YTD_YA_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = '12P_YA'and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT] , [CATEGORY] --D



select #EDLP_YTD_EDLP_DM.[BUSINESS_UNIT] , #EDLP_YTD_EDLP_DM.[CATEGORY] , 

CASE WHEN(KMF_YTD_EDLP <>0 and KMF_YTD_YA_EDLP <>0 ) THEN (((((EDLP_YTD_EDLP)/(KMF_YTD_EDLP))-((EDLP_YTD_YA_EDLP)/(KMF_YTD_YA_EDLP)))*100)) ELSE 0 END  as [EDLP_%_KMF]

into #CAT_EDLP_KMF
from 
#EDLP_YTD_YA_EDLP_DM LEFT OUTER JOIN #KMF_YTD_YA_EDLP_DM on #EDLP_YTD_YA_EDLP_DM.[BUSINESS_UNIT] = #KMF_YTD_YA_EDLP_DM.[BUSINESS_UNIT] and #EDLP_YTD_YA_EDLP_DM.[CATEGORY] = #KMF_YTD_YA_EDLP_DM.CATEGORY 
LEFT OUTER JOIN #EDLP_YTD_EDLP_DM on #EDLP_YTD_YA_EDLP_DM.[BUSINESS_UNIT] = #EDLP_YTD_EDLP_DM.[BUSINESS_UNIT] and #EDLP_YTD_YA_EDLP_DM.[CATEGORY] = #EDLP_YTD_EDLP_DM.CATEGORY 
LEFT OUTER JOIN #KMF_YTD_EDLP_DM on #EDLP_YTD_YA_EDLP_DM.[BUSINESS_UNIT] = #KMF_YTD_EDLP_DM.[BUSINESS_UNIT] and #EDLP_YTD_YA_EDLP_DM.[CATEGORY] = #KMF_YTD_EDLP_DM.CATEGORY 
-------------------###################################################################################################################################################---------------------------------------------------------
--14) Unit Lift Actual

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_UNITS_PERC_LIFT])  as [UNIT_LIFT_ACTUAL] into #CAT_UNIT_LIFT_ACTUAL_AOD 

from dbo.KLG_RGM_KPI_SC_AOD where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 



-------------------###################################################################################################################################################---------------------------------------------------------
--15) $ Lift Actual
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_USD_PERC_LIFT])  as [LIST_USD_ACTUAL] into #CAT_$_LIFT_ACTUAL

from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
-------------------###################################################################################################################################################---------------------------------------------------------
--16) Sub Base Actual
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([PER_SUBSIDIZED_UNITS])/100  as [SUB_BASE_ACTUAL]

into #CAT_SUB_BASE_ACTUAL

from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 

-------------------###################################################################################################################################################---------------------------------------------------------
--17) Sub Base v.YA

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([PER_SUBSIDIZED_UNITS])  as [PER_SUBSIDIZED_UNITS_YTD] into #SUB_BASE_V_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([PER_SUBSIDIZED_UNITS])  as [PER_SUBSIDIZED_UNITS_YTD_YA] into #SUB_BASE_ACTUAL_V_YTD_YA from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #SUB_BASE_V_YTD.[BUSINESS_UNIT] , #SUB_BASE_V_YTD.[CATEGORY] , ([PER_SUBSIDIZED_UNITS_YTD]-[PER_SUBSIDIZED_UNITS_YTD_YA]) as [SUB_BASE_V_YA]

into  #CAT_SUB_BASE_V_YA

from 
#SUB_BASE_ACTUAL_V_YTD_YA LEFT OUTER JOIN #SUB_BASE_V_YTD on #SUB_BASE_V_YTD.[BUSINESS_UNIT] = #SUB_BASE_ACTUAL_V_YTD_YA.BUSINESS_UNIT and #SUB_BASE_V_YTD.[CATEGORY] = #SUB_BASE_ACTUAL_V_YTD_YA.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--18) Customer Price/LB Actual 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_EQ_PRICE])  as [AVG_EQ_PRICE_K_YTD] into #CAT_CUST_PRC_LB_ACT from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 



-------------------###################################################################################################################################################---------------------------------------------------------
----19) Retailer Margin Proxy 
----#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL]
----#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD]

--select #CAT_NSV_LB_ACTUAL.[BUSINESS UNIT],#CAT_NSV_LB_ACTUAL.CATEGORY , (#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD] - #CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL])/(#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL]) as [RETAILER_MARGIN_PROXY]


----into #CAT_RETAIL_MARGIN_PROXY
--from
-- #CAT_NSV_LB_ACTUAL , #CAT_CUST_PRC_LB_ACT

-- where 
-- #CAT_NSV_LB_ACTUAL.[BUSINESS UNIT] = #CAT_CUST_PRC_LB_ACT.BUSINESS_UNIT and 
-- #CAT_NSV_LB_ACTUAL.CATEGORY = #CAT_CUST_PRC_LB_ACT.CATEGORY


-------------------###################################################################################################################################################---------------------------------------------------------
-- 20) Branded Assort Actual

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as  [AVG_NO_OF_ITEMS_K_YTD] into #AVG_NO_OF_ITEMS_K_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as [AVG_NO_OF_ITEMS_E_YTD] into #AVG_NO_OF_ITEMS_E_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'E' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #AVG_NO_OF_ITEMS_K_YTD.BUSINESS_UNIT, #AVG_NO_OF_ITEMS_K_YTD.CATEGORY ,[AVG_NO_OF_ITEMS_K_YTD] , [AVG_NO_OF_ITEMS_E_YTD] , ([AVG_NO_OF_ITEMS_K_YTD])/([AVG_NO_OF_ITEMS_E_YTD]) as [BRAND_ASSORT_ACTUAL] 

into #CAT_BRAND_ASSORT_ACTUAL
from 
#AVG_NO_OF_ITEMS_K_YTD LEFT OUTER JOIN #AVG_NO_OF_ITEMS_E_YTD  on #AVG_NO_OF_ITEMS_K_YTD.[BUSINESS_UNIT] = #AVG_NO_OF_ITEMS_E_YTD.[BUSINESS_UNIT] and
#AVG_NO_OF_ITEMS_K_YTD.[CATEGORY]=#AVG_NO_OF_ITEMS_E_YTD.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--21) Branded Assort v.YA 

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as  [AVG_NO_OF_ITEMS_K_YTD] into #AVG_NO_OF_ITEMS_K_YTD_BRND from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as [AVG_NO_OF_ITEMS_E_YTD] into #AVG_NO_OF_ITEMS_E_YTD_BRND from dbo.KLG_RGM_KPI_SC_AOD where [TIME] = '12P'  and [MARKET] = 'E' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as  [AVG_NO_OF_ITEMS_K_YTD_YA] into #AVG_NO_OF_ITEMS_K_YTD_YA_BRND from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi')  group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as [AVG_NO_OF_ITEMS_E_YTD_YA] into #AVG_NO_OF_ITEMS_E_YTD_YA_BRND from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'E' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT,#AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY ,
-- (([AVG_NO_OF_ITEMS_K_YTD])/([AVG_NO_OF_ITEMS_E_YTD]))*100 as G ,
-- (([AVG_NO_OF_ITEMS_K_YTD_YA])/([AVG_NO_OF_ITEMS_E_YTD_YA]))*100 as H,

CASE WHEN ([AVG_NO_OF_ITEMS_E_YTD] <> 0 and [AVG_NO_OF_ITEMS_E_YTD_YA] <> 0 ) THEN (((([AVG_NO_OF_ITEMS_K_YTD])/([AVG_NO_OF_ITEMS_E_YTD]))*100)-((([AVG_NO_OF_ITEMS_K_YTD_YA])/([AVG_NO_OF_ITEMS_E_YTD_YA]))*100)) ELSE 0 END  as BRND_ASSRT_V_YA 

into #CAT_BRND_ASSORT_V_YA
from 
#AVG_NO_OF_ITEMS_K_YTD_YA_BRND LEFT OUTER JOIN #AVG_NO_OF_ITEMS_E_YTD_YA_BRND  on #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT = #AVG_NO_OF_ITEMS_E_YTD_YA_BRND.BUSINESS_UNIT and #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY = #AVG_NO_OF_ITEMS_E_YTD_YA_BRND.CATEGORY 
LEFT OUTER JOIN #AVG_NO_OF_ITEMS_K_YTD_BRND on #AVG_NO_OF_ITEMS_K_YTD_BRND.BUSINESS_UNIT = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT and #AVG_NO_OF_ITEMS_K_YTD_BRND.CATEGORY = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY 
LEFT OUTER JOIN #AVG_NO_OF_ITEMS_E_YTD_BRND on #AVG_NO_OF_ITEMS_E_YTD_BRND.BUSINESS_UNIT = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT and #AVG_NO_OF_ITEMS_E_YTD_BRND.CATEGORY = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY 




-------------------###################################################################################################################################################---------------------------------------------------------
--22) QM Shr of ALL Wks Actual

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([QUAL_CWW])  as [QUAL_CWW_K_YTD]  into #QUAL_CWW_K_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD]  into #QUAL_DIV_K_YTD from dbo.KLG_RGM_KPI_SC_AOD where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #QUAL_CWW_K_YTD.[BUSINESS_UNIT] , #QUAL_CWW_K_YTD.[CATEGORY] , ([QUAL_CWW_K_YTD])/([DIV_K_YTD]) as [QM_SHR_OF_ALL_WKS_ACTUAL] 

into #CAT_QM_SHR_ALL_WKS_ACTUAL
from 
#QUAL_CWW_K_YTD LEFT OUTER JOIN #QUAL_DIV_K_YTD on #QUAL_CWW_K_YTD.[BUSINESS_UNIT] = #QUAL_DIV_K_YTD.BUSINESS_UNIT and #QUAL_CWW_K_YTD.[CATEGORY] = #QUAL_DIV_K_YTD.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--23) QM Shr of ALL Wks v.YA
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([QUAL_CWW])  as  QUAL_CWW_K_YTD into #QUAL_CWW_K_YTD_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD] into #DIV_K_YTD_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([QUAL_CWW])  as  [QUAL_CWW_K_YTD_YA] into #QUAL_CWW_K_YTD_YA_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD_YA] into #DIV_K_YTD_YA_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT,#QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY , 
CASE WHEN ([DIV_K_YTD] <>0 and [DIV_K_YTD_YA] <>0 ) THEN ((((QUAL_CWW_K_YTD)/([DIV_K_YTD]))*100) - ((([QUAL_CWW_K_YTD_YA])/([DIV_K_YTD_YA]))*100)) ELSE 0 END  as [QM_SHR_OF_ALL_WKS_V_YA]

into #CAT_QM_SHR_ALL_WKS_V_YA
from 
#QUAL_CWW_K_YTD_YA_QM_AOD LEFT OUTER JOIN #DIV_K_YTD_YA_QM_AOD on #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT = #DIV_K_YTD_YA_QM_AOD.BUSINESS_UNIT and #QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY = #DIV_K_YTD_YA_QM_AOD.CATEGORY
LEFT OUTER JOIN #QUAL_CWW_K_YTD_QM_AOD on #QUAL_CWW_K_YTD_QM_AOD.BUSINESS_UNIT = #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT and #QUAL_CWW_K_YTD_QM_AOD.CATEGORY = #QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY 
LEFT OUTER JOIN #DIV_K_YTD_QM_AOD  on #DIV_K_YTD_QM_AOD.BUSINESS_UNIT = #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT and #DIV_K_YTD_QM_AOD.CATEGORY = #QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY


-------------------###################################################################################################################################################---------------------------------------------------------
--24) Promo Shr of ALL Wks Actu

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_CWW])  as  ANY_PROMO_CWW_K_YTD into #PROMO_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [PROMO_DIV_K_YTD] into #PROMO_DIV_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #PROMO_CWW_K_YTD_AOD.BUSINESS_UNIT , #PROMO_CWW_K_YTD_AOD.CATEGORY , 
CASE WHEN ([PROMO_DIV_K_YTD] <> 0) THEN ((ANY_PROMO_CWW_K_YTD)/([PROMO_DIV_K_YTD])) ELSE 0 END  as [PROMO_SHR_OF_ALL_WKS_ACTUAL] 
into #CAT_PROMO_SHR_ALL_WKS_ACTUAL
from 
#PROMO_CWW_K_YTD_AOD LEFT OUTER JOIN #PROMO_DIV_K_YTD_AOD on  #PROMO_CWW_K_YTD_AOD.BUSINESS_UNIT = #PROMO_DIV_K_YTD_AOD.BUSINESS_UNIT and #PROMO_CWW_K_YTD_AOD.CATEGORY = #PROMO_DIV_K_YTD_AOD.CATEGORY


-------------------###################################################################################################################################################---------------------------------------------------------
--25)Promo Shr of All Wks v.YA

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_CWW])  as [ANY_PROMO_CWW_K_YTD_AOD]  into #ANY_PROMO_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD_AOD] into #DIV_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_CWW])  as  [ANY_PROMO_CWW_K_YTD_YA_AOD] into #ANY_PROMO_CWW_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD_YA_AOD] into #DIV_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT, #ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY , 
--(([ANY_PROMO_CWW_K_YTD_AOD])/([DIV_K_YTD_AOD]))*100 as G , 
--(([ANY_PROMO_CWW_K_YTD_YA_AOD])/([DIV_K_YTD_YA_AOD]))*100 as H,
CASE WHEN ([DIV_K_YTD_AOD] <> 0 and [DIV_K_YTD_YA_AOD] <>0 ) THEN (((([ANY_PROMO_CWW_K_YTD_AOD])/([DIV_K_YTD_AOD]))*100)-((([ANY_PROMO_CWW_K_YTD_YA_AOD])/([DIV_K_YTD_YA_AOD]))*100)) ELSE 0 END  as [PROMO_SHR_OF_ALL_WKS_V_YA]

into  #CAT_PROMO_SHR_OF_ALL_WKS_V_YA

from 
#ANY_PROMO_CWW_K_YTD_YA_AOD LEFT OUTER JOIN #DIV_K_YTD_YA_AOD  ON  #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT = #DIV_K_YTD_YA_AOD.BUSINESS_UNIT and #ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY =#DIV_K_YTD_YA_AOD.CATEGORY  
LEFT OUTER JOIN #ANY_PROMO_CWW_K_YTD_AOD ON #ANY_PROMO_CWW_K_YTD_AOD.BUSINESS_UNIT = #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #ANY_PROMO_CWW_K_YTD_AOD.CATEGORY =#ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY  
LEFT OUTER JOIN #DIV_K_YTD_AOD  ON #DIV_K_YTD_AOD.BUSINESS_UNIT = #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #DIV_K_YTD_AOD.CATEGORY = #ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY  


-------------------###################################################################################################################################################---------------------------------------------------------
-- 26)F & D Conv Actual 

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([FEAT_AND_DISP_CWW])  as  ANY_PROMO_CWW_K_YTD into #FEAT_AND_DISP_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_FEAT_CWW])  as ANY_FEAT_CWW_K_YTD into #ANY_FEAT_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #FEAT_AND_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT , #FEAT_AND_DISP_CWW_K_YTD_AOD.CATEGORY , 
CASE WHEN (ANY_FEAT_CWW_K_YTD <> 0) THEN ((ANY_PROMO_CWW_K_YTD)/(ANY_FEAT_CWW_K_YTD )) ELSE 0 END as [F_D_CONV_ACTUAL] 

into #CAT_F_D_CONV_ACTUAL
from 
#FEAT_AND_DISP_CWW_K_YTD_AOD LEFT OUTER JOIN #ANY_FEAT_CWW_K_YTD_AOD ON #FEAT_AND_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT = #ANY_FEAT_CWW_K_YTD_AOD.BUSINESS_UNIT and #FEAT_AND_DISP_CWW_K_YTD_AOD.CATEGORY = #ANY_FEAT_CWW_K_YTD_AOD.CATEGORY




-------------------###################################################################################################################################################---------------------------------------------------------

--27)-F & D Conv v.YA 

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([FEAT_AND_DISP_CWW])  as [F_D_FEAT_DISP_CWW_K_YTD_AOD]  into #F_D_FEAT_DISP_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_FEAT_CWW])  as [F_D_ANY_FEAT_CWW_K_YTD_AOD] into #F_D_ANY_FEAT_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([FEAT_AND_DISP_CWW])  as  [F_D_FEAT_DISP_CWW_K_YTD_YA_AOD] into #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_FEAT_CWW])  as [F_D_ANY_FEAT_CWW_K_YTD_YA_AOD] into #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P YA'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #F_D_FEAT_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT, #F_D_FEAT_DISP_CWW_K_YTD_AOD.CATEGORY , 
--((F_D_FEAT_DISP_CWW_K_YTD_AOD)/([F_D_ANY_FEAT_CWW_K_YTD_AOD]))*100 as G , 
--(([F_D_FEAT_DISP_CWW_K_YTD_YA_AOD])/([F_D_ANY_FEAT_CWW_K_YTD_YA_AOD]))*100 as H,

CASE WHEN ([F_D_ANY_FEAT_CWW_K_YTD_AOD] <> 0 and [F_D_ANY_FEAT_CWW_K_YTD_YA_AOD] <> 0)  THEN ((((F_D_FEAT_DISP_CWW_K_YTD_AOD)/([F_D_ANY_FEAT_CWW_K_YTD_AOD]))*100)-((([F_D_FEAT_DISP_CWW_K_YTD_YA_AOD])/([F_D_ANY_FEAT_CWW_K_YTD_YA_AOD]))*100)) ELSE 0 END  as [F_D_CONV_V_YA]

into #CAT_F_D_CONV_V_YA

from 
#F_D_FEAT_DISP_CWW_K_YTD_YA_AOD LEFT OUTER JOIN #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD on  #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.BUSINESS_UNIT = #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.CATEGORY = #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD.CATEGORY 
LEFT OUTER JOIN #F_D_FEAT_DISP_CWW_K_YTD_AOD ON #F_D_FEAT_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #F_D_FEAT_DISP_CWW_K_YTD_AOD.CATEGORY = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.CATEGORY 
LEFT OUTER JOIN #F_D_ANY_FEAT_CWW_K_YTD_AOD ON #F_D_ANY_FEAT_CWW_K_YTD_AOD.BUSINESS_UNIT = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #F_D_ANY_FEAT_CWW_K_YTD_AOD.CATEGORY = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.CATEGORY 




------------------####################################################################################################################################################---------------------------------------------------------------
--28) Discount Depth Actual


select [BUSINESS_UNIT] , [CATEGORY] ,SUM([BASE_EQ_PRICE])  as [BASE_EQ_PRICE_DISC]  into #BASE_EQ_PRICE_DISC_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_EQ_PRICE]) as [ANY_PROMO_EQ_DISC]  into #ANY_PROMO_EQ_DISC_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = '12P'  and [MARKET] = 'K' and [BUSINESS_UNIT] NOT IN ('Kashi') group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

Select #BASE_EQ_PRICE_DISC_K_YTD_AOD.[BUSINESS_UNIT] , #BASE_EQ_PRICE_DISC_K_YTD_AOD.[CATEGORY] ,(([BASE_EQ_PRICE_DISC])-([ANY_PROMO_EQ_DISC]))/([ANY_PROMO_EQ_DISC]) as [DISCOUNT_DEPTH_ACTUAL]
  into #DISCOUNT_DEPTH_ACTUAL

  from

#BASE_EQ_PRICE_DISC_K_YTD_AOD LEFT OUTER JOIN #ANY_PROMO_EQ_DISC_K_YTD_AOD on #BASE_EQ_PRICE_DISC_K_YTD_AOD.BUSINESS_UNIT = #ANY_PROMO_EQ_DISC_K_YTD_AOD.BUSINESS_UNIT and #BASE_EQ_PRICE_DISC_K_YTD_AOD.CATEGORY = #ANY_PROMO_EQ_DISC_K_YTD_AOD.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--KPI's Requested by Anupama

select [BUSINESS_UNIT] ,[CATEGORY], sum(NSV) as [ACTUAL_NSV] into #CAT_ACTUAL_NSV   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  --  ACTUAL NSV
select [BUSINESS_UNIT] ,[CATEGORY], sum(NSV) as [ACTUAL_NSV_YTD_YA] into #CAT_ACTUAL_NSV_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  --  ACTUAL NSV YTD YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(LBS) as [ACTUAL_LBS] into #CAT_ACTUAL_LBS   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- ACTUAL LBS
select [BUSINESS_UNIT] ,[CATEGORY], sum(LBS) as [ACTUAL_LBS_YTD_YA] into #CAT_ACTUAL_LBS_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- ACTUAL LBS YTD YA
select [BUSINESS_UNIT] ,[CATEGORY],sum(SCM) as [ACTUAL_SCM] into #CAT_ACTUAL_SCM  from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY] -- ACTUAL SCM
select [BUSINESS_UNIT] ,[CATEGORY], sum(SCM) as [ACTUAL_SCM_YTD_YA] into #CAT_ACTUAL_SCM_YTD_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY] -- ACTUAL SCM YTD YA
--select [BUSINESS_UNIT] ,[CATEGORY], sum(NSV) as [BUDGET_NSV] into #CAT_BUDGET_NSV   from  dbo.KLG_RGM_KPI_SC_BUDGET  group by [BUSINESS_UNIT],[CATEGORY]  -- BUDGET NSV

-------------------###################################################################################################################################################---------------------------------------------------------

--•	Actual GSV YTD, Actual GSV YTD YA, Actual GSV 12P, Actual GSV 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(GSV) as [GSV_YTD] into #CAT_GSV_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- GSV YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(GSV) as [GSV_YTD_YA] into #CAT_GSV_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- GSV YTD YA
--•	Actual KMF YTD , Actual KMF  YTD YA,  Actual KMF 12P, Actual KMF 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF) as [KMF_YTD] into #CAT_KMF_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- KMF YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF) as [KMF_YTD_YA] into #CAT_KMF_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- KMF YTD YA
--•	Actual SCM2 YTD, Actual SCM2 YTD YA, Actual SCM2 12P, Actual SCM2 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(SCM2) as [SCM2_YTD] into #CAT_SCM2_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P'and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- SCM2 YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(SCM2) as [SCM2_YTD_YA] into #CAT_SCM2_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- SCM2 YTD YA
--•	Actual EDLP_CAT YTD, Actual EDLP_CAT YTD YA, Actual EDLP_CAT 12P, Actual EDLP_CAT 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(EDLP_PROMO) as [EDLP_CAT_YTD] into #CAT_EDLP_CAT_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- EDLP CAT YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(EDLP_PROMO) as [EDLP_CAT_YTD_YA] into #CAT_EDLP_CAT_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- EDLP CAT YTD YA
--•	Actual KMF_CAT YTD, Actual KMF_CAT YTD YA, Actual KMF_CAT 12P, Actual KMF_CAT 12P YA 
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF_PROMO) as [KMF_CAT_YTD] into #CAT_KMF_CAT_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- KMF CAT YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF_PROMO) as [KMF_CAT_YTD_YA] into #CAT_KMF_CAT_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = '12P_YA' and [BUSINESS_UNIT] NOT IN ('Kashi') group by [BUSINESS_UNIT],[CATEGORY]  -- KMF CAT YTD YA
--•	Budget GSV,	Budget KMF

-------------------###################################################################################################################################################---------------------------------------------------------


Truncate Table [STG].[RGM_CATEGORY_12P]


Insert into [STG].[RGM_CATEGORY_12P] (
       [BUSINESS_UNIT]  --#CAT_SCM_ACTUAL.[BUSINESS_UNIT]
      ,[CATEGORY]  --#CAT_SCM_ACTUAL.[CATEGORY]
      ,[SCM_$_ACTUAL]  --#CAT_SCM_ACTUAL.[SCM_$_ACTUAL]
      ,[GSV_V_YA] --#CAT_GSV_V_YA.[GSV_V_YA]
      ,[NSV_V_YA] --#CAT_NSV_V_YA.[NSV_V_YA]
      ,[TRADE_%_V_YA]  --#CAT_TRADE_V_YA.[TRADE_%_V_YA]
      ,[NSV_BY_LB_ACTUAL] --#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL]
      ,[NSV_LB_V_YA] --#CAT_NSV_LB_V_YA.NSV_LB_V_YA
      ,[SCM_%_V_YA] --#CAT_SCM_V_YA.[SCM_%_V_YA]
      ,[MIX_V_YA] --#CAT_MIX_V_YA.MIX_V_YA 
      ,[$_SHARE_ACTUAL]  --#CAT_USD_SHARE_ACTUAL.[$_SHARE_ACTUAL]
      ,[$_SHARE_V_YA] --#CAT_USD_SHARE_V_YA.[$_SHARE_V_YA]
      ,[EDLP_%_KMF] ----#CAT_EDLP_KMF.[EDLP_%_KMF]
      ,[UNIT_LIFT_ACTUAL] --#CAT_UNIT_LIFT_ACTUAL_AOD.UNIT_LIFT_ACTUAL
      ,[LIST_USD_ACTUAL] --#CAT_$_LIFT_ACTUAL.[LIST_USD_ACTUAL]
      ,[SUB_BASE_ACTUAL] --#CAT_SUB_BASE_ACTUAL.[SUB_BASE_ACTUAL]
      ,[SUB_BASE_V_YA] --#CAT_SUB_BASE_V_YA.SUB_BASE_V_YA
      ,[AVG_EQ_PRICE_K_YTD] --#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD]
      ,[BRAND_ASSORT_ACTUAL] --#CAT_BRAND_ASSORT_ACTUAL.BRAND_ASSORT_ACTUAL
      ,[BRND_ASSRT_V_YA] --#CAT_BRND_ASSORT_V_YA.BRND_ASSRT_V_YA
      ,[QM_SHR_OF_ALL_WKS_ACTUAL] --#CAT_QM_SHR_ALL_WKS_ACTUAL.QM_SHR_OF_ALL_WKS_ACTUAL
      ,[QM_SHR_OF_ALL_WKS_V_YA] --#CAT_QM_SHR_ALL_WKS_V_YA.QM_SHR_OF_ALL_WKS_V_YA
      ,[PROMO_SHR_OF_ALL_WKS_ACTUAL] --#CAT_PROMO_SHR_ALL_WKS_ACTUAL.PROMO_SHR_OF_ALL_WKS_ACTUAL
      ,[PROMO_SHR_OF_ALL_WKS_V_YA] --#CAT_PROMO_SHR_OF_ALL_WKS_V_YA.PROMO_SHR_OF_ALL_WKS_V_YA
      ,[F_D_CONV_ACTUAL] --#CAT_F_D_CONV_ACTUAL.F_D_CONV_ACTUAL
      ,[F_D_CONV_V_YA] --#CAT_F_D_CONV_V_YA.F_D_CONV_V_YA
      ,[DISCOUNT_DEPTH_ACTUAL] --#DISCOUNT_DEPTH_ACTUAL.DISCOUNT_DEPTH_ACTUAL
      ,[ACTUAL_NSV] --#CAT_ACTUAL_NSV.ACTUAL_NSV
      ,[ACTUAL_NSV_12P_YA] --#CAT_ACTUAL_NSV_YTD_YA.ACTUAL_NSV_YTD_YA
      ,[ACTUAL_LBS] --#CAT_ACTUAL_LBS.ACTUAL_LBS
      ,[ACTUAL_LBS_12P_YA] --#CAT_ACTUAL_LBS_YTD_YA.ACTUAL_LBS_YTD_YA
      ,[ACTUAL_SCM] --#CAT_ACTUAL_SCM.ACTUAL_SCM
      ,[ACTUAL_SCM_12P_YA] --#CAT_ACTUAL_SCM_YTD_YA.ACTUAL_SCM_YTD_YA
      ,[GSV_12P] --#CAT_GSV_YTD.GSV_YTD
      ,[GSV_12P_YA] --#CAT_GSV_YTD_YA.GSV_YTD_YA
      ,[KMF_12P] --#CAT_KMF_YTD.KMF_YTD
      ,[KMF_12P_YA] --#CAT_KMF_YTD_YA.KMF_YTD_YA
      ,[SCM2_12P] --#CAT_SCM2_YTD.SCM2_YTD
      ,[SCM2_12P_YA] --#CAT_SCM2_YTD_YA.SCM2_YTD_YA
      ,[EDLP_CAT_12P]
      ,[EDLP_CAT_12P_YA]
      ,[KMF_CAT_12P]
      ,[KMF_CAT_12P_YA]
	  )

(select 
#CAT_SCM_ACTUAL.[BUSINESS_UNIT] , 
#CAT_SCM_ACTUAL.[CATEGORY] , 
#CAT_SCM_ACTUAL.[SCM_$_ACTUAL],#CAT_GSV_V_YA.[GSV_V_YA],#CAT_NSV_V_YA.[NSV_V_YA],
#CAT_TRADE_V_YA.[TRADE_%_V_YA],

#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL] , #CAT_NSV_LB_V_YA.NSV_LB_V_YA,  #CAT_SCM_V_YA.[SCM_%_V_YA],#CAT_MIX_V_YA.MIX_V_YA , #CAT_USD_SHARE_ACTUAL.[$_SHARE_ACTUAL],#CAT_USD_SHARE_V_YA.[$_SHARE_V_YA],
#CAT_EDLP_KMF.[EDLP_%_KMF],

#CAT_UNIT_LIFT_ACTUAL_AOD.UNIT_LIFT_ACTUAL,#CAT_$_LIFT_ACTUAL.[LIST_USD_ACTUAL] , #CAT_SUB_BASE_ACTUAL.[SUB_BASE_ACTUAL],#CAT_SUB_BASE_V_YA.SUB_BASE_V_YA,
#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD],#CAT_BRAND_ASSORT_ACTUAL.BRAND_ASSORT_ACTUAL,#CAT_BRND_ASSORT_V_YA.BRND_ASSRT_V_YA,#CAT_QM_SHR_ALL_WKS_ACTUAL.QM_SHR_OF_ALL_WKS_ACTUAL,
#CAT_QM_SHR_ALL_WKS_V_YA.QM_SHR_OF_ALL_WKS_V_YA,#CAT_PROMO_SHR_ALL_WKS_ACTUAL.PROMO_SHR_OF_ALL_WKS_ACTUAL , #CAT_PROMO_SHR_OF_ALL_WKS_V_YA.PROMO_SHR_OF_ALL_WKS_V_YA,
#CAT_F_D_CONV_ACTUAL.F_D_CONV_ACTUAL,#CAT_F_D_CONV_V_YA.F_D_CONV_V_YA,   #DISCOUNT_DEPTH_ACTUAL.DISCOUNT_DEPTH_ACTUAL
,#CAT_ACTUAL_NSV.ACTUAL_NSV,
#CAT_ACTUAL_NSV_YTD_YA.ACTUAL_NSV_YTD_YA,
#CAT_ACTUAL_LBS.ACTUAL_LBS,
#CAT_ACTUAL_LBS_YTD_YA.ACTUAL_LBS_YTD_YA,
#CAT_ACTUAL_SCM.ACTUAL_SCM,
#CAT_ACTUAL_SCM_YTD_YA.ACTUAL_SCM_YTD_YA
,#CAT_GSV_YTD.GSV_YTD,
#CAT_GSV_YTD_YA.GSV_YTD_YA,
#CAT_KMF_YTD.KMF_YTD,
#CAT_KMF_YTD_YA.KMF_YTD_YA,
#CAT_SCM2_YTD.SCM2_YTD,
#CAT_SCM2_YTD_YA.SCM2_YTD_YA,
#CAT_EDLP_CAT_YTD.EDLP_CAT_YTD,#CAT_EDLP_CAT_YTD_YA.EDLP_CAT_YTD_YA
,#CAT_KMF_CAT_YTD.KMF_CAT_YTD,#CAT_KMF_CAT_YTD_YA.KMF_CAT_YTD_YA



from 
#CAT_SCM_ACTUAL  INNER JOIN #CAT_GSV_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_V_YA.[CATEGORY]
INNER JOIN #CAT_NSV_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_V_YA.[CATEGORY]
INNER JOIN #CAT_TRADE_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_TRADE_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_TRADE_V_YA.[CATEGORY]
INNER JOIN #CAT_NSV_LB_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_LB_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_LB_ACTUAL.[CATEGORY]
INNER JOIN #CAT_NSV_LB_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_LB_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_LB_V_YA.[CATEGORY]
INNER JOIN #CAT_SCM_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SCM_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SCM_V_YA.[CATEGORY]
INNER JOIN #CAT_ACTUAL_NSV on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_NSV.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_NSV.[CATEGORY]
INNER JOIN #CAT_ACTUAL_NSV_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_NSV_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_NSV_YTD_YA.[CATEGORY]
INNER JOIN #CAT_ACTUAL_LBS on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_LBS.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_LBS.[CATEGORY]
INNER JOIN #CAT_ACTUAL_LBS_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_LBS_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_LBS_YTD_YA.[CATEGORY]
INNER JOIN #CAT_ACTUAL_SCM on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_SCM.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_SCM.[CATEGORY]
INNER JOIN #CAT_ACTUAL_SCM_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_SCM_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_SCM_YTD_YA.[CATEGORY]
INNER JOIN #CAT_GSV_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_YTD.[CATEGORY]
INNER JOIN #CAT_GSV_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_YTD_YA.[CATEGORY]
INNER JOIN #CAT_KMF_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_YTD.[CATEGORY]
INNER JOIN #CAT_KMF_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_YTD_YA.[CATEGORY]
INNER JOIN #CAT_SCM2_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SCM2_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SCM2_YTD.[CATEGORY]
INNER JOIN #CAT_SCM2_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SCM2_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SCM2_YTD_YA.[CATEGORY]
INNER JOIN #CAT_EDLP_CAT_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_EDLP_CAT_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_EDLP_CAT_YTD.[CATEGORY]
INNER JOIN #CAT_EDLP_CAT_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_EDLP_CAT_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_EDLP_CAT_YTD_YA.[CATEGORY]
INNER JOIN #CAT_KMF_CAT_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_CAT_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_CAT_YTD.[CATEGORY]
INNER JOIN #CAT_KMF_CAT_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_CAT_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_CAT_YTD_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_MIX_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_MIX_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_MIX_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_USD_SHARE_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_USD_SHARE_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_USD_SHARE_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_USD_SHARE_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_USD_SHARE_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_USD_SHARE_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_EDLP_KMF on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_EDLP_KMF.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_EDLP_KMF.[CATEGORY]
LEFT OUTER JOIN #CAT_UNIT_LIFT_ACTUAL_AOD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_UNIT_LIFT_ACTUAL_AOD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_UNIT_LIFT_ACTUAL_AOD.[CATEGORY]
LEFT OUTER JOIN #CAT_$_LIFT_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_$_LIFT_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_$_LIFT_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_SUB_BASE_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SUB_BASE_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SUB_BASE_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_SUB_BASE_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SUB_BASE_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SUB_BASE_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_CUST_PRC_LB_ACT on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_CUST_PRC_LB_ACT.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_CUST_PRC_LB_ACT.[CATEGORY]
LEFT OUTER JOIN #CAT_BRAND_ASSORT_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_BRAND_ASSORT_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_BRAND_ASSORT_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_BRND_ASSORT_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_BRND_ASSORT_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_BRND_ASSORT_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_QM_SHR_ALL_WKS_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_QM_SHR_ALL_WKS_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_QM_SHR_ALL_WKS_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_QM_SHR_ALL_WKS_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_QM_SHR_ALL_WKS_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_QM_SHR_ALL_WKS_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_PROMO_SHR_ALL_WKS_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_PROMO_SHR_ALL_WKS_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_PROMO_SHR_ALL_WKS_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_PROMO_SHR_OF_ALL_WKS_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_PROMO_SHR_OF_ALL_WKS_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_PROMO_SHR_OF_ALL_WKS_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_F_D_CONV_ACTUAL ON #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_F_D_CONV_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_F_D_CONV_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_F_D_CONV_V_YA ON #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_F_D_CONV_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_F_D_CONV_V_YA.[CATEGORY]
LEFT OUTER JOIN #DISCOUNT_DEPTH_ACTUAL ON #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #DISCOUNT_DEPTH_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #DISCOUNT_DEPTH_ACTUAL.[CATEGORY]
)
-------------------###################################################################################################################################################---------------------------------------------------------

--1) #CAT_SCM_ACTUAL  -- SCM $ Actual  -- done 
--2) #CAT_GSV_V_YA   --GSV v. YA:[GSV_V_YA] -- done 
--3)#CAT_NSV_V_YA  --NSV V YA.:[NSV_V_YA] --done 
--4)#CAT_NSV_BUDGET -- 4) NSV v. Budget:[NSV_v_BUDGET] --done 
--5)#CAT_TRADE_V_YA  -- 5) Trade % v.YA :[TRADE_%_V_YA] --done 
--6)  --Divide by zero error  -- done 
--7)#CAT_NSV_LB_ACTUAL -- 7) NSV/ LB Actual:[NSV_BY_LB_ACTUAL] --done 
--8)#CAT_NSV_LB_V_YA -- 8) NSV/LBv.YA:[NSV_LB_V_YA] --done 
--9)#CAT_SCM_V_YA  --9) SCM%v.YA:[SCM_%_V_YA] --done 
--10)#CAT_MIX_V_YA  --10) Mix v.YA:[MIX_V_YA] --done 
--11)#CAT_USD_SHARE_ACTUAL --11)$ Share Actual:[$_SHARE_ACTUAL] --done 
--12)#CAT_USD_SHARE_V_YA  --12) $ Share v. YA:[$_SHARE_V_YA] --done
--13)#CAT_EDLP_KMF --13)  EDLP % KMF:[EDLP_%_KMF] --done 
--14)#CAT_UNIT_LIFT_ACTUAL_AOD  --14)Unit Lift Actual:[ANY_PROMO_UNITS_PERC_LIFT_K_YTD]  -- done 
--15)#CAT_$_LIFT_ACTUAL  -- 15) $ Lift Actual:[ANY_PROMO_USD_PERC_LIFT_K_YTD]  -- done 
--16)#CAT_SUB_BASE_ACTUAL  --16) Sub Base Actual:[PER_SUBSIDIZED_UNITS]  --done 
--17)#CAT_SUB_BASE_V_YA --17) Sub Base v.YA:[SUB_BASE_V_YA] --done 
--18)#CAT_CUST_PRC_LB_ACT --18) Customer Price/LB Actual:[AVG_EQ_PRICE_K_YTD] --done 
--19)#CAT_RETAIL_MARGIN_PROXY  --19) Retailer Margin Proxy , calculate in Tableau 
--20)#CAT_BRAND_ASSORT_ACTUAL -- 20) Branded Assort Actual :[BRAND_ASSORT_ACTUAL]  -- done 
--21)#CAT_BRND_ASSORT_V_YA  --21) Branded Assort v.YA:[BRND_ASSRT_V_YA] --done
--22)#CAT_QM_SHR_ALL_WKS_ACTUAL --22) QM Shr of ALL Wks Actual:[QM_SHR_OF_ALL_WKS_ACTUAL]  --done 
--23)#CAT_QM_SHR_ALL_WKS_V_YA  --23)QM Shr of ALL Wks v.YA:[QM_SHR_OF_ALL_WKS_V_YA] --done 
--24)#CAT_PROMO_SHR_ALL_WKS_ACTUAL --24)Promo Shr of ALL Wks Actu:[PROMO_SHR_OF_ALL_WKS_ACTUAL]  --done 
--25)#CAT_PROMO_SHR_OF_ALL_WKS_V_YA --25)Promo Shr of All Wks v.YA:[PROMO_SHR_OF_ALL_WKS_V_YA]  --done 
--26)#CAT_F_D_CONV_ACTUAL  --26)F & D Conv Actual:[F_D_CONV_ACTUAL]
--27)#CAT_F_D_CONV_V_PA --27)F & D Conv v.YA:[F_D_CONV_V_YA]
--28)#DISCOUNT_DEPTH_ACTUAL  -- DISCOUNT_DEPTH_ACTUAL:[Discount Depth Actual]







GO
/****** Object:  StoredProcedure [dbo].[USP_CATEGORY_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













-- =============================================
-- Author:		<Uman Bandari>
-- Create date: <02/26/2017>
-- Description:	<Category YTD KPI's>
-- =============================================
CREATE  PROCEDURE [dbo].[USP_CATEGORY_YTD]

AS
--------------------- 1) SCM $ Actual
select    
[BUSINESS_UNIT], 
[CATEGORY],
sum(SCM)/1000000 as [SCM_$_ACTUAL]

into #CAT_SCM_ACTUAL
from dbo.KLG_RGM_KPI_SC_DATAMART    where [GROUP] = 'YTD' group by [BUSINESS_UNIT], [CATEGORY] order by [BUSINESS_UNIT], [CATEGORY]




-------------------##############################################################################################################################################---------------------------------------------------------
-- 2) GSV v. YA

select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD into #temp_GSV_YTD from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]

SELECT [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_YA into #temp_GSV_YTD_YA FROM   dbo.KLG_RGM_KPI_SC_DATAMART  WHERE [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT] , [CATEGORY]

select #temp_GSV_YTD_YA.[BUSINESS_UNIT], #temp_GSV_YTD_YA.[CATEGORY], GSV_YTD , GSV_YTD_YA  , ((GSV_YTD) - (GSV_YTD_YA))/(GSV_YTD_YA) as [GSV_V_YA]  into #CAT_GSV_V_YA 
from  #temp_GSV_YTD_YA  LEFT OUTER JOIN #temp_GSV_YTD   on #temp_GSV_YTD.CATEGORY = #temp_GSV_YTD_YA.CATEGORY and #temp_GSV_YTD.[BUSINESS_UNIT] = #temp_GSV_YTD_YA.[BUSINESS_UNIT]
order by #temp_GSV_YTD.[BUSINESS_UNIT], #temp_GSV_YTD.[CATEGORY]




-------------------###################################################################################################################################################---------------------------------------------------------
-- 3) NSV v.YA

select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD into #temp_NSV_YTD from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]

SELECT [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_YA into #temp_NSV_YTD_YA FROM   dbo.KLG_RGM_KPI_SC_DATAMART  WHERE [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT] , [CATEGORY]


select #temp_NSV_YTD_YA.[BUSINESS_UNIT], #temp_NSV_YTD_YA.[CATEGORY], NSV_YTD , NSV_YTD_YA  , ((NSV_YTD) - (NSV_YTD_YA))/(NSV_YTD_YA) as [NSV_V_YA]  into #CAT_NSV_V_YA 
from #temp_NSV_YTD_YA LEFT OUTER JOIN #temp_NSV_YTD    on  #temp_NSV_YTD.CATEGORY = #temp_NSV_YTD_YA .CATEGORY and #temp_NSV_YTD.[BUSINESS_UNIT] = #temp_NSV_YTD_YA.[BUSINESS_UNIT]
order by #temp_NSV_YTD.[BUSINESS_UNIT], #temp_NSV_YTD.[CATEGORY]



-------------------###################################################################################################################################################---------------------------------------------------------
-- 4) NSV v. Budget
select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_DM into #temp_NSV_YTD_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]

select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_BD into #temp_NSV_BD from dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')   group by  [BUSINESS_UNIT] ,[CATEGORY]

select #temp_NSV_BD.[BUSINESS_UNIT] , #temp_NSV_BD.CATEGORY , NSV_YTD_DM , NSV_YTD_BD , 
CASE WHEN (NSV_YTD_BD <> 0) THEN (((NSV_YTD_DM)-(NSV_YTD_BD))/(NSV_YTD_BD)) ELSE 0 END  as [NSV_v_BUDGET] 
into #CAT_NSV_BUDGET 

from  #temp_NSV_BD left outer join #temp_NSV_YTD_DM
on  #temp_NSV_YTD_DM.[BUSINESS_UNIT] = #temp_NSV_BD.[BUSINESS_UNIT] and #temp_NSV_YTD_DM.[CATEGORY] = #temp_NSV_BD.CATEGORY



-------------------###################################################################################################################################################---------------------------------------------------------
-- 5) Trade % v.YA
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF) as KMF_YTD_YA_TRADE_DM into #temp_KMF_YTD_YA_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA' group by  [BUSINESS_UNIT] ,[CATEGORY]  --A
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_YA_TRADE_DM into #temp_GSV_YTD_YA_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA' group by  [BUSINESS_UNIT] ,[CATEGORY] --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF) as KMF_YTD_TRADE_DM into #temp_KMF_YTD_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY] --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_TRADE_DM into #temp_GSV_YTD_TRADE_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY] --D


select #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] , #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY] ,
 --(((KMF_YTD_YA_TRADE_DM)/(GSV_YTD_YA_TRADE_DM))*100) as G ,
 -- (((KMF_YTD_TRADE_DM)/(GSV_YTD_TRADE_DM))*100) as H , 
CASE WHEN (GSV_YTD_YA_TRADE_DM <> 0 and GSV_YTD_TRADE_DM <> 0) THEN (((((KMF_YTD_YA_TRADE_DM)/(GSV_YTD_YA_TRADE_DM))*100) - (((KMF_YTD_TRADE_DM)/(GSV_YTD_TRADE_DM))*100))) ELSE 0 END as [TRADE_%_V_YA]

into #CAT_TRADE_V_YA from 

#temp_KMF_YTD_YA_TRADE_DM LEFT OUTER JOIN #temp_GSV_YTD_YA_TRADE_DM on #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] = #temp_GSV_YTD_YA_TRADE_DM.[BUSINESS_UNIT] and #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY] = #temp_GSV_YTD_YA_TRADE_DM.[CATEGORY]
LEFT OUTER JOIN #temp_KMF_YTD_TRADE_DM on #temp_KMF_YTD_TRADE_DM.[BUSINESS_UNIT] = #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] and #temp_KMF_YTD_TRADE_DM.[CATEGORY] = #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY]
LEFT OUTER JOIN #temp_GSV_YTD_TRADE_DM on #temp_GSV_YTD_TRADE_DM.[BUSINESS_UNIT] = #temp_KMF_YTD_YA_TRADE_DM.[BUSINESS_UNIT] and #temp_GSV_YTD_TRADE_DM.CATEGORY = #temp_KMF_YTD_YA_TRADE_DM.[CATEGORY]




-------------------###################################################################################################################################################---------------------------------------------------------
----6) Trade%v.Budget  , Divide by Zero Error , Data issue
--select [BUSINESS UNIT] , [CATEGORY] , SUM(KMF)/SUM(GSV)  from dbo.KLG_RGM_KPI_BUDGET_DUMMY  group by  [BUSINESS UNIT] ,[CATEGORY]  -- A
--select [BUSINESS UNIT] , [CATEGORY] , SUM(KMF)  from dbo.KLG_RGM_KPI_DATAMART_DUMMY where [GROUP] = '12P' group by  [BUSINESS UNIT] ,[CATEGORY]  --B
--select [BUSINESS UNIT] , [CATEGORY] , SUM(GSV)  from dbo.KLG_RGM_KPI_DATAMART_DUMMY where [GROUP] = '12P' group by  [BUSINESS UNIT] ,[CATEGORY] --C

-------------------###################################################################################################################################################---------------------------------------------------------
-- 7) NSV/ LB Actual 

select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_NSV_LB_ACTUAL into  #NSV_YTD_NSV_LB_ACTUAL from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]  --A
select [BUSINESS_UNIT] , [CATEGORY] , SUM(LBS) as LBS_YTD_NSV_LB_ACTUAL into #LBS_YTD_NSV_LB_ACTUAL from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]  --B

select #NSV_YTD_NSV_LB_ACTUAL.[BUSINESS_UNIT] , #NSV_YTD_NSV_LB_ACTUAL.[CATEGORY] ,  NSV_YTD_NSV_LB_ACTUAL , LBS_YTD_NSV_LB_ACTUAL  ,
CASE WHEN (LBS_YTD_NSV_LB_ACTUAL <>0) THEN ( (NSV_YTD_NSV_LB_ACTUAL)/(LBS_YTD_NSV_LB_ACTUAL)) ELSE 0 END  as [NSV_BY_LB_ACTUAL] 

into #CAT_NSV_LB_ACTUAL
from #NSV_YTD_NSV_LB_ACTUAL ,#LBS_YTD_NSV_LB_ACTUAL 
where #NSV_YTD_NSV_LB_ACTUAL.[BUSINESS_UNIT] = #LBS_YTD_NSV_LB_ACTUAL.[BUSINESS_UNIT] and 
#NSV_YTD_NSV_LB_ACTUAL.CATEGORY = #LBS_YTD_NSV_LB_ACTUAL.CATEGORY



-------------------###################################################################################################################################################---------------------------------------------------------
-- 8) NSV/LBv.YA

select [BUSINESS_UNIT] , [CATEGORY] , sum(NSV) as NSV_YTD_NSV_LB into  #NSV_YTD_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD'  group by  [BUSINESS_UNIT] ,[CATEGORY] --A
select [BUSINESS_UNIT] , [CATEGORY] , sum(LBS) as LBS_YTD_NSV_LB into #LBS_YTD_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY] --B
select [BUSINESS_UNIT] , [CATEGORY] , sum(NSV) as NSV_YTD_YA_NSV_LB into  #NSV_YTD_YA_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA' group by  [BUSINESS_UNIT] ,[CATEGORY]  --C
select [BUSINESS_UNIT] , [CATEGORY] , sum(LBS) as LBS_YTD_YA_NSV_LB into #LBS_YTD_YA_NSV_LB from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA' group by  [BUSINESS_UNIT] ,[CATEGORY] --D

select #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] , #NSV_YTD_YA_NSV_LB.[CATEGORY] , 
--(NSV_YTD_NSV_LB)/(LBS_YTD_NSV_LB) as G 
--, (NSV_YTD_YA_NSV_LB)/(LBS_YTD_YA_NSV_LB) as H , 
CASE WHEN (LBS_YTD_NSV_LB <> 0 and LBS_YTD_YA_NSV_LB <> 0 ) THEN ( (((NSV_YTD_NSV_LB)/(LBS_YTD_NSV_LB))-((NSV_YTD_YA_NSV_LB)/(LBS_YTD_YA_NSV_LB)))/((NSV_YTD_YA_NSV_LB)/(LBS_YTD_YA_NSV_LB))) ELSE 0 END  as [NSV_LB_V_YA]

into #CAT_NSV_LB_V_YA
from 
#NSV_YTD_YA_NSV_LB LEFT OUTER JOIN  #LBS_YTD_YA_NSV_LB  on #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] = #LBS_YTD_YA_NSV_LB.[BUSINESS_UNIT] and #NSV_YTD_YA_NSV_LB.CATEGORY = #LBS_YTD_YA_NSV_LB.CATEGORY 
LEFT OUTER JOIN #NSV_YTD_NSV_LB on #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] = #NSV_YTD_NSV_LB.[BUSINESS_UNIT] and #NSV_YTD_YA_NSV_LB.CATEGORY = #NSV_YTD_NSV_LB.CATEGORY 
LEFT OUTER JOIN #LBS_YTD_NSV_LB on #NSV_YTD_YA_NSV_LB.[BUSINESS_UNIT] = #LBS_YTD_NSV_LB.[BUSINESS_UNIT] and #NSV_YTD_YA_NSV_LB.CATEGORY = #LBS_YTD_NSV_LB.CATEGORY 


-------------------###################################################################################################################################################---------------------------------------------------------
-- 9) SCM%v.YA
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM) as SCM_YTD_SCM_DM   into #SCM_YTD_SCM_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_SCM_DM   into #NSV_YTD_SCM_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD ' group by  [BUSINESS_UNIT] ,[CATEGORY]  --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM) as SCM_YTD_YA_SCM_DM into #SCM_YTD_YA_SCM_DM from dbo.KLG_RGM_KPI_SC_DATAMART   where [GROUP] = 'YTD_YA ' group by  [BUSINESS_UNIT] ,[CATEGORY]  --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(NSV) as NSV_YTD_YA_SCM_DM  into #NSV_YTD_YA_SCM_DM from  dbo.KLG_RGM_KPI_SC_DATAMART   where [GROUP] = 'YTD_YA ' group by  [BUSINESS_UNIT] ,[CATEGORY]  --D

select #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] , #SCM_YTD_YA_SCM_DM.[CATEGORY] , 
--((SCM_YTD_SCM_DM)/(NSV_YTD_SCM_DM)) *100 as G , 
--(SCM_YTD_YA_SCM_DM)/(NSV_YTD_YA_SCM_DM) *100 as H , 
CASE WHEN (NSV_YTD_SCM_DM <> 0 and NSV_YTD_YA_SCM_DM <> 0) THEN (((((SCM_YTD_SCM_DM)/(NSV_YTD_SCM_DM)) *100)-((SCM_YTD_YA_SCM_DM)/(NSV_YTD_YA_SCM_DM) *100))) ELSE 0 END as [SCM_%_V_YA] 

into #CAT_SCM_V_YA
from 
#SCM_YTD_YA_SCM_DM LEFT OUTER JOIN #NSV_YTD_YA_SCM_DM on #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] = #NSV_YTD_YA_SCM_DM.[BUSINESS_UNIT] and #SCM_YTD_YA_SCM_DM.[CATEGORY] = #NSV_YTD_YA_SCM_DM.[CATEGORY]
LEFT OUTER JOIN #SCM_YTD_SCM_DM on #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] = #SCM_YTD_SCM_DM.[BUSINESS_UNIT] and #SCM_YTD_YA_SCM_DM.[CATEGORY] = #SCM_YTD_SCM_DM.[CATEGORY]
LEFT OUTER JOIN #NSV_YTD_SCM_DM on #SCM_YTD_YA_SCM_DM.[BUSINESS_UNIT] = #NSV_YTD_SCM_DM.[BUSINESS_UNIT] and #SCM_YTD_YA_SCM_DM.[CATEGORY] = #NSV_YTD_SCM_DM.[CATEGORY]



-------------------###################################################################################################################################################---------------------------------------------------------
-- 10) Mix v.YA 
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM2) as SCM2_YTD_MIX_DM   into #SCM2_YTD_MIX_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_MIX_DM   into #GSV_YTD_MIX_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD' group by  [BUSINESS_UNIT] ,[CATEGORY]  --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(SCM2) as SCM2_YTD_YA_MIX_DM into #SCM2_YTD_YA_MIX_DM from dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA ' group by  [BUSINESS_UNIT] ,[CATEGORY]  --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(GSV) as GSV_YTD_YA_MIX_DM  into #GSV_YTD_YA_MIX_DM from  dbo.KLG_RGM_KPI_SC_DATAMART  where [GROUP] = 'YTD_YA ' group by  [BUSINESS_UNIT] ,[CATEGORY]  --D

select #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] , #SCM2_YTD_YA_MIX_DM.[CATEGORY] ,
--((SCM2_YTD_MIX_DM)/(GSV_YTD_MIX_DM )*100) as G , 
--((SCM2_YTD_YA_MIX_DM )/(GSV_YTD_YA_MIX_DM))*100 as H
 
CASE WHEN (GSV_YTD_MIX_DM <> 0 and GSV_YTD_YA_MIX_DM <>0 ) THEN (((((SCM2_YTD_MIX_DM)/(GSV_YTD_MIX_DM )*100))-(((SCM2_YTD_YA_MIX_DM )/(GSV_YTD_YA_MIX_DM))*100))) ELSE 0 END 

as [MIX_V_YA] 

into #CAT_MIX_V_YA
from 
#SCM2_YTD_YA_MIX_DM LEFT OUTER JOIN #GSV_YTD_YA_MIX_DM on #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] = #GSV_YTD_YA_MIX_DM.[BUSINESS_UNIT] and #SCM2_YTD_YA_MIX_DM.[CATEGORY] = #GSV_YTD_YA_MIX_DM.[CATEGORY]
LEFT OUTER JOIN #SCM2_YTD_MIX_DM on #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] = #SCM2_YTD_MIX_DM.[BUSINESS_UNIT] and #SCM2_YTD_YA_MIX_DM.[CATEGORY] = #SCM2_YTD_MIX_DM.[CATEGORY]
LEFT OUTER JOIN #GSV_YTD_MIX_DM on #SCM2_YTD_YA_MIX_DM.[BUSINESS_UNIT] = #GSV_YTD_MIX_DM.[BUSINESS_UNIT] and #SCM2_YTD_YA_MIX_DM.[CATEGORY] = #GSV_YTD_MIX_DM.[CATEGORY]



-------------------###################################################################################################################################################---------------------------------------------------------
-- 11) $ Share Actual   --16 records.
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_K into #USD_SHARE_K_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_N into #USD_SHARE_N_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = 'YTD'  and [MARKET] = 'N' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #USD_SHARE_K_AOD.[BUSINESS_UNIT] , #USD_SHARE_K_AOD.[CATEGORY]  , (USD_SHARE_K)/(USD_SHARE_N) as [$_SHARE_ACTUAL] into #CAT_USD_SHARE_ACTUAL 

from 
#USD_SHARE_K_AOD left outer join #USD_SHARE_N_AOD on #USD_SHARE_K_AOD.[BUSINESS_UNIT] = #USD_SHARE_N_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_AOD.[CATEGORY] = #USD_SHARE_N_AOD.[CATEGORY]






-------------------###################################################################################################################################################---------------------------------------------------------
--12 ) $ Share v. YA
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_K_YTD into #USD_SHARE_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_N_YTD into #USD_SHARE_N_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = 'YTD'  and [MARKET] = 'N' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_K_YTD_YA into #USD_SHARE_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM(USD) as USD_SHARE_N_YTD_YA into #USD_SHARE_N_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD   where [TIME] = 'YTD YA'  and [MARKET] = 'N' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] , #USD_SHARE_K_YTD_AOD.[CATEGORY] , 
--(((USD_SHARE_K_YTD)/(USD_SHARE_N_YTD))*100) as G ,
 --(((USD_SHARE_K_YTD_YA)/(USD_SHARE_N_YTD_YA))*100) as H , 

CASE WHEN (USD_SHARE_N_YTD <> 0 and USD_SHARE_N_YTD_YA <> 0) THEN (((((USD_SHARE_K_YTD)/(USD_SHARE_N_YTD))*100) - (((USD_SHARE_K_YTD_YA)/(USD_SHARE_N_YTD_YA))*100))) ELSE 0 END as [$_SHARE_V_YA]

into  #CAT_USD_SHARE_V_YA
from 
#USD_SHARE_K_YTD_AOD LEFT OUTER JOIN #USD_SHARE_N_YTD_AOD on  #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] = #USD_SHARE_N_YTD_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_YTD_AOD.[CATEGORY]= #USD_SHARE_N_YTD_AOD.[CATEGORY] 
 LEFT OUTER JOIN  #USD_SHARE_K_YTD_YA_AOD on #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] = #USD_SHARE_K_YTD_YA_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_YTD_AOD.[CATEGORY] = #USD_SHARE_K_YTD_YA_AOD.[CATEGORY] 
LEFT OUTER JOIN #USD_SHARE_N_YTD_YA_AOD on #USD_SHARE_K_YTD_AOD.[BUSINESS_UNIT] = #USD_SHARE_N_YTD_YA_AOD.[BUSINESS_UNIT] and #USD_SHARE_K_YTD_AOD.[CATEGORY] = #USD_SHARE_N_YTD_YA_AOD.[CATEGORY] 


-------------------###################################################################################################################################################---------------------------------------------------------
--13) EDLP % KMF  , Needs to be updated once available
select [BUSINESS_UNIT] , [CATEGORY] , SUM(EDLP_PROMO) as EDLP_YTD_EDLP into  #EDLP_YTD_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD' group by [BUSINESS_UNIT] , [CATEGORY]   --A
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF_PROMO) as KMF_YTD_EDLP into #KMF_YTD_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD' group by [BUSINESS_UNIT] , [CATEGORY] --B
select [BUSINESS_UNIT] , [CATEGORY] , SUM(EDLP_PROMO) as EDLP_YTD_YA_EDLP into  #EDLP_YTD_YA_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD_YA'  group by [BUSINESS_UNIT] , [CATEGORY] --C
select [BUSINESS_UNIT] , [CATEGORY] , SUM(KMF_PROMO) as KMF_YTD_YA_EDLP into #KMF_YTD_YA_EDLP_DM from dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT] , [CATEGORY] --D



select #EDLP_YTD_EDLP_DM.[BUSINESS_UNIT] , #EDLP_YTD_EDLP_DM.[CATEGORY] , 

CASE WHEN(KMF_YTD_EDLP <>0 and KMF_YTD_YA_EDLP <>0 ) THEN (((((EDLP_YTD_EDLP)/(KMF_YTD_EDLP))-((EDLP_YTD_YA_EDLP)/(KMF_YTD_YA_EDLP)))*100)) ELSE 0 END  as [EDLP_%_KMF]

into #CAT_EDLP_KMF
from 
#EDLP_YTD_YA_EDLP_DM LEFT OUTER JOIN #KMF_YTD_YA_EDLP_DM on #EDLP_YTD_YA_EDLP_DM.[BUSINESS_UNIT] = #KMF_YTD_YA_EDLP_DM.[BUSINESS_UNIT] and #EDLP_YTD_YA_EDLP_DM.[CATEGORY] = #KMF_YTD_YA_EDLP_DM.CATEGORY 
LEFT OUTER JOIN #EDLP_YTD_EDLP_DM on #EDLP_YTD_YA_EDLP_DM.[BUSINESS_UNIT] = #EDLP_YTD_EDLP_DM.[BUSINESS_UNIT] and #EDLP_YTD_YA_EDLP_DM.[CATEGORY] = #EDLP_YTD_EDLP_DM.CATEGORY 
LEFT OUTER JOIN #KMF_YTD_EDLP_DM on #EDLP_YTD_YA_EDLP_DM.[BUSINESS_UNIT] = #KMF_YTD_EDLP_DM.[BUSINESS_UNIT] and #EDLP_YTD_YA_EDLP_DM.[CATEGORY] = #KMF_YTD_EDLP_DM.CATEGORY 


-------------------###################################################################################################################################################---------------------------------------------------------
--14) Unit Lift Actual

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_UNITS_PERC_LIFT])  as [UNIT_LIFT_ACTUAL] into #CAT_UNIT_LIFT_ACTUAL_AOD 

from dbo.KLG_RGM_KPI_SC_AOD where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 



-------------------###################################################################################################################################################---------------------------------------------------------
--15) $ Lift Actual
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_USD_PERC_LIFT])  as [LIST_USD_ACTUAL] into #CAT_$_LIFT_ACTUAL

from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
-------------------###################################################################################################################################################---------------------------------------------------------
--16) Sub Base Actual
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([PER_SUBSIDIZED_UNITS])/100  as [SUB_BASE_ACTUAL]

into #CAT_SUB_BASE_ACTUAL

from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 

-------------------###################################################################################################################################################---------------------------------------------------------
--17) Sub Base v.YA

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([PER_SUBSIDIZED_UNITS])  as [PER_SUBSIDIZED_UNITS_YTD] into #SUB_BASE_V_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([PER_SUBSIDIZED_UNITS])  as [PER_SUBSIDIZED_UNITS_YTD_YA] into #SUB_BASE_ACTUAL_V_YTD_YA from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #SUB_BASE_V_YTD.[BUSINESS_UNIT] , #SUB_BASE_V_YTD.[CATEGORY] , ([PER_SUBSIDIZED_UNITS_YTD]-[PER_SUBSIDIZED_UNITS_YTD_YA]) as [SUB_BASE_V_YA]

into  #CAT_SUB_BASE_V_YA

from 
#SUB_BASE_ACTUAL_V_YTD_YA LEFT OUTER JOIN #SUB_BASE_V_YTD on #SUB_BASE_V_YTD.[BUSINESS_UNIT] = #SUB_BASE_ACTUAL_V_YTD_YA.BUSINESS_UNIT and #SUB_BASE_V_YTD.[CATEGORY] = #SUB_BASE_ACTUAL_V_YTD_YA.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--18) Customer Price/LB Actual 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_EQ_PRICE])  as [AVG_EQ_PRICE_K_YTD] into #CAT_CUST_PRC_LB_ACT from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 



-------------------###################################################################################################################################################---------------------------------------------------------
----19) Retailer Margin Proxy 
----#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL]
----#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD]

--select #CAT_NSV_LB_ACTUAL.[BUSINESS UNIT],#CAT_NSV_LB_ACTUAL.CATEGORY , (#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD] - #CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL])/(#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL]) as [RETAILER_MARGIN_PROXY]


----into #CAT_RETAIL_MARGIN_PROXY
--from
-- #CAT_NSV_LB_ACTUAL , #CAT_CUST_PRC_LB_ACT

-- where 
-- #CAT_NSV_LB_ACTUAL.[BUSINESS UNIT] = #CAT_CUST_PRC_LB_ACT.BUSINESS_UNIT and 
-- #CAT_NSV_LB_ACTUAL.CATEGORY = #CAT_CUST_PRC_LB_ACT.CATEGORY


-------------------###################################################################################################################################################---------------------------------------------------------
-- 20) Branded Assort Actual

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as  [AVG_NO_OF_ITEMS_K_YTD] into #AVG_NO_OF_ITEMS_K_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as [AVG_NO_OF_ITEMS_E_YTD] into #AVG_NO_OF_ITEMS_E_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'E' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #AVG_NO_OF_ITEMS_K_YTD.BUSINESS_UNIT, #AVG_NO_OF_ITEMS_K_YTD.CATEGORY ,[AVG_NO_OF_ITEMS_K_YTD] , [AVG_NO_OF_ITEMS_E_YTD] , ([AVG_NO_OF_ITEMS_K_YTD])/([AVG_NO_OF_ITEMS_E_YTD]) as [BRAND_ASSORT_ACTUAL] 

into #CAT_BRAND_ASSORT_ACTUAL
from 
#AVG_NO_OF_ITEMS_K_YTD LEFT OUTER JOIN #AVG_NO_OF_ITEMS_E_YTD  on #AVG_NO_OF_ITEMS_K_YTD.[BUSINESS_UNIT] = #AVG_NO_OF_ITEMS_E_YTD.[BUSINESS_UNIT] and
#AVG_NO_OF_ITEMS_K_YTD.[CATEGORY]=#AVG_NO_OF_ITEMS_E_YTD.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--21) Branded Assort v.YA 

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as  [AVG_NO_OF_ITEMS_K_YTD] into #AVG_NO_OF_ITEMS_K_YTD_BRND from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as [AVG_NO_OF_ITEMS_E_YTD] into #AVG_NO_OF_ITEMS_E_YTD_BRND from dbo.KLG_RGM_KPI_SC_AOD where [TIME] = 'YTD'  and [MARKET] = 'E' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as  [AVG_NO_OF_ITEMS_K_YTD_YA] into #AVG_NO_OF_ITEMS_K_YTD_YA_BRND from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([AVG_NO_OF_ITEMS])  as [AVG_NO_OF_ITEMS_E_YTD_YA] into #AVG_NO_OF_ITEMS_E_YTD_YA_BRND from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'E' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT,#AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY ,

CASE WHEN ([AVG_NO_OF_ITEMS_E_YTD] <> 0 and [AVG_NO_OF_ITEMS_E_YTD_YA] <> 0 ) THEN (((([AVG_NO_OF_ITEMS_K_YTD])/([AVG_NO_OF_ITEMS_E_YTD]))*100)-((([AVG_NO_OF_ITEMS_K_YTD_YA])/([AVG_NO_OF_ITEMS_E_YTD_YA]))*100)) ELSE 0 END  as BRND_ASSRT_V_YA 

into #CAT_BRND_ASSORT_V_YA
from 
#AVG_NO_OF_ITEMS_K_YTD_YA_BRND LEFT OUTER JOIN #AVG_NO_OF_ITEMS_E_YTD_YA_BRND  on #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT = #AVG_NO_OF_ITEMS_E_YTD_YA_BRND.BUSINESS_UNIT and #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY = #AVG_NO_OF_ITEMS_E_YTD_YA_BRND.CATEGORY 
LEFT OUTER JOIN #AVG_NO_OF_ITEMS_K_YTD_BRND on #AVG_NO_OF_ITEMS_K_YTD_BRND.BUSINESS_UNIT = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT and #AVG_NO_OF_ITEMS_K_YTD_BRND.CATEGORY = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY 
LEFT OUTER JOIN #AVG_NO_OF_ITEMS_E_YTD_BRND on #AVG_NO_OF_ITEMS_E_YTD_BRND.BUSINESS_UNIT = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.BUSINESS_UNIT and #AVG_NO_OF_ITEMS_E_YTD_BRND.CATEGORY = #AVG_NO_OF_ITEMS_K_YTD_YA_BRND.CATEGORY 




-------------------###################################################################################################################################################---------------------------------------------------------
--22) QM Shr of ALL Wks Actual

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([QUAL_CWW])  as [QUAL_CWW_K_YTD]  into #QUAL_CWW_K_YTD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD]  into #QUAL_DIV_K_YTD from dbo.KLG_RGM_KPI_SC_AOD where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #QUAL_CWW_K_YTD.[BUSINESS_UNIT] , #QUAL_CWW_K_YTD.[CATEGORY] , ([QUAL_CWW_K_YTD])/([DIV_K_YTD]) as [QM_SHR_OF_ALL_WKS_ACTUAL] 

into #CAT_QM_SHR_ALL_WKS_ACTUAL
from 
#QUAL_CWW_K_YTD LEFT OUTER JOIN #QUAL_DIV_K_YTD on #QUAL_CWW_K_YTD.[BUSINESS_UNIT] = #QUAL_DIV_K_YTD.BUSINESS_UNIT and #QUAL_CWW_K_YTD.[CATEGORY] = #QUAL_DIV_K_YTD.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--23) QM Shr of ALL Wks v.YA
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([QUAL_CWW])  as  QUAL_CWW_K_YTD into #QUAL_CWW_K_YTD_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD] into #DIV_K_YTD_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([QUAL_CWW])  as  [QUAL_CWW_K_YTD_YA] into #QUAL_CWW_K_YTD_YA_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD_YA] into #DIV_K_YTD_YA_QM_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT,#QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY , 
CASE WHEN ([DIV_K_YTD] <>0 and [DIV_K_YTD_YA] <>0 ) THEN ((((QUAL_CWW_K_YTD)/([DIV_K_YTD]))*100) - ((([QUAL_CWW_K_YTD_YA])/([DIV_K_YTD_YA]))*100)) ELSE 0 END  as [QM_SHR_OF_ALL_WKS_V_YA]

into #CAT_QM_SHR_ALL_WKS_V_YA
from 
#QUAL_CWW_K_YTD_YA_QM_AOD LEFT OUTER JOIN #DIV_K_YTD_YA_QM_AOD on #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT = #DIV_K_YTD_YA_QM_AOD.BUSINESS_UNIT and #QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY = #DIV_K_YTD_YA_QM_AOD.CATEGORY
LEFT OUTER JOIN #QUAL_CWW_K_YTD_QM_AOD on #QUAL_CWW_K_YTD_QM_AOD.BUSINESS_UNIT = #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT and #QUAL_CWW_K_YTD_QM_AOD.CATEGORY = #QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY 
LEFT OUTER JOIN #DIV_K_YTD_QM_AOD  on #DIV_K_YTD_QM_AOD.BUSINESS_UNIT = #QUAL_CWW_K_YTD_YA_QM_AOD.BUSINESS_UNIT and #DIV_K_YTD_QM_AOD.CATEGORY = #QUAL_CWW_K_YTD_YA_QM_AOD.CATEGORY


-------------------###################################################################################################################################################---------------------------------------------------------
--24) Promo Shr of ALL Wks Actu

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_CWW])  as  ANY_PROMO_CWW_K_YTD into #PROMO_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [PROMO_DIV_K_YTD] into #PROMO_DIV_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #PROMO_CWW_K_YTD_AOD.BUSINESS_UNIT , #PROMO_CWW_K_YTD_AOD.CATEGORY , 
CASE WHEN ([PROMO_DIV_K_YTD] <> 0) THEN ((ANY_PROMO_CWW_K_YTD)/([PROMO_DIV_K_YTD])) ELSE 0 END  as [PROMO_SHR_OF_ALL_WKS_ACTUAL] 
into #CAT_PROMO_SHR_ALL_WKS_ACTUAL
from 
#PROMO_CWW_K_YTD_AOD LEFT OUTER JOIN #PROMO_DIV_K_YTD_AOD on  #PROMO_CWW_K_YTD_AOD.BUSINESS_UNIT = #PROMO_DIV_K_YTD_AOD.BUSINESS_UNIT and #PROMO_CWW_K_YTD_AOD.CATEGORY = #PROMO_DIV_K_YTD_AOD.CATEGORY


-------------------###################################################################################################################################################---------------------------------------------------------
--25)Promo Shr of All Wks v.YA

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_CWW])  as [ANY_PROMO_CWW_K_YTD_AOD]  into #ANY_PROMO_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD_AOD] into #DIV_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD '  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_CWW])  as  [ANY_PROMO_CWW_K_YTD_YA_AOD] into #ANY_PROMO_CWW_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([DIV_])  as [DIV_K_YTD_YA_AOD] into #DIV_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT, #ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY , 
CASE WHEN ([DIV_K_YTD_AOD] <> 0 and [DIV_K_YTD_YA_AOD] <>0 ) THEN (((([ANY_PROMO_CWW_K_YTD_AOD])/([DIV_K_YTD_AOD]))*100)-((([ANY_PROMO_CWW_K_YTD_YA_AOD])/([DIV_K_YTD_YA_AOD]))*100)) ELSE 0 END  as [PROMO_SHR_OF_ALL_WKS_V_YA]

into  #CAT_PROMO_SHR_OF_ALL_WKS_V_YA

from 
#ANY_PROMO_CWW_K_YTD_YA_AOD LEFT OUTER JOIN #DIV_K_YTD_YA_AOD  ON  #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT = #DIV_K_YTD_YA_AOD.BUSINESS_UNIT and #ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY =#DIV_K_YTD_YA_AOD.CATEGORY  
LEFT OUTER JOIN #ANY_PROMO_CWW_K_YTD_AOD ON #ANY_PROMO_CWW_K_YTD_AOD.BUSINESS_UNIT = #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #ANY_PROMO_CWW_K_YTD_AOD.CATEGORY =#ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY  
LEFT OUTER JOIN #DIV_K_YTD_AOD  ON #DIV_K_YTD_AOD.BUSINESS_UNIT = #ANY_PROMO_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #DIV_K_YTD_AOD.CATEGORY = #ANY_PROMO_CWW_K_YTD_YA_AOD.CATEGORY  


-------------------###################################################################################################################################################---------------------------------------------------------
-- 26)F & D Conv Actual 

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([FEAT_AND_DISP_CWW])  as  ANY_PROMO_CWW_K_YTD into #FEAT_AND_DISP_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_FEAT_CWW])  as ANY_FEAT_CWW_K_YTD into #ANY_FEAT_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

select #FEAT_AND_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT , #FEAT_AND_DISP_CWW_K_YTD_AOD.CATEGORY , 
CASE WHEN (ANY_FEAT_CWW_K_YTD <> 0) THEN ((ANY_PROMO_CWW_K_YTD)/(ANY_FEAT_CWW_K_YTD )) ELSE 0 END as [F_D_CONV_ACTUAL] 

into #CAT_F_D_CONV_ACTUAL
from 
#FEAT_AND_DISP_CWW_K_YTD_AOD LEFT OUTER JOIN #ANY_FEAT_CWW_K_YTD_AOD ON #FEAT_AND_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT = #ANY_FEAT_CWW_K_YTD_AOD.BUSINESS_UNIT and #FEAT_AND_DISP_CWW_K_YTD_AOD.CATEGORY = #ANY_FEAT_CWW_K_YTD_AOD.CATEGORY




-------------------###################################################################################################################################################---------------------------------------------------------

--27)-F & D Conv v.YA 

select [BUSINESS_UNIT] , [CATEGORY] ,SUM([FEAT_AND_DISP_CWW])  as [F_D_FEAT_DISP_CWW_K_YTD_AOD]  into #F_D_FEAT_DISP_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A 
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_FEAT_CWW])  as [F_D_ANY_FEAT_CWW_K_YTD_AOD] into #F_D_ANY_FEAT_CWW_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([FEAT_AND_DISP_CWW])  as  [F_D_FEAT_DISP_CWW_K_YTD_YA_AOD] into #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- C
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_FEAT_CWW])  as [F_D_ANY_FEAT_CWW_K_YTD_YA_AOD] into #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD YA'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- D

select #F_D_FEAT_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT, #F_D_FEAT_DISP_CWW_K_YTD_AOD.CATEGORY , 

CASE WHEN ([F_D_ANY_FEAT_CWW_K_YTD_AOD] <> 0 and [F_D_ANY_FEAT_CWW_K_YTD_YA_AOD] <> 0)  THEN ((((F_D_FEAT_DISP_CWW_K_YTD_AOD)/([F_D_ANY_FEAT_CWW_K_YTD_AOD]))*100)-((([F_D_FEAT_DISP_CWW_K_YTD_YA_AOD])/([F_D_ANY_FEAT_CWW_K_YTD_YA_AOD]))*100)) ELSE 0 END  as [F_D_CONV_V_YA]

into #CAT_F_D_CONV_V_YA

from 
#F_D_FEAT_DISP_CWW_K_YTD_YA_AOD LEFT OUTER JOIN #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD on  #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.BUSINESS_UNIT = #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.CATEGORY = #F_D_ANY_FEAT_CWW_K_YTD_YA_AOD.CATEGORY 
LEFT OUTER JOIN #F_D_FEAT_DISP_CWW_K_YTD_AOD ON #F_D_FEAT_DISP_CWW_K_YTD_AOD.BUSINESS_UNIT = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #F_D_FEAT_DISP_CWW_K_YTD_AOD.CATEGORY = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.CATEGORY 
LEFT OUTER JOIN #F_D_ANY_FEAT_CWW_K_YTD_AOD ON #F_D_ANY_FEAT_CWW_K_YTD_AOD.BUSINESS_UNIT = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.BUSINESS_UNIT and #F_D_ANY_FEAT_CWW_K_YTD_AOD.CATEGORY = #F_D_FEAT_DISP_CWW_K_YTD_YA_AOD.CATEGORY 




------------------####################################################################################################################################################---------------------------------------------------------------
--28) Discount Depth Actual


select [BUSINESS_UNIT] , [CATEGORY] ,SUM([BASE_EQ_PRICE])  as [BASE_EQ_PRICE_DISC]  into #BASE_EQ_PRICE_DISC_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- A
select [BUSINESS_UNIT] , [CATEGORY] ,SUM([ANY_PROMO_EQ_PRICE]) as [ANY_PROMO_EQ_DISC]  into #ANY_PROMO_EQ_DISC_K_YTD_AOD from dbo.KLG_RGM_KPI_SC_AOD  where [TIME] = 'YTD'  and [MARKET] = 'K' group by  [BUSINESS_UNIT] ,[CATEGORY]  -- B

Select #BASE_EQ_PRICE_DISC_K_YTD_AOD.[BUSINESS_UNIT] , #BASE_EQ_PRICE_DISC_K_YTD_AOD.[CATEGORY] ,(([BASE_EQ_PRICE_DISC])-([ANY_PROMO_EQ_DISC]))/([ANY_PROMO_EQ_DISC]) as [DISCOUNT_DEPTH_ACTUAL]
  into #DISCOUNT_DEPTH_ACTUAL

  from

#BASE_EQ_PRICE_DISC_K_YTD_AOD LEFT OUTER JOIN #ANY_PROMO_EQ_DISC_K_YTD_AOD on #BASE_EQ_PRICE_DISC_K_YTD_AOD.BUSINESS_UNIT = #ANY_PROMO_EQ_DISC_K_YTD_AOD.BUSINESS_UNIT and #BASE_EQ_PRICE_DISC_K_YTD_AOD.CATEGORY = #ANY_PROMO_EQ_DISC_K_YTD_AOD.CATEGORY

-------------------###################################################################################################################################################---------------------------------------------------------
--KPI's Requested by Anupama

select [BUSINESS_UNIT] ,[CATEGORY], sum(NSV) as [ACTUAL_NSV] into #CAT_ACTUAL_NSV   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  --  ACTUAL NSV
select [BUSINESS_UNIT] ,[CATEGORY], sum(NSV) as [ACTUAL_NSV_YTD_YA] into #CAT_ACTUAL_NSV_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  --  ACTUAL NSV YTD YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(LBS) as [ACTUAL_LBS] into #CAT_ACTUAL_LBS   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  -- ACTUAL LBS
select [BUSINESS_UNIT] ,[CATEGORY], sum(LBS) as [ACTUAL_LBS_YTD_YA] into #CAT_ACTUAL_LBS_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  -- ACTUAL LBS YTD YA
select [BUSINESS_UNIT] ,[CATEGORY],sum(SCM) as [ACTUAL_SCM] into #CAT_ACTUAL_SCM  from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY] -- ACTUAL SCM
select [BUSINESS_UNIT] ,[CATEGORY], sum(SCM) as [ACTUAL_SCM_YTD_YA] into #CAT_ACTUAL_SCM_YTD_YA  from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY] -- ACTUAL SCM YTD YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(NSV) as [BUDGET_NSV] into #CAT_BUDGET_NSV   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT],[CATEGORY]  -- BUDGET NSV

-------------------###################################################################################################################################################---------------------------------------------------------

--•	Actual GSV YTD, Actual GSV YTD YA, Actual GSV 12P, Actual GSV 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(GSV) as [GSV_YTD] into #CAT_GSV_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  -- GSV YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(GSV) as [GSV_YTD_YA] into #CAT_GSV_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  -- GSV YTD YA
--•	Actual KMF YTD , Actual KMF  YTD YA,  Actual KMF 12P, Actual KMF 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF) as [KMF_YTD] into #CAT_KMF_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  -- KMF YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF) as [KMF_YTD_YA] into #CAT_KMF_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  -- KMF YTD YA
--•	Actual SCM2 YTD, Actual SCM2 YTD YA, Actual SCM2 12P, Actual SCM2 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(SCM2) as [SCM2_YTD] into #CAT_SCM2_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  -- SCM2 YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(SCM2) as [SCM2_YTD_YA] into #CAT_SCM2_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  -- SCM2 YTD YA
--•	Actual EDLP_CAT YTD, Actual EDLP_CAT YTD YA, Actual EDLP_CAT 12P, Actual EDLP_CAT 12P YA
select [BUSINESS_UNIT] ,[CATEGORY], sum(EDLP_PROMO) as [EDLP_CAT_YTD] into #CAT_EDLP_CAT_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  -- EDLP CAT YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(EDLP_PROMO) as [EDLP_CAT_YTD_YA] into #CAT_EDLP_CAT_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  -- EDLP CAT YTD YA
--•	Actual KMF_CAT YTD, Actual KMF_CAT YTD YA, Actual KMF_CAT 12P, Actual KMF_CAT 12P YA 
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF_PROMO) as [KMF_CAT_YTD] into #CAT_KMF_CAT_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]  -- KMF CAT YTD
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF_PROMO) as [KMF_CAT_YTD_YA] into #CAT_KMF_CAT_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART where [Group] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]  -- KMF CAT YTD YA
--•	Budget GSV,	Budget KMF
select [BUSINESS_UNIT] ,[CATEGORY], sum(GSV) as [GSV_BD] into #CAT_GSV_BD   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]  -- GSV BD
select [BUSINESS_UNIT] ,[CATEGORY], sum(KMF) as [KMF_BD] into #CAT_KMF_BD  from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]  -- KMF BD



-------------------###################################################################################################################################################---------------------------------------------------------


Truncate Table [STG].[RGM_CATEGORY_YTD]


Insert into [STG].[RGM_CATEGORY_YTD] ([BUSINESS_UNIT]
      ,[CATEGORY]
      ,[SCM_$_ACTUAL]
      ,[GSV_V_YA]
      ,[NSV_V_YA]
      ,[NSV_v_BUDGET]
      ,[TRADE_%_V_YA]
      ,[NSV_BY_LB_ACTUAL]
      ,[NSV_LB_V_YA]
      ,[SCM_%_V_YA]
      ,[MIX_V_YA]
      ,[$_SHARE_ACTUAL]
      ,[$_SHARE_V_YA]
      ,[EDLP_%_KMF]
      ,[UNIT_LIFT_ACTUAL]
      ,[LIST_USD_ACTUAL]
      ,[SUB_BASE_ACTUAL]
      ,[SUB_BASE_V_YA]
      ,[AVG_EQ_PRICE_K_YTD]
      ,[BRAND_ASSORT_ACTUAL]
      ,[BRND_ASSRT_V_YA]
      ,[QM_SHR_OF_ALL_WKS_ACTUAL]
      ,[QM_SHR_OF_ALL_WKS_V_YA]
      ,[PROMO_SHR_OF_ALL_WKS_ACTUAL]
      ,[PROMO_SHR_OF_ALL_WKS_V_YA]
      ,[F_D_CONV_ACTUAL]
      ,[F_D_CONV_V_YA]
      ,[DISCOUNT_DEPTH_ACTUAL]
      ,[ACTUAL_NSV]
      ,[ACTUAL_NSV_YTD_YA]
      ,[ACTUAL_LBS]
      ,[ACTUAL_LBS_YTD_YA]
      ,[ACTUAL_SCM]
      ,[ACTUAL_SCM_YTD_YA]
      ,[BUDGET_NSV]
	  ,[GSV_YTD]
      ,[GSV_YTD_YA]
      ,[KMF_YTD]
      ,[KMF_YTD_YA]
      ,[SCM2_YTD]
      ,[SCM2_YTD_YA]
      ,[EDLP_CAT_YTD]
      ,[EDLP_CAT_YTD_YA]
      ,[KMF_CAT_YTD]
      ,[KMF_CAT_YTD_YA]
      ,[GSV_BD]
      ,[KMF_BD]
	  )

(select #CAT_SCM_ACTUAL.[BUSINESS_UNIT] , #CAT_SCM_ACTUAL.[CATEGORY] , #CAT_SCM_ACTUAL.[SCM_$_ACTUAL],#CAT_GSV_V_YA.[GSV_V_YA],#CAT_NSV_V_YA.[NSV_V_YA],#CAT_NSV_BUDGET.[NSV_v_BUDGET],#CAT_TRADE_V_YA.[TRADE_%_V_YA],

#CAT_NSV_LB_ACTUAL.[NSV_BY_LB_ACTUAL] , #CAT_NSV_LB_V_YA.NSV_LB_V_YA,  #CAT_SCM_V_YA.[SCM_%_V_YA],#CAT_MIX_V_YA.MIX_V_YA , #CAT_USD_SHARE_ACTUAL.[$_SHARE_ACTUAL],#CAT_USD_SHARE_V_YA.[$_SHARE_V_YA],
#CAT_EDLP_KMF.[EDLP_%_KMF],

#CAT_UNIT_LIFT_ACTUAL_AOD.UNIT_LIFT_ACTUAL,#CAT_$_LIFT_ACTUAL.[LIST_USD_ACTUAL] , #CAT_SUB_BASE_ACTUAL.[SUB_BASE_ACTUAL],#CAT_SUB_BASE_V_YA.SUB_BASE_V_YA,
#CAT_CUST_PRC_LB_ACT.[AVG_EQ_PRICE_K_YTD],#CAT_BRAND_ASSORT_ACTUAL.BRAND_ASSORT_ACTUAL,#CAT_BRND_ASSORT_V_YA.BRND_ASSRT_V_YA,#CAT_QM_SHR_ALL_WKS_ACTUAL.QM_SHR_OF_ALL_WKS_ACTUAL,
#CAT_QM_SHR_ALL_WKS_V_YA.QM_SHR_OF_ALL_WKS_V_YA,#CAT_PROMO_SHR_ALL_WKS_ACTUAL.PROMO_SHR_OF_ALL_WKS_ACTUAL , #CAT_PROMO_SHR_OF_ALL_WKS_V_YA.PROMO_SHR_OF_ALL_WKS_V_YA,
#CAT_F_D_CONV_ACTUAL.F_D_CONV_ACTUAL,#CAT_F_D_CONV_V_YA.F_D_CONV_V_YA,   #DISCOUNT_DEPTH_ACTUAL.DISCOUNT_DEPTH_ACTUAL
,#CAT_ACTUAL_NSV.ACTUAL_NSV,#CAT_ACTUAL_NSV_YTD_YA.ACTUAL_NSV_YTD_YA,#CAT_ACTUAL_LBS.ACTUAL_LBS,#CAT_ACTUAL_LBS_YTD_YA.ACTUAL_LBS_YTD_YA,#CAT_ACTUAL_SCM.ACTUAL_SCM,#CAT_ACTUAL_SCM_YTD_YA.ACTUAL_SCM_YTD_YA,#CAT_BUDGET_NSV.BUDGET_NSV
,#CAT_GSV_YTD.GSV_YTD,#CAT_GSV_YTD_YA.GSV_YTD_YA,#CAT_KMF_YTD.KMF_YTD,#CAT_KMF_YTD_YA.KMF_YTD_YA,#CAT_SCM2_YTD.SCM2_YTD,#CAT_SCM2_YTD_YA.SCM2_YTD_YA,
#CAT_EDLP_CAT_YTD.EDLP_CAT_YTD,#CAT_EDLP_CAT_YTD_YA.EDLP_CAT_YTD_YA
,#CAT_KMF_CAT_YTD.KMF_CAT_YTD,#CAT_KMF_CAT_YTD_YA.KMF_CAT_YTD_YA
,#CAT_GSV_BD.GSV_BD,#CAT_KMF_BD.KMF_BD


from 
#CAT_SCM_ACTUAL  INNER JOIN #CAT_GSV_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_V_YA.[CATEGORY]
INNER JOIN #CAT_NSV_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_V_YA.[CATEGORY]
INNER JOIN #CAT_NSV_BUDGET on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_BUDGET.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_BUDGET.[CATEGORY]
INNER JOIN #CAT_TRADE_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_TRADE_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_TRADE_V_YA.[CATEGORY]
INNER JOIN #CAT_NSV_LB_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_LB_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_LB_ACTUAL.[CATEGORY]
INNER JOIN #CAT_NSV_LB_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_NSV_LB_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_NSV_LB_V_YA.[CATEGORY]
INNER JOIN #CAT_SCM_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SCM_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SCM_V_YA.[CATEGORY]
INNER JOIN #CAT_ACTUAL_NSV on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_NSV.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_NSV.[CATEGORY]
INNER JOIN #CAT_ACTUAL_NSV_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_NSV_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_NSV_YTD_YA.[CATEGORY]
INNER JOIN #CAT_ACTUAL_LBS on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_LBS.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_LBS.[CATEGORY]
INNER JOIN #CAT_ACTUAL_LBS_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_LBS_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_LBS_YTD_YA.[CATEGORY]
INNER JOIN #CAT_ACTUAL_SCM on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_SCM.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_SCM.[CATEGORY]
INNER JOIN #CAT_ACTUAL_SCM_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_ACTUAL_SCM_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_ACTUAL_SCM_YTD_YA.[CATEGORY]
INNER JOIN #CAT_GSV_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_YTD.[CATEGORY]
INNER JOIN #CAT_GSV_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_YTD_YA.[CATEGORY]
INNER JOIN #CAT_KMF_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_YTD.[CATEGORY]
INNER JOIN #CAT_KMF_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_YTD_YA.[CATEGORY]
INNER JOIN #CAT_SCM2_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SCM2_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SCM2_YTD.[CATEGORY]
INNER JOIN #CAT_SCM2_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SCM2_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SCM2_YTD_YA.[CATEGORY]
INNER JOIN #CAT_EDLP_CAT_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_EDLP_CAT_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_EDLP_CAT_YTD.[CATEGORY]
INNER JOIN #CAT_EDLP_CAT_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_EDLP_CAT_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_EDLP_CAT_YTD_YA.[CATEGORY]
INNER JOIN #CAT_KMF_CAT_YTD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_CAT_YTD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_CAT_YTD.[CATEGORY]
INNER JOIN #CAT_KMF_CAT_YTD_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_CAT_YTD_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_CAT_YTD_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_GSV_BD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_GSV_BD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_GSV_BD.[CATEGORY]
LEFT OUTER JOIN #CAT_KMF_BD  on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_KMF_BD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_KMF_BD.[CATEGORY]

LEFT OUTER JOIN #CAT_BUDGET_NSV on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_BUDGET_NSV.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_BUDGET_NSV.[CATEGORY]
LEFT OUTER JOIN #CAT_MIX_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_MIX_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_MIX_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_USD_SHARE_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_USD_SHARE_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_USD_SHARE_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_USD_SHARE_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_USD_SHARE_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_USD_SHARE_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_EDLP_KMF on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_EDLP_KMF.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_EDLP_KMF.[CATEGORY]
LEFT OUTER JOIN #CAT_UNIT_LIFT_ACTUAL_AOD on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_UNIT_LIFT_ACTUAL_AOD.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_UNIT_LIFT_ACTUAL_AOD.[CATEGORY]
LEFT OUTER JOIN #CAT_$_LIFT_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_$_LIFT_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_$_LIFT_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_SUB_BASE_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SUB_BASE_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SUB_BASE_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_SUB_BASE_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_SUB_BASE_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_SUB_BASE_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_CUST_PRC_LB_ACT on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_CUST_PRC_LB_ACT.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_CUST_PRC_LB_ACT.[CATEGORY]
LEFT OUTER JOIN #CAT_BRAND_ASSORT_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_BRAND_ASSORT_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_BRAND_ASSORT_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_BRND_ASSORT_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_BRND_ASSORT_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_BRND_ASSORT_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_QM_SHR_ALL_WKS_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_QM_SHR_ALL_WKS_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_QM_SHR_ALL_WKS_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_QM_SHR_ALL_WKS_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_QM_SHR_ALL_WKS_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_QM_SHR_ALL_WKS_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_PROMO_SHR_ALL_WKS_ACTUAL on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_PROMO_SHR_ALL_WKS_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_PROMO_SHR_ALL_WKS_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_PROMO_SHR_OF_ALL_WKS_V_YA on #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_PROMO_SHR_OF_ALL_WKS_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_PROMO_SHR_OF_ALL_WKS_V_YA.[CATEGORY]
LEFT OUTER JOIN #CAT_F_D_CONV_ACTUAL ON #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_F_D_CONV_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_F_D_CONV_ACTUAL.[CATEGORY]
LEFT OUTER JOIN #CAT_F_D_CONV_V_YA ON #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #CAT_F_D_CONV_V_YA.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #CAT_F_D_CONV_V_YA.[CATEGORY]
LEFT OUTER JOIN #DISCOUNT_DEPTH_ACTUAL ON #CAT_SCM_ACTUAL.[BUSINESS_UNIT] = #DISCOUNT_DEPTH_ACTUAL.[BUSINESS_UNIT]  and #CAT_SCM_ACTUAL.[CATEGORY] = #DISCOUNT_DEPTH_ACTUAL.[CATEGORY]
)
-------------------###################################################################################################################################################---------------------------------------------------------

--1) #CAT_SCM_ACTUAL  -- SCM $ Actual  -- done 
--2) #CAT_GSV_V_YA   --GSV v. YA:[GSV_V_YA] -- done 
--3)#CAT_NSV_V_YA  --NSV V YA.:[NSV_V_YA] --done 
--4)#CAT_NSV_BUDGET -- 4) NSV v. Budget:[NSV_v_BUDGET] --done 
--5)#CAT_TRADE_V_YA  -- 5) Trade % v.YA :[TRADE_%_V_YA] --done 
--6)  --Divide by zero error  -- done 
--7)#CAT_NSV_LB_ACTUAL -- 7) NSV/ LB Actual:[NSV_BY_LB_ACTUAL] --done 
--8)#CAT_NSV_LB_V_YA -- 8) NSV/LBv.YA:[NSV_LB_V_YA] --done 
--9)#CAT_SCM_V_YA  --9) SCM%v.YA:[SCM_%_V_YA] --done 
--10)#CAT_MIX_V_YA  --10) Mix v.YA:[MIX_V_YA] --done 
--11)#CAT_USD_SHARE_ACTUAL --11)$ Share Actual:[$_SHARE_ACTUAL] --done 
--12)#CAT_USD_SHARE_V_YA  --12) $ Share v. YA:[$_SHARE_V_YA] --done
--13)#CAT_EDLP_KMF --13)  EDLP % KMF:[EDLP_%_KMF] --done 
--14)#CAT_UNIT_LIFT_ACTUAL_AOD  --14)Unit Lift Actual:[ANY_PROMO_UNITS_PERC_LIFT_K_YTD]  -- done 
--15)#CAT_$_LIFT_ACTUAL  -- 15) $ Lift Actual:[ANY_PROMO_USD_PERC_LIFT_K_YTD]  -- done 
--16)#CAT_SUB_BASE_ACTUAL  --16) Sub Base Actual:[PER_SUBSIDIZED_UNITS]  --done 
--17)#CAT_SUB_BASE_V_YA --17) Sub Base v.YA:[SUB_BASE_V_YA] --done 
--18)#CAT_CUST_PRC_LB_ACT --18) Customer Price/LB Actual:[AVG_EQ_PRICE_K_YTD] --done 
--19)#CAT_RETAIL_MARGIN_PROXY  --19) Retailer Margin Proxy , calculate in Tableau 
--20)#CAT_BRAND_ASSORT_ACTUAL -- 20) Branded Assort Actual :[BRAND_ASSORT_ACTUAL]  -- done 
--21)#CAT_BRND_ASSORT_V_YA  --21) Branded Assort v.YA:[BRND_ASSRT_V_YA] --done
--22)#CAT_QM_SHR_ALL_WKS_ACTUAL --22) QM Shr of ALL Wks Actual:[QM_SHR_OF_ALL_WKS_ACTUAL]  --done 
--23)#CAT_QM_SHR_ALL_WKS_V_YA  --23)QM Shr of ALL Wks v.YA:[QM_SHR_OF_ALL_WKS_V_YA] --done 
--24)#CAT_PROMO_SHR_ALL_WKS_ACTUAL --24)Promo Shr of ALL Wks Actu:[PROMO_SHR_OF_ALL_WKS_ACTUAL]  --done 
--25)#CAT_PROMO_SHR_OF_ALL_WKS_V_YA --25)Promo Shr of All Wks v.YA:[PROMO_SHR_OF_ALL_WKS_V_YA]  --done 
--26)#CAT_F_D_CONV_ACTUAL  --26)F & D Conv Actual:[F_D_CONV_ACTUAL]
--27)#CAT_F_D_CONV_V_PA --27)F & D Conv v.YA:[F_D_CONV_V_YA]
--28)#DISCOUNT_DEPTH_ACTUAL  -- DISCOUNT_DEPTH_ACTUAL:[Discount Depth Actual]





















GO
/****** Object:  StoredProcedure [dbo].[USP_CATEGORY_YTD_IBP]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		<Uman Bandari>
-- Create date: <02/26/2017>
-- Description:	<Category YTD IBP KPI's>
-- =============================================
CREATE PROCEDURE [dbo].[USP_CATEGORY_YTD_IBP]
	-- Add the parameters for the stored procedure here
	
AS

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--1.GSV Actual

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)

Select [BUSINESS_UNIT],[CATEGORY],sum([IBP_GSV]) as GSV_ACTL_IBP  into #CAT_GSV_ACTL from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') Group by [BUSINESS_UNIT],[CATEGORY]

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--2.GSV v. YA

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--C = (A-B)

Select [BUSINESS_UNIT],[CATEGORY],sum([GSV]) as GSV_V_YA_IBP  into #CAT_GSV_V_YA from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') Group by [BUSINESS_UNIT],[CATEGORY]

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--3.NSV Proxy Actual

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = A-B

Select [BUSINESS_UNIT],[CATEGORY],sum([IBP_GSV])-sum(IBP_KMF) as GSV_KMF_IBP into #CAT_NSV_PRXY_ACTL  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') Group by [BUSINESS_UNIT],[CATEGORY]

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--4.NSV Proxy v. YA

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.LBS)
--D = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--E = if (Group) = 'YTD TA' THEN Sum(DM.KMF)
--F = if (Group) = 'YTD YA' THEN Sum(DM.LBS)
--G = ((A-B) / C) - ((D-E) / F)


Select [BUSINESS_UNIT] ,[CATEGORY], (sum(IBP_GSV))-(sum(IBP_KMF)) as BU_IBP_GSV_KMF_YA into #BU_IBP_GSV_KMF_YA  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]

Select [BUSINESS_UNIT] ,[CATEGORY],  sum(LBS)  as BU_DM_LBS_YA  into #BU_DM_LBS_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]

select #BU_DM_LBS_YA.BUSINESS_UNIT ,#BU_DM_LBS_YA.CATEGORY, BU_IBP_GSV_KMF_YA/BU_DM_LBS_YA as NSV_PRXY_ACTL_YA  into #NSV_PRXY_ACTL_YA from 
#BU_DM_LBS_YA LEFT OUTER JOIN #BU_IBP_GSV_KMF_YA on #BU_DM_LBS_YA.BUSINESS_UNIT = #BU_IBP_GSV_KMF_YA.BUSINESS_UNIT and #BU_DM_LBS_YA.CATEGORY = #BU_IBP_GSV_KMF_YA.[CATEGORY]


Select [BUSINESS_UNIT] ,[CATEGORY], ((sum(GSV))-(sum(KMF)))/ sum(LBS)  as BU_DM_LBS_GSV_KMF_YA  into #BU_DM_LBS_GSV_KMF_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]

select #NSV_PRXY_ACTL_YA.BUSINESS_UNIT,#NSV_PRXY_ACTL_YA.CATEGORY,(NSV_PRXY_ACTL_YA)-(BU_DM_LBS_GSV_KMF_YA) as NSV_PRXY_V_YA_IBP into #CAT_NSV_PRXY_V_YA  from 

#NSV_PRXY_ACTL_YA inner Join #BU_DM_LBS_GSV_KMF_YA on #BU_DM_LBS_GSV_KMF_YA.BUSINESS_UNIT = #NSV_PRXY_ACTL_YA.BUSINESS_UNIT and #BU_DM_LBS_GSV_KMF_YA.CATEGORY = #NSV_PRXY_ACTL_YA.CATEGORY

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--5.NSV Proxy V. Budget

--A = if (Group) = 'YTD' THEN sum(BD.BUD_KMF)
--B=  if (Group) = 'YTD' THEN sum(BD.BUD_GSV)
--Base_Bud_T_Rate = A/B
--D = if (Group) = 'YTD' THEN sum(BD.IBP_GSV)
--E = if (Group) = 'YTD' THEN sum(BD.BUD_KMF_ADJ)
--Total_Bud_KMF = C * (D+E)
--Total_Bud_T_Rate = Total_Bud_KMF / D
--G = if (Group) = 'YTD' THEN sum(BD.BUD_NSV)
--Final = G - B - (B * Total_Bud_T_Rate)"
--g = B-(B*Total_Bud_T_Rate)


 Select [BUSINESS_UNIT],[CATEGORY], 
 
 (Sum(GSV))-(sum(GSV))*(CASE WHEN (SUM(IBP_GSV) <> 0) THEN (((CASE WHEN (sum(GSV) <> 0 ) THEN (sum(KMF)/sum(GSV)) ELSE 0 END)*(sum(IBP_GSV)+sum(BUD_KMF_ADJ)))/(SUM(IBP_GSV))) ELSE 0 END) 
 
 as NSV_PRXY_V_BUD_IBP into #CAT_NSV_PRXY_V_BUD
 
  from dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--6.Trade % B/W Actual
--A = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--C = A/B

Select [BUSINESS_UNIT],[CATEGORY], CASE WHEN(sum(IBP_GSV) <>0) Then (sum(IBP_KMF)/sum(IBP_GSV)) ELSE 0 END  as [TRADE_PRCT_B_W_ACTUAL_IBP] into #CAT_TRADE_PRCT_B_W_ACTUAL  from [dbo].[KLG_RGM_KPI_SC_BUDGET] 
where LEVEL_A not in ('CANADA L3')
group by [BUSINESS_UNIT],[CATEGORY]


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--7.Trade % B/W v. YA
--A = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--C = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--D = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--E = (A/B) - (C/D)"


select [BUSINESS_UNIT],[CATEGORY], (CASE WHEN (sum(GSV) <> 0 ) THEN (sum(KMF)/sum(GSV)) ELSE 0 END) as [TRADE_KMF_BY_GSV_YA]  into #TRADE_KMF_BY_GSV_YA
from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY] 


Select [BUSINESS_UNIT],[CATEGORY], CASE WHEN(sum(IBP_GSV) <>0) Then (sum(IBP_KMF)/sum(IBP_GSV)) ELSE 0 END  as [TRADE_IBP_KMF_GSV_YA] into #TRADE_IBP_KMF_GSV_YA  from [dbo].[KLG_RGM_KPI_SC_BUDGET] 
where LEVEL_A not in ('CANADA L3')
 group by [BUSINESS_UNIT],[CATEGORY]

Select #TRADE_KMF_BY_GSV_YA.[BUSINESS_UNIT],#TRADE_KMF_BY_GSV_YA.[CATEGORY], ([TRADE_IBP_KMF_GSV_YA]-[TRADE_KMF_BY_GSV_YA]) as [TRADE_PRCT_B_W_ACTUAL_YA_IBP] 
into #CAT_TRADE_PRCT_B_W_ACTUAL_YA 
from #TRADE_KMF_BY_GSV_YA LEFT OUTER JOIN #TRADE_IBP_KMF_GSV_YA on #TRADE_IBP_KMF_GSV_YA.BUSINESS_UNIT = #TRADE_KMF_BY_GSV_YA.BUSINESS_UNIT and #TRADE_IBP_KMF_GSV_YA.CATEGORY = #TRADE_KMF_BY_GSV_YA.CATEGORY 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--8.
 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--9.NSV Proxy LB Actual

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD' THEN Sum(DM.LBS)
--D = (A-B) / C"


Select [BUSINESS_UNIT] ,[CATEGORY], (sum(IBP_GSV))-(sum(IBP_KMF)) as CAT_IBP_GSV_KMF into #CAT_IBP_GSV_KMF  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]

Select [BUSINESS_UNIT] ,[CATEGORY], sum(LBS)  as CAT_DM_LBS  into #CAT_DM_LBS from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD' group by [BUSINESS_UNIT],[CATEGORY]

select #CAT_DM_LBS.BUSINESS_UNIT ,#CAT_DM_LBS.CATEGORY, CASE WHEN (CAT_DM_LBS <> 0 ) THEN (CAT_IBP_GSV_KMF/CAT_DM_LBS) ELSE 0 END  as NSV_PRXY_ACTL_IBP into #CAT_NSV_PRXY_LB_ACTL from 
#CAT_DM_LBS LEFT OUTER JOIN #CAT_IBP_GSV_KMF on #CAT_DM_LBS.BUSINESS_UNIT = #CAT_IBP_GSV_KMF.BUSINESS_UNIT  and #CAT_DM_LBS.CATEGORY= #CAT_IBP_GSV_KMF.CATEGORY
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--10.NSV Proxy LB v. YA

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.LBS)
--D = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--E = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--F = if (Group) = 'YTD YA' THEN Sum(DM.LBS)
--G = ((A-B) / C) - ((D-E) / F)

Select [BUSINESS_UNIT] ,[CATEGORY], (sum(IBP_GSV))-(sum(IBP_KMF)) as CAT_IBP_GSV_KMF_YA into #CAT_IBP_GSV_KMF_YA  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]

Select [BUSINESS_UNIT] ,[CATEGORY],  sum(LBS)  as CAT_DM_LBS_YA  into #CAT_DM_LBS_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]

select #CAT_DM_LBS_YA.BUSINESS_UNIT ,#CAT_DM_LBS_YA.CATEGORY, CAT_IBP_GSV_KMF_YA/CAT_DM_LBS_YA as NSV_PRXY_ACTL_YA  into #CAT_NSV_PRXY_ACTL_YA from 
#CAT_DM_LBS_YA LEFT OUTER JOIN #CAT_IBP_GSV_KMF_YA on #CAT_DM_LBS_YA.BUSINESS_UNIT = #CAT_IBP_GSV_KMF_YA.BUSINESS_UNIT and  #CAT_DM_LBS_YA.CATEGORY = #CAT_IBP_GSV_KMF_YA.CATEGORY


Select [BUSINESS_UNIT] ,[CATEGORY], ((sum(GSV))-(sum(KMF)))/ sum(LBS)  as CAT_DM_LBS_GSV_KMF_YA  into #CAT_DM_LBS_GSV_KMF_YA from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]

select #CAT_NSV_PRXY_ACTL_YA.BUSINESS_UNIT,#CAT_NSV_PRXY_ACTL_YA.CATEGORY,(NSV_PRXY_ACTL_YA)-(CAT_DM_LBS_GSV_KMF_YA) as NSV_PRXY_V_LB_YA_IBP 
into #CAT_NSV_PRXY_V_LB_YA  
from 

#CAT_DM_LBS_GSV_KMF_YA LEFT OUTER JOIN #CAT_NSV_PRXY_ACTL_YA   on #CAT_DM_LBS_GSV_KMF_YA.BUSINESS_UNIT = #CAT_NSV_PRXY_ACTL_YA.BUSINESS_UNIT and 
#CAT_DM_LBS_GSV_KMF_YA.CATEGORY = #CAT_NSV_PRXY_ACTL_YA.CATEGORY




-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--11 NSV % CHG YA

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.GSV)
--D = if (Group) = 'YTD YA' THEN Sum(DM.KMF)
--E = ((A-B) - (C-D)) / (C-D)"

Select [BUSINESS_UNIT] ,[CATEGORY], (sum(IBP_GSV))-(sum(IBP_KMF)) as CAT_IBP_GSV_KMF_CHG_YA into #CAT_IBP_GSV_KMF_CHG_YA  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]

Select [BUSINESS_UNIT] ,[CATEGORY], (sum(GSV))-(sum(KMF)) as CAT_GSV_KMF_CHG_YA into #CAT_GSV_KMF_CHG_YA  from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]


Select #CAT_GSV_KMF_CHG_YA.BUSINESS_UNIT,#CAT_GSV_KMF_CHG_YA.CATEGORY , CASE WHEN (CAT_GSV_KMF_CHG_YA <>0) THEN (((CAT_IBP_GSV_KMF_CHG_YA)-(CAT_GSV_KMF_CHG_YA))/CAT_GSV_KMF_CHG_YA) ELSE 0 END as NSV_PRCT_CHG_YA_IBP 
into #CAT_NSV_PRCT_CHG_YA_IBP 
from #CAT_GSV_KMF_CHG_YA LEFT OUTER JOIN #CAT_IBP_GSV_KMF_CHG_YA on #CAT_IBP_GSV_KMF_CHG_YA.BUSINESS_UNIT = #CAT_GSV_KMF_CHG_YA.BUSINESS_UNIT and #CAT_IBP_GSV_KMF_CHG_YA.CATEGORY = #CAT_GSV_KMF_CHG_YA.CATEGORY

--select * from #CAT_NSV_PRCT_CHG_YA_IBP

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--12 SCM Proxy % v. YA

--A = if (Group) = 'YTD' THEN Sum(BD.IBP.GSV)
--B = if (Group) = 'YTD' THEN Sum(BD.IBP.KMF)
--C = if (Group) = 'YTD YA' THEN Sum(DM.COP)
--D = (A-B) - C"

Select [BUSINESS_UNIT] ,[CATEGORY], (sum(IBP_GSV))-(sum(IBP_KMF)) as CAT_IBP_GSV_KMF_SCM_YA into #CAT_IBP_GSV_KMF_SCM_YA  from [dbo].[KLG_RGM_KPI_SC_BUDGET] where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]

Select [BUSINESS_UNIT] ,[CATEGORY], sum(COP) as CAT_COP_SCM_YA into #CAT_COP_SCM_YA  from [dbo].[KLG_RGM_KPI_SC_DATAMART]  where [GROUP] = 'YTD_YA' group by [BUSINESS_UNIT],[CATEGORY]


Select #CAT_COP_SCM_YA.BUSINESS_UNIT,#CAT_COP_SCM_YA.CATEGORY ,CAT_IBP_GSV_KMF_SCM_YA-CAT_COP_SCM_YA  as SCM_PRXY_PRCT_V_YA_IBP 
into #CAT_SCM_PRXY_PRCT_V_YA_IBP 
from #CAT_COP_SCM_YA LEFT OUTER JOIN #CAT_IBP_GSV_KMF_SCM_YA  on #CAT_IBP_GSV_KMF_SCM_YA.BUSINESS_UNIT = #CAT_COP_SCM_YA.BUSINESS_UNIT and #CAT_IBP_GSV_KMF_SCM_YA.CATEGORY = #CAT_COP_SCM_YA.CATEGORY

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


select [BUSINESS_UNIT], [CATEGORY],sum(GSV) as [GSV_BUD] into #BU_GSV_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET  where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY]  -- BUD_GSV
select [BUSINESS_UNIT],[CATEGORY], sum(KMF) as [KMF_BUD] into #BU_KMF_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET  where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT] ,[CATEGORY] --BUD_KMF
select [BUSINESS_UNIT], [CATEGORY],sum(NSV) as [NSV_BUD] into #BU_NSV_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT] ,[CATEGORY] --BUD_NSV


select [BUSINESS_UNIT], [CATEGORY],sum(BUD_KMF_ADJ) as [GSV_KMF_ADJ_BUD] into #BU_GSV_KMF_ADJ_BUD   from  dbo.KLG_RGM_KPI_SC_BUDGET  where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT] ,[CATEGORY] --BUD_KMF_ADJ
select [BUSINESS_UNIT],[CATEGORY], sum(IBP_GSV) as [GSV_IBP] into #BU_GSV_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET  where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY] --IBP_GSV
select [BUSINESS_UNIT],[CATEGORY], sum(IBP_KMF) as [KMF_IBP] into #BU_KMF_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT],[CATEGORY] --IBP_KMF
select [BUSINESS_UNIT], [CATEGORY],sum(IBP_NSV) as [NSV_IBP] into #BU_NSV_IBP   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT],[CATEGORY] --IBP_NSV
select [BUSINESS_UNIT],[CATEGORY], sum(YAG_GSV) as [YAG_GSV] into #BU_YAG_GSV  from  dbo.KLG_RGM_KPI_SC_BUDGET  where LEVEL_A not in ('CANADA L3') group by [BUSINESS_UNIT],[CATEGORY] --YAG_GSV
select [BUSINESS_UNIT], [CATEGORY],sum(YAG_KMF) as [YAG_KMF] into #BU_YAG_KMF   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT],[CATEGORY] --YAG_KMF
select [BUSINESS_UNIT], [CATEGORY],sum(YAG_NSV) as [YAG_NSV] into #BU_YAG_NSV   from  dbo.KLG_RGM_KPI_SC_BUDGET where LEVEL_A not in ('CANADA L3')  group by [BUSINESS_UNIT],[CATEGORY] --YAG_NSV
select [BUSINESS_UNIT], [CATEGORY],sum(COP) as [COP_YTD] into #BU_COP_YTD   from  dbo.KLG_RGM_KPI_SC_DATAMART where [GROUP] = 'YTD'   group by [BUSINESS_UNIT],[CATEGORY] --YAG_NSV
select [BUSINESS_UNIT], [CATEGORY],sum(COP) as [COP_YTD_YA] into #BU_COP_YTD_YA   from  dbo.KLG_RGM_KPI_SC_DATAMART  Where [GROUP] ='YTD_YA'  group by [BUSINESS_UNIT],[CATEGORY] --YAG_NSV


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

truncate table [STG].[RGM_CATEGORY_YTD_IBP]

INSERT INTO [STG].[RGM_CATEGORY_YTD_IBP] (
       [BUSINESS_UNIT]  --1
      ,[CATEGORY] -- 2
      ,[GSV_ACTL_IBP]  --3.GSV_ACTL_IBP
      ,[GSV_V_YA_IBP]  --4.GSV_V_YA_IBP
      ,[GSV_KMF_IBP]  --5.GSV_KMF_IBP
      ,[NSV_PRXY_V_YA_IBP] --6.NSV_PRXY_V_YA_IBP
      ,[NSV_PRXY_V_BUD_IBP] --7.NSV_PRXY_V_BUD_IBP
      ,[TRADE_PRCT_B_W_ACTUAL_IBP]  --.8TRADE_PRCT_B_W_ACTUAL_IBP
      ,[TRADE_PRCT_B_W_ACTUAL_YA_IBP] --9.TRADE_PRCT_B_W_ACTUAL_YA_IBP
      ,[NSV_PRXY_ACTL_IBP] --10.NSV_PRXY_ACTL_IBP
      ,[NSV_PRXY_V_LB_YA_IBP] --11.NSV_PRXY_V_LB_YA_IBP
      ,[NSV_PRCT_CHG_YA_IBP] --12.NSV_PRCT_CHG_YA_IBP
      ,[SCM_PRXY_PRCT_V_YA_IBP] --13.SCM_PRXY_PRCT_V_YA_IBP
	  ,[GSV_BUD]
 ,[KMF_BUD]
 ,[NSV_BUD]
 ,[GSV_KMF_ADJ_BUD]
 ,[GSV_IBP]
 ,[KMF_IBP]
 ,[NSV_IBP]
 ,[YAG_GSV]
 ,[YAG_KMF]
 ,[COP_YTD]
 ,[COP_YTD_YA]
 ,[YAG_NSV]
	  )

(

select #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT  --1
,#CAT_NSV_PRXY_V_YA.CATEGORY --2
,GSV_ACTL_IBP --3
, GSV_V_YA_IBP --4
, GSV_KMF_IBP --5
, NSV_PRXY_V_YA_IBP --6
,NSV_PRXY_V_BUD_IBP --7
,TRADE_PRCT_B_W_ACTUAL_IBP --8
,TRADE_PRCT_B_W_ACTUAL_YA_IBP --9
,NSV_PRXY_ACTL_IBP --10
,NSV_PRXY_V_LB_YA_IBP --11
,NSV_PRCT_CHG_YA_IBP --12
,SCM_PRXY_PRCT_V_YA_IBP --13
,[GSV_BUD]
 ,[KMF_BUD]
 ,[NSV_BUD]
 ,[GSV_KMF_ADJ_BUD]
 ,[GSV_IBP]
 ,[KMF_IBP]
 ,[NSV_IBP]
 ,[YAG_GSV]
 ,[YAG_KMF]
 ,[COP_YTD]
 ,[COP_YTD_YA]
 ,[YAG_NSV]

from 

#CAT_NSV_PRXY_V_YA LEFT OUTER JOIN #CAT_GSV_ACTL on #CAT_GSV_ACTL.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_GSV_ACTL.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_GSV_V_YA on #CAT_GSV_V_YA.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_GSV_V_YA.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_NSV_PRXY_ACTL on #CAT_NSV_PRXY_ACTL.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_NSV_PRXY_ACTL.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_NSV_PRXY_V_BUD on #CAT_NSV_PRXY_V_BUD.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_NSV_PRXY_V_BUD.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_TRADE_PRCT_B_W_ACTUAL on #CAT_TRADE_PRCT_B_W_ACTUAL.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_TRADE_PRCT_B_W_ACTUAL.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_TRADE_PRCT_B_W_ACTUAL_YA on #CAT_TRADE_PRCT_B_W_ACTUAL_YA.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_TRADE_PRCT_B_W_ACTUAL_YA.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_NSV_PRXY_LB_ACTL on #CAT_NSV_PRXY_LB_ACTL.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_NSV_PRXY_LB_ACTL.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_NSV_PRXY_V_LB_YA on #CAT_NSV_PRXY_V_LB_YA.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_NSV_PRXY_V_LB_YA.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_NSV_PRCT_CHG_YA_IBP on #CAT_NSV_PRCT_CHG_YA_IBP.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_NSV_PRCT_CHG_YA_IBP.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #CAT_SCM_PRXY_PRCT_V_YA_IBP on #CAT_SCM_PRXY_PRCT_V_YA_IBP.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #CAT_SCM_PRXY_PRCT_V_YA_IBP.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
LEFT OUTER JOIN #BU_GSV_BUD on #BU_GSV_BUD.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_GSV_BUD.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_KMF_BUD on #BU_KMF_BUD.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_KMF_BUD.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_NSV_BUD on #BU_NSV_BUD.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and  #BU_NSV_BUD.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_GSV_KMF_ADJ_BUD on #BU_GSV_KMF_ADJ_BUD.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_GSV_KMF_ADJ_BUD.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_GSV_IBP on #BU_GSV_IBP.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_GSV_IBP.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN  #BU_KMF_IBP on #BU_KMF_IBP.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_KMF_IBP.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_NSV_IBP on #BU_NSV_IBP.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_NSV_IBP.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_YAG_GSV on #BU_YAG_GSV.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_YAG_GSV.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_YAG_KMF on #BU_YAG_KMF.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_YAG_KMF.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_YAG_NSV on #BU_YAG_NSV.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_YAG_NSV.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY
 LEFT OUTER JOIN #BU_COP_YTD on #BU_COP_YTD.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_COP_YTD.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY 
 LEFT OUTER JOIN #BU_COP_YTD_YA on #BU_COP_YTD_YA.BUSINESS_UNIT = #CAT_NSV_PRXY_V_YA.BUSINESS_UNIT and #BU_COP_YTD_YA.CATEGORY = #CAT_NSV_PRXY_V_YA.CATEGORY 
)

--1. GSV_ACTL_IBP  -> #CAT_GSV_ACTL
--2.GSV_V_YA_IBP -> #CAT_GSV_V_YA
--3.GSV_KMF_IBP -> #CAT_NSV_PRXY_ACTL
--4.NSV_PRXY_V_YA_IBP -> #CAT_NSV_PRXY_V_YA
--5.NSV_PRXY_V_BUD_IBP -> #CAT_NSV_PRXY_V_BUD
--6.TRADE_PRCT_B_W_ACTUAL_IBP -> #CAT_TRADE_PRCT_B_W_ACTUAL
--7.[TRADE_PRCT_B_W_ACTUAL_YA_IBP] ->#CAT_TRADE_PRCT_B_W_ACTUAL_YA
--9.NSV_PRXY_ACTL_IBP -> #CAT_NSV_PRXY_LB_ACTL
--10.NSV_PRXY_V_YA_IBP -> #CAT_NSV_PRXY_V_LB_YA
--11.NSV_PRCT_CHG_YA_IBP ->#CAT_NSV_PRCT_CHG_YA_IBP
--12.SCM_PRXY_PRCT_V_YA_IBP -> #CAT_SCM_PRXY_PRCT_V_YA_IBP






















GO
/****** Object:  StoredProcedure [dbo].[uspGetShip]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspGetShip] @WEEKYEAR VARCHAR(100)
AS
Begin
;with YAGOGSV as (
select  distinct
YG.CUSTOMER ,
YG.MATERIAL ,
YG.[Mixed Pallet Material] ,
YG.[Mixed Pallet Flag] ,
YG.[LE Ship $] as [YAGO GSV]
from [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_TGT] as YG
WHERE SUBSTRING(YG.[Calendar Week], 1, CHARINDEX('/', YG.[Calendar Week]) - 1)
=SUBSTRING(@WEEKYEAR , 1, CHARINDEX('/', @WEEKYEAR ) - 1)
AND Convert(varchar(10),SUBSTRING(@WEEKYEAR, 4, CHARINDEX('/',@WEEKYEAR) +1)-1)=
Convert(varchar(10),SUBSTRING(YG.[Calendar Week], 4, CHARINDEX('/',YG.[Calendar Week]) +1))
),
LEGSV AS(
select  distinct
LE.CUSTOMER ,
LE.MATERIAL ,
LE.[Mixed Pallet Material] ,
LE.[Mixed Pallet Flag] ,
LE.[LE Ship $] as [LE GSV],
SUBSTRING(LE.[Calendar Week], 1, CHARINDEX('/', LE.[Calendar Week]) - 1) as Week,
SUBSTRING(LE.[Calendar Week], 4, CHARINDEX('/',LE.[Calendar Week]) +1)as Year
from [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_TGT] as LE
WHERE SUBSTRING(LE.[Calendar Week], 1, CHARINDEX('/', LE.[Calendar Week]) - 1)
=SUBSTRING(@WEEKYEAR , 1, CHARINDEX('/', @WEEKYEAR ) - 1)
AND Convert(varchar(10),SUBSTRING(@WEEKYEAR, 4, CHARINDEX('/',@WEEKYEAR) +1))=
Convert(varchar(10),SUBSTRING(LE.[Calendar Week], 4, CHARINDEX('/',LE.[Calendar Week]) +1)))
 
SELECT LEGSV.CUSTOMER ,
LEGSV.MATERIAL ,
LEGSV.[Mixed Pallet Material] ,
LEGSV.[Mixed Pallet Flag] ,
LEGSV.week,
LEGSV.year,
LEGSV.[LE GSV],
YAGOGSV.[YAGO GSV]
from LEGSV
inner join YAGOGSV
on YAGOGSV.CUSTOMER = LEGSV.CUSTOMER
and LEGSV.MATERIAL = YAGOGSV.MATERIAL
and LEGSV.[Mixed Pallet Material] =YAGOGSV.[Mixed Pallet Material]
and LEGSV.[Mixed Pallet Flag]=YAGOGSV.[Mixed Pallet Flag]
End
GO
/****** Object:  StoredProcedure [US\USKBPH02].[PROMO_TABLES]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [US\USKBPH02].[PROMO_TABLES]

AS

BEGIN

DECLARE @QUERY VARCHAR (8000)

SET @QUERY = '

Drop Table TPE_DS_User.dbo.KLG_PROMO_TYPE

';

PRINT @QUERY
EXEC (@QUERY)





SET @QUERY = '
SELECT
a.[Promotion ID],
a.[Calender Week],
a.[Plan To],
Sum(a.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(a.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(a.[Gross Sales $]) AS [Gross Sales $],
Sum(a.[Planned Ship $]) AS [Planned Ship $],
Sum(a.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(a.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(a.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(a.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(a.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(a.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(a.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(a.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(a.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(a.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(a.DISPLAY) AS DISPLAY,
Max(a.FEATURE) AS FEATURE,
Max(a.[F&D]) AS [F&D],
Sum(a.[Sugg TPQ]) AS [Sugg TPQ],
Sum(a.[Sugg Incr]) AS [Sugg Incr],
Max(a.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(a.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(a.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(a.[EDLP Spend]) AS [EDLP Spend],
Sum(a.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(a.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(h.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(h.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(h.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(h.[TPM: Total Planned Shipment CS]) AS [Total Planned Shipment CS],
sum(h.[TPM: Total Planned Shipment Eaches]) AS [Total Planned Shipment Eaches],
b.ACTIVITY_DESC,
b.DESCRIPTION AS Promo_Desc,
b.ACTIVITY_TYPE,
b.SHIP_DATE_FROM,
b.SHIP_DATE_TO,
b.PROMOTION_DESC,
b.SCANNER_APPS_ID,
b.EMPLOYEE_RESPONSIBLE,
b.CHANGED_BY,
b.LAST_CHANGED_ON,
b.PERSON_NAME,
b.DATE_CREATED,
b.CAMPAIGN_TYPE,
b.CAMPAIGN_DESC,
b.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(b.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
b.PLANNED_DATE_TO,
b.KEY_EVENT_DESC,
b.CURRENCY_KEY,
c.PERIOD,
c.[Period Number],
c.[Period Year],
c.QUARTER,
c.[Quarter Number],
c.[Quarter Year],
c.[YEAR],
c.[BW Period],
c.[Niel Week],
c.[Pay Week],
d.ALT_CATEGORY,
d.ALT_SUBCATEGORY,
d.PROD_H4,
d.PROD_HIER_TEXT4,
d.PROD_H5,
d.PROD_HIER_TEXT5,
e.BUSINESS_UNIT,
f.PLANTO,
f.PT_NAME,
f.Level_A,
f.Level_B,
f.Level_C,
f.Level_D,
f.Level_E,
f.ALL_IN_Flag,
f.Tier_Name,
f.Tier,
f.AKV,
g.[Ca Category]

Into TPE_DS_User.dbo.KLG_PROMO_TYPE


FROM
TPE_DS_Target.dbo.KLG_TPE_PROMOTION_FACT_TGT a
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PROMOTION_DIM_TGT b ON a.[Promotion ID] = b.PROMOTION_ID
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_TIME_DIM_TGT c ON a.[Calender Week] = c.CALENDER_WEEK
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT d ON a.[Mixed Pallet Material] = d.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT e ON a.[Mixed Pallet Material] = e.MIXED_PAL_MATERIAL AND a.[Plan To] = e.PLAN_TO
LEFT JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY f ON f.NORMALIZE_BU_HIERARCHY.PLANTO = e.PLAN_TO AND a.[Plan To] = f.PLANTO AND f.BU=e.BUSINESS_UNIT
INNER JOIN TPE_DS_Target.dbo.KLG_CANADA_CAT_MAP g ON d.ALT_CATEGORY = g.Category
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PROM_ZM_TPM60_TGT h ON a.[Promotion ID] = h.PROMOTIONS AND a.[Mixed Pallet Material] = h.MATERIAL AND a.[Calender Week] = h.[calendar week]
WHERE
c.[YEAR] = 2016 OR
c.[YEAR] = 2017 AND
b.PROMOTION_DESC not in (''Cancelled'', ''Draft'', ''Deleted'')

GROUP BY
a.[Promotion ID],
a.[Calender Week],
a.[Plan To],
b.ACTIVITY_DESC,
b.DESCRIPTION,
b.ACTIVITY_TYPE,
b.SHIP_DATE_FROM,
b.SHIP_DATE_TO,
b.PROMOTION_DESC,
b.SCANNER_APPS_ID,
b.EMPLOYEE_RESPONSIBLE,
b.CHANGED_BY,
b.LAST_CHANGED_ON,
b.PERSON_NAME,
b.DATE_CREATED,
b.CAMPAIGN_TYPE,
b.CAMPAIGN_DESC,
b.PLANNED_DATE_FROM,
b.PLANNED_DATE_TO,
b.KEY_EVENT_DESC,
b.CURRENCY_KEY,
c.PERIOD,
c.[Period Number],
c.[Period Year],
c.QUARTER,
c.[Quarter Number],
c.[Quarter Year],
c.[YEAR],
c.[BW Period],
c.[Niel Week],
c.[Pay Week],
d.ALT_CATEGORY,
d.ALT_SUBCATEGORY,
d.PROD_H4,
d.PROD_HIER_TEXT4,
d.PROD_H5,
d.PROD_HIER_TEXT5,
e.BUSINESS_UNIT,
f.PT_NAME,
f.PLANTO,
f.Level_A,
f.Level_B,
f.Level_C,
f.Level_D,
f.Level_E,
f.ALL_IN_Flag,
g.[Ca Category],
f.Tier_Name,
f.Tier,
f.AKV

';

PRINT @QUERY
EXEC (@QUERY)




END

GO
/****** Object:  Table [dbo].[FSU_OUTLOOK_REPLICA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FSU_OUTLOOK_REPLICA](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[YAG_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YAG_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YAG_LE_COP] [decimal](17, 2) NULL,
	[YAG_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FSU_SALES_OUTLOOK_FEED]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FSU_SALES_OUTLOOK_FEED](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[YAG_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YAG_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YAG_LE_COP] [decimal](17, 2) NULL,
	[YAG_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FSU_SALES_OUTLOOK_FEED_FOR_TABLEAU]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FSU_SALES_OUTLOOK_FEED_FOR_TABLEAU](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[YTD_FLAG] [varchar](3) NULL,
	[YTD_12P] [varchar](3) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[YAG_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YAG_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YAG_LE_COP] [decimal](17, 2) NULL,
	[YAG_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_BOILERPLATE_SOURCE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_BOILERPLATE_SOURCE](
	[Snapshot Week] [varchar](7) NULL,
	[Customer] [varchar](10) NULL,
	[Brand] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Period] [int] NULL,
	[Year] [varchar](4) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[LE Ship $] [decimal](38, 2) NULL,
	[Consensus GSV] [decimal](38, 2) NULL,
	[Business_Unit] [varchar](60) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[PT_Name] [nvarchar](255) NULL,
	[LastActPd] [nvarchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CANADA_CAT_MAP]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_CANADA_CAT_MAP](
	[Category] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_CANADA_IBP_FEED_FOR_FOUNDATIONAL_FILES]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_CANADA_IBP_FEED_FOR_FOUNDATIONAL_FILES](
	[PERIOD_NUMBER] [int] NULL,
	[SPT] [int] NOT NULL,
	[INDENT 2] [nvarchar](255) NULL,
	[INDENT 3] [nvarchar](255) NULL,
	[INDENT 4] [nvarchar](255) NULL,
	[INDENT 5] [nvarchar](255) NULL,
	[INDENT 6] [nvarchar](255) NULL,
	[PERIOD] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[CATEGORY] [nvarchar](255) NULL,
	[PT] [nvarchar](255) NULL,
	[PERIOD2] [nvarchar](255) NULL,
	[BU2] [nvarchar](255) NULL,
	[CATEGORY2] [nvarchar](255) NULL,
	[PT2] [nvarchar](255) NULL,
	[FIELD IBP GSV] [decimal](17, 0) NULL,
	[FIELD IBP KMF] [decimal](17, 0) NULL,
	[STRATEGIC ESTIMATE GSV] [decimal](17, 0) NULL,
	[STRATEGIC ESTIMATE KMF] [decimal](17, 0) NULL,
	[LAST PERIOD IBP GSV CALL] [decimal](17, 0) NULL,
	[LAST PERIOD KMF GSV CALL] [decimal](17, 0) NULL,
	[CRM GSV] [decimal](17, 0) NULL,
	[CRM KMF] [decimal](17, 0) NULL,
	[FINAL GSV BUDGET] [decimal](17, 0) NULL,
	[FINAL TRADE BUDGET] [decimal](17, 0) NULL,
	[FIELD GSV BUDGET] [decimal](17, 0) NULL,
	[FIELD TRADE BUDGET] [decimal](17, 0) NULL,
	[STRATEGIC EST TRADE ADJ] [decimal](17, 0) NULL,
	[BUDGET TRADE ADJUSTMENTS] [decimal](17, 0) NULL,
	[CONSENSUS GSV] [decimal](17, 0) NULL,
	[TRADE CONSENSUS] [int] NOT NULL,
	[DIRECT SALES FOR WHOLESALERS] [decimal](17, 0) NULL,
	[DIRECT SALES TRADE] [int] NOT NULL,
	[CRM LE KLG] [numeric](24, 6) NULL,
	[YAG CRM LE KLG] [numeric](24, 6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_CLF_BIAS_REPORTING_TABLE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_BIAS_REPORTING_TABLE](
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[SUBBARAND] [varchar](30) NULL,
	[Brand] [varchar](60) NULL,
	[Type] [varchar](60) NULL,
	[Alternative Market Segment] [varchar](30) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Period Number] [int] NULL,
	[BW Week] [varchar](7) NULL,
	[WK] [varchar](2) NULL,
	[YEAR] [varchar](4) NULL,
	[Week Starting] [date] NULL,
	[PT#_TEXT] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Actual_GSV] [numeric](38, 5) NULL,
	[Plan_GSV_0p] [numeric](38, 5) NULL,
	[Consensus_Dol] [numeric](38, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CLF_CON_TPM]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_CON_TPM](
	[YEAR] [varchar](4) NULL,
	[PERIOD] [varchar](3) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[CON_CURR_SNAPSHOT] [varchar](7) NULL,
	[TPM_CURR_SNAPSHOT] [varchar](10) NULL,
	[CON_PREV_SNAPSHOT] [varchar](7) NULL,
	[TPM_PREV_SNAPSHOT] [varchar](10) NULL,
	[Consensus GSV] [decimal](38, 2) NULL,
	[Plan Ship GSV] [decimal](38, 2) NULL,
	[Prev Plan Ship GSV] [decimal](38, 2) NULL,
	[Prev Consensus GSV] [decimal](38, 2) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[Plan To #] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[Alternative Market Segment] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CLF_CON_TPM_SNAPSHOTS]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_CLF_CON_TPM_SNAPSHOTS](
	[ACCT] [nvarchar](255) NULL,
	[MATERIAL] [nvarchar](255) NULL,
	[WEEK] [nvarchar](255) NULL,
	[BW_Week] [nvarchar](255) NULL,
	[Period] [nvarchar](255) NULL,
	[PLAN_SHIP_DOL] [decimal](20, 5) NULL,
	[ACTUALS_DOL] [decimal](20, 5) NULL,
	[CONSENSUS_DOL] [int] NOT NULL,
	[YEAR] [nvarchar](4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_FIN_LEDGER_FACT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_FIN_LEDGER_FACT](
	[Channel] [nvarchar](255) NULL,
	[CC] [nvarchar](255) NULL,
	[Data_Source] [nvarchar](255) NULL,
	[Profit_Center] [nvarchar](255) NULL,
	[Currency] [nvarchar](255) NULL,
	[Summary_Account] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Period] [nvarchar](255) NULL,
	[Version] [nvarchar](255) NULL,
	[Amount] [decimal](20, 10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_NIEL_AMPS_US_SRC]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_NIEL_AMPS_US_SRC](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ % Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr - Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA - Prompt] [decimal](20, 5) NULL,
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
	[% Units Any Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_PROMO_FACT_TYPE_MT_1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_FACT_TYPE_MT_1](
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
	[Ca Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_FACT_TYPE_MT_2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_FACT_TYPE_MT_2](
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
	[Ca Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_DERIVED_COL_MERGED]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_DERIVED_COL_MERGED](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_AOD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_AOD](
	[ALL_MARKETS] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [float] NULL,
	[PT_NAME] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[MARKET] [varchar](1) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[USD] [float] NULL,
	[UNITS] [float] NULL,
	[PER_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[FEAT_AND_DISP_CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[ANY_PROMO_USD_PERC_LIFT] [float] NULL,
	[BUSINESS_UNIT] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL,
	[BU_NULL] [varchar](255) NULL,
	[FLAG_K] [varchar](4) NULL,
	[FLAG_BRAND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUD_PTI_JOIN]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUD_PTI_JOIN](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALTERNATE_CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[POSTING_YEAR_YTD] [varchar](4) NULL,
	[CRM_LATEST_ESTIMATE_GROSS_SALES_GSV] [decimal](17, 2) NULL,
	[BUD_GSV_ORIG] [decimal](20, 0) NULL,
	[BUD_BASE_KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[TOTAL_BUD_KMF] [decimal](20, 6) NULL,
	[IBP GSV] [decimal](20, 0) NULL,
	[IBP KMF] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUD_UNION]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUD_UNION](
	[PT_NUM] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALTERNATE_CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[POSTING_YEAR_YTD] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[GSV] [decimal](20, 2) NULL,
	[KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[YAG_GSV] [decimal](17, 2) NULL,
	[YAG_KMF] [decimal](17, 2) NULL,
	[YAG_NSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_2YAGO]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_2YAGO](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[YAG_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YAG_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YAG_LE_COP] [decimal](17, 2) NULL,
	[YAG_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_CURR_YR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_CURR_YR](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_MASTER_CURR_YEAR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_MASTER_CURR_YEAR](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_MASTER_PREV_YEAR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_MASTER_PREV_YEAR](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_PREV_2_YR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_PREV_2_YR](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_PREV_YR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_PREV_YR](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_RS]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_RS](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_YAGO]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_YAGO](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[YAG_TPM_LE_GSV] [decimal](17, 2) NULL,
	[YAG_TPM_LE_KMF] [decimal](17, 2) NULL,
	[YAG_LE_COP] [decimal](17, 2) NULL,
	[YAG_LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_CB_PT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_CB_PT](
	[ALL_MARKETS] [varchar](255) NULL,
	[PLANTO_UPDATE] [float] NULL,
	[PT_NAME_UPDATE] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_DATAMART]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_DATAMART](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](10) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](6) NULL,
	[GSV] [decimal](17, 2) NULL,
	[COP] [decimal](17, 2) NULL,
	[KMF] [decimal](17, 2) NULL,
	[LBS] [decimal](17, 3) NULL,
	[NSV] [decimal](17, 2) NULL,
	[SCM] [decimal](17, 2) NULL,
	[SCM2] [decimal](17, 2) NULL,
	[EDLP_PROMO] [decimal](17, 2) NULL,
	[KMF_PROMO] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_DATAMART_RS]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_DATAMART_RS](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](10) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](6) NULL,
	[GSV] [decimal](17, 2) NULL,
	[COP] [decimal](17, 2) NULL,
	[KMF] [decimal](17, 2) NULL,
	[LBS] [decimal](17, 3) NULL,
	[NSV] [decimal](17, 2) NULL,
	[SCM] [decimal](17, 2) NULL,
	[SCM2] [decimal](17, 2) NULL,
	[EDLP_PROMO] [decimal](17, 2) NULL,
	[KMF_PROMO] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_DATAMART_RS_WITH_PROMOTIONS_DATA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_DATAMART_RS_WITH_PROMOTIONS_DATA](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](6) NULL,
	[GSV] [decimal](17, 2) NULL,
	[COP] [decimal](17, 2) NULL,
	[KMF] [decimal](17, 2) NULL,
	[LBS] [decimal](17, 3) NULL,
	[NSV] [decimal](17, 2) NULL,
	[SCM] [decimal](17, 2) NULL,
	[SCM2] [decimal](17, 2) NULL,
	[EDLP_PROMO] [decimal](17, 2) NULL,
	[KMF_PROMO] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_MERGED_CB]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_MERGED_CB](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_ORG_LVL]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_ORG_LVL](
	[ALL_MARKETS] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PLANTO_UPDATE] [float] NULL,
	[PT_NAME_UPDATE] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_ORG_LVL_E]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_ORG_LVL_E](
	[ALL_MARKETS] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PLANTO_UPDATE] [float] NULL,
	[PT_NAME_UPDATE] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[MARKET] [varchar](1) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_ORG_LVL_K]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_ORG_LVL_K](
	[ALL_MARKETS] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PLANTO_UPDATE] [float] NULL,
	[PT_NAME_UPDATE] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[MARKET] [varchar](1) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_ORG_LVL_MARKET]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_ORG_LVL_MARKET](
	[ALL_MARKETS] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PLANTO_UPDATE] [float] NULL,
	[PT_NAME_UPDATE] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[MARKET] [varchar](1) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_ORG_LVL_N]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_ORG_LVL_N](
	[ALL_MARKETS] [varchar](255) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PLANTO_UPDATE] [float] NULL,
	[PT_NAME_UPDATE] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[MARKET] [varchar](1) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_BUD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_BUD](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALTERNATE_CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[POSTING_YEAR_YTD] [varchar](4) NULL,
	[CRM_LATEST_ESTIMATE_GROSS_SALES_GSV] [decimal](17, 2) NULL,
	[BUD_GSV_ORIG] [decimal](20, 0) NULL,
	[BUD_BASE_KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[TOTAL_BUD_KMF] [decimal](20, 6) NULL,
	[IBP GSV] [decimal](20, 0) NULL,
	[IBP KMF] [decimal](20, 0) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_BUD_PTI]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_BUD_PTI](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[YEAR] [varchar](4) NULL,
	[Period Number] [int] NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_BUDGET]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_BUDGET](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALTERNATE_CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[POSTING_YEAR_YTD] [varchar](4) NULL,
	[CRM_LATEST_ESTIMATE_GROSS_SALES_GSV] [decimal](17, 2) NULL,
	[BUD_GSV_ORIG] [decimal](20, 0) NULL,
	[BUD_BASE_KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[TOTAL_BUD_KMF] [decimal](20, 6) NULL,
	[IBP GSV] [decimal](20, 0) NULL,
	[IBP KMF] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_BUDGET_PTI]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_BUDGET_PTI](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[YEAR] [varchar](4) NULL,
	[Period Number] [int] NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_1](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[PLAN_SHIP_CS] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS] [decimal](17, 3) NULL,
	[LE_SHIP_USD] [decimal](17, 2) NULL,
	[LE_SHIP_LBS] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD] [decimal](17, 2) NULL,
	[LE_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD] [decimal](17, 2) NULL,
	[LE_COP_USD] [decimal](17, 2) NULL,
	[LE_CASES] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_2](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD] [varchar](3) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[PLAN_SHIP_CS] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS] [decimal](17, 3) NULL,
	[LE_SHIP_USD] [decimal](17, 2) NULL,
	[LE_SHIP_LBS] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD] [decimal](17, 2) NULL,
	[LE_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD] [decimal](17, 2) NULL,
	[LE_COP_USD] [decimal](17, 2) NULL,
	[LE_CASES] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_3]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_3](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[MATERIAL_GRP] [varchar](9) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[PROD_HIER_TEXT2] [varchar](60) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[PLAN_SHIP_CS] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS] [decimal](17, 3) NULL,
	[LE_SHIP_USD] [decimal](17, 2) NULL,
	[LE_SHIP_LBS] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD] [decimal](17, 2) NULL,
	[LE_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD] [decimal](17, 2) NULL,
	[LE_COP_USD] [decimal](17, 2) NULL,
	[LE_CASES] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_4]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_4](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[PLAN_SHIP_CS] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS] [decimal](17, 3) NULL,
	[LE_SHIP_USD] [decimal](17, 2) NULL,
	[LE_SHIP_LBS] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD] [decimal](17, 2) NULL,
	[LE_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD] [decimal](17, 2) NULL,
	[LE_COP_USD] [decimal](17, 2) NULL,
	[LE_CASES] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_1](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_12P](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_12P_YA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_12P_YA](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_YTD](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_YTD_YA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_10_YTD_YA](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_11]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_11](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](6) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_12]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_12](
	[PT_NUM] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](18) NULL,
	[GROUP] [varchar](6) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_USD_ITM_GSV] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM_LBS] [decimal](17, 3) NULL,
	[LE_KMF_USD_ITM_KMF] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM_COP] [decimal](17, 2) NULL,
	[NSV_CALC_ITM] [decimal](17, 2) NULL,
	[SCM_CALC_ITM] [decimal](17, 2) NULL,
	[SCM2_CALC_ITM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_2](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_3]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_3](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](6) NULL,
	[COP_RATE_CALC_ITM] [decimal](17, 2) NULL,
	[LIST_PRICE_PLAN_CALC_ITM] [decimal](17, 6) NULL,
	[LIST_PRICE_LE_CALC_ITM] [decimal](17, 6) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_4]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_4](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](6) NULL,
	[COP_RATE_CALC_ITM] [decimal](17, 2) NULL,
	[LIST_PRICE_PLAN_CALC_ITM] [decimal](17, 6) NULL,
	[LIST_PRICE_LE_CALC_ITM] [decimal](17, 6) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_5]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_5](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](6) NULL,
	[COP_RATE_CALC_ITM] [decimal](17, 2) NULL,
	[LIST_PRICE_PLAN_CALC_ITM] [decimal](17, 6) NULL,
	[LIST_PRICE_LE_CALC_ITM] [decimal](17, 6) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_6]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_6](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](6) NULL,
	[COP_RATE_CALC_ITM] [decimal](17, 2) NULL,
	[LIST_PRICE_PLAN_CALC_ITM] [decimal](17, 6) NULL,
	[LIST_PRICE_LE_CALC_ITM] [decimal](17, 6) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_7]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_7](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](6) NULL,
	[COP_RATE_CALC_ITM] [decimal](17, 2) NULL,
	[LIST_PRICE_PLAN_CALC_ITM] [decimal](17, 6) NULL,
	[LIST_PRICE_LE_CALC_ITM] [decimal](17, 6) NULL,
	[COP_PCT_CALC_ITM] [decimal](17, 6) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_8]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_8](
	[CUSTOMER] [varchar](10) NULL,
	[MIXED_PALLET_MATERIAL] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](6) NULL,
	[COP_RATE_CALC_ITM] [decimal](17, 2) NULL,
	[LIST_PRICE_PLAN_CALC_ITM] [decimal](17, 6) NULL,
	[LIST_PRICE_LE_CALC_ITM] [decimal](17, 6) NULL,
	[COP_PCT_CALC_ITM] [decimal](17, 6) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_12P](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_12P_YA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_12P_YA](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_YTD](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_YTD_YA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_ITEM_PROMO_CALCS_9_YTD_YA](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[COP2_CALC_ITM] [decimal](17, 2) NULL,
	[PLAN_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[PLAN_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_CS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[ACTUAL_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_USD_ITM] [decimal](17, 2) NULL,
	[LE_SHIP_LBS_ITM] [decimal](17, 3) NULL,
	[LE_SHIP_UNITS_ITM] [decimal](17, 3) NULL,
	[TOTAL_PLANNED_KMF_USD_ITM] [decimal](17, 2) NULL,
	[LE_KMF_USD_ITM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_COP_USD_ITM] [decimal](17, 2) NULL,
	[ACTUAL_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_COP_USD_ITM] [decimal](17, 2) NULL,
	[LE_CASES_ITM] [decimal](17, 3) NULL,
	[PLAN_BASE_CASES_ITM] [decimal](17, 3) NULL,
	[GROSS_SALES_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD_PROM] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD_PROM] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD_PROM] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD_PROM] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS_PROM] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD_PROM] [decimal](17, 2) NULL,
	[EDLP_SPEND_PROM] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_1](
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Plan To] [varchar](10) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[GROSS_SALES_USD] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD] [decimal](17, 2) NULL,
	[EDLP_SPEND] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_2](
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Plan To] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PERIOD] [varchar](3) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[GROSS_SALES_USD] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD] [decimal](17, 2) NULL,
	[EDLP_SPEND] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_3]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_3](
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Plan To] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_TEXT2] [varchar](60) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[GROSS_SALES_USD] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD] [decimal](17, 2) NULL,
	[EDLP_SPEND] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_4]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SCORECARD_PROMO_4](
	[Plan To] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PERIOD_NUMBER] [int] NULL,
	[YEAR] [varchar](4) NULL,
	[GROSS_SALES_USD] [decimal](17, 2) NULL,
	[PLANNED_SHIP_USD] [decimal](17, 2) NULL,
	[PLANNED_PROMO_COP_USD] [decimal](17, 2) NULL,
	[LE_TOTAL_FIXED_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_USD] [decimal](17, 2) NULL,
	[RESERVED_TOTAL_KMF_USD] [decimal](17, 2) NULL,
	[TOTAL_PLANNED_PROMO_UNITS] [decimal](17, 2) NULL,
	[PLAN_INCREMENTAL_COP_USD] [decimal](17, 2) NULL,
	[EDLP_SPEND] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_P9_MAPPING_BU_NOT_NULL]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_P9_MAPPING_BU_NOT_NULL](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_P9_MAPPING_BU_NULL]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_P9_MAPPING_BU_NULL](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_SALES_OUTLOOK_FEED_FOR_FOUNDATIONAL_FILES]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_SALES_OUTLOOK_FEED_FOR_FOUNDATIONAL_FILES](
	[PERIOD_NUMBER] [int] NULL,
	[SPT] [varchar](3) NOT NULL,
	[INDENT 2] [nvarchar](255) NULL,
	[INDENT 3] [nvarchar](255) NULL,
	[INDENT 4] [nvarchar](255) NULL,
	[INDENT 5] [nvarchar](255) NULL,
	[INDENT 6] [nvarchar](255) NULL,
	[PERIOD] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[CATEGORY] [nvarchar](255) NULL,
	[PT] [nvarchar](255) NULL,
	[PERIOD2] [nvarchar](255) NULL,
	[BU2] [nvarchar](255) NULL,
	[CATEGORY2] [nvarchar](255) NULL,
	[PT2] [nvarchar](255) NULL,
	[FIELD IBP GSV] [decimal](22, 3) NULL,
	[FIELD IBP KMF] [decimal](17, 0) NULL,
	[STRATEGIC ESTIMATE GSV] [decimal](17, 0) NULL,
	[STRATEGIC ESTIMATE KMF] [decimal](17, 0) NULL,
	[LAST PERIOD IBP GSV CALL] [decimal](17, 0) NULL,
	[LAST PERIOD KMF GSV CALL] [decimal](17, 0) NULL,
	[CRM GSV] [decimal](17, 0) NULL,
	[CRM KMF] [decimal](17, 0) NULL,
	[FINAL GSV BUDGET] [decimal](17, 0) NULL,
	[FINAL TRADE BUDGET] [decimal](17, 0) NULL,
	[FIELD GSV BUDGET] [decimal](17, 0) NULL,
	[FIELD TRADE BUDGET] [decimal](17, 0) NULL,
	[STRATEGIC EST TRADE ADJ] [decimal](17, 0) NULL,
	[BUDGET TRADE ADJUSTMENTS] [decimal](17, 0) NULL,
	[CONSENSUS GSV] [decimal](17, 0) NULL,
	[TRADE CONSENSUS] [int] NOT NULL,
	[DIRECT SALES FOR WHOLESALERS] [decimal](17, 0) NULL,
	[DIRECT SALES TRADE] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_TGT](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Sales Org] [varchar](8) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[DIVISION] [varchar](4) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FACT_TGT](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[DPMATERIAL] [varchar](40) NULL,
	[BASE_STAT_GSV] [decimal](17, 2) NULL,
	[CANNIB_ADJ_GSV] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP] [decimal](17, 2) NULL,
	[Innovation/PWR_GSV] [decimal](17, 2) NULL,
	[MKTG_ADJ_GSV] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_GSV] [decimal](17, 2) NULL,
	[PLANNER_ADJ_GSV] [decimal](17, 2) NULL,
	[SALES_ADJ_GSV] [decimal](17, 2) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL,
	[BASE_STAT_LBS] [decimal](17, 2) NULL,
	[CANNIB_ADJ_LBS] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP_LBS] [decimal](17, 2) NULL,
	[Innovation/PWR_LBS] [decimal](17, 2) NULL,
	[MKTG_ADJ_LBS] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_LBS] [decimal](17, 2) NULL,
	[PLANNER_ADJ_LBS] [decimal](17, 2) NULL,
	[SALES_ADJ_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[BASE_STAT_CASES] [decimal](17, 3) NULL,
	[BASE_STAT_EACHES] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CUSTOMER_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CUSTOMER_DIM_TGT](
	[CUSTOMER_ID] [varchar](10) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[CUSTOMER_TYPE] [varchar](2) NULL,
	[HIER_C_LEVEL1] [varchar](10) NULL,
	[HIER_C_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL2] [varchar](10) NULL,
	[HIER_C_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL3] [varchar](10) NULL,
	[HIER_C_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL4] [varchar](10) NULL,
	[HIER_C_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL5] [varchar](10) NULL,
	[HIER_C_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL6] [varchar](10) NULL,
	[HIER_C_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL7] [varchar](10) NULL,
	[HIER_C_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL1] [varchar](10) NULL,
	[HIER_D_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL10] [varchar](10) NULL,
	[HIER_D_LEVEL10_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL11] [varchar](10) NULL,
	[HIER_D_LEVEL11_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL2] [varchar](10) NULL,
	[HIER_D_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL3] [varchar](10) NULL,
	[HIER_D_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL4] [varchar](10) NULL,
	[HIER_D_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[HIER_D_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL6] [varchar](10) NULL,
	[HIER_D_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL8] [varchar](10) NULL,
	[HIER_D_LEVEL8_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL9] [varchar](10) NULL,
	[HIER_D_LEVEL9_TEXT] [varchar](40) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[BUSINESS_PARTNER] [varchar](10) NULL,
	[CHANNEL] [varchar](2) NULL,
	[CUSTOMER_GRP2] [varchar](3) NULL,
	[CUSTOMER_GRP3] [varchar](3) NULL,
	[ADDRESS] [varchar](10) NULL,
	[LATITUDE] [decimal](10, 3) NULL,
	[LONGITUDE] [decimal](10, 3) NULL,
	[CITY] [varchar](35) NULL,
	[REGION] [varchar](3) NULL,
	[Store Number] [varchar](15) NULL,
	[COUNTRY] [varchar](3) NULL,
	[STREET] [varchar](35) NULL,
	[Zip Code] [varchar](10) NULL,
	[HIER_B_LEVEL1] [varchar](10) NULL,
	[HIER_B_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL2] [varchar](10) NULL,
	[HIER_B_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL3] [varchar](10) NULL,
	[HIER_B_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL4] [varchar](10) NULL,
	[HIER_B_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL5] [varchar](10) NULL,
	[HIER_B_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL6] [varchar](10) NULL,
	[HIER_B_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL7] [varchar](10) NULL,
	[HIER_B_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL8] [varchar](10) NULL,
	[HIER_B_LEVEL8_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL9] [varchar](10) NULL,
	[HIER_B_LEVEL9_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL10] [varchar](10) NULL,
	[HIER_B_LEVEL10_TEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_FACT_TGT](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Unit] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_ALT_UOM_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_ALT_UOM_DIM_TGT](
	[MATERIAL_ID] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CASE_GTIN] [varchar](18) NULL,
	[CASE_UPC] [varchar](18) NULL,
	[PACKAGE_GTIN] [varchar](18) NULL,
	[PACKAGE_UPC] [varchar](18) NULL,
	[UNIT_LOAD_GTIN] [varchar](18) NULL,
	[UNIT_LOAD_UPC] [varchar](18) NULL,
	[CS_EAN/UPC] [varchar](18) NULL,
	[CS_VOLUME_UNIT] [varchar](3) NULL,
	[CS_GROSS_WT] [decimal](17, 3) NULL,
	[CS_HEIGHT] [decimal](17, 3) NULL,
	[CS_LENGTH] [decimal](17, 3) NULL,
	[CS_WIDTH] [decimal](17, 3) NULL,
	[CS_VOLUME] [decimal](17, 3) NULL,
	[CS_UNIT_OF_WT] [varchar](3) NULL,
	[CS_UNIT] [varchar](3) NULL,
	[PKG_EAN/UPC] [varchar](18) NULL,
	[PKG_VOLUME_UNIT] [varchar](3) NULL,
	[PKG_GROSS_WT] [decimal](17, 3) NULL,
	[PKG_HEIGHT] [decimal](17, 3) NULL,
	[PKG_LENGTH] [decimal](17, 3) NULL,
	[PKG_NET_WT] [decimal](17, 3) NULL,
	[PKG_WIDTH] [decimal](17, 3) NULL,
	[PKG_VOLUME] [decimal](17, 3) NULL,
	[PKG_UNIT_OF_WT] [varchar](3) NULL,
	[PKG_UNIT] [varchar](3) NULL,
	[UL_EAN/UPC] [varchar](18) NULL,
	[UL_VOLUME_UNIT] [varchar](3) NULL,
	[UL_GROSS_WT] [decimal](17, 3) NULL,
	[UL_HEIGHT] [decimal](17, 3) NULL,
	[UL_LENGTH] [decimal](17, 3) NULL,
	[UL_WIDTH] [decimal](17, 3) NULL,
	[UL_VOLUME] [decimal](17, 3) NULL,
	[UL_UNIT_OF_WT] [varchar](3) NULL,
	[UL_UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_CLASS_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_CLASS_DIM_TGT](
	[MATERIAL] [varchar](18) NULL,
	[TYPE] [varchar](30) NULL,
	[Sub-Type] [varchar](30) NULL,
	[Manufacturer Company] [varchar](30) NULL,
	[BRAND] [varchar](30) NULL,
	[Sub-Brand] [varchar](30) NULL,
	[FLAVOR] [varchar](30) NULL,
	[Food Form] [varchar](30) NULL,
	[Sub-Food Form] [varchar](30) NULL,
	[SIZE] [varchar](30) NULL,
	[Pack Size] [varchar](30) NULL,
	[Cube Size] [varchar](30) NULL,
	[COUNT] [varchar](30) NULL,
	[Country Sold In] [varchar](30) NULL,
	[Business Unit] [varchar](30) NULL,
	[Nielsen Size] [varchar](30) NULL,
	[Pack Type Use] [varchar](30) NULL,
	[MOD Description] [varchar](30) NULL,
	[Long Description] [varchar](30) NULL,
	[Business Unit Promo] [varchar](30) NULL,
	[Year QTR] [varchar](30) NULL,
	[VERSION] [varchar](30) NULL,
	[SNP Relevant] [varchar](30) NULL,
	[Innovation Item] [varchar](30) NULL,
	[Smart Ops Supply Chain] [varchar](30) NULL,
	[Base Material Number] [varchar](30) NULL,
	[VARIANT] [varchar](30) NULL,
	[Legacy Number] [varchar](30) NULL,
	[Reserve Flag] [varchar](30) NULL,
	[Plan By Date] [varchar](10) NULL,
	[First Ship Date] [varchar](10) NULL,
	[Target Discontinuance Date] [varchar](10) NULL,
	[Remarketing Date] [varchar](10) NULL,
	[CATEGORY] [varchar](30) NULL,
	[Country Sale] [varchar](30) NULL,
	[CUBE] [varchar](30) NULL,
	[Descriptive Attribute] [varchar](30) NULL,
	[Base Material] [varchar](30) NULL,
	[Pack Type] [varchar](30) NULL,
	[Size Dimension] [varchar](30) NULL,
	[Special ID] [varchar](30) NULL,
	[STYLE] [varchar](30) NULL,
	[Sub-Category] [varchar](30) NULL,
	[WEIGHT] [varchar](30) NULL,
	[Like Item] [varchar](30) NULL,
	[Conversion Case Code] [varchar](30) NULL,
	[Conversion Date] [varchar](10) NULL,
	[Family Code] [varchar](30) NULL,
	[Percent Margin] [decimal](17, 3) NULL,
	[Percent of Base Like Item] [decimal](17, 3) NULL,
	[Alternative Market Segment] [varchar](30) NULL,
	[Alternative Category] [varchar](30) NULL,
	[Alternative Sub Category] [varchar](30) NULL,
	[Promoted Price] [decimal](17, 2) NULL,
	[SRP] [decimal](17, 2) NULL,
	[Material for Reporting] [varchar](30) NULL,
	[Culled Status] [varchar](30) NULL,
	[Culled Date] [varchar](10) NULL,
	[SKU Type] [varchar](30) NULL,
	[Food Count] [varchar](30) NULL,
	[PL4] [varchar](30) NULL,
	[Kosher Status] [varchar](30) NULL,
	[WD Single Serv] [varchar](30) NULL,
	[KSC Field Category] [varchar](30) NULL,
	[IP Brand] [varchar](30) NULL,
	[Demand IP Brand] [varchar](30) NULL,
	[IP BU] [varchar](30) NULL,
	[KCI Category] [varchar](30) NULL,
	[KCI Alternate Hierarchy] [varchar](30) NULL,
	[DP Innovation Date] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_TGT](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MATERIAL_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
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
/****** Object:  Table [dbo].[KLG_TPE_NIEL_SCIM_CORP_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_NIEL_SCIM_CORP_TGT](
	[Source_File] [nvarchar](255) NULL,
	[Source_Tab] [nvarchar](255) NULL,
	[Extract_Date] [nvarchar](255) NULL,
	[All_Markets] [nvarchar](255) NULL,
	[All_Products] [nvarchar](255) NULL,
	[All_Periods] [nvarchar](255) NULL,
	[Ret_$] [decimal](20, 5) NULL,
	[Ret_Base_$] [decimal](20, 5) NULL,
	[Ret_Incr_$] [decimal](20, 5) NULL,
	[Ret_LB] [decimal](20, 5) NULL,
	[Ret_Base_LB] [decimal](20, 5) NULL,
	[Ret_Incr_LB] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_FACT_TGT](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales (GSV)] [decimal](17, 2) NULL,
	[IBP GSV ORIG] [decimal](20, 0) NULL,
	[IBP GSV ADJ] [decimal](20, 0) NULL,
	[IBP KMF ORIG] [decimal](20, 0) NULL,
	[IBP KMF ADJ] [decimal](20, 0) NULL,
	[BUD GSV ORIG] [decimal](20, 0) NULL,
	[BUD GSV ADJ] [decimal](20, 0) NULL,
	[BUD BASE KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE GSV ADJ] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[SE2 GSV ORIG] [decimal](20, 0) NULL,
	[SE2 GSV ADJ] [decimal](20, 0) NULL,
	[SE2 KMF ORIG] [decimal](20, 0) NULL,
	[SE2 KMF ADJ] [decimal](20, 0) NULL,
	[SE3 GSV ORIG] [decimal](20, 0) NULL,
	[SE3 GSV ADJ] [decimal](20, 0) NULL,
	[SE3 KMF ORIG] [decimal](20, 0) NULL,
	[SE3 KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
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
/****** Object:  Table [dbo].[KLG_TPE_PLANTO_MAP_DIM_USR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLANTO_MAP_DIM_USR](
	[PT#_TEXT] [nvarchar](255) NULL,
	[PT#] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[LIFELINE] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[ALT_Level_B] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[DP#] [nvarchar](255) NULL,
	[DP_Text] [nvarchar](255) NULL,
	[DP_Group] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_TGT](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_DELTA_COMBINED]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_DELTA_COMBINED](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[CURRENCY] [varchar](5) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned COP] [decimal](17, 2) NULL,
	[TPM: Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Planned TPQ Kilos] [decimal](17, 3) NULL,
	[TPM: Planned TPQ Pounds] [decimal](17, 3) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment CS] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[TPM: Plan Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Plan TPQ] [decimal](17, 3) NULL,
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Ship Eaches] [decimal](17, 3) NULL,
	[TPM: Plan Ship Kilos] [decimal](17, 3) NULL,
	[TPM: Plan Est Ship Vol] [decimal](17, 3) NULL,
	[TPM: Plan Ship Pounds] [decimal](17, 3) NULL,
	[TPM: Parent OI % Total] [decimal](17, 2) NULL,
	[TPM: Parent OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Fixed Lump Sum] [decimal](17, 2) NULL,
	[TPM: Liquidation OI % Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Liquidation Fixed] [decimal](17, 2) NULL,
	[TPM: Military Fixed] [decimal](17, 2) NULL,
	[TPM: New Item Fixed] [decimal](17, 2) NULL,
	[TPM: Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Scanner Application Fixed] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan % Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Total Trade Spend] [decimal](17, 2) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Sales Unit] [varchar](3) NULL,
	[TPM: InfoProvider] [varchar](40) NULL,
	[ATPM - Display] [decimal](17, 3) NULL,
	[ATPM - F&D] [decimal](17, 3) NULL,
	[ATPM - Feature] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned COP] [decimal](17, 2) NULL,
	[ATPM - Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Planned TPQ Kilos] [decimal](17, 3) NULL,
	[ATPM - Planned TPQ Pounds] [decimal](17, 3) NULL,
	[ATPM - Planned Promo COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Plan TPQ] [decimal](17, 3) NULL,
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - CSM Trade] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Spend] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Eaches] [decimal](17, 3) NULL,
	[ATPM - Plan Ship Kilos] [decimal](17, 3) NULL,
	[ATPM - Plan Est Ship Vol] [decimal](17, 3) NULL,
	[ATPM - Plan Ship Pounds] [decimal](17, 3) NULL,
	[ATPM - Parent OI % Total] [decimal](17, 2) NULL,
	[ATPM - Parent OI Rate Total] [decimal](17, 2) NULL,
	[ATPM - Fixed Lump Sum] [decimal](17, 2) NULL,
	[ATPM - Liquidation OI % Total] [decimal](17, 2) NULL,
	[ATPM - Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[ATPM - Liquidation Fixed] [decimal](17, 2) NULL,
	[ATPM - Military Fixed] [decimal](17, 2) NULL,
	[ATPM - New Item Fixed] [decimal](17, 2) NULL,
	[ATPM - Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Scanner Application Fixed] [decimal](17, 2) NULL,
	[ATPM - ScanApps Scan % Total] [decimal](17, 2) NULL,
	[ATPM - ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[ATPM - Promo Scan % Total] [decimal](17, 2) NULL,
	[ATPM - Promo Scan Rate Total] [decimal](17, 2) NULL,
	[ATPM - Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Total Trade Spend] [decimal](17, 2) NULL,
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Currency] [varchar](5) NULL,
	[ATPM - Sales Unit] [varchar](3) NULL,
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[ATPM - InfoProvider] [varchar](20) NULL,
	[Sales Promo: Actual COP $] [decimal](17, 2) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[Sales Promo: Gross Cases] [decimal](17, 3) NULL,
	[Sales Promo: Gross Eaches] [decimal](17, 3) NULL,
	[Sales Promo: Gross Kilos] [decimal](17, 3) NULL,
	[Sales Promo: Gross Pounds] [decimal](17, 3) NULL,
	[Sales Promo: Gross Packages] [decimal](17, 3) NULL,
	[Sales Promo: Currency] [varchar](5) NULL,
	[Sales Promo: Promo Cases Unit] [decimal](10, 3) NULL,
	[Sales Promo: Promo Eaches Unit] [decimal](10, 3) NULL,
	[Sales Promo: True Gross Kilos Unit] [decimal](10, 3) NULL,
	[Sales Promo: Gross Pounds Unit] [decimal](10, 3) NULL,
	[Sales Promo: Un Gross Packages UOM] [decimal](10, 3) NULL,
	[Sales Promo: InfoProvider] [varchar](40) NULL,
	[SVP - Cannibilization Quantity] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Forward Buy] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Dollar] [decimal](17, 2) NULL,
	[SVP - Total Planned Cannibilization Buy Ship Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP - Planned Base Kilos] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Dollars] [decimal](17, 2) NULL,
	[SVP - Suggested Base Eaches] [decimal](17, 3) NULL,
	[SVP - Suggested Base Kilos] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Base Pounds] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Base $] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Sales Unit] [varchar](3) NULL,
	[SVP - Currency] [varchar](5) NULL,
	[SVP - InfoProvider] [varchar](40) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[LE: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Missed OI] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[LE: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL,
	[LE: Currency] [varchar](5) NULL,
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[CURRENCY] [varchar](5) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned COP] [decimal](17, 2) NULL,
	[TPM: Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Planned TPQ Kilos] [decimal](17, 3) NULL,
	[TPM: Planned TPQ Pounds] [decimal](17, 3) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment CS] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[TPM: Plan Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Plan TPQ] [decimal](17, 3) NULL,
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Ship Eaches] [decimal](17, 3) NULL,
	[TPM: Plan Ship Kilos] [decimal](17, 3) NULL,
	[TPM: Plan Est Ship Vol] [decimal](17, 3) NULL,
	[TPM: Plan Ship Pounds] [decimal](17, 3) NULL,
	[TPM: Parent OI % Total] [decimal](17, 2) NULL,
	[TPM: Parent OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Fixed Lump Sum] [decimal](17, 2) NULL,
	[TPM: Liquidation OI % Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Liquidation Fixed] [decimal](17, 2) NULL,
	[TPM: Military Fixed] [decimal](17, 2) NULL,
	[TPM: New Item Fixed] [decimal](17, 2) NULL,
	[TPM: Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Scanner Application Fixed] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan % Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Total Trade Spend] [decimal](17, 2) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Sales Unit] [varchar](3) NULL,
	[TPM: InfoProvider] [varchar](40) NULL,
	[ATPM - Display] [decimal](17, 3) NULL,
	[ATPM - F&D] [decimal](17, 3) NULL,
	[ATPM - Feature] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned COP] [decimal](17, 2) NULL,
	[ATPM - Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Planned TPQ Kilos] [decimal](17, 3) NULL,
	[ATPM - Planned TPQ Pounds] [decimal](17, 3) NULL,
	[ATPM - Planned Promo COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Plan TPQ] [decimal](17, 3) NULL,
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - CSM Trade] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Spend] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Eaches] [decimal](17, 3) NULL,
	[ATPM - Plan Ship Kilos] [decimal](17, 3) NULL,
	[ATPM - Plan Est Ship Vol] [decimal](17, 3) NULL,
	[ATPM - Plan Ship Pounds] [decimal](17, 3) NULL,
	[ATPM - Parent OI % Total] [decimal](17, 2) NULL,
	[ATPM - Parent OI Rate Total] [decimal](17, 2) NULL,
	[ATPM - Fixed Lump Sum] [decimal](17, 2) NULL,
	[ATPM - Liquidation OI % Total] [decimal](17, 2) NULL,
	[ATPM - Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[ATPM - Liquidation Fixed] [decimal](17, 2) NULL,
	[ATPM - Military Fixed] [decimal](17, 2) NULL,
	[ATPM - New Item Fixed] [decimal](17, 2) NULL,
	[ATPM - Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Scanner Application Fixed] [decimal](17, 2) NULL,
	[ATPM - ScanApps Scan % Total] [decimal](17, 2) NULL,
	[ATPM - ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[ATPM - Promo Scan % Total] [decimal](17, 2) NULL,
	[ATPM - Promo Scan Rate Total] [decimal](17, 2) NULL,
	[ATPM - Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Total Trade Spend] [decimal](17, 2) NULL,
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Currency] [varchar](5) NULL,
	[ATPM - Sales Unit] [varchar](3) NULL,
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[ATPM - InfoProvider] [varchar](20) NULL,
	[Sales Promo: Actual COP $] [decimal](17, 2) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[Sales Promo: Gross Cases] [decimal](17, 3) NULL,
	[Sales Promo: Gross Eaches] [decimal](17, 3) NULL,
	[Sales Promo: Gross Kilos] [decimal](17, 3) NULL,
	[Sales Promo: Gross Pounds] [decimal](17, 3) NULL,
	[Sales Promo: Gross Packages] [decimal](17, 3) NULL,
	[Sales Promo: Currency] [varchar](5) NULL,
	[Sales Promo: Promo Cases Unit] [decimal](10, 3) NULL,
	[Sales Promo: Promo Eaches Unit] [decimal](10, 3) NULL,
	[Sales Promo: True Gross Kilos Unit] [decimal](10, 3) NULL,
	[Sales Promo: Gross Pounds Unit] [decimal](10, 3) NULL,
	[Sales Promo: Un Gross Packages UOM] [decimal](10, 3) NULL,
	[Sales Promo: InfoProvider] [varchar](40) NULL,
	[SVP - Cannibilization Quantity] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Forward Buy] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Dollar] [decimal](17, 2) NULL,
	[SVP - Total Planned Cannibilization Buy Ship Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP - Planned Base Kilos] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Dollars] [decimal](17, 2) NULL,
	[SVP - Suggested Base Eaches] [decimal](17, 3) NULL,
	[SVP - Suggested Base Kilos] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Base Pounds] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Base $] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Sales Unit] [varchar](3) NULL,
	[SVP - Currency] [varchar](5) NULL,
	[SVP - InfoProvider] [varchar](40) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[LE: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Missed OI] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[LE: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL,
	[LE: Currency] [varchar](5) NULL,
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_DIM_TGT](
	[PROMOTION_ID] [varchar](24) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_STATUS] [varchar](2) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[ACTUAL_DATE_FROM] [varchar](10) NULL,
	[ACTUAL_DATE_TO] [varchar](10) NULL,
	[TRADE_PROMO_AGREEMENT] [varchar](24) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT] [varchar](3) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[SALES_ORG] [varchar](8) NULL,
	[TACTIC] [varchar](4) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[DISTR_CHANNEL] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_FACT_TGT](
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[Planned Ship $] [decimal](17, 2) NULL,
	[Planned Incremental Volume $] [decimal](17, 2) NULL,
	[Planned Promo COP $] [decimal](17, 2) NULL,
	[LE Total Non-Trade] [decimal](17, 2) NULL,
	[LE Total Fixed KMF $] [decimal](17, 2) NULL,
	[Total Planned Promo $] [decimal](17, 2) NULL,
	[Reserved Total KMF $] [decimal](17, 2) NULL,
	[Total Planned Promo Units] [decimal](17, 2) NULL,
	[Reserved CSM Trade $] [decimal](17, 2) NULL,
	[Total Modeled Promo $] [decimal](17, 2) NULL,
	[Plan Incremental COP $] [decimal](17, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](17, 2) NULL,
	[Sugg Incr] [decimal](17, 2) NULL,
	[SVP: Suggested Base] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL,
	[EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TDLINX_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_TDLINX_DIM_TGT](
	[TDL] [nvarchar](255) NULL,
	[RCLIENTNO] [nvarchar](255) NULL,
	[KUNNR] [nvarchar](255) NULL,
	[RSSTATUSCD] [nvarchar](255) NULL,
	[RASTATUSCD] [nvarchar](255) NULL,
	[STDLINXSCD] [nvarchar](255) NULL,
	[STRANSCD] [nvarchar](255) NULL,
	[SMODCHGIND] [nvarchar](255) NULL,
	[SFILEDT] [nvarchar](255) NULL,
	[SSTATUSIND] [nvarchar](255) NULL,
	[SNAME] [nvarchar](255) NULL,
	[SNO] [nvarchar](255) NULL,
	[SSTREETADD] [nvarchar](255) NULL,
	[SCITY] [nvarchar](255) NULL,
	[SST] [nvarchar](255) NULL,
	[SZIP] [nvarchar](255) NULL,
	[SPLACENM] [nvarchar](255) NULL,
	[SSTCD] [nvarchar](255) NULL,
	[STRADECLCD] [nvarchar](255) NULL,
	[SFORMATCD] [nvarchar](255) NULL,
	[SNOSTRCD] [nvarchar](255) NULL,
	[SCHAININD] [nvarchar](255) NULL,
	[SFILLER1] [nvarchar](255) NULL,
	[SBLOCKID] [nvarchar](255) NULL,
	[STDLINXOCD] [nvarchar](255) NULL,
	[SOWNFAMCD] [nvarchar](255) NULL,
	[SOWNNM] [nvarchar](255) NULL,
	[SOWNCITY] [nvarchar](255) NULL,
	[SOWNST] [nvarchar](255) NULL,
	[SOWNSTCD] [nvarchar](255) NULL,
	[SOWNCNTCD] [nvarchar](255) NULL,
	[SSUPFAMCD] [nvarchar](255) NULL,
	[STDLINXPCD] [nvarchar](255) NULL,
	[SSUPNM] [nvarchar](255) NULL,
	[SSUPCITY] [nvarchar](255) NULL,
	[SSUPST] [nvarchar](255) NULL,
	[SSUPSTCD] [nvarchar](255) NULL,
	[SSUPCNTCD] [nvarchar](255) NULL,
	[STDLINXGCD] [nvarchar](255) NULL,
	[SGRPNM] [nvarchar](255) NULL,
	[SFRANIND] [nvarchar](255) NULL,
	[SGAS] [nvarchar](255) NULL,
	[SPHARM] [nvarchar](255) NULL,
	[SFOODTYPE] [nvarchar](255) NULL,
	[SLAT] [nvarchar](255) NULL,
	[SLONG] [nvarchar](255) NULL,
	[SLATLONGCD] [nvarchar](255) NULL,
	[SCNTCD] [nvarchar](255) NULL,
	[SCNTRYNM] [nvarchar](255) NULL,
	[SAREACD] [nvarchar](255) NULL,
	[SPHONENO] [nvarchar](255) NULL,
	[SNMCHKOUT] [nvarchar](255) NULL,
	[SANNVOLCD] [nvarchar](255) NULL,
	[SWKLYVOL] [nvarchar](255) NULL,
	[SSQFT] [nvarchar](255) NULL,
	[SFTEMPLOY] [nvarchar](255) NULL,
	[SHIVOLCIG] [nvarchar](255) NULL,
	[SLIQUOR] [nvarchar](255) NULL,
	[SWINE] [nvarchar](255) NULL,
	[SBEER] [nvarchar](255) NULL,
	[SONPREM] [nvarchar](255) NULL,
	[SFUTURE1] [nvarchar](255) NULL,
	[SFUTURE2] [nvarchar](255) NULL,
	[SFUTURE3] [nvarchar](255) NULL,
	[ATDLINXACD] [nvarchar](255) NULL,
	[AFAMCD] [nvarchar](255) NULL,
	[ATRANSCD] [nvarchar](255) NULL,
	[ASTATUSIND] [nvarchar](255) NULL,
	[ATYPECD] [nvarchar](255) NULL,
	[ANAME] [nvarchar](255) NULL,
	[ASTREET] [nvarchar](255) NULL,
	[ACITY] [nvarchar](255) NULL,
	[ASTATE] [nvarchar](255) NULL,
	[AZIP] [nvarchar](255) NULL,
	[ASTCD] [nvarchar](255) NULL,
	[ACNTCD] [nvarchar](255) NULL,
	[ACNTRYNM] [nvarchar](255) NULL,
	[AOPERNAME] [nvarchar](255) NULL,
	[ATRADECLCD] [nvarchar](255) NULL,
	[ANOSTRCD] [nvarchar](255) NULL,
	[ATDLINXICD] [nvarchar](255) NULL,
	[AIMNAME] [nvarchar](255) NULL,
	[AIMCITY] [nvarchar](255) NULL,
	[AIMSTATE] [nvarchar](255) NULL,
	[ATDLINXUCD] [nvarchar](255) NULL,
	[AULNAME] [nvarchar](255) NULL,
	[AULCITY] [nvarchar](255) NULL,
	[AULSTATE] [nvarchar](255) NULL,
	[MSTCD] [nvarchar](255) NULL,
	[MCNTCD] [nvarchar](255) NULL,
	[MSTATE] [nvarchar](255) NULL,
	[MCOUNTYNM] [nvarchar](255) NULL,
	[MNIELSZCD] [nvarchar](255) NULL,
	[MDMACD] [nvarchar](255) NULL,
	[MDMANM] [nvarchar](255) NULL,
	[MDMARNK] [nvarchar](255) NULL,
	[MMSACD] [nvarchar](255) NULL,
	[MMSANM] [nvarchar](255) NULL,
	[MMSARNK] [nvarchar](255) NULL,
	[MIRICD] [nvarchar](255) NULL,
	[MIRINM] [nvarchar](255) NULL,
	[MIRIRNK] [nvarchar](255) NULL,
	[MACNCD] [nvarchar](255) NULL,
	[MACNNM] [nvarchar](255) NULL,
	[MACNRNK] [nvarchar](255) NULL,
	[MMGBMKTCD] [nvarchar](255) NULL,
	[MMGBMKTNM] [nvarchar](255) NULL,
	[MMGBREGNM] [nvarchar](255) NULL,
	[MMGBRNK] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_DIM_TGT](
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIODS_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIODS_TGT](
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[Week Count] [int] NULL,
	[B4P Period] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TPM_CONSENSUS_SNAPSHOT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TPM_CONSENSUS_SNAPSHOT_TGT](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_UOM_CONVERSION_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_UOM_CONVERSION_TGT](
	[MATERIAL] [varchar](18) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UOMDENO] [decimal](17, 3) NULL,
	[UOMNUM] [decimal](17, 3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_SRC_1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[Value Category] [varchar](5) NULL,
	[Expense Type] [varchar](4) NULL,
	[Funds: Fund Posting Amount] [decimal](17, 2) NULL,
	[Funds: Currency] [varchar](5) NULL,
	[Funds: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZCUST_MAT_DIM_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZCUST_MAT_DIM_TGT](
	[CUST_MAT] [varchar](10) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[CONTROLLING_AREA] [varchar](4) NULL,
	[SPT_FLAG] [varchar](1) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROFIT_CENTER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLAN_TO] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TYPE_TOSIZE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TYPE_TOSIZE](
	[Type_Name] [nvarchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[Count] [nvarchar](255) NULL,
	[Type_ID] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ledger_Measure_Mapping]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ledger_Measure_Mapping](
	[OP_Sum] [nvarchar](255) NULL,
	[Gross_Profit_Sum] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Sub Group] [nvarchar](255) NULL,
	[Reported Line Item] [nvarchar](255) NULL,
	[Reported Line Item Label] [nvarchar](255) NULL,
	[Child_1] [nvarchar](255) NULL,
	[Base ID] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ledger_ProfitCenter_Mapping]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ledger_ProfitCenter_Mapping](
	[Business_Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Brand Desc] [nvarchar](255) NULL,
	[PROD_H4] [nvarchar](255) NULL,
	[PROD_HIER_TEXT4] [nvarchar](255) NULL,
	[Org] [nvarchar](255) NULL,
	[PROD_H3] [nvarchar](255) NULL,
	[PROD_HIER_TEXT3] [nvarchar](255) NULL,
	[PROD_H2] [nvarchar](255) NULL,
	[PROD_HIER_TEXT2] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OR52]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OR52](
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
/****** Object:  Table [dbo].[PTD_PTG_MAP]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PTD_PTG_MAP](
	[Period] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRY1_BU_NULLS]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QRY1_BU_NULLS](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QRY2_BU_NOT_NULLS]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QRY2_BU_NOT_NULLS](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RGM_DERIVED_COL_MERGED_C_B]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RGM_DERIVED_COL_MERGED_C_B](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RGM_KPI_SCORECARD_V1_P9_LOAD_FOR_MAPPING_DERIVED_COLUMNS_MERGED_C_B_FILL]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RGM_KPI_SCORECARD_V1_P9_LOAD_FOR_MAPPING_DERIVED_COLUMNS_MERGED_C_B_FILL](
	[ALL_MARKETS] [varchar](255) NULL,
	[ALL_PRODUCTS] [varchar](255) NULL,
	[ALL_PERIODS] [varchar](255) NULL,
	[CATEGORY_UPDATE] [varchar](255) NULL,
	[BRAND_UPDATE] [varchar](255) NULL,
	[DOLLARS] [float] NULL,
	[UNITS] [float] NULL,
	[PERC_SUBSIDIZED_UNITS] [float] NULL,
	[AVG_EQ_PRICE] [float] NULL,
	[BASE_EQ_PRICE] [float] NULL,
	[ANY_PROMO_EQ_PRICE] [float] NULL,
	[AVG_NO_OF_ITEMS] [float] NULL,
	[QUAL_CWW] [float] NULL,
	[ANY_PROMO_CWW] [float] NULL,
	[Feat_And_Disp _CWW] [float] NULL,
	[ANY_FEAT_CWW] [float] NULL,
	[ANY_PROMO_UNITS_PERC_LIFT] [float] NULL,
	[Any_ Promo_Dollars_Perc_Lift] [float] NULL,
	[BU] [varchar](255) NULL,
	[DIV_] [float] NULL,
	[TIME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_KLG_TPE_TPM_CONSENSUS_SNAPSHOT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_KLG_TPE_TPM_CONSENSUS_SNAPSHOT_TGT](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPM_ACT_FOR_PER_LAG_ZE_2015_USR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPM_ACT_FOR_PER_LAG_ZE_2015_USR](
	[ACCT] [nvarchar](255) NULL,
	[MATERIAL] [nvarchar](255) NULL,
	[WEEK] [nvarchar](255) NULL,
	[BW_Week] [nvarchar](255) NULL,
	[Period] [nvarchar](255) NULL,
	[Source] [nvarchar](255) NULL,
	[PLAN_SHIP_DOL] [decimal](20, 5) NULL,
	[ACTUALS_DOL] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [stg].[RGM_BU_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stg].[RGM_BU_12P](
	[BUSINESS_UNIT] [varchar](20) NULL,
	[NSV_ACTUAL] [decimal](18, 6) NULL,
	[NSV_%_CHG_YA] [decimal](18, 6) NULL,
	[NSV_USD_CHG_YA] [decimal](18, 6) NULL,
	[NSV_LB_ACTUAL] [decimal](18, 6) NULL,
	[NSV_LB_ACTUAL_V_YA] [decimal](18, 6) NULL,
	[SCM_%_ACTUAL] [decimal](18, 6) NULL,
	[SCM_%_V_YA] [decimal](18, 6) NULL,
	[ACTUAL_NSV] [decimal](18, 6) NULL,
	[ACTUAL_LBS] [decimal](18, 6) NULL,
	[ACTUAL_SCM] [decimal](18, 6) NULL,
	[ACTUAL_NSV_12P_YA] [decimal](18, 6) NULL,
	[ACTUAL_LBS_12P_YA] [decimal](18, 6) NULL,
	[ACTUAL_SCM_12P_YA] [decimal](18, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [stg].[RGM_BU_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stg].[RGM_BU_YTD](
	[BUSINESS_UNIT] [varchar](20) NULL,
	[NSV_ACTUAL] [decimal](18, 6) NULL,
	[NSV_%_CHG_YA] [decimal](18, 6) NULL,
	[NSV_USD_CHG_YA] [decimal](18, 6) NULL,
	[NSV_V_BD] [decimal](18, 6) NULL,
	[NSV_LB_ACTUAL] [decimal](18, 6) NULL,
	[NSV_LB_ACTUAL_V_YA] [decimal](18, 6) NULL,
	[SCM_%_ACTUAL] [decimal](18, 6) NULL,
	[SCM_%_V_YA] [decimal](18, 6) NULL,
	[ACTUAL_NSV] [decimal](18, 6) NULL,
	[ACTUAL_LBS] [decimal](18, 6) NULL,
	[ACTUAL_SCM] [decimal](18, 6) NULL,
	[BUDGET_NSV] [decimal](18, 6) NULL,
	[ACTUAL_NSV_YTD_YA] [decimal](18, 6) NULL,
	[ACTUAL_LBS_YTD_YA] [decimal](18, 6) NULL,
	[ACTUAL_SCM_YTD_YA] [decimal](18, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [stg].[RGM_BU_YTD_IBP]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stg].[RGM_BU_YTD_IBP](
	[BUSINESS_UNIT] [nvarchar](60) NULL,
	[NSV_ACTUAL_IBP] [decimal](18, 6) NULL,
	[NSV_CHG_YA_IBP] [decimal](18, 6) NULL,
	[NSV_CHG_YA_PRT_IBP] [decimal](18, 6) NULL,
	[NSV_KMF_GSV_IBP] [decimal](18, 6) NULL,
	[NSV_PRXY_ACTL_IBP] [decimal](18, 6) NULL,
	[NSV_PRXY_V_YA_IBP] [decimal](18, 6) NULL,
	[SCM_PRXY_ACTL_IBP] [decimal](18, 6) NULL,
	[SCM_PRXY_YA_IBP] [decimal](18, 6) NULL,
	[GSV_BUD] [decimal](18, 6) NULL,
	[KMF_BUD] [decimal](18, 6) NULL,
	[NSV_BUD] [decimal](18, 6) NULL,
	[GSV_KMF_ADJ_BUD] [decimal](18, 6) NULL,
	[GSV_IBP] [decimal](18, 6) NULL,
	[KMF_IBP] [decimal](18, 6) NULL,
	[NSV_IBP] [decimal](18, 6) NULL,
	[YAG_GSV] [decimal](18, 6) NULL,
	[YAG_KMF] [decimal](18, 6) NULL,
	[YAG_NSV] [decimal](18, 6) NULL,
	[COP_YTD] [decimal](18, 6) NULL,
	[COP_YTD_YA] [decimal](18, 6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [stg].[RGM_CATEGORY_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stg].[RGM_CATEGORY_12P](
	[BUSINESS_UNIT] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[SCM_$_ACTUAL] [decimal](18, 6) NULL,
	[GSV_V_YA] [decimal](18, 6) NULL,
	[NSV_V_YA] [decimal](18, 6) NULL,
	[TRADE_%_V_YA] [decimal](18, 6) NULL,
	[NSV_BY_LB_ACTUAL] [decimal](18, 6) NULL,
	[NSV_LB_V_YA] [decimal](18, 6) NULL,
	[SCM_%_V_YA] [decimal](18, 6) NULL,
	[MIX_V_YA] [decimal](18, 6) NULL,
	[$_SHARE_ACTUAL] [decimal](18, 6) NULL,
	[$_SHARE_V_YA] [decimal](18, 6) NULL,
	[EDLP_%_KMF] [decimal](18, 6) NULL,
	[UNIT_LIFT_ACTUAL] [decimal](18, 6) NULL,
	[LIST_USD_ACTUAL] [decimal](18, 6) NULL,
	[SUB_BASE_ACTUAL] [decimal](18, 6) NULL,
	[SUB_BASE_V_YA] [decimal](18, 6) NULL,
	[AVG_EQ_PRICE_K_YTD] [decimal](18, 6) NULL,
	[BRAND_ASSORT_ACTUAL] [decimal](18, 6) NULL,
	[BRND_ASSRT_V_YA] [decimal](18, 6) NULL,
	[QM_SHR_OF_ALL_WKS_ACTUAL] [decimal](18, 6) NULL,
	[QM_SHR_OF_ALL_WKS_V_YA] [decimal](18, 6) NULL,
	[PROMO_SHR_OF_ALL_WKS_ACTUAL] [decimal](18, 6) NULL,
	[PROMO_SHR_OF_ALL_WKS_V_YA] [decimal](18, 6) NULL,
	[F_D_CONV_ACTUAL] [decimal](18, 6) NULL,
	[F_D_CONV_V_YA] [decimal](18, 6) NULL,
	[DISCOUNT_DEPTH_ACTUAL] [decimal](18, 6) NULL,
	[ACTUAL_NSV] [decimal](18, 6) NULL,
	[ACTUAL_NSV_12P_YA] [decimal](18, 6) NULL,
	[ACTUAL_LBS] [decimal](18, 6) NULL,
	[ACTUAL_LBS_12P_YA] [decimal](18, 6) NULL,
	[ACTUAL_SCM] [decimal](18, 6) NULL,
	[ACTUAL_SCM_12P_YA] [decimal](18, 6) NULL,
	[GSV_12P] [decimal](18, 6) NULL,
	[GSV_12P_YA] [decimal](18, 6) NULL,
	[KMF_12P] [decimal](18, 6) NULL,
	[KMF_12P_YA] [decimal](18, 6) NULL,
	[SCM2_12P] [decimal](18, 6) NULL,
	[SCM2_12P_YA] [decimal](18, 6) NULL,
	[EDLP_CAT_12P] [decimal](18, 6) NULL,
	[EDLP_CAT_12P_YA] [decimal](18, 6) NULL,
	[KMF_CAT_12P] [decimal](18, 6) NULL,
	[KMF_CAT_12P_YA] [decimal](18, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [stg].[RGM_CATEGORY_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stg].[RGM_CATEGORY_YTD](
	[BUSINESS_UNIT] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[SCM_$_ACTUAL] [decimal](18, 6) NULL,
	[GSV_V_YA] [decimal](18, 6) NULL,
	[NSV_V_YA] [decimal](18, 6) NULL,
	[NSV_v_BUDGET] [decimal](18, 6) NULL,
	[TRADE_%_V_YA] [decimal](18, 6) NULL,
	[NSV_BY_LB_ACTUAL] [decimal](18, 6) NULL,
	[NSV_LB_V_YA] [decimal](18, 6) NULL,
	[SCM_%_V_YA] [decimal](18, 6) NULL,
	[MIX_V_YA] [decimal](18, 6) NULL,
	[$_SHARE_ACTUAL] [decimal](18, 6) NULL,
	[$_SHARE_V_YA] [decimal](18, 6) NULL,
	[EDLP_%_KMF] [decimal](18, 6) NULL,
	[UNIT_LIFT_ACTUAL] [decimal](18, 6) NULL,
	[LIST_USD_ACTUAL] [decimal](18, 6) NULL,
	[SUB_BASE_ACTUAL] [decimal](18, 6) NULL,
	[SUB_BASE_V_YA] [decimal](18, 6) NULL,
	[AVG_EQ_PRICE_K_YTD] [decimal](18, 6) NULL,
	[BRAND_ASSORT_ACTUAL] [decimal](18, 6) NULL,
	[BRND_ASSRT_V_YA] [decimal](18, 6) NULL,
	[QM_SHR_OF_ALL_WKS_ACTUAL] [decimal](18, 6) NULL,
	[QM_SHR_OF_ALL_WKS_V_YA] [decimal](18, 6) NULL,
	[PROMO_SHR_OF_ALL_WKS_ACTUAL] [decimal](18, 6) NULL,
	[PROMO_SHR_OF_ALL_WKS_V_YA] [decimal](18, 6) NULL,
	[F_D_CONV_ACTUAL] [decimal](18, 6) NULL,
	[F_D_CONV_V_YA] [decimal](18, 6) NULL,
	[DISCOUNT_DEPTH_ACTUAL] [decimal](18, 6) NULL,
	[ACTUAL_NSV] [decimal](18, 6) NULL,
	[ACTUAL_NSV_YTD_YA] [decimal](18, 6) NULL,
	[ACTUAL_LBS] [decimal](18, 6) NULL,
	[ACTUAL_LBS_YTD_YA] [decimal](18, 6) NULL,
	[ACTUAL_SCM] [decimal](18, 6) NULL,
	[ACTUAL_SCM_YTD_YA] [decimal](18, 6) NULL,
	[BUDGET_NSV] [decimal](18, 6) NULL,
	[GSV_YTD] [decimal](18, 6) NULL,
	[GSV_YTD_YA] [decimal](18, 6) NULL,
	[KMF_YTD] [decimal](18, 6) NULL,
	[KMF_YTD_YA] [decimal](18, 6) NULL,
	[SCM2_YTD] [decimal](18, 6) NULL,
	[SCM2_YTD_YA] [decimal](18, 6) NULL,
	[EDLP_CAT_YTD] [decimal](18, 6) NULL,
	[EDLP_CAT_YTD_YA] [decimal](18, 6) NULL,
	[KMF_CAT_YTD] [decimal](18, 6) NULL,
	[KMF_CAT_YTD_YA] [decimal](18, 6) NULL,
	[GSV_BD] [decimal](18, 6) NULL,
	[KMF_BD] [decimal](18, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [stg].[RGM_CATEGORY_YTD_IBP]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stg].[RGM_CATEGORY_YTD_IBP](
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](60) NULL,
	[GSV_ACTL_IBP] [decimal](18, 6) NULL,
	[GSV_V_YA_IBP] [decimal](18, 6) NULL,
	[GSV_KMF_IBP] [decimal](18, 6) NULL,
	[NSV_PRXY_V_YA_IBP] [decimal](18, 6) NULL,
	[NSV_PRXY_V_BUD_IBP] [decimal](18, 6) NULL,
	[TRADE_PRCT_B_W_ACTUAL_IBP] [decimal](18, 6) NULL,
	[TRADE_PRCT_B_W_ACTUAL_YA_IBP] [decimal](18, 6) NULL,
	[NSV_PRXY_ACTL_IBP] [decimal](18, 6) NULL,
	[NSV_PRXY_V_LB_YA_IBP] [decimal](18, 6) NULL,
	[NSV_PRCT_CHG_YA_IBP] [decimal](18, 6) NULL,
	[SCM_PRXY_PRCT_V_YA_IBP] [decimal](18, 6) NULL,
	[GSV_BUD] [decimal](18, 6) NULL,
	[KMF_BUD] [decimal](18, 6) NULL,
	[NSV_BUD] [decimal](18, 6) NULL,
	[GSV_KMF_ADJ_BUD] [decimal](18, 6) NULL,
	[GSV_IBP] [decimal](18, 6) NULL,
	[KMF_IBP] [decimal](18, 6) NULL,
	[NSV_IBP] [decimal](18, 6) NULL,
	[YAG_GSV] [decimal](18, 6) NULL,
	[YAG_KMF] [decimal](18, 6) NULL,
	[COP_YTD] [decimal](18, 6) NULL,
	[COP_YTD_YA] [decimal](18, 6) NULL,
	[YAG_NSV] [decimal](18, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKBPH02].[BU_TYPE_Master]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKBPH02].[BU_TYPE_Master](
	[TYPE_ID] [varchar](18) NULL,
	[TYPE_DESC] [varchar](60) NULL,
	[CUST_MAT] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKBPH02].[MATERIAL_MAP_TABLE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKBPH02].[MATERIAL_MAP_TABLE](
	[ALT_CATEGORY] [varchar](30) NULL,
	[CATEGORY_ID] [varchar](18) NULL,
	[CATEGORY_DESC] [varchar](60) NULL,
	[Category] [varchar](34) NULL,
	[BRAND_ID] [varchar](18) NULL,
	[BRAND_DESC] [varchar](60) NULL,
	[SUB_BRAND_ID] [varchar](18) NULL,
	[SUB_BRAND_DESC] [varchar](60) NULL,
	[TYPE_ID] [varchar](18) NULL,
	[TYPE_DESC] [varchar](60) NULL,
	[SUB_TYPE_ID] [varchar](18) NULL,
	[SUB_TYPE_DESC] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKJDW73].[KLG_TPE_SCIM_WEEK_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKJDW73].[KLG_TPE_SCIM_WEEK_FACT_TGT](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKJDW73].[KLG_TPE_SCIM_WEEK_REGION_FACT_TGT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKJDW73].[KLG_TPE_SCIM_WEEK_REGION_FACT_TGT](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [US\USKJDW73].[KLG_TPE_SCIM_WEEK_REGION_FACT_USR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [US\USKJDW73].[KLG_TPE_SCIM_WEEK_REGION_FACT_USR](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[KLG_PRICE _YAGO_REDK_MIX]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PRICE _YAGO_REDK_MIX] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
Round(Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] / dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) AS [YAG GSV per Unit],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
dbo.KLG_TPE_TIME_DIM_TGT.WK

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = '2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units] > 0
GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
dbo.KLG_TPE_TIME_DIM_TGT.WK
GO
/****** Object:  View [dbo].[KLG_PRICE _CY_IMPACT_MIX]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PRICE _CY_IMPACT_MIX] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [GSV per Unit],
dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit],
Round(Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) - dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit] AS [GSV per Unit Chg],
((Round(Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) - dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit])*dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [GSV Price Chg],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year]

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN dbo.[KLG_PRICE _YAGO_REDK_MIX] ON dbo.[KLG_PRICE _YAGO_REDK_MIX].CUSTOMER = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.[KLG_PRICE _YAGO_REDK_MIX].[Mixed Pallet Material] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.[KLG_PRICE _YAGO_REDK_MIX].WK = dbo.KLG_TPE_TIME_DIM_TGT.WK
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = '2019' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] > 0 AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units] > 0 AND
dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit] >0
-- dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = '301102' AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[Period Year] = 'P4 2017'

GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit]
GO
/****** Object:  View [dbo].[KLG_PRICE_IMPACT_SUM_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PRICE_IMPACT_SUM_MT] AS 
SELECT
dbo.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER,
dbo.[KLG_PRICE _CY_IMPACT_MIX].[Period Year],
Sum(dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV Price Chg]) AS [GSV Price Chg],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name]

/*Into TPE_DS_User.dbo.KLG_PRICE_IMPACT
Drop Table TPE_DS_User.dbo.KLG_PRICE_IMPACT
Insert Into TPE_DS_User.dbo.KLG_PRICE_IMPACT */

FROM
dbo.[KLG_PRICE _CY_IMPACT_MIX]
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.[KLG_PRICE _CY_IMPACT_MIX].[Mixed Pallet Material]
WHERE
dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit Chg] > 0.03 OR
dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit Chg] < -0.03
GROUP BY
dbo.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER,
dbo.[KLG_PRICE _CY_IMPACT_MIX].[Period Year],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5
GO
/****** Object:  View [dbo].[KLG_RECENT_STD_PRICE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_RECENT_STD_PRICE] AS 
SELECT
dbo.KLG_TPE_MAT_STD_PRICE_TGT.[MOD Material] As Material,
Max(dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Calendar Year]) As Max_Year,
dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY
-- Into dbo.std_temp1

FROM
dbo.KLG_TPE_MAT_STD_PRICE_TGT
--WHERE
-- dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY = 'USD'
Group BY
dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Mod Material],
dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY
------------------------------------------------
-----------------Max YEar with STD Price
------------------------------------------------
/* SELECT
dbo.std_temp1.[Material],
dbo.std_temp1.Max_Year,
Max (dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Standard Price]) As Max_STD_Price

FROM
dbo.KLG_TPE_MAT_STD_PRICE_TGT
INNER JOIN dbo.std_temp1 ON dbo.std_temp1.[Material] = dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Mod Material] AND dbo.std_temp1.Max_Year = dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Calendar Year] AND dbo.std_temp1.CURRENCY = dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY

Group BY
dbo.std_temp1.[Material],
dbo.std_temp1.Max_Year*/
-- Drop Table dbo.std_temp1
GO
/****** Object:  View [dbo].[KLG_STD_PRICE_MIX]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_STD_PRICE_MIX] AS 
SELECT
dbo.KLG_RECENT_STD_PRICE.Material,
dbo.KLG_RECENT_STD_PRICE.Max_Year,
dbo.KLG_RECENT_STD_PRICE.CURRENCY,
dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Standard Price]

FROM
dbo.KLG_RECENT_STD_PRICE
LEFT JOIN dbo.KLG_TPE_MAT_STD_PRICE_TGT ON dbo.KLG_TPE_MAT_STD_PRICE_TGT.[MOD Material] = dbo.KLG_RECENT_STD_PRICE.Material AND dbo.KLG_RECENT_STD_PRICE.Max_Year = dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Calendar Year] AND dbo.KLG_RECENT_STD_PRICE.CURRENCY = dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY AND dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Component Material] = dbo.KLG_RECENT_STD_PRICE.Material

GO
/****** Object:  View [dbo].[KLG_PT_TYPE_PERFORMANCE_MF]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PT_TYPE_PERFORMANCE_MF] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK AS Week,
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Ret $'s]) AS [Plan Base Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ret $'s]) AS [Plan Incr Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Units]) AS [Plan Base Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Units]) AS [Plan Incr Units]
/*Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
WHERE
-- (dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2016 AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2015 AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Morning Foods' AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 = 'Pop-Tarts 12ct' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo = '300855'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
GO
/****** Object:  View [dbo].[KLG_PT_TYPE_PERFORMANCE_SLTY]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PT_TYPE_PERFORMANCE_SLTY] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK AS Week,
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Ret $'s]) AS [Plan Base Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ret $'s]) AS [Plan Incr Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Units]) AS [Plan Base Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Units]) AS [Plan Incr Units]
/*Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
WHERE
-- (dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2015 AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty' AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = 'Salty Snacks'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK

GO
/****** Object:  View [dbo].[KLG_PRICE _NY_IMPACT_MIX]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PRICE _NY_IMPACT_MIX] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [GSV per Unit],
dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit],
Round(Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) - dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit] AS [GSV per Unit Chg],
((Round(Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) / sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]),2) - dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit])*dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [GSV Price Chg],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year]

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN dbo.[KLG_PRICE _YAGO_REDK_MIX] ON dbo.[KLG_PRICE _YAGO_REDK_MIX].CUSTOMER = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.[KLG_PRICE _YAGO_REDK_MIX].[Mixed Pallet Material] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.[KLG_PRICE _YAGO_REDK_MIX].WK = dbo.KLG_TPE_TIME_DIM_TGT.WK
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = '2017' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] > 0 AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units] > 0 AND
dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit] >0
-- dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = '301102' AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[Period Year] = 'P4 2017'

GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.[KLG_PRICE _YAGO_REDK_MIX].[YAG GSV per Unit]

GO
/****** Object:  View [dbo].[KLG_PRICE_IMPACT_TROUBLESHOOT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PRICE_IMPACT_TROUBLESHOOT] AS 
SELECT
dbo.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER,
dbo.[KLG_PRICE _CY_IMPACT_MIX].[Period Year],
dbo.[KLG_PRICE _CY_IMPACT_MIX].[Calendar Week],
Sum(dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV Price Chg]) AS [GSV Price Chg],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.[KLG_PRICE _CY_IMPACT_MIX].[YAG GSV per Unit],
dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit],
dbo.[KLG_PRICE _CY_IMPACT_MIX].[LE Ship Units]


FROM
dbo.[KLG_PRICE _CY_IMPACT_MIX]
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.[KLG_PRICE _CY_IMPACT_MIX].[Mixed Pallet Material]
WHERE
(dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit Chg] > 0.03 or dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit Chg] < -0.03) AND
dbo.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER = '300672' AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 = 'Mini-Wheats Core M'
GROUP BY
dbo.[KLG_PRICE _CY_IMPACT_MIX].CUSTOMER,
dbo.[KLG_PRICE _CY_IMPACT_MIX].[Period Year],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.[KLG_PRICE _CY_IMPACT_MIX].[YAG GSV per Unit],
dbo.[KLG_PRICE _CY_IMPACT_MIX].[GSV per Unit],
dbo.[KLG_PRICE _CY_IMPACT_MIX].[LE Ship Units],
dbo.[KLG_PRICE _CY_IMPACT_MIX].[Calendar Week]

GO
/****** Object:  View [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE_MT] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Desc],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num AS [GGS Brand Priority Number],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority AS [GGS Brand Priority],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority AS [GGS Brand Sub Priority],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases] * dbo.KLG_STD_PRICE_MIX.[Standard Price]) AS [LE COP Fixed]

/*Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
Right JOIN TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP ON TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4
WHERE
-- (dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150241001085931/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150241001085932/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606731/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606731/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094632/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001495032/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001494732/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001593331/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094631/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001634532/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001408932/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001585931/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606732/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001593332/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094632/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001585932/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001495132/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001547832/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 9 AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo = '300994' AND
-- dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 = 'Eggo Waffles Thick & Fluffy M' AND
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
/****** Object:  View [dbo].[KLG_TPM_INSIGHTS_PT_mat_PERFORMANCE_MT_trblshoot]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TPM_INSIGHTS_PT_mat_PERFORMANCE_MT_trblshoot] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Desc],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num AS [GGS Brand Priority Number],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority AS [GGS Brand Priority],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority AS [GGS Brand Sub Priority],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TPE_TIME_DIM_TGT.[WK],
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases] * dbo.KLG_STD_PRICE_MIX.[Standard Price]) AS [LE COP Fixed]

/*Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
Right JOIN TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP ON TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4
WHERE
-- (dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150241001085931/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150241001085932/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606731/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606731/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094632/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001495032/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001494732/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001593331/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094631/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001634532/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001408932/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001585931/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001606732/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001593332/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150301001094632/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001585932/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001495132/2016' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300150380001547832/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 1 AND

TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo = '300002' AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = '2410010684' AND
dbo.KLG_TPE_TIME_DIM_TGT.[WK] = '02' AND
-- dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 = 'Eggo Waffles Thick & Fluffy M' AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_TIME_DIM_TGT.[WK]
GO
/****** Object:  View [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE_ForDeloitte_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE_ForDeloitte_MT] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num AS [GGS Brand Priority Number],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority AS [GGS Brand Priority],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority AS [GGS Brand Sub Priority],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending] AS [Week Ending],
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Acutal Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship EA]) AS [Plan Ship EA],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship Units]) AS [Actual Ship EA]
-- Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_WEEK_PERFORM
/*Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_WEEK_PERFORM
Drop Table TPE_DS_User.dbo.KLG_PLANTO_TYPE_WEEK_PERFORM*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
Right JOIN TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP ON TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4
WHERE
-- (dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] != '300231' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] != '2410070569' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] != '06/2016') AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2019 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2015 AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority_Num,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_Priority,
TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Sub_Priority,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending]
GO
/****** Object:  View [dbo].[SALES_PERFORMANCE_TYPE_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SALES_PERFORMANCE_TYPE_MT] AS 
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

/*Into KG_SANDBOX.USKJDW73.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table KG_SANDBOX.USKJDW73.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE ON TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.Type_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
Right JOIN TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP ON TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4
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
/****** Object:  View [dbo].[KLG_STD_PRICE_MIX_CALC]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_STD_PRICE_MIX_CALC] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[PERIOD YEAR],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases]) AS [LE Cases],
Round(Sum(dbo.KLG_STD_PRICE_MIX.[Standard Price] * dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases]),2) AS [LE COPS FIXED],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
dbo.KLG_STD_PRICE_MIX.Max_Year,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]

FROM
dbo.KLG_STD_PRICE_MIX
INNER JOIN dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
-- WHERE
-- dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = 300994 AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 1
GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_STD_PRICE_MIX.Max_Year,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]


GO
/****** Object:  View [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE_TrblShoot]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE_TrblShoot] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
-- dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Plan KMF]
/*Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE NSV PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]-dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $] - dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE SC PRXY $ GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases] * dbo.KLG_STD_PRICE_MIX.[Standard Price]) AS [LE COP Fixed]
*/
/*Into TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table TPE_DS_User.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
-- Where Not ExistS(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] = '300231' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material] = '2410070569' And dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] = '06/2016')
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
RIGHT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
WHERE
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2016 AND
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2015 AND	
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = '301354' AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5= 'Cocoa Krispies M' AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = '3' AND
-- dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Morning Foods' And
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
-- dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
GO
/****** Object:  View [dbo].[SALES_PERFORMANCE_TYPE_MTA]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SALES_PERFORMANCE_TYPE_MTA] AS 
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

/*Into KG_SANDBOX.USKJDW73.dbo.KLG_PLANTO_TYPE_PER_PERFORM
Drop Table KG_SANDBOX.USKJDW73.dbo.KLG_PLANTO_TYPE_PER_PERFORM*/

FROM
TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_TARGET.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT ON TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = TPE_DS_TARGET.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE ON TPE_DS_TARGET.dbo.KLG_TYPE_TOSIZE.Type_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
LEFT JOIN TPE_DS_TARGET.dbo.KLG_STD_PRICE_MIX ON dbo.KLG_STD_PRICE_MIX.Material = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] AND dbo.KLG_STD_PRICE_MIX.Currency = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CURRENCY
RIGHT JOIN TPE_DS_User.dbo.KLG_CANADA_CAT_MAP ON TPE_DS_User.dbo.KLG_CANADA_CAT_MAP.Category = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
Right JOIN TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP ON TPE_DS_User.dbo.KLG_GRANULAR_GROWTH_MAP.Brand_ID = TPE_DS_TARGET.dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4
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
/****** Object:  View [dbo].[KLG_BOILERPLATE_1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_BOILERPLATE_1] AS 
SELECT
	a.SNAPSHOT_WEEK AS [Snapshot Week],
	a.CUSTOMER AS Customer,
	c.PROD_HIER_TEXT4 AS Brand,
	c.ALT_CATEGORY AS Category,
	b.[Period Number] AS Period,
	b.[YEAR] AS [Year],
	0 AS [Actual Ship $],
	0 AS [LE Ship $],
	Sum(a.CONSENSUS_GSV) AS [Consensus GSV],
	d.BUSINESS_UNIT
FROM
	dbo.KLG_TPE_CONSENSUS_FACT_TGT AS a
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT AS b ON a.CALENDER_WEEK = b.CALENDER_WEEK AND a.CALENDER_WEEK = b.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT AS c ON a.[Mixed Pallet Material] = c.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT AS d ON a.CUSTOMER = d.CUST_MAT AND a.[Mixed Pallet Material] = d.MIXED_PAL_MATERIAL
WHERE
	a.CONSENSUS_GSV <> 0 AND
	SNAPSHOT_WEEK = 
	CASE 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (1,2,3,4,5) THEN '48/' + STR(CAST(SUBSTRING(a.CURRENT_CALWEEK,4,5) AS INT)-1)
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (6,7,8,9) THEN '05/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (10,11,12,13,14) THEN '09/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (15,16,17,18) THEN '14/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (19,20,21,22) THEN '18/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (23,24,25,26,27) THEN '22/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (28,29,30,31) THEN '27/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (32,33,34,35) THEN '31/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (36,37,38,39,40) THEN '35/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (41,42,43,44) THEN '40/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (45,46,47,48) THEN '44/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
		WHEN LEFT(a.CURRENT_CALWEEK,2) * 1 IN (49,50,51,52,53) THEN '48/' + SUBSTRING(a.CURRENT_CALWEEK,4,5) 
	END
GROUP BY
	a.SNAPSHOT_WEEK,
	a.CUSTOMER,
	c.PROD_HIER_TEXT4,
	c.ALT_CATEGORY,
	b.[Period Number],
	b.[YEAR],
	d.BUSINESS_UNIT

UNION ALL

SELECT
	'/' AS [Snapshot Week],
	a.CUSTOMER AS Customer,
	b.PROD_HIER_TEXT4 AS Brand,
	b.ALT_CATEGORY AS Category,
	c.[Period Number] AS Period,
	c.[YEAR] AS [Year],
	Sum(a.[Actual Ship $]) AS [Actual Ship $],
	Sum(a.[LE Ship $]) AS [LE Ship $],
	0 AS [Consensus GSV],
	d.BUSINESS_UNIT
FROM
	dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT AS a
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT AS b ON a.[Mixed Pallet Material] = b.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT AS c ON a.[Calendar Week] = c.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT d ON a.CUSTOMER = d.CUST_MAT 
	AND a.[Mixed Pallet Material] = d.MIXED_PAL_MATERIAL
WHERE
	left(a.CUSTOMER,1) = 3 AND
	(a.[Actual Ship $] <> 0 OR
	a.[LE Ship $] <> 0)
GROUP BY
	a.CUSTOMER,
	b.PROD_HIER_TEXT4,
	b.ALT_CATEGORY,
	c.[Period Number],
	c.[YEAR],
	d.BUSINESS_UNIT
GO
/****** Object:  View [dbo].[KLG_BOILERPLATE_3]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_BOILERPLATE_3] AS 
SELECT
	a.[Snapshot Week],
	a.Customer,
	a.Brand,
	a.Category,
	a.Period,
	a.[Year],
	a.[Actual Ship $],
	a.[LE Ship $],
	a.[Consensus GSV],
	a.[Business_Unit],
	b.Level_A,
	b.Level_B,
	b.Level_C,
	b.Level_D,
	b.Level_E,
	b.PT_Name,
	
	(SELECT	MAX(a.[Year] * 100 +
			CASE a.[Period NUMBER]
				WHEN 10 THEN '10' WHEN 11 THEN '11' WHEN 12 THEN '12' ELSE '0' + a.[Period Number]
		END)
		FROM [dbo].[KLG_TPE_TIME_DIM_TGT] a
		WHERE
			a.[Week Starting] <= GETDATE() AND a.[Week Ending] >= GETDATE()
	) as [CurPerYr]

FROM
	KLG_BOILERPLATE_1 AS a

LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR AS b ON a.Customer = b.PT#
GO
/****** Object:  View [dbo].[BU_DERIV_US]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BU_DERIV_US] AS 
SELECT
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CONTROLLING_AREA,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.SPT_FLAG,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PROD_HIER_LEVEL4,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PROFIT_CENTER,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO

FROM
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT
WHERE
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT NOT LIKE 'Specialty' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE = 'NUSC'

GO
/****** Object:  View [dbo].[Create_Table_Periods]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Create_Table_Periods] AS 
SELECT
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
Count(dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week]) AS [Week Count],
Left(dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],3) As [B4P Period]

/*Into KLG_TPE_TIME_PERIODS_TGT*/

FROM
dbo.KLG_TPE_TIME_DIM_TGT
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR]
GO
/****** Object:  View [dbo].[edlp]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[edlp] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Shipment Eaches]) As [Plan Ship Units],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION

/*Into TPE_DS_User.dbo.KLG_PROMO_EDLP_TEMP
Drop Table TPE_DS_User.dbo.KLG_PROMO_EDLP_TEMP*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
LEFT JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] = 1 AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Snacks' AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_Desc LIKE 'EDLP Week' AND
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME = 'Walmart' AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC NOT IN ('Cancelled', 'Draft', 'Deleted')
GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
/****** Object:  View [dbo].[KC Datamart Validator 1]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KC Datamart Validator 1] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship CS]) AS [Plan Ship CS],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship CS]) AS [Actual Ship CS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned COP $]) AS [Total Planned COP $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual COP $]) AS [Actual COP $]

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK

WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 1 AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag] IN ('N', 'P', 'Y', 'Z')

GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship CS],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number]
GO
/****** Object:  View [dbo].[KC Datamart Validator 2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KC Datamart Validator 2] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship CS]) AS [Plan Ship CS],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship CS]) AS [Actual Ship CS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned COP $]) AS [Total Planned COP $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual COP $]) AS [Actual COP $],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]

GO
/****** Object:  View [dbo].[KC Datamart Validator IBP Mat]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KC Datamart Validator IBP Mat] AS 
SELECT
z.CUSTOMER,
b.PT_NAME,
z.[Calendar Week],
z.[Mixed Pallet Flag],
z.MATERIAL,
d.DESCRIPTION AS [Mat Desc],
z.[Mixed Pallet Material],
c.DESCRIPTION AS [Mx Mat Desc],
Sum(z.[LE Ship $]) AS [LE Ship $],
Sum(z.[LE Cases]) AS [LE Cases],
Sum(z.[LE KMF $]) AS [LE KMF $],
Sum(z.[LE COP $]) AS [LE COP $],
a.[Period Number],
a.[YEAR]

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT z

LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT a       ON z.[Calendar Week] = a.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR b ON z.CUSTOMER = b.PT#
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT c   ON z.[Mixed Pallet Material] = c.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT d   ON z.MATERIAL = d.MIXED_PAL_MATERIAL

WHERE left(z.CUSTOMER,1) = 3
--a.[YEAR] = 2016 AND
--a.[Period Number] = 9-- OR a.[Period Number] = 10)
GROUP BY
z.CUSTOMER,
b.PT_NAME,
z.[Calendar Week],
a.[Period Number],
z.[Mixed Pallet Material],
c.DESCRIPTION,
z.[Mixed Pallet Flag],
z.MATERIAL,
d.DESCRIPTION,
a.[YEAR],
a.[Period Number],
a.[YEAR]
GO
/****** Object:  View [dbo].[KC Datamart Validator IBP Mat Summ]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KC Datamart Validator IBP Mat Summ] AS 
SELECT
z.CUSTOMER,
b.PT_NAME,
z.[Mixed Pallet Flag],
a.[Period Number],
a.[YEAR],
Sum(z.[LE Ship $]) AS [LE Ship $],
Sum(z.[LE Cases]) AS [LE Cases],
Sum(z.[LE KMF $]) AS [LE KMF $],
Sum(z.[LE COP $]) AS [LE COP $]

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT z

LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT a       ON z.[Calendar Week] = a.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR b ON z.CUSTOMER = b.PT#
WHERE
a.[YEAR] >= 2015 AND LEFT(z.CUSTOMER,1) = 3
GROUP BY
z.CUSTOMER,
b.PT_NAME,
z.[Mixed Pallet Flag],
a.[Period Number],
a.[YEAR]
GO
/****** Object:  View [dbo].[KCtest_Travis_View]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KCtest_Travis_View] AS 
SELECT
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_STATUS,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Mat Desc]

FROM
dbo.KLG_TPE_PROMOTION_DIM_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_FACT_TGT ON dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID = dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID]
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
WHERE
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM >= '06/20/2015' AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO <= '03/20/2016'

GO
/****** Object:  View [dbo].[KLG_AMPS_GMFINREV_VIEW]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_AMPS_GMFINREV_VIEW] AS 
SELECT
dbo.KLG_NIEL_AMPS_US_SRC.[All Markets],
dbo.product_xref.[Nielsen Name],
dbo.product_xref.Mask,
dbo.product_xref.Category,
dbo.product_xref.[Order],
dbo.product_xref.[Level],
dbo.product_xref.Agg,
dbo.product_xref.[Level Name],
dbo.product_xref.Brand,
dbo.product_xref.Corp,
dbo.product_xref.Segment,
dbo.product_xref.[Sub Segment],
dbo.product_xref.[BW Category],
dbo.product_xref.[BW BU],
dbo.product_xref.[BW Number],
dbo.product_xref.[BW Name],
dbo.KLG_NIEL_AMPS_US_SRC.Dol,
dbo.KLG_NIEL_AMPS_US_SRC.[Dol % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[Base $ % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[Dol CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Incr $],
dbo.KLG_NIEL_AMPS_US_SRC.[Incr $ YA],
dbo.KLG_NIEL_AMPS_US_SRC.[EQ % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[Units % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[% Subsidized Units],
dbo.KLG_NIEL_AMPS_US_SRC.[% Subsidized Units CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Dol Shr - Prompt],
dbo.KLG_NIEL_AMPS_US_SRC.[Dol Shr CYA - Prompt],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Promo $ % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[No Promo $ % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[% $ No Promo],
dbo.KLG_NIEL_AMPS_US_SRC.[Avg EQ Price CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Avg EQ Price],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Promo Unit Price % Disc],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Promo Unit Price % Disc CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Base Unit Price YA],
dbo.KLG_NIEL_AMPS_US_SRC.[Base Unit Price],
dbo.KLG_NIEL_AMPS_US_SRC.[Base Unit Price CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Avg Unit Price],
dbo.KLG_NIEL_AMPS_US_SRC.[Avg Unit Price CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Qual Unit Price],
dbo.KLG_NIEL_AMPS_US_SRC.[Qual Unit Price CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Disp # Disp],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Disp # Disp CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Dol / $MM ACV / Item],
dbo.KLG_NIEL_AMPS_US_SRC.[Dol / $MM ACV / Item CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[%ACV],
dbo.KLG_NIEL_AMPS_US_SRC.[%ACV CYA],
dbo.KLG_NIEL_AMPS_US_SRC.TDP,
dbo.KLG_NIEL_AMPS_US_SRC.[TDP % Chg YA],
dbo.KLG_NIEL_AMPS_US_SRC.[Avg # of Items],
dbo.KLG_NIEL_AMPS_US_SRC.[Avg # of Items CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Promo Units % Lift],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Promo Units % Lift CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[% Units Any Promo],
dbo.KLG_NIEL_AMPS_US_SRC.[% Units Any Promo CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Disp %ACV],
dbo.KLG_NIEL_AMPS_US_SRC.[Any Disp %ACV CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Qual CWW],
dbo.KLG_NIEL_AMPS_US_SRC.[Qual CWW CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[Feat & Disp %ACV / Any Feat %ACV],
dbo.KLG_NIEL_AMPS_US_SRC.[Feat & Disp %ACV / Any Feat %ACV CYA],
dbo.KLG_NIEL_AMPS_US_SRC.[All Periods]

'INTO TPE_DS_User.dbo.KLG_AMPS_GM_FIN'

FROM
dbo.KLG_NIEL_AMPS_US_SRC
INNER JOIN dbo.product_xref ON dbo.product_xref.[All Products] = dbo.KLG_NIEL_AMPS_US_SRC.[All Products]

GO
/****** Object:  View [dbo].[KLG_CAN_NSV_KILO]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_CAN_NSV_KILO] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases]) AS [LE Cases],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Kilos]) AS [LE Kilos],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE Ship $],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SEGMENT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Market Segment],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4

FROM
	dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
	LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
	LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
	LEFT JOIN dbo.KLG_TPE_MAT_CLASS_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL
	LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#
WHERE
	dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] >= 2015 AND
	dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A = 'CANADA L3'
GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SEGMENT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Market Segment],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4


GO
/****** Object:  View [dbo].[KLG_CLF_BIAS_REPORTING]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_CLF_BIAS_REPORTING] AS 
SELECT *

FROM
TPE_DS_Target.dbo.KLG_CLF_CON_TPM_SNAPSHOTS

UNION ALL
SELECT *
FROM
TPE_DS_User.dbo.KLG_CLF_TPM_CON_ACTUALS
GO
/****** Object:  View [dbo].[KLG_CON_TPM_BIAS_2]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_CON_TPM_BIAS_2] AS 
SELECT
dbo.KLG_TPE_CON_TPM_LATEST_VER.[YEAR],
dbo.KLG_TPE_CON_TPM_LATEST_VER.PERIOD,
dbo.KLG_TPE_CON_TPM_LATEST_VER.CUSTOMER,
Sum(dbo.KLG_TPE_CON_TPM_LATEST_VER.CONSENSUS_GSV) AS [Consensus GSV],
Sum(dbo.KLG_TPE_CON_TPM_LATEST_VER.[Plan Ship $]) AS [Plan Ship GSV],
Sum(dbo.KLG_TPE_CON_TPM_LATEST_VER.CONSENSUS_GSV_PREV) AS [Prev Consensus GSV],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.TIER AS Tier,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT AS [Plan To #],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME AS [Plan To],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4

--INTO
--KLG_CLF_CON_TPM


FROM
dbo.KLG_TPE_CON_TPM_LATEST_VER
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_CON_TPM_LATEST_VER.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_CON_TPM_LATEST_VER.CUSTOMER = dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT AND dbo.KLG_TPE_CON_TPM_LATEST_VER.CUSTOMER = dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_CON_TPM_LATEST_VER.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_CON_TPM_LATEST_VER.CUSTOMER = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
GROUP BY
dbo.KLG_TPE_CON_TPM_LATEST_VER.CUSTOMER,
dbo.KLG_TPE_CON_TPM_LATEST_VER.PERIOD,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.TIER,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_CON_TPM_LATEST_VER.[YEAR],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4
GO
/****** Object:  View [dbo].[KLG_Kroger_Shipments]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_Kroger_Shipments] AS 
SELECT
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS [Category Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS Type,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS Brand,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual COP $]) AS [Acutal COP $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Units]) AS [Plan Base Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Units]) AS [Plan Incr Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship $]) AS [Plan Incr Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base $]) AS [Plan Base $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship Units]) AS [Actual Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned KMF $]) AS [Total Planned KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned COP $]) AS [Total Planned COP $],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2014 AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A Not Like 'CANADA L3' AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'Specialty' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT
GO
/****** Object:  View [dbo].[KLG_ListPrice_Weight]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_ListPrice_Weight] AS 
SELECT
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY,
dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Standard Price],
dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Calendar Year],
dbo.KLG_TPE_MATERIAL_DIM_TGT.[Net Weight],
dbo.KLG_TPE_MATERIAL_DIM_TGT.STANDARD_PRICE

FROM
dbo.KLG_TPE_MAT_STD_PRICE_TGT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MAT_STD_PRICE_TGT.[MOD Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
WHERE
dbo.KLG_TPE_MAT_STD_PRICE_TGT.CURRENCY = 'USD' AND
dbo.KLG_TPE_MAT_STD_PRICE_TGT.[Calendar Year] = '2017'

GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_MAT_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_MAT_MT] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Base Units],
sum(IIF(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
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
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
/*Into TPE_DS_User.dbo.KLG_PROMO_MAT
Drop Table TPE_DS_User.dbo.KLG_PROMO_MAT*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
LEFT JOIN TPE_DS_User.dbo.TENTPOLE_MAPPING ON dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC = TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_BW_Desc
WHERE
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] in (2016,2017,2018) AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted') AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME = 'Meijer' AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC = 'Short Term'

GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_MAT_OTC_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_MAT_OTC_MT] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Shipment CS]) AS [Planned Ship Cases],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 As [Brand],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 As [Type],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION] As [Material Description],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
convert(date,getdate()) AS [Update Date]
--Into TPE_DS_User.dbo.KLG_PROMO_MAT_OTC

/*Into TPE_DS_User.dbo.KLG_PROMO_MAT_OTC
Drop Table TPE_DS_User.dbo.KLG_PROMO_MAT_OTC*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
LEFT JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2018 AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] > 7 AND 
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] < 11  AND
-- dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = '301354' OR
-- dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = '300994' AND
-- dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT in ('Morning Foods', 'Snacks', 'Kashi', 'Frozen') AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted')AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC in ('Short Term', 'Short Term Parent')

GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION]
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_MAT_PROMOTRACK_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_MAT_PROMOTRACK_MT] AS 

SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
-- sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
-- sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
-- sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material]

/*Into TPE_DS_User.dbo.KLG_PROMO_MAT_WEEKLY_TRACKING
Drop Table TPE_DS_User.dbo.KLG_PROMO_MAT_WEEKLY_TRACKING*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
LEFT JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted') AND
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] in ('301354', '300855')

-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017
GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material]
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_MAT_WEEKLY_TRACKING]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_MAT_WEEKLY_TRACKING] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Base Units],
sum(IIF(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
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
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material]

/*Into TPE_DS_User.dbo.KLG_PROMO_TYPE
Drop Table TPE_DS_User.dbo.KLG_PROMO_TYPE*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
LEFT JOIN TPE_DS_User.dbo.TENTPOLE_MAPPING ON dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC = TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_BW_Desc
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] in (2017) AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted') AND
-- dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Morning Foods' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME in ('Meijer')

GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material]
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_SANDBOX_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_SANDBOX_MT] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY,
dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION as Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H6,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT6,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MATERIAL_GRP,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MATERIAL_DIM_TGT.UPC_CODE,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.TIER

/* Drop Table TPE_DS_User.dbo.KLG_PROMO_MAT
INTO TPE_DS_User.dbo.KLG_PROMO_MAT*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT# = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_SNACKS_KROG_2016]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_SNACKS_KROG_2016] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $],
dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY,
dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION as Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H6,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT6,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MATERIAL_GRP,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MATERIAL_DIM_TGT.UPC_CODE,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.TIER

/* Drop Table TPE_DS_User.dbo.KLG_PROMO_MAT
INTO TPE_DS_User.dbo.KLG_PROMO_KROGER_SNACKS*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT# = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2016 AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B = 'KROGER' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Snacks'

GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_TYPE_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_TYPE_MT] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Non-Trade]) AS [LE Total Non-Trade],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved CSM Trade $]) AS [Reserved CSM Trade $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Modeled Promo $]) AS [Total Modeled Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.DISPLAY) AS DISPLAY,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.FEATURE) AS FEATURE,
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[F&D]) AS [F&D],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg TPQ]) AS [Sugg TPQ],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Sugg Incr]) AS [Sugg Incr],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Planned Shelf Price]) AS [SVP: Planned Shelf Price],
Max(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incrementality %]) AS [Planned Incrementality %],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Pounds]) as [Planned Promo LB],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Kilos]) as [Planned Promo KG],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Incremental Units],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) as [Planned Promo Base Units],
sum(IIF(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
Cast(Convert(varchar,cast(dbo.KLG_TPE_PROMOTION_DIM_TGT.[PLANNED_DATE_FROM]as date),112) As Int) As [Promo_ Start_Value],
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
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
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc

/*Into TPE_DS_User.dbo.KLG_PROMO_TYPE
Drop Table TPE_DS_User.dbo.KLG_PROMO_TYPE*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week] AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[CUSTOMER]
LEFT JOIN TPE_DS_User.dbo.TENTPOLE_MAPPING ON dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC = TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_BW_Desc
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] in (2019,2017,2018) AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC not in ('Cancelled', 'Draft', 'Deleted')
-- dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017
GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
TPE_DS_User.dbo.TENTPOLE_MAPPING.Tent_Pole_Desc
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_TYPE_SNACKS_TRANSITION_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_TYPE_SNACKS_TRANSITION_MT] AS 
SELECT
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Retailer Promotion Sales]) AS [TPM: Planned Retailer Promotion Sales],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned TPQ Eaches]) AS [TPM: Planned TPQ Eaches],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Gross Sales $]) AS [Gross Sales $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Ship $]) AS [Planned Ship $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Incremental Volume $]) AS [Planned Incremental Volume $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Planned Promo COP $]) AS [Planned Promo COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[LE Total Fixed KMF $]) AS [LE Total Fixed KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo $]) AS [Total Planned Promo $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Reserved Total KMF $]) AS [Reserved Total KMF $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Total Planned Promo Units]) AS [Total Planned Promo Units],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Incremental COP $]) AS [Plan Incremental COP $],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan Activity GSV]) AS [Plan Activity GSV],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend]) AS [EDLP Spend],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[TPM: Planned Promo Dollars @ Full Price]) AS [TPM: Planned Promo Dollars @ Full Price],
Sum(dbo.KLG_TPE_PROMOTION_FACT_TGT.[SVP: Suggested Base]) AS [SVP: Suggested Base],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) AS [Planned Promo Incremental Units],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches] - dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]) AS [Planned Promo Base Units],
-- Sum(IIF(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches]=0,0,(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Total Planned Incremental Eaches]/dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Planned TPQ Eaches])* dbo.KLG_TPE_PROMOTION_FACT_TGT.[EDLP Spend])) AS [Incremental EDLP SPEND],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Est Ship Vol]) AS [Total Planned Shipment CS],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Plan Ship Eaches]) AS [Total Planned Shipment Eaches],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Promo Scan Rate Total]) AS [Promo Scan Rate Total],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Off-Invoice Rate Total]) AS [Off-Invoice Rate Total],
Sum(dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[ATPM - Bill-back Rate Total]) AS [Bill-back Rate Total],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION AS Promo_Desc,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION] As [Material Description],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
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
dbo.KLG_CANADA_CAT_MAP.[Ca Category]

/*Into TPE_DS_User.dbo.KLG_PROMO_SNACK_TRANSITION
Drop Table TPE_DS_User.dbo.KLG_PROMO_TYPE*/

FROM
dbo.KLG_TPE_PROMOTION_FACT_TGT
LEFT JOIN dbo.KLG_TPE_PROMOTION_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_ID
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO
RIGHT JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To] = TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = dbo.KLG_CANADA_CAT_MAP.Category
LEFT JOIN dbo.KLG_TPE_PROM_ZM_TPM60_TGT ON dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.PROMOTIONS AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.MATERIAL AND dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week] = dbo.KLG_TPE_PROM_ZM_TPM60_TGT.[calendar week]
WHERE
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B = 'Eastern Region' AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC NOT IN ('Cancelled', 'Draft', 'Deleted') AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Snacks' AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] > 5
GROUP BY
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Promotion ID],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Calender Week],
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Plan To],
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_PROMOTION_DIM_TGT.ACTIVITY_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SHIP_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PROMOTION_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.SCANNER_APPS_ID,
dbo.KLG_TPE_PROMOTION_DIM_TGT.EMPLOYEE_RESPONSIBLE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CHANGED_BY,
dbo.KLG_TPE_PROMOTION_DIM_TGT.LAST_CHANGED_ON,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PERSON_NAME,
dbo.KLG_TPE_PROMOTION_DIM_TGT.DATE_CREATED,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_TYPE,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CAMPAIGN_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_FROM,
dbo.KLG_TPE_PROMOTION_DIM_TGT.PLANNED_DATE_TO,
dbo.KLG_TPE_PROMOTION_DIM_TGT.KEY_EVENT_DESC,
dbo.KLG_TPE_PROMOTION_DIM_TGT.CURRENCY_KEY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.QUARTER,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Period],
dbo.KLG_TPE_TIME_DIM_TGT.[Niel Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Pay Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.AKV,
dbo.KLG_TPE_PROMOTION_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_MATERIAL_DIM_TGT.[DESCRIPTION]
GO
/****** Object:  View [dbo].[KLG_PROMO_FACT_TYPE_TENT_POLE_TRACKING]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_FACT_TYPE_TENT_POLE_TRACKING] AS 
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
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO in ('300350','302049','301735','302050','301736','300837','300231','300182','300672','301117','302054','300475','300663','301179','300150','300317','301354','300850','300433','301030','300671','301086','301869','300049','300994','301146','300708','300696','300761','300719')
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
/****** Object:  View [dbo].[KLG_PT_ITEM_FACT_TROUBLESHOOT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PT_ITEM_FACT_TROUBLESHOOT] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Mix_Pal_Mat],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Mat Desc],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TPE_TIME_DIM_TGT.[WK] AS Wk_Num,
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units]


/*Into TPE_DS_User.dbo.KLG_PLANTO_MAT_TROUBLESHOOT
Drop Table TPE_DS_User.dbo.KLG_PLANTO_MAT_TROUBLESHOOT*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
RIGHT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
WHERE
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] = 11 AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Morning Foods' AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = 'Cold Cereal' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PlanTo = '300433' AND
-- dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Units] > 0 And
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_TIME_DIM_TGT.[WK]
GO
/****** Object:  View [dbo].[KLG_PT_MAT_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PT_MAT_MT] AS 
SELECT
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.PlanTo AS [PT_N_TEXT],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.PT_NAME AS [PT_NAME],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_A AS [Level_A],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_B AS [Level_B],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_C AS [Level_C],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_D AS [Level_D],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_E AS [Level_E],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Tier_Name AS [Tier_Name],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name], 
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Desc],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
-- Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
-- Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Units]) AS [Plan Incr Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases]) AS [LE Ship Cases],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Cases]) AS [Plan Incr Ship Cases]
-- Into TPE_DS_User.dbo.KLG_PLANTO_MAT_ACT
/*Into TPE_DS_User.dbo.KLG_PLANTO_INREMENTAL_SNACKTRANS
Drop Table TPE_DS_User.dbo.KLG_PLANTO_MAT_ACT*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.PLANTO_HIERARCHY_BU ON TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
RIGHT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
WHERE
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] in (1,2,3,4,5,6,7)
-- dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Snacks' AND
-- dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Units] > 0 And
-- TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_A NOT LIKE 'CANADA L3' AND
-- TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.PlanTo,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.PT_NAME,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_A,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_B,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_C,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_D,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Level_E,
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Tier_Name,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.PLANTO_HIERARCHY_BU.Tier_Name,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
/****** Object:  View [dbo].[KLG_SCIM_WEEK__REG_FACT_USR_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_SCIM_WEEK__REG_FACT_USR_MT] AS 
SELECT
Concat(TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,dbo.KLG_TPE_TIME_DIM_TGT.[BW Week]) AS Combo,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS [Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base LBS]) AS [Plan Base LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr LBS]) AS [Plan INCR LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Ret $'s]) AS [Plan Base Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ret $'s]) AS [Plan Incr Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship LBS]) AS [Plan Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $]

/*Drop Table TPE_DS_User.dbo.KLG_SCIM_WEEK_REGION_FACT_USR
Into TPE_DS_User.dbo.KLG_SCIM_WEEK_REGION_FACT_USR*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2019 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2014 AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'CANADA L3' And
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'Specialty'
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending]
GO
/****** Object:  View [dbo].[KLG_SCIM_WEEK_CONSENSUS_USR_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_SCIM_WEEK_CONSENSUS_USR_MT] AS 
SELECT
Concat(TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK) AS Combo,
KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,
Sum(dbo.KLG_TPE_CONSENSUS_FACT_TGT.CONSENSUS_GSV) AS Consensus_GSV,
Sum(dbo.KLG_TPE_CONSENSUS_FACT_TGT.CONSENSUS_LBS) AS Consensus_LB
/*Drop Table TPE_DS_User.dbo.KLG_TPE_SCIM_WEEK_CONSENSUS_USR
Into TPE_DS_User.dbo.KLG_TPE_SCIM_WEEK_CONSENSUS_USR*/
FROM
dbo.KLG_TPE_CONSENSUS_FACT_TGT
LEFT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_CONSENSUS_FACT_TGT.CUSTOMER = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT AND dbo.KLG_TPE_CONSENSUS_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_CONSENSUS_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK = dbo.KLG_TPE_CONSENSUS_FACT_TGT.CALENDER_WEEK
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
WHERE
dbo.KLG_TPE_CONSENSUS_FACT_TGT.SNAPSHOT_WEEK = '18/2017' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'CANADA L3' And
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'Specialty'

GROUP BY
KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class
GO
/****** Object:  View [dbo].[KLG_SCIM_WEEK_CORP_FACT_USR_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_SCIM_WEEK_CORP_FACT_USR_MT] AS 

SELECT
Concat(TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,dbo.KLG_TPE_TIME_DIM_TGT.[BW Week]) AS Combo,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS [Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base LBS]) AS [Plan Base LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr LBS]) AS [Plan INCR LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Ret $'s]) AS [Plan Base Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ret $'s]) AS [Plan Incr Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship LBS]) AS [Plan Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $]


/*Drop Table TPE_DS_User.dbo.KLG_TPE_SCIM_WEEK_FACT_USR
Into TPE_DS_User.dbo.KLG_TPE_SCIM_WEEK_FACT_USR*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2019 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2014 AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'CANADA L3' And
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'Specialty'
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number]
GO
/****** Object:  View [dbo].[KLG_SCIM_WEEK_CORP_FACT_USR_MT_copy]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_SCIM_WEEK_CORP_FACT_USR_MT_copy] AS 
SELECT
Concat(TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,dbo.KLG_TPE_TIME_DIM_TGT.[BW Week]) AS Combo,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS [Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base LBS]) AS [Plan Base LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr LBS]) AS [Plan INCR LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Ret $'s]) AS [Plan Base Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ret $'s]) AS [Plan Incr Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship LBS]) AS [Plan Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $]


/*Drop Table TPE_DS_User.dbo.KLG_TPE_SCIM_WEEK_FACT_USR
Into TPE_DS_User.dbo.KLG_TPE_SCIM_WEEK_FACT_USR*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
Right JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PLAN_TO AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU=dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2019 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2014 AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'CANADA L3' And
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A Not Like 'Specialty'
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_TIME_DIM_TGT.[Week Ending],
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
-- TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number]

GO
/****** Object:  View [dbo].[KLG_SCIM_WEEK_REGION_FACT_USR]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_SCIM_WEEK_REGION_FACT_USR] AS 
SELECT
Concat(dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category],dbo.KLG_TPE_TIME_DIM_TGT.[BW Week]) AS Combo,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base LBS]) AS [Plan Base LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr LBS]) AS [Plan INCR LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base Ret $'s]) AS [Plan Base Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ret $'s]) AS [Plan Incr Ret $'s],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship LBS]) AS [Plan Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS [Actual Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $]

/*Into TPE_DS_User.dbo.KLG_SCIM_WEEK_REGION_FACT_USR
Drop TPE_DS_User.dbo.KLG_SCIM_WEEK_REGION_FACT_USR*/


FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_MAT_CLASS_DIM_TGT ON dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2018 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2013 AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A Not Like 'CANADA L3' And
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A Not Like 'Secialty'
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
GO
/****** Object:  View [dbo].[KLG_TPM_INSIGHTS_PT_MATERIAL_Snacks_Transform]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TPM_INSIGHTS_PT_MATERIAL_Snacks_Transform] AS 
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
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number] AS Quarter,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
dbo.KLG_TYPE_TOSIZE.[Size],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
-- Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
-- Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Units]) AS [Plan Incr Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Cases]) AS [LE Ship Cases],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Cases]) AS [Plan Incr Ship Cases]

/*Into TPE_DS_User.dbo.KLG_PLANTO_INREMENTAL_SNACKTRANS
Drop Table TPE_DS_User.dbo.KLG_PLANTO_INREMENTAL_SNACKTRANS*/

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY ON TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO= dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.BU= dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
RIGHT JOIN dbo.KLG_TYPE_TOSIZE ON dbo.KLG_TYPE_TOSIZE.Type_ID = dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
WHERE
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[CUSTOMER] + dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Material]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] <> '300231241007056906/2016' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2017 AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT = 'Snacks' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr Ship Units] > 0 And
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'CANADA L3' AND
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A NOT LIKE 'Specialty'

GROUP BY
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PLANTO,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_B,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.PT_NAME,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_A,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_C,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_D,
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Level_E,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.ALL_IN_Flag,
dbo.KLG_TPE_TIME_DIM_TGT.[Quarter Number],
dbo.KLG_TYPE_TOSIZE.[Size],
TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY.Tier_Name
GO
/****** Object:  View [dbo].[KLG_Trade_Review_Extract]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_Trade_Review_Extract] AS 
SELECT
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS [Category],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT AS [PT# Text],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME AS [PT Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS GSV,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual COP $]) AS COP,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS KMF,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS]


FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
RIGHT JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.MATERIAL
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2020 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2015 AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'CANADA L3' AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'Specialty' AND
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE IS NOT NULL
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY
GO
/****** Object:  View [dbo].[KLG_Trade_Review_Extract_Canada]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_Trade_Review_Extract_Canada] AS 
SELECT
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT AS [PT# Text],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME AS [PT Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL AS [Material ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION AS [Material Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS GSV,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual COP $]) AS COP,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS KMF,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) * .453592 AS [Actual Ship KG],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Market Segment],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
LEFT JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
LEFT JOIN dbo.KLG_TPE_MAT_CLASS_DIM_TGT ON dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
LEFT JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL

WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2014 AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A LIKE 'CANADA L3'
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Market Segment],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4
GO
/****** Object:  View [dbo].[KLG_TRADE_REVIEW_PT_TYPE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TRADE_REVIEW_PT_TYPE] AS 
SELECT
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category] AS [Category Name],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT AS [PT# Text],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME AS [PT Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS Type,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS Brand,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS GSV,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual COP $]) AS COP,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS KMF,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship LBS]) AS [Actual Ship LBS],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship Units]) AS [Ship Units]


FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_MAT_CLASS_DIM_TGT ON dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL

WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2016 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2013 AND
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] Not Like '53/2014' AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'CANADA L3' AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'Specialty' AND
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category] = 'Cold Cereal' And
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]+ dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $] <> 0

GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
-- dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4
GO
/****** Object:  View [dbo].[KLG_TYPE_FACT_MT]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TYPE_FACT_MT] AS 
SELECT
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.LIFELINE,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY AS Category,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY AS [Sub Category],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4 AS [Brand ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4 AS [Brand Name],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5 AS [Type ID],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5 AS [Type Name],
-- dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
--dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number] AS Period,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship $]) AS [LE GSV],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE COP $]) AS [LE COP],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS [LE KMF $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship LBS]) AS [LE Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE Ship Units]) AS [LE Ship Units],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS [Plan Ship $],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base LBS]) AS [Plan Scan Base LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr LBS]) AS [Plan Scan Incr LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Incr LBS]+dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Base LBS]) AS [Plan Scan LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship LBS]) AS [Plan Ship LB],
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Total Planned COP $]) AS [Total Planned COP $]


FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] < 2017 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] > 2014 AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'CANADA L3' AND
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A NOT LIKE 'Specialty'
GROUP BY
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.LIFELINE,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Year],
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number]
-- dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL,
-- dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION
GO
/****** Object:  View [dbo].[KLG_TYPE_TO_SIZE]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TYPE_TO_SIZE] AS 
SELECT
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.TYPE,
Count(dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL) AS [Count]


FROM
dbo.KLG_TPE_MATERIAL_DIM_TGT
INNER JOIN dbo.KLG_TPE_MAT_CLASS_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL
GROUP BY
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.TYPE,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H5
GO
/****** Object:  View [dbo].[Ledger_Output_Day_10]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ledger_Output_Day_10] AS 
SELECT
dbo.KLG_FIN_LEDGER_FACT.Channel,
dbo.KLG_FIN_LEDGER_FACT.CC,
dbo.KLG_FIN_LEDGER_FACT.Data_Source,
dbo.Ledger_ProfitCenter_Mapping.[Brand Desc],
dbo.Ledger_ProfitCenter_Mapping.Business_Unit,
dbo.KLG_FIN_LEDGER_FACT.Version,
dbo.Ledger_Measure_Mapping.[Reported Line Item],
dbo.Ledger_Measure_Mapping.[Group],
dbo.Ledger_Measure_Mapping.[Sub Group],
dbo.Ledger_Measure_Mapping.[Reported Line Item Label],
dbo.Ledger_Measure_Mapping.Child_1,
Sum(dbo.KLG_FIN_LEDGER_FACT.Amount) AS Amount,
Sum(dbo.KLG_FIN_LEDGER_FACT.Amount)* -1 AS Neg_Amount,
dbo.KLG_TPE_TIME_PERIODS_TGT.[Period Number],
dbo.KLG_TPE_TIME_PERIODS_TGT.PERIOD,
dbo.KLG_TPE_TIME_PERIODS_TGT.[Period Year],
dbo.KLG_TPE_TIME_PERIODS_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_PERIODS_TGT.QUARTER,
dbo.KLG_TPE_TIME_PERIODS_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_PERIODS_TGT.[YEAR],
dbo.KLG_TPE_TIME_PERIODS_TGT.[Week Count],
dbo.Ledger_Measure_Mapping.OP_Sum,
dbo.Ledger_Measure_Mapping.Gross_Profit_Sum,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.Ledger_ProfitCenter_Mapping.Category

FROM
dbo.KLG_FIN_LEDGER_FACT
INNER JOIN dbo.Ledger_Measure_Mapping ON dbo.Ledger_Measure_Mapping.[Base ID] = dbo.KLG_FIN_LEDGER_FACT.Summary_Account
INNER JOIN dbo.Ledger_ProfitCenter_Mapping ON dbo.Ledger_ProfitCenter_Mapping.Brand = dbo.KLG_FIN_LEDGER_FACT.Profit_Center
INNER JOIN dbo.KLG_TPE_TIME_PERIODS_TGT ON dbo.KLG_TPE_TIME_PERIODS_TGT.[YEAR] = dbo.KLG_FIN_LEDGER_FACT.[Year] AND dbo.KLG_TPE_TIME_PERIODS_TGT.[B4P Period] = dbo.KLG_FIN_LEDGER_FACT.Period
RIGHT OUTER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_CANADA_CAT_MAP.Category = dbo.Ledger_ProfitCenter_Mapping.Category
GROUP BY
dbo.KLG_FIN_LEDGER_FACT.Channel,
dbo.KLG_FIN_LEDGER_FACT.CC,
dbo.KLG_FIN_LEDGER_FACT.Data_Source,
dbo.Ledger_Measure_Mapping.[Reported Line Item],
dbo.KLG_FIN_LEDGER_FACT.[Year],
dbo.KLG_FIN_LEDGER_FACT.Period,
dbo.Ledger_ProfitCenter_Mapping.[Brand Desc],
dbo.Ledger_ProfitCenter_Mapping.Business_Unit,
dbo.KLG_FIN_LEDGER_FACT.Version,
dbo.Ledger_Measure_Mapping.[Group],
dbo.Ledger_Measure_Mapping.[Sub Group],
dbo.Ledger_Measure_Mapping.[Reported Line Item Label],
dbo.Ledger_Measure_Mapping.Child_1,
dbo.KLG_TPE_TIME_PERIODS_TGT.[Period Number],
dbo.KLG_TPE_TIME_PERIODS_TGT.PERIOD,
dbo.KLG_TPE_TIME_PERIODS_TGT.[Period Year],
dbo.KLG_TPE_TIME_PERIODS_TGT.[Quarter Number],
dbo.KLG_TPE_TIME_PERIODS_TGT.QUARTER,
dbo.KLG_TPE_TIME_PERIODS_TGT.[Quarter Year],
dbo.KLG_TPE_TIME_PERIODS_TGT.[YEAR],
dbo.KLG_TPE_TIME_PERIODS_TGT.[Week Count],
dbo.Ledger_Measure_Mapping.OP_Sum,
dbo.Ledger_Measure_Mapping.Gross_Profit_Sum,
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.Ledger_ProfitCenter_Mapping.Category
GO
/****** Object:  View [dbo].[Profit Center Mapping]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Profit Center Mapping] AS 
SELECT
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT AS [Business Unit],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category] AS [Category Name],
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) AS GSV,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PROFIT_CENTER,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week]
INNER JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER AND dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_MAT_CLASS_DIM_TGT ON dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material]
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL = dbo.KLG_TPE_MAT_CLASS_DIM_TGT.MATERIAL
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] <= 2016 AND
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] >= 2015 AND
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week] NOT LIKE '53/2014' AND
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $] <> 0
GROUP BY
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR],
-- dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_MAT_CLASS_DIM_TGT.[Alternative Category],
-- dbo.KLG_TPE_TIME_DIM_TGT.[PERIOD Number],
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
-- dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_Text,
-- dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
-- dbo.KLG_TPE_MATERIAL_DIM_TGT.DESCRIPTION,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.PROFIT_CENTER,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_H4,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.COMPANY_CODE


GO
/****** Object:  View [dbo].[PT_ITEM_WEEK_COMBO]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PT_ITEM_WEEK_COMBO] AS 
SELECT
dbo.KLG_TPE_TIME_DIM_TGT.[BW Week],
dbo.KLG_TPE_TIME_DIM_TGT.[Week Starting],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT,
dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL

FROM
dbo.KLG_TPE_TIME_DIM_TGT ,
dbo.KLG_TPE_MATERIAL_DIM_TGT ,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR
WHERE
dbo.KLG_TPE_TIME_DIM_TGT.[YEAR] = 2015 AND
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY = 'COLD CEREAL'

GO
/****** Object:  View [dbo].[TPM_Insights_PL]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TPM_Insights_PL] AS 
SELECT
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.LIFELINE,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Cons_Class,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.TIER,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Nielsen_Mkt,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Pricing_Strategy,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.ALT_Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.CHANNEL,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.DP#,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.DP_Text,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.DP_Group,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.AKV,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Niel_ACV,
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[IBP GSV ORIG],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Business Unit],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Alternate Category],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Posting Period],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Posting Year],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[CRM Latest Estimate Gross Sales (GSV)],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.CURRENCY,
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[IBP GSV ADJ],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[IBP KMF ORIG],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[IBP KMF ADJ],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[BUD GSV ORIG],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[BUD GSV ADJ],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[BUD BASE KMF],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[BUD KMF ADJ],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[SE GSV ORIG],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[SE GSV ADJ],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[SE KMF ORIG],
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[SE KMF ADJ],
dbo.KLG_CANADA_CAT_MAP.[Ca Category],
dbo.KLG_TPE_TIME_PERIODS_TGT.[Quarter Number]

FROM
dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT
INNER JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Plan To]
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Alternate Category]
INNER JOIN dbo.KLG_TPE_TIME_PERIODS_TGT ON dbo.KLG_TPE_TIME_PERIODS_TGT.[YEAR] = dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Posting Year] AND dbo.KLG_TPE_TIME_PERIODS_TGT.[Period Number] = dbo.KLG_TPE_PLAN_TO_CAT_FACT_TGT.[Posting Period]

GO
/****** Object:  View [dbo].[UVW_RGM_BU_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_RGM_BU_12P]
AS
SELECT     BUSINESS_UNIT AS BU, NSV_ACTUAL AS NSV_ACTL, [NSV_%_CHG_YA] AS NSV_PCT_CHG_YR_AGO, NSV_USD_CHG_YA AS NSV_USD_CHG_YR_AGO, 
                      NSV_LB_ACTUAL AS NSV_LBS_ACTL, NSV_LB_ACTUAL_V_YA AS NSV_LBS_ACTL_VS_YR_AGO, [SCM_%_ACTUAL] AS SCRCARD_MGMT_PCT_ACTL, 
                      [SCM_%_V_YA] AS SCRCARD_MGMT_PCT_VS_YA, ACTUAL_NSV AS ACTL_NSV, ACTUAL_LBS AS ACTL_LBS, ACTUAL_SCM AS ACTL_SCRCARD_MGMT, 
                      ACTUAL_NSV_12P_YA AS ACTL_NSV_12P_YR_AGO, ACTUAL_LBS_12P_YA AS ACTL_LBS_12P_YR_AGO, 
                      ACTUAL_SCM_12P_YA AS ACTL_SCRCARD_MGMT_12P_YR_AGO
FROM         STG.RGM_BU_12P


GO
/****** Object:  View [dbo].[UVW_RGM_BU_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_RGM_BU_YTD]
AS
SELECT     STG.RGM_BU_YTD_IBP.BUSINESS_UNIT AS BU, STG.RGM_BU_YTD.NSV_ACTUAL AS NSV_ACTL, STG.RGM_BU_YTD.[NSV_%_CHG_YA] AS NSV_PCT_CHG_YR_AGO,
                       STG.RGM_BU_YTD.NSV_USD_CHG_YA AS NSV_USD_CHG_YR_AGO, STG.RGM_BU_YTD.NSV_V_BD AS NSV_VS_BUD, 
                      STG.RGM_BU_YTD.NSV_LB_ACTUAL AS NSV_LBS_ACTL, STG.RGM_BU_YTD.NSV_LB_ACTUAL_V_YA AS NSV_LBS_ACTL_VS_YR_AGO, 
                      STG.RGM_BU_YTD.[SCM_%_ACTUAL] AS SCRCARD_MGMT_PCT_ACTL, STG.RGM_BU_YTD.[SCM_%_V_YA] AS SCRCARD_MGMT_PCT_YR_AGO, 
                      STG.RGM_BU_YTD.ACTUAL_NSV AS ACTL_NSV, STG.RGM_BU_YTD.ACTUAL_LBS AS ACTL_LBS, STG.RGM_BU_YTD.ACTUAL_SCM AS ACTL_SCRCARD_MGMT, 
                      STG.RGM_BU_YTD.BUDGET_NSV AS BUD_NSV, STG.RGM_BU_YTD.ACTUAL_NSV_YTD_YA AS NSV_YTD_YR_AGO, 
                      STG.RGM_BU_YTD.ACTUAL_LBS_YTD_YA AS ACTL_LBS_YTD_YR_AGO, STG.RGM_BU_YTD.ACTUAL_SCM_YTD_YA AS ACTL_SCRCARD_MGMT_YTA_YR_AGO, 
                      STG.RGM_BU_YTD_IBP.NSV_ACTUAL_IBP AS NSV_ACTL_IBP, STG.RGM_BU_YTD_IBP.NSV_CHG_YA_IBP, 
                      STG.RGM_BU_YTD_IBP.NSV_CHG_YA_PRT_IBP AS NSV_CHG_YA_PCT_IBP, STG.RGM_BU_YTD_IBP.NSV_KMF_GSV_IBP, 
                      STG.RGM_BU_YTD_IBP.NSV_PRXY_ACTL_IBP, STG.RGM_BU_YTD_IBP.NSV_PRXY_V_YA_IBP AS NSV_PRXY_VS_YR_AGO_IBP, 
                      STG.RGM_BU_YTD_IBP.SCM_PRXY_ACTL_IBP, STG.RGM_BU_YTD_IBP.SCM_PRXY_YA_IBP AS SCRCARD_MGMT_PRXY_YR_AGO_IBP, 
                      STG.RGM_BU_YTD_IBP.GSV_BUD, STG.RGM_BU_YTD_IBP.KMF_BUD AS KLG_MKTG_FUND_BUD, STG.RGM_BU_YTD_IBP.NSV_BUD, 
                      STG.RGM_BU_YTD_IBP.GSV_KMF_ADJ_BUD AS GSV_KLG_MKTG_FUND_ADJ_BUD, STG.RGM_BU_YTD_IBP.GSV_IBP, 
                      STG.RGM_BU_YTD_IBP.KMF_IBP AS KLG_MKTG_FUND_IBP, STG.RGM_BU_YTD_IBP.NSV_IBP, STG.RGM_BU_YTD_IBP.YAG_GSV AS YR_AGO_GSV, 
                      STG.RGM_BU_YTD_IBP.YAG_KMF AS YR_AGO_KLG_MKTG_FUND, STG.RGM_BU_YTD_IBP.YAG_NSV AS YR_AGO_NSV, 
                      STG.RGM_BU_YTD_IBP.COP_YTD AS COST_OF_PROD_YTD, STG.RGM_BU_YTD_IBP.COP_YTD_YA AS COST_OF_PROD_YTD_YR_AGO
FROM         STG.RGM_BU_YTD INNER JOIN
                      STG.RGM_BU_YTD_IBP ON STG.RGM_BU_YTD_IBP.BUSINESS_UNIT = STG.RGM_BU_YTD.BUSINESS_UNIT


GO
/****** Object:  View [dbo].[UVW_RGM_CATEGORY_12P]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_RGM_CATEGORY_12P]
AS
SELECT     BUSINESS_UNIT AS BU, CATEGORY AS CATG, SCM_$_ACTUAL AS SCRCARD_MGMT_USD_ACTL, GSV_V_YA AS GSV_VS_YR_AGO, NSV_V_YA AS NSV_VS_YR_AGO, 
                      [TRADE_%_V_YA] AS TRADE_PCT_VS_YR_AGO, NSV_BY_LB_ACTUAL AS NSV_BY_LBS_ACTL, NSV_LB_V_YA AS NSV_LBS_VS_YR_AGO, 
                      [SCM_%_V_YA] AS SCRCARD_MGMT_PCT_VS_YR_AGO, MIX_V_YA AS MIX_VS_YR_AGO, [EDLP_%_KMF] AS EDLP_PCT_KLG_MKTG_FUND, AVG_EQ_PRICE_K_YTD, 
                      ACTUAL_NSV AS ACTL_NSV, ACTUAL_NSV_12P_YA AS ACTL_NSV_12P_YR_AGO, ACTUAL_LBS AS ACTL_LBS, ACTUAL_LBS_12P_YA AS ACTL_LBS_12P_YR_AGO, 
                      ACTUAL_SCM AS ACTL_SCRCARD_MGMT, ACTUAL_SCM_12P_YA AS ACTL_SCRCARD_MGMT_12P_YR_AGO, GSV_12P, GSV_12P_YA AS GSV_12P_YR_AGO, 
                      KMF_12P AS KLG_MKTG_FUND_12P, KMF_12P_YA AS KLG_MKTG_FUND_12P_YR_AGO, SCM2_12P AS SCRCARD_MGMT2_12P, 
                      SCM2_12P_YA AS SCRCARD_MGMT_12P_YR_AGO, EDLP_CAT_12P AS EDLP_CATG_12P, EDLP_CAT_12P_YA AS EDLP_CATG_12P_YR_AGO, 
                      KMF_CAT_12P AS KLG_MKTG_FUND_CATG_12P, KMF_CAT_12P_YA AS KLG_MKTG_FUND_CATG_12P_YR_AGO
FROM         STG.RGM_CATEGORY_12P


GO
/****** Object:  View [dbo].[UVW_RGM_CATEGORY_YTD]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_RGM_CATEGORY_YTD]
AS
SELECT     IBP.BUSINESS_UNIT AS BU, IBP.CATEGORY AS CATG, CAT.SCM_$_ACTUAL AS SCRCARD_MGMT_USD_ACTL, CAT.GSV_V_YA AS GSV_VS_YR_AGO, 
                      CAT.NSV_V_YA AS NSV_VS_YR_AGO, CAT.NSV_v_BUDGET AS NSV_VS_BUD, CAT.[TRADE_%_V_YA] AS TRADE_PCT_VS_YR_AGO, 
                      CAT.NSV_BY_LB_ACTUAL AS NSV_BY_LBS_ACTL, CAT.NSV_LB_V_YA AS NSV_LBS_VS_YR_AGO, CAT.[SCM_%_V_YA] AS SCRCARD_MGMT_PCT_VS_YR_AGO, 
                      CAT.MIX_V_YA AS MIX_VS_YR_AGO, CAT.[EDLP_%_KMF] AS EDLP_PCT_KLG_MKTG_FUND, CAT.AVG_EQ_PRICE_K_YTD AS AVG_EQ_PRICE_K_YR_AGO, 
                      CAT.DISCOUNT_DEPTH_ACTUAL AS DISCOUNT_DEPTH_ACTL, CAT.ACTUAL_NSV AS ACTL_NSV, CAT.ACTUAL_NSV_YTD_YA AS ACTL_NSV_YTD_YR_AGO, 
                      CAT.ACTUAL_LBS AS ACTL_LBS, CAT.ACTUAL_LBS_YTD_YA AS ACTL_LBS_YTD_YR_AGO, CAT.ACTUAL_SCM AS ACTL_SCRCARD_MGMT, 
                      CAT.ACTUAL_SCM_YTD_YA AS ACTL_SCRCARD_MGMT_YTD_YR_AGO, CAT.BUDGET_NSV AS BUD_NSV, CAT.GSV_YTD, CAT.GSV_YTD_YA AS GSV_YTD_YR_AGO, 
                      CAT.KMF_YTD AS KLG_MKTG_FUND_YTD, CAT.KMF_YTD_YA AS KLG_MKTG_FUND_YTD_YA, CAT.SCM2_YTD AS SCRCARD_MGMT2_YTD, 
                      CAT.SCM2_YTD_YA AS SCRCARD_MGMT2_YTD_YR_AGO, CAT.EDLP_CAT_YTD AS EDLP_CATG_YTD, CAT.EDLP_CAT_YTD_YA AS EDLP_CATG_YTD_YA, 
                      CAT.KMF_CAT_YTD AS KLG_MKTG_FUND_CATG_YTD, CAT.KMF_CAT_YTD_YA AS KLG_MKTG_FUND_CATG_YTD_YR_AGO, CAT.GSV_BD, 
                      CAT.KMF_BD AS KLG_MKTG_FUND_BUD, IBP.GSV_ACTL_IBP, IBP.GSV_V_YA_IBP AS GSV_VS_YR_AGO_IBP, IBP.GSV_KMF_IBP AS GSV_KLG_MKTG_FUND_IBP, 
                      IBP.NSV_PRXY_V_YA_IBP AS NSV_PRXY_VS_YR_AGO_IBP, IBP.NSV_PRXY_V_BUD_IBP AS NSV_PRXY_VS_BUD_IBP, 
                      IBP.TRADE_PRCT_B_W_ACTUAL_IBP AS TRADE_PCT_BTR_WRST_ACTL_IBP, 
                      IBP.TRADE_PRCT_B_W_ACTUAL_YA_IBP AS TRADE_PCT_BTR_WRST_ACTL_YR_AGO_IBP, IBP.NSV_PRXY_ACTL_IBP, 
                      IBP.NSV_PRXY_V_LB_YA_IBP AS NSV_PRXY_VS_LBS_YR_AGO_IBP, IBP.NSV_PRCT_CHG_YA_IBP AS NSV_PCT_CHG_YR_AGO_IBP, 
                      IBP.SCM_PRXY_PRCT_V_YA_IBP AS SCRCARD_MGMT_PRXY_YR_AGO_IBP, IBP.GSV_BUD, IBP.KMF_BUD, IBP.NSV_BUD, 
                      IBP.GSV_KMF_ADJ_BUD AS GSV_KLG_MKTG_FUND_ADJ_BUD, IBP.GSV_IBP, IBP.KMF_IBP AS KLG_MKTG_FUND_IBP, IBP.NSV_IBP, 
                      IBP.YAG_GSV AS YR_AGO_GSV, IBP.YAG_NSV AS YR_AGO_NSV, IBP.YAG_KMF AS YR_AGO_KLG_MKTG_FUND, IBP.COP_YTD AS COST_OF_PROD_YTD, 
                      IBP.COP_YTD_YA AS COST_OF_PROD_YTD_YR_AGO
FROM         STG.RGM_CATEGORY_YTD_IBP AS IBP LEFT OUTER JOIN
                      STG.RGM_CATEGORY_YTD AS CAT ON IBP.BUSINESS_UNIT = CAT.BUSINESS_UNIT AND IBP.CATEGORY = CAT.CATEGORY


GO
/****** Object:  View [dbo].[Walmart Validate KC]    Script Date: 11/20/2018 5:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Walmart Validate KC] AS 
SELECT
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT6,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Plan Ship $]) AS PlnShpDol,
Sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[LE KMF $]) AS LE_KMF,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT,
sum(dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Actual Ship $]) as actDol

FROM
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT
INNER JOIN dbo.KLG_TPE_MATERIAL_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_MATERIAL_DIM_TGT.MIXED_PAL_MATERIAL
INNER JOIN dbo.KLG_TPE_TIME_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week] = dbo.KLG_TPE_TIME_DIM_TGT.CALENDER_WEEK
INNER JOIN dbo.KLG_TPE_ZCUST_MAT_DIM_TGT ON dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material] = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.MIXED_PAL_MATERIAL AND dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.CUST_MAT
WHERE
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER = '300850'
GROUP BY
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Material],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Mixed Pallet Flag],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.[Calendar Week],
dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT.CUSTOMER,
dbo.KLG_TPE_TIME_DIM_TGT.PERIOD,
dbo.KLG_TPE_TIME_DIM_TGT.[Period Number],
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT4,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT5,
dbo.KLG_TPE_MATERIAL_DIM_TGT.PROD_HIER_TEXT6,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_CATEGORY,
dbo.KLG_TPE_MATERIAL_DIM_TGT.ALT_SUBCATEGORY,
dbo.KLG_TPE_ZCUST_MAT_DIM_TGT.BUSINESS_UNIT

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
         Begin Table = "RGM_BU_12P (STG)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 230
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_BU_12P'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_BU_12P'
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
         Begin Table = "RGM_BU_YTD (STG)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RGM_BU_YTD_IBP (STG)"
            Begin Extent = 
               Top = 6
               Left = 268
               Bottom = 114
               Right = 460
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_BU_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_BU_YTD'
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
         Begin Table = "RGM_CATEGORY_12P (STG)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 297
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_CATEGORY_12P'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_CATEGORY_12P'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[7] 3) )"
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
         Begin Table = "IBP"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CAT"
            Begin Extent = 
               Top = 6
               Left = 335
               Bottom = 114
               Right = 594
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_CATEGORY_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UVW_RGM_CATEGORY_YTD'
GO
USE [master]
GO
ALTER DATABASE [TPE_DS_Target] SET  READ_WRITE 
GO
