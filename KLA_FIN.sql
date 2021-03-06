USE [master]
GO
/****** Object:  Database [KLA_FIN]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE DATABASE [KLA_FIN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KLA_FIN', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KLA_FIN.mdf' , SIZE = 40711168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KLA_FIN_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KLA_FIN_log.ldf' , SIZE = 28333632KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KLA_FIN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KLA_FIN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KLA_FIN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KLA_FIN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KLA_FIN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KLA_FIN] SET ARITHABORT OFF 
GO
ALTER DATABASE [KLA_FIN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KLA_FIN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_FIN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KLA_FIN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KLA_FIN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KLA_FIN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KLA_FIN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KLA_FIN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KLA_FIN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KLA_FIN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KLA_FIN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KLA_FIN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KLA_FIN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KLA_FIN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KLA_FIN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KLA_FIN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KLA_FIN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KLA_FIN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KLA_FIN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KLA_FIN] SET  MULTI_USER 
GO
ALTER DATABASE [KLA_FIN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KLA_FIN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KLA_FIN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KLA_FIN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KLA_FIN', N'ON'
GO
USE [KLA_FIN]
GO
/****** Object:  User [US\SQL_KLA_R]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_KLA_R] FOR LOGIN [US\SQL_KLA_R]
GO
/****** Object:  User [US\SQL_KG_ZBB_R]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_KG_ZBB_R] FOR LOGIN [US\SQL_KG_ZBB_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKJ1J02]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_MXKJ1J02] FOR LOGIN [SAS_MXKJ1J02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_MXKI1G02]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [SAS_MXKI1G02] FOR LOGIN [SAS_MXKI1G02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:40:02 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KLA_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KG_ZBB_R]
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
/****** Object:  Schema [KLA_ZBB]    Script Date: 11/20/2018 5:40:03 PM ******/
CREATE SCHEMA [KLA_ZBB]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:40:03 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_COEP_AllocDEL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_COEP_AllocDEL]
AS
SET NOCOUNT ON

BEGIN
	UPDATE KLA_ZBB.COEP_Alloc
	SET [DW_Del_Bit] = 1
	WHERE (
			KSTAR = '7898100000'
			AND RIGHT(OBJNR, 7) = '7440015'
			AND BUKRS = 'GSMX'
			AND SGTXT LIKE ('%META 4%')
			) --Rule 15
		OR (
			RIGHT(OBJNR, 2) = '51'
			AND KSTAR = '7899100000'
			AND SUBSTRING(SGTXT, 1, 5) = '210 _' COLLATE Latin1_General_CS_AS
			) --Rule 17
		OR (
			RIGHT(OBJNR, 2) = '40'
			AND KSTAR = '7899100000'
			AND SUBSTRING(SGTXT, 1, 5) = '210 _' COLLATE Latin1_General_CS_AS
			)

	DELETE
	FROM KLA_ZBB.COEP_Alloc
	WHERE [DW_Del_Bit] = 1
END

GO
/****** Object:  StoredProcedure [dbo].[USP_COEP_AllocINSDEL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_COEP_AllocINSDEL]

AS
SET NOCOUNT ON
BEGIN
	
	--cleaning up table if data exists 
	IF EXISTS(SELECT 1 FROM KLA_ZBB.COEP_Alloc WITH(NOLOCK))
	BEGIN
		TRUNCATE TABLE KLA_ZBB.COEP_Alloc
	END

	--Drop PK for data load 
	ALTER TABLE KLA_ZBB.COEP_Alloc DROP CONSTRAINT PK_COEP_Alloc

	--Data load and all rules 
	INSERT INTO KLA_ZBB.COEP_Alloc 
	(MANDT,KOKRS,BELNR,BUZEI,PERIO,WTGBTR,WOGBTR,Drv_WOGBTR,WKGBTR,WKFBTR,PAGBTR,PAFBTR,MEGBTR,MEFBTR,MBGBTR,MBFBTR,LEDNR,OBJNR,Drv_OBJNR,GJAHR,WRTTP,VERSN,KSTAR,Drv_KSTAR,
	HRKFT,VRGNG,PAROB,PAROB1,USPOB,VBUND,PARGB,BEKNZ,TWAER,OWAER,MEINH,MEINB,MVFLG,SGTXT,REFBZ,ZLENR,BW_REFBZ,GKONT,GKOAR,WERKS,MATNR,RBEST,EBELN,EBELP,ZEKKN,ERLKZ,PERNR,BTRKL,
	OBJNR_N1,OBJNR_N2,OBJNR_N3,PAOBJNR,BELTP,BUKRS,GSBER,FKBER,SCOPE,LOGSYSO,PKSTAR,PBUKRS,PFKBER,PSCOPE,LOGSYSP,DABRZ,BWSTRAT,OBJNR_HK,TIMESTMP,QMNUM,GEBER,PGEBER,GRANT_NBR,
	PGRANT_NBR,REFBZ_FI,SEGMENT,PSEGMENT,DW_Cre_Ts,DW_Cre_Usr,DW_Mod_Ts,DW_Mod_Usr,DW_Del_Bit,DW_Del_Usr,DW_Del_Ts)

		--CC and CE and Obj amt rules block for all 18 rules
		(SELECT  MANDT,KOKRS,BELNR,BUZEI,PERIO,WTGBTR,
		WOGBTR,
		CASE 
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '35' THEN WOGBTR*100																															--Rule 16
				ELSE WOGBTR
		END AS Drv_WOGBTR,
		WKGBTR,WKFBTR,PAGBTR,PAFBTR,MEGBTR,MEFBTR,MBGBTR,MBFBTR,LEDNR,
		 OBJNR,
		CASE 
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '14' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'08')																									--Rule 1
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '09' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'08')																									--Rule 2
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '11' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'01')																									--Rule 3
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '10' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'01')																									--Rule 4
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '12' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'03')																									--Rule 5
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '17' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'02')																									--Rule 6
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,2))) = '21' THEN STUFF(OBJNR,(LEN(OBJNR)-1),2,'05')																									--Rule 7
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '1680008' AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '15' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1 		THEN STUFF(OBJNR,(LEN(OBJNR)-6),7,RTRIM(LTRIM(RIGHT(SGTXT,7)))) 		--Rule 8
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001' AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1		THEN STUFF(OBJNR,(LEN(OBJNR)-6),7,RTRIM(LTRIM(RIGHT(SGTXT,7)))) 		--Rule 11--Part 1A
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '7440015' AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1		THEN STUFF(OBJNR,(LEN(OBJNR)-6),7,RTRIM(LTRIM(RIGHT(SGTXT,7)))) 		--Rule 12
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '7610040' THEN STUFF(OBJNR,(LEN(OBJNR)-6),7,'3981040')																							--Rule 14
					--ELSE RTRIM(LTRIM(RIGHT(OBJNR,7))) 
					ELSE RTRIM(LTRIM(OBJNR))
		END AS Drv_OBJNR, --substring is Cost_Ctr
		GJAHR,WRTTP,VERSN,
		KSTAR,--Cost_Ele
		CASE
			WHEN KSTAR = '6167000000' AND BUKRS = 'KCMX' THEN  '7898100000'																														--Rule 9															
			WHEN KSTAR = '6120000000' AND RTRIM(LTRIM(RIGHT(OBJNR,7))) = '7440008' THEN  '7898100000'																							--Rule 10
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3554000000' THEN  '4517100000'	--Rule 11--Part 1B
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3607000000' THEN  '5609000000'	--Rule 11--Part 1C
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3446000000' THEN  '4517000000'	--Rule 11--Part 1D
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3471000000' THEN  '5609200000'	--Rule 11--Part 1E
			WHEN KSTAR = '6158300000' AND RTRIM(LTRIM(RIGHT(OBJNR,7))) = '1101108' THEN  '7898100000'																							--Rule 13
				ELSE KSTAR
		END AS Drv_KSTAR,
		HRKFT,VRGNG,PAROB,PAROB1,USPOB,VBUND,PARGB,BEKNZ,TWAER,OWAER,MEINH,MEINB,MVFLG,SGTXT,REFBZ,ZLENR,BW_REFBZ,GKONT,GKOAR,WERKS,MATNR,
		RBEST,EBELN,EBELP,ZEKKN,ERLKZ,PERNR,BTRKL,OBJNR_N1,OBJNR_N2,OBJNR_N3,PAOBJNR,BELTP,
		BUKRS,--Co_Cd
		GSBER,FKBER,SCOPE,LOGSYSO,PKSTAR,PBUKRS,PFKBER,PSCOPE,LOGSYSP,DABRZ,BWSTRAT,OBJNR_HK,TIMESTMP,QMNUM,GEBER,
		PGEBER,GRANT_NBR,PGRANT_NBR,REFBZ_FI,SEGMENT,PSEGMENT,DW_Cre_Ts,DW_Cre_Usr,DW_Mod_Ts,DW_Mod_Usr,DW_Del_Bit,DW_Del_Usr,DW_Del_Ts 
		FROM KLA_ECC.dbo.COEP WITH(NOLOCK) 
		WHERE OBJNR LIKE 'KS%' 
				AND VERSN = '000')


   UNION ALL


		--CC and CE and Obj amt copy data block for Rule 11
		(SELECT  MANDT,KOKRS,BELNR,BUZEI,PERIO,WTGBTR,WOGBTR,
		WOGBTR as Drv_WOGBTR,WKGBTR,WKFBTR,PAGBTR,PAFBTR,MEGBTR,MEFBTR,MBGBTR,MBFBTR,LEDNR,
		 OBJNR, 
		CASE 
			 WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001' and RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1 THEN RTRIM(LTRIM(OBJNR))	--'3941001'								--Rule 11--Part 2A
		END AS Drv_OBJNR, --substring is Cost_Ctr
		GJAHR,WRTTP,VERSN,
		KSTAR,--Cost_Ele
		CASE
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3554000000' THEN  '3554000000'	--Rule 11--Part 2B
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3607000000' THEN  '3607000000'	--Rule 11--Part 2C
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3446000000' THEN  '3446000000'	--Rule 11--Part 2D
			WHEN RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1	AND KSTAR = '3471000000' THEN  '3471000000'	--Rule 11--Part 2E
		END AS Drv_KSTAR,
		HRKFT,VRGNG,PAROB,PAROB1,USPOB,VBUND,PARGB,BEKNZ,TWAER,OWAER,MEINH,MEINB,MVFLG,SGTXT,REFBZ,ZLENR,BW_REFBZ,GKONT,GKOAR,WERKS,MATNR,
		RBEST,EBELN,EBELP,ZEKKN,ERLKZ,PERNR,BTRKL,OBJNR_N1,OBJNR_N2,OBJNR_N3,PAOBJNR,BELTP,
		BUKRS,--Co_Cd
		GSBER,FKBER,SCOPE,LOGSYSO,PKSTAR,PBUKRS,PFKBER,PSCOPE,LOGSYSP,DABRZ,BWSTRAT,OBJNR_HK,TIMESTMP,QMNUM,GEBER,
		PGEBER,GRANT_NBR,PGRANT_NBR,REFBZ_FI,SEGMENT,PSEGMENT,DW_Cre_Ts,DW_Cre_Usr,DW_Mod_Ts,DW_Mod_Usr,DW_Del_Bit,DW_Del_Usr,DW_Del_Ts 
		FROM KLA_ECC.dbo.COEP WITH(NOLOCK) 
		Where (RTRIM(LTRIM(RIGHT(OBJNR,7))) = '3941001'  
			AND RTRIM(LTRIM(RIGHT(SGTXT,2))) = '08' 
			AND ISNUMERIC(RTRIM(LTRIM(RIGHT(SGTXT,7)))) = 1 
			AND KSTAR IN ('3554000000', '3607000000', '3446000000', '3471000000')
			AND OBJNR LIKE 'KS%'
			AND VERSN = '000'))


		--Add PK after data load
		ALTER TABLE KLA_ZBB.COEP_Alloc ADD CONSTRAINT PK_COEP_Alloc PRIMARY KEY CLUSTERED 
		(
		COEPID ASC
		) 



	--Before delete
	SELECT COUNT(*) AS BeforeExclusion FROM KLA_ZBB.COEP_Alloc WITH(NOLOCK) 

	SELECT * FROM KLA_ZBB.COEP_Alloc WITH(NOLOCK) 
		WHERE (KSTAR = '7898100000' 
			AND RIGHT(OBJNR,7) = '7440015' 
			AND BUKRS = 'GSMX' 
			AND SGTXT LIKE ('%META 4%'))																																				
					OR (RIGHT(OBJNR,2) = '51' 
							AND  KSTAR = '7899100000' 
							AND SUBSTRING(SGTXT,1,5)='210 _' COLLATE Latin1_General_CS_AS)																												
					OR	(RIGHT(OBJNR,2) = '40' 
							AND  KSTAR = '7899100000' 
							AND  SUBSTRING(SGTXT,1,5)='210 _' COLLATE Latin1_General_CS_AS)																												

	
	--Delete
	--DELETE FROM KLA_ZBB.COEP_Alloc 
	update  KLA_ZBB.COEP_Alloc set [DW_Del_Bit]=1
		WHERE (KSTAR = '7898100000' 
			AND RIGHT(OBJNR,7) = '7440015' 
			AND BUKRS = 'GSMX' 
			AND SGTXT like ('%META 4%'))																																						--Rule 15
					OR (RIGHT(OBJNR,2) = '51' 
							AND  KSTAR = '7899100000' 
							AND SUBSTRING(SGTXT,1,5)='210 _' COLLATE Latin1_General_CS_AS)																										--Rule 17
					OR	(RIGHT(OBJNR,2) = '40' 
							AND  KSTAR = '7899100000' 
							AND  SUBSTRING(SGTXT,1,5)='210 _' COLLATE Latin1_General_CS_AS)	
							
							delete from KLA_ZBB.COEP_Alloc where 	[DW_Del_Bit]=1																								--Rule 18

	--Verify results
	SELECT COUNT(*) AS AfterExclusion FROM KLA_ZBB.COEP_Alloc WITH(NOLOCK) 

	SELECT * FROM KLA_ZBB.COEP_Alloc WITH(NOLOCK) 
		WHERE (KSTAR = '7898100000' 
			AND RIGHT(OBJNR,7) = '7440015' 
			AND BUKRS = 'GSMX' 
			AND SGTXT LIKE ('%META 4%'))																																				
					OR (RIGHT(OBJNR,2) = '51' 
							AND  KSTAR = '7899100000' 
							AND SUBSTRING(SGTXT,1,5)='210 _' COLLATE Latin1_General_CS_AS)																												
					OR	(RIGHT(OBJNR,2) = '40' 
							AND  KSTAR = '7899100000' 
							AND  SUBSTRING(SGTXT,1,5)='210 _' COLLATE Latin1_General_CS_AS)							

	SET NOCOUNT OFF
END


GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Acct_Hrchy_Ecc]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Acct_Hrchy_Ecc]
AS
    BEGIN
        DECLARE @cnt INT;
        SET NOCOUNT ON;
        DECLARE @ACCT_HRCHY TABLE
            (
              ACCT_NBR NVARCHAR(10) ,
              ACCT_DESC NVARCHAR(60) NULL ,
              --Fcn NVARCHAR(50) NULL ,
              ACCT_CATEG NVARCHAR(40) NULL ,
              ACCT_SUB_CATEG NVARCHAR(40) NULL ,
              Created_by NVARCHAR(100) NULL ,
              Created_TS DATETIME NULL ,
              Modified_by NVARCHAR(100) NULL ,
              Modified_ts DATETIME NULL ,
              Is_Deleted INT DEFAULT 0 ,
              Deleted_by NVARCHAR(100) NULL ,
              Deleted_TS DATETIME NULL
            );
	        
		   
        INSERT  INTO @ACCT_HRCHY
                ( ACCT_NBR ,
                  ACCT_DESC ,
				--  Fcn,
                  ACCT_CATEG ,
                  ACCT_SUB_CATEG ,
                  Created_by ,
                  Created_TS
                )
               select	SETNAME GL_Acct,SETNAME +'-'+LVL5_SETNAME_DESC Acct_Desc,LVL3_SETNAME_DESC Acct_Categ,LVL4_SETNAME_DESC Acct_Sub_Categ,
			   user_name(),getdate() 
from KLA_ECC.[STG].[COST_ELMNT_HIER_UNRVL] WHERE  LVL1_SETNAME LIKE '%KLA%' and SETTYPE='X'



-- Merge Statement
        MERGE KLA_FIN.KLA_ZBB.Acct_Hrchy_ZBB AS stm
        USING
            ( SELECT    ACCT_NBR ,
                        ACCT_DESC ,
						--[Fcn],
                        ACCT_CATEG ,
                        ACCT_SUB_CATEG
						 FROM      @ACCT_HRCHY
            ) AS sd
        ON stm.[GL_Acct] = sd.ACCT_NBR
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.Acct_Desc = sd.ACCT_DESC ,
                    stm.Acct_Categ = sd.ACCT_CATEG ,
                    stm.Acct_Sub_Categ = sd.ACCT_SUB_CATEG ,
                    stm.DW_Mod_Usr = USER_NAME() ,
                    stm.DW_Mod_Ts = GETDATE(),
					stm.DW_Del_Bit=0,
					stm. DW_Del_Usr=null
					
        WHEN NOT MATCHED THEN
            INSERT ( GL_Acct ,
                     Acct_Desc ,
                     Acct_Categ ,
                     Acct_Sub_Categ ,
					 DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.ACCT_NBR ,
                     sd.ACCT_DESC ,
                     sd.ACCT_CATEG ,
                     sd.ACCT_SUB_CATEG ,
					 USER_NAME() ,
                     GETDATE()
                   );


        SELECT  @cnt = COUNT([GL_Acct])
        FROM    KLA_FIN.KLA_ZBB.Acct_Hrchy_ZBB a
        WHERE   a.[GL_Acct] NOT IN ( SELECT  ACCT_NBR
                                    FROM    @ACCT_HRCHY );
        PRINT @cnt;

        UPDATE  KLA_FIN.KLA_ZBB.Acct_Hrchy_ZBB
        SET     DW_Del_Bit = 1 ,
                DW_Del_Usr = USER_NAME() ,
                DW_Del_Ts = GETDATE()
        WHERE   [GL_Acct] NOT IN ( SELECT    ACCT_NBR
                                  FROM      @ACCT_HRCHY ); 

    END;


GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_BB_ION_BDG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--DROP PROCEDURE [dbo].[USP_DQ_LOAD_BB_ION_BDG]

CREATE PROCEDURE [dbo].[USP_DQ_LOAD_BB_ION_BDG] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [STG].[STG_BB_ION_BDG]
	SET [ION_CD] = ltrim(rtrim(ION_CD))
		,[ION_CURR_TYP] = ltrim(rtrim(ION_CURR_TYP))
		,[ACCT_CD] = ltrim(rtrim(ACCT_CD))
		,[PD] = ltrim(rtrim(PD))
		,[AMT] = ltrim(rtrim(AMT))
		,[VER] = ltrim(rtrim(VER))
		

	--/*********************CHECKING FOR NULLABLE VALUES*********************************/

	UPDATE [STG].[STG_BB_ION_BDG]
	SET ERROR_FLAG = 'Y'
	WHERE [ION_CD] IS NULL
		OR [ION_CD] = '';

	UPDATE [STG].[STG_BB_ION_BDG]
	SET ERROR_FLAG = 'Y'
	WHERE [ACCT_CD] IS NULL
		OR [ACCT_CD] = '';

	UPDATE [STG].[STG_BB_ION_BDG]
	SET ERROR_FLAG = 'Y'
	WHERE [PD] IS NULL
		OR [PD] = '';

			UPDATE [STG].[STG_BB_ION_BDG]
	SET ION_CD = REPLICATE('0', 12 - LEN(ION_CD)) + ION_CD


	MERGE INTO [KLA_ZBB].[BB_ION_BDG_2] AS stm
	USING (
	SELECT   [ION_CD]
			,[ION_CURR_TYP]
			,[ACCT_CD]
			,[PD]
			,[AMT]
			,[VER]
		FROM [STG].[STG_BB_ION_BDG]
		) AS sd
		ON stm.[ION_CD] = sd.[ION_CD]
			AND stm.[ACCT_CD] = sd.[ACCT_CD]
			AND stm.[Yr] = substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
			AND stm.[Pd] = substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
			AND stm.[VER] = sd.[VER]
	WHEN MATCHED
		THEN
			UPDATE
			SET  stm.[ION_CURR_TYP] = sd.[ION_CURR_TYP]
				,stm.[AMT] = sd.[AMT]
				
	WHEN NOT MATCHED
		THEN
			INSERT (
				[ION_CD]
				,[ION_CURR_TYP]
				,[ACCT_CD]
				,[Yr]
				,[Pd]
				,[AMT]
				,[VER]
				,[DW_CRE_TS]
				,[DW_CRE_USR]
				)
			VALUES (
				sd.[ION_CD]
				,sd.[ION_CURR_TYP]
				,sd.[ACCT_CD]
				,substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
				,substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
				,sd.[AMT]
				,sd.[VER]
				,getdate()
				,user_name()
				);



	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [BB_Ion_Bdg_2]  Table :';
	PRINT @InsCount;
