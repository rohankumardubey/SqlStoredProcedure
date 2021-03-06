USE [master]
GO
/****** Object:  Database [KLA_SC]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE DATABASE [KLA_SC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KLA_SC', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KLA_SC.mdf' , SIZE = 30724096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KLA_SC_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KLA_SC_log.ldf' , SIZE = 2458624KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KLA_SC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KLA_SC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KLA_SC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KLA_SC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KLA_SC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KLA_SC] SET ARITHABORT OFF 
GO
ALTER DATABASE [KLA_SC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KLA_SC] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_SC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KLA_SC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_SC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KLA_SC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KLA_SC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KLA_SC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KLA_SC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KLA_SC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KLA_SC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KLA_SC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KLA_SC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KLA_SC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KLA_SC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KLA_SC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KLA_SC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KLA_SC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KLA_SC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KLA_SC] SET  MULTI_USER 
GO
ALTER DATABASE [KLA_SC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KLA_SC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KLA_SC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KLA_SC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KLA_SC', N'ON'
GO
USE [KLA_SC]
GO
/****** Object:  User [US\SQL_KLA_R]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [US\SQL_KLA_R] FOR LOGIN [US\SQL_KLA_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKJ1J02]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_MXKJ1J02] FOR LOGIN [SAS_MXKJ1J02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKI1G02]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [SAS_MXKI1G02] FOR LOGIN [SAS_MXKI1G02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:40:52 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KLA_R]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_MXKJ1J02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_MXKI1G02]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:40:53 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_KLA_WASTE_MGMT_KPI]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ==============================================================================================================================================================================
-- NAME        	:  USP_KLA_WASTE_MGMT_KPI

-- PURPOSE & 
-- DESCRIPTION  :  This Stored Procedure is used to create the KPIs for KLA Waste Management of which few are at the Finished Material Grain & few are at Component Material Grain
                        
-- REVISIONS:

-- VERSION     DATE            AUTHOR                   CHANGE REASON

-- 1.0		   01/18/2018	   USCUXB73					1. INITIAL VERSION 

-- 2.0		   06/20/2018	   USCAKK02 				2. Added the filter Criteria to load rolling two 12 months of Data 

-- 3.0		   07/13/2018	   USCAKK02					3. Added Calculation logic for GI_frozen_Qty, GI_Frozen_LCL_Curr,GI_Frozen_USD

-- ==============================================================================================================================================================================


CREATE  PROCEDURE [dbo].[USP_KLA_WASTE_MGMT_KPI]
	
AS
BEGIN
--########################################################################################################################################################
	---------------------------------#GOODS Receipt Actual--------------------------------------------------------------------------
Select AUFNR , MATNR ,WERKS, AUFM.BUDAT as BUDAT ,case when BWART = '102' then MENGE*-1 else MENGE end as MENGE ,AUFM.MEINS as UNIT ,AUFM.WAERS as LCL_CURR ,BWART,RIGHT(BKTXT,1) as SHIFT_
into #MENGE from KLA_ECC.dbo.AUFM(NOLOCK) 
Left outer JOIN KLA_ECC.dbo.MKPF(NOLOCK) ON MKPF.MBLNR = AUFM.MBLNR and AUFM.MJAHR = MKPF.MJAHR
where  BWART IN ('101','102') and WERKS IN ( '0380','0381','0382','0384','0387','0388','0389','0391')  --movement type 102 should be negative
 

Select AUFNR,MATNR,WERKS,BUDAT,UNIT,LCL_CURR , SUM(MENGE) as GOOD_RECEIPT_ACTUAL, 
(CASE WHEN SHIFT_ = 'A' THEN 'A'
WHEN SHIFT_ = 'B' THEN 'B'
WHEN SHIFT_ = 'C' THEN 'C'
ELSE 'N'
END) as SHIFT_
into #Good_Receipt_Actual from  #MENGE  Group by AUFNR,MATNR,WERKS,BUDAT,UNIT,LCL_CURR,SHIFT_
--------------------------------- END #GOODS Receipt Actual--------------------------------------------------------------------------


-------------------------------------------------#GL_Qty Actual & GL Qty Actual LC---------------------------------------------------
Select AUFNR, MATNR, WERKS,AUFM.BUDAT,AUFM.MEINS as UNIT ,AUFM.WAERS as LCL_CURR ,case when BWART = '262' then ERFMG*-1 else ERFMG end as GI_QTY_ACTUAL ,
case when BWART = '262' then DMBTR*-1 else DMBTR end as GI_VAL_ACTUAL_LC,
(CASE WHEN RIGHT(BKTXT,1) = 'A' THEN 'A'
WHEN RIGHT(BKTXT,1) = 'B' THEN 'B'
WHEN RIGHT(BKTXT,1) = 'C' THEN 'C'
ELSE 'N'
END) as SHIFT_
into #GL_Actual 
from KLA_ECC.dbo.AUFM(NOLOCK)
Left outer JOIN KLA_ECC.dbo.MKPF(NOLOCK) ON MKPF.MBLNR = AUFM.MBLNR and AUFM.MJAHR = MKPF.MJAHR
where BWART IN ('261','262')   --movement type 262 should be negative

 
 -------------------------------------------------END #GL_Qty Actual & GL Qty Actual LC---------------------------------------------------
 
 
-------------------------------------------------AFKO for FINISHED Material & Union GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC -----------------------

IF OBJECT_ID(N'KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC_LN', N'U') IS NOT NULL
	DROP TABLE KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC_LN;

Select #GL_Actual.AUFNR,AFKO.PLNBEZ as FINISHED,MATNR as COMPONENT,WERKS,BUDAT,UNIT,LCL_CURR,SHIFT_, 0 as GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC 
into  KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC_LN
from #GL_Actual
INNER JOIN KLA_ECC.dbo.AFKO(NOLOCK) ON AFKO.AUFNR = #GL_Actual.AUFNR


INSERT INTO STG.GOOD_RECEIPT_ACT_GL_LC_LN (AUFNR,FINISHED,COMPONENT,WERKS,BUDAT,UNIT,LCL_CURR,SHIFT_,GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC )
(
select AUFNR,MATNR as FINISHED, NULL as COMPONENT,WERKS,BUDAT,UNIT,LCL_CURR,SHIFT_,GOOD_RECEIPT_ACTUAL, 0 as GI_QTY_ACTUAL,0 as GI_VAL_ACTUAL_LC  
from #Good_Receipt_Actual as GDA)

--------------Summarising at day grain-------------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC;

select AUFNR, FINISHED , COMPONENT , WERKS, BUDAT , UNIT , LCL_CURR , SHIFT_ , sum(GOOD_RECEIPT_ACTUAL) as GOOD_RECEIPT_ACTUAL ,sum(GI_QTY_ACTUAL) as GI_QTY_ACTUAL,
sum(GI_VAL_ACTUAL_LC) as GI_VAL_ACTUAL_LC 
into KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC
from KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC_LN
where FINISHED NOT IN ('') 
group by AUFNR,FINISHED,COMPONENT,WERKS,BUDAT,UNIT,SHIFT_,LCL_CURR
order by AUFNR,FINISHED,COMPONENT,WERKS,BUDAT,UNIT,SHIFT_,LCL_CURR
--------------End of Summarising at day grain-------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------END:AFKO for FINISHED Material & Union GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC -----------------------
IF OBJECT_ID(N'KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL;

Select distinct AUFNR , FINISHED ,BUDAT, WERKS , UNIT,LCL_CURR,SHIFT_ , GOOD_RECEIPT_ACTUAL
into KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL
from KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC  
where GOOD_RECEIPT_ACTUAL <> 0
order by FINISHED , BUDAT,WERKS ,UNIT,LCL_CURR, SHIFT_

IF OBJECT_ID(N'KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL_CMPT', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL_CMPT;

Select distinct AUFNR ,FINISHED , COMPONENT ,BUDAT, WERKS,UNIT,LCL_CURR, SHIFT_,GOOD_RECEIPT_ACTUAL 
into KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL_CMPT
from 
KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC
order by FINISHED ,COMPONENT, WERKS ,UNIT,LCL_CURR, SHIFT_

IF OBJECT_ID(N'KLA_SC.STG.BOM_GDR_FNL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GDR_FNL;

select GDA_CMPT.*,GDA_FIN.GOOD_RECEIPT_ACTUAL as GDA_FNL 
into  KLA_SC.STG.BOM_GDR_FNL
from KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL_CMPT as GDA_CMPT
left outer join STG.BOM_GOOD_RECEIPT_ACTL as GDA_FIN
ON GDA_FIN.FINISHED = GDA_CMPT.FINISHED and GDA_FIN.BUDAT = GDA_CMPT.BUDAT and
GDA_FIN.SHIFT_ = GDA_CMPT.SHIFT_  and GDA_FIN.AUFNR=GDA_CMPT.AUFNR 
Order by FINISHED, COMPONENT , BUDAT, SHIFT_
--#########################################################################################################################################################################
-------------------------------------End :#GOODS Receipt Actual-------------------------------------------------------------------------------------------

--##########################################################################################################################################################################

-------------------------------------GI_QTY_STANDARD , IDEAL , SCRAP , ALPGR-------------------------------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.STNDRD_HST_TEMP', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.STNDRD_HST_TEMP;
---------------------------------------------------------------------------------------------------------------
SELECT DISTINCT 
M.MATNR,
M.WERKS, 
K.STLNR,
K.BMEIN,
K.BMENG, 
P.IDNRK,
P.MEINS,
P.MENGE,
P.AUSCH,
P.ALPGR,
P.EWAHR,
(1+(P.AUSCH/100)) as STANDARD_V, 
P.MENGE/K.BMENG as IDEAL_V,
S.valid_from,
S.valid_to
into KLA_SC.STG.STNDRD_HST_TEMP
FROM KLA_ECC.dbo.MAST(NOLOCK) M, KLA_ECC.dbo.MARA(NOLOCK) IM, KLA_ECC.dbo.MARA(NOLOCK) MST,

--STKO
(SELECT KI.STLTY, KI.STLNR, KI.STLAL, KI3.STKOZ, KI3.LKENZ, KI.DATUV_LATEST, KI3.BMEIN, KI3.BMENG
          FROM
         (SELECT STLTY, STLNR, STLAL, MAX(DATUV) AS DATUV_LATEST 
         FROM KLA_ECC.dbo.STKO(NOLOCK)
         WHERE STLTY='M'
         GROUP BY STLTY, STLNR, STLAL) KI, 
         (SELECT STLTY, STLNR, STLAL, DATUV, MAX(STKOZ) AS STKOZ_LATEST 
         FROM KLA_ECC.dbo.STKO(NOLOCK)
         WHERE STLTY='M'
         GROUP BY STLTY, STLNR, STLAL, DATUV) KI2, 
         KLA_ECC.dbo.STKO(NOLOCK) KI3 
         WHERE KI.STLTY = 'M'    
           AND KI.STLTY=KI2.STLTY
           AND KI.STLNR=KI2.STLNR
           AND KI.STLAL=KI2.STLAL
           AND KI.DATUV_LATEST=KI2.DATUV
           AND KI.STLTY=KI3.STLTY
           AND KI.STLNR=KI3.STLNR
           AND KI.STLAL=KI3.STLAL
           AND KI.DATUV_LATEST=KI3.DATUV
           AND ISNULL(LTRIM(RTRIM(KI3.LOEKZ)),'')=''
           AND ISNULL(LTRIM(RTRIM(KI3.LKENZ)),'')=''
           AND KI2.STKOZ_LATEST=KI3.STKOZ) K, 

--MUST GET THE LATEST VALID FROM IF DUPLICATE LATEST COUNTER
--STPO
(SELECT PI.STLTY, PI.STLNR, PI.STLKN, PI3.STPOZ, PI3.LKENZ, PI.DATUV_LATEST, PI3.IDNRK, PI3.MENGE, PI3.AUSCH , PI3.MEINS,PI3.ALPGR,PI3.EWAHR
         FROM
         (SELECT STLTY, STLNR, STLKN, MAX(DATUV) AS DATUV_LATEST 
         FROM KLA_ECC.dbo.STPO(NOLOCK)
         WHERE STLTY='M'
         GROUP BY STLTY, STLNR, STLKN) PI, 
         (SELECT STLTY, STLNR, STLKN, DATUV, MAX(STPOZ) AS STPOZ_LATEST 
         FROM KLA_ECC.dbo.STPO(NOLOCK)
         WHERE STLTY='M'
         GROUP BY STLTY, STLNR, STLKN, DATUV) PI2, 
         KLA_ECC.dbo.STPO(NOLOCK) PI3 
         WHERE PI.STLTY=PI2.STLTY
           AND PI.STLNR=PI2.STLNR
           AND PI.STLKN=PI2.STLKN
           AND PI.DATUV_LATEST=PI2.DATUV
           AND PI.STLTY=PI3.STLTY
           AND PI.STLNR=PI3.STLNR
           AND PI.STLKN=PI3.STLKN
           AND PI.DATUV_LATEST=PI3.DATUV
           AND ISNULL(LTRIM(RTRIM(PI3.LKENZ )),'')=''
           AND PI2.STPOZ_LATEST=PI3.STPOZ ) P, 


---MUST GET THE LATEST VALID FROM FOR IF DUPLICATE LATEST COUNTER 

--STAS        
              (select min.STLTY, min.STLNR, min.STLAL, min.STLKN, min.valid_from, CASE when max.valid_to is null then '9999-12-31' else max.valid_to end as valid_to
              from
                (select STLTY, STLNR, STLAL, STLKN, DATUV as valid_from
                 FROM KLA_ECC.dbo.STAS(NOLOCK) m
                WHERE STLTY='M'
                AND CONCAT(STLTY, STLNR, STLAL, STLKN, STASZ)=
                (select CONCAT(STLTY, STLNR, STLAL, STLKN, min(STASZ))
                 FROM KLA_ECC.dbo.STAS(NOLOCK) i
           WHERE STLTY='M'
            
                     and m.STLTY=i.STLTY
                     and m.STLNR=i.STLNR
                     and m.STLAL=i.STLAL
                     and m.STLKN=i.STLKN
                     AND ISNULL(LTRIM(RTRIM(LKENZ)),'')=''
                group by STLTY, STLNR, STLAL, STLKN) 
                ) min
                left outer join             
                (select STLTY, STLNR, STLAL, STLKN, DATUV as valid_to
                 FROM KLA_ECC.dbo.STAS m
           WHERE STLTY='M'
             
                  AND CONCAT(STLTY, STLNR, STLAL, STLKN, STASZ)=
                (select CONCAT(STLTY, STLNR, STLAL, STLKN, max(STASZ))
                 FROM KLA_ECC.dbo.STAS(NOLOCK) i
           WHERE STLTY='M'
            
                     and m.STLTY=i.STLTY
                     and m.STLNR=i.STLNR
                     and m.STLAL=i.STLAL
                     and m.STLKN=i.STLKN
                     AND ISNULL(LTRIM(RTRIM(LKENZ)),'')='X'
                group by STLTY, STLNR, STLAL, STLKN) 
                ) max on min.STLTY=max.STLTY and  min.STLNR=max.STLNR and  min.STLAL=max.STLAL and min.STLKN=max.STLKN) S ---MUST GET THE LATEST VALID FROM IF DUPLICATE LATEST COUNTER
         WHERE M.MATNR=MST.MATNR
           AND IM.MATNR=P.IDNRK
           AND K.STLTY=S.STLTY
           AND K.STLNR=S.STLNR
           AND K.STLAL=S.STLAL
           AND S.STLTY=P.STLTY
           AND S.STLNR=P.STLNR
           AND S.STLKN=P.STLKN
           AND S.valid_from<= S.valid_to -- if never comes live ignore
           AND M.STLAN='1'                                  
           AND K.STLNR=M.STLNR
		   AND K.STLAL=M.STLAL
		 
		 
--##########################################################################################################################################################################

-------------------------------------GI_QTY_FROZEN-------------------------------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.STNDRD_HST', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.STNDRD_HST;

SELECT DISTINCT 
COALESCE(S.MATNR,F.MATNR) as MATNR,
COALESCE(S.WERKS,F.WERKS) as WERKS, 
COALESCE(S.STLNR,F.STLNR) as STLNR,
COALESCE(S.IDNRK,F.IDNRK) as IDNRK,
COALESCE(S.BMEIN,F.BMEIN) as BMEIN,
COALESCE(S.MEINS,F.MEINS) as MEINS, 
S.BMENG,
COALESCE(F.BMENG,S.BMENG) as BMENG_FRZ, 
S.MENGE,
COALESCE(F.MENGE,S.MENGE) as MENGE_FRZ,
S.AUSCH,
COALESCE(F.AUSCH,S.AUSCH) as AUSCH_FRZ,
S.ALPGR,
COALESCE(F.ALPGR,S.ALPGR) as ALPGR_FRZ,
S.EWAHR,
COALESCE(F.EWAHR,S.EWAHR) as EWAHR_FRZ,
S.STANDARD_V, 
COALESCE(F.STANDARD_V,S.STANDARD_V) as FROZEN_V,
S.IDEAL_V,
COALESCE(S.valid_from,F.valid_to) as valid_from,
COALESCE(S.valid_to,'9999-12-31') as valid_to
into KLA_SC.STG.STNDRD_HST
FROM KLA_SC.STG.STNDRD_HST_TEMP S
FULL JOIN (select * FROM KLA_SC.STG.STNDRD_HST_TEMP where year(valid_from) = year(getdate())-1) F
ON S.STLNR=F.STLNR and S.valid_from = F.valid_to and S.IDNRK=F.IDNRK    -- Getting the BOMS that are created in the Prior year for a Production Order which is used to Calculate Frozen Quantities

--SELECT min(FISC_WK_STRT_DT) as FISC_YR_FRST_DT FROM dbo.UVW_FISC_CAL
--WHERE FISC_YR = year(getdate())

--------------------------------------------BEGIN:Valid Component Material for a given production order-----------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.STNDRD_IDL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.STNDRD_IDL;


select DISTINCT G.AUFNR ,MATNR,t.WERKS,STLNR,BMEIN,BMENG,BMENG_FRZ,IDNRK,MEINS, MENGE,MENGE_FRZ,
AUSCH,ALPGR,ALPGR_FRZ,EWAHR,EWAHR_FRZ,FROZEN_V,STANDARD_V,IDEAL_V
into KLA_SC.STG.STNDRD_IDL
 from KLA_SC.STG.STNDRD_HST as t,
 
(select distinct AUFNR,FINISHED ,WERKS ,BUDAT from KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL_CMPT) G
where t.MATNR = G.FINISHED and t.WERKS = G.WERKS and G.BUDAT between t.valid_from and t.valid_to order by AUFNR

--------------------------------------------END:Valid Component Material for a given production order-----------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.STNDRD_IDL_FNL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.STNDRD_IDL_FNL;

select distinct CMPT.FINISHED,IDL.IDNRK as COMPONENT ,CMPT.WERKS, 
IDL.AUFNR,
IDL.BMEIN,
IDL.BMENG,
IDL.BMENG_FRZ,
IDL.MEINS,
IDL.MENGE,
IDL.MENGE_FRZ,
IDL.AUSCH,
IDL.ALPGR,
IDL.ALPGR_FRZ,
IDL.EWAHR,
IDL.EWAHR_FRZ,
IDL.FROZEN_V,
IDL.STANDARD_V,
IDL.IDEAL_V
into KLA_SC.STG.STNDRD_IDL_FNL
from 
--(Select distinct FINISHED , COMPONENT, WERKS from KLA_SC.STG.GDA_CMPT) 
(select distinct AUFNR,FINISHED ,WERKS ,BUDAT from KLA_SC.STG.BOM_GOOD_RECEIPT_ACTL_CMPT )as CMPT
LEFT OUTER JOIN KLA_SC.STG.STNDRD_IDL as IDL ON CMPT.FINISHED = IDL.MATNR and CMPT.WERKS = IDL.WERKS and CMPT.AUFNR = IDL.AUFNR
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------GI_QTY_STANDARD , IDEAL , SCRAP , ALPGR-----------------------------------------------------------------------------------------------
--#########################################################################################################################################################################
-------------------------------------------------OVER_WGT_CMPT,MOSTURE_PRCT_CMPT,WASTE_PRCT_CMPT------------------------------------------------------------------------
---NEEDS INDEX for KLA_SC.STG.STNDRD_IDL_FNL

IF OBJECT_ID(N'KLA_SC.STG.BOM_GDA_LN_TEMP', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GDA_LN_TEMP;

Select distinct  
GDR_FNL.AUFNR,
GDR_FNL.FINISHED,
GDR_FNL.COMPONENT,
IDL.FINISHED as IDL_FIN, 
IDL.COMPONENT as IDL_CMP,
IDL.WERKS,
GDR_FNL.BUDAT,
--GDR_FNL.UNIT,
IDL.MEINS as UNIT,
GDR_FNL.LCL_CURR,
GDR_FNL.SHIFT_,
0 as GOOD_RECEIPT_ACTUAL,
0 as GI_QTY_ACTUAL,
0 as GI_VAL_ACTUAL_LC,

(CASE WHEN IDL.ALPGR IS NULL OR IDL.ALPGR = '' THEN 
((IDL.MENGE*GDR_FNL.GDA_FNL*IDL.STANDARD_V)/(IDL.BMENG))*1
--((IDL.MENGE*GDR_FNL.GDA_FNL*IDL.STANDARD_V)/(IDL.BMENG))*(IDL.EWAHR/100)
ELSE 
--((IDL.MENGE*GDR_FNL.GDA_FNL*IDL.STANDARD_V)/(IDL.BMENG))*1
((IDL.MENGE*GDR_FNL.GDA_FNL*IDL.STANDARD_V)/(IDL.BMENG))*(IDL.EWAHR/100)
END) as GI_QTY_STANDARD ,
 
(CASE WHEN IDL.ALPGR_FRZ IS NULL OR IDL.ALPGR_FRZ = '' THEN 
((IDL.MENGE_FRZ*GDR_FNL.GDA_FNL*IDL.FROZEN_V)/(IDL.BMENG_FRZ))*1
--((IDL.MENGE*GDR_FNL.GDA_FNL*IDL.STANDARD_V)/(IDL.BMENG))*(IDL.EWAHR/100)
ELSE 
--((IDL.MENGE*GDR_FNL.GDA_FNL*IDL.STANDARD_V)/(IDL.BMENG))*1
((IDL.MENGE_FRZ*GDR_FNL.GDA_FNL*IDL.FROZEN_V)/(IDL.BMENG_FRZ))*(IDL.EWAHR_FRZ/100)						--Frozen Quantity is calculated taking the BOMS of previous Fiscal year for a Production Order
END) as GI_QTY_FROZEN,

(CASE WHEN IDL.ALPGR IS NULL OR IDL.ALPGR = '' THEN 
(IDL.IDEAL_V*GDR_FNL.GDA_FNL) 
ELSE 
((IDL.IDEAL_V*GDR_FNL.GDA_FNL))*(IDL.EWAHR/100)
END
)as GI_QTY_IDEAL,
IDL.AUSCH as SCRAP,
IDL.ALPGR as ALTN_GRP
into KLA_SC.STG.BOM_GDA_LN_TEMP
from
KLA_SC.STG.BOM_GDR_FNL as GDR_FNL
LEFT OUTER JOIN KLA_SC.STG.STNDRD_IDL_FNL as IDL ON GDR_FNL.FINISHED = IDL.FINISHED
and GDR_FNL.WERKS = IDL.WERKS and GDR_FNL.AUFNR = IDL.AUFNR

CREATE INDEX IDX_BOM_GDA_LN_TMP ON KLA_SC.STG.BOM_GDA_LN_TEMP(AUFNR,IDL_FIN,IDL_CMP)

IF OBJECT_ID(N'KLA_SC.STG.BOM_GDA_LN', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GDA_LN;

Select distinct
AUFNR , IDL_FIN,IDL_CMP , WERKS,BUDAT, UNIT,LCL_CURR,SHIFT_ ,0 as GOOD_RECEIPT_ACTUAL,
convert(decimal(15,4),0) as GI_QTY_ACTUAL,
convert(decimal(15,4),0) as GI_VAL_ACTUAL_LC,GI_QTY_STANDARD,GI_QTY_FROZEN,GI_QTY_IDEAL
into KLA_SC.STG.BOM_GDA_LN
from KLA_SC.STG.BOM_GDA_LN_TEMP 
Where IDL_CMP IS NOT NULL
Order by AUFNR,IDL_FIN,IDL_CMP,WERKS,UNIT,LCL_CURR



-------------------------------------------Insert GI_QTY_ACTUAL , GI_VAL_ACTUAL_LC-------------------------------------------------------------------------------------------------------
INSERT INTO KLA_SC.STG.BOM_GDA_LN(AUFNR,IDL_FIN,IDL_CMP,BUDAT,WERKS,UNIT,LCL_CURR,SHIFT_,GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC,GI_QTY_STANDARD,GI_QTY_FROZEN,GI_QTY_IDEAL)
(SELECT DISTINCT AUFNR,FINISHED, COMPONENT,BUDAT,WERKS,UNIT,LCL_CURR,SHIFT_,0 as GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC , 0.0000 as GI_QTY_STANDARD, 0.0000 as  GI_QTY_FROZEN,0.0000 as GI_QTY_IDEAL
FROM KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC where COMPONENT IS NOT NULL)
-------------------------------------------End:Insert GI_QTY_ACTUAL , GI_VAL_ACTUAL_LC-------------------------------------------------------------------------------------------------------

-------------------------------------------Insert GOOD_RECEIPT_ACTUAL----------------------------------------------------------------------------------------------------------------------
INSERT INTO KLA_SC.STG.BOM_GDA_LN(AUFNR,IDL_FIN,IDL_CMP,BUDAT,WERKS,UNIT,LCL_CURR,SHIFT_,GOOD_RECEIPT_ACTUAL,GI_QTY_ACTUAL,GI_VAL_ACTUAL_LC,GI_QTY_STANDARD,GI_QTY_FROZEN,GI_QTY_IDEAL)
(SELECT DISTINCT AUFNR,FINISHED, NULL as IDL_CMP,BUDAT,WERKS,UNIT,LCL_CURR,SHIFT_, GOOD_RECEIPT_ACTUAL,0.0000 as GI_QTY_ACTUAL,0.0000 as GI_VAL_ACTUAL_LC,0.0000 as GI_QTY_STANDARD,0.0000 as  GI_QTY_FROZEN, 0.0000 as GI_QTY_IDEAL
FROM KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC WHERE FINISHED IS NOT NULL and GOOD_RECEIPT_ACTUAL <> 0
--and UNIT = 'CS'
)

-------------------------------------------End:Insert GOOD_RECEIPT_ACTUAL-------------------------------------------------------------------------------------------------------


-------------------------------------------SUMMARISE:Insert GI_QTY_ACTUAL , GI_VAL_ACTUAL_LC,GOOD_RECEIPT_ACTUAL,GI_QTY_STANDARD,GI_QTY_IDEAL-------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.BOM_GDA_TMP', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GDA_TMP;

SELECT DISTINCT AUFNR,IDL_FIN as FINISHED, IDL_CMP as COMPONENT,BUDAT,WERKS,UNIT,LCL_CURR,SHIFT_,
sum(isnull(GOOD_RECEIPT_ACTUAL,0.0000)) as GOOD_RECEIPT_ACTUAL,sum(isnull(GI_QTY_ACTUAL,0.0000)) as GI_QTY_ACTUAL,
sum(isnull(GI_VAL_ACTUAL_LC,0.0000)) as GI_VAL_ACTUAL_LC,sum(isnull(GI_QTY_STANDARD,0.0000)) as GI_QTY_STANDARD,
sum(isnull(GI_QTY_FROZEN,0.0000)) as GI_QTY_FROZEN,sum(isnull(GI_QTY_IDEAL,0.0000)) as GI_QTY_IDEAL
into KLA_SC.STG.BOM_GDA_TMP
FROM KLA_SC.STG.BOM_GDA_LN as GDA_LN

Group by AUFNR,IDL_FIN, IDL_CMP,BUDAT,WERKS,UNIT,LCL_CURR,SHIFT_

CREATE INDEX IDX_BOM_GDA_TMP ON KLA_SC.STG.BOM_GDA_TMP(AUFNR, FINISHED,COMPONENT)

-------------------------------------------END OF SUMMARISE:Insert GI_QTY_ACTUAL , GI_VAL_ACTUAL_LC,GOOD_RECEIPT_ACTUAL,GI_QTY_STANDARD,GI_QTY_IDEAL----------------------------------------

-------------------------------------------ALTERNATE GROUP & SCRAP-------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.BOM_GDA', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.BOM_GDA;

SELECT LN.*,TMP.ALTN_GRP,TMP.SCRAP 
into KLA_SC.STG.BOM_GDA
from KLA_SC.STG.BOM_GDA_TMP as LN

LEFT OUTER JOIN (Select distinct AUFNR , IDL_FIN,IDL_CMP,ALTN_GRP,SCRAP from KLA_SC.STG.BOM_GDA_LN_TEMP) TMP ON TMP.AUFNR = LN.AUFNR and TMP.IDL_FIN = LN.FINISHED and TMP.IDL_CMP = LN.COMPONENT
-------------------------------------------END:ALTERNATE GROUP & SCRAP-------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.MBEW_CMPT', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.MBEW_CMPT;

Select CMPT.COMPONENT, CMPT.WERKS,MBEW.STPRS as STPRS_MBEW,MBEW.PEINH  as PEINH_MBEW,
MBEW.BWPRS/100 as OVER_WGT_CMPT,
MBEW.BWPS1/100 as MOSTURE_PRCT_CMPT,
MBEW.VJBWS/100 as WASTE_PRCT_CMPT
into KLA_SC.STG.MBEW_CMPT
from  --5252
--(Select distinct COMPONENT,WERKS from KLA_SC.STG.GDA_CMPT) as CMPT
(Select distinct COMPONENT,WERKS from KLA_SC.STG.BOM_GDA) as CMPT
LEFT OUTER JOIN 
(Select  distinct MATNR,BWKEY,STPRS,PEINH,BWPRS,BWPS1,VJBWS from KLA_ECC.dbo.MBEW) as MBEW on MBEW.MATNR = CMPT.COMPONENT and MBEW.BWKEY = CMPT.WERKS


----------------------------------------------------------MBEW+BOM+GRA---------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.KLA_WASTE_MGMT', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.KLA_WASTE_MGMT;


Select BOM.* , OVER_WGT_CMPT, MOSTURE_PRCT_CMPT, WASTE_PRCT_CMPT ,STPRS_MBEW,PEINH_MBEW 
into KLA_SC.STG.KLA_WASTE_MGMT
from KLA_SC.STG.BOM_GDA as BOM
LEFT OUTER JOIN KLA_SC.STG.MBEW_CMPT as MBEW
ON MBEW.COMPONENT = BOM.COMPONENT and BOM.WERKS = MBEW.WERKS

----------------------------------------------------------END:MBEW+BOM+GRA----------------------------------------------------------
-------------------------------------------------OVER_WGT_CMPT,MOSTURE_PRCT_CMPT,WASTE_PRCT_CMPT------------------------------------------------------------------------
--####################################################################################################################################################################################

--#####################################################################################################################################################################################
----------------------------Get Latest Exchange rate----------------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.TCURR_WM', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.TCURR_WM;

Select KURST , FCURR,TCURR,UKURS ,99999999-GDATU as CURR_DT 
into #TCURR_WM 
from 
KLA_ECC.dbo.TCURR(NOLOCK) Where 
TCURR.TCURR = 'USD' and 99999999-GDATU >=  (SELECT CONVERT(VARCHAR(10), getdate()-5, 112))

Select * 
into KLA_SC.STG.TCURR_WM
from #TCURR_WM
where CURR_DT = (Select max(CURR_DT) from #TCURR_WM Where CURR_DT NOT IN('22140828' ,'99999999') )

----------------------------END :Get Latest Exchange Rate----------------------------------------------------------------------------------------------------------------

----#####################################################################################################################################################################################

----#####################################################################################################################################################################################

---------------------------------------------First Iteration of Down Stream Metrics------------------------------------------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.KLA_WASTE_MGMT_2', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.KLA_WASTE_MGMT_2;

Select KWM.* ,
(CASE WHEN MATRL.NET_WGT_1 = 0
THEN 
--THEN GI Qty - Ideal * (MBEW-STPRS/MBEW-PEINH) ELSE GI Qty - Ideal * (MBEW-STPRS/MBEW-PEINH/MARA-ZZNTGEW)
GI_QTY_STANDARD*(KWM.STPRS_MBEW/KWM.PEINH_MBEW) 
ELSE 
GI_QTY_STANDARD*((STPRS_MBEW/MATRL.NET_WGT_1)/PEINH_MBEW)
END) as GI_VAL_STANDRD_LC,


(CASE WHEN MATRL.NET_WGT_1 = 0
THEN 
--THEN GI Qty - Ideal * (MBEW-STPRS/MBEW-PEINH) ELSE GI Qty - Ideal * (MBEW-STPRS/MBEW-PEINH/MARA-ZZNTGEW)
GI_QTY_FROZEN*(KWM.STPRS_MBEW/KWM.PEINH_MBEW) 
ELSE 
GI_QTY_FROZEN*((STPRS_MBEW/MATRL.NET_WGT_1)/PEINH_MBEW)
END) as GI_VAL_FROZEN_LC,

(CASE WHEN MATRL.NET_WGT_1 = 0
THEN 
--THEN GI Qty - Ideal * (MBEW-STPRS/MBEW-PEINH) ELSE GI Qty - Ideal * (MBEW-STPRS/MBEW-PEINH/MARA-ZZNTGEW)
GI_QTY_IDEAL*(KWM.STPRS_MBEW/KWM.PEINH_MBEW) 
ELSE 
GI_QTY_IDEAL*((KWM.STPRS_MBEW/MATRL.NET_WGT_1)/KWM.PEINH_MBEW)
END) as GI_VAL_IDEAL_LC

into KLA_SC.STG.KLA_WASTE_MGMT_2
from  KLA_SC.STG.KLA_WASTE_MGMT as KWM
LEFT OUTER JOIN KG_VIEWS.KLA.UVW_MATRL as MATRL 
ON MATRL.MATRL_NBR = KWM.COMPONENT


---------------------------------------------End :First Iteration of Down Stream Metrics--------------------------------------------------------------------------------------------------
----########################################################################################################################################################################################
--###########################################################################################################################################################################################
-----------------------------------------------Second Iteration of Down Stream Metrics-------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.KLA_WASTE_MGMT_FNL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.KLA_WASTE_MGMT_FNL;

Select 
KWM2.* ,
(KWM2.GI_VAL_ACTUAL_LC*UKURS) as GI_VAL_ACTL_USD,
(KWM2.GI_VAL_STANDRD_LC*UKURS) as GI_VAL_STANDRD_USD,
(KWM2.GI_VAL_FROZEN_LC*UKURS) as GI_VAL_FROZEN_USD,
(KWM2.GI_VAL_IDEAL_LC*UKURS) as GI_VAL_IDEAL_USD

into KLA_SC.STG.KLA_WASTE_MGMT_FNL
From 
KLA_SC.STG.KLA_WASTE_MGMT_2 as KWM2
LEFT OUTER JOIN 
STG.TCURR_WM ON TCURR_WM.FCURR = KWM2.LCL_CURR

-----------------------------------------------End of Second Iteration of Down Stream Metrics--------------------------------------------------------------------------------------------------

--#########################################################################################################################################################################################
--#######################################################################################################################################################################################
-----------Prodcution Order Plants-----------------------------------------------------
IF OBJECT_ID(N'KLA_SC.STG.PROD_ORDERS_PLNT', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.PROD_ORDERS_PLNT;


Select distinct AUFNR ,FINISHED , WERKS 
into KLA_SC.STG.PROD_ORDERS_PLNT
from KLA_SC.STG.GOOD_RECEIPT_ACT_GL_LC where FINISHED NOT IN ('')
-----------END:Prodcution Order Plants--------------------------------------------------
--######################################################################################################################################################################################
--######################################################################################################################################################################################
-------------------------------------------------Third Iteration of Down Stream KPI's---------------------------------------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.TARGET_FNL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.TARGET_FNL;

Select 
FNL.*,

--STANDARD VS ACTUAL

--Standard Vs Actual in units =  (GI QTY - Standard) - (GI Qty - Actuals)
([GI_QTY_STANDARD]-[GI_QTY_ACTUAL]) as STNDRD_VS_ACTL,

--Standard Vs Actual in LC = (GI Val - Standard LC) - (GI Val - Actuals LC)
([GI_VAL_STANDRD_LC]-[GI_VAL_ACTUAL_LC]) as STNDRD_VS_ACTL_LC,

--Standard Vs Actual in USD = (GI Val - Standard USD) - (GI Val - Actuals USD)
([GI_VAL_STANDRD_USD]-[GI_VAL_ACTL_USD]) as STNDRD_VS_ACTL_USD,

--IDEAL VS ACTUAL

--Ideal Vs Actual in Units = (GI QTY - Ideal) - (GI Qty - Actuals)
([GI_QTY_IDEAL]-[GI_QTY_ACTUAL]) as IDL_VS_ACTL,

--Ideal vs Actual in LC = (GI Val - Ideal LC) - (GI Val - Actuals LC)
([GI_VAL_IDEAL_LC]-[GI_VAL_ACTUAL_LC]) as IDL_VS_ACTL_LC,

--Ideal vs Actual USD = (GI Val - Ideal USD) - (GI Val - Actuals USD)
([GI_VAL_IDEAL_USD]-[GI_VAL_ACTL_USD]) as IDL_VS_ACTL_USD,

--FROZEN VS ACTUAL

--Frozen Vs Actual in Units = (GI Qty - Actuals)  - (GI Qty - Frozen)
([GI_QTY_ACTUAL]-[GI_QTY_FROZEN]) as FRZN_VS_ACTL,

--Frozen Vs Actual in LC = (GI Val - Frozen LC)  - (GI Val - Actuals LC)
([GI_VAL_FROZEN_LC]-[GI_VAL_ACTUAL_LC]) as FRZN_VS_ACTL_LC,

--Frozen Vs Actual in USD = (GI Val - Frozen USD)  - (GI Val - Actuals USD)
([GI_VAL_FROZEN_USD]-[GI_VAL_ACTL_USD]) as FRZN_VS_ACTL_USD,


--Standard Vs Actual % = (GI QTY - Standard) / (GI Qty - Actuals)
(CASE WHEN [GI_QTY_ACTUAL] <> 0 THEN  ([GI_QTY_STANDARD]/[GI_QTY_ACTUAL]) ELSE 0 END ) as STNDRD_VS_ACTL_PRCT,

--% Ideal Vs Actual = (GI QTY - Ideal) /(GI Qty - Actuals)
([GI_QTY_IDEAL]-[GI_QTY_ACTUAL]) as PRCT_IDL_ACTL,

--Frozen Vs Actual % = (GI QTY - Frozen) -  (GI Qty - Actuals)
([GI_QTY_FROZEN]-[GI_QTY_ACTUAL]) as PRCT_FRZN_ACTL



INTO  KLA_SC.STG.TARGET_FNL
From  KLA_SC.STG.KLA_WASTE_MGMT_FNL as FNL
INNER JOIN KLA_SC.STG.PROD_ORDERS_PLNT as ORD ON FNL.AUFNR = ORD.AUFNR and FNL.FINISHED = ORD.FINISHED and FNL.WERKS = ORD.WERKS
-------------------------------------------------END:Third Iteration of Down Stream KPI's----------------------------------------------------------------------------------------------------
--###########################################################################################################################################################################################

--###########################################################################################################################################################################################
------Summarise the Data --------------------------------------------------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.KLA_WM_FNL_TMP', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.KLA_WM_FNL_TMP;


SELECT  distinct 
       [AUFNR]
      ,[FINISHED]
      ,ISNULL(RTRIM(LTRIM([COMPONENT])),'') as COMPONENT
      ,[WERKS]
      ,[BUDAT]
      ,[SHIFT_]
      ,[UNIT]
      ,[LCL_CURR]
	  ,[ALTN_GRP]
	  ,SUM(ISNULL([OVER_WGT_CMPT],0)) as [OVER_WGT_CMPT]
      ,SUM(ISNULL([MOSTURE_PRCT_CMPT],0)) as [MOSTURE_PRCT_CMPT]
      ,SUM(ISNULL([WASTE_PRCT_CMPT],0)) as [WASTE_PRCT_CMPT]
	  ,SUM(ISNULL([SCRAP],0)) as [SCRAP]
      ,SUM([GOOD_RECEIPT_ACTUAL]) as [GOOD_RECEIPT_ACTUAL]
	  
      ,SUM([GI_QTY_ACTUAL]) as [GI_QTY_ACTUAL]
	  ,SUM(ISNULL([GI_QTY_STANDARD],0)) as [GI_QTY_STANDARD]
	  ,SUM(ISNULL([GI_QTY_FROZEN],0)) as [GI_QTY_FROZEN]
      ,SUM(ISNULL([GI_QTY_IDEAL],0)) as [GI_QTY_IDEAL]
     
	  ,SUM([GI_VAL_ACTUAL_LC]) as [GI_VAL_ACTUAL_LC]
      ,SUM(ISNULL([GI_VAL_STANDRD_LC],0)) as [GI_VAL_STANDRD_LC]
	  ,SUM(ISNULL([GI_VAL_FROZEN_LC],0)) as [GI_VAL_FROZEN_LC]
      ,SUM(ISNULL([GI_VAL_IDEAL_LC],0)) as [GI_VAL_IDEAL_LC]
	  
      ,SUM(ISNULL([GI_VAL_ACTL_USD],0)) as [GI_VAL_ACTL_USD]
      ,SUM(ISNULL([GI_VAL_STANDRD_USD],0)) as [GI_VAL_STANDRD_USD]
	  ,SUM(ISNULL([GI_VAL_FROZEN_USD],0)) as [GI_VAL_FROZEN_USD]
      ,SUM(ISNULL([GI_VAL_IDEAL_USD],0)) as [GI_VAL_IDEAL_USD]
	  
      ,SUM(ISNULL([STNDRD_VS_ACTL],0)) as [STNDRD_VS_ACTL]
	  ,SUM(ISNULL([IDL_VS_ACTL],0)) as [IDL_VS_ACTL]
	  ,SUM(ISNULL([FRZN_VS_ACTL],0)) as [FRZN_VS_ACTL]
     
      ,SUM(ISNULL([STNDRD_VS_ACTL_LC],0)) as [STNDRD_VS_ACTL_LC]
	  ,SUM(ISNULL([IDL_VS_ACTL_LC],0)) as [IDL_VS_ACTL_LC]
	  ,SUM(ISNULL([FRZN_VS_ACTL_LC],0)) as [FRZN_VS_ACTL_LC]
      
	  
      ,SUM(ISNULL([STNDRD_VS_ACTL_USD],0)) as [STNDRD_VS_ACTL_USD]
      ,SUM(ISNULL([FRZN_VS_ACTL_USD],0)) as FRZN_VS_ACTL_USD
      ,SUM(ISNULL([IDL_VS_ACTL_USD],0)) as [IDL_VS_ACTL_USD]
      
      ,SUM(ISNULL([PRCT_IDL_ACTL],0)) as [PRCT_IDL_ACTL]
      ,SUM(ISNULL([PRCT_FRZN_ACTL],0)) as [PRCT_FRZN_ACTL]
	  ,SUM(ISNULL([STNDRD_VS_ACTL_PRCT],0)) as [STNDRD_VS_ACTL_PRCT]
      
  into KLA_SC.STG.KLA_WM_FNL_TMP

  FROM  [KLA_SC].[STG].[TARGET_FNL]

  GROUP BY 
       [AUFNR]
      ,[FINISHED]
      ,[COMPONENT]
      ,[WERKS]
      ,[BUDAT]
      ,[SHIFT_]
      ,[UNIT]
      ,[LCL_CURR]
	  ,[ALTN_GRP]
  ORDER BY AUFNR,FINISHED, COMPONENT,BUDAT, WERKS , SHIFT_

  CREATE INDEX IDX_AUFNR_WERKS_FIN_CMPT_TMP ON KLA_SC.STG.KLA_WM_FNL_TMP(AUFNR, FINISHED,COMPONENT,WERKS,BUDAT)

------END:Summarise the Data --------------------------------------------------------------------------------------------------------------------------------------------------------------------
--###############################################################################################################################################################################################
--Hereyougo
--###############################################################################################################################################################################################
------------------------------------------Line Name , Order Status & Last Change Date------------------------------------------------------------------------------------------------------------

IF OBJECT_ID(N'KLA_SC.STG.KLA_LINE_NM', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.KLA_LINE_NM;


Select DISTINCT  AFKO.AUFNR,CRHD.ARBPL+CRTX.KTEXT_UP as LINE_NM
INTO KLA_SC.STG.KLA_LINE_NM
FROM
(SELECT DISTINCT AUFNR,AUFPL FROM KLA_ECC.dbo.AFKO(NOLOCK)) as AFKO 
 LEFT OUTER JOIN (Select DISTINCT CAST(ARBID as VARCHAR) as ARBID , AUFPL FROM KLA_ECC.dbo.AFVC(NOLOCK)) AFVC ON AFKO.AUFPL = AFVC.AUFPL
 LEFT OUTER JOIN KLA_ECC.dbo.CRHD(NOLOCK) ON  AFVC.ARBID = CRHD.OBJID and CRHD.OBJTY ='A'
 LEFT OUTER JOIN KLA_ECC.dbo.CRTX(NOLOCK) ON CRHD.OBJTY = CRTX.OBJTY and CRHD.OBJID = CRTX.OBJID and CRTX.SPRAS ='E'
 
IF OBJECT_ID(N'KLA_SC.STG.AUFK_AEDAT', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.AUFK_AEDAT;

Select distinct AUFK.AUFNR , AUFK.AEDAT 
INTO KLA_SC.STG.AUFK_AEDAT from KLA_ECC.dbo.AUFK 
INNER JOIN KLA_ECC.dbo.AUFM(NOLOCK) ON AUFK.AUFNR= AUFM.AUFNR
where AEDAT NOT IN ('1900-01-01') and AUFK.WERKS IN ('0380','0381','0382','0384','0387','0388','0389','0391')

IF OBJECT_ID(N'KLA_SC.STG.ORDR_STATUS', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.ORDR_STATUS;

Select distinct AUFNR, TXT04 
INTO KLA_SC.STG.ORDR_STATUS
From 
KLA_ECC.dbo.AUFK LEFT OUTER JOIN KLA_ECC.dbo.JEST(NOLOCK) ON AUFK.OBJNR = JEST.OBJNR 
LEFT OUTER JOIN KLA_ECC.dbo.TJ02T(NOLOCK) ON JEST.STAT = TJ02T.ISTAT AND TJ02T.SPRAS ='E'
where AUFK.WERKS IN ('0380','0381','0382','0384','0387','0388','0389','0391') and TXT04 = 'TECO'

------------------------------------------END:Line Name , Order Status & Last Change Date------------------------------------------------------------------------------------------------------------
--###############################################################################################################################################################################################

BEGIN TRANSACTION;
SAVE TRANSACTION  FINAL;

IF OBJECT_ID(N'KLA_SC.STG.KLA_WM_FNL', N'U') IS NOT NULL
DROP TABLE KLA_SC.STG.KLA_WM_FNL;

SELECT 
       FNL.[WERKS] as PLNT
	  ,T001W.[NAME1] as PLNT_DESC
	  ,T001W.ORT01 as CITY
	  ,T001W.REGIO as RGN
	  ,T005U.BEZEI as RGN_DESC
	  ,T001W.LAND1 as CTRY
	  ,T005T.LANDX as CTRY_NM
	  ,LN.LINE_NM
      ,FNL.[AUFNR] as PROD_ORDR
	  ,[CHG_DT].AEDAT as LAST_CHG_DT
	  ,[STS].TXT04 as ORDR_STATUS
      ,[FINISHED] as MATRL
	  ,MATRL2.[MATRL_DESC]
	  ,MATRL2.[MATRL_GRP]
	  ,MATRL2.[MATRL_GRP_DESC]
	  ,MATRL2.[MATRL_TYP]
	  ,MATRL2.[MATRL_TYP_DESC] as DESC_OF_MATRL_TYP
	  ,PROD.[PROD_HIER_CATEGORY] as CATG
	  ,PROD.[PROD_HIER_CATEGORY_DESC] as CATG_DESC
	  ,PROD.[PROD_HIER_BRAND] as BRAND
	  ,PROD.[PROD_HIER_BRAND_DESC] as BRAND_DESC
	  ,PROD.[PROD_HIER_TYPE] as TYP
	  ,PROD.[PROD_HIER_TYPE_DESC] as TYP_DESC
	  ,[COMPONENT] as CMPT_MATRL
	  ,[MATRL].[MATRL_DESC] as MATRL_DESC_CMPT
	  ,MATRL.[MATRL_GRP] as MATRL_GRP_CMPT
	  ,MATRL.[MATRL_GRP_DESC] as MATRL_GRP_DESC_CMPT
	  ,MATRL.MATRL_TYP as MATRL_TYP_CMPT
	  ,MATRL.MATRL_TYP_DESC as MATRL_TYP_DESC_CMPT
	  ,ALTN_GRP
	  ,FISC_WK as FISC_WK
      ,CONVERT(Varchar ,FISC_PD)+'/'+CONVERT(Varchar,FISC_YR) as FISC_PD
      ,FISC_YR as FISC_YR
      ,[BUDAT] as DT_EA_CMPT
      ,[SHIFT_] as SHFT
      ,[UNIT] as UNIT
      ,[LCL_CURR]
	  
	  ,[OVER_WGT_CMPT] as OVR_WGT_PCT_CMPT_MATRL
      ,[MOSTURE_PRCT_CMPT] as MSTR_PRCT_CMPT_MATRL
      ,[WASTE_PRCT_CMPT] as WASTE_PRCT_CMPT_MATRL
	  ,[SCRAP]
      ,[GOOD_RECEIPT_ACTUAL] as GDS_RCPT_ACTL
	  
      ,[GI_QTY_ACTUAL] as GI_QTY_ACTL
	  ,[GI_QTY_STANDARD] as GI_QTY_STD
	  ,[GI_QTY_FROZEN]
      ,[GI_QTY_IDEAL]
     
	  ,[GI_VAL_ACTUAL_LC] as GI_VAL_ACTL_LCL_CURR
      ,[GI_VAL_STANDRD_LC] as GI_VAL_STD_LCL_CURR
	  ,[GI_VAL_FROZEN_LC] as GI_VAL_FROZEN_LCL_CURR
      ,[GI_VAL_IDEAL_LC] as GI_VAL_IDEAL_LCL_CURR
	  
      ,[GI_VAL_ACTL_USD] as GI_VAL_ACTL_USD
      ,[GI_VAL_STANDRD_USD] as GI_VAL_STD_USD
	  ,[GI_VAL_FROZEN_USD] 
      ,[GI_VAL_IDEAL_USD] 
	  
      ,[STNDRD_VS_ACTL] as STD_VS_ACTL
	  ,[IDL_VS_ACTL] as IDEAL_VS_ACTL
	  ,[FRZN_VS_ACTL] as FROZEN_VS_ACTL
     
      ,[STNDRD_VS_ACTL_LC] as STD_VS_ACTL_LCL_CURR
	  ,[IDL_VS_ACTL_LC] as IDEAL_VS_ACTL_LCL_CURR
	  ,[FRZN_VS_ACTL_LC] as FROZEN_VS_ACTL_LCL_CURR
      
      ,[STNDRD_VS_ACTL_USD] as STD_VS_ACTL_USD
      ,[IDL_VS_ACTL_USD] as IDEAL_VS_ACTL_USD
	  ,[FRZN_VS_ACTL_USD] as FROZEN_VS_ACTL_USD
      
      ,[PRCT_IDL_ACTL] as PRCT_IDEAL_ACTL
      ,[PRCT_FRZN_ACTL] as PRCT_FROZEN_ACTL
	  ,[STNDRD_VS_ACTL_PRCT] as STD_VS_ACTL_PRCT
    
INTO  [STG].[KLA_WM_FNL] FROM 
[STG].[KLA_WM_FNL_TMP] as FNL 
LEFT OUTER JOIN KG_VIEWS.KLA.UVW_MATRL as MATRL ON MATRL.MATRL_NBR = FNL.COMPONENT
LEFT OUTER JOIN KG_VIEWS.KLA.UVW_MATRL as MATRL2 ON MATRL2.MATRL_NBR = FNL.FINISHED
LEFT OUTER JOIN KG_VIEWS.KLA.UVW_PROD_HIER PROD ON PROD.[PROD_HIER] = MATRL.[PROD_HIER]
LEFT OUTER JOIN KLA_ECC.dbo.T001W as T001W ON T001W.WERKS = FNL.WERKS
LEFT OUTER JOIN KLA_ECC.dbo.T005U as T005U ON T001W.LAND1 = T005U.LAND1 AND T001W.REGIO = T005U.BLAND AND T005U.SPRAS = 'E'
LEFT OUTER JOIN KLA_ECC.dbo.T005T as T005T ON T001W.LAND1 = T005T.LAND1 AND T005T.SPRAS ='E'
LEFT OUTER JOIN KLA_SC.STG.AUFK_AEDAT as CHG_DT ON CHG_DT.AUFNR = FNL.AUFNR
LEFT OUTER JOIN KLA_SC.STG.ORDR_STATUS as STS ON STS.AUFNR = FNL.AUFNR
LEFT OUTER JOIN KLA_SC.STG.KLA_LINE_NM as LN ON LN.AUFNR = FNL.AUFNR
LEFT OUTER JOIN KG_VIEWS.KG.UVW_FISC_CAL as CAL ON FNL.BUDAT BETWEEN FISC_WK_STRT_DT and FISC_WK_END_DT
WHERE cast(CONCAT(FISC_YR,RIGHT(CONCAT(0,FISC_PD),2)) as int) >= 
(SELECT cast(CONCAT(FISC_YR,RIGHT(CONCAT(0,FISC_PD),2)) as int)-100 FROM KG_VIEWS.dbo.UVW_FISC_CAL
where cast(getdate() as date) between FISC_WK_STRT_DT and FISC_WK_END_DT)


CREATE INDEX IDX_PRD_ORDR_PLNT_DT ON KLA_SC.STG.KLA_WM_FNL(PROD_ORDR,PLNT,DT_EA_CMPT)

IF (@@ERROR <> 0)
	BEGIN
      ROLLBACK TRANSACTION FINAL;
	END
	COMMIT TRANSACTION ;
END




GO
/****** Object:  Table [dbo].[KLA_WM_MATERIAL_USAGE_VARIANCE_REP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_WM_MATERIAL_USAGE_VARIANCE_REP](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts - Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](9) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [varchar](50) NULL,
	[Overweight % for Component Material] [decimal](11, 2) NULL,
	[Moisture % for Component Material] [decimal](10, 2) NULL,
	[Waste % for Component Material] [decimal](10, 2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty - Actuals] [decimal](13, 2) NULL,
	[UNIT_1] [varchar](3) NULL,
	[GI Val - Actuals LC] [decimal](13, 2) NULL,
	[Local Currency] [varchar](4) NULL,
	[GI VAL - Actuals USD] [decimal](13, 2) NULL,
	[USD] [varchar](4) NULL,
	[GI Qty - Standard] [decimal](13, 2) NULL,
	[UNIT_2] [varchar](3) NULL,
	[GI Val - Standard LC] [decimal](13, 2) NULL,
	[Local Currency_1] [varchar](4) NULL,
	[GI Val - Standard USD] [decimal](13, 2) NULL,
	[USD_1] [varchar](4) NULL,
	[GI Val - Frozen LC] [decimal](13, 2) NULL,
	[Local Currency_2] [varchar](4) NULL,
	[GI Val - Frozen USD] [decimal](13, 2) NULL,
	[USD_2] [varchar](4) NULL,
	[GI Qty - Ideal] [decimal](13, 2) NULL,
	[UNIT_3] [varchar](3) NULL,
	[GI Val - Ideal LC] [decimal](13, 2) NULL,
	[Local Currency_3] [varchar](4) NULL,
	[GI Val - Ideal USD] [decimal](13, 2) NULL,
	[USD_3] [varchar](4) NULL,
	[Standard Vs Actual in units] [decimal](13, 2) NULL,
	[UNIT_4] [varchar](3) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_4] [varchar](4) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[USD_4] [varchar](4) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[UNIT_5] [varchar](3) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_5] [varchar](4) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[USD_5] [varchar](4) NULL,
	[Standard Vs Actual %] [decimal](13, 2) NULL,
	[% Ideal Vs Actual] [decimal](13, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty -  Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AUFK_AEDAT]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AUFK_AEDAT](
	[AUFNR] [varchar](12) NOT NULL,
	[AEDAT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GDA]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GDA](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[SCRAP] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GDA_LN]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GDA_LN](
	[AUFNR] [varchar](12) NULL,
	[IDL_FIN] [varchar](18) NULL,
	[IDL_CMP] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[BUDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NOT NULL,
	[GI_QTY_ACTUAL] [decimal](15, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](15, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GDA_LN_TEMP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GDA_LN_TEMP](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[IDL_FIN] [varchar](18) NULL,
	[IDL_CMP] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[BUDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NOT NULL,
	[GI_QTY_ACTUAL] [int] NOT NULL,
	[GI_VAL_ACTUAL_LC] [int] NOT NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[SCRAP] [decimal](5, 2) NULL,
	[ALTN_GRP] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GDA_TMP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GDA_TMP](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GDR_FNL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GDR_FNL](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GDA_FNL] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GOOD_RECEIPT_ACTL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GOOD_RECEIPT_ACTL](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BOM_GOOD_RECEIPT_ACTL_CMPT]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BOM_GOOD_RECEIPT_ACTL_CMPT](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CKIS_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CKIS_FILTERED](
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[GOOD_RECEIPT_ACT_GL_LC]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GOOD_RECEIPT_ACT_GL_LC](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[BUDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 3) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[GOOD_RECEIPT_ACT_GL_LC_LN]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GOOD_RECEIPT_ACT_GL_LC_LN](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[BUDAT] [date] NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NOT NULL,
	[GI_QTY_ACTUAL] [decimal](15, 3) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_LINE_NM]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_LINE_NM](
	[AUFNR] [varchar](12) NOT NULL,
	[LINE_NM] [varchar](48) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_WASTE_MGMT]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_WASTE_MGMT](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[SCRAP] [decimal](5, 2) NULL,
	[OVER_WGT_CMPT] [decimal](15, 6) NULL,
	[MOSTURE_PRCT_CMPT] [decimal](15, 6) NULL,
	[WASTE_PRCT_CMPT] [decimal](15, 6) NULL,
	[STPRS_MBEW] [decimal](11, 2) NULL,
	[PEINH_MBEW] [decimal](5, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_WASTE_MGMT_2]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_WASTE_MGMT_2](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[SCRAP] [decimal](5, 2) NULL,
	[OVER_WGT_CMPT] [decimal](15, 6) NULL,
	[MOSTURE_PRCT_CMPT] [decimal](15, 6) NULL,
	[WASTE_PRCT_CMPT] [decimal](15, 6) NULL,
	[STPRS_MBEW] [decimal](11, 2) NULL,
	[PEINH_MBEW] [decimal](5, 0) NULL,
	[GI_VAL_STANDRD_LC] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_LC] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_LC] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_WASTE_MGMT_FNL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_WASTE_MGMT_FNL](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[SCRAP] [decimal](5, 2) NULL,
	[OVER_WGT_CMPT] [decimal](15, 6) NULL,
	[MOSTURE_PRCT_CMPT] [decimal](15, 6) NULL,
	[WASTE_PRCT_CMPT] [decimal](15, 6) NULL,
	[STPRS_MBEW] [decimal](11, 2) NULL,
	[PEINH_MBEW] [decimal](5, 0) NULL,
	[GI_VAL_STANDRD_LC] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_LC] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_LC] [decimal](38, 6) NULL,
	[GI_VAL_ACTL_USD] [decimal](38, 6) NULL,
	[GI_VAL_STANDRD_USD] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_USD] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_USD] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_WM_FNL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_WM_FNL](
	[PLNT] [varchar](4) NULL,
	[PLNT_DESC] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[RGN] [varchar](3) NULL,
	[RGN_DESC] [varchar](20) NULL,
	[CTRY] [varchar](3) NULL,
	[CTRY_NM] [varchar](15) NULL,
	[LINE_NM] [varchar](48) NULL,
	[PROD_ORDR] [varchar](12) NULL,
	[LAST_CHG_DT] [date] NULL,
	[ORDR_STATUS] [varchar](4) NULL,
	[MATRL] [varchar](18) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[MATRL_GRP] [varchar](9) NULL,
	[MATRL_GRP_DESC] [varchar](20) NULL,
	[MATRL_TYP] [varchar](4) NULL,
	[DESC_OF_MATRL_TYP] [varchar](25) NULL,
	[CATG] [varchar](5) NULL,
	[CATG_DESC] [varchar](40) NULL,
	[BRAND] [varchar](10) NULL,
	[BRAND_DESC] [varchar](40) NULL,
	[TYP] [varchar](18) NULL,
	[TYP_DESC] [varchar](40) NULL,
	[CMPT_MATRL] [varchar](18) NOT NULL,
	[MATRL_DESC_CMPT] [varchar](40) NULL,
	[MATRL_GRP_CMPT] [varchar](9) NULL,
	[MATRL_GRP_DESC_CMPT] [varchar](20) NULL,
	[MATRL_TYP_CMPT] [varchar](4) NULL,
	[MATRL_TYP_DESC_CMPT] [varchar](25) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[FISC_WK] [decimal](3, 0) NULL,
	[FISC_PD] [varchar](61) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[DT_EA_CMPT] [date] NULL,
	[SHFT] [varchar](1) NOT NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[OVR_WGT_PCT_CMPT_MATRL] [decimal](38, 6) NULL,
	[MSTR_PRCT_CMPT_MATRL] [decimal](38, 6) NULL,
	[WASTE_PRCT_CMPT_MATRL] [decimal](38, 6) NULL,
	[SCRAP] [decimal](38, 2) NULL,
	[GDS_RCPT_ACTL] [int] NULL,
	[GI_QTY_ACTL] [decimal](38, 4) NULL,
	[GI_QTY_STD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[GI_VAL_ACTL_LCL_CURR] [decimal](38, 4) NULL,
	[GI_VAL_STD_LCL_CURR] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_LCL_CURR] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_LCL_CURR] [decimal](38, 6) NULL,
	[GI_VAL_ACTL_USD] [decimal](38, 6) NULL,
	[GI_VAL_STD_USD] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_USD] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_USD] [decimal](38, 6) NULL,
	[STD_VS_ACTL] [decimal](38, 4) NULL,
	[IDEAL_VS_ACTL] [decimal](38, 4) NULL,
	[FROZEN_VS_ACTL] [decimal](38, 4) NULL,
	[STD_VS_ACTL_LCL_CURR] [decimal](38, 4) NULL,
	[IDEAL_VS_ACTL_LCL_CURR] [decimal](38, 4) NULL,
	[FROZEN_VS_ACTL_LCL_CURR] [decimal](38, 4) NULL,
	[STD_VS_ACTL_USD] [decimal](38, 6) NULL,
	[IDEAL_VS_ACTL_USD] [decimal](38, 6) NULL,
	[FROZEN_VS_ACTL_USD] [decimal](38, 6) NULL,
	[PRCT_IDEAL_ACTL] [decimal](38, 4) NULL,
	[PRCT_FROZEN_ACTL] [decimal](38, 4) NULL,
	[STD_VS_ACTL_PRCT] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_WM_FNL_TMP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_WM_FNL_TMP](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NOT NULL,
	[WERKS] [varchar](4) NULL,
	[BUDAT] [date] NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[OVER_WGT_CMPT] [decimal](38, 6) NULL,
	[MOSTURE_PRCT_CMPT] [decimal](38, 6) NULL,
	[WASTE_PRCT_CMPT] [decimal](38, 6) NULL,
	[SCRAP] [decimal](38, 2) NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_VAL_STANDRD_LC] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_LC] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_LC] [decimal](38, 6) NULL,
	[GI_VAL_ACTL_USD] [decimal](38, 6) NULL,
	[GI_VAL_STANDRD_USD] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_USD] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_USD] [decimal](38, 6) NULL,
	[STNDRD_VS_ACTL] [decimal](38, 4) NULL,
	[IDL_VS_ACTL] [decimal](38, 4) NULL,
	[FRZN_VS_ACTL] [decimal](38, 4) NULL,
	[STNDRD_VS_ACTL_LC] [decimal](38, 4) NULL,
	[IDL_VS_ACTL_LC] [decimal](38, 4) NULL,
	[FRZN_VS_ACTL_LC] [decimal](38, 4) NULL,
	[STNDRD_VS_ACTL_USD] [decimal](38, 6) NULL,
	[FRZN_VS_ACTL_USD] [decimal](38, 6) NULL,
	[IDL_VS_ACTL_USD] [decimal](38, 6) NULL,
	[PRCT_IDL_ACTL] [decimal](38, 4) NULL,
	[PRCT_FRZN_ACTL] [decimal](38, 4) NULL,
	[STNDRD_VS_ACTL_PRCT] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MBEW_CMPT]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MBEW_CMPT](
	[COMPONENT] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STPRS_MBEW] [decimal](11, 2) NULL,
	[PEINH_MBEW] [decimal](5, 0) NULL,
	[OVER_WGT_CMPT] [decimal](15, 6) NULL,
	[MOSTURE_PRCT_CMPT] [decimal](15, 6) NULL,
	[WASTE_PRCT_CMPT] [decimal](15, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ORDR_STATUS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ORDR_STATUS](
	[AUFNR] [varchar](12) NOT NULL,
	[TXT04] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PROD_ORDERS_PLNT]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PROD_ORDERS_PLNT](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEKO_ACTIVE_VALUES]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEKO_ACTIVE_VALUES](
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[POPER] [decimal](3, 0) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEKO_GROUP_BY]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEKO_GROUP_BY](
	[KADKY] [date] NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEKO_KLA_WM_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEKO_KLA_WM_FILTERED](
	[MANDT] [varchar](3) NULL,
	[BZOBJ] [varchar](1) NOT NULL,
	[KALNR] [decimal](12, 0) NOT NULL,
	[KALKA] [varchar](2) NOT NULL,
	[KADKY] [date] NOT NULL,
	[TVERS] [decimal](2, 0) NOT NULL,
	[BWVAR] [varchar](3) NOT NULL,
	[KKZMA] [varchar](1) NOT NULL,
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
	[BAPI_CREATED] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_MOCK_VARIANCE_COMPONENT_REP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_MOCK_VARIANCE_COMPONENT_REP](
	[Plant] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[City] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[Shift] [varchar](1) NULL,
	[Order Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts - Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](9) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [varchar](50) NULL,
	[Overweight % for Component Material] [decimal](11, 2) NULL,
	[Moisture % for Component Material] [decimal](10, 2) NULL,
	[Waste % for Component Material] [decimal](10, 2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty - Actuals] [decimal](13, 2) NULL,
	[UNIT_1] [varchar](3) NULL,
	[GI Val - Actuals LC] [decimal](13, 2) NULL,
	[Local Currency] [varchar](4) NULL,
	[GI VAL - Actuals USD] [decimal](13, 2) NULL,
	[USD] [varchar](4) NULL,
	[GI Qty - Standard] [decimal](13, 2) NULL,
	[UNIT_2] [varchar](3) NULL,
	[GI Val - Standard LC] [decimal](13, 2) NULL,
	[Local Currency_1] [varchar](4) NULL,
	[GI Val - Standard USD] [decimal](13, 2) NULL,
	[USD_1] [varchar](4) NULL,
	[GI Val - Frozen LC] [decimal](13, 2) NULL,
	[Local Currency_2] [varchar](4) NULL,
	[GI Val - Frozen USD] [decimal](13, 2) NULL,
	[USD_2] [varchar](4) NULL,
	[GI Qty - Ideal] [decimal](13, 2) NULL,
	[UNIT_3] [varchar](3) NULL,
	[GI Val - Ideal LC] [decimal](13, 2) NULL,
	[Local Currency_3] [varchar](4) NULL,
	[GI Val - Ideal USD] [decimal](13, 2) NULL,
	[USD_3] [varchar](4) NULL,
	[Standard Vs Actual in units] [decimal](13, 2) NULL,
	[UNIT_4] [varchar](3) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_4] [varchar](4) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[USD_4] [varchar](4) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[UNIT_5] [varchar](3) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_5] [varchar](4) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[USD_5] [varchar](4) NULL,
	[Standard Vs Actual %] [decimal](13, 2) NULL,
	[% Ideal Vs Actual] [decimal](13, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty -  Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_MOCK_VARIANCE_MATERIAL_REP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_MOCK_VARIANCE_MATERIAL_REP](
	[Plant] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[City] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[Shift] [varchar](1) NULL,
	[Order Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts - Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](9) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [varchar](50) NULL,
	[Overweight % for Component Material] [decimal](11, 2) NULL,
	[Moisture % for Component Material] [decimal](10, 2) NULL,
	[Waste % for Component Material] [decimal](10, 2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty - Actuals] [decimal](13, 2) NULL,
	[UNIT_1] [varchar](3) NULL,
	[GI Val - Actuals LC] [decimal](13, 2) NULL,
	[Local Currency] [varchar](4) NULL,
	[GI VAL - Actuals USD] [decimal](13, 2) NULL,
	[USD] [varchar](4) NULL,
	[GI Qty - Standard] [decimal](13, 2) NULL,
	[UNIT_2] [varchar](3) NULL,
	[GI Val - Standard LC] [decimal](13, 2) NULL,
	[Local Currency_1] [varchar](4) NULL,
	[GI Val - Standard USD] [decimal](13, 2) NULL,
	[USD_1] [varchar](4) NULL,
	[GI Val - Frozen LC] [decimal](13, 2) NULL,
	[Local Currency_2] [varchar](4) NULL,
	[GI Val - Frozen USD] [decimal](13, 2) NULL,
	[USD_2] [varchar](4) NULL,
	[GI Qty - Ideal] [decimal](13, 2) NULL,
	[UNIT_3] [varchar](3) NULL,
	[GI Val - Ideal LC] [decimal](13, 2) NULL,
	[Local Currency_3] [varchar](4) NULL,
	[GI Val - Ideal USD] [decimal](13, 2) NULL,
	[USD_3] [varchar](4) NULL,
	[Standard Vs Actual in units] [decimal](13, 2) NULL,
	[UNIT_4] [varchar](3) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_4] [varchar](4) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[USD_4] [varchar](4) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[UNIT_5] [varchar](3) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_5] [varchar](4) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[USD_5] [varchar](4) NULL,
	[Standard Vs Actual %] [decimal](13, 2) NULL,
	[% Ideal Vs Actual] [decimal](13, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty -  Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_AUFK]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_AUFK](
	[AUFNR] [varchar](12) NOT NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[SOWRK] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_AUFK_DELTA]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_AUFK_DELTA](
	[AUFNR] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_AUFK_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_AUFK_FILTERED](
	[AUFNR] [varchar](12) NOT NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [varchar](24) NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[SOWRK] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_CIMPONENTS_JOIN_1_GET_DATE]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_CIMPONENTS_JOIN_1_GET_DATE](
	[AUFNR] [varchar](12) NULL,
	[STLNR] [varchar](8) NULL,
	[MATNR] [varchar](18) NULL,
	[MJAHR] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_CIMPONENTS_JOIN_1_GET_DATE_STKO]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_CIMPONENTS_JOIN_1_GET_DATE_STKO](
	[AUFNR] [varchar](12) NULL,
	[STLNR] [varchar](8) NULL,
	[WERKS] [varchar](4) NULL,
	[MJAHR] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP__RESB_MAT_JOIN]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP__RESB_MAT_JOIN](
	[PLANT] [varchar](4) NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[WEEK] [decimal](6, 0) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Text] [varchar](40) NULL,
	[Brand Text] [varchar](40) NULL,
	[Type Text] [varchar](40) NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI Val_Standard LC] [decimal](13, 2) NULL,
	[GI Val_Standard USD] [decimal](13, 2) NULL,
	[GI Val_Frozen LC] [decimal](13, 2) NULL,
	[GI Val_Frozen USD] [decimal](13, 2) NULL,
	[GI Qty_Ideal] [decimal](13, 2) NULL,
	[GI Val_Ideal LC] [decimal](13, 2) NULL,
	[GI Val_Ideal USD] [decimal](13, 2) NULL,
	[Standard Vs Actual in Units] [decimal](13, 2) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[Standard Vs Actual %] [decimal](10, 2) NULL,
	[% Ideal Vs Actual] [decimal](10, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[Material Group_material] [varchar](9) NULL,
	[Material Group Description_material] [varchar](20) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL,
	[C_SCRAP] [decimal](5, 2) NULL,
	[BUDAT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_CALCS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_CALCS](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI Val_Standard LC] [decimal](13, 2) NULL,
	[GI Val_Standard USD] [decimal](13, 2) NULL,
	[GI Val_Frozen LC] [decimal](13, 2) NULL,
	[GI Val_Frozen USD] [decimal](13, 2) NULL,
	[GI Qty_Ideal] [decimal](13, 2) NULL,
	[GI Val_Ideal LC] [decimal](13, 2) NULL,
	[GI Val_Ideal USD] [decimal](13, 2) NULL,
	[Standard Vs Actual in Units] [decimal](13, 2) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[Standard Vs Actual %] [decimal](10, 2) NULL,
	[% Ideal Vs Actual] [decimal](10, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[MEINS] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_CALCS_2]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_CALCS_2](
	[PLANT] [int] NULL,
	[PLANT_DESCRIPTION] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[REGION_DESCRIPTION] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[COUNTRY_NAME] [varchar](15) NULL,
	[LINE_NAME] [varchar](50) NULL,
	[FISCAL_YEAR] [varchar](4) NULL,
	[FISCAL_PERIOD] [varchar](7) NULL,
	[FISCAL_WEEK] [varchar](2) NULL,
	[DATE_EACH_COMPONENT] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[ORDER_STATUS] [varchar](4) NULL,
	[LAST_CHANGED_DATE] [varchar](10) NULL,
	[PRODUCTION_ORDER] [varchar](12) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[DESCRIPTION_OF_MATERIAL_TYPE] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[CATEGORY_DESCRIPTION] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[BRAND_DESCRIPTION] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[TYPE_DESCRIPTION] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[OVERWEIGHT_PERCENT] [decimal](11, 2) NULL,
	[MOISTURE_PERCENT] [decimal](10, 2) NULL,
	[WASTE_PERCENT] [decimal](10, 2) NULL,
	[MATERIAL_GROUP_FINISHED_PRODUCT] [varchar](9) NULL,
	[MATERIAL_GROUP_DESCRIPTION] [varchar](20) NULL,
	[GOOD_RECEIPTS_ACTUALS] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[COMPONENT_MATERIAL] [varchar](18) NULL,
	[COMPONENT_MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[GI_QTY_ACTUALS] [decimal](13, 2) NULL,
	[GI_VAL_ACTUALS_LC] [decimal](13, 2) NULL,
	[GI_VAL_ACTUALS_USD] [decimal](13, 2) NULL,
	[GI_QTY_STANDARD] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI_VAL_STANDARD_LC] [decimal](13, 2) NULL,
	[GI_VAL_STANDARD_USD] [decimal](13, 2) NULL,
	[GI_VAL_FROZEN_LC] [decimal](13, 2) NULL,
	[GI_VAL_FROZEN_USD] [decimal](13, 2) NULL,
	[GI_QTY_IDEAL] [decimal](13, 2) NULL,
	[GI_VAL_IDEAL_LC] [decimal](13, 2) NULL,
	[GI_VAL_IDEAL_USD] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_USD] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_USD] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_PERCENT] [decimal](13, 2) NULL,
	[PERCENT_IDEAL_VS_ACTUAL] [decimal](13, 2) NULL,
	[C_SCRAP] [decimal](5, 2) NULL,
	[GI_QTY_FROZEN] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_PERCENT] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_USD] [decimal](13, 2) NULL,
	[DATE_TIME_STAMP_OF_DATA_THE_EXTRACTION] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_CALCS_3]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_CALCS_3](
	[PLANT] [int] NULL,
	[PLANT_DESCRIPTION] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[REGION_DESCRIPTION] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[COUNTRY_NAME] [varchar](15) NULL,
	[LINE_NAME] [varchar](50) NULL,
	[FISCAL_YEAR] [varchar](4) NULL,
	[FISCAL_PERIOD] [varchar](7) NULL,
	[FISCAL_WEEK] [varchar](2) NULL,
	[DATE_EACH_COMPONENT] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[ORDER_STATUS] [varchar](4) NULL,
	[LAST_CHANGED_DATE] [varchar](10) NULL,
	[PRODUCTION_ORDER] [varchar](12) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[DESCRIPTION_OF_MATERIAL_TYPE] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[CATEGORY_DESCRIPTION] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[BRAND_DESCRIPTION] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[TYPE_DESCRIPTION] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[OVERWEIGHT_PERCENT] [decimal](11, 2) NULL,
	[MOISTURE_PERCENT] [decimal](10, 2) NULL,
	[WASTE_PERCENT] [decimal](10, 2) NULL,
	[MATERIAL_GROUP_FINISHED_PRODUCT] [varchar](9) NULL,
	[MATERIAL_GROUP_DESCRIPTION] [varchar](20) NULL,
	[GOOD_RECEIPTS_ACTUALS] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[COMPONENT_MATERIAL] [varchar](18) NULL,
	[COMPONENT_MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[GI_QTY_ACTUALS] [decimal](13, 2) NULL,
	[GI_VAL_ACTUALS_LC] [decimal](13, 2) NULL,
	[GI_VAL_ACTUALS_USD] [decimal](13, 2) NULL,
	[GI_QTY_STANDARD] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI_VAL_STANDARD_LC] [decimal](13, 2) NULL,
	[GI_VAL_STANDARD_USD] [decimal](13, 2) NULL,
	[GI_VAL_FROZEN_LC] [decimal](13, 2) NULL,
	[GI_VAL_FROZEN_USD] [decimal](13, 2) NULL,
	[GI_QTY_IDEAL] [decimal](13, 2) NULL,
	[GI_VAL_IDEAL_LC] [decimal](13, 2) NULL,
	[GI_VAL_IDEAL_USD] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_USD] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_USD] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_PERCENT] [decimal](13, 2) NULL,
	[PERCENT_IDEAL_VS_ACTUAL] [decimal](13, 2) NULL,
	[C_SCRAP] [decimal](5, 2) NULL,
	[GI_QTY_FROZEN] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_PERCENT] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_USD] [decimal](13, 2) NULL,
	[DATE_TIME_STAMP_OF_DATA_THE_EXTRACTION] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_CALCS_4]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_CALCS_4](
	[PLANT] [int] NULL,
	[PLANT_DESCRIPTION] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[REGION_DESCRIPTION] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[COUNTRY_NAME] [varchar](15) NULL,
	[LINE_NAME] [varchar](50) NULL,
	[FISCAL_YEAR] [varchar](4) NULL,
	[FISCAL_PERIOD] [varchar](7) NULL,
	[FISCAL_WEEK] [varchar](2) NULL,
	[DATE_EACH_COMPONENT] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[ORDER_STATUS] [varchar](4) NULL,
	[LAST_CHANGED_DATE] [varchar](10) NULL,
	[PRODUCTION_ORDER] [varchar](12) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[DESCRIPTION_OF_MATERIAL_TYPE] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[CATEGORY_DESCRIPTION] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[BRAND_DESCRIPTION] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[TYPE_DESCRIPTION] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[OVERWEIGHT_PERCENT] [decimal](11, 2) NULL,
	[MOISTURE_PERCENT] [decimal](10, 2) NULL,
	[WASTE_PERCENT] [decimal](10, 2) NULL,
	[MATERIAL_GROUP_FINISHED_PRODUCT] [varchar](9) NULL,
	[MATERIAL_GROUP_DESCRIPTION] [varchar](20) NULL,
	[GOOD_RECEIPTS_ACTUALS] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[COMPONENT_MATERIAL] [varchar](18) NULL,
	[COMPONENT_MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[GI_QTY_ACTUALS] [decimal](13, 2) NULL,
	[GI_VAL_ACTUALS_LC] [decimal](13, 2) NULL,
	[GI_VAL_ACTUALS_USD] [decimal](13, 2) NULL,
	[GI_QTY_STANDARD] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI_VAL_STANDARD_LC] [decimal](13, 2) NULL,
	[GI_VAL_STANDARD_USD] [decimal](13, 2) NULL,
	[GI_VAL_FROZEN_LC] [decimal](13, 2) NULL,
	[GI_VAL_FROZEN_USD] [decimal](13, 2) NULL,
	[GI_QTY_IDEAL] [decimal](13, 2) NULL,
	[GI_VAL_IDEAL_LC] [decimal](13, 2) NULL,
	[GI_VAL_IDEAL_USD] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_IN_USD] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[IDEAL_VS_ACTUAL_USD] [decimal](13, 2) NULL,
	[STANDARD_VS_ACTUAL_PERCENT] [decimal](13, 2) NULL,
	[PERCENT_IDEAL_VS_ACTUAL] [decimal](13, 2) NULL,
	[C_SCRAP] [decimal](5, 2) NULL,
	[GI_QTY_FROZEN] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_PERCENT] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_UNITS] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_LC] [decimal](13, 2) NULL,
	[FROZEN_VS_ACTUAL_IN_USD] [decimal](13, 2) NULL,
	[DATE_TIME_STAMP_OF_DATA_THE_EXTRACTION] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_CALCS_PRE]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_CALCS_PRE](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI Val_Standard LC] [decimal](13, 2) NULL,
	[GI Val_Standard USD] [decimal](13, 2) NULL,
	[GI Val_Frozen LC] [decimal](13, 2) NULL,
	[GI Val_Frozen USD] [decimal](13, 2) NULL,
	[GI Qty_Ideal] [decimal](13, 2) NULL,
	[GI Val_Ideal LC] [decimal](13, 2) NULL,
	[GI Val_Ideal USD] [decimal](13, 2) NULL,
	[Standard Vs Actual in Units] [decimal](13, 2) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[Standard Vs Actual %] [decimal](10, 2) NULL,
	[% Ideal Vs Actual] [decimal](10, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_MAT_JOIN]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_MAT_JOIN](
	[PLANT] [varchar](4) NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[WEEK] [decimal](6, 0) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Text] [varchar](40) NULL,
	[Brand Text] [varchar](40) NULL,
	[Type Text] [varchar](40) NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI Val_Standard LC] [decimal](13, 2) NULL,
	[GI Val_Standard USD] [decimal](13, 2) NULL,
	[GI Val_Frozen LC] [decimal](13, 2) NULL,
	[GI Val_Frozen USD] [decimal](13, 2) NULL,
	[GI Qty_Ideal] [decimal](13, 2) NULL,
	[GI Val_Ideal LC] [decimal](13, 2) NULL,
	[GI Val_Ideal USD] [decimal](13, 2) NULL,
	[Standard Vs Actual in Units] [decimal](13, 2) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[Standard Vs Actual %] [decimal](10, 2) NULL,
	[% Ideal Vs Actual] [decimal](10, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[Material Group_material] [varchar](9) NULL,
	[Material Group Description_material] [varchar](20) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL,
	[C_SCRAP] [decimal](5, 2) NULL,
	[BUDAT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_MAT_JOIN_COMBINED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_MAT_JOIN_COMBINED](
	[PLANT] [varchar](4) NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[WEEK] [decimal](6, 0) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Text] [varchar](40) NULL,
	[Brand Text] [varchar](40) NULL,
	[Type Text] [varchar](40) NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI Val_Standard LC] [decimal](13, 2) NULL,
	[GI Val_Standard USD] [decimal](13, 2) NULL,
	[GI Val_Frozen LC] [decimal](13, 2) NULL,
	[GI Val_Frozen USD] [decimal](13, 2) NULL,
	[GI Qty_Ideal] [decimal](13, 2) NULL,
	[GI Val_Ideal LC] [decimal](13, 2) NULL,
	[GI Val_Ideal USD] [decimal](13, 2) NULL,
	[Standard Vs Actual in Units] [decimal](13, 2) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[Standard Vs Actual %] [decimal](10, 2) NULL,
	[% Ideal Vs Actual] [decimal](10, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[Material Group_material] [varchar](9) NULL,
	[Material Group Description_material] [varchar](20) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL,
	[C_SCRAP] [decimal](5, 2) NULL,
	[BUDAT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMP_MAT_JOIN_COMBINED_1]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMP_MAT_JOIN_COMBINED_1](
	[PLANT] [varchar](4) NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[WEEK] [decimal](6, 0) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Text] [varchar](40) NULL,
	[Brand Text] [varchar](40) NULL,
	[Type Text] [varchar](40) NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT_GR] [varchar](2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[GI Val_Standard LC] [decimal](13, 2) NULL,
	[GI Val_Standard USD] [decimal](13, 2) NULL,
	[GI Val_Frozen LC] [decimal](13, 2) NULL,
	[GI Val_Frozen USD] [decimal](13, 2) NULL,
	[GI Qty_Ideal] [decimal](13, 2) NULL,
	[GI Val_Ideal LC] [decimal](13, 2) NULL,
	[GI Val_Ideal USD] [decimal](13, 2) NULL,
	[Standard Vs Actual in Units] [decimal](13, 2) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[Standard Vs Actual %] [decimal](10, 2) NULL,
	[% Ideal Vs Actual] [decimal](10, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL,
	[STPO_MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[Material Group_material] [varchar](9) NULL,
	[Material Group Description_material] [varchar](20) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL,
	[C_SCRAP] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENT_GROUP_BY]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENT_GROUP_BY](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[AEDAT] [date] NULL,
	[PLNBEZ] [varchar](18) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[MAKTX] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[WGBEZ] [varchar](20) NULL,
	[LANDX] [varchar](15) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [varchar](10) NULL,
	[BUDAT_DT] [date] NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[DMBE2] [decimal](13, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[MAKTX_MD] [varchar](40) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[STAT] [varchar](5) NULL,
	[KTEXT_UP] [varchar](50) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ_1] [varchar](25) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL,
	[C_SCRAP] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENT_RESB_GROUP_BY]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENT_RESB_GROUP_BY](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[AEDAT] [date] NULL,
	[PLNBEZ] [varchar](18) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[MAKTX] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[WGBEZ] [varchar](20) NULL,
	[LANDX] [varchar](15) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [varchar](10) NULL,
	[BUDAT_DT] [date] NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[DMBE2] [decimal](13, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[MAKTX_MD] [varchar](40) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[STAT] [varchar](5) NULL,
	[KTEXT_UP] [varchar](50) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ_1] [varchar](25) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_1]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_1](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_1_RESB]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_1_RESB](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_1A_ALL_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_1A_ALL_RECORDS](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_1B]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_1B](
	[AUFNR] [varchar](12) NULL,
	[SOWRK] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[OBJNR] [varchar](22) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_1C]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_1C](
	[AUFNR] [varchar](12) NULL,
	[SOWRK] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[OBJNR] [varchar](22) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[STLTY] [varchar](1) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_2]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_2](
	[AUFNR] [varchar](12) NULL,
	[SOWRK] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[OBJNR] [varchar](22) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[STLTY] [varchar](1) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MTART] [varchar](4) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_3]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_3](
	[AUFNR] [varchar](12) NULL,
	[SOWRK] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[OBJNR] [varchar](22) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[STLTY] [varchar](1) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MTART] [varchar](4) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[MTBEZ] [varchar](25) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_4]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_4](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[OBJNR] [varchar](22) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_5]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_5](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[OBJNR] [varchar](22) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_6]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_6](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](20) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[OBJNR] [varchar](22) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_7]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_7](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](20) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[DMBE2] [decimal](13, 2) NULL,
	[OBJNR] [varchar](22) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL,
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[POPER] [decimal](3, 0) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_7B]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_7B](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](20) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[DMBE2] [decimal](13, 2) NULL,
	[OBJNR] [varchar](22) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[POPER] [decimal](3, 0) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_8]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_8](
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BKTXT] [varchar](25) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](20) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[DMBE2] [decimal](13, 2) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[MTBEZ_1] [varchar](25) NULL,
	[OBJNR] [varchar](22) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[POPER] [decimal](3, 0) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[MAKTX_MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[STAT] [varchar](5) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[KTEXT_UP] [varchar](50) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[STLTY_FROZEN] [varchar](1) NULL,
	[STLKN_FROZEN] [decimal](8, 0) NULL,
	[STPOZ_FROZEN] [decimal](8, 0) NULL,
	[IDNRK_FROZEN] [varchar](18) NULL,
	[DATUV_FROZEN] [date] NULL,
	[ALPGR_FROZEN] [varchar](2) NULL,
	[MENGE_FROZEN] [decimal](13, 3) NULL,
	[AUSCH_FROZEN] [decimal](5, 2) NULL,
	[BMENG_FROZEN] [decimal](13, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_RESB_AUFM_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_RESB_AUFM_RECORDS](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_COMPONENTS_JOIN_RESB_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_COMPONENTS_JOIN_RESB_RECORDS](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BWART] [varchar](3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MAT_CALCS__RESB_1]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MAT_CALCS__RESB_1](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MAT_CALCS__RESB_2]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MAT_CALCS__RESB_2](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MAT_CALCS_1]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MAT_CALCS_1](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MATERIAL_JOIN_1]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MATERIAL_JOIN_1](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[MTART] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MATERIAL_JOIN_2]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MATERIAL_JOIN_2](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MEINS] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RUECK_MST] [decimal](10, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BKTXT] [varchar](25) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](20) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[MTART] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MATERIAL_JOIN_3]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MATERIAL_JOIN_3](
	[PLNBEZ] [varchar](18) NULL,
	[SOWRK] [varchar](4) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[STLNR] [varchar](8) NULL,
	[RSNUM] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[KTEXT] [varchar](40) NULL,
	[AEDAT] [date] NULL,
	[AUART] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[OBJNR] [varchar](22) NULL,
	[MEINS] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL,
	[NAME1] [varchar](30) NULL,
	[ORT01] [varchar](25) NULL,
	[REGIO] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[MATKL] [varchar](9) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[MANDT] [varchar](3) NULL,
	[WGBEZ] [varchar](20) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL,
	[LANDX] [varchar](15) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[BWKEY] [varchar](4) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RUECK_MST] [decimal](10, 0) NULL,
	[BUDAT] [date] NULL,
	[MBLNR] [varchar](10) NULL,
	[MJAHR] [decimal](4, 0) NULL,
	[ZEILE] [decimal](4, 0) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[AUFM_MENGE] [decimal](13, 3) NULL,
	[BKTXT] [varchar](25) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](20) NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BZOBJ] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KALKA] [varchar](2) NULL,
	[KADKY] [date] NULL,
	[TVERS] [decimal](2, 0) NULL,
	[BWVAR] [varchar](3) NULL,
	[KKZMA] [varchar](1) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[POPER] [decimal](3, 0) NULL,
	[BDATJ] [decimal](4, 0) NULL,
	[MAKTX_MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[STAT] [varchar](5) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[KTEXT_UP] [varchar](50) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL,
	[BWART] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_MATERIAL_USAGE_VARIANCE_PREV_DROP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_MATERIAL_USAGE_VARIANCE_PREV_DROP](
	[Plant] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[City] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[Shift] [varchar](1) NULL,
	[Order Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts - Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](9) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [varchar](50) NULL,
	[Overweight % for Component Material] [decimal](11, 2) NULL,
	[Moisture % for Component Material] [decimal](10, 2) NULL,
	[Waste % for Component Material] [decimal](10, 2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty - Actuals] [decimal](13, 2) NULL,
	[UNIT_1] [varchar](3) NULL,
	[GI Val - Actuals LC] [decimal](13, 2) NULL,
	[Local Currency] [varchar](4) NULL,
	[GI VAL - Actuals USD] [decimal](13, 2) NULL,
	[USD] [varchar](4) NULL,
	[GI Qty - Standard] [decimal](13, 2) NULL,
	[UNIT_2] [varchar](3) NULL,
	[GI Val - Standard LC] [decimal](13, 2) NULL,
	[Local Currency_1] [varchar](4) NULL,
	[GI Val - Standard USD] [decimal](13, 2) NULL,
	[USD_1] [varchar](4) NULL,
	[GI Val - Frozen LC] [decimal](13, 2) NULL,
	[Local Currency_2] [varchar](4) NULL,
	[GI Val - Frozen USD] [decimal](13, 2) NULL,
	[USD_2] [varchar](4) NULL,
	[GI Qty - Ideal] [decimal](13, 2) NULL,
	[UNIT_3] [varchar](3) NULL,
	[GI Val - Ideal LC] [decimal](13, 2) NULL,
	[Local Currency_3] [varchar](4) NULL,
	[GI Val - Ideal USD] [decimal](13, 2) NULL,
	[USD_3] [varchar](4) NULL,
	[Standard Vs Actual in units] [decimal](13, 2) NULL,
	[UNIT_4] [varchar](3) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_4] [varchar](4) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[USD_4] [varchar](4) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[UNIT_5] [varchar](3) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_5] [varchar](4) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[USD_5] [varchar](4) NULL,
	[Standard Vs Actual %] [decimal](13, 2) NULL,
	[% Ideal Vs Actual] [decimal](13, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty -  Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_RESB]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_RESB](
	[MANDT] [varchar](3) NULL,
	[RSNUM] [decimal](10, 0) NOT NULL,
	[RSPOS] [decimal](4, 0) NOT NULL,
	[RSART] [varchar](1) NOT NULL,
	[BDART] [varchar](2) NULL,
	[RSSTA] [varchar](1) NULL,
	[XLOEK] [varchar](1) NULL,
	[XWAOK] [varchar](1) NULL,
	[KZEAR] [varchar](1) NULL,
	[XFEHL] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[PRVBE] [varchar](10) NULL,
	[CHARG] [varchar](10) NULL,
	[PLPLA] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[BDTER] [date] NULL,
	[BDMNG] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[SHKZG] [varchar](1) NULL,
	[FMENG] [varchar](1) NULL,
	[ENMNG] [decimal](13, 3) NULL,
	[ENWRT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[PLNUM] [varchar](10) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[BAUGR] [varchar](18) NULL,
	[SERNR] [varchar](8) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[KDEIN] [decimal](4, 0) NULL,
	[PROJN] [varchar](16) NULL,
	[BWART] [varchar](3) NULL,
	[SAKNR] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[NAFKZ] [varchar](1) NULL,
	[NOMAT] [varchar](18) NULL,
	[NOMNG] [decimal](13, 3) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[SGTXT] [varchar](50) NULL,
	[LMENG] [decimal](13, 3) NULL,
	[ROHPS] [varchar](1) NULL,
	[RFORM] [varchar](2) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[FLMNG] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[SANKA] [varchar](1) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[AENNR] [varchar](12) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[SORTF] [varchar](10) NULL,
	[SBTER] [date] NULL,
	[VERTI] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[UPSKZ] [varchar](1) NULL,
	[DBSKZ] [varchar](1) NULL,
	[TXTPS] [varchar](1) NULL,
	[DUMPS] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[AUFST] [decimal](2, 0) NULL,
	[AUFWG] [decimal](2, 0) NULL,
	[BAUST] [decimal](2, 0) NULL,
	[BAUWG] [decimal](2, 0) NULL,
	[AUFPS] [varchar](2) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[EBELE] [decimal](4, 0) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[PLNFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[OBJNR] [varchar](22) NULL,
	[FLGAT] [varchar](1) NULL,
	[GPREIS] [decimal](15, 2) NULL,
	[FPREIS] [decimal](15, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[RGEKZ] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[ROKME] [varchar](3) NULL,
	[ZUMEI] [varchar](3) NULL,
	[ZUMS1] [decimal](13, 3) NULL,
	[ZUMS2] [decimal](13, 3) NULL,
	[ZUMS3] [decimal](13, 3) NULL,
	[ZUDIV] [decimal](5, 0) NULL,
	[VMENG] [decimal](15, 3) NULL,
	[PRREG] [varchar](2) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[KFPOS] [varchar](1) NULL,
	[REVLV] [varchar](2) NULL,
	[BERKZ] [varchar](1) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[TBMNG] [decimal](13, 3) NULL,
	[NPTXTKY] [varchar](12) NULL,
	[KBNKZ] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[AFPOS] [decimal](4, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[BDZTP] [varchar](8) NULL,
	[ESMNG] [float] NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPST] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[NFEAG] [varchar](2) NULL,
	[NFPKZ] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFUML] [decimal](5, 4) NULL,
	[ADRNR] [varchar](10) NULL,
	[CHOBJ] [decimal](18, 0) NULL,
	[SPLKZ] [varchar](1) NULL,
	[SPLRV] [decimal](4, 0) NULL,
	[KNUMH] [varchar](10) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[HKMAT] [varchar](1) NULL,
	[HRKFT] [varchar](4) NULL,
	[VORAB] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[FRUNV] [varchar](1) NULL,
	[CLAKZ] [varchar](1) NULL,
	[INPOS] [varchar](1) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLGEX] [varchar](1) NULL,
	[FUNCT] [varchar](3) NULL,
	[GPREIS_2] [decimal](15, 2) NULL,
	[FPREIS_2] [decimal](15, 2) NULL,
	[PEINH_2] [decimal](5, 0) NULL,
	[INFNR] [varchar](10) NULL,
	[KZECH] [varchar](1) NULL,
	[KZMPF] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[PBDNR] [varchar](10) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[KTOMA] [varchar](1) NULL,
	[VRPLA] [varchar](1) NULL,
	[KZBWS] [varchar](1) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[TECHS] [varchar](12) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[FXPRU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[VORAB_SM] [varchar](1) NULL,
	[FIPOS] [varchar](14) NULL,
	[FIPEX] [varchar](24) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[ADVCODE] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[RSNUM] ASC,
	[RSPOS] ASC,
	[RSART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_RESB_MAT_FILTERED_REC]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_RESB_MAT_FILTERED_REC](
	[MANDT] [varchar](3) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[RSART] [varchar](1) NULL,
	[BDART] [varchar](2) NULL,
	[RSSTA] [varchar](1) NULL,
	[XLOEK] [varchar](1) NULL,
	[XWAOK] [varchar](1) NULL,
	[KZEAR] [varchar](1) NULL,
	[XFEHL] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[PRVBE] [varchar](10) NULL,
	[CHARG] [varchar](10) NULL,
	[PLPLA] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[BDTER] [date] NULL,
	[BDMNG] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[SHKZG] [varchar](1) NULL,
	[FMENG] [varchar](1) NULL,
	[ENMNG] [decimal](13, 3) NULL,
	[ENWRT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[PLNUM] [varchar](10) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[BAUGR] [varchar](18) NULL,
	[SERNR] [varchar](8) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[KDEIN] [decimal](4, 0) NULL,
	[PROJN] [varchar](16) NULL,
	[BWART] [varchar](3) NULL,
	[SAKNR] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[NAFKZ] [varchar](1) NULL,
	[NOMAT] [varchar](18) NULL,
	[NOMNG] [decimal](13, 3) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[SGTXT] [varchar](50) NULL,
	[LMENG] [decimal](13, 3) NULL,
	[ROHPS] [varchar](1) NULL,
	[RFORM] [varchar](2) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[FLMNG] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[SANKA] [varchar](1) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[AENNR] [varchar](12) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[SORTF] [varchar](10) NULL,
	[SBTER] [date] NULL,
	[VERTI] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[UPSKZ] [varchar](1) NULL,
	[DBSKZ] [varchar](1) NULL,
	[TXTPS] [varchar](1) NULL,
	[DUMPS] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[AUFST] [decimal](2, 0) NULL,
	[AUFWG] [decimal](2, 0) NULL,
	[BAUST] [decimal](2, 0) NULL,
	[BAUWG] [decimal](2, 0) NULL,
	[AUFPS] [varchar](2) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[EBELE] [decimal](4, 0) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[PLNFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[OBJNR] [varchar](22) NULL,
	[FLGAT] [varchar](1) NULL,
	[GPREIS] [decimal](15, 2) NULL,
	[FPREIS] [decimal](15, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[RGEKZ] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[ROKME] [varchar](3) NULL,
	[ZUMEI] [varchar](3) NULL,
	[ZUMS1] [decimal](13, 3) NULL,
	[ZUMS2] [decimal](13, 3) NULL,
	[ZUMS3] [decimal](13, 3) NULL,
	[ZUDIV] [decimal](5, 0) NULL,
	[VMENG] [decimal](15, 3) NULL,
	[PRREG] [varchar](2) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[KFPOS] [varchar](1) NULL,
	[REVLV] [varchar](2) NULL,
	[BERKZ] [varchar](1) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[TBMNG] [decimal](13, 3) NULL,
	[NPTXTKY] [varchar](12) NULL,
	[KBNKZ] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[AFPOS] [decimal](4, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[BDZTP] [varchar](8) NULL,
	[ESMNG] [float] NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPST] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[NFEAG] [varchar](2) NULL,
	[NFPKZ] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFUML] [decimal](5, 4) NULL,
	[ADRNR] [varchar](10) NULL,
	[CHOBJ] [decimal](18, 0) NULL,
	[SPLKZ] [varchar](1) NULL,
	[SPLRV] [decimal](4, 0) NULL,
	[KNUMH] [varchar](10) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[HKMAT] [varchar](1) NULL,
	[HRKFT] [varchar](4) NULL,
	[VORAB] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[FRUNV] [varchar](1) NULL,
	[CLAKZ] [varchar](1) NULL,
	[INPOS] [varchar](1) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLGEX] [varchar](1) NULL,
	[FUNCT] [varchar](3) NULL,
	[GPREIS_2] [decimal](15, 2) NULL,
	[FPREIS_2] [decimal](15, 2) NULL,
	[PEINH_2] [decimal](5, 0) NULL,
	[INFNR] [varchar](10) NULL,
	[KZECH] [varchar](1) NULL,
	[KZMPF] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[PBDNR] [varchar](10) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[KTOMA] [varchar](1) NULL,
	[VRPLA] [varchar](1) NULL,
	[KZBWS] [varchar](1) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[TECHS] [varchar](12) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[FXPRU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[VORAB_SM] [varchar](1) NULL,
	[FIPOS] [varchar](14) NULL,
	[FIPEX] [varchar](24) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[ADVCODE] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_TCRR_1]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_TCRR_1](
	[Date (Each component)] [varchar](10) NULL,
	[WAERS] [varchar](5) NULL,
	[DATE] [date] NULL,
	[UKURS] [decimal](9, 5) NULL,
	[DATE_EACH_DATE_FORMAT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_TCURR_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_TCURR_FILTERED](
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NOT NULL,
	[FCURR] [varchar](5) NOT NULL,
	[TCURR] [varchar](5) NOT NULL,
	[GDATU] [varchar](8) NOT NULL,
	[DATE] [date] NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[KURST] ASC,
	[FCURR] ASC,
	[TCURR] ASC,
	[GDATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_WM_TCURR_STAGE]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_WM_TCURR_STAGE](
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NOT NULL,
	[FCURR] [varchar](5) NOT NULL,
	[TCURR] [varchar](5) NOT NULL,
	[GDATU] [varchar](8) NOT NULL,
	[DATE] [varchar](8) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[KURST] ASC,
	[FCURR] ASC,
	[TCURR] ASC,
	[GDATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_RESB_AUFM_ORDERS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_RESB_AUFM_ORDERS](
	[MANDT] [varchar](3) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[RSART] [varchar](1) NULL,
	[BDART] [varchar](2) NULL,
	[RSSTA] [varchar](1) NULL,
	[XLOEK] [varchar](1) NULL,
	[XWAOK] [varchar](1) NULL,
	[KZEAR] [varchar](1) NULL,
	[XFEHL] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[PRVBE] [varchar](10) NULL,
	[CHARG] [varchar](10) NULL,
	[PLPLA] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[BDTER] [date] NULL,
	[BDMNG] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[SHKZG] [varchar](1) NULL,
	[FMENG] [varchar](1) NULL,
	[ENMNG] [decimal](13, 3) NULL,
	[ENWRT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[PLNUM] [varchar](10) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[BAUGR] [varchar](18) NULL,
	[SERNR] [varchar](8) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[KDEIN] [decimal](4, 0) NULL,
	[PROJN] [varchar](16) NULL,
	[BWART] [varchar](3) NULL,
	[SAKNR] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[NAFKZ] [varchar](1) NULL,
	[NOMAT] [varchar](18) NULL,
	[NOMNG] [decimal](13, 3) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[SGTXT] [varchar](50) NULL,
	[LMENG] [decimal](13, 3) NULL,
	[ROHPS] [varchar](1) NULL,
	[RFORM] [varchar](2) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[FLMNG] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[SANKA] [varchar](1) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[AENNR] [varchar](12) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[SORTF] [varchar](10) NULL,
	[SBTER] [date] NULL,
	[VERTI] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[UPSKZ] [varchar](1) NULL,
	[DBSKZ] [varchar](1) NULL,
	[TXTPS] [varchar](1) NULL,
	[DUMPS] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[AUFST] [decimal](2, 0) NULL,
	[AUFWG] [decimal](2, 0) NULL,
	[BAUST] [decimal](2, 0) NULL,
	[BAUWG] [decimal](2, 0) NULL,
	[AUFPS] [varchar](2) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[EBELE] [decimal](4, 0) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[PLNFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[OBJNR] [varchar](22) NULL,
	[FLGAT] [varchar](1) NULL,
	[GPREIS] [decimal](15, 2) NULL,
	[FPREIS] [decimal](15, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[RGEKZ] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[ROKME] [varchar](3) NULL,
	[ZUMEI] [varchar](3) NULL,
	[ZUMS1] [decimal](13, 3) NULL,
	[ZUMS2] [decimal](13, 3) NULL,
	[ZUMS3] [decimal](13, 3) NULL,
	[ZUDIV] [decimal](5, 0) NULL,
	[VMENG] [decimal](15, 3) NULL,
	[PRREG] [varchar](2) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[KFPOS] [varchar](1) NULL,
	[REVLV] [varchar](2) NULL,
	[BERKZ] [varchar](1) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[TBMNG] [decimal](13, 3) NULL,
	[NPTXTKY] [varchar](12) NULL,
	[KBNKZ] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[AFPOS] [decimal](4, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[BDZTP] [varchar](8) NULL,
	[ESMNG] [float] NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPST] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[NFEAG] [varchar](2) NULL,
	[NFPKZ] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFUML] [decimal](5, 4) NULL,
	[ADRNR] [varchar](10) NULL,
	[CHOBJ] [decimal](18, 0) NULL,
	[SPLKZ] [varchar](1) NULL,
	[SPLRV] [decimal](4, 0) NULL,
	[KNUMH] [varchar](10) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[HKMAT] [varchar](1) NULL,
	[HRKFT] [varchar](4) NULL,
	[VORAB] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[FRUNV] [varchar](1) NULL,
	[CLAKZ] [varchar](1) NULL,
	[INPOS] [varchar](1) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLGEX] [varchar](1) NULL,
	[FUNCT] [varchar](3) NULL,
	[GPREIS_2] [decimal](15, 2) NULL,
	[FPREIS_2] [decimal](15, 2) NULL,
	[PEINH_2] [decimal](5, 0) NULL,
	[INFNR] [varchar](10) NULL,
	[KZECH] [varchar](1) NULL,
	[KZMPF] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[PBDNR] [varchar](10) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[KTOMA] [varchar](1) NULL,
	[VRPLA] [varchar](1) NULL,
	[KZBWS] [varchar](1) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[TECHS] [varchar](12) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[FXPRU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[VORAB_SM] [varchar](1) NULL,
	[FIPOS] [varchar](14) NULL,
	[FIPEX] [varchar](24) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[ADVCODE] [varchar](2) NULL,
	[BUDAT] [date] NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_RESB_AUFM_ORDERS_TO_DROP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_RESB_AUFM_ORDERS_TO_DROP](
	[AUFNR] [varchar](12) NULL,
	[BUDAT] [date] NULL,
	[MATNR] [varchar](18) NULL,
	[BKTXT] [varchar](25) NULL,
	[IN_AUFM] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_RESB_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_RESB_FILTERED](
	[MANDT] [varchar](3) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[RSART] [varchar](1) NULL,
	[BDART] [varchar](2) NULL,
	[RSSTA] [varchar](1) NULL,
	[XLOEK] [varchar](1) NULL,
	[XWAOK] [varchar](1) NULL,
	[KZEAR] [varchar](1) NULL,
	[XFEHL] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[PRVBE] [varchar](10) NULL,
	[CHARG] [varchar](10) NULL,
	[PLPLA] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[BDTER] [date] NULL,
	[BDMNG] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[SHKZG] [varchar](1) NULL,
	[FMENG] [varchar](1) NULL,
	[ENMNG] [decimal](13, 3) NULL,
	[ENWRT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[PLNUM] [varchar](10) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[BAUGR] [varchar](18) NULL,
	[SERNR] [varchar](8) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[KDEIN] [decimal](4, 0) NULL,
	[PROJN] [varchar](16) NULL,
	[BWART] [varchar](3) NULL,
	[SAKNR] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[NAFKZ] [varchar](1) NULL,
	[NOMAT] [varchar](18) NULL,
	[NOMNG] [decimal](13, 3) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[SGTXT] [varchar](50) NULL,
	[LMENG] [decimal](13, 3) NULL,
	[ROHPS] [varchar](1) NULL,
	[RFORM] [varchar](2) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[FLMNG] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[SANKA] [varchar](1) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 2) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[AENNR] [varchar](12) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[SORTF] [varchar](10) NULL,
	[SBTER] [date] NULL,
	[VERTI] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[UPSKZ] [varchar](1) NULL,
	[DBSKZ] [varchar](1) NULL,
	[TXTPS] [varchar](1) NULL,
	[DUMPS] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[AUFST] [decimal](2, 0) NULL,
	[AUFWG] [decimal](2, 0) NULL,
	[BAUST] [decimal](2, 0) NULL,
	[BAUWG] [decimal](2, 0) NULL,
	[AUFPS] [varchar](2) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[EBELE] [decimal](4, 0) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[PLNFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[OBJNR] [varchar](22) NULL,
	[FLGAT] [varchar](1) NULL,
	[GPREIS] [decimal](15, 2) NULL,
	[FPREIS] [decimal](15, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[RGEKZ] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[ROKME] [varchar](3) NULL,
	[ZUMEI] [varchar](3) NULL,
	[ZUMS1] [decimal](13, 3) NULL,
	[ZUMS2] [decimal](13, 3) NULL,
	[ZUMS3] [decimal](13, 3) NULL,
	[ZUDIV] [decimal](5, 0) NULL,
	[VMENG] [decimal](15, 3) NULL,
	[PRREG] [varchar](2) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[KFPOS] [varchar](1) NULL,
	[REVLV] [varchar](2) NULL,
	[BERKZ] [varchar](1) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[TBMNG] [decimal](13, 3) NULL,
	[NPTXTKY] [varchar](12) NULL,
	[KBNKZ] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[AFPOS] [decimal](4, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[BDZTP] [varchar](8) NULL,
	[ESMNG] [float] NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPST] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[NFEAG] [varchar](2) NULL,
	[NFPKZ] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFUML] [decimal](5, 4) NULL,
	[ADRNR] [varchar](10) NULL,
	[CHOBJ] [decimal](18, 0) NULL,
	[SPLKZ] [varchar](1) NULL,
	[SPLRV] [decimal](4, 0) NULL,
	[KNUMH] [varchar](10) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[HKMAT] [varchar](1) NULL,
	[HRKFT] [varchar](4) NULL,
	[VORAB] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[FRUNV] [varchar](1) NULL,
	[CLAKZ] [varchar](1) NULL,
	[INPOS] [varchar](1) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLGEX] [varchar](1) NULL,
	[FUNCT] [varchar](3) NULL,
	[GPREIS_2] [decimal](15, 2) NULL,
	[FPREIS_2] [decimal](15, 2) NULL,
	[PEINH_2] [decimal](5, 0) NULL,
	[INFNR] [varchar](10) NULL,
	[KZECH] [varchar](1) NULL,
	[KZMPF] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[PBDNR] [varchar](10) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[KTOMA] [varchar](1) NULL,
	[VRPLA] [varchar](1) NULL,
	[KZBWS] [varchar](1) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[TECHS] [varchar](12) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[FXPRU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[VORAB_SM] [varchar](1) NULL,
	[FIPOS] [varchar](14) NULL,
	[FIPEX] [varchar](24) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[ADVCODE] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_RESB_ORDERS_TO_DROP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_RESB_ORDERS_TO_DROP](
	[AUFNR] [varchar](12) NULL,
	[IN_AUFM] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STKO_ACTIVE_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STKO_ACTIVE_RECORDS](
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[DATUV] [date] NULL,
	[BMENG] [decimal](13, 3) NULL,
	[WRKAN] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STKO_FROZEN_ACTIVE_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STKO_FROZEN_ACTIVE_RECORDS](
	[AUFNR] [varchar](12) NULL,
	[STLNR] [varchar](8) NULL,
	[DATUV] [date] NULL,
	[BMENG] [decimal](13, 3) NULL,
	[WRKAN] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STKO_FROZEN_GROUPED_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STKO_FROZEN_GROUPED_FILTERED](
	[AUFNR] [varchar](12) NULL,
	[STLNR] [varchar](8) NULL,
	[WRKAN] [varchar](4) NULL,
	[DATUV] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STKO_GROUP_BY]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STKO_GROUP_BY](
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[DATUV] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STPO_ACTIVE_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STPO_ACTIVE_RECORDS](
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BUDAT] [date] NULL,
	[AUFNR] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STPO_ACTIVE_RECORDS_AGG]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STPO_ACTIVE_RECORDS_AGG](
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[BUDAT] [date] NULL,
	[AUFNR] [varchar](12) NULL,
	[ALPGR] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STPO_FROZEN_ACTIVE_RECORDS]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STPO_FROZEN_ACTIVE_RECORDS](
	[AUFNR] [varchar](12) NOT NULL,
	[STLTY] [varchar](1) NOT NULL,
	[STLNR] [varchar](8) NOT NULL,
	[STLKN] [decimal](8, 0) NOT NULL,
	[STPOZ] [decimal](8, 0) NOT NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[ALPGR] [varchar](2) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC,
	[STLTY] ASC,
	[STLNR] ASC,
	[STLKN] ASC,
	[STPOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STPO_FROZEN_ACTIVE_RECORDS_AGG]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STPO_FROZEN_ACTIVE_RECORDS_AGG](
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AUFNR] [varchar](12) NULL,
	[ALPGR] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STPO_FROZEN_GROUPED_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STPO_FROZEN_GROUPED_FILTERED](
	[AUFNR] [varchar](12) NOT NULL,
	[STLNR] [varchar](8) NOT NULL,
	[IDNRK] [varchar](18) NOT NULL,
	[DATUV] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC,
	[STLNR] ASC,
	[IDNRK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STPO_GROUP_BY]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STPO_GROUP_BY](
	[STLNR] [varchar](8) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[BUDAT] [date] NULL,
	[AUFNR] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_WEEK_CALENDAR]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[STG_WEEK_CALENDAR](
	[BUDAT_DT] [date] NULL,
	[WEEK] [decimal](6, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[STNDRD_HST]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STNDRD_HST](
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLNR] [varchar](8) NULL,
	[IDNRK] [varchar](18) NULL,
	[BMEIN] [varchar](3) NULL,
	[MEINS] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[BMENG_FRZ] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MENGE_FRZ] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AUSCH_FRZ] [decimal](5, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPGR_FRZ] [varchar](2) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EWAHR_FRZ] [decimal](3, 0) NULL,
	[STANDARD_V] [decimal](10, 6) NULL,
	[FROZEN_V] [decimal](10, 6) NULL,
	[IDEAL_V] [decimal](30, 17) NULL,
	[valid_from] [date] NULL,
	[valid_to] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STNDRD_HST_TEMP]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STNDRD_HST_TEMP](
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLNR] [varchar](8) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[IDNRK] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[STANDARD_V] [decimal](10, 6) NULL,
	[IDEAL_V] [decimal](30, 17) NULL,
	[valid_from] [date] NULL,
	[valid_to] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STNDRD_IDL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STNDRD_IDL](
	[AUFNR] [varchar](12) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLNR] [varchar](8) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[BMENG_FRZ] [decimal](13, 3) NULL,
	[IDNRK] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MENGE_FRZ] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPGR_FRZ] [varchar](2) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EWAHR_FRZ] [decimal](3, 0) NULL,
	[FROZEN_V] [decimal](10, 6) NULL,
	[STANDARD_V] [decimal](10, 6) NULL,
	[IDEAL_V] [decimal](30, 17) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STNDRD_IDL_FNL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STNDRD_IDL_FNL](
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[AUFNR] [varchar](12) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[BMENG_FRZ] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MENGE_FRZ] [decimal](13, 3) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[ALPGR] [varchar](2) NULL,
	[ALPGR_FRZ] [varchar](2) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EWAHR_FRZ] [decimal](3, 0) NULL,
	[FROZEN_V] [decimal](10, 6) NULL,
	[STANDARD_V] [decimal](10, 6) NULL,
	[IDEAL_V] [decimal](30, 17) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STPO_FILTERED]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STPO_FILTERED](
	[STLNR] [varchar](8) NULL,
	[IDNRK] [varchar](18) NULL,
	[DATUV] [date] NULL,
	[BUDAT] [date] NULL,
	[AUFNR] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TARGET_FNL]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TARGET_FNL](
	[AUFNR] [varchar](12) NULL,
	[FINISHED] [varchar](18) NULL,
	[COMPONENT] [varchar](18) NULL,
	[BUDAT] [date] NULL,
	[WERKS] [varchar](4) NULL,
	[UNIT] [varchar](3) NULL,
	[LCL_CURR] [varchar](5) NULL,
	[SHIFT_] [varchar](1) NOT NULL,
	[GOOD_RECEIPT_ACTUAL] [int] NULL,
	[GI_QTY_ACTUAL] [decimal](38, 4) NULL,
	[GI_VAL_ACTUAL_LC] [decimal](38, 4) NULL,
	[GI_QTY_STANDARD] [decimal](38, 6) NULL,
	[GI_QTY_FROZEN] [decimal](38, 6) NULL,
	[GI_QTY_IDEAL] [decimal](38, 10) NULL,
	[ALTN_GRP] [varchar](2) NULL,
	[SCRAP] [decimal](5, 2) NULL,
	[OVER_WGT_CMPT] [decimal](15, 6) NULL,
	[MOSTURE_PRCT_CMPT] [decimal](15, 6) NULL,
	[WASTE_PRCT_CMPT] [decimal](15, 6) NULL,
	[STPRS_MBEW] [decimal](11, 2) NULL,
	[PEINH_MBEW] [decimal](5, 0) NULL,
	[GI_VAL_STANDRD_LC] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_LC] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_LC] [decimal](38, 6) NULL,
	[GI_VAL_ACTL_USD] [decimal](38, 6) NULL,
	[GI_VAL_STANDRD_USD] [decimal](38, 6) NULL,
	[GI_VAL_FROZEN_USD] [decimal](38, 6) NULL,
	[GI_VAL_IDEAL_USD] [decimal](38, 6) NULL,
	[STNDRD_VS_ACTL] [decimal](38, 4) NULL,
	[STNDRD_VS_ACTL_LC] [decimal](38, 4) NULL,
	[STNDRD_VS_ACTL_USD] [decimal](38, 6) NULL,
	[IDL_VS_ACTL] [decimal](38, 4) NULL,
	[IDL_VS_ACTL_LC] [decimal](38, 4) NULL,
	[IDL_VS_ACTL_USD] [decimal](38, 6) NULL,
	[FRZN_VS_ACTL] [decimal](38, 4) NULL,
	[FRZN_VS_ACTL_LC] [decimal](38, 4) NULL,
	[FRZN_VS_ACTL_USD] [decimal](38, 6) NULL,
	[STNDRD_VS_ACTL_PRCT] [decimal](38, 6) NULL,
	[PRCT_IDL_ACTL] [decimal](38, 4) NULL,
	[PRCT_FRZN_ACTL] [decimal](38, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TCURR_WM]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TCURR_WM](
	[KURST] [varchar](4) NULL,
	[FCURR] [varchar](5) NULL,
	[TCURR] [varchar](5) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[CURR_DT] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[VARIANCE_TEST]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[VARIANCE_TEST](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[CITY] [varchar](25) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[COUNTRY] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](50) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](7) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[CATEGORY] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[BRAND] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[TYPE] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts - Actuals] [decimal](13, 2) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](9) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [varchar](50) NULL,
	[Overweight % for Component Material] [decimal](11, 2) NULL,
	[Moisture % for Component Material] [decimal](10, 2) NULL,
	[Waste % for Component Material] [decimal](10, 2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty - Actuals] [decimal](13, 2) NULL,
	[UNIT_1] [varchar](3) NULL,
	[GI Val - Actuals LC] [decimal](13, 2) NULL,
	[Local Currency] [varchar](4) NULL,
	[GI VAL - Actuals USD] [decimal](13, 2) NULL,
	[USD] [varchar](4) NULL,
	[GI Qty - Standard] [decimal](13, 2) NULL,
	[UNIT_2] [varchar](3) NULL,
	[GI Val - Standard LC] [decimal](13, 2) NULL,
	[Local Currency_1] [varchar](4) NULL,
	[GI Val - Standard USD] [decimal](13, 2) NULL,
	[USD_1] [varchar](4) NULL,
	[GI Val - Frozen LC] [decimal](13, 2) NULL,
	[Local Currency_2] [varchar](4) NULL,
	[GI Val - Frozen USD] [decimal](13, 2) NULL,
	[USD_2] [varchar](4) NULL,
	[GI Qty - Ideal] [decimal](13, 2) NULL,
	[UNIT_3] [varchar](3) NULL,
	[GI Val - Ideal LC] [decimal](13, 2) NULL,
	[Local Currency_3] [varchar](4) NULL,
	[GI Val - Ideal USD] [decimal](13, 2) NULL,
	[USD_3] [varchar](4) NULL,
	[Standard Vs Actual in units] [decimal](13, 2) NULL,
	[UNIT_4] [varchar](3) NULL,
	[Standard Vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_4] [varchar](4) NULL,
	[Standard Vs Actual in USD] [decimal](13, 2) NULL,
	[USD_4] [varchar](4) NULL,
	[Ideal Vs Actual in Units] [decimal](13, 2) NULL,
	[UNIT_5] [varchar](3) NULL,
	[Ideal vs Actual in LC] [decimal](13, 2) NULL,
	[Local Currency_5] [varchar](4) NULL,
	[Ideal vs Actual USD] [decimal](13, 2) NULL,
	[USD_5] [varchar](4) NULL,
	[Standard Vs Actual %] [decimal](13, 2) NULL,
	[% Ideal Vs Actual] [decimal](13, 2) NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty -  Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [decimal](13, 2) NULL,
	[Frozen Vs Actual in Units] [decimal](13, 2) NULL,
	[Frozen Vs Actual in LC] [decimal](13, 2) NULL,
	[Frozen Vs Actual in USD] [decimal](13, 2) NULL,
	[Date Time Stamp of data the extraction] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UVW_KLA_WASTE_MGMT]    Script Date: 11/20/2018 5:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ====================================================================================================================================================================
-- NAME        	:  UVW_KLA_WASTE_MGMT

-- PURPOSE & 
-- DESCRIPTION  :  This View is used to report the KPIs for KLA Waste Management of which few are at the Finished Material Grain & few are at Component Material Grain
                        
-- REVISIONS:

-- VERSION     DATE            AUTHOR                   CHANGE REASON

-- 1.0		   01/18/2018	   USCUXB73					1. INITIAL VERSION 

-- 2.0		   06/20/2018	   USCAKK02 				2. Added the filter Criteria to show only current year data

-- 3.0		   07/13/2018	   USCAKK02					3. Added Calculation logic for GI_frozen_Qty, GI_Frozen_LCL_Curr,GI_Frozen_USD

-- =====================================================================================================================================================================


CREATE  VIEW [dbo].[UVW_KLA_WASTE_MGMT]
AS
SELECT [PLNT]
      ,[PLNT_DESC]
      ,[CITY]
      ,[RGN]
      ,[RGN_DESC]
      ,[CTRY]
      ,[CTRY_NM]
      ,[LINE_NM]
      ,[PROD_ORDR]
      ,[LAST_CHG_DT]
      ,[ORDR_STATUS]
      ,[MATRL]
      ,[MATRL_DESC]
      ,[MATRL_GRP]
      ,[MATRL_GRP_DESC]
      ,[MATRL_TYP]
      ,[DESC_OF_MATRL_TYP]
      ,[CATG]
      ,[CATG_DESC]
      ,[BRAND]
      ,[BRAND_DESC]
      ,[TYP]
      ,[TYP_DESC]
      ,[CMPT_MATRL]
      ,[MATRL_DESC_CMPT]
      ,[MATRL_GRP_CMPT]
      ,[MATRL_GRP_DESC_CMPT]
      ,[MATRL_TYP_CMPT]
      ,[MATRL_TYP_DESC_CMPT]
      ,[ALTN_GRP]
      ,[FISC_WK]
      ,[FISC_PD]
      ,[FISC_YR]
      ,[DT_EA_CMPT]
      ,[SHFT]
      ,[UNIT]
      ,[LCL_CURR]
	  
	  ,[OVR_WGT_PCT_CMPT_MATRL]
      ,[MSTR_PRCT_CMPT_MATRL]
      ,[WASTE_PRCT_CMPT_MATRL]
	  ,[SCRAP]
      ,[GDS_RCPT_ACTL]
	  
	  ,[GI_QTY_ACTL]
      ,[GI_QTY_STD]
	  ,[GI_QTY_FROZEN]
      ,[GI_QTY_IDEAL]
      
      ,(CASE WHEN PLNT = '0384' THEN [GI_VAL_ACTL_LCL_CURR]*100 ELSE [GI_VAL_ACTL_LCL_CURR] END) as [GI_VAL_ACTL_LCL_CURR]
	  ,(CASE WHEN PLNT = '0384' THEN [GI_VAL_STD_LCL_CURR]*100 ELSE [GI_VAL_STD_LCL_CURR] END) as [GI_VAL_STD_LCL_CURR]
	  ,(CASE WHEN PLNT = '0384' THEN [GI_VAL_FROZEN_LCL_CURR]*100 ELSE [GI_VAL_FROZEN_LCL_CURR] END) as [GI_VAL_FROZEN_LCL_CURR]
      ,(CASE WHEN PLNT = '0384' THEN [GI_VAL_IDEAL_LCL_CURR]*100 ELSE [GI_VAL_IDEAL_LCL_CURR] END) as [GI_VAL_IDEAL_LCL_CURR]
      
	  ,[GI_VAL_ACTL_USD]
      ,[GI_VAL_STD_USD]
	  ,[GI_VAL_FROZEN_USD] 
      ,[GI_VAL_IDEAL_USD]	  
	  
      ,[STD_VS_ACTL]
	  ,[IDEAL_VS_ACTL]
	  ,[FROZEN_VS_ACTL]
     
      ,[STD_VS_ACTL_LCL_CURR]
	  ,[IDEAL_VS_ACTL_LCL_CURR]
	  ,[FROZEN_VS_ACTL_LCL_CURR]
      
      ,[STD_VS_ACTL_USD]
      ,[IDEAL_VS_ACTL_USD]
      ,[FROZEN_VS_ACTL_USD]
      
      ,[PRCT_IDEAL_ACTL]
      ,[PRCT_FROZEN_ACTL]
	  ,[STD_VS_ACTL_PRCT]
     
	  
  FROM [KLA_SC].[STG].[KLA_WM_FNL]
  Where [MATRL_TYP] IN ('FERT','HALB')
  AND [FISC_YR] = YEAR(getdate())




GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_BOM_GDA_LN_TMP]    Script Date: 11/20/2018 5:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IDX_BOM_GDA_LN_TMP] ON [STG].[BOM_GDA_LN_TEMP]
(
	[AUFNR] ASC,
	[IDL_FIN] ASC,
	[IDL_CMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_BOM_GDA_TMP]    Script Date: 11/20/2018 5:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IDX_BOM_GDA_TMP] ON [STG].[BOM_GDA_TMP]
(
	[AUFNR] ASC,
	[FINISHED] ASC,
	[COMPONENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_PRD_ORDR_PLNT_DT]    Script Date: 11/20/2018 5:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IDX_PRD_ORDR_PLNT_DT] ON [STG].[KLA_WM_FNL]
(
	[PROD_ORDR] ASC,
	[PLNT] ASC,
	[DT_EA_CMPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_AUFNR_WERKS_FIN_CMPT_TMP]    Script Date: 11/20/2018 5:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IDX_AUFNR_WERKS_FIN_CMPT_TMP] ON [STG].[KLA_WM_FNL_TMP]
(
	[AUFNR] ASC,
	[FINISHED] ASC,
	[COMPONENT] ASC,
	[WERKS] ASC,
	[BUDAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [KLA_SC] SET  READ_WRITE 
GO
