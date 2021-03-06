USE [master]
GO
/****** Object:  Database [KNA_SALES]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE DATABASE [KNA_SALES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_SALES_DEV', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_SALES_DEV.mdf' , SIZE = 821760000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KNA_SALES_DEV_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_SALES_DEV_log.ldf' , SIZE = 73523200KB , MAXSIZE = 2048GB , FILEGROWTH = 204800KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_SALES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_SALES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_SALES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_SALES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_SALES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_SALES] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_SALES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_SALES] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_SALES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_SALES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_SALES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_SALES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_SALES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_SALES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_SALES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_SALES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_SALES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_SALES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_SALES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_SALES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_SALES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_SALES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_SALES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_SALES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_SALES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_SALES] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_SALES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_SALES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_SALES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_SALES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_SALES', N'ON'
GO
USE [KNA_SALES]
GO
/****** Object:  User [US\SQL_SPCLTY_RMBSMT_USERS_R]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_SPCLTY_RMBSMT_USERS_R] FOR LOGIN [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
/****** Object:  User [US\SQL_KNA_SALES_USERS_R]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_KNA_SALES_USERS_R] FOR LOGIN [US\SQL_KNA_SALES_USERS_R]
GO
/****** Object:  User [US\SQL_KNA_COMRCL_SALES_USERS_R]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_KNA_COMRCL_SALES_USERS_R] FOR LOGIN [US\SQL_KNA_COMRCL_SALES_USERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE4 ]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE4 ] FOR LOGIN [US\SQL_DS_HYPERCARE4]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE3]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE3] FOR LOGIN [US\SQL_DS_HYPERCARE3]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\SQL_CAPSIM_USERS_RW]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [US\SQL_CAPSIM_USERS_RW] FOR LOGIN [US\SQL_CAPSIM_USERS_RW]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_SNKS_RETL_ANLYTC]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [SAS_SNKS_RETL_ANLYTC] FOR LOGIN [SAS_SNKS_RETL_ANLYTC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 11/20/2018 5:49:03 PM ******/
CREATE ROLE [db_exeproc]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SPCLTY_RMBSMT_USERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KNA_SALES_USERS_R]
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
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_CAPSIM_USERS_RW]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_SNKS_RETL_ANLYTC]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [RPT]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE SCHEMA [RPT]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE SCHEMA [STG]
GO
USE [KNA_SALES]
GO
/****** Object:  Sequence [dbo].[BATCH_ID]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE SEQUENCE [dbo].[BATCH_ID] 
 AS [bigint]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  StoredProcedure [dbo].[Joywave_SumAgg]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Joywave_SumAgg] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DROP INDEX [CI_Summary_Agg] ON [dbo].[Summ_Agg_01] WITH ( ONLINE = OFF );
	DROP INDEX [NCI_Channel_SuperPlan] ON [dbo].[Summ_Agg_01];
    -- Insert statements for procedure here
	IF OBJECT_ID('dbo.Summ_Agg_01', 'U') IS NOT NULL
	drop table dbo.Summ_Agg_01;

select x.* into dbo.Summ_Agg_01 FROM (
SELECT
STG_Joywave_Transaction.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
STG_Joywave_Transaction.BW_PlanTo_Key,
STG_Joywave_Transaction.BW_PlanTo_Name,
stg_joywave_transaction.Cal_Week as Fis_Week, 
stg_joywave_transaction.Period AS Period, 
stg_joywave_transaction.FISC_PERIOD ,
 "Fis_Quarter" = 
CASE 
WHEN stg_joywave_transaction.Period <=3 then 1
when stg_joywave_transaction.Period > 3 and stg_joywave_transaction.Period <=6 then 2
when stg_joywave_transaction.Period >6 and stg_joywave_transaction.Period <=9 then 3
when stg_joywave_transaction.Period > 9 then 4
end,
stg_joywave_transaction.Fis_Year,
"Channel" = 
CASE
WHEN STG_Joywave_Transaction.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_CUSTOMER.Territory,0) as Territory,
coalesce(ECC_CUSTOMER.District,0) as District,
coalesce(ECC_CUSTOMER.Zone,0) as Zone,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(SoldToMap.Trade_Class,'UnAssigned') as Trade_Class,
coalesce(SoldToMap.K12_Dist_Flag,'UnAssigned') as K12_Dist_Flag,
coalesce(SoldToMap.Acosta_DOB_Rgn,'UnAssigned') as Acosta_BOB_Rgn,
coalesce(Category, 'UnAssigned') as Category,
coalesce(ECC_Material.Prd_Catg,'UnAssigned') as Prd_Catg,
stg_joywave_transaction.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand,  
coalesce( MaterialMap.K12_Comp_Flag,'UnAssigned') AS K12_Comp_Flag,  
coalesce( MaterialMap.CStr_Prty_Flag,'UnAssigned') AS CStr_Prty_Flag,  
coalesce( MaterialMap.Vnd_Prty_Flag,'UnAssigned') AS Vnd_Prty_Flag,
coalesce( MaterialMap.Food_Service_Focus_Category,'UnAssigned') AS Food_Service_Focus_Category,  
stg_joywave_transaction.Open_Ordrs_Dollars, stg_joywave_transaction.Open_Ords_Pounds, stg_joywave_transaction.Open_Ords_Cs, 
stg_joywave_transaction.Gross_Sales_Dollars_Dir, stg_joywave_transaction.Gross_Sales_Pounds_Dir, stg_joywave_transaction.Gross_Sales_Cs_Dir,
stg_joywave_transaction.Gross_Sales_Dollars_InDir, stg_joywave_transaction.Gross_Sales_Pounds_InDir, stg_joywave_transaction.Gross_Sales_Cs_InDir, 
stg_joywave_transaction.Cust_Open_Ordrs_Dollars, stg_joywave_transaction.Cust_Open_Ords_Pounds, stg_joywave_transaction.Cust_Open_Ords_Cs,
stg_joywave_transaction.Cust_Gross_Sales_Dollars_Dir, stg_joywave_transaction.Cust_Gross_Sales_Pounds_Dir, stg_joywave_transaction.Cust_Gross_Sales_Cs_Dir,
--BudgetSE.Super_Plan_To,BudgetSE.Field_Category AS BSE_Field_Category,
0 as Budget_GSV, 
0 as GSV_39,
0 as GSV_66,
0 as GSV_93,
--coalesce(BudgetSE.Budget_GSV,0) as Budget_GSV, coalesce(BudgetSE.GSV_39,0) as GSV_39, coalesce(BudgetSE.GSV_66,0) as GSV_66, coalesce(BudgetSE.GSV_93,0) as GSV_93,
--SHAPE.CHANNEL, 
coalesce(SHAPE.DLY_PCT,0) as DLY_PCT, coalesce(SHAPE.WTD_PCT,0) as WTD_PCT,  COALESCE(SHAPE.PTD_PCT,0) AS PTD_PCT,
STG_Joywave_Transaction.Source_Name,
GETDATE() as execdate
/**/
FROM     stg_joywave_transaction  
               LEFT OUTER JOIN
                      ECC_Customer ON stg_joywave_transaction.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON stg_joywave_transaction.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON stg_joywave_transaction.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON stg_joywave_transaction.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
				LEFT OUTER JOIN SHAPE  ON 	
					  ECC_CUSTOMER.CHANNEL_NAME = SHAPE.Channel
                      AND SHAPE.CAL_DAY = CAST(GETDATE() AS DATE)


UNION ALL

SELECT
0 AS SoldTo_Num,
'Ignore' as SoldTo_Name,
0 as BW_PlanTo_Key,
'Ignore' as BW_PlanTo_Name,
Week as Fis_Week, 
Period,
case when Period<10 then concat(Year,'00',Period) else concat(Year,'0',Period) end as FISC_PERIOD,
Quarter as  Fis_Quarter,
Year as Fis_Year,
Channel, 
0 as Territory,
0 as District,
0 as Zone,
'Ignore' as Zone_Name,
'Ignore' as District_Name,
'Ignore' as Territory_Name,
'Ignore' as PlanTo_Name,
Super_Plan_To as Super_PlanTo,
'Ignore' as Chain,
'Ignore' as Sub_Chain,
'Ignore' as Trade_Class,
'Ignore' as K12_Dist_Flag,
'Ignore' as Acosta_BOB_Rgn,
Category,
'Ignore' as Prd_Catg,
0 as Base_Material,
'Ignore' as Mtl_Desc,
Field_Category,  
'Ignore' AS Master_Brand,  
'Ignore' AS Sub_Brand,  
'Ignore' AS K12_Comp_Flag,  
'Ignore' AS CStr_Prty_Flag,  
'Ignore' AS Vnd_Prty_Flag,
'Ignore' AS Food_Service_Focus_Category,  
0 as Open_Ordrs_Dollars, 0 as Open_Ords_Pounds, 0 as Open_Ords_Cs, 
0 as Gross_Sales_Dollars_Dir, 0 as Gross_Sales_Pounds_Dir, 0 as Gross_Sales_Cs_Dir,
0 as Gross_Sales_Dollars_InDir, 0 as Gross_Sales_Pounds_InDir, 0 as Gross_Sales_Cs_InDir, 
0 as Cust_Open_Ordrs_Dollars, 0 as Cust_Open_Ords_Pounds, 0 as Cust_Open_Ords_Cs,
0 as Cust_Gross_Sales_Dollars_Dir, 0 as Cust_Gross_Sales_Pounds_Dir, 0 as Cust_Gross_Sales_Cs_Dir,
--BudgetSE.Super_Plan_To,BudgetSE.Field_Category AS BSE_Field_Category,
Budget_GSV, 
GSV_39,
GSV_66,
GSV_93,
--coalesce(BudgetSE.Budget_GSV,0) as Budget_GSV, coalesce(BudgetSE.GSV_39,0) as GSV_39, coalesce(BudgetSE.GSV_66,0) as GSV_66, coalesce(BudgetSE.GSV_93,0) as GSV_93,
--SHAPE.CHANNEL, 
0 as DLY_PCT, 0 as WTD_PCT,  0 AS PTD_PCT,
'BudgetSE' as Source_Name,
GETDATE() as execdate
/**/
FROM     BudgetSE
) x;

CREATE CLUSTERED INDEX [CI_Summary_Agg] ON [dbo].[Summ_Agg_01]
(
	[Fis_Year] ASC,
	[Period] ASC,
	[Channel] ASC,
	[Super_PlanTo] ASC,
	[Category] ASC,
	[Field_Category] ASC,
	[SoldTo_Num] ASC,
	[Base_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);

CREATE NONCLUSTERED COLUMNSTORE INDEX [NCI_Channel_SuperPlan] ON [dbo].[Summ_Agg_01]
(
	[Channel],
	[Super_PlanTo]
)WITH (DROP_EXISTING = OFF);


IF OBJECT_ID('dbo.Summ_Agg_02', 'U') IS NOT NULL
  drop table dbo.Summ_Agg_02;


select * into dbo.Summ_Agg_02 FROM (
SELECT
Joywave_Query.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
Joywave_Query.Cal_Week as Fis_Week, 
Joywave_Query.Period AS Period, 
Joywave_Query.FISC_PERIOD,
 "Fis_Quarter" = 
CASE 
WHEN Joywave_Query.Period <=3 then 1
when Joywave_Query.Period > 3 and Joywave_Query.Period <=6 then 2
when Joywave_Query.Period >6 and Joywave_Query.Period <=9 then 3
when Joywave_Query.Period > 9 then 4
end,
Joywave_Query.Fis_Year,
"Channel" = 
CASE
WHEN Joywave_Query.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
Joywave_Query.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand,  
Joywave_Query.Open_Ordrs_Dollars, Joywave_Query.Open_Ords_Pounds, Joywave_Query.Open_Ords_Cs, 
Joywave_Query.Gross_Sales_Dollars_Dir, Joywave_Query.Gross_Sales_Pounds_Dir, Joywave_Query.Gross_Sales_Cs_Dir,
Joywave_Query.Gross_Sales_Dollars_InDir, Joywave_Query.Gross_Sales_Pounds_InDir, Joywave_Query.Gross_Sales_Cs_InDir, 
0 as PP_Open_Ordrs_Dollars, 
0 as YAGO_GSV_DI,
Joywave_Query.Source_Name,
GETDATE() as execdate
/**/
FROM     Joywave_Query  
               LEFT OUTER JOIN
                      ECC_Customer ON Joywave_Query.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON Joywave_Query.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON Joywave_Query.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON Joywave_Query.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE Joywave_Query.period = (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and Joywave_Query.fis_year = (SELECT FSCL_YR FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and Joywave_Query.source_name <> 'BudgetSE'

UNION ALL

SELECT
Joywave_Query.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
Fis_Week = (SELECT FSCL_WK FROM Calendar WHERE DT_US = CAST(GETDATE() AS date)),
Period = (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date)),
FISC_PERIOD = concat((SELECT FSCL_YR FROM Calendar WHERE DT_US = CAST(GETDATE() AS date)),'0',(SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))),
 "Fis_Quarter" = (SELECT FSCL_QTR FROM Calendar WHERE DT_US = CAST(GETDATE() AS date)),
Fis_Year = (SELECT FSCL_YR FROM Calendar WHERE DT_US = CAST(GETDATE() AS date)),
"Channel" = 
CASE
WHEN Joywave_Query.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
Joywave_Query.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand, 
0 as Open_Ordrs_Dollars, 0 as Open_Ords_Pounds, 0 as Open_Ords_Cs, 
0 as Gross_Sales_Dollars_Dir, 0 as  Gross_Sales_Pounds_Dir,  0 as Gross_Sales_Cs_Dir,
0 as Gross_Sales_Dollars_InDir, 0 as Gross_Sales_Pounds_InDir, 0 as Gross_Sales_Cs_InDir, 
Joywave_Query.Open_Ordrs_Dollars as PP_Open_Ordrs_Dollars, 
0 as YAGO_GSV_DI,
Joywave_Query.Source_Name,
GETDATE() as execdate
/**/
FROM     Joywave_Query  
               LEFT OUTER JOIN
                      ECC_Customer ON Joywave_Query.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON Joywave_Query.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON Joywave_Query.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON Joywave_Query.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE Joywave_Query.period = (
select "PP" = 
CASE WHEN FSCL_PRD = 1 THEN 12
WHEN FSCL_PRD > 1 THEN FSCL_PRD-1
END
FROM Calendar WHERE DT_US = CAST(GETDATE() AS date) )
and Joywave_Query.fis_year = 
(SELECT "PY" = 
CASE WHEN FSCL_PRD = 1 THEN FSCL_YR -1
WHEN FSCL_PRD > 1 THEN FSCL_YR
END
FROM Calendar WHERE DT_US = CAST(GETDATE() AS date) )
and Joywave_Query.source_name <> 'BudgetSE' 
and Joywave_Query.open_ordrs_dollars <> 0

union all

SELECT
STG_Joywave_Transaction.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
stg_joywave_transaction.Cal_Week as Fis_Week, 
stg_joywave_transaction.Period AS Period, 
stg_joywave_transaction.FISC_PERIOD as FISC_PERIOD,
 "Fis_Quarter" = 
CASE 
WHEN stg_joywave_transaction.Period <=3 then 1
when stg_joywave_transaction.Period > 3 and stg_joywave_transaction.Period <=6 then 2
when stg_joywave_transaction.Period >6 and stg_joywave_transaction.Period <=9 then 3
when stg_joywave_transaction.Period > 9 then 4
end,
stg_joywave_transaction.Fis_Year,
"Channel" = 
CASE
WHEN STG_Joywave_Transaction.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
stg_joywave_transaction.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand, 
0 as Open_Ordrs_Dollars, 0 as Open_Ords_Pounds, 0 as Open_Ords_Cs, 
0 as Gross_Sales_Dollars_Dir, 0 as  Gross_Sales_Pounds_Dir,  0 as Gross_Sales_Cs_Dir,
0 as Gross_Sales_Dollars_InDir, 0 as Gross_Sales_Pounds_InDir, 0 as Gross_Sales_Cs_InDir, 
0 as PP_Open_Ordrs_Dollars, 
(stg_joywave_transaction.Gross_Sales_Dollars_Dir + stg_joywave_transaction.Gross_Sales_Dollars_InDir) as YAGO_GSV_DI,
STG_Joywave_Transaction.Source_Name,
GETDATE() as execdate
/**/
FROM     stg_joywave_transaction  
               LEFT OUTER JOIN
                      ECC_Customer ON stg_joywave_transaction.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON stg_joywave_transaction.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON stg_joywave_transaction.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON stg_joywave_transaction.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE stg_joywave_transaction.period = (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and stg_joywave_transaction.fis_year = (SELECT FSCL_YR -1 FROM Calendar WHERE DT_US = CAST(GETDATE() AS date) )
and stg_joywave_transaction.source_name <> 'BudgetSE' 
) X

IF OBJECT_ID('dbo.Summ_Agg_03', 'U') IS NOT NULL
  drop table dbo.Summ_Agg_03;
  
select * into dbo.Summ_Agg_03 FROM (
SELECT
STG_Joywave_Transaction.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
STG_Joywave_Transaction.Cal_Week as Fis_Week, 
STG_Joywave_Transaction.Period AS Period, 
STG_Joywave_Transaction.FISC_PERIOD as FISC_PERIOD,
 "Fis_Quarter" = 
CASE 
WHEN STG_Joywave_Transaction.Period <=3 then 1
when STG_Joywave_Transaction.Period > 3 and STG_Joywave_Transaction.Period <=6 then 2
when STG_Joywave_Transaction.Period >6 and STG_Joywave_Transaction.Period <=9 then 3
when STG_Joywave_Transaction.Period > 9 then 4
end,
STG_Joywave_Transaction.Fis_Year,
"Channel" = 
CASE
WHEN STG_Joywave_Transaction.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
STG_Joywave_Transaction.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand,  
STG_Joywave_Transaction.Gross_Sales_Dollars_Dir,
STG_Joywave_Transaction.Gross_Sales_Dollars_InDir,
0 as YAGO_GSV_DI,
STG_Joywave_Transaction.Source_Name,
GETDATE() as execdate
/**/
FROM     STG_Joywave_Transaction  
               LEFT OUTER JOIN
                      ECC_Customer ON STG_Joywave_Transaction.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON STG_Joywave_Transaction.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON STG_Joywave_Transaction.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON STG_Joywave_Transaction.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE STG_Joywave_Transaction.period < (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and STG_Joywave_Transaction.fis_year = (SELECT FSCL_YR FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and STG_Joywave_Transaction.source_name <> 'BudgetSE'

UNION ALL
SELECT
STG_Joywave_Transaction.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
STG_Joywave_Transaction.Cal_Week as Fis_Week, 
STG_Joywave_Transaction.Period AS Period, 
STG_Joywave_Transaction.FISC_PERIOD ,
 "Fis_Quarter" = 
CASE 
WHEN STG_Joywave_Transaction.Period <=3 then 1
when STG_Joywave_Transaction.Period > 3 and STG_Joywave_Transaction.Period <=6 then 2
when STG_Joywave_Transaction.Period >6 and STG_Joywave_Transaction.Period <=9 then 3
when STG_Joywave_Transaction.Period > 9 then 4
end,
STG_Joywave_Transaction.Fis_Year,
"Channel" = 
CASE
WHEN STG_Joywave_Transaction.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
STG_Joywave_Transaction.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand,  
STG_Joywave_Transaction.Gross_Sales_Dollars_Dir, 
STG_Joywave_Transaction.Gross_Sales_Dollars_InDir,
0 as YAGO_GSV_DI,
STG_Joywave_Transaction.Source_Name,
GETDATE() as execdate
/**/
FROM     STG_Joywave_Transaction  
               LEFT OUTER JOIN
                      ECC_Customer ON STG_Joywave_Transaction.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON STG_Joywave_Transaction.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON STG_Joywave_Transaction.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON STG_Joywave_Transaction.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE 
--STG_Joywave_Transaction.period < (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
STG_Joywave_Transaction.fis_year < (SELECT FSCL_YR FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and STG_Joywave_Transaction.source_name <> 'BudgetSE'

UNION ALL

SELECT
STG_Joywave_Transaction.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
stg_joywave_transaction.Cal_Week as Fis_Week, 
stg_joywave_transaction.Period AS Period, 
stg_joywave_transaction.FISC_PERIOD as FISC_PERIOD,
 "Fis_Quarter" = 
CASE 
WHEN stg_joywave_transaction.Period <=3 then 1
when stg_joywave_transaction.Period > 3 and stg_joywave_transaction.Period <=6 then 2
when stg_joywave_transaction.Period >6 and stg_joywave_transaction.Period <=9 then 3
when stg_joywave_transaction.Period > 9 then 4
end,
stg_joywave_transaction.Fis_Year,
"Channel" = 
CASE
WHEN STG_Joywave_Transaction.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
stg_joywave_transaction.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand, 
0 as Gross_Sales_Dollars_Dir, 
0 as Gross_Sales_Dollars_InDir,
(stg_joywave_transaction.Gross_Sales_Dollars_Dir + stg_joywave_transaction.Gross_Sales_Dollars_InDir) as YAGO_GSV_DI,
'YAGO' as Source_Name,
GETDATE() as execdate
/**/
FROM     stg_joywave_transaction  
               LEFT OUTER JOIN
                      ECC_Customer ON stg_joywave_transaction.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON stg_joywave_transaction.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON stg_joywave_transaction.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON stg_joywave_transaction.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE 
stg_joywave_transaction.period < (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
and
stg_joywave_transaction.fis_year = (SELECT FSCL_YR -1 FROM Calendar WHERE DT_US = CAST(GETDATE() AS date) )
and stg_joywave_transaction.source_name <> 'BudgetSE'

UNION ALL

SELECT
STG_Joywave_Transaction.SoldTo_Num,
--STG_Joywave_Transaction.SoldTo_Name,
coalesce(ECC_Customer.Customer_Name,'UnAssigned') as SoldTo_Name,
stg_joywave_transaction.Cal_Week as Fis_Week, 
stg_joywave_transaction.Period AS Period, 
stg_joywave_transaction.FISC_PERIOD,
 "Fis_Quarter" = 
CASE 
WHEN stg_joywave_transaction.Period <=3 then 1
when stg_joywave_transaction.Period > 3 and stg_joywave_transaction.Period <=6 then 2
when stg_joywave_transaction.Period >6 and stg_joywave_transaction.Period <=9 then 3
when stg_joywave_transaction.Period > 9 then 4
end,
stg_joywave_transaction.Fis_Year,
"Channel" = 
CASE
WHEN STG_Joywave_Transaction.SOURCE_NAME = 'QUERY3' THEN 'CUSTOM PRODUCTS'
ELSE coalesce(ECC_Customer.Channel_Name,'UnAssigned') 
END,
coalesce(ECC_Customer.Zone_Name,'UnAssined') as Zone_Name,
coalesce(ECC_Customer.District_Name,'UnAssined') as District_Name,
coalesce(ECC_Customer.Territory_Name,'UnAssined') as Territory_Name,
coalesce(PlanToMap.PlanTo_Name,'UnAssigned') as PlanTo_Name,
coalesce(PlanToMap.Super_PlanTo,'UnAssigned') as Super_PlanTo,
coalesce(SoldToMap.Chain,'UnAssigned') as Chain,
coalesce(SoldToMap.Sub_Chain,'UnAssigned') as Sub_Chain,
coalesce(Category, 'UnAssigned') as Category,
stg_joywave_transaction.Base_Material,
coalesce(ECC_Material.Mtl_Desc,'UnAssigned') as Mtl_Desc,
coalesce( MaterialMap.Field_Category,'UnAssigned') AS Field_Category,  
coalesce( MaterialMap.Master_Brand,'UnAssigned') AS Master_Brand,  
coalesce( MaterialMap.Sub_Brand,'UnAssigned') AS Sub_Brand, 
0 as Gross_Sales_Dollars_Dir, 
0 as Gross_Sales_Dollars_InDir,
(stg_joywave_transaction.Gross_Sales_Dollars_Dir + stg_joywave_transaction.Gross_Sales_Dollars_InDir) as YAGO_GSV_DI,
'YAGO' as Source_Name,
GETDATE() as execdate
/**/
FROM     stg_joywave_transaction  
               LEFT OUTER JOIN
                      ECC_Customer ON stg_joywave_transaction.SoldTo_Num = ECC_Customer.CustomeR_Num
 				LEFT OUTER JOIN
                     ECC_Material ON stg_joywave_transaction.Base_Material = ECC_Material.Material
				LEFT OUTER JOIN
                     MaterialMap ON stg_joywave_transaction.Base_Material = MaterialMap.Base_Case_Code 
				LEFT OUTER JOIN
                    SoldToMap ON stg_joywave_transaction.SoldTo_Num = SoldToMap.SoldTo_Key 
				LEFT OUTER JOIN
                     PlanToMap ON SoldToMap.PlanTo_Name = PlanToMap.PlanTo_Name
WHERE 
--stg_joywave_transaction.period = (SELECT FSCL_PRD FROM Calendar WHERE DT_US = CAST(GETDATE() AS date))
--and
stg_joywave_transaction.fis_year < (SELECT FSCL_YR -1 FROM Calendar WHERE DT_US = CAST(GETDATE() AS date) )
and stg_joywave_transaction.source_name <> 'BudgetSE'  
) X
END

GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_INFOMETRICS_ACTL_SALES]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name				:	[USP_LOAD_INFOMETRICS_ACTL_SALES]
-- Author			:	Ramadhyani, Venkatesh\Chandars
-- Create date		:	08/16/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data to INFOMETRICS_ACTL_SALES table	in KNA_SALES from KNA_EXTERNAL db
--						Also, calculates the CURR_YR & PREV YR QTY using FAFH Price
-- Comments			:
-- =============================================================================================
CREATE PROCEDURE  [dbo].[USP_LOAD_INFOMETRICS_ACTL_SALES]
AS 
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;
Declare @LOAD_DT datetime;
SET @LOAD_DT = (SELECT COALESCE(MAX([DW_CRE_TS]),'2016-01-01') 
                FROM [KNA_SALES].[dbo].[INFOMETRICS_ACTL_SALES] WITH (NOLOCK));

	WITH CTE AS(
	            SELECT
	    			 CH.[PLN_TO_CUST]COLLATE DATABASE_DEFAULT as [LVL8_CUST_NBR],
					 CH.[PLN_TO_NM] COLLATE DATABASE_DEFAULT as [LVL8_CUST_NM],
					 NM.SHIP_LOC,DIST_WHSE_NM, NM.SOLD_TO, CH.[SOLD_TO_KEY]
				FROM [KNA_EXTERNAL].INFOMETRICS.INFOMETRICS_NSD_MAP NM  WITH (NOLOCK) 
				INNER JOIN [KNA_SALES].[dbo].[UVW_PLANTO_CHANNAL] CH   WITH (NOLOCK) 
				ON CH.[SOLD_TO_KEY] = NM.SOLD_TO 
         )

		,CTE1 AS (
		         SELECT 
					[CASE_CODE],
					[DST_WHSE_NM] COLLATE DATABASE_DEFAULT as [DST_WHSE_NM],
					[RETL_CHN_NM] COLLATE DATABASE_DEFAULT as [RETL_CHN_NM],
					[WEEK],
					[OUTBND_USD_CUR_YR],
					[OUTBND_USD_PREV_YR],
					CASE WHEN PRC IS NULL THEN NULL ELSE 
						Round(([OUTBND_USD_CUR_YR] / CASE WHEN PRC = 0 THEN 1 ELSE PRC END),2) END as CURR_YR_QTY,
					CASE WHEN PRC IS NULL THEN NULL ELSE 
						ROUND(([OUTBND_USD_PREV_YR] / CASE WHEN PRC = 0 THEN 1 ELSE PRC END),2) END as PREV_YR_QTY,
					FISC_PD,
					FISC_YR,
					FISC_WK,
					FISC_WK_STRT_DT
								  FROM 
								  (
								  SELECT  DISTINCT 
								  				FORMAT([CASE_CODE],'000000000000000000') as [CASE_CODE],
								  				[DST_WHSE_NM] COLLATE DATABASE_DEFAULT as [DST_WHSE_NM],
								  				[RETL_CHN_NM] COLLATE DATABASE_DEFAULT as [RETL_CHN_NM],
								  				CAST([WEEK] as DATE) as [WEEK],
								  				([OUTBND_USD_CUR_YR]) as [OUTBND_USD_CUR_YR],
								  				([OUTBND_USD_PREV_YR]) as [OUTBND_USD_PREV_YR]
								  FROM [KNA_EXTERNAL].[INFOMETRICS].[INFOMETRICS_ACTLS_SALES] I WITH (NOLOCK)
--								  FROM [KNA_SALES].[STG].[INFOMETRICS_ACTLS_SALES] I WITH (NOLOCK)
								  WHERE I.[LOAD_DT]   > @LOAD_DT
								  AND (FORMAT([CASE_CODE],'000000000000000000') IS NOT NULL OR FORMAT([CASE_CODE],'000000000000000000')='000000000000000000')
								  )D
								  INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] UW  WITH (NOLOCK)
								  ON year([WEEK]) = FISC_YR 
								  AND [WEEK] BETWEEN FISC_WK_STRT_DT and FISC_WK_END_DT
								  LEFT JOIN [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] WITH (NOLOCK) 
								  ON D.[CASE_CODE]=MATRL_NBR 	
								  AND SALES_ORG='1001' 
								  AND  CHNL_IND ='08' 
								  AND D.WEEK BETWEEN [STRT_DT] AND [END_DT]
		)
	,cte2 as (
		SELECT  DISTINCT 
				[CASE_CODE],
				[DST_WHSE_NM] ,
				[RETL_CHN_NM] ,
				[WEEK],
				([OUTBND_USD_CUR_YR]) as [OUTBND_USD_CUR_YR],
				([OUTBND_USD_PREV_YR]) as [OUTBND_USD_PREV_YR],
				CURR_YR_QTY,
				PREV_YR_QTY,
				FISC_PD,
				FISC_YR,
				FISC_WK,
				NM.SHIP_LOC,
				NM.[LVL8_CUST_NBR],
				NM.[LVL8_CUST_NM] ,
				FISC_WK_STRT_DT
		FROM CTE1 I WITH (NOLOCK)
		LEFT JOIN CTE NM WITH (NOLOCK) 
		ON NM.[DIST_WHSE_NM] = I.[DST_WHSE_NM] 
		)



/* this MERGE JOIN Used to update if exist or insert if data not exist on INFOMETRICS_ACTL_SALES table based  on the MATERIAL and week */
     	
		MERGE KNA_SALES.[dbo].[INFOMETRICS_ACTL_SALES] T
		USING CTE2 S WITH (NOLOCK)
		ON  T.MATRL			     = S.[CASE_CODE] 
		AND T.SALES_DT           = S.[WEEK]
		AND	T.DIST_WHSE_NM	     = S.[DST_WHSE_NM] 
		AND	T.RETL_CHN_NM	     = S.[RETL_CHN_NM] 
		AND T.[PLN_TO_CUST]		 = S.[LVL8_CUST_NBR]
--		AND T.[PLN_TO_CUST_NM]   = S.[LVL8_CUST_NM]
		AND T.[SHIP_LOC]		 = S.SHIP_LOC 
		AND T.FISC_YR	         = S.FISC_YR
		AND T.FISC_PD	         = S.FISC_PD
		AND T.FISC_WK			 = S.FISC_WK
--		AND T.[FISC_WK_STRT_DT]	 = S.FISC_WK_STRT_DT
		WHEN MATCHED THEN UPDATE   SET
			    T.OUTBND_USD_CUR_YR	 = S.[OUTBND_USD_CUR_YR],
				T.OUTBND_USD_PREV_YR = S.[OUTBND_USD_PREV_YR],
				T.CURR_YR_QTY        = S.CURR_YR_QTY,
				T.PREV_YR_QTY        = S.PREV_YR_QTY,
				T.[DW_MOD_TS]        = GETDATE(),
				T.[DW_MOD_USR]       = USER_NAME()
		WHEN NOT MATCHED BY TARGET THEN INSERT(
				    [DIST_WHSE_NM]
				   ,[RETL_CHN_NM]
				   ,[MATRL]
				   ,[SALES_DT]
				   ,[PLN_TO_CUST]
				   ,[PLN_TO_CUST_NM]
				   ,[SHIP_LOC]
				   ,[OUTBND_USD_CUR_YR]
				   ,[OUTBND_USD_PREV_YR]
				   ,[FISC_YR]
				   ,[FISC_PD]
				   ,FISC_WK
				   ,FISC_WK_STRT_DT
				   ,CURR_YR_QTY
				   ,PREV_YR_QTY
				   ,[DW_CRE_TS]
				   ,[DW_CRE_USR]
				   ,[DW_MOD_TS]
				   ,[DW_MOD_USR]
				   ,[DW_DEL_BIT]
				   ,[DW_DEL_USR]
				   ,[DW_DEL_TS]
				   )
		VALUES  (
				    [DST_WHSE_NM]
				   ,[RETL_CHN_NM]
				   ,[CASE_CODE]
				   ,S.[WEEK]
				   ,[LVL8_CUST_NBR]
				   ,[LVL8_CUST_NM]
				   ,SHIP_LOC
				   ,[OUTBND_USD_CUR_YR]
				   ,[OUTBND_USD_PREV_YR]
		           ,[FISC_YR]
				   ,[FISC_PD]
				   ,FISC_WK
				   ,FISC_WK_STRT_DT
				   ,CURR_YR_QTY
				   ,PREV_YR_QTY
				   ,GETDATE()
				   ,USER_NAME()
				   ,NULL
				   ,NULL
				   ,0
				   ,NULL
				   ,NULL
				   );


 ----------End of exception handling------------------------
			----
IF (@@ERROR <> 0)
   BEGIN
   ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END


			
	





GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_NIELSEN_ACV_TURN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ============================================================================================
-- Author			:	Ramadhyani, Venkatesh\Chandars
-- Create date		:	08/16/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data to NIELSEN_ACV_TURN table	
-- Comments			:
-- =============================================================================================
CREATE PROCEDURE [dbo].[USP_LOAD_NIELSEN_ACV_TURN]  
AS 
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;
Declare @LOAD_DT datetime ;
SET @LOAD_DT = (SELECT COALESCE(MAX([DW_CRE_TS]),'2016-10-29') FROM [KNA_SALES].[dbo].[NIELSEN_ACV_TURN])

 ----------Start of exception handling--------------------------------------------  

--This CTE  gets [pctacv],[DMMACV],UnitsMMACV of MATERIAL based  on the FISC_YR and FISC_PD 
		;WITH CTE AS (
		SELECT  DISTINCT
		(REPLICATE('0', 18 - LEN(RTRIM(SKU))) + RTRIM(SKU))COLLATE DATABASE_DEFAULT  AS SKU,  
		(isnull([PCTACV],0)) as PCTACV,
		(isnull([DMMACV],0)) as DMMACV,
		(isnull(MMACV,0)) as UnitsMMACV ,
		(DATE) as DATE,
		FISC_PD,
		FISC_YR,
		FISC_WK	
		FROM [KG_SAS].[CONS].[PCTACVWK] WITH (NOLOCK)
		INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL]  VW
		ON   DATE BETWEEN VW.FISC_WK_STRT_DT AND VW.FISC_WK_END_DT
		WHERE SKU is not null  AND ([LOAD_DT] is NULL OR [LOAD_DT] > @LOAD_DT)
		)
/* this MERGE JOIN Used to update if exist or insert if data not exist on NEILSON_ACV_TURN table based  on the MATERIAL and week */

 
		MERGE [KNA_SALES].[dbo].[NIELSEN_ACV_TURN] T
		USING CTE S
		ON T.MATRL					= S.SKU 
		AND T.[ALL_COMDTY_VOL_DT]	= S.[DATE]
		AND T.[ALL_COMDTY_VOL_PCT]	=	S.PCTACV
		AND T.FISC_PD	  =	S.FISC_PD
		AND T.FISC_YR	  =	S.FISC_YR
		AND T.FISC_WK     = S.FISC_WK
		
		WHEN MATCHED THEN 
		UPDATE   SET
		T.[ALL_COMDTY_VOL_SALES_VAL]	  =	S.DMMACV,
		T.[ALL_COMDTY_VOL_SALES_QTY]	  =	S.UnitsMMACV,
		T.DW_MOD_TS	  =	GETDATE(),
		T.DW_MOD_USR  =	USER_NAME()
	
		WHEN NOT MATCHED BY TARGET THEN	INSERT (
			 MATRL
			,[ALL_COMDTY_VOL_PCT]
			,[ALL_COMDTY_VOL_SALES_VAL]
			,[ALL_COMDTY_VOL_SALES_QTY]
			,[ALL_COMDTY_VOL_DT]
			,FISC_PD
			,FISC_YR
			,FISC_WK
			,[DW_CRE_TS]
			,[DW_CRE_USR]
			,[DW_MOD_TS]
			,[DW_MOD_USR]
			,[DW_DEL_BIT]
			,[DW_DEL_USR]
			,[DW_DEL_TS]
			)
     VALUES (
			 S.[SKU]
			,[PCTACV]
			,[DMMACV]
			,UnitsMMACV
			,[DATE]
			,FISC_PD
			,FISC_YR
			,FISC_WK
			,GETDATE()
			,USER_NAME()
			,NULL
			,NULL
			,0
			,NULL
			,NULL
		);


 ----------End of exception handling------------------------
			----
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_DIR_CUST_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********************************************************************************
   NAME        : USP_LOAD_SPCLTY_DIR_CUST_FNL
   PURPOSE & 
   Description : This script will populate data into Direct customers table [STG].[SPCLTY_FNL_FACT]
                 sourcing it from [STG].[SPCLTY_FACT], [UVW_SPCLTY_DIM_XREF] and [dbo].[UVW_SPCLTY_MATRL_XREF] 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCLTY_DIR_CUST_FNL]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp1
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp2
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp3
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp4
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp5
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp6

DELETE FROM [STG].[SPCLTY_FNL_FACT];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select S.*,[CHNL_NM],[SOLD_TO_NM],[CHN],[PLN_TO],
[SUPR_PLN_TO],[ZN],[DSTR],[TERR],
MX.[FLD_CATG]
      ,MX.[CATG]
	  into #temp1
	  from [STG].[SPCLTY_FACT] S WITH (NOLOCK)
left join [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK) on  
S.[SOLDTO_NBR]=DX.[SOLD_TO]
left join [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK) on
S.BASE_MATRL=MX.[BASE_CASE_CODE]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select CC.*,DX.[CHNL_NM] 
INTO #temp2 
from [dbo].[UVW_SPCLTY_CHNL_CATG_FACT] CC WITH (NOLOCK)
left join (select distinct [CHNL_NBR],[CHNL_NM] 
from [dbo].[UVW_SPCLTY_DIM_XREF] WITH (NOLOCK) where 
[CHNL_NBR] is not null ) DX on
CC.CHNL=DX.[CHNL_NBR]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- This is to get the Value for TOTAL_INDIR_TRADE from [dbo].[INDIR_TRADE_CALC] table.
select SOLDTO_NBR, XREF.SOLD_TO_NM AS SOLDTO_NM, XREF.CHN as CHN_NM, CASE_CODE,FISC_YR, FISC_PD, sum(TOTL_INDIR_TRADE) AS TOTL_INDIR_TRADE, 
XREF.CHNL_NM, XREF.PLN_TO, XREF.SUPR_PLN_TO, XREF.ZN, XREF.DSTR, XREF.TERR, MAT_XREF.CATG as CATG,MAT_XREF.FLD_CATG
INTO #temp4
from [dbo].[INDIR_TRADE_CALC] CALC WITH (NOLOCK)
left outer join [dbo].[UVW_SPCLTY_MATRL_XREF] MAT_XREF WITH (NOLOCK) 
ON CALC.CASE_CODE = MAT_XREF.BASE_CASE_CODE
left outer join ( 
SELECT DISTINCT SOLD_TO, SOLD_TO_NM, CHN, PLN_TO, SUPR_PLN_TO, CHNL_NM, ZN, DSTR, TERR FROM [UVW_SPCLTY_DIM_XREF] WITH (NOLOCK)
WHERE CHNL_NBR IS NOT NULL) XREF
ON CALC.SOLDTO_NBR = XREF.SOLD_TO
and  XREF.CHN is not null
WHERE CALC.TOTL_INDIR_TRADE <> 0
group by SOLDTO_NBR, XREF.SOLD_TO_NM, XREF.CHN , CASE_CODE,FISC_YR, FISC_PD, XREF.CHNL_NM, XREF.PLN_TO, XREF.SUPR_PLN_TO, 
XREF.ZN, XREF.DSTR, XREF.TERR, MAT_XREF.CATG,MAT_XREF.FLD_CATG
-- This is to get the Value for TOTAL_INDIR_TRADE from [dbo].[INDIR_TRADE_CALC] table.

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- This is to get the Value for OSD_RMBSMT_AMT from KNA_SALES.DBO.SPCLTY_OSD_AMT table.
SELECT [SOLDTO_NBR], CASE WHEN [BASE_MATRL] IS NULL THEN [MATRL_NBR] ELSE [BASE_MATRL] END AS [BASE_MATRL], [FISC_YR], [FISC_PD], 
CASE WHEN SUM(OSD_RMBSMT_AMT) IS NULL THEN SUM(STLMNT_AMT) ELSE SUM(OSD_RMBSMT_AMT) END AS OSD_RMBSMT_AMT,
XREF.CHN AS CHN_NM, XREF.CHNL_NM, XREF.SOLD_TO_NM, XREF.PLN_TO, XREF.SUPR_PLN_TO, XREF.ZN, XREF.DSTR,XREF.TERR
INTO #temp5
FROM KNA_SALES.DBO.SPCLTY_OSD_AMT OSD  WITH (NOLOCK)
LEFT OUTER JOIN [UVW_SPCLTY_DIM_XREF] XREF  WITH (NOLOCK)
ON OSD.[SOLDTO_NBR] = XREF.SOLD_TO
--WHERE FISC_YR = 2016 AND FISC_PD IN (1,2,3)
WHERE FISC_YR >= 2013  
GROUP BY [SOLDTO_NBR], CASE WHEN [BASE_MATRL] IS NULL THEN [MATRL_NBR] ELSE [BASE_MATRL] END, [FISC_YR], [FISC_PD],
XREF.CHN , XREF.CHNL_NM, XREF.SOLD_TO_NM, XREF.PLN_TO, XREF.SUPR_PLN_TO,XREF.ZN,XREF.DSTR,XREF.TERR 
-- This is to get the Value for OSD_RMBSMT_AMT from KNA_SALES.DBO.SPCLTY_OSD_AMT table.

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- This is to get the Value for DUMMY_SKU_RMBSMT_AMT from KNA_SALES.DBO.SPCLTY_DUMMY_SKU_AMT table.
SELECT [SOLDTO_NBR], CASE WHEN [BASE_MATRL] IS NULL THEN [MATRL_NBR] ELSE [BASE_MATRL] END AS [BASE_MATRL], [FISC_YR], [FISC_PD], 
CASE WHEN SUM(DUMMY_SKU_RMBSMT_AMT) IS NULL THEN SUM(STLMNT_AMT) ELSE SUM(DUMMY_SKU_RMBSMT_AMT) END AS DUMMY_SKU_RMBSMT_AMT,
XREF.CHN AS CHN_NM, XREF.CHNL_NM, XREF.SOLD_TO_NM, XREF.PLN_TO, XREF.SUPR_PLN_TO, XREF.ZN, XREF.DSTR, XREF.TERR
INTO #temp6
FROM KNA_SALES.DBO.SPCLTY_DUMMY_SKU_AMT DUMMY WITH (NOLOCK)
LEFT OUTER JOIN [UVW_SPCLTY_DIM_XREF] XREF  WITH (NOLOCK)
ON DUMMY.[SOLDTO_NBR] = XREF.SOLD_TO
--WHERE FISC_YR = 2016 AND FISC_PD IN (1,2,3)
WHERE FISC_YR >= 2015 
GROUP BY [SOLDTO_NBR], CASE WHEN [BASE_MATRL] IS NULL THEN [MATRL_NBR] ELSE [BASE_MATRL] END, [FISC_YR], [FISC_PD],
XREF.CHN, XREF.CHNL_NM, XREF.SOLD_TO_NM, XREF.PLN_TO, XREF.SUPR_PLN_TO, XREF.ZN, XREF.DSTR, XREF.TERR 
-- This is to get the Value for DUMMY_SKU_RMBSMT_AMT from KNA_SALES.DBO.SPCLTY_DUMMY_SKU_AMT table.

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select [SOLDTO_NBR]
      ,[BASE_MATRL] 
      ,[GSV_DOL]
      ,[GSV_LBS]
      ,[GSV_CASES]
      ,[GSV_KGS]
      ,[FISC_YR]
      ,[FISC_PD]
      ,[TOTL_INVC]
      ,COALESCE([RMBSMT_AMT],0) as RMBSMT_AMT
      ,COALESCE([BILLBACK_AMT],0) as BILLBACK_AMT
      ,COALESCE([MATRL_EXPNS],0) as MATRL_EXPNS
      ,COALESCE([FIXD_EXPNS],0) as FIXD_EXPNS
      ,COALESCE([VAR_EXPNS],0) as VAR_EXPNS
	  ,CHNL_NM
	  ,[SOLD_TO_NM]
	  ,[CHN]
	  ,[PLN_TO]
	  ,[SUPR_PLN_TO]
	  ,[ZN]
	  ,[DSTR]
	  ,[TERR]
	  ,[FLD_CATG]
	  ,[CATG]
	  ,[SUMRY_ACCT]='NULL'
	  ,COST_CNT_AMT=0 
	  ,COALESCE(MATRL_EXPNS_CC,0) as MATRL_EXPNS_CC
	  ,COALESCE(WHSE_AMT,0) as WHSE_AMT
	  ,COALESCE(FRGHT_AMT,0) as FRGHT_AMT
	  ,TOTL_INDIR_TRADE=0
	  ,OSD_RMBSMT_AMT=0
	  ,DUMMY_SKU_RMBSMT_AMT=0
	  into #temp3
	  FROM #temp1
UNION 
SELECT [SOLDTO_NBR]=0
      ,[BASE_MATRL]=0
      ,[GSV_DOL]=0
      ,[GSV_LBS]=0
      ,[GSV_CASES]=0
      ,[GSV_KGS]=0
      ,[FISC_YR]
      ,[FISC_PD]
      ,[TOTL_INVC]=0
      ,[RMBSMT_AMT]=0
      ,[BILLBACK_AMT]=0
      ,[MATRL_EXPNS]=0
      ,[FIXD_EXPNS]=0
      ,[VAR_EXPNS]=0,
	  CHNL_NM,[SOLDTO_NM]=NULL,[CHN]=NULL,[PLAN_TO]=NULL,
[SUPER_PLANTO]=NULL,[ZN]=NULL,[DSTR]=NULL,[TERR]=NULL,
[FLD_CATG]=NULL
      ,CATG,[SUMRY_ACCT],COALESCE(FNL_AMT,0),MATRL_EXPNS_CC=0,
	  WHSE_AMT=0,FRGHT_AMT=0, TOTL_INDIR_TRADE=0, OSD_RMBSMT_AMT=0, DUMMY_SKU_RMBSMT_AMT=0
	  from #temp2 t	  

UNION 
SELECT [SOLDTO_NBR]
      ,CASE_CODE
      ,[GSV_DOL]=0
      ,[GSV_LBS]=0
      ,[GSV_CASES]=0
      ,[GSV_KGS]=0
      ,[FISC_YR]
      ,[FISC_PD]
      ,[TOTL_INVC]=0
      ,[RMBSMT_AMT]=0
      ,[BILLBACK_AMT]=0
      ,[MATRL_EXPNS]=0
      ,[FIXD_EXPNS]=0
      ,[VAR_EXPNS]=0,
	  CHNL_NM,[SOLDTO_NM],CHN_NM,[PLN_TO],
[SUPR_PLN_TO],[ZN],[DSTR],[TERR],
[FLD_CATG]
      ,CATG,[SUMRY_ACCT]='NULL',FNL_AMT=0,MATRL_EXPNS_CC=0,
	  WHSE_AMT=0,FRGHT_AMT=0, TOTL_INDIR_TRADE, OSD_RMBSMT_AMT=0, DUMMY_SKU_RMBSMT_AMT=0
	  from #temp4

UNION
SELECT [SOLDTO_NBR]
      ,[BASE_MATRL]
      ,[GSV_DOL]=0
      ,[GSV_LBS]=0
      ,[GSV_CASES]=0
      ,[GSV_KGS]=0
      ,[FISC_YR]
      ,[FISC_PD]
      ,[TOTL_INVC]=0
      ,[RMBSMT_AMT]=0
      ,[BILLBACK_AMT]=0
      ,[MATRL_EXPNS]=0
      ,[FIXD_EXPNS]=0
      ,[VAR_EXPNS]=0,
	  CHNL_NM,[SOLD_TO_NM],CHN_NM,[PLN_TO],
[SUPR_PLN_TO],[ZN],[DSTR],[TERR],
[FLD_CATG]=NULL
      ,CATG=NULL,[SUMRY_ACCT]='NULL',FNL_AMT=0,MATRL_EXPNS_CC=0,
	  WHSE_AMT=0,FRGHT_AMT=0, TOTL_INDIR_TRADE=0, COALESCE(OSD_RMBSMT_AMT,0), DUMMY_SKU_RMBSMT_AMT=0
	  from #temp5

UNION
SELECT [SOLDTO_NBR]
      ,BASE_MATRL
      ,[GSV_DOL]=0
      ,[GSV_LBS]=0
      ,[GSV_CASES]=0
      ,[GSV_KGS]=0
      ,[FISC_YR]
      ,[FISC_PD]
      ,[TOTL_INVC]=0
      ,[RMBSMT_AMT]=0
      ,[BILLBACK_AMT]=0
      ,[MATRL_EXPNS]=0
      ,[FIXD_EXPNS]=0
      ,[VAR_EXPNS]=0,
	  CHNL_NM,[SOLD_TO_NM],CHN_NM,[PLN_TO],
[SUPR_PLN_TO],[ZN],[DSTR],[TERR],
[FLD_CATG]=NULL
      ,CATG=NULL,[SUMRY_ACCT]='NULL',FNL_AMT=0,MATRL_EXPNS_CC=0,
	  WHSE_AMT=0,FRGHT_AMT=0, TOTL_INDIR_TRADE=0, OSD_RMBSMT_AMT=0, COALESCE(DUMMY_SKU_RMBSMT_AMT,0)
	  from #temp6
	  
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  INSERT INTO [STG].[SPCLTY_FNL_FACT](
	  [SOLDTO_NBR]
      ,[BASE_MATRL]
      ,[GSV_DOL]
      ,[GSV_LBS]
      ,[GSV_CASES]
      ,[GSV_KGS]
      ,[FISC_YR]
      ,[FISC_PD]
      ,[TOTL_INVC]
      ,[RMBSMT_AMT]
      ,[BILLBACK_AMT]
      ,[MATRL_EXPNS]
      ,[FIXD_EXPNS]
      ,[VAR_EXPNS]
      ,[CHNL]
      ,[SOLDTO_NM]
      ,[CHN]
      ,[PLN_TO]
      ,[SUPER_PLANTO]
      ,[ZN]
      ,[DSTR]
      ,[TERR]
      ,[FLD_CATG]
      ,[CATG]
      ,[SUMRY_ACCT]
      ,[COST_CTR_AMT]
	  ,[MATRL_EXPNS_CC]
	  ,[WHSE_AMT]
	  ,[FRGHT_AMT]
	  ,[TOTL_INDIR_TRADE]
	  ,[OSD_RMBSMT_AMT]
	  ,[DUMMY_SKU_RMBSMT_AMT]
	  ,LOAD_DT)

SELECT *,cast(getdate() as date ) AS LOAD_DT FROM #temp3

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_INDIR_CUST_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****************************************************************************************************************************************************************************************
   NAME        : USP_LOAD_SPCLTY_INDIR_CUST_FNL
   PURPOSE & 
   Description : This script will populate data into Indirect customers table sourcing it from Informetrics [dbo].[INDIR_TRADE_CALC] table.                       
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017        USCV1S08                1. Initial Version
   2.0       03/26/2018		   USCAKK02				   2. Added Material Description from UVW_SPCLTY_MATRL_XREF view and mapped to [STG].[SPCLTY_INDIR_CUST_FNL] table (INC0717993).

*****************************************************************************************************************************************************************************************/

CREATE PROCEDURE  [dbo].[USP_LOAD_SPCLTY_INDIR_CUST_FNL]
AS
BEGIN 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp1') IS NOT NULL DROP TABLE #temp1
IF OBJECT_ID('tempdb..#temp2') IS NOT NULL DROP TABLE #temp2

DELETE FROM [STG].[SPCLTY_INDIR_CUST_FNL];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

SELECT DISTINCT MATRL_NBR, FLD_CATG, CATG, MATRL_DESC				--Added Material Description as per INC0717993
		INTO #temp1
		FROM [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK)
		INNER JOIN [dbo].[INDIR_TRADE_CALC] ITC WITH (NOLOCK)
		ON ITC.CASE_CODE=MX.[MATRL_NBR]
		WHERE MATRL_NBR IS NOT NULL



		/* This is to fetch the distinct records from UVW_SPCLTY_MATRL_XREF */

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

SELECT DISTINCT SOLD_TO,[CHN], CASE WHEN [CHN]='FOODSERVICE UNASSIGNED' THEN 'CONVENIENCE' ELSE [CHNL_NM] END AS [CHNL_NM]
		INTO #temp2
		FROM [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK)
		INNER JOIN [dbo].[INDIR_TRADE_CALC] ITC WITH (NOLOCK)
		ON ITC.SOLDTO_NBR=DX.SOLD_TO 
		/* This is to fetch the distinct records from UVW_SPCLTY_DIM_XREF */

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


INSERT INTO [STG].[SPCLTY_INDIR_CUST_FNL](
	 RETL_CHN_NM
	, CASE_CODE
	, FISC_YR
	, FISC_QTR
	, FISC_PD
	, [CASE]
	, TOTL_LBS
	, TOTL_KGS
	, TOTL_MATRL_EXPNS
	, TOTL_FIXD_EXPNS
	, TOTL_VARNC_EXPNS
	, TOTL_GSV
	, BASE_CASE_CODE
	, FLD_CATG
	, CATG
	, CHN
	, CHNL_NM
	, TOTL_INDIR_TRADE
	, LOAD_DT
	, MATRL_DESC )														--Added Material Description as per INC0717993							
SELECT  
     ITC.RETL_CHN_NM
	, ITC.CASE_CODE
	, ITC.FISC_YR
	, ITC.FISC_QTR
	, ITC.FISC_PD
	, ITC.CSE as [CASE]
	, COALESCE(ITC.TOTL_LBS,0) as TOTL_LBS
	, COALESCE(ITC.TOTL_KGS,0) as TOTL_KGS
	, COALESCE(ITC.TOTL_MATRL_EXPNS,0) as TOTL_MATRL_EXPNS
	, COALESCE(ITC.TOTL_FIXD_EXPNS,0) as TOTL_FIXD_EXPNS
	, COALESCE(ITC.TOTL_VARNC_EXPNS,0) as TOTL_VARNC_EXPNS
	, COALESCE(ITC.TOTL_GSV,0) as TOTL_GSV
	, MX.MATRL_NBR as BASE_CASE_CODE
	, MX.FLD_CATG as FLD_CATG
	, MX.CATG as CATG
	, DX.CHN as CHN
	, DX.CHNL_NM as CHNL_NM
	, COALESCE(ITC.TOTL_INDIR_TRADE,0) as TOTL_INDIR_TRADE
	, cast(getdate() as date ) AS LOAD_DT
	, MX. MATRL_DESC as MATRL_DESC										--Added Material Description as per INC0717993
		FROM 
		(SELECT SOLDTO_NBR,RETL_CHN_NM, CASE_CODE, FISC_YR, FISC_QTR, FISC_PD
		, SUM(CSE) AS CSE, SUM(TOTL_LBS) AS TOTL_LBS, SUM(TOTL_KGS) AS TOTL_KGS, SUM(TOTL_MATRL_EXPNS) AS TOTL_MATRL_EXPNS
		, SUM(TOTL_FIXD_EXPNS) AS TOTL_FIXD_EXPNS, SUM(TOTL_VARNC_EXPNS) AS TOTL_VARNC_EXPNS, SUM(OUTBND_DOL) AS TOTL_GSV, SUM(TOTL_INDIR_TRADE) AS TOTL_INDIR_TRADE
		FROM [dbo].[INDIR_TRADE_CALC] WITH (NOLOCK) 
		GROUP BY SOLDTO_NBR,RETL_CHN_NM, CASE_CODE, FISC_YR, FISC_QTR, FISC_PD
		/* Added the group by to fetch the aggregated records from Indirect Trade Calculation Table */) ITC
		LEFT OUTER JOIN 
		#temp1 MX ON
        ITC.CASE_CODE=MX.[MATRL_NBR]
		LEFT OUTER JOIN 
		#temp2 DX ON 
		ITC.SOLDTO_NBR=DX.SOLD_TO

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_INFMETR_SRC_KSC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/**********************************************************************************
  NAME        : USP_LOAD_SPCLTY_INFMETR_SRC_KSC
   PURPOSE & 
   Description : This script will populate data into KNA_SALES.DBO.INFORMETRICS_SRC_KSC table 
                 sourcing it from KNA_EXTERNAL.dbo.INFOMETRICS_ACTLS_SALES , KG_VIEWS.KG.UVW_FISC_CAL and KNA_SALES.DBO.INDIR_TRADE_CALC
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017      USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCLTY_INFMETR_SRC_KSC]
AS
BEGIN 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

DELETE FROM KNA_SALES.DBO.INFORMETRICS_SRC_KSC;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
         
INSERT INTO KNA_SALES.DBO.INFORMETRICS_SRC_KSC 
  select  SALES.DST_WHSE_NM,SALES.RETL_CHN_NM,SALES.CASE_CODE,SALES.CATG_CODE,SALES.SUB_CATG_CODE,SALES.SUB_BRAND,
CAL.FISC_YR,CAL.FISC_PD,SUM(SALES.OUTBND_USD_CUR_YR) AS OUTBND_DOL,SALES.KLG_WHSE_NBR AS SOLDTO_NBR,SALES.LOAD_DT
from KNA_EXTERNAL.INFOMETRICS.INFOMETRICS_ACTLS_SALES AS SALES WITH (NOLOCK) 
INNER JOIN KG_VIEWS.KG.UVW_FISC_CAL AS CAL WITH (NOLOCK) 
ON SALES.WEEK BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT AND
LOAD_DT > 
 (SELECT CASE WHEN MAX(DW_CRE_DT) IS NULL THEN cast('2017-01-01' as datetime2) ELSE MAX(DW_CRE_DT) END 
 FROM KNA_SALES.DBO.INDIR_TRADE_CALC WITH (NOLOCK))
GROUP BY DST_WHSE_NM, RETL_CHN_NM, CASE_CODE,CATG_CODE,SUB_CATG_CODE,SUB_BRAND,FISC_YR, FISC_PD,SALES.KLG_WHSE_NBR,LOAD_DT

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_SEG_SRC_BW_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/**********************************************************************************
   NAME        : USP_LOAD_SPCLTY_SEG_SRC_BW_CALC
   PURPOSE & 
   Description : This script will populate data into Staging table called [KNA_SALES].[STG].[SEG_BW_SRC] 
                 sourcing it from BW tables such as [KNA_BW].[dbo].[OHZOH_B_IND] by excluding data from KNA_EXTERNAL.[USER_FIN].BB_EXCL_DISTBR)
				 and KNA_EXTERNAL.[USER_FIN].BB_EXCL_OPR) based on SOLD_TO and SHIP_TO.
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       03/23/2018         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCLTY_SEG_SRC_BW_CALC]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#tempx') IS NOT NULL DROP TABLE #tempx
IF OBJECT_ID('tempdb..#tempy') IS NOT NULL DROP TABLE #tempy

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

--#TRUNCATE THE [KNA_SALES].[STG].[SEG_BW_SRC] BEFORE LOAD#

DELETE FROM [KNA_SALES].[STG].[SEG_BW_SRC];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

--#LOADING ALL THE RECORDS INTO TEMP TABLE FROM BW SOURCE - [KNA_BW].[dbo].[OHZOH_B_IND] #

SELECT *  INTO #tempx FROM [KNA_BW].[dbo].[OHZOH_B_IND] WITH (NOLOCK) 
	 WHERE [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBCL' AND [/B299/S_IPNETWR]!=0 
	 AND SUBSTRING(CAST([/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) >= 2016

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # CREATING TEMP TABLE TO CALCULATE SETTLEMENT AMOUNT AND ESTMATED GSV #
   
SELECT  
     HIER.CUST_GRP AS SEG_DESC,
	 IND.[SOLD_TO] AS [SOLD_TO],
	 IND.[SHIP_TO] AS SHIP_TO,
	 IND.[MATERIAL] AS MATRL,
	 IND.FISC_YR AS FISC_YR,
     IND.FISC_PD AS FISC_PD,
	 CAL.FISC_QTR AS FISC_QTR,
	 SUM(IND.H_CASE) - SUM(IND.S_CASE) AS [CASE],
	 MR.NTGEW AS LBS,
	 CASE WHEN MR.ZZNTGEW is null then MR.NTGEW*0.45392 ELSE MR.ZZNTGEW END AS KGS,
	 SUM(H_S_IPNETWR) - SUM(C_S_IPNETWR) AS STLMT_AMT,
     SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL) AS ESTMTD_GSV,
	 'BW SOURCE' AS SRC_NM
	 into #tempy
	 FROM
	 ( SELECT 
	 [SOLD_TO],
	 [SHIP_TO],
	 REPLACE(LTRIM(REPLACE([MATERIAL], '0', ' ')), ' ', '0') AS [MATERIAL],
	 [/BIC/ZPRF_PER],
	 SUBSTRING(CAST([/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS FISC_YR,
     SUBSTRING(CAST([/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS FISC_PD,
	 COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM([/B299/S_KWMENG]) END ,0) AS H_CASE,
     COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM([/B299/S_KWMENG]) END ,0) AS S_CASE,
	 COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_S_IPNETWR,
     COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_S_IPNETWR,
     COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM(SUBTOTAL_1) END ,0) AS H_SUBTOTAL,
     COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM(SUBTOTAL_1) END ,0) AS C_SUBTOTAL
     FROM #tempx 
	 where [SOLD_TO] NOT IN (SELECT [Distributor #] FROM KNA_EXTERNAL.[USER_FIN].BB_EXCL_DISTBR)
	 and [SHIP_TO] NOT IN (SELECT [Operator #] FROM KNA_EXTERNAL.[USER_FIN].BB_EXCL_OPR)
	 GROUP BY
	 [SOLD_TO],
	 [SHIP_TO],
	 REPLACE(LTRIM(REPLACE([MATERIAL], '0', ' ')), ' ', '0'),
	 [/BIC/ZPRF_PER],
	 SUBSTRING(CAST([/BIC/ZPRF_PER] AS VARCHAR(8)),1,4),
     SUBSTRING(CAST([/BIC/ZPRF_PER] AS VARCHAR(8)),6,2),
	 [/B299/S_DCIND]) IND
	 LEFT OUTER JOIN KNA_ECC.dbo.MARA MR WITH (NOLOCK)
	 ON REPLACE(LTRIM(REPLACE(IND.[MATERIAL], '0', ' ')), ' ', '0')  = REPLACE(LTRIM(REPLACE(MR.MATNR, '0', ' ')), ' ', '0') 
     AND MR.MEINS='CS'
	 LEFT OUTER JOIN (SELECT DISTINCT CUST_GRP, SOLD_TO FROM KNA_SALES.dbo.SPCLTY_CUST_HIER WITH (NOLOCK)) HIER  
	 ON HIER.SOLD_TO COLLATE DATABASE_DEFAULT = IND.[SHIP_TO] COLLATE DATABASE_DEFAULT
	 LEFT OUTER JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WITH (NOLOCK) GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
     ON CAL.FISC_YR = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)
     AND CAL.FISC_PD = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) 
	 GROUP BY 
	 HIER.CUST_GRP,
	 IND.[SOLD_TO],
	 IND.[SHIP_TO],
	 IND.[MATERIAL],
	 IND.FISC_YR,
     IND.FISC_PD,
	 CAL.FISC_QTR,
	 MR.NTGEW,
	 CASE WHEN MR.ZZNTGEW is null then MR.NTGEW*0.45392 ELSE MR.ZZNTGEW END

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # INSERTING ALL THE RECORDS FROM TEMP TABLE INTO [KNA_SALES].[STG].[SEG_BW_SRC] #

INSERT INTO [KNA_SALES].[STG].[SEG_BW_SRC]
(   [SEG_DESC],
	[SOLD_TO],
	[OPR_ID],
	[MATRL_ID],
	[PD],
	[QTR],
	[YR],
	[SALES_CASE_QTY_UOM],
	[SALES_LBS_QTY_UOM],
	[SALES_KGS_QTY_UOM],
	[SALES_GSV_QTY_UOM], 
	[TOTL_DOL],
	[SRC_NM])
	SELECT 
	[SEG_DESC],
	[SOLD_TO],
	[SHIP_TO],
	[MATRL],
	[FISC_PD],
	[FISC_QTR],
	[FISC_YR],
	[CASE],
	[LBS] * [CASE] AS [LBS],
	[KGS] * [CASE] AS [KGS],
	[ESTMTD_GSV], 
	[STLMT_AMT],
	[SRC_NM] FROM #tempy
	
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END













GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_SEG_SRC_JOYWAVE_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/**********************************************************************************
   NAME        : USP_LOAD_SPCLTY_SEG_SRC_JOYWAVE_CALC
   PURPOSE & 
   Description : This script will populate data into Staging table called [KNA_SALES].[STG].[SEG_JOYWAVE_SRC] 
                 sourcing it from JOYWAVE table [KNA_SALES].[STG].[SPCLTY_GSV_FACT]. Match records from [KNA_EXTERNAL].[USER_FIN].[JW_SOLDTO_XREF] and 
				 [KNA_EXTERNAL].[USER_FIN].[JW_MATERIAL_XREF] and join the same with [KNA_SALES].[STG].[SPCLTY_GSV_FACT] table to pull other required attributes. 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       03/23/2018      USCV1S08                1. Initial Version
**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCLTY_SEG_SRC_JOYWAVE_CALC]
AS
BEGIN 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

--#TRUNCATE THE [KNA_SALES].[STG].[SEG_JOYWAVE_SRC] BEFORE LOAD#

DELETE FROM [KNA_SALES].[STG].[SEG_JOYWAVE_SRC];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # INSERTING ALL THE RECORDS FROM [KNA_SALES].[STG].[SPCLTY_GSV_FACT] INTO [KNA_SALES].[STG].[SEG_JOYWAVE_SRC] #

INSERT INTO [KNA_SALES].[STG].[SEG_JOYWAVE_SRC]
	( SEG
	 , SOLD_TO
	 , OPR_ID
	 , MATRL_ID
	 , PD
	 , QTR
	 , YR
	 , SALES_CASE_QTY_UOM
	 , SALES_LBS_QTY_UOM
	 , SALES_KGS_QTY_UOM
	 , SALES_GSV_QTY_UOM
	 , SRC_NM)
	SELECT 
     XREF.[Segment] AS SEG
	, XREF.[Sold To] AS SOLD_TO
	, XREF.[Sold To] AS OPR_ID
	, CAST(GSV.[BASE_MATRL] AS BIGINT) AS MATRL_ID 
	, GSV.FISC_PD AS PD
	, GSV.FISC_QTR AS QTR
    , GSV.FISC_YR AS YR
	, GSV.GSV_CASES AS [CASE]
	, GSV.GSV_LBS AS [LBS]
	, GSV.GSV_KGS AS [KGS]
	, GSV.GSV_DOL AS [GSV]
	, 'JOYWAVE SOURCE' AS SRC_NM
	FROM [KNA_EXTERNAL].[USER_FIN].[JW_SOLDTO_XREF] XREF WITH (NOLOCK)
    LEFT JOIN (SELECT SOLDTO_NBR,BASE_MATRL,FISC_PD,FISC_QTR,FISC_YR,GSV_CASES,GSV_LBS,
	GSV_KGS,GSV_DOL FROM [KNA_SALES].[STG].[SPCLTY_GSV_FACT] WITH (NOLOCK) WHERE FISC_YR >= 2016) GSV
	ON GSV.SOLDTO_NBR = XREF.[Sold To]		

	UNION
	
	SELECT  
     MAT_XREF.[Segment] AS SEG
	, GSV.[SOLDTO_NBR] AS SOLD_TO
	, GSV.[SOLDTO_NBR] AS OPR_ID
	, MAT_XREF.[Material #] AS MATRL_ID 
	, GSV.FISC_PD AS PD
    , GSV.FISC_QTR AS QTR
    , GSV.FISC_YR AS YR
	, GSV.GSV_CASES AS [CASE]
	, GSV.GSV_LBS AS [LBS]
	, GSV.GSV_KGS AS [KGS]
	, GSV.GSV_DOL AS [GSV]
	, 'JOYWAVE SOURCE' AS SRC_NM
	FROM [KNA_EXTERNAL].[USER_FIN].[JW_MATERIAL_XREF] MAT_XREF WITH (NOLOCK)
    LEFT JOIN (SELECT SOLDTO_NBR,BASE_MATRL,FISC_PD,FISC_QTR,FISC_YR,GSV_CASES,GSV_LBS,
	GSV_KGS,GSV_DOL FROM [KNA_SALES].[STG].[SPCLTY_GSV_FACT] WITH (NOLOCK) WHERE FISC_YR >= 2016) GSV
	ON GSV.BASE_MATRL = MAT_XREF.[Material #] 
	

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CONCAT 0 IN PERIOD #

   UPDATE [KNA_SALES].[STG].[SEG_JOYWAVE_SRC]
   SET PD = CONCAT('0',PD)
   WHERE LEN(PD) = 1

   	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END















GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_SEG_TIBERSOFT_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







/**********************************************************************************
   NAME        : USP_LOAD_SPCLTY_SEG_TIBERSOFT_FNL
   PURPOSE & 
   Description : This script will populate data into [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] table 
                 sourcing it from the combination of Source 1 TIBERSOFT Table [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC], Source 2 (JOYWAVE Table [KNA_SALES].[STG].[SEG_JOYWAVE_SRC]) 
				 and Source 3 BW table [KNA_SALES].[STG].[SEG_BW_SRC].
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       03/23/2018      USCV1S08                1. Initial Version
**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCLTY_SEG_TIBERSOFT_FNL]
AS
BEGIN 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp1') IS NOT NULL DROP TABLE #temp1

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

--#TRUNCATE THE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] BEFORE LOAD#

DELETE FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # INSERTING ALL THE RECORDS INTO [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] BY COMBINING ALL THE DATA FROM 
-- Source 1 TIBERSOFT Table [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC], Source 2 (JOYWAVE Table [KNA_SALES].[STG].[SEG_JOYWAVE_SRC]) 
-- and Source 3 BW table [KNA_SALES].[STG].[SEG_BW_SRC]

INSERT INTO [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
    (  SEG
	 , SOLD_TO
	 , OPR_ID
	 , MATRL_ID
	 , PD
	 , QTR
	 , YR
	 , SALES_CASE_QTY_UOM
	 , SALES_LBS_QTY_UOM
	 , SALES_KGS_QTY_UOM
	 , SALES_GSV_QTY_UOM
	 , BILLBACK_DOL
     , REBT_DOL
     , TOTL_DOL
	 , SRC_NM 
	 , RMBSMT_AMT)
	 ( SELECT 
	   SEG
	 , SOLD_TO
	 , OPR_ID
	 , MATRL_ID
	 , PD
	 , QTR
	 , YR
	 , SALES_CASE_QTY_UOM
	 , SALES_LBS_QTY_UOM
	 , SALES_KGS_QTY_UOM
	 , SALES_GSV_QTY_UOM
	 , BILLBACK_DOL
     , REBT_DOL
     , TOTL_DOL
	 , SRC_NM
	 , '0' AS RMBSMT_AMT FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC] 

	  UNION

	  SELECT
	  SEG
	 , SOLD_TO
	 , OPR_ID
	 , MATRL_ID
	 , PD
	 , QTR 
	 , YR
	 , SALES_CASE_QTY_UOM
	 , SALES_LBS_QTY_UOM
	 , SALES_KGS_QTY_UOM
	 , SALES_GSV_QTY_UOM
	 , '0' AS BILLBACK_DOL
     , '0' AS REBT_DOL
     , '0' AS TOTL_DOL
	 , SRC_NM 
	 , '0' AS RMBSMT_AMT FROM [KNA_SALES].[STG].[SEG_JOYWAVE_SRC]
	 
	 UNION

	 SELECT 
	 SEG_DESC
	 , SOLD_TO
	 , OPR_ID
	 , MATRL_ID
	 , PD
	 , QTR 
	 , YR
	 , SALES_CASE_QTY_UOM
	 , SALES_LBS_QTY_UOM
	 , SALES_KGS_QTY_UOM
	 , SALES_GSV_QTY_UOM
	 , TOTL_DOL AS BILLBACK_DOL
     , '0' AS REBT_DOL
	 , '0' AS TOTL_DOL
	 , SRC_NM 
	 , '0' AS RMBSMT_AMT FROM [KNA_SALES].[STG].[SEG_BW_SRC] ) ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # CREATING TEMP TABLE FOR REIMBURSEMENT DATA FROM [KNA_BW].[dbo].[OHZOH_B_IND] #

SELECT [SHIP_TO] AS OPR_ID
	 , SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS PD
	 , SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS YR
	 , SUM(ZRKF_BBRB_2_NETWR) + SUM(ZRKF_BBVR_C_NETWR) AS RMBSMT_AMT
INTO  #temp1
FROM 
	( SELECT IND_SUB.[SHIP_TO], IND_SUB.[/BIC/ZPRF_PER],
		   SUM(IND_SUB.H_ZRKF_BBRB_2_NETWR) - SUM(IND_SUB.C_ZRKF_BBRB_2_NETWR) AS ZRKF_BBRB_2_NETWR,
		   SUM(IND_SUB.H_ZRKF_BBVR_C_NETWR) - SUM(IND_SUB.C_ZRKF_BBVR_C_NETWR) AS ZRKF_BBVR_C_NETWR
	FROM
		( SELECT
			[SHIP_TO],
			[/BIC/ZPRF_PER],
			COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBRB_2_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBRB_2_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBVR_C_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBVR_C_NETWR
		FROM [KNA_BW].[dbo].[OHZOH_B_IND] IND WITH (NOLOCK) 
		INNER JOIN ( SELECT DISTINCT OPR_ID, YR, PD
		FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] WITH (NOLOCK) )FNL
		ON IND.[SHIP_TO] COLLATE DATABASE_DEFAULT = FNL.OPR_ID COLLATE DATABASE_DEFAULT
		AND SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) COLLATE DATABASE_DEFAULT = FNL.YR COLLATE DATABASE_DEFAULT
		AND SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) COLLATE DATABASE_DEFAULT = FNL.PD COLLATE DATABASE_DEFAULT
		WHERE [/B299/S_TYPE] IN ('BBRB','BBVR') AND FUND NOT LIKE '%OSD%'
		GROUP BY 
		[SHIP_TO],
		[/BIC/ZPRF_PER],
		[/B299/S_DCIND],
		[/B299/S_SSTAT],
		[/B299/S_ASTAT],
		[/B299/S_TYPE]
		) IND_SUB 

	GROUP BY IND_SUB.[SHIP_TO], IND_SUB.[/BIC/ZPRF_PER]
	) IND
	GROUP BY IND.[SHIP_TO], IND.[/BIC/ZPRF_PER] ;
	
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
	 
-- # INSERTING REIMBURSEMENT DATA FROM [KNA_BW].[dbo].[OHZOH_B_IND] #

INSERT INTO [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
    (  SEG
	 , SOLD_TO
	 , OPR_ID
	 , MATRL_ID
	 , PD
	 , QTR
	 , YR
	 , SALES_CASE_QTY_UOM
	 , SALES_LBS_QTY_UOM
	 , SALES_KGS_QTY_UOM
	 , SALES_GSV_QTY_UOM
	 , BILLBACK_DOL
     , REBT_DOL
     , TOTL_DOL
	 , SRC_NM 
	 , RMBSMT_AMT)	 
	  SELECT
	  NULL AS SEG
	 , NULL AS SOLD_TO
	 , [OPR_ID] AS OPR_ID
	 , NULL AS MATRL_ID
	 , PD AS FISC_PD
	 , NULL AS FISC_QTR 
	 , YR AS FISC_YR
	 , '0' AS [CASE]
	 , '0' AS LBS
	 , '0' AS KGS
	 , '0' AS GSV
	 , '0' AS BILLBACK_DOL
     , '0' AS REBT_DOL
     , '0' AS TOTL_DOL
	 , 'RMBSMT_AMT' AS SRC_NM 
	 , RMBSMT_AMT FROM #temp1 ;
	
	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CONCAT 0 IN PERIOD #

   UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
   SET PD = CONCAT('0',PD)
   WHERE LEN(PD) = 1 and SRC_NM  = 'RMBSMT_AMT' ;

   	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CALCULATE THE QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] #

   UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
   SET QTR = CAL.FISC_QTR 
   FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT  WITH (NOLOCK) 
   LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = TGT.YR 
AND CAL.FISC_PD = TGT.PD
WHERE SRC_NM  = 'RMBSMT_AMT' ;

   IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CALCULATE MATRL_EXPNS, FIXD_EXPNS, VAR_EXPNS FROM [KNA_SALES].[dbo].[SPCLTY_COST_ESTIMT] #

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET MATRL_EXPNS = COALESCE(SRC_YR.[MATRL_EXP_CS],SRC.[MATRL_EXP_CS],0) * TGT.SALES_CASE_QTY_UOM
, FIXD_EXPNS = COALESCE(SRC_YR.[FIXD_OH_CS],SRC.[FIXD_OH_CS],0) * TGT.SALES_CASE_QTY_UOM
, VAR_EXPNS = COALESCE(SRC_YR.[VAR_OH_CS],SRC.[VAR_OH_CS],0) * TGT.SALES_CASE_QTY_UOM
FROM  [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT WITH (NOLOCK)
LEFT OUTER JOIN 
( SELECT MATNR, FISC_YR, [MATRL_EXP_CS], [FIXD_OH_CS], [VAR_OH_CS]
FROM [KNA_SALES].[dbo].[SPCLTY_COST_ESTIMT] WITH (NOLOCK) )SRC_YR 
ON REPLACE(LTRIM(REPLACE(SRC_YR.MATNR, '0', ' ')), ' ', '0') = REPLACE(LTRIM(REPLACE(TGT.MATRL_ID, '0', ' ')), ' ', '0')  
AND SRC_YR.FISC_YR = TGT.YR
LEFT OUTER JOIN 
( SELECT MATNR, FISC_YR, [MATRL_EXP_CS], [FIXD_OH_CS], [VAR_OH_CS]
, ROW_NUMBER() OVER (PARTITION BY MATNR ORDER BY FISC_YR DESC) AS R_NUM
FROM [KNA_SALES].[dbo].[SPCLTY_COST_ESTIMT] WITH (NOLOCK) )SRC 
ON REPLACE(LTRIM(REPLACE(SRC.MATNR, '0', ' ')), ' ', '0') = REPLACE(LTRIM(REPLACE(TGT.MATRL_ID, '0', ' ')), ' ', '0')  
AND SRC.R_NUM = 1 ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # UPDATE TO CALCULATE THE FRGHT_AMT, TOTL_WHSE_AMT FROM [KNA_SALES].[STG].[SPCLTY_FNL_FACT] #

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET FRGHT_AMT = COALESCE(FACT.FRGHT * TGT.SALES_LBS_QTY_UOM,0)
, TOTL_WHSE_AMT = COALESCE(FACT.WHSE * TGT.SALES_LBS_QTY_UOM,0)
FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT WITH (NOLOCK) 
LEFT OUTER JOIN (SELECT [SOLDTO_NBR] ,[BASE_MATRL],[FISC_YR]
, SUM(FRGHT_AMT)/CASE WHEN (GSV_LBS) = 0 THEN 0 ELSE  SUM(GSV_LBS) END AS FRGHT
, SUM(WHSE_AMT)/CASE WHEN (GSV_LBS) = 0 THEN 0 ELSE  SUM(GSV_LBS) END AS WHSE
FROM [KNA_SALES].[STG].[SPCLTY_FNL_FACT] WITH (NOLOCK) 
WHERE GSV_LBS != 0 AND (CAST(GSV_LBS AS VARCHAR(30)) NOT LIKE '0.%' OR CAST(GSV_LBS AS VARCHAR(20)) NOT LIKE '-0.%')
GROUP BY [SOLDTO_NBR] ,[BASE_MATRL],[FISC_YR],GSV_LBS) FACT
ON TGT.SOLD_TO = FACT.[SOLDTO_NBR]
AND TGT.MATRL_ID = FACT.[BASE_MATRL]
AND TGT.YR = FACT.[FISC_YR] ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CALCULATE THE CHNL_NBR AND CHNL_NM #

   UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
   SET CHNL_NBR = '07', CHNL_NM = 'Food Service' ;

   IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CALCULATE CATG AND FLD_CATG FROM [KNA_SALES].[dbo].[MaterialMap] #

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET CATG = SRC.Material_Flag_1 
, FLD_CATG = SRC.Field_Category
FROM  [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT
LEFT OUTER JOIN [KNA_SALES].[dbo].[MaterialMap] SRC
ON SRC.[BASE_CASE_CODE] = TGT.MATRL_ID  ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO ADD MATRL_DESC FROM [KNA_SALES].dbo.UVW_SPCLTY_MATRL_MSTR #

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET MATRL_DESC = COALESCE(SRC.MATRL_DESC_CSTM,SRC.MATRL_DESC_ENGL)
FROM  [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT
LEFT OUTER JOIN [KNA_SALES].dbo.UVW_SPCLTY_MATRL_MSTR SRC WITH (NOLOCK)
ON SRC.[MATRL_NBR] = TGT.MATRL_ID ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO ADD SOLD_TO_NM, CHN_NM, SHIP_TO_NM FROM [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] #

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET SOLD_TO_NM = C.SOLD_TO_NM , 
CHN_NM = C.CHN,
SHIP_TO_NM = C1.SOLD_TO_NM
FROM  [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT WITH (NOLOCK)
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C WITH (NOLOCK)
ON TGT.SOLD_TO COLLATE DATABASE_DEFAULT  = C.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C1 WITH (NOLOCK)
ON TGT.OPR_ID COLLATE DATABASE_DEFAULT  = C1.SOLD_TO  COLLATE DATABASE_DEFAULT ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

/* Additional update to add SEGMENT DESCRIPTION
   Business will provide a segment XREF file with OLD and NEW Segment descriptions. 
   Match with OLD_Segment description from XREF against the SEGMENT source data set and populate the NEW segment description */

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] 
SET [SEG] = XREF.[New Segment Name]
FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] 
INNER JOIN [KNA_EXTERNAL].[USER_FIN].[RGM_SEG_NEW_SEG_XREF] XREF WITH (NOLOCK)
ON [SEG] = XREF.[Segment Name] COLLATE DATABASE_DEFAULT ;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

/* UPDATE THE SALES_GSV_QTY_UOM FOR PALLET PRICE */

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET SALES_GSV_QTY_UOM = SALES_CASE_QTY_UOM * (FAFH.PRC/MARM.UMREN)
FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] FNL 
INNER JOIN (SELECT PRC.MATRL_NBR, PRC.PRC, PRC.END_DT FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] PRC
	INNER JOIN (SELECT MATRL_NBR, MAX(END_DT) AS END_DT FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] 
	WHERE PRC_UOM = 'UL' AND CHNL_IND = '07' GROUP BY MATRL_NBR ) MAX_DT
	ON PRC.MATRL_NBR= MAX_DT.MATRL_NBR AND PRC.END_DT = MAX_DT.END_DT
	AND PRC.PRC_UOM = 'UL' AND CHNL_IND = '07') FAFH
ON REPLACE(LTRIM(REPLACE(FAFH.MATRL_NBR, '0', ' ')), ' ', '0')  COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(FNL.MATRL_ID, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
INNER JOIN KNA_ECC.dbo.MARM MARM
ON REPLACE(LTRIM(REPLACE(MARM.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(FNL.MATRL_ID, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
AND MEINH = 'CS' ;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

/* UPDATE THE SALES_LBS_QTY_UOM AND SALES_KGS_QTY_UOM FOR PALLET PRICE */

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET SALES_LBS_QTY_UOM = SALES_CASE_QTY_UOM * (MR.NTGEW/MARM.UMREN)
, SALES_KGS_QTY_UOM = SALES_CASE_QTY_UOM * (CASE WHEN MR.ZZNTGEW is null then (MR.NTGEW/MARM.UMREN)*0.45392 ELSE (MR.ZZNTGEW/MARM.UMREN) END)
FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] FNL 
INNER JOIN (SELECT MR.MATNR, SUM(MR.NTGEW) AS NTGEW, SUM(MR.ZZNTGEW) AS ZZNTGEW
FROM KNA_ECC.dbo.MARA MR WITH (NOLOCK) WHERE MR.MEINS='UL' GROUP BY MR.MATNR)MR
ON REPLACE(LTRIM(REPLACE(MR.MATNR, '0', ' ')), ' ', '0')  COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(FNL.MATRL_ID, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
INNER JOIN KNA_ECC.dbo.MARM MARM
ON REPLACE(LTRIM(REPLACE(MARM.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(FNL.MATRL_ID, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
AND MARM.MEINH = 'CS' ;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] 
SET [SEG] = 'Other' where [SEG] IS NULL OR [SEG] = '' OR [SEG] = ' ' ;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

/* # ADDITIONAL UPDATE TO CALCULATE MATRL_EXPNS, FIXD_EXPNS, VAR_EXPNS FOR PALLET PRICE# */

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET MATRL_EXPNS = COALESCE(SRC_YR.[MATRL_EXP_CS_1],SRC.[MATRL_EXP_CS_2],0) * TGT.SALES_CASE_QTY_UOM
, FIXD_EXPNS = COALESCE(SRC_YR.[FIXD_OH_CS_1],SRC.[FIXD_OH_CS_2],0) * TGT.SALES_CASE_QTY_UOM
, VAR_EXPNS = COALESCE(SRC_YR.[VAR_OH_CS_1],SRC.[VAR_OH_CS_2],0) * TGT.SALES_CASE_QTY_UOM
FROM  [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT WITH (NOLOCK)
INNER JOIN KNA_ECC.dbo.MARA MR WITH (NOLOCK)
ON REPLACE(LTRIM(REPLACE(MR.MATNR, '0', ' ')), ' ', '0')  COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(TGT.MATRL_ID, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
AND MR.MEINS='UL'

LEFT OUTER JOIN ( SELECT MARM.MATNR, ESTIMT1.FISC_YR
, (ESTIMT1.[MATRL_EXP_CS]/MARM.UMREN) AS MATRL_EXP_CS_1, (ESTIMT1.[FIXD_OH_CS]/MARM.UMREN) AS FIXD_OH_CS_1, (ESTIMT1.[VAR_OH_CS]/MARM.UMREN) AS VAR_OH_CS_1
FROM KNA_ECC.dbo.MARM MARM
INNER JOIN ( SELECT MATNR, FISC_YR, [MATRL_EXP_CS], [FIXD_OH_CS], [VAR_OH_CS] 
FROM [KNA_SALES].[dbo].[SPCLTY_COST_ESTIMT] WITH (NOLOCK) ) ESTIMT1
ON REPLACE(LTRIM(REPLACE(MARM.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(ESTIMT1.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
WHERE MARM.MEINH = 'CS')SRC_YR 
ON REPLACE(LTRIM(REPLACE(SRC_YR.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(TGT.MATRL_ID, '0', ' ')), ' ', '0')  COLLATE DATABASE_DEFAULT 
AND SRC_YR.FISC_YR = TGT.YR

LEFT OUTER JOIN ( SELECT MARM.MATNR, ESTIMT2.FISC_YR
, (ESTIMT2.[MATRL_EXP_CS]/MARM.UMREN) AS MATRL_EXP_CS_2, (ESTIMT2.[FIXD_OH_CS]/MARM.UMREN) AS FIXD_OH_CS_2, (ESTIMT2.[VAR_OH_CS]/MARM.UMREN) AS VAR_OH_CS_2
FROM KNA_ECC.dbo.MARM MARM
INNER JOIN ( SELECT MATNR, FISC_YR, [MATRL_EXP_CS], [FIXD_OH_CS], [VAR_OH_CS] 
, ROW_NUMBER() OVER (PARTITION BY MATNR ORDER BY FISC_YR DESC) AS R_NUM
FROM [KNA_SALES].[dbo].[SPCLTY_COST_ESTIMT] WITH (NOLOCK) ) ESTIMT2
ON REPLACE(LTRIM(REPLACE(MARM.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(ESTIMT2.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT
AND ESTIMT2.R_NUM =1
WHERE MARM.MEINH = 'CS')SRC
ON REPLACE(LTRIM(REPLACE(SRC.MATNR, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT = REPLACE(LTRIM(REPLACE(TGT.MATRL_ID, '0', ' ')), ' ', '0') COLLATE DATABASE_DEFAULT ;

	IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- # ADDITIONAL UPDATE TO CALCULATE THE FRGHT_AMT, TOTL_WHSE_AMT FROM [KNA_SALES].[STG].[SPCLTY_FNL_FACT] #

UPDATE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL]
SET FRGHT_AMT = CASE WHEN (CAST(TGT.FRGHT_AMT AS DECIMAL(20,10)) = 0 OR TGT.FRGHT_AMT IS NULL) THEN COALESCE(FACT.FRGHT * TGT.SALES_LBS_QTY_UOM,0) END
, TOTL_WHSE_AMT = CASE WHEN (CAST(TGT.TOTL_WHSE_AMT AS DECIMAL(20,10)) = 0 OR TGT.TOTL_WHSE_AMT IS NULL) THEN COALESCE(FACT.WHSE * TGT.SALES_LBS_QTY_UOM,0) END
FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC_FNL] TGT WITH (NOLOCK) 
LEFT OUTER JOIN (SELECT [SOLDTO_NBR],[FISC_YR]
, CASE WHEN sum(CAST(GSV_LBS AS DECIMAL(20,10))) = 0 THEN 0 ELSE SUM(FRGHT_AMT)/SUM(GSV_LBS) END AS FRGHT
, CASE WHEN sum(CAST(GSV_LBS AS DECIMAL(20,10))) = 0 THEN 0 ELSE SUM(WHSE_AMT)/SUM(GSV_LBS) END AS WHSE
FROM [KNA_SALES].[STG].[SPCLTY_FNL_FACT] WITH (NOLOCK) 
WHERE CAST(GSV_LBS AS DECIMAL(20,10)) != 0 AND (CAST(GSV_LBS AS VARCHAR(30)) NOT LIKE '0.%' OR CAST(GSV_LBS AS VARCHAR(20)) NOT LIKE '-0.%')
GROUP BY [SOLDTO_NBR],[FISC_YR]) FACT
ON TGT.SOLD_TO = FACT.[SOLDTO_NBR]
AND TGT.YR = FACT.[FISC_YR]
WHERE (CAST(TGT.FRGHT_AMT AS DECIMAL(20,10)) = 0 OR TGT.FRGHT_AMT IS NULL OR CAST(TGT.TOTL_WHSE_AMT AS DECIMAL(20,10)) = 0 OR TGT.TOTL_WHSE_AMT IS NULL) AND 
(CAST(TGT.SALES_LBS_QTY_UOM AS DECIMAL(20,10))<> 0 and TGT.SALES_LBS_QTY_UOM IS NOT NULL) ;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END









GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCLTY_SEG_TIBERSOFT_SRC_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/**********************************************************************************
   NAME        : USP_LOAD_SPCLTY_SEG_TIBERSOFT_SRC_CALC
   PURPOSE & 
   Description : This script will populate data into Staging table called [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC] 
                 sourcing it from TIBERSOFT tables such as [KNA_EXTERNAL].[TIBERSOFT].[TIBERSOFT_CLAIMS] and 
				 [KNA_EXTERNAL].[TIBERSOFT].[TIBERSOFT_NATL_ACCT].
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       06/07/2018         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCLTY_SEG_TIBERSOFT_SRC_CALC]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp1') IS NOT NULL DROP TABLE #temp1
IF OBJECT_ID('tempdb..#temp2') IS NOT NULL DROP TABLE #temp2
IF OBJECT_ID('tempdb..#temp3') IS NOT NULL DROP TABLE #temp3
IF OBJECT_ID('tempdb..#temp4') IS NOT NULL DROP TABLE #temp4
IF OBJECT_ID('tempdb..#temp5') IS NOT NULL DROP TABLE #temp5
IF OBJECT_ID('tempdb..#temp6') IS NOT NULL DROP TABLE #temp6

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

--#TRUNCATE THE [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC] BEFORE LOAD#

DELETE FROM [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- #THIS IS TO APPEND THE NATIONAL ACCOUNT CASES INTO CLAIMS CASAS WHERE THERE IS A MATCH#

SELECT TC.[Segment Description],TC.[Sold To Code],TC.[Operator ID],TC.[Material Code],TC.[Kelloggs Fiscal Period]
, CASE WHEN NF1.[OperatorID] IS NULL THEN SUM(COALESCE(TC.[Total Cases],0)) ELSE SUM(COALESCE(NF.[Cases],0)) END AS [CASE]
, SUM(MR.NTGEW) AS LBS
, CASE WHEN SUM(MR.ZZNTGEW) is null then SUM(MR.NTGEW)*0.45392 ELSE SUM(MR.ZZNTGEW) END AS KGS
, SUM(TC.[Billback Dollars]) AS [Billback Dollars]
, SUM(TC.[Rebate Dollars]) AS [Rebate Dollars]
, SUM(TC.[Total Dollars]) AS [Total Dollars]
INTO #temp1
 FROM (select [Operator ID], [Material Code],[Sold To Code],[Segment Description],[Kelloggs Fiscal Period],
 SUM([Total Cases]) AS [Total Cases], SUM([Billback Dollars]) AS [Billback Dollars], SUM([Rebate Dollars]) AS [Rebate Dollars], SUM([Total Dollars]) AS [Total Dollars],
 CAST(LOAD_DT AS DATE) AS LOAD_DT FROM [KNA_EXTERNAL].[TIBERSOFT].[TIBERSOFT_CLAIMS] WITH (NOLOCK)
 WHERE SUBSTRING([Kelloggs Fiscal Period] ,1,4) >= 2016
 group by [Operator ID], [Material Code],[Sold To Code],[Segment Description],[Kelloggs Fiscal Period], CAST(LOAD_DT AS DATE)) TC
 LEFT OUTER JOIN KNA_ECC.dbo.MARA MR WITH (NOLOCK)
 ON TC.[Material Code] = REPLACE(LTRIM(REPLACE(MR.MATNR, '0', ' ')), ' ', '0') 
 AND MR.MEINS='CS'
 LEFT OUTER JOIN (select SUM([Cases]) AS [Cases], [OperatorID], [MaterialCode], [SoldToCode], [Segment],[KelloggsFiscalPeriod]
 FROM [KNA_EXTERNAL].[TIBERSOFT].[TIBERSOFT_NATL_ACCT] WITH (NOLOCK) 
 WHERE SUBSTRING([KelloggsFiscalPeriod] ,1,4) >= 2016
 GROUP BY [OperatorID], [MaterialCode], [SoldToCode], [Segment],[KelloggsFiscalPeriod]) NF
 ON TC.[Operator ID] = NF.[OperatorID]
 AND TC.[Material Code] = NF.[MaterialCode]
 AND TC.[Sold To Code] = NF.[SoldToCode]
 AND TC.[Segment Description] = NF.[Segment]
 AND TC.[Kelloggs Fiscal Period] = NF.[KelloggsFiscalPeriod]
 LEFT OUTER JOIN (select [OperatorID] FROM [KNA_EXTERNAL].[TIBERSOFT].[TIBERSOFT_NATL_ACCT] WITH (NOLOCK) 
 WHERE SUBSTRING([KelloggsFiscalPeriod] ,1,4) >= 2016 GROUP BY [OperatorID]) NF1
 ON TC.[Operator ID] = NF1.[OperatorID]
GROUP BY TC.[Segment Description],TC.[Sold To Code],TC.[Operator ID],TC.[Material Code],TC.[Kelloggs Fiscal Period]
, NF1.[OperatorID]
, CASE WHEN MR.ZZNTGEW is null then MR.NTGEW*0.45392 ELSE MR.ZZNTGEW END

 IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- #THIS IS TO CALCULATE THE GSV FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] TABLE#

SELECT *  INTO #temp2 FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] WITH (NOLOCK) 
WHERE CHNL_IND='07' AND PRC_CND='ZFSP' AND SALES_ORG='1001'

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- #THIS IS TO CALCULATE MIN AND MAX DATE FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] TABLE#
   
SELECT MATRL_NBR, MIN(STRT_DT) AS MIN_STRT_DT , MAX(STRT_DT) AS MAX_STRT_DT, MIN(END_DT) AS MIN_END_DT , MAX(END_DT) AS MAX_END_DT 
INTO #temp3
FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC]
WHERE CHNL_IND='07' AND PRC_CND='ZFSP' AND SALES_ORG='1001'
GROUP BY MATRL_NBR

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
   
SELECT MATRL_NBR, MIN_STRT_DT, MAX_STRT_DT, MIN_END_DT, MAX_END_DT, SUM(MIN_PRC) AS MIN_PRC, SUM(MAX_PRC) AS MAX_PRC
INTO #temp4
FROM (
SELECT PRC_MAX.*, 0 AS MIN_PRC, PRC.PRC AS MAX_PRC
FROM #temp2 PRC
INNER JOIN #temp3 PRC_MAX
 ON PRC_MAX.MATRL_NBR = PRC.MATRL_NBR
 AND PRC_MAX.MAX_STRT_DT = PRC.STRT_DT
 
 UNION 
 
 SELECT PRC_MIN.*, PRC.PRC AS MIN_PRC, 0 AS MAX_PRC
FROM #temp2 PRC
INNER JOIN #temp3 PRC_MIN
 ON PRC_MIN.MATRL_NBR = PRC.MATRL_NBR
 AND PRC_MIN.MIN_STRT_DT = PRC.STRT_DT
) MIN_MAX
GROUP BY MATRL_NBR, MIN_STRT_DT, MAX_STRT_DT, MIN_END_DT, MAX_END_DT

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
   
-- #THIS IS TO CALCULATE THE GSV FROM [KG_VIEWS].[KNA].[UVW_MATRL_FAFH_PRC] TABLE#

 SELECT DISTINCT SRC.[Material Code] ,CAL.FISC_WK_STRT_DT
 , SUBSTRING(SRC.[Kelloggs Fiscal Period] ,1,4) AS FISC_YR, SUBSTRING(SRC.[Kelloggs Fiscal Period] ,5,1) AS FISC_QTR, SUBSTRING(SRC.[Kelloggs Fiscal Period] ,6,2) AS FISC_PD
, CASE WHEN PRC.MATRL_NBR IS NOT NULL THEN PRC.PRC
		WHEN PRC_MAX.MATRL_NBR IS NOT NULL THEN PRC_MAX.MAX_PRC
		WHEN PRC_MIN.MATRL_NBR IS NOT NULL THEN PRC_MIN.MIN_PRC
		ELSE 0 END AS PRC
INTO #temp5
 FROM (SELECT DISTINCT [Material Code], [Kelloggs Fiscal Period] FROM [KNA_EXTERNAL].[TIBERSOFT].[TIBERSOFT_CLAIMS] WITH (NOLOCK)) SRC
 LEFT OUTER JOIN (SELECT FISC_YR,FISC_QTR,FISC_PD,MAX(FISC_WK_STRT_DT) AS FISC_WK_STRT_DT FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WITH (NOLOCK) 
 GROUP BY FISC_YR,FISC_QTR,FISC_PD) CAL
 ON SUBSTRING(SRC.[Kelloggs Fiscal Period] ,1,4) = CAL.FISC_YR
AND SUBSTRING(SRC.[Kelloggs Fiscal Period] ,5,1) = CAL.FISC_QTR
AND SUBSTRING(SRC.[Kelloggs Fiscal Period] ,6,2) = CAL.FISC_PD
 LEFT OUTER JOIN #temp2 PRC
 ON SRC.[Material Code] = CAST(PRC.MATRL_NBR AS BIGINT) 
 AND CAL.FISC_WK_STRT_DT BETWEEN PRC.STRT_DT AND PRC.END_DT
 LEFT OUTER JOIN #temp4 PRC_MAX
 ON SRC.[Material Code] = CAST(PRC_MAX.MATRL_NBR AS BIGINT) 
 AND CAL.FISC_WK_STRT_DT < PRC_MAX.MAX_STRT_DT
 LEFT OUTER JOIN #temp4 PRC_MIN
 ON SRC.[Material Code] = CAST(PRC_MIN.MATRL_NBR AS BIGINT) 
 AND CAL.FISC_WK_STRT_DT > PRC_MIN.MIN_STRT_DT

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

-- THIS IS TO CALCULATE THE CASE REDUCTION FROM [KNA_EXTERNAL].[USER_FIN].RGM_SEG_CASE_RED_XREF TABLE

SELECT DISTINCT
T1.[Segment Description],T1.[Sold To Code],T1.[Operator ID],T1.[Material Code]
, T2.FISC_PD, T2.FISC_QTR ,T2.FISC_YR
, CASE WHEN RED.[%] IS NULL THEN T1.[CASE] 
ELSE (T1.[CASE] - (T1.[CASE] * RED.[%] )/(CASE WHEN LEN([%])=1 THEN 10 WHEN LEN([%])=2 THEN 100 WHEN LEN([%])=3 THEN 1000 END)) END AS [CASE]
, T1.LBS
, T1.KGS
, T1.[Billback Dollars]
, T1.[Rebate Dollars]
, T1.[Total Dollars]
, 'TIBERSOFT SOURCE' AS SRC_NM
, T2.PRC
INTO #temp6
   FROM #temp1 T1
   LEFT OUTER JOIN #temp5 T2
   ON T1.[Material Code] = T2.[Material Code]
  AND SUBSTRING(T1.[Kelloggs Fiscal Period] ,6,2) = T2.FISC_PD COLLATE DATABASE_DEFAULT
  AND SUBSTRING(T1.[Kelloggs Fiscal Period] ,1,4) = T2.FISC_YR COLLATE DATABASE_DEFAULT
  AND SUBSTRING(T1.[Kelloggs Fiscal Period] ,5,1) = T2.FISC_QTR COLLATE DATABASE_DEFAULT
   LEFT OUTER JOIN [KNA_EXTERNAL].[USER_FIN].RGM_SEG_CASE_RED_XREF RED
   ON T1.[Operator ID] = RED.[Operator ID]
  AND T1.[Segment Description] = 'Education: K-12'

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

--INSERTING ALL THE RECORDS FROM THE TEMP TABLE TO [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC]
    
INSERT INTO [KNA_SALES].[STG].[SEG_TIBERSOFT_SRC](
		SEG
		, SOLD_TO
		, OPR_ID
		, MATRL_ID
		, PD
		, QTR
		, YR
		, SALES_CASE_QTY_UOM
		, SALES_LBS_QTY_UOM
		, SALES_KGS_QTY_UOM
		, SALES_GSV_QTY_UOM
		, BILLBACK_DOL
		, REBT_DOL
		, TOTL_DOL
		, SRC_NM)
SELECT DISTINCT
[Segment Description],[Sold To Code],[Operator ID],[Material Code]
, FISC_PD as PD, FISC_QTR AS QTR , FISC_YR AS YR 
, [CASE]
, LBS * [CASE] AS LBS
, KGS * [CASE] AS KGS
, [CASE] * PRC AS GSV
, [Billback Dollars]
, [Rebate Dollars]
, [Total Dollars]
, 'TIBERSOFT SOURCE' AS SRC_NM
   FROM #temp6 T1

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_DONTN_DSTRY_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_DONTN_DSTRY_CALC
   PURPOSE & 
   Description : This script will populate data into Direct customers table [STG].[SPCLTY_DD_OBSPKG_FACT]
                 sourcing it from UVW_SPCLTY_DIM_XREF , UVW_SPCLTY_MATRL_XREF  and UVW_SPCLTY_COST_SUMRY 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_DONTN_DSTRY_CALC]
as
begin 

IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempa
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempb
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempc
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempd
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempe
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempf
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempg

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

select S.*,CHNL_NM, DX.CHNL_NBR,
      MX.[CATG] as CATG
	  into #tempa
	  from [KNA_SALES].[STG].[SPCLTY_GSV_FACT] S WITH (NOLOCK)
left join [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK) on 
S.[SOLDTO_NBR]=DX.[SOLD_TO]
left join [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK) on
S.BASE_MATRL=MX.[BASE_CASE_CODE]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select sum([GSV_CASES]) as Tot_Cs,CHNL_NM,CHNL_NBR,[FISC_YR]
      ,[FISC_PD]   into #tempb FROM #tempa
group by CHNL_NBR,CHNL_NM,[FISC_YR]
      ,[FISC_PD]order by CHNL_NBR,[FISC_YR],[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select CATG, sum([GSV_CASES]) as Cat_Cases ,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] 
	  into #tempc
	  from #tempa
	  group by CATG,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] order by CHNL_NBR,[FISC_YR]
      ,[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select c.*,b.Tot_Cs into #tempd from #tempc c
	  left join #tempb b on
	  c.CHNL_NBR=b.CHNL_NBR and 
	  c.FISC_YR=b.FISC_YR and
	  c.FISC_PD=b.FISC_PD

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select *,case when Tot_Cs = 0 then 0 else cast((Cat_Cases/Tot_Cs)*100 as decimal(20,12)) end as PCTL_Cs_Yago  
	  into #tempe 
	  from #tempd

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select e.*,cc.[BAL] 
	  into #tempf 
	  from #tempe e
	  left join [KG_Views].[KNA].UVW_SPCLTY_COST_SUMRY cc WITH (NOLOCK)
	  on  e.CHNL_NBR=cc.CHNL_IND COLLATE DATABASE_DEFAULT and
	  e.FISC_YR=cc.FISC_YR and
	  e.FISC_PD=cc.FISC_PD
	  where cc.[SUMRY_ACCT]='DonationsDestroyed'

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select *,(PCTL_Cs_Yago/100)*[BAL] as CC_FinalAmt 
	   into #tempg
	   from #tempf

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  insert into [STG].[SPCLTY_DD_OBSPKG_FACT]
	  ( 
	[CATG] ,
	[CATG_CASES] ,
	[CHNL],
	[FISC_YR] ,
	[FISC_PD] ,
	[TOT_CASES] ,
	[PCT_CASE_YAGO] ,
	[BAL] ,
	[FNL_AMT])
	
	select * from #tempg

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

     update [STG].[SPCLTY_DD_OBSPKG_FACT]
     set SUMRY_ACCT='DonationsDestroyed'
	 WHERE SUMRY_ACCT IS NULL

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_FRGHT_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_FRGHT_CALC
   PURPOSE & 
   Description : This script will populate data into Direct customers table [STG].[SPCLTY_FRGHT_FACT]
                 sourcing it from UVW_SPCLTY_DIM_XREF , UVW_SPCLTY_MATRL_XREF  and UVW_SPCLTY_COST_SUMRY 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_FRGHT_CALC]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempa
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempb
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempc
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempd
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempe
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempx
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempf
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempg

/****** Script for SelectTopNRows command from SSMS  ******/
DELETE FROM [STG].[SPCLTY_FRGHT_FACT];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select S.*,CHNL_NM, DX.CHNL_NBR,
      MX.CATG as CATG
	  into #tempa
	  from [STG].[SPCLTY_GSV_FACT] S WITH (NOLOCK)
left join [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK) on 
S.[SOLDTO_NBR]=DX.[SOLD_TO]
left join [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK) on
S.BASE_MATRL=MX.[BASE_CASE_CODE]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select sum([GSV_CASES]) as Tot_Cs,CHNL_NM,CHNL_NBR,[FISC_YR]
      ,[FISC_PD]   into #tempb FROM #tempa
group by CHNL_NBR,CHNL_NM,[FISC_YR]
      ,[FISC_PD]order by CHNL_NBR,[FISC_YR],[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select SOLDTO_NBR,[BASE_MATRL], sum([GSV_CASES]) as ST_Cases ,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] 
	  into #tempc
	  from #tempa
	  group by SOLDTO_NBR,[BASE_MATRL],CHNL_NBR,[FISC_YR]
      ,[FISC_PD] order by CHNL_NBR,[FISC_YR]
      ,[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select c.*,b.Tot_Cs into #tempd from #tempc c
	  left join #tempb b on
	  c.CHNL_NBR=b.CHNL_NBR and 
	  c.FISC_YR=b.FISC_YR and
	  c.FISC_PD=b.FISC_PD

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select *,case when Tot_Cs = 0 then 0 else cast((ST_Cases/Tot_Cs)*100 as decimal(20,12)) end as PCTL_Cs_Yago  
	  into #tempe 
	  from #tempd
	  
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select A.CHNL_IND COLLATE DATABASE_DEFAULT AS CHNL_IND ,A.FISC_YR,A.FISC_PD, sum(A.[BAL]) as addition
	  into #tempx
	  from [KG_Views].[KNA].UVW_SPCLTY_COST_SUMRY A  WITH (NOLOCK) 
	  inner join [KG_Views].[KNA].UVW_SPCLTY_COST_SUMRY B  WITH (NOLOCK)
	  on A.CHNL_IND COLLATE DATABASE_DEFAULT =B.CHNL_IND COLLATE DATABASE_DEFAULT and 
	  A.FISC_YR =B.FISC_YR and 
	  A.FISC_PD=B.FISC_PD and 
	  A.[SUMRY_ACCT] COLLATE DATABASE_DEFAULT =B.[SUMRY_ACCT] COLLATE DATABASE_DEFAULT
	  where A.[SUMRY_ACCT] COLLATE DATABASE_DEFAULT in ('CustomerFreight','StockFreight')
	  --and A.FISC_YR= 2016 and A.FISC_PD in (1,2,3)
	  and A.FISC_YR >= 2015  
	  group by A.CHNL_IND COLLATE DATABASE_DEFAULT,A.FISC_YR,A.FISC_PD
	 
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select e.*,cc.addition as BAL
	  into #tempf 
	  from #tempe e
	  left join #tempx cc
	  on  e.CHNL_NBR=cc.CHNL_IND and
	  e.FISC_YR=cc.FISC_YR and
	  e.FISC_PD=cc.FISC_PD
	 
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select *,(PCTL_Cs_Yago/100)*[BAL] as CC_FinalAmt 
	   into #tempg
	   from #tempf 
	  
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  insert into [KNA_SALES].[STG].[SPCLTY_FRGHT_FACT]
	  ([SOLDTO_NBR] 
	   ,[MATRL_NBR]
	   ,[SOLDTO_CASES]
	   ,[CHNL]
	   ,[FISC_YR]
       ,[FISC_PD]
       ,[TOTL_CASES]
       ,[PCT_CASE_YAGO]
       ,[BAL]
       ,[FRGHT_AMT])

	select * from #tempg
	
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_MAT_VAR_CST_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_MAT_VAR_CST_CALC
   PURPOSE & 
   Description : This script will populate data into Direct customers table [STG].[SPCLTY_MATRL_VARNC_FACT]
                 sourcing it from UVW_SPCLTY_DIM_XREF , UVW_SPCLTY_MATRL_XREF  and UVW_SPCLTY_COST_SUMRY 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_MAT_VAR_CST_CALC]
as
begin 

IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempa
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempb
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempc
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempd
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempe
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempf
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempg

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

DELETE FROM [STG].[SPCLTY_MATRL_VARNC_FACT];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select S.*,CHNL_NM, DX.CHNL_NBR,
      MX.CATG as CATG
	  into #tempa
	  from [STG].[SPCLTY_GSV_FACT] S WITH (NOLOCK)
left join [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK) on 
S.[SOLDTO_NBR]=DX.[SOLD_TO]
left join [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK) on
S.BASE_MATRL=MX.[BASE_CASE_CODE]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select sum([GSV_CASES]) as Tot_Cs,CHNL_NM,CHNL_NBR,[FISC_YR]
      ,[FISC_PD]   into #tempb FROM #tempa
group by CHNL_NBR,CHNL_NM,[FISC_YR]
      ,[FISC_PD]order by CHNL_NBR,[FISC_YR],[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select SOLDTO_NBR,[BASE_MATRL], sum([GSV_CASES]) as ST_Cases ,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] 
	  into #tempc
	  from #tempa
	  group by SOLDTO_NBR,[BASE_MATRL],CHNL_NBR,[FISC_YR]
      ,[FISC_PD] order by CHNL_NBR,[FISC_YR]
      ,[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select c.*,b.Tot_Cs into #tempd from #tempc c
	  left join #tempb b on
	  c.CHNL_NBR=b.CHNL_NBR and 
	  c.FISC_YR=b.FISC_YR and
	  c.FISC_PD=b.FISC_PD
	 
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select *,case when Tot_Cs = 0 then 0 else cast((ST_Cases/Tot_Cs)*100 as decimal(20,12)) end as PCTL_Cs_Yago  
	  into #tempe 
	  from #tempd
	  
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select e.*,cc.[BAL] 
	  into #tempf 
	  from #tempe e
	  left join [KG_Views].[KNA].UVW_SPCLTY_COST_SUMRY cc WITH (NOLOCK)
	  on  e.CHNL_NBR=cc.CHNL_IND COLLATE DATABASE_DEFAULT and
	  e.FISC_YR=cc.FISC_YR and
	  e.FISC_PD=cc.FISC_PD
	  where cc.[SUMRY_ACCT]='MaterialVar'
	    
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select *,(PCTL_Cs_Yago/100)*[BAL] as CC_FinalAmt 
	   into #tempg
	   from #tempf
	
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  insert into [KNA_SALES].[STG].[SPCLTY_MATRL_VARNC_FACT]
	  ([SOLDTO_NBR],
	  [MATRL_NBR],
	  [CHNL] ,
	  [FISC_YR],
	  [FISC_PD],
	  [FNL_AMT] )

	select SOLDTO_NBR,BASE_MATRL,CHNL_NBR,FISC_YR,FISC_PD,CC_FinalAmt
	 from #tempg

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_MATRL_NBR_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*******************************************************************************************************************************************
   NAME        : USP_LOAD_SPCTLY_MATRL_NBR_FACT
   PURPOSE & 
   Description : This script will populate data into [STG].[SPCLTY_FACT]
                 sourcing it from multiple source tables such as [STG].[SPCLTY_GSV_FACT], [STG].[SPCLTY_RMBSMT_FISC_YR_PD],
				 [STG].[SPCLTY_BILLBACK_FINAL_DATA], dbo.PROD_COST_UAT, [STG].[SPCLTY_MATRL_VARNC_FACT],
				 [STG].[SPCLTY_TOT_DIST_FACT],[STG].[SPCLTY_FRGHT_FACT]  				 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version
   
   2.0		 07/06/2018			USCAKK02				2. Implemented the changed to avoid the Data conversion issues on MATNR	 (INC0777872)

********************************************************************************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_MATRL_NBR_FACT]
AS

BEGIN

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;
	
	IF OBJECT_ID('tempdb..#temp1') IS NOT NULL DROP TABLE #temp1
	IF OBJECT_ID('tempdb..#temp3') IS NOT NULL DROP TABLE #temp3
	IF OBJECT_ID('tempdb..#temp4') IS NOT NULL DROP TABLE #temp4
	IF OBJECT_ID('tempdb..#temp5') IS NOT NULL DROP TABLE #temp5
	IF OBJECT_ID('tempdb..#temp6') IS NOT NULL DROP TABLE #temp6
	IF OBJECT_ID('tempdb..#temp7') IS NOT NULL DROP TABLE #temp7
	IF OBJECT_ID('tempdb..#temp8') IS NOT NULL DROP TABLE #temp8
	IF OBJECT_ID('tempdb..#temp9') IS NOT NULL DROP TABLE #temp9
	IF OBJECT_ID('tempdb..#temp10') IS NOT NULL DROP TABLE #temp10
	IF OBJECT_ID('tempdb..#temp11') IS NOT NULL DROP TABLE #temp11
	IF OBJECT_ID('tempdb..#temp12') IS NOT NULL DROP TABLE #temp12
	IF OBJECT_ID('tempdb..#temp13') IS NOT NULL DROP TABLE #temp14

	DELETE FROM [STG].[SPCLTY_FACT];

	IF (@@ERROR <> 0)
	BEGIN
		ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT
		[SOLDTO_NBR],
		[BASE_MATRL],  
		[GSV_DOL],
		[GSV_LBS],
		[GSV_CASES],
		[GSV_KGS],
		[FISC_YR],
		[FISC_PD] 
	INTO #temp1
	FROM [KNA_SALES].[STG].[SPCLTY_GSV_FACT] WITH (NOLOCK)
	WHERE FISC_YR >= 2015
  
	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

  /****** Script for SelectTopNRows command from SSMS  ******/
	SELECT
		[SOLDTO_NBR],
		[MATRL_NBR],  
		SUM([STLMNT_AMT]) AS [STLMNT_AMT],
		[FISC_YR],
		[FISC_PD]
	INTO #temp3
	FROM [KNA_SALES].[STG].[SPCLTY_RMBSMT_FISC_YR_PD] WITH (NOLOCK)
	WHERE [FISC_YR] >= 2015
	GROUP BY [SOLDTO_NBR],
			 [MATRL_NBR],
			 [FISC_YR],
			 [FISC_PD]

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT
		[DIST_SOLDTO_PARTY] AS [SOLDTO_NBR],
		[MATRL_NBR], 
		SUM([STLMNT_AMT]) AS BB_Amt,
		[FISC_YR],
		[FISC_PD] 
	INTO #temp4
	FROM [KNA_SALES].[STG].[SPCLTY_BILLBACK_FNL_DATA] WITH (NOLOCK)
	WHERE [FISC_YR] >= 2015
	GROUP BY [DIST_SOLDTO_PARTY],
             [MATRL_NBR],
			 [FISC_PD],
             [FISC_YR]

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT
		A.*,
		STLMNT_AMT = 0,
		BILLBACK_AMT = 0,
		TOTL_INVC = 0 
	INTO #temp5
	FROM #temp1 A
	UNION
	SELECT
		[SOLDTO_NBR],
		[MATRL_NBR],
		[GSV_DOL] = 0,
		[GSV_LBS] = 0,
		[GSV_CASES] = 0,
		[GSV_KGS] = 0,
		[FISC_YR],
		[FISC_PD],
		STLMNT_AMT,
		BILLBACK_AMT = 0,
		TOTL_INVC = 0
    FROM #temp3
	UNION
	SELECT
		[SOLDTO_NBR],
		[MATRL_NBR],
		[GSV_DOL] = 0,
		[GSV_LBS] = 0,
		[GSV_CASES] = 0,
		[GSV_KGS] = 0,
		[FISC_YR],
		[FISC_PD],
		STLMNT_AMT = 0,
		BB_Amt,
		TOTL_INVC = 0
	FROM #temp4

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	INSERT INTO [STG].[SPCLTY_FACT] 
		([SOLDTO_NBR],
		[BASE_MATRL],
		[GSV_DOL],
		[GSV_LBS],
		[GSV_CASES],
		[GSV_KGS],
		[FISC_YR],
		[FISC_PD],
		[RMBSMT_AMT],
		[BILLBACK_AMT],
		[TOTL_INVC])
	SELECT * FROM #temp5

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT
		[SOLDTO_NBR],
		[BASE_MATRL],	 
		[FISC_YR],
		[FISC_PD],
		[FISC_QTR],
		SUM([GSV_DOL]) AS [GSV_DOL],
		SUM([GSV_LBS]) AS [GSV_LBS],
		SUM([GSV_CASES]) AS [GSV_CASES],
		SUM([GSV_KGS]) AS [GSV_KGS],
		SUM([RMBSMT_AMT]) AS RMBSMT_AMT,
		SUM(BILLBACK_AMT) AS BILLBACK_AMT,
		SUM(TOTL_INVC) AS TOTL_INVC 
	INTO #temp6
	FROM [STG].[SPCLTY_FACT] D
	GROUP BY [SOLDTO_NBR],
             [BASE_MATRL],
             [FISC_YR],
             [FISC_PD],
             [FISC_QTR]

    IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

    SELECT * INTO #temp7
	FROM KNA_SALES.dbo.[SPCLTY_COST_ESTIMT] WITH (NOLOCK)
 
	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT
		a.*,
		b.[FISC_YR] as [FISC_YEAR],
		b.[MATRL_EXP_CS] AS [MATRL_EXP_CS],
		b.[FIXD_OH_CS] AS [FIXD_OH_CS],
		b.[VAR_OH_CS] AS [VAR_OH_CS] 
	INTO #temp8
	FROM #temp6 a
	LEFT JOIN  #temp7  b
	ON  a.[FISC_YR] = b.[FISC_YR] 
	AND cast(cast(a.BASE_MATRL as bigint) as varchar)  = case when ISNUMERIC(b.MATNR) = 1 then cast(cast(b.MATNR as bigint) as varchar) else b.MATNR end  -- (INC0777872)

  
	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT
		*,
		MATRL_EXP_CS_AMT = [MATRL_EXP_CS] * [GSV_CASES],
		FIXD_FAC_EXP_CS_AMT = [FIXD_OH_CS] * [GSV_CASES],
		VAR_PAC_EXP_CS_AMT = [VAR_OH_CS] * [GSV_CASES] 
	INTO #temp9
	FROM #temp8

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END
  
	SELECT
		y.*,
		z.[FNL_AMT] AS MATRL_EXP_CC 
	INTO #temp10
	FROM #temp9 y
	LEFT JOIN [KNA_SALES].[STG].[SPCLTY_MATRL_VARNC_FACT] z WITH (NOLOCK)
    ON y.[SOLDTO_NBR] = z.[SOLDTO_NBR] AND y.BASE_MATRL = z.[MATRL_NBR]
    AND y.FISC_YR = z.[FISC_YR] AND y.FISC_PD = z.[FISC_PD]

	IF (@@ERROR <> 0)
	BEGIN
		ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT DISTINCT
		V.SOLDTO_NBR,
		BASE_MATRL,
		V.FISC_YR,
		V.FISC_PD,
		V.FISC_QTR,
		GSV_DOL,
		GSV_LBS,
		GSV_CASES,
		GSV_KGS,
		RMBSMT_AMT,
		BILLBACK_AMT,
		TOTL_INVC,
		V.FISC_YEAR,
		MATRL_EXP_CS,
		FIXD_OH_CS,
		VAR_OH_CS,
		MATRL_EXP_CS_AMT,
		FIXD_FAC_EXP_CS_AMT,
		VAR_PAC_EXP_CS_AMT,
		MATRL_EXP_CC,
		MAX(w.[FNL_AMT]) AS WHSE_AMT 
	INTO #temp11
	FROM #temp10 V
	LEFT JOIN [KNA_SALES].[STG].[SPCLTY_TOT_DIST_FACT] w WITH (NOLOCK)
	ON v.[SOLDTO_NBR] = w.SOLDTO_NBR AND v.[BASE_MATRL] = w.MATRL_NBR
	AND v.[FISC_YR] = w.FISC_YR AND v.[FISC_PD] = w.FISC_PD
	GROUP BY V.SOLDTO_NBR,
			 BASE_MATRL,
			 V.FISC_YR,
			 V.FISC_PD,
			 V.FISC_QTR,
			 GSV_DOL,
			 GSV_LBS,
			 GSV_CASES,
			 GSV_KGS,
			 RMBSMT_AMT,
			 BILLBACK_AMT,
			 TOTL_INVC,
		     V.FISC_YEAR,
			 MATRL_EXP_CS,
			 FIXD_OH_CS,
			 VAR_OH_CS,
			 MATRL_EXP_CS_AMT,
			 FIXD_FAC_EXP_CS_AMT,
			 VAR_PAC_EXP_CS_AMT,
			 MATRL_EXP_CC

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END
		   
	SELECT DISTINCT
		V.SOLDTO_NBR,
		BASE_MATRL,
		V.FISC_YR,
		V.FISC_PD,
		V.FISC_QTR,
		GSV_DOL,
		GSV_LBS,
		GSV_CASES,
		GSV_KGS,
		RMBSMT_AMT,
		BILLBACK_AMT,
		TOTL_INVC,
		V.FISC_YEAR,
		MATRL_EXP_CS,
		FIXD_OH_CS,
		VAR_OH_CS,
		MATRL_EXP_CS_AMT,
		FIXD_FAC_EXP_CS_AMT,
		VAR_PAC_EXP_CS_AMT,
		MATRL_EXP_CC,
		WHSE_AMT,
		MAX(w.[FRGHT_AMT]) AS FR_AMT 
	INTO #temp12
	FROM #temp11 V
	LEFT JOIN [KNA_SALES].[STG].[SPCLTY_FRGHT_FACT] w WITH (NOLOCK)
    ON v.[SOLDTO_NBR] = w.SOLDTO_NBR AND v.[BASE_MATRL] = w.MATRL_NBR
    AND v.[FISC_YR] = w.FISC_YR AND v.[FISC_PD] = w.FISC_PD
	GROUP BY V.SOLDTO_NBR,
             BASE_MATRL,
             V.FISC_YR,
             V.FISC_PD,
             V.FISC_QTR,
             GSV_DOL,
             GSV_LBS,
             GSV_CASES,
             GSV_KGS,
             RMBSMT_AMT,
             BILLBACK_AMT,
             TOTL_INVC,
             V.FISC_YEAR,
             MATRL_EXP_CS,
             FIXD_OH_CS,
             VAR_OH_CS,
             MATRL_EXP_CS_AMT,
             FIXD_FAC_EXP_CS_AMT,
             VAR_PAC_EXP_CS_AMT,
             MATRL_EXP_CC,
             WHSE_AMT

    IF (@@ERROR <> 0)
    BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	SELECT * INTO #temp14
	FROM #temp12

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	DELETE FROM [STG].[SPCLTY_FACT];

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

	INSERT INTO [STG].[SPCLTY_FACT] 
		([SOLDTO_NBR],
		[BASE_MATRL],
		[GSV_DOL],
		[GSV_LBS],
		[GSV_CASES],
		[GSV_KGS],
		[FISC_YR],
		[FISC_QTR],
		[FISC_PD],
		[RMBSMT_AMT],
		[BILLBACK_AMT],
		[TOTL_INVC],
		[MATRL_EXPNS],
		[FIXD_EXPNS],
		[VAR_EXPNS],
		[MATRL_EXPNS_CC],
		[WHSE_AMT],
		[FRGHT_AMT])
    SELECT
		[SOLDTO_NBR],
		[BASE_MATRL],
		[GSV_DOL],
		[GSV_LBS],
		[GSV_CASES],
		[GSV_KGS],
		[FISC_YR],
		[FISC_QTR],
		[FISC_PD],
		[RMBSMT_AMT],
		[BILLBACK_AMT],
		[TOTL_INVC],
		[MATRL_EXP_CS_AMT],
		[FIXD_FAC_EXP_CS_AMT],
		[VAR_PAC_EXP_CS_AMT],
		[MATRL_EXP_CC],
		[WHSE_AMT],
		[FR_AMT]
    FROM #temp14

	IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION START_TRAN;
	END

COMMIT TRANSACTION;

END


GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_OBSLT_PKG_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_OBSLT_PKG_CALC
   PURPOSE & 
   Description : This script will populate data into Direct customers table [STG].[SPCLTY_DD_OBSPKG_FACT]
                 sourcing it from UVW_SPCLTY_DIM_XREF , UVW_SPCLTY_MATRL_XREF  and UVW_SPCLTY_COST_SUMRY 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_OBSLT_PKG_CALC]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempa
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempb
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempc
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempd
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempe
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempf
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempg

DELETE FROM [STG].[SPCLTY_DD_OBSPKG_FACT];

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select S.*,CHNL_NM, DX.CHNL_NBR,
      MX.[CATG] as CATG
	  into #tempa
	  from [STG].[SPCLTY_GSV_FACT] S WITH (NOLOCK)
left join [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK) on 
S.[SOLDTO_NBR]=DX.[SOLD_TO]
left join [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK) on
S.BASE_MATRL=MX.[BASE_CASE_CODE]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select sum([GSV_CASES]) as Tot_Cs,CHNL_NM,CHNL_NBR,[FISC_YR]
      ,[FISC_PD]   into #tempb FROM #tempa
group by CHNL_NBR,CHNL_NM,[FISC_YR]
      ,[FISC_PD]order by CHNL_NBR,[FISC_YR],[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
	
	   select CATG, sum([GSV_CASES]) as Cat_Cases ,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] 
	  into #tempc
	  from #tempa
	  group by CATG,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] order by CHNL_NBR,[FISC_YR]
      ,[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select c.*,b.Tot_Cs into #tempd from #tempc c
	  left join #tempb b on
	  c.CHNL_NBR=b.CHNL_NBR and 
	  c.FISC_YR=b.FISC_YR and
	  c.FISC_PD=b.FISC_PD

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select *,case when Tot_Cs = 0 then 0 else cast((Cat_Cases/Tot_Cs)*100 as decimal(20,12)) end as PCTL_Cs_Yago  
	  into #tempe 
	  from #tempd

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select e.*,cc.[BAL] 
	  into #tempf 
	  from #tempe e
	  left join [KG_Views].[KNA].UVW_SPCLTY_COST_SUMRY cc WITH (NOLOCK)
	  on  e.CHNL_NBR=cc.CHNL_IND COLLATE DATABASE_DEFAULT and
	  e.FISC_YR=cc.FISC_YR and
	  e.FISC_PD=cc.FISC_PD
	  where cc.[SUMRY_ACCT]='ObsoletePackaging'

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select *,(PCTL_Cs_Yago/100)*[BAL] as CC_FinalAmt 
	   into #tempg
	   from #tempf

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
	   
	  insert into [STG].[SPCLTY_DD_OBSPKG_FACT]
	  ( 
	[CATG] ,
	[CATG_CASES] ,
	[CHNL],
	[FISC_YR] ,
	[FISC_PD] ,
	[TOT_CASES] ,
	[PCT_CASE_YAGO] ,
	[BAL] ,
	[FNL_AMT])
	
	select * from #tempg

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	update [STG].[SPCLTY_DD_OBSPKG_FACT]
    set SUMRY_ACCT='ObsoletePackaging'

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SPCTLY_WHSE_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********************************************************************************
   NAME        : USP_LOAD_SPCTLY_WHSE_CALC
   PURPOSE & 
   Description : This script will populate data into Direct customers table [STG].SPCLTY_TOT_DIST_FACT
                 sourcing it from UVW_SPCLTY_DIM_XREF , UVW_SPCLTY_MATRL_XREF  and UVW_SPCLTY_COST_SUMRY 
                                               
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       10/24/2017         USCV1S08                1. Initial Version

**********************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SPCTLY_WHSE_CALC]
as
begin 

SET IMPLICIT_TRANSACTIONS OFF;

BEGIN TRANSACTION;

SAVE TRANSACTION  START_TRAN;

IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempa
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempb
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempc
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempd
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempe
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempf
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #tempg

/****** Script for SelectTopNRows command from SSMS  ******/
DELETE FROM [STG].SPCLTY_TOT_DIST_FACT;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select S.*,CHNL_NM, DX.CHNL_NBR,
      MX.CATG as CATG
	  into #tempa
	  from [STG].[SPCLTY_GSV_FACT] S WITH (NOLOCK)
left join [UVW_SPCLTY_DIM_XREF] DX WITH (NOLOCK) on 
S.[SOLDTO_NBR]=DX.[SOLD_TO]
left join [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_XREF] MX WITH (NOLOCK) on
S.BASE_MATRL=MX.[BASE_CASE_CODE]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

select sum([GSV_CASES]) as Tot_Cs,CHNL_NM,CHNL_NBR,[FISC_YR]
      ,[FISC_PD]   into #tempb FROM #tempa
group by CHNL_NBR,CHNL_NM,[FISC_YR]
      ,[FISC_PD]order by CHNL_NBR,[FISC_YR],[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	   select SOLDTO_NBR,[BASE_MATRL], sum([GSV_CASES]) as ST_Cases ,CHNL_NBR,[FISC_YR]
      ,[FISC_PD] 
	  into #tempc
	  from #tempa
	  group by SOLDTO_NBR,[BASE_MATRL],CHNL_NBR,[FISC_YR]
      ,[FISC_PD] order by CHNL_NBR,[FISC_YR]
      ,[FISC_PD]

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select c.*,b.Tot_Cs into #tempd from #tempc c
	  left join #tempb b on
	  c.CHNL_NBR=b.CHNL_NBR and 
	  c.FISC_YR=b.FISC_YR and
	  c.FISC_PD=b.FISC_PD

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
	 
	  select *,case when Tot_Cs = 0 then 0 else cast((ST_Cases/Tot_Cs)*100 as decimal(20,12)) end as PCTL_Cs_Yago  
	  into #tempe 
	  from #tempd
	  
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

	  select e.*,cc.[BAL]
	  into #tempf 
	  from #tempe e
	  left join [KG_Views].[KNA].UVW_SPCLTY_COST_SUMRY cc WITH (NOLOCK)
	  on  e.CHNL_NBR=cc.CHNL_IND COLLATE DATABASE_DEFAULT and
	  e.FISC_YR=cc.FISC_YR and
	  e.FISC_PD=cc.FISC_PD
	  where cc.[SUMRY_ACCT]='Warehousing' 

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
	    
	   select *,(PCTL_Cs_Yago/100)*[BAL] as CC_FinalAmt 
	   into #tempg
	   from #tempf
	   
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END
   	  
	  insert into [KNA_SALES].[STG].[SPCLTY_TOT_DIST_FACT]
	  ([SOLDTO_NBR] 
	   ,[MATRL_NBR]
	   ,[SOLDTO_CASES]
	   ,[CHNL]
	   ,[FISC_YR]
       ,[FISC_PD]
       ,[TOT_CASES]
       ,[PCT_CASE_YAGO]
       ,[BAL]
       ,[FNL_AMT])

	select * from #tempg

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SYSCO_DMND_FCST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================================================================
-- Name				:	[USP_LOAD_SYSCO_DMND_FCST]
-- Author			:	Ramadhyani, Venkatesh\Chandars
-- Create date		:	08/16/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data From [SYSCO_RDC_FCST_INFO], [SYSCO_RDC_FCST_INFO] table	
--					:					[SYSCO_NONRDC_FCST_INFO], [SYSCO_NONRDC_FCST_INFO] table	
--					:	Modified to support FIS_YR change (from 2017 to 2018 ) at the year end 
-- Comments			: 
--=========================================================================================
CREATE PROCEDURE  [dbo].[USP_LOAD_SYSCO_DMND_FCST]  
AS 
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;

--This CTE  gets CURR_YR_QTY  of MATERIAL based  on the FISC_YR and FISC_PD 

		;WITH CTE AS (

					  SELECT MATRL_NBR, PRICE
					  FROM (
 					 SELECT MATRL_NBR, PRICE ,
							ROW_NUMBER() OVER (PARTITION BY MATRL_NBR ORDER BY MATRL_NBR ASC) as MATRL_SEQ
					 FROM ( 
  							SELECT  FORMAT([SKU],'000000000000000000') AS MATRL_NBR, PRICE
							--PRICE_Q1_2018 
							FROM [KNA_EXTERNAL].[USER_SC].[WGT_AVG_PRC]
							where  CHNL LIKE '%FS%' AND SKU IS NOT NULL
							UNION ALL
							SELECT MATRL_NBR,PRC
							FROM  KG_VIEWS.KNA.UVW_MATRL_PRC RP  
							WHERE MATRL_NBR IS NOT NULL	) M	) M
					WHERE MATRL_SEQ = 1
					)

					
,CTE1 AS(
         SELECT 
		  D.SNP_SHT_PRD,
		  E.MATRL_NBR,
		  [PIVOT_SEQ],
		  [WEEK],
		  [QTY],
		  [QTY]*CTE.PRICE AS SNPSHT_AMT,
		  SHIP_LOC ,
		  E.FISC_PD AS FISC_PD,
		  E.FISC_YR AS FISC_YR
	      FROM(
		        SELECT DISTINCT
					([SHP_SHT_PRD] COLLATE DATABASE_DEFAULT )AS [SNP_SHT_PRD]
					,(REPLICATE('0', 18 - LEN(RTRIM([MATRL]))) + RTRIM([MATRL])) COLLATE DATABASE_DEFAULT  AS MATRL_NBR
					,substring([SHP_SHT_PRD],2,2) AS FISC_PD
					,substring([SHP_SHT_PRD],4,4) AS FISC_YR
					, NSD COLLATE DATABASE_DEFAULT as SHIP_LOC 
					FROM [KNA_EXTERNAL].[SYSCO].[SYSCO_RDC_FCST_INFO] I WITH (NOLOCK)
			INNER JOIN  KNA_EXTERNAL.[SYSCO].SYSCO_NSD_MAP  UL ON UL.City= I.CTY 
			WHERE  (REPLICATE('0', 18 - LEN(RTRIM([MATRL]))) + RTRIM([MATRL])) COLLATE DATABASE_DEFAULT IS NOT NULL
		UNION
			SELECT DISTINCT
				([SNP_SHT_PRD] COLLATE DATABASE_DEFAULT )  AS [SNP_SHT_PRD]
				,(REPLICATE('0', 18 - LEN(RTRIM([MATRL]))) + RTRIM([MATRL])) COLLATE DATABASE_DEFAULT  AS MATRL_NBR
				,substring([SNP_SHT_PRD],2,2) AS FISC_PD
				,substring([SNP_SHT_PRD],4,4) AS FISC_YR
				,NSD COLLATE DATABASE_DEFAULT as SHIP_LOC 
			FROM [KNA_EXTERNAL].[SYSCO].[SYSCO_NONRDC_FCST_INFO] I WITH (NOLOCK)
			INNER JOIN  KNA_EXTERNAL.[SYSCO].SYSCO_NSD_MAP  UL ON UL.City= I.CITY 
			WHERE  (REPLICATE('0', 18 - LEN(RTRIM([MATRL]))) + RTRIM([MATRL])) COLLATE DATABASE_DEFAULT IS NOT NULL
			 ) D

			INNER JOIN(
			SELECT  DISTINCT
			(REPLICATE('0', 18 - LEN(RTRIM(N.[MATRL]))) + RTRIM(N.[MATRL]))	COLLATE DATABASE_DEFAULT  AS MATRL_NBR,
			COALESCE([SNP_SHT_PRD],'P082017') COLLATE DATABASE_DEFAULT AS [SNP_SHT_PRD],
			UL.NSD as SHIPMNT_LOC,
			[PIVOT_SEQ] ,
			[FISC_WK_STRT_DT]  AS [WEEK],
			SUM(COALESCE([QTY],0)) As QTY,
			SUBSTRING(COALESCE([SNP_SHT_PRD],'P082017'),2,2) AS FISC_PD,
			SUBSTRING(COALESCE([SNP_SHT_PRD],'P082017'),4,4) AS FISC_YR
			FROM [KNA_SALES].[STG].[SYSCO_PIVOT_WK_QTY] N
			INNER JOIN (SELECT DISTINCT SHP_SHT_PRD,  CMPNY_NBR, CTY , [MATRL] 
						FROM [KNA_EXTERNAL].[SYSCO].[SYSCO_RDC_FCST_INFO]
						UNION ALL
						SELECT DISTINCT SNP_SHT_PRD,  CMPNY_NBR, CITY , [MATRL] 
						FROM [KNA_EXTERNAL].[SYSCO].[SYSCO_NONRDC_FCST_INFO] ) D 
						ON SNP_SHT_PRD COLLATE DATABASE_DEFAULT  = D.SHP_SHT_PRD COLLATE DATABASE_DEFAULT 
						AND D.[MATRL] COLLATE DATABASE_DEFAULT  = N.[MATRL] COLLATE DATABASE_DEFAULT 
						AND D.CMPNY_NBR COLLATE DATABASE_DEFAULT = N.[CMPNY_NBR] COLLATE DATABASE_DEFAULT 
			INNER JOIN (SELECT DISTINCT City, NSD 
			            FROM KNA_EXTERNAL.[SYSCO].[SYSCO_NSD_MAP] 
						) UL 
						ON UL.City=D.CTY 
			INNER JOIN KG_VIEWS.KG.UVW_FISC_CAL C 
			ON  [WEEK] BETWEEN C.FISC_WK_STRT_DT and C.FISC_WK_END_DT
--			AND SUBSTRING([SNP_SHT_PRD],4,4) = C.FISC_YR
			WHERE(REPLICATE('0', 18 - LEN(RTRIM(N.[MATRL]))) + RTRIM(N.[MATRL])) COLLATE DATABASE_DEFAULT IS NOT NULL
			GROUP BY N.[MATRL], [SNP_SHT_PRD],UL.NSD, [PIVOT_SEQ],[FISC_WK_STRT_DT]	)  E
			ON  D.MATRL_NBR=E.MATRL_NBR 
			AND RTRIM(D.SNP_SHT_PRD ) = RTRIM(E.SNP_SHT_PRD)
			AND E.SHIPMNT_LOC = D.SHIP_LOC
			LEFT JOIN CTE ON CTE.MATRL_NBR=D.MATRL_NBR
	)
	    MERGE [dbo].[FOOD_SERV_DMND_FCST]  T
		USING CTE1 S WITH (NOLOCK)
	    ON  T.MATRL			= S.MATRL_NBR 
		AND T.FISC_YR	    = S.FISC_YR
		AND T.FISC_PD	    = S.FISC_PD
        AND T.SHIP_LOC      = S.SHIP_LOC
		AND T.[WK_SEQ]	    = S.[PIVOT_SEQ]  
		AND T.[SNPSHT_WK]	= S.[WEEK] 
		AND T.SNPSHT_PD     = S.SNP_SHT_PRD
	    AND T.[PLN_TO_CUST] LIKE '%300993%'

		WHEN MATCHED THEN UPDATE   SET
			T.[SNPSHT_QTY]      = S.[QTY],
			T.[SNPSHT_AMT]      = S.[SNPSHT_AMT],
		    T.[DW_MOD_TS]       = GETDATE(),
		    T.[DW_MOD_USR]      = USER_NAME()
		WHEN NOT MATCHED BY TARGET THEN INSERT(
					SNPSHT_PD
					,SHIP_LOC
					,MATRL
					,WK_SEQ
					,SNPSHT_WK
					,SNPSHT_QTY
					,SNPSHT_AMT
					,FISC_PD
				    ,FISC_YR
					,[PLN_TO_CUST]
                    ,[DW_CRE_TS]
				    ,[DW_CRE_USR]
				    ,[DW_MOD_TS]
				    ,[DW_MOD_USR]
				    ,[DW_DEL_BIT]
				    ,[DW_DEL_USR]
				    ,[DW_DEL_TS] )
		VALUES  (			  
	                  [SNP_SHT_PRD]
					  ,SHIP_LOC
					  ,MATRL_NBR
					  ,[PIVOT_SEQ]
					  ,[WEEK]
					  ,[QTY]
					  ,SNPSHT_AMT
					  ,FISC_PD
				      ,FISC_YR	
					  ,'0000300993'		   
				 	  ,GETDATE()
					  ,USER_NAME()
					  ,NULL
					  ,NULL
					  ,0
					  ,NULL
					  ,NULL
				   );


 ----------End of exception handling------------------------
			----
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SYSCO_WK_QTY_UNPIVOT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/***********************************************************************************************************    
-- Name: [USP_LOAD_SYSCO_WK_QTY_UNPIVOT]

--  Desc: Stored Procedure to insert UN-PIVOT Records for all the SYSCo Weekly Qty for all the Snapshot Period and Material combination
--        This is first procedure to be executed for Sysco data set followed by - USP_SYSCO_DMND_FCST_LOAD
--  Auth: Venkatesh Ramadhyani
--  Date: 23-Sep-2017
*************************************************************************************************************/

CREATE PROCEDURE [dbo].[USP_LOAD_SYSCO_WK_QTY_UNPIVOT]

AS 
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;

DECLARE @cols AS NVARCHAR(MAX),  
		@colsName AS NVARCHAR(MAX), 
		@query  AS NVARCHAR(MAX),
		@qry1 as NVARCHAR(MAX),
        @LOAD_DT datetime ;
----------------Get the SYSCO max date from FOOD_SERV_DMND_FCST  table -------------------------------------

SET @LOAD_DT = (
                 SELECT COALESCE(MAX([DW_CRE_TS]),'2016-10-29 00:00:01') 
				 FROM   [KNA_SALES].[dbo].FOOD_SERV_DMND_FCST 
				 WHERE PLN_TO_CUST LIKE '%300993%'
				)
----------------DELETE FROM SYSCO_PIVOT_WK_QTY TABLE IF ANY DATA EXIST ---------------
DELETE FROM   [KNA_SALES].[STG].[SYSCO_PIVOT_WK_QTY];

----------LOAD DATA TO SYSCO_PIVOT_WK_QTY FROM SYSCO_RDC_FCST_INFO IF @LOAD_DT IS LESS THEN LOAD_DT -------
--set @query=N'';
set @query = N'
INSERT INTO  [KNA_SALES].[STG].[SYSCO_PIVOT_WK_QTY] 
SELECT
     SNP_SHT_PRD, 
	 CMPNY_NBR, 
	 MATRL_NBR, 
	 SNAPSHOT_WEEK_SEQ, 
	 SNAPSHOT_WEEK , 
	 SNAPSHOT_WEEK_QTY
FROM  (
				      SELECT 
					       WK_QTY.[SNP_SHT_PRD], 
						   WK_QTY.CMPNY_NBR, 
						   WK_QTY.[MATRL_NBR], 
						   WK_QTY.SNAPSHOT_WEEK_SEQ,
						   WK_DATE.[SNAPSHOT_WEEK] , 
						   WK_QTY.SNAPSHOT_WEEK_QTY
					  FROM   (

					  		SELECT
							      [MATRL_NBR], 
								  CMPNY_NBR, 
								  [SNP_SHT_PRD],
								  SNAPSHOT_WEEK_SEQ,
								  [SNAPSHOT_WEEK] 				
							FROM   (
							         SELECT
									 [SNP_SHT_PRD], 
									 [MATRL_NBR], 
									 CMPNY_NBR, 
									 CAST(LTRIM(Right(col,CASE WHEN LEN(col) = 4 THEN 1 WHEN LEN(col) = 5 THEN 2 END )) as int) SNAPSHOT_WEEK_SEQ, 
									 value  as SNAPSHOT_WEEK
									 FROM  
									    (
											SELECT 
											      FI.[SHP_SHT_PRD] as [SNP_SHT_PRD],
												   [MATRL] as [MATRL_NBR], 
												   CMPNY_NBR, 
												   HI.[WK_1],
												   HI.[WK_2],
												   HI.[WK_3],
												   HI.[WK_4],
												   HI.[WK_5],
												   HI.[WK_6],
												   HI.[WK_7],
												   HI.[WK_8],
												   HI.[WK_9],
												   HI.[WK_10],	
												   HI.[WK_11],	 
												   HI.[WK_12],	
												   HI.[WK_13],
												   HI.[WK_14],
												   HI.[WK_15],
												   HI.[WK_16]
											FROM   [KNA_EXTERNAL].[SYSCO].[SYSCO_RDC_HDR_INFO] HI WITH (NOLOCK)
											INNER JOIN [KNA_EXTERNAL].[SYSCO].[SYSCO_RDC_FCST_INFO]  FI WITH (NOLOCK)
											ON  FI.[SHP_SHT_PRD] = HI.[SNP_SHT_PRD] 
											--AND CAST(FI.[LOAD_DT] as VARCHAR(30)) > '' + CAST(@LOAD_DT as Varchar(30)) +  ''
										 ) src
				               unpivot( value for col in ([WK_1],[WK_2],[WK_3],[WK_4],[WK_5],[WK_6],[WK_7],[WK_8],[WK_9],[WK_10],[WK_11],
							   	[WK_12],[WK_13],[WK_14],[WK_15],[WK_16]
							          )
			                )  unpiv

						) as N
				) WK_DATE
    INNER JOIN(

		      			SELECT
						      [SNP_SHT_PRD], 
							  [MATRL_NBR], 
							  [CMPNY_NBR],  
							  SNAPSHOT_WEEK_SEQ, 
							  SNAPSHOT_WEEK_QTY
					   FROM   (	
					        SELECT 
							      [SNP_SHT_PRD], 
								  [MATRL_NBR], 
								  [CMPNY_NBR],  
								  CAST(LTRIM(Right(col,CASE WHEN LEN(col) = 4 THEN 1 WHEN LEN(col) = 5 THEN 2 END )) as int) SNAPSHOT_WEEK_SEQ,
								  WK_QTY  as SNAPSHOT_WEEK_QTY
					         FROM  (
							    	SELECT 
									     HI.[SHP_SHT_PRD] as [SNP_SHT_PRD],
										 [MATRL] as [MATRL_NBR],
										 CMPNY_NBR,
										 HI.[WK_1],
										 HI.[WK_2],
										 HI.[WK_3],
										 HI.[WK_4],
										 HI.[WK_5],
										 HI.[WK_6],
										 HI.[WK_7],
										 HI.[WK_8],
										 HI.[WK_9],
										 HI.[WK_10],	
										 HI.[WK_11],	 
										 HI.[WK_12],	
										 HI.[WK_13],
										 HI.[WK_14],
										 HI.[WK_15],
										 HI.[WK_16] 
								      FROM  	[KNA_EXTERNAL].[SYSCO].[SYSCO_RDC_FCST_INFO] HI WITH (NOLOCK)
									  --WHERE  CAST(HI.[LOAD_DT] as VARCHAR(30)) > '' + CAST(@LOAD_DT as Varchar(30)) +  ''
									)QTY

					UNPIVOT (WK_QTY For col in ( [WK_1],[WK_2],[WK_3],[WK_4],[WK_5],[WK_6],[WK_7],[WK_8],[WK_9],[WK_10],[WK_11],
					       		        [WK_12],[WK_13],[WK_14],[WK_15],[WK_16]
						    )
							)  unpiv1
						) FI 
		) WK_QTY
		ON WK_DATE.[SNP_SHT_PRD] = WK_QTY.[SNP_SHT_PRD] 
		AND WK_DATE.[MATRL_NBR] = WK_QTY.[MATRL_NBR] 
		AND WK_DATE.SNAPSHOT_WEEK_SEQ = WK_QTY.SNAPSHOT_WEEK_SEQ 
		AND WK_DATE.CMPNY_NBR = WK_QTY.CMPNY_NBR
) A'

----------LOAD DATA TO SYSCO_PIVOT_WK_QTY FROM SYSCO_NONRDC_HDR_INFO IF @LOAD_DT IS LESS THEN LOAD_DT ----
set @qry1 = N' 
INSERT INTO  [KNA_SALES].[STG].[SYSCO_PIVOT_WK_QTY] 
SELECT 
    SNP_SHT_PRD, 
	CMPNY_NBR, 
	MATRL_NBR, 
	SNAPSHOT_WEEK_SEQ, 
	SNAPSHOT_WEEK , 
	SNAPSHOT_WEEK_QTY				
FROM  (
       SELECT 
	        WK_QTY1.[SNP_SHT_PRD], 
			WK_QTY1.CMPNY_NBR, 
			WK_QTY1.[MATRL_NBR],
			WK_QTY1.SNAPSHOT_WEEK_SEQ,
            WK_DATE1.[SNAPSHOT_WEEK] , 
			WK_QTY1.SNAPSHOT_WEEK_QTY
       FROM  (
	         SELECT 
			       [MATRL_NBR], 
				   CMPNY_NBR, 
				   [SNP_SHT_PRD],
				   SNAPSHOT_WEEK_SEQ,
				   [SNAPSHOT_WEEK] 				
			  FROM (
			         SELECT 
					       [SNP_SHT_PRD], 
						   [MATRL_NBR], 
						   CMPNY_NBR, 
						   CAST(LTRIM(Right(col,CASE WHEN LEN(col) = 4 THEN 1 WHEN LEN(col) = 5 THEN 2 END )) as int) SNAPSHOT_WEEK_SEQ, 
						   value  as SNAPSHOT_WEEK
						FROM (
						       SELECT  
							         FI.[SNP_SHT_PRD] as [SNP_SHT_PRD],
									 [MATRL] as [MATRL_NBR],
									 CMPNY_NBR, 
									 HI.[WK_1],
									 HI.[WK_2],
									 HI.[WK_3],
									 HI.[WK_4],
									 HI.[WK_5],
									 HI.[WK_6],
									 HI.[WK_7],
									 HI.[WK_8],
									 HI.[WK_9],
									 HI.[WK_10],	
									 HI.[WK_11],	 
									 HI.[WK_12],	
									 HI.[WK_13],
									 HI.[WK_14],
									 HI.[WK_15],
									 HI.[WK_16]
                   			FROM  [KNA_EXTERNAL].[SYSCO].[SYSCO_NONRDC_HDR_INFO] HI
							INNER JOIN [KNA_EXTERNAL].[SYSCO].[SYSCO_NONRDC_FCST_INFO]  FI 
							ON  FI.[SNP_SHT_PRD] = HI.[SNP_SHT_PRD] 
							
						  ) src
				unpivot(
					value for col in  
					([WK_1],[WK_2],[WK_3],[WK_4],[WK_5],[WK_6],[WK_7],[WK_8],
					[WK_9],[WK_10],[WK_11],[WK_12],[WK_13],[WK_14],[WK_15],[WK_16]
					)
				)  unpiv
           ) as N	
		 ) WK_DATE1
   INNER JOIN (
   				SELECT 
				      [SNP_SHT_PRD], 
					  [MATRL_NBR], 
					  CMPNY_NBR,  
					  SNAPSHOT_WEEK_SEQ, 
					  SNAPSHOT_WEEK_QTY
				FROM  (	
				        SELECT 
						      [SNP_SHT_PRD], 
							  [MATRL_NBR], 
							  CMPNY_NBR,  
							  CAST(LTRIM(Right(col,CASE WHEN LEN(col) = 4 THEN 1 WHEN LEN(col) = 5 THEN 2 END )) as int) SNAPSHOT_WEEK_SEQ,
							  WK_QTY  as SNAPSHOT_WEEK_QTY
						 FROM (
						        SELECT  
								     HI.[SNP_SHT_PRD] as [SNP_SHT_PRD],
									 [MATRL] as [MATRL_NBR],CMPNY_NBR,
									 HI.[WK_1],
									 HI.[WK_2],
									 HI.[WK_3],
									 HI.[WK_4],
									 HI.[WK_5],
									 HI.[WK_6],
									 HI.[WK_7],
									 HI.[WK_8],
									 HI.[WK_9],
									 HI.[WK_10],	
									 HI.[WK_11],	 
									 HI.[WK_12],	
									 HI.[WK_13],
									 HI.[WK_14],
									 HI.[WK_15],
									 HI.[WK_16] 
							  FROM 	[KNA_EXTERNAL].[SYSCO].[SYSCO_NONRDC_FCST_INFO] HI WITH (NOLOCK)
							  WHERE  CAST(HI.[LOAD_DT] as VARCHAR(30)) > '' + CAST(@LOAD_DT as Varchar(30)) +  ''
         				    ) QTY

					UNPIVOT	(
					   WK_QTY For col  in  ([WK_1],[WK_2],[WK_3],[WK_4],[WK_5],[WK_6],[WK_7],[WK_8],
										    [WK_9],[WK_10],[WK_11],[WK_12],[WK_13],[WK_14],[WK_15],[WK_16]
										   )
                     		)  unpiv1
      				) FI 
   		) WK_QTY1

  ON WK_DATE1.[SNP_SHT_PRD] = WK_QTY1.[SNP_SHT_PRD] 
  AND WK_DATE1.[MATRL_NBR] = WK_QTY1.[MATRL_NBR] 
  AND WK_DATE1.SNAPSHOT_WEEK_SEQ = WK_QTY1.SNAPSHOT_WEEK_SEQ 
  AND WK_DATE1.CMPNY_NBR = WK_QTY1.CMPNY_NBR

) A	';


-----------  Query ends here-------------------------------------------------------

EXECUTE  sp_executesql @query;
EXECUTE  sp_executesql @qry1;

-----------  END ERROR HADLING-------------------------------------------------------
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END















GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_USFOODS_DMND_FCST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============================================================================================
-- Name				:	[USP_LOAD_USFOODS_DMND_FCST]
-- Author			:	Ramadhyani, Venkatesh\Chandars
-- Create date		:	08/16/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data to USFOODS_DMND_FCST table	
-- Comments			:
--					:	Modified to support FIS_YR change (from 2017 to 2018 ) at the year end 
-- =============================================================================================
CREATE PROCEDURE [dbo].[USP_LOAD_USFOODS_DMND_FCST] 
AS 
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;
	WITH CTE AS (

	 SELECT MATRL_NBR, PRICE
	 FROM (
 	SELECT MATRL_NBR, PRICE ,
		ROW_NUMBER() OVER (PARTITION BY MATRL_NBR ORDER BY MATRL_NBR ASC) as MATRL_SEQ
	FROM ( 
  		SELECT  FORMAT([SKU],'000000000000000000') AS MATRL_NBR, PRICE
		FROM [KNA_EXTERNAL].[USER_SC].[WGT_AVG_PRC]
		where  CHNL LIKE '%FS%' AND SKU IS NOT NULL
		UNION ALL
		SELECT MATRL_NBR,PRC
		FROM  KG_VIEWS.KNA.UVW_MATRL_PRC RP  
		WHERE MATRL_NBR IS NOT NULL	) M	) M
	WHERE MATRL_SEQ = 1
)

,CTE1 as (
	    SELECT DISTINCT
		D.SNP_SHT_PRD,
		E.MATRL_NBR,
		[WEEK],
		[PIVOT_SEQ],
		[QTY],
		[QTY]*CTE.PRICE AS SNPSHT_AMT,
		D.SHIPMNT_LOC,
		E.FISC_PD,
		E.FISC_YR
		FROM 
	   (
		   SELECT DISTINCT
			(REPLICATE('0', 18 - LEN(RTRIM(MFR_PRD_NBR))) + RTRIM(MFR_PRD_NBR)) COLLATE DATABASE_DEFAULT  AS MATRL_NBR,
			(SHP_FRM_CTY COLLATE DATABASE_DEFAULT) AS SHP_FRM_CTY,
			UL.NSD_LOC as SHIPMNT_LOC, 
			SNP_SHT_PRD,
			 SUBSTRING (SNP_SHT_PRD,2,2) AS FISC_PD,
			 SUBSTRING(SNP_SHT_PRD,4,4) AS FISC_YR
		   FROM [KNA_EXTERNAL].[US_FOODS].[USFOODS_SALS_FCST_INFO] D
		   INNER JOIN  KNA_EXTERNAL.[US_FOODS].[USFOODS_NSD_LOC]	UL ON UL.SHP_FRM_CITY=D.SHP_FRM_CTY 
		   WHERE (REPLICATE('0', 18 - LEN(RTRIM(MFR_PRD_NBR))) + RTRIM(MFR_PRD_NBR))  COLLATE DATABASE_DEFAULT IS NOT NULL
	    )D 
	   INNER JOIN  (SELECT DISTINCT 		
		                (REPLICATE('0', 18 - LEN(RTRIM([MATRL_NBR]))) + RTRIM([MATRL_NBR])) COLLATE DATABASE_DEFAULT  AS MATRL_NBR,
						UL.NSD_LOC as SHIPMNT_LOC,
						WK_SEQ as [PIVOT_SEQ] ,
						(FISC_WK_STRT_DT ) AS [WEEK],
						SUM(ISNULL([SNPSHT_QTY],0)) AS [QTY],
						[SNPSHT_PD] AS SNP_SHT_PRD,
						'0'+SUBSTRING([SNPSHT_PD],2,2) AS FISC_PD,
						SUBSTRING([SNPSHT_PD],4,4) AS FISC_YR
		FROM [KNA_SALES].[STG].[USFS_PIVOT_WK_QTY] WITH (NOLOCK) 
		INNER JOIN (SELECT DISTINCT 
		                   SNP_SHT_PRD, 
						   DVSN_NBR, 
						   SHP_FRM_CTY , 
						   [MFR_PRD_NBR] 
		            FROM [KNA_EXTERNAL].[US_FOODS].[USFOODS_SALS_FCST_INFO]) D 
					ON D.[DVSN_NBR]  = [DIVN_NBR] 
					AND SNPSHT_PD COLLATE DATABASE_DEFAULT  = D.SNP_SHT_PRD COLLATE DATABASE_DEFAULT 
					AND D.[MFR_PRD_NBR] COLLATE DATABASE_DEFAULT  = MATRL_NBR COLLATE DATABASE_DEFAULT 
		INNER JOIN (SELECT DISTINCT SHP_FRM_CITY, NSD_LOC,ROW_NUMBER() OVER (PARTITION BY NSD_LOC ORDER BY NSD_LOC ASC) as NSD_LOC_SEQ
					FROM KNA_EXTERNAL.[US_FOODS].[USFOODS_NSD_LOC] ) UL 
					ON UL.SHP_FRM_CITY=D.SHP_FRM_CTY AND NSD_LOC_SEQ = 1
		INNER JOIN KG_VIEWS.KG.UVW_FISC_CAL C ON  [SNPSHT_WK] BETWEEN C.FISC_WK_STRT_DT and C.FISC_WK_END_DT
--		AND SUBSTRING([SNPSHT_PD],4,4) = C.FISC_YR
		WHERE (REPLICATE('0', 18 - LEN(RTRIM([MATRL_NBR]))) + RTRIM([MATRL_NBR])) COLLATE DATABASE_DEFAULT IS NOT NULL
		GROUP BY [MATRL_NBR],UL.NSD_LOC,WK_SEQ,FISC_WK_STRT_DT,[SNPSHT_PD] , FISC_PD, FISC_YR) E
	    ON  D.MATRL_NBR=E.MATRL_NBR 
		AND E.[SNP_SHT_PRD] COLLATE DATABASE_DEFAULT  = D.SNP_SHT_PRD COLLATE DATABASE_DEFAULT 
		AND E.SHIPMNT_LOC = D.SHIPMNT_LOC
		LEFT JOIN CTE ON CTE.MATRL_NBR=D.MATRL_NBR 
	  )

 

/* this MERGE JOIN Used to update if exist or insert if data not exist on [USFOODS_DMND_FCST_TEST] table based  on the MATERIAL and week */
     	
		MERGE [dbo].[FOOD_SERV_DMND_FCST] T
		USING CTE1 S WITH (NOLOCK)
		ON  T.MATRL		    = S.MATRL_NBR
		AND T.FISC_YR	    = S.FISC_YR
		AND T.FISC_PD	    = S.FISC_PD
        AND T.SHIP_LOC       = S.SHIPMNT_LOC
		AND T.[WK_SEQ]	    = S.[PIVOT_SEQ]  
		AND T.[SNPSHT_WK]	= S.[WEEK] 
		AND T.SNPSHT_PD     = S.SNP_SHT_PRD	COLLATE DATABASE_DEFAULT
		AND T.[PLN_TO_CUST] LIKE'%300346'
		
		
		WHEN MATCHED THEN UPDATE SET
		T.[SNPSHT_QTY] = S.[QTY],
		T.SNPSHT_AMT=S.SNPSHT_AMT,
		T.[DW_MOD_TS]= GETDATE(),
		T.[DW_MOD_USR]= USER_NAME()
		

		WHEN NOT MATCHED BY TARGET THEN INSERT(
		 MATRL
		,SNPSHT_PD
		,WK_SEQ
		,SNPSHT_WK
		,SNPSHT_QTY
		,SHIP_LOC
		,SNPSHT_AMT
		,FISC_PD
		,FISC_YR
		,[PLN_TO_CUST]
		,[DW_CRE_TS],[DW_CRE_USR],[DW_MOD_TS],[DW_MOD_USR],[DW_DEL_BIT],[DW_DEL_USR],[DW_DEL_TS])
		VALUES (
		MATRL_NBR,
		SNP_SHT_PRD,
		[PIVOT_SEQ],
		[WEEK],
		[QTY],
		SHIPMNT_LOC,
		[SNPSHT_AMT]
		,FISC_PD
		,FISC_YR,
		'0000300346'
		,GETDATE(),USER_NAME(),null,null,0,NULL,NULL);



 ----------End of exception handling------------------------
			----
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_USFOODS_WK_QTY_UNPIVOT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************************************************************************************************       
** Name: [USP_LOAD_USFOODS_WK_QTY_UNPIVOT]
** Desc: Stored Procedure to insert UN-PIVOT Records for all the USFOODS Weekly Qty for all the Snapshot Period and Material combination
** Auth: Venkatesh Ramadhyani
** Date: 23-Sep-2017
************************************************************************************************************************/
CREATE PROCEDURE [dbo].[USP_LOAD_USFOODS_WK_QTY_UNPIVOT] 
AS 
BEGIN

SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
----------------------------START ERROR HADNLING--------------------------------------------------
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;
----------------------------DECLARED VARIABLES-----------------------------------------------
DECLARE 
      @cols AS NVARCHAR(MAX),   
	  @colsName AS NVARCHAR(MAX),  
	  @query  AS NVARCHAR(MAX),
      @LOAD_DT datetime ;
----------------------------GET MAX DATE----------------------------------------------------
SET @LOAD_DT = (	SELECT COALESCE(MAX([DW_CRE_TS]),'2016-01-01') 
					FROM  [KNA_SALES].[dbo].FOOD_SERV_DMND_FCST
					WHERE PLN_TO_CUST LIKE '%300346%'
			    )

				
----------------------------DELETE FROM STAGE TABLE IF EXIST-----------------------------------
DELETE FROM   [KNA_SALES].[STG].[USFS_PIVOT_WK_QTY] ;

----------------------------INSERT DATE TO STAGE TABLE IF EXIST-----------------------------------
set @query=N'';
set @query = N' INSERT INTO  [KNA_SALES].[STG].[USFS_PIVOT_WK_QTY] 
				SELECT
				     WK_QTY.[MATRL_NBR], 
					 WK_QTY.[DIVN_NBR],
					 WK_QTY.[SNP_SHT_PRD],
					 WK_QTY.SNAPSHOT_WEEK_SEQ,
				     WK_DATE.[SNAPSHOT_WEEK] , 
					 WK_QTY.SNAPSHOT_WEEK_QTY
				FROM  (
				      SELECT 
					       [MATRL_NBR], 
						   [DIVN_NBR],
						   [SNP_SHT_PRD],
						   SNAPSHOT_WEEK_SEQ,
						   [SNAPSHOT_WEEK] 				
				      FROM (
				      		SELECT 
							      [SNP_SHT_PRD], 
								  [MATRL_NBR], 
								  [DIVN_NBR],
								  CAST(LTRIM(Right(col,CASE WHEN LEN(col) = 4 THEN 1 WHEN LEN(col) = 5 THEN 2 END )) as int) SNAPSHOT_WEEK_SEQ,
					              value  as SNAPSHOT_WEEK
					         FROM (
					                SELECT  
									      HI.[SNP_SHT_PRD] as [SNP_SHT_PRD],
										  [MFR_PRD_NBR] as [MATRL_NBR],
										  CAST([DVSN_NBR] as CHAR(4)) as DIVN_NBR, 
					                       HI.[WK_1],
										   HI.[WK_2],
										   HI.[WK_3],
										   HI.[WK_4],
										   HI.[WK_5],
										   HI.[WK_6],
										   HI.[WK_7],
										   HI.[WK_8],
										   HI.[WK_9],
					                       HI.[WK_10],
										   HI.[WK_11],
										   HI.[WK_12],
										   HI.[WK_13],
										   HI.[WK_14],
										   HI.[WK_15],
										   HI.[WK_16]
					                FROM  [KNA_EXTERNAL].[US_FOODS].[USFOODS_HDR_INFO] HI
									INNER JOIN [KNA_EXTERNAL].[US_FOODS].[USFOODS_SALS_FCST_INFO]  FI 
									ON  FI.[SNP_SHT_PRD] = HI.[SNP_SHT_PRD] 
					                AND CAST(FI.[LOAD_DT] as VARCHAR(10)) > '' + CAST(@LOAD_DT as Varchar(10)) +  ''
					              ) src
					     unpivot
					           (value for col in (
							   [WK_1],[WK_2],[WK_3],[WK_4],[WK_5],[WK_6],[WK_7],[WK_8],
							   [WK_9],[WK_10],[WK_11],[WK_12],[WK_13],[WK_14],[WK_15],[WK_16]
							   )
					    )  unpiv
					  ) as N	
				) WK_DATE
INNER JOIN (
						   SELECT 
						       [SNP_SHT_PRD], 
							   [MATRL_NBR], 
							   [DIVN_NBR],  
							   SNAPSHOT_WEEK_SEQ, 
							   SNAPSHOT_WEEK_QTY
						   FROM  (	
						          SELECT 
								        [SNP_SHT_PRD], 
										[MATRL_NBR], 
										[DIVN_NBR],  
						                CAST(LTRIM(Right(col,CASE WHEN LEN(col) = 4 THEN 1 WHEN LEN(col) = 5 THEN 2 END )) as int) SNAPSHOT_WEEK_SEQ,
						                WK_QTY  as SNAPSHOT_WEEK_QTY
						   FROM  (
						          SELECT  
								      HI.[SNP_SHT_PRD] as [SNP_SHT_PRD],
									  [MFR_PRD_NBR] as [MATRL_NBR],
									  CAST([DVSN_NBR] as CHAR(4)) as DIVN_NBR,
						              HI.[WK_1],
									  HI.[WK_2],
									  HI.[WK_3],
									  HI.[WK_4],
									  HI.[WK_5],
									  HI.[WK_6],
									  HI.[WK_7],
									  HI.[WK_8],
									  HI.[WK_9],
									  HI.[WK_10],	
						              HI.[WK_11],	
									  HI.[WK_12],	
									  HI.[WK_13],
									  HI.[WK_14],
									  HI.[WK_15],
									  HI.[WK_16] FROM  
						   [KNA_EXTERNAL].[US_FOODS].[USFOODS_SALS_FCST_INFO] HI 
						   WHERE HI.[SNP_SHT_PRD] <> ''PERIOD SUBMISSION''  
						   AND  CAST(HI.[LOAD_DT] as VARCHAR(10)) > '' + CAST(@LOAD_DT as Varchar(10)) +  ''
					) QTY
					UNPIVOT	(
					WK_QTY For col in 
					           ([WK_1],[WK_2],[WK_3],[WK_4],[WK_5],[WK_6],[WK_7],[WK_8],
					            [WK_9],[WK_10],[WK_11],[WK_12],[WK_13],[WK_14],[WK_15],[WK_16]
							   )
					)  unpiv1
			   ) FI 
			) WK_QTY
ON WK_DATE.[SNP_SHT_PRD] = WK_QTY.[SNP_SHT_PRD] 
AND WK_DATE.[MATRL_NBR] = WK_QTY.[MATRL_NBR] 
AND WK_DATE.SNAPSHOT_WEEK_SEQ = WK_QTY.SNAPSHOT_WEEK_SEQ 
AND WK_DATE.DIVN_NBR = WK_QTY.DIVN_NBR'


----------------------------EXECUTE DYNAMIC QUERY-----------------------------------
EXECUTE  sp_executesql @query;
 --------------------------END OF ERROR HANDLING------------------------------------
			----
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END












GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_WALMART_POS_ECOMM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-- ===================================================================================================================================================
 Author:		SIVAMARAN
 Create date:   10/17/2017
 Description:	Extract the e-commerce data - WALMART COM data for Current year and Previous Year map via FISC Calendar and along with Product Hirerarchy
 NAME:          USP_LOAD_WALMART_POS_ECOMM
	
 REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        10/17/2017   USCS1B13         Initial Version. Create the store procedure USP_LOAD_WALMART_POS_ECOMM
		2.0        10/13/2017   USCS1B13         Added the MATRL STATUS
		3.0		   03/02/2017   USCB1S07         Added the logic to include Walmart calendar dates 
-- ====================================================================================================================================================
*/


CREATE PROCEDURE [dbo].[USP_LOAD_WALMART_POS_ECOMM]
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	SAVE TRANSACTION  start_tran;


--Cleanup the temporary staging table if it exisit

IF OBJECT_ID(N'STG.WALMART_FISC_CAL', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_FISC_CAL;

IF OBJECT_ID(N'STG.WALMART_PROD_HIER', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_PROD_HIER;

IF OBJECT_ID(N'STG.WALMART_POS_TMP1', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_TMP1;

IF OBJECT_ID(N'STG.WALMART_POS_TMP2', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_TMP2;

IF OBJECT_ID(N'STG.WALMART_POS_TMP3', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_TMP3;

IF OBJECT_ID(N'STG.WALMART_POS_ENRCH', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_ENRCH;

--Extract the FISC Calendar data into stage (temporary) table
SELECT FISC_YR, FISC_QTR, FISC_PD, FISC_WK, FISC_WK_STRT_DT, FISC_WK_END_DT 
INTO [KNA_SALES].[STG].WALMART_FISC_CAL 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WITH (NOLOCK);

CREATE INDEX IDX_WM_01 ON [KNA_SALES].[STG].WALMART_FISC_CAL(FISC_YR);
CREATE INDEX IDX_WM_02 ON [KNA_SALES].[STG].WALMART_FISC_CAL(FISC_WK_STRT_DT);
CREATE INDEX IDX_WM_03 ON [KNA_SALES].[STG].WALMART_FISC_CAL(FISC_WK_END_DT);


--Extract the Product Hirerarchy data map with UPC and finished goods into (temporary) table

SELECT DISTINCT
	PHR.UPC,
	PHR.MATRL_DESC,
	PHR.PROD_HIER_CATEGORY_DESC AS [CATEGORY],
	PHR.PROD_HIER_SUB_CATEGORY_DESC AS [SUB_CATEGORY],
	PHR.PROD_HIER_BRAND_DESC  AS [BRAND],
	PHR.PROD_HIER_MARKET_SEGMENT_DESC AS [SEGMENT],
	PHR.BU,
	PHR.MATRL_STATUS
INTO [KNA_SALES].[STG].WALMART_PROD_HIER
FROM
(SELECT A.UPC, A.MATRL_NBR, BB.MATRL_DESC,BB.MATRL_STS, 
CASE 
	WHEN BB.MATRL_STS='Z5' OR BB.MATRL_STS='Z6'
		THEN 'INACTIVE'
	ELSE 'ACTIVE'
END AS MATRL_STATUS,
C.PROD_HIER_CATEGORY, C.PROD_HIER_CATEGORY_DESC, C.PROD_HIER_SUB_CATEGORY, 
                  C.PROD_HIER_SUB_CATEGORY_DESC, C.PROD_HIER_BRAND, C.PROD_HIER_BRAND_DESC, C.PROD_HIER_MARKET_SEGMENT, 
                  C.PROD_HIER_MARKET_SEGMENT_DESC, BU.BU
FROM     (SELECT CAST(SUBSTRING(GTIN, 1, LEN(GTIN) - 1) AS DECIMAL(18, 0)) AS UPC, MAX(MATRL_NBR) AS MATRL_NBR
                  FROM      KG_VIEWS.KNA.UVW_MATRL_GTIN WITH (NOLOCK)
                  WHERE   (GTIN_TYP = 'UPC')
                  GROUP BY CAST(SUBSTRING(GTIN, 1, LEN(GTIN) - 1) AS DECIMAL(18, 0))) AS A INNER JOIN
                  (SELECT B.MATRL_DESC, B.MATRL_NBR, B.MATRL_TYP, B.PROD_HIER , B.MATRL_STS FROM KG_VIEWS.KNA.UVW_MATRL AS B WITH (NOLOCK) 
				  WHERE B.MATRL_TYP = 'FERT') AS BB
				  ON BB.MATRL_NBR = A.MATRL_NBR INNER JOIN
                  KG_VIEWS.KNA.UVW_PROD_HIER AS C WITH (NOLOCK) ON C.PROD_HIER = BB.PROD_HIER INNER JOIN
                  KG_VIEWS.KNA.UVW_CUST_MATRL_BU AS BU WITH (NOLOCK) ON BU.MATRL_NBR = A.MATRL_NBR
) AS PHR;

CREATE NONCLUSTERED INDEX [IDX_POS_WM_03] ON [KNA_SALES].[STG].WALMART_PROD_HIER
(
	UPC
);

--Extract the walmart COM data map for current and previous year into (temporary) table

SELECT
WM.SUBPARTSUFFIXTXT, WM.SOLDTO, WM.STORENBR, WM.STOREDESC, WM.UPC, WM.UPCDESC, WM.[DAY], WM.POS_SALES, WM.POS_QTY
INTO [KNA_SALES].[STG].WALMART_POS_TMP1
FROM [KNA_SALES].[dbo].[UVW_POS_WMCOMUS] WM WITH (NOLOCK)
WHERE
YEAR(WM.[DAY]) IN (YEAR(GETDATE()) ,YEAR(GETDATE())-1);


CREATE NONCLUSTERED COLUMNSTORE INDEX [IDX_POS_WM_01] ON [KNA_SALES].[STG].WALMART_POS_TMP1
(
	[DAY]
);


--Extract the COM data based on FISC calendar week wise into Stage (temporary) table
-- CTE table to derive Walmart calendar dates
WITH CTE_WM_FISC_CAL
AS (
SELECT FISC_YR, FISC_QTR, FISC_PD, FISC_WK
,MIN(CAL_DY) WM_FISC_WK_STRT_DT
,MAX(CAL_DY) AS WM_FISC_WK_END_DT
FROM KG_VIEWS.KNA.UVW_WALMART_FISC_CAL WITH (NOLOCK)
GROUP BY FISC_YR, FISC_QTR, FISC_PD, FISC_WK
)
SELECT 
	  WM.[SUBPARTSUFFIXTXT]
      ,WM.[SOLDTO]
      ,WM.[STORENBR]
      ,WM.[STOREDESC]
      ,WM.[UPC]
	  ,CONVERT(DECIMAL(18,0), WM.UPC) AS UPC_DEC
      ,WM.[DAY]
      ,WM.[POS_SALES]
	  ,FC.FISC_WK_STRT_DT  as WK_STARTING
	  ,FC.FISC_YR AS YEAR
	  ,FC.FISC_PD --3/17
	  ,CASE WHEN WM.DAY >= FC.FISC_WK_STRT_DT AND WM.DAY <= FC.FISC_WK_END_DT THEN FC.FISC_WK  END AS WEEK
	  ,WM_CAL.WM_FISC_WK_STRT_DT
	  ,WM_CAL.FISC_YR AS WM_FISC_YR
	  ,WM_CAL.FISC_PD as WM_FISC_PD
	  ,WM_CAL.FISC_WK AS WM_FISC_WK

INTO [KNA_SALES].[STG].WALMART_POS_TMP2
FROM [KNA_SALES].[STG].WALMART_POS_TMP1 WM
INNER JOIN
[KNA_SALES].[STG].WALMART_FISC_CAL FC
ON
--YEAR(WM.DAY) = FC.FISC_YR
--WHERE
WM.DAY BETWEEN FC.FISC_WK_STRT_DT AND FC.FISC_WK_END_DT
LEFT JOIN CTE_WM_FISC_CAL WM_CAL
ON WM.DAY BETWEEN WM_CAL.WM_FISC_WK_STRT_DT AND WM_CAL.WM_FISC_WK_END_DT;

CREATE NONCLUSTERED INDEX [IDX_POS_WM_02] ON [KNA_SALES].[STG].WALMART_POS_TMP2
(
	UPC_DEC
);

IF OBJECT_ID(N'STG.WALMART_POS_TMP1', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_TMP1;

IF OBJECT_ID(N'STG.WALMART_FISC_CAL', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_FISC_CAL;

--Extract the COM data joining with product hirerarchy into Stage (temporary) table

SELECT
WM.[SUBPARTSUFFIXTXT]
,WM.[SOLDTO]
,WM.[STORENBR]
,WM.[STOREDESC]
,WM.[UPC]
,WM.UPC_DEC
,WM.[DAY]
,WM.[POS_SALES]
,WM.WK_STARTING
,WM.[YEAR]
,WM.[FISC_PD]--3/17
,WM.[WEEK]
,WM.WM_FISC_WK_STRT_DT
,WM.WM_FISC_YR
,WM.WM_FISC_PD
,WM.WM_FISC_WK
,PHR.UPC AS UPCPHR
,PHR.MATRL_DESC
,PHR.[CATEGORY]
,PHR.[SUB_CATEGORY]
,PHR.[BRAND]
,PHR.[SEGMENT]
,PHR.BU
,PHR.MATRL_STATUS

INTO [KNA_SALES].[STG].WALMART_POS_TMP3
FROM [KNA_SALES].[STG].WALMART_POS_TMP2 WM
INNER JOIN
[KNA_SALES].[STG].WALMART_PROD_HIER AS PHR 
ON WM.UPC_DEC = PHR.UPC;

IF OBJECT_ID(N'STG.WALMART_POS_TMP2', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_TMP2;

IF OBJECT_ID(N'STG.WALMART_PROD_HIER', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_PROD_HIER;

CREATE NONCLUSTERED INDEX [IDX_POS_WM_01] ON [STG].WALMART_POS_TMP3
(
	UPC,
	MATRL_DESC,
	SOLDTO,
	STORENBR,
	STOREDESC,	
	[CATEGORY],
	[SUB_CATEGORY],
	[BRAND],
	[SEGMENT],
	BU,
	MATRL_STATUS,
	[YEAR],
	[WEEK]
);

--Extract the COM data and calculate the TOTAL SALES into Final table

SELECT 
	WM.UPC,
	WM.MATRL_DESC,
	WM.SOLDTO,
	WM.STORENBR,
	WM.STOREDESC,	
	WM.[CATEGORY],
	WM.[SUB_CATEGORY],
	WM.[BRAND],
	WM.[SEGMENT],
	WM.BU,
	WM.MATRL_STATUS,
	WM.[DAY],
	WM.[WK_STARTING],		
	WM.[YEAR],
	WM.FISC_PD,--3/17
	WM.[WEEK],
	WM.WM_FISC_WK_STRT_DT,
	WM.WM_FISC_YR,
	WM.WM_FISC_PD,
	WM.WM_FISC_WK,
    SUM(WM.POS_SALES) AS TOTAL_SALES
INTO [KNA_SALES].[STG].WALMART_POS_ENRCH
FROM [KNA_SALES].[STG].WALMART_POS_TMP3 WM
GROUP BY
	WM.UPC,
	WM.MATRL_DESC,
	WM.SOLDTO,
	WM.STORENBR,
	WM.STOREDESC,	
	WM.[CATEGORY],
	WM.[SUB_CATEGORY],
	WM.[BRAND],
	WM.[SEGMENT],
	WM.BU,
	WM.MATRL_STATUS,
	WM.[DAY],
	WM.[WK_STARTING],	
	WM.[YEAR],
	WM.FISC_PD,--3/17
	WM.[WEEK],
	WM.WM_FISC_WK_STRT_DT,
	WM.WM_FISC_YR,
	WM.WM_FISC_PD,
	WM.WM_FISC_WK;

IF OBJECT_ID(N'STG.WALMART_POS_TMP3', N'U') IS NOT NULL
DROP TABLE [KNA_SALES].[STG].WALMART_POS_TMP3;


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
/****** Object:  StoredProcedure [dbo].[USP_REX_CUST_PROD_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Vikram Ganti
-- ALTER date: 2018-01-05
-- Description:	Getting historical Customer Hierarchy based on the business requirements.
--				Getting Product hierarchy
-- Modified Date : 2018-01-05
-- Comments : Hierarchy B should have Territory
--				AND CH.LVL7_CUST_NBR IS NOT NULL
-- =============================================
CREATE PROCEDURE [dbo].[USP_REX_CUST_PROD_HIER]

AS
BEGIN


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRY

DECLARE @CUR_DT DATE
DECLARE @YR INT
SET @YR = NULL
SET @CUR_DT = NULL
SELECT @YR = CUR_YR, @CUR_DT = PD_DT FROM KNA_SALES.[dbo].[UVW_REX_PD_DT]


BEGIN TRANSACTION


--- If temp table exists then drop the table
IF OBJECT_ID('tempdb..#HIST_CUST_HIER') IS NOT NULL  
  DROP TABLE #HIST_CUST_HIER

IF OBJECT_ID('tempdb..#CUR_CUST_HIER') IS NOT NULL  
  DROP TABLE #CUR_CUST_HIER

  

  ;WITH CTE_UVW_HIST_CUST_HIER_UNRVL_B ( 
			FISC_YR, FISC_QTR,
			  HIER_TYP,
			  LST_LVL_CUST_NBR,
			  LVL5_CUST_NM,
			  LVL5_CUST_NBR,
			  LVL6_CUST_NM,
			  LVL6_CUST_NBR,
			  LVL7_CUST_NM,
			  LVL7_CUST_NBR,
			  LVL8_CUST_NM,
			  LVL8_CUST_NBR,
			  PREV_ACCT_NBR,
			  TDLINX_NBR,
			  SNO,
			  SNAME,
			  STR,
			  CITY,
			  SST,
			  PSTL_CODE)
			AS
			(SELECT    FISC_YR, FISC_QTR, CH.HIER_TYP,CH.LST_LVL_CUST_NBR,  CH.LVL5_CUST_NM,  CH.LVL5_CUST_NBR,  CH.LVL6_CUST_NM,  CH.LVL6_CUST_NBR,  CH.LVL7_CUST_NM,  CH.LVL7_CUST_NBR,  CH.LVL8_CUST_NM,  CH.LVL8_CUST_NBR,  K.PREV_ACCT_NBR,K.TDLINX_NBR
						,CONVERT(INT,NULLIF(LTRIM(RTRIM(K.STORE_NBR)),'')) AS SNO, K.CUST_NM AS SNAME,
						K.STR,K.CITY,K.RGN AS SST,K.PSTL_CODE
			FROM            KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL_SNPSHT as CH WITH (NOLOCK) INNER JOIN
									 KG_VIEWS.KNA.UVW_CUST as K WITH (NOLOCK) ON CH.LST_LVL_CUST_NBR = K.CUST_NBR
			WHERE        (K.STORE_IND = '01') AND (K.SALES_ORG = '1001') AND (K.DIST_CHNL = '01') AND (K.DIV = '01') --AND (K.SALES_ORDR_BLOK!='01') 
			AND (CH.LVL4_CUST_NBR in (0000404455,0000404970))
			--AND (CH.HIER_TM_PD = 'CURRENT')
			AND CH.HIER_TYP IN ('B') and FISC_YR = @YR)
	,CTE_UVW_HIST_CUST_HIER_UNRVL_D ( 
					  FISC_YR, FISC_QTR,HIER_TYP,
					  LST_LVL_CUST_NBR,
					  LVL5_CUST_NM,
					  LVL5_CUST_NBR,
					  LVL8_CUST_NM,
					  LVL8_CUST_NBR,
					  LVL9_CUST_NM,
					  LVL9_CUST_NBR,
					  PREV_ACCT_NBR,
					  TDLINX_NBR,
					  SNO,
					  SNAME,
					  STR,
					  CITY,
					  SST,
					  PSTL_CODE)
					AS
					(SELECT        FISC_YR, FISC_QTR,  CH.HIER_TYP,CH.LST_LVL_CUST_NBR,  CH.LVL5_CUST_NM,  CH.LVL5_CUST_NBR,  CH.LVL8_CUST_NM,  CH.LVL8_CUST_NBR,  CH.LVL9_CUST_NM,  CH.LVL9_CUST_NBR,   K.PREV_ACCT_NBR,K.TDLINX_NBR
								,CONVERT(INT,NULLIF(LTRIM(RTRIM(K.STORE_NBR)),'')) AS SNO, K.CUST_NM AS SNAME,
						K.STR,K.CITY,K.RGN AS SST,K.PSTL_CODE
					FROM            KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL_SNPSHT as CH WITH (NOLOCK) INNER JOIN
											 KG_VIEWS.KNA.UVW_CUST as K WITH (NOLOCK) ON CH.LST_LVL_CUST_NBR = K.CUST_NBR
					WHERE        (K.STORE_IND = '01') AND (K.SALES_ORG = '1001') AND (K.DIST_CHNL = '01') AND (K.DIV = '01') --AND (K.SALES_ORDR_BLOK!='01')
				--	AND (CH.HIER_TM_PD = 'CURRENT')			
					AND CH.HIER_TYP IN ('D')  and FISC_YR = @YR)

SELECT
CH1.FISC_YR,
--CONCAT('Q',CH1.FISC_QTR) AS 
CH1.FISC_QTR,
  CH1.LVL5_CUST_NM AS RGN,
  CH1.TDLINX_NBR AS STDLINXSCD,
  -- NULL AS RCLIENTNO,
  CH1.LST_LVL_CUST_NBR,
  CH1.LVL5_CUST_NBR AS RGN_NBR,
  CH1.LVL6_CUST_NM AS ZN,
  CH1.LVL6_CUST_NBR AS ZN_NBR,
  CH2.LVL5_CUST_NM AS CUST_TEAM,
  CH2.LVL5_CUST_NBR AS CUST_TEAM_NBR,
  CH1.LVL7_CUST_NM AS TERR,
  CH1.LVL7_CUST_NBR AS TERR_NBR,
  CH2.LVL8_CUST_NM AS PLN_TO,
  CH2.LVL8_CUST_NBR AS PLN_TO_NBR,
  CH2.LVL9_CUST_NM AS CHN,
  CH2.LVL9_CUST_NBR AS CHN_NBR,
  CH1.LVL8_CUST_NM AS SOLD_TO,
  CH1.LVL8_CUST_NBR AS SOLD_TO_NBR,
  CH1.PREV_ACCT_NBR,
  CH1.SNO,
  CH1.SNAME,
  CH1.STR,
  CH1.CITY,
  CH1.SST,
  CH1.PSTL_CODE
 INTO #HIST_CUST_HIER
FROM            
CTE_UVW_HIST_CUST_HIER_UNRVL_B AS CH1 WITH (NOLOCK) INNER JOIN
CTE_UVW_HIST_CUST_HIER_UNRVL_D AS CH2 WITH (NOLOCK) ON CH1.LST_LVL_CUST_NBR = CH2.LST_LVL_CUST_NBR  AND CH1.FISC_YR=CH2.FISC_YR AND CH1.FISC_QTR=CH2.FISC_QTR
WHERE CH1.FISC_YR = @YR -- (SELECT CUR_YR FROM [dbo].[UVW_REX_PD_DT])



;WITH CTE_UVW_CUR_CUST_HIER_UNRVL_B ( 			
			  HIER_TYP,
			  LST_LVL_CUST_NBR,
			  LVL5_CUST_NM,
			  LVL5_CUST_NBR,
			  LVL6_CUST_NM,
			  LVL6_CUST_NBR,
			  LVL7_CUST_NM,
			  LVL7_CUST_NBR,
			  LVL8_CUST_NM,
			  LVL8_CUST_NBR,
			  PREV_ACCT_NBR,
			  TDLINX_NBR,
			  SNO,
			  SNAME,
			  STR,
			  CITY,
			  SST,
			  PSTL_CODE)
			AS
			(SELECT          CH.HIER_TYP,CH.LST_LVL_CUST_NBR,  CH.LVL5_CUST_NM,  CH.LVL5_CUST_NBR,  CH.LVL6_CUST_NM,  CH.LVL6_CUST_NBR,  CH.LVL7_CUST_NM,  CH.LVL7_CUST_NBR,  CH.LVL8_CUST_NM,  CH.LVL8_CUST_NBR,  K.PREV_ACCT_NBR,K.TDLINX_NBR
					,CONVERT(INT,NULLIF(LTRIM(RTRIM(K.STORE_NBR)),'')) AS SNO, K.CUST_NM AS SNAME,
						K.STR,K.CITY,K.RGN AS SST,K.PSTL_CODE
			FROM            KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL as CH WITH (NOLOCK) INNER JOIN
									 KG_VIEWS.KNA.UVW_CUST as K WITH (NOLOCK) ON CH.LST_LVL_CUST_NBR = K.CUST_NBR
			WHERE        (K.STORE_IND = '01') AND (K.SALES_ORG = '1001') AND (K.DIST_CHNL = '01') AND (K.DIV = '01') AND (K.SALES_ORDR_BLOK!='01') 
			 AND (CH.LVL4_CUST_NBR = 0000404970)
			AND (CH.HIER_TM_PD = 'CURRENT')
			AND CH.HIER_TYP IN ('B'))
	,CTE_UVW_CUR_CUST_HIER_UNRVL_D ( 
					  HIER_TYP,
					  LST_LVL_CUST_NBR,
					  LVL5_CUST_NM,
					  LVL5_CUST_NBR,
					  LVL8_CUST_NM,
					  LVL8_CUST_NBR,
					  LVL9_CUST_NM,
					  LVL9_CUST_NBR,
					  PREV_ACCT_NBR,
					  TDLINX_NBR,
					  SNO,
					  SNAME,
					  STR,
					  CITY,
					  SST,
					  PSTL_CODE
					  )
					AS
					(SELECT           CH.HIER_TYP,CH.LST_LVL_CUST_NBR,  CH.LVL5_CUST_NM,  CH.LVL5_CUST_NBR,  CH.LVL8_CUST_NM,  CH.LVL8_CUST_NBR,  CH.LVL9_CUST_NM,  CH.LVL9_CUST_NBR,   K.PREV_ACCT_NBR,K.TDLINX_NBR
					,CONVERT(INT,NULLIF(LTRIM(RTRIM(K.STORE_NBR)),'')) AS SNO, K.CUST_NM AS SNAME,
						K.STR,K.CITY,K.RGN AS SST,K.PSTL_CODE
					FROM            KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL as CH WITH (NOLOCK) INNER JOIN
											 KG_VIEWS.KNA.UVW_CUST as K WITH (NOLOCK) ON CH.LST_LVL_CUST_NBR = K.CUST_NBR
					WHERE        (K.STORE_IND = '01') AND (K.SALES_ORG = '1001') AND (K.DIST_CHNL = '01') AND (K.DIV = '01') AND (K.SALES_ORDR_BLOK!='01')
					AND (CH.HIER_TM_PD = 'CURRENT')			
					AND CH.HIER_TYP IN ('D'))

SELECT 
FC.FISC_YR,
--CONCAT('Q',FC.FISC_QTR) AS 
FC.FISC_QTR
,C.*
 INTO #CUR_CUST_HIER
FROM 
(SELECT
  CH1.LVL5_CUST_NM AS RGN,
  CH1.TDLINX_NBR AS STDLINXSCD,
  -- NULL AS RCLIENTNO,
  CH1.LST_LVL_CUST_NBR,
  CH1.LVL5_CUST_NBR AS RGN_NBR,
  CH1.LVL6_CUST_NM AS ZN,
  CH1.LVL6_CUST_NBR AS ZN_NBR,
  CH2.LVL5_CUST_NM AS CUST_TEAM,
  CH2.LVL5_CUST_NBR AS CUST_TEAM_NBR,
  CH1.LVL7_CUST_NM AS TERR,
  CH1.LVL7_CUST_NBR AS TERR_NBR,
  CH2.LVL8_CUST_NM AS PLN_TO,
  CH2.LVL8_CUST_NBR AS PLN_TO_NBR,
  CH2.LVL9_CUST_NM AS CHN,
  CH2.LVL9_CUST_NBR AS CHN_NBR,
  CH1.LVL8_CUST_NM AS SOLD_TO,
  CH1.LVL8_CUST_NBR AS SOLD_TO_NBR,
  CH1.PREV_ACCT_NBR,
  CH1.SNO,
  CH1.SNAME,
  CH1.STR,
  CH1.CITY,
  CH1.SST,
  CH1.PSTL_CODE
FROM            
CTE_UVW_CUR_CUST_HIER_UNRVL_B AS CH1 WITH (NOLOCK) INNER JOIN
CTE_UVW_CUR_CUST_HIER_UNRVL_D AS CH2 WITH (NOLOCK) ON CH1.LST_LVL_CUST_NBR = CH2.LST_LVL_CUST_NBR  

) AS C
CROSS JOIN 
(SELECT TOP 1 [FISC_YR] ,[FISC_QTR]  FROM [KG_VIEWS].[KG].[UVW_FISC_CAL]
  WHERE [FISC_WK_END_DT] >= (@CUR_DT)) AS FC



 DELETE FROM [dbo].[REX_TDLINX_CUST_HIER]
 INSERT INTO [dbo].[REX_TDLINX_CUST_HIER]
SELECT   FISC_YR,FISC_QTR, RGN, 
CONVERT(FLOAT,STDLINXSCD) AS STDLINXSCD, 
 LST_LVL_CUST_NBR, RGN_NBR, ZN, ZN_NBR, CUST_TEAM, CUST_TEAM_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR,  PREV_ACCT_NBR,CONVERT(CHAR(8),SNO) AS SNO,SNAME,STR,CITY,SST,PSTL_CODE
FROM          #HIST_CUST_HIER AS H 
-- WHERE ((H.FISC_QTR=2018 AND H.FISC_QTR IN (3,4)) OR H.FISC_YR=@YR)
UNION ALL
SELECT   FISC_YR,FISC_QTR, RGN, 
CONVERT(FLOAT,STDLINXSCD) AS STDLINXSCD, 
 LST_LVL_CUST_NBR, RGN_NBR, ZN, ZN_NBR, CUST_TEAM, CUST_TEAM_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR,  PREV_ACCT_NBR,CONVERT(CHAR(8),SNO) AS SNO,SNAME,STR,CITY,SST,PSTL_CODE
FROM          [#CUR_CUST_HIER] AS C 




END TRY


BEGIN CATCH

ROLLBACK

RAISERROR (15600,-1,-1, 'Executing this SP USP_REX_CUST_PROD_HIER failed')

END CATCH

COMMIT TRANSACTION;

----PROD Hierarchy

--BEGIN 

BEGIN TRY

BEGIN TRANSACTION



DELETE FROM [dbo].[REX_UPC_PKG_PROD_HIER]
INSERT INTO [dbo].[REX_UPC_PKG_PROD_HIER]
SELECT A.UPC,
       A.MATRL_NBR,
	   B.MATRL_DESC,
	   C.PROD_HIER_CATEGORY,
	   C.PROD_HIER_CATEGORY_DESC,
	   C.PROD_HIER_SUB_CATEGORY,
	   C.PROD_HIER_SUB_CATEGORY_DESC,
	   C.PROD_HIER_BRAND,
	   C.PROD_HIER_BRAND_DESC
FROM
--  GTIN-12 (UPC-A): this is a 12-digit number used primarily in North America
--  Trimming last digit to get the UPC code.
(SELECT CAST(SUBSTRING(GTIN, 1, LEN(GTIN)-1) AS DECIMAL(18,0)) AS UPC,
       MAX(KG_VIEWS.KNA.UVW_MATRL_GTIN.MATRL_NBR) AS MATRL_NBR
FROM KG_VIEWS.KNA.UVW_MATRL_GTIN WITH (NOLOCK)
WHERE GTIN_TYP = 'UPC' -- AND UOM='PKG'
GROUP BY CAST(SUBSTRING(GTIN, 1, LEN(GTIN)-1) AS DECIMAL(18,0))
) A
-- Joining UVW_MATRL_GTIN and UVW_MATRL specific to UPC PKG.
INNER JOIN KG_VIEWS.KNA.UVW_MATRL B WITH (NOLOCK)
ON B.MATRL_NBR = A.MATRL_NBR
INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER C WITH (NOLOCK)
ON C.PROD_HIER = B.PROD_HIER
--WHERE UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%KASHI%' AND UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%BEAR NAKED%' AND UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%STRETCH%'



END TRY
BEGIN CATCH

ROLLBACK

RAISERROR (15600,-1,-1, 'Executing this SP USP_REX_CUST_PROD_HIER failed')

END CATCH

COMMIT TRANSACTION;


--END



END



GO
/****** Object:  StoredProcedure [dbo].[USP_REX_POS_WALMART_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author			:	Abhialsh Mogili
-- Create date		:	02/12/2018
-- Modified By		:	
-- Modified date	:	
-- Description		:	Returns Total Sales,Point of Distribution for each SOLD_TO_NBR,Category,Brand for each week for Current year and Previous Year based on the [KNA_SALES].dbo.POS_WM table
-- Comments			:
-- =============================================



CREATE PROCEDURE [dbo].[USP_REX_POS_WALMART_WK] 
AS

BEGIN
--- If temp table exists then drop the table
IF OBJECT_ID('tempdb..#WALMART_WK') IS NOT NULL  
  DROP TABLE #WALMART_WK

TRUNCATE TABLE [dbo].[REX_POS_WALMART_WK] 
   
  
SELECT 
		 SOLDTO
		,STORENBR
		,STOREDESC
		,PHR.PROD_HIER_CATEGORY_DESC AS [CATEGORY]
		,PHR.PROD_HIER_BRAND_DESC  AS [BRAND]
		,FC.FISC_YR AS YEAR
		,CASE WHEN FC.FISC_WK_STRT_DT <= DAY AND FC.FISC_WK_END_DT >= DAY  THEN FC.FISC_WK  END AS WEEK
		,SUM(POS_SALES) AS TOTAL_SALES
		,SUM(WM.POS_QTY) AS [UNITS]
 
  INTO #WALMART_WK

FROM [KNA_SALES].[DBO].[POS_WM] WM
INNER JOIN
[KG_VIEWS].[KG].[UVW_FISC_CAL] FC
ON

FC.FISC_WK_STRT_DT <= WM.DAY
AND
FC.FISC_WK_END_DT >= WM.DAY
INNER JOIN 
--Joining with the Product Hierarchy based on the Material number.
[KNA_SALES].[dbo].[REX_UPC_PKG_PROD_HIER] AS PHR 
ON CONVERT(DECIMAL(18,0), WM.UPC) = PHR.UPC
WHERE 
SUBPARTSUFFIXTXT ='WMCRUS'
AND
PHR.[PROD_HIER_CATEGORY_DESC]
IN
( 
 'Cereal'
,'Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
,'Toaster Pastries'
,'Ingredients'
)
AND
YEAR([DAY]) IN (YEAR(GETDATE()) ,(YEAR(GETDATE())-1),(YEAR(GETDATE())-2))
GROUP BY
SOLDTO,
STORENBR,
STOREDESC,
PHR.PROD_HIER_CATEGORY_DESC,
      PHR.PROD_HIER_BRAND_DESC,
	  FC.FISC_YR
	  ,CASE WHEN FC.FISC_WK_STRT_DT <= DAY AND FC.FISC_WK_END_DT >= DAY  THEN FC.FISC_WK  END

BEGIN TRY

BEGIN TRANSACTION

--We are inserting new weeks data
INSERT INTO [dbo].[REX_POS_WALMART_WK]
           ([SOLDTO],
			[STORENBR],
			[STOREDESC]
           ,[CATG]
           ,[BRAND]
           ,[WK]
           ,[YR]
           ,[TOTL_SALES]
           ,[UNITS])
SELECT SOLDTO,STORENBR, STOREDESC,CATEGORY,BRAND,WEEK,YEAR,TOTAL_SALES,UNITS FROM #WALMART_WK


---Updating the unknown SOLD_TO's

UPDATE [KNA_SALES].[dbo].[REX_POS_WALMART_WK]
SET SOLDTO =

CASE WHEN LTRIM(RTRIM(STORENBR)) = '1879' THEN '1000063926'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '55'   THEN '1000006890'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '133'  THEN '1000012170'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '241'  THEN '1000063448'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '288'  THEN '1000013844'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '312'  THEN '1000014053'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '373'  THEN '1000058966'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '390'  THEN '1000009526'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '399'  THEN '1000012989'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '425'  THEN '1000012192'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '512'  THEN '1000009530'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '525'  THEN '1000062042'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '555'  THEN '1000014960'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '662'  THEN '1000006245'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '737'  THEN '1000014018'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '952'  THEN '1000022927'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1091' THEN '1000014196'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1390' THEN '1000007579'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1450' THEN '1000011847'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1470' THEN '1000012161'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1516' THEN '1000059172'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1566' THEN '1000036769'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1575' THEN '1000063881'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1590' THEN '1000013003'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1636' THEN '1000013733'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1744' THEN '1000063045'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1862' THEN '1000063745'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1959' THEN '1000027755'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2289' THEN '1000062863'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2392' THEN '1000058978'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2436' THEN '1000061741'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2442' THEN '1000059046'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2487' THEN '1000038603'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2685' THEN '1000058881'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2731' THEN '1000059531'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2756' THEN '1000063447'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3069' THEN '1000058941'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3078' THEN '1000059053'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3133' THEN '1000056932'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3458' THEN '1000063742'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3498' THEN '1000061064'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3577' THEN '1000057743'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3619' THEN '1000061192'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3660' THEN '1000011508'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3713' THEN '1000060442'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3830' THEN '1000062646'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4101' THEN '1000059932'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4159' THEN '1000058745'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4165' THEN '1000059055'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4167' THEN '1000058766'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4365' THEN '1000063509'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4373' THEN '1000060404'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4375' THEN '1000059834'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4388' THEN '1000062687'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4401' THEN '1000060382'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4426' THEN '1000061998'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4432' THEN '1000062006'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4443' THEN '1000059841'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4465' THEN '1000062028'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4470' THEN '1000062041'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4494' THEN '1000062922'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4502' THEN '1000059928'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4512' THEN '1000063763'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4528' THEN '1000061199'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4530' THEN '1000062043'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4577' THEN '1000062026'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4591' THEN '1000061195'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4654' THEN '1000061995'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4673' THEN '1000062003'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4674' THEN '1000061980'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4757' THEN '1000059087'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4762' THEN '1000060381'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4848' THEN '1000062100'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4900' THEN '1000056840'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5005' THEN '1000059129'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5012' THEN '1000062908'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5013' THEN '1000056831'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5062' THEN '1000062002'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5135' THEN '1000062102'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5182' THEN '1000062007'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5198' THEN '1000035319'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5310' THEN '1000063641'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5318' THEN '1000062004'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5382' THEN '1000061697'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5404' THEN '1000063387'			
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5464' THEN '1000062103'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5467' THEN '1000062034'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5704' THEN '1000063639'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5716' THEN '1000062036'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5725' THEN '1000063728'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5744' THEN '1000062015'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5746' THEN '1000062249'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5771' THEN '1000063764'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5773' THEN '1000062945'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5782' THEN '1000062834'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5789' THEN '1000062664'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5808' THEN '1000058761'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5817' THEN '1000056403'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5818' THEN '1000056404'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5820' THEN '1000056405'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5829' THEN '1000062948'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5903' THEN '1000062001'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5915' THEN '1000063365'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6098' THEN '1000058760'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6176' THEN '1000059750'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6226' THEN '1000059051'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6284' THEN '1000062949'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6392' THEN '1000058968'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6459' THEN '1000058945'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6467' THEN '1000063601'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6500' THEN '1000058809'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6586' THEN '1000058807'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6929' THEN '1000060441'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6942' THEN '1000059043'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6958' THEN '1000062950'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6963' THEN '1000063688'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6967' THEN '1000060282'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6975' THEN '1000059059'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7217' THEN '1000059135'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7222' THEN '1000059230'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7224' THEN '1000059565'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7241' THEN '1000059470'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7243' THEN '1000059927'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7320' THEN '1000061993'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '840'  THEN '1000061187'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2425' THEN '1000042616'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3212' THEN '1000063922'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4203' THEN '1000063921'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4734' THEN '1000064073'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5824' THEN '1000063905'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6579' THEN '1000063925'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7032' THEN '1000063927'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4565' THEN '1000064609'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2463'  THEN '1000064503'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2464'  THEN '1000064501'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2483'  THEN '1000064535'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3988'  THEN '1000064221'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5214'  THEN '1000064610'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6477'  THEN '1000064222'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7185'  THEN '1000064534'
	 END
	 WHERE LTRIM(RTRIM(SOLDTO)) IN ('Unknown','1879')



END TRY


BEGIN CATCH

ROLLBACK

RAISERROR (15600,-1,-1, 'Executing this SP USP_REX_POS_WALMART_WK failed')

END CATCH

COMMIT TRANSACTION;


END

















GO
/****** Object:  StoredProcedure [dbo].[USP_REX_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		: Abhilash Mogili
-- Create date	: 03/08/2018
-- Modified By	: Abhilash Mogili
-- ModifiedDate	:  10/01/2018
-- Description	: KSR POS Store Sales and Budget  for all the Snacks&MF Categories for all the timeframes Q1,Q2,Q3,Q4  and Inserting into the KNA_SALES.dbo.[REX_RPT_KSR_BUD] table
-- Comments		: Added the Publix Store Level POS DOllar Sales for Snacks and MF for all the timeframes Q1,Q2,Q3,Q4
-- =============================================



CREATE PROCEDURE [dbo].[USP_REX_RPT_KSR_BUD]
AS
BEGIN
	SET NOCOUNT ON
	-- SET NOCOUNT ON added to prevent extra result sets from
	--interfering with SELECT statements.
	SET XACT_ABORT ON
	--if a Transact-SQL statement raises a run-time error, the entire transaction is terminated and rolled back.
	BEGIN TRY
		BEGIN TRANSACTION
-- To Get Nielsen date
DECLARE @PD_DT DATE
SET @PD_DT = (SELECT PD_DT FROM OPENQUERY([MYSQLMEMSQL Prod],'SELECT PD_DT FROM KNA_EXTERNAL.UVW_REX_AOD_PD_DT'))

--Deleting the Data form the KSR BUD
DELETE FROM [dbo].[REX_RPT_KSR_BUD]
-- Sales and Budget for all the Quarters
INSERT INTO [dbo].[REX_RPT_KSR_BUD]
SELECT  
       [CORP]
	   ,[BU]
      ,[CATG]
      ,[PD_DT]
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,'POS' AS TYP
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,[YR]
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS [DOL_SALE]
      ,MAX([BUD]) AS [BUD]
      ,[KNA_SALES].[dbo].[fn_REX_PACE_PCT](PD_DT) * 100 AS PACE
         FROM 
         (
		 --Walmart POS  Store Sales and Budget for all Snacks and MF Categories and required Timeframes Based on Period Date
			SELECT        
			TD_CH.CUST_TEAM COLLATE DATABASE_DEFAULT  AS CORP,
			WM.BU COLLATE DATABASE_DEFAULT AS BU,
			WM.CATG COLLATE DATABASE_DEFAULT AS CATG,
			@PD_DT AS PD_DT,
			TD_CH.RGN COLLATE DATABASE_DEFAULT AS RGN,
			TD_CH.RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR, 
			TD_CH.ZN COLLATE DATABASE_DEFAULT AS ZN,
			TD_CH.ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
			TD_CH.TERR COLLATE DATABASE_DEFAULT AS TERR,
			TD_CH.TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR,
			TD_CH.PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
			TD_CH.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR, 
			TD_CH.CHN COLLATE DATABASE_DEFAULT AS CHN,
			TD_CH.CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,  
			TD_CH.SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
			TD_CH.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
			WM.YR AS YR,
			WM.PD_DESC COLLATE DATABASE_DEFAULT AS PD_DESC,
			ISNULL(WM.TOTL_SALES,0) as DOL_SALE,
			ISNULL(BUD,0) AS BUD
			FROM   
			[KNA_SALES].[dbo].[UVW_REX_POS_WALMART_KSR] WM WITH (NOLOCK)
			INNER JOIN 
			[KNA_SALES].[dbo].[UVW_REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
			--Joining the UVW_WALMART_KSR view with the Customer Hierarchy based on SOLD_TO_NBR and PD_DESC
			ON WM.SOLDTO  COLLATE SQL_Latin1_General_CP1_CI_AS = TD_CH.SOLD_TO_NBR
			AND
			WM.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS  = TD_CH.PD_DESC  AND WM.YR=TD_CH.FISC_YR
			LEFT OUTER JOIN  
			KNA_SALES.dbo.UVW_REX_POS_BUD AS BUDG  WITH (NOLOCK)
			--Joining the Customer Hierarchy with the POS_Budget based on the SOLD_TO_NBR,Category,Period Description
			ON  
			TD_CH.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] COLLATE SQL_Latin1_General_CP1_CI_AS 
			AND 
			UPPER(LTRIM(RTRIM(WM.CATG))) = UPPER(LTRIM(RTRIM(BUDG.CATG))) COLLATE SQL_Latin1_General_CP1_CI_AS 
			AND 
			WM.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS
			AND
			WM.YR = BUDG.FISC_YR
			AND
			WM.YR = YEAR(@PD_DT)

			UNION ALL

			--Nielsen,IRI, kroger POS Store Sales and Budget for all Snacks and MF Categories and  required Timeframes Based on Period Date

			SELECT        
			CUST_TEAM COLLATE DATABASE_DEFAULT AS CORP, 
			KROG.BU COLLATE DATABASE_DEFAULT AS BU,
			KROG.CATG COLLATE DATABASE_DEFAULT AS CATG,
			@PD_DT AS PD_DT,
			RGN COLLATE DATABASE_DEFAULT AS RGN,
			RGN_NBR AS RGN_NBR, 
			ZN COLLATE DATABASE_DEFAULT AS ZN,
			ZN_NBR  AS ZN_NBR,
			TERR COLLATE DATABASE_DEFAULT AS TERR,
			TERR_NBR  AS TERR_NBR,
			PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
			PLN_TO_NBR  AS PLN_TO_NBR, 
			CHN COLLATE DATABASE_DEFAULT AS CHN,
			CHN_NBR  AS CHN_NBR,  
			SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
			KROG.SOLD_TO_NBR  COLLATE DATABASE_DEFAULT AS  SOLD_TO_NBR,
			KROG.YR AS YR,
			KROG.PD_DESC  AS PD_DESC,
			ISNULL(DOL_SALE,0) AS DOL_SALE,
			ISNULL(BUD,0) AS BUD
			FROM
			OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CUST_TEAM,SOLD_TO,SOLD_TO_NBR,RGN,RGN_NBR,ZN,ZN_NBR,TERR,TERR_NBR,PLN_TO,PLN_TO_NBR,CHN,CHN_NBR,CATG,BU,CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE,PD_DESC,YR
			FROM KNA_EXTERNAL.UVW_REX_KSR_BUD') AS KROG
			LEFT OUTER JOIN  KNA_SALES.dbo.UVW_REX_POS_BUD AS BUDG  WITH (NOLOCK)
			--Joining the Customer Hierarchy with the POS_Budget based on the SOLD_TO_NBR,Category,Period Description
			ON  
			KROG.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] COLLATE SQL_Latin1_General_CP1_CI_AS 
			AND 
			UPPER(LTRIM(RTRIM(KROG.CATG))) = UPPER(LTRIM(RTRIM(BUDG.CATG))) COLLATE SQL_Latin1_General_CP1_CI_AS 
			AND 
			KROG.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS
			AND
			KROG.YR = BUDG.FISC_YR
			AND
			KROG.YR = YEAR(@PD_DT)

			UNION ALL
		

		--Publix Store Sales and Budget for all Snacks and MF Categories and  required Timeframes Based on Period Date
		SELECT        
			CUST_TEAM COLLATE DATABASE_DEFAULT AS CORP, 
			BU COLLATE DATABASE_DEFAULT AS BU,
			PUBLIX.CATG COLLATE DATABASE_DEFAULT AS CATG,
			@PD_DT AS PD_DT,
			PUBLIX.RGN COLLATE DATABASE_DEFAULT AS RGN,
			PUBLIX.RGN_NBR AS RGN_NBR, 
			PUBLIX.ZN COLLATE DATABASE_DEFAULT AS ZN,
			PUBLIX.ZN_NBR  AS ZN_NBR,
			PUBLIX.TERR COLLATE DATABASE_DEFAULT AS TERR,
			PUBLIX.TERR_NBR  AS TERR_NBR,
			PUBLIX.PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
			PUBLIX.PLN_TO_NBR  AS PLN_TO_NBR, 
			PUBLIX.CHN COLLATE DATABASE_DEFAULT AS CHN,
			PUBLIX.CHN_NBR  AS CHN_NBR,  
			PUBLIX.SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
			PUBLIX.SOLD_TO_NBR  COLLATE DATABASE_DEFAULT AS  SOLD_TO_NBR,
			PUBLIX.FISC_YR AS YR,
			PUBLIX.PD_DESC  AS PD_DESC,
			ISNULL(DOL_SALE,0) AS DOL_SALE,
			ISNULL(BUDG.BUD,0) AS BUD
			FROM
			KNA_SALES.[dbo].[UVW_REX_RPT_PUBLIX_POS_KSR] AS PUBLIX
			LEFT OUTER JOIN  
			KNA_SALES.dbo.UVW_REX_POS_BUD AS BUDG  WITH (NOLOCK)
			--Joining the Customer Hierarchy with the POS_Budget based on the SOLD_TO_NBR,Category,Period Description
			ON  
			PUBLIX.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] COLLATE SQL_Latin1_General_CP1_CI_AS 
			AND 
			UPPER(LTRIM(RTRIM(PUBLIX.CATG))) = UPPER(LTRIM(RTRIM(BUDG.CATG))) COLLATE SQL_Latin1_General_CP1_CI_AS 
			AND 
			PUBLIX.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS
			AND
			PUBLIX.FISC_YR = BUDG.FISC_YR
			AND
			PUBLIX.FISC_YR = YEAR(@PD_DT)

       ) AS T 

GROUP BY
[CORP],[BU],[CATG],[PD_DT],[RGN],[RGN_NBR],[ZN],[ZN_NBR],[TERR],[TERR_NBR],[PLN_TO],[PLN_TO_NBR],[CHN],[CHN_NBR],[SOLD_TO],[SOLD_TO_NBR],[YR]
,[PD_DESC],[KNA_SALES].[dbo].[UDF_REX_PACE_PCT](PD_DT) * 100

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
/****** Object:  StoredProcedure [dbo].[USP_REX_RPT_POS_SALES]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- ===================================================================================================================================================
-- Author			: Abhilash Mogili
-- Create date		: 04/26/2018
-- Description		: To get the Store POS Sales,Units,Share for Yr and Yr Ago for all the Retailers for the L4W,L13W,YTD and also Previous Yr Next 13 weeks POS Sales and Units for all the Retailers
-- Modified Date	: 
-- Comments			: 
-- ====================================================================================================================================================

CREATE  PROCEDURE  [dbo].[USP_REX_RPT_POS_SALES]
AS

BEGIN
	SET NOCOUNT ON
	-- SET NOCOUNT ON added to prevent extra result sets from
	--interfering with SELECT statements.
	SET XACT_ABORT ON
	--if a Transact-SQL statement raises a run-time error, the entire transaction is terminated and rolled back.
	BEGIN TRY
		BEGIN TRANSACTION


IF OBJECT_ID('tempdb.#FISC_CAL') IS NOT NULL  
  DROP TABLE  #FISC_CAL

IF OBJECT_ID('tempdb.#CUST_HIER_PD_BRAND') IS NOT NULL  
  DROP TABLE  #CUST_HIER_PD_BRAND

IF OBJECT_ID('tempdb.#POS_13WKS') IS NOT NULL  
  DROP TABLE   #POS_13WKS

IF OBJECT_ID('tempdb.#POS_STORE_PRFM_POS') IS NOT NULL  
  DROP TABLE #POS_STORE_PRFM_POS

  IF OBJECT_ID(N'dbo.REX_RPT_POS_SALES_BRAND_WK', N'U') IS NOT NULL
DROP TABLE  KNA_SALES.dbo.REX_RPT_POS_SALES_BRAND_WK


-- Getting the Next 13 weeks for Previous Year from Fiscal Calendar Based on the Period Date 

;WITH PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM 
[KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN 
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE 
F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),

-----Getting 13 Next weeks for the Past year 
CTE_FC_L13W_PREV AS 
(

SELECT RN,FISC_YR,FISC_QTR,FISC_WK,FISC_WK_STRT_DT,FISC_WK_END_DT
FROM FC
WHERE 
FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1,YEAR(PD_DT)-2)
AND 
RN <= (SELECT RN+13 FROM PRV_DT) 
AND 
RN >= (SELECT RN+1 FROM PRV_DT)
),

--here we are joining both the Previous Yr and Current Yr Based on the Fiscal weeks to get the Fiscal Week Start Date and also getting the L4,L13 and YTD timeframes
FISC_CAL AS
(
SELECT 
CONVERT(VARCHAR,PREV.FISC_WK_STRT_DT,107) AS FISC_WK_STRT
,CAST(PREV.FISC_WK AS varchar(2)) AS FISC_WK
 FROM 
 CTE_FC_L13W_PREV AS PREV
UNION ALL
SELECT 'L4W' AS FISC_WK_STRT,'L4W' AS FISC_WK
UNION ALL
SELECT 'L13W' AS FISC_WK_STRT,'L13W' AS FISC_WK
UNION ALL
SELECT 'YTD' AS FISC_WK_STRT,'YTD' AS FISC_WK
)


---Inserting the CTE in the Temp table
SELECT * 
INTO #FISC_CAL
FROM FISC_CAL




---Getting all the Store details for all Kellogg CORP's along with the Competitors for all the Timeframes
SELECT
       [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[CUST_TEAM]
      ,[CUST_TEAM_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,[STDLINXSCD]
      ,[PREV_ACCT_NBR]
      ,[SNO]
      ,[SNAME]
      ,[STR]
      ,[CITY]
      ,[SST]
      ,[PSTL_CODE]
	  ,VENDOR
	  ,BU
	  ,CATG
	  ,BRAND
	  ,CORP
	  ,CAL.FISC_WK_STRT
	  ,CAL.FISC_WK
	   INTO #CUST_HIER_PD_BRAND
	   FROM
	   dbo.UVW_REX_CUST_HIER_BRAND
	   CROSS JOIN
	   #FISC_CAL AS CAL


		DELETE FROM #CUST_HIER_PD_BRAND
		WHERE
		CORP <> 'KELLOGG CORPORATION'
	    AND
		FISC_WK NOT IN ('L4W','L13W','YTD')



SELECT *
INTO  #POS_13WKS
FROM
(
--Nielsen POS Next 13 weeks for Previous Year Based on the Period Date
SELECT
       'KELLOGG CORPORATION' AS CORP
       ,[CATG]
      ,[BRAND]
      ,[TOTL_SALES]
      ,[UNITS]
	  ,FISC_WK_STRT
      ,FISC_WK
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CATG, BRAND, TOTL_SALES, UNITS, WK, YR, RGN, RGN_NBR, ZN, ZN_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR 
FROM KNA_EXTERNAL.UVW_REX_RPT_NIELSEN_POS_PREV_YR_NXT_13WKS') AS NI
INNER JOIN
#FISC_CAL AS CAL
ON
CAST(NI.WK AS varchar(2)) = CAST(CAL.FISC_WK AS varchar(2))

UNION ALL

--HEB POS Next 13 weeks for Previous Year Based on the Period Date

SELECT
        CORP
       ,[CATG]
      ,[BRAND]
      ,[TOTL_SALES]
      ,[UNITS]
	  ,FISC_WK_STRT
      ,FISC_WK
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CORP,CATG, BRAND, TOTL_SALES, UNITS, WK, YR, RGN, RGN_NBR, ZN, ZN_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR 
FROM KNA_EXTERNAL.UVW_REX_RPT_HEB_POS_PREV_YR_NXT_13WKS') AS NI
INNER JOIN
#FISC_CAL AS CAL
ON
CAST(NI.WK AS varchar(2)) = CAST(CAL.FISC_WK AS varchar(2))

UNION ALL

--Kroger POS Next 13 weeks for Previous Year Based on the Period Date
SELECT
       'KELLOGG CORPORATION' AS CORP
      ,[CATG]
      ,[BRAND]
      ,[TOTL_SALES]
      ,[UNITS]
	  ,FISC_WK_STRT
      ,FISC_WK
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CATG, BRAND, TOTL_SALES, UNITS, WK, YR, RGN, RGN_NBR, ZN, ZN_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR 
FROM KNA_EXTERNAL.UVW_REX_RPT_KROGER_POS_PREV_YR_NXT_13WKS') AS KROGER
INNER JOIN
#FISC_CAL AS CAL
ON
CAST(KROGER.WK AS varchar(2)) = CAST(CAL.FISC_WK AS varchar(2))

UNION ALL


SELECT 
'KELLOGG CORPORATION' AS CORP,       
WM.CATG COLLATE DATABASE_DEFAULT AS CATG,
WM.BRAND COLLATE DATABASE_DEFAULT AS BRAND,
WM.TOTL_SALES AS TOTL_SALES, 
WM.UNITS AS UNITS,
WM.FISC_WK_STRT COLLATE DATABASE_DEFAULT  AS FISC_WK_STRT,
CAST(WM.FISC_WK AS VARCHAR(2)) AS FISC_WK,
TD_CH.RGN COLLATE DATABASE_DEFAULT AS RGN,
TD_CH.RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,
TD_CH.ZN COLLATE DATABASE_DEFAULT AS ZN,
TD_CH.ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
TD_CH.TERR COLLATE DATABASE_DEFAULT AS TERR, 
TD_CH.TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR,
TD_CH.PLN_TO  COLLATE DATABASE_DEFAULT AS PLN_TO,
TD_CH.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
TD_CH.CHN COLLATE DATABASE_DEFAULT AS CHN,
TD_CH.CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
TD_CH.SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
TD_CH.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR
FROM	
[KNA_SALES].[dbo].[UVW_REX_WALMART_POS_PREV_YR_NXT_13WKS] WM WITH (NOLOCK)
INNER JOIN 
[KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS TD_CH  WITH (NOLOCK)
--Here we joining the POS_WALMART view with the Customer HIerarchy view based on the SOLD TO NBR
ON WM.SOLDTO COLLATE SQL_Latin1_General_CP1_CI_AS = TD_CH.SOLD_TO_NBR
AND
YEAR(WM.PD_DT)  = TD_CH.FISC_YR
AND
DATEPART(QUARTER,WM.PD_DT)  = TD_CH.FISC_QTR
) AS B




--Creating the Index on the WALMART SOLD_TO_NBR
CREATE NONCLUSTERED INDEX IX_POS_13WKS ON #POS_13WKS(SOLD_TO_NBR,FISC_WK,CATG,BRAND,CORP)


SELECT *
INTO #POS_STORE_PRFM_POS
FROM
(
SELECT        
CORP, 
CATG COLLATE DATABASE_DEFAULT AS CATG,
BRAND COLLATE DATABASE_DEFAULT AS BRAND,
RGN COLLATE DATABASE_DEFAULT AS RGN,
RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,
ZN COLLATE DATABASE_DEFAULT AS ZN,
ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
TERR COLLATE DATABASE_DEFAULT AS TERR ,
TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR ,  
PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
CHN COLLATE DATABASE_DEFAULT AS CHN,
CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
SOLD_TO  COLLATE DATABASE_DEFAULT AS SOLD_TO,
SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
PD_DT,
PD_DESC COLLATE DATABASE_DEFAULT  AS FISC_WK,
ISNULL(DOL_SALE,0) AS DOL_SALE, 
ISNULL(DOL_SALE_YA,0)  AS DOL_SALE_YR_AGO,
DOL_SHR,
DOL_SHR_YA AS SHR_YR_AGO,
ISNULL(UNITS,0) AS UNITS,
ISNULL(UNITS_YA,0) AS UNITS_YA
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CORP, CATG, BRAND, PD_DESC, DOL_SALE, DOL_SALE_YA,CAST(DOL_SHR as decimal(38,6)) as DOL_SHR,CAST(DOL_SHR_YA as decimal(38,6)) as DOL_SHR_YA, UNITS, UNITS_YA, PD_DT, RGN, RGN_NBR, ZN, ZN_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR 
FROM KNA_EXTERNAL.UVW_REX_RPT_STORE_PRFM_POS_SHR ')

UNION ALL
        
SELECT        
CORP, 
CATG COLLATE DATABASE_DEFAULT AS CATG,
BRAND COLLATE DATABASE_DEFAULT AS BRAND,
RGN COLLATE DATABASE_DEFAULT AS RGN,
RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,
ZN COLLATE DATABASE_DEFAULT AS ZN,
ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
TERR COLLATE DATABASE_DEFAULT AS TERR ,
TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR ,  
PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
CHN COLLATE DATABASE_DEFAULT AS CHN,
CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
SOLD_TO  COLLATE DATABASE_DEFAULT AS SOLD_TO,
SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
PD_DT,
PD_DESC COLLATE DATABASE_DEFAULT  AS FISC_WK,
ISNULL(DOL_SALE,0) AS DOL_SALE, 
ISNULL(DOL_SALE_YA,0)  AS DOL_SALE_YR_AGO,
DOL_SHR,
DOL_SHR_YA AS SHR_YR_AGO,
ISNULL(UNITS,0) AS UNITS,
ISNULL(UNITS_YA,0) AS UNITS_YA
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CORP, CATG, BRAND, PD_DESC, DOL_SALE, DOL_SALE_YA,DOL_SHR,DOL_SHR_YA, UNITS, UNITS_YA, PD_DT, RGN, RGN_NBR, ZN, ZN_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR 
FROM KNA_EXTERNAL.UVW_REX_RPT_KROGER_POS_SHR ')

UNION ALL

SELECT        
'KELLOGG CORPORATION' AS CORP, 
WM.CATG COLLATE DATABASE_DEFAULT AS CATG,
WM.BRAND COLLATE DATABASE_DEFAULT AS BRAND,
TD_CH.RGN COLLATE DATABASE_DEFAULT AS RGN,
TD_CH.RGN_NBR,
TD_CH.ZN COLLATE DATABASE_DEFAULT AS ZN,
TD_CH.ZN_NBR,
TD_CH.TERR COLLATE DATABASE_DEFAULT AS TERR, 
TD_CH.TERR_NBR, 
TD_CH.PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
TD_CH.PLN_TO_NBR,
TD_CH.CHN COLLATE DATABASE_DEFAULT AS CHN,
TD_CH.CHN_NBR,
TD_CH.SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
TD_CH.SOLD_TO_NBR,
 PD_DT,
WM.PD_DESC COLLATE DATABASE_DEFAULT AS FISC_WK,
ISNULL(WM.TOTL_SALES,0) AS DOL_SALE, 
ISNULL(WM.TOTL_SALES_YA,0) AS DOL_SALE_YR_AGO,
0 AS DOL_SHR,
0 AS DOL_SHR_YR_GO,
ISNULL(UNITS,0) AS UNITS,
ISNULL(UNITS_YA,0) AS UNITS_YA
FROM	
[KNA_SALES].[dbo].[UVW_REX_WALMART_STORE_PRFM_POS] WM WITH(NOLOCK)
INNER JOIN 
[KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS TD_CH  WITH (NOLOCK)
--Here we joining the POS_WALMART view with the Customer HIerarchy view based on the SOLD TO NBR
ON WM.SOLDTO COLLATE SQL_Latin1_General_CP1_CI_AS = TD_CH.SOLD_TO_NBR
AND
YEAR(WM.PD_DT) = TD_CH.FISC_YR
AND
DATEPART(QUARTER,WM.PD_DT) = TD_CH.FISC_QTR
)  B

CREATE NONCLUSTERED INDEX IX_STORE_PRFM_POS ON #POS_STORE_PRFM_POS(SOLD_TO_NBR,FISC_WK,CATG,BRAND,CORP)



SELECT   
	   BRAND.[RGN]
      ,BRAND.[RGN_NBR]
      ,BRAND.[ZN]
      ,BRAND.[ZN_NBR]
      ,BRAND.[TERR]
      ,BRAND.[TERR_NBR]
      ,BRAND.[PLN_TO]
      ,BRAND.[PLN_TO_NBR]
      ,BRAND.[CHN]
      ,BRAND.[CHN_NBR]
      ,BRAND.[SOLD_TO]
      ,BRAND.[SOLD_TO_NBR]
	  ,CONCAT(BRAND.[SOLD_TO],'-',BRAND.[SOLD_TO_NBR]) AS STORE
      ,BRAND.[STDLINXSCD]
      ,BRAND.[SNAME]
	  ,BRAND.[STR]
      ,BRAND.[CITY]
      ,BRAND.[SST]
      ,BRAND.[PSTL_CODE]
      ,BRAND.[SNO]
      ,BRAND.[PREV_ACCT_NBR]
      ,BRAND.[VENDOR]
	  ,BRAND.BU
      ,BRAND.[CATG]
      ,BRAND.[BRAND]
	  ,'POS' AS TYP
      ,BRAND.[CORP]
	  ,BRAND.FISC_WK_STRT
      ,BRAND.[FISC_WK]
	  ,PREV.TOTL_SALES AS PREV_TOTL_SALES
	  ,PREV.UNITS AS PREV_UNITS
	  ,POS.DOL_SALE AS POS_DOL_SALE
	  ,POS.DOL_SALE_YR_AGO AS POS_DOL_SALE_YA
	  ,POS.DOL_SHR as POS_DOL_SHR
	  ,POS.SHR_YR_AGO AS POS_DOL_SHR_YA
	  ,POS.UNITS AS POS_UNITS
	  ,POS.UNITS_YA AS POS_UNITS_YA
	INTO KNA_SALES.dbo.REX_RPT_POS_SALES_BRAND_WK
  FROM 
 #CUST_HIER_PD_BRAND AS BRAND
  LEFT OUTER JOIN
#POS_13WKS AS PREV
ON
BRAND.CORP = PREV.CORP COLLATE Latin1_General_CS_AS
AND
BRAND.CATG = PREV.CATG COLLATE Latin1_General_CS_AS
AND
BRAND.BRAND = PREV.BRAND COLLATE Latin1_General_CS_AS
AND
BRAND.FISC_WK  = PREV.FISC_WK 
AND
BRAND.SOLD_TO_NBR = PREV.SOLD_TO_NBR  COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
#POS_STORE_PRFM_POS AS POS
ON
BRAND.CORP = POS.CORP COLLATE Latin1_General_CS_AS
AND
BRAND.CATG = POS.CATG COLLATE Latin1_General_CS_AS
AND
BRAND.BRAND = POS.BRAND COLLATE Latin1_General_CS_AS
AND
BRAND.FISC_WK  = POS.FISC_WK
AND
BRAND.SOLD_TO_NBR =  POS.SOLD_TO_NBR COLLATE Latin1_General_CS_AS

INSERT INTO KNA_SALES.dbo.REX_RPT_POS_SALES_BRAND_WK
SELECT  [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
      ,[STORE]
      ,[STDLINXSCD]
      ,[SNAME]
      ,[STR]
      ,[CITY]
      ,[SST]
      ,[PSTL_CODE]
      ,[SNO]
      ,[PREV_ACCT_NBR]
      ,[VENDOR]
      ,[BU]
      ,[CATG]
      ,[BRAND]
      ,[TYP]
      ,[CORP]
      ,[FISC_WK_STRT]
      ,[FISC_WK]
      ,[PREV_TOTL_SALES]
      ,[PREV_UNITS]
      ,[POS_DOL_SALE]
      ,[POS_DOL_SALE_YA]
      ,[POS_DOL_SHR]
      ,[POS_DOL_SHR_YA]
      ,[POS_UNITS]
      ,[POS_UNITS_YA]
  FROM [KNA_SALES].[dbo].[UVW_REX_STORE_PRFM_SHPMNT_FISC_CAL]

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
/****** Object:  StoredProcedure [dbo].[USP_REX_SIF_KPI_SALES_IMP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author		: Abhilash Mogili
-- Create date	: 05/16/2018
-- Modified By	: Abhilash Mogili
-- Modified Date: 10/11/2018
-- Description	: Stay in Front KPI POS Sales and Budget for Store,Territory,Area and Plan To level GSV Sales and Budget for QTD
-- Comments		: Added the Publix Store Level POS Sales and Budget for QTD 
-- =============================================



CREATE  PROCEDURE  [dbo].[USP_REX_SIF_KPI_SALES_IMP]
AS

BEGIN TRY


IF OBJECT_ID('tempdb.#SIF_KPI_POS_QTD') IS NOT NULL  
  DROP TABLE #SIF_KPI_POS_QTD

  IF OBJECT_ID('tempdb.#SIF_KPI') IS NOT NULL  
  DROP TABLE #SIF_KPI

  
-- To Get Nielsen date
DECLARE @PD_DT DATE
SET @PD_DT = (SELECT PD_DT FROM OPENQUERY([MYSQLMEMSQL Prod],'SELECT PD_DT FROM KNA_EXTERNAL.UVW_REX_AOD_PD_DT'))

;WITH BUDG
AS
(
SELECT  
SUM(Q_TOTAL) AS BUD
,CASE WHEN CATEGORY IN ('COLD CEREAL' ,'TOASTER PASTRIES') THEN 'Morning Foods' ELSE 'Snacks' END AS BU
,SOLD_TO_NBR
,BUDG.QTR
,BUDG.YR
FROM [KNA_EXTERNAL].[USER_SALES].[REX_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL AND BUDG.YR=DATEPART(YEAR,@PD_DT)
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC
WHERE
FC.FISC_YR = YEAR(@PD_DT)
AND
FISC_WK_END_DT <= @PD_DT
AND 
FC.FISC_QTR = DATEPART(QUARTER,@PD_DT)
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY CASE WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'Morning Foods' ELSE 'Snacks' END
,SOLD_TO_NBR
,BUDG.QTR
,BUDG.YR
)

,SIF_KPI_POS_QTD AS
(
SELECT 
 RGN_NBR 
,ZN_NBR 
,TERR_NBR
,PLN_TO_NBR 
,CHN_NBR
,SOLD_TO_NBR
,DOL_SALE
,BUD
,BU
FROM
(

--Dollar Sale and Budget for the Nielsen and HEB for QTD
SELECT 
NI.RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,
NI.ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
NI.TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR, 
NI.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
NI.CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,  
NI.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
(NI.DOL_SALE) AS DOL_SALE,
ISNULL(BUDG.BUD,0) AS BUD,
NI.BU COLLATE DATABASE_DEFAULT AS BU
FROM  OPENQUERY([MYSQLMEMSQL Prod],
--Here we are making use of the MEMSQL view to get the Nielsen Store level Dollar Sale Data at QTD
'SELECT RGN_NBR,ZN_NBR,TERR_NBR, PLN_TO_NBR,CHN_NBR, SOLD_TO_NBR,BU,CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE,PD_DESC  
FROM KNA_EXTERNAL.UVW_REX_SIF_STORE_PRFM_QTD 
WHERE PLN_TO_NBR NOT IN (''0000300855'',''0000300994'')') AS NI 
LEFT OUTER JOIN 
--Joining with the POS Budget
 BUDG 
ON  
NI.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] collate SQL_Latin1_General_CP1_CI_AS 
AND 
NI.BU = BUDG.BU
AND
NI.PD_DESC = 'Q'+ CAST (BUDG.QTR AS varchar(1))

UNION ALL

--Dollar Sale and Budget for the Walmart and kroger for QTD
SELECT        
ORC.RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,
ORC.ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
ORC.TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR, 
ORC.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
ORC.CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
ORC.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
(ORC.DOL_SALE) AS DOL_SALE,
ISNULL(BUDG.BUD,0) AS BUD,
ORC.BU COLLATE DATABASE_DEFAULT AS BU
FROM	 
[KNA_SALES].[dbo].[UVW_REX_SIF_ORC_STORE_PRFM_QTD] AS  ORC
LEFT OUTER JOIN
--JOining with the POS Budget 
BUDG 
ON  
ORC.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] collate SQL_Latin1_General_CP1_CI_AS 
AND 
ORC.BU = BUDG.BU collate SQL_Latin1_General_CP1_CI_AS 
AND
ORC.PD_DESC = 'Q'+ CAST (BUDG.QTR AS varchar(1)) collate SQL_Latin1_General_CP1_CI_AS 

UNION ALL

--Dollar Sale and Budget for the PUBLIX for QTD
SELECT        
PUB.RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,
PUB.ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
PUB.TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR, 
PUB.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
PUB.CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
PUB.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
(PUB.DOL_SALE) AS DOL_SALE,
ISNULL(BUDG.BUD,0) AS BUD,
PUB.BU COLLATE DATABASE_DEFAULT AS BU
FROM	 
[KNA_SALES].[dbo].[UVW_REX_SIF_PUBLIX_STORE_PRFM_QTD] AS  PUB
LEFT OUTER JOIN
--Joining with the POS Budget 
BUDG 
ON  
PUB.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] collate SQL_Latin1_General_CP1_CI_AS 
AND 
PUB.BU = BUDG.BU collate SQL_Latin1_General_CP1_CI_AS 
AND
PUB.PD_DESC = 'Q'+ CAST (BUDG.QTR AS varchar(1)) collate SQL_Latin1_General_CP1_CI_AS 

)AS B
)

-- Inserting the Store level  POS Dollar Sale into Temp Table
SELECT RGN_NBR,ZN_NBR,TERR_NBR,PLN_TO_NBR,CHN_NBR,SOLD_TO_NBR,DOL_SALE, [BUD],BU
INTO 
#SIF_KPI_POS_QTD
FROM SIF_KPI_POS_QTD

-- Making the Store Level Budget as 0 when  POS Dollar Sale is 0

SELECT 
RGN_NBR
,ZN_NBR
,TERR_NBR
,PLN_TO_NBR
,CHN_NBR
,SOLD_TO_NBR
,DOL_SALE
, [BUD]
,BU
INTO 
#SIF_KPI
FROM
(
SELECT 
 T.RGN_NBR
,T.ZN_NBR
,T.TERR_NBR
,T.PLN_TO_NBR
,T.CHN_NBR
,T.SOLD_TO_NBR
,T.DOL_SALE
,T.BUD
,T.BU
FROM 
#SIF_KPI_POS_QTD
AS T
INNER JOIN
(
SELECT 
RGN_NBR
,ZN_NBR
,TERR_NBR
,PLN_TO_NBR
,CHN_NBR
,SOLD_TO_NBR
,SUM(DOL_SALE) AS DOL_SALE
,SUM(BUD) AS BUD
FROM 
#SIF_KPI_POS_QTD
--where
--SOLD_TO_NBR = '1000001221'
GROUP BY
RGN_NBR
,ZN_NBR
,TERR_NBR
,PLN_TO_NBR
,CHN_NBR
,SOLD_TO_NBR
) AS A
ON
T.SOLD_TO_NBR = A.SOLD_TO_NBR
AND
T.CHN_NBR = A.CHN_NBR
AND
T.PLN_TO_NBR = A.PLN_TO_NBR
AND
T.TERR_NBR = A.TERR_NBR
AND
T.ZN_NBR = A.ZN_NBR
AND
T.RGN_NBR = A.RGN_NBR
WHERE
A.DOL_SALE != 0

UNION ALL

SELECT 

 T.RGN_NBR
,T.ZN_NBR
,T.TERR_NBR
,T.PLN_TO_NBR
,T.CHN_NBR
,T.SOLD_TO_NBR
,T.DOL_SALE
,0 AS BUD
,T.BU
FROM 
#SIF_KPI_POS_QTD
AS T
INNER JOIN
(
SELECT 
RGN_NBR
,ZN_NBR
,TERR_NBR
,PLN_TO_NBR
,CHN_NBR
,SOLD_TO_NBR
,SUM(DOL_SALE) AS DOL_SALE
,SUM(BUD) AS BUD
FROM 
#SIF_KPI_POS_QTD
GROUP BY
RGN_NBR
,ZN_NBR
,TERR_NBR
,PLN_TO_NBR
,CHN_NBR
,SOLD_TO_NBR
) AS A
ON
T.SOLD_TO_NBR = A.SOLD_TO_NBR
AND
T.CHN_NBR = A.CHN_NBR
AND
T.PLN_TO_NBR = A.PLN_TO_NBR
AND
T.TERR_NBR = A.TERR_NBR
AND
T.ZN_NBR = A.ZN_NBR
AND
T.RGN_NBR = A.RGN_NBR
WHERE
A.DOL_SALE = 0
) AS SIF



DELETE FROM [KNA_EXTERNAL].SIF.REX_KPI_SALES


INSERT INTO [KNA_EXTERNAL].SIF.REX_KPI_SALES
SELECT KPI_ID,CLASS,Object_ID,KPIDate,Calculation,TargetCalculation


FROM 
--1.Kpi_StoreSalesPOS_QTD
(
SELECT 
CASE WHEN BU = 'Snacks' THEN 'kpi_StoreSalesPOS_QTD' ELSE 'kpi_StoreSalesPOS_QTD_MF'END AS KPI_ID
,'Store' AS CLASS
,POS.SOLD_TO_NBR AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,(POS.[DOL_SALE]) AS Calculation
,(POS.[BUD]) AS TargetCalculation
FROM
#SIF_KPI AS POS




UNION ALL

--2.kpi_TerrSalesPOS_QTD

SELECT 
CASE WHEN BU = 'Snacks' THEN 'kpi_TerrSalesPOS_QTD' ELSE 'kpi_TerrSalesPOS_QTD_MF' END AS KPI_ID
,'AS_Territory' AS CLASS
,CONVERT(DECIMAL(10,0),POS.[TERR_NBR])AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,SUM(POS.[DOL_SALE]) AS Calculation
,SUM(POS.[BUD]) AS TargetCalculation
FROM
#SIF_KPI AS  POS
WHERE
POS.[TERR_NBR] IS NOT NULL
GROUP BY
CASE WHEN BU = 'Snacks' THEN 'kpi_TerrSalesPOS_QTD' ELSE 'kpi_TerrSalesPOS_QTD_MF' END,
CONVERT(DECIMAL(10,0),POS.[TERR_NBR])

UNION ALL

--3.kpi_AreaSalesPOS_QTD

SELECT 
CASE WHEN BU = 'Snacks' THEN 'kpi_AreaSalesPOS_QTD' ELSE 'kpi_AreaSalesPOS_QTD_MF' END  AS KPI_ID
,'SalesTeam' AS CLASS
,CONVERT(DECIMAL(10,0),POS.[ZN_NBR])AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate 
,SUM(POS.[DOL_SALE]) AS Calculation
,SUM(POS.[BUD]) AS TargetCalculation
FROM
#SIF_KPI AS  POS
WHERE
POS.[ZN_NBR] IS NOT NULL
GROUP BY
CASE WHEN BU = 'Snacks' THEN 'kpi_AreaSalesPOS_QTD' ELSE 'kpi_AreaSalesPOS_QTD_MF' END,
CONVERT(DECIMAL(10,0),POS.[ZN_NBR])

UNION ALL

--4.kpi_PlantoSalesGSV_QTD
SELECT 
CASE WHEN SHIP.BU = 'Snacks' THEN 'kpi_PlantoSalesGSV_QTD' ELSE 'kpi_PlanToSalesGSV_QTD_MF' END AS KPI_ID
,'BannerGroup' AS CLASS
,CONVERT(DECIMAL(10,0),CH.CHN_NBR) AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,(SHIP.[GSV]) AS Calculation
,(SHIP.[BUD]) AS TargetCalculation
FROM
[KNA_SALES].[dbo].[UVW_REX_SIF_SHIPMNT_BUD] AS  SHIP
INNER JOIN 
(
SELECT  [PLN_TO_NBR],CHN_NBR,FISC_YR,FISC_QTR 
FROM [dbo].[REX_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY
[PLN_TO_NBR],CHN_NBR,FISC_YR,FISC_QTR

) CH 
ON SHIP.PLN_TO_NBR = CH.PLN_TO_NBR COLLATE Latin1_General_CS_AS
AND
YEAR(SHIP.PD_DT) = CH.FISC_YR
AND
DATEPART(QUARTER,PD_DT) = CH.FISC_QTR


UNION ALL

--6.kpi_POS_Pace_QTD
SELECT
'kpi_POS_Pace_QTD' AS KPI_ID
,'Region' AS CLASS
,CONVERT(DECIMAL(10,0),CUST.[RGN_NBR])AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,[dbo].[fn_REX_PACE_PCT](CAST(@PD_DT AS DATE)) * 100 AS Calculation
,'' AS TargetCalculation
FROM
[dbo].[REX_TDLINX_CUST_HIER] AS CUST WITH (NOLOCK)
WHERE
CUST.FISC_YR = YEAR(@PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,@PD_DT)
GROUP BY
CONVERT(DECIMAL(10,0),CUST.[RGN_NBR])
) AS SALES
 END TRY  
BEGIN CATCH  
    SELECT   
        ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH 




GO
/****** Object:  StoredProcedure [dbo].[USP_SNACKS_POS_WALMART_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













-- =============================================
-- Author			:	Vikram Ganti
-- Create date		:	06/03/2017
-- Modified By		:	
-- Modified date	:	
-- Description		:	Returns Total Sales,Point of Distribution for each SOLD_TO_NBR,Category,Brand for each week for Current year and Previous Year based on the [KNA_SALES].dbo.POS_WM table
-- Comments			:
-- =============================================
CREATE  PROCEDURE  [dbo].[USP_SNACKS_POS_WALMART_WK]
AS

BEGIN
--- If temp table exists then drop the table
IF OBJECT_ID('tempdb..#WALMART_WK') IS NOT NULL  
  DROP TABLE #WALMART_WK

TRUNCATE TABLE [dbo].[SNACKS_POS_WALMART_WK] 
   
  
SELECT 
SOLDTO,
STORENBR,
STOREDESC,
 CASE 
	  WHEN PHR.PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	  WHEN PHR.PROD_HIER_CATEGORY_DESC = 'Cookies' AND PHR.PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
	  WHEN PHR.PROD_HIER_CATEGORY_DESC = 'Crackers' AND PHR.PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	  WHEN (PHR.PROD_HIER_CATEGORY_DESC = 'Cookies' OR PHR.PROD_HIER_CATEGORY_DESC = 'Crackers') AND PHR.PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	  ELSE PHR.PROD_HIER_CATEGORY_DESC 
      END AS [CATEGORY]
      ,PHR.PROD_HIER_BRAND_DESC  AS [BRAND]
	  ,FC.FISC_YR AS YEAR
	  ,CASE WHEN FC.FISC_WK_STRT_DT <= DAY AND FC.FISC_WK_END_DT >= DAY  THEN FC.FISC_WK  END AS WEEK
      ,SUM(POS_SALES) AS TOTAL_SALES
	  ,COUNT(WM.UPC) AS [TDP]
 
  INTO #WALMART_WK

FROM [KNA_SALES].[DBO].[POS_WM] WM
INNER JOIN
[KG_VIEWS].[KG].[UVW_FISC_CAL] FC
ON
--YEAR(WM.DAY) = FC.FISC_YR
-- AND 
FC.FISC_WK_STRT_DT <= WM.DAY
AND
FC.FISC_WK_END_DT >= WM.DAY
INNER JOIN 
--Joining with the Product Hierarchy based on the Material number.
[KNA_SALES].[dbo].[SNACKS_UPC_PKG_PROD_HIER] AS PHR 
ON CONVERT(DECIMAL(18,0), WM.UPC) = PHR.UPC
WHERE 
SUBPARTSUFFIXTXT ='WMCRUS'
--AND 
--WM.SOLDTO != 'Unknown'
AND
YEAR([DAY]) IN (YEAR(GETDATE()) ,(YEAR(GETDATE())-1),(YEAR(GETDATE())-2))
AND  
PHR.[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
--AND
--PHR.UPC NOT IN 
--(
-- '3800018309'
--,'3800018306'
--,'3800018303'
--,'3800016103'
--,'3800016100'
--,'3800016805'
--,'3800016804'
--,'3800016753'
--,'3800016751'
--,'3800016755'
--)
GROUP BY
SOLDTO,
STORENBR,
STOREDESC,
 CASE 
	  WHEN PHR.PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	  WHEN PHR.PROD_HIER_CATEGORY_DESC = 'Cookies' AND PHR.PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
	  WHEN PHR.PROD_HIER_CATEGORY_DESC = 'Crackers' AND PHR.PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	  WHEN (PHR.PROD_HIER_CATEGORY_DESC = 'Cookies' OR PHR.PROD_HIER_CATEGORY_DESC = 'Crackers') AND PHR.PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	  ELSE PHR.PROD_HIER_CATEGORY_DESC 
      END,
      PHR.PROD_HIER_BRAND_DESC,
	  FC.FISC_YR
	  ,CASE WHEN FC.FISC_WK_STRT_DT <= DAY AND FC.FISC_WK_END_DT >= DAY  THEN FC.FISC_WK  END

BEGIN TRY

BEGIN TRANSACTION

--We are inserting new weeks data
INSERT INTO [dbo].[SNACKS_POS_WALMART_WK]
           ([SOLDTO],
			[STORENBR],
			[STOREDESC]
           ,[CATG]
           ,[BRAND]
           ,[WK]
           ,[YR]
           ,[TOTL_SALES]
           ,[TOTL_DIST_PNT])
SELECT SOLDTO,STORENBR, STOREDESC,CATEGORY,BRAND,WEEK,YEAR,TOTAL_SALES,TDP FROM #WALMART_WK

---Updating the unknown SOLD_TO's

UPDATE [KNA_SALES].[dbo].[SNACKS_POS_WALMART_WK]
SET SOLDTO =

CASE WHEN LTRIM(RTRIM(STORENBR)) = '1879' THEN '1000063926'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '55'   THEN '1000006890'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '133'  THEN '1000012170'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '241'  THEN '1000063448'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '288'  THEN '1000013844'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '312'  THEN '1000014053'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '373'  THEN '1000058966'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '390'  THEN '1000009526'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '399'  THEN '1000012989'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '425'  THEN '1000012192'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '512'  THEN '1000009530'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '525'  THEN '1000062042'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '555'  THEN '1000014960'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '662'  THEN '1000006245'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '737'  THEN '1000014018'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '952'  THEN '1000022927'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1091' THEN '1000014196'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1390' THEN '1000007579'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1450' THEN '1000011847'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1470' THEN '1000012161'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1516' THEN '1000059172'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1566' THEN '1000036769'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1575' THEN '1000063881'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1590' THEN '1000013003'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1636' THEN '1000013733'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1744' THEN '1000063045'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1862' THEN '1000063745'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '1959' THEN '1000027755'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2289' THEN '1000062863'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2392' THEN '1000058978'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2436' THEN '1000061741'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2442' THEN '1000059046'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2487' THEN '1000038603'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2685' THEN '1000058881'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2731' THEN '1000059531'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2756' THEN '1000063447'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3069' THEN '1000058941'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3078' THEN '1000059053'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3133' THEN '1000056932'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3458' THEN '1000063742'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3498' THEN '1000061064'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3577' THEN '1000057743'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3619' THEN '1000061192'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3660' THEN '1000011508'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3713' THEN '1000060442'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3830' THEN '1000062646'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4101' THEN '1000059932'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4159' THEN '1000058745'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4165' THEN '1000059055'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4167' THEN '1000058766'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4365' THEN '1000063509'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4373' THEN '1000060404'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4375' THEN '1000059834'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4388' THEN '1000062687'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4401' THEN '1000060382'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4426' THEN '1000061998'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4432' THEN '1000062006'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4443' THEN '1000059841'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4465' THEN '1000062028'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4470' THEN '1000062041'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4494' THEN '1000062922'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4502' THEN '1000059928'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4512' THEN '1000063763'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4528' THEN '1000061199'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4530' THEN '1000062043'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4577' THEN '1000062026'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4591' THEN '1000061195'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4654' THEN '1000061995'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4673' THEN '1000062003'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4674' THEN '1000061980'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4757' THEN '1000059087'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4762' THEN '1000060381'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4848' THEN '1000062100'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4900' THEN '1000056840'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5005' THEN '1000059129'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5012' THEN '1000062908'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5013' THEN '1000056831'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5062' THEN '1000062002'	
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5135' THEN '1000062102'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5182' THEN '1000062007'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5198' THEN '1000035319'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5310' THEN '1000063641'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5318' THEN '1000062004'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5382' THEN '1000061697'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5404' THEN '1000063387'			
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5464' THEN '1000062103'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5467' THEN '1000062034'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5704' THEN '1000063639'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5716' THEN '1000062036'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5725' THEN '1000063728'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5744' THEN '1000062015'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5746' THEN '1000062249'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5771' THEN '1000063764'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5773' THEN '1000062945'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5782' THEN '1000062834'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5789' THEN '1000062664'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5808' THEN '1000058761'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5817' THEN '1000056403'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5818' THEN '1000056404'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5820' THEN '1000056405'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5829' THEN '1000062948'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5903' THEN '1000062001'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5915' THEN '1000063365'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6098' THEN '1000058760'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6176' THEN '1000059750'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6226' THEN '1000059051'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6284' THEN '1000062949'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6392' THEN '1000058968'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6459' THEN '1000058945'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6467' THEN '1000063601'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6500' THEN '1000058809'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6586' THEN '1000058807'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6929' THEN '1000060441'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6942' THEN '1000059043'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6958' THEN '1000062950'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6963' THEN '1000063688'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6967' THEN '1000060282'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6975' THEN '1000059059'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7217' THEN '1000059135'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7222' THEN '1000059230'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7224' THEN '1000059565'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7241' THEN '1000059470'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7243' THEN '1000059927'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7320' THEN '1000061993'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '840'  THEN '1000061187'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2425' THEN '1000042616'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3212' THEN '1000063922'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4203' THEN '1000063921'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4734' THEN '1000064073'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5824' THEN '1000063905'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6579' THEN '1000063925'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7032' THEN '1000063927'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '4565' THEN '1000064609'
	 WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2463'  THEN '1000064503'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2464'  THEN '1000064501'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '2483'  THEN '1000064535'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '3988'  THEN '1000064221'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '5214'  THEN '1000064610'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '6477'  THEN '1000064222'
     WHEN LTRIM(RTRIM(SOLDTO)) = 'Unknown' and LTRIM(RTRIM(STORENBR)) = '7185'  THEN '1000064534'
	 END
	 WHERE LTRIM(RTRIM(SOLDTO)) IN ('Unknown','1879')
	  

END TRY


BEGIN CATCH

ROLLBACK

RAISERROR (15600,-1,-1, 'Executing this SP USP_SNACKS_POS_WALMART_WK failed')

END CATCH

COMMIT TRANSACTION;


END









GO
/****** Object:  StoredProcedure [dbo].[USP_SNACKS_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/03/2017
-- Modified By		:	
-- Modified date	:	
-- Description		:	 KSR POS Store Sales and Budget  for all the Snacks Categories for all the timeframes Q1,Q2,Q3,Q4 AND YTD and Inserting into the KNA_SALES.dbo.[SNACKS_RPT_KSR_BUD]
-- Comments			:
-- =============================================



CREATE PROCEDURE [dbo].[USP_SNACKS_RPT_KSR_BUD]
AS


BEGIN TRY
-- To Get Nielsen date
DECLARE @PD_DT DATE
SET @PD_DT = (SELECT PD_DT FROM OPENQUERY([MYSQLMEMSQL Prod],'SELECT PD_DT FROM KG_EXTERNAL.UVW_SNACKS_AOD_PD_DT'))


--Deleting the Data
DELETE FROM [dbo].[SNACKS_RPT_KSR_BUD]
--WALMART Sales and Budget for all the Quarters
INSERT INTO [dbo].[SNACKS_RPT_KSR_BUD]
SELECT  [CORP]
      ,[CATG]
      ,[PD_DT]
      ,[CO]
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,'POS' AS TYP
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
      ,[STORE]
      ,[PD_FULL_DESC]
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS [DOL_SALE]
      ,MAX([BUD]) AS [BUD]
      ,[KNA_SALES].[dbo].[UDF_SNACKS_PACE_PCT](PD_DT) * 100 AS PACE
         FROM 
         (

SELECT        
TD_CH.CUST_TEAM AS CORP, 
WM.CATG,
@PD_DT AS PD_DT,
'KELLOGG CORPORATION' AS CO, 
TD_CH.RGN,
TD_CH.RGN_NBR, 
TD_CH.ZN,
TD_CH.ZN_NBR,

TD_CH.TERR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO,
TD_CH.PLN_TO_NBR, 
TD_CH.CHN,
TD_CH.CHN_NBR,  
TD_CH.SOLD_TO,
TD_CH.SOLD_TO_NBR,
NULL AS STORE,
NULL as PD_FULL_DESC,
WM.PD_DESC,
(WM.TOTL_SALES) as DOL_SALE,
ISNULL(BUD,0) AS BUD,
0 as LD_FLG
--,
--[KNA_SALES].[dbo].[UDF_SNACKS_PACE_PCT](CAST(DATEADD(wk, -1, DATEADD(wk, DATEDIFF(wk, 0,getdate()), -2)) AS DATE)) * 100 AS PACE
FROM   [KNA_SALES].[dbo].[UVW_SNACKS_STORE_PRFM_POS_WALMART_KSR] WM WITH (NOLOCK)
INNER JOIN [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
--Joining the UVW_WALMART_KSR view with the Customer Hierarchy based on SOLD_TO_NBR
ON CONVERT(INT,WM.SOLDTO  COLLATE SQL_Latin1_General_CP1_CI_AS) = CONVERT(INT,TD_CH.SOLD_TO_NBR)

LEFT OUTER JOIN  KNA_SALES.dbo.UVW_SNACKS_POS_BUD AS BUDG  WITH (NOLOCK)
--Joining the Customer Hierarchy with the POS_Budget based on the SOLD_TO_NBR,Category,Period Description
ON  TD_CH.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR]  AND UPPER(LTRIM(RTRIM(WM.CATG))) = LTRIM(RTRIM(BUDG.CATG)) COLLATE SQL_Latin1_General_CP1_CI_AS AND WM.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS


UNION ALL

--Nielsen and krogers Data for all Quarters,YTD

SELECT        
CORP COLLATE DATABASE_DEFAULT AS CORP, 
KROG.CATG COLLATE DATABASE_DEFAULT AS CATG,
PD_DT,
'KELLOGG CORPORATION' AS CO, 
RGN COLLATE DATABASE_DEFAULT AS RGN,
RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR, 
ZN COLLATE DATABASE_DEFAULT AS ZN,
ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,
TERR COLLATE DATABASE_DEFAULT AS TERR,
TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR,
PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR, 
CHN COLLATE DATABASE_DEFAULT AS CHN,
CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,  
SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
KROG.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
NULL AS STORE,
NULL AS  PD_FULL_DESC,
KROG.PD_DESC COLLATE DATABASE_DEFAULT AS PD_DESC,
DOL_SALE,
ISNULL(BUD,0) AS BUD,
1 as LD_FLG
--,
-- [KNA_SALES].[dbo].[UDF_SNACKS_PACE_PCT](CAST(DATEADD(wk, -1, DATEADD(wk, DATEDIFF(wk, 0,getdate()), -2)) AS DATE)) * 100 AS PACE
--[KNA_SALES].[dbo].[UDF_SNACKS_PACE_PCT](CAST(PD_DT AS DATE)) * 100 AS PACE
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CORP,SOLD_TO,SOLD_TO_NBR,RGN,RGN_NBR,ZN,ZN_NBR,TERR,TERR_NBR,PLN_TO,PLN_TO_NBR,CHN,CHN_NBR,CATG,CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE,PD_DESC,PD_DT FROM KG_EXTERNAL.UVW_SNACKS_RPT_KSR_BUD') AS KROG
LEFT OUTER JOIN  KNA_SALES.dbo.UVW_SNACKS_POS_BUD AS BUDG  WITH (NOLOCK)
--Joining the Customer Hierarchy with the POS_Budget based on the SOLD_TO_NBR,Category,Period Description
ON  KROG.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] COLLATE SQL_Latin1_General_CP1_CI_AS AND UPPER(LTRIM(RTRIM(KROG.CATG))) = LTRIM(RTRIM(BUDG.CATG)) COLLATE SQL_Latin1_General_CP1_CI_AS AND KROG.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS

       ) AS T 

GROUP BY
[CORP],[CATG],[PD_DT],[CO],[RGN],[RGN_NBR],[ZN],[ZN_NBR],[TERR],[TERR_NBR],[PLN_TO],[PLN_TO_NBR],[CHN],[CHN_NBR],[SOLD_TO],[SOLD_TO_NBR]
,[STORE],[PD_FULL_DESC],[PD_DESC],[KNA_SALES].[dbo].[UDF_SNACKS_PACE_PCT](PD_DT) * 100

       END TRY  
BEGIN CATCH  
    SELECT   
        ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH 




GO
/****** Object:  StoredProcedure [dbo].[USP_SNACKS_SIF_KPI_SALES_IMP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author			: Abhilash Mogili
-- Create date		: 08/02/2017
-- Description		: Stay in Front KPI Sales Import
-- Modified Date	: 
-- Comments			: 
-- =============================================



CREATE  PROCEDURE  [dbo].[USP_SNACKS_SIF_KPI_SALES_IMP]
AS

BEGIN TRY

IF OBJECT_ID('tempdb.#POS_NIELSEN') IS NOT NULL  
  DROP TABLE #POS_NIELSEN

IF OBJECT_ID('tempdb.#POS_ORC') IS NOT NULL  
  DROP TABLE #POS_ORC


IF OBJECT_ID('tempdb.#POS_NIELSEN_ORC') IS NOT NULL  
  DROP TABLE #POS_NIELSEN_ORC

  
-- To Get Nielsen date
DECLARE @PD_DT DATE
SET @PD_DT = (SELECT PD_DT FROM OPENQUERY([MYSQLMEMSQL Prod],'SELECT PD_DT FROM KG_EXTERNAL.UVW_SNACKS_AOD_PD_DT'))


--Dollar Sale and Budget for the Nielsen for QTD
SELECT 
NI.RGN_NBR,
NI.ZN_NBR,
NI.TERR_NBR, 
NI.PLN_TO_NBR,
NI.CHN_NBR,  
NI.SOLD_TO_NBR,
NI.PD_DESC,
(NI.DOL_SALE) AS DOL_SALE,
ISNULL(BUDG.BUD,0) AS BUD
--Inserting into the Temp table
INTO #POS_NIELSEN
FROM  OPENQUERY([MYSQLMEMSQL Prod],
--Here we are making use of the MEMSQL view to get the Nielsen Store level Dollar Sale Data at QTD
'SELECT RGN_NBR,ZN_NBR,TERR_NBR, PLN_TO_NBR,CHN_NBR, SOLD_TO_NBR,PD_DESC, STORE_NUM_CODE, CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE  
FROM KG_EXTERNAL.UVW_SNACKS_SIF_STORE_PRFM_QTD 
WHERE PLN_TO_NBR NOT IN (''0000300855'',''0000300994'')') AS NI 
LEFT OUTER JOIN 
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD,SOLD_TO_NBR,BUDG.QTR,BUDG.YR
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(@PD_DT)
AND
--FISC_WK_STRT_DT >= DATEADD(yy, DATEDIFF(yy, 0, @PD_DT), 0)
--AND
FISC_WK_END_DT <= @PD_DT
AND 
FC.FISC_QTR = DATEPART(QUARTER,@PD_DT)
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY SOLD_TO_NBR,BUDG.QTR,BUDG.YR
) AS BUDG 
ON  NI.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] collate SQL_Latin1_General_CP1_CI_AS AND NI.PD_DESC = 'Q'+ CAST (BUDG.QTR AS varchar(1))



--Creating the Index on the SOLD_TO_NBR
CREATE CLUSTERED INDEX IX_POS_NIELSEN on #POS_NIELSEN(SOLD_TO_NBR)

--Dollar Sale and Budget for the Walmart and kroger for QTD
SELECT        
WM.RGN_NBR, 
WM.ZN_NBR,
WM.TERR_NBR,
WM.PLN_TO_NBR, 
WM.CHN_NBR,  
WM.SOLD_TO_NBR,
WM.PD,
WM.[DOL_SALE],
ISNULL(BUDG.BUD,0)  AS BUD
INTO #POS_ORC
FROM	 
[KNA_SALES].[dbo].[UVW_SNACKS_SIF_STORE_PRFM_ORC_POS] WM WITH (NOLOCK)
LEFT OUTER JOIN
--JOining with the POS Budget 
(
SELECT  SUM(Q_TOTAL) AS BUD,SOLD_TO_NBR,BUDG.QTR,BUDG.YR
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(@PD_DT)
AND
--FISC_WK_STRT_DT >= DATEADD(yy, DATEDIFF(yy, 0, @PD_DT), 0)
--AND
FISC_WK_END_DT <= @PD_DT
AND 
FC.FISC_QTR = DATEPART(QUARTER,@PD_DT)
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY SOLD_TO_NBR,BUDG.QTR,BUDG.YR
) AS  BUDG 
ON  WM.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] AND WM.PD = 'Q'+ CAST (BUDG.QTR AS varchar(1))


--Creating the Index on the WALMART SOLD_TO_NBR
CREATE CLUSTERED INDEX IX_POS_ORC ON #POS_ORC(SOLD_TO_NBR)


CREATE TABLE #POS_NIELSEN_ORC
(

RGN_NBR varchar(10)
,ZN_NBR varchar(10)
,TERR_NBR varchar(10)
,PLN_TO_NBR varchar(10)
,CHN_NBR varchar(10)
,SOLD_TO_NBR varchar(10)
--,PD_DESC varchar(4)
,DOL_SALE numeric(38,3)
,BUD float
)


--Here we are inserting into #POS_ORC
INSERT INTO #POS_NIELSEN_ORC
--SELECT * INTO #POS_ORC
SELECT RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR,ZN_NBR COLLATE DATABASE_DEFAULT AS ZN_NBR,TERR_NBR COLLATE DATABASE_DEFAULT AS TERR_NBR,PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,DOL_SALE,CASE WHEN [DOL_SALE] = 0 THEN 0 ELSE [BUD] END AS [BUD]
FROM #POS_NIELSEN
UNION ALL
SELECT RGN_NBR,ZN_NBR,TERR_NBR,PLN_TO_NBR,CHN_NBR,SOLD_TO_NBR,DOL_SALE,CASE WHEN [DOL_SALE] = 0 THEN 0 ELSE [BUD] END AS [BUD]
FROM #POS_ORC


DELETE FROM [KNA_EXTERNAL].SIF.SNACKS_KPI_SALES


INSERT INTO [KNA_EXTERNAL].SIF.SNACKS_KPI_SALES
SELECT KPI_ID,CLASS,Object_ID,KPIDate,Calculation,TargetCalculation


FROM 
--1.Kpi_StoreSalesPOS_QTD
(
SELECT 
'kpi_StoreSalesPOS_QTD' AS KPI_ID
,'Store' AS CLASS
,POS.SOLD_TO_NBR AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,(POS.[DOL_SALE]) AS Calculation
,(POS.[BUD]) AS TargetCalculation
FROM
#POS_NIELSEN_ORC POS



UNION ALL

--2.kpi_TerrSalesPOS_QTD

SELECT 
'kpi_TerrSalesPOS_QTD' AS KPI_ID
,'AS_Territory' AS CLASS
,CONVERT(DECIMAL(10,0),POS.[TERR_NBR])AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,SUM(POS.[DOL_SALE]) AS Calculation
,SUM(POS.[BUD]) AS TargetCalculation
FROM
#POS_NIELSEN_ORC POS
WHERE
POS.[TERR_NBR] IS NOT NULL
GROUP BY
CONVERT(DECIMAL(10,0),POS.[TERR_NBR])

UNION ALL

--3.kpi_AreaSalesPOS_QTD

SELECT 
'kpi_AreaSalesPOS_QTD' AS KPI_ID
,'SalesTeam' AS CLASS
,CONVERT(DECIMAL(10,0),POS.[ZN_NBR])AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate 
,SUM(POS.[DOL_SALE]) AS Calculation
,SUM(POS.[BUD]) AS TargetCalculation
FROM
#POS_NIELSEN_ORC POS
WHERE
POS.[ZN_NBR] IS NOT NULL
GROUP BY
CONVERT(DECIMAL(10,0),POS.[ZN_NBR])

UNION ALL

--4.kpi_PlantoSalesGSV_QTD
SELECT 
'kpi_PlantoSalesGSV_QTD' AS KPI_ID
,'BannerGroup' AS CLASS
,CONVERT(DECIMAL(10,0),CH.CHN_NBR) AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,(SHIP.[GSV]) AS Calculation
,(SHIP.[BUD]) AS TargetCalculation
FROM
[KNA_SALES].[dbo].[UVW_SNACKS_SIF_GSV_BUD] SHIP WITH (NOLOCK)
INNER JOIN 
(SELECT DISTINCT [PLN_TO_NBR],CHN_NBR FROM [dbo].[SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)) CH 
ON SHIP.PLN_TO_NBR = CH.PLN_TO_NBR


UNION ALL

--5.kpi_DivSalesPOS_QTD


SELECT
'kpi_DivSalesPOS_QTD' AS KPI_ID
,'BannerGroup' AS CLASS
,CH.CHAIN_NBR AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,SUM(PU.[($)]) AS Calculation
,MAX(B.Q_TOTAL) AS TargetCalculation
 FROM 
 --getting the Division POS Sales for the PUblix
[KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_DIV_POS] PU WITH (NOLOCK)
INNER JOIN
( 
--Getting the 5 Publix Chain Store
SELECT  NIELSEN_DIV, CHAIN_NBR 
FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE] WITH (NOLOCK)
GROUP BY NIELSEN_DIV, CHAIN_NBR
) CH
ON
PU.[(All Markets)] = CH.NIELSEN_DIV
INNER JOIN 
(
--Getiing the Budget for the Present Quarter for each chain number
SELECT CHN_NBR,QTR,YR, SUM(Q_TOTAL) AS Q_TOTAL 
FROM
(
--Getting the Budget for the Present Quarter at the SOLD_TO level
SELECT PUB.CHN_NBR,POS_BUDG.QTR,POS_BUDG.YR,POS_BUDG.SOLD_TO_NBR, SUM(Q_TOTAL) AS Q_TOTAL 
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] POS_BUDG WITH (NOLOCK)
INNER JOIN 
(
--Getting the Publix SOLD_TO_NBR's for Each Chain_NBR 
SELECT   CHN_NBR, SOLD_TO_NBR 
FROM [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK) 
WHERE PLN_TO_NBR = '0000300850'
GROUP BY
CHN_NBR, SOLD_TO_NBR
) AS PUB 
ON PUB.SOLD_TO_NBR = POS_BUDG.SOLD_TO_NBR 
GROUP BY PUB.CHN_NBR,POS_BUDG.QTR,POS_BUDG.YR,POS_BUDG.SOLD_TO_NBR
) AS CP
GROUP BY CHN_NBR,QTR,YR 
) AS B 
ON B.CHN_NBR = CH.CHAIN_NBR
WHERE
PU.[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' AND PU.[(KEL_BRAND)] IS NOT NULL  AND  PU.[(KEL_BRAND)] NOT LIKE '%KASHI%' AND  PU.[(KEL_BRAND)]  NOT LIKE '%BEAR NAKED%'
AND [(All Periods)] LIKE '%QTD%'
AND B.YR = YEAR(@PD_DT)
AND B.QTR = DATEPART(QUARTER,@PD_DT)

GROUP BY
CH.CHAIN_NBR

UNION ALL

--6.kpi_POS_Pace_QTD
SELECT
'kpi_POS_Pace_QTD' AS KPI_ID
,'Region' AS CLASS
,CONVERT(DECIMAL(10,0),CUST.[RGN_NBR])AS Object_ID
,CONVERT(CHAR(10),@PD_DT,101) AS KPIDate
,[dbo].[UDF_SNACKS_PACE_PCT](CAST(@PD_DT AS DATE)) * 100 AS Calculation
,'' AS TargetCalculation
FROM
[dbo].[SNACKS_TDLINX_CUST_HIER] AS CUST
GROUP BY
CONVERT(DECIMAL(10,0),CUST.[RGN_NBR])
) AS SALES
 END TRY  
BEGIN CATCH  
    SELECT   
        ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH 















GO
/****** Object:  StoredProcedure [dbo].[USP_SNACKS_VLD_RPT_SALES_OUTLOOK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	11/02/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the POS Sales and Budget for all Quarters Q1,Q2,Q3,Q4 for the Present and Past Year based on the PERIOD DATE
-- =============================================

CREATE PROCEDURE [dbo].[USP_SNACKS_VLD_RPT_SALES_OUTLOOK] 
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION

	SAVE TRANSACTION  start_tran;



IF OBJECT_ID(N'dbo.SNACKS_VLD_RPT_SALES_OUTLOOK', N'U') IS NOT NULL
TRUNCATE TABLE [dbo].[SNACKS_VLD_RPT_SALES_OUTLOOK];



INSERT INTO [dbo].[SNACKS_VLD_RPT_SALES_OUTLOOK]
SELECT  
     
      [SOLD_TO_NBR]
	  , [CATG]
      ,[PD_DESC]
	  ,TYP
      ,SUM([DOL_SALE]) AS [DOL_SALE]
	  ,SUM([DOL_SALE_YA]) AS [DOL_SALE_YA]
      ,MAX([BUD]) AS [BUD]
       FROM 
         (



--Nielsen and IRI Data for all Quarters,YTD

SELECT  
NIELSEN_IRI.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,      
NIELSEN_IRI.CATG COLLATE DATABASE_DEFAULT AS CATG,
NIELSEN_IRI.PD_DESC COLLATE DATABASE_DEFAULT AS PD_DESC,
NIELSEN_IRI.TYP,
ISNULL(NIELSEN_IRI.DOL_SALE,0) AS DOL_SALE,
ISNULL(NIELSEN_IRI.DOL_SALE_YA,0) AS DOL_SALE_YA,
ISNULL(BUD,0) AS BUD
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO_NBR,CATG,PD_DESC,TYP,DOL_SALE,DOL_SALE_YA FROM KG_EXTERNAL.UVW_SNACKS_VLD_RPT_STORE_PRFM_POS_QTR') AS NIELSEN_IRI
LEFT OUTER JOIN  KNA_SALES.dbo.UVW_SNACKS_VLD_POS_BUD_YAGO AS BUDG
ON  NIELSEN_IRI.SOLD_TO_NBR = BUDG.[SOLD_TO_NBR] COLLATE SQL_Latin1_General_CP1_CI_AS AND UPPER(LTRIM(RTRIM(NIELSEN_IRI.CATG))) = LTRIM(RTRIM(BUDG.CATG)) COLLATE SQL_Latin1_General_CP1_CI_AS AND NIELSEN_IRI.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS

UNION ALL

--Kroger Data for all Quarters and YTD
SELECT  
KROGER.SOLDTO COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,      
KROGER.CATG COLLATE DATABASE_DEFAULT AS CATG,
KROGER.PD_DESC COLLATE DATABASE_DEFAULT AS PD_DESC,
KROGER.TYP,
ISNULL(KROGER.TOTL_SALES,0)   AS DOL_SALE,
ISNULL(KROGER.TOTL_SALES_YA,0)    AS DOL_SALE_YA,
ISNULL(BUD,0) AS BUD
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLDTO,CATG,PD_DESC,TYP,TOTL_SALES,TOTL_SALES_YA FROM KG_EXTERNAL.UVW_SNACKS_VLD_ORC_POS_QTR') AS KROGER
LEFT OUTER JOIN  
KNA_SALES.dbo.UVW_SNACKS_VLD_POS_BUD_YAGO AS BUDG
ON  KROGER.SOLDTO = BUDG.[SOLD_TO_NBR] 
COLLATE SQL_Latin1_General_CP1_CI_AS 
AND UPPER(LTRIM(RTRIM(KROGER.CATG))) = LTRIM(RTRIM(BUDG.CATG)) COLLATE SQL_Latin1_General_CP1_CI_AS 
AND KROGER.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS

UNION ALL

--Walmart Sales for all Quarters for Year and Year Ago

SELECT
WM.SOLDTO AS SOLD_TO_NBR, 
WM.CATG COLLATE DATABASE_DEFAULT AS CATG,
WM.PD_DESC,
YEAR(DT.PD_DT) AS TYP,
ISNULL(WM.TOTL_SALES,0) AS DOL_SALE, 
ISNULL(WM.TOTL_SALES_YA,0) AS DOL_SALE_YA,
ISNULL(BUD,0) AS BUD
FROM	
KNA_SALES.dbo.UVW_SNACKS_VLD_WM_QTR WM
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
LEFT OUTER JOIN  KNA_SALES.dbo.UVW_SNACKS_VLD_POS_BUD_YAGO AS BUDG
ON  WM.SOLDTO = BUDG.[SOLD_TO_NBR] COLLATE SQL_Latin1_General_CP1_CI_AS 
AND UPPER(LTRIM(RTRIM(WM.CATG))) = LTRIM(RTRIM(BUDG.CATG)) COLLATE SQL_Latin1_General_CP1_CI_AS 
AND WM.PD_DESC = BUDG.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS

UNION ALL

SELECT
SOLD_TO_NBR, 
CATG,
PD_DESC,
YEAR(DT.PD_DT)-1 AS TYP,
NULL AS DOL_SALE, 
DOL_SALE_YAGO AS DOL_SALE_YA,
BUD
FROM	
KNA_SALES.dbo.UVW_SNACKS_VLD_POS_BUD_YAGO
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE
 PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))


       ) AS T 

GROUP BY
        [SOLD_TO_NBR]
	  , [CATG]
      ,[PD_DESC]
	  ,TYP


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
/****** Object:  StoredProcedure [dbo].[USP_UVW_SNACKS_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Vikram Ganti
-- Create date: 2017-13-11
-- Description:	Getting Customer Hierarchy based on the business requirements.
-- Modified Date : 2017-13-12
-- Comments : Hierarchy B should have Territory
--				AND CH.LVL7_CUST_NBR IS NOT NULL
-- =============================================
CREATE PROCEDURE [dbo].[USP_UVW_SNACKS_HIER]

AS
BEGIN


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRY

BEGIN TRANSACTION


--- If temp table exists then drop the table
IF OBJECT_ID('tempdb..#CUST_HIER') IS NOT NULL  
  DROP TABLE #CUST_HIER

--- If temp table exists then drop the table
IF OBJECT_ID('tempdb..#CUST_TERRITORY') IS NOT NULL  
  DROP TABLE #CUST_TERRITORY

--- If temp table exists then drop the table
IF OBJECT_ID('tempdb..#CUST_ZONE') IS NOT NULL  
  DROP TABLE #CUST_ZONE

;WITH CTE_UVW_SNACKS_CUST_HIER_UNRVL_B ( 
			  HIER_TYP,
			  LST_LVL_CUST_NBR,
			  LVL5_CUST_NM,
			  LVL5_CUST_NBR,
			  LVL6_CUST_NM,
			  LVL6_CUST_NBR,
			  LVL7_CUST_NM,
			  LVL7_CUST_NBR,
			  LVL8_CUST_NM,
			  LVL8_CUST_NBR,
			  PREV_ACCT_NBR,
			  TDLINX_NBR)
			AS
			(SELECT          CH.HIER_TYP,CH.LST_LVL_CUST_NBR,  CH.LVL5_CUST_NM,  CH.LVL5_CUST_NBR,  CH.LVL6_CUST_NM,  CH.LVL6_CUST_NBR,  CH.LVL7_CUST_NM,  CH.LVL7_CUST_NBR,  CH.LVL8_CUST_NM,  CH.LVL8_CUST_NBR,  K.PREV_ACCT_NBR,K.TDLINX_NBR
			FROM            KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL as CH WITH (NOLOCK) INNER JOIN
									 KG_VIEWS.KNA.UVW_CUST as K WITH (NOLOCK) ON CH.LST_LVL_CUST_NBR = K.CUST_NBR
			WHERE        (K.STORE_IND = '01') AND (K.SALES_ORG = '1001') AND (K.DIST_CHNL = '01') AND (K.DIV = '01') AND (K.SALES_ORDR_BLOK!='01') 
			AND (CH.LVL4_CUST_NM = 'KELLOGG KUSA')
			AND (CH.HIER_TM_PD = 'CURRENT')
			AND CH.HIER_TYP IN ('B'))
	,CTE_UVW_SNACKS_CUST_HIER_UNRVL_D ( 
					  HIER_TYP,
					  LST_LVL_CUST_NBR,
					  LVL5_CUST_NM,
					  LVL5_CUST_NBR,
					  LVL8_CUST_NM,
					  LVL8_CUST_NBR,
					  LVL9_CUST_NM,
					  LVL9_CUST_NBR,
					  PREV_ACCT_NBR,TDLINX_NBR)
					AS
					(SELECT          CH.HIER_TYP,CH.LST_LVL_CUST_NBR,  CH.LVL5_CUST_NM,  CH.LVL5_CUST_NBR,  CH.LVL8_CUST_NM,  CH.LVL8_CUST_NBR,  CH.LVL9_CUST_NM,  CH.LVL9_CUST_NBR,   K.PREV_ACCT_NBR,K.TDLINX_NBR
					FROM            KG_VIEWS.KNA.UVW_CUST_HIER_UNRVL as CH WITH (NOLOCK) INNER JOIN
											 KG_VIEWS.KNA.UVW_CUST as K WITH (NOLOCK) ON CH.LST_LVL_CUST_NBR = K.CUST_NBR
					WHERE        (K.STORE_IND = '01') AND (K.SALES_ORG = '1001') AND (K.DIST_CHNL = '01') AND (K.DIV = '01') AND (K.SALES_ORDR_BLOK!='01')
					AND (CH.HIER_TM_PD = 'CURRENT')			
					AND CH.HIER_TYP IN ('D'))

SELECT
  CH1.LVL5_CUST_NM AS RGN,
  CH1.TDLINX_NBR AS STDLINXSCD,
  NULL AS RCLIENTNO,
  CH1.LST_LVL_CUST_NBR,
  CH1.LVL5_CUST_NBR AS RGN_NBR,
  CH1.LVL6_CUST_NM AS ZN,
  CH1.LVL6_CUST_NBR AS ZN_NBR,
  CH2.LVL5_CUST_NM AS CUST_TEAM,
  CH2.LVL5_CUST_NBR AS CUST_TEAM_NBR,
  CH1.LVL7_CUST_NM AS TERR,
  CH1.LVL7_CUST_NBR AS TERR_NBR,
  CH2.LVL8_CUST_NM AS PLN_TO,
  CH2.LVL8_CUST_NBR AS PLN_TO_NBR,
  CH2.LVL9_CUST_NM AS CHN,
  CH2.LVL9_CUST_NBR AS CHN_NBR,
  CH1.LVL8_CUST_NM AS SOLD_TO,
  CH1.LVL8_CUST_NBR AS SOLD_TO_NBR,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLONG,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLAT,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SNAME,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SNO,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SSTREETADD,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SCITY,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SST,
  KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SZIP,
  CH1.PREV_ACCT_NBR,
 KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLONG * (PI() / 180) as SLONG_RAD,
 KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLAT * (PI() / 180) AS SLAT_RAD,
 COS(KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLAT * (PI() / 180)) * COS(KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLONG * (PI() / 180)) AS SX_COORD,
 COS(KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLAT * (PI() / 180)) * SIN(KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLONG * (PI() / 180)) AS SY_COORD,
 SIN(KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.SLAT * (PI() / 180)) AS SZ_COORD,
 1 AS SWGHT
 INTO #CUST_HIER
FROM            
CTE_UVW_SNACKS_CUST_HIER_UNRVL_B AS CH1 WITH (NOLOCK) INNER JOIN
CTE_UVW_SNACKS_CUST_HIER_UNRVL_D AS CH2 WITH (NOLOCK) ON CH1.LST_LVL_CUST_NBR = CH2.LST_LVL_CUST_NBR  
LEFT OUTER JOIN
KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR WITH (NOLOCK)
ON CONVERT(FLOAT,KG_VIEWS.KNA.UVW_TDLINX_KELLGSTR.STDLINXSCD) = CH1.TDLINX_NBR 




/*
Below is the updated Territory schema with the expanded fields necessary for geographic area latitude and longitude calculations. 
*/
CREATE TABLE #CUST_TERRITORY(
	[TERRITORY] [nvarchar](255) NULL,
	[TERRITORY_NBR] [float] NULL,
/*  Changing the names of the territory latitude and longitude to signify that they are degree based, as we will now also have radian based values
	[TLONG] [float] NULL,
	[TLAT] [float] NULL,
*/
    TLONG_DEG float NULL-- territory longitude in degrees
    ,TLAT_DEG float NULL -- territory latitude in degrees
	,[MAP_POINT] [nvarchar](255) NULL
	, TWGHTD_X_COORD float  NULL -- territory weighted x coordinate, this is sum of all of the store x coordinates
	, TWGHTD_Y_COORD float NULL -- territory weighted y coordinate, this is sum of all of the store y coordinates
	, TWGHTD_Z_COORD float NULL -- territory weighted z coordinate, this is sum of all of the store z coordinates
    , TWGHT int NULL -- weight of the territory, this is sum of all of the store weights
	, TWGHTD_AVG_X_COORD float NULL -- territory weighted average x coordinate, this is sum of all of the store x coordinates
	, TWGHTD_AVG_Y_COORD float NULL -- territory weighted average y coordinate, this is sum of all of the store y coordinates
	, TWGHTD_AVG_Z_COORD float NULL -- territory weighted average z coordinate, this is sum of all of the store z coordinates
    , TLONG_RAD float NULL -- territory longitude in radians
	, THYP_RAD float NULL -- territory hypotenuse in radians
	, TLAT_RAD float NULL -- territory latitude in radians
) ON [PRIMARY]

/*
Below is the updated Zone schema with the expanded fields necessary for geographic area latitude and longitude calculations. 
*/
CREATE TABLE #CUST_ZONE(
	[ZONE] [nvarchar](255) NULL,
	[ZONE_NBR] [float] NULL,
/*  Changing the names of the zone latitude and longitude to signify that they are degree based, as we will now also have radian based values
	[ZLONG] [float] NULL,
	[ZLAT] [float] NULL,
*/
    ZLONG_DEG float NULL -- zone longitude in degrees
    ,ZLAT_DEG float NULL  -- zone latitude in degrees
	,[MAP_POINT] [nvarchar](255) NULL
	, ZWGHTD_X_COORD float NULL  -- zone weighted x coordinate, this is sum of all of the store x coordinates
	, ZWGHTD_Y_COORD float NULL  -- zone weighted y coordinate, this is sum of all of the store y coordinates
	, ZWGHTD_Z_COORD float NULL  -- zone weighted z coordinate, this is sum of all of the store z coordinates
    , ZWGHT int -- weight of the zone, this is sum of all of the store weights
	, ZWGHTD_AVG_X_COORD float NULL  -- zone weighted average x coordinate, this is sum of all of the store x coordinates
	, ZWGHTD_AVG_Y_COORD float NULL  -- zone weighted average y coordinate, this is sum of all of the store y coordinates
	, ZWGHTD_AVG_Z_COORD float NULL  -- zone weighted average z coordinate, this is sum of all of the store z coordinates
    , ZLONG_RAD float NULL  -- zone longitude in radians
	, ZHYP_RAD float NULL  -- zone hypotenuse in radians
	, ZLAT_RAD float NULL  -- zone latitude in radians
) ON [PRIMARY]


--------------------------------------------------------------------------------
INSERT INTO #CUST_TERRITORY ([TERRITORY],[TERRITORY_NBR])  
SELECT DISTINCT TR.TERR AS [TERRITORY],TR.TERR_NBR AS [TERRITORY_NBR] FROM #CUST_HIER AS TR
---------------------------------------------------------------------------------
INSERT INTO #CUST_ZONE ([ZONE],[ZONE_NBR])
SELECT DISTINCT ZN.ZN, ZN.ZN_NBR FROM #CUST_HIER AS ZN


/* This updates the Territory table with values based on the stores assigned to each territory and the individual store's latitude and longitude
- Territory Weighted X Coordinate - the sum total of each store's X coordinate multiplied by the weight of that store
- Territory Weighted Y Coordinate - the sum total of each store's Y coordinate multiplied by the weight of that store
- Territory Weighted Z Coordinate - the sum total of each store's Z coordinate multiplied by the weight of that store

@SUGGESTION:  This update can be improved by adding a where clause that only updates those records on the table that are dirty
*/
UPDATE #CUST_TERRITORY
	SET 
		TWGHTD_X_COORD = CH.T_WGHTD_X_COORD
		, TWGHTD_Y_COORD = CH.T_WGHTD_Y_COORD
		, TWGHTD_Z_COORD = CH.T_WGHTD_Z_COORD
		, TWGHT = CH.T_WGHT
		, TWGHTD_AVG_X_COORD = CH.T_WGHTD_X_COORD / CH.T_WGHT  
		, TWGHTD_AVG_Y_COORD = CH.T_WGHTD_Y_COORD / CH.T_WGHT  
		, TWGHTD_AVG_Z_COORD = CH.T_WGHTD_Z_COORD / CH.T_WGHT
		, TLONG_RAD = ATN2 ((CH.T_WGHTD_Y_COORD / CH.T_WGHT), (CH.T_WGHTD_X_COORD / CH.T_WGHT))
		, THYP_RAD = SQRT(SQUARE(CH.T_WGHTD_X_COORD / CH.T_WGHT) + SQUARE(CH.T_WGHTD_Y_COORD / CH.T_WGHT))
		, TLAT_RAD = ATN2((CH.T_WGHTD_Z_COORD / CH.T_WGHT), (SQRT(SQUARE(CH.T_WGHTD_X_COORD / CH.T_WGHT) + SQUARE(CH.T_WGHTD_Y_COORD / CH.T_WGHT))))
		, TLONG_DEG = ATN2 ((CH.T_WGHTD_Y_COORD / CH.T_WGHT), (CH.T_WGHTD_X_COORD / CH.T_WGHT)) * (180 / PI())
		, TLAT_DEG = ATN2((CH.T_WGHTD_Z_COORD / CH.T_WGHT), (SQRT(SQUARE(CH.T_WGHTD_X_COORD / CH.T_WGHT) + SQUARE(CH.T_WGHTD_Y_COORD / CH.T_WGHT)))) * (180 / PI())
	 FROM #CUST_TERRITORY AS CUST_TERRITORY
	INNER JOIN (SELECT SNACKS_TDLINX_CUST_HIER.TERR_NBR, (SUM(SNACKS_TDLINX_CUST_HIER.SX_COORD) * MAX(SNACKS_TDLINX_CUST_HIER.SWGHT)) T_WGHTD_X_COORD, (SUM(SNACKS_TDLINX_CUST_HIER.SY_COORD) * MAX(SNACKS_TDLINX_CUST_HIER.SWGHT)) T_WGHTD_Y_COORD, (SUM(SNACKS_TDLINX_CUST_HIER.SZ_COORD) * MAX(SNACKS_TDLINX_CUST_HIER.SWGHT)) T_WGHTD_Z_COORD, SUM(SNACKS_TDLINX_CUST_HIER.SWGHT) T_WGHT
					FROM #CUST_HIER AS SNACKS_TDLINX_CUST_HIER
					GROUP BY SNACKS_TDLINX_CUST_HIER.TERR_NBR
				) AS CH ON CUST_TERRITORY.TERRITORY_NBR = CH.TERR_NBR


/* This updates the below fields for each record on the territory
- Territory Weighted Average X Coordinate - this is the Weighted X Coordinate of the territory divided by the total weight for the stores in this territory
- Territory Weighted Average Y Coordinate - this is the Weighted Y Coordinate of the territory divided by the total weight for the stores in this territory
- Territory Weighted Average Z Coordinate - this is the Weighted Z Coordinate of the territory divided by the total weight for the stores in this territory
- Territory Longitude in Radians - the arc tangent of the Territory Weighted Average X Coordinate and the Territory Weighted Average Y Coordinate
- Territory Hypotenuse in Radians - the square root of the square of Territory Weighted Average X Coordinate plus the square of Territory Weighted Average Y Coordinate
- Territory Latitude in Radians - the arc tangent of the Territory Hypotenuse in Radians and the Territory Weighted Average Y Coordinate

@SUGGESTION:  This update can be improved by adding a where clause that only updates those records on the table that are dirty
*/   
/* This updates the Zone table with values based on the stores assigned to each zone and the individual store's latitude and longitude
- Zone Weighted X Coordinate - the sum total of each store's X coordinate multiplied by the weight of that store
- Zone Weighted Y Coordinate - the sum total of each store's Y coordinate multiplied by the weight of that store
- Zone Weighted Z Coordinate - the sum total of each store's Z coordinate multiplied by the weight of that store

@SUGGESTION:  This update can be improved by adding a where clause that only updates those records on the table that are dirty
*/
UPDATE #CUST_ZONE
	SET 
		ZWGHTD_X_COORD = CH.Z_WGHTD_X_COORD
		,ZWGHTD_Y_COORD = CH.Z_WGHTD_Y_COORD
		, ZWGHTD_Z_COORD = CH.Z_WGHTD_Z_COORD
		, ZWGHT = CH.Z_WGHT
		,ZWGHTD_AVG_X_COORD = CH.Z_WGHTD_X_COORD /  CH.Z_WGHT  
		, ZWGHTD_AVG_Y_COORD = CH.Z_WGHTD_Y_COORD / CH.Z_WGHT  
		, ZWGHTD_AVG_Z_COORD = CH.Z_WGHTD_Z_COORD / CH.Z_WGHT
		, ZLONG_RAD = ATN2 ((CH.Z_WGHTD_Y_COORD / CH.Z_WGHT), (CH.Z_WGHTD_X_COORD /  CH.Z_WGHT))
		, ZHYP_RAD = SQRT(SQUARE(CH.Z_WGHTD_X_COORD /  CH.Z_WGHT) + SQUARE(CH.Z_WGHTD_Y_COORD / CH.Z_WGHT))
		, ZLAT_RAD = ATN2((CH.Z_WGHTD_Z_COORD / CH.Z_WGHT), (SQRT(SQUARE(CH.Z_WGHTD_X_COORD /  CH.Z_WGHT) + SQUARE(CH.Z_WGHTD_Y_COORD / CH.Z_WGHT))))
		, ZLONG_DEG = ATN2 ((CH.Z_WGHTD_Y_COORD / CH.Z_WGHT), (CH.Z_WGHTD_X_COORD /  CH.Z_WGHT)) * (180 / PI())
		, ZLAT_DEG = ATN2((CH.Z_WGHTD_Z_COORD / CH.Z_WGHT), (SQRT(SQUARE(CH.Z_WGHTD_X_COORD /  CH.Z_WGHT) + SQUARE(CH.Z_WGHTD_Y_COORD / CH.Z_WGHT)))) * (180 / PI())
	FROM #CUST_ZONE AS CUST_ZONE
	INNER JOIN (SELECT SNACKS_TDLINX_CUST_HIER.ZN_NBR,(SUM(SNACKS_TDLINX_CUST_HIER.SX_COORD) * MAX(SNACKS_TDLINX_CUST_HIER.SWGHT)) Z_WGHTD_X_COORD, (SUM(SNACKS_TDLINX_CUST_HIER.SY_COORD) * MAX(SNACKS_TDLINX_CUST_HIER.SWGHT)) Z_WGHTD_Y_COORD, (SUM(SNACKS_TDLINX_CUST_HIER.SZ_COORD) * MAX(SNACKS_TDLINX_CUST_HIER.SWGHT)) Z_WGHTD_Z_COORD, SUM(SNACKS_TDLINX_CUST_HIER.SWGHT) Z_WGHT
					FROM #CUST_HIER AS SNACKS_TDLINX_CUST_HIER
					GROUP BY SNACKS_TDLINX_CUST_HIER.ZN_NBR
				) AS CH ON CUST_ZONE.ZONE_NBR = CH.ZN_NBR

/* This updates the below fields for each record on the zone
- Zone Weighted Average X Coordinate - this is the Weighted X Coordinate of the zone divided by the total weight for the stores in this zone
- Zone Weighted Average Y Coordinate - this is the Weighted Y Coordinate of the zone divided by the total weight for the stores in this zone
- Zone Weighted Average Z Coordinate - this is the Weighted Z Coordinate of the zone divided by the total weight for the stores in this zone
- Zone Longitude in Radians - the arc tangent of the Zone Weighted Average X Coordinate and the Zone Weighted Average Y Coordinate
- Zone Hypotenuse in Radians - the square root of the square of Zone Weighted Average X Coordinate plus the square of Zone Weighted Average Y Coordinate
- Zone Latitude in Radians - the arc tangent of the Zone Hypotenuse in Radians and the Zone Weighted Average Y Coordinate

@SUGGESTION:  This update can be improved by adding a where clause that only updates those records on the table that are dirty
*/   


--SELECT * FROM #CUST_HIER where SOLD_TO_NBR is null
--SELECT * FROM #CUST_TERRITORY
--SELECT * FROM #CUST_ZONE

DELETE FROM [dbo].[SNACKS_TDLINX_CUST_HIER]
INSERT INTO [dbo].[SNACKS_TDLINX_CUST_HIER]
SELECT        RGN, 
--CASE WHEN ISNUMERIC(REPLACE(PREV_ACCT_NBR, 'Z', ''))=1 THEN CONVERT(FLOAT,REPLACE(PREV_ACCT_NBR, 'Z', '')) ELSE STDLINXSCD END AS STDLINXSCD,
CONVERT(FLOAT,STDLINXSCD) AS STDLINXSCD, 
RCLIENTNO, LST_LVL_CUST_NBR, RGN_NBR, ZN, ZN_NBR, CUST_TEAM, CUST_TEAM_NBR, TERR, TERR_NBR, PLN_TO, PLN_TO_NBR, CHN, CHN_NBR, SOLD_TO, SOLD_TO_NBR, SLONG, SLAT, 
                         SNAME, SNO, SSTREETADD, SCITY, SST, SZIP, Z.ZLONG_DEG AS ZLONG, Z.ZLAT_DEG AS ZLAT, T.TLONG_DEG AS TLONG, T.TLAT_DEG AS TLAT, PREV_ACCT_NBR
FROM            [#CUST_HIER] AS C LEFT OUTER JOIN
                         [#CUST_TERRITORY] AS T ON C.TERR_NBR = T.TERRITORY_NBR LEFT OUTER JOIN
                         [#CUST_ZONE] AS Z ON C.ZN_NBR = Z.ZONE_NBR
WHERE TERR_NBR IS NOT NULL
ORDER BY LST_LVL_CUST_NBR

END TRY


BEGIN CATCH

ROLLBACK

RAISERROR (15600,-1,-1, 'Executing this SP USP_UVW_SNACKS_HIER failed')

END CATCH

COMMIT TRANSACTION;

----PROD Hierarchy

--BEGIN 

BEGIN TRY

BEGIN TRANSACTION



DELETE FROM [dbo].[SNACKS_UPC_PKG_PROD_HIER]
INSERT INTO [dbo].[SNACKS_UPC_PKG_PROD_HIER]
SELECT A.UPC,
       A.MATRL_NBR,
	   B.MATRL_DESC,
	   C.PROD_HIER_CATEGORY,
	   C.PROD_HIER_CATEGORY_DESC,
	   C.PROD_HIER_SUB_CATEGORY,
	   C.PROD_HIER_SUB_CATEGORY_DESC,
	   C.PROD_HIER_BRAND,
	   C.PROD_HIER_BRAND_DESC
FROM
--  GTIN-12 (UPC-A): this is a 12-digit number used primarily in North America
--  Trimming last digit to get the UPC code.
(SELECT CAST(SUBSTRING(GTIN, 1, LEN(GTIN)-1) AS DECIMAL(18,0)) AS UPC,
       MAX(KG_VIEWS.KNA.UVW_MATRL_GTIN.MATRL_NBR) AS MATRL_NBR
FROM KG_VIEWS.KNA.UVW_MATRL_GTIN WITH (NOLOCK)
WHERE GTIN_TYP = 'UPC' -- AND UOM='PKG'
GROUP BY CAST(SUBSTRING(GTIN, 1, LEN(GTIN)-1) AS DECIMAL(18,0))
) A
-- Joining UVW_MATRL_GTIN and UVW_MATRL specific to UPC PKG.
INNER JOIN KG_VIEWS.KNA.UVW_MATRL B WITH (NOLOCK)
ON B.MATRL_NBR = A.MATRL_NBR
INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER C WITH (NOLOCK)
ON C.PROD_HIER = B.PROD_HIER
WHERE UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%KASHI%' AND UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%BEAR NAKED%' AND UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%STRETCH%'



END TRY
BEGIN CATCH

ROLLBACK

RAISERROR (15600,-1,-1, 'Executing this SP USP_UVW_SNACKS_HIER failed')

END CATCH

COMMIT TRANSACTION;


--END



END



GO
/****** Object:  StoredProcedure [dbo].[USP_WHINV_ARCHIVE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================================================================================
-- Author 		:	USCMXJ11
-- Date   		:	02/22/2018
-- Description 	:	This Stored procedure inserts data into KNA_SALES.[dbo].[WHINV_WM]
-- ======================================================================================================================




CREATE PROCEDURE [dbo].[USP_WHINV_ARCHIVE] AS 
BEGIN
SET NOCOUNT ON;

--DROP INDEX

if exists( select 'X' from sys.objects where object_id in 
(select object_id from sys.indexes where name = 'IDX_WHINV_WM') and name = 'WHINV_WM') 
DROP INDEX [IDX_WHINV_WM] ON [dbo].[WHINV_WM]

--DELETE DATA THAT EXISTS IN STAGING TABLE AS DELTA LOGIC

DELETE FROM KNA_SALES.dbo.WHINV_WM 
WHERE EXISTS ( SELECT Day COLLATE database_default,SUBPART_SUFFIX_TXT COLLATE database_default FROM KG_EXTERNAL.STG.HIST_WM_WHINV 
WHERE KG_EXTERNAL.STG.HIST_WM_WHINV.Day COLLATE database_default = WHINV_WM.Day COLLATE database_default AND
 KG_EXTERNAL.STG.HIST_WM_WHINV.SUBPART_SUFFIX_TXT COLLATE database_default =WHINV_WM.SUBPART_SUFFIX_TXT COLLATE database_default )

 --INSERT DATA INTO TARGET TABLE

INSERT INTO KNA_SALES.dbo.WHINV_WM SELECT * FROM KG_EXTERNAL.STG.HIST_WM_WHINV

--CREATE INDEX

if not exists( select 'X' from sys.objects where object_id in 
( select object_id from sys.indexes where name = 'IDX_WHINV_WM') and name = 'WHINV_WM') 
CREATE NONCLUSTERED  INDEX IDX_WHINV_WM ON dbo.WHINV_WM (Day)

END





GO
/****** Object:  StoredProcedure [dbo].[USP_WM_INV_POS_ARCHIEVE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_WM_INV_POS_ARCHIEVE](@ARCHIEVE as varchar(30)) 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @index TABLE (index_nm varchar(23))

		IF (@ARCHIEVE='WMINV')
	BEGIN 
	
	print(@ARCHIEVE)
		
		--DELETE DATA THAT EXISTS IN STAGING TABLE AS DELTA LOGIC
	
		DELETE FROM KNA_SALES.dbo.INV_WM 
		WHERE EXISTS ( SELECT DAY ,SUBPART_SUFFIX_TXT  FROM KNA_SALES.STG.INV_WM_HIST 
		WHERE KNA_SALES.STG.INV_WM_HIST.DAY  = INV_WM.DAY  AND
		KNA_SALES.STG.INV_WM_HIST.SUBPART_SUFFIX_TXT  =INV_WM.SUBPART_SUFFIX_TXT  )
	
		--INSERT DATA INTO TARGET TABLE

		INSERT INTO KNA_SALES.dbo.INV_WM SELECT * FROM KNA_SALES.STG.INV_WM_HIST
	
		--CREATE INDEX

		if not exists ( select object_id from sys.indexes where name = 'IDX_INV_WM')
		CREATE NONCLUSTERED  COLUMNSTORE INDEX IDX_INV_WM ON dbo.INV_WM (Day)
	
	END


		IF (@ARCHIEVE='WMPOS')
	BEGIN 
		
		
		--DELETE DATA THAT EXISTS IN STAGING TABLE AS DELTA LOGIC

		DELETE FROM KNA_SALES.dbo.POS_WM 
		WHERE EXISTS ( SELECT DAY ,SUBPARTSUFFIXTXT  FROM KNA_SALES.STG.POS_WM_HIST 
		WHERE KNA_SALES.STG.POS_WM_HIST.DAY  = POS_WM.DAY  AND
		KNA_SALES.STG.POS_WM_HIST.SUBPARTSUFFIXTXT  =POS_WM.SUBPARTSUFFIXTXT  )

		--INSERT DATA INTO TARGET TABLE

		INSERT INTO KNA_SALES.dbo.POS_WM SELECT * FROM KNA_SALES.STG.POS_WM_HIST

		--CREATE INDEX

			if not exists ( select object_id from sys.indexes where name = 'IDX_POS_WM')
		CREATE NONCLUSTERED  COLUMNSTORE INDEX IDX_POS_WM ON dbo.POS_WM (Day)
	
	END

END



GO
/****** Object:  UserDefinedFunction [dbo].[fn_REX_NSD_SCORECARD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 10/15/2018
-- Modified By		:
-- Modified Date	:
-- Description		: Getting the NSD Dashboard Weightage metrics based for the KSR,KSM,RSD
--Comments
-- =============================================
CREATE FUNCTION [dbo].[fn_REX_NSD_SCORECARD]
(
	
	@Category varchar(40), @measure varchar(10)
)
RETURNS decimal(10,3)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @VALUE decimal(10,3)

SET @VALUE = CASE 
		 WHEN @measure = 'KSR' THEN (SELECT KSR FROM [KNA_EXTERNAL].[USER_SALES].[REX_NSD_SCORCARD_METRICS] WHERE [Category] = @Category )
		 		 WHEN @measure = 'KSM' THEN (SELECT KSM FROM [KNA_EXTERNAL].[USER_SALES].[REX_NSD_SCORCARD_METRICS] WHERE [Category] = @Category )
				 		 WHEN @measure = 'RSD' THEN (SELECT RSD FROM [KNA_EXTERNAL].[USER_SALES].[REX_NSD_SCORCARD_METRICS] WHERE [Category] = @Category )
		 END

	-- Return the result of the function
	RETURN @VALUE

END

GO
/****** Object:  UserDefinedFunction [dbo].[fn_REX_PACE_PCT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 10/15/2018
-- Modified By		:	
-- Modified date	:	
-- Description		: To get the Pace Percentage for the Present Quarter based on the Date
-- Comments		:
-- =============================================


CREATE FUNCTION [dbo].[fn_REX_PACE_PCT]
(@SECONDWEEK date)
RETURNS decimal(4, 3)
AS
BEGIN
DECLARE @QTR DECIMAL(1,0)
DECLARE @TOTALQTRWEEKS DECIMAL(2,0)
DECLARE @QTWEEK DECIMAL(2,0)
DECLARE @VALUE DECIMAL(4,3)


SET @QTR = (SELECT [FISC_QTR] FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE FISC_WK_END_DT=@SECONDWEEK)

--PRINT @QTR

SET @TOTALQTRWEEKS = (SELECT COUNT(*) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE [FISC_QTR]=@QTR AND FISC_YR=YEAR(@SECONDWEEK))

--PRINT @TOTALQTRWEEKS

SET @QTWEEK = (SELECT COUNT(*) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE FISC_YR=YEAR(@SECONDWEEK) AND [FISC_QTR]=@QTR AND FISC_WK_END_DT<=@SECONDWEEK)

--PRINT @QTWEEK

SET @VALUE =  (@QTWEEK / @TOTALQTRWEEKS) 


	-- Return the result of the function
	RETURN @VALUE
END


GO
/****** Object:  UserDefinedFunction [dbo].[UDF_REX_PACE_PCT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	03/08/2018
-- Modified By		:	
-- Modified date	:	
-- Description		:	 To get the Pace Percentage for the Present Quarter based on the Date
-- Comments			:
-- =============================================


CREATE FUNCTION [dbo].[UDF_REX_PACE_PCT]
(@SECONDWEEK date)
RETURNS decimal(4, 3)
AS
BEGIN
DECLARE @QTR DECIMAL(1,0)
DECLARE @TOTALQTRWEEKS DECIMAL(2,0)
DECLARE @QTWEEK DECIMAL(2,0)
DECLARE @VALUE DECIMAL(4,3)


SET @QTR = (SELECT [FISC_QTR] FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE FISC_WK_END_DT=@SECONDWEEK)

--PRINT @QTR

SET @TOTALQTRWEEKS = (SELECT COUNT(*) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE [FISC_QTR]=@QTR AND FISC_YR=YEAR(@SECONDWEEK))

--PRINT @TOTALQTRWEEKS

SET @QTWEEK = (SELECT COUNT(*) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE FISC_YR=YEAR(@SECONDWEEK) AND [FISC_QTR]=@QTR AND FISC_WK_END_DT<=@SECONDWEEK)

--PRINT @QTWEEK

SET @VALUE =  (@QTWEEK / @TOTALQTRWEEKS) 


	-- Return the result of the function
	RETURN @VALUE
END


GO
/****** Object:  UserDefinedFunction [dbo].[UDF_SNACKS_NSD_SCORECARD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vikram Ganti
-- Create date: 
-- Description:	<Description, ,>

--select dbo.fn_SIF_NSD_SCORECARD('POS % to Budget','KSR')
-- =============================================
CREATE FUNCTION [dbo].[UDF_SNACKS_NSD_SCORECARD]
(
	-- Add the parameters for the function here
	--<@Param1, sysname, @p1> <Data_Type_For_Param1, , int>
	@Category varchar(20), @measure varchar(10)
)
RETURNS decimal(10,3)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @VALUE decimal(10,3)

SET @VALUE = CASE 
		 WHEN @measure = 'KSR' THEN (SELECT KSR FROM [KNA_EXTERNAL].[USER_SALES].[SNACKS_NSD_SCORCARD_METRICS] WHERE [Category] = @Category )
		 		 WHEN @measure = 'KSM' THEN (SELECT KSM FROM [KNA_EXTERNAL].[USER_SALES].[SNACKS_NSD_SCORCARD_METRICS] WHERE [Category] = @Category )
				 		 WHEN @measure = 'RSD' THEN (SELECT RSD FROM [KNA_EXTERNAL].[USER_SALES].[SNACKS_NSD_SCORCARD_METRICS] WHERE [Category] = @Category )
		 END

	-- Return the result of the function
	RETURN @VALUE

END

GO
/****** Object:  UserDefinedFunction [dbo].[UDF_SNACKS_PACE_PCT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[UDF_SNACKS_PACE_PCT]
(@SECONDWEEK date)
RETURNS decimal(3, 2)
WITH EXEC AS CALLER
AS
BEGIN
DECLARE @QTR DECIMAL(1,0)
DECLARE @TOTALQTRWEEKS DECIMAL(2,0)
DECLARE @QTWEEK DECIMAL(2,0)
DECLARE @VALUE DECIMAL(3,2)


SET @QTR = (SELECT [FISC_QTR] FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE FISC_WK_END_DT=@SECONDWEEK)

--PRINT @QTR

SET @TOTALQTRWEEKS = (SELECT COUNT(*) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE [FISC_QTR]=@QTR AND FISC_YR=YEAR(@SECONDWEEK))

--PRINT @TOTALQTRWEEKS

SET @QTWEEK = (SELECT COUNT(*) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] WHERE FISC_YR=YEAR(@SECONDWEEK) AND [FISC_QTR]=@QTR AND FISC_WK_END_DT<=@SECONDWEEK)

--PRINT @QTWEEK

SET @VALUE =  (@QTWEEK / @TOTALQTRWEEKS) 


	-- Return the result of the function
	RETURN @VALUE
END

GO
/****** Object:  Table [dbo].[BKPF]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BKPF](
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BLART] [varchar](2) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[MONAT] [decimal](2, 0) NULL,
	[CPUDT] [date] NULL,
	[CPUTM] [time](7) NULL,
	[AEDAT] [date] NULL,
	[UPDDT] [date] NULL,
	[WWERT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[TCODE] [varchar](20) NULL,
	[BVORG] [varchar](16) NULL,
	[XBLNR] [varchar](16) NULL,
	[DBBLG] [varchar](10) NULL,
	[STBLG] [varchar](10) NULL,
	[STJAH] [decimal](4, 0) NULL,
	[BKTXT] [varchar](25) NULL,
	[WAERS] [varchar](5) NULL,
	[KURSF] [decimal](9, 5) NULL,
	[KZWRS] [varchar](5) NULL,
	[KZKRS] [decimal](9, 5) NULL,
	[BSTAT] [varchar](1) NULL,
	[XNETB] [varchar](1) NULL,
	[FRATH] [decimal](13, 2) NULL,
	[XRUEB] [varchar](1) NULL,
	[GLVOR] [varchar](4) NULL,
	[GRPID] [varchar](12) NULL,
	[DOKID] [varchar](40) NULL,
	[ARCID] [varchar](10) NULL,
	[IBLAR] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWKEY] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[HWAE3] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[KURS3] [decimal](9, 5) NULL,
	[BASW2] [varchar](1) NULL,
	[BASW3] [varchar](1) NULL,
	[UMRD2] [varchar](1) NULL,
	[UMRD3] [varchar](1) NULL,
	[XSTOV] [varchar](1) NULL,
	[STODT] [date] NULL,
	[XMWST] [varchar](1) NULL,
	[CURT2] [varchar](2) NULL,
	[CURT3] [varchar](2) NULL,
	[KUTY2] [varchar](4) NULL,
	[KUTY3] [varchar](4) NULL,
	[XSNET] [varchar](1) NULL,
	[AUSBK] [varchar](4) NULL,
	[XUSVR] [varchar](1) NULL,
	[DUEFL] [varchar](1) NULL,
	[AWSYS] [varchar](10) NULL,
	[TXKRS] [decimal](9, 5) NULL,
	[LOTKZ] [varchar](10) NULL,
	[XWVOF] [varchar](1) NULL,
	[STGRD] [varchar](2) NULL,
	[PPNAM] [varchar](12) NULL,
	[BRNCH] [varchar](4) NULL,
	[NUMPG] [decimal](3, 0) NULL,
	[ADISC] [varchar](1) NULL,
	[XREF1_HD] [varchar](20) NULL,
	[XREF2_HD] [varchar](20) NULL,
	[XREVERSAL] [varchar](1) NULL,
	[REINDAT] [date] NULL,
	[RLDNR] [varchar](2) NULL,
	[LDGRP] [varchar](4) NULL,
	[PROPMANO] [varchar](13) NULL,
	[XBLNR_ALT] [varchar](26) NULL,
	[VATDATE] [date] NULL,
	[PSOTY] [varchar](2) NULL,
	[PSOAK] [varchar](10) NULL,
	[PSOKS] [varchar](10) NULL,
	[PSOSG] [varchar](1) NULL,
	[PSOFN] [varchar](30) NULL,
	[INTFORM] [varchar](4) NULL,
	[INTDATE] [date] NULL,
	[PSOBT] [date] NULL,
	[PSOZL] [varchar](1) NULL,
	[PSODT] [date] NULL,
	[PSOTM] [time](7) NULL,
	[FM_UMART] [varchar](1) NULL,
	[CCINS] [varchar](4) NULL,
	[CCNUM] [varchar](25) NULL,
	[SSBLK] [varchar](1) NULL,
	[BATCH] [varchar](10) NULL,
	[SNAME] [varchar](12) NULL,
	[SAMPLED] [varchar](1) NULL,
	[EXCLUDE_FLAG] [varchar](1) NULL,
	[BLIND] [varchar](1) NULL,
	[OFFSET_STATUS] [varchar](2) NULL,
	[OFFSET_REFER_DAT] [date] NULL,
	[PENRC] [varchar](2) NULL,
	[KNUMV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[BUKRS] ASC,
	[BELNR] ASC,
	[GJAHR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BUDGET_TEMP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUDGET_TEMP](
	[CHANNEL] [varchar](255) NULL,
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[MKT_SEGMENT] [varchar](50) NULL,
	[CATEGORY] [varchar](255) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[YEAR] [int] NOT NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[QUARTER] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[NO_OF_WEEKS] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BUDGETSE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUDGETSE](
	[CHANNEL] [varchar](255) NULL,
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[MKT_SEGMENT] [varchar](50) NULL,
	[CATEGORY] [varchar](255) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[YEAR] [int] NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[QUARTER] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[NO_OF_WEEKS] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[Dt_Key] [numeric](38, 0) NULL,
	[Dt_US] [datetime] NULL,
	[Dt_UK] [datetime] NULL,
	[DoP] [int] NULL,
	[DoQ] [int] NULL,
	[DoY] [int] NULL,
	[Fscl_Wk] [int] NULL,
	[Fscl_Prd] [int] NULL,
	[Fscl_Qtr] [int] NULL,
	[Fscl_Hy] [int] NULL,
	[Fscl_Yr] [int] NULL,
	[SoFW] [datetime] NULL,
	[EoFW] [datetime] NULL,
	[SoFP] [datetime] NULL,
	[EoFP] [datetime] NULL,
	[SoFQ] [datetime] NULL,
	[EoFQ] [datetime] NULL,
	[SoFHy] [datetime] NULL,
	[EoFHy] [datetime] NULL,
	[SoFY] [datetime] NULL,
	[EoFY] [datetime] NULL,
	[Cal_Dy_Txt_Shrt] [nvarchar](20) NULL,
	[Cal_Dy_Txt] [nvarchar](20) NULL,
	[Cal_Mth_Txt_Shrt] [nvarchar](20) NULL,
	[Cal_Mth_Txt] [nvarchar](20) NULL,
	[Cl_Day] [int] NULL,
	[Cl_Wk] [int] NULL,
	[Cl_Mth] [int] NULL,
	[Cl_Qtr] [int] NULL,
	[Cl_HY] [int] NULL,
	[Cal_Yr] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CATEGORY_FACT_2]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY_FACT_2](
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
/****** Object:  Table [dbo].[Dp_2P_Lg_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Dp_2P_Lg_Icr](
	[Fisc_Yr] [int] NOT NULL,
	[Pd] [int] NOT NULL,
	[Cust_Chnnl] [varchar](10) NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Mtrl] [float] NOT NULL,
	[Mtrl_Desc] [varchar](100) NULL,
	[Ctg] [varchar](20) NULL,
	[Brnd] [varchar](20) NULL,
	[2P_Lg] [float] NULL,
 CONSTRAINT [PK_Dp_2P_Lg_Icr] PRIMARY KEY CLUSTERED 
(
	[Fisc_Yr] ASC,
	[Pd] ASC,
	[Chnnl] ASC,
	[Mtrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dp_Dly_Snpsht_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Dp_Dly_Snpsht_Icr](
	[Fisc_Yr] [int] NOT NULL,
	[Pd] [int] NOT NULL,
	[Cust_Chnnl_Int] [int] NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Mtrl] [float] NOT NULL,
	[Mtrl_Desc] [varchar](100) NULL,
	[Catg] [varchar](20) NULL,
	[Brnd] [varchar](48) NULL,
	[Vrsn] [varchar](20) NULL,
	[Dp_Frcst_Cs] [float] NULL,
 CONSTRAINT [PK_Dp_Dly_Snpsht_Icr] PRIMARY KEY CLUSTERED 
(
	[Fisc_Yr] ASC,
	[Pd] ASC,
	[Chnnl] ASC,
	[Mtrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DS_JOB]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DS_JOB](
	[JOB_ID] [int] IDENTITY(1,1) NOT NULL,
	[JOB_NAME] [varchar](50) NULL,
	[JOB_DESC] [varchar](50) NULL,
	[ACTUAL_JOB_NAME] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DS_JOB_RUN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DS_JOB_RUN](
	[BATCH_ID] [bigint] NULL,
	[JOB_ID] [int] NULL,
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[STATUS_TYPE] [varchar](50) NULL,
	[ERROR_TYPE] [varchar](50) NULL,
	[ELAPSED_SECOND] [varchar](50) NULL,
	[JOB_RUN_MESSAGE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ECC_Customer]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ECC_Customer](
	[Cl_Num] [smallint] NULL,
	[H] [char](1) NULL,
	[CustomeR_Num] [float] NULL,
	[SOrg#] [smallint] NULL,
	[DChl] [smallint] NULL,
	[Dv] [smallint] NULL,
	[Territory] [float] NULL,
	[District] [float] NULL,
	[Zone] [float] NULL,
	[Channel] [float] NULL,
	[Street] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Rg] [nvarchar](3) NULL,
	[Zip] [char](10) NULL,
	[Country] [char](2) NULL,
	[A5] [smallint] NULL,
	[CGrp] [smallint] NULL,
	[Customer_Name] [nvarchar](50) NULL,
	[Territory_Name] [nvarchar](50) NULL,
	[District_Name] [nvarchar](50) NULL,
	[Zone_Name] [nvarchar](50) NULL,
	[Channel_Name] [nvarchar](50) NULL,
	[Search_Term2] [nvarchar](50) NULL,
	[Chain] [nvarchar](50) NULL,
	[Chain_Name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ECC_Material]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ECC_Material](
	[Cl_Num] [smallint] NULL,
	[Material] [float] NULL,
	[Prd_Catg] [nvarchar](50) NULL,
	[Mtl_Desc] [nvarchar](50) NULL,
	[Desc] [nvarchar](50) NULL,
	[Char_Val] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOOD_SERV_DMND_FCST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FOOD_SERV_DMND_FCST](
	[SNPSHT_PD] [varchar](10) NULL,
	[SHIP_LOC] [varchar](255) NULL,
	[MATRL] [char](18) NULL,
	[WK_SEQ] [int] NULL,
	[SNPSHT_WK] [date] NULL,
	[SNPSHT_QTY] [decimal](10, 3) NULL,
	[SNPSHT_AMT] [decimal](18, 2) NULL,
	[FISC_PD] [int] NULL,
	[FISC_YR] [int] NULL,
	[PLN_TO_CUST] [varchar](10) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INDIR_TRADE_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INDIR_TRADE_CALC](
	[DISTBN_CHN_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[IN_MKT_CATG] [varchar](255) NULL,
	[IN_MKT_SUB_CATG] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[CASE_CODE] [decimal](28, 0) NULL,
	[MATRL_NBR_LPAD] [varchar](18) NULL,
	[MATRL_STATUS] [varchar](2) NULL,
	[PD] [decimal](28, 0) NULL,
	[FISC_YR] [decimal](5, 0) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[OUTBND_DOL] [decimal](28, 6) NULL,
	[CHN_NBR] [decimal](28, 0) NULL,
	[CHN_NM] [varchar](255) NULL,
	[AGRMT_NBR] [decimal](28, 0) NULL,
	[TOTL_GSV] [decimal](28, 6) NULL,
	[TOTL_TRADE_FUND] [decimal](28, 5) NULL,
	[ALL_INCLSV_GSV] [decimal](28, 6) NULL,
	[ALL_INCLSV_TRADE_FUND] [decimal](28, 6) NULL,
	[PROD_SPECFC_TRADE_PCT] [decimal](28, 5) NULL,
	[PROD_SPECFC_TRADE_AMT] [decimal](28, 6) NULL,
	[ALL_INCLSV_TRADE_PCT] [decimal](28, 6) NULL,
	[ALL_INCLSV_TRADE_AMT] [decimal](28, 6) NULL,
	[TOTL_INDIR_TRADE] [decimal](28, 6) NULL,
	[MATRL_NBR_ORIG] [varchar](18) NULL,
	[FISC_WK_STRT_DT] [date] NULL,
	[PRC] [decimal](11, 2) NULL,
	[STRT_DT_FUT] [date] NULL,
	[STRT_DT_PAST] [date] NULL,
	[GROS_WGT_LB] [decimal](13, 3) NULL,
	[NET_WGT_LB] [decimal](13, 3) NULL,
	[UNIT] [varchar](3) NULL,
	[GROS_WGT_KG] [decimal](13, 3) NULL,
	[NET_WGT_KG_CALC] [decimal](20, 5) NULL,
	[NET_WGT_KG] [decimal](13, 3) NULL,
	[VOL_KG] [decimal](13, 3) NULL,
	[CSE] [decimal](10, 5) NULL,
	[TOTL_LBS] [decimal](20, 5) NULL,
	[TOTL_KGS] [decimal](20, 5) NULL,
	[MATRL_EXPNS_CSE] [decimal](20, 6) NULL,
	[FIXD_OH_CSE] [decimal](20, 6) NULL,
	[VARNC_OH] [decimal](20, 6) NULL,
	[VARNC_OH_CSE] [decimal](20, 6) NULL,
	[TOTL_MATRL_EXPNS] [decimal](20, 6) NULL,
	[TOTL_VARNC_EXPNS] [decimal](20, 6) NULL,
	[TOTL_FIXD_EXPNS] [decimal](20, 6) NULL,
	[TOTL_COPS] [decimal](20, 6) NULL,
	[DW_CRE_DT] [datetime2](7) NULL,
	[SOLDTO_NBR] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INDIR_TRADE_CALC_DATA]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INDIR_TRADE_CALC_DATA](
	[DISTBN_CHN_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[IN_MKT_CATG] [varchar](255) NULL,
	[IN_MKT_SUB_CATG] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[CASE_CODE] [decimal](28, 0) NULL,
	[PD] [decimal](28, 0) NULL,
	[FISC_YR] [decimal](5, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[OUTBND_DOL] [decimal](28, 6) NULL,
	[CHN_NBR] [decimal](28, 0) NULL,
	[CHN_NM] [varchar](255) NULL,
	[AGRMT_NBR] [decimal](28, 0) NULL,
	[TOTL_GSV] [decimal](28, 6) NULL,
	[TOTL_TRADE_FUND] [decimal](28, 5) NULL,
	[ALL_INCLSV_GSV] [decimal](28, 6) NULL,
	[ALL_INCLSV_TRADE_FUND] [decimal](28, 6) NULL,
	[PROD_SPECFC_TRADE_PCT] [decimal](28, 5) NULL,
	[PROD_SPECFC_TRADE_AMT] [decimal](28, 6) NULL,
	[ALL_INCLSV_TRADE_PCT] [decimal](28, 6) NULL,
	[ALL_INCLSV_TRADE_AMT] [decimal](28, 6) NULL,
	[TOTL_INDIR_TRADE] [decimal](28, 6) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[SOLDTO_NBR] [decimal](15, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFOMETRICS_ACTL_SALES]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[INFOMETRICS_ACTL_SALES](
	[DIST_WHSE_NM] [varchar](100) NULL,
	[RETL_CHN_NM] [varchar](100) NULL,
	[CATG_CODE] [varchar](100) NULL,
	[SUB_CATG_CODE] [varchar](100) NULL,
	[SUB_BRAND] [varchar](100) NULL,
	[SHIP_LOC] [float] NULL,
	[PLN_TO_CUST] [varchar](10) NULL,
	[PLN_TO_CUST_NM] [varchar](35) NULL,
	[MATRL] [char](18) NULL,
	[SALES_DT] [datetime] NULL,
	[FISC_WK_STRT_DT] [date] NULL,
	[OUTBND_USD_CUR_YR] [decimal](18, 2) NULL,
	[OUTBND_USD_PREV_YR] [decimal](18, 2) NULL,
	[CURR_YR_QTY] [decimal](18, 2) NULL,
	[PREV_YR_QTY] [decimal](18, 2) NULL,
	[PRC_UOM] [varchar](3) NULL,
	[FISC_YR] [int] NULL,
	[FISC_PD] [int] NULL,
	[FISC_WK] [int] NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFORMETRICS_SRC_KSC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFORMETRICS_SRC_KSC](
	[DST_WHSE_NM] [varchar](255) NULL,
	[RETL_CHN_NM] [varchar](255) NULL,
	[CASE_CODE] [float] NULL,
	[CATG_CODE] [varchar](255) NULL,
	[SUB_CATG_CODE] [varchar](255) NULL,
	[SUB_BRAND] [varchar](255) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[OUTBND_DOL] [float] NULL,
	[SOLDTO_NBR] [float] NULL,
	[LOAD_DT] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INV_NON_WM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_NON_WM](
	[CUSTOMER] [varchar](100) NULL,
	[SOLD_TO] [varchar](100) NULL,
	[STORE_NBR] [varchar](100) NULL,
	[STORE_DESC] [varchar](100) NULL,
	[MATERIAL] [varchar](100) NULL,
	[MATERIAL_DESC] [varchar](100) NULL,
	[FISC_YR_WK] [int] NULL,
	[ON_HAND_QTY] [float] NULL,
	[ON_HAND_RETAIL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INV_SM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_SM](
	[SUBPART_SUFFIX_TXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](100) NULL,
	[DAY] [date] NULL,
	[ONHANDQTY] [bigint] NULL,
	[ONHANDRETAIL] [float] NULL,
	[NWEA] [int] NULL,
	[NTEA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INV_WM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_WM](
	[SUBPART_SUFFIX_TXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](100) NULL,
	[DAY] [date] NULL,
	[ONHANDQTY] [int] NULL,
	[ONHANDRETAIL] [float] NULL,
	[NWEA] [int] NULL,
	[NTEA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOYWAVE_DELETE_LOG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOYWAVE_DELETE_LOG](
	[LOG] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JOYWAVE_DELETE_LOG_1]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOYWAVE_DELETE_LOG_1](
	[LOG] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Joywave_Query]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Joywave_Query](
	[SoldTo_Num] [float] NULL,
	[SoldTo_Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[Zip] [char](10) NULL,
	[BW_PlanTo_Key] [float] NULL,
	[BW_PlanTo_Name] [varchar](50) NULL,
	[BW_Chain_Num] [float] NULL,
	[BW_Chain_Name] [varchar](50) NULL,
	[Base_Material] [float] NULL,
	[Material_Desc] [varchar](150) NULL,
	[Material_Status] [nchar](10) NULL,
	[Material_Disco_Dt] [date] NULL,
	[Mkt_Segment] [varchar](20) NULL,
	[Category] [varchar](20) NULL,
	[Period] [smallint] NULL,
	[Cal_Week] [smallint] NULL,
	[Cal_Year] [smallint] NULL,
	[Fis_Year] [smallint] NULL,
	[Open_Ordrs_Dollars] [float] NULL,
	[Open_Ords_Pounds] [float] NULL,
	[Open_Ords_Cs] [float] NULL,
	[Gross_Sales_Dollars_Dir] [float] NULL,
	[Gross_Sales_Pounds_Dir] [float] NULL,
	[Gross_Sales_Cs_Dir] [float] NULL,
	[Gross_Sales_Dollars_InDir] [float] NULL,
	[Gross_Sales_Pounds_InDir] [float] NULL,
	[Gross_Sales_Cs_InDir] [float] NULL,
	[Cust_Open_Ordrs_Dollars] [float] NULL,
	[Cust_Open_Ords_Pounds] [float] NULL,
	[Cust_Open_Ords_Cs] [float] NULL,
	[Cust_Gross_Sales_Dollars_Dir] [float] NULL,
	[Cust_Gross_Sales_Pounds_Dir] [float] NULL,
	[Cust_Gross_Sales_Cs_Dir] [float] NULL,
	[SOURCE_NAME] [nchar](10) NULL,
	[FISC_PERIOD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KAP_MKT_CONS_PROMO]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KAP_MKT_CONS_PROMO](
	[FIN_YEAR] [int] NULL,
	[MONTH_NO] [int] NULL,
	[PACK_SIZE] [varchar](10) NULL,
	[SKU_DESCRIPTION] [varchar](100) NULL,
	[PROMO_CATEGORY] [varchar](20) NULL,
	[SPEND_PER_UNIT] [decimal](10, 3) NULL,
	[OFFER_DESCRIPTION] [varchar](100) NULL,
	[TOTAL_SPEND_VALUE] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_1]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[Sales Org] [varchar](8) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaterialMap]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaterialMap](
	[Base_Case_Code] [float] NULL,
	[Field_Category] [varchar](50) NULL,
	[Food_Service_Focus_Category] [varchar](30) NULL,
	[Mkt_Rsrch_Category] [varchar](50) NULL,
	[K12_Comp_Flag] [varchar](50) NULL,
	[Innov_Type] [varchar](255) NULL,
	[Innov_Year] [varchar](30) NULL,
	[Master_Brand] [varchar](50) NULL,
	[Sub_Brand] [varchar](50) NULL,
	[CStr_Prty_Flag] [varchar](50) NULL,
	[Vnd_Prty_Flag] [varchar](50) NULL,
	[Material_Flag_1] [varchar](50) NULL,
	[Material_Flag_2] [varchar](50) NULL,
	[Material_Flag_3] [varchar](50) NULL,
	[Material_Flag_4] [varchar](50) NULL,
	[Material_Flag_5] [varchar](50) NULL,
	[Material_Flag_6] [varchar](50) NULL,
	[Material_Flag_7] [varchar](50) NULL,
	[Material_Flag_8] [varchar](50) NULL,
	[Material_Flag_9] [varchar](50) NULL,
	[Material_Flag_10] [varchar](50) NULL,
	[Material_Flag_11] [varchar](50) NULL,
	[Material_Flag_12] [varchar](50) NULL,
	[Material_Flag_13] [varchar](50) NULL,
	[Material_Flag_14] [varchar](50) NULL,
	[Material_Flag_15] [varchar](50) NULL,
	[Material_Flag_16] [varchar](50) NULL,
	[Material_Flag_17] [varchar](50) NULL,
	[Material_Flag_18] [varchar](50) NULL,
	[Material_Flag_19] [varchar](50) NULL,
	[Material_Flag_20] [varchar](50) NULL,
	[Material_Flag_21] [varchar](50) NULL,
	[Material_Flag_22] [varchar](50) NULL,
	[Material_Flag_23] [varchar](50) NULL,
	[Material_Flag_24] [varchar](50) NULL,
	[Material_Flag_25] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATRL_FAFH_PRC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATRL_FAFH_PRC](
	[MATRL_NBR] [varchar](18) NULL,
	[SALES_ORG] [varchar](4) NULL,
	[CHNL_IND] [varchar](2) NULL,
	[PRC_CND] [varchar](4) NULL,
	[STRT_DT] [date] NULL,
	[END_DT] [date] NULL,
	[PRC] [decimal](11, 2) NULL,
	[PRC_UOM] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATRL_PROD_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATRL_PROD_HIER](
	[MATRL_NBR] [varchar](18) NULL,
	[MATRL_TYP] [varchar](4) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[PROD_HIER] [varchar](18) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CRE_DT] [date] NULL,
	[FIN_BU] [varchar](20) NULL,
	[CNTRL_AREA] [varchar](4) NULL,
	[PROD_HIER_DESC] [varchar](40) NULL,
	[PROD_HIER_MARKET_SEGMENT] [varchar](2) NULL,
	[PROD_HIER_MARKET_SEGMENT_DESC] [varchar](40) NULL,
	[PROD_HIER_CATEGORY] [varchar](4) NULL,
	[PROD_HIER_CATEGORY_DESC] [varchar](40) NULL,
	[PROD_HIER_SUB_CATEGORY] [varchar](6) NULL,
	[PROD_HIER_SUB_CATEGORY_DESC] [varchar](40) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL,
	[PROD_HIER_TYPE] [varchar](14) NULL,
	[PROD_HIER_TYPE_DESC] [varchar](40) NULL,
	[PROD_HIER_SUB_TYPE] [varchar](18) NULL,
	[PROD_HIER_SUB_TYPE_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mrktng_Cnsnss_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Mrktng_Cnsnss_Icr](
	[Proj] [varchar](48) NOT NULL,
	[Mrktng_Sbprjct] [varchar](40) NOT NULL,
	[Spcl Cse Cd] [float] NOT NULL,
	[Mtl_Desc] [varchar](50) NULL,
	[Lnch_Dt] [varchar](48) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Sts] [varchar](48) NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Ctg] [varchar](255) NULL,
	[Fisc_Yr] [int] NOT NULL,
	[Pd] [int] NOT NULL,
	[Opn_Ords_Cs] [float] NULL,
	[Gros_Sls_Cs_Dir] [float] NULL,
	[Gros_Sls_Cs_Ndir] [float] NULL,
	[Cust_Gros_sls_Cs_Dir] [float] NULL,
	[Dp_2Plg] [float] NULL,
	[Dp_Cur] [float] NULL,
	[Frcst_Src] [varchar](20) NULL,
	[Mrktng_Frcst] [float] NULL,
	[Mrktng_Ld] [varchar](48) NULL,
 CONSTRAINT [PK_Mrktng_Cnsnss_Icr] PRIMARY KEY CLUSTERED 
(
	[Proj] ASC,
	[Mrktng_Sbprjct] ASC,
	[Fisc_Yr] ASC,
	[Pd] ASC,
	[Chnnl] ASC,
	[Spcl Cse Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mrktng_Lds]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Mrktng_Lds](
	[Catg] [varchar](48) NOT NULL,
	[Chnnl] [varchar](10) NULL,
	[Proj] [varchar](10) NULL,
	[Mrktng_Ld] [varchar](48) NULL,
 CONSTRAINT [PK_Mrktng_Lds] PRIMARY KEY CLUSTERED 
(
	[Catg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NIELSEN_ACV_TURN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NIELSEN_ACV_TURN](
	[MATRL] [char](18) NULL,
	[ALL_COMDTY_VOL_PCT] [decimal](18, 8) NULL,
	[ALL_COMDTY_VOL_SALES_VAL] [decimal](8, 3) NULL,
	[ALL_COMDTY_VOL_SALES_QTY] [decimal](8, 3) NULL,
	[ALL_COMDTY_VOL_DT] [datetime] NULL,
	[FISC_PD] [int] NULL,
	[FISC_YR] [int] NULL,
	[FISC_WK] [int] NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLAN_TO_CHAIN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_TO_CHAIN](
	[Plan To] [varchar](12) NULL,
	[Plan To Description] [varchar](255) NULL,
	[CHAIN] [varchar](12) NULL,
	[Chain Description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLAN_TO_CHAN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_TO_CHAN](
	[Plan To] [varchar](12) NULL,
	[Plan To Description] [varchar](255) NULL,
	[CHAIN] [varchar](12) NULL,
	[Chain Description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanToMap]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanToMap](
	[PlanTo_Name] [varchar](50) NULL,
	[Super_PlanTo] [varchar](50) NULL,
	[PT_Strct_1] [varchar](50) NULL,
	[PT_Strct_2] [varchar](50) NULL,
	[PT_Strct_3] [varchar](50) NULL,
	[PT_Strct_4] [varchar](50) NULL,
	[PT_Strct_5] [varchar](50) NULL,
	[PT_Strct_6] [varchar](50) NULL,
	[PT_Strct_7] [varchar](50) NULL,
	[PT_Strct_8] [varchar](50) NULL,
	[PT_Strct_9] [varchar](50) NULL,
	[PT_Strct_10] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POS_BUDGET_2017]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POS_BUDGET_2017](
	[Plan To Number] [varchar](50) NULL,
	[PLAN_TO] [varchar](50) NULL,
	[SOLD_TO_NBR] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Quarter] [varchar](50) NULL,
	[YAGO] [varchar](50) NULL,
	[GO] [varchar](50) NULL,
	[Budget] [varchar](50) NULL,
	[GO in $] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POS_NON_WM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POS_NON_WM](
	[CUSTOMER] [varchar](100) NULL,
	[SOLD_TO] [varchar](100) NULL,
	[STORE_NBR] [varchar](100) NULL,
	[STORE_DESC] [varchar](100) NULL,
	[MATERIAL] [varchar](100) NULL,
	[MATERIAL_DESC] [varchar](100) NULL,
	[FISC_YR_WK] [int] NULL,
	[SALES] [float] NULL,
	[QTY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POS_SM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POS_SM](
	[SUBPARTSUFFIXTXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](100) NULL,
	[DAY] [date] NULL,
	[POS_SALES] [decimal](15, 2) NULL,
	[POS_QTY] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POS_WM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POS_WM](
	[SUBPARTSUFFIXTXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](255) NULL,
	[DAY] [date] NULL,
	[POS_SALES] [decimal](10, 3) NULL,
	[POS_QTY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proj_Tbl_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Proj_Tbl_Icr](
	[Tab] [int] NULL,
	[Mrktng_Sprdsht_Tab] [varchar](48) NOT NULL,
	[Proj] [varchar](48) NOT NULL,
	[Sts] [varchar](48) NULL,
	[Mrktng_Desc] [varchar](100) NULL,
	[Sp_Desc] [varchar](50) NULL,
	[Spcl Cse Cd] [float] NOT NULL,
	[Rtl Cse Code] [varchar](48) NULL,
	[Spcl Frst Cse] [varchar](48) NULL,
	[Fcst Lst Mdfd] [varchar](48) NULL,
	[Cse Cnt] [varchar](48) NULL,
	[Cse Nt Wt] [varchar](48) NULL,
	[Cse red] [varchar](48) NULL,
	[Catg] [varchar](50) NULL,
	[Proj Ld] [varchar](48) NULL,
	[Bm Ld] [varchar](48) NULL,
 CONSTRAINT [PK_Proj_Tbl_Icr] PRIMARY KEY CLUSTERED 
(
	[Mrktng_Sprdsht_Tab] ASC,
	[Proj] ASC,
	[Spcl Cse Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REX_POS_WALMART_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_POS_WALMART_WK](
	[SOLDTO] [varchar](10) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[CATG] [varchar](40) NULL,
	[BRAND] [varchar](40) NULL,
	[WK] [int] NULL,
	[YR] [int] NULL,
	[TOTL_SALES] [decimal](38, 3) NULL,
	[UNITS] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REX_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_RPT_KSR_BUD](
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
/****** Object:  Table [dbo].[REX_RPT_KSR_BUD_BKP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_RPT_KSR_BUD_BKP](
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
	[PD_DESC] [varchar](3) NULL,
	[DOL_SALE] [decimal](38, 3) NULL,
	[BUD] [float] NULL,
	[PACE] [decimal](7, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REX_RPT_KSR_BUD_Q3_2018]    Script Date: 11/20/2018 5:49:04 PM ******/
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
/****** Object:  Table [dbo].[REX_RPT_POS_SALES_BRAND_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_RPT_POS_SALES_BRAND_WK](
	[RGN] [varchar](35) NULL,
	[RGN_NBR] [varchar](10) NULL,
	[ZN] [varchar](35) NULL,
	[ZN_NBR] [varchar](10) NULL,
	[TERR] [varchar](35) NULL,
	[TERR_NBR] [varchar](10) NULL,
	[PLN_TO] [varchar](35) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[SOLD_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[STORE] [varchar](46) NOT NULL,
	[STDLINXSCD] [float] NULL,
	[SNAME] [varchar](35) NULL,
	[STR] [varchar](35) NULL,
	[CITY] [varchar](35) NULL,
	[SST] [varchar](3) NULL,
	[PSTL_CODE] [varchar](10) NULL,
	[SNO] [char](8) NULL,
	[PREV_ACCT_NBR] [varchar](10) NULL,
	[VENDOR] [varchar](7) NOT NULL,
	[BU] [varchar](13) NOT NULL,
	[CATG] [varchar](40) NULL,
	[BRAND] [varchar](256) NULL,
	[TYP] [varchar](3) NOT NULL,
	[CORP] [varchar](256) NULL,
	[FISC_WK_STRT] [varchar](30) NULL,
	[FISC_WK] [varchar](4) NULL,
	[PREV_TOTL_SALES] [numeric](38, 3) NULL,
	[PREV_UNITS] [numeric](37, 3) NULL,
	[POS_DOL_SALE] [numeric](38, 3) NULL,
	[POS_DOL_SALE_YA] [numeric](38, 3) NULL,
	[POS_DOL_SHR] [numeric](38, 6) NULL,
	[POS_DOL_SHR_YA] [numeric](38, 6) NULL,
	[POS_UNITS] [numeric](37, 3) NULL,
	[POS_UNITS_YA] [numeric](37, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REX_TDLINX_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_TDLINX_CUST_HIER](
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[RGN] [varchar](35) NULL,
	[STDLINXSCD] [float] NULL,
	[LST_LVL_CUST_NBR] [varchar](10) NULL,
	[RGN_NBR] [varchar](10) NULL,
	[ZN] [varchar](35) NULL,
	[ZN_NBR] [varchar](10) NULL,
	[CUST_TEAM] [varchar](35) NULL,
	[CUST_TEAM_NBR] [varchar](10) NULL,
	[TERR] [varchar](35) NULL,
	[TERR_NBR] [varchar](10) NULL,
	[PLN_TO] [varchar](35) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[SOLD_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[PREV_ACCT_NBR] [varchar](10) NULL,
	[SNO] [char](8) NULL,
	[SNAME] [varchar](35) NULL,
	[STR] [varchar](35) NULL,
	[CITY] [varchar](35) NULL,
	[SST] [varchar](3) NULL,
	[PSTL_CODE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REX_UPC_PKG_PROD_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REX_UPC_PKG_PROD_HIER](
	[UPC] [decimal](18, 0) NULL,
	[MATRL_NBR] [varchar](18) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[PROD_HIER_CATEGORY] [varchar](4) NULL,
	[PROD_HIER_CATEGORY_DESC] [varchar](40) NULL,
	[PROD_HIER_SUB_CATEGORY] [varchar](6) NULL,
	[PROD_HIER_SUB_CATEGORY_DESC] [varchar](40) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RGM_AOD_ALL_BU_TEST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RGM_AOD_ALL_BU_TEST](
	[[All Markets]]] [varchar](255) NULL,
	[[All Products]]] [varchar](255) NULL,
	[[All Periods]]] [varchar](255) NULL,
	[[$]]] [decimal](10, 3) NULL,
	[[Units]]] [decimal](10, 3) NULL,
	[[% Subsidized Units]]] [decimal](10, 3) NULL,
	[[Avg EQ Price]]] [decimal](10, 3) NULL,
	[[Base EQ Price]]] [decimal](10, 3) NULL,
	[[Any Promo EQ Price]]] [decimal](10, 3) NULL,
	[[Avg # of Items]]] [decimal](10, 3) NULL,
	[[Qual CWW]]] [decimal](10, 3) NULL,
	[[Any Promo CWW]]] [decimal](10, 3) NULL,
	[[Feat & Disp CWW]]] [decimal](10, 3) NULL,
	[[Any Feat CWW]]] [decimal](10, 3) NULL,
	[[Any Promo Units % Lift]]] [decimal](10, 3) NULL,
	[[Any Promo $ % Lift]]] [decimal](10, 3) NULL,
	[BU] [int] NULL,
	[DIV_] [int] NULL,
	[TIME] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHAPE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHAPE](
	[TRACK_PUB_DAY] [varchar](50) NULL,
	[PERIOD_DAY] [int] NULL,
	[CAL_DAY] [date] NULL,
	[WEEK] [int] NULL,
	[CHANNEL] [varchar](50) NULL,
	[DLY_PCT] [float] NULL,
	[WTD_PCT] [float] NULL,
	[PTD_PCT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_POS_WALMART_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_POS_WALMART_WK](
	[SOLDTO] [varchar](10) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[CATG] [varchar](40) NULL,
	[BRAND] [varchar](40) NULL,
	[WK] [int] NULL,
	[YR] [int] NULL,
	[TOTL_SALES] [decimal](38, 3) NULL,
	[TOTL_DIST_PNT] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_RPT_KSR_BUD](
	[CORP] [varchar](35) NULL,
	[CATG] [varchar](40) NULL,
	[PD_DT] [date] NULL,
	[CO] [varchar](19) NOT NULL,
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
	[STORE] [varchar](384) NULL,
	[PD_FULL_DESC] [int] NULL,
	[PD_DESC] [varchar](3) NULL,
	[DOL_SALE] [decimal](38, 3) NULL,
	[BUD] [float] NULL,
	[PACE] [decimal](7, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_TDLINX_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_TDLINX_CUST_HIER](
	[RGN] [varchar](35) NULL,
	[STDLINXSCD] [float] NULL,
	[RCLIENTNO] [int] NULL,
	[LST_LVL_CUST_NBR] [varchar](10) NULL,
	[RGN_NBR] [varchar](10) NULL,
	[ZN] [varchar](35) NULL,
	[ZN_NBR] [varchar](10) NULL,
	[CUST_TEAM] [varchar](35) NULL,
	[CUST_TEAM_NBR] [varchar](10) NULL,
	[TERR] [varchar](35) NULL,
	[TERR_NBR] [varchar](10) NULL,
	[PLN_TO] [varchar](35) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[SOLD_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[SLONG] [float] NULL,
	[SLAT] [float] NULL,
	[SNAME] [varchar](32) NULL,
	[SNO] [varchar](8) NULL,
	[SSTREETADD] [varchar](32) NULL,
	[SCITY] [varchar](25) NULL,
	[SST] [varchar](2) NULL,
	[SZIP] [varchar](9) NULL,
	[ZLONG] [float] NULL,
	[ZLAT] [float] NULL,
	[TLONG] [float] NULL,
	[TLAT] [float] NULL,
	[PREV_ACCT_NBR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_TDLINX_CUST_HIER_2017]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_TDLINX_CUST_HIER_2017](
	[RGN] [varchar](35) NULL,
	[STDLINXSCD] [float] NULL,
	[RCLIENTNO] [int] NULL,
	[LST_LVL_CUST_NBR] [varchar](10) NULL,
	[RGN_NBR] [varchar](10) NULL,
	[ZN] [varchar](35) NULL,
	[ZN_NBR] [varchar](10) NULL,
	[CUST_TEAM] [varchar](35) NULL,
	[CUST_TEAM_NBR] [varchar](10) NULL,
	[TERR] [varchar](35) NULL,
	[TERR_NBR] [varchar](10) NULL,
	[PLN_TO] [varchar](35) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[SOLD_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[SLONG] [float] NULL,
	[SLAT] [float] NULL,
	[SNAME] [varchar](32) NULL,
	[SNO] [varchar](8) NULL,
	[SSTREETADD] [varchar](32) NULL,
	[SCITY] [varchar](25) NULL,
	[SST] [varchar](2) NULL,
	[SZIP] [varchar](9) NULL,
	[ZLONG] [float] NULL,
	[ZLAT] [float] NULL,
	[TLONG] [float] NULL,
	[TLAT] [float] NULL,
	[PREV_ACCT_NBR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_TDLINX_CUST_HIER_Q1_2018]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_TDLINX_CUST_HIER_Q1_2018](
	[RGN] [varchar](35) NULL,
	[STDLINXSCD] [float] NULL,
	[RCLIENTNO] [int] NULL,
	[LST_LVL_CUST_NBR] [varchar](10) NULL,
	[RGN_NBR] [varchar](10) NULL,
	[ZN] [varchar](35) NULL,
	[ZN_NBR] [varchar](10) NULL,
	[CUST_TEAM] [varchar](35) NULL,
	[CUST_TEAM_NBR] [varchar](10) NULL,
	[TERR] [varchar](35) NULL,
	[TERR_NBR] [varchar](10) NULL,
	[PLN_TO] [varchar](35) NULL,
	[PLN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[SOLD_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[SLONG] [float] NULL,
	[SLAT] [float] NULL,
	[SNAME] [varchar](32) NULL,
	[SNO] [varchar](8) NULL,
	[SSTREETADD] [varchar](32) NULL,
	[SCITY] [varchar](25) NULL,
	[SST] [varchar](2) NULL,
	[SZIP] [varchar](9) NULL,
	[ZLONG] [float] NULL,
	[ZLAT] [float] NULL,
	[TLONG] [float] NULL,
	[TLAT] [float] NULL,
	[PREV_ACCT_NBR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_UPC_PKG_PROD_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_UPC_PKG_PROD_HIER](
	[UPC] [decimal](18, 0) NULL,
	[MATRL_NBR] [varchar](18) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[PROD_HIER_CATEGORY] [varchar](4) NULL,
	[PROD_HIER_CATEGORY_DESC] [varchar](40) NULL,
	[PROD_HIER_SUB_CATEGORY] [varchar](6) NULL,
	[PROD_HIER_SUB_CATEGORY_DESC] [varchar](40) NULL,
	[PROD_HIER_BRAND] [varchar](10) NULL,
	[PROD_HIER_BRAND_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SNACKS_VLD_RPT_SALES_OUTLOOK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_VLD_RPT_SALES_OUTLOOK](
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATG] [varchar](50) NULL,
	[PD_DESC] [varchar](10) NULL,
	[TYP] [int] NULL,
	[DOL_SALE] [decimal](38, 3) NULL,
	[DOL_SALE_YA] [decimal](38, 3) NULL,
	[BUD] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SoldToMap]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SoldToMap](
	[SoldTo_Key] [numeric](10, 0) NULL,
	[PlanTo_Name] [varchar](50) NULL,
	[Trade_Class] [varchar](50) NULL,
	[Chain] [varchar](50) NULL,
	[Sub_Chain] [varchar](50) NULL,
	[K12_Dist_Flag] [varchar](50) NULL,
	[Acosta_DOB_Rgn] [varchar](50) NULL,
	[ST_Strct_1] [varchar](50) NULL,
	[ST_Strct_2] [varchar](50) NULL,
	[ST_Strct_3] [varchar](50) NULL,
	[ST_Strct_4] [varchar](50) NULL,
	[ST_Strct_5] [varchar](50) NULL,
	[ST_Strct_6] [varchar](50) NULL,
	[ST_Strct_7] [varchar](50) NULL,
	[ST_Strct_8] [varchar](50) NULL,
	[ST_Strct_9] [varchar](50) NULL,
	[ST_Strct_10] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPCLTY_COST_ESTIMT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SPCLTY_COST_ESTIMT](
	[MATNR] [varchar](18) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KADKY] [date] NULL,
	[KALKA] [varchar](2) NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[PATNR] [decimal](6, 0) NULL,
	[KEART] [varchar](1) NULL,
	[LOSFX] [varchar](1) NULL,
	[KKZST] [varchar](1) NULL,
	[KKZMM] [varchar](1) NULL,
	[DIPA] [varchar](1) NULL,
	[KST017_RAW_MATRL] [decimal](13, 2) NULL,
	[KST018_PKG_MATRL] [decimal](13, 2) NULL,
	[KST019_DIR_LBR] [decimal](13, 2) NULL,
	[KST022_USED_IN_CALC] [decimal](13, 2) NULL,
	[KST023_FIXD_OH] [decimal](13, 2) NULL,
	[KST024_DEPR_SUBC] [decimal](13, 2) NULL,
	[KST025_DEPR_SUBC] [decimal](13, 2) NULL,
	[KST026_THIRD_PARTY_CONVR] [decimal](13, 2) NULL,
	[KST028_FREIGHT] [decimal](13, 2) NULL,
	[VARIABLE_OVERHEAD] [decimal](13, 2) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[FISC_YR] [varchar](4) NULL,
	[FISC_QTR] [varchar](4) NULL,
	[FISC_PD] [varchar](4) NULL,
	[FEH_STA] [varchar](2) NULL,
	[MATRL_EXP_CS] [decimal](20, 6) NULL,
	[FIXD_OH_CS] [decimal](20, 6) NULL,
	[VAR_OH] [decimal](20, 6) NULL,
	[VAR_OH_CS] [decimal](20, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPCLTY_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SPCLTY_CUST_HIER](
	[HIER_TYP] [varchar](5) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[SOLD_NM] [varchar](35) NULL,
	[KATR5] [varchar](2) NULL,
	[CHNL_NBR] [varchar](2) NULL,
	[PRC_GRP] [varchar](2) NULL,
	[PRC_GRP_DESC] [varchar](20) NULL,
	[ZN] [varchar](35) NULL,
	[DSTR] [varchar](35) NULL,
	[TERR] [varchar](35) NULL,
	[PLAN_TO] [varchar](35) NULL,
	[PLAN_TO_NBR] [varchar](10) NULL,
	[CHN] [varchar](35) NULL,
	[CHN_NBR] [varchar](10) NULL,
	[CUST_GRP] [varchar](35) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPCLTY_DUMMY_SKU_AMT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SPCLTY_DUMMY_SKU_AMT](
	[SOLDTO_NBR] [int] NULL,
	[MATRL_NBR] [float] NULL,
	[STLMNT_AMT] [float] NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [int] NULL,
	[GSV_CASES] [float] NULL,
	[GSV_CASES_1] [float] NULL,
	[PER_CASES] [float] NULL,
	[DUMMY_SKU_RMBSMT_AMT] [float] NULL,
	[SOLDTO_NUM] [int] NULL,
	[SOLDTO_NM] [varchar](100) NULL,
	[BASE_MATRL] [float] NULL,
	[MATRL_DESC] [varchar](150) NULL,
	[GSV_DOL] [float] NULL,
	[GSV_LBS] [float] NULL,
	[GSV_KGS] [float] NULL,
	[GSV_TYP] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPCLTY_OSD_AMT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SPCLTY_OSD_AMT](
	[SOLDTO_NBR] [int] NULL,
	[MATRL_NBR] [float] NULL,
	[STLMNT_AMT] [float] NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [int] NULL,
	[GSV_CASES] [float] NULL,
	[GSV_CASES_1] [float] NULL,
	[PER_CASES] [float] NULL,
	[OSD_RMBSMT_AMT] [float] NULL,
	[SOLDTO_NUM] [int] NULL,
	[SOLDTO_NM] [varchar](100) NULL,
	[BASE_MATRL] [float] NULL,
	[MATRL_DESC] [varchar](150) NULL,
	[GSV_DOL] [float] NULL,
	[GSV_LBS] [float] NULL,
	[GSV_KGS] [float] NULL,
	[GSV_TYP] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPCLTY_RMBSMT_FISC_YR_PD_ALL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SPCLTY_RMBSMT_FISC_YR_PD_ALL](
	[SOLDTO_NBR] [int] NULL,
	[SOLDTO_NM] [varchar](100) NULL,
	[MATRL_NBR] [float] NULL,
	[AGRMT_NBR] [varchar](10) NULL,
	[STLMNT_AMT] [float] NULL,
	[STLMNT_DT] [date] NULL,
	[STLMNT_TYP] [varchar](25) NULL,
	[FISC_YR] [varchar](10) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[FISC_PD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_BUDGET]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_BUDGET](
	[CHANNEL] [varchar](255) NULL,
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[MKT_SEGMENT] [varchar](50) NULL,
	[CATEGORY] [varchar](255) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[YEAR] [int] NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[QUARTER] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[NO_OF_WEEKS] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_BUDGET_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_BUDGET_HIST](
	[CHANNEL] [varchar](255) NULL,
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[MKT_SEGMENT] [varchar](50) NULL,
	[CATEGORY] [varchar](255) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[YEAR] [int] NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[QUARTER] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[NO_OF_WEEKS] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_DAILYTRACK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_DAILYTRACK](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL,
	[LAST_TRACK_DEMAND] [float] NULL,
	[NXT_PERIOD_OPEN_ORDERS] [float] NULL,
	[BUDGETGSV] [float] NULL,
	[GSV39] [float] NULL,
	[GSV66] [float] NULL,
	[GSV93] [float] NULL,
	[DAILY_SE_BUDGETGSV] [float] NULL,
	[DAILY_SE_GSV39] [float] NULL,
	[DAILY_SE_GSV66] [float] NULL,
	[DAILY_SE_GSV93] [float] NULL,
	[PTD_SE_BUDGETGSV] [float] NULL,
	[PTD_SE_GSV39] [float] NULL,
	[PTD_SE_GSV66] [float] NULL,
	[PTD_SE_GSV93] [float] NULL,
	[YAGO_GSV] [float] NULL,
	[PTD_YAGO_DEMAND] [float] NULL,
	[SOURCE] [varchar](4) NULL,
	[EXTRACT_DT] [date] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_DAILYTRACK_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_DAILYTRACK_HIST](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL,
	[LAST_TRACK_DEMAND] [float] NULL,
	[NXT_PERIOD_OPEN_ORDERS] [float] NULL,
	[BUDGETGSV] [float] NULL,
	[GSV39] [float] NULL,
	[GSV66] [float] NULL,
	[GSV93] [float] NULL,
	[DAILY_SE_BUDGETGSV] [float] NULL,
	[DAILY_SE_GSV39] [float] NULL,
	[DAILY_SE_GSV66] [float] NULL,
	[DAILY_SE_GSV93] [float] NULL,
	[PTD_SE_BUDGETGSV] [float] NULL,
	[PTD_SE_GSV39] [float] NULL,
	[PTD_SE_GSV66] [float] NULL,
	[PTD_SE_GSV93] [float] NULL,
	[YAGO_GSV] [float] NULL,
	[PTD_YAGO_DEMAND] [float] NULL,
	[SOURCE] [varchar](4) NULL,
	[EXTRACT_DT] [date] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_DAILYTRACK_SNAPSHOT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_DAILYTRACK_SNAPSHOT](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL,
	[LAST_TRACK_DEMAND] [float] NULL,
	[NXT_PERIOD_OPEN_ORDERS] [float] NULL,
	[BUDGETGSV] [float] NULL,
	[GSV39] [float] NULL,
	[GSV66] [float] NULL,
	[GSV93] [float] NULL,
	[DAILY_SE_BUDGETGSV] [float] NULL,
	[DAILY_SE_GSV39] [float] NULL,
	[DAILY_SE_GSV66] [float] NULL,
	[DAILY_SE_GSV93] [float] NULL,
	[PTD_SE_BUDGETGSV] [float] NULL,
	[PTD_SE_GSV39] [float] NULL,
	[PTD_SE_GSV66] [float] NULL,
	[PTD_SE_GSV93] [float] NULL,
	[YAGO_GSV] [float] NULL,
	[PTD_YAGO_DEMAND] [float] NULL,
	[SNAPSHOT_PERIOD] [int] NULL,
	[SNAPSHOT_YEAR] [int] NULL,
	[SOURCE] [varchar](4) NULL,
	[EXTRACT_DT] [date] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_EMAIL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_EMAIL](
	[EMAIL] [varchar](100) NULL,
	[TYPE] [varchar](10) NULL,
	[DI_FILENAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_LASTTRACK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_LASTTRACK](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[LAST_TRACK_DEMAND] [float] NULL,
	[EXTRACT_DT] [datetime2](7) NULL,
	[BATCH_ID] [int] NULL,
	[SOURCE_NAME] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_LASTTRACK_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_LASTTRACK_HIST](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[LAST_TRACK_DEMAND] [float] NULL,
	[EXTRACT_DT] [datetime2](7) NULL,
	[BATCH_ID] [int] NULL,
	[SOURCE_NAME] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_LASTTRACK_PP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_LASTTRACK_PP](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[EXTRACT_DT] [date] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_LASTTRACK_PP_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_LASTTRACK_PP_HIST](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[EXTRACT_DT] [date] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[PERIOD] [int] NULL,
	[YEAR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_LOG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_LOG](
	[LOG] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STG_JOYWAVE_LOG_1]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_LOG_1](
	[LOG] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STG_JOYWAVE_PP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_PP](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[EXTRACT_DT] [date] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_PP_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_PP_HIST](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[EXTRACT_DT] [date] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[PERIOD] [int] NULL,
	[YEAR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_QTB]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_QTB](
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[CHANNEL] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[YEAR] [int] NULL,
	[QUARTER] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_QTB_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_QTB_HIST](
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[CHANNEL] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[YEAR] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[PERIOD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_QTPM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_QTPM](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[FSCL_PRD] [int] NULL,
	[YEAR] [int] NULL,
	[EXTRACT_DT] [date] NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_QTPM_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_QTPM_HIST](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[YEAR] [int] NULL,
	[PERIOD] [int] NULL,
	[EXTRACT_DT] [date] NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_SUMAGG_LOG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_SUMAGG_LOG](
	[AL_SP_RETURN] [int] NULL,
	[AL_SP_RETCODE] [varchar](256) NULL,
	[AL_SP_ERRMSG] [varchar](1024) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_Joywave_Summ_Agg]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_Joywave_Summ_Agg](
	[SoldTo_Num] [float] NULL,
	[SoldTo_Name] [varchar](50) NULL,
	[BW_PlanTo_Key] [float] NULL,
	[BW_PlanTo_Name] [varchar](50) NULL,
	[Channel_Name] [nvarchar](50) NULL,
	[PlanTo_Name] [varchar](50) NULL,
	[Super_PlanTo] [varchar](50) NULL,
	[Chain] [varchar](50) NULL,
	[Sub_Chain] [varchar](50) NULL,
	[Zone_Name] [nvarchar](50) NULL,
	[District_Name] [nvarchar](50) NULL,
	[Territory_Name] [nvarchar](50) NULL,
	[Trade_Class] [varchar](50) NULL,
	[K12_Dist_Flag] [numeric](10, 0) NULL,
	[Acosta_DOB_Rgn] [varchar](50) NULL,
	[Prd_Catg] [nvarchar](50) NULL,
	[Field_Category] [varchar](50) NULL,
	[Master_Brand] [varchar](50) NULL,
	[Sub_Brand] [varchar](50) NULL,
	[Base_Material] [float] NULL,
	[Mtl_Desc] [nvarchar](50) NULL,
	[K12_Comp_Flag] [varchar](50) NULL,
	[CStr_Prty_Flag] [varchar](50) NULL,
	[Vnd_Prty_Flag] [varchar](50) NULL,
	[Food_Service_Focus_Category] [varchar](30) NULL,
	[Fiscal] [numeric](4, 0) NULL,
	[Quarter] [numeric](2, 0) NULL,
	[Period] [numeric](3, 0) NULL,
	[Week] [numeric](3, 0) NULL,
	[Open_Ordrs_Dollars] [float] NULL,
	[Open_Ords_Pounds] [float] NULL,
	[Open_Ords_Cs] [float] NULL,
	[Gross_Sales_Dollars_Dir] [float] NULL,
	[Gross_Sales_Pounds_Dir] [float] NULL,
	[Gross_Sales_Cs_Dir] [float] NULL,
	[Gross_Sales_Dollars_InDir] [float] NULL,
	[Gross_Sales_Pounds_InDir] [float] NULL,
	[Gross_Sales_Cs_InDir] [float] NULL,
	[Cust_Open_Ordrs_Dollars] [float] NULL,
	[Cust_Open_Ords_Pounds] [float] NULL,
	[Cust_Open_Ords_Cs] [float] NULL,
	[Cust_Gross_Sales_Dollars_Dir] [float] NULL,
	[Cust_Gross_Sales_Pounds_Dir] [float] NULL,
	[Cust_Gross_Sales_Cs_Dir] [float] NULL,
	[Budget_GSV] [float] NULL,
	[39_GSV] [float] NULL,
	[66_GSV] [float] NULL,
	[93_GSV] [float] NULL,
	[Future_Use1] [float] NULL,
	[Future_Use2] [float] NULL,
	[Future_Use3] [float] NULL,
	[Future_Use4] [float] NULL,
	[Future_Use5] [float] NULL,
	[Future_Use6] [float] NULL,
	[Future_Use10] [float] NULL,
	[Future_Use11] [float] NULL,
	[Future_Use12] [float] NULL,
	[Future_Use13] [float] NULL,
	[Future_Use14] [float] NULL,
	[Future_Use15] [float] NULL,
	[Future_Use16] [float] NULL,
	[Future_Use17] [float] NULL,
	[Future_Use18] [float] NULL,
	[Future_Use19] [float] NULL,
	[Future_Use20] [float] NULL,
	[Future_Use21] [float] NULL,
	[Future_Use22] [float] NULL,
	[Future_Use23] [float] NULL,
	[DLY_PCT] [float] NULL,
	[WKLY_PCT] [float] NULL,
	[PTD_PCT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_Joywave_Transaction]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_Joywave_Transaction](
	[SoldTo_Num] [float] NULL,
	[SoldTo_Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[Zip] [char](10) NULL,
	[BW_PlanTo_Key] [float] NULL,
	[BW_PlanTo_Name] [varchar](50) NULL,
	[BW_Chain_Num] [float] NULL,
	[BW_Chain_Name] [varchar](50) NULL,
	[Base_Material] [numeric](14, 0) NULL,
	[Material_Desc] [varchar](150) NULL,
	[Material_Status] [nchar](10) NULL,
	[Material_Disco_Dt] [date] NULL,
	[Mkt_Segment] [varchar](20) NULL,
	[Category] [varchar](20) NULL,
	[Period] [smallint] NULL,
	[Cal_Week] [smallint] NULL,
	[Cal_Year] [smallint] NULL,
	[Fis_Year] [smallint] NULL,
	[Open_Ordrs_Dollars] [float] NULL,
	[Open_Ords_Pounds] [float] NULL,
	[Open_Ords_Cs] [float] NULL,
	[Gross_Sales_Dollars_Dir] [float] NULL,
	[Gross_Sales_Pounds_Dir] [float] NULL,
	[Gross_Sales_Cs_Dir] [float] NULL,
	[Gross_Sales_Dollars_InDir] [float] NULL,
	[Gross_Sales_Pounds_InDir] [float] NULL,
	[Gross_Sales_Cs_InDir] [float] NULL,
	[Cust_Open_Ordrs_Dollars] [float] NULL,
	[Cust_Open_Ords_Pounds] [float] NULL,
	[Cust_Open_Ords_Cs] [float] NULL,
	[Cust_Gross_Sales_Dollars_Dir] [float] NULL,
	[Cust_Gross_Sales_Pounds_Dir] [float] NULL,
	[Cust_Gross_Sales_Cs_Dir] [float] NULL,
	[EXTRACT_DT] [datetime] NULL,
	[SOURCE_NAME] [nchar](10) NULL,
	[FISC_PERIOD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_TRIGGER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_TRIGGER](
	[TRIGGER_FILE] [varchar](20) NULL,
	[LOADED_DATE] [date] NULL,
	[ROW_NUM] [int] NULL,
	[FIELD_VALUE] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_YAGO]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_YAGO](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[EXTRACT_DT] [datetime2](7) NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_JOYWAVE_YAGO_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_JOYWAVE_YAGO_HIST](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[EXTRACT_DT] [datetime2](7) NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_SNAPSHOT_LASTTRACK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_SNAPSHOT_LASTTRACK](
	[CHANNEL] [varchar](50) NULL,
	[SUPERPLANTO] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[FIELDCATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[WEEK] [int] NULL,
	[YEAR] [int] NULL,
	[LAST_TRACK_DEMAND] [float] NULL,
	[EXTRACT_DT] [datetime2](7) NULL,
	[BATCH_ID] [int] NULL,
	[SOURCE_NAME] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORE_METADATA]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORE_METADATA](
	[SUBPART_SUFFIX_TXT] [varchar](10) NULL,
	[DIVISION] [varchar](30) NULL,
	[STORE_NBR] [decimal](12, 0) NULL,
	[TD_LINX] [decimal](12, 0) NULL,
	[Store Description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Summ_Agg_01]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Summ_Agg_01](
	[SoldTo_Num] [float] NULL,
	[SoldTo_Name] [nvarchar](50) NULL,
	[BW_PlanTo_Key] [float] NULL,
	[BW_PlanTo_Name] [varchar](50) NULL,
	[Fis_Week] [int] NULL,
	[Period] [int] NULL,
	[FISC_PERIOD] [int] NULL,
	[Fis_Quarter] [int] NULL,
	[Fis_Year] [int] NULL,
	[Channel] [nvarchar](255) NULL,
	[Territory] [float] NULL,
	[District] [float] NULL,
	[Zone] [float] NULL,
	[Zone_Name] [nvarchar](50) NULL,
	[District_Name] [nvarchar](50) NULL,
	[Territory_Name] [nvarchar](50) NULL,
	[PlanTo_Name] [varchar](50) NULL,
	[Super_PlanTo] [varchar](50) NULL,
	[Chain] [varchar](50) NULL,
	[Sub_Chain] [varchar](50) NULL,
	[Trade_Class] [varchar](50) NULL,
	[K12_Dist_Flag] [varchar](50) NULL,
	[Acosta_BOB_Rgn] [varchar](50) NULL,
	[Category] [varchar](255) NULL,
	[Prd_Catg] [nvarchar](50) NULL,
	[Base_Material] [numeric](14, 0) NULL,
	[Mtl_Desc] [nvarchar](50) NULL,
	[Field_Category] [varchar](50) NULL,
	[Master_Brand] [varchar](50) NULL,
	[Sub_Brand] [varchar](50) NULL,
	[K12_Comp_Flag] [varchar](50) NULL,
	[CStr_Prty_Flag] [varchar](50) NULL,
	[Vnd_Prty_Flag] [varchar](50) NULL,
	[Food_Service_Focus_Category] [varchar](30) NULL,
	[Open_Ordrs_Dollars] [float] NULL,
	[Open_Ords_Pounds] [float] NULL,
	[Open_Ords_Cs] [float] NULL,
	[Gross_Sales_Dollars_Dir] [float] NULL,
	[Gross_Sales_Pounds_Dir] [float] NULL,
	[Gross_Sales_Cs_Dir] [float] NULL,
	[Gross_Sales_Dollars_InDir] [float] NULL,
	[Gross_Sales_Pounds_InDir] [float] NULL,
	[Gross_Sales_Cs_InDir] [float] NULL,
	[Cust_Open_Ordrs_Dollars] [float] NULL,
	[Cust_Open_Ords_Pounds] [float] NULL,
	[Cust_Open_Ords_Cs] [float] NULL,
	[Cust_Gross_Sales_Dollars_Dir] [float] NULL,
	[Cust_Gross_Sales_Pounds_Dir] [float] NULL,
	[Cust_Gross_Sales_Cs_Dir] [float] NULL,
	[Budget_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[DLY_PCT] [float] NULL,
	[WTD_PCT] [float] NULL,
	[PTD_PCT] [float] NULL,
	[Source_Name] [nvarchar](10) NULL,
	[execdate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Summ_Agg_02]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Summ_Agg_02](
	[SoldTo_Num] [float] NULL,
	[SoldTo_Name] [nvarchar](50) NULL,
	[Fis_Week] [int] NULL,
	[Period] [int] NULL,
	[FISC_PERIOD] [int] NULL,
	[Fis_Quarter] [int] NULL,
	[Fis_Year] [int] NULL,
	[Channel] [nvarchar](50) NULL,
	[Zone_Name] [nvarchar](50) NULL,
	[District_Name] [nvarchar](50) NULL,
	[Territory_Name] [nvarchar](50) NULL,
	[PlanTo_Name] [varchar](50) NULL,
	[Super_PlanTo] [varchar](50) NULL,
	[Chain] [varchar](50) NULL,
	[Sub_Chain] [varchar](50) NULL,
	[Category] [varchar](20) NULL,
	[Base_Material] [float] NULL,
	[Mtl_Desc] [nvarchar](50) NULL,
	[Field_Category] [varchar](50) NULL,
	[Master_Brand] [varchar](50) NULL,
	[Sub_Brand] [varchar](50) NULL,
	[Open_Ordrs_Dollars] [float] NULL,
	[Open_Ords_Pounds] [float] NULL,
	[Open_Ords_Cs] [float] NULL,
	[Gross_Sales_Dollars_Dir] [float] NULL,
	[Gross_Sales_Pounds_Dir] [float] NULL,
	[Gross_Sales_Cs_Dir] [float] NULL,
	[Gross_Sales_Dollars_InDir] [float] NULL,
	[Gross_Sales_Pounds_InDir] [float] NULL,
	[Gross_Sales_Cs_InDir] [float] NULL,
	[PP_Open_Ordrs_Dollars] [float] NULL,
	[YAGO_GSV_DI] [float] NULL,
	[Source_Name] [nchar](10) NULL,
	[execdate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Summ_Agg_03]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Summ_Agg_03](
	[SoldTo_Num] [float] NULL,
	[SoldTo_Name] [nvarchar](50) NULL,
	[Fis_Week] [smallint] NULL,
	[Period] [smallint] NULL,
	[FISC_PERIOD] [int] NULL,
	[Fis_Quarter] [int] NULL,
	[Fis_Year] [smallint] NULL,
	[Channel] [nvarchar](50) NULL,
	[Zone_Name] [nvarchar](50) NULL,
	[District_Name] [nvarchar](50) NULL,
	[Territory_Name] [nvarchar](50) NULL,
	[PlanTo_Name] [varchar](50) NULL,
	[Super_PlanTo] [varchar](50) NULL,
	[Chain] [varchar](50) NULL,
	[Sub_Chain] [varchar](50) NULL,
	[Category] [varchar](20) NULL,
	[Base_Material] [numeric](14, 0) NULL,
	[Mtl_Desc] [nvarchar](50) NULL,
	[Field_Category] [varchar](50) NULL,
	[Master_Brand] [varchar](50) NULL,
	[Sub_Brand] [varchar](50) NULL,
	[Gross_Sales_Dollars_Dir] [float] NULL,
	[Gross_Sales_Dollars_InDir] [float] NULL,
	[YAGO_GSV_DI] [float] NULL,
	[Source_Name] [nvarchar](10) NULL,
	[execdate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_OPN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_OPN](
	[MRKTNG_SPRDSHT_TAB] [varchar](40) NULL,
	[Spcl Cse Cd] [float] NOT NULL,
	[MTL_DESC] [varchar](50) NULL,
	[CHNNL] [varchar](20) NOT NULL,
	[CATEGORY] [varchar](50) NULL,
	[Frcst Src] [varchar](20) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Acctg Yr] [int] NOT NULL,
	[PD] [int] NOT NULL,
	[OPN_ORDS_CS] [float] NULL,
	[GROS_SLS_CS_DIR] [float] NULL,
	[GROS_SLS_CS_NDIR] [float] NULL,
	[CUST_GROS_SLS_CS_DIR] [float] NULL,
	[MRKTNG_FRCST] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Spcl Cse Cd] ASC,
	[CHNNL] ASC,
	[Acctg Yr] ASC,
	[PD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TST_CHK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TST_CHK](
	[SUPER_PLAN_TO] [varchar](50) NULL,
	[FIELD_CATEGORY] [varchar](50) NULL,
	[CHANNEL] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[YEAR] [int] NULL,
	[BUDGET_GSV] [float] NULL,
	[GSV_39] [float] NULL,
	[GSV_66] [float] NULL,
	[GSV_93] [float] NULL,
	[PERIOD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WHINV_WM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WHINV_WM](
	[SUBPART_SUFFIX_TXT] [varchar](100) NULL,
	[WH_DUNS#] [varchar](100) NULL,
	[WH_Desc] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPC Desc] [varchar](100) NULL,
	[Day] [varchar](30) NULL,
	[WH_OnHand_CS] [decimal](10, 3) NULL,
	[WH_OnHand_EA] [decimal](10, 3) NULL,
	[WH_Shipped_CS] [decimal](10, 3) NULL,
	[WH_Shipped_EA] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CONS_FACT_SALE_DLY]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CONS_FACT_SALE_DLY](
	[FIN_YEAR] [int] NULL,
	[QTR_NO] [int] NULL,
	[MONTH_NO] [int] NULL,
	[WEEK_NO] [int] NULL,
	[MATERIAL_CD] [varchar](50) NULL,
	[INVOICED_CASES] [decimal](25, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CONS_PROMO_COGS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CONS_PROMO_COGS](
	[FIN_YEAR] [int] NULL,
	[PACK_SIZE] [varchar](10) NULL,
	[WD_AVG_COGS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Dp_2P_Lg_Ff]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[Dp_2P_Lg_Ff](
	[Fisc_Yr] [int] NOT NULL,
	[Cust_Chnnl] [varchar](10) NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Mtrl] [varchar](20) NOT NULL,
	[Mtrl_desc] [varchar](100) NULL,
	[Catg] [varchar](20) NULL,
	[Brnd] [varchar](20) NULL,
	[2P_Lg_P1] [varchar](20) NULL,
	[2P_Lg_P2] [varchar](20) NULL,
	[2P_Lg_P3] [varchar](20) NULL,
	[2P_Lg_P4] [varchar](20) NULL,
	[2P_Lg_P5] [varchar](20) NULL,
	[2P_Lg_P6] [varchar](20) NULL,
	[2P_Lg_P7] [varchar](20) NULL,
	[2P_Lg_P8] [varchar](20) NULL,
	[2P_Lg_P9] [varchar](20) NULL,
	[2p_Lg_P10] [varchar](20) NULL,
	[2P_Lg_P11] [varchar](20) NULL,
	[2P_Lg_P12] [varchar](20) NULL,
 CONSTRAINT [PK_Dp_2P_Lg_Ff] PRIMARY KEY CLUSTERED 
(
	[Fisc_Yr] ASC,
	[Chnnl] ASC,
	[Mtrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Dp_Dly_Snpsht_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[Dp_Dly_Snpsht_Icr](
	[Fisc_Yr] [int] NOT NULL,
	[Cust_Chnnl_Int] [int] NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Mtrl] [varchar](20) NOT NULL,
	[Mtrl_Desc] [varchar](100) NULL,
	[Catg] [varchar](20) NULL,
	[Brnd] [varchar](48) NULL,
	[Vrsn] [varchar](20) NULL,
	[P1] [varchar](20) NULL,
	[P2] [varchar](20) NULL,
	[P3] [varchar](20) NULL,
	[P4] [varchar](20) NULL,
	[P5] [varchar](20) NULL,
	[P6] [varchar](20) NULL,
	[P7] [varchar](20) NULL,
	[P8] [varchar](20) NULL,
	[P9] [varchar](20) NULL,
	[P10] [varchar](20) NULL,
	[P11] [varchar](20) NULL,
	[P12] [varchar](20) NULL,
 CONSTRAINT [PK_Dp_Dly_Snpsht_Icr] PRIMARY KEY CLUSTERED 
(
	[Fisc_Yr] ASC,
	[Chnnl] ASC,
	[Mtrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INV_SM_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INV_SM_HIST](
	[SUBPART_SUFFIX_TXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](100) NULL,
	[DAY] [date] NULL,
	[ONHANDQTY] [bigint] NULL,
	[ONHANDRETAIL] [float] NULL,
	[NWEA] [int] NULL,
	[NTEA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INV_WM_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INV_WM_HIST](
	[SUBPART_SUFFIX_TXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](100) NULL,
	[DAY] [varchar](100) NULL,
	[ONHANDQTY] [int] NULL,
	[ONHANDRETAIL] [float] NULL,
	[NWEA] [int] NULL,
	[NTEA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KAP_MKT_CONS_PROMO_STG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KAP_MKT_CONS_PROMO_STG](
	[SKU_CODE] [varchar](10) NULL,
	[SKU_DESCRIPTION] [varchar](100) NULL,
	[PROMO_CATEGORY] [varchar](20) NULL,
	[SPEND_PER_UNIT] [decimal](10, 3) NULL,
	[OFFER_DESCRIPTION] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLG_RGM_DATAMART]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLG_RGM_DATAMART](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[PT_NUM] [float] NULL,
	[PT_NAME] [varchar](255) NULL,
	[BUSINESS UNIT] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[GROUP] [varchar](255) NULL,
	[GSV] [float] NULL,
	[COP] [float] NULL,
	[KMF] [float] NULL,
	[LBS] [float] NULL,
	[NSV] [float] NULL,
	[SCM] [float] NULL,
	[SCM2] [float] NULL,
	[EDLP_CAT] [float] NULL,
	[KMF_CAT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MARKETING_TEST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MARKETING_TEST](
	[TAB] [int] NULL,
	[MRKTNG_SPRDSHT_TAB] [varchar](40) NOT NULL,
	[Spcl Cse Cd] [varchar](20) NOT NULL,
	[Frcst Src] [varchar](20) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Yr Of Proj] [varchar](10) NULL,
	[Acctg Yr] [varchar](10) NOT NULL,
	[CHNNL] [varchar](20) NOT NULL,
	[CATG] [varchar](50) NULL,
	[PD] [int] NOT NULL,
	[MRKTNG_FRCST] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MRKTNG_SPRDSHT_TAB] ASC,
	[Spcl Cse Cd] ASC,
	[Acctg Yr] ASC,
	[CHNNL] ASC,
	[PD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MKTG_FORECAST_ICR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MKTG_FORECAST_ICR](
	[TAB] [int] NULL,
	[MKTG_SPREADSHEET_TAB] [varchar](40) NULL,
	[SPECIALTY CASE CODE] [float] NULL,
	[FCST SOURCE] [varchar](20) NULL,
	[LAUNCH YEAR] [varchar](10) NULL,
	[YEAR OF PROJECT] [varchar](10) NULL,
	[ACCOUNTING YEAR] [int] NULL,
	[CHANNEL] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[PERIOD] [int] NULL,
	[MARKETING_FORECAST] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MRKTNG_FRCST_ICR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MRKTNG_FRCST_ICR](
	[TAB] [int] NULL,
	[MRKTNG_SPRDSHT_TAB] [varchar](40) NULL,
	[Spcl Cse Cd] [varchar](20) NULL,
	[Frcst Src] [varchar](20) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Yr Of Proj] [varchar](10) NULL,
	[Acctg Yr] [varchar](10) NULL,
	[CHNNL] [varchar](20) NULL,
	[CATG] [varchar](50) NULL,
	[PD] [int] NULL,
	[MRKTNG_FRCST] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Opn_Copa_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[Opn_Copa_Icr](
	[Chnnl] [varchar](255) NOT NULL,
	[Bas_Mtrl] [float] NOT NULL,
	[Catg] [varchar](255) NULL,
	[Mtrl_Desc] [varchar](50) NULL,
	[Pd] [int] NOT NULL,
	[Fisc_Yr] [int] NOT NULL,
	[Uom] [varchar](20) NULL,
	[Opn_Ords_Cs] [float] NULL,
	[Gros_Sls_Cs_Dir] [float] NULL,
	[Gros_Sls_Cs_Ndir] [float] NULL,
	[Cust_Gros_Sls_Cs_Dir] [float] NULL,
 CONSTRAINT [PK_Opn_Copa_Icr] PRIMARY KEY CLUSTERED 
(
	[Chnnl] ASC,
	[Bas_Mtrl] ASC,
	[Pd] ASC,
	[Fisc_Yr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PLAN_TO_CHAIN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PLAN_TO_CHAIN](
	[Plan To] [varchar](12) NULL,
	[Plan To Description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[POS_SM_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[POS_SM_HIST](
	[SUBPARTSUFFIXTXT] [varchar](100) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPCDESC] [varchar](100) NULL,
	[DAY] [date] NULL,
	[POS_SALES] [decimal](15, 2) NULL,
	[POS_QTY] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[POS_WM_HIST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[POS_WM_HIST](
	[SUBPARTSUFFIXTXT] [varchar](100) NULL,
	[SOLDTO] [varchar](15) NULL,
	[STORENBR] [varchar](15) NULL,
	[STOREDESC] [varchar](40) NULL,
	[UPC] [varchar](20) NULL,
	[UPCDESC] [varchar](255) NULL,
	[DAY] [varchar](10) NULL,
	[POS_SALES] [decimal](10, 3) NULL,
	[POS_QTY] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PROJ_TBL_ICR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PROJ_TBL_ICR](
	[TAB] [int] NULL,
	[MRKTNG_SPRDSHT_TAB] [varchar](48) NOT NULL,
	[PROJ] [varchar](48) NOT NULL,
	[STS] [varchar](48) NULL,
	[MRKTNG_DESC] [varchar](100) NULL,
	[SP_DESC] [varchar](50) NULL,
	[Spcl Cse Cd] [float] NOT NULL,
	[Rtl Cse Code] [varchar](48) NULL,
	[Spcl Frst Cse] [varchar](48) NULL,
	[Fcst Lst Mdfd] [varchar](48) NULL,
	[Cse Cnt] [varchar](48) NULL,
	[Cse Nt Wt] [varchar](48) NULL,
	[Cse red] [varchar](48) NULL,
	[CATG] [varchar](50) NULL,
	[Proj Ld] [varchar](48) NULL,
	[Bm Ld] [varchar](48) NULL,
PRIMARY KEY CLUSTERED 
(
	[MRKTNG_SPRDSHT_TAB] ASC,
	[PROJ] ASC,
	[Spcl Cse Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SEG_BW_SRC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SEG_BW_SRC](
	[SEG_DESC] [varchar](255) NULL,
	[SOLD_TO] [varchar](20) NULL,
	[OPR_ID] [varchar](20) NULL,
	[MATRL_ID] [varchar](20) NULL,
	[PD] [varchar](10) NULL,
	[QTR] [varchar](10) NULL,
	[YR] [varchar](10) NULL,
	[SALES_CASE_QTY_UOM] [decimal](19, 3) NULL,
	[SALES_LBS_QTY_UOM] [float] NULL,
	[SALES_KGS_QTY_UOM] [float] NULL,
	[SALES_GSV_QTY_UOM] [float] NULL,
	[TOTL_DOL] [float] NULL,
	[SRC_NM] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SEG_JOYWAVE_SRC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SEG_JOYWAVE_SRC](
	[SEG] [varchar](255) NULL,
	[SOLD_TO] [varchar](20) NULL,
	[OPR_ID] [varchar](20) NULL,
	[MATRL_ID] [varchar](20) NULL,
	[PD] [varchar](10) NULL,
	[QTR] [varchar](10) NULL,
	[YR] [varchar](10) NULL,
	[SALES_CASE_QTY_UOM] [decimal](19, 3) NULL,
	[SALES_LBS_QTY_UOM] [float] NULL,
	[SALES_KGS_QTY_UOM] [float] NULL,
	[SALES_GSV_QTY_UOM] [float] NULL,
	[SRC_NM] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SEG_TIBERSOFT_SRC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SEG_TIBERSOFT_SRC](
	[SEG] [varchar](255) NULL,
	[SOLD_TO] [varchar](20) NULL,
	[OPR_ID] [varchar](20) NULL,
	[MATRL_ID] [varchar](20) NULL,
	[PD] [varchar](10) NULL,
	[QTR] [varchar](10) NULL,
	[YR] [varchar](10) NULL,
	[SALES_CASE_QTY_UOM] [decimal](19, 3) NULL,
	[SALES_LBS_QTY_UOM] [float] NULL,
	[SALES_KGS_QTY_UOM] [float] NULL,
	[SALES_GSV_QTY_UOM] [float] NULL,
	[BILLBACK_DOL] [float] NULL,
	[REBT_DOL] [float] NULL,
	[TOTL_DOL] [float] NULL,
	[SRC_NM] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SEG_TIBERSOFT_SRC_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SEG_TIBERSOFT_SRC_FNL](
	[SEG] [varchar](255) NULL,
	[SOLD_TO] [varchar](20) NULL,
	[OPR_ID] [varchar](20) NULL,
	[MATRL_ID] [varchar](20) NULL,
	[PD] [varchar](10) NULL,
	[QTR] [varchar](10) NULL,
	[YR] [varchar](10) NULL,
	[SALES_CASE_QTY_UOM] [decimal](19, 3) NULL,
	[SALES_LBS_QTY_UOM] [float] NULL,
	[SALES_KGS_QTY_UOM] [float] NULL,
	[SALES_GSV_QTY_UOM] [float] NULL,
	[BILLBACK_DOL] [float] NULL,
	[REBT_DOL] [float] NULL,
	[TOTL_DOL] [float] NULL,
	[SRC_NM] [varchar](50) NULL,
	[RMBSMT_AMT] [decimal](38, 2) NULL,
	[MATRL_EXPNS] [float] NULL,
	[FIXD_EXPNS] [float] NULL,
	[VAR_EXPNS] [float] NULL,
	[FRGHT_AMT] [float] NULL,
	[TOTL_WHSE_AMT] [float] NULL,
	[CHNL_NBR] [varchar](2) NULL,
	[CHNL_NM] [varchar](12) NULL,
	[CATG] [varchar](50) NULL,
	[FLD_CATG] [varchar](50) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[SOLD_TO_NM] [varchar](35) NULL,
	[SHIP_TO_NM] [varchar](35) NULL,
	[CHN_NM] [varchar](35) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Sku_Lst_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[Sku_Lst_Icr](
	[Spcl Cse Cd] [float] NOT NULL,
 CONSTRAINT [PK_Sku_Lst_Icr] PRIMARY KEY CLUSTERED 
(
	[Spcl Cse Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[SPCLTY_BILLBACK_FNL_DATA]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_BILLBACK_FNL_DATA](
	[FISC_YR] [varchar](10) NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL,
	[DIST_SOLDTO_PARTY] [int] NULL,
	[MATRL_NBR] [float] NULL,
	[MATRL_DESC] [varchar](255) NULL,
	[PRFM_DT] [varchar](255) NULL,
	[STLMNT_AMT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_CPN_ALLOC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_CPN_ALLOC](
	[FISC_YR] [int] NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL,
	[CHNL_IND] [int] NULL,
	[CATG] [varchar](255) NULL,
	[BAL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_CUST_GSV_FACT_CALC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_CUST_GSV_FACT_CALC](
	[SOLDTO_NBR] [varchar](20) NULL,
	[SOLDTO_NM] [varchar](50) NULL,
	[BASE_MATRL] [decimal](14, 0) NULL,
	[MATRL_DESC] [varchar](150) NULL,
	[GSV_DOL] [float] NULL,
	[GSV_LBS] [float] NULL,
	[GSV_CASES] [float] NULL,
	[GSV_KGS] [float] NULL,
	[GSV_TYP] [varchar](15) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[CAL_WK] [int] NULL,
	[FISC_QTR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_DD_OBSPKG_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_DD_OBSPKG_FACT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SUMRY_ACCT] [varchar](100) NULL,
	[CHNL] [int] NULL,
	[CATG] [varchar](100) NULL,
	[CATG_CASES] [int] NULL,
	[TOT_CASES] [int] NULL,
	[PCT_CASE_YAGO] [float] NULL,
	[BAL] [float] NULL,
	[FNL_AMT] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_FACT](
	[SOLDTO_NBR] [int] NULL,
	[BASE_MATRL] [float] NULL,
	[GSV_DOL] [float] NULL,
	[GSV_LBS] [float] NULL,
	[GSV_CASES] [float] NULL,
	[GSV_KGS] [float] NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_QTR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[TOTL_INVC] [float] NULL,
	[RMBSMT_AMT] [float] NULL,
	[BILLBACK_AMT] [float] NULL,
	[MATRL_EXPNS] [float] NULL,
	[FIXD_EXPNS] [float] NULL,
	[VAR_EXPNS] [float] NULL,
	[SUMRY_ACCT] [varchar](100) NULL,
	[MATRL_EXPNS_CC] [float] NULL,
	[WHSE_AMT] [float] NULL,
	[FRGHT_AMT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_FNL_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_FNL_FACT](
	[SOLDTO_NBR] [int] NULL,
	[BASE_MATRL] [float] NULL,
	[GSV_DOL] [float] NULL,
	[GSV_LBS] [float] NULL,
	[GSV_CASES] [float] NULL,
	[GSV_KGS] [float] NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_QTR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[TOTL_INVC] [float] NULL,
	[RMBSMT_AMT] [float] NULL,
	[BILLBACK_AMT] [float] NULL,
	[MATRL_EXPNS] [float] NULL,
	[FIXD_EXPNS] [float] NULL,
	[VAR_EXPNS] [float] NULL,
	[CHNL] [varchar](35) NULL,
	[SOLDTO_NM] [varchar](35) NULL,
	[CHN] [varchar](35) NULL,
	[PLN_TO] [varchar](35) NULL,
	[SUPER_PLANTO] [varchar](35) NULL,
	[ZN] [varchar](35) NULL,
	[DSTR] [varchar](35) NULL,
	[TERR] [varchar](35) NULL,
	[FLD_CATG] [varchar](35) NULL,
	[CATG] [varchar](35) NULL,
	[SUMRY_ACCT] [varchar](35) NULL,
	[COST_CTR_AMT] [float] NULL,
	[MATRL_EXPNS_CC] [float] NULL,
	[WHSE_AMT] [float] NULL,
	[FRGHT_AMT] [float] NULL,
	[TOTL_INDIR_TRADE] [decimal](28, 6) NULL,
	[DUMMY_SKU_RMBSMT_AMT] [float] NULL,
	[OSD_RMBSMT_AMT] [float] NULL,
	[LOAD_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_FRGHT_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_FRGHT_FACT](
	[SUMRY_ACCT] [varchar](100) NULL,
	[CHNL] [int] NULL,
	[SOLDTO_NBR] [int] NOT NULL,
	[SOLDTO_CASES] [int] NULL,
	[TOTL_CASES] [int] NULL,
	[PCT_CASE_YAGO] [decimal](12, 8) NULL,
	[BAL] [float] NULL,
	[FRGHT_AMT] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL,
	[MATRL_NBR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_GSV_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_GSV_FACT](
	[ID] [int] NULL,
	[SOLDTO_NBR] [int] NULL,
	[SOLDTO_NM] [varchar](100) NULL,
	[BASE_MATRL] [float] NULL,
	[MATRL_DESC] [varchar](150) NULL,
	[GSV_DOL] [float] NULL,
	[GSV_LBS] [float] NULL,
	[GSV_CASES] [float] NULL,
	[GSV_KGS] [float] NULL,
	[GSV_TYP] [varchar](15) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_QTR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_INDIR_CUST_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_INDIR_CUST_FNL](
	[RETL_CHN_NM] [varchar](255) NULL,
	[CASE_CODE] [decimal](28, 0) NULL,
	[FISC_YR] [decimal](5, 0) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[CASE] [decimal](10, 5) NULL,
	[TOTL_LBS] [decimal](20, 5) NULL,
	[TOTL_KGS] [decimal](20, 5) NULL,
	[TOTL_MATRL_EXPNS] [decimal](20, 6) NULL,
	[TOTL_FIXD_EXPNS] [decimal](20, 6) NULL,
	[TOTL_VARNC_EXPNS] [decimal](20, 6) NULL,
	[TOTL_GSV] [decimal](28, 6) NULL,
	[BASE_CASE_CODE] [float] NULL,
	[FLD_CATG] [varchar](50) NULL,
	[CATG] [varchar](50) NULL,
	[CHN] [varchar](35) NULL,
	[CHNL_NM] [varchar](100) NULL,
	[TOTL_INDIR_TRADE] [decimal](28, 6) NULL,
	[LOAD_DT] [date] NULL,
	[MATRL_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_KEKO_STG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_KEKO_STG](
	[MANDT] [varchar](3) NULL,
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[BWKEY] [varchar](4) NULL,
	[BWTAR] [varchar](10) NULL,
	[KOKRS] [varchar](4) NULL,
	[KADAT] [date] NULL,
	[BIDAT] [date] NULL,
	[KADAM] [date] NULL,
	[BIDAM] [date] NULL,
	[BWDAT] [date] NULL,
	[ALDAT] [date] NULL,
	[BEDAT] [date] NULL,
	[VERID] [varchar](4) NULL,
	[STNUM] [varchar](8) NULL,
	[STLAN] [varchar](1) NULL,
	[STALT] [varchar](2) NULL,
	[STCNT] [decimal](8, 0) NULL,
	[PLNNR] [varchar](8) NULL,
	[PLNTY] [varchar](1) NULL,
	[PLNAL] [varchar](2) NULL,
	[PLNCT] [decimal](8, 0) NULL,
	[LOEKZ] [varchar](1) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[ERFNM] [varchar](12) NULL,
	[ERFMA] [varchar](12) NULL,
	[CPUDT] [date] NULL,
	[CPUDM] [date] NULL,
	[CPUTIME] [time](7) NULL,
	[FEH_ANZ] [int] NULL,
	[FEH_K_ANZ] [int] NULL,
	[FEH_STA] [varchar](2) NULL,
	[MAXMSG] [varchar](1) NULL,
	[FREIG] [varchar](1) NULL,
	[MKALK] [varchar](1) NULL,
	[BALTKZ] [varchar](1) NULL,
	[KALNR_BA] [decimal](12, 0) NULL,
	[BTYP] [varchar](4) NULL,
	[MISCH_VERH] [decimal](13, 3) NULL,
	[BWVAR_BA] [varchar](3) NULL,
	[PLSCN] [decimal](3, 0) NULL,
	[PLMNG] [decimal](15, 3) NULL,
	[SOBSL] [varchar](2) NULL,
	[SOBES] [varchar](1) NULL,
	[SOWRK] [varchar](4) NULL,
	[SOBWT] [varchar](10) NULL,
	[SODIR] [varchar](1) NULL,
	[SODUM] [varchar](1) NULL,
	[KALSM] [varchar](6) NULL,
	[AUFZA] [varchar](1) NULL,
	[BWSMR] [varchar](1) NULL,
	[SUBSTRAT] [varchar](1) NULL,
	[KLVAR] [varchar](4) NULL,
	[KOSGR] [varchar](10) NULL,
	[ZSCHL] [varchar](6) NULL,
	[POPER] [decimal](3, 0) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[STKOZ] [decimal](8, 0) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[TOPKA] [varchar](1) NULL,
	[CMF_NR] [decimal](12, 0) NULL,
	[OCS_COUNT] [decimal](5, 0) NULL,
	[OBJNR] [varchar](22) NULL,
	[ERZKA] [varchar](1) NULL,
	[LOSAU] [decimal](13, 3) NULL,
	[AUSID] [varchar](1) NULL,
	[AUSSS] [decimal](5, 2) NULL,
	[SAPRL] [varchar](4) NULL,
	[KZROH] [varchar](1) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[CUOBJID] [varchar](1) NULL,
	[TECHS] [varchar](12) NULL,
	[TYPE] [varchar](18) NULL,
	[WRKLT] [varchar](4) NULL,
	[VORMDAT] [date] NULL,
	[VORMUSR] [varchar](12) NULL,
	[FREIDAT] [date] NULL,
	[FREIUSR] [varchar](12) NULL,
	[UEBID] [varchar](4) NULL,
	[PROZESS] [varchar](18) NULL,
	[PR_VERID] [varchar](4) NULL,
	[CSPLIT] [varchar](4) NULL,
	[KZKUP] [varchar](1) NULL,
	[FXPRU] [varchar](1) NULL,
	[CFXPR] [varchar](1) NULL,
	[ZIFFR] [decimal](3, 0) NULL,
	[SUMZIFFR] [decimal](5, 0) NULL,
	[AFAKT] [float] NULL,
	[VBELN] [varchar](10) NULL,
	[POSNR] [decimal](6, 0) NULL,
	[PSPNR] [decimal](8, 0) NULL,
	[SBDKZ] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[BESKZ] [varchar](1) NULL,
	[DISST] [varchar](3) NULL,
	[KALST] [decimal](4, 0) NULL,
	[TEMPLATE] [varchar](10) NULL,
	[PATNR] [decimal](6, 0) NULL,
	[PART_VRSN] [decimal](2, 0) NULL,
	[ELEHK] [varchar](2) NULL,
	[ELEHKNS] [varchar](2) NULL,
	[VOCNT] [decimal](1, 0) NULL,
	[GSBER] [varchar](4) NULL,
	[PRCTR] [varchar](10) NULL,
	[TPVAR] [varchar](3) NULL,
	[KURST] [varchar](4) NULL,
	[MGTYP] [varchar](5) NULL,
	[HWAER] [varchar](5) NULL,
	[FWAER_KPF] [varchar](5) NULL,
	[REFID] [decimal](2, 0) NULL,
	[MEINH_WS] [varchar](3) NULL,
	[KZWSO] [varchar](1) NULL,
	[ASL] [varchar](1) NULL,
	[KALAID] [varchar](8) NULL,
	[KALADAT] [date] NULL,
	[OTYP] [varchar](2) NULL,
	[BAPI_CREATED] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_KEPH_STG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_KEPH_STG](
	[MANDT] [varchar](3) NULL,
	[BZOBJ] [varchar](1) NOT NULL,
	[KALNR] [decimal](12, 0) NOT NULL,
	[KALKA] [varchar](2) NOT NULL,
	[KADKY] [date] NOT NULL,
	[TVERS] [decimal](2, 0) NOT NULL,
	[BWVAR] [varchar](3) NOT NULL,
	[KKZMA] [varchar](1) NOT NULL,
	[PATNR] [decimal](6, 0) NOT NULL,
	[KEART] [varchar](1) NOT NULL,
	[LOSFX] [varchar](1) NOT NULL,
	[KKZST] [varchar](1) NOT NULL,
	[KKZMM] [varchar](1) NOT NULL,
	[DIPA] [varchar](1) NOT NULL,
	[KST001] [decimal](13, 2) NULL,
	[KST002] [decimal](13, 2) NULL,
	[KST003] [decimal](13, 2) NULL,
	[KST004] [decimal](13, 2) NULL,
	[KST005] [decimal](13, 2) NULL,
	[KST006] [decimal](13, 2) NULL,
	[KST007] [decimal](13, 2) NULL,
	[KST008] [decimal](13, 2) NULL,
	[KST009] [decimal](13, 2) NULL,
	[KST010] [decimal](13, 2) NULL,
	[KST011] [decimal](13, 2) NULL,
	[KST012] [decimal](13, 2) NULL,
	[KST013] [decimal](13, 2) NULL,
	[KST014] [decimal](13, 2) NULL,
	[KST015] [decimal](13, 2) NULL,
	[KST016] [decimal](13, 2) NULL,
	[KST017] [decimal](13, 2) NULL,
	[KST018] [decimal](13, 2) NULL,
	[KST019] [decimal](13, 2) NULL,
	[KST020] [decimal](13, 2) NULL,
	[KST021] [decimal](13, 2) NULL,
	[KST022] [decimal](13, 2) NULL,
	[KST023] [decimal](13, 2) NULL,
	[KST024] [decimal](13, 2) NULL,
	[KST025] [decimal](13, 2) NULL,
	[KST026] [decimal](13, 2) NULL,
	[KST027] [decimal](13, 2) NULL,
	[KST028] [decimal](13, 2) NULL,
	[KST029] [decimal](13, 2) NULL,
	[KST030] [decimal](13, 2) NULL,
	[KST031] [decimal](13, 2) NULL,
	[KST032] [decimal](13, 2) NULL,
	[KST033] [decimal](13, 2) NULL,
	[KST034] [decimal](13, 2) NULL,
	[KST035] [decimal](13, 2) NULL,
	[KST036] [decimal](13, 2) NULL,
	[KST037] [decimal](13, 2) NULL,
	[KST038] [decimal](13, 2) NULL,
	[KST039] [decimal](13, 2) NULL,
	[KST040] [decimal](13, 2) NULL,
	[ZPATNR] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC,
	[PATNR] ASC,
	[KEART] ASC,
	[LOSFX] ASC,
	[KKZST] ASC,
	[KKZMM] ASC,
	[DIPA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_MATRL_VARNC_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[SPCLTY_MATRL_VARNC_FACT](
	[CHNL] [int] NULL,
	[SOLDTO_NBR] [int] NOT NULL,
	[FNL_AMT] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_PD] [int] NULL,
	[MATRL_NBR] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[SPCLTY_RMBSMT_FISC_YR_PD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_RMBSMT_FISC_YR_PD](
	[SOLDTO_NBR] [int] NULL,
	[SOLDTO_NM] [varchar](100) NULL,
	[MATRL_NBR] [float] NULL,
	[AGRMT_NBR] [varchar](10) NULL,
	[STLMNT_AMT] [float] NULL,
	[STLMNT_TYP] [varchar](25) NULL,
	[FISC_YR] [varchar](10) NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SPCLTY_TOT_DIST_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[SPCLTY_TOT_DIST_FACT](
	[SUMRY_ACCT] [varchar](100) NULL,
	[CHNL] [int] NULL,
	[SOLDTO_NBR] [int] NOT NULL,
	[SOLDTO_CASES] [int] NULL,
	[TOT_CASES] [int] NULL,
	[PCT_CASE_YAGO] [decimal](12, 8) NULL,
	[BAL] [float] NULL,
	[FNL_AMT] [float] NULL,
	[FISC_YR] [int] NULL,
	[FISC_QTR] [int] NULL,
	[FISC_PD] [int] NULL,
	[MATRL_NBR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_JOYWAVE_POSTING_LOG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[STG_JOYWAVE_POSTING_LOG](
	[LOG] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[STG_Mrktng_Ld_Pt_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Mrktng_Ld_Pt_Icr](
	[Proj] [varchar](48) NULL,
	[Mrktng_Sbprjct] [varchar](40) NOT NULL,
	[Sts] [varchar](48) NULL,
	[Spcl Cse Cd] [float] NOT NULL,
	[Mtrl_Desc] [varchar](50) NULL,
	[Lnch_Dt] [varchar](48) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Catg] [varchar](255) NULL,
	[Fisc_Yr] [int] NOT NULL,
	[Pd] [int] NOT NULL,
	[Opn_Ords_Cs] [float] NULL,
	[Gros_Sls_Cs_Dir] [float] NULL,
	[Gros_Sls_Cs_Ndir] [float] NULL,
	[Cust_Gros_Sls_Cs_Dir] [float] NULL,
	[Frcst_Src] [varchar](20) NULL,
	[Mrktng_Frcst] [float] NULL,
	[Mrktng_Ld] [varchar](48) NULL,
 CONSTRAINT [PK_STG_Mrktng_Ld_Pt_Icr] PRIMARY KEY CLUSTERED 
(
	[Spcl Cse Cd] ASC,
	[Chnnl] ASC,
	[Fisc_Yr] ASC,
	[Pd] ASC,
	[Mrktng_Sbprjct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Mrktng_Ordrs_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Mrktng_Ordrs_Icr](
	[Mrktng_Sprdsht_Tab] [varchar](40) NOT NULL,
	[Spcl Cse Cd] [float] NOT NULL,
	[Mtrl_Desc] [varchar](50) NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[Catg] [varchar](50) NULL,
	[Frcst Src] [varchar](20) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Fisc_Yr] [int] NOT NULL,
	[Pd] [int] NOT NULL,
	[Opn_Ords_Cs] [float] NULL,
	[Gros_Sls_Cs_Dir] [float] NULL,
	[Gros_Sls_Cs_Ndir] [float] NULL,
	[Cust_Gros_Sls_Cs_Dir] [float] NULL,
	[Mrktng_Frcst] [float] NULL,
 CONSTRAINT [PK_STG_Mrktng_Ordrs_Icr] PRIMARY KEY CLUSTERED 
(
	[Spcl Cse Cd] ASC,
	[Chnnl] ASC,
	[Fisc_Yr] ASC,
	[Pd] ASC,
	[Mrktng_Sprdsht_Tab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Mrktng_Trckr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Mrktng_Trckr](
	[Tab] [varchar](4) NULL,
	[Mrktng Sprddht Tab] [varchar](40) NOT NULL,
	[Spcl Cse Cd] [varchar](20) NOT NULL,
	[Frcst Src] [varchar](20) NULL,
	[Lnch Yr] [varchar](10) NULL,
	[Yr Of Proj] [varchar](10) NULL,
	[Acctg Yr] [varchar](10) NOT NULL,
	[Chnnl] [varchar](20) NOT NULL,
	[P01] [varchar](10) NULL,
	[P02] [varchar](10) NULL,
	[P03] [varchar](10) NULL,
	[P04] [varchar](10) NULL,
	[P05] [varchar](10) NULL,
	[P06] [varchar](10) NULL,
	[P07] [varchar](10) NULL,
	[P08] [varchar](10) NULL,
	[P09] [varchar](10) NULL,
	[P10] [varchar](10) NULL,
	[P11] [varchar](10) NULL,
	[P12] [varchar](10) NULL,
 CONSTRAINT [PK_STG_Mrktng_Trckr] PRIMARY KEY CLUSTERED 
(
	[Spcl Cse Cd] ASC,
	[Acctg Yr] ASC,
	[Chnnl] ASC,
	[Mrktng Sprddht Tab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Proj_Tbl_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Proj_Tbl_Icr](
	[Tab] [varchar](4) NULL,
	[Mrktng Sprdsht Tab Nm] [varchar](48) NOT NULL,
	[Proj] [varchar](48) NULL,
	[Sts] [varchar](48) NULL,
	[Desc] [varchar](100) NULL,
	[Spcl Cse Cd] [varchar](48) NOT NULL,
	[Rtl Cse Cd] [varchar](48) NULL,
	[Spcl Frst Cse] [varchar](48) NULL,
	[Frcst Lst Mdfd] [varchar](48) NULL,
	[Cse Cnt] [varchar](48) NULL,
	[Cse Nt Wt] [varchar](48) NULL,
	[Cse Red] [varchar](48) NULL,
	[Proj Ld] [varchar](48) NULL,
	[Bm Ld] [varchar](48) NULL,
 CONSTRAINT [PK_STG_Proj_Tbl_Icr] PRIMARY KEY CLUSTERED 
(
	[Spcl Cse Cd] ASC,
	[Mrktng Sprdsht Tab Nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[SYSCO_PIVOT_WK_QTY]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[SYSCO_PIVOT_WK_QTY](
	[SNP_SHT_PRD] [varchar](255) NULL,
	[CMPNY_NBR] [varchar](255) NULL,
	[MATRL] [varchar](255) NULL,
	[PIVOT_SEQ] [int] NULL,
	[WEEK] [varchar](44) NULL,
	[QTY] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[USER_SEC_TEST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[USER_SEC_TEST](
	[USER_NAME] [varchar](255) NULL,
	[LEVEL3_CD] [varchar](255) NULL,
	[LEVEL3_DESCRIPTION] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[USFS_PIVOT_WK_QTY]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[USFS_PIVOT_WK_QTY](
	[MATRL_NBR] [varchar](255) NULL,
	[DIVN_NBR] [char](4) NULL,
	[SNPSHT_PD] [varchar](255) NULL,
	[WK_SEQ] [int] NULL,
	[SNPSHT_WK] [varchar](40) NULL,
	[SNPSHT_QTY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[WALMART_POS_ENRCH]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[WALMART_POS_ENRCH](
	[UPC] [varchar](100) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[SOLDTO] [varchar](100) NULL,
	[STORENBR] [varchar](100) NULL,
	[STOREDESC] [varchar](100) NULL,
	[CATEGORY] [varchar](40) NULL,
	[SUB_CATEGORY] [varchar](40) NULL,
	[BRAND] [varchar](40) NULL,
	[SEGMENT] [varchar](40) NULL,
	[BU] [varchar](60) NULL,
	[MATRL_STATUS] [varchar](8) NOT NULL,
	[DAY] [date] NULL,
	[WK_STARTING] [date] NULL,
	[YEAR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[WEEK] [decimal](3, 0) NULL,
	[WM_FISC_WK_STRT_DT] [date] NULL,
	[WM_FISC_YR] [varchar](4) NULL,
	[WM_FISC_PD] [int] NULL,
	[WM_FISC_WK] [int] NULL,
	[TOTAL_SALES] [decimal](38, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UVW_SNACKS_CALL_COVERAGE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/10/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns all the latest Call Coverage details for the present quarter for all the KSR's along with the KSR and KSM Emp Number
-- =============================================

 CREATE VIEW [dbo].[UVW_SNACKS_CALL_COVERAGE]
 AS
 SELECT 
 CC.TERRITORYPRIMARYREPEMPNUM           AS KSR_EMPNUM
,CC.TERRITORYPRIMARYREPKSMMANAGEREMPNUM AS KSM_EMPNUM
,CUST.TERR_NBR
,CUST.TERR
,CUST.ZN
,CUST.ZN_NBR
,CUST.[RGN]
,CUST.RGN_NBR
,COMPLETEDVISITSCOUNT					AS CALL_COVRG_ACTL
,NOTCANCELLEDVISITSCOUNT				AS CALL_COVRG_TRGT
,'QTD'									AS PD_DESC
,CONVERT(DATE,ENDDATE)					AS ENDDATE
FROM 
(
SELECT TERRITORYPRIMARYREPEMPNUM
      ,TERRITORYPRIMARYREPKSMMANAGEREMPNUM
	  ,COMPLETEDVISITSCOUNT
	  ,NOTCANCELLEDVISITSCOUNT
	  ,TERRITORYEXTERNALID
	  ,ENDDATE
	  ,ROW_NUMBER()over(partition by TERRITORYEXTERNALID order by ENDDATE desc) as LATST
FROM  
[KNA_EXTERNAL].[SIF].[SNACKS_CALL_COVERAGE]  WITH (NOLOCK)) AS CC 
INNER JOIN
--Here we are joining with the Customer Hierachy based on the territory number 
(
SELECT 
[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR 
FROM 
[KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER]  WITH (NOLOCK) 
GROUP BY  [RGN],RGN_NBR,[ZN],ZN_NBR,[TERR],TERR_NBR
) AS CUST
ON
CC.TERRITORYEXTERNALID = CUST.TERR_NBR 
AND 
--Here we are taking only the latest call coverage details
CC.LATST = 1


GO
/****** Object:  View [dbo].[UVW_SNACKS_DATAFEED]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/24/2017
-- Modified By		:  
-- Modified date	:	
-- Description		: Returns the Latest Safety details of all the Employees 
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_DATAFEED]
AS 
       
SELECT  
EMPLOYEENUMBER AS EMPL_NUM
--Here we are considering the OBSERVATION value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [OBSERVATION] = 2 THEN 1 ELSE 0 END AS  [OBSERVATION]
--Here we are considering the SAFETYMESSAGE1 value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [SAFETYMESSAGE1]= 2 THEN 1 ELSE 0 END AS [SAFETYMESSAGE1]
----Here we are considering the SAFETYMESSAGE2 value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [SAFETYMESSAGE2]= 2 THEN 1 ELSE 0 END AS [SAFETYMESSAGE2]
----Here we are considering the MODULE value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [MODULE] = 2 THEN 1 ELSE 0 END AS [MODULE]
,CONVERT(DATE,DATE_LOADED) AS LAST_MOD
FROM
(
SELECT 
EMPLOYEENUMBER
,OBSERVATION
,SAFETYMESSAGE1
,SAFETYMESSAGE2
,MODULE
,DATE_LOADED
,ROW_NUMBER()over(partition by [EMPLOYEENUMBER] order by DATE_LOADED desc) as LATST
FROM  [KNA_EXTERNAL].[KEEP_SAFE].[SNACKS_DATAFEED] WITH (NOLOCK)) AS SAFE 
--We are retriveing only the latest safety details based on the DATE_LOADED
WHERE SAFE.LATST = 1
 





GO
/****** Object:  View [dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/10/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns all the Safety Messages for all the  KSM's along with the Region Details
-- =============================================

CREATE VIEW  [dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSM]
AS
SELECT        
CC.ZN_NBR, 
CC.ZN, 
SUM(CC.CALL_COVRG_ACTL) AS CALL_COVRG_ACTL, 
SUM(CC.CALL_COVRG_TRGT) AS CALL_COVRG_TRGT, 
CC.RGN, 
CC.RGN_NBR, 
--CC.KSM_EMPNUM AS A_KSM,
--CONCAT('00',KS_A.EMPL_NUM) AS KS_A_EMPL_NUM,
KS_A.OBSERVATION        AS OBSRVTN, 
KS_A.SAFETYMESSAGE1     AS SAFETY_MSG1, 
KS_A.SAFETYMESSAGE2     AS SAFETY_MSG2, 
KS_A.MODULE             AS MODULE
FROM            
[dbo].[UVW_SNACKS_CALL_COVERAGE]  AS CC WITH (NOLOCK)
LEFT JOIN
[dbo].[UVW_SNACKS_DATAFEED]  AS  KS_A WITH (NOLOCK)
---Here we are joining the KSM Emp Number with the Keep Safe Employer Number 
ON CC.KSM_EMPNUM = CONCAT('00',KS_A.EMPL_NUM)
GROUP BY
CC.ZN_NBR, 
CC.ZN, 
CC.RGN, 
CC.RGN_NBR, 
--CC.KSM_EMPNUM,
--CONCAT('00',KS_A.EMPL_NUM),
KS_A.OBSERVATION,   
KS_A.SAFETYMESSAGE1, 
KS_A.SAFETYMESSAGE2, 
KS_A.MODULE     


						

				







GO
/****** Object:  View [dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/10/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns all the latest Safety Messages for all the  KSR's
-- =============================================
CREATE VIEW  [dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSR]
AS
SELECT        
CC.TERR_NBR, 
CC.TERR,
CC.ZN,
CC.ZN_NBR,
ISNULL(KS_T.OBSERVATION,0)    AS OBSRVTN, 
ISNULL(KS_T.SAFETYMESSAGE1,0) AS SAFETY_MSG1, 
ISNULL(KS_T.SAFETYMESSAGE2,0) AS SAFETY_MSG2, 
ISNULL(KS_T.MODULE,0)         AS MODULE,
CC.RGN, 
CC.RGN_NBR
FROM            
dbo.UVW_SNACKS_CALL_COVERAGE AS CC WITH (NOLOCK)
LEFT JOIN
[dbo].[UVW_SNACKS_DATAFEED] AS KS_T WITH (NOLOCK)
---Here we are joining the KSR Emp Number with the Keep Safe Employer Number 
ON CC.KSR_EMPNUM = KS_T.EMPL_NUM


						

				





GO
/****** Object:  View [dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSR_KSM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/10/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns all  KSM's latest Safety details for all the Territorries
-- =============================================


CREATE VIEW  [dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSR_KSM]
AS

SELECT 
CC.TERR_NBR, 
CC.TERR,        
CC.ZN_NBR, 
CC.ZN, 
CC.RGN, 
CC.RGN_NBR, 
--CC.TERRITORYPRIMARYREPKSMMANAGEREMPNUM AS A_KSM,
KS_A.OBSERVATION    AS OBSRVTN, 
KS_A.SAFETYMESSAGE1 AS SAFETY_MSG1, 
KS_A.SAFETYMESSAGE2 AS SAFETY_MSG2, 
KS_A.MODULE         AS MODULE
FROM            
dbo.UVW_SNACKS_CALL_COVERAGE AS CC WITH (NOLOCK)
LEFT JOIN
[dbo].[UVW_SNACKS_DATAFEED] AS KS_A  WITH (NOLOCK)
---Here we are joining the KSM Emp Number with the Keep Safe Employer Number 
ON CC.KSM_EMPNUM = CONCAT('00',KS_A.EMPL_NUM)



GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	05/26/2017
-- Modified By		:   Vikram Ganti
-- Modified date	:	08/27/2017
-- Description		: Returns the POS_Sales and Budget for Nielsen and Walmart for Q1,Q2,Q3,Q4 and YTD.
-- Comments			: Applied Nielsen Date as PD_DT
-- =============================================




---KSR Sales and Budget for the KSR Activity By KSM
CREATE VIEW [dbo].[UVW_SNACKS_RPT_KSR_BUD]
AS

WITH KSR_BUD_CTE AS
(
 SELECT  SOLD_TO_NBR,DOL_SALE,BUD,PD_DESC
  FROM
  --Making the Budget as Zero for the Stores if there Dollar Sale is zero
  (
  SELECT KSR_B.SOLD_TO_NBR,ISNULL(KSR_B.DOL_SALE,0) as DOL_SALE,CASE WHEN KSR_B.DOL_SALE = 0 THEN 0 ELSE ISNULL(KSR_B.BUD ,0) END AS BUD,KSR_B.PD_DESC
  FROM
  --Getting all the Dollar sale and Budget at Store level and not considering the Publix retailer
  (SELECT 
   KSR_A.[SOLD_TO_NBR]
   ,SUM(KSR_A.[DOL_SALE]) AS DOL_SALE
   ,SUM(KSR_A.[BUD]) AS BUD
   ,KSR_A.PD_DESC
   FROM [KNA_SALES].[dbo].[SNACKS_RPT_KSR_BUD] AS KSR_A WITH (NOLOCK)
   WHERE 
   KSR_A.PLN_TO_NBR!= '0000300850'
   GROUP BY
   KSR_A.[SOLD_TO_NBR],KSR_A.PD_DESC) AS  
   KSR_B
	  WHERE
	  KSR_B.DOL_SALE = 0 
	  ) AS KSR_C
)


SELECT KSR.[CORP]
      ,KSR.[CATG]
      ,KSR.[PD_DT]
      ,KSR.[CO]
      ,KSR.[RGN]
      ,KSR.[RGN_NBR]
      ,KSR.[ZN]
      ,KSR.[ZN_NBR]
      ,KSR.[TYP]
      ,KSR.[TERR]
      ,KSR.[TERR_NBR]
      ,KSR.[PLN_TO]
      ,KSR.[PLN_TO_NBR]
      ,KSR.[CHN]
      ,KSR.[CHN_NBR]
      ,KSR.[SOLD_TO]
      ,KSR.[SOLD_TO_NBR]
      ,KSR.[STORE]
      ,KSR.[PD_FULL_DESC]
      ,KSR.[PD_DESC]
      ,KSR.[DOL_SALE]
      ,KSR.[BUD]
      ,KSR.[PACE]
 
   FROM [KNA_SALES].[dbo].[SNACKS_RPT_KSR_BUD] AS KSR WITH (NOLOCK)
   LEFT OUTER JOIN
   KSR_BUD_CTE
   ON
   KSR.PD_DESC = KSR_BUD_CTE.PD_DESC
   AND
   KSR.SOLD_TO_NBR = KSR_BUD_CTE.SOLD_TO_NBR

  WHERE
  KSR_BUD_CTE.SOLD_TO_NBR IS NULL  AND
  KSR.PLN_TO_NBR!= '0000300850'

  UNION ALL

  SELECT 
       KSR.[CORP]
      ,KSR.[CATG]
      ,KSR.[PD_DT]
      ,KSR.[CO]
      ,KSR.[RGN]
      ,KSR.[RGN_NBR]
      ,KSR.[ZN]
      ,KSR.[ZN_NBR]
      ,KSR.[TYP]
      ,KSR.[TERR]
      ,KSR.[TERR_NBR]
      ,KSR.[PLN_TO]
      ,KSR.[PLN_TO_NBR]
      ,KSR.[CHN]
      ,KSR.[CHN_NBR]
      ,KSR.[SOLD_TO]
      ,KSR.[SOLD_TO_NBR]
      ,KSR.[STORE]
      ,KSR.[PD_FULL_DESC]
      ,KSR.[PD_DESC]
      ,0 AS [DOL_SALE]
      ,0 AS [BUD]
      ,KSR.[PACE]
  FROM [KNA_SALES].[dbo].[SNACKS_RPT_KSR_BUD] AS KSR WITH (NOLOCK)
 LEFT OUTER JOIN
   KSR_BUD_CTE
   ON
   KSR.PD_DESC = KSR_BUD_CTE.PD_DESC
   AND
   KSR.SOLD_TO_NBR = KSR_BUD_CTE.SOLD_TO_NBR

  WHERE
  KSR_BUD_CTE.SOLD_TO_NBR IS  NOT NULL

  AND
  KSR.PLN_TO_NBR!= '0000300850'


GO
/****** Object:  View [dbo].[UVW_SNACKS_VST_AUDIT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/19/2017
-- Modified By		:   Abhilash Mogili
-- Modified date	:	08/29/2017
-- Description		:  Calculating the latest Store Authorization and Indistribution at Territory Level for all Categories for Present Quarter
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_VST_AUDIT]
AS

With QTD
as
(
SELECT 
A.VISITGUID AS VST_GUID
,A.STOREEXTERNALID AS STORE_EXTR_IT
,A.STORENAME AS STORE_NM
,A.STOREPRIMETERRITORYEXTERNALID AS STORE_PRMRY_TERR_EXTR_ID
,A.STOREPRIMETERRITORYNAME AS STORE_PRMY_TERR_NM
,CASE WHEN B.CATEGORY = 'Bars' THEN 'Wholesome' 
	  WHEN B.CATEGORY = 'Salty Snac' THEN 'Salty Snacks' 
	  WHEN B.CATEGORY = 'Fruit Snac' THEN 'Fruit Snacks' ELSE ISNULL(B.CATEGORY,'')
END AS CATG
,ISNULL(B.STOREAUTHORIZATION,0) AS STORE_AUTHZN
,ISNULL(B.INDISTRIBUTION,0) AS IN_DISTBN
,ACTUALSTARTDATETIME
, CASE WHEN REPITEMALERT = 1 THEN ISNULL(B.STOREAUTHORIZATION,0) END AS OOS_AUDIT
FROM
(Select *,ROW_NUMBER()over(PARTITION BY STOREEXTERNALID order by ACTUALFINISHDATETIME desc) as LAT
FROM  [KNA_EXTERNAL].[SIF].[REX_VISIT] WITH (NOLOCK)
WHERE STOREPRIMETERRITORYEXTERNALID NOT LIKE 'Chicago%'
) A 
INNER JOIN 
[KNA_EXTERNAL].[SIF].[REX_AUDIT] B WITH (NOLOCK)
ON A.VISITGUID=B.VISITGUID and A.LAT = 1
)

SELECT
STORE_PRMRY_TERR_EXTR_ID,STORE_PRMY_TERR_NM,CATG
,SUM(STORE_AUTHZN) AS STORE_AUTHZN , SUM(IN_DISTBN) AS IN_DISTBN
,COUNT(CONVERT(DECIMAL(18,3),OOS_AUDIT)) AS OOS_AUDIT
FROM QTD
WHERE
CATG IN ('Crackers','Cookies','Fruit Snacks','Salty Snacks','Wholesome')
GROUP BY
STORE_PRMRY_TERR_EXTR_ID,STORE_PRMY_TERR_NM,CATG












GO
/****** Object:  View [dbo].[UVW_SNACKS_VST_DISP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/19/2017
-- Modified By		:
-- Modified date	:	
-- Description		:  Calculating the lastest Display Quantities at Territory Level for all Categories
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_VST_DISP]
AS
WITH QTD AS
(
Select *,ROW_NUMBER()over(partition by STORE_EXTR_IT,CATG order by ACTUALFINISHDATETIME desc) as LAT
FROM
(SELECT 
 VISIT.STOREEXTERNALID AS STORE_EXTR_IT
,VISIT.STORENAME AS STORE_NM
,DISPLAY.VISITGUID AS VST_GUID
,DISPLAY.CATEGORY AS CATG
,DISPLAY.QUANTITY AS QTY
,VISIT.KEYACCOUNTEXTERNALID
,VISIT.KEYACCOUNTNAME
,VISIT.CONSULTANTID
,VISIT.CONSULTANTFIRSTNAME
,VISIT.CONSULTANTLASTNAME
,VISIT.STOREPRIMETERRITORYEXTERNALID AS STORE_PRMRY_TERR_EXTR_ID
,VISIT.STOREPRIMETERRITORYNAME AS STORE_PRMY_TERR_NM
,VISIT.ACTUALSTARTDATETIME 
,VISIT.ACTUALFINISHDATETIME
,VISIT.SCHEDULEDSTARTDATETIME
,VISIT.SCHEDULEDFINISHDATETIME
FROM
(
SELECT * 
FROM  [KNA_EXTERNAL].[SIF].[SNACKS_VISIT] WITH (NOLOCK)
WHERE STOREPRIMETERRITORYEXTERNALID NOT LIKE 'Chicago%') AS VISIT
INNER JOIN
(
SELECT DISTINCT
CASE WHEN DETAILITEMEXTERNALID = 'KWh' THEN 'Wholesome'
	 WHEN DETAILITEMEXTERNALID = 'KCr'  THEN 'Crackers'
	 WHEN 	DETAILITEMEXTERNALID = 'KSa' THEN 'Salty Snacks'
	 WHEN DETAILITEMEXTERNALID = 'KCo'	   THEN 'Cookies'
	 WHEN DETAILITEMEXTERNALID =  'KOt'    THEN 'On-The-Go'
	 WHEN DETAILITEMEXTERNALID =   'KFr'	   THEN 'Fruit Snacks'
END AS CATEGORY,VISITGUID,DETAILITEMNAME,QUANTITY
FROM [KNA_EXTERNAL].[SIF].[SNACKS_DISPLAY] WITH (NOLOCK)
WHERE DETAILITEMEXTERNALID LIKE 'K%' AND DETAILITEMEXTERNALID != 'KCh') AS DISPLAY
ON
VISIT.VISITGUID = DISPLAY.VISITGUID
AND
--CONVERT(DATE,VISIT.ACTUALFINISHDATETIME)>=DATEADD(day,-30, getdate())
CONVERT(DATE,VISIT.ACTUALFINISHDATETIME)>=DATEADD(day,-90, getdate())  

) AS VISIT_DISPLAY
)


SELECT 
--VST_GUID,STORE_EXTR_IT,STORE_NM,
STORE_PRMRY_TERR_EXTR_ID,STORE_PRMY_TERR_NM,CATG,SUM(QTY) AS QTY
FROM QTD
WHERE LAT = 1
GROUP BY STORE_PRMRY_TERR_EXTR_ID,STORE_PRMY_TERR_NM,CATG
--ORDER BY STORE_EXTR_IT










GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_PRFCT_STORE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




















-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/30/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the POS $ Vs Budget and Call Coverage for the Present Quarter
--					:   Returns Display Qauntities for all territories from Last 30 days based on latest store visit
--                  :   Store Authorization,InDistribution,Out-of-Stock for all territories based on latest store visit
-- =============================================

CREATE VIEW [dbo].[UVW_SNACKS_RPT_PRFCT_STORE]
AS


with CATG AS
(
SELECT 
 CATG 
 FROM [KNA_SALES].[dbo].[UVW_SNACKS_VST_AUDIT] WITH (NOLOCK)
 GROUP BY CATG
        ),
DISP_CATG AS
(
SELECT  CATG 
FROM [KNA_SALES].[dbo].[UVW_SNACKS_VST_DISP] WITH (NOLOCK)
GROUP BY CATG
),
CUST AS
(
SELECT  
[RGN]
,RGN_NBR 
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,SOLD_TO_NBR
FROM [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY  
[RGN]
,RGN_NBR 
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,SOLD_TO_NBR

)


--Getting the POS Dollar Sale and Budget for each Territory for all categories for Present Quarter


SELECT 
 SUM([DOL_SALE]) AS DOL_SALE
,SUM([BUD]) AS [BUD]
,'POS' AS TYP
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS OOS_AUDIT
,NULL AS [QTY]
,NULL AS STORES
,NULL AS CALL_COVRG_ACTL
,NULL AS CALL_COVRG_TRGT
,'QTD' AS PD_DESC
,PD_DT
,CATG COLLATE DATABASE_DEFAULT AS CATG
,[RGN] COLLATE DATABASE_DEFAULT AS RGN
,[RGN_NBR] COLLATE DATABASE_DEFAULT AS RGN_NBR
,[ZN] COLLATE DATABASE_DEFAULT AS ZN
,[ZN_NBR] COLLATE DATABASE_DEFAULT AS ZN_NBR
,[TERR] COLLATE DATABASE_DEFAULT AS TERR
,[TERR_NBR] COLLATE DATABASE_DEFAULT AS TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
,PACE
FROM 

(SELECT
       KSR_BUD.[CORP]
      ,KSR_BUD.[CATG]
      ,KSR_BUD.[PD_DT]
      ,KSR_BUD.[CO]
      ,CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,[TYP]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR]
      ,[STORE]
      ,[PD_FULL_DESC]
      ,[PD_DESC]
      ,[DOL_SALE]
      ,[BUD]
      ,[PACE]
  FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_KSR_BUD]  AS KSR_BUD
  INNER JOIN
   [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] AS CUST
  ON
  KSR_BUD.SOLD_TO_NBR = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
  ) AS KSR

WHERE

 PD_DESC = 'Q'+CAST(DATEPART(QUARTER,PD_DT) AS VARCHAR(1))
GROUP BY
PD_DESC
,PD_DT
,CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,PACE

UNION ALL

---Getting the Store Authorization and Indistribution values for all the catgories at each Territory for present quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'DISTRIBUTION' AS TYP
,ISNULL(STORE_AUTHZN,0) AS STORE_AUTHZN
,ISNULL(IN_DISTBN,0) AS IN_DISTBN
,OOS_AUDIT
,NULL AS [QTY]
,NULL AS STORES
,NULL AS CALL_COVRG_ACTL
,NULL AS CALL_COVRG_TRGT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(LAST_MOD)))) FROM [KNA_EXTERNAL].[SIF].[SNACKS_VISIT] WITH (NOLOCK))  AS  PD_DT
,ISNULL(AUDIT.CATG,C.CATG) as CATG
,CUST.[RGN]
,CUST.RGN_NBR
,CUST.[ZN]
,CUST.ZN_NBR
,CUST.[TERR]
,CUST.TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
, NULL AS PACE
FROM  
(SELECT  
     [RGN]
	 ,RGN_NBR 
    ,[ZN]
	,ZN_NBR
    ,[TERR]
    ,TERR_NBR 
  FROM 
  CUST
  GROUP BY  
      [RGN]
	 ,RGN_NBR 
    ,[ZN]
	,ZN_NBR
    ,[TERR]
    ,TERR_NBR 
) CUST
LEFT JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_VST_AUDIT] AS AUDIT WITH (NOLOCK)
ON
AUDIT.STORE_PRMRY_TERR_EXTR_ID = CONVERT(DECIMAL(18,0),CUST.TERR_NBR)
LEFT JOIN CATG  as C
ON 
AUDIT.STORE_PRMRY_TERR_EXTR_ID is null


UNION ALL

---Getting the Display Quantity for all the Categories at Territory Level for present quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'DISPLAY' AS TYP
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS OOS_AUDIT
,CONVERT(DECIMAL(10,4),ISNULL(DISP.QTY,0)) AS QTY
,COUNT(CUST.SOLD_TO_NBR) AS STORES
,NULL AS CALL_COVRG_ACTL
,NULL AS CALL_COVRG_TRGT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(LAST_MOD)))) FROM [KNA_EXTERNAL].[SIF].[SNACKS_DISPLAY] WITH (NOLOCK)) AS  PD_DT
,ISNULL(DISP.CATG,C.CATG) as CATG
,CUST.[RGN]
,CUST.RGN_NBR
,CUST.[ZN]
,CUST.ZN_NBR
,CUST.[TERR]
,CUST.TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
,NULL AS PACE
FROM  
CUST
LEFT JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_VST_DISP] AS DISP
ON
DISP.STORE_PRMRY_TERR_EXTR_ID = CONVERT(DECIMAL(18,0),CUST.TERR_NBR)
LEFT JOIN DISP_CATG  as C
on DISP.STORE_PRMRY_TERR_EXTR_ID is NULL
GROUP BY
CONVERT(DECIMAL(10,4),ISNULL(DISP.QTY,0))
,ISNULL(DISP.CATG,C.CATG)
,CUST.[RGN]
,CUST.RGN_NBR
,CUST.[ZN]
,CUST.ZN_NBR
,CUST.[TERR]
,CUST.TERR_NBR

UNION ALL

--getting the Call Coverage Details for each territory for the Present Quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'CALL_COVERAGE' AS TYP
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS OOS_AUDIT
,NULL AS [QTY]
,NULL AS STORES
,CALL_COVRG_ACTL
,CALL_COVRG_TRGT
,CALL_COVERAGE.PD_DESC AS PD_DESC
,ENDDATE AS  PD_DT
,NULL AS CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
,NULL AS PACE
FROM  
[KNA_SALES].[dbo].[UVW_SNACKS_CALL_COVERAGE] AS CALL_COVERAGE WITH (NOLOCK)

UNION ALL

--Getting all the Safety Metrics for all the KSR's for Present Quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'KEEP_SAFE_KSR' AS TYP
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS OOS_AUDIT
,NULL AS [QTY]
,NULL AS STORES
,NULL AS CALL_COVRG_ACTL
,NULL AS CALL_COVRG_TRGT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(DATE_LOADED)))) FROM [KNA_EXTERNAL].[KEEP_SAFE].[SNACKS_DATAFEED] WITH (NOLOCK)) AS  PD_DT
,NULL AS CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,OBSRVTN
,SAFETY_MSG1
,SAFETY_MSG2 
,MODULE
,NULL AS PACE
FROM
[KNA_SALES].[dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSR] WITH(NOLOCK)

UNION ALL

--Getting all the Safety Metrics for all the KSM's for Present Quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'KEEP_SAFE_KSM' AS TYP
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS OOS_AUDIT
,NULL AS [QTY]
,NULL AS STORES
,NULL AS CALL_COVRG_ACTL
,NULL AS CALL_COVRG_TRGT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(DATE_LOADED)))) FROM [KNA_EXTERNAL].[KEEP_SAFE].[SNACKS_DATAFEED] WITH (NOLOCK)) AS  PD_DT
,NULL AS CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,NULL AS [TERR]
,NULL AS TERR_NBR
,OBSRVTN
,SAFETY_MSG1
,SAFETY_MSG2 
,MODULE
,NULL AS PACE
FROM
[KNA_SALES].[dbo].[UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSM] WITH (NOLOCK)

UNION ALL

--Getting all the Safety Metrics for all the KSR's with their respective KSM details for Present Quarter
SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'KEEP_SAFE_KSR_KSM' AS TYP
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS OOS_AUDIT
,NULL AS [QTY]
,NULL AS STORES
,NULL AS CALL_COVRG_ACTL
,NULL AS CALL_COVRG_TRGT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(DATE_LOADED)))) FROM [KNA_EXTERNAL].[KEEP_SAFE].[SNACKS_DATAFEED] WITH (NOLOCK)) AS  PD_DT
,NULL AS CATG
,[RGN]
,RGN_NBR 
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,OBSRVTN
,SAFETY_MSG1
,SAFETY_MSG2 
,MODULE
,NULL AS PACE
FROM
KNA_SALES.dbo.UVW_SNACKS_CALL_COVERAGE_KEEPSAFE_KSR_KSM WITH (NOLOCK)


























GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_KSM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--=============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: calculating all the Perfect Store Metrics like Dollar Sale to Budget %,Max Call Coverage,InDistribution to Store Authorization Percentage,Safety Training at Area/Zone level
-- Comments			:
-- =============================================






CREATE VIEW [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_KSM]
AS
SELECT 
            DOL_SALE
          ,BUD
         ,[CALL_COVRG_ACTL]
      ,[CALL_COVRG_TRGT]
      ,[IN_DISTBN]
      ,[STORE_AUTHZN]
      ,CASE WHEN BUD = 0 THEN 0 ELSE [DOL_SALE]/[BUD] END AS PCT_TO_BUD    
      ,CASE WHEN [CALL_COVRG_TRGT] = 0 THEN 0 ELSE (CONVERT(DECIMAL(18,8),[CALL_COVRG_ACTL]))/(CONVERT(DECIMAL(18,8),[CALL_COVRG_TRGT])) END AS MAX_CALL_COVRG
      ,CASE WHEN [STORE_AUTHZN] = 0 THEN 0 ELSE (CONVERT(DECIMAL(18,8),[IN_DISTBN]))/(CONVERT(DECIMAL(18,8),[STORE_AUTHZN])) END AS PCT_DIST
      ,SAFETY_TRN
	  ,POS.[RGN]
	  ,POS.RGN_NBR
      ,POS.[ZN]
	  ,POS.ZN_NBR
      ,POS.[PD_DESC] 
	  FROM
(
(SELECT 
            SUM(DOL_SALE) AS DOL_SALE
          ,ISNULL(SUM(BUD),0) AS BUD
          
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'POS' GROUP BY [RGN],RGN_NBR,[ZN],ZN_NBR,[PD_DESC]) AS POS
	INNER JOIN
	(SELECT      
         SUM([CALL_COVRG_ACTL]) AS [CALL_COVRG_ACTL]
        ,SUM([CALL_COVRG_TRGT])  AS [CALL_COVRG_TRGT]
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'CALL_COVERAGE'
	   GROUP BY [RGN],RGN_NBR,[ZN],ZN_NBR,[PD_DESC]) CC
	   on POS.RGN_NBR = CC.RGN_NBR AND POS.ZN_NBR = CC.ZN_NBR AND POS.PD_DESC = CC.PD_DESC
	   INNER JOIN
	   	(SELECT   
          SUM([IN_DISTBN]) AS [IN_DISTBN]
         ,SUM([STORE_AUTHZN]) AS [STORE_AUTHZN]  
     
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'DISTRIBUTION' GROUP BY [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR,[PD_DESC]) DIST
	    on CC.RGN_NBR = DIST.RGN_NBR AND CC.ZN_NBR = DIST.ZN_NBR  AND CC.PD_DESC = DIST.PD_DESC
		INNER JOIN
		(
		
  SELECT 

[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
,SUM(OBSRVTN)     AS OBSRVTN
,SUM(SAFETY_MSG1) AS SAFETY_MSG1
,SUM(SAFETY_MSG2) AS SAFETY_MSG2
,SUM(MODULE)       AS MODULE
,CAST(SUM(MODULE + SAFETY_MSG1 + SAFETY_MSG2 + OBSRVTN) AS DECIMAL(5,3))
/CAST(SUM(CASE WHEN TYP = 'KEEP_SAFE_KSR' OR TYP = 'KEEP_SAFE_KSM'  THEN 1+1+1+1 ELSE 0 END) AS DECIMAL(5,3)) AS SAFETY_TRN
,PD_DESC
 FROM [dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
WHERE TYP IN ('KEEP_SAFE_KSR','KEEP_SAFE_KSM')
GROUP BY
     [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
,PD_DESC
 )

 SAFETY
		on  DIST.RGN_NBR = SAFETY.RGN_NBR AND  DIST.ZN_NBR = SAFETY.ZN_NBR AND  DIST.PD_DESC = SAFETY.PD_DESC
		)
		






GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: calculating all the Perfect STore Metrics like Dollar Sale to Budget %,Max Call Coverage,InDistribution to Store Authorization Percentage,Safety Training at Territory level
-- Comments			:
-- =============================================




CREATE VIEW [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_KSR]
AS

SELECT 
            DOL_SALE
          ,BUD
         ,[CALL_COVRG_ACTL]
      ,[CALL_COVRG_TRGT]
      ,[IN_DISTBN]
      ,[STORE_AUTHZN]
      ,CASE WHEN BUD = 0 THEN 0 ELSE [DOL_SALE]/[BUD] END AS PCT_TO_BUD    
      ,CASE WHEN [CALL_COVRG_TRGT] = 0 THEN 0 ELSE (CONVERT(DECIMAL(18,8),[CALL_COVRG_ACTL]))/(CONVERT(DECIMAL(18,8),[CALL_COVRG_TRGT])) END AS MAX_CALL_COVRG
      ,CASE WHEN [STORE_AUTHZN] = 0 THEN 0 ELSE (CONVERT(DECIMAL(18,8),[IN_DISTBN]))/(CONVERT(DECIMAL(18,8),[STORE_AUTHZN])) END AS PCT_DIST
	  ,SAFETY_TRN
      ,POS.[RGN]
	  ,POS.RGN_NBR
      ,POS.[ZN]
	  ,POS.ZN_NBR
      ,POS.[TERR]
	  ,POS.TERR_NBR
      ,POS.[PD_DESC] 
	  FROM
(
(SELECT 
            SUM(DOL_SALE) AS DOL_SALE
          ,ISNULL(SUM(BUD),0) AS BUD
          
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'POS' GROUP BY [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC]) AS POS
	INNER JOIN
	(SELECT      
         [CALL_COVRG_ACTL]
        ,[CALL_COVRG_TRGT]  
        
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC]
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'CALL_COVERAGE') CC
	   on POS.RGN_NBR = CC.RGN_NBR AND POS.ZN_NBR = CC.ZN_NBR AND POS.TERR_NBR = CC.TERR_NBR and POS.PD_DESC = CC.PD_DESC
	   INNER JOIN
	   	(SELECT   
          SUM([IN_DISTBN]) AS [IN_DISTBN]
         ,SUM([STORE_AUTHZN]) AS [STORE_AUTHZN]  
         ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'DISTRIBUTION' GROUP BY [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC]) DIST
	    on CC.RGN_NBR = DIST.RGN_NBR AND CC.ZN_NBR = DIST.ZN_NBR AND CC.TERR_NBR = DIST.TERR_NBR AND CC.PD_DESC = DIST.PD_DESC
		INNER JOIN
		(SELECT 
		 MODULE AS MODULE_ACTL
		,OBSRVTN AS OBSRVTN_ACTL
		,SAFETY_MSG1 AS SAFETY_MSG1_ACTL
		,SAFETY_MSG2 AS SAFETY_MSG2_ACTL
	    ,1 AS MODULE_EXPC
		,1 AS OBSRVTN_EXPC
        ,1 AS SAFETY_MSG1_EXPC
        ,1 AS SAFETY_MSG2_EXPC
		,CAST(SUM(MODULE + SAFETY_MSG1 + SAFETY_MSG2 + OBSRVTN) AS DECIMAL(5,3))
        /CAST(SUM(1+1+1+1) AS DECIMAL(5,3)) AS SAFETY_TRN
		 ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC] 
	 FROM [dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
		WHERE TYP = 'KEEP_SAFE_KSR'
		GROUP BY
		 OBSRVTN 
	   ,SAFETY_MSG1
	   ,SAFETY_MSG2
	   ,MODULE
	   ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC] )

 SAFETY
		on  DIST.RGN_NBR = SAFETY.RGN_NBR AND  DIST.ZN_NBR = SAFETY.ZN_NBR AND  DIST.TERR_NBR = SAFETY.TERR_NBR AND  DIST.PD_DESC = SAFETY.PD_DESC
		)



GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_RSD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_RSD]
AS
SELECT 
            DOL_SALE
          ,BUD
         ,[CALL_COVRG_ACTL]
      ,[CALL_COVRG_TRGT]
      ,[IN_DISTBN]
      ,[STORE_AUTHZN]
      ,CASE WHEN BUD = 0 THEN 0 ELSE [DOL_SALE]/[BUD] END AS PCT_TO_BUD    
      ,CASE WHEN [CALL_COVRG_TRGT] = 0 THEN 0 ELSE (CONVERT(DECIMAL(18,8),[CALL_COVRG_ACTL]))/(CONVERT(DECIMAL(18,8),[CALL_COVRG_TRGT])) END AS MAX_CALL_COVRG
      ,CASE WHEN [STORE_AUTHZN] = 0 THEN 0 ELSE (CONVERT(DECIMAL(18,8),[IN_DISTBN]))/(CONVERT(DECIMAL(18,8),[STORE_AUTHZN])) END AS PCT_DIST
      ,SAFETY_TRN
	  ,POS.[RGN]
	  ,POS.RGN_NBR
      ,POS.[PD_DESC] 
	  FROM
	  (
(SELECT 
            SUM(DOL_SALE) AS DOL_SALE
          ,ISNULL(SUM(BUD),0) AS BUD
          
      ,[RGN]
	   ,RGN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'POS' GROUP BY [RGN],RGN_NBR,[PD_DESC]) AS POS
	INNER JOIN
	(SELECT      
         SUM([CALL_COVRG_ACTL]) AS [CALL_COVRG_ACTL]
        ,SUM([CALL_COVRG_TRGT])  AS [CALL_COVRG_TRGT]
      ,[RGN]
	  ,RGN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'CALL_COVERAGE'
	   GROUP BY [RGN],RGN_NBR,[PD_DESC]) CC
	   on POS.RGN_NBR = CC.RGN_NBR AND  POS.PD_DESC = CC.PD_DESC
	   INNER JOIN
	   	(SELECT   
          SUM([IN_DISTBN]) AS [IN_DISTBN]
         ,SUM([STORE_AUTHZN]) AS [STORE_AUTHZN]  
     
      ,[RGN]
	   ,RGN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
	   where TYP = 'DISTRIBUTION' GROUP BY [RGN],RGN_NBR,[PD_DESC]) DIST
	    on CC.RGN_NBR = DIST.RGN_NBR  AND CC.PD_DESC = DIST.PD_DESC
			INNER JOIN
		(SELECT 
		 	CAST(SUM(MODULE + SAFETY_MSG1 + SAFETY_MSG2 + OBSRVTN) AS DECIMAL(5,3))
        /CAST(SUM(1+1+1+1) AS DECIMAL(5,3)) AS SAFETY_TRN
		 ,[RGN]
		 ,RGN_NBR
      ,[PD_DESC] 
	 FROM [dbo].[UVW_SNACKS_RPT_PRFCT_STORE] WITH (NOLOCK)
		WHERE TYP = 'KEEP_SAFE_KSM'
		GROUP BY
	    [RGN]
		,RGN_NBR
       ,[PD_DESC] )

 SAFETY
		on  DIST.RGN_NBR = SAFETY.RGN_NBR  AND  DIST.PD_DESC = SAFETY.PD_DESC
		)






GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_RNK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Calculates the KSR National,Region&Area Rank,KSM National and Area Rank based on Dollar Sale to Budget %,Distribution %,Max Call Coverage % ans NSD Scorecard Metrics
-- Comments			: 
-- =============================================






CREATE VIEW [dbo].[UVW_SNACKS_RPT_PRFCT_STORE_RNK]
AS 
SELECT
       KSR.[DOL_SALE]
      ,KSR.[BUD]
      ,KSR.[RGN]
	  ,KSR.RGN_NBR
      ,KSR.[ZN]
	  ,KSR.ZN_NBR
      ,KSR.[TERR]
	  ,KSR.TERR_NBR
      ,KSR.[PD_DESC]
      ,KSR.NATL_KSR_RNK
       ,KSR.RGN_KSR_RNK
       ,KSR.AREA_KSR_RNK
        ,KSM.NATL_KSM_RNK
        ,KSM.RGN_KSM_RNK
		,NATL_RSD_RNK

         FROM
--Calculating the KSR Rank based on the NSD SCorecard Metrics
(SELECT 
      [DOL_SALE]
      ,[BUD]
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC]
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSR'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSR'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSR'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSR')) AS NATL_KSR
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSR'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSR'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSR'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSR')) AS RGN_KSR
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSR'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSR'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSR'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSR')) AS AREA_KSR
       ,RANK() OVER (PARTITION  BY PD_DESC ORDER BY (PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSR'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSR'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSR'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSR')) DESC) AS NATL_KSR_RNK
       ,RANK() OVER (PARTITION BY  RGN,PD_DESC ORDER BY (PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSR'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSR'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSR'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSR')) DESC) AS RGN_KSR_RNK
       ,RANK() OVER (PARTITION BY  RGN,ZN,PD_DESC ORDER BY (PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSR'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSR'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSR'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSR')) DESC) AS AREA_KSR_RNK
       FROM 
          (SELECT 
            DOL_SALE
          ,BUD
         ,[CALL_COVRG_ACTL]
      ,[CALL_COVRG_TRGT]
      ,[IN_DISTBN]
      ,[STORE_AUTHZN]
      ,PCT_TO_BUD   
         , MAX_CALL_COVRG
		 ,SAFETY_TRN
         , PCT_DIST
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_KSR] WITH (NOLOCK)) B ) KSR

INNER JOIN

--Calculating the KSM rank based on Snacks NSD scorecard Metrics

(SELECT 
      [DOL_SALE]
      ,[BUD]
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[PD_DESC]
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST] * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG] * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) AS NATL_KSM_METRIC
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) AS RGN_KSM_METRIC
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST] * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG] * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) AS NATL_KSR
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) AS RGN_KSR
      ,(PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) AS AREA_KSR
       ,RANK() OVER (PARTITION  BY PD_DESC ORDER BY (PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) DESC) AS NATL_KSM_RNK
       ,RANK() OVER (PARTITION BY  RGN,PD_DESC ORDER BY (PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','KSM'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','KSM'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'KSM'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'KSM')) DESC) AS RGN_KSM_RNK
       FROM 
	   --Calculating the KSM rank 
          (SELECT 
            DOL_SALE
          ,BUD
         ,[CALL_COVRG_ACTL]
      ,[CALL_COVRG_TRGT]
      ,[IN_DISTBN]
      ,[STORE_AUTHZN]
      ,PCT_TO_BUD   
         , MAX_CALL_COVRG
		 ,SAFETY_TRN
         , PCT_DIST
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_KSM] WITH (NOLOCK)) A
) KSM 
ON 
KSR.[PD_DESC]=KSM.PD_DESC
AND
KSR.[RGN_NBR]=KSM.[RGN_NBR]
AND
KSR.[ZN_NBR]=KSM.[ZN_NBR]
INNER JOIN
--Calculating the RSD Rank 
(SELECT 
      [DOL_SALE]
      ,[BUD]
      ,[RGN]
	  ,RGN_NBR
      ,[PD_DESC]
      ,RANK() OVER (PARTITION  BY PD_DESC ORDER BY (PCT_TO_BUD * [KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('POS % to Budget','RSD'))+([PCT_DIST]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('% Distribution','RSD'))+([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Max Call Coverage', 'RSD'))+([SAFETY_TRN]*[KNA_SALES].[dbo].[UDF_SNACKS_NSD_SCORECARD]('Safety: Training', 'RSD')) DESC) AS NATL_RSD_RNK
       FROM 
          (SELECT 
            DOL_SALE
          ,BUD
         ,[CALL_COVRG_ACTL]
      ,[CALL_COVRG_TRGT]
      ,[IN_DISTBN]
      ,[STORE_AUTHZN]
      ,PCT_TO_BUD   
         , MAX_CALL_COVRG
		 ,SAFETY_TRN
         , PCT_DIST
      ,[RGN]
	  ,RGN_NBR
      ,[PD_DESC] 
       FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_PRFCT_STORE_METRICS_RSD] WITH (NOLOCK)) C) RSD 
ON 
KSM.[PD_DESC]=RSD.PD_DESC
AND
KSM.[RGN_NBR] = RSD.[RGN_NBR]











GO
/****** Object:  View [dbo].[UVW_REX_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



























-- =============================================
-- Author				:	Abhilash Mogili
-- Create date			:	03/08/2018
-- Modified By			:   
-- Modified date		:   
-- Description			: Returns the POS_Sales and Budget for Nielsen,IRI,Walmart and Kroger for Q1,Q2,Q3,Q4 and YTD.
-- Comments				: 
-- =============================================




---KSR Sales and Budget for the KSR Activity By KSM
CREATE VIEW [dbo].[UVW_REX_RPT_KSR_BUD]
AS


WITH KSR_BUD_CTE AS
(
 SELECT *
  FROM
  --Making the Budget as Zero for the Stores if there Dollar Sale is zero
  (
  SELECT 
  KSR_B.SOLD_TO_NBR
  ,ISNULL(KSR_B.DOL_SALE,0) as DOL_SALE
  ,CASE WHEN KSR_B.DOL_SALE = 0 THEN 0 ELSE ISNULL(KSR_B.BUD ,0) END AS BUD
  ,KSR_B.YR
  ,KSR_B.PD_DESC
  FROM
  --Getting all the Dollar sale and Budget at Store level 
  (
  SELECT 
   KSR_A.[SOLD_TO_NBR]
   ,SUM(KSR_A.[DOL_SALE]) AS DOL_SALE
   ,SUM(KSR_A.[BUD]) AS BUD
   ,KSR_A.YR
   ,KSR_A.PD_DESC
   FROM [KNA_SALES].[dbo].[REX_RPT_KSR_BUD] AS KSR_A WITH (NOLOCK)
   GROUP BY
   KSR_A.[SOLD_TO_NBR],KSR_A.YR,KSR_A.PD_DESC)AS  
   KSR_B
	  WHERE
	  KSR_B.DOL_SALE = 0 
	  ) AS KSR_C
)



--Here we are getting all the Store Sales which have Non Zero Dollar Sales
SELECT KSR.[CORP]
     ,KSR. BU
      ,KSR.[CATG]
      ,KSR.[PD_DT]
      ,KSR.[RGN]
      ,KSR.[RGN_NBR]
      ,KSR.[ZN]
      ,KSR.[ZN_NBR]
      ,KSR.[TYP]
      ,KSR.[TERR]
      ,KSR.[TERR_NBR]
      ,KSR.[PLN_TO]
      ,KSR.[PLN_TO_NBR]
      ,KSR.[CHN]
      ,KSR.[CHN_NBR]
      ,KSR.[SOLD_TO]
      ,KSR.[SOLD_TO_NBR]
	  ,KSR.YR
      ,KSR.[PD_DESC]
      ,KSR.[DOL_SALE]
      ,KSR.[BUD]
      ,KSR.[PACE]
   FROM [KNA_SALES].[dbo].[REX_RPT_KSR_BUD] AS KSR WITH (NOLOCK)
   LEFT OUTER JOIN
   KSR_BUD_CTE
   ON
      KSR.SOLD_TO_NBR = KSR_BUD_CTE.SOLD_TO_NBR
	  AND
	  KSR.YR = KSR_BUD_CTE.YR 
	  AND
   KSR.PD_DESC = KSR_BUD_CTE.PD_DESC
WHERE
  KSR_BUD_CTE.SOLD_TO_NBR IS NULL  

  UNION ALL
  --Here we are getting all the Store Sales which has Zero Dollar Sale
  SELECT 
       KSR.[CORP]
	   ,KSR. [BU]
      ,KSR.[CATG]
      ,KSR.[PD_DT]
      ,KSR.[RGN]
      ,KSR.[RGN_NBR]
      ,KSR.[ZN]
      ,KSR.[ZN_NBR]
      ,KSR.[TYP]
      ,KSR.[TERR]
      ,KSR.[TERR_NBR]
      ,KSR.[PLN_TO]
      ,KSR.[PLN_TO_NBR]
      ,KSR.[CHN]
      ,KSR.[CHN_NBR]
      ,KSR.[SOLD_TO]
      ,KSR.[SOLD_TO_NBR]
	  ,KSR.YR
      ,KSR.[PD_DESC]
      ,0 AS [DOL_SALE]
      ,0 AS [BUD]
      ,KSR.[PACE]
  FROM [KNA_SALES].[dbo].[REX_RPT_KSR_BUD] AS KSR WITH (NOLOCK)
INNER JOIN
   KSR_BUD_CTE
   ON
    KSR.SOLD_TO_NBR = KSR_BUD_CTE.SOLD_TO_NBR
	AND
	KSR.YR = KSR_BUD_CTE.YR
	AND
   KSR.PD_DESC = KSR_BUD_CTE.PD_DESC








GO
/****** Object:  View [dbo].[UVW_REX_RPT_KSR_BUD_GEO]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	03/08/2018
-- Modified By		:
-- Modified date	:	
-- Description		:	Returns the POS_Sales and Budget for Nielsen,IRI,Walmart and Kroger for Q1,Q2,Q3,Q4 and YTD at Chain Level.
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_REX_RPT_KSR_BUD_GEO]
AS

SELECT  [CORP]
      ,BU
      ,[CATG]
      ,[PD_DT]
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TYP]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
	  ,YR
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS DOL_SALE
      ,SUM([BUD]) AS BUD
      ,[PACE]

  FROM [KNA_SALES].[dbo].[UVW_REX_RPT_KSR_BUD] WITH (NOLOCK)
 GROUP BY 
	   [CORP]
	  ,BU
      ,[CATG]
      ,[PD_DT]
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TYP]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
	  ,YR
      ,[PD_DESC]
	  ,[PACE]


	 




GO
/****** Object:  View [dbo].[UVW_REX_PD_DT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author					:	Abhilash Mogili
-- Create date				:	02/20/2018
-- Modified By				:  
-- Modified date			:	
-- Description				: To get the Period Date,Current Year,Previous Year,Current and Previous Week,Current Quarter Details
-- =============================================


CREATE VIEW [dbo].[UVW_REX_PD_DT]
AS 


SELECT 
	PD_DT
	,YEAR(PD_DT)			AS CUR_YR
	,YEAR(PD_DT)-1			AS PREV_YR
	,DATEPART(WEEK,PD_DT)	AS CUR_WK
	,DATEPART(WEEK,PD_DT)-1	AS PREV_WK
	,DATEPART(QUARTER,PD_DT)AS CUR_QTR
--Here we are using the Linked Query to get the Period Date from the MEMSQL
FROM OPENQUERY([MYSQLMEMSQL Prod], 'SELECT PD_DT FROM KNA_EXTERNAL.UVW_REX_AOD_PD_DT')




GO
/****** Object:  View [dbo].[UVW_REX_WALMART_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[UVW_REX_WALMART_WK]
 AS
SELECT 
CUST.STDLINXSCD AS [TD Linx Number]
,WALM.STORENBR AS [Store]
,WALM.STOREDESC AS [Store Name]
,WALM.STORENBR AS [Store Nbr]
,WALM.YR
,WALM.[WEEK]
,CASE WHEN WALM.CATG = 'Bars' THEN 'Wholesome' ELSE WALM.CATG END AS [CATEGORY(C)]
,WALM.POS_SALES AS [POS Sales]
FROM 
[dbo].[REX_TDLINX_CUST_HIER] AS CUST WITH (NOLOCK)
INNER JOIN
(
SELECT 
STORENBR
,STOREDESC
,SOLDTO
,YR
--,CONCAT(YR,WK) AS WEEK
,CONCAT(YR,right(CONCAT('000', WK), 3)) AS WEEK
,CATG
,SUM(TOTL_SALES) AS POS_SALES
,DT.PD_DT
 FROM REX_POS_WALMART_WK WITH (NOLOCK)
 CROSS JOIN
[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
YR IN(YEAR(PD_DT),YEAR(DT.PD_DT)-1)
AND
CATG
IN
 ('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
,'Cereal'
,'Toaster pastries'
)
GROUP BY
STORENBR,STOREDESC,SOLDTO,YR,CONCAT(YR,right(CONCAT('000', WK), 3)),CATG,DT.PD_DT
--ORDER BY CONCAT(YR,WK)
) AS WALM
ON
CUST.SOLD_TO_NBR = WALM.SOLDTO COLLATE Latin1_General_CS_AS
AND
CUST.FISC_YR = YEAR(WALM.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,PD_DT)



GO
/****** Object:  View [dbo].[UVW_SNACKS_PD_DT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/20/2017
-- Modified By		:  
-- Modified date	:	
-- Description		: To get the Period Date,Current Year,Previous Year,Current and Previous Week Details
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_PD_DT]
 
AS 

SELECT PD_DT,YEAR(PD_DT) AS CUR_YR,YEAR(PD_DT)-1 AS PREV_YR,DATEPART(WEEK,PD_DT) AS CUR_WK,
DATEPART(WEEK,PD_DT)-1 AS PREV_WK
FROM OPENQUERY([MYSQLMEMSQL Prod], 'SELECT PD_DT 
FROM KG_EXTERNAL.UVW_SNACKS_AOD_PD_DT')





GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_SHIPMNT_PRFM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














-- ============================================
-- Author			: Abhilash Mogili
-- Create date		: 05/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Gross Sale value,Category,Sub-category,Brand for each Plan_To for the last 4 weeks,13 weeks,YTD and QTD  
--                    for Present and Past year.
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_RPT_SHIPMNT_PRFM] 
AS 
WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK) ),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_L4W AS(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-3 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-3 FROM PRV_DT)
),
CTE_FC_L13W AS 
(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-12 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-12 FROM PRV_DT)
)

--LAST 4 WEEKS Gross Sale Value for Present and Past Year
SELECT 
   'KELLOGG CORPORATION' AS CO
   ,'KELLOGG CORPORATION' AS CORP
   ,CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'L4W' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
  ,CASE 
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_SUB_CATEGORY_DESC] AS [PROD_HIER_SUB_CATG_DESC]
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  SHIP.[FISC_WK]   THEN SHIP.[GSV] END),0) AS [GSV]

--Previous Year ago GSV
 ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK =  SHIP.[FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
RIGHT OUTER JOIN 
(SELECT  PLN_TO,PLN_TO_NBR 
FROM [SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY
PLN_TO,PLN_TO_NBR
) CH 
ON SHIP.[PLN_TO] = CH.[PLN_TO_NBR] 
INNER JOIN CTE_FC_L4W
ON
 CTE_FC_L4W.FISC_YR = SHIP.[FISC_YR] AND CTE_FC_L4W.FISC_WK = SHIP.[FISC_WK]
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE 
[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
,[PROD_HIER_CATEGORY_DESC]
,[PROD_HIER_SUB_CATEGORY_DESC]
,[PROD_HIER_BRAND_DESC]

UNION ALL

--LAST 13 WEEKS Gross Sale Value for Present and Past Year
SELECT 
   'KELLOGG CORPORATION' AS CO
   ,'KELLOGG CORPORATION' AS CORP
   ,CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'L13W' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
  ,CASE 
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_SUB_CATEGORY_DESC] AS [PROD_HIER_SUB_CATG_DESC]
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  SHIP.[FISC_WK]   THEN SHIP.[GSV] END),0) AS [GSV]

--Previous Year ago GSV
 ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK =  SHIP.[FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
RIGHT OUTER JOIN (SELECT  PLN_TO,PLN_TO_NBR 
FROM [SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY
PLN_TO,PLN_TO_NBR) CH 
ON SHIP.[PLN_TO] = CH.[PLN_TO_NBR] 
INNER JOIN CTE_FC_L13W
ON
 CTE_FC_L13W.FISC_YR = SHIP.[FISC_YR] AND CTE_FC_L13W.FISC_WK = SHIP.[FISC_WK]
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE 
[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
,[PROD_HIER_CATEGORY_DESC]
,[PROD_HIER_SUB_CATEGORY_DESC]
,[PROD_HIER_BRAND_DESC]


UNION ALL

--QUARTER TO DATE  Gross Sale Value for Present and Past Year
SELECT 
   'KELLOGG CORPORATION' AS CO
   ,'KELLOGG CORPORATION' AS CORP
   ,CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'QTD' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
  ,CASE 
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_SUB_CATEGORY_DESC] AS [PROD_HIER_SUB_CATG_DESC]
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = [FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV]
--Previous Year ago GSV
,ISNULL(SUM(CASE WHEN SHIP.[FISC_YR] = (YEAR(DT.PD_DT) - 1) AND SHIP.[FISC_WK] = [FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
RIGHT OUTER JOIN (SELECT  PLN_TO,PLN_TO_NBR 
FROM [SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY
PLN_TO,PLN_TO_NBR) CH 
ON SHIP.[PLN_TO] = CH.[PLN_TO_NBR] 
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE 
[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
AND
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1) AND  
 FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
AND  FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND  FC.FISC_YR = SHIP.FISC_YR AND FC.FISC_WK = SHIP.FISC_WK )
GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
,[PROD_HIER_CATEGORY_DESC]
,[PROD_HIER_SUB_CATEGORY_DESC]
,[PROD_HIER_BRAND_DESC]

UNION ALL


--YEAR TO DATE  Gross Sale Value for Present and Past Year

SELECT 
   'KELLOGG CORPORATION' AS CO
   ,'KELLOGG CORPORATION' AS CORP
   ,CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'YTD' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
  ,CASE 
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_SUB_CATEGORY_DESC] AS [PROD_HIER_SUB_CATG_DESC]
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = [FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV]
--Previous Year ago GSV
,ISNULL(SUM(CASE WHEN SHIP.[FISC_YR] = (YEAR(DT.PD_DT) - 1) AND SHIP.[FISC_WK] = [FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
RIGHT OUTER JOIN (SELECT  PLN_TO,PLN_TO_NBR 
FROM [SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY
PLN_TO,PLN_TO_NBR) CH 
ON SHIP.[PLN_TO] = CH.[PLN_TO_NBR] 
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE 
[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
AND
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)  
 AND
FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND FC.FISC_YR = SHIP.FISC_YR AND FC.FISC_WK = SHIP.FISC_WK
)
GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
,[PROD_HIER_CATEGORY_DESC]
,[PROD_HIER_SUB_CATEGORY_DESC]
,[PROD_HIER_BRAND_DESC]






GO
/****** Object:  View [dbo].[UVW_SNACKS_STORE_PRFM_WALMART_POS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	05/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the POS_Sales,Point of Distribution for the last 4 weeks,13 weeks,YTD and QTD timeframes for present and last year from the WALMART_WK table based on the FISC_CAL view.
-- Comments			:
-- =============================================

CREATE VIEW [dbo].[UVW_SNACKS_STORE_PRFM_WALMART_POS]
AS

WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_L4W AS(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-3 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-3 FROM PRV_DT)
),
CTE_FC_L13W AS 
(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-12 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-12 FROM PRV_DT)
)




--Last 4 Weeks for Year and Year Ago
SELECT
	  WALMART.SOLDTO
	 ,WALMART.CATG
     ,WALMART.[BRAND] AS BRAND
		  --Total POS_Sales for the Present year
  ,SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  WALMART.[WK]  THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES]
	 ---- --Total POS_Sales for the Past year
  ,SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES_YA]
	 ---- --Point of Distribution(total count of UPC’s) for Present Year
	 ,SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  WALMART.[WK]  THEN  WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT]
	 ----  --Point of Distribution(total count of UPC’s) for Past Year
  ,SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT_YA]
  ,'L4W' AS PD_DESC
FROM  KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN CTE_FC_L4W
ON
 CTE_FC_L4W.FISC_YR = WALMART.[YR] AND CTE_FC_L4W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO,WALMART.[CATG],WALMART.[BRAND]

UNION  ALL

--Last 13 Weeks for Year and Year Ago
SELECT
	  WALMART.SOLDTO
	 ,WALMART.CATG
     ,WALMART.[BRAND] AS BRAND
		  --Total POS_Sales for the Present year
  ,SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  WALMART.[WK]  THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES]
	 ---- --Total POS_Sales for the Past year
  ,SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES_YA]
	 ---- --Point of Distribution(total count of UPC’s) for Present Year
	 ,SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  WALMART.[WK]  THEN  WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT]
	 ----  --Point of Distribution(total count of UPC’s) for Past Year
  ,SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT_YA]
  ,'L13W' AS PD_DESC
FROM  KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN CTE_FC_L13W
ON
 CTE_FC_L13W.FISC_YR = WALMART.[YR] AND CTE_FC_L13W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO,WALMART.[CATG],WALMART.[BRAND]

UNION ALL

-- QTD for Year and Year Ago
SELECT
	   WALMART.SOLDTO
	   ,WALMART.CATG
       ,WALMART.[BRAND] AS BRAND
	   --Total POS_Sales for the Present year
      ,SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES]
	  --Total POS_Sales for the Past year
      ,SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES_YA]
	  --Point of Distribution(total count of UPC’s) for Present Year
	 ,SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN  WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT]
	   --Point of Distribution(total count of UPC’s) for Past Year
     ,SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT_YA]
      ,'QTD' AS PD_DESC
FROM
        KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
	   CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1) AND  
 FC.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)AND  
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT) AND
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK])
 GROUP BY 
 WALMART.SOLDTO,WALMART.[CATG],WALMART.[BRAND]

 UNION ALL

-- YTD for Year and Year Ago

SELECT
	  WALMART.SOLDTO
	 ,WALMART.CATG
     ,WALMART.[BRAND] AS BRAND
	  --Total POS_Sales for the Present year
     ,SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES]
	  --Total POS_Sales for the Past year
     ,SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_SALES] END) AS [TOTL_SALES_YA]
	  --Point of Distribution(total count of UPC’s) for Present Year
	 ,SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN  WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT]
	   --Point of Distribution(total count of UPC’s) for Past Year
     ,SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_DIST_PNT] END) AS [TOTL_DIST_PNT_YA]
      ,'YTD' AS PD_DESC
FROM
       KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
	   CROSS JOIN
      [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1) AND  
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT) AND
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK])
 GROUP BY 
 WALMART.SOLDTO,WALMART.[CATG],WALMART.[BRAND]










GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_SOLD_TO_NBR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	02/06/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Store count of Nielsen,IRI,walmart and Kroger stores when comapred to the Customer Hierarchy
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_SOLD_TO_NBR] AS
SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS CUST_SOLD_TO_NBR
	  ,NI.SOLD_TO_NBR	  AS SOLD_TO_NBR
FROM 
dbo.SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
LEFT OUTER JOIN

OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO_NBR FROM KG_EXTERNAL.UVW_SNACKS_VLD_SOLD_TO_NBR') AS NI
ON
CUST.SOLD_TO_NBR = NI.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
WHERE PLN_TO_NBR != '0000300994'

UNION ALL


 SELECT  
	   CUST.[RGN]			COLLATE DATABASE_DEFAULT AS RGN		
      ,CUST.[RGN_NBR]		COLLATE DATABASE_DEFAULT AS [RGN_NBR]
      ,CUST.[ZN]			COLLATE DATABASE_DEFAULT AS [ZN]
      ,CUST.[ZN_NBR]		COLLATE DATABASE_DEFAULT AS [ZN_NBR]
      ,CUST.[TERR]			COLLATE DATABASE_DEFAULT AS [TERR]
      ,CUST.[TERR_NBR]		COLLATE DATABASE_DEFAULT AS [TERR_NBR]
      ,CUST.[PLN_TO]		COLLATE DATABASE_DEFAULT AS [PLN_TO]
      ,CUST.[PLN_TO_NBR]	COLLATE DATABASE_DEFAULT AS [PLN_TO_NBR]
      ,CUST.[CHN]			COLLATE DATABASE_DEFAULT AS [CHN]
      ,CUST.[CHN_NBR]		COLLATE DATABASE_DEFAULT AS [CHN_NBR]
      ,CUST.[SOLD_TO]		COLLATE DATABASE_DEFAULT AS SOLD_TO
      ,CUST.[SOLD_TO_NBR]	COLLATE DATABASE_DEFAULT AS CUST_SOLD_TO_NBR
	  ,WALMART.SOLDTO		COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR
		
FROM
	   dbo.SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
LEFT OUTER JOIN
     (SELECT  SOLDTO
FROM
[dbo].[UVW_SNACKS_STORE_PRFM_WALMART_POS] WITH (NOLOCK)
WHERE
PD_DESC =  'YTD'
GROUP BY SOLDTO) AS WALMART 
	   ON 
	   CUST.SOLD_TO_NBR = WALMART.SOLDTO COLLATE Latin1_General_CS_AS
	   WHERE PLN_TO_NBR  = '0000300994'
	   GROUP BY
	    CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR]
	  ,WALMART.SOLDTO
		




GO
/****** Object:  View [dbo].[UVW_SNACKS_POS_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/15/2017
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  POS Budget for  Snacks Stores for all the Quarters(Q1,Q2,Q3,Q4) and YTD for Snacks Categories
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_POS_BUD]
AS 

--POS Budget for all the Quarters based on the Fisc Calendar for all Categories
SELECT  
Q_TOTAL AS BUD
,SOLD_TO_NBR
,CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' ELSE CATEGORY END AS CATG
,'Q'+CAST(BUDG.QTR AS VARCHAR(1)) AS PD_DESC
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
--FISC_WK_STRT_DT >= DATEADD(yy, DATEDIFF(yy, 0, PD_DT), 0)
--AND
FISC_WK_END_DT <= PD_DT
AND FC.FISC_QTR = BUDG.QTR
)

UNION ALL

--POS Budget for YTD based on the Fisc Calendar for all Categories

SELECT   
SUM(Q_TOTAL) AS BUD
,SOLD_TO_NBR
, CATEGORY AS CATG
,'YTD' AS PD_DESC
FROM
(
SELECT  
Q_TOTAL 
,SOLD_TO_NBR
,CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' ELSE CATEGORY END AS CATEGORY
,QTR
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE BUDG.QTR IS NOT NULL
GROUP BY
Q_TOTAL 
,SOLD_TO_NBR
,CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' ELSE CATEGORY END
,QTR

) AS A

WHERE
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE
FISC_YR = YEAR(PD_DT)
AND
--FISC_WK_STRT_DT >= DATEADD(yy, DATEDIFF(yy, 0, PD_DT), 0)
--AND
FISC_WK_END_DT <= PD_DT

AND FC.FISC_QTR = A.QTR
)

GROUP BY
SOLD_TO_NBR, CATEGORY





GO
/****** Object:  View [dbo].[UVW_REX_WALMART_POS_PREV_YR_NXT_13WKS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			: Abhilash Mogili
-- Create date		: 04/11/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  Walmart POS store Sales  for next 13 weeks for previous year based on the Period Date  for Snacks and MF Categories
-- =============================================


CREATE VIEW [dbo].[UVW_REX_WALMART_POS_PREV_YR_NXT_13WKS]
AS 

WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_L13W_PREV AS 
(

SELECT RN,FISC_YR,FISC_QTR,FISC_WK,FISC_WK_STRT_DT,FISC_WK_END_DT,PD_DT
FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1,YEAR(PD_DT)-2) 
AND RN <= (SELECT RN+13 FROM PRV_DT) 
AND RN >= (SELECT RN+1 FROM PRV_DT)
)

,CTE_FC_L13W AS
(
SELECT 
CONVERT(VARCHAR,PREV.FISC_WK_STRT_DT,107) AS FISC_WK_STRT,
PREV.FISC_WK,
PREV.FISC_YR,
PREV.PD_DT
 FROM 
 CTE_FC_L13W_PREV AS PREV
  )

SELECT
	  WALMART.SOLDTO
	  ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END AS CATG 
     ,WALMART.[BRAND] AS BRAND
	 ---- --Total POS_Sales for the Past year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.FISC_YR = WALMART.YR AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	 ----  --Point of Distribution(total count of UPC’s) for Past Year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.FISC_YR = WALMART.YR AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS]
  ,CTE_FC_L13W.FISC_WK_STRT
  ,CTE_FC_L13W.FISC_YR 
  ,CTE_FC_L13W.FISC_WK
  ,CTE_FC_L13W.PD_DT
FROM  KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN CTE_FC_L13W
ON
 CTE_FC_L13W.FISC_YR = WALMART.[YR] 
 AND 
 CTE_FC_L13W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO
  	  ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG  END
 ,WALMART.[BRAND]
  ,CTE_FC_L13W.FISC_WK_STRT
   ,CTE_FC_L13W.FISC_YR 
  ,CTE_FC_L13W.FISC_WK
  ,CTE_FC_L13W.PD_DT


GO
/****** Object:  View [dbo].[UVW_REX_CALL_COVRG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- ==============================================================
-- Author				:	Abhilash Mogili
-- Create date		:	06/19/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	09/09/2018
-- Description		:	Returns  the latest Call Coverage details 
--									for the Present Quarter for all the KSR's along with the KSR and KSM Emp Number based on Period Date
-- ==============================================================

 CREATE VIEW [dbo].[UVW_REX_CALL_COVRG]
 AS

  SELECT
 CC.KSR_EMPNUM,
 CC.KSM_EMPNUM,
 CUST.TERR,
 CUST.TERR_NBR,
CUST.ZN
,CUST.ZN_NBR
,CUST.[RGN]
,CUST.RGN_NBR
,ISNULL(TERR_CALL_COVRG_PCT,0)																		AS TERR_CALL_COVRG_PCT
,ISNULL(ZN_CALL_COVRG_PCT,0)																			AS ZN_CALL_COVRG_PCT
,ISNULL(RGN_CALL_COVRG_PCT,0)																		AS RGN_CALL_COVRG_PCT
,'QTD'																															AS PD_DESC
,CASE WHEN ENDDATE	IS NULL THEN PD_DT	ELSE CONVERT(DATE,ENDDATE)			END															AS END_DT
FROM 
(
SELECT 
		TERRITORYPRIMARYREPEMPNUM							AS KSR_EMPNUM
      ,TERRITORYPRIMARYREPKSMMANAGEREMPNUM AS KSM_EMPNUM
	  ,COMPLETEDVISITSCOUNT
	  ,NOTCANCELLEDVISITSCOUNT
	  ,TERRITORYEXTERNALID
	  ,AREAEXTERNALID
	  ,REGIONEXTERNALID
	  ,ENDDATE
	  ,[CALLCOVERAGE%] AS TERR_CALL_COVRG_PCT
	  ,[AREACALLCOVERAGE%] AS ZN_CALL_COVRG_PCT
	  ,[REGIONCALLCOVERAGE%] AS RGN_CALL_COVRG_PCT
FROM  
[KNA_EXTERNAL].[SIF].[REX_CALL_COVERAGE]  WITH (NOLOCK)) AS CC 
INNER JOIN
--Here we are joining with the Customer Hierachy based on the territory number 
(
SELECT 
[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,PD_DT
FROM
--Historical Customer Hierarchy
[KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS CUST WITH (NOLOCK)
INNER JOIN
--Period Date 
[dbo].[UVW_REX_PD_DT] AS DT
ON
--Here we are joining based on the FISC_YR and FISC_QTR
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
GROUP BY  [RGN],RGN_NBR,[ZN],ZN_NBR,[TERR],TERR_NBR,PD_DT
) AS CUST
ON
--we are joining based on the Territorry NUmber
CC.TERRITORYEXTERNALID = CONVERT(INT,CUST.TERR_NBR)
AND
CC.AREAEXTERNALID = CONVERT(INT,CUST.ZN_NBR)
AND
CC.REGIONEXTERNALID = CONVERT(INT,CUST.RGN_NBR)
AND
CC.ENDDATE = CUST.PD_DT
GO
/****** Object:  View [dbo].[UVW_REX_SIF_KPI_SAFETY_METRIC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author				:	Abhilash Mogili
-- Create date		:	09/26/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: Returns the Latest Safety details of all the Employees 
-- =============================================



CREATE VIEW [dbo].[UVW_REX_SIF_KPI_SAFETY_METRIC]
AS 
       

--Getting all the KSR and KSM's Employee Numbers from the Call coverage
WITH  CALL_COVRG_EMPL AS
(
SELECT 
 KSR_EMPNUM AS EMPL_NUM 
 FROM  
 [dbo].[UVW_REX_CALL_COVRG]
 WHERE
KSR_EMPNUM IS NOT NULL
 GROUP BY
 KSR_EMPNUM
UNION ALL
SELECT 
CONVERT(INTEGER,KSM_EMPNUM) AS EMPL_NUM 
FROM [dbo].[UVW_REX_CALL_COVRG]
WHERE
KSM_EMPNUM IS NOT NULL
GROUP BY
CONVERT(INTEGER,KSM_EMPNUM)
),
---Getting the Period Date,Current Year,Current Quarter,Current Week based on Nielsen Date
NIELSEN_PD_DT AS
(
SELECT 
CUR_YR
,CUR_QTR
,CUR_WK
,PD_DT
FROM 
dbo.UVW_REX_PD_DT 
),
--Assigning the  Zero Safety Metics to all the period End Dates in a quarter based on Period date 
FISC_CAL_SAFETY_METRIC AS
(
SELECT 
 FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,0 AS OBSERVATION
,0 AS SAFETYMESSAGE1
,0 AS SAFETYMESSAGE2
, 0 AS MODULE
,PD_DT
FROM     
KG_VIEWS.dbo.UVW_FISC_CAL  AS CAL
INNER JOIN
NIELSEN_PD_DT AS NIELSEN_DT
ON
CAL.FISC_YR = NIELSEN_DT.CUR_YR
AND
CAL.FISC_QTR = NIELSEN_DT.CUR_QTR
WHERE
FISC_WK_END_DT   <=  NIELSEN_DT.PD_DT
),
--Getting all the Safety metrics for all the Employees 
EMPL_SAFETY_QTR AS
(
SELECT 
EMPL_NUM
,SUM(OBSRVTN) AS OBSRVTN
,SUM(SAFETY_MSG1) AS SAFETY_MSG1
,SUM(SAFETY_MSG2) AS SAFETY_MSG2
,SUM(MODULE) AS MODULE
,FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,DT
,PD_DT
FROM
(
SELECT 
EMPL_NUM
,OBSERVATION AS [OBSRVTN]
,SAFETYMESSAGE1 as  [SAFETY_MSG1]
,SAFETYMESSAGE2 AS [SAFETY_MSG2]
,MODULE
,FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,DATEADD(DAY,1,FISC_WK_END_DT) AS DT 
,PD_DT
 FROM 
 CALL_COVRG_EMPL
CROSS JOIN
FISC_CAL_SAFETY_METRIC

UNION ALL

SELECT 
EMPLOYEENUMBER
,CASE WHEN [OBSERVATION] = 2 THEN 1 ELSE 0 END AS  [OBSRVTN]
----Here we are considering the SAFETYMESSAGE1 value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [SAFETYMESSAGE1]= 2 THEN 1 ELSE 0 END AS [SAFETY_MSG1]
------Here we are considering the SAFETYMESSAGE2 value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [SAFETYMESSAGE2]= 2 THEN 1 ELSE 0 END AS [SAFETY_MSG2]
------Here we are considering the MODULE value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [MODULE] = 2 THEN 1 ELSE 0 END AS [MODULE]
--,CONVERT(DATE,DATE_LOADED) AS DT
,FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,DATEADD(DAY,1,FISC_WK_END_DT) AS DT
,PD_DT
FROM 
[KNA_EXTERNAL].[KEEP_SAFE].[REX_DATAFEED] S1
	   INNER JOIN 
	 KG_VIEWS.dbo.[UVW_FISC_CAL] FISC WITH (NOLOCK)
	 	ON 
	 YEAR(CONVERT(DATE,S1.DATE_LOADED))  = FISC.FISC_YR
	   AND
        DATEPART(QUARTER,CONVERT(DATE,DATE_LOADED)) = FISC.FISC_QTR
		AND
		DATEADD(DAY,1,FISC.FISC_WK_END_DT) =     CONVERT(DATE,DATE_LOADED)
		AND
		EMPLOYEENUMBER IN (SELECT EMPL_NUM FROM CALL_COVRG_EMPL)
		INNER JOIN
		NIELSEN_PD_DT AS NIELSEN_DT
		ON
		FISC.FISC_YR = NIELSEN_DT.CUR_YR
		AND
		FISC.FISC_QTR = NIELSEN_DT.CUR_QTR
		AND
		CONVERT(DATE,DATE_LOADED) <= DATEADD(DAY,1,NIELSEN_DT.PD_DT)
		) AS EMP
		GROUP BY
		EMPL_NUM
	   ,FISC_YR
	   ,FISC_QTR
	   ,FISC_PD
	   ,FISC_WK
	   ,FISC_WK_END_DT
	   ,DT
	   ,PD_DT
),
EMP AS
(
SELECT 
 EMPL_NUM
,[OBSRVTN]
,[SAFETY_MSG1]
,[SAFETY_MSG2]
,[MODULE]
,FISC_WK_END_DT
,DT
,PD_DT
,ROW_NUMBER()over(PARTITION BY EMPL_NUM,FISC_YR,FISC_QTR,FISC_PD order by FISC_WK  desc) as LAT
 FROM 
 EMPL_SAFETY_QTR
 )
 ,
 EMPL_SAFETY_METRICS AS
 (
 SELECT
 EMPL_NUM
,[OBSRVTN] AS [OBSRVTN]
,[SAFETY_MSG1] AS [SAFETY_MSG1]
,[SAFETY_MSG2] AS [SAFETY_MSG2]
,[MODULE] AS [MODULE]
,FISC_WK_END_DT
,DT
,LAT
,PD_DT
,CASE WHEN ([OBSRVTN] =0 AND [SAFETY_MSG1] = 0 AND [SAFETY_MSG2] =0 AND [MODULE] = 0) THEN  1 ELSE 0 END AS FLG
 FROM EMP
 WHERE
 LAT = 1 
 ),
FISC_CAL as 
 (
  SELECT 
 FISC_YR
 ,FISC_QTR
 ,FISC_PD
 ,FISC_WK
 ,FISC_WK_END_DT AS FIS_WK_END_DT
 ,ROW_NUMBER() OVER  (PARTITION BY FISC_PD  ORDER BY FISC_WK_END_DT ) AS LAT_WK 
  FROM 
 KG_VIEWS.dbo.UVW_FISC_CAL AS FIS 
 INNER JOIN
 NIELSEN_PD_DT AS NIELSEN_DT
 ON
 FIS.FISC_YR = NIELSEN_DT.CUR_YR
 AND
 FIS.FISC_QTR = NIELSEN_DT.CUR_QTR
 )
 ,FISC_CA AS
 (
 select 
 a.FISC_YR
 ,A.FISC_QTR
 ,A.FISC_PD
 ,A.FIS_WK_END_DT
 from FISC_CAL AS A
 INNER JOIN ( 
 SELECT 
 FISC_YR, FISC_QTR, FISC_PD ,-- FIS_WK_END_DT, 
 MAX(LAT_WK) as WK
 FROM 
 FISC_CAL
 GROUP BY  FISC_YR, FISC_QTR, FISC_PD --,FIS_WK_END_DT
 ) AS B
  ON B.FISC_YR=A.FISC_YR AND B.FISC_QTR=A.FISC_QTR AND B.FISC_PD = A.FISC_PD
  and
  A.LAT_WK = B.WK
  )
 ,

SAFETY_TOTL AS
 (
 SELECT 
 EMPL_NUM
 , CASE WHEN OBSRVTN = 0 THEN 1 END AS OBSRVTN
 ,CASE WHEN SAFETY_MSG1 = 0 THEN 1 END AS SAFETY_MSG1
 ,CASE WHEN SAFETY_MSG2 = 0 THEN 1 END AS SAFETY_MSG2
 ,CASE WHEN MODULE = 0 THEN 1 END AS MODULE
 ,SAF.FISC_WK_END_DT AS FISC_WK_END_DT
 ,DT
 ,PD_DT
 ,FLG
 ,LAT
 FROM 
 EMPL_SAFETY_METRICS AS SAF
 INNER JOIN
  FISC_CA
 ON
 SAF.FISC_WK_END_DT = FISC_CA.FIS_WK_END_DT
 AND
 FLG = 1

 UNION ALL


 SELECT 
 EMPL_NUM
 ,  OBSRVTN
 , SAFETY_MSG1
 ,SAFETY_MSG2
 , MODULE
 ,FISC_WK_END_DT
 ,DT
 ,PD_DT
 ,FLG
  ,LAT
 FROM 
 EMPL_SAFETY_METRICS
 WHERE
 FLG = 0
 )


SELECT
EMPL_NUM
,SUM([OBSRVTN]) AS [OBSRVTN]
,SUM([SAFETY_MSG1]) AS [SAFETY_MSG1]
,SUM([SAFETY_MSG2]) AS [SAFETY_MSG2]
,SUM([MODULE]) AS [MODULE]
,PD_DT
FROM
SAFETY_TOTL
GROUP BY
 EMPL_NUM
,PD_DT

GO
/****** Object:  View [dbo].[UVW_REX_SHIPMNT_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	03/09/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  GSV Budget for all the Plan_To's for all the Quarters(Q1,Q2,Q3,Q4) and YTD for Snacks&MF Categories
-- =============================================



CREATE VIEW  [dbo].[UVW_REX_SHIPMNT_BUD]
AS

--GSV Budget for all the Quarters based on the Fisc Calendar and Period Date for all Categories
SELECT  
BUDGET_GSV AS BUD
,PLAN_TO_NBR AS PLN_TO_NBR
,CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' 
		  ELSE CATEGORY END AS CATG
,'Q'+CAST(BUDG.QTR AS VARCHAR(1)) AS PD_DESC,YR
FROM [KNA_EXTERNAL].[USER_SALES].[REX_GSV_BUDGET] AS BUDG WITH (NOLOCK)
WHERE
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FC.FISC_YR = BUDG.YR
AND
FISC_WK_END_DT <= PD_DT
AND 
FC.FISC_QTR = BUDG.QTR
)
AND
CATEGORY  IN ('COLD CEREAL','COOKIES','CRACKERS','BARS','TOASTER PASTRIES','SALTY SNACKS','FRUIT SNACKS')
GROUP BY
BUDGET_GSV,
PLAN_TO_NBR,
CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' 
		  ELSE CATEGORY END,
		  'Q'+CAST(BUDG.QTR AS VARCHAR(1)),
		  YR







GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_SALES_OUTLOOK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/02/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/27/2018
-- Description		:	Getting the Current Year Sales,Sales Year Ago and their budgets for all the Nielsen,IRI and Orchestro(Walmart &Kroger) Stores for the present Quarter based on the PD_DT
-- =============================================







CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_SALES_OUTLOOK]
AS
SELECT        CH.RGN, CH.LST_LVL_CUST_NBR,Q.SOLD_TO_NBR as SOLDTO, CH.RGN_NBR, CH.ZN, CH.ZN_NBR, CH.TERR, CH.TERR_NBR, CH.PLN_TO, CH.PLN_TO_NBR, CH.CHN, CH.CHN_NBR, CH.SOLD_TO, CH.SOLD_TO_NBR, CH.STDLINXSCD, Q.CATG, 
                         CASE WHEN Q.PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) THEN 'QTD' ELSE Q.PD_DESC END AS PD_DESC, Q.DOL_SALE, Q.BUD, Q.DOL_SALE_YA
FROM            dbo.SNACKS_TDLINX_CUST_HIER AS CH WITH (NOLOCK)
                 INNER JOIN
               [dbo].[SNACKS_VLD_RPT_SALES_OUTLOOK]  AS Q  WITH (NOLOCK)
                           ON CH.LST_LVL_CUST_NBR COLLATE SQL_Latin1_General_CP1_CI_AS = Q.SOLD_TO_NBR
                           CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH(NOLOCK)
WHERE Q.TYP = YEAR(DT.PD_DT) AND  PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
UNION ALL
SELECT        CH.RGN, CH.LST_LVL_CUST_NBR,Q.SOLD_TO_NBR as SOLDTO, CH.RGN_NBR, CH.ZN, CH.ZN_NBR, CH.TERR, CH.TERR_NBR, CH.PLN_TO, CH.PLN_TO_NBR, CH.CHN, CH.CHN_NBR, CH.SOLD_TO, CH.SOLD_TO_NBR, CH.STDLINXSCD, Q.CATG, 
                         Q.PD_DESC, Q.DOL_SALE, Q.BUD, Q.DOL_SALE_YA
FROM            dbo.SNACKS_TDLINX_CUST_HIER AS CH WITH (NOLOCK) INNER JOIN
                     [dbo].[SNACKS_VLD_RPT_SALES_OUTLOOK] AS Q WITH (NOLOCK)
					  ON CH.LST_LVL_CUST_NBR COLLATE SQL_Latin1_General_CP1_CI_AS = Q.SOLD_TO_NBR
                    CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE Q.TYP = YEAR(DT.PD_DT)-1 AND  PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))










GO
/****** Object:  View [dbo].[UVW_SNACKS_SIF_GSV_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














-- ============================================
-- Author			: Abhilash Mogili
-- Create date		: 05/21/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Gross Sale value and Budget for each Plan_To for the Present Quarter  for the SIF datafeed
-- Comments			:
-- =============================================









CREATE VIEW [dbo].[UVW_SNACKS_SIF_GSV_BUD] 
AS 

SELECT 
	'QTD' AS [PD_DESC]
	,SHIP.PLN_TO AS  [PLN_TO_NBR]
	--Current Year GSV
	,SUM(GSV) AS GSV
	,ISNULL(BUDG.BUDGET_GSV,0)  AS BUD
FROM 
	(SELECT
SHIP.PLN_TO
,DT.PD_DT
,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS PD
--Current Year GSV
,SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = SHIP.[FISC_WK] THEN SHIP.[GSV] END) AS [GSV]
,SHIP.FISC_YR       
FROM 
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
SHIP.[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
AND
EXISTS 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FISC WITH (NOLOCK)

 WHERE
 FISC_YR = YEAR(DT.PD_DT)
 AND
 FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
 AND
 FISC.FISC_WK_END_DT <= DT.PD_DT
 AND
 FISC.FISC_YR = SHIP.FISC_YR AND FISC.FISC_WK = SHIP.FISC_WK )
 GROUP BY 
 SHIP.PLN_TO,DT.PD_DT,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)),SHIP.FISC_YR) AS SHIP
	INNER JOIN
(SELECT  PLN_TO, PLN_TO_NBR FROM dbo.SNACKS_TDLINX_CUST_HIER WITH (NOLOCK)
  GROUP BY PLN_TO,PLN_TO_NBR
) CH ON CONVERT(DECIMAL(10,0),SHIP.PLN_TO) = CH.PLN_TO_NBR collate SQL_Latin1_General_CP1_CI_AS
LEFT OUTER JOIN 
(SELECT PLAN_TO_NBR,QTR,SUM(BUDGET_GSV) AS BUDGET_GSV,YR
FROM (SELECT  
     BUDGET_GSV,PLAN_TO_NBR,QTR,YR 
	 FROM [KG_SAS].[USER_SALES].[SNACKS_GSV_BUDGET] WITH (NOLOCK)
	 GROUP BY
	 BUDGET_GSV,PLAN_TO_NBR,QTR,YR ) AS A
	 WHERE
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)
WHERE
FISC_YR = YEAR(PD_DT)
AND
FC.FISC_YR = A.YR
AND
FISC_WK_END_DT <= PD_DT

AND FC.FISC_QTR = A.QTR
)
	GROUP BY PLAN_TO_NBR,QTR,YR) BUDG ON CONVERT(DECIMAL(10,0),SHIP.[PLN_TO]) = BUDG.[PLAN_TO_NBR]
	AND BUDG.QTR = DATEPART(QUARTER,SHIP.PD_DT)

GROUP BY 
SHIP.[PLN_TO],BUDG.BUDGET_GSV


















GO
/****** Object:  View [dbo].[UVW_REX_SHIPMNT_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	03/07/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  Gross Sale value(GSV) for all  Plan_To's for all the Quarters(Q1,Q2,Q3,Q4) for Snacks&MF Categories
-- =============================================




CREATE VIEW [dbo].[UVW_REX_SHIPMNT_KSR]
AS
-- Gross Sale Value for all Quarters Q1,Q2,Q3 and Q4
SELECT
SHIP.PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO
,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods'
           ELSE 'Snacks'
 END AS BU
,CASE 
		WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' AND  PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' OR  PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE SHIP.PROD_HIER_CATEGORY_DESC 
        END AS PROD_HIER_CATEGORY_DESC
,DT.PD_DT

,'Q'+CAST(FISC.FISC_QTR AS VARCHAR(1)) AS [PD_DESC] -- Period Description
--Current Year GSV
,SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = FISC.[FISC_WK] THEN SHIP.[GSV] END) AS [DOL_SALE]
--Budget
,SHIP.FISC_YR

FROM 
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP  WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
INNER JOIN 
	   KG_VIEWS.dbo.[UVW_FISC_CAL] FISC
		ON 
		FISC.FISC_YR = YEAR(DT.PD_DT)
		AND  
		FISC.FISC_WK_END_DT <= DT.PD_DT 
		AND
		FISC.FISC_YR = SHIP.FISC_YR 
		AND 
		FISC.FISC_WK = SHIP.FISC_WK 
		

WHERE
SHIP.PROD_HIER_CATEGORY_DESC IN 
(
'Bars'
,'Cereal'
,'Cookies'
,'Crackers'
,'Fruit Snacks'
,'Salty Snacks'
,'Toaster Pastries'
)
GROUP BY 
SHIP.PLN_TO
,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods'
           ELSE 'Snacks'
  END
,CASE 
     	WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' AND  PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' OR  PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE SHIP.PROD_HIER_CATEGORY_DESC 
        END
,DT.PD_DT
,'Q'+CAST(FISC.FISC_QTR AS VARCHAR(1))
--Budget
,SHIP.FISC_YR

UNION ALL

SELECT 
TD_CH.PLN_TO_NBR AS PLN_TO
,CASE WHEN CATG.C  IN ('Cold Cereal','Toaster Pastries') THEN 'Morning Foods'
           ELSE 'Snacks'
 END AS BU
,CATG.C AS  PROD_HIER_CATEGORY_DESC
,DT.PD_DT
,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS [PD_DESC] -- Period Description
,0 AS [DOL_SALE]
,YEAR(DT.PD_DT) AS FISC_YR
 FROM [dbo].[REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
INNER JOIN
 [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
 ON 
 TD_CH.FISC_YR = YEAR(DT.PD_DT)
 AND
 TD_CH.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
 CROSS JOIN
 (
 SELECT 'Wholesome' AS C UNION ALL
 SELECT 'Cookies' AS C UNION ALL
 SELECT 'Crackers' AS C UNION ALL
 SELECT 'Salty Snacks' AS C UNION ALL
 SELECT 'Fruit Snacks' AS C UNION ALL
 SELECT 'On-The-Go' AS C UNION ALL
 SELECT 'Cold Cereal' AS C UNION ALL
 SELECT 'Toaster Pastries' AS C
 ) AS CATG
 GROUP BY
 TD_CH.PLN_TO_NBR
,CATG.C
,DT.PD_DT
,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
,YEAR(DT.PD_DT)












GO
/****** Object:  View [dbo].[UVW_SNACKS_STORE_PRFM_ORC_POS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	07/31/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Walmart and Kroger POS_Sales for present quarter
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_STORE_PRFM_ORC_POS]
AS
SELECT
		  WM.SOLDTO
		  ,WM.[CATG]
         ,WM.[BRAND]
         ,SUM(CASE WHEN WM.[YR] = YEAR(DT.PD_DT) AND WM.[WK]=WM.[WK]  THEN WM.[TOTL_SALES] END) AS [TOTL_SALES]
         ,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS PD
FROM
       KNA_SALES.dbo.SNACKS_POS_WALMART_WK AS WM WITH (NOLOCK)
       CROSS JOIN dbo.UVW_SNACKS_PD_DT as DT WITH (NOLOCK)
WHERE
EXISTS 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)

 WHERE
 FISC_YR = YEAR(DT.PD_DT)
 AND
 FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
  AND
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND
FC.FISC_YR = WM.[YR]
AND FC.FISC_WK = WM.[WK]
)
GROUP BY 
		  WM.SOLDTO
		  ,WM.[CATG]
         ,WM.[BRAND]
         ,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))

UNION ALL
SELECT
		  ORC_POS.SOLDTO
		  ,ORC_POS.[CATG]
         ,ORC_POS.[BRAND]
         ,(ORC_POS.[TOTL_SALES]) AS [TOTL_SALES]
         ,'Q'+ CAST(DATEPART(QUARTER,ORC_POS.PD_DT) AS VARCHAR(1)) AS PD
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLDTO,PD_DT, CATG,BRAND,TOTL_SALES FROM KG_EXTERNAL.UVW_SNACKS_ORC_POS WHERE  PD_DESC = ''QTD'';') AS ORC_POS


GO
/****** Object:  View [dbo].[UVW_SNACKS_SIF_STORE_PRFM_ORC_POS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			: Abhilash Mogili
-- Create date		: 08/09/2017
-- Description		: Stay in Front KPI Store Sales for the present quarter
-- Modified Date	: 
-- Comments			: 
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_SIF_STORE_PRFM_ORC_POS]
AS
SELECT 
RGN_NBR, 
ZN_NBR,
TERR_NBR,
PLN_TO_NBR, 
CHN_NBR,  
SOLD_TO_NBR,
SUM(DOL_SALE) AS DOL_SALE,
PD
FROM

(SELECT        
TD_CH.RGN_NBR, 
TD_CH.ZN_NBR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO_NBR, 
TD_CH.CHN_NBR,  
TD_CH.SOLD_TO_NBR,
SUM(WM.TOTL_SALES) as DOL_SALE,
WM.PD AS PD
FROM	 
[KNA_SALES].[dbo].[UVW_SNACKS_STORE_PRFM_ORC_POS] WM WITH (NOLOCK)
INNER JOIN [dbo].[SNACKS_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
ON CONVERT(INT,WM.SOLDTO  COLLATE SQL_Latin1_General_CP1_CI_AS) = CONVERT(INT,TD_CH.SOLD_TO_NBR)
GROUP BY 
TD_CH.RGN_NBR, 
TD_CH.ZN_NBR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO_NBR, 
TD_CH.CHN_NBR,  
TD_CH.SOLD_TO_NBR,
WM.PD

UNION ALL

SELECT 
TD_CH.RGN_NBR,
TD_CH.ZN_NBR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO_NBR,
TD_CH.CHN_NBR,
TD_CH.SOLD_TO_NBR,
0 as DOL_SALE,
'Q'+CAST(DATEPART(QUARTER, PD_DT) AS VARCHAR(1)) AS PD
 FROM [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
 CROSS JOIN  [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE PLN_TO_NBR IN ('0000300994' ,'0000300855')
) WM_KROGER
GROUP BY
RGN_NBR, 
ZN_NBR,
TERR_NBR,
PLN_TO_NBR, 
CHN_NBR,  
SOLD_TO_NBR,
PD



GO
/****** Object:  View [dbo].[UVW_REX_TDLINX_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			: Abhilash Mogili
-- ALTER date		: 05/16/2018
-- Description		: Get the Historical Store Details for Previous and Present Quarter
-- Modified Date	: 
-- Comments			: 
-- =============================================


CREATE VIEW [dbo].[UVW_REX_TDLINX_CUST_HIER]
AS

SELECT  [FISC_YR]
      ,CONCAT('Q',[FISC_QTR]) AS PD_DESC
      ,[RGN]
      ,[STDLINXSCD]
      ,[LST_LVL_CUST_NBR]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[CUST_TEAM]
      ,[CUST_TEAM_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
      ,[PREV_ACCT_NBR]
	  ,SNO
	  ,SNAME
  FROM [KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] WITH (NOLOCK)



GO
/****** Object:  View [dbo].[UVW_REX_RPT_KSR_BUD_TOTL_ACT_PRFM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 03/09/2018
-- Modified By		: Abhilash Mogili
-- Modified date	: 10/15/2018
-- Description		: Returns the POS_Sales,GSV and Budget for all the Paln_To's for Q1,Q2,Q3,Q4  at Plan To Level.
-- Comments		: Added the Function [KNA_SALES].[dbo].[fn_REX_PACE_PCT]
-- =============================================

CREATE VIEW [dbo].[UVW_REX_RPT_KSR_BUD_TOTL_ACT_PRFM]
AS

--To get all the Sales and Budget at the Plan To Level For all the Quarters Based on the PD_DT
   WITH BUD AS
  (
     SELECT 
       [CORP]
	  ,[BU]
      ,[CATG]
      ,[PD_DT]
      ,[TYP]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
	  ,YR
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS [DOL_SALE]
      ,SUM([BUD]) AS [BUD]
      ,[PACE]
     FROM     
	 [KNA_SALES].[dbo].[UVW_REX_RPT_KSR_BUD] WITH (NOLOCK)
   GROUP BY 
      [CORP]
      ,[BU]
      ,[CATG]
      ,[PD_DT]
      ,[TYP]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
	  ,ZN
	  ,ZN_NBR
	  ,YR
      ,[PD_DESC]
	  ,[PACE]
	  ),
	  CUST AS 
	  (
	  SELECT  
	  RGN
	  ,RGN_NBR
	  ,ZN
	  ,ZN_NBR
	  ,PLN_TO
	  ,PLN_TO_NBR
	  ,FISC_YR
	  ,PD_DESC
	  ,CASE
     WHEN CUST_TEAM_NBR IN 
	 (	'0000600676'
       ,'0000600677'
       ,'0000600678'
       ,'0000600679'
       ,'0000600681')
	 
     THEN
       'EASTERN REGION'
     WHEN CUST_TEAM_NBR IN 
								('0000600685'
                                ,'0000600722'
                                ,'0000600723'
                                ,'0000600718'
                                ,'0000600719'
                                ,'0000600721')
     THEN
       'WESTERN REGION'
     ELSE
    CUST_TEAM
   END AS CUST_TEAM
      FROM KNA_SALES.dbo.UVW_REX_TDLINX_CUST_HIER WITH (NOLOCK)
     GROUP BY 
	 RGN
	 ,RGN_NBR
	 ,ZN
	 ,ZN_NBR
	 ,PLN_TO
	 ,PLN_TO_NBR
	 ,FISC_YR
	 ,PD_DESC
	 ,CASE
     WHEN CUST_TEAM_NBR IN 
	 (	'0000600676'
       ,'0000600677'
       ,'0000600678'
       ,'0000600679'
       ,'0000600681')
	 
     THEN
       'EASTERN REGION'
     WHEN CUST_TEAM_NBR IN 
								('0000600685'
                                ,'0000600722'
                                ,'0000600723'
                                ,'0000600718'
                                ,'0000600719'
                                ,'0000600721')
     THEN
       'WESTERN REGION'
     ELSE
    CUST_TEAM
   END
	 )
SELECT  
	   BUD.[CORP] COLLATE DATABASE_DEFAULT AS CORP
	  ,BUD.[BU] COLLATE DATABASE_DEFAULT AS  BU
      ,BUD.[CATG]  COLLATE DATABASE_DEFAULT AS [CATG]
      ,BUD.[PD_DT]
      ,BUD.[TYP] COLLATE DATABASE_DEFAULT AS [TYP]
      ,CUST.[PLN_TO] COLLATE DATABASE_DEFAULT AS [PLN_TO]
      ,CUST.[PLN_TO_NBR] COLLATE DATABASE_DEFAULT AS PLN_TO_NBR
	  ,CUST.RGN COLLATE DATABASE_DEFAULT AS RGN
	  ,CUST.RGN_NBR COLLATE DATABASE_DEFAULT AS RGN_NBR
	  ,CUST.ZN COLLATE DATABASE_DEFAULT AS  ZN
	  ,CUST.ZN_NBR COLLATE DATABASE_DEFAULT AS  ZN_NBR
      ,BUD.[PD_DESC]  COLLATE DATABASE_DEFAULT AS [PD_DESC]
      ,SUM(BUD.[DOL_SALE]) AS DOL_SALE
      ,SUM(BUD.[BUD]) AS BUD
      ,BUD.[PACE]
   FROM  
  BUD
  INNER JOIN
  CUST
  ON
BUD.PLN_TO_NBR = CUST.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
BUD.YR = CUST.FISC_YR
AND
BUD.PD_DESC = CUST.PD_DESC COLLATE SQL_Latin1_General_CP1_CI_AS
GROUP BY
	   BUD.[CORP]
	  ,BUD.[BU]
      ,BUD.[CATG]
      ,BUD.[PD_DT]
      ,BUD.[TYP]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
	  ,CUST.RGN
	  ,CUST.RGN_NBR
	  ,CUST.ZN
	  ,CUST.ZN_NBR
      ,BUD.[PD_DESC]
      ,BUD.[PACE]

UNION ALL
---Shipments for all Quarters
SELECT
CUST.CUST_TEAM AS CORP
   ,SHIP. BU COLLATE DATABASE_DEFAULT AS BU
,PROD_HIER_CATEGORY_DESC COLLATE DATABASE_DEFAULT AS CATG
,SHIP.PD_DT
,'SHIPMENTS' AS TYP
,CUST.PLN_TO  COLLATE DATABASE_DEFAULT AS PLN_TO
,SHIP.PLN_TO COLLATE DATABASE_DEFAULT  AS PLN_TO_NBR
,CUST.RGN COLLATE DATABASE_DEFAULT  AS RGN
,CUST.RGN_NBR COLLATE DATABASE_DEFAULT  AS RGN_NBR
,CUST.ZN COLLATE DATABASE_DEFAULT AS ZN
,CUST.ZN_NBR COLLATE DATABASE_DEFAULT AS  ZN_NBR
,SHIP.[PD_DESC] COLLATE DATABASE_DEFAULT AS PD_DESC
,SUM([DOL_SALE]) AS [DOL_SALE]
,ISNULL(BUDG.BUD,0) AS BUD
,[KNA_SALES].[dbo].[fn_REX_PACE_PCT](SHIP.PD_DT) * 100 AS PACE
FROM 
[KNA_SALES].[dbo].[UVW_REX_SHIPMNT_KSR] AS SHIP WITH (NOLOCK)
INNER JOIN 
 CUST
ON SHIP.[PLN_TO] = CUST.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
SHIP.FISC_YR = CUST.FISC_YR
AND
SHIP.PD_DESC = CUST.PD_DESC
LEFT OUTER JOIN 
KNA_SALES.dbo.[UVW_REX_SHIPMNT_BUD] AS BUDG WITH (NOLOCK)

ON CONVERT(DECIMAL(10,0),SHIP.[PLN_TO]) = BUDG.[PLN_TO_NBR] AND UPPER(PROD_HIER_CATEGORY_DESC) = BUDG.CATG
AND
SHIP.FISC_YR = BUDG.YR
AND
SHIP.PD_DESC = BUDG.PD_DESC
GROUP BY
CUST.CUST_TEAM,
   BU,
PROD_HIER_CATEGORY_DESC,
SHIP.PD_DT,
CUST.PLN_TO,
SHIP.PLN_TO,
CUST.RGN,
CUST.RGN_NBR,
CUST.ZN,
CUST.ZN_NBR,
SHIP.PD_DESC,
BUDG.BUD,
SHIP.PD_DT














GO
/****** Object:  View [dbo].[UVW_REX_RPT_SHIPMNT_PRFM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- ============================================
-- Author			: Abhilash Mogili
-- ALTER date		: 04/16/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Gross Sale value,Category,Brand for each Plan_To for the last 4 weeks,13 weeks,YTD   
--								   for Present and Past year.
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_REX_RPT_SHIPMNT_PRFM] 
AS 
WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_L4W AS(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-3 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-3 FROM PRV_DT)
),
CTE_FC_L13W AS 
(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-12 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-12 FROM PRV_DT)
),
CH AS
(
SELECT  PLN_TO,PLN_TO_NBR,FISC_YR,FISC_QTR
FROM 
[KNA_SALES].dbo.[REX_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY
PLN_TO,PLN_TO_NBR,FISC_YR,FISC_QTR
)

--LAST 4 WEEKS Gross Sale Value for Present and Past Year
SELECT
  'KELLOGG CORPORATION' AS CORP,
  CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'L4W' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
 ,CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  SHIP.[FISC_WK]   THEN SHIP.[GSV] END),0) AS [GSV]

--Previous Year ago GSV
 ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK =  SHIP.[FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
RIGHT OUTER JOIN 
 CH 
ON 
SHIP.[PLN_TO] = CH.[PLN_TO_NBR] COLLATE Latin1_General_CS_AS
INNER JOIN 
CTE_FC_L4W
ON
 CTE_FC_L4W.FISC_YR = SHIP.[FISC_YR] 
 AND 
 CTE_FC_L4W.FISC_WK = SHIP.[FISC_WK]
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
ON
CH.FISC_YR = YEAR(DT.PD_DT)
AND
CH.FISC_QTR =  DATEPART(QUARTER,DT.PD_DT)
WHERE

PROD_HIER_CATEGORY_DESC NOT  IN ('Ingredients','Beverages')

GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
 ,CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END
,[PROD_HIER_BRAND_DESC]

UNION ALL

--LAST 13 WEEKS Gross Sale Value for Present and Past Year
SELECT 
   'KELLOGG CORPORATION' AS CORP,
    CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'L13W' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
  ,CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  SHIP.[FISC_WK]   THEN SHIP.[GSV] END),0) AS [GSV]

--Previous Year ago GSV
 ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK =  SHIP.[FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
  RIGHT OUTER JOIN
CH 
ON SHIP.[PLN_TO] = CH.[PLN_TO_NBR] COLLATE Latin1_General_CS_AS
INNER JOIN 
CTE_FC_L13W
ON
 CTE_FC_L13W.FISC_YR = SHIP.[FISC_YR] AND CTE_FC_L13W.FISC_WK = SHIP.[FISC_WK]
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
ON
CH.FISC_YR = YEAR(DT.PD_DT)
AND
CH.FISC_QTR =  DATEPART(QUARTER,DT.PD_DT)
WHERE
PROD_HIER_CATEGORY_DESC NOT  IN ('Ingredients','Beverages')
GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
 ,CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END
,[PROD_HIER_BRAND_DESC]

UNION ALL

--YEAR TO DATE  Gross Sale Value for Present and Past Year

SELECT 
   'KELLOGG CORPORATION' AS CORP,
    CH.[PLN_TO] AS PLN_TO --Plan To Name
   ,'YTD' AS [PD_DESC] -- Period Description
  --Plan To Number
  ,SHIP.[PLN_TO] AS [PLN_TO_NBR] --Plan To Number
  ,CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_BRAND_DESC]
--Current Year GSV
,ISNULL(SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = [FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV]
--Previous Year ago GSV
,ISNULL(SUM(CASE WHEN SHIP.[FISC_YR] = (YEAR(DT.PD_DT) - 1) AND SHIP.[FISC_WK] = [FISC_WK] THEN SHIP.[GSV] END),0) AS [GSV_YR_AGO]
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
  [KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
RIGHT OUTER JOIN
 CH 
ON SHIP.[PLN_TO] = CH.[PLN_TO_NBR] COLLATE Latin1_General_CS_AS
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
ON
CH.FISC_YR = YEAR(DT.PD_DT)
AND
CH.FISC_QTR =  DATEPART(QUARTER,DT.PD_DT)
WHERE 
PROD_HIER_CATEGORY_DESC NOT  IN ('Ingredients','Beverages')
AND
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)  
 AND
FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND FC.FISC_YR = SHIP.FISC_YR AND FC.FISC_WK = SHIP.FISC_WK
)
GROUP BY 
CH.[PLN_TO]
,SHIP.[PLN_TO]
 ,CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END
,[PROD_HIER_BRAND_DESC]









GO
/****** Object:  View [dbo].[UVW_REX_SIF_SHIPMNT_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author			: Abhilash Mogili
-- Create date		: 05/16/2018
-- Description		: Get the Shipment Budget  for the present quarter for all the Plan_To's/retailers
-- Modified Date	: 
-- Comments			: 
-- =============================================


CREATE VIEW [dbo].[UVW_REX_SIF_SHIPMNT_BUD]
as

WITH SHIPMNT_QTD AS
(
SELECT
PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO
,PD_DT
,PD_DESC
,SUM(GSV) AS GSV
,BU
,FISC_YR
FROM
(
SELECT
SHIP.PLN_TO
,DT.PD_DT
,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS PD_DESC
--Current Year GSV
,SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = SHIP.[FISC_WK] THEN SHIP.[GSV] END) AS [GSV]
,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END AS BU
,SHIP.FISC_YR       
FROM 
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
EXISTS 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FISC WITH (NOLOCK)
 WHERE
 FISC_YR = YEAR(DT.PD_DT)
 AND
 FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
 AND
 FISC.FISC_WK_END_DT <= DT.PD_DT
 AND
 FISC.FISC_YR = SHIP.FISC_YR 
 AND 
 FISC.FISC_WK = SHIP.FISC_WK 
 )
 AND
 PROD_HIER_CATEGORY_DESC IN
(
'Bars'
,'Cereal'
,'Cookies'
,'Crackers'
,'Fruit Snacks'
,'Salty Snacks'
,'Toaster Pastries'
--,'Ingredients'
)
 GROUP BY 
 SHIP.PLN_TO
 ,DT.PD_DT
 ,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END
 ,SHIP.FISC_YR

 UNION ALL

SELECT 
TD_CH.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO
,DT.PD_DT
,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS [PD_DESC] -- Period Description
,0 AS GSV
,CASE WHEN CATG.C  IN ('Cold Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks'
 END AS BU

,YEAR(DT.PD_DT) AS FISC_YR
 FROM [dbo].[REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
INNER JOIN
 [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
 ON 
 TD_CH.FISC_YR = YEAR(DT.PD_DT)
 AND
 TD_CH.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
 CROSS JOIN
 (
 SELECT 'Wholesome' AS C UNION ALL
 SELECT 'Cookies' AS C UNION ALL
 SELECT 'Crackers' AS C UNION ALL
 SELECT 'Salty Snacks' AS C UNION ALL
 SELECT 'Fruit Snacks' AS C UNION ALL
 SELECT 'On-The-Go' AS C UNION ALL
 SELECT 'Cold Cereal' AS C UNION ALL
 SELECT 'Toaster Pastries' AS C
 ) AS CATG
 GROUP BY
TD_CH.PLN_TO_NBR,DT.PD_DT,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
,CASE WHEN CATG.C  IN ('Cold Cereal','Toaster Pastries') THEN 'Morning Foods'
           ELSE 'Snacks'
 END
,YEAR(DT.PD_DT)

) AS SHIP
GROUP BY
PLN_TO
,PD_DT
,PD_DESC
,BU
,FISC_YR
 ),
 CUST AS
 (
 SELECT  PLN_TO, PLN_TO_NBR,FISC_YR,FISC_QTR 
 FROM dbo.REX_TDLINX_CUST_HIER WITH (NOLOCK)
  GROUP BY PLN_TO,PLN_TO_NBR,FISC_YR,FISC_QTR 
 ),
 BUDG AS
 (
 
SELECT PLAN_TO_NBR,QTR,SUM(BUDGET_GSV) AS BUDGET_GSV,YR
,CASE WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'Morning Foods'
ELSE 'Snacks' END AS BU
FROM 
(
     SELECT  
     BUDGET_GSV,PLAN_TO_NBR,QTR,YR,CATEGORY 
	 FROM [KNA_EXTERNAL].[USER_SALES].[REX_GSV_BUDGET] WITH (NOLOCK)
	 GROUP BY
	 BUDGET_GSV,PLAN_TO_NBR,QTR,YR,CATEGORY ) AS A
	 WHERE
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)
WHERE
FISC_YR = YEAR(PD_DT)
AND
FISC_QTR = DATEPART(QUARTER,PD_DT)
and
FC.FISC_YR = A.YR
AND
FISC_WK_END_DT <= PD_DT

AND FC.FISC_QTR = A.QTR
)
	GROUP BY PLAN_TO_NBR,QTR,YR,CASE WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'Morning Foods'
ELSE 'Snacks' END
	)


	SELECT 
	CUST.PLN_TO AS PLN_TO 
	,CUST.PLN_TO_NBR AS PLN_TO_NBR
	,SHIP.BU
	--Current Year GSV
	,CUST.FISC_YR
	,CUST.FISC_QTR
	,SHIP.GSV AS GSV
	,ISNULL(BUDG.BUDGET_GSV,0)  AS BUD
    ,CASE WHEN ISNULL(BUDG.BUDGET_GSV,0)  = 0 THEN 0 ELSE SHIP.GSV/ISNULL(BUDG.BUDGET_GSV,0) END AS PCT_TO_BUD
	,SHIP.PD_DT AS PD_DT
FROM 
 SHIPMNT_QTD as SHIP
	INNER JOIN
 CUST
ON 
CONVERT(DECIMAL(10,0),SHIP.PLN_TO) = CUST.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
YEAR(SHIP.PD_DT) = CUST.FISC_YR
AND
DATEPART(QUARTER,PD_DT) = CUST.FISC_QTR
LEFT OUTER JOIN
 BUDG 
ON 
CONVERT(DECIMAL(10,0),SHIP.[PLN_TO]) = BUDG.[PLAN_TO_NBR]
AND
SHIP.BU = BUDG.BU
AND
YEAR(SHIP.PD_DT) = BUDG.YR
AND
DATEPART(QUARTER,SHIP.PD_DT) = BUDG.QTR

GO
/****** Object:  View [dbo].[UVW_REX_SIF_GSV_BUD_QTD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	03/07/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  Gross Sale value(GSV) for all  Plan_To's for present quarter for Snacks&MF Categories
-- =============================================


CREATE VIEW [dbo].[UVW_REX_SIF_GSV_BUD_QTD]
AS
SELECT 
PLAN_TO_NBR
,QTR
,SUM(BUDGET_GSV) AS BUDGET_GSV
,YR
,CASE  WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'MF' ELSE 'Snacks' END AS BU
FROM 
(
	 SELECT  
     BUDGET_GSV,PLAN_TO_NBR,QTR,YR,CATEGORY 
	 FROM [KNA_EXTERNAL].[USER_SALES].[REX_GSV_BUDGET] WITH (NOLOCK)
	 GROUP BY
	 BUDGET_GSV,PLAN_TO_NBR,QTR,YR,CATEGORY)
	 AS A
	 WHERE
	EXISTS
	(
	SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
	CROSS JOIN
	[KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)
	WHERE
	FISC_YR = YEAR(PD_DT)
	AND
	FISC_QTR = DATEPART(QUARTER,PD_DT)
	AND
	FC.FISC_YR = A.YR
	AND
	FISC_WK_END_DT <= PD_DT
	AND 
	FC.FISC_QTR = A.QTR
)
GROUP BY PLAN_TO_NBR,QTR,YR,CASE  WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'MF' ELSE 'Snacks' END


GO
/****** Object:  View [dbo].[UVW_REX_WALMART_POS_SHR_TOTL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	 06/12/2018
-- Modified By		:
-- Modified date	:	
-- Description		:  Calculating the Dollar Share for Last 13 weeks For Present and Previous Year for each Chain for all Categories
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_REX_WALMART_POS_SHR_TOTL]
AS

SELECT
		 WALMART_SHARE.[KEL_CATEGORY] AS CATG
		 ,CONVERT(DECIMAL(10,0),CHN_NBR) AS Object_ID
		,CONVERT(CHAR(10),WALMART_SHARE. PD_DT,101) AS KPIDate
        ,CAST(ISNULL(WALMART_SHARE.DOL_SHR, 0) AS DECIMAL (3 , 1 )) AS DOL_SHR
        ,CAST(ISNULL(WALMART_SHARE.DOL_SHR_CYA, 0) AS DECIMAL (3 , 1 )) AS DOL_SHR_CYA

FROM
(
SELECT 
[KEL_CATEGORY]
 ,WCH.CHN_NBR
 ,WCH.PD_DT
,(CASE WHEN (SUM(CASE WHEN ([KEL_CORPORATE] = 'KELLOGG CORPORATION'  AND ([KEL_BRAND]!= '' )) THEN [$] END) = 0 ) THEN 0 
ELSE 
(SUM(CASE WHEN ([KEL_CORPORATE] = 'KELLOGG CORPORATION'  AND ([KEL_BRAND]!= ''  )) THEN [$]  END)/
(SUM(CASE WHEN ([KEL_CORPORATE] = 'KELLOGG CORPORATION'  AND ([KEL_BRAND]!= ''  )) THEN [$] END) +
SUM(CASE WHEN ([KEL_CORPORATE] != 'KELLOGG CORPORATION' AND ([KEL_BRAND]= '' )) THEN [$] END))) END * 100) AS DOL_SHR
,(CASE WHEN (SUM(CASE WHEN ([KEL_CORPORATE] = 'KELLOGG CORPORATION'  AND ([KEL_BRAND]!= '' )) THEN [$ YA] END) = 0 ) THEN 0 
ELSE 
(SUM(CASE WHEN ([KEL_CORPORATE] = 'KELLOGG CORPORATION'  AND ([KEL_BRAND]!= ''  )) THEN [$ YA]  END)/
(SUM(CASE WHEN ([KEL_CORPORATE] = 'KELLOGG CORPORATION'  AND ([KEL_BRAND]!= ''  )) THEN [$ YA] END) +
SUM(CASE WHEN ([KEL_CORPORATE] != 'KELLOGG CORPORATION' AND ([KEL_BRAND] = '' )) THEN [$ YA] END))) END * 100) AS DOL_SHR_CYA
FROM 
[KNA_EXTERNAL].AOD.REX_WALMART_POS_SHARE AS  WPOS WITH (NOLOCK)
INNER JOIN 
(
SELECT  
 CUST.PLN_TO_NBR
,CUST.CHN_NBR
,DT.PD_DT
FROM 
[KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER]AS CUST WITH (NOLOCK) 
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT]AS DT WITH (NOLOCK) 
ON
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR  = DATEPART(QUARTER,DT.PD_DT)
WHERE PLN_TO_NBR = '0000300994'
GROUP BY
 CUST.PLN_TO_NBR
,CUST.CHN_NBR
,DT.PD_DT
) WCH 
ON  WCH.PLN_TO_NBR = 0000300994
WHERE
[All Periods] LIKE '%Latest 13 Wks%' 
GROUP BY 
[KEL_CATEGORY],WCH.CHN_NBR,WCH.PD_DT
) WALMART_SHARE




GO
/****** Object:  View [dbo].[UVW_REX_SIF_KPI_SHARE_IMP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author		:	Abhilash Mogili
-- Create date	:	05/17/2018
-- Modified By	:
-- Modified date:	
-- Description	:	Returns the Dollar Share for Last 13 weeks For Present and Previous Year for each store for Crackers,Cookies,Wholesome,Salty Snacks and Fruit Snacks.
--					Returns Walmart and Publix Dollar Share for Last 13 weeks For Present and Previous Year for each Chain for Crackers,Cookies,Wholesome,Salty Snacks and Fruit Snacks 
-- Comments		:
-- =============================================


CREATE  VIEW [dbo].[UVW_REX_SIF_KPI_SHARE_IMP]
AS
-- kpi_cat10_RTEC_SS_L13
WITH POS AS
(SELECT CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR, cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KNA_EXTERNAL.UVW_REX_SIF_NIELSEN_STORE_PRFM_POS_SHR')

UNION ALL

SELECT CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR, cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KNA_EXTERNAL.UVW_REX_SIF_HEB_STORE_PRFM_POS_SHR')

),
PUBLIX AS
(
SELECT 
CATG
,CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR)AS Object_ID
,CONVERT(CHAR(10),DT.PD_DT,101) AS KPIDate
,SUM([($ Shr - Prompt)]) AS Calculation
,SUM([($ Shr CYA - Prompt)]) AS TargetCalculation
FROM 
(
SELECT CH.CHAIN_NBR,POS.[(All Markets)],POS.[($ Shr - Prompt)],POS.[($ Shr CYA - Prompt)],LTRIM(RTRIM([(KEL_CATEGORY)])) AS CATG
 FROM [KNA_EXTERNAL].[AOD].[REX_PUBLIX_DIV_POS] AS POS WITH (NOLOCK)
INNER JOIN
(SELECT 
      [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE] WITH (NOLOCK)
  GROUP BY
  [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  
  ) AS CH
  ON
  LTRIM(RTRIM(POS.[(All Markets)])) = LTRIM(RTRIM(CH.NIELSEN_DIV))
WHERE

[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' 
AND
--LTRIM(RTRIM([(KEL_CATEGORY)])) = 'CRACKER CORE'
--AND
LTRIM(RTRIM([(KEL_BRAND)])) != ''
AND
[(All Periods)] LIKE '%Latest 13 Wks%'

)
AS  WPOS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
group by
CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR),CONVERT(CHAR(10),DT.PD_DT,101),CATG
)



 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Cold Cereal 
SELECT 
'kpi_cat10_RTEC_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0)  AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'COLD CEREAL'

UNION ALL

--Getting the Publix Dollar Share for Last 13 Weeks for present and Previous Year for each Chain For Cold Cereal
SELECT 
'kpi_cat10_RTEC_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG = 'COLD CEREAL'

UNION ALL
--Getting the Dollar Share for Last 13 weeks For Present and Previous Year for each store for Cold Cereal
SELECT 
'kpi_cat10_RTEC_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM POS
 WHERE  CATG = 'Cold Cereal'
  
UNION ALL


--kpi_cat20_Crackers_CS_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Crackers 
SELECT 
'kpi_cat20_Crackers_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0)  AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation

FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'CRACKER CORE'

UNION ALL

--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Crackers 

SELECT 
'kpi_cat20_Crackers_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG = 'CRACKER CORE'


UNION ALL

--kpi_cat20_Crackers_SS_L13
SELECT 
'kpi_cat20_Crackers_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM
POS
WHERE
 CATG = 'Crackers'


UNION ALL

-- kpi_cat30_Wholesome_CS_L13


SELECT 
'kpi_cat30_Wholesome_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0)  AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'WHOLESOME SNACKS'


UNION ALL


--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Wholesome 

SELECT 
'kpi_cat30_Wholesome_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG = 'WHOLESOME SNACKS'


UNION ALL

-- kpi_cat30_Wholesome_SS_L13

SELECT 
'kpi_cat30_Wholesome_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM
POS
WHERE 
CATG = 'Wholesome'

UNION ALL
 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Toaster Pastry
SELECT 
'kpi_cat40_ToasterPastries_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0)  AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'TOASTER PASTRY'

UNION ALL

--Getting the Publix Dollar Share for Last 13 Weeks for present and Previous Year for each Chain For Cold Cereal
SELECT 
'kpi_cat40_ToasterPastries_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG = 'TOASTER PASTRY'

UNION ALL

--kpi_cat40_Toaster Pastries_SS_L13
SELECT 
'kpi_cat40_ToasterPastries_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM
POS
 WHERE CATG = 'Toaster Pastries'


UNION ALL


--kpi_cat50_Salty_CS_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Salty Snacks
SELECT 
'kpi_cat50_Salty_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0)  AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'SALTY SNACKS'


UNION ALL

--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Salty Snacks 

SELECT 
'kpi_cat50_Salty_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG =  'SALTY SNACKS'

UNION ALL

--kpi_cat50_Salty_SS_L13
SELECT 
'kpi_cat50_Salty_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM
POS
WHERE
CATG = 'Salty Snacks'



UNION ALL


--kpi_cat60_Cookies_CS_L13
SELECT 
'kpi_cat60_Cookies_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0) AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG =  'COOKIE CORE'

UNION ALL


--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Cookies 


SELECT 
'kpi_cat60_Cookies_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG = 'COOKIE CORE'


UNION ALL


--kpi_cat60_Cookies_SS_L13
SELECT 
'kpi_cat60_Cookies_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM
POS
WHERE
CATG = 'Cookies'


 UNION ALL

 --kpi_cat70_FruitSnacks_CS_L13

 SELECT 
'kpi_cat70_FruitSnacks_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,ISNULL([DOL_SHR],0)  AS Calculation
,ISNULL(CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END,0) AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_REX_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG =  'FRUIT FLAVORED SNACKS'


UNION ALL
--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Fruit Snacks 
SELECT 
'kpi_cat70_FruitSnacks_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
, Object_ID
,KPIDate
,Calculation
, TargetCalculation
FROM 
PUBLIX
WHERE
CATG = 'FRUIT FLAVORED SNACKS'

 
UNION ALL

--kpi_cat70_FruitSnacks_SS_L13
SELECT 
'kpi_cat70_FruitSnacks_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,ISNULL(CAST(POS.[DOL_SHR] AS DECIMAL(4,1)),0) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,ISNULL(CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(4,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(4,1)) END,0) AS TargetCalculation
FROM
POS
 WHERE 
 CATG = 'Fruit Snacks'










GO
/****** Object:  View [dbo].[UVW_REX_WALMART_STORE_PRFM_POS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author			:	Abhilash Mogili
-- ALTER date		:	04/17/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Walmart POS_Sales,Units for the last 4 weeks,13 weeks,YTD  timeframes for present and last year from the WALMART_WK table based on the FISC_CAL view.
-- Comments			:
-- =============================================

CREATE VIEW [dbo].[UVW_REX_WALMART_STORE_PRFM_POS]
AS

WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_L4W AS(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-3 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-3 FROM PRV_DT)
),
CTE_FC_L13W AS 
(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-12 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-12 FROM PRV_DT)
)




--Last 4 Weeks for Year and Year Ago
SELECT
	  WALMART.SOLDTO
 ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END AS CATG 
     ,WALMART.[BRAND]
	 ,CTE_FC_L4W.PD_DT
		  --Total POS_Sales for the Present year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	 ---- --Total POS_Sales for the Past year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	 ---- Units(Total POS_QTY) for Present Year
	 ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  WALMART.[WK]  THEN  WALMART.[UNITS] END),0) AS [UNITS]
	 ---- Units(Total POS_QTY) for Past Year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK = WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS_YA]
  ,'L4W' AS PD_DESC
FROM  KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN CTE_FC_L4W
ON
 CTE_FC_L4W.FISC_YR = WALMART.[YR] AND CTE_FC_L4W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO
 ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END,WALMART.[BRAND],CTE_FC_L4W.PD_DT

UNION  ALL

--Last 13 Weeks for Year and Year Ago
SELECT
	  WALMART.SOLDTO
	  ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END AS CATG 
     ,WALMART.[BRAND]
	 ,CTE_FC_L13W.PD_DT
		  --Total POS_Sales for the Present year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	 ---- --Total POS_Sales for the Past year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	 ----Units(Total POS_QTY) for Present Year
	 ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  WALMART.[WK]  THEN  WALMART.[UNITS] END),0) AS [UNITS]
	 ----Units(Total POS_QTY) for Past Year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS_YA]
  ,'L13W' AS PD_DESC
FROM  KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN CTE_FC_L13W
ON
 CTE_FC_L13W.FISC_YR = WALMART.[YR] 
 AND 
 CTE_FC_L13W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO
   ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END
 ,WALMART.[BRAND],CTE_FC_L13W.PD_DT



 UNION ALL

-- YTD for Year and Year Ago

SELECT
	  WALMART.SOLDTO
	  ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END AS CATG 
     ,WALMART.[BRAND] AS BRAND
	 ,DT.PD_DT
	  --Total POS_Sales for the Present year
     ,ISNULL(SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	  --Total POS_Sales for the Past year
     ,ISNULL(SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	  --Units(Total Quantity) for Present Year
	 ,ISNULL(SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN  WALMART.[UNITS] END),0) AS [UNITS]
	   --Units(Total Quantity) for Past Year
     ,ISNULL(SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS_YA]
      ,'YTD' AS PD_DESC
FROM
       KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
	   CROSS JOIN
      [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1) AND  
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT) AND
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK])
 GROUP BY 
 WALMART.SOLDTO
   ,CASE 
		  WHEN WALMART.[CATG] = 'Cereal' THEN 'Cold Cereal'
		  WHEN WALMART.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
	      WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND]  LIKE '%Cones%')) THEN 'Cones'
          WHEN ((WALMART.[CATG] = 'Cookies') AND (WALMART.[BRAND] NOT LIKE '%OTG%'  AND WALMART.[BRAND] NOT LIKE '%Cones%')) THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
		  WHEN  ((WALMART.[CATG] = 'Crackers') AND (WALMART.BRAND NOT LIKE '%OTG%') )THEN 'Crackers'
		  WHEN (( WALMART.[CATG] = 'Cookies' OR WALMART.CATG = 'Crackers') AND (WALMART.BRAND  LIKE '%OTG%')) THEN 'On-The-Go'
		  ELSE WALMART.CATG END
 ,WALMART.[BRAND],DT.PD_DT












GO
/****** Object:  View [dbo].[UVW_REX_CUST_HIER_BRAND]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author		:	Abhilash Mogili
-- Create date	:	04/20/2018
-- Modified By	:  
-- Modified date:	
-- Description	: To get the Customer Hierarchy Details along with the BU,Category,Brand Details for the Different Vendors(Nielsen,Orchestro,HEB)
-- =============================================


CREATE VIEW [dbo].[UVW_REX_CUST_HIER_BRAND]
AS

--Here we are getting the Store Details for the Present Quarter
WITH CUST AS
(
SELECT
	   [RGN] COLLATE DATABASE_DEFAULT AS RGN
      ,[RGN_NBR] COLLATE DATABASE_DEFAULT AS [RGN_NBR]
      ,[ZN] COLLATE DATABASE_DEFAULT AS ZN
      ,[ZN_NBR] COLLATE DATABASE_DEFAULT AS [ZN_NBR]
      ,[CUST_TEAM] COLLATE DATABASE_DEFAULT AS CUST_TEAM
      ,[CUST_TEAM_NBR] COLLATE DATABASE_DEFAULT AS [CUST_TEAM_NBR]
      ,[TERR] COLLATE DATABASE_DEFAULT AS TERR
      ,[TERR_NBR] COLLATE DATABASE_DEFAULT AS [TERR_NBR]
      ,[PLN_TO] COLLATE DATABASE_DEFAULT AS PLN_TO
      ,[PLN_TO_NBR] COLLATE DATABASE_DEFAULT AS [PLN_TO_NBR]
      ,[CHN] COLLATE DATABASE_DEFAULT AS CHN
      ,[CHN_NBR] COLLATE DATABASE_DEFAULT AS [CHN_NBR]
      ,[SOLD_TO] COLLATE DATABASE_DEFAULT AS SOLD_TO
      ,[SOLD_TO_NBR] COLLATE DATABASE_DEFAULT AS [SOLD_TO_NBR]
	  ,[STDLINXSCD] 
      ,[PREV_ACCT_NBR] COLLATE DATABASE_DEFAULT AS [PREV_ACCT_NBR]
      ,[SNO] COLLATE DATABASE_DEFAULT AS SNO
      ,[SNAME] COLLATE DATABASE_DEFAULT AS SNAME
      ,[STR] COLLATE DATABASE_DEFAULT AS [STR]
      ,[CITY] COLLATE DATABASE_DEFAULT AS CITY
      ,[SST] COLLATE DATABASE_DEFAULT AS SST
      ,[PSTL_CODE] COLLATE DATABASE_DEFAULT AS [PSTL_CODE]
,CASE		WHEN PLN_TO_NBR = '0000300760'								 THEN 'HEB'
				WHEN PLN_TO_NBR = '0000300855' OR  PLN_TO_NBR = '0000300994' THEN 'ORC'
ELSE 'NIELSEN' END AS VENDOR
FROM
dbo.REX_TDLINX_CUST_HIER  AS CUST WITH (NOLOCK)
INNER JOIN
UVW_REX_PD_DT AS DT
ON
CUST.FISC_YR = DT.CUR_YR
AND
CUST.FISC_QTR = DT.CUR_QTR
),
---- getting all the Brands and their related CORPS for Nielsen,HEB and orchestro Vendors
BRAND_VENDOR AS
(
SELECT 
CATG COLLATE DATABASE_DEFAULT AS CATG
,BRAND COLLATE DATABASE_DEFAULT AS BRAND
,CORP COLLATE DATABASE_DEFAULT AS CORP
,VENDOR COLLATE DATABASE_DEFAULT AS VENDOR
--Here we are using the Linked Query to get the Nielsen and HEB Competitors and Brands from the MEMSQL
 FROM OPENQUERY([MYSQLMEMSQL Prod], 'SELECT
 CORP,CATG,BRAND, VENDOR
FROM KNA_EXTERNAL.UVW_REX_PROD_HIER
GROUP BY
CORP,CATG,BRAND, VENDOR')

UNION ALL
--- Getting all the Orchestro Brands
	SELECT  
	CASE 
            WHEN (PROD_HIER_CATEGORY_DESC = 'Cereal') THEN 'Cold Cereal'
            WHEN (PROD_HIER_CATEGORY_DESC = 'Bars')    THEN 'Wholesome'
			WHEN ((PROD_HIER_CATEGORY_DESC = 'Cookies') AND (PROD_HIER_BRAND_DESC  LIKE '%Cones%')) THEN 'Cones'
            WHEN ((PROD_HIER_CATEGORY_DESC = 'Cookies') AND (PROD_HIER_BRAND_DESC NOT LIKE '%OTG%'  AND PROD_HIER_BRAND_DESC NOT LIKE '%Cones%' )) THEN 'Cookies'
            WHEN ((PROD_HIER_CATEGORY_DESC = 'Crackers') AND (PROD_HIER_BRAND_DESC NOT LIKE '%OTG')) THEN 'Crackers'
            WHEN (((PROD_HIER_CATEGORY_DESC = 'Cookies') OR (PROD_HIER_CATEGORY_DESC = 'Crackers')) AND (PROD_HIER_BRAND_DESC LIKE '%OTG')) THEN 'On-The-Go'
            ELSE PROD_HIER_CATEGORY_DESC END AS CATG,
			PROD_HIER_BRAND_DESC AS BRAND,
			'KELLOGG CORPORATION' AS CORP,
			'ORC' AS VENDOR
	FROM 
	KNA_SALES.dbo.REX_UPC_PKG_PROD_HIER  WITH (NOLOCK)
	WHERE
	PROD_HIER_CATEGORY_DESC NOT IN ('Beverages','Frozen Breakfast','Frozen Meals','Non Food','Veggie','Other Convenience')
	GROUP BY
	CASE 
            WHEN (PROD_HIER_CATEGORY_DESC = 'Cereal') THEN 'Cold Cereal'
            WHEN (PROD_HIER_CATEGORY_DESC = 'Bars')    THEN 'Wholesome'
			WHEN ((PROD_HIER_CATEGORY_DESC = 'Cookies') AND (PROD_HIER_BRAND_DESC  LIKE '%Cones%')) THEN 'Cones'
            WHEN ((PROD_HIER_CATEGORY_DESC = 'Cookies') AND (PROD_HIER_BRAND_DESC NOT LIKE '%OTG%'  AND PROD_HIER_BRAND_DESC NOT LIKE '%Cones%' )) THEN 'Cookies'
            WHEN ((PROD_HIER_CATEGORY_DESC = 'Crackers') AND (PROD_HIER_BRAND_DESC NOT LIKE '%OTG')) THEN 'Crackers'
            WHEN (((PROD_HIER_CATEGORY_DESC = 'Cookies') OR (PROD_HIER_CATEGORY_DESC = 'Crackers')) AND (PROD_HIER_BRAND_DESC LIKE '%OTG')) THEN 'On-The-Go'
            ELSE PROD_HIER_CATEGORY_DESC END,
			PROD_HIER_BRAND_DESC
)
--We are joining the Store details with the Brands and Corps Based on their Vendors
SELECT
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[CUST_TEAM]
      ,CUST.[CUST_TEAM_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR]
	  ,CUST.[STDLINXSCD]
      ,CUST.[PREV_ACCT_NBR]
      ,CUST.[SNO]
      ,CUST.[SNAME]
      ,CUST.[STR]
      ,CUST.[CITY]
      ,CUST.[SST]
      ,CUST.[PSTL_CODE]
	  ,CUST.VENDOR AS VENDOR
      ,BRAND_VENDOR.CATG AS CATG
	  --Here Based on the Category we are getting the Businsess Unit
	  ,CASE WHEN BRAND_VENDOR.CATG IN ('TOASTER PASTRY','Toaster Pastries','Cold Cereal') THEN 'Morning Foods' ELSE 'Snacks' END AS BU
	  ,BRAND_VENDOR.BRAND AS BRAND
	  ,BRAND_VENDOR.CORP AS CORP
	   FROM
	   CUST
	   INNER JOIN
	   BRAND_VENDOR
	   ON
	   CUST.VENDOR = BRAND_VENDOR.VENDOR COLLATE SQL_Latin1_General_CP1_CI_AS






GO
/****** Object:  View [dbo].[UVW_REX_POS_WALMART_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	03/21/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Walmart POS_Sales for all Quarters Q1,Q2,Q3  for Snacks and MF Categories
-- Comments			: Categories are Hardcoded now as per the BRD,In the Future Sprint we will make them Parameterized
-- =============================================



CREATE VIEW [dbo].[UVW_REX_POS_WALMART_KSR]

AS

SELECT
		  WM.SOLDTO
		  ---Based on the category we are getting the BU
		  ,CASE WHEN WM.CATG IN ('Cereal','Toaster Pastries') THEN 'Morning Foods'
	       ELSE 'Snacks' END AS BU
		  ,CASE 
			WHEN WM.[CATG] = 'Cereal' THEN 'Cold Cereal'
			WHEN WM.[CATG] = 'Bars' THEN 'Wholesome'--When the category is Bars Consider it as WholeSome
			WHEN WM.[CATG] = 'Cookies' AND WM.BRAND  NOT LIKE '%OTG' THEN 'Cookies' -- We are not considering the Cookies which has the Brand ending with OTG(On-The-Go)
			WHEN WM.[CATG] = 'Crackers' AND WM.BRAND NOT LIKE '%OTG' THEN 'Crackers'-- We are not considering the Crackers which has the Brand ending with OTG(On-The-Go)
			WHEN (WM.[CATG] = 'Cookies' OR WM.CATG = 'Crackers') AND WM.BRAND  LIKE '%OTG' THEN 'On-The-Go' -- we are considering the only OTG Brand for the Cookies and Crackers
			ELSE WM.CATG END AS CATG 
			,SUM(WM.[TOTL_SALES]) AS [TOTL_SALES]
			,'Q'+CAST((FISC.FISC_QTR) AS VARCHAR(1)) as PD_DESC
		 ,WM.YR
FROM
       KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WM WITH (NOLOCK)
	      CROSS JOIN 
	   [KNA_SALES].dbo.UVW_REX_PD_DT AS DT WITH (NOLOCK)
	   INNER JOIN 
	   KG_VIEWS.dbo.[UVW_FISC_CAL] FISC WITH (NOLOCK)
		ON 
	   FISC.FISC_YR = YEAR(DT.PD_DT)
	   AND
       FISC_YR = WM.[YR]
       AND
	   FISC_WK = WM.WK
	   AND
       FISC_WK <= DATEPART(WEEK,DT.PD_DT)
	   --We are Limiting the Ingredients Category as we dont need for KSR Sales and Budget Dashoboard
		WHERE WM.CATG != 'Ingredients'
			GROUP BY 
			WM.SOLDTO
			,CASE WHEN WM.CATG IN ('Cereal','Toaster Pastries') THEN 'Morning Foods'
			ELSE 'Snacks' END
			,CASE 
		    WHEN WM.[CATG] = 'Cereal' THEN 'Cold Cereal'
			WHEN WM.[CATG] = 'Bars' THEN 'Wholesome'
			WHEN WM.[CATG] = 'Cookies' AND WM.BRAND  NOT LIKE '%OTG' THEN 'Cookies' 
			WHEN WM.[CATG] = 'Crackers' AND WM.BRAND NOT LIKE '%OTG' THEN 'Crackers'
			WHEN (WM.[CATG] = 'Cookies' OR WM.CATG = 'Crackers') AND WM.BRAND  LIKE '%OTG' THEN 'On-The-Go'
			ELSE WM.CATG END
			,'Q'+CAST((FISC.FISC_QTR) AS VARCHAR(1))
			,WM.YR











GO
/****** Object:  View [dbo].[UVW_REX_WALMART_STORE_PRFM_POS_KLG_SALES]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	04/17/2018
-- Modified By		:
-- Modified date	:	
-- Description		:	Returns the Walmart POS_Sales,Units for the last 4 weeks,13 weeks,YTD  timeframes for present and last year from the WALMART_WK table based on the FISC_CAL view.
-- Comments			:
-- =============================================

CREATE VIEW [dbo].[UVW_REX_WALMART_STORE_PRFM_POS_KLG_SALES]
AS

WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F WITH (NOLOCK)
CROSS JOIN [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1,YEAR(DT.PD_DT)-2)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
PRV_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT)-1 FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_L4W AS(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-3 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-3 FROM PRV_DT)
),
CTE_FC_L13W AS 
(
SELECT *,'CUR' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN-12 FROM CUR_DT)
UNION ALL
SELECT *,'PREV' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT)-1,YEAR(PD_DT)-2) AND RN <= (SELECT RN FROM PRV_DT) AND RN >= (SELECT RN-12 FROM PRV_DT)
)




--Last 4 Weeks for Year and Year Ago
SELECT
	  WALMART.SOLDTO
	 ,CTE_FC_L4W.PD_DT
		  --Total POS_Sales for the Present year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	 ---- --Total POS_Sales for the Past year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	 ---- Units(Total POS_QTY) for Present Year
	 ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'CUR' AND CTE_FC_L4W.FISC_WK =  WALMART.[WK]  THEN  WALMART.[UNITS] END),0) AS [UNITS]
	 ---- Units(Total POS_QTY) for Past Year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L4W.TYP = 'PREV' AND CTE_FC_L4W.FISC_WK = WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS_YA]
  ,'L4W' AS PD_DESC
FROM  
KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN 
CTE_FC_L4W
ON
 CTE_FC_L4W.FISC_YR = WALMART.[YR] AND CTE_FC_L4W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO
 ,CTE_FC_L4W.PD_DT

UNION  ALL

--Last 13 Weeks for Year and Year Ago
SELECT
	  WALMART.SOLDTO
	 ,CTE_FC_L13W.PD_DT
		  --Total POS_Sales for the Present year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	 ---- --Total POS_Sales for the Past year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	 ----Units(Total POS_QTY) for Present Year
	 ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'CUR' AND CTE_FC_L13W.FISC_WK =  WALMART.[WK]  THEN  WALMART.[UNITS] END),0) AS [UNITS]
	 ----Units(Total POS_QTY) for Past Year
  ,ISNULL(SUM(CASE WHEN CTE_FC_L13W.TYP = 'PREV' AND CTE_FC_L13W.FISC_WK = WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS_YA]
  ,'L13W' AS PD_DESC
FROM  
KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN 
CTE_FC_L13W
ON
 CTE_FC_L13W.FISC_YR = WALMART.[YR] 
 AND 
 CTE_FC_L13W.FISC_WK = WALMART.[WK]
 GROUP BY 
 WALMART.SOLDTO
,CTE_FC_L13W.PD_DT



 UNION ALL

-- YTD for Year and Year Ago

SELECT
	  WALMART.SOLDTO
	 ,DT.PD_DT
	  --Total POS_Sales for the Present year
     ,ISNULL(SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	  --Total POS_Sales for the Past year
     ,ISNULL(SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	  --Units(Total Quantity) for Present Year
	 ,ISNULL(SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN  WALMART.[UNITS] END),0) AS [UNITS]
	   --Units(Total Quantity) for Past Year
     ,ISNULL(SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[UNITS] END),0) AS [UNITS_YA]
      ,'YTD' AS PD_DESC
FROM
       KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
	   CROSS JOIN
      [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1) AND  
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT) AND
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK])
 GROUP BY 
 WALMART.SOLDTO
,DT.PD_DT













GO
/****** Object:  View [dbo].[UVW_REX_RPT_CHN_PRFM_POS_SALES_RNK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	04/24/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: To get the Period Date,Current Year,Previous Year,Current and Previous Week,Current Quarter Details
-- =============================================
CREATE VIEW [dbo].[UVW_REX_RPT_CHN_PRFM_POS_SALES_RNK]
AS

--Getting the Nielsen and HEB Store Sales for all the Required TimeFrames L4W,L13W and YTD From MEMSQL using the Linked Query
WITH STORE_SALES AS 
(
SELECT        
CHN COLLATE DATABASE_DEFAULT AS CHN,
CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
PD_DESC  AS PD_DESC,
ISNULL(DOL_SALE,0) AS STORE_DOL_SALE, 
ISNULL(DOL_SALE_YA,0)  AS STORE_DOL_SALE_YR_AGO,
ISNULL(UNITS,0) AS STORE_UNITS,
ISNULL(UNITS_YA,0) AS STORE_UNITS_YA
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CORP, PD_DESC, CAST(DOL_SALE as decimal(38,6)) as DOL_SALE, CAST(DOL_SALE_YA as decimal(38,6)) AS DOL_SALE_YA, CAST(UNITS AS DECIMAL(38,6)) AS UNITS, CAST( UNITS_YA AS DECIMAL(38,6)) AS UNITS_YA, CHN, CHN_NBR,SOLD_TO,SOLD_TO_NBR
FROM KNA_EXTERNAL.UVW_REX_RPT_STORE_PRFM_POS_KLG_SALES')

UNION ALL
--Getting the kroger Store Sales for all the Required TimeFrames L4W,L13W and YTD From MEMSQL using the Linked Query
SELECT        
CHN COLLATE DATABASE_DEFAULT AS CHN,
CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
PD_DESC  AS PD_DESC,
ISNULL(DOL_SALE,0) AS STORE_DOL_SALE, 
ISNULL(DOL_SALE_YA,0)  AS STORE_DOL_SALE_YR_AGO,
ISNULL(UNITS,0) AS STORE_UNITS,
ISNULL(UNITS_YA,0) AS STORE_UNITS_YA
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT CORP, PD_DESC, CAST(DOL_SALE as decimal(38,6)) as DOL_SALE, CAST(DOL_SALE_YA as decimal(38,6)) AS DOL_SALE_YA, CAST(UNITS AS DECIMAL(38,6)) AS UNITS, CAST( UNITS_YA AS DECIMAL(38,6)) AS UNITS_YA, CHN, CHN_NBR,SOLD_TO,SOLD_TO_NBR
FROM KNA_EXTERNAL.UVW_REX_RPT_KROGER_STORE_PRFM_POS_KLG_SALES')

UNION ALL

--Getting the Walmart Store Sales for all the Required TimeFrames L4W,L13W and YTD 
SELECT        
TD_CH.CHN COLLATE DATABASE_DEFAULT AS CHN,
TD_CH.CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR ,
TD_CH.SOLD_TO COLLATE DATABASE_DEFAULT AS SOLD_TO,
TD_CH.SOLD_TO_NBR COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
WM.PD_DESC  AS PD_DESC,
ISNULL(WM.TOTL_SALES,0) AS STORE_DOL_SALE, 
ISNULL(WM.TOTL_SALES_YA,0) AS STORE_DOL_SALE_YR_AGO,
ISNULL(UNITS,0) AS STORE_UNITS,
ISNULL(UNITS_YA,0) AS STORE_UNITS_YA
FROM	
[KNA_SALES].[dbo].[UVW_REX_WALMART_STORE_PRFM_POS_KLG_SALES] AS  WM WITH(NOLOCK)
INNER JOIN 
[KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS TD_CH  WITH (NOLOCK)
--Here we joining the POS_WALMART view with the Customer HIerarchy view based on the SOLD TO NBR
ON WM.SOLDTO COLLATE SQL_Latin1_General_CP1_CI_AS = TD_CH.SOLD_TO_NBR
AND
YEAR(WM.PD_DT) = TD_CH.FISC_YR
AND
DATEPART(QUARTER,WM.PD_DT) = TD_CH.FISC_QTR
),
--Getting the Chain level sales for all the Stores along with the required timeframes L4W,L13W and YTD
 CHN_SALES AS
(
SELECT        
CHN,
CHN_NBR,
PD_DESC,
ISNULL(SUM(STORE_DOL_SALE),0) AS CHN_DOL_SALE, 
ISNULL(SUM(STORE_DOL_SALE_YR_AGO),0)  AS CHN_DOL_SALE_YR_AGO,
ISNULL(SUM(STORE_UNITS),0) AS CHN_UNITS,
ISNULL(SUM(STORE_UNITS_YA),0) AS CHN_UNITS_YA,
COUNT(SOLD_TO_NBR) AS STORES
FROM
STORE_SALES
GROUP BY
CHN
,CHN_NBR
,PD_DESC
),
STORE_CHN_PCT_YA
 AS
 (
SELECT
STORE.CHN,
STORE.CHN_NBR,
STORE.SOLD_TO,
STORE.SOLD_TO_NBR,
STORE.PD_DESC,
STORE.STORE_DOL_SALE,
STORE.STORE_DOL_SALE_YR_AGO,
STORE.STORE_UNITS,
STORE.STORE_UNITS_YA,
CHN.CHN_DOL_SALE,
CHN.CHN_DOL_SALE_YR_AGO,
ISNULL(CASE WHEN STORE.STORE_DOL_SALE_YR_AGO = 0 THEN  0 ELSE (STORE.STORE_DOL_SALE - STORE.STORE_DOL_SALE_YR_AGO)/(STORE.STORE_DOL_SALE_YR_AGO) END,0) AS STORE_DOL_SALE_PCT_YA,
ISNULL(CASE WHEN CHN.CHN_DOL_SALE_YR_AGO	  = 0 THEN	0 ELSE(CHN.CHN_DOL_SALE - CHN.CHN_DOL_SALE_YR_AGO)/(CHN.CHN_DOL_SALE_YR_AGO) END,0) AS CHN_DOL_SALE_PCT_YA,
ISNULL(CASE WHEN STORE.STORE_UNITS_YA        = 0 THEN  0 ELSE (STORE.STORE_UNITS - STORE.STORE_UNITS_YA)/(STORE.STORE_UNITS_YA) END,0) AS STORE_UNITS_PCT_YA,
ISNULL(CASE WHEN CHN.CHN_UNITS_YA			  = 0 THEN	0 ELSE (CHN.CHN_UNITS - CHN.CHN_UNITS_YA)/(CHN.CHN_UNITS_YA) END,0) AS CHN_UNITS_PCT_YA,
CHN.CHN_UNITS,
CHN.CHN_UNITS_YA,
CHN.STORES
FROM
STORE_SALES AS STORE
INNER JOIN
CHN_SALES AS CHN
ON
STORE.CHN_NBR = CHN.CHN_NBR
AND
STORE.PD_DESC = CHN.PD_DESC
)

--Getting the Chain rank for each store within the chain both for Dollar sale and Units

SELECT
CHN,
CHN_NBR,
SOLD_TO,
SOLD_TO_NBR,
PD_DESC,
STORE_DOL_SALE,
STORE_DOL_SALE_YR_AGO,
STORE_UNITS,
STORE_UNITS_YA,
CHN_DOL_SALE,
CHN_DOL_SALE_YR_AGO,
(STORE_DOL_SALE_PCT_YA *100)	AS STORE_DOL_SALE_PCT_YA,
(CHN_DOL_SALE_PCT_YA *100)		AS CHN_DOL_SALE_PCT_YA,
(STORE_UNITS_PCT_YA * 100)		AS STORE_UNITS_PCT_YA,
(CHN_UNITS_PCT_YA * 100 )		AS CHN_UNITS_PCT_YA,
CHN_UNITS,
CHN_UNITS_YA,
STORES,
RANK() OVER (PARTITION BY [PD_DESC],CHN_NBR ORDER BY STORE_DOL_SALE_PCT_YA DESC)	AS [CHN_RNK_SALES],
RANK() OVER (PARTITION BY [PD_DESC],CHN_NBR ORDER BY STORE_UNITS_PCT_YA DESC)		AS [CHN_RNK_UNITS]
FROM
STORE_CHN_PCT_YA




GO
/****** Object:  View [dbo].[UVW_REX_VLD_POS_BUD_YAGO]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	09/24/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the POS Budget and Dollar Sale Year Ago for all the Stores 
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_REX_VLD_POS_BUD_YAGO]
AS
SELECT  
Q_TOTAL AS BUD
,CAST(ISNULL(YAGO,0) AS float) AS DOL_SALE_YAGO
,SOLD_TO_NBR
,CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' ELSE CATEGORY END AS CATG
,BUDG.YR
,'Q'+CAST(BUDG.QTR AS VARCHAR(1)) AS PD_DESC
FROM [KNA_EXTERNAL].[USER_SALES].[REX_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = DT.CUR_YR
AND
DT.CUR_YR = BUDG.YR
AND
FISC_WK_END_DT <= PD_DT
AND FC.FISC_QTR = BUDG.QTR
)









GO
/****** Object:  View [dbo].[UVW_SPCLTY_MATRL_XREF]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* Created by Vignesh Sankar 10-10-2017 */
CREATE VIEW [dbo].[UVW_SPCLTY_MATRL_XREF]
AS
SELECT 
MAT_MAP.Base_Case_Code as BASE_CASE_CODE,
Field_Category COLLATE DATABASE_DEFAULT as FLD_CATG,
Material_Flag_1 COLLATE DATABASE_DEFAULT as CATG ,
Food_Service_Focus_Category COLLATE DATABASE_DEFAULT as FD_SERV_FCUS_CATG,
Mkt_Rsrch_Category COLLATE DATABASE_DEFAULT as MKT_RSRCH_CATG,
K12_Comp_Flag COLLATE DATABASE_DEFAULT as KNDRGTN_12_CMPLT_FLG ,
Innov_Type COLLATE DATABASE_DEFAULT as INNOV_TYP ,
Innov_Year COLLATE DATABASE_DEFAULT as INNOV_YR ,
Master_Brand COLLATE DATABASE_DEFAULT as MSTR_BRAND,
Sub_Brand COLLATE DATABASE_DEFAULT as SUB_BRAND ,
CStr_Prty_Flag COLLATE DATABASE_DEFAULT as CUST_PARTY_FLG ,
Vnd_Prty_Flag COLLATE DATABASE_DEFAULT as VNDR_PARTY_FLG ,
REPLACE(LTRIM(REPLACE([MATRL_NBR], '0', ' ')), ' ', '0')  COLLATE DATABASE_DEFAULT as [MATRL_NBR],
MATRL_TYP COLLATE DATABASE_DEFAULT as MATRL_TYP ,
MATRL_DESC COLLATE DATABASE_DEFAULT as MATRL_DESC ,
PROD_HIER COLLATE DATABASE_DEFAULT as PROD_HIER ,
BASE_UOM COLLATE DATABASE_DEFAULT as BASE_UOM ,
CRE_DT  as CRE_DT  ,
FIN_BU COLLATE DATABASE_DEFAULT as FIN_BU, 
CNTRL_AREA COLLATE DATABASE_DEFAULT as CNTL_AREA ,
PROD_HIER_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_DESC ,
PROD_HIER_MARKET_SEGMENT COLLATE DATABASE_DEFAULT as PROD_HIER_MKT_SEG ,
PROD_HIER_MARKET_SEGMENT_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_MKT_SEG_DESC ,
PROD_HIER_CATEGORY COLLATE DATABASE_DEFAULT as PROD_HIER_CATG ,
PROD_HIER_CATEGORY_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_CATG_DESC ,
PROD_HIER_SUB_CATEGORY COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_CATG ,
PROD_HIER_SUB_CATEGORY_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_CATG_DESC , 
PROD_HIER_BRAND COLLATE DATABASE_DEFAULT as PROD_HIER_BRAND ,
PROD_HIER_BRAND_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_BRAND_DESC ,
PROD_HIER_TYPE COLLATE DATABASE_DEFAULT as PROD_HIER_TYP ,
PROD_HIER_TYPE_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_TYP_DESC ,
PROD_HIER_SUB_TYPE COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_TYP ,
PROD_HIER_SUB_TYPE_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_TYP_DESC ,
'JOYWAVE' AS REC_SRC 
FROM [KNA_SALES].[dbo].[MaterialMap] MAT_MAP 
LEFT JOIN [KNA_SALES].[dbo].MATRL_PROD_HIER HIER
ON CAST(HIER.MATRL_NBR AS FLOAT) = MAT_MAP.Base_Case_Code
UNION
SELECT 
REPLACE(LTRIM(REPLACE([MATERIAL], '0', ' ')), ' ', '0') AS BASE_CASE_CODE,
FLD_CATG = NULL,
CATG=NULL,
FD_SERV_FCUS_CATG=NULL,
MKT_RSRCH_CATG=NULL,
KNDRGTN_12_CMPLT_FLG=NULL,
INNOV_TYP=NULL,
INNOV_YR=NULL,
MSTR_BRAND=NULL,
SUB_BRAND=NULL,
CUST_PARTY_FLG=NULL,
VNDR_PARTY_FLG=NULL,
REPLACE(LTRIM(REPLACE([MATERIAL], '0', ' ')), ' ', '0') as [MATERIAL],
MATRL_TYP COLLATE DATABASE_DEFAULT,
MATRL_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER COLLATE DATABASE_DEFAULT,
BASE_UOM COLLATE DATABASE_DEFAULT,
CRE_DT,
FIN_BU COLLATE DATABASE_DEFAULT,
CNTRL_AREA COLLATE DATABASE_DEFAULT,
PROD_HIER_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER_MARKET_SEGMENT COLLATE DATABASE_DEFAULT,
PROD_HIER_MARKET_SEGMENT_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER_CATEGORY COLLATE DATABASE_DEFAULT,
PROD_HIER_CATEGORY_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER_SUB_CATEGORY COLLATE DATABASE_DEFAULT,
PROD_HIER_SUB_CATEGORY_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER_BRAND COLLATE DATABASE_DEFAULT,
PROD_HIER_BRAND_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER_TYPE COLLATE DATABASE_DEFAULT,
PROD_HIER_TYPE_DESC COLLATE DATABASE_DEFAULT,
PROD_HIER_SUB_TYPE COLLATE DATABASE_DEFAULT,
PROD_HIER_SUB_TYPE_DESC COLLATE DATABASE_DEFAULT,
'BW' AS REC_SRC 
FROM [KNA_BW].[dbo].OHZOH_B_IND IND 
LEFT JOIN [KNA_SALES].[dbo].MATRL_PROD_HIER HIER
ON CAST(HIER.MATRL_NBR AS FLOAT) = CAST(IND.MATERIAL AS FLOAT)
WHERE CAST(IND.MATERIAL AS FLOAT) NOT IN (SELECT Base_Case_Code FROM [KNA_SALES].[dbo].[MaterialMap])




GO
/****** Object:  View [dbo].[UVW_SPCLTY_DIR_CUST_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_SPCLTY_DIR_CUST_FNL]
AS

SELECT
SOLDTO_NBR AS SOLD_TO_NBR,
BASE_MATRL,
MAT.MATRL_DESC,
SUM(GSV_DOL) AS 	GSV_DOL, 
SUM(GSV_LBS) AS 	GSV_LBS, 
SUM(GSV_CASES) AS 	GSV_CASES, 
SUM(GSV_KGS) AS 	GSV_KGS, 
FACT.FISC_YR,
CAL.FISC_QTR,
FACT.FISC_PD,
SUM(TOTL_INVC) AS 	TOTL_INVC, 
SUM(RMBSMT_AMT) AS 	RMBSMT_AMT, 
SUM(BILLBACK_AMT) AS 	BILLBACK_AMT, 
SUM(MATRL_EXPNS) AS MATRL_EXPNS, 
SUM(FIXD_EXPNS) AS 	FIXD_EXPNS, 
SUM(VAR_EXPNS) AS 	VAR_EXPNS, 
CHNL, 
SOLDTO_NM AS SOLD_TO_NM, 
CHN, 
PLN_TO, 
SUPER_PLANTO AS SUPR_PLN_TO, 
MAX(ZN) AS 	ZN, 
MAX(DSTR) AS 	DSTR, 
MAX(TERR) AS 	TERR, 
MAT.FLD_CATG AS FLD_CATG, 
MAT.CATG AS 	CATG, 
SUMRY_ACCT, 
SUM(COST_CTR_AMT) AS 	COST_CTR_AMT, 
SUM(MATRL_EXPNS_CC) AS 	MATRL_EXPNS_COST, 
SUM(WHSE_AMT) AS 	WHSE_AMT, 
SUM(FRGHT_AMT) AS 	FRGHT_AMT, 
SUM(TOTL_INDIR_TRADE) AS 	TOTL_INDIR_TRADE, 
SUM(DUMMY_SKU_RMBSMT_AMT) AS 	DUMMY_SKU_RMBSMT_AMT, 
SUM(OSD_RMBSMT_AMT) AS 	OVR_SHRT_DMGD_RMBSMT_AMT,
LOAD_DT AS LOAD_DT
from [STG].[SPCLTY_FNL_FACT] FACT
LEFT JOIN [dbo].[UVW_SPCLTY_MATRL_XREF] MAT
ON CASE WHEN MAT.BASE_CASE_CODE = 0 THEN NULL ELSE MAT.BASE_CASE_CODE END = FACT.BASE_MATRL
LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = FACT.FISC_YR
AND CAL.FISC_PD = FACT.FISC_PD
GROUP BY 
SOLDTO_NBR,BASE_MATRL,MATRL_DESC,FACT.FISC_YR,CAL.FISC_QTR,FACT.FISC_PD,CHNL,SOLDTO_NM,CHN,PLN_TO,SUPER_PLANTO,MAT.FLD_CATG,MAT.CATG,SUMRY_ACCT,LOAD_DT






GO
/****** Object:  View [dbo].[UVW_REX_PRFCT_STORE_SHIPMNT_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- ==============================================================
-- Author		: Abhilash Mogili
-- Create date		: 06/27/2018
-- Modified By		: Abhialsh Mogili
-- Modified date	: 10/15/2018	
-- Description		: Returns the Shipment to Budget Percentage for KSR(Territory) and KSM(Area) Level
-- Comments		: Added the Function [KNA_SALES].[dbo].[fn_REX_PACE_PCT]
-- ==============================================================

 CREATE VIEW  [dbo].[UVW_REX_PRFCT_STORE_SHIPMNT_BUD]
 AS

--Getting the Customer Hierarchy for the Present Quarter at Plan to level with the Number of Stores along with the Business unit
   WITH CUST AS 
	  (
	  SELECT  
		RGN,
		RGN_NBR,
		ZN,
		ZN_NBR,
		TERR,
		TERR_NBR,
		PLN_TO,
		PLN_TO_NBR,
		B.BU
	  ,COUNT(SOLD_TO_NBR) AS STORES
	  ,CUST.FISC_YR
	  ,CUST.FISC_QTR 
      FROM 
	  --Historical Customer Hierarchy
	  KNA_SALES.dbo.REX_TDLINX_CUST_HIER  AS CUST WITH (NOLOCK)
	  INNER JOIN
	  --Period Date view
	  [dbo].[UVW_REX_PD_DT] AS DT
	  ON
	  --Joining Based on the Fisc_Yr and Fisc_Qtr
	  CUST.FISC_YR = YEAR(DT.PD_DT)
	  AND
	  CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
	  CROSS JOIN
	  (
	  SELECT 'Snacks' AS BU
	  UNION ALL
	  SELECT 'Morning Foods' AS BU
	  ) AS B
     GROUP BY
		RGN
		,RGN_NBR
		,ZN
		,ZN_NBR
		,TERR
		,TERR_NBR
		,PLN_TO
		,PLN_TO_NBR
		,B.BU
		,CUST.FISC_YR
	  ,CUST.FISC_QTR
	 ),
	 --Here we are getting the Shipment GSV Sale and Budget at Plan To Level with the Snacks and MF Business Unit
	 PLN AS
	 (
		SELECT
		BU
		,PD_DT
		,PLN_TO
		,PLN_TO_NBR
		,FISC_YR
		,FISC_QTR
		,GSV 
		, BUD
	     ,CASE WHEN BUD  = 0 THEN 0 ELSE GSV/BUD END AS PCT_TO_BUD
		,[KNA_SALES].[dbo].[fn_REX_PACE_PCT](PD_DT) * 100 AS PACE
		FROM
		[dbo].[UVW_REX_SIF_SHIPMNT_BUD]
)
----Here we are getting the Shipment GSV to Budget Percentage at KSR(Territory) Level
SELECT 
			'SHP_TERR' AS TYP
			,RGN
			,RGN_NBR
			,ZN
			,ZN_NBR
			,TERR
			,TERR_NBR
			, RET.BU
			,SUM(RET.PCT_TO_BUD * TERR.STORES)/SUM(STORES) * 100 AS PCT
			,PD_DT
			,RET.FISC_YR
			,RET.FISC_QTR
			,PACE
FROM
			PLN AS RET
  INNER JOIN
  (
  SELECT  
				RGN
				,RGN_NBR
				,ZN
				,ZN_NBR
				,TERR
				,TERR_NBR
				,PLN_TO
				,PLN_TO_NBR
				,BU
				,STORES
				,FISC_YR
				, FISC_QTR
   FROM 
	CUST WITH (NOLOCK)
	  ) AS TERR
	  ON
	  RET.BU = TERR.BU  COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.PLN_TO_NBR = TERR.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.FISC_YR = TERR.FISC_YR
	  AND
	  RET.FISC_QTR = TERR.FISC_QTR 
	  GROUP BY
			RGN
			,RGN_NBR
			,ZN
			,ZN_NBR
			,TERR
			,TERR_NBR
			, RET.BU
			,PD_DT
			,RET.FISC_YR
			,RET.FISC_QTR
			,PACE

  UNION ALL
  --Here we are getting the Shipment GSV to Budget Percentage at KSM(Area) Level
  SELECT
  'SHP_ZN' AS TYP,
RGN,
RGN_NBR,
ZN,
ZN_NBR,
  NULL AS TERR
  ,NULL AS TERR_NBR
 , RET.BU
  ,SUM(RET.PCT_TO_BUD * ZN.STORES)/SUM(STORES) * 100 AS PCT
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE
FROM
PLN AS RET
  INNER JOIN
  (
		SELECT  
		RGN,
		RGN_NBR,
		ZN,
		ZN_NBR,
	  PLN_TO,
	  PLN_TO_NBR
	  ,BU
	  ,SUM (STORES) AS STORES
	  ,FISC_YR
	  ,FISC_QTR
      FROM 
	  CUST
	  GROUP BY
	  	RGN,
		RGN_NBR,
		ZN,
		ZN_NBR,
	  PLN_TO,
	  PLN_TO_NBR
	  ,BU
	  ,FISC_YR
	  ,FISC_QTR
	  ) AS ZN
	  ON
	  RET.BU = ZN.BU  COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.PLN_TO_NBR = ZN.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.FISC_YR = ZN.FISC_YR
	  AND
	  RET.FISC_QTR = ZN.FISC_QTR 
	  GROUP BY
RGN,
RGN_NBR,
ZN,
ZN_NBR,
  RET.BU
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE

  UNION ALL

 
  --Here we are getting the Shipment GSV to Budget Percentage at Region Level
  SELECT
  'SHP_RGN' AS TYP,
RGN,
RGN_NBR,
NULL AS ZN,
NULL AS ZN_NBR,
  NULL AS TERR
  ,NULL AS TERR_NBR
 , RET.BU
  ,SUM(RET.PCT_TO_BUD * RGN.STORES)/SUM(STORES) * 100 AS PCT
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE
FROM
PLN AS RET
  INNER JOIN
  (
		SELECT  
		RGN,
		RGN_NBR,
	  PLN_TO,
	  PLN_TO_NBR
	  ,BU
	  ,SUM (STORES) AS STORES
	  ,FISC_YR
	  ,FISC_QTR
      FROM 
	  CUST
	  GROUP BY
	  	RGN,
		RGN_NBR,
	  PLN_TO,
	  PLN_TO_NBR
	  ,BU
	  ,FISC_YR
	  ,FISC_QTR
	  ) AS RGN
	  ON
	  RET.BU = RGN.BU  COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.PLN_TO_NBR = RGN.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.FISC_YR = RGN.FISC_YR
	  AND
	  RET.FISC_QTR = RGN.FISC_QTR
	  GROUP BY
RGN,
RGN_NBR,
  RET.BU
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE

  UNION ALL
    --Here we are getting the Shipment GSV to Budget Percentage at Walmart/Grocery Level
    SELECT
  'SHP_GROC' AS TYP,
RGN,
NULL AS RGN_NBR,
NULL AS ZN,
NULL AS ZN_NBR,
  NULL AS TERR
  ,NULL AS TERR_NBR
 , RET.BU
  ,SUM(RET.PCT_TO_BUD * RGN.STORES)/SUM(STORES) * 100 AS PCT
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE
FROM
PLN AS RET
  INNER JOIN
  (
		SELECT  
		CASE WHEN RGN LIKE '%WM%' THEN 'Walmart' ELSE 'Groceries' END AS RGN,
	  PLN_TO,
	  PLN_TO_NBR
	  ,BU
	  ,SUM (STORES) AS STORES
	  ,FISC_YR
	  ,FISC_QTR
      FROM 
	  CUST
	  GROUP BY
	  CASE WHEN RGN LIKE '%WM%' THEN 'Walmart' ELSE 'Groceries' END,
	  PLN_TO,
	  PLN_TO_NBR
	  ,BU
	  ,FISC_YR
	  ,FISC_QTR
	  ) AS RGN
	  ON
	  RET.BU = RGN.BU  COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.PLN_TO_NBR = RGN.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
	  AND
	  RET.FISC_YR = RGN.FISC_YR
	  AND
	  RET.FISC_QTR = RGN.FISC_QTR
	  GROUP BY
RGN,
  RET.BU
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE

  UNION ALL

    --Here we are getting the Shipment GSV to Budget Percentage at Total US  Level
    SELECT
  'SHP_TOTL' AS TYP,
NULL AS RGN,
NULL AS RGN_NBR,
NULL AS ZN,
NULL AS ZN_NBR,
  NULL AS TERR
  ,NULL AS TERR_NBR
 , RET.BU
  ,SUM(GSV)/SUM(BUD) * 100 AS PCT
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE
FROM
PLN AS RET
GROUP BY
  RET.BU
  ,PD_DT
  ,RET.FISC_YR
  ,RET.FISC_QTR
  ,PACE


GO
/****** Object:  View [dbo].[UVW_REX_PRFCT_SHELF]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author				:	Abhilash Mogili
-- Create date		:	07/11/2018
-- Modified By		:   
-- Modified date	:
-- Description		:  Calculating the OOS,Cases Put On Display,Cases Sold and VOIDFILLED for Present Quarter
-- =============================================



CREATE VIEW [dbo].[UVW_REX_PRFCT_SHELF]
AS

With QTD
as
(
SELECT 
A.VISITGUID AS VST_GUID
,A.STOREEXTERNALID AS STORE_EXTR_IT
,A.STORENAME AS STORE_NM
,A.STOREPRIMETERRITORYEXTERNALID AS STORE_PRMRY_TERR_EXTR_ID
,A.STOREPRIMETERRITORYNAME AS STORE_PRMY_TERR_NM
,CASE WHEN B.CATEGORY = 'Bars' THEN 'Wholesome' 
	  WHEN B.CATEGORY = 'Salty Snac' THEN 'Salty Snacks' 
	  WHEN B.CATEGORY = 'Fruit Snac' THEN 'Fruit Snacks' ELSE ISNULL(B.CATEGORY,'')
END AS CATG
,ISNULL(B.CASESPUTONDISPLAY,0) AS CS_PUT_ON_DISP
,ISNULL(B. [CASESSOLD],0) AS CS_SOLD
, CASE WHEN B. [CASESSOLD]  IS NOT NULL THEN PRODUCTPACKPRICE* B. [CASESSOLD] END AS CS_SOLD_DOL_SALE
,CASE WHEN BVOIDFILLED = 1 THEN  ISNULL(B.BVOIDFILLED,0) END AS VOID_FILLED
,ACTUALSTARTDATETIME
, CASE WHEN REPITEMALERT = 1 THEN ISNULL(B.STOREAUTHORIZATION,0) END AS OOS_AUDIT
FROM
(
Select VST.*
FROM  [KNA_EXTERNAL].[SIF].[REX_VISIT] AS VST WITH (NOLOCK)
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
ON
YEAR(ACTUALFINISHDATETIME) = YEAR(PD_DT)
AND
DATEPART(QUARTER,ACTUALFINISHDATETIME) = DT.CUR_QTR
WHERE
CONVERT(DATE,ACTUALFINISHDATETIME) <= PD_DT

) A 
INNER JOIN 
[KNA_EXTERNAL].[SIF].[REX_AUDIT] B WITH (NOLOCK)
ON A.VISITGUID=B.VISITGUID
)

SELECT
COUNT(DISTINCT VST_GUID) AS VST
,STORE_EXTR_IT
,STORE_NM
,STORE_PRMRY_TERR_EXTR_ID
,STORE_PRMY_TERR_NM
--,CATG
,ISNULL(SUM(CS_SOLD_DOL_SALE),0) AS CS_SOLD_DOL_SALE
,SUM(CS_PUT_ON_DISP) AS CS_PUT_ON_DISP
,SUM(CS_SOLD) AS CS_SOLD
,COUNT(VOID_FILLED) AS VOID_FILLED
,COUNT(CONVERT(DECIMAL(18,3),OOS_AUDIT)) AS OOS_AUDIT
FROM QTD
WHERE
CATG NOT IN ('Beverages','Other Convenience')
GROUP BY
STORE_EXTR_IT
,STORE_NM,STORE_PRMRY_TERR_EXTR_ID,STORE_PRMY_TERR_NM
--,CATG
--,DOL_SALE









GO
/****** Object:  View [dbo].[UVW_REX_SAFETY_METRIC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		: Abhilash Mogili
-- Create date	: 06/20/2018
-- Modified By	: Abhilash Mogili
-- Modified date: 09/26/2018
-- Description	: Returns the Latest Safety details of all the Employees based on the Period Date
-- =============================================



CREATE VIEW [dbo].[UVW_REX_SAFETY_METRIC]
AS 
   --Getting all the KSR and KSM's Employee Numbers from the Call coverage view
WITH  CALL_COVRG_EMPL AS
(
SELECT 
 KSR_EMPNUM AS EMPL_NUM 
 FROM  
 [dbo].[UVW_REX_CALL_COVRG]
 WHERE
KSR_EMPNUM IS NOT NULL
 GROUP BY
 KSR_EMPNUM
UNION ALL
SELECT 
CONVERT(INTEGER,KSM_EMPNUM) AS EMPL_NUM 
FROM [dbo].[UVW_REX_CALL_COVRG]
WHERE
KSM_EMPNUM IS NOT NULL
GROUP BY
CONVERT(INTEGER,KSM_EMPNUM)
),
---Getting the Period Date,Current Year,Current Quarter,Current Week based on Nielsen Date
NIELSEN_PD_DT AS
(
SELECT 
CUR_YR
,CUR_QTR
,CUR_WK
,PD_DT
FROM 
KNA_SALES.dbo.UVW_REX_PD_DT 
),
--Assigning the  Zero Safety Metics to all the period  Week End Dates in a quarter based on Period date 
FISC_CAL_SAFETY_METRIC AS
(
SELECT 
 FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,0 AS OBSERVATION
,0 AS SAFETYMESSAGE1
,0 AS SAFETYMESSAGE2
, 0 AS MODULE
,PD_DT
FROM     
KG_VIEWS.dbo.UVW_FISC_CAL  AS CAL
INNER JOIN
NIELSEN_PD_DT AS NIELSEN_DT
ON
CAL.FISC_YR = NIELSEN_DT.CUR_YR
AND
CAL.FISC_QTR = NIELSEN_DT.CUR_QTR
WHERE
FISC_WK_END_DT   <=  NIELSEN_DT.PD_DT
),
--Getting all the Safety metrics for all the Employees 
EMPL_SAFETY_QTR AS
(
SELECT 
EMPL_NUM
,SUM(OBSRVTN) AS OBSRVTN
,SUM(SAFETY_MSG1) AS SAFETY_MSG1
,SUM(SAFETY_MSG2) AS SAFETY_MSG2
,SUM(MODULE) AS MODULE
,FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,DT
,PD_DT
FROM
(
SELECT 
EMPL_NUM
,OBSERVATION AS [OBSRVTN]
,SAFETYMESSAGE1 as  [SAFETY_MSG1]
,SAFETYMESSAGE2 AS [SAFETY_MSG2]
,MODULE
,FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,DATEADD(DAY,1,FISC_WK_END_DT) AS DT 
,PD_DT
 FROM 
 CALL_COVRG_EMPL
CROSS JOIN
FISC_CAL_SAFETY_METRIC

UNION ALL
--getting the Safety metrics of the Employees from the keep Safe
SELECT DISTINCT
EMPLOYEENUMBER
,CASE WHEN [OBSERVATION] = 2 THEN 1 ELSE 0 END AS  [OBSRVTN]
----Here we are considering the SAFETYMESSAGE1 value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [SAFETYMESSAGE1]= 2 THEN 1 ELSE 0 END AS [SAFETY_MSG1]
------Here we are considering the SAFETYMESSAGE2 value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [SAFETYMESSAGE2]= 2 THEN 1 ELSE 0 END AS [SAFETY_MSG2]
------Here we are considering the MODULE value 2 as 1,becuase 2 indicates the training has completed,1 means the training in the progress,0 means Not completed,So if it is not 2 then Considering as 0
,CASE WHEN [MODULE] = 2 THEN 1 ELSE 0 END AS [MODULE]
--,CONVERT(DATE,DATE_LOADED) AS DT
,FISC_YR
,FISC_QTR
,FISC_PD
,FISC_WK
,FISC_WK_END_DT
,DATEADD(DAY,1,FISC_WK_END_DT) AS DT
,PD_DT
FROM 
[KNA_EXTERNAL].[KEEP_SAFE].[REX_DATAFEED] S1
	   INNER JOIN 
	 KG_VIEWS.dbo.[UVW_FISC_CAL] FISC WITH (NOLOCK)
	 	ON 
	 YEAR(CONVERT(DATE,S1.DATE_LOADED))  = FISC.FISC_YR
	   AND
        DATEPART(QUARTER,CONVERT(DATE,DATE_LOADED)) = FISC.FISC_QTR
		AND
		DATEADD(DAY,1,FISC.FISC_WK_END_DT) =     CONVERT(DATE,DATE_LOADED)
		AND
		EMPLOYEENUMBER IN (SELECT EMPL_NUM FROM CALL_COVRG_EMPL)
		INNER JOIN
		NIELSEN_PD_DT AS NIELSEN_DT
		ON
		FISC.FISC_YR = NIELSEN_DT.CUR_YR
		AND
		FISC.FISC_QTR = NIELSEN_DT.CUR_QTR
		AND
		CONVERT(DATE,DATE_LOADED) <= DATEADD(DAY,1,NIELSEN_DT.PD_DT)
		) AS EMP
		GROUP BY
		EMPL_NUM
	   ,FISC_YR
	   ,FISC_QTR
	   ,FISC_PD
	   ,FISC_WK
	   ,FISC_WK_END_DT
	   ,DT
	   ,PD_DT
),
-- Getting the  Safety Metrics of all the Employees for all the weeks in the Quarter and assigning the row numbers based on the FISC_WK_END_DT in that Period of Quarter in descending order
EMP AS
(
SELECT 
 EMPL_NUM
,[OBSRVTN]
,[SAFETY_MSG1]
,[SAFETY_MSG2]
,[MODULE]
,FISC_WK_END_DT
,DT
,PD_DT
,ROW_NUMBER()over(PARTITION BY EMPL_NUM,FISC_YR,FISC_QTR,FISC_PD order by FISC_WK  desc) as LATST
 FROM 
 EMPL_SAFETY_QTR
 )
 ,
 -- if the Safety Metrics are 0 for an employee then we are giving them Flag 1 else 0
 EMPL_SAFETY_METRICS AS
 (
 SELECT
 EMPL_NUM
,[OBSRVTN] AS [OBSRVTN]
,[SAFETY_MSG1] AS [SAFETY_MSG1]
,[SAFETY_MSG2] AS [SAFETY_MSG2]
,[MODULE] AS [MODULE]
,FISC_WK_END_DT
,DT
,LATST
,PD_DT
,CASE WHEN ([OBSRVTN] =0 AND [SAFETY_MSG1] = 0 AND [SAFETY_MSG2] =0 AND [MODULE] = 0) THEN  1 ELSE 0 END AS FLG
 FROM EMP
 WHERE
 LATST = 1 
 ),
 --Assigning the Row Numbers to the FISC_WK_END_DT from the Fiscal Calendar based on Nielsen Period Date
FISC_CAL as 
 (
  SELECT 
 FISC_YR
 ,FISC_QTR
 ,FISC_PD
 ,FISC_WK
 ,FISC_WK_END_DT AS FIS_WK_END_DT
 ,ROW_NUMBER() OVER  (PARTITION BY FISC_PD  ORDER BY FISC_WK_END_DT ) AS LATST_WK 
  FROM 
 KG_VIEWS.dbo.UVW_FISC_CAL AS FIS 
 INNER JOIN
 NIELSEN_PD_DT AS NIELSEN_DT
 ON
 FIS.FISC_YR = NIELSEN_DT.CUR_YR
 AND
 FIS.FISC_QTR = NIELSEN_DT.CUR_QTR
 )
 --Here we are getting the all the period  Week End Dates in the quarter
 ,FISC_CA AS
 (
 select 
 a.FISC_YR
 ,A.FISC_QTR
 ,A.FISC_PD
 ,A.FIS_WK_END_DT
 from FISC_CAL AS A
 INNER JOIN ( 
 SELECT 
 FISC_YR, FISC_QTR, FISC_PD ,
 MAX(LATST_WK) as WK
 FROM 
 FISC_CAL
 GROUP BY  FISC_YR, FISC_QTR, FISC_PD
 ) AS B
  ON B.FISC_YR=A.FISC_YR AND B.FISC_QTR=A.FISC_QTR AND B.FISC_PD = A.FISC_PD
  and
  A.LATST_WK = B.WK
  )
 ,
 --Here we are considering the Safety Metrics with Flag = 1 and if the Safety Metrics are 0 then we are assigning them 1
SAFETY_TOTL AS
 (
 SELECT 
 EMPL_NUM
 , CASE WHEN OBSRVTN = 0 THEN 1 END AS OBSRVTN
 ,CASE WHEN SAFETY_MSG1 = 0 THEN 1 END AS SAFETY_MSG1
 ,CASE WHEN SAFETY_MSG2 = 0 THEN 1 END AS SAFETY_MSG2
 ,CASE WHEN MODULE = 0 THEN 1 END AS MODULE
 ,SAF.FISC_WK_END_DT AS FISC_WK_END_DT
 ,DT
 ,PD_DT
 ,FLG
 ,LATST
 FROM 
 EMPL_SAFETY_METRICS AS SAF
 INNER JOIN
  FISC_CA
 ON
 SAF.FISC_WK_END_DT = FISC_CA.FIS_WK_END_DT
 AND
 FLG = 1

 UNION ALL

 --Here we are considering the Safety metrics with the Flag 0
 SELECT 
 EMPL_NUM
 ,  OBSRVTN
 , SAFETY_MSG1
 ,SAFETY_MSG2
 , MODULE
 ,FISC_WK_END_DT
 ,DT
 ,PD_DT
 ,FLG
  ,LATST
 FROM 
 EMPL_SAFETY_METRICS
 WHERE
 FLG = 0
 )

 --Here we are rolling up the Safety Metrics of all the Employees in that Quarter

SELECT
EMPL_NUM
,SUM([OBSRVTN]) AS [OBSRVTN]
,SUM([SAFETY_MSG1]) AS [SAFETY_MSG1]
,SUM([SAFETY_MSG2]) AS [SAFETY_MSG2]
,SUM([MODULE]) AS [MODULE]
,PD_DT
FROM
SAFETY_TOTL
GROUP BY
 EMPL_NUM
,PD_DT




GO
/****** Object:  View [dbo].[UVW_SPCLTY_CUST_MSTR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* Created by Vignesh Sankar 12-12-2017 */
CREATE VIEW [dbo].[UVW_SPCLTY_CUST_MSTR]
AS
 
 Select C.SOLD_TO AS SOLD_TO
       ,C.SOLD_NM AS [SOLD_TO_NM]
	   ,C.[CHN] AS [CHN]
	   ,C.[CHN_NBR] AS [CHN_NBR]
	   ,C.PLAN_TO AS [PLN_TO_NM]
	   ,C.PLAN_TO_NBR AS [PLN_TO_NBR]
       ,C.[ZN] AS [ZN]
       ,C.[DSTR] AS [DSTR]
       ,C.[TERR] AS [TERR]
       ,C.[CHNL_NBR]  as [CHNL_NBR]
	   ,CASE WHEN C.[CHNL_NBR] = '12' THEN 'Vending' WHEN C.[CHNL_NBR] = '03' THEN 'Export' WHEN C.[CHNL_NBR] = '11' THEN 'Girls Scouts'
	    WHEN C.[CHNL_NBR] = '07' THEN 'Food Service' WHEN C.[CHNL_NBR] = '15' THEN 'SDA' WHEN C.[CHNL_NBR] = '02' THEN 'Custom'
        WHEN C.[CHNL_NBR] = '08' THEN 'Convenience' ELSE NULL END AS [CHNL_NM]
	   ,C.[PRC_GRP] AS [PRC_GRP]
	   ,C.[PRC_GRP_DESC] AS [PRC_GRP_DESC]
       ,C.[KATR5] AS [INVC_VARNC_FMT]
       ,C.[CUST_GRP] AS [CUST_GRP]
  FROM 
(SELECT SOLD_TO,CHNL_NBR,PRC_GRP,PRC_GRP_DESC,KATR5,MAX(SOLD_NM) AS SOLD_NM,MAX([PLAN_TO]) AS PLAN_TO ,MAX(PLAN_TO_NBR) AS PLAN_TO_NBR,MAX(CHN) AS CHN,MAX(CHN_NBR) AS CHN_NBR,MAX(ZN)AS ZN,
MAX(DSTR)AS DSTR,MAX(TERR)AS TERR,CUST_GRP FROM KNA_SALES.DBO.SPCLTY_CUST_HIER group by SOLD_TO,CHNL_NBR,PRC_GRP,PRC_GRP_DESC,KATR5,CUST_GRP ) C





GO
/****** Object:  View [dbo].[UVW_SPCLTY_MATRL_MSTR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* Created by Vignesh Sankar 12-12-2017 */
CREATE VIEW [dbo].[UVW_SPCLTY_MATRL_MSTR]
AS
SELECT 
REPLACE(LTRIM(REPLACE(HIER.MATRL_NBR, '0', ' ')), ' ', '0')  COLLATE DATABASE_DEFAULT as [MATRL_NBR],
MATRL_TYP COLLATE DATABASE_DEFAULT as MATRL_TYP ,
MATRL_DESC COLLATE DATABASE_DEFAULT as MATRL_DESC_ENGL ,
PROD_HIER COLLATE DATABASE_DEFAULT as PROD_HIER ,
BASE_UOM COLLATE DATABASE_DEFAULT as BASE_UOM ,
CRE_DT  as CRE_DT  ,
FIN_BU COLLATE DATABASE_DEFAULT as FIN_BU, 
CNTRL_AREA COLLATE DATABASE_DEFAULT as CNTL_AREA ,
PROD_HIER_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_DESC ,
PROD_HIER_MARKET_SEGMENT COLLATE DATABASE_DEFAULT as PROD_HIER_MKT_SEG ,
PROD_HIER_MARKET_SEGMENT_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_MKT_SEG_DESC ,
PROD_HIER_CATEGORY COLLATE DATABASE_DEFAULT as PROD_HIER_CATG ,
PROD_HIER_CATEGORY_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_CATG_DESC ,
PROD_HIER_SUB_CATEGORY COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_CATG ,
PROD_HIER_SUB_CATEGORY_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_CATG_DESC , 
PROD_HIER_BRAND COLLATE DATABASE_DEFAULT as PROD_HIER_BRAND ,
PROD_HIER_BRAND_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_BRAND_DESC ,
PROD_HIER_TYPE COLLATE DATABASE_DEFAULT as PROD_HIER_TYP ,
PROD_HIER_TYPE_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_TYP_DESC ,
PROD_HIER_SUB_TYPE COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_TYP ,
PROD_HIER_SUB_TYPE_DESC COLLATE DATABASE_DEFAULT as PROD_HIER_SUB_TYP_DESC ,
CLASFCTN.CHRSTC_VAL COLLATE DATABASE_DEFAULT as FLD_CATG ,
MAK.MAKTX COLLATE DATABASE_DEFAULT as MATRL_DESC_CSTM
FROM [KNA_SALES].[dbo].MATRL_PROD_HIER HIER
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN CLASFCTN 
ON HIER.MATRL_NBR COLLATE DATABASE_DEFAULT  = CLASFCTN.MATRL_NBR COLLATE DATABASE_DEFAULT
AND CLASFCTN.CLAS = 'SALES_DATA' AND CHRSTC_NM = 'KSC_FIELD_CATEGORY'
LEFT JOIN KNA_ECC.dbo.MAKT MAK
ON HIER.MATRL_NBR COLLATE DATABASE_DEFAULT = MAK.MATNR COLLATE DATABASE_DEFAULT
AND MAK.SPRAS = 'Z'






GO
/****** Object:  View [dbo].[UVW_SPCLTY_BILLBACK_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/* Created by Vignesh Sankar 12-15-2017 */
CREATE VIEW [dbo].[UVW_SPCLTY_BILLBACK_FNL]
AS

SELECT 
IND.[/B299/S_IPAGRMT] AS AGRMT_NBR,
VSTX.[/B299/S_GCRITEM] AS CLAIM_RQST_ITM, 
IND.[/BIC/ZCMMT_ITM] AS COMTMNT_ITM,
IND.[/B299/S_GCRNUM] AS CLAIM_RQST_NBR,
IND.[/B299/S_GCRTYP] AS CLAIM_RQST_TYP,
VSTX.[/BIC/ZZCHKCMT] AS CHK_CMNT,
IND.[/BIC/ZKNAME] AS CUST_NM,
VSTX.[BILL_DATE] AS BILL_DT,
VSTX.[/BIC/ZTDATE] AS CUST_INVC_DT,
IND.[/B299/S_BUDAT] AS POSTNG_DT,
IND.[SOLD_TO] AS SOLD_TO,
IND.[FUND] AS FUND,
IND.[FUNDS_CTR] AS FUND_CTR,
VSTX.[/BIC/ZZINTCMT] AS INTR_CMNT,
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END AS CLAIM_INTR_CMNT_DESC_ITM,
IND.[UNIT] AS UNIT,
IND.[/B299/S_SETLDT] AS LAST_STLMT_DT,
IND.[MATERIAL] AS MATRL,
IND.[SHIP_TO] AS SHIP_TO,
IND.[PAYER] AS PAYR,
VSTX.[/BIC/ZSETLFLAG] AS PYMT_TYP,
IND.[/BIC/ZPRF_PER] AS PRFMNC_PD,
IND.[PRICE_DATE] AS PRFMNC_DT,
IND.[/BIC/ZSETLEY] AS SRC_STLMT_PD,
VSTX.[/BIC/ZREFDOC] AS REF,
CASE WHEN IND.[/B299/S_GCRTYP]='CCBB' THEN IND.[/B299/S_KWMENG] * -1 ELSE IND.[/B299/S_KWMENG] END AS [CASE], --IND.[/B299/S_KWMENG] AS [CASE]
IND.[/B299/S_NETPR] AS BILLBACK_RT,
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS FISC_YR,
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS FISC_PD,
CAL.FISC_QTR AS FISC_QTR,
CAL1.FISC_YR AS STLMT_YR,
CAL1.FISC_PD AS STLMT_PD,
CAL1.FISC_QTR AS STLMT_QTR,
SUM(H_S_IPNETWR) - SUM(C_S_IPNETWR) AS STLMT_AMT,
SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL) AS ESTMTD_GSV,
100*(SUM(H_S_IPNETWR) - SUM(C_S_IPNETWR))/CASE WHEN ABS(SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL)) = 0 THEN 1 ELSE ABS(SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL)) END AS GSV_PCT,
C.SOLD_TO_NM AS SOLD_TO_NM,
C1.SOLD_TO_NM AS SHIP_TO_NM,
C.CHN AS CHN,
C.PLN_TO_NM AS PLN_TO_NM,
C1.ZN AS ZN,
C1.DSTR AS DSTR,
C1.TERR AS TERR,
C.CHNL_NBR AS CHNL_NBR,
C.CHNL_NM AS CHNL_NM,
C.PRC_GRP AS PRC_GRP,
C.PRC_GRP_DESC AS PRC_GRP_DESC,
C1.INVC_VARNC_FMT AS SEG,
C1.CUST_GRP AS SEG_DESC,
M.MATRL_TYP AS MATRL_TYP,
M.MATRL_DESC_ENGL AS MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM AS MATRL_DESC_CSTM,
M.PROD_HIER AS PROD_HIER,
M.PROD_HIER_CATG AS PROD_HIER_CATG,
M.PROD_HIER_CATG_DESC AS PROD_HIER_CATG_DESC,
M.PROD_HIER_TYP AS PROD_HIER_TYP,
M.FLD_CATG AS FLD_CATG,
CASE WHEN FLG.[Duplicate Flag] = 'D' THEN 'N' ELSE 'Y' END AS DUP_FLG
FROM 
( SELECT
[/B299/S_IPAGRMT],
[/BIC/ZCMMT_ITM],
[/B299/S_GCRNUM],
[/B299/S_GCRTYP],
[/BIC/ZKNAME],
[SOLD_TO],
[FUND],
[FUNDS_CTR],
[UNIT],
[/B299/S_SETLDT],
[MATERIAL],
[SHIP_TO],
[PAYER],
[/BIC/ZPRF_PER],
[PRICE_DATE],
[/BIC/ZSETLEY],
[/B299/S_KWMENG],
[/B299/S_NETPR],
[/B299/S_POSNR],
[/B299/S_SSTAT],
[/B299/S_BUDAT],
COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_S_IPNETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_S_IPNETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM(SUBTOTAL_1) END ,0) AS H_SUBTOTAL,
COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM(SUBTOTAL_1) END ,0) AS C_SUBTOTAL
FROM [KNA_BW].[dbo].[OHZOH_B_IND] 
WHERE [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBCL' AND [/B299/S_IPNETWR]!=0 
AND [/BIC/ZSETLEY] > CONVERT(VARCHAR(4), YEAR(GetDate())-4)+'012'
GROUP BY 
[/B299/S_IPAGRMT],
[/BIC/ZCMMT_ITM],
[/B299/S_GCRNUM],
[/B299/S_GCRTYP],
[/BIC/ZKNAME],
[SOLD_TO],
[FUND],
[FUNDS_CTR],
[UNIT],
[/B299/S_SETLDT],
[MATERIAL],
[SHIP_TO],
[PAYER],
[/BIC/ZPRF_PER],
[PRICE_DATE],
[/BIC/ZSETLEY],
[/B299/S_KWMENG],
[/B299/S_NETPR],
[/B299/S_POSNR],
[/B299/S_DCIND],
[/B299/S_SSTAT],
[/B299/S_BUDAT]
) IND
LEFT JOIN [KNA_BW].[dbo].[OHZOH_VSTX] VSTX
ON IND.[/B299/S_GCRNUM] = VSTX.[/B299/S_GCRNUM]
AND IND.[/B299/S_POSNR] = VSTX.[/B299/S_GCRITEM] 
LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)
AND CAL.FISC_PD = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) 
LEFT JOIN KNA_EXTERNAL.USER_FIN.AGRMT_DUP_FLG FLG
ON CAST(IND.[/B299/S_IPAGRMT] AS INTEGER) = FLG.Agreement
LEFT JOIN [KNA_SALES].[STG].[SPCLTY_BILLBACK_FNL_DATA] BB
ON IND.SOLD_TO  = BB.DIST_SOLDTO_PARTY
AND CAST(IND.MATERIAL AS FLOAT)  = BB.MATRL_NBR
AND SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)  = BB.FISC_YR
AND SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2)  = BB.FISC_PD
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C
ON IND.SOLD_TO COLLATE DATABASE_DEFAULT  = C.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C1
ON IND.SHIP_TO COLLATE DATABASE_DEFAULT  = C1.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_MSTR] M
ON CAST(IND.MATERIAL AS FLOAT) = M.MATRL_NBR 
LEFT JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] CAL1
ON IND.[/B299/S_SETLDT] BETWEEN CAL1.FISC_WK_STRT_DT AND CAL1.FISC_WK_END_DT
GROUP BY
IND.[/B299/S_IPAGRMT],
VSTX.[/B299/S_GCRITEM], 
IND.[/BIC/ZCMMT_ITM],
IND.[/B299/S_GCRNUM],
IND.[/B299/S_GCRTYP],
VSTX.[/BIC/ZZCHKCMT],
IND.[/BIC/ZKNAME],
VSTX.[BILL_DATE],
VSTX.[/BIC/ZTDATE],
IND.[/B299/S_BUDAT],
IND.[SOLD_TO],
IND.[FUND],
IND.[FUNDS_CTR],
VSTX.[/BIC/ZZINTCMT],
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END,
IND.[UNIT],
IND.[/B299/S_SETLDT],
IND.[MATERIAL],
IND.[SHIP_TO],
IND.[PAYER],
VSTX.[/BIC/ZSETLFLAG],
IND.[/BIC/ZPRF_PER],
IND.[PRICE_DATE],
IND.[/BIC/ZSETLEY],
VSTX.[/BIC/ZREFDOC],
CASE WHEN IND.[/B299/S_GCRTYP]='CCBB' THEN IND.[/B299/S_KWMENG] * -1 ELSE IND.[/B299/S_KWMENG] END,
IND.[/B299/S_NETPR],
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4),
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2),
CAL.FISC_QTR,
CAL1.FISC_YR,
CAL1.FISC_PD,
CAL1.FISC_QTR,
BB.STLMNT_AMT,
C.SOLD_TO_NM,
C1.SOLD_TO_NM,
C.CHN,
C.PLN_TO_NM,
C1.ZN,
C1.DSTR,
C1.TERR,
C.CHNL_NBR,
C.CHNL_NM,
C.PRC_GRP,
C.PRC_GRP_DESC,
C1.INVC_VARNC_FMT,
C1.CUST_GRP,
M.MATRL_TYP,
M.MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM,
M.PROD_HIER,
M.PROD_HIER_CATG,
M.PROD_HIER_CATG_DESC,
M.PROD_HIER_TYP,
M.FLD_CATG,
CASE WHEN FLG.[Duplicate Flag] = 'D' THEN 'N' ELSE 'Y' END







GO
/****** Object:  View [dbo].[UVW_REX_KSM_SAFETY_METRIC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/20/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns all the Safety Messages for all the  KSM's along with the Region Details
-- =============================================

CREATE VIEW  [dbo].[UVW_REX_KSM_SAFETY_METRIC]
AS
SELECT        
CC.ZN_NBR, 
CC.ZN, 
CC.RGN, 
CC.RGN_NBR, 
ISNULL(KS_A.OBSRVTN,0)    AS OBSRVTN, 
ISNULL(KS_A.SAFETY_MSG1,0) AS SAFETY_MSG1, 
ISNULL(KS_A.SAFETY_MSG2,0) AS SAFETY_MSG2, 
ISNULL(KS_A.MODULE,0)         AS MODULE
FROM            
[dbo].[UVW_REX_CALL_COVRG]  AS CC WITH (NOLOCK)
LEFT JOIN
[dbo].[UVW_REX_SAFETY_METRIC]  AS  KS_A WITH (NOLOCK)
---Here we are joining the KSM Emp Number with the Keep Safe Employer Number 
ON 
CC.KSM_EMPNUM = CONCAT('00',KS_A.EMPL_NUM)
GROUP BY
CC.ZN_NBR, 
CC.ZN, 
CC.RGN, 
CC.RGN_NBR, 
ISNULL(KS_A.OBSRVTN,0), 
ISNULL(KS_A.SAFETY_MSG1,0), 
ISNULL(KS_A.SAFETY_MSG2,0), 
ISNULL(KS_A.MODULE,0)

						

				








GO
/****** Object:  View [dbo].[UVW_SPCLTY_BILLBACK_FNL_ARCHV]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/* Created by Vignesh Sankar 03-26-2018 */
CREATE VIEW [dbo].[UVW_SPCLTY_BILLBACK_FNL_ARCHV]
AS

SELECT 
IND.[/B299/S_IPAGRMT] AS AGRMT_NBR,
VSTX.[/B299/S_GCRITEM] AS CLAIM_RQST_ITM, 
IND.[/BIC/ZCMMT_ITM] AS COMTMNT_ITM,
IND.[/B299/S_GCRNUM] AS CLAIM_RQST_NBR,
IND.[/B299/S_GCRTYP] AS CLAIM_RQST_TYP,
VSTX.[/BIC/ZZCHKCMT] AS CHK_CMNT,
IND.[/BIC/ZKNAME] AS CUST_NM,
VSTX.[BILL_DATE] AS BILL_DT,
VSTX.[/BIC/ZTDATE] AS CUST_INVC_DT,
IND.[/B299/S_BUDAT] AS POSTNG_DT,
IND.[SOLD_TO] AS SOLD_TO,
IND.[FUND] AS FUND,
IND.[FUNDS_CTR] AS FUND_CTR,
VSTX.[/BIC/ZZINTCMT] AS INTR_CMNT,
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END AS CLAIM_INTR_CMNT_DESC_ITM,
IND.[UNIT] AS UNIT,
IND.[/B299/S_SETLDT] AS LAST_STLMT_DT,
IND.[MATERIAL] AS MATRL,
IND.[SHIP_TO] AS SHIP_TO,
IND.[PAYER] AS PAYR,
VSTX.[/BIC/ZSETLFLAG] AS PYMT_TYP,
IND.[/BIC/ZPRF_PER] AS PRFMNC_PD,
IND.[PRICE_DATE] AS PRFMNC_DT,
IND.[/BIC/ZSETLEY] AS SRC_STLMT_PD,
VSTX.[/BIC/ZREFDOC] AS REF,
CASE WHEN IND.[/B299/S_GCRTYP]='CCBB' THEN IND.[/B299/S_KWMENG] * -1 ELSE IND.[/B299/S_KWMENG] END AS [CASE], --IND.[/B299/S_KWMENG] AS [CASE]
IND.[/B299/S_NETPR] AS BILLBACK_RT,
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS FISC_YR,
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS FISC_PD,
CAL.FISC_QTR AS FISC_QTR,
CAL1.FISC_YR AS STLMT_YR,
CAL1.FISC_PD AS STLMT_PD,
CAL1.FISC_QTR AS STLMT_QTR,
SUM(H_S_IPNETWR) - SUM(C_S_IPNETWR) AS STLMT_AMT,
SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL) AS ESTMTD_GSV,
100*(SUM(H_S_IPNETWR) - SUM(C_S_IPNETWR))/CASE WHEN ABS(SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL)) = 0 THEN 1 ELSE ABS(SUM(H_SUBTOTAL) - SUM(C_SUBTOTAL)) END AS GSV_PCT,
C.SOLD_TO_NM AS SOLD_TO_NM,
C1.SOLD_TO_NM AS SHIP_TO_NM,
C.CHN AS CHN,
C.PLN_TO_NM AS PLN_TO_NM,
C1.ZN AS ZN,
C1.DSTR AS DSTR,
C1.TERR AS TERR,
C.CHNL_NBR AS CHNL_NBR,
C.CHNL_NM AS CHNL_NM,
C.PRC_GRP AS PRC_GRP,
C.PRC_GRP_DESC AS PRC_GRP_DESC,
C1.INVC_VARNC_FMT AS SEG,
C1.CUST_GRP AS SEG_DESC,
M.MATRL_TYP AS MATRL_TYP,
M.MATRL_DESC_ENGL AS MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM AS MATRL_DESC_CSTM,
M.PROD_HIER AS PROD_HIER,
M.PROD_HIER_CATG AS PROD_HIER_CATG,
M.PROD_HIER_CATG_DESC AS PROD_HIER_CATG_DESC,
M.PROD_HIER_TYP AS PROD_HIER_TYP,
M.FLD_CATG AS FLD_CATG,
CASE WHEN FLG.[Duplicate Flag] = 'D' THEN 'N' ELSE 'Y' END AS DUP_FLG
FROM 
( SELECT
[/B299/S_IPAGRMT],
[/BIC/ZCMMT_ITM],
[/B299/S_GCRNUM],
[/B299/S_GCRTYP],
[/BIC/ZKNAME],
[SOLD_TO],
[FUND],
[FUNDS_CTR],
[UNIT],
[/B299/S_SETLDT],
[MATERIAL],
[SHIP_TO],
[PAYER],
[/BIC/ZPRF_PER],
[PRICE_DATE],
[/BIC/ZSETLEY],
[/B299/S_KWMENG],
[/B299/S_NETPR],
[/B299/S_POSNR],
[/B299/S_SSTAT],
[/B299/S_BUDAT],
COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_S_IPNETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_S_IPNETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='H' THEN SUM(SUBTOTAL_1) END ,0) AS H_SUBTOTAL,
COALESCE(CASE WHEN "/B299/S_DCIND"='S' THEN SUM(SUBTOTAL_1) END ,0) AS C_SUBTOTAL
FROM [KNA_BW].[dbo].[OHZOH_B_IND] 
WHERE [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBCL' AND [/B299/S_IPNETWR]!=0 
AND [/BIC/ZSETLEY] BETWEEN 2013001 AND CONVERT(VARCHAR(4), YEAR(GetDate())-4)+'012'
GROUP BY 
[/B299/S_IPAGRMT],
[/BIC/ZCMMT_ITM],
[/B299/S_GCRNUM],
[/B299/S_GCRTYP],
[/BIC/ZKNAME],
[SOLD_TO],
[FUND],
[FUNDS_CTR],
[UNIT],
[/B299/S_SETLDT],
[MATERIAL],
[SHIP_TO],
[PAYER],
[/BIC/ZPRF_PER],
[PRICE_DATE],
[/BIC/ZSETLEY],
[/B299/S_KWMENG],
[/B299/S_NETPR],
[/B299/S_POSNR],
[/B299/S_DCIND],
[/B299/S_SSTAT],
[/B299/S_BUDAT]
) IND
LEFT JOIN [KNA_BW].[dbo].[OHZOH_VSTX] VSTX
ON IND.[/B299/S_GCRNUM] = VSTX.[/B299/S_GCRNUM]
AND IND.[/B299/S_POSNR] = VSTX.[/B299/S_GCRITEM] 
LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)
AND CAL.FISC_PD = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) 
LEFT JOIN KNA_EXTERNAL.USER_FIN.AGRMT_DUP_FLG FLG
ON CAST(IND.[/B299/S_IPAGRMT] AS INTEGER) = FLG.Agreement
LEFT JOIN [KNA_SALES].[STG].[SPCLTY_BILLBACK_FNL_DATA] BB
ON IND.SOLD_TO  = BB.DIST_SOLDTO_PARTY
AND CAST(IND.MATERIAL AS FLOAT)  = BB.MATRL_NBR
AND SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)  = BB.FISC_YR
AND SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2)  = BB.FISC_PD
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C
ON IND.SOLD_TO COLLATE DATABASE_DEFAULT  = C.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C1
ON IND.SHIP_TO COLLATE DATABASE_DEFAULT  = C1.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_MSTR] M
ON CAST(IND.MATERIAL AS FLOAT) = M.MATRL_NBR 
LEFT JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] CAL1
ON IND.[/B299/S_SETLDT] BETWEEN CAL1.FISC_WK_STRT_DT AND CAL1.FISC_WK_END_DT
GROUP BY
IND.[/B299/S_IPAGRMT],
VSTX.[/B299/S_GCRITEM], 
IND.[/BIC/ZCMMT_ITM],
IND.[/B299/S_GCRNUM],
IND.[/B299/S_GCRTYP],
VSTX.[/BIC/ZZCHKCMT],
IND.[/BIC/ZKNAME],
VSTX.[BILL_DATE],
VSTX.[/BIC/ZTDATE],
IND.[/B299/S_BUDAT],
IND.[SOLD_TO],
IND.[FUND],
IND.[FUNDS_CTR],
VSTX.[/BIC/ZZINTCMT],
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END,
IND.[UNIT],
IND.[/B299/S_SETLDT],
IND.[MATERIAL],
IND.[SHIP_TO],
IND.[PAYER],
VSTX.[/BIC/ZSETLFLAG],
IND.[/BIC/ZPRF_PER],
IND.[PRICE_DATE],
IND.[/BIC/ZSETLEY],
VSTX.[/BIC/ZREFDOC],
CASE WHEN IND.[/B299/S_GCRTYP]='CCBB' THEN IND.[/B299/S_KWMENG] * -1 ELSE IND.[/B299/S_KWMENG] END,
IND.[/B299/S_NETPR],
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4),
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2),
CAL.FISC_QTR,
CAL1.FISC_YR,
CAL1.FISC_PD,
CAL1.FISC_QTR,
BB.STLMNT_AMT,
C.SOLD_TO_NM,
C1.SOLD_TO_NM,
C.CHN,
C.PLN_TO_NM,
C1.ZN,
C1.DSTR,
C1.TERR,
C.CHNL_NBR,
C.CHNL_NM,
C.PRC_GRP,
C.PRC_GRP_DESC,
C1.INVC_VARNC_FMT,
C1.CUST_GRP,
M.MATRL_TYP,
M.MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM,
M.PROD_HIER,
M.PROD_HIER_CATG,
M.PROD_HIER_CATG_DESC,
M.PROD_HIER_TYP,
M.FLD_CATG,
CASE WHEN FLG.[Duplicate Flag] = 'D' THEN 'N' ELSE 'Y' END





GO
/****** Object:  View [dbo].[UVW_REX_KSR_SAFETY_METRIC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/20/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns all the latest Safety Messages for all the  KSR's along with Zone and region details
-- =============================================
CREATE VIEW  [dbo].[UVW_REX_KSR_SAFETY_METRIC]
AS
SELECT        
CC.TERR_NBR, 
CC.TERR,
CC.ZN,
CC.ZN_NBR,
CC.RGN, 
CC.RGN_NBR,
ISNULL(KS_T.OBSRVTN,0)    AS OBSRVTN, 
ISNULL(KS_T.SAFETY_MSG1,0) AS SAFETY_MSG1, 
ISNULL(KS_T.SAFETY_MSG2,0) AS SAFETY_MSG2, 
ISNULL(KS_T.MODULE,0)         AS MODULE
FROM            
dbo.UVW_REX_CALL_COVRG AS CC WITH (NOLOCK)
LEFT JOIN
[dbo].[UVW_REX_SAFETY_METRIC] AS KS_T WITH (NOLOCK)
---Here we are joining the KSR Emp Number with the Keep Safe Employer Number 
ON CC.KSR_EMPNUM = KS_T.EMPL_NUM


						

				







GO
/****** Object:  View [dbo].[UVW_SPCLTY_OVR_SHRT_DMGD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/* Created by Vignesh Sankar 01-18-2018 */
CREATE VIEW [dbo].[UVW_SPCLTY_OVR_SHRT_DMGD]
AS

SELECT 
IND.[SOLD_TO] AS SOLD_TO,
IND.[SHIP_TO] AS SHIP_TO,
IND.[MATERIAL] AS MATRL,
IND.[/B299/S_IPAGRMT] AS AGRMT,
IND.[/B299/S_CRRSN] AS CLAIM_RQST_RSN,
VSTX.[CRRSN_TXT] AS CLAIM_RQST_TXT,
VSTX.[/B299/S_GCRITEM] AS CLAIM_RQST_ITM, 
IND.[/B299/S_GCRNUM] AS CLAIM_RQST_NBR,
IND.[/BIC/ZCMMT_ITM] AS COMTMNT_ITM,
IND.[CMTIT_TXT] AS COMTMNT_TXT,
IND.[/B299/S_GCRTYP] AS CLAIM_RQST_TYP,
IND.[/B299/S_TYPE] AS IP_TYP,
VSTX.[/BIC/ZZCHKCMT] AS CHK_CMNT,
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END AS CLAIM_INTR_CMNT_DESC_ITM,
VSTX.[/BIC/ZTDATE] AS CUST_INVC_DT,
VSTX.[/BIC/ZZINTCMT] AS INTR_CMNT,
VSTX.[/BIC/ZREFDOC] AS REF,
VSTX.[/BIC/ZSETLFLAG] AS PYMT_TYP,
IND.[FUNDS_CTR] AS FUND_CTR,
IND.[FUND] AS FUND,
IND.[FUND_TXT] AS [FUND_TXT],
IND.[/B299/S_SETLDT] AS LAST_STLMT_DT,
IND.[/B299/S_BUDAT] AS POSTNG_DT,
IND.[/B299/S_ASTAT] AS ACRL_STATUS,
IND.[/B299/S_DCIND] AS DR_CR_IND,
IND.[PRICE_DATE] AS PRFMNC_DT,
IND.[/B299/S_SSTAT] AS STLMT_STATUS,
IND.[PAYER] AS PAYR,
IND.[/B299/S_PYROL] AS RCPNT_ROLE,
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS FISC_YR,
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS FISC_PD,
CAL.FISC_QTR AS FISC_QTR,
--IND.[/B299/S_SETLDT] AS STLMT_DT,
CAL1.FISC_YR AS STLMT_YR,
CAL1.FISC_PD AS STLMT_PD,
CAL1.FISC_QTR AS STLMT_QTR,
C.SOLD_TO_NM AS SOLD_TO_NM,
C.SOLD_TO_NM AS SHIP_TO_NM,
C.CHN AS CHN,
C.CHN_NBR AS CHN_NBR,
C.PLN_TO_NBR AS PLN_TO_NBR,
C.CHNL_NM AS CHNL_NM,
C.ZN AS ZN,
C.DSTR AS DSTR,
C.TERR AS TERR,
C.CUST_GRP AS CUST_GRP,
C.PRC_GRP AS PRC_GRP,
C.PRC_GRP_DESC AS PRC_GRP_DESC,
C1.[SOLD_TO_NM] AS PAYR_NM, -- Newly added
M.MATRL_DESC_ENGL AS MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM AS MATRL_DESC_CSTM,
M.PROD_HIER_CATG AS PROD_HIER_CATG,
M.PROD_HIER_CATG_DESC AS PROD_HIER_CATG_DESC,
M.FLD_CATG AS FLD_CATG,
SUM(ZRKF_BBRB_2_NETWR) + SUM(ZRKF_BBVR_C_NETWR) AS STLMT_AMT
FROM 
( SELECT IND_SUB.*,
SUM(H_ZRKF_BBRB_2_NETWR) - SUM(C_ZRKF_BBRB_2_NETWR) AS ZRKF_BBRB_2_NETWR,
SUM(H_ZRKF_BBVR_C_NETWR) - SUM(C_ZRKF_BBVR_C_NETWR) AS ZRKF_BBVR_C_NETWR
FROM
( SELECT
[SOLD_TO],
[SHIP_TO],
[MATERIAL],
[/B299/S_IPAGRMT],
[/B299/S_CRRSN],
[/B299/S_GCRNUM],
[/BIC/ZCMMT_ITM],
[CMTIT_TXT],
[/B299/S_GCRTYP],
[/B299/S_TYPE],
[FUNDS_CTR],
[FUND],
[FUND_TXT],
[/B299/S_SETLDT],
[/B299/S_BUDAT],
[/B299/S_ASTAT],
[/B299/S_DCIND],
[PRICE_DATE],
[/B299/S_SSTAT],
[PAYER],
[/BIC/ZPRF_PER],
[/B299/S_POSNR],
[/B299/S_PYROL],
COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBRB_2_NETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBRB_2_NETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBVR_C_NETWR,
COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBVR_C_NETWR
FROM [KNA_BW].[dbo].[OHZOH_B_IND] 
WHERE [/B299/S_TYPE] IN ('BBRB','BBVR')
AND FUND LIKE '%OSD%'
GROUP BY 
[SOLD_TO],
[SHIP_TO],
[MATERIAL],
[/B299/S_IPAGRMT],
[/B299/S_CRRSN],
[/B299/S_GCRNUM],
[/BIC/ZCMMT_ITM],
[CMTIT_TXT],
[/B299/S_GCRTYP],
[/B299/S_TYPE],
[FUNDS_CTR],
[FUND],
[FUND_TXT],
[/B299/S_SETLDT],
[/B299/S_BUDAT],
[/B299/S_ASTAT],
[/B299/S_DCIND],
[PRICE_DATE],
[/B299/S_SSTAT],
[PAYER],
[/BIC/ZPRF_PER],
[/B299/S_POSNR],
[/B299/S_PYROL],
[/B299/S_DCIND],
[/B299/S_SSTAT],
[/B299/S_ASTAT],
[/B299/S_TYPE]) IND_SUB 
GROUP BY 
[SOLD_TO],
[SHIP_TO],
[MATERIAL],
[/B299/S_IPAGRMT],
[/B299/S_CRRSN],
[/B299/S_GCRNUM],
[/BIC/ZCMMT_ITM],
[CMTIT_TXT],
[/B299/S_GCRTYP],
[/B299/S_TYPE],
[FUNDS_CTR],
[FUND],
[FUND_TXT],
[/B299/S_SETLDT],
[/B299/S_BUDAT],
[/B299/S_ASTAT],
[/B299/S_DCIND],
[PRICE_DATE],
[/B299/S_SSTAT],
[PAYER],
[/BIC/ZPRF_PER],
[/B299/S_POSNR],
[/B299/S_PYROL],
H_ZRKF_BBRB_2_NETWR,
C_ZRKF_BBRB_2_NETWR,
H_ZRKF_BBVR_C_NETWR,
C_ZRKF_BBVR_C_NETWR
) IND
LEFT JOIN [KNA_BW].[dbo].[OHZOH_VSTX] VSTX
ON IND.[/B299/S_GCRNUM] = VSTX.[/B299/S_GCRNUM]
AND IND.[/B299/S_POSNR] = VSTX.[/B299/S_GCRITEM]
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C
ON IND.SOLD_TO COLLATE DATABASE_DEFAULT  = C.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT  = C1.SOLD_TO  COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_MSTR] M
ON CAST(IND.MATERIAL AS FLOAT) = M.MATRL_NBR
LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)
AND CAL.FISC_PD = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2)
LEFT JOIN KNA_EXTERNAL.USER_FIN.AGRMT_DUP_FLG FLG
ON CAST(IND.[/B299/S_IPAGRMT] AS INTEGER) = FLG.Agreement
LEFT JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] CAL1
ON IND.[/B299/S_SETLDT] BETWEEN CAL1.FISC_WK_STRT_DT AND CAL1.FISC_WK_END_DT
GROUP BY
IND.[SOLD_TO],
IND.[SHIP_TO],
IND.[MATERIAL],
IND.[/B299/S_IPAGRMT],
IND.[/B299/S_CRRSN],
VSTX.[CRRSN_TXT],
VSTX.[/B299/S_GCRITEM], 
IND.[/B299/S_GCRNUM],
IND.[/BIC/ZCMMT_ITM],
IND.[CMTIT_TXT],
IND.[/B299/S_GCRTYP],
IND.[/B299/S_TYPE],
VSTX.[/BIC/ZZCHKCMT],
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END,
VSTX.[/BIC/ZTDATE],
VSTX.[/BIC/ZZINTCMT],
VSTX.[/BIC/ZREFDOC],
VSTX.[/BIC/ZSETLFLAG],
IND.[FUNDS_CTR],
IND.[FUND],
IND.[FUND_TXT],
IND.[/B299/S_SETLDT],
IND.[/B299/S_BUDAT],
IND.[/B299/S_ASTAT],
IND.[/B299/S_DCIND],
IND.[PRICE_DATE],
IND.[/B299/S_SSTAT],
VSTX.[/BIC/ZSETLFLAG],
IND.[PAYER],
IND.[/B299/S_PYROL],
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4),
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2),
CAL.FISC_QTR,
IND.[/B299/S_SETLDT],
CAL1.FISC_YR,
CAL1.FISC_PD,
CAL1.FISC_QTR,
C.SOLD_TO_NM,
C.SOLD_TO_NM,
C.CHN,
C.CHN_NBR,
C.PLN_TO_NBR,
C.CHNL_NM,
C.ZN,
C.DSTR,
C.TERR,
C.CUST_GRP,
C.PRC_GRP,
C.PRC_GRP_DESC,
C1.[SOLD_TO_NM],
M.MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM,
M.PROD_HIER_CATG,
M.PROD_HIER_CATG_DESC,
M.FLD_CATG






GO
/****** Object:  View [dbo].[UVW_REX_VST_AUDIT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/20/2018
-- Modified By		:   
-- Modified date	:
-- Description		:  Calculating the latest Store Authorization and Indistribution at Territory Level for all Categories for Present Quarter
-- =============================================



CREATE VIEW [dbo].[UVW_REX_VST_AUDIT]
AS

With QTD
as
(
SELECT 
A.VISITGUID AS VST_GUID
,A.STOREEXTERNALID AS STORE_EXTR_IT
,A.STORENAME AS STORE_NM
,A.STOREPRIMETERRITORYEXTERNALID AS STORE_PRMRY_TERR_EXTR_ID
,A.STOREPRIMETERRITORYNAME AS STORE_PRMY_TERR_NM
,CASE WHEN B.CATEGORY = 'Bars' THEN 'Wholesome' 
	  WHEN B.CATEGORY = 'Salty Snac' THEN 'Salty Snacks' 
	  WHEN B.CATEGORY = 'Fruit Snac' THEN 'Fruit Snacks' ELSE ISNULL(B.CATEGORY,'')
END AS CATG
,ISNULL(B.STOREAUTHORIZATION,0) AS STORE_AUTHZN
,ISNULL(B.INDISTRIBUTION,0) AS IN_DISTBN
FROM
(Select *,ROW_NUMBER()over(PARTITION BY STOREEXTERNALID order by ACTUALFINISHDATETIME desc) as LAT
FROM  [KNA_EXTERNAL].[SIF].[REX_VISIT] WITH (NOLOCK)
WHERE
 STOREPRIMETERRITORYEXTERNALID NOT LIKE 'Chicago%'
) A 
INNER JOIN 
[KNA_EXTERNAL].[SIF].[REX_AUDIT] B WITH (NOLOCK)
ON A.VISITGUID=B.VISITGUID and A.LAT = 1
)

SELECT
STORE_PRMRY_TERR_EXTR_ID
,STORE_PRMY_TERR_NM
,CATG
,SUM(STORE_AUTHZN) AS STORE_AUTHZN
 ,SUM(IN_DISTBN) AS IN_DISTBN
FROM QTD
WHERE
CATG NOT IN ('Beverages','Displays','Other Convenience')
GROUP BY
STORE_PRMRY_TERR_EXTR_ID
,STORE_PRMY_TERR_NM
,CATG













GO
/****** Object:  View [dbo].[UVW_REX_RPT_PRFCT_STORE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_REX_RPT_PRFCT_STORE]
AS

WITH CATG AS
(
SELECT 
 CATG
 ,CASE WHEN CATG IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END AS BU
 FROM [KNA_SALES].[dbo].[UVW_REX_VST_AUDIT] WITH (NOLOCK)
 GROUP BY CATG
        ),
CUST AS
(
SELECT  
[RGN]
,RGN_NBR 
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,SOLD_TO_NBR
FROM
--Historical Customer Hierarchy
[KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS CUST WITH (NOLOCK)
INNER JOIN
---Period Date View
[dbo].[UVW_REX_PD_DT] AS DT
ON
--we are joining based on the year and Quarter to get only the Present Quarter Data
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
GROUP BY  
[RGN]
,RGN_NBR 
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,SOLD_TO_NBR

)

--Getting the POS Dollar Sale and Budget for each Territory for all categories for Present Quarter

SELECT 
 SUM([DOL_SALE]) AS DOL_SALE
,SUM([BUD]) AS [BUD]
,'POS' AS TYP
,NULL AS PCT_TO_BUD
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS VST
,NULL AS OOS_AUDIT
,NULL AS CASE_ON_DISP
,NULL AS CS_SOLD
,NULL AS CS_SOLD_DOL_SALE
,NULL AS VOIDS_FILLED
,NULL AS TERR_CALL_COVRG_PCT
,NULL AS ZN_CALL_COVRG_PCT
,NULL AS RGN_CALL_COVRG_PCT
,'QTD' AS PD_DESC
,PD_DT
,BU COLLATE DATABASE_DEFAULT AS BU
,CATG COLLATE DATABASE_DEFAULT AS CATG
,[RGN] COLLATE DATABASE_DEFAULT AS RGN
,[RGN_NBR] COLLATE DATABASE_DEFAULT AS RGN_NBR
,[ZN] COLLATE DATABASE_DEFAULT AS ZN
,[ZN_NBR] COLLATE DATABASE_DEFAULT AS ZN_NBR
,[TERR] COLLATE DATABASE_DEFAULT AS TERR
,[TERR_NBR] COLLATE DATABASE_DEFAULT AS TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
,PACE
FROM 
[KNA_SALES].[dbo].[UVW_REX_RPT_KSR_BUD]  AS KSR_BUD WITH (NOLOCK)
WHERE
 PD_DESC = 'Q'+CAST(DATEPART(QUARTER,PD_DT) AS VARCHAR(1))
GROUP BY
PD_DESC
,PD_DT
,BU
,CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,PACE

UNION ALL

---To get the Shipment to Budget Percentage  for all Territory for Snacks and MF Business Unit for Present Quarter
SELECT 
 NULL  AS DOL_SALE
,NULL  AS [BUD]
, TYP
,PCT AS PCT_TO_BUD
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS VST
,NULL AS OOS_AUDIT
,NULL AS CS_PUT_ON_DISP
,NULL AS CS_SOLD
,NULL AS CS_SOLD_DOL_SALE
,NULL AS VOID_FILLED
,NULL AS TERR_CALL_COVRG_PCT
,NULL AS ZN_CALL_COVRG_PCT
,NULL AS RGN_CALL_COVRG_PCT
,'QTD' AS PD_DESC
,PD_DT
, BU
,NULL AS CATG
, RGN
, RGN_NBR
, ZN
,ZN_NBR
, TERR
,TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
,PACE
FROM
 KNA_SALES.dbo.UVW_REX_PRFCT_STORE_SHIPMNT_BUD

UNION ALL


---Getting the Store Authorization and Indistribution values for all the catgories at each Territory for present quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'DISTRIBUTION' AS TYP
,NULL AS PCT_TO_BUD
,ISNULL(STORE_AUTHZN,0) AS STORE_AUTHZN
,ISNULL(IN_DISTBN,0) AS IN_DISTBN
,NULL AS VST
,NULL AS OOS_AUDIT
,NULL AS CS_PUT_ON_DISP
,NULL AS CS_SOLD
,NULL AS CS_SOLD_DOL_SALE
,NULL AS VOID_FILLED
,NULL AS TERR_CALL_COVRG_PCT
,NULL AS ZN_CALL_COVRG_PCT
,NULL AS RGN_CALL_COVRG_PCT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(LAST_MOD)))) FROM [KNA_EXTERNAL].[SIF].[REX_VISIT] WITH (NOLOCK))  AS  PD_DT
,C.BU AS BU
,ISNULL(AUDIT.CATG,C.CATG) as CATG
,CUST.[RGN]
,CUST.RGN_NBR
,CUST.[ZN]
,CUST.ZN_NBR
,CUST.[TERR]
,CUST.TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
, NULL AS PACE
FROM  
(SELECT  
     [RGN]
	 ,RGN_NBR 
    ,[ZN]
	,ZN_NBR
    ,[TERR]
    ,TERR_NBR 
  FROM 
  CUST
  GROUP BY  
      [RGN]
	 ,RGN_NBR 
    ,[ZN]
	,ZN_NBR
    ,[TERR]
    ,TERR_NBR 
) CUST
LEFT JOIN
[KNA_SALES].[dbo].[UVW_REX_VST_AUDIT] AS AUDIT WITH (NOLOCK)
ON
AUDIT.STORE_PRMRY_TERR_EXTR_ID = CONVERT(DECIMAL(18,0),CUST.TERR_NBR)
LEFT JOIN CATG  as C
ON 
AUDIT.STORE_PRMRY_TERR_EXTR_ID is null

UNION ALL

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'PRFCT_SHELF' AS TYP
,NULL AS PCT_TO_BUD
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,VST
,OOS_AUDIT
,CS_PUT_ON_DISP
,CS_SOLD
,CS_SOLD_DOL_SALE
,VOID_FILLED
,NULL AS TERR_CALL_COVRG_PCT
,NULL AS ZN_CALL_COVRG_PCT
,NULL AS RGN_CALL_COVRG_PCT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(LAST_MOD)))) FROM [KNA_EXTERNAL].[SIF].[REX_VISIT] WITH (NOLOCK))  AS  PD_DT
,NULL  AS BU
,NULL as CATG
,CUST.[RGN]
,CUST.RGN_NBR
,CUST.[ZN]
,CUST.ZN_NBR
,CUST.[TERR]
,CUST.TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
, NULL AS PACE
FROM  
(SELECT  
     [RGN]
	 ,RGN_NBR 
    ,[ZN]
	,ZN_NBR
    ,[TERR]
    ,TERR_NBR 
  FROM 
  CUST
  GROUP BY  
      [RGN]
	 ,RGN_NBR 
    ,[ZN]
	,ZN_NBR
    ,[TERR]
    ,TERR_NBR 
) CUST
LEFT JOIN
 [KNA_SALES].[dbo].[UVW_REX_PRFCT_SHELF] AS PRFCT WITH (NOLOCK)
ON
PRFCT.STORE_PRMRY_TERR_EXTR_ID = CONVERT(DECIMAL(18,0),CUST.TERR_NBR)


UNION ALL

--getting the Call Coverage Details for each territory for the Present Quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'CALL_COVERAGE' AS TYP
,NULL AS PCT_TO_BUD
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS VST
,NULL AS OOS_AUDIT
,NULL AS CS_PUT_ON_DISP
,NULL AS CS_SOLD
,NULL AS CS_SOLD_DOL_SALE
,NULL AS VOID_FILLED
,TERR_CALL_COVRG_PCT
,ZN_CALL_COVRG_PCT
,RGN_CALL_COVRG_PCT
,CALL_COVERAGE.PD_DESC AS PD_DESC
,END_DT AS  PD_DT
,NULL AS BU
,NULL AS CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,NULL AS OBSRVTN
,NULL AS SAFETY_MSG1
,NULL AS SAFETY_MSG2 
,NULL AS MODULE
 ,[KNA_SALES].[dbo].[UDF_REX_PACE_PCT](END_DT) * 100 AS PACE
FROM  
[KNA_SALES].[dbo].[UVW_REX_CALL_COVRG] AS CALL_COVERAGE WITH (NOLOCK)

UNION ALL

--Getting all the Safety Metrics for all the KSR's for Present Quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'KEEP_SAFE_KSR' AS TYP
,NULL AS PCT_TO_BUD
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS VST
,NULL AS OOS_AUDIT
,NULL AS CS_PUT_ON_DISP
,NULL AS CS_SOLD
,NULL AS CS_SOLD_DOL_SALE
,NULL AS VOID_FILLED
,NULL AS TERR_CALL_COVRG_PCT
,NULL AS ZN_CALL_COVRG_PCT
,NULL AS RGN_CALL_COVRG_PCT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(DATE_LOADED)))) FROM [KNA_EXTERNAL].[KEEP_SAFE].[SNACKS_DATAFEED] WITH (NOLOCK)) AS  PD_DT
,NULL AS BU
,NULL AS CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,[TERR]
,TERR_NBR
,OBSRVTN
,SAFETY_MSG1
,SAFETY_MSG2 
,MODULE
,NULL AS PACE
FROM
[KNA_SALES].[dbo].[UVW_REX_KSR_SAFETY_METRIC] WITH(NOLOCK)

UNION ALL

--Getting all the Safety Metrics for all the KSM's for Present Quarter

SELECT 
NULL AS [DOL_SALE]
,NULL AS [BUD]
,'KEEP_SAFE_KSM' AS TYP
,NULL AS PCT_TO_BUD
,NULL AS STORE_AUTHZN
,NULL AS IN_DISTBN
,NULL AS VST
,NULL AS OOS_AUDIT
,NULL AS CS_PUT_ON_DISP
,NULL AS CS_SOLD
,NULL AS CS_SOLD_DOL_SALE
,NULL AS VOID_FILLED
,NULL AS TERR_CALL_COVRG_PCT
,NULL AS ZN_CALL_COVRG_PCT
,NULL AS RGN_CALL_COVRG_PCT
,'QTD' AS PD_DESC
,(SELECT DATEADD(DAY,-1,MAX(CONVERT(DATE,(DATE_LOADED)))) FROM [KNA_EXTERNAL].[KEEP_SAFE].[SNACKS_DATAFEED] WITH (NOLOCK)) AS  PD_DT
,NULL AS BU
,NULL AS CATG
,[RGN]
,RGN_NBR
,[ZN]
,ZN_NBR
,NULL AS [TERR]
,NULL AS TERR_NBR
,OBSRVTN
,SAFETY_MSG1
,SAFETY_MSG2 
,MODULE
,NULL AS PACE
FROM
[KNA_SALES].[dbo].[UVW_REX_KSM_SAFETY_METRIC] WITH (NOLOCK)

GO
/****** Object:  View [dbo].[UVW_SPCLTY_RMBSMT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* Created by Vignesh Sankar 01-11-2018 */
CREATE VIEW [dbo].[UVW_SPCLTY_RMBSMT]
AS
SELECT 
	IND.[SOLD_TO] AS SOLD_TO,
	IND.[SHIP_TO] AS SHIP_TO,
	IND.[MATERIAL] AS MATRL,
	IND.[/B299/S_IPAGRMT] AS AGRMT,
	VSTX.[/BIC/ZREFDOC] AS REF,
	IND.[/B299/S_CRRSN] AS CLAIM_RQST_RSN,
	VSTX.[CRRSN_TXT] AS CLAIM_RQST_TXT,
	VSTX.[/B299/S_GCRITEM] AS CLAIM_RQST_ITM, 
	IND.[/B299/S_GCRNUM] AS CLAIM_RQST_NBR,
	IND.[/BIC/ZCMMT_ITM] AS COMTMNT_ITM,
	IND.[CMTIT_TXT] AS COMTMNT_TXT,
	IND.[/B299/S_GCRTYP] AS CLAIM_RQST_TYP,
	IND.[/B299/S_TYPE] AS IP_TYP,
	VSTX.[/BIC/ZZCHKCMT] AS CHK_CMNT,
	CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
    ELSE VSTX.[/BIC/ZZINTCMT1] END AS CLAIM_INTR_CMNT_DESC_ITM,
	VSTX.[/BIC/ZTDATE] AS CUST_INVC_DT,
	VSTX.[/BIC/ZZINTCMT] AS INTR_CMNT,
	IND.[FUNDS_CTR] AS FUND_CTR,
	IND.[FUND] AS FUND,
	IND.[FUND_TXT] AS [FUND_TXT],
	IND.[/B299/S_SETLDT] AS LAST_STLMT_DT,
	VSTX.[/BIC/ZSETLFLAG] AS PYMT_TYP,
	IND.[PAYER] AS PAYR,
	IND.[/B299/S_DCIND] AS DR_CR_IND,	-- Newly added
	IND.[/B299/S_ASTAT] AS ACRL_STATUS,	-- Newly added
	IND.[/B299/S_SSTAT] AS STLMT_STATUS,	-- Newly added
	IND.[PRICE_DATE] AS PRFMNC_DT,		-- Newly added
	IND.[/B299/S_BUDAT] AS POSTNG_DT,
	IND.[/B299/S_PYROL] AS RCPNT_ROLE,
	SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS FISC_YR,
	SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS FISC_PD,
	CAL.FISC_QTR AS FISC_QTR,
	--IND.[/B299/S_SETLDT] AS STLMT_DT,
	CAL1.FISC_YR AS STLMT_YR,
	CAL1.FISC_PD AS STLMT_PD,
	CAL1.FISC_QTR AS STLMT_QTR,
	C.SOLD_TO_NM AS SOLD_TO_NM,
	C.SOLD_TO_NM AS SHIP_TO_NM,
	C.CHN AS CHN,
	C.CHN_NBR AS CHN_NBR,
    C.PLN_TO_NBR AS PLN_TO_NBR,
	C.CHNL_NM AS CHNL_NM,
	C.ZN AS ZN,
	C.DSTR AS DSTR,
	C.TERR AS TERR,
	M.MATRL_DESC_ENGL AS MATRL_DESC_ENGL,
	M.MATRL_DESC_CSTM AS MATRL_DESC_CSTM,
	M.PROD_HIER_CATG_DESC AS PROD_HIER_CATG_DESC,
	M.FLD_CATG AS FLD_CATG,
	M.PROD_HIER_CATG AS PROD_HIER_CATG,  -- Newly added
	C.PRC_GRP AS PRC_GRP,				 -- Newly added
	C.PRC_GRP_DESC AS PRC_GRP_DESC,		 -- Newly added
	C.CUST_GRP AS CUST_GRP,				 -- Newly added
	CASE WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL AND K1.[NAME1] IS NULL THEN LF1.NAME1 
	WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL THEN K1.[NAME1] COLLATE DATABASE_DEFAULT 
	ELSE C1.[SOLD_TO_NM] END AS PAYR_NM,
	SUM(ZRKF_BBRB_2_NETWR) + SUM(ZRKF_BBVR_C_NETWR) AS STLMT_AMT
FROM 
	( 
	SELECT IND_SUB.*,
		   SUM(H_ZRKF_BBRB_2_NETWR) - SUM(C_ZRKF_BBRB_2_NETWR) AS ZRKF_BBRB_2_NETWR,
		   SUM(H_ZRKF_BBVR_C_NETWR) - SUM(C_ZRKF_BBVR_C_NETWR) AS ZRKF_BBVR_C_NETWR
	FROM
		( 
		SELECT
			[SOLD_TO],
			[SHIP_TO],
			[MATERIAL],
			[/B299/S_IPAGRMT],
			[/B299/S_CRRSN],
			[/B299/S_GCRNUM],
			[/BIC/ZCMMT_ITM],
			[CMTIT_TXT],
			[/B299/S_GCRTYP],
			[/B299/S_TYPE],
			[FUNDS_CTR],
			[FUND],
			[FUND_TXT],
			[/B299/S_SETLDT],
			[PAYER],
			[/BIC/ZPRF_PER],
			[/B299/S_POSNR],
			[/B299/S_DCIND],	-- Newly added
			[/B299/S_ASTAT],	-- Newly added
			[/B299/S_SSTAT],	-- Newly added
			[PRICE_DATE],		-- Newly added
			[/B299/S_BUDAT],
			[/B299/S_PYROL],
			COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBRB_2_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBRB_2_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBVR_C_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBVR_C_NETWR
		FROM [KNA_BW].[dbo].[OHZOH_B_IND] 
		WHERE [/B299/S_TYPE] IN ('BBRB','BBVR')
			  AND FUND NOT LIKE '%OSD%'
			  AND [/BIC/ZSETLEY] > CONVERT(VARCHAR(4), YEAR(GetDate())-4)+'012'
		GROUP BY 
		[SOLD_TO],
		[SHIP_TO],
		[MATERIAL],
		[/B299/S_IPAGRMT],
		[/B299/S_CRRSN],
		[/B299/S_GCRNUM],
		[/BIC/ZCMMT_ITM],
		[CMTIT_TXT],
		[/B299/S_GCRTYP],
		[/B299/S_TYPE],
		[FUNDS_CTR],
		[FUND],
		[FUND_TXT],
		[/B299/S_SETLDT],
		[PAYER],
		[/BIC/ZPRF_PER],
		[/B299/S_POSNR],
		[/B299/S_DCIND],
		[/B299/S_SSTAT],
		[/B299/S_ASTAT],
		[PRICE_DATE],
		[/B299/S_BUDAT],
		[/B299/S_PYROL],
		[/B299/S_TYPE]
		) IND_SUB 
	GROUP BY 
	[SOLD_TO],
	[SHIP_TO],
	[MATERIAL],
	[/B299/S_IPAGRMT],
	[/B299/S_CRRSN],
	[/B299/S_GCRNUM],
	[/BIC/ZCMMT_ITM],
	[CMTIT_TXT],
	[/B299/S_GCRTYP],
	[/B299/S_TYPE],
	[FUNDS_CTR],
	[FUND],
	[FUND_TXT],
	[/B299/S_SETLDT],
	[PAYER],
	[/BIC/ZPRF_PER],
	[/B299/S_POSNR],
	[/B299/S_DCIND],	-- Newly added
	[/B299/S_ASTAT],	-- Newly added
	[/B299/S_SSTAT],	-- Newly added
	[PRICE_DATE],		-- Newly added
	[/B299/S_BUDAT],
	[/B299/S_PYROL],
	H_ZRKF_BBRB_2_NETWR,
	C_ZRKF_BBRB_2_NETWR,
	H_ZRKF_BBVR_C_NETWR,
	C_ZRKF_BBVR_C_NETWR
	) IND
LEFT JOIN [KNA_BW].[dbo].[OHZOH_VSTX] VSTX
ON IND.[/B299/S_GCRNUM] = VSTX.[/B299/S_GCRNUM]
   AND IND.[/B299/S_POSNR] = VSTX.[/B299/S_GCRITEM]

LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C
ON IND.SOLD_TO COLLATE DATABASE_DEFAULT  = C.SOLD_TO  COLLATE DATABASE_DEFAULT

LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT  = C1.SOLD_TO  COLLATE DATABASE_DEFAULT

LEFT JOIN [KNA_ECC].[dbo].[KNA1] K1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT = K1.KUNNR COLLATE DATABASE_DEFAULT

LEFT JOIN KNA_ECC.dbo.LFA1 LF1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT = LF1.LIFNR COLLATE DATABASE_DEFAULT

LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_MSTR] M
ON CAST(IND.MATERIAL AS FLOAT) = M.MATRL_NBR

LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)
   AND CAL.FISC_PD = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2)

LEFT JOIN KNA_EXTERNAL.USER_FIN.AGRMT_DUP_FLG FLG
ON CAST(IND.[/B299/S_IPAGRMT] AS INTEGER) = FLG.Agreement

LEFT JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] CAL1
ON IND.[/B299/S_SETLDT] BETWEEN CAL1.FISC_WK_STRT_DT AND CAL1.FISC_WK_END_DT

GROUP BY
IND.[SOLD_TO],
IND.[SHIP_TO],
IND.[MATERIAL],
IND.[/B299/S_IPAGRMT],
VSTX.[/BIC/ZREFDOC],
IND.[/B299/S_CRRSN],
VSTX.[CRRSN_TXT],
VSTX.[/B299/S_GCRITEM], 
IND.[/B299/S_GCRNUM],
IND.[/BIC/ZCMMT_ITM],
IND.[CMTIT_TXT],
IND.[/B299/S_GCRTYP],
IND.[/B299/S_TYPE],
VSTX.[/BIC/ZZCHKCMT],
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END,
VSTX.[/BIC/ZTDATE],
VSTX.[/BIC/ZZINTCMT],
IND.[FUNDS_CTR],
IND.[FUND],
IND.[FUND_TXT],
IND.[/B299/S_SETLDT],
VSTX.[/BIC/ZSETLFLAG],
IND.[PAYER],
IND.[/B299/S_DCIND],	-- Newly added
IND.[/B299/S_ASTAT],	-- Newly added
IND.[/B299/S_SSTAT],	-- Newly added
IND.[PRICE_DATE],		-- Newly added
IND.[/B299/S_BUDAT],
IND.[/B299/S_PYROL],
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4),
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2),
CAL.FISC_QTR,
IND.[/B299/S_SETLDT],
CAL1.FISC_YR,
CAL1.FISC_PD,
CAL1.FISC_QTR,
C.SOLD_TO_NM,
C.SOLD_TO_NM,
C.CHN,
C.CHN_NBR,
C.PLN_TO_NBR,
C.CHNL_NM,
C.ZN,
C.DSTR,
C.TERR,
M.MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM,
M.PROD_HIER_CATG_DESC,
M.FLD_CATG,
M.PROD_HIER_CATG, -- Newly added
C.PRC_GRP,		-- Newly added
C.PRC_GRP_DESC, -- Newly added
C.CUST_GRP,		-- Newly added
CASE WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL AND K1.[NAME1] IS NULL THEN LF1.NAME1 
	WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL THEN K1.[NAME1] COLLATE DATABASE_DEFAULT 
	ELSE C1.[SOLD_TO_NM] END



GO
/****** Object:  View [dbo].[UVW_KPI_SHIPMENT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/******************************    
** Name: [UVW_KPI_SHIPMENT]
** Desc: SHIPMENT Data set - Used in all the dashpoard pages SQL VIEWS;
**		 
** Auth: Venkatesh Ramadhyani
** Date: 10-25-2017
** date: 
*******************************/

CREATE VIEW [dbo].[UVW_KPI_SHIPMENT] 
AS

 --------------Getting the SHIP_LOC,SOLD_TO--------------------------------------------------
WITH CTE AS( 
              SELECT DISTINCT SHIP_LOC,SOLD_TO   
			  FROM [KNA_EXTERNAL].INFOMETRICS.INFOMETRICS_NSD_MAP WITH (NOLOCK)
			 )
 --------------Getting the PlanTo_Name based on PlanTo_cust---------------------------------------
,CTE1 AS ( SELECT DISTINCT 
                        LVL8_CUST_NBR ,
						(PlanTo_Name COLLATE DATABASE_DEFAULT) AS PlanTo_Name
		    FROM KNA_SALES.dbo.SoldToMap SOLD WITH (NOLOCK) 
			LEFT JOIN  [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL] WITH (NOLOCK)
			ON PlanTo_Name=LVL8_CUST_NM COLLATE DATABASE_DEFAULT
			WHERE   HIER_TM_PD='CURRENT' AND HIER_TYP='D' 
			AND (LVL8_CUST_NM IS NOT NULL AND LVL8_CUST_NBR IS NOT NULL)
			
		  )
 --------------Getting the SHIP_QTY,SHIP_AMT based on PlanTo_Name --------------------------------------------------
	      SELECT 
		        MATRL_NBR,
				PLN_TO_NM, 
				FISC_WK,
				FISC_PD,
				FISC_YR,
				PLN_TO_CUST, 
				SHIPMNT_LOC,
				SHIPMNT_QTY,
				SHIPMNT_AMT,
				SHIPMNT_QTY_PREV_YR,
				SHIPMNT_AMT_PREV_YR
			FROM (
			   SELECT 
		        COALESCE(D.MATRL_NBR,D_PY.MATRL_NBR) as MATRL_NBR,
				COALESCE(CH.PlanTo_Name, D_PY.Planto_Name) AS PLN_TO_NM, 
				COALESCE(D.FISC_WK, D_PY.FISC_WK) as FISC_WK,
				COALESCE(D.PD, D_PY.PD) AS FISC_PD,
				COALESCE(D.FISC_YR, D_PY.FISC_PY+1) AS FISC_YR,
				CH.LVL8_CUST_NBR AS PLN_TO_CUST, 
				NM.SHIP_LOC AS SHIPMNT_LOC,
				D.[SHIPMENT_QUANTITY] AS SHIPMNT_QTY,
				D.[SHIPMENT_DOLLARS] AS SHIPMNT_AMT,
				D_PY.[SHIPMENT_QUANTITY] AS SHIPMNT_QTY_PREV_YR,
				D_PY.[SHIPMENT_DOLLARS] AS SHIPMNT_AMT_PREV_YR
		  FROM (
				SELECT  DISTINCT
						 Fis_Week AS FISC_WK,
						 Period AS PD,
						 Fis_Year AS FISC_YR,
						 Base_Material AS MATRL_NBR,
						 PlanTo_Name,
						 SoldTo_Num,
						 (Gross_Sales_Cs_Dir + Gross_Sales_Cs_InDir) as [SHIPMENT_QUANTITY],
						 (Gross_Sales_Dollars_Dir+ Gross_Sales_Dollars_InDir) as [SHIPMENT_DOLLARS]
				FROM  KNA_SALES.dbo.Summ_Agg_01 SM WITH (NOLOCK)
				) D 
			 FULL JOIN (
					SELECT  DISTINCT
						 Fis_Week AS FISC_WK,
						 Period AS PD,
						 Fis_Year AS FISC_PY,
						 Base_Material AS MATRL_NBR,
						 PlanTo_Name,
						 SoldTo_Num,
						 (Gross_Sales_Cs_Dir + Gross_Sales_Cs_InDir) as [SHIPMENT_QUANTITY],
						 (Gross_Sales_Dollars_Dir+ Gross_Sales_Dollars_InDir) as [SHIPMENT_DOLLARS]
				FROM  KNA_SALES.dbo.Summ_Agg_01 SM WITH (NOLOCK)
				) D_PY
				ON D.FISC_WK = D_PY.FISC_WK
				AND D.PD = D_PY.PD
				AND (D.FISC_YR - 1) = D_PY.FISC_PY
				AND D.MATRL_NBR = D_PY.MATRL_NBR
				AND D.PlanTo_Name = D_PY.PlanTo_Name
				AND D.SoldTo_Num = D_PY.SoldTo_Num
		     LEFT JOIN CTE NM  WITH (NOLOCK) ON COALESCE(D.SoldTo_Num, D_PY.SoldTo_Num) = NM.SOLD_TO 
	         LEFT JOIN CTE1 CH WITH (NOLOCK) ON COALESCE(D.PlanTo_Name,D_PY.PlanTo_Name) = CH.PlanTo_Name
			 ) M
			WHERE (FISC_YR < Year(GetDate()) OR (FISC_YR = Year(GetDate()) AND FISC_PD <= Month(GetDate()) ) )



GO
/****** Object:  View [dbo].[UVW_PLANTO_CHANNAL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************    
** Name: [UVW_PLANTO_CHANNAL]
** Desc: PLANTo CHANNEL Data set - Used internally to populate PLAN TO details in all the dashpoard pages SQL VIEWS;
**		 
** Auth: Venkatesh Ramadhyani
** Date: 10-25-2017
** date: 
*******************************/


CREATE  VIEW [dbo].[UVW_PLANTO_CHANNAL]
as

--------------------Getting convenience data-----------------------------------------------
SELECT DISTINCT 
			SoldTo_Key AS SOLD_TO_KEY,
			SM.PlanTo_Name AS PLN_TO_NM,
			D.LVL8_CUST_NBR AS PLN_TO_CUST ,
			C.LVL4_CUST_NBR AS CHNL_NBR 
FROM KNA_SALES.dbo.SoldToMap SM WITH (NOLOCK)
LEFT JOIN [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL] C WITH (NOLOCK)
ON SM.SoldTo_Key = C.LVL8_CUST_NBR AND C.HIER_TM_PD ='CURRENT' and C.HIER_TYP = 'C'
LEFT JOIN [KG_VIEWS].[KNA].[UVW_CUST_HIER_UNRVL] D WITH (NOLOCK)
ON SM.PlanTo_Name = D.LVL8_CUST_NM  COLLATE DATABASE_DEFAULT  and D.HIER_TYP = 'D'



GO
/****** Object:  View [dbo].[UVW_INFO_MAIN_PAGE]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Venkatesh\Chandars
-- Create date		:	09/01/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	SQL VIEW developed as a data source for KSC-Demand Dashbaord MAIN Page 
-- Comments			:   Infometrics data has been blended with Material attributes and SAS DP data set
--					:	Further modified to fix the Period column with the SAS DP data set
-- Execue			:  SELECT * FROM KNA_SALES.[dbo].[UVW_INFO_MAIN_PAGE]
-- =============================================
CREATE VIEW [dbo].[UVW_INFO_MAIN_PAGE]
AS

--------------------Getting the PRICE for the correspongd MATRL--------------------------------
WITH CTE0
AS ( SELECT  MATRL_NBR,  PRICE AS PRC
     FROM  (SELECT 
	              MATRL_NBR, 
				  PRICE, ROW_NUMBER() OVER (PARTITION BY MATRL_NBR ORDER BY MATRL_NBR ASC) AS MATRL_SEQ
	        FROM (
			         SELECT FORMAT([SKU], '000000000000000000') AS MATRL_NBR, PRICE
					 FROM [KNA_EXTERNAL].[USER_SC].[WGT_AVG_PRC] WITH (NOLOCK)
					 WHERE CHNL LIKE '%FS%'AND (SKU IS NOT NULL OR FORMAT([SKU], '000000000000000000') <> '000000000000000000')
			       UNION ALL
					 SELECT MATRL_NBR, PRC
					 FROM KG_VIEWS.KNA.UVW_MATRL_PRC RP WITH (NOLOCK) 
					 WHERE MATRL_NBR IS NOT NULL) M) M WHERE MATRL_SEQ = 1
			        )
--------------------Getting the INFOMETRICS_ACTL_SALES data-------------------------------
,INFO AS(
		  SELECT DISTINCT
				'P' + (CASE
				WHEN LEN(RTRIM(CAST(IA.FISC_PD AS char(2)))) = 1 THEN '0' + CAST(IA.FISC_PD AS char(1))
				ELSE CAST(IA.FISC_PD AS char(2)) END) + CAST(IA.FISC_YR AS char(4)) AS SNPSHT,
				[MATRL] AS MATRL_NBR,
				COALESCE([SHIP_LOC],'') as [SHIPMNT_LOC],
				CAST(IA.PLN_TO_CUST AS float) AS PLN_TO_CUST,
				PLN_TO_CUST_NM,
				FISC_WK,
				FISC_YR,
				FISC_PD,
				FISC_WK_STRT_DT,
				ISNULL(SUM([OUTBND_USD_CUR_YR]), 0) AS [OUTBND_USD_CUR_YR],
				ISNULL(SUM([OUTBND_USD_PREV_YR]), 0) AS [OUTBND_USD_PREV_YR],
				ISNULL(SUM([CURR_YR_QTY]), 0) AS [CURR_YR_QTY],
				ISNULL(SUM([PREV_YR_QTY]), 0) AS [PREV_YR_QTY]
		   FROM [KNA_SALES].[dbo].[INFOMETRICS_ACTL_SALES] IA WITH (NOLOCK) 
		   WHERE ((FISC_YR > 2016 ) OR (FISC_YR = 2016 AND FISC_PD >= 11 ) ) 
         GROUP BY [MATRL],[SHIP_LOC],IA.PLN_TO_CUST,PLN_TO_CUST_NM,FISC_WK,FISC_YR,FISC_PD,FISC_WK_STRT_DT

		
		UNION ALL

		SELECT DISTINCT
					'P'+ (CASE WHEN IA.FISC_PD = 1 THEN '12' 
					WHEN IA.FISC_PD BETWEEN 2 AND 9 THEN '0' + CAST(IA.FISC_PD - 1 as CHAR(1))
					WHEN IA.FISC_PD = 10  THEN '09'
					WHEN IA.FISC_PD > 10  THEN CAST(IA.FISC_PD- 1 as CHAR(2)) END ) + 
					CAST((CASE WHEN IA.FISC_PD = 1 Then IA.FISC_YR - 1 Else IA.FISC_YR END) as CHAR(4)) as SNPSHT,
					[MATRL] AS MATRL_NBR,
					COALESCE([SHIP_LOC],'') as [SHIPMNT_LOC],
					CAST(IA.PLN_TO_CUST AS float) AS PLN_TO_CUST,
					PLN_TO_CUST_NM,
					FISC_WK,
					(CASE WHEN IA.FISC_PD = 1 Then IA.FISC_YR - 1 Else IA.FISC_YR END) as FISC_YR,
					(CASE WHEN IA.FISC_PD = 1 THEN '12' 
						WHEN IA.FISC_PD BETWEEN 2 AND 9 THEN '0' + CAST(IA.FISC_PD - 1 as CHAR(1))
						WHEN IA.FISC_PD = 10  THEN '09'
						WHEN IA.FISC_PD > 10  THEN CAST(IA.FISC_PD- 1 as CHAR(2)) END ) as FISC_PD,
					FISC_WK_STRT_DT,
					ISNULL(SUM([OUTBND_USD_CUR_YR]), 0) AS [OUTBND_USD_CUR_YR],
					ISNULL(SUM([OUTBND_USD_PREV_YR]), 0) AS [OUTBND_USD_PREV_YR],
					ISNULL(SUM([CURR_YR_QTY]), 0) AS [CURR_YR_QTY],
					ISNULL(SUM([PREV_YR_QTY]), 0) AS [PREV_YR_QTY]
				FROM [KNA_SALES].[dbo].[INFOMETRICS_ACTL_SALES] IA WITH (NOLOCK)  
				WHERE ((FISC_YR > 2016 ) OR (FISC_YR = 2016 AND FISC_PD >= 11 ) ) 
     		    GROUP BY [MATRL],[SHIP_LOC],IA.PLN_TO_CUST,PLN_TO_CUST_NM,FISC_WK,FISC_YR,FISC_PD,FISC_WK_STRT_DT

			UNION ALL

			SELECT DISTINCT

			    'P'+ (CASE WHEN IA.FISC_PD = 1 THEN '11' WHEN IA.FISC_PD = 2 THEN '12'  
						WHEN IA.FISC_PD BETWEEN 3 AND 10 THEN '0' + CAST(IA.FISC_PD - 2 as CHAR(1))
						WHEN IA.FISC_PD = 11  THEN '09' 
						WHEN IA.FISC_PD > 11  THEN CAST(IA.FISC_PD- 2 as CHAR(2)) END ) + 
			           CAST((CASE WHEN IA.FISC_PD BETWEEN 1 AND 2 Then IA.FISC_YR - 1 Else IA.FISC_YR END) as CHAR(4)) as SNPSHT,
				[MATRL] AS MATRL_NBR,
				COALESCE([SHIP_LOC],'') as [SHIPMNT_LOC],
				CAST(IA.PLN_TO_CUST AS float) AS PLN_TO_CUST,
				PLN_TO_CUST_NM,
				FISC_WK,
				(CASE WHEN IA.FISC_PD BETWEEN 1 AND 2 Then IA.FISC_YR - 1 Else IA.FISC_YR END) as FISC_YR,
				(CASE WHEN IA.FISC_PD = 1 THEN '11' WHEN IA.FISC_PD = 2 THEN '12'  
						WHEN IA.FISC_PD BETWEEN 3 AND 10 THEN '0' + CAST(IA.FISC_PD - 2 as CHAR(1))
						WHEN IA.FISC_PD = 11  THEN '09' 
						WHEN IA.FISC_PD > 11  THEN CAST(IA.FISC_PD- 2 as CHAR(2)) END ) as FISC_PD,
				FISC_WK_STRT_DT,
				ISNULL(SUM([OUTBND_USD_CUR_YR]), 0) AS [OUTBND_USD_CUR_YR],
				ISNULL(SUM([OUTBND_USD_PREV_YR]), 0) AS [OUTBND_USD_PREV_YR],
				ISNULL(SUM([CURR_YR_QTY]), 0) AS [CURR_YR_QTY],
				ISNULL(SUM([PREV_YR_QTY]), 0) AS [PREV_YR_QTY]
			FROM [KNA_SALES].[dbo].[INFOMETRICS_ACTL_SALES] IA WITH (NOLOCK)  
			WHERE ((FISC_YR > 2016 ) OR (FISC_YR = 2016 AND FISC_PD >= 11 ) ) 
		    GROUP BY [MATRL],[SHIP_LOC],IA.PLN_TO_CUST,PLN_TO_CUST_NM,FISC_WK,FISC_YR,FISC_PD,FISC_WK_STRT_DT
		 ) 

--------------------Getting the SAS data-----------------------------------------------------------------------------------
 ,SAS AS( 
             SELECT 
			      Material,
				  Location,
				  SNPSHT,
				  FISC_WK_STRT_DT,
				  FISC_WK,
				  FiscalYear,
				  Period,
				  (M.[PLN_TO_CUST]), 
				  PLN_TO_NM, 
				  SUM(TOT_FCST) as TOTL_FCST,
				  SUM(COALESCE(((TOT_FCST) * FPSHIP.PRC),0)) as [TOTL_FCST_AMT]
			      FROM (SELECT 
						L0.Material, 
						COALESCE(L0.Location,'') as [Location], 
						'P'+ (CASE WHEN LEN(RTRIM(CAST(L0.Period  as CHAR(2)))) = 1 THEN '0' + CAST(L0.Period as CHAR(1))
						ELSE CAST(L0.Period as CHAR(2)) END ) + CAST(L0.FiscalYear as CHAR(4)) as SNPSHT,
						C.FISC_WK_STRT_DT, 
						L0.FiscalYear, 
						L0.Period, 
						C.FISC_WK,
						RTRIM(PLAN_TO) as PLN_TO_CUST, 
						SUM(L0.[Forecast]) as TOT_FCST
					 FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS] L0 WITH (NOLOCK)
					 INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SUBSTRING(L0.WEEK,6,2) 
					 AND C.FISC_YR = L0.FiscalYear  AND L0.BU like 'Specialty%'  
					 WHERE ((L0.FiscalYear > 2016 ) OR (L0.FiscalYear = 2016 AND L0.Period >= 11 ) )
					 GROUP BY  L0.Material, L0.Location,  C.FISC_WK_STRT_DT, L0.FiscalYear, L0.Period,RTRIM(PLAN_TO),C.FISC_WK
				UNION ALL
				     SELECT 
						L1.Material, 
						COALESCE(L1.Location,'') as [Location], 
						'P'+ (CASE WHEN L1.Period = 1 THEN '12' 
							WHEN L1.Period BETWEEN 2 AND 9 THEN '0' + CAST(L1.Period - 1 as CHAR(1))
							WHEN L1.Period = 10  THEN '09'
							WHEN L1.Period > 10  THEN CAST(L1.Period - 1 as CHAR(2)) END ) + 
						CAST((CASE WHEN L1.Period = 1 Then L1.FiscalYear - 1 Else L1.FiscalYear END) as CHAR(4)) as SNPSHT,
						 C.FISC_WK_STRT_DT, 
						(CASE WHEN L1.Period = 1 Then L1.FiscalYear - 1 Else L1.FiscalYear END) as FiscalYear, 
						(CASE WHEN L1.Period = 1 THEN '12' 
						WHEN L1.Period BETWEEN 2 AND 9 THEN '0' + CAST(L1.Period - 1 as CHAR(1))
						WHEN L1.Period = 10  THEN '09'
						WHEN L1.Period > 10  THEN CAST(L1.Period- 1 as CHAR(2)) END ) as Period, 
						C.FISC_WK,
						RTRIM(PLAN_TO) as PLN_TO_CUST, 
						SUM(L1.[Forecast1]) as TOT_FCST
					FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS] L1 WITH (NOLOCK)
					INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SUBSTRING(L1.WEEK,6,2) 
					AND C.FISC_YR = L1.FiscalYear AND L1.BU like 'Specialty%'   
					WHERE ((L1.FiscalYear > 2016 ) OR (L1.FiscalYear = 2016 AND L1.Period >= 11 ) )
					GROUP BY  L1.Material, L1.Location,  C.FISC_WK_STRT_DT, L1.FiscalYear, L1.Period,RTRIM(PLAN_TO) ,C.FISC_WK 
				UNION ALL
 
			 SELECT 
						L2.Material, 
						COALESCE(L2.Location,'') as [Location], 
						'P'+(CASE WHEN L2.Period = 1 THEN '11'
						  WHEN L2.Period = 2 THEN '12'
						  WHEN L2.Period BETWEEN 3 AND 10 THEN '0' + CAST(L2.Period - 2 as CHAR(1))
						  WHEN L2.Period = 11  THEN '09'
						  WHEN L2.Period > 11  THEN CAST(L2.Period - 2 as CHAR(2)) END ) + 
						CAST((CASE WHEN L2.Period BETWEEN 1 AND 2 Then L2.FiscalYear - 1 Else L2.FiscalYear END) 
						as CHAR(4)) as SNPSHT,
						C.FISC_WK_STRT_DT, 
						(CASE WHEN L2.Period BETWEEN 1 AND 2 Then L2.FiscalYear - 1 Else L2.FiscalYear END) as FiscalYear,
						(CASE WHEN L2.Period = 1 THEN '11' WHEN L2.Period = 2 THEN '12'
						WHEN L2.Period BETWEEN 3 AND 10 THEN '0' + CAST(L2.Period - 2 as CHAR(1))
						WHEN L2.Period = 11  THEN '09'
						WHEN L2.Period > 11  THEN CAST(L2.Period- 1 as CHAR(2)) END ) as Period, 
						 C.FISC_WK,
						RTRIM(PLAN_TO) as PLN_TO_CUST, 
						SUM(L2.[Forecast2]) as TOT_FCST
			FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS] L2 WITH (NOLOCK)
			INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SUBSTRING(L2.WEEK,6,2) 
			AND C.FISC_YR = L2.FiscalYear  AND L2.BU like 'Specialty%'   
			WHERE ((L2.FiscalYear > 2016 ) OR (L2.FiscalYear = 2016 AND L2.Period >= 11 ) )
		    GROUP BY  L2.Material, L2.Location,  C.FISC_WK_STRT_DT, L2.FiscalYear, L2.Period,RTRIM(PLAN_TO) ,FISC_WK
         ) M 
		 INNER JOIN (
		            SELECT DISTINCT 
					              PC.PLN_TO_CUST, 
								  PC.CHNL_NBR , 
								  PC.PLN_TO_NM COLLATE DATABASE_DEFAULT as PLN_TO_NM
					FROM [KNA_SALES].[dbo].[UVW_PLANTO_CHANNAL] PC WITH (NOLOCK) WHERE PC.CHNL_NBR like '%500003%') PC 
		 ON PC.PLN_TO_CUST = M.PLN_TO_CUST
		 LEFT OUTER JOIN CTE0  FPSHIP  WITH (NOLOCK) 
		 ON M.Material = FPSHIP.MATRL_NBR
		 GROUP BY Material, Location, SNPSHT, FISC_WK_STRT_DT, FiscalYear, Period, M.PLN_TO_CUST,FISC_WK, PLN_TO_NM
                     )
--------------------Getting the Shipment data-------------------------------------------------------------------------
, SHIP AS (
         SELECT [MATRL_NBR], [SHIPMNT_LOC], SNPSHT, FISC_WK,FISC_WK_STRT_DT, [FISC_YR], FISC_PD, SH.[PLN_TO_CUST],PC.PLN_TO_NM as PLN_TO_NM,
                SUM(SHIPMNT_QTY) as SHIPMNT_QTY,SUM(SHIPMNT_AMT) AS SHIPMNT_AMT,
						  SUM(SHIPMNT_QTY_PREV_YR) as SHIPMNT_QTY_PREV_YR,
						  SUM(SHIPMNT_AMT_PREV_YR) as [SHIPMNT_AMT_PREV_YR]
         FROM(
			  SELECT 
					FORMAT([MATRL_NBR],'000000000000000000') AS [MATRL_NBR],
					COALESCE([SHIPMNT_LOC],'') as [SHIPMNT_LOC], 
					'P'+ (CASE WHEN LEN(RTRIM(CAST(SHP.FISC_PD  as CHAR(2)))) = 1 THEN '0' + CAST(SHP.FISC_PD as CHAR(1))
					ELSE CAST(SHP.FISC_PD as CHAR(2)) END ) + CAST(SHP.[FISC_YR] as CHAR(4)) as SNPSHT,
					C.FISC_WK_STRT_DT, 
					SHP.[FISC_YR], 
					SHP.FISC_PD, 
					 C.FISC_WK,
					(SHP.[PLN_TO_CUST] COLLATE DATABASE_DEFAULT) AS [PLN_TO_CUST], 
					PLN_TO_NM,
					ISNULL(SUM(SHIPMNT_QTY),0) as SHIPMNT_QTY,
					ISNULL(SUM(SHIPMNT_AMT),0) as [SHIPMNT_AMT],
						  ISNULL(SUM(SHIPMNT_QTY_PREV_YR),0) as SHIPMNT_QTY_PREV_YR,
						  ISNULL(SUM(SHIPMNT_AMT_PREV_YR),0) as [SHIPMNT_AMT_PREV_YR]
				FROM [KNA_SALES].[dbo].[UVW_KPI_SHIPMENT] SHP WITH (NOLOCK) 
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SHP.FISC_WK 
				AND C.FISC_YR = SHP.FISC_YR   
				WHERE ((SHP.FISC_YR  > 2016 ) OR (SHP.FISC_YR  = 2016 AND SHP.FISC_PD >= 11 ) )
				GROUP BY [MATRL_NBR],[SHIPMNT_LOC],C.FISC_WK_STRT_DT,
						SHP.[FISC_YR],SHP.FISC_PD,PLN_TO_NM,SHP.[PLN_TO_CUST], C.FISC_WK, PLN_TO_NM

	UNION ALL

				  SELECT 
					FORMAT([MATRL_NBR],'000000000000000000') AS [MATRL_NBR],
					COALESCE([SHIPMNT_LOC],'') as [SHIPMNT_LOC], 
					
		'P'+ (CASE WHEN SHP.FISC_PD = 1 THEN '12' 
			WHEN SHP.FISC_PD BETWEEN 2 AND 9 THEN '0' + CAST(SHP.FISC_PD - 1 as CHAR(1))
			WHEN SHP.FISC_PD = 10  THEN '09'
			WHEN SHP.FISC_PD > 10  THEN CAST(SHP.FISC_PD- 1 as CHAR(2)) END ) + 
		CAST((CASE WHEN SHP.FISC_PD = 1 Then SHP.FISC_YR - 1 Else SHP.FISC_YR END) as CHAR(4)) as SNPSHT,

			C.FISC_WK_STRT_DT, 
			(CASE WHEN SHP.FISC_PD = 1 Then SHP.FISC_YR - 1 Else SHP.FISC_YR END) as [FISC_YR], 
			(CASE WHEN SHP.FISC_PD = 1 THEN '12' 
				WHEN SHP.FISC_PD BETWEEN 2 AND 9 THEN '0' + CAST(SHP.FISC_PD - 1 as CHAR(1))
				WHEN SHP.FISC_PD = 10  THEN '09'
				WHEN SHP.FISC_PD > 10  THEN CAST(SHP.FISC_PD- 1 as CHAR(2)) END ) as FISC_PD, 
				C.FISC_WK,
			(SHP.[PLN_TO_CUST] COLLATE DATABASE_DEFAULT)AS [PLN_TO_CUST], 
			PLN_TO_NM,
			ISNULL(SUM(SHIPMNT_QTY),0) as SHIPMNT_QTY,
			ISNULL(SUM(SHIPMNT_AMT),0) as [SHIPMNT_AMT],
						  ISNULL(SUM(SHIPMNT_QTY_PREV_YR),0) as SHIPMNT_QTY_PREV_YR,
						  ISNULL(SUM(SHIPMNT_AMT_PREV_YR),0) as [SHIPMNT_AMT_PREV_YR]
				FROM [KNA_SALES].[dbo].[UVW_KPI_SHIPMENT] SHP WITH (NOLOCK) 
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SHP.FISC_WK 
				AND C.FISC_YR = SHP.FISC_YR    
				WHERE ((SHP.FISC_YR  > 2016 ) OR (SHP.FISC_YR  = 2016 AND SHP.FISC_PD >= 11 ) )
				GROUP BY [MATRL_NBR],[SHIPMNT_LOC],C.FISC_WK_STRT_DT,
				SHP.[FISC_YR],SHP.FISC_PD,PLN_TO_NM,SHP.[PLN_TO_CUST], C.FISC_WK, PLN_TO_NM

	UNION ALL

				  SELECT 
					FORMAT([MATRL_NBR],'000000000000000000') AS [MATRL_NBR],
					COALESCE([SHIPMNT_LOC],'') as [SHIPMNT_LOC], 
			'P'+ (CASE WHEN SHP.FISC_PD = 1 THEN '11' WHEN SHP.FISC_PD = 2 THEN '12'  
						WHEN SHP.FISC_PD BETWEEN 3 AND 10 THEN '0' + CAST(SHP.FISC_PD - 2 as CHAR(1))
						WHEN SHP.FISC_PD = 11  THEN '09' 
						WHEN SHP.FISC_PD > 11  THEN CAST(SHP.FISC_PD- 2 as CHAR(2)) END ) + 
			CAST((CASE WHEN SHP.FISC_PD BETWEEN 1 AND 2 Then SHP.FISC_YR - 1 Else SHP.FISC_YR END) as CHAR(4)) as SNPSHT,

					C.FISC_WK_STRT_DT, 
					(CASE WHEN SHP.FISC_PD BETWEEN 1 AND 2 Then SHP.FISC_YR - 1 Else SHP.FISC_YR END) as [FISC_YR], 
					(CASE WHEN SHP.FISC_PD = 1 THEN '11' WHEN SHP.FISC_PD = 2 THEN '12'  
						WHEN SHP.FISC_PD BETWEEN 3 AND 10 THEN '0' + CAST(SHP.FISC_PD - 2 as CHAR(1))
						WHEN SHP.FISC_PD = 11  THEN '09' 
						WHEN SHP.FISC_PD > 11  THEN CAST(SHP.FISC_PD- 2 as CHAR(2)) END ) as FISC_PD, 
					 C.FISC_WK,
					(SHP.[PLN_TO_CUST] COLLATE DATABASE_DEFAULT)AS [PLN_TO_CUST], 
					PLN_TO_NM,
					ISNULL(SUM(SHIPMNT_QTY),0) as SHIPMNT_QTY,
					ISNULL(SUM(SHIPMNT_AMT),0) as [SHIPMNT_AMT],
						  ISNULL(SUM(SHIPMNT_QTY_PREV_YR),0) as SHIPMNT_QTY_PREV_YR,
						  ISNULL(SUM(SHIPMNT_AMT_PREV_YR),0) as [SHIPMNT_AMT_PREV_YR]
				FROM [KNA_SALES].[dbo].[UVW_KPI_SHIPMENT] SHP WITH (NOLOCK) 
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SHP.FISC_WK 
				AND C.FISC_YR = SHP.FISC_YR    
				WHERE ((SHP.FISC_YR  > 2016 ) OR (SHP.FISC_YR  = 2016 AND SHP.FISC_PD >= 11 ) )
				GROUP BY [MATRL_NBR],[SHIPMNT_LOC],C.FISC_WK_STRT_DT,
				SHP.[FISC_YR],SHP.FISC_PD,PLN_TO_NM,SHP.[PLN_TO_CUST], C.FISC_WK, PLN_TO_NM

             ) SH  
			INNER JOIN (SELECT DISTINCT PC.PLN_TO_CUST, PC.CHNL_NBR, PC.PLN_TO_NM COLLATE DATABASE_DEFAULT as PLN_TO_NM 
			FROM [KNA_SALES].[dbo].[UVW_PLANTO_CHANNAL] PC WITH (NOLOCK) WHERE PC.CHNL_NBR like '%500003%') PC 
			ON PC.PLN_TO_CUST = SH.PLN_TO_CUST 
			 
			 GROUP BY [MATRL_NBR],[SHIPMNT_LOC],FISC_WK_STRT_DT,[FISC_YR],FISC_PD, 
			 SH.PLN_TO_NM,SH.PLN_TO_CUST,SNPSHT,FISC_WK, PC.PLN_TO_NM
           )


--------------------Getting the INFOMETRICS_ACTL_SALES,SAS and Shipment data-------------------------------
	SELECT DISTINCT
	   D.[MATRL_NBR] AS [MATRL]
	  ,M.MATRL_TYP
	  ,M.MATRL_DESC
	  ,D.[SHIPMNT_LOC] as SHIPMNT_LOC
	  ,D.PLN_TO_CUST
	  ,PLN_TO_CUST_NM
	  ,D.SNPSHT
	  ,D.FISC_YR
	  ,D.FISC_PD
	  ,D.FISC_WK_STRT_DT
	  ,D.FISC_WK
	  ,MC.[CHRSTC_VAL] AS FRST_SHIPMNT_DT
	  ,PH.[PROD_HIER_MARKET_SEGMENT_DESC] AS MKTG_SEG_DESC
	  ,PH.[PROD_HIER_CATEGORY] AS CATG_CODE
	  ,PH.[PROD_HIER_CATEGORY_DESC] AS CATG_DESC
	  ,MM.[Field_Category] AS CATG_FLD
	  ,[OUTBND_USD_CUR_YR]
	  ,[OUTBND_USD_PREV_YR]
	  ,[CURR_YR_QTY]
	  ,[PREV_YR_QTY]
	  ,D.TOTL_FCST
	  ,D.TOTL_FCST_AMT
	  ,NULL as TOTL_FCST_PREV_YR
      ,NULL as TOTL_FCST_AMT_PREV_YR
	  ,D.[SHIPMNT_QTY] AS SHIPMNT_QTY
	  ,D.[SHIPMNT_AMT] AS SHIPMNT_AMT
	  ,(D.SHIPMNT_QTY_PREV_YR) as SHIPMNT_QTY_PREV_YR
	  ,(D.SHIPMNT_AMT_PREV_YR) as [SHIPMNT_AMT_PREV_YR]
		FROM (
		SELECT 
				COALESCE(t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT, t3.[MATRL_NBR] COLLATE DATABASE_DEFAULT) AS [MATRL_NBR] ,
				COALESCE(t1.PLN_TO_CUST,t3.PLN_TO_CUST) AS PLN_TO_CUST, 
				COALESCE(PLN_TO_CUST_NM,PLN_TO_NM) as PLN_TO_CUST_NM,
				COALESCE(t1.SNPSHT, t3.SNPSHT) AS SNPSHT,
				COALESCE(t1.FISC_YR,  t3.[FISC_YR]) AS FISC_YR,
				COALESCE(t1.FISC_PD, t3.FISC_PD) AS FISC_PD,
				COALESCE(t1.SHIPMNT_LOC,  t3.SHIPMNT_LOC) AS SHIPMNT_LOC,
				COALESCE(t1.FISC_WK_STRT_DT,t3.FISC_WK_STRT_DT) AS FISC_WK_STRT_DT,
			    COALESCE(t1.FISC_WK, t3.FISC_WK) AS FISC_WK,
				COALESCE([OUTBND_USD_CUR_YR],0) as [OUTBND_USD_CUR_YR],
	            COALESCE([OUTBND_USD_PREV_YR],0) as [OUTBND_USD_PREV_YR],
	            COALESCE([CURR_YR_QTY],0) as [CURR_YR_QTY],
	            COALESCE([PREV_YR_QTY],0) as [PREV_YR_QTY],
	            COALESCE(TOTL_FCST,0) as TOTL_FCST,
	            COALESCE(TOTL_FCST_AMT,0) as TOTL_FCST_AMT,
	            COALESCE([SHIPMNT_QTY],0) as [SHIPMNT_QTY],
	            COALESCE([SHIPMNT_AMT],0) as [SHIPMNT_AMT],
				(SHIPMNT_QTY_PREV_YR) as SHIPMNT_QTY_PREV_YR,
				(SHIPMNT_AMT_PREV_YR) as [SHIPMNT_AMT_PREV_YR]

		FROM (		SELECT 
				COALESCE(t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT, t2.Material COLLATE DATABASE_DEFAULT) AS [MATRL_NBR] ,
				COALESCE(t1.PLN_TO_CUST, t2.PLN_TO_CUST) AS PLN_TO_CUST, 
				COALESCE(PLN_TO_CUST_NM,PLN_TO_NM) AS PLN_TO_CUST_NM,
				COALESCE(t2.SNPSHT, t1.SNPSHT) AS SNPSHT,
				COALESCE(t1.FISC_YR, t2.FiscalYear) AS FISC_YR,
				COALESCE(t1.FISC_PD, t2.Period) AS FISC_PD,
				COALESCE(t1.SHIPMNT_LOC, t2.Location) AS SHIPMNT_LOC,
				COALESCE(t1.FISC_WK_STRT_DT,t2.FISC_WK_STRT_DT) AS FISC_WK_STRT_DT,
			    COALESCE(t1.FISC_WK,t2.FISC_WK) AS FISC_WK,
				ISNULL(SUM([OUTBND_USD_CUR_YR]),0) as [OUTBND_USD_CUR_YR],
	            ISNULL(SUM([OUTBND_USD_PREV_YR]),0) as [OUTBND_USD_PREV_YR],
	            ISNULL(SUM([CURR_YR_QTY]),0) as [CURR_YR_QTY],
	            ISNULL(SUM([PREV_YR_QTY]),0) as [PREV_YR_QTY],
	            ISNULL(SUM(TOTL_FCST),0) as TOTL_FCST,
	            ISNULL(SUM(TOTL_FCST_AMT),0) as TOTL_FCST_AMT

		FROM INFO t1 WITH (NOLOCK)
		FULL OUTER JOIN  SAS t2 WITH (NOLOCK)
		ON  t2.Material				= t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT
			AND t2.FiscalYear       = t1.FISC_YR 
			AND t2.FISC_WK          = t1.FISC_WK
			AND t2.SNPSHT			= t1.SNPSHT
			AND t2.Location         = t1.[SHIPMNT_LOC] 
			AND t2.PLN_TO_CUST      = t1.PLN_TO_CUST 

		GROUP BY 
			COALESCE(t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT,t2.Material COLLATE DATABASE_DEFAULT) ,
			COALESCE(t1.PLN_TO_CUST , t2.PLN_TO_CUST ) , 
			COALESCE(PLN_TO_CUST_NM,PLN_TO_NM),
			COALESCE(t2.SNPSHT, t1.SNPSHT),
			COALESCE(t1.FISC_YR, t2.FiscalYear) ,
			COALESCE(t1.FISC_PD, t2.Period),
			COALESCE(t1.SHIPMNT_LOC, t2.Location),
			COALESCE(t1.FISC_WK_STRT_DT,t2.FISC_WK_STRT_DT), 
			COALESCE(t1.FISC_WK,t2.FISC_WK) 
		) t1
			
		FULL OUTER JOIN SHIP t3 WITH (NOLOCK)
			ON  t3.[MATRL_NBR]      = t1.MATRL_NBR COLLATE DATABASE_DEFAULT
			AND t3.[FISC_YR]		= t1.FISC_YR 
			AND t3.FISC_WK          = t1.FISC_WK
			AND t3.SNPSHT			= t1.SNPSHT
			AND t3.[SHIPMNT_LOC]       = t1.[SHIPMNT_LOC] 
			AND t3.PLN_TO_CUST      = t1.PLN_TO_CUST 
) D
--------------------JOING ALL MASTER TABLES BASED ON CONDTION----------------------------------------
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL M  WITH (NOLOCK)  ON M.MATRL_NBR = D.MATRL_NBR COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_ECC].dbo.MARA MV  WITH (NOLOCK)  ON MV.[MATNR] = D.MATRL_NBR COLLATE DATABASE_DEFAULT
LEFT JOIN [KG_VIEWS].[KNA].[UVW_PROD_HIER] PH WITH (NOLOCK)  ON PH.[PROD_HIER] = MV.PRDHA COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SALES].[dbo].[MaterialMap] MM  WITH (NOLOCK)  ON FORMAT(MM.Base_Case_Code, '000000000000000000') = D.MATRL_NBR COLLATE DATABASE_DEFAULT
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN MC  WITH (NOLOCK) ON MC.MATRL_NBR = D.MATRL_NBR COLLATE DATABASE_DEFAULT
AND MC.CLAS = 'PLANNING_DATES' COLLATE DATABASE_DEFAULT AND MC.[CHRSTC_NM] = 'FIRST_SHIP_DATE' COLLATE DATABASE_DEFAULT

WHERE 	(D.[FISC_YR] = Year(GetDate()) AND CAST(D.[FISC_PD] as Int) < Month(GetDate())) OR D.[FISC_YR] < Year(GetDate())














































GO
/****** Object:  View [dbo].[UVW_SPCLTY_RMBSMT_ARCHV]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/* Created by Vignesh Sankar 03-26-2018 */
CREATE VIEW [dbo].[UVW_SPCLTY_RMBSMT_ARCHV]
AS
SELECT 
	IND.[SOLD_TO] AS SOLD_TO,
	IND.[SHIP_TO] AS SHIP_TO,
	IND.[MATERIAL] AS MATRL,
	IND.[/B299/S_IPAGRMT] AS AGRMT,
	VSTX.[/BIC/ZREFDOC] AS REF,
	IND.[/B299/S_CRRSN] AS CLAIM_RQST_RSN,
	VSTX.[CRRSN_TXT] AS CLAIM_RQST_TXT,
	VSTX.[/B299/S_GCRITEM] AS CLAIM_RQST_ITM, 
	IND.[/B299/S_GCRNUM] AS CLAIM_RQST_NBR,
	IND.[/BIC/ZCMMT_ITM] AS COMTMNT_ITM,
	IND.[CMTIT_TXT] AS COMTMNT_TXT,
	IND.[/B299/S_GCRTYP] AS CLAIM_RQST_TYP,
	IND.[/B299/S_TYPE] AS IP_TYP,
	VSTX.[/BIC/ZZCHKCMT] AS CHK_CMNT,
	CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
    ELSE VSTX.[/BIC/ZZINTCMT1] END AS CLAIM_INTR_CMNT_DESC_ITM,
	VSTX.[/BIC/ZTDATE] AS CUST_INVC_DT,
	VSTX.[/BIC/ZZINTCMT] AS INTR_CMNT,
	IND.[FUNDS_CTR] AS FUND_CTR,
	IND.[FUND] AS FUND,
	IND.[FUND_TXT] AS [FUND_TXT],
	IND.[/B299/S_SETLDT] AS LAST_STLMT_DT,
	VSTX.[/BIC/ZSETLFLAG] AS PYMT_TYP,
	IND.[PAYER] AS PAYR,
	IND.[/B299/S_DCIND] AS DR_CR_IND,	-- Newly added
	IND.[/B299/S_ASTAT] AS ACRL_STATUS,	-- Newly added
	IND.[/B299/S_SSTAT] AS STLMT_STATUS,	-- Newly added
	IND.[PRICE_DATE] AS PRFMNC_DT,		-- Newly added
	IND.[/B299/S_BUDAT] AS POSTNG_DT,
	IND.[/B299/S_PYROL] AS RCPNT_ROLE,
	SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4) AS FISC_YR,
	SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2) AS FISC_PD,
	CAL.FISC_QTR AS FISC_QTR,
	--IND.[/B299/S_SETLDT] AS STLMT_DT,
	CAL1.FISC_YR AS STLMT_YR,
	CAL1.FISC_PD AS STLMT_PD,
	CAL1.FISC_QTR AS STLMT_QTR,
	C.SOLD_TO_NM AS SOLD_TO_NM,
	C.SOLD_TO_NM AS SHIP_TO_NM,
	C.CHN AS CHN,
	C.CHN_NBR AS CHN_NBR,
    C.PLN_TO_NBR AS PLN_TO_NBR,
	C.CHNL_NM AS CHNL_NM,
	C.ZN AS ZN,
	C.DSTR AS DSTR,
	C.TERR AS TERR,
	M.MATRL_DESC_ENGL AS MATRL_DESC_ENGL,
	M.MATRL_DESC_CSTM AS MATRL_DESC_CSTM,
	M.PROD_HIER_CATG_DESC AS PROD_HIER_CATG_DESC,
	M.FLD_CATG AS FLD_CATG,
	M.PROD_HIER_CATG AS PROD_HIER_CATG,  -- Newly added
	C.PRC_GRP AS PRC_GRP,				 -- Newly added
	C.PRC_GRP_DESC AS PRC_GRP_DESC,		 -- Newly added
	C.CUST_GRP AS CUST_GRP,				 -- Newly added
	CASE WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL AND K1.[NAME1] IS NULL THEN LF1.NAME1 
	WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL THEN K1.[NAME1] COLLATE DATABASE_DEFAULT 
	ELSE C1.[SOLD_TO_NM] END AS PAYR_NM,
	SUM(ZRKF_BBRB_2_NETWR) + SUM(ZRKF_BBVR_C_NETWR) AS STLMT_AMT
FROM 
	( 
	SELECT IND_SUB.*,
		   SUM(H_ZRKF_BBRB_2_NETWR) - SUM(C_ZRKF_BBRB_2_NETWR) AS ZRKF_BBRB_2_NETWR,
		   SUM(H_ZRKF_BBVR_C_NETWR) - SUM(C_ZRKF_BBVR_C_NETWR) AS ZRKF_BBVR_C_NETWR
	FROM
		( 
		SELECT
			[SOLD_TO],
			[SHIP_TO],
			[MATERIAL],
			[/B299/S_IPAGRMT],
			[/B299/S_CRRSN],
			[/B299/S_GCRNUM],
			[/BIC/ZCMMT_ITM],
			[CMTIT_TXT],
			[/B299/S_GCRTYP],
			[/B299/S_TYPE],
			[FUNDS_CTR],
			[FUND],
			[FUND_TXT],
			[/B299/S_SETLDT],
			[PAYER],
			[/BIC/ZPRF_PER],
			[/B299/S_POSNR],
			[/B299/S_DCIND],	-- Newly added
			[/B299/S_ASTAT],	-- Newly added
			[/B299/S_SSTAT],	-- Newly added
			[PRICE_DATE],		-- Newly added
			[/B299/S_BUDAT],
			[/B299/S_PYROL],
			COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBRB_2_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_SSTAT] = '2' AND [/B299/S_TYPE] = 'BBRB' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBRB_2_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='H' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS H_ZRKF_BBVR_C_NETWR,
			COALESCE(CASE WHEN "/B299/S_DCIND"='S' AND [/B299/S_ASTAT] = 'C' AND [/B299/S_TYPE] = 'BBVR' THEN SUM("/B299/S_IPNETWR") END ,0) AS C_ZRKF_BBVR_C_NETWR
		FROM [KNA_BW].[dbo].[OHZOH_B_IND] 
		WHERE [/B299/S_TYPE] IN ('BBRB','BBVR')
			  AND FUND NOT LIKE '%OSD%'
			  AND [/BIC/ZSETLEY] BETWEEN 2013001 AND CONVERT(VARCHAR(4), YEAR(GetDate())-4)+'012'
		GROUP BY 
		[SOLD_TO],
		[SHIP_TO],
		[MATERIAL],
		[/B299/S_IPAGRMT],
		[/B299/S_CRRSN],
		[/B299/S_GCRNUM],
		[/BIC/ZCMMT_ITM],
		[CMTIT_TXT],
		[/B299/S_GCRTYP],
		[/B299/S_TYPE],
		[FUNDS_CTR],
		[FUND],
		[FUND_TXT],
		[/B299/S_SETLDT],
		[PAYER],
		[/BIC/ZPRF_PER],
		[/B299/S_POSNR],
		[/B299/S_DCIND],
		[/B299/S_SSTAT],
		[/B299/S_ASTAT],
		[PRICE_DATE],
		[/B299/S_BUDAT],
		[/B299/S_PYROL],
		[/B299/S_TYPE]
		) IND_SUB 
	GROUP BY 
	[SOLD_TO],
	[SHIP_TO],
	[MATERIAL],
	[/B299/S_IPAGRMT],
	[/B299/S_CRRSN],
	[/B299/S_GCRNUM],
	[/BIC/ZCMMT_ITM],
	[CMTIT_TXT],
	[/B299/S_GCRTYP],
	[/B299/S_TYPE],
	[FUNDS_CTR],
	[FUND],
	[FUND_TXT],
	[/B299/S_SETLDT],
	[PAYER],
	[/BIC/ZPRF_PER],
	[/B299/S_POSNR],
	[/B299/S_DCIND],	-- Newly added
	[/B299/S_ASTAT],	-- Newly added
	[/B299/S_SSTAT],	-- Newly added
	[PRICE_DATE],		-- Newly added
	[/B299/S_BUDAT],
	[/B299/S_PYROL],
	H_ZRKF_BBRB_2_NETWR,
	C_ZRKF_BBRB_2_NETWR,
	H_ZRKF_BBVR_C_NETWR,
	C_ZRKF_BBVR_C_NETWR
	) IND
LEFT JOIN [KNA_BW].[dbo].[OHZOH_VSTX] VSTX
ON IND.[/B299/S_GCRNUM] = VSTX.[/B299/S_GCRNUM]
   AND IND.[/B299/S_POSNR] = VSTX.[/B299/S_GCRITEM]

LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C
ON IND.SOLD_TO COLLATE DATABASE_DEFAULT  = C.SOLD_TO  COLLATE DATABASE_DEFAULT

LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_CUST_MSTR] C1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT  = C1.SOLD_TO  COLLATE DATABASE_DEFAULT

LEFT JOIN [KNA_ECC].[dbo].[KNA1] K1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT = K1.KUNNR COLLATE DATABASE_DEFAULT

LEFT JOIN KNA_ECC.dbo.LFA1 LF1
ON IND.[PAYER] COLLATE DATABASE_DEFAULT = LF1.LIFNR COLLATE DATABASE_DEFAULT

LEFT JOIN [KNA_SALES].[dbo].[UVW_SPCLTY_MATRL_MSTR] M
ON CAST(IND.MATERIAL AS FLOAT) = M.MATRL_NBR

LEFT JOIN (SELECT FISC_YR, FISC_PD, FISC_QTR FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] GROUP BY FISC_YR, FISC_PD, FISC_QTR)CAL
ON CAL.FISC_YR = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4)
   AND CAL.FISC_PD = SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2)

LEFT JOIN KNA_EXTERNAL.USER_FIN.AGRMT_DUP_FLG FLG
ON CAST(IND.[/B299/S_IPAGRMT] AS INTEGER) = FLG.Agreement

LEFT JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] CAL1
ON IND.[/B299/S_SETLDT] BETWEEN CAL1.FISC_WK_STRT_DT AND CAL1.FISC_WK_END_DT

GROUP BY
IND.[SOLD_TO],
IND.[SHIP_TO],
IND.[MATERIAL],
IND.[/B299/S_IPAGRMT],
VSTX.[/BIC/ZREFDOC],
IND.[/B299/S_CRRSN],
VSTX.[CRRSN_TXT],
VSTX.[/B299/S_GCRITEM], 
IND.[/B299/S_GCRNUM],
IND.[/BIC/ZCMMT_ITM],
IND.[CMTIT_TXT],
IND.[/B299/S_GCRTYP],
IND.[/B299/S_TYPE],
VSTX.[/BIC/ZZCHKCMT],
CASE WHEN VSTX.[/BIC/ZZINTCMT1] LIKE '00000%' THEN REPLACE(LTRIM(REPLACE(VSTX.[/BIC/ZZINTCMT1], '0', ' ')), ' ', '0') 
ELSE VSTX.[/BIC/ZZINTCMT1] END,
VSTX.[/BIC/ZTDATE],
VSTX.[/BIC/ZZINTCMT],
IND.[FUNDS_CTR],
IND.[FUND],
IND.[FUND_TXT],
IND.[/B299/S_SETLDT],
VSTX.[/BIC/ZSETLFLAG],
IND.[PAYER],
IND.[/B299/S_DCIND],	-- Newly added
IND.[/B299/S_ASTAT],	-- Newly added
IND.[/B299/S_SSTAT],	-- Newly added
IND.[PRICE_DATE],		-- Newly added
IND.[/B299/S_BUDAT],
IND.[/B299/S_PYROL],
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),1,4),
SUBSTRING(CAST(IND.[/BIC/ZPRF_PER] AS VARCHAR(8)),6,2),
CAL.FISC_QTR,
IND.[/B299/S_SETLDT],
CAL1.FISC_YR,
CAL1.FISC_PD,
CAL1.FISC_QTR,
C.SOLD_TO_NM,
C.SOLD_TO_NM,
C.CHN,
C.CHN_NBR,
C.PLN_TO_NBR,
C.CHNL_NM,
C.ZN,
C.DSTR,
C.TERR,
M.MATRL_DESC_ENGL,
M.MATRL_DESC_CSTM,
M.PROD_HIER_CATG_DESC,
M.FLD_CATG,
M.PROD_HIER_CATG, -- Newly added
C.PRC_GRP,		-- Newly added
C.PRC_GRP_DESC, -- Newly added
C.CUST_GRP,		-- Newly added
CASE WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL AND K1.[NAME1] IS NULL THEN LF1.NAME1 
	WHEN C1.[SOLD_TO_NM] COLLATE DATABASE_DEFAULT IS NULL THEN K1.[NAME1] COLLATE DATABASE_DEFAULT 
	ELSE C1.[SOLD_TO_NM] END




GO
/****** Object:  View [dbo].[UVW_FOOD_DMND_FCST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Venkatesh\Chandars
-- Create date		:	09/01/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	SQL VIEW developed as a data source for KSC-Demand Dashbaord FOOD Services 
-- Comments			:   Infometrics data has been blended with Material attributes and SAS DP data set
--					:	Modified to support year-end change from 2017 to 2018 
-- Execue			:  SELECT * FROM KNA_SALES.[dbo].[UVW_FOOD_DMND_FCST]
-- =============================================
CREATE VIEW [dbo].[UVW_FOOD_DMND_FCST]
AS
WITH CTE0 AS 
	(SELECT MATRL_NBR, PRICE as PRC
	FROM ( SELECT MATRL_NBR, PRICE ,ROW_NUMBER() OVER (PARTITION BY MATRL_NBR ORDER BY MATRL_NBR ASC) as MATRL_SEQ
		FROM ( 
			SELECT  FORMAT([SKU],'000000000000000000') AS MATRL_NBR, PRICE
			FROM [KNA_EXTERNAL].[USER_SC].[WGT_AVG_PRC] WITH (NOLOCK)
			WHERE  CHNL LIKE '%FS%' AND (SKU IS NOT NULL or FORMAT([SKU],'000000000000000000')<>'000000000000000000')
			UNION ALL
			SELECT MATRL_NBR,PRC
			FROM  KG_VIEWS.KNA.UVW_MATRL_PRC RP  WITH (NOLOCK) 
			WHERE MATRL_NBR IS NOT NULL) M
       ) M WHERE MATRL_SEQ = 1
	   )

----------------------------------Getting the FOOD SERVICE data-------------------------------------------------
,FOOD AS (   	SELECT 
					MATRL AS [MATRL_NBR],
					COALESCE(SHIP_LOC,'') as SHIPMNT_LOC,
					SNPSHT_PD,
					SNPSHT_WK,
					F.FISC_PD,
					F.FISC_YR,
					C.FISC_WK AS FISC_WK,
					PLN_TO_CUST,
					ISNULL(SUM(SNPSHT_QTY),0) AS SNPSHT_QTY,
					ISNULL(SUM(SNPSHT_AMT),0) AS SNPSHT_AMT
				FROM[KNA_SALES].[dbo].[FOOD_SERV_DMND_FCST] F WITH (NOLOCK) 				
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK)  on SNPSHT_WK BETWEEN C.FISC_WK_STRT_DT AND FISC_WK_END_DT
				GROUP BY SNPSHT_PD,SHIP_LOC,MATRL,SNPSHT_WK,F.FISC_PD,F.FISC_YR,PLN_TO_CUST, C.FISC_WK
         )
----------------------------------Getting the SAS data---------------------------------------------------------------
,SAS AS( 
               SELECT 
				Material,
				Location,
				SNPSHT,
				FISC_WK_STRT_DT,
				FiscalYear,
				Period,
				[PLN_TO_CUST],
				FISC_WK, 
				SUM(TOT_FCST) as TOTL_FCST,
				SUM(COALESCE(((TOT_FCST) * FPSHIP.PRC),0)) as [TOTL_FCST_AMT]
			     FROM (SELECT 
							L0.Material, 
							COALESCE(L0.Location,'') as [Location], 
							 'P'+ (CASE WHEN LEN(RTRIM(CAST(L0.Period  as CHAR(2)))) = 1 THEN '0' + CAST(L0.Period as CHAR(1))
							ELSE CAST(L0.Period as CHAR(2)) END ) + CAST(L0.FiscalYear as CHAR(4)) as SNPSHT,
							C.FISC_WK_STRT_DT, 
							L0.FiscalYear, 
							L0.Period, 
							C.FISC_WK as FISC_WK,
							PLAN_TO as PLN_TO_CUST,
							SUM(L0.[Forecast]) as TOT_FCST
						FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS]  L0 WITH (NOLOCK)
						INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK)  on C.FISC_WK = SUBSTRING(L0.WEEK,6,2) 
						AND C.FISC_YR = L0.FiscalYear  AND L0.BU like 'Specialty%' 
						WHERE ((L0.FiscalYear > 2016 ) OR (L0.FiscalYear = 2016 AND L0.Period >= 11 ) )
						AND (PLAN_TO LIKE '%300346%'OR PLAN_TO LIKE '%300993%')	
						GROUP BY  L0.Material, L0.Location,  C.FISC_WK_STRT_DT, L0.FiscalYear, L0.Period,PLAN_TO , C.FISC_WK

						UNION ALL

						SELECT 
							L1.Material, 
							COALESCE(L1.Location,'') as [Location], 
							'P'+ (CASE WHEN L1.Period = 1 THEN '12' WHEN L1.Period BETWEEN 2 AND 9 THEN '0' + CAST(L1.Period - 1 as CHAR(1))
							  WHEN L1.Period = 10  THEN '09'WHEN L1.Period > 10  THEN CAST(L1.Period - 1 as CHAR(2)) END ) + 
							CAST((CASE WHEN L1.Period = 1 Then L1.FiscalYear - 1 Else L1.FiscalYear END) as CHAR(4)) as SNPSHT,
							C.FISC_WK_STRT_DT, 
							(CASE WHEN L1.Period = 1 Then L1.FiscalYear - 1 Else L1.FiscalYear END) as FiscalYear, L1.Period - 1 as Period, 
							C.FISC_WK as FISC_WK, 
							PLAN_TO as PLN_TO_CUST,
							SUM(L1.[Forecast1]) as TOT_FCST
						FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS] L1 WITH (NOLOCK)
						INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) 
						on C.FISC_WK = SUBSTRING(L1.WEEK,6,2) 
						AND C.FISC_YR = L1.FiscalYear AND L1.BU like 'Specialty%' 
						WHERE ((L1.FiscalYear > 2016 ) OR (L1.FiscalYear = 2016 AND L1.Period >= 11 ) )
						AND (PLAN_TO LIKE '%300346%'OR PLAN_TO LIKE '%300993%')
						GROUP BY  L1.Material, L1.Location,  C.FISC_WK_STRT_DT, L1.FiscalYear, L1.Period,PLAN_TO,  C.FISC_WK 

						UNION ALL
 
						SELECT 
							L2.Material, 
							COALESCE(L2.Location,'') as [Location], 
							'P'+(CASE WHEN L2.Period = 1 THEN '11'
							  WHEN L2.Period = 2 THEN '12'
							  WHEN L2.Period BETWEEN 3 AND 10 THEN '0' + CAST(L2.Period - 2 as CHAR(1))
							  WHEN L2.Period = 11  THEN '09'
							  WHEN L2.Period > 11  THEN CAST(L2.Period - 2 as CHAR(2)) END ) + 
							CAST((CASE WHEN L2.Period BETWEEN 1 AND 2 Then L2.FiscalYear - 1 Else L2.FiscalYear END) as CHAR(4)) as SNPSHT,
							C.FISC_WK_STRT_DT, 
							(CASE WHEN L2.Period BETWEEN 1 AND 2 Then L2.FiscalYear - 1 Else L2.FiscalYear END) as FiscalYear, L2.Period - 2,
							C.FISC_WK as FISC_WK,  PLAN_TO as PLN_TO_CUST,
							SUM(L2.[Forecast2]) as TOT_FCST
						FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS] L2 WITH (NOLOCK)
						INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) 
						on C.FISC_WK = SUBSTRING(L2.WEEK,6,2) 
						AND C.FISC_YR = L2.FiscalYear  AND L2.BU like 'Specialty%' 
						WHERE ((L2.FiscalYear > 2016 ) OR (L2.FiscalYear = 2016 AND L2.Period >= 11 ) )
						AND (PLAN_TO LIKE '%300346%'OR PLAN_TO LIKE '%300993%')
						GROUP BY  L2.Material, L2.Location,  C.FISC_WK_STRT_DT, L2.FiscalYear, L2.Period,PLAN_TO , C.FISC_WK
					) M 
					  LEFT OUTER JOIN CTE0  FPSHIP  WITH (NOLOCK) 
					  ON M.Material = FPSHIP.MATRL_NBR
					  GROUP BY Material, Location, SNPSHT, FISC_WK_STRT_DT, FiscalYear, Period, PLN_TO_CUST, FISC_WK
  )
----------------------------------Getting the Shipment data-------------------------------------------------
, SHIP AS (
             SELECT 
			       [MATRL_NBR], 
				   [SHIPMNT_LOC], 
				   SNPSHT, 
				   FISC_WK_STRT_DT, 
				   [FISC_YR], 
				   FISC_PD, 
				   [PLN_TO_CUST], 
				   FISC_WK, 
                   SUM(SHIPMNT_QTY) as SHIPMNT_QTY,
				   SUM(SHIPMNT_AMT) AS SHIPMNT_AMT,
                   SUM(SHIPMNT_QTY_PREV_YR) as SHIPMNT_QTY_PREV_YR,
				   SUM(SHIPMNT_AMT_PREV_YR) AS SHIPMNT_AMT_PREV_YR
              FROM(
					SELECT 
						  FORMAT([MATRL_NBR],'000000000000000000') AS [MATRL_NBR],
						COALESCE([SHIPMNT_LOC],'') as [SHIPMNT_LOC], 
						  'P'+ (CASE WHEN LEN(RTRIM(CAST(SHP.FISC_PD  as CHAR(2)))) = 1 THEN '0' + CAST(SHP.FISC_PD as CHAR(1))
						  ELSE CAST(SHP.FISC_PD as CHAR(2)) END ) + CAST(SHP.[FISC_YR] as CHAR(4)) as SNPSHT,
						  C.FISC_WK_STRT_DT, 
						  SHP.[FISC_YR], 
						  SHP.FISC_PD, 
						  ([PLN_TO_CUST] COLLATE DATABASE_DEFAULT) AS [PLN_TO_CUST], 
						  PLN_TO_NM,  C.FISC_WK, 
						  ISNULL(SUM(SHIPMNT_QTY),0) as SHIPMNT_QTY,
						  ISNULL(SUM(SHIPMNT_AMT),0) as [SHIPMNT_AMT],
						  ISNULL(SUM(SHIPMNT_QTY_PREV_YR),0) as SHIPMNT_QTY_PREV_YR,
						  ISNULL(SUM(SHIPMNT_AMT_PREV_YR),0) as [SHIPMNT_AMT_PREV_YR]
					 FROM [KNA_SALES].[dbo].[UVW_KPI_SHIPMENT] SHP WITH (NOLOCK) 
					 INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C WITH (NOLOCK) on C.FISC_WK = SHP.FISC_WK 
					 AND C.FISC_YR = SHP.FISC_YR 
					 WHERE ((SHP.FISC_YR  > 2016 ) OR (SHP.FISC_YR  = 2016 AND SHP.FISC_PD >= 11 ) )
					 AND ([PLN_TO_CUST] LIKE '%300346%'OR [PLN_TO_CUST] LIKE '%300993%')
					 GROUP BY [MATRL_NBR],[SHIPMNT_LOC],C.FISC_WK_STRT_DT,SHP.[FISC_YR],SHP.FISC_PD,PLN_TO_NM,[PLN_TO_CUST],  
					 C.FISC_WK

			 UNION ALL

			SELECT 
					FORMAT([MATRL_NBR],'000000000000000000') AS [MATRL_NBR],
					COALESCE([SHIPMNT_LOC],'') as [SHIPMNT_LOC], 
					'P'+ (CASE WHEN SHP.FISC_PD = 1 THEN '12' 
						WHEN SHP.FISC_PD BETWEEN 2 AND 9 THEN '0' + CAST(SHP.FISC_PD - 1 as CHAR(1))
						WHEN SHP.FISC_PD = 10  THEN '09'
						WHEN SHP.FISC_PD > 10  THEN CAST(SHP.FISC_PD- 1 as CHAR(2)) END ) + 
					CAST((CASE WHEN SHP.FISC_PD = 1 Then SHP.FISC_YR - 1 Else SHP.FISC_YR END) as CHAR(4)) as SNPSHT,
					C.FISC_WK_STRT_DT, 
					(CASE WHEN SHP.FISC_PD = 1 Then SHP.[FISC_YR] - 1 Else SHP.[FISC_YR] END) as FISC_YR,
					(CASE WHEN SHP.FISC_PD = 1 THEN '12' 
					WHEN SHP.FISC_PD BETWEEN 2 AND 9 THEN '0' + CAST(SHP.FISC_PD - 1 as CHAR(1))
					WHEN SHP.FISC_PD = 10  THEN '09'
					WHEN SHP.FISC_PD > 10  THEN CAST(SHP.FISC_PD- 1 as CHAR(2)) END ) as FISC_PD,
					([PLN_TO_CUST] COLLATE DATABASE_DEFAULT)AS [PLN_TO_CUST], 
					PLN_TO_NM,  
					C.FISC_WK, 
					ISNULL(SUM(SHIPMNT_QTY),0) as SHIPMNT_QTY,
					ISNULL(SUM(SHIPMNT_AMT),0) as [SHIPMNT_AMT],
						  ISNULL(SUM(SHIPMNT_QTY_PREV_YR),0) as SHIPMNT_QTY_PREV_YR,
						  ISNULL(SUM(SHIPMNT_AMT_PREV_YR),0) as [SHIPMNT_AMT_PREV_YR]
			 FROM [KNA_SALES].[dbo].[UVW_KPI_SHIPMENT] SHP WITH (NOLOCK) 
			 INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C  WITH (NOLOCK) on C.FISC_WK = SHP.FISC_WK 
			 AND C.FISC_YR = SHP.FISC_YR 
			 WHERE ((SHP.FISC_YR  > 2016 ) OR (SHP.FISC_YR  = 2016 AND SHP.FISC_PD >= 11 ) )
			 AND ([PLN_TO_CUST] LIKE '%300346%'OR [PLN_TO_CUST] LIKE '%300993%')
			 GROUP BY [MATRL_NBR],[SHIPMNT_LOC],C.FISC_WK_STRT_DT,SHP.[FISC_YR],SHP.FISC_PD,PLN_TO_NM,[PLN_TO_CUST],C.FISC_WK
		UNION ALL

			SELECT 
					FORMAT([MATRL_NBR],'000000000000000000') AS [MATRL_NBR],
					COALESCE([SHIPMNT_LOC],'') as [SHIPMNT_LOC],  
					'P'+ (CASE WHEN SHP.FISC_PD = 1 THEN '11' WHEN SHP.FISC_PD = 2 THEN '12'  
								WHEN SHP.FISC_PD BETWEEN 3 AND 10 THEN '0' + CAST(SHP.FISC_PD - 2 as CHAR(1))
								WHEN SHP.FISC_PD = 11  THEN '09' 
								WHEN SHP.FISC_PD > 11  THEN CAST(SHP.FISC_PD- 2 as CHAR(2)) END ) + 
					CAST((CASE WHEN SHP.FISC_PD BETWEEN 1 AND 2 Then SHP.FISC_YR - 1 Else SHP.FISC_YR END) as CHAR(4)) as SNPSHT,
					C.FISC_WK_STRT_DT, 
					(CASE WHEN SHP.FISC_PD BETWEEN 1 AND 2 Then SHP.[FISC_YR] - 1 Else SHP.[FISC_YR] END) as FISC_YR,
					(CASE WHEN SHP.FISC_PD = 1 THEN '11' WHEN SHP.FISC_PD = 2 THEN '12'  
						WHEN SHP.FISC_PD BETWEEN 3 AND 10 THEN '0' + CAST(SHP.FISC_PD - 2 as CHAR(1))
						WHEN SHP.FISC_PD = 11  THEN '09' 
						WHEN SHP.FISC_PD > 11  THEN CAST(SHP.FISC_PD - 2 as CHAR(2)) END ) as FISC_PD,
					([PLN_TO_CUST] COLLATE DATABASE_DEFAULT)AS [PLN_TO_CUST], 
					PLN_TO_NM,  C.FISC_WK, 
					ISNULL(SUM(SHIPMNT_QTY),0) as SHIPMNT_QTY,
					ISNULL(SUM(SHIPMNT_AMT),0) as [SHIPMNT_AMT],
						  ISNULL(SUM(SHIPMNT_QTY_PREV_YR),0) as SHIPMNT_QTY_PREV_YR,
						  ISNULL(SUM(SHIPMNT_AMT_PREV_YR),0) as [SHIPMNT_AMT_PREV_YR]
			 FROM [KNA_SALES].[dbo].[UVW_KPI_SHIPMENT] SHP WITH (NOLOCK) 
			 INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] C  WITH (NOLOCK) 
			 on C.FISC_WK = SHP.FISC_WK 
			 AND C.FISC_YR = SHP.FISC_YR 
			 WHERE ((SHP.FISC_YR  > 2016 ) OR (SHP.FISC_YR  = 2016 AND SHP.FISC_PD >= 11 ) )
			 AND ([PLN_TO_CUST] LIKE '%300346%'OR [PLN_TO_CUST] LIKE '%300993%')
			 GROUP BY [MATRL_NBR],[SHIPMNT_LOC],C.FISC_WK_STRT_DT,SHP.[FISC_YR],SHP.FISC_PD,PLN_TO_NM,[PLN_TO_CUST], C.FISC_WK
			 ) SH  GROUP BY [MATRL_NBR],[SHIPMNT_LOC],FISC_WK_STRT_DT,[FISC_YR],FISC_PD, PLN_TO_NM,PLN_TO_CUST,SNPSHT,FISC_WK
           )
----------------Here we are joining with theFOOD Service ,SAS and shipment data ---------------------------------		
SELECT 
	   D.MATRL_NBR
	  ,MU.MATRL_DESC as MATRL_DESC
      ,[SNPSHT_WK]
	  ,D.SNPSHT AS SNPSHT_PD
	  ,D.FISC_YR
	  ,D.FISC_PD 
	  ,D.FISC_WK
	  ,PH.[PROD_HIER_MARKET_SEGMENT_DESC] as MKTG_SEG_DESC
	  ,PH.[PROD_HIER_CATEGORY] as CATG_CODE
      ,PH.[PROD_HIER_CATEGORY_DESC] as CATG_DESC
      ,MM.[Field_Category] AS [CATG_FIELD]
	  ,D.SHIPMNT_LOC AS SHIPMNT_LOC
	  ,[SNPSHT_QTY]
	  ,[SNPSHT_AMT]
	  ,TOTL_FCST
	  ,TOTL_FCST_AMT
	  ,D.[SHIPMNT_QTY]
	  ,D.SHIPMNT_AMT
	  ,D.PLN_TO_CUST
	  ,CASE WHEN D.PLN_TO_CUST like '%300346%'  THEN 'PT US FOODSERVICE'
			WHEN D.PLN_TO_CUST like '%300993%' THEN 'PT SYSCO' 
		END as PLN_TO_CUST_NM
	  ,D.[SHIPMNT_QTY_PREV_YR] as [SHIPMNT_QTY_PREV]
	  ,D.[SHIPMNT_AMT_PREV_YR] as [SHIPMNT_AMT_PREV]
	FROM (
		SELECT 
				COALESCE(t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT,t3.[MATRL_NBR] COLLATE DATABASE_DEFAULT) AS [MATRL_NBR] ,
				COALESCE(t1.PLN_TO_CUST COLLATE DATABASE_DEFAULT,  t3.PLN_TO_CUST COLLATE DATABASE_DEFAULT) AS PLN_TO_CUST, 
				COALESCE(t1.SNPSHT,  t3.SNPSHT) AS SNPSHT,
				COALESCE(t1.FISC_YR,  t3.FISC_YR) AS FISC_YR,
				COALESCE(t1.FISC_PD,  t3.FISC_PD) AS FISC_PD,
				COALESCE(t1.FISC_WK,  t3.FISC_WK) AS FISC_WK,
				COALESCE(t1.SHIPMNT_LOC,  t3.SHIPMNT_LOC) AS SHIPMNT_LOC,
				COALESCE(t1.SNPSHT_WK, t3.FISC_WK_STRT_DT) AS SNPSHT_WK,
				(SNPSHT_QTY) AS SNPSHT_QTY,
				(SNPSHT_AMT) AS SNPSHT_AMT,
				(TOTL_FCST) as TOTL_FCST,
				([TOTL_FCST_AMT]) AS[TOTL_FCST_AMT],
				([SHIPMNT_QTY]) as SHIPMNT_QTY,
				([SHIPMNT_AMT]) AS SHIPMNT_AMT,
				(SHIPMNT_QTY_PREV_YR) as SHIPMNT_QTY_PREV_YR,
				(SHIPMNT_AMT_PREV_YR) as [SHIPMNT_AMT_PREV_YR]
		FROM (
		SELECT 
				COALESCE(t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT,t2.Material COLLATE DATABASE_DEFAULT) AS [MATRL_NBR] ,
				COALESCE(t1.PLN_TO_CUST COLLATE DATABASE_DEFAULT, t2.PLN_TO_CUST COLLATE DATABASE_DEFAULT) AS PLN_TO_CUST, 
				COALESCE(t1.SNPSHT_PD, t2.SNPSHT) AS SNPSHT,
				COALESCE(t1.FISC_YR, t2.FiscalYear) AS FISC_YR,
				COALESCE(t1.FISC_PD, t2.Period) AS FISC_PD,
				COALESCE(t1.FISC_WK, t2.FISC_WK) AS FISC_WK,
				COALESCE(t1.SHIPMNT_LOC COLLATE DATABASE_DEFAULT, t2.Location COLLATE DATABASE_DEFAULT) AS SHIPMNT_LOC,
				COALESCE(t1.SNPSHT_WK,t2.FISC_WK_STRT_DT) AS SNPSHT_WK,
				ISNULL(SUM(SNPSHT_QTY),0) AS SNPSHT_QTY,
				ISNULL(SUM(SNPSHT_AMT),0) AS SNPSHT_AMT,
				ISNULL(SUM(TOTL_FCST),0) as TOTL_FCST,
				ISNULL(SUM([TOTL_FCST_AMT]),0) AS[TOTL_FCST_AMT]
		FROM FOOD t1 WITH (NOLOCK)
		FULL OUTER JOIN  SAS t2 WITH (NOLOCK)
			ON  t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT        = t2.Material COLLATE DATABASE_DEFAULT
			AND t1.FISC_YR       = t2.FiscalYear 
			AND t1.FISC_WK          = t2.FISC_WK
			AND t1.SNPSHT_PD			= t2.SNPSHT
			AND t1.[SHIPMNT_LOC]  COLLATE DATABASE_DEFAULT      =  t2.Location COLLATE DATABASE_DEFAULT
			AND t1.PLN_TO_CUST  COLLATE DATABASE_DEFAULT     = t2.PLN_TO_CUST COLLATE DATABASE_DEFAULT
		GROUP BY 
			COALESCE(t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT,t2.Material COLLATE DATABASE_DEFAULT) ,
			COALESCE(t1.PLN_TO_CUST COLLATE DATABASE_DEFAULT, t2.PLN_TO_CUST COLLATE DATABASE_DEFAULT) , 
			COALESCE(t1.SNPSHT_PD, t2.SNPSHT),
			COALESCE(t1.FISC_YR, t2.FiscalYear) ,
			COALESCE(t1.FISC_PD, t2.Period),
			COALESCE(t1.FISC_WK, t2.FISC_WK) ,
			COALESCE(t1.SHIPMNT_LOC COLLATE DATABASE_DEFAULT, t2.Location COLLATE DATABASE_DEFAULT),
			COALESCE(t1.SNPSHT_WK,t2.FISC_WK_STRT_DT) 
		) t1 
		FULL OUTER JOIN SHIP t3 WITH (NOLOCK)
			ON  t3.[MATRL_NBR] COLLATE DATABASE_DEFAULT     = t1.[MATRL_NBR] COLLATE DATABASE_DEFAULT
			AND t3.FISC_YR			= t1.FISC_YR  
			AND t3.FISC_WK          = t1.FISC_WK
			AND t3.SNPSHT			= t1.SNPSHT
			AND t3.[SHIPMNT_LOC]    = t1.[SHIPMNT_LOC] 
			AND t3.PLN_TO_CUST     = t1.PLN_TO_CUST 

) D
---------------Here we are joining with the all master tables based on the Condtion------------------------------------------ 
	    LEFT JOIN  [KNA_ECC].dbo.MARA MV WITH (NOLOCK) on MV.[MATNR] = D.MATRL_NBR COLLATE DATABASE_DEFAULT 
		LEFT JOIN [KG_VIEWS].[KNA].[UVW_PROD_HIER] PH WITH (NOLOCK) on PH.[PROD_HIER] = MV.PRDHA COLLATE DATABASE_DEFAULT 
		LEFT JOIN [KNA_SALES].[dbo].[MaterialMap] MM WITH (NOLOCK)  ON FORMAT(MM.Base_Case_Code,'000000000000000000') = D.MATRL_NBR COLLATE DATABASE_DEFAULT
		LEFT JOIN KG_VIEWS.KNA.UVW_MATRL MU WITH (NOLOCK) ON MU.MATRL_NBR = D.MATRL_NBR COLLATE DATABASE_DEFAULT

WHERE (D.FISC_YR < Year(GetDate()) OR (D.FISC_YR = Year(GetDate()) AND D.FISC_PD <= Month(GetDate()) ) )
















GO
/****** Object:  View [dbo].[UVW_FOOD_DMND_FCST_BIAS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
							
							
							
							
							
-- =============================================							
--#NAME?			:	Venkatesh\Chandars			
--#NAME?		:	9/1/2017				
--#NAME?		:					
--#NAME?	:						
--#NAME?		:	SQL VIEW developed as a data source for KSC-Demand Dashbaord FOOD SERVICES Page 				
--#NAME?			:   US FOODS and SYSCO data has been blended with Material attributes and SAS DP data set to 				
--							populate LAG0, LAG1 & LAG2 details for each material
--#NAME?			:  				
-- =============================================							
							
CREATE VIEW [dbo].[UVW_FOOD_DMND_FCST_BIAS]							
AS							
							
SELECT INFO_ACTL.MATRL_NBR as MATRL, INFO_ACTL.[PLN_TO_CUST], SHIPMNT_QTY, PD_LAG0_QTY, PD_LAG1_QTY, PD_LAG2_QTY,							
			ROUND((PD_LAG0_QTY - SHIPMNT_QTY) / (CASE WHEN PD_LAG0_QTY = 0 THEN 1 ELSE PD_LAG0_QTY END) * 100,2)  As PD_LAG0_VARNC,				
			ROUND((PD_LAG1_QTY - SHIPMNT_QTY) / (CASE WHEN PD_LAG1_QTY = 0 THEN 1 ELSE PD_LAG1_QTY END) * 100, 2) As PD_LAG1_VARNC,				
			ROUND((PD_LAG2_QTY - SHIPMNT_QTY) / (CASE WHEN PD_LAG2_QTY = 0 THEN 1 ELSE PD_LAG2_QTY END) * 100, 2) As PD_LAG2_VARNC				
 FROM(      SELECT  							
				FORMAT(MATRL_NBR ,'000000000000000000') AS MATRL_NBR ,  			
				[PLN_TO_CUST],			
				SUM([SHIPMNT_QTY]) AS SHIPMNT_QTY			
			FROM KNA_SALES.DBO.[UVW_KPI_SHIPMENT] WITH (NOLOCK)				
			WHERE [FISC_YR] = Year(GetDate())				
			AND [FISC_PD] = Month(GetDate()) - 1 				
			AND ([PLN_TO_CUST] like '%300346%' OR [PLN_TO_CUST] like  '%300993%')				
			GROUP BY MATRL_NBR,  [PLN_TO_CUST]				
							
	  )INFO_ACTL						
--------------------Getting the current month SNPSHT_QTY data -----------------------------------------							
LEFT JOIN ( 							
               SELECT  							
			        [PLN_TO_CUST],				
					[MATRL]  as [MATRL],  		
					SUM([SNPSHT_QTY]) AS PD_LAG0_QTY		
				FROM [KNA_SALES].[dbo].[FOOD_SERV_DMND_FCST] DF WITH (NOLOCK)			
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK) 			
				ON DF.SNPSHT_WK BETWEEN FC.FISC_WK_STRT_DT and FC.FISC_WK_END_DT			
				AND FC.FISC_YR = DF.FISC_YR			
				WHERE DF.FISC_YR = Year(GetDate())			
				AND FC.FISC_PD = DF.FISC_PD			
				AND FC.FISC_PD = Month(GetDate()) - 1 			
				GROUP BY [PLN_TO_CUST],	[MATRL]		
          )P0   ON P0.[MATRL] COLLATE DATABASE_DEFAULT = INFO_ACTL.MATRL_NBR COLLATE DATABASE_DEFAULT							
		  AND P0.PLN_TO_CUST COLLATE DATABASE_DEFAULT = INFO_ACTL.PLN_TO_CUST COLLATE DATABASE_DEFAULT					
--------------------Getting the Previous  month SNPSHT_QTY data compare to current month-----------------------							
LEFT JOIN ( 							
               SELECT  [PLN_TO_CUST],							
					[MATRL], 		
					SUM([SNPSHT_QTY]) AS PD_LAG1_QTY		
				FROM [KNA_SALES].[dbo].[FOOD_SERV_DMND_FCST]   DF WITH (NOLOCK)			
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK) 			
				ON DF.SNPSHT_WK BETWEEN FC.FISC_WK_STRT_DT and FC.FISC_WK_END_DT AND FC.FISC_YR = DF.FISC_YR			
				INNER JOIN (SELECT DISTINCT FISC_YR, FISC_WK 			
				            FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK) 			
				WHERE FC.FISC_YR = Year(GetDate()) AND FC.FISC_PD = Month(GetDate()) - 1 ) FC1			
				ON FC1.FISC_Wk = FC.FISC_WK and FC1.FISC_YR = FC.FISC_YR			
				WHERE DF.FISC_YR = Year(GetDate())			
				AND DF.FISC_PD = Month(GetDate()) - 2 			
				GROUP BY [PLN_TO_CUST],	[MATRL]		
          )P1   ON P1.[MATRL] = INFO_ACTL.MATRL_NBR 							
		  AND P1.PLN_TO_CUST COLLATE DATABASE_DEFAULT = INFO_ACTL.PLN_TO_CUST COLLATE DATABASE_DEFAULT					
--------------------Getting the Previous two months SNPSHT_QTY data compare to current month-----------------------							
LEFT JOIN ( 							
               SELECT  							
			        [PLN_TO_CUST],				
					[MATRL], 		
					SUM([SNPSHT_QTY]) AS PD_LAG2_QTY		
				FROM [KNA_SALES].[dbo].[FOOD_SERV_DMND_FCST]   DF WITH (NOLOCK)			
				INNER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK) 			
				ON DF.SNPSHT_WK BETWEEN FC.FISC_WK_STRT_DT and FC.FISC_WK_END_DT AND FC.FISC_YR = DF.FISC_YR			
				INNER JOIN (SELECT DISTINCT FISC_YR, FISC_WK 			
				            FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK) 			
				WHERE FC.FISC_YR = Year(GetDate()) AND FC.FISC_PD = Month(GetDate()) - 1 ) FC1			
				ON FC1.FISC_Wk = FC.FISC_WK and FC1.FISC_YR = FC.FISC_YR			
				WHERE DF.FISC_YR = Year(GetDate())			
				AND DF.FISC_PD = Month(GetDate()) - 3			
				GROUP BY [PLN_TO_CUST],	[MATRL]		
          )P2   ON P2.[MATRL] = INFO_ACTL.MATRL_NBR 							
		  AND P2.PLN_TO_CUST COLLATE DATABASE_DEFAULT = INFO_ACTL.PLN_TO_CUST COLLATE DATABASE_DEFAULT					
							
							
							
							

GO
/****** Object:  View [dbo].[UVW_REX_KEEPSAFE_SAFETY_METRIC_QTD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 09/29/2018
-- Modified By		: Abhilash mogili
-- Modified date	: 10/09/2018
-- Description		: Returns the  Safety Metrics  for all the Employees for Present Quarter
-- =============================================



CREATE VIEW [dbo].[UVW_REX_KEEPSAFE_SAFETY_METRIC_QTD]
AS 


SELECT  
'kpi_UserSafety_QTD' AS [KPI_ID]
, 'Users' AS [Class]
,CONCAT('00',EMPL_NUM) AS [Object_ID]
,CONVERT(VARCHAR,CONVERT(DATETIME,PD_DT),101)  AS KPIDate
,SUM([OBSRVTN]+ [SAFETY_MSG1]+[SAFETY_MSG2]+[MODULE]) AS Calculation
,12 AS TargetCalculation
FROM
[dbo].[UVW_REX_SAFETY_METRIC] WITH (NOLOCK)
GROUP BY
CONCAT('00',EMPL_NUM) 
,CONVERT(VARCHAR,CONVERT(DATETIME,PD_DT),101)


GO
/****** Object:  View [dbo].[UVW_REX_EMPL_QTR_COMP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author	: Abhilash Mogili
-- Create date	: 09/21/2018
-- Modified By	:
-- Modified date:	
-- Description	: Returns the Store  and Account Level Sales for the Present Quarter along with their KSR and KSM details
-- Comments	:
-- =============================================



CREATE VIEW [dbo].[UVW_REX_EMPL_QTR_COMP]
AS
SELECT 
 CC.KSM_EMPNUM																													 AS KSMEMPNUM
,CONCAT(CC.KSR_EMPNUM,'-',CONVERT(DECIMAL(10,0),CC.TERR_NBR))					  AS 'KSREMPNUM-TERRNUM'
,CUST.SNAME																															AS STORENAME
,CUST.SNO																																	AS STORENUMBER
,CUST.STR																																	AS STOREADDRESS
,CUST.CITY																																	AS STORECITY
,CUST.SST																																	AS STATE
,CONCAT(ACCOUNT_LEVEL.PLN_TO,'-',CONVERT(DECIMAL(10,0),ACCOUNT_LEVEL.PLN_TO_NBR)) AS 'PLN TO NAME - NUMBER'
,CUST.PLN_TO_NBR
,STORE_LEVEL.STORE_SALES
,STORE_LEVEL.STORE_BUDGET
,STORE_LEVEL.BU
,ACCOUNT_LEVEL.ACCOUNT_SALES
,ACCOUNT_LEVEL.ACCOUNT_BUDGET
,CASE WHEN ACCOUNT_LEVEL.ACCOUNT_BUDGET = 0 THEN 0 ELSE (ACCOUNT_LEVEL.ACCOUNT_SALES/ACCOUNT_LEVEL.ACCOUNT_BUDGET) END AS 'ACCOUNT%TOBUDGET'
FROM
(
--Getting the Store level Sales for present Quarter for Snacks and MF
SELECT  
       [TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,YR
      ,[PD_DESC]
	  ,BU
      ,SUM([DOL_SALE]) AS STORE_SALES
      ,SUM([BUD]) AS STORE_BUDGET     
  FROM [KNA_SALES].[dbo].[UVW_REX_RPT_KSR_BUD] AS KSR
  INNER JOIN
  KNA_SALES.dbo.UVW_REX_PD_DT AS DT
  ON
 DT.CUR_YR =  KSR.YR
 AND
 CONCAT('Q',DT.CUR_QTR) = KSR.PD_DESC
  GROUP BY
  [TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,YR
      ,[PD_DESC]
	  ,BU
	  ) AS STORE_LEVEL

	  INNER JOIN
	  (
	  --Getting the Plan To level Sales for present Quarter for Snacks and MF
	  SELECT  
      [PLN_TO]
      ,[PLN_TO_NBR]
	   ,BU
	   ,YR
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS ACCOUNT_SALES
      ,SUM([BUD]) AS ACCOUNT_BUDGET    
  FROM 
  [KNA_SALES].[dbo].[UVW_REX_RPT_KSR_BUD] AS KSR
  INNER JOIN
  KNA_SALES.dbo.UVW_REX_PD_DT AS DT
  ON
 DT.CUR_YR =  KSR.YR
 AND
 CONCAT('Q',DT.CUR_QTR) = KSR.PD_DESC
  GROUP BY
       [PLN_TO]
      ,[PLN_TO_NBR]
	  ,YR
      ,[PD_DESC]
	  ,BU
	  )  AS ACCOUNT_LEVEL
	  ON
	  STORE_LEVEL.PLN_TO_NBR = ACCOUNT_LEVEL.PLN_TO_NBR
	  and
	 STORE_LEVEL.PD_DESC = ACCOUNT_LEVEL.PD_DESC
	 AND
	 STORE_LEVEL.BU = ACCOUNT_LEVEL.BU
INNER JOIN
 [KNA_SALES].[dbo].[UVW_REX_CALL_COVRG] AS CC WITH (NOLOCK)
 ON
 STORE_LEVEL.TERR_NBR = CC.TERR_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
 INNER JOIN
 KNA_SALES.dbo.REX_TDLINX_CUST_HIER AS CUST
 ON
 STORE_LEVEL.SOLD_TO_NBR = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
 AND
 STORE_LEVEL.YR = CUST.FISC_YR
 AND
 STORE_LEVEL.PD_DESC = CONCAT('Q',CUST.FISC_QTR)
 



GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_CUST_HIER_NO_TDLINX]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author	: Abhilash Mogili
-- Create date	: 09/18/2018
-- Modified By	:
-- Modified date:	
-- Description	: Returns the Stores without TDLINX in Customer Hierarchy for Present Quarter
-- Comments	:
-- =============================================


CREATE VIEW [dbo].[UVW_REX_VLD_RPT_CUST_HIER_NO_TDLINX]
AS

 
 
 SELECT
	   [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
	  ,STDLINXSCD
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,FISC_YR
	  ,FISC_QTR
	  FROM
	  KNA_SALES.dbo.REX_TDLINX_CUST_HIER AS CUS WITH (NOLOCK)
	  INNER JOIN
	  KNA_SALES.[dbo].[UVW_REX_PD_DT]  AS DT WITH (NOLOCK)
	  ON
	  CUS.FISC_YR = DT.CUR_YR
	  AND
	  CUS.FISC_QTR = DT.CUR_QTR
	  WHERE
	  STDLINXSCD IS NULL OR STDLINXSCD = ''

GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_KROGER_STORES_NO_POS_L4W_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author	: Abhilash Mogili
-- Create date	: 09/18/2018
-- Modified By	:
-- Modified date:	
-- Description	: Returns the kroger Stores with no Pos in last 4 weeks that have a budget for current Quarter
-- Comments	:
-- =============================================

CREATE VIEW [dbo].[UVW_REX_VLD_RPT_KROGER_STORES_NO_POS_L4W_BUD]
AS


SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
	  ,CUST.STDLINXSCD
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS SOLD_TO_NBR
	  ,KROG.DOL_SALE
	  ,BUDG.BUD
	
FROM 
(
	   SELECT
	   [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
	  ,STDLINXSCD
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,FISC_YR
	  ,FISC_QTR
	  FROM
	  KNA_SALES.dbo.REX_TDLINX_CUST_HIER AS CUS
	  INNER JOIN
	  KNA_SALES.[dbo].[UVW_REX_PD_DT]  AS DT
	  ON
	  CUS.FISC_YR = DT.CUR_YR
	  AND
	  CUS.FISC_QTR = DT.CUR_QTR
	  WHERE
	  CUS.PLN_TO_NBR = '0000300855') CUST
LEFT OUTER JOIN
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO_NBR,CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE FROM KNA_EXTERNAL.UVW_REX_VLD_STORES_KROGER_POS_L4W')AS KROG
ON
CUST.SOLD_TO_NBR = KROG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD
,SOLD_TO_NBR
,BUD.QTR
,BUD.YR
FROM [KNA_EXTERNAL].[USER_SALES].[REX_POS_BUDGET] AS BUD WITH (NOLOCK)
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
ON
BUD.YR = DT.CUR_YR
AND
BUD.QTR = DT.CUR_QTR
GROUP BY SOLD_TO_NBR,BUD.QTR,BUD.YR
) AS BUDG 
ON
CUST.SOLD_TO_NBR = BUDG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
AND
CUST.FISC_YR = BUDG.YR
AND
CUST.FISC_QTR = BUDG.QTR
WHERE 
CUST.PLN_TO_NBR = '0000300855' 
AND
BUDG.BUD IS NOT NULL
AND
KROG.DOL_SALE IS NULL





GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_NIELSEN_HEB_STORES_NO_POS_L4W_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author	: Abhilash Mogili
-- Create date	: 09/18/2018
-- Modified By	:
-- Modified date:	
-- Description	: Returns the Nielsen,IRI Stores with no Pos in last 4 weeks that have a budget for current Quarter
-- Comments	:
-- =============================================


CREATE VIEW [dbo].[UVW_REX_VLD_RPT_NIELSEN_HEB_STORES_NO_POS_L4W_BUD]
AS

SELECT 
    CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
	  ,CUST.STDLINXSCD
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS SOLD_TO_NBR
	  ,NI.DOL_SALE
	  ,BUDG.BUD
FROM 
(
	   SELECT
	   [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
	  ,STDLINXSCD
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,FISC_YR
	  ,FISC_QTR
	  FROM
	  KNA_SALES.dbo.REX_TDLINX_CUST_HIER AS CUS
	  INNER JOIN
	  KNA_SALES.[dbo].[UVW_REX_PD_DT]  AS DT
	  ON
	  CUS.FISC_YR = DT.CUR_YR
	  AND
	  CUS.FISC_QTR = DT.CUR_QTR
	  WHERE
	  CUS.PLN_TO_NBR NOT IN  ('0000300994','0000300855','0000300850')) CUST
LEFT OUTER JOIN
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO_NBR,CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE FROM KNA_EXTERNAL.UVW_REX_VLD_NIELSEN_HEB_STORES_POS_L4W') AS NI
ON
CUST.SOLD_TO_NBR = NI.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD,SOLD_TO_NBR,BUD.QTR,BUD.YR
FROM [KNA_EXTERNAL].[USER_SALES].[REX_POS_BUDGET] AS BUD WITH (NOLOCK)
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
ON
BUD.YR = DT.CUR_YR
AND
BUD.QTR = DT.CUR_QTR
GROUP BY SOLD_TO_NBR,BUD.QTR,BUD.YR
) AS BUDG 
ON
CUST.SOLD_TO_NBR = BUDG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
AND
CUST.FISC_YR = BUDG.YR
AND
CUST.FISC_QTR = BUDG.QTR
WHERE 
CUST.PLN_TO_NBR NOT IN  ('0000300994','0000300855','0000300850')
--AND
--NI.SOLD_TO_NBR IS NOT NULL
AND
BUDG.BUD IS NOT NULL
AND
NI.DOL_SALE IS NULL

GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_POS_BUD_YAGO]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	02/07/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the POS Budget and Dollar Sale Year Ago for all the Stores 
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_VLD_POS_BUD_YAGO]
AS
SELECT  
Q_TOTAL AS BUD
,CAST(ISNULL(YAGO,0) AS float) AS DOL_SALE_YAGO
,SOLD_TO_NBR
,CASE WHEN CATEGORY = 'BARS' THEN 'WHOLESOME' ELSE CATEGORY END AS CATG,'Q'+CAST(BUDG.QTR AS VARCHAR(1)) AS PD_DESC
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FISC_WK_END_DT <= PD_DT
AND FC.FISC_QTR = BUDG.QTR
)








GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_SHPMNT_CUR_PREV_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	08/16/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the Shipment GSV  for Current and Previous Week Based on Period Date for Snacks and MF
-- =============================================

CREATE VIEW [dbo].[UVW_REX_VLD_RPT_SHPMNT_CUR_PREV_WK]
AS

WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT]  WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F
CROSS JOIN [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_WK AS(
SELECT *,'CUR_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN FROM CUR_DT)
UNION ALL
SELECT *,'PREV_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN = (SELECT RN-1 FROM CUR_DT)
)

SELECT 
  CUST.PLN_TO AS PLN_TO --Plan To Name
  ,CUST.PLN_TO_NBR AS PLN_TO_NBR
  ,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END AS BU
,ISNULL(SUM(CASE WHEN TYP = 'CUR_WK' THEN SHIP.[GSV] END ),0) AS [CUR_WK_GSV]
,ISNULL(SUM(CASE WHEN TYP = 'PREV_WK' THEN SHIP.[GSV] END),0) AS [PREV_WK_GSV]
--,CASE WHEN TYP = 'PREV' THEN CTE_FC_WK.FISC_WK END AS CUR_WK
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
INNER  JOIN 
(
SELECT  PLN_TO,PLN_TO_NBR,FISC_YR,FISC_QTR 
FROM [REX_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY 
PLN_TO,PLN_TO_NBR,FISC_YR,FISC_QTR
) AS CUST 
ON SHIP.[PLN_TO] = CUST.[PLN_TO_NBR] COLLATE Latin1_General_CS_AS
AND
SHIP.FISC_YR = CUST.FISC_YR
INNER JOIN CTE_FC_WK
ON
SHIP.FISC_YR = CTE_FC_WK.FISC_YR
AND
SHIP.FISC_WK = CTE_FC_WK.FISC_WK
AND
CUST.FISC_QTR = CTE_FC_WK.CUR_QTR
WHERE
SHIP.[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
,'Cereal'
,'Toaster Pastries'
)

GROUP BY
	CUST.PLN_TO
  ,CUST.PLN_TO_NBR
    ,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END

GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_SOLD_TO_NBR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 08/31/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Store count of Nielsen,IRI,walmart and Kroger stores when comapred to the Customer Hierarchy
-- Comments		:
-- =============================================



CREATE VIEW [dbo].[UVW_REX_VLD_RPT_SOLD_TO_NBR] AS

--Here we are getting the Nielsen,IRI and kroger Stores and joining with the Customer Hierarchy to see for which stores which are not getting POS
SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
      ,CUST.[SOLD_TO]
      ,CUST.CUST_SOLD_TO_NBR
	  ,NI.SOLD_TO_NBR	  AS SOLD_TO_NBR
FROM
(
SELECT 
       [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR] AS CUST_SOLD_TO_NBR
	  ,FISC_YR
	  ,FISC_QTR
FROM 
dbo.REX_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
INNER JOIN
dbo.UVW_REX_PD_DT AS DT
ON
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
) AS CUST
LEFT OUTER JOIN
  OPENQUERY([MYSQLMEMSQL Prod],
--Here we are making use of the MEMSQL view to get the Nielsen Store level Dollar Sale Data at QTD
'SELECT  SOLD_TO_NBR,PD_DESC,PD_DT
FROM KNA_EXTERNAL.UVW_REX_VLD_SOLD_TO_NBR
GROUP BY SOLD_TO_NBR,PD_DESC,PD_DT
')
 AS NI 
ON
CONCAT('Q',CUST.FISC_QTR) = NI.PD_DESC
AND
CUST.CUST_SOLD_TO_NBR = NI.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
WHERE
CUST.PLN_TO_NBR NOT IN ('0000300994','0000300850')

UNION ALL
--Here we are getting the Walmart Stores and joining with the Customer Hierarchy to see for which stores which are not getting POS
SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
      ,CUST.[SOLD_TO]
      ,CUST.CUST_SOLD_TO_NBR
	  ,WAL.SOLDTO	 AS SOLD_TO_NBR
FROM
(
SELECT 
       [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR] AS CUST_SOLD_TO_NBR
	  ,FISC_YR
	  ,FISC_QTR
FROM 
dbo.REX_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
INNER JOIN
dbo.UVW_REX_PD_DT AS DT
ON
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
AND
CUST.PLN_TO_NBR  ='0000300994'
) AS CUST
LEFT OUTER JOIN
(SELECT YR,PD_DESC,SOLDTO
FROM
[KNA_SALES].[dbo].[UVW_REX_POS_WALMART_KSR]
GROUP BY
YR,PD_DESC,SOLDTO)
 AS WAL

ON
CUST.FISC_YR = WAL.YR
AND
CONCAT('Q',CUST.FISC_QTR) = WAL.PD_DESC
AND
CUST.CUST_SOLD_TO_NBR = WAL.SOLDTO COLLATE Latin1_General_CS_AS

GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_SHIPMENT_GSV_CUR_PREV_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/15/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/22/2018
-- Description		:	Returns the Shipment GSV  for Current and Previous Week on Period Date
-- =============================================




CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_SHIPMENT_GSV_CUR_PREV_WK]
AS


WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT]  WITH (NOLOCK)),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F
CROSS JOIN [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_WK AS(
SELECT *,'CUR_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN FROM CUR_DT)
UNION ALL
SELECT *,'PREV_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN = (SELECT RN-1 FROM CUR_DT)
)

SELECT 
  CUST.PLN_TO AS PLN_TO --Plan To Name
  ,CUST.PLN_TO_NBR AS PLN_TO_NBR
,SUM(CASE WHEN TYP = 'CUR_WK' THEN SHIP.[GSV] END ) AS [CUR_WK_GSV]
,SUM(CASE WHEN TYP = 'PREV_WK' THEN SHIP.[GSV] END) AS [PREV_WK_GSV]
--,CASE WHEN TYP = 'PREV' THEN CTE_FC_WK.FISC_WK END AS CUR_WK
  FROM 
  --Here we are joining the Ship table with Customer Hierarchy on Plant To Number
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
INNER JOIN 
(SELECT  PLN_TO,PLN_TO_NBR FROM [SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
GROUP BY PLN_TO,PLN_TO_NBR) AS CUST 
ON SHIP.[PLN_TO] = CUST.[PLN_TO_NBR] COLLATE Latin1_General_CS_AS
INNER JOIN CTE_FC_WK
ON
SHIP.FISC_YR = CTE_FC_WK.FISC_YR
AND
SHIP.FISC_WK = CTE_FC_WK.FISC_WK
WHERE
SHIP.[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)

GROUP BY
CUST.PLN_TO
  ,CUST.PLN_TO_NBR




GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_WALMART_POS_SALES_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/02/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/19/2018
-- Description		:	Returns the Total walmart POS by week for Current and Previous year based on Period Date
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_WALMART_POS_SALES_WK]
AS


SELECT 
	  WALMART.CATG
	 ,WALMART.BRAND
	  --Total POS_Sales for the Present year
      ,ISNULL(SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	    --Total POS_Sales for the Past year
	  ,ISNULL(SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	  ,WALMART.WK
	 
FROM  
KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WALMART WITH (NOLOCK) 
INNER JOIN
[KG_VIEWS].[KG].[UVW_FISC_CAL] AS FC WITH (NOLOCK) 
ON
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK]
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK) 
WHERE

 FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)
 AND
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)

 GROUP BY WALMART.CATG,WALMART.BRAND,WALMART.WK





GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_WALMART_POS_SALES_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	08/24/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the Total walmart POS by week for Current and Previous year based on Period Date
-- =============================================



CREATE VIEW [dbo].[UVW_REX_VLD_RPT_WALMART_POS_SALES_WK]
AS


SELECT 
	  WALMART.CATG
	 ,WALMART.BRAND
	  ,CASE WHEN WALMART.CATG IN ('Cereal','Toaster Pastries') THEN 'Morning Foods'
	       ELSE 'Snacks' END AS BU
	  --Total POS_Sales for the Present year
      ,ISNULL(SUM(CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES]
	    --Total POS_Sales for the Past year
	  ,ISNULL(SUM(CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.[TOTL_SALES] END),0) AS [TOTL_SALES_YA]
	  ,WALMART.WK

	 
FROM  
KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK) 
INNER JOIN
[KG_VIEWS].[KG].[UVW_FISC_CAL] AS FC WITH (NOLOCK) 
ON
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK]
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK) 
WHERE

 FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)
 AND
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)

 GROUP BY WALMART.CATG,WALMART.BRAND,CASE WHEN WALMART.CATG IN ('Cereal','Toaster Pastries') THEN 'Morning Foods'
	       ELSE 'Snacks' END,WALMART.WK






GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_WALMART_POS_STORES_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/04/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/19/2018
-- Description		:	Returns the Total walmart Stores for Current and Previous Week based on Period Date
-- =============================================




CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_WALMART_POS_STORES_WK]
AS


WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] ),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F
CROSS JOIN [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] ) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_WK_CUR AS(
SELECT *,'CUR_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN FROM CUR_DT)
),
CTE_WM_CUR_WK AS (

SELECT  CUST.SOLD_TO_NBR,CUST.SOLD_TO,CUST.SNAME,FC.FISC_WK,FC.FISC_WK_STRT_DT,FC.FISC_WK_END_DT
FROM
dbo.SNACKS_POS_WALMART_WK AS WAL
INNER JOIN
dbo.SNACKS_TDLINX_CUST_HIER AS CUST
ON
WAL.SOLDTO = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
INNER JOIN
CTE_FC_WK_CUR AS FC
ON
FC.FISC_YR = WAL.YR
 AND
 FC.FISC_WK = WAL.WK
 GROUP BY
 CUST.SOLD_TO_NBR,CUST.SOLD_TO,CUST.SNAME,FC.FISC_WK,FC.FISC_WK_STRT_DT,FC.FISC_WK_END_DT
),
CTE_FC_WK_PREV AS(
SELECT *,'PREV_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN = (SELECT RN-1 FROM CUR_DT)
),
CTE_WM_PREV_WK AS (

SELECT  CUST.SOLD_TO_NBR,CUST.SOLD_TO,CUST.SNAME,FC.FISC_WK,FC.FISC_WK_STRT_DT,FC.FISC_WK_END_DT
FROM
dbo.SNACKS_POS_WALMART_WK AS WAL
INNER JOIN
dbo.SNACKS_TDLINX_CUST_HIER AS CUST
ON
WAL.SOLDTO = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
INNER JOIN
CTE_FC_WK_PREV AS FC
ON
FC.FISC_YR = WAL.YR
 AND
 FC.FISC_WK = WAL.WK
 GROUP BY
 CUST.SOLD_TO_NBR,CUST.SOLD_TO,CUST.SNAME,FC.FISC_WK,FC.FISC_WK_STRT_DT,FC.FISC_WK_END_DT
 )



SELECT 
--CTE1.SOLD_TO_NBR AS SOLD_TO_NBR,CTE1.SOLD_TO as SOLD_TO
 CTE2.SOLD_TO_NBR AS C_SOLD_TO_NBR,CTE2.SOLD_TO as C_SOLD_TO,CTE2.SNAME AS C_SNAME
 FROM
 CTE_WM_PREV_WK AS CTE1
RIGHT OUTER JOIN
 CTE_WM_CUR_WK AS CTE2
 ON
 CTE1.SOLD_TO_NBR = CTE2.SOLD_TO_NBR
 WHERE
 CTE1.SOLD_TO_NBR IS NULL





GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_WALMART_POS_STORES_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	08/27/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the Total walmart Stores for Current and Previous Week based on Period Date
-- =============================================




CREATE  VIEW [dbo].[UVW_REX_VLD_RPT_WALMART_POS_STORES_WK]
AS

WITH 
PD_DT AS (SELECT  PD_DT FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
PD_WK AS (SELECT DATEPART(WEEK,PD_DT) AS WK FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK) ),
FC AS (
SELECT  ROW_NUMBER() OVER(ORDER BY FISC_YR,FISC_WK) as RN,* 
FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] AS F
CROSS JOIN [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
WHERE F.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)),
CUR_DT AS (SELECT RN FROM FC WHERE  FISC_YR IN (SELECT YEAR(PD_DT) FROM [KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)) AND FISC_WK=(SELECT * FROM PD_WK)),
CTE_FC_WK_CUR AS(
SELECT *,'CUR_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN >= (SELECT RN FROM CUR_DT)
),
CTE_WM_CUR_WK AS (

SELECT  
CUST.SOLD_TO_NBR
,CUST.SOLD_TO
,CUST.SNAME
,FC.FISC_WK
,FC.FISC_WK_STRT_DT
,FC.FISC_WK_END_DT
FROM
dbo.REX_POS_WALMART_WK AS WAL WITH (NOLOCK)
INNER JOIN
dbo.REX_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
ON
WAL.SOLDTO = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
WAL.YR = CUST.FISC_YR
INNER JOIN
CTE_FC_WK_CUR AS FC
ON
FC.FISC_YR = WAL.YR
 AND
 FC.FISC_WK = WAL.WK
 AND
 DATEPART(QUARTER,FC.PD_DT) = CUST.FISC_QTR
 GROUP BY
 CUST.SOLD_TO_NBR,CUST.SOLD_TO,CUST.SNAME,FC.FISC_WK,FC.FISC_WK_STRT_DT,FC.FISC_WK_END_DT
),
CTE_FC_WK_PREV AS(
SELECT *,'PREV_WK' AS TYP FROM FC
WHERE FISC_YR IN (YEAR(PD_DT),YEAR(PD_DT)-1) AND RN <= (SELECT RN FROM CUR_DT) AND RN = (SELECT RN-1 FROM CUR_DT)
),
CTE_WM_PREV_WK AS (

SELECT  
CUST.SOLD_TO_NBR
,CUST.SOLD_TO
,CUST.SNAME
,FC.FISC_WK
,FC.FISC_WK_STRT_DT
,FC.FISC_WK_END_DT
FROM
dbo.REX_POS_WALMART_WK AS WAL WITH (NOLOCK)
INNER JOIN
dbo.REX_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
ON
WAL.SOLDTO = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
WAL.YR = CUST.FISC_YR
INNER JOIN
CTE_FC_WK_PREV AS FC
ON
FC.FISC_YR = WAL.YR
 AND
 FC.FISC_WK = WAL.WK
  AND
 DATEPART(QUARTER,FC.PD_DT) = CUST.FISC_QTR
 GROUP BY
 CUST.SOLD_TO_NBR,CUST.SOLD_TO,CUST.SNAME,FC.FISC_WK,FC.FISC_WK_STRT_DT,FC.FISC_WK_END_DT
 )
 SELECT 
--CTE1.SOLD_TO_NBR AS SOLD_TO_NBR,CTE1.SOLD_TO as SOLD_TO
 CTE2.SOLD_TO_NBR AS C_SOLD_TO_NBR
 ,CTE2.SOLD_TO as C_SOLD_TO
 ,CTE2.SNAME AS C_SNAME
 FROM
 CTE_WM_PREV_WK AS CTE1
RIGHT OUTER JOIN
 CTE_WM_CUR_WK AS CTE2
 ON
 CTE1.SOLD_TO_NBR = CTE2.SOLD_TO_NBR
 WHERE
 CTE1.SOLD_TO_NBR IS NULL

GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_WALMART_POS_STORES_YR_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/05/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/19/2018
-- Description		:	Returns the Total Number of Walmart stores by week with  Current and Previous Year
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_WALMART_POS_STORES_YR_WK]
AS


SELECT 
	
	  --Total Count of stores for the Present year
       COUNT( DISTINCT CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.SOLDTO END) AS [STORES]
	
	  --Total Count of Stores for the Past year
     ,COUNT(DISTINCT CASE WHEN WALMART.[YR] = (YEAR(DT.PD_DT)-1) AND WALMART.[WK]=WALMART.[WK] THEN WALMART.SOLDTO END) AS [STORES_YA]
	 ,FC.FISC_WK AS WK
FROM  KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN
SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
ON
WALMART.SOLDTO = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
INNER JOIN
[KG_VIEWS].[KG].[UVW_FISC_CAL] AS FC WITH (NOLOCK)
ON
FC.FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)
AND
FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND
 FC.FISC_YR = WALMART.[YR] AND FC.FISC_WK = WALMART.[WK]

 GROUP BY FC.FISC_WK




GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_WALMART_POS_STORES_YR_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	08/25/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the Total Number of Walmart stores by week for Current Year based  on Period Date
-- =============================================


CREATE VIEW [dbo].[UVW_REX_VLD_RPT_WALMART_POS_STORES_YR_WK]
AS


SELECT  
	  FC.FISC_YR AS YR
	  --Total Count of stores for the Present year
       ,COUNT( DISTINCT CASE WHEN WALMART.[YR] = YEAR(DT.PD_DT) AND WALMART.[WK]=WALMART.[WK]  THEN WALMART.SOLDTO END) AS [STORES]
	 ,FC.FISC_WK AS WK
FROM 
 KNA_SALES.[dbo].[REX_POS_WALMART_WK] AS WALMART WITH (NOLOCK)
INNER JOIN
dbo.REX_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
ON
WALMART.SOLDTO = CUST.SOLD_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
WALMART.YR = CUST.FISC_YR
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
INNER JOIN
[KG_VIEWS].[KG].[UVW_FISC_CAL] AS FC WITH (NOLOCK)
ON
FC.FISC_YR = YEAR(DT.PD_DT)
AND
FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND
 FC.FISC_YR = WALMART.[YR] 
 AND 
 FC.FISC_WK = WALMART.[WK]

 GROUP BY FC.FISC_YR,FC.FISC_WK




GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_WALMART_STORES_NO_POS_L4W_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	02/07/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Walmart Stores with no Pos in last 4 weeks that have a budget for current Quarter
-- Comments			:
-- =============================================

CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_WALMART_STORES_NO_POS_L4W_BUD]
AS
SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
	  ,CUST.STDLINXSCD
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS CUST_SOLD_TO_NBR
	  ,WM.SOLDTO	  AS SOLD_TO_NBR
	  ,WM.DOL_SALE
	  ,BUDG.BUD
FROM 
dbo.SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
LEFT OUTER JOIN
(SELECT SOLDTO,SUM(TOTL_SALES) AS DOL_SALE
FROM
[dbo].[UVW_SNACKS_STORE_PRFM_WALMART_POS]
WHERE
PD_DESC = 'L4W'
GROUP BY
SOLDTO)AS WM
ON
CUST.SOLD_TO_NBR = WM.SOLDTO COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD,SOLD_TO_NBR,BUDG.QTR,BUDG.YR
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FISC_WK_END_DT <= PD_DT
AND 
FC.FISC_QTR = DATEPART(QUARTER,PD_DT)
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY SOLD_TO_NBR,BUDG.QTR,BUDG.YR
) AS BUDG 
ON
CUST.SOLD_TO_NBR = BUDG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
WHERE CUST.PLN_TO_NBR = '0000300994' 
AND
WM.SOLDTO IS NOT NULL
AND
BUDG.BUD IS NOT NULL
AND
WM.DOL_SALE IS NULL




GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_WALMART_STORES_NO_POS_L4W_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	09/18/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Walmart Stores with no Pos in last 4 weeks that have a budget for current Quarter
-- Comments		:
-- =============================================

CREATE VIEW [dbo].[UVW_REX_VLD_RPT_WALMART_STORES_NO_POS_L4W_BUD]
AS

SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
	  ,CUST.STDLINXSCD
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS SOLD_TO_NBR
	  ,WM.DOL_SALE
	  ,BUDG.BUD
	
FROM 
(
	   SELECT
	   [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
	  ,STDLINXSCD
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,FISC_YR
	  ,FISC_QTR
	  FROM
	  KNA_SALES.dbo.REX_TDLINX_CUST_HIER AS CUS WITH (NOLOCK)
	  INNER JOIN
	  KNA_SALES.[dbo].[UVW_REX_PD_DT]  AS DT WITH (NOLOCK)
	  ON
	  CUS.FISC_YR = DT.CUR_YR
	  AND
	  CUS.FISC_QTR = DT.CUR_QTR
	  WHERE
	  CUS.PLN_TO_NBR = '0000300994') CUST
LEFT OUTER JOIN
(SELECT SOLDTO,SUM(TOTL_SALES) AS DOL_SALE,PD_DT
FROM
[dbo].[UVW_REX_WALMART_STORE_PRFM_POS]
WHERE
PD_DESC = 'L4W'
GROUP BY
SOLDTO,PD_DT)AS WM
ON
CUST.SOLD_TO_NBR = WM.SOLDTO COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD
,SOLD_TO_NBR
,BUD.QTR
,BUD.YR
FROM [KNA_EXTERNAL].[USER_SALES].[REX_POS_BUDGET] AS BUD WITH (NOLOCK)
INNER JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
ON
BUD.YR = DT.CUR_YR
AND
BUD.QTR = DT.CUR_QTR
GROUP BY SOLD_TO_NBR,BUD.QTR,BUD.YR
) AS BUDG 
ON
CUST.SOLD_TO_NBR = BUDG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
AND
CUST.FISC_YR = BUDG.YR
AND
CUST.FISC_QTR = BUDG.QTR
WHERE 
CUST.PLN_TO_NBR = '0000300994' 
AND
BUDG.BUD IS NOT NULL
AND
WM.DOL_SALE IS NULL






GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_WM_QTR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	10/30/2017
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the POS Sales for all Quarters Q1,Q2,Q3,Q4 and QTD for the Present and Past Year based on the PERIOD DATE
-- =============================================




CREATE VIEW [dbo].[UVW_SNACKS_VLD_WM_QTR]
AS
SELECT
		   WM.SOLDTO
		  ,WM.[CATG]
         ,SUM(CASE WHEN WM.[YR] = YEAR(DT.PD_DT)   AND WM.[WK]=WM.[WK]    THEN WM.[TOTL_SALES] END) AS [TOTL_SALES]
		 ,SUM(CASE WHEN WM.[YR] = YEAR(DT.PD_DT)-1 AND WM.[WK]=WM.[WK]  THEN WM.[TOTL_SALES] END)   AS [TOTL_SALES_YA]
         ,'Q'+CAST((FISC.FISC_QTR) AS VARCHAR(1)) as PD_DESC
		
FROM
       KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WM WITH (NOLOCK)
	   CROSS JOIN [KNA_SALES].dbo.UVW_SNACKS_PD_DT AS DT
	   INNER JOIN 
	   KG_VIEWS.dbo.[UVW_FISC_CAL] AS FISC
		ON 
		FISC.FISC_YR = YEAR(DT.PD_DT)
		AND
		FISC.FISC_WK = WM.WK
WHERE
EXISTS 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC
 WHERE
 FISC_YR IN (YEAR(DT.PD_DT),YEAR(DT.PD_DT)-1)
 AND
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT) 
 AND
 FC.FISC_YR = WM.[YR] AND FC.FISC_WK = WM.[WK])

GROUP BY 
		  WM.SOLDTO
		  ,WM.[CATG]
		  ,'Q'+CAST((FISC.FISC_QTR) AS VARCHAR(1))
		 








GO
/****** Object:  View [dbo].[UVW_REX_VLD_SHIPMNT_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 08/24/2018
-- Description		: Get the Shipment Sales and Budget  for the present quarter for all the Plan_To's/retailers
-- Modified Date	: 
-- Comments		: 
-- =============================================


CREATE VIEW [dbo].[UVW_REX_VLD_SHIPMNT_BUD]
as

WITH SHIPMNT_QTD AS
(
SELECT
PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO
,PD_DT
,PD_DESC
,SUM(GSV) AS GSV
,BU
,FISC_YR
FROM
(
SELECT
SHIP.PLN_TO
,DT.PD_DT
,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS PD_DESC
--Current Year GSV
,SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = SHIP.[FISC_WK] THEN SHIP.[GSV] END) AS [GSV]
,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END AS BU
,SHIP.FISC_YR       
FROM 
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
EXISTS 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FISC WITH (NOLOCK)
 WHERE
 FISC_YR = YEAR(DT.PD_DT)
 AND
 FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
 AND
 FISC.FISC_WK_END_DT <= DT.PD_DT
 AND
 FISC.FISC_YR = SHIP.FISC_YR 
 AND 
 FISC.FISC_WK = SHIP.FISC_WK 
 )
 AND
 PROD_HIER_CATEGORY_DESC IN
(
'Bars'
,'Cereal'
,'Cookies'
,'Crackers'
,'Fruit Snacks'
,'Salty Snacks'
,'Toaster Pastries'
--,'Ingredients'
)
 GROUP BY 
 SHIP.PLN_TO
 ,DT.PD_DT
 ,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
,CASE WHEN SHIP.PROD_HIER_CATEGORY_DESC IN ('Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks' END
 ,SHIP.FISC_YR

 UNION ALL

SELECT 
TD_CH.PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO
,DT.PD_DT
,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS [PD_DESC] -- Period Description
,0 AS GSV
,CASE WHEN CATG.C  IN ('Cold Cereal','Toaster Pastries') THEN 'Morning Foods' ELSE 'Snacks'
 END AS BU
,YEAR(DT.PD_DT) AS FISC_YR
 FROM [dbo].[REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
INNER JOIN
 [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
 ON 
 TD_CH.FISC_YR = YEAR(DT.PD_DT)
 AND
 TD_CH.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
 CROSS JOIN
 (
 SELECT 'Wholesome' AS C UNION ALL
 SELECT 'Cookies' AS C UNION ALL
 SELECT 'Crackers' AS C UNION ALL
 SELECT 'Salty Snacks' AS C UNION ALL
 SELECT 'Fruit Snacks' AS C UNION ALL
 SELECT 'On-The-Go' AS C UNION ALL
 SELECT 'Cold Cereal' AS C UNION ALL
 SELECT 'Toaster Pastries' AS C
 ) AS CATG
 GROUP BY
TD_CH.PLN_TO_NBR,DT.PD_DT,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
,CASE WHEN CATG.C  IN ('Cold Cereal','Toaster Pastries') THEN 'Morning Foods'
           ELSE 'Snacks'
 END
,YEAR(DT.PD_DT)

) AS SHIP
GROUP BY
PLN_TO
,PD_DT
,PD_DESC
,BU
,FISC_YR
 ),
 CUST AS
 (
 SELECT  PLN_TO, PLN_TO_NBR,FISC_YR,FISC_QTR 
 FROM dbo.REX_TDLINX_CUST_HIER WITH (NOLOCK)
  GROUP BY PLN_TO,PLN_TO_NBR,FISC_YR,FISC_QTR 
 ),
 BUDG AS
 (
 
SELECT PLAN_TO_NBR,QTR,SUM(BUDGET_GSV) AS BUDGET_GSV,YR
,CASE WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'Morning Foods'
ELSE 'Snacks' END AS BU
FROM 
(
     SELECT  
     BUDGET_GSV,PLAN_TO_NBR,QTR,YR,CATEGORY 
	 FROM [KNA_EXTERNAL].[USER_SALES].[REX_GSV_BUDGET] WITH (NOLOCK)
	 GROUP BY
	 BUDGET_GSV,PLAN_TO_NBR,QTR,YR,CATEGORY ) AS A
	 WHERE
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] WITH (NOLOCK)
WHERE
FISC_YR = YEAR(PD_DT)
AND
FISC_QTR = DATEPART(QUARTER,PD_DT)
and
FC.FISC_YR = A.YR
AND
FISC_WK_END_DT <= PD_DT

AND FC.FISC_QTR = A.QTR
)
	GROUP BY PLAN_TO_NBR,QTR,YR,CASE WHEN CATEGORY IN ('COLD CEREAL','TOASTER PASTRIES') THEN 'Morning Foods'
ELSE 'Snacks' END
	)


	SELECT 
	CUST.PLN_TO AS PLN_TO 
	,CUST.PLN_TO_NBR AS PLN_TO_NBR
	,SHIP.BU
	--Current Year GSV
	,CUST.FISC_YR
	,CUST.FISC_QTR
	,SHIP.GSV AS GSV
	,ISNULL(BUDG.BUDGET_GSV,0)  AS BUD
FROM 
 SHIPMNT_QTD as SHIP
	INNER JOIN
 CUST
ON 
CONVERT(DECIMAL(10,0),SHIP.PLN_TO) = CUST.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
AND
YEAR(SHIP.PD_DT) = CUST.FISC_YR
AND
DATEPART(QUARTER,PD_DT) = CUST.FISC_QTR
LEFT OUTER JOIN
 BUDG 
ON 
CONVERT(DECIMAL(10,0),SHIP.[PLN_TO]) = BUDG.[PLAN_TO_NBR]
AND
SHIP.BU = BUDG.BU
AND
YEAR(SHIP.PD_DT) = BUDG.YR
AND
DATEPART(QUARTER,SHIP.PD_DT) = BUDG.QTR

GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_STORES_QTR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[UVW_SNACKS_RPT_STORES_QTR]
AS
SELECT        CH.RGN, CH.LST_LVL_CUST_NBR,Q.SOLD_TO_NBR as SOLDTO, CH.RGN_NBR, CH.ZN, CH.ZN_NBR, CH.TERR, CH.TERR_NBR, CH.PLN_TO, CH.PLN_TO_NBR, CH.CHN, CH.CHN_NBR, CH.SOLD_TO, CH.SOLD_TO_NBR, CH.STDLINXSCD, Q.CATG, 
                         CASE WHEN Q.PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) THEN 'QTD' ELSE Q.PD_DESC END AS PD_DESC, Q.DOL_SALE, Q.BUD, Q.DOL_SALE_YA
FROM            dbo.SNACKS_TDLINX_CUST_HIER AS CH WITH (NOLOCK)
                 INNER JOIN
                dbo.SNACKS_RPT_STORES_QTR AS Q  WITH (NOLOCK)
				ON CH.LST_LVL_CUST_NBR COLLATE SQL_Latin1_General_CP1_CI_AS = Q.SOLD_TO_NBR
				CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
WHERE Q.TYP = YEAR(DT.PD_DT) AND  PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
UNION ALL
SELECT        CH.RGN, CH.LST_LVL_CUST_NBR,Q.SOLD_TO_NBR as SOLDTO, CH.RGN_NBR, CH.ZN, CH.ZN_NBR, CH.TERR, CH.TERR_NBR, CH.PLN_TO, CH.PLN_TO_NBR, CH.CHN, CH.CHN_NBR, CH.SOLD_TO, CH.SOLD_TO_NBR, CH.STDLINXSCD, Q.CATG, 
                         Q.PD_DESC, Q.DOL_SALE, Q.BUD, Q.DOL_SALE_YA
FROM            dbo.SNACKS_TDLINX_CUST_HIER AS CH WITH (NOLOCK) INNER JOIN
                         dbo.SNACKS_RPT_STORES_QTR AS Q ON CH.LST_LVL_CUST_NBR COLLATE SQL_Latin1_General_CP1_CI_AS = Q.SOLD_TO_NBR
			CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE Q.TYP = YEAR(DT.PD_DT)-1 AND  PD_DESC = 'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))







GO
/****** Object:  View [dbo].[UVW_REX_PUBLIX_ACV]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 09/17/2018
-- Modified By		:  
-- Modified date	:
-- Description		: Returns the Min,Max and Mid Range ACV for the Publix Stores
-- =============================================



CREATE VIEW [dbo].[UVW_REX_PUBLIX_ACV]
AS
SELECT 
CUST.FISC_YR,
CUST.FISC_QTR,
CUST.CUST_TEAM,
CUST.CUST_TEAM_NBR,
CUST.STDLINXSCD,
CUST.SOLD_TO_NBR,
CUST.SOLD_TO,
CUST.SNO,
CUST.STR,
CUST.CITY,
CUST.SST,
CUST.PSTL_CODE,
CUST.CHN_NBR,
CUST.CHN,
CUST.PLN_TO_NBR,
CUST.PLN_TO,
CUST.TERR_NBR,
CUST.TERR,
CUST.ZN_NBR,
CUST.ZN,
CUST.RGN_NBR,
CUST.RGN,
KELLG.SANNVOLCD,
REPLACE(KELLG.SOWNNM,'Publix Super Mkts Inc/','') AS SOWNNM,
SANN.MIN,
SANN.MAX,
(SANN.MIN + SANN.MAX)/2 AS MID
FROM [KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS CUST
INNER JOIN
KNA_SALES.dbo.UVW_REX_PD_DT AS PD
ON
CUST.FISC_YR = PD.CUR_YR
AND
CUST.FISC_QTR = PD.CUR_QTR
INNER JOIN
[KG_VIEWS].[KNA].[UVW_TDLINX_KELLGSTR] AS KELLG
ON 
CUST.STDLINXSCD = KELLG.STDLINXSCD
INNER JOIN
KNA_EXTERNAL.AOD.TDLINX_SANNVOLCD AS SANN
ON
KELLG.SANNVOLCD = SANN.CODE
WHERE
CUST.PLN_TO_NBR = '0000300850'

GO
/****** Object:  View [dbo].[UVW_SNACKS_GSV_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	07/14/2017
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  GSV Budget for  Snacks Plan_To's for all the Quarters(Q1,Q2,Q3,Q4) and YTD for Snacks Categories
-- =============================================



CREATE VIEW  [dbo].[UVW_SNACKS_GSV_BUD]
AS

--GSV Budget for all the Quarters based on the Fisc Calendar for all Categories
SELECT  
BUDGET_GSV AS BUD
,PLAN_TO_NBR AS PLN_TO_NBR
--,CASE WHEN CATEGORY = 'WHOLESOME' THEN 'Bars' ELSE CATEGORY END AS CATG
,CATEGORY AS CATG
,'Q'+CAST(BUDG.QTR AS VARCHAR(1)) AS PD_DESC
,YR
FROM [KG_SAS].[USER_SALES].[SNACKS_GSV_BUDGET] AS BUDG WITH (NOLOCK)
WHERE
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FC.FISC_YR = BUDG.YR
AND
--FISC_WK_STRT_DT >= DATEADD(yy, DATEDIFF(yy, 0, PD_DT), 0)
--AND
FISC_WK_END_DT <= PD_DT
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY
BUDGET_GSV
,PLAN_TO_NBR
,CATEGORY
,'Q'+CAST(BUDG.QTR AS VARCHAR(1))
,YR

UNION ALL

--GSV Budget for YTD based on the Fisc Calendar for all Categories

SELECT   SUM(BUDGET_GSV) AS BUD,PLAN_TO_NBR AS PLN_TO_NBR, CATEGORY AS CATG,'YTD' AS PD_DESC,YR
FROM
(
SELECT  
BUDGET_GSV  AS BUDGET_GSV
,PLAN_TO_NBR
,CATEGORY
,QTR
,YR
--,CASE WHEN CATEGORY = 'WHOLESOME' THEN 'Bars' ELSE CATEGORY END AS CATEGORY,QTR
FROM [KG_SAS].[USER_SALES].[SNACKS_GSV_BUDGET] AS BUDG WITH (NOLOCK)
GROUP BY
BUDGET_GSV
,PLAN_TO_NBR
,CATEGORY
,QTR
,YR
) AS A

WHERE
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] WITH (NOLOCK)
WHERE
FISC_YR = YEAR(PD_DT)
AND
FISC_YR = A.YR
--FISC_WK_STRT_DT >= DATEADD(yy, DATEDIFF(yy, 0, PD_DT), 0)
AND
FISC_WK_END_DT <= PD_DT

AND FC.FISC_QTR = A.QTR
)

GROUP BY
PLAN_TO_NBR, CATEGORY,YR








GO
/****** Object:  View [dbo].[UVW_SNACKS_GSV_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	07/14/2017
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  Gross Sale value(GSV) for Snacks Plan_To's for all the Quarters(Q1,Q2,Q3,Q4) and YTD for Snacks Categories
-- =============================================




CREATE VIEW [dbo].[UVW_SNACKS_GSV_KSR]
AS
-- Gross Sale Value for all Quarters Q1,Q2,Q3 and Q4
SELECT

SHIP.PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO
,CASE 
	    --WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' AND  PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' OR  PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE SHIP.PROD_HIER_CATEGORY_DESC 
        END AS PROD_HIER_CATEGORY_DESC
,DT.PD_DT

,'Q'+CAST(FISC.FISC_QTR AS VARCHAR(1)) AS [PD_DESC] -- Period Description
--Current Year GSV
,SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = FISC.[FISC_WK] THEN SHIP.[GSV] END) AS [DOL_SALE]
--Budget
,SHIP.FISC_YR

FROM 
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP  WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
INNER JOIN 

	   KG_VIEWS.dbo.[UVW_FISC_CAL] FISC
		ON 
		FISC.FISC_YR = YEAR(DT.PD_DT)
		AND
		FISC.FISC_WK = SHIP.FISC_WK
		

WHERE
SHIP.[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
AND
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE
 FISC_YR = YEAR(DT.PD_DT) AND  
 
FC.FISC_WK_END_DT <= DT.PD_DT AND
FC.FISC_YR = SHIP.FISC_YR AND FC.FISC_WK = SHIP.FISC_WK 

)
GROUP BY 
SHIP.PLN_TO
,SHIP.PROD_HIER_CATEGORY_DESC

,'Q'+CAST(FISC.FISC_QTR AS VARCHAR(1))
,SHIP.FISC_YR
,[PROD_HIER_BRAND_DESC]
,DT.PD_DT


UNION ALL

--Gross Sales Value for  Year To Date
SELECT

SHIP.PLN_TO
,CASE 
	    --WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' AND  PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN SHIP.PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (SHIP.PROD_HIER_CATEGORY_DESC = 'Cookies' OR  PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE SHIP.PROD_HIER_CATEGORY_DESC 
        END AS PROD_HIER_CATEGORY_DESC
		,DT.PD_DT
,'YTD' AS [PD_DESC] -- Period Description
--Current Year GSV
,SUM(CASE WHEN SHIP.[FISC_YR] = YEAR(DT.PD_DT) AND SHIP.[FISC_WK] = SHIP.[FISC_WK] THEN SHIP.[GSV] END) AS [DOL_SALE]
--Budget
,SHIP.FISC_YR

FROM 
[KG_VIEWS].[KNA].[UVW_SD57_SHIPMNT_PLN_TO_SUMRY] AS SHIP WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
SHIp.[PROD_HIER_CATEGORY_DESC]
IN
('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
AND
EXISTS
(
SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
 WHERE 
 FISC_YR = YEAR(DT.PD_DT)
  AND   
FC.FISC_WK_END_DT <= DT.PD_DT
AND
FC.FISC_YR = SHIP.FISC_YR AND FC.FISC_WK = SHIP.FISC_WK 

)
GROUP BY 
SHIP.PLN_TO
,SHIP.PROD_HIER_CATEGORY_DESC
,DT.PD_DT
,SHIP.FISC_YR
,[PROD_HIER_BRAND_DESC]

UNION ALL

SELECT 
TD_CH.PLN_TO_NBR AS PLN_TO
,CATG.C AS  PROD_HIER_CATEGORY_DESC
,DT.PD_DT
,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS [PD_DESC] -- Period Description
,0 AS [DOL_SALE]
,YEAR(DT.PD_DT) AS FISC_YR
 FROM [dbo].[SNACKS_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
  CROSS JOIN
 [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
 CROSS JOIN
 (SELECT 'Cookies' AS C UNION ALL
 SELECT 'Crackers' AS C UNION ALL
 SELECT 'Salty Snacks' AS C UNION ALL
 SELECT 'Fruit Snacks' AS C UNION ALL
 SELECT 'On-The-Go' AS C UNION ALL
 SELECT 'Bars' AS C ) AS CATG
 GROUP BY
 TD_CH.PLN_TO_NBR
,CATG.C
,DT.PD_DT
,'Q'+CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
,YEAR(DT.PD_DT)

 UNION ALL

 SELECT 
TD_CH.PLN_TO_NBR AS PLN_TO
,CATG.C AS  PROD_HIER_CATEGORY_DESC
,DT.PD_DT
,'YTD' AS [PD_DESC] 
,0 AS [DOL_SALE]
,YEAR(DT.PD_DT) AS FISC_YR
 FROM [dbo].[SNACKS_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
  CROSS JOIN
 [KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
 CROSS JOIN
 (SELECT 'Cookies' AS C UNION ALL
 SELECT 'Crackers' AS C UNION ALL
 SELECT 'Salty Snacks' AS C UNION ALL
 SELECT 'Fruit Snacks' AS C UNION ALL
 SELECT 'On-The-Go' AS C UNION ALL
 SELECT 'Bars' AS C ) AS CATG
 GROUP BY
 TD_CH.PLN_TO_NBR
,CATG.C
,DT.PD_DT
,YEAR(DT.PD_DT)







GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_GSV_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_SNACKS_VLD_GSV_BUD]
AS
SELECT
 TD_CH.PLN_TO --Plan To Name
,SHIP.PLN_TO AS PLN_TO_NBR
,SHIP.[PD_DESC] -- Period Description
--Current Year GSV
,SUM([DOL_SALE]) AS [DOL_SALE]
--Budget
,ISNULL(SUM(BUDG.BUD),0) AS BUD
FROM 
[KNA_SALES].[dbo].[UVW_SNACKS_GSV_KSR] AS SHIP WITH (NOLOCK)
INNER JOIN 
(SELECT 
 PLN_TO,PLN_TO_NBR 
 FROM [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER]WITH (NOLOCK)
 GROUP BY
  PLN_TO,PLN_TO_NBR ) AS TD_CH
--Here we are joining the Ship table with Customer Hierarchy on Plant To Number
ON SHIP.[PLN_TO] = TD_CH.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
LEFT OUTER JOIN 
[KNA_SALES].[dbo].[UVW_SNACKS_GSV_BUD]  as  BUDG  
--Here we are joining with the GSV_Budget on Plan to Number,Category
ON CONVERT(DECIMAL(10,0),SHIP.[PLN_TO]) = BUDG.[PLN_TO_NBR] AND UPPER(PROD_HIER_CATEGORY_DESC) = BUDG.CATG
AND
SHIP.PD_DESC = BUDG.PD_DESC
WHERE
SHIP.PD_DESC = 'Q'+CAST(DATEPART(QUARTER,SHIP.PD_DT) AS VARCHAR(1))



GROUP BY 
TD_CH.PLN_TO,
SHIP.PLN_TO,
SHIP.PD_DESC



GO
/****** Object:  View [dbo].[UVW_REX_STORE_PRFM_SHPMNT_FISC_CAL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author		:	Abhilash Mogili
-- Create date	:	04/20/2018
-- Modified By	:  
-- Modified date:	
-- Description	: To get the Customer Hierarchy Details along with the BU,Category,Brand Details for the Different Vendors(Nielsen,Orchestro,HEB) for shipments
-- =============================================


CREATE VIEW [dbo].[UVW_REX_STORE_PRFM_SHPMNT_FISC_CAL]
AS

with PROD AS
(
 SELECT 
 CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END AS CATG
  ,[PROD_HIER_BRAND_DESC] AS BRAND 
  FROM dbo.REX_UPC_PKG_PROD_HIER
  WHERE
  PROD_HIER_CATEGORY_DESC  IN 
( 
'Crackers'
,'Cookies'
,'Cereal'
,'Bars'
,'Fruit Snacks'
,'Salty Snacks'
,'Toaster Pastries')
GROUP BY
 CASE 
        WHEN PROD_HIER_CATEGORY_DESC = 'Cereal' THEN 'Cold Cereal'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Bars' THEN 'Wholesome'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Cookies' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Cookies'
	    WHEN PROD_HIER_CATEGORY_DESC = 'Crackers' AND PROD_HIER_BRAND_DESC NOT LIKE '%OTG' THEN 'Crackers'
	    WHEN (PROD_HIER_CATEGORY_DESC = 'Cookies' OR PROD_HIER_CATEGORY_DESC = 'Crackers') AND PROD_HIER_BRAND_DESC  LIKE '%OTG' THEN 'On-The-Go'
	    ELSE PROD_HIER_CATEGORY_DESC 
        END
  ,[PROD_HIER_BRAND_DESC]
) 


	   SELECT
	   [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,CONCAT(SOLD_TO,'-',SOLD_TO_NBR) as STORE
      ,[STDLINXSCD]
      ,[SNAME]
      ,[STR]
      ,[CITY]
      ,[SST]
      ,[PSTL_CODE]
      ,[SNO]
      ,[PREV_ACCT_NBR]
      ,'KELLOGG' AS [VENDOR]
      ,'' AS [BU]
      ,[CATG]
      ,[BRAND]
	  ,'SHP' AS TYP
      ,'KELLOGG CORPORATION' AS [CORP]
      ,'L4W' AS [FISC_WK_STRT]
      ,'L4W' AS [FISC_WK]
       ,0 AS [PREV_TOTL_SALES]
      ,0 AS [PREV_UNITS]
      ,0 AS [POS_DOL_SALE]
      ,0 AS [POS_DOL_SALE_YA]
      ,0 AS [POS_DOL_SHR]
      ,0 AS [POS_DOL_SHR_YA]
      ,0 AS [POS_UNITS]
      ,0 AS [POS_UNITS_YA]
  FROM 
  [KNA_SALES].[dbo].REX_TDLINX_CUST_HIER AS CUST
  CROSS JOIN
  PROD
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
WHERE
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)

UNION ALL

SELECT
	 [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,CONCAT(SOLD_TO,'-',SOLD_TO_NBR) as STORE
      ,[STDLINXSCD]
      ,[SNAME]
      ,[STR]
      ,[CITY]
      ,[SST]
      ,[PSTL_CODE]
      ,[SNO]
      ,[PREV_ACCT_NBR]
      ,'KELLOGG' AS [VENDOR]
      ,'' AS [BU]
      ,[CATG]
      ,[BRAND]
	  ,'SHP' AS TYP
      ,'KELLOGG CORPORATION' AS [CORP]
      ,'L13W' AS [FISC_WK_STRT]
      ,'L13W' AS [FISC_WK]
       ,0 AS [PREV_TOTL_SALES]
      ,0 AS [PREV_UNITS]
      ,0 AS [POS_DOL_SALE]
      ,0 AS [POS_DOL_SALE_YA]
      ,0 AS [POS_DOL_SHR]
      ,0 AS [POS_DOL_SHR_YA]
      ,0 AS [POS_UNITS]
      ,0 AS [POS_UNITS_YA]
  FROM 
  [KNA_SALES].[dbo].REX_TDLINX_CUST_HIER AS CUST
  CROSS JOIN
 PROD
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
WHERE
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)

UNION ALL

SELECT
	 [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,CONCAT(SOLD_TO,'-',SOLD_TO_NBR) as STORE
      ,[STDLINXSCD]
      ,[SNAME]
      ,[STR]
      ,[CITY]
      ,[SST]
      ,[PSTL_CODE]
      ,[SNO]
      ,[PREV_ACCT_NBR]
      ,'KELLOGG' AS [VENDOR]
      ,'' AS [BU]
      ,[CATG]
      ,[BRAND]
	  ,'SHP' AS TYP
      ,'KELLOGG CORPORATION' AS [CORP]
      ,'YTD' AS [FISC_WK_STRT]
      ,'YTD' AS [FISC_WK]
       ,0 AS [PREV_TOTL_SALES]
      ,0 AS [PREV_UNITS]
      ,0 AS [POS_DOL_SALE]
      ,0 AS [POS_DOL_SALE_YA]
      ,0 AS [POS_DOL_SHR]
      ,0 AS [POS_DOL_SHR_YA]
      ,0 AS [POS_UNITS]
      ,0 AS [POS_UNITS_YA]
  FROM 
  [KNA_SALES].[dbo].REX_TDLINX_CUST_HIER AS CUST
  CROSS JOIN
  PROD
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
WHERE
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)

UNION ALL

SELECT DISTINCT
       [RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,'' AS [SOLD_TO]
      ,'' AS [SOLD_TO_NBR]
	  ,'' AS STORE
      ,'' AS [STDLINXSCD]
      ,'' AS [SNAME]
	  ,'' AS [STR]
	  ,'' AS CITY
	  ,'' AS SST
	  ,'' AS PSTL_CODE
	   ,'' AS [SNO]
      ,'' AS [PREV_ACCT_NBR]
      ,'' AS [VENDOR]
      ,'' AS [BU]
      ,'' AS [CATG]
      ,'' AS [BRAND]
	  ,'POS' AS TYP
      ,'' AS [CORP]
	  ,'' AS FISC_WK_STRT
	   ,'' AS [FISC_WK]
      ,0 AS [PREV_TOTL_SALES]
      ,0 AS [PREV_UNITS]
      ,0 AS [POS_DOL_SALE]
      ,0 AS [POS_DOL_SALE_YA]
      ,0 AS [POS_DOL_SHR]
      ,0 AS [POS_DOL_SHR_YA]
      ,0 AS [POS_UNITS]
      ,0 AS [POS_UNITS_YA]
  FROM [KNA_SALES].[dbo].REX_TDLINX_CUST_HIER aS CUST WITH(NOLOCK)
 CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT
WHERE
CUST.FISC_YR = YEAR(DT.PD_DT)
AND
CUST.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)


GO
/****** Object:  View [dbo].[UVW_REX_RPT_PUBLIX_POS_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		: Abhilash Mogili
-- Create date	: 09/18/2018
-- Modified By	: Vikram Ganti
-- Modified date: 10/01/2018
-- Description	: Returns the  Dollar Sale for the Publix Stores based on the Factor File for all Quarters
-- =============================================



CREATE VIEW [dbo].[UVW_REX_RPT_PUBLIX_POS_KSR]
AS 


with PUBLIX_TOTL_STORE_ACV
as
(
-- Min and Max (Mid Range)
SELECT 
REPLACE(KELLG.SOWNNM,'Publix Super Mkts Inc/','') AS SOWNNM,
SANN.MIN,
SANN.MAX,
(SANN.MAX + SANN.MIN)/2 AS MID,
COUNT(SOLD_TO_NBR) AS STORES,
(SANN.MAX + SANN.MIN)/2 * COUNT(SOLD_TO_NBR) as TOTL_STORE_ACV
,TOTL_CNT = SUM((SANN.MAX + SANN.MIN)/2 * COUNT(SOLD_TO_NBR)) OVER (PARTITION BY SOWNNM)
FROM [KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS CUST
INNER JOIN
KNA_SALES.dbo.UVW_REX_PD_DT AS PD
ON
CUST.FISC_YR = PD.CUR_YR
AND
CUST.FISC_QTR = PD.CUR_QTR
INNER JOIN
[KG_VIEWS].[KNA].[UVW_TDLINX_KELLGSTR] AS KELLG
ON 
CUST.STDLINXSCD = KELLG.STDLINXSCD
INNER JOIN
KNA_EXTERNAL.AOD.TDLINX_SANNVOLCD AS SANN
ON
KELLG.SANNVOLCD = SANN.CODE
WHERE
CUST.PLN_TO_NBR = '0000300850'
GROUP BY
KELLG.SOWNNM,
REPLACE(KELLG.SOWNNM,'Publix Super Mkts Inc/',''),
SANN.MIN,
SANN.MAX
),
STORE_MIX_PCT AS
(
SELECT 
SOWNNM
,MID
,TOTL_STORE_ACV
,STORES
,TOTL_CNT
,CAST (MID as DECIMAL(18,3))/CAST (TOTL_CNT as DECIMAL(18,3)) AS PCT 
FROM
 PUBLIX_TOTL_STORE_ACV
)
,PUBLIX_DIV AS
(
SELECT 
[(All Markets)] AS MKT
,CONVERT(VARCHAR(10),REPLACE(REPLACE([(All Markets)],'Publix ',''),' TA','')) AS DIV
,CASE WHEN [(KEL_CATEGORY)]		  = 'COOKIE CORE'					THEN 'Cookies' 
			WHEN [(KEL_CATEGORY)] = 'CRACKER CORE'					THEN 'Crackers' 
			WHEN [(KEL_CATEGORY)] = 'CORE COOKIE CRACKER'			THEN 'On-The-Go' 
			WHEN [(KEL_CATEGORY)] = 'WHOLESOME SNACKS'				THEN 'Wholesome' 
			WHEN [(KEL_CATEGORY)] = 'SALTY SNACKS'					THEN 'Salty Snacks' 
			WHEN [(KEL_CATEGORY)] = 'FRUIT FLAVORED SNACKS'			THEN 'Fruit Snacks' 
			WHEN [(KEL_CATEGORY)] = 'COLD CEREAL'					THEN 'Cold Cereal'
			WHEN [(KEL_CATEGORY)] = 'TOASTER PASTRY'				THEN 'Toaster Pastries'

			END AS CATG
,[(All Periods)] AS PD
,SUM([($)]) AS DOL
FROM 
 KNA_EXTERNAL.AOD.REX_PUBLIX_DIV_POS
WHERE
LTRIM(RTRIM([(KEL_CORPORATE)])) = 'KELLOGG CORPORATION'
AND
LTRIM(RTRIM([(KEL_BRAND)])) != ''
AND
LTRIM(RTRIM([(All Periods)])) LIKE '%QTD%'

GROUP BY
[(All Markets)]
,CASE WHEN [(KEL_CATEGORY)] = 'COOKIE CORE'							THEN 'Cookies' 
			WHEN [(KEL_CATEGORY)] = 'CRACKER CORE'					THEN 'Crackers' 
			WHEN [(KEL_CATEGORY)] = 'CORE COOKIE CRACKER'			THEN 'On-The-Go' 
			WHEN [(KEL_CATEGORY)] = 'WHOLESOME SNACKS'				THEN 'Wholesome' 
			WHEN [(KEL_CATEGORY)] = 'SALTY SNACKS'					THEN 'Salty Snacks' 
			WHEN [(KEL_CATEGORY)] = 'FRUIT FLAVORED SNACKS'			THEN 'Fruit Snacks' 
			WHEN [(KEL_CATEGORY)] = 'COLD CEREAL'					THEN 'Cold Cereal'
			WHEN [(KEL_CATEGORY)] = 'TOASTER PASTRY'				THEN 'Toaster Pastries'

			END
,[(All Periods)]
),

FACT AS
(
SELECT 
 ST.SOWNNM
 ,ST.STORES
,ST.MID
,ST.TOTL_STORE_ACV
,ST.PCT
,ST.PCT * div.DOL as VAL_PER_STORE
,ST.TOTL_CNT
,DIV.DIV
,DIV.CATG
,DIV.PD
,DIV.DOL

FROM
STORE_MIX_PCT AS ST
INNER JOIN
PUBLIX_DIV AS DIV
ON
ST.SOWNNM = DIV.DIV

)
,
FACT_STORE AS
(
SELECT SOWNNM,STORES,MID,TOTL_STORE_ACV, PCT, VAL_PER_STORE,  STORES *  VAL_PER_STORE AS TOTL_VAL_PER_STORE, TOTL_CNT, DIV, CATG, PD, DOL

,CAST(TOTL_STORE_ACV AS DECIMAL(18,3))/CAST(TOTL_CNT AS decimal(18,3))  AS STORE_DIST_PCT
,(CAST(TOTL_STORE_ACV AS DECIMAL(18,3))/CAST(TOTL_CNT AS decimal(18,3)) ) / STORES  AS STORE_LVL_FACTOR


FROM FACT
)




SELECT 
ACV.FISC_YR
,ACV.FISC_QTR
,CONCAT('Q',ACV.FISC_QTR) AS PD_DESC
,CASE
     WHEN ACV.CUST_TEAM_NBR IN 
	 (	'0000600676'
       ,'0000600677'
       ,'0000600678'
       ,'0000600679'
       ,'0000600681')
	 
     THEN
       'EASTERN REGION'
     WHEN ACV.CUST_TEAM_NBR IN 
								('0000600685'
                                ,'0000600722'
                                ,'0000600723'
                                ,'0000600718'
                                ,'0000600719'
                                ,'0000600721')
     THEN
       'WESTERN REGION'
     ELSE
    ACV.CUST_TEAM
   END AS CUST_TEAM
,ACV.STDLINXSCD
,ACV.SOLD_TO
,ACV.SOLD_TO_NBR
,ACV.SNO
,ACV.STR
,ACV.CITY
,ACV.SST
,ACV.PSTL_CODE
,ACV.CHN
,ACV.CHN_NBR
,ACV.PLN_TO
,ACV.PLN_TO_NBR
,ACV.TERR
,ACV.TERR_NBR
,ACV.ZN
,ACV.ZN_NBR
,ACV.RGN
,ACV.RGN_NBR
,FACT.SOWNNM
,ACV.SANNVOLCD
,ACv.MIN
,ACV.MAX
,ACV.MID
,VAL_PER_STORE AS DOL_SALE
,DOL
,FACT.CATG
,CASE WHEN FACT.CATG IN ('Cold Cereal','Toaster Pastries') THEN 'Morning Foods'
			ELSE 'Snacks' END AS BU
FROM 
dbo.UVW_REX_PUBLIX_ACV AS ACV
INNER JOIN
FACT_STORE as FACT
ON
ACV.SOWNNM = FACT.SOWNNM
AND
ACV.MID = FACT.MID




GO
/****** Object:  View [dbo].[UVW_REX_SIF_PUBLIX_STORE_PRFM_QTD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author	   : Abhilash Mogili
-- Create date	   : 10/11/2018
-- Description	   : Stay in Front KPI Store Sales for the present quarter for Publix
-- Modified Date   : 
-- Comments	   : 
-- =============================================



CREATE VIEW [dbo].[UVW_REX_SIF_PUBLIX_STORE_PRFM_QTD]
AS

SELECT 
	   SIF.[FISC_YR]
      ,SIF.[PD_DESC]
      ,SIF.[SOLD_TO_NBR]
      ,SIF.[CHN_NBR]
      ,SIF.[PLN_TO_NBR]
      ,SIF.[TERR_NBR]
      ,SIF.[ZN_NBR]
      ,SIF.[RGN_NBR]
      ,SUM(SIF.[DOL_SALE]) AS DOL_SALE
      ,SIF.[BU]
  FROM [KNA_SALES].[dbo].[UVW_REX_RPT_PUBLIX_POS_KSR] AS SIF
  INNER JOIN
  dbo.UVW_REX_PD_DT AS DT
  ON
  SIF.FISC_YR = DT.CUR_YR
  AND
  PD_DESC = CONCAT('Q',DT.CUR_QTR)
  GROUP BY
       SIF.[FISC_YR]
      ,SIF.[PD_DESC]
      ,SIF.[SOLD_TO_NBR]
      ,SIF.[CHN_NBR]
      ,SIF.[PLN_TO_NBR]
      ,SIF.[TERR_NBR]
      ,SIF.[ZN_NBR]
      ,SIF.[RGN_NBR]
      ,SIF.[BU]





GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_STORES_NO_POS_L4W_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	02/07/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Nielsen,IRI Stores with no Pos in last 4 weeks that have a budget for current Quarter
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_STORES_NO_POS_L4W_BUD]
AS
SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
	  ,CUST.STDLINXSCD
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS CUST_SOLD_TO_NBR
	  ,NI.SOLD_TO_NBR	  AS SOLD_TO_NBR
	  ,NI.DOL_SALE
	  ,BUDG.BUD
FROM 
SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
LEFT OUTER JOIN
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO_NBR,DOL_SALE FROM KG_EXTERNAL.UVW_SNACKS_VLD_STORES_POS_L4W') AS NI
ON
CUST.SOLD_TO_NBR = NI.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD,SOLD_TO_NBR,BUDG.QTR,BUDG.YR
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FISC_WK_END_DT <= PD_DT
AND 
FC.FISC_QTR = DATEPART(QUARTER,PD_DT)
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY SOLD_TO_NBR,BUDG.QTR,BUDG.YR
) AS BUDG 
ON
CUST.SOLD_TO_NBR = BUDG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
WHERE CUST.PLN_TO_NBR NOT IN  ('0000300994','0000300855','0000300850') 
AND
--NI.SOLD_TO_NBR IS NOT NULL
--AND
BUDG.BUD IS NOT NULL
AND
NI.DOL_SALE IS NULL


GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_KROGER_STORES_NO_POS_L4W_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	02/07/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the kroger Stores with no Pos in last 4 weeks that have a budget for current Quarter
-- Comments			:
-- =============================================

CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_KROGER_STORES_NO_POS_L4W_BUD]
AS
SELECT 
       CUST.[RGN]
      ,CUST.[RGN_NBR]
      ,CUST.[ZN]
      ,CUST.[ZN_NBR]
      ,CUST.[TERR]
      ,CUST.[TERR_NBR]
      ,CUST.[PLN_TO]
      ,CUST.[PLN_TO_NBR]
      ,CUST.[CHN]
      ,CUST.[CHN_NBR]
	  ,CUST.STDLINXSCD
      ,CUST.[SOLD_TO]
      ,CUST.[SOLD_TO_NBR] AS CUST_SOLD_TO_NBR
	  ,NI.SOLD_TO_NBR	  AS SOLD_TO_NBR
	  ,NI.DOL_SALE
	  ,BUDG.BUD
FROM 
--Snacks Customer Hierarchy
dbo.SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
LEFT OUTER JOIN
--Kroger stores with POS in L4W
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO_NBR,CAST(DOL_SALE AS DECIMAL(38,6)) AS DOL_SALE FROM KG_EXTERNAL.UVW_SNACKS_VLD_STORES_KROG_POS_L4W') AS NI
ON
CUST.SOLD_TO_NBR = NI.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
LEFT OUTER JOIN
--Joining with the POS Budget
(
SELECT  SUM(Q_TOTAL) AS BUD,SOLD_TO_NBR,BUDG.QTR,BUDG.YR
FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE  BUDG.QTR IS NOT NULL
AND
EXISTS
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FISC_WK_END_DT <= PD_DT
AND 
FC.FISC_QTR = DATEPART(QUARTER,PD_DT)
AND FC.FISC_QTR = BUDG.QTR
)
GROUP BY SOLD_TO_NBR,BUDG.QTR,BUDG.YR
) AS BUDG 
ON
CUST.SOLD_TO_NBR = BUDG.SOLD_TO_NBR COLLATE Latin1_General_CS_AS
WHERE CUST.PLN_TO_NBR = '0000300855'
AND
NI.SOLD_TO_NBR IS NOT NULL
AND
BUDG.BUD IS NOT NULL
AND
NI.DOL_SALE IS NULL


GO
/****** Object:  View [dbo].[UVW_INFO_MAIN_PAGE_BIAS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author			:	Venkatesh\Chandars
-- Create date		:	09/01/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	SQL VIEW developed as a data source for KSC-Demand Dashbaord MAIN Page 
-- Comments			:   Infometrics data has been blended with Material attributes and SAS DP data set
-- Execue			:  SELECT * FROM KNA_SALES.[dbo].[UVW_INFO_MAIN_PAGE_BIAS]
-- =============================================
CREATE VIEW [dbo].[UVW_INFO_MAIN_PAGE_BIAS]
AS
SELECT INFO_ACTL.MATRL_NBR as MATRL, [FISC_YR], [FISC_PD] , SHIPMNT_QTY, PD_LAG0_QTY, PD_LAG1_QTY, PD_LAG2_QTY,
			ROUND((PD_LAG0_QTY - SHIPMNT_QTY) / (CASE WHEN PD_LAG0_QTY = 0 THEN 1 ELSE PD_LAG0_QTY END) * 100,2)  As PD_LAG0_VARNC,
			ROUND((PD_LAG1_QTY - SHIPMNT_QTY) / (CASE WHEN PD_LAG1_QTY = 0 THEN 1 ELSE PD_LAG1_QTY END) * 100, 2) As PD_LAG1_VARNC,
			ROUND((PD_LAG2_QTY - SHIPMNT_QTY) / (CASE WHEN PD_LAG2_QTY = 0 THEN 1 ELSE PD_LAG2_QTY END) * 100, 2) As PD_LAG2_VARNC
 FROM(     
 --------------Getting the SHIPMET DATA----------------------------------------------------------------------------
             SELECT  
				FORMAT(MATRL_NBR,'000000000000000000') AS MATRL_NBR,  
				[FISC_YR], [FISC_PD], 
				SUM([SHIPMNT_QTY]) AS SHIPMNT_QTY
			FROM KNA_SALES.DBO.[UVW_KPI_SHIPMENT] KS WITH (NOLOCK)   
			LEFT JOIN [KNA_SALES].[dbo].[UVW_PLANTO_CHANNAL] PC WITH (NOLOCK) 
			ON PC.PLN_TO_CUST = KS.PLN_TO_CUST 
			AND PC.CHNL_NBR like '%500003%'
			WHERE [FISC_YR] = Year(GetDate())
			AND [FISC_PD] = Month(GetDate()) - 1 
			GROUP BY MATRL_NBR,  [FISC_YR], [FISC_PD] 
			
	  )INFO_ACTL
--------------Getting the current,previous and previous two moths Forecast data---------------------------------------
   INNER JOIN ( 
               SELECT  
					Material,  
					FiscalYear, 
					Period, 
					SUM(Forecast) AS PD_LAG0_QTY,
					SUM(Forecast1) AS PD_LAG1_QTY,
					SUM(Forecast2) AS PD_LAG2_QTY 
				FROM [KG_DP].[dbo].[UVW_FORECAST_SHIPMENT_MAPE_BIAS]  WITH (NOLOCK)   
				LEFT JOIN [KNA_SALES].[dbo].[UVW_PLANTO_CHANNAL] PC WITH (NOLOCK) 
				ON PC.PLN_TO_CUST = PLAN_TO AND PC.CHNL_NBR like '%500003%'
				WHERE FiscalYear = Year(GetDate())
				AND Period = Month(GetDate()) - 1 AND BU like 'Specialty%'
				GROUP BY Material,  FiscalYear, Period
               )P0   
	ON P0.Material = INFO_ACTL.MATRL_NBR 
	AND INFO_ACTL.[FISC_YR] =P0.FiscalYear 
	AND INFO_ACTL.[FISC_PD]=P0.Period 










GO
/****** Object:  View [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- ==========================================================================================
-- Author		: Abhilash Mogili
-- Create date		: 08/09/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Calculating  the  Perfect Store Metrics  POS Dollar Sale to Budget %,
--			  Shipment Dollar Sale to Budget %,Max Call Coverage,Safety Training at Territory level for KSR Rank
-- Comments		:
-- ==========================================================================================




CREATE VIEW [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_KSR]
AS


WITH PRFCT_STORE AS
(
SELECT 
DOL_SALE
,BUD
,BU
,TYP
,PCT_TO_BUD
,PD_DESC
,PD_DT
 ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
	  ,TERR_CALL_COVRG_PCT
	  ,ZN_CALL_COVRG_PCT
	  ,RGN_CALL_COVRG_PCT
	  ,OBSRVTN
	  ,SAFETY_MSG1
	  ,SAFETY_MSG2
	  ,MODULE

 FROM  [KNA_SALES].[dbo].[UVW_REX_RPT_PRFCT_STORE] WITH (NOLOCK)
WHERE
TYP NOT IN ('DISTRIBUTION','PRFCT_SHELF','SHP_GROC','SHP_TOTL')
)




SELECT 
		CASE WHEN SNACKS_BUD = 0 THEN 0 ELSE SNACKS_DOL_SALE/SNACKS_BUD END AS SNACKS_PCT_TO_BUD
	   , CASE WHEN MF_BUD = 0 THEN 0 ELSE MF_DOL_SALE/MF_BUD END AS MF_PCT_TO_BUD
	   ,SHP_SNACKS_PCT_TO_BUD
	   ,SHP_MF_PCT_TO_BUD
	   ,TERR_CALL_COVRG_PCT/100 AS  MAX_CALL_COVRG
	  ,SAFETY_TRN
	  ,POS_SNACKS.[RGN]
	  ,POS_SNACKS.RGN_NBR
      ,POS_SNACKS.[ZN]
	  ,POS_SNACKS.ZN_NBR
      ,POS_SNACKS.[TERR]
	  ,POS_SNACKS.TERR_NBR
	  FROM

(
(
--Getting the POS Dollar Sale for all the territories for Snacks BU
		SELECT 
					 ISNULL(SUM(DOL_SALE),0) AS SNACKS_DOL_SALE
					,ISNULL(SUM(BUD),0) AS SNACKS_BUD
					,BU
					,[RGN]
					,RGN_NBR
					,[ZN]
					,ZN_NBR
					,[TERR]
					,TERR_NBR
					,[PD_DESC] 
       FROM 
					 PRFCT_STORE
	   WHERE 
	   TYP = 'POS'  AND BU = 'Snacks'
	   GROUP BY 
				 BU
				,[RGN]
				,RGN_NBR
				,[ZN]
				,ZN_NBR
				,[TERR]
				,TERR_NBR
				,[PD_DESC]
	  
	  ) AS POS_SNACKS
	INNER JOIN
	(
	--Getting the POS Dollar Sale for all the territories for Morning Foods BU
	SELECT 
					 ISNULL(SUM(DOL_SALE),0) AS MF_DOL_SALE
					,ISNULL(SUM(BUD),0) AS MF_BUD
					,[RGN]
					,RGN_NBR
					,[ZN]
					,ZN_NBR
					,[TERR]
					,TERR_NBR
					,[PD_DESC] 
       FROM 
					 PRFCT_STORE
	   WHERE 
	   TYP = 'POS'  AND BU = 'Morning Foods'
	   GROUP BY 
				 BU
				,[RGN]
				,RGN_NBR
				,[ZN]
				,ZN_NBR
				,[TERR]
				,TERR_NBR
				,[PD_DESC]
	) AS POS_MF
	ON
	POS_SNACKS.RGN_NBR = POS_MF.RGN_NBR AND POS_SNACKS.ZN_NBR = POS_MF.ZN_NBR AND POS_SNACKS.TERR_NBR = POS_MF.TERR_NBR and POS_SNACKS.PD_DESC = POS_MF.PD_DESC
		INNER JOIN
		(
		----Getting the Shipment Percentage to Budget for all the territories for Snacks BU
		SELECT 
          PCT_TO_BUD/100 AS SHP_SNACKS_PCT_TO_BUD
		  ,BU
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
       FROM PRFCT_STORE
	   where TYP = 'SHP_TERR'  AND BU = 'Snacks'

	) AS SHP_S
ON

POS_MF.RGN_NBR = SHP_S.RGN_NBR AND POS_MF.ZN_NBR =SHP_S.ZN_NBR AND POS_SNACKS.TERR_NBR = SHP_S.TERR_NBR

INNER JOIN
		(
			----Getting the Shipment Percentage to Budget for all the territories for Morning Foods BU
		SELECT 
          PCT_TO_BUD/100 AS SHP_MF_PCT_TO_BUD
		  ,BU
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
       FROM 
	   PRFCT_STORE
	   where TYP = 'SHP_TERR'  AND BU = 'Morning Foods'

	) AS SHP_MF
ON

SHP_MF.RGN_NBR = SHP_S.RGN_NBR AND SHP_MF.ZN_NBR =SHP_S.ZN_NBR AND SHP_MF.TERR_NBR = SHP_S.TERR_NBR

INNER JOIN
	(
		----Getting the Call Coverage for all the territories
	SELECT      
		TERR_CALL_COVRG_PCT
		,ZN_CALL_COVRG_PCT
		,RGN_CALL_COVRG_PCT
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
       FROM
	   PRFCT_STORE
	   where TYP = 'CALL_COVERAGE') AS CC
	   on SHP_MF.RGN_NBR = CC.RGN_NBR AND SHP_MF.ZN_NBR = CC.ZN_NBR AND SHP_MF.TERR_NBR = CC.TERR_NBR
		INNER JOIN
		(
		----Getting the Safety Metrics  for all the territories (KSR's)
		SELECT 
		 MODULE AS MODULE_ACTL
		,OBSRVTN AS OBSRVTN_ACTL
		,SAFETY_MSG1 AS SAFETY_MSG1_ACTL
		,SAFETY_MSG2 AS SAFETY_MSG2_ACTL
		,CAST(SUM(MODULE + SAFETY_MSG1 + SAFETY_MSG2 + OBSRVTN) AS DECIMAL(5,3))
        /CAST(12 AS DECIMAL(5,3)) AS SAFETY_TRN
		 ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
	 FROM 
	 PRFCT_STORE
		WHERE TYP = 'KEEP_SAFE_KSR'
		GROUP BY
		 OBSRVTN 
	   ,SAFETY_MSG1
	   ,SAFETY_MSG2
	   ,MODULE
	   ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
)

 AS SAFETY
		on  CC.RGN_NBR = SAFETY.RGN_NBR AND  CC.ZN_NBR = SAFETY.ZN_NBR AND  CC.TERR_NBR = SAFETY.TERR_NBR
		)
	

GO
/****** Object:  View [dbo].[UVW_SNACKS_WALMART_POS_SHR_TOTL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	08/29/2017
-- Modified By		:
-- Modified date	:	
-- Description		:  Calculating the Dollar Share for Last 13 weeks For Present and Previous Year for each Chain for all Categories
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_WALMART_POS_SHR_TOTL]
AS

SELECT
		 WALMART_SHARE.[[KEL_TOTAL CORE]]] AS CATG
		 ,CONVERT(DECIMAL(10,0),CHN_NBR) AS Object_ID
		,CONVERT(CHAR(10),DT. PD_DT,101) AS KPIDate
        ,CAST(ISNULL(WALMART_SHARE.DOL_SHR, 0) AS DECIMAL (3 , 1 )) AS DOL_SHR
        ,CAST(ISNULL(WALMART_SHARE.DOL_SHR_CYA, 0) AS DECIMAL (3 , 1 )) AS DOL_SHR_CYA

FROM
(
SELECT 
 [[KEL_TOTAL CORE]]]
 ,WCH.CHN_NBR
,(CASE WHEN (SUM(CASE WHEN (([[KEL_CORPORATE]]] = 'KELLOGG CORPORATION' )  AND (([[KEL_BRAND]]]) IS NOT NULL ) 
AND (LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%STRETCH%'))THEN [[$]]] END) = 0 ) THEN 0 
ELSE 
(SUM(CASE WHEN (([[KEL_CORPORATE]]] = 'KELLOGG CORPORATION' )  AND (([[KEL_BRAND]]]) IS NOT NULL ) AND (LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%STRETCH%'))THEN [[$]]] END)/
(SUM(CASE WHEN (([[KEL_CORPORATE]]] = 'KELLOGG CORPORATION' )  AND (([[KEL_BRAND]]]) IS NOT NULL ) AND (LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%STRETCH%'))THEN [[$]]] END) +
SUM(CASE WHEN (([[KEL_CORPORATE]]] != 'KELLOGG CORPORATION') AND (([[KEL_BRAND]]]) IS NULL)) THEN [[$]]] END))) END * 100) AS DOL_SHR
,(CASE WHEN (SUM(CASE WHEN (([[KEL_CORPORATE]]] = 'KELLOGG CORPORATION' )  AND (([[KEL_BRAND]]]) IS NOT NULL ) AND (LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%STRETCH%'))THEN [[$ YA]]]  END) = 0 ) THEN 0 
ELSE 
(SUM(CASE WHEN (([[KEL_CORPORATE]]] = 'KELLOGG CORPORATION' )  AND (([[KEL_BRAND]]]) IS NOT NULL ) AND (LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%STRETCH%'))THEN [[$ YA]]]  END)/
(SUM(CASE WHEN (([[KEL_CORPORATE]]] = 'KELLOGG CORPORATION' )  AND (([[KEL_BRAND]]]) IS NOT NULL ) AND (LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([[KEL_BRAND]]])) NOT LIKE '%STRETCH%'))THEN [[$ YA]]]  END) +
SUM(CASE WHEN (([[KEL_CORPORATE]]] != 'KELLOGG CORPORATION') AND (([[KEL_BRAND]]]) IS NULL)) THEN [[$ YA]]]  END))) END * 100) AS DOL_SHR_CYA

FROM [KNA_EXTERNAL].AOD.SNACKS_WALMART_POS_SHARE WPOS WITH (NOLOCK)
INNER JOIN 
(
SELECT 
 PLN_TO_NBR,CHN_NBR 
 FROM [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK) 
 WHERE PLN_TO_NBR=0000300994
 GROUP BY
 
 PLN_TO_NBR,CHN_NBR 
 
 ) WCH 
ON  WCH.PLN_TO_NBR = 0000300994
where
[[All Periods]]] LIKE '%Latest 13 Wks%' 
GROUP BY 
[[KEL_TOTAL CORE]]],WCH.CHN_NBR

) WALMART_SHARE

CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT
 



GO
/****** Object:  View [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_KSM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- ==========================================================================================
-- Author		: Abhilash Mogili
-- Create date		: 08/10/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Calculating  the  Perfect Store Metrics  POS Dollar Sale to Budget %,
--			  Shipment Dollar Sale to Budget %,Max Call Coverage,Safety Training at Area/Zone level for KSM Rank
-- Comments		:
-- ==========================================================================================




CREATE VIEW [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_KSM]
AS


WITH PRFCT_STORE AS
(
SELECT 
DOL_SALE
,BUD
,BU
,TYP
,PCT_TO_BUD
,PD_DESC
,PD_DT
 ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
	  ,TERR_CALL_COVRG_PCT
	  ,ZN_CALL_COVRG_PCT
	  ,RGN_CALL_COVRG_PCT
	  ,OBSRVTN
	  ,SAFETY_MSG1
	  ,SAFETY_MSG2
	  ,MODULE

 FROM  [KNA_SALES].[dbo].[UVW_REX_RPT_PRFCT_STORE] WITH (NOLOCK)
WHERE
TYP NOT IN ('DISTRIBUTION','PRFCT_SHELF','SHP_GROC','SHP_TOTL')
)




SELECT 
		CASE WHEN SNACKS_BUD = 0 THEN 0 ELSE SNACKS_DOL_SALE/SNACKS_BUD END AS SNACKS_PCT_TO_BUD
	   , CASE WHEN MF_BUD = 0 THEN 0 ELSE MF_DOL_SALE/MF_BUD END AS MF_PCT_TO_BUD
	   ,SHP_SNACKS_PCT_TO_BUD
	   ,SHP_MF_PCT_TO_BUD
	   ,ZN_CALL_COVRG_PCT/100 AS  MAX_CALL_COVRG
	  ,SAFETY_TRN
	  ,POS_SNACKS.[RGN]
	  ,POS_SNACKS.RGN_NBR
      ,POS_SNACKS.[ZN]
	  ,POS_SNACKS.ZN_NBR
	  FROM
(
(
--Getting the POS Dollar Sale for all the Zones for Snacks BU
		SELECT 
					 ISNULL(SUM(DOL_SALE),0) AS SNACKS_DOL_SALE
					,ISNULL(SUM(BUD),0) AS SNACKS_BUD
					,BU
					,[RGN]
					,RGN_NBR
					,[ZN]
					,ZN_NBR
       FROM 
					 PRFCT_STORE
	   WHERE 
	   TYP = 'POS'  AND BU = 'Snacks'
	   GROUP BY 
				 BU
				,[RGN]
				,RGN_NBR
				,[ZN]
				,ZN_NBR
	  
	  ) AS POS_SNACKS
	INNER JOIN
	(
		--Getting the POS Dollar Sale for all the Zones for Morning Foods BU
	SELECT 
					 ISNULL(SUM(DOL_SALE),0) AS MF_DOL_SALE
					,ISNULL(SUM(BUD),0) AS MF_BUD
					,[RGN]
					,RGN_NBR
					,[ZN]
					,ZN_NBR
       FROM 
					 PRFCT_STORE
	   WHERE 
	   TYP = 'POS'  AND BU = 'Morning Foods'
	   GROUP BY 
				 BU
				,[RGN]
				,RGN_NBR
				,[ZN]
				,ZN_NBR
	) AS POS_MF
	ON
	POS_SNACKS.RGN_NBR = POS_MF.RGN_NBR AND POS_SNACKS.ZN_NBR = POS_MF.ZN_NBR
		INNER JOIN
		(
		----Getting the Shipment Percentage to Budget for all the Zones for Snacks BU
		SELECT 
          PCT_TO_BUD/100 AS SHP_SNACKS_PCT_TO_BUD
		  ,BU
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
       FROM PRFCT_STORE
	   where TYP = 'SHP_ZN'  AND BU = 'Snacks'

	) AS SHP_S
ON

POS_MF.RGN_NBR = SHP_S.RGN_NBR AND POS_MF.ZN_NBR =SHP_S.ZN_NBR

INNER JOIN
		(
			----Getting the Shipment Percentage to Budget for all the Zones for Morning Foods BU
		SELECT 
          PCT_TO_BUD/100 AS SHP_MF_PCT_TO_BUD
		  ,BU
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
       FROM PRFCT_STORE
	   where TYP = 'SHP_ZN'  AND BU = 'Morning Foods'

	) AS SHP_MF
ON

SHP_MF.RGN_NBR = SHP_S.RGN_NBR AND SHP_MF.ZN_NBR =SHP_S.ZN_NBR

INNER JOIN
	(
	----Getting the Call Coverage for all the Zones
	SELECT      	
		ZN_CALL_COVRG_PCT
		,RGN_CALL_COVRG_PCT
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
       FROM
	   PRFCT_STORE
	   where TYP = 'CALL_COVERAGE'
	   GROUP BY
	   ZN_CALL_COVRG_PCT
		,RGN_CALL_COVRG_PCT
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
	   
	   ) AS CC
	   on SHP_MF.RGN_NBR = CC.RGN_NBR AND SHP_MF.ZN_NBR = CC.ZN_NBR
		INNER JOIN
		(
			----Getting the Safety Metrics  for all the territories (KSM's)
		  SELECT 

[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
,SUM(OBSRVTN)     AS OBSRVTN
,SUM(SAFETY_MSG1) AS SAFETY_MSG1
,SUM(SAFETY_MSG2) AS SAFETY_MSG2
,SUM(MODULE)       AS MODULE
,CAST(SUM(MODULE + SAFETY_MSG1 + SAFETY_MSG2 + OBSRVTN) AS DECIMAL(8,3)) /CAST(COUNT(ZN_NBR) * 12 AS DECIMAL(8,3)) AS SAFETY_TRN
 FROM
 PRFCT_STORE
WHERE TYP IN ('KEEP_SAFE_KSR','KEEP_SAFE_KSM')
GROUP BY
     [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
	

)

 AS SAFETY
		on  CC.RGN_NBR = SAFETY.RGN_NBR AND  CC.ZN_NBR = SAFETY.ZN_NBR
		)
	

GO
/****** Object:  View [dbo].[UVW_SNACKS_WALMART_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





 CREATE VIEW [dbo].[UVW_SNACKS_WALMART_WK]
 AS
SELECT 
CUST.STDLINXSCD AS [TD Linx Number]
,WALM.STORENBR AS [Store]
,WALM.STOREDESC AS [Store Name]
,WALM.STORENBR AS [Store Nbr]
,WALM.[WEEK]
,CASE WHEN WALM.CATG = 'Bars' THEN 'Wholesome' ELSE WALM.CATG END AS [CATEGORY(C)]
,WALM.POS_SALES AS [POS Sales]
FROM 
[dbo].[SNACKS_TDLINX_CUST_HIER] AS CUST WITH (NOLOCK)

INNER JOIN
(SELECT 
STORENBR
,STOREDESC
,SOLDTO
--,CONCAT(YR,WK) AS WEEK
,CONCAT(YR,right(CONCAT('000', WK), 3)) AS WEEK
,CATG,SUM(TOTL_SALES) AS POS_SALES
 FROM REX_POS_WALMART_WK WITH (NOLOCK)
 CROSS JOIN
[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
WHERE
YR = YEAR(DT.PD_DT)-1
AND
CATG
IN
 ('Cookies'
,'Crackers'
,'Salty Snacks'
,'Fruit Snacks'
,'Bars'
)
AND
 UPPER(BRAND) NOT LIKE '%KASHI%' AND UPPER(BRAND) NOT LIKE '%BEAR NAKED%' AND UPPER(BRAND) NOT LIKE '%STRETCH%'
GROUP BY
STORENBR,STOREDESC,SOLDTO,CONCAT(YR,right(CONCAT('000', WK), 3)),CATG
--ORDER BY CONCAT(YR,WK)
) AS WALM
ON
CUST.SOLD_TO_NBR = WALM.SOLDTO COLLATE Latin1_General_CS_AS


GO
/****** Object:  View [dbo].[UVW_SNACKS_SIF_KPI_SHARE_IMP]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






















-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/03/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	Returns the Dollar Share for Last 13 weeks For Present and Previous Year for each store for Crackers,Cookies,Wholesome,Salty Snacks and Fruit Snacks.
--						Returns Walmart and Publix Dollar Share for Last 13 weeks For Present and Previous Year for each Chain for Crackers,Cookies,Wholesome,Salty Snacks and Fruit Snacks 
-- Comments			:
-- =============================================


CREATE  VIEW [dbo].[UVW_SNACKS_SIF_KPI_SHARE_IMP]
AS
--1.Kpi_cat01_crackers_SS_L13

--Getting the Dollar Share for Last 13 weeks For Present and Previous Year for each store for Crackers
SELECT 
'kpi_cat01_Crackers_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,CAST(POS.[DOL_SHR] AS DECIMAL(3,1)) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(3,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(3,1)) END AS TargetCalculation
FROM
(SELECT CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR, cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KG_EXTERNAL.UVW_SNACKS_SIF_STORE_PRFM_SHARE WHERE (NOT ISNULL(PD_DESC)) AND (PD_DESC = ''L13W'') AND (CATG = ''Crackers'')')) POS


UNION ALL

--2.kpi_cat02_Cookies_SS_L13


--Getting the Dollar Share for Last 13 weeks For Present  and Previous Year for each store for Cookies 

SELECT 
'kpi_cat02_Cookies_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,CAST(POS.[DOL_SHR] AS DECIMAL(3,1)) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(3,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(3,1)) END AS TargetCalculation

FROM
(SELECT CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR,cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KG_EXTERNAL.UVW_SNACKS_SIF_STORE_PRFM_SHARE WHERE (NOT ISNULL(PD_DESC)) AND (PD_DESC = ''L13W'') AND (CATG = ''Cookies'')')) POS



UNION ALL

 --3.kpi_cat03_Wholesome_SS_L13

 
--Getting the Dollar Share for Last 13 weeks For Present and Previous Year for each store for Wholesome 

SELECT 
'kpi_cat03_Wholesome_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,CAST(POS.[DOL_SHR] AS DECIMAL(3,1)) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(3,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(3,1)) END AS TargetCalculation
FROM
(SELECT 
CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR,cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KG_EXTERNAL.UVW_SNACKS_SIF_STORE_PRFM_SHARE WHERE (NOT ISNULL(PD_DESC)) AND (PD_DESC = ''L13W'') AND (CATG = ''Wholesome'')')) POS

UNION ALL

--4.kpi_cat04_Salty_SS_L13

--Getting the Dollar Share for Last 13 weeks for Present and Previous Year for each store for Salty Snacks 


SELECT 
'kpi_cat04_Salty_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,CAST(POS.[DOL_SHR] AS DECIMAL(3,1)) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(3,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(3,1)) END AS TargetCalculation
FROM
(SELECT 
CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR,cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KG_EXTERNAL.UVW_SNACKS_SIF_STORE_PRFM_SHARE WHERE (NOT ISNULL(PD_DESC)) AND (PD_DESC = ''L13W'') AND (CATG = ''Salty Snacks'')')) POS

 UNION ALL

 --5.kpi_cat05_FruitSnacks_StoreShare_L13

 --Getting the Dollar Share for Last 13 weeks for Present and Previous Year for each store for Fruit Snacks 
SELECT 
'kpi_cat05_FruitSnacks_SS_L13' AS KPI_ID
,'Store' AS Class
,POS.[SOLD_TO_NBR] AS Object_ID
,CONVERT(CHAR(10),POS.PD_DT,101) AS KPIDate
,CAST(POS.[DOL_SHR] AS DECIMAL(3,1)) AS Calculation
--,ISNULL(CAST(ROUND(POS.[DOL_SHR_CYA],0) AS FLOAT),'') AS TargetCalculation
,CASE WHEN CAST(POS.[DOL_SHR_CYA] AS DECIMAL(3,1)) = 0 THEN 0 ELSE  CAST((POS.[DOL_SHR] - POS.[DOL_SHR_CYA]) AS DECIMAL(3,1)) END AS TargetCalculation
FROM
(SELECT 
CATG,SOLD_TO_NBR,DOL_SHR,DOL_SHR_CYA,PD_DT
FROM     OPENQUERY([MYSQLMEMSQL Prod], 'SELECT  CATG,PD_DESC,cast(DOL_SHR as decimal(38,6)) as DOL_SHR,cast(DOL_SHR_CYA as decimal(38,6)) as DOL_SHR_CYA, SOLD_TO_NBR,PD_DT
FROM KG_EXTERNAL.UVW_SNACKS_SIF_STORE_PRFM_SHARE WHERE (NOT ISNULL(PD_DESC)) AND (PD_DESC = ''L13W'') AND (CATG = ''Fruit Snacks'')')) POS

 UNION ALL

 --6.kpi_cat01_Crackers_ChainShare_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Crackers 
SELECT 
'kpi_cat01_Crackers_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,[DOL_SHR]  AS Calculation
,CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END AS TargetCalculation

FROM 
[KNA_SALES].dbo.UVW_SNACKS_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'CRACKER CORE'

UNION ALL

--7.kpi_cat02_Cookies_ChainShare_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Cookies Category
SELECT 
'kpi_cat02_Cookies_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,[DOL_SHR]  AS Calculation
,CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END AS TargetCalculation

FROM 
[KNA_SALES].dbo.UVW_SNACKS_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG =  'COOKIE CORE'

UNION ALL

--8.kpi_cat03_Wholesome_ChainShare_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Wholesome 
SELECT 
'kpi_cat03_Wholesome_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,[DOL_SHR]  AS Calculation
,CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END AS TargetCalculation

FROM 
[KNA_SALES].dbo.UVW_SNACKS_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'WHOLESOME SNACKS'



UNION ALL

--9.kpi_cat04_Salty_CS_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Salty Snacks
SELECT 
'kpi_cat04_Salty_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,[DOL_SHR]  AS Calculation
,CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END AS TargetCalculation

FROM 
[KNA_SALES].dbo.UVW_SNACKS_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG = 'SALTY SNACKS'


UNION ALL

--10.kpi_cat05_FruitSnacks_ChainShare_L13

 --Getting the Walmart Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Fruit Snacks 
SELECT 
'kpi_cat05_FruitSnacks_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,Object_ID
,KPIDate
,[DOL_SHR]  AS Calculation
,CASE WHEN [DOL_SHR_CYA] = 0 THEN 0 ELSE  ([DOL_SHR] - [DOL_SHR_CYA]) END AS TargetCalculation
FROM 
[KNA_SALES].dbo.UVW_SNACKS_WALMART_POS_SHR_TOTL WITH (NOLOCK)
WHERE
CATG =  'FRUIT FLAVORED SNACKS'




UNION ALL

--11.Publix Data kpi_cat01_Crackers_ChainShare_L13

--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Crackers 

SELECT 
'kpi_cat01_Crackers_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR)AS Object_ID
,CONVERT(CHAR(10),DT.PD_DT,101) AS KPIDate
,SUM([($ Shr - Prompt)]) AS Calculation
,SUM([($ Shr CYA - Prompt)]) AS TargetCalculation
FROM 
(
SELECT ch.CHAIN_NBR,POS.[(All Markets)],poS.[($ Shr - Prompt)],pos.[($ Shr CYA - Prompt)]
FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_DIV_POS] AS POS WITH (NOLOCK)
INNER JOIN
(SELECT 
      [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE] WITH (NOLOCK)
  GROUP BY
  [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  
  ) AS CH
  ON
  LTRIM(RTRIM(POS.[(All Markets)])) = LTRIM(RTRIM(CH.NIELSEN_DIV))
WHERE

[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' 
AND
LTRIM(RTRIM([(KEL_CATEGORY)])) = 'CRACKER CORE'
AND
LTRIM(RTRIM([(KEL_BRAND)])) IS NOT NULL
AND
LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%STRETCH ISLAND%'
AND
[(All Periods)] LIKE '%Latest 13 Wks%'

) AS  WPOS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
group by
CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR),CONVERT(CHAR(10),DT.PD_DT,101)



UNION ALL

--12. PUBlix kpi_cat02_Cookies_ChainShare_L13

--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Cookies 


SELECT 
'kpi_cat02_Cookies_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR)AS Object_ID
,CONVERT(CHAR(10),DT.PD_DT,101) AS KPIDate
,SUM([($ Shr - Prompt)]) AS Calculation
,SUM([($ Shr CYA - Prompt)]) AS TargetCalculation
FROM 
(
SELECT ch.CHAIN_NBR,POS.[(All Markets)],poS.[($ Shr - Prompt)],pos.[($ Shr CYA - Prompt)]
FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_DIV_POS] AS POS WITH (NOLOCK)
INNER JOIN
(SELECT 
      [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE] WITH (NOLOCK)
  GROUP BY
  [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  
  ) AS CH
  ON
  LTRIM(RTRIM(POS.[(All Markets)])) = LTRIM(RTRIM(CH.NIELSEN_DIV))
WHERE

[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' 
AND
LTRIM(RTRIM([(KEL_CATEGORY)])) = 'COOKIE CORE'
AND
LTRIM(RTRIM([(KEL_BRAND)])) IS NOT NULL
AND
LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%STRETCH ISLAND%'
AND
[(All Periods)] LIKE '%Latest 13 Wks%'

) AS  WPOS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
group by
CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR),CONVERT(CHAR(10),DT.PD_DT,101)
UNION ALL

--13.Publix kpi_cat03_Wholesome_ChainShare_L13

--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Wholesome 

SELECT 
'kpi_cat03_Wholesome_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR)AS Object_ID
,CONVERT(CHAR(10),DT.PD_DT,101) AS KPIDate
,SUM([($ Shr - Prompt)]) AS Calculation
,SUM([($ Shr CYA - Prompt)]) AS TargetCalculation
FROM 
(
SELECT ch.CHAIN_NBR,POS.[(All Markets)],poS.[($ Shr - Prompt)],pos.[($ Shr CYA - Prompt)]
FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_DIV_POS] AS POS WITH (NOLOCK)
INNER JOIN
(SELECT 
      [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE]  WITH (NOLOCK)
  GROUP BY
  [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  
  ) AS CH
  ON
  LTRIM(RTRIM(POS.[(All Markets)])) = LTRIM(RTRIM(CH.NIELSEN_DIV))
WHERE

[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' 
AND
LTRIM(RTRIM([(KEL_CATEGORY)])) = 'WHOLESOME SNACKS'
AND
LTRIM(RTRIM([(KEL_BRAND)])) IS NOT NULL
AND
LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%STRETCH ISLAND%'
AND
[(All Periods)] LIKE '%Latest 13 Wks%'

) AS  WPOS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
group by
CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR),CONVERT(CHAR(10),DT.PD_DT,101)



UNION ALL

--14.Publix kpi_cat04_Salty_ChainShare_L13

--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Salty Snacks 

SELECT 
'kpi_cat04_Salty_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR)AS Object_ID
,CONVERT(CHAR(10),DT.PD_DT,101) AS KPIDate
,SUM([($ Shr - Prompt)]) AS Calculation
,SUM([($ Shr CYA - Prompt)]) AS TargetCalculation
FROM 
(
SELECT ch.CHAIN_NBR,POS.[(All Markets)],poS.[($ Shr - Prompt)],pos.[($ Shr CYA - Prompt)]
FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_DIV_POS] AS POS WITH (NOLOCK)
INNER JOIN
(SELECT 
      [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE] WITH (NOLOCK)
  GROUP BY
  [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  
  ) AS CH
  ON
  LTRIM(RTRIM(POS.[(All Markets)])) = LTRIM(RTRIM(CH.NIELSEN_DIV))
WHERE

[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' 
AND
LTRIM(RTRIM([(KEL_CATEGORY)])) = 'SALTY SNACKS'
AND
LTRIM(RTRIM([(KEL_BRAND)])) IS NOT NULL
AND
LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%STRETCH ISLAND%'
AND
[(All Periods)] LIKE '%Latest 13 Wks%'

) AS  WPOS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
group by
CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR),CONVERT(CHAR(10),DT.PD_DT,101)

UNION ALL

--Publix kpi_cat05_FruitSnacks_ChainShare_L13
--Getting the Publix Dollar Share for Last 13 weeks for Present and Previous Year for each Chain for Fruit Snacks 
SELECT 
'kpi_cat05_FruitSnacks_CS_L13' AS KPI_ID
,'BannerGroup' AS Class
,CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR)AS Object_ID
,CONVERT(CHAR(10),DT.PD_DT,101) AS KPIDate
,SUM([($ Shr - Prompt)]) AS Calculation
,SUM([($ Shr CYA - Prompt)]) AS TargetCalculation
FROM 
(
SELECT ch.CHAIN_NBR,POS.[(All Markets)],poS.[($ Shr - Prompt)],pos.[($ Shr CYA - Prompt)]
FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_DIV_POS] AS POS WITH (NOLOCK)
INNER JOIN
(SELECT 
      [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  FROM [KNA_EXTERNAL].[AOD].[SNACKS_PUBLIX_CHAIN_STORE] WITH (NOLOCK)
  GROUP BY
  [CHAIN_NBR]
      ,[CHAIN_NAME]
      ,[NIELSEN_DIV]
  
  ) AS CH
  ON
  LTRIM(RTRIM(POS.[(All Markets)])) = LTRIM(RTRIM(CH.NIELSEN_DIV))
WHERE

[(KEL_CORPORATE)] = 'KELLOGG CORPORATION' 
AND
LTRIM(RTRIM([(KEL_CATEGORY)])) = 'FRUIT FLAVORED SNACKS'
AND
LTRIM(RTRIM([(KEL_BRAND)])) IS NOT NULL
AND
LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%KASHI%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%BEAR NAKED%' AND LTRIM(RTRIM([(KEL_BRAND)])) NOT LIKE '%STRETCH ISLAND%'
AND
[(All Periods)] LIKE '%Latest 13 Wks%'

) AS  WPOS
CROSS JOIN
[KNA_SALES].[dbo].[UVW_SNACKS_PD_DT] AS DT WITH (NOLOCK)
group by
CONVERT(DECIMAL(10,0),WPOS.CHAIN_NBR),CONVERT(CHAR(10),DT.PD_DT,101)









GO
/****** Object:  View [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_RSD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- ==========================================================================================
-- Author		: Abhilash Mogili
-- Create date		: 08/10/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Calculating  the  Perfect Store Metrics  POS Dollar Sale to Budget %,
--			  Shipment Dollar Sale to Budget %,Max Call Coverage,Safety Training at Area/Zone level for KSM Rank
-- Comments		:
-- ==========================================================================================


CREATE VIEW [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_RSD]
AS


WITH PRFCT_STORE AS
(
SELECT 
DOL_SALE
,BUD
,BU
,TYP
,PCT_TO_BUD
,PD_DESC
,PD_DT
 ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
	  ,TERR_CALL_COVRG_PCT
	  ,ZN_CALL_COVRG_PCT
	  ,RGN_CALL_COVRG_PCT
	  ,OBSRVTN
	  ,SAFETY_MSG1
	  ,SAFETY_MSG2
	  ,MODULE

 FROM  [KNA_SALES].[dbo].[UVW_REX_RPT_PRFCT_STORE] WITH (NOLOCK)
WHERE
TYP NOT IN ('DISTRIBUTION','PRFCT_SHELF','SHP_GROC','SHP_TOTL')
)




SELECT 
		CASE WHEN SNACKS_BUD = 0 THEN 0 ELSE SNACKS_DOL_SALE/SNACKS_BUD END AS SNACKS_PCT_TO_BUD
	   , CASE WHEN MF_BUD = 0 THEN 0 ELSE MF_DOL_SALE/MF_BUD END AS MF_PCT_TO_BUD
	   ,SHP_SNACKS_PCT_TO_BUD
	   ,SHP_MF_PCT_TO_BUD
	   ,RGN_CALL_COVRG_PCT/100 AS  MAX_CALL_COVRG
	  ,SAFETY_TRN
	  ,POS_SNACKS.[RGN]
	  ,POS_SNACKS.RGN_NBR
	  FROM
(
(
--Getting the POS Dollar Sale for all the Regions for Snacks BU
		SELECT 
					 ISNULL(SUM(DOL_SALE),0) AS SNACKS_DOL_SALE
					,ISNULL(SUM(BUD),0) AS SNACKS_BUD
					,BU
					,[RGN]
					,RGN_NBR
       FROM 
					PRFCT_STORE
	   WHERE 
	   TYP = 'POS'  AND BU = 'Snacks'
	   GROUP BY 
				 BU
				,[RGN]
				,RGN_NBR
	  
	  ) AS POS_SNACKS
	INNER JOIN
	(
	--Getting the POS Dollar Sale for all the Regions for Morning Foods BU
	SELECT 
					 ISNULL(SUM(DOL_SALE),0) AS MF_DOL_SALE
					,ISNULL(SUM(BUD),0) AS MF_BUD
					,[RGN]
					,RGN_NBR
       FROM 
				PRFCT_STORE
	   WHERE 
	   TYP = 'POS'  AND BU = 'Morning Foods'
	   GROUP BY 
				 BU
				,[RGN]
				,RGN_NBR
	) AS POS_MF
	ON
	POS_SNACKS.RGN_NBR = POS_MF.RGN_NBR
		INNER JOIN
		(
		--Getting the  Shipment Percentage to Budget for all the Regions for Snacks BU
		SELECT 
          PCT_TO_BUD/100 AS SHP_SNACKS_PCT_TO_BUD
		  ,BU
      ,[RGN]
	  ,RGN_NBR
       FROM
	   PRFCT_STORE
	   where TYP = 'SHP_RGN'  AND BU = 'Snacks'

	) AS SHP_S
ON

POS_MF.RGN_NBR = SHP_S.RGN_NBR

INNER JOIN
		(
			--Getting the  Shipment Percentage to Budget for all the Regions for Morning Foods BU
		SELECT 
          PCT_TO_BUD/100 AS SHP_MF_PCT_TO_BUD
		  ,BU
      ,[RGN]
	  ,RGN_NBR
       FROM 
	   PRFCT_STORE
	   where TYP = 'SHP_RGN'  AND BU = 'Morning Foods'

	) AS SHP_MF
ON

SHP_MF.RGN_NBR = SHP_S.RGN_NBR

INNER JOIN
	(
	----Getting the Call Coverage for all the Regions
		SELECT
	   RGN_CALL_COVRG_PCT
      ,[RGN]
	  ,RGN_NBR
       FROM
		PRFCT_STORE
	   where TYP = 'CALL_COVERAGE'
	   GROUP BY
	  RGN_CALL_COVRG_PCT
      ,[RGN]
	  ,RGN_NBR   
	   ) AS CC
	   on SHP_MF.RGN_NBR = CC.RGN_NBR
		INNER JOIN
		(
		----Getting the Safety Metrics  for all the Regions (RSD's)
		SELECT 
		[RGN]
	  ,RGN_NBR
	  ,SUM(OBSRVTN)     AS OBSRVTN
	  ,SUM(SAFETY_MSG1) AS SAFETY_MSG1
	  ,SUM(SAFETY_MSG2) AS SAFETY_MSG2
	  ,SUM(MODULE)       AS MODULE
	  ,CAST(SUM(MODULE + SAFETY_MSG1 + SAFETY_MSG2 + OBSRVTN) AS DECIMAL(8,3)) /CAST(COUNT(RGN_NBR) * 12 AS DECIMAL(8,3)) AS SAFETY_TRN
 FROM
PRFCT_STORE
WHERE TYP IN ('KEEP_SAFE_KSR','KEEP_SAFE_KSM')
GROUP BY
     [RGN]
	  ,RGN_NBR
)

 AS SAFETY
		on  CC.RGN_NBR = SAFETY.RGN_NBR
		)
	

GO
/****** Object:  View [dbo].[UVW_REX_RPT_PRFCT_STORE_RNK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		: Abhilash Mogili
-- Create date		: 09/27/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Calculates the KSR National,Region&Area Rank,KSM National and Area Rank based on Dollar Sale to Budget %,Max Call Coverage % and NSD Scorecard Metrics
-- Comments		: 
-- =============================================

CREATE VIEW [dbo].[UVW_REX_RPT_PRFCT_STORE_RNK]
AS 



SELECT

      KSR.[RGN]
	  ,KSR.RGN_NBR
      ,KSR.[ZN]
	  ,KSR.ZN_NBR
      ,KSR.[TERR]
	  ,KSR.TERR_NBR
	  ,KSR.NATL_KSR_METRIC
      ,KSR.NATL_KSR_RNK
	  ,KSM.NATL_KSM_METRIC
        ,KSM.NATL_KSM_RNK
		 ,RSD.NATL_RSD_METRIC
		,NATL_RSD_RNK

   
         FROM
--Calculating the KSR Rank based on the NSD SCorecard Metrics
(SELECT 
      [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
      ,(( SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks POS % to Budget','KSR'))
	  +( MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods POS % to Budget','KSR'))
	  +(SHP_SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks Shipment % to Budget','KSR'))
	  +(SHP_MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods Shipment % to Budget','KSR'))
	  +([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Max Call Coverage', 'KSR'))
	  +([SAFETY_TRN]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Safety: Training', 'KSR'))
	  ) AS NATL_KSR_METRIC
       ,RANK() OVER (ORDER BY (( SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks POS % to Budget','KSR'))
	  +( MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods POS % to Budget','KSR'))
	  +(SHP_SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks Shipment % to Budget','KSR'))
	  +(SHP_MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods Shipment % to Budget','KSR'))
	  +([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Max Call Coverage', 'KSR'))
	  +([SAFETY_TRN]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Safety: Training', 'KSR'))
	  ) DESC) AS NATL_KSR_RNK
      
       FROM 
          
          (SELECT 
            SNACKS_PCT_TO_BUD
			,MF_PCT_TO_BUD
			 ,SHP_SNACKS_PCT_TO_BUD
	   ,SHP_MF_PCT_TO_BUD
         , MAX_CALL_COVRG
		 ,SAFETY_TRN
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,[TERR]
	  ,TERR_NBR
       FROM 
	   [dbo].[UVW_REX_RPT_PRFCT_STORE_METRICS_KSR]) B ) KSR
	   INNER JOIN

--Calculating the KSM rank based on Snacks NSD scorecard Metrics


(
SELECT 
      [RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
      ,(( SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks POS % to Budget','KSM'))
	  +( MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods POS % to Budget','KSM'))
	  +(SHP_SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks Shipment % to Budget','KSM'))
	  +(SHP_MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods Shipment % to Budget','KSM'))
	  +([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Max Call Coverage', 'KSM'))
	  +([SAFETY_TRN]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Safety: Training', 'KSM'))
	  ) AS NATL_KSM_METRIC
       ,RANK() OVER (ORDER BY (( SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks POS % to Budget','KSM'))
	  +( MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods POS % to Budget','KSM'))
	  +(SHP_SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks Shipment % to Budget','KSM'))
	  +(SHP_MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods Shipment % to Budget','KSM'))
	  +([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Max Call Coverage', 'KSM'))
	  +([SAFETY_TRN]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Safety: Training', 'KSM'))
	  ) DESC) AS NATL_KSM_RNK
      
       FROM 
          
          (SELECT 
            SNACKS_PCT_TO_BUD
			,MF_PCT_TO_BUD
			 ,SHP_SNACKS_PCT_TO_BUD
	   ,SHP_MF_PCT_TO_BUD
         , MAX_CALL_COVRG
		 ,SAFETY_TRN
      ,[RGN]
	  ,RGN_NBR
      ,[ZN]
	  ,ZN_NBR
       FROM 
	  [UVW_REX_RPT_PRFCT_STORE_METRICS_KSM]
	   ) B 
) KSM 
ON 
KSR.[RGN_NBR]=KSM.[RGN_NBR]
AND
KSR.[ZN_NBR]=KSM.[ZN_NBR]
  INNER JOIN

--Calculating the KSM rank based on Snacks NSD scorecard Metrics


(
SELECT 
      [RGN]
	  ,RGN_NBR
      ,(( SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks POS % to Budget','RSD'))
	  +( MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods POS % to Budget','RSD'))
	  +(SHP_SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks Shipment % to Budget','RSD'))
	  +(SHP_MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods Shipment % to Budget','RSD'))
	  +([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Max Call Coverage', 'RSD'))
	  +([SAFETY_TRN]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Safety: Training', 'RSD'))
	  ) AS NATL_RSD_METRIC
       ,RANK() OVER (ORDER BY (( SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks POS % to Budget','RSD'))
	  +( MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods POS % to Budget','RSD'))
	  +(SHP_SNACKS_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Snacks Shipment % to Budget','RSD'))
	  +(SHP_MF_PCT_TO_BUD * [KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Morning Foods Shipment % to Budget','RSD'))
	  +([MAX_CALL_COVRG]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Max Call Coverage', 'RSD'))
	  +([SAFETY_TRN]*[KNA_SALES].[dbo].[fn_REX_NSD_SCORECARD]('Safety: Training', 'RSD'))
	  ) DESC) AS NATL_RSD_RNK
      
       FROM 
          
          (SELECT 
            SNACKS_PCT_TO_BUD
			,MF_PCT_TO_BUD
			 ,SHP_SNACKS_PCT_TO_BUD
	   ,SHP_MF_PCT_TO_BUD
         , MAX_CALL_COVRG
		 ,SAFETY_TRN
      ,[RGN]
	  ,RGN_NBR
       FROM
	dbo.[UVW_REX_RPT_PRFCT_STORE_METRICS_RSD]
	   ) B 
) RSD
ON 
KSM.[RGN_NBR]=RSD.[RGN_NBR]


GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_STORE_PRFM_WALMART_POS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	05/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the Walmart,Kroger POS_Sales,Point of Distribution for Present and Past year for Last 4 weeks,13 weeks,QTD and YTD
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_RPT_STORE_PRFM_WALMART_POS]
AS


SELECT        
'KELLOGG CORPORATION' AS CORP, 
CATG COLLATE DATABASE_DEFAULT AS CATG,
BRAND COLLATE DATABASE_DEFAULT AS BRAND,
NULL AS HIER_TYP,
'KELLOGG CORPORATION' AS CO, 
NULL AS CTRY,
NULL AS CHNL, 
RGN COLLATE DATABASE_DEFAULT AS RGN,
ZN COLLATE DATABASE_DEFAULT AS ZN,
NULL AS DSTR,
TERR COLLATE DATABASE_DEFAULT AS TERR , 
PLN_TO COLLATE DATABASE_DEFAULT AS PLN_TO,
PLN_TO_NBR COLLATE DATABASE_DEFAULT AS PLN_TO_NBR,
CHN COLLATE DATABASE_DEFAULT AS CHN,
CHN_NBR COLLATE DATABASE_DEFAULT AS CHN_NBR,
SOLD_TO  COLLATE DATABASE_DEFAULT AS SOLD_TO,
SOLD_TO_NBR  COLLATE DATABASE_DEFAULT AS SOLD_TO_NBR,
NULL AS PD_DT,
NULL AS PD_FULL_DESC,
PD_DESC COLLATE DATABASE_DEFAULT AS PD_DESC,
TOTL_SALES   AS DOL_SALE, 
TOTL_SALES_YA  AS DOL_SALE_YR_AGO,
NULL AS DOL_SHR,
NULL AS DOL_SHR_YR_AGO,
TDP  AS TOTL_DIST_PNT,
TDP_YA  AS TOTL_DIST_PNT_YA
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLD_TO,RGN,ZN,TERR,PLN_TO,PLN_TO_NBR,CHN,CHN_NBR,SOLD_TO_NBR,CATG,BRAND,TOTL_SALES,TOTL_SALES_YA,TDP,TDP_YA,PD_DESC FROM KG_EXTERNAL.UVW_SNACKS_RPT_ORC_POS')

UNION ALL

SELECT        
'KELLOGG CORPORATION' AS CORP, 
WM.CATG COLLATE DATABASE_DEFAULT AS CATG,
WM.BRAND COLLATE DATABASE_DEFAULT AS BRAND,
NULL AS HIER_TYP,
'KELLOGG CORPORATION' AS CO, 
NULL AS CTRY,
NULL AS CHNL, 
TD_CH.RGN,
TD_CH.ZN,
NULL AS DSTR,
TD_CH.TERR, 
TD_CH.PLN_TO,
TD_CH.PLN_TO_NBR,
TD_CH.CHN,
TD_CH.CHN_NBR,
TD_CH.SOLD_TO,
TD_CH.SOLD_TO_NBR,
NULL AS PD_DT,
NULL AS PD_FULL_DESC,
WM.PD_DESC,
WM.TOTL_SALES AS DOL_SALE, 
WM.TOTL_SALES_YA AS DOL_SALE_YR_AGO,
NULL AS DOL_SHR,
NULL AS DOL_SHR_YR_AGO,
TOTL_DIST_PNT,
TOTL_DIST_PNT_YA
FROM	
[KNA_SALES].[dbo].[UVW_SNACKS_STORE_PRFM_WALMART_POS] WM WITH (NOLOCK)
INNER JOIN [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] AS TD_CH  WITH (NOLOCK)
--Here we joining the POS_WALMART view with the Customer HIerarchy view based on the SOLD TO NBR
ON WM.SOLDTO COLLATE SQL_Latin1_General_CP1_CI_AS = TD_CH.SOLD_TO_NBR






GO
/****** Object:  View [dbo].[UVW_SNACKS_SRVY_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE VIEW [dbo].[UVW_SNACKS_SRVY_CUST_HIER]
AS
SELECT  SD.SOLD_TO_NBR
		,CUST.SOLD_TO 
		,CUST.PLN_TO
		,CUST.PLN_TO_NBR
		,CUST.SSTREETADD AS ADDR
		,CUST.SCITY AS CITY
	    ,CUST.SST AS ST
	    ,CUST.RGN
        ,CUST.ZN
        ,CUST.TERR
		,CUST.SNAME 
        ,CUST.[SLAT]
        ,CUST.[SLONG]
	    ,CUST.ZLAT
	    ,CUST.ZLONG
	    ,CUST.TLAT
	    ,CUST.TLONG
        ,CUST.[STDLINXSCD]
        ,MATERIAL_DESC AS MATRL_DESC
        ,MATRL_NBR 
        ,STATUS AS STS
  FROM [KNA_EXTERNAL].[USER_SALES].[SNACKS_AE_SURVEY] AS SD WITH (NOLOCK)
  INNER JOIN
  [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] AS CUST WITH (NOLOCK)
  ON
  SD.[SOLD_TO_NBR] = CUST.[SOLD_TO_NBR]
  WHERE
  SD.STATUS = 'Accepted'



GO
/****** Object:  View [dbo].[UVW_SNACKS_UPC_PKG_PROD_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO















-- =============================================
-- Author			:	Vikram Ganti
-- Create date		:	05/20/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	Returns the Product Hierarchy based on the Material number.
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_UPC_PKG_PROD_HIER]
AS
--SELECT A.UPC,
--       A.MATRL_NBR,
--	   B.MATRL_DESC,
--	   C.PROD_HIER_CATEGORY,
--	   C.PROD_HIER_CATEGORY_DESC,
--	   C.PROD_HIER_SUB_CATEGORY,
--	   C.PROD_HIER_SUB_CATEGORY_DESC,
--	   C.PROD_HIER_BRAND,
--	   C.PROD_HIER_BRAND_DESC
--FROM
----  GTIN-12 (UPC-A): this is a 12-digit number used primarily in North America
----  Trimming last digit to get the UPC code.
--(SELECT CAST(SUBSTRING(GTIN, 1, LEN(GTIN)-1) AS DECIMAL(18,0)) AS UPC,
--       MAX(KG_VIEWS.KNA.UVW_MATRL_GTIN.MATRL_NBR) AS MATRL_NBR
--FROM KG_VIEWS.KNA.UVW_MATRL_GTIN
--WHERE GTIN_TYP = 'UPC' -- AND UOM='PKG'
--GROUP BY CAST(SUBSTRING(GTIN, 1, LEN(GTIN)-1) AS DECIMAL(18,0))
--) A
---- Joining UVW_MATRL_GTIN and UVW_MATRL specific to UPC PKG.
--INNER JOIN KG_VIEWS.KNA.UVW_MATRL B
--ON B.MATRL_NBR = A.MATRL_NBR
--INNER JOIN KG_VIEWS.KNA.UVW_PROD_HIER C
--ON C.PROD_HIER = B.PROD_HIER
--WHERE UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%KASHI%' AND UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%BEAR NAKED%' AND UPPER(C.PROD_HIER_BRAND_DESC) NOT LIKE '%STRETCH%'

SELECT        UPC, MATRL_NBR, MATRL_DESC, PROD_HIER_CATEGORY, PROD_HIER_CATEGORY_DESC, PROD_HIER_SUB_CATEGORY, PROD_HIER_SUB_CATEGORY_DESC, PROD_HIER_BRAND, PROD_HIER_BRAND_DESC
FROM            dbo.SNACKS_UPC_PKG_PROD_HIER WITH (NOLOCK)




GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_INOVTN_SPEED_SCAN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/02/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	Returns the  Nielsen Innnovation Items which are Total Authorized,Total Items Not Authorized,Total Items which are not in Distribution per store
-- Comments			:
-- =============================================



CREATE VIEW  [dbo].[UVW_SNACKS_RPT_INOVTN_SPEED_SCAN]
AS

SELECT  [RGN]
      ,[ZN]
      ,[TERR]
      , [STORE]
      ,[SLAT]
      ,[SLONG]
	  ,ZLAT
	  ,ZLONG
	  ,TLAT
	  ,TLONG
      ,[STDLINXSCD]
	  ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,[UPC]
      ,[PLN_TO] 
      ,[PLN_TO_NBR]
      , [ITEM]
	  , CATG
	  ,[ONSHELF_DT]
      ,STS
      ,[SNAME]
      ,[ADDR]
      ,[CITY]
      ,[ST]
      , [TOTL_AUTHZN]
      ,[TOTL_ITM_SELLING]
      ,[TOTL_NOT_IN_DISTBN]
	  ,CONVERT(CHAR(10),DATEADD(wk, -1, DATEADD(wk, DATEDIFF(wk, 0,getdate()), -2)),101) AS LAST_MODFD
	  --,right([All_Periods], charindex('/', ([All_Periods])) -6) AS LAST_UPDATED
	 --,CASE WHEN [TOTAL_AUTHORIZATION]=0 AND [TOTAL_ITEM_SELLING] = 0 AND [TOTAL_NOT_IN_DISTRIB]=1 THEN 0 
	 --ELSE 1 END AS FLAG
	 FROM (
	SELECT 
	   [RGN]
      ,[ZN]
      ,[TERR]
      ,[SOLD_TO] AS [STORE]
      ,[SLAT]
      ,[SLONG]
	  ,ZLAT
	  ,ZLONG
	  ,TLAT
	  ,TLONG
      ,[STDLINXSCD]
	  ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,PD.[UPC]
      ,[PLN_TO] 
      ,[PLN_TO_NBR]
      ,PROD.MATRL_DESC AS [ITEM]
	  ,PROD.PROD_HIER_CATEGORY_DESC AS CATG
	  ,PD.[On Shelf Date] AS [ONSHELF_DT]
      ,STS
      ,[SNAME]
      ,[ADDR]
      ,[CITY]
      ,[ST]
	--Here When the OnShelfDate is Null or Empty it means the items are not authorized or vice versa
		,CASE WHEN PD.[On Shelf Date] = '' OR  PD.[On Shelf Date] IS NULL THEN 0  ELSE 1 END AS TOTL_AUTHZN
	--when the Store Number,UPC matches and ACV value is gretaer than Zero then the items are selling otherwise not
		,CASE WHEN SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC]) AND AE.ACV >  0 THEN 1 ELSE 0 END AS [TOTL_ITM_SELLING]
		--,CASE WHEN PD.[On Shelf Date] = '' OR  PD.[On Shelf Date] IS NULL  Then 0 
		--    ELSE 
		-- CASE WHEN SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC]) AND AE.ACV >  0 THEN 0 ELSE 1 END END as [TOTL_NOT_IN_DISTBN]
		
		,CASE WHEN (CASE WHEN SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC]) AND AE.ACV >  0 THEN 1 ELSE 0 END) = 1  THEN 0 ELSE 1 END AS [TOTL_NOT_IN_DISTBN]
		FROM
	 [KNA_SALES].[dbo].[UVW_SNACKS_SRVY_CUST_HIER] AS SD
		INNER JOIN
		(SELECT [PT_NBR],[PT Name],[BU],[CAT],[Acceptance Status],[On Shelf Date],[UPC],[MATERIAL_NBR] FROM [KNA_EXTERNAL].[USER_SALES].[SNACKS_AE_PT]
		   WHERE BU = 'Snacks' ) AS PD
		ON CONVERT(DECIMAL(10,0),SD.[PLN_TO_NBR]) = PD.[PT_NBR] AND SD.[MATRL_NBR] = PD.[MATERIAL_NBR]
		INNER JOIN KNA_EXTERNAL.AOD.SNACKS_AE_SURVEY AS AE
		ON SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC])
		INNER JOIN [KNA_SALES].[dbo].[UVW_SNACKS_UPC_PKG_PROD_HIER] AS PROD
		ON SD.[MATRL_NBR] = CONVERT(DECIMAL(18,0),PROD.MATRL_NBR)

		UNION ALL

	  SELECT 
	   [RGN]
      ,[ZN]
      ,[TERR]
      ,[SOLD_TO] AS [STORE]
      ,[SLAT]
      ,[SLONG]
	  ,ZLAT
	  ,ZLONG
	  ,TLAT
	  ,TLONG
      ,[STDLINXSCD]
	  ,[SOLD_TO]
      ,[SOLD_TO_NBR]
	  ,PD.[UPC]
      ,[PLN_TO] 
      ,[PLN_TO_NBR]
      ,PROD.MATRL_DESC AS [ITEM]
	  --,PD.Cat AS Category
	  ,PROD.PROD_HIER_CATEGORY_DESC AS CATG
      --,TRY_CONVERT(date,PD.[On Shelf Date]) AS [ONSHELF_DT]
	  ,PD.[On Shelf Date] AS [ONSHELF_DT]
      ,STS
      ,[SNAME]
      ,[ADDR]
      ,[CITY]
      ,[ST]

	,CASE WHEN PD.[On Shelf Date] = '' OR  PD.[On Shelf Date] IS NULL THEN 0  ELSE 1 END AS TOTAL_AUTHZN
	,CASE WHEN SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND  PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC]) AND AE.ACV >  0 THEN 1 ELSE 0 END AS [TOTL_ITM_SELLING]
	--,CASE WHEN PD.[On Shelf Date] = '' OR  PD.[On Shelf Date] IS NULL  Then 0 
	--	    ELSE 
	--	 CASE WHEN SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC]) AND AE.ACV >  0 THEN 0 ELSE 1 END END as [TOTL_NOT_IN_DISTBN]
	,CASE WHEN (CASE WHEN SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC]) AND AE.ACV >  0 THEN 1 ELSE 0 END) = 1  THEN 0 ELSE 1 END AS [TOTL_NOT_IN_DISTBN]
		FROM
		[KNA_SALES].[dbo].[UVW_SNACKS_SRVY_CUST_HIER] AS SD
		INNER JOIN
		(SELECT [PT_NBR],[PT Name],[BU],[CAT],[Acceptance Status],[On Shelf Date],[UPC],[MATERIAL_NBR] FROM [KNA_EXTERNAL].[USER_SALES].[SNACKS_AE_PT]
		   WHERE BU = 'Snacks' ) AS PD
		ON CONVERT(DECIMAL(10,0),SD.[PLN_TO_NBR]) = PD.[PT_NBR] AND SD.[MATRL_NBR] = PD.[MATERIAL_NBR]
		LEFT OUTER JOIN KNA_EXTERNAL.AOD.SNACKS_AE_SURVEY AS AE
		ON SD.STDLINXSCD = AE.TDLINX_STORE_CODE AND  PD.[UPC] = CONVERT(DECIMAL(12,0),AE.[UPC])
		INNER JOIN [KNA_SALES].[dbo].[UVW_SNACKS_UPC_PKG_PROD_HIER] AS PROD
		ON SD.[MATRL_NBR] = CONVERT(DECIMAL(18,0),PROD.MATRL_NBR)

	WHERE AE.UPC IS  NULL AND PD.UPC IS NOT NULL) AS INSCAN
	WHERE CAST ([TOTL_AUTHZN] as varchar(4))+CAST([TOTL_ITM_SELLING]as varchar(4))+ CAST([TOTL_NOT_IN_DISTBN]as varchar(4))!='001'
	--WHERE INSCAN.FLAG=1



GO
/****** Object:  View [dbo].[UVW_SNACKS_STORE_PRFM_POS_WALMART_KSR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO















-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	05/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the POS_Sales for all Quarters Q1,Q2,Q3 and YTD
-- Comments			:
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_STORE_PRFM_POS_WALMART_KSR]

AS


SELECT
		  WM.SOLDTO
		  ,WM.[CATG]
         ,SUM(WM.[TOTL_SALES]) AS [TOTL_SALES]
         ,'Q'+CAST((FISC.FISC_QTR) AS VARCHAR(1)) as PD_DESC
		 ,WM.YR
FROM
       KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WM WITH (NOLOCK)
	   CROSS JOIN [KNA_SALES].dbo.UVW_SNACKS_PD_DT AS DT WITH (NOLOCK)
	   INNER JOIN 
	   KG_VIEWS.dbo.[UVW_FISC_CAL] FISC WITH (NOLOCK)
		ON 
	   FISC.FISC_YR = YEAR(DT.PD_DT)
	   AND
       FISC_YR = WM.[YR]
       AND
	   FISC_WK = WM.WK
	   AND
       FISC_WK <= DATEPART(WEEK,DT.PD_DT)
GROUP BY 
		  WM.SOLDTO
		  ,WM.[CATG]
		  ,'Q'+CAST((FISC.FISC_QTR) AS VARCHAR(1))
		  ,WM.YR

UNION ALL		  
SELECT
		  WM.SOLDTO
		  ,WM.[CATG]
         ,SUM(CASE WHEN WM.[YR] = YEAR(DT.PD_DT) AND WM.[WK]=WM.[WK]  THEN WM.[TOTL_SALES] END) AS [TOTL_SALES]
		 ,'YTD' AS PD_DESC
		 ,WM.YR
FROM
       KNA_SALES.[dbo].[SNACKS_POS_WALMART_WK] AS WM WITH (NOLOCK)
	   CROSS JOIN [KNA_SALES].dbo.UVW_SNACKS_PD_DT AS DT WITH (NOLOCK)
	   INNER JOIN 
	   KG_VIEWS.dbo.[UVW_FISC_CAL] FISC WITH (NOLOCK)
		ON 
	   FISC.FISC_YR = YEAR(DT.PD_DT)
	   AND
       FISC_YR = WM.[YR]
       AND
	   FISC_WK = WM.WK
	   AND
       FISC_WK <= DATEPART(WEEK,DT.PD_DT)
GROUP BY 
		  WM.SOLDTO
		  ,WM.[CATG]
		  ,WM.YR


         




GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_KSR_BUD_GEO]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	05/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Returns the POS_Sales and Budget for Nielsen and Walmart for Q1,Q2,Q3,Q4 and YTD at Chain Level.
-- Comments			:
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_RPT_KSR_BUD_GEO]
AS

SELECT  [CORP]
      ,[CATG]
      ,[PD_DT]
      ,[CO]
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TYP]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[PD_FULL_DESC]
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS DOL_SALE
      ,SUM([BUD]) AS BUD
      ,[PACE]
--Here we are making use of the  the KSR_Budget view
  FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_KSR_BUD] WITH (NOLOCK)
 GROUP BY 
  [CORP]
      ,[CATG]
      ,[PD_DT]
      ,[CO]
      ,[RGN]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[TYP]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[PD_FULL_DESC]
      ,[PD_DESC]
	  ,[PACE]


	 


GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_KSR_BUD_GEO_RNK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Calculates the Rank based on Dollar_Sale to Budget  for each period at Territorry Level
-- Comments			:
-- =============================================



/****** Script for SelectTopNRows command from SSMS  ******/
CREATE  VIEW [dbo].[UVW_SNACKS_RPT_KSR_BUD_GEO_RNK]
AS

SELECT  
      RGN
	  ,ZN
      ,[TERR]
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS DOL_SALE
      ,SUM([BUD]) AS BUD
	  ,SUM([DOL_SALE])/NULLIF(SUM([BUD]),0) AS PCT_TO_BUD -- Dollar Sale to Budget
--Calculating the rank for Each Period based on Dollar Sale to Budget
	  ,RANK() OVER (PARTITION BY [PD_DESC] ORDER BY (SUM([DOL_SALE])/NULLIF(SUM([BUD]),0)) DESC) AS GEO_RNK
  FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_KSR_BUD_GEO] WITH (NOLOCK)
  
  GROUP BY
		RGN
	  ,ZN
      ,[TERR]
      ,[PD_DESC]
	
	


GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_KSR_BUD_TOTL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




















-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	05/20/2017
-- Modified By		:
-- Modified date	:	
-- Description		:	Returns the POS_Sales,GSV and Budget for all the Paln_To's for Q1,Q2,Q3,Q4 and YTD at Plan To Level.
-- Comments			:
-- =============================================

CREATE VIEW [dbo].[UVW_SNACKS_RPT_KSR_BUD_TOTL]
AS

SELECT  
	[CORP] 
      ,[CATG] COLLATE DATABASE_DEFAULT AS [CATG]
      ,[PD_DT]
      ,[CO]  COLLATE DATABASE_DEFAULT AS [CO]
      ,[TYP] COLLATE DATABASE_DEFAULT AS [TYP]
      ,[PLN_TO] COLLATE DATABASE_DEFAULT AS [PLN_TO]
      ,[PLN_TO_NBR] COLLATE DATABASE_DEFAULT AS [PLN_TO_NBR]
      , [PD_FULL_DESC]
      ,[PD_DESC] COLLATE DATABASE_DEFAULT AS [PD_DESC]
      ,SUM([DOL_SALE]) AS [DOL_SALE]
      ,SUM([BUD]) AS [BUD]
      ,([PACE]) AS [PACE]
--Here we are making use of the KSR_BUDGET view and rolling up to the Plan to Level
   FROM   [KNA_SALES].[dbo].[UVW_SNACKS_RPT_KSR_BUD] WITH (NOLOCK)
   GROUP BY 
   [CORP]
      ,[CATG]
      ,[PD_DT]
      ,[CO]
      ,[TYP]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[PD_FULL_DESC]
      ,[PD_DESC]
	  ,[PACE]

UNION ALL

-- Gross Sale Value for all Quarters Q1,Q2,Q3 and Q4
SELECT
'KELLOGG CORPORATION'  AS CORP
,CASE WHEN UPPER(PROD_HIER_CATEGORY_DESC) = 'BARS' THEN 'Wholesome' ELSE PROD_HIER_CATEGORY_DESC END COLLATE DATABASE_DEFAULT AS CATG
--,PROD_HIER_CATEGORY_DESC COLLATE DATABASE_DEFAULT AS CATG
,SHIP.PD_DT
,'KELLOGG CORPORATION' AS CO
,'SHIPMENTS' AS TYP
,TD_CH.PLN_TO --Plan To Name
,SHIP.PLN_TO AS PLN_TO_NBR
,NULL as PD_FULL_DESC
,SHIP.[PD_DESC] -- Period Description
--Current Year GSV
,SUM([DOL_SALE]) AS [DOL_SALE]
--Budget
,ISNULL(BUDG.BUD,0) AS BUD
,[KNA_SALES].[dbo].[UDF_SNACKS_PACE_PCT](SHIP.PD_DT) * 100 AS PACE
FROM 
[KNA_SALES].[dbo].[UVW_SNACKS_GSV_KSR] AS SHIP WITH (NOLOCK)
INNER JOIN 
(SELECT 
 PLN_TO
 ,PLN_TO_NBR 
 FROM
 [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)
 GROUP BY
 PLN_TO
 ,PLN_TO_NBR
 ) AS TD_CH
--Here we are joining the Ship table with Customer Hierarchy on Plant To Number
ON SHIP.[PLN_TO] = TD_CH.PLN_TO_NBR COLLATE SQL_Latin1_General_CP1_CI_AS
LEFT OUTER JOIN 
KNA_SALES.dbo.[UVW_SNACKS_GSV_BUD] AS BUDG WITH (NOLOCK)
--Here we are joining with the GSV_Budget on Plan to Number,Category
ON CONVERT(DECIMAL(10,0),SHIP.[PLN_TO]) = BUDG.[PLN_TO_NBR] AND UPPER(PROD_HIER_CATEGORY_DESC) = BUDG.CATG
AND
SHIP.PD_DESC = BUDG.PD_DESC


GROUP BY 
PROD_HIER_CATEGORY_DESC,
SHIP.PD_DT,
TD_CH.PLN_TO,
SHIP.PLN_TO,
SHIP.PD_DESC,
BUDG.BUD,
SHIP.PD_DT









GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_KSR_BUD_STORE_RNK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	06/26/2017
-- Modified By		:
-- Modified date	:	
-- Description		: Calculates the both KSR_Rank  and Store Rank based on Dollar_Sale to Budget for each period
-- Comments			:
-- =============================================





CREATE  VIEW [dbo].[UVW_SNACKS_RPT_KSR_BUD_STORE_RNK]
AS
SELECT KSR_STORE_RNK.[RGN]
      ,KSR_STORE_RNK.[ZN]
	  ,KSR_STORE_RNK.[SOLD_TO]
      ,KSR_STORE_RNK.[TERR]
      ,KSR_STORE_RNK.[PD_DESC]
	  ,KSR_STORE_RNK.DOL_SALE
	  ,KSR_STORE_RNK.BUD
	  ,KSR_RNK
	  ,STORE_RNK
	  FROM
(
SELECT  
       [RGN]
      ,[ZN]
      ,[TERR]
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS DOL_SALE
      ,SUM([BUD]) AS BUD
	  ,RANK() OVER (PARTITION BY [PD_DESC] ORDER BY (SUM([DOL_SALE])/NULLIF(SUM([BUD]),0)) DESC) AS [KSR_RNK]
  FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_KSR_BUD_GEO] WITH (NOLOCK)
  GROUP BY
  [RGN]
      ,[ZN]
      ,[TERR]
      ,[PD_DESC]) AS KSR_TERR_RNK
	  INNER JOIN
(SELECT  
       [RGN]
      ,[ZN]
	  ,[SOLD_TO]
      ,[TERR]
      ,[PD_DESC]
      ,SUM([DOL_SALE]) AS DOL_SALE
      ,SUM([BUD]) AS BUD
	  ,RANK() OVER (PARTITION BY [PD_DESC] ORDER BY (SUM([DOL_SALE])/NULLIF(SUM([BUD]),0)) DESC) AS [STORE_RNK]
  FROM [KNA_SALES].[dbo].[UVW_SNACKS_RPT_KSR_BUD] WITH (NOLOCK)
  GROUP BY
  [RGN]
  ,[ZN]
  ,[TERR]
  ,SOLD_TO
  ,[PD_DESC]) KSR_STORE_RNK
	  ON
	  KSR_TERR_RNK.RGN = KSR_STORE_RNK.RGN
	  AND
	  KSR_TERR_RNK.ZN = KSR_STORE_RNK.ZN
	  AND
	  KSR_TERR_RNK.TERR = KSR_STORE_RNK.TERR
	  AND
	  KSR_TERR_RNK.PD_DESC = KSR_STORE_RNK.PD_DESC


GO
/****** Object:  View [dbo].[UVW_REX_SIF_ORC_STORE_PRFM_QTD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author			: Abhilash Mogili
-- Create date		: 05/16/2018
-- Description		: Stay in Front KPI Store Sales for the present quarter for Walmart and kroger
-- Modified Date	: 
-- Comments			: 
-- =============================================



CREATE VIEW [dbo].[UVW_REX_SIF_ORC_STORE_PRFM_QTD]
AS

SELECT 
RGN_NBR, 
ZN_NBR,
TERR_NBR,
PLN_TO_NBR, 
CHN_NBR,  
SOLD_TO_NBR,
BU,
SUM(DOL_SALE) AS DOL_SALE,
PD_DESC
FROM

(

SELECT        
TD_CH.RGN_NBR, 
TD_CH.ZN_NBR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO_NBR, 
TD_CH.CHN_NBR,  
TD_CH.SOLD_TO_NBR,
BU,
(ORC.TOTL_SALES) as DOL_SALE,
ORC.PD_DESC 
FROM	 
(SELECT
		  WM.SOLDTO
         ,SUM(CASE WHEN WM.[YR] = YEAR(DT.PD_DT) AND WM.[WK]=WM.[WK]  THEN WM.[TOTL_SALES] END) AS [TOTL_SALES]
		 ,CASE WHEN WM.CATG IN ('Cereal'
                                      ,'Toaster Pastries'
                                      ) THEN 'Morning Foods' ELSE 'Snacks' END AS BU
         ,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1)) AS PD_DESC
		 ,PD_DT
FROM
       KNA_SALES.dbo.REX_POS_WALMART_WK AS WM WITH (NOLOCK)
       CROSS JOIN dbo.UVW_REX_PD_DT as DT WITH (NOLOCK)
WHERE
WM.CATG != 'Ingredients'
AND
EXISTS 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)

 WHERE
 FISC_YR = YEAR(DT.PD_DT)
 AND
 FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
  AND
 FC.FISC_WK <= DATEPART(WEEK,DT.PD_DT)
AND
FC.FISC_YR = WM.[YR]
AND FC.FISC_WK = WM.[WK]
)
GROUP BY 
		  WM.SOLDTO
         ,'Q'+ CAST(DATEPART(QUARTER,DT.PD_DT) AS VARCHAR(1))
		 ,CASE WHEN WM.CATG IN ('Cereal'
                                      ,'Toaster Pastries'
                                      ) THEN 'Morning Foods' ELSE 'Snacks' END
									  		 ,PD_DT

UNION ALL
SELECT
		  ORC_POS.SOLDTO
         ,ORC_POS.[TOTL_SALES] AS [TOTL_SALES]
		 ,BU
         ,'Q'+ CAST(DATEPART(QUARTER,ORC_POS.PD_DT) AS VARCHAR(1)) AS PD_DESC
		 ,PD_DT
FROM
OPENQUERY([MYSQLMEMSQL Prod], 'SELECT SOLDTO,PD_DT,BU,TOTL_SALES FROM KNA_EXTERNAL.UVW_REX_SIF_KROGER_STORE_PRFM_QTD') AS ORC_POS) AS ORC 
INNER JOIN 
[dbo].[REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
ON CONVERT(INT,ORC.SOLDTO  COLLATE SQL_Latin1_General_CP1_CI_AS) = CONVERT(INT,TD_CH.SOLD_TO_NBR)
AND
YEAR(ORC.PD_DT) = TD_CH.FISC_YR
AND
DATEPART(QUARTER,ORC.PD_DT) = TD_CH.FISC_QTR

UNION ALL

SELECT 
TD_CH.RGN_NBR,
TD_CH.ZN_NBR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO_NBR,
TD_CH.CHN_NBR,
TD_CH.SOLD_TO_NBR,
'Morning Foods' AS BU,
0 as DOL_SALE,
'Q'+CAST(DATEPART(QUARTER, PD_DT) AS VARCHAR(1)) AS PD_DESC
 FROM 
 [KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
 INNER JOIN
  [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
 ON
 TD_CH.FISC_YR = YEAR(DT.PD_DT) AND TD_CH.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
WHERE PLN_TO_NBR IN ('0000300994' ,'0000300855')
UNION ALL

SELECT 
TD_CH.RGN_NBR,
TD_CH.ZN_NBR,
TD_CH.TERR_NBR,
TD_CH.PLN_TO_NBR,
TD_CH.CHN_NBR,
TD_CH.SOLD_TO_NBR,
'Snacks' AS BU,
0 as DOL_SALE,
'Q'+CAST(DATEPART(QUARTER, PD_DT) AS VARCHAR(1)) AS PD_DESC
 FROM 
 [KNA_SALES].[dbo].[REX_TDLINX_CUST_HIER] AS TD_CH WITH (NOLOCK)
 INNER JOIN
  [KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
 ON
 TD_CH.FISC_YR = YEAR(DT.PD_DT) AND TD_CH.FISC_QTR = DATEPART(QUARTER,DT.PD_DT)
WHERE PLN_TO_NBR IN ('0000300994' ,'0000300855')
) WM_KROGER
GROUP BY
RGN_NBR, 
ZN_NBR,
TERR_NBR,
PLN_TO_NBR, 
CHN_NBR,  
SOLD_TO_NBR,
BU,
PD_DESC







GO
/****** Object:  View [dbo].[UVW_REX_POS_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author			:	Abhilash Mogili
-- ALTER date		:	03/24/2018
-- Modified By		:  
-- Modified date	:	
-- Description		: To get  POS store Budget  for all the Quarters(Q1,Q2,Q3,Q4) for Snacks and MF Categories								
-- =============================================

CREATE VIEW [dbo].[UVW_REX_POS_BUD]
AS 

--POS Budget for all the Quarters based on the Fiscal Calendar for all Snacks and MF Categories
SELECT  
Q_TOTAL AS BUD
,SOLD_TO_NBR
,CASE WHEN CATEGORY = 'BARS'                THEN 'WHOLESOME' 
ELSE CATEGORY END AS CATG
,'Q'+CAST(BUDG.QTR AS VARCHAR(1)) AS PD_DESC
,BUDG.YR as FISC_YR
FROM 
[KNA_EXTERNAL].[USER_SALES].[REX_POS_BUDGET] AS BUDG WITH (NOLOCK)
WHERE 
BUDG.QTR IS NOT NULL
AND
EXISTS
--Here we are using the Kelloggs Fiscal Calendar to get the Budget based on the Period Date 
(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC WITH (NOLOCK)
CROSS JOIN
[KNA_SALES].[dbo].[UVW_REX_PD_DT] AS DT WITH (NOLOCK)
WHERE
FC.FISC_YR = YEAR(PD_DT)
AND
FISC_WK_END_DT <= PD_DT
AND FC.FISC_QTR = BUDG.QTR
)







GO
/****** Object:  View [dbo].[field_category]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[field_category] as (select a.Base_Case_Code, a.Field_Category , b.base_material, b.Cal_Year, b.Period  from MaterialMap a join STG_Joywave_Transaction b
on b.Base_Material = a.Base_Case_Code where b.Cal_Year = 2015 and b.Period = 11)
GO
/****** Object:  View [dbo].[super_plan_to]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[super_plan_to] as (select a.SoldTo_Key, a.PlanTo_Name,SoldTo_Num, c.Super_PlanTo, b.Cal_Year , b.Period from  SoldToMap a join STG_Joywave_Transaction b on b.SoldTo_Num = a.SoldTo_Key
join PlanToMap c on a.PlanTo_Name = c.PlanTo_Name where b.Cal_Year = 2015 and b.Period = 11)
GO
/****** Object:  View [dbo].[UVW__SUMRY_AGGR_01_FLTR]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW__SUMRY_AGGR_01_FLTR]
AS
SELECT 
Acosta_BOB_Rgn as ACOSTA_BOB_RGN,
Base_Material as BASE_MATRL,
Category as CATG,
Chain as CHN,
Channel as CHNL,
District_Name as DSTR_NM,
execdate as EXEC_DT,
Field_Category as FLD_CATG,
Fis_Year as FISC_YR,
Gross_Sales_Cs_Dir as GROS_SALES_CASE_DIR,
Gross_Sales_Cs_InDir as GROS_SALES_CASE_INDIR,
Gross_Sales_Dollars_Dir as GROS_SALES_DOL_DIR,
Gross_Sales_Dollars_InDir as GROS_SALES_DOL_INDIR,
Master_Brand as MSTR_BRAND,
Mtl_Desc as MATRL_DESC,
Open_Ordrs_Dollars as OPN_ORDR_DOL,
Open_Ords_Cs as OPN_ORDR_CASE,
Period as PD,
PlanTo_Name as PLNTO_NM,
Prd_Catg as PROD_CATG,
SoldTo_Name as SOLDTO_NM,
SoldTo_Num as SOLDTO_NBR,
Sub_Brand as SUB_BRAND,
Sub_Chain as SUB_CHN,
Super_PlanTo as SUPR_PLNTO,
Territory_Name as TERR_NM,
Trade_Class as TRADE_CLAS,
Zone_Name as ZN_NM
FROM [dbo].[Summ_Agg_01] WITH (NOLOCK)
WHERE Fis_Year >= YEAR(GETDATE())-2 AND Channel = 'CONVENIENCE';


GO
/****** Object:  View [dbo].[UVW_Mrktng_Cnsnss_Icr]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_Mrktng_Cnsnss_Icr]
 AS 
 SELECT [Proj]
      ,[Mrktng_Sbprjct]
      ,[Spcl Cse Cd]
      ,[Mtl_Desc]
      ,[Lnch_Dt]
      ,[Lnch Yr]
      ,[Sts]
      ,[Chnnl]
      ,[Ctg]
      ,[Fisc_Yr]
      ,[Pd]
      ,[Opn_Ords_Cs]
      ,[Gros_Sls_Cs_Dir]
      ,[Gros_Sls_Cs_Ndir]
      ,[Cust_Gros_sls_Cs_Dir]
      ,[Dp_2Plg]
      ,[Dp_Cur]
      ,[Frcst_Src]
      ,[Mrktng_Frcst]
      ,[Mrktng_Ld]
  FROM [dbo].[Mrktng_Cnsnss_Icr]


GO
/****** Object:  View [dbo].[UVW_NIELSEN_ACV_TURN]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/******************************    
** Name: [UVW_NIELSON_ACV_TURN]
** Desc: Nielson All Commodity Volume and Turns data set for Tableau consumption for KSC Demand second dashboard
** Auth: Venkatesh Ramadhyani
** Date: 2017-09-04

** Desc: INC0685260 - Changed the view to use fiscal closed period view
** Auth: Merlyn Johnson
** Date: 2018-02-01

**  
*******************************/

CREATE VIEW  [dbo].[UVW_NIELSEN_ACV_TURN]
AS
--------------------Getting the NIELSON_ACV_TURN DATA--------------------------------
SELECT 
		NA.MATRL
		,ALL_COMDTY_VOL_PCT
		,ALL_COMDTY_VOL_SALES_VAL
		,ALL_COMDTY_VOL_SALES_QTY
		,ALL_COMDTY_VOL_DT
		,NA.FISC_PD
		,NA.FISC_YR
		,NA.FISC_WK
		,MC.[CHRSTC_VAL] AS FRST_SHIPMNT_DT
		,PH.[PROD_HIER_MARKET_SEGMENT_DESC] as MKTG_SEG_DESC
		,PH.[PROD_HIER_CATEGORY] as CATG_CODE
		,PH.[PROD_HIER_CATEGORY_DESC] as CATG_DESC
		,PH.[PROD_HIER_SUB_CATEGORY] as SUB_CATG_CODE
		,PH.[PROD_HIER_SUB_CATEGORY_DESC] as SUB_CATG_DESC
FROM KNA_SALES.DBO.NIELSEN_ACV_TURN NA WITH (NOLOCK) 
LEFT JOIN KG_VIEWS.KG.UVW_FISC_CAL UFC WITH (NOLOCK) 
ON NA.FISC_YR = UFC.FISC_YR 
AND NA.FISC_PD = UFC.FISC_PD 
AND NA.FISC_WK = UFC.FISC_WK
AND CAST(NA.ALL_COMDTY_VOL_DT as Date) = UFC.FISC_WK_STRT_DT
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL M WITH (NOLOCK) ON M.MATRL_NBR = NA.MATRL COLLATE DATABASE_DEFAULT
LEFT JOIN  [KNA_ECC].dbo.MARA MV WITH (NOLOCK) on MV.[MATNR] = NA.MATRL COLLATE DATABASE_DEFAULT 
LEFT JOIN [KG_VIEWS].[KNA].[UVW_PROD_HIER] PH WITH (NOLOCK) on PH.[PROD_HIER] = MV.PRDHA COLLATE DATABASE_DEFAULT
LEFT JOIN KG_VIEWS.KNA.UVW_MATRL_CLASFCTN MC WITH (NOLOCK) on MC.MATRL_NBR = NA.MATRL COLLATE DATABASE_DEFAULT
AND MC.CLAS='PLANNING_DATES'  COLLATE DATABASE_DEFAULT 
AND MC.[CHRSTC_NM] = 'FIRST_SHIP_DATE' COLLATE DATABASE_DEFAULT
LEFT JOIN [KNA_SC].[dbo].[UVW_CURRENT_PD_PREV_5] CURR_PD WITH(NOLOCK)
ON CURR_PD.FISC_PD = NA.FISC_PD
AND CURR_PD.FISC_YR = NA.FISC_YR
--Where (NA.FISC_YR < Year(GetDate()) OR (NA.FISC_YR = Year(GetDate()) AND NA.FISC_PD < Month(GetDate()) ) )  -- INC0685260 changed to use closed period instead of sysdate
Where (NA.FISC_YR < Year(GetDate()) OR (NA.FISC_YR = CURR_PD.FISC_YR AND NA.FISC_PD <= CURR_PD.[CURR_FISC_CLOSED_PD] ) )


GO
/****** Object:  View [dbo].[UVW_ORC_STORE_TDLINX]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_ORC_STORE_TDLINX]
AS
SELECT 
 STORE.SUBPART_SUFFIX_TXT
 ,STORE.DIVISION
 ,STORE.STORE_NBR
,STORE.TD_LINX
,TDLINX.CUST_NBR
FROM [dbo].[STORE_METADATA] AS STORE WITH (NOLOCK)
INNER JOIN
(
SELECT CUST.TDLINX_NBR,CUST.PREV_ACCT_NBR,CUST.CUST_NBR
 FROM 
KG_VIEWS.KNA.UVW_CUST AS CUST WITH (NOLOCK)
INNER JOIN
 KG_VIEWS.KNA.UVW_CUST_HIER AS CUST_HIER WITH (NOLOCK)
 ON
 CUST.CUST_NBR = CUST_HIER.LST_LVL_CUST_NBR
WHERE
CUST_HIER.HIER_TM_PD = 'CURRENT'
AND
CUST_HIER.HIER_TYP = 'A'
) AS TDLINX
ON
STORE.TD_LINX = TDLINX.TDLINX_NBR
GROUP BY
 STORE.SUBPART_SUFFIX_TXT
 ,STORE.DIVISION
 ,STORE.STORE_NBR
,STORE.TD_LINX
,TDLINX.CUST_NBR


GO
/****** Object:  View [dbo].[UVW_POS_WMCOMUS]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[UVW_POS_WMCOMUS]
as
SELECT SUBPARTSUFFIXTXT, SOLDTO, STORENBR, STOREDESC, UPC, UPCDESC, DAY, POS_SALES, POS_QTY
FROM     dbo.POS_WM WITH (NOLOCK)
WHERE  (SUBPARTSUFFIXTXT = 'WMCOMUS')

GO
/****** Object:  View [dbo].[UVW_REX_KROGER_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



 CREATE VIEW [dbo].[UVW_REX_KROGER_WK]
 AS
 SELECT
 TDLinxNumber AS [TD Linx Number]
, Store
, StoreName AS [Store Name]
,StoreNbr AS [Store Nbr]
,YR
, [WEEK]
,CATEGORY AS [CATEGORY(C)]
,POS_Sales AS [POS Sales]
FROM
OPENQUERY([MYSQLMEMSQL Prod], 
'SELECT
 TDLinxNumber
, Store
, StoreName
,StoreNbr
,YR
, WEEK
,CATEGORY
,POS_Sales
FROM
KNA_EXTERNAL.UVW_REX_KROGER_WK') 
AS KROG

GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_NIELSEN_HEB_STORES_NO_TDLINX_CUST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author	:	Abhilash Mogili
-- Create date	:	09/17/2018
-- Modified By	:   
-- Modified date:	
-- Description	:	Returns the Nielsen Store,Store Num code and their respective Retailer/Plan To's Where TDLINX cannot be mapped to the Retail Customer Hierarchy 
-- =============================================



CREATE VIEW [dbo].[UVW_REX_VLD_RPT_NIELSEN_HEB_STORES_NO_TDLINX_CUST]
AS
SELECT   STORE
                ,STORE_NUM_CODE
				--Extracting the Retailer/Plan_To from the PD_DESC 
				 ,LEFT([POD_DESC],ISNULL(NULLIF(PATINDEX('%[0-9|/]%',[POD_DESC]), 0), 1)- 1) AS PLN_TO
				 --MEMSQL view where we are getting the Store,Store Num Code and POD Desc  where  TDLINX cannot be linked to Customer Hierarchy
		  FROM OPENQUERY([MYSQLMEMSQL Prod], 'SELECT STORE,STORE_NUM_CODE,POD_DESC FROM KNA_EXTERNAL.UVW_REX_VLD_STORES_NO_TDLINX_CUST')



GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_SHIPMNT_FILE_REC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	08/24/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Getting the record Count on the SD57 Stage Shipment file
-- =============================================


CREATE VIEW [dbo].[UVW_REX_VLD_RPT_SHIPMNT_FILE_REC] 
AS  
SELECT COUNT(*) as [REC_CNT] 
FROM 
[KNA_EXTERNAL].[STG].[SD57_SHIPMNT_PLN_TO_SUMRY] WITH (NOLOCK)



GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_SHIPMNT_FILE_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	08/24/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Getting the Distinct weeks on the SD57 Stage Shipment file
-- =============================================

CREATE VIEW [dbo].[UVW_REX_VLD_RPT_SHIPMNT_FILE_WK] 
AS 
SELECT 
 [CALWEEK:0CALWEEK] as [WKS_ON_FILE]
  FROM 
  [KNA_EXTERNAL].[STG].[SD57_SHIPMNT_PLN_TO_SUMRY] WITH (NOLOCK)
  GROUP BY
   [CALWEEK:0CALWEEK]



GO
/****** Object:  View [dbo].[UVW_REX_VLD_RPT_STORES_NO_TDLINX_CUST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author		:	Abhilash Mogili
-- Create date		:	09/17/2018
-- Modified By		:   
-- Modified date	:	
-- Description		:	Returns the Nielsen Store,Store Num code and their respective Retailer/Plan To's Where TDLINX cannot be mapped to the Snacks Customer Hierarchy 
-- =============================================



CREATE VIEW [dbo].[UVW_REX_VLD_RPT_STORES_NO_TDLINX_CUST]
AS
SELECT   STORE
                ,STORE_NUM_CODE
				--Extracting the Retailer/Plan_To from the PD_DESC 
				 ,LEFT([POD_DESC],ISNULL(NULLIF(PATINDEX('%[0-9|/]%',[POD_DESC]), 0), 1)- 1) AS PLN_TO
				 --MEMSQL view where we are getting the Store,Store Num Code and POD Desc  where  TDLINX cannot be linked to Customer Hierarchy
		  FROM OPENQUERY([MYSQLMEMSQL Prod], 'SELECT STORE,STORE_NUM_CODE,POD_DESC FROM KNA_EXTERNAL.UVW_REX_VLD_STORES_NO_TDLINX_CUST')



GO
/****** Object:  View [dbo].[UVW_SNACKS_KROGER_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE VIEW [dbo].[UVW_SNACKS_KROGER_WK]
 AS
 SELECT
 TDLinxNumber AS [TD Linx Number]
, Store
, StoreName AS [Store Name]
,StoreNbr AS [Store Nbr]
, [WEEK]
,CATEGORY AS [CATEGORY(C)]
,POS_Sales AS [POS Sales]
FROM
OPENQUERY([MYSQLMEMSQL Prod], 
'SELECT
 TDLinxNumber
, Store
, StoreName
,StoreNbr
, WEEK
,CATEGORY
,POS_Sales
FROM
KG_EXTERNAL.UVW_SNACKS_KROG_WK') 
AS KROG

GO
/****** Object:  View [dbo].[UVW_SNACKS_RPT_PRFCT_SHELF]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	07/02/2017
-- Modified By		:	Abhilash Mogili	
-- Modified date	:	07/16/2017
-- Description		:	Returns Visits and Audits info from Stand in Front and merges with Customer Hierarchy.
-- Comments			:  
-- =============================================





CREATE VIEW [dbo].[UVW_SNACKS_RPT_PRFCT_SHELF]
AS



With QTD
as
(
SELECT 
A.VISITGUID AS VST_GUID
,A.STOREEXTERNALID AS STORE_EXTR_IT
,A.STORENAME AS STORE_NM
,A.STOREPRIMETERRITORYEXTERNALID AS STORE_PRMRY_TERR_EXTR_ID
,A.STOREPRIMETERRITORYNAME AS STORE_PRMY_TERR_NM
,CASE WHEN B.CATEGORY = 'Bars' THEN 'Wholesome' 
	  WHEN B.CATEGORY = 'Salty Snac' THEN 'Salty Snacks' 
	  WHEN B.CATEGORY = 'Fruit Snac' THEN 'Fruit Snacks' ELSE ISNULL(B.CATEGORY,'')
END AS CATG
,ISNULL(B.STOREAUTHORIZATION,0) AS STORE_AUTHZN
,ISNULL(B.INDISTRIBUTION,0) AS IN_DISTBN
,A.ACTUALSTARTDATETIME
,CASE WHEN REPITEMALERT = 1 THEN ISNULL(B.STOREAUTHORIZATION,0) END AS OOS_AUDIT
,LAT
FROM
(Select *,ROW_NUMBER()over(partition by STOREEXTERNALID order by ACTUALFINISHDATETIME desc) as LAT
from  [KNA_EXTERNAL].[SIF].[SNACKS_VISIT] WITH (NOLOCK)
where STOREPRIMETERRITORYEXTERNALID NOT LIKE 'Chicago%'
--AND
--EXISTS
--(SELECT 1 FROM [KG_VIEWS].[KG].[UVW_FISC_CAL] FC
--WHERE
--FISC_WK_STRT_DT >= CAST(DATEADD(YY, DATEDIFF(YY, 0, GETDATE()), 0) AS DATE)
--AND 
--FISC_WK_END_DT <= CAST(getdate() AS DATE)
--AND CAST(ACTUALFINISHDATETIME as date) between  FISC_WK_STRT_DT and FISC_WK_END_DT )
) A 
INNER JOIN 
[KNA_EXTERNAL].[SIF].[SNACKS_AUDIT] B 
ON A.VISITGUID=B.VISITGUID and A.LAT = 1
)
---Perfect Shelf
SELECT 
A.SOLD_TO_NBR,A.SOLD_TO,A.CATG,A.TOTL_ITEMS_AUTH,A.TOTL_ITEMS_IN_DISTBN,A.OOS_AUDIT,
RGN,
SST,
ZN,
TERR,
CUST_TEAM,
PLN_TO_NBR,
PLN_TO,
CHN,
SLAT,
SLONG,
ZLAT,
ZLONG,
TLAT,
TLONG,
A.TIMEFRAME,
B.STORE_CLASS,
A.LAST_MODFD
FROM
(
SELECT 
VST_GUID
,SOLD_TO_NBR,SOLD_TO,CATG,SUM(CAST(STORE_AUTHZN AS INT)) AS TOTL_ITEMS_AUTH,SUM(CAST(IN_DISTBN AS INT)) AS TOTL_ITEMS_IN_DISTBN,COUNT(CONVERT(DECIMAL(18,3),OOS_AUDIT)) AS OOS_AUDIT,
CUST.RGN,
CUST.SST,
CUST.ZN,
CUST.TERR,
CUST.CUST_TEAM,
CUST.PLN_TO_NBR,
CUST.PLN_TO,
CUST.CHN,
CUST.SLAT,
CUST.SLONG,
CUST.ZLAT,
CUST.ZLONG,
CUST.TLAT,
CUST.TLONG,
CONVERT(DATE,ACTUALSTARTDATETIME) AS TIMEFRAME,
LAT,
(SELECT MAX(CONVERT(DATE,ACTUALSTARTDATETIME)) FROM [KNA_EXTERNAL].[SIF].[SNACKS_VISIT] WITH (NOLOCK)) AS LAST_MODFD
--,DATEADD(DAY,-3, A.LAST_MOD) as LAST_MODFD
FROM QTD
INNER JOIN
KNA_SALES.dbo.SNACKS_TDLINX_CUST_HIER AS CUST
ON
QTD.STORE_EXTR_IT = CUST.SOLD_TO_NBR
WHERE
ACTUALSTARTDATETIME >= DATEADD(month,-3, getdate()) 
GROUP BY 
VST_GUID,SOLD_TO_NBR,SOLD_TO,CATG,CUST.RGN,CUST.SST,CUST.ZN,CUST.TERR,CUST.CUST_TEAM,
CUST.PLN_TO_NBR,
CUST.PLN_TO,
CUST.CHN,CUST.SLAT,CUST.SLONG,CUST.ZLAT,CUST.ZLONG,CUST.TLAT,CUST.TLONG,CONVERT(DATE,ACTUALSTARTDATETIME),LAT
) AS A
INNER JOIN
(
SELECT 
VST_GUID
,SOLD_TO_NBR
,SOLD_TO
,SUM(CAST(STORE_AUTHZN AS INT)) AS TOTL_ITEMS_AUTH
,SUM(CAST(IN_DISTBN AS INT)) AS TOTL_ITEMS_IN_DISTBN
,COUNT(CONVERT(DECIMAL(18,3),OOS_AUDIT)) AS OOS_AUDIT,
CONVERT(DATE,ACTUALSTARTDATETIME) AS TIMEFRAME
,LAT
--Store Class is calculated based on count of storeauthorization for each sold to, upc combination
,CASE WHEN SUM(CAST(STORE_AUTHZN AS INT))> 150 THEN 'A'
	 WHEN SUM(CAST(STORE_AUTHZN AS INT)) BETWEEN 100 AND 150 THEN 'B'
     WHEN SUM(CAST(STORE_AUTHZN AS INT)) < 100 THEN 'C' END AS STORE_CLASS
	 ,(SELECT MAX(CONVERT(DATE,LAST_MOD)) FROM [KNA_EXTERNAL].[SIF].[SNACKS_VISIT] WITH (NOLOCK)) AS LAST_MODFD
--,DATEADD(DAY,-3, A.LAST_MOD) as LAST_MODFD
FROM QTD
INNER JOIN
KNA_SALES.dbo.SNACKS_TDLINX_CUST_HIER AS CUST WITH (NOLOCK)
ON
QTD.STORE_EXTR_IT = CUST.SOLD_TO_NBR
WHERE
ACTUALSTARTDATETIME >= DATEADD(month,-3, getdate()) 
GROUP BY 
VST_GUID,SOLD_TO_NBR,SOLD_TO,CONVERT(DATE,ACTUALSTARTDATETIME),LAT
) AS B
ON 
A.SOLD_TO_NBR = B.SOLD_TO_NBR











GO
/****** Object:  View [dbo].[UVW_SNACKS_TDLINX_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[UVW_SNACKS_TDLINX_CUST_HIER]
AS



SELECT  [RGN]
      ,[STDLINXSCD]
      ,[RCLIENTNO]
      ,[LST_LVL_CUST_NBR]
      ,[RGN_NBR]
      ,[ZN]
      ,[ZN_NBR]
      ,[CUST_TEAM]
      ,[CUST_TEAM_NBR]
      ,[TERR]
      ,[TERR_NBR]
      ,[PLN_TO]
      ,[PLN_TO_NBR]
      ,[CHN]
      ,[CHN_NBR]
      ,[SOLD_TO]
      ,[SOLD_TO_NBR]
      ,[SLONG]
      ,[SLAT]
      ,[SNAME]
      ,[SNO]
      ,[SSTREETADD]
      ,[SCITY]
      ,[SST]
      ,[SZIP]
      ,[ZLONG]
      ,[ZLAT]
      ,[TLONG]
      ,[TLAT]
      ,[PREV_ACCT_NBR]
  FROM [KNA_SALES].[dbo].[SNACKS_TDLINX_CUST_HIER] WITH (NOLOCK)


GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_SHIPMENT_FILE_REC]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/15/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/22/2018
-- Description		:	Getting the record Count on the SD57 Stage Shipment file
-- =============================================


CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_SHIPMENT_FILE_REC] 
AS  
SELECT COUNT(*) as [Record Count] 
FROM [KNA_EXTERNAL].[STG].[SD57_SHIPMNT_PLN_TO_SUMRY] WITH (NOLOCK)



GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_SHIPMENT_FILE_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/15/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/22/2018
-- Description		:	Getting the Distinct weeks on the SD57 Stage Shipment file
-- =============================================

CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_SHIPMENT_FILE_WK] 
AS 
SELECT 
       [CALWEEK:0CALWEEK] as [Weeks on File]
  FROM [KNA_EXTERNAL].[STG].[SD57_SHIPMNT_PLN_TO_SUMRY] WITH (NOLOCK)
  GROUP BY
   [CALWEEK:0CALWEEK]



GO
/****** Object:  View [dbo].[UVW_SNACKS_VLD_RPT_STORES_NO_TDLINX_CUST]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/02/2018
-- Modified By		:   Abhilash Mogili
-- Modified date	:	01/20/2018
-- Description		:	Returns the Nielsen Store,Store Num code and their respective Retailer/Plan To's Where TDLINX cannot be mapped to the Snacks Customer Hierarchy 
-- =============================================



CREATE VIEW [dbo].[UVW_SNACKS_VLD_RPT_STORES_NO_TDLINX_CUST]
AS
SELECT DISTINCT  STORE
                ,STORE_NUM_CODE
				--Extracting the Retailer/Plan_To from the PD_DESC 
				 ,LEFT([POD_DESC],ISNULL(NULLIF(PATINDEX('%[0-9|/]%',[POD_DESC]), 0), 1)- 1) AS PLN_TO
				 --MEMSQL view where we are getting the Store,Store Num Code and POD Desc  where  TDLINX cannot be linked to Customer Hierarchy
		  FROM OPENQUERY([MYSQLMEMSQL Prod], 'SELECT STORE,STORE_NUM_CODE,POD_DESC FROM KG_EXTERNAL.UVW_SNACKS_VLD_STORES_NO_TDLINX_CUST')


GO
/****** Object:  View [dbo].[UVW_SPCLTY_CHNL_CATG_FACT]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_SPCLTY_CHNL_CATG_FACT]
as
Select [SUMRY_ACCT],
	[CHNL] ,
	[CATG],
	[FNL_AMT] ,
	[FISC_YR] ,
	[FISC_PD]  from 
[STG].[SPCLTY_DD_OBSPKG_FACT]

UNION 

SELECT [SUMRY_ACCT]='Coupons',
[CHNL_IND] ,
	[CATG],
	[BAL],
	[FISC_YR] ,
	[FISC_PD] FROM
	[KNA_SALES].[STG].[SPCLTY_CPN_ALLOC]
	where [FISC_YR] >= 2015 




GO
/****** Object:  View [dbo].[UVW_SPCLTY_DIM_XREF]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_SPCLTY_DIM_XREF]
AS
 
 Select C.SOLD_TO as [SOLD_TO]
       ,C.SOLD_NM as [SOLD_TO_NM]
	   ,CASE WHEN sold.[CHAIN] IS NULL THEN  C.[CHN] ELSE sold.[CHAIN] END AS [CHN]
	   ,CASE WHEN sold.PlanTo_Name IS NULL THEN  C.PLAN_TO ELSE sold.PlanTo_Name END AS [PLN_TO]
	   ,sold.PlanTo_Name AS [PLN_TO_NM]
	   ,P.[Super_PlanTo] AS [SUPR_PLN_TO]
      ,C.[ZN] AS [ZN]
      ,C.[DSTR] AS [DSTR]
      ,C.[TERR] AS [TERR]
      ,C.[CHNL_NBR]  as [CHNL_NBR]
	  ,CASE WHEN C.[CHNL_NBR] = '12' THEN 'Vending' WHEN C.[CHNL_NBR] = '03' THEN 'Export' WHEN C.[CHNL_NBR] = '11' THEN 'Girls Scouts'
	   WHEN C.[CHNL_NBR] = '07' THEN 'Food Service' WHEN C.[CHNL_NBR] = '15' THEN 'SDA' WHEN C.[CHNL_NBR] = '02' THEN 'Custom'
       WHEN C.[CHNL_NBR] = '08' THEN 'Convenience' ELSE NULL END AS [CHNL_NM]
	  ,C.[PRC_GRP] AS [PRC_GRP]
      ,C.[KATR5] AS [INVC_VARNC_FMT]
      ,C.[CUST_GRP] AS [CUST_GRP]
  FROM 
(SELECT SOLD_TO,SOLD_NM,CHNL_NBR,PRC_GRP,KATR5,MAX([PLAN_TO]) AS PLAN_TO ,MAX(CHN) AS CHN,MAX(ZN)AS ZN,
MAX(DSTR)AS DSTR,MAX(TERR)AS
 TERR,CUST_GRP FROM KNA_SALES.DBO.SPCLTY_CUST_HIER group by SOLD_TO,SOLD_NM,CHNL_NBR,PRC_GRP,KATR5,CUST_GRP ) C
LEFT JOIN  KNA_SALES.[dbo].[SoldToMap] sold ON    
C.SOLD_TO=sold.[SoldTo_Key] 
LEFT JOIN  KNA_SALES.[dbo].[PlanToMap] P
ON P.[PlanTo_Name]=sold.[PlanTo_Name] 





GO
/****** Object:  View [dbo].[UVW_SPCLTY_DLY_SALES_VNDNG]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[UVW_SPCLTY_DLY_SALES_VNDNG]
AS
SELECT 
Acosta_BOB_Rgn as ACOSTA_BOB_RGN,
Base_Material as BASE_MATRL,
Category as CATG,
Chain as CHN,
Channel as CHNL,
District_Name as DSTR_NM,
execdate as EXEC_DT,
Field_Category as FLD_CATG,
Fis_Year as FISC_YR,
Gross_Sales_Cs_Dir as GROS_SALES_CASE_DIR,
Gross_Sales_Cs_InDir as GROS_SALES_CASE_INDIR,
Gross_Sales_Dollars_Dir as GROS_SALES_DOL_DIR,
Gross_Sales_Dollars_InDir as GROS_SALES_DOL_INDIR,
Master_Brand as MSTR_BRAND,
Mtl_Desc as MATRL_DESC,
Open_Ordrs_Dollars as OPN_ORDR_DOL,
Open_Ords_Cs as OPN_ORDR_CASE,
Period as PD,
PlanTo_Name as PLNTO_NM,
Prd_Catg as PROD_CATG,
SoldTo_Name as SOLDTO_NM,
SoldTo_Num as SOLDTO_NBR,
Sub_Brand as SUB_BRAND,
Sub_Chain as SUB_CHN,
Super_PlanTo as SUPR_PLNTO,
Territory_Name as TERR_NM,
Trade_Class as TRADE_CLAS,
Zone_Name as ZN_NM
FROM [dbo].[Summ_Agg_01] WITH (NOLOCK)
WHERE Fis_Year >= YEAR(GETDATE())-2 AND Channel = 'VENDING';




GO
/****** Object:  View [dbo].[UVW_SPCLTY_INDIR_CUST_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_SPCLTY_INDIR_CUST_FNL]
AS 
SELECT *
FROM [STG].[SPCLTY_INDIR_CUST_FNL]



GO
/****** Object:  View [dbo].[UVW_SPCLTY_SEG_TIBERSOFT_FNL]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[UVW_SPCLTY_SEG_TIBERSOFT_FNL]
AS 
SELECT *
FROM [STG].[SEG_TIBERSOFT_SRC_FNL]


GO
/****** Object:  View [dbo].[UVW_WALMART_POS_ECOMM]    Script Date: 11/20/2018 5:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[UVW_WALMART_POS_ECOMM]
AS

WITH cte_WALMART as
(select 
	 [UPC]
	,[MATRL_DESC]
	,[CATEGORY]
	,[BRAND]
	,[SEGMENT]	
	,[BU]
	,[MATRL_STATUS]
	,'KELLOGGS' AS DATA_SET_IND
	,[YEAR]
	--,Left(DATENAME(month, WK_STARTING),3) as WK_STARTING_MONTH
	,CASE 
	WHEN FISC_PD=1 Then 'Jan' 
	WHEN FISC_PD=2 Then 'Feb'
	WHEN FISC_PD=3 Then 'Mar'
	WHEN FISC_PD=4 Then 'Apr'
	WHEN FISC_PD=5 Then 'May'
	WHEN FISC_PD=6 Then 'Jun'
	WHEN FISC_PD=7 Then 'Jul'
	WHEN FISC_PD=8 Then 'Aug'
	WHEN FISC_PD=9 Then 'Sep'
	WHEN FISC_PD=10 Then 'Oct'
	WHEN FISC_PD=11 Then 'Nov'
	WHEN FISC_PD=12 Then 'Dec'
	END
	as WK_STARTING_MONTH
	,DATENAME(month, DAY) as DAY_MONTH
	,MAX_Date
	,CASE
	WHEN DATEDIFF(week, WK_STARTING, MAX_DATE) < 4 then '4 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, MAX_DATE) < 13 then '13 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, MAX_DATE) < 26 then '26 Weeks'
	END as TimeLine
	,CASE
	WHEN DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) < 4 
		AND DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) >=0 then '4 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) < 13 
		AND DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) >=0 then '13 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) < 26 
		AND DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) >=0 then '26 Weeks'
	END as [TimeLine PY]
	,SUM([TOTAL_SALES]) as SALES
	,CASE WHEN [YEAR] = YEAR(MAX_DATE) and WK_STARTING <= MAX_DATE 	THEN SUM(TOTAL_SALES) ELSE 0 END as [YTD Sales]
	,CASE WHEN [YEAR] = YEAR(MAX_DATE)-1  and WK_STARTING <= DATEADD(year,-1,MAX_DATE) THEN  SUM(TOTAL_SALES) ELSE 0 END as [Previous YTD Sales]
		
from 
 
 ( Select *,(SELECT MAX([WK_STARTING]) from [STG].[WALMART_POS_ENRCH] ) as MAX_Date from  [STG].[WALMART_POS_ENRCH]) A

group by 
	 [UPC]
	,[MATRL_DESC]
	,[CATEGORY]
	,[BRAND]
	,[SEGMENT]
	,[BU]
	,[MATRL_STATUS]
	,[YEAR]
	,[WK_STARTING]
	,[FISC_PD]
	,[DAY] 	
	,MAX_Date
	,CASE
	WHEN DATEDIFF(week, WK_STARTING, MAX_DATE) < 4 then '4 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, MAX_DATE) < 13 then '13 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, MAX_DATE) < 26 then '26 Weeks'
	END 
	,CASE
	WHEN DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) < 4 
		AND DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) >=0 then '4 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) < 13 
		AND DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) >=0 then '13 Weeks'
	WHEN DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) < 26 
		AND DATEDIFF(week, WK_STARTING, DATEADD(year,-1,MAX_DATE)) >=0 then '26 Weeks'
	END 

UNION ALL

select 
	 [UPC]
	,[MATRL_DESC]
	,[CATEGORY]
	,[BRAND]
	,[SEGMENT]	
	,[BU]
	,[MATRL_STATUS]
	,'WALMART' AS DATA_SET_IND
	,WM_FISC_YR AS [YEAR]
	,CASE 
	WHEN WM_FISC_PD=1 Then 'P1-Feb' 
	WHEN WM_FISC_PD=2 Then 'P2-Mar'
	WHEN WM_FISC_PD=3 Then 'P3-Apr'
	WHEN WM_FISC_PD=4 Then 'P4-May'
	WHEN WM_FISC_PD=5 Then 'P5-Jun'
	WHEN WM_FISC_PD=6 Then 'P6-Jul'
	WHEN WM_FISC_PD=7 Then 'P7-Aug'
	WHEN WM_FISC_PD=8 Then 'P8-Sep'
	WHEN WM_FISC_PD=9 Then 'P9-Oct'
	WHEN WM_FISC_PD=10 Then 'P10-Nov'
	WHEN WM_FISC_PD=11 Then 'P11-Dec'
	WHEN WM_FISC_PD=12 Then 'P12-Jan'
	END
	as WK_STARTING_MONTH
	,DATENAME(month, DAY) as DAY_MONTH
	,MAX_Date
	,CASE
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, MAX_DATE) < 4 then '4 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, MAX_DATE) < 13 then '13 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, MAX_DATE) < 26 then '26 Weeks'
	END as TimeLine
	,CASE
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) < 4 
		AND DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) >=0 then '4 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) < 13 
		AND DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) >=0 then '13 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) < 26 
		AND DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) >=0 then '26 Weeks'
	END as [TimeLine PY]
	,SUM([TOTAL_SALES]) as SALES
	,CASE WHEN (WM_FISC_YR) = YEAR(MAX_DATE)  and WM_FISC_WK_STRT_DT <= MAX_DATE THEN SUM(TOTAL_SALES) ELSE 0 END as [YTD Sales]
	,CASE WHEN (WM_FISC_YR) = YEAR(MAX_DATE)-1  and WM_FISC_WK_STRT_DT <= DATEADD(year,-1,MAX_DATE) THEN  SUM(TOTAL_SALES) ELSE 0 END as [Previous YTD Sales]
	
from 
 
 (Select *,(SELECT MAX(WM_FISC_WK_STRT_DT) from [STG].[WALMART_POS_ENRCH] ) as MAX_Date from  [STG].[WALMART_POS_ENRCH]) A

group by 
	 [UPC]
	,[MATRL_DESC]
	,[CATEGORY]
	,[BRAND]
	,[SEGMENT]
	,[BU]
	,[MATRL_STATUS]
	,WM_FISC_YR
	,WM_FISC_PD
	,[WM_FISC_WK_STRT_DT]
	,[DAY] 	
	,MAX_Date
	,CASE
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, MAX_DATE) < 4 then '4 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, MAX_DATE) < 13 then '13 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, MAX_DATE) < 26 then '26 Weeks'
	END 
	,CASE
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) < 4 
		AND DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) >=0 then '4 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) < 13 
		AND DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) >=0 then '13 Weeks'
	WHEN DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) < 26 
		AND DATEDIFF(week, WM_FISC_WK_STRT_DT, DATEADD(year,-1,MAX_DATE)) >=0 then '26 Weeks'
	END 
) 


SELECT  
	 [UPC]
	,[MATRL_DESC]
	,[CATEGORY]
	,[BRAND]
	,[SEGMENT]	
	,[BU]
	,[MATRL_STATUS]
	,DATA_SET_IND
	,[YEAR]
	,WK_STARTING_MONTH
	,DAY_MONTH
	,MAX_Date	
	,SUM(SALES) as Sales
	,SUM([4 Wk Sales]) as [4 Wk Sales]
	,SUM([13 Wk Sales]) as [13 Wk Sales]
	,SUM([26 Wk Sales]) as [26 Wk Sales]
	,SUM([YTD Sales]) as [YTD Sales]
	,SUM([4 Wk PY Sales]) as [4 Wk PY Sales]
	,SUM([13 Wk PY Sales]) as [13 Wk PY Sales]
	,SUM([26 Wk PY Sales]) as [26 Wk PY Sales]
	,SUM([Previous YTD Sales]) as [Previous YTD Sales]
	, SUM([4 Wk Sales])- SUM([4 Wk PY Sales]) as [4 Wk CYA]
	, SUM([13 Wk Sales])- SUM([13 Wk PY Sales]) as [13 Wk CYA]
	, SUM([26 Wk Sales])- SUM([26 Wk PY Sales]) as [26 Wk CYA]
	, SUM([YTD Sales])- SUM([Previous YTD Sales]) as [YTD Change]
	
	
FROM (
			SELECT 
				 [UPC]
				,[MATRL_DESC]
				,[CATEGORY]
				,[BRAND]
				,[SEGMENT]	
				,[BU]
				,[MATRL_STATUS]
				,DATA_SET_IND
				,[YEAR]
				,WK_STARTING_MONTH
				,DAY_MONTH
				,MAX_Date	
				,SUM(SALES) as Sales
				, CASE WHEN  TimeLine='4 Weeks' then SUM(SALES) ELSE 0
				  END as [4 Wk Sales]
				, CASE WHEN TimeLine='4 Weeks' or TimeLine='13 Weeks' then SUM(SALES) ELSE 0
				  END as [13 Wk Sales]
				, CASE WHEN  TimeLine='4 Weeks' or TimeLine='13 Weeks' or TimeLine='26 Weeks' then SUM(SALES) ELSE 0
				  END as [26 Wk Sales]
				, SUM([YTD Sales]) as [YTD Sales]
				, CASE WHEN  [TimeLine PY]='4 Weeks' then SUM(SALES) ELSE 0
				  END as [4 Wk PY Sales]
				, CASE WHEN  [TimeLine PY]='4 Weeks' or [TimeLine PY]='13 Weeks' then SUM(SALES) ELSE 0
				  END as [13 Wk PY Sales]
				, CASE WHEN  [TimeLine PY]='4 Weeks' or [TimeLine PY]='13 Weeks' or [TimeLine PY]='26 Weeks' then SUM(SALES) ELSE 0
				  END as [26 Wk PY Sales]
				, SUM([Previous YTD Sales])  as [Previous YTD Sales]
								  
			from cte_WALMART
			GROUP BY 
				 [UPC]
				,[MATRL_DESC]
				,[CATEGORY]
				,[BRAND]
				,[SEGMENT]
				,[BU]	
				,[MATRL_STATUS]
				,DATA_SET_IND
				,[YEAR]
				,WK_STARTING_MONTH
				,DAY_MONTH
				,MAX_Date
				,TimeLine
				,[TimeLine PY]
			) B

GROUP BY

	 [UPC]
	,[MATRL_DESC]
	,[CATEGORY]
	,[BRAND]
	,[SEGMENT]	
	,[BU]
	,[MATRL_STATUS]
	,DATA_SET_IND
	,[YEAR]
	,WK_STARTING_MONTH
	,DAY_MONTH
	,MAX_Date









GO
/****** Object:  Index [IDX_FOOD_SERV_DMND_FCST_1]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IDX_FOOD_SERV_DMND_FCST_1] ON [dbo].[FOOD_SERV_DMND_FCST]
(
	[SNPSHT_PD] ASC,
	[MATRL] ASC,
	[SHIP_LOC] ASC,
	[PLN_TO_CUST] ASC,
	[FISC_YR] ASC,
	[FISC_PD] ASC,
	[SNPSHT_WK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INFO_ACTL_SALES_1]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IDX_INFO_ACTL_SALES_1] ON [dbo].[INFOMETRICS_ACTL_SALES]
(
	[DIST_WHSE_NM] ASC,
	[RETL_CHN_NM] ASC,
	[SHIP_LOC] ASC,
	[PLN_TO_CUST] ASC,
	[MATRL] ASC,
	[SALES_DT] ASC,
	[FISC_YR] ASC,
	[FISC_PD] ASC,
	[FISC_WK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_NIELSEN_ACV_TURN_1]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IDX_NIELSEN_ACV_TURN_1] ON [dbo].[NIELSEN_ACV_TURN]
(
	[MATRL] ASC,
	[FISC_PD] ASC,
	[FISC_YR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_REX_POS_WM_WK]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IDX_REX_POS_WM_WK] ON [dbo].[REX_POS_WALMART_WK]
(
	[YR] ASC,
	[WK] ASC,
	[SOLDTO] ASC,
	[CATG] ASC,
	[BRAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_REX_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IX_REX_RPT_KSR_BUD] ON [dbo].[REX_RPT_KSR_BUD]
(
	[SOLD_TO_NBR] ASC,
	[CATG] ASC,
	[YR] ASC,
	[PD_DESC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_REX_TDLINX_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_REX_TDLINX_CUST_HIER] ON [dbo].[REX_TDLINX_CUST_HIER]
(
	[SOLD_TO_NBR] ASC,
	[FISC_YR] ASC,
	[FISC_QTR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_RPT_KSR_BUD]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IX_SNACKS_RPT_KSR_BUD] ON [dbo].[SNACKS_RPT_KSR_BUD]
(
	[SOLD_TO_NBR] ASC,
	[CATG] ASC,
	[PD_DESC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SNACKS_TDLINX_CUST_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_SNACKS_TDLINX_CUST_HIER] ON [dbo].[SNACKS_TDLINX_CUST_HIER]
(
	[SOLD_TO_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SNACKS_UPC_PKG_PROD_HIER]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [IX_SNACKS_UPC_PKG_PROD_HIER] ON [dbo].[SNACKS_UPC_PKG_PROD_HIER]
(
	[UPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CI_Summary_Agg]    Script Date: 11/20/2018 5:49:04 PM ******/
CREATE CLUSTERED INDEX [CI_Summary_Agg] ON [dbo].[Summ_Agg_01]
(
	[Fis_Year] ASC,
	[Period] ASC,
	[Channel] ASC,
	[Super_PlanTo] ASC,
	[Category] ASC,
	[Field_Category] ASC,
	[SoldTo_Num] ASC,
	[Base_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