END









GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Cost_Cntr_Ecc]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Cost_Cntr_Ecc]
AS
    BEGIN
        DECLARE @cnt INT;
        SET NOCOUNT ON;
        DECLARE @COSTCNTR_HRCHY TABLE
            (
              CC_Nbr NVARCHAR(10) ,
              CC_Desc NVARCHAR(60) NULL ,
              lvl0_Desc NVARCHAR(15) NULL ,
              lvl1_Desc NVARCHAR(75) NULL ,
              lvl1_Cd NVARCHAR(12) NULL ,
              lvl2_Desc NVARCHAR(75) NULL ,
              lvl2_Cd NVARCHAR(12) NULL ,
              lvl3_Desc NVARCHAR(75) NULL ,
              lvl3_Cd NVARCHAR(12) NULL ,
              lvl4_Desc NVARCHAR(75) NULL ,
              lvl4_Cd NVARCHAR(12) NULL ,
              lvl5_Desc NVARCHAR(75) NULL ,
              lvl5_Cd NVARCHAR(25) NULL ,
			  lvl6_Desc NVARCHAR(75) NULL ,
              lvl6_Cd NVARCHAR(25) NULL ,
			  lvl7_Desc NVARCHAR(75) NULL ,
              lvl7_Cd NVARCHAR(25) NULL ,
			  [Cst_Ctr_ID_Desc] NVARCHAR(50) NULL ,
              Created_by NVARCHAR(100) NULL ,
              Created_TS DATETIME NULL ,
              Modified_by NVARCHAR(100) NULL ,
              Modified_ts DATETIME NULL ,
              Is_Deleted INT DEFAULT 0 ,
              Deleted_by NVARCHAR(100) NULL ,
              Deleted_TS DATETIME NULL
            );
	         
		   
        INSERT  INTO @COSTCNTR_HRCHY
                ( CC_Nbr ,
                  CC_Desc ,
                  lvl0_Desc ,
                  lvl1_Desc ,
                  lvl1_Cd ,
                  lvl2_Desc ,
                  lvl2_Cd ,
                  lvl3_Desc ,
                  lvl3_Cd ,
                  lvl4_Desc ,
                  lvl4_Cd ,
                  lvl5_Desc ,
                  lvl5_Cd ,
				  lvl6_Cd ,
				  lvl6_Desc ,
				  lvl7_Desc ,
                  lvl7_Cd ,
				  [Cst_Ctr_ID_Desc],
                  Created_by ,
                  Created_TS
                )
              select LTRIM(RTRIM(SETNAME)) CC_Nbr,LVL7_SETNAME_DESC CC_Desc,'KELLOGG' lvl0_desc,LVL1_SETNAME Lvl1_Desc,

substring(LVL1_SETNAME_DESC,4,len(LVL1_SETNAME_DESC)) Lvl1_Cd,LVL2_SETNAME_DESC Lvl2_Desc,LVL2_SETNAME Lvl2_Cd,
LVL3_SETNAME_DESC Lvl3_Desc,LVL3_SETNAME Lvl3_Cd,
LVL4_SETNAME_DESC Lvl4_Desc,LVL4_SETNAME Lvl4_Cd,
--substring(SETNAME, patindex('%[^0]%',SETNAME), 20)+' -'+LVL5_SETNAME_DESC Lvl5_Desc,
--substring(LVL5_SETNAME, patindex('%[^0]%',LVL5_SETNAME), 20)  Lvl5_Cd,
LVL5_SETNAME_DESC Lvl5_Desc,
LVL5_SETNAME  Lvl5_Cd,
LVL6_SETNAME Lvl6_Cd, LVL6_SETNAME_DESC Lvl6_Desc , LVL7_SETNAME_DESC Lvl7_Desc,LVL7_SETNAME Lvl7_Cd,
substring(SETNAME, patindex('%[^0]%',SETNAME), 20)+' -'+LVL7_SETNAME_DESC Cst_Ctr_ID_Desc ,user_name(),getdate()
from KLA_ECC.[STG].[COST_CTR_HIER_UNRVL] where SETTYPE='X' --and SUBCLASS = 'KELL'      

-- Merge Statement
        MERGE KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB AS stm
        USING
            ( SELECT  distinct  CC_Nbr ,
                  CC_Desc ,
                  lvl0_Desc ,
                  lvl1_Desc ,
                  lvl1_Cd ,
                  lvl2_Desc ,
                  lvl2_Cd ,
                  lvl3_Desc ,
                  lvl3_Cd ,
                  lvl4_Desc ,
                  lvl4_Cd ,
                  lvl5_Desc ,
                  lvl5_Cd ,
				  lvl6_Cd ,
				  lvl6_Desc ,
				  lvl7_Desc ,
                  lvl7_Cd ,
				  [Cst_Ctr_ID_Desc]
                        
              FROM      @COSTCNTR_HRCHY
            ) AS sd
        ON stm.CC_Nbr = sd.CC_Nbr
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.CC_Desc = sd.CC_Desc ,
                    stm.Lvl0_Desc = sd.lvl0_Desc ,
                    stm.Lvl1_Desc = sd.lvl1_Desc ,
					stm.Lvl1_Cd = sd.lvl1_Cd ,
                    stm.Lvl2_Desc = sd.lvl2_Desc,
					stm.Lvl2_Cd = sd.lvl2_Cd ,
                    stm.Lvl3_Desc = sd.lvl3_Desc ,
                    stm.Lvl3_Cd = sd.lvl3_Cd ,
                    stm.Lvl4_Desc = sd.lvl4_Desc ,
                    stm.Lvl4_Cd = sd.lvl4_Cd ,
                    stm.Lvl5_Desc = sd.lvl5_Desc ,
					stm.[Cst_Ctr_ID_Desc]=sd.[Cst_Ctr_ID_Desc],
					stm.[Lvl6_Cd] = sd.lvl6_Cd,
					stm.[Lvl6_Desc] = sd.lvl6_Desc,
					stm.[Lvl7_Desc]=sd.lvl7_Desc,
					stm.[Lvl7_Cd] = sd.lvl7_Cd,
                    stm.DW_Mod_Usr = CURRENT_USER ,
                    stm.DW_Mod_Ts = GETDATE(),
					stm.DW_Del_Bit = 0 ,
					stm.DW_Del_Usr = Null ,
					stm.DW_Del_Ts = Null
        WHEN NOT MATCHED THEN
            INSERT ( CC_Nbr ,
                     CC_Desc ,
                     Lvl0_Desc ,
                     Lvl1_Desc ,
                     Lvl1_Cd ,
                     Lvl2_Desc ,
                     Lvl2_Cd ,
                     Lvl3_Desc ,
                     Lvl3_Cd ,
                     Lvl4_Desc ,
                     Lvl4_Cd ,
                     Lvl5_Desc ,
                     Lvl5_Cd ,
					 [Lvl6_Cd],
				     [Lvl6_Desc] ,
				     [Lvl7_Desc] ,
                     [Lvl7_Cd] ,
					 [Cst_Ctr_ID_Desc],
                     DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.CC_Nbr ,
                     sd.CC_Desc ,
                     sd.lvl0_Desc ,
                     sd.lvl1_Desc ,
                     sd.lvl1_Cd ,
                     sd.lvl2_Desc ,
                     sd.lvl2_Cd ,
                     sd.lvl3_Desc ,
                     sd.lvl3_Cd ,
                     sd.lvl4_Desc ,
                     sd.lvl4_Cd ,
                     sd.lvl5_Desc ,
                     sd.lvl5_Cd , 
					 sd.lvl6_Cd ,
				     sd.lvl6_Desc ,
				     sd.lvl7_Desc ,
                     sd.lvl7_Cd ,
					 sd.[Cst_Ctr_ID_Desc],
                     CURRENT_USER ,
                     GETDATE()
                   );


	SELECT  @cnt = COUNT(CC_Nbr)
	FROM    KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB a
	WHERE   a.CC_Nbr NOT IN ( SELECT    CC_Nbr
								FROM      @COSTCNTR_HRCHY );
	PRINT @cnt;

	UPDATE  KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB
	SET     DW_Del_Bit = 1 ,
			DW_Del_Usr = USER_NAME() ,
			DW_Del_Ts = GETDATE()
	WHERE   CC_Nbr NOT IN ( SELECT  CC_Nbr
							FROM    @COSTCNTR_HRCHY ); 

	END;




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Curr_Exchng_Fmt]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Curr_Exchng_Fmt] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [STG].[STG_CURR_EXCHNG_FMT]
	SET [VER] = LTRIM(RTRIM(VER))
		,[FR_CURR] = LTRIM(RTRIM(FR_CURR))
		,[TO_CURR] = LTRIM(RTRIM(TO_CURR))
		,[YR] = LTRIM(RTRIM(YR))
		,[PD] = LTRIM(RTRIM(PD))
		,[FCTR] = LTRIM(RTRIM(FCTR))

	UPDATE [STG].[STG_CURR_EXCHNG_FMT]
	SET [FCTR] = replace(FCTR, '$', '')

	UPDATE [STG].[STG_CURR_EXCHNG_FMT]
	SET [FCTR] = replace(replace(FCTR, '(', ''), ')', '')

	--/*****************************************************************************/
	MERGE INTO [KLA_ZBB].[CURR_EXCHNG_FMT] AS stm
	USING (
		SELECT VER
			,FR_CURR
			,TO_CURR
			,YR
			,PD
			,[FCTR]
		FROM [STG].[STG_CURR_EXCHNG_FMT]
		) AS sd
		ON stm.VER = sd.VER
			AND stm.FR_CURR = sd.FR_CURR
			AND stm.TO_CURR = sd.TO_CURR
			AND stm.YR = sd.YR
			AND stm.PD = sd.PD
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.VER = sd.VER
				,stm.FR_CURR = sd.FR_CURR
				,stm.TO_CURR = sd.TO_CURR
				,stm.YR = sd.YR
				,stm.PD = sd.PD
				,stm.[FCTR] = sd.[FCTR]
				,stm.DW_MOD_TS = getdate()
				,stm.DW_MOD_USR = user_name()
	WHEN NOT MATCHED
		THEN
			INSERT (
				VER
				,FR_CURR
				,TO_CURR
				,YR
				,PD
				,FCTR
				,DW_CRE_TS
				,DW_CRE_USR
				)
			VALUES (
				sd.VER
				,sd.FR_CURR
				,sd.TO_CURR
				,sd.YR
				,sd.PD
				,sd.FCTR
				,getdate()
				,user_name()
				);

	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [KLA_ZBB].[CURR_EXCHNG_FMT] Table :';
	PRINT @InsCount;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_ION_HRCHY]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[USP_DQ_LOAD_ION_HRCHY] @InsCount INT OUTPUT 
AS
 BEGIN
    DECLARE @CNT INT
	  DECLARE @tableVar TABLE (MergeAction VARCHAR(20))
		DECLARE @GETDATE DATETIME=GETDATE();
		DECLARE @Rows_Insrt INTEGER
		DECLARE @Rows_Updt INT
		DECLARE @TOT_CNT INT

  -- Quality Check -- 

  UPDATE [STG].[STG_ION_HRCHY_FLAT]
   SET [CURRENT_LEAF] = LTRIM(RTRIM([CURRENT_LEAF]))
      ,[LEVEL0]= LTRIM(RTRIM([LEVEL0]))
      ,[LEVEL1]= LTRIM(RTRIM([LEVEL1]))
      ,[LEVEL2]= LTRIM(RTRIM([LEVEL2]))
      ,[LEVEL3]= LTRIM(RTRIM([LEVEL3]))
      ,[LEVEL4]= LTRIM(RTRIM([LEVEL4]))
      ,[LEVEL5]= LTRIM(RTRIM([LEVEL5]))
	  ,[LEVEL6]= LTRIM(RTRIM([LEVEL6]))
	  ,[LEVEL7]= LTRIM(RTRIM([LEVEL7]))
      ,[C_L1_Code] = LTRIM(RTRIM([C_L1_Code]))
	  ,[C_L2_Code] = LTRIM(RTRIM([C_L2_Code]))
	  ,[C_L3_Code] = LTRIM(RTRIM([C_L3_Code]))
	  ,[C_L4_Code] = LTRIM(RTRIM([C_L4_Code]))
	  ,[C_L5_Code] = LTRIM(RTRIM([C_L5_Code]))
	  ,[C_L6_Code] = LTRIM(RTRIM([C_L6_Code]))
	  ,[C_L7_Code] = LTRIM(RTRIM([C_L7_Code]))
	  
	  EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Sched] 'KLA FIN',@GETDATE,NULL,NULL,NULL,NULL,NULL;
	  EXECUTE KG_Audit.[dbo].[USP_ETL_Begn_Btch_Detl] 'KLA FINL','ION_HRCHY',@GETDATE,NULL,NULL,NULL,NULL,NULL ;
	  IF EXISTS (SELECT 1 FROM KLA_FIN.[STG].[STG_ION_HRCHY_FLAT])
		  BEGIN
		  print 'im in ifexists'
	  -------MERGE STATMENTS-------
	  MERGE INTO [KLA_ZBB].[Ion_Hrchy_ZBB] AS stm
			USING (
					SELECT 
					[CURRENT_LEAF]
					,[LEVEL0]
					,[LEVEL1]
					,[LEVEL2]
					,[LEVEL3]
					,[LEVEL4]
					,[LEVEL5]
					,[LEVEL6]
					,[LEVEL7]
					,[C_L1_Code]
					,[C_L2_Code]
					,[C_L3_Code]
					,[C_L4_Code]
					,[C_L5_Code]
					,[C_L6_Code]
					,[C_L7_Code]
					,[C_L1_AREA]
					,[C_L1_BRAND PROJECT]
					,[C_L2_AREA]
					,[C_L2_BRAND PROJECT]
					,[C_L3_AREA]
					,[C_L3_BRAND PROJECT]
					,[C_L4_AREA]
					,[C_L4_BRAND PROJECT]
					,[C_L5_AREA]
					,[C_L5_BRAND PROJECT]
					,[C_L6_AREA]
					,[C_L6_BRAND PROJECT]
					,[C_L7_AREA]
					,[C_L7_BRAND PROJECT]

					FROM [STG].[STG_ION_HRCHY_FLAT] WHERE [LEVEL7] IS NOT NULL  AND LEAF_LEVEL=7 AND CURRENT_LEAF NOT LIKE '%ZBB%'
					) AS sd
					ON stm.[ION_ID] = REPLICATE('0', 12 - LEN(substring(rtrim(ltrim(sd.[LEVEL7])),1,charindex('-',rtrim(ltrim(sd.[LEVEL7])))-1))) + substring(rtrim(ltrim(sd.[LEVEL7])),1,charindex('-',rtrim(ltrim(sd.[LEVEL7])))-1)
	WHEN MATCHED
			THEN UPDATE 
			SET 
				 stm.[ION_DESC] = sd.[CURRENT_LEAF]
				,stm.[L0_Desc] = sd.[LEVEL0]
				,stm.[L1_Desc] = sd.[LEVEL1]
				,stm.[L2_Desc] = sd.[LEVEL2]
				,stm.[L3_Desc] = sd.[LEVEL3]
				,stm.[L4_Desc] = sd.[LEVEL4]
				,stm.[L5_Desc] = sd.[LEVEL5]
				,stm.[L6_Desc] = sd.[LEVEL6]
				,stm.[L7_Desc] = sd.[LEVEL7]
				,stm.[L1_Cd] = sd.[C_L1_Code]
				,stm.L2_Cd = sd.[C_L2_Code]
				,stm.[L3_Cd] = sd.[C_L3_Code]
				,stm.[L4_Cd] = sd.[C_L4_Code]
				,stm.[L5_Cd] = sd.[C_L5_Code]
				,stm.[L6_Cd] = sd.[C_L6_Code]
				,stm.[L7_Cd] = sd.[C_L7_Code]
				,stm.[C_L1_AREA]=sd.[C_L1_AREA]
				,stm.[C_L1_BRAND PROJECT]=sd.[C_L1_BRAND PROJECT]
				,stm.[C_L2_AREA]=sd.[C_L2_AREA]
				,stm.[C_L2_BRAND PROJECT]=sd.[C_L2_BRAND PROJECT]
				,stm.[C_L3_AREA]=sd.[C_L3_AREA]
				,stm.[C_L3_BRAND PROJECT]=sd.[C_L3_BRAND PROJECT]
				,stm.[C_L4_AREA]=sd.[C_L4_AREA]
				,stm.[C_L4_BRAND PROJECT]=sd.[C_L4_BRAND PROJECT]
				,stm.[C_L5_AREA]=sd.[C_L5_AREA]
				,stm.[C_L5_BRAND PROJECT]=sd.[C_L5_BRAND PROJECT]
				,stm.[C_L6_AREA]=sd.[C_L6_AREA]
				,stm.[C_L6_BRAND PROJECT]=sd.[C_L6_BRAND PROJECT]
				,stm.[C_L7_AREA]=sd.[C_L7_AREA]
				,stm.[C_L7_BRAND PROJECT]=sd.[C_L7_BRAND PROJECT]
				,stm.[DW_Mod_Ts]=GETDATE()
				,stm.[DW_Mod_Usr]=USER_NAME()
     WHEN NOT MATCHED
			THEN
				INSERT (ION_ID, ION_DESC, L0_Desc, L1_Desc, L2_Desc, L3_Desc, L4_Desc, L5_Desc, L6_Desc, L7_Desc,L1_Cd, L2_Cd, L3_Cd, L4_Cd, L5_Cd, --ION_ID_Desc,
				 L6_Cd, L7_Cd,[C_L1_AREA],[C_L1_BRAND PROJECT],[C_L2_AREA]
					,[C_L2_BRAND PROJECT]
					,[C_L3_AREA]
					,[C_L3_BRAND PROJECT]
					,[C_L4_AREA]
					,[C_L4_BRAND PROJECT]
					,[C_L5_AREA]
					,[C_L5_BRAND PROJECT]
					,[C_L6_AREA]
					,[C_L6_BRAND PROJECT]
					,[C_L7_AREA]
					,[C_L7_BRAND PROJECT],DW_Cre_Ts, DW_Cre_Usr,
				  DW_Del_Ts
				
			  )
			   values (
			    REPLICATE('0', 12 - LEN(substring(rtrim(ltrim(sd.[LEVEL7])),1,charindex('-',rtrim(ltrim(sd.[LEVEL7])))-1))) + substring(rtrim(ltrim(sd.[LEVEL7])),1,charindex('-',rtrim(ltrim(sd.[LEVEL7])))-1)
			   ,sd.[CURRENT_LEAF]
			   ,sd.[LEVEL0]
			   ,sd.[LEVEL1]
			   ,sd.[LEVEL2]
			   ,sd.[LEVEL3]
			   ,sd.[LEVEL4]
			   ,sd.[LEVEL5]
			   ,sd.[LEVEL6]
			   ,sd.[LEVEL7]
			   ,sd.[C_L1_Code]
			   ,sd.[C_L2_Code]
			   ,sd.[C_L3_Code]
			   ,sd.[C_L4_Code]
			   ,sd.[C_L5_Code]
			   ,sd.[C_L6_Code]
			  ,sd.[C_L7_Code]
			  ,sd.[C_L1_AREA]
			  ,sd.[C_L1_BRAND PROJECT]
			  ,sd.[C_L2_AREA]
					,sd.[C_L2_BRAND PROJECT]
					,sd.[C_L3_AREA]
					,sd.[C_L3_BRAND PROJECT]
					,sd.[C_L4_AREA]
					,sd.[C_L4_BRAND PROJECT]
					,sd.[C_L5_AREA]
					,sd.[C_L5_BRAND PROJECT]
					,sd.[C_L6_AREA]
					,sd.[C_L6_BRAND PROJECT]
					,sd.[C_L7_AREA]
					,sd.[C_L7_BRAND PROJECT]
			   ,GETDATE()
			   ,USER_NAME(),
			   0
			   )
	OUTPUT $action INTO @tableVar;
	SELECT  @Rows_Insrt=SUM(Inserted) ,
		@Rows_Updt=SUM(Updated)
	FROM  (

   SELECT COUNT(*) as Inserted, 0 as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'INSERT'
 
   UNION ALL
   
   SELECT 0 as Inserted, COUNT(*) as Updated, 0 as Deleted
   FROM @tableVar  
   WHERE MergeAction = 'UPDATE'
      
   ) as CountTable;

 EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'KLA FIN','ION_HRCHY',@Rows_Insrt, @Rows_Updt, NULL,NULL, 'Y';
 EXECUTE KG_Audit. [dbo].[USP_ETL_End_Btch_Sched] 'KLA FIN',NULL,'Y';
 PRINT  'Table has refreshed';
	END

  ELSE
	SELECT  @Rows_Insrt=0, @Rows_Updt=0
	EXECUTE KG_Audit.[dbo].[USP_ETL_End_Btch_Detl] 'KLA FIN','ION_HRCHY',@Rows_Insrt, @Rows_Updt, NULL,NULL,'Y';
	EXECUTE KG_Audit. [dbo].[USP_ETL_End_Btch_Sched] 'KLA FIN',NULL,'Y';
	PRINT  'Table does not refreshed';

