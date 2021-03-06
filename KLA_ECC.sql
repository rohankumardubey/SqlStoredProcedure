USE [master]
GO
/****** Object:  Database [KLA_ECC]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE DATABASE [KLA_ECC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KLA_ECC', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KLA_ECC.mdf' , SIZE = 230707200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KLA_ECC_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KLA_ECC_log.ldf' , SIZE = 17740736KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KLA_ECC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KLA_ECC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KLA_ECC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KLA_ECC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KLA_ECC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KLA_ECC] SET ARITHABORT OFF 
GO
ALTER DATABASE [KLA_ECC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KLA_ECC] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_ECC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KLA_ECC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_ECC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KLA_ECC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KLA_ECC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KLA_ECC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KLA_ECC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KLA_ECC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KLA_ECC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KLA_ECC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KLA_ECC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KLA_ECC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KLA_ECC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KLA_ECC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KLA_ECC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KLA_ECC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KLA_ECC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KLA_ECC] SET  MULTI_USER 
GO
ALTER DATABASE [KLA_ECC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KLA_ECC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KLA_ECC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KLA_ECC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KLA_ECC', N'ON'
GO
USE [KLA_ECC]
GO
/****** Object:  User [US\SQL_SC_PWRUSERS_R]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_SC_PWRUSERS_R] FOR LOGIN [US\SQL_SC_PWRUSERS_R]
GO
/****** Object:  User [US\SQL_KLA_R]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_KLA_R] FOR LOGIN [US\SQL_KLA_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKJ1J02]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_MXKJ1J02] FOR LOGIN [SAS_MXKJ1J02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKI1G02]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [SAS_MXKI1G02] FOR LOGIN [SAS_MXKI1G02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:38:50 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SC_PWRUSERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KLA_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
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
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_AFKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_LOAD_AFKO]
AS
SET NOCOUNT ON
BEGIN
	BEGIN TRY
		BEGIN
		
		MERGE KLA_ECC.dbo.AFKO AS coe
USING (
	SELECT *
	FROM STG.STG_AFKO with(nolock)
	) AS sd
	ON coe.[AUFNR] = sd.[AUFNR]
	
WHEN MATCHED
	THEN
		UPDATE
		SET 	coe.[MANDT] = sd.[MANDT],
      coe.[AUFNR] = sd.[AUFNR],
      coe.[GLTRP] = sd.[GLTRP],
      coe.[GSTRP] = sd.[GSTRP],
      coe.[FTRMS] = sd.[FTRMS],
      coe.[GLTRS] = sd.[GLTRS],
      coe.[GSTRS] = sd.[GSTRS],
      coe.[GSTRI] = sd.[GSTRI],
      coe.[GETRI] = sd.[GETRI],
      coe.[GLTRI] = sd.[GLTRI],
      coe.[FTRMI] = sd.[FTRMI],
      coe.[FTRMP] = sd.[FTRMP],
      coe.[RSNUM] = sd.[RSNUM],
      coe.[GASMG] = sd.[GASMG],
      coe.[GAMNG] = sd.[GAMNG],
      coe.[GMEIN] = sd.[GMEIN],
      coe.[PLNBEZ] = sd.[PLNBEZ],
      coe.[PLNTY] = sd.[PLNTY],
      coe.[PLNNR] = sd.[PLNNR],
      coe.[PLNAW] = sd.[PLNAW],
      coe.[PLNAL] = sd.[PLNAL],
      coe.[PVERW] = sd.[PVERW],
      coe.[PLAUF] = sd.[PLAUF],
      coe.[PLSVB] = sd.[PLSVB],
      coe.[PLNME] = sd.[PLNME],
      coe.[PLSVN] = sd.[PLSVN],
      coe.[PDATV] = sd.[PDATV],
      coe.[PAENR] = sd.[PAENR],
      coe.[PLGRP] = sd.[PLGRP],
      coe.[LODIV] = sd.[LODIV],
      coe.[STLTY] = sd.[STLTY],
      coe.[STLBEZ] = sd.[STLBEZ],
      coe.[STLST] = sd.[STLST],
      coe.[STLNR] = sd.[STLNR],
      coe.[SDATV] = sd.[SDATV],
      coe.[SBMNG] = sd.[SBMNG],
      coe.[SBMEH] = sd.[SBMEH],
      coe.[SAENR] = sd.[SAENR],
      coe.[STLAL] = sd.[STLAL],
      coe.[STLAN] = sd.[STLAN],
      coe.[SLSVN] = sd.[SLSVN],
      coe.[SLSBS] = sd.[SLSBS],
      coe.[AUFLD] = sd.[AUFLD],
      coe.[DISPO] = sd.[DISPO],
      coe.[AUFPL] = sd.[AUFPL],
      coe.[FEVOR] = sd.[FEVOR],
      coe.[FHORI] = sd.[FHORI],
      coe.[TERKZ] = sd.[TERKZ],
      coe.[REDKZ] = sd.[REDKZ],
      coe.[APRIO] = sd.[APRIO],
      coe.[NTZUE] = sd.[NTZUE],
      coe.[VORUE] = sd.[VORUE],
      coe.[PROFID] = sd.[PROFID],
      coe.[VORGZ] = sd.[VORGZ],
      coe.[SICHZ] = sd.[SICHZ],
      coe.[FREIZ] = sd.[FREIZ],
      coe.[UPTER] = sd.[UPTER],
      coe.[BEDID] = sd.[BEDID],
      coe.[PRONR] = sd.[PRONR],
      coe.[ZAEHL] = sd.[ZAEHL],
      coe.[MZAEHL] = sd.[MZAEHL],
      coe.[ZKRIZ] = sd.[ZKRIZ],
      coe.[PRUEFLOS] = sd.[PRUEFLOS],
      coe.[KLVARP] = sd.[KLVARP],
      coe.[KLVARI] = sd.[KLVARI],
      coe.[RGEKZ] = sd.[RGEKZ],
      coe.[PLART] = sd.[PLART],
      coe.[FLG_AOB] = sd.[FLG_AOB],
      coe.[FLG_ARBEI] = sd.[FLG_ARBEI],
      coe.[GLTPP] = sd.[GLTPP],
      coe.[GSTPP] = sd.[GSTPP],
      coe.[GLTPS] = sd.[GLTPS],
      coe.[GSTPS] = sd.[GSTPS],
      coe.[FTRPS] = sd.[FTRPS],
      coe.[RDKZP] = sd.[RDKZP],
      coe.[TRKZP] = sd.[TRKZP],
      coe.[RUECK] = sd.[RUECK],
      coe.[RMZHL] = sd.[RMZHL],
      coe.[IGMNG] = sd.[IGMNG],
      coe.[RATID] = sd.[RATID],
      coe.[GROID] = sd.[GROID],
      coe.[CUOBJ] = sd.[CUOBJ],
      coe.[GLUZS] = sd.[GLUZS],
      coe.[GSUZS] = sd.[GSUZS],
      coe.[REVLV] = sd.[REVLV],
      coe.[RSHTY] = sd.[RSHTY],
      coe.[RSHID] = sd.[RSHID],
      coe.[RSNTY] = sd.[RSNTY],
      coe.[RSNID] = sd.[RSNID],
      coe.[NAUTERM] = sd.[NAUTERM],
      coe.[NAUCOST] = sd.[NAUCOST],
      coe.[STUFE] = sd.[STUFE],
      coe.[WEGXX] = sd.[WEGXX],
      coe.[VWEGX] = sd.[VWEGX],
      coe.[ARSNR] = sd.[ARSNR],
      coe.[ARSPS] = sd.[ARSPS],
      coe.[MAUFNR] = sd.[MAUFNR],
      coe.[LKNOT] = sd.[LKNOT],
      coe.[RKNOT] = sd.[RKNOT],
      coe.[PRODNET] = sd.[PRODNET],
      coe.[IASMG] = sd.[IASMG],
      coe.[ABARB] = sd.[ABARB],
      coe.[AUFNT] = sd.[AUFNT],
      coe.[AUFPT] = sd.[AUFPT],
      coe.[APLZT] = sd.[APLZT],
      coe.[NO_DISP] = sd.[NO_DISP],
      coe.[CSPLIT] = sd.[CSPLIT],
      coe.[AENNR] = sd.[AENNR],
      coe.[CY_SEQNR] = sd.[CY_SEQNR],
      coe.[BREAKS] = sd.[BREAKS],
      coe.[VORGZ_TRM] = sd.[VORGZ_TRM],
      coe.[SICHZ_TRM] = sd.[SICHZ_TRM],
      coe.[TRMDT] = sd.[TRMDT],
      coe.[GLUZP] = sd.[GLUZP],
      coe.[GSUZP] = sd.[GSUZP],
      coe.[GSUZI] = sd.[GSUZI],
      coe.[GEUZI] = sd.[GEUZI],
      coe.[GLUPP] = sd.[GLUPP],
      coe.[GSUPP] = sd.[GSUPP],
      coe.[GLUPS] = sd.[GLUPS],
      coe.[GSUPS] = sd.[GSUPS],
      coe.[CHSCH] = sd.[CHSCH],
      coe.[KAPT_VORGZ] = sd.[KAPT_VORGZ],
      coe.[KAPT_SICHZ] = sd.[KAPT_SICHZ],
      coe.[LEAD_AUFNR] = sd.[LEAD_AUFNR],
      coe.[PNETSTARTD] = sd.[PNETSTARTD],
      coe.[PNETSTARTT] = sd.[PNETSTARTT],
      coe.[PNETENDD] = sd.[PNETENDD],
      coe.[PNETENDT] = sd.[PNETENDT],
      coe.[KBED] = sd.[KBED],
      coe.[KKALKR] = sd.[KKALKR],
      coe.[SFCPF] = sd.[SFCPF],
      coe.[RMNGA] = sd.[RMNGA],
      coe.[GSBTR] = sd.[GSBTR],
      coe.[VFMNG] = sd.[VFMNG],
      coe.[NOPCOST] = sd.[NOPCOST],
      coe.[NETZKONT] = sd.[NETZKONT],
      coe.[ATRKZ] = sd.[ATRKZ],
      coe.[OBJTYPE] = sd.[OBJTYPE],
      coe.[CH_PROC] = sd.[CH_PROC],
      coe.[KAPVERSA] = sd.[KAPVERSA],
      coe.[COLORDPROC] = sd.[COLORDPROC],
      coe.[KZERB] = sd.[KZERB],
      coe.[CONF_KEY] = sd.[CONF_KEY],
      coe.[ST_ARBID] = sd.[ST_ARBID],
      coe.[VSNMR_V] = sd.[VSNMR_V],
      coe.[TERHW] = sd.[TERHW],
      coe.[SPLSTAT] = sd.[SPLSTAT],
      coe.[COSTUPD] = sd.[COSTUPD],
      coe.[ADPSP] = sd.[ADPSP],
      coe.[RMANR] = sd.[RMANR],
      coe.[POSNR_RMA] = sd.[POSNR_RMA],
      coe.[POSNV_RMA] = sd.[POSNV_RMA],
      coe.[OIHANTYP] = sd.[OIHANTYP]
		
WHEN NOT MATCHED
	THEN
		
	-- Inserting the data ----
	INSERT ( 
	  [MANDT],
      [AUFNR],
      [GLTRP],
      [GSTRP],
      [FTRMS],
      [GLTRS],
      [GSTRS],
      [GSTRI],
      [GETRI],
      [GLTRI],
      [FTRMI],
      [FTRMP],
      [RSNUM],
      [GASMG],
      [GAMNG],
      [GMEIN],
      [PLNBEZ],
      [PLNTY],
      [PLNNR],
      [PLNAW],
      [PLNAL],
      [PVERW],
      [PLAUF],
      [PLSVB],
      [PLNME],
      [PLSVN],
      [PDATV],
      [PAENR],
      [PLGRP],
      [LODIV],
      [STLTY],
      [STLBEZ],
      [STLST],
      [STLNR],
      [SDATV],
      [SBMNG],
      [SBMEH],
      [SAENR],
      [STLAL],
      [STLAN],
      [SLSVN],
      [SLSBS],
      [AUFLD],
      [DISPO],
      [AUFPL],
      [FEVOR],
      [FHORI],
      [TERKZ],
      [REDKZ],
      [APRIO],
      [NTZUE],
      [VORUE],
      [PROFID],
      [VORGZ],
      [SICHZ],
      [FREIZ],
      [UPTER],
      [BEDID],
      [PRONR],
      [ZAEHL],
      [MZAEHL],
      [ZKRIZ],
      [PRUEFLOS],
      [KLVARP],
      [KLVARI],
      [RGEKZ],
      [PLART],
      [FLG_AOB],
      [FLG_ARBEI],
      [GLTPP],
      [GSTPP],
      [GLTPS],
      [GSTPS],
      [FTRPS],
      [RDKZP],
      [TRKZP],
      [RUECK],
      [RMZHL],
      [IGMNG],
      [RATID],
      [GROID],
      [CUOBJ],
      [GLUZS],
      [GSUZS],
      [REVLV],
      [RSHTY],
      [RSHID],
      [RSNTY],
      [RSNID],
      [NAUTERM],
      [NAUCOST],
      [STUFE],
      [WEGXX],
      [VWEGX],
      [ARSNR],
      [ARSPS],
      [MAUFNR],
      [LKNOT],
      [RKNOT],
      [PRODNET],
      [IASMG],
      [ABARB],
      [AUFNT],
      [AUFPT],
      [APLZT],
      [NO_DISP],
      [CSPLIT],
      [AENNR],
      [CY_SEQNR],
      [BREAKS],
      [VORGZ_TRM],
      [SICHZ_TRM],
      [TRMDT],
      [GLUZP],
      [GSUZP],
      [GSUZI],
      [GEUZI],
      [GLUPP],
      [GSUPP],
      [GLUPS],
      [GSUPS],
      [CHSCH],
      [KAPT_VORGZ],
      [KAPT_SICHZ],
      [LEAD_AUFNR],
      [PNETSTARTD],
      [PNETSTARTT],
      [PNETENDD],
      [PNETENDT],
      [KBED],
      [KKALKR],
      [SFCPF],
      [RMNGA],
      [GSBTR],
      [VFMNG],
      [NOPCOST],
      [NETZKONT],
      [ATRKZ],
      [OBJTYPE],
      [CH_PROC],
      [KAPVERSA],
      [COLORDPROC],
      [KZERB],
      [CONF_KEY],
      [ST_ARBID],
      [VSNMR_V],
      [TERHW],
      [SPLSTAT],
      [COSTUPD],
      [ADPSP],
      [RMANR],
      [POSNR_RMA],
      [POSNV_RMA],
      [OIHANTYP]
	  )
	  values(
	  sd.[MANDT],
      sd.[AUFNR],
      sd.[GLTRP],
      sd.[GSTRP],
      sd.[FTRMS],
      sd.[GLTRS],
      sd.[GSTRS],
      sd.[GSTRI],
      sd.[GETRI],
      sd.[GLTRI],
      sd.[FTRMI],
      sd.[FTRMP],
      sd.[RSNUM],
      sd.[GASMG],
      sd.[GAMNG],
      sd.[GMEIN],
      sd.[PLNBEZ],
      sd.[PLNTY],
      sd.[PLNNR],
      sd.[PLNAW],
      sd.[PLNAL],
      sd.[PVERW],
      sd.[PLAUF],
      sd.[PLSVB],
      sd.[PLNME],
      sd.[PLSVN],
      sd.[PDATV],
      sd.[PAENR],
      sd.[PLGRP],
      sd.[LODIV],
      sd.[STLTY],
      sd.[STLBEZ],
      sd.[STLST],
      sd.[STLNR],
      sd.[SDATV],
      sd.[SBMNG],
      sd.[SBMEH],
      sd.[SAENR],
      sd.[STLAL],
      sd.[STLAN],
      sd.[SLSVN],
      sd.[SLSBS],
      sd.[AUFLD],
      sd.[DISPO],
      sd.[AUFPL],
      sd.[FEVOR],
      sd.[FHORI],
      sd.[TERKZ],
      sd.[REDKZ],
      sd.[APRIO],
      sd.[NTZUE],
      sd.[VORUE],
      sd.[PROFID],
      sd.[VORGZ],
      sd.[SICHZ],
      sd.[FREIZ],
      sd.[UPTER],
      sd.[BEDID],
      sd.[PRONR],
      sd.[ZAEHL],
      sd.[MZAEHL],
      sd.[ZKRIZ],
      sd.[PRUEFLOS],
      sd.[KLVARP],
      sd.[KLVARI],
      sd.[RGEKZ],
      sd.[PLART],
      sd.[FLG_AOB],
      sd.[FLG_ARBEI],
      sd.[GLTPP],
      sd.[GSTPP],
      sd.[GLTPS],
      sd.[GSTPS],
      sd.[FTRPS],
      sd.[RDKZP],
      sd.[TRKZP],
      sd.[RUECK],
      sd.[RMZHL],
      sd.[IGMNG],
      sd.[RATID],
      sd.[GROID],
      sd.[CUOBJ],
      sd.[GLUZS],
      sd.[GSUZS],
      sd.[REVLV],
      sd.[RSHTY],
      sd.[RSHID],
      sd.[RSNTY],
      sd.[RSNID],
      sd.[NAUTERM],
      sd.[NAUCOST],
      sd.[STUFE],
      sd.[WEGXX],
      sd.[VWEGX],
      sd.[ARSNR],
      sd.[ARSPS],
      sd.[MAUFNR],
      sd.[LKNOT],
      sd.[RKNOT],
      sd.[PRODNET],
      sd.[IASMG],
      sd.[ABARB],
      sd.[AUFNT],
      sd.[AUFPT],
      sd.[APLZT],
      sd.[NO_DISP],
      sd.[CSPLIT],
      sd.[AENNR],
      sd.[CY_SEQNR],
      sd.[BREAKS],
      sd.[VORGZ_TRM],
      sd.[SICHZ_TRM],
      sd.[TRMDT],
      sd.[GLUZP],
      sd.[GSUZP],
      sd.[GSUZI],
      sd.[GEUZI],
      sd.[GLUPP],
      sd.[GSUPP],
      sd.[GLUPS],
      sd.[GSUPS],
      sd.[CHSCH],
      sd.[KAPT_VORGZ],
      sd.[KAPT_SICHZ],
      sd.[LEAD_AUFNR],
      sd.[PNETSTARTD],
      sd.[PNETSTARTT],
      sd.[PNETENDD],
      sd.[PNETENDT],
      sd.[KBED],
      sd.[KKALKR],
      sd.[SFCPF],
      sd.[RMNGA],
      sd.[GSBTR],
      sd.[VFMNG],
      sd.[NOPCOST],
      sd.[NETZKONT],
      sd.[ATRKZ],
      sd.[OBJTYPE],
      sd.[CH_PROC],
      sd.[KAPVERSA],
      sd.[COLORDPROC],
      sd.[KZERB],
      sd.[CONF_KEY],
      sd.[ST_ARBID],
      sd.[VSNMR_V],
      sd.[TERHW],
      sd.[SPLSTAT],
      sd.[COSTUPD],
      sd.[ADPSP],
      sd.[RMANR],
      sd.[POSNR_RMA],
      sd.[POSNV_RMA],
      sd.[OIHANTYP] 
	  );
				
		END
	END TRY

BEGIN CATCH
	END CATCH
	
SET NOCOUNT OFF
END









GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_AFRU]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_LOAD_AFRU]
AS
SET NOCOUNT ON
BEGIN
	BEGIN TRY
		BEGIN
		
		MERGE KLA_ECC.dbo.AFRU AS coe
USING (
	SELECT *
	FROM STG.STG_AFRU with(nolock)
	) AS sd 
	ON coe.[RUECK] = sd.[RUECK]
	AND coe.[RMZHL] = sd.[RMZHL]

	
WHEN MATCHED
	THEN
		UPDATE
		SET coe.[MANDT] = sd.[MANDT],
      coe.[RUECK] = sd.[RUECK],
      coe.[RMZHL] = sd.[RMZHL],
      coe.[ERSDA] = sd.[ERSDA],
      coe.[ERNAM] = sd.[ERNAM],
      coe.[LAEDA] = sd.[LAEDA],
      coe.[AENAM] = sd.[AENAM],
      coe.[BUDAT] = sd.[BUDAT],
      coe.[ARBID] = sd.[ARBID],
      coe.[WERKS] = sd.[WERKS],
      coe.[LTXA1] = sd.[LTXA1],
      coe.[TXTSP] = sd.[TXTSP],
      coe.[ISERH] = sd.[ISERH],
      coe.[ZEIER] = sd.[ZEIER],
      coe.[ILE01] = sd.[ILE01],
      coe.[ISM01] = sd.[ISM01],
      coe.[ILE02] = sd.[ILE02],
      coe.[ISM02] = sd.[ISM02],
      coe.[ILE03] = sd.[ILE03],
      coe.[ISM03] = sd.[ISM03],
      coe.[ILE04] = sd.[ILE04],
      coe.[ISM04] = sd.[ISM04],
      coe.[ILE05] = sd.[ILE05],
      coe.[ISM05] = sd.[ISM05],
      coe.[ILE06] = sd.[ILE06],
      coe.[ISM06] = sd.[ISM06],
      coe.[ABARB] = sd.[ABARB],
      coe.[ISMNW] = sd.[ISMNW],
      coe.[ISMNE] = sd.[ISMNE],
      coe.[LEARR] = sd.[LEARR],
      coe.[IDAUR] = sd.[IDAUR],
      coe.[IDAUE] = sd.[IDAUE],
      coe.[ZCODE] = sd.[ZCODE],
      coe.[LOART] = sd.[LOART],
      coe.[QUALF] = sd.[QUALF],
      coe.[ANZMA] = sd.[ANZMA],
      coe.[LOGRP] = sd.[LOGRP],
      coe.[GMNGA] = sd.[GMNGA],
      coe.[LMNGA] = sd.[LMNGA],
      coe.[XMNGA] = sd.[XMNGA],
      coe.[GMEIN] = sd.[GMEIN],
      coe.[MEINH] = sd.[MEINH],
      coe.[GRUND] = sd.[GRUND],
      coe.[PERNR] = sd.[PERNR],
      coe.[ISDD] = sd.[ISDD],
      coe.[ISDZ] = sd.[ISDZ],
      coe.[IERD] = sd.[IERD],
      coe.[IERZ] = sd.[IERZ],
      coe.[ISBD] = sd.[ISBD],
      coe.[ISBZ] = sd.[ISBZ],
      coe.[IEBD] = sd.[IEBD],
      coe.[IEBZ] = sd.[IEBZ],
      coe.[ISAD] = sd.[ISAD],
      coe.[ISAZ] = sd.[ISAZ],
      coe.[IEDD] = sd.[IEDD],
      coe.[IEDZ] = sd.[IEDZ],
      coe.[PEDD] = sd.[PEDD],
      coe.[PEDZ] = sd.[PEDZ],
      coe.[WABLNR] = sd.[WABLNR],
      coe.[WEBLNR] = sd.[WEBLNR],
      coe.[AUERU] = sd.[AUERU],
      coe.[AUSOR] = sd.[AUSOR],
      coe.[STNDR] = sd.[STNDR],
      coe.[MANUR] = sd.[MANUR],
      coe.[MEILR] = sd.[MEILR],
      coe.[AUFPL] = sd.[AUFPL],
      coe.[APLZL] = sd.[APLZL],
      coe.[AUFNR] = sd.[AUFNR],
      coe.[APLFL] = sd.[APLFL],
      coe.[VORNR] = sd.[VORNR],
      coe.[SUMNR] = sd.[SUMNR],
      coe.[OFM01] = sd.[OFM01],
      coe.[OFE01] = sd.[OFE01],
      coe.[LEK01] = sd.[LEK01],
      coe.[OFM02] = sd.[OFM02],
      coe.[OFE02] = sd.[OFE02],
      coe.[LEK02] = sd.[LEK02],
      coe.[OFM03] = sd.[OFM03],
      coe.[OFE03] = sd.[OFE03],
      coe.[LEK03] = sd.[LEK03],
      coe.[OFM04] = sd.[OFM04],
      coe.[OFE04] = sd.[OFE04],
      coe.[LEK04] = sd.[LEK04],
      coe.[OFM05] = sd.[OFM05],
      coe.[OFE05] = sd.[OFE05],
      coe.[LEK05] = sd.[LEK05],
      coe.[OFM06] = sd.[OFM06],
      coe.[OFE06] = sd.[OFE06],
      coe.[LEK06] = sd.[LEK06],
      coe.[OFMNW] = sd.[OFMNW],
      coe.[OFMNE] = sd.[OFMNE],
      coe.[LEKNW] = sd.[LEKNW],
      coe.[ODAUR] = sd.[ODAUR],
      coe.[ODAUE] = sd.[ODAUE],
      coe.[STOKZ] = sd.[STOKZ],
      coe.[STZHL] = sd.[STZHL],
      coe.[SMENG] = sd.[SMENG],
      coe.[RUECK_MST] = sd.[RUECK_MST],
      coe.[RMZHL_MST] = sd.[RMZHL_MST],
      coe.[PDSNR] = sd.[PDSNR],
      coe.[KAPID] = sd.[KAPID],
      coe.[SPLIT] = sd.[SPLIT],
      coe.[ZAUSW] = sd.[ZAUSW],
      coe.[ORIND] = sd.[ORIND],
      coe.[ORIGF] = sd.[ORIGF],
      coe.[CANUM] = sd.[CANUM],
      coe.[BELNR_IST] = sd.[BELNR_IST],
      coe.[BELNR_UMB] = sd.[BELNR_UMB],
      coe.[RMNGA] = sd.[RMNGA],
      coe.[CATSBELNR] = sd.[CATSBELNR],
      coe.[SATZA] = sd.[SATZA],
      coe.[ERZET] = sd.[ERZET],
      coe.[CATSPRICE] = sd.[CATSPRICE],
      coe.[CATSTCURR] = sd.[CATSTCURR],
      coe.[CATSPEINH] = sd.[CATSPEINH],
      coe.[BEMOT] = sd.[BEMOT],
      coe.[IPRZ1] = sd.[IPRZ1],
      coe.[IPRE1] = sd.[IPRE1],
      coe.[IPRK1] = sd.[IPRK1],
      coe.[EXNAM] = sd.[EXNAM],
      coe.[EXERD] = sd.[EXERD],
      coe.[EXERZ] = sd.[EXERZ],
      coe.[PRZ01] = sd.[PRZ01],
      coe.[OPRZ1] = sd.[OPRZ1],
      coe.[OPRE1] = sd.[OPRE1],
      coe.[SKOKRS] = sd.[SKOKRS],
      coe.[SKOSTL] = sd.[SKOSTL],
      coe.[NODAT] = sd.[NODAT],
      coe.[ISMNU] = sd.[ISMNU],
      coe.[OFMNU] = sd.[OFMNU],
      coe.[PACKNO] = sd.[PACKNO],
      coe.[EXTID] = sd.[EXTID],
      coe.[SCHGRUP] = sd.[SCHGRUP],
      coe.[KAPTPROG] = sd.[KAPTPROG],
      coe.[ROLE_ID] = sd.[ROLE_ID]


WHEN NOT MATCHED
	THEN
		
	-- Inserting the data ----
	INSERT ( 
	  [MANDT]
      ,[RUECK]
      ,[RMZHL]
      ,[ERSDA]
      ,[ERNAM]
      ,[LAEDA]
      ,[AENAM]
      ,[BUDAT]
      ,[ARBID]
      ,[WERKS]
      ,[LTXA1]
      ,[TXTSP]
      ,[ISERH]
      ,[ZEIER]
      ,[ILE01]
      ,[ISM01]
      ,[ILE02]
      ,[ISM02]
      ,[ILE03]
      ,[ISM03]
      ,[ILE04]
      ,[ISM04]
      ,[ILE05]
      ,[ISM05]
      ,[ILE06]
      ,[ISM06]
      ,[ABARB]
      ,[ISMNW]
      ,[ISMNE]
      ,[LEARR]
      ,[IDAUR]
      ,[IDAUE]
      ,[ZCODE]
      ,[LOART]
      ,[QUALF]
      ,[ANZMA]
      ,[LOGRP]
      ,[GMNGA]
      ,[LMNGA]
      ,[XMNGA]
      ,[GMEIN]
      ,[MEINH]
      ,[GRUND]
      ,[PERNR]
      ,[ISDD]
      ,[ISDZ]
      ,[IERD]
      ,[IERZ]
      ,[ISBD]
      ,[ISBZ]
      ,[IEBD]
      ,[IEBZ]
      ,[ISAD]
      ,[ISAZ]
      ,[IEDD]
      ,[IEDZ]
      ,[PEDD]
      ,[PEDZ]
      ,[WABLNR]
      ,[WEBLNR]
      ,[AUERU]
      ,[AUSOR]
      ,[STNDR]
      ,[MANUR]
      ,[MEILR]
      ,[AUFPL]
      ,[APLZL]
      ,[AUFNR]
      ,[APLFL]
      ,[VORNR]
      ,[SUMNR]
      ,[OFM01]
      ,[OFE01]
      ,[LEK01]
      ,[OFM02]
      ,[OFE02]
      ,[LEK02]
      ,[OFM03]
      ,[OFE03]
      ,[LEK03]
      ,[OFM04]
      ,[OFE04]
      ,[LEK04]
      ,[OFM05]
      ,[OFE05]
      ,[LEK05]
      ,[OFM06]
      ,[OFE06]
      ,[LEK06]
      ,[OFMNW]
      ,[OFMNE]
      ,[LEKNW]
      ,[ODAUR]
      ,[ODAUE]
      ,[STOKZ]
      ,[STZHL]
      ,[SMENG]
      ,[RUECK_MST]
      ,[RMZHL_MST]
      ,[PDSNR]
      ,[KAPID]
      ,[SPLIT]
      ,[ZAUSW]
      ,[ORIND]
      ,[ORIGF]
      ,[CANUM]
      ,[BELNR_IST]
      ,[BELNR_UMB]
      ,[RMNGA]
      ,[CATSBELNR]
      ,[SATZA]
      ,[ERZET]
      ,[CATSPRICE]
      ,[CATSTCURR]
      ,[CATSPEINH]
      ,[BEMOT]
      ,[IPRZ1]
      ,[IPRE1]
      ,[IPRK1]
      ,[EXNAM]
      ,[EXERD]
      ,[EXERZ]
      ,[PRZ01]
      ,[OPRZ1]
      ,[OPRE1]
      ,[SKOKRS]
      ,[SKOSTL]
      ,[NODAT]
      ,[ISMNU]
      ,[OFMNU]
      ,[PACKNO]
      ,[EXTID]
      ,[SCHGRUP]
      ,[KAPTPROG]
      ,[ROLE_ID]
	  )
	  values(
	  sd.[MANDT]
      ,sd.[RUECK]
      ,sd.[RMZHL]
      ,sd.[ERSDA]
      ,sd.[ERNAM]
      ,sd.[LAEDA]
      ,sd.[AENAM]
      ,sd.[BUDAT]
      ,sd.[ARBID]
      ,sd.[WERKS]
      ,sd.[LTXA1]
      ,sd.[TXTSP]
      ,sd.[ISERH]
      ,sd.[ZEIER]
      ,sd.[ILE01]
      ,sd.[ISM01]
      ,sd.[ILE02]
      ,sd.[ISM02]
      ,sd.[ILE03]
      ,sd.[ISM03]
      ,sd.[ILE04]
      ,sd.[ISM04]
      ,sd.[ILE05]
      ,sd.[ISM05]
      ,sd.[ILE06]
      ,sd.[ISM06]
      ,sd.[ABARB]
      ,sd.[ISMNW]
      ,sd.[ISMNE]
      ,sd.[LEARR]
      ,sd.[IDAUR]
      ,sd.[IDAUE]
      ,sd.[ZCODE]
      ,sd.[LOART]
      ,sd.[QUALF]
      ,sd.[ANZMA]
      ,sd.[LOGRP]
      ,sd.[GMNGA]
      ,sd.[LMNGA]
      ,sd.[XMNGA]
      ,sd.[GMEIN]
      ,sd.[MEINH]
      ,sd.[GRUND]
      ,sd.[PERNR]
      ,sd.[ISDD]
      ,sd.[ISDZ]
      ,sd.[IERD]
      ,sd.[IERZ]
      ,sd.[ISBD]
      ,sd.[ISBZ]
      ,sd.[IEBD]
      ,sd.[IEBZ]
      ,sd.[ISAD]
      ,sd.[ISAZ]
      ,sd.[IEDD]
      ,sd.[IEDZ]
      ,sd.[PEDD]
      ,sd.[PEDZ]
      ,sd.[WABLNR]
      ,sd.[WEBLNR]
      ,sd.[AUERU]
      ,sd.[AUSOR]
      ,sd.[STNDR]
      ,sd.[MANUR]
      ,sd.[MEILR]
      ,sd.[AUFPL]
      ,sd.[APLZL]
      ,sd.[AUFNR]
      ,sd.[APLFL]
      ,sd.[VORNR]
      ,sd.[SUMNR]
      ,sd.[OFM01]
      ,sd.[OFE01]
      ,sd.[LEK01]
      ,sd.[OFM02]
      ,sd.[OFE02]
      ,sd.[LEK02]
      ,sd.[OFM03]
      ,sd.[OFE03]
      ,sd.[LEK03]
      ,sd.[OFM04]
      ,sd.[OFE04]
      ,sd.[LEK04]
      ,sd.[OFM05]
      ,sd.[OFE05]
      ,sd.[LEK05]
      ,sd.[OFM06]
      ,sd.[OFE06]
      ,sd.[LEK06]
      ,sd.[OFMNW]
      ,sd.[OFMNE]
      ,sd.[LEKNW]
      ,sd.[ODAUR]
      ,sd.[ODAUE]
      ,sd.[STOKZ]
      ,sd.[STZHL]
      ,sd.[SMENG]
      ,sd.[RUECK_MST]
      ,sd.[RMZHL_MST]
      ,sd.[PDSNR]
      ,sd.[KAPID]
      ,sd.[SPLIT]
      ,sd.[ZAUSW]
      ,sd.[ORIND]
      ,sd.[ORIGF]
      ,sd.[CANUM]
      ,sd.[BELNR_IST]
      ,sd.[BELNR_UMB]
      ,sd.[RMNGA]
      ,sd.[CATSBELNR]
      ,sd.[SATZA]
      ,sd.[ERZET]
      ,sd.[CATSPRICE]
      ,sd.[CATSTCURR]
      ,sd.[CATSPEINH]
      ,sd.[BEMOT]
      ,sd.[IPRZ1]
      ,sd.[IPRE1]
      ,sd.[IPRK1]
      ,sd.[EXNAM]
      ,sd.[EXERD]
      ,sd.[EXERZ]
      ,sd.[PRZ01]
      ,sd.[OPRZ1]
      ,sd.[OPRE1]
      ,sd.[SKOKRS]
      ,sd.[SKOSTL]
      ,sd.[NODAT]
      ,sd.[ISMNU]
      ,sd.[OFMNU]
      ,sd.[PACKNO]
      ,sd.[EXTID]
      ,sd.[SCHGRUP]
      ,sd.[KAPTPROG]
      ,sd.[ROLE_ID]
	  );
				
		END
	END TRY

BEGIN CATCH
	END CATCH

SET NOCOUNT OFF
END









GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_BKPF]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_BKPF]
AS
BEGIN
	BEGIN TRY
		BEGIN
		DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

/*
SELECT @Rows_Updt=COUNT(1)
		FROM STG.STG_BKPF sd,
		KLA_ECC.dbo.BKPF coe
			WHERE 
			coe.[BUKRS] = sd.[BUKRS]
		AND coe.[BELNR] = sd.[BELNR]
		AND coe.[GJAHR]=sd.[GJAHR]

			SELECT @Rows_Insrt= COUNT(1) from STG.STG_BKPF sd where not exists(select 1 from KLA_ECC.dbo.BKPF coe 
			where coe.[BUKRS] = sd.[BUKRS] AND coe.[BELNR] = sd.[BELNR] AND coe.[GJAHR]=sd.[GJAHR] )
*/
 EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_BKPF_SP',@GETDATE,null,null,null,null,null; 


		-----MERGE STATMENT---------

		MERGE KLA_ECC.dbo.BKPF AS coe
USING (
	SELECT *
	FROM STG.STG_BKPF
	) AS sd
	ON coe.[BUKRS] = sd.[BUKRS]
		AND coe.[BELNR] = sd.[BELNR]
		and coe.[GJAHR]=sd.[GJAHR]
		
		--WHEN MATCHED AND coe.ACCT_NBR &gt; 250 THEN DELETE
WHEN MATCHED
	THEN
		UPDATE
		SET 	coe.[MANDT] =sd.[MANDT],
	coe.[BUKRS]  =sd.[BUKRS],
	coe.[BELNR]  =sd.[BELNR],
	coe.[GJAHR]  =sd.[GJAHR],
	coe.[BLART] =sd.[BLART],
	coe.[BLDAT]  =sd.[BLDAT],
	coe.[BUDAT]  =sd.[BUDAT],
	coe.[MONAT]  =sd.[MONAT],
	coe.[CPUDT]  =sd.[CPUDT],
	coe.[CPUTM]  =sd.[CPUTM],
	coe.[AEDAT]  =sd.[AEDAT],
	coe.[UPDDT]  =sd.[UPDDT],
	coe.[WWERT]  =sd.[WWERT],
	coe.[USNAM] =sd.[USNAM],
	coe.[TCODE] =sd.[TCODE],
	coe.[BVORG] =sd.[BVORG],
	coe.[XBLNR] =sd.[XBLNR],
	coe.[DBBLG] =sd.[DBBLG],
	coe.[STBLG] =sd.[STBLG],
	coe.[STJAH]  =sd.[STJAH],
	coe.[BKTXT] =sd.[BKTXT],
	coe.[WAERS] =sd.[WAERS],
	coe.[KURSF]  =sd.[KURSF],
	coe.[KZWRS] =sd.[KZWRS],
	coe.[KZKRS]  =sd.[KZKRS],
	coe.[BSTAT] =sd.[BSTAT],
	coe.[XNETB] =sd.[XNETB],
	coe.[FRATH]  =sd.[FRATH],
	coe.[XRUEB] =sd.[XRUEB],
	coe.[GLVOR] =sd.[GLVOR],
	coe.[GRPID] =sd.[GRPID],
	coe.[DOKID] =sd.[DOKID],
	coe.[ARCID] =sd.[ARCID],
	coe.[IBLAR] =sd.[IBLAR],
	coe.[AWTYP] =sd.[AWTYP],
	coe.[AWKEY] =sd.[AWKEY],
	coe.[FIKRS] =sd.[FIKRS],
	coe.[HWAER] =sd.[HWAER],
	coe.[HWAE2] =sd.[HWAE2],
	coe.[HWAE3] =sd.[HWAE3],
	coe.[KURS2]  =sd.[KURS2],
	coe.[KURS3]  =sd.[KURS3],
	coe.[BASW2] =sd.[BASW2],
	coe.[BASW3] =sd.[BASW3],
	coe.[UMRD2] =sd.[UMRD2],
	coe.[UMRD3] =sd.[UMRD3],
	coe.[XSTOV] =sd.[XSTOV],
	coe.[STODT]  =sd.[STODT],
	coe.[XMWST] =sd.[XMWST],
	coe.[CURT2] =sd.[CURT2],
	coe.[CURT3] =sd.[CURT3],
	coe.[KUTY2] =sd.[KUTY2],
	coe.[KUTY3] =sd.[KUTY3],
	coe.[XSNET] =sd.[XSNET],
	coe.[AUSBK] =sd.[AUSBK],
	coe.[XUSVR] =sd.[XUSVR],
	coe.[DUEFL] =sd.[DUEFL],
	coe.[AWSYS] =sd.[AWSYS],
	--coe.[TXK-RS] =sd.[TXK-RS],
	coe.[LOTKZ] =sd.[LOTKZ],
	coe.[XWVOF] =sd.[XWVOF],
	coe.[STGRD] =sd.[STGRD],
	coe.[PPNAM] =sd.[PPNAM],
	coe.[BRNCH] =sd.[BRNCH],
	coe.[NUMPG]  =sd.[NUMPG],
	coe.[ADISC] =sd.[ADISC],
	coe.[XREF1_HD] =sd.[XREF1_HD],
	coe.[XREF2_HD] =sd.[XREF2_HD],
	coe.[XREVERSAL] =sd.[XREVERSAL],
	coe.[REINDAT]  =sd.[REINDAT],
	coe.[RLDNR] =sd.[RLDNR],
	coe.[LDGRP] =sd.[LDGRP],
	coe.[PROPMANO] =sd.[PROPMANO],
	coe.[XBLNR_ALT] =sd.[XBLNR_ALT],
	coe.[VATDATE]  =sd.[VATDATE],
	coe.[PSOTY] =sd.[PSOTY],
	coe.[PSOAK] =sd.[PSOAK],
	coe.[PSOKS] =sd.[PSOKS],
	coe.[PSOSG] =sd.[PSOSG],
	coe.[PSOFN] =sd.[PSOFN],
	coe.[INTFORM] =sd.[INTFORM],
	coe.[INTDATE]  =sd.[INTDATE],
	coe.[PSOBT]  =sd.[PSOBT],
	coe.[PSOZL] =sd.[PSOZL],
	coe.[PSODT]  =sd.[PSODT],
	coe.[PSOTM]  =sd.[PSOTM],
	coe.[FM_UMART] =sd.[FM_UMART],
	coe.[CCINS] =sd.[CCINS],
	coe.[CCNUM] =sd.[CCNUM],
	coe.[SSBLK] =sd.[SSBLK],
	coe.[BATCH] =sd.[BATCH],
	coe.[SNAME] =sd.[SNAME],
	coe.[SAMPLED] =sd.[SAMPLED],
	coe.[EXCLUDE_FLAG] =sd.[EXCLUDE_FLAG],
	coe.[BLIND] =sd.[BLIND],
	coe.[OFFSET_STATUS] =sd.[OFFSET_STATUS],
	coe.[OFFSET_REFER_DAT]  =sd.[OFFSET_REFER_DAT],
	coe.[PENRC] =sd.[PENRC],
	coe.[KNUMV]=sd.[KNUMV],
	coe.[DW_Mod_Ts]=GETDATE(),
	coe.[DW_Mod_Usr]=user_name()
WHEN NOT MATCHED
	THEN
		
	-- inserting the data ----
	INSERT  (
	[MANDT], 
	[BUKRS],  
	[BELNR],  
	[GJAHR],  
	[BLART], 
	[BLDAT],  
	[BUDAT],  
	[MONAT],  
	[CPUDT],  
	[CPUTM],  
	[AEDAT],  
	[UPDDT],  
	[WWERT],  
	[USNAM], 
	[TCODE], 
	[BVORG], 
	[XBLNR], 
	[DBBLG], 
	[STBLG], 
	[STJAH],  
	[BKTXT], 
	[WAERS], 
	[KURSF],  
	[KZWRS], 
	[KZKRS],  
	[BSTAT], 
	[XNETB], 
	[FRATH],  
	[XRUEB], 
	[GLVOR], 
	[GRPID], 
	[DOKID], 
	[ARCID], 
	[IBLAR], 
	[AWTYP], 
	[AWKEY], 
	[FIKRS], 
	[HWAER], 
	[HWAE2], 
	[HWAE3], 
	[KURS2],  
	[KURS3],  
	[BASW2], 
	[BASW3], 
	[UMRD2], 
	[UMRD3], 
	[XSTOV], 
	[STODT],  
	[XMWST], 
	[CURT2], 
	[CURT3], 
	[KUTY2], 
	[KUTY3], 
	[XSNET], 
	[AUSBK], 
	[XUSVR], 
	[DUEFL], 
	[AWSYS], 
	--[TXK-RS],  
	[LOTKZ], 
	[XWVOF], 
	[STGRD], 
	[PPNAM], 
	[BRNCH], 
	[NUMPG],  
	[ADISC], 
	[XREF1_HD], 
	[XREF2_HD], 
	[XREVERSAL], 
	[REINDAT],  
	[RLDNR], 
	[LDGRP], 
	[PROPMANO], 
	[XBLNR_ALT], 
	[VATDATE],  
	[PSOTY], 
	[PSOAK], 
	[PSOKS], 
	[PSOSG], 
	[PSOFN], 
	[INTFORM], 
	[INTDATE],  
	[PSOBT],  
	[PSOZL], 
	[PSODT],  
	[PSOTM],  
	[FM_UMART], 
	[CCINS], 
	[CCNUM], 
	[SSBLK], 
	[BATCH], 
	[SNAME], 
	[SAMPLED], 
	[EXCLUDE_FLAG], 
	[BLIND], 
	[OFFSET_STATUS], 
	[OFFSET_REFER_DAT],  
	[PENRC], 
	[KNUMV],
	DW_Cre_Ts,
	DW_Cre_Usr
			)
	values(
	sd.[MANDT], 
	sd.[BUKRS],  
	sd.[BELNR],  
	sd.[GJAHR],  
	sd.[BLART], 
	sd.[BLDAT],  
	sd.[BUDAT],  
	sd.[MONAT],  
	sd.[CPUDT],  
	sd.[CPUTM],  
	sd.[AEDAT],  
	sd.[UPDDT],  
	sd.[WWERT],  
	sd.[USNAM], 
	sd.[TCODE], 
	sd.[BVORG], 
	sd.[XBLNR], 
	sd.[DBBLG], 
	sd.[STBLG], 
	sd.[STJAH],  
	sd.[BKTXT], 
	sd.[WAERS], 
	sd.[KURSF],  
	sd.[KZWRS], 
	sd.[KZKRS],  
	sd.[BSTAT], 
	sd.[XNETB], 
	sd.[FRATH],  
	sd.[XRUEB], 
	sd.[GLVOR], 
	sd.[GRPID], 
	sd.[DOKID], 
	sd.[ARCID], 
	sd.[IBLAR], 
	sd.[AWTYP], 
	sd.[AWKEY], 
	sd.[FIKRS], 
	sd.[HWAER], 
	sd.[HWAE2], 
	sd.[HWAE3], 
	sd.[KURS2],  
	sd.[KURS3],  
	sd.[BASW2], 
	sd.[BASW3], 
	sd.[UMRD2], 
	sd.[UMRD3], 
	sd.[XSTOV], 
	sd.[STODT],  
	sd.[XMWST], 
	sd.[CURT2], 
	sd.[CURT3], 
	sd.[KUTY2], 
	sd.[KUTY3], 
	sd.[XSNET], 
	sd.[AUSBK], 
	sd.[XUSVR], 
	sd.[DUEFL], 
	sd.[AWSYS], 
	--sd.[TXK-RS],  
	sd.[LOTKZ], 
	sd.[XWVOF], 
	sd.[STGRD], 
	sd.[PPNAM], 
	sd.[BRNCH], 
	sd.[NUMPG],  
	sd.[ADISC], 
	sd.[XREF1_HD], 
	sd.[XREF2_HD], 
	sd.[XREVERSAL], 
	sd.[REINDAT],  
	sd.[RLDNR], 
	sd.[LDGRP], 
	sd.[PROPMANO], 
	sd.[XBLNR_ALT], 
	sd.[VATDATE],  
	sd.[PSOTY], 
	sd.[PSOAK], 
	sd.[PSOKS], 
	sd.[PSOSG], 
	sd.[PSOFN], 
	sd.[INTFORM], 
	sd.[INTDATE],  
	sd.[PSOBT],  
	sd.[PSOZL], 
	sd.[PSODT],  
	sd.[PSOTM],  
	sd.[FM_UMART], 
	sd.[CCINS], 
	sd.[CCNUM], 
	sd.[SSBLK], 
	sd.[BATCH], 
	sd.[SNAME], 
	sd.[SAMPLED], 
	sd.[EXCLUDE_FLAG], 
	sd.[BLIND], 
	sd.[OFFSET_STATUS], 
	sd.[OFFSET_REFER_DAT],  
	sd.[PENRC], 
	sd.[KNUMV],
	getdate(),
	user_name()
	)
	OUTPUT $action INTO @tableVar;
	  --select @Rows_Insrt=InsertedID from @tableVar
	  --select @Rows_Updt=UpdatedID from @tableVar
	 -- print @Rows_Insrt
	 -- print @Rows_Updt
				--select * from @tableVar

				sELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
		--SUM(Deleted) as Deleted
FROM  (
   -- Count the number of inserts
   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   -- Count the number of updates   <=== GIVING UPDATES AND DELETES
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'
  
   ) as CountTable;

 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_BKPF_SP',  @Rows_Insrt, @Rows_Updt, null,null, 'Y';

 ---EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_BKPF_SP',  @Rows_Insrt, @Rows_Updt, null,null, 'Y';
				
END
	END TRY

BEGIN CATCH
	END CATCH
	
END











GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_CAUFV]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[USP_DQ_LOAD_CAUFV]
AS

Set nocount on
BEGIN
	BEGIN TRY
		BEGIN
		
		MERGE KLA_ECC.dbo.CAUFV AS coe
USING (
	SELECT *
	FROM STG.STG_CAUFV with(nolock)
	) AS sd
	ON coe.[MANDT] = sd.[MANDT]
	AND coe.[AUFNR] = sd.[AUFNR]
	
WHEN MATCHED
	THEN
		UPDATE
		SET 	coe.[MANDT] = sd.[MANDT],
      coe.[AUFNR] = sd.[AUFNR],
      coe.[AUART] = sd.[AUART],
      coe.[AUTYP] = sd.[AUTYP],
      coe.[REFNR] = sd.[REFNR],
      coe.[ERNAM] = sd.[ERNAM],
      coe.[ERDAT] = sd.[ERDAT],
      coe.[AENAM] = sd.[AENAM],
      coe.[AEDAT] = sd.[AEDAT],
      coe.[KTEXT] = sd.[KTEXT],
      coe.[LTEXT] = sd.[LTEXT],
      coe.[BUKRS] = sd.[BUKRS],
      coe.[WERKS] = sd.[WERKS],
      coe.[GSBER] = sd.[GSBER],
      coe.[KOKRS] = sd.[KOKRS],
      coe.[CCKEY] = sd.[CCKEY],
      coe.[KOSTV] = sd.[KOSTV],
      coe.[STORT] = sd.[STORT],
      coe.[SOWRK] = sd.[SOWRK],
      coe.[ASTKZ] = sd.[ASTKZ],
      coe.[WAERS] = sd.[WAERS],
      coe.[STDAT] = sd.[STDAT],
      coe.[IDAT1] = sd.[IDAT1],
      coe.[IDAT2] = sd.[IDAT2],
      coe.[IDAT3] = sd.[IDAT3],
      coe.[OBJID] = sd.[OBJID],
      coe.[LOEKZ] = sd.[LOEKZ],
      coe.[PLGKZ] = sd.[PLGKZ],
      coe.[KVEWE] = sd.[KVEWE],
      coe.[KAPPL] = sd.[KAPPL],
      coe.[KALSM] = sd.[KALSM],
      coe.[ZSCHL] = sd.[ZSCHL],
      coe.[ABKRS] = sd.[ABKRS],
      coe.[KSTAR] = sd.[KSTAR],
      coe.[KOSTL] = sd.[KOSTL],
      coe.[SETNM] = sd.[SETNM],
      coe.[CYCLE] = sd.[CYCLE],
      coe.[SDATE] = sd.[SDATE],
      coe.[SEQNR] = sd.[SEQNR],
      coe.[USER4] = sd.[USER4],
      coe.[OBJNR] = sd.[OBJNR],
      coe.[PRCTR] = sd.[PRCTR],
      coe.[PSPEL] = sd.[PSPEL],
      coe.[AWSLS] = sd.[AWSLS],
      coe.[ABGSL] = sd.[ABGSL],
      coe.[TXJCD] = sd.[TXJCD],
      coe.[FUNC_AREA] = sd.[FUNC_AREA],
      coe.[SCOPE] = sd.[SCOPE],
      coe.[PLINT] = sd.[PLINT],
      coe.[KDAUF] = sd.[KDAUF],
      coe.[KDPOS] = sd.[KDPOS],
      coe.[AUFEX] = sd.[AUFEX],
      coe.[IVPRO] = sd.[IVPRO],
      coe.[LOGSYSTEM] = sd.[LOGSYSTEM],
      coe.[FLG_MLTPS] = sd.[FLG_MLTPS],
      coe.[ABUKR] = sd.[ABUKR],
      coe.[AKSTL] = sd.[AKSTL],
      coe.[SIZECL] = sd.[SIZECL],
      coe.[IZWEK] = sd.[IZWEK],
      coe.[UMWKZ] = sd.[UMWKZ],
      coe.[KSTEMPF] = sd.[KSTEMPF],
      coe.[ZSCHM] = sd.[ZSCHM],
      coe.[PKOSA] = sd.[PKOSA],
      coe.[ANFAUFNR] = sd.[ANFAUFNR],
      coe.[PROCNR] = sd.[PROCNR],
      coe.[PROTY] = sd.[PROTY],
      coe.[RSORD] = sd.[RSORD],
      coe.[BEMOT] = sd.[BEMOT],
      coe.[ADRNRA] = sd.[ADRNRA],
      coe.[ERFZEIT] = sd.[ERFZEIT],
      coe.[AEZEIT] = sd.[AEZEIT],
      coe.[CSTG_VRNT] = sd.[CSTG_VRNT],
      coe.[COSTESTNR] = sd.[COSTESTNR],
      coe.[VERAA_USER] = sd.[VERAA_USER],
      coe.[VNAME] = sd.[VNAME],
      coe.[RECID] = sd.[RECID],
      coe.[ETYPE] = sd.[ETYPE],
      coe.[OTYPE] = sd.[OTYPE],
      coe.[JV_JIBCL] = sd.[JV_JIBCL],
      coe.[JV_JIBSA] = sd.[JV_JIBSA],
      coe.[JV_OCO] = sd.[JV_OCO],
      coe.[VAPLZ] = sd.[VAPLZ],
      coe.[WAWRK] = sd.[WAWRK],
      coe.[FERC_IND] = sd.[FERC_IND],
      coe.[GLTRP] = sd.[GLTRP],
      coe.[GSTRP] = sd.[GSTRP],
      coe.[FTRMS] = sd.[FTRMS],
      coe.[GLTRS] = sd.[GLTRS],
      coe.[GSTRS] = sd.[GSTRS],
      coe.[GSTRI] = sd.[GSTRI],
      coe.[GETRI] = sd.[GETRI],
      coe.[GLTRI] = sd.[GLTRI],
      coe.[FTRMI] = sd.[FTRMI],
      coe.[FTRMP] = sd.[FTRMP],
      coe.[RSNUM] = sd.[RSNUM],
      coe.[GASMG] = sd.[GASMG],
      coe.[GAMNG] = sd.[GAMNG],
      coe.[GMEIN] = sd.[GMEIN],
      coe.[PLNBEZ] = sd.[PLNBEZ],
      coe.[PLNTY] = sd.[PLNTY],
      coe.[PLNNR] = sd.[PLNNR],
      coe.[PLNAW] = sd.[PLNAW],
      coe.[PLNAL] = sd.[PLNAL],
      coe.[PVERW] = sd.[PVERW],
      coe.[PLAUF] = sd.[PLAUF],
      coe.[PLSVB] = sd.[PLSVB],
      coe.[PLNME] = sd.[PLNME],
      coe.[PLSVN] = sd.[PLSVN],
      coe.[PDATV] = sd.[PDATV],
      coe.[PAENR] = sd.[PAENR],
      coe.[PLGRP] = sd.[PLGRP],
      coe.[LODIV] = sd.[LODIV],
      coe.[STLTY] = sd.[STLTY],
      coe.[STLBEZ] = sd.[STLBEZ],
      coe.[STLST] = sd.[STLST],
      coe.[STLNR] = sd.[STLNR],
      coe.[SDATV] = sd.[SDATV],
      coe.[SBMNG] = sd.[SBMNG],
      coe.[SBMEH] = sd.[SBMEH],
      coe.[SAENR] = sd.[SAENR],
      coe.[STLAL] = sd.[STLAL],
      coe.[STLAN] = sd.[STLAN],
      coe.[SLSVN] = sd.[SLSVN],
      coe.[SLSBS] = sd.[SLSBS],
      coe.[AUFLD] = sd.[AUFLD],
      coe.[DISPO] = sd.[DISPO],
      coe.[AUFPL] = sd.[AUFPL],
      coe.[FEVOR] = sd.[FEVOR],
      coe.[FHORI] = sd.[FHORI],
      coe.[TERKZ] = sd.[TERKZ],
      coe.[REDKZ] = sd.[REDKZ],
      coe.[APRIO] = sd.[APRIO],
      coe.[NTZUE] = sd.[NTZUE],
      coe.[VORUE] = sd.[VORUE],
      coe.[PROFID] = sd.[PROFID],
      coe.[VORGZ] = sd.[VORGZ],
      coe.[SICHZ] = sd.[SICHZ],
      coe.[FREIZ] = sd.[FREIZ],
      coe.[UPTER] = sd.[UPTER],
      coe.[BEDID] = sd.[BEDID],
      coe.[PRONR] = sd.[PRONR],
      coe.[ZAEHL] = sd.[ZAEHL],
      coe.[MZAEHL] = sd.[MZAEHL],
      coe.[ZKRIZ] = sd.[ZKRIZ],
      coe.[PRUEFLOS] = sd.[PRUEFLOS],
      coe.[KLVARP] = sd.[KLVARP],
      coe.[KLVARI] = sd.[KLVARI],
      coe.[RGEKZ] = sd.[RGEKZ],
      coe.[PLART] = sd.[PLART],
      coe.[FLG_AOB] = sd.[FLG_AOB],
      coe.[FLG_ARBEI] = sd.[FLG_ARBEI],
      coe.[GLTPP] = sd.[GLTPP],
      coe.[GSTPP] = sd.[GSTPP],
      coe.[GLTPS] = sd.[GLTPS],
      coe.[GSTPS] = sd.[GSTPS],
      coe.[FTRPS] = sd.[FTRPS],
      coe.[RDKZP] = sd.[RDKZP],
      coe.[TRKZP] = sd.[TRKZP],
      coe.[RUECK] = sd.[RUECK],
      coe.[RMZHL] = sd.[RMZHL],
      coe.[IGMNG] = sd.[IGMNG],
      coe.[RATID] = sd.[RATID],
      coe.[GROID] = sd.[GROID],
      coe.[CUOBJ] = sd.[CUOBJ],
      coe.[GLUZS] = sd.[GLUZS],
      coe.[GSUZS] = sd.[GSUZS],
      coe.[REVLV] = sd.[REVLV],
      coe.[RSHTY] = sd.[RSHTY],
      coe.[RSHID] = sd.[RSHID],
      coe.[RSNTY] = sd.[RSNTY],
      coe.[RSNID] = sd.[RSNID],
      coe.[NAUTERM]  = sd.[NAUTERM],
      coe.[NAUCOST] = sd.[NAUCOST],
      coe.[STUFE] = sd.[STUFE],
      coe.[WEGXX] = sd.[WEGXX],
      coe.[VWEGX] = sd.[VWEGX],
      coe.[ARSNR] = sd.[ARSNR],
      coe.[ARSPS] = sd.[ARSPS],
      coe.[MAUFNR] = sd.[MAUFNR],
      coe.[LKNOT] = sd.[LKNOT],
      coe.[RKNOT] = sd.[RKNOT],
      coe.[PRODNET] = sd.[PRODNET],
      coe.[IASMG] = sd.[IASMG],
      coe.[ABARB] = sd.[ABARB],
      coe.[AUFNT] = sd.[AUFNT],
      coe.[AUFPT] = sd.[AUFPT],
      coe.[APLZT] = sd.[APLZT],
      coe.[NO_DISP] = sd.[NO_DISP],
      coe.[CSPLIT] = sd.[CSPLIT],
      coe.[AENNR] = sd.[AENNR],
      coe.[CY_SEQNR] = sd.[CY_SEQNR],
      coe.[BREAKS] = sd.[BREAKS],
      coe.[VORGZ_TRM] = sd.[VORGZ_TRM],
      coe.[SICHZ_TRM] = sd.[SICHZ_TRM],
      coe.[TRMDT] = sd.[TRMDT],
      coe.[GLUZP] = sd.[GLUZP],
      coe.[GSUZP] = sd.[GSUZP],
      coe.[GSUZI] = sd.[GSUZI],
      coe.[GEUZI] = sd.[GEUZI],
      coe.[GLUPP] = sd.[GLUPP],
      coe.[GSUPP] = sd.[GSUPP],
      coe.[GLUPS] = sd.[GLUPS],
      coe.[GSUPS] = sd.[GSUPS],
      coe.[CHSCH] = sd.[CHSCH],
      coe.[KAPT_VORGZ] = sd.[KAPT_VORGZ],
      coe.[KAPT_SICHZ] = sd.[KAPT_SICHZ],
      coe.[LEAD_AUFNR] = sd.[LEAD_AUFNR],
      coe.[PNETSTARTD] = sd.[PNETSTARTD],
      coe.[PNETSTARTT] = sd.[PNETSTARTT],
      coe.[PNETENDD] = sd.[PNETENDD],
      coe.[PNETENDT] = sd.[PNETENDT],
      coe.[KBED] = sd.[KBED],
      coe.[KKALKR] = sd.[KKALKR],
      coe.[SFCPF] = sd.[SFCPF],
      coe.[RMNGA] = sd.[RMNGA],
      coe.[GSBTR] = sd.[GSBTR],
      coe.[VFMNG] = sd.[VFMNG],
      coe.[NOPCOST] = sd.[NOPCOST],
      coe.[NETZKONT] = sd.[NETZKONT],
      coe.[ATRKZ] = sd.[ATRKZ],
      coe.[OBJTYPE] = sd.[OBJTYPE],
      coe.[CH_PROC] = sd.[CH_PROC],
      coe.[KAPVERSA] = sd.[KAPVERSA],
      coe.[COLORDPROC] = sd.[COLORDPROC],
      coe.[KZERB] = sd.[KZERB],
      coe.[CONF_KEY] = sd.[CONF_KEY],
      coe.[ST_ARBID] = sd.[ST_ARBID],
      coe.[VSNMR_V] = sd.[VSNMR_V],
      coe.[TERHW] = sd.[TERHW],
      coe.[SPLSTAT] = sd.[SPLSTAT],
      coe.[COSTUPD] = sd.[COSTUPD],
      coe.[ADPSP] = sd.[ADPSP],
      coe.[RMANR] = sd.[RMANR],
      coe.[POSNR_RMA] = sd.[POSNR_RMA],
      coe.[POSNV_RMA] = sd.[POSNV_RMA]
		
WHEN NOT MATCHED
	THEN
		
	-- Inserting the data ----
	INSERT ( 
	  [MANDT]
      ,[AUFNR]
      ,[AUART]
      ,[AUTYP]
      ,[REFNR]
      ,[ERNAM]
      ,[ERDAT]
      ,[AENAM]
      ,[AEDAT]
      ,[KTEXT]
      ,[LTEXT]
      ,[BUKRS]
      ,[WERKS]
      ,[GSBER]
      ,[KOKRS]
      ,[CCKEY]
      ,[KOSTV]
      ,[STORT]
      ,[SOWRK]
      ,[ASTKZ]
      ,[WAERS]
      ,[STDAT]
      ,[IDAT1]
      ,[IDAT2]
      ,[IDAT3]
      ,[OBJID]
      ,[LOEKZ]
      ,[PLGKZ]
      ,[KVEWE]
      ,[KAPPL]
      ,[KALSM]
      ,[ZSCHL]
      ,[ABKRS]
      ,[KSTAR]
      ,[KOSTL]
      ,[SETNM]
      ,[CYCLE]
      ,[SDATE]
      ,[SEQNR]
      ,[USER4]
      ,[OBJNR]
      ,[PRCTR]
      ,[PSPEL]
      ,[AWSLS]
      ,[ABGSL]
      ,[TXJCD]
      ,[FUNC_AREA]
      ,[SCOPE]
      ,[PLINT]
      ,[KDAUF]
      ,[KDPOS]
      ,[AUFEX]
      ,[IVPRO]
      ,[LOGSYSTEM]
      ,[FLG_MLTPS]
      ,[ABUKR]
      ,[AKSTL]
      ,[SIZECL]
      ,[IZWEK]
      ,[UMWKZ]
      ,[KSTEMPF]
      ,[ZSCHM]
      ,[PKOSA]
      ,[ANFAUFNR]
      ,[PROCNR]
      ,[PROTY]
      ,[RSORD]
      ,[BEMOT]
      ,[ADRNRA]
      ,[ERFZEIT]
      ,[AEZEIT]
      ,[CSTG_VRNT]
      ,[COSTESTNR]
      ,[VERAA_USER]
      ,[VNAME]
      ,[RECID]
      ,[ETYPE]
      ,[OTYPE]
      ,[JV_JIBCL]
      ,[JV_JIBSA]
      ,[JV_OCO]
      ,[VAPLZ]
      ,[WAWRK]
      ,[FERC_IND]
      ,[GLTRP]
      ,[GSTRP]
      ,[FTRMS]
      ,[GLTRS]
      ,[GSTRS]
      ,[GSTRI]
      ,[GETRI]
      ,[GLTRI]
      ,[FTRMI]
      ,[FTRMP]
      ,[RSNUM]
      ,[GASMG]
      ,[GAMNG]
      ,[GMEIN]
      ,[PLNBEZ]
      ,[PLNTY]
      ,[PLNNR]
      ,[PLNAW]
      ,[PLNAL]
      ,[PVERW]
      ,[PLAUF]
      ,[PLSVB]
      ,[PLNME]
      ,[PLSVN]
      ,[PDATV]
      ,[PAENR]
      ,[PLGRP]
      ,[LODIV]
      ,[STLTY]
      ,[STLBEZ]
      ,[STLST]
      ,[STLNR]
      ,[SDATV]
      ,[SBMNG]
      ,[SBMEH]
      ,[SAENR]
      ,[STLAL]
      ,[STLAN]
      ,[SLSVN]
      ,[SLSBS]
      ,[AUFLD]
      ,[DISPO]
      ,[AUFPL]
      ,[FEVOR]
      ,[FHORI]
      ,[TERKZ]
      ,[REDKZ]
      ,[APRIO]
      ,[NTZUE]
      ,[VORUE]
      ,[PROFID]
      ,[VORGZ]
      ,[SICHZ]
      ,[FREIZ]
      ,[UPTER]
      ,[BEDID]
      ,[PRONR]
      ,[ZAEHL]
      ,[MZAEHL]
      ,[ZKRIZ]
      ,[PRUEFLOS]
      ,[KLVARP]
      ,[KLVARI]
      ,[RGEKZ]
      ,[PLART]
      ,[FLG_AOB]
      ,[FLG_ARBEI]
      ,[GLTPP]
      ,[GSTPP]
      ,[GLTPS]
      ,[GSTPS]
      ,[FTRPS]
      ,[RDKZP]
      ,[TRKZP]
      ,[RUECK]
      ,[RMZHL]
      ,[IGMNG]
      ,[RATID]
      ,[GROID]
      ,[CUOBJ]
      ,[GLUZS]
      ,[GSUZS]
      ,[REVLV]
      ,[RSHTY]
      ,[RSHID]
      ,[RSNTY]
      ,[RSNID]
      ,[NAUTERM]
      ,[NAUCOST]
      ,[STUFE]
      ,[WEGXX]
      ,[VWEGX]
      ,[ARSNR]
      ,[ARSPS]
      ,[MAUFNR]
      ,[LKNOT]
      ,[RKNOT]
      ,[PRODNET]
      ,[IASMG]
      ,[ABARB]
      ,[AUFNT]
      ,[AUFPT]
      ,[APLZT]
      ,[NO_DISP]
      ,[CSPLIT]
      ,[AENNR]
      ,[CY_SEQNR]
      ,[BREAKS]
      ,[VORGZ_TRM]
      ,[SICHZ_TRM]
      ,[TRMDT]
      ,[GLUZP]
      ,[GSUZP]
      ,[GSUZI]
      ,[GEUZI]
      ,[GLUPP]
      ,[GSUPP]
      ,[GLUPS]
      ,[GSUPS]
      ,[CHSCH]
      ,[KAPT_VORGZ]
      ,[KAPT_SICHZ]
      ,[LEAD_AUFNR]
      ,[PNETSTARTD]
      ,[PNETSTARTT]
      ,[PNETENDD]
      ,[PNETENDT]
      ,[KBED]
      ,[KKALKR]
      ,[SFCPF]
      ,[RMNGA]
      ,[GSBTR]
      ,[VFMNG]
      ,[NOPCOST]
      ,[NETZKONT]
      ,[ATRKZ]
      ,[OBJTYPE]
      ,[CH_PROC]
      ,[KAPVERSA]
      ,[COLORDPROC]
      ,[KZERB]
      ,[CONF_KEY]
      ,[ST_ARBID]
      ,[VSNMR_V]
      ,[TERHW]
      ,[SPLSTAT]
      ,[COSTUPD]
      ,[ADPSP]
      ,[RMANR]
      ,[POSNR_RMA]
      ,[POSNV_RMA]
	  )
	  values(
	 sd.[MANDT]
      ,sd.[AUFNR]
      ,sd.[AUART]
      ,sd.[AUTYP]
      ,sd.[REFNR]
      ,sd.[ERNAM]
      ,sd.[ERDAT]
      ,sd.[AENAM]
      ,sd.[AEDAT]
      ,sd.[KTEXT]
      ,sd.[LTEXT]
      ,sd.[BUKRS]
      ,sd.[WERKS]
      ,sd.[GSBER]
      ,sd.[KOKRS]
      ,sd.[CCKEY]
      ,sd.[KOSTV]
      ,sd.[STORT]
      ,sd.[SOWRK]
      ,sd.[ASTKZ]
      ,sd.[WAERS]
      ,sd.[STDAT]
      ,sd.[IDAT1]
      ,sd.[IDAT2]
      ,sd.[IDAT3]
      ,sd.[OBJID]
      ,sd.[LOEKZ]
      ,sd.[PLGKZ]
      ,sd.[KVEWE]
      ,sd.[KAPPL]
      ,sd.[KALSM]
      ,sd.[ZSCHL]
      ,sd.[ABKRS]
      ,sd.[KSTAR]
      ,sd.[KOSTL]
      ,sd.[SETNM]
      ,sd.[CYCLE]
      ,sd.[SDATE]
      ,sd.[SEQNR]
      ,sd.[USER4]
      ,sd.[OBJNR]
      ,sd.[PRCTR]
      ,sd.[PSPEL]
      ,sd.[AWSLS]
      ,sd.[ABGSL]
      ,sd.[TXJCD]
      ,sd.[FUNC_AREA]
      ,sd.[SCOPE]
      ,sd.[PLINT]
      ,sd.[KDAUF]
      ,sd.[KDPOS]
      ,sd.[AUFEX]
      ,sd.[IVPRO]
      ,sd.[LOGSYSTEM]
      ,sd.[FLG_MLTPS]
      ,sd.[ABUKR]
      ,sd.[AKSTL]
      ,sd.[SIZECL]
      ,sd.[IZWEK]
      ,sd.[UMWKZ]
      ,sd.[KSTEMPF]
      ,sd.[ZSCHM]
      ,sd.[PKOSA]
      ,sd.[ANFAUFNR]
      ,sd.[PROCNR]
      ,sd.[PROTY]
      ,sd.[RSORD]
      ,sd.[BEMOT]
      ,sd.[ADRNRA]
      ,sd.[ERFZEIT]
      ,sd.[AEZEIT]
      ,sd.[CSTG_VRNT]
      ,sd.[COSTESTNR]
      ,sd.[VERAA_USER]
      ,sd.[VNAME]
      ,sd.[RECID]
      ,sd.[ETYPE]
      ,sd.[OTYPE]
      ,sd.[JV_JIBCL]
      ,sd.[JV_JIBSA]
      ,sd.[JV_OCO]
      ,sd.[VAPLZ]
      ,sd.[WAWRK]
      ,sd.[FERC_IND]
      ,sd.[GLTRP]
      ,sd.[GSTRP]
      ,sd.[FTRMS]
      ,sd.[GLTRS]
      ,sd.[GSTRS]
      ,sd.[GSTRI]
      ,sd.[GETRI]
      ,sd.[GLTRI]
      ,sd.[FTRMI]
      ,sd.[FTRMP]
      ,sd.[RSNUM]
      ,sd.[GASMG]
      ,sd.[GAMNG]
      ,sd.[GMEIN]
      ,sd.[PLNBEZ]
      ,sd.[PLNTY]
      ,sd.[PLNNR]
      ,sd.[PLNAW]
      ,sd.[PLNAL]
      ,sd.[PVERW]
      ,sd.[PLAUF]
      ,sd.[PLSVB]
      ,sd.[PLNME]
      ,sd.[PLSVN]
      ,sd.[PDATV]
      ,sd.[PAENR]
      ,sd.[PLGRP]
      ,sd.[LODIV]
      ,sd.[STLTY]
      ,sd.[STLBEZ]
      ,sd.[STLST]
      ,sd.[STLNR]
      ,sd.[SDATV]
      ,sd.[SBMNG]
      ,sd.[SBMEH]
      ,sd.[SAENR]
      ,sd.[STLAL]
      ,sd.[STLAN]
      ,sd.[SLSVN]
      ,sd.[SLSBS]
      ,sd.[AUFLD]
      ,sd.[DISPO]
      ,sd.[AUFPL]
      ,sd.[FEVOR]
      ,sd.[FHORI]
      ,sd.[TERKZ]
      ,sd.[REDKZ]
      ,sd.[APRIO]
      ,sd.[NTZUE]
      ,sd.[VORUE]
      ,sd.[PROFID]
      ,sd.[VORGZ]
      ,sd.[SICHZ]
      ,sd.[FREIZ]
      ,sd.[UPTER]
      ,sd.[BEDID]
      ,sd.[PRONR]
      ,sd.[ZAEHL]
      ,sd.[MZAEHL]
      ,sd.[ZKRIZ]
      ,sd.[PRUEFLOS]
      ,sd.[KLVARP]
      ,sd.[KLVARI]
      ,sd.[RGEKZ]
      ,sd.[PLART]
      ,sd.[FLG_AOB]
      ,sd.[FLG_ARBEI]
      ,sd.[GLTPP]
      ,sd.[GSTPP]
      ,sd.[GLTPS]
      ,sd.[GSTPS]
      ,sd.[FTRPS]
      ,sd.[RDKZP]
      ,sd.[TRKZP]
      ,sd.[RUECK]
      ,sd.[RMZHL]
      ,sd.[IGMNG]
      ,sd.[RATID]
      ,sd.[GROID]
      ,sd.[CUOBJ]
      ,sd.[GLUZS]
      ,sd.[GSUZS]
      ,sd.[REVLV]
      ,sd.[RSHTY]
      ,sd.[RSHID]
      ,sd.[RSNTY]
      ,sd.[RSNID]
      ,sd.[NAUTERM]
      ,sd.[NAUCOST]
      ,sd.[STUFE]
      ,sd.[WEGXX]
      ,sd.[VWEGX]
      ,sd.[ARSNR]
      ,sd.[ARSPS]
      ,sd.[MAUFNR]
      ,sd.[LKNOT]
      ,sd.[RKNOT]
      ,sd.[PRODNET]
      ,sd.[IASMG]
      ,sd.[ABARB]
      ,sd.[AUFNT]
      ,sd.[AUFPT]
      ,sd.[APLZT]
      ,sd.[NO_DISP]
      ,sd.[CSPLIT]
      ,sd.[AENNR]
      ,sd.[CY_SEQNR]
      ,sd.[BREAKS]
      ,sd.[VORGZ_TRM]
      ,sd.[SICHZ_TRM]
      ,sd.[TRMDT]
      ,sd.[GLUZP]
      ,sd.[GSUZP]
      ,sd.[GSUZI]
      ,sd.[GEUZI]
      ,sd.[GLUPP]
      ,sd.[GSUPP]
      ,sd.[GLUPS]
      ,sd.[GSUPS]
      ,sd.[CHSCH]
      ,sd.[KAPT_VORGZ]
      ,sd.[KAPT_SICHZ]
      ,sd.[LEAD_AUFNR]
      ,sd.[PNETSTARTD]
      ,sd.[PNETSTARTT]
      ,sd.[PNETENDD]
      ,sd.[PNETENDT]
      ,sd.[KBED]
      ,sd.[KKALKR]
      ,sd.[SFCPF]
      ,sd.[RMNGA]
      ,sd.[GSBTR]
      ,sd.[VFMNG]
      ,sd.[NOPCOST]
      ,sd.[NETZKONT]
      ,sd.[ATRKZ]
      ,sd.[OBJTYPE]
      ,sd.[CH_PROC]
      ,sd.[KAPVERSA]
      ,sd.[COLORDPROC]
      ,sd.[KZERB]
      ,sd.[CONF_KEY]
      ,sd.[ST_ARBID]
      ,sd.[VSNMR_V]
      ,sd.[TERHW]
      ,sd.[SPLSTAT]
      ,sd.[COSTUPD]
      ,sd.[ADPSP]
      ,sd.[RMANR]
      ,sd.[POSNR_RMA]
      ,sd.[POSNV_RMA]
	  );
				
		END
	END TRY

BEGIN CATCH
	END CATCH
	


Set nocount off

END









GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_CKIS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[USP_DQ_LOAD_CKIS]
AS
SET NOCOUNT ON
BEGIN
	BEGIN TRY
		BEGIN
		
		MERGE KLA_ECC.dbo.CKIS AS coe
USING (
	SELECT *
	FROM STG.STG_CKIS WITH(NOLOCK)
	) AS sd
	ON coe.[MANDT] = sd.[MANDT]
	AND coe.[LEDNR] = sd.[LEDNR]
	AND coe.[BZOBJ] = sd.[BZOBJ]
	AND coe.[KALNR] = sd.[KALNR]
	AND coe.[KALKA] = sd.[KALKA]
	AND coe.[KADKY] = sd.[KADKY]
	AND coe.[TVERS] = sd.[TVERS]
	AND coe.[BWVAR] = sd.[BWVAR]
	AND coe.[KKZMA] = sd.[KKZMA]
	AND coe.[POSNR] = sd.[POSNR]
	
WHEN MATCHED
	THEN
		UPDATE
		SET coe.[MANDT] = sd.[MANDT],
      coe.[LEDNR] = sd.[LEDNR],
      coe.[BZOBJ] = sd.[BZOBJ],
      coe.[KALNR] = sd.[KALNR],
      coe.[KALKA] = sd.[KALKA],
      coe.[KADKY] = sd.[KADKY],
      coe.[TVERS] = sd.[TVERS],
      coe.[BWVAR] = sd.[BWVAR],
      coe.[KKZMA] = sd.[KKZMA],
      coe.[POSNR] = sd.[POSNR],
      coe.[STATP] = sd.[STATP],
      coe.[STRGP] = sd.[STRGP],
      coe.[TYPPS] = sd.[TYPPS],
      coe.[KSTAR] = sd.[KSTAR],
      coe.[KSTAR_MANUAL] = sd.[KSTAR_MANUAL],
      coe.[HRKFT] = sd.[HRKFT],
      coe.[ELEMT] = sd.[ELEMT],
      coe.[ELEMTNS] = sd.[ELEMTNS],
      coe.[FVFLG] = sd.[FVFLG],
      coe.[OPCOD] = sd.[OPCOD],
      coe.[FRLNR] = sd.[FRLNR],
      coe.[BUKRS] = sd.[BUKRS],
      coe.[WERKS] = sd.[WERKS],
      coe.[MATNR] = sd.[MATNR],
      coe.[PSCHL] = sd.[PSCHL],
      coe.[KOKRS_HRK] = sd.[KOKRS_HRK],
      coe.[EXTNR] = sd.[EXTNR],
      coe.[GPREIS] = sd.[GPREIS],
      coe.[FPREIS] = sd.[FPREIS],
      coe.[PEINH] = sd.[PEINH],
      coe.[PMEHT] = sd.[PMEHT],
      coe.[PRICE_MANUAL] = sd.[PRICE_MANUAL],
      coe.[WERTB] = sd.[WERTB],
      coe.[WERTN] = sd.[WERTN],
      coe.[WRTFX] = sd.[WRTFX],
      coe.[WRTFW_KPF] = sd.[WRTFW_KPF],
      coe.[WRTFW_KFX] = sd.[WRTFW_KFX],
      coe.[FWAER_KPF] = sd.[FWAER_KPF],
      coe.[WRTFW_POS] = sd.[WRTFW_POS],
      coe.[WRTFW_PFX] = sd.[WRTFW_PFX],
      coe.[FWAER] = sd.[FWAER],
      coe.[MKURS] = sd.[MKURS],
      coe.[FWEHT] = sd.[FWEHT],
      coe.[MENGE] = sd.[MENGE],
      coe.[MEEHT] = sd.[MEEHT],
      coe.[SUMM1] = sd.[SUMM1],
      coe.[SUMM2] = sd.[SUMM2],
      coe.[SUMM3] = sd.[SUMM3],
      coe.[DPREIS] = sd.[DPREIS],
      coe.[PREIS1] = sd.[PREIS1],
      coe.[PREIS2] = sd.[PREIS2],
      coe.[PREIS3] = sd.[PREIS3],
      coe.[PREIS4] = sd.[PREIS4],
      coe.[PREIS5] = sd.[PREIS5],
      coe.[PFKT1] = sd.[PFKT1],
      coe.[PFKT2] = sd.[PFKT2],
      coe.[PFKT3] = sd.[PFKT3],
      coe.[PFKT4] = sd.[PFKT4],
      coe.[PFKT5] = sd.[PFKT5],
      coe.[ZUABS] = sd.[ZUABS],
      coe.[ZUFKT] = sd.[ZUFKT],
      coe.[PSKNZ] = sd.[PSKNZ],
      coe.[SBDKZ] = sd.[SBDKZ],
      coe.[VTKNZ] = sd.[VTKNZ],
      coe.[LSTAR] = sd.[LSTAR],
      coe.[ARBID] = sd.[ARBID],
      coe.[KOSTL] = sd.[KOSTL],
      coe.[INFNR] = sd.[INFNR],
      coe.[EKORG] = sd.[EKORG],
      coe.[ESOKZ] = sd.[ESOKZ],
      coe.[LIFNR] = sd.[LIFNR],
      coe.[EBELN] = sd.[EBELN],
      coe.[EBELP] = sd.[EBELP],
      coe.[STEUS] = sd.[STEUS],
      coe.[FXPRU] = sd.[FXPRU],
      coe.[STPOS] = sd.[STPOS],
      coe.[AFAKT] = sd.[AFAKT],
      coe.[BWTAR] = sd.[BWTAR],
      coe.[MKALK] = sd.[MKALK],
      coe.[BTYP] = sd.[BTYP],
      coe.[KALNR_BA] = sd.[KALNR_BA],
      coe.[MISCH_VERH] = sd.[MISCH_VERH],
      coe.[UMREZ] = sd.[UMREZ],
      coe.[UMREN] = sd.[UMREN],
      coe.[AUSMG] = sd.[AUSMG],
      coe.[AUSMGKO] = sd.[AUSMGKO],
      coe.[AUSPROZ] = sd.[AUSPROZ],
      coe.[APLZL] = sd.[APLZL],
      coe.[VORNR] = sd.[VORNR],
      coe.[UVORN] = sd.[UVORN],
      coe.[STEAS] = sd.[STEAS],
      coe.[POSNR_EXT] = sd.[POSNR_EXT],
      coe.[POINTER1] = sd.[POINTER1],
      coe.[POINTER2] = sd.[POINTER2],
      coe.[POINTER3] = sd.[POINTER3],
      coe.[OPREIS] = sd.[OPREIS],
      coe.[OPREIFX] = sd.[OPREIFX],
      coe.[TPREIS] = sd.[TPREIS],
      coe.[TPREIFX] = sd.[TPREIFX],
      coe.[PATNR] = sd.[PATNR],
      coe.[VERWS] = sd.[VERWS],
      coe.[PRSKZ] = sd.[PRSKZ],
      coe.[STRAT] = sd.[STRAT],
      coe.[SUBSTRAT] = sd.[SUBSTRAT],
      coe.[TKURS] = sd.[TKURS],
      coe.[SELKZ] = sd.[SELKZ],
      coe.[VRGGRP] = sd.[VRGGRP],
      coe.[KKZMM] = sd.[KKZMM],
      coe.[SSEDD] = sd.[SSEDD],
      coe.[FEHLKZ] = sd.[FEHLKZ],
      coe.[NO_CCSPLIT] = sd.[NO_CCSPLIT],
      coe.[SCHKZ] = sd.[SCHKZ],
      coe.[SCHKZNS] = sd.[SCHKZNS],
      coe.[UFIELD_MODE] = sd.[UFIELD_MODE],
      coe.[UKALN] = sd.[UKALN],
      coe.[UKALKA] = sd.[UKALKA],
      coe.[UKADKY] = sd.[UKADKY],
      coe.[UTVERS] = sd.[UTVERS],
      coe.[UBWVAR] = sd.[UBWVAR],
      coe.[HKMAT] = sd.[HKMAT],
      coe.[SPOSN] = sd.[SPOSN],
      coe.[USTRAT] = sd.[USTRAT],
      coe.[BAUGR] = sd.[BAUGR],
      coe.[ASNUM] = sd.[ASNUM],
      coe.[PEINH_2] = sd.[PEINH_2],
      coe.[PEINH_3] = sd.[PEINH_3],
      coe.[PRZNR] = sd.[PRZNR],
      coe.[NLAG] = sd.[NLAG],
      coe.[PRCTR] = sd.[PRCTR],
      coe.[GSBER] = sd.[GSBER],
      coe.[PSPNR] = sd.[PSPNR],
      coe.[PAROB] = sd.[PAROB],
      coe.[KZANW] = sd.[KZANW],
      coe.[KZLB] = sd.[KZLB],
      coe.[SUBKEY] = sd.[SUBKEY],
      coe.[KZWSO] = sd.[KZWSO],
      coe.[DISST] = sd.[DISST],
      coe.[CUOBJ] = sd.[CUOBJ],
      coe.[GENTYP] = sd.[GENTYP],
      coe.[COMPONENT_ID] = sd.[COMPONENT_ID]
		
WHEN NOT MATCHED
	THEN
		
	-- Inserting the data ----
	INSERT ( 
	  [MANDT]
      ,[LEDNR]
      ,[BZOBJ]
      ,[KALNR]
      ,[KALKA]
      ,[KADKY]
      ,[TVERS]
      ,[BWVAR]
      ,[KKZMA]
      ,[POSNR]
      ,[STATP]
      ,[STRGP]
      ,[TYPPS]
      ,[KSTAR]
      ,[KSTAR_MANUAL]
      ,[HRKFT]
      ,[ELEMT]
      ,[ELEMTNS]
      ,[FVFLG]
      ,[OPCOD]
      ,[FRLNR]
      ,[BUKRS]
      ,[WERKS]
      ,[MATNR]
      ,[PSCHL]
      ,[KOKRS_HRK]
      ,[EXTNR]
      ,[GPREIS]
      ,[FPREIS]
      ,[PEINH]
      ,[PMEHT]
      ,[PRICE_MANUAL]
      ,[WERTB]
      ,[WERTN]
      ,[WRTFX]
      ,[WRTFW_KPF]
      ,[WRTFW_KFX]
      ,[FWAER_KPF]
      ,[WRTFW_POS]
      ,[WRTFW_PFX]
      ,[FWAER]
      ,[MKURS]
      ,[FWEHT]
      ,[MENGE]
      ,[MEEHT]
      ,[SUMM1]
      ,[SUMM2]
      ,[SUMM3]
      ,[DPREIS]
      ,[PREIS1]
      ,[PREIS2]
      ,[PREIS3]
      ,[PREIS4]
      ,[PREIS5]
      ,[PFKT1]
      ,[PFKT2]
      ,[PFKT3]
      ,[PFKT4]
      ,[PFKT5]
      ,[ZUABS]
      ,[ZUFKT]
      ,[PSKNZ]
      ,[SBDKZ]
      ,[VTKNZ]
      ,[LSTAR]
      ,[ARBID]
      ,[KOSTL]
      ,[INFNR]
      ,[EKORG]
      ,[ESOKZ]
      ,[LIFNR]
      ,[EBELN]
      ,[EBELP]
      ,[STEUS]
      ,[FXPRU]
      ,[STPOS]
      ,[AFAKT]
      ,[BWTAR]
      ,[MKALK]
      ,[BTYP]
      ,[KALNR_BA]
      ,[MISCH_VERH]
      ,[UMREZ]
      ,[UMREN]
      ,[AUSMG]
      ,[AUSMGKO]
      ,[AUSPROZ]
      ,[APLZL]
      ,[VORNR]
      ,[UVORN]
      ,[STEAS]
      ,[POSNR_EXT]
      ,[POINTER1]
      ,[POINTER2]
      ,[POINTER3]
      ,[OPREIS]
      ,[OPREIFX]
      ,[TPREIS]
      ,[TPREIFX]
      ,[PATNR]
      ,[VERWS]
      ,[PRSKZ]
      ,[STRAT]
      ,[SUBSTRAT]
      ,[TKURS]
      ,[SELKZ]
      ,[VRGGRP]
      ,[KKZMM]
      ,[SSEDD]
      ,[FEHLKZ]
      ,[NO_CCSPLIT]
      ,[SCHKZ]
      ,[SCHKZNS]
      ,[UFIELD_MODE]
      ,[UKALN]
      ,[UKALKA]
      ,[UKADKY]
      ,[UTVERS]
      ,[UBWVAR]
      ,[HKMAT]
      ,[SPOSN]
      ,[USTRAT]
      ,[BAUGR]
      ,[ASNUM]
      ,[PEINH_2]
      ,[PEINH_3]
      ,[PRZNR]
      ,[NLAG]
      ,[PRCTR]
      ,[GSBER]
      ,[PSPNR]
      ,[PAROB]
      ,[KZANW]
      ,[KZLB]
      ,[SUBKEY]
      ,[KZWSO]
      ,[DISST]
      ,[CUOBJ]
      ,[GENTYP]
      ,[COMPONENT_ID]
	  )
	  values(
	  sd.[MANDT]
      , sd.[LEDNR]
      , sd.[BZOBJ]
      , sd.[KALNR]
      , sd.[KALKA]
      , sd.[KADKY]
      , sd.[TVERS]
      , sd.[BWVAR]
      , sd.[KKZMA]
      , sd.[POSNR]
      , sd.[STATP]
      , sd.[STRGP]
      , sd.[TYPPS]
      , sd.[KSTAR]
      , sd.[KSTAR_MANUAL]
      , sd.[HRKFT]
      , sd.[ELEMT]
      , sd.[ELEMTNS]
      , sd.[FVFLG]
      , sd.[OPCOD]
      , sd.[FRLNR]
      , sd.[BUKRS]
      , sd.[WERKS]
      , sd.[MATNR]
      , sd.[PSCHL]
      , sd.[KOKRS_HRK]
      , sd.[EXTNR]
      , sd.[GPREIS]
      , sd.[FPREIS]
      , sd.[PEINH]
      , sd.[PMEHT]
      , sd.[PRICE_MANUAL]
      , sd.[WERTB]
      , sd.[WERTN]
      , sd.[WRTFX]
      , sd.[WRTFW_KPF]
      , sd.[WRTFW_KFX]
      , sd.[FWAER_KPF]
      , sd.[WRTFW_POS]
      , sd.[WRTFW_PFX]
      , sd.[FWAER]
      , sd.[MKURS]
      , sd.[FWEHT]
      , sd.[MENGE]
      , sd.[MEEHT]
      , sd.[SUMM1]
      , sd.[SUMM2]
      , sd.[SUMM3]
      , sd.[DPREIS]
      , sd.[PREIS1]
      , sd.[PREIS2]
      , sd.[PREIS3]
      , sd.[PREIS4]
      , sd.[PREIS5]
      , sd.[PFKT1]
      , sd.[PFKT2]
      , sd.[PFKT3]
      , sd.[PFKT4]
      , sd.[PFKT5]
      , sd.[ZUABS]
      , sd.[ZUFKT]
      , sd.[PSKNZ]
      , sd.[SBDKZ]
      , sd.[VTKNZ]
      , sd.[LSTAR]
      , sd.[ARBID]
      , sd.[KOSTL]
      , sd.[INFNR]
      , sd.[EKORG]
      , sd.[ESOKZ]
      , sd.[LIFNR]
      , sd.[EBELN]
      , sd.[EBELP]
      , sd.[STEUS]
      , sd.[FXPRU]
      , sd.[STPOS]
      , sd.[AFAKT]
      , sd.[BWTAR]
      , sd.[MKALK]
      , sd.[BTYP]
      , sd.[KALNR_BA]
      , sd.[MISCH_VERH]
      , sd.[UMREZ]
      , sd.[UMREN]
      , sd.[AUSMG]
      , sd.[AUSMGKO]
      , sd.[AUSPROZ]
      , sd.[APLZL]
      , sd.[VORNR]
      , sd.[UVORN]
      , sd.[STEAS]
      , sd.[POSNR_EXT]
      , sd.[POINTER1]
      , sd.[POINTER2]
      , sd.[POINTER3]
      , sd.[OPREIS]
      , sd.[OPREIFX]
      , sd.[TPREIS]
      , sd.[TPREIFX]
      , sd.[PATNR]
      , sd.[VERWS]
      , sd.[PRSKZ]
      , sd.[STRAT]
      , sd.[SUBSTRAT]
      , sd.[TKURS]
      , sd.[SELKZ]
      , sd.[VRGGRP]
      , sd.[KKZMM]
      , sd.[SSEDD]
      , sd.[FEHLKZ]
      , sd.[NO_CCSPLIT]
      , sd.[SCHKZ]
      , sd.[SCHKZNS]
      , sd.[UFIELD_MODE]
      , sd.[UKALN]
      , sd.[UKALKA]
      , sd.[UKADKY]
      , sd.[UTVERS]
      , sd.[UBWVAR]
      , sd.[HKMAT]
      , sd.[SPOSN]
      , sd.[USTRAT]
      , sd.[BAUGR]
      , sd.[ASNUM]
      , sd.[PEINH_2]
      , sd.[PEINH_3]
      , sd.[PRZNR]
      , sd.[NLAG]
      , sd.[PRCTR]
      , sd.[GSBER]
      , sd.[PSPNR]
      , sd.[PAROB]
      , sd.[KZANW]
      , sd.[KZLB]
      , sd.[SUBKEY]
      , sd.[KZWSO]
      , sd.[DISST]
      , sd.[CUOBJ]
      , sd.[GENTYP]
      , sd.[COMPONENT_ID]
	  );
				
		END
	END TRY

BEGIN CATCH
	END CATCH
SET NOCOUNT OFF
END










GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Cobk]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_DQ_Load_Cobk]
AS
BEGIN

DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
DECLARE @GETDATE DATETIME=GETDATE();
DECLARE @Rows_Insrt INTEGER
DECLARE @Rows_Updt INT
DECLARE @TOT_CNT INT
/*SELECT @Rows_Updt=COUNT(1)
		FROM STG.STG_COBK sd,
		KLA_ECC.dbo.COBK cob
			WHERE cob.KOKRS = sd.KOKRS
			AND cob.BELNR = sd.BELNR

			SELECT @Rows_Insrt= COUNT(1) from STG.STG_COBK sd where not exists(select 1 from KLA_ECC.dbo.COBK cob 
			where cob.KOKRS = sd.KOKRS and cob.BELNR = sd.BELNR)*/

EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_COBK_SP',@GETDATE,null,null,null,null,null 
              ;

	MERGE KLA_ECC.dbo.COBK AS cob
	USING (
		SELECT *
		FROM STG.STG_COBK
		) AS sd
		ON cob.KOKRS = sd.KOKRS
			AND cob.BELNR = sd.BELNR
	WHEN MATCHED
		THEN
			UPDATE
			SET cob.MANDT = sd.MANDT
				,cob.KOKRS = sd.KOKRS
				,cob.BELNR = sd.BELNR
				,cob.GJAHR = sd.GJAHR
				,cob.VERSN = sd.VERSN
				,cob.VRGNG = sd.VRGNG
				,cob.TIMESTMP = sd.TIMESTMP
				,cob.PERAB = sd.PERAB
				,cob.PERBI = sd.PERBI
				,cob.BLDAT = sd.BLDAT
				,cob.BUDAT = sd.BUDAT
				,cob.CPUDT = sd.CPUDT
				,cob.USNAM = sd.USNAM
				,cob.BLTXT = sd.BLTXT
				,cob.STFLG = sd.STFLG
				,cob.STOKZ = sd.STOKZ
				,cob.REFBT = sd.REFBT
				,cob.REFBN = sd.REFBN
				,cob.REFBK = sd.REFBK
				,cob.REFGJ = sd.REFGJ
				,cob.BLART = sd.BLART
				,cob.ORGVG = sd.ORGVG
				,cob.SUMBZ = sd.SUMBZ
				,cob.DELBZ = sd.DELBZ
				,cob.WSDAT = sd.WSDAT
				,cob.KURST = sd.KURST
				,cob.VARNR = sd.VARNR
				,cob.KWAER = sd.KWAER
				,cob.CTYP1 = sd.CTYP1
				,cob.CTYP2 = sd.CTYP2
				,cob.CTYP3 = sd.CTYP3
				,cob.CTYP4 = sd.CTYP4
				,cob.AWTYP = sd.AWTYP
				,cob.AWORG = sd.AWORG
				,cob.LOGSYSTEM = sd.LOGSYSTEM
				,cob.CPUTM = sd.CPUTM
				,cob.ALEBZ = sd.ALEBZ
				,cob.ALEBN = sd.ALEBN
				,cob.AWSYS = sd.AWSYS
				,cob.AWREF_REV = sd.AWREF_REV
				,cob.AWORG_REV = sd.AWORG_REV
				,cob.DW_Mod_Ts=getdate()
				,cob.DW_Mod_Usr=user_name()
				
	WHEN NOT MATCHED
		THEN
			INSERT (
				[MANDT]
				,[KOKRS]
				,[BELNR]
				,[GJAHR]
				,[VERSN]
				,[VRGNG]
				,[TIMESTMP]
				,[PERAB]
				,[PERBI]
				,[BLDAT]
				,[BUDAT]
				,[CPUDT]
				,[USNAM]
				,[BLTXT]
				,[STFLG]
				,[STOKZ]
				,[REFBT]
				,[REFBN]
				,[REFBK]
				,[REFGJ]
				,[BLART]
				,[ORGVG]
				,[SUMBZ]
				,[DELBZ]
				,[WSDAT]
				,[KURST]
				,[VARNR]
				,[KWAER]
				,[CTYP1]
				,[CTYP2]
				,[CTYP3]
				,[CTYP4]
				,[AWTYP]
				,[AWORG]
				,[LOGSYSTEM]
				,[CPUTM]
				,[ALEBZ]
				,[ALEBN]
				,[AWSYS]
				,[AWREF_REV]
				,[AWORG_REV]
				,DW_Cre_Ts
				,DW_Cre_Usr
				
				)
			VALUES (
				sd.[MANDT]
				,sd.[KOKRS]
				,sd.[BELNR]
				,sd.[GJAHR]
				,sd.[VERSN]
				,sd.[VRGNG]
				,sd.[TIMESTMP]
				,sd.[PERAB]
				,sd.[PERBI]
				,sd.[BLDAT]
				,sd.[BUDAT]
				,sd.[CPUDT]
				,sd.[USNAM]
				,sd.[BLTXT]
				,sd.[STFLG]
				,sd.[STOKZ]
				,sd.[REFBT]
				,sd.[REFBN]
				,sd.[REFBK]
				,sd.[REFGJ]
				,sd.[BLART]
				,sd.[ORGVG]
				,sd.[SUMBZ]
				,sd.[DELBZ]
				,sd.[WSDAT]
				,sd.[KURST]
				,sd.[VARNR]
				,sd.[KWAER]
				,sd.[CTYP1]
				,sd.[CTYP2]
				,sd.[CTYP3]
				,sd.[CTYP4]
				,sd.[AWTYP]
				,sd.[AWORG]
				,sd.[LOGSYSTEM]
				,sd.[CPUTM]
				,sd.[ALEBZ]
				,sd.[ALEBN]
				,sd.[AWSYS]
				,sd.[AWREF_REV]
				,sd.[AWORG_REV]
				,getdate()
				,user_name()
				)
				OUTPUT $action INTO @tableVar;
	  --select @Rows_Insrt=InsertedID from @tableVar
	  --select @Rows_Updt=UpdatedID from @tableVar
	 -- print @Rows_Insrt
	 -- print @Rows_Updt
				--select * from @tableVar

				sELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
		--SUM(Deleted) as Deleted
FROM  (
   -- Count the number of inserts
   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   -- Count the number of updates   <=== GIVING UPDATES AND DELETES
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'

   
   ) as CountTable;
 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_COBK_SP',  @Rows_Insrt, @Rows_Updt, null,null, 'Y'
;
				
 --EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_COBK_SP',  null, null, null,null, 'Y'
--;
END










GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Coep]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Coep] 
	
AS
BEGIN
DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
DECLARE @GETDATE DATETIME=GETDATE();
DECLARE @Rows_Insrt INTEGER
DECLARE @Rows_Updt INT
DECLARE @TOT_CNT INT

/*
SELECT @Rows_Updt=COUNT(1)
		FROM STG.STG_COEP sd,
		KLA_ECC.dbo.COEP coe
			WHERE coe.KOKRS = sd.KOKRS
			AND coe.BELNR = sd.BELNR
			AND coe.BUZEI=sd.BUZEI

			SELECT @Rows_Insrt= COUNT(1) from STG.STG_COEP sd where not exists(select 1 from KLA_ECC.dbo.COEP coe 
			where coe.KOKRS = sd.KOKRS and coe.BELNR = sd.BELNR AND coe.BUZEI=sd.BUZEI )
*/
EXECUTE [KG_Audit].[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_COEP_SP',@GETDATE,null,null,null,null,null;


-- Merge Statement
MERGE KLA_ECC.dbo.COEP AS coe
USING (
	SELECT *
	FROM STG.STG_COEP
	) AS sd
	ON coe.KOKRS = sd.KOKRS
		AND coe.BELNR = sd.BELNR
		AND coe.BUZEI = sd.BUZEI
		--WHEN MATCHED AND coe.ACCT_NBR &gt; 250 THEN DELETE
WHEN MATCHED
	THEN
		UPDATE
		SET coe.MANDT = sd.MANDT
			,coe.PERIO = sd.PERIO
			,coe.WTGBTR = sd.WTGBTR
			,coe.WOGBTR = sd.WOGBTR
			,coe.WKGBTR = sd.WKGBTR
			,coe.WKFBTR = sd.WKFBTR
			,coe.PAGBTR = sd.PAGBTR
			,coe.PAFBTR = sd.PAFBTR
			,coe.MEGBTR = sd.MEGBTR
			,coe.MEFBTR = sd.MEFBTR
			,coe.MBGBTR = sd.MBGBTR
			,coe.MBFBTR = sd.MBFBTR
			,coe.LEDNR = sd.LEDNR
			,coe.OBJNR = sd.OBJNR
			,coe.GJAHR = sd.GJAHR
			,coe.WRTTP = sd.WRTTP
			,coe.VERSN = sd.VERSN
			,coe.KSTAR = sd.KSTAR
			,coe.HRKFT = sd.HRKFT
			,coe.VRGNG = sd.VRGNG
			,coe.PAROB = sd.PAROB
			,coe.PAROB1 = sd.PAROB1
			,coe.USPOB = sd.USPOB
			,coe.VBUND = sd.VBUND
			,coe.PARGB = sd.PARGB
			,coe.BEKNZ = sd.BEKNZ
			,coe.TWAER = sd.TWAER
			,coe.OWAER = sd.OWAER
			,coe.MEINH = sd.MEINH
			,coe.MEINB = sd.MEINB
			,coe.MVFLG = sd.MVFLG
			,coe.SGTXT = sd.SGTXT
			,coe.REFBZ = sd.REFBZ
			,coe.ZLENR = sd.ZLENR
			,coe.BW_REFBZ = sd.BW_REFBZ
			,coe.GKONT = sd.GKONT
			,coe.GKOAR = sd.GKOAR
			,coe.WERKS = sd.WERKS
			,coe.MATNR = sd.MATNR
			,coe.RBEST = sd.RBEST
			,coe.EBELN = sd.EBELN
			,coe.EBELP = sd.EBELP
			,coe.ZEKKN = sd.ZEKKN
			,coe.ERLKZ = sd.ERLKZ
			,coe.PERNR = sd.PERNR
			,coe.BTRKL = sd.BTRKL
			,coe.OBJNR_N1 = sd.OBJNR_N1
			,coe.OBJNR_N2 = sd.OBJNR_N2
			,coe.OBJNR_N3 = sd.OBJNR_N3
			,coe.PAOBJNR = sd.PAOBJNR
			,coe.BELTP = sd.BELTP
			,coe.BUKRS = sd.BUKRS
			,coe.GSBER = sd.GSBER
			,coe.FKBER = sd.FKBER
			,coe.SCOPE = sd.SCOPE
			,coe.LOGSYSO = sd.LOGSYSO
			,coe.PKSTAR = sd.PKSTAR
			,coe.PBUKRS = sd.PBUKRS
			,coe.PFKBER = sd.PFKBER
			,coe.PSCOPE = sd.PSCOPE
			,coe.LOGSYSP = sd.LOGSYSP
			,coe.DABRZ = sd.DABRZ
			,coe.BWSTRAT = sd.BWSTRAT
			,coe.OBJNR_HK = sd.OBJNR_HK
			,coe.TIMESTMP = sd.TIMESTMP
			,coe.QMNUM = sd.QMNUM
			,coe.GEBER = sd.GEBER
			,coe.PGEBER = sd.PGEBER
			,coe.GRANT_NBR = sd.GRANT_NBR
			,coe.PGRANT_NBR = sd.PGRANT_NBR
			,coe.REFBZ_FI = sd.REFBZ_FI
			,coe.SEGMENT = sd.SEGMENT
			,coe.PSEGMENT = sd.PSEGMENT
			,coe.[DW_Mod_Ts]=GETDATE()
			,coe.[DW_Mod_Usr]=user_name()
WHEN NOT MATCHED
	THEN
		INSERT (
			MANDT
			,KOKRS
			,BELNR
			,BUZEI
			,PERIO
			,WTGBTR
			,WOGBTR
			,WKGBTR
			,WKFBTR
			,PAGBTR
			,PAFBTR
			,MEGBTR
			,MEFBTR
			,MBGBTR
			,MBFBTR
			,LEDNR
			,OBJNR
			,GJAHR
			,WRTTP
			,VERSN
			,KSTAR
			,HRKFT
			,VRGNG
			,PAROB
			,PAROB1
			,USPOB
			,VBUND
			,PARGB
			,BEKNZ
			,TWAER
			,OWAER
			,MEINH
			,MEINB
			,MVFLG
			,SGTXT
			,REFBZ
			,ZLENR
			,BW_REFBZ
			,GKONT
			,GKOAR
			,WERKS
			,MATNR
			,RBEST
			,EBELN
			,EBELP
			,ZEKKN
			,ERLKZ
			,PERNR
			,BTRKL
			,OBJNR_N1
			,OBJNR_N2
			,OBJNR_N3
			,PAOBJNR
			,BELTP
			,BUKRS
			,GSBER
			,FKBER
			,SCOPE
			,LOGSYSO
			,PKSTAR
			,PBUKRS
			,PFKBER
			,PSCOPE
			,LOGSYSP
			,DABRZ
			,BWSTRAT
			,OBJNR_HK
			,TIMESTMP
			,QMNUM
			,GEBER
			,PGEBER
			,GRANT_NBR
			,PGRANT_NBR
			,REFBZ_FI
			,SEGMENT
			,PSEGMENT
			,[DW_Cre_Ts]
			,[DW_Cre_Usr]
			)
		VALUES (
			sd.MANDT
			,sd.KOKRS
			,sd.BELNR
			,sd.BUZEI
			,sd.PERIO
			,sd.WTGBTR
			,sd.WOGBTR
			,sd.WKGBTR
			,sd.WKFBTR
			,sd.PAGBTR
			,sd.PAFBTR
			,sd.MEGBTR
			,sd.MEFBTR
			,sd.MBGBTR
			,sd.MBFBTR
			,sd.LEDNR
			,sd.OBJNR
			,sd.GJAHR
			,sd.WRTTP
			,sd.VERSN
			,sd.KSTAR
			,sd.HRKFT
			,sd.VRGNG
			,sd.PAROB
			,sd.PAROB1
			,sd.USPOB
			,sd.VBUND
			,sd.PARGB
			,sd.BEKNZ
			,sd.TWAER
			,sd.OWAER
			,sd.MEINH
			,sd.MEINB
			,sd.MVFLG
			,sd.SGTXT
			,sd.REFBZ
			,sd.ZLENR
			,sd.BW_REFBZ
			,sd.GKONT
			,sd.GKOAR
			,sd.WERKS
			,sd.MATNR
			,sd.RBEST
			,sd.EBELN
			,sd.EBELP
			,sd.ZEKKN
			,sd.ERLKZ
			,sd.PERNR
			,sd.BTRKL
			,sd.OBJNR_N1
			,sd.OBJNR_N2
			,sd.OBJNR_N3
			,sd.PAOBJNR
			,sd.BELTP
			,sd.BUKRS
			,sd.GSBER
			,sd.FKBER
			,sd.SCOPE
			,sd.LOGSYSO
			,sd.PKSTAR
			,sd.PBUKRS
			,sd.PFKBER
			,sd.PSCOPE
			,sd.LOGSYSP
			,sd.DABRZ
			,sd.BWSTRAT
			,sd.OBJNR_HK
			,sd.TIMESTMP
			,sd.QMNUM
			,sd.GEBER
			,sd.PGEBER
			,sd.GRANT_NBR
			,sd.PGRANT_NBR
			,sd.REFBZ_FI
			,sd.SEGMENT
			,sd.PSEGMENT
			,getdate()
			,user_name()
			)
		OUTPUT $action INTO @tableVar;
	  --select @Rows_Insrt=InsertedID from @tableVar
	  --select @Rows_Updt=UpdatedID from @tableVar
	 -- print @Rows_Insrt
	 -- print @Rows_Updt
				--select * from @tableVar

				sELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
		--SUM(Deleted) as Deleted
FROM  (
   -- Count the number of inserts
   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   -- Count the number of updates   <=== GIVING UPDATES AND DELETES
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'
   
   ) as CountTable;

 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_COEP_SP',  @Rows_Insrt, @Rows_Updt, null,null, 'Y';

--- EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_COEP_SP',  null, null, null,null, 'Y' ;

END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_EKKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_Load_EKKO]
AS

BEGIN
DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
DECLARE @GETDATE DATETIME=GETDATE();
DECLARE @Rows_Insrt INTEGER
DECLARE @Rows_Updt INT

--SELECT @Rows_Updt=COUNT(1)
--		FROM STG.STG_EKKO sd,
--		KLA_ECC.dbo.EKKO ek
--			WHERE ek.EBELN = sd.EBELN
			
--			SELECT @Rows_Insrt= COUNT(1) from STG.STG_EKKO sd where not exists(select 1 from KLA_ECC.dbo.EKKO ek 
--			where ek.EBELN = sd.EBELN)

EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_EKKO_SP',@GETDATE,null,null,null,null,null;

-------MERGE STATMENT---------
   MERGE KLA_ECC.dbo.EKKO AS ek
	USING (
		SELECT *
		FROM KLA_ECC.STG.STG_EKKO
		) AS sd
		ON ek.EBELN = sd.EBELN
	WHEN MATCHED
		THEN
			UPDATE
			SET  ek.[MANDT]			  =sd.[MANDT]
				,ek.[EBELN]			  =sd.[EBELN]
				,ek.[BUKRS]			  =sd.[BUKRS]
				,ek.[BSTYP]			  =sd.[BSTYP]
				,ek.[BSART]			  =sd.[BSART]
				,ek.[BSAKZ]			  =sd.[BSAKZ]
				,ek.[LOEKZ]			  =sd.[LOEKZ]
				,ek.[STATU]			  =sd.[STATU]
				,ek.[AEDAT]			  =sd.[AEDAT]
				,ek.[ERNAM]			  =sd.[ERNAM]
				,ek.[PINCR]			  =sd.[PINCR]
				,ek.[LPONR]			  =sd.[LPONR]
				,ek.[LIFNR]			  =sd.[LIFNR]
				,ek.[SPRAS]			  =sd.[SPRAS]
				,ek.[ZTERM]			  =sd.[ZTERM]
				,ek.[ZBD1T]			  =sd.[ZBD1T]
				,ek.[ZBD2T]			  =sd.[ZBD2T]
				,ek.[ZBD3T]			  =sd.[ZBD3T]
				,ek.[ZBD1P]			  =sd.[ZBD1P]
				,ek.[ZBD2P]			  =sd.[ZBD2P]
				,ek.[EKORG]			  =sd.[EKORG]
				,ek.[EKGRP]			  =sd.[EKGRP]
				,ek.[WAERS]			  =sd.[WAERS]
				,ek.[WKURS]			  =sd.[WKURS]
				,ek.[KUFIX]			  =sd.[KUFIX]
				,ek.[BEDAT]			  =sd.[BEDAT]
				,ek.[KDATB]			  =sd.[KDATB]
				,ek.[KDATE]			  =sd.[KDATE]
				,ek.[BWBDT]			  =sd.[BWBDT]
				,ek.[ANGDT]			  =sd.[ANGDT]
				,ek.[BNDDT]			  =sd.[BNDDT]
				,ek.[GWLDT]			  =sd.[GWLDT]
				,ek.[AUSNR]			  =sd.[AUSNR]
				,ek.[ANGNR]			  =sd.[ANGNR]
				,ek.[IHRAN]			  =sd.[IHRAN]
				,ek.[IHREZ]			  =sd.[IHREZ]
				,ek.[VERKF]			  =sd.[VERKF]
				,ek.[TELF1]			  =sd.[TELF1]
				,ek.[LLIEF]			  =sd.[LLIEF]
				,ek.[KUNNR]			  =sd.[KUNNR]
				,ek.[KONNR]			  =sd.[KONNR]
				,ek.[ABGRU]			  =sd.[ABGRU]
				,ek.[AUTLF]			  =sd.[AUTLF]
				,ek.[WEAKT]			  =sd.[WEAKT]
				,ek.[RESWK]			  =sd.[RESWK]
				,ek.[LBLIF]			  =sd.[LBLIF]
				,ek.[INCO1]			  =sd.[INCO1]
				,ek.[INCO2]			  =sd.[INCO2]
				,ek.[KTWRT]			  =sd.[KTWRT]
				,ek.[SUBMI]			  =sd.[SUBMI]
				,ek.[KNUMV]			  =sd.[KNUMV]
				,ek.[KALSM]			  =sd.[KALSM]
				,ek.[STAFO]			  =sd.[STAFO]
				,ek.[LIFRE]			  =sd.[LIFRE]
				,ek.[EXNUM]			  =sd.[EXNUM]
				,ek.[UNSEZ]			  =sd.[UNSEZ]
				,ek.[LOGSY]			  =sd.[LOGSY]
				,ek.[UPINC]			  =sd.[UPINC]
				,ek.[STAKO]			  =sd.[STAKO]
				,ek.[FRGGR]			  =sd.[FRGGR]
				,ek.[FRGSX]			  =sd.[FRGSX]
				,ek.[FRGKE]			  =sd.[FRGKE]
				,ek.[FRGZU]			  =sd.[FRGZU]
				,ek.[FRGRL]			  =sd.[FRGRL]
				,ek.[LANDS]			  =sd.[LANDS]
				,ek.[LPHIS]			  =sd.[LPHIS]
				,ek.[ADRNR]			  =sd.[ADRNR]
				,ek.[STCEG_L]			  =sd.[STCEG_L]
				,ek.[STCEG]			  =sd.[STCEG]
				,ek.[ABSGR]			  =sd.[ABSGR]
				,ek.[ADDNR]			  =sd.[ADDNR]
				,ek.[KORNR]			  =sd.[KORNR]
				,ek.[MEMORY]		 =sd.[MEMORY]
				,ek.[PROCSTAT]		  =sd.[PROCSTAT]
				,ek.[RLWRT]			  =sd.[RLWRT]
				,ek.[REVNO]			  =sd.[REVNO]
				,ek.[SCMPROC]		  =sd.[SCMPROC]
				,ek.[REASON_CODE]	  =sd.[REASON_CODE]
				,ek.[FORCE_ID]		  =sd.[FORCE_ID]
				,ek.[FORCE_CNT]		  =sd.[FORCE_CNT]
				,ek.[RELOC_ID]		  =sd.[RELOC_ID]
				,ek.[RELOC_SEQ_ID]	  =sd.[RELOC_SEQ_ID]
				,ek.[POHF_TYPE]		  =sd.[POHF_TYPE]
				,ek.[EQ_EINDT]		  =sd.[EQ_EINDT]
				,ek.[EQ_WERKS]		  =sd.[EQ_WERKS]
				,ek.[FIXPO]			  =sd.[FIXPO]
				,ek.[EKGRP_ALLOW]		  =sd.[EKGRP_ALLOW]
				,ek.[WERKS_ALLOW]		  =sd.[WERKS_ALLOW]
				,ek.[CONTRACT_ALLOW]	  =sd.[CONTRACT_ALLOW]
				,ek.[PSTYP_ALLOW]		  =sd.[PSTYP_ALLOW]
				,ek.[FIXPO_ALLOW]		  =sd.[FIXPO_ALLOW]
				,ek.[KEY_ID_ALLOW]	  =sd.[KEY_ID_ALLOW]
				,ek.[AUREL_ALLOW]		  =sd.[AUREL_ALLOW]
				,ek.[DELPER_ALLOW]	  =sd.[DELPER_ALLOW]
				,ek.[EINDT_ALLOW]		  =sd.[EINDT_ALLOW]
				,ek.[OTB_LEVEL]         =sd.[OTB_LEVEL]   
				,ek.[OTB_COND_TYPE]	  =sd.[OTB_COND_TYPE]
				,ek.[KEY_ID]			  =sd.[KEY_ID]
				,ek.[OTB_VALUE]		  =sd.[OTB_VALUE]
				,ek.[OTB_CURR]		  =sd.[OTB_CURR]
				,ek.[OTB_RES_VALUE]	  =sd.[OTB_RES_VALUE]
				,ek.[OTB_SPEC_VALUE]	  =sd.[OTB_SPEC_VALUE]
				,ek.[SPR_RSN_PROFILE]	  =sd.[SPR_RSN_PROFILE]
				,ek.[BUDG_TYPE]		  =sd.[BUDG_TYPE]
				,ek.[OTB_STATUS]		  =sd.[OTB_STATUS]
				,ek.[OTB_REASON]		  =sd.[OTB_REASON]
				,ek.[CHECK_TYPE]		  =sd.[CHECK_TYPE]
				,ek.[CON_OTB_REQ]		  =sd.[CON_OTB_REQ]
				,ek.[CON_PREBOOK_LEV]	  =sd.[CON_PREBOOK_LEV]
				,ek.[CON_DISTR_LEV]	  =sd.[CON_DISTR_LEV]
 				,ek.[DW_Mod_Ts] = GETDATE()
				,ek.[DW_Mod_Usr] = USER_NAME()
WHEN NOT MATCHED
	THEN
		INSERT 
                         (--[SOURCE_SYSTEM]
			   [MANDT]
			  ,[EBELN]
			  ,[BUKRS]
			  ,[BSTYP]
			  ,[BSART]
			  ,[BSAKZ]
			  ,[LOEKZ]
			  ,[STATU]
			  ,[AEDAT]
			  ,[ERNAM]
			  ,[PINCR]
			  ,[LPONR]
			  ,[LIFNR]
			  ,[SPRAS]
			  ,[ZTERM]
			  ,[ZBD1T]
			  ,[ZBD2T]
			  ,[ZBD3T]
			  ,[ZBD1P]
			  ,[ZBD2P]
			  ,[EKORG]
			  ,[EKGRP]
			  ,[WAERS]
			  ,[WKURS]
			  ,[KUFIX]
			  ,[BEDAT]
			  ,[KDATB]
			  ,[KDATE]
			  ,[BWBDT]
			  ,[ANGDT]
			  ,[BNDDT]
			  ,[GWLDT]
			  ,[AUSNR]
			  ,[ANGNR]
			  ,[IHRAN]
			  ,[IHREZ]
			  ,[VERKF]
			  ,[TELF1]
			  ,[LLIEF]
			  ,[KUNNR]
			  ,[KONNR]
			  ,[ABGRU]
			  ,[AUTLF]
			  ,[WEAKT]
			  ,[RESWK]
			  ,[LBLIF]
			  ,[INCO1]
			  ,[INCO2]
			  ,[KTWRT]
			  ,[SUBMI]
			  ,[KNUMV]
			  ,[KALSM]
			  ,[STAFO]
			  ,[LIFRE]
			  ,[EXNUM]
			  ,[UNSEZ]
			  ,[LOGSY]
			  ,[UPINC]
			  ,[STAKO]
			  ,[FRGGR]
			  ,[FRGSX]
			  ,[FRGKE]
			  ,[FRGZU]
			  ,[FRGRL]
			  ,[LANDS]
			  ,[LPHIS]
			  ,[ADRNR]
			  ,[STCEG_L]
			  ,[STCEG]
			  ,[ABSGR]
			  ,[ADDNR]
			  ,[KORNR]
			  ,[MEMORY]
			  ,[PROCSTAT]
			  ,[RLWRT]
			  ,[REVNO]
			  ,[SCMPROC]
			  ,[REASON_CODE]
			  ,[FORCE_ID]
			  ,[FORCE_CNT]
			  ,[RELOC_ID]
			  ,[RELOC_SEQ_ID]
			  ,[POHF_TYPE]
			  ,[EQ_EINDT]
			  ,[EQ_WERKS]
			  ,[FIXPO]
			  ,[EKGRP_ALLOW]
			  ,[WERKS_ALLOW]
			  ,[CONTRACT_ALLOW]
			  ,[PSTYP_ALLOW]
			  ,[FIXPO_ALLOW]
			  ,[KEY_ID_ALLOW]
			  ,[AUREL_ALLOW]
			  ,[DELPER_ALLOW]
			  ,[EINDT_ALLOW]
			  ,[OTB_LEVEL]
			  ,[OTB_COND_TYPE]
			  ,[KEY_ID]
			  ,[OTB_VALUE]
			  ,[OTB_CURR]
			  ,[OTB_RES_VALUE]
			  ,[OTB_SPEC_VALUE]
			  ,[SPR_RSN_PROFILE]
			  ,[BUDG_TYPE]
			  ,[OTB_STATUS]
			  ,[OTB_REASON]
			  ,[CHECK_TYPE]
			  ,[CON_OTB_REQ]
			  ,[CON_PREBOOK_LEV]
			  ,[CON_DISTR_LEV]
			  ,[DW_Cre_Ts]
			  --,[DW_Mod_Ts]
			  ,[DW_Cre_Usr]
			  )
       VALUES ( 
		 --sd.[SOURCE_SYSTEM]
		 sd.[MANDT]
		,sd.[EBELN]
		,sd.[BUKRS]
		,sd.[BSTYP]
		,sd.[BSART]
		,sd.[BSAKZ]
		,sd.[LOEKZ]
		,sd.[STATU]
		,sd.[AEDAT]
		,sd.[ERNAM]
		,sd.[PINCR]
		,sd.[LPONR]
		,sd.[LIFNR]
		,sd.[SPRAS]
		,sd.[ZTERM]
		,sd.[ZBD1T]
		,sd.[ZBD2T]
		,sd.[ZBD3T]
		,sd.[ZBD1P]
		,sd.[ZBD2P]
		,sd.[EKORG]
		,sd.[EKGRP]
		,sd.[WAERS]
		,sd.[WKURS]
		,sd.[KUFIX]
		,sd.[BEDAT]
		,sd.[KDATB]
		,sd.[KDATE]
		,sd.[BWBDT]
		,sd.[ANGDT]
		,sd.[BNDDT]
		,sd.[GWLDT]
		,sd.[AUSNR]
		,sd.[ANGNR]
		,sd.[IHRAN]
		,sd.[IHREZ]
		,sd.[VERKF]
		,sd.[TELF1]
		,sd.[LLIEF]
		,sd.[KUNNR]
		,sd.[KONNR]
		,sd.[ABGRU]
		,sd.[AUTLF]
		,sd.[WEAKT]
		,sd.[RESWK]
		,sd.[LBLIF]
		,sd.[INCO1]
		,sd.[INCO2]
		,sd.[KTWRT]
		,sd.[SUBMI]
		,sd.[KNUMV]
		,sd.[KALSM]
		,sd.[STAFO]
		,sd.[LIFRE]
		,sd.[EXNUM]
		,sd.[UNSEZ]
		,sd.[LOGSY]
		,sd.[UPINC]
		,sd.[STAKO]
		,sd.[FRGGR]
		,sd.[FRGSX]
		,sd.[FRGKE]
		,sd.[FRGZU]
		,sd.[FRGRL]
		,sd.[LANDS]
		,sd.[LPHIS]
		,sd.[ADRNR]
		,sd.[STCEG_L]
		,sd.[STCEG]
		,sd.[ABSGR]
		,sd.[ADDNR]
		,sd.[KORNR]
		,sd.[MEMORY]
		,sd.[PROCSTAT]
		,sd.[RLWRT]
		,sd.[REVNO]
		,sd.[SCMPROC]
		,sd.[REASON_CODE]
		,sd.[FORCE_ID]
		,sd.[FORCE_CNT]
		,sd.[RELOC_ID]
		,sd.[RELOC_SEQ_ID]
		,sd.[POHF_TYPE]
		,sd.[EQ_EINDT]
		,sd.[EQ_WERKS]
		,sd.[FIXPO]
		,sd.[EKGRP_ALLOW]
		,sd.[WERKS_ALLOW]
		,sd.[CONTRACT_ALLOW]
		,sd.[PSTYP_ALLOW]
		,sd.[FIXPO_ALLOW]
		,sd.[KEY_ID_ALLOW]
		,sd.[AUREL_ALLOW]
		,sd.[DELPER_ALLOW]
		,sd.[EINDT_ALLOW]
		,sd.[OTB_LEVEL]
		,sd.[OTB_COND_TYPE]
		,sd.[KEY_ID]
		,sd.[OTB_VALUE]
		,sd.[OTB_CURR]
		,sd.[OTB_RES_VALUE]
		,sd.[OTB_SPEC_VALUE]
		,sd.[SPR_RSN_PROFILE]
		,sd.[BUDG_TYPE]
		,sd.[OTB_STATUS]
		,sd.[OTB_REASON]
		,sd.[CHECK_TYPE]
		,sd.[CON_OTB_REQ]
		,sd.[CON_PREBOOK_LEV]
		,sd.[CON_DISTR_LEV]
		,GETDATE()
		,USER_NAME()
		)

OUTPUT $action INTO @tableVar;
SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
		
FROM  (
   -- Count the number of inserts
   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT' 
   UNION ALL
   -- Count the number of updates   <=== GIVING UPDATES AND DELETES
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE') as CountTable;


EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_EKKO_SP',  @Rows_Insrt, @Rows_Updt, null,null, 'Y'
;

END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_EKPO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_EKPO]
AS
BEGIN
DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
DECLARE @GETDATE DATETIME=GETDATE();
DECLARE @Rows_Insrt INTEGER
DECLARE @Rows_Updt INT

--SELECT @Rows_Updt=COUNT(1)
--		FROM STG.STG_EKPO sd,
--		    KLA_ECC.dbo.EKPO ekp
--			WHERE ekp.[EBELN] =sd.[EBELN]
--		      AND ekp.[EBELP] =sd.[EBELP]

--			SELECT @Rows_Insrt= COUNT(1) from STG.STG_EKPO sd where not exists(select 1 from KLA_ECC.dbo.EKPO ekp 
--			where ekp.[EBELN] =sd.[EBELN] AND ekp.[EBELP] =sd.[EBELP])

EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_EKPO_SP',@GETDATE,null,null,null,null,null 
              ;
 --------MERGE STATMENTS---------
	MERGE KLA_ECC.dbo.EKPO AS ekp
	USING (
		SELECT *
		FROM KLA_ECC.STG.STG_EKPO
		) AS sd
		ON  ekp.[EBELN] =sd.[EBELN]
		AND ekp.[EBELP] =sd.[EBELP]
	WHEN MATCHED
		THEN
		 UPDATE
			SET ---ekp.[SOURCE_SYSTEM]=sd.[SOURCE_SYSTEM]
			 ekp.[MANDT]=sd.[MANDT]
			,ekp.[EBELN]=sd.[EBELN]
			,ekp.[EBELP]=sd.[EBELP]
			,ekp.[LOEKZ]=sd.[LOEKZ]
			,ekp.[STATU]=sd.[STATU]
			,ekp.[AEDAT]=sd.[AEDAT]
			,ekp.[TXZ01]=sd.[TXZ01]
			,ekp.[MATNR]=sd.[MATNR]
			,ekp.[EMATN]=sd.[EMATN]
			,ekp.[BUKRS]=sd.[BUKRS]
			,ekp.[WERKS]=sd.[WERKS]
			,ekp.[LGORT]=sd.[LGORT]
			,ekp.[BEDNR]=sd.[BEDNR]
			,ekp.[MATKL]=sd.[MATKL]
			,ekp.[INFNR]=sd.[INFNR]
			,ekp.[IDNLF]=sd.[IDNLF]
			,ekp.[KTMNG]=sd.[KTMNG]
			,ekp.[MENGE]=sd.[MENGE]
			,ekp.[MEINS]=sd.[MEINS]
			,ekp.[BPRME]=sd.[BPRME]
			,ekp.[BPUMZ]=sd.[BPUMZ]
			,ekp.[BPUMN]=sd.[BPUMN]
			,ekp.[UMREZ]=sd.[UMREZ]
			,ekp.[UMREN]=sd.[UMREN]
			,ekp.[NETPR]=sd.[NETPR]
			,ekp.[PEINH]=sd.[PEINH]
			,ekp.[NETWR]=sd.[NETWR]
			,ekp.[BRTWR]=sd.[BRTWR]
			,ekp.[AGDAT]=sd.[AGDAT]
			,ekp.[WEBAZ]=sd.[WEBAZ]
			,ekp.[MWSKZ]=sd.[MWSKZ]
			,ekp.[BONUS]=sd.[BONUS]
			,ekp.[INSMK]=sd.[INSMK]
			,ekp.[SPINF]=sd.[SPINF]
			,ekp.[PRSDR]=sd.[PRSDR]
			,ekp.[SCHPR]=sd.[SCHPR]
			,ekp.[MAHNZ]=sd.[MAHNZ]
			,ekp.[MAHN1]=sd.[MAHN1]
			,ekp.[MAHN2]=sd.[MAHN2]
			,ekp.[MAHN3]=sd.[MAHN3]
			,ekp.[UEBTO]=sd.[UEBTO]
			,ekp.[UEBTK]=sd.[UEBTK]
			,ekp.[UNTTO]=sd.[UNTTO]
			,ekp.[BWTAR]=sd.[BWTAR]
			,ekp.[BWTTY]=sd.[BWTTY]
			,ekp.[ABSKZ]=sd.[ABSKZ]
			,ekp.[AGMEM]=sd.[AGMEM]
			,ekp.[ELIKZ]=sd.[ELIKZ]
			,ekp.[EREKZ]=sd.[EREKZ]
			,ekp.[PSTYP]=sd.[PSTYP]
			,ekp.[KNTTP]=sd.[KNTTP]
			,ekp.[KZVBR]=sd.[KZVBR]
			,ekp.[VRTKZ]=sd.[VRTKZ]
			,ekp.[TWRKZ]=sd.[TWRKZ]
			,ekp.[WEPOS]=sd.[WEPOS]
			,ekp.[WEUNB]=sd.[WEUNB]
			,ekp.[REPOS]=sd.[REPOS]
			,ekp.[WEBRE]=sd.[WEBRE]
			,ekp.[KZABS]=sd.[KZABS]
			,ekp.[LABNR]=sd.[LABNR]
			,ekp.[KONNR]=sd.[KONNR]
			,ekp.[KTPNR]=sd.[KTPNR]
			,ekp.[ABDAT]=sd.[ABDAT]
			,ekp.[ABFTZ]=sd.[ABFTZ]
			,ekp.[ETFZ1]=sd.[ETFZ1]
			,ekp.[ETFZ2]=sd.[ETFZ2]
			,ekp.[KZSTU]=sd.[KZSTU]
			,ekp.[NOTKZ]=sd.[NOTKZ]
			,ekp.[LMEIN]=sd.[LMEIN]
			,ekp.[EVERS]=sd.[EVERS]
			,ekp.[ZWERT]=sd.[ZWERT]
			,ekp.[NAVNW]=sd.[NAVNW]
			,ekp.[ABMNG]=sd.[ABMNG]
			,ekp.[PRDAT]=sd.[PRDAT]
			,ekp.[BSTYP]=sd.[BSTYP]
			,ekp.[EFFWR]=sd.[EFFWR]
			,ekp.[XOBLR]=sd.[XOBLR]
			,ekp.[KUNNR]=sd.[KUNNR]
			,ekp.[ADRNR]=sd.[ADRNR]
			,ekp.[EKKOL]=sd.[EKKOL]
			,ekp.[SKTOF]=sd.[SKTOF]
			,ekp.[STAFO]=sd.[STAFO]
			,ekp.[PLIFZ]=sd.[PLIFZ]
			,ekp.[NTGEW]=sd.[NTGEW]
			,ekp.[GEWEI]=sd.[GEWEI]
			,ekp.[TXJCD]=sd.[TXJCD]
			,ekp.[ETDRK]=sd.[ETDRK]
			,ekp.[SOBKZ]=sd.[SOBKZ]
			,ekp.[ARSNR]=sd.[ARSNR]
			,ekp.[ARSPS]=sd.[ARSPS]
			,ekp.[INSNC]=sd.[INSNC]
			,ekp.[SSQSS]=sd.[SSQSS]
			,ekp.[ZGTYP]=sd.[ZGTYP]
			,ekp.[EAN11]=sd.[EAN11]
			,ekp.[BSTAE]=sd.[BSTAE]
			,ekp.[REVLV]=sd.[REVLV]
			,ekp.[GEBER]=sd.[GEBER]
			,ekp.[FISTL]=sd.[FISTL]
			,ekp.[FIPOS]=sd.[FIPOS]
			,ekp.[KO_GSBER]=sd.[KO_GSBER]
			,ekp.[KO_PARGB]=sd.[KO_PARGB]
			,ekp.[KO_PRCTR]=sd.[KO_PRCTR]
			,ekp.[KO_PPRCTR]=sd.[KO_PPRCTR]
			,ekp.[MEPRF]=sd.[MEPRF]
			,ekp.[BRGEW]=sd.[BRGEW]
			,ekp.[VOLUM]=sd.[VOLUM]
			,ekp.[VOLEH]=sd.[VOLEH]
			,ekp.[INCO1]=sd.[INCO1]
			,ekp.[INCO2]=sd.[INCO2]
			,ekp.[VORAB]=sd.[VORAB]
			,ekp.[KOLIF]=sd.[KOLIF]
			,ekp.[LTSNR]=sd.[LTSNR]
			,ekp.[PACKNO]=sd.[PACKNO]
			,ekp.[FPLNR]=sd.[FPLNR]
			,ekp.[GNETWR]=sd.[GNETWR]
			,ekp.[STAPO]=sd.[STAPO]
			,ekp.[UEBPO]=sd.[UEBPO]
			,ekp.[LEWED]=sd.[LEWED]
			,ekp.[EMLIF]=sd.[EMLIF]
			,ekp.[LBLKZ]=sd.[LBLKZ]
			,ekp.[SATNR]=sd.[SATNR]
			,ekp.[ATTYP]=sd.[ATTYP]
			,ekp.[KANBA]=sd.[KANBA]
			,ekp.[ADRN2]=sd.[ADRN2]
			,ekp.[CUOBJ]=sd.[CUOBJ]
			,ekp.[XERSY]=sd.[XERSY]
			,ekp.[EILDT]=sd.[EILDT]
			,ekp.[DRDAT]=sd.[DRDAT]
			,ekp.[DRUHR]=sd.[DRUHR]
			,ekp.[DRUNR]=sd.[DRUNR]
			,ekp.[AKTNR]=sd.[AKTNR]
			,ekp.[ABELN]=sd.[ABELN]
			,ekp.[ABELP]=sd.[ABELP]
			,ekp.[ANZPU]=sd.[ANZPU]
			,ekp.[PUNEI]=sd.[PUNEI]
			,ekp.[SAISO]=sd.[SAISO]
			,ekp.[SAISJ]=sd.[SAISJ]
			,ekp.[EBON2]=sd.[EBON2]
			,ekp.[EBON3]=sd.[EBON3]
			,ekp.[EBONF]=sd.[EBONF]
			,ekp.[MLMAA]=sd.[MLMAA]
			,ekp.[MHDRZ]=sd.[MHDRZ]
			,ekp.[ANFNR]=sd.[ANFNR]
			,ekp.[ANFPS]=sd.[ANFPS]
			,ekp.[KZKFG]=sd.[KZKFG]
			,ekp.[USEQU]=sd.[USEQU]
			,ekp.[UMSOK]=sd.[UMSOK]
			,ekp.[BANFN]=sd.[BANFN]
			,ekp.[BNFPO]=sd.[BNFPO]
			,ekp.[MTART]=sd.[MTART]
			,ekp.[UPTYP]=sd.[UPTYP]
			,ekp.[UPVOR]=sd.[UPVOR]
			,ekp.[KZWI1]=sd.[KZWI1]
			,ekp.[KZWI2]=sd.[KZWI2]
			,ekp.[KZWI3]=sd.[KZWI3]
			,ekp.[KZWI4]=sd.[KZWI4]
			,ekp.[KZWI5]=sd.[KZWI5]
			,ekp.[KZWI6]=sd.[KZWI6]
			,ekp.[SIKGR]=sd.[SIKGR]
			,ekp.[MFZHI]=sd.[MFZHI]
			,ekp.[FFZHI]=sd.[FFZHI]
			,ekp.[RETPO]=sd.[RETPO]
			,ekp.[AUREL]=sd.[AUREL]
			,ekp.[BSGRU]=sd.[BSGRU]
			,ekp.[LFRET]=sd.[LFRET]
			,ekp.[MFRGR]=sd.[MFRGR]
			,ekp.[NRFHG]=sd.[NRFHG]
			,ekp.[J_1BNBM] =sd.[J_1BNBM]
			,ekp.[J_1BMATUSE]=sd.[J_1BMATUSE]
			,ekp.[J_1BMATORG]=sd.[J_1BMATORG]
			,ekp.[J_1BOWNPRO]=sd.[J_1BOWNPRO]
			,ekp.[J_1BINDUST]=sd.[J_1BINDUST]
			,ekp.[ABUEB]=sd.[ABUEB]
			,ekp.[NLABD]=sd.[NLABD]
			,ekp.[NFABD]=sd.[NFABD]
			,ekp.[KZBWS]=sd.[KZBWS]
			,ekp.[BONBA]=sd.[BONBA]
			,ekp.[FABKZ]=sd.[FABKZ]
			,ekp.[J_1AINDXP]=sd.[J_1AINDXP]
			,ekp.[J_1AIDATEP]=sd.[J_1AIDATEP]
			,ekp.[MPROF]=sd.[MPROF]
			,ekp.[EGLKZ]=sd.[EGLKZ]
			,ekp.[KZTLF]=sd.[KZTLF]
			,ekp.[KZFME]=sd.[KZFME]
			,ekp.[RDPRF]=sd.[RDPRF]
			,ekp.[TECHS]=sd.[TECHS]
			,ekp.[CHG_SRV]=sd.[CHG_SRV]
			,ekp.[CHG_FPLNR]=sd.[CHG_FPLNR]
			,ekp.[MFRPN]=sd.[MFRPN]
			,ekp.[MFRNR]=sd.[MFRNR]
			,ekp.[EMNFR]=sd.[EMNFR]
			,ekp.[NOVET]=sd.[NOVET]
			,ekp.[AFNAM]=sd.[AFNAM]
			,ekp.[TZONRC]=sd.[TZONRC]
			,ekp.[IPRKZ]=sd.[IPRKZ]
			,ekp.[LEBRE]=sd.[LEBRE]
			,ekp.[BERID]=sd.[BERID]
			,ekp.[XCONDITIONS]=sd.[XCONDITIONS]	   
			,ekp.[APOMS]=sd.[APOMS]
			,ekp.[CCOMP]=sd.[CCOMP]
			,ekp.[GRANT_NBR]=sd.[GRANT_NBR]
			,ekp.[FKBER]=sd.[FKBER]
			,ekp.[STATUS]=sd.[STATUS]
			,ekp.[RESLO]=sd.[RESLO]
			,ekp.[KBLNR]=sd.[KBLNR]
			,ekp.[KBLPOS]=sd.[KBLPOS]
			,ekp.[WEORA]=sd.[WEORA]
			,ekp.[SRV_BAS_COM]=sd.[SRV_BAS_COM]	   
			,ekp.[PRIO_URG]=sd.[PRIO_URG]
			,ekp.[PRIO_REQ]=sd.[PRIO_REQ]
			,ekp.[SPE_ABGRU]=sd.[SPE_ABGRU]
			,ekp.[SPE_CRM_SO]=sd.[SPE_CRM_SO]
			,ekp.[SPE_CRM_SO_ITEM]   =sd.[SPE_CRM_SO_ITEM]   
			,ekp.[SPE_CRM_REF_SO]	   =sd.[SPE_CRM_REF_SO]	   
			,ekp.[SPE_CRM_REF_ITEM]  =sd.[SPE_CRM_REF_ITEM]  
			,ekp.[SPE_CHNG_SYS]	   =sd.[SPE_CHNG_SYS]	   
			,ekp.[SPE_INSMK_SRC]	   =sd.[SPE_INSMK_SRC]	   
			,ekp.[SPE_CQ_CTRLTYPE]   =sd.[SPE_CQ_CTRLTYPE]   
			,ekp.[SPE_CQ_NOCQ]	   =sd.[SPE_CQ_NOCQ]	   
			,ekp.[REASON_CODE]	   =sd.[REASON_CODE]	   
			,ekp.[CQU_SAR]=sd.[CQU_SAR]
			,ekp.[/BEV1/NEGEN_ITEM]  =sd.[/BEV1/NEGEN_ITEM]  
			,ekp.[/BEV1/NEDEPFREE]   =sd.[/BEV1/NEDEPFREE]   
			,ekp.[/BEV1/NESTRUCCAT]  =sd.[/BEV1/NESTRUCCAT]  
			,ekp.[ADVCODE]=sd.[ADVCODE]
			,ekp.[EXCPE]=sd.[EXCPE]
			,ekp.[REFSITE]=sd.[REFSITE]
			,ekp.[REF_ITEM]=sd.[REF_ITEM]
			,ekp.[SOURCE_ID]=sd.[SOURCE_ID]
			,ekp.[SOURCE_KEY]=sd.[SOURCE_KEY]
			,ekp.[PUT_BACK]=sd.[PUT_BACK]
			,ekp.[POL_ID]=sd.[POL_ID]
			,ekp.[CONS_ORDER]        =sd.[CONS_ORDER]  
			,ekp.[DW_Mod_Ts]= GETDATE()
			,ekp.[DW_Mod_Usr] =USER_NAME()

WHEN NOT MATCHED
  THEN	  
	  INSERT (---[SOURCE_SYSTEM]	   
			   [MANDT]
			  ,[EBELN]
			  ,[EBELP]
			  ,[LOEKZ]
			  ,[STATU]
			  ,[AEDAT]
			  ,[TXZ01]
			  ,[MATNR]
			  ,[EMATN]
			  ,[BUKRS]
			  ,[WERKS]
			  ,[LGORT]
			  ,[BEDNR]
			  ,[MATKL]
			  ,[INFNR]
			  ,[IDNLF]
			  ,[KTMNG]
			  ,[MENGE]
			  ,[MEINS]
			  ,[BPRME]
			  ,[BPUMZ]
			  ,[BPUMN]
			  ,[UMREZ]
			  ,[UMREN]
			  ,[NETPR]
			  ,[PEINH]
			  ,[NETWR]
			  ,[BRTWR]
			  ,[AGDAT]
			  ,[WEBAZ]
			  ,[MWSKZ]
			  ,[BONUS]
			  ,[INSMK]
			  ,[SPINF]
			  ,[PRSDR]
			  ,[SCHPR]
			  ,[MAHNZ]
			  ,[MAHN1]
			  ,[MAHN2]
			  ,[MAHN3]
			  ,[UEBTO]
			  ,[UEBTK]
			  ,[UNTTO]
			  ,[BWTAR]
			  ,[BWTTY]
			  ,[ABSKZ]
			  ,[AGMEM]
			  ,[ELIKZ]
			  ,[EREKZ]
			  ,[PSTYP]
			  ,[KNTTP]
			  ,[KZVBR]
			  ,[VRTKZ]
			  ,[TWRKZ]
			  ,[WEPOS]
			  ,[WEUNB]
			  ,[REPOS]
			  ,[WEBRE]
			  ,[KZABS]
			  ,[LABNR]
			  ,[KONNR]
			  ,[KTPNR]
			  ,[ABDAT]
			  ,[ABFTZ]
			  ,[ETFZ1]
			  ,[ETFZ2]
			  ,[KZSTU]
			  ,[NOTKZ]
			  ,[LMEIN]
			  ,[EVERS]
			  ,[ZWERT]
			  ,[NAVNW]
			  ,[ABMNG]
			  ,[PRDAT]
			  ,[BSTYP]
			  ,[EFFWR]
			  ,[XOBLR]
			  ,[KUNNR]
			  ,[ADRNR]
			  ,[EKKOL]
			  ,[SKTOF]
			  ,[STAFO]
			  ,[PLIFZ]
			  ,[NTGEW]
			  ,[GEWEI]
			  ,[TXJCD]
			  ,[ETDRK]
			  ,[SOBKZ]
			  ,[ARSNR]
			  ,[ARSPS]
			  ,[INSNC]
			  ,[SSQSS]
			  ,[ZGTYP]
			  ,[EAN11]
			  ,[BSTAE]
			  ,[REVLV]
			  ,[GEBER]
			  ,[FISTL]
			  ,[FIPOS]
			  ,[KO_GSBER]
			  ,[KO_PARGB]
			  ,[KO_PRCTR]
			  ,[KO_PPRCTR]
			  ,[MEPRF]
			  ,[BRGEW]
			  ,[VOLUM]
			  ,[VOLEH]
			  ,[INCO1]
			  ,[INCO2]
			  ,[VORAB]
			  ,[KOLIF]
			  ,[LTSNR]
			  ,[PACKNO]
			  ,[FPLNR]
			  ,[GNETWR]
			  ,[STAPO]
			  ,[UEBPO]
			  ,[LEWED]
			  ,[EMLIF]
			  ,[LBLKZ]
			  ,[SATNR]
			  ,[ATTYP]
			  ,[KANBA]
			  ,[ADRN2]
			  ,[CUOBJ]
			  ,[XERSY]
			  ,[EILDT]
			  ,[DRDAT]
			  ,[DRUHR]
			  ,[DRUNR]
			  ,[AKTNR]
			  ,[ABELN]
			  ,[ABELP]
			  ,[ANZPU]
			  ,[PUNEI]
			  ,[SAISO]
			  ,[SAISJ]
			  ,[EBON2]
			  ,[EBON3]
			  ,[EBONF]
			  ,[MLMAA]
			  ,[MHDRZ]
			  ,[ANFNR]
			  ,[ANFPS]
			  ,[KZKFG]
			  ,[USEQU]
			  ,[UMSOK]
			  ,[BANFN]
			  ,[BNFPO]
			  ,[MTART]
			  ,[UPTYP]
			  ,[UPVOR]
			  ,[KZWI1]
			  ,[KZWI2]
			  ,[KZWI3]
			  ,[KZWI4]
			  ,[KZWI5]
			  ,[KZWI6]
			  ,[SIKGR]
			  ,[MFZHI]
			  ,[FFZHI]
			  ,[RETPO]
			  ,[AUREL]
			  ,[BSGRU]
			  ,[LFRET]
			  ,[MFRGR]
			  ,[NRFHG]
			  ,[J_1BNBM]
			  ,[J_1BMATUSE]
			  ,[J_1BMATORG]
			  ,[J_1BOWNPRO]
			  ,[J_1BINDUST]
			  ,[ABUEB]
			  ,[NLABD]
			  ,[NFABD]
			  ,[KZBWS]
			  ,[BONBA]
			  ,[FABKZ]
			  ,[J_1AINDXP]
			  ,[J_1AIDATEP]
			  ,[MPROF]
			  ,[EGLKZ]
			  ,[KZTLF]
			  ,[KZFME]
			  ,[RDPRF]
			  ,[TECHS]
			  ,[CHG_SRV]
			  ,[CHG_FPLNR]
			  ,[MFRPN]
			  ,[MFRNR]
			  ,[EMNFR]
			  ,[NOVET]
			  ,[AFNAM]
			  ,[TZONRC]
			  ,[IPRKZ]
			  ,[LEBRE]
			  ,[BERID]
			  ,[XCONDITIONS]	   
			  ,[APOMS]
			  ,[CCOMP]
			  ,[GRANT_NBR]
			  ,[FKBER]
			  ,[STATUS]
			  ,[RESLO]
			  ,[KBLNR]
			  ,[KBLPOS]
			  ,[WEORA]
			  ,[SRV_BAS_COM]	   
			  ,[PRIO_URG]
			  ,[PRIO_REQ]
			  ,[SPE_ABGRU]
			  ,[SPE_CRM_SO]
			  ,[SPE_CRM_SO_ITEM]   
			  ,[SPE_CRM_REF_SO]	   
			  ,[SPE_CRM_REF_ITEM]  
			  ,[SPE_CHNG_SYS]	   
			  ,[SPE_INSMK_SRC]	   
			  ,[SPE_CQ_CTRLTYPE]   
			  ,[SPE_CQ_NOCQ]	   
			  ,[REASON_CODE]	   
			  ,[CQU_SAR]
			  ,[/BEV1/NEGEN_ITEM]  
			  ,[/BEV1/NEDEPFREE]   
			  ,[/BEV1/NESTRUCCAT]  
			  ,[ADVCODE]
			  ,[EXCPE]
			  ,[REFSITE]
			  ,[REF_ITEM]
			  ,[SOURCE_ID]
			  ,[SOURCE_KEY]
			  ,[PUT_BACK]
			  ,[POL_ID]
			  ,[CONS_ORDER]
			  ,[DW_Cre_Ts]
			 -- ,[DW_Mod_Ts] 
			 ,[DW_Cre_Usr]
			  )
 
       VALUES (
              --sd.[SOURCE_SYSTEM]	               
			  sd.[MANDT]
			 ,sd.[EBELN]
			 ,sd.[EBELP]
			 ,sd.[LOEKZ]
			 ,sd.[STATU]
			 ,sd.[AEDAT]
			 ,sd.[TXZ01]
			 ,sd.[MATNR]
			 ,sd.[EMATN]
			 ,sd.[BUKRS]
			 ,sd.[WERKS]
			 ,sd.[LGORT]
			 ,sd.[BEDNR]
			 ,sd.[MATKL]
			 ,sd.[INFNR]
			 ,sd.[IDNLF]
			 ,sd.[KTMNG]
			 ,sd.[MENGE]
			 ,sd.[MEINS]
			 ,sd.[BPRME]
			 ,sd.[BPUMZ]
			 ,sd.[BPUMN]
			 ,sd.[UMREZ]
			 ,sd.[UMREN]
			 ,sd.[NETPR]
			 ,sd.[PEINH]
			 ,sd.[NETWR]
			 ,sd.[BRTWR]
			 ,sd.[AGDAT]
			 ,sd.[WEBAZ]
			 ,sd.[MWSKZ]
			 ,sd.[BONUS]
			 ,sd.[INSMK]
			 ,sd.[SPINF]
			 ,sd.[PRSDR]
			 ,sd.[SCHPR]
			 ,sd.[MAHNZ]
			 ,sd.[MAHN1]
			 ,sd.[MAHN2]
			 ,sd.[MAHN3]
			 ,sd.[UEBTO]
			 ,sd.[UEBTK]
			 ,sd.[UNTTO]
			 ,sd.[BWTAR]
			 ,sd.[BWTTY]
			 ,sd.[ABSKZ]
			 ,sd.[AGMEM]
			 ,sd.[ELIKZ]
			 ,sd.[EREKZ]
			 ,sd.[PSTYP]
			 ,sd.[KNTTP]
			 ,sd.[KZVBR]
			 ,sd.[VRTKZ]
			 ,sd.[TWRKZ]
			 ,sd.[WEPOS]
			 ,sd.[WEUNB]
			 ,sd.[REPOS]
			 ,sd.[WEBRE]
			 ,sd.[KZABS]
			 ,sd.[LABNR]
			 ,sd.[KONNR]
			 ,sd.[KTPNR]
			 ,sd.[ABDAT]
			 ,sd.[ABFTZ]
			 ,sd.[ETFZ1]
			 ,sd.[ETFZ2]
			 ,sd.[KZSTU]
			 ,sd.[NOTKZ]
			 ,sd.[LMEIN]
			 ,sd.[EVERS]
			 ,sd.[ZWERT]
			 ,sd.[NAVNW]
			 ,sd.[ABMNG]
			 ,sd.[PRDAT]
			 ,sd.[BSTYP]
			 ,sd.[EFFWR]
			 ,sd.[XOBLR]
			 ,sd.[KUNNR]
			 ,sd.[ADRNR]
			 ,sd.[EKKOL]
			 ,sd.[SKTOF]
			 ,sd.[STAFO]
			 ,sd.[PLIFZ]
			 ,sd.[NTGEW]
			 ,sd.[GEWEI]
			 ,sd.[TXJCD]
			 ,sd.[ETDRK]
			 ,sd.[SOBKZ]
			 ,sd.[ARSNR]
			 ,sd.[ARSPS]
			 ,sd.[INSNC]
			 ,sd.[SSQSS]
			 ,sd.[ZGTYP]
			 ,sd.[EAN11]
			 ,sd.[BSTAE]
			 ,sd.[REVLV]
			 ,sd.[GEBER]
			 ,sd.[FISTL]
			 ,sd.[FIPOS]
			 ,sd.[KO_GSBER]
			 ,sd.[KO_PARGB]
			 ,sd.[KO_PRCTR]
			 ,sd.[KO_PPRCTR]
			 ,sd.[MEPRF]
			 ,sd.[BRGEW]
			 ,sd.[VOLUM]
			 ,sd.[VOLEH]
			 ,sd.[INCO1]
			 ,sd.[INCO2]
			 ,sd.[VORAB]
			 ,sd.[KOLIF]
			 ,sd.[LTSNR]
			 ,sd.[PACKNO]
			 ,sd.[FPLNR]
			 ,sd.[GNETWR]
			 ,sd.[STAPO]
			 ,sd.[UEBPO]
			 ,sd.[LEWED]
			 ,sd.[EMLIF]
			 ,sd.[LBLKZ]
			 ,sd.[SATNR]
			 ,sd.[ATTYP]
			 ,sd.[KANBA]
			 ,sd.[ADRN2]
			 ,sd.[CUOBJ]
			 ,sd.[XERSY]
			 ,sd.[EILDT]
			 ,sd.[DRDAT]
			 ,sd.[DRUHR]
			 ,sd.[DRUNR]
			 ,sd.[AKTNR]
			 ,sd.[ABELN]
			 ,sd.[ABELP]
			 ,sd.[ANZPU]
			 ,sd.[PUNEI]
			 ,sd.[SAISO]
			 ,sd.[SAISJ]
			 ,sd.[EBON2]
			 ,sd.[EBON3]
			 ,sd.[EBONF]
			 ,sd.[MLMAA]
			 ,sd.[MHDRZ]
			 ,sd.[ANFNR]
			 ,sd.[ANFPS]
			 ,sd.[KZKFG]
			 ,sd.[USEQU]
			 ,sd.[UMSOK]
			 ,sd.[BANFN]
			 ,sd.[BNFPO]
			 ,sd.[MTART]
			 ,sd.[UPTYP]
			 ,sd.[UPVOR]
			 ,sd.[KZWI1]
			 ,sd.[KZWI2]
			 ,sd.[KZWI3]
			 ,sd.[KZWI4]
			 ,sd.[KZWI5]
			 ,sd.[KZWI6]
			 ,sd.[SIKGR]
			 ,sd.[MFZHI]
			 ,sd.[FFZHI]
			 ,sd.[RETPO]
			 ,sd.[AUREL]
			 ,sd.[BSGRU]
			 ,sd.[LFRET]
			 ,sd.[MFRGR]
			 ,sd.[NRFHG]
			 ,sd.[J_1BNBM]
			 ,sd.[J_1BMATUSE]
			 ,sd.[J_1BMATORG]
			 ,sd.[J_1BOWNPRO]
			 ,sd.[J_1BINDUST]
			 ,sd.[ABUEB]
			 ,sd.[NLABD]
			 ,sd.[NFABD]
			 ,sd.[KZBWS]
			 ,sd.[BONBA]
			 ,sd.[FABKZ]
			 ,sd.[J_1AINDXP]
			 ,sd.[J_1AIDATEP]
			 ,sd.[MPROF]
			 ,sd.[EGLKZ]
			 ,sd.[KZTLF]
			 ,sd.[KZFME]
			 ,sd.[RDPRF]
			 ,sd.[TECHS]
			 ,sd.[CHG_SRV]
			 ,sd.[CHG_FPLNR]
			 ,sd.[MFRPN]
			 ,sd.[MFRNR]
			 ,sd.[EMNFR]
			 ,sd.[NOVET]
			 ,sd.[AFNAM]
			 ,sd.[TZONRC]
			 ,sd.[IPRKZ]
			 ,sd.[LEBRE]
			 ,sd.[BERID]
			 ,sd.[XCONDITIONS]	   
			 ,sd.[APOMS]
			 ,sd.[CCOMP]
			 ,sd.[GRANT_NBR]
			 ,sd.[FKBER]
			 ,sd.[STATUS]
			 ,sd.[RESLO]
			 ,sd.[KBLNR]
			 ,sd.[KBLPOS]
			 ,sd.[WEORA]
			 ,sd.[SRV_BAS_COM]	   
			 ,sd.[PRIO_URG]
			 ,sd.[PRIO_REQ]
			 ,sd.[SPE_ABGRU]
			 ,sd.[SPE_CRM_SO]
			 ,sd.[SPE_CRM_SO_ITEM]   
			 ,sd.[SPE_CRM_REF_SO]	   
			 ,sd.[SPE_CRM_REF_ITEM]  
			 ,sd.[SPE_CHNG_SYS]	   
			 ,sd.[SPE_INSMK_SRC]	   
			 ,sd.[SPE_CQ_CTRLTYPE]   
			 ,sd.[SPE_CQ_NOCQ]	   
			 ,sd.[REASON_CODE]	   
			 ,sd.[CQU_SAR]
			 ,sd.[/BEV1/NEGEN_ITEM]  
			 ,sd.[/BEV1/NEDEPFREE]   
			 ,sd.[/BEV1/NESTRUCCAT]  
			 ,sd.[ADVCODE]
			 ,sd.[EXCPE]
			 ,sd.[REFSITE]
			 ,sd.[REF_ITEM]
			 ,sd.[SOURCE_ID]
			 ,sd.[SOURCE_KEY]
			 ,sd.[PUT_BACK]
			 ,sd.[POL_ID]
			 ,sd.[CONS_ORDER]
			 ,GETDATE()
			 ,USER_NAME() 
			 )
			 
			 
			 
OUTPUT $action INTO @tableVar;
SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
		
FROM  (
   -- Count the number of inserts
   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT' 
   UNION ALL
   -- Count the number of updates   <=== GIVING UPDATES AND DELETES
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE') as CountTable;  

EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_EKPO_SP',  @Rows_Insrt, @Rows_Updt, null,null, 'Y'
;

END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_KEKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_DQ_LOAD_KEKO]
AS
SET NOCOUNT ON
BEGIN
	BEGIN TRY
		BEGIN
		
		MERGE KLA_ECC.dbo.KEKO AS coe
USING (
	SELECT *
	FROM STG.STG_KEKO WITH(NOLOCK)
	) AS sd
	ON coe.[MANDT] = sd.[MANDT]
	AND coe.[BZOBJ] = sd.[BZOBJ]
	AND coe.[KALNR] = sd.[KALNR]
	AND coe.[KALKA] = sd.[KALKA]
	AND coe.[KADKY] = sd.[KADKY]
	AND coe.[TVERS] = sd.[TVERS]
	AND coe.[BWVAR] = sd.[BWVAR]
	AND coe.[KKZMA] = sd.[KKZMA]
	
WHEN MATCHED
	THEN
		UPDATE
		SET 	coe.[MANDT] = sd.[MANDT],
      coe.[BZOBJ] = sd.[BZOBJ],
      coe.[KALNR] = sd.[KALNR],
      coe.[KALKA] = sd.[KALKA],
      coe.[KADKY] = sd.[KADKY],
      coe.[TVERS] = sd.[TVERS],
      coe.[BWVAR] = sd.[BWVAR],
      coe.[KKZMA] = sd.[KKZMA],
      coe.[MATNR] = sd.[MATNR],
      coe.[WERKS] = sd.[WERKS],
      coe.[BWKEY] = sd.[BWKEY],
      coe.[BWTAR] = sd.[BWTAR],
      coe.[KOKRS] = sd.[KOKRS],
      coe.[KADAT] = sd.[KADAT],
      coe.[BIDAT] = sd.[BIDAT],
      coe.[KADAM] = sd.[KADAM],
      coe.[BIDAM] = sd.[BIDAM],
      coe.[BWDAT] = sd.[BWDAT],
      coe.[ALDAT] = sd.[ALDAT],
      coe.[BEDAT] = sd.[BEDAT],
      coe.[VERID] = sd.[VERID],
      coe.[STNUM] = sd.[STNUM],
      coe.[STLAN] = sd.[STLAN],
      coe.[STALT] = sd.[STALT],
      coe.[STCNT] = sd.[STCNT],
      coe.[PLNNR] = sd.[PLNNR],
      coe.[PLNTY] = sd.[PLNTY],
      coe.[PLNAL] = sd.[PLNAL],
      coe.[PLNCT] = sd.[PLNCT],
      coe.[LOEKZ] = sd.[LOEKZ],
      coe.[LOSGR] = sd.[LOSGR],
      coe.[MEINS] = sd.[MEINS],
      coe.[ERFNM] = sd.[ERFNM],
      coe.[ERFMA] = sd.[ERFMA],
      coe.[CPUDT] = sd.[CPUDT],
      coe.[CPUDM] = sd.[CPUDM],
      coe.[CPUTIME] = sd.[CPUTIME],
      coe.[FEH_ANZ] = sd.[FEH_ANZ],
      coe.[FEH_K_ANZ] = sd.[FEH_K_ANZ],
      coe.[FEH_STA] = sd.[FEH_STA],
      coe.[MAXMSG] = sd.[MAXMSG],
      coe.[FREIG] = sd.[FREIG],
      coe.[MKALK] = sd.[MKALK],
      coe.[BALTKZ] = sd.[BALTKZ],
      coe.[KALNR_BA] = sd.[KALNR_BA],
      coe.[BTYP] = sd.[BTYP],
      coe.[MISCH_VERH] = sd.[MISCH_VERH],
      coe.[BWVAR_BA] = sd.[BWVAR_BA],
      coe.[PLSCN] = sd.[PLSCN],
      coe.[PLMNG] = sd.[PLMNG],
      coe.[SOBSL] = sd.[SOBSL],
      coe.[SOBES] = sd.[SOBES],
      coe.[SOWRK] = sd.[SOWRK],
      coe.[SOBWT] = sd.[SOBWT],
      coe.[SODIR] = sd.[SODIR],
      coe.[SODUM] = sd.[SODUM],
      coe.[KALSM] = sd.[KALSM],
      coe.[AUFZA] = sd.[AUFZA],
      coe.[BWSMR] = sd.[BWSMR],
      coe.[SUBSTRAT] = sd.[SUBSTRAT],
      coe.[KLVAR] = sd.[KLVAR],
      coe.[KOSGR] = sd.[KOSGR],
      coe.[ZSCHL] = sd.[ZSCHL],
      coe.[POPER] = sd.[POPER],
      coe.[BDATJ] = sd.[BDATJ],
      coe.[STKOZ] = sd.[STKOZ],
      coe.[ZAEHL] = sd.[ZAEHL],
      coe.[TOPKA] = sd.[TOPKA],
      coe.[CMF_NR] = sd.[CMF_NR],
      coe.[OCS_COUNT] = sd.[OCS_COUNT],
      coe.[OBJNR] = sd.[OBJNR],
      coe.[ERZKA] = sd.[ERZKA],
      coe.[LOSAU] = sd.[LOSAU],
      coe.[AUSID] = sd.[AUSID],
      coe.[AUSSS] = sd.[AUSSS],
      coe.[SAPRL] = sd.[SAPRL],
      coe.[KZROH] = sd.[KZROH],
      coe.[AUFPL] = sd.[AUFPL],
      coe.[CUOBJ] = sd.[CUOBJ],
      coe.[CUOBJID] = sd.[CUOBJID],
      coe.[TECHS] = sd.[TECHS],
      coe.[TYPE] = sd.[TYPE],
      coe.[WRKLT] = sd.[WRKLT],
      coe.[VORMDAT] = sd.[VORMDAT],
      coe.[VORMUSR] = sd.[VORMUSR],
      coe.[FREIDAT] = sd.[FREIDAT],
      coe.[FREIUSR] = sd.[FREIUSR],
      coe.[UEBID] = sd.[UEBID],
      coe.[PROZESS] = sd.[PROZESS],
      coe.[PR_VERID] = sd.[PR_VERID],
      coe.[CSPLIT] = sd.[CSPLIT],
      coe.[KZKUP] = sd.[KZKUP],
      coe.[FXPRU] = sd.[FXPRU],
      coe.[CFXPR] = sd.[CFXPR],
      coe.[ZIFFR] = sd.[ZIFFR],
      coe.[SUMZIFFR] = sd.[SUMZIFFR],
      coe.[AFAKT] = sd.[AFAKT],
      coe.[VBELN] = sd.[VBELN],
      coe.[POSNR] = sd.[POSNR],
      coe.[PSPNR] = sd.[PSPNR],
      coe.[SBDKZ] = sd.[SBDKZ],
      coe.[MLMAA] = sd.[MLMAA],
      coe.[BESKZ] = sd.[BESKZ],
      coe.[DISST] = sd.[DISST],
      coe.[KALST] = sd.[KALST],
      coe.[TEMPLATE] = sd.[TEMPLATE],
      coe.[PATNR] = sd.[PATNR],
      coe.[PART_VRSN] = sd.[PART_VRSN],
      coe.[ELEHK] = sd.[ELEHK],
      coe.[ELEHKNS] = sd.[ELEHKNS],
      coe.[VOCNT] = sd.[VOCNT],
      coe.[GSBER] = sd.[GSBER],
      coe.[PRCTR] = sd.[PRCTR],
      coe.[TPVAR] = sd.[TPVAR],
      coe.[KURST] = sd.[KURST],
      coe.[MGTYP] = sd.[MGTYP],
      coe.[HWAER] = sd.[HWAER],
      coe.[FWAER_KPF] = sd.[FWAER_KPF],
      coe.[REFID] = sd.[REFID],
      coe.[MEINH_WS] = sd.[MEINH_WS],
      coe.[KZWSO] = sd.[KZWSO],
      coe.[ASL] = sd.[ASL],
      coe.[KALAID] = sd.[KALAID],
      coe.[KALADAT] = sd.[KALADAT],
      coe.[OTYP] = sd.[OTYP],
      coe.[BAPI_CREATED] = sd.[BAPI_CREATED]
		
WHEN NOT MATCHED
	THEN
		
	-- Inserting the data ----
	INSERT ( 
	  [MANDT]
      ,[BZOBJ]
      ,[KALNR]
      ,[KALKA]
      ,[KADKY]
      ,[TVERS]
      ,[BWVAR]
      ,[KKZMA]
      ,[MATNR]
      ,[WERKS]
      ,[BWKEY]
      ,[BWTAR]
      ,[KOKRS]
      ,[KADAT]
      ,[BIDAT]
      ,[KADAM]
      ,[BIDAM]
      ,[BWDAT]
      ,[ALDAT]
      ,[BEDAT]
      ,[VERID]
      ,[STNUM]
      ,[STLAN]
      ,[STALT]
      ,[STCNT]
      ,[PLNNR]
      ,[PLNTY]
      ,[PLNAL]
      ,[PLNCT]
      ,[LOEKZ]
      ,[LOSGR]
      ,[MEINS]
      ,[ERFNM]
      ,[ERFMA]
      ,[CPUDT]
      ,[CPUDM]
      ,[CPUTIME]
      ,[FEH_ANZ]
      ,[FEH_K_ANZ]
      ,[FEH_STA]
      ,[MAXMSG]
      ,[FREIG]
      ,[MKALK]
      ,[BALTKZ]
      ,[KALNR_BA]
      ,[BTYP]
      ,[MISCH_VERH]
      ,[BWVAR_BA]
      ,[PLSCN]
      ,[PLMNG]
      ,[SOBSL]
      ,[SOBES]
      ,[SOWRK]
      ,[SOBWT]
      ,[SODIR]
      ,[SODUM]
      ,[KALSM]
      ,[AUFZA]
      ,[BWSMR]
      ,[SUBSTRAT]
      ,[KLVAR]
      ,[KOSGR]
      ,[ZSCHL]
      ,[POPER]
      ,[BDATJ]
      ,[STKOZ]
      ,[ZAEHL]
      ,[TOPKA]
      ,[CMF_NR]
      ,[OCS_COUNT]
      ,[OBJNR]
      ,[ERZKA]
      ,[LOSAU]
      ,[AUSID]
      ,[AUSSS]
      ,[SAPRL]
      ,[KZROH]
      ,[AUFPL]
      ,[CUOBJ]
      ,[CUOBJID]
      ,[TECHS]
      ,[TYPE]
      ,[WRKLT]
      ,[VORMDAT]
      ,[VORMUSR]
      ,[FREIDAT]
      ,[FREIUSR]
      ,[UEBID]
      ,[PROZESS]
      ,[PR_VERID]
      ,[CSPLIT]
      ,[KZKUP]
      ,[FXPRU]
      ,[CFXPR]
      ,[ZIFFR]
      ,[SUMZIFFR]
      ,[AFAKT]
      ,[VBELN]
      ,[POSNR]
      ,[PSPNR]
      ,[SBDKZ]
      ,[MLMAA]
      ,[BESKZ]
      ,[DISST]
      ,[KALST]
      ,[TEMPLATE]
      ,[PATNR]
      ,[PART_VRSN]
      ,[ELEHK]
      ,[ELEHKNS]
      ,[VOCNT]
      ,[GSBER]
      ,[PRCTR]
      ,[TPVAR]
      ,[KURST]
      ,[MGTYP]
      ,[HWAER]
      ,[FWAER_KPF]
      ,[REFID]
      ,[MEINH_WS]
      ,[KZWSO]
      ,[ASL]
      ,[KALAID]
      ,[KALADAT]
      ,[OTYP]
      ,[BAPI_CREATED]
	  )
	  values(
	  sd.[MANDT]
      ,sd.[BZOBJ]
      ,sd.[KALNR]
      ,sd.[KALKA]
      ,sd.[KADKY]
      ,sd.[TVERS]
      ,sd.[BWVAR]
      ,sd.[KKZMA]
      ,sd.[MATNR]
      ,sd.[WERKS]
      ,sd.[BWKEY]
      ,sd.[BWTAR]
      ,sd.[KOKRS]
      ,sd.[KADAT]
      ,sd.[BIDAT]
      ,sd.[KADAM]
      ,sd.[BIDAM]
      ,sd.[BWDAT]
      ,sd.[ALDAT]
      ,sd.[BEDAT]
      ,sd.[VERID]
      ,sd.[STNUM]
      ,sd.[STLAN]
      ,sd.[STALT]
      ,sd.[STCNT]
      ,sd.[PLNNR]
      ,sd.[PLNTY]
      ,sd.[PLNAL]
      ,sd.[PLNCT]
      ,sd.[LOEKZ]
      ,sd.[LOSGR]
      ,sd.[MEINS]
      ,sd.[ERFNM]
      ,sd.[ERFMA]
      ,sd.[CPUDT]
      ,sd.[CPUDM]
      ,sd.[CPUTIME]
      ,sd.[FEH_ANZ]
      ,sd.[FEH_K_ANZ]
      ,sd.[FEH_STA]
      ,sd.[MAXMSG]
      ,sd.[FREIG]
      ,sd.[MKALK]
      ,sd.[BALTKZ]
      ,sd.[KALNR_BA]
      ,sd.[BTYP]
      ,sd.[MISCH_VERH]
      ,sd.[BWVAR_BA]
      ,sd.[PLSCN]
      ,sd.[PLMNG]
      ,sd.[SOBSL]
      ,sd.[SOBES]
      ,sd.[SOWRK]
      ,sd.[SOBWT]
      ,sd.[SODIR]
      ,sd.[SODUM]
      ,sd.[KALSM]
      ,sd.[AUFZA]
      ,sd.[BWSMR]
      ,sd.[SUBSTRAT]
      ,sd.[KLVAR]
      ,sd.[KOSGR]
      ,sd.[ZSCHL]
      ,sd.[POPER]
      ,sd.[BDATJ]
      ,sd.[STKOZ]
      ,sd.[ZAEHL]
      ,sd.[TOPKA]
      ,sd.[CMF_NR]
      ,sd.[OCS_COUNT]
      ,sd.[OBJNR]
      ,sd.[ERZKA]
      ,sd.[LOSAU]
      ,sd.[AUSID]
      ,sd.[AUSSS]
      ,sd.[SAPRL]
      ,sd.[KZROH]
      ,sd.[AUFPL]
      ,sd.[CUOBJ]
      ,sd.[CUOBJID]
      ,sd.[TECHS]
      ,sd.[TYPE]
      ,sd.[WRKLT]
      ,sd.[VORMDAT]
      ,sd.[VORMUSR]
      ,sd.[FREIDAT]
      ,sd.[FREIUSR]
      ,sd.[UEBID]
      ,sd.[PROZESS]
      ,sd.[PR_VERID]
      ,sd.[CSPLIT]
      ,sd.[KZKUP]
      ,sd.[FXPRU]
      ,sd.[CFXPR]
      ,sd.[ZIFFR]
      ,sd.[SUMZIFFR]
      ,sd.[AFAKT]
      ,sd.[VBELN]
      ,sd.[POSNR]
      ,sd.[PSPNR]
      ,sd.[SBDKZ]
      ,sd.[MLMAA]
      ,sd.[BESKZ]
      ,sd.[DISST]
      ,sd.[KALST]
      ,sd.[TEMPLATE]
      ,sd.[PATNR]
      ,sd.[PART_VRSN]
      ,sd.[ELEHK]
      ,sd.[ELEHKNS]
      ,sd.[VOCNT]
      ,sd.[GSBER]
      ,sd.[PRCTR]
      ,sd.[TPVAR]
      ,sd.[KURST]
      ,sd.[MGTYP]
      ,sd.[HWAER]
      ,sd.[FWAER_KPF]
      ,sd.[REFID]
      ,sd.[MEINH_WS]
      ,sd.[KZWSO]
      ,sd.[ASL]
      ,sd.[KALAID]
      ,sd.[KALADAT]
      ,sd.[OTYP]
      ,sd.[BAPI_CREATED]
	  );
				
		END
	END TRY

BEGIN CATCH
	END CATCH

SET NOCOUNT OFF	
END









GO
/****** Object:  StoredProcedure [dbo].[USP_Load_Aufk]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_Load_Aufk]

AS
BEGIN
BEGIN TRY
DECLARE @GETDATE DATETIME=GETDATE();
DECLARE @Rows_Insrt INTEGER
DECLARE @Rows_Del  INTEGER

       SELECT @Rows_Del= COUNT(1) from dbo.AUFK 

			
EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_AUFK_SP',@GETDATE,null,null,null,null,null 
              ;

	---Truncating the table 
	TRUNCATE TABLE dbo.AUFK

	-- Tnserting the data ----
	INSERT INTO [dbo].[AUFK]
	        ( MANDT ,
			  AUFNR ,
	          AUART ,
	          AUTYP ,
	          REFNR ,
	          ERNAM ,
	          ERDAT ,
	          AENAM ,
	          AEDAT ,
	          KTEXT ,
	          LTEXT ,
	          BUKRS ,
	          WERKS ,
	          GSBER ,
	          KOKRS ,
	          CCKEY ,
	          KOSTV ,
	          STORT ,
	          SOWRK ,
	          ASTKZ ,
	          WAERS ,
	          ASTNR ,
	          STDAT ,
	          ESTNR ,
	          PHAS0 ,
	          PHAS1 ,
	          PHAS2 ,
	          PHAS3 ,
	          PDAT1 ,
	          PDAT2 ,
	          PDAT3 ,
	          IDAT1 ,
	          IDAT2 ,
	          IDAT3 ,
	          OBJID ,
	          VOGRP ,
	          LOEKZ ,
	          PLGKZ ,
	          KVEWE ,
	          KAPPL ,
	          KALSM ,
	          ZSCHL ,
	       --   ABKRS ,
	          KSTAR ,
	          KOSTL ,
	          SAKNR ,
	          SETNM ,
	          CYCLE ,
	          SDATE ,
	          SEQNR ,
	          USER0 ,
	          USER1 ,
	          USER2 ,
	          USER3 ,
	          USER4 ,
	          USER5 ,
	          USER6 ,
	          USER7 ,
	          USER8 ,
	          USER9 ,
	          OBJNR ,
	          PRCTR ,
	       --   PSPEL ,
	          AWSLS ,
	          ABGSL ,
	          TXJCD ,
	          FUNC_AREA ,
	          SCOPE ,
	          PLINT ,
	          KDAUF ,
	          KDPOS ,
	          AUFEX ,
	          IVPRO ,
	          LOGSYSTEM ,
	          FLG_MLTPS ,
	          ABUKR ,
	          AKSTL ,
	          SIZECL ,
	          IZWEK ,
	          UMWKZ ,
	          KSTEMPF ,
	          ZSCHM ,
	          PKOSA ,
	          ANFAUFNR ,
	          PROCNR ,
	          PROTY ,
	          RSORD ,
	          BEMOT ,
	          ADRNRA ,
	          ERFZEIT ,
	          AEZEIT ,
	          CSTG_VRNT ,
	          COSTESTNR ,
	          VERAA_USER ,
	          VNAME ,
	          RECID ,
	          ETYPE ,
	          OTYPE ,
	          JV_JIBCL ,
	          JV_JIBSA ,
	          JV_OCO ,
	          VAPLZ ,
	          WAWRK ,
	          FERC_IND, 
			  [DW_Cre_Ts],
			  [DW_Cre_Usr]

	        )
 SELECT        MANDT ,
	          AUFNR ,
	          AUART ,
	          AUTYP ,
	          REFNR ,
	          ERNAM ,
	          ERDAT ,
	          AENAM ,
	          AEDAT ,
	          KTEXT ,
	          LTEXT ,
	          BUKRS ,
	          WERKS ,
	          GSBER ,
	          KOKRS ,
	          CCKEY ,
	          KOSTV ,
	          STORT ,
	          SOWRK ,
	          ASTKZ ,
	          WAERS ,
	          ASTNR ,
	          STDAT ,
	          ESTNR ,
	          PHAS0 ,
	          PHAS1 ,
	          PHAS2 ,
	          PHAS3 ,
	          PDAT1 ,
	          PDAT2 ,
	          PDAT3 ,
	          IDAT1 ,
	          IDAT2 ,
	          IDAT3 ,
	          OBJID ,
	          VOGRP ,
	          LOEKZ ,
	          PLGKZ ,
	          KVEWE ,
	          KAPPL ,
	          KALSM ,
	          ZSCHL ,
	         -- ABKRS ,
	          KSTAR ,
	          KOSTL ,
	          SAKNR ,
	          SETNM ,
	          CYCLE ,
	          SDATE ,
	          SEQNR ,
	          USER0 ,
	          USER1 ,
	          USER2 ,
	          USER3 ,
	          USER4 ,
	          USER5 ,
	          USER6 ,
	          USER7 ,
	          USER8 ,
	          USER9 ,
	          OBJNR ,
	          PRCTR ,
	         -- PSPEL ,
	          AWSLS ,
	          ABGSL ,
	          TXJCD ,
	          FUNC_AREA ,
	          SCOPE ,
	          PLINT ,
	          KDAUF ,
	          KDPOS ,
	          AUFEX ,
	          IVPRO ,
	          LOGSYSTEM ,
	          FLG_MLTPS ,
	          ABUKR ,
	          AKSTL ,
	          SIZECL ,
	          IZWEK ,
	          UMWKZ ,
	          KSTEMPF ,
	          ZSCHM ,
	          PKOSA ,
	          ANFAUFNR ,
	          PROCNR ,
	          PROTY ,
	          RSORD ,
	          BEMOT ,
	          ADRNRA ,
	          ERFZEIT ,
	          AEZEIT ,
	          CSTG_VRNT ,
	          COSTESTNR ,
	          VERAA_USER ,
	          VNAME ,
	          RECID ,
	          ETYPE ,
	          OTYPE ,
	          JV_JIBCL ,
	          JV_JIBSA ,
	          JV_OCO ,
	          VAPLZ ,
	          WAWRK ,
	          FERC_IND, 
			  getdate(),
			  user_name()
	FROM [KLA_ECC].STG.[STG_AUFK];

 SELECT @Rows_Insrt= COUNT(1) from dbo.AUFK


EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'Master Data','KLA_AUFK_SP',  @Rows_Insrt,null, @Rows_Del, null, 'Y';


  END TRY

BEGIN CATCH
     END CATCH
END






GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PTRV_HEAD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_LOAD_PTRV_HEAD]
AS
BEGIN
	BEGIN TRY
		BEGIN

	DECLARE @GETDATE DATETIME=GETDATE();
	DECLARE @Rows_Insrt INTEGER
	DECLARE @Rows_Del INT

	SELECT @Rows_Del =count(1) from [KLA_ECC].dbo.PTRV_HEAD	


	EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_PTRV_HEAD_SP',@GETDATE,null,null,null,null,null 
		;
			---Truncating the table 
			TRUNCATE TABLE [KLA_ECC].dbo.PTRV_HEAD

			-- inserting the data ----
			INSERT INTO [KLA_ECC].[dbo].[PTRV_HEAD] (
				[MANDT]
				,[PERNR]
				,[REINR]
				,[HDVRS]
				,[MOLGA]
				,[MOREI]
				,[SCHEM]
				,[KZREA]
				,[BEREI]
				,[KZTKT]
				,[ZORT1]
				,[ZLAND]
				,[HRGIO]
				,[NDNST]
				,[KUNDE]
				,[DATV1]
				,[UHRV1]
				,[DATB1]
				,[UHRB1]
				,[DATH1]
				,[UHRH1]
				,[DATR1]
				,[UHRR1]
				,[AGRZ1]
				,[GRGIO]
				,[GRBER]
				,[UZKVG]
				,[ZUSAG]
				,[ENDRG]
				,[DEPAR]
				,[ARRVL]
				,[RETRN]
				,[DATES]
				,[TIMES]
				,[UNAME]
				,[REPID]
				,[DANTN]
				,[FINTN]
				,[REQUEST]
				,[TRAVEL_PLAN]
				,[EXPENSES]
				,[ST_TRGTG]
				,[ST_TRGALL]
				,[PERIODENART]
				,[DAT_REDUC1]
				,[DAT_REDUC2]
				,[DATV1_DIENST]
				,[UHRV1_DIENST]
				,[DATB1_DIENST]
				,[UHRB1_DIENST]
				,[ABORDNUNG]
				,[ST_TRG_TYP]
				,[ST_WOHN_TYP]
				,[KEIN_REISEGELD]
				,[TAX_PER_DIEM]
				,[TAX_PD_MAN]
				,[TAX_OV_MAN]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr] 
				)
			SELECT [MANDT]
				,[PERNR]
				,[REINR]
				,[HDVRS]
				,[MOLGA]
				,[MOREI]
				,[SCHEM]
				,[KZREA]
				,[BEREI]
				,[KZTKT]
				,[ZORT1]
				,[ZLAND]
				,[HRGIO]
				,[NDNST]
				,[KUNDE]
				,[DATV1]
				,[UHRV1]
				,[DATB1]
				,[UHRB1]
				,[DATH1]
				,[UHRH1]
				,[DATR1]
				,[UHRR1]
				,[AGRZ1]
				,[GRGIO]
				,[GRBER]
				,[UZKVG]
				,[ZUSAG]
				,[ENDRG]
				,[DEPAR]
				,[ARRVL]
				,[RETRN]
				,[DATES]
				,[TIMES]
				,[UNAME]
				,[REPID]
				,[DANTN]
				,[FINTN]
				,[REQUEST]
				,[TRAVEL_PLAN]
				,[EXPENSES]
				,[ST_TRGTG]
				,[ST_TRGALL]
				,[PERIODENART]
				,[DAT_REDUC1]
				,[DAT_REDUC2]
				,[DATV1_DIENST]
				,[UHRV1_DIENST]
				,[DATB1_DIENST]
				,[UHRB1_DIENST]
				,[ABORDNUNG]
				,[ST_TRG_TYP]
				,[ST_WOHN_TYP]
				,[KEIN_REISEGELD]
				,[TAX_PER_DIEM]
				,[TAX_PD_MAN]
				,[TAX_OV_MAN]
				,GETDATE()
				,USER_NAME()
			FROM [KLA_ECC].[STG].[STG_PTRV_HEAD]

			 SELECT @Rows_Insrt= COUNT(1) from  [KLA_ECC].dbo.PTRV_HEAD

			 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_PTRV_HEAD_SP',  @Rows_Insrt, null, @Rows_Del,null, 'Y';
		END
	END TRY

	BEGIN CATCH
	END CATCH
END







GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PTRV_PERIO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_LOAD_PTRV_PERIO]
AS
BEGIN
	BEGIN TRY
		BEGIN

	DECLARE @GETDATE DATETIME=GETDATE();
	DECLARE @Rows_Insrt INTEGER
	DECLARE @Rows_Del INT

	SELECT @Rows_Del =count(1) from [KLA_ECC].dbo.PTRV_PERIO


	EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_PTRV_PERIO_SP',@GETDATE,null,null,null,null,null ;


			---Truncating the table 
			TRUNCATE TABLE dbo.[PTRV_PERIO]

			-- inserting the data ----
			INSERT INTO [dbo].[PTRV_PERIO] (
				[MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[PDVRS]
				,[HDVRS]
				,[PDATV]
				,[PUHRV]
				,[PDATB]
				,[PUHRB]
				,[DRUCK]
				,[ANTRG]
				,[ABREC]
				,[UEBLG]
				,[UEBRF]
				,[UEBDT]
				,[TLOCK]
				,[WAERS]
				,[ABRJ1]
				,[ABRP1]
				,[PERM1]
				,[ABKR1]
				,[BEGP1]
				,[ENDP1]
				,[ABRJ2]
				,[ABRP2]
				,[PERM2]
				,[ABKR2]
				,[BEGP2]
				,[ENDP2]
				,[ACCDT]
				,[ACCTM]
				,[RUNID]
				,[VERPA]
				,[UEBKZ]
				,[ANUEP]
				,[NO_MILES]
				,[LSTAY]
				,[TR_DOPP_ANZAHL]
				,[TR_EINF_ANZAHL]
				,[TR_ENTFERNUNG]
				,[VU_EA_DOPP_ANZ]
				,[VU_EA_EINF_ANZ]
				,[VU_EA_ENTFERN]
				,[VU_EA_KM_SATZ]
				,[NU_EA_DOPP_ANZ]
				,[NU_EA_EINF_ANZ]
				,[NU_EA_ENTFERN]
				,[NU_EA_KM_SATZ]
				,[V_UNENTGELTLICH]
				,[U_UNENTGELTLICH]
				,[REDUC_ERGRU]
				,[NOT_PAID]
				,[WEG_ERH_MAX]
				,[ERH_DIENST_INT]
				,[ENTF_WO_DO]
				,[DRITTMITTEL]
				,[ANTRAG_GWE]
				--,[POLICY_VIOLATION]
				--,[EXCEPTION_FLAG]
				--,[NR_RECEIPTS]
				--,[PERM_TRIP_APPR]
				--,[TR_NR_FROM_HOME]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr] 
				)
			SELECT [MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[PDVRS]
				,[HDVRS]
				,[PDATV]
				,[PUHRV]
				,[PDATB]
				,[PUHRB]
				,[DRUCK]
				,[ANTRG]
				,[ABREC]
				,[UEBLG]
				,[UEBRF]
				,[UEBDT]
				,[TLOCK]
				,[WAERS]
				,[ABRJ1]
				,[ABRP1]
				,[PERM1]
				,[ABKR1]
				,[BEGP1]
				,[ENDP1]
				,[ABRJ2]
				,[ABRP2]
				,[PERM2]
				,[ABKR2]
				,[BEGP2]
				,[ENDP2]
				,[ACCDT]
				,[ACCTM]
				,[RUNID]
				,[VERPA]
				,[UEBKZ]
				,[ANUEP]
				,[NO_MILES]
				,[LSTAY]
				,[TR_DOPP_ANZAHL]
				,[TR_EINF_ANZAHL]
				,[TR_ENTFERNUNG]
				,[VU_EA_DOPP_ANZ]
				,[VU_EA_EINF_ANZ]
				,[VU_EA_ENTFERN]
				,[VU_EA_KM_SATZ]
				,[NU_EA_DOPP_ANZ]
				,[NU_EA_EINF_ANZ]
				,[NU_EA_ENTFERN]
				,[NU_EA_KM_SATZ]
				,[V_UNENTGELTLICH]
				,[U_UNENTGELTLICH]
				,[REDUC_ERGRU]
				,[NOT_PAID]
				,[WEG_ERH_MAX]
				,[ERH_DIENST_INT]
				,[ENTF_WO_DO]
				,[DRITTMITTEL]
				,[ANTRAG_GWE]
				--,[POLICY_VIOLATION]
				--,[EXCEPTION_FLAG]
				--,[NR_RECEIPTS]
				--,[PERM_TRIP_APPR]
				--,[TR_NR_FROM_HOME]
				,getdate()
				,user_name()
			FROM STG.[STG_PTRV_PERIO];
						 SELECT @Rows_Insrt= COUNT(1) from  [KLA_ECC].[dbo].[PTRV_PERIO]

			 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_PTRV_PERIO_SP',  @Rows_Insrt, null, @Rows_Del,null, 'Y';
		END
	END TRY

	BEGIN CATCH
	END CATCH
END






GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PTRV_SADD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_LOAD_PTRV_SADD]
AS
BEGIN
	BEGIN TRY
		BEGIN

		
	DECLARE @GETDATE DATETIME=GETDATE();
	DECLARE @Rows_Insrt INTEGER
	DECLARE @Rows_Del INT

	SELECT @Rows_Del =count(1) from [KLA_ECC].dbo.[PTRV_SADD]


	EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_PTRV_SADD_SP',@GETDATE,null,null,null,null,null ;

			---Truncating the table 
			TRUNCATE TABLE dbo.[PTRV_SADD]

			-- inserting the data ----
			INSERT INTO [dbo].[PTRV_SADD] (
				[MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[RECEIPTNO]
				,[NO_BRFT]
				,[COUNTRY]
				,[REGION]
				,[TT_COMSP]
				,[FROM_DATE]
				,[TO_DATE]
				,[MULTIPLI]
				,[DESCRIPT]
				,[LOCATION]
				,[BUS_PURPO]
				,[BUS_REASON]
				,[CCOMP]
				,[C_DOC]
				,[C_TXT]
				,[P_CTG]
				,[P_PRV]
				,[P_DOC]
				,[N_STF]
				,[N_PTN]
				,[N_GST]
				,[ANZLU_DEC]
				,[ANZDI_DEC]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr]
				)
			SELECT [MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[RECEIPTNO]
				,[NO_BRFT]
				,[COUNTRY]
				,[REGION]
				,[TT_COMSP]
				,[FROM_DATE]
				,[TO_DATE]
				,[MULTIPLI]
				,[DESCRIPT]
				,[LOCATION]
				,[BUS_PURPO]
				,[BUS_REASON]
				,[CCOMP]
				,[C_DOC]
				,[C_TXT]
				,[P_CTG]
				,[P_PRV]
				,[P_DOC]
				,[N_STF]
				,[N_PTN]
				,[N_GST]
				,[ANZLU_DEC]
				,[ANZDI_DEC]
				,getdate()
				,user_name()
	FROM [KLA_ECC].STG.[STG_PTRV_SADD];

			 SELECT @Rows_Insrt= COUNT(1) from  [KLA_ECC].[dbo].[PTRV_SADD]

			 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_PTRV_SADD_SP',  @Rows_Insrt, null, @Rows_Del,null, 'Y';
		END
	END TRY

	BEGIN CATCH
	END CATCH
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PTRV_SCOS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_LOAD_PTRV_SCOS]
AS
BEGIN
	BEGIN TRY
		BEGIN
				
	DECLARE @GETDATE DATETIME=GETDATE();
	DECLARE @Rows_Insrt INTEGER
	DECLARE @Rows_Del INT

	SELECT @Rows_Del =count(1) from [KLA_ECC].dbo.[PTRV_SCOS]


	EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_PTRV_SCOS_SP',@GETDATE,null,null,null,null,null ;

			---Truncating the table 
			TRUNCATE TABLE dbo.[PTRV_SCOS]

			-- inserting the data ----
			INSERT INTO [dbo].[PTRV_SCOS] (
				[MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[COSTSEQNO]
				,[COMP_CODE]
				,[BUS_AREA]
				,[CO_AREA]
				,[COSTCENTER]
				,[INTERNAL_ORDER]
				,[COST_OBJ]
				,[WBS_ELEMT]
				,[NETWORK]
				,[ACTIVITY]
				,[SALES_ORD]
				,[S_ORD_ITEM]
				,[CO_BUSPROC]
				,[FUNDS_CTR]
				,[CMMT_ITEM]
				,[FUND]
				,[ALLOC_AMOUNT]
				,[CURRENCY]
				,[FUNC_AREA]
				,[GRANT_NBR]
				,[CMMT_ITEM_LONG]
				,[PROJECT_GUID]
				,[PROJECT_EXT_ID]
				,[TASK_ROLE_GUID]
				,[TASK_ROLE_EXT_ID]
				,[OBJECT_TYPE]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr]
				)
			SELECT [MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[COSTSEQNO]
				,[COMP_CODE]
				,[BUS_AREA]
				,[CO_AREA]
				,[COSTCENTER]
				,[INTERNAL_ORDER]
				,[COST_OBJ]
				,[WBS_ELEMT]
				,[NETWORK]
				,[ACTIVITY]
				,[SALES_ORD]
				,[S_ORD_ITEM]
				,[CO_BUSPROC]
				,[FUNDS_CTR]
				,[CMMT_ITEM]
				,[FUND]
				,[ALLOC_AMOUNT]
				,[CURRENCY]
				,[FUNC_AREA]
				,[GRANT_NBR]
				,[CMMT_ITEM_LONG]
				,[PROJECT_GUID]
				,[PROJECT_EXT_ID]
				,[TASK_ROLE_GUID]
				,[TASK_ROLE_EXT_ID]
				,[OBJECT_TYPE]
				,getdate()
				,user_name()
			FROM [KLA_ECC].STG.[STG_PTRV_SCOS]

			
			 SELECT @Rows_Insrt= COUNT(1) from  [KLA_ECC].[dbo].[PTRV_SCOS]

			 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_PTRV_SCOS_SP',  @Rows_Insrt, null, @Rows_Del,null, 'Y';
		END
	END TRY

	BEGIN CATCH
	END CATCH
END





GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PTRV_SHDR]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_LOAD_PTRV_SHDR]
AS
BEGIN
	BEGIN TRY
		BEGIN
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Del INT

		SELECT @Rows_Del =count(1) from [KLA_ECC].dbo.[PTRV_SHDR]

		EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_PTRV_SHDR_SP',@GETDATE,null,null,null,null,null ;


			---Truncating the table 
			TRUNCATE TABLE dbo.[PTRV_SHDR]

			-- inserting the data ----
			INSERT INTO [dbo].[PTRV_SHDR] (
				[MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[SEQNO]
				,[ADDIT_AMNT]
				,[SUM_REIMBU]
				,[SUM_ADVANC]
				,[SUM_PAYOUT]
				,[SUM_PAIDCO]
				,[TRIP_TOTAL]
				,[PD_FOOD]
				,[PD_HOUSING]
				,[PD_MILEAGE]
				,[CURRENCY]
				,[M_TOTAL]
				,[TRIPDUR]
				,[CHNGDATE]
				,[CHNGTIME]
				,[TXF_FOOD]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr]
				)
			SELECT [MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[SEQNO]
				,[ADDIT_AMNT]
				,[SUM_REIMBU]
				,[SUM_ADVANC]
				,[SUM_PAYOUT]
				,[SUM_PAIDCO]
				,[TRIP_TOTAL]
				,[PD_FOOD]
				,[PD_HOUSING]
				,[PD_MILEAGE]
				,[CURRENCY]
				,[M_TOTAL]
				,[TRIPDUR]
				,[CHNGDATE]
				,[CHNGTIME]
				,[TXF_FOOD]
				,getdate()
				,user_name()
			FROM [KLA_ECC].STG.[STG_PTRV_SHDR];

			 SELECT @Rows_Insrt= COUNT(1) from  [KLA_ECC].[dbo].[PTRV_SHDR]

			 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_PTRV_SHDR_SP',  @Rows_Insrt, null, @Rows_Del,null, 'Y';

		END
	END TRY

	BEGIN CATCH
	END CATCH
END





GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_PTRV_SREC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_LOAD_PTRV_SREC]
AS
BEGIN
	BEGIN TRY
		BEGIN

		
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Del INT

		SELECT @Rows_Del =count(1) from [KLA_ECC].dbo.[PTRV_SREC]

		EXECUTE kg_audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'Transaction Data','KLA_PTRV_SREC_SP',@GETDATE,null,null,null,null,null ;


			---Truncating the table 
			TRUNCATE TABLE dbo.[PTRV_SREC]

			-- inserting the data ----
			INSERT INTO [dbo].[PTRV_SREC] (
				[MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[RECEIPTNO]
				,[SEQNO]
				,[DED_FLAG]
				,[PAID_COM]
				,[EXP_TYPE]
				,[REC_AMOUNT]
				,[REC_CURR]
				,[REC_RATE]
				,[LOC_AMOUNT]
				,[LOC_CURR]
				,[TAX_CODE]
				,[REC_DATE]
				,[SHORTTXT]
				,[ABOVE_LIMIT]
				,[PAPER_RECEIPT]
				,[RECEIPT_OK]
				,[PAYOT]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr]
				)
			SELECT [MANDT]
				,[PERNR]
				,[REINR]
				,[PERIO]
				,[RECEIPTNO]
				,[SEQNO]
				,[DED_FLAG]
				,[PAID_COM]
				,[EXP_TYPE]
				,[REC_AMOUNT]
				,[REC_CURR]
				,[REC_RATE]
				,[LOC_AMOUNT]
				,[LOC_CURR]
				,[TAX_CODE]
				,[REC_DATE]
				,[SHORTTXT]
				,[ABOVE_LIMIT]
				,[PAPER_RECEIPT]
				,[RECEIPT_OK]
				,[PAYOT]
				,getdate()
				,user_name()
			FROM [KLA_ECC].STG.[STG_PTRV_SREC]

			 SELECT @Rows_Insrt= COUNT(1) from  [KLA_ECC].[dbo].[PTRV_SREC]

			 EXECUTE kg_audit.[dbo].[USP_ETL_End_Btch_Detl] 'Transaction Data','KLA_PTRV_SREC_SP',  @Rows_Insrt, null, @Rows_Del,null, 'Y';
		END
	END TRY

	BEGIN CATCH
	END CATCH
END





GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier]
WITH EXEC AS CALLER
AS
DECLARE     @LEVEL         SMALLINT;
DECLARE 	  @COUNT         SMALLINT;
DECLARE     @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, CTRL_AREA VARCHAR(4));
DECLARE		  @HIER				   VARCHAR(24);
DECLARE		  @CTRL_AREA	   VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KLA_ECC].[STG].COST_CTR_HIER_UNRVL;

    INSERT @HIERS(HIER, CTRL_AREA ) VALUES ('ZBB_KLA_KBLR', 'KBLR'), ('ZBB_KLA_KSAM', 'KSAM'), ('ZBB_KLA_KCAR', 'KCAR');
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
      BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @CTRL_AREA = CTRL_AREA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KLA_ECC].[STG].COST_CTR_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0101'
        			  and h.SUBCLASS=@CTRL_AREA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			      BEGIN                
      				        SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 THROW 60002, 'LEVELS exceeded', 1;        
                      INSERT INTO  [KLA_ECC].[STG].COST_CTR_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t, [KLA_ECC].[dbo].SETNODE n, [KLA_ECC].[STG].COST_CTR_HIER_UNRVL z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KLA_ECC].[STG].COST_CTR_HIER_UNRVL z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KLA_ECC].[STG].COST_CTR_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KOSTL, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KOSTL else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KOSTL else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KOSTL else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KOSTL else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KOSTL else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KOSTL else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KOSTL else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KOSTL else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KOSTL else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KOSTL else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KOSTL else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KOSTL else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KOSTL else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KOSTL else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KOSTL else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KOSTL else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KOSTL else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KOSTL else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KOSTL else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.KTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.KTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.KTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.KTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.KTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.KTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.KTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.KTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.KTEXT else z.LVL10_SETNAME_DESC end,
      							  case when LVL_NBR+1=11 then t.KTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.KTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.KTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.KTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.KTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.KTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.KTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.KTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.KTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.KTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KLA_ECC].[dbo].CSKS c, [KLA_ECC].[dbo].CSKT t, [KLA_ECC].[dbo].SETLEAF l, [KLA_ECC].[STG].COST_CTR_HIER_UNRVL z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KOKRS=@CTRL_AREA 
                    and c.DATAB<=getdate() 
                    and c.DATBI>=getdate()
                    and c.KOKRS=t.KOKRS 
                    and c.KOSTL=t.KOSTL
                    and t.SPRAS='E' 
                    and c.DATBI=t.DATBI
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KOSTL=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KOSTL>=l.VALFROM and c.KOSTL<=l.VALTO)));
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
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
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier_TMP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Ctr_Hier_TMP]
WITH EXEC AS CALLER
AS
DECLARE     @LEVEL         SMALLINT;
DECLARE 	  @COUNT         SMALLINT;
DECLARE     @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, CTRL_AREA VARCHAR(4));
DECLARE		  @HIER				   VARCHAR(24);
DECLARE		  @CTRL_AREA	   VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP;

    INSERT @HIERS(HIER, CTRL_AREA ) SELECT distinct SETNAME, SUBCLASS from KLA_EXTERNAL.dbo.LKP_APPL_HIER WHERE SETCLASS='0101';
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
      BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @CTRL_AREA = CTRL_AREA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0101'
        			  and h.SUBCLASS=@CTRL_AREA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			  BEGIN                
      				  SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 
					  BEGIN 
					      IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
					      THROW 60002, 'LEVELS exceeded', 1;   
				      END		       
                      INSERT INTO  [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t, [KLA_ECC].[dbo].SETNODE n, [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KOSTL, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KOSTL else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KOSTL else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KOSTL else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KOSTL else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KOSTL else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KOSTL else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KOSTL else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KOSTL else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KOSTL else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KOSTL else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KOSTL else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KOSTL else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KOSTL else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KOSTL else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KOSTL else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KOSTL else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KOSTL else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KOSTL else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KOSTL else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.KTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.KTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.KTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.KTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.KTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.KTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.KTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.KTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.KTEXT else z.LVL10_SETNAME_DESC end,
      							  case when LVL_NBR+1=11 then t.KTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.KTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.KTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.KTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.KTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.KTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.KTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.KTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.KTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.KTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KLA_ECC].[dbo].CSKS c, [KLA_ECC].[dbo].CSKT t, [KLA_ECC].[dbo].SETLEAF l, [KLA_ECC].[STG].COST_CTR_HIER_UNRVL_TMP z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KOKRS=@CTRL_AREA 
                    and c.DATAB<=getdate() 
                    and c.DATBI>=getdate()
                    and c.KOKRS=t.KOKRS 
                    and c.KOSTL=t.KOSTL
                    and t.SPRAS='E' 
                    and c.DATBI=t.DATBI
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KOSTL=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KOSTL>=l.VALFROM and c.KOSTL<=l.VALTO)));
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
--                  SELECT * FROM @HIERS;
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
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier]
WITH EXEC AS CALLER
AS
DECLARE   @LEVEL         SMALLINT;
DECLARE 	@COUNT         SMALLINT;
DECLARE   @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, COA VARCHAR(4));
DECLARE   @HIER				   VARCHAR(24);
DECLARE	  @COA           VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL;

  INSERT @HIERS(HIER, COA) VALUES ('ZBB_KLA_COA', 'COA');
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
        BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @COA  = COA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0102'
        			  and h.SUBCLASS=@COA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			      BEGIN                
      				        SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 THROW 60002, 'LEVELS exceeded', 1;        
                      INSERT INTO  [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t, [KLA_ECC].[dbo].SETNODE n, [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KSTAR, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KSTAR else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KSTAR else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KSTAR else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KSTAR else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KSTAR else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KSTAR else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KSTAR else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KSTAR else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KSTAR else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KSTAR else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KSTAR else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KSTAR else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KSTAR else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KSTAR else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KSTAR else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KSTAR else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KSTAR else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KSTAR else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KSTAR else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.LTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.LTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.LTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.LTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.LTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.LTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.LTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.LTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.LTEXT else z.LVL10_SETNAME end,
      							  case when LVL_NBR+1=11 then t.LTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.LTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.LTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.LTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.LTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.LTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.LTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.LTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.LTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.LTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KLA_ECC].[dbo].CSKA c, [KLA_ECC].[dbo].CSKU t, [KLA_ECC].[dbo].SETLEAF l, [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KTOPL='COA' 
                    and c.KTOPL=t.KTOPL
                    and c.KSTAR=t.KSTAR
                    and t.SPRAS='E' 
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KSTAR=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KSTAR>=l.VALFROM and c.KSTAR<=l.VALTO)));              
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
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
/****** Object:  StoredProcedure [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier_TMP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Wynter Johnson
-- Create date: January 31, 2016
-- Description:	Get a list of all SETNAMEs in the KBLR Cost Center Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_Unrvl_Cost_Elmnt_Hier_TMP]
WITH EXEC AS CALLER
AS
DECLARE   @LEVEL         SMALLINT;
DECLARE 	@COUNT         SMALLINT;
DECLARE   @HIERS			   TABLE (HIER VARCHAR(24)PRIMARY KEY NOT NULL, COA VARCHAR(4));
DECLARE   @HIER				   VARCHAR(24);
DECLARE	  @COA           VARCHAR(4);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	  SET NOCOUNT ON;

    BEGIN TRY
    BEGIN TRANSACTION       

    -- Insert statements for procedure here
	  DELETE [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP;

    INSERT @HIERS(HIER, COA) SELECT distinct SETNAME, SUBCLASS from KLA_EXTERNAL.dbo.LKP_APPL_HIER WHERE SETCLASS='0102';
  	SELECT * FROM @HIERS;
    WHILE EXISTS (SELECT * FROM @HIERS)
        BEGIN
          SELECT @HIER = MIN(HIER) from @HIERS;
          SELECT @COA  = COA from @HIERS WHERE HIER=@HIER;
      	   --unravel HIERARCHY
        		  INSERT INTO [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, LVL1_SETNAME, LVL1_SETNAME_DESC)
        			SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, 1, h.SETNAME, t.DESCRIPT
        			FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t
        			WHERE h.SETCLASS='0102'
        			  and h.SUBCLASS=@COA
        			  and h.SETNAME=@HIER
        			  and h.SETCLASS=t.SETCLASS
        			  and h.SUBCLASS=t.SUBCLASS
        			  and h.SETNAME=t.SETNAME
        			  and t.LANGU='E';

        			SET @COUNT = @@ROWCOUNT;       

      			  SET @LEVEL = 1;
      			  WHILE @COUNT>0
      			  BEGIN                
      				  SET @LEVEL = @LEVEL+1;
                      if @LEVEL > 20 
					  BEGIN 
					      IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
					      THROW 60002, 'LEVELS exceeded', 1;   
				      END		       
                      INSERT INTO  [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
        							 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
        								  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
        							 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
        								  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
        								  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
        								  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
        								  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
        								  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
        								  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
        								  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
        						  SELECT h.SETCLASS, h.SUBCLASS, h.SETNAME, h.SETTYPE, @LEVEL, 
        							    z.LVL1_SETNAME,
        							    case when @LEVEL=2 then h.SETNAME else z.LVL2_SETNAME end, 
        							    case when @LEVEL=3 then h.SETNAME else z.LVL3_SETNAME end, 
        							    case when @LEVEL=4 then h.SETNAME else z.LVL4_SETNAME end, 
        							    case when @LEVEL=5 then h.SETNAME else z.LVL5_SETNAME end, 
        							    case when @LEVEL=6 then h.SETNAME else z.LVL6_SETNAME end, 
        							    case when @LEVEL=7 then h.SETNAME else z.LVL7_SETNAME end, 
        							    case when @LEVEL=8 then h.SETNAME else z.LVL8_SETNAME end, 
        							    case when @LEVEL=9 then h.SETNAME else z.LVL9_SETNAME end, 
        							    case when @LEVEL=10 then h.SETNAME else z.LVL10_SETNAME end,
         							    case when @LEVEL=11 then h.SETNAME else z.LVL11_SETNAME end, 
       							      case when @LEVEL=12 then h.SETNAME else z.LVL12_SETNAME end, 
        							    case when @LEVEL=13 then h.SETNAME else z.LVL13_SETNAME end, 
        							    case when @LEVEL=14 then h.SETNAME else z.LVL14_SETNAME end, 
        							    case when @LEVEL=15 then h.SETNAME else z.LVL15_SETNAME end, 
        							    case when @LEVEL=16 then h.SETNAME else z.LVL16_SETNAME end, 
        							    case when @LEVEL=17 then h.SETNAME else z.LVL17_SETNAME end, 
        							    case when @LEVEL=18 then h.SETNAME else z.LVL18_SETNAME end, 
        							    case when @LEVEL=19 then h.SETNAME else z.LVL19_SETNAME end, 
        							    case when @LEVEL=20 then h.SETNAME else z.LVL20_SETNAME end,
        							    z.LVL1_SETNAME_DESC,
        							    case when @LEVEL=2 then t.DESCRIPT else z.LVL2_SETNAME_DESC end, 
        							    case when @LEVEL=3 then t.DESCRIPT else z.LVL3_SETNAME_DESC end, 
        							    case when @LEVEL=4 then t.DESCRIPT else z.LVL4_SETNAME_DESC end, 
        							    case when @LEVEL=5 then t.DESCRIPT else z.LVL5_SETNAME_DESC end, 
        							    case when @LEVEL=6 then t.DESCRIPT else z.LVL6_SETNAME_DESC end, 
        							    case when @LEVEL=7 then t.DESCRIPT else z.LVL7_SETNAME_DESC end, 
        							    case when @LEVEL=8 then t.DESCRIPT else z.LVL8_SETNAME_DESC end, 
        							    case when @LEVEL=9 then t.DESCRIPT else z.LVL9_SETNAME_DESC end, 
        							    case when @LEVEL=10 then t.DESCRIPT else z.LVL10_SETNAME_DESC end,
        							    case when @LEVEL=11 then t.DESCRIPT else z.LVL11_SETNAME_DESC end,
        							    case when @LEVEL=12 then t.DESCRIPT else z.LVL12_SETNAME_DESC end, 
        							    case when @LEVEL=13 then t.DESCRIPT else z.LVL13_SETNAME_DESC end, 
        							    case when @LEVEL=14 then t.DESCRIPT else z.LVL14_SETNAME_DESC end, 
        							    case when @LEVEL=15 then t.DESCRIPT else z.LVL15_SETNAME_DESC end, 
        							    case when @LEVEL=16 then t.DESCRIPT else z.LVL16_SETNAME_DESC end, 
        							    case when @LEVEL=17 then t.DESCRIPT else z.LVL17_SETNAME_DESC end, 
        							    case when @LEVEL=18 then t.DESCRIPT else z.LVL18_SETNAME_DESC end, 
        							    case when @LEVEL=19 then t.DESCRIPT else z.LVL19_SETNAME_DESC end, 
        							    case when @LEVEL=20 then t.DESCRIPT else z.LVL20_SETNAME_DESC end
        						  FROM [KLA_ECC].[dbo].SETHEADER h, [KLA_ECC].[dbo].SETHEADERT t, [KLA_ECC].[dbo].SETNODE n, [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP z
        						  WHERE h.SETCLASS=n.SUBSETCLS
        						    and h.SUBCLASS=n.SUBSETSCLS
        						    and h.SETNAME=n.SUBSETNAME
        						    and h.SETCLASS=t.SETCLASS
        						    and h.SUBCLASS=t.SUBCLASS
        						    and h.SETNAME=t.SETNAME
        						    and t.LANGU='E'
        						    and n.SETCLASS=z.SETCLASS
        						    and n.SUBCLASS=z.SUBCLASS
        						    and n.SETNAME=z.SETNAME
        						    and z.LVL1_SETNAME=@HIER
        						    and z.SETTYPE<>'B'
        						    and z.LVL_NBR=(@LEVEL-1)
        						    and CONCAT(n.SUBSETCLS, n.SUBSETSCLS, n.SUBSETNAME) not in 				  
        							    (select CONCAT(SETCLASS, SUBCLASS, SETNAME) from [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP z WHERE LVL1_SETNAME=@HIER)
        					    SET @COUNT = @@ROWCOUNT;       
                  END;
      			      INSERT INTO  [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP (SETCLASS, SUBCLASS, SETNAME, SETTYPE, LVL_NBR, 
      						 	  LVL1_SETNAME, LVL2_SETNAME, LVL3_SETNAME, LVL4_SETNAME, LVL5_SETNAME, 
      							  LVL6_SETNAME, LVL7_SETNAME, LVL8_SETNAME, LVL9_SETNAME, LVL10_SETNAME,
      						 	  LVL11_SETNAME, LVL12_SETNAME, LVL13_SETNAME, LVL14_SETNAME, LVL15_SETNAME, 
      							  LVL16_SETNAME, LVL17_SETNAME, LVL18_SETNAME, LVL19_SETNAME, LVL20_SETNAME,
      							  LVL1_SETNAME_DESC, LVL2_SETNAME_DESC, LVL3_SETNAME_DESC, 
      							  LVL4_SETNAME_DESC, LVL5_SETNAME_DESC, LVL6_SETNAME_DESC, LVL7_SETNAME_DESC, 
      							  LVL8_SETNAME_DESC, LVL9_SETNAME_DESC, LVL10_SETNAME_DESC,					 
      							  LVL11_SETNAME_DESC, LVL12_SETNAME_DESC, LVL13_SETNAME_DESC, 
      							  LVL14_SETNAME_DESC, LVL15_SETNAME_DESC, LVL16_SETNAME_DESC, LVL17_SETNAME_DESC, 
      							  LVL18_SETNAME_DESC, LVL19_SETNAME_DESC, LVL20_SETNAME_DESC)						 
      				    SELECT z.SETCLASS, z.SUBCLASS, c.KSTAR, 'X', LVL_NBR+1, 
      							  z.LVL1_SETNAME,
      							  case when LVL_NBR+1=2 then c.KSTAR else z.LVL2_SETNAME end, 
      							  case when LVL_NBR+1=3 then c.KSTAR else z.LVL3_SETNAME end, 
      							  case when LVL_NBR+1=4 then c.KSTAR else z.LVL4_SETNAME end, 
      							  case when LVL_NBR+1=5 then c.KSTAR else z.LVL5_SETNAME end, 
      							  case when LVL_NBR+1=6 then c.KSTAR else z.LVL6_SETNAME end, 
      							  case when LVL_NBR+1=7 then c.KSTAR else z.LVL7_SETNAME end, 
      							  case when LVL_NBR+1=8 then c.KSTAR else z.LVL8_SETNAME end, 
      							  case when LVL_NBR+1=9 then c.KSTAR else z.LVL9_SETNAME end, 
      							  case when LVL_NBR+1=10 then c.KSTAR else z.LVL10_SETNAME end, 
      							  case when LVL_NBR+1=11 then c.KSTAR else z.LVL11_SETNAME end, 
     							    case when LVL_NBR+1=12 then c.KSTAR else z.LVL12_SETNAME end, 
      							  case when LVL_NBR+1=13 then c.KSTAR else z.LVL13_SETNAME end, 
      							  case when LVL_NBR+1=14 then c.KSTAR else z.LVL14_SETNAME end, 
      							  case when LVL_NBR+1=15 then c.KSTAR else z.LVL15_SETNAME end, 
      							  case when LVL_NBR+1=16 then c.KSTAR else z.LVL16_SETNAME end, 
      							  case when LVL_NBR+1=17 then c.KSTAR else z.LVL17_SETNAME end, 
      							  case when LVL_NBR+1=18 then c.KSTAR else z.LVL18_SETNAME end, 
      							  case when LVL_NBR+1=19 then c.KSTAR else z.LVL19_SETNAME end, 
      							  case when LVL_NBR+1=20 then c.KSTAR else z.LVL20_SETNAME end, 
      							  z.LVL1_SETNAME_DESC,
      							  case when LVL_NBR+1=2 then t.LTEXT else z.LVL2_SETNAME_DESC end, 
      							  case when LVL_NBR+1=3 then t.LTEXT else z.LVL3_SETNAME_DESC end, 
      							  case when LVL_NBR+1=4 then t.LTEXT else z.LVL4_SETNAME_DESC end, 
      							  case when LVL_NBR+1=5 then t.LTEXT else z.LVL5_SETNAME_DESC end, 
      							  case when LVL_NBR+1=6 then t.LTEXT else z.LVL6_SETNAME_DESC end, 
      							  case when LVL_NBR+1=7 then t.LTEXT else z.LVL7_SETNAME_DESC end, 
      							  case when LVL_NBR+1=8 then t.LTEXT else z.LVL8_SETNAME_DESC end, 
      							  case when LVL_NBR+1=9 then t.LTEXT else z.LVL9_SETNAME_DESC end, 
      							  case when LVL_NBR+1=10 then t.LTEXT else z.LVL10_SETNAME end,
      							  case when LVL_NBR+1=11 then t.LTEXT else z.LVL11_SETNAME_DESC end,
      							  case when LVL_NBR+1=12 then t.LTEXT else z.LVL12_SETNAME_DESC end, 
      							  case when LVL_NBR+1=13 then t.LTEXT else z.LVL13_SETNAME_DESC end, 
      							  case when LVL_NBR+1=14 then t.LTEXT else z.LVL14_SETNAME_DESC end, 
      							  case when LVL_NBR+1=15 then t.LTEXT else z.LVL15_SETNAME_DESC end, 
      							  case when LVL_NBR+1=16 then t.LTEXT else z.LVL16_SETNAME_DESC end, 
      							  case when LVL_NBR+1=17 then t.LTEXT else z.LVL17_SETNAME_DESC end, 
      							  case when LVL_NBR+1=18 then t.LTEXT else z.LVL18_SETNAME_DESC end, 
      							  case when LVL_NBR+1=19 then t.LTEXT else z.LVL19_SETNAME_DESC end, 
      							  case when LVL_NBR+1=20 then t.LTEXT else z.LVL20_SETNAME_DESC end
                  FROM [KLA_ECC].[dbo].CSKA c, [KLA_ECC].[dbo].CSKU t, [KLA_ECC].[dbo].SETLEAF l, [KLA_ECC].[STG].COST_ELMNT_HIER_UNRVL_TMP z
                  WHERE (z.SETTYPE='B' or z.SETTYPE='S')
                    and c.KTOPL='COA' 
                    and c.KTOPL=t.KTOPL
                    and c.KSTAR=t.KSTAR
                    and t.SPRAS='E' 
					          and z.SUBCLASS=c.KTOPL
                    and z.LVL1_SETNAME=@HIER
                    and z.SETCLASS=l.SETCLASS
                    and z.SUBCLASS=l.SUBCLASS 
                    and z.SETNAME=l.SETNAME
                    and (l.VALSIGN='I'
                    and ((l.VALOPTION='EQ' and c.KSTAR=l.VALFROM)
                     or (l.VALOPTION='BT' and c.KSTAR>=l.VALFROM and c.KSTAR<=l.VALTO)));              
                  DELETE FROM @HIERS WHERE HIER=@HIER; 
                  SELECT * FROM @HIERS;
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
/****** Object:  Table [dbo].[ADRC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADRC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[ADDRNUMBER] [varchar](10) NULL,
	[DATE_FROM] [date] NULL,
	[NATION] [varchar](1) NULL,
	[DATE_TO] [date] NULL,
	[TITLE] [varchar](4) NULL,
	[NAME1] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NAME3] [varchar](40) NULL,
	[NAME4] [varchar](40) NULL,
	[NAME_TEXT] [varchar](50) NULL,
	[NAME_CO] [varchar](40) NULL,
	[CITY1] [varchar](40) NULL,
	[CITY2] [varchar](40) NULL,
	[CITY_CODE] [varchar](12) NULL,
	[CITYP_CODE] [varchar](8) NULL,
	[HOME_CITY] [varchar](40) NULL,
	[CITYH_CODE] [varchar](12) NULL,
	[CHCKSTATUS] [varchar](1) NULL,
	[REGIOGROUP] [varchar](8) NULL,
	[POST_CODE1] [varchar](10) NULL,
	[POST_CODE2] [varchar](10) NULL,
	[POST_CODE3] [varchar](10) NULL,
	[PCODE1_EXT] [varchar](10) NULL,
	[PCODE2_EXT] [varchar](10) NULL,
	[PCODE3_EXT] [varchar](10) NULL,
	[PO_BOX] [varchar](10) NULL,
	[DONT_USE_P] [varchar](4) NULL,
	[PO_BOX_NUM] [varchar](1) NULL,
	[PO_BOX_LOC] [varchar](40) NULL,
	[CITY_CODE2] [varchar](12) NULL,
	[PO_BOX_REG] [varchar](3) NULL,
	[PO_BOX_CTY] [varchar](3) NULL,
	[POSTALAREA] [varchar](15) NULL,
	[TRANSPZONE] [varchar](10) NULL,
	[STREET] [varchar](60) NULL,
	[DONT_USE_S] [varchar](4) NULL,
	[STREETCODE] [varchar](12) NULL,
	[STREETABBR] [varchar](2) NULL,
	[HOUSE_NUM1] [varchar](10) NULL,
	[HOUSE_NUM2] [varchar](10) NULL,
	[HOUSE_NUM3] [varchar](10) NULL,
	[STR_SUPPL1] [varchar](40) NULL,
	[STR_SUPPL2] [varchar](40) NULL,
	[STR_SUPPL3] [varchar](40) NULL,
	[LOCATION] [varchar](40) NULL,
	[BUILDING] [varchar](20) NULL,
	[FLOOR] [varchar](10) NULL,
	[ROOMNUMBER] [varchar](10) NULL,
	[COUNTRY] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[REGION] [varchar](3) NULL,
	[ADDR_GROUP] [varchar](4) NULL,
	[FLAGGROUPS] [varchar](1) NULL,
	[PERS_ADDR] [varchar](1) NULL,
	[SORT1] [varchar](20) NULL,
	[SORT2] [varchar](20) NULL,
	[SORT_PHN] [varchar](20) NULL,
	[DEFLT_COMM] [varchar](3) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[FAX_NUMBER] [varchar](30) NULL,
	[FAX_EXTENS] [varchar](10) NULL,
	[FLAGCOMM2] [varchar](1) NULL,
	[FLAGCOMM3] [varchar](1) NULL,
	[FLAGCOMM4] [varchar](1) NULL,
	[FLAGCOMM5] [varchar](1) NULL,
	[FLAGCOMM6] [varchar](1) NULL,
	[FLAGCOMM7] [varchar](1) NULL,
	[FLAGCOMM8] [varchar](1) NULL,
	[FLAGCOMM9] [varchar](1) NULL,
	[FLAGCOMM10] [varchar](1) NULL,
	[FLAGCOMM11] [varchar](1) NULL,
	[FLAGCOMM12] [varchar](1) NULL,
	[FLAGCOMM13] [varchar](1) NULL,
	[ADDRORIGIN] [varchar](4) NULL,
	[MC_NAME1] [varchar](25) NULL,
	[MC_CITY1] [varchar](25) NULL,
	[MC_STREET] [varchar](25) NULL,
	[EXTENSION1] [varchar](40) NULL,
	[EXTENSION2] [varchar](40) NULL,
	[TIME_ZONE] [varchar](6) NULL,
	[TAXJURCODE] [varchar](15) NULL,
	[ADDRESS_ID] [varchar](10) NULL,
	[LANGU_CREA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADRC_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADRC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[ADDRNUMBER] [varchar](10) NULL,
	[DATE_FROM] [date] NULL,
	[NATION] [varchar](1) NULL,
	[DATE_TO] [date] NULL,
	[TITLE] [varchar](4) NULL,
	[NAME1] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NAME3] [varchar](40) NULL,
	[NAME4] [varchar](40) NULL,
	[NAME_TEXT] [varchar](50) NULL,
	[NAME_CO] [varchar](40) NULL,
	[CITY1] [varchar](40) NULL,
	[CITY2] [varchar](40) NULL,
	[CITY_CODE] [varchar](12) NULL,
	[CITYP_CODE] [varchar](8) NULL,
	[HOME_CITY] [varchar](40) NULL,
	[CITYH_CODE] [varchar](12) NULL,
	[CHCKSTATUS] [varchar](1) NULL,
	[REGIOGROUP] [varchar](8) NULL,
	[POST_CODE1] [varchar](10) NULL,
	[POST_CODE2] [varchar](10) NULL,
	[POST_CODE3] [varchar](10) NULL,
	[PCODE1_EXT] [varchar](10) NULL,
	[PCODE2_EXT] [varchar](10) NULL,
	[PCODE3_EXT] [varchar](10) NULL,
	[PO_BOX] [varchar](10) NULL,
	[DONT_USE_P] [varchar](4) NULL,
	[PO_BOX_NUM] [varchar](1) NULL,
	[PO_BOX_LOC] [varchar](40) NULL,
	[CITY_CODE2] [varchar](12) NULL,
	[PO_BOX_REG] [varchar](3) NULL,
	[PO_BOX_CTY] [varchar](3) NULL,
	[POSTALAREA] [varchar](15) NULL,
	[TRANSPZONE] [varchar](10) NULL,
	[STREET] [varchar](60) NULL,
	[DONT_USE_S] [varchar](4) NULL,
	[STREETCODE] [varchar](12) NULL,
	[STREETABBR] [varchar](2) NULL,
	[HOUSE_NUM1] [varchar](10) NULL,
	[HOUSE_NUM2] [varchar](10) NULL,
	[HOUSE_NUM3] [varchar](10) NULL,
	[STR_SUPPL1] [varchar](40) NULL,
	[STR_SUPPL2] [varchar](40) NULL,
	[STR_SUPPL3] [varchar](40) NULL,
	[LOCATION] [varchar](40) NULL,
	[BUILDING] [varchar](20) NULL,
	[FLOOR] [varchar](10) NULL,
	[ROOMNUMBER] [varchar](10) NULL,
	[COUNTRY] [varchar](3) NULL,
	[LANGU] [varchar](1) NULL,
	[REGION] [varchar](3) NULL,
	[ADDR_GROUP] [varchar](4) NULL,
	[FLAGGROUPS] [varchar](1) NULL,
	[PERS_ADDR] [varchar](1) NULL,
	[SORT1] [varchar](20) NULL,
	[SORT2] [varchar](20) NULL,
	[SORT_PHN] [varchar](20) NULL,
	[DEFLT_COMM] [varchar](3) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[FAX_NUMBER] [varchar](30) NULL,
	[FAX_EXTENS] [varchar](10) NULL,
	[FLAGCOMM2] [varchar](1) NULL,
	[FLAGCOMM3] [varchar](1) NULL,
	[FLAGCOMM4] [varchar](1) NULL,
	[FLAGCOMM5] [varchar](1) NULL,
	[FLAGCOMM6] [varchar](1) NULL,
	[FLAGCOMM7] [varchar](1) NULL,
	[FLAGCOMM8] [varchar](1) NULL,
	[FLAGCOMM9] [varchar](1) NULL,
	[FLAGCOMM10] [varchar](1) NULL,
	[FLAGCOMM11] [varchar](1) NULL,
	[FLAGCOMM12] [varchar](1) NULL,
	[FLAGCOMM13] [varchar](1) NULL,
	[ADDRORIGIN] [varchar](4) NULL,
	[MC_NAME1] [varchar](25) NULL,
	[MC_CITY1] [varchar](25) NULL,
	[MC_STREET] [varchar](25) NULL,
	[EXTENSION1] [varchar](40) NULL,
	[EXTENSION2] [varchar](40) NULL,
	[TIME_ZONE] [varchar](6) NULL,
	[TAXJURCODE] [varchar](15) NULL,
	[ADDRESS_ID] [varchar](10) NULL,
	[LANGU_CREA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AFKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AFKO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[GLTRP] [date] NULL,
	[GSTRP] [date] NULL,
	[FTRMS] [date] NULL,
	[GLTRS] [date] NULL,
	[GSTRS] [date] NULL,
	[GSTRI] [date] NULL,
	[GETRI] [date] NULL,
	[GLTRI] [date] NULL,
	[FTRMI] [date] NULL,
	[FTRMP] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[GASMG] [decimal](13, 3) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[PLNTY] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[PLNAW] [varchar](1) NULL,
	[PLNAL] [varchar](2) NULL,
	[PVERW] [varchar](3) NULL,
	[PLAUF] [date] NULL,
	[PLSVB] [decimal](13, 3) NULL,
	[PLNME] [varchar](3) NULL,
	[PLSVN] [decimal](13, 3) NULL,
	[PDATV] [date] NULL,
	[PAENR] [varchar](12) NULL,
	[PLGRP] [varchar](3) NULL,
	[LODIV] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLBEZ] [varchar](18) NULL,
	[STLST] [decimal](2, 0) NULL,
	[STLNR] [varchar](8) NULL,
	[SDATV] [date] NULL,
	[SBMNG] [decimal](13, 3) NULL,
	[SBMEH] [varchar](3) NULL,
	[SAENR] [varchar](12) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[SLSVN] [decimal](13, 3) NULL,
	[SLSBS] [decimal](13, 3) NULL,
	[AUFLD] [date] NULL,
	[DISPO] [varchar](3) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[FEVOR] [varchar](3) NULL,
	[FHORI] [varchar](3) NULL,
	[TERKZ] [varchar](1) NULL,
	[REDKZ] [varchar](1) NULL,
	[APRIO] [varchar](1) NULL,
	[NTZUE] [varchar](12) NULL,
	[VORUE] [varchar](4) NULL,
	[PROFID] [varchar](7) NULL,
	[VORGZ] [decimal](3, 0) NULL,
	[SICHZ] [decimal](3, 0) NULL,
	[FREIZ] [decimal](3, 0) NULL,
	[UPTER] [varchar](1) NULL,
	[BEDID] [decimal](12, 0) NULL,
	[PRONR] [decimal](8, 0) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[MZAEHL] [decimal](8, 0) NULL,
	[ZKRIZ] [decimal](7, 0) NULL,
	[PRUEFLOS] [decimal](12, 0) NULL,
	[KLVARP] [varchar](4) NULL,
	[KLVARI] [varchar](4) NULL,
	[RGEKZ] [varchar](1) NULL,
	[PLART] [varchar](1) NULL,
	[FLG_AOB] [varchar](1) NULL,
	[FLG_ARBEI] [varchar](1) NULL,
	[GLTPP] [date] NULL,
	[GSTPP] [date] NULL,
	[GLTPS] [date] NULL,
	[GSTPS] [date] NULL,
	[FTRPS] [date] NULL,
	[RDKZP] [varchar](1) NULL,
	[TRKZP] [varchar](1) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RMZHL] [decimal](8, 0) NULL,
	[IGMNG] [decimal](13, 3) NULL,
	[RATID] [decimal](12, 0) NULL,
	[GROID] [decimal](12, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GLUZS] [varchar](8) NULL,
	[GSUZS] [varchar](8) NULL,
	[REVLV] [varchar](2) NULL,
	[RSHTY] [varchar](2) NULL,
	[RSHID] [decimal](8, 0) NULL,
	[RSNTY] [varchar](2) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[NAUTERM] [varchar](1) NULL,
	[NAUCOST] [varchar](1) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[WEGXX] [decimal](4, 0) NULL,
	[VWEGX] [decimal](4, 0) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[MAUFNR] [varchar](12) NULL,
	[LKNOT] [varchar](12) NULL,
	[RKNOT] [varchar](12) NULL,
	[PRODNET] [varchar](1) NULL,
	[IASMG] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[AUFNT] [varchar](12) NULL,
	[AUFPT] [decimal](10, 0) NULL,
	[APLZT] [decimal](8, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[CSPLIT] [varchar](4) NULL,
	[AENNR] [varchar](12) NULL,
	[CY_SEQNR] [decimal](14, 0) NULL,
	[BREAKS] [varchar](1) NULL,
	[VORGZ_TRM] [decimal](6, 3) NULL,
	[SICHZ_TRM] [decimal](6, 3) NULL,
	[TRMDT] [date] NULL,
	[GLUZP] [varchar](8) NULL,
	[GSUZP] [varchar](8) NULL,
	[GSUZI] [varchar](8) NULL,
	[GEUZI] [varchar](8) NULL,
	[GLUPP] [varchar](8) NULL,
	[GSUPP] [varchar](8) NULL,
	[GLUPS] [varchar](8) NULL,
	[GSUPS] [varchar](8) NULL,
	[CHSCH] [varchar](6) NULL,
	[KAPT_VORGZ] [decimal](3, 0) NULL,
	[KAPT_SICHZ] [decimal](3, 0) NULL,
	[LEAD_AUFNR] [varchar](12) NULL,
	[PNETSTARTD] [date] NULL,
	[PNETSTARTT] [varchar](8) NULL,
	[PNETENDD] [date] NULL,
	[PNETENDT] [varchar](8) NULL,
	[KBED] [varchar](1) NULL,
	[KKALKR] [varchar](1) NULL,
	[SFCPF] [varchar](6) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[GSBTR] [date] NULL,
	[VFMNG] [decimal](13, 3) NULL,
	[NOPCOST] [varchar](1) NULL,
	[NETZKONT] [varchar](1) NULL,
	[ATRKZ] [varchar](1) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[KAPVERSA] [decimal](2, 0) NULL,
	[COLORDPROC] [varchar](1) NULL,
	[KZERB] [varchar](1) NULL,
	[CONF_KEY] [decimal](8, 0) NULL,
	[ST_ARBID] [decimal](8, 0) NULL,
	[VSNMR_V] [varchar](12) NULL,
	[TERHW] [varchar](1) NULL,
	[SPLSTAT] [varchar](1) NULL,
	[COSTUPD] [varchar](1) NULL,
	[ADPSP] [varchar](40) NULL,
	[RMANR] [varchar](10) NULL,
	[POSNR_RMA] [decimal](6, 0) NULL,
	[POSNV_RMA] [decimal](6, 0) NULL,
	[OIHANTYP] [varchar](2) NULL,
 CONSTRAINT [AFKO_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AFKO_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AFKO_OLD](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[GLTRP] [date] NULL,
	[GSTRP] [date] NULL,
	[FTRMS] [date] NULL,
	[GLTRS] [date] NULL,
	[GSTRS] [date] NULL,
	[GSTRI] [date] NULL,
	[GETRI] [date] NULL,
	[GLTRI] [date] NULL,
	[FTRMI] [date] NULL,
	[FTRMP] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[GASMG] [decimal](13, 3) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[PLNTY] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[PLNAW] [varchar](1) NULL,
	[PLNAL] [varchar](2) NULL,
	[PVERW] [varchar](3) NULL,
	[PLAUF] [date] NULL,
	[PLSVB] [decimal](13, 3) NULL,
	[PLNME] [varchar](3) NULL,
	[PLSVN] [decimal](13, 3) NULL,
	[PDATV] [date] NULL,
	[PAENR] [varchar](12) NULL,
	[PLGRP] [varchar](3) NULL,
	[LODIV] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLBEZ] [varchar](18) NULL,
	[STLST] [decimal](2, 0) NULL,
	[STLNR] [varchar](8) NULL,
	[SDATV] [date] NULL,
	[SBMNG] [decimal](13, 3) NULL,
	[SBMEH] [varchar](3) NULL,
	[SAENR] [varchar](12) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[SLSVN] [decimal](13, 3) NULL,
	[SLSBS] [decimal](13, 3) NULL,
	[AUFLD] [date] NULL,
	[DISPO] [varchar](3) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[FEVOR] [varchar](3) NULL,
	[FHORI] [varchar](3) NULL,
	[TERKZ] [varchar](1) NULL,
	[REDKZ] [varchar](1) NULL,
	[APRIO] [varchar](1) NULL,
	[NTZUE] [varchar](12) NULL,
	[VORUE] [varchar](4) NULL,
	[PROFID] [varchar](7) NULL,
	[VORGZ] [decimal](3, 0) NULL,
	[SICHZ] [decimal](3, 0) NULL,
	[FREIZ] [decimal](3, 0) NULL,
	[UPTER] [varchar](1) NULL,
	[BEDID] [decimal](12, 0) NULL,
	[PRONR] [decimal](8, 0) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[MZAEHL] [decimal](8, 0) NULL,
	[ZKRIZ] [decimal](7, 0) NULL,
	[PRUEFLOS] [decimal](12, 0) NULL,
	[KLVARP] [varchar](4) NULL,
	[KLVARI] [varchar](4) NULL,
	[RGEKZ] [varchar](1) NULL,
	[PLART] [varchar](1) NULL,
	[FLG_AOB] [varchar](1) NULL,
	[FLG_ARBEI] [varchar](1) NULL,
	[GLTPP] [date] NULL,
	[GSTPP] [date] NULL,
	[GLTPS] [date] NULL,
	[GSTPS] [date] NULL,
	[FTRPS] [date] NULL,
	[RDKZP] [varchar](1) NULL,
	[TRKZP] [varchar](1) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RMZHL] [decimal](8, 0) NULL,
	[IGMNG] [decimal](13, 3) NULL,
	[RATID] [decimal](12, 0) NULL,
	[GROID] [decimal](12, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GLUZS] [varchar](8) NULL,
	[GSUZS] [varchar](8) NULL,
	[REVLV] [varchar](2) NULL,
	[RSHTY] [varchar](2) NULL,
	[RSHID] [decimal](8, 0) NULL,
	[RSNTY] [varchar](2) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[NAUTERM] [varchar](1) NULL,
	[NAUCOST] [varchar](1) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[WEGXX] [decimal](4, 0) NULL,
	[VWEGX] [decimal](4, 0) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[MAUFNR] [varchar](12) NULL,
	[LKNOT] [varchar](12) NULL,
	[RKNOT] [varchar](12) NULL,
	[PRODNET] [varchar](1) NULL,
	[IASMG] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[AUFNT] [varchar](12) NULL,
	[AUFPT] [decimal](10, 0) NULL,
	[APLZT] [decimal](8, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[CSPLIT] [varchar](4) NULL,
	[AENNR] [varchar](12) NULL,
	[CY_SEQNR] [decimal](14, 0) NULL,
	[BREAKS] [varchar](1) NULL,
	[VORGZ_TRM] [decimal](6, 3) NULL,
	[SICHZ_TRM] [decimal](6, 3) NULL,
	[TRMDT] [date] NULL,
	[GLUZP] [varchar](8) NULL,
	[GSUZP] [varchar](8) NULL,
	[GSUZI] [varchar](8) NULL,
	[GEUZI] [varchar](8) NULL,
	[GLUPP] [varchar](8) NULL,
	[GSUPP] [varchar](8) NULL,
	[GLUPS] [varchar](8) NULL,
	[GSUPS] [varchar](8) NULL,
	[CHSCH] [varchar](6) NULL,
	[KAPT_VORGZ] [decimal](3, 0) NULL,
	[KAPT_SICHZ] [decimal](3, 0) NULL,
	[LEAD_AUFNR] [varchar](12) NULL,
	[PNETSTARTD] [date] NULL,
	[PNETSTARTT] [varchar](8) NULL,
	[PNETENDD] [date] NULL,
	[PNETENDT] [varchar](8) NULL,
	[KBED] [varchar](1) NULL,
	[KKALKR] [varchar](1) NULL,
	[SFCPF] [varchar](6) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[GSBTR] [date] NULL,
	[VFMNG] [decimal](13, 3) NULL,
	[NOPCOST] [varchar](1) NULL,
	[NETZKONT] [varchar](1) NULL,
	[ATRKZ] [varchar](1) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[KAPVERSA] [decimal](2, 0) NULL,
	[COLORDPROC] [varchar](1) NULL,
	[KZERB] [varchar](1) NULL,
	[CONF_KEY] [decimal](8, 0) NULL,
	[ST_ARBID] [decimal](8, 0) NULL,
	[VSNMR_V] [varchar](12) NULL,
	[TERHW] [varchar](1) NULL,
	[SPLSTAT] [varchar](1) NULL,
	[COSTUPD] [varchar](1) NULL,
	[ADPSP] [varchar](40) NULL,
	[RMANR] [varchar](10) NULL,
	[POSNR_RMA] [decimal](6, 0) NULL,
	[POSNV_RMA] [decimal](6, 0) NULL,
	[OIHANTYP] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AFRU]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AFRU](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[RUECK] [decimal](10, 0) NOT NULL,
	[RMZHL] [decimal](8, 0) NOT NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BUDAT] [date] NULL,
	[ARBID] [decimal](8, 0) NULL,
	[WERKS] [varchar](4) NULL,
	[LTXA1] [varchar](40) NULL,
	[TXTSP] [varchar](1) NULL,
	[ISERH] [decimal](9, 3) NULL,
	[ZEIER] [varchar](3) NULL,
	[ILE01] [varchar](3) NULL,
	[ISM01] [decimal](13, 3) NULL,
	[ILE02] [varchar](3) NULL,
	[ISM02] [decimal](13, 3) NULL,
	[ILE03] [varchar](3) NULL,
	[ISM03] [decimal](13, 3) NULL,
	[ILE04] [varchar](3) NULL,
	[ISM04] [decimal](13, 3) NULL,
	[ILE05] [varchar](3) NULL,
	[ISM05] [decimal](13, 3) NULL,
	[ILE06] [varchar](3) NULL,
	[ISM06] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[ISMNW] [decimal](7, 1) NULL,
	[ISMNE] [varchar](3) NULL,
	[LEARR] [varchar](6) NULL,
	[IDAUR] [decimal](5, 1) NULL,
	[IDAUE] [varchar](3) NULL,
	[ZCODE] [varchar](6) NULL,
	[LOART] [varchar](4) NULL,
	[QUALF] [varchar](2) NULL,
	[ANZMA] [decimal](5, 2) NULL,
	[LOGRP] [varchar](3) NULL,
	[GMNGA] [decimal](13, 3) NULL,
	[LMNGA] [decimal](13, 3) NULL,
	[XMNGA] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[MEINH] [varchar](3) NULL,
	[GRUND] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ISDD] [date] NULL,
	[ISDZ] [varchar](8) NULL,
	[IERD] [date] NULL,
	[IERZ] [varchar](8) NULL,
	[ISBD] [date] NULL,
	[ISBZ] [varchar](8) NULL,
	[IEBD] [date] NULL,
	[IEBZ] [varchar](8) NULL,
	[ISAD] [date] NULL,
	[ISAZ] [varchar](8) NULL,
	[IEDD] [date] NULL,
	[IEDZ] [varchar](8) NULL,
	[PEDD] [date] NULL,
	[PEDZ] [varchar](8) NULL,
	[WABLNR] [varchar](10) NULL,
	[WEBLNR] [varchar](10) NULL,
	[AUERU] [varchar](1) NULL,
	[AUSOR] [varchar](1) NULL,
	[STNDR] [varchar](1) NULL,
	[MANUR] [varchar](1) NULL,
	[MEILR] [varchar](1) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[APLFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[SUMNR] [decimal](8, 0) NULL,
	[OFM01] [decimal](9, 3) NULL,
	[OFE01] [varchar](3) NULL,
	[LEK01] [varchar](1) NULL,
	[OFM02] [decimal](9, 3) NULL,
	[OFE02] [varchar](3) NULL,
	[LEK02] [varchar](1) NULL,
	[OFM03] [decimal](9, 3) NULL,
	[OFE03] [varchar](3) NULL,
	[LEK03] [varchar](1) NULL,
	[OFM04] [decimal](9, 3) NULL,
	[OFE04] [varchar](3) NULL,
	[LEK04] [varchar](1) NULL,
	[OFM05] [decimal](9, 3) NULL,
	[OFE05] [varchar](3) NULL,
	[LEK05] [varchar](1) NULL,
	[OFM06] [decimal](9, 3) NULL,
	[OFE06] [varchar](3) NULL,
	[LEK06] [varchar](1) NULL,
	[OFMNW] [decimal](7, 1) NULL,
	[OFMNE] [varchar](3) NULL,
	[LEKNW] [varchar](1) NULL,
	[ODAUR] [decimal](5, 1) NULL,
	[ODAUE] [varchar](3) NULL,
	[STOKZ] [varchar](1) NULL,
	[STZHL] [decimal](8, 0) NULL,
	[SMENG] [decimal](13, 3) NULL,
	[RUECK_MST] [decimal](10, 0) NULL,
	[RMZHL_MST] [decimal](8, 0) NULL,
	[PDSNR] [decimal](12, 0) NULL,
	[KAPID] [decimal](8, 0) NULL,
	[SPLIT] [int] NULL,
	[ZAUSW] [decimal](8, 0) NULL,
	[ORIND] [varchar](1) NULL,
	[ORIGF] [varchar](1) NULL,
	[CANUM] [decimal](4, 0) NULL,
	[BELNR_IST] [varchar](10) NULL,
	[BELNR_UMB] [varchar](10) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[CATSBELNR] [varchar](10) NULL,
	[SATZA] [varchar](3) NULL,
	[ERZET] [varchar](8) NULL,
	[CATSPRICE] [decimal](11, 2) NULL,
	[CATSTCURR] [varchar](5) NULL,
	[CATSPEINH] [decimal](5, 0) NULL,
	[BEMOT] [varchar](2) NULL,
	[IPRZ1] [decimal](13, 3) NULL,
	[IPRE1] [varchar](3) NULL,
	[IPRK1] [varchar](1) NULL,
	[EXNAM] [varchar](12) NULL,
	[EXERD] [date] NULL,
	[EXERZ] [varchar](8) NULL,
	[PRZ01] [varchar](12) NULL,
	[OPRZ1] [decimal](13, 3) NULL,
	[OPRE1] [varchar](3) NULL,
	[SKOKRS] [varchar](4) NULL,
	[SKOSTL] [varchar](10) NULL,
	[NODAT] [varchar](1) NULL,
	[ISMNU] [varchar](3) NULL,
	[OFMNU] [varchar](3) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[EXTID] [varchar](32) NULL,
	[SCHGRUP] [varchar](2) NULL,
	[KAPTPROG] [varchar](4) NULL,
	[ROLE_ID] [varchar](1) NULL,
 CONSTRAINT [AFRU_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[RUECK] ASC,
	[RMZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AFRU_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AFRU_OLD](
	[MANDT] [varchar](3) NULL,
	[RUECK] [decimal](10, 0) NOT NULL,
	[RMZHL] [decimal](8, 0) NOT NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BUDAT] [date] NULL,
	[ARBID] [decimal](8, 0) NULL,
	[WERKS] [varchar](4) NULL,
	[LTXA1] [varchar](40) NULL,
	[TXTSP] [varchar](1) NULL,
	[ISERH] [decimal](9, 3) NULL,
	[ZEIER] [varchar](3) NULL,
	[ILE01] [varchar](3) NULL,
	[ISM01] [decimal](13, 3) NULL,
	[ILE02] [varchar](3) NULL,
	[ISM02] [decimal](13, 3) NULL,
	[ILE03] [varchar](3) NULL,
	[ISM03] [decimal](13, 3) NULL,
	[ILE04] [varchar](3) NULL,
	[ISM04] [decimal](13, 3) NULL,
	[ILE05] [varchar](3) NULL,
	[ISM05] [decimal](13, 3) NULL,
	[ILE06] [varchar](3) NULL,
	[ISM06] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[ISMNW] [decimal](7, 1) NULL,
	[ISMNE] [varchar](3) NULL,
	[LEARR] [varchar](6) NULL,
	[IDAUR] [decimal](5, 1) NULL,
	[IDAUE] [varchar](3) NULL,
	[ZCODE] [varchar](6) NULL,
	[LOART] [varchar](4) NULL,
	[QUALF] [varchar](2) NULL,
	[ANZMA] [decimal](5, 2) NULL,
	[LOGRP] [varchar](3) NULL,
	[GMNGA] [decimal](13, 3) NULL,
	[LMNGA] [decimal](13, 3) NULL,
	[XMNGA] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[MEINH] [varchar](3) NULL,
	[GRUND] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ISDD] [date] NULL,
	[ISDZ] [time](7) NULL,
	[IERD] [date] NULL,
	[IERZ] [time](7) NULL,
	[ISBD] [date] NULL,
	[ISBZ] [time](7) NULL,
	[IEBD] [date] NULL,
	[IEBZ] [time](7) NULL,
	[ISAD] [date] NULL,
	[ISAZ] [time](7) NULL,
	[IEDD] [date] NULL,
	[IEDZ] [time](7) NULL,
	[PEDD] [date] NULL,
	[PEDZ] [time](7) NULL,
	[WABLNR] [varchar](10) NULL,
	[WEBLNR] [varchar](10) NULL,
	[AUERU] [varchar](1) NULL,
	[AUSOR] [varchar](1) NULL,
	[STNDR] [varchar](1) NULL,
	[MANUR] [varchar](1) NULL,
	[MEILR] [varchar](1) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[APLFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[SUMNR] [decimal](8, 0) NULL,
	[OFM01] [decimal](9, 3) NULL,
	[OFE01] [varchar](3) NULL,
	[LEK01] [varchar](1) NULL,
	[OFM02] [decimal](9, 3) NULL,
	[OFE02] [varchar](3) NULL,
	[LEK02] [varchar](1) NULL,
	[OFM03] [decimal](9, 3) NULL,
	[OFE03] [varchar](3) NULL,
	[LEK03] [varchar](1) NULL,
	[OFM04] [decimal](9, 3) NULL,
	[OFE04] [varchar](3) NULL,
	[LEK04] [varchar](1) NULL,
	[OFM05] [decimal](9, 3) NULL,
	[OFE05] [varchar](3) NULL,
	[LEK05] [varchar](1) NULL,
	[OFM06] [decimal](9, 3) NULL,
	[OFE06] [varchar](3) NULL,
	[LEK06] [varchar](1) NULL,
	[OFMNW] [decimal](7, 1) NULL,
	[OFMNE] [varchar](3) NULL,
	[LEKNW] [varchar](1) NULL,
	[ODAUR] [decimal](5, 1) NULL,
	[ODAUE] [varchar](3) NULL,
	[STOKZ] [varchar](1) NULL,
	[STZHL] [decimal](8, 0) NULL,
	[SMENG] [decimal](13, 3) NULL,
	[RUECK_MST] [decimal](10, 0) NULL,
	[RMZHL_MST] [decimal](8, 0) NULL,
	[PDSNR] [decimal](12, 0) NULL,
	[KAPID] [decimal](8, 0) NULL,
	[SPLIT] [int] NULL,
	[ZAUSW] [decimal](8, 0) NULL,
	[ORIND] [varchar](1) NULL,
	[ORIGF] [varchar](1) NULL,
	[CANUM] [decimal](4, 0) NULL,
	[BELNR_IST] [varchar](10) NULL,
	[BELNR_UMB] [varchar](10) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[CATSBELNR] [varchar](10) NULL,
	[SATZA] [varchar](3) NULL,
	[ERZET] [time](7) NULL,
	[CATSPRICE] [decimal](11, 2) NULL,
	[CATSTCURR] [varchar](5) NULL,
	[CATSPEINH] [decimal](5, 0) NULL,
	[BEMOT] [varchar](2) NULL,
	[IPRZ1] [decimal](13, 3) NULL,
	[IPRE1] [varchar](3) NULL,
	[IPRK1] [varchar](1) NULL,
	[EXNAM] [varchar](12) NULL,
	[EXERD] [date] NULL,
	[EXERZ] [time](7) NULL,
	[PRZ01] [varchar](12) NULL,
	[OPRZ1] [decimal](13, 3) NULL,
	[OPRE1] [varchar](3) NULL,
	[SKOKRS] [varchar](4) NULL,
	[SKOSTL] [varchar](10) NULL,
	[NODAT] [varchar](1) NULL,
	[ISMNU] [varchar](3) NULL,
	[OFMNU] [varchar](3) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[EXTID] [varchar](32) NULL,
	[SCHGRUP] [varchar](2) NULL,
	[KAPTPROG] [varchar](4) NULL,
	[ROLE_ID] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[RUECK] ASC,
	[RMZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AFVC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AFVC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFPL] [decimal](10, 0) NOT NULL,
	[APLZL] [decimal](8, 0) NOT NULL,
	[PLNFL] [varchar](6) NULL,
	[PLNKN] [decimal](8, 0) NULL,
	[PLNAL] [varchar](2) NULL,
	[PLNTY] [varchar](1) NULL,
	[VINTV] [decimal](3, 0) NULL,
	[PLNNR] [varchar](8) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[VORNR] [varchar](4) NULL,
	[STEUS] [varchar](4) NULL,
	[ARBID] [decimal](8, 0) NULL,
	[PDEST] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[KTSCH] [varchar](7) NULL,
	[LTXA1] [varchar](40) NULL,
	[LTXA2] [varchar](40) NULL,
	[TXTSP] [varchar](1) NULL,
	[VPLTY] [varchar](1) NULL,
	[VPLNR] [varchar](8) NULL,
	[VPLAL] [varchar](2) NULL,
	[VPLFL] [varchar](6) NULL,
	[VGWTS] [varchar](4) NULL,
	[LAR01] [varchar](6) NULL,
	[LAR02] [varchar](6) NULL,
	[LAR03] [varchar](6) NULL,
	[LAR04] [varchar](6) NULL,
	[LAR05] [varchar](6) NULL,
	[LAR06] [varchar](6) NULL,
	[ZERMA] [varchar](5) NULL,
	[ZGDAT] [varchar](4) NULL,
	[ZCODE] [varchar](6) NULL,
	[ZULNR] [varchar](5) NULL,
	[LOANZ] [decimal](3, 0) NULL,
	[LOART] [varchar](4) NULL,
	[RSANZ] [decimal](3, 0) NULL,
	[QUALF] [varchar](2) NULL,
	[ANZMA] [decimal](5, 2) NULL,
	[RFGRP] [varchar](10) NULL,
	[RFSCH] [varchar](10) NULL,
	[RASCH] [varchar](2) NULL,
	[AUFAK] [decimal](5, 3) NULL,
	[LOGRP] [varchar](3) NULL,
	[UEMUS] [varchar](1) NULL,
	[UEKAN] [varchar](1) NULL,
	[FLIES] [varchar](1) NULL,
	[SPMUS] [varchar](1) NULL,
	[SPLIM] [decimal](3, 0) NULL,
	[ABLIPKZ] [varchar](1) NULL,
	[RSTRA] [varchar](2) NULL,
	[SUMNR] [decimal](8, 0) NULL,
	[SORTL] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[PREIS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[SAKTO] [varchar](10) NULL,
	[WAERS] [varchar](5) NULL,
	[INFNR] [varchar](10) NULL,
	[ESOKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[KZLGF] [varchar](1) NULL,
	[KZWRTF] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[DDEHN] [varchar](1) NULL,
	[ANZZL] [int] NULL,
	[PRZNT] [int] NULL,
	[MLSTN] [varchar](5) NULL,
	[PPRIO] [varchar](2) NULL,
	[BUKRS] [varchar](4) NULL,
	[ANFKO] [varchar](10) NULL,
	[ANFKOKRS] [varchar](4) NULL,
	[INDET] [varchar](1) NULL,
	[LARNT] [varchar](6) NULL,
	[PRKST] [decimal](11, 2) NULL,
	[APLFL] [varchar](6) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RMZHL] [decimal](8, 0) NULL,
	[PROJN] [decimal](8, 0) NULL,
	[OBJNR] [varchar](22) NULL,
	[SPANZ] [decimal](3, 0) NULL,
	[BEDID] [decimal](12, 0) NULL,
	[BEDZL] [decimal](8, 0) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[LEK01] [varchar](1) NULL,
	[LEK02] [varchar](1) NULL,
	[LEK03] [varchar](1) NULL,
	[LEK04] [varchar](1) NULL,
	[LEK05] [varchar](1) NULL,
	[LEK06] [varchar](1) NULL,
	[SELKZ] [varchar](1) NULL,
	[KALID] [varchar](2) NULL,
	[FRSP] [varchar](1) NULL,
	[STDKN] [decimal](8, 0) NULL,
	[ANLZU] [varchar](1) NULL,
	[ISTRU] [varchar](18) NULL,
	[ISTTY] [varchar](1) NULL,
	[ISTNR] [varchar](8) NULL,
	[ISTKN] [decimal](8, 0) NULL,
	[ISTPO] [decimal](8, 0) NULL,
	[IUPOZ] [varchar](4) NULL,
	[EBORT] [varchar](20) NULL,
	[VERTL] [varchar](8) NULL,
	[LEKNW] [varchar](1) NULL,
	[NPRIO] [varchar](1) NULL,
	[PVZKN] [decimal](8, 0) NULL,
	[PHFLG] [varchar](1) NULL,
	[PHSEQ] [varchar](2) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[ERFSICHT] [varchar](2) NULL,
	[QPPKTABS] [varchar](1) NULL,
	[OTYPE] [varchar](2) NULL,
	[OBJEKTID] [decimal](8, 0) NULL,
	[QLKAPAR] [varchar](3) NULL,
	[RSTUF] [decimal](1, 0) NULL,
	[NPTXTKY] [varchar](12) NULL,
	[SUBSYS] [varchar](6) NULL,
	[PSPNR] [decimal](8, 0) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[TXJCD] [varchar](15) NULL,
	[SCOPE] [varchar](2) NULL,
	[GSBER] [varchar](4) NULL,
	[PRCTR] [varchar](10) NULL,
	[NO_DISP] [varchar](1) NULL,
	[QKZPRZEIT] [varchar](1) NULL,
	[QKZZTMG1] [varchar](1) NULL,
	[QKZPRMENG] [varchar](1) NULL,
	[QKZPRFREI] [varchar](1) NULL,
	[KZFEAT] [varchar](1) NULL,
	[QKZTLSBEST] [varchar](1) NULL,
	[AENNR] [varchar](12) NULL,
	[CUOBJ_ARB] [decimal](18, 0) NULL,
	[EVGEW] [decimal](8, 0) NULL,
	[ARBII] [decimal](8, 0) NULL,
	[WERKI] [varchar](4) NULL,
	[CY_SEQNRV] [decimal](14, 0) NULL,
	[KAPT_PUFFR] [int] NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[CLASF] [varchar](1) NULL,
	[FRUNV] [varchar](1) NULL,
	[ZSCHL] [varchar](6) NULL,
	[KALSM] [varchar](6) NULL,
	[SCHED_END] [varchar](1) NULL,
	[NETZKONT] [varchar](1) NULL,
	[OWAER] [varchar](5) NULL,
	[AFNAM] [varchar](12) NULL,
	[BEDNR] [varchar](10) NULL,
	[KZFIX] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[FRDLB] [varchar](1) NULL,
	[QPART] [varchar](8) NULL,
	[LOEKZ] [varchar](1) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[PROD_ACT] [varchar](1) NULL,
	[FPLNR] [varchar](10) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[KLVAR] [varchar](4) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[FORDN] [varchar](10) NULL,
	[FORDP] [decimal](5, 0) NULL,
	[MAT_PRKST] [decimal](11, 2) NULL,
	[PRZ01] [varchar](12) NULL,
	[RFPNT] [varchar](20) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[TECHS] [varchar](12) NULL,
	[ADPSP] [varchar](40) NULL,
	[RFIPPNT] [varchar](20) NULL,
	[/ISDFPS/OBJNR] [varchar](22) NULL,
	[ZZMAT_PRKST_O] [decimal](11, 2) NULL,
 CONSTRAINT [AFVC_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[AUFPL] ASC,
	[APLZL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AKFO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AKFO](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[GLTRP] [date] NULL,
	[GSTRP] [date] NULL,
	[FTRMS] [date] NULL,
	[GLTRS] [date] NULL,
	[GSTRS] [date] NULL,
	[GSTRI] [date] NULL,
	[GETRI] [date] NULL,
	[GLTRI] [date] NULL,
	[FTRMI] [date] NULL,
	[FTRMP] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[GASMG] [decimal](13, 3) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[PLNTY] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[PLNAW] [varchar](1) NULL,
	[PLNAL] [varchar](2) NULL,
	[PVERW] [varchar](3) NULL,
	[PLAUF] [date] NULL,
	[PLSVB] [decimal](13, 3) NULL,
	[PLNME] [varchar](3) NULL,
	[PLSVN] [decimal](13, 3) NULL,
	[PDATV] [date] NULL,
	[PAENR] [varchar](12) NULL,
	[PLGRP] [varchar](3) NULL,
	[LODIV] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLBEZ] [varchar](18) NULL,
	[STLST] [decimal](2, 0) NULL,
	[STLNR] [varchar](8) NULL,
	[SDATV] [date] NULL,
	[SBMNG] [decimal](13, 3) NULL,
	[SBMEH] [varchar](3) NULL,
	[SAENR] [varchar](12) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[SLSVN] [decimal](13, 3) NULL,
	[SLSBS] [decimal](13, 3) NULL,
	[AUFLD] [date] NULL,
	[DISPO] [varchar](3) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[FEVOR] [varchar](3) NULL,
	[FHORI] [varchar](3) NULL,
	[TERKZ] [varchar](1) NULL,
	[REDKZ] [varchar](1) NULL,
	[APRIO] [varchar](1) NULL,
	[NTZUE] [varchar](12) NULL,
	[VORUE] [varchar](4) NULL,
	[PROFID] [varchar](7) NULL,
	[VORGZ] [decimal](3, 0) NULL,
	[SICHZ] [decimal](3, 0) NULL,
	[FREIZ] [decimal](3, 0) NULL,
	[UPTER] [varchar](1) NULL,
	[BEDID] [decimal](12, 0) NULL,
	[PRONR] [decimal](8, 0) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[MZAEHL] [decimal](8, 0) NULL,
	[ZKRIZ] [decimal](7, 0) NULL,
	[PRUEFLOS] [decimal](12, 0) NULL,
	[KLVARP] [varchar](4) NULL,
	[KLVARI] [varchar](4) NULL,
	[RGEKZ] [varchar](1) NULL,
	[PLART] [varchar](1) NULL,
	[FLG_AOB] [varchar](1) NULL,
	[FLG_ARBEI] [varchar](1) NULL,
	[GLTPP] [date] NULL,
	[GSTPP] [date] NULL,
	[GLTPS] [date] NULL,
	[GSTPS] [date] NULL,
	[FTRPS] [date] NULL,
	[RDKZP] [varchar](1) NULL,
	[TRKZP] [varchar](1) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RMZHL] [decimal](8, 0) NULL,
	[IGMNG] [decimal](13, 3) NULL,
	[RATID] [decimal](12, 0) NULL,
	[GROID] [decimal](12, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GLUZS] [varchar](24) NULL,
	[GSUZS] [varchar](24) NULL,
	[REVLV] [varchar](2) NULL,
	[RSHTY] [varchar](2) NULL,
	[RSHID] [decimal](8, 0) NULL,
	[RSNTY] [varchar](2) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[NAUTERM] [varchar](1) NULL,
	[NAUCOST] [varchar](1) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[WEGXX] [decimal](4, 0) NULL,
	[VWEGX] [decimal](4, 0) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[MAUFNR] [varchar](12) NULL,
	[LKNOT] [varchar](12) NULL,
	[RKNOT] [varchar](12) NULL,
	[PRODNET] [varchar](1) NULL,
	[IASMG] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[AUFNT] [varchar](12) NULL,
	[AUFPT] [decimal](10, 0) NULL,
	[APLZT] [decimal](8, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[CSPLIT] [varchar](4) NULL,
	[AENNR] [varchar](12) NULL,
	[CY_SEQNR] [decimal](14, 0) NULL,
	[BREAKS] [varchar](1) NULL,
	[VORGZ_TRM] [decimal](6, 3) NULL,
	[SICHZ_TRM] [decimal](6, 3) NULL,
	[TRMDT] [date] NULL,
	[GLUZP] [varchar](24) NULL,
	[GSUZP] [varchar](24) NULL,
	[GSUZI] [varchar](24) NULL,
	[GEUZI] [varchar](24) NULL,
	[GLUPP] [varchar](24) NULL,
	[GSUPP] [varchar](24) NULL,
	[GLUPS] [varchar](24) NULL,
	[GSUPS] [varchar](24) NULL,
	[CHSCH] [varchar](6) NULL,
	[KAPT_VORGZ] [decimal](3, 0) NULL,
	[KAPT_SICHZ] [decimal](3, 0) NULL,
	[LEAD_AUFNR] [varchar](12) NULL,
	[PNETSTARTD] [date] NULL,
	[PNETSTARTT] [varchar](24) NULL,
	[PNETENDD] [date] NULL,
	[PNETENDT] [varchar](24) NULL,
	[KBED] [varchar](1) NULL,
	[KKALKR] [varchar](1) NULL,
	[SFCPF] [varchar](6) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[GSBTR] [date] NULL,
	[VFMNG] [decimal](13, 3) NULL,
	[NOPCOST] [varchar](1) NULL,
	[NETZKONT] [varchar](1) NULL,
	[ATRKZ] [varchar](1) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[KAPVERSA] [decimal](2, 0) NULL,
	[COLORDPROC] [varchar](1) NULL,
	[KZERB] [varchar](1) NULL,
	[CONF_KEY] [decimal](8, 0) NULL,
	[ST_ARBID] [decimal](8, 0) NULL,
	[VSNMR_V] [varchar](12) NULL,
	[TERHW] [varchar](1) NULL,
	[SPLSTAT] [varchar](1) NULL,
	[COSTUPD] [varchar](1) NULL,
	[ADPSP] [varchar](40) NULL,
	[RMANR] [varchar](10) NULL,
	[POSNR_RMA] [decimal](6, 0) NULL,
	[POSNV_RMA] [decimal](6, 0) NULL,
	[OIHANTYP] [varchar](2) NULL,
	[MANDT_1] [varchar](3) NULL,
	[AUFNR_1] [varchar](12) NOT NULL,
	[GLTRP_1] [date] NULL,
	[GSTRP_1] [date] NULL,
	[FTRMS_1] [date] NULL,
	[GLTRS_1] [date] NULL,
	[GSTRS_1] [date] NULL,
	[GSTRI_1] [date] NULL,
	[GETRI_1] [date] NULL,
	[GLTRI_1] [date] NULL,
	[FTRMI_1] [date] NULL,
	[FTRMP_1] [date] NULL,
	[RSNUM_1] [decimal](10, 0) NULL,
	[GASMG_1] [decimal](13, 3) NULL,
	[GAMNG_1] [decimal](13, 3) NULL,
	[GMEIN_1] [varchar](3) NULL,
	[PLNBEZ_1] [varchar](18) NULL,
	[PLNTY_1] [varchar](1) NULL,
	[PLNNR_1] [varchar](8) NULL,
	[PLNAW_1] [varchar](1) NULL,
	[PLNAL_1] [varchar](2) NULL,
	[PVERW_1] [varchar](3) NULL,
	[PLAUF_1] [date] NULL,
	[PLSVB_1] [decimal](13, 3) NULL,
	[PLNME_1] [varchar](3) NULL,
	[PLSVN_1] [decimal](13, 3) NULL,
	[PDATV_1] [date] NULL,
	[PAENR_1] [varchar](12) NULL,
	[PLGRP_1] [varchar](3) NULL,
	[LODIV_1] [decimal](13, 3) NULL,
	[STLTY_1] [varchar](1) NULL,
	[STLBEZ_1] [varchar](18) NULL,
	[STLST_1] [decimal](2, 0) NULL,
	[STLNR_1] [varchar](8) NULL,
	[SDATV_1] [date] NULL,
	[SBMNG_1] [decimal](13, 3) NULL,
	[SBMEH_1] [varchar](3) NULL,
	[SAENR_1] [varchar](12) NULL,
	[STLAL_1] [varchar](2) NULL,
	[STLAN_1] [varchar](1) NULL,
	[SLSVN_1] [decimal](13, 3) NULL,
	[SLSBS_1] [decimal](13, 3) NULL,
	[AUFLD_1] [date] NULL,
	[DISPO_1] [varchar](3) NULL,
	[AUFPL_1] [decimal](10, 0) NULL,
	[FEVOR_1] [varchar](3) NULL,
	[FHORI_1] [varchar](3) NULL,
	[TERKZ_1] [varchar](1) NULL,
	[REDKZ_1] [varchar](1) NULL,
	[APRIO_1] [varchar](1) NULL,
	[NTZUE_1] [varchar](12) NULL,
	[VORUE_1] [varchar](4) NULL,
	[PROFID_1] [varchar](7) NULL,
	[VORGZ_1] [decimal](3, 0) NULL,
	[SICHZ_1] [decimal](3, 0) NULL,
	[FREIZ_1] [decimal](3, 0) NULL,
	[UPTER_1] [varchar](1) NULL,
	[BEDID_1] [decimal](12, 0) NULL,
	[PRONR_1] [decimal](8, 0) NULL,
	[ZAEHL_1] [decimal](8, 0) NULL,
	[MZAEHL_1] [decimal](8, 0) NULL,
	[ZKRIZ_1] [decimal](7, 0) NULL,
	[PRUEFLOS_1] [decimal](12, 0) NULL,
	[KLVARP_1] [varchar](4) NULL,
	[KLVARI_1] [varchar](4) NULL,
	[RGEKZ_1] [varchar](1) NULL,
	[PLART_1] [varchar](1) NULL,
	[FLG_AOB_1] [varchar](1) NULL,
	[FLG_ARBEI_1] [varchar](1) NULL,
	[GLTPP_1] [date] NULL,
	[GSTPP_1] [date] NULL,
	[GLTPS_1] [date] NULL,
	[GSTPS_1] [date] NULL,
	[FTRPS_1] [date] NULL,
	[RDKZP_1] [varchar](1) NULL,
	[TRKZP_1] [varchar](1) NULL,
	[RUECK_1] [decimal](10, 0) NULL,
	[RMZHL_1] [decimal](8, 0) NULL,
	[IGMNG_1] [decimal](13, 3) NULL,
	[RATID_1] [decimal](12, 0) NULL,
	[GROID_1] [decimal](12, 0) NULL,
	[CUOBJ_1] [decimal](18, 0) NULL,
	[GLUZS_1] [varchar](24) NULL,
	[GSUZS_1] [varchar](24) NULL,
	[REVLV_1] [varchar](2) NULL,
	[RSHTY_1] [varchar](2) NULL,
	[RSHID_1] [decimal](8, 0) NULL,
	[RSNTY_1] [varchar](2) NULL,
	[RSNID_1] [decimal](8, 0) NULL,
	[NAUTERM_1] [varchar](1) NULL,
	[NAUCOST_1] [varchar](1) NULL,
	[STUFE_1] [decimal](2, 0) NULL,
	[WEGXX_1] [decimal](4, 0) NULL,
	[VWEGX_1] [decimal](4, 0) NULL,
	[ARSNR_1] [decimal](10, 0) NULL,
	[ARSPS_1] [decimal](4, 0) NULL,
	[MAUFNR_1] [varchar](12) NULL,
	[LKNOT_1] [varchar](12) NULL,
	[RKNOT_1] [varchar](12) NULL,
	[PRODNET_1] [varchar](1) NULL,
	[IASMG_1] [decimal](13, 3) NULL,
	[ABARB_1] [decimal](3, 0) NULL,
	[AUFNT_1] [varchar](12) NULL,
	[AUFPT_1] [decimal](10, 0) NULL,
	[APLZT_1] [decimal](8, 0) NULL,
	[NO_DISP_1] [varchar](1) NULL,
	[CSPLIT_1] [varchar](4) NULL,
	[AENNR_1] [varchar](12) NULL,
	[CY_SEQNR_1] [decimal](14, 0) NULL,
	[BREAKS_1] [varchar](1) NULL,
	[VORGZ_TRM_1] [decimal](6, 3) NULL,
	[SICHZ_TRM_1] [decimal](6, 3) NULL,
	[TRMDT_1] [date] NULL,
	[GLUZP_1] [varchar](24) NULL,
	[GSUZP_1] [varchar](24) NULL,
	[GSUZI_1] [varchar](24) NULL,
	[GEUZI_1] [varchar](24) NULL,
	[GLUPP_1] [varchar](24) NULL,
	[GSUPP_1] [varchar](24) NULL,
	[GLUPS_1] [varchar](24) NULL,
	[GSUPS_1] [varchar](24) NULL,
	[CHSCH_1] [varchar](6) NULL,
	[KAPT_VORGZ_1] [decimal](3, 0) NULL,
	[KAPT_SICHZ_1] [decimal](3, 0) NULL,
	[LEAD_AUFNR_1] [varchar](12) NULL,
	[PNETSTARTD_1] [date] NULL,
	[PNETSTARTT_1] [varchar](24) NULL,
	[PNETENDD_1] [date] NULL,
	[PNETENDT_1] [varchar](24) NULL,
	[KBED_1] [varchar](1) NULL,
	[KKALKR_1] [varchar](1) NULL,
	[SFCPF_1] [varchar](6) NULL,
	[RMNGA_1] [decimal](13, 3) NULL,
	[GSBTR_1] [date] NULL,
	[VFMNG_1] [decimal](13, 3) NULL,
	[NOPCOST_1] [varchar](1) NULL,
	[NETZKONT_1] [varchar](1) NULL,
	[ATRKZ_1] [varchar](1) NULL,
	[OBJTYPE_1] [varchar](1) NULL,
	[CH_PROC_1] [varchar](1) NULL,
	[KAPVERSA_1] [decimal](2, 0) NULL,
	[COLORDPROC_1] [varchar](1) NULL,
	[KZERB_1] [varchar](1) NULL,
	[CONF_KEY_1] [decimal](8, 0) NULL,
	[ST_ARBID_1] [decimal](8, 0) NULL,
	[VSNMR_V_1] [varchar](12) NULL,
	[TERHW_1] [varchar](1) NULL,
	[SPLSTAT_1] [varchar](1) NULL,
	[COSTUPD_1] [varchar](1) NULL,
	[ADPSP_1] [varchar](40) NULL,
	[RMANR_1] [varchar](10) NULL,
	[POSNR_RMA_1] [decimal](6, 0) NULL,
	[POSNV_RMA_1] [decimal](6, 0) NULL,
	[OIHANTYP_1] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC,
	[AUFNR_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUFK]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUFK](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
 CONSTRAINT [AUFK_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUFK_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUFK_OLD](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUFM]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUFM](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [decimal](4, 0) NOT NULL,
	[ZEILE] [decimal](4, 0) NOT NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[BWART] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[CHARG] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[SHKZG] [varchar](1) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[BWTAR] [varchar](10) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ELIKZ] [varchar](1) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[AUFNR] [varchar](12) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[RSART] [varchar](1) NULL,
	[KZEAR] [varchar](1) NULL,
	[KZBEW] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[SAKTO] [varchar](10) NULL,
	[KOKRS] [varchar](4) NULL,
 CONSTRAINT [AUFM_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUFM_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUFM_OLD](
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [decimal](4, 0) NOT NULL,
	[ZEILE] [decimal](4, 0) NOT NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[BWART] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[CHARG] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[SHKZG] [varchar](1) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[BWTAR] [varchar](10) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ELIKZ] [varchar](1) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[AUFNR] [varchar](12) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[RSART] [varchar](1) NULL,
	[KZEAR] [varchar](1) NULL,
	[KZBEW] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[SAKTO] [varchar](10) NULL,
	[KOKRS] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BKPF]    Script Date: 11/20/2018 5:38:51 PM ******/
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
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
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
/****** Object:  Table [dbo].[BSEG]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSEG](
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[DMBE2] [decimal](13, 2) NULL,
	[AUFNR] [varchar](12) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[BUKRS] ASC,
	[BELNR] ASC,
	[GJAHR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAUFV]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAUFV](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[STDAT] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER4] [decimal](11, 2) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [varchar](8) NULL,
	[AEZEIT] [varchar](8) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
	[GLTRP] [date] NULL,
	[GSTRP] [date] NULL,
	[FTRMS] [date] NULL,
	[GLTRS] [date] NULL,
	[GSTRS] [date] NULL,
	[GSTRI] [date] NULL,
	[GETRI] [date] NULL,
	[GLTRI] [date] NULL,
	[FTRMI] [date] NULL,
	[FTRMP] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[GASMG] [decimal](13, 3) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[PLNTY] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[PLNAW] [varchar](1) NULL,
	[PLNAL] [varchar](2) NULL,
	[PVERW] [varchar](3) NULL,
	[PLAUF] [date] NULL,
	[PLSVB] [decimal](13, 3) NULL,
	[PLNME] [varchar](3) NULL,
	[PLSVN] [decimal](13, 3) NULL,
	[PDATV] [date] NULL,
	[PAENR] [varchar](12) NULL,
	[PLGRP] [varchar](3) NULL,
	[LODIV] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLBEZ] [varchar](18) NULL,
	[STLST] [decimal](2, 0) NULL,
	[STLNR] [varchar](8) NULL,
	[SDATV] [date] NULL,
	[SBMNG] [decimal](13, 3) NULL,
	[SBMEH] [varchar](3) NULL,
	[SAENR] [varchar](12) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[SLSVN] [decimal](13, 3) NULL,
	[SLSBS] [decimal](13, 3) NULL,
	[AUFLD] [date] NULL,
	[DISPO] [varchar](3) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[FEVOR] [varchar](3) NULL,
	[FHORI] [varchar](3) NULL,
	[TERKZ] [varchar](1) NULL,
	[REDKZ] [varchar](1) NULL,
	[APRIO] [varchar](1) NULL,
	[NTZUE] [varchar](12) NULL,
	[VORUE] [varchar](4) NULL,
	[PROFID] [varchar](7) NULL,
	[VORGZ] [decimal](3, 0) NULL,
	[SICHZ] [decimal](3, 0) NULL,
	[FREIZ] [decimal](3, 0) NULL,
	[UPTER] [varchar](1) NULL,
	[BEDID] [decimal](12, 0) NULL,
	[PRONR] [decimal](8, 0) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[MZAEHL] [decimal](8, 0) NULL,
	[ZKRIZ] [decimal](7, 0) NULL,
	[PRUEFLOS] [decimal](12, 0) NULL,
	[KLVARP] [varchar](4) NULL,
	[KLVARI] [varchar](4) NULL,
	[RGEKZ] [varchar](1) NULL,
	[PLART] [varchar](1) NULL,
	[FLG_AOB] [varchar](1) NULL,
	[FLG_ARBEI] [varchar](1) NULL,
	[GLTPP] [date] NULL,
	[GSTPP] [date] NULL,
	[GLTPS] [date] NULL,
	[GSTPS] [date] NULL,
	[FTRPS] [date] NULL,
	[RDKZP] [varchar](1) NULL,
	[TRKZP] [varchar](1) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RMZHL] [decimal](8, 0) NULL,
	[IGMNG] [decimal](13, 3) NULL,
	[RATID] [decimal](12, 0) NULL,
	[GROID] [decimal](12, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GLUZS] [varchar](8) NULL,
	[GSUZS] [varchar](8) NULL,
	[REVLV] [varchar](2) NULL,
	[RSHTY] [varchar](2) NULL,
	[RSHID] [decimal](8, 0) NULL,
	[RSNTY] [varchar](2) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[NAUTERM] [varchar](1) NULL,
	[NAUCOST] [varchar](1) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[WEGXX] [decimal](4, 0) NULL,
	[VWEGX] [decimal](4, 0) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[MAUFNR] [varchar](12) NULL,
	[LKNOT] [varchar](12) NULL,
	[RKNOT] [varchar](12) NULL,
	[PRODNET] [varchar](1) NULL,
	[IASMG] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[AUFNT] [varchar](12) NULL,
	[AUFPT] [decimal](10, 0) NULL,
	[APLZT] [decimal](8, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[CSPLIT] [varchar](4) NULL,
	[AENNR] [varchar](12) NULL,
	[CY_SEQNR] [decimal](14, 0) NULL,
	[BREAKS] [varchar](1) NULL,
	[VORGZ_TRM] [decimal](6, 3) NULL,
	[SICHZ_TRM] [decimal](6, 3) NULL,
	[TRMDT] [date] NULL,
	[GLUZP] [varchar](8) NULL,
	[GSUZP] [varchar](8) NULL,
	[GSUZI] [varchar](8) NULL,
	[GEUZI] [varchar](8) NULL,
	[GLUPP] [varchar](8) NULL,
	[GSUPP] [varchar](8) NULL,
	[GLUPS] [varchar](8) NULL,
	[GSUPS] [varchar](8) NULL,
	[CHSCH] [varchar](6) NULL,
	[KAPT_VORGZ] [decimal](3, 0) NULL,
	[KAPT_SICHZ] [decimal](3, 0) NULL,
	[LEAD_AUFNR] [varchar](12) NULL,
	[PNETSTARTD] [date] NULL,
	[PNETSTARTT] [varchar](8) NULL,
	[PNETENDD] [date] NULL,
	[PNETENDT] [varchar](8) NULL,
	[KBED] [varchar](1) NULL,
	[KKALKR] [varchar](1) NULL,
	[SFCPF] [varchar](6) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[GSBTR] [date] NULL,
	[VFMNG] [decimal](13, 3) NULL,
	[NOPCOST] [varchar](1) NULL,
	[NETZKONT] [varchar](1) NULL,
	[ATRKZ] [varchar](1) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[KAPVERSA] [decimal](2, 0) NULL,
	[COLORDPROC] [varchar](1) NULL,
	[KZERB] [varchar](1) NULL,
	[CONF_KEY] [decimal](8, 0) NULL,
	[ST_ARBID] [decimal](8, 0) NULL,
	[VSNMR_V] [varchar](12) NULL,
	[TERHW] [varchar](1) NULL,
	[SPLSTAT] [varchar](1) NULL,
	[COSTUPD] [varchar](1) NULL,
	[ADPSP] [varchar](40) NULL,
	[RMANR] [varchar](10) NULL,
	[POSNR_RMA] [decimal](6, 0) NULL,
	[POSNV_RMA] [decimal](6, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[MERKMAL] [varchar](30) NULL,
	[ABTEI] [varchar](12) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[NPRCTR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[BUKRS] [varchar](4) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[REGIO] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[LOCK_IND] [varchar](1) NULL,
	[PCA_TEMPLATE] [varchar](10) NULL,
	[SEGMENT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPC_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[MERKMAL] [varchar](30) NULL,
	[ABTEI] [varchar](12) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[NPRCTR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[BUKRS] [varchar](4) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[REGIO] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[LOCK_IND] [varchar](1) NULL,
	[PCA_TEMPLATE] [varchar](10) NULL,
	[SEGMENT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPCT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPCT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPCT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPCT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KOKRS] [varchar](4) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CKIS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CKIS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NOT NULL,
	[BZOBJ] [varchar](1) NOT NULL,
	[KALNR] [decimal](12, 0) NOT NULL,
	[KALKA] [varchar](2) NOT NULL,
	[KADKY] [date] NOT NULL,
	[TVERS] [decimal](2, 0) NOT NULL,
	[BWVAR] [varchar](3) NOT NULL,
	[KKZMA] [varchar](1) NOT NULL,
	[POSNR] [decimal](5, 0) NOT NULL,
	[STATP] [varchar](4) NULL,
	[STRGP] [varchar](4) NULL,
	[TYPPS] [varchar](1) NULL,
	[KSTAR] [varchar](10) NULL,
	[KSTAR_MANUAL] [varchar](1) NULL,
	[HRKFT] [varchar](4) NULL,
	[ELEMT] [decimal](3, 0) NULL,
	[ELEMTNS] [decimal](3, 0) NULL,
	[FVFLG] [varchar](1) NULL,
	[OPCOD] [varchar](50) NULL,
	[FRLNR] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[PSCHL] [varchar](18) NULL,
	[KOKRS_HRK] [varchar](4) NULL,
	[EXTNR] [varchar](18) NULL,
	[GPREIS] [decimal](15, 2) NULL,
	[FPREIS] [decimal](15, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[PMEHT] [varchar](3) NULL,
	[PRICE_MANUAL] [varchar](1) NULL,
	[WERTB] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[WRTFX] [decimal](15, 2) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WRTFW_KFX] [decimal](15, 2) NULL,
	[FWAER_KPF] [varchar](5) NULL,
	[WRTFW_POS] [decimal](15, 2) NULL,
	[WRTFW_PFX] [decimal](15, 2) NULL,
	[FWAER] [varchar](5) NULL,
	[MKURS] [decimal](9, 0) NULL,
	[FWEHT] [decimal](4, 0) NULL,
	[MENGE] [decimal](15, 3) NULL,
	[MEEHT] [varchar](3) NULL,
	[SUMM1] [decimal](15, 3) NULL,
	[SUMM2] [decimal](15, 2) NULL,
	[SUMM3] [decimal](15, 2) NULL,
	[DPREIS] [decimal](15, 2) NULL,
	[PREIS1] [decimal](15, 2) NULL,
	[PREIS2] [decimal](15, 2) NULL,
	[PREIS3] [decimal](15, 2) NULL,
	[PREIS4] [decimal](15, 2) NULL,
	[PREIS5] [decimal](15, 2) NULL,
	[PFKT1] [decimal](5, 2) NULL,
	[PFKT2] [decimal](5, 2) NULL,
	[PFKT3] [decimal](5, 2) NULL,
	[PFKT4] [decimal](5, 2) NULL,
	[PFKT5] [decimal](5, 2) NULL,
	[ZUABS] [decimal](15, 2) NULL,
	[ZUFKT] [decimal](5, 4) NULL,
	[PSKNZ] [varchar](1) NULL,
	[SBDKZ] [varchar](1) NULL,
	[VTKNZ] [varchar](1) NULL,
	[LSTAR] [varchar](6) NULL,
	[ARBID] [decimal](8, 0) NULL,
	[KOSTL] [varchar](10) NULL,
	[INFNR] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[ESOKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[STEUS] [varchar](4) NULL,
	[FXPRU] [varchar](1) NULL,
	[STPOS] [decimal](4, 0) NULL,
	[AFAKT] [float] NULL,
	[BWTAR] [varchar](10) NULL,
	[MKALK] [varchar](1) NULL,
	[BTYP] [varchar](4) NULL,
	[KALNR_BA] [decimal](12, 0) NULL,
	[MISCH_VERH] [decimal](13, 3) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[AUSMG] [decimal](15, 3) NULL,
	[AUSMGKO] [decimal](15, 3) NULL,
	[AUSPROZ] [decimal](6, 3) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[VORNR] [varchar](4) NULL,
	[UVORN] [varchar](4) NULL,
	[STEAS] [date] NULL,
	[POSNR_EXT] [decimal](5, 0) NULL,
	[POINTER1] [decimal](5, 0) NULL,
	[POINTER2] [decimal](5, 0) NULL,
	[POINTER3] [decimal](5, 0) NULL,
	[OPREIS] [decimal](15, 2) NULL,
	[OPREIFX] [decimal](15, 2) NULL,
	[TPREIS] [decimal](15, 2) NULL,
	[TPREIFX] [decimal](15, 2) NULL,
	[PATNR] [decimal](6, 0) NULL,
	[VERWS] [varchar](35) NULL,
	[PRSKZ] [varchar](3) NULL,
	[STRAT] [varchar](1) NULL,
	[SUBSTRAT] [varchar](1) NULL,
	[TKURS] [decimal](9, 5) NULL,
	[SELKZ] [varchar](1) NULL,
	[VRGGRP] [varchar](3) NULL,
	[KKZMM] [varchar](1) NULL,
	[SSEDD] [date] NULL,
	[FEHLKZ] [varchar](1) NULL,
	[NO_CCSPLIT] [varchar](1) NULL,
	[SCHKZ] [varchar](1) NULL,
	[SCHKZNS] [varchar](1) NULL,
	[UFIELD_MODE] [varchar](1) NULL,
	[UKALN] [decimal](12, 0) NULL,
	[UKALKA] [varchar](2) NULL,
	[UKADKY] [date] NULL,
	[UTVERS] [decimal](2, 0) NULL,
	[UBWVAR] [varchar](3) NULL,
	[HKMAT] [varchar](1) NULL,
	[SPOSN] [varchar](4) NULL,
	[USTRAT] [decimal](1, 0) NULL,
	[BAUGR] [varchar](1) NULL,
	[ASNUM] [varchar](18) NULL,
	[PEINH_2] [decimal](5, 0) NULL,
	[PEINH_3] [decimal](5, 0) NULL,
	[PRZNR] [varchar](12) NULL,
	[NLAG] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[PSPNR] [decimal](8, 0) NULL,
	[PAROB] [varchar](22) NULL,
	[KZANW] [varchar](1) NULL,
	[KZLB] [varchar](1) NULL,
	[SUBKEY] [varchar](14) NULL,
	[KZWSO] [varchar](1) NULL,
	[DISST] [varchar](3) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GENTYP] [varchar](1) NULL,
	[COMPONENT_ID] [decimal](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[LEDNR] ASC,
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC,
	[POSNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CKIS_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CKIS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NOT NULL,
	[BZOBJ] [varchar](1) NOT NULL,
	[KALNR] [decimal](12, 0) NOT NULL,
	[KALKA] [varchar](2) NOT NULL,
	[KADKY] [date] NOT NULL,
	[TVERS] [decimal](2, 0) NOT NULL,
	[BWVAR] [varchar](3) NOT NULL,
	[KKZMA] [varchar](1) NOT NULL,
	[POSNR] [decimal](5, 0) NOT NULL,
	[STATP] [varchar](4) NULL,
	[STRGP] [varchar](4) NULL,
	[TYPPS] [varchar](1) NULL,
	[KSTAR] [varchar](10) NULL,
	[KSTAR_MANUAL] [varchar](1) NULL,
	[HRKFT] [varchar](4) NULL,
	[ELEMT] [decimal](3, 0) NULL,
	[ELEMTNS] [decimal](3, 0) NULL,
	[FVFLG] [varchar](1) NULL,
	[OPCOD] [varchar](50) NULL,
	[FRLNR] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[PSCHL] [varchar](18) NULL,
	[KOKRS_HRK] [varchar](4) NULL,
	[EXTNR] [varchar](18) NULL,
	[GPREIS] [decimal](15, 2) NULL,
	[FPREIS] [decimal](15, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[PMEHT] [varchar](3) NULL,
	[PRICE_MANUAL] [varchar](1) NULL,
	[WERTB] [decimal](15, 2) NULL,
	[WERTN] [decimal](15, 2) NULL,
	[WRTFX] [decimal](15, 2) NULL,
	[WRTFW_KPF] [decimal](15, 2) NULL,
	[WRTFW_KFX] [decimal](15, 2) NULL,
	[FWAER_KPF] [varchar](5) NULL,
	[WRTFW_POS] [decimal](15, 2) NULL,
	[WRTFW_PFX] [decimal](15, 2) NULL,
	[FWAER] [varchar](5) NULL,
	[MKURS] [decimal](9, 0) NULL,
	[FWEHT] [decimal](4, 0) NULL,
	[MENGE] [decimal](15, 3) NULL,
	[MEEHT] [varchar](3) NULL,
	[SUMM1] [decimal](15, 3) NULL,
	[SUMM2] [decimal](15, 2) NULL,
	[SUMM3] [decimal](15, 2) NULL,
	[DPREIS] [decimal](15, 2) NULL,
	[PREIS1] [decimal](15, 2) NULL,
	[PREIS2] [decimal](15, 2) NULL,
	[PREIS3] [decimal](15, 2) NULL,
	[PREIS4] [decimal](15, 2) NULL,
	[PREIS5] [decimal](15, 2) NULL,
	[PFKT1] [decimal](5, 2) NULL,
	[PFKT2] [decimal](5, 2) NULL,
	[PFKT3] [decimal](5, 2) NULL,
	[PFKT4] [decimal](5, 2) NULL,
	[PFKT5] [decimal](5, 2) NULL,
	[ZUABS] [decimal](15, 2) NULL,
	[ZUFKT] [decimal](5, 4) NULL,
	[PSKNZ] [varchar](1) NULL,
	[SBDKZ] [varchar](1) NULL,
	[VTKNZ] [varchar](1) NULL,
	[LSTAR] [varchar](6) NULL,
	[ARBID] [decimal](8, 0) NULL,
	[KOSTL] [varchar](10) NULL,
	[INFNR] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[ESOKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[STEUS] [varchar](4) NULL,
	[FXPRU] [varchar](1) NULL,
	[STPOS] [decimal](4, 0) NULL,
	[AFAKT] [float] NULL,
	[BWTAR] [varchar](10) NULL,
	[MKALK] [varchar](1) NULL,
	[BTYP] [varchar](4) NULL,
	[KALNR_BA] [decimal](12, 0) NULL,
	[MISCH_VERH] [decimal](13, 3) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[AUSMG] [decimal](15, 3) NULL,
	[AUSMGKO] [decimal](15, 3) NULL,
	[AUSPROZ] [decimal](6, 3) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[VORNR] [varchar](4) NULL,
	[UVORN] [varchar](4) NULL,
	[STEAS] [date] NULL,
	[POSNR_EXT] [decimal](5, 0) NULL,
	[POINTER1] [decimal](5, 0) NULL,
	[POINTER2] [decimal](5, 0) NULL,
	[POINTER3] [decimal](5, 0) NULL,
	[OPREIS] [decimal](15, 2) NULL,
	[OPREIFX] [decimal](15, 2) NULL,
	[TPREIS] [decimal](15, 2) NULL,
	[TPREIFX] [decimal](15, 2) NULL,
	[PATNR] [decimal](6, 0) NULL,
	[VERWS] [varchar](35) NULL,
	[PRSKZ] [varchar](3) NULL,
	[STRAT] [varchar](1) NULL,
	[SUBSTRAT] [varchar](1) NULL,
	[TKURS] [decimal](9, 5) NULL,
	[SELKZ] [varchar](1) NULL,
	[VRGGRP] [varchar](3) NULL,
	[KKZMM] [varchar](1) NULL,
	[SSEDD] [date] NULL,
	[FEHLKZ] [varchar](1) NULL,
	[NO_CCSPLIT] [varchar](1) NULL,
	[SCHKZ] [varchar](1) NULL,
	[SCHKZNS] [varchar](1) NULL,
	[UFIELD_MODE] [varchar](1) NULL,
	[UKALN] [decimal](12, 0) NULL,
	[UKALKA] [varchar](2) NULL,
	[UKADKY] [date] NULL,
	[UTVERS] [decimal](2, 0) NULL,
	[UBWVAR] [varchar](3) NULL,
	[HKMAT] [varchar](1) NULL,
	[SPOSN] [varchar](4) NULL,
	[USTRAT] [decimal](1, 0) NULL,
	[BAUGR] [varchar](1) NULL,
	[ASNUM] [varchar](18) NULL,
	[PEINH_2] [decimal](5, 0) NULL,
	[PEINH_3] [decimal](5, 0) NULL,
	[PRZNR] [varchar](12) NULL,
	[NLAG] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[GSBER] [varchar](4) NULL,
	[PSPNR] [decimal](8, 0) NULL,
	[PAROB] [varchar](22) NULL,
	[KZANW] [varchar](1) NULL,
	[KZLB] [varchar](1) NULL,
	[SUBKEY] [varchar](14) NULL,
	[KZWSO] [varchar](1) NULL,
	[DISST] [varchar](3) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GENTYP] [varchar](1) NULL,
	[COMPONENT_ID] [decimal](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[LEDNR] ASC,
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC,
	[POSNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COAS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COAS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COAS_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COAS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBK]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COBK](
	[MANDT] [varchar](3) NOT NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBK_test]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COBK_test](
	[MANDT] [varchar](3) NOT NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[COEP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COEP_2017]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COEP_2017](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[DW_Cre_Ts] [datetime2](7) NULL,
	[DW_Cre_Usr] [varchar](50) NULL,
	[DW_Mod_Ts] [datetime2](7) NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [varchar](1) NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COEP2017_P1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COEP2017_P1](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 5:38:51 PM ******/
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
/****** Object:  Table [dbo].[COSP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COSP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[PERBL] [decimal](3, 0) NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COSS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COSS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[PERBL] [decimal](3, 0) NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[PAF001] [decimal](15, 2) NULL,
	[PAF002] [decimal](15, 2) NULL,
	[PAF003] [decimal](15, 2) NULL,
	[PAF004] [decimal](15, 2) NULL,
	[PAF005] [decimal](15, 2) NULL,
	[PAF006] [decimal](15, 2) NULL,
	[PAF007] [decimal](15, 2) NULL,
	[PAF008] [decimal](15, 2) NULL,
	[PAF009] [decimal](15, 2) NULL,
	[PAF010] [decimal](15, 2) NULL,
	[PAF011] [decimal](15, 2) NULL,
	[PAF012] [decimal](15, 2) NULL,
	[PAF013] [decimal](15, 2) NULL,
	[PAF014] [decimal](15, 2) NULL,
	[PAF015] [decimal](15, 2) NULL,
	[PAF016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRHD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRHD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJTY] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[BEGDA] [date] NULL,
	[ENDDA] [date] NULL,
	[AEDAT_GRND] [date] NULL,
	[AENAM_GRND] [varchar](12) NULL,
	[AEDAT_VORA] [date] NULL,
	[AENAM_VORA] [varchar](12) NULL,
	[AEDAT_TERM] [date] NULL,
	[AENAM_TERM] [varchar](12) NULL,
	[AEDAT_TECH] [date] NULL,
	[AENAM_TECH] [varchar](12) NULL,
	[ARBPL] [varchar](8) NULL,
	[WERKS] [varchar](4) NULL,
	[VERWE] [varchar](4) NULL,
	[LVORM] [varchar](1) NULL,
	[PAR01] [varchar](6) NULL,
	[PAR02] [varchar](6) NULL,
	[PAR03] [varchar](6) NULL,
	[PAR04] [varchar](6) NULL,
	[PAR05] [varchar](6) NULL,
	[PAR06] [varchar](6) NULL,
	[PARU1] [varchar](3) NULL,
	[PARU2] [varchar](3) NULL,
	[PARU3] [varchar](3) NULL,
	[PARU4] [varchar](3) NULL,
	[PARU5] [varchar](3) NULL,
	[PARU6] [varchar](3) NULL,
	[PARV1] [decimal](9, 3) NULL,
	[PARV2] [decimal](9, 3) NULL,
	[PARV3] [decimal](9, 3) NULL,
	[PARV4] [decimal](9, 3) NULL,
	[PARV5] [decimal](9, 3) NULL,
	[PARV6] [decimal](9, 3) NULL,
	[PLANV] [varchar](3) NULL,
	[STAND] [varchar](10) NULL,
	[VERAN] [varchar](3) NULL,
	[VGWTS] [varchar](4) NULL,
	[VGM01] [varchar](1) NULL,
	[VGM02] [varchar](1) NULL,
	[VGM03] [varchar](1) NULL,
	[VGM04] [varchar](1) NULL,
	[VGM05] [varchar](1) NULL,
	[VGM06] [varchar](1) NULL,
	[XDEFA] [varchar](1) NULL,
	[XKOST] [varchar](1) NULL,
	[XSPRR] [varchar](1) NULL,
	[XTERM] [varchar](1) NULL,
	[ZGR01] [varchar](3) NULL,
	[ZGR02] [varchar](3) NULL,
	[ZGR03] [varchar](3) NULL,
	[ZGR04] [varchar](3) NULL,
	[ZGR05] [varchar](3) NULL,
	[ZGR06] [varchar](3) NULL,
	[KTSCH] [varchar](7) NULL,
	[LOANZ] [decimal](3, 0) NULL,
	[LOART] [varchar](4) NULL,
	[LOGRP] [varchar](3) NULL,
	[QUALF] [varchar](2) NULL,
	[RASCH] [varchar](2) NULL,
	[STEUS] [varchar](4) NULL,
	[VGE01] [varchar](3) NULL,
	[VGE02] [varchar](3) NULL,
	[VGE03] [varchar](3) NULL,
	[VGE04] [varchar](3) NULL,
	[VGE05] [varchar](3) NULL,
	[VGE06] [varchar](3) NULL,
	[KTSCH_REF] [varchar](1) NULL,
	[LOART_REF] [varchar](1) NULL,
	[LOANZ_REF] [varchar](1) NULL,
	[LOGRP_REF] [varchar](1) NULL,
	[QUALF_REF] [varchar](1) NULL,
	[RASCH_REF] [varchar](1) NULL,
	[STEUS_REF] [varchar](1) NULL,
	[FORT1] [varchar](6) NULL,
	[FORT2] [varchar](6) NULL,
	[FORT3] [varchar](6) NULL,
	[KAPID] [decimal](8, 0) NULL,
	[ORTGR] [varchar](4) NULL,
	[ZEIWN] [varchar](3) NULL,
	[ZWNOR] [decimal](9, 3) NULL,
	[ZEIWM] [varchar](3) NULL,
	[ZWMIN] [decimal](9, 3) NULL,
	[FORMR] [varchar](1) NULL,
	[MATYP] [varchar](10) NULL,
	[CPLGR] [varchar](3) NULL,
	[SORTB] [varchar](9) NULL,
	[MTRVP] [decimal](3, 1) NULL,
	[MTMVP] [decimal](3, 1) NULL,
	[MTPVP] [decimal](3, 1) NULL,
	[RSANZ] [decimal](3, 0) NULL,
	[PDEST] [varchar](4) NULL,
	[HROID] [decimal](8, 0) NULL,
	[FORTN] [varchar](6) NULL,
	[ZGR01_REF] [varchar](1) NULL,
	[ZGR02_REF] [varchar](1) NULL,
	[ZGR03_REF] [varchar](1) NULL,
	[ZGR04_REF] [varchar](1) NULL,
	[ZGR05_REF] [varchar](1) NULL,
	[ZGR06_REF] [varchar](1) NULL,
	[STEUS_C] [varchar](4) NULL,
	[STEUS_I] [varchar](4) NULL,
	[STEUS_N] [varchar](4) NULL,
	[STEUS_Q] [varchar](4) NULL,
	[RUZUS] [varchar](4) NULL,
	[RSANZ_REF] [varchar](1) NULL,
	[HR] [varchar](1) NULL,
	[PRVBE] [varchar](10) NULL,
	[SUBSYS] [varchar](6) NULL,
	[BDEGR] [varchar](3) NULL,
	[RGEKZ] [varchar](1) NULL,
	[HRTYP] [varchar](2) NULL,
	[SLWID] [varchar](7) NULL,
	[LIFNR] [varchar](10) NULL,
	[SLWID_REF] [varchar](1) NULL,
	[LIFNR_REF] [varchar](1) NULL,
	[VGARB] [varchar](3) NULL,
	[VGDIM] [varchar](6) NULL,
	[HRPLVAR] [varchar](2) NULL,
	[VGDAU] [varchar](3) NULL,
	[STOBJ] [varchar](22) NULL,
	[RESGR] [varchar](8) NULL,
	[LGORT_RES] [varchar](4) NULL,
	[MIXMAT] [varchar](1) NULL,
	[ISTBED_KZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRHD_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRHD_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJTY] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[BEGDA] [date] NULL,
	[ENDDA] [date] NULL,
	[AEDAT_GRND] [date] NULL,
	[AENAM_GRND] [varchar](12) NULL,
	[AEDAT_VORA] [date] NULL,
	[AENAM_VORA] [varchar](12) NULL,
	[AEDAT_TERM] [date] NULL,
	[AENAM_TERM] [varchar](12) NULL,
	[AEDAT_TECH] [date] NULL,
	[AENAM_TECH] [varchar](12) NULL,
	[ARBPL] [varchar](8) NULL,
	[WERKS] [varchar](4) NULL,
	[VERWE] [varchar](4) NULL,
	[LVORM] [varchar](1) NULL,
	[PAR01] [varchar](6) NULL,
	[PAR02] [varchar](6) NULL,
	[PAR03] [varchar](6) NULL,
	[PAR04] [varchar](6) NULL,
	[PAR05] [varchar](6) NULL,
	[PAR06] [varchar](6) NULL,
	[PARU1] [varchar](3) NULL,
	[PARU2] [varchar](3) NULL,
	[PARU3] [varchar](3) NULL,
	[PARU4] [varchar](3) NULL,
	[PARU5] [varchar](3) NULL,
	[PARU6] [varchar](3) NULL,
	[PARV1] [decimal](9, 3) NULL,
	[PARV2] [decimal](9, 3) NULL,
	[PARV3] [decimal](9, 3) NULL,
	[PARV4] [decimal](9, 3) NULL,
	[PARV5] [decimal](9, 3) NULL,
	[PARV6] [decimal](9, 3) NULL,
	[PLANV] [varchar](3) NULL,
	[STAND] [varchar](10) NULL,
	[VERAN] [varchar](3) NULL,
	[VGWTS] [varchar](4) NULL,
	[VGM01] [varchar](1) NULL,
	[VGM02] [varchar](1) NULL,
	[VGM03] [varchar](1) NULL,
	[VGM04] [varchar](1) NULL,
	[VGM05] [varchar](1) NULL,
	[VGM06] [varchar](1) NULL,
	[XDEFA] [varchar](1) NULL,
	[XKOST] [varchar](1) NULL,
	[XSPRR] [varchar](1) NULL,
	[XTERM] [varchar](1) NULL,
	[ZGR01] [varchar](3) NULL,
	[ZGR02] [varchar](3) NULL,
	[ZGR03] [varchar](3) NULL,
	[ZGR04] [varchar](3) NULL,
	[ZGR05] [varchar](3) NULL,
	[ZGR06] [varchar](3) NULL,
	[KTSCH] [varchar](7) NULL,
	[LOANZ] [decimal](3, 0) NULL,
	[LOART] [varchar](4) NULL,
	[LOGRP] [varchar](3) NULL,
	[QUALF] [varchar](2) NULL,
	[RASCH] [varchar](2) NULL,
	[STEUS] [varchar](4) NULL,
	[VGE01] [varchar](3) NULL,
	[VGE02] [varchar](3) NULL,
	[VGE03] [varchar](3) NULL,
	[VGE04] [varchar](3) NULL,
	[VGE05] [varchar](3) NULL,
	[VGE06] [varchar](3) NULL,
	[KTSCH_REF] [varchar](1) NULL,
	[LOART_REF] [varchar](1) NULL,
	[LOANZ_REF] [varchar](1) NULL,
	[LOGRP_REF] [varchar](1) NULL,
	[QUALF_REF] [varchar](1) NULL,
	[RASCH_REF] [varchar](1) NULL,
	[STEUS_REF] [varchar](1) NULL,
	[FORT1] [varchar](6) NULL,
	[FORT2] [varchar](6) NULL,
	[FORT3] [varchar](6) NULL,
	[KAPID] [decimal](8, 0) NULL,
	[ORTGR] [varchar](4) NULL,
	[ZEIWN] [varchar](3) NULL,
	[ZWNOR] [decimal](9, 3) NULL,
	[ZEIWM] [varchar](3) NULL,
	[ZWMIN] [decimal](9, 3) NULL,
	[FORMR] [varchar](1) NULL,
	[MATYP] [varchar](10) NULL,
	[CPLGR] [varchar](3) NULL,
	[SORTB] [varchar](9) NULL,
	[MTRVP] [decimal](3, 1) NULL,
	[MTMVP] [decimal](3, 1) NULL,
	[MTPVP] [decimal](3, 1) NULL,
	[RSANZ] [decimal](3, 0) NULL,
	[PDEST] [varchar](4) NULL,
	[HROID] [decimal](8, 0) NULL,
	[FORTN] [varchar](6) NULL,
	[ZGR01_REF] [varchar](1) NULL,
	[ZGR02_REF] [varchar](1) NULL,
	[ZGR03_REF] [varchar](1) NULL,
	[ZGR04_REF] [varchar](1) NULL,
	[ZGR05_REF] [varchar](1) NULL,
	[ZGR06_REF] [varchar](1) NULL,
	[STEUS_C] [varchar](4) NULL,
	[STEUS_I] [varchar](4) NULL,
	[STEUS_N] [varchar](4) NULL,
	[STEUS_Q] [varchar](4) NULL,
	[RUZUS] [varchar](4) NULL,
	[RSANZ_REF] [varchar](1) NULL,
	[HR] [varchar](1) NULL,
	[PRVBE] [varchar](10) NULL,
	[SUBSYS] [varchar](6) NULL,
	[BDEGR] [varchar](3) NULL,
	[RGEKZ] [varchar](1) NULL,
	[HRTYP] [varchar](2) NULL,
	[SLWID] [varchar](7) NULL,
	[LIFNR] [varchar](10) NULL,
	[SLWID_REF] [varchar](1) NULL,
	[LIFNR_REF] [varchar](1) NULL,
	[VGARB] [varchar](3) NULL,
	[VGDIM] [varchar](6) NULL,
	[HRPLVAR] [varchar](2) NULL,
	[VGDAU] [varchar](3) NULL,
	[STOBJ] [varchar](22) NULL,
	[RESGR] [varchar](8) NULL,
	[LGORT_RES] [varchar](4) NULL,
	[MIXMAT] [varchar](1) NULL,
	[ISTBED_KZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRHH]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRHH](
	[MANDT] [varchar](3) NOT NULL,
	[OBJTY] [varchar](2) NOT NULL,
	[OBJID] [decimal](8, 0) NOT NULL,
	[NAME] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[VERAN] [varchar](3) NULL,
	[SROOT] [varchar](1) NULL,
	[SWERK] [varchar](1) NULL,
	[NETWK] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[OBJTY] ASC,
	[OBJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRTX]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRTX](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[OBJTY] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[SPRAS] [varchar](1) NULL,
	[AEDAT_TEXT] [varchar](10) NULL,
	[AENAM_TEXT] [varchar](12) NULL,
	[KTEXT] [varchar](40) NULL,
	[KTEXT_UP] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRTX_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRTX_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[OBJTY] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[SPRAS] [varchar](1) NULL,
	[AEDAT_TEXT] [varchar](10) NULL,
	[AENAM_TEXT] [varchar](12) NULL,
	[KTEXT] [varchar](40) NULL,
	[KTEXT_UP] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKA]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKA](
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
/****** Object:  Table [dbo].[CSKA_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKA_OLD](
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
/****** Object:  Table [dbo].[CSKB]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKB](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KATYP] [varchar](2) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[EIGEN] [varchar](8) NULL,
	[PLAZU] [varchar](1) NULL,
	[PLAOR] [varchar](1) NULL,
	[PLAUS] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[AUFNR] [varchar](12) NULL,
	[MGEFL] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[DEAKT] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[RECID] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKB_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKB_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[KATYP] [varchar](2) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[EIGEN] [varchar](8) NULL,
	[PLAZU] [varchar](1) NULL,
	[PLAOR] [varchar](1) NULL,
	[PLAUS] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[AUFNR] [varchar](12) NULL,
	[MGEFL] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[DEAKT] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[RECID] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[BKZKP] [varchar](1) NULL,
	[PKZKP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSAR] [varchar](1) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[KALSM] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[PRCTR] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BKZKS] [varchar](1) NULL,
	[BKZER] [varchar](1) NULL,
	[BKZOB] [varchar](1) NULL,
	[PKZKS] [varchar](1) NULL,
	[PKZER] [varchar](1) NULL,
	[VMETH] [varchar](2) NULL,
	[MGEFL] [varchar](1) NULL,
	[ABTEI] [varchar](12) NULL,
	[NKOST] [varchar](10) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOSZSCHL] [varchar](6) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOMPL] [varchar](1) NULL,
	[STAKZ] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[FUNKT] [varchar](3) NULL,
	[AFUNK] [varchar](3) NULL,
	[CPI_TEMPL] [varchar](10) NULL,
	[CPD_TEMPL] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCI_TEMPL] [varchar](10) NULL,
	[SCD_TEMPL] [varchar](10) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[JV_OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKS_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[BKZKP] [varchar](1) NULL,
	[PKZKP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSAR] [varchar](1) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[KALSM] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[PRCTR] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BKZKS] [varchar](1) NULL,
	[BKZER] [varchar](1) NULL,
	[BKZOB] [varchar](1) NULL,
	[PKZKS] [varchar](1) NULL,
	[PKZER] [varchar](1) NULL,
	[VMETH] [varchar](2) NULL,
	[MGEFL] [varchar](1) NULL,
	[ABTEI] [varchar](12) NULL,
	[NKOST] [varchar](10) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOSZSCHL] [varchar](6) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOMPL] [varchar](1) NULL,
	[STAKZ] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[FUNKT] [varchar](3) NULL,
	[AFUNK] [varchar](3) NULL,
	[CPI_TEMPL] [varchar](10) NULL,
	[CPD_TEMPL] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCI_TEMPL] [varchar](10) NULL,
	[SCD_TEMPL] [varchar](10) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[JV_OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKU]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKU](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKU_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKU_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKBE]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKBE](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ZEKKN] [decimal](2, 0) NOT NULL,
	[VGABE] [varchar](1) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](4, 0) NOT NULL,
	[BEWTP] [varchar](1) NULL,
	[BWART] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MENGE] [decimal](13, 3) NULL,
	[BPMNG] [decimal](13, 3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[WRBTR] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[AREWR] [decimal](13, 2) NULL,
	[WESBS] [decimal](13, 3) NULL,
	[BPWES] [decimal](13, 3) NULL,
	[SHKZG] [varchar](1) NULL,
	[BWTAR] [varchar](10) NULL,
	[ELIKZ] [varchar](1) NULL,
	[XBLNR] [varchar](16) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFBNR] [varchar](10) NULL,
	[LFPOS] [decimal](4, 0) NULL,
	[GRUND] [decimal](4, 0) NULL,
	[CPUDT] [date] NULL,
	[CPUTM] [time](7) NULL,
	[REEWR] [decimal](13, 2) NULL,
	[EVERE] [varchar](2) NULL,
	[REFWR] [decimal](13, 2) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[XWSBR] [varchar](1) NULL,
	[ETENS] [decimal](4, 0) NULL,
	[KNUMV] [varchar](10) NULL,
	[MWSKZ] [varchar](2) NULL,
	[LSMNG] [decimal](13, 3) NULL,
	[LSMEH] [varchar](3) NULL,
	[EMATN] [varchar](18) NULL,
	[AREWW] [decimal](13, 2) NULL,
	[HSWAE] [varchar](5) NULL,
	[BAMNG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[BLDAT] [date] NULL,
	[XWOFF] [varchar](1) NULL,
	[XUNPL] [varchar](1) NULL,
	[ERNAM] [varchar](12) NULL,
	[SRVPOS] [varchar](18) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[INTROW] [decimal](10, 0) NULL,
	[BEKKN] [decimal](2, 0) NULL,
	[LEMIN] [varchar](1) NULL,
	[AREWB] [decimal](13, 2) NULL,
	[REWRB] [decimal](13, 2) NULL,
	[SAPRL] [varchar](4) NULL,
	[MENGE_POP] [decimal](13, 3) NULL,
	[BPMNG_POP] [decimal](13, 3) NULL,
	[DMBTR_POP] [decimal](13, 2) NULL,
	[WRBTR_POP] [decimal](13, 2) NULL,
	[WESBB] [decimal](13, 3) NULL,
	[BPWEB] [decimal](13, 3) NULL,
	[WEORA] [varchar](1) NULL,
	[AREWR_POP] [decimal](13, 2) NULL,
	[KUDIF] [decimal](13, 2) NULL,
	[ET_UPD] [varchar](1) NULL,
	[J_SC_DIE_COMP_F] [varchar](1) NULL,
	[STATUS_FLAG] [varchar](1) NULL,
	[ETL_LOAD_DATE] [datetime2](7) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ZEKKN] ASC,
	[VGABE] ASC,
	[GJAHR] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKET]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKET](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ETENR] [decimal](4, 0) NOT NULL,
	[AEDAT] [date] NULL,
	[EINDT] [date] NULL,
	[SLFDT] [date] NULL,
	[LPEIN] [varchar](1) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AMENG] [decimal](13, 3) NULL,
	[WEMNG] [decimal](13, 3) NULL,
	[WAMNG] [decimal](13, 3) NULL,
	[UZEIT] [time](7) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[ESTKZ] [varchar](1) NULL,
	[QUNUM] [varchar](10) NULL,
	[QUPOS] [decimal](3, 0) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[BEDAT] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[SERNR] [varchar](8) NULL,
	[FIXKZ] [varchar](1) NULL,
	[GLMNG] [decimal](13, 3) NULL,
	[DABMG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[LICHA] [varchar](15) NULL,
	[CHKOM] [varchar](1) NULL,
	[VERID] [varchar](4) NULL,
	[ABART] [varchar](1) NULL,
	[MNG02] [decimal](13, 3) NULL,
	[DAT01] [date] NULL,
	[ALTDT] [date] NULL,
	[AULWE] [varchar](10) NULL,
	[MBDAT] [date] NULL,
	[MBUHR] [time](7) NULL,
	[LDDAT] [date] NULL,
	[LDUHR] [time](7) NULL,
	[TDDAT] [date] NULL,
	[TDUHR] [time](7) NULL,
	[WADAT] [date] NULL,
	[WAUHR] [time](7) NULL,
	[ELDAT] [date] NULL,
	[ELUHR] [time](7) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[DL_ID] [varchar](22) NULL,
	[HANDOVER_DATE] [date] NULL,
	[NO_SCEM] [varchar](1) NULL,
	[DNG_DATE] [date] NULL,
	[DNG_TIME] [time](7) NULL,
	[CNCL_ANCMNT_DONE] [varchar](1) NULL,
	[DATESHIFT_NUMBER] [decimal](3, 0) NULL,
	[STATUS_FLAG] [varchar](1) NULL,
	[ETL_LOAD_DATE] [datetime2](7) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ETENR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKKO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_EKKO] PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKPO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKPO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[REFSITE] [varchar](4) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_EKPO] PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EORD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EORD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[ZEORD] [decimal](5, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[VDATU] [varchar](24) NULL,
	[BDATU] [varchar](24) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLIFN] [varchar](1) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[FEBEL] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[FRESW] [varchar](1) NULL,
	[EMATN] [varchar](18) NULL,
	[NOTKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[VRTYP] [varchar](1) NULL,
	[EORTP] [varchar](1) NULL,
	[AUTET] [varchar](1) NULL,
	[MEINS] [varchar](3) NULL,
	[LOGSY] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EORD_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EORD_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[ZEORD] [decimal](5, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[VDATU] [varchar](24) NULL,
	[BDATU] [varchar](24) NULL,
	[LIFNR] [varchar](10) NULL,
	[FLIFN] [varchar](1) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[FEBEL] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[FRESW] [varchar](1) NULL,
	[EMATN] [varchar](18) NULL,
	[NOTKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[VRTYP] [varchar](1) NULL,
	[EORTP] [varchar](1) NULL,
	[AUTET] [varchar](1) NULL,
	[MEINS] [varchar](3) NULL,
	[LOGSY] [varchar](10) NULL,
	[SOBKZ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GLT0_BS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GLT0_BS](
	[RCLNT] [varchar](3) NOT NULL,
	[RLDNR] [varchar](2) NOT NULL,
	[RRCTY] [varchar](1) NOT NULL,
	[RVERS] [varchar](3) NOT NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[RYEAR] [decimal](4, 0) NOT NULL,
	[RACCT] [varchar](10) NOT NULL,
	[RBUSA] [varchar](4) NOT NULL,
	[RTCUR] [varchar](5) NOT NULL,
	[DRCRK] [varchar](1) NOT NULL,
	[RPMAX] [decimal](3, 0) NOT NULL,
	[TSLVT] [decimal](15, 2) NULL,
	[TSL01] [decimal](15, 2) NULL,
	[TSL02] [decimal](15, 2) NULL,
	[TSL03] [decimal](15, 2) NULL,
	[TSL04] [decimal](15, 2) NULL,
	[TSL05] [decimal](15, 2) NULL,
	[TSL06] [decimal](15, 2) NULL,
	[TSL07] [decimal](15, 2) NULL,
	[TSL08] [decimal](15, 2) NULL,
	[TSL09] [decimal](15, 2) NULL,
	[TSL10] [decimal](15, 2) NULL,
	[TSL11] [decimal](15, 2) NULL,
	[TSL12] [decimal](15, 2) NULL,
	[TSL13] [decimal](15, 2) NULL,
	[TSL14] [decimal](15, 2) NULL,
	[TSL15] [decimal](15, 2) NULL,
	[TSL16] [decimal](15, 2) NULL,
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
	[CSPRED] [varchar](4) NULL,
	[KSLVT] [decimal](15, 2) NULL,
	[KSL01] [decimal](15, 2) NULL,
	[KSL02] [decimal](15, 2) NULL,
	[KSL03] [decimal](15, 2) NULL,
	[KSL04] [decimal](15, 2) NULL,
	[KSL05] [decimal](15, 2) NULL,
	[KSL06] [decimal](15, 2) NULL,
	[KSL07] [decimal](15, 2) NULL,
	[KSL08] [decimal](15, 2) NULL,
	[KSL09] [decimal](15, 2) NULL,
	[KSL10] [decimal](15, 2) NULL,
	[KSL11] [decimal](15, 2) NULL,
	[KSL12] [decimal](15, 2) NULL,
	[KSL13] [decimal](15, 2) NULL,
	[KSL14] [decimal](15, 2) NULL,
	[KSL15] [decimal](15, 2) NULL,
	[KSL16] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JEST]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JEST](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[OBJNR] [varchar](22) NOT NULL,
	[STAT] [varchar](5) NOT NULL,
	[INACT] [varchar](1) NULL,
	[CHGNR] [decimal](3, 0) NULL,
 CONSTRAINT [JEST_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[OBJNR] ASC,
	[STAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JEST_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JEST_OLD](
	[MANDT] [varchar](3) NULL,
	[OBJNR] [varchar](22) NOT NULL,
	[STAT] [varchar](5) NOT NULL,
	[INACT] [varchar](1) NULL,
	[CHGNR] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[OBJNR] ASC,
	[STAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEKO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[KEKO_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEKO_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[KLA_WM_CALC2_11_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_WM_CALC2_11_1](
	[Plant] [int] NULL,
	[Plant Description] [varchar](30) NULL,
	[City] [varchar](25) NULL,
	[Region] [varchar](3) NULL,
	[Region Description] [varchar](30) NULL,
	[Country] [varchar](3) NULL,
	[Country Name] [varchar](15) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Fiscal Period] [varchar](3) NULL,
	[Fiscal Week] [varchar](2) NULL,
	[Date (Each component)] [varchar](10) NULL,
	[Shift] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](10) NULL,
	[Production Order] [varchar](12) NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](25) NULL,
	[Category] [varchar](5) NULL,
	[Category Description] [varchar](12) NULL,
	[Brand] [varchar](10) NULL,
	[Brand Description] [varchar](100) NULL,
	[Type] [varchar](8) NULL,
	[Type Description] [varchar](20) NULL,
	[Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[Overweight %] [decimal](11, 2) NULL,
	[Moisture %] [decimal](10, 2) NULL,
	[Waste %] [decimal](10, 2) NULL,
	[Material Group (finished product)] [varchar](9) NULL,
	[Material Group Description] [varchar](20) NULL,
	[Good Receipts_Actuals] [decimal](13, 2) NULL,
	[Component Material] [varchar](18) NULL,
	[Component Material Description] [varchar](40) NULL,
	[GI Qty_Actuals] [decimal](13, 2) NULL,
	[GI Val_Actuals LC] [decimal](13, 2) NULL,
	[GI VAL_Actuals USD] [decimal](13, 2) NULL,
	[GI Qty_Standard] [decimal](13, 2) NULL,
	[Unit] [varchar](2) NULL,
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
	[Standard Vs Actual %] [int] NULL,
	[% Ideal Vs Actual] [int] NULL,
	[C. Scrap] [decimal](5, 2) NULL,
	[GI Qty_Frozen] [decimal](13, 2) NULL,
	[Frozen Vs Actual %] [int] NULL,
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
	[WERTN] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_WM_MATERIAL_VARIANCES_REPORT_MOCK]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_WM_MATERIAL_VARIANCES_REPORT_MOCK](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](15) NULL,
	[CITY] [varchar](9) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](9) NULL,
	[COUNTRY] [varchar](2) NULL,
	[Country Name] [varchar](6) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [int] NULL,
	[Fiscal Period] [varchar](6) NULL,
	[Fiscal week] [varchar](6) NULL,
	[Date (Each component)] [varchar](8) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](9) NULL,
	[Production Order] [int] NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](21) NULL,
	[CATEGORY] [int] NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [float] NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [int] NULL,
	[Material Description] [varchar](19) NULL,
	[Overweight %] [varchar](2) NULL,
	[Moisture %] [varchar](2) NULL,
	[Waste %] [varchar](4) NULL,
	[Material Group (finished product)] [varchar](4) NULL,
	[Material Group Description] [varchar](4) NULL,
	[Good Receipts 0 Actuals] [decimal](10, 3) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](7) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [decimal](10, 3) NULL,
	[Overweight % for Component Material] [varchar](2) NULL,
	[Moisture % for Component Material] [varchar](2) NULL,
	[Waste % for Component Material] [varchar](2) NULL,
	[Component Material] [varchar](10) NULL,
	[Component Material Description] [varchar](23) NULL,
	[GI Qty 0 Actuals] [decimal](10, 3) NULL,
	[Unit_1] [varchar](2) NULL,
	[GI Val 0 Actuals LC] [decimal](10, 3) NULL,
	[Local Currency] [varchar](3) NULL,
	[GI VAL 0 Actuals USD] [decimal](10, 3) NULL,
	[USD] [varchar](3) NULL,
	[GI Qty 0 Standard] [decimal](10, 3) NULL,
	[Unit_2] [varchar](2) NULL,
	[GI Val 0 Standard LC] [decimal](10, 3) NULL,
	[Local Currency_1] [varchar](3) NULL,
	[GI Val 0 Standard USD] [decimal](10, 3) NULL,
	[USD_1] [varchar](3) NULL,
	[GI Val 0 Frozen LC] [decimal](10, 3) NULL,
	[FIELD55] [varchar](3) NULL,
	[GI Val 0 Frozen USD] [decimal](10, 3) NULL,
	[USD_2] [varchar](3) NULL,
	[Quantity  (or GI Qty 0 Ideal)] [decimal](10, 3) NULL,
	[Unit_3] [varchar](2) NULL,
	[GI Val 0 Ideal LC] [decimal](10, 3) NULL,
	[Local_Currency_2] [varchar](3) NULL,
	[GI Val 0 Ideal USD] [decimal](10, 3) NULL,
	[USD_3] [varchar](3) NULL,
	[Standard Vs Actual in units] [decimal](10, 3) NULL,
	[Unit_4] [varchar](2) NULL,
	[Standard Vs Actual in LC] [decimal](10, 3) NULL,
	[Local Currency_2] [varchar](3) NULL,
	[Standard Vs Actual in USD] [decimal](10, 3) NULL,
	[USD_4] [varchar](3) NULL,
	[Ideal Vs Actual in Units] [decimal](10, 3) NULL,
	[Unit_5] [varchar](2) NULL,
	[Ideal vs Actual in LC] [decimal](10, 3) NULL,
	[Local Currency_3] [varchar](3) NULL,
	[Ideal vs Actual USD] [decimal](10, 3) NULL,
	[USD_5] [varchar](3) NULL,
	[Standard Vs Actual %] [varchar](2) NULL,
	[% Ideal Vs Actual] [varchar](2) NULL,
	[C. Scrap] [decimal](10, 3) NULL,
	[GI Qty 0  Frozen] [int] NULL,
	[Frozen Vs Actual %] [int] NULL,
	[Frozen Vs Actual in Units] [int] NULL,
	[Frozen Vs Actual in LC] [int] NULL,
	[Frozen Vs Actual in USD] [int] NULL,
	[Date Time Stamp of data the extraction] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[TELF1] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[XCPDK] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[AUFSD] [varchar](2) NULL,
	[BAHNE] [varchar](25) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[EXABL] [varchar](1) NULL,
	[FAKSD] [varchar](2) NULL,
	[FISKN] [varchar](10) NULL,
	[KNAZK] [varchar](2) NULL,
	[KNRZA] [varchar](10) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKD] [varchar](4) NULL,
	[KUKLA] [varchar](2) NULL,
	[LIFNR] [varchar](10) NULL,
	[LIFSD] [varchar](2) NULL,
	[LOCCO] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[NIELS] [varchar](2) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[RPMKR] [varchar](5) NULL,
	[SPERR] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF2] [varchar](16) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[LZONE] [varchar](10) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[STCEG] [varchar](20) NULL,
	[DEAR1] [varchar](1) NULL,
	[DEAR2] [varchar](1) NULL,
	[DEAR3] [varchar](1) NULL,
	[DEAR4] [varchar](1) NULL,
	[DEAR5] [varchar](1) NULL,
	[GFORM] [varchar](2) NULL,
	[BRAN1] [varchar](10) NULL,
	[BRAN2] [varchar](10) NULL,
	[BRAN3] [varchar](10) NULL,
	[BRAN4] [varchar](10) NULL,
	[BRAN5] [varchar](10) NULL,
	[EKONT] [varchar](10) NULL,
	[UMSAT] [decimal](8, 2) NULL,
	[UMJAH] [decimal](4, 0) NULL,
	[UWAER] [varchar](5) NULL,
	[JMZAH] [decimal](6, 0) NULL,
	[JMJAH] [decimal](4, 0) NULL,
	[KATR1] [varchar](2) NULL,
	[KATR2] [varchar](2) NULL,
	[KATR3] [varchar](2) NULL,
	[KATR4] [varchar](2) NULL,
	[KATR5] [varchar](2) NULL,
	[KATR6] [varchar](3) NULL,
	[KATR7] [varchar](3) NULL,
	[KATR8] [varchar](3) NULL,
	[KATR9] [varchar](3) NULL,
	[KATR10] [varchar](3) NULL,
	[STKZN] [varchar](1) NULL,
	[UMSA1] [decimal](15, 2) NULL,
	[TXJCD] [varchar](15) NULL,
	[PERIV] [varchar](2) NULL,
	[ABRVW] [varchar](3) NULL,
	[INSPBYDEBI] [varchar](1) NULL,
	[INSPATDEBI] [varchar](1) NULL,
	[KTOCD] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL,
	[SPERZ] [varchar](1) NULL,
	[ETIKG] [varchar](10) NULL,
	[CIVVE] [varchar](1) NULL,
	[MILVE] [varchar](1) NULL,
	[KDKG1] [varchar](2) NULL,
	[KDKG2] [varchar](2) NULL,
	[KDKG3] [varchar](2) NULL,
	[KDKG4] [varchar](2) NULL,
	[KDKG5] [varchar](2) NULL,
	[XKNZA] [varchar](1) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[XICMS] [varchar](1) NULL,
	[XXIPI] [varchar](1) NULL,
	[XSUBT] [varchar](3) NULL,
	[CFOPC] [varchar](2) NULL,
	[TXLW1] [varchar](3) NULL,
	[TXLW2] [varchar](3) NULL,
	[CCC01] [varchar](1) NULL,
	[CCC02] [varchar](1) NULL,
	[CCC03] [varchar](1) NULL,
	[CCC04] [varchar](1) NULL,
	[CASSD] [varchar](2) NULL,
	[KNURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[DEAR6] [varchar](1) NULL,
	[/VSO/R_PALHGT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_UL] [varchar](3) NULL,
	[/VSO/R_PK_MAT] [varchar](1) NULL,
	[/VSO/R_MATPAL] [varchar](18) NULL,
	[/VSO/R_I_NO_LYR] [decimal](2, 0) NULL,
	[/VSO/R_ONE_MAT] [varchar](1) NULL,
	[/VSO/R_ONE_SORT] [varchar](1) NULL,
	[/VSO/R_ULD_SIDE] [decimal](1, 0) NULL,
	[/VSO/R_LOAD_PREF] [decimal](1, 0) NULL,
	[/VSO/R_DPOINT] [varchar](10) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[PSOO1] [varchar](50) NULL,
	[PSOO2] [varchar](50) NULL,
	[PSOO3] [varchar](50) NULL,
	[PSOO4] [varchar](50) NULL,
	[PSOO5] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[TELF1] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[XCPDK] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[AUFSD] [varchar](2) NULL,
	[BAHNE] [varchar](25) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[EXABL] [varchar](1) NULL,
	[FAKSD] [varchar](2) NULL,
	[FISKN] [varchar](10) NULL,
	[KNAZK] [varchar](2) NULL,
	[KNRZA] [varchar](10) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKD] [varchar](4) NULL,
	[KUKLA] [varchar](2) NULL,
	[LIFNR] [varchar](10) NULL,
	[LIFSD] [varchar](2) NULL,
	[LOCCO] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[NIELS] [varchar](2) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[RPMKR] [varchar](5) NULL,
	[SPERR] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF2] [varchar](16) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[LZONE] [varchar](10) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[STCEG] [varchar](20) NULL,
	[DEAR1] [varchar](1) NULL,
	[DEAR2] [varchar](1) NULL,
	[DEAR3] [varchar](1) NULL,
	[DEAR4] [varchar](1) NULL,
	[DEAR5] [varchar](1) NULL,
	[GFORM] [varchar](2) NULL,
	[BRAN1] [varchar](10) NULL,
	[BRAN2] [varchar](10) NULL,
	[BRAN3] [varchar](10) NULL,
	[BRAN4] [varchar](10) NULL,
	[BRAN5] [varchar](10) NULL,
	[EKONT] [varchar](10) NULL,
	[UMSAT] [decimal](8, 2) NULL,
	[UMJAH] [decimal](4, 0) NULL,
	[UWAER] [varchar](5) NULL,
	[JMZAH] [decimal](6, 0) NULL,
	[JMJAH] [decimal](4, 0) NULL,
	[KATR1] [varchar](2) NULL,
	[KATR2] [varchar](2) NULL,
	[KATR3] [varchar](2) NULL,
	[KATR4] [varchar](2) NULL,
	[KATR5] [varchar](2) NULL,
	[KATR6] [varchar](3) NULL,
	[KATR7] [varchar](3) NULL,
	[KATR8] [varchar](3) NULL,
	[KATR9] [varchar](3) NULL,
	[KATR10] [varchar](3) NULL,
	[STKZN] [varchar](1) NULL,
	[UMSA1] [decimal](15, 2) NULL,
	[TXJCD] [varchar](15) NULL,
	[PERIV] [varchar](2) NULL,
	[ABRVW] [varchar](3) NULL,
	[INSPBYDEBI] [varchar](1) NULL,
	[INSPATDEBI] [varchar](1) NULL,
	[KTOCD] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL,
	[SPERZ] [varchar](1) NULL,
	[ETIKG] [varchar](10) NULL,
	[CIVVE] [varchar](1) NULL,
	[MILVE] [varchar](1) NULL,
	[KDKG1] [varchar](2) NULL,
	[KDKG2] [varchar](2) NULL,
	[KDKG3] [varchar](2) NULL,
	[KDKG4] [varchar](2) NULL,
	[KDKG5] [varchar](2) NULL,
	[XKNZA] [varchar](1) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[XICMS] [varchar](1) NULL,
	[XXIPI] [varchar](1) NULL,
	[XSUBT] [varchar](3) NULL,
	[CFOPC] [varchar](2) NULL,
	[TXLW1] [varchar](3) NULL,
	[TXLW2] [varchar](3) NULL,
	[CCC01] [varchar](1) NULL,
	[CCC02] [varchar](1) NULL,
	[CCC03] [varchar](1) NULL,
	[CCC04] [varchar](1) NULL,
	[CASSD] [varchar](2) NULL,
	[KNURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[DEAR6] [varchar](1) NULL,
	[/VSO/R_PALHGT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_UL] [varchar](3) NULL,
	[/VSO/R_PK_MAT] [varchar](1) NULL,
	[/VSO/R_MATPAL] [varchar](18) NULL,
	[/VSO/R_I_NO_LYR] [decimal](2, 0) NULL,
	[/VSO/R_ONE_MAT] [varchar](1) NULL,
	[/VSO/R_ONE_SORT] [varchar](1) NULL,
	[/VSO/R_ULD_SIDE] [decimal](1, 0) NULL,
	[/VSO/R_LOAD_PREF] [decimal](1, 0) NULL,
	[/VSO/R_DPOINT] [varchar](10) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[PSOO1] [varchar](50) NULL,
	[PSOO2] [varchar](50) NULL,
	[PSOO3] [varchar](50) NULL,
	[PSOO4] [varchar](50) NULL,
	[PSOO5] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[BUSAB] [varchar](2) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[KNRZE] [varchar](10) NULL,
	[KNRZB] [varchar](10) NULL,
	[ZAMIM] [varchar](1) NULL,
	[ZAMIV] [varchar](1) NULL,
	[ZAMIR] [varchar](1) NULL,
	[ZAMIB] [varchar](1) NULL,
	[ZAMIO] [varchar](1) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[WAKON] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[VRBKZ] [varchar](2) NULL,
	[VLIBB] [decimal](13, 2) NULL,
	[VRSZL] [decimal](3, 0) NULL,
	[VRSPR] [decimal](3, 0) NULL,
	[VRSNR] [varchar](10) NULL,
	[VERDT] [date] NULL,
	[PERKZ] [varchar](1) NULL,
	[XDEZV] [varchar](1) NULL,
	[XAUSZ] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[REMIT] [varchar](10) NULL,
	[DATLZ] [date] NULL,
	[XZVER] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[BLNKZ] [varchar](2) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[URLID] [varchar](4) NULL,
	[MGRUP] [varchar](2) NULL,
	[LOCKB] [varchar](7) NULL,
	[UZAWE] [varchar](2) NULL,
	[EKVBD] [varchar](10) NULL,
	[SREGL] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[VRSDG] [varchar](3) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XKNZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[WBRSL] [varchar](2) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[CESSION_KZ] [varchar](2) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[GMVKZD] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[BUSAB] [varchar](2) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[KNRZE] [varchar](10) NULL,
	[KNRZB] [varchar](10) NULL,
	[ZAMIM] [varchar](1) NULL,
	[ZAMIV] [varchar](1) NULL,
	[ZAMIR] [varchar](1) NULL,
	[ZAMIB] [varchar](1) NULL,
	[ZAMIO] [varchar](1) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[WAKON] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[VRBKZ] [varchar](2) NULL,
	[VLIBB] [decimal](13, 2) NULL,
	[VRSZL] [decimal](3, 0) NULL,
	[VRSPR] [decimal](3, 0) NULL,
	[VRSNR] [varchar](10) NULL,
	[VERDT] [date] NULL,
	[PERKZ] [varchar](1) NULL,
	[XDEZV] [varchar](1) NULL,
	[XAUSZ] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[REMIT] [varchar](10) NULL,
	[DATLZ] [date] NULL,
	[XZVER] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[BLNKZ] [varchar](2) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[URLID] [varchar](4) NULL,
	[MGRUP] [varchar](2) NULL,
	[LOCKB] [varchar](7) NULL,
	[UZAWE] [varchar](2) NULL,
	[EKVBD] [varchar](10) NULL,
	[SREGL] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[VRSDG] [varchar](3) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XKNZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[WBRSL] [varchar](2) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[CESSION_KZ] [varchar](2) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[GMVKZD] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB5]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB5](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[MABER] [varchar](2) NULL,
	[MAHNA] [varchar](4) NULL,
	[MANSP] [varchar](1) NULL,
	[MADAT] [date] NULL,
	[MAHNS] [decimal](1, 0) NULL,
	[KNRMA] [varchar](10) NULL,
	[GMVDT] [date] NULL,
	[BUSAB] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNB5_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNB5_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[MABER] [varchar](2) NULL,
	[MAHNA] [varchar](4) NULL,
	[MANSP] [varchar](1) NULL,
	[MADAT] [date] NULL,
	[MAHNS] [decimal](1, 0) NULL,
	[KNRMA] [varchar](10) NULL,
	[GMVDT] [date] NULL,
	[BUSAB] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNMT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNMT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[MATNR] [varchar](18) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[SORTL] [varchar](10) NULL,
	[KDMAT] [varchar](35) NULL,
	[POSTX] [varchar](40) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[MINLF] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[CHSPL] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[J_1BTXSDC] [varchar](2) NULL,
	[VWPOS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNMT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNMT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[MATNR] [varchar](18) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[SORTL] [varchar](10) NULL,
	[KDMAT] [varchar](35) NULL,
	[POSTX] [varchar](40) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[MINLF] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[CHSPL] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[J_1BTXSDC] [varchar](2) NULL,
	[VWPOS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVH]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVH](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[HITYP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[HKUNNR] [varchar](10) NULL,
	[HVKORG] [varchar](4) NULL,
	[HVTWEG] [varchar](2) NULL,
	[HSPART] [varchar](2) NULL,
	[GRPNO] [decimal](3, 0) NULL,
	[BOKRE] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVH_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVH_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[HITYP] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[HKUNNR] [varchar](10) NULL,
	[HVKORG] [varchar](4) NULL,
	[HVTWEG] [varchar](2) NULL,
	[HSPART] [varchar](2) NULL,
	[GRPNO] [decimal](3, 0) NULL,
	[BOKRE] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[HZUOR] [decimal](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVP](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[PARVW] [varchar](2) NULL,
	[PARZA] [decimal](3, 0) NULL,
	[KUNN2] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[PARNR] [decimal](10, 0) NULL,
	[KNREF] [varchar](30) NULL,
	[DEFPA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVP_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVP_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[PARVW] [varchar](2) NULL,
	[PARZA] [decimal](3, 0) NULL,
	[KUNN2] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[PARNR] [decimal](10, 0) NULL,
	[KNREF] [varchar](30) NULL,
	[DEFPA] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVV]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVV](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[BEGRU] [varchar](4) NULL,
	[LOEVM] [varchar](1) NULL,
	[VERSG] [varchar](1) NULL,
	[AUFSD] [varchar](2) NULL,
	[KALKS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[BZIRK] [varchar](6) NULL,
	[KONDA] [varchar](2) NULL,
	[PLTYP] [varchar](2) NULL,
	[AWAHR] [decimal](3, 0) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[LIFSD] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZAZU] [varchar](1) NULL,
	[CHSPL] [varchar](1) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[VSBED] [varchar](2) NULL,
	[FAKSD] [varchar](2) NULL,
	[MRNKZ] [varchar](1) NULL,
	[PERFK] [varchar](2) NULL,
	[PERRL] [varchar](2) NULL,
	[KVAKZ] [varchar](1) NULL,
	[KVAWT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[KLABC] [varchar](2) NULL,
	[KTGRD] [varchar](2) NULL,
	[ZTERM] [varchar](4) NULL,
	[VWERK] [varchar](4) NULL,
	[VKGRP] [varchar](3) NULL,
	[VKBUR] [varchar](4) NULL,
	[VSORT] [varchar](10) NULL,
	[KVGR1] [varchar](3) NULL,
	[KVGR2] [varchar](3) NULL,
	[KVGR3] [varchar](3) NULL,
	[KVGR4] [varchar](3) NULL,
	[KVGR5] [varchar](3) NULL,
	[BOKRE] [varchar](1) NULL,
	[BOIDT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[PRFRE] [varchar](1) NULL,
	[PRAT1] [varchar](1) NULL,
	[PRAT2] [varchar](1) NULL,
	[PRAT3] [varchar](1) NULL,
	[PRAT4] [varchar](1) NULL,
	[PRAT5] [varchar](1) NULL,
	[PRAT6] [varchar](1) NULL,
	[PRAT7] [varchar](1) NULL,
	[PRAT8] [varchar](1) NULL,
	[PRAT9] [varchar](1) NULL,
	[PRATA] [varchar](1) NULL,
	[KABSS] [varchar](4) NULL,
	[KKBER] [varchar](4) NULL,
	[CASSD] [varchar](2) NULL,
	[RDOFF] [varchar](1) NULL,
	[AGREL] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[PVKSM] [varchar](2) NULL,
	[PODKZ] [varchar](1) NULL,
	[PODTG] [decimal](11, 0) NULL,
	[BLIND] [varchar](1) NULL,
	[CARRIER_NOTIF] [varchar](1) NULL,
	[/BEV1/EMLGPFAND] [varchar](1) NULL,
	[/BEV1/EMLGFORTS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNVV_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNVV_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KUNNR] [varchar](10) NULL,
	[VKORG] [varchar](4) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[BEGRU] [varchar](4) NULL,
	[LOEVM] [varchar](1) NULL,
	[VERSG] [varchar](1) NULL,
	[AUFSD] [varchar](2) NULL,
	[KALKS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[BZIRK] [varchar](6) NULL,
	[KONDA] [varchar](2) NULL,
	[PLTYP] [varchar](2) NULL,
	[AWAHR] [decimal](3, 0) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[LIFSD] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZAZU] [varchar](1) NULL,
	[CHSPL] [varchar](1) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[EIKTO] [varchar](12) NULL,
	[VSBED] [varchar](2) NULL,
	[FAKSD] [varchar](2) NULL,
	[MRNKZ] [varchar](1) NULL,
	[PERFK] [varchar](2) NULL,
	[PERRL] [varchar](2) NULL,
	[KVAKZ] [varchar](1) NULL,
	[KVAWT] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[KLABC] [varchar](2) NULL,
	[KTGRD] [varchar](2) NULL,
	[ZTERM] [varchar](4) NULL,
	[VWERK] [varchar](4) NULL,
	[VKGRP] [varchar](3) NULL,
	[VKBUR] [varchar](4) NULL,
	[VSORT] [varchar](10) NULL,
	[KVGR1] [varchar](3) NULL,
	[KVGR2] [varchar](3) NULL,
	[KVGR3] [varchar](3) NULL,
	[KVGR4] [varchar](3) NULL,
	[KVGR5] [varchar](3) NULL,
	[BOKRE] [varchar](1) NULL,
	[BOIDT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[PRFRE] [varchar](1) NULL,
	[PRAT1] [varchar](1) NULL,
	[PRAT2] [varchar](1) NULL,
	[PRAT3] [varchar](1) NULL,
	[PRAT4] [varchar](1) NULL,
	[PRAT5] [varchar](1) NULL,
	[PRAT6] [varchar](1) NULL,
	[PRAT7] [varchar](1) NULL,
	[PRAT8] [varchar](1) NULL,
	[PRAT9] [varchar](1) NULL,
	[PRATA] [varchar](1) NULL,
	[KABSS] [varchar](4) NULL,
	[KKBER] [varchar](4) NULL,
	[CASSD] [varchar](2) NULL,
	[RDOFF] [varchar](1) NULL,
	[AGREL] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[PVKSM] [varchar](2) NULL,
	[PODKZ] [varchar](1) NULL,
	[PODTG] [decimal](11, 0) NULL,
	[BLIND] [varchar](1) NULL,
	[CARRIER_NOTIF] [varchar](1) NULL,
	[/BEV1/EMLGPFAND] [varchar](1) NULL,
	[/BEV1/EMLGFORTS] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONH]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONH](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[KVEWE] [varchar](1) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VAKEY] [varchar](100) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[KOSRT] [varchar](10) NULL,
	[KZUST] [varchar](3) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[KNUMA_SD] [varchar](10) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[LICNO] [varchar](20) NULL,
	[LICDT] [date] NULL,
	[VADAT] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KONH_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KONH_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KNUMH] [varchar](10) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[KVEWE] [varchar](1) NULL,
	[KOTABNR] [decimal](3, 0) NULL,
	[KAPPL] [varchar](2) NULL,
	[KSCHL] [varchar](4) NULL,
	[VAKEY] [varchar](100) NULL,
	[DATAB] [date] NULL,
	[DATBI] [date] NULL,
	[KOSRT] [varchar](10) NULL,
	[KZUST] [varchar](3) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KNUMA_SQ] [varchar](10) NULL,
	[KNUMA_SD] [varchar](10) NULL,
	[AKTNR] [varchar](10) NULL,
	[KNUMA_BO] [varchar](10) NULL,
	[LICNO] [varchar](20) NULL,
	[LICDT] [date] NULL,
	[VADAT] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFA1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFA1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ESRNR] [varchar](11) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKK] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LNRZA] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[SPERR] [varchar](1) NULL,
	[SPERM] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[XCPDK] [varchar](1) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[FISKN] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[STKZN] [varchar](1) NULL,
	[SPERQ] [varchar](2) NULL,
	[GBORT] [varchar](25) NULL,
	[GBDAT] [date] NULL,
	[SEXKZ] [varchar](1) NULL,
	[KRAUS] [varchar](11) NULL,
	[REVDB] [date] NULL,
	[QSSYS] [varchar](4) NULL,
	[KTOCK] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[LTSNA] [varchar](1) NULL,
	[WERKR] [varchar](1) NULL,
	[PLKAL] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[SPERZ] [varchar](1) NULL,
	[SCACD] [varchar](4) NULL,
	[SFRGR] [varchar](4) NULL,
	[LZONE] [varchar](10) NULL,
	[XLFZA] [varchar](1) NULL,
	[DLGRP] [varchar](4) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[REGSS] [varchar](1) NULL,
	[ACTSS] [varchar](3) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[IPISP] [varchar](1) NULL,
	[TAXBS] [decimal](1, 0) NULL,
	[PROFS] [varchar](30) NULL,
	[STGDL] [varchar](2) NULL,
	[EMNFR] [varchar](10) NULL,
	[LFURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[QSSYSDAT] [date] NULL,
	[PODKZB] [varchar](1) NULL,
	[FISKU] [varchar](10) NULL,
	[STENR] [varchar](18) NULL,
	[CARRIER_CONF] [varchar](1) NULL,
	[J_SC_CAPITAL] [decimal](15, 2) NULL,
	[J_SC_CURRENCY] [varchar](5) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL,
	[SCHEDULING_TYPE] [varchar](1) NULL,
	[SUBMI_RELEVANT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFA1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFA1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ESRNR] [varchar](11) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKK] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LNRZA] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[SPERR] [varchar](1) NULL,
	[SPERM] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[XCPDK] [varchar](1) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[FISKN] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[STKZN] [varchar](1) NULL,
	[SPERQ] [varchar](2) NULL,
	[GBORT] [varchar](25) NULL,
	[GBDAT] [date] NULL,
	[SEXKZ] [varchar](1) NULL,
	[KRAUS] [varchar](11) NULL,
	[REVDB] [date] NULL,
	[QSSYS] [varchar](4) NULL,
	[KTOCK] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[LTSNA] [varchar](1) NULL,
	[WERKR] [varchar](1) NULL,
	[PLKAL] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[SPERZ] [varchar](1) NULL,
	[SCACD] [varchar](4) NULL,
	[SFRGR] [varchar](4) NULL,
	[LZONE] [varchar](10) NULL,
	[XLFZA] [varchar](1) NULL,
	[DLGRP] [varchar](4) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[REGSS] [varchar](1) NULL,
	[ACTSS] [varchar](3) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[IPISP] [varchar](1) NULL,
	[TAXBS] [decimal](1, 0) NULL,
	[PROFS] [varchar](30) NULL,
	[STGDL] [varchar](2) NULL,
	[EMNFR] [varchar](10) NULL,
	[LFURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[QSSYSDAT] [date] NULL,
	[PODKZB] [varchar](1) NULL,
	[FISKU] [varchar](10) NULL,
	[STENR] [varchar](18) NULL,
	[CARRIER_CONF] [varchar](1) NULL,
	[J_SC_CAPITAL] [decimal](15, 2) NULL,
	[J_SC_CURRENCY] [varchar](5) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL,
	[SCHEDULING_TYPE] [varchar](1) NULL,
	[SUBMI_RELEVANT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFB1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFB1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[BUSAB] [varchar](2) NULL,
	[LNRZE] [varchar](10) NULL,
	[LNRZB] [varchar](10) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[DATLZ] [date] NULL,
	[XDEZV] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[REPRF] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[QSZNR] [varchar](10) NULL,
	[QSZDT] [date] NULL,
	[QSSKZ] [varchar](2) NULL,
	[BLNKZ] [varchar](2) NULL,
	[MINDK] [varchar](3) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[MGRUP] [varchar](2) NULL,
	[UZAWE] [varchar](2) NULL,
	[QSREC] [varchar](2) NULL,
	[QSBGR] [varchar](1) NULL,
	[QLAND] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[TOGRR] [varchar](4) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XLFZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[XAUSZ] [varchar](1) NULL,
	[CERDT] [date] NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[J_SC_SUBCONTYPE] [varchar](1) NULL,
	[J_SC_COMPDATE] [decimal](3, 0) NULL,
	[J_SC_OFFSM] [varchar](1) NULL,
	[J_SC_OFFSR] [decimal](3, 0) NULL,
	[BASIS_PNT] [decimal](6, 3) NULL,
	[GMVKZK] [varchar](1) NULL,
	[PREPAY_RELEVANT] [varchar](1) NULL,
	[ASSIGN_TEST] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFB1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFB1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERR] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[ZUAWA] [varchar](3) NULL,
	[AKONT] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[VZSKZ] [varchar](2) NULL,
	[ZWELS] [varchar](10) NULL,
	[XVERR] [varchar](1) NULL,
	[ZAHLS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[EIKTO] [varchar](12) NULL,
	[ZSABE] [varchar](15) NULL,
	[KVERM] [varchar](30) NULL,
	[FDGRV] [varchar](10) NULL,
	[BUSAB] [varchar](2) NULL,
	[LNRZE] [varchar](10) NULL,
	[LNRZB] [varchar](10) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[DATLZ] [date] NULL,
	[XDEZV] [varchar](1) NULL,
	[WEBTR] [decimal](13, 2) NULL,
	[KULTG] [decimal](3, 0) NULL,
	[REPRF] [varchar](1) NULL,
	[TOGRU] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[XPORE] [varchar](1) NULL,
	[QSZNR] [varchar](10) NULL,
	[QSZDT] [date] NULL,
	[QSSKZ] [varchar](2) NULL,
	[BLNKZ] [varchar](2) NULL,
	[MINDK] [varchar](3) NULL,
	[ALTKN] [varchar](10) NULL,
	[ZGRUP] [varchar](2) NULL,
	[MGRUP] [varchar](2) NULL,
	[UZAWE] [varchar](2) NULL,
	[QSREC] [varchar](2) NULL,
	[QSBGR] [varchar](1) NULL,
	[QLAND] [varchar](3) NULL,
	[XEDIP] [varchar](1) NULL,
	[FRGRP] [varchar](4) NULL,
	[TOGRR] [varchar](4) NULL,
	[TLFXS] [varchar](31) NULL,
	[INTAD] [varchar](130) NULL,
	[XLFZB] [varchar](1) NULL,
	[GUZTE] [varchar](4) NULL,
	[GRICD] [varchar](2) NULL,
	[GRIDT] [varchar](2) NULL,
	[XAUSZ] [varchar](1) NULL,
	[CERDT] [date] NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[TLFNS] [varchar](30) NULL,
	[CIIUCODE] [decimal](4, 0) NULL,
	[J_SC_SUBCONTYPE] [varchar](1) NULL,
	[J_SC_COMPDATE] [decimal](3, 0) NULL,
	[J_SC_OFFSM] [varchar](1) NULL,
	[J_SC_OFFSR] [decimal](3, 0) NULL,
	[BASIS_PNT] [decimal](6, 3) NULL,
	[GMVKZK] [varchar](1) NULL,
	[PREPAY_RELEVANT] [varchar](1) NULL,
	[ASSIGN_TEST] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFM1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFM1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERM] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[LFABC] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[MINBW] [decimal](13, 2) NULL,
	[ZTERM] [varchar](4) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[KALSK] [varchar](2) NULL,
	[KZAUT] [varchar](1) NULL,
	[EXPVZ] [varchar](1) NULL,
	[ZOLLA] [varchar](6) NULL,
	[MEPRF] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[XERSY] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[MRPPP] [varchar](3) NULL,
	[LFRHY] [varchar](3) NULL,
	[LIBES] [varchar](1) NULL,
	[LIPRE] [varchar](2) NULL,
	[LISER] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[NRGEW] [varchar](1) NULL,
	[BOIND] [varchar](1) NULL,
	[BLIND] [varchar](1) NULL,
	[KZRET] [varchar](1) NULL,
	[SKRIT] [varchar](1) NULL,
	[BSTAE] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[VENSL] [decimal](4, 1) NULL,
	[BOPNR] [varchar](4) NULL,
	[XERSR] [varchar](1) NULL,
	[EIKTO] [varchar](12) NULL,
	[ABUEB] [varchar](4) NULL,
	[PAPRF] [varchar](4) NULL,
	[AGREL] [varchar](1) NULL,
	[XNBWY] [varchar](1) NULL,
	[VSBED] [varchar](2) NULL,
	[LEBRE] [varchar](1) NULL,
	[BOLRE] [varchar](1) NULL,
	[UMSAE] [varchar](1) NULL,
	[ACTIVITY_PROFIL] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFM1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFM1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[EKORG] [varchar](4) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[SPERM] [varchar](1) NULL,
	[LOEVM] [varchar](1) NULL,
	[LFABC] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[MINBW] [decimal](13, 2) NULL,
	[ZTERM] [varchar](4) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[KALSK] [varchar](2) NULL,
	[KZAUT] [varchar](1) NULL,
	[EXPVZ] [varchar](1) NULL,
	[ZOLLA] [varchar](6) NULL,
	[MEPRF] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[XERSY] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[MRPPP] [varchar](3) NULL,
	[LFRHY] [varchar](3) NULL,
	[LIBES] [varchar](1) NULL,
	[LIPRE] [varchar](2) NULL,
	[LISER] [varchar](1) NULL,
	[PRFRE] [varchar](1) NULL,
	[NRGEW] [varchar](1) NULL,
	[BOIND] [varchar](1) NULL,
	[BLIND] [varchar](1) NULL,
	[KZRET] [varchar](1) NULL,
	[SKRIT] [varchar](1) NULL,
	[BSTAE] [varchar](4) NULL,
	[RDPRF] [varchar](4) NULL,
	[MEGRU] [varchar](4) NULL,
	[VENSL] [decimal](4, 1) NULL,
	[BOPNR] [varchar](4) NULL,
	[XERSR] [varchar](1) NULL,
	[EIKTO] [varchar](12) NULL,
	[ABUEB] [varchar](4) NULL,
	[PAPRF] [varchar](4) NULL,
	[AGREL] [varchar](1) NULL,
	[XNBWY] [varchar](1) NULL,
	[VSBED] [varchar](2) NULL,
	[LEBRE] [varchar](1) NULL,
	[BOLRE] [varchar](1) NULL,
	[UMSAE] [varchar](1) NULL,
	[ACTIVITY_PROFIL] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAKT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAKT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAKT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAKT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[SPRAS] [varchar](1) NULL,
	[MAKTX] [varchar](40) NULL,
	[MAKTG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARA]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARA](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[VPSTA] [varchar](15) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[MTART] [varchar](4) NULL,
	[MBRSH] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[BISMT] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BSTME] [varchar](3) NULL,
	[ZEINR] [varchar](22) NULL,
	[ZEIAR] [varchar](3) NULL,
	[ZEIVR] [varchar](2) NULL,
	[ZEIFO] [varchar](4) NULL,
	[AESZN] [varchar](6) NULL,
	[BLATT] [varchar](3) NULL,
	[BLANZ] [decimal](3, 0) NULL,
	[FERTH] [varchar](18) NULL,
	[FORMT] [varchar](4) NULL,
	[GROES] [varchar](32) NULL,
	[WRKST] [varchar](48) NULL,
	[NORMT] [varchar](18) NULL,
	[LABOR] [varchar](3) NULL,
	[EKWSL] [varchar](4) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BEHVO] [varchar](2) NULL,
	[RAUBE] [varchar](2) NULL,
	[TEMPB] [varchar](2) NULL,
	[DISST] [varchar](3) NULL,
	[TRAGR] [varchar](4) NULL,
	[STOFF] [varchar](18) NULL,
	[SPART] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[EANNR] [varchar](13) NULL,
	[WESCH] [decimal](13, 3) NULL,
	[BWVOR] [varchar](1) NULL,
	[BWSCL] [varchar](1) NULL,
	[SAISO] [varchar](4) NULL,
	[ETIAR] [varchar](2) NULL,
	[ETIFO] [varchar](2) NULL,
	[ENTAR] [varchar](1) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[AEKLK] [varchar](1) NULL,
	[CADKZ] [varchar](1) NULL,
	[QMPUR] [varchar](1) NULL,
	[ERGEW] [decimal](13, 3) NULL,
	[ERGEI] [varchar](3) NULL,
	[ERVOL] [decimal](13, 3) NULL,
	[ERVOE] [varchar](3) NULL,
	[GEWTO] [decimal](3, 1) NULL,
	[VOLTO] [decimal](3, 1) NULL,
	[VABME] [varchar](1) NULL,
	[KZREV] [varchar](1) NULL,
	[KZKFG] [varchar](1) NULL,
	[XCHPF] [varchar](1) NULL,
	[VHART] [varchar](4) NULL,
	[FUELG] [decimal](3, 0) NULL,
	[STFAK] [int] NULL,
	[MAGRV] [varchar](4) NULL,
	[BEGRU] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[LIQDT] [date] NULL,
	[SAISJ] [varchar](4) NULL,
	[PLGTP] [varchar](2) NULL,
	[MLGUT] [varchar](1) NULL,
	[EXTWG] [varchar](18) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KZKUP] [varchar](1) NULL,
	[KZNFM] [varchar](1) NULL,
	[PMATA] [varchar](18) NULL,
	[MSTAE] [varchar](2) NULL,
	[MSTAV] [varchar](2) NULL,
	[MSTDE] [date] NULL,
	[MSTDV] [date] NULL,
	[TAKLV] [varchar](1) NULL,
	[RBNRM] [varchar](9) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[MHDHB] [decimal](4, 0) NULL,
	[MHDLP] [decimal](3, 0) NULL,
	[INHME] [varchar](3) NULL,
	[INHAL] [decimal](13, 3) NULL,
	[VPREH] [decimal](5, 0) NULL,
	[ETIAG] [varchar](18) NULL,
	[INHBR] [decimal](13, 3) NULL,
	[CMETH] [varchar](1) NULL,
	[CUOBF] [decimal](18, 0) NULL,
	[KZUMW] [varchar](1) NULL,
	[KOSCH] [varchar](18) NULL,
	[SPROF] [varchar](1) NULL,
	[NRFHG] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[BMATN] [varchar](18) NULL,
	[MPROF] [varchar](4) NULL,
	[KZWSM] [varchar](1) NULL,
	[SAITY] [varchar](2) NULL,
	[PROFL] [varchar](3) NULL,
	[IHIVI] [varchar](1) NULL,
	[ILOOS] [varchar](1) NULL,
	[SERLV] [varchar](1) NULL,
	[KZGVH] [varchar](1) NULL,
	[XGCHP] [varchar](1) NULL,
	[KZEFF] [varchar](1) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[IPRKZ] [varchar](1) NULL,
	[RDMHD] [varchar](1) NULL,
	[PRZUS] [varchar](1) NULL,
	[MTPOS_MARA] [varchar](4) NULL,
	[BFLME] [varchar](1) NULL,
	[MATFI] [varchar](1) NULL,
	[CMREL] [varchar](1) NULL,
	[BBTYP] [varchar](1) NULL,
	[SLED_BBD] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[GENNR] [varchar](18) NULL,
	[RMATP] [varchar](18) NULL,
	[GDS_RELEVANT] [varchar](1) NULL,
	[WEORA] [varchar](1) NULL,
	[HUTYP_DFLT] [varchar](4) NULL,
	[PILFERABLE] [varchar](1) NULL,
	[WHSTC] [varchar](2) NULL,
	[WHMATGR] [varchar](4) NULL,
	[HNDLCODE] [varchar](4) NULL,
	[HAZMAT] [varchar](1) NULL,
	[HUTYP] [varchar](4) NULL,
	[TARE_VAR] [varchar](1) NULL,
	[MAXC] [decimal](15, 3) NULL,
	[MAXC_TOL] [decimal](3, 1) NULL,
	[MAXL] [decimal](15, 3) NULL,
	[MAXB] [decimal](15, 3) NULL,
	[MAXH] [decimal](15, 3) NULL,
	[MAXDIM_UOM] [varchar](3) NULL,
	[HERKL] [varchar](3) NULL,
	[MFRGR] [varchar](8) NULL,
	[QQTIME] [decimal](3, 0) NULL,
	[QQTIMEUOM] [varchar](3) NULL,
	[QGRP] [varchar](4) NULL,
	[SERIAL] [varchar](4) NULL,
	[PS_SMARTFORM] [varchar](30) NULL,
	[LOGUNIT] [varchar](3) NULL,
	[CWQREL] [varchar](1) NULL,
	[CWQPROC] [varchar](2) NULL,
	[CWQTOLGR] [varchar](9) NULL,
	[/BEV1/LULEINH] [decimal](8, 0) NULL,
	[/BEV1/LULDEGRP] [varchar](3) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[/DSD/VC_GROUP] [varchar](6) NULL,
	[/VSO/R_TILT_IND] [varchar](1) NULL,
	[/VSO/R_STACK_IND] [varchar](1) NULL,
	[/VSO/R_BOT_IND] [varchar](1) NULL,
	[/VSO/R_TOP_IND] [varchar](1) NULL,
	[/VSO/R_STACK_NO] [decimal](3, 0) NULL,
	[/VSO/R_PAL_IND] [varchar](1) NULL,
	[/VSO/R_PAL_OVR_D] [decimal](13, 3) NULL,
	[/VSO/R_PAL_OVR_W] [decimal](13, 3) NULL,
	[/VSO/R_PAL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_MIN_H] [decimal](13, 3) NULL,
	[/VSO/R_TOL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_NO_P_GVH] [decimal](2, 0) NULL,
	[/VSO/R_QUAN_UNIT] [varchar](3) NULL,
	[/VSO/R_KZGVH_IND] [varchar](1) NULL,
	[MCOND] [varchar](1) NULL,
	[RETDELC] [varchar](1) NULL,
	[LOGLEV_RETO] [varchar](1) NULL,
	[NSNID] [varchar](9) NULL,
	[IMATN] [varchar](18) NULL,
	[PICNUM] [varchar](18) NULL,
	[BSTAT] [varchar](2) NULL,
	[COLOR_ATINN] [decimal](10, 0) NULL,
	[SIZE1_ATINN] [decimal](10, 0) NULL,
	[SIZE2_ATINN] [decimal](10, 0) NULL,
	[COLOR] [varchar](18) NULL,
	[SIZE1] [varchar](18) NULL,
	[SIZE2] [varchar](18) NULL,
	[FREE_CHAR] [varchar](18) NULL,
	[CARE_CODE] [varchar](16) NULL,
	[BRAND_ID] [varchar](4) NULL,
	[FIBER_CODE1] [varchar](3) NULL,
	[FIBER_PART1] [decimal](3, 0) NULL,
	[FIBER_CODE2] [varchar](3) NULL,
	[FIBER_PART2] [decimal](3, 0) NULL,
	[FIBER_CODE3] [varchar](3) NULL,
	[FIBER_PART3] [decimal](3, 0) NULL,
	[FIBER_CODE4] [varchar](3) NULL,
	[FIBER_PART4] [decimal](3, 0) NULL,
	[FIBER_CODE5] [varchar](3) NULL,
	[FIBER_PART5] [decimal](3, 0) NULL,
	[FASHGRD] [varchar](4) NULL,
	[ZZBFLME] [varchar](18) NULL,
	[ZZPALLETFACTOR] [decimal](2, 0) NULL,
	[ZZCHANSL] [decimal](4, 0) NULL,
	[ZZBRGEW] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[ZZGEWEI] [varchar](3) NULL,
	[ZZVOLUM] [decimal](13, 3) NULL,
	[ZZVOLEH] [varchar](3) NULL,
	[ZZGROES] [varchar](32) NULL,
	[ZZBUS] [varchar](10) NULL,
	[ZZSPART] [varchar](10) NULL,
	[ZZSKUTYP] [varchar](12) NULL,
	[ZZREMDT] [date] NULL,
	[ZZDEADT] [date] NULL,
	[ZZACDEDT] [date] NULL,
	[ZZSKUST] [varchar](8) NULL,
	[ZZCULLST] [varchar](10) NULL,
	[ZZSUPCHN] [varchar](10) NULL,
	[ZZCLAMPRES] [varchar](1) NULL,
	[ZZPALLET_IND] [varchar](1) NULL,
	[ZZFRM] [varchar](1) NULL,
	[ZZDFCT_GRP] [decimal](6, 0) NULL,
	[ZZMULT_DFCT] [varchar](1) NULL,
	[ZZPKCUBSZ] [varchar](10) NULL,
	[ZZPLATFRM_TYP] [varchar](10) NULL,
	[ZZSUGAR] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARA_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARA_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[VPSTA] [varchar](15) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[MTART] [varchar](4) NULL,
	[MBRSH] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[BISMT] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[BSTME] [varchar](3) NULL,
	[ZEINR] [varchar](22) NULL,
	[ZEIAR] [varchar](3) NULL,
	[ZEIVR] [varchar](2) NULL,
	[ZEIFO] [varchar](4) NULL,
	[AESZN] [varchar](6) NULL,
	[BLATT] [varchar](3) NULL,
	[BLANZ] [decimal](3, 0) NULL,
	[FERTH] [varchar](18) NULL,
	[FORMT] [varchar](4) NULL,
	[GROES] [varchar](32) NULL,
	[WRKST] [varchar](48) NULL,
	[NORMT] [varchar](18) NULL,
	[LABOR] [varchar](3) NULL,
	[EKWSL] [varchar](4) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BEHVO] [varchar](2) NULL,
	[RAUBE] [varchar](2) NULL,
	[TEMPB] [varchar](2) NULL,
	[DISST] [varchar](3) NULL,
	[TRAGR] [varchar](4) NULL,
	[STOFF] [varchar](18) NULL,
	[SPART] [varchar](2) NULL,
	[KUNNR] [varchar](10) NULL,
	[EANNR] [varchar](13) NULL,
	[WESCH] [decimal](13, 3) NULL,
	[BWVOR] [varchar](1) NULL,
	[BWSCL] [varchar](1) NULL,
	[SAISO] [varchar](4) NULL,
	[ETIAR] [varchar](2) NULL,
	[ETIFO] [varchar](2) NULL,
	[ENTAR] [varchar](1) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[PRDHA] [varchar](18) NULL,
	[AEKLK] [varchar](1) NULL,
	[CADKZ] [varchar](1) NULL,
	[QMPUR] [varchar](1) NULL,
	[ERGEW] [decimal](13, 3) NULL,
	[ERGEI] [varchar](3) NULL,
	[ERVOL] [decimal](13, 3) NULL,
	[ERVOE] [varchar](3) NULL,
	[GEWTO] [decimal](3, 1) NULL,
	[VOLTO] [decimal](3, 1) NULL,
	[VABME] [varchar](1) NULL,
	[KZREV] [varchar](1) NULL,
	[KZKFG] [varchar](1) NULL,
	[XCHPF] [varchar](1) NULL,
	[VHART] [varchar](4) NULL,
	[FUELG] [decimal](3, 0) NULL,
	[STFAK] [int] NULL,
	[MAGRV] [varchar](4) NULL,
	[BEGRU] [varchar](4) NULL,
	[DATAB] [date] NULL,
	[LIQDT] [date] NULL,
	[SAISJ] [varchar](4) NULL,
	[PLGTP] [varchar](2) NULL,
	[MLGUT] [varchar](1) NULL,
	[EXTWG] [varchar](18) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KZKUP] [varchar](1) NULL,
	[KZNFM] [varchar](1) NULL,
	[PMATA] [varchar](18) NULL,
	[MSTAE] [varchar](2) NULL,
	[MSTAV] [varchar](2) NULL,
	[MSTDE] [date] NULL,
	[MSTDV] [date] NULL,
	[TAKLV] [varchar](1) NULL,
	[RBNRM] [varchar](9) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[MHDHB] [decimal](4, 0) NULL,
	[MHDLP] [decimal](3, 0) NULL,
	[INHME] [varchar](3) NULL,
	[INHAL] [decimal](13, 3) NULL,
	[VPREH] [decimal](5, 0) NULL,
	[ETIAG] [varchar](18) NULL,
	[INHBR] [decimal](13, 3) NULL,
	[CMETH] [varchar](1) NULL,
	[CUOBF] [decimal](18, 0) NULL,
	[KZUMW] [varchar](1) NULL,
	[KOSCH] [varchar](18) NULL,
	[SPROF] [varchar](1) NULL,
	[NRFHG] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[BMATN] [varchar](18) NULL,
	[MPROF] [varchar](4) NULL,
	[KZWSM] [varchar](1) NULL,
	[SAITY] [varchar](2) NULL,
	[PROFL] [varchar](3) NULL,
	[IHIVI] [varchar](1) NULL,
	[ILOOS] [varchar](1) NULL,
	[SERLV] [varchar](1) NULL,
	[KZGVH] [varchar](1) NULL,
	[XGCHP] [varchar](1) NULL,
	[KZEFF] [varchar](1) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[IPRKZ] [varchar](1) NULL,
	[RDMHD] [varchar](1) NULL,
	[PRZUS] [varchar](1) NULL,
	[MTPOS_MARA] [varchar](4) NULL,
	[BFLME] [varchar](1) NULL,
	[MATFI] [varchar](1) NULL,
	[CMREL] [varchar](1) NULL,
	[BBTYP] [varchar](1) NULL,
	[SLED_BBD] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[GENNR] [varchar](18) NULL,
	[RMATP] [varchar](18) NULL,
	[GDS_RELEVANT] [varchar](1) NULL,
	[WEORA] [varchar](1) NULL,
	[HUTYP_DFLT] [varchar](4) NULL,
	[PILFERABLE] [varchar](1) NULL,
	[WHSTC] [varchar](2) NULL,
	[WHMATGR] [varchar](4) NULL,
	[HNDLCODE] [varchar](4) NULL,
	[HAZMAT] [varchar](1) NULL,
	[HUTYP] [varchar](4) NULL,
	[TARE_VAR] [varchar](1) NULL,
	[MAXC] [decimal](15, 3) NULL,
	[MAXC_TOL] [decimal](3, 1) NULL,
	[MAXL] [decimal](15, 3) NULL,
	[MAXB] [decimal](15, 3) NULL,
	[MAXH] [decimal](15, 3) NULL,
	[MAXDIM_UOM] [varchar](3) NULL,
	[HERKL] [varchar](3) NULL,
	[MFRGR] [varchar](8) NULL,
	[QQTIME] [decimal](3, 0) NULL,
	[QQTIMEUOM] [varchar](3) NULL,
	[QGRP] [varchar](4) NULL,
	[SERIAL] [varchar](4) NULL,
	[PS_SMARTFORM] [varchar](30) NULL,
	[LOGUNIT] [varchar](3) NULL,
	[CWQREL] [varchar](1) NULL,
	[CWQPROC] [varchar](2) NULL,
	[CWQTOLGR] [varchar](9) NULL,
	[/BEV1/LULEINH] [decimal](8, 0) NULL,
	[/BEV1/LULDEGRP] [varchar](3) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[/DSD/VC_GROUP] [varchar](6) NULL,
	[/VSO/R_TILT_IND] [varchar](1) NULL,
	[/VSO/R_STACK_IND] [varchar](1) NULL,
	[/VSO/R_BOT_IND] [varchar](1) NULL,
	[/VSO/R_TOP_IND] [varchar](1) NULL,
	[/VSO/R_STACK_NO] [decimal](3, 0) NULL,
	[/VSO/R_PAL_IND] [varchar](1) NULL,
	[/VSO/R_PAL_OVR_D] [decimal](13, 3) NULL,
	[/VSO/R_PAL_OVR_W] [decimal](13, 3) NULL,
	[/VSO/R_PAL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_PAL_MIN_H] [decimal](13, 3) NULL,
	[/VSO/R_TOL_B_HT] [decimal](13, 3) NULL,
	[/VSO/R_NO_P_GVH] [decimal](2, 0) NULL,
	[/VSO/R_QUAN_UNIT] [varchar](3) NULL,
	[/VSO/R_KZGVH_IND] [varchar](1) NULL,
	[MCOND] [varchar](1) NULL,
	[RETDELC] [varchar](1) NULL,
	[LOGLEV_RETO] [varchar](1) NULL,
	[NSNID] [varchar](9) NULL,
	[IMATN] [varchar](18) NULL,
	[PICNUM] [varchar](18) NULL,
	[BSTAT] [varchar](2) NULL,
	[COLOR_ATINN] [decimal](10, 0) NULL,
	[SIZE1_ATINN] [decimal](10, 0) NULL,
	[SIZE2_ATINN] [decimal](10, 0) NULL,
	[COLOR] [varchar](18) NULL,
	[SIZE1] [varchar](18) NULL,
	[SIZE2] [varchar](18) NULL,
	[FREE_CHAR] [varchar](18) NULL,
	[CARE_CODE] [varchar](16) NULL,
	[BRAND_ID] [varchar](4) NULL,
	[FIBER_CODE1] [varchar](3) NULL,
	[FIBER_PART1] [decimal](3, 0) NULL,
	[FIBER_CODE2] [varchar](3) NULL,
	[FIBER_PART2] [decimal](3, 0) NULL,
	[FIBER_CODE3] [varchar](3) NULL,
	[FIBER_PART3] [decimal](3, 0) NULL,
	[FIBER_CODE4] [varchar](3) NULL,
	[FIBER_PART4] [decimal](3, 0) NULL,
	[FIBER_CODE5] [varchar](3) NULL,
	[FIBER_PART5] [decimal](3, 0) NULL,
	[FASHGRD] [varchar](4) NULL,
	[ZZBFLME] [varchar](18) NULL,
	[ZZPALLETFACTOR] [decimal](2, 0) NULL,
	[ZZCHANSL] [decimal](4, 0) NULL,
	[ZZBRGEW] [decimal](13, 3) NULL,
	[ZZNTGEW] [decimal](13, 3) NULL,
	[ZZGEWEI] [varchar](3) NULL,
	[ZZVOLUM] [decimal](13, 3) NULL,
	[ZZVOLEH] [varchar](3) NULL,
	[ZZGROES] [varchar](32) NULL,
	[ZZBUS] [varchar](10) NULL,
	[ZZSPART] [varchar](10) NULL,
	[ZZSKUTYP] [varchar](12) NULL,
	[ZZREMDT] [date] NULL,
	[ZZDEADT] [date] NULL,
	[ZZACDEDT] [date] NULL,
	[ZZSKUST] [varchar](8) NULL,
	[ZZCULLST] [varchar](10) NULL,
	[ZZSUPCHN] [varchar](10) NULL,
	[ZZCLAMPRES] [varchar](1) NULL,
	[ZZPALLET_IND] [varchar](1) NULL,
	[ZZFRM] [varchar](1) NULL,
	[ZZDFCT_GRP] [decimal](6, 0) NULL,
	[ZZMULT_DFCT] [varchar](1) NULL,
	[ZZPKCUBSZ] [varchar](10) NULL,
	[ZZPLATFRM_TYP] [varchar](10) NULL,
	[ZZSUGAR] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[BWTTY] [varchar](1) NULL,
	[XCHAR] [varchar](1) NULL,
	[MMSTA] [varchar](2) NULL,
	[MMSTD] [date] NULL,
	[MAABC] [varchar](1) NULL,
	[KZKRI] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[AUSME] [varchar](3) NULL,
	[DISPR] [varchar](4) NULL,
	[DISMM] [varchar](2) NULL,
	[DISPO] [varchar](3) NULL,
	[KZDIE] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[PERKZ] [varchar](1) NULL,
	[AUSSS] [decimal](5, 2) NULL,
	[DISLS] [varchar](2) NULL,
	[BESKZ] [varchar](1) NULL,
	[SOBSL] [varchar](2) NULL,
	[MINBE] [decimal](13, 3) NULL,
	[EISBE] [decimal](13, 3) NULL,
	[BSTMI] [decimal](13, 3) NULL,
	[BSTMA] [decimal](13, 3) NULL,
	[BSTFE] [decimal](13, 3) NULL,
	[BSTRF] [decimal](13, 3) NULL,
	[MABST] [decimal](13, 3) NULL,
	[LOSFX] [decimal](11, 2) NULL,
	[SBDKZ] [varchar](1) NULL,
	[LAGPR] [varchar](1) NULL,
	[ALTSL] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[AUSDT] [date] NULL,
	[NFMAT] [varchar](18) NULL,
	[KZBED] [varchar](1) NULL,
	[MISKZ] [varchar](1) NULL,
	[FHORI] [varchar](3) NULL,
	[PFREI] [varchar](1) NULL,
	[FFREI] [varchar](1) NULL,
	[RGEKZ] [varchar](1) NULL,
	[FEVOR] [varchar](3) NULL,
	[BEARZ] [decimal](5, 2) NULL,
	[RUEZT] [decimal](5, 2) NULL,
	[TRANZ] [decimal](5, 2) NULL,
	[BASMG] [decimal](13, 3) NULL,
	[DZEIT] [decimal](3, 0) NULL,
	[MAXLZ] [decimal](5, 0) NULL,
	[LZEIH] [varchar](3) NULL,
	[KZPRO] [varchar](1) NULL,
	[GPMKZ] [varchar](1) NULL,
	[UEETO] [decimal](3, 1) NULL,
	[UEETK] [varchar](1) NULL,
	[UNETO] [decimal](3, 1) NULL,
	[WZEIT] [decimal](3, 0) NULL,
	[ATPKZ] [varchar](1) NULL,
	[VZUSL] [decimal](5, 2) NULL,
	[HERBL] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPROZ] [decimal](3, 1) NULL,
	[QUAZT] [decimal](3, 0) NULL,
	[SSQSS] [varchar](8) NULL,
	[MPDAU] [decimal](5, 0) NULL,
	[KZPPV] [varchar](1) NULL,
	[KZDKZ] [varchar](1) NULL,
	[WSTGH] [decimal](9, 0) NULL,
	[PRFRQ] [decimal](5, 0) NULL,
	[NKMPR] [date] NULL,
	[UMLMC] [decimal](13, 3) NULL,
	[LADGR] [varchar](4) NULL,
	[XCHPF] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[LGRAD] [decimal](3, 1) NULL,
	[AUFTL] [varchar](1) NULL,
	[PLVAR] [varchar](2) NULL,
	[OTYPE] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[MTVFP] [varchar](2) NULL,
	[PERIV] [varchar](2) NULL,
	[KZKFK] [varchar](1) NULL,
	[VRVEZ] [decimal](5, 2) NULL,
	[VBAMG] [decimal](13, 3) NULL,
	[VBEAZ] [decimal](5, 2) NULL,
	[LIZYK] [varchar](4) NULL,
	[BWSCL] [varchar](1) NULL,
	[KAUTB] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[STAWN] [varchar](17) NULL,
	[HERKL] [varchar](3) NULL,
	[HERKR] [varchar](3) NULL,
	[EXPME] [varchar](3) NULL,
	[MTVER] [varchar](4) NULL,
	[PRCTR] [varchar](10) NULL,
	[TRAME] [decimal](13, 3) NULL,
	[MRPPP] [varchar](3) NULL,
	[SAUFT] [varchar](1) NULL,
	[FXHOR] [decimal](3, 0) NULL,
	[VRMOD] [varchar](1) NULL,
	[VINT1] [decimal](3, 0) NULL,
	[VINT2] [decimal](3, 0) NULL,
	[VERKZ] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[APLAL] [varchar](2) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[SOBSK] [varchar](2) NULL,
	[FRTME] [varchar](3) NULL,
	[LGPRO] [varchar](4) NULL,
	[DISGR] [varchar](4) NULL,
	[KAUSF] [decimal](5, 2) NULL,
	[QZGTP] [varchar](4) NULL,
	[QMATV] [varchar](1) NULL,
	[TAKZT] [decimal](3, 0) NULL,
	[RWPRO] [varchar](3) NULL,
	[COPAM] [varchar](10) NULL,
	[ABCIN] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[SERNP] [varchar](4) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[STDPD] [varchar](18) NULL,
	[SFEPR] [varchar](4) NULL,
	[XMCNG] [varchar](1) NULL,
	[QSSYS] [varchar](4) NULL,
	[LFRHY] [varchar](3) NULL,
	[RDPRF] [varchar](4) NULL,
	[VRBMT] [varchar](18) NULL,
	[VRBWK] [varchar](4) NULL,
	[VRBDT] [date] NULL,
	[VRBFK] [decimal](4, 2) NULL,
	[AUTRU] [varchar](1) NULL,
	[PREFE] [varchar](1) NULL,
	[PRENC] [varchar](1) NULL,
	[PRENO] [varchar](8) NULL,
	[PREND] [date] NULL,
	[PRENE] [varchar](1) NULL,
	[PRENG] [date] NULL,
	[ITARK] [varchar](1) NULL,
	[SERVG] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[STRGR] [varchar](2) NULL,
	[CUOBV] [decimal](18, 0) NULL,
	[LGFSB] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[CCFIX] [varchar](1) NULL,
	[EPRIO] [varchar](4) NULL,
	[QMATA] [varchar](6) NULL,
	[RESVP] [decimal](3, 0) NULL,
	[PLNTY] [varchar](1) NULL,
	[UOMGR] [varchar](3) NULL,
	[UMRSL] [varchar](4) NULL,
	[ABFAC] [decimal](2, 1) NULL,
	[SFCPF] [varchar](6) NULL,
	[SHFLG] [varchar](1) NULL,
	[SHZET] [decimal](2, 0) NULL,
	[MDACH] [varchar](2) NULL,
	[KZECH] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[VKUMC] [decimal](13, 2) NULL,
	[VKTRW] [decimal](13, 2) NULL,
	[KZAGL] [varchar](1) NULL,
	[FVIDK] [varchar](4) NULL,
	[FXPRU] [varchar](1) NULL,
	[LOGGR] [varchar](4) NULL,
	[FPRFM] [varchar](3) NULL,
	[GLGMG] [decimal](13, 3) NULL,
	[VKGLG] [decimal](13, 2) NULL,
	[INDUS] [varchar](2) NULL,
	[MOWNR] [varchar](12) NULL,
	[MOGRU] [varchar](6) NULL,
	[CASNR] [varchar](15) NULL,
	[GPNUM] [varchar](9) NULL,
	[STEUC] [varchar](16) NULL,
	[FABKZ] [varchar](1) NULL,
	[MATGR] [varchar](20) NULL,
	[VSPVB] [varchar](10) NULL,
	[DPLFS] [varchar](2) NULL,
	[DPLPU] [varchar](1) NULL,
	[DPLHO] [decimal](3, 0) NULL,
	[MINLS] [decimal](13, 3) NULL,
	[MAXLS] [decimal](13, 3) NULL,
	[FIXLS] [decimal](13, 3) NULL,
	[LTINC] [decimal](13, 3) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[CONVT] [varchar](2) NULL,
	[SHPRO] [varchar](3) NULL,
	[AHDIS] [varchar](1) NULL,
	[DIBER] [varchar](1) NULL,
	[KZPSP] [varchar](1) NULL,
	[OCMPF] [varchar](6) NULL,
	[APOKZ] [varchar](1) NULL,
	[MCRUE] [varchar](1) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[EISLO] [decimal](13, 3) NULL,
	[NCOST] [varchar](1) NULL,
	[ROTATION_DATE] [varchar](1) NULL,
	[UCHKZ] [varchar](1) NULL,
	[UCMAT] [varchar](18) NULL,
	[BWESB] [decimal](13, 3) NULL,
	[/VSO/R_PKGRP] [varchar](18) NULL,
	[/VSO/R_LANE_NUM] [varchar](3) NULL,
	[/VSO/R_PAL_VEND] [varchar](18) NULL,
	[/VSO/R_FORK_DIR] [varchar](1) NULL,
	[CONS_PROCG] [varchar](1) NULL,
	[GI_PR_TIME] [decimal](3, 0) NULL,
	[MULTIPLE_EKGRP] [varchar](1) NULL,
	[REF_SCHEMA] [varchar](2) NULL,
	[MIN_TROC] [decimal](3, 0) NULL,
	[MAX_TROC] [decimal](3, 0) NULL,
	[TARGET_STOCK] [decimal](13, 3) NULL,
	[ZZSMARTOPS] [varchar](1) NULL,
	[ZZFRML] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARC_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[PSTAT] [varchar](15) NULL,
	[LVORM] [varchar](1) NULL,
	[BWTTY] [varchar](1) NULL,
	[XCHAR] [varchar](1) NULL,
	[MMSTA] [varchar](2) NULL,
	[MMSTD] [date] NULL,
	[MAABC] [varchar](1) NULL,
	[KZKRI] [varchar](1) NULL,
	[EKGRP] [varchar](3) NULL,
	[AUSME] [varchar](3) NULL,
	[DISPR] [varchar](4) NULL,
	[DISMM] [varchar](2) NULL,
	[DISPO] [varchar](3) NULL,
	[KZDIE] [varchar](1) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[PERKZ] [varchar](1) NULL,
	[AUSSS] [decimal](5, 2) NULL,
	[DISLS] [varchar](2) NULL,
	[BESKZ] [varchar](1) NULL,
	[SOBSL] [varchar](2) NULL,
	[MINBE] [decimal](13, 3) NULL,
	[EISBE] [decimal](13, 3) NULL,
	[BSTMI] [decimal](13, 3) NULL,
	[BSTMA] [decimal](13, 3) NULL,
	[BSTFE] [decimal](13, 3) NULL,
	[BSTRF] [decimal](13, 3) NULL,
	[MABST] [decimal](13, 3) NULL,
	[LOSFX] [decimal](11, 2) NULL,
	[SBDKZ] [varchar](1) NULL,
	[LAGPR] [varchar](1) NULL,
	[ALTSL] [varchar](1) NULL,
	[KZAUS] [varchar](1) NULL,
	[AUSDT] [date] NULL,
	[NFMAT] [varchar](18) NULL,
	[KZBED] [varchar](1) NULL,
	[MISKZ] [varchar](1) NULL,
	[FHORI] [varchar](3) NULL,
	[PFREI] [varchar](1) NULL,
	[FFREI] [varchar](1) NULL,
	[RGEKZ] [varchar](1) NULL,
	[FEVOR] [varchar](3) NULL,
	[BEARZ] [decimal](5, 2) NULL,
	[RUEZT] [decimal](5, 2) NULL,
	[TRANZ] [decimal](5, 2) NULL,
	[BASMG] [decimal](13, 3) NULL,
	[DZEIT] [decimal](3, 0) NULL,
	[MAXLZ] [decimal](5, 0) NULL,
	[LZEIH] [varchar](3) NULL,
	[KZPRO] [varchar](1) NULL,
	[GPMKZ] [varchar](1) NULL,
	[UEETO] [decimal](3, 1) NULL,
	[UEETK] [varchar](1) NULL,
	[UNETO] [decimal](3, 1) NULL,
	[WZEIT] [decimal](3, 0) NULL,
	[ATPKZ] [varchar](1) NULL,
	[VZUSL] [decimal](5, 2) NULL,
	[HERBL] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPROZ] [decimal](3, 1) NULL,
	[QUAZT] [decimal](3, 0) NULL,
	[SSQSS] [varchar](8) NULL,
	[MPDAU] [decimal](5, 0) NULL,
	[KZPPV] [varchar](1) NULL,
	[KZDKZ] [varchar](1) NULL,
	[WSTGH] [decimal](9, 0) NULL,
	[PRFRQ] [decimal](5, 0) NULL,
	[NKMPR] [date] NULL,
	[UMLMC] [decimal](13, 3) NULL,
	[LADGR] [varchar](4) NULL,
	[XCHPF] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[LGRAD] [decimal](3, 1) NULL,
	[AUFTL] [varchar](1) NULL,
	[PLVAR] [varchar](2) NULL,
	[OTYPE] [varchar](2) NULL,
	[OBJID] [decimal](8, 0) NULL,
	[MTVFP] [varchar](2) NULL,
	[PERIV] [varchar](2) NULL,
	[KZKFK] [varchar](1) NULL,
	[VRVEZ] [decimal](5, 2) NULL,
	[VBAMG] [decimal](13, 3) NULL,
	[VBEAZ] [decimal](5, 2) NULL,
	[LIZYK] [varchar](4) NULL,
	[BWSCL] [varchar](1) NULL,
	[KAUTB] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[STAWN] [varchar](17) NULL,
	[HERKL] [varchar](3) NULL,
	[HERKR] [varchar](3) NULL,
	[EXPME] [varchar](3) NULL,
	[MTVER] [varchar](4) NULL,
	[PRCTR] [varchar](10) NULL,
	[TRAME] [decimal](13, 3) NULL,
	[MRPPP] [varchar](3) NULL,
	[SAUFT] [varchar](1) NULL,
	[FXHOR] [decimal](3, 0) NULL,
	[VRMOD] [varchar](1) NULL,
	[VINT1] [decimal](3, 0) NULL,
	[VINT2] [decimal](3, 0) NULL,
	[VERKZ] [varchar](1) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[APLAL] [varchar](2) NULL,
	[LOSGR] [decimal](13, 3) NULL,
	[SOBSK] [varchar](2) NULL,
	[FRTME] [varchar](3) NULL,
	[LGPRO] [varchar](4) NULL,
	[DISGR] [varchar](4) NULL,
	[KAUSF] [decimal](5, 2) NULL,
	[QZGTP] [varchar](4) NULL,
	[QMATV] [varchar](1) NULL,
	[TAKZT] [decimal](3, 0) NULL,
	[RWPRO] [varchar](3) NULL,
	[COPAM] [varchar](10) NULL,
	[ABCIN] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[SERNP] [varchar](4) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[STDPD] [varchar](18) NULL,
	[SFEPR] [varchar](4) NULL,
	[XMCNG] [varchar](1) NULL,
	[QSSYS] [varchar](4) NULL,
	[LFRHY] [varchar](3) NULL,
	[RDPRF] [varchar](4) NULL,
	[VRBMT] [varchar](18) NULL,
	[VRBWK] [varchar](4) NULL,
	[VRBDT] [date] NULL,
	[VRBFK] [decimal](4, 2) NULL,
	[AUTRU] [varchar](1) NULL,
	[PREFE] [varchar](1) NULL,
	[PRENC] [varchar](1) NULL,
	[PRENO] [varchar](8) NULL,
	[PREND] [date] NULL,
	[PRENE] [varchar](1) NULL,
	[PRENG] [date] NULL,
	[ITARK] [varchar](1) NULL,
	[SERVG] [varchar](1) NULL,
	[KZKUP] [varchar](1) NULL,
	[STRGR] [varchar](2) NULL,
	[CUOBV] [decimal](18, 0) NULL,
	[LGFSB] [varchar](4) NULL,
	[SCHGT] [varchar](1) NULL,
	[CCFIX] [varchar](1) NULL,
	[EPRIO] [varchar](4) NULL,
	[QMATA] [varchar](6) NULL,
	[RESVP] [decimal](3, 0) NULL,
	[PLNTY] [varchar](1) NULL,
	[UOMGR] [varchar](3) NULL,
	[UMRSL] [varchar](4) NULL,
	[ABFAC] [decimal](2, 1) NULL,
	[SFCPF] [varchar](6) NULL,
	[SHFLG] [varchar](1) NULL,
	[SHZET] [decimal](2, 0) NULL,
	[MDACH] [varchar](2) NULL,
	[KZECH] [varchar](1) NULL,
	[MEGRU] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[VKUMC] [decimal](13, 2) NULL,
	[VKTRW] [decimal](13, 2) NULL,
	[KZAGL] [varchar](1) NULL,
	[FVIDK] [varchar](4) NULL,
	[FXPRU] [varchar](1) NULL,
	[LOGGR] [varchar](4) NULL,
	[FPRFM] [varchar](3) NULL,
	[GLGMG] [decimal](13, 3) NULL,
	[VKGLG] [decimal](13, 2) NULL,
	[INDUS] [varchar](2) NULL,
	[MOWNR] [varchar](12) NULL,
	[MOGRU] [varchar](6) NULL,
	[CASNR] [varchar](15) NULL,
	[GPNUM] [varchar](9) NULL,
	[STEUC] [varchar](16) NULL,
	[FABKZ] [varchar](1) NULL,
	[MATGR] [varchar](20) NULL,
	[VSPVB] [varchar](10) NULL,
	[DPLFS] [varchar](2) NULL,
	[DPLPU] [varchar](1) NULL,
	[DPLHO] [decimal](3, 0) NULL,
	[MINLS] [decimal](13, 3) NULL,
	[MAXLS] [decimal](13, 3) NULL,
	[FIXLS] [decimal](13, 3) NULL,
	[LTINC] [decimal](13, 3) NULL,
	[COMPL] [decimal](2, 0) NULL,
	[CONVT] [varchar](2) NULL,
	[SHPRO] [varchar](3) NULL,
	[AHDIS] [varchar](1) NULL,
	[DIBER] [varchar](1) NULL,
	[KZPSP] [varchar](1) NULL,
	[OCMPF] [varchar](6) NULL,
	[APOKZ] [varchar](1) NULL,
	[MCRUE] [varchar](1) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[EISLO] [decimal](13, 3) NULL,
	[NCOST] [varchar](1) NULL,
	[ROTATION_DATE] [varchar](1) NULL,
	[UCHKZ] [varchar](1) NULL,
	[UCMAT] [varchar](18) NULL,
	[BWESB] [decimal](13, 3) NULL,
	[/VSO/R_PKGRP] [varchar](18) NULL,
	[/VSO/R_LANE_NUM] [varchar](3) NULL,
	[/VSO/R_PAL_VEND] [varchar](18) NULL,
	[/VSO/R_FORK_DIR] [varchar](1) NULL,
	[CONS_PROCG] [varchar](1) NULL,
	[GI_PR_TIME] [decimal](3, 0) NULL,
	[MULTIPLE_EKGRP] [varchar](1) NULL,
	[REF_SCHEMA] [varchar](2) NULL,
	[MIN_TROC] [decimal](3, 0) NULL,
	[MAX_TROC] [decimal](3, 0) NULL,
	[TARGET_STOCK] [decimal](13, 3) NULL,
	[ZZSMARTOPS] [varchar](1) NULL,
	[ZZFRML] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARM]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARM](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[EANNR] [varchar](13) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[MESUB] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[MESRT] [decimal](2, 0) NULL,
	[XFHDW] [varchar](1) NULL,
	[XBEWW] [varchar](1) NULL,
	[KZWSO] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[BFLME_MARM] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[NEST_FTR] [decimal](3, 0) NULL,
	[MAX_STACK] [int] NULL,
	[CAPAUSE] [decimal](15, 3) NULL,
	[TY2TQ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARM_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARM_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[EANNR] [varchar](13) NULL,
	[EAN11] [varchar](18) NULL,
	[NUMTP] [varchar](2) NULL,
	[LAENG] [decimal](13, 3) NULL,
	[BREIT] [decimal](13, 3) NULL,
	[HOEHE] [decimal](13, 3) NULL,
	[MEABM] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[MESUB] [varchar](3) NULL,
	[ATINN] [decimal](10, 0) NULL,
	[MESRT] [decimal](2, 0) NULL,
	[XFHDW] [varchar](1) NULL,
	[XBEWW] [varchar](1) NULL,
	[KZWSO] [varchar](1) NULL,
	[MSEHI] [varchar](3) NULL,
	[BFLME_MARM] [varchar](1) NULL,
	[GTIN_VARIANT] [varchar](2) NULL,
	[NEST_FTR] [decimal](3, 0) NULL,
	[MAX_STACK] [int] NULL,
	[CAPAUSE] [decimal](15, 3) NULL,
	[TY2TQ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAST]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAST](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLAN] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[LOSVN] [decimal](13, 3) NULL,
	[LOSBS] [decimal](13, 3) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[CSLTY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAST_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAST_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[STLAN] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[LOSVN] [decimal](13, 3) NULL,
	[LOSBS] [decimal](13, 3) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[CSLTY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATERIAL_USAGE_VARIANCE_REPORT_KLA_TEMPLATE]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATERIAL_USAGE_VARIANCE_REPORT_KLA_TEMPLATE](
	[Plant] [int] NULL,
	[Plant Description] [varchar](15) NULL,
	[City] [varchar](9) NULL,
	[Region] [varchar](3) NULL,
	[Region Description] [varchar](9) NULL,
	[Country] [varchar](2) NULL,
	[Country Name] [varchar](6) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [int] NULL,
	[Fiscal Period] [varchar](6) NULL,
	[Fiscal week] [varchar](6) NULL,
	[Date (Each component)] [varchar](8) NULL,
	[Shift] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](9) NULL,
	[Production Order] [int] NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](21) NULL,
	[Category] [int] NULL,
	[Category Description] [varchar](4) NULL,
	[Brand] [varchar](10) NULL,
	[Brand Description] [varchar](15) NULL,
	[Type] [decimal](10, 3) NULL,
	[Type Description] [varchar](20) NULL,
	[Material] [int] NULL,
	[Material Description] [varchar](19) NULL,
	[Overweight %] [varchar](2) NULL,
	[Moisture %] [varchar](2) NULL,
	[Waste %] [varchar](4) NULL,
	[Material Group (finished product)] [varchar](4) NULL,
	[Material Group Description] [varchar](4) NULL,
	[Good Receipts 0 Actuals] [decimal](10, 3) NULL,
	[Unit] [varchar](2) NULL,
	[Material Group (component)] [varchar](7) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [decimal](10, 3) NULL,
	[Overweight % for Component Material] [varchar](2) NULL,
	[Moisture % for Component Material] [varchar](2) NULL,
	[Waste % for Component Material] [varchar](2) NULL,
	[Component Material] [varchar](10) NULL,
	[Component Material Description] [varchar](23) NULL,
	[GI Qty 0 Actuals] [decimal](10, 3) NULL,
	[Field43] [varchar](2) NULL,
	[GI Val 0 Actuals LC] [decimal](10, 3) NULL,
	[Local Currency] [varchar](3) NULL,
	[GI VAL 0 Actuals USD] [decimal](10, 3) NULL,
	[USD] [varchar](3) NULL,
	[GI Qty 0 Standard] [decimal](10, 3) NULL,
	[Field49] [varchar](2) NULL,
	[GI Val 0 Standard LC] [decimal](10, 3) NULL,
	[Field51] [varchar](3) NULL,
	[GI Val 0 Standard USD] [decimal](10, 3) NULL,
	[Field53] [varchar](3) NULL,
	[GI Val 0 Frozen LC] [decimal](10, 3) NULL,
	[Field55] [varchar](3) NULL,
	[GI Val 0 Frozen USD] [decimal](10, 3) NULL,
	[Field57] [varchar](3) NULL,
	[Quantity  (or GI Qty 0 Ideal)] [decimal](10, 3) NULL,
	[Field59] [varchar](2) NULL,
	[GI Val 0 Ideal LC] [decimal](10, 3) NULL,
	[Field61] [varchar](3) NULL,
	[GI Val 0 Ideal USD] [decimal](10, 3) NULL,
	[Field63] [varchar](3) NULL,
	[Standard Vs Actual in units] [decimal](10, 3) NULL,
	[Field65] [varchar](2) NULL,
	[Standard Vs Actual in LC] [decimal](10, 3) NULL,
	[Field67] [varchar](3) NULL,
	[Standard Vs Actual in USD] [decimal](10, 3) NULL,
	[Field69] [varchar](3) NULL,
	[Ideal Vs Actual in Units] [decimal](10, 3) NULL,
	[Units] [varchar](2) NULL,
	[Ideal vs Actual in LC] [decimal](10, 3) NULL,
	[Field73] [varchar](3) NULL,
	[Ideal vs Actual USD] [decimal](10, 3) NULL,
	[Field75] [varchar](3) NULL,
	[Standard Vs Actual %] [varchar](2) NULL,
	[% Ideal Vs Actual] [varchar](2) NULL,
	[C. Scrap] [decimal](10, 3) NULL,
	[GI Qty 0  Frozen] [int] NULL,
	[Frozen Vs Actual %] [int] NULL,
	[Frozen Vs Actual in Units] [int] NULL,
	[Frozen Vs Actual in LC] [int] NULL,
	[Frozen Vs Actual in USD] [int] NULL,
	[Date Time Stamp of data the extraction] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATERIAL_USAGE_VARIANCE_REPORT_KLA_TEMPLATE_OLD_VERSION]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATERIAL_USAGE_VARIANCE_REPORT_KLA_TEMPLATE_OLD_VERSION](
	[Plant] [int] NULL,
	[Plant Description] [varchar](15) NULL,
	[City] [varchar](9) NULL,
	[Region] [varchar](3) NULL,
	[Region Description] [varchar](9) NULL,
	[Country] [varchar](2) NULL,
	[Country Name] [varchar](6) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [int] NULL,
	[Fiscal Period] [varchar](6) NULL,
	[Fiscal week] [varchar](6) NULL,
	[Date (Each component)] [varchar](8) NULL,
	[Shift] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](9) NULL,
	[Production Order] [int] NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](21) NULL,
	[Category] [varchar](2) NULL,
	[Category Description] [int] NULL,
	[Brand] [varchar](2) NULL,
	[Brand Description] [int] NULL,
	[Type] [varchar](2) NULL,
	[Type Description] [int] NULL,
	[Material] [int] NULL,
	[Material Description] [varchar](19) NULL,
	[Overweight %] [int] NULL,
	[Moisture %] [int] NULL,
	[Waste %] [decimal](10, 3) NULL,
	[Material Group (finished product)] [varchar](3) NULL,
	[Material Group Description] [varchar](3) NULL,
	[Good Receipts - Actuals] [varchar](13) NULL,
	[Unit] [varchar](2) NULL,
	[Material Group (component)] [varchar](7) NULL,
	[Material Group Description (component)] [varchar](22) NULL,
	[Alternate Group] [int] NULL,
	[Overweight % for Component Material] [int] NULL,
	[Moisture % for Component Material] [int] NULL,
	[Waste % for Component Material] [int] NULL,
	[Component Material] [varchar](10) NULL,
	[Component Material Description] [varchar](23) NULL,
	[GI Qty - Actuals] [varchar](12) NULL,
	[Field43] [varchar](2) NULL,
	[GI Val - Actuals LC] [varchar](13) NULL,
	[Local Currency] [varchar](3) NULL,
	[GI VAL - Actuals USD] [varchar](12) NULL,
	[USD] [varchar](3) NULL,
	[GI Qty - Standard] [varchar](12) NULL,
	[Field49] [varchar](2) NULL,
	[GI Val - Standard LC] [varchar](13) NULL,
	[Field51] [varchar](3) NULL,
	[GI Val - Standard USD] [varchar](16) NULL,
	[Field53] [varchar](3) NULL,
	[GI Val - Frozen LC] [varchar](12) NULL,
	[Field55] [varchar](3) NULL,
	[GI Val - Frozen USD] [varchar](13) NULL,
	[Field57] [varchar](3) NULL,
	[Quantity  (or GI Qty - Ideal)] [varchar](13) NULL,
	[Field59] [varchar](2) NULL,
	[GI Val - Ideal LC] [varchar](13) NULL,
	[Field61] [varchar](3) NULL,
	[GI Val - Ideal USD] [varchar](16) NULL,
	[Field63] [varchar](3) NULL,
	[Standard Vs Actual in units] [varchar](13) NULL,
	[Field65] [varchar](2) NULL,
	[Standard Vs Actual in LC] [varchar](14) NULL,
	[Field67] [varchar](3) NULL,
	[Standard Vs Actual in USD] [varchar](16) NULL,
	[Field69] [varchar](3) NULL,
	[Ideal Vs Actual in Units] [varchar](13) NULL,
	[Units] [varchar](2) NULL,
	[Ideal vs Actual in LC] [varchar](14) NULL,
	[Field73] [varchar](3) NULL,
	[Ideal vs Actual USD] [varchar](16) NULL,
	[Field75] [varchar](3) NULL,
	[Standard Vs Actual %] [varchar](2) NULL,
	[% Ideal Vs Actual] [varchar](2) NULL,
	[C. Scrap] [varchar](1) NULL,
	[GI Qty -  Frozen] [int] NULL,
	[Frozen Vs Actual %] [int] NULL,
	[Frozen Vs Actual in Units] [int] NULL,
	[Frozen Vs Actual in LC] [int] NULL,
	[Frozen Vs Actual in USD] [int] NULL,
	[Date Time Stamp of data the extraction] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MBEW]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBEW](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[BWKEY] [varchar](4) NULL,
	[BWTAR] [varchar](10) NULL,
	[LVORM] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[VERPR] [decimal](11, 2) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BKLAS] [varchar](4) NULL,
	[SALKV] [decimal](13, 2) NULL,
	[VMKUM] [decimal](13, 3) NULL,
	[VMSAL] [decimal](13, 2) NULL,
	[VMVPR] [varchar](1) NULL,
	[VMVER] [decimal](11, 2) NULL,
	[VMSTP] [decimal](11, 2) NULL,
	[VMPEI] [decimal](5, 0) NULL,
	[VMBKL] [varchar](4) NULL,
	[VMSAV] [decimal](13, 2) NULL,
	[VJKUM] [decimal](13, 3) NULL,
	[VJSAL] [decimal](13, 2) NULL,
	[VJVPR] [varchar](1) NULL,
	[VJVER] [decimal](11, 2) NULL,
	[VJSTP] [decimal](11, 2) NULL,
	[VJPEI] [decimal](5, 0) NULL,
	[VJBKL] [varchar](4) NULL,
	[VJSAV] [decimal](13, 2) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[BWTTY] [varchar](1) NULL,
	[STPRV] [decimal](11, 2) NULL,
	[LAEPR] [date] NULL,
	[ZKPRS] [decimal](11, 2) NULL,
	[ZKDAT] [date] NULL,
	[TIMESTAMP] [decimal](15, 0) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPRH] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[VJBWH] [decimal](11, 2) NULL,
	[VVJSL] [decimal](13, 2) NULL,
	[VVJLB] [decimal](13, 3) NULL,
	[VVMLB] [decimal](13, 3) NULL,
	[VVSAL] [decimal](13, 2) NULL,
	[ZPLPR] [decimal](11, 2) NULL,
	[ZPLP1] [decimal](11, 2) NULL,
	[ZPLP2] [decimal](11, 2) NULL,
	[ZPLP3] [decimal](11, 2) NULL,
	[ZPLD1] [date] NULL,
	[ZPLD2] [date] NULL,
	[ZPLD3] [date] NULL,
	[PPERZ] [decimal](6, 0) NULL,
	[PPERL] [decimal](6, 0) NULL,
	[PPERV] [decimal](6, 0) NULL,
	[KALKZ] [varchar](1) NULL,
	[KALKL] [varchar](1) NULL,
	[KALKV] [varchar](1) NULL,
	[KALSC] [varchar](6) NULL,
	[XLIFO] [varchar](1) NULL,
	[MYPOL] [varchar](4) NULL,
	[BWPH1] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[ABWKZ] [decimal](2, 0) NULL,
	[PSTAT] [varchar](15) NULL,
	[KALN1] [decimal](12, 0) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[BWVA1] [varchar](3) NULL,
	[BWVA2] [varchar](3) NULL,
	[BWVA3] [varchar](3) NULL,
	[VERS1] [decimal](2, 0) NULL,
	[VERS2] [decimal](2, 0) NULL,
	[VERS3] [decimal](2, 0) NULL,
	[HRKFT] [varchar](4) NULL,
	[KOSGR] [varchar](10) NULL,
	[PPRDZ] [decimal](3, 0) NULL,
	[PPRDL] [decimal](3, 0) NULL,
	[PPRDV] [decimal](3, 0) NULL,
	[PDATZ] [decimal](4, 0) NULL,
	[PDATL] [decimal](4, 0) NULL,
	[PDATV] [decimal](4, 0) NULL,
	[EKALR] [varchar](1) NULL,
	[VPLPR] [decimal](11, 2) NULL,
	[MLMAA] [varchar](1) NULL,
	[MLAST] [varchar](1) NULL,
	[LPLPR] [decimal](11, 2) NULL,
	[VKSAL] [decimal](13, 2) NULL,
	[HKMAT] [varchar](1) NULL,
	[SPERW] [varchar](1) NULL,
	[KZIWL] [varchar](3) NULL,
	[WLINL] [date] NULL,
	[ABCIW] [varchar](1) NULL,
	[BWSPA] [decimal](6, 2) NULL,
	[LPLPX] [decimal](11, 2) NULL,
	[VPLPX] [decimal](11, 2) NULL,
	[FPLPX] [decimal](11, 2) NULL,
	[LBWST] [varchar](1) NULL,
	[VBWST] [varchar](1) NULL,
	[FBWST] [varchar](1) NULL,
	[EKLAS] [varchar](4) NULL,
	[QKLAS] [varchar](4) NULL,
	[MTUSE] [varchar](1) NULL,
	[MTORG] [varchar](1) NULL,
	[OWNPR] [varchar](1) NULL,
	[XBEWM] [varchar](1) NULL,
	[BWPEI] [decimal](5, 0) NULL,
	[MBRUE] [varchar](1) NULL,
	[OKLAS] [varchar](4) NULL,
	[OIPPINV] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MBEW_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBEW_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[BWKEY] [varchar](4) NULL,
	[BWTAR] [varchar](10) NULL,
	[LVORM] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[VERPR] [decimal](11, 2) NULL,
	[STPRS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[BKLAS] [varchar](4) NULL,
	[SALKV] [decimal](13, 2) NULL,
	[VMKUM] [decimal](13, 3) NULL,
	[VMSAL] [decimal](13, 2) NULL,
	[VMVPR] [varchar](1) NULL,
	[VMVER] [decimal](11, 2) NULL,
	[VMSTP] [decimal](11, 2) NULL,
	[VMPEI] [decimal](5, 0) NULL,
	[VMBKL] [varchar](4) NULL,
	[VMSAV] [decimal](13, 2) NULL,
	[VJKUM] [decimal](13, 3) NULL,
	[VJSAL] [decimal](13, 2) NULL,
	[VJVPR] [varchar](1) NULL,
	[VJVER] [decimal](11, 2) NULL,
	[VJSTP] [decimal](11, 2) NULL,
	[VJPEI] [decimal](5, 0) NULL,
	[VJBKL] [varchar](4) NULL,
	[VJSAV] [decimal](13, 2) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFMON] [decimal](2, 0) NULL,
	[BWTTY] [varchar](1) NULL,
	[STPRV] [decimal](11, 2) NULL,
	[LAEPR] [date] NULL,
	[ZKPRS] [decimal](11, 2) NULL,
	[ZKDAT] [date] NULL,
	[TIMESTAMP] [decimal](15, 0) NULL,
	[BWPRS] [decimal](11, 2) NULL,
	[BWPRH] [decimal](11, 2) NULL,
	[VJBWS] [decimal](11, 2) NULL,
	[VJBWH] [decimal](11, 2) NULL,
	[VVJSL] [decimal](13, 2) NULL,
	[VVJLB] [decimal](13, 3) NULL,
	[VVMLB] [decimal](13, 3) NULL,
	[VVSAL] [decimal](13, 2) NULL,
	[ZPLPR] [decimal](11, 2) NULL,
	[ZPLP1] [decimal](11, 2) NULL,
	[ZPLP2] [decimal](11, 2) NULL,
	[ZPLP3] [decimal](11, 2) NULL,
	[ZPLD1] [date] NULL,
	[ZPLD2] [date] NULL,
	[ZPLD3] [date] NULL,
	[PPERZ] [decimal](6, 0) NULL,
	[PPERL] [decimal](6, 0) NULL,
	[PPERV] [decimal](6, 0) NULL,
	[KALKZ] [varchar](1) NULL,
	[KALKL] [varchar](1) NULL,
	[KALKV] [varchar](1) NULL,
	[KALSC] [varchar](6) NULL,
	[XLIFO] [varchar](1) NULL,
	[MYPOL] [varchar](4) NULL,
	[BWPH1] [decimal](11, 2) NULL,
	[BWPS1] [decimal](11, 2) NULL,
	[ABWKZ] [decimal](2, 0) NULL,
	[PSTAT] [varchar](15) NULL,
	[KALN1] [decimal](12, 0) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[BWVA1] [varchar](3) NULL,
	[BWVA2] [varchar](3) NULL,
	[BWVA3] [varchar](3) NULL,
	[VERS1] [decimal](2, 0) NULL,
	[VERS2] [decimal](2, 0) NULL,
	[VERS3] [decimal](2, 0) NULL,
	[HRKFT] [varchar](4) NULL,
	[KOSGR] [varchar](10) NULL,
	[PPRDZ] [decimal](3, 0) NULL,
	[PPRDL] [decimal](3, 0) NULL,
	[PPRDV] [decimal](3, 0) NULL,
	[PDATZ] [decimal](4, 0) NULL,
	[PDATL] [decimal](4, 0) NULL,
	[PDATV] [decimal](4, 0) NULL,
	[EKALR] [varchar](1) NULL,
	[VPLPR] [decimal](11, 2) NULL,
	[MLMAA] [varchar](1) NULL,
	[MLAST] [varchar](1) NULL,
	[LPLPR] [decimal](11, 2) NULL,
	[VKSAL] [decimal](13, 2) NULL,
	[HKMAT] [varchar](1) NULL,
	[SPERW] [varchar](1) NULL,
	[KZIWL] [varchar](3) NULL,
	[WLINL] [date] NULL,
	[ABCIW] [varchar](1) NULL,
	[BWSPA] [decimal](6, 2) NULL,
	[LPLPX] [decimal](11, 2) NULL,
	[VPLPX] [decimal](11, 2) NULL,
	[FPLPX] [decimal](11, 2) NULL,
	[LBWST] [varchar](1) NULL,
	[VBWST] [varchar](1) NULL,
	[FBWST] [varchar](1) NULL,
	[EKLAS] [varchar](4) NULL,
	[QKLAS] [varchar](4) NULL,
	[MTUSE] [varchar](1) NULL,
	[MTORG] [varchar](1) NULL,
	[OWNPR] [varchar](1) NULL,
	[XBEWM] [varchar](1) NULL,
	[BWPEI] [decimal](5, 0) NULL,
	[MBRUE] [varchar](1) NULL,
	[OKLAS] [varchar](4) NULL,
	[OIPPINV] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEAN]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEAN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[LFNUM] [varchar](5) NULL,
	[EAN11] [varchar](18) NULL,
	[EANTP] [varchar](2) NULL,
	[HPEAN] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEAN_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEAN_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL,
	[LFNUM] [varchar](5) NULL,
	[EAN11] [varchar](18) NULL,
	[EANTP] [varchar](2) NULL,
	[HPEAN] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MKPF]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MKPF](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [decimal](4, 0) NOT NULL,
	[VGART] [varchar](2) NULL,
	[BLART] [varchar](2) NULL,
	[BLAUM] [varchar](2) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[CPUTM] [time](7) NULL,
	[AEDAT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[TCODE] [varchar](4) NULL,
	[XBLNR] [varchar](16) NULL,
	[BKTXT] [varchar](25) NULL,
	[FRATH] [decimal](13, 2) NULL,
	[FRBNR] [varchar](16) NULL,
	[WEVER] [varchar](1) NULL,
	[XABLN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[BLA2D] [varchar](2) NULL,
	[TCODE2] [varchar](20) NULL,
	[BFWMS] [varchar](1) NULL,
	[EXNUM] [varchar](10) NULL,
	[SPE_BUDAT_UHR] [time](7) NULL,
	[SPE_BUDAT_ZONE] [varchar](6) NULL,
	[LE_VBELN] [varchar](10) NULL,
	[SPE_LOGSYS] [varchar](10) NULL,
	[SPE_MDNUM_EWM] [varchar](16) NULL,
	[GTS_CUSREF_NO] [varchar](35) NULL,
	[KNUMV] [varchar](10) NULL,
 CONSTRAINT [MKPF_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MKPF_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MKPF_OLD](
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [decimal](4, 0) NOT NULL,
	[VGART] [varchar](2) NULL,
	[BLART] [varchar](2) NULL,
	[BLAUM] [varchar](2) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[CPUTM] [time](7) NULL,
	[AEDAT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[TCODE] [varchar](4) NULL,
	[XBLNR] [varchar](16) NULL,
	[BKTXT] [varchar](25) NULL,
	[FRATH] [decimal](13, 2) NULL,
	[FRBNR] [varchar](16) NULL,
	[WEVER] [varchar](1) NULL,
	[XABLN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[BLA2D] [varchar](2) NULL,
	[TCODE2] [varchar](20) NULL,
	[BFWMS] [varchar](1) NULL,
	[EXNUM] [varchar](10) NULL,
	[SPE_BUDAT_UHR] [time](7) NULL,
	[SPE_BUDAT_ZONE] [varchar](6) NULL,
	[LE_VBELN] [varchar](10) NULL,
	[SPE_LOGSYS] [varchar](10) NULL,
	[SPE_MDNUM_EWM] [varchar](16) NULL,
	[GTS_CUSREF_NO] [varchar](35) NULL,
	[KNUMV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MLAN]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MLAN](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ALAND] [varchar](3) NULL,
	[TAXM1] [varchar](1) NULL,
	[TAXM2] [varchar](1) NULL,
	[TAXM3] [varchar](1) NULL,
	[TAXM4] [varchar](1) NULL,
	[TAXM5] [varchar](1) NULL,
	[TAXM6] [varchar](1) NULL,
	[TAXM7] [varchar](1) NULL,
	[TAXM8] [varchar](1) NULL,
	[TAXM9] [varchar](1) NULL,
	[TAXIM] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MLAN_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MLAN_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MATNR] [varchar](18) NULL,
	[ALAND] [varchar](3) NULL,
	[TAXM1] [varchar](1) NULL,
	[TAXM2] [varchar](1) NULL,
	[TAXM3] [varchar](1) NULL,
	[TAXM4] [varchar](1) NULL,
	[TAXM5] [varchar](1) NULL,
	[TAXM6] [varchar](1) NULL,
	[TAXM7] [varchar](1) NULL,
	[TAXM8] [varchar](1) NULL,
	[TAXM9] [varchar](1) NULL,
	[TAXIM] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSEG]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSEG](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [decimal](4, 0) NOT NULL,
	[ZEILE] [decimal](4, 0) NOT NULL,
	[LINE_ID] [decimal](6, 0) NULL,
	[PARENT_ID] [decimal](6, 0) NULL,
	[LINE_DEPTH] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[XAUTO] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[CHARG] [varchar](10) NULL,
	[INSMK] [varchar](1) NULL,
	[ZUSCH] [varchar](1) NULL,
	[ZUSTD] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[KDEIN] [decimal](4, 0) NULL,
	[PLPLA] [varchar](10) NULL,
	[SHKZG] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[BNBTR] [decimal](13, 2) NULL,
	[BUALT] [decimal](13, 2) NULL,
	[SHKUM] [varchar](1) NULL,
	[DMBUM] [decimal](13, 2) NULL,
	[BWTAR] [varchar](10) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[BPMNG] [decimal](13, 3) NULL,
	[BPRME] [varchar](3) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[LFBJA] [decimal](4, 0) NULL,
	[LFBNR] [varchar](10) NULL,
	[LFPOS] [decimal](4, 0) NULL,
	[SJAHR] [decimal](4, 0) NULL,
	[SMBLN] [varchar](10) NULL,
	[SMBLP] [decimal](4, 0) NULL,
	[ELIKZ] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[EQUNR] [varchar](18) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[PARGB] [varchar](4) NULL,
	[PARBU] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[PROJN] [varchar](16) NULL,
	[AUFNR] [varchar](12) NULL,
	[ANLN1] [varchar](12) NULL,
	[ANLN2] [varchar](4) NULL,
	[XSKST] [varchar](1) NULL,
	[XSAUF] [varchar](1) NULL,
	[XSPRO] [varchar](1) NULL,
	[XSERG] [varchar](1) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[XRUEM] [varchar](1) NULL,
	[XRUEJ] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[BELUM] [varchar](10) NULL,
	[BUZUM] [decimal](3, 0) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[KZEAR] [varchar](1) NULL,
	[PBAMG] [decimal](13, 3) NULL,
	[KZSTR] [varchar](1) NULL,
	[UMMAT] [varchar](18) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[UMCHA] [varchar](10) NULL,
	[UMZST] [varchar](1) NULL,
	[UMZUS] [varchar](1) NULL,
	[UMBAR] [varchar](10) NULL,
	[UMSOK] [varchar](1) NULL,
	[KZBEW] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[KZZUG] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[PALAN] [decimal](11, 0) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[BESTQ] [varchar](1) NULL,
	[BWLVS] [decimal](3, 0) NULL,
	[TBNUM] [decimal](10, 0) NULL,
	[TBPOS] [decimal](4, 0) NULL,
	[XBLVS] [varchar](1) NULL,
	[VSCHN] [varchar](1) NULL,
	[NSCHN] [varchar](1) NULL,
	[DYPLA] [varchar](1) NULL,
	[UBNUM] [decimal](10, 0) NULL,
	[TBPRI] [varchar](1) NULL,
	[TANUM] [decimal](10, 0) NULL,
	[WEANZ] [decimal](3, 0) NULL,
	[GRUND] [decimal](4, 0) NULL,
	[EVERS] [varchar](2) NULL,
	[EVERE] [varchar](2) NULL,
	[IMKEY] [varchar](8) NULL,
	[KSTRG] [varchar](12) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[PRCTR] [varchar](10) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[AUFPS] [decimal](4, 0) NULL,
	[VPTNR] [varchar](10) NULL,
	[FIPOS] [varchar](14) NULL,
	[SAKTO] [varchar](10) NULL,
	[BSTMG] [decimal](13, 3) NULL,
	[BSTME] [varchar](3) NULL,
	[XWSBR] [varchar](1) NULL,
	[EMLIF] [varchar](10) NULL,
	[EXBWR] [decimal](13, 2) NULL,
	[VKWRT] [decimal](13, 2) NULL,
	[AKTNR] [varchar](10) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[VFDAT] [varchar](10) NULL,
	[CUOBJ_CH] [decimal](18, 0) NULL,
	[EXVKW] [decimal](13, 2) NULL,
	[PPRCTR] [varchar](10) NULL,
	[RSART] [varchar](1) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[MATBF] [varchar](18) NULL,
	[UMMAB] [varchar](18) NULL,
	[BUSTM] [varchar](4) NULL,
	[BUSTW] [varchar](4) NULL,
	[MENGU] [varchar](1) NULL,
	[WERTU] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[FKBER] [varchar](16) NULL,
	[DABRBZ] [varchar](10) NULL,
	[VKWRA] [decimal](13, 2) NULL,
	[DABRZ] [varchar](10) NULL,
	[XBEAU] [varchar](1) NULL,
	[LSMNG] [decimal](13, 3) NULL,
	[LSMEH] [varchar](3) NULL,
	[KZBWS] [varchar](1) NULL,
	[QINSPST] [varchar](1) NULL,
	[URZEI] [decimal](4, 0) NULL,
	[J_1BEXBASE] [decimal](13, 2) NULL,
	[MWSKZ] [varchar](2) NULL,
	[TXJCD] [varchar](15) NULL,
	[EMATN] [varchar](18) NULL,
	[J_1AGIRUPD] [varchar](1) NULL,
	[VKMWS] [varchar](2) NULL,
	[HSDAT] [varchar](10) NULL,
	[BERKZ] [varchar](1) NULL,
	[MAT_KDAUF] [varchar](10) NULL,
	[MAT_KDPOS] [decimal](6, 0) NULL,
	[MAT_PSPNR] [decimal](8, 0) NULL,
	[XWOFF] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[PRZNR] [varchar](12) NULL,
	[LLIEF] [varchar](10) NULL,
	[LSTAR] [varchar](6) NULL,
	[XOBEW] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[ZUSTD_T156M] [varchar](1) NULL,
	[SPE_GTS_STOCK_TY] [varchar](1) NULL,
	[/BEV2/ED_KZ_VER] [varchar](1) NULL,
	[/BEV2/ED_USER] [varchar](12) NULL,
	[/BEV2/ED_AEDAT] [varchar](10) NULL,
	[/BEV2/ED_AETIM] [varchar](8) NULL,
	[OINAVNW] [decimal](13, 2) NULL,
	[OICONDCOD] [varchar](2) NULL,
	[CONDI] [varchar](2) NULL,
	[ZZABLAD] [decimal](13, 3) NULL,
 CONSTRAINT [MSEG_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSEG_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSEG_OLD](
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [int] NOT NULL,
	[ZEILE] [int] NOT NULL,
	[LINE_ID] [int] NULL,
	[PARENT_ID] [int] NULL,
	[LINE_DEPTH] [int] NULL,
	[BWART] [varchar](3) NULL,
	[XAUTO] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[CHARG] [varchar](10) NULL,
	[INSMK] [varchar](1) NULL,
	[ZUSCH] [varchar](1) NULL,
	[ZUSTD] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [int] NULL,
	[KDEIN] [int] NULL,
	[PLPLA] [varchar](10) NULL,
	[SHKZG] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[BNBTR] [decimal](13, 2) NULL,
	[BUALT] [decimal](13, 2) NULL,
	[SHKUM] [varchar](1) NULL,
	[DMBUM] [decimal](13, 2) NULL,
	[BWTAR] [varchar](10) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[BPMNG] [decimal](13, 3) NULL,
	[BPRME] [varchar](3) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [int] NULL,
	[LFBJA] [int] NULL,
	[LFBNR] [varchar](10) NULL,
	[LFPOS] [int] NULL,
	[SJAHR] [int] NULL,
	[SMBLN] [varchar](10) NULL,
	[SMBLP] [int] NULL,
	[ELIKZ] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[EQUNR] [varchar](18) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[PARGB] [varchar](4) NULL,
	[PARBU] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[PROJN] [varchar](16) NULL,
	[AUFNR] [varchar](12) NULL,
	[ANLN1] [varchar](12) NULL,
	[ANLN2] [varchar](4) NULL,
	[XSKST] [varchar](1) NULL,
	[XSAUF] [varchar](1) NULL,
	[XSPRO] [varchar](1) NULL,
	[XSERG] [varchar](1) NULL,
	[GJAHR] [int] NULL,
	[XRUEM] [varchar](1) NULL,
	[XRUEJ] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [int] NULL,
	[BELUM] [varchar](10) NULL,
	[BUZUM] [int] NULL,
	[RSNUM] [int] NULL,
	[RSPOS] [int] NULL,
	[KZEAR] [varchar](1) NULL,
	[PBAMG] [decimal](13, 3) NULL,
	[KZSTR] [varchar](1) NULL,
	[UMMAT] [varchar](18) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[UMCHA] [varchar](10) NULL,
	[UMZST] [varchar](1) NULL,
	[UMZUS] [varchar](1) NULL,
	[UMBAR] [varchar](10) NULL,
	[UMSOK] [varchar](1) NULL,
	[KZBEW] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[KZZUG] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[PALAN] [decimal](11, 0) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[BESTQ] [varchar](1) NULL,
	[BWLVS] [int] NULL,
	[TBNUM] [int] NULL,
	[TBPOS] [int] NULL,
	[XBLVS] [varchar](1) NULL,
	[VSCHN] [varchar](1) NULL,
	[NSCHN] [varchar](1) NULL,
	[DYPLA] [varchar](1) NULL,
	[UBNUM] [int] NULL,
	[TBPRI] [varchar](1) NULL,
	[TANUM] [int] NULL,
	[WEANZ] [int] NULL,
	[GRUND] [int] NULL,
	[EVERS] [varchar](2) NULL,
	[EVERE] [varchar](2) NULL,
	[IMKEY] [varchar](8) NULL,
	[KSTRG] [varchar](12) NULL,
	[PAOBJNR] [int] NULL,
	[PRCTR] [varchar](10) NULL,
	[PS_PSP_PNR] [int] NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [int] NULL,
	[APLZL] [int] NULL,
	[AUFPS] [int] NULL,
	[VPTNR] [varchar](10) NULL,
	[FIPOS] [varchar](14) NULL,
	[SAKTO] [varchar](10) NULL,
	[BSTMG] [decimal](13, 3) NULL,
	[BSTME] [varchar](3) NULL,
	[XWSBR] [varchar](1) NULL,
	[EMLIF] [varchar](10) NULL,
	[EXBWR] [decimal](13, 2) NULL,
	[VKWRT] [decimal](13, 2) NULL,
	[AKTNR] [varchar](10) NULL,
	[ZEKKN] [int] NULL,
	[VFDAT] [date] NULL,
	[CUOBJ_CH] [int] NULL,
	[EXVKW] [decimal](13, 2) NULL,
	[PPRCTR] [varchar](10) NULL,
	[RSART] [varchar](1) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[MATBF] [varchar](18) NULL,
	[UMMAB] [varchar](18) NULL,
	[BUSTM] [varchar](4) NULL,
	[BUSTW] [varchar](4) NULL,
	[MENGU] [varchar](1) NULL,
	[WERTU] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[FKBER] [varchar](16) NULL,
	[DABRBZ] [date] NULL,
	[VKWRA] [decimal](13, 2) NULL,
	[DABRZ] [date] NULL,
	[XBEAU] [varchar](1) NULL,
	[LSMNG] [decimal](13, 3) NULL,
	[LSMEH] [varchar](3) NULL,
	[KZBWS] [varchar](1) NULL,
	[QINSPST] [varchar](1) NULL,
	[URZEI] [int] NULL,
	[J_1BEXBASE] [decimal](13, 2) NULL,
	[MWSKZ] [varchar](2) NULL,
	[TXJCD] [varchar](15) NULL,
	[EMATN] [varchar](18) NULL,
	[J_1AGIRUPD] [varchar](1) NULL,
	[VKMWS] [varchar](2) NULL,
	[HSDAT] [date] NULL,
	[BERKZ] [varchar](1) NULL,
	[MAT_KDAUF] [varchar](10) NULL,
	[MAT_KDPOS] [int] NULL,
	[MAT_PSPNR] [int] NULL,
	[XWOFF] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[PRZNR] [varchar](12) NULL,
	[LLIEF] [varchar](10) NULL,
	[LSTAR] [varchar](6) NULL,
	[XOBEW] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[ZUSTD_T156M] [varchar](1) NULL,
	[SPE_GTS_STOCK_TY] [varchar](1) NULL,
	[/BEV2/ED_KZ_VER] [varchar](1) NULL,
	[/BEV2/ED_USER] [varchar](12) NULL,
	[/BEV2/ED_AEDAT] [date] NULL,
	[/BEV2/ED_AETIM] [time](7) NULL,
	[OINAVNW] [decimal](13, 2) NULL,
	[OICONDCOD] [varchar](2) NULL,
	[CONDI] [varchar](2) NULL,
	[BUDAT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PA0001]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA0001](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[SEQNR] [decimal](3, 0) NULL,
	[AEDTM] [date] NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[GRPVL] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[PERSG] [varchar](1) NULL,
	[PERSK] [varchar](2) NULL,
	[VDSK1] [varchar](14) NULL,
	[GSBER] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[JUPER] [varchar](4) NULL,
	[ABKRS] [varchar](2) NULL,
	[ANSVH] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [decimal](8, 0) NULL,
	[PLANS] [decimal](8, 0) NULL,
	[STELL] [decimal](8, 0) NULL,
	[MSTBR] [varchar](8) NULL,
	[SACHA] [varchar](3) NULL,
	[SACHP] [varchar](3) NULL,
	[SACHZ] [varchar](3) NULL,
	[SNAME] [varchar](30) NULL,
	[ENAME] [varchar](40) NULL,
	[OTYPE] [varchar](2) NULL,
	[SBMOD] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[FKBER] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[SGMNT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PA0001_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA0001_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[SEQNR] [decimal](3, 0) NULL,
	[AEDTM] [date] NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[GRPVL] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[PERSG] [varchar](1) NULL,
	[PERSK] [varchar](2) NULL,
	[VDSK1] [varchar](14) NULL,
	[GSBER] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[JUPER] [varchar](4) NULL,
	[ABKRS] [varchar](2) NULL,
	[ANSVH] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [decimal](8, 0) NULL,
	[PLANS] [decimal](8, 0) NULL,
	[STELL] [decimal](8, 0) NULL,
	[MSTBR] [varchar](8) NULL,
	[SACHA] [varchar](3) NULL,
	[SACHP] [varchar](3) NULL,
	[SACHZ] [varchar](3) NULL,
	[SNAME] [varchar](30) NULL,
	[ENAME] [varchar](40) NULL,
	[OTYPE] [varchar](2) NULL,
	[SBMOD] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[FKBER] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[SGMNT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PA0002]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA0002](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[SEQNR] [decimal](3, 0) NULL,
	[AEDTM] [date] NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[GRPVL] [varchar](4) NULL,
	[INITS] [varchar](10) NULL,
	[NACHN] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NACH2] [varchar](40) NULL,
	[VORNA] [varchar](40) NULL,
	[CNAME] [varchar](80) NULL,
	[TITEL] [varchar](15) NULL,
	[TITL2] [varchar](15) NULL,
	[NAMZU] [varchar](15) NULL,
	[VORSW] [varchar](15) NULL,
	[VORS2] [varchar](15) NULL,
	[RUFNM] [varchar](40) NULL,
	[MIDNM] [varchar](40) NULL,
	[KNZNM] [decimal](2, 0) NULL,
	[ANRED] [varchar](1) NULL,
	[GESCH] [varchar](1) NULL,
	[GBDAT] [date] NULL,
	[GBLND] [varchar](3) NULL,
	[GBDEP] [varchar](3) NULL,
	[GBORT] [varchar](40) NULL,
	[NATIO] [varchar](3) NULL,
	[NATI2] [varchar](3) NULL,
	[NATI3] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[KONFE] [varchar](2) NULL,
	[FAMST] [varchar](1) NULL,
	[FAMDT] [date] NULL,
	[ANZKD] [decimal](3, 0) NULL,
	[NACON] [varchar](1) NULL,
	[PERMO] [varchar](2) NULL,
	[PERID] [varchar](20) NULL,
	[GBPAS] [date] NULL,
	[FNAMK] [varchar](40) NULL,
	[LNAMK] [varchar](40) NULL,
	[FNAMR] [varchar](40) NULL,
	[LNAMR] [varchar](40) NULL,
	[NABIK] [varchar](40) NULL,
	[NABIR] [varchar](40) NULL,
	[NICKK] [varchar](40) NULL,
	[NICKR] [varchar](40) NULL,
	[GBJHR] [decimal](4, 0) NULL,
	[GBMON] [decimal](2, 0) NULL,
	[GBTAG] [decimal](2, 0) NULL,
	[NCHMC] [varchar](25) NULL,
	[VNAMC] [varchar](25) NULL,
	[NAMZ2] [varchar](15) NULL,
	[ZZALTTAXID] [varchar](20) NULL,
	[ZZKNOWNAS] [varchar](40) NULL,
	[ZZMARISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PA0002_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA0002_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[SEQNR] [decimal](3, 0) NULL,
	[AEDTM] [date] NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[GRPVL] [varchar](4) NULL,
	[INITS] [varchar](10) NULL,
	[NACHN] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NACH2] [varchar](40) NULL,
	[VORNA] [varchar](40) NULL,
	[CNAME] [varchar](80) NULL,
	[TITEL] [varchar](15) NULL,
	[TITL2] [varchar](15) NULL,
	[NAMZU] [varchar](15) NULL,
	[VORSW] [varchar](15) NULL,
	[VORS2] [varchar](15) NULL,
	[RUFNM] [varchar](40) NULL,
	[MIDNM] [varchar](40) NULL,
	[KNZNM] [decimal](2, 0) NULL,
	[ANRED] [varchar](1) NULL,
	[GESCH] [varchar](1) NULL,
	[GBDAT] [date] NULL,
	[GBLND] [varchar](3) NULL,
	[GBDEP] [varchar](3) NULL,
	[GBORT] [varchar](40) NULL,
	[NATIO] [varchar](3) NULL,
	[NATI2] [varchar](3) NULL,
	[NATI3] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[KONFE] [varchar](2) NULL,
	[FAMST] [varchar](1) NULL,
	[FAMDT] [date] NULL,
	[ANZKD] [decimal](3, 0) NULL,
	[NACON] [varchar](1) NULL,
	[PERMO] [varchar](2) NULL,
	[PERID] [varchar](20) NULL,
	[GBPAS] [date] NULL,
	[FNAMK] [varchar](40) NULL,
	[LNAMK] [varchar](40) NULL,
	[FNAMR] [varchar](40) NULL,
	[LNAMR] [varchar](40) NULL,
	[NABIK] [varchar](40) NULL,
	[NABIR] [varchar](40) NULL,
	[NICKK] [varchar](40) NULL,
	[NICKR] [varchar](40) NULL,
	[GBJHR] [decimal](4, 0) NULL,
	[GBMON] [decimal](2, 0) NULL,
	[GBTAG] [decimal](2, 0) NULL,
	[NCHMC] [varchar](25) NULL,
	[VNAMC] [varchar](25) NULL,
	[NAMZ2] [varchar](15) NULL,
	[ZZALTTAXID] [varchar](20) NULL,
	[ZZKNOWNAS] [varchar](40) NULL,
	[ZZMARISTAT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_HEAD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_HEAD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NOT NULL,
	[MOLGA] [varchar](2) NULL,
	[MOREI] [varchar](2) NULL,
	[SCHEM] [varchar](2) NULL,
	[KZREA] [varchar](1) NULL,
	[BEREI] [varchar](1) NULL,
	[KZTKT] [varchar](1) NULL,
	[ZORT1] [varchar](59) NULL,
	[ZLAND] [varchar](3) NULL,
	[HRGIO] [varchar](5) NULL,
	[NDNST] [varchar](25) NULL,
	[KUNDE] [varchar](59) NULL,
	[DATV1] [date] NULL,
	[UHRV1] [time](7) NULL,
	[DATB1] [date] NULL,
	[UHRB1] [varchar](15) NULL,
	[DATH1] [date] NULL,
	[UHRH1] [time](7) NULL,
	[DATR1] [date] NULL,
	[UHRR1] [time](7) NULL,
	[AGRZ1] [varchar](3) NULL,
	[GRGIO] [varchar](5) NULL,
	[GRBER] [varchar](1) NULL,
	[UZKVG] [varchar](1) NULL,
	[ZUSAG] [varchar](25) NULL,
	[ENDRG] [date] NULL,
	[DEPAR] [varchar](1) NULL,
	[ARRVL] [varchar](1) NULL,
	[RETRN] [varchar](1) NULL,
	[DATES] [date] NULL,
	[TIMES] [time](7) NULL,
	[UNAME] [varchar](12) NULL,
	[REPID] [varchar](40) NULL,
	[DANTN] [decimal](10, 0) NULL,
	[FINTN] [decimal](10, 0) NULL,
	[REQUEST] [varchar](1) NULL,
	[TRAVEL_PLAN] [varchar](1) NULL,
	[EXPENSES] [varchar](1) NULL,
	[ST_TRGTG] [date] NULL,
	[ST_TRGALL] [date] NULL,
	[PERIODENART] [varchar](1) NULL,
	[DAT_REDUC1] [date] NULL,
	[DAT_REDUC2] [date] NULL,
	[DATV1_DIENST] [date] NULL,
	[UHRV1_DIENST] [time](7) NULL,
	[DATB1_DIENST] [date] NULL,
	[UHRB1_DIENST] [time](7) NULL,
	[ABORDNUNG] [decimal](10, 0) NULL,
	[ST_TRG_TYP] [varchar](1) NULL,
	[ST_WOHN_TYP] [varchar](1) NULL,
	[KEIN_REISEGELD] [varchar](1) NULL,
	[TAX_PER_DIEM] [varchar](1) NULL,
	[TAX_PD_MAN] [varchar](1) NULL,
	[TAX_OV_MAN] [varchar](1) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_PTRV_HEAD] PRIMARY KEY CLUSTERED 
(
	[HDVRS] ASC,
	[PERNR] ASC,
	[REINR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_PERIO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_PERIO](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[PDVRS] [decimal](2, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NULL,
	[PDATV] [date] NULL,
	[PUHRV] [time](7) NULL,
	[PDATB] [date] NULL,
	[PUHRB] [varchar](24) NULL,
	[DRUCK] [varchar](1) NULL,
	[ANTRG] [varchar](1) NULL,
	[ABREC] [varchar](1) NULL,
	[UEBLG] [varchar](1) NULL,
	[UEBRF] [varchar](1) NULL,
	[UEBDT] [varchar](1) NULL,
	[TLOCK] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ABRJ1] [decimal](4, 0) NULL,
	[ABRP1] [decimal](2, 0) NULL,
	[PERM1] [varchar](2) NULL,
	[ABKR1] [varchar](2) NULL,
	[BEGP1] [date] NULL,
	[ENDP1] [date] NULL,
	[ABRJ2] [decimal](4, 0) NULL,
	[ABRP2] [decimal](2, 0) NULL,
	[PERM2] [varchar](2) NULL,
	[ABKR2] [varchar](2) NULL,
	[BEGP2] [date] NULL,
	[ENDP2] [date] NULL,
	[ACCDT] [date] NULL,
	[ACCTM] [time](7) NULL,
	[RUNID] [decimal](10, 0) NULL,
	[VERPA] [varchar](1) NULL,
	[UEBKZ] [varchar](1) NULL,
	[ANUEP] [decimal](2, 0) NULL,
	[NO_MILES] [varchar](1) NULL,
	[LSTAY] [varchar](1) NULL,
	[TR_DOPP_ANZAHL] [decimal](3, 0) NULL,
	[TR_EINF_ANZAHL] [decimal](3, 0) NULL,
	[TR_ENTFERNUNG] [decimal](5, 0) NULL,
	[VU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[VU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[VU_EA_ENTFERN] [decimal](5, 0) NULL,
	[VU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[NU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[NU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[NU_EA_ENTFERN] [decimal](5, 0) NULL,
	[NU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[V_UNENTGELTLICH] [varchar](1) NULL,
	[U_UNENTGELTLICH] [varchar](1) NULL,
	[REDUC_ERGRU] [varchar](2) NULL,
	[NOT_PAID] [varchar](1) NULL,
	[WEG_ERH_MAX] [varchar](1) NULL,
	[ERH_DIENST_INT] [varchar](1) NULL,
	[ENTF_WO_DO] [varchar](1) NULL,
	[DRITTMITTEL] [varchar](1) NULL,
	[ANTRAG_GWE] [varchar](1) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_PTRV_PERIO] PRIMARY KEY CLUSTERED 
(
	[PDVRS] ASC,
	[PERIO] ASC,
	[PERNR] ASC,
	[REINR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SADD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SADD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[RECEIPTNO] [varchar](3) NOT NULL,
	[NO_BRFT] [decimal](2, 0) NULL,
	[COUNTRY] [varchar](3) NULL,
	[REGION] [varchar](5) NULL,
	[TT_COMSP] [varchar](1) NULL,
	[FROM_DATE] [date] NULL,
	[TO_DATE] [date] NULL,
	[MULTIPLI] [decimal](3, 0) NULL,
	[DESCRIPT] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[BUS_PURPO] [varchar](50) NULL,
	[BUS_REASON] [varchar](50) NULL,
	[CCOMP] [varchar](2) NULL,
	[C_DOC] [varchar](20) NULL,
	[C_TXT] [varchar](50) NULL,
	[P_CTG] [varchar](1) NULL,
	[P_PRV] [varchar](3) NULL,
	[P_DOC] [varchar](20) NULL,
	[N_STF] [varchar](3) NULL,
	[N_PTN] [varchar](3) NULL,
	[N_GST] [varchar](3) NULL,
	[ANZLU_DEC] [decimal](3, 0) NULL,
	[ANZDI_DEC] [decimal](3, 0) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[RECEIPTNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SCOS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SCOS](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[COSTSEQNO] [decimal](2, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[INTERNAL_ORDER] [varchar](12) NULL,
	[COST_OBJ] [varchar](12) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[NETWORK] [varchar](12) NULL,
	[ACTIVITY] [varchar](4) NULL,
	[SALES_ORD] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[CO_BUSPROC] [varchar](12) NULL,
	[FUNDS_CTR] [varchar](16) NULL,
	[CMMT_ITEM] [varchar](14) NULL,
	[FUND] [varchar](10) NULL,
	[ALLOC_AMOUNT] [decimal](15, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[CMMT_ITEM_LONG] [varchar](24) NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[PROJECT_EXT_ID] [varchar](24) NULL,
	[TASK_ROLE_GUID] [varchar](32) NULL,
	[TASK_ROLE_EXT_ID] [varchar](24) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[COSTSEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SHDR]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SHDR](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[SEQNO] [decimal](2, 0) NOT NULL,
	[ADDIT_AMNT] [decimal](13, 2) NULL,
	[SUM_REIMBU] [decimal](13, 2) NULL,
	[SUM_ADVANC] [decimal](13, 2) NULL,
	[SUM_PAYOUT] [decimal](13, 2) NULL,
	[SUM_PAIDCO] [decimal](13, 2) NULL,
	[TRIP_TOTAL] [decimal](13, 2) NULL,
	[PD_FOOD] [decimal](13, 2) NULL,
	[PD_HOUSING] [decimal](13, 2) NULL,
	[PD_MILEAGE] [decimal](13, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[M_TOTAL] [decimal](5, 0) NULL,
	[TRIPDUR] [decimal](4, 0) NULL,
	[CHNGDATE] [date] NULL,
	[CHNGTIME] [time](7) NULL,
	[TXF_FOOD] [decimal](13, 2) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PERIO] ASC,
	[PERNR] ASC,
	[REINR] ASC,
	[SEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SREC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SREC](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[RECEIPTNO] [varchar](3) NOT NULL,
	[SEQNO] [decimal](2, 0) NOT NULL,
	[DED_FLAG] [varchar](1) NULL,
	[PAID_COM] [varchar](1) NULL,
	[EXP_TYPE] [varchar](4) NULL,
	[REC_AMOUNT] [decimal](13, 2) NULL,
	[REC_CURR] [varchar](5) NULL,
	[REC_RATE] [decimal](9, 5) NULL,
	[LOC_AMOUNT] [decimal](13, 2) NULL,
	[LOC_CURR] [varchar](5) NULL,
	[TAX_CODE] [varchar](2) NULL,
	[REC_DATE] [date] NULL,
	[SHORTTXT] [varchar](10) NULL,
	[ABOVE_LIMIT] [varchar](1) NULL,
	[PAPER_RECEIPT] [varchar](1) NULL,
	[RECEIPT_OK] [varchar](1) NULL,
	[PAYOT] [varchar](2) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[RECEIPTNO] ASC,
	[SEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RESB]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RESB](
	[SOURCE_SYSTEM] [varchar](20) NULL,
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
	[BDTER] [varchar](10) NULL,
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
	[SBTER] [varchar](10) NULL,
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
 CONSTRAINT [RESB_IX_TMP] PRIMARY KEY CLUSTERED 
(
	[RSNUM] ASC,
	[RSPOS] ASC,
	[RSART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RESB_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RESB_OLD](
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
/****** Object:  Table [dbo].[SETHEADER]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADER](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[XDYNAMIC] [varchar](1) NULL,
	[AUTHGR] [varchar](4) NULL,
	[XUNIQ] [varchar](1) NULL,
	[RVALUE] [varchar](24) NULL,
	[CREUSER] [varchar](12) NULL,
	[CREDATE] [date] NULL,
	[CRETIME] [time](7) NULL,
	[UPDUSER] [varchar](12) NULL,
	[UPDDATE] [date] NULL,
	[UPDTIME] [time](7) NULL,
	[SAPRL] [varchar](4) NULL,
	[TABNAME] [varchar](30) NULL,
	[FIELDNAME] [varchar](30) NULL,
	[ROLLNAME] [varchar](30) NULL,
	[SET_OLANGU] [varchar](1) NULL,
	[NO_RWSHEADER] [varchar](1) NULL,
	[NO_RWSLINE] [varchar](1) NULL,
	[NO_SETLINET] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADER_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADER_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[XDYNAMIC] [varchar](1) NULL,
	[AUTHGR] [varchar](4) NULL,
	[XUNIQ] [varchar](1) NULL,
	[RVALUE] [varchar](24) NULL,
	[CREUSER] [varchar](12) NULL,
	[CREDATE] [date] NULL,
	[CRETIME] [time](7) NULL,
	[UPDUSER] [varchar](12) NULL,
	[UPDDATE] [date] NULL,
	[UPDTIME] [time](7) NULL,
	[SAPRL] [varchar](4) NULL,
	[TABNAME] [varchar](30) NULL,
	[FIELDNAME] [varchar](30) NULL,
	[ROLLNAME] [varchar](30) NULL,
	[SET_OLANGU] [varchar](1) NULL,
	[NO_RWSHEADER] [varchar](1) NULL,
	[NO_RWSLINE] [varchar](1) NULL,
	[NO_SETLINET] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADERT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADERT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LANGU] [varchar](1) NULL,
	[DESCRIPT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETHEADERT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETHEADERT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LANGU] [varchar](1) NULL,
	[DESCRIPT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETLEAF]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETLEAF](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[VALSIGN] [varchar](1) NULL,
	[VALOPTION] [varchar](2) NULL,
	[VALFROM] [varchar](24) NULL,
	[VALTO] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETLEAF_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETLEAF_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[VALSIGN] [varchar](1) NULL,
	[VALOPTION] [varchar](2) NULL,
	[VALFROM] [varchar](24) NULL,
	[VALTO] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETNODE]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETNODE](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[SUBSETCLS] [varchar](4) NULL,
	[SUBSETSCLS] [varchar](12) NULL,
	[SUBSETNAME] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETNODE_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETNODE_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[LINEID] [decimal](10, 0) NULL,
	[SUBSETCLS] [varchar](4) NULL,
	[SUBSETSCLS] [varchar](12) NULL,
	[SUBSETNAME] [varchar](24) NULL,
	[SEQNR] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKA1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKA1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[XBILK] [varchar](1) NULL,
	[SAKAN] [varchar](10) NULL,
	[BILKT] [varchar](10) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[GVTYP] [varchar](2) NULL,
	[KTOKS] [varchar](4) NULL,
	[MUSTR] [varchar](10) NULL,
	[VBUND] [varchar](6) NULL,
	[XLOEV] [varchar](1) NULL,
	[XSPEA] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[XSPEP] [varchar](1) NULL,
	[MCOD1] [varchar](25) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKA1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKA1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[XBILK] [varchar](1) NULL,
	[SAKAN] [varchar](10) NULL,
	[BILKT] [varchar](10) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[GVTYP] [varchar](2) NULL,
	[KTOKS] [varchar](4) NULL,
	[MUSTR] [varchar](10) NULL,
	[VBUND] [varchar](6) NULL,
	[XLOEV] [varchar](1) NULL,
	[XSPEA] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[XSPEP] [varchar](1) NULL,
	[MCOD1] [varchar](25) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKAT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKAT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[TXT20] [varchar](20) NULL,
	[TXT50] [varchar](50) NULL,
	[MCOD1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKAT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKAT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[TXT20] [varchar](20) NULL,
	[TXT50] [varchar](50) NULL,
	[MCOD1] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKB1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKB1](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[BUSAB] [varchar](2) NULL,
	[DATLZ] [date] NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[FDGRV] [varchar](10) NULL,
	[FDLEV] [varchar](2) NULL,
	[FIPLS] [decimal](3, 0) NULL,
	[FSTAG] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[HKTID] [varchar](5) NULL,
	[KDFSL] [varchar](4) NULL,
	[MITKZ] [varchar](1) NULL,
	[MWSKZ] [varchar](2) NULL,
	[STEXT] [varchar](50) NULL,
	[VZSKZ] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[WMETH] [varchar](2) NULL,
	[XGKON] [varchar](1) NULL,
	[XINTB] [varchar](1) NULL,
	[XKRES] [varchar](1) NULL,
	[XLOEB] [varchar](1) NULL,
	[XNKON] [varchar](1) NULL,
	[XOPVW] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[ZUAWA] [varchar](3) NULL,
	[ALTKT] [varchar](10) NULL,
	[XMITK] [varchar](1) NULL,
	[RECID] [varchar](2) NULL,
	[FIPOS] [varchar](14) NULL,
	[XMWNO] [varchar](1) NULL,
	[XSALH] [varchar](1) NULL,
	[BEWGP] [varchar](10) NULL,
	[INFKY] [varchar](8) NULL,
	[TOGRU] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKB1_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKB1_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[SAKNR] [varchar](10) NULL,
	[BEGRU] [varchar](4) NULL,
	[BUSAB] [varchar](2) NULL,
	[DATLZ] [date] NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[FDGRV] [varchar](10) NULL,
	[FDLEV] [varchar](2) NULL,
	[FIPLS] [decimal](3, 0) NULL,
	[FSTAG] [varchar](4) NULL,
	[HBKID] [varchar](5) NULL,
	[HKTID] [varchar](5) NULL,
	[KDFSL] [varchar](4) NULL,
	[MITKZ] [varchar](1) NULL,
	[MWSKZ] [varchar](2) NULL,
	[STEXT] [varchar](50) NULL,
	[VZSKZ] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[WMETH] [varchar](2) NULL,
	[XGKON] [varchar](1) NULL,
	[XINTB] [varchar](1) NULL,
	[XKRES] [varchar](1) NULL,
	[XLOEB] [varchar](1) NULL,
	[XNKON] [varchar](1) NULL,
	[XOPVW] [varchar](1) NULL,
	[XSPEB] [varchar](1) NULL,
	[ZINDT] [date] NULL,
	[ZINRT] [decimal](2, 0) NULL,
	[ZUAWA] [varchar](3) NULL,
	[ALTKT] [varchar](10) NULL,
	[XMITK] [varchar](1) NULL,
	[RECID] [varchar](2) NULL,
	[FIPOS] [varchar](14) NULL,
	[XMWNO] [varchar](1) NULL,
	[XSALH] [varchar](1) NULL,
	[BEWGP] [varchar](10) NULL,
	[INFKY] [varchar](8) NULL,
	[TOGRU] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STAS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STAS](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STASZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDVAR] [varchar](5) NULL,
	[LPSRT] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STAS_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STAS_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STASZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDVAR] [varchar](5) NULL,
	[LPSRT] [decimal](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_ZBB_SKU]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_ZBB_SKU](
	[MATERIAL] [varchar](18) NULL,
	[PRODUCT_HIERARCHY] [varchar](18) NULL,
	[CREATED_ON_DATE] [date] NULL,
	[CHANGED_ON_DATE] [date] NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[TYPE_DESCRIPTION] [varchar](40) NULL,
	[Category] [varchar](5) NULL,
	[Brand] [varchar](10) NULL,
	[Category_Description] [varchar](256) NULL,
	[Brand_Description] [varchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_ZBB_SKU_2]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_ZBB_SKU_2](
	[MATERIAL] [varchar](18) NULL,
	[PRODUCT_HIERARCHY] [varchar](18) NULL,
	[CREATED_ON_DATE] [date] NULL,
	[CHANGED_ON_DATE] [date] NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[TYPE_DESCRIPTION] [varchar](40) NULL,
	[Category] [varchar](5) NULL,
	[Brand] [varchar](10) NULL,
	[Category_Description] [varchar](256) NULL,
	[Brand_Description] [varchar](256) NULL,
	[Base_Unit] [varchar](3) NULL,
	[Net_Weight] [decimal](13, 3) NULL,
	[Weight_Unit] [varchar](3) NULL,
	[EA_Conversion] [decimal](5, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STKO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STKOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[VGKZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[CADKZ] [varchar](1) NULL,
	[LABOR] [varchar](3) NULL,
	[LTXSP] [varchar](1) NULL,
	[STKTX] [varchar](40) NULL,
	[STLST] [decimal](2, 0) NULL,
	[WRKAN] [varchar](4) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[ALEKZ] [varchar](1) NULL,
	[GUIDX] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STKO_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STKO_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLAL] [varchar](2) NULL,
	[STKOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[VGKZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[CADKZ] [varchar](1) NULL,
	[LABOR] [varchar](3) NULL,
	[LTXSP] [varchar](1) NULL,
	[STKTX] [varchar](40) NULL,
	[STLST] [decimal](2, 0) NULL,
	[WRKAN] [varchar](4) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[ALEKZ] [varchar](1) NULL,
	[GUIDX] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STPO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STPO](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[VGKNT] [decimal](8, 0) NULL,
	[VGPZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[IDNRK] [varchar](18) NULL,
	[PSWRK] [varchar](4) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[SORTF] [varchar](10) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[FMENG] [varchar](1) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[SCHGT] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[RVREL] [varchar](1) NULL,
	[SANFE] [varchar](1) NULL,
	[SANIN] [varchar](1) NULL,
	[SANKA] [varchar](1) NULL,
	[SANKO] [varchar](1) NULL,
	[SANVS] [varchar](1) NULL,
	[STKKZ] [varchar](1) NULL,
	[REKRI] [varchar](1) NULL,
	[REKRS] [varchar](1) NULL,
	[CADPO] [varchar](1) NULL,
	[NFMAT] [varchar](18) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[VERTI] [varchar](4) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EKGRP] [varchar](3) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[PREIS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[WAERS] [varchar](5) NULL,
	[SAKTO] [varchar](10) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[RFORM] [varchar](2) NULL,
	[UPSKZ] [varchar](1) NULL,
	[VALKZ] [varchar](1) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[OBJTY] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKVR] [varchar](2) NULL,
	[DOKTL] [varchar](3) NULL,
	[CSSTR] [decimal](5, 2) NULL,
	[CLASS] [varchar](18) NULL,
	[KLART] [varchar](3) NULL,
	[POTPR] [varchar](1) NULL,
	[AWAKZ] [varchar](1) NULL,
	[INSKZ] [varchar](1) NULL,
	[VCEKZ] [varchar](1) NULL,
	[VSTKZ] [varchar](1) NULL,
	[VACKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[CLOBK] [varchar](1) NULL,
	[CLMUL] [varchar](1) NULL,
	[CLALT] [varchar](1) NULL,
	[CVIEW] [varchar](10) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[LGORT] [varchar](4) NULL,
	[KZKUP] [varchar](1) NULL,
	[INTRM] [varchar](18) NULL,
	[TPEKZ] [varchar](1) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[DSPST] [varchar](2) NULL,
	[ALPST] [varchar](1) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPGR] [varchar](2) NULL,
	[KZNFP] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFEAG] [varchar](2) NULL,
	[KNDVB] [varchar](1) NULL,
	[KNDBZ] [varchar](1) NULL,
	[KSTTY] [varchar](1) NULL,
	[KSTNR] [varchar](8) NULL,
	[KSTKN] [decimal](8, 0) NULL,
	[KSTPZ] [decimal](8, 0) NULL,
	[CLSZU] [decimal](8, 0) NULL,
	[KZCLB] [varchar](1) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[PRVBE] [varchar](10) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDHIS] [decimal](5, 0) NULL,
	[IDVAR] [varchar](5) NULL,
	[ALEKZ] [varchar](1) NULL,
	[ITMID] [varchar](8) NULL,
	[GUID] [varchar](22) NULL,
	[ITSOB] [varchar](2) NULL,
	[RFPNT] [varchar](20) NULL,
	[GUIDX] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STPO_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STPO_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLNR] [varchar](8) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[VGKNT] [decimal](8, 0) NULL,
	[VGPZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[IDNRK] [varchar](18) NULL,
	[PSWRK] [varchar](4) NULL,
	[POSTP] [varchar](1) NULL,
	[POSNR] [varchar](4) NULL,
	[SORTF] [varchar](10) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[FMENG] [varchar](1) NULL,
	[AUSCH] [decimal](5, 2) NULL,
	[AVOAU] [decimal](5, 2) NULL,
	[NETAU] [varchar](1) NULL,
	[SCHGT] [varchar](1) NULL,
	[BEIKZ] [varchar](1) NULL,
	[ERSKZ] [varchar](1) NULL,
	[RVREL] [varchar](1) NULL,
	[SANFE] [varchar](1) NULL,
	[SANIN] [varchar](1) NULL,
	[SANKA] [varchar](1) NULL,
	[SANKO] [varchar](1) NULL,
	[SANVS] [varchar](1) NULL,
	[STKKZ] [varchar](1) NULL,
	[REKRI] [varchar](1) NULL,
	[REKRS] [varchar](1) NULL,
	[CADPO] [varchar](1) NULL,
	[NFMAT] [varchar](18) NULL,
	[NLFZT] [decimal](3, 0) NULL,
	[VERTI] [varchar](4) NULL,
	[ALPOS] [varchar](1) NULL,
	[EWAHR] [decimal](3, 0) NULL,
	[EKGRP] [varchar](3) NULL,
	[LIFZT] [decimal](3, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[PREIS] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[WAERS] [varchar](5) NULL,
	[SAKTO] [varchar](10) NULL,
	[ROANZ] [decimal](13, 3) NULL,
	[ROMS1] [decimal](13, 3) NULL,
	[ROMS2] [decimal](13, 3) NULL,
	[ROMS3] [decimal](13, 3) NULL,
	[ROMEI] [varchar](3) NULL,
	[ROMEN] [decimal](13, 3) NULL,
	[RFORM] [varchar](2) NULL,
	[UPSKZ] [varchar](1) NULL,
	[VALKZ] [varchar](1) NULL,
	[LTXSP] [varchar](1) NULL,
	[POTX1] [varchar](40) NULL,
	[POTX2] [varchar](40) NULL,
	[OBJTY] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[DOKAR] [varchar](3) NULL,
	[DOKNR] [varchar](25) NULL,
	[DOKVR] [varchar](2) NULL,
	[DOKTL] [varchar](3) NULL,
	[CSSTR] [decimal](5, 2) NULL,
	[CLASS] [varchar](18) NULL,
	[KLART] [varchar](3) NULL,
	[POTPR] [varchar](1) NULL,
	[AWAKZ] [varchar](1) NULL,
	[INSKZ] [varchar](1) NULL,
	[VCEKZ] [varchar](1) NULL,
	[VSTKZ] [varchar](1) NULL,
	[VACKZ] [varchar](1) NULL,
	[EKORG] [varchar](4) NULL,
	[CLOBK] [varchar](1) NULL,
	[CLMUL] [varchar](1) NULL,
	[CLALT] [varchar](1) NULL,
	[CVIEW] [varchar](10) NULL,
	[KNOBJ] [decimal](18, 0) NULL,
	[LGORT] [varchar](4) NULL,
	[KZKUP] [varchar](1) NULL,
	[INTRM] [varchar](18) NULL,
	[TPEKZ] [varchar](1) NULL,
	[STVKN] [decimal](8, 0) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[DSPST] [varchar](2) NULL,
	[ALPST] [varchar](1) NULL,
	[ALPRF] [decimal](2, 0) NULL,
	[ALPGR] [varchar](2) NULL,
	[KZNFP] [varchar](1) NULL,
	[NFGRP] [varchar](2) NULL,
	[NFEAG] [varchar](2) NULL,
	[KNDVB] [varchar](1) NULL,
	[KNDBZ] [varchar](1) NULL,
	[KSTTY] [varchar](1) NULL,
	[KSTNR] [varchar](8) NULL,
	[KSTKN] [decimal](8, 0) NULL,
	[KSTPZ] [decimal](8, 0) NULL,
	[CLSZU] [decimal](8, 0) NULL,
	[KZCLB] [varchar](1) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[PRVBE] [varchar](10) NULL,
	[NLFZV] [decimal](3, 0) NULL,
	[NLFMV] [varchar](3) NULL,
	[IDPOS] [varchar](20) NULL,
	[IDHIS] [decimal](5, 0) NULL,
	[IDVAR] [varchar](5) NULL,
	[ALEKZ] [varchar](1) NULL,
	[ITMID] [varchar](8) NULL,
	[GUID] [varchar](22) NULL,
	[ITSOB] [varchar](2) NULL,
	[RFPNT] [varchar](20) NULL,
	[GUIDX] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[BUTXT] [varchar](25) NULL,
	[ORT01] [varchar](25) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[WAABW] [decimal](2, 0) NULL,
	[PERIV] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[RCOMP] [varchar](6) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[XFMCO] [varchar](1) NULL,
	[XFMCB] [varchar](1) NULL,
	[XFMCA] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[FMHRDATE] [date] NULL,
	[BUVAR] [varchar](1) NULL,
	[FDBUK] [varchar](4) NULL,
	[XFDIS] [varchar](1) NULL,
	[XVALV] [varchar](1) NULL,
	[XSKFN] [varchar](1) NULL,
	[KKBER] [varchar](4) NULL,
	[XMWSN] [varchar](1) NULL,
	[MREGL] [varchar](4) NULL,
	[XGSBE] [varchar](1) NULL,
	[XGJRV] [varchar](1) NULL,
	[XKDFT] [varchar](1) NULL,
	[XPROD] [varchar](1) NULL,
	[XEINK] [varchar](1) NULL,
	[XJVAA] [varchar](1) NULL,
	[XVVWA] [varchar](1) NULL,
	[XSLTA] [varchar](1) NULL,
	[XFDMM] [varchar](1) NULL,
	[XFDSD] [varchar](1) NULL,
	[XEXTB] [varchar](1) NULL,
	[EBUKR] [varchar](4) NULL,
	[KTOP2] [varchar](4) NULL,
	[UMKRS] [varchar](4) NULL,
	[BUKRS_GLOB] [varchar](6) NULL,
	[FSTVA] [varchar](4) NULL,
	[OPVAR] [varchar](4) NULL,
	[XCOVR] [varchar](1) NULL,
	[TXKRS] [varchar](1) NULL,
	[WFVAR] [varchar](4) NULL,
	[XBBBF] [varchar](1) NULL,
	[XBBBE] [varchar](1) NULL,
	[XBBBA] [varchar](1) NULL,
	[XBBKO] [varchar](1) NULL,
	[XSTDT] [varchar](1) NULL,
	[MWSKV] [varchar](2) NULL,
	[MWSKA] [varchar](2) NULL,
	[IMPDA] [varchar](1) NULL,
	[XNEGP] [varchar](1) NULL,
	[XKKBI] [varchar](1) NULL,
	[WT_NEWWT] [varchar](1) NULL,
	[PP_PDATE] [varchar](1) NULL,
	[INFMT] [varchar](4) NULL,
	[FSTVARE] [varchar](4) NULL,
	[KOPIM] [varchar](1) NULL,
	[DKWEG] [varchar](1) NULL,
	[OFFSACCT] [decimal](1, 0) NULL,
	[BAPOVAR] [varchar](2) NULL,
	[XCOS] [varchar](1) NULL,
	[XCESSION] [varchar](1) NULL,
	[XSPLT] [varchar](1) NULL,
	[SURCCM] [varchar](1) NULL,
	[DTPROV] [varchar](2) NULL,
	[DTAMTC] [varchar](2) NULL,
	[DTTAXC] [varchar](2) NULL,
	[DTTDSP] [varchar](2) NULL,
	[DTAXR] [varchar](4) NULL,
	[XVATDATE] [varchar](1) NULL,
	[FM_DERIVE_ACC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[BUTXT] [varchar](25) NULL,
	[ORT01] [varchar](25) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[WAABW] [decimal](2, 0) NULL,
	[PERIV] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[RCOMP] [varchar](6) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[XFMCO] [varchar](1) NULL,
	[XFMCB] [varchar](1) NULL,
	[XFMCA] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[FMHRDATE] [date] NULL,
	[BUVAR] [varchar](1) NULL,
	[FDBUK] [varchar](4) NULL,
	[XFDIS] [varchar](1) NULL,
	[XVALV] [varchar](1) NULL,
	[XSKFN] [varchar](1) NULL,
	[KKBER] [varchar](4) NULL,
	[XMWSN] [varchar](1) NULL,
	[MREGL] [varchar](4) NULL,
	[XGSBE] [varchar](1) NULL,
	[XGJRV] [varchar](1) NULL,
	[XKDFT] [varchar](1) NULL,
	[XPROD] [varchar](1) NULL,
	[XEINK] [varchar](1) NULL,
	[XJVAA] [varchar](1) NULL,
	[XVVWA] [varchar](1) NULL,
	[XSLTA] [varchar](1) NULL,
	[XFDMM] [varchar](1) NULL,
	[XFDSD] [varchar](1) NULL,
	[XEXTB] [varchar](1) NULL,
	[EBUKR] [varchar](4) NULL,
	[KTOP2] [varchar](4) NULL,
	[UMKRS] [varchar](4) NULL,
	[BUKRS_GLOB] [varchar](6) NULL,
	[FSTVA] [varchar](4) NULL,
	[OPVAR] [varchar](4) NULL,
	[XCOVR] [varchar](1) NULL,
	[TXKRS] [varchar](1) NULL,
	[WFVAR] [varchar](4) NULL,
	[XBBBF] [varchar](1) NULL,
	[XBBBE] [varchar](1) NULL,
	[XBBBA] [varchar](1) NULL,
	[XBBKO] [varchar](1) NULL,
	[XSTDT] [varchar](1) NULL,
	[MWSKV] [varchar](2) NULL,
	[MWSKA] [varchar](2) NULL,
	[IMPDA] [varchar](1) NULL,
	[XNEGP] [varchar](1) NULL,
	[XKKBI] [varchar](1) NULL,
	[WT_NEWWT] [varchar](1) NULL,
	[PP_PDATE] [varchar](1) NULL,
	[INFMT] [varchar](4) NULL,
	[FSTVARE] [varchar](4) NULL,
	[KOPIM] [varchar](1) NULL,
	[DKWEG] [varchar](1) NULL,
	[OFFSACCT] [decimal](1, 0) NULL,
	[BAPOVAR] [varchar](2) NULL,
	[XCOS] [varchar](1) NULL,
	[XCESSION] [varchar](1) NULL,
	[XSPLT] [varchar](1) NULL,
	[SURCCM] [varchar](1) NULL,
	[DTPROV] [varchar](2) NULL,
	[DTAMTC] [varchar](2) NULL,
	[DTTAXC] [varchar](2) NULL,
	[DTTDSP] [varchar](2) NULL,
	[DTAXR] [varchar](4) NULL,
	[XVATDATE] [varchar](1) NULL,
	[FM_DERIVE_ACC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001W]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001W](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WERKS] [varchar](4) NULL,
	[NAME1] [varchar](30) NULL,
	[BWKEY] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[FABKL] [varchar](2) NULL,
	[NAME2] [varchar](30) NULL,
	[STRAS] [varchar](30) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[ORT01] [varchar](25) NULL,
	[EKORG] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[CHAZV] [varchar](1) NULL,
	[KKOWK] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[BEDPL] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[REGIO] [varchar](3) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[ADRNR] [varchar](10) NULL,
	[IWERK] [varchar](4) NULL,
	[TXJCD] [varchar](15) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[SPRAS] [varchar](1) NULL,
	[WKSOP] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[CHAZV_OLD] [varchar](1) NULL,
	[VLFKZ] [varchar](1) NULL,
	[BZIRK] [varchar](6) NULL,
	[ZONE1] [varchar](10) NULL,
	[TAXIW] [varchar](1) NULL,
	[BZQHL] [varchar](1) NULL,
	[LET01] [decimal](3, 0) NULL,
	[LET02] [decimal](3, 0) NULL,
	[LET03] [decimal](3, 0) NULL,
	[TXNAM_MA1] [varchar](16) NULL,
	[TXNAM_MA2] [varchar](16) NULL,
	[TXNAM_MA3] [varchar](16) NULL,
	[BETOL] [decimal](3, 0) NULL,
	[J_1BBRANCH] [varchar](4) NULL,
	[VTBFI] [varchar](2) NULL,
	[FPRFW] [varchar](3) NULL,
	[ACHVM] [varchar](1) NULL,
	[DVSART] [varchar](1) NULL,
	[NODETYPE] [varchar](3) NULL,
	[NSCHEMA] [varchar](4) NULL,
	[PKOSA] [varchar](1) NULL,
	[MISCH] [varchar](1) NULL,
	[MGVUPD] [varchar](1) NULL,
	[VSTEL] [varchar](4) NULL,
	[MGVLAUPD] [varchar](1) NULL,
	[MGVLAREVAL] [varchar](1) NULL,
	[SOURCING] [varchar](1) NULL,
	[OILIVAL] [varchar](1) NULL,
	[OIHVTYPE] [varchar](1) NULL,
	[OIHCREDIPI] [varchar](1) NULL,
	[STORETYPE] [varchar](1) NULL,
	[DEP_STORE] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T001W_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T001W_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WERKS] [varchar](4) NULL,
	[NAME1] [varchar](30) NULL,
	[BWKEY] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[FABKL] [varchar](2) NULL,
	[NAME2] [varchar](30) NULL,
	[STRAS] [varchar](30) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[ORT01] [varchar](25) NULL,
	[EKORG] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[CHAZV] [varchar](1) NULL,
	[KKOWK] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[BEDPL] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[REGIO] [varchar](3) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[ADRNR] [varchar](10) NULL,
	[IWERK] [varchar](4) NULL,
	[TXJCD] [varchar](15) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[SPRAS] [varchar](1) NULL,
	[WKSOP] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[CHAZV_OLD] [varchar](1) NULL,
	[VLFKZ] [varchar](1) NULL,
	[BZIRK] [varchar](6) NULL,
	[ZONE1] [varchar](10) NULL,
	[TAXIW] [varchar](1) NULL,
	[BZQHL] [varchar](1) NULL,
	[LET01] [decimal](3, 0) NULL,
	[LET02] [decimal](3, 0) NULL,
	[LET03] [decimal](3, 0) NULL,
	[TXNAM_MA1] [varchar](16) NULL,
	[TXNAM_MA2] [varchar](16) NULL,
	[TXNAM_MA3] [varchar](16) NULL,
	[BETOL] [decimal](3, 0) NULL,
	[J_1BBRANCH] [varchar](4) NULL,
	[VTBFI] [varchar](2) NULL,
	[FPRFW] [varchar](3) NULL,
	[ACHVM] [varchar](1) NULL,
	[DVSART] [varchar](1) NULL,
	[NODETYPE] [varchar](3) NULL,
	[NSCHEMA] [varchar](4) NULL,
	[PKOSA] [varchar](1) NULL,
	[MISCH] [varchar](1) NULL,
	[MGVUPD] [varchar](1) NULL,
	[VSTEL] [varchar](4) NULL,
	[MGVLAUPD] [varchar](1) NULL,
	[MGVLAREVAL] [varchar](1) NULL,
	[SOURCING] [varchar](1) NULL,
	[OILIVAL] [varchar](1) NULL,
	[OIHVTYPE] [varchar](1) NULL,
	[OIHCREDIPI] [varchar](1) NULL,
	[STORETYPE] [varchar](1) NULL,
	[DEP_STORE] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T005T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T005T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[LANDX] [varchar](15) NULL,
	[NATIO] [varchar](15) NULL,
	[LANDX50] [varchar](50) NULL,
	[NATIO50] [varchar](50) NULL,
	[PRQ_SPREGT] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T005T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T005T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[LANDX] [varchar](15) NULL,
	[NATIO] [varchar](15) NULL,
	[LANDX50] [varchar](50) NULL,
	[NATIO50] [varchar](50) NULL,
	[PRQ_SPREGT] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T005U]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T005U](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T005U_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T005U_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[BLAND] [varchar](3) NULL,
	[BEZEI] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T006]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T006](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MSEHI] [varchar](3) NULL,
	[KZEX3] [varchar](1) NULL,
	[KZEX6] [varchar](1) NULL,
	[ANDEC] [int] NULL,
	[KZKEH] [varchar](1) NULL,
	[KZWOB] [varchar](1) NULL,
	[KZ1EH] [varchar](1) NULL,
	[KZ2EH] [varchar](1) NULL,
	[DIMID] [varchar](6) NULL,
	[ZAEHL] [int] NULL,
	[NENNR] [int] NULL,
	[EXP10] [int] NULL,
	[ADDKO] [decimal](9, 6) NULL,
	[EXPON] [int] NULL,
	[DECAN] [int] NULL,
	[ISOCODE] [varchar](3) NULL,
	[PRIMARY] [varchar](1) NULL,
	[TEMP_VALUE] [float] NULL,
	[TEMP_UNIT] [varchar](3) NULL,
	[FAMUNIT] [varchar](1) NULL,
	[PRESS_VAL] [float] NULL,
	[PRESS_UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T006_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T006_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[MSEHI] [varchar](3) NULL,
	[KZEX3] [varchar](1) NULL,
	[KZEX6] [varchar](1) NULL,
	[ANDEC] [int] NULL,
	[KZKEH] [varchar](1) NULL,
	[KZWOB] [varchar](1) NULL,
	[KZ1EH] [varchar](1) NULL,
	[KZ2EH] [varchar](1) NULL,
	[DIMID] [varchar](6) NULL,
	[ZAEHL] [int] NULL,
	[NENNR] [int] NULL,
	[EXP10] [int] NULL,
	[ADDKO] [decimal](9, 6) NULL,
	[EXPON] [int] NULL,
	[DECAN] [int] NULL,
	[ISOCODE] [varchar](3) NULL,
	[PRIMARY] [varchar](1) NULL,
	[TEMP_VALUE] [float] NULL,
	[TEMP_UNIT] [varchar](3) NULL,
	[FAMUNIT] [varchar](1) NULL,
	[PRESS_VAL] [float] NULL,
	[PRESS_UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T023T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T023T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[WGBEZ] [varchar](20) NULL,
	[WGBEZ60] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T023T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T023T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MATKL] [varchar](9) NULL,
	[WGBEZ] [varchar](20) NULL,
	[WGBEZ60] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKGRP] [varchar](3) NULL,
	[EKNAM] [varchar](18) NULL,
	[EKTEL] [varchar](12) NULL,
	[LDEST] [varchar](4) NULL,
	[TELFX] [varchar](31) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[SMTP_ADDR] [varchar](241) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKGRP] [varchar](3) NULL,
	[EKNAM] [varchar](18) NULL,
	[EKTEL] [varchar](12) NULL,
	[LDEST] [varchar](4) NULL,
	[TELFX] [varchar](31) NULL,
	[TEL_NUMBER] [varchar](30) NULL,
	[TEL_EXTENS] [varchar](10) NULL,
	[SMTP_ADDR] [varchar](241) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024E]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024E](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKOTX] [varchar](20) NULL,
	[BUKRS] [varchar](4) NULL,
	[TXADR] [varchar](70) NULL,
	[TXKOP] [varchar](70) NULL,
	[TXFUS] [varchar](70) NULL,
	[TXGRU] [varchar](70) NULL,
	[KALSE] [varchar](4) NULL,
	[MKALS] [varchar](6) NULL,
	[BPEFF] [varchar](1) NULL,
	[BUKRS_NTR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T024E_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T024E_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKOTX] [varchar](20) NULL,
	[BUKRS] [varchar](4) NULL,
	[TXADR] [varchar](70) NULL,
	[TXKOP] [varchar](70) NULL,
	[TXFUS] [varchar](70) NULL,
	[TXGRU] [varchar](70) NULL,
	[KALSE] [varchar](4) NULL,
	[MKALS] [varchar](6) NULL,
	[BPEFF] [varchar](1) NULL,
	[BUKRS_NTR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T077X]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T077X](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOKD] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T077X_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T077X_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOKD] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T134T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T134T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T134T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T134T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[MTART] [varchar](4) NULL,
	[MTBEZ] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T151T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T151T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[KTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T151T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T151T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KDGRP] [varchar](2) NULL,
	[KTEXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[PRODH] [varchar](18) NULL,
	[STUFE] [decimal](1, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRODH] [varchar](18) NULL,
	[VTEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T179T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T179T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRODH] [varchar](18) NULL,
	[VTEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T500W]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T500W](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BEGDA] [date] NULL,
	[ENDDA] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T500W_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T500W_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[BEGDA] [date] NULL,
	[ENDDA] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T513S]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T513S](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[STELL] [decimal](8, 0) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[STLTX] [varchar](25) NULL,
	[MAINT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T513S_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T513S_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[STELL] [decimal](8, 0) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[STLTX] [varchar](25) NULL,
	[MAINT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T528T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T528T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[OTYPE] [varchar](2) NULL,
	[PLANS] [decimal](8, 0) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[PLSTX] [varchar](25) NULL,
	[MAINT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T528T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T528T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[OTYPE] [varchar](2) NULL,
	[PLANS] [decimal](8, 0) NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[PLSTX] [varchar](25) NULL,
	[MAINT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB039A]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB039A](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[TYPE] [varchar](6) NULL,
	[CATEGORY] [varchar](6) NULL,
	[XPROPOSE] [varchar](1) NULL,
	[XPERSON] [varchar](1) NULL,
	[XORGANISATION] [varchar](1) NULL,
	[XGROUP] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB039A_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB039A_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CLIENT] [varchar](3) NULL,
	[TYPE] [varchar](6) NULL,
	[CATEGORY] [varchar](6) NULL,
	[XPROPOSE] [varchar](1) NULL,
	[XPERSON] [varchar](1) NULL,
	[XORGANISATION] [varchar](1) NULL,
	[XGROUP] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURC](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[ISOCD] [varchar](3) NULL,
	[ALTWR] [varchar](3) NULL,
	[GDATU] [date] NULL,
	[XPRIMARY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURC_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURC_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[ISOCD] [varchar](3) NULL,
	[ALTWR] [varchar](3) NULL,
	[GDATU] [date] NULL,
	[XPRIMARY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURR]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURR](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NULL,
	[FCURR] [varchar](5) NULL,
	[TCURR] [varchar](5) NULL,
	[GDATU] [varchar](8) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURR_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURR_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KURST] [varchar](4) NULL,
	[FCURR] [varchar](5) NULL,
	[TCURR] [varchar](5) NULL,
	[GDATU] [varchar](8) NULL,
	[UKURS] [decimal](9, 5) NULL,
	[FFACT] [decimal](9, 0) NULL,
	[TFACT] [decimal](9, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURT]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURT](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[LTEXT] [varchar](40) NULL,
	[KTEXT] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURT_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURT_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[LTEXT] [varchar](40) NULL,
	[KTEXT] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURX]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURX](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CURRKEY] [varchar](5) NULL,
	[CURRDEC] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TCURX_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCURX_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[CURRKEY] [varchar](5) NULL,
	[CURRDEC] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP](
	[last_execution_time] [datetime2](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TEST]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST](
	[MANDT] [varchar](3) NULL,
	[WERKS] [varchar](4) NOT NULL,
	[NAME1] [varchar](30) NULL,
	[BWKEY] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[FABKL] [varchar](2) NULL,
	[NAME2] [varchar](30) NULL,
	[STRAS] [varchar](30) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[ORT01] [varchar](25) NULL,
	[EKORG] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[CHAZV] [varchar](1) NULL,
	[KKOWK] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[BEDPL] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[REGIO] [varchar](3) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[ADRNR] [varchar](10) NULL,
	[IWERK] [varchar](4) NULL,
	[TXJCD] [varchar](15) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[SPRAS] [varchar](1) NULL,
	[WKSOP] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[CHAZV_OLD] [varchar](1) NULL,
	[VLFKZ] [varchar](1) NULL,
	[BZIRK] [varchar](6) NULL,
	[ZONE1] [varchar](10) NULL,
	[TAXIW] [varchar](1) NULL,
	[BZQHL] [varchar](1) NULL,
	[LET01] [decimal](3, 0) NULL,
	[LET02] [decimal](3, 0) NULL,
	[LET03] [decimal](3, 0) NULL,
	[TXNAM_MA1] [varchar](16) NULL,
	[TXNAM_MA2] [varchar](16) NULL,
	[TXNAM_MA3] [varchar](16) NULL,
	[BETOL] [decimal](3, 0) NULL,
	[J_1BBRANCH] [varchar](4) NULL,
	[VTBFI] [varchar](2) NULL,
	[FPRFW] [varchar](3) NULL,
	[ACHVM] [varchar](1) NULL,
	[DVSART] [varchar](1) NULL,
	[NODETYPE] [varchar](3) NULL,
	[NSCHEMA] [varchar](4) NULL,
	[PKOSA] [varchar](1) NULL,
	[MISCH] [varchar](1) NULL,
	[MGVUPD] [varchar](1) NULL,
	[VSTEL] [varchar](4) NULL,
	[MGVLAUPD] [varchar](1) NULL,
	[MGVLAREVAL] [varchar](1) NULL,
	[SOURCING] [varchar](1) NULL,
	[OILIVAL] [varchar](1) NULL,
	[OIHVTYPE] [varchar](1) NULL,
	[OIHCREDIPI] [varchar](1) NULL,
	[STORETYPE] [varchar](1) NULL,
	[DEP_STORE] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_123]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_123](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](15) NULL,
	[CITY] [varchar](9) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](9) NULL,
	[COUNTRY] [varchar](2) NULL,
	[Country Name] [varchar](6) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [int] NULL,
	[Fiscal Period] [varchar](6) NULL,
	[Fiscal week] [varchar](6) NULL,
	[Date (Each component)] [varchar](8) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](9) NULL,
	[Production Order] [int] NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](21) NULL,
	[CATEGORY] [int] NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [float] NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [int] NULL,
	[Material Description] [varchar](19) NULL,
	[Overweight %] [varchar](2) NULL,
	[Moisture %] [varchar](2) NULL,
	[Waste %] [varchar](4) NULL,
	[Material Group (finished product)] [varchar](4) NULL,
	[Material Group Description] [varchar](4) NULL,
	[Good Receipts 0 Actuals] [decimal](10, 3) NULL,
	[UNIT] [varchar](2) NULL,
	[Material Group (component)] [varchar](7) NULL,
	[Material Group Description (component)] [varchar](20) NULL,
	[Alternate Group] [decimal](10, 3) NULL,
	[Overweight % for Component Material] [varchar](2) NULL,
	[Moisture % for Component Material] [varchar](2) NULL,
	[Waste % for Component Material] [varchar](2) NULL,
	[Component Material] [varchar](10) NULL,
	[Component Material Description] [varchar](23) NULL,
	[GI Qty 0 Actuals] [decimal](10, 3) NULL,
	[Unit_1] [varchar](2) NULL,
	[GI Val 0 Actuals LC] [decimal](10, 3) NULL,
	[Local Currency] [varchar](3) NULL,
	[GI VAL 0 Actuals USD] [decimal](10, 3) NULL,
	[USD] [varchar](3) NULL,
	[GI Qty 0 Standard] [decimal](10, 3) NULL,
	[Unit_2] [varchar](2) NULL,
	[GI Val 0 Standard LC] [decimal](10, 3) NULL,
	[Local Currency_1] [varchar](3) NULL,
	[GI Val 0 Standard USD] [decimal](10, 3) NULL,
	[USD_1] [varchar](3) NULL,
	[GI Val 0 Frozen LC] [decimal](10, 3) NULL,
	[FIELD55] [varchar](3) NULL,
	[GI Val 0 Frozen USD] [decimal](10, 3) NULL,
	[USD_2] [varchar](3) NULL,
	[Quantity  (or GI Qty 0 Ideal)] [decimal](10, 3) NULL,
	[Unit_3] [varchar](2) NULL,
	[GI Val 0 Ideal LC] [decimal](10, 3) NULL,
	[Local_Currency_2] [varchar](3) NULL,
	[GI Val 0 Ideal USD] [decimal](10, 3) NULL,
	[USD_3] [varchar](3) NULL,
	[Standard Vs Actual in units] [decimal](10, 3) NULL,
	[Unit_4] [varchar](2) NULL,
	[Standard Vs Actual in LC] [decimal](10, 3) NULL,
	[Local Currency_2] [varchar](3) NULL,
	[Standard Vs Actual in USD] [decimal](10, 3) NULL,
	[USD_4] [varchar](3) NULL,
	[Ideal Vs Actual in Units] [decimal](10, 3) NULL,
	[Unit_5] [varchar](2) NULL,
	[Ideal vs Actual in LC] [decimal](10, 3) NULL,
	[Local Currency_3] [varchar](3) NULL,
	[Ideal vs Actual USD] [decimal](10, 3) NULL,
	[USD_5] [varchar](3) NULL,
	[Standard Vs Actual %] [varchar](2) NULL,
	[% Ideal Vs Actual] [varchar](2) NULL,
	[C. Scrap] [decimal](10, 3) NULL,
	[GI Qty 0  Frozen] [int] NULL,
	[Frozen Vs Actual %] [int] NULL,
	[Frozen Vs Actual in Units] [int] NULL,
	[Frozen Vs Actual in LC] [int] NULL,
	[Frozen Vs Actual in USD] [int] NULL,
	[Date Time Stamp of data the extraction] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Calcs1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Calcs1](
	[plant1] [int] NULL,
	[Plant Description] [varchar](15) NULL,
	[city1] [varchar](9) NULL,
	[region1] [varchar](3) NULL,
	[Region Description] [varchar](9) NULL,
	[country1] [varchar](2) NULL,
	[Country Name] [varchar](6) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [int] NULL,
	[Fiscal Period] [varchar](6) NULL,
	[Fiscal week] [varchar](6) NULL,
	[Date (Each component)] [varchar](8) NULL,
	[shift1] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](9) NULL,
	[Production Order] [int] NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](21) NULL,
	[category1] [int] NULL,
	[Category Description] [varchar](4) NULL,
	[brand1] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[type1] [float] NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [int] NULL,
	[Material Description] [varchar](19) NULL,
	[Overweight %] [varchar](2) NULL,
	[Moisture %] [varchar](2) NULL,
	[Waste %] [varchar](4) NULL,
	[Material Group (finished product)] [varchar](4) NULL,
	[Material Group Description] [varchar](4) NULL,
	[Good Receipts 0 Actuals] [decimal](10, 3) NULL,
	[Component Material] [varchar](10) NULL,
	[Component Material Description] [varchar](23) NULL,
	[GI Qty 0 Actuals] [decimal](10, 3) NULL,
	[GI Val 0 Actuals LC] [decimal](10, 3) NULL,
	[GI VAL 0 Actuals USD] [decimal](10, 3) NULL,
	[GI Qty 0 Standard] [decimal](10, 3) NULL,
	[Unit] [varchar](2) NULL,
	[GI Val 0 Standard LC] [decimal](10, 3) NULL,
	[GI Val 0 Standard USD] [decimal](10, 3) NULL,
	[GI Val 0 Frozen LC] [decimal](10, 3) NULL,
	[GI Val 0 Frozen USD] [decimal](10, 3) NULL,
	[GI Qty 0 Ideal] [decimal](10, 3) NULL,
	[GI Val 0 Ideal LC] [decimal](10, 3) NULL,
	[GI Val 0 Ideal USD] [decimal](10, 3) NULL,
	[Standard Vs Actual in units] [decimal](10, 3) NULL,
	[Standard Vs Actual in LC] [decimal](10, 3) NULL,
	[Standard Vs Actual in USD] [decimal](10, 3) NULL,
	[Ideal Vs Actual in Units] [decimal](10, 3) NULL,
	[Ideal vs Actual in LC] [decimal](10, 3) NULL,
	[Ideal vs Actual USD] [decimal](10, 3) NULL,
	[Standard Vs Actual %] [varchar](2) NULL,
	[% Ideal Vs Actual] [varchar](2) NULL,
	[C. Scrap] [decimal](10, 3) NULL,
	[GI Qty 0  Frozen] [int] NULL,
	[Frozen Vs Actual %] [int] NULL,
	[Frozen Vs Actual in Units] [int] NULL,
	[Frozen Vs Actual in LC] [int] NULL,
	[Frozen Vs Actual in USD] [int] NULL,
	[Date Time Stamp of data the extraction] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_CALCULATIONS_1_STG]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_CALCULATIONS_1_STG](
	[PLANT] [int] NULL,
	[Plant Description] [varchar](15) NULL,
	[CITY] [varchar](9) NULL,
	[REGION] [varchar](3) NULL,
	[Region Description] [varchar](9) NULL,
	[COUNTRY] [varchar](2) NULL,
	[Country Name] [varchar](6) NULL,
	[Line Name] [varchar](16) NULL,
	[Fiscal Year] [int] NULL,
	[Fiscal Period] [varchar](6) NULL,
	[Fiscal week] [varchar](6) NULL,
	[Date (Each component)] [varchar](8) NULL,
	[SHIFT] [varchar](1) NULL,
	[Order  Status] [varchar](4) NULL,
	[Last Changed Date] [varchar](9) NULL,
	[Production Order] [int] NULL,
	[Material Type] [varchar](4) NULL,
	[Description of material type] [varchar](21) NULL,
	[CATEGORY] [int] NULL,
	[Category Description] [varchar](4) NULL,
	[BRAND] [int] NULL,
	[Brand Description] [varchar](15) NULL,
	[TYPE] [float] NULL,
	[Type Description] [varchar](20) NULL,
	[MATERIAL] [int] NULL,
	[Material Description] [varchar](19) NULL,
	[Overweight %] [varchar](2) NULL,
	[Moisture %] [varchar](2) NULL,
	[Waste %] [varchar](4) NULL,
	[Material Group (finished product)] [varchar](4) NULL,
	[Material Group Description] [varchar](4) NULL,
	[Good Receipts 0 Actuals] [decimal](10, 3) NULL,
	[Component Material] [varchar](10) NULL,
	[Component Material Description] [varchar](23) NULL,
	[GI Qty 0 Actuals] [decimal](10, 3) NULL,
	[GI Val 0 Actuals LC] [decimal](10, 3) NULL,
	[GI VAL 0 Actuals USD] [decimal](10, 3) NULL,
	[GI Qty 0 Standard] [decimal](10, 3) NULL,
	[Unit] [varchar](2) NULL,
	[GI Val 0 Standard LC] [decimal](10, 3) NULL,
	[GI Val 0 Standard USD] [decimal](10, 3) NULL,
	[GI Val 0 Frozen LC] [decimal](10, 3) NULL,
	[GI Val 0 Frozen USD] [decimal](10, 3) NULL,
	[GI Qty 0 Ideal] [decimal](10, 3) NULL,
	[GI Val 0 Ideal LC] [decimal](10, 3) NULL,
	[GI Val 0 Ideal USD] [decimal](10, 3) NULL,
	[Standard Vs Actual in units] [decimal](10, 3) NULL,
	[Standard Vs Actual in LC] [decimal](10, 3) NULL,
	[Standard Vs Actual in USD] [decimal](10, 3) NULL,
	[Ideal Vs Actual in Units] [decimal](10, 3) NULL,
	[Ideal vs Actual in LC] [decimal](10, 3) NULL,
	[Ideal vs Actual USD] [decimal](10, 3) NULL,
	[Standard Vs Actual %] [varchar](2) NULL,
	[% Ideal Vs Actual] [varchar](2) NULL,
	[C. Scrap] [decimal](10, 3) NULL,
	[GI Qty 0  Frozen] [int] NULL,
	[Frozen Vs Actual %] [int] NULL,
	[Frozen Vs Actual in Units] [int] NULL,
	[Frozen Vs Actual in LC] [int] NULL,
	[Frozen Vs Actual in USD] [int] NULL,
	[Date Time Stamp of data the extraction] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TJ02T]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TJ02T](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ISTAT] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[TXT04] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TJ02T_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TJ02T_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[ISTAT] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[TXT04] [varchar](4) NULL,
	[TXT30] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA01]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA01](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BEZEI] [varchar](25) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[LMONA] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ALEMT] [varchar](2) NULL,
	[MD_LOGSYSTEM] [varchar](10) NULL,
	[KHINR] [varchar](12) NULL,
	[KOMP1] [varchar](1) NULL,
	[KOMP0] [varchar](1) NULL,
	[KOMP2] [varchar](1) NULL,
	[ERKRS] [varchar](4) NULL,
	[DPRCT] [varchar](10) NULL,
	[PHINR] [varchar](12) NULL,
	[PCLDG] [varchar](2) NULL,
	[PCBEL] [varchar](1) NULL,
	[XWBUK] [varchar](1) NULL,
	[BPHINR] [varchar](12) NULL,
	[XBPALE] [varchar](1) NULL,
	[KSTAR_FIN] [varchar](10) NULL,
	[KSTAR_FID] [varchar](10) NULL,
	[PCACUR] [varchar](5) NULL,
	[PCACURTP] [varchar](2) NULL,
	[PCATRCUR] [varchar](1) NULL,
	[CTYP] [varchar](2) NULL,
	[RCLAC] [varchar](1) NULL,
	[BLART] [varchar](2) NULL,
	[FIKRS] [varchar](4) NULL,
	[RCL_PRIMAC] [varchar](1) NULL,
	[PCA_ALEMT] [varchar](2) NULL,
	[PCA_VALU] [decimal](1, 0) NULL,
	[CVPROF] [varchar](4) NULL,
	[CVACT] [varchar](1) NULL,
	[VNAME] [varchar](12) NULL,
	[PCA_ACC_DIFF] [varchar](1) NULL,
	[TP_VALOHB] [decimal](1, 0) NULL,
	[DEFPRCTR] [varchar](10) NULL,
	[AUTH_USE_NO_STD] [varchar](1) NULL,
	[AUTH_USE_ADD1] [varchar](1) NULL,
	[AUTH_USE_ADD2] [varchar](1) NULL,
	[AUTH_KE_NO_STD] [varchar](1) NULL,
	[AUTH_KE_USE_ADD1] [varchar](1) NULL,
	[AUTH_KE_USE_ADD2] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA01_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA01_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BEZEI] [varchar](25) NULL,
	[WAERS] [varchar](5) NULL,
	[KTOPL] [varchar](4) NULL,
	[LMONA] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ALEMT] [varchar](2) NULL,
	[MD_LOGSYSTEM] [varchar](10) NULL,
	[KHINR] [varchar](12) NULL,
	[KOMP1] [varchar](1) NULL,
	[KOMP0] [varchar](1) NULL,
	[KOMP2] [varchar](1) NULL,
	[ERKRS] [varchar](4) NULL,
	[DPRCT] [varchar](10) NULL,
	[PHINR] [varchar](12) NULL,
	[PCLDG] [varchar](2) NULL,
	[PCBEL] [varchar](1) NULL,
	[XWBUK] [varchar](1) NULL,
	[BPHINR] [varchar](12) NULL,
	[XBPALE] [varchar](1) NULL,
	[KSTAR_FIN] [varchar](10) NULL,
	[KSTAR_FID] [varchar](10) NULL,
	[PCACUR] [varchar](5) NULL,
	[PCACURTP] [varchar](2) NULL,
	[PCATRCUR] [varchar](1) NULL,
	[CTYP] [varchar](2) NULL,
	[RCLAC] [varchar](1) NULL,
	[BLART] [varchar](2) NULL,
	[FIKRS] [varchar](4) NULL,
	[RCL_PRIMAC] [varchar](1) NULL,
	[PCA_ALEMT] [varchar](2) NULL,
	[PCA_VALU] [decimal](1, 0) NULL,
	[CVPROF] [varchar](4) NULL,
	[CVACT] [varchar](1) NULL,
	[VNAME] [varchar](12) NULL,
	[PCA_ACC_DIFF] [varchar](1) NULL,
	[TP_VALOHB] [decimal](1, 0) NULL,
	[DEFPRCTR] [varchar](10) NULL,
	[AUTH_USE_NO_STD] [varchar](1) NULL,
	[AUTH_USE_ADD1] [varchar](1) NULL,
	[AUTH_USE_ADD2] [varchar](1) NULL,
	[AUTH_KE_NO_STD] [varchar](1) NULL,
	[AUTH_KE_USE_ADD1] [varchar](1) NULL,
	[AUTH_KE_USE_ADD2] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA02]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA02](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKA02_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKA02_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USR02]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USR02](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BNAME] [varchar](12) NULL,
	[BCODE] [varchar](16) NULL,
	[GLTGV] [date] NULL,
	[GLTGB] [date] NULL,
	[USTYP] [varchar](1) NULL,
	[CLASS] [varchar](12) NULL,
	[LOCNT] [int] NULL,
	[UFLAG] [int] NULL,
	[ACCNT] [varchar](12) NULL,
	[ANAME] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[TRDAT] [date] NULL,
	[LTIME] [time](7) NULL,
	[OCOD1] [varchar](16) NULL,
	[BCDA1] [date] NULL,
	[CODV1] [varchar](1) NULL,
	[OCOD2] [varchar](16) NULL,
	[BCDA2] [date] NULL,
	[CODV2] [varchar](1) NULL,
	[OCOD3] [varchar](16) NULL,
	[BCDA3] [date] NULL,
	[CODV3] [varchar](1) NULL,
	[OCOD4] [varchar](16) NULL,
	[BCDA4] [date] NULL,
	[CODV4] [varchar](1) NULL,
	[OCOD5] [varchar](16) NULL,
	[BCDA5] [date] NULL,
	[CODV5] [varchar](1) NULL,
	[VERSN] [varchar](3) NULL,
	[CODVN] [varchar](1) NULL,
	[TZONE] [varchar](6) NULL,
	[ZBVMASTER] [varchar](1) NULL,
	[PASSCODE] [varchar](40) NULL,
	[PWDCHGDATE] [date] NULL,
	[PWDSTATE] [int] NULL,
	[RESERVED] [int] NULL,
	[PWDHISTORY] [int] NULL,
	[PWDLGNDATE] [date] NULL,
	[PWDSETDATE] [date] NULL,
	[PWDINITIAL] [int] NULL,
	[PWDLOCKDATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USR02_OLD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USR02_OLD](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[BNAME] [varchar](12) NULL,
	[BCODE] [varchar](16) NULL,
	[GLTGV] [date] NULL,
	[GLTGB] [date] NULL,
	[USTYP] [varchar](1) NULL,
	[CLASS] [varchar](12) NULL,
	[LOCNT] [int] NULL,
	[UFLAG] [int] NULL,
	[ACCNT] [varchar](12) NULL,
	[ANAME] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[TRDAT] [date] NULL,
	[LTIME] [time](7) NULL,
	[OCOD1] [varchar](16) NULL,
	[BCDA1] [date] NULL,
	[CODV1] [varchar](1) NULL,
	[OCOD2] [varchar](16) NULL,
	[BCDA2] [date] NULL,
	[CODV2] [varchar](1) NULL,
	[OCOD3] [varchar](16) NULL,
	[BCDA3] [date] NULL,
	[CODV3] [varchar](1) NULL,
	[OCOD4] [varchar](16) NULL,
	[BCDA4] [date] NULL,
	[CODV4] [varchar](1) NULL,
	[OCOD5] [varchar](16) NULL,
	[BCDA5] [date] NULL,
	[CODV5] [varchar](1) NULL,
	[VERSN] [varchar](3) NULL,
	[CODVN] [varchar](1) NULL,
	[TZONE] [varchar](6) NULL,
	[ZBVMASTER] [varchar](1) NULL,
	[PASSCODE] [varchar](40) NULL,
	[PWDCHGDATE] [date] NULL,
	[PWDSTATE] [int] NULL,
	[RESERVED] [int] NULL,
	[PWDHISTORY] [int] NULL,
	[PWDLGNDATE] [date] NULL,
	[PWDSETDATE] [date] NULL,
	[PWDINITIAL] [int] NULL,
	[PWDLOCKDATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZRECONCILER]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZRECONCILER](
	[MANDT] [varchar](3) NULL,
	[ZSTOKEY] [varchar](12) NOT NULL,
	[ZVBELN] [varchar](10) NULL,
	[ZSOSYS] [varchar](3) NULL,
	[ZEBELN] [varchar](10) NULL,
	[ZPOSYS] [varchar](3) NULL,
	[ZSHIPLOC] [varchar](4) NULL,
	[ZDESTLOC] [varchar](4) NULL,
	[ZSHIPDATE] [date] NULL,
	[ZDELVDATE] [date] NULL,
	[ZSRCSTAT] [varchar](12) NULL,
	[ZDESSTAT] [varchar](12) NULL,
	[ZSTATDESC] [varchar](15) NULL,
	[ZERRDESC] [varchar](15) NULL,
	[ERDAT] [date] NULL,
	[ERZET] [time](7) NULL,
	[UPDAT] [date] NULL,
	[UPZET] [time](7) NULL,
	[COMMENTS] [varchar](255) NULL,
	[LOAD_DATE] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ZSTOKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AN012]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AN012](
	[COST_CTR_CD] [varchar](10) NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AN012_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AN012_1](
	[COST_CTR_CD] [varchar](10) NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[BKPF_STG_11_29]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[BKPF_STG_11_29](
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BLART] [varchar](2) NULL,
	[AWKEY] [varchar](16) NULL,
	[BLDAT] [date] NULL,
	[MONAT] [decimal](2, 0) NULL,
	[BUDAT] [date] NULL,
	[HWAER] [varchar](5) NULL,
	[HWAE2] [varchar](5) NULL,
	[KURS2] [decimal](9, 5) NULL,
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
/****** Object:  Table [STG].[COEP_MAP2]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COEP_MAP2](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[DW_Cre_Ts] [datetime2](7) NULL,
	[DW_Cre_Usr] [varchar](50) NULL,
	[DW_Mod_Ts] [datetime2](7) NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [varchar](1) NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_CTR_HIER_UNRVL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_CTR_HIER_UNRVL](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_CTR_HIER_UNRVL_TMP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_CTR_HIER_UNRVL_TMP](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_ELMNT_HIER_UNRVL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_ELMNT_HIER_UNRVL](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COST_ELMNT_HIER_UNRVL_TMP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COST_ELMNT_HIER_UNRVL_TMP](
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL,
	[SETTYPE] [varchar](1) NULL,
	[LVL_NBR] [smallint] NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[LVL2_SETNAME] [varchar](24) NULL,
	[LVL3_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL10_SETNAME] [varchar](24) NULL,
	[LVL11_SETNAME] [varchar](24) NULL,
	[LVL12_SETNAME] [varchar](24) NULL,
	[LVL13_SETNAME] [varchar](24) NULL,
	[LVL14_SETNAME] [varchar](24) NULL,
	[LVL15_SETNAME] [varchar](24) NULL,
	[LVL16_SETNAME] [varchar](24) NULL,
	[LVL17_SETNAME] [varchar](24) NULL,
	[LVL18_SETNAME] [varchar](24) NULL,
	[LVL19_SETNAME] [varchar](24) NULL,
	[LVL20_SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME_DESC] [varchar](40) NULL,
	[LVL2_SETNAME_DESC] [varchar](40) NULL,
	[LVL3_SETNAME_DESC] [varchar](40) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[LVL10_SETNAME_DESC] [varchar](40) NULL,
	[LVL11_SETNAME_DESC] [varchar](40) NULL,
	[LVL12_SETNAME_DESC] [varchar](40) NULL,
	[LVL13_SETNAME_DESC] [varchar](40) NULL,
	[LVL14_SETNAME_DESC] [varchar](40) NULL,
	[LVL15_SETNAME_DESC] [varchar](40) NULL,
	[LVL16_SETNAME_DESC] [varchar](40) NULL,
	[LVL17_SETNAME_DESC] [varchar](40) NULL,
	[LVL18_SETNAME_DESC] [varchar](40) NULL,
	[LVL19_SETNAME_DESC] [varchar](40) NULL,
	[LVL20_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_Banner]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_Banner](
	[Banner Code] [varchar](256) NULL,
	[Banner Description] [varchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[KLA_BS_PEN_CCODE_MAPING]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[KLA_BS_PEN_CCODE_MAPING](
	[SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[BUKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[MSEG]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[MSEG](
	[MANDT] [varchar](3) NULL,
	[MBLNR] [varchar](10) NOT NULL,
	[MJAHR] [decimal](4, 0) NOT NULL,
	[ZEILE] [decimal](4, 0) NOT NULL,
	[LINE_ID] [decimal](6, 0) NULL,
	[PARENT_ID] [decimal](6, 0) NULL,
	[LINE_DEPTH] [decimal](2, 0) NULL,
	[BWART] [varchar](3) NULL,
	[XAUTO] [varchar](1) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[CHARG] [varchar](10) NULL,
	[INSMK] [varchar](1) NULL,
	[ZUSCH] [varchar](1) NULL,
	[ZUSTD] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[LIFNR] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[KDEIN] [decimal](4, 0) NULL,
	[PLPLA] [varchar](10) NULL,
	[SHKZG] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[BNBTR] [decimal](13, 2) NULL,
	[BUALT] [decimal](13, 2) NULL,
	[SHKUM] [varchar](1) NULL,
	[DMBUM] [decimal](13, 2) NULL,
	[BWTAR] [varchar](10) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[ERFMG] [decimal](13, 3) NULL,
	[ERFME] [varchar](3) NULL,
	[BPMNG] [decimal](13, 3) NULL,
	[BPRME] [varchar](3) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[LFBJA] [decimal](4, 0) NULL,
	[LFBNR] [varchar](10) NULL,
	[LFPOS] [decimal](4, 0) NULL,
	[SJAHR] [decimal](4, 0) NULL,
	[SMBLN] [varchar](10) NULL,
	[SMBLP] [decimal](4, 0) NULL,
	[ELIKZ] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[EQUNR] [varchar](18) NULL,
	[WEMPF] [varchar](12) NULL,
	[ABLAD] [varchar](25) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[PARGB] [varchar](4) NULL,
	[PARBU] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[PROJN] [varchar](16) NULL,
	[AUFNR] [varchar](12) NULL,
	[ANLN1] [varchar](12) NULL,
	[ANLN2] [varchar](4) NULL,
	[XSKST] [varchar](1) NULL,
	[XSAUF] [varchar](1) NULL,
	[XSPRO] [varchar](1) NULL,
	[XSERG] [varchar](1) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[XRUEM] [varchar](1) NULL,
	[XRUEJ] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[BELUM] [varchar](10) NULL,
	[BUZUM] [decimal](3, 0) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[RSPOS] [decimal](4, 0) NULL,
	[KZEAR] [varchar](1) NULL,
	[PBAMG] [decimal](13, 3) NULL,
	[KZSTR] [varchar](1) NULL,
	[UMMAT] [varchar](18) NULL,
	[UMWRK] [varchar](4) NULL,
	[UMLGO] [varchar](4) NULL,
	[UMCHA] [varchar](10) NULL,
	[UMZST] [varchar](1) NULL,
	[UMZUS] [varchar](1) NULL,
	[UMBAR] [varchar](10) NULL,
	[UMSOK] [varchar](1) NULL,
	[KZBEW] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[KZZUG] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[PALAN] [decimal](11, 0) NULL,
	[LGNUM] [varchar](3) NULL,
	[LGTYP] [varchar](3) NULL,
	[LGPLA] [varchar](10) NULL,
	[BESTQ] [varchar](1) NULL,
	[BWLVS] [decimal](3, 0) NULL,
	[TBNUM] [decimal](10, 0) NULL,
	[TBPOS] [decimal](4, 0) NULL,
	[XBLVS] [varchar](1) NULL,
	[VSCHN] [varchar](1) NULL,
	[NSCHN] [varchar](1) NULL,
	[DYPLA] [varchar](1) NULL,
	[UBNUM] [decimal](10, 0) NULL,
	[TBPRI] [varchar](1) NULL,
	[TANUM] [decimal](10, 0) NULL,
	[WEANZ] [decimal](3, 0) NULL,
	[GRUND] [decimal](4, 0) NULL,
	[EVERS] [varchar](2) NULL,
	[EVERE] [varchar](2) NULL,
	[IMKEY] [varchar](8) NULL,
	[KSTRG] [varchar](12) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[PRCTR] [varchar](10) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[NPLNR] [varchar](12) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[AUFPS] [decimal](4, 0) NULL,
	[VPTNR] [varchar](10) NULL,
	[FIPOS] [varchar](14) NULL,
	[SAKTO] [varchar](10) NULL,
	[BSTMG] [decimal](13, 3) NULL,
	[BSTME] [varchar](3) NULL,
	[XWSBR] [varchar](1) NULL,
	[EMLIF] [varchar](10) NULL,
	[EXBWR] [decimal](13, 2) NULL,
	[VKWRT] [decimal](13, 2) NULL,
	[AKTNR] [varchar](10) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[VFDAT] [date] NULL,
	[CUOBJ_CH] [decimal](18, 0) NULL,
	[EXVKW] [decimal](13, 2) NULL,
	[PPRCTR] [varchar](10) NULL,
	[RSART] [varchar](1) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[MATBF] [varchar](18) NULL,
	[UMMAB] [varchar](18) NULL,
	[BUSTM] [varchar](4) NULL,
	[BUSTW] [varchar](4) NULL,
	[MENGU] [varchar](1) NULL,
	[WERTU] [varchar](1) NULL,
	[LBKUM] [decimal](13, 3) NULL,
	[SALK3] [decimal](13, 2) NULL,
	[VPRSV] [varchar](1) NULL,
	[FKBER] [varchar](16) NULL,
	[DABRBZ] [date] NULL,
	[VKWRA] [decimal](13, 2) NULL,
	[DABRZ] [date] NULL,
	[XBEAU] [varchar](1) NULL,
	[LSMNG] [decimal](13, 3) NULL,
	[LSMEH] [varchar](3) NULL,
	[KZBWS] [varchar](1) NULL,
	[QINSPST] [varchar](1) NULL,
	[URZEI] [decimal](4, 0) NULL,
	[J_1BEXBASE] [decimal](13, 2) NULL,
	[MWSKZ] [varchar](2) NULL,
	[TXJCD] [varchar](15) NULL,
	[EMATN] [varchar](18) NULL,
	[J_1AGIRUPD] [varchar](1) NULL,
	[VKMWS] [varchar](2) NULL,
	[HSDAT] [date] NULL,
	[BERKZ] [varchar](1) NULL,
	[MAT_KDAUF] [varchar](10) NULL,
	[MAT_KDPOS] [decimal](6, 0) NULL,
	[MAT_PSPNR] [decimal](8, 0) NULL,
	[XWOFF] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[PRZNR] [varchar](12) NULL,
	[LLIEF] [varchar](10) NULL,
	[LSTAR] [varchar](6) NULL,
	[XOBEW] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[ZUSTD_T156M] [varchar](1) NULL,
	[SPE_GTS_STOCK_TY] [varchar](1) NULL,
	[/BEV2/ED_KZ_VER] [varchar](1) NULL,
	[/BEV2/ED_USER] [varchar](12) NULL,
	[/BEV2/ED_AEDAT] [date] NULL,
	[/BEV2/ED_AETIM] [time](7) NULL,
	[OINAVNW] [decimal](13, 2) NULL,
	[OICONDCOD] [varchar](2) NULL,
	[CONDI] [varchar](2) NULL,
	[BUDAT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MBLNR] ASC,
	[MJAHR] ASC,
	[ZEILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AFKO_FULL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AFKO_FULL](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[GLTRP] [date] NULL,
	[GSTRP] [date] NULL,
	[FTRMS] [date] NULL,
	[GLTRS] [date] NULL,
	[GSTRS] [date] NULL,
	[GSTRI] [date] NULL,
	[GETRI] [date] NULL,
	[GLTRI] [date] NULL,
	[FTRMI] [date] NULL,
	[FTRMP] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[GASMG] [decimal](13, 3) NULL,
	[GAMNG] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[PLNBEZ] [varchar](18) NULL,
	[PLNTY] [varchar](1) NULL,
	[PLNNR] [varchar](8) NULL,
	[PLNAW] [varchar](1) NULL,
	[PLNAL] [varchar](2) NULL,
	[PVERW] [varchar](3) NULL,
	[PLAUF] [date] NULL,
	[PLSVB] [decimal](13, 3) NULL,
	[PLNME] [varchar](3) NULL,
	[PLSVN] [decimal](13, 3) NULL,
	[PDATV] [date] NULL,
	[PAENR] [varchar](12) NULL,
	[PLGRP] [varchar](3) NULL,
	[LODIV] [decimal](13, 3) NULL,
	[STLTY] [varchar](1) NULL,
	[STLBEZ] [varchar](18) NULL,
	[STLST] [decimal](2, 0) NULL,
	[STLNR] [varchar](8) NULL,
	[SDATV] [date] NULL,
	[SBMNG] [decimal](13, 3) NULL,
	[SBMEH] [varchar](3) NULL,
	[SAENR] [varchar](12) NULL,
	[STLAL] [varchar](2) NULL,
	[STLAN] [varchar](1) NULL,
	[SLSVN] [decimal](13, 3) NULL,
	[SLSBS] [decimal](13, 3) NULL,
	[AUFLD] [date] NULL,
	[DISPO] [varchar](3) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[FEVOR] [varchar](3) NULL,
	[FHORI] [varchar](3) NULL,
	[TERKZ] [varchar](1) NULL,
	[REDKZ] [varchar](1) NULL,
	[APRIO] [varchar](1) NULL,
	[NTZUE] [varchar](12) NULL,
	[VORUE] [varchar](4) NULL,
	[PROFID] [varchar](7) NULL,
	[VORGZ] [decimal](3, 0) NULL,
	[SICHZ] [decimal](3, 0) NULL,
	[FREIZ] [decimal](3, 0) NULL,
	[UPTER] [varchar](1) NULL,
	[BEDID] [decimal](12, 0) NULL,
	[PRONR] [decimal](8, 0) NULL,
	[ZAEHL] [decimal](8, 0) NULL,
	[MZAEHL] [decimal](8, 0) NULL,
	[ZKRIZ] [decimal](7, 0) NULL,
	[PRUEFLOS] [decimal](12, 0) NULL,
	[KLVARP] [varchar](4) NULL,
	[KLVARI] [varchar](4) NULL,
	[RGEKZ] [varchar](1) NULL,
	[PLART] [varchar](1) NULL,
	[FLG_AOB] [varchar](1) NULL,
	[FLG_ARBEI] [varchar](1) NULL,
	[GLTPP] [date] NULL,
	[GSTPP] [date] NULL,
	[GLTPS] [date] NULL,
	[GSTPS] [date] NULL,
	[FTRPS] [date] NULL,
	[RDKZP] [varchar](1) NULL,
	[TRKZP] [varchar](1) NULL,
	[RUECK] [decimal](10, 0) NULL,
	[RMZHL] [decimal](8, 0) NULL,
	[IGMNG] [decimal](13, 3) NULL,
	[RATID] [decimal](12, 0) NULL,
	[GROID] [decimal](12, 0) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[GLUZS] [time](7) NULL,
	[GSUZS] [time](7) NULL,
	[REVLV] [varchar](2) NULL,
	[RSHTY] [varchar](2) NULL,
	[RSHID] [decimal](8, 0) NULL,
	[RSNTY] [varchar](2) NULL,
	[RSNID] [decimal](8, 0) NULL,
	[NAUTERM] [varchar](1) NULL,
	[NAUCOST] [varchar](1) NULL,
	[STUFE] [decimal](2, 0) NULL,
	[WEGXX] [decimal](4, 0) NULL,
	[VWEGX] [decimal](4, 0) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[MAUFNR] [varchar](12) NULL,
	[LKNOT] [varchar](12) NULL,
	[RKNOT] [varchar](12) NULL,
	[PRODNET] [varchar](1) NULL,
	[IASMG] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[AUFNT] [varchar](12) NULL,
	[AUFPT] [decimal](10, 0) NULL,
	[APLZT] [decimal](8, 0) NULL,
	[NO_DISP] [varchar](1) NULL,
	[CSPLIT] [varchar](4) NULL,
	[AENNR] [varchar](12) NULL,
	[CY_SEQNR] [decimal](14, 0) NULL,
	[BREAKS] [varchar](1) NULL,
	[VORGZ_TRM] [decimal](6, 3) NULL,
	[SICHZ_TRM] [decimal](6, 3) NULL,
	[TRMDT] [date] NULL,
	[GLUZP] [time](7) NULL,
	[GSUZP] [time](7) NULL,
	[GSUZI] [time](7) NULL,
	[GEUZI] [time](7) NULL,
	[GLUPP] [time](7) NULL,
	[GSUPP] [time](7) NULL,
	[GLUPS] [time](7) NULL,
	[GSUPS] [time](7) NULL,
	[CHSCH] [varchar](6) NULL,
	[KAPT_VORGZ] [decimal](3, 0) NULL,
	[KAPT_SICHZ] [decimal](3, 0) NULL,
	[LEAD_AUFNR] [varchar](12) NULL,
	[PNETSTARTD] [date] NULL,
	[PNETSTARTT] [time](7) NULL,
	[PNETENDD] [date] NULL,
	[PNETENDT] [time](7) NULL,
	[KBED] [varchar](1) NULL,
	[KKALKR] [varchar](1) NULL,
	[SFCPF] [varchar](6) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[GSBTR] [date] NULL,
	[VFMNG] [decimal](13, 3) NULL,
	[NOPCOST] [varchar](1) NULL,
	[NETZKONT] [varchar](1) NULL,
	[ATRKZ] [varchar](1) NULL,
	[OBJTYPE] [varchar](1) NULL,
	[CH_PROC] [varchar](1) NULL,
	[KAPVERSA] [decimal](2, 0) NULL,
	[COLORDPROC] [varchar](1) NULL,
	[KZERB] [varchar](1) NULL,
	[CONF_KEY] [decimal](8, 0) NULL,
	[ST_ARBID] [decimal](8, 0) NULL,
	[VSNMR_V] [varchar](12) NULL,
	[TERHW] [varchar](1) NULL,
	[SPLSTAT] [varchar](1) NULL,
	[COSTUPD] [varchar](1) NULL,
	[ADPSP] [varchar](40) NULL,
	[RMANR] [varchar](10) NULL,
	[POSNR_RMA] [decimal](6, 0) NULL,
	[POSNV_RMA] [decimal](6, 0) NULL,
	[OIHANTYP] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AFRU_FULL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AFRU_FULL](
	[MANDT] [varchar](3) NULL,
	[RUECK] [decimal](10, 0) NOT NULL,
	[RMZHL] [decimal](8, 0) NOT NULL,
	[ERSDA] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[LAEDA] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BUDAT] [date] NULL,
	[ARBID] [decimal](8, 0) NULL,
	[WERKS] [varchar](4) NULL,
	[LTXA1] [varchar](40) NULL,
	[TXTSP] [varchar](1) NULL,
	[ISERH] [decimal](9, 3) NULL,
	[ZEIER] [varchar](3) NULL,
	[ILE01] [varchar](3) NULL,
	[ISM01] [decimal](13, 3) NULL,
	[ILE02] [varchar](3) NULL,
	[ISM02] [decimal](13, 3) NULL,
	[ILE03] [varchar](3) NULL,
	[ISM03] [decimal](13, 3) NULL,
	[ILE04] [varchar](3) NULL,
	[ISM04] [decimal](13, 3) NULL,
	[ILE05] [varchar](3) NULL,
	[ISM05] [decimal](13, 3) NULL,
	[ILE06] [varchar](3) NULL,
	[ISM06] [decimal](13, 3) NULL,
	[ABARB] [decimal](3, 0) NULL,
	[ISMNW] [decimal](7, 1) NULL,
	[ISMNE] [varchar](3) NULL,
	[LEARR] [varchar](6) NULL,
	[IDAUR] [decimal](5, 1) NULL,
	[IDAUE] [varchar](3) NULL,
	[ZCODE] [varchar](6) NULL,
	[LOART] [varchar](4) NULL,
	[QUALF] [varchar](2) NULL,
	[ANZMA] [decimal](5, 2) NULL,
	[LOGRP] [varchar](3) NULL,
	[GMNGA] [decimal](13, 3) NULL,
	[LMNGA] [decimal](13, 3) NULL,
	[XMNGA] [decimal](13, 3) NULL,
	[GMEIN] [varchar](3) NULL,
	[MEINH] [varchar](3) NULL,
	[GRUND] [varchar](4) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[ISDD] [date] NULL,
	[ISDZ] [time](7) NULL,
	[IERD] [date] NULL,
	[IERZ] [time](7) NULL,
	[ISBD] [date] NULL,
	[ISBZ] [time](7) NULL,
	[IEBD] [date] NULL,
	[IEBZ] [time](7) NULL,
	[ISAD] [date] NULL,
	[ISAZ] [time](7) NULL,
	[IEDD] [date] NULL,
	[IEDZ] [time](7) NULL,
	[PEDD] [date] NULL,
	[PEDZ] [time](7) NULL,
	[WABLNR] [varchar](10) NULL,
	[WEBLNR] [varchar](10) NULL,
	[AUERU] [varchar](1) NULL,
	[AUSOR] [varchar](1) NULL,
	[STNDR] [varchar](1) NULL,
	[MANUR] [varchar](1) NULL,
	[MEILR] [varchar](1) NULL,
	[AUFPL] [decimal](10, 0) NULL,
	[APLZL] [decimal](8, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[APLFL] [varchar](6) NULL,
	[VORNR] [varchar](4) NULL,
	[SUMNR] [decimal](8, 0) NULL,
	[OFM01] [decimal](9, 3) NULL,
	[OFE01] [varchar](3) NULL,
	[LEK01] [varchar](1) NULL,
	[OFM02] [decimal](9, 3) NULL,
	[OFE02] [varchar](3) NULL,
	[LEK02] [varchar](1) NULL,
	[OFM03] [decimal](9, 3) NULL,
	[OFE03] [varchar](3) NULL,
	[LEK03] [varchar](1) NULL,
	[OFM04] [decimal](9, 3) NULL,
	[OFE04] [varchar](3) NULL,
	[LEK04] [varchar](1) NULL,
	[OFM05] [decimal](9, 3) NULL,
	[OFE05] [varchar](3) NULL,
	[LEK05] [varchar](1) NULL,
	[OFM06] [decimal](9, 3) NULL,
	[OFE06] [varchar](3) NULL,
	[LEK06] [varchar](1) NULL,
	[OFMNW] [decimal](7, 1) NULL,
	[OFMNE] [varchar](3) NULL,
	[LEKNW] [varchar](1) NULL,
	[ODAUR] [decimal](5, 1) NULL,
	[ODAUE] [varchar](3) NULL,
	[STOKZ] [varchar](1) NULL,
	[STZHL] [decimal](8, 0) NULL,
	[SMENG] [decimal](13, 3) NULL,
	[RUECK_MST] [decimal](10, 0) NULL,
	[RMZHL_MST] [decimal](8, 0) NULL,
	[PDSNR] [decimal](12, 0) NULL,
	[KAPID] [decimal](8, 0) NULL,
	[SPLIT] [int] NULL,
	[ZAUSW] [decimal](8, 0) NULL,
	[ORIND] [varchar](1) NULL,
	[ORIGF] [varchar](1) NULL,
	[CANUM] [decimal](4, 0) NULL,
	[BELNR_IST] [varchar](10) NULL,
	[BELNR_UMB] [varchar](10) NULL,
	[RMNGA] [decimal](13, 3) NULL,
	[CATSBELNR] [varchar](10) NULL,
	[SATZA] [varchar](3) NULL,
	[ERZET] [time](7) NULL,
	[CATSPRICE] [decimal](11, 2) NULL,
	[CATSTCURR] [varchar](5) NULL,
	[CATSPEINH] [decimal](5, 0) NULL,
	[BEMOT] [varchar](2) NULL,
	[IPRZ1] [decimal](13, 3) NULL,
	[IPRE1] [varchar](3) NULL,
	[IPRK1] [varchar](1) NULL,
	[EXNAM] [varchar](12) NULL,
	[EXERD] [date] NULL,
	[EXERZ] [time](7) NULL,
	[PRZ01] [varchar](12) NULL,
	[OPRZ1] [decimal](13, 3) NULL,
	[OPRE1] [varchar](3) NULL,
	[SKOKRS] [varchar](4) NULL,
	[SKOSTL] [varchar](10) NULL,
	[NODAT] [varchar](1) NULL,
	[ISMNU] [varchar](3) NULL,
	[OFMNU] [varchar](3) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[EXTID] [varchar](32) NULL,
	[SCHGRUP] [varchar](2) NULL,
	[KAPTPROG] [varchar](4) NULL,
	[ROLE_ID] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[RUECK] ASC,
	[RMZHL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AUFK]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AUFK](
	[MANDT] [varchar](3) NOT NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [decimal](2, 0) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [date] NULL,
	[PDAT2] [date] NULL,
	[PDAT3] [date] NULL,
	[IDAT1] [date] NULL,
	[IDAT2] [date] NULL,
	[IDAT3] [date] NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [date] NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COMX200_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COMX200_1_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL,
	[Price_Group] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COMX200_1_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COMX200_1_1_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL,
	[Price_Group] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COPB200_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COPB200_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL,
	[Price_Group] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COPB200_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COPB200_1_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL,
	[Price_Group] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COSA200_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COSA200_1_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COSA200_1_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COSA200_1_1_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL,
	[Price_Group] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_AZD_COSA200_1_1_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_AZD_COSA200_1_1_1_1](
	[TRID] [varchar](500) NULL,
	[FISCPER] [varchar](20) NULL,
	[BPC Summary Account] [varchar](32) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[Sales Org] [varchar](4) NULL,
	[Dist Channel] [varchar](2) NULL,
	[Division] [varchar](2) NULL,
	[Sales Office] [varchar](4) NULL,
	[Sales Group] [varchar](3) NULL,
	[Sales District] [varchar](6) NULL,
	[Mixed Pal Material] [varchar](18) NULL,
	[Amount] [decimal](17, 3) NULL,
	[Banner] [varchar](10) NULL,
	[Price_Group] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_BKPF]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_BKPF](
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
/****** Object:  Table [STG].[STG_COBK]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_COEP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_EKBE]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_EKBE](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ZEKKN] [decimal](2, 0) NOT NULL,
	[VGABE] [varchar](1) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](4, 0) NOT NULL,
	[BEWTP] [varchar](1) NULL,
	[BWART] [varchar](3) NULL,
	[BUDAT] [date] NULL,
	[MENGE] [decimal](13, 3) NULL,
	[BPMNG] [decimal](13, 3) NULL,
	[DMBTR] [decimal](13, 2) NULL,
	[WRBTR] [decimal](13, 2) NULL,
	[WAERS] [varchar](5) NULL,
	[AREWR] [decimal](13, 2) NULL,
	[WESBS] [decimal](13, 3) NULL,
	[BPWES] [decimal](13, 3) NULL,
	[SHKZG] [varchar](1) NULL,
	[BWTAR] [varchar](10) NULL,
	[ELIKZ] [varchar](1) NULL,
	[XBLNR] [varchar](16) NULL,
	[LFGJA] [decimal](4, 0) NULL,
	[LFBNR] [varchar](10) NULL,
	[LFPOS] [decimal](4, 0) NULL,
	[GRUND] [decimal](4, 0) NULL,
	[CPUDT] [date] NULL,
	[CPUTM] [time](7) NULL,
	[REEWR] [decimal](13, 2) NULL,
	[EVERE] [varchar](2) NULL,
	[REFWR] [decimal](13, 2) NULL,
	[MATNR] [varchar](18) NULL,
	[WERKS] [varchar](4) NULL,
	[XWSBR] [varchar](1) NULL,
	[ETENS] [decimal](4, 0) NULL,
	[KNUMV] [varchar](10) NULL,
	[MWSKZ] [varchar](2) NULL,
	[LSMNG] [decimal](13, 3) NULL,
	[LSMEH] [varchar](3) NULL,
	[EMATN] [varchar](18) NULL,
	[AREWW] [decimal](13, 2) NULL,
	[HSWAE] [varchar](5) NULL,
	[BAMNG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[BLDAT] [date] NULL,
	[XWOFF] [varchar](1) NULL,
	[XUNPL] [varchar](1) NULL,
	[ERNAM] [varchar](12) NULL,
	[SRVPOS] [varchar](18) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[INTROW] [decimal](10, 0) NULL,
	[BEKKN] [decimal](2, 0) NULL,
	[LEMIN] [varchar](1) NULL,
	[AREWB] [decimal](13, 2) NULL,
	[REWRB] [decimal](13, 2) NULL,
	[SAPRL] [varchar](4) NULL,
	[MENGE_POP] [decimal](13, 3) NULL,
	[BPMNG_POP] [decimal](13, 3) NULL,
	[DMBTR_POP] [decimal](13, 2) NULL,
	[WRBTR_POP] [decimal](13, 2) NULL,
	[WESBB] [decimal](13, 3) NULL,
	[BPWEB] [decimal](13, 3) NULL,
	[WEORA] [varchar](1) NULL,
	[AREWR_POP] [decimal](13, 2) NULL,
	[KUDIF] [decimal](13, 2) NULL,
	[ET_UPD] [varchar](1) NULL,
	[J_SC_DIE_COMP_F] [varchar](1) NULL,
	[ETL_LOAD_DATE] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ZEKKN] ASC,
	[VGABE] ASC,
	[GJAHR] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_EKET]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_EKET](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[ETENR] [decimal](4, 0) NOT NULL,
	[AEDAT] [date] NULL,
	[EINDT] [date] NULL,
	[SLFDT] [date] NULL,
	[LPEIN] [varchar](1) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AMENG] [decimal](13, 3) NULL,
	[WEMNG] [decimal](13, 3) NULL,
	[WAMNG] [decimal](13, 3) NULL,
	[UZEIT] [time](7) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[ESTKZ] [varchar](1) NULL,
	[QUNUM] [varchar](10) NULL,
	[QUPOS] [decimal](3, 0) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[BEDAT] [date] NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[SERNR] [varchar](8) NULL,
	[FIXKZ] [varchar](1) NULL,
	[GLMNG] [decimal](13, 3) NULL,
	[DABMG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[LICHA] [varchar](15) NULL,
	[CHKOM] [varchar](1) NULL,
	[VERID] [varchar](4) NULL,
	[ABART] [varchar](1) NULL,
	[MNG02] [decimal](13, 3) NULL,
	[DAT01] [date] NULL,
	[ALTDT] [date] NULL,
	[AULWE] [varchar](10) NULL,
	[MBDAT] [date] NULL,
	[MBUHR] [time](7) NULL,
	[LDDAT] [date] NULL,
	[LDUHR] [time](7) NULL,
	[TDDAT] [date] NULL,
	[TDUHR] [time](7) NULL,
	[WADAT] [date] NULL,
	[WAUHR] [time](7) NULL,
	[ELDAT] [date] NULL,
	[ELUHR] [time](7) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[DL_ID] [varchar](22) NULL,
	[HANDOVER_DATE] [date] NULL,
	[NO_SCEM] [varchar](1) NULL,
	[DNG_DATE] [date] NULL,
	[DNG_TIME] [time](7) NULL,
	[CNCL_ANCMNT_DONE] [varchar](1) NULL,
	[DATESHIFT_NUMBER] [decimal](3, 0) NULL,
	[ETL_LOAD_DATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC,
	[ETENR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_EKKO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_EKKO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_EKPO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_EKPO](
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ABDAT] [date] NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[ABSKZ] [varchar](1) NULL,
	[ABUEB] [varchar](4) NULL,
	[ADRN2] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[ADVCODE] [varchar](2) NULL,
	[AEDAT] [date] NULL,
	[AFNAM] [varchar](12) NULL,
	[AGDAT] [date] NULL,
	[AGMEM] [varchar](3) NULL,
	[AKTNR] [varchar](10) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[APOMS] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[ATTYP] [varchar](2) NULL,
	[AUREL] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BEDNR] [varchar](10) NULL,
	[BERID] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[BONUS] [varchar](2) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[BSGRU] [varchar](3) NULL,
	[BSTAE] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CONS_ORDER] [varchar](1) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[EAN11] [varchar](18) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[EGLKZ] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[EKKOL] [varchar](4) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EMATN] [varchar](18) NULL,
	[EMLIF] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[EREKZ] [varchar](1) NULL,
	[ETDRK] [varchar](1) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[EVERS] [varchar](2) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[FABKZ] [varchar](1) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[FIPOS] [varchar](14) NULL,
	[FISTL] [varchar](16) NULL,
	[FKBER] [varchar](16) NULL,
	[FPLNR] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GEWEI] [varchar](3) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[IDNLF] [varchar](35) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[INFNR] [varchar](10) NULL,
	[INSMK] [varchar](1) NULL,
	[INSNC] [varchar](1) NULL,
	[IPRKZ] [varchar](1) NULL,
	[J_1AIDATEP] [date] NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[KANBA] [varchar](1) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[KNTTP] [varchar](1) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KOLIF] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[KUNNR] [varchar](10) NULL,
	[KZABS] [varchar](1) NULL,
	[KZBWS] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[KZKFG] [varchar](1) NULL,
	[KZSTU] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[LABNR] [varchar](20) NULL,
	[LBLKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[LEWED] [date] NULL,
	[LFRET] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[LMEIN] [varchar](3) NULL,
	[LOEKZ] [varchar](1) NULL,
	[LTSNR] [varchar](6) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MANDT] [varchar](3) NULL,
	[MATKL] [varchar](9) NULL,
	[MATNR] [varchar](18) NULL,
	[MEINS] [varchar](3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEPRF] [varchar](1) NULL,
	[MFRGR] [varchar](8) NULL,
	[MFRNR] [varchar](10) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[MLMAA] [varchar](1) NULL,
	[MPROF] [varchar](4) NULL,
	[MTART] [varchar](4) NULL,
	[MWSKZ] [varchar](2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[NFABD] [date] NULL,
	[NLABD] [date] NULL,
	[NOTKZ] [varchar](1) NULL,
	[NOVET] [varchar](1) NULL,
	[NRFHG] [varchar](1) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[POL_ID] [varchar](10) NULL,
	[PRDAT] [date] NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRSDR] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[PUNEI] [varchar](3) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[REFSITE] [varchar](4) NULL,
	[REPOS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[RETPO] [varchar](1) NULL,
	[REVLV] [varchar](2) NULL,
	[SAISJ] [varchar](4) NULL,
	[SAISO] [varchar](4) NULL,
	[SATNR] [varchar](18) NULL,
	[SCHPR] [varchar](1) NULL,
	[SIKGR] [varchar](3) NULL,
	[SKTOF] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[STAFO] [varchar](6) NULL,
	[STAPO] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[STATUS] [varchar](1) NULL,
	[TECHS] [varchar](12) NULL,
	[TWRKZ] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[TXZ01] [varchar](40) NULL,
	[TZONRC] [varchar](6) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[UEBTK] [varchar](1) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMSOK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[VOLEH] [varchar](3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VORAB] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[WEBRE] [varchar](1) NULL,
	[WEORA] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[WEUNB] [varchar](1) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[XERSY] [varchar](1) NULL,
	[XOBLR] [varchar](1) NULL,
	[ZGTYP] [varchar](4) NULL,
	[ZWERT] [decimal](13, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEKO_FULL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEKO_FULL](
	[MANDT] [varchar](3) NOT NULL,
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
	[MANDT] ASC,
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
/****** Object:  Table [STG].[STG_KEU_Fin_Trns_MD_GL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEU_Fin_Trns_MD_GL](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEU_Fin_Trns_MD_GL_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEU_Fin_Trns_MD_GL_1](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KEU_Fin_Trns_MD_GL_1_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KEU_Fin_Trns_MD_GL_1_1](
	[GL Account] [varchar](256) NULL,
	[GL Account Description] [varchar](256) NULL,
	[Balance Sheet Account] [varchar](5) NULL,
	[PNL Account] [varchar](5) NULL,
	[GL Account Type] [varchar](256) NULL,
	[LVL4_SETNAME] [varchar](24) NULL,
	[LVL4_SETNAME_DESC] [varchar](40) NULL,
	[LVL5_SETNAME] [varchar](24) NULL,
	[LVL5_SETNAME_DESC] [varchar](40) NULL,
	[LVL6_SETNAME] [varchar](24) NULL,
	[LVL6_SETNAME_DESC] [varchar](40) NULL,
	[LVL7_SETNAME] [varchar](24) NULL,
	[LVL7_SETNAME_DESC] [varchar](40) NULL,
	[LVL8_SETNAME] [varchar](24) NULL,
	[LVL8_SETNAME_DESC] [varchar](40) NULL,
	[LVL9_SETNAME] [varchar](24) NULL,
	[LVL9_SETNAME_DESC] [varchar](40) NULL,
	[FIN_STMT_ITM] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_AZOD_COK200]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_AZOD_COK200](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[BWCOUNTER] [decimal](10, 0) NULL,
	[CUSTOMER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_AZOD_COKL00]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_AZOD_COKL00](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[BWCOUNTER] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[FISCPER] ASC,
	[COMP_CODE] ASC,
	[/BIC/ZGL_ACNT] ASC,
	[MATERIAL] ASC,
	[REC_TYPE] ASC,
	[FISCVARNT] ASC,
	[/BIC/Z_MXDPAL] ASC,
	[/BIC/Z_MXDFLG] ASC,
	[SALESORG] ASC,
	[CURTYPE] ASC,
	[SOLD_TO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_AZOD_COM2]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_AZOD_COM2](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_AZOD_COMX00]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_AZOD_COMX00](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[FISCPER] ASC,
	[COMP_CODE] ASC,
	[/BIC/ZGL_ACNT] ASC,
	[MATERIAL] ASC,
	[REC_TYPE] ASC,
	[FISCVARNT] ASC,
	[/BIC/Z_MXDPAL] ASC,
	[/BIC/Z_MXDFLG] ASC,
	[SALESORG] ASC,
	[CURTYPE] ASC,
	[SOLD_TO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_AZOD_COS200]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_AZOD_COS200](
	[FISCPER] [decimal](7, 0) NULL,
	[COMP_CODE] [varchar](4) NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NULL,
	[MATERIAL] [varchar](18) NULL,
	[REC_TYPE] [varchar](1) NULL,
	[FISCVARNT] [varchar](2) NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NULL,
	[SALESORG] [varchar](4) NULL,
	[CURTYPE] [varchar](2) NULL,
	[SOLD_TO] [varchar](10) NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
	[PAYER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_AZOD_COSA00]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_AZOD_COSA00](
	[FISCPER] [decimal](7, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NOT NULL,
	[/BIC/ZGL_ACNT] [varchar](32) NOT NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[REC_TYPE] [varchar](1) NOT NULL,
	[FISCVARNT] [varchar](2) NOT NULL,
	[/BIC/Z_MXDPAL] [varchar](18) NOT NULL,
	[/BIC/Z_MXDFLG] [varchar](1) NOT NULL,
	[SALESORG] [varchar](4) NOT NULL,
	[CURTYPE] [varchar](2) NOT NULL,
	[SOLD_TO] [varchar](10) NOT NULL,
	[RECORDMODE] [varchar](1) NULL,
	[/BIC/ZBPCAMT] [decimal](17, 3) NULL,
	[DISTR_CHAN] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[SALES_GRP] [varchar](3) NULL,
	[SALES_OFF] [varchar](4) NULL,
	[SALES_DIST] [varchar](6) NULL,
	[BILL_TYPE] [varchar](4) NULL,
	[PRICE_GRP] [varchar](2) NULL,
	[/BIC/Z_PKUN1A] [varchar](10) NULL,
	[VERSION] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[FISCPER] ASC,
	[COMP_CODE] ASC,
	[/BIC/ZGL_ACNT] ASC,
	[MATERIAL] ASC,
	[REC_TYPE] ASC,
	[FISCVARNT] ASC,
	[/BIC/Z_MXDPAL] ASC,
	[/BIC/Z_MXDFLG] ASC,
	[SALESORG] ASC,
	[CURTYPE] ASC,
	[SOLD_TO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_ECC_COSP]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_ECC_COSP](
	[MANDT] [varchar](3) NOT NULL,
	[LEDNR] [varchar](2) NOT NULL,
	[OBJNR] [varchar](22) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[WRTTP] [varchar](2) NOT NULL,
	[VERSN] [varchar](3) NOT NULL,
	[KSTAR] [varchar](10) NOT NULL,
	[HRKFT] [varchar](14) NOT NULL,
	[VRGNG] [varchar](4) NOT NULL,
	[VBUND] [varchar](6) NOT NULL,
	[PARGB] [varchar](4) NOT NULL,
	[BEKNZ] [varchar](1) NOT NULL,
	[TWAER] [varchar](5) NOT NULL,
	[PERBL] [decimal](3, 0) NOT NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[LEDNR] ASC,
	[OBJNR] ASC,
	[GJAHR] ASC,
	[WRTTP] ASC,
	[VERSN] ASC,
	[KSTAR] ASC,
	[HRKFT] ASC,
	[VRGNG] ASC,
	[VBUND] ASC,
	[PARGB] ASC,
	[BEKNZ] ASC,
	[TWAER] ASC,
	[PERBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_ECC_COSS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_ECC_COSS](
	[MANDT] [varchar](3) NULL,
	[LEDNR] [varchar](2) NOT NULL,
	[OBJNR] [varchar](22) NOT NULL,
	[GJAHR] [decimal](4, 0) NOT NULL,
	[WRTTP] [varchar](2) NOT NULL,
	[VERSN] [varchar](3) NOT NULL,
	[KSTAR] [varchar](10) NOT NULL,
	[HRKFT] [varchar](14) NOT NULL,
	[VRGNG] [varchar](4) NOT NULL,
	[PAROB] [varchar](22) NOT NULL,
	[USPOB] [varchar](22) NOT NULL,
	[BEKNZ] [varchar](1) NOT NULL,
	[TWAER] [varchar](5) NOT NULL,
	[PERBL] [decimal](3, 0) NOT NULL,
	[MEINH] [varchar](3) NULL,
	[WTG001] [decimal](15, 2) NULL,
	[WTG002] [decimal](15, 2) NULL,
	[WTG003] [decimal](15, 2) NULL,
	[WTG004] [decimal](15, 2) NULL,
	[WTG005] [decimal](15, 2) NULL,
	[WTG006] [decimal](15, 2) NULL,
	[WTG007] [decimal](15, 2) NULL,
	[WTG008] [decimal](15, 2) NULL,
	[WTG009] [decimal](15, 2) NULL,
	[WTG010] [decimal](15, 2) NULL,
	[WTG011] [decimal](15, 2) NULL,
	[WTG012] [decimal](15, 2) NULL,
	[WTG013] [decimal](15, 2) NULL,
	[WTG014] [decimal](15, 2) NULL,
	[WTG015] [decimal](15, 2) NULL,
	[WTG016] [decimal](15, 2) NULL,
	[WOG001] [decimal](15, 2) NULL,
	[WOG002] [decimal](15, 2) NULL,
	[WOG003] [decimal](15, 2) NULL,
	[WOG004] [decimal](15, 2) NULL,
	[WOG005] [decimal](15, 2) NULL,
	[WOG006] [decimal](15, 2) NULL,
	[WOG007] [decimal](15, 2) NULL,
	[WOG008] [decimal](15, 2) NULL,
	[WOG009] [decimal](15, 2) NULL,
	[WOG010] [decimal](15, 2) NULL,
	[WOG011] [decimal](15, 2) NULL,
	[WOG012] [decimal](15, 2) NULL,
	[WOG013] [decimal](15, 2) NULL,
	[WOG014] [decimal](15, 2) NULL,
	[WOG015] [decimal](15, 2) NULL,
	[WOG016] [decimal](15, 2) NULL,
	[WKG001] [decimal](15, 2) NULL,
	[WKG002] [decimal](15, 2) NULL,
	[WKG003] [decimal](15, 2) NULL,
	[WKG004] [decimal](15, 2) NULL,
	[WKG005] [decimal](15, 2) NULL,
	[WKG006] [decimal](15, 2) NULL,
	[WKG007] [decimal](15, 2) NULL,
	[WKG008] [decimal](15, 2) NULL,
	[WKG009] [decimal](15, 2) NULL,
	[WKG010] [decimal](15, 2) NULL,
	[WKG011] [decimal](15, 2) NULL,
	[WKG012] [decimal](15, 2) NULL,
	[WKG013] [decimal](15, 2) NULL,
	[WKG014] [decimal](15, 2) NULL,
	[WKG015] [decimal](15, 2) NULL,
	[WKG016] [decimal](15, 2) NULL,
	[WKF001] [decimal](15, 2) NULL,
	[WKF002] [decimal](15, 2) NULL,
	[WKF003] [decimal](15, 2) NULL,
	[WKF004] [decimal](15, 2) NULL,
	[WKF005] [decimal](15, 2) NULL,
	[WKF006] [decimal](15, 2) NULL,
	[WKF007] [decimal](15, 2) NULL,
	[WKF008] [decimal](15, 2) NULL,
	[WKF009] [decimal](15, 2) NULL,
	[WKF010] [decimal](15, 2) NULL,
	[WKF011] [decimal](15, 2) NULL,
	[WKF012] [decimal](15, 2) NULL,
	[WKF013] [decimal](15, 2) NULL,
	[WKF014] [decimal](15, 2) NULL,
	[WKF015] [decimal](15, 2) NULL,
	[WKF016] [decimal](15, 2) NULL,
	[PAG001] [decimal](15, 2) NULL,
	[PAG002] [decimal](15, 2) NULL,
	[PAG003] [decimal](15, 2) NULL,
	[PAG004] [decimal](15, 2) NULL,
	[PAG005] [decimal](15, 2) NULL,
	[PAG006] [decimal](15, 2) NULL,
	[PAG007] [decimal](15, 2) NULL,
	[PAG008] [decimal](15, 2) NULL,
	[PAG009] [decimal](15, 2) NULL,
	[PAG010] [decimal](15, 2) NULL,
	[PAG011] [decimal](15, 2) NULL,
	[PAG012] [decimal](15, 2) NULL,
	[PAG013] [decimal](15, 2) NULL,
	[PAG014] [decimal](15, 2) NULL,
	[PAG015] [decimal](15, 2) NULL,
	[PAG016] [decimal](15, 2) NULL,
	[PAF001] [decimal](15, 2) NULL,
	[PAF002] [decimal](15, 2) NULL,
	[PAF003] [decimal](15, 2) NULL,
	[PAF004] [decimal](15, 2) NULL,
	[PAF005] [decimal](15, 2) NULL,
	[PAF006] [decimal](15, 2) NULL,
	[PAF007] [decimal](15, 2) NULL,
	[PAF008] [decimal](15, 2) NULL,
	[PAF009] [decimal](15, 2) NULL,
	[PAF010] [decimal](15, 2) NULL,
	[PAF011] [decimal](15, 2) NULL,
	[PAF012] [decimal](15, 2) NULL,
	[PAF013] [decimal](15, 2) NULL,
	[PAF014] [decimal](15, 2) NULL,
	[PAF015] [decimal](15, 2) NULL,
	[PAF016] [decimal](15, 2) NULL,
	[MEG001] [decimal](15, 3) NULL,
	[MEG002] [decimal](15, 3) NULL,
	[MEG003] [decimal](15, 3) NULL,
	[MEG004] [decimal](15, 3) NULL,
	[MEG005] [decimal](15, 3) NULL,
	[MEG006] [decimal](15, 3) NULL,
	[MEG007] [decimal](15, 3) NULL,
	[MEG008] [decimal](15, 3) NULL,
	[MEG009] [decimal](15, 3) NULL,
	[MEG010] [decimal](15, 3) NULL,
	[MEG011] [decimal](15, 3) NULL,
	[MEG012] [decimal](15, 3) NULL,
	[MEG013] [decimal](15, 3) NULL,
	[MEG014] [decimal](15, 3) NULL,
	[MEG015] [decimal](15, 3) NULL,
	[MEG016] [decimal](15, 3) NULL,
	[MEF001] [decimal](15, 3) NULL,
	[MEF002] [decimal](15, 3) NULL,
	[MEF003] [decimal](15, 3) NULL,
	[MEF004] [decimal](15, 3) NULL,
	[MEF005] [decimal](15, 3) NULL,
	[MEF006] [decimal](15, 3) NULL,
	[MEF007] [decimal](15, 3) NULL,
	[MEF008] [decimal](15, 3) NULL,
	[MEF009] [decimal](15, 3) NULL,
	[MEF010] [decimal](15, 3) NULL,
	[MEF011] [decimal](15, 3) NULL,
	[MEF012] [decimal](15, 3) NULL,
	[MEF013] [decimal](15, 3) NULL,
	[MEF014] [decimal](15, 3) NULL,
	[MEF015] [decimal](15, 3) NULL,
	[MEF016] [decimal](15, 3) NULL,
	[MUV001] [varchar](1) NULL,
	[MUV002] [varchar](1) NULL,
	[MUV003] [varchar](1) NULL,
	[MUV004] [varchar](1) NULL,
	[MUV005] [varchar](1) NULL,
	[MUV006] [varchar](1) NULL,
	[MUV007] [varchar](1) NULL,
	[MUV008] [varchar](1) NULL,
	[MUV009] [varchar](1) NULL,
	[MUV010] [varchar](1) NULL,
	[MUV011] [varchar](1) NULL,
	[MUV012] [varchar](1) NULL,
	[MUV013] [varchar](1) NULL,
	[MUV014] [varchar](1) NULL,
	[MUV015] [varchar](1) NULL,
	[MUV016] [varchar](1) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SEGMENT] [varchar](10) NULL,
	[GEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[LEDNR] ASC,
	[OBJNR] ASC,
	[GJAHR] ASC,
	[WRTTP] ASC,
	[VERSN] ASC,
	[KSTAR] ASC,
	[HRKFT] ASC,
	[VRGNG] ASC,
	[PAROB] ASC,
	[USPOB] ASC,
	[BEKNZ] ASC,
	[TWAER] ASC,
	[PERBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_FT_BS_GLT0]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_FT_BS_GLT0](
	[RCLNT] [varchar](3) NOT NULL,
	[RLDNR] [varchar](2) NOT NULL,
	[RRCTY] [varchar](1) NOT NULL,
	[RVERS] [varchar](3) NOT NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[RYEAR] [decimal](4, 0) NOT NULL,
	[RACCT] [varchar](10) NOT NULL,
	[RBUSA] [varchar](4) NOT NULL,
	[RTCUR] [varchar](5) NOT NULL,
	[DRCRK] [varchar](1) NOT NULL,
	[RPMAX] [decimal](3, 0) NOT NULL,
	[TSLVT] [decimal](15, 2) NULL,
	[TSL01] [decimal](15, 2) NULL,
	[TSL02] [decimal](15, 2) NULL,
	[TSL03] [decimal](15, 2) NULL,
	[TSL04] [decimal](15, 2) NULL,
	[TSL05] [decimal](15, 2) NULL,
	[TSL06] [decimal](15, 2) NULL,
	[TSL07] [decimal](15, 2) NULL,
	[TSL08] [decimal](15, 2) NULL,
	[TSL09] [decimal](15, 2) NULL,
	[TSL10] [decimal](15, 2) NULL,
	[TSL11] [decimal](15, 2) NULL,
	[TSL12] [decimal](15, 2) NULL,
	[TSL13] [decimal](15, 2) NULL,
	[TSL14] [decimal](15, 2) NULL,
	[TSL15] [decimal](15, 2) NULL,
	[TSL16] [decimal](15, 2) NULL,
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
	[CSPRED] [varchar](4) NULL,
	[KSLVT] [decimal](15, 2) NULL,
	[KSL01] [decimal](15, 2) NULL,
	[KSL02] [decimal](15, 2) NULL,
	[KSL03] [decimal](15, 2) NULL,
	[KSL04] [decimal](15, 2) NULL,
	[KSL05] [decimal](15, 2) NULL,
	[KSL06] [decimal](15, 2) NULL,
	[KSL07] [decimal](15, 2) NULL,
	[KSL08] [decimal](15, 2) NULL,
	[KSL09] [decimal](15, 2) NULL,
	[KSL10] [decimal](15, 2) NULL,
	[KSL11] [decimal](15, 2) NULL,
	[KSL12] [decimal](15, 2) NULL,
	[KSL13] [decimal](15, 2) NULL,
	[KSL14] [decimal](15, 2) NULL,
	[KSL15] [decimal](15, 2) NULL,
	[KSL16] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[RCLNT] ASC,
	[RLDNR] ASC,
	[RRCTY] ASC,
	[RVERS] ASC,
	[BUKRS] ASC,
	[RYEAR] ASC,
	[RACCT] ASC,
	[RBUSA] ASC,
	[RTCUR] ASC,
	[DRCRK] ASC,
	[RPMAX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_PTRV_HEAD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_PTRV_HEAD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NOT NULL,
	[MOLGA] [varchar](2) NULL,
	[MOREI] [varchar](2) NULL,
	[SCHEM] [varchar](2) NULL,
	[KZREA] [varchar](1) NULL,
	[BEREI] [varchar](1) NULL,
	[KZTKT] [varchar](1) NULL,
	[ZORT1] [varchar](59) NULL,
	[ZLAND] [varchar](3) NULL,
	[HRGIO] [varchar](5) NULL,
	[NDNST] [varchar](25) NULL,
	[KUNDE] [varchar](59) NULL,
	[DATV1] [date] NULL,
	[UHRV1] [time](7) NULL,
	[DATB1] [date] NULL,
	[UHRB1] [varchar](24) NULL,
	[DATH1] [date] NULL,
	[UHRH1] [time](7) NULL,
	[DATR1] [date] NULL,
	[UHRR1] [time](7) NULL,
	[AGRZ1] [varchar](3) NULL,
	[GRGIO] [varchar](5) NULL,
	[GRBER] [varchar](1) NULL,
	[UZKVG] [varchar](1) NULL,
	[ZUSAG] [varchar](25) NULL,
	[ENDRG] [date] NULL,
	[DEPAR] [varchar](1) NULL,
	[ARRVL] [varchar](1) NULL,
	[RETRN] [varchar](1) NULL,
	[DATES] [date] NULL,
	[TIMES] [time](7) NULL,
	[UNAME] [varchar](12) NULL,
	[REPID] [varchar](40) NULL,
	[DANTN] [decimal](10, 0) NULL,
	[FINTN] [decimal](10, 0) NULL,
	[REQUEST] [varchar](1) NULL,
	[TRAVEL_PLAN] [varchar](1) NULL,
	[EXPENSES] [varchar](1) NULL,
	[ST_TRGTG] [date] NULL,
	[ST_TRGALL] [date] NULL,
	[PERIODENART] [varchar](1) NULL,
	[DAT_REDUC1] [date] NULL,
	[DAT_REDUC2] [date] NULL,
	[DATV1_DIENST] [date] NULL,
	[UHRV1_DIENST] [time](7) NULL,
	[DATB1_DIENST] [date] NULL,
	[UHRB1_DIENST] [time](7) NULL,
	[ABORDNUNG] [decimal](10, 0) NULL,
	[ST_TRG_TYP] [varchar](1) NULL,
	[ST_WOHN_TYP] [varchar](1) NULL,
	[KEIN_REISEGELD] [varchar](1) NULL,
	[TAX_PER_DIEM] [varchar](1) NULL,
	[TAX_PD_MAN] [varchar](1) NULL,
	[TAX_OV_MAN] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[HDVRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_PTRV_PERIO]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_PTRV_PERIO](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[PDVRS] [decimal](2, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NULL,
	[PDATV] [date] NULL,
	[PUHRV] [time](7) NULL,
	[PDATB] [date] NULL,
	[PUHRB] [varchar](24) NULL,
	[DRUCK] [varchar](1) NULL,
	[ANTRG] [varchar](1) NULL,
	[ABREC] [varchar](1) NULL,
	[UEBLG] [varchar](1) NULL,
	[UEBRF] [varchar](1) NULL,
	[UEBDT] [varchar](1) NULL,
	[TLOCK] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ABRJ1] [decimal](4, 0) NULL,
	[ABRP1] [decimal](2, 0) NULL,
	[PERM1] [varchar](2) NULL,
	[ABKR1] [varchar](2) NULL,
	[BEGP1] [date] NULL,
	[ENDP1] [date] NULL,
	[ABRJ2] [decimal](4, 0) NULL,
	[ABRP2] [decimal](2, 0) NULL,
	[PERM2] [varchar](2) NULL,
	[ABKR2] [varchar](2) NULL,
	[BEGP2] [date] NULL,
	[ENDP2] [date] NULL,
	[ACCDT] [date] NULL,
	[ACCTM] [time](7) NULL,
	[RUNID] [decimal](10, 0) NULL,
	[VERPA] [varchar](1) NULL,
	[UEBKZ] [varchar](1) NULL,
	[ANUEP] [decimal](2, 0) NULL,
	[NO_MILES] [varchar](1) NULL,
	[LSTAY] [varchar](1) NULL,
	[TR_DOPP_ANZAHL] [decimal](3, 0) NULL,
	[TR_EINF_ANZAHL] [decimal](3, 0) NULL,
	[TR_ENTFERNUNG] [decimal](5, 0) NULL,
	[VU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[VU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[VU_EA_ENTFERN] [decimal](5, 0) NULL,
	[VU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[NU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[NU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[NU_EA_ENTFERN] [decimal](5, 0) NULL,
	[NU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[V_UNENTGELTLICH] [varchar](1) NULL,
	[U_UNENTGELTLICH] [varchar](1) NULL,
	[REDUC_ERGRU] [varchar](2) NULL,
	[NOT_PAID] [varchar](1) NULL,
	[WEG_ERH_MAX] [varchar](1) NULL,
	[ERH_DIENST_INT] [varchar](1) NULL,
	[ENTF_WO_DO] [varchar](1) NULL,
	[DRITTMITTEL] [varchar](1) NULL,
	[ANTRAG_GWE] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[PDVRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_PTRV_SADD]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_PTRV_SADD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[RECEIPTNO] [varchar](3) NOT NULL,
	[NO_BRFT] [decimal](2, 0) NULL,
	[COUNTRY] [varchar](3) NULL,
	[REGION] [varchar](5) NULL,
	[TT_COMSP] [varchar](1) NULL,
	[FROM_DATE] [date] NULL,
	[TO_DATE] [date] NULL,
	[MULTIPLI] [decimal](3, 0) NULL,
	[DESCRIPT] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[BUS_PURPO] [varchar](50) NULL,
	[BUS_REASON] [varchar](50) NULL,
	[CCOMP] [varchar](2) NULL,
	[C_DOC] [varchar](20) NULL,
	[C_TXT] [varchar](50) NULL,
	[P_CTG] [varchar](1) NULL,
	[P_PRV] [varchar](3) NULL,
	[P_DOC] [varchar](20) NULL,
	[N_STF] [varchar](3) NULL,
	[N_PTN] [varchar](3) NULL,
	[N_GST] [varchar](3) NULL,
	[ANZLU_DEC] [decimal](3, 0) NULL,
	[ANZDI_DEC] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[RECEIPTNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_PTRV_SCOS]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_PTRV_SCOS](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[COSTSEQNO] [decimal](2, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[INTERNAL_ORDER] [varchar](12) NULL,
	[COST_OBJ] [varchar](12) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[NETWORK] [varchar](12) NULL,
	[ACTIVITY] [varchar](4) NULL,
	[SALES_ORD] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[CO_BUSPROC] [varchar](12) NULL,
	[FUNDS_CTR] [varchar](16) NULL,
	[CMMT_ITEM] [varchar](14) NULL,
	[FUND] [varchar](10) NULL,
	[ALLOC_AMOUNT] [decimal](15, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[CMMT_ITEM_LONG] [varchar](24) NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[PROJECT_EXT_ID] [varchar](24) NULL,
	[TASK_ROLE_GUID] [varchar](32) NULL,
	[TASK_ROLE_EXT_ID] [varchar](24) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[COSTSEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_PTRV_SHDR]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_PTRV_SHDR](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[SEQNO] [decimal](2, 0) NOT NULL,
	[ADDIT_AMNT] [decimal](13, 2) NULL,
	[SUM_REIMBU] [decimal](13, 2) NULL,
	[SUM_ADVANC] [decimal](13, 2) NULL,
	[SUM_PAYOUT] [decimal](13, 2) NULL,
	[SUM_PAIDCO] [decimal](13, 2) NULL,
	[TRIP_TOTAL] [decimal](13, 2) NULL,
	[PD_FOOD] [decimal](13, 2) NULL,
	[PD_HOUSING] [decimal](13, 2) NULL,
	[PD_MILEAGE] [decimal](13, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[M_TOTAL] [decimal](5, 0) NULL,
	[TRIPDUR] [decimal](4, 0) NULL,
	[CHNGDATE] [date] NULL,
	[CHNGTIME] [time](7) NULL,
	[TXF_FOOD] [decimal](13, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[SEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_PTRV_SREC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_PTRV_SREC](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[RECEIPTNO] [varchar](3) NOT NULL,
	[SEQNO] [decimal](2, 0) NOT NULL,
	[DED_FLAG] [varchar](1) NULL,
	[PAID_COM] [varchar](1) NULL,
	[EXP_TYPE] [varchar](4) NULL,
	[REC_AMOUNT] [decimal](13, 2) NULL,
	[REC_CURR] [varchar](5) NULL,
	[REC_RATE] [decimal](9, 5) NULL,
	[LOC_AMOUNT] [decimal](13, 2) NULL,
	[LOC_CURR] [varchar](5) NULL,
	[TAX_CODE] [varchar](2) NULL,
	[REC_DATE] [date] NULL,
	[SHORTTXT] [varchar](10) NULL,
	[ABOVE_LIMIT] [varchar](1) NULL,
	[PAPER_RECEIPT] [varchar](1) NULL,
	[RECEIPT_OK] [varchar](1) NULL,
	[PAYOT] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[RECEIPTNO] ASC,
	[SEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_STKO_FULL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_STKO_FULL](
	[MANDT] [varchar](3) NOT NULL,
	[STLTY] [varchar](1) NOT NULL,
	[STLNR] [varchar](8) NOT NULL,
	[STLAL] [varchar](2) NOT NULL,
	[STKOZ] [decimal](8, 0) NOT NULL,
	[DATUV] [date] NULL,
	[TECHV] [varchar](12) NULL,
	[AENNR] [varchar](12) NULL,
	[LKENZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[VGKZL] [decimal](8, 0) NULL,
	[ANDAT] [date] NULL,
	[ANNAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[BMEIN] [varchar](3) NULL,
	[BMENG] [decimal](13, 3) NULL,
	[CADKZ] [varchar](1) NULL,
	[LABOR] [varchar](3) NULL,
	[LTXSP] [varchar](1) NULL,
	[STKTX] [varchar](40) NULL,
	[STLST] [decimal](2, 0) NULL,
	[WRKAN] [varchar](4) NULL,
	[DVDAT] [date] NULL,
	[DVNAM] [varchar](12) NULL,
	[AEHLP] [decimal](2, 0) NULL,
	[ALEKZ] [varchar](1) NULL,
	[GUIDX] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STKOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_T001G]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_T001G](
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[PROGRAMM] [varchar](40) NOT NULL,
	[TXTID] [varchar](2) NOT NULL,
	[TXTKO] [varchar](16) NULL,
	[TXTFU] [varchar](16) NULL,
	[TXTUN] [varchar](16) NULL,
	[TXTAB] [varchar](16) NULL,
	[TTXID] [varchar](4) NULL,
	[HEADER] [varchar](30) NULL,
	[FOOTER] [varchar](30) NULL,
	[SENDER] [varchar](30) NULL,
	[GREETINGS] [varchar](30) NULL,
	[LOGO] [varchar](255) NULL,
	[GRAPH] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BUKRS] ASC,
	[PROGRAMM] ASC,
	[TXTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_T001W]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_T001W](
	[MANDT] [varchar](3) NULL,
	[WERKS] [varchar](4) NOT NULL,
	[NAME1] [varchar](30) NULL,
	[BWKEY] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LIFNR] [varchar](10) NULL,
	[FABKL] [varchar](2) NULL,
	[NAME2] [varchar](30) NULL,
	[STRAS] [varchar](30) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[ORT01] [varchar](25) NULL,
	[EKORG] [varchar](4) NULL,
	[VKORG] [varchar](4) NULL,
	[CHAZV] [varchar](1) NULL,
	[KKOWK] [varchar](1) NULL,
	[KORDB] [varchar](1) NULL,
	[BEDPL] [varchar](1) NULL,
	[LAND1] [varchar](3) NULL,
	[REGIO] [varchar](3) NULL,
	[COUNC] [varchar](3) NULL,
	[CITYC] [varchar](4) NULL,
	[ADRNR] [varchar](10) NULL,
	[IWERK] [varchar](4) NULL,
	[TXJCD] [varchar](15) NULL,
	[VTWEG] [varchar](2) NULL,
	[SPART] [varchar](2) NULL,
	[SPRAS] [varchar](1) NULL,
	[WKSOP] [varchar](1) NULL,
	[AWSLS] [varchar](6) NULL,
	[CHAZV_OLD] [varchar](1) NULL,
	[VLFKZ] [varchar](1) NULL,
	[BZIRK] [varchar](6) NULL,
	[ZONE1] [varchar](10) NULL,
	[TAXIW] [varchar](1) NULL,
	[BZQHL] [varchar](1) NULL,
	[LET01] [decimal](3, 0) NULL,
	[LET02] [decimal](3, 0) NULL,
	[LET03] [decimal](3, 0) NULL,
	[TXNAM_MA1] [varchar](16) NULL,
	[TXNAM_MA2] [varchar](16) NULL,
	[TXNAM_MA3] [varchar](16) NULL,
	[BETOL] [decimal](3, 0) NULL,
	[J_1BBRANCH] [varchar](4) NULL,
	[VTBFI] [varchar](2) NULL,
	[FPRFW] [varchar](3) NULL,
	[ACHVM] [varchar](1) NULL,
	[DVSART] [varchar](1) NULL,
	[NODETYPE] [varchar](3) NULL,
	[NSCHEMA] [varchar](4) NULL,
	[PKOSA] [varchar](1) NULL,
	[MISCH] [varchar](1) NULL,
	[MGVUPD] [varchar](1) NULL,
	[VSTEL] [varchar](4) NULL,
	[MGVLAUPD] [varchar](1) NULL,
	[MGVLAREVAL] [varchar](1) NULL,
	[SOURCING] [varchar](1) NULL,
	[OILIVAL] [varchar](1) NULL,
	[OIHVTYPE] [varchar](1) NULL,
	[OIHCREDIPI] [varchar](1) NULL,
	[STORETYPE] [varchar](1) NULL,
	[DEP_STORE] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_ZBB_BALANCE_SHEET_2]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_ZBB_BALANCE_SHEET_2](
	[TRID_IMPORT_BLSHT] [varchar](255) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[GL_ACCOUNT] [varchar](12) NULL,
	[AMOUNT] [decimal](15, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[FISCAL_YEAR_PERIOD] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_ZBB_BALANCE_SHEET_2_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_ZBB_BALANCE_SHEET_2_1](
	[TRID_IMPORT_BLSHT] [varchar](255) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[GL_ACCOUNT] [varchar](12) NULL,
	[AMOUNT] [decimal](15, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[FISCAL_YEAR_PERIOD] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_ZBB_BIC]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_ZBB_BIC](
	[BRAND] [varchar](255) NULL,
	[ACCOUNT] [varchar](255) NULL,
	[VERSION] [varchar](255) NULL,
	[ENTITY] [varchar](255) NULL,
	[CHANNEL] [varchar](255) NULL,
	[YEAR] [varchar](4) NULL,
	[MONTH] [varchar](2) NULL,
	[TOTAL_AMOUNT] [decimal](38, 2) NULL,
	[PERIOD_YEAR] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_ZRECONCILER]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_ZRECONCILER](
	[MANDT] [varchar](3) NULL,
	[ZSTOKEY] [varchar](12) NOT NULL,
	[ZVBELN] [varchar](10) NULL,
	[ZSOSYS] [varchar](3) NULL,
	[ZEBELN] [varchar](10) NULL,
	[ZPOSYS] [varchar](3) NULL,
	[ZSHIPLOC] [varchar](4) NULL,
	[ZDESTLOC] [varchar](4) NULL,
	[ZSHIPDATE] [date] NULL,
	[ZDELVDATE] [date] NULL,
	[ZSRCSTAT] [varchar](12) NULL,
	[ZDESSTAT] [varchar](12) NULL,
	[ZSTATDESC] [varchar](15) NULL,
	[ZERRDESC] [varchar](15) NULL,
	[ERDAT] [date] NULL,
	[ERZET] [time](7) NULL,
	[UPDAT] [date] NULL,
	[UPZET] [time](7) NULL,
	[COMMENTS] [varchar](255) NULL,
	[LOAD_DATE] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ZSTOKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[T001_TEST]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[T001_TEST](
	[MANDT] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[BUTXT] [varchar](25) NULL,
	[ORT01] [varchar](25) NULL,
	[LAND1] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[WAABW] [decimal](2, 0) NULL,
	[PERIV] [varchar](2) NULL,
	[KOKFI] [varchar](1) NULL,
	[RCOMP] [varchar](6) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[FIKRS] [varchar](4) NULL,
	[XFMCO] [varchar](1) NULL,
	[XFMCB] [varchar](1) NULL,
	[XFMCA] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[FMHRDATE] [date] NULL,
	[BUVAR] [varchar](1) NULL,
	[FDBUK] [varchar](4) NULL,
	[XFDIS] [varchar](1) NULL,
	[XVALV] [varchar](1) NULL,
	[XSKFN] [varchar](1) NULL,
	[KKBER] [varchar](4) NULL,
	[XMWSN] [varchar](1) NULL,
	[MREGL] [varchar](4) NULL,
	[XGSBE] [varchar](1) NULL,
	[XGJRV] [varchar](1) NULL,
	[XKDFT] [varchar](1) NULL,
	[XPROD] [varchar](1) NULL,
	[XEINK] [varchar](1) NULL,
	[XJVAA] [varchar](1) NULL,
	[XVVWA] [varchar](1) NULL,
	[XSLTA] [varchar](1) NULL,
	[XFDMM] [varchar](1) NULL,
	[XFDSD] [varchar](1) NULL,
	[XEXTB] [varchar](1) NULL,
	[EBUKR] [varchar](4) NULL,
	[KTOP2] [varchar](4) NULL,
	[UMKRS] [varchar](4) NULL,
	[BUKRS_GLOB] [varchar](6) NULL,
	[FSTVA] [varchar](4) NULL,
	[OPVAR] [varchar](4) NULL,
	[XCOVR] [varchar](1) NULL,
	[TXKRS] [varchar](1) NULL,
	[WFVAR] [varchar](4) NULL,
	[XBBBF] [varchar](1) NULL,
	[XBBBE] [varchar](1) NULL,
	[XBBBA] [varchar](1) NULL,
	[XBBKO] [varchar](1) NULL,
	[XSTDT] [varchar](1) NULL,
	[MWSKV] [varchar](2) NULL,
	[MWSKA] [varchar](2) NULL,
	[IMPDA] [varchar](1) NULL,
	[XNEGP] [varchar](1) NULL,
	[XKKBI] [varchar](1) NULL,
	[WT_NEWWT] [varchar](1) NULL,
	[PP_PDATE] [varchar](1) NULL,
	[INFMT] [varchar](4) NULL,
	[FSTVARE] [varchar](4) NULL,
	[KOPIM] [varchar](1) NULL,
	[DKWEG] [varchar](1) NULL,
	[OFFSACCT] [decimal](1, 0) NULL,
	[BAPOVAR] [varchar](2) NULL,
	[XCOS] [varchar](1) NULL,
	[XCESSION] [varchar](1) NULL,
	[XSPLT] [varchar](1) NULL,
	[SURCCM] [varchar](1) NULL,
	[DTPROV] [varchar](2) NULL,
	[DTAMTC] [varchar](2) NULL,
	[DTTAXC] [varchar](2) NULL,
	[DTTDSP] [varchar](2) NULL,
	[DTAXR] [varchar](4) NULL,
	[XVATDATE] [varchar](1) NULL,
	[FM_DERIVE_ACC] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_BIC_LA_ANP_DIST_MAPPING]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_BIC_LA_ANP_DIST_MAPPING](
	[TEXT] [varchar](255) NULL,
	[MAPPING_TEXT] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_BIC_LA_ANP_DIST_TOOL]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_BIC_LA_ANP_DIST_TOOL](
	[ION] [varchar](20) NULL,
	[BRAND] [varchar](255) NULL,
	[ACCOUNT] [varchar](255) NULL,
	[ENTITY] [varchar](255) NULL,
	[VERSION] [varchar](255) NULL,
	[MONTH] [varchar](2) NULL,
	[YEAR] [varchar](4) NULL,
	[CHANNEL] [varchar](255) NULL,
	[TOTAL_AMOUNT] [decimal](28, 2) NULL,
	[CREATION_DATE] [datetime2](7) NULL,
	[CREATE_BY] [varchar](20) NULL,
	[LAST_UPDATED_BY] [varchar](20) NULL,
	[LAST_UPDATE_DATE] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_BICLLA_ANP_DIST_FILTER]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_BICLLA_ANP_DIST_FILTER](
	[VERSION] [varchar](255) NULL,
	[YEAR] [varchar](4) NULL,
	[MONTH] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Temp_To_Delete_1_5]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Temp_To_Delete_1_5](
	[VER] [varchar](10) NOT NULL,
	[PD] [varchar](10) NOT NULL,
	[ION_CD] [varchar](12) NOT NULL,
	[ACCT_CD] [varchar](10) NOT NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[AMT] [decimal](18, 12) NULL,
PRIMARY KEY CLUSTERED 
(
	[VER] ASC,
	[PD] ASC,
	[ION_CD] ASC,
	[ACCT_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Temp_To_Delete_1_5_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Temp_To_Delete_1_5_1](
	[VER] [varchar](10) NOT NULL,
	[PD] [varchar](10) NOT NULL,
	[ION_CD] [varchar](12) NOT NULL,
	[ACCT_CD] [varchar](10) NOT NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[AMT] [decimal](18, 12) NULL,
PRIMARY KEY CLUSTERED 
(
	[VER] ASC,
	[PD] ASC,
	[ION_CD] ASC,
	[ACCT_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP22_KLA_FT_BS_2_3]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP22_KLA_FT_BS_2_3](
	[SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[BUKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP22_KLA_FT_BS_2_4]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP22_KLA_FT_BS_2_4](
	[SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[BUKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP22_KLA_FT_BS_2_5]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP22_KLA_FT_BS_2_5](
	[SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[BUKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP22_KLA_FT_BS_2_6]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP22_KLA_FT_BS_2_6](
	[SETNAME] [varchar](24) NULL,
	[LVL1_SETNAME] [varchar](24) NULL,
	[BUKRS] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP22_KLA_FT_BS_3]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP22_KLA_FT_BS_3](
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
	[SAKNR_PNL_ACCNT] [varchar](10) NULL,
	[PERIOD_YEAR] [varchar](10) NULL,
	[Period_Default_Date] [date] NULL,
	[SAKNR_PEN_ACCNT] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP22_KLA_FT_BS_3_1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP22_KLA_FT_BS_3_1](
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
	[SAKNR_PNL_ACCNT] [varchar](10) NULL,
	[PERIOD_YEAR] [varchar](10) NULL,
	[Period_Default_Date] [date] NULL,
	[SAKNR_PEN_ACCNT] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZCOIO_PRORD_LIST]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZCOIO_PRORD_LIST](
	[MANDT] [varchar](3) NOT NULL,
	[SNO] [int] NOT NULL,
	[ERDAT] [date] NOT NULL,
	[UNAME] [varchar](12) NULL,
	[AUFNR] [varchar](12) NULL,
	[PLNT_CD] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[MTART] [varchar](4) NULL,
	[MAKTX] [varchar](40) NULL,
	[PSTNG_DT] [date] NULL,
	[MV_TYPE] [varchar](3) NULL,
	[QTY_UNITS] [decimal](13, 3) NULL,
	[UOM] [varchar](3) NULL,
	[AMT_LC] [decimal](13, 3) NULL,
	[CURR_LC] [varchar](5) NULL,
	[STD_PRICE] [decimal](13, 3) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[SNO] ASC,
	[ERDAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZIPCODE1]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZIPCODE1](
	[Address] [varchar](38) NULL,
	[City] [varchar](20) NULL,
	[Post Code] [varchar](8) NULL,
	[ID] [varchar](9) NULL,
	[Store] [varchar](61) NULL,
	[Key Account] [varchar](20) NULL,
	[Territory] [varchar](7) NULL,
	[Country] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZIPCODE2]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZIPCODE2](
	[id] [int] NULL,
	[postcode] [varchar](8) NULL,
	[latitude] [decimal](10, 3) NULL,
	[longitude] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ZIPCODES]    Script Date: 11/20/2018 5:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ZIPCODES](
	[Address] [varchar](38) NULL,
	[City] [varchar](20) NULL,
	[Post Code] [varchar](8) NULL,
	[ID] [varchar](9) NULL,
	[Store] [varchar](61) NULL,
	[Key Account] [varchar](20) NULL,
	[Territory] [varchar](7) NULL,
	[Country] [varchar](5) NULL,
	[latitude] [decimal](10, 3) NULL,
	[longitude] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COSP_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE CLUSTERED INDEX [COSP_IX] ON [dbo].[COSP]
(
	[LEDNR] ASC,
	[OBJNR] ASC,
	[GJAHR] ASC,
	[WRTTP] ASC,
	[VERSN] ASC,
	[KSTAR] ASC,
	[HRKFT] ASC,
	[VRGNG] ASC,
	[VBUND] ASC,
	[PARGB] ASC,
	[BEKNZ] ASC,
	[TWAER] ASC,
	[PERBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COSS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE CLUSTERED INDEX [COSS_IX] ON [dbo].[COSS]
(
	[LEDNR] ASC,
	[OBJNR] ASC,
	[GJAHR] ASC,
	[WRTTP] ASC,
	[VERSN] ASC,
	[KSTAR] ASC,
	[HRKFT] ASC,
	[VRGNG] ASC,
	[PAROB] ASC,
	[USPOB] ASC,
	[BEKNZ] ASC,
	[TWAER] ASC,
	[PERBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ADRC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [ADRC_IX] ON [dbo].[ADRC]
(
	[ADDRNUMBER] ASC,
	[DATE_FROM] ASC,
	[NATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ADRC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [ADRC_IX] ON [dbo].[ADRC_OLD]
(
	[ADDRNUMBER] ASC,
	[DATE_FROM] ASC,
	[NATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPC_IX] ON [dbo].[CEPC]
(
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPC_IX] ON [dbo].[CEPC_OLD]
(
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPCT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPCT_IX] ON [dbo].[CEPCT]
(
	[SPRAS] ASC,
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CEPCT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CEPCT_IX] ON [dbo].[CEPCT_OLD]
(
	[SPRAS] ASC,
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CKIS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CKIS_IX] ON [dbo].[CKIS]
(
	[LEDNR] ASC,
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC,
	[POSNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CKIS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CKIS_IX] ON [dbo].[CKIS_OLD]
(
	[LEDNR] ASC,
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC,
	[POSNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COAS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [COAS_IX] ON [dbo].[COAS]
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COAS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [COAS_IX] ON [dbo].[COAS_OLD]
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CRHD_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CRHD_IX] ON [dbo].[CRHD]
(
	[OBJTY] ASC,
	[OBJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CRHD_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CRHD_IX] ON [dbo].[CRHD_OLD]
(
	[OBJTY] ASC,
	[OBJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CRTX_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CRTX_IX] ON [dbo].[CRTX]
(
	[OBJTY] ASC,
	[OBJID] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CRTX_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CRTX_IX] ON [dbo].[CRTX_OLD]
(
	[OBJTY] ASC,
	[OBJID] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKA_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKA_IX] ON [dbo].[CSKA]
(
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKA_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKA_IX] ON [dbo].[CSKA_OLD]
(
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKB_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKB_IX] ON [dbo].[CSKB]
(
	[KOKRS] ASC,
	[KSTAR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKB_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKB_IX] ON [dbo].[CSKB_OLD]
(
	[KOKRS] ASC,
	[KSTAR] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKS_IX] ON [dbo].[CSKS]
(
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKS_IX] ON [dbo].[CSKS_OLD]
(
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKT_IX] ON [dbo].[CSKT]
(
	[SPRAS] ASC,
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKT_IX] ON [dbo].[CSKT_OLD]
(
	[SPRAS] ASC,
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKU_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKU_IX] ON [dbo].[CSKU]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CSKU_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [CSKU_IX] ON [dbo].[CSKU_OLD]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EORD_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [EORD_IX] ON [dbo].[EORD]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[ZEORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EORD_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [EORD_IX] ON [dbo].[EORD_OLD]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[ZEORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KEKO_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KEKO_IX] ON [dbo].[KEKO]
(
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KEKO_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KEKO_IX] ON [dbo].[KEKO_OLD]
(
	[BZOBJ] ASC,
	[KALNR] ASC,
	[KALKA] ASC,
	[KADKY] ASC,
	[TVERS] ASC,
	[BWVAR] ASC,
	[KKZMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNA1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNA1_IX] ON [dbo].[KNA1]
(
	[KUNNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNA1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNA1_IX] ON [dbo].[KNA1_OLD]
(
	[KUNNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB1_IX] ON [dbo].[KNB1]
(
	[KUNNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB1_IX] ON [dbo].[KNB1_OLD]
(
	[KUNNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB5_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB5_IX] ON [dbo].[KNB5]
(
	[KUNNR] ASC,
	[BUKRS] ASC,
	[MABER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNB5_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNB5_IX] ON [dbo].[KNB5_OLD]
(
	[KUNNR] ASC,
	[BUKRS] ASC,
	[MABER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNMT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNMT_IX] ON [dbo].[KNMT]
(
	[VKORG] ASC,
	[VTWEG] ASC,
	[KUNNR] ASC,
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNMT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNMT_IX] ON [dbo].[KNMT_OLD]
(
	[VKORG] ASC,
	[VTWEG] ASC,
	[KUNNR] ASC,
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVH_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVH_IX] ON [dbo].[KNVH]
(
	[HITYP] ASC,
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[DATAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVH_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVH_IX] ON [dbo].[KNVH_OLD]
(
	[HITYP] ASC,
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[DATAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVP_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVP_IX] ON [dbo].[KNVP]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PARVW] ASC,
	[PARZA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVP_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVP_IX] ON [dbo].[KNVP_OLD]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC,
	[PARVW] ASC,
	[PARZA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVV_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVV_IX] ON [dbo].[KNVV]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KNVV_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KNVV_IX] ON [dbo].[KNVV_OLD]
(
	[KUNNR] ASC,
	[VKORG] ASC,
	[VTWEG] ASC,
	[SPART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONH_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONH_IX] ON [dbo].[KONH]
(
	[KNUMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KONH_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [KONH_IX] ON [dbo].[KONH_OLD]
(
	[KNUMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFA1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFA1_IX] ON [dbo].[LFA1]
(
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFA1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFA1_IX] ON [dbo].[LFA1_OLD]
(
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFB1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFB1_IX] ON [dbo].[LFB1]
(
	[LIFNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFB1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFB1_IX] ON [dbo].[LFB1_OLD]
(
	[LIFNR] ASC,
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFM1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFM1_IX] ON [dbo].[LFM1]
(
	[LIFNR] ASC,
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LFM1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [LFM1_IX] ON [dbo].[LFM1_OLD]
(
	[LIFNR] ASC,
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAKT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAKT_IX] ON [dbo].[MAKT]
(
	[MATNR] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAKT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAKT_IX] ON [dbo].[MAKT_OLD]
(
	[MATNR] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARA_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARA_IX] ON [dbo].[MARA]
(
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARA_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARA_IX] ON [dbo].[MARA_OLD]
(
	[MATNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARC_IX] ON [dbo].[MARC]
(
	[MATNR] ASC,
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARC_IX] ON [dbo].[MARC_OLD]
(
	[MATNR] ASC,
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARM_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARM_IX] ON [dbo].[MARM]
(
	[MATNR] ASC,
	[MEINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MARM_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MARM_IX] ON [dbo].[MARM_OLD]
(
	[MATNR] ASC,
	[MEINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAST_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAST_IX] ON [dbo].[MAST]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[STLAN] ASC,
	[STLNR] ASC,
	[STLAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MAST_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MAST_IX] ON [dbo].[MAST_OLD]
(
	[MATNR] ASC,
	[WERKS] ASC,
	[STLAN] ASC,
	[STLNR] ASC,
	[STLAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MBEW_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MBEW_IX] ON [dbo].[MBEW]
(
	[MATNR] ASC,
	[BWKEY] ASC,
	[BWTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MBEW_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MBEW_IX] ON [dbo].[MBEW_OLD]
(
	[MATNR] ASC,
	[BWKEY] ASC,
	[BWTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MEAN_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MEAN_IX] ON [dbo].[MEAN]
(
	[MATNR] ASC,
	[MEINH] ASC,
	[LFNUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MEAN_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MEAN_IX] ON [dbo].[MEAN_OLD]
(
	[MATNR] ASC,
	[MEINH] ASC,
	[LFNUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MLAN_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MLAN_IX] ON [dbo].[MLAN]
(
	[MATNR] ASC,
	[ALAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MLAN_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MLAN_IX] ON [dbo].[MLAN_OLD]
(
	[MATNR] ASC,
	[ALAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PA0001_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PA0001_IX] ON [dbo].[PA0001]
(
	[PERNR] ASC,
	[SUBTY] ASC,
	[OBJPS] ASC,
	[SPRPS] ASC,
	[ENDDA] ASC,
	[BEGDA] ASC,
	[SEQNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PA0001_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PA0001_IX] ON [dbo].[PA0001_OLD]
(
	[PERNR] ASC,
	[SUBTY] ASC,
	[OBJPS] ASC,
	[SPRPS] ASC,
	[ENDDA] ASC,
	[BEGDA] ASC,
	[SEQNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PA0002_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PA0002_IX] ON [dbo].[PA0002]
(
	[PERNR] ASC,
	[SUBTY] ASC,
	[OBJPS] ASC,
	[SPRPS] ASC,
	[ENDDA] ASC,
	[BEGDA] ASC,
	[SEQNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PA0002_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PA0002_IX] ON [dbo].[PA0002_OLD]
(
	[PERNR] ASC,
	[SUBTY] ASC,
	[OBJPS] ASC,
	[SPRPS] ASC,
	[ENDDA] ASC,
	[BEGDA] ASC,
	[SEQNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADER_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADER_IX] ON [dbo].[SETHEADER]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADER_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADER_IX] ON [dbo].[SETHEADER_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADERT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADERT_IX] ON [dbo].[SETHEADERT]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETHEADERT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETHEADERT_IX] ON [dbo].[SETHEADERT_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LANGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETLEAF_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETLEAF_IX] ON [dbo].[SETLEAF]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETLEAF_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETLEAF_IX] ON [dbo].[SETLEAF_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETNODE_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETNODE_IX] ON [dbo].[SETNODE]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SETNODE_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SETNODE_IX] ON [dbo].[SETNODE_OLD]
(
	[SETCLASS] ASC,
	[SUBCLASS] ASC,
	[SETNAME] ASC,
	[LINEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKA1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKA1_IX] ON [dbo].[SKA1]
(
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKA1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKA1_IX] ON [dbo].[SKA1_OLD]
(
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKAT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKAT_IX] ON [dbo].[SKAT]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKAT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKAT_IX] ON [dbo].[SKAT_OLD]
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKB1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKB1_IX] ON [dbo].[SKB1]
(
	[BUKRS] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SKB1_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [SKB1_IX] ON [dbo].[SKB1_OLD]
(
	[BUKRS] ASC,
	[SAKNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STAS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STAS_IX] ON [dbo].[STAS]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STLKN] ASC,
	[STASZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STAS_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STAS_IX] ON [dbo].[STAS_OLD]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STLKN] ASC,
	[STASZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STKO_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STKO_IX] ON [dbo].[STKO]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STKOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STKO_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STKO_IX] ON [dbo].[STKO_OLD]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLAL] ASC,
	[STKOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STPO_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STPO_IX] ON [dbo].[STPO]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLKN] ASC,
	[STPOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [STPO_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [STPO_IX] ON [dbo].[STPO_OLD]
(
	[STLTY] ASC,
	[STLNR] ASC,
	[STLKN] ASC,
	[STPOZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001_IX] ON [dbo].[T001]
(
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001_IX] ON [dbo].[T001_OLD]
(
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001W_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001W_IX] ON [dbo].[T001W]
(
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T001W_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T001W_IX] ON [dbo].[T001W_OLD]
(
	[WERKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T005T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T005T_IX] ON [dbo].[T005T]
(
	[SPRAS] ASC,
	[LAND1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T005T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T005T_IX] ON [dbo].[T005T_OLD]
(
	[SPRAS] ASC,
	[LAND1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T005U_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T005U_IX] ON [dbo].[T005U]
(
	[SPRAS] ASC,
	[LAND1] ASC,
	[BLAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T005U_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T005U_IX] ON [dbo].[T005U_OLD]
(
	[SPRAS] ASC,
	[LAND1] ASC,
	[BLAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T006_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T006_IX] ON [dbo].[T006]
(
	[MSEHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T006_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T006_IX] ON [dbo].[T006_OLD]
(
	[MSEHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T023T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T023T_IX] ON [dbo].[T023T]
(
	[SPRAS] ASC,
	[MATKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T023T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T023T_IX] ON [dbo].[T023T_OLD]
(
	[SPRAS] ASC,
	[MATKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T024_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T024_IX] ON [dbo].[T024]
(
	[EKGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T024E_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T024E_IX] ON [dbo].[T024E]
(
	[EKORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T077X_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T077X_IX] ON [dbo].[T077X]
(
	[SPRAS] ASC,
	[KTOKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T077X_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T077X_IX] ON [dbo].[T077X_OLD]
(
	[SPRAS] ASC,
	[KTOKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T134T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T134T_IX] ON [dbo].[T134T]
(
	[SPRAS] ASC,
	[MTART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T134T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T134T_IX] ON [dbo].[T134T_OLD]
(
	[SPRAS] ASC,
	[MTART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T151T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T151T_IX] ON [dbo].[T151T]
(
	[SPRAS] ASC,
	[KDGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T151T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T151T_IX] ON [dbo].[T151T_OLD]
(
	[SPRAS] ASC,
	[KDGRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179_IX] ON [dbo].[T179]
(
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179_IX] ON [dbo].[T179_OLD]
(
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179T_IX] ON [dbo].[T179T]
(
	[SPRAS] ASC,
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T179T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T179T_IX] ON [dbo].[T179T_OLD]
(
	[SPRAS] ASC,
	[PRODH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T500W_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T500W_IX] ON [dbo].[T500W]
(
	[LAND1] ASC,
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T500W_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T500W_IX] ON [dbo].[T500W_OLD]
(
	[LAND1] ASC,
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T513S_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T513S_IX] ON [dbo].[T513S]
(
	[SPRSL] ASC,
	[STELL] ASC,
	[ENDDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T513S_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T513S_IX] ON [dbo].[T513S_OLD]
(
	[SPRSL] ASC,
	[STELL] ASC,
	[ENDDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T528T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T528T_IX] ON [dbo].[T528T]
(
	[SPRSL] ASC,
	[OTYPE] ASC,
	[PLANS] ASC,
	[ENDDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [T528T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [T528T_IX] ON [dbo].[T528T_OLD]
(
	[SPRSL] ASC,
	[OTYPE] ASC,
	[PLANS] ASC,
	[ENDDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TB039A_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TB039A_IX] ON [dbo].[TB039A]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TB039A_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TB039A_IX] ON [dbo].[TB039A_OLD]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURC_IX] ON [dbo].[TCURC]
(
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURC_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURC_IX] ON [dbo].[TCURC_OLD]
(
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURR_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURR_IX] ON [dbo].[TCURR]
(
	[KURST] ASC,
	[FCURR] ASC,
	[TCURR] ASC,
	[GDATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURR_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURR_IX] ON [dbo].[TCURR_OLD]
(
	[KURST] ASC,
	[FCURR] ASC,
	[TCURR] ASC,
	[GDATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURT_IX] ON [dbo].[TCURT]
(
	[SPRAS] ASC,
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURT_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURT_IX] ON [dbo].[TCURT_OLD]
(
	[SPRAS] ASC,
	[WAERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURX_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURX_IX] ON [dbo].[TCURX]
(
	[CURRKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TCURX_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCURX_IX] ON [dbo].[TCURX_OLD]
(
	[CURRKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TJ02T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TJ02T_IX] ON [dbo].[TJ02T]
(
	[ISTAT] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TJ02T_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TJ02T_IX] ON [dbo].[TJ02T_OLD]
(
	[ISTAT] ASC,
	[SPRAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA01_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA01_IX] ON [dbo].[TKA01]
(
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA01_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA01_IX] ON [dbo].[TKA01_OLD]
(
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA02_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA02_IX] ON [dbo].[TKA02]
(
	[BUKRS] ASC,
	[GSBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TKA02_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [TKA02_IX] ON [dbo].[TKA02_OLD]
(
	[BUKRS] ASC,
	[GSBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [USR02_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [USR02_IX] ON [dbo].[USR02]
(
	[BNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [USR02_IX]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [USR02_IX] ON [dbo].[USR02_OLD]
(
	[BNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_STG_AUFK]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_AUFK] ON [STG].[STG_AUFK]
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_STG_COEP]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_COEP] ON [STG].[STG_COEP]
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_STG_EKPO]    Script Date: 11/20/2018 5:38:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_STG_EKPO] ON [STG].[STG_EKPO]
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUFK_OLD] ADD  CONSTRAINT [DF_AUFK_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[BKPF] ADD  CONSTRAINT [DF_BKPF_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[COBK] ADD  CONSTRAINT [DF_COBK_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[COEP] ADD  CONSTRAINT [DF_COEP_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[EKBE] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[EKBE] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[EKBE] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[EKET] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [dbo].[EKET] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [dbo].[EKET] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[EKKO] ADD  CONSTRAINT [DF_EKKO_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[EKPO] ADD  CONSTRAINT [DF_EKPO_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[PTRV_HEAD] ADD  CONSTRAINT [DF_PTRV_HEAD_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[PTRV_PERIO] ADD  CONSTRAINT [DF_PTRV_PERIO_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[PTRV_SADD] ADD  CONSTRAINT [DF_PTRV_SADD_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[PTRV_SCOS] ADD  CONSTRAINT [DF_PTRV_SCOS_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[PTRV_SHDR] ADD  CONSTRAINT [DF_PTRV_SHDR_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [dbo].[PTRV_SREC] ADD  CONSTRAINT [DF_PTRV_SREC_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
USE [master]
GO
ALTER DATABASE [KLA_ECC] SET  READ_WRITE 
GO