END












GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Nbb_Bdg]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_Load_Nbb_Bdg] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [STG].[STG_NBB_BDG]
	SET [COST_CTR_CD] = ltrim(rtrim([COST_CTR_CD]))
		,[COST_CURR_TYP] = ltrim(rtrim([COST_CURR_TYP]))
		,[ACCT_CD] = ltrim(rtrim(ACCT_CD))
		 ,[PD] = ltrim(rtrim(PD))
		,[AMT] = ltrim(rtrim(AMT))
		,[VER] = ltrim(rtrim(VER))
		
UPDATE [STG].[STG_NBB_BDG] 
SET [COST_CTR_CD]=
REPLICATE('0', 10 - LEN([COST_CTR_CD])) + [COST_CTR_CD]


	MERGE INTO [KLA_ZBB].[NBB_BDG] AS stm
	USING (
		SELECT COST_CTR_CD, COST_CURR_TYP, ACCT_CD, PD, AMT, VER
		FROM [STG].[STG_NBB_BDG]
		) AS sd
		ON stm.[COST_CTR_CD] = sd.[COST_CTR_CD]
			AND stm.[ACCT_CD] = sd.[ACCT_CD]
			AND stm.[YR] = substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
			AND stm.[PD] = substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
			and stm.[VER]=sd.VER
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.[COST_CTR_CD] = sd.[COST_CTR_CD]
				,stm.[COST_CURR_TYP] = sd.[COST_CURR_TYP]
				,stm.[ACCT_CD] = sd.[ACCT_CD]
				,stm.[YR] = substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
				,stm.[PD] = substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
				,stm.[AMT] = sd.[AMT]
				,stm.[VER] = sd.[VER]
	WHEN NOT MATCHED
		THEN
			INSERT (
				COST_CTR_CD, COST_CURR_TYP, ACCT_CD, YR, PD, AMT, VER, DW_CRE_TS, DW_CRE_USR
				)
			VALUES (
				sd.COST_CTR_CD
				,sd.COST_CURR_TYP
				,sd.[ACCT_CD]
				,substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
				,substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
				,sd.[AMT]
				,sd.[VER],
				getdate(),
				User_name()
				);
	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [NBB_BDG]  Table :';
	PRINT @InsCount;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Usr_Sec]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/******************************************************************************
		NAME:      [USP_DQ_Load_Usr_Sec]
		PURPOSE:   Stored Proc to Load user security  file
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/15/2017   USCSXA24         Created.
		
		This laods the user security file into SQL table
		It has got no parameters 
		******************************************************************************/




CREATE PROCEDURE [dbo].[USP_DQ_Load_Usr_Sec]
AS
    BEGIN
        DECLARE @cnt INT;

-- Merge Statement
        MERGE KLA_FIN.[KLA_ZBB].[Usr_Sec_Cco]AS stm
        USING
            ( SELECT  DISTINCT  [USR_NM] ,
                        [LVL3_CD],
						[LVL3_DESC] 						
						 FROM   [KLA_FIN].[STG].[STG_USR_SEC] ) AS sd 
        ON stm.Usr_Nm = sd.[USR_NM]
		and sd.[LVL3_CD]=stm.[Lvl3_Cd]
        WHEN MATCHED THEN
            UPDATE SET
                    stm.Lvl3_Cd = sd.[LVL3_CD] ,
                    stm.Usr_Nm = sd.[USR_NM] ,
					stm.Lvl3_Desc=sd.[LVL3_DESC]
  					
        WHEN NOT MATCHED THEN
            INSERT ( Usr_Nm ,
                     Lvl3_Cd ,
                     Lvl3_Desc 
                     
                   )
            VALUES ( sd.[USR_NM] ,
                      sd.[LVL3_CD] ,
					 sd.[LVL3_DESC]
                   );


  print @@rowcount			
						

    END;


















GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Usr_Sec_Cco]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_Load_Usr_Sec_Cco]
AS
    BEGIN
        DECLARE @cnt INT;

-- Merge Statement
        MERGE KLA_FIN. [KLA_ZBB].[Usr_Sec_Cco]AS stm
        USING
            ( SELECT  DISTINCT  [USER_NAME] ,
                        [LEVEL3_CD],
						[LEVEL3_DESCRIPTION] 						
						 FROM   [KLA_FIN].[STG].[STG_KLA_USR_SEC_CCO] ) AS sd 
        ON stm.Usr_Nm = sd.[USER_NAME]
		and sd.[LEVEL3_CD]=stm.[Lvl3_Cd]
        WHEN MATCHED THEN
            UPDATE SET
                    stm.Lvl3_Cd = sd.[LEVEL3_CD] ,
                    stm.Usr_Nm = sd.[USER_NAME] ,
					stm.Lvl3_Desc=sd.[LEVEL3_DESCRIPTION]
  					
        WHEN NOT MATCHED THEN
            INSERT ( Usr_Nm ,
                     Lvl3_Cd ,
                     Lvl3_Desc 
                     
                   )
            VALUES ( sd.[USER_NAME] ,
                      sd.[LEVEL3_CD] ,
					 sd.[LEVEL3_DESCRIPTION]
                   );


  print @@rowcount			
						

    END;

















GO
/****** Object:  StoredProcedure [dbo].[USP_EXTRACT_FT_TD_BIC_ION]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



   /******************************************************************************
		NAME: USP_EXTRACT_FT_TD_BIC_ION
		PURPOSE: This SP a transformation for the BIC ION Actuals Interface for KLA Finance Transformation
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        10/25/2017   USCCXL22         Created.
		  
		******************************************************************************/



CREATE PROCEDURE [dbo].[USP_EXTRACT_FT_TD_BIC_ION]
AS

BEGIN

	SET NOCOUNT ON;

	BEGIN TRANSACTION;
SAVE TRANSACTION  TRANS;

TRUNCATE TABLE [KLA_FIN].[STG].[EXTRACT_FT_TD_BIC_ION]



/**************** Inserting Extract for Fin Trns Actuals BIC ****************/
INSERT INTO [KLA_FIN].[STG].[EXTRACT_FT_TD_BIC_ION]
(
BRAND
, ACCOUNT
, VERSION
, ENTITY
, CHANNEL
, YEAR
, MONTH
, TOTAL_AMOUNT
,PERIOD_YEAR
)
SELECT ISNULL(BRAND.MAPPING_TEXT,TOOL.BRAND) BRAND
,TOOL.ACCOUNT
,TOOL.VERSION
,ISNULL(ENTITY.MAPPING_TEXT,TOOL.ENTITY) ENTITY
,TOOL.CHANNEL
,TOOL.YEAR
,TOOL.MONTH
,SUM(TOOL.TOTAL_AMOUNT) TOTAL_AMOUNT
,TOOL.MONTH+TOOL.YEAR as PERIOD_YEAR
FROM [KLA_EXTERNAL].[BIC].[LA_ANP_DIST_TOOL]  TOOL WITH(NOLOCK)
INNER JOIN [KLA_EXTERNAL].[BIC].[LA_ANP_DIST_FILTER] FILT WITH(NOLOCK)
ON TOOL.VERSION = FILT.VERSION
AND TOOL.YEAR = FILT.YEAR
AND TOOL.MONTH = FILT.MONTH
LEFT JOIN [KLA_EXTERNAL].[BIC].[LA_ANP_DIST_MAPPING] BRAND WITH(NOLOCK)
ON BRAND.TEXT = TOOL.BRAND
LEFT JOIN [KLA_EXTERNAL].[BIC].[LA_ANP_DIST_MAPPING] ENTITY WITH(NOLOCK)
ON ENTITY.TEXT = TOOL.ENTITY
GROUP BY ISNULL(BRAND.MAPPING_TEXT,BRAND)
,TOOL.ACCOUNT
,TOOL.VERSION
,ISNULL(ENTITY.MAPPING_TEXT,TOOL.ENTITY)
,TOOL.CHANNEL
,TOOL.YEAR
,TOOL.MONTH
HAVING SUM(TOOL.TOTAL_AMOUNT) <> 0
ORDER BY CHANNEL,BRAND, ACCOUNT,YEAR,MONTH


IF (@@ERROR <> 0)
	BEGIN
        ROLLBACK TRANSACTION TRANS;
	END

COMMIT TRANSACTION;

    
END






GO
/****** Object:  Table [dbo].[DMND_PLNNG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMND_PLNNG](
	[BU] [varchar](20) NULL,
	[SKU_LEVEL_TYP] [varchar](100) NULL,
	[CTRY] [varchar](50) NULL,
	[ICBP_CUST] [varchar](50) NULL,
	[SKU_DESC] [varchar](100) NULL,
	[CHNL] [varchar](50) NULL,
	[CATG] [varchar](30) NULL,
	[SUB_CATG] [varchar](20) NULL,
	[BRAND] [varchar](30) NULL,
	[SRC] [varchar](20) NULL,
	[PROD_TYP] [varchar](50) NULL,
	[SEG_HVHV] [varchar](50) NULL,
	[FCST_PD] [varchar](10) NULL,
	[KG_UOM] [decimal](15, 2) NULL,
	[UOM] [varchar](10) NULL,
	[LAG] [varchar](12) NULL,
	[YR] [int] NULL,
	[MN] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[FCST] [decimal](15, 2) NULL,
	[ACTLS] [decimal](18, 2) NULL,
	[RELATIVE_ERR] [decimal](18, 2) NULL,
	[ABSOLUTE_ERR] [decimal](18, 2) NULL,
	[USD] [float] NULL,
	[INCL_EXCL] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMND_PLNNG_SKU]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMND_PLNNG_SKU](
	[SKU] [varchar](100) NULL,
	[SKU_LEVEL_TYP] [varchar](100) NULL,
	[SKU_DESC] [varchar](100) NULL,
	[DESC] [varchar](100) NULL,
	[CATG] [varchar](30) NULL,
	[SUB_CATG] [varchar](20) NULL,
	[BRAND] [varchar](30) NULL,
	[SRC] [varchar](20) NULL,
	[PROD_TYP] [varchar](50) NULL,
	[SEG_HVHV] [varchar](50) NULL,
	[KG_UOM] [decimal](15, 2) NULL,
	[CTRY] [varchar](50) NULL,
	[ICBP_CUST] [varchar](50) NULL,
	[CHNL] [varchar](50) NULL,
	[INCL_EXCL] [int] NULL,
	[BU] [varchar](50) NULL,
	[FCST_PD] [varchar](10) NULL,
	[UOM] [varchar](10) NULL,
	[YR] [int] NULL,
	[PD] [varchar](10) NULL,
	[MN] [varchar](10) NULL,
	[LAG] [varchar](12) NULL,
	[FCST] [decimal](15, 2) NULL,
	[ACTLS] [decimal](38, 3) NULL,
	[RELATIVE_ERR] [decimal](18, 2) NULL,
	[ABSOLUTE_ERR] [decimal](18, 2) NULL,
	[USD] [float] NULL,
	[FCST_TYP] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_BB_YEAR_VERSION]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_BB_YEAR_VERSION](
	[SEQ_NUM] [int] NULL,
	[PD] [varchar](4) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_DMND_PLNNG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_DMND_PLNNG](
	[BU] [varchar](20) NULL,
	[SKU_LEVEL_TYP] [varchar](100) NULL,
	[CTRY] [varchar](50) NULL,
	[ICBP_CUST] [varchar](50) NULL,
	[SKU_DESC] [varchar](100) NULL,
	[CHNL] [varchar](50) NULL,
	[CATG] [varchar](30) NULL,
	[SUB_CATG] [varchar](20) NULL,
	[BRAND] [varchar](30) NULL,
	[SRC] [varchar](20) NULL,
	[PROD_TYP] [varchar](50) NULL,
	[SEG_HVHV] [varchar](50) NULL,
	[FCST_PD] [varchar](10) NULL,
	[kg/SUOM] [decimal](15, 2) NULL,
	[UOM] [varchar](10) NULL,
	[LAG] [varchar](12) NULL,
	[YR] [int] NULL,
	[MN] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[FCST] [decimal](15, 2) NULL,
	[ACTLS] [decimal](18, 2) NULL,
	[RELATIVE_ERR] [decimal](18, 2) NULL,
	[ABSOLUTE_ERR] [decimal](18, 2) NULL,
	[USD] [float] NULL,
	[Incl# (1) / Excl# (0)] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_DMND_PLNNG_SKU]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_DMND_PLNNG_SKU](
	[SKU] [varchar](100) NULL,
	[SKU_LEVEL_TYP] [varchar](100) NULL,
	[SKU_DESC] [varchar](100) NULL,
	[DESC] [varchar](100) NULL,
	[CATG] [varchar](30) NULL,
	[SUB_CATG] [varchar](20) NULL,
	[BRAND] [varchar](30) NULL,
	[SRC] [varchar](20) NULL,
	[PROD_TYP] [varchar](50) NULL,
	[SEG_HVHV] [varchar](50) NULL,
	[kg/SUOM] [decimal](15, 2) NULL,
	[CTRY] [varchar](50) NULL,
	[ICBP_CUST] [varchar](50) NULL,
	[CHNL] [varchar](50) NULL,
	[Incl# (1) / Excl# (0)] [int] NULL,
	[BU] [varchar](50) NULL,
	[FCST_PD] [varchar](10) NULL,
	[UOM] [varchar](10) NULL,
	[YR] [int] NULL,
	[PD] [varchar](10) NULL,
	[MN] [varchar](10) NULL,
	[LAG] [varchar](12) NULL,
	[FCST] [decimal](15, 2) NULL,
	[ACTLS] [decimal](38, 3) NULL,
	[FCST_TYP] [varchar](2) NULL,
	[REL_ERR] [decimal](18, 2) NULL,
	[ABS_ERR] [decimal](18, 2) NULL,
	[USD] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_NBB_YEAR_VERSION]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_NBB_YEAR_VERSION](
	[SEQ_NUM] [int] NULL,
	[PD] [varchar](4) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[Acct_Hrchy_ZBB]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [KLA_ZBB].[Acct_Hrchy_ZBB](
	[GL_Acct] [char](10) NOT NULL,
	[Acct_Desc] [nchar](60) NULL,
	[Acct_Categ] [char](40) NULL,
	[Acct_Sub_Categ] [char](40) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_Acct_Hrchy] PRIMARY KEY CLUSTERED 
(
	[GL_Acct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[BB_ION_BDG_2]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[BB_ION_BDG_2](
	[VER] [varchar](10) NOT NULL,
	[ION_CD] [varchar](12) NOT NULL,
	[ACCT_CD] [varchar](10) NOT NULL,
	[ION_CURR_TYP] [varchar](5) NOT NULL,
	[Yr] [decimal](4, 0) NOT NULL,
	[Pd] [decimal](3, 0) NOT NULL,
	[AMT] [decimal](15, 3) NULL,
	[DW_CRE_TS] [datetime] NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_DEL_BIT] [char](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VER] ASC,
	[ION_CD] ASC,
	[ACCT_CD] ASC,
	[ION_CURR_TYP] ASC,
	[Yr] ASC,
	[Pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[CC_Hrchy_ZBB]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[CC_Hrchy_ZBB](
	[CC_Nbr] [char](10) NOT NULL,
	[CC_Desc] [varchar](50) NULL,
	[Lvl0_Desc] [char](15) NULL,
	[Lvl1_Desc] [char](75) NULL,
	[Lvl1_Cd] [char](12) NOT NULL,
	[Lvl2_Desc] [char](75) NULL,
	[Lvl2_Cd] [char](12) NOT NULL,
	[Lvl3_Desc] [char](75) NULL,
	[Lvl3_Cd] [char](12) NOT NULL,
	[Lvl4_Desc] [char](75) NULL,
	[Lvl4_Cd] [char](12) NOT NULL,
	[Lvl5_Desc] [char](75) NULL,
	[Lvl5_Cd] [char](25) NOT NULL,
	[Cst_Ctr_ID_Desc] [char](75) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
	[Lvl6_Cd] [varchar](24) NULL,
	[Lvl7_Cd] [varchar](24) NULL,
	[Lvl6_Desc] [char](75) NULL,
	[Lvl7_Desc] [char](75) NULL,
 CONSTRAINT [PK_CC_Hrchy] PRIMARY KEY CLUSTERED 
(
	[CC_Nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[COEP_Alloc]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[COEP_Alloc](
	[COEPID] [int] IDENTITY(1,1) NOT NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[Drv_WOGBTR] [decimal](15, 2) NULL,
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
	[Drv_OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[Drv_KSTAR] [varchar](10) NULL,
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
	[DW_Del_Bit] [char](1) NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_COEP_Alloc] PRIMARY KEY CLUSTERED 
(
	[COEPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[COEP_Alloc_backup_13Jan]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[COEP_Alloc_backup_13Jan](
	[COEPID] [int] IDENTITY(1,1) NOT NULL,
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[Drv_WOGBTR] [decimal](15, 2) NULL,
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
	[Drv_OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[Drv_KSTAR] [varchar](10) NULL,
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
	[DW_Del_Bit] [char](1) NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[CURR_EXCHNG_FMT]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[CURR_EXCHNG_FMT](
	[VER] [varchar](10) NOT NULL,
	[FR_CURR] [char](3) NOT NULL,
	[TO_CURR] [char](10) NOT NULL,
	[YR] [decimal](4, 0) NOT NULL,
	[PD] [decimal](3, 0) NOT NULL,
	[FCTR] [decimal](18, 12) NULL,
	[DW_CRE_TS] [datetime] NOT NULL,
	[DW_CRE_USR] [varchar](50) NOT NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_CURR_EXCHNG_FMT] PRIMARY KEY CLUSTERED 
(
	[VER] ASC,
	[FR_CURR] ASC,
	[TO_CURR] ASC,
	[YR] ASC,
	[PD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[Ion_Hrchy_ZBB]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[Ion_Hrchy_ZBB](
	[ION_ID] [char](20) NOT NULL,
	[ION_DESC] [varchar](255) NULL,
	[L0_Desc] [char](75) NULL,
	[L1_Desc] [char](75) NULL,
	[L2_Desc] [char](75) NULL,
	[L3_Desc] [char](75) NULL,
	[L4_Desc] [char](75) NULL,
	[L5_Desc] [char](75) NULL,
	[L1_Cd] [varchar](25) NULL,
	[L2_Cd] [varchar](25) NULL,
	[L3_Cd] [varchar](25) NULL,
	[L4_Cd] [varchar](25) NULL,
	[L5_Cd] [varchar](25) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
	[L6_Cd] [varchar](255) NULL,
	[L7_Cd] [char](75) NULL,
	[L6_Desc] [varchar](255) NULL,
	[L7_Desc] [varchar](255) NULL,
	[C_L1_AREA] [varchar](255) NULL,
	[C_L1_BRAND PROJECT] [varchar](255) NULL,
	[C_L2_AREA] [varchar](255) NULL,
	[C_L2_BRAND PROJECT] [varchar](255) NULL,
	[C_L3_AREA] [varchar](255) NULL,
	[C_L3_BRAND PROJECT] [varchar](255) NULL,
	[C_L4_AREA] [varchar](255) NULL,
	[C_L4_BRAND PROJECT] [varchar](255) NULL,
	[C_L5_AREA] [varchar](255) NULL,
	[C_L5_BRAND PROJECT] [varchar](255) NULL,
	[C_L6_AREA] [varchar](255) NULL,
	[C_L6_BRAND PROJECT] [varchar](255) NULL,
	[C_L7_AREA] [varchar](255) NULL,
	[C_L7_BRAND PROJECT] [varchar](255) NULL,
 CONSTRAINT [Idx_Ion_Hrchy] PRIMARY KEY CLUSTERED 
(
	[ION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[NBB_BDG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [KLA_ZBB].[NBB_BDG](
	[COST_CTR_CD] [char](10) NOT NULL,
	[COST_CURR_TYP] [char](3) NOT NULL,
	[ACCT_CD] [char](10) NOT NULL,
	[YR] [decimal](4, 0) NOT NULL,
	[PD] [decimal](3, 0) NOT NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NOT NULL,
	[DW_CRE_TS] [datetime] NOT NULL,
	[DW_CRE_USR] [varchar](50) NOT NULL,
	[DW_MOD_TS] [datetime] NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [char](1) NOT NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime] NULL,
 CONSTRAINT [PK_NBB_BDG] PRIMARY KEY CLUSTERED 
(
	[COST_CTR_CD] ASC,
	[ACCT_CD] ASC,
	[YR] ASC,
	[PD] ASC,
	[VER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[Usr_Sec]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [KLA_ZBB].[Usr_Sec](
	[Usr_NT_Id] [nvarchar](25) NOT NULL,
	[Cst_Ctr] [char](10) NOT NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_Usr_Sec] PRIMARY KEY CLUSTERED 
(
	[Usr_NT_Id] ASC,
	[Cst_Ctr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KLA_ZBB].[Usr_Sec_Cco]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KLA_ZBB].[Usr_Sec_Cco](
	[Usr_Nm] [varchar](150) NULL,
	[Lvl3_Cd] [varchar](150) NULL,
	[Lvl3_Desc] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[DMND_PLNNG_LAND_STAGE]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[DMND_PLNNG_LAND_STAGE](
	[SKU] [varchar](50) NULL,
	[SKU_LEVEL_Type] [varchar](50) NULL,
	[SKU_DESCRIPTION] [varchar](50) NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[CATEGORY] [varchar](30) NULL,
	[SUB_CATEGORY] [varchar](20) NULL,
	[BRAND] [varchar](30) NULL,
	[SOURCE] [varchar](20) NULL,
	[PRODUCT_TYPE] [varchar](50) NULL,
	[Segmentation_HVHV] [varchar](50) NULL,
	[kg/SUOM] [decimal](15, 2) NULL,
	[COUNTRY] [varchar](50) NULL,
	[ICBP Customer] [varchar](50) NULL,
	[CHANNEL] [varchar](50) NULL,
	[Incl# (1) / Excl# (0)] [int] NULL,
	[BU] [varchar](50) NULL,
	[FORECASTING_PERIOD] [varchar](10) NULL,
	[UOM] [varchar](10) NULL,
	[LOADING_YEAR] [int] NULL,
	[PERIOD] [varchar](10) NULL,
	[MONTH] [varchar](10) NULL,
	[LAG] [varchar](12) NULL,
	[FORECAST VALUE] [decimal](15, 2) NULL,
	[ACTUALS] [decimal](38, 3) NULL,
	[Forecast Type] [varchar](2) NULL,
	[REL_ERROR] [decimal](18, 2) NULL,
	[ABS_ERROR] [decimal](18, 2) NULL,
	[USD] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EXTRACT_FT_TD_BIC_ION]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EXTRACT_FT_TD_BIC_ION](
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
/****** Object:  Table [STG].[FISC_CAL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[FISC_CAL](
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[FISC_WK] [decimal](3, 0) NULL,
	[FISC_WK_STRT_DT] [date] NULL,
	[FISC_WK_END_DT] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[STG_BB_ION_BDG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_BB_ION_BDG](
	[ION_CD] [varchar](12) NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NULL,
	[ERROR_FLAG] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_CURR_EXCHNG_FMT]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_CURR_EXCHNG_FMT](
	[VER] [varchar](20) NOT NULL,
	[FR_CURR] [char](3) NOT NULL,
	[TO_CURR] [char](10) NOT NULL,
	[YR] [varchar](10) NOT NULL,
	[PD] [int] NOT NULL,
	[FCTR] [decimal](18, 12) NULL,
	[WARNING_FLAG] [char](1) NULL,
	[ERROR_FLAG] [char](1) NULL,
 CONSTRAINT [PK_STG_CURR_EXCHNG_FMT] PRIMARY KEY CLUSTERED 
(
	[VER] ASC,
	[FR_CURR] ASC,
	[TO_CURR] ASC,
	[YR] ASC,
	[PD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_ION_HRCHY_FLAT]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_ION_HRCHY_FLAT](
	[CURRENT_LEAF] [varchar](255) NULL,
	[LEAF_LEVEL] [int] NULL,
	[LEVEL0] [varchar](255) NULL,
	[LEVEL1] [varchar](255) NULL,
	[LEVEL2] [varchar](255) NULL,
	[LEVEL3] [varchar](255) NULL,
	[LEVEL4] [varchar](255) NULL,
	[LEVEL5] [varchar](255) NULL,
	[LEVEL6] [varchar](255) NULL,
	[LEVEL7] [varchar](255) NULL,
	[C_L1_AREA] [varchar](255) NULL,
	[C_L1_BRAND PROJECT] [varchar](255) NULL,
	[C_L1_Code] [varchar](255) NULL,
	[C_L2_AREA] [varchar](255) NULL,
	[C_L2_BRAND PROJECT] [varchar](255) NULL,
	[C_L2_Code] [varchar](255) NULL,
	[C_L3_AREA] [varchar](255) NULL,
	[C_L3_BRAND PROJECT] [varchar](255) NULL,
	[C_L3_Code] [varchar](255) NULL,
	[C_L4_AREA] [varchar](255) NULL,
	[C_L4_BRAND PROJECT] [varchar](255) NULL,
	[C_L4_Code] [varchar](255) NULL,
	[C_L5_AREA] [varchar](255) NULL,
	[C_L5_BRAND PROJECT] [varchar](255) NULL,
	[C_L5_Code] [varchar](255) NULL,
	[C_L6_AREA] [varchar](255) NULL,
	[C_L6_BRAND PROJECT] [varchar](255) NULL,
	[C_L6_Code] [varchar](255) NULL,
	[C_L7_AREA] [varchar](255) NULL,
	[C_L7_BRAND PROJECT] [varchar](255) NULL,
	[C_L7_Code] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_KLA_USR_SEC_CCO]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_KLA_USR_SEC_CCO](
	[USER_NAME] [varchar](150) NULL,
	[LEVEL3_CD] [varchar](150) NULL,
	[LEVEL3_DESCRIPTION] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_NBB_BDG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_NBB_BDG](
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
/****** Object:  Table [STG].[STG_TEMP_CURR_EXCHNG_2]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_TEMP_CURR_EXCHNG_2](
	[VER] [varchar](20) NOT NULL,
	[FR_CURR] [varchar](3) NOT NULL,
	[TO_CURR] [varchar](10) NOT NULL,
	[YR] [varchar](10) NOT NULL,
	[PD] [int] NOT NULL,
	[FCTR] [decimal](18, 12) NULL,
	[WARNING_FLAG] [varchar](4) NULL,
	[ERROR_FLAG] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[VER] ASC,
	[FR_CURR] ASC,
	[TO_CURR] ASC,
	[YR] ASC,
	[PD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_USR_SEC]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_USR_SEC](
	[USR_NM] [varchar](25) NULL,
	[LVL3_CD] [varchar](25) NULL,
	[LVL3_DESC] [varchar](25) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [KLA_ZBB].[UVW_Curr_Exchng_Fmt_Flat]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KLA_ZBB].[UVW_Curr_Exchng_Fmt_Flat]
AS



SELECT YR      
      ,PD      
      ,FR_CURR COLLATE DATABASE_DEFAULT AS FR_CURR
	  ,SUM(CASE WHEN VER = 'Actual'  AND TO_CURR  = 'USD ZBB' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_Actual_USDZBB'
	  ,SUM(CASE WHEN VER = 'Budget'  AND TO_CURR  = 'USD ZBB' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_Budget_USDZBB'
	  ,SUM(CASE WHEN VER = '3&9'     AND TO_CURR  = 'USD ZBB' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_3&9_USDZBB'
	  ,SUM(CASE WHEN VER = '6&6'     AND TO_CURR  = 'USD ZBB' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_6&6_USDZBB'
	  ,SUM(CASE WHEN VER = '9&3'     AND TO_CURR  = 'USD ZBB' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_9&3_USDZBB'
	  ,SUM(CASE WHEN VER = 'Actual'  AND TO_CURR  = 'USD' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_Actual_USD'
	  ,SUM(CASE WHEN VER = 'Budget'  AND TO_CURR  = 'USD' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_Budget_USD'
	  ,SUM(CASE WHEN VER = '3&9'     AND TO_CURR  = 'USD' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_3&9_USD'
	  ,SUM(CASE WHEN VER = '6&6'     AND TO_CURR  = 'USD' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_6&6_USD'
	  ,SUM(CASE WHEN VER = '9&3'     AND TO_CURR  = 'USD' THEN ISNULL(FCTR,0) ELSE 0 END) AS 'Fctr_9&3_USD'
	  
FROM [KLA_FIN].[KLA_ZBB].[CURR_EXCHNG_FMT]  (NOLOCK)
GROUP BY  YR      
         ,PD      
         ,FR_CURR 



GO
/****** Object:  View [dbo].[UVW_FISC_CAL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_FISC_CAL]
AS
SELECT * FROM [STG].[FISC_CAL]



GO
/****** Object:  View [KLA_ZBB].[UVW_BIC_BB_ACTL_BDG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KLA_ZBB].[UVW_BIC_BB_ACTL_BDG]
AS
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] ,
(SELECT [FISC_PD] -1 FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd,
(SELECT [FISC_YR]  FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] <= (SELECT [FISC_PD]   FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])) )

),
CTE(YEAR, Month, Amount,cost_element,Ion,INVOICE_DATE,EXPENSE_TYPE_ID,DOCUMENT,DESCRIPTION,INVOICE_ID)
AS 
(
  select CAST(YEAR AS DECIMAL(10)) YEAR, Month, amount,COST_ELEMENT,ION,[INVOICE_DATE],CAST([EXPENSE_TYPE_ID] AS DECIMAL(28)),[DOCUMENT],[DESCRIPTION],
  CAST([INVOICE_ID] AS DECIMAL(28))
  from KLA_EXTERNAL.BIC.LA_ANP_INVOICE_ENTRY d
  unpivot
  (
    amount
    for Month in (Jan, Feb, Mar, Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)
  ) u where amount<>0
) ,
	CTE_Actl
AS (
SELECT t.FISC_YR,Pd1, Resp_Cost_Ctr, Ordr_Nbr, REPLICATE('0', 10 - LEN(GL_ACCT)) + CAST(GL_ACCT AS varchar(10))GL_ACCT, Curr_Key, Co_Cd, Co_Cd_Desc,  Tot_Val_Obj_Curr,
        t.Curr_Fisc_Closed_Pd,t.Curr_Fisc_Yr
 FROM(
	SELECT a.YEAR AS FISC_YR,
						CASE WHEN a.Month='JAN' then 1
						WHEN a.Month='FEB' then 2
						WHEN a.Month='MAR' then 3
						WHEN a.Month='APR' then 4
						WHEN a.Month='MAY' then 5
						WHEN a.Month='JUN' then 6
						WHEN a.Month='JUL' then 7
						WHEN a.Month='AUG' then 8 
						WHEN a.Month='SEP'  then 9
						WHEN a.Month='OCT' then 10
						WHEN a.Month='NOV' then 11
						WHEN a.Month='DEC' then 12   END AS Pd1

		,b.[RESPONSIBLE_CC_ID] AS Resp_Cost_Ctr
		,  REPLICATE('0', 12 - LEN(a.Ion)) + CAST(a.Ion AS varchar(12))AS Ordr_Nbr
		,a.cost_element  AS GL_ACCT
		--,a.SUPPLIER               AS Vend_Nm
		,CASE WHEN compnys.COMPNY_CODE IN ('KLAR','LAGA') THEN 'ARS'
     WHEN compnys.COMPNY_CODE IN ('KLBL') THEN 'BRL'
     WHEN compnys.COMPNY_CODE IN ('KLCO') THEN 'COP'
     WHEN compnys.COMPNY_CODE IN ('LCCR','KLCR') THEN 'CRC'
     WHEN compnys.COMPNY_CODE IN ('ESPI') THEN 'EUR'
     WHEN compnys.COMPNY_CODE IN ('KLCA') THEN 'GTQ'
     WHEN compnys.COMPNY_CODE IN ('GIMX','GSMX','KCMX','KLMX','KLMXI','PRMX') THEN 'MXP'
     WHEN compnys.COMPNY_CODE IN ('LPPE','KLPE') THEN 'PER'
     WHEN compnys.COMPNY_CODE IN ('KCAR','KLPR','KLCH','KLCL','LEKE','KLEC','KPRS','KLSV','LPKP','KLPA') THEN 'USD'
     WHEN compnys.COMPNY_CODE IN ('KLVZ') THEN 'VEB' END AS Curr_Key
		,compnys.COMPNY_CODE AS Co_Cd
		,compnys.[COMPNY_NAME] AS Co_Cd_Desc
		--,Curr_Fisc_Closed_Pd
		--,Curr_Fisc_Yr
		,null AS Tot_Val_Trns_Curr
		,SUM(a.Amount) AS Tot_Val_Obj_Curr
		,null AS Tot_Val_Cntl_Area_Curr
		,null AS Tot_Qty_Entr
		,null AS Tot_Val_Obj_Curr_USD
	FROM  CTE a,
	KLA_EXTERNAL.[BIC].[LA_ANP_REQUEST_ION] b,
	--KLA_EXTERNAL.[BIC].la_anp_invoice_entry ie,
     KLA_EXTERNAL.[BIC].[HR_COMPNYS] compnys,
	   KLA_EXTERNAL.[BIC].LA_ANP_MASTER_DATA md

	 where a.cost_element =a.cost_element  and cast(a.YEAR as decimal(10))=cast(a.[YEAR] as decimal(10))
	 and cast(b.[COMPNY_REC_ID] as decimal(10))=cast(compnys.[COMPNY_REC_ID] as decimal(10))
	 and md.ION =a.Ion
	  and cast(a.Ion as varchar(20))=cast(b.ION as varchar(20))
	  GROUP BY 
	   a.YEAR,
	a.Month

		,b.[RESPONSIBLE_CC_ID] 
		,a.Ion
		,a.cost_element  
		--,a.SUPPLIER
		,compnys.COMPNY_CODE
		,compnys.[COMPNY_NAME] 
		
	 	) a
	INNER JOIN CTE_T t ON cast(cast(t.[FISC_YR] as decimal(10)) as varchar(10))=cast(cast(a.[FISC_YR] as decimal(10)) as varchar(10))
	 --AND cast(t.[FISC_PD] as int)=cast(substring(a.Pd1,6,2) as int)
	 AND cast(t.[FISC_PD] as int)=a.Pd1
	)
	,
CTE1
AS (
	SELECT  ION_Cd,ION_Curr_Typ
			,Acct_Cd,Pd,Yr
			,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM (
		SELECT  REPLICATE('0', 12 - LEN([ION_CD])) + CAST([ION_CD] AS varchar(12)) ION_Cd
			,[ION_CURR_TYP] ION_Curr_Typ
			,[ACCT_CD] Acct_Cd
			,Pd
			,Yr
			,ISNULL([AMT],0)Amt
			,[VER] Ver
		--FROM [KLA_ZBB].[UVW_BB_Ion_Bdg] WITH (NOLOCK)
		FROM [KLA_ZBB].BB_ION_BDG_2 WITH (NOLOCK)
		--WHERE   [VER]='Budget'
		) d
	pivot(SUM(Amt) FOR Ver IN (
				[Actual]
				,[Budget]
				,[6&6]
				,[3&9]
				,[9&3]
				)) piv
	)
	

,CTEN
AS (
       SELECT a.Yr
       ,a.Pd Pd
       ,a.ION_Cd AS Ordr_Nbr
       ,a.Acct_Cd  as  Acct_Cd
       ,a.ION_Curr_Typ
       --,b.KOSTV AS Resp_Cost_Ctr         
		,ISNULL ([Actual],0)  AS 'Bdg_Actl_Amt'
		,ISNULL([Budget],0)  AS 'Bdg_Bdg_Amt'
		,ISNULL([6&6],0)  AS 'Bdg_6&6_Amt'
		,ISNULL([3&9],0)  AS 'Bdg_3&9_Amt'
		,ISNULL([9&3],0)  AS 'Bdg_9&3_Amt'

       FROM CTE1 a
      
       
       )

,CTE2
AS (
	SELECT ISNULL(FISC_YR, Yr) Yr
	,ISNULL(Pd1, Pd) Pd
	,ISNULL(a.Ordr_Nbr, b.Ordr_Nbr) Ordr_Nbr
	,ISNULL(GL_ACCT, Acct_Cd) Acct_Cd
	--,a.Vend_Nm
	,ISNULL(Curr_Key, ION_Curr_Typ) Curr_Key
	--,Curr_Key
	,ION_Curr_Typ as Actl_Cur_Key
	,ION_Curr_Typ as Bdg_Cur_Key
	,a.Resp_Cost_Ctr Resp_Cost_Ctr
	,ISNULL(Tot_Val_Obj_Curr,0)Tot_Val_Obj_Curr
	,a.Co_Cd
	,a.Co_Cd_Desc
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_Yr
	,ISNULL([Bdg_Actl_Amt],0) [Bdg_Actl_Amt]
	,ISNULL([Bdg_Bdg_Amt],0) [Bdg_Bdg_Amt]
	--,[Bdg_6&6_Amt]
	--,[Bdg_3&9_Amt]
	--,[Bdg_9&3_Amt]
		,isnull(CASE WHEN ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL ([Bdg_Actl_Amt],0) =0 then Tot_Val_Obj_Curr 
when  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0)=0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0)
when  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0)
when  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
 when  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0 then ISNULL(Tot_Val_Obj_Curr,0)
  when  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) > 0 then ISNULL(Tot_Val_Obj_Curr,0) 
   when  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0) > 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0   then ISNULL(Tot_Val_Obj_Curr,0)
   else ISNULL([Bdg_6&6_Amt],0) end,0)  as[Bdg_6&6_Amt]
		,isnull(CASE WHEN ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
when  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0)=0  and ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
when  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
when  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
 when  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0 then ISNULL(Tot_Val_Obj_Curr,0) 
   when  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) > 0 then ISNULL(Tot_Val_Obj_Curr,0) 
   when  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0) > 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0   then ISNULL(Tot_Val_Obj_Curr,0) 
   else ISNULL([Bdg_3&9_Amt],0) end,0)  as[Bdg_3&9_Amt]
	,isnull(CASE WHEN ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
when  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0)=0 and ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
when  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
when  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0)
when  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0 then ISNULL(Tot_Val_Obj_Curr,0)
  when  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) > 0 then ISNULL(Tot_Val_Obj_Curr,0) 
   when  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0) > 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0   then ISNULL(Tot_Val_Obj_Curr,0)  
   else ISNULL([Bdg_9&3_Amt],0) end ,0) as[Bdg_9&3_Amt]
	,CASE  when (Curr_Key IS NULL) OR (ION_Curr_Typ IS NULL)  THEN NULL
		  when Curr_Key COLLATE Database_Default =ION_Curr_Typ COLLATE Database_Default THEN 'Y'
	      else'N'
	END as 'Actl_Bdg_Curr_Match'
	FROM CTE_Actl  a
	FULL JOIN CTEN b ON a.Ordr_Nbr COLLATE Database_Default = b.Ordr_Nbr COLLATE Database_Default
		AND a.FISC_YR = b.Yr
		--AND cast(substring(a.Pd1,6,2) as int) = b.Pd
		AND a.Pd1= b.Pd
		AND a.GL_ACCT COLLATE Database_Default = b.Acct_Cd COLLATE Database_Default
		AND a.Curr_Key COLLATE Database_Default = b.ION_Curr_Typ COLLATE Database_Default 
			)
			--  select * from CTE2
		 	 --select * from CTE2


SELECT   a.Yr
	,a.Pd
	,a.Ordr_Nbr
	,a.Acct_Cd
	--,a.Vend_Nm
	,a.Curr_Key
	,a.Actl_Cur_Key
	,a.Bdg_Cur_Key 
	,a.Resp_Cost_Ctr
	,isnull(a.Co_Cd,compnys.COMPNY_CODE) AS Co_Cd
	,isnull(a.Co_Cd_Desc ,compnys.[COMPNY_NAME])AS Co_Cd_Desc
	,isnull(a.Curr_Fisc_Closed_Pd,t.Curr_Fisc_Closed_Pd) Curr_Fisc_Clsd_Pd
	,isnull(a.Curr_Fisc_Yr ,t.Curr_Fisc_Yr)Curr_Fisc_Yr
	,isnull(a.Tot_Val_Obj_Curr,0)Tot_Val_Obj_Curr
	,a.Actl_Bdg_Curr_Match as Actl_Bdg_Curr_Mtch
	,[Acct_Desc]
	,[Acct_Categ]  Acct_Catg
	,[Acct_Sub_Categ]  Acct_Sub_Catg
	,[ION_DESCRIPTION] [Cost_Ctr_Desc]
	,null as [Lvl0_Desc]
	,null as [Lvl1_Desc]
	,null as  [Lvl1_Cd]
	,[SUB_REGION] [Lvl2_Desc]
	,[SUB_REGION] [Lvl2_Cd]
	,[COUNTRY] [Lvl3_Desc]
	, [COUNTRY][Lvl3_Cd]
	,[COMPANY_CODE] [Lvl4_Desc]
	,[COMPANY_CODE] [Lvl4_Cd]
	,[CATEGORY] [Lvl5_Desc]
	,[CATEGORY] [Lvl5_Cd]
	,[PARENT] [Lvl6_Desc]
	,[PARENT] [Lvl6_Cd]
	,null as [Lvl7_Desc]
	,[ION_ID] [Lvl7_Cd]


	, null as C_Lvl1_Area,
  null as C_Lvl1_Brand_Prj,
  null as C_Lvl2_Area,
  null as C_Lvl2_Brand_Prj,
  null as C_Lvl3_Area,
  null as C_Lvl3_Brand_Prj,
  null as C_Lvl4_Area,
  null as C_Lvl4_Brand_Prj,
  null as C_Lvl5_Area,
  null as C_Lvl5_Brand_Prj,
  null as C_Lvl6_Area,
  null as C_Lvl6_Brand_Prj,
  [AREA_TYPE]  C_Lvl7_Area,
  ION.[CAMPAIGN] C_Lvl7_Brand_Prj

	,isnull([Bdg_Actl_Amt],0)[Bud_Vrsn_Actual_Amt]
	,isnull([Bdg_Bdg_Amt],0)[Bud_Vrsn_Budget_Amt]
	,isnull([Bdg_6&6_Amt],0)[Bud_Vrsn_6&6_Amt]
	,isnull([Bdg_3&9_Amt],0)[Bud_Vrsn_3&9_Amt]
	,isnull([Bdg_9&3_Amt],0)[Bdg_Vrsn_9&3_Amt]
	,ISNULL([Fctr_Actual_USDZBB]* Tot_Val_Obj_Curr,0) as Actl_USDZBB_CURR_Amt_Bdg_Ver 
	,ISNULL([Fctr_Budget_USDZBB]*[Bdg_Bdg_Amt],0)  as Bud_USDZBB_CURR_Amt
	,ISNULL([Fctr_3&9_USDZBB]*[Bdg_3&9_Amt],0) as Bud_39_USDZBB_CURR_Amt
	,ISNULL([Fctr_6&6_USDZBB]*[Bdg_6&6_Amt],0) as Bud_66_USDZBB_CURR_Amt
	,ISNULL([Fctr_9&3_USDZBB]*[Bdg_9&3_Amt] ,0)as Bud_93_USDZBB_CURR_Amt
	,ISNULL([Fctr_Actual_USD]* Tot_Val_Obj_Curr ,0)as Actl_USD_Amt_Bdg_Ver 
	,ISNULL([Fctr_Budget_USD]*[Bdg_Bdg_Amt],0) as Bud_USD_Amt
	,ISNULL([Fctr_3&9_USD]*[Bdg_3&9_Amt],0) as Bud_39_USD_Amt
	,ISNULL([Fctr_6&6_USD]*[Bdg_6&6_Amt] ,0)as Bud_66_USD_Amt
	,ISNULL([Fctr_9&3_USD]*[Bdg_9&3_Amt] ,0)as Bud_93_USD_Amt


FROM CTE2 a
    INNER JOIN KLA_FIN.KLA_ZBB.Acct_Hrchy_ZBB ACNT WITH (NOLOCK) ON ACNT.GL_Acct COLLATE Database_Default = Acct_Cd COLLATE Database_Default AND ACNT.[DW_Del_Bit] = 0
	--LEFT OUTER JOIN KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB CCH WITH (NOLOCK) ON CCH.CC_Nbr  = a.Resp_Cost_Ctr  and CCH.[DW_Del_Bit] = 0
	
	--  INNER JOIN KLA_FIN.KLA_ZBB.Ion_Hrchy_ZBB ION WITH (NOLOCK) ON ION.ION_ID COLLATE Database_Default = Ordr_Nbr COLLATE Database_Default  -- Commented by VV 03/25/2017 2:12 PM EST
	INNER JOIN KG_VIEWS.KLA.UVW_ION_MSTR_BIC ION WITH (NOLOCK) ON 
	REPLICATE('0', 12 - LEN(ION.ION_ID)) + CAST(ION.ION_ID AS varchar(12)) COLLATE Database_Default = Ordr_Nbr COLLATE Database_Default
	LEFT OUTER JOIN CTE_T t on a.Yr=t.FISC_YR and  a.Pd=[FISC_PD] --cast(substring(a.Pd,6,2) as int)=[FISC_PD]
	LEFT OUTER JOIN KLA_EXTERNAL.[BIC].[HR_COMPNYS] compnys ON a.Co_Cd=compnys.COMPNY_CODE
	LEFT JOIN [KLA_ZBB].[UVW_Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR COLLATE Database_Default = Curr_Key COLLATE Database_Default
		AND Yr = CURR_USD.YR 
		AND Pd= CURR_USD.PD
	where a.Ordr_Nbr<>'000000000000'

	
	
	




























GO
/****** Object:  View [KLA_ZBB].[UVW_BIC_BB_DETL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [KLA_ZBB].[UVW_BIC_BB_DETL]
AS

WITH CTE_T
AS (SELECT DISTINCT
  [FISC_YR],
  [FISC_PD],
  (SELECT
    REPLACE([FISC_PD] - 1, 0, 12)
  FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
  WHERE CONVERT(char(10), GETDATE(), 126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
  Curr_Fisc_Clsd_Pd,
  (SELECT
    CASE
      WHEN [FISC_PD] = 1 THEN [FISC_YR] - 1
      ELSE [FISC_YR]
    END [FISC_YR]
  FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
  WHERE CONVERT(char(10), GETDATE(), 126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
  Curr_Fisc_Yr
FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE [FISC_YR] IN (SELECT
  [FISC_YR] - 1
FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE CONVERT(char(10), GETDATE(), 126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR [FISC_YR] IN (SELECT
  [FISC_YR] - 2
FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE CONVERT(char(10), GETDATE(), 126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] IN (SELECT
  [FISC_YR]
FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE CONVERT(char(10), GETDATE(), 126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
)
AND ([FISC_PD] <= (SELECT
  [FISC_PD]
FROM KG_VIEWS.KG.UVW_FISC_CAL WITH (NOLOCK)
WHERE CONVERT(char(10), GETDATE(), 126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
))),
CTE (YEAR, Month, Amount, cost_element, Ion, INVOICE_DATE, EXPENSE_TYPE_ID, DOCUMENT, SUPPLIER, DESCRIPTION, INVOICE_ID)
AS (SELECT
  CAST(YEAR AS decimal(10)) YEAR,
  Month,
  amount,
  REPLICATE('0', 10 - LEN(COST_ELEMENT)) + CAST(COST_ELEMENT AS varchar(10)) COST_ELEMENT,
  REPLICATE('0', 12 - LEN(ION)) + CAST(ION AS varchar(12)) ION,
  [INVOICE_DATE],
  CAST([EXPENSE_TYPE_ID] AS decimal(28)),
  [DOCUMENT],
  [SUPPLIER],
  [DESCRIPTION],
  CAST([INVOICE_ID] AS decimal(28))
FROM KLA_EXTERNAL.BIC.LA_ANP_INVOICE_ENTRY d
UNPIVOT
(
amount
FOR Month IN (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)
) u
WHERE amount <> 0)

SELECT
  a.*,ISNULL([Fctr_Actual_USDZBB]* Tot_Val_Obj_Curr,0) as Actl_USDZBB_CURR_Amt_Ver,ISNULL([Fctr_Actual_USD]* Tot_Val_Obj_Curr ,0)as Actl_USD_Amt_Ver
FROM (SELECT DISTINCT
  --null               AS Co_Area, 
  CASE
    WHEN b.Month = 'JAN' THEN 1
    WHEN b.Month = 'FEB' THEN 2
    WHEN b.Month = 'MAR' THEN 3
    WHEN b.Month = 'APR' THEN 4
    WHEN b.Month = 'MAY' THEN 5
    WHEN b.Month = 'JUN' THEN 6
    WHEN b.Month = 'JUL' THEN 7
    WHEN b.Month = 'AUG' THEN 8
    WHEN b.Month = 'SEP' THEN 9
    WHEN b.Month = 'OCT' THEN 10
    WHEN b.Month = 'NOV' THEN 11
    WHEN b.Month = 'DEC' THEN 12
  END AS Pd,
  b.YEAR AS Fisc_Yr,
  b.cost_element AS Cost_Elmnt,
  SUM(b.Amount) AS Tot_Val_Trns_Curr,
  SUM(b.Amount) AS Tot_Val_Obj_Curr,
  
	CASE WHEN compnys.COMPNY_CODE IN ('KLAR','LAGA') THEN 'ARS'
     WHEN compnys.COMPNY_CODE IN ('KLBL') THEN 'BRL'
     WHEN compnys.COMPNY_CODE IN ('KLCO') THEN 'COP'
     WHEN compnys.COMPNY_CODE IN ('LCCR','KLCR') THEN 'CRC'
     WHEN compnys.COMPNY_CODE IN ('ESPI') THEN 'EUR'
     WHEN compnys.COMPNY_CODE IN ('KLCA') THEN 'GTQ'
     WHEN compnys.COMPNY_CODE IN ('GIMX','GSMX','KCMX','KLMX','KLMXI','PRMX') THEN 'MXP'
     WHEN compnys.COMPNY_CODE IN ('LPPE','KLPE') THEN 'PER'
     WHEN compnys.COMPNY_CODE IN ('KCAR','KLPR','KLCH','KLCL','LEKE','KLEC','KPRS','KLSV','LPKP','KLPA') THEN 'USD'
     WHEN compnys.COMPNY_CODE IN ('KLVZ') THEN 'VEB' END AS Curr_Key,
	-- EKKO.LIFNR               AS Vend_Nbr,
	 b.SUPPLIER               AS Vend_Nm, 
	 --AUFK.AUFNR               AS Ordr_Nbr,
		ot.ORDER_TYPE_CODE               AS Ordr_Typ,
		c.RESPONSIBLE_CC_ID               AS Resp_Cost_Ctr,
		--AUFK.AUTYP               AS Ordr_Catg,
		--AUFK.KTEXT               AS Ordr_Nm,
   /*COEP.WERKS               AS Plnt,
		COEP.EBELN               AS Pur_Doc_Nbr,
		COEP.EBELP               AS Itm_Nbr_Pur_Doc, 
		
		EKKO.LIFRE               AS Invc_Prt_Nbr,
		LFA1.NAME1               AS Invc_Prt_Nm,
		
		
		AUFK.KSTAR               AS Sett_Cost_Ele,
		AUFK.KOSTL               AS Sett_Cost_Ctr,
		AUFK.SAKNR               AS Gl_Acct_Sett,
		AUFK.USER2               AS Pers_Resp,
		AUFK.PRCTR               AS Prft_Ctr,
		CEPCT.KTEXT              AS Prft_Ctr_Nm,
		COEP.BUKRS               AS Co_Cd, 
		COEP.BELNR               AS Doc_Nbr,
		COEP.VERSN               AS Vrsn,
		T001.BUTXT               AS Co_Cd_Desc,*/
  ACNT.[Acct_Desc] AS Acct_Desc,
  ACNT.[Acct_Categ] AS Acct_Catg,
  ACNT.[Acct_Sub_Categ] AS Acct_Sub_Catg,
  /*CCH.CC_DESC              AS CC_Desc, 
	CCH.LVL0_DESC            AS Lvl0_Desc, 
	CCH.LVL1_DESC            AS Lvl1_Desc, 
	CCH.LVL1_CD              AS Lvl1_Cd, 
	CCH.LVL2_DESC            AS Lvl2_Desc, 
	CCH.LVL2_CD              AS Lvl2_Cd, 
	CCH.LVL3_DESC            AS Lvl3_Desc, 
	CCH.LVL3_CD              AS Lvl3_Cd, 
	CCH.LVL4_DESC            AS Lvl4_Desc, 
	CCH.LVL4_CD              AS Lvl4_Cd, 
	CCH.LVL5_DESC            AS Lvl5_Desc, 
	CCH.LVL5_CD              AS Lvl5_Cd,
	CCH.LVL6_DESC            AS Lvl6_Desc,     
    CCH.LVL6_CD              AS Lvl6_Cd,       
    CCH.LVL7_DESC            AS Lvl7_Desc,     
    CCH.LVL7_CD              AS Lvl7_Cd,
        CCH.LOCAL_CURR           AS Local_Curr,*/
		ION.[ION_ID] AS Ion_Cd,
	ION.[ION_DESCRIPTION] [Cost_Ctr_Desc]
	,null as [Lvl0_Desc]
	,null as [Lvl1_Desc]
	,null as  [Lvl1_Cd]
	,[SUB_REGION] [Lvl2_Desc]
	,[SUB_REGION] [Lvl2_Cd]
	,[COUNTRY] [Lvl3_Desc]
	, [COUNTRY][Lvl3_Cd]
	,[COMPANY_CODE] [Lvl4_Desc]
	,[COMPANY_CODE] [Lvl4_Cd]
	,[CATEGORY] [Lvl5_Desc]
	,[CATEGORY] [Lvl5_Cd]
	,[PARENT] [Lvl6_Desc]
	,[PARENT] [Lvl6_Cd]
	,null as [Lvl7_Desc]
	,[ION_ID] [Lvl7_Cd]


	, null as C_Lvl1_Area,
  null as C_Lvl1_Brand_Prj,
  null as C_Lvl2_Area,
  null as C_Lvl2_Brand_Prj,
  null as C_Lvl3_Area,
  null as C_Lvl3_Brand_Prj,
  null as C_Lvl4_Area,
  null as C_Lvl4_Brand_Prj,
  null as C_Lvl5_Area,
  null as C_Lvl5_Brand_Prj,
  null as C_Lvl6_Area,
  null as C_Lvl6_Brand_Prj,
  [AREA_TYPE]  C_Lvl7_Area,
  ION.[CAMPAIGN] C_Lvl7_Brand_Prj
  /*ION.[ION_ID] AS Ion_Cd,
  ION.[ION_DESC] AS [Ion_Desc],
  ION.[L0_Desc] AS [Lvl0_Desc],
  ION.[L1_Cd] AS [Lvl1_Cd],
  ION.[L1_Desc] AS [Lvl1_Desc],
  ION.[L2_Cd] AS [Lvl2_Cd],
  ION.[L2_Desc] AS [Lvl2_Desc],
  ION.[L3_Cd] AS [Lvl3_Cd],
  ION.[L3_Desc] AS [Lvl3_Desc],
  ION.[L4_Cd] AS [Lvl4_Cd],
  ION.[L4_Desc] AS [Lvl4_Desc],
  ION.[L5_Cd] AS [Lvl5_Cd],
  ION.[L5_Desc] AS [Lvl5_Desc],
  ION.[L6_Cd] AS [Lvl6_Cd],
  ION.[L6_Desc] AS [Lvl6_Desc],
  ION.[L7_Cd] AS [Lvl7_Cd],
  ION.[L7_Desc] AS [Lvl7_Desc],
  ION.C_L1_AREA AS Lvl1_Area,
  ION.[C_L1_BRAND PROJECT] AS C_Lvl1_Brand_Prj,
  ION.C_L2_AREA Lvl2_Area,
  [C_L2_BRAND PROJECT] AS C_Lvl2_Brand_Prj,
  ION.C_L3_AREA Lvl3_Area,
  ION.[C_L3_BRAND PROJECT] AS C_Lvl3_Brand_Prj,
  ION.C_L4_AREA Lvl4_Area,
  ION.[C_L4_BRAND PROJECT] AS C_Lvl4_Brand_Prj,
  ION.C_L5_AREA Lvl5_Area,
  ION.[C_L5_BRAND PROJECT] AS C_Lvl5_Brand_Prj,
  ION.C_L6_AREA Lvl6_Area,
  ION.[C_L6_BRAND PROJECT] AS C_Lvl6_Brand_Prj,
  ION.C_L7_AREA Lvl_Area,
  ION.[C_L7_BRAND PROJECT] AS C_Lvl7_Brand_Prj*/
FROM CTE b
INNER JOIN KLA_EXTERNAL.[BIC].[LA_ANP_REQUEST_ION] c
  ON CAST(b.Ion AS varchar(20)) = REPLICATE('0', 12 - LEN(c.ION)) + CAST(c.ION AS varchar(10))
INNER JOIN KLA_EXTERNAL.[BIC].[HR_COMPNYS] compnys
  ON CAST(c.[COMPNY_REC_ID] AS decimal(10)) = CAST(compnys.[COMPNY_REC_ID] AS decimal(10))
INNER JOIN KLA_EXTERNAL.[BIC].LA_ANP_MASTER_DATA md
  ON b.Ion = REPLICATE('0', 12 - LEN(md.ION)) + CAST(md.ION AS varchar(10))
--INNER JOIN [KLA_ZBB].[Ion_Hrchy_ZBB] ION
  --ON ION.ION_ID COLLATE Database_Default = REPLICATE('0', 12 - LEN(md.ION)) + CAST(md.ION AS varchar(10)) COLLATE Database_Default
  	INNER JOIN KG_VIEWS.KLA.UVW_ION_MSTR_BIC ION WITH (NOLOCK) ON 
	REPLICATE('0', 12 - LEN(ION.ION_ID)) + CAST(ION.ION_ID AS varchar(12)) COLLATE Database_Default = 
	REPLICATE('0', 12 - LEN(md.ION)) + CAST(md.ION AS varchar(10)) COLLATE Database_Default
INNER JOIN KLA_FIN.KLA_ZBB.Acct_Hrchy_ZBB ACNT
  ON ACNT.GL_Acct COLLATE Database_Default = b.cost_element COLLATE Database_Default
  AND ACNT.[DW_Del_Bit] = 0

  --AND ION.[DW_Del_Bit] = 0
  inner join kla_external.BIC.LA_ANP_ORDER_TYPES ot on ot.ORDER_TYPE_ID=md.ORDER_TYPE_ID

	

GROUP BY b.Month,
         b.YEAR,
         b.cost_element,
         ACNT.Acct_Desc,
         ACNT.Acct_Categ  ,
         ACNT.[Acct_Sub_Categ],
         ION.[ION_DESCRIPTION] 
	
	,[SUB_REGION] 
	,[SUB_REGION] 
	,[COUNTRY] 
	, [COUNTRY]
	,[COMPANY_CODE] 
	,[COMPANY_CODE] 
	,[CATEGORY] 
	,[CATEGORY] 
	,[PARENT] 
	,[PARENT] 
	
	,[ION_ID] 


	
  ,[AREA_TYPE]  
  ,ION.[CAMPAIGN] 
  ,compnys.COMPNY_CODE,
  b.SUPPLIER,
  ot.ORDER_TYPE_ID,
  ot.ORDER_TYPE_CODE,
  c.RESPONSIBLE_CC_ID
--CTE_T.FISC_PD,
--CTE_T.FISC_YR

) a
INNER JOIN CTE_T
  ON [FISC_YR] = CAST(Fisc_Yr AS decimal(10))
  AND [FISC_PD] = Pd
  LEFT JOIN [KLA_ZBB].[UVW_Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR COLLATE Database_Default = Curr_Key COLLATE Database_Default
		AND Fisc_Yr = CURR_USD.YR 
		AND Pd= CURR_USD.PD	









GO
/****** Object:  View [KLA_ZBB].[UVW_COEP_Alloc]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KLA_ZBB].[UVW_COEP_Alloc]
AS

SELECT	MANDT,KOKRS,BELNR,BUZEI,PERIO,WTGBTR,WOGBTR,Drv_WOGBTR,WKGBTR,WKFBTR,PAGBTR,PAFBTR,MEGBTR,MEFBTR,MBGBTR,MBFBTR,LEDNR,OBJNR,Drv_OBJNR,GJAHR,WRTTP,VERSN,KSTAR,Drv_KSTAR,
		HRKFT,VRGNG,PAROB,PAROB1,USPOB,VBUND,PARGB,BEKNZ,TWAER,OWAER,MEINH,MEINB,MVFLG,SGTXT,REFBZ,ZLENR,BW_REFBZ,GKONT,GKOAR,WERKS,MATNR,RBEST,EBELN,EBELP,ZEKKN,ERLKZ,PERNR,BTRKL,
		OBJNR_N1,OBJNR_N2,OBJNR_N3,PAOBJNR,BELTP,BUKRS,GSBER,FKBER,SCOPE,LOGSYSO,PKSTAR,PBUKRS,PFKBER,PSCOPE,LOGSYSP,DABRZ,BWSTRAT,OBJNR_HK,TIMESTMP,QMNUM,GEBER,PGEBER,GRANT_NBR,
		PGRANT_NBR,REFBZ_FI,SEGMENT,PSEGMENT,DW_Cre_Ts,DW_Cre_Usr,DW_Mod_Ts,DW_Mod_Usr,DW_Del_Bit,DW_Del_Usr,DW_Del_Ts
FROM KLA_ZBB.COEP_Alloc WITH(NOLOCK) 

GO
/****** Object:  View [KLA_ZBB].[UVW_NBB_BDG]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [KLA_ZBB].[UVW_NBB_BDG]
AS
SELECT 
       [COST_CTR_CD]    AS [Cost_Ctr_Cd]
      ,[COST_CURR_TYP]  AS [Cost_Curr_Typ]
      ,[ACCT_CD]        AS [Acct_Cd]
      ,[PD]             AS [Pd]
	  ,[YR]             AS [Yr]
      ,[AMT]            AS [Amt]
      ,[VER]            AS [Ver]
FROM [KLA_FIN].[KLA_ZBB].[NBB_BDG]


GO
/****** Object:  View [KLA_ZBB].[UVW_NBB_Actl_Bdg_Base]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [KLA_ZBB].[UVW_NBB_Actl_Bdg_Base]
as 
WITH CTE_T
AS(
/*SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT [FISC_PD] -1 FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT [FISC_YR]  FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))*/
/* 7th jan commented SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR]   FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))*/
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR]   FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < =(SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))


),
CTE
AS (
	SELECT COEP.PERIO AS Pd1
	,SUBSTRING(COEP.Drv_OBJNR, 7, 10) AS Cost_Ctr
	,COEP.GJAHR AS FISC_YR
	,COEP.OWAER  Collate Database_Default AS Curr_Key
	,COEP.Drv_KSTAR AS GL_ACCT
	,COEP.BUKRS AS Co_Cd
	,T001.BUTXT AS Co_Cd_Desc
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_Yr
	,SUM(COEP.WTGBTR) AS Tot_Val_Trns
	,SUM(COEP.Drv_WOGBTR) AS Tot_Val_Obj
	,SUM(COEP.WKGBTR) AS Tot_Val_Co_Area
	
	FROM KLA_ZBB.UVW_COEP_Alloc COEP WITH (NOLOCK)
	INNER JOIN CTE_T ON [FISC_YR] =COEP.GJAHR   AND [FISC_PD]=COEP.PERIO
	LEFT JOIN KLA_ECC.dbo.T001 ON T001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
	WHERE 
	COEP.Drv_OBJNR LIKE 'KS%'AND COEP.VERSN = '000' and  COEP.KOKRS not in('KEZA','PIZA')AND [DW_Del_Bit]=0
	GROUP BY COEP.PERIO
	,COEP.GJAHR
	,COEP.Drv_OBJNR
	,COEP.Drv_KSTAR
	,COEP.OWAER	
	,COEP.BUKRS
	,T001.BUTXT
    ,Curr_Fisc_Closed_Pd
	,Curr_Fisc_Yr
	)


,CTE1


AS (
	SELECT Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Pd, Yr,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM (
		SELECT Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Pd, Yr, ISNULL(Amt,0)Amt, Ver 
		FROM [KLA_ZBB].[UVW_NBB_BDG] WITH (NOLOCK)
		WHERE Yr IN  ( SELECT DISTINCT FISC_YR FROM CTE_T)
		) d
	pivot(sum(Amt) FOR Ver IN (
				[Actual]
				,[Budget]
				,[6&6]
				,[3&9]
				,[9&3]
				)) piv
	)



,CTE1_1
as(
SELECT Cost_Ctr_Cd, CSKS.BUKRS as Co_Cd, t001.BUTXT as Co_Cd_Desc, Cost_Curr_Typ, Acct_Cd, Pd, Yr,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM CTE1
	left outer join KLA_ECC.dbo.CSKS CSKS with(nolock)
	on CTE1. Cost_Ctr_Cd  COLLATE DATABASE_DEFAULT = CSKS.KOSTL COLLATE DATABASE_DEFAULT
	left outer join KLA_ECC.dbo.T001 t001 
	on  t001.BUKRS COLLATE DATABASE_DEFAULT = CSKS.BUKRS COLLATE DATABASE_DEFAULT

)

,CTE2
AS (
	SELECT ISNULL(Cost_Ctr,Cost_Ctr_Cd) Cost_Ctr
		,ISNULL(Curr_Key,Cost_Curr_Typ)Curr_Key
		,ISNULL(GL_ACCT,Acct_Cd) Acct_Cd 
		,ISNULL(Pd1,Pd)Pd
		,ISNULL(FISC_YR,Yr) Yr
		,Curr_Key as Actl_Cur_Key
		,Isnull(Cost_Curr_Typ, Curr_Key) as Bdg_Cur_Key
		,a.Co_Cd
		,a.Co_Cd_Desc	
		,Curr_Fisc_Closed_Pd
	    ,Curr_Fisc_Yr	
		,ISNULL(Tot_Val_Obj,0) Tot_Val_Obj
		,ISNULL ([Actual],0)  AS 'Bdg_Actl_Amt'
		,ISNULL([Budget],0)  AS 'Bdg_Bdg_Amt'

		,isnull(CASE WHEN ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL ([Actual],0) =0 then [Tot_Val_Obj] 
when  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0)=0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0)
when  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0)
when  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
 when  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) < 0 then ISNULL(Tot_Val_Obj,0)
  when  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) > 0 then ISNULL(Tot_Val_Obj,0) 
   when  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0) > 0 and   ISNULL ([Actual],0) < 0   then ISNULL(Tot_Val_Obj,0)
   else ISNULL([6&6],0) end,0)  as[Bdg_6&6_Amt]
		,isnull(CASE WHEN ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
when  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0)=0  and ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
when  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
when  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
 when  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) < 0 then ISNULL(Tot_Val_Obj,0) 
   when  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) > 0 then ISNULL(Tot_Val_Obj,0) 
   when  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0) > 0 and   ISNULL ([Actual],0) < 0   then ISNULL(Tot_Val_Obj,0) 
   else ISNULL([3&9],0) end,0)  as[Bdg_3&9_Amt]
	,isnull(CASE WHEN ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
when  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0)=0 and ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
when  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
when  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0)
when  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) < 0 then ISNULL(Tot_Val_Obj,0)
  when  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) > 0 then ISNULL(Tot_Val_Obj,0) 
   when  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0) > 0 and   ISNULL ([Actual],0) < 0   then ISNULL(Tot_Val_Obj,0)  
   else ISNULL([9&3],0) end ,0) as[Bdg_9&3_Amt]

		,CASE  when (Curr_Key IS NULL) OR (Cost_Curr_Typ IS NULL)  THEN NULL					
		  when Curr_Key COLLATE Database_Default =Cost_Curr_Typ COLLATE Database_Default THEN 'Y'
	      else'N'
	END as 'Actl_Bdg_Curr_Match'
	FROM CTE a
	FULL JOIN CTE1_1 b ON a.Cost_Ctr Collate Database_Default = b.Cost_Ctr_Cd Collate Database_Default
			 and a.FISC_YR = b.Yr
		AND a.Pd1 = b.Pd
		AND a.Co_Cd  = b.Co_Cd 
		AND a.GL_ACCT Collate Database_Default = b.Acct_Cd Collate Database_Default
		
		)

		
SELECT Cost_Ctr
	,Curr_Key
	,Acct_Cd
	,Pd
	,Yr
	,isnull(Tot_Val_Obj,0)Tot_Val_Obj
	,a.Actl_Cur_Key
	,a.Bdg_Cur_Key
	,a.Co_Cd
	,a.Co_Cd_Desc
	,a.Actl_Bdg_Curr_Match
	,[Acct_Desc]
	,[Acct_Categ]
	,[Acct_Sub_Categ]
	,NULL AS Cc_Desc
	,[Lvl0_Desc]
	,[Lvl1_Desc]
	,[Lvl1_Cd]
	,[Lvl2_Desc]
	,[Lvl2_Cd]
	,[Lvl3_Desc]
	,[Lvl3_Cd]
	,[Lvl4_Desc]
	,[Lvl4_Cd]
	,[Lvl5_Desc]
	,[Lvl5_Cd]
	 ,Lvl6_Desc 
	 ,Lvl6_Cd
	 ,Lvl7_Desc 
	 ,Lvl7_Cd
	,[Bdg_Actl_Amt]
	,[Bdg_Bdg_Amt]
	,[Bdg_6&6_Amt]
	,[Bdg_3&9_Amt]
	,[Bdg_9&3_Amt]
	,a.Curr_Fisc_Closed_Pd
	,a.Curr_Fisc_Yr
	,ISNULL([Fctr_Actual_USDZBB]* [Tot_Val_Obj],0) as Actl_USDZBB_Amt_Bdg_Ver 
	,ISNULL([Fctr_Budget_USDZBB]*[Bdg_Bdg_Amt],0)  as Bdg_USDZBB_Amt
	,ISNULL([Fctr_3&9_USDZBB]*[Bdg_3&9_Amt],0) as Bdg39_USDZBB_Amt
	,ISNULL([Fctr_6&6_USDZBB]*[Bdg_6&6_Amt],0) as Bdg66_USDZBB_Amt
	,ISNULL([Fctr_9&3_USDZBB]*[Bdg_9&3_Amt] ,0)as Bdg93_USDZBB_Amt
	,ISNULL([Fctr_Actual_USD]* [Tot_Val_Obj] ,0)as Actl_USD_Amt_Bdg_Ver 
	,ISNULL([Fctr_Budget_USD]*[Bdg_Bdg_Amt],0) as Bdg_USD_Amt
	,ISNULL([Fctr_3&9_USD]*[Bdg_3&9_Amt],0) as Bdg39_USD_Amt
	,ISNULL([Fctr_6&6_USD]*[Bdg_6&6_Amt] ,0)as Bdg66_USD_Amt
	,ISNULL([Fctr_9&3_USD]*[Bdg_9&3_Amt] ,0)as Bdg93_USD_Amt
	

FROM CTE2 a
Inner JOIN [KLA_ZBB].Acct_Hrchy_ZBB ACNT WITH (NOLOCK) ON ACNT.GL_Acct Collate Database_Default = Acct_Cd Collate Database_Default  AND ACNT.[DW_Del_Bit] = 0
Inner  JOIN KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB CCH WITH (NOLOCK) ON REPLICATE('0', 10 - LEN(RTRIM(CCH.CC_Nbr))) + RTRIM(CCH.CC_Nbr) Collate Database_Default = Cost_Ctr Collate Database_Default
AND CCH.[DW_Del_Bit] = 0
LEFT JOIN [KLA_ZBB].[UVW_Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR COLLATE Database_Default = Curr_Key COLLATE Database_Default
		AND Yr = CURR_USD.YR 
		AND Pd= CURR_USD.PD
left outer join CTE_T t on a.Yr=t.FISC_YR and a.Pd=[FISC_PD]


GO
/****** Object:  View [KLA_ZBB].[UVW_NBB_Detl]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [KLA_ZBB].[UVW_NBB_Detl]
AS 

WITH CTE_T
AS(
/*SELECT DISTINCT [FISC_YR] ,[FISC_PD] ,(SELECT [FISC_PD] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK)
WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd,(SELECT [FISC_YR]  FROM dbo.UVW_FISC_CAL WITH (NOLOCK)
WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))
*/
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR]   FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] <= (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))
)

SELECT
		COEP.KOKRS                 	AS Co_Area,
		COEP.BELNR                 	AS Doc_Nbr,
		COEP.BUZEI                 	AS Post_Row,
		COEP.PERIO                 	AS Pd,
		COEP.WTGBTR					AS Tot_Val_Trns,
		COEP.Drv_WOGBTR             AS Tot_Val_Obj,
		COEP.WKGBTR                	AS Tot_Val_Co_Area,
		COEP.MBGBTR                	AS Tot_Qty_Entr,
		COEP.LEDNR                 	AS Co_Led,
		COEP.Drv_OBJNR              AS Obj_Nbr,
		COEP.GJAHR                 	AS Fisc_Yr,
		COEP.WRTTP                 	AS Val_Typ,
		COEP.VERSN                 	AS Vrsn,
		COEP.Drv_KSTAR              AS Cost_Ele,
		CSKU.MCTXT                 	AS Cost_Ele_Nm,
		COEP.VRGNG                 	AS Co_Bus_Trns,
		COEP.BEKNZ                 	AS Db_Cr_Ind,
		COEP.TWAER                 	AS Txn_Curr,
		COEP.OWAER                 	AS Curr_Key,
		COEP.SGTXT                 	AS Seg_Txt,
		COEP.REFBZ                 	AS Ref_Post_Row,
		COEP.ZLENR                 	AS Doc_Itm_Nbr,
		COEP.GKONT                 	AS Offst_Acct_Nbr,
		COEP.GKOAR                 	AS Offst_Acct_Typ,
		COEP.WERKS                 	AS Plnt,
		COEP.EBELN                 	AS Pur_Doc_Nbr,
		COEP.EBELP                 	AS Pur_Doc_Itm,
		EKPO.TXZ01                 	AS Po_Itm_Txt,
		EKKO.LIFNR                 	AS Vend_Nbr,
		LFA1.NAME1                 	AS Vend_Nm,
		EKKO.LIFRE                 	AS Invc_Prt_Nbr,
		LFA1.NAME1                 	AS Invc_Prt_Nm,
		SUBSTRING(COEP.Drv_OBJNR,7,10) 	AS Cost_Ctr,
		CSKT.KTEXT                 	AS Cost_Ctr_Nm,
		CSKS.PRCTR                 	AS Prft_Ctr,
		CEPCT.KTEXT                	AS Prft_Ctr_Nm,
		COEP.BUKRS                 	AS Co_Cd,
		T001.BUTXT                  AS Co_Cd_Desc,
		COEP.FKBER                 	AS Fcn_Area,
		COEP.SCOPE                 	AS Obj_Clas,
		COBK.BLTXT                 	AS Doc_Hdr_Txt,
		COBK.USNAM                 	AS Usr_Nm,
		COBK.BLART                 	AS Doc_Typ,
		ACNT.Acct_Desc             	AS Acct_Desc,
		ACNT.Acct_Categ            	AS Acct_Categ,
		ACNT.Acct_Sub_Categ        	AS Acct_Sub_Categ,
		CCH.CC_Desc                	AS Cc_Desc,
		CCH.Lvl0_Desc              	AS Lvl0_Desc,
		CCH.Lvl1_Desc              	AS Lvl1_Desc,
		CCH.Lvl1_Cd                	AS Lvl1_Cd,
		CCH.Lvl2_Desc              	AS Lvl2_Desc,
		CCH.Lvl2_Cd                	AS Lvl2_Cd,
		CCH.Lvl3_Desc              	AS Lvl3_Desc,
		CCH.Lvl3_Cd                	AS Lvl3_Cd,
		CCH.Lvl4_Desc              	AS Lvl4_Desc,
		CCH.Lvl4_Cd                	AS Lvl4_Cd,
		CCH.Lvl5_Desc              	AS Lvl5_Desc,
		CCH.Lvl5_Cd                	AS Lvl5_Cd,
		CCH.Lvl6_Desc             	AS Lvl6_Desc,
	    CCH.Lvl6_Cd                 AS Lvl6_Cd,
		CCH.Lvl7_Desc             	AS Lvl7_Desc,
		CCH.Lvl7_Cd                  AS Lvl7_Cd,
		CTE_T.Curr_Fisc_Closed_Pd     AS Curr_Fisc_Closed_Pd,
	    CTE_T.Curr_Fisc_yr            AS Curr_Fisc_yr
FROM    KLA_ZBB.UVW_COEP_Alloc  COEP WITH(NOLOCK)
		INNER JOIN CTE_T ON [FISC_YR] =COEP.GJAHR   AND [FISC_PD]=COEP.PERIO
		AND COEP.Drv_OBJNR LIKE 'KS%' AND COEP.VERSN = '000' 
		LEFT OUTER JOIN KLA_ECC.dbo.EKKO EKKO WITH(NOLOCK) 
		ON COEP.EBELN= EKKO.EBELN 
		LEFT OUTER JOIN KLA_ECC.dbo.COBK COBK WITH(NOLOCK) 
		ON COBK.KOKRS=COEP.KOKRS AND COBK.BELNR=COEP.BELNR AND COBK.GJAHR=COEP.GJAHR
		LEFT OUTER JOIN KLA_ECC.dbo.EKPO  EKPO WITH(NOLOCK) 
		ON EKPO.EBELN=COEP.EBELN AND EKPO.EBELP=COEP.EBELP
		LEFT OUTER JOIN KLA_ECC.dbo.CSKS CSKS WITH(NOLOCK) 
		ON COEP.KOKRS=CSKS.KOKRS AND CSKS.KOSTL=SUBSTRING(COEP.Drv_OBJNR,7,10)AND COEP.KOKRS = CSKS.KOKRS 
		LEFT OUTER JOIN KLA_ECC.dbo.LFA1 LFA1 WITH(NOLOCK)  
		ON EKKO.LIFNR= LFA1.LIFNR
		LEFT OUTER JOIN KLA_ECC.dbo.CSKU CSKU WITH(NOLOCK) 
		ON CSKU.KSTAR=COEP.Drv_KSTAR
		LEFT OUTER JOIN KLA_ECC.dbo.CSKT CSKT WITH(NOLOCK)
		ON CSKT.KOKRS=COEP.KOKRS AND CSKT.KOSTL=SUBSTRING(COEP.Drv_OBJNR,7,10) AND CSKS.KOSTL=CSKT.KOSTL AND   CSKT.SPRAS='E'
		LEFT OUTER JOIN KLA_ECC.dbo.CEPCT CEPCT WITH(NOLOCK) 
		ON CEPCT.PRCTR =CSKS.PRCTR 
        LEFT JOIN KLA_ECC.dbo.T001 ON T001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		LEFT OUTER JOIN KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB CCH WITH(NOLOCK) 
		ON CCH.CC_Nbr COLLATE Database_Default=SUBSTRING(COEP.Drv_OBJNR,7,10) COLLATE Database_Default AND  CCH.DW_Del_Bit=0
		INNER JOIN KLA_ZBB.Acct_Hrchy_ZBB ACNT  WITH(NOLOCK) 
		ON ACNT.[GL_Acct] COLLATE Database_Default= COEP.Drv_KSTAR COLLATE Database_Default	AND ACNT.DW_Del_Bit=0



GO
/****** Object:  View [KLA_ZBB].[UVW_TNE_DETL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KLA_ZBB].[UVW_TNE_DETL]
AS
WITH CTE_T
AS(
/*SELECT DISTINCT [FISC_YR] ,[FISC_PD] ,(SELECT [FISC_PD] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK)
WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd,(SELECT [FISC_YR]  FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))*/
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR]   FROM KLA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] <= (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

)

  SELECT distinct
		COEP.KOKRS          AS Co_Area,        
		COEP.BELNR          AS Doc_Nbr,        
		COEP.BUZEI          AS Post_Row,       
		COEP.PERIO          AS Pd,             
		COEP.WTGBTR         AS Tot_Val_Trans,  
		COEP.Drv_WOGBTR     AS Tot_Val_Obj,    
		COEP.WKGBTR         AS Tot_Val_Co_Area,
		COEP.MBGBTR         AS Tot_Qty_Entr,   
		COEP.LEDNR          AS Co_Led,         
		COEP.Drv_OBJNR          AS Obj_Nbr,        
		COEP.GJAHR          AS Fisc_Yr,        
		COEP.WRTTP          AS Val_Typ,        
		COEP.VERSN          AS Vrsn,           
		COEP.Drv_KSTAR      AS Cost_Ele,       
		CSKU.MCTXT          AS Cost_Ele_Nm,    
		COEP.VRGNG          AS Co_Bus_Trans,   
		COEP.BEKNZ          AS Db_Cr_Ind,      
		COEP.TWAER          AS Txn_Curr,       
		COEP.OWAER          AS Curr_Key,       
		COEP.SGTXT          AS Seg_Txt,        
             
		PD.REINR			AS Trip_no,
		COEP.REFBZ          AS Ref_Post_Row,   
		COEP.ZLENR          AS Doc_Itm_Nbr,    
		COEP.GKONT          AS Offset_Acct_Nbr,
		COEP.GKOAR          AS Offset_Acct_Typ,
		COEP.WERKS          AS Plant,          
		COEP.EBELN          AS Pur_Doc_Nbr,    
		COEP.EBELP          AS Pur_Doc_Itm,    
		EKPO.TXZ01          AS Po_Itm_Txt,     
		EKKO.LIFNR          AS Vend_Nbr,       
		LFA1.NAME1          AS Vend_Nm,        
		EKKO.LIFRE          AS Invc_Prt_Nbr,   
		LFA1.NAME1          AS Invc_Prt_Nm,    
		SUBSTRING(COEP.Drv_OBJNR,7, 10) AS Cost_ctr,
		CSKT.KTEXT          AS Cost_Ctr_Nm,   
		CSKS.PRCTR          AS Profit_Ctr,    
		CEPCT.KTEXT         AS Profit_Ctr_Nm, 
		COEP.BUKRS          AS Co_Cd,   
		T001.BUTXT          AS Co_Cd_Desc,      
		COEP.FKBER          AS Fcn_Area,      
		COEP.SCOPE          AS Obj_Clas,      
		COBK.BLTXT          AS Doc_Hdr_Txt,   
		COBK.USNAM          AS Usr_Nm,        
		ACNT.Acct_Desc      AS Acct_Desc,    
		ACNT.Acct_Categ     AS Acct_Categ,    
		ACNT.Acct_Sub_Categ AS Acct_Sub_Categ,
		CCH.CC_Desc         AS Cc_Desc,      
		CCH.Lvl0_Desc       AS lvl0_Desc,     
		CCH.Lvl1_Desc       AS lvl1_Desc,     
		CCH.Lvl1_Cd         AS lvl1_Cd,       
		CCH.Lvl2_Desc       AS lvl2_Desc,     
		CCH.Lvl2_Cd         AS lvl2_Cd,       
		CCH.Lvl3_Desc       AS lvl3_Desc,     
		CCH.Lvl3_Cd         AS lvl3_Cd,       
		CCH.Lvl4_Desc       AS lvl4_Desc,     
		CCH.Lvl4_Cd         AS lvl4_Cd,       
		CCH.Lvl5_Desc       AS lvl5_Desc,     
		CCH.Lvl5_Cd         AS lvl5_Cd,
		CCH.Lvl6_Desc       AS lvl6_Desc,     
		CCH.Lvl6_Cd         AS lvl6_Cd,       
		CCH.Lvl7_Desc       AS lvl7_Desc,     
		CCH.Lvl7_Cd         AS lvl7_Cd,
		ISNULL ((COEP.Drv_WOGBTR * CURR_USD.[Fctr_Actual_USD]),COEP.Drv_WOGBTR)   AS Tot_Val_Obj_Curr_USD,			
		ISNULL ((COEP.Drv_WOGBTR * CURR_USD.[Fctr_Actual_USDZBB]),COEP.Drv_WOGBTR)   AS Tot_Val_Obj_Curr_ZBBUSD,			
		CTE_T.Curr_Fisc_Closed_Pd     AS Curr_Fisc_Closed_Pd,
	    CTE_T.Curr_Fisc_yr            AS Curr_Fisc_yr       
		FROM    KLA_ZBB.UVW_COEP_Alloc AS COEP WITH (NOLOCK)
		INNER JOIN CTE_T ON [FISC_YR] =COEP.GJAHR   AND [FISC_PD]=COEP.PERIO
		LEFT JOIN [KLA_ZBB].[UVW_Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) 
		ON COEP.GJAHR = CURR_USD.YR 
		AND COEP.PERIO = CURR_USD.PD	
		AND CURR_USD.FR_CURR COLLATE Database_Default = COEP.OWAER COLLATE Database_Default
		
		INNER JOIN	KLA_FIN.KLA_ZBB.Acct_Hrchy_ZBB AS ACNT WITH (NOLOCK)
		ON ACNT.[GL_Acct] COLLATE Database_Default= COEP.Drv_KSTAR COLLATE Database_Default
		AND COEP.Drv_OBJNR LIKE 'KS%'
		AND COEP.VERSN = '000'
		AND ACNT.Acct_Categ = 'TRAVEL'
		AND ACNT.DW_Del_Bit=0 AND COEP.KOKRS not in('KEZA','PIZA')
		LEFT OUTER JOIN
		KLA_FIN.KLA_ZBB.CC_Hrchy_ZBB AS CCH WITH (NOLOCK)
		ON CCH.CC_Nbr COLLATE Database_Default= SUBSTRING(COEP.Drv_OBJNR, 7, 10) COLLATE Database_Default AND  CCH.DW_Del_Bit=0
		LEFT JOIN KLA_ECC.dbo.T001 ON T001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		LEFT OUTER JOIN
		KLA_ECC.dbo.EKKO AS EKKO WITH (NOLOCK)
		ON COEP.EBELN = EKKO.EBELN		
		left outer join KLA_ECC.dbo.COBK AS COBK WITH (NOLOCK)
		ON COBK.KOKRS = COEP.KOKRS
		AND COBK.BELNR = COEP.BELNR
		AND COBK.GJAHR = COEP.GJAHR
		left outer join KLA_ECC.dbo.BKPF BF with(nolock)
		on COBK.REFBN = BF.AWKEY AND  BF.AWTYP = 'TRAVL'
		left outer join [KLA_ECC].dbo.[PTRV_HEAD] PD with(nolock)
		On Convert(varchar,PD.REINR) = Substring(BF.XBLNR, 1,10)
		LEFT OUTER JOIN
		KLA_ECC.dbo.LFA1 AS LFA1 WITH (NOLOCK)
		ON EKKO.LIFNR = LFA1.LIFNR
		LEFT OUTER JOIN
		KLA_ECC.dbo.CSKU AS CSKU WITH (NOLOCK)
		ON CSKU.KSTAR = COEP.Drv_KSTAR AND CSKU.SPRAS = 'E'
		LEFT OUTER JOIN
		KLA_ECC.dbo.CSKT AS CSKT WITH (NOLOCK)
		ON CSKT.KOKRS = COEP.KOKRS
		AND CSKT.KOSTL = SUBSTRING(COEP.Drv_OBJNR, 7, 10)
		AND CSKT.SPRAS = 'E'
		AND CSKU.KSTAR = CSKT.KOSTL
		LEFT OUTER JOIN
		KLA_ECC.dbo.CSKS AS CSKS WITH (NOLOCK)
		ON COEP.KOKRS = CSKS.KOKRS
		AND CSKS.KOSTL = SUBSTRING(COEP.Drv_OBJNR, 7, 10)
		AND SUBSTRING(COEP.Drv_OBJNR, 2, 4) = CSKS.KOKRS
		LEFT OUTER JOIN
		KLA_ECC.dbo.CEPCT AS CEPCT WITH (NOLOCK)
		ON CEPCT.PRCTR = CSKS.PRCTR
		LEFT OUTER JOIN
		KLA_ECC.dbo.EKPO AS EKPO WITH (NOLOCK)
		ON EKPO.EBELN = COEP.EBELN
		AND EKPO.EBELP = COEP.EBELP



GO
/****** Object:  View [KLA_ZBB].[UVW_NBB_Actl_Bdg]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KLA_ZBB].[UVW_NBB_Actl_Bdg]
as 

SELECT Cost_Ctr
	,Curr_Key
	,Acct_Cd
	,Pd
	,Yr
	,Tot_Val_Obj
	,Actl_Cur_Key
	,Bdg_Cur_Key
	,Co_Cd
	,Co_Cd_Desc
	,Actl_Bdg_Curr_Match
	,[Acct_Desc]
	,[Acct_Categ]
	,[Acct_Sub_Categ]
	,Cc_Desc
	,[Lvl0_Desc]
	,[Lvl1_Desc]
	,[Lvl1_Cd]
	,[Lvl2_Desc]
	,[Lvl2_Cd]
	,[Lvl3_Desc]
	,[Lvl3_Cd]
	,[Lvl4_Desc]
	,[Lvl4_Cd]
	,[Lvl5_Desc]
	,[Lvl5_Cd]
	 ,Lvl6_Desc 
	 ,Lvl6_Cd
	 ,Lvl7_Desc 
	 ,Lvl7_Cd
	,[Bdg_Actl_Amt]
	,[Bdg_Bdg_Amt]
	,[Bdg_6&6_Amt]
	,[Bdg_3&9_Amt]
	,[Bdg_9&3_Amt]
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_Yr
	, Actl_USDZBB_Amt_Bdg_Ver 
	, Bdg_USDZBB_Amt
	, Bdg39_USDZBB_Amt
	, Bdg66_USDZBB_Amt
	, Bdg93_USDZBB_Amt
	, Actl_USD_Amt_Bdg_Ver 
	, Bdg_USD_Amt
	, Bdg39_USD_Amt
	, Bdg66_USD_Amt
	, Bdg93_USD_Amt

	FROM 

KLA_ZBB.UVW_NBB_Actl_Bdg_Base 


GO
/****** Object:  View [dbo].[KLA_DEMAND_ICBP]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ====================================================================================================================================================================
-- NAME        	:  KLA_DEMAND_ICBP

-- PURPOSE & 
-- DESCRIPTION  :  This View is used to report ICBP Demand Planning Data.
                        
-- REVISIONS:

-- VERSION     DATE            AUTHOR                   CHANGE REASON

-- 1.0		   05/18/2018	   ------       			1. Initial Version 

-- 2.0		   08/31/2018	   USCAKK02 				2. Added the All_Periods and Rolling 3 Periods logic, also the CY and PY for Tableau Filters

-- =====================================================================================================================================================================

CREATE VIEW [dbo].[KLA_DEMAND_ICBP]
AS 
SELECT 
BU	'BU',
SKU_LEVEL_TYP	'SKU_LEVEL_TYPE',
CTRY	'COUNTRY',
ICBP_CUST	'ICBP Customer',
[DESC]	'DESCRIPTION',
SKU_DESC 'SKU DESC',
[DESC] 'DESC',
CHNL	'CHANNEL',
CATG	'CATEGORY',
SUB_CATG	'SUB_CATEGORY',
BRAND	'BRAND',
SRC	'SOURCE',
PROD_TYP	'PRODUCT_TYPE',
SEG_HVHV	'SEGMENTATION_HVHV',
FCST_PD	'FORECASTING_PERIOD',
KG_UOM	'kg/SUOM',
UOM	'UOM',
LAG	'LAG',
YR	'LOADING_YEAR',
case when DENSE_RANK() OVER (ORDER BY SUBSTRING(FCST_PD,1,2) DESC) =1 then CONCAT(20,SUBSTRING (FCST_PD,1,2))  end as 'CY',
case when DENSE_RANK() OVER (ORDER BY SUBSTRING(FCST_PD,1,2) DESC) =2 then CONCAT(20,SUBSTRING (FCST_PD,1,2))  end as 'PY',
CAST(CONCAT(20,SUBSTRING (FCST_PD,1,2)) AS INT) 'FORCASTING_YR',
MN	'MONTH',
FCST_PD,
CONCAT('P',SUBSTRING (FCST_PD,3,4)) 'PERIOD',
case when DENSE_RANK() OVER (ORDER BY FCST_PD DESC) <=3 then  'Rolling 3 Periods'  end as 'ROLLING',
'All Periods' as 'All Periods',
FCST	'FORECAST VALUE',
ACTLS	'ACTUALS',
RELATIVE_ERR	'RELATIVE_ERROR',
ABSOLUTE_ERR	'ABSOLUTE_ERROR',
ABS(FCST - ACTLS) 'CF_ABSOLUTE_ERROR',
USD	'USD',
INCL_EXCL 'Incl# (1) / Excl# (0)'
FROM dbo.DMND_PLNNG_SKU DMN JOIN   -- TASK0525690 - Restrict only to show till closed period
(SELECT CONCAT(FISC_YR,RIGHT(CONCAT(0,FISC_PD),2)) as FISC_YR_PD
FROM [KG_VIEWS].[dbo].[UVW_FISC_CAL]
WHERE year(getdate())-2 <= FISC_YR
GROUP BY CONCAT(FISC_YR,RIGHT(CONCAT(0,FISC_PD),2))
HAVING getdate() > max([FISC_WK_END_DT])) FISC_CLS
ON FISC_CLS.FISC_YR_PD = CONCAT(20,DMN.FCST_PD)
WHERE DMN.ICBP_CUST<>'N.A.'
AND (DMN.FCST<>'0.00' OR DMN.ACTLS<>'0.00')


GO
/****** Object:  View [dbo].[KLA_DEMAND_OPN]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ====================================================================================================================================================================
-- NAME        	:  KLA_DEMAND_OPN

-- PURPOSE & 
-- DESCRIPTION  :  This View is used to report Operational Demand Planning Data.
                        
-- REVISIONS:

-- VERSION     DATE            AUTHOR                   CHANGE REASON

-- 1.0		   05/18/2018	   ------       			1. Initial Version 

-- 2.0		   08/31/2018	   USCAKK02 				2. Added the All_Periods and Rolling 3 Periods logic, also the CY and PY for Tableau Filters

-- =====================================================================================================================================================================

CREATE VIEW [dbo].[KLA_DEMAND_OPN]
AS 
SELECT 
BU	'BU',
SKU_LEVEL_TYP	'SKU_LEVEL_TYPE',
CTRY	'COUNTRY',
ICBP_CUST	'ICBP Customer',
SKU_DESC	'SKU DESCRIPTION',
[DESC]	'DESCRIPTION',
CHNL	'CHANNEL',
CATG	'CATEGORY',
SUB_CATG	'SUB_CATEGORY',
BRAND	'BRAND',
SRC	'SOURCE',
PROD_TYP	'PRODUCT_TYPE',
SEG_HVHV	'SEGMENTATION_HVHV',
FCST_PD 	'FORECASTING_PERIOD',
KG_UOM	'kg/SUOM',
UOM	'UOM',
LAG	'LAG',
YR	'LOADING_YEAR',
case when DENSE_RANK() OVER (ORDER BY SUBSTRING(FCST_PD,1,2) DESC) =1 then CONCAT(20,SUBSTRING (FCST_PD,1,2))  end as 'CY',
case when DENSE_RANK() OVER (ORDER BY SUBSTRING(FCST_PD,1,2) DESC) =2 then CONCAT(20,SUBSTRING (FCST_PD,1,2))  end as 'PY',
CONCAT('20',SUBSTRING (FCST_PD,1,2))  'FORCASTING_YR',
MN	'MONTH',
CONCAT('P',SUBSTRING (FCST_PD,3,4)) 'PERIOD',
case when DENSE_RANK() OVER (ORDER BY FCST_PD DESC) <=3 then  'Rolling 3 Periods'  end as 'ROLLING',
'All Periods' as 'All Periods',
FCST	'FORECAST VALUE',
ACTLS	'ACTUALS',
RELATIVE_ERR	'RELATIVE_ERROR',
ABSOLUTE_ERR	'ABSOLUTE_ERROR',
ABS(FCST - ACTLS) 'CF_ABSOLUTE_ERROR',
USD	'USD',
INCL_EXCL 'Incl# (1) / Excl# (0)'
from dbo.DMND_PLNNG_SKU DMN JOIN
(SELECT CONCAT(FISC_YR,RIGHT(CONCAT(0,FISC_PD),2)) as FISC_YR_PD
FROM [KG_VIEWS].[dbo].[UVW_FISC_CAL]
WHERE year(getdate())-2 <= FISC_YR
GROUP BY CONCAT(FISC_YR,RIGHT(CONCAT(0,FISC_PD),2))
HAVING getdate() > max([FISC_WK_END_DT])) FISC_CLS
ON FISC_CLS.FISC_YR_PD = CONCAT(20,DMN.FCST_PD)
WHERE DMN.ICBP_CUST ='N.A.'
AND (DMN.FCST<>'0.00' OR DMN.ACTLS<>'0.00')


GO
/****** Object:  View [dbo].[KLA_DEMAND_SKU]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLA_DEMAND_SKU]
AS SELECT 
BU	'BU',
SKU 'SKU', 
SKU_LEVEL_TYP	'SKU_LEVEL_TYPE',
CTRY	'COUNTRY',
ICBP_CUST	'ICBP Customer',
SKU_DESC	'SKU_DESCRIPTION',
[DESC] 'SKU_TYPE_DESCRIPTION',
FCST_TYP 'Forecast Type',
CHNL	'CHANNEL',
CATG	'CATEGORY',
SUB_CATG	'SUB_CATEGORY',
BRAND	'BRAND',
SRC	'SOURCE',
PROD_TYP	'PRODUCT_TYPE',
SEG_HVHV	'SEGMENTATION_HVHV',
FCST_PD	'FORECASTING_PERIOD',
KG_UOM	'kg/SUOM',
UOM	'UOM',
LAG	'LAG',
YR	'LOADING_YEAR',
CONCAT(20,SUBSTRING (FCST_PD,1,2))  'FORCASTING_YR',
MN	'MONTH',
CONCAT('P',SUBSTRING (FCST_PD,3,4)) 'PERIOD',
FCST	'FORECAST VALUE',
ACTLS	'ACTUALS',
RELATIVE_ERR	'RELATIVE_ERROR',
ABSOLUTE_ERR	'ABSOLUTE_ERROR',
USD	'USD',
INCL_EXCL	'Incl# (1) / Excl# (0)'
from dbo.DMND_PLNNG_SKU
WHERE (FCST<>'0.00' OR ACTLS<>'0.00')

GO
/****** Object:  View [dbo].[KLA_DMND_PLNNG_PD]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLA_DMND_PLNNG_PD] AS 
SELECT
	(SELECT SUM(B.RELATIVE_ERR)  
	FROM dbo.DMND_PLNNG_SKU B WHERE 
B.FCST_PD<=A.FCST_PD
AND B.SKU_LEVEL_TYP=A.SKU_LEVEL_TYP
AND B.BU=A.BU
AND B.ICBP_CUST=A.ICBP_CUST
AND B.CTRY=A.CTRY
	) AS 'RELATIVE_ERR_TS'
	,(SELECT SUM(ABSOLUTE_ERR) 
	FROM dbo.DMND_PLNNG_SKU B WHERE
B.FCST_PD<=A.FCST_PD
AND B.SKU_LEVEL_TYP=A.SKU_LEVEL_TYP
AND B.BU=A.BU
AND B.ICBP_CUST=A.ICBP_CUST
AND B.CTRY=A.CTRY
	) AS 'ABSOLUTE_ERR_TS'
	,A.BU 'BU'
	,A.SKU_LEVEL_TYP 'SKU_LEVEL_TYPE'
	,A.[SKU_DESC] 'SKU_LEVEL_TYPE_DESC'
	,A.CTRY 'COUNTRY'
	,A.ICBP_CUST 'ICBP Customer'
	,A.SKU_DESC 'SKU_DESCRIPTION'
	,A.[DESC] 'DESCRIPTION'
	,A.YR 'LOADING_YEAR'
	,CONCAT('P',SUBSTRING (FCST_PD,3,4)) 'PERIOD'
	,CAST(SUBSTRING (FCST_PD,3,4) AS INT) 'PERIOD_INT'
	,A.MN 'MONTH'
	,CONCAT(20,SUBSTRING (A.FCST_PD,1,2))  'FORCASTING_YR'
	,A.FCST_PD	'FORECASTING_PERIOD'

FROM dbo.DMND_PLNNG_SKU A
WHERE (FCST<>'0.00' OR ACTLS<>'0.00')
GROUP BY 	 A.BU
	,A.SKU_LEVEL_TYP
	,A.CTRY 
	,A.ICBP_CUST
	,A.SKU_DESC 
	,A.[DESC]
	,A.YR 
	,A.PD 
	,A.FCST_PD
	,A.MN 
GO
/****** Object:  View [dbo].[UVW_COPA_SALES_SUMRY]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[UVW_COPA_SALES_SUMRY]
as 
select
FISCPER as FISC_PD,
COMP_CODE as CO_CODE, 
MATERIAL as MATRL_NBR, 
SOLD_TO as SLD_TO, 
SALESORG as SALES_ORG, 
[/BIC/Z_PKUN1A] as BANR,
NET_LBS as NET_KGS
FROM
(select FISCPER, COMP_CODE, MATERIAL, SOLD_TO, SALESORG, [/BIC/Z_PKUN1A],SUM([/BIC/ZBPCAMT]) as NET_LBS
from KLA_BW.dbo.AZOD_COKL00_TEMP WITH(NOLOCK)
where [/BIC/ZGL_ACNT] in ('NETLB','SLLBS')
  and [/BIC/Z_MXDFLG] in ('D', 'N', 'Z')
group by FISCPER, COMP_CODE, MATERIAL, SOLD_TO, SALESORG, [/BIC/Z_PKUN1A]
union
select FISCPER, COMP_CODE, MATERIAL, SOLD_TO, SALESORG, [/BIC/Z_PKUN1A],SUM([/BIC/ZBPCAMT]) as NET_LBS
from KLA_BW.dbo.AZOD_COMX00_TEMP WITH(NOLOCK)
where [/BIC/ZGL_ACNT]in ('NETLB','SLLBS')
  and [/BIC/Z_MXDFLG] in ('D', 'N', 'Z')
group by FISCPER, COMP_CODE, MATERIAL, SOLD_TO, SALESORG, [/BIC/Z_PKUN1A]
union
select FISCPER, COMP_CODE, MATERIAL, SOLD_TO, SALESORG, [/BIC/Z_PKUN1A], sum([/BIC/ZBPCAMT]) as NET_LBS
from KLA_BW.dbo.AZOD_COSA00_TEMP WITH(NOLOCK)
where [/BIC/ZGL_ACNT] in ('QNTY3', 'QNTY4')
  and [/BIC/Z_MXDFLG] in ('D', 'N', 'Z')
group by FISCPER,COMP_CODE, MATERIAL, SOLD_TO, SALESORG, [/BIC/Z_PKUN1A]
union
select m.FISCPER, m.COMP_CODE, m.MATERIAL, m.SOLD_TO, m.SALESORG, s.[/BIC/Z_PKUN1A], SUM(m.G_QQNTY3+m.G_QQNTY4) as NET_LBS
from KLA_BW.dbo.AZOD_PA0600_TEMP m WITH(NOLOCK)
left outer join (select distinct FISCPER, SOLD_TO, COMP_CODE, [/BIC/Z_PKUN1A] from KLA_BW.dbo.AZOD_COSA00_TEMP WITH(NOLOCK)) s on s.FISCPER=m.FISCPER and s.SOLD_TO=m.SOLD_TO and s.COMP_CODE=m.COMP_CODE
where m.[/BIC/Z_MXDFLG] in ('D')
group by m.FISCPER, m.COMP_CODE, m.MATERIAL, m.SOLD_TO, m.SALESORG, s.[/BIC/Z_PKUN1A]
having SUM(m.G_QQNTY3+m.G_QQNTY4)<>0 ) x;

GO
/****** Object:  View [dbo].[UVW_Usr_Sec]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_Usr_Sec]
AS
SELECT  
 [Usr_NT_Id] AS [Usr_NT_Id]
,CAST([Cst_Ctr]  AS  INT )  AS [Cst_Ctr] 
  FROM [KLA_FIN].[KLA_ZBB].[Usr_Sec]
  WHERE [DW_Del_Bit] = 0




GO
/****** Object:  View [KLA_ZBB].[UVW_BB_Ion_Bdg]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [KLA_ZBB].[UVW_BB_Ion_Bdg]
AS
SELECT 
       [ION_CD]       AS [ION_Cd]
      ,[ION_CURR_TYP] AS [ION_Curr_Typ]
      ,[ACCT_CD]      AS [Acct_Cd]
      ,[Pd]           AS [Pd]
	  ,[Yr]           As [Yr]
      ,[AMT]          AS [Amt]
      ,[VER]          AS [Ver]
FROM [KLA_FIN].[KLA_ZBB].[BB_ION_BDG_2]







GO
/****** Object:  View [KLA_ZBB].[UVW_TRIP_DETL]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [KLA_ZBB].[UVW_TRIP_DETL]
AS
	  SELECT 
			PTRV_HEAD.PERNR          AS Psnl_No,
			PA0002.VORNA             AS Frst_Nm,
			PA0002.NACHN             AS Lst_Nm,
			T513S.STLTX              AS Job_Titl,
			T528T.PLSTX              AS Posn_Titl,
			PTRV_HEAD.REINR          AS Trip_No,
			PTRV_SHDR.SEQNO          AS Seq_No_For_Trip_Tot,
			PTRV_HEAD.KZREA          AS Trip_Typ,
			PTRV_HEAD.KZTKT          AS Trip_Act_Typ,
			PTRV_HEAD.KUNDE          AS Rsn_For_Trip,
			PTRV_PERIO.ABRJ1         AS Pyrl_Yr,
			PTRV_PERIO.ABRP1         AS Pyrl_Pd,
			PTRV_SHDR.ADDIT_AMNT     AS Addtl_Amt_Of_Trip,
			PTRV_SHDR.SUM_PAYOUT     AS Pay_Amt,
			PTRV_SHDR.SUM_PAIDCO     AS Trvl_Exp_Paid_By_Co,
			PTRV_SHDR.TRIP_TOTAL     AS Tot_Cost_Of_Trip,
			PTRV_SHDR.CURRENCY       AS Curr,
			PTRV_SCOS.COMP_CODE      AS Co_Cd,
			PTRV_SCOS.COSTCENTER     AS Cost_Ctr,
			PTRV_SCOS.INTERNAL_ORDER AS Ordr_Nbr,
			PTRV_SCOS.FUNC_AREA      AS Fcn_Area,
			PTRV_SREC.EXP_TYPE       AS Exp_Typ,
			PTRV_SADD.RECEIPTNO      AS Rcpt_No,
			PTRV_SREC.REC_AMOUNT     AS Indv_Rcpt_AMT,
			PTRV_SREC.REC_CURR       AS Rec_Curr,
			PTRV_SADD.DESCRIPT       AS Descript,
			PTRV_SADD.BUS_PURPO      AS Bus_Purp,
			PTRV_SADD.C_DOC          AS Cr_Card_Doc_No,
			PTRV_SADD.C_TXT          AS Cr_Card_Desc,
			PTRV_SREC.REC_DATE       AS Rec_Dt,
			PTRV_SADD.FROM_DATE      AS Fr_Dt,
			PTRV_SADD.TO_DATE        AS To_Dt

	FROM   KLA_ECC.dbo.PTRV_PERIO AS PTRV_PERIO WITH (NOLOCK)
	INNER JOIN
	KLA_ECC.dbo.PTRV_HEAD AS PTRV_HEAD WITH (NOLOCK)
	ON PTRV_PERIO.PERNR = PTRV_HEAD.PERNR
	AND PTRV_PERIO.REINR = PTRV_HEAD.REINR
	AND PTRV_PERIO.HDVRS = PTRV_HEAD.HDVRS
	INNER JOIN
	KLA_ECC.dbo.PTRV_SHDR AS PTRV_SHDR WITH (NOLOCK)
	ON PTRV_SHDR.PERNR = PTRV_HEAD.PERNR
	AND PTRV_SHDR.REINR = PTRV_HEAD.REINR
	INNER JOIN
	KLA_ECC.dbo.PTRV_SCOS AS PTRV_SCOS WITH (NOLOCK)
	ON PTRV_SCOS.PERNR = PTRV_HEAD.PERNR
	AND PTRV_SCOS.REINR = PTRV_HEAD.REINR
	INNER JOIN
	KLA_ECC.dbo.PTRV_SADD AS PTRV_SADD WITH (NOLOCK)
	ON PTRV_HEAD.PERNR = PTRV_SADD.PERNR
	AND PTRV_HEAD.REINR = PTRV_SADD.REINR
	INNER JOIN
	KLA_ECC.dbo.PTRV_SREC AS PTRV_SREC WITH (NOLOCK)
	ON PTRV_SREC.PERNR = PTRV_HEAD.PERNR
	AND PTRV_SREC.REINR = PTRV_HEAD.REINR
	AND PTRV_SREC.RECEIPTNO = PTRV_SADD.RECEIPTNO
	AND PTRV_SREC.SEQNO = PTRV_SHDR.SEQNO
	LEFT OUTER JOIN
	KLA_ECC.dbo.PA0001 AS PA0001 WITH (NOLOCK)
	ON PA0001.PERNR = PTRV_HEAD.PERNR 
	LEFT OUTER JOIN
	KLA_ECC.dbo.PA0002 AS PA0002 WITH (NOLOCK)
	ON PA0002.PERNR = PA0001.PERNR
	AND PA0002.SUBTY = PA0001.SUBTY
	AND PA0002.OBJPS = PA0001.OBJPS
	AND PA0002.SPRPS = PA0001.SPRPS
	AND PA0002.SEQNR = PA0001.SEQNR
	AND PA0002.ENDDA = PA0001.ENDDA
	LEFT OUTER JOIN
	KLA_ECC.dbo.T513S AS T513S WITH (NOLOCK)
	ON PA0001.STELL = T513S.STELL
	LEFT OUTER JOIN
	KLA_ECC.dbo.T528T AS T528T WITH (NOLOCK)
	ON T528T.PLANS = PA0001.PLANS 
	AND T528T.ENDDA = T513S.ENDDA
	AND T528T.SPRSL = T513S.SPRSL
	WHERE  PTRV_PERIO.ABRJ1 IN ('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022')











GO
/****** Object:  View [KLA_ZBB].[UVW_Usr_Sec]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [KLA_ZBB].[UVW_Usr_Sec]
AS
SELECT  
 [Usr_NT_Id] AS [Usr_NT_Id]
,CAST([Cst_Ctr]  AS  INT )  AS [Cst_Ctr] 
  FROM [KLA_FIN].[KLA_ZBB].[Usr_Sec]
  WHERE [DW_Del_Bit] = 0




GO
/****** Object:  View [KLA_ZBB].[UVW_Usr_Sec_Cco]    Script Date: 11/20/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KLA_ZBB].[UVW_Usr_Sec_Cco]
as
select [Usr_Nm],[Lvl3_Cd],[Lvl3_Desc] from [KLA_ZBB].[Usr_Sec_Cco]

GO
ALTER TABLE [KLA_ZBB].[Acct_Hrchy_ZBB] ADD  CONSTRAINT [DF_Acct_Hrchy_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KLA_ZBB].[BB_ION_BDG_2] ADD  DEFAULT (getdate()) FOR [DW_CRE_TS]
GO
ALTER TABLE [KLA_ZBB].[BB_ION_BDG_2] ADD  DEFAULT (user_name()) FOR [DW_CRE_USR]
GO
ALTER TABLE [KLA_ZBB].[BB_ION_BDG_2] ADD  DEFAULT ((0)) FOR [DW_DEL_BIT]
GO
ALTER TABLE [KLA_ZBB].[CC_Hrchy_ZBB] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KLA_ZBB].[CC_Hrchy_ZBB] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KLA_ZBB].[CC_Hrchy_ZBB] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KLA_ZBB].[COEP_Alloc] ADD  CONSTRAINT [DF_COEP_Alloc_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KLA_ZBB].[COEP_Alloc] ADD  CONSTRAINT [DF_COEP_Alloc_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KLA_ZBB].[COEP_Alloc] ADD  CONSTRAINT [DF_COEP_Alloc_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KLA_ZBB].[CURR_EXCHNG_FMT] ADD  DEFAULT (getdate()) FOR [DW_CRE_TS]
GO
ALTER TABLE [KLA_ZBB].[CURR_EXCHNG_FMT] ADD  DEFAULT (user_name()) FOR [DW_CRE_USR]
GO
ALTER TABLE [KLA_ZBB].[CURR_EXCHNG_FMT] ADD  DEFAULT ((0)) FOR [DW_DEL_BIT]
GO
ALTER TABLE [KLA_ZBB].[Ion_Hrchy_ZBB] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KLA_ZBB].[Ion_Hrchy_ZBB] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KLA_ZBB].[Ion_Hrchy_ZBB] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KLA_ZBB].[NBB_BDG] ADD  CONSTRAINT [DF_NBB_BDG_FMT_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_DEL_BIT]
GO
ALTER TABLE [KLA_ZBB].[Usr_Sec] ADD  CONSTRAINT [DF_Usr_Sec_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
USE [master]
GO
ALTER DATABASE [KLA_FIN] SET  READ_WRITE 
GO
