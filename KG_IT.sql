USE [master]
GO
/****** Object:  Database [KG_IT]    Script Date: 11/20/2018 5:30:05 PM ******/
CREATE DATABASE [KG_IT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_IT', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_IT.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KG_IT_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_IT_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_IT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_IT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_IT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_IT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_IT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_IT] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_IT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_IT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_IT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_IT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_IT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_IT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_IT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_IT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_IT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_IT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_IT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_IT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_IT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_IT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_IT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_IT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_IT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_IT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_IT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_IT] SET  MULTI_USER 
GO
ALTER DATABASE [KG_IT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_IT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_IT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_IT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_IT', N'ON'
GO
USE [KG_IT]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_GBS_IT_USERS_R]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [US\SQL_GBS_IT_USERS_R] FOR LOGIN [US\SQL_GBS_IT_USERS_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:30:06 PM ******/
CREATE ROLE [db_view_def]
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
/****** Object:  UserDefinedFunction [dbo].[fn_Get_Age]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fn_Get_Age]
(
	-- Add the parameters for the function here
	@val as INT
)
RETURNS varchar(100)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @RESULT_STRING varchar(max);

	-- Add the T-SQL statements to compute the return value here
    SET @RESULT_STRING = CASE WHEN @val = 0 THEN 'Closed' 
		 WHEN @val = 1 THEN 'Less than 2 days'
		 WHEN @val >= 2 AND  @val <= 5 THEN '2 - 5 days'
		 WHEN @val >= 6 AND  @val <= 15 THEN '6 - 15 days'
		 WHEN @val >= 16 AND @val <= 30 THEN '16 - 30 days'
		 WHEN @val >= 31 AND @val <= 60 THEN '31 - 60 days'
		 WHEN @val >= 61 THEN 'Greater than 60 days'
		 ELSE
		 'N/A'
		 END

	-- Return the result of the function
	RETURN @RESULT_STRING

END



GO
/****** Object:  View [dbo].[UVW_AIP_METRICS]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[UVW_AIP_METRICS] AS 
SELECT        ID, SUPPLIER, SUB_SUPPLIER, SLA_OWNER, TEAM, METRIC_MEASURE, METRIC_TARGET, METRIC_DESCRIPTION
FROM            KG_VIEWS.KG_SNOW.UVW_AIP_METRICS




GO
/****** Object:  View [dbo].[UVW_AIP_METRICS_USER_GROUP]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_AIP_METRICS_USER_GROUP] AS 
SELECT 
ID AS ID,
SUPPLIER AS SUPPLIER,
SUB_SUPPLIER AS SUB_SUPPLIER,
SLA_OWNER AS SLA_OWNER,
TEAM AS TEAM,
METRIC_MEASURE AS METRIC_MEASURE,
METRIC_TARGET AS METRIC_TARGET,
METRIC_DESCRIPTION AS METRIC_DESCRIPTION,
SUG_ACTIVE AS ACTIVE,
SUG_COST_CENTER AS COST_CENTER,
SUG_DEFAULT_ASSIGNEE AS DEFAULT_ASSIGNEE,
SUG_DESCRIPTION AS DESCRIPTION,
SUG_EMAIL AS EMAIL,
SUG_EXCLUDE_MANAGER AS EXCLUDE_MANAGER,
SUG_HOURLY_RATE AS HOURLY_RATE,
SUG_INCLUDE_MEMBERS AS INCLUDE_MEMBERS,
SUG_MANAGER_LINK AS MANAGER_LINK,
SUG_MANAGER_VALUE AS MANAGER_VALUE,
UPPER(SUG_NAME) AS NAME,
SUG_PARENT AS PARENT,
SUG_SOURCE AS SOURCE,
SUG_SYS_CREATED_BY AS SYS_CREATED_BY,
SUG_SYS_CREATED_ON AS SYS_CREATED_ON,
SUG_SYS_ID AS SYS_ID,
SUG_SYS_MOD_COUNT AS SYS_MOD_COUNT,
SUG_SYS_UPDATED_BY AS SYS_UPDATED_BY,
SUG_SYS_UPDATED_ON AS SYS_UPDATED_ON,
SUG_TYPE AS TYPE,
SUG_U_ALIAS AS U_ALIAS,
SUG_U_CONTENT_APPROVER_LINK AS U_CONTENT_APPROVER_LINK,
SUG_U_CONTENT_APPROVER_VALUE AS U_CONTENT_APPROVER_VALUE,
SUG_U_DSS_GROUP AS U_DSS_GROUP,
SUG_U_GROUP_ID AS U_GROUP_ID,
SUG_U_GROUP_TYPE U_GROUP_TYPE,
SUG_U_REGION AS U_REGION,
SUG_U_RESPONSIBILITY AS U_RESPONSIBILITY,
SUG_U_SRMS_GROUPS AS U_SRMS_GROUPS,
SUG_U_SUB_SUPPLIER AS U_SUB_SUPPLIER,
SUG_U_SUPPLIER AS U_SUPPLIER,
SUG_U_SUPPORT_GROUP AS U_SUPPORT_GROUP,
SUG_U_WORK_NOTES AS U_WORK_NOTES,
SUGK_SLT_GROUP AS SLT_GROUP,
SUGK_PILLAR AS PILLAR,
SUGK_SUB_TEAM AS SUB_TEAM,
SUGK_SILO AS SILO,
SUGK_SCOPE AS SCOPE
FROM [dbo].[UVW_AIP_METRICS] AIP JOIN 
     [KG_VIEWS].[KG_SNOW].[UVW_SYS_USER_GROUP_KG] SUGK 
ON AIP.TEAM = SUGK.SUGK_TEAM
GO
/****** Object:  View [dbo].[UVW_SC_REQUEST_TASK_SLA]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================================================================
-- Changed by	:	ATHEETH
-- Date   		:	08/21/2017
-- ==========================================================================================================================================

CREATE VIEW [dbo].[UVW_SC_REQUEST_TASK_SLA]
AS
SELECT [SCR_ACTIVE] as [Request Active]
      ,sr.[SCR_ACTIVITY_DUE] as [Request Activitiy Due]
      ,sr.[SCR_APPROVAL] as [Request Approval]
      ,sr.[SCR_APPROVAL_HISTORY] as [Request Aprroval History]
      ,sr.[SCR_APPROVAL_SET] as [Request Approval Set]
      ,sr.[SCR_ASSIGNED_TO] as [Request Assigned To]
      ,sr.[SCR_ASSIGNMENT_GROUP] as [Request Assignment Group]
      ,sr.[SCR_BUSINESS_DURATION] as [Request Business Duration]
      ,sr.[SCR_CALENDAR_DURATION] as [Request Calendar Duration]
      ,sr.[SCR_CALENDAR_STC] as [Request Calendar Stc]
      ,sr.[SCR_CLOSE_NOTES] as [Request Close Notes]
      ,sr.[SCR_CLOSED_AT] as [Request Closed At]
   
      ,sr.[SCR_CMDB_CI] as [Request Cmdb Ci]
      ,sr.[SCR_COMMENTS] as [Request Comments]
      ,sr.[SCR_COMMENTS_AND_WORK_NOTES] as [Request Comments and Work Notes]
      ,sr.[SCR_COMPANY] as [Request Company]
      ,sr.[SCR_CONTACT_TYPE] as [Request Contact Type]
      ,sr.[SCR_CORRELATION_DISPLAY] as [Request Correlation Display]
      ,sr.[SCR_CORRELATION_ID] as [Request Correlation Id]
      ,sr.[SCR_DELIVERY_ADDRESS] as [Request Delivery Address]
      ,sr.[SCR_DESCRIPTION] as [Request Description]
      ,sr.[SCR_DUE_DATE] as [Request Due Date]
      ,sr.[SCR_ESCALATION] as [Request Escalation]
      ,sr.[SCR_EXPECTED_START] as [Request Expected Start]
      ,sr.[SCR_FOLLOW_UP] as [Request Follow Up]
      ,sr.[SCR_GROUP_LIST] as [Request Group List]
      ,sr.[SCR_IMPACT] as [Request Impact]
      ,sr.[SCR_KNOWLEDGE] as [Request Knowledge]
      ,sr.[SCR_LOCATION] as [Request Location]
      ,sr.[SCR_MADE_SLA] as [Request Made Sla]
      ,sr.[SCR_NUMBER] as [Request Number]
      ,sr.[SCR_OPENED_AT] as [Request Opened At]
    
      ,srsu.SU_NAME as [Request Opened By]
      ,sr.[SCR_ORDER] as[Request Order]
      ,sr.[SCR_PARENT] as [Request Parent]
      ,sr.[SCR_PRICE] as [Request Price]
      ,sr.[SCR_PRIORITY] as [Request Priority]
      ,sr.[SCR_REASSIGNMENT_COUNT] as [Request Reassisgnemnt Count]
      ,sr.[SCR_REQUEST_STATE] as [Request Request State] 
      ,sr.[SCR_REQUESTED_DATE] as [Request Requested Date]

      ,srsurf.SU_NAME as [Request Requested for]
      ,sr.[SCR_SHORT_DESCRIPTION] as [Request Short Description]
      ,sr.[SCR_SKILLS] as [Request Skills]
      ,sr.[SCR_SLA_DUE] as [Request Sla Due]
      ,sr.[SCR_SPECIAL_INSTRUCTIONS] as [Request Special Instructions]
      ,sr.[SCR_STAGE] as [Request Stage]
      ,sr.[SCR_STATE] as [Request State] 
      ,sr.[SCR_SYS_CLASS_NAME] as [Request Sys Class Name]
      ,sr.[SCR_SYS_CREATED_BY] as [Request Sys Created By]
      ,sr.[SCR_SYS_CREATED_ON] as [Request Sys Created On]
    
     -- ,sr.[SCR_SYS_ID] as [Request Sys Id]
      ,sr.[SCR_SYS_MOD_COUNT] as [Request Sys Mod Count]
      ,sr.[SCR_SYS_UPDATED_BY] as [Request Sys Updated By] 
      ,sr.[SCR_SYS_UPDATED_ON] as [Request Sys Updated On]
      ,sr.[SCR_TIME_WORKED] as [Request Time Worked]
      ,sr.[SCR_U_ASSIGNMENT_GROUP_TYPE] as [Request Assignment Group Type]
      ,sr.[SCR_U_BACKEND] as [Request Backend]
      ,sr.[SCR_U_INCIDENT_GP_TYPE] as [Request Incident Group Type]
      ,sr.[SCR_U_RECAST] [Request Recast]
      ,sr.[SCR_UPON_APPROVAL] as [Request Upon Approval]
      ,sr.[SCR_UPON_REJECT] as [Request Upon Reject]
      ,sr.[SCR_URGENCY] as [Request Urgency]
      ,sr.[SCR_USER_INPUT] as [Request User Input]
      ,sr.[SCR_WATCH_LIST] as [Request Watch List]
      ,sr.[SCR_WORK_END] as [Request Work End]
      ,sr.[SCR_WORK_NOTES] as [Request Work Notes]
      ,sr.[SCR_WORK_NOTES_LIST] as [Request Work Notes List]
      ,sr.[SCR_WORK_START] as [Request Work Start]
	  ,srsug.[SUG_ACTIVE]  as [Request User Group Active]
      ,srsug.[SUG_COST_CENTER]  as [Request User Group Cost Center]
      ,srsug.[SUG_DEFAULT_ASSIGNEE]  as [Request User Group Default Assignee]
      ,srsug.[SUG_DESCRIPTION]  as [Request User Group Description]
      ,srsug.[SUG_EMAIL]  as [Request User Group Email]
      ,srsug.[SUG_EXCLUDE_MANAGER]  as [Request User Group Exclude Manager]
      ,srsug.[SUG_HOURLY_RATE]  as [Request User Group Hourly Rate]
      ,srsug.[SUG_INCLUDE_MEMBERS]  as [Request User Group Include Members]
      ,srsug.[SUG_MANAGER_VALUE]  as [Request User Group Manager Value]
      ,srsug.[SUG_NAME]  as [Request User Group Name]
      ,srsug.[SUG_PARENT]  as [Request User Group Parent]
      ,srsug.[SUG_SOURCE]  as [Request User Group Ssource]  
      ,srsug.[SUG_SYS_MOD_COUNT]  as [Request User Group Mod Count]
      ,srsug.[SUG_TYPE]  as [Request User Group Type]
      ,srsug.[SUG_U_ALIAS]  as [Request User Group Alias]
      ,srsug.[SUG_U_DSS_GROUP]  as [Request User Group Dss Group]
      ,srsug.[SUG_U_GROUP_ID]  as [Request User Group Id]
      ,srsug.[SUG_U_GROUP_TYPE]  as [Request User Group Group Type]
      ,srsug.[SUG_U_REGION] as   [Request User Group Region]
      ,srsug.[SUG_U_RESPONSIBILITY]  as [Request User Group Responsibility]
      ,srsug.[SUG_U_SRMS_GROUPS]  as [Request User Group Srms Groups]
      ,srsug.[SUG_U_SUB_SUPPLIER]  as [Request User Group Sub Supplier]
      ,srsug.[SUG_U_SUPPLIER]  as [Request User Group Supplier]
      ,srsug.[SUG_U_SUPPORT_GROUP] as [Request User Group Support Group]
      ,srsug.[SUG_U_WORK_NOTES] as [Request User Group Work Notes]
	  ,srcm.[LOC_CITY] as [Request Common City]
      ,srcm.[LOC_COMPANY]  as [Request Common Company]
      ,srcm.[LOC_CONTACT] as [Request Common Contact]
      ,srcm.[LOC_COUNTRY] as [Request Common Country]
      ,srcm.[LOC_FAX_PHONE]  as [Request Common Fax Phone]
      ,srcm.[LOC_FULL_NAME]  as [Request Common Full Name]
      ,srcm.[LOC_LAT_LONG_ERROR] as [Request Common Lat_Long Error]
      ,srcm.[LOC_LATITUDE]  as [Request Common Latitude]
      ,srcm.[LOC_LONGITUDE] as [Request Common Longitude]
      ,srcm.[LOC_NAME]  as [Request Common Name]
      ,srcm.[LOC_PARENT] as [Request Common Parent]
      ,srcm.[LOC_PHONE] as [Request Common Phone]
      ,srcm.[LOC_PHONE_TERRITORY] as [Request Common Phone Terrirtory]
      ,srcm.[LOC_STATE] as [Request Common State]
      ,srcm.[LOC_STOCK_ROOM] as [Request Common Romm]
      ,srcm.[LOC_STREET] as [Request Common Street]
      ,srcm.[LOC_TIME_ZONE] as [Request Common Time Zone]
      ,srcm.[LOC_U___OF_EMPLOYEES]  as [Request Common Number of Emplyees]
      ,srcm.[LOC_U_ACCESSORIES] as [Request Common Accessories]
      ,srcm.[LOC_U_ACTIVE] as [Request Common Active]
      ,srcm.[LOC_U_ADDRESS_2]  as [Request Common Address 2]
      ,srcm.[LOC_U_COMMONLY_KNOWN_AS] as [Request Common Commonly Known As]
      ,srcm.[LOC_U_FACILITY_SIZE__SQ_FT_] as [Request Common Facility Size Sq Ft]
      ,srcm.[LOC_U_GENERIC_FIELD] as [Request Common Generic Field]
      ,srcm.[LOC_U_HELPDESK_CONTACT] as [Request Common Helpdesk Contact]
      ,srcm.[LOC_U_HOURS] as [Request Common Hours]
      ,srcm.[LOC_U_ID] as [Request Common Id]
      ,srcm.[LOC_U_LOCATION_CATEGORY] as [Request Common Location Category]
      ,srcm.[LOC_U_LOCATION_CODE] as [Request Common Location Code]
      ,srcm.[LOC_U_LYNC_ENABLED] as [Request Common Lync Enabled]
      ,srcm.[LOC_U_PCS]  as [Request Common Pcs]
      ,srcm.[LOC_U_PLANT_COORDINATOR]  as [Request Common Plant Coordinator]
      ,srcm.[LOC_U_PLANT_MANAGER] as [Request Common Plant Manager]
      ,srcm.[LOC_U_PRIMARY_CONTACT_PLANT_COORDI] as [Request Common Primary Contact Plant Coordi]
      ,srcm.[LOC_U_PRIMARY_CONTACT_PLANT_MGR_CO]  as [Request Common Primary Contact Plant Mgr Co]
      ,srcm.[LOC_U_PRIMARY_CONTACT_TECHNICAL_CO] as [Request Common Primary Contact Technical Co]
      ,srcm.[LOC_U_PRIMARY_LOCATION_CONTACT] as [Request Common Primary Location Contact]
      ,srcm.[LOC_U_REGION] as [Request Common Region]
      ,srcm.[LOC_U_SERVICE_TYPE] as [Request Common Service Type]
      ,srcm.[LOC_U_SKYPE_ENABLED] as [Request Common Skype Enabled]
      ,srcm.[LOC_U_SRMS_LOCATION] as [Request Common Srms Location]
      ,srcm.[LOC_U_TECHNICAL_COORDINATOR] as [Request Common Technical Coordinator]
      ,srcm.[LOC_U_TYPE] as [Request Common Type]
      ,srcm.[LOC_U_WHITE_GLOVE_LOCATION]  as [Request Common White Glove Location]
      ,srcm.[LOC_LOC_ZIP]  as [Request Common Loc Zip]
	  ,st.[SCT_ACTIVE] as [Task Active]
      ,st.[SCT_ACTIVITY_DUE] as [Task Activity Due]
      ,st.[SCT_APPROVAL] as [Task Approval]
      ,st.[SCT_APPROVAL_HISTORY] as [Task Approval History]
      ,st.[SCT_APPROVAL_SET] as [Task Approval Set]
	  ,stsuav.SU_NAME as [Task Assigned To]
      ,st.[SCT_BUSINESS_DURATION] as [Task Business Duration]
      ,st.[SCT_CALENDAR_DURATION] as [Task Calendar Duration]
      ,st.[SCT_CALENDAR_STC] as [Task Calendar Stc]
      ,st.[SCT_CLOSE_NOTES] as [Task Notes]
      ,st.[SCT_CLOSED_AT] as [Task Closed At]
      ,st.[SCT_CMDB_CI] as [Task Cmdb Ci]
      ,st.[SCT_COMMENTS] as [Task Comments]
      ,st.[SCT_COMMENTS_AND_WORK_NOTES] as [Task Comments And Work Notes]
      ,st.[SCT_COMPANY] as [Task Company]
      ,st.[SCT_CONTACT_TYPE] as [Task Contact Type]
      ,st.[SCT_CORRELATION_DISPLAY] as [Task Correlation Display]
      ,st.[SCT_CORRELATION_ID] as [Task Correlation Id]
      ,st.[SCT_DESCRIPTION] as [Task Description]
      ,st.[SCT_DUE_DATE] as [Task Due Date]
      ,st.[SCT_ESCALATION] as [Task Escalation]
      ,st.[SCT_EXPECTED_START] as [Task Expected Start]
      ,st.[SCT_FOLLOW_UP] as [Task Follow Up]
      ,st.[SCT_GROUP_LIST] as [Task Group List]
      ,st.[SCT_IMPACT] as [Task Impact]
      ,st.[SCT_KNOWLEDGE] as [Task Knowledge]
      ,st.[SCT_LOCATION_VALUE] as [Task Location Value]
      ,st.[SCT_MADE_SLA] as [Task Made Sla]
      ,st.[SCT_NUMBER] as [Task Number]
      ,st.[SCT_OPENED_AT] as [Task Opened At]
      ,stsu.SU_NAME as [Task Opened By]
      ,st.[SCT_ORDER] as [Task Order]
     -- ,st.[SCT_PARENT_VALUE] as [Task Parent Value]
      ,st.[SCT_PRIORITY] as [Task Priority]
      ,st.[SCT_REASSIGNMENT_COUNT] as [Task Reassignment Count]
    --  ,st.[SCT_REQUEST_VALUE] [Task Request Value]
    --  ,st.[SCT_REQUEST_ITEM_VALUE] as [Task Request Item Value]
      ,st.[SCT_SC_CATALOG] as [Task Catalog]
      ,st.[SCT_SHORT_DESCRIPTION] as [Task Short Description]
      ,st.[SCT_SKILLS] as [Task Skills]
      ,st.[SCT_SLA_DUE] as [Task Sla Due]
      ,CASE 
		WHEN st.[SCT_STATE] = -5 THEN 'Not Yet Assigned'
		WHEN st.[SCT_STATE] = 0 THEN ''
		WHEN st.[SCT_STATE] = 1 THEN 'Open'
		WHEN st.[SCT_STATE] = 2 THEN 'Work in Progress'
		WHEN st.[SCT_STATE] = 3 THEN 'Closed Complete'
		WHEN st.[SCT_STATE] = 4 THEN 'Closed Incomplete'
		WHEN st.[SCT_STATE] = 7 THEN 'Closed Skipped'
		WHEN st.[SCT_STATE] = 9 THEN 'Pending Supplier'
		WHEN st.[SCT_STATE] = 10 THEN 'Pending Customer Inputs'
		WHEN st.[SCT_STATE] = 11 THEN 'Pending Change'
		WHEN st.[SCT_STATE] = 12 THEN 'Pending DSA'
		ELSE
		CONVERT(VARCHAR,ISNULL(st.[SCT_STATE],''))
		END as [Task State]
      ,st.[SCT_SYS_CLASS_NAME] as [Task Sys Class Name]
      ,st.[SCT_SYS_CREATED_BY] as [Task Sys Created By]
      ,st.[SCT_SYS_CREATED_ON] as [Task Sys Created On]
      ,st.[SCT_SYS_DOMAIN_VALUE] as [Task Sys Domain Value]
      --,st.[SCT_SYS_ID] as [Task Sys Id]
      ,st.[SCT_SYS_MOD_COUNT] as [Task Sys Mod Count]
      ,st.[SCT_SYS_UPDATED_BY] as [Task Sys Updated By]
      ,st.[SCT_SYS_UPDATED_ON] as [Task Sys Updated On]
      ,st.[SCT_TIME_WORKED] as [Task Time Worked]
      ,st.[SCT_U__CITY_] as [Task City]
      ,st.[SCT_U__COUNTRY_] as [Task Country]
      ,st.[SCT_U__MAILING_ADDRESS_LINE_1_] as [Task Mailing Address Line 1]
      ,st.[SCT_U__STATE_] as [Task Address State]
      ,st.[SCT_U__ZIP_CODE_] as [Task Zip Code]
      ,st.[SCT_U_ASSIGNED] as [Task Assigned]
      ,st.[SCT_U_ASSIGNMENT_GROUP_TYPE] as [Task Assignment Group Type]
      ,st.[SCT_U_CASS_REQUEST_NUMBER] as [Task Cass Request Number]
      ,st.[SCT_U_CUBICLE_NUMBER] as [Task Cubicke Number]
      ,st.[SCT_U_DEVICE_ELIGIBILITY] as [Task Device Eligibility]
      ,st.[SCT_U_DSS__] as [Task Dss]
      ,st.[SCT_U_DSS___OF_VISITS] as [Task Dss Visits]
      ,st.[SCT_U_DSS_HANDLE_TIME] as [Task Handle Time]
      --,st.[SCT_U_DUMMY_ASSIGNED_TO] as [Task Dummy Assigned To]   
      --,st.[SCT_U_DUMMY_ASSIGNMENT_GROUP_VALUE] as [Task Dummy Assignmnet Group Value]
      ,st.[SCT_U_EMAIL_ID] as [Task Email Id]
      ,st.[SCT_U_ESTIMATED_DELIVERY_DATE_] as [Task Estimated Delivery Date]
      ,st.[SCT_U_FLOOR_NUMBER] as [Task Floor Number]
      ,st.[SCT_U_HAVE_YOU_CREATED_THE_ID_] [Task Have You Created The Id]
      ,st.[SCT_U_INCIDENT_GP_TYPE] as [Task Incident Group Type]
      ,st.[SCT_U_INFO_REQUIRED_FROM_USER] as [Task Info Required From User]
      ,st.[SCT_U_ITEM] as [Task Item]
      ,st.[SCT_U_LEVEL_OF_EFFORT] as [Task Level Of Effort]
      ,st.[SCT_U_LICENSE_AVAILABLE] as [Task Licence Available]
      ,st.[SCT_U_LICENSE_PURCHASED] [Task Licence Purchased]
      ,st.[SCT_U_MAILING_ADDRESS_LINE_2_] as [Task Mailing Address Line 2]
      ,st.[SCT_U_NETWORK_ID] as [Task Network Id]
      ,st.[SCT_U_PENDING_DUR] as [Task Pending Dur]
      ,st.[SCT_U_PENDING_DURATION] as [Task Pending Duration]
      ,st.[SCT_U_PENDING_END_TIME] as [Task Pending End Time]
      ,st.[SCT_U_PENDING_START_TIME] as [Task Pending Start Time]
      ,st.[SCT_U_PHONE_NUMBER] as [Task Phone Number]
      ,st.[SCT_U_REPORT_RSA_LOCATION] as [Task Report Rsa Location]
      ,st.[SCT_U_REQUIREMENT_TITLE] as [Task Requirement Title]
      ,st.[SCT_U_RSA_REQUEST_NUMBER] as [Task Rsa Request Number]
      ,st.[SCT_U_SELECTED_DEVICE] as [Task Selected Device]
      ,st.[SCT_U_SHIPPER_VENDOR_NAME] as [Task Shipper Vendor Name]
      ,st.[SCT_U_SLA_TYPE] as [Task Sla Type]
      ,st.[SCT_U_SRMS_LOCATION] as [Task Srms Location]
      ,st.[SCT_U_SRMS_RESOLVED] as [Task Srms Resolved]
      ,st.[SCT_U_SRMS_STATUS] as [Task Srms Status]
      ,st.[SCT_U_SRMS_TICKET_NUMBER] as [Task Srms Ticket Number]
      ,st.[SCT_U_SRMS_UPDATE] as [Task Srms Update]
      ,st.[SCT_U_SUPPLIER] as [Task Supplier]
      ,st.[SCT_U_SUPPLIER_NAME] as [Task Supplier Name]
      ,st.[SCT_U_TRACKING_NUMBER] as [Task Tracking Number]
      ,st.[SCT_UPON_APPROVAL] as [Task Upon Approval]
      ,st.[SCT_UPON_REJECT] as [Task Upon Reject]
      ,st.[SCT_URGENCY] as [Task Urgency]
      ,st.[SCT_USER_INPUT] as [Task User Input]
      ,st.[SCT_WATCH_LIST] as [Task Watch List]
      ,st.[SCT_WORK_END] as [Task Work End]
      ,st.[SCT_WORK_NOTES] as [Task Work Notes]
      ,st.[SCT_WORK_NOTES_LIST] as [Task Work Notes List]
      ,st.[SCT_WORK_START] as [Task Work Start]
      ,st.[SCTRR_PARENT_NUMBER] as [Task Related Record Parent Number]
      ,st.[SYS_USER_ASSIGNED_TO] as [Task User Assigned To]
      ,st.[SYS_USER_OPENED_BY] as [Task User Opened By]
      ,st.[SYS_USER_CLOSED_BY] as [Task User Closed By]
      ,st.[SYS_USER_GROUP_ASSIGNMENT_GROUP] as [Task User Group Assignmnet Group]
      ,st.[CMNL_FULL_NAME] [Task Cmmnl Full Name]
      ,st.[SC_REQUEST_NUMBER] as [Task Request Number]
      ,st.[LOC_U_REGION] as [Task Region]
     
	   ,stsug.[SUG_ACTIVE]  as [Task User Group Active]
      ,stsug.[SUG_COST_CENTER]  as [Task User Group Cost Center]
      ,stsug.[SUG_DEFAULT_ASSIGNEE]  as [Task User Group Default Assignee]
      ,stsug.[SUG_DESCRIPTION]  as [Task User Group Description]
      ,stsug.[SUG_EMAIL]  as [Task User Group Email]
      ,stsug.[SUG_EXCLUDE_MANAGER]  as [Task User Group Exclude Manager]
      ,stsug.[SUG_HOURLY_RATE]  as [Task User Group Hourly Rate]
      ,stsug.[SUG_INCLUDE_MEMBERS]  as [Task User Group Include Members]
     -- ,stsug.[SUG_MANAGER_VALUE]  as [Task User Group Manager Value]
      ,UPPER(stsug.[SUG_NAME])  as [Task User Group Name]  -- // CHANGED TO UPPER CASE TO ADDRESS NULLS ISSUE//--- 
      ,stsug.[SUG_PARENT]  as [Task User Group Parent]
      ,stsug.[SUG_SOURCE]  as [Task User Group Ssource]  
      ,stsug.[SUG_SYS_MOD_COUNT]  as [Task User Group Mod Count]
      ,stsug.[SUG_TYPE]  as [Task User Group Type]
      ,stsug.[SUG_U_ALIAS]  as [Task User Group Alias]
      ,stsug.[SUG_U_DSS_GROUP]  as [Task User Group Dss Group]
      ,stsug.[SUG_U_GROUP_ID]  as [Task User Group Id]
      ,stsug.[SUG_U_GROUP_TYPE]  as [Task User Group Group Type]
      ,stsug.[SUG_U_REGION] as   [Task User Group Region]
      ,stsug.[SUG_U_RESPONSIBILITY]  as [Task User Group Responsibility]
      ,stsug.[SUG_U_SRMS_GROUPS]  as [Task User Group Srms Groups]
      ,stsug.[SUG_U_SUB_SUPPLIER]  as [Task User Group Sub Supplier]
      ,stsug.[SUG_U_SUPPLIER]  as [Task User Group Supplier]
      ,stsug.[SUG_U_SUPPORT_GROUP] as [Task User Group Support Group]
      ,stsug.[SUG_U_WORK_NOTES] as [Task User Group Work Notes]
	  ,stcm.[LOC_CITY] as [Task Common City]
      ,stcm.[LOC_COMPANY]  as [Task Common Company]
      ,stcm.[LOC_CONTACT] as [Task Common Contact]
      ,stcm.[LOC_COUNTRY] as [Task Common Country]
      ,stcm.[LOC_FAX_PHONE]  as [Task Common Fax Phone]
      ,stcm.[LOC_FULL_NAME]  as [Task Common Full Name]
      ,stcm.[LOC_LAT_LONG_ERROR] as [Task Common Lat_Long Error]
      ,stcm.[LOC_LATITUDE]  as [Task Common Latitude]
      ,stcm.[LOC_LONGITUDE] as [Task Common Longitude]
      ,stcm.[LOC_NAME]  as [Task Common Name]
      ,stcm.[LOC_PARENT] as [Task Common Parent]
      ,stcm.[LOC_PHONE] as [Task Common Phone]
      ,stcm.[LOC_PHONE_TERRITORY] as [Task Common Phone Terrirtory]
      ,stcm.[LOC_STATE] as [Task Common State]
      ,stcm.[LOC_STOCK_ROOM] as [Task Common Romm]
      ,stcm.[LOC_STREET] as [Task Common Street]
      ,stcm.[LOC_TIME_ZONE] as [Task Common Time Zone]
      ,stcm.[LOC_U___OF_EMPLOYEES]  as [Task Common Number of Emplyees]
      ,stcm.[LOC_U_ACCESSORIES] as [Task Common Accessories]
      ,stcm.[LOC_U_ACTIVE] as [Task Common Active]
      ,stcm.[LOC_U_ADDRESS_2]  as [Task Common Address 2]
      ,stcm.[LOC_U_COMMONLY_KNOWN_AS] as [Task Common Commonly Known As]
      ,stcm.[LOC_U_FACILITY_SIZE__SQ_FT_] as [Task Common Facility Size Sq Ft]
      ,stcm.[LOC_U_GENERIC_FIELD] as [Task Common Generic Field]
      ,stcm.[LOC_U_HELPDESK_CONTACT] as [Task Common Helpdesk Contact]
      ,stcm.[LOC_U_HOURS] as [Task Common Hours]
      ,stcm.[LOC_U_ID] as [Task Common Id]
      ,stcm.[LOC_U_LOCATION_CATEGORY] as [Task Common Location Category]
      ,stcm.[LOC_U_LOCATION_CODE] as [Task Common Location Code]
      ,stcm.[LOC_U_LYNC_ENABLED] as [Task Common Lync Enabled]
      ,stcm.[LOC_U_PCS]  as [Task Common Pcs]
      ,stcm.[LOC_U_PLANT_COORDINATOR]  as [Task Common Plant Coordinator]
      ,stcm.[LOC_U_PLANT_MANAGER] as [Task Common Plant Manager]
      ,stcm.[LOC_U_PRIMARY_CONTACT_PLANT_COORDI] as [Task Common Primary Contact Plant Coordi]
      ,stcm.[LOC_U_PRIMARY_CONTACT_PLANT_MGR_CO]  as [Task Common Primary Contact Plant Mgr Co]
      ,stcm.[LOC_U_PRIMARY_CONTACT_TECHNICAL_CO] as [Task Common Primary Contact Technical Co]
      ,stcm.[LOC_U_PRIMARY_LOCATION_CONTACT] as [Task Common Primary Location Contact]
      ,stcm.[LOC_U_REGION] as [Task Common Region]
      ,stcm.[LOC_U_SERVICE_TYPE] as [Task Common Service Type]
      ,stcm.[LOC_U_SKYPE_ENABLED] as [Task Common Skype Enabled]
      ,stcm.[LOC_U_SRMS_LOCATION] as [Task Common Srms Location]
      ,stcm.[LOC_U_TECHNICAL_COORDINATOR] as [Task Common Technical Coordinator]
      ,stcm.[LOC_U_TYPE] as [Task Common Type]
      ,stcm.[LOC_U_WHITE_GLOVE_LOCATION]  as [Task Common White Glove Location]
      ,stcm.[LOC_LOC_ZIP]  as [Task Common Loc Zip]
	  
      ,ts.[TASK_SLA_ACTIVE] as [Task Sla Active]
      ,ts.[TASK_SLA_BUSINESS_DURATION] as  [Task Sla Business Duration]
      ,ts.[TASK_SLA_BUSINESS_PAUSE_DURATION] as  [Task Sla Business Pause Duration]
      ,ts.[TASK_SLA_BBUSINESS_PERCENTAGE] as  [Task Sla Business Percentage]
      ,ts.[TASK_SLA_BUSINESS_TIME_LEFT] as  [Task Sla Business Time Left]
      ,ts.[TASK_SLA_DURATION] as [Task Sla Duration]
      ,ts.[TASK_SLA_END_TIME] as [Task Sla End Time]
      ,ts.[TASK_SLA_HAS_BREACHED]  as  [Task Sla Has Breached]
      ,ts.[TASK_SLA_PAUSE_DURATION] as [Task Sla Pause Duration]
      ,ts.[TASK_SLA_PAUSE_TIME]  as [Task Sla Pause Time]
      ,ts.[TASK_SLA_PERCENTAGE] as [Task Sla Percentage]
      ,ts.[TASK_SLA_PLANNED_END_TIME] as [Task Sla Paused End Time]
      ,ts.[TASK_SLA_STAGE] as [Task Sla Stage]
      ,ts.[TASK_SLA_START_TIME]  as [Task Sla Start Time]
      ,ts.[TASK_SLA_SYS_CREATED_BY] as [Task Sla Sys Created By]
      ,ts.[TASK_SLA_SYS_CREATED_ON] as [Task Sla Sys Created On]
      ,ts.[TASK_SLA_SYS_MOD_COUNT] as [Task Sla Sys Mod Count]
      ,ts.[TASK_SLA_SYS_UPDATED_BY] as [Task Sla Sys Updated By]
      ,ts.[TASK_SLA_SYS_UPDATED_ON] as [Task Sla Sys Updated On]
      ,ts.[TASK_SLA_TIME_LEFT] as [Task Sla Time Left]
      ,ts.[TASK_SLA_TIMEZONE]  as [Task Sla Timezone]
      ,ts.[TASK_SLA_U_SLA_AGEING] as [Task Sla Ageing]
      ,ts.[TASK_SLA_U_SLA_EXCEPTION] as [Task Sla Exception]
      ,ts.[TASK_SLA_U_WORK_NOTES] as [Task Sla Work Notes]     

,stcmdb.CATEGORY as [Task Cmdb Category]
,stcmdb.NAME as [Task Cmdb Name]
,stcmdb.SUBCATEGORY as [Task Cmdb Subcategory]

,stcmdb.U_CI_CATEGORY as [Task Cmdb Ci Category]
,stcmdb.U_REGION as [Task Cmdb U Region]
,stcmdb.U_SUB_TYPE as [Task Cmdb Sub Type]
,stcmdb.U_TYPE as [Task Cmdb U Type]
	,[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				st.SCT_CLOSED_AT IS NULL  or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				st.SCT_CLOSED_AT IS NULL  or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
st.SCT_CLOSED_AT IS NULL or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
	
	--SELECT *
FROM [KG_VIEWS].[KG_SNOW].[UVW_SC_REQUEST] sr 
FULL OUTER JOIN [KG_VIEWS].[KG_SNOW].[UVW_SC_TASK] st on st.SCT_REQUEST_VALUE=sr.SCR_SYS_ID  -- //Changed left join condition to full outer (tasks missing)//
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_SC_TASK_RELATED_RECORD] strr  on strr.[SCTR_SYS_ID]=st.SCT_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_TASK_SLA] ts on st.SCT_SYS_ID=ts.TASK_SLA_TASK_VALUE
Left JOIN [KG_VIEWS].[KG_SNOW].[UVW_SYS_USER_GROUP_KG] srsug on sr.SCR_ASSIGNMENT_GROUP = srsug.SUG_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_CMN_LOCATION] srcm on srcm.[LOC_SYS_ID]=sr.[SCR_LOCATION]
Left JOIN [KG_VIEWS].[KG_SNOW].[UVW_SYS_USER_GROUP_KG] stsug on st.SCT_ASSIGNMENT_GROUP_VALUE = stsug.SUG_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_CMN_LOCATION] stcm on stcm.[LOC_SYS_ID]=st.[SCT_LOCATION_VALUE]
--LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_CONTRACT_SLA] srcsla on srcsla.[CSLA_SYS_ID]=sr.SC
LEFT JOIN KG_VIEWS.[KG_SNOW].[UVW_SYS_USER] stsu on stsu.SU_SYS_ID=st.[SCT_OPENED_BY_VALUE]
LEFT JOIN KG_VIEWS.[KG_SNOW].[UVW_SYS_USER] srsu on srsu.SU_SYS_ID=sr.SCR_OPENED_BY_VALUE
LEFT JOIN KG_VIEWS.[KG_SNOW].[UVW_SYS_USER] srsurf on srsurf.SU_SYS_ID=sr.SCR_REQUESTED_FOR_VALUE
LEFT JOIN KG_VIEWS.[KG_SNOW].[UVW_SYS_USER] stsuav on st.[SCT_ASSIGNED_TO_VALUE]=stsuav.SU_SYS_ID
LEFT JOIN KG_VIEWS.KG_SNOW.[UVW_CMDB_CI] stcmdb ON stcmdb.SYS_ID=st.[SCT_CMDB_CI]
--WHERE sr.SCR_NUMBER='REQ0129013'

GO
/****** Object:  View [dbo].[UVW_SC_REQUEST_TASK_SLA_CUST_QUERY]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ===============================================================================================================================================
-- NAME        	:	UVW_SC_REQUEST_TASK_SLA_CUST_QUERY
-- PURPOSE & 
-- Description  :	
                        
-- REVISIONS:

-- Ver          Date             Author                    Change Reason

-- 1.0         08-21-2017	   ATHEETH RAO	         		1. Initial Version

-- 1.1		   01-05-2018      ATHEETH RAO					2. Changed filter condition to capture rolling 24 months of data from current month.

-- ===============================================================================================================================================

CREATE VIEW [dbo].[UVW_SC_REQUEST_TASK_SLA_CUST_QUERY]
AS
SELECT [SC_REQ_T_SLA].[Request Active] AS [Request Active]
      ,[SC_REQ_T_SLA].[Request Activitiy Due] AS [Request Activitiy Due]
      ,[SC_REQ_T_SLA].[Request Approval] AS [Request Approval]
      ,[SC_REQ_T_SLA].[Request Aprroval History] AS [Request Aprroval History]
      ,[SC_REQ_T_SLA].[Request Approval Set] AS [Request Approval Set]
      ,[SC_REQ_T_SLA].[Request Assigned To] AS [Request Assigned To]
      ,[SC_REQ_T_SLA].[Request Assignment Group] AS [Request Assignment Group]
      ,[SC_REQ_T_SLA].[Request Business Duration] AS [Request Business Duration]
      ,[SC_REQ_T_SLA].[Request Calendar Duration] AS [Request Calendar Duration]
      ,[SC_REQ_T_SLA].[Request Calendar Stc] AS [Request Calendar Stc]
      ,[SC_REQ_T_SLA].[Request Close Notes] AS [Request Close Notes]
      ,[SC_REQ_T_SLA].[Request Closed At] AS [Request Closed At]
      ,[SC_REQ_T_SLA].[Request Cmdb Ci] AS [Request Cmdb Ci]
      ,[SC_REQ_T_SLA].[Request Comments] AS [Request Comments]
      ,[SC_REQ_T_SLA].[Request Comments and Work Notes] AS [Request Comments and Work Notes]
      ,[SC_REQ_T_SLA].[Request Company] AS [Request Company]
      ,[SC_REQ_T_SLA].[Request Contact Type] AS [Request Contact Type]
      ,[SC_REQ_T_SLA].[Request Correlation Display] AS [Request Correlation Display]
      ,[SC_REQ_T_SLA].[Request Correlation Id] AS [Request Correlation Id]
      ,[SC_REQ_T_SLA].[Request Delivery Address] AS [Request Delivery Address]
      ,[SC_REQ_T_SLA].[Request Description] AS [Request Description]
      ,[SC_REQ_T_SLA].[Request Due Date] AS [Request Due Date]
      ,[SC_REQ_T_SLA].[Request Escalation] AS [Request Escalation]
      ,[SC_REQ_T_SLA].[Request Expected Start] AS [Request Expected Start]
      ,[SC_REQ_T_SLA].[Request Follow Up] AS [Request Follow Up]
      ,[SC_REQ_T_SLA].[Request Group List] AS [Request Group List]
      ,[SC_REQ_T_SLA].[Request Impact] AS [Request Impact]
      ,[SC_REQ_T_SLA].[Request Knowledge] AS [Request Knowledge]
      ,[SC_REQ_T_SLA].[Request Location] AS [Request Location]
      ,[SC_REQ_T_SLA].[Request Made Sla] AS [Request Made Sla]
      ,[SC_REQ_T_SLA].[Request Number] AS [Request Number]
      ,[SC_REQ_T_SLA].[Request Opened At] AS [Request Opened At]
      ,[SC_REQ_T_SLA].[Request Opened By] AS [Request Opened By]
      ,[SC_REQ_T_SLA].[Request Order] AS [Request Order]
      ,[SC_REQ_T_SLA].[Request Parent] AS [Request Parent]
      ,[SC_REQ_T_SLA].[Request Price] AS [Request Price]
      ,[SC_REQ_T_SLA].[Request Priority] AS [Request Priority]
      ,[SC_REQ_T_SLA].[Request Reassisgnemnt Count] AS [Request Reassisgnemnt Count]
      ,[SC_REQ_T_SLA].[Request Request State] AS [Request Request State]
      ,[SC_REQ_T_SLA].[Request Requested Date] AS [Request Requested Date]
      ,[SC_REQ_T_SLA].[Request Requested for] AS [Request Requested for]
      ,[SC_REQ_T_SLA].[Request Short Description] AS [Request Short Description]
      ,[SC_REQ_T_SLA].[Request Skills] AS [Request Skills]
      ,[SC_REQ_T_SLA].[Request Sla Due] AS [Request Sla Due]
      ,[SC_REQ_T_SLA].[Request Special Instructions] AS [Request Special Instructions]
      ,[SC_REQ_T_SLA].[Request Stage] AS [Request Stage]
      ,[SC_REQ_T_SLA].[Request State] AS [Request State]
      ,[SC_REQ_T_SLA].[Request Sys Class Name] AS [Request Sys Class Name]
      ,[SC_REQ_T_SLA].[Request Sys Created By] AS [Request Sys Created By]
      ,[SC_REQ_T_SLA].[Request Sys Created On] AS [Request Sys Created On]
      ,[SC_REQ_T_SLA].[Request Sys Mod Count] AS [Request Sys Mod Count]
      ,[SC_REQ_T_SLA].[Request Sys Updated By] AS [Request Sys Updated By]
      ,[SC_REQ_T_SLA].[Request Sys Updated On] AS [Request Sys Updated On]
      ,[SC_REQ_T_SLA].[Request Time Worked] AS [Request Time Worked]
      ,[SC_REQ_T_SLA].[Request Assignment Group Type] AS [Request Assignment Group Type]
      ,[SC_REQ_T_SLA].[Request Backend] AS [Request Backend] 
      ,[SC_REQ_T_SLA].[Request Incident Group Type] AS [Request Incident Group Type]
      ,[SC_REQ_T_SLA].[Request Recast] AS [Request Recast]
      ,[SC_REQ_T_SLA].[Request Upon Approval] AS [Request Upon Approval]
      ,[SC_REQ_T_SLA].[Request Upon Reject] AS [Request Upon Reject]
      ,[SC_REQ_T_SLA].[Request Urgency] AS [Request Urgency]
      ,[SC_REQ_T_SLA].[Request User Input] AS [Request User Input]
      ,[SC_REQ_T_SLA].[Request Watch List] AS [Request Watch List]
      ,[SC_REQ_T_SLA].[Request Work End] AS [Request Work End]
      ,[SC_REQ_T_SLA].[Request Work Notes] AS [Request Work Notes]
      ,[SC_REQ_T_SLA].[Request Work Notes List] AS [Request Work Notes List]
      ,[SC_REQ_T_SLA].[Request Work Start] AS [Request Work Start]
      ,[SC_REQ_T_SLA].[Request User Group Active] AS [Request User Group Active]
      ,[SC_REQ_T_SLA].[Request User Group Cost Center] AS [Request User Group Cost Center]
      ,[SC_REQ_T_SLA].[Request User Group Default Assignee] AS [Request User Group Default Assignee]
      ,[SC_REQ_T_SLA].[Request User Group Description] AS [Request User Group Description]
      ,[SC_REQ_T_SLA].[Request User Group Email] AS [Request User Group Email]
      ,[SC_REQ_T_SLA].[Request User Group Exclude Manager] AS [Request User Group Exclude Manager]
      ,[SC_REQ_T_SLA].[Request User Group Hourly Rate] AS [Request User Group Hourly Rate]
      ,[SC_REQ_T_SLA].[Request User Group Include Members] AS [Request User Group Include Members]
      ,[SC_REQ_T_SLA].[Request User Group Manager Value] AS [Request User Group Manager Value]
      ,[SC_REQ_T_SLA].[Request User Group Name] AS [Request User Group Name]
      ,[SC_REQ_T_SLA].[Request User Group Parent] AS [Request User Group Parent]
      ,[SC_REQ_T_SLA].[Request User Group Ssource] AS [Request User Group Ssource]
      ,[SC_REQ_T_SLA].[Request User Group Mod Count] AS [Request User Group Mod Count]
      ,[SC_REQ_T_SLA].[Request User Group Type] AS [Request User Group Type]
      ,[SC_REQ_T_SLA].[Request User Group Alias] AS [Request User Group Alias]
      ,[SC_REQ_T_SLA].[Request User Group Dss Group] AS [Request User Group Dss Group]
      ,[SC_REQ_T_SLA].[Request User Group Id] AS [Request User Group Id]
      ,[SC_REQ_T_SLA].[Request User Group Group Type] AS [Request User Group Group Type]
      ,[SC_REQ_T_SLA].[Request User Group Region] AS [Request User Group Region]
      ,[SC_REQ_T_SLA].[Request User Group Responsibility] AS [Request User Group Responsibility]
      ,[SC_REQ_T_SLA].[Request User Group Srms Groups] AS [Request User Group Srms Groups]
      ,[SC_REQ_T_SLA].[Request User Group Sub Supplier] AS [Request User Group Sub Supplier]
      ,[SC_REQ_T_SLA].[Request User Group Supplier] AS [Request User Group Supplier]
      ,[SC_REQ_T_SLA].[Request User Group Support Group] AS [Request User Group Support Group]
      ,[SC_REQ_T_SLA].[Request User Group Work Notes] AS [Request User Group Work Notes]
      ,[SC_REQ_T_SLA].[Request Common City] AS [Request Common City]
      ,[SC_REQ_T_SLA].[Request Common Company] AS [Request Common Company]
      ,[SC_REQ_T_SLA].[Request Common Contact] AS [Request Common Contact]
      ,[SC_REQ_T_SLA].[Request Common Country] AS [Request Common Country]
      ,[SC_REQ_T_SLA].[Request Common Fax Phone] AS [Request Common Fax Phone]
      ,[SC_REQ_T_SLA].[Request Common Full Name] AS [Request Common Full Name]
      ,[SC_REQ_T_SLA].[Request Common Lat_Long Error] AS [Request Common Lat_Long Error]
      ,[SC_REQ_T_SLA].[Request Common Latitude] AS [Request Common Latitude]
      ,[SC_REQ_T_SLA].[Request Common Longitude] AS [Request Common Longitude]
      ,[SC_REQ_T_SLA].[Request Common Name] AS [Request Common Name]
      ,[SC_REQ_T_SLA].[Request Common Parent] AS [Request Common Parent]
      ,[SC_REQ_T_SLA].[Request Common Phone] AS [Request Common Phone]
      ,[SC_REQ_T_SLA].[Request Common Phone Terrirtory] AS [Request Common Phone Terrirtory]
      ,[SC_REQ_T_SLA].[Request Common State] AS [Request Common State]
      ,[SC_REQ_T_SLA].[Request Common Romm] AS [Request Common Romm]
      ,[SC_REQ_T_SLA].[Request Common Street] AS [Request Common Street]
      ,[SC_REQ_T_SLA].[Request Common Time Zone] AS [Request Common Time Zone]
      ,[SC_REQ_T_SLA].[Request Common Number of Emplyees] AS [Request Common Number of Emplyees]
      ,[SC_REQ_T_SLA].[Request Common Accessories] AS [Request Common Accessories]
      ,[SC_REQ_T_SLA].[Request Common Active] AS [Request Common Active]
      ,[SC_REQ_T_SLA].[Request Common Address 2] AS [Request Common Address 2]
      ,[SC_REQ_T_SLA].[Request Common Commonly Known As] AS [Request Common Commonly Known As]
      ,[SC_REQ_T_SLA].[Request Common Facility Size Sq Ft] AS [Request Common Facility Size Sq Ft]
      ,[SC_REQ_T_SLA].[Request Common Generic Field] AS [Request Common Generic Field]
      ,[SC_REQ_T_SLA].[Request Common Helpdesk Contact] AS [Request Common Helpdesk Contact]
      ,[SC_REQ_T_SLA].[Request Common Hours] AS [Request Common Hours]
      ,[SC_REQ_T_SLA].[Request Common Id] AS [Request Common Id]
      ,[SC_REQ_T_SLA].[Request Common Location Category] AS [Request Common Location Category]
      ,[SC_REQ_T_SLA].[Request Common Location Code] AS [Request Common Location Code]
      ,[SC_REQ_T_SLA].[Request Common Lync Enabled] AS [Request Common Lync Enabled]
      ,[SC_REQ_T_SLA].[Request Common Pcs] AS [Request Common Pcs]
      ,[SC_REQ_T_SLA].[Request Common Plant Coordinator] AS [Request Common Plant Coordinator]
      ,[SC_REQ_T_SLA].[Request Common Plant Manager] AS [Request Common Plant Manager]
      ,[SC_REQ_T_SLA].[Request Common Primary Contact Plant Coordi] AS [Request Common Primary Contact Plant Coordi]
      ,[SC_REQ_T_SLA].[Request Common Primary Contact Plant Mgr Co] AS [Request Common Primary Contact Plant Mgr Co]
      ,[SC_REQ_T_SLA].[Request Common Primary Contact Technical Co] AS [Request Common Primary Contact Technical Co]
      ,[SC_REQ_T_SLA].[Request Common Primary Location Contact] AS [Request Common Primary Location Contact]
      ,[SC_REQ_T_SLA].[Request Common Region] AS [Request Common Region]
      ,[SC_REQ_T_SLA].[Request Common Service Type] AS [Request Common Service Type]
      ,[SC_REQ_T_SLA].[Request Common Skype Enabled] AS [Request Common Skype Enabled]
      ,[SC_REQ_T_SLA].[Request Common Srms Location] AS [Request Common Srms Location]
      ,[SC_REQ_T_SLA].[Request Common Technical Coordinator] AS [Request Common Technical Coordinator]
      ,[SC_REQ_T_SLA].[Request Common Type] AS [Request Common Type]
      ,[SC_REQ_T_SLA].[Request Common White Glove Location] AS [Request Common White Glove Location]
      ,[SC_REQ_T_SLA].[Request Common Loc Zip] AS [Request Common Loc Zip]
      ,[SC_REQ_T_SLA].[Task Active] AS [Task Active]
      ,[SC_REQ_T_SLA].[Task Activity Due] AS [Task Activity Due]
      ,[SC_REQ_T_SLA].[Task Approval] AS [Task Approval]
      ,[SC_REQ_T_SLA].[Task Approval History] AS [Task Approval History]
      ,[SC_REQ_T_SLA].[Task Approval Set] AS [Task Approval Set]
      ,[SC_REQ_T_SLA].[Task Assigned To] AS [Task Assigned To]
      ,[SC_REQ_T_SLA].[Task Business Duration] AS [Task Business Duration]
      ,[SC_REQ_T_SLA].[Task Calendar Duration] AS [Task Calendar Duration]
      ,[SC_REQ_T_SLA].[Task Calendar Stc] AS [Task Calendar Stc]
      ,[SC_REQ_T_SLA].[Task Notes] AS [Task Notes]
      ,[SC_REQ_T_SLA].[Task Closed At] AS [Task Closed At]
      ,[SC_REQ_T_SLA].[Task Cmdb Ci] AS [Task Cmdb Ci]
      ,[SC_REQ_T_SLA].[Task Comments] AS [Task Comments]
      ,[SC_REQ_T_SLA].[Task Comments And Work Notes] AS [Task Comments And Work Notes]
      ,[SC_REQ_T_SLA].[Task Company] AS [Task Company]
      ,[SC_REQ_T_SLA].[Task Contact Type] AS [Task Contact Type]
      ,[SC_REQ_T_SLA].[Task Correlation Display] AS [Task Correlation Display]
      ,[SC_REQ_T_SLA].[Task Correlation Id] AS [Task Correlation Id]
      ,[SC_REQ_T_SLA].[Task Description] AS [Task Description]
      ,[SC_REQ_T_SLA].[Task Due Date] AS [Task Due Date]
      ,[SC_REQ_T_SLA].[Task Escalation] AS [Task Escalation]
      ,[SC_REQ_T_SLA].[Task Expected Start] AS [Task Expected Start]
      ,[SC_REQ_T_SLA].[Task Follow Up] AS [Task Follow Up]
      ,[SC_REQ_T_SLA].[Task Group List] AS [Task Group List]
      ,[SC_REQ_T_SLA].[Task Impact] AS [Task Impact]
      ,[SC_REQ_T_SLA].[Task Knowledge] AS [Task Knowledge]
      ,[SC_REQ_T_SLA].[Task Location Value] AS [Task Location Value]
      ,[SC_REQ_T_SLA].[Task Made Sla] AS [Task Made Sla]
      ,[SC_REQ_T_SLA].[Task Number] AS [Task Number]
      ,[SC_REQ_T_SLA].[Task Opened At] AS [Task Opened At]
      ,[SC_REQ_T_SLA].[Task Opened By] AS [Task Opened By]
      ,[SC_REQ_T_SLA].[Task Order] AS [Task Order]
      ,[SC_REQ_T_SLA].[Task Priority] AS [Task Priority]
      ,[SC_REQ_T_SLA].[Task Reassignment Count] AS [Task Reassignment Count]
      ,[SC_REQ_T_SLA].[Task Catalog] AS [Task Catalog]
      ,[SC_REQ_T_SLA].[Task Short Description] AS [Task Short Description]
      ,[SC_REQ_T_SLA].[Task Skills] AS [Task Skills]
      ,[SC_REQ_T_SLA].[Task Sla Due] AS [Task Sla Due]
      ,[SC_REQ_T_SLA].[Task State] AS [Task State]
      ,[SC_REQ_T_SLA].[Task Sys Class Name] AS [Task Sys Class Name]
      ,[SC_REQ_T_SLA].[Task Sys Created By] AS [Task Sys Created By]
      ,[SC_REQ_T_SLA].[Task Sys Created On] AS [Task Sys Created On]
      ,[SC_REQ_T_SLA].[Task Sys Domain Value] AS [Task Sys Domain Value]
      ,[SC_REQ_T_SLA].[Task Sys Mod Count] AS [Task Sys Mod Count]
      ,[SC_REQ_T_SLA].[Task Sys Updated By] AS [Task Sys Updated By]
      ,[SC_REQ_T_SLA].[Task Sys Updated On] AS [Task Sys Updated On]
      ,[SC_REQ_T_SLA].[Task Time Worked] AS [Task Time Worked]
      ,[SC_REQ_T_SLA].[Task City] AS [Task City]
      ,[SC_REQ_T_SLA].[Task Country] AS [Task Country]
      ,[SC_REQ_T_SLA].[Task Mailing Address Line 1] AS [Task Mailing Address Line 1]
      ,[SC_REQ_T_SLA].[Task Address State] AS [Task Address State]
      ,[SC_REQ_T_SLA].[Task Zip Code] AS [Task Zip Code]
      ,[SC_REQ_T_SLA].[Task Assigned] AS [Task Assigned]
      ,[SC_REQ_T_SLA].[Task Assignment Group Type] AS [Task Assignment Group Type]
      ,[SC_REQ_T_SLA].[Task Cass Request Number] AS [Task Cass Request Number]
      ,[SC_REQ_T_SLA].[Task Cubicke Number] AS [Task Cubicke Number]
      ,[SC_REQ_T_SLA].[Task Device Eligibility] AS [Task Device Eligibility]
      ,[SC_REQ_T_SLA].[Task Dss] AS [Task Dss]
      ,[SC_REQ_T_SLA].[Task Dss Visits] AS [Task Dss Visits]
      ,[SC_REQ_T_SLA].[Task Handle Time] AS [Task Handle Time]
      ,[SC_REQ_T_SLA].[Task Email Id] AS [Task Email Id]
      ,[SC_REQ_T_SLA].[Task Estimated Delivery Date] AS [Task Estimated Delivery Date]
      ,[SC_REQ_T_SLA].[Task Floor Number] AS [Task Floor Number]
      ,[SC_REQ_T_SLA].[Task Have You Created The Id] AS [Task Have You Created The Id]
      ,[SC_REQ_T_SLA].[Task Incident Group Type] AS [Task Incident Group Type]
      ,[SC_REQ_T_SLA].[Task Info Required From User] AS [Task Info Required From User]
      ,[SC_REQ_T_SLA].[Task Item] AS [Task Item]
      ,[SC_REQ_T_SLA].[Task Level Of Effort] AS [Task Level Of Effort]
      ,[SC_REQ_T_SLA].[Task Licence Available] AS [Task Licence Available]
      ,[SC_REQ_T_SLA].[Task Licence Purchased] AS [Task Licence Purchased]
      ,[SC_REQ_T_SLA].[Task Mailing Address Line 2] AS [Task Mailing Address Line 2]
      ,[SC_REQ_T_SLA].[Task Network Id] AS [Task Network Id]
      ,[SC_REQ_T_SLA].[Task Pending Dur] AS [Task Pending Dur]
      ,[SC_REQ_T_SLA].[Task Pending Duration] AS [Task Pending Duration]
      ,[SC_REQ_T_SLA].[Task Pending End Time] AS [Task Pending End Time]
      ,[SC_REQ_T_SLA].[Task Pending Start Time] AS [Task Pending Start Time]
      ,[SC_REQ_T_SLA].[Task Phone Number] AS [Task Phone Number]
      ,[SC_REQ_T_SLA].[Task Report Rsa Location] AS [Task Report Rsa Location]
      ,[SC_REQ_T_SLA].[Task Requirement Title] AS [Task Requirement Title]
      ,[SC_REQ_T_SLA].[Task Rsa Request Number] AS [Task Rsa Request Number]
      ,[SC_REQ_T_SLA].[Task Selected Device] AS [Task Selected Device]
      ,[SC_REQ_T_SLA].[Task Shipper Vendor Name] AS [Task Shipper Vendor Name]
      ,[SC_REQ_T_SLA].[Task Sla Type] AS [Task Sla Type]
      ,[SC_REQ_T_SLA].[Task Srms Location] AS [Task Srms Location]
      ,[SC_REQ_T_SLA].[Task Srms Resolved] AS [Task Srms Resolved]
      ,[SC_REQ_T_SLA].[Task Srms Status] AS [Task Srms Status]
      ,[SC_REQ_T_SLA].[Task Srms Ticket Number] AS [Task Srms Ticket Number]
      ,[SC_REQ_T_SLA].[Task Srms Update] AS [Task Srms Update]
      ,[SC_REQ_T_SLA].[Task Supplier] AS [Task Supplier]
      ,[SC_REQ_T_SLA].[Task Supplier Name] AS [Task Supplier Name]
      ,[SC_REQ_T_SLA].[Task Tracking Number] AS [Task Tracking Number]
      ,[SC_REQ_T_SLA].[Task Upon Approval] AS [Task Upon Approval]
      ,[SC_REQ_T_SLA].[Task Upon Reject] AS [Task Upon Reject]
      ,[SC_REQ_T_SLA].[Task Urgency] AS [Task Urgency]
      ,[SC_REQ_T_SLA].[Task User Input] AS [Task User Input]
      ,[SC_REQ_T_SLA].[Task Watch List] AS [Task Watch List]
      ,[SC_REQ_T_SLA].[Task Work End] AS [Task Work End]
      ,[SC_REQ_T_SLA].[Task Work Notes] AS [Task Work Notes]
      ,[SC_REQ_T_SLA].[Task Work Notes List] AS [Task Work Notes List]
      ,[SC_REQ_T_SLA].[Task Work Start] AS [Task Work Start]
      ,[SC_REQ_T_SLA].[Task Related Record Parent Number] AS [Task Related Record Parent Number]
      ,[SC_REQ_T_SLA].[Task User Assigned To] AS [Task User Assigned To]
      ,[SC_REQ_T_SLA].[Task User Opened By] AS [Task User Opened By]
      ,[SC_REQ_T_SLA].[Task User Closed By] AS [Task User Closed By]
      ,[SC_REQ_T_SLA].[Task User Group Assignmnet Group] AS [Task User Group Assignmnet Group] 
      ,[SC_REQ_T_SLA].[Task Cmmnl Full Name] AS [Task Cmmnl Full Name]
      ,[SC_REQ_T_SLA].[Task Request Number] AS [Task Request Number]
      ,[SC_REQ_T_SLA].[Task Region] AS [Task Region]
      ,[SC_REQ_T_SLA].[Task User Group Active] AS [Task User Group Active]
      ,[SC_REQ_T_SLA].[Task User Group Cost Center] AS [Task User Group Cost Center]
      ,[SC_REQ_T_SLA].[Task User Group Default Assignee] AS [Task User Group Default Assignee]
      ,[SC_REQ_T_SLA].[Task User Group Description] AS [Task User Group Description]
      ,[SC_REQ_T_SLA].[Task User Group Email] AS [Task User Group Email]
      ,[SC_REQ_T_SLA].[Task User Group Exclude Manager] AS [Task User Group Exclude Manager]
      ,[SC_REQ_T_SLA].[Task User Group Hourly Rate] AS [Task User Group Hourly Rate]
      ,[SC_REQ_T_SLA].[Task User Group Include Members] AS [Task User Group Include Members]
      ,[SC_REQ_T_SLA].[Task User Group Name] AS [Task User Group Name]
      ,[SC_REQ_T_SLA].[Task User Group Parent] AS [Task User Group Parent]
      ,[SC_REQ_T_SLA].[Task User Group Ssource] AS [Task User Group Ssource]
      ,[SC_REQ_T_SLA].[Task User Group Mod Count] AS [Task User Group Mod Count]
      ,[SC_REQ_T_SLA].[Task User Group Type] AS [Task User Group Type]
      ,[SC_REQ_T_SLA].[Task User Group Alias] AS [Task User Group Alias]
      ,[SC_REQ_T_SLA].[Task User Group Dss Group] AS [Task User Group Dss Group]
      ,[SC_REQ_T_SLA].[Task User Group Id] AS [Task User Group Id]
      ,[SC_REQ_T_SLA].[Task User Group Group Type] AS [Task User Group Group Type]
      ,[SC_REQ_T_SLA].[Task User Group Region] AS [Task User Group Region]
      ,[SC_REQ_T_SLA].[Task User Group Responsibility] AS [Task User Group Responsibility]
      ,[SC_REQ_T_SLA].[Task User Group Srms Groups] AS [Task User Group Srms Groups]
      ,[SC_REQ_T_SLA].[Task User Group Sub Supplier] AS [Task User Group Sub Supplier]
      ,[SC_REQ_T_SLA].[Task User Group Supplier] AS [Task User Group Supplier]
      ,[SC_REQ_T_SLA].[Task User Group Support Group] AS [Task User Group Support Group]
      ,[SC_REQ_T_SLA].[Task User Group Work Notes] AS [Task User Group Work Notes]
      ,[SC_REQ_T_SLA].[Task Common City] AS [Task Common City]
      ,[SC_REQ_T_SLA].[Task Common Company] AS [Task Common Company]
      ,[SC_REQ_T_SLA].[Task Common Contact] AS [Task Common Contact]
      ,[SC_REQ_T_SLA].[Task Common Country] AS [Task Common Country]
      ,[SC_REQ_T_SLA].[Task Common Fax Phone] AS [Task Common Fax Phone]
      ,[SC_REQ_T_SLA].[Task Common Full Name] AS [Task Common Full Name]
      ,[SC_REQ_T_SLA].[Task Common Lat_Long Error] AS [Task Common Lat_Long Error]
      ,[SC_REQ_T_SLA].[Task Common Latitude] AS [Task Common Latitude]
      ,[SC_REQ_T_SLA].[Task Common Longitude] AS [Task Common Longitude]
      ,[SC_REQ_T_SLA].[Task Common Name] AS [Task Common Name]
      ,[SC_REQ_T_SLA].[Task Common Parent] AS [Task Common Parent]
      ,[SC_REQ_T_SLA].[Task Common Phone] AS [Task Common Phone]
      ,[SC_REQ_T_SLA].[Task Common Phone Terrirtory] AS [Task Common Phone Terrirtory]
      ,[SC_REQ_T_SLA].[Task Common State] AS [Task Common State]
      ,[SC_REQ_T_SLA].[Task Common Romm] AS [Task Common Romm]
      ,[SC_REQ_T_SLA].[Task Common Street] AS [Task Common Street]
      ,[SC_REQ_T_SLA].[Task Common Time Zone] AS [Task Common Time Zone]
      ,[SC_REQ_T_SLA].[Task Common Number of Emplyees] AS [Task Common Number of Emplyees]
      ,[SC_REQ_T_SLA].[Task Common Accessories] AS [Task Common Accessories]
      ,[SC_REQ_T_SLA].[Task Common Active] AS [Task Common Active]
      ,[SC_REQ_T_SLA].[Task Common Address 2] AS [Task Common Address 2]
      ,[SC_REQ_T_SLA].[Task Common Commonly Known As] AS [Task Common Commonly Known As]
      ,[SC_REQ_T_SLA].[Task Common Facility Size Sq Ft] AS [Task Common Facility Size Sq Ft]
      ,[SC_REQ_T_SLA].[Task Common Generic Field] AS [Task Common Generic Field]
      ,[SC_REQ_T_SLA].[Task Common Helpdesk Contact] AS [Task Common Helpdesk Contact]
      ,[SC_REQ_T_SLA].[Task Common Hours] AS [Task Common Hours]
      ,[SC_REQ_T_SLA].[Task Common Id] AS [Task Common Id]
      ,[SC_REQ_T_SLA].[Task Common Location Category] AS [Task Common Location Category]
      ,[SC_REQ_T_SLA].[Task Common Location Code] AS [Task Common Location Code]
      ,[SC_REQ_T_SLA].[Task Common Lync Enabled] AS [Task Common Lync Enabled]
      ,[SC_REQ_T_SLA].[Task Common Pcs] AS [Task Common Pcs]
      ,[SC_REQ_T_SLA].[Task Common Plant Coordinator] AS [Task Common Plant Coordinator]
      ,[SC_REQ_T_SLA].[Task Common Plant Manager] AS [Task Common Plant Manager]
      ,[SC_REQ_T_SLA].[Task Common Primary Contact Plant Coordi] AS [Task Common Primary Contact Plant Coordi]
      ,[SC_REQ_T_SLA].[Task Common Primary Contact Plant Mgr Co] AS [Task Common Primary Contact Plant Mgr Co]
      ,[SC_REQ_T_SLA].[Task Common Primary Contact Technical Co] AS [Task Common Primary Contact Technical Co]
      ,[SC_REQ_T_SLA].[Task Common Primary Location Contact] AS [Task Common Primary Location Contact]
      ,[SC_REQ_T_SLA].[Task Common Region] AS [Task Common Region]
      ,[SC_REQ_T_SLA].[Task Common Service Type] AS [Task Common Service Type]
      ,[SC_REQ_T_SLA].[Task Common Skype Enabled] AS [Task Common Skype Enabled]
      ,[SC_REQ_T_SLA].[Task Common Srms Location] AS [Task Common Srms Location]
      ,[SC_REQ_T_SLA].[Task Common Technical Coordinator] AS [Task Common Technical Coordinator]
      ,[SC_REQ_T_SLA].[Task Common Type] AS [Task Common Type]
      ,[SC_REQ_T_SLA].[Task Common White Glove Location] AS [Task Common White Glove Location]
      ,[SC_REQ_T_SLA].[Task Common Loc Zip] AS [Task Common Loc Zip]
      ,[SC_REQ_T_SLA].[Task Sla Active] AS [Task Sla Active]
      ,[SC_REQ_T_SLA].[Task Sla Business Duration] AS [Task Sla Business Duration]
      ,[SC_REQ_T_SLA].[Task Sla Business Pause Duration] AS [Task Sla Business Pause Duration]
      ,[SC_REQ_T_SLA].[Task Sla Business Percentage] AS [Task Sla Business Percentage]
      ,[SC_REQ_T_SLA].[Task Sla Business Time Left] AS [Task Sla Business Time Left]
      ,[SC_REQ_T_SLA].[Task Sla Duration] AS [Task Sla Duration]
      ,[SC_REQ_T_SLA].[Task Sla End Time] AS [Task Sla End Time]
      ,[SC_REQ_T_SLA].[Task Sla Has Breached] AS [Task Sla Has Breached]
      ,[SC_REQ_T_SLA].[Task Sla Pause Duration] AS [Task Sla Pause Duration]
      ,[SC_REQ_T_SLA].[Task Sla Pause Time] AS [Task Sla Pause Time]
      ,[SC_REQ_T_SLA].[Task Sla Percentage] AS [Task Sla Percentage]
      ,[SC_REQ_T_SLA].[Task Sla Paused End Time] AS [Task Sla Paused End Time]
      ,[SC_REQ_T_SLA].[Task Sla Stage] AS [Task Sla Stage]
      ,[SC_REQ_T_SLA].[Task Sla Start Time] AS [Task Sla Start Time]
      ,[SC_REQ_T_SLA].[Task Sla Sys Created By] AS [Task Sla Sys Created By]
      ,[SC_REQ_T_SLA].[Task Sla Sys Created On] AS [Task Sla Sys Created On]
      ,[SC_REQ_T_SLA].[Task Sla Sys Mod Count] AS [Task Sla Sys Mod Count]
      ,[SC_REQ_T_SLA].[Task Sla Sys Updated By] AS [Task Sla Sys Updated By]
      ,[SC_REQ_T_SLA].[Task Sla Sys Updated On] AS [Task Sla Sys Updated On]
      ,[SC_REQ_T_SLA].[Task Sla Time Left] AS [Task Sla Time Left]
      ,[SC_REQ_T_SLA].[Task Sla Timezone] AS [Task Sla Timezone]
      ,[SC_REQ_T_SLA].[Task Sla Ageing] AS [Task Sla Ageing]
      ,[SC_REQ_T_SLA].[Task Sla Exception] AS [Task Sla Exception]
      ,[SC_REQ_T_SLA].[Task Sla Work Notes] AS [Task Sla Work Notes]
      ,[SC_REQ_T_SLA].[Task Cmdb Category] AS [Task Cmdb Category]
      ,[SC_REQ_T_SLA].[Task Cmdb Name] AS [Task Cmdb Name]
      ,[SC_REQ_T_SLA].[Task Cmdb Subcategory] AS [Task Cmdb Subcategory]
      ,[SC_REQ_T_SLA].[Task Cmdb Ci Category] AS [Task Cmdb Ci Category]
      ,[SC_REQ_T_SLA].[Task Cmdb U Region] AS [Task Cmdb U Region]
      ,[SC_REQ_T_SLA].[Task Cmdb Sub Type] AS [Task Cmdb Sub Type]
      ,[SC_REQ_T_SLA].[Task Cmdb U Type] AS [Task Cmdb U Type]
      ,[SC_REQ_T_SLA].[TWO MONTHS AGO] AS [TWO MONTHS AGO]
      ,[SC_REQ_T_SLA].[ONE MONTH AGO] AS [ONE MONTH AGO]
      ,[SC_REQ_T_SLA].[CURRENT MONTH] AS [CURRENT MONTH]
	  ,[AIP_MET_USR_GRP].[ID] AS [ID]
	  ,[AIP_MET_USR_GRP].[SUPPLIER] AS [SUPPLIER]
	  ,[AIP_MET_USR_GRP].[SUB_SUPPLIER] AS [SUB_SUPPLIER]
	  ,[AIP_MET_USR_GRP].[SLA_OWNER] AS [SLA_OWNER]
	  ,[AIP_MET_USR_GRP].[TEAM] AS [TEAM]
	  ,[AIP_MET_USR_GRP].[METRIC_MEASURE] AS [METRIC_MEASURE]
	  ,[AIP_MET_USR_GRP].[METRIC_TARGET] AS [METRIC_TARGET]
	  ,[AIP_MET_USR_GRP].[METRIC_DESCRIPTION] AS [METRIC_DESCRIPTION]
	  ,[AIP_MET_USR_GRP].[ACTIVE] AS [ACTIVE]
	  ,[AIP_MET_USR_GRP].[COST_CENTER] AS [COST_CENTER]
	  ,[AIP_MET_USR_GRP].[DEFAULT_ASSIGNEE] AS [DEFAULT_ASSIGNEE]
	  ,[AIP_MET_USR_GRP].[DESCRIPTION] AS [DESCRIPTION]
	  ,[AIP_MET_USR_GRP].[EMAIL] AS [EMAIL]
	  ,[AIP_MET_USR_GRP].[EXCLUDE_MANAGER] AS [EXCLUDE_MANAGER]
	  ,[AIP_MET_USR_GRP].[HOURLY_RATE] AS [HOURLY_RATE]
	  ,[AIP_MET_USR_GRP].[INCLUDE_MEMBERS] AS [INCLUDE_MEMBERS]
	  ,[AIP_MET_USR_GRP].[MANAGER_LINK] AS [MANAGER_LINK]
	  ,[AIP_MET_USR_GRP].[MANAGER_VALUE] AS [MANAGER_VALUE]
	  ,[AIP_MET_USR_GRP].[NAME] AS [NAME]
	  ,[AIP_MET_USR_GRP].[PARENT] AS [PARENT]
	  ,[AIP_MET_USR_GRP].[SOURCE] AS [SOURCE]
	  ,[AIP_MET_USR_GRP].[SYS_CREATED_BY] AS [SYS_CREATED_BY]
	  ,[AIP_MET_USR_GRP].[SYS_CREATED_ON] AS [SYS_CREATED_ON]
	  ,[AIP_MET_USR_GRP].[SYS_ID] AS [SYS_ID]
	  ,[AIP_MET_USR_GRP].[SYS_MOD_COUNT] AS [SYS_MOD_COUNT]
	  ,[AIP_MET_USR_GRP].[SYS_UPDATED_BY] AS [SYS_UPDATED_BY]
	  ,[AIP_MET_USR_GRP].[SYS_UPDATED_ON] AS [SYS_UPDATED_ON]
	  ,[AIP_MET_USR_GRP].[TYPE] AS [TYPE]
	  ,[AIP_MET_USR_GRP].[U_ALIAS] AS [U_ALIAS]
	  ,[AIP_MET_USR_GRP].[U_CONTENT_APPROVER_LINK] AS [U_CONTENT_APPROVER_LINK]
	  ,[AIP_MET_USR_GRP].[U_CONTENT_APPROVER_VALUE] AS [U_CONTENT_APPROVER_VALUE]
	  ,[AIP_MET_USR_GRP].[U_DSS_GROUP] AS [U_DSS_GROUP]
	  ,[AIP_MET_USR_GRP].[U_GROUP_ID] AS [U_GROUP_ID]
	  ,[AIP_MET_USR_GRP].[U_GROUP_TYPE] AS [U_GROUP_TYPE]
	  ,[AIP_MET_USR_GRP].[U_REGION] AS [U_REGION]
	  ,[AIP_MET_USR_GRP].[U_RESPONSIBILITY] AS [U_RESPONSIBILITY]
	  ,[AIP_MET_USR_GRP].[U_SRMS_GROUPS] AS [U_SRMS_GROUPS]
	  ,[AIP_MET_USR_GRP].[U_SUB_SUPPLIER] AS [U_SUB_SUPPLIER]
	  ,[AIP_MET_USR_GRP].[U_SUPPLIER] AS [U_SUPPLIER]
	  ,[AIP_MET_USR_GRP].[U_SUPPORT_GROUP] AS [U_SUPPORT_GROUP]
	  ,[AIP_MET_USR_GRP].[U_WORK_NOTES] AS [U_WORK_NOTES]
	  ,[AIP_MET_USR_GRP].[SLT_GROUP] AS [SLT_GROUP]
	  ,[AIP_MET_USR_GRP].[PILLAR] AS [PILLAR]
	  ,[AIP_MET_USR_GRP].[SUB_TEAM] AS [SUB_TEAM]
	  ,[AIP_MET_USR_GRP].[SILO] AS [SILO]
	  ,[AIP_MET_USR_GRP].[SCOPE] AS [SCOPE]
FROM [dbo].[UVW_SC_REQUEST_TASK_SLA] AS [SC_REQ_T_SLA]
FULL OUTER JOIN [UVW_AIP_METRICS_USER_GROUP] AS [AIP_MET_USR_GRP] ON [SC_REQ_T_SLA].[Task User Group Name] = [AIP_MET_USR_GRP].[NAME] 
WHERE [SC_REQ_T_SLA].[Task Opened At]  >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) OR [SC_REQ_T_SLA].[Task Closed At] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0)
OR [SC_REQ_T_SLA].[Request Closed At]  >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) OR [SC_REQ_T_SLA].[Request Closed At] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0)


GO
/****** Object:  View [dbo].[UVW_INCIDENT_METRICS_PROBLEM_TASKS]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  VIEW [dbo].[UVW_INCIDENT_METRICS_PROBLEM_TASKS]
AS
SELECT  
---INCIDENT
I.[INC_ACTIVE]
      ,I.[INC_ACTIVITY_DUE]
      ,I.[INC_APPROVAL]
      ,I.[INC_APPROVAL_HISTORY]
      ,I.[INC_APPROVAL_SET]
      ,SUASSN.SU_NAME as [INC_ASSIGNED_TO]
      ,I.[INC_BUSINESS_DURATION]
      ,I.[INC_BUSINESS_STC]
      ,I.[INC_CALENDAR_DURATION]
      ,I.[INC_CALENDAR_STC]
      ,I.[INC_CATEGORY]
      ,I.[INC_CAUSED_BY]
      ,I.[INC_CHILD_INCIDENTS]
      ,I.[INC_CLOSE_CODE]
      ,I.[INC_CLOSE_NOTES]
      ,I.[INC_CLOSED_AT]    
      ,SUCLOS.SU_NAME as [INC_CLOSED_BY]
      ,I.[INC_COMMENTS]
      ,I.[INC_COMMENTS_AND_WORK_NOTES]  
      ,I.[INC_CONTACT_TYPE]
      ,I.[INC_DESCRIPTION]
      ,I.[INC_DUE_DATE]
      ,I.[INC_ESCALATION]
      ,I.[INC_EXPECTED_START]
      ,I.[INC_FOLLOW_UP]
      ,I.[INC_GROUP_LIST]
      ,I.[INC_IMPACT]
      ,CASE 
		WHEN I.[INC_INCIDENT_STATE] = 6  THEN 'Resolved'
		WHEN I.[INC_INCIDENT_STATE] = 7  THEN 'Closed'
		WHEN I.[INC_INCIDENT_STATE] = 8  THEN 'In Queue'
		WHEN I.[INC_INCIDENT_STATE] = 9  THEN 'Assigned'
		WHEN I.[INC_INCIDENT_STATE] = 10 THEN 'Work In Progress'
		WHEN I.[INC_INCIDENT_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL(I.[INC_INCIDENT_STATE],''))
		END 
		as [INC_INCIDENT_STATE]
      ,I.[INC_KNOWLEDGE]
      ,I.[INC_MADE_SLA]
      ,I.[INC_NOTIFY]
      ,I.[INC_NUMBER]
      ,I.[INC_OPENED_AT]
	  ,SUOPEN.SU_NAME as [INC_OPENED_BY]
      ,I.[INC_ORDER]
      ,I.[INC_PARENT]
	  ,PARI.INC_NUMBER as [INC_PARENT_INCIDENT_NUMBER]
      ,I.[INC_PRIORITY]
      ,I.[INC_PROBLEM_ID]
      ,I.[INC_REASSIGNMENT_COUNT]
      ,I.[INC_REOPEN_COUNT]
      ,I.[INC_RESOLVED_AT]
      ,SURESO.SU_NAME as [INC_RESOLVED_BY]
      ,I.[INC_SEVERITY]
      ,I.[INC_SHORT_DESCRIPTION]
      ,I.[INC_SKILLS]
      ,I.[INC_SLA_DUE]
      ,CASE 
		WHEN I.[INC_STATE] = 6  THEN 'Resolved'
		WHEN I.[INC_STATE] = 7  THEN 'Closed'
		WHEN I.[INC_STATE] = 8  THEN 'In Queue'
		WHEN I.[INC_STATE] = 9  THEN 'Assigned'
		WHEN I.[INC_STATE] = 10 THEN 'Work In Progress'
		WHEN I.[INC_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL(I.[INC_STATE],''))
		END 
		as [INC_STATE]
      ,I.[INC_SUBCATEGORY]
      ,I.[INC_SYS_CLASS_NAME]
      ,I.[INC_SYS_CREATED_BY]
      ,I.[INC_SYS_CREATED_ON]
      ,I.[INC_SYS_MOD_COUNT]
      ,I.[INC_SYS_UPDATED_BY]
      ,I.[INC_SYS_UPDATED_ON]
      ,I.[INC_TIME_WORKED]
      ,I.[INC_U_ACCENTURE_SLA]
      ,I.[INC_U_APPOINTMENT_COMPLETED1]
      ,I.[INC_U_APPOINTMENT_TIME]
      ,I.[INC_U_ASSIGNMENT_GROUP_TYPE]
      ,I.[INC_U_BEST_CONTACT_NUMBER]
      ,I.[INC_U_BRIDGE_LAUNCHED]
      ,I.[INC_U_BRIDGE_REQUESTED]
      ,I.[INC_U_CALL_IN_REASON]
      ,I.[INC_U_CALL_IN_REASON_COUNTER]
      ,I.[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D]
      ,I.[INC_U_CATEGORY_1]
      ,I.[INC_U_CATEGORY_2]
      ,I.[INC_U_CATEGORY_3]
      ,I.[INC_U_CHANGE_REQUEST]
      ,I.[INC_U_CI_CATEGORY]
      ,I.[INC_U_CI_CLASSIFICATION]
      ,I.[INC_U_CI_TYPE]
      ,I.[INC_U_CRITICAL_INCIDENT]
      ,I.[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS]
      ,I.[INC_U_DEFECT_ID_]
      ,I.[INC_U_DISPATCH_TYPE]
      ,I.[INC_U_DSS___]
      ,I.[INC_U_DSS___OF_VISITS]
      ,I.[INC_U_DSS_HANDLE_TIME]
      ,I.[INC_U_FCR]
      ,I.[INC_U_HUNGARY_QUESTION_1]
      ,I.[INC_U_HUNGARY_SURVEY_QUESTION2]
      ,I.[INC_U_INCIDENT_GP_TYPE]
      ,I.[INC_U_INCIDENT_NEW_PRIORITY]
      ,I.[INC_U_INCIDENT_OLD_PRIORITY]
      ,I.[INC_U_INFOSYS_KOURIER_SLA]
      ,I.[INC_U_INFOSYS_SLA]
      ,I.[INC_U_INFOSYS_UNISYS_SLA]
      ,I.[INC_U_ISSUE_TYPE]
      ,I.[INC_U_JUSTIFICATION]
      ,I.[INC_U_KELLOGGS_SLA]
      ,I.[INC_U_KNOWLEDGE_CANDIDATE]
      ,I.[INC_U_KNOWLEDGE_USED]
      ,I.[INC_U_L1_RESOLVABLE]
      ,I.[INC_U_L1_RESOLVABLE_DESCRIPTION]
      ,I.[INC_U_LANGUAGE]
      ,I.[INC_U_LOCATION]
      ,I.[INC_U_LOCATION_NEW]
      ,I.[INC_U_MAJOR_INCIDENT_MANAGER]
      ,I.[INC_U_MINDTREE_SLA]
      ,I.[INC_U_MISSING_CI]
      ,I.[INC_U_MISSING_CI_NAME]
      ,I.[INC_U_MONITORING_LOCATION]
      ,I.[INC_U_MTR_DURATION]
      ,I.[INC_U_OLD_PRIORITY]
      ,I.[INC_U_OLD_SUPPLIER]
      ,I.[INC_U_OPENED_BY_COMPANY_SUPPLIER]
      ,I.[INC_U_PENDING_DUR]
      ,I.[INC_U_PENDING_DURATION]
      ,I.[INC_U_PENDING_END_TIME]
      ,I.[INC_U_PENDING_REASON]
      ,I.[INC_U_PENDING_START_TIME]
      ,I.[INC_U_PR_METRIC]
      ,I.[INC_U_PRB_CANDIDATE_USER]
      ,I.[INC_U_PRIORITY_FLAG]
      ,I.[INC_U_PROBLEM_CANDIDATE]
      ,I.[INC_U_PROBLEM_CREATED]
      ,I.[INC_U_REASSIGNMENT]
      ,I.[INC_U_REGION]
      ,I.[INC_U_REOPENED_DATE]
      ,SUREPO.SU_NAME as [INC_U_REPORTED_BY]
      ,I.[INC_U_RESPONSE_SLA]
      ,I.[INC_U_SCIENCELOGIC_REGION]
      ,I.[INC_U_SD_GROUP]
      ,I.[INC_U_SD_RESOLVABLE]
      ,I.[INC_U_SD_START_TIME]
      ,I.[INC_U_SELECT_CATEGORY]
      ,I.[INC_U_SILO_EID]
      ,I.[INC_U_SITE_CONTACT]
      ,I.[INC_U_SLA_EXCEPTION]
      ,I.[INC_U_SLA_SUPPLIER]
      ,I.[INC_U_SLA_VALIDATION]
      ,I.[INC_U_SRMS_DISPATCH]
      ,I.[INC_U_SRMS_LOCATION]
      ,I.[INC_U_SRMS_RESOLVED]
      ,I.[INC_U_SRMS_STATUS]
      ,I.[INC_U_SRMS_TICKET_NUMBER]
      ,I.[INC_U_SRMS_UPDATE]
      ,I.[INC_U_STYLE_OVERRIDE]
      ,I.[INC_U_SUB_SUPPLIER]
      ,I.[INC_U_SUPPLIER]
      ,I.[INC_U_SURVEY_COMMENTS]
      ,I.[INC_U_SURVEY_QUESTION1]
      ,I.[INC_U_SURVEY_QUESTION2]
      ,I.[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE]
      ,I.[INC_U_UNISYS_SLA]
      ,I.[INC_U_UNISYS_SRMS_PRODUCT_STYLE]
      ,I.[INC_U_VENDOR_NAME]
      ,I.[INC_U_VENDOR_TICKET_NUMBER]
      ,I.[INC_U_VIP_RESPONSE_TIME]
      ,I.[INC_U_WORKAROUND]
      ,I.[INC_UPON_APPROVAL]
      ,I.[INC_UPON_REJECT]
      ,I.[INC_URGENCY]
      ,I.[INC_USER_INPUT]
      ,I.[INC_WATCH_LIST]
      ,I.[INC_WORK_END]
      ,I.[INC_WORK_NOTES]
      ,I.[INC_WORK_NOTES_LIST]
      ,I.[INC_WORK_START]
      ,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
      ,I.[SYS_USER_U_REGION] as [INC_SYS_USER_U_REGION]
       ,UPPER(SUG.[SUG_NAME]) as [INC_SYS_USER_GROUP_NAME]  --// Changed to address  null issue//
      ,I.[SYS_USER_GROUP_TEAM] as [INC_SYS_USER_GROUP_TEAM]
      ,SUG.[SUG_U_SUB_SUPPLIER] as [INC_SYS_USER_GROUP_U_SUB_SUPPLIER]
	  	  ,SUG.[SUG_ACTIVE]  as [INC_SYS_USER_GROUP_ACTIVE]
      ,SUG.[SUG_COST_CENTER]   as [INC_SYS_USER_GROUP_COST_CENTER]
	   ,SUG.[SUG_U_SUPPLIER]  as [INC_SYS_USER_GROUP_SUPPLIER]
     
      ,SUG.[SUG_U_REGION] as   [INC_SYS_USER_GROUP_REGION]
   
   --Metric Instance
	 ,  [MI_BUSINESS_DURATION]
      ,[MI_CALCULATION_COMPLETE]
 
      ,[MI_DURATION]
      ,[MI_END]
      ,[MI_FIELD]
      ,[MI_FIELD_VALUE]
 
      ,[MI_START]
      ,[MI_SYS_CREATED_BY]
      ,[MI_SYS_CREATED_ON]
      ,[MI_SYS_MOD_COUNT]
      ,[MI_SYS_UPDATED_BY]
      ,[MI_SYS_UPDATED_ON]
      ,[MI_TABLE]
      ,[MI_U_HIDDEN_START_TIME]
      ,[MI_VALUE]

	  --METRIC DEFINITION
	  ,[MD_ACTIVE]
      ,[MD_DESCRIPTION]
      ,[MD_FIELD]
      ,[MD_NAME]
      ,[MD_NUMBER]
      ,[MD_SYS_CREATED_BY]
      ,[MD_SYS_CREATED_ON]
      ,[MD_SYS_UPDATED_BY]
      ,[MD_SYS_UPDATED_ON]
      ,[MD_TABLE]
      ,[MD_TIMELINE]
      ,[MD_TYPE]
	  --Incident CMDB CI
	  ,INCCI.ASSET_TAG as INC_CMDB_ASSET_TAG
,INCCI.ASSIGNED as INC_CMDB_ASSIGNED
,INCCI.ASSIGNED_TO_VALUE as INC_CMDB_ASSIGNED_TO_VALUE
,INCCI.ATTRIBUTES as INC_CMDB_ATTRIBUTES
,INCCI.CATEGORY as INC_CMDB_CATEGORY
,INCCI.CHANGE_CONTROL as INC_CMDB_CHANGE_CONTROL
,INCCI.COMMENTS as INC_CMDB_COMMENTS
,INCCI.COMPANY as INC_CMDB_COMPANY
,INCCI.COST as INC_CMDB_COST
,INCCI.COST_CC as INC_CMDB_COST_CC
,INCCI.COST_CENTER as INC_CMDB_COST_CENTER
,INCCI.DELIVERY_DATE as INC_CMDB_DELIVERY_DATE
,INCCI.DEPARTMENT as INC_CMDB_DEPARTMENT
,INCCI.DISCOVERY_SOURCE as INC_CMDB_DISCOVERY_SOURCE
,INCCI.DNS_DOMAIN as INC_CMDB_DNS_DOMAIN
,INCCI.DUE as INC_CMDB_DUE
,INCCI.DUE_IN as INC_CMDB_DUE_IN
,INCCI.FAULT_COUNT as INC_CMDB_FAULT_COUNT
,INCCI.FIRST_DISCOVERED as INC_CMDB_FIRST_DISCOVERED
,INCCI.FQDN as INC_CMDB_FQDN
,INCCI.GL_ACCOUNT as INC_CMDB_GL_ACCOUNT
,INCCI.INSTALL_DATE as INC_CMDB_INSTALL_DATE
,INCCI.INSTALL_STATUS as INC_CMDB_INSTALL_STATUS
,INCCI.INVOICE_NUMBER as INC_CMDB_INVOICE_NUMBER
,INCCI.JUSTIFICATION as INC_CMDB_JUSTIFICATION
,INCCI.LAST_DISCOVERED as INC_CMDB_LAST_DISCOVERED
,INCCI.LOCATION as INC_CMDB_LOCATION
,INCCI.MAINTENANCE_SCHEDULE as INC_CMDB_MAINTENANCE_SCHEDULE
,INCCI.MANAGED_BY as INC_CMDB_MANAGED_BY
,INCCI.MODEL_NUMBER as INC_CMDB_MODEL_NUMBER
,INCCI.NAME as INC_CMDB_NAME
,INCCI.OPERATIONAL_STATUS as INC_CMDB_OPERATIONAL_STATUS
,INCCI.ORDER_DATE as INC_CMDB_ORDER_DATE
,INCCI.OWNED_BY as INC_CMDB_OWNED_BY
,INCCI.PO_NUMBER as INC_CMDB_PO_NUMBER
,INCCI.PURCHASE_DATE as INC_CMDB_PURCHASE_DATE
,INCCI.SCHEDULE as INC_CMDB_SCHEDULE
,INCCI.SERIAL_NUMBER as INC_CMDB_SERIAL_NUMBER
,INCCI.SHORT_DESCRIPTION as INC_CMDB_SHORT_DESCRIPTION
,INCCI.START_DATE as INC_CMDB_START_DATE
,INCCI.SUBCATEGORY as INC_CMDB_SUBCATEGORY
,INCCI.SUPPORT_GROUP as INC_CMDB_SUPPORT_GROUP
,INCCI.SUPPORTED_BY as INC_CMDB_SUPPORTED_BY
,INCCI.SYS_CLASS_NAME as INC_CMDB_SYS_CLASS_NAME
,INCCI.SYS_CREATED_BY as INC_CMDB_SYS_CREATED_BY
,INCCI.SYS_CREATED_ON as INC_CMDB_SYS_CREATED_ON
,INCCI.SYS_UPDATED_BY as INC_CMDB_SYS_UPDATED_BY
,INCCI.SYS_UPDATED_ON as INC_CMDB_SYS_UPDATED_ON
,INCCI.U_AD_LOCATION as INC_CMDB_U_AD_LOCATION
,INCCI.U_APPROVED_RFC as INC_CMDB_U_APPROVED_RFC
,INCCI.U_CI_ALIAS as INC_CMDB_U_CI_ALIAS
,INCCI.U_CI_CATEGORY as INC_CMDB_U_CI_CATEGORY
,INCCI.U_DATACENTER as INC_CMDB_U_DATACENTER
,INCCI.U_DR_COVERAGE as INC_CMDB_U_DR_COVERAGE
,INCCI.U_DR_TIER_LEVEL as INC_CMDB_U_DR_TIER_LEVEL
,INCCI.U_ENVIRONMENT as INC_CMDB_U_ENVIRONMENT
,INCCI.U_IP_NETMASK as INC_CMDB_U_IP_NETMASK
,INCCI.U_REGION as INC_CMDB_U_REGION
,INCCI.U_REPORTING_CATEGORIES as INC_CMDB_U_REPORTING_CATEGORIES
,INCCI.U_SCIENCELOGIC_REGION as INC_CMDB_U_SCIENCELOGIC_REGION
,INCCI.U_SUB_TYPE as INC_CMDB_U_SUB_TYPE
,INCCI.U_TYPE as INC_CMDB_U_TYPE
,INCCI.VENDOR as INC_CMDB_VENDOR
,INCCI.WARRANTY_EXPIRATION as INC_CMDB_WARRANTY_EXPIRATION
,INCCI.UNVERIFIED as INC_CMDB_UNVERIFIED

--Problem Task and Problem and CMDB
,[PT_ACTIVE]
      ,[PT_ACTIVITY_DUE]
      ,[PT_APPROVAL]
      ,[PT_APPROVAL_HISTORY]
      ,[PT_APPROVAL_SET]
      ,PTSUASSN.SU_NAME as [PT_ASSIGNED_TO]
      ,PTSUG.SUG_NAME as [PT_ASSIGNMENT_GROUP]
      ,[PT_BUSINESS_DURATION]
      ,[PT_CALENDAR_DURATION]
      ,[PT_CLOSE_NOTES]
      ,[PT_CLOSED_AT]
      ,PTSUCLOS.SU_NAME as [PT_CLOSED_BY]
      ,[PT_COMMENTS]
      ,[PT_COMMENTS_AND_WORK_NOTES]
      ,[PT_COMPANY]
      ,[PT_CONTACT_TYPE]
      ,[PT_DESCRIPTION]
      ,[PT_DUE_DATE]
      ,[PT_ESCALATION]
      ,[PT_EXPECTED_START]
      ,[PT_FOLLOW_UP]
      ,[PT_GROUP_LIST]
      ,[PT_IMPACT]
      ,[PT_KNOWLEDGE]
      ,[PT_LOCATION]
      ,[PT_MADE_SLA]
      ,[PT_NUMBER]
      ,[PT_OPENED_AT]
      
      , PTSUOPEN.SU_NAME as [PT_OPENED_BY]
      ,[PT_ORDER]
      ,[PT_PARENT]
      ,[PT_PRIORITY]
      ,[PT_REASSIGNMENT_COUNT]
      ,[PT_SHORT_DESCRIPTION]
      ,[PT_SKILLS]
      ,[PT_SLA_DUE]
      ,CASE 
		WHEN [PT_STATE] = 0  THEN ''
		WHEN [PT_STATE] = 1  THEN 'Open'
		WHEN [PT_STATE] = 2  THEN 'Work in Progress'
		WHEN [PT_STATE] = 3  THEN 'Closed Complete'
		WHEN [PT_STATE] = 4  THEN 'Closed Incomplete'
		WHEN [PT_STATE] = -5  THEN 'Pending'
		WHEN [PT_STATE] = 6  THEN 'Pending Action'
		WHEN [PT_STATE] = 10  THEN 'RCA Under Review'
		WHEN [PT_STATE] = 11  THEN 'Assigned'
		WHEN [PT_STATE] = 12  THEN 'RCA Submitted'
		WHEN [PT_STATE] = 14  THEN 'Pending Approval'
		ELSE
		CONVERT(VARCHAR,ISNULL([PT_STATE],''))
		END as [PT_STATE]
      ,[PT_SYS_CLASS_NAME]
      ,[PT_SYS_CREATED_BY]
      ,[PT_SYS_CREATED_ON]
      ,[PT_SYS_ID]
      ,[PT_SYS_UPDATED_BY]
      ,[PT_SYS_UPDATED_ON]
      ,[PT_TIME_WORKED]
      ,[PT_U_A_QUESTION_1]
      ,[PT_U_ACTION_LIST]
      ,[PT_U_ANSWER]
      ,[PT_U_ASSIGNMENT_GROUP_TYPE]
      ,[PT_U_CHANGE_NUMBER]
      ,[PT_U_CHANGE_REQUEST_RELATED]
      ,[PT_U_CONFIGURATION_ITEMS_IMPACTED]
      ,[PT_U_CORRECTIVE_ACTIONS]
      ,[PT_U_DUE_BY]
      ,[PT_U_DURATION]
      ,[PT_U_INCIDENT_END_DATE]
      ,[PT_U_INCIDENT_GP_TYPE]
      ,[PT_U_INCIDENT_RESOLUTION]
      ,[PT_U_INCIDENT_START_DATE]
      ,[PT_U_KNOWN_ERROR]
      ,[PT_U_NETWORK_OUTAGE]
      ,[PT_U_PRIORITY]
      ,[PT_U_PROBLEM_DESCRIPTION]
      ,[PT_U_PROBLEM_LOCATION]
      ,[PT_U_PROBLEM_RECORD_NUMBER]
      ,[PT_U_PROBLEMS_BUSINESS_IMPACT]
      ,[PT_U_QUESTION_2]
      ,[PT_U_QUESTION_3]
      ,[PT_U_QUESTION_4]
      ,[PT_U_QUESTION_5]
      ,[PT_U_QUESTION_6]
      ,[PT_U_RCA_APPROVED_BY]
      ,[PT_U_RCA_COMPLETED_DATE]
      ,[PT_U_RCA_REQUESTED_BY]
      ,[PT_U_RELATED_INCIDENT_NO]
      ,[PT_U_REQ]
      ,[PT_U_ROOT_CAUSE_CODE]
      ,[PT_U_ROOT_CAUSE_DETAILS]
      ,[PT_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,[PT_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,[PT_U_ROOT_CAUSE_SUPPORTER]
      ,[PT_U_STATUS_REASON]
      ,[PT_U_SUPPLIER]
      ,[PT_U_TARGET_DATE]
      ,[PT_U_TASK_PRIORITY]
      ,[PT_U_WHEN_FIRST]
      ,[PT_U_WHEN_LAST]
      ,[PT_U_WORKAROUND]
      ,[PT_UPON_APPROVAL]
      ,[PT_UPON_REJECT]
      ,[PT_URGENCY]
      ,[PT_USER_INPUT]
      ,[PT_WATCH_LIST]
      ,[PT_WORK_END]
      ,[PT_WORK_NOTES]
      ,[PT_WORK_NOTES_LIST]
      ,[PT_WORK_START]
	  ,PRBTSKCI.ASSET_TAG as PT_CMDB_ASSET_TAG
,PRBTSKCI.ASSIGNED as PT_CMDB_ASSIGNED
,PRBTSKCI.ASSIGNED_TO_VALUE as PT_CMDB_ASSIGNED_TO_VALUE
,PRBTSKCI.ATTRIBUTES as PT_CMDB_ATTRIBUTES
,PRBTSKCI.CATEGORY as PT_CMDB_CATEGORY
,PRBTSKCI.CHANGE_CONTROL as PT_CMDB_CHANGE_CONTROL
,PRBTSKCI.COMMENTS as PT_CMDB_COMMENTS
,PRBTSKCI.COMPANY as PT_CMDB_COMPANY
,PRBTSKCI.COST as PT_CMDB_COST
,PRBTSKCI.COST_CC as PT_CMDB_COST_CC
,PRBTSKCI.COST_CENTER as PT_CMDB_COST_CENTER
,PRBTSKCI.DELIVERY_DATE as PT_CMDB_DELIVERY_DATE
,PRBTSKCI.DEPARTMENT as PT_CMDB_DEPARTMENT
,PRBTSKCI.DISCOVERY_SOURCE as PT_CMDB_DISCOVERY_SOURCE
,PRBTSKCI.DNS_DOMAIN as PT_CMDB_DNS_DOMAIN
,PRBTSKCI.DUE as PT_CMDB_DUE
,PRBTSKCI.DUE_IN as PT_CMDB_DUE_IN
,PRBTSKCI.FAULT_COUNT as PT_CMDB_FAULT_COUNT
,PRBTSKCI.FIRST_DISCOVERED as PT_CMDB_FIRST_DISCOVERED
,PRBTSKCI.FQDN as PT_CMDB_FQDN
,PRBTSKCI.GL_ACCOUNT as PT_CMDB_GL_ACCOUNT
,PRBTSKCI.INSTALL_DATE as PT_CMDB_INSTALL_DATE
,PRBTSKCI.INSTALL_STATUS as PT_CMDB_INSTALL_STATUS
,PRBTSKCI.INVOICE_NUMBER as PT_CMDB_INVOICE_NUMBER
,PRBTSKCI.JUSTIFICATION as PT_CMDB_JUSTIFICATION
,PRBTSKCI.LAST_DISCOVERED as PT_CMDB_LAST_DISCOVERED
,PRBTSKCI.LOCATION as PT_CMDB_LOCATION
,PRBTSKCI.MAINTENANCE_SCHEDULE as PT_CMDB_MAINTENANCE_SCHEDULE
,PRBTSKCI.MANAGED_BY as PT_CMDB_MANAGED_BY
,PRBTSKCI.MODEL_NUMBER as PT_CMDB_MODEL_NUMBER
,PRBTSKCI.NAME as PT_CMDB_NAME
,PRBTSKCI.OPERATIONAL_STATUS as PT_CMDB_OPERATIONAL_STATUS
,PRBTSKCI.ORDER_DATE as PT_CMDB_ORDER_DATE
,PRBTSKCI.OWNED_BY as PT_CMDB_OWNED_BY
,PRBTSKCI.PO_NUMBER as PT_CMDB_PO_NUMBER
,PRBTSKCI.PURCHASE_DATE as PT_CMDB_PURCHASE_DATE
,PRBTSKCI.SCHEDULE as PT_CMDB_SCHEDULE
,PRBTSKCI.SERIAL_NUMBER as PT_CMDB_SERIAL_NUMBER
,PRBTSKCI.SHORT_DESCRIPTION as PT_CMDB_SHORT_DESCRIPTION
,PRBTSKCI.START_DATE as PT_CMDB_START_DATE
,PRBTSKCI.SUBCATEGORY as PT_CMDB_SUBCATEGORY
,PRBTSKCI.SUPPORT_GROUP as PT_CMDB_SUPPORT_GROUP
,PRBTSKCI.SUPPORTED_BY as PT_CMDB_SUPPORTED_BY
,PRBTSKCI.SYS_CLASS_NAME as PT_CMDB_SYS_CLASS_NAME
,PRBTSKCI.SYS_CREATED_BY as PT_CMDB_SYS_CREATED_BY
,PRBTSKCI.SYS_CREATED_ON as PT_CMDB_SYS_CREATED_ON
,PRBTSKCI.SYS_UPDATED_BY as PT_CMDB_SYS_UPDATED_BY
,PRBTSKCI.SYS_UPDATED_ON as PT_CMDB_SYS_UPDATED_ON
,PRBTSKCI.U_AD_LOCATION as PT_CMDB_U_AD_LOCATION
,PRBTSKCI.U_APPROVED_RFC as PT_CMDB_U_APPROVED_RFC
,PRBTSKCI.U_CI_ALIAS as PT_CMDB_U_CI_ALIAS
,PRBTSKCI.U_CI_CATEGORY as PT_CMDB_U_CI_CATEGORY
,PRBTSKCI.U_DATACENTER as PT_CMDB_U_DATACENTER
,PRBTSKCI.U_DR_COVERAGE as PT_CMDB_U_DR_COVERAGE
,PRBTSKCI.U_DR_TIER_LEVEL as PT_CMDB_U_DR_TIER_LEVEL
,PRBTSKCI.U_ENVIRONMENT as PT_CMDB_U_ENVIRONMENT
,PRBTSKCI.U_IP_NETMASK as PT_CMDB_U_IP_NETMASK
,PRBTSKCI.U_REGION as PT_CMDB_U_REGION
,PRBTSKCI.U_REPORTING_CATEGORIES as PT_CMDB_U_REPORTING_CATEGORIES
,PRBTSKCI.U_SCIENCELOGIC_REGION as PT_CMDB_U_SCIENCELOGIC_REGION
,PRBTSKCI.U_SUB_TYPE as PT_CMDB_U_SUB_TYPE
,PRBTSKCI.U_TYPE as PT_CMDB_U_TYPE
,PRBTSKCI.VENDOR as PT_CMDB_VENDOR
,PRBTSKCI.WARRANTY_EXPIRATION as PT_CMDB_WARRANTY_EXPIRATION

,P.P_SYS_ID
,[P_ACTIVE]
      ,[P_ACTIVITY_DUE]
      ,[P_APPROVAL]
      ,[P_APPROVAL_HISTORY]
      ,[P_APPROVAL_SET]
      , PSUASSN.SU_NAME as [P_ASSIGNED_TO]
      ,PSUG.SUG_NAME as [P_ASSIGNMENT_GROUP]
      ,[P_BUSINESS_DURATION]
      ,[P_CALENDAR_DURATION]
      ,[P_CLOSE_NOTES]
      ,[P_CLOSED_AT]
      ,PSUCLOS.SU_NAME  as [P_CLOSED_BY_VALUE]
      
      ,[P_COMMENTS]
      ,[P_COMMENTS_AND_WORK_NOTES]
      ,[P_COMPANY]
      ,[P_CONTACT_TYPE]
      ,[P_DESCRIPTION]
      ,[P_DUE_DATE]
      ,[P_ESCALATION]
      ,[P_EXPECTED_START]
      ,[P_FOLLOW_UP]
      ,[P_GROUP_LIST]
      ,[P_IMPACT]
      ,[P_KNOWLEDGE]
      ,[P_KNOWN_ERROR]
      ,[P_LOCATION_VALUE]
      ,[P_MADE_SLA]
      ,[P_NUMBER]
      ,[P_OPENED_AT]
      ,PSUOPEN.SU_NAME as [P_OPENED_BY_VALUE]
      ,[P_ORDER]
      ,[P_PRIORITY]
      ,CASE 
		WHEN [P_PROBLEM_STATE] = 0 THEN ''
		WHEN [P_PROBLEM_STATE] = 1  THEN 'New'
		WHEN [P_PROBLEM_STATE] = 2  THEN 'In Queue'
		WHEN [P_PROBLEM_STATE] = 3  THEN 'Assigned'
		WHEN [P_PROBLEM_STATE] = 5  THEN 'Known Error'
		WHEN [P_PROBLEM_STATE] = 4  THEN 'Work in Progress'
		WHEN [P_PROBLEM_STATE] = 6  THEN 'Pending'
		WHEN [P_PROBLEM_STATE] = 7  THEN 'Resolved/Closed'
		ELSE
		CONVERT(VARCHAR,ISNULL([P_PROBLEM_STATE],''))
		END
		as [P_PROBLEM_STATE]
      ,[P_REASSIGNMENT_COUNT]
      ,[P_RELATED_INCIDENTS]
      ,[P_RFC]
      ,[P_SHORT_DESCRIPTION]
      ,[P_SKILLS]
      ,[P_SLA_DUE]
      ,
		CASE 
		WHEN [P_STATE] = 0 THEN ''
		WHEN [P_STATE] = 1  THEN 'New'
		WHEN [P_STATE] = 2  THEN 'In Queue'
		WHEN [P_STATE] = 3  THEN 'Assigned'
		WHEN [P_STATE] = 5  THEN 'Known Error'
		WHEN [P_STATE] = 4  THEN 'Work in Progress'
		WHEN [P_STATE] = 6  THEN 'Pending'
		WHEN [P_STATE] = 7  THEN 'Resolved/Closed'
		ELSE
		CONVERT(VARCHAR,ISNULL([P_STATE],''))
		END
		as [P_STATE]
      ,[P_SYS_CREATED_BY]
      ,[P_SYS_CREATED_ON]
      ,[P_SYS_UPDATED_BY]
      ,[P_SYS_UPDATED_ON]
      ,[P_TIME_WORKED]
      ,[P_U_ASSIGNMENT_GROUP_TYPE]
      ,[P_U_CATEGORY]
      ,[P_U_CI_CATEGORY]
      ,[P_U_CI_CLASSIFICATION]
      ,[P_U_CI_TYPE]
      ,[P_U_FAILING_COMPONENT___DEVISE__]
      ,[P_U_INCIDENT_GP_TYPE]
      ,[P_U_KB_ARTICLE_FOR_KNOWN_ERROR]
      ,[P_U_LESSONS_LEARNED]
      ,[P_U_MISSING_CI]
      ,[P_U_MISSING_CI_REQUIRED]
      ,[P_U_PROBLEM_OCCURRED_DATE]
      ,[P_U_PROBLEMS_BUSINESS_IMPACT]
      ,[P_U_RCA_PARTICIPANTS]
      ,[P_U_RCA_REQUESTED_BY]
      ,[P_U_RCA_REVIEW_MEETING_DATE]
      ,[P_U_REGION]
      ,[P_U_RESOLUTION_CODE]
      ,[P_U_ROOT_CAUSE]
      ,[P_U_ROOT_CAUSE_ANALYSIS]
      ,[P_U_ROOT_CAUSE_DETAILS]
      ,[P_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,[P_U_ROOT_CAUSE_JUSTIFICATION]
      ,[P_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,[P_U_SOURCE]
      ,[P_U_STATUS_REASON]
      ,[P_U_SUBCATEGORY]
      ,[P_U_SUPPLIER]
      ,[P_U_VENDOR]
      ,[P_U_VENDOR_TICKET_NO_]
      ,[P_UPON_APPROVAL]
      ,[P_UPON_REJECT]
      ,[P_URGENCY]
      ,[P_USER_INPUT]
      ,[P_WATCH_LIST]
      ,[P_WORK_AROUND]
      ,[P_WORK_END]
      ,[P_WORK_NOTES]
      ,[P_WORK_NOTES_LIST]
      ,[P_WORK_START]
	 	  ,PRBCI.ASSET_TAG as P_CMDB_ASSET_TAG
,PRBCI.ASSIGNED as P_CMDB_ASSIGNED
,PRBCI.ASSIGNED_TO_VALUE as P_CMDB_ASSIGNED_TO_VALUE
,PRBCI.ATTRIBUTES as P_CMDB_ATTRIBUTES
,PRBCI.CATEGORY as P_CMDB_CATEGORY
,PRBCI.CHANGE_CONTROL as P_CMDB_CHANGE_CONTROL
,PRBCI.COMMENTS as P_CMDB_COMMENTS
,PRBCI.COMPANY as P_CMDB_COMPANY
,PRBCI.COST as P_CMDB_COST
,PRBCI.COST_CC as P_CMDB_COST_CC
,PRBCI.COST_CENTER as P_CMDB_COST_CENTER
,PRBCI.DELIVERY_DATE as P_CMDB_DELIVERY_DATE
,PRBCI.DEPARTMENT as P_CMDB_DEPARTMENT
,PRBCI.DISCOVERY_SOURCE as P_CMDB_DISCOVERY_SOURCE
,PRBCI.DNS_DOMAIN as P_CMDB_DNS_DOMAIN
,PRBCI.DUE as P_CMDB_DUE
,PRBCI.DUE_IN as P_CMDB_DUE_IN
,PRBCI.FAULT_COUNT as P_CMDB_FAULT_COUNT
,PRBCI.FIRST_DISCOVERED as P_CMDB_FIRST_DISCOVERED
,PRBCI.FQDN as P_CMDB_FQDN
,PRBCI.GL_ACCOUNT as P_CMDB_GL_ACCOUNT
,PRBCI.INSTALL_DATE as P_CMDB_INSTALL_DATE
,PRBCI.INSTALL_STATUS as P_CMDB_INSTALL_STATUS
,PRBCI.INVOICE_NUMBER as P_CMDB_INVOICE_NUMBER
,PRBCI.JUSTIFICATION as P_CMDB_JUSTIFICATION
,PRBCI.LAST_DISCOVERED as P_CMDB_LAST_DISCOVERED
,PRBCI.LOCATION as P_CMDB_LOCATION
,PRBCI.MAINTENANCE_SCHEDULE as P_CMDB_MAINTENANCE_SCHEDULE
,PRBCI.MANAGED_BY as P_CMDB_MANAGED_BY
,PRBCI.MODEL_NUMBER as P_CMDB_MODEL_NUMBER
,PRBCI.NAME as P_CMDB_NAME
,PRBCI.OPERATIONAL_STATUS as P_CMDB_OPERATIONAL_STATUS
,PRBCI.ORDER_DATE as P_CMDB_ORDER_DATE
,PRBCI.OWNED_BY as P_CMDB_OWNED_BY
,PRBCI.PO_NUMBER as P_CMDB_PO_NUMBER
,PRBCI.PURCHASE_DATE as P_CMDB_PURCHASE_DATE
,PRBCI.SCHEDULE as P_CMDB_SCHEDULE
,PRBCI.SERIAL_NUMBER as P_CMDB_SERIAL_NUMBER
,PRBCI.SHORT_DESCRIPTION as P_CMDB_SHORT_DESCRIPTION
,PRBCI.START_DATE as P_CMDB_START_DATE
,PRBCI.SUBCATEGORY as P_CMDB_SUBCATEGORY
,PRBCI.SUPPORT_GROUP as P_CMDB_SUPPORT_GROUP
,PRBCI.SUPPORTED_BY as P_CMDB_SUPPORTED_BY
,PRBCI.SYS_CLASS_NAME as P_CMDB_SYS_CLASS_NAME
,PRBCI.SYS_CREATED_BY as P_CMDB_SYS_CREATED_BY
,PRBCI.SYS_CREATED_ON as P_CMDB_SYS_CREATED_ON
,PRBCI.SYS_UPDATED_BY as P_CMDB_SYS_UPDATED_BY
,PRBCI.SYS_UPDATED_ON as P_CMDB_SYS_UPDATED_ON
,PRBCI.U_AD_LOCATION as P_CMDB_U_AD_LOCATION
,PRBCI.U_APPROVED_RFC as P_CMDB_U_APPROVED_RFC
,PRBCI.U_CI_ALIAS as P_CMDB_U_CI_ALIAS
,PRBCI.U_CI_CATEGORY as P_CMDB_U_CI_CATEGORY
,PRBCI.U_DATACENTER as P_CMDB_U_DATACENTER
,PRBCI.U_DR_COVERAGE as P_CMDB_U_DR_COVERAGE
,PRBCI.U_DR_TIER_LEVEL as P_CMDB_U_DR_TIER_LEVEL
,PRBCI.U_ENVIRONMENT as P_CMDB_U_ENVIRONMENT
,PRBCI.U_IP_NETMASK as P_CMDB_U_IP_NETMASK
,PRBCI.U_REGION as P_CMDB_U_REGION
,PRBCI.U_REPORTING_CATEGORIES as P_CMDB_U_REPORTING_CATEGORIES
,PRBCI.U_SCIENCELOGIC_REGION as P_CMDB_U_SCIENCELOGIC_REGION
,PRBCI.U_SUB_TYPE as P_CMDB_U_SUB_TYPE
,PRBCI.U_TYPE as P_CMDB_U_TYPE
,PRBCI.VENDOR as P_CMDB_VENDOR
,PRBCI.WARRANTY_EXPIRATION as P_CMDB_WARRANTY_EXPIRATION

FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_METRIC_INSTANCE] MI ON I.INC_SYS_ID=MI.[MI_ID_VALUE] AND [MI_TABLE]='incident'----// join changed to set incident count 
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_METRIC_DEFINITION] MD ON MI.[MI_DEFINITION_VALUE]=MD.[MD_SYS_ID]---- // join changed to set incident count 
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_CMDB_CI] INCCI ON I.INC_CMDB_CI_VALUE=INCCI.SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUASSN ON  SUASSN.[SU_SYS_ID]=I.[INC_ASSIGNED_TO_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUCLOS ON  SUCLOS.[SU_SYS_ID]=I.[INC_CLOSED_BY_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUOPEN ON  SUOPEN.[SU_SYS_ID]=I.INC_OPENED_BY_VALUE 
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SURESO ON SURESO.SU_SYS_ID=I.[INC_RESOLVED_BY_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUREPO ON SUREPO.SU_SYS_ID=I.[INC_U_REPORTED_BY_VALUE]
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_INCIDENT PARI ON PARI.INC_SYS_ID=I.INC_PARENT_INCIDENT_VALUE

  FULL JOIN [KG_VIEWS].[KG_SNOW].[UVW_PROBLEM] P on P.P_SYS_ID=I.INC_PROBLEM_ID  ---//join changed to set problem count to base table count //
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUOPEN ON  PSUOPEN.[SU_SYS_ID]=P.[P_OPENED_BY_VALUE]
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUASSN ON  PSUASSN.[SU_SYS_ID]=P.[P_ASSIGNED_TO_VALUE] 
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUCLOS ON  PSUCLOS.[SU_SYS_ID]=P.[P_CLOSED_BY_VALUE] 
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG PSUG ON PSUG.SUG_SYS_ID=P.P_ASSIGNMENT_GROUP_VALUE
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI PRBCI on P.[P_CMDB_CI_VALUE]=PRBCI.SYS_ID
   FULL JOIN  [KG_VIEWS].[KG_SNOW].[UVW_PROBLEM_TASK] PT ON PT.PT_PROBLEM_VALUE=P.P_SYS_ID -- --//join changed to set problem task count to base table count //
    LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUOPEN ON  PTSUOPEN.[SU_SYS_ID]=PT.[PT_OPENED_BY_VALUE]
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUASSN ON  PTSUASSN.[SU_SYS_ID]=PT.[PT_ASSIGNED_TO_VALUE] 
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUCLOS ON  PTSUCLOS.[SU_SYS_ID]=PT.[PT_CLOSED_BY_VALUE] 
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG PTSUG ON PTSUG.SUG_SYS_ID=PT.PT_ASSIGNMENT_GROUP_VALUE
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI PRBTSKCI on PT.[PT_CMDB_CI_VALUE]=PRBTSKCI.SYS_ID

GO
/****** Object:  View [dbo].[UVW_INCIDENT_METRICS_PROBLEM_TASKS_CUST_QUERY]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ===============================================================================================================================================
-- NAME        	:	UVW_INCIDENT_METRICS_PROBLEM_TASKS_CUST_QUERY
-- PURPOSE & 
-- Description  :  
                        
-- REVISIONS:

-- Ver          Date             Author                    Change Reason

-- 1.0         08-21-2017	   ATHEETH RAO	         		1. Initial Version.

-- 1.1		   01-05-2018      ANIL KONDLA					2. Changed filter condition to capture rolling 24 months of data from current month.

-- 1.2    	   04-13-2018	   ANIL KONDLA					3. Implemented the Calendar Duration logic to all the Duration Fields.(TASK0500474)

-- ===============================================================================================================================================

CREATE VIEW [dbo].[UVW_INCIDENT_METRICS_PROBLEM_TASKS_CUST_QUERY]
AS
SELECT  [INC_MET_P_T].[INC_ACTIVE] AS [INC_ACTIVE],
        [INC_MET_P_T].[INC_ASSIGNED_TO] AS [INC_ASSIGNED_TO],
        
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[INC_BUSINESS_DURATION]), 0),[INC_MET_P_T].[INC_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[INC_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[INC_BUSINESS_DURATION]) AS INT) AS
		[INC_BUSINESS_DURATION],
		
		CAST(DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[INC_CALENDAR_DURATION]), 0), [INC_MET_P_T].[INC_CALENDAR_DURATION]) as INT)*1440 + 
		CAST( DATEPART(hh, [INC_MET_P_T].[INC_CALENDAR_DURATION]) as INT) *60 +
		CAST( DATEPART(mi, [INC_MET_P_T].[INC_CALENDAR_DURATION]) as INT) AS
		[INC_CALENDAR_DURATION],	
		
        [INC_MET_P_T].[INC_CALENDAR_STC] AS [INC_CALENDAR_STC],
        [INC_MET_P_T].[INC_CATEGORY] AS [INC_CATEGORY],
        [INC_MET_P_T].[INC_CAUSED_BY] AS [INC_CAUSED_BY],
        [INC_MET_P_T].[INC_CHILD_INCIDENTS] AS [INC_CHILD_INCIDENTS],
        [INC_MET_P_T].[INC_CLOSE_CODE] AS [INC_CLOSE_CODE],
        [INC_MET_P_T].[INC_CLOSE_NOTES] AS [INC_CLOSE_NOTES],
        [INC_MET_P_T].[INC_CLOSED_AT] AS [INC_CLOSED_AT],
        [INC_MET_P_T].[INC_CLOSED_BY] AS [INC_CLOSED_BY],
        [INC_MET_P_T].[INC_COMMENTS] AS [INC_COMMENTS],
        [INC_MET_P_T].[INC_COMMENTS_AND_WORK_NOTES] AS [INC_COMMENTS_AND_WORK_NOTES],
        [INC_MET_P_T].[INC_CONTACT_TYPE] AS [INC_CONTACT_TYPE],
        [INC_MET_P_T].[INC_DESCRIPTION] AS [INC_DESCRIPTION],
        [INC_MET_P_T].[INC_DUE_DATE] AS [INC_DUE_DATE],
        [INC_MET_P_T].[INC_ESCALATION] AS [INC_ESCALATION],
        [INC_MET_P_T].[INC_EXPECTED_START] AS [INC_EXPECTED_START],
        [INC_MET_P_T].[INC_FOLLOW_UP] AS [INC_FOLLOW_UP],
        [INC_MET_P_T].[INC_GROUP_LIST] AS [INC_GROUP_LIST],
        [INC_MET_P_T].[INC_IMPACT] AS [INC_IMPACT],
        [INC_MET_P_T].[INC_INCIDENT_STATE] AS [INC_INCIDENT_STATE],
        [INC_MET_P_T].[INC_KNOWLEDGE] AS [INC_KNOWLEDGE],
        [INC_MET_P_T].[INC_MADE_SLA] AS [INC_MADE_SLA],
        [INC_MET_P_T].[INC_NOTIFY] AS [INC_NOTIFY],
        [INC_MET_P_T].[INC_NUMBER] AS [INC_NUMBER],
        [INC_MET_P_T].[INC_OPENED_AT] AS [INC_OPENED_AT],
        [INC_MET_P_T].[INC_OPENED_BY] AS [INC_OPENED_BY],
        [INC_MET_P_T].[INC_ORDER] AS [INC_ORDER],
        [INC_MET_P_T].[INC_PARENT] AS [INC_PARENT],
        [INC_MET_P_T].[INC_PARENT_INCIDENT_NUMBER] AS [INC_PARENT_INCIDENT_NUMBER],
        [INC_MET_P_T].[INC_PRIORITY] AS [INC_PRIORITY],
        [INC_MET_P_T].[INC_PROBLEM_ID] AS [INC_PROBLEM_ID],
        [INC_MET_P_T].[INC_REASSIGNMENT_COUNT] AS [INC_REASSIGNMENT_COUNT],
        [INC_MET_P_T].[INC_REOPEN_COUNT] AS [INC_REOPEN_COUNT],
        [INC_MET_P_T].[INC_RESOLVED_AT] AS [INC_RESOLVED_AT],
        [INC_MET_P_T].[INC_RESOLVED_BY] AS [INC_RESOLVED_BY],
        [INC_MET_P_T].[INC_SEVERITY] AS [INC_SEVERITY],
        [INC_MET_P_T].[INC_SHORT_DESCRIPTION] AS [INC_SHORT_DESCRIPTION],
        [INC_MET_P_T].[INC_SLA_DUE] AS [INC_SLA_DUE],
        [INC_MET_P_T].[INC_STATE] AS [INC_STATE],
        [INC_MET_P_T].[INC_SUBCATEGORY] AS [INC_SUBCATEGORY],
        [INC_MET_P_T].[INC_SYS_CLASS_NAME] AS [INC_SYS_CLASS_NAME],
        [INC_MET_P_T].[INC_SYS_CREATED_BY] AS [INC_SYS_CREATED_BY],
        [INC_MET_P_T].[INC_SYS_CREATED_ON] AS [INC_SYS_CREATED_ON],
        [INC_MET_P_T].[INC_SYS_MOD_COUNT] AS [INC_SYS_MOD_COUNT],
        [INC_MET_P_T].[INC_SYS_UPDATED_BY] AS [INC_SYS_UPDATED_BY],
        [INC_MET_P_T].[INC_SYS_UPDATED_ON] AS [INC_SYS_UPDATED_ON],
        [INC_MET_P_T].[INC_TIME_WORKED] AS [INC_TIME_WORKED],
        [INC_MET_P_T].[INC_U_ACCENTURE_SLA] AS [INC_U_ACCENTURE_SLA],
        [INC_MET_P_T].[INC_U_ASSIGNMENT_GROUP_TYPE] AS [INC_U_ASSIGNMENT_GROUP_TYPE],
        [INC_MET_P_T].[INC_U_BEST_CONTACT_NUMBER] AS [INC_U_BEST_CONTACT_NUMBER],
        [INC_MET_P_T].[INC_U_BRIDGE_LAUNCHED] AS [INC_U_BRIDGE_LAUNCHED],
        [INC_MET_P_T].[INC_U_BRIDGE_REQUESTED] AS [INC_U_BRIDGE_REQUESTED],
        [INC_MET_P_T].[INC_U_CALL_IN_REASON] AS [INC_U_CALL_IN_REASON],
        [INC_MET_P_T].[INC_U_CALL_IN_REASON_COUNTER] AS [INC_U_CALL_IN_REASON_COUNTER],
        [INC_MET_P_T].[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D] AS [INC_U_CAN_BE_RESOLVED_AT_SERVICE_D],
        [INC_MET_P_T].[INC_U_CATEGORY_1] AS [INC_U_CATEGORY_1],
        [INC_MET_P_T].[INC_U_CATEGORY_2] AS [INC_U_CATEGORY_2],
        [INC_MET_P_T].[INC_U_CATEGORY_3] AS [INC_U_CATEGORY_3],
        [INC_MET_P_T].[INC_U_CHANGE_REQUEST] AS [INC_U_CHANGE_REQUEST],
        [INC_MET_P_T].[INC_U_CI_CATEGORY] AS [INC_U_CI_CATEGORY],
        [INC_MET_P_T].[INC_U_CI_CLASSIFICATION] AS [INC_U_CI_CLASSIFICATION],
        [INC_MET_P_T].[INC_U_CI_TYPE] AS [INC_U_CI_TYPE],
        [INC_MET_P_T].[INC_U_CRITICAL_INCIDENT] AS [INC_U_CRITICAL_INCIDENT],
        [INC_MET_P_T].[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS] AS [INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS],
        [INC_MET_P_T].[INC_U_DEFECT_ID_] AS [INC_U_DEFECT_ID_],
        [INC_MET_P_T].[INC_U_DISPATCH_TYPE] AS [INC_U_DISPATCH_TYPE],
        [INC_MET_P_T].[INC_U_DSS_HANDLE_TIME] AS [INC_U_DSS_HANDLE_TIME],
        [INC_MET_P_T].[INC_U_FCR] AS [INC_U_FCR],
        [INC_MET_P_T].[INC_U_INCIDENT_GP_TYPE] AS [INC_U_INCIDENT_GP_TYPE],
        [INC_MET_P_T].[INC_U_INCIDENT_NEW_PRIORITY] AS [INC_U_INCIDENT_NEW_PRIORITY],
        [INC_MET_P_T].[INC_U_INCIDENT_OLD_PRIORITY] AS [INC_U_INCIDENT_OLD_PRIORITY],
        [INC_MET_P_T].[INC_U_INFOSYS_KOURIER_SLA] AS [INC_U_INFOSYS_KOURIER_SLA],
        [INC_MET_P_T].[INC_U_INFOSYS_SLA] AS [INC_U_INFOSYS_SLA],
        [INC_MET_P_T].[INC_U_INFOSYS_UNISYS_SLA] AS [INC_U_INFOSYS_UNISYS_SLA],
        [INC_MET_P_T].[INC_U_ISSUE_TYPE] AS [INC_U_ISSUE_TYPE],
        [INC_MET_P_T].[INC_U_JUSTIFICATION] AS [INC_U_JUSTIFICATION],
        [INC_MET_P_T].[INC_U_KELLOGGS_SLA] AS [INC_U_KELLOGGS_SLA],
        [INC_MET_P_T].[INC_U_KNOWLEDGE_CANDIDATE] AS [INC_U_KNOWLEDGE_CANDIDATE],
        [INC_MET_P_T].[INC_U_KNOWLEDGE_USED] AS [INC_U_KNOWLEDGE_USED],
        [INC_MET_P_T].[INC_U_L1_RESOLVABLE] AS [INC_U_L1_RESOLVABLE],
        [INC_MET_P_T].[INC_U_L1_RESOLVABLE_DESCRIPTION] AS [INC_U_L1_RESOLVABLE_DESCRIPTION],
        [INC_MET_P_T].[INC_U_LANGUAGE] AS [INC_U_LANGUAGE],
        [INC_MET_P_T].[INC_U_LOCATION] AS [INC_U_LOCATION],
        [INC_MET_P_T].[INC_U_LOCATION_NEW] AS [INC_U_LOCATION_NEW],
        [INC_MET_P_T].[INC_U_MAJOR_INCIDENT_MANAGER] AS [INC_U_MAJOR_INCIDENT_MANAGER],
        [INC_MET_P_T].[INC_U_MINDTREE_SLA] AS [INC_U_MINDTREE_SLA],
        [INC_MET_P_T].[INC_U_MISSING_CI] AS [INC_U_MISSING_CI],
        [INC_MET_P_T].[INC_U_MISSING_CI_NAME] AS [INC_U_MISSING_CI_NAME],
        [INC_MET_P_T].[INC_U_MONITORING_LOCATION] AS [INC_U_MONITORING_LOCATION],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[INC_U_MTR_DURATION]), 0),[INC_MET_P_T].[INC_U_MTR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[INC_U_MTR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[INC_U_MTR_DURATION]) AS INT) AS
		[INC_U_MTR_DURATION],
		
        [INC_MET_P_T].[INC_U_OLD_PRIORITY] AS [INC_U_OLD_PRIORITY],
        [INC_MET_P_T].[INC_U_OLD_SUPPLIER] AS [INC_U_OLD_SUPPLIER],
        [INC_MET_P_T].[INC_U_OPENED_BY_COMPANY_SUPPLIER] AS [INC_U_OPENED_BY_COMPANY_SUPPLIER],
        [INC_MET_P_T].[INC_U_PENDING_DUR] AS [INC_U_PENDING_DUR],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[INC_U_PENDING_DURATION]), 0),[INC_MET_P_T].[INC_U_PENDING_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[INC_U_PENDING_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[INC_U_PENDING_DURATION]) AS INT) AS
		[INC_U_PENDING_DURATION],
		
        [INC_MET_P_T].[INC_U_PENDING_END_TIME] AS [INC_U_PENDING_END_TIME],
        [INC_MET_P_T].[INC_U_PENDING_REASON] AS [INC_U_PENDING_REASON],
        [INC_MET_P_T].[INC_U_PENDING_START_TIME] AS [INC_U_PENDING_START_TIME],
        [INC_MET_P_T].[INC_U_PR_METRIC] AS [INC_U_PR_METRIC],
        [INC_MET_P_T].[INC_U_PRB_CANDIDATE_USER] AS [INC_U_PRB_CANDIDATE_USER],
        [INC_MET_P_T].[INC_U_PRIORITY_FLAG] AS [INC_U_PRIORITY_FLAG],
        [INC_MET_P_T].[INC_U_PROBLEM_CANDIDATE] AS [INC_U_PROBLEM_CANDIDATE],
        [INC_MET_P_T].[INC_U_PROBLEM_CREATED] AS [INC_U_PROBLEM_CREATED],
        [INC_MET_P_T].[INC_U_REASSIGNMENT] AS [INC_U_REASSIGNMENT],
        [INC_MET_P_T].[INC_U_REGION] AS [INC_U_REGION],
        [INC_MET_P_T].[INC_U_REOPENED_DATE] AS [INC_U_REOPENED_DATE],
        [INC_MET_P_T].[INC_U_REPORTED_BY] AS [INC_U_REPORTED_BY],
        [INC_MET_P_T].[INC_U_RESPONSE_SLA] AS [INC_U_RESPONSE_SLA],
        [INC_MET_P_T].[INC_U_SD_GROUP] AS [INC_U_SD_GROUP],
        [INC_MET_P_T].[INC_U_SD_RESOLVABLE] AS [INC_U_SD_RESOLVABLE],
        [INC_MET_P_T].[INC_U_SD_START_TIME] AS [INC_U_SD_START_TIME],
        [INC_MET_P_T].[INC_U_SELECT_CATEGORY] AS [INC_U_SELECT_CATEGORY],
        [INC_MET_P_T].[INC_U_SLA_EXCEPTION] AS [INC_U_SLA_EXCEPTION],
        [INC_MET_P_T].[INC_U_SLA_SUPPLIER] AS [INC_U_SLA_SUPPLIER],
        [INC_MET_P_T].[INC_U_SLA_VALIDATION] AS [INC_U_SLA_VALIDATION],
        [INC_MET_P_T].[INC_U_STYLE_OVERRIDE] AS [INC_U_STYLE_OVERRIDE],
        [INC_MET_P_T].[INC_U_SUB_SUPPLIER] AS [INC_U_SUB_SUPPLIER],
        [INC_MET_P_T].[INC_U_SUPPLIER] AS [INC_U_SUPPLIER],
        [INC_MET_P_T].[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE] AS [INC_U_UNABLE_TO_RESOLVE_AT_SERVICE],
        [INC_MET_P_T].[INC_U_UNISYS_SLA] AS [INC_U_UNISYS_SLA],
        [INC_MET_P_T].[INC_U_VENDOR_NAME] AS [INC_U_VENDOR_NAME],
        [INC_MET_P_T].[INC_U_VENDOR_TICKET_NUMBER] AS [INC_U_VENDOR_TICKET_NUMBER],
        [INC_MET_P_T].[INC_U_VIP_RESPONSE_TIME] AS [INC_U_VIP_RESPONSE_TIME],
        [INC_MET_P_T].[INC_U_WORKAROUND] AS [INC_U_WORKAROUND],
        [INC_MET_P_T].[INC_UPON_APPROVAL] AS [INC_UPON_APPROVAL],
        [INC_MET_P_T].[INC_UPON_REJECT] AS [INC_UPON_REJECT],
        [INC_MET_P_T].[INC_URGENCY] AS [INC_URGENCY],
        [INC_MET_P_T].[INC_USER_INPUT] AS [INC_USER_INPUT],
        [INC_MET_P_T].[INC_WATCH_LIST] AS [INC_WATCH_LIST],
        [INC_MET_P_T].[INC_WORK_END] AS [INC_WORK_END],
        [INC_MET_P_T].[INC_WORK_NOTES] AS [INC_WORK_NOTES],
        [INC_MET_P_T].[INC_WORK_NOTES_LIST] AS [INC_WORK_NOTES_LIST],
        [INC_MET_P_T].[INC_WORK_START] AS [INC_WORK_START],
        [INC_MET_P_T].[INC_LOC_U_REGION] AS [INC_LOC_U_REGION],
        [INC_MET_P_T].[INC_SYS_USER_GROUP_NAME] AS [INC_SYS_USER_GROUP_NAME],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[MI_BUSINESS_DURATION]), 0),[INC_MET_P_T].[MI_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[MI_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[MI_BUSINESS_DURATION]) AS INT) AS
		[MI_BUSINESS_DURATION],
		
        [INC_MET_P_T].[MI_CALCULATION_COMPLETE] AS [MI_CALCULATION_COMPLETE],
		
        CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[MI_DURATION]), 0),[INC_MET_P_T].[MI_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[MI_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[MI_DURATION]) AS INT) AS
		[MI_DURATION],
		
        [INC_MET_P_T].[MI_END] AS [MI_END],
        [INC_MET_P_T].[MI_FIELD] AS [MI_FIELD],
        [INC_MET_P_T].[MI_FIELD_VALUE] AS [MI_FIELD_VALUE],
        [INC_MET_P_T].[MI_START] AS [MI_START],
        [INC_MET_P_T].[MI_SYS_CREATED_BY] AS [MI_SYS_CREATED_BY],
        [INC_MET_P_T].[MI_SYS_CREATED_ON] AS [MI_SYS_CREATED_ON],
        [INC_MET_P_T].[MI_SYS_MOD_COUNT] AS [MI_SYS_MOD_COUNT],
        [INC_MET_P_T].[MI_SYS_UPDATED_BY] AS [MI_SYS_UPDATED_BY],
        [INC_MET_P_T].[MI_SYS_UPDATED_ON] AS [MI_SYS_UPDATED_ON],
        [INC_MET_P_T].[MI_TABLE] AS [MI_TABLE],
        [INC_MET_P_T].[MI_U_HIDDEN_START_TIME] AS [MI_U_HIDDEN_START_TIME],
        [INC_MET_P_T].[MI_VALUE] AS [MI_VALUE],
        [INC_MET_P_T].[MD_ACTIVE] AS [MD_ACTIVE],
        [INC_MET_P_T].[MD_DESCRIPTION] AS [MD_DESCRIPTION],
        [INC_MET_P_T].[MD_FIELD] AS [MD_FIELD],
        [INC_MET_P_T].[MD_NAME] AS [MD_NAME],
        [INC_MET_P_T].[MD_NUMBER] AS [MD_NUMBER],
        [INC_MET_P_T].[MD_SYS_CREATED_BY] AS [MD_SYS_CREATED_BY],
        [INC_MET_P_T].[MD_SYS_CREATED_ON] AS [MD_SYS_CREATED_ON],
        [INC_MET_P_T].[MD_SYS_UPDATED_BY] AS [MD_SYS_UPDATED_BY],
        [INC_MET_P_T].[MD_SYS_UPDATED_ON] AS [MD_SYS_UPDATED_ON],
        [INC_MET_P_T].[MD_TABLE] AS [MD_TABLE],
        [INC_MET_P_T].[MD_TIMELINE] AS [MD_TIMELINE],
        [INC_MET_P_T].[MD_TYPE] AS [MD_TYPE],
        [INC_MET_P_T].[INC_CMDB_NAME] AS [INC_CMDB_NAME],
        [INC_MET_P_T].[INC_CMDB_CATEGORY] AS [INC_CMDB_CATEGORY],
        [INC_MET_P_T].[INC_CMDB_SUBCATEGORY] AS [INC_CMDB_SUBCATEGORY],
        [INC_MET_P_T].[INC_CMDB_U_CI_ALIAS] AS [INC_CMDB_U_CI_ALIAS],
        [INC_MET_P_T].[INC_CMDB_U_CI_CATEGORY] AS [INC_CMDB_U_CI_CATEGORY],
        [INC_MET_P_T].[INC_CMDB_U_REPORTING_CATEGORIES] AS [INC_CMDB_U_REPORTING_CATEGORIES],
        [INC_MET_P_T].[INC_CMDB_U_SUB_TYPE] AS [INC_CMDB_U_SUB_TYPE],
        [INC_MET_P_T].[INC_CMDB_U_TYPE] AS [INC_CMDB_U_TYPE],
        [INC_MET_P_T].[PT_ACTIVE] AS [PT_ACTIVE],
        [INC_MET_P_T].[PT_ACTIVITY_DUE] AS [PT_ACTIVITY_DUE],
        [INC_MET_P_T].[PT_APPROVAL] AS [PT_APPROVAL],
        [INC_MET_P_T].[PT_APPROVAL_HISTORY] AS [PT_APPROVAL_HISTORY],
        [INC_MET_P_T].[PT_APPROVAL_SET] AS [PT_APPROVAL_SET],
        [INC_MET_P_T].[PT_ASSIGNED_TO] AS [PT_ASSIGNED_TO],
        [INC_MET_P_T].[PT_ASSIGNMENT_GROUP] AS [PT_ASSIGNMENT_GROUP],
		
        CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[PT_BUSINESS_DURATION]), 0),[INC_MET_P_T].[PT_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[PT_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[PT_BUSINESS_DURATION]) AS INT) AS
		[PT_BUSINESS_DURATION],
		
        CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[PT_CALENDAR_DURATION]), 0),[INC_MET_P_T].[PT_CALENDAR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[PT_CALENDAR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[PT_CALENDAR_DURATION]) AS INT) AS
		[PT_CALENDAR_DURATION],

        [INC_MET_P_T].[PT_CLOSE_NOTES] AS [PT_CLOSE_NOTES],
        [INC_MET_P_T].[PT_CLOSED_AT] AS [PT_CLOSED_AT],
        [INC_MET_P_T].[PT_CLOSED_BY] AS [PT_CLOSED_BY],
        [INC_MET_P_T].[PT_COMMENTS] AS [PT_COMMENTS],
        [INC_MET_P_T].[PT_COMMENTS_AND_WORK_NOTES] AS [PT_COMMENTS_AND_WORK_NOTES],
        [INC_MET_P_T].[PT_COMPANY] AS [PT_COMPANY],
        [INC_MET_P_T].[PT_CONTACT_TYPE] AS [PT_CONTACT_TYPE],
        [INC_MET_P_T].[PT_DESCRIPTION] AS [PT_DESCRIPTION],
        [INC_MET_P_T].[PT_DUE_DATE] AS [PT_DUE_DATE],
        [INC_MET_P_T].[PT_ESCALATION] AS [PT_ESCALATION],
        [INC_MET_P_T].[PT_EXPECTED_START] AS [PT_EXPECTED_START],
        [INC_MET_P_T].[PT_FOLLOW_UP] AS [PT_FOLLOW_UP],
        [INC_MET_P_T].[PT_GROUP_LIST] AS [PT_GROUP_LIST],
        [INC_MET_P_T].[PT_IMPACT] AS [PT_IMPACT],
        [INC_MET_P_T].[PT_KNOWLEDGE] AS [PT_KNOWLEDGE],
        [INC_MET_P_T].[PT_LOCATION] AS [PT_LOCATION],
        [INC_MET_P_T].[PT_MADE_SLA] AS [PT_MADE_SLA],
        [INC_MET_P_T].[PT_NUMBER] AS [PT_NUMBER],
        [INC_MET_P_T].[PT_OPENED_AT] AS [PT_OPENED_AT],
        [INC_MET_P_T].[PT_OPENED_BY] AS [PT_OPENED_BY],
        [INC_MET_P_T].[PT_ORDER] AS [PT_ORDER],
        [INC_MET_P_T].[PT_PARENT] AS [PT_PARENT],
        [INC_MET_P_T].[PT_PRIORITY] AS [PT_PRIORITY],
        [INC_MET_P_T].[PT_REASSIGNMENT_COUNT] AS [PT_REASSIGNMENT_COUNT],
        [INC_MET_P_T].[PT_SHORT_DESCRIPTION] AS [PT_SHORT_DESCRIPTION],
        [INC_MET_P_T].[PT_SKILLS] AS [PT_SKILLS],
        [INC_MET_P_T].[PT_SLA_DUE] AS [PT_SLA_DUE],
        [INC_MET_P_T].[PT_STATE] AS [PT_STATE],
        [INC_MET_P_T].[PT_SYS_CLASS_NAME] AS [PT_SYS_CLASS_NAME],
        [INC_MET_P_T].[PT_SYS_CREATED_BY] AS [PT_SYS_CREATED_BY],
        [INC_MET_P_T].[PT_SYS_CREATED_ON] AS [PT_SYS_CREATED_ON],
        [INC_MET_P_T].[PT_SYS_ID] AS [PT_SYS_ID],
        [INC_MET_P_T].[PT_SYS_UPDATED_BY] AS [PT_SYS_UPDATED_BY],
        [INC_MET_P_T].[PT_SYS_UPDATED_ON] AS [PT_SYS_UPDATED_ON],
        [INC_MET_P_T].[PT_TIME_WORKED] AS [PT_TIME_WORKED],
        [INC_MET_P_T].[PT_U_A_QUESTION_1] AS [PT_U_A_QUESTION_1],
        [INC_MET_P_T].[PT_U_ACTION_LIST] AS [PT_U_ACTION_LIST],
        [INC_MET_P_T].[PT_U_ANSWER] AS [PT_U_ANSWER],
        [INC_MET_P_T].[PT_U_ASSIGNMENT_GROUP_TYPE] AS [PT_U_ASSIGNMENT_GROUP_TYPE],
        [INC_MET_P_T].[PT_U_CHANGE_NUMBER] AS [PT_U_CHANGE_NUMBER],
        [INC_MET_P_T].[PT_U_CHANGE_REQUEST_RELATED] AS [PT_U_CHANGE_REQUEST_RELATED],
        [INC_MET_P_T].[PT_U_CONFIGURATION_ITEMS_IMPACTED] AS [PT_U_CONFIGURATION_ITEMS_IMPACTED],
        [INC_MET_P_T].[PT_U_CORRECTIVE_ACTIONS] AS [PT_U_CORRECTIVE_ACTIONS],
        [INC_MET_P_T].[PT_U_DUE_BY] AS [PT_U_DUE_BY],
		
        CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[PT_U_DURATION]), 0),[INC_MET_P_T].[PT_U_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[PT_U_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[PT_U_DURATION]) AS INT) AS
		[PT_U_DURATION],
		
        [INC_MET_P_T].[PT_U_INCIDENT_END_DATE] AS [PT_U_INCIDENT_END_DATE],
        [INC_MET_P_T].[PT_U_INCIDENT_GP_TYPE] AS [PT_U_INCIDENT_GP_TYPE],
        [INC_MET_P_T].[PT_U_INCIDENT_RESOLUTION] AS [PT_U_INCIDENT_RESOLUTION],
        [INC_MET_P_T].[PT_U_INCIDENT_START_DATE] AS [PT_U_INCIDENT_START_DATE],
        [INC_MET_P_T].[PT_U_KNOWN_ERROR] AS [PT_U_KNOWN_ERROR],
        [INC_MET_P_T].[PT_U_NETWORK_OUTAGE] AS [PT_U_NETWORK_OUTAGE],
        [INC_MET_P_T].[PT_U_PRIORITY] AS [PT_U_PRIORITY],
        [INC_MET_P_T].[PT_U_PROBLEM_DESCRIPTION] AS [PT_U_PROBLEM_DESCRIPTION],
        [INC_MET_P_T].[PT_U_PROBLEM_LOCATION] AS [PT_U_PROBLEM_LOCATION],
        [INC_MET_P_T].[PT_U_PROBLEM_RECORD_NUMBER] AS [PT_U_PROBLEM_RECORD_NUMBER],
        [INC_MET_P_T].[PT_U_PROBLEMS_BUSINESS_IMPACT] AS [PT_U_PROBLEMS_BUSINESS_IMPACT],
        [INC_MET_P_T].[PT_U_QUESTION_2] AS [PT_U_QUESTION_2],
        [INC_MET_P_T].[PT_U_QUESTION_3] AS [PT_U_QUESTION_3],
        [INC_MET_P_T].[PT_U_QUESTION_4] AS [PT_U_QUESTION_4],
        [INC_MET_P_T].[PT_U_QUESTION_5] AS [PT_U_QUESTION_5],
        [INC_MET_P_T].[PT_U_QUESTION_6] AS [PT_U_QUESTION_6],
        [INC_MET_P_T].[PT_U_RCA_APPROVED_BY] AS [PT_U_RCA_APPROVED_BY],
        [INC_MET_P_T].[PT_U_RCA_COMPLETED_DATE] AS [PT_U_RCA_COMPLETED_DATE],
        [INC_MET_P_T].[PT_U_RCA_REQUESTED_BY] AS [PT_U_RCA_REQUESTED_BY],
        [INC_MET_P_T].[PT_U_RELATED_INCIDENT_NO] AS [PT_U_RELATED_INCIDENT_NO],
        [INC_MET_P_T].[PT_U_REQ] AS [PT_U_REQ],
        [INC_MET_P_T].[PT_U_ROOT_CAUSE_CODE] AS [PT_U_ROOT_CAUSE_CODE],
        [INC_MET_P_T].[PT_U_ROOT_CAUSE_DETAILS] AS [PT_U_ROOT_CAUSE_DETAILS],
        [INC_MET_P_T].[PT_U_ROOT_CAUSE_IDENTIFIED_BY] AS [PT_U_ROOT_CAUSE_IDENTIFIED_BY],
        [INC_MET_P_T].[PT_U_ROOT_CAUSE_OF_THE_PROBLEM] AS [PT_U_ROOT_CAUSE_OF_THE_PROBLEM],
        [INC_MET_P_T].[PT_U_ROOT_CAUSE_SUPPORTER] AS [PT_U_ROOT_CAUSE_SUPPORTER],
        [INC_MET_P_T].[PT_U_STATUS_REASON] AS [PT_U_STATUS_REASON],
        [INC_MET_P_T].[PT_U_SUPPLIER] AS [PT_U_SUPPLIER],
        [INC_MET_P_T].[PT_U_TARGET_DATE] AS [PT_U_TARGET_DATE],
        [INC_MET_P_T].[PT_U_TASK_PRIORITY] AS [PT_U_TASK_PRIORITY],
        [INC_MET_P_T].[PT_U_WHEN_FIRST] AS [PT_U_WHEN_FIRST],
        [INC_MET_P_T].[PT_U_WHEN_LAST] AS [PT_U_WHEN_LAST],
        [INC_MET_P_T].[PT_U_WORKAROUND] AS [PT_U_WORKAROUND],
        [INC_MET_P_T].[PT_UPON_APPROVAL] AS [PT_UPON_APPROVAL],
        [INC_MET_P_T].[PT_UPON_REJECT] AS [PT_UPON_REJECT],
        [INC_MET_P_T].[PT_URGENCY] AS [PT_URGENCY],
        [INC_MET_P_T].[PT_USER_INPUT] AS [PT_USER_INPUT],
        [INC_MET_P_T].[PT_WATCH_LIST] AS [PT_WATCH_LIST],
        [INC_MET_P_T].[PT_WORK_END] AS [PT_WORK_END],
        [INC_MET_P_T].[PT_WORK_NOTES] AS [PT_WORK_NOTES],
        [INC_MET_P_T].[PT_WORK_NOTES_LIST] AS [PT_WORK_NOTES_LIST],
        [INC_MET_P_T].[PT_WORK_START] AS [PT_WORK_START],
        [INC_MET_P_T].[P_SYS_ID] AS [P_SYS_ID],
        [INC_MET_P_T].[P_ACTIVE] AS [P_ACTIVE],
        [INC_MET_P_T].[P_ACTIVITY_DUE] AS [P_ACTIVITY_DUE],
        [INC_MET_P_T].[P_APPROVAL] AS [P_APPROVAL],
        [INC_MET_P_T].[P_APPROVAL_HISTORY] AS [P_APPROVAL_HISTORY],
        [INC_MET_P_T].[P_APPROVAL_SET] AS [P_APPROVAL_SET],
        [INC_MET_P_T].[P_ASSIGNED_TO] AS [P_ASSIGNED_TO],
        [INC_MET_P_T].[P_ASSIGNMENT_GROUP] AS [P_ASSIGNMENT_GROUP],
		
        CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[P_BUSINESS_DURATION]), 0),[INC_MET_P_T].[P_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[P_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[P_BUSINESS_DURATION]) AS INT) AS
		[P_BUSINESS_DURATION],
		
        CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_MET_P_T].[P_CALENDAR_DURATION]), 0),[INC_MET_P_T].[P_CALENDAR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_MET_P_T].[P_CALENDAR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_MET_P_T].[P_CALENDAR_DURATION]) AS INT) AS
		[P_CALENDAR_DURATION],
		
        [INC_MET_P_T].[P_CLOSE_NOTES] AS [P_CLOSE_NOTES],
        [INC_MET_P_T].[P_CLOSED_AT] AS [P_CLOSED_AT],
        [INC_MET_P_T].[P_CLOSED_BY_VALUE] AS [P_CLOSED_BY_VALUE],
        [INC_MET_P_T].[P_COMMENTS] AS [P_COMMENTS],
        [INC_MET_P_T].[P_COMMENTS_AND_WORK_NOTES] AS [P_COMMENTS_AND_WORK_NOTES],
        [INC_MET_P_T].[P_COMPANY] AS [P_COMPANY],
        [INC_MET_P_T].[P_CONTACT_TYPE] AS [P_CONTACT_TYPE],
        [INC_MET_P_T].[P_DESCRIPTION] AS [P_DESCRIPTION],
        [INC_MET_P_T].[P_DUE_DATE] AS [P_DUE_DATE],
        [INC_MET_P_T].[P_ESCALATION] AS [P_ESCALATION],
        [INC_MET_P_T].[P_EXPECTED_START] AS [P_EXPECTED_START],
        [INC_MET_P_T].[P_FOLLOW_UP] AS [P_FOLLOW_UP],
        [INC_MET_P_T].[P_GROUP_LIST] AS [P_GROUP_LIST],
        [INC_MET_P_T].[P_IMPACT] AS [P_IMPACT],
        [INC_MET_P_T].[P_KNOWLEDGE] AS [P_KNOWLEDGE],
        [INC_MET_P_T].[P_KNOWN_ERROR] AS [P_KNOWN_ERROR],
        [INC_MET_P_T].[P_LOCATION_VALUE] AS [P_LOCATION_VALUE],
        [INC_MET_P_T].[P_MADE_SLA] AS [P_MADE_SLA],
        [INC_MET_P_T].[P_NUMBER] AS [P_NUMBER],
        [INC_MET_P_T].[P_OPENED_AT] AS [P_OPENED_AT],
        [INC_MET_P_T].[P_OPENED_BY_VALUE] AS [P_OPENED_BY_VALUE],
        [INC_MET_P_T].[P_ORDER] AS [P_ORDER],
        [INC_MET_P_T].[P_PRIORITY] AS [P_PRIORITY],
        [INC_MET_P_T].[P_PROBLEM_STATE] AS [P_PROBLEM_STATE],
        [INC_MET_P_T].[P_REASSIGNMENT_COUNT] AS [P_REASSIGNMENT_COUNT],
        [INC_MET_P_T].[P_RELATED_INCIDENTS] AS [P_RELATED_INCIDENTS],
        [INC_MET_P_T].[P_RFC] AS [P_RFC],
        [INC_MET_P_T].[P_SHORT_DESCRIPTION] AS [P_SHORT_DESCRIPTION],
        [INC_MET_P_T].[P_SKILLS] AS [P_SKILLS],
        [INC_MET_P_T].[P_SLA_DUE] AS [P_SLA_DUE],
        [INC_MET_P_T].[P_STATE] AS [P_STATE],
        [INC_MET_P_T].[P_SYS_CREATED_BY] AS [P_SYS_CREATED_BY],
        [INC_MET_P_T].[P_SYS_CREATED_ON] AS [P_SYS_CREATED_ON],
        [INC_MET_P_T].[P_SYS_UPDATED_BY] AS [P_SYS_UPDATED_BY],
        [INC_MET_P_T].[P_SYS_UPDATED_ON] AS [P_SYS_UPDATED_ON],
        [INC_MET_P_T].[P_TIME_WORKED] AS [P_TIME_WORKED],
        [INC_MET_P_T].[P_U_ASSIGNMENT_GROUP_TYPE] AS [P_U_ASSIGNMENT_GROUP_TYPE],
        [INC_MET_P_T].[P_U_CATEGORY] AS [P_U_CATEGORY],
        [INC_MET_P_T].[P_U_CI_CATEGORY] AS [P_U_CI_CATEGORY],
        [INC_MET_P_T].[P_U_CI_CLASSIFICATION] AS [P_U_CI_CLASSIFICATION],
        [INC_MET_P_T].[P_U_CI_TYPE] AS [P_U_CI_TYPE],
        [INC_MET_P_T].[P_U_INCIDENT_GP_TYPE] AS [P_U_INCIDENT_GP_TYPE],
        [INC_MET_P_T].[P_U_KB_ARTICLE_FOR_KNOWN_ERROR] AS [P_U_KB_ARTICLE_FOR_KNOWN_ERROR],
        [INC_MET_P_T].[P_U_LESSONS_LEARNED] AS [P_U_LESSONS_LEARNED],
        [INC_MET_P_T].[P_U_MISSING_CI] AS [P_U_MISSING_CI],
        [INC_MET_P_T].[P_U_MISSING_CI_REQUIRED] AS [P_U_MISSING_CI_REQUIRED],
        [INC_MET_P_T].[P_U_PROBLEM_OCCURRED_DATE] AS [P_U_PROBLEM_OCCURRED_DATE],
        [INC_MET_P_T].[P_U_PROBLEMS_BUSINESS_IMPACT] AS [P_U_PROBLEMS_BUSINESS_IMPACT],
        [INC_MET_P_T].[P_U_RCA_PARTICIPANTS] AS [P_U_RCA_PARTICIPANTS],
        [INC_MET_P_T].[P_U_RCA_REQUESTED_BY] AS [P_U_RCA_REQUESTED_BY],
        [INC_MET_P_T].[P_U_RCA_REVIEW_MEETING_DATE] AS [P_U_RCA_REVIEW_MEETING_DATE],
        [INC_MET_P_T].[P_U_REGION] AS [P_U_REGION],
        [INC_MET_P_T].[P_U_RESOLUTION_CODE] AS [P_U_RESOLUTION_CODE],
        [INC_MET_P_T].[P_U_ROOT_CAUSE] AS [P_U_ROOT_CAUSE],
        [INC_MET_P_T].[P_U_ROOT_CAUSE_ANALYSIS] AS [P_U_ROOT_CAUSE_ANALYSIS],
        [INC_MET_P_T].[P_U_ROOT_CAUSE_DETAILS] AS [P_U_ROOT_CAUSE_DETAILS],
        [INC_MET_P_T].[P_U_ROOT_CAUSE_IDENTIFIED_BY] AS [P_U_ROOT_CAUSE_IDENTIFIED_BY],
        [INC_MET_P_T].[P_U_ROOT_CAUSE_JUSTIFICATION] AS [P_U_ROOT_CAUSE_JUSTIFICATION],
        [INC_MET_P_T].[P_U_ROOT_CAUSE_OF_THE_PROBLEM] AS [P_U_ROOT_CAUSE_OF_THE_PROBLEM],
        [INC_MET_P_T].[P_U_SOURCE] AS [P_U_SOURCE],
        [INC_MET_P_T].[P_U_STATUS_REASON] AS [P_U_STATUS_REASON],
        [INC_MET_P_T].[P_U_SUBCATEGORY] AS [P_U_SUBCATEGORY],
        [INC_MET_P_T].[P_U_SUPPLIER] AS [P_U_SUPPLIER],
        [INC_MET_P_T].[P_U_VENDOR] AS [P_U_VENDOR],
        [INC_MET_P_T].[P_U_VENDOR_TICKET_NO_] AS [P_U_VENDOR_TICKET_NO_],
        [INC_MET_P_T].[P_UPON_APPROVAL] AS [P_UPON_APPROVAL],
        [INC_MET_P_T].[P_UPON_REJECT] AS [P_UPON_REJECT],
        [INC_MET_P_T].[P_URGENCY] AS [P_URGENCY],
        [INC_MET_P_T].[P_USER_INPUT] AS [P_USER_INPUT],
        [INC_MET_P_T].[P_WATCH_LIST] AS [P_WATCH_LIST],
        [INC_MET_P_T].[P_WORK_AROUND] AS [P_WORK_AROUND],
        [INC_MET_P_T].[P_WORK_END] AS [P_WORK_END],
        [INC_MET_P_T].[P_WORK_NOTES] AS [P_WORK_NOTES],
        [INC_MET_P_T].[P_WORK_NOTES_LIST] AS [P_WORK_NOTES_LIST],
        [INC_MET_P_T].[P_WORK_START] AS [P_WORK_START],
        [AIP_MET_USR_GRP].[ID] AS [ID],
        [AIP_MET_USR_GRP].[SUPPLIER] AS [SUPPLIER],
        [AIP_MET_USR_GRP].[SUB_SUPPLIER] AS [SUB_SUPPLIER],
        [AIP_MET_USR_GRP].[SLA_OWNER] AS [SLA_OWNER],
        [AIP_MET_USR_GRP].[TEAM] AS [TEAM],
        [AIP_MET_USR_GRP].[METRIC_MEASURE] AS [METRIC_MEASURE],
        [AIP_MET_USR_GRP].[METRIC_TARGET] AS [METRIC_TARGET],
        [AIP_MET_USR_GRP].[METRIC_DESCRIPTION] AS [METRIC_DESCRIPTION],
        [AIP_MET_USR_GRP].[ACTIVE] AS [ACTIVE],
        [AIP_MET_USR_GRP].[COST_CENTER] AS [COST_CENTER],
        [AIP_MET_USR_GRP].[DEFAULT_ASSIGNEE] AS [DEFAULT_ASSIGNEE],
        [AIP_MET_USR_GRP].[DESCRIPTION] AS [DESCRIPTION],
        [AIP_MET_USR_GRP].[EMAIL] AS [EMAIL],
        [AIP_MET_USR_GRP].[EXCLUDE_MANAGER] AS [EXCLUDE_MANAGER],
        [AIP_MET_USR_GRP].[HOURLY_RATE] AS [HOURLY_RATE],
        [AIP_MET_USR_GRP].[INCLUDE_MEMBERS] AS [INCLUDE_MEMBERS],
        [AIP_MET_USR_GRP].[MANAGER_LINK] AS [MANAGER_LINK],
        [AIP_MET_USR_GRP].[MANAGER_VALUE] AS [MANAGER_VALUE],
        [AIP_MET_USR_GRP].[NAME] AS [NAME],
        [AIP_MET_USR_GRP].[PARENT] AS [PARENT],
        [AIP_MET_USR_GRP].[SOURCE] AS [SOURCE],
        [AIP_MET_USR_GRP].[SYS_ID] AS [SYS_ID],
        [AIP_MET_USR_GRP].[TYPE] AS [TYPE],
        [AIP_MET_USR_GRP].[U_DSS_GROUP] AS [U_DSS_GROUP],
        [AIP_MET_USR_GRP].[U_GROUP_ID] AS [U_GROUP_ID],
        [AIP_MET_USR_GRP].[U_GROUP_TYPE] AS [U_GROUP_TYPE],
        [AIP_MET_USR_GRP].[U_REGION] AS [U_REGION],
        [AIP_MET_USR_GRP].[U_RESPONSIBILITY] AS [U_RESPONSIBILITY],
        [AIP_MET_USR_GRP].[U_SRMS_GROUPS] AS [U_SRMS_GROUPS],
        [AIP_MET_USR_GRP].[U_SUB_SUPPLIER] AS [U_SUB_SUPPLIER],
        [AIP_MET_USR_GRP].[U_SUPPLIER] AS [U_SUPPLIER],
        [AIP_MET_USR_GRP].[U_SUPPORT_GROUP] AS [U_SUPPORT_GROUP],
        [AIP_MET_USR_GRP].[SLT_GROUP] AS [SLT_GROUP],
        [AIP_MET_USR_GRP].[PILLAR] AS [PILLAR],
        [AIP_MET_USR_GRP].[SUB_TEAM] AS [SUB_TEAM],
        [AIP_MET_USR_GRP].[SILO] AS [SILO],
        [AIP_MET_USR_GRP].[SCOPE] AS [SCOPE]
FROM [dbo].[UVW_INCIDENT_METRICS_PROBLEM_TASKS] AS [INC_MET_P_T]
FULL OUTER JOIN [dbo].[UVW_AIP_METRICS_USER_GROUP] AS [AIP_MET_USR_GRP] ON [INC_MET_P_T].[INC_SYS_USER_GROUP_NAME] = [AIP_MET_USR_GRP].[NAME]
WHERE [INC_MET_P_T].[INC_OPENED_AT] >=  DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) OR [INC_MET_P_T].[INC_CLOSED_AT] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) 
OR [INC_MET_P_T].[P_CLOSED_AT] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) OR [INC_MET_P_T].[PT_CLOSED_AT] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0)




GO
/****** Object:  View [dbo].[UVW_INCIDENTS_SLA_PROBLEM_TASK]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/******************************    
** Name: UVW_INCIDENTS_SLA_PROBLEM_TASK

** Desc: TASK0472106 - Changed the view to include extra columns
** Auth: Atheeth Koppula
** Date: 2018-02-15

**  
*******************************/

CREATE VIEW  [dbo].[UVW_INCIDENTS_SLA_PROBLEM_TASK]
AS
SELECT 
---INCIDENT
I.[INC_ACTIVE]
      ,I.[INC_ACTIVITY_DUE]
      ,I.[INC_APPROVAL]
      ,I.[INC_APPROVAL_HISTORY]
      ,I.[INC_APPROVAL_SET]
      ,SUASSN.SU_NAME as [INC_ASSIGNED_TO]
      ,I.[INC_BUSINESS_DURATION]
      ,I.[INC_BUSINESS_STC]
      ,I.[INC_CALENDAR_DURATION]
      ,I.[INC_CALENDAR_STC]
      ,I.[INC_CATEGORY]
      ,I.[INC_CAUSED_BY]
      ,I.[INC_CHILD_INCIDENTS]
      ,I.[INC_CLOSE_CODE]
      ,I.[INC_CLOSE_NOTES]
      ,I.[INC_CLOSED_AT]    
      ,SUCLOS.SU_NAME as [INC_CLOSED_BY]
      ,I.[INC_COMMENTS]
      ,I.[INC_COMMENTS_AND_WORK_NOTES]  
      ,I.[INC_CONTACT_TYPE]
      ,I.[INC_DESCRIPTION]
      ,I.[INC_DUE_DATE]
      ,I.[INC_ESCALATION]
      ,I.[INC_EXPECTED_START]
      ,I.[INC_FOLLOW_UP]
      ,I.[INC_GROUP_LIST]
      ,I.[INC_IMPACT]
      ,CASE 
		WHEN I.[INC_INCIDENT_STATE] = 6  THEN 'Resolved'
		WHEN I.[INC_INCIDENT_STATE] = 7  THEN 'Closed'
		WHEN I.[INC_INCIDENT_STATE] = 8  THEN 'In Queue'
		WHEN I.[INC_INCIDENT_STATE] = 9  THEN 'Assigned'
		WHEN I.[INC_INCIDENT_STATE] = 10 THEN 'Work In Progress'
		WHEN I.[INC_INCIDENT_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL(I.[INC_INCIDENT_STATE],''))
		END 
		as [INC_INCIDENT_STATE]
      ,I.[INC_KNOWLEDGE]
      ,I.[INC_MADE_SLA]
      ,I.[INC_NOTIFY]
      ,I.[INC_NUMBER]
      ,I.[INC_OPENED_AT]
	  ,SUOPEN.SU_NAME as [INC_OPENED_BY]
      ,I.[INC_ORDER]
      ,I.[INC_PARENT]
	  ,PARI.INC_NUMBER as [INC_PARENT_INCIDENT_NUMBER]
      ,I.[INC_PRIORITY]
      ,I.[INC_PROBLEM_ID]
      ,I.[INC_REASSIGNMENT_COUNT]
      ,I.[INC_REOPEN_COUNT]
      ,I.[INC_RESOLVED_AT]
      ,SURESO.SU_NAME as [INC_RESOLVED_BY]
      ,I.[INC_SEVERITY]
      ,I.[INC_SHORT_DESCRIPTION]
      ,I.[INC_SKILLS]
      ,I.[INC_SLA_DUE]
      ,CASE 
		WHEN I.[INC_STATE] = 6  THEN 'Resolved'
		WHEN I.[INC_STATE] = 7  THEN 'Closed'
		WHEN I.[INC_STATE] = 8  THEN 'In Queue'
		WHEN I.[INC_STATE] = 9  THEN 'Assigned'
		WHEN I.[INC_STATE] = 10 THEN 'Work In Progress'
		WHEN I.[INC_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL(I.[INC_STATE],''))
		END 
		as [INC_STATE]
      ,I.[INC_SUBCATEGORY]
      ,I.[INC_SYS_CLASS_NAME]
      ,I.[INC_SYS_CREATED_BY]
      ,I.[INC_SYS_CREATED_ON]
      ,I.[INC_SYS_MOD_COUNT]
      ,I.[INC_SYS_UPDATED_BY]
      ,I.[INC_SYS_UPDATED_ON]
      ,I.[INC_TIME_WORKED]
      ,I.[INC_U_ACCENTURE_SLA]
      ,I.[INC_U_APPOINTMENT_COMPLETED1]
      ,I.[INC_U_APPOINTMENT_TIME]
      ,I.[INC_U_ASSIGNMENT_GROUP_TYPE]
      ,I.[INC_U_BEST_CONTACT_NUMBER]
      ,I.[INC_U_BRIDGE_LAUNCHED]
      ,I.[INC_U_BRIDGE_REQUESTED]
      ,I.[INC_U_CALL_IN_REASON]
      ,I.[INC_U_CALL_IN_REASON_COUNTER]
      ,I.[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D]
      ,I.[INC_U_CATEGORY_1]
      ,I.[INC_U_CATEGORY_2]
      ,I.[INC_U_CATEGORY_3]
      ,I.[INC_U_CHANGE_REQUEST]
      ,I.[INC_U_CI_CATEGORY]
      ,I.[INC_U_CI_CLASSIFICATION]
      ,I.[INC_U_CI_TYPE]
      ,I.[INC_U_CRITICAL_INCIDENT]
      ,I.[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS]
      ,I.[INC_U_DEFECT_ID_]
      ,I.[INC_U_DISPATCH_TYPE]
      ,I.[INC_U_DSS___]
      ,I.[INC_U_DSS___OF_VISITS]
      ,I.[INC_U_DSS_HANDLE_TIME]
      ,I.[INC_U_FCR]
      ,I.[INC_U_HUNGARY_QUESTION_1]
      ,I.[INC_U_HUNGARY_SURVEY_QUESTION2]
      ,I.[INC_U_INCIDENT_GP_TYPE]
      ,I.[INC_U_INCIDENT_NEW_PRIORITY]
      ,I.[INC_U_INCIDENT_OLD_PRIORITY]
      ,I.[INC_U_INFOSYS_KOURIER_SLA]
      ,I.[INC_U_INFOSYS_SLA]
      ,I.[INC_U_INFOSYS_UNISYS_SLA]
      ,I.[INC_U_ISSUE_TYPE]
      ,I.[INC_U_JUSTIFICATION]
      ,I.[INC_U_KELLOGGS_SLA]
      ,I.[INC_U_KNOWLEDGE_CANDIDATE]
      ,I.[INC_U_KNOWLEDGE_USED]
      ,I.[INC_U_L1_RESOLVABLE]
      ,I.[INC_U_L1_RESOLVABLE_DESCRIPTION]
      ,I.[INC_U_LANGUAGE]
      ,I.[INC_U_LOCATION]
      ,I.[INC_U_LOCATION_NEW]
      ,I.[INC_U_MAJOR_INCIDENT_MANAGER]
      ,I.[INC_U_MINDTREE_SLA]
      ,I.[INC_U_MISSING_CI]
      ,I.[INC_U_MISSING_CI_NAME]
      ,I.[INC_U_MONITORING_LOCATION]
      ,I.[INC_U_MTR_DURATION]
      ,I.[INC_U_OLD_PRIORITY]
      ,I.[INC_U_OLD_SUPPLIER]
      ,I.[INC_U_OPENED_BY_COMPANY_SUPPLIER]
      ,I.[INC_U_PENDING_DUR]
      ,I.[INC_U_PENDING_DURATION]
      ,I.[INC_U_PENDING_END_TIME]
      ,I.[INC_U_PENDING_REASON]
      ,I.[INC_U_PENDING_START_TIME]
      ,I.[INC_U_PR_METRIC]
      ,I.[INC_U_PRB_CANDIDATE_USER]
      ,I.[INC_U_PRIORITY_FLAG]
      ,I.[INC_U_PROBLEM_CANDIDATE]
      ,I.[INC_U_PROBLEM_CREATED]
      ,I.[INC_U_REASSIGNMENT]
      ,I.[INC_U_REGION]
      ,I.[INC_U_REOPENED_DATE]
      ,SUREPO.SU_NAME as [INC_U_REPORTED_BY]
      ,I.[INC_U_RESPONSE_SLA]
      ,I.[INC_U_SCIENCELOGIC_REGION]
      ,I.[INC_U_SD_GROUP]
      ,I.[INC_U_SD_RESOLVABLE]
      ,I.[INC_U_SD_START_TIME]
      ,I.[INC_U_SELECT_CATEGORY]
      ,I.[INC_U_SILO_EID]
      ,I.[INC_U_SITE_CONTACT]
      ,I.[INC_U_SLA_EXCEPTION]
      ,I.[INC_U_SLA_SUPPLIER]
      ,I.[INC_U_SLA_VALIDATION]
      ,I.[INC_U_SRMS_DISPATCH]
      ,I.[INC_U_SRMS_LOCATION]
      ,I.[INC_U_SRMS_RESOLVED]
      ,I.[INC_U_SRMS_STATUS]
      ,I.[INC_U_SRMS_TICKET_NUMBER]
      ,I.[INC_U_SRMS_UPDATE]
      ,I.[INC_U_STYLE_OVERRIDE]
      ,I.[INC_U_SUB_SUPPLIER]
      ,I.[INC_U_SUPPLIER]
      ,I.[INC_U_SURVEY_COMMENTS]
      ,I.[INC_U_SURVEY_QUESTION1]
      ,I.[INC_U_SURVEY_QUESTION2]
      ,I.[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE]
      ,I.[INC_U_UNISYS_SLA]
      ,I.[INC_U_UNISYS_SRMS_PRODUCT_STYLE]
      ,I.[INC_U_VENDOR_NAME]
      ,I.[INC_U_VENDOR_TICKET_NUMBER]
      ,I.[INC_U_VIP_RESPONSE_TIME]
      ,I.[INC_U_WORKAROUND]
      ,I.[INC_UPON_APPROVAL]
      ,I.[INC_UPON_REJECT]
      ,I.[INC_URGENCY]
      ,I.[INC_USER_INPUT]
      ,I.[INC_WATCH_LIST]
      ,I.[INC_WORK_END]
      ,I.[INC_WORK_NOTES]
      ,I.[INC_WORK_NOTES_LIST]
      ,I.[INC_WORK_START]
      ,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
      ,I.[SYS_USER_U_REGION] as [INC_SYS_USER_U_REGION]
      ,UPPER(I.[SYS_USER_GROUP_NAME]) as [INC_SYS_USER_GROUP_NAME]  --- //CHANGED TO ADDRESS NULLS  ISSUES-- //
      ,I.[SYS_USER_GROUP_TEAM] as [INC_SYS_USER_GROUP_TEAM]
      ,I.[SYS_USER_GROUP_U_SUB_SUPPLIER] as [INC_SYS_USER_GROUP_U_SUB_SUPPLIER]
	  	  --Incident CMDB CI
	  ,INCCI.ASSET_TAG as INC_CMDB_ASSET_TAG
,INCCI.ASSIGNED as INC_CMDB_ASSIGNED
,CMDBASSN.SU_NAME as INC_CMDB_ASSIGNED_TO
,INCCI.ATTRIBUTES as INC_CMDB_ATTRIBUTES
,INCCI.CATEGORY as INC_CMDB_CATEGORY
,INCCI.CHANGE_CONTROL as INC_CMDB_CHANGE_CONTROL
,INCCI.COMMENTS as INC_CMDB_COMMENTS
,INCCI.COMPANY as INC_CMDB_COMPANY
,INCCI.COST as INC_CMDB_COST
,INCCI.COST_CC as INC_CMDB_COST_CC
,INCCI.COST_CENTER as INC_CMDB_COST_CENTER
,INCCI.DELIVERY_DATE as INC_CMDB_DELIVERY_DATE
,INCCI.DEPARTMENT as INC_CMDB_DEPARTMENT
,INCCI.DISCOVERY_SOURCE as INC_CMDB_DISCOVERY_SOURCE
,INCCI.DNS_DOMAIN as INC_CMDB_DNS_DOMAIN
,INCCI.DUE as INC_CMDB_DUE
,INCCI.DUE_IN as INC_CMDB_DUE_IN
,INCCI.FAULT_COUNT as INC_CMDB_FAULT_COUNT
,INCCI.FIRST_DISCOVERED as INC_CMDB_FIRST_DISCOVERED
,INCCI.FQDN as INC_CMDB_FQDN
,INCCI.GL_ACCOUNT as INC_CMDB_GL_ACCOUNT
,INCCI.INSTALL_DATE as INC_CMDB_INSTALL_DATE
,INCCI.INSTALL_STATUS as INC_CMDB_INSTALL_STATUS
,INCCI.INVOICE_NUMBER as INC_CMDB_INVOICE_NUMBER
,INCCI.JUSTIFICATION as INC_CMDB_JUSTIFICATION
,INCCI.LAST_DISCOVERED as INC_CMDB_LAST_DISCOVERED
,INCCI.LOCATION as INC_CMDB_LOCATION
,INCCI.MAINTENANCE_SCHEDULE as INC_CMDB_MAINTENANCE_SCHEDULE
,INCCI.MANAGED_BY as INC_CMDB_MANAGED_BY
,INCCI.MODEL_NUMBER as INC_CMDB_MODEL_NUMBER
,INCCI.NAME as INC_CMDB_NAME
,INCCI.OPERATIONAL_STATUS as INC_CMDB_OPERATIONAL_STATUS
,INCCI.ORDER_DATE as INC_CMDB_ORDER_DATE
,INCCI.OWNED_BY as INC_CMDB_OWNED_BY
,INCCI.PO_NUMBER as INC_CMDB_PO_NUMBER
,INCCI.PURCHASE_DATE as INC_CMDB_PURCHASE_DATE
,INCCI.SCHEDULE as INC_CMDB_SCHEDULE
,INCCI.SERIAL_NUMBER as INC_CMDB_SERIAL_NUMBER
,INCCI.SHORT_DESCRIPTION as INC_CMDB_SHORT_DESCRIPTION
,INCCI.START_DATE as INC_CMDB_START_DATE
,INCCI.SUBCATEGORY as INC_CMDB_SUBCATEGORY
,INCCI.SUPPORT_GROUP as INC_CMDB_SUPPORT_GROUP
,INCCI.SUPPORTED_BY as INC_CMDB_SUPPORTED_BY
,INCCI.SYS_CLASS_NAME as INC_CMDB_SYS_CLASS_NAME
,INCCI.SYS_CREATED_BY as INC_CMDB_SYS_CREATED_BY
,INCCI.SYS_CREATED_ON as INC_CMDB_SYS_CREATED_ON
,INCCI.SYS_UPDATED_BY as INC_CMDB_SYS_UPDATED_BY
,INCCI.SYS_UPDATED_ON as INC_CMDB_SYS_UPDATED_ON
,INCCI.U_AD_LOCATION as INC_CMDB_U_AD_LOCATION
,INCCI.U_APPROVED_RFC as INC_CMDB_U_APPROVED_RFC
,INCCI.U_CI_ALIAS as INC_CMDB_U_CI_ALIAS
,INCCI.U_CI_CATEGORY as INC_CMDB_U_CI_CATEGORY
,INCCI.U_DATACENTER as INC_CMDB_U_DATACENTER
,INCCI.U_DR_COVERAGE as INC_CMDB_U_DR_COVERAGE
,INCCI.U_DR_TIER_LEVEL as INC_CMDB_U_DR_TIER_LEVEL
,INCCI.U_ENVIRONMENT as INC_CMDB_U_ENVIRONMENT
,INCCI.U_IP_NETMASK as INC_CMDB_U_IP_NETMASK
,INCCI.U_REGION as INC_CMDB_U_REGION
,INCCI.U_REPORTING_CATEGORIES as INC_CMDB_U_REPORTING_CATEGORIES
,INCCI.U_SCIENCELOGIC_REGION as INC_CMDB_U_SCIENCELOGIC_REGION
,INCCI.U_SUB_TYPE as INC_CMDB_U_SUB_TYPE
,INCCI.U_TYPE as INC_CMDB_U_TYPE
,INCCI.VENDOR as INC_CMDB_VENDOR
,INCCI.WARRANTY_EXPIRATION as INC_CMDB_WARRANTY_EXPIRATION
,INCCI.UNVERIFIED as INC_CMDB_UNVERIFIED

      ,SLA.[TASK_SLA_ACTIVE]
      ,SLA.[TASK_SLA_BUSINESS_DURATION]
      ,SLA.[TASK_SLA_BUSINESS_PAUSE_DURATION]
      ,SLA.[TASK_SLA_BBUSINESS_PERCENTAGE]
      ,SLA.[TASK_SLA_BUSINESS_TIME_LEFT]
      ,SLA.[TASK_SLA_DURATION]
      ,SLA.[TASK_SLA_END_TIME]
      ,SLA.[TASK_SLA_HAS_BREACHED]
      ,SLA.[TASK_SLA_PAUSE_DURATION]
      ,SLA.[TASK_SLA_PAUSE_TIME]
      ,SLA.[TASK_SLA_PERCENTAGE]
      ,SLA.[TASK_SLA_PLANNED_END_TIME]
      ,SLA.[TASK_SLA_STAGE]
      ,SLA.[TASK_SLA_START_TIME]
      ,SLA.[TASK_SLA_SYS_CREATED_BY]
      ,SLA.[TASK_SLA_SYS_CREATED_ON]
      ,SLA.[TASK_SLA_SYS_UPDATED_BY]
      ,SLA.[TASK_SLA_SYS_UPDATED_ON]
      ,SLA.[TASK_SLA_TIME_LEFT]
      ,SLA.[TASK_SLA_TIMEZONE]
      ,SLA.[TASK_SLA_U_SLA_AGEING]
      ,SLA.[TASK_SLA_U_SLA_EXCEPTION]
      ,SLA.[TASK_SLA_U_WORK_NOTES]
	  ,CSLA.[CSLA_ACTIVE]
      ,CSLA.[CSLA_COLLECTION]
      ,CSLA.[CSLA_CONDITION_CLASS]
      ,CSLA.[CSLA_DURATION]
      ,CSLA.[CSLA_NAME]
      ,CSLA.[CSLA_RELATIVE_DURATION_WORKS_ON]
      ,CSLA.[CSLA_RESET_CONDITION]
      ,CSLA.[CSLA_RETROACTIVE]
      ,CSLA.[CSLA_SET_START_TO]
      ,CSLA.[CSLA_SYS_CREATED_BY]
      ,CSLA.[CSLA_SYS_CREATED_ON]
      ,CSLA.[CSLA_SYS_OVERRIDES]
      ,CSLA.[CSLA_SYS_UPDATED_BY]
      ,CSLA.[CSLA_SYS_UPDATED_ON]
      ,CSLA.[CSLA_TIMEZONE]
      ,CSLA.[CSLA_TYPE]

	  --Problem Task and Problem 
    ,[PT_ACTIVE]
      ,[PT_ACTIVITY_DUE]
      ,[PT_APPROVAL]
      ,[PT_APPROVAL_HISTORY]
      ,[PT_APPROVAL_SET]
      ,PTSUASSN.SU_NAME as [PT_ASSIGNED_TO]
      ,PTSUG.SUG_NAME as [PT_ASSIGNMENT_GROUP]
      ,[PT_BUSINESS_DURATION]
      ,[PT_CALENDAR_DURATION]
      ,[PT_CLOSE_NOTES]
      ,[PT_CLOSED_AT]
      ,PTSUCLOS.SU_NAME as [PT_CLOSED_BY]
      ,[PT_COMMENTS]
      ,[PT_COMMENTS_AND_WORK_NOTES]
      ,[PT_COMPANY]
      ,[PT_CONTACT_TYPE]
      ,[PT_DESCRIPTION]
      ,[PT_DUE_DATE]
      ,[PT_ESCALATION]
      ,[PT_EXPECTED_START]
      ,[PT_FOLLOW_UP]
      ,[PT_GROUP_LIST]
      ,[PT_IMPACT]
      ,[PT_KNOWLEDGE]
      ,[PT_LOCATION]
      ,[PT_MADE_SLA]
      ,[PT_NUMBER]
      ,[PT_OPENED_AT]
      
      , PTSUOPEN.SU_NAME as [PT_OPENED_BY]
      ,[PT_ORDER]
      ,[PT_PARENT]
      ,[PT_PRIORITY]
      ,[PT_REASSIGNMENT_COUNT]
      ,[PT_SHORT_DESCRIPTION]
      ,[PT_SKILLS]
      ,[PT_SLA_DUE]
      ,CASE 
		WHEN [PT_STATE] = 0  THEN ''
		WHEN [PT_STATE] = 1  THEN 'Open'
		WHEN [PT_STATE] = 2  THEN 'Work in Progress'
		WHEN [PT_STATE] = 3  THEN 'Closed Complete'
		WHEN [PT_STATE] = 4  THEN 'Closed Incomplete'
		WHEN [PT_STATE] = -5  THEN 'Pending'
		WHEN [PT_STATE] = 6  THEN 'Pending Action'
		WHEN [PT_STATE] = 10  THEN 'RCA Under Review'
		WHEN [PT_STATE] = 11  THEN 'Assigned'
		WHEN [PT_STATE] = 12  THEN 'RCA Submitted'
		WHEN [PT_STATE] = 14  THEN 'Pending Approval'
		ELSE
		CONVERT(VARCHAR,ISNULL([PT_STATE],''))
		END 
as [PT_STATE]
      ,[PT_SYS_CLASS_NAME]
      ,[PT_SYS_CREATED_BY]
      ,[PT_SYS_CREATED_ON]
      ,[PT_SYS_ID]
      ,[PT_SYS_UPDATED_BY]
      ,[PT_SYS_UPDATED_ON]
      ,[PT_TIME_WORKED]
      ,[PT_U_A_QUESTION_1]
      ,[PT_U_ACTION_LIST]
      ,[PT_U_ANSWER]
      ,[PT_U_ASSIGNMENT_GROUP_TYPE]
      ,[PT_U_CHANGE_NUMBER]
      ,[PT_U_CHANGE_REQUEST_RELATED]
      ,[PT_U_CONFIGURATION_ITEMS_IMPACTED]
      ,[PT_U_CORRECTIVE_ACTIONS]
      ,[PT_U_DUE_BY]
      ,[PT_U_DURATION]
      ,[PT_U_INCIDENT_END_DATE]
      ,[PT_U_INCIDENT_GP_TYPE]
      ,[PT_U_INCIDENT_RESOLUTION]
      ,[PT_U_INCIDENT_START_DATE]
      ,[PT_U_KNOWN_ERROR]
      ,[PT_U_NETWORK_OUTAGE]
      ,[PT_U_PRIORITY]
      ,[PT_U_PROBLEM_DESCRIPTION]
      ,[PT_U_PROBLEM_LOCATION]
      ,[PT_U_PROBLEM_RECORD_NUMBER]
      ,[PT_U_PROBLEMS_BUSINESS_IMPACT]
      ,[PT_U_QUESTION_2]
      ,[PT_U_QUESTION_3]
      ,[PT_U_QUESTION_4]
      ,[PT_U_QUESTION_5]
      ,[PT_U_QUESTION_6]
      ,[PT_U_RCA_APPROVED_BY]
      ,[PT_U_RCA_COMPLETED_DATE]
      ,[PT_U_RCA_REQUESTED_BY]
      ,[PT_U_RELATED_INCIDENT_NO]
      ,[PT_U_REQ]
      ,[PT_U_ROOT_CAUSE_CODE]
      ,[PT_U_ROOT_CAUSE_DETAILS]
      ,[PT_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,[PT_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,[PT_U_ROOT_CAUSE_SUPPORTER]
      ,[PT_U_STATUS_REASON]
      ,[PT_U_SUPPLIER]
      ,[PT_U_TARGET_DATE]
      ,[PT_U_TASK_PRIORITY]
      ,[PT_U_WHEN_FIRST]
      ,[PT_U_WHEN_LAST]
      ,[PT_U_WORKAROUND]
      ,[PT_UPON_APPROVAL]
      ,[PT_UPON_REJECT]
      ,[PT_URGENCY]
      ,[PT_USER_INPUT]
      ,[PT_WATCH_LIST]
      ,[PT_WORK_END]
      ,[PT_WORK_NOTES]
      ,[PT_WORK_NOTES_LIST]
      ,[PT_WORK_START]
	  ,PRBTSKCI.ASSET_TAG as PT_CMDB_ASSET_TAG
,PRBTSKCI.ASSIGNED as PT_CMDB_ASSIGNED
,PRBTSKCI.ASSIGNED_TO_VALUE as PT_CMDB_ASSIGNED_TO_VALUE
,PRBTSKCI.ATTRIBUTES as PT_CMDB_ATTRIBUTES
,PRBTSKCI.CATEGORY as PT_CMDB_CATEGORY
,PRBTSKCI.CHANGE_CONTROL as PT_CMDB_CHANGE_CONTROL
,PRBTSKCI.COMMENTS as PT_CMDB_COMMENTS
,PRBTSKCI.COMPANY as PT_CMDB_COMPANY
,PRBTSKCI.COST as PT_CMDB_COST
,PRBTSKCI.COST_CC as PT_CMDB_COST_CC
,PRBTSKCI.COST_CENTER as PT_CMDB_COST_CENTER
,PRBTSKCI.DELIVERY_DATE as PT_CMDB_DELIVERY_DATE
,PRBTSKCI.DEPARTMENT as PT_CMDB_DEPARTMENT
,PRBTSKCI.DISCOVERY_SOURCE as PT_CMDB_DISCOVERY_SOURCE
,PRBTSKCI.DNS_DOMAIN as PT_CMDB_DNS_DOMAIN
,PRBTSKCI.DUE as PT_CMDB_DUE
,PRBTSKCI.DUE_IN as PT_CMDB_DUE_IN
,PRBTSKCI.FAULT_COUNT as PT_CMDB_FAULT_COUNT
,PRBTSKCI.FIRST_DISCOVERED as PT_CMDB_FIRST_DISCOVERED
,PRBTSKCI.FQDN as PT_CMDB_FQDN
,PRBTSKCI.GL_ACCOUNT as PT_CMDB_GL_ACCOUNT
,PRBTSKCI.INSTALL_DATE as PT_CMDB_INSTALL_DATE
,PRBTSKCI.INSTALL_STATUS as PT_CMDB_INSTALL_STATUS
,PRBTSKCI.INVOICE_NUMBER as PT_CMDB_INVOICE_NUMBER
,PRBTSKCI.JUSTIFICATION as PT_CMDB_JUSTIFICATION
,PRBTSKCI.LAST_DISCOVERED as PT_CMDB_LAST_DISCOVERED
,PRBTSKCI.LOCATION as PT_CMDB_LOCATION
,PRBTSKCI.MAINTENANCE_SCHEDULE as PT_CMDB_MAINTENANCE_SCHEDULE
,PRBTSKCI.MANAGED_BY as PT_CMDB_MANAGED_BY
,PRBTSKCI.MODEL_NUMBER as PT_CMDB_MODEL_NUMBER
,PRBTSKCI.NAME as PT_CMDB_NAME
,PRBTSKCI.OPERATIONAL_STATUS as PT_CMDB_OPERATIONAL_STATUS
,PRBTSKCI.ORDER_DATE as PT_CMDB_ORDER_DATE
,PRBTSKCI.OWNED_BY as PT_CMDB_OWNED_BY
,PRBTSKCI.PO_NUMBER as PT_CMDB_PO_NUMBER
,PRBTSKCI.PURCHASE_DATE as PT_CMDB_PURCHASE_DATE
,PRBTSKCI.SCHEDULE as PT_CMDB_SCHEDULE
,PRBTSKCI.SERIAL_NUMBER as PT_CMDB_SERIAL_NUMBER
,PRBTSKCI.SHORT_DESCRIPTION as PT_CMDB_SHORT_DESCRIPTION
,PRBTSKCI.START_DATE as PT_CMDB_START_DATE
,PRBTSKCI.SUBCATEGORY as PT_CMDB_SUBCATEGORY
,PRBTSKCI.SUPPORT_GROUP as PT_CMDB_SUPPORT_GROUP
,PRBTSKCI.SUPPORTED_BY as PT_CMDB_SUPPORTED_BY
,PRBTSKCI.SYS_CLASS_NAME as PT_CMDB_SYS_CLASS_NAME
,PRBTSKCI.SYS_CREATED_BY as PT_CMDB_SYS_CREATED_BY
,PRBTSKCI.SYS_CREATED_ON as PT_CMDB_SYS_CREATED_ON
,PRBTSKCI.SYS_UPDATED_BY as PT_CMDB_SYS_UPDATED_BY
,PRBTSKCI.SYS_UPDATED_ON as PT_CMDB_SYS_UPDATED_ON
,PRBTSKCI.U_AD_LOCATION as PT_CMDB_U_AD_LOCATION
,PRBTSKCI.U_APPROVED_RFC as PT_CMDB_U_APPROVED_RFC
,PRBTSKCI.U_CI_ALIAS as PT_CMDB_U_CI_ALIAS
,PRBTSKCI.U_CI_CATEGORY as PT_CMDB_U_CI_CATEGORY
,PRBTSKCI.U_DATACENTER as PT_CMDB_U_DATACENTER
,PRBTSKCI.U_DR_COVERAGE as PT_CMDB_U_DR_COVERAGE
,PRBTSKCI.U_DR_TIER_LEVEL as PT_CMDB_U_DR_TIER_LEVEL
,PRBTSKCI.U_ENVIRONMENT as PT_CMDB_U_ENVIRONMENT
,PRBTSKCI.U_IP_NETMASK as PT_CMDB_U_IP_NETMASK
,PRBTSKCI.U_REGION as PT_CMDB_U_REGION
,PRBTSKCI.U_REPORTING_CATEGORIES as PT_CMDB_U_REPORTING_CATEGORIES
,PRBTSKCI.U_SCIENCELOGIC_REGION as PT_CMDB_U_SCIENCELOGIC_REGION
,PRBTSKCI.U_SUB_TYPE as PT_CMDB_U_SUB_TYPE
,PRBTSKCI.U_TYPE as PT_CMDB_U_TYPE
,PRBTSKCI.VENDOR as PT_CMDB_VENDOR
,PRBTSKCI.WARRANTY_EXPIRATION as PT_CMDB_WARRANTY_EXPIRATION

,P.P_SYS_ID
,[P_ACTIVE]
      ,[P_ACTIVITY_DUE]
      ,[P_APPROVAL]
      ,[P_APPROVAL_HISTORY]
      ,[P_APPROVAL_SET]
      , PSUASSN.SU_NAME as [P_ASSIGNED_TO]
      ,PSUG.SUG_NAME as [P_ASSIGNMENT_GROUP]
      ,[P_BUSINESS_DURATION]
      ,[P_CALENDAR_DURATION]
      ,[P_CLOSE_NOTES]
      ,[P_CLOSED_AT]
      ,PSUCLOS.SU_NAME  as [P_CLOSED_BY_VALUE]
      
      ,[P_COMMENTS]
      ,[P_COMMENTS_AND_WORK_NOTES]
      ,[P_COMPANY]
      ,[P_CONTACT_TYPE]
      ,[P_DESCRIPTION]
      ,[P_DUE_DATE]
      ,[P_ESCALATION]
      ,[P_EXPECTED_START]
      ,[P_FOLLOW_UP]
      ,[P_GROUP_LIST]
      ,[P_IMPACT]
      ,[P_KNOWLEDGE]
      ,[P_KNOWN_ERROR]
      ,[P_LOCATION_VALUE]
      ,[P_MADE_SLA]
      ,[P_NUMBER]
      ,[P_OPENED_AT]
      ,PSUOPEN.SU_NAME as [P_OPENED_BY_VALUE]
      ,[P_ORDER]
      ,[P_PRIORITY]
      ,CASE 
		WHEN [P_PROBLEM_STATE] = 0 THEN ''
		WHEN [P_PROBLEM_STATE] = 1  THEN 'New'
		WHEN [P_PROBLEM_STATE] = 2  THEN 'In Queue'
		WHEN [P_PROBLEM_STATE] = 3  THEN 'Assigned'
		WHEN [P_PROBLEM_STATE] = 5  THEN 'Known Error'
		WHEN [P_PROBLEM_STATE] = 4  THEN 'Work in Progress'
		WHEN [P_PROBLEM_STATE] = 6  THEN 'Pending'
		WHEN [P_PROBLEM_STATE] = 7  THEN 'Resolved/Closed'
		ELSE
		CONVERT(VARCHAR,ISNULL([P_PROBLEM_STATE],''))
		END
		as [P_PROBLEM_STATE]
      ,[P_REASSIGNMENT_COUNT]
      ,[P_RELATED_INCIDENTS]
      ,[P_RFC]
      ,[P_SHORT_DESCRIPTION]
      ,[P_SKILLS]
      ,[P_SLA_DUE]
      ,	CASE 
		WHEN [P_STATE] = 0 THEN ''
		WHEN [P_STATE] = 1  THEN 'New'
		WHEN [P_STATE] = 2  THEN 'In Queue'
		WHEN [P_STATE] = 3  THEN 'Assigned'
		WHEN [P_STATE] = 5  THEN 'Known Error'
		WHEN [P_STATE] = 4  THEN 'Work in Progress'
		WHEN [P_STATE] = 6  THEN 'Pending'
		WHEN [P_STATE] = 7  THEN 'Resolved/Closed'
		ELSE
		CONVERT(VARCHAR,ISNULL([P_STATE],''))
		END
		as [P_STATE]
      ,[P_SYS_CREATED_BY]
      ,[P_SYS_CREATED_ON]
      ,[P_SYS_UPDATED_BY]
      ,[P_SYS_UPDATED_ON]
      ,[P_TIME_WORKED]
      ,[P_U_ASSIGNMENT_GROUP_TYPE]
      ,[P_U_CATEGORY]
      ,[P_U_CI_CATEGORY]
      ,[P_U_CI_CLASSIFICATION]
      ,[P_U_CI_TYPE]
      ,[P_U_FAILING_COMPONENT___DEVISE__]
      ,[P_U_INCIDENT_GP_TYPE]
      ,[P_U_KB_ARTICLE_FOR_KNOWN_ERROR]
      ,[P_U_LESSONS_LEARNED]
      ,[P_U_MISSING_CI]
      ,[P_U_MISSING_CI_REQUIRED]
      ,[P_U_PROBLEM_OCCURRED_DATE]
      ,[P_U_PROBLEMS_BUSINESS_IMPACT]
      ,[P_U_RCA_PARTICIPANTS]
      ,[P_U_RCA_REQUESTED_BY]
      ,[P_U_RCA_REVIEW_MEETING_DATE]
      ,[P_U_REGION]
      ,[P_U_RESOLUTION_CODE]
      ,[P_U_ROOT_CAUSE]
      ,[P_U_ROOT_CAUSE_ANALYSIS]
      ,[P_U_ROOT_CAUSE_DETAILS]
      ,[P_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,[P_U_ROOT_CAUSE_JUSTIFICATION]
      ,[P_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,[P_U_SOURCE]
      ,[P_U_STATUS_REASON]
      ,[P_U_SUBCATEGORY]
      ,[P_U_SUPPLIER]
      ,[P_U_VENDOR]
      ,[P_U_VENDOR_TICKET_NO_]
      ,[P_UPON_APPROVAL]
      ,[P_UPON_REJECT]
      ,[P_URGENCY]
      ,[P_USER_INPUT]
      ,[P_WATCH_LIST]
      ,[P_WORK_AROUND]
      ,[P_WORK_END]
      ,[P_WORK_NOTES]
      ,[P_WORK_NOTES_LIST]
      ,[P_WORK_START]
	 	  ,PRBCI.ASSET_TAG as P_CMDB_ASSET_TAG
,PRBCI.ASSIGNED as P_CMDB_ASSIGNED
,PRBCI.ASSIGNED_TO_VALUE as P_CMDB_ASSIGNED_TO_VALUE
,PRBCI.ATTRIBUTES as P_CMDB_ATTRIBUTES
,PRBCI.CATEGORY as P_CMDB_CATEGORY
,PRBCI.CHANGE_CONTROL as P_CMDB_CHANGE_CONTROL
,PRBCI.COMMENTS as P_CMDB_COMMENTS
,PRBCI.COMPANY as P_CMDB_COMPANY
,PRBCI.COST as P_CMDB_COST
,PRBCI.COST_CC as P_CMDB_COST_CC
,PRBCI.COST_CENTER as P_CMDB_COST_CENTER
,PRBCI.DELIVERY_DATE as P_CMDB_DELIVERY_DATE
,PRBCI.DEPARTMENT as P_CMDB_DEPARTMENT
,PRBCI.DISCOVERY_SOURCE as P_CMDB_DISCOVERY_SOURCE
,PRBCI.DNS_DOMAIN as P_CMDB_DNS_DOMAIN
,PRBCI.DUE as P_CMDB_DUE
,PRBCI.DUE_IN as P_CMDB_DUE_IN
,PRBCI.FAULT_COUNT as P_CMDB_FAULT_COUNT
,PRBCI.FIRST_DISCOVERED as P_CMDB_FIRST_DISCOVERED
,PRBCI.FQDN as P_CMDB_FQDN
,PRBCI.GL_ACCOUNT as P_CMDB_GL_ACCOUNT
,PRBCI.INSTALL_DATE as P_CMDB_INSTALL_DATE
,PRBCI.INSTALL_STATUS as P_CMDB_INSTALL_STATUS
,PRBCI.INVOICE_NUMBER as P_CMDB_INVOICE_NUMBER
,PRBCI.JUSTIFICATION as P_CMDB_JUSTIFICATION
,PRBCI.LAST_DISCOVERED as P_CMDB_LAST_DISCOVERED
,PRBCI.LOCATION as P_CMDB_LOCATION
,PRBCI.MAINTENANCE_SCHEDULE as P_CMDB_MAINTENANCE_SCHEDULE
,PRBCI.MANAGED_BY as P_CMDB_MANAGED_BY
,PRBCI.MODEL_NUMBER as P_CMDB_MODEL_NUMBER
,PRBCI.NAME as P_CMDB_NAME
,PRBCI.OPERATIONAL_STATUS as P_CMDB_OPERATIONAL_STATUS
,PRBCI.ORDER_DATE as P_CMDB_ORDER_DATE
,PRBCI.OWNED_BY as P_CMDB_OWNED_BY
,PRBCI.PO_NUMBER as P_CMDB_PO_NUMBER
,PRBCI.PURCHASE_DATE as P_CMDB_PURCHASE_DATE
,PRBCI.SCHEDULE as P_CMDB_SCHEDULE
,PRBCI.SERIAL_NUMBER as P_CMDB_SERIAL_NUMBER
,PRBCI.SHORT_DESCRIPTION as P_CMDB_SHORT_DESCRIPTION
,PRBCI.START_DATE as P_CMDB_START_DATE
,PRBCI.SUBCATEGORY as P_CMDB_SUBCATEGORY
,PRBCI.SUPPORT_GROUP as P_CMDB_SUPPORT_GROUP
,PRBCI.SUPPORTED_BY as P_CMDB_SUPPORTED_BY
,PRBCI.SYS_CLASS_NAME as P_CMDB_SYS_CLASS_NAME
,PRBCI.SYS_CREATED_BY as P_CMDB_SYS_CREATED_BY
,PRBCI.SYS_CREATED_ON as P_CMDB_SYS_CREATED_ON
,PRBCI.SYS_UPDATED_BY as P_CMDB_SYS_UPDATED_BY
,PRBCI.SYS_UPDATED_ON as P_CMDB_SYS_UPDATED_ON
,PRBCI.U_AD_LOCATION as P_CMDB_U_AD_LOCATION
,PRBCI.U_APPROVED_RFC as P_CMDB_U_APPROVED_RFC
,PRBCI.U_CI_ALIAS as P_CMDB_U_CI_ALIAS
,PRBCI.U_CI_CATEGORY as P_CMDB_U_CI_CATEGORY
,PRBCI.U_DATACENTER as P_CMDB_U_DATACENTER
,PRBCI.U_DR_COVERAGE as P_CMDB_U_DR_COVERAGE
,PRBCI.U_DR_TIER_LEVEL as P_CMDB_U_DR_TIER_LEVEL
,PRBCI.U_ENVIRONMENT as P_CMDB_U_ENVIRONMENT
,PRBCI.U_IP_NETMASK as P_CMDB_U_IP_NETMASK
,PRBCI.U_REGION as P_CMDB_U_REGION
,PRBCI.U_REPORTING_CATEGORIES as P_CMDB_U_REPORTING_CATEGORIES
,PRBCI.U_SCIENCELOGIC_REGION as P_CMDB_U_SCIENCELOGIC_REGION
,PRBCI.U_SUB_TYPE as P_CMDB_U_SUB_TYPE
,PRBCI.U_TYPE as P_CMDB_U_TYPE
,PRBCI.VENDOR as P_CMDB_VENDOR
,PRBCI.WARRANTY_EXPIRATION as P_CMDB_WARRANTY_EXPIRATION
---TASK0472106 added columns for SLA Exception---
,I_SLA.SLA_EX_NUMBER as I_SLA_EX_NUMBER
,I_SLA.SLA_EX_U_STATUS as I_SLA_EX_U_STATUS
,I_SLA.SLA_EX_U_SUPPLIER as I_SLA_EX_U_SUPPLIER
,I_SLA.SLA_EX_U_RELATED_RECORD as I_SLA_EX_RELATED_RECORDS
,I_SLA.SLA_EX_U_EXCEPTION_TYPE as I_SLA_EX_U_EXCEPTION_TYPE
,I_SLA.SLA_EX_SHORT_DESCRIPTION as I_SLA_EX_SHORT_DESCRIPTION
,I_SLA.SLA_EX_UPON_APPROVAL as I_SLA_EX_UPON_APPROVAL
,I_SLA.SLA_EX_U_JUSTIFICATION_TYPE as I_SLA_EX_U_JUSTIFICATION_TYPE
,I_SLA.SLA_EX_OPENED_AT as I_SLA_EX_OPENED_AT 
,SLAUSUER.SU_NAME as I_SLA_EX_OPENED_BY
---TASK0472106 added columns for SLA Exception---
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_TASK_SLA] SLA ON SLA.TASK_SLA_TASK_VALUE=I.INC_SYS_ID
LEFT JOIN  [KG_VIEWS].[KG_SNOW].[UVW_CONTRACT_SLA] CSLA ON CSLA.[CSLA_SYS_ID]=SLA.[TASK_SLA_SLA_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_CMDB_CI] INCCI ON I.INC_CMDB_CI_VALUE=INCCI.SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUASSN ON  SUASSN.[SU_SYS_ID]=I.[INC_ASSIGNED_TO_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUCLOS ON  SUCLOS.[SU_SYS_ID]=I.[INC_CLOSED_BY_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUOPEN ON  SUOPEN.[SU_SYS_ID]=I.INC_OPENED_BY_VALUE 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SURESO ON SURESO.SU_SYS_ID=I.[INC_RESOLVED_BY_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUREPO ON SUREPO.SU_SYS_ID=I.[INC_U_REPORTED_BY_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER CMDBASSN ON CMDBASSN.SU_SYS_ID=INCCI.ASSIGNED_TO_VALUE
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_INCIDENT PARI ON PARI.INC_SYS_ID=I.INC_PARENT_INCIDENT_VALUE
FULL JOIN [KG_VIEWS].[KG_SNOW].[UVW_PROBLEM] P on P.P_SYS_ID=I.INC_PROBLEM_ID --- //CHANGED JOIN CONDITION TO SET PROBLEM COUNT//
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUOPEN ON  PSUOPEN.[SU_SYS_ID]=P.[P_OPENED_BY_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUASSN ON  PSUASSN.[SU_SYS_ID]=P.[P_ASSIGNED_TO_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUCLOS ON  PSUCLOS.[SU_SYS_ID]=P.[P_CLOSED_BY_VALUE] 
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG PSUG ON PSUG.SUG_SYS_ID=P.P_ASSIGNMENT_GROUP_VALUE
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI PRBCI on P.[P_CMDB_CI_VALUE]=PRBCI.SYS_ID
FULL JOIN  [KG_VIEWS].[KG_SNOW].[UVW_PROBLEM_TASK] PT ON PT.PT_PROBLEM_VALUE=P.P_SYS_ID--- //CHANGED JOIN CONDITION TO SET PROBLEM TASK COUNT//
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUOPEN ON  PTSUOPEN.[SU_SYS_ID]=PT.[PT_OPENED_BY_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUASSN ON  PTSUASSN.[SU_SYS_ID]=PT.[PT_ASSIGNED_TO_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUCLOS ON  PTSUCLOS.[SU_SYS_ID]=PT.[PT_CLOSED_BY_VALUE] 
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG PTSUG ON PTSUG.SUG_SYS_ID=PT.PT_ASSIGNMENT_GROUP_VALUE
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI PRBTSKCI on PT.[PT_CMDB_CI_VALUE]=PRBTSKCI.SYS_ID
FULL JOIN [KG_VIEWS].[KG_SNOW].[UVW_U_SLA_EXCEPTION] I_SLA on I_SLA.SLA_EX_U_RELATED_RECORD_VALUE = I.INC_SYS_ID -- added part of TASK0472106 to bring correct exception columns
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SLAUSUER on SLAUSUER.[SU_SYS_ID] = I_SLA.SLA_EX_OPENED_BY_VALUE  -- added part of TASK0472106 to bring correct exception columns

UNION ALL

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT NULL as [INC_ACTIVE]
      ,NULL as [INC_ACTIVITY_DUE]
      ,NULL as [INC_APPROVAL]
      ,NULL as [INC_APPROVAL_HISTORY]
      ,NULL as [INC_APPROVAL_SET]
      ,NULL as [INC_ASSIGNED_TO]
      ,NULL as [INC_BUSINESS_DURATION]
      ,NULL as [INC_BUSINESS_STC]
      ,NULL as [INC_CALENDAR_DURATION]
      ,NULL as [INC_CALENDAR_STC]
      ,NULL as [INC_CATEGORY]
      ,NULL as [INC_CAUSED_BY]
      ,NULL as [INC_CHILD_INCIDENTS]
      ,NULL as [INC_CLOSE_CODE]
      ,NULL as [INC_CLOSE_NOTES]
      ,[ISS_ACTUALCOMPLETIONDATE] as [INC_CLOSED_AT]
      ,NULL as [INC_CLOSED_BY]
      ,NULL as [INC_COMMENTS]
      ,NULL as [INC_COMMENTS_AND_WORK_NOTES]
      ,NULL as [INC_CONTACT_TYPE]
      ,NULL as [INC_DESCRIPTION]
      ,NULL as [INC_DUE_DATE]
      ,NULL as [INC_ESCALATION]
      ,NULL as [INC_EXPECTED_START]
      ,NULL as [INC_FOLLOW_UP]
      ,NULL as [INC_GROUP_LIST]
      ,NULL as [INC_IMPACT]
      ,NULL as [INC_INCIDENT_STATE]
      ,NULL as [INC_KNOWLEDGE]
      ,NULL as [INC_MADE_SLA]
      ,NULL as [INC_NOTIFY]
      ,CONVERT(varchar(40),[ISS_REFERENCENUMBER]) as [INC_NUMBER]
      ,[ISS_ENTRYDATE] as [INC_OPENED_AT]
      ,NULL as [INC_OPENED_BY]
      ,NULL as [INC_ORDER]
      ,NULL as [INC_PARENT]
      ,NULL as [INC_PARENT_INCIDENT_NUMBER]
	  ,CASE WHEN [ISS_PRIORITY] = 1 THEN 4
			WHEN [ISS_PRIORITY] = 2 THEN 3
			WHEN [ISS_PRIORITY] = 3 THEN 2
			WHEN [ISS_PRIORITY] = 4 THEN 1
			ELSE [ISS_PRIORITY]
		END as [INC_PRIORITY]
      ,NULL as [INC_PROBLEM_ID]
      ,NULL as [INC_REASSIGNMENT_COUNT]
      ,NULL as [INC_REOPEN_COUNT]
      ,[ISS_ACTUALCOMPLETIONDATE] as [INC_RESOLVED_AT]
      ,NULL as [INC_RESOLVED_BY]
      ,ISS_SEVERITY as [INC_SEVERITY]
      ,ISS_NAME as [INC_SHORT_DESCRIPTION]
      ,NULL as [INC_SKILLS]
      ,NULL as [INC_SLA_DUE]
      ,CASE 
WHEN [ISS_STATUS] = 'NEW' THEN 'New'  
WHEN [ISS_STATUS] = 'RLV'   THEN 'Resolved' 
WHEN [ISS_STATUS] = 'AWF'	THEN 'Pending' 
WHEN [ISS_STATUS] = 'TCO'	THEN 'Work In Progress' 
WHEN [ISS_STATUS] = 'INP'	THEN 'Work In Progress' 
WHEN [ISS_STATUS] = 'DUP'	THEN 'Duplicate' 
WHEN [ISS_STATUS] = 'CLS'	THEN 'Closed' 
WHEN [ISS_STATUS] = 'ROP'	THEN 'Work In Progress' 
END   as [INC_STATE]
      ,NULL as [INC_SUBCATEGORY]
      ,NULL as [INC_SYS_CLASS_NAME]
      ,NULL as [INC_SYS_CREATED_BY]
      ,[ISS_ENTRYDATE] as [INC_SYS_CREATED_ON]
      ,NULL as [INC_SYS_MOD_COUNT]
      ,NULL as [INC_SYS_UPDATED_BY]
      ,[ISS_LASTUPDATEDATE] as [INC_SYS_UPDATED_ON]
      ,NULL as [INC_TIME_WORKED]
      ,NULL as [INC_U_ACCENTURE_SLA]
      ,NULL as [INC_U_APPOINTMENT_COMPLETED1]
      ,NULL as [INC_U_APPOINTMENT_TIME]
      ,NULL as [INC_U_ASSIGNMENT_GROUP_TYPE]
      ,NULL as [INC_U_BEST_CONTACT_NUMBER]
      ,NULL as [INC_U_BRIDGE_LAUNCHED]
      ,NULL as [INC_U_BRIDGE_REQUESTED]
      ,NULL as [INC_U_CALL_IN_REASON]
      ,NULL as [INC_U_CALL_IN_REASON_COUNTER]
      ,NULL as [INC_U_CAN_BE_RESOLVED_AT_SERVICE_D]
      ,NULL as [INC_U_CATEGORY_1]
      ,NULL as [INC_U_CATEGORY_2]
      ,NULL as [INC_U_CATEGORY_3]
      ,NULL as [INC_U_CHANGE_REQUEST]
      ,NULL as [INC_U_CI_CATEGORY]
      ,NULL as [INC_U_CI_CLASSIFICATION]
      ,NULL as [INC_U_CI_TYPE]
      ,NULL as [INC_U_CRITICAL_INCIDENT]
      ,NULL as [INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS]
      ,NULL as [INC_U_DEFECT_ID_]
      ,NULL as [INC_U_DISPATCH_TYPE]
      ,NULL as [INC_U_DSS___]
      ,NULL as [INC_U_DSS___OF_VISITS]
      ,NULL as [INC_U_DSS_HANDLE_TIME]
      ,NULL as [INC_U_FCR]
      ,NULL as [INC_U_HUNGARY_QUESTION_1]
      ,NULL as [INC_U_HUNGARY_SURVEY_QUESTION2]
      ,NULL as [INC_U_INCIDENT_GP_TYPE]
      ,NULL as [INC_U_INCIDENT_NEW_PRIORITY]
      ,NULL as [INC_U_INCIDENT_OLD_PRIORITY]
      ,NULL as [INC_U_INFOSYS_KOURIER_SLA]
      ,NULL as [INC_U_INFOSYS_SLA]
      ,NULL as [INC_U_INFOSYS_UNISYS_SLA]
      ,NULL as [INC_U_ISSUE_TYPE]
      ,NULL as [INC_U_JUSTIFICATION]
      ,NULL as [INC_U_KELLOGGS_SLA]
      ,NULL as [INC_U_KNOWLEDGE_CANDIDATE]
      ,NULL as [INC_U_KNOWLEDGE_USED]
      ,NULL as [INC_U_L1_RESOLVABLE]
      ,NULL as [INC_U_L1_RESOLVABLE_DESCRIPTION]
      ,NULL as [INC_U_LANGUAGE]
      ,NULL as [INC_U_LOCATION]
      ,NULL as [INC_U_LOCATION_NEW]
      ,NULL as [INC_U_MAJOR_INCIDENT_MANAGER]
      ,NULL as [INC_U_MINDTREE_SLA]
      ,NULL as [INC_U_MISSING_CI]
      ,NULL as [INC_U_MISSING_CI_NAME]
      ,NULL as [INC_U_MONITORING_LOCATION]
      ,NULL as [INC_U_MTR_DURATION]
      ,NULL as [INC_U_OLD_PRIORITY]
      ,NULL as [INC_U_OLD_SUPPLIER]
      ,NULL as [INC_U_OPENED_BY_COMPANY_SUPPLIER]
      ,NULL as [INC_U_PENDING_DUR]
      ,NULL as [INC_U_PENDING_DURATION]
      ,NULL as [INC_U_PENDING_END_TIME]
      ,NULL as [INC_U_PENDING_REASON]
      ,NULL as [INC_U_PENDING_START_TIME]
      ,NULL as [INC_U_PR_METRIC]
      ,NULL as [INC_U_PRB_CANDIDATE_USER]
      ,NULL as [INC_U_PRIORITY_FLAG]
      ,NULL as [INC_U_PROBLEM_CANDIDATE]
      ,NULL as [INC_U_PROBLEM_CREATED]
      ,NULL as [INC_U_REASSIGNMENT]
      ,NULL as [INC_U_REGION]
      ,NULL as [INC_U_REOPENED_DATE]
      ,NULL as [INC_U_REPORTED_BY]
      ,NULL as [INC_U_RESPONSE_SLA]
      ,NULL as [INC_U_SCIENCELOGIC_REGION]
      ,NULL as [INC_U_SD_GROUP]
      ,NULL as [INC_U_SD_RESOLVABLE]
      ,NULL as [INC_U_SD_START_TIME]
      ,NULL as [INC_U_SELECT_CATEGORY]
      ,NULL as [INC_U_SILO_EID]
      ,NULL as [INC_U_SITE_CONTACT]
      ,NULL as [INC_U_SLA_EXCEPTION]
      ,NULL as [INC_U_SLA_SUPPLIER]
      ,NULL as [INC_U_SLA_VALIDATION]
      ,NULL as [INC_U_SRMS_DISPATCH]
      ,NULL as [INC_U_SRMS_LOCATION]
      ,NULL as [INC_U_SRMS_RESOLVED]
      ,NULL as [INC_U_SRMS_STATUS]
      ,NULL as [INC_U_SRMS_TICKET_NUMBER]
      ,NULL as [INC_U_SRMS_UPDATE]
      ,NULL as [INC_U_STYLE_OVERRIDE]
      ,NULL as [INC_U_SUB_SUPPLIER]
      ,'DMIT' as [INC_U_SUPPLIER]
      ,NULL as [INC_U_SURVEY_COMMENTS]
      ,NULL as [INC_U_SURVEY_QUESTION1]
      ,NULL as [INC_U_SURVEY_QUESTION2]
      ,NULL as [INC_U_UNABLE_TO_RESOLVE_AT_SERVICE]
      ,NULL as [INC_U_UNISYS_SLA]
      ,NULL as [INC_U_UNISYS_SRMS_PRODUCT_STYLE]
      ,NULL as [INC_U_VENDOR_NAME]
      ,NULL as [INC_U_VENDOR_TICKET_NUMBER]
      ,NULL as [INC_U_VIP_RESPONSE_TIME]
      ,NULL as [INC_U_WORKAROUND]
      ,NULL as [INC_UPON_APPROVAL]
      ,NULL as [INC_UPON_REJECT]
      ,NULL as [INC_URGENCY]
      ,NULL as [INC_USER_INPUT]
      ,NULL as [INC_WATCH_LIST]
      ,NULL as [INC_WORK_END]
      ,NULL as [INC_WORK_NOTES]
      ,NULL as [INC_WORK_NOTES_LIST]
      ,NULL as [INC_WORK_START]
      ,[ISS_DE:REGION] as [INC_LOC_U_REGION]
      ,NULL as [INC_SYS_USER_U_REGION]
      ,UPPER(COALESCE([ISS_DE:RESPONSIBLE],'Others'))as [INC_SYS_USER_GROUP_NAME] -- //CHANGED TO ADDRESS NULLS ISSUE//
      ,'DMIT' as [INC_SYS_USER_GROUP_TEAM]
      ,NULL as [INC_SYS_USER_GROUP_U_SUB_SUPPLIER]
      ,NULL as [INC_CMDB_ASSET_TAG]
      ,NULL as [INC_CMDB_ASSIGNED]
      ,NULL as [INC_CMDB_ASSIGNED_TO]
      ,NULL as [INC_CMDB_ATTRIBUTES]
      ,NULL as [INC_CMDB_CATEGORY]
      ,NULL as [INC_CMDB_CHANGE_CONTROL]
      ,NULL as [INC_CMDB_COMMENTS]
      ,NULL as [INC_CMDB_COMPANY]
      ,NULL as [INC_CMDB_COST]
      ,NULL as [INC_CMDB_COST_CC]
      ,NULL as [INC_CMDB_COST_CENTER]
      ,NULL as [INC_CMDB_DELIVERY_DATE]
      ,NULL as [INC_CMDB_DEPARTMENT]
      ,NULL as [INC_CMDB_DISCOVERY_SOURCE]
      ,NULL as [INC_CMDB_DNS_DOMAIN]
      ,NULL as [INC_CMDB_DUE]
      ,NULL as [INC_CMDB_DUE_IN]
      ,NULL as [INC_CMDB_FAULT_COUNT]
      ,NULL as [INC_CMDB_FIRST_DISCOVERED]
      ,NULL as [INC_CMDB_FQDN]
      ,NULL as [INC_CMDB_GL_ACCOUNT]
      ,NULL as [INC_CMDB_INSTALL_DATE]
      ,NULL as [INC_CMDB_INSTALL_STATUS]
      ,NULL as [INC_CMDB_INVOICE_NUMBER]
      ,NULL as [INC_CMDB_JUSTIFICATION]
      ,NULL as [INC_CMDB_LAST_DISCOVERED]
      ,NULL as [INC_CMDB_LOCATION]
      ,NULL as [INC_CMDB_MAINTENANCE_SCHEDULE]
      ,NULL as [INC_CMDB_MANAGED_BY]
      ,NULL as [INC_CMDB_MODEL_NUMBER]
      ,NULL as [INC_CMDB_NAME]
      ,NULL as [INC_CMDB_OPERATIONAL_STATUS]
      ,NULL as [INC_CMDB_ORDER_DATE]
      ,NULL as [INC_CMDB_OWNED_BY]
      ,NULL as [INC_CMDB_PO_NUMBER]
      ,NULL as [INC_CMDB_PURCHASE_DATE]
      ,NULL as [INC_CMDB_SCHEDULE]
      ,NULL as [INC_CMDB_SERIAL_NUMBER]
      ,NULL as [INC_CMDB_SHORT_DESCRIPTION]
      ,NULL as [INC_CMDB_START_DATE]
      ,NULL as [INC_CMDB_SUBCATEGORY]
      ,NULL as [INC_CMDB_SUPPORT_GROUP]
      ,NULL as [INC_CMDB_SUPPORTED_BY]
      ,NULL as [INC_CMDB_SYS_CLASS_NAME]
      ,NULL as [INC_CMDB_SYS_CREATED_BY]
      ,NULL as [INC_CMDB_SYS_CREATED_ON]
      ,NULL as [INC_CMDB_SYS_UPDATED_BY]
      ,NULL as [INC_CMDB_SYS_UPDATED_ON]
      ,NULL as [INC_CMDB_U_AD_LOCATION]
      ,NULL as [INC_CMDB_U_APPROVED_RFC]
      ,NULL as [INC_CMDB_U_CI_ALIAS]
      ,NULL as [INC_CMDB_U_CI_CATEGORY]
      ,NULL as [INC_CMDB_U_DATACENTER]
      ,NULL as [INC_CMDB_U_DR_COVERAGE]
      ,NULL as [INC_CMDB_U_DR_TIER_LEVEL]
      ,NULL as [INC_CMDB_U_ENVIRONMENT]
      ,NULL as [INC_CMDB_U_IP_NETMASK]
      ,NULL as [INC_CMDB_U_REGION]
      ,NULL as [INC_CMDB_U_REPORTING_CATEGORIES]
      ,NULL as [INC_CMDB_U_SCIENCELOGIC_REGION]
      ,NULL as [INC_CMDB_U_SUB_TYPE]
      ,NULL as [INC_CMDB_U_TYPE]
      ,NULL as [INC_CMDB_VENDOR]
      ,NULL as [INC_CMDB_WARRANTY_EXPIRATION]
      ,NULL as [INC_CMDB_UNVERIFIED]
      ,NULL as [TASK_SLA_ACTIVE]
      ,NULL as [TASK_SLA_BUSINESS_DURATION]
      ,NULL as [TASK_SLA_BUSINESS_PAUSE_DURATION]
      ,NULL as [TASK_SLA_BBUSINESS_PERCENTAGE]
      ,NULL as [TASK_SLA_BUSINESS_TIME_LEFT]
      ,NULL as [TASK_SLA_DURATION]
      ,NULL as [TASK_SLA_END_TIME]
      ,CONVERT(bit,CASE WHEN [ISS_DE:ESP SLA RESPONSE COUNT]=-1 THEN 1 End) as [TASK_SLA_HAS_BREACHED]
      ,NULL as [TASK_SLA_PAUSE_DURATION]
      ,NULL as [TASK_SLA_PAUSE_TIME]
      ,NULL as [TASK_SLA_PERCENTAGE]
      ,NULL as [TASK_SLA_PLANNED_END_TIME]
      ,CASE WHEN [ISS_DE:ESP SLA RESPONSE COUNT]=-1 THEN 'Breached'
	  WHEN  [ISS_DE:ESP SLA RESPONSE COUNT]= 1 THEN 'Achieved'
	  WHEN  [ISS_DE:ESP SLA RESPONSE COUNT]= 0 THEN 'In Progress' End as [TASK_SLA_STAGE]
      ,NULL as [TASK_SLA_START_TIME]
      ,NULL as [TASK_SLA_SYS_CREATED_BY]
      ,NULL as [TASK_SLA_SYS_CREATED_ON]
      ,NULL as [TASK_SLA_SYS_UPDATED_BY]
      ,NULL as [TASK_SLA_SYS_UPDATED_ON]
      ,NULL as [TASK_SLA_TIME_LEFT]
      ,NULL as [TASK_SLA_TIMEZONE]
      ,NULL as [TASK_SLA_U_SLA_AGEING]
      ,NULL as [TASK_SLA_U_SLA_EXCEPTION]
      ,NULL as [TASK_SLA_U_WORK_NOTES]
      ,NULL as [CSLA_ACTIVE]
      ,NULL as [CSLA_COLLECTION]
      ,NULL as [CSLA_CONDITION_CLASS]
      ,NULL as [CSLA_DURATION]
      ,CASE WHEN ISS_PRIORITY=1 THEN 'Kellogg Priority 4 Resolution Non Retro'
	  WHEN ISS_PRIORITY= 2 THEN 'Kellogg Priority 3 Resolution Non Retro'
	  WHEN ISS_PRIORITY= 3 THEN 'Kellogg Priority 2 Resolution Non Retro'
	  WHEN ISS_PRIORITY= 4 THEN 'Kellogg Priority 1 Resolution Non Retro' END as [CSLA_NAME]
      ,NULL as [CSLA_RELATIVE_DURATION_WORKS_ON]
      ,NULL as [CSLA_RESET_CONDITION]
      ,NULL as [CSLA_RETROACTIVE]
      ,NULL as [CSLA_SET_START_TO]
      ,NULL as [CSLA_SYS_CREATED_BY]
      ,NULL as [CSLA_SYS_CREATED_ON]
      ,NULL as [CSLA_SYS_OVERRIDES]
      ,NULL as [CSLA_SYS_UPDATED_BY]
      ,NULL as [CSLA_SYS_UPDATED_ON]
      ,NULL as [CSLA_TIMEZONE]
      ,NULL as [CSLA_TYPE]
      ,NULL as [PT_ACTIVE]
      ,NULL as [PT_ACTIVITY_DUE]
      ,NULL as [PT_APPROVAL]
      ,NULL as [PT_APPROVAL_HISTORY]
      ,NULL as [PT_APPROVAL_SET]
      ,NULL as [PT_ASSIGNED_TO]
      ,NULL as [PT_ASSIGNMENT_GROUP]
      ,NULL as [PT_BUSINESS_DURATION]
      ,NULL as [PT_CALENDAR_DURATION]
      ,NULL as [PT_CLOSE_NOTES]
      ,NULL as [PT_CLOSED_AT]
      ,NULL as [PT_CLOSED_BY]
      ,NULL as [PT_COMMENTS]
      ,NULL as [PT_COMMENTS_AND_WORK_NOTES]
      ,NULL as [PT_COMPANY]
      ,NULL as [PT_CONTACT_TYPE]
      ,NULL as [PT_DESCRIPTION]
      ,NULL as [PT_DUE_DATE]
      ,NULL as [PT_ESCALATION]
      ,NULL as [PT_EXPECTED_START]
      ,NULL as [PT_FOLLOW_UP]
      ,NULL as [PT_GROUP_LIST]
      ,NULL as [PT_IMPACT]
      ,NULL as [PT_KNOWLEDGE]
      ,NULL as [PT_LOCATION]
      ,NULL as [PT_MADE_SLA]
      ,NULL as [PT_NUMBER]
      ,NULL as [PT_OPENED_AT]
      ,NULL as [PT_OPENED_BY]
      ,NULL as [PT_ORDER]
      ,NULL as [PT_PARENT]
      ,NULL as [PT_PRIORITY]
      ,NULL as [PT_REASSIGNMENT_COUNT]
      ,NULL as [PT_SHORT_DESCRIPTION]
      ,NULL as [PT_SKILLS]
      ,NULL as [PT_SLA_DUE]
      ,NULL as [PT_STATE]
      ,NULL as [PT_SYS_CLASS_NAME]
      ,NULL as [PT_SYS_CREATED_BY]
      ,NULL as [PT_SYS_CREATED_ON]
      ,NULL as [PT_SYS_ID]
      ,NULL as [PT_SYS_UPDATED_BY]
      ,NULL as [PT_SYS_UPDATED_ON]
      ,NULL as [PT_TIME_WORKED]
      ,NULL as [PT_U_A_QUESTION_1]
      ,NULL as [PT_U_ACTION_LIST]
      ,NULL as [PT_U_ANSWER]
      ,NULL as [PT_U_ASSIGNMENT_GROUP_TYPE]
      ,NULL as [PT_U_CHANGE_NUMBER]
      ,NULL as [PT_U_CHANGE_REQUEST_RELATED]
      ,NULL as [PT_U_CONFIGURATION_ITEMS_IMPACTED]
      ,NULL as [PT_U_CORRECTIVE_ACTIONS]
      ,NULL as [PT_U_DUE_BY]
      ,NULL as [PT_U_DURATION]
      ,NULL as [PT_U_INCIDENT_END_DATE]
      ,NULL as [PT_U_INCIDENT_GP_TYPE]
      ,NULL as [PT_U_INCIDENT_RESOLUTION]
      ,NULL as [PT_U_INCIDENT_START_DATE]
      ,NULL as [PT_U_KNOWN_ERROR]
      ,NULL as [PT_U_NETWORK_OUTAGE]
      ,NULL as [PT_U_PRIORITY]
      ,NULL as [PT_U_PROBLEM_DESCRIPTION]
      ,NULL as [PT_U_PROBLEM_LOCATION]
      ,NULL as [PT_U_PROBLEM_RECORD_NUMBER]
      ,NULL as [PT_U_PROBLEMS_BUSINESS_IMPACT]
      ,NULL as [PT_U_QUESTION_2]
      ,NULL as [PT_U_QUESTION_3]
      ,NULL as [PT_U_QUESTION_4]
      ,NULL as [PT_U_QUESTION_5]
      ,NULL as [PT_U_QUESTION_6]
      ,NULL as [PT_U_RCA_APPROVED_BY]
      ,NULL as [PT_U_RCA_COMPLETED_DATE]
      ,NULL as [PT_U_RCA_REQUESTED_BY]
      ,NULL as [PT_U_RELATED_INCIDENT_NO]
      ,NULL as [PT_U_REQ]
      ,NULL as [PT_U_ROOT_CAUSE_CODE]
      ,NULL as [PT_U_ROOT_CAUSE_DETAILS]
      ,NULL as [PT_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,NULL as [PT_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,NULL as [PT_U_ROOT_CAUSE_SUPPORTER]
      ,NULL as [PT_U_STATUS_REASON]
      ,NULL as [PT_U_SUPPLIER]
      ,NULL as [PT_U_TARGET_DATE]
      ,NULL as [PT_U_TASK_PRIORITY]
      ,NULL as [PT_U_WHEN_FIRST]
      ,NULL as [PT_U_WHEN_LAST]
      ,NULL as [PT_U_WORKAROUND]
      ,NULL as [PT_UPON_APPROVAL]
      ,NULL as [PT_UPON_REJECT]
      ,NULL as [PT_URGENCY]
      ,NULL as [PT_USER_INPUT]
      ,NULL as [PT_WATCH_LIST]
      ,NULL as [PT_WORK_END]
      ,NULL as [PT_WORK_NOTES]
      ,NULL as [PT_WORK_NOTES_LIST]
      ,NULL as [PT_WORK_START]
      ,NULL as [PT_CMDB_ASSET_TAG]
      ,NULL as [PT_CMDB_ASSIGNED]
      ,NULL as [PT_CMDB_ASSIGNED_TO_VALUE]
      ,NULL as [PT_CMDB_ATTRIBUTES]
      ,NULL as [PT_CMDB_CATEGORY]
      ,NULL as [PT_CMDB_CHANGE_CONTROL]
      ,NULL as [PT_CMDB_COMMENTS]
      ,NULL as [PT_CMDB_COMPANY]
      ,NULL as [PT_CMDB_COST]
      ,NULL as [PT_CMDB_COST_CC]
      ,NULL as [PT_CMDB_COST_CENTER]
      ,NULL as [PT_CMDB_DELIVERY_DATE]
      ,NULL as [PT_CMDB_DEPARTMENT]
      ,NULL as [PT_CMDB_DISCOVERY_SOURCE]
      ,NULL as [PT_CMDB_DNS_DOMAIN]
      ,NULL as [PT_CMDB_DUE]
      ,NULL as [PT_CMDB_DUE_IN]
      ,NULL as [PT_CMDB_FAULT_COUNT]
      ,NULL as [PT_CMDB_FIRST_DISCOVERED]
      ,NULL as [PT_CMDB_FQDN]
      ,NULL as [PT_CMDB_GL_ACCOUNT]
      ,NULL as [PT_CMDB_INSTALL_DATE]
      ,NULL as [PT_CMDB_INSTALL_STATUS]
      ,NULL as [PT_CMDB_INVOICE_NUMBER]
      ,NULL as [PT_CMDB_JUSTIFICATION]
      ,NULL as [PT_CMDB_LAST_DISCOVERED]
      ,NULL as [PT_CMDB_LOCATION]
      ,NULL as [PT_CMDB_MAINTENANCE_SCHEDULE]
      ,NULL as [PT_CMDB_MANAGED_BY]
      ,NULL as [PT_CMDB_MODEL_NUMBER]
      ,NULL as [PT_CMDB_NAME]
      ,NULL as [PT_CMDB_OPERATIONAL_STATUS]
      ,NULL as [PT_CMDB_ORDER_DATE]
      ,NULL as [PT_CMDB_OWNED_BY]
      ,NULL as [PT_CMDB_PO_NUMBER]
      ,NULL as [PT_CMDB_PURCHASE_DATE]
      ,NULL as [PT_CMDB_SCHEDULE]
      ,NULL as [PT_CMDB_SERIAL_NUMBER]
      ,NULL as [PT_CMDB_SHORT_DESCRIPTION]
      ,NULL as [PT_CMDB_START_DATE]
      ,NULL as [PT_CMDB_SUBCATEGORY]
      ,NULL as [PT_CMDB_SUPPORT_GROUP]
      ,NULL as [PT_CMDB_SUPPORTED_BY]
      ,NULL as [PT_CMDB_SYS_CLASS_NAME]
      ,NULL as [PT_CMDB_SYS_CREATED_BY]
      ,NULL as [PT_CMDB_SYS_CREATED_ON]
      ,NULL as [PT_CMDB_SYS_UPDATED_BY]
      ,NULL as [PT_CMDB_SYS_UPDATED_ON]
      ,NULL as [PT_CMDB_U_AD_LOCATION]
      ,NULL as [PT_CMDB_U_APPROVED_RFC]
      ,NULL as [PT_CMDB_U_CI_ALIAS]
      ,NULL as [PT_CMDB_U_CI_CATEGORY]
      ,NULL as [PT_CMDB_U_DATACENTER]
      ,NULL as [PT_CMDB_U_DR_COVERAGE]
      ,NULL as [PT_CMDB_U_DR_TIER_LEVEL]
      ,NULL as [PT_CMDB_U_ENVIRONMENT]
      ,NULL as [PT_CMDB_U_IP_NETMASK]
      ,NULL as [PT_CMDB_U_REGION]
      ,NULL as [PT_CMDB_U_REPORTING_CATEGORIES]
      ,NULL as [PT_CMDB_U_SCIENCELOGIC_REGION]
      ,NULL as [PT_CMDB_U_SUB_TYPE]
      ,NULL as [PT_CMDB_U_TYPE]
      ,NULL as [PT_CMDB_VENDOR]
      ,NULL as [PT_CMDB_WARRANTY_EXPIRATION]
      ,NULL as [P_SYS_ID]
      ,NULL as [P_ACTIVE]
      ,NULL as [P_ACTIVITY_DUE]
      ,NULL as [P_APPROVAL]
      ,NULL as [P_APPROVAL_HISTORY]
      ,NULL as [P_APPROVAL_SET]
      ,NULL as [P_ASSIGNED_TO]
      ,NULL as [P_ASSIGNMENT_GROUP]
      ,NULL as [P_BUSINESS_DURATION]
      ,NULL as [P_CALENDAR_DURATION]
      ,NULL as [P_CLOSE_NOTES]
      ,NULL as [P_CLOSED_AT]
      ,NULL as [P_CLOSED_BY_VALUE]
      ,NULL as [P_COMMENTS]
      ,NULL as [P_COMMENTS_AND_WORK_NOTES]
      ,NULL as [P_COMPANY]
      ,NULL as [P_CONTACT_TYPE]
      ,NULL as [P_DESCRIPTION]
      ,NULL as [P_DUE_DATE]
      ,NULL as [P_ESCALATION]
      ,NULL as [P_EXPECTED_START]
      ,NULL as [P_FOLLOW_UP]
      ,NULL as [P_GROUP_LIST]
      ,NULL as [P_IMPACT]
      ,NULL as [P_KNOWLEDGE]
      ,NULL as [P_KNOWN_ERROR]
      ,NULL as [P_LOCATION_VALUE]
      ,NULL as [P_MADE_SLA]
      ,NULL as [P_NUMBER]
      ,NULL as [P_OPENED_AT]
      ,NULL as [P_OPENED_BY_VALUE]
      ,NULL as [P_ORDER]
      ,NULL as [P_PRIORITY]
      ,NULL as [P_PROBLEM_STATE]
      ,NULL as [P_REASSIGNMENT_COUNT]
      ,NULL as [P_RELATED_INCIDENTS]
      ,NULL as [P_RFC]
      ,NULL as [P_SHORT_DESCRIPTION]
      ,NULL as [P_SKILLS]
      ,NULL as [P_SLA_DUE]
      ,NULL as [P_STATE]
      ,NULL as [P_SYS_CREATED_BY]
      ,NULL as [P_SYS_CREATED_ON]
      ,NULL as [P_SYS_UPDATED_BY]
      ,NULL as [P_SYS_UPDATED_ON]
      ,NULL as [P_TIME_WORKED]
      ,NULL as [P_U_ASSIGNMENT_GROUP_TYPE]
      ,NULL as [P_U_CATEGORY]
      ,NULL as [P_U_CI_CATEGORY]
      ,NULL as [P_U_CI_CLASSIFICATION]
      ,NULL as [P_U_CI_TYPE]
      ,NULL as [P_U_FAILING_COMPONENT___DEVISE__]
      ,NULL as [P_U_INCIDENT_GP_TYPE]
      ,NULL as [P_U_KB_ARTICLE_FOR_KNOWN_ERROR]
      ,NULL as [P_U_LESSONS_LEARNED]
      ,NULL as [P_U_MISSING_CI]
      ,NULL as [P_U_MISSING_CI_REQUIRED]
      ,NULL as [P_U_PROBLEM_OCCURRED_DATE]
      ,NULL as [P_U_PROBLEMS_BUSINESS_IMPACT]
      ,NULL as [P_U_RCA_PARTICIPANTS]
      ,NULL as [P_U_RCA_REQUESTED_BY]
      ,NULL as [P_U_RCA_REVIEW_MEETING_DATE]
      ,NULL as [P_U_REGION]
      ,NULL as [P_U_RESOLUTION_CODE]
      ,NULL as [P_U_ROOT_CAUSE]
      ,NULL as [P_U_ROOT_CAUSE_ANALYSIS]
      ,NULL as [P_U_ROOT_CAUSE_DETAILS]
      ,NULL as [P_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,NULL as [P_U_ROOT_CAUSE_JUSTIFICATION]
      ,NULL as [P_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,NULL as [P_U_SOURCE]
      ,NULL as [P_U_STATUS_REASON]
      ,NULL as [P_U_SUBCATEGORY]
      ,NULL as [P_U_SUPPLIER]
      ,NULL as [P_U_VENDOR]
      ,NULL as [P_U_VENDOR_TICKET_NO_]
      ,NULL as [P_UPON_APPROVAL]
      ,NULL as [P_UPON_REJECT]
      ,NULL as [P_URGENCY]
      ,NULL as [P_USER_INPUT]
      ,NULL as [P_WATCH_LIST]
      ,NULL as [P_WORK_AROUND]
      ,NULL as [P_WORK_END]
      ,NULL as [P_WORK_NOTES]
      ,NULL as [P_WORK_NOTES_LIST]
      ,NULL as [P_WORK_START]
      ,NULL as [P_CMDB_ASSET_TAG]
      ,NULL as [P_CMDB_ASSIGNED]
      ,NULL as [P_CMDB_ASSIGNED_TO_VALUE]
      ,NULL as [P_CMDB_ATTRIBUTES]
      ,NULL as [P_CMDB_CATEGORY]
      ,NULL as [P_CMDB_CHANGE_CONTROL]
      ,NULL as [P_CMDB_COMMENTS]
      ,NULL as [P_CMDB_COMPANY]
      ,NULL as [P_CMDB_COST]
      ,NULL as [P_CMDB_COST_CC]
      ,NULL as [P_CMDB_COST_CENTER]
      ,NULL as [P_CMDB_DELIVERY_DATE]
      ,NULL as [P_CMDB_DEPARTMENT]
      ,NULL as [P_CMDB_DISCOVERY_SOURCE]
      ,NULL as [P_CMDB_DNS_DOMAIN]
      ,NULL as [P_CMDB_DUE]
      ,NULL as [P_CMDB_DUE_IN]
      ,NULL as [P_CMDB_FAULT_COUNT]
      ,NULL as [P_CMDB_FIRST_DISCOVERED]
      ,NULL as [P_CMDB_FQDN]
      ,NULL as [P_CMDB_GL_ACCOUNT]
      ,NULL as [P_CMDB_INSTALL_DATE]
      ,NULL as [P_CMDB_INSTALL_STATUS]
      ,NULL as [P_CMDB_INVOICE_NUMBER]
      ,NULL as [P_CMDB_JUSTIFICATION]
      ,NULL as [P_CMDB_LAST_DISCOVERED]
      ,NULL as [P_CMDB_LOCATION]
      ,NULL as [P_CMDB_MAINTENANCE_SCHEDULE]
      ,NULL as [P_CMDB_MANAGED_BY]
      ,NULL as [P_CMDB_MODEL_NUMBER]
      ,NULL as [P_CMDB_NAME]
      ,NULL as [P_CMDB_OPERATIONAL_STATUS]
      ,NULL as [P_CMDB_ORDER_DATE]
      ,NULL as [P_CMDB_OWNED_BY]
      ,NULL as [P_CMDB_PO_NUMBER]
      ,NULL as [P_CMDB_PURCHASE_DATE]
      ,NULL as [P_CMDB_SCHEDULE]
      ,NULL as [P_CMDB_SERIAL_NUMBER]
      ,NULL as [P_CMDB_SHORT_DESCRIPTION]
      ,NULL as [P_CMDB_START_DATE]
      ,NULL as [P_CMDB_SUBCATEGORY]
      ,NULL as [P_CMDB_SUPPORT_GROUP]
      ,NULL as [P_CMDB_SUPPORTED_BY]
      ,NULL as [P_CMDB_SYS_CLASS_NAME]
      ,NULL as [P_CMDB_SYS_CREATED_BY]
      ,NULL as [P_CMDB_SYS_CREATED_ON]
      ,NULL as [P_CMDB_SYS_UPDATED_BY]
      ,NULL as [P_CMDB_SYS_UPDATED_ON]
      ,NULL as [P_CMDB_U_AD_LOCATION]
      ,NULL as [P_CMDB_U_APPROVED_RFC]
      ,NULL as [P_CMDB_U_CI_ALIAS]
      ,NULL as [P_CMDB_U_CI_CATEGORY]
      ,NULL as [P_CMDB_U_DATACENTER]
      ,NULL as [P_CMDB_U_DR_COVERAGE]
      ,NULL as [P_CMDB_U_DR_TIER_LEVEL]
      ,NULL as [P_CMDB_U_ENVIRONMENT]
      ,NULL as [P_CMDB_U_IP_NETMASK]
      ,NULL as [P_CMDB_U_REGION]
      ,NULL as [P_CMDB_U_REPORTING_CATEGORIES]
      ,NULL as [P_CMDB_U_SCIENCELOGIC_REGION]
      ,NULL as [P_CMDB_U_SUB_TYPE]
      ,NULL as [P_CMDB_U_TYPE]
      ,NULL as [P_CMDB_VENDOR]
      ,NULL as [P_CMDB_WARRANTY_EXPIRATION]
	  ---TASK0472106 added columns for SLA Exception---
	   ,NULL as I_SLA_EX_NUMBER
	   ,NULL as I_SLA_EX_U_STATUS
	   ,NULL as I_SLA_EX_U_SUPPLIER
	   ,NULL as I_SLA_EX_RELATED_RECORDS
	   ,NULL as I_SLA_EX_U_EXCEPTION_TYPE
	   ,NULL as I_SLA_EX_SHORT_DESCRIPTION
	   ,NULL as I_SLA_EX_UPON_APPROVAL
	   ,NULL as I_SLA_EX_U_JUSTIFICATION_TYPE
	   ,NULL as I_SLA_EX_OPENED_AT 
	   ,NULL as I_SLA_EX_OPENED_BY
	---TASK0472106 added columns for SLA Exception---
  FROM [KG_VIEWS].[KG_ATTASK].[UVW_ISSUES]
  WHERE ISS_OPTASKTYPE='ISU'



GO
/****** Object:  View [dbo].[UVW_INCIDENTS_SLA_PROBLEM_TASK_CUST_QUERY]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ===============================================================================================================================================
-- NAME        	:	UVW_INCIDENTS_SLA_PROBLEM_TASK_CUST_QUERY
-- PURPOSE & 
-- Description  :  
                        
-- REVISIONS:

-- Ver          Date             Author                    Change Reason

-- 1.0         08-21-2017	   ATHEETH RAO	         		1. Initial Version.

-- 1.1		   01-05-2018      ATHEETH RAO					2. Changed filter condition to capture rolling 24 months of data from current month.

-- 1.2		   02-15-2018      ATHEETH RAO					3. Added columns for TASK0472106.

-- 1.3    	   04-13-2018	   ANIL KONDLA					4. Implemented the Calendar Duration logic to all the Duration Fields. (TASK0500474)

-- ===============================================================================================================================================


CREATE VIEW  [dbo].[UVW_INCIDENTS_SLA_PROBLEM_TASK_CUST_QUERY]
AS
SELECT  [INC_SLA_P_T].[INC_ACTIVE] AS [INC_ACTIVE],
		[INC_SLA_P_T].[INC_SYS_USER_GROUP_NAME] AS [INC_SYS_USER_GROUP_NAME],
		[INC_SLA_P_T].[INC_ASSIGNED_TO] AS [INC_ASSIGNED_TO],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[INC_BUSINESS_DURATION]), 0),[INC_SLA_P_T].[INC_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[INC_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[INC_BUSINESS_DURATION]) AS INT) AS 
		[INC_BUSINESS_DURATION],
		
		[INC_SLA_P_T].[INC_BUSINESS_STC] AS [INC_BUSINESS_STC],

		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[INC_CALENDAR_DURATION]), 0),[INC_SLA_P_T].[INC_CALENDAR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[INC_CALENDAR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[INC_CALENDAR_DURATION]) AS INT) AS
		[INC_CALENDAR_DURATION],
		
		[INC_SLA_P_T].[INC_CALENDAR_STC] AS [INC_CALENDAR_STC],
		[INC_SLA_P_T].[INC_CATEGORY] AS [INC_CATEGORY],
		[INC_SLA_P_T].[INC_CHILD_INCIDENTS] AS [INC_CHILD_INCIDENTS],
		[INC_SLA_P_T].[INC_CLOSE_CODE] AS [INC_CLOSE_CODE],
		[INC_SLA_P_T].[INC_CLOSE_NOTES] AS [INC_CLOSE_NOTES],
		[INC_SLA_P_T].[INC_CLOSED_AT] AS [INC_CLOSED_AT],
		[INC_SLA_P_T].[INC_CLOSED_BY] AS [INC_CLOSED_BY],
		[INC_SLA_P_T].[INC_COMMENTS] AS [INC_COMMENTS],
		[INC_SLA_P_T].[INC_COMMENTS_AND_WORK_NOTES] AS [INC_COMMENTS_AND_WORK_NOTES],
		[INC_SLA_P_T].[INC_CONTACT_TYPE] AS [INC_CONTACT_TYPE],
		[INC_SLA_P_T].[INC_DESCRIPTION] AS [INC_DESCRIPTION],
		[INC_SLA_P_T].[INC_DUE_DATE] AS [INC_DUE_DATE],
		[INC_SLA_P_T].[INC_ESCALATION] AS [INC_ESCALATION],
		[INC_SLA_P_T].[INC_EXPECTED_START] AS [INC_EXPECTED_START],
		[INC_SLA_P_T].[INC_FOLLOW_UP] AS [INC_FOLLOW_UP],
		[INC_SLA_P_T].[INC_IMPACT] AS [INC_IMPACT],
		[INC_SLA_P_T].[INC_INCIDENT_STATE] AS [INC_INCIDENT_STATE],
		[INC_SLA_P_T].[INC_KNOWLEDGE] AS [INC_KNOWLEDGE],
		[INC_SLA_P_T].[INC_MADE_SLA] AS [INC_MADE_SLA],
		[INC_SLA_P_T].[INC_NUMBER] AS [INC_NUMBER],
		[INC_SLA_P_T].[INC_OPENED_AT] AS [INC_OPENED_AT],
		[INC_SLA_P_T].[INC_OPENED_BY] AS [INC_OPENED_BY],
		[INC_SLA_P_T].[INC_ORDER] AS [INC_ORDER],
		[INC_SLA_P_T].[INC_PARENT] AS [INC_PARENT],
		[INC_SLA_P_T].[INC_PARENT_INCIDENT_NUMBER] AS [INC_PARENT_INCIDENT_NUMBER],
		[INC_SLA_P_T].[INC_PRIORITY] AS [INC_PRIORITY],
		[INC_SLA_P_T].[INC_PROBLEM_ID] AS [INC_PROBLEM_ID],
		[INC_SLA_P_T].[INC_REASSIGNMENT_COUNT] AS [INC_REASSIGNMENT_COUNT],
		[INC_SLA_P_T].[INC_REOPEN_COUNT] AS [INC_REOPEN_COUNT],
		[INC_SLA_P_T].[INC_RESOLVED_AT] AS [INC_RESOLVED_AT],
		[INC_SLA_P_T].[INC_RESOLVED_BY] AS [INC_RESOLVED_BY],
		[INC_SLA_P_T].[INC_SEVERITY] AS [INC_SEVERITY],
		[INC_SLA_P_T].[INC_SHORT_DESCRIPTION] AS [INC_SHORT_DESCRIPTION],
		[INC_SLA_P_T].[INC_SLA_DUE] AS [INC_SLA_DUE],
		[INC_SLA_P_T].[INC_STATE] AS [INC_STATE],
		[INC_SLA_P_T].[INC_SUBCATEGORY] AS [INC_SUBCATEGORY],
		[INC_SLA_P_T].[INC_SYS_CLASS_NAME] AS [INC_SYS_CLASS_NAME],
		[INC_SLA_P_T].[INC_SYS_CREATED_BY] AS [INC_SYS_CREATED_BY],
		[INC_SLA_P_T].[INC_SYS_CREATED_ON] AS [INC_SYS_CREATED_ON],
		[INC_SLA_P_T].[INC_SYS_UPDATED_BY] AS [INC_SYS_UPDATED_BY],
		[INC_SLA_P_T].[INC_SYS_UPDATED_ON] AS [INC_SYS_UPDATED_ON],
		[INC_SLA_P_T].[INC_TIME_WORKED] AS [INC_TIME_WORKED],
		[INC_SLA_P_T].[INC_U_ACCENTURE_SLA] AS [INC_U_ACCENTURE_SLA],
		[INC_SLA_P_T].[INC_U_APPOINTMENT_COMPLETED1] AS [INC_U_APPOINTMENT_COMPLETED1],
		[INC_SLA_P_T].[INC_U_APPOINTMENT_TIME] AS [INC_U_APPOINTMENT_TIME],
		[INC_SLA_P_T].[INC_U_ASSIGNMENT_GROUP_TYPE] AS [INC_U_ASSIGNMENT_GROUP_TYPE],
		[INC_SLA_P_T].[INC_U_BEST_CONTACT_NUMBER] AS [INC_U_BEST_CONTACT_NUMBER],
		[INC_SLA_P_T].[INC_U_BRIDGE_LAUNCHED] AS [INC_U_BRIDGE_LAUNCHED],
		[INC_SLA_P_T].[INC_U_BRIDGE_REQUESTED] AS [INC_U_BRIDGE_REQUESTED],
		[INC_SLA_P_T].[INC_U_CALL_IN_REASON] AS [INC_U_CALL_IN_REASON],
		[INC_SLA_P_T].[INC_U_CALL_IN_REASON_COUNTER] AS [INC_U_CALL_IN_REASON_COUNTER],
		[INC_SLA_P_T].[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D] AS [INC_U_CAN_BE_RESOLVED_AT_SERVICE_D],
		[INC_SLA_P_T].[INC_U_CHANGE_REQUEST] AS [INC_U_CHANGE_REQUEST],
		[INC_SLA_P_T].[INC_U_CI_CATEGORY] AS [INC_U_CI_CATEGORY],
		[INC_SLA_P_T].[INC_U_CI_CLASSIFICATION] AS [INC_U_CI_CLASSIFICATION],
		[INC_SLA_P_T].[INC_U_CI_TYPE] AS [INC_U_CI_TYPE],
		[INC_SLA_P_T].[INC_U_CRITICAL_INCIDENT] AS [INC_U_CRITICAL_INCIDENT],
		[INC_SLA_P_T].[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS] AS [INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS],
		[INC_SLA_P_T].[INC_U_INCIDENT_GP_TYPE] AS [INC_U_INCIDENT_GP_TYPE],
		[INC_SLA_P_T].[INC_U_INCIDENT_NEW_PRIORITY] AS [INC_U_INCIDENT_NEW_PRIORITY],
		[INC_SLA_P_T].[INC_U_INCIDENT_OLD_PRIORITY] AS [INC_U_INCIDENT_OLD_PRIORITY],
		[INC_SLA_P_T].[INC_U_INFOSYS_KOURIER_SLA] AS [INC_U_INFOSYS_KOURIER_SLA],
		[INC_SLA_P_T].[INC_U_INFOSYS_SLA] AS [INC_U_INFOSYS_SLA],
		[INC_SLA_P_T].[INC_U_INFOSYS_UNISYS_SLA] AS [INC_U_INFOSYS_UNISYS_SLA],
		[INC_SLA_P_T].[INC_U_ISSUE_TYPE] AS [INC_U_ISSUE_TYPE],
		[INC_SLA_P_T].[INC_U_JUSTIFICATION] AS [INC_U_JUSTIFICATION],
		[INC_SLA_P_T].[INC_U_KELLOGGS_SLA] AS [INC_U_KELLOGGS_SLA],
		[INC_SLA_P_T].[INC_U_KNOWLEDGE_CANDIDATE] AS [INC_U_KNOWLEDGE_CANDIDATE],
		[INC_SLA_P_T].[INC_U_KNOWLEDGE_USED] AS [INC_U_KNOWLEDGE_USED],
		[INC_SLA_P_T].[INC_U_L1_RESOLVABLE] AS [INC_U_L1_RESOLVABLE],
		[INC_SLA_P_T].[INC_U_L1_RESOLVABLE_DESCRIPTION] AS [INC_U_L1_RESOLVABLE_DESCRIPTION],
		[INC_SLA_P_T].[INC_U_LOCATION] AS [INC_U_LOCATION],
		[INC_SLA_P_T].[INC_U_LOCATION_NEW] AS [INC_U_LOCATION_NEW],
		[INC_SLA_P_T].[INC_U_MAJOR_INCIDENT_MANAGER] AS [INC_U_MAJOR_INCIDENT_MANAGER],
		[INC_SLA_P_T].[INC_U_MINDTREE_SLA] AS [INC_U_MINDTREE_SLA],
		[INC_SLA_P_T].[INC_U_MISSING_CI] AS [INC_U_MISSING_CI],
		[INC_SLA_P_T].[INC_U_MISSING_CI_NAME] AS [INC_U_MISSING_CI_NAME],
		[INC_SLA_P_T].[INC_U_MONITORING_LOCATION] AS [INC_U_MONITORING_LOCATION],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[INC_U_MTR_DURATION]), 0),[INC_SLA_P_T].[INC_U_MTR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[INC_U_MTR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[INC_U_MTR_DURATION]) AS INT) AS
		[INC_U_MTR_DURATION],
		
		[INC_SLA_P_T].[INC_U_OLD_PRIORITY] AS [INC_U_OLD_PRIORITY],
		[INC_SLA_P_T].[INC_U_OLD_SUPPLIER] AS [INC_U_OLD_SUPPLIER],
		[INC_SLA_P_T].[INC_U_OPENED_BY_COMPANY_SUPPLIER] AS [INC_U_OPENED_BY_COMPANY_SUPPLIER],
		[INC_SLA_P_T].[INC_U_PENDING_DUR] AS [INC_U_PENDING_DUR],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[INC_U_PENDING_DURATION]), 0),[INC_SLA_P_T].[INC_U_PENDING_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[INC_U_PENDING_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[INC_U_PENDING_DURATION]) AS INT) AS
		[INC_U_PENDING_DURATION],
		
		[INC_SLA_P_T].[INC_U_PENDING_END_TIME] AS [INC_U_PENDING_END_TIME],
		[INC_SLA_P_T].[INC_U_PENDING_REASON] AS [INC_U_PENDING_REASON],
		[INC_SLA_P_T].[INC_U_PENDING_START_TIME] AS [INC_U_PENDING_START_TIME],
		[INC_SLA_P_T].[INC_U_PR_METRIC] AS [INC_U_PR_METRIC],
		[INC_SLA_P_T].[INC_U_PRB_CANDIDATE_USER] AS [INC_U_PRB_CANDIDATE_USER],
		[INC_SLA_P_T].[INC_U_PROBLEM_CANDIDATE] AS [INC_U_PROBLEM_CANDIDATE],
		[INC_SLA_P_T].[INC_U_PROBLEM_CREATED] AS [INC_U_PROBLEM_CREATED],
		[INC_SLA_P_T].[INC_U_REASSIGNMENT] AS [INC_U_REASSIGNMENT],
		[INC_SLA_P_T].[INC_U_REGION] AS [INC_U_REGION],
		[INC_SLA_P_T].[INC_U_REOPENED_DATE] AS [INC_U_REOPENED_DATE],
		[INC_SLA_P_T].[INC_U_REPORTED_BY] AS [INC_U_REPORTED_BY],
		[INC_SLA_P_T].[INC_U_RESPONSE_SLA] AS [INC_U_RESPONSE_SLA],
		[INC_SLA_P_T].[INC_U_SCIENCELOGIC_REGION] AS [INC_U_SCIENCELOGIC_REGION],
		[INC_SLA_P_T].[INC_U_SD_GROUP] AS [INC_U_SD_GROUP],
		[INC_SLA_P_T].[INC_U_SD_RESOLVABLE] AS [INC_U_SD_RESOLVABLE],
		[INC_SLA_P_T].[INC_U_SD_START_TIME] AS [INC_U_SD_START_TIME],
		[INC_SLA_P_T].[INC_U_SLA_EXCEPTION] AS [INC_U_SLA_EXCEPTION],
		[INC_SLA_P_T].[INC_U_SLA_SUPPLIER] AS [INC_U_SLA_SUPPLIER],
		[INC_SLA_P_T].[INC_U_SLA_VALIDATION] AS [INC_U_SLA_VALIDATION],
		[INC_SLA_P_T].[INC_U_SUB_SUPPLIER] AS [INC_U_SUB_SUPPLIER],
		[INC_SLA_P_T].[INC_U_SUPPLIER] AS [INC_U_SUPPLIER],
		[INC_SLA_P_T].[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE] AS [INC_U_UNABLE_TO_RESOLVE_AT_SERVICE],
		[INC_SLA_P_T].[INC_U_UNISYS_SLA] AS [INC_U_UNISYS_SLA],
		[INC_SLA_P_T].[INC_U_VENDOR_NAME] AS [INC_U_VENDOR_NAME],
		[INC_SLA_P_T].[INC_U_VENDOR_TICKET_NUMBER] AS [INC_U_VENDOR_TICKET_NUMBER],
		[INC_SLA_P_T].[INC_U_VIP_RESPONSE_TIME] AS [INC_U_VIP_RESPONSE_TIME],
		[INC_SLA_P_T].[INC_U_WORKAROUND] AS [INC_U_WORKAROUND],
		[INC_SLA_P_T].[INC_URGENCY] AS [INC_URGENCY],
		[INC_SLA_P_T].[INC_USER_INPUT] AS [INC_USER_INPUT],
		[INC_SLA_P_T].[INC_WATCH_LIST] AS [INC_WATCH_LIST],
		[INC_SLA_P_T].[INC_WORK_END] AS [INC_WORK_END],
		[INC_SLA_P_T].[INC_WORK_NOTES] AS [INC_WORK_NOTES],
		[INC_SLA_P_T].[INC_WORK_NOTES_LIST] AS [INC_WORK_NOTES_LIST],
		[INC_SLA_P_T].[INC_WORK_START] AS [INC_WORK_START],
		[INC_SLA_P_T].[INC_LOC_U_REGION] AS [INC_LOC_U_REGION],
		[INC_SLA_P_T].[INC_SYS_USER_U_REGION] AS [INC_SYS_USER_U_REGION],
		[INC_SLA_P_T].[INC_CMDB_CATEGORY] AS [INC_CMDB_CATEGORY],
		[INC_SLA_P_T].[INC_CMDB_SUBCATEGORY] AS [INC_CMDB_SUBCATEGORY],
		[INC_SLA_P_T].[INC_CMDB_U_CI_ALIAS] AS [INC_CMDB_U_CI_ALIAS],
		[INC_SLA_P_T].[INC_CMDB_U_CI_CATEGORY] AS [INC_CMDB_U_CI_CATEGORY],
		[INC_SLA_P_T].[TASK_SLA_ACTIVE] AS [TASK_SLA_ACTIVE],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[TASK_SLA_BUSINESS_DURATION]), 0),[INC_SLA_P_T].[TASK_SLA_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[TASK_SLA_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[TASK_SLA_BUSINESS_DURATION]) AS INT) AS
		[TASK_SLA_BUSINESS_DURATION],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[TASK_SLA_BUSINESS_PAUSE_DURATION]), 0),[INC_SLA_P_T].[TASK_SLA_BUSINESS_PAUSE_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[TASK_SLA_BUSINESS_PAUSE_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[TASK_SLA_BUSINESS_PAUSE_DURATION]) AS INT) AS
		[TASK_SLA_BUSINESS_PAUSE_DURATION],
		
		[INC_SLA_P_T].[TASK_SLA_BUSINESS_TIME_LEFT] AS [TASK_SLA_BUSINESS_TIME_LEFT],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[TASK_SLA_DURATION]), 0),[INC_SLA_P_T].[TASK_SLA_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[TASK_SLA_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[TASK_SLA_DURATION]) AS INT) AS
		[TASK_SLA_DURATION],
		
		[INC_SLA_P_T].[TASK_SLA_END_TIME] AS [TASK_SLA_END_TIME],
		[INC_SLA_P_T].[TASK_SLA_HAS_BREACHED] AS [TASK_SLA_HAS_BREACHED],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[TASK_SLA_PAUSE_DURATION]), 0),[INC_SLA_P_T].[TASK_SLA_PAUSE_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[TASK_SLA_PAUSE_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[TASK_SLA_PAUSE_DURATION]) AS INT) AS
		[TASK_SLA_PAUSE_DURATION],
		
		[INC_SLA_P_T].[TASK_SLA_PAUSE_TIME] AS [TASK_SLA_PAUSE_TIME],
		[INC_SLA_P_T].[TASK_SLA_PERCENTAGE] AS [TASK_SLA_PERCENTAGE],
		[INC_SLA_P_T].[TASK_SLA_PLANNED_END_TIME] AS [TASK_SLA_PLANNED_END_TIME],
		[INC_SLA_P_T].[TASK_SLA_STAGE] AS [TASK_SLA_STAGE],
		[INC_SLA_P_T].[TASK_SLA_START_TIME] AS [TASK_SLA_START_TIME],
		[INC_SLA_P_T].[TASK_SLA_SYS_CREATED_BY] AS [TASK_SLA_SYS_CREATED_BY],
		[INC_SLA_P_T].[TASK_SLA_SYS_CREATED_ON] AS [TASK_SLA_SYS_CREATED_ON],
		[INC_SLA_P_T].[TASK_SLA_SYS_UPDATED_BY] AS [TASK_SLA_SYS_UPDATED_BY],
		[INC_SLA_P_T].[TASK_SLA_SYS_UPDATED_ON] AS [TASK_SLA_SYS_UPDATED_ON],
		[INC_SLA_P_T].[TASK_SLA_TIME_LEFT] AS [TASK_SLA_TIME_LEFT],
		[INC_SLA_P_T].[TASK_SLA_TIMEZONE] AS [TASK_SLA_TIMEZONE],
		[INC_SLA_P_T].[TASK_SLA_U_SLA_AGEING] AS [TASK_SLA_U_SLA_AGEING],
		[INC_SLA_P_T].[TASK_SLA_U_SLA_EXCEPTION] AS [TASK_SLA_U_SLA_EXCEPTION],
		[INC_SLA_P_T].[TASK_SLA_U_WORK_NOTES] AS [TASK_SLA_U_WORK_NOTES],
		[INC_SLA_P_T].[CSLA_ACTIVE] AS [CSLA_ACTIVE],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[CSLA_DURATION]), 0),[INC_SLA_P_T].[CSLA_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[CSLA_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[CSLA_DURATION]) AS INT) AS
		[CSLA_DURATION],
		
		[INC_SLA_P_T].[CSLA_NAME] AS [CSLA_NAME],
		[INC_SLA_P_T].[CSLA_RELATIVE_DURATION_WORKS_ON] AS [CSLA_RELATIVE_DURATION_WORKS_ON],
		[INC_SLA_P_T].[CSLA_SYS_CREATED_BY] AS [CSLA_SYS_CREATED_BY],
		[INC_SLA_P_T].[CSLA_SYS_CREATED_ON] AS [CSLA_SYS_CREATED_ON],
		[INC_SLA_P_T].[CSLA_SYS_OVERRIDES] AS [CSLA_SYS_OVERRIDES],
		[INC_SLA_P_T].[CSLA_SYS_UPDATED_BY] AS [CSLA_SYS_UPDATED_BY],
		[INC_SLA_P_T].[CSLA_SYS_UPDATED_ON] AS [CSLA_SYS_UPDATED_ON],
		[INC_SLA_P_T].[CSLA_TIMEZONE] AS [CSLA_TIMEZONE],
		[INC_SLA_P_T].[CSLA_TYPE] AS [CSLA_TYPE],
		[INC_SLA_P_T].[PT_ACTIVE] AS [PT_ACTIVE],
		[INC_SLA_P_T].[PT_ASSIGNED_TO] AS [PT_ASSIGNED_TO],
		[INC_SLA_P_T].[PT_ASSIGNMENT_GROUP] AS [PT_ASSIGNMENT_GROUP],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[PT_BUSINESS_DURATION]), 0),[INC_SLA_P_T].[PT_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[PT_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[PT_BUSINESS_DURATION]) AS INT) AS
		[PT_BUSINESS_DURATION],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[PT_CALENDAR_DURATION]), 0),[INC_SLA_P_T].[PT_CALENDAR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[PT_CALENDAR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[PT_CALENDAR_DURATION]) AS INT) AS
		[PT_CALENDAR_DURATION],
		
		[INC_SLA_P_T].[PT_CLOSE_NOTES] AS [PT_CLOSE_NOTES],
		[INC_SLA_P_T].[PT_CLOSED_AT] AS [PT_CLOSED_AT],
		[INC_SLA_P_T].[PT_CLOSED_BY] AS [PT_CLOSED_BY],
		[INC_SLA_P_T].[PT_COMMENTS] AS [PT_COMMENTS],
		[INC_SLA_P_T].[PT_COMMENTS_AND_WORK_NOTES] AS [PT_COMMENTS_AND_WORK_NOTES],
		[INC_SLA_P_T].[PT_CONTACT_TYPE] AS [PT_CONTACT_TYPE],
		[INC_SLA_P_T].[PT_DESCRIPTION] AS [PT_DESCRIPTION],
		[INC_SLA_P_T].[PT_DUE_DATE] AS [PT_DUE_DATE],
		[INC_SLA_P_T].[PT_EXPECTED_START] AS [PT_EXPECTED_START],
		[INC_SLA_P_T].[PT_FOLLOW_UP] AS [PT_FOLLOW_UP],
		[INC_SLA_P_T].[PT_GROUP_LIST] AS [PT_GROUP_LIST],
		[INC_SLA_P_T].[PT_IMPACT] AS [PT_IMPACT],
		[INC_SLA_P_T].[PT_KNOWLEDGE] AS [PT_KNOWLEDGE],
		[INC_SLA_P_T].[PT_LOCATION] AS [PT_LOCATION],
		[INC_SLA_P_T].[PT_MADE_SLA] AS [PT_MADE_SLA],
		[INC_SLA_P_T].[PT_NUMBER] AS [PT_NUMBER],
		[INC_SLA_P_T].[PT_OPENED_AT] AS [PT_OPENED_AT],
		[INC_SLA_P_T].[PT_OPENED_BY] AS [PT_OPENED_BY],
		[INC_SLA_P_T].[PT_ORDER] AS [PT_ORDER],
		[INC_SLA_P_T].[PT_PARENT] AS [PT_PARENT],
		[INC_SLA_P_T].[PT_PRIORITY] AS [PT_PRIORITY],
		[INC_SLA_P_T].[PT_REASSIGNMENT_COUNT] AS [PT_REASSIGNMENT_COUNT],
		[INC_SLA_P_T].[PT_SHORT_DESCRIPTION] AS [PT_SHORT_DESCRIPTION],
		[INC_SLA_P_T].[PT_SLA_DUE] AS [PT_SLA_DUE],
		[INC_SLA_P_T].[PT_STATE] AS [PT_STATE],
		[INC_SLA_P_T].[PT_SYS_CREATED_BY] AS [PT_SYS_CREATED_BY],
		[INC_SLA_P_T].[PT_SYS_CREATED_ON] AS [PT_SYS_CREATED_ON],
		[INC_SLA_P_T].[PT_SYS_ID] AS [PT_SYS_ID],
		[INC_SLA_P_T].[PT_SYS_UPDATED_BY] AS [PT_SYS_UPDATED_BY],
		[INC_SLA_P_T].[PT_SYS_UPDATED_ON] AS [PT_SYS_UPDATED_ON],
		[INC_SLA_P_T].[PT_TIME_WORKED] AS [PT_TIME_WORKED],
		[INC_SLA_P_T].[PT_U_ASSIGNMENT_GROUP_TYPE] AS [PT_U_ASSIGNMENT_GROUP_TYPE],
		[INC_SLA_P_T].[PT_U_CHANGE_NUMBER] AS [PT_U_CHANGE_NUMBER],
		[INC_SLA_P_T].[PT_U_CHANGE_REQUEST_RELATED] AS [PT_U_CHANGE_REQUEST_RELATED],
		[INC_SLA_P_T].[PT_U_CONFIGURATION_ITEMS_IMPACTED] AS [PT_U_CONFIGURATION_ITEMS_IMPACTED],
		[INC_SLA_P_T].[PT_U_CORRECTIVE_ACTIONS] AS [PT_U_CORRECTIVE_ACTIONS],
		[INC_SLA_P_T].[PT_U_DUE_BY] AS [PT_U_DUE_BY],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[PT_U_DURATION]), 0),[INC_SLA_P_T].[PT_U_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[PT_U_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[PT_U_DURATION]) AS INT) AS
		[PT_U_DURATION],
		
		[INC_SLA_P_T].[PT_U_INCIDENT_END_DATE] AS [PT_U_INCIDENT_END_DATE],
		[INC_SLA_P_T].[PT_U_INCIDENT_GP_TYPE] AS [PT_U_INCIDENT_GP_TYPE],
		[INC_SLA_P_T].[PT_U_INCIDENT_RESOLUTION] AS [PT_U_INCIDENT_RESOLUTION],
		[INC_SLA_P_T].[PT_U_INCIDENT_START_DATE] AS [PT_U_INCIDENT_START_DATE],
		[INC_SLA_P_T].[PT_U_KNOWN_ERROR] AS [PT_U_KNOWN_ERROR],
		[INC_SLA_P_T].[PT_U_NETWORK_OUTAGE] AS [PT_U_NETWORK_OUTAGE],
		[INC_SLA_P_T].[PT_U_PRIORITY] AS [PT_U_PRIORITY],
		[INC_SLA_P_T].[PT_U_PROBLEM_DESCRIPTION] AS [PT_U_PROBLEM_DESCRIPTION],
		[INC_SLA_P_T].[PT_U_PROBLEM_LOCATION] AS [PT_U_PROBLEM_LOCATION],
		[INC_SLA_P_T].[PT_U_PROBLEM_RECORD_NUMBER] AS [PT_U_PROBLEM_RECORD_NUMBER],
		[INC_SLA_P_T].[PT_U_PROBLEMS_BUSINESS_IMPACT] AS [PT_U_PROBLEMS_BUSINESS_IMPACT],
		[INC_SLA_P_T].[PT_U_RCA_APPROVED_BY] AS [PT_U_RCA_APPROVED_BY],
		[INC_SLA_P_T].[PT_U_RCA_COMPLETED_DATE] AS [PT_U_RCA_COMPLETED_DATE],
		[INC_SLA_P_T].[PT_U_RCA_REQUESTED_BY] AS [PT_U_RCA_REQUESTED_BY],
		[INC_SLA_P_T].[PT_U_RELATED_INCIDENT_NO] AS [PT_U_RELATED_INCIDENT_NO],
		[INC_SLA_P_T].[PT_U_REQ] AS [PT_U_REQ],
		[INC_SLA_P_T].[PT_U_ROOT_CAUSE_CODE] AS [PT_U_ROOT_CAUSE_CODE],
		[INC_SLA_P_T].[PT_U_ROOT_CAUSE_DETAILS] AS [PT_U_ROOT_CAUSE_DETAILS],
		[INC_SLA_P_T].[PT_U_ROOT_CAUSE_IDENTIFIED_BY] AS [PT_U_ROOT_CAUSE_IDENTIFIED_BY],
		[INC_SLA_P_T].[PT_U_ROOT_CAUSE_OF_THE_PROBLEM] AS [PT_U_ROOT_CAUSE_OF_THE_PROBLEM],
		[INC_SLA_P_T].[PT_U_ROOT_CAUSE_SUPPORTER] AS [PT_U_ROOT_CAUSE_SUPPORTER],
		[INC_SLA_P_T].[PT_U_STATUS_REASON] AS [PT_U_STATUS_REASON],
		[INC_SLA_P_T].[PT_U_SUPPLIER] AS [PT_U_SUPPLIER],
		[INC_SLA_P_T].[PT_U_TASK_PRIORITY] AS [PT_U_TASK_PRIORITY],
		[INC_SLA_P_T].[P_SYS_ID] AS [P_SYS_ID],
		[INC_SLA_P_T].[P_ACTIVE] AS [P_ACTIVE],
		[INC_SLA_P_T].[P_ACTIVITY_DUE] AS [P_ACTIVITY_DUE],
		[INC_SLA_P_T].[P_APPROVAL_SET] AS [P_APPROVAL_SET],
		[INC_SLA_P_T].[P_ASSIGNED_TO] AS [P_ASSIGNED_TO],
		[INC_SLA_P_T].[P_ASSIGNMENT_GROUP] AS [P_ASSIGNMENT_GROUP],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[P_BUSINESS_DURATION]), 0),[INC_SLA_P_T].[P_BUSINESS_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[P_BUSINESS_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[P_BUSINESS_DURATION]) AS INT) AS
		[P_BUSINESS_DURATION],
		
		CAST( DATEDIFF(dd, DATEADD(yy, DATEDIFF(yy, 0, [INC_SLA_P_T].[P_CALENDAR_DURATION]), 0),[INC_SLA_P_T].[P_CALENDAR_DURATION]) AS INT)*1440 + 
		CAST( DATEPART(hh,[INC_SLA_P_T].[P_CALENDAR_DURATION]) AS INT) *60 + 
		CAST( DATEPART(mi,[INC_SLA_P_T].[P_CALENDAR_DURATION]) AS INT) AS
		[P_CALENDAR_DURATION],
		
		[INC_SLA_P_T].[P_CLOSE_NOTES] AS [P_CLOSE_NOTES],
		[INC_SLA_P_T].[P_CLOSED_AT] AS [P_CLOSED_AT],
		[INC_SLA_P_T].[P_CLOSED_BY_VALUE] AS [P_CLOSED_BY_VALUE],
		[INC_SLA_P_T].[P_COMMENTS] AS [P_COMMENTS],
		[INC_SLA_P_T].[P_COMMENTS_AND_WORK_NOTES] AS [P_COMMENTS_AND_WORK_NOTES],
		[INC_SLA_P_T].[P_COMPANY] AS [P_COMPANY],
		[INC_SLA_P_T].[P_CONTACT_TYPE] AS [P_CONTACT_TYPE],
		[INC_SLA_P_T].[P_DESCRIPTION] AS [P_DESCRIPTION],
		[INC_SLA_P_T].[P_DUE_DATE] AS [P_DUE_DATE],
		[INC_SLA_P_T].[P_ESCALATION] AS [P_ESCALATION],
		[INC_SLA_P_T].[P_EXPECTED_START] AS [P_EXPECTED_START],
		[INC_SLA_P_T].[P_FOLLOW_UP] AS [P_FOLLOW_UP],
		[INC_SLA_P_T].[P_GROUP_LIST] AS [P_GROUP_LIST],
		[INC_SLA_P_T].[P_IMPACT] AS [P_IMPACT],
		[INC_SLA_P_T].[P_KNOWLEDGE] AS [P_KNOWLEDGE],
		[INC_SLA_P_T].[P_KNOWN_ERROR] AS [P_KNOWN_ERROR],
		[INC_SLA_P_T].[P_MADE_SLA] AS [P_MADE_SLA],
		[INC_SLA_P_T].[P_NUMBER] AS [P_NUMBER],
		[INC_SLA_P_T].[P_OPENED_AT] AS [P_OPENED_AT],
		[INC_SLA_P_T].[P_OPENED_BY_VALUE] AS [P_OPENED_BY_VALUE],
		[INC_SLA_P_T].[P_ORDER] AS [P_ORDER],
		[INC_SLA_P_T].[P_PRIORITY] AS [P_PRIORITY],
		[INC_SLA_P_T].[P_PROBLEM_STATE] AS [P_PROBLEM_STATE],
		[INC_SLA_P_T].[P_REASSIGNMENT_COUNT] AS [P_REASSIGNMENT_COUNT],
		[INC_SLA_P_T].[P_RELATED_INCIDENTS] AS [P_RELATED_INCIDENTS],
		[INC_SLA_P_T].[P_RFC] AS [P_RFC],
		[INC_SLA_P_T].[P_SHORT_DESCRIPTION] AS [P_SHORT_DESCRIPTION],
		[INC_SLA_P_T].[P_SLA_DUE] AS [P_SLA_DUE],
		[INC_SLA_P_T].[P_STATE] AS [P_STATE],
		[INC_SLA_P_T].[P_SYS_CREATED_BY] AS [P_SYS_CREATED_BY],
		[INC_SLA_P_T].[P_SYS_CREATED_ON] AS [P_SYS_CREATED_ON],
		[INC_SLA_P_T].[P_SYS_UPDATED_BY] AS [P_SYS_UPDATED_BY],
		[INC_SLA_P_T].[P_SYS_UPDATED_ON] AS [P_SYS_UPDATED_ON],
		[INC_SLA_P_T].[P_TIME_WORKED] AS [P_TIME_WORKED],
		[INC_SLA_P_T].[P_U_ASSIGNMENT_GROUP_TYPE] AS [P_U_ASSIGNMENT_GROUP_TYPE],
		[INC_SLA_P_T].[P_U_CATEGORY] AS [P_U_CATEGORY],
		[INC_SLA_P_T].[P_U_CI_CATEGORY] AS [P_U_CI_CATEGORY],
		[INC_SLA_P_T].[P_U_CI_CLASSIFICATION] AS [P_U_CI_CLASSIFICATION],
		[INC_SLA_P_T].[P_U_CI_TYPE] AS [P_U_CI_TYPE],
		[INC_SLA_P_T].[P_U_INCIDENT_GP_TYPE] AS [P_U_INCIDENT_GP_TYPE],
		[INC_SLA_P_T].[P_U_KB_ARTICLE_FOR_KNOWN_ERROR] AS [P_U_KB_ARTICLE_FOR_KNOWN_ERROR],
		[INC_SLA_P_T].[P_U_MISSING_CI] AS [P_U_MISSING_CI],
		[INC_SLA_P_T].[P_U_MISSING_CI_REQUIRED] AS [P_U_MISSING_CI_REQUIRED],
		[INC_SLA_P_T].[P_U_PROBLEM_OCCURRED_DATE] AS [P_U_PROBLEM_OCCURRED_DATE],
		[INC_SLA_P_T].[P_U_PROBLEMS_BUSINESS_IMPACT] AS [P_U_PROBLEMS_BUSINESS_IMPACT],
		[INC_SLA_P_T].[P_U_RCA_PARTICIPANTS] AS [P_U_RCA_PARTICIPANTS],
		[INC_SLA_P_T].[P_U_RCA_REQUESTED_BY] AS [P_U_RCA_REQUESTED_BY],
		[INC_SLA_P_T].[P_U_REGION] AS [P_U_REGION],
		[INC_SLA_P_T].[P_U_RESOLUTION_CODE] AS [P_U_RESOLUTION_CODE],
		[INC_SLA_P_T].[P_U_ROOT_CAUSE] AS [P_U_ROOT_CAUSE],
		[INC_SLA_P_T].[P_U_ROOT_CAUSE_ANALYSIS] AS [P_U_ROOT_CAUSE_ANALYSIS],
		[INC_SLA_P_T].[P_U_ROOT_CAUSE_DETAILS] AS [P_U_ROOT_CAUSE_DETAILS],
		[INC_SLA_P_T].[P_U_ROOT_CAUSE_IDENTIFIED_BY] AS [P_U_ROOT_CAUSE_IDENTIFIED_BY],
		[INC_SLA_P_T].[P_U_ROOT_CAUSE_JUSTIFICATION] AS [P_U_ROOT_CAUSE_JUSTIFICATION],
		[INC_SLA_P_T].[P_U_ROOT_CAUSE_OF_THE_PROBLEM] AS [P_U_ROOT_CAUSE_OF_THE_PROBLEM],
		[INC_SLA_P_T].[P_U_SOURCE] AS [P_U_SOURCE],
		[INC_SLA_P_T].[P_U_STATUS_REASON] AS [P_U_STATUS_REASON],
		[INC_SLA_P_T].[P_U_SUBCATEGORY] AS [P_U_SUBCATEGORY],
		[INC_SLA_P_T].[P_U_SUPPLIER] AS [P_U_SUPPLIER],
		[INC_SLA_P_T].[P_U_VENDOR] AS [P_U_VENDOR],
		[INC_SLA_P_T].[P_U_VENDOR_TICKET_NO_] AS [P_U_VENDOR_TICKET_NO_],
		[INC_SLA_P_T].[P_UPON_APPROVAL] AS [P_UPON_APPROVAL],
		[INC_SLA_P_T].[P_UPON_REJECT] AS [P_UPON_REJECT],
		[INC_SLA_P_T].[P_URGENCY] AS [P_URGENCY],
		[INC_SLA_P_T].[P_USER_INPUT] AS [P_USER_INPUT],
		[INC_SLA_P_T].[P_WATCH_LIST] AS [P_WATCH_LIST],
		[INC_SLA_P_T].[P_WORK_AROUND] AS [P_WORK_AROUND],
		[INC_SLA_P_T].[P_WORK_END] AS [P_WORK_END],
		[INC_SLA_P_T].[P_WORK_NOTES] AS [P_WORK_NOTES],
		[INC_SLA_P_T].[P_WORK_NOTES_LIST] AS [P_WORK_NOTES_LIST],
		[INC_SLA_P_T].[P_WORK_START] AS [P_WORK_START],
		[INC_SLA_P_T].[INC_CMDB_NAME] AS [INC_CMDB_NAME],
		---TASK0472106 added columns for SLA Exception---
		[INC_SLA_P_T].I_SLA_EX_NUMBER as I_SLA_EX_NUMBER,
		[INC_SLA_P_T].I_SLA_EX_U_STATUS as I_SLA_EX_U_STATUS,
		[INC_SLA_P_T].I_SLA_EX_U_SUPPLIER as I_SLA_EX_U_SUPPLIER,
		[INC_SLA_P_T].I_SLA_EX_RELATED_RECORDS as I_SLA_EX_RELATED_RECORDS,
		[INC_SLA_P_T].I_SLA_EX_U_EXCEPTION_TYPE as I_SLA_EX_U_EXCEPTION_TYPE,
		[INC_SLA_P_T].I_SLA_EX_SHORT_DESCRIPTION as I_SLA_EX_SHORT_DESCRIPTIO,
		[INC_SLA_P_T].I_SLA_EX_UPON_APPROVAL as I_SLA_EX_UPON_APPROVAL,
		[INC_SLA_P_T].I_SLA_EX_U_JUSTIFICATION_TYPE as I_SLA_EX_U_JUSTIFICATION_TYPE,
		[INC_SLA_P_T].I_SLA_EX_OPENED_AT as I_SLA_EX_OPENED_AT, 
		[INC_SLA_P_T].I_SLA_EX_OPENED_BY as I_SLA_EX_OPENED_BY,
		---TASK0472106 added columns for SLA Exception---
		[AIP_MET_USR_GRP].[ID] AS [ID],
		[AIP_MET_USR_GRP].[SUPPLIER] AS [SUPPLIER],
		[AIP_MET_USR_GRP].[SUB_SUPPLIER] AS [SUB_SUPPLIER],
		[AIP_MET_USR_GRP].[SLA_OWNER] AS [SLA_OWNER],
		[AIP_MET_USR_GRP].[TEAM] AS [TEAM],
		[AIP_MET_USR_GRP].[METRIC_MEASURE] AS [METRIC_MEASURE],
		[AIP_MET_USR_GRP].[METRIC_TARGET] AS [METRIC_TARGET],
		[AIP_MET_USR_GRP].[METRIC_DESCRIPTION] AS [METRIC_DESCRIPTION],
		[AIP_MET_USR_GRP].[ACTIVE] AS [ACTIVE],
		[AIP_MET_USR_GRP].[COST_CENTER] AS [COST_CENTER],
		[AIP_MET_USR_GRP].[DEFAULT_ASSIGNEE] AS [DEFAULT_ASSIGNEE],
		[AIP_MET_USR_GRP].[DESCRIPTION] AS [DESCRIPTION],
		[AIP_MET_USR_GRP].[EMAIL] AS [EMAIL],
		[AIP_MET_USR_GRP].[EXCLUDE_MANAGER] AS [EXCLUDE_MANAGER],
		[AIP_MET_USR_GRP].[HOURLY_RATE] AS [HOURLY_RATE],
		[AIP_MET_USR_GRP].[INCLUDE_MEMBERS] AS [INCLUDE_MEMBERS],
		[AIP_MET_USR_GRP].[MANAGER_LINK] AS [MANAGER_LINK],
		[AIP_MET_USR_GRP].[MANAGER_VALUE] AS [MANAGER_VALUE],
		[AIP_MET_USR_GRP].[NAME] AS [NAME],
		[AIP_MET_USR_GRP].[PARENT] AS [PARENT],
		[AIP_MET_USR_GRP].[SOURCE] AS [SOURCE],
		[AIP_MET_USR_GRP].[SYS_ID] AS [SYS_ID],
		[AIP_MET_USR_GRP].[SYS_UPDATED_BY] AS [SYS_UPDATED_BY],
		[AIP_MET_USR_GRP].[SYS_UPDATED_ON] AS [SYS_UPDATED_ON],
		[AIP_MET_USR_GRP].[TYPE] AS [TYPE],
		[AIP_MET_USR_GRP].[U_ALIAS] AS [U_ALIAS],
		[AIP_MET_USR_GRP].[U_DSS_GROUP] AS [U_DSS_GROUP],
		[AIP_MET_USR_GRP].[U_GROUP_ID] AS [U_GROUP_ID],
		[AIP_MET_USR_GRP].[U_GROUP_TYPE] AS [U_GROUP_TYPE],
		[AIP_MET_USR_GRP].[U_REGION] AS [U_REGION],
		[AIP_MET_USR_GRP].[U_RESPONSIBILITY] AS [U_RESPONSIBILITY],
		[AIP_MET_USR_GRP].[U_SRMS_GROUPS] AS [U_SRMS_GROUPS],
		[AIP_MET_USR_GRP].[U_SUB_SUPPLIER] AS [U_SUB_SUPPLIER],
		[AIP_MET_USR_GRP].[U_SUPPLIER] AS [U_SUPPLIER],
		[AIP_MET_USR_GRP].[U_SUPPORT_GROUP] AS [U_SUPPORT_GROUP],
		[AIP_MET_USR_GRP].[U_WORK_NOTES] AS [U_WORK_NOTES],
		[AIP_MET_USR_GRP].[SLT_GROUP] AS [SLT_GROUP],
		[AIP_MET_USR_GRP].[PILLAR] AS [PILLAR],
		[AIP_MET_USR_GRP].[SUB_TEAM] AS [SUB_TEAM],
		[AIP_MET_USR_GRP].[SILO] AS [SILO],
		[AIP_MET_USR_GRP].[SCOPE] AS [SCOPE]
FROM [dbo].[UVW_INCIDENTS_SLA_PROBLEM_TASK] AS [INC_SLA_P_T]
FULL OUTER JOIN [dbo].[UVW_AIP_METRICS_USER_GROUP] AS [AIP_MET_USR_GRP] 
ON [INC_SLA_P_T].[INC_SYS_USER_GROUP_NAME]= [AIP_MET_USR_GRP].[NAME]
where [INC_SLA_P_T].[INC_OPENED_AT] >=  DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0)  OR [INC_SLA_P_T].[INC_CLOSED_AT] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) 
OR [INC_SLA_P_T].[P_CLOSED_AT] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) OR [INC_SLA_P_T].[PT_CLOSED_AT] >= DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0)
OR [INC_SLA_P_T].I_SLA_EX_OPENED_AT >=  DATEADD(month, DATEDIFF(month, 0,getdate())-24, 0) 







GO
/****** Object:  View [dbo].[UVW_INCIDENT_SURVEY]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_INCIDENT_SURVEY]
--SELECT * FROM [dbo].[UVW_INCIDENT_SURVEY]
AS
SELECT --DISTINCT 
 YEAR(I.INC_SYS_UPDATED_ON) AS [Incident Year Updated]
, DATENAME(MONTH, I.INC_SYS_UPDATED_ON) AS [Incident Month Updated]
, MONTH(I.INC_SYS_UPDATED_ON) AS [Incident MM Updated]
,[INC_ACTIVE] as [Incident Active]
      ,[INC_ACTIVITY_DUE] as [Incident Activity Due]
      ,[INC_APPROVAL] as [Incident Approval]
      ,[INC_APPROVAL_HISTORY] as [Incident Approval History]
      ,[INC_APPROVAL_SET] as [Incident Approval Set]
      ,[INC_ASSIGNED_TO_LINK] as [Incident Assigned To Link]
      ,[INC_ASSIGNED_TO_VALUE] as [Incident Assigned To Value]
      ,[INC_BUSINESS_DURATION] as [Incident Business Duration]
      ,[INC_BUSINESS_STC]  as [Incident Business Stc]
      ,[INC_CALENDAR_DURATION]  as [Incident Calendar Duration]
      ,[INC_CALENDAR_STC] as [Incident Calendar Stc]
--      ,[INC_CALLER_ID_VALUE]
      ,[INC_CATEGORY]   as [Incident Category]
      ,[INC_CAUSED_BY] as [Incident Caused By]
      ,[INC_CHILD_INCIDENTS] as [Incident Child Incidents]
      ,[INC_CLOSE_CODE] as [Incident Close Code]
      ,[INC_CLOSE_NOTES] as [Incident Close Notes]
      ,[INC_CLOSED_AT] as [Incident Closed At]
   ,clous.SU_NAME as [Incident Closed By]
      ,[INC_COMMENTS]  as [Incident Comments]
      ,[INC_COMMENTS_AND_WORK_NOTES] as [Incident Comments and Work Notes] 
--      ,[INC_COMPANY_VALUE]
      ,[INC_CONTACT_TYPE]  as [Incident Contact Type]
      ,[INC_CORRELATION_DISPLAY] as [Incident Correlation Display]
      ,[INC_DESCRIPTION] as [Incident Description]
      ,[INC_DUE_DATE] as [Incident Due Date]
      ,[INC_ESCALATION] as [Incident Escalation]
      ,[INC_EXPECTED_START] as [Incident Expected Start]
      ,[INC_FOLLOW_UP] as [Incident Follow Up]
      ,[INC_GROUP_LIST] as [Incident Group List]
      ,[INC_IMPACT] as [Incident Impact]
      ,CASE 
		WHEN [INC_INCIDENT_STATE] = 6  THEN 'Resolved'
		WHEN [INC_INCIDENT_STATE] = 7  THEN 'Closed'
		WHEN [INC_INCIDENT_STATE] = 8  THEN 'In Queue'
		WHEN [INC_INCIDENT_STATE] = 9  THEN 'Assigned'
		WHEN [INC_INCIDENT_STATE] = 10 THEN 'Work In Progress'
		WHEN [INC_INCIDENT_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL([INC_INCIDENT_STATE],''))
		END 
		as [Incident Incident State]
      ,[INC_KNOWLEDGE] as [Incident Knowledge]
--      ,[INC_LOCATION_VALUE]
      ,[INC_MADE_SLA] as [Incident Made Sla]
      ,[INC_NOTIFY] as [Incident Notify]
      ,I.[INC_NUMBER] as [Incident Number]
      ,[INC_OPENED_AT] as [Incident Opened At]
,opeus.SU_NAME as [Incident Opened By]
      ,[INC_ORDER] as [Incident Order]
      ,[INC_PARENT] as [Incident Parent]
      ,[INC_PRIORITY] as [Incident Priority]
      ,[INC_PROBLEM_ID] as [Incident Problem Id]
      ,[INC_REASSIGNMENT_COUNT] as [Incident Reassignment Count]
      ,[INC_REOPEN_COUNT] as [Incident Reopen Count]
      ,[INC_RESOLVED_AT] as [Incident Resolved At]
	   ,ressu.SU_NAME [Incident Resolved By]
      ,[INC_SEVERITY] as [Incident Severity]
      ,[INC_SHORT_DESCRIPTION] as [Incident Short Description]
      ,[INC_SKILLS] as [Incident Skills]
      ,[INC_SLA_DUE] as [Incident Sla Due]
      ,CASE 
		WHEN [INC_STATE] = 6  THEN 'Resolved'
		WHEN [INC_STATE] = 7  THEN 'Closed'
		WHEN [INC_STATE] = 8  THEN 'In Queue'
		WHEN [INC_STATE] = 9  THEN 'Assigned'
		WHEN [INC_STATE] = 10 THEN 'Work In Progress'
		WHEN [INC_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL([INC_STATE],''))
		END 
		as [Incident State]
      ,[INC_SUBCATEGORY] as [Incident SubCategory]
      ,[INC_SYS_CLASS_NAME] as [Incident Sys Class Name]
      ,[INC_SYS_CREATED_BY] as [Incident Sys Created By]
      ,[INC_SYS_CREATED_ON] as [Incident Sys Created On]
      ,[INC_SYS_MOD_COUNT] as [Incident Sys Mod Count]
      ,[INC_SYS_UPDATED_BY] as [Incident Sys Updated By]
      ,[INC_SYS_UPDATED_ON] as [Incident Sys Updated On]
      ,[INC_TIME_WORKED] as [Incident Time Worked]
      ,[INC_U_ACCENTURE_SLA] as [Incident Accenture Sla]
      ,[INC_U_APPOINTMENT_COMPLETED1] as [Incident Appointment Completed1]
      ,[INC_U_APPOINTMENT_TIME] as [Incident Appointment Time]
      ,[INC_U_ASSIGNMENT_GROUP_TYPE] as [Incident Assignment Group Type]
      ,[INC_U_BEST_CONTACT_NUMBER] as [Incident Best Contact Number]
      ,[INC_U_BRIDGE_LAUNCHED] as [Incident Bridge Launched]
      ,[INC_U_BRIDGE_REQUESTED] as [Incident Bridge Requested]
      ,[INC_U_CALL_IN_REASON] as [Incident Call In Reason]
      ,[INC_U_CALL_IN_REASON_COUNTER] as [Incident Call In Reason Center]
      ,[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D] as [Incident Can be Resolved At Service D]
      ,[INC_U_CATEGORY_1] as [Incident Category 1]
      ,[INC_U_CATEGORY_2] as [Incident Category 2]
      ,[INC_U_CATEGORY_3] as [Incident Category 3]
      ,[INC_U_CHANGE_REQUEST] as [Incident Change Request]
      ,[INC_U_CI_CATEGORY] as [Incident Ci Category]
      ,[INC_U_CI_CLASSIFICATION] as [Incident Ci Classification]
      ,[INC_U_CI_TYPE] as [Incident Ci Type]
      ,[INC_U_CRITICAL_INCIDENT] as [Incident Critical Incident]
      ,[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS] as [Incident Customer Follow Up Attempts]
      ,[INC_U_DEFECT_ID_] as [Incident Defect Id]
      ,[INC_U_DISPATCH_TYPE] as [Incident Dispatch Type]
      ,[INC_U_DSS___] as [Incident Dss]
      ,[INC_U_DSS___OF_VISITS] as [Incident Dss of Visits]
      ,[INC_U_DSS_HANDLE_TIME] as [Incident Dss Handle Time]
      ,[INC_U_FCR] as [Incident Fcr]
      ,[INC_U_INCIDENT_GP_TYPE] as [Incident Incident Gp Type]
      ,[INC_U_INCIDENT_NEW_PRIORITY] as [Incident Incident New Priority]
      ,[INC_U_INCIDENT_OLD_PRIORITY] as [Incident Incident Ol Priority]
      ,[INC_U_INFOSYS_KOURIER_SLA] as [Incident Infosys Kourier Sla]
      ,[INC_U_INFOSYS_SLA] as [Incident Infosys Sla]
      ,[INC_U_INFOSYS_UNISYS_SLA] as [Incident Infosys Unisys Sla]
      ,[INC_U_ISSUE_TYPE] as [Incident Issue Type]
      ,[INC_U_JUSTIFICATION] as [Incident Justification]
      ,[INC_U_KELLOGGS_SLA] as [Incident Kelloggs Sla]
      ,[INC_U_KNOWLEDGE_CANDIDATE] as [Incident Knowledge Candidate]
      ,[INC_U_KNOWLEDGE_USED] as [Incident Knowledge Used]
      ,[INC_U_L1_RESOLVABLE] as [Incident L1 Resolvable]
      ,[INC_U_L1_RESOLVABLE_DESCRIPTION] as [Incident L1 Resolvable Description]
      ,[INC_U_LANGUAGE] as [Incident Language]
      ,[INC_U_LOCATION] as [Incident Location]
      ,[INC_U_LOCATION_NEW] as [Incident Location New]
      ,[INC_U_MAJOR_INCIDENT_MANAGER] as [Incident Major Incident Manager]
      ,[INC_U_MINDTREE_SLA] as [Incident Mindtree Sla]
      ,[INC_U_MISSING_CI] as [Incident Missing Ci]
      ,[INC_U_MISSING_CI_NAME] as [Incident Missing Ci Name]
      ,[INC_U_MONITORING_LOCATION] as [Incident Monitoring Location]
      ,[INC_U_MTR_DURATION] as [Incident Mtr Duration]
      ,[INC_U_OLD_PRIORITY] as [Incident Old Priority]
      ,[INC_U_OLD_SUPPLIER] as [Incident Old Supplier]
      ,[INC_U_OPENED_BY_COMPANY_SUPPLIER] as [Incident Opened By Comapny Supplier]
      ,[INC_U_PENDING_DUR] as [Incident Pending Dur]
      ,[INC_U_PENDING_DURATION] as [Incident Pending Duration]
      ,[INC_U_PENDING_END_TIME] as [Incident Pending End Time]
      ,[INC_U_PENDING_REASON] as [Incident Pending Reason]
      ,[INC_U_PENDING_START_TIME] as [Incident Pending Start Time]
      ,[INC_U_PR_METRIC] as [Incident Pr Metric]
      ,[INC_U_PRB_CANDIDATE_USER] as [Incident Prb Candidate User]
      ,[INC_U_PRIORITY_FLAG] as [Incident Priority Flag]
      ,[INC_U_PROBLEM_CANDIDATE] as [Incident Problem Candidate]
      ,[INC_U_PROBLEM_CREATED] as [Incident Problem Created]
      ,[INC_U_REASSIGNMENT] as [Incident Reassignment]
      ,[INC_U_REGION] as [Incident Region]
      ,[INC_U_REOPENED_DATE] as [Incident Reopened Date]
      ,repus.SU_NAME as [Incident Reported By]
      ,[INC_U_RESPONSE_SLA] as [Incident Response Sla]
      ,[INC_U_SCIENCELOGIC_REGION] as [Incident Sciencelogic Region]
      ,[INC_U_SD_GROUP] as [Incident Sd Group]
      ,[INC_U_SD_RESOLVABLE] as [Incident Sd Resolvable]
      ,[INC_U_SD_START_TIME] as [Incident Sd Start Time]
      ,[INC_U_SELECT_CATEGORY] as [Incident Select Category]
      ,[INC_U_SILO_EID] as [Incident Silo Eid]
      ,[INC_U_SITE_CONTACT] as [Incident Site Contact]
      ,[INC_U_SLA_EXCEPTION] as [Incident Sla Exception]
      ,[INC_U_SLA_SUPPLIER] as [Incident Sla Supplier]
      ,[INC_U_SLA_VALIDATION] as [Incident Sla Validation]
      ,[INC_U_SRMS_DISPATCH] as [Incident Srms Dispatch]
      ,[INC_U_SRMS_LOCATION] as [Incident Srms Location]
      ,[INC_U_SRMS_RESOLVED] as [Incident Srms Resolved]
      ,[INC_U_SRMS_STATUS] as [Incident Srms Status]
      ,[INC_U_SRMS_TICKET_NUMBER] as [Incident Srms Ticket Number]
      ,[INC_U_SRMS_UPDATE] as [Incident Srms Update]
      ,[INC_U_STYLE_OVERRIDE] as [Incident Style Overrid]
      ,[INC_U_SUB_SUPPLIER] as [Incident Sub Supplier]
      ,[INC_U_SUPPLIER] as [Incident Supplier]
      ,[INC_U_SURVEY_COMMENTS]  as [Incident Survey Comments]
      ,[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE] as [Incident Unable To Resolve At Service]
      ,[INC_U_UNISYS_SLA] as [Incident Unisys Sla]
      ,[INC_U_UNISYS_SRMS_PRODUCT_STYLE] as [Incident Unisys Srms Product Style]
      ,[INC_U_VENDOR_NAME] as [Incident Vendor Name]
      ,[INC_U_VENDOR_TICKET_NUMBER] as [Incident Venor Ticket Number]
      ,[INC_U_VIP_RESPONSE_TIME] as [Incident Vip Response Time]
      ,[INC_U_WORKAROUND] as [Incident Workaround]
      ,[INC_UPON_APPROVAL] as [Incident Upon Approavl]
      ,[INC_UPON_REJECT] as [Incident Upon Reject]
      ,[INC_URGENCY] as [Incident Urgency]
      ,[INC_USER_INPUT] as [Incident User Input]
      ,[INC_WATCH_LIST] as [Incident Watch List]
      ,[INC_WORK_END] as [Incident Work End]
      ,[INC_WORK_NOTES] as [Incident Work Notes]
      ,[INC_WORK_NOTES_LIST] as [Incident Work Notes List]
      ,[INC_WORK_START] as [Incident Work State]
      ,[LOC_U_REGION] as [Incident Loc Region]
      ,[SYS_USER_U_REGION] as [Incident Sys User Region]
      ,UPPER([SYS_USER_GROUP_NAME]) as [Incident Sys User Group Name]
      ,[SYS_USER_GROUP_TEAM] as [Incident Sys User Group Team]
      ,[SYS_USER_GROUP_U_SUB_SUPPLIER] as [Incident Sys User Group Sub Supplier]
	  ,SUG.SUG_U_SUPPLIER as [Incident Sys User Group Supplier]
,CI.NAME as [Incident Cmdb Ci Name]
 ,CI.[CAN_PRINT]  as [Incident Cmdb Ci Can Print]
      ,CI.[CATEGORY] as [Incident Cmdb Ci Category]
    
      ,CI.[SHORT_DESCRIPTION]    as [Incident Cmdb Ci Short Description]
      ,CI.[SUBCATEGORY] as [Incident Cmdb Ci Sub Category]
      ,CI.[SYS_CREATED_BY] as [Incident Cmdb Ci Sys Created By]
      ,CI.[SYS_CREATED_ON] as [Incident Cmdb Ci Sys Created On]
      ,CI.[SYS_UPDATED_BY] as [Incident Cmdb Ci Sys Updated By]
      ,CI.[SYS_UPDATED_ON] as [Incident Cmdb Ci Sys Updated On]
      ,CI.[U_AD_LOCATION]      as [Incident Cmdb Ci Ad Location]
      ,CI.[U_REGION] as [Incident Cmdb Ci Region]
      ,CI.[U_REPORTING_CATEGORIES] as [Incident Cmdb Ci Reporting Categories]
      ,CI.[U_SCIENCELOGIC_REGION] as [Incident Cmdb Ci Science Logic Region]
      ,CI.[U_SUB_TYPE] as [Incident Cmdb Ci Sub Type]
      ,CI.[U_TYPE] as [Incident Cmdb Ci Type]
	  ,ASR.AMR_SYS_UPDATED_BY as [Incident Survey Response Updated Date]
,a.[Please provide any other feedback you'd like to share.],
a.[Please rate your level of satisfaction concerning your OVERALL experience with this GBS service],
a.[Please rate your level of satisfaction with the IT Specialist who resolved your issue],
a.[Staff's ability to resolve the issue],
a.[Staff's ability to understand the situation and answer your questions:],
a.[Staff's attitude and willingness to assist you],
a.[The amount of time it took to connect with a Global Service Desk representative.],
a.[The overall time it took to resolve your issue.],
a.[Were the priority of the issue and the expected resolution time provided to you?],
a.[Would you like a member of the GBS-IT Management team to contact you?]

FROM [KG_VIEWS].KG_SNOW.UVW_INCIDENT I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG on SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI CI on CI.SYS_ID=I.INC_CMDB_CI_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER ressu on ressu.SU_SYS_ID=I.INC_RESOLVED_BY_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER opeus on opeus.SU_SYS_ID=I.INC_OPENED_BY_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER clous on clous.SU_SYS_ID=I.INC_CLOSED_BY_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER repus on repus.SU_SYS_ID=I.INC_U_REPORTED_BY_VALUE
LEFT JOIN
(SELECT MAX(AMR_SYS_UPDATED_ON) as AMR_SYS_UPDATED_BY,I.INC_NUMBER
FROM [KG_VIEWS].KG_SNOW.UVW_INCIDENT I
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE] AAI ON I.INC_SYS_ID=AAI.[AAI_TRIGGER_ID_VALUE]
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE_QUESTION] AAIQ ON AAI.AAI_SYS_ID=AAIQ.AAIQ_INSTANCE_VALUE
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC] AM on AM.[AM_SYS_ID] =AAIQ.AAIQ_METRIC_VALUE
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC_RESULT] AMR ON AMR.AMR_INSTANCE_QUESTION_VALUE=AAIQ.AAIQ_SYS_ID
GROUP BY I.INC_NUMBER) ASR ON ASR.INC_NUMBER=I.INC_NUMBER

LEFT JOIN ---- // join changed to set incident count //
(
SELECT INC_NUMBER as [Incident Number],
[Please provide any other feedback you'd like to share.],
[Please rate your level of satisfaction concerning your OVERALL experience with this GBS service],
[Please rate your level of satisfaction with the IT Specialist who resolved your issue],
[Staff's ability to resolve the issue],
[Staff's ability to understand the situation and answer your questions:],
[Staff's attitude and willingness to assist you],
[The amount of time it took to connect with a Global Service Desk representative.],
[The overall time it took to resolve your issue.],
[Were the priority of the issue and the expected resolution time provided to you?],
[Would you like a member of the GBS-IT Management team to contact you?]
FROM (

SELECT 
 INC_NUMBER,CASE WHEN [AMR_U_SUEVEY_QUES]='Please provide any other feedback you''d like to share.' THEN [AMR_STRING_VALUE] ELSE AMR_U_SURVEY_RESPONSE_ENGLISH_ END as AMR_U_SURVEY_RESPONSE_ENGLISH_,LTRIM(RTRIM([AMR_U_SUEVEY_QUES])) as [AMR_U_SUEVEY_QUES]

FROM [KG_VIEWS].KG_SNOW.UVW_INCIDENT I
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE] AAI ON I.INC_SYS_ID=AAI.[AAI_TRIGGER_ID_VALUE]
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE_QUESTION] AAIQ ON AAI.AAI_SYS_ID=AAIQ.AAIQ_INSTANCE_VALUE
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC] AM on AM.[AM_SYS_ID] =AAIQ.AAIQ_METRIC_VALUE
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC_RESULT] AMR ON AMR.AMR_INSTANCE_QUESTION_VALUE=AAIQ.AAIQ_SYS_ID
--WHERE  [AMR_U_SUEVEY_QUES]='Please provide any other feedback you''d like to share.'
 ) S
PIVOT 
( MAX(AMR_U_SURVEY_RESPONSE_ENGLISH_)
FOR [AMR_U_SUEVEY_QUES] IN ([Please provide any other feedback you'd like to share.],
[Please rate your level of satisfaction concerning your OVERALL experience with this GBS service],
[Please rate your level of satisfaction with the IT Specialist who resolved your issue],
[Staff's ability to resolve the issue],
[Staff's ability to understand the situation and answer your questions:],
[Staff's attitude and willingness to assist you],
[The amount of time it took to connect with a Global Service Desk representative.],
[The overall time it took to resolve your issue.],
[Were the priority of the issue and the expected resolution time provided to you?],
[Would you like a member of the GBS-IT Management team to contact you?])) PVT
) a on a.[Incident Number]=I.INC_NUMBER

GO
/****** Object:  View [dbo].[UVW_INCIDENT_SURVEY_CUST_QUERY]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================================================================
-- Changed by	:	ATHEETH
-- Date   		:	08/21/2017
-- ==========================================================================================================================================

CREATE VIEW [dbo].[UVW_INCIDENT_SURVEY_CUST_QUERY]
AS
	SELECT [UVW_INCIDENT_SURVEY].[Incident Year Updated]
	,[UVW_INCIDENT_SURVEY].[Incident Month Updated]
	,[UVW_INCIDENT_SURVEY].[Incident MM Updated]
	,[UVW_INCIDENT_SURVEY].[Incident Active]
	,[UVW_INCIDENT_SURVEY].[Incident Activity Due]
	,[UVW_INCIDENT_SURVEY].[Incident Approval]
	,[UVW_INCIDENT_SURVEY].[Incident Approval History]
	,[UVW_INCIDENT_SURVEY].[Incident Approval Set]
	,[UVW_INCIDENT_SURVEY].[Incident Assigned To Link]
	,[UVW_INCIDENT_SURVEY].[Incident Assigned To Value]
	,[UVW_INCIDENT_SURVEY].[Incident Business Duration]
	,[UVW_INCIDENT_SURVEY].[Incident Business Stc]
	,[UVW_INCIDENT_SURVEY].[Incident Calendar Duration]
	,[UVW_INCIDENT_SURVEY].[Incident Calendar Stc]
	,[UVW_INCIDENT_SURVEY].[Incident Category]
	,[UVW_INCIDENT_SURVEY].[Incident Caused By]
	,[UVW_INCIDENT_SURVEY].[Incident Child Incidents]
	,[UVW_INCIDENT_SURVEY].[Incident Close Code]
	,[UVW_INCIDENT_SURVEY].[Incident Close Notes]
	,[UVW_INCIDENT_SURVEY].[Incident Closed At]
	,[UVW_INCIDENT_SURVEY].[Incident Closed By]
	,[UVW_INCIDENT_SURVEY].[Incident Comments]
	,[UVW_INCIDENT_SURVEY].[Incident Comments and Work Notes]
	,[UVW_INCIDENT_SURVEY].[Incident Contact Type]
	,[UVW_INCIDENT_SURVEY].[Incident Correlation Display]
	,[UVW_INCIDENT_SURVEY].[Incident Description]
	,[UVW_INCIDENT_SURVEY].[Incident Due Date]
	,[UVW_INCIDENT_SURVEY].[Incident Escalation]
	,[UVW_INCIDENT_SURVEY].[Incident Expected Start]
	,[UVW_INCIDENT_SURVEY].[Incident Follow Up]
	,[UVW_INCIDENT_SURVEY].[Incident Group List]
	,[UVW_INCIDENT_SURVEY].[Incident Impact]
	,[UVW_INCIDENT_SURVEY].[Incident Incident State]
	,[UVW_INCIDENT_SURVEY].[Incident Knowledge]
	,[UVW_INCIDENT_SURVEY].[Incident Made Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Notify]
	,[UVW_INCIDENT_SURVEY].[Incident Number]
	,[UVW_INCIDENT_SURVEY].[Incident Opened At]
	,[UVW_INCIDENT_SURVEY].[Incident Opened By]
	,[UVW_INCIDENT_SURVEY].[Incident Order]
	,[UVW_INCIDENT_SURVEY].[Incident Parent]
	,[UVW_INCIDENT_SURVEY].[Incident Priority]
	,[UVW_INCIDENT_SURVEY].[Incident Problem Id]
	,[UVW_INCIDENT_SURVEY].[Incident Reassignment Count]
	,[UVW_INCIDENT_SURVEY].[Incident Reopen Count]
	,[UVW_INCIDENT_SURVEY].[Incident Resolved At]
	,[UVW_INCIDENT_SURVEY].[Incident Resolved By]
	,[UVW_INCIDENT_SURVEY].[Incident Severity]
	,[UVW_INCIDENT_SURVEY].[Incident Short Description]
	,[UVW_INCIDENT_SURVEY].[Incident Skills]
	,[UVW_INCIDENT_SURVEY].[Incident Sla Due]
	,[UVW_INCIDENT_SURVEY].[Incident State]
	,[UVW_INCIDENT_SURVEY].[Incident SubCategory]
	,[UVW_INCIDENT_SURVEY].[Incident Sys Class Name]
	,[UVW_INCIDENT_SURVEY].[Incident Sys Created By]
	,[UVW_INCIDENT_SURVEY].[Incident Sys Created On]
	,[UVW_INCIDENT_SURVEY].[Incident Sys Mod Count]
	,[UVW_INCIDENT_SURVEY].[Incident Sys Updated By]
	,[UVW_INCIDENT_SURVEY].[Incident Sys Updated On]
	,[UVW_INCIDENT_SURVEY].[Incident Time Worked]
	,[UVW_INCIDENT_SURVEY].[Incident Accenture Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Appointment Completed1]
	,[UVW_INCIDENT_SURVEY].[Incident Appointment Time]
	,[UVW_INCIDENT_SURVEY].[Incident Assignment Group Type]
	,[UVW_INCIDENT_SURVEY].[Incident Best Contact Number]
	,[UVW_INCIDENT_SURVEY].[Incident Bridge Launched]
	,[UVW_INCIDENT_SURVEY].[Incident Bridge Requested]
	,[UVW_INCIDENT_SURVEY].[Incident Call In Reason]
	,[UVW_INCIDENT_SURVEY].[Incident Call In Reason Center]
	,[UVW_INCIDENT_SURVEY].[Incident Can be Resolved At Service D]
	,[UVW_INCIDENT_SURVEY].[Incident Category 1]
	,[UVW_INCIDENT_SURVEY].[Incident Category 2]
	,[UVW_INCIDENT_SURVEY].[Incident Category 3]
	,[UVW_INCIDENT_SURVEY].[Incident Change Request]
	,[UVW_INCIDENT_SURVEY].[Incident Ci Category]
	,[UVW_INCIDENT_SURVEY].[Incident Ci Classification]
	,[UVW_INCIDENT_SURVEY].[Incident Ci Type]
	,[UVW_INCIDENT_SURVEY].[Incident Critical Incident]
	,[UVW_INCIDENT_SURVEY].[Incident Customer Follow Up Attempts]
	,[UVW_INCIDENT_SURVEY].[Incident Defect Id]
	,[UVW_INCIDENT_SURVEY].[Incident Dispatch Type]
	,[UVW_INCIDENT_SURVEY].[Incident Dss]
	,[UVW_INCIDENT_SURVEY].[Incident Dss of Visits]
	,[UVW_INCIDENT_SURVEY].[Incident Dss Handle Time]
	,[UVW_INCIDENT_SURVEY].[Incident Fcr]
	,[UVW_INCIDENT_SURVEY].[Incident Incident Gp Type]
	,[UVW_INCIDENT_SURVEY].[Incident Incident New Priority]
	,[UVW_INCIDENT_SURVEY].[Incident Incident Ol Priority]
	,[UVW_INCIDENT_SURVEY].[Incident Infosys Kourier Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Infosys Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Infosys Unisys Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Issue Type]
	,[UVW_INCIDENT_SURVEY].[Incident Justification]
	,[UVW_INCIDENT_SURVEY].[Incident Kelloggs Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Knowledge Candidate]
	,[UVW_INCIDENT_SURVEY].[Incident Knowledge Used]
	,[UVW_INCIDENT_SURVEY].[Incident L1 Resolvable]
	,[UVW_INCIDENT_SURVEY].[Incident L1 Resolvable Description]
	,[UVW_INCIDENT_SURVEY].[Incident Language]
	,[UVW_INCIDENT_SURVEY].[Incident Location]
	,[UVW_INCIDENT_SURVEY].[Incident Location New]
	,[UVW_INCIDENT_SURVEY].[Incident Major Incident Manager]
	,[UVW_INCIDENT_SURVEY].[Incident Mindtree Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Missing Ci]
	,[UVW_INCIDENT_SURVEY].[Incident Missing Ci Name]
	,[UVW_INCIDENT_SURVEY].[Incident Monitoring Location]
	,[UVW_INCIDENT_SURVEY].[Incident Mtr Duration]
	,[UVW_INCIDENT_SURVEY].[Incident Old Priority]
	,[UVW_INCIDENT_SURVEY].[Incident Old Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Opened By Comapny Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Pending Dur]
	,[UVW_INCIDENT_SURVEY].[Incident Pending Duration]
	,[UVW_INCIDENT_SURVEY].[Incident Pending End Time]
	,[UVW_INCIDENT_SURVEY].[Incident Pending Reason]
	,[UVW_INCIDENT_SURVEY].[Incident Pending Start Time]
	,[UVW_INCIDENT_SURVEY].[Incident Pr Metric]
	,[UVW_INCIDENT_SURVEY].[Incident Prb Candidate User]
	,[UVW_INCIDENT_SURVEY].[Incident Priority Flag]
	,[UVW_INCIDENT_SURVEY].[Incident Problem Candidate]
	,[UVW_INCIDENT_SURVEY].[Incident Problem Created]
	,[UVW_INCIDENT_SURVEY].[Incident Reassignment]
	,[UVW_INCIDENT_SURVEY].[Incident Region]
	,[UVW_INCIDENT_SURVEY].[Incident Reopened Date]
	,[UVW_INCIDENT_SURVEY].[Incident Reported By]
	,[UVW_INCIDENT_SURVEY].[Incident Response Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Sciencelogic Region]
	,[UVW_INCIDENT_SURVEY].[Incident Sd Group]
	,[UVW_INCIDENT_SURVEY].[Incident Sd Resolvable]
	,[UVW_INCIDENT_SURVEY].[Incident Sd Start Time]
	,[UVW_INCIDENT_SURVEY].[Incident Select Category]
	,[UVW_INCIDENT_SURVEY].[Incident Silo Eid]
	,[UVW_INCIDENT_SURVEY].[Incident Site Contact]
	,[UVW_INCIDENT_SURVEY].[Incident Sla Exception]
	,[UVW_INCIDENT_SURVEY].[Incident Sla Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Sla Validation]
	,[UVW_INCIDENT_SURVEY].[Incident Srms Dispatch]
	,[UVW_INCIDENT_SURVEY].[Incident Srms Location]
	,[UVW_INCIDENT_SURVEY].[Incident Srms Resolved]
	,[UVW_INCIDENT_SURVEY].[Incident Srms Status]
	,[UVW_INCIDENT_SURVEY].[Incident Srms Ticket Number]
	,[UVW_INCIDENT_SURVEY].[Incident Srms Update]
	,[UVW_INCIDENT_SURVEY].[Incident Style Overrid]
	,[UVW_INCIDENT_SURVEY].[Incident Sub Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Survey Comments]
	,[UVW_INCIDENT_SURVEY].[Incident Unable To Resolve At Service]
	,[UVW_INCIDENT_SURVEY].[Incident Unisys Sla]
	,[UVW_INCIDENT_SURVEY].[Incident Unisys Srms Product Style]
	,[UVW_INCIDENT_SURVEY].[Incident Vendor Name]
	,[UVW_INCIDENT_SURVEY].[Incident Venor Ticket Number]
	,[UVW_INCIDENT_SURVEY].[Incident Vip Response Time]
	,[UVW_INCIDENT_SURVEY].[Incident Workaround]
	,[UVW_INCIDENT_SURVEY].[Incident Upon Approavl]
	,[UVW_INCIDENT_SURVEY].[Incident Upon Reject]
	,[UVW_INCIDENT_SURVEY].[Incident Urgency]
	,[UVW_INCIDENT_SURVEY].[Incident User Input]
	,[UVW_INCIDENT_SURVEY].[Incident Watch List]
	,[UVW_INCIDENT_SURVEY].[Incident Work End]
	,[UVW_INCIDENT_SURVEY].[Incident Work Notes]
	,[UVW_INCIDENT_SURVEY].[Incident Work Notes List]
	,[UVW_INCIDENT_SURVEY].[Incident Work State]
	,[UVW_INCIDENT_SURVEY].[Incident Loc Region]
	,[UVW_INCIDENT_SURVEY].[Incident Sys User Region]
	,[UVW_INCIDENT_SURVEY].[Incident Sys User Group Name]
	,[UVW_INCIDENT_SURVEY].[Incident Sys User Group Team]
	,[UVW_INCIDENT_SURVEY].[Incident Sys User Group Sub Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Sys User Group Supplier]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Name]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Can Print]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Category]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Short Description]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Sub Category]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Sys Created By]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Sys Created On]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Sys Updated By]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Sys Updated On]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Ad Location]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Region]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Reporting Categories]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Science Logic Region]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Sub Type]
	,[UVW_INCIDENT_SURVEY].[Incident Cmdb Ci Type]
	,[UVW_INCIDENT_SURVEY].[Incident Survey Response Updated Date]
	,[UVW_INCIDENT_SURVEY].[Please provide any other feedback you'd like to share.]
	,[UVW_INCIDENT_SURVEY].[Please rate your level of satisfaction concerning your OVERALL experience with this GBS service]
	,[UVW_INCIDENT_SURVEY].[Please rate your level of satisfaction with the IT Specialist who resolved your issue]
	,[UVW_INCIDENT_SURVEY].[Staff's ability to resolve the issue]
	,[UVW_INCIDENT_SURVEY].[Staff's ability to understand the situation and answer your questions:]
	,[UVW_INCIDENT_SURVEY].[Staff's attitude and willingness to assist you]
	,[UVW_INCIDENT_SURVEY].[The amount of time it took to connect with a Global Service Desk representative.]
	,[UVW_INCIDENT_SURVEY].[The overall time it took to resolve your issue.]
	,[UVW_INCIDENT_SURVEY].[Were the priority of the issue and the expected resolution time provided to you?]
	,[UVW_INCIDENT_SURVEY].[Would you like a member of the GBS-IT Management team to contact you?]
	,[UVW_AIP_METRICS_USER_GROUP].[ID]
	,[UVW_AIP_METRICS_USER_GROUP].[SUPPLIER]
	,[UVW_AIP_METRICS_USER_GROUP].[SUB_SUPPLIER]
	,[UVW_AIP_METRICS_USER_GROUP].[SLA_OWNER]
	,[UVW_AIP_METRICS_USER_GROUP].[TEAM]
	,[UVW_AIP_METRICS_USER_GROUP].[METRIC_MEASURE]
	,[UVW_AIP_METRICS_USER_GROUP].[METRIC_TARGET]
	,[UVW_AIP_METRICS_USER_GROUP].[METRIC_DESCRIPTION]
	,[UVW_AIP_METRICS_USER_GROUP].[ACTIVE]
	,[UVW_AIP_METRICS_USER_GROUP].[COST_CENTER]
	,[UVW_AIP_METRICS_USER_GROUP].[DEFAULT_ASSIGNEE]
	,[UVW_AIP_METRICS_USER_GROUP].[DESCRIPTION]
	,[UVW_AIP_METRICS_USER_GROUP].[EMAIL]
	,[UVW_AIP_METRICS_USER_GROUP].[EXCLUDE_MANAGER]
	,[UVW_AIP_METRICS_USER_GROUP].[HOURLY_RATE]
	,[UVW_AIP_METRICS_USER_GROUP].[INCLUDE_MEMBERS]
	,[UVW_AIP_METRICS_USER_GROUP].[MANAGER_LINK]
	,[UVW_AIP_METRICS_USER_GROUP].[MANAGER_VALUE]
	,[UVW_AIP_METRICS_USER_GROUP].[NAME]
	,[UVW_AIP_METRICS_USER_GROUP].[PARENT]
	,[UVW_AIP_METRICS_USER_GROUP].[SOURCE]
	,[UVW_AIP_METRICS_USER_GROUP].[SYS_CREATED_BY]
	,[UVW_AIP_METRICS_USER_GROUP].[SYS_CREATED_ON]
	,[UVW_AIP_METRICS_USER_GROUP].[SYS_ID]
	,[UVW_AIP_METRICS_USER_GROUP].[SYS_MOD_COUNT]
	,[UVW_AIP_METRICS_USER_GROUP].[SYS_UPDATED_BY]
	,[UVW_AIP_METRICS_USER_GROUP].[SYS_UPDATED_ON]
	,[UVW_AIP_METRICS_USER_GROUP].[TYPE]
	,[UVW_AIP_METRICS_USER_GROUP].[U_ALIAS]
	,[UVW_AIP_METRICS_USER_GROUP].[U_CONTENT_APPROVER_LINK]
	,[UVW_AIP_METRICS_USER_GROUP].[U_CONTENT_APPROVER_VALUE]
	,[UVW_AIP_METRICS_USER_GROUP].[U_DSS_GROUP]
	,[UVW_AIP_METRICS_USER_GROUP].[U_GROUP_ID]
	,[UVW_AIP_METRICS_USER_GROUP].[U_GROUP_TYPE]
	,[UVW_AIP_METRICS_USER_GROUP].[U_REGION]
	,[UVW_AIP_METRICS_USER_GROUP].[U_RESPONSIBILITY]
	,[UVW_AIP_METRICS_USER_GROUP].[U_SRMS_GROUPS]
	,[UVW_AIP_METRICS_USER_GROUP].[U_SUB_SUPPLIER]
	,[UVW_AIP_METRICS_USER_GROUP].[U_SUPPLIER]
	,[UVW_AIP_METRICS_USER_GROUP].[U_SUPPORT_GROUP]
	,[UVW_AIP_METRICS_USER_GROUP].[U_WORK_NOTES]
	,[UVW_AIP_METRICS_USER_GROUP].[SLT_GROUP]
	,[UVW_AIP_METRICS_USER_GROUP].[PILLAR]
	,[UVW_AIP_METRICS_USER_GROUP].[SUB_TEAM]
	,[UVW_AIP_METRICS_USER_GROUP].[SILO]
	,[UVW_AIP_METRICS_USER_GROUP].[SCOPE]
FROM [dbo].[UVW_INCIDENT_SURVEY] [UVW_INCIDENT_SURVEY]
Full outer JOIN [dbo].[UVW_AIP_METRICS_USER_GROUP] [UVW_AIP_METRICS_USER_GROUP] ON  [UVW_INCIDENT_SURVEY].[Incident Sys User Group Name]= [UVW_AIP_METRICS_USER_GROUP].[NAME]
---where DATEPART(YYYY,[Incident Sys Updated On]) in ('2017' )
GO
/****** Object:  View [dbo].[UVW_INCIDENT_SURVEY_GETCOUNT]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_INCIDENT_SURVEY_GETCOUNT]
--SELECT * FROM [dbo].[UVW_INCIDENT_SURVEY]
AS
with TotalCount (TotalTktCount,MonthYr, YearMn, GroupName) as
(
SELECT        COUNT(Distinct [Incident Number]) AS TotalTktCount, CONVERT(varchar(3), [Incident Sys Updated On], 100) AS MonthYr, Year([Incident Sys Updated On]) As YearMn, [Incident Sys User Group Name] As GroupName
FROM            UVW_INCIDENT_SURVEY
GROUP BY CONVERT(varchar(3), [Incident Sys Updated On], 100),Year([Incident Sys Updated On]) ,[Incident Sys User Group Name]
),
ResponseCount (RespCount,MonthYr,YearMn, GroupName) as
(
SELECT        COUNT(Distinct [Incident Number]) AS RespCount, CONVERT(varchar(3), [Incident Sys Updated On], 100) AS MonthYr, Year([Incident Sys Updated On]) As YearMn, [Incident Sys User Group Name] As GroupName
FROM            UVW_INCIDENT_SURVEY
WHERE        ([Incident Survey Response Updated Date] Is Not Null)
GROUP BY CONVERT(varchar(3), [Incident Sys Updated On], 100),Year([Incident Sys Updated On]) ,[Incident Sys User Group Name]
)
select TotalTktCount As [Total Survey Sent],RespCount As [Total Survey Response],TotalCount.MonthYr As [Month Survey Sent On],TotalCount.YearMn As [Year Survey Sent On], TotalCount.GroupName As [Incident Sys User Group Name]
from TotalCount inner join ResponseCount on TotalCount.MonthYr = ResponseCount.MonthYr And TotalCount.YearMn = ResponseCount.YearMn And TotalCount.GroupName = ResponseCount.GroupName




GO
/****** Object:  View [dbo].[UVW_INCIDENT_SURVEY_NEW]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  VIEW [dbo].[UVW_INCIDENT_SURVEY_NEW]
AS
SELECT DISTINCT 
 YEAR(I.INC_SYS_UPDATED_ON) AS [Incident Year Updated]
, DATENAME(MONTH, I.INC_SYS_UPDATED_ON) AS [Incident Month Updated]
, MONTH(I.INC_SYS_UPDATED_ON) AS [Incident MM Updated]
,[INC_ACTIVE] as [Incident Active]
      ,[INC_ACTIVITY_DUE] as [Incident Activity Due]
      ,[INC_APPROVAL] as [Incident Approval]
      ,[INC_APPROVAL_HISTORY] as [Incident Approval History]
      ,[INC_APPROVAL_SET] as [Incident Approval Set]
      ,[INC_ASSIGNED_TO_LINK] as [Incident Assigned To Link]
      ,[INC_ASSIGNED_TO_VALUE] as [Incident Assigned To Value]
      ,[INC_BUSINESS_DURATION] as [Incident Business Duration]
      ,[INC_BUSINESS_STC]  as [Incident Business Stc]
      ,[INC_CALENDAR_DURATION]  as [Incident Calendar Duration]
      ,[INC_CALENDAR_STC] as [Incident Calendar Stc]
--      ,[INC_CALLER_ID_VALUE]
      ,[INC_CATEGORY]   as [Incident Category]
      ,[INC_CAUSED_BY] as [Incident Caused By]
      ,[INC_CHILD_INCIDENTS] as [Incident Child Incidents]
      ,[INC_CLOSE_CODE] as [Incident Close Code]
      ,[INC_CLOSE_NOTES] as [Incident Close Notes]
      ,[INC_CLOSED_AT] as [Incident Closed At]
      ,clous.SU_NAME as [Incident Closed By]
      ,[INC_COMMENTS]  as [Incident Comments]
      ,[INC_COMMENTS_AND_WORK_NOTES] as [Incident Comments and Work Notes] 
--      ,[INC_COMPANY_VALUE]
      ,[INC_CONTACT_TYPE]  as [Incident Contact Type]
      ,[INC_CORRELATION_DISPLAY] as [Incident Correlation Display]
      ,[INC_DESCRIPTION] as [Incident Description]
      ,[INC_DUE_DATE] as [Incident Due Date]
      ,[INC_ESCALATION] as [Incident Escalation]
      ,[INC_EXPECTED_START] as [Incident Expected Start]
      ,[INC_FOLLOW_UP] as [Incident Follow Up]
      ,[INC_GROUP_LIST] as [Incident Group List]
      ,[INC_IMPACT] as [Incident Impact]
      ,CASE 
		WHEN [INC_INCIDENT_STATE] = 6  THEN 'Resolved'
		WHEN [INC_INCIDENT_STATE] = 7  THEN 'Closed'
		WHEN [INC_INCIDENT_STATE] = 8  THEN 'In Queue'
		WHEN [INC_INCIDENT_STATE] = 9  THEN 'Assigned'
		WHEN [INC_INCIDENT_STATE] = 10 THEN 'Work In Progress'
		WHEN [INC_INCIDENT_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL([INC_INCIDENT_STATE],''))
		END 
		as [Incident Incident State]
      ,[INC_KNOWLEDGE] as [Incident Knowledge]
--      ,[INC_LOCATION_VALUE]
      ,[INC_MADE_SLA] as [Incident Made Sla]
      ,[INC_NOTIFY] as [Incident Notify]
      ,I.[INC_NUMBER] as [Incident Number]
      ,[INC_OPENED_AT] as [Incident Opened At]
      ,opeus.SU_NAME as [Incident Opened By]
      ,[INC_ORDER] as [Incident Order]
      ,[INC_PARENT] as [Incident Parent]
      ,[INC_PRIORITY] as [Incident Priority]
      ,[INC_PROBLEM_ID] as [Incident Problem Id]
      ,[INC_REASSIGNMENT_COUNT] as [Incident Reassignment Count]
      ,[INC_REOPEN_COUNT] as [Incident Reopen Count]
      ,[INC_RESOLVED_AT] as [Incident Resolved At]
	   ,ressu.SU_NAME [Incident Resolved By]
      ,[INC_SEVERITY] as [Incident Severity]
      ,[INC_SHORT_DESCRIPTION] as [Incident Short Description]
      ,[INC_SKILLS] as [Incident Skills]
      ,[INC_SLA_DUE] as [Incident Sla Due]
      ,CASE 
		WHEN [INC_STATE] = 6  THEN 'Resolved'
		WHEN [INC_STATE] = 7  THEN 'Closed'
		WHEN [INC_STATE] = 8  THEN 'In Queue'
		WHEN [INC_STATE] = 9  THEN 'Assigned'
		WHEN [INC_STATE] = 10 THEN 'Work In Progress'
		WHEN [INC_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL([INC_STATE],''))
		END 
		as [Incident State]
      ,[INC_SUBCATEGORY] as [Incident SubCategory]
      ,[INC_SYS_CLASS_NAME] as [Incident Sys Class Name]
      ,[INC_SYS_CREATED_BY] as [Incident Sys Created By]
      ,[INC_SYS_CREATED_ON] as [Incident Sys Created On]
      ,[INC_SYS_MOD_COUNT] as [Incident Sys Mod Count]
      ,[INC_SYS_UPDATED_BY] as [Incident Sys Updated By]
      ,[INC_SYS_UPDATED_ON] as [Incident Sys Updated On]
      ,[INC_TIME_WORKED] as [Incident Time Worked]
      ,[INC_U_ACCENTURE_SLA] as [Incident Accenture Sla]
      ,[INC_U_APPOINTMENT_COMPLETED1] as [Incident Appointment Completed1]
      ,[INC_U_APPOINTMENT_TIME] as [Incident Appointment Time]
      ,[INC_U_ASSIGNMENT_GROUP_TYPE] as [Incident Assignment Group Type]
      ,[INC_U_BEST_CONTACT_NUMBER] as [Incident Best Contact Number]
      ,[INC_U_BRIDGE_LAUNCHED] as [Incident Bridge Launched]
      ,[INC_U_BRIDGE_REQUESTED] as [Incident Bridge Requested]
      ,[INC_U_CALL_IN_REASON] as [Incident Call In Reason]
      ,[INC_U_CALL_IN_REASON_COUNTER] as [Incident Call In Reason Center]
      ,[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D] as [Incident Can be Resolved At Service D]
      ,[INC_U_CATEGORY_1] as [Incident Category 1]
      ,[INC_U_CATEGORY_2] as [Incident Category 2]
      ,[INC_U_CATEGORY_3] as [Incident Category 3]
      ,[INC_U_CHANGE_REQUEST] as [Incident Change Request]
      ,[INC_U_CI_CATEGORY] as [Incident Ci Category]
      ,[INC_U_CI_CLASSIFICATION] as [Incident Ci Classification]
      ,[INC_U_CI_TYPE] as [Incident Ci Type]
      ,[INC_U_CRITICAL_INCIDENT] as [Incident Critical Incident]
      ,[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS] as [Incident Customer Follow Up Attempts]
      ,[INC_U_DEFECT_ID_] as [Incident Defect Id]
      ,[INC_U_DISPATCH_TYPE] as [Incident Dispatch Type]
      ,[INC_U_DSS___] as [Incident Dss]
      ,[INC_U_DSS___OF_VISITS] as [Incident Dss of Visits]
      ,[INC_U_DSS_HANDLE_TIME] as [Incident Dss Handle Time]
      ,[INC_U_FCR] as [Incident Fcr]
      ,[INC_U_INCIDENT_GP_TYPE] as [Incident Incident Gp Type]
      ,[INC_U_INCIDENT_NEW_PRIORITY] as [Incident Incident New Priority]
      ,[INC_U_INCIDENT_OLD_PRIORITY] as [Incident Incident Ol Priority]
      ,[INC_U_INFOSYS_KOURIER_SLA] as [Incident Infosys Kourier Sla]
      ,[INC_U_INFOSYS_SLA] as [Incident Infosys Sla]
      ,[INC_U_INFOSYS_UNISYS_SLA] as [Incident Infosys Unisys Sla]
      ,[INC_U_ISSUE_TYPE] as [Incident Issue Type]
      ,[INC_U_JUSTIFICATION] as [Incident Justification]
      ,[INC_U_KELLOGGS_SLA] as [Incident Kelloggs Sla]
      ,[INC_U_KNOWLEDGE_CANDIDATE] as [Incident Knowledge Candidate]
      ,[INC_U_KNOWLEDGE_USED] as [Incident Knowledge Used]
      ,[INC_U_L1_RESOLVABLE] as [Incident L1 Resolvable]
      ,[INC_U_L1_RESOLVABLE_DESCRIPTION] as [Incident L1 Resolvable Description]
      ,[INC_U_LANGUAGE] as [Incident Language]
      ,[INC_U_LOCATION] as [Incident Location]
      ,[INC_U_LOCATION_NEW] as [Incident Location New]
      ,[INC_U_MAJOR_INCIDENT_MANAGER] as [Incident Major Incident Manager]
      ,[INC_U_MINDTREE_SLA] as [Incident Mindtree Sla]
      ,[INC_U_MISSING_CI] as [Incident Missing Ci]
      ,[INC_U_MISSING_CI_NAME] as [Incident Missing Ci Name]
      ,[INC_U_MONITORING_LOCATION] as [Incident Monitoring Location]
      ,[INC_U_MTR_DURATION] as [Incident Mtr Duration]
      ,[INC_U_OLD_PRIORITY] as [Incident Old Priority]
      ,[INC_U_OLD_SUPPLIER] as [Incident Old Supplier]
      ,[INC_U_OPENED_BY_COMPANY_SUPPLIER] as [Incident Opened By Comapny Supplier]
      ,[INC_U_PENDING_DUR] as [Incident Pending Dur]
      ,[INC_U_PENDING_DURATION] as [Incident Pending Duration]
      ,[INC_U_PENDING_END_TIME] as [Incident Pending End Time]
      ,[INC_U_PENDING_REASON] as [Incident Pending Reason]
      ,[INC_U_PENDING_START_TIME] as [Incident Pending Start Time]
      ,[INC_U_PR_METRIC] as [Incident Pr Metric]
      ,[INC_U_PRB_CANDIDATE_USER] as [Incident Prb Candidate User]
      ,[INC_U_PRIORITY_FLAG] as [Incident Priority Flag]
      ,[INC_U_PROBLEM_CANDIDATE] as [Incident Problem Candidate]
      ,[INC_U_PROBLEM_CREATED] as [Incident Problem Created]
      ,[INC_U_REASSIGNMENT] as [Incident Reassignment]
      ,[INC_U_REGION] as [Incident Region]
      ,[INC_U_REOPENED_DATE] as [Incident Reopened Date]
      ,repus.SU_NAME as [Incident Reported By]
      ,[INC_U_RESPONSE_SLA] as [Incident Response Sla]
      ,[INC_U_SCIENCELOGIC_REGION] as [Incident Sciencelogic Region]
      ,[INC_U_SD_GROUP] as [Incident Sd Group]
      ,[INC_U_SD_RESOLVABLE] as [Incident Sd Resolvable]
      ,[INC_U_SD_START_TIME] as [Incident Sd Start Time]
      ,[INC_U_SELECT_CATEGORY] as [Incident Select Category]
      ,[INC_U_SILO_EID] as [Incident Silo Eid]
      ,[INC_U_SITE_CONTACT] as [Incident Site Contact]
      ,[INC_U_SLA_EXCEPTION] as [Incident Sla Exception]
      ,[INC_U_SLA_SUPPLIER] as [Incident Sla Supplier]
      ,[INC_U_SLA_VALIDATION] as [Incident Sla Validation]
      ,[INC_U_SRMS_DISPATCH] as [Incident Srms Dispatch]
      ,[INC_U_SRMS_LOCATION] as [Incident Srms Location]
      ,[INC_U_SRMS_RESOLVED] as [Incident Srms Resolved]
      ,[INC_U_SRMS_STATUS] as [Incident Srms Status]
      ,[INC_U_SRMS_TICKET_NUMBER] as [Incident Srms Ticket Number]
      ,[INC_U_SRMS_UPDATE] as [Incident Srms Update]
      ,[INC_U_STYLE_OVERRIDE] as [Incident Style Overrid]
      ,[INC_U_SUB_SUPPLIER] as [Incident Sub Supplier]
      ,[INC_U_SUPPLIER] as [Incident Supplier]
      ,[INC_U_SURVEY_COMMENTS]  as [Incident Survey Comments]
      ,[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE] as [Incident Unable To Resolve At Service]
      ,[INC_U_UNISYS_SLA] as [Incident Unisys Sla]
      ,[INC_U_UNISYS_SRMS_PRODUCT_STYLE] as [Incident Unisys Srms Product Style]
      ,[INC_U_VENDOR_NAME] as [Incident Vendor Name]
      ,[INC_U_VENDOR_TICKET_NUMBER] as [Incident Venor Ticket Number]
      ,[INC_U_VIP_RESPONSE_TIME] as [Incident Vip Response Time]
      ,[INC_U_WORKAROUND] as [Incident Workaround]
      ,[INC_UPON_APPROVAL] as [Incident Upon Approavl]
      ,[INC_UPON_REJECT] as [Incident Upon Reject]
      ,[INC_URGENCY] as [Incident Urgency]
      ,[INC_USER_INPUT] as [Incident User Input]
      ,[INC_WATCH_LIST] as [Incident Watch List]
      ,[INC_WORK_END] as [Incident Work End]
      ,[INC_WORK_NOTES] as [Incident Work Notes]
      ,[INC_WORK_NOTES_LIST] as [Incident Work Notes List]
      ,[INC_WORK_START] as [Incident Work State]
      ,[LOC_U_REGION] as [Incident Loc Region]
      ,[SYS_USER_U_REGION] as [Incident Sys User Region]
      ,UPPER([SYS_USER_GROUP_NAME]) as [Incident Sys User Group Name]
      ,[SYS_USER_GROUP_TEAM] as [Incident Sys User Group Team]
      ,[SYS_USER_GROUP_U_SUB_SUPPLIER] as [Incident Sys User Group Sub Supplier]
	  ,SUG.SUG_U_SUPPLIER as [Incident Sys User Group Supplier]
	  ,CI.NAME as [Incident Cmdb Ci Name]
      ,CI.[CAN_PRINT]  as [Incident Cmdb Ci Can Print]
      ,CI.[CATEGORY] as [Incident Cmdb Ci Category]
      ,CI.[SHORT_DESCRIPTION]    as [Incident Cmdb Ci Short Description]
      ,CI.[SUBCATEGORY] as [Incident Cmdb Ci Sub Category]
      ,CI.[SYS_CREATED_BY] as [Incident Cmdb Ci Sys Created By]
      ,CI.[SYS_CREATED_ON] as [Incident Cmdb Ci Sys Created On]
      ,CI.[SYS_UPDATED_BY] as [Incident Cmdb Ci Sys Updated By]
      ,CI.[SYS_UPDATED_ON] as [Incident Cmdb Ci Sys Updated On]
      ,CI.[U_AD_LOCATION]      as [Incident Cmdb Ci Ad Location]
      ,CI.[U_REGION] as [Incident Cmdb Ci Region]
      ,CI.[U_REPORTING_CATEGORIES] as [Incident Cmdb Ci Reporting Categories]
      ,CI.[U_SCIENCELOGIC_REGION] as [Incident Cmdb Ci Science Logic Region]
      ,CI.[U_SUB_TYPE] as [Incident Cmdb Ci Sub Type]
      ,CI.[U_TYPE] as [Incident Cmdb Ci Type]
	  ,AMR.AMR_SYS_UPDATED_ON as [Incident Survey Response Updated Date]
	  ,CASE --WHEN ([AMR_U_SUEVEY_QUES] =' ' or [AMR_U_SUEVEY_QUES] IS NULL) and charindex('.',[AM_QUESTION])<>0 and charindex('.',[AM_QUESTION])<5
				 --THEN ltrim(substring([AM_QUESTION],charindex('.',[AM_QUESTION])+1,LEN([AM_QUESTION]))) 
	        --WHEN [AMR_U_SUEVEY_QUES] =' ' or [AMR_U_SUEVEY_QUES] IS NULL THEN AM_QUESTION
	        WHEN charindex('.',AMR.AMR_U_SUEVEY_QUES)<>0 and charindex('.',AMR.AMR_U_SUEVEY_QUES)<5
				THEN ltrim(substring(AMR.AMR_U_SUEVEY_QUES,charindex('.',AMR.AMR_U_SUEVEY_QUES)+1,LEN(AMR.AMR_U_SUEVEY_QUES)))  
			ELSE AMR.AMR_U_SUEVEY_QUES END as [Incident Survey Question] 
	  ,CASE WHEN  /**AMR_U_SURVEY_RESPONSE_ENGLISH_ =' ' or**/  AMR_U_SURVEY_RESPONSE_ENGLISH_ IS NULL
				THEN [AMR_STRING_VALUE] 
			ELSE 
			AMR_U_SURVEY_RESPONSE_ENGLISH_ 
		END 
			as [Incident Survey Response]
FROM [KG_VIEWS].KG_SNOW.UVW_INCIDENT I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG on SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI CI on CI.SYS_ID=I.INC_CMDB_CI_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER ressu on ressu.SU_SYS_ID=I.INC_RESOLVED_BY_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER opeus on opeus.SU_SYS_ID=I.INC_OPENED_BY_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER clous on clous.SU_SYS_ID=I.INC_CLOSED_BY_VALUE
Left join KG_VIEWS.KG_SNOW.UVW_SYS_USER repus on repus.SU_SYS_ID=I.INC_U_REPORTED_BY_VALUE

/**(SELECT MAX(AMR_SYS_UPDATED_ON) as AMR_SYS_UPDATED_BY,I.INC_NUMBER
FROM [KG_VIEWS].KG_SNOW.UVW_INCIDENT I
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE] AAI ON I.INC_SYS_ID=AAI.[AAI_TRIGGER_ID_VALUE]
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE_QUESTION] AAIQ ON AAI.AAI_SYS_ID=AAIQ.AAIQ_INSTANCE_VALUE
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC] AM on AM.[AM_SYS_ID] =AAIQ.AAIQ_METRIC_VALUE
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC_RESULT] AMR ON AMR.AMR_INSTANCE_QUESTION_VALUE=AAIQ.AAIQ_SYS_ID
GROUP BY I.INC_NUMBER) ASR ON ASR.INC_NUMBER=I.INC_NUMBER**/

Left join [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE] AAI ON I.INC_SYS_ID=AAI.[AAI_TRIGGER_ID_VALUE]
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_ASSESSMENT_INSTANCE_QUESTION] AAIQ ON AAI.AAI_SYS_ID=AAIQ.AAIQ_INSTANCE_VALUE
JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC_RESULT] AMR ON AMR.AMR_INSTANCE_QUESTION_VALUE=AAIQ.AAIQ_SYS_ID
--JOIN [KG_VIEWS].[KG_SNOW].[UVW_ASMT_METRIC] AM on AM.[AM_SYS_ID] =AAIQ.AAIQ_METRIC_VALUE

GO
/****** Object:  View [dbo].[UVW_INCIDENT_SURVEY_CUST_QUERY_NEW]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ===============================================================================================================================================
-- NAME        	:	UVW_INCIDENT_SURVEY_CUST_QUERY_NEW
-- PURPOSE & 
-- Description  :  
                        
-- REVISIONS:

-- Ver          Date             Author                    Change Reason

-- 1.0         08-21-2017	   ATHEETH RAO	         		1. Initial Version

-- 1.1		   01-05-2018      ANIL KONDLA					2. Standardised the code

-- ===============================================================================================================================================

CREATE VIEW [dbo].[UVW_INCIDENT_SURVEY_CUST_QUERY_NEW]
AS
SELECT  [INC_SUV].[Incident Year Updated] AS [Incident Year Updated]
       ,[INC_SUV].[Incident Month Updated] AS [Incident Month Updated]
       ,[INC_SUV].[Incident MM Updated] AS [Incident MM Updated]
       ,[INC_SUV].[Incident Active] AS [Incident Active]
       ,[INC_SUV].[Incident Activity Due] AS [Incident Activity Due]
       ,[INC_SUV].[Incident Approval] AS [Incident Approval]
       ,[INC_SUV].[Incident Approval History] AS [Incident Approval History]
       ,[INC_SUV].[Incident Approval Set] AS [Incident Approval Set]
       ,[INC_SUV].[Incident Assigned To Link] AS [Incident Assigned To Link]
       ,[INC_SUV].[Incident Assigned To Value] AS [Incident Assigned To Value]
       ,[INC_SUV].[Incident Business Duration] AS [Incident Business Duration]
       ,[INC_SUV].[Incident Business Stc] AS [Incident Business Stc]
       ,[INC_SUV].[Incident Calendar Duration] AS [Incident Calendar Duration]
       ,[INC_SUV].[Incident Calendar Stc] AS [Incident Calendar Stc]
       ,[INC_SUV].[Incident Category] AS [Incident Category]
       ,[INC_SUV].[Incident Caused By] AS [Incident Caused By]
       ,[INC_SUV].[Incident Child Incidents] AS [Incident Child Incidents]
       ,[INC_SUV].[Incident Close Code] AS [Incident Close Code]
       ,[INC_SUV].[Incident Close Notes] AS [Incident Close Notes]
       ,[INC_SUV].[Incident Closed At] AS [Incident Closed At]
       ,[INC_SUV].[Incident Closed By] AS [Incident Closed By]
       ,[INC_SUV].[Incident Comments] AS [Incident Comments]
       ,[INC_SUV].[Incident Comments and Work Notes] AS [Incident Comments and Work Notes]
       ,[INC_SUV].[Incident Contact Type] AS [Incident Contact Type]
       ,[INC_SUV].[Incident Correlation Display] AS [Incident Correlation Display]
       ,[INC_SUV].[Incident Description] AS [Incident Description]
       ,[INC_SUV].[Incident Due Date] AS [Incident Due Date]
       ,[INC_SUV].[Incident Escalation] AS [Incident Escalation]
       ,[INC_SUV].[Incident Expected Start] AS [Incident Expected Start]
       ,[INC_SUV].[Incident Follow Up] AS [Incident Follow Up]
       ,[INC_SUV].[Incident Group List] AS [Incident Group List]
       ,[INC_SUV].[Incident Impact] AS [Incident Impact]
       ,[INC_SUV].[Incident Incident State] AS [Incident Incident State]
       ,[INC_SUV].[Incident Knowledge] AS [Incident Knowledge]
       ,[INC_SUV].[Incident Made Sla] AS [Incident Made Sla]
       ,[INC_SUV].[Incident Notify] AS [Incident Notify]
       ,[INC_SUV].[Incident Number] AS [Incident Number]
       ,[INC_SUV].[Incident Opened At] AS [Incident Opened At]
       ,[INC_SUV].[Incident Opened By] AS [Incident Opened By]
       ,[INC_SUV].[Incident Order] AS [Incident Order]
       ,[INC_SUV].[Incident Parent] AS [Incident Parent]
       ,[INC_SUV].[Incident Priority] AS [Incident Priority]
       ,[INC_SUV].[Incident Problem Id] AS [Incident Problem Id]
       ,[INC_SUV].[Incident Reassignment Count] AS [Incident Reassignment Count]
       ,[INC_SUV].[Incident Reopen Count] AS [Incident Reopen Count]
       ,[INC_SUV].[Incident Resolved At] AS [Incident Resolved At]
       ,[INC_SUV].[Incident Resolved By] AS [Incident Resolved By]
       ,[INC_SUV].[Incident Severity] AS [Incident Severity]
       ,[INC_SUV].[Incident Short Description] AS [Incident Short Description]
       ,[INC_SUV].[Incident Skills] AS [Incident Skills]
       ,[INC_SUV].[Incident Sla Due] AS [Incident Sla Due]
       ,[INC_SUV].[Incident State] AS [Incident State]
       ,[INC_SUV].[Incident SubCategory] AS [Incident SubCategory]
       ,[INC_SUV].[Incident Sys Class Name] AS [Incident Sys Class Name]
       ,[INC_SUV].[Incident Sys Created By] AS [Incident Sys Created By]
       ,[INC_SUV].[Incident Sys Created On] AS [Incident Sys Created On]
       ,[INC_SUV].[Incident Sys Mod Count] AS [Incident Sys Mod Count]
       ,[INC_SUV].[Incident Sys Updated By] AS [Incident Sys Updated By]
       ,[INC_SUV].[Incident Sys Updated On] AS [Incident Sys Updated On]
       ,[INC_SUV].[Incident Time Worked] AS [Incident Time Worked]
       ,[INC_SUV].[Incident Accenture Sla] AS [Incident Accenture Sla]
       ,[INC_SUV].[Incident Appointment Completed1] AS [Incident Appointment Completed1]
       ,[INC_SUV].[Incident Appointment Time] AS [Incident Appointment Time]
       ,[INC_SUV].[Incident Assignment Group Type] AS [Incident Assignment Group Type]
       ,[INC_SUV].[Incident Best Contact Number] AS [Incident Best Contact Number]
       ,[INC_SUV].[Incident Bridge Launched] AS [Incident Bridge Launched]
       ,[INC_SUV].[Incident Bridge Requested] AS [Incident Bridge Requested]
       ,[INC_SUV].[Incident Call In Reason] AS [Incident Call In Reason]
       ,[INC_SUV].[Incident Call In Reason Center] AS [Incident Call In Reason Center]
       ,[INC_SUV].[Incident Can be Resolved At Service D] AS [Incident Can be Resolved At Service D]
       ,[INC_SUV].[Incident Category 1] AS [Incident Category 1]
       ,[INC_SUV].[Incident Category 2] AS [Incident Category 2]
       ,[INC_SUV].[Incident Category 3] AS [Incident Category 3]
       ,[INC_SUV].[Incident Change Request] AS [Incident Change Request]
       ,[INC_SUV].[Incident Ci Category] AS [Incident Ci Category]
       ,[INC_SUV].[Incident Ci Classification] AS [Incident Ci Classification]
       ,[INC_SUV].[Incident Ci Type] AS [Incident Ci Type]
       ,[INC_SUV].[Incident Critical Incident] AS [Incident Critical Incident]
       ,[INC_SUV].[Incident Customer Follow Up Attempts] AS [Incident Customer Follow Up Attempts]
       ,[INC_SUV].[Incident Defect Id] AS [Incident Defect Id]
       ,[INC_SUV].[Incident Dispatch Type] AS [Incident Dispatch Type]
       ,[INC_SUV].[Incident Dss] AS [Incident Dss]
       ,[INC_SUV].[Incident Dss of Visits] AS [Incident Dss of Visits]
       ,[INC_SUV].[Incident Dss Handle Time] AS [Incident Dss Handle Time]
       ,[INC_SUV].[Incident Fcr] AS [Incident Fcr]
       ,[INC_SUV].[Incident Incident Gp Type] AS [Incident Incident Gp Type]
       ,[INC_SUV].[Incident Incident New Priority] AS [Incident Incident New Priority]
       ,[INC_SUV].[Incident Incident Ol Priority] AS [Incident Incident Ol Priority]
       ,[INC_SUV].[Incident Infosys Kourier Sla] AS [Incident Infosys Kourier Sla]
       ,[INC_SUV].[Incident Infosys Sla] AS [Incident Infosys Sla]
       ,[INC_SUV].[Incident Infosys Unisys Sla] AS [Incident Infosys Unisys Sla]
       ,[INC_SUV].[Incident Issue Type] AS [Incident Issue Type]
       ,[INC_SUV].[Incident Justification] AS [Incident Justification]
       ,[INC_SUV].[Incident Kelloggs Sla] AS [Incident Kelloggs Sla]
       ,[INC_SUV].[Incident Knowledge Candidate] AS [Incident Knowledge Candidate]
       ,[INC_SUV].[Incident Knowledge Used] AS [Incident Knowledge Used]
       ,[INC_SUV].[Incident L1 Resolvable] AS [Incident L1 Resolvable]
       ,[INC_SUV].[Incident L1 Resolvable Description] AS [Incident L1 Resolvable Description]
       ,[INC_SUV].[Incident Language] AS [Incident Language]
       ,[INC_SUV].[Incident Location] AS [Incident Location]
       ,[INC_SUV].[Incident Location New] AS [Incident Location New]
       ,[INC_SUV].[Incident Major Incident Manager] AS [Incident Major Incident Manager]
       ,[INC_SUV].[Incident Mindtree Sla] AS [Incident Mindtree Sla]
       ,[INC_SUV].[Incident Missing Ci] AS [Incident Missing Ci]
       ,[INC_SUV].[Incident Missing Ci Name] AS [Incident Missing Ci Name]
       ,[INC_SUV].[Incident Monitoring Location] AS [Incident Monitoring Location]
       ,[INC_SUV].[Incident Mtr Duration] AS [Incident Mtr Duration]
       ,[INC_SUV].[Incident Old Priority] AS [Incident Old Priority]
       ,[INC_SUV].[Incident Old Supplier] AS [Incident Old Supplier]
       ,[INC_SUV].[Incident Opened By Comapny Supplier] AS [Incident Opened By Comapny Supplier]
       ,[INC_SUV].[Incident Pending Dur] AS [Incident Pending Dur]
       ,[INC_SUV].[Incident Pending Duration] AS [Incident Pending Duration]
       ,[INC_SUV].[Incident Pending End Time] AS [Incident Pending End Time]
       ,[INC_SUV].[Incident Pending Reason] AS [Incident Pending Reason]
       ,[INC_SUV].[Incident Pending Start Time] AS [Incident Pending Start Time]
       ,[INC_SUV].[Incident Pr Metric] AS [Incident Pr Metric]
       ,[INC_SUV].[Incident Prb Candidate User] AS [Incident Prb Candidate User]
       ,[INC_SUV].[Incident Priority Flag] AS [Incident Priority Flag]
       ,[INC_SUV].[Incident Problem Candidate] AS [Incident Problem Candidate]
       ,[INC_SUV].[Incident Problem Created] AS [Incident Problem Created]
       ,[INC_SUV].[Incident Reassignment] AS [Incident Reassignment]
       ,[INC_SUV].[Incident Region] AS [Incident Region]
       ,[INC_SUV].[Incident Reopened Date] AS [Incident Reopened Date]
       ,[INC_SUV].[Incident Reported By] AS [Incident Reported By]
       ,[INC_SUV].[Incident Response Sla] AS [Incident Response Sla]
       ,[INC_SUV].[Incident Sciencelogic Region] AS [Incident Sciencelogic Region]
       ,[INC_SUV].[Incident Sd Group] AS [Incident Sd Group]
       ,[INC_SUV].[Incident Sd Resolvable] AS [Incident Sd Resolvable]
       ,[INC_SUV].[Incident Sd Start Time] AS [Incident Sd Start Time]
       ,[INC_SUV].[Incident Select Category] AS [Incident Select Category]
       ,[INC_SUV].[Incident Silo Eid] AS [Incident Silo Eid]
       ,[INC_SUV].[Incident Site Contact] AS [Incident Site Contact]
       ,[INC_SUV].[Incident Sla Exception] AS [Incident Sla Exception]
       ,[INC_SUV].[Incident Sla Supplier] AS [Incident Sla Supplier]
       ,[INC_SUV].[Incident Sla Validation] AS [Incident Sla Validation]
       ,[INC_SUV].[Incident Srms Dispatch] AS [Incident Srms Dispatch]
       ,[INC_SUV].[Incident Srms Location] AS [Incident Srms Location]
       ,[INC_SUV].[Incident Srms Resolved] AS [Incident Srms Resolved]
       ,[INC_SUV].[Incident Srms Status] AS [Incident Srms Status]
       ,[INC_SUV].[Incident Srms Ticket Number] AS [Incident Srms Ticket Number]
       ,[INC_SUV].[Incident Srms Update] AS [Incident Srms Update]
       ,[INC_SUV].[Incident Style Overrid] AS [Incident Style Overrid]
       ,[INC_SUV].[Incident Sub Supplier] AS [Incident Sub Supplier]
       ,[INC_SUV].[Incident Supplier] AS [Incident Supplier]
       ,[INC_SUV].[Incident Survey Comments] AS [Incident Survey Comments]
       ,[INC_SUV].[Incident Unable To Resolve At Service] AS [Incident Unable To Resolve At Service]
       ,[INC_SUV].[Incident Unisys Sla] AS [Incident Unisys Sla]
       ,[INC_SUV].[Incident Unisys Srms Product Style] AS [Incident Unisys Srms Product Style]
       ,[INC_SUV].[Incident Vendor Name] AS [Incident Vendor Name]
       ,[INC_SUV].[Incident Venor Ticket Number] AS [Incident Venor Ticket Number]
       ,[INC_SUV].[Incident Vip Response Time] AS [Incident Vip Response Time]
       ,[INC_SUV].[Incident Workaround] AS [Incident Workaround]
       ,[INC_SUV].[Incident Upon Approavl] AS [Incident Upon Approavl]
       ,[INC_SUV].[Incident Upon Reject] AS [Incident Upon Reject]
       ,[INC_SUV].[Incident Urgency] AS [Incident Urgency]
       ,[INC_SUV].[Incident User Input] AS [Incident User Input]
       ,[INC_SUV].[Incident Watch List] AS [Incident Watch List]
       ,[INC_SUV].[Incident Work End] AS [Incident Work End]
       ,[INC_SUV].[Incident Work Notes] AS [Incident Work Notes]
       ,[INC_SUV].[Incident Work Notes List] AS [Incident Work Notes List]
       ,[INC_SUV].[Incident Work State] AS [Incident Work State]
       ,[INC_SUV].[Incident Loc Region] AS [Incident Loc Region]
       ,[INC_SUV].[Incident Sys User Region] AS [Incident Sys User Region]
       ,[INC_SUV].[Incident Sys User Group Name] AS [Incident Sys User Group Name]
       ,[INC_SUV].[Incident Sys User Group Team] AS [Incident Sys User Group Team]
       ,[INC_SUV].[Incident Sys User Group Sub Supplier] AS [Incident Sys User Group Sub Supplier]
       ,[INC_SUV].[Incident Sys User Group Supplier] AS [Incident Sys User Group Supplier]
       ,[INC_SUV].[Incident Cmdb Ci Name] AS [Incident Cmdb Ci Name]
       ,[INC_SUV].[Incident Cmdb Ci Can Print] AS [Incident Cmdb Ci Can Print]
       ,[INC_SUV].[Incident Cmdb Ci Category] AS [Incident Cmdb Ci Category]
       ,[INC_SUV].[Incident Cmdb Ci Short Description] AS [Incident Cmdb Ci Short Description]
       ,[INC_SUV].[Incident Cmdb Ci Sub Category] AS [Incident Cmdb Ci Sub Category]
       ,[INC_SUV].[Incident Cmdb Ci Sys Created By] AS [Incident Cmdb Ci Sys Created By]
       ,[INC_SUV].[Incident Cmdb Ci Sys Created On] AS [Incident Cmdb Ci Sys Created On]
       ,[INC_SUV].[Incident Cmdb Ci Sys Updated By] AS [Incident Cmdb Ci Sys Updated By]
       ,[INC_SUV].[Incident Cmdb Ci Sys Updated On] AS [Incident Cmdb Ci Sys Updated On]
       ,[INC_SUV].[Incident Cmdb Ci Ad Location] AS [Incident Cmdb Ci Ad Location]
       ,[INC_SUV].[Incident Cmdb Ci Region] AS [Incident Cmdb Ci Region]
       ,[INC_SUV].[Incident Cmdb Ci Reporting Categories] AS [Incident Cmdb Ci Reporting Categories]
       ,[INC_SUV].[Incident Cmdb Ci Science Logic Region] AS [Incident Cmdb Ci Science Logic Region]
       ,[INC_SUV].[Incident Cmdb Ci Sub Type] AS [Incident Cmdb Ci Sub Type]
       ,[INC_SUV].[Incident Cmdb Ci Type] AS [Incident Cmdb Ci Type]
       ,[INC_SUV].[Incident Survey Response Updated Date] AS [Incident Survey Response Updated Date]
       ,[INC_SUV].[Incident Survey Question]  AS [Incident Survey Question] 
       ,[INC_SUV].[Incident Survey Response] AS [Incident Survey Response]
       ,[AIP_MET_USR_GRP].[ID] AS [ID]
       ,[AIP_MET_USR_GRP].[SUPPLIER] AS [SUPPLIER]
       ,[AIP_MET_USR_GRP].[SUB_SUPPLIER] AS [SUB_SUPPLIER]
       ,[AIP_MET_USR_GRP].[SLA_OWNER] AS [SLA_OWNER]
       ,[AIP_MET_USR_GRP].[TEAM] AS [TEAM]
       ,[AIP_MET_USR_GRP].[METRIC_MEASURE] AS [METRIC_MEASURE]
       ,[AIP_MET_USR_GRP].[METRIC_TARGET] AS [METRIC_TARGET]
       ,[AIP_MET_USR_GRP].[METRIC_DESCRIPTION] AS [METRIC_DESCRIPTION]
       ,[AIP_MET_USR_GRP].[ACTIVE] AS [ACTIVE]
       ,[AIP_MET_USR_GRP].[COST_CENTER] AS [COST_CENTER]
       ,[AIP_MET_USR_GRP].[DEFAULT_ASSIGNEE] AS [DEFAULT_ASSIGNEE]
       ,[AIP_MET_USR_GRP].[DESCRIPTION] AS [DESCRIPTION]
       ,[AIP_MET_USR_GRP].[EMAIL] AS [EMAIL]
       ,[AIP_MET_USR_GRP].[EXCLUDE_MANAGER] AS [EXCLUDE_MANAGER]
       ,[AIP_MET_USR_GRP].[HOURLY_RATE] AS [HOURLY_RATE]
       ,[AIP_MET_USR_GRP].[INCLUDE_MEMBERS] AS [INCLUDE_MEMBERS]
       ,[AIP_MET_USR_GRP].[MANAGER_LINK] AS [MANAGER_LINK]
       ,[AIP_MET_USR_GRP].[MANAGER_VALUE] AS [MANAGER_VALUE]
       ,[AIP_MET_USR_GRP].[NAME] AS [NAME]
       ,[AIP_MET_USR_GRP].[PARENT] AS [PARENT]
       ,[AIP_MET_USR_GRP].[SOURCE] AS [SOURCE]
       ,[AIP_MET_USR_GRP].[SYS_CREATED_BY] AS [SYS_CREATED_BY]
       ,[AIP_MET_USR_GRP].[SYS_CREATED_ON] AS [SYS_CREATED_ON]
       ,[AIP_MET_USR_GRP].[SYS_ID] AS [SYS_ID]
       ,[AIP_MET_USR_GRP].[SYS_MOD_COUNT] AS [SYS_MOD_COUNT]
       ,[AIP_MET_USR_GRP].[SYS_UPDATED_BY] AS [SYS_UPDATED_BY]
       ,[AIP_MET_USR_GRP].[SYS_UPDATED_ON] AS [SYS_UPDATED_ON]
       ,[AIP_MET_USR_GRP].[TYPE] AS [TYPE]
       ,[AIP_MET_USR_GRP].[U_ALIAS] AS [U_ALIAS]
       ,[AIP_MET_USR_GRP].[U_CONTENT_APPROVER_LINK] AS [U_CONTENT_APPROVER_LINK]
       ,[AIP_MET_USR_GRP].[U_CONTENT_APPROVER_VALUE] AS [U_CONTENT_APPROVER_VALUE]
       ,[AIP_MET_USR_GRP].[U_DSS_GROUP] AS [U_DSS_GROUP]
       ,[AIP_MET_USR_GRP].[U_GROUP_ID] AS [U_GROUP_ID]
       ,[AIP_MET_USR_GRP].[U_GROUP_TYPE] AS [U_GROUP_TYPE]
       ,[AIP_MET_USR_GRP].[U_REGION] AS [U_REGION]
       ,[AIP_MET_USR_GRP].[U_RESPONSIBILITY] AS [U_RESPONSIBILITY]
       ,[AIP_MET_USR_GRP].[U_SRMS_GROUPS] AS [U_SRMS_GROUPS]
       ,[AIP_MET_USR_GRP].[U_SUB_SUPPLIER] AS [U_SUB_SUPPLIER]
       ,[AIP_MET_USR_GRP].[U_SUPPLIER] AS [U_SUPPLIER]
       ,[AIP_MET_USR_GRP].[U_SUPPORT_GROUP] AS [U_SUPPORT_GROUP]
       ,[AIP_MET_USR_GRP].[U_WORK_NOTES] AS [U_WORK_NOTES]
       ,[AIP_MET_USR_GRP].[SLT_GROUP] AS [SLT_GROUP]
       ,[AIP_MET_USR_GRP].[PILLAR] AS [PILLAR]
       ,[AIP_MET_USR_GRP].[SUB_TEAM] AS [SUB_TEAM]
       ,[AIP_MET_USR_GRP].[SILO] AS [SILO]
       ,[AIP_MET_USR_GRP].[SCOPE] AS [SCOPE]
FROM [dbo].[UVW_INCIDENT_SURVEY_NEW] AS [INC_SUV]
FULL OUTER JOIN [dbo].[UVW_AIP_METRICS_USER_GROUP] AS [AIP_MET_USR_GRP] ON  [INC_SUV].[Incident Sys User Group Name]= [AIP_MET_USR_GRP].[NAME]


GO
/****** Object:  View [dbo].[UVW_CATALOG_REQUEST_TASK_TREND]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_CATALOG_REQUEST_TASK_TREND]
AS

SELECT a.YEARMONTH as [Task Year Month],[Task Year],[Task Month],o.Openedcnt as [Task Opened Count],c.Closedcnt as [Task Closed Count],b.Balance as [Task Balance Count],a.[Task Assignment Group Name]
,[Task Month Name]
FROM
(SELECT [YEARMONTH],[Task Year],[Task Month],[Task Month Name],b.SUG_NAME as [Task Assignment Group Name]
from (
SELECT DISTINCT [YEARMONTH]=CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END)) 
,YEAR([SCT_OPENED_AT]) as [Task Year],MONTH([SCT_OPENED_AT]) as [Task Month],DATENAME(MONTH,[SCT_OPENED_AT]) as [Task Month Name]
from [KG_VIEWS].[KG_SNOW].UVW_SC_TASK st 
GROUP BY CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END))
,YEAR([SCT_OPENED_AT]),MONTH([SCT_OPENED_AT]),DATENAME(MONTH,[SCT_OPENED_AT]))c
--,
--LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG sg on sg.SUG_SYS_ID=st.[SCT_ASSIGNMENT_GROUP_VALUE]
CROSS JOIN (SELECT DISTINCT SUG_NAME FROM KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG) b 
--order by 1
) a

Left join (select Openedcnt=COUNT(distinct SCT_NUMBER),[YEARMONTH]=CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END)) 
,sg.SUG_NAME as [Task Assignment Group Name]
from [KG_VIEWS].[KG_SNOW].UVW_SC_TASK st 
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG sg on sg.SUG_SYS_ID=st.[SCT_ASSIGNMENT_GROUP_VALUE] 

GROUP BY CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END)) 
,sg.SUG_NAME
)  o on o.YEARMONTH=a.YEARMONTH and o.[Task Assignment Group Name]=a.[Task Assignment Group Name]
Left Join (select Closedcnt=COUNT(distinct SCT_NUMBER),[YEARMONTH]=CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_CLOSED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_CLOSED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_CLOSED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_CLOSED_AT])) END)) 
,sg.SUG_NAME as [Task Assignment Group Name]
from [KG_VIEWS].[KG_SNOW].UVW_SC_TASK st 
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG sg on sg.SUG_SYS_ID=st.[SCT_ASSIGNMENT_GROUP_VALUE] 
GROUP BY CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_CLOSED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_CLOSED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_CLOSED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_CLOSED_AT])) END)) 
,sg.SUG_NAME) c on c.YEARMONTH=a.YEARMONTH and c.[Task Assignment Group Name]=a.[Task Assignment Group Name]
Left join (SELECT a.[YEARMONTH],Balance=COUNT(b.SCT_NUMBER),a.[Task Assignment Group Name]
FROM (
SELECT [YEARMONTH],[Task Year],[Task Month],[Task Month Name],b.SUG_NAME as [Task Assignment Group Name]
from(
SELECT DISTINCT [YEARMONTH]=CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END)) 
,YEAR([SCT_OPENED_AT]) as [Task Year],MONTH([SCT_OPENED_AT]) as [Task Month],DATENAME(MONTH,[SCT_OPENED_AT]) as [Task Month Name]
from [KG_VIEWS].[KG_SNOW].UVW_SC_TASK st 
GROUP BY CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END))
,YEAR([SCT_OPENED_AT]),MONTH([SCT_OPENED_AT]),DATENAME(MONTH,[SCT_OPENED_AT]))c
--,
--LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG sg on sg.SUG_SYS_ID=st.[SCT_ASSIGNMENT_GROUP_VALUE]
CROSS JOIN (SELECT DISTINCT SUG_NAME FROM KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG) b) a

JOIN (SELECT DISTINCT SCT_NUMBER, OpenedYearMonth=CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_OPENED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_OPENED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_OPENED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_OPENED_AT])) END)) 
,ClosedYearMonth=CASE WHEN CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_CLOSED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_CLOSED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_CLOSED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_CLOSED_AT])) END)) =190001
THEN CONVERT(int,CONVERT(CHAR(4),YEAR(GETDATE())) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH(GETDATE()))=1 then '0'+CONVERT(char(1),MONTH(GETDATE())) ELSE CONVERT(Char(2),MONTH(GETDATE())) END))   
ELSE  CONVERT(int,CONVERT(CHAR(4),YEAR([SCT_CLOSED_AT])) + CONVERT(CHAR(2),CASE WHEN LEN(MONTH([SCT_CLOSED_AT]))=1 then '0'+CONVERT(char(1),MONTH([SCT_CLOSED_AT])) ELSE CONVERT(Char(2),MONTH([SCT_CLOSED_AT])) END))  
END,sg.SUG_NAME as [Task Assignment Group Name]
from [KG_VIEWS].[KG_SNOW].UVW_SC_TASK st
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG sg on sg.SUG_SYS_ID=st.[SCT_ASSIGNMENT_GROUP_VALUE] 
  ) b on a.YEARMONTH>b.OpenedYearMonth and a.YEARMONTH<b.ClosedYearMonth and 

a.[Task Assignment Group Name]=b.[Task Assignment Group Name]
GROUP BY a.[YEARMONTH] ,a.[Task Assignment Group Name]
) b on b.YEARMONTH=a.YEARMONTH and a.[Task Assignment Group Name]=b.[Task Assignment Group Name]




GO
/****** Object:  View [dbo].[UVW_INCIDENTS_PROBLEM]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_INCIDENTS_PROBLEM]
as
SELECT ---INCIDENT
I.[INC_ACTIVE]
      ,I.[INC_ACTIVITY_DUE]
      ,I.[INC_APPROVAL]
      ,I.[INC_APPROVAL_HISTORY]
      ,I.[INC_APPROVAL_SET]
      ,SUASSN.SU_NAME as [INC_ASSIGNED_TO]
      ,I.[INC_BUSINESS_DURATION]
      ,I.[INC_BUSINESS_STC]
      ,I.[INC_CALENDAR_DURATION]
      ,I.[INC_CALENDAR_STC]
      ,I.[INC_CATEGORY]
      ,I.[INC_CAUSED_BY]
      ,I.[INC_CHILD_INCIDENTS]
      ,I.[INC_CLOSE_CODE]
      ,I.[INC_CLOSE_NOTES]
      ,I.[INC_CLOSED_AT]    
      ,SUCLOS.SU_NAME as [INC_CLOSED_BY]
      ,I.[INC_COMMENTS]
      ,I.[INC_COMMENTS_AND_WORK_NOTES]  
      ,I.[INC_CONTACT_TYPE]
      ,I.[INC_DESCRIPTION]
      ,I.[INC_DUE_DATE]
      ,I.[INC_ESCALATION]
      ,I.[INC_EXPECTED_START]
      ,I.[INC_FOLLOW_UP]
      ,I.[INC_GROUP_LIST]
      ,I.[INC_IMPACT]
      ,CASE 
		WHEN I.[INC_INCIDENT_STATE] = 6  THEN 'Resolved'
		WHEN I.[INC_INCIDENT_STATE] = 7  THEN 'Closed'
		WHEN I.[INC_INCIDENT_STATE] = 8  THEN 'In Queue'
		WHEN I.[INC_INCIDENT_STATE] = 9  THEN 'Assigned'
		WHEN I.[INC_INCIDENT_STATE] = 10 THEN 'Work In Progress'
		WHEN I.[INC_INCIDENT_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL(I.[INC_INCIDENT_STATE],''))
		END 
		as [INC_INCIDENT_STATE]
      ,I.[INC_KNOWLEDGE]
      ,I.[INC_MADE_SLA]
      ,I.[INC_NOTIFY]
      ,I.[INC_NUMBER]
      ,I.[INC_OPENED_AT]
	  ,SUOPEN.SU_NAME as [INC_OPENED_BY]
      ,I.[INC_ORDER]
      ,I.[INC_PARENT]
	  ,PARI.INC_NUMBER as [INC_PARENT_INCIDENT_NUMBER]
      ,I.[INC_PRIORITY]
      ,I.[INC_PROBLEM_ID]
      ,I.[INC_REASSIGNMENT_COUNT]
      ,I.[INC_REOPEN_COUNT]
      ,I.[INC_RESOLVED_AT]
      ,SURESO.SU_NAME as [INC_RESOLVED_BY]
      ,I.[INC_SEVERITY]
      ,I.[INC_SHORT_DESCRIPTION]
      ,I.[INC_SKILLS]
      ,I.[INC_SLA_DUE]
      ,CASE 
		WHEN I.[INC_STATE] = 6  THEN 'Resolved'
		WHEN I.[INC_STATE] = 7  THEN 'Closed'
		WHEN I.[INC_STATE] = 8  THEN 'In Queue'
		WHEN I.[INC_STATE] = 9  THEN 'Assigned'
		WHEN I.[INC_STATE] = 10 THEN 'Work In Progress'
		WHEN I.[INC_STATE] = 11 THEN 'Pending'
		ELSE
		CONVERT(VARCHAR,ISNULL(I.[INC_STATE],''))
		END 
		as [INC_STATE]
      ,I.[INC_SUBCATEGORY]
      ,I.[INC_SYS_CLASS_NAME]
      ,I.[INC_SYS_CREATED_BY]
      ,I.[INC_SYS_CREATED_ON]
      ,I.[INC_SYS_MOD_COUNT]
      ,I.[INC_SYS_UPDATED_BY]
      ,I.[INC_SYS_UPDATED_ON]
      ,I.[INC_TIME_WORKED]
      ,I.[INC_U_ACCENTURE_SLA]
      ,I.[INC_U_APPOINTMENT_COMPLETED1]
      ,I.[INC_U_APPOINTMENT_TIME]
      ,I.[INC_U_ASSIGNMENT_GROUP_TYPE]
      ,I.[INC_U_BEST_CONTACT_NUMBER]
      ,I.[INC_U_BRIDGE_LAUNCHED]
      ,I.[INC_U_BRIDGE_REQUESTED]
      ,I.[INC_U_CALL_IN_REASON]
      ,I.[INC_U_CALL_IN_REASON_COUNTER]
      ,I.[INC_U_CAN_BE_RESOLVED_AT_SERVICE_D]
      ,I.[INC_U_CATEGORY_1]
      ,I.[INC_U_CATEGORY_2]
      ,I.[INC_U_CATEGORY_3]
      ,I.[INC_U_CHANGE_REQUEST]
      ,I.[INC_U_CI_CATEGORY]
      ,I.[INC_U_CI_CLASSIFICATION]
      ,I.[INC_U_CI_TYPE]
      ,I.[INC_U_CRITICAL_INCIDENT]
      ,I.[INC_U_CUSTOMER_FOLLOW_UP_ATTEMPTS]
      ,I.[INC_U_DEFECT_ID_]
      ,I.[INC_U_DISPATCH_TYPE]
      ,I.[INC_U_DSS___]
      ,I.[INC_U_DSS___OF_VISITS]
      ,I.[INC_U_DSS_HANDLE_TIME]
      ,I.[INC_U_FCR]
      ,I.[INC_U_HUNGARY_QUESTION_1]
      ,I.[INC_U_HUNGARY_SURVEY_QUESTION2]
      ,I.[INC_U_INCIDENT_GP_TYPE]
      ,I.[INC_U_INCIDENT_NEW_PRIORITY]
      ,I.[INC_U_INCIDENT_OLD_PRIORITY]
      ,I.[INC_U_INFOSYS_KOURIER_SLA]
      ,I.[INC_U_INFOSYS_SLA]
      ,I.[INC_U_INFOSYS_UNISYS_SLA]
      ,I.[INC_U_ISSUE_TYPE]
      ,I.[INC_U_JUSTIFICATION]
      ,I.[INC_U_KELLOGGS_SLA]
      ,I.[INC_U_KNOWLEDGE_CANDIDATE]
      ,I.[INC_U_KNOWLEDGE_USED]
      ,I.[INC_U_L1_RESOLVABLE]
      ,I.[INC_U_L1_RESOLVABLE_DESCRIPTION]
      ,I.[INC_U_LANGUAGE]
      ,I.[INC_U_LOCATION]
      ,I.[INC_U_LOCATION_NEW]
      ,I.[INC_U_MAJOR_INCIDENT_MANAGER]
      ,I.[INC_U_MINDTREE_SLA]
      ,I.[INC_U_MISSING_CI]
      ,I.[INC_U_MISSING_CI_NAME]
      ,I.[INC_U_MONITORING_LOCATION]
      ,I.[INC_U_MTR_DURATION]
      ,I.[INC_U_OLD_PRIORITY]
      ,I.[INC_U_OLD_SUPPLIER]
      ,I.[INC_U_OPENED_BY_COMPANY_SUPPLIER]
      ,I.[INC_U_PENDING_DUR]
      ,I.[INC_U_PENDING_DURATION]
      ,I.[INC_U_PENDING_END_TIME]
      ,I.[INC_U_PENDING_REASON]
      ,I.[INC_U_PENDING_START_TIME]
      ,I.[INC_U_PR_METRIC]
      ,I.[INC_U_PRB_CANDIDATE_USER]
      ,I.[INC_U_PRIORITY_FLAG]
      ,I.[INC_U_PROBLEM_CANDIDATE]
      ,I.[INC_U_PROBLEM_CREATED]
      ,I.[INC_U_REASSIGNMENT]
      ,I.[INC_U_REGION]
      ,I.[INC_U_REOPENED_DATE]
      ,SUREPO.SU_NAME as [INC_U_REPORTED_BY]
      ,I.[INC_U_RESPONSE_SLA]
      ,I.[INC_U_SCIENCELOGIC_REGION]
      ,I.[INC_U_SD_GROUP]
      ,I.[INC_U_SD_RESOLVABLE]
      ,I.[INC_U_SD_START_TIME]
      ,I.[INC_U_SELECT_CATEGORY]
      ,I.[INC_U_SILO_EID]
      ,I.[INC_U_SITE_CONTACT]
      ,I.[INC_U_SLA_EXCEPTION]
      ,I.[INC_U_SLA_SUPPLIER]
      ,I.[INC_U_SLA_VALIDATION]
      ,I.[INC_U_SRMS_DISPATCH]
      ,I.[INC_U_SRMS_LOCATION]
      ,I.[INC_U_SRMS_RESOLVED]
      ,I.[INC_U_SRMS_STATUS]
      ,I.[INC_U_SRMS_TICKET_NUMBER]
      ,I.[INC_U_SRMS_UPDATE]
      ,I.[INC_U_STYLE_OVERRIDE]
      ,I.[INC_U_SUB_SUPPLIER]
      ,I.[INC_U_SUPPLIER]
      ,I.[INC_U_SURVEY_COMMENTS]
      ,I.[INC_U_SURVEY_QUESTION1]
      ,I.[INC_U_SURVEY_QUESTION2]
      ,I.[INC_U_UNABLE_TO_RESOLVE_AT_SERVICE]
      ,I.[INC_U_UNISYS_SLA]
      ,I.[INC_U_UNISYS_SRMS_PRODUCT_STYLE]
      ,I.[INC_U_VENDOR_NAME]
      ,I.[INC_U_VENDOR_TICKET_NUMBER]
      ,I.[INC_U_VIP_RESPONSE_TIME]
      ,I.[INC_U_WORKAROUND]
      ,I.[INC_UPON_APPROVAL]
      ,I.[INC_UPON_REJECT]
      ,I.[INC_URGENCY]
      ,I.[INC_USER_INPUT]
      ,I.[INC_WATCH_LIST]
      ,I.[INC_WORK_END]
      ,I.[INC_WORK_NOTES]
      ,I.[INC_WORK_NOTES_LIST]
      ,I.[INC_WORK_START]
      ,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
      ,I.[SYS_USER_U_REGION] as [INC_SYS_USER_U_REGION]
      ,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
      ,I.[SYS_USER_GROUP_TEAM] as [INC_SYS_USER_GROUP_TEAM]
      ,I.[SYS_USER_GROUP_U_SUB_SUPPLIER] as [INC_SYS_USER_GROUP_U_SUB_SUPPLIER]
	    --Incident CMDB CI
	  ,INCCI.ASSET_TAG as INC_CMDB_ASSET_TAG
,INCCI.ASSIGNED as INC_CMDB_ASSIGNED
,INCCI.ASSIGNED_TO_VALUE as INC_CMDB_ASSIGNED_TO_VALUE
,INCCI.ATTRIBUTES as INC_CMDB_ATTRIBUTES
,INCCI.CATEGORY as INC_CMDB_CATEGORY
,INCCI.CHANGE_CONTROL as INC_CMDB_CHANGE_CONTROL
,INCCI.COMMENTS as INC_CMDB_COMMENTS
,INCCI.COMPANY as INC_CMDB_COMPANY
,INCCI.COST as INC_CMDB_COST
,INCCI.COST_CC as INC_CMDB_COST_CC
,INCCI.COST_CENTER as INC_CMDB_COST_CENTER
,INCCI.DELIVERY_DATE as INC_CMDB_DELIVERY_DATE
,INCCI.DEPARTMENT as INC_CMDB_DEPARTMENT
,INCCI.DISCOVERY_SOURCE as INC_CMDB_DISCOVERY_SOURCE
,INCCI.DNS_DOMAIN as INC_CMDB_DNS_DOMAIN
,INCCI.DUE as INC_CMDB_DUE
,INCCI.DUE_IN as INC_CMDB_DUE_IN
,INCCI.FAULT_COUNT as INC_CMDB_FAULT_COUNT
,INCCI.FIRST_DISCOVERED as INC_CMDB_FIRST_DISCOVERED
,INCCI.FQDN as INC_CMDB_FQDN
,INCCI.GL_ACCOUNT as INC_CMDB_GL_ACCOUNT
,INCCI.INSTALL_DATE as INC_CMDB_INSTALL_DATE
,INCCI.INSTALL_STATUS as INC_CMDB_INSTALL_STATUS
,INCCI.INVOICE_NUMBER as INC_CMDB_INVOICE_NUMBER
,INCCI.JUSTIFICATION as INC_CMDB_JUSTIFICATION
,INCCI.LAST_DISCOVERED as INC_CMDB_LAST_DISCOVERED
,INCCI.LOCATION as INC_CMDB_LOCATION
,INCCI.MAINTENANCE_SCHEDULE as INC_CMDB_MAINTENANCE_SCHEDULE
,INCCI.MANAGED_BY as INC_CMDB_MANAGED_BY
,INCCI.MODEL_NUMBER as INC_CMDB_MODEL_NUMBER
,INCCI.NAME as INC_CMDB_NAME
,INCCI.OPERATIONAL_STATUS as INC_CMDB_OPERATIONAL_STATUS
,INCCI.ORDER_DATE as INC_CMDB_ORDER_DATE
,INCCI.OWNED_BY as INC_CMDB_OWNED_BY
,INCCI.PO_NUMBER as INC_CMDB_PO_NUMBER
,INCCI.PURCHASE_DATE as INC_CMDB_PURCHASE_DATE
,INCCI.SCHEDULE as INC_CMDB_SCHEDULE
,INCCI.SERIAL_NUMBER as INC_CMDB_SERIAL_NUMBER
,INCCI.SHORT_DESCRIPTION as INC_CMDB_SHORT_DESCRIPTION
,INCCI.START_DATE as INC_CMDB_START_DATE
,INCCI.SUBCATEGORY as INC_CMDB_SUBCATEGORY
,INCCI.SUPPORT_GROUP as INC_CMDB_SUPPORT_GROUP
,INCCI.SUPPORTED_BY as INC_CMDB_SUPPORTED_BY
,INCCI.SYS_CLASS_NAME as INC_CMDB_SYS_CLASS_NAME
,INCCI.SYS_CREATED_BY as INC_CMDB_SYS_CREATED_BY
,INCCI.SYS_CREATED_ON as INC_CMDB_SYS_CREATED_ON
,INCCI.SYS_UPDATED_BY as INC_CMDB_SYS_UPDATED_BY
,INCCI.SYS_UPDATED_ON as INC_CMDB_SYS_UPDATED_ON
,INCCI.U_AD_LOCATION as INC_CMDB_U_AD_LOCATION
,INCCI.U_APPROVED_RFC as INC_CMDB_U_APPROVED_RFC
,INCCI.U_CI_ALIAS as INC_CMDB_U_CI_ALIAS
,INCCI.U_CI_CATEGORY as INC_CMDB_U_CI_CATEGORY
,INCCI.U_DATACENTER as INC_CMDB_U_DATACENTER
,INCCI.U_DR_COVERAGE as INC_CMDB_U_DR_COVERAGE
,INCCI.U_DR_TIER_LEVEL as INC_CMDB_U_DR_TIER_LEVEL
,INCCI.U_ENVIRONMENT as INC_CMDB_U_ENVIRONMENT
,INCCI.U_IP_NETMASK as INC_CMDB_U_IP_NETMASK
,INCCI.U_REGION as INC_CMDB_U_REGION
,INCCI.U_REPORTING_CATEGORIES as INC_CMDB_U_REPORTING_CATEGORIES
,INCCI.U_SCIENCELOGIC_REGION as INC_CMDB_U_SCIENCELOGIC_REGION
,INCCI.U_SUB_TYPE as INC_CMDB_U_SUB_TYPE
,INCCI.U_TYPE as INC_CMDB_U_TYPE
,INCCI.VENDOR as INC_CMDB_VENDOR
,INCCI.WARRANTY_EXPIRATION as INC_CMDB_WARRANTY_EXPIRATION
,INCCI.UNVERIFIED as INC_CMDB_UNVERIFIED
	  --Problem Task and Problem 
    ,[PT_ACTIVE]
      ,[PT_ACTIVITY_DUE]
      ,[PT_APPROVAL]
      ,[PT_APPROVAL_HISTORY]
      ,[PT_APPROVAL_SET]
      ,PTSUASSN.SU_NAME as [PT_ASSIGNED_TO]
      ,PTSUG.SUG_NAME as [PT_ASSIGNMENT_GROUP]
      ,[PT_BUSINESS_DURATION]
      ,[PT_CALENDAR_DURATION]
      ,[PT_CLOSE_NOTES]
      ,[PT_CLOSED_AT]
      ,PTSUCLOS.SU_NAME as [PT_CLOSED_BY]
      ,[PT_COMMENTS]
      ,[PT_COMMENTS_AND_WORK_NOTES]
      ,[PT_COMPANY]
      ,[PT_CONTACT_TYPE]
      ,[PT_DESCRIPTION]
      ,[PT_DUE_DATE]
      ,[PT_ESCALATION]
      ,[PT_EXPECTED_START]
      ,[PT_FOLLOW_UP]
      ,[PT_GROUP_LIST]
      ,[PT_IMPACT]
      ,[PT_KNOWLEDGE]
      ,[PT_LOCATION]
      ,[PT_MADE_SLA]
      ,[PT_NUMBER]
      ,[PT_OPENED_AT]
      
      , PTSUOPEN.SU_NAME as [PT_OPENED_BY]
      ,[PT_ORDER]
      ,[PT_PARENT]
      ,[PT_PRIORITY]
      ,[PT_REASSIGNMENT_COUNT]
      ,[PT_SHORT_DESCRIPTION]
      ,[PT_SKILLS]
      ,[PT_SLA_DUE]
      ,CASE 
		WHEN [PT_STATE] = 0  THEN ''
		WHEN [PT_STATE] = 1  THEN 'Open'
		WHEN [PT_STATE] = 2  THEN 'Work in Progress'
		WHEN [PT_STATE] = 3  THEN 'Closed Complete'
		WHEN [PT_STATE] = 4  THEN 'Closed Incomplete'
		WHEN [PT_STATE] = -5  THEN 'Pending'
		WHEN [PT_STATE] = 6  THEN 'Pending Action'
		WHEN [PT_STATE] = 10  THEN 'RCA Under Review'
		WHEN [PT_STATE] = 11  THEN 'Assigned'
		WHEN [PT_STATE] = 12  THEN 'RCA Submitted'
		WHEN [PT_STATE] = 14  THEN 'Pending Approval'
		ELSE
		CONVERT(VARCHAR,ISNULL([PT_STATE],''))
		END
as [PT_STATE]
      ,[PT_SYS_CLASS_NAME]
      ,[PT_SYS_CREATED_BY]
      ,[PT_SYS_CREATED_ON]
      ,[PT_SYS_ID]
      ,[PT_SYS_UPDATED_BY]
      ,[PT_SYS_UPDATED_ON]
      ,[PT_TIME_WORKED]
      ,[PT_U_A_QUESTION_1]
      ,[PT_U_ACTION_LIST]
      ,[PT_U_ANSWER]
      ,[PT_U_ASSIGNMENT_GROUP_TYPE]
      ,[PT_U_CHANGE_NUMBER]
      ,[PT_U_CHANGE_REQUEST_RELATED]
      ,[PT_U_CONFIGURATION_ITEMS_IMPACTED]
      ,[PT_U_CORRECTIVE_ACTIONS]
      ,[PT_U_DUE_BY]
      ,[PT_U_DURATION]
      ,[PT_U_INCIDENT_END_DATE]
      ,[PT_U_INCIDENT_GP_TYPE]
      ,[PT_U_INCIDENT_RESOLUTION]
      ,[PT_U_INCIDENT_START_DATE]
      ,[PT_U_KNOWN_ERROR]
      ,[PT_U_NETWORK_OUTAGE]
      ,[PT_U_PRIORITY]
      ,[PT_U_PROBLEM_DESCRIPTION]
      ,[PT_U_PROBLEM_LOCATION]
      ,[PT_U_PROBLEM_RECORD_NUMBER]
      ,[PT_U_PROBLEMS_BUSINESS_IMPACT]
      ,[PT_U_QUESTION_2]
      ,[PT_U_QUESTION_3]
      ,[PT_U_QUESTION_4]
      ,[PT_U_QUESTION_5]
      ,[PT_U_QUESTION_6]
      ,[PT_U_RCA_APPROVED_BY]
      ,[PT_U_RCA_COMPLETED_DATE]
      ,[PT_U_RCA_REQUESTED_BY]
      ,[PT_U_RELATED_INCIDENT_NO]
      ,[PT_U_REQ]
      ,[PT_U_ROOT_CAUSE_CODE]
      ,[PT_U_ROOT_CAUSE_DETAILS]
      ,[PT_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,[PT_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,[PT_U_ROOT_CAUSE_SUPPORTER]
      ,[PT_U_STATUS_REASON]
      ,[PT_U_SUPPLIER]
      ,[PT_U_TARGET_DATE]
      ,[PT_U_TASK_PRIORITY]
      ,[PT_U_WHEN_FIRST]
      ,[PT_U_WHEN_LAST]
      ,[PT_U_WORKAROUND]
      ,[PT_UPON_APPROVAL]
      ,[PT_UPON_REJECT]
      ,[PT_URGENCY]
      ,[PT_USER_INPUT]
      ,[PT_WATCH_LIST]
      ,[PT_WORK_END]
      ,[PT_WORK_NOTES]
      ,[PT_WORK_NOTES_LIST]
      ,[PT_WORK_START]
	  ,PRBTSKCI.ASSET_TAG as PT_CMDB_ASSET_TAG
,PRBTSKCI.ASSIGNED as PT_CMDB_ASSIGNED
,PRBTSKCI.ASSIGNED_TO_VALUE as PT_CMDB_ASSIGNED_TO_VALUE
,PRBTSKCI.ATTRIBUTES as PT_CMDB_ATTRIBUTES
,PRBTSKCI.CATEGORY as PT_CMDB_CATEGORY
,PRBTSKCI.CHANGE_CONTROL as PT_CMDB_CHANGE_CONTROL
,PRBTSKCI.COMMENTS as PT_CMDB_COMMENTS
,PRBTSKCI.COMPANY as PT_CMDB_COMPANY
,PRBTSKCI.COST as PT_CMDB_COST
,PRBTSKCI.COST_CC as PT_CMDB_COST_CC
,PRBTSKCI.COST_CENTER as PT_CMDB_COST_CENTER
,PRBTSKCI.DELIVERY_DATE as PT_CMDB_DELIVERY_DATE
,PRBTSKCI.DEPARTMENT as PT_CMDB_DEPARTMENT
,PRBTSKCI.DISCOVERY_SOURCE as PT_CMDB_DISCOVERY_SOURCE
,PRBTSKCI.DNS_DOMAIN as PT_CMDB_DNS_DOMAIN
,PRBTSKCI.DUE as PT_CMDB_DUE
,PRBTSKCI.DUE_IN as PT_CMDB_DUE_IN
,PRBTSKCI.FAULT_COUNT as PT_CMDB_FAULT_COUNT
,PRBTSKCI.FIRST_DISCOVERED as PT_CMDB_FIRST_DISCOVERED
,PRBTSKCI.FQDN as PT_CMDB_FQDN
,PRBTSKCI.GL_ACCOUNT as PT_CMDB_GL_ACCOUNT
,PRBTSKCI.INSTALL_DATE as PT_CMDB_INSTALL_DATE
,PRBTSKCI.INSTALL_STATUS as PT_CMDB_INSTALL_STATUS
,PRBTSKCI.INVOICE_NUMBER as PT_CMDB_INVOICE_NUMBER
,PRBTSKCI.JUSTIFICATION as PT_CMDB_JUSTIFICATION
,PRBTSKCI.LAST_DISCOVERED as PT_CMDB_LAST_DISCOVERED
,PRBTSKCI.LOCATION as PT_CMDB_LOCATION
,PRBTSKCI.MAINTENANCE_SCHEDULE as PT_CMDB_MAINTENANCE_SCHEDULE
,PRBTSKCI.MANAGED_BY as PT_CMDB_MANAGED_BY
,PRBTSKCI.MODEL_NUMBER as PT_CMDB_MODEL_NUMBER
,PRBTSKCI.NAME as PT_CMDB_NAME
,PRBTSKCI.OPERATIONAL_STATUS as PT_CMDB_OPERATIONAL_STATUS
,PRBTSKCI.ORDER_DATE as PT_CMDB_ORDER_DATE
,PRBTSKCI.OWNED_BY as PT_CMDB_OWNED_BY
,PRBTSKCI.PO_NUMBER as PT_CMDB_PO_NUMBER
,PRBTSKCI.PURCHASE_DATE as PT_CMDB_PURCHASE_DATE
,PRBTSKCI.SCHEDULE as PT_CMDB_SCHEDULE
,PRBTSKCI.SERIAL_NUMBER as PT_CMDB_SERIAL_NUMBER
,PRBTSKCI.SHORT_DESCRIPTION as PT_CMDB_SHORT_DESCRIPTION
,PRBTSKCI.START_DATE as PT_CMDB_START_DATE
,PRBTSKCI.SUBCATEGORY as PT_CMDB_SUBCATEGORY
,PRBTSKCI.SUPPORT_GROUP as PT_CMDB_SUPPORT_GROUP
,PRBTSKCI.SUPPORTED_BY as PT_CMDB_SUPPORTED_BY
,PRBTSKCI.SYS_CLASS_NAME as PT_CMDB_SYS_CLASS_NAME
,PRBTSKCI.SYS_CREATED_BY as PT_CMDB_SYS_CREATED_BY
,PRBTSKCI.SYS_CREATED_ON as PT_CMDB_SYS_CREATED_ON
,PRBTSKCI.SYS_UPDATED_BY as PT_CMDB_SYS_UPDATED_BY
,PRBTSKCI.SYS_UPDATED_ON as PT_CMDB_SYS_UPDATED_ON
,PRBTSKCI.U_AD_LOCATION as PT_CMDB_U_AD_LOCATION
,PRBTSKCI.U_APPROVED_RFC as PT_CMDB_U_APPROVED_RFC
,PRBTSKCI.U_CI_ALIAS as PT_CMDB_U_CI_ALIAS
,PRBTSKCI.U_CI_CATEGORY as PT_CMDB_U_CI_CATEGORY
,PRBTSKCI.U_DATACENTER as PT_CMDB_U_DATACENTER
,PRBTSKCI.U_DR_COVERAGE as PT_CMDB_U_DR_COVERAGE
,PRBTSKCI.U_DR_TIER_LEVEL as PT_CMDB_U_DR_TIER_LEVEL
,PRBTSKCI.U_ENVIRONMENT as PT_CMDB_U_ENVIRONMENT
,PRBTSKCI.U_IP_NETMASK as PT_CMDB_U_IP_NETMASK
,PRBTSKCI.U_REGION as PT_CMDB_U_REGION
,PRBTSKCI.U_REPORTING_CATEGORIES as PT_CMDB_U_REPORTING_CATEGORIES
,PRBTSKCI.U_SCIENCELOGIC_REGION as PT_CMDB_U_SCIENCELOGIC_REGION
,PRBTSKCI.U_SUB_TYPE as PT_CMDB_U_SUB_TYPE
,PRBTSKCI.U_TYPE as PT_CMDB_U_TYPE
,PRBTSKCI.VENDOR as PT_CMDB_VENDOR
,PRBTSKCI.WARRANTY_EXPIRATION as PT_CMDB_WARRANTY_EXPIRATION

,P.P_SYS_ID
,[P_ACTIVE]
      ,[P_ACTIVITY_DUE]
      ,[P_APPROVAL]
      ,[P_APPROVAL_HISTORY]
      ,[P_APPROVAL_SET]
      , PSUASSN.SU_NAME as [P_ASSIGNED_TO]
      ,PSUG.SUG_NAME as [P_ASSIGNMENT_GROUP]
      ,[P_BUSINESS_DURATION]
      ,[P_CALENDAR_DURATION]
      ,[P_CLOSE_NOTES]
      ,[P_CLOSED_AT]
      ,PSUCLOS.SU_NAME  as [P_CLOSED_BY_VALUE]
      
      ,[P_COMMENTS]
      ,[P_COMMENTS_AND_WORK_NOTES]
      ,[P_COMPANY]
      ,[P_CONTACT_TYPE]
      ,[P_DESCRIPTION]
      ,[P_DUE_DATE]
      ,[P_ESCALATION]
      ,[P_EXPECTED_START]
      ,[P_FOLLOW_UP]
      ,[P_GROUP_LIST]
      ,[P_IMPACT]
      ,[P_KNOWLEDGE]
      ,[P_KNOWN_ERROR]
      ,[P_LOCATION_VALUE]
      ,[P_MADE_SLA]
      ,[P_NUMBER]
      ,[P_OPENED_AT]
      ,PSUOPEN.SU_NAME as [P_OPENED_BY_VALUE]
      ,[P_ORDER]
      ,[P_PRIORITY]
      ,CASE 
		WHEN [P_PROBLEM_STATE] = 0 THEN ''
		WHEN [P_PROBLEM_STATE] = 1  THEN 'New'
		WHEN [P_PROBLEM_STATE] = 2  THEN 'In Queue'
		WHEN [P_PROBLEM_STATE] = 3  THEN 'Assigned'
		WHEN [P_PROBLEM_STATE] = 5  THEN 'Known Error'
		WHEN [P_PROBLEM_STATE] = 4  THEN 'Work in Progress'
		WHEN [P_PROBLEM_STATE] = 6  THEN 'Pending'
		WHEN [P_PROBLEM_STATE] = 7  THEN 'Resolved/Closed'
		ELSE
		CONVERT(VARCHAR,ISNULL([P_PROBLEM_STATE],''))
		END
		as [P_PROBLEM_STATE]
      ,[P_REASSIGNMENT_COUNT]
      ,[P_RELATED_INCIDENTS]
      ,[P_RFC]
      ,[P_SHORT_DESCRIPTION]
      ,[P_SKILLS]
      ,[P_SLA_DUE]
		,CASE 
		WHEN [P_STATE] = 0 THEN ''
		WHEN [P_STATE] = 1  THEN 'New'
		WHEN [P_STATE] = 2  THEN 'In Queue'
		WHEN [P_STATE] = 3  THEN 'Assigned'
		WHEN [P_STATE] = 5  THEN 'Known Error'
		WHEN [P_STATE] = 4  THEN 'Work in Progress'
		WHEN [P_STATE] = 6  THEN 'Pending'
		WHEN [P_STATE] = 7  THEN 'Resolved/Closed'
		ELSE
		CONVERT(VARCHAR,ISNULL([P_STATE],''))
		END
		as [P_STATE]
      ,[P_SYS_CREATED_BY]
      ,[P_SYS_CREATED_ON]
      ,[P_SYS_UPDATED_BY]
      ,[P_SYS_UPDATED_ON]
      ,[P_TIME_WORKED]
      ,[P_U_ASSIGNMENT_GROUP_TYPE]
      ,[P_U_CATEGORY]
      ,[P_U_CI_CATEGORY]
      ,[P_U_CI_CLASSIFICATION]
      ,[P_U_CI_TYPE]
      ,[P_U_FAILING_COMPONENT___DEVISE__]
      ,[P_U_INCIDENT_GP_TYPE]
      ,[P_U_KB_ARTICLE_FOR_KNOWN_ERROR]
      ,[P_U_LESSONS_LEARNED]
      ,[P_U_MISSING_CI]
      ,[P_U_MISSING_CI_REQUIRED]
      ,[P_U_PROBLEM_OCCURRED_DATE]
      ,[P_U_PROBLEMS_BUSINESS_IMPACT]
      ,[P_U_RCA_PARTICIPANTS]
      ,[P_U_RCA_REQUESTED_BY]
      ,[P_U_RCA_REVIEW_MEETING_DATE]
      ,[P_U_REGION]
      ,[P_U_RESOLUTION_CODE]
      ,[P_U_ROOT_CAUSE]
      ,[P_U_ROOT_CAUSE_ANALYSIS]
      ,[P_U_ROOT_CAUSE_DETAILS]
      ,[P_U_ROOT_CAUSE_IDENTIFIED_BY]
      ,[P_U_ROOT_CAUSE_JUSTIFICATION]
      ,[P_U_ROOT_CAUSE_OF_THE_PROBLEM]
      ,[P_U_SOURCE]
      ,[P_U_STATUS_REASON]
      ,[P_U_SUBCATEGORY]
      ,[P_U_SUPPLIER]
      ,[P_U_VENDOR]
      ,[P_U_VENDOR_TICKET_NO_]
      ,[P_UPON_APPROVAL]
      ,[P_UPON_REJECT]
      ,[P_URGENCY]
      ,[P_USER_INPUT]
      ,[P_WATCH_LIST]
      ,[P_WORK_AROUND]
      ,[P_WORK_END]
      ,[P_WORK_NOTES]
      ,[P_WORK_NOTES_LIST]
      ,[P_WORK_START]
	 	  ,PRBCI.ASSET_TAG as P_CMDB_ASSET_TAG
,PRBCI.ASSIGNED as P_CMDB_ASSIGNED
,PRBCI.ASSIGNED_TO_VALUE as P_CMDB_ASSIGNED_TO_VALUE
,PRBCI.ATTRIBUTES as P_CMDB_ATTRIBUTES
,PRBCI.CATEGORY as P_CMDB_CATEGORY
,PRBCI.CHANGE_CONTROL as P_CMDB_CHANGE_CONTROL
,PRBCI.COMMENTS as P_CMDB_COMMENTS
,PRBCI.COMPANY as P_CMDB_COMPANY
,PRBCI.COST as P_CMDB_COST
,PRBCI.COST_CC as P_CMDB_COST_CC
,PRBCI.COST_CENTER as P_CMDB_COST_CENTER
,PRBCI.DELIVERY_DATE as P_CMDB_DELIVERY_DATE
,PRBCI.DEPARTMENT as P_CMDB_DEPARTMENT
,PRBCI.DISCOVERY_SOURCE as P_CMDB_DISCOVERY_SOURCE
,PRBCI.DNS_DOMAIN as P_CMDB_DNS_DOMAIN
,PRBCI.DUE as P_CMDB_DUE
,PRBCI.DUE_IN as P_CMDB_DUE_IN
,PRBCI.FAULT_COUNT as P_CMDB_FAULT_COUNT
,PRBCI.FIRST_DISCOVERED as P_CMDB_FIRST_DISCOVERED
,PRBCI.FQDN as P_CMDB_FQDN
,PRBCI.GL_ACCOUNT as P_CMDB_GL_ACCOUNT
,PRBCI.INSTALL_DATE as P_CMDB_INSTALL_DATE
,PRBCI.INSTALL_STATUS as P_CMDB_INSTALL_STATUS
,PRBCI.INVOICE_NUMBER as P_CMDB_INVOICE_NUMBER
,PRBCI.JUSTIFICATION as P_CMDB_JUSTIFICATION
,PRBCI.LAST_DISCOVERED as P_CMDB_LAST_DISCOVERED
,PRBCI.LOCATION as P_CMDB_LOCATION
,PRBCI.MAINTENANCE_SCHEDULE as P_CMDB_MAINTENANCE_SCHEDULE
,PRBCI.MANAGED_BY as P_CMDB_MANAGED_BY
,PRBCI.MODEL_NUMBER as P_CMDB_MODEL_NUMBER
,PRBCI.NAME as P_CMDB_NAME
,PRBCI.OPERATIONAL_STATUS as P_CMDB_OPERATIONAL_STATUS
,PRBCI.ORDER_DATE as P_CMDB_ORDER_DATE
,PRBCI.OWNED_BY as P_CMDB_OWNED_BY
,PRBCI.PO_NUMBER as P_CMDB_PO_NUMBER
,PRBCI.PURCHASE_DATE as P_CMDB_PURCHASE_DATE
,PRBCI.SCHEDULE as P_CMDB_SCHEDULE
,PRBCI.SERIAL_NUMBER as P_CMDB_SERIAL_NUMBER
,PRBCI.SHORT_DESCRIPTION as P_CMDB_SHORT_DESCRIPTION
,PRBCI.START_DATE as P_CMDB_START_DATE
,PRBCI.SUBCATEGORY as P_CMDB_SUBCATEGORY
,PRBCI.SUPPORT_GROUP as P_CMDB_SUPPORT_GROUP
,PRBCI.SUPPORTED_BY as P_CMDB_SUPPORTED_BY
,PRBCI.SYS_CLASS_NAME as P_CMDB_SYS_CLASS_NAME
,PRBCI.SYS_CREATED_BY as P_CMDB_SYS_CREATED_BY
,PRBCI.SYS_CREATED_ON as P_CMDB_SYS_CREATED_ON
,PRBCI.SYS_UPDATED_BY as P_CMDB_SYS_UPDATED_BY
,PRBCI.SYS_UPDATED_ON as P_CMDB_SYS_UPDATED_ON
,PRBCI.U_AD_LOCATION as P_CMDB_U_AD_LOCATION
,PRBCI.U_APPROVED_RFC as P_CMDB_U_APPROVED_RFC
,PRBCI.U_CI_ALIAS as P_CMDB_U_CI_ALIAS
,PRBCI.U_CI_CATEGORY as P_CMDB_U_CI_CATEGORY
,PRBCI.U_DATACENTER as P_CMDB_U_DATACENTER
,PRBCI.U_DR_COVERAGE as P_CMDB_U_DR_COVERAGE
,PRBCI.U_DR_TIER_LEVEL as P_CMDB_U_DR_TIER_LEVEL
,PRBCI.U_ENVIRONMENT as P_CMDB_U_ENVIRONMENT
,PRBCI.U_IP_NETMASK as P_CMDB_U_IP_NETMASK
,PRBCI.U_REGION as P_CMDB_U_REGION
,PRBCI.U_REPORTING_CATEGORIES as P_CMDB_U_REPORTING_CATEGORIES
,PRBCI.U_SCIENCELOGIC_REGION as P_CMDB_U_SCIENCELOGIC_REGION
,PRBCI.U_SUB_TYPE as P_CMDB_U_SUB_TYPE
,PRBCI.U_TYPE as P_CMDB_U_TYPE
,PRBCI.VENDOR as P_CMDB_VENDOR
,PRBCI.WARRANTY_EXPIRATION as P_CMDB_WARRANTY_EXPIRATION
, 
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_CMDB_CI] INCCI ON I.INC_CMDB_CI_VALUE=INCCI.SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUASSN ON  SUASSN.[SU_SYS_ID]=I.[INC_ASSIGNED_TO_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUCLOS ON  SUCLOS.[SU_SYS_ID]=I.[INC_CLOSED_BY_VALUE] 
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUOPEN ON  SUOPEN.[SU_SYS_ID]=I.INC_OPENED_BY_VALUE 
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SURESO ON SURESO.SU_SYS_ID=I.[INC_RESOLVED_BY_VALUE]
LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER SUREPO ON SUREPO.SU_SYS_ID=I.[INC_U_REPORTED_BY_VALUE]
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_INCIDENT PARI ON PARI.INC_SYS_ID=I.INC_PARENT_INCIDENT_VALUE
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_PROBLEM] P on P.P_SYS_ID=I.INC_PROBLEM_ID
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUOPEN ON  PSUOPEN.[SU_SYS_ID]=P.[P_OPENED_BY_VALUE]
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUASSN ON  PSUASSN.[SU_SYS_ID]=P.[P_ASSIGNED_TO_VALUE] 
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PSUCLOS ON  PSUCLOS.[SU_SYS_ID]=P.[P_CLOSED_BY_VALUE] 
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG PSUG ON PSUG.SUG_SYS_ID=P.P_ASSIGNMENT_GROUP_VALUE
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI PRBCI on P.[P_CMDB_CI_VALUE]=PRBCI.SYS_ID
   LEFT JOIN  [KG_VIEWS].[KG_SNOW].[UVW_PROBLEM_TASK] PT ON PT.PT_PROBLEM_VALUE=P.P_SYS_ID
    LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUOPEN ON  PTSUOPEN.[SU_SYS_ID]=PT.[PT_OPENED_BY_VALUE]
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUASSN ON  PTSUASSN.[SU_SYS_ID]=PT.[PT_ASSIGNED_TO_VALUE] 
  LEFT JOIN [KG_VIEWS].[KG_SNOW].UVW_SYS_USER PTSUCLOS ON  PTSUCLOS.[SU_SYS_ID]=PT.[PT_CLOSED_BY_VALUE] 
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG PTSUG ON PTSUG.SUG_SYS_ID=PT.PT_ASSIGNMENT_GROUP_VALUE
  LEFT JOIN KG_VIEWS.KG_SNOW.UVW_CMDB_CI PRBTSKCI on PT.[PT_CMDB_CI_VALUE]=PRBTSKCI.SYS_ID







GO
/****** Object:  View [dbo].[UVW_REPORT_INCIDENT_AGE]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_REPORT_INCIDENT_AGE] AS 
(
SELECT 
CASE 
WHEN IA.[INC_PRIORITY] = 1 THEN 'Priority 1 Resolution' 
WHEN IA.[INC_PRIORITY] = 2 THEN 'Priority 2 Resolution' 
END as [SLA],
'Slightly Over' as Type
,SUM(CASE 
WHEN IA.[TWO MONTHS AGO] = '2 - 5 days' THEN 1 
										ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN IA.[ONE MONTH AGO] = '2 - 5 days' THEN 1 
										ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN IA.[CURRENT MONTH] = '2 - 5 days' THEN 1 
										ELSE 0 END) as [CURRENT MONTH]
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
FROM 
(SELECT ---INCIDENT
 I.[INC_PRIORITY]
,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
	,[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE) IA
 
Group by 
CASE 
WHEN IA.[INC_PRIORITY] = 1 THEN 'Priority 1 Resolution' 
WHEN IA.[INC_PRIORITY] = 2 THEN 'Priority 2 Resolution' 
END
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]

UNION ALL

SELECT 
CASE 
WHEN IA.[INC_PRIORITY] = 1 THEN 'Priority 1 Resolution' 
WHEN IA.[INC_PRIORITY] = 2 THEN 'Priority 2 Resolution' 
END as [SLA],
'Double Expected' as Type
,SUM(CASE 
WHEN (IA.[TWO MONTHS AGO] = 'Less than 2 days' OR IA.[TWO MONTHS AGO] = '6 - 15 days' OR IA.[TWO MONTHS AGO] = '31 - 60 days' OR IA.[TWO MONTHS AGO] = 'Greater than 60 days' OR IA.[TWO MONTHS AGO] = '16 - 30 days' ) THEN 1 ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN (IA.[ONE MONTH AGO] = 'Less than 2 days' OR IA.[ONE MONTH AGO] = '6 - 15 days' OR IA.[ONE MONTH AGO] = '31 - 60 days' OR IA.[ONE MONTH AGO] = 'Greater than 60 days' OR IA.[ONE MONTH AGO] = '16 - 30 days' ) THEN 1 ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN (IA.[CURRENT MONTH] = 'Less than 2 days' OR IA.[CURRENT MONTH] = '6 - 15 days' OR IA.[CURRENT MONTH] = '31 - 60 days' OR IA.[CURRENT MONTH] = 'Greater than 60 days' OR IA.[CURRENT MONTH] = '16 - 30 days' ) THEN 1 ELSE 0 END) as [CURRENT MONTH]
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
FROM 
(SELECT ---INCIDENT
 I.[INC_PRIORITY]
,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
	,[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE) IA
 
 
Group by 
CASE 
WHEN IA.[INC_PRIORITY] = 1 THEN 'Priority 1 Resolution' 
WHEN IA.[INC_PRIORITY] = 2 THEN 'Priority 2 Resolution' 
END
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]

UNION ALL

SELECT 
CASE 
WHEN IA.[INC_PRIORITY] = 3 THEN 'Priority 3 Resolution' 
END as [SLA],
'Slightly Over' as Type
,SUM(CASE 
WHEN IA.[TWO MONTHS AGO] = '16 - 30 days' THEN 1 
										ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN IA.[ONE MONTH AGO] = '16 - 30 days' THEN 1 
										ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN IA.[CURRENT MONTH] = '16 - 30 days' THEN 1 
										ELSE 0 END) as [CURRENT MONTH]
										,[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
FROM 
(SELECT ---INCIDENT
 I.[INC_PRIORITY]
,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
	,[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE) IA
 
Group by 
CASE 
WHEN IA.[INC_PRIORITY] = 3 THEN 'Priority 3 Resolution' 
END
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]

UNION ALL

SELECT 
CASE 
WHEN IA.[INC_PRIORITY] = 3 THEN 'Priority 3 Resolution' 
END as [SLA],
'Double Expected' as Type
,SUM(CASE 
WHEN (IA.[TWO MONTHS AGO] = '31 - 60 days' OR IA.[TWO MONTHS AGO] = 'Greater than 60 days' ) THEN 1 ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN (IA.[ONE MONTH AGO] = '31 - 60 days' OR IA.[ONE MONTH AGO] = 'Greater than 60 days' ) THEN 1 ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN (IA.[CURRENT MONTH] = '31 - 60 days' OR IA.[CURRENT MONTH] = 'Greater than 60 days' ) THEN 1 ELSE 0 END) as [CURRENT MONTH]
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
FROM 
(SELECT ---INCIDENT
 I.[INC_PRIORITY]
,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
	,[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE) IA
 
Group by 
CASE 
WHEN IA.[INC_PRIORITY] = 3 THEN 'Priority 3 Resolution' 
END
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]

UNION ALL

SELECT 
CASE 
WHEN IA.[INC_PRIORITY] = 4 THEN 'Priority 4 Resolution' 
END as [SLA],
'Slightly Over' as Type
,SUM(CASE 
WHEN IA.[TWO MONTHS AGO] = '31 - 60 days' THEN 1 
										ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN IA.[ONE MONTH AGO] = '31 - 60 days' THEN 1 
										ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN IA.[CURRENT MONTH] = '31 - 60 days' THEN 1 
										ELSE 0 END) as [CURRENT MONTH]
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
FROM 
(SELECT ---INCIDENT
 I.[INC_PRIORITY]
,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
	,[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE) IA
 
Group by 
CASE 
WHEN IA.[INC_PRIORITY] = 4 THEN 'Priority 4 Resolution' 
END
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]

UNION ALL

SELECT 
CASE 
WHEN IA.[INC_PRIORITY] = 4 THEN 'Priority 4 Resolution' 
END as [SLA],
'Double Expected' as Type
,SUM(CASE 
WHEN (IA.[TWO MONTHS AGO] = 'Greater than 60 days' ) THEN 1 ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN (IA.[ONE MONTH AGO] = 'Greater than 60 days' ) THEN 1 ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN (IA.[CURRENT MONTH] = 'Greater than 60 days' ) THEN 1 ELSE 0 END) as [CURRENT MONTH]
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
FROM 
(SELECT ---INCIDENT
 I.[INC_PRIORITY]
,I.[SYS_USER_GROUP_NAME] as [INC_SYS_USER_GROUP_NAME]
,I.[LOC_U_REGION] as [INC_LOC_U_REGION]
	,[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age](CASE WHEN I.INC_RESOLVED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
I.INC_RESOLVED_AT IS NULL or I.INC_RESOLVED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, I.[INC_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
FROM [KG_VIEWS].[KG_SNOW].[UVW_INCIDENT] I
LEFT JOIN KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG SUG ON SUG.SUG_SYS_ID=I.INC_ASSIGNMENT_GROUP_VALUE) IA
 
Group by 
CASE 
WHEN IA.[INC_PRIORITY] = 4 THEN 'Priority 4 Resolution' 
END
,IA.[INC_SYS_USER_GROUP_NAME]
	  ,IA.[INC_LOC_U_REGION]
)







GO
/****** Object:  View [dbo].[UVW_REPORT_SC_TASK_AGE]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  VIEW [dbo].[UVW_REPORT_SC_TASK_AGE] as 
--With UVWSYSUSERGROUPKG as 
--(
--select SUGK_NAME AS NAME,SUGK_TEAM AS TEAM  from  KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG_KG
--Where SUGK_TEAM IS NOT NULL AND SUGK_NAME IS NOT NULL
--),



--KGATTASKUVWISSUES AS
--(
--SELECT 
--CAST(ATT.[ISS_REFERENCENUMBER] AS VARCHAR(100)) AS Number
--,ATT.ISS_NAME AS [Short Description]
--,COALESCE(NULLIF(RTRIM(LTRIM(ATT.[ISS_DE:RESPONSIBLE])),''), 'Others') as [Task User Group Assignmnet Group]
--,ATT.ISS_ENTRYDATE AS [Open Date]
--,ATT.ISS_ACTUALCOMPLETIONDATE AS [Close Date]
--,ATT.ISS_STATUS AS [Ticket Status]
--,ATT.ISS_PRIORITY AS Priority
--,CASE 
--    WHEN CONVERT(INTEGER,REPLACE(ATT.[ISS_DE:ESP SLA RESOLUTION COUNT],'.','')) = -1 THEN 'Breached' 
--	  WHEN CONVERT(INTEGER,REPLACE(ATT.[ISS_DE:ESP SLA RESOLUTION COUNT],'.','')) = 1 THEN 'Achieved'
--	  WHEN CONVERT(INTEGER,REPLACE(ATT.[ISS_DE:ESP SLA RESOLUTION COUNT],'.','')) = 0 THEN 'In Progress'
--	  ELSE
--	  NULL END AS [SLA STAGE]
--,KG_IT.[dbo].[fn_Get_Age](CASE WHEN ATT.ISS_ACTUALCOMPLETIONDATE > DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 2, 0)) OR ATT.ISS_ACTUALCOMPLETIONDATE IS NULL THEN DATEDIFF(DAY, ATT.ISS_ENTRYDATE, DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 2, 0))) ELSE 0 END) AS [TWO MONTHS AGO]
--,KG_IT.[dbo].[fn_Get_Age](CASE WHEN ATT.ISS_ACTUALCOMPLETIONDATE > DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 1, 0)) OR ATT.ISS_ACTUALCOMPLETIONDATE IS NULL THEN DATEDIFF(DAY, ATT.ISS_ENTRYDATE, DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 1, 0))) ELSE 0 END) AS [ONE MONTH AGO]
--,KG_IT.[dbo].[fn_Get_Age](CASE WHEN ATT.ISS_ACTUALCOMPLETIONDATE > DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()), 0)) OR ATT.ISS_ACTUALCOMPLETIONDATE IS NULL THEN DATEDIFF(DAY, ATT.ISS_ENTRYDATE, DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()), 0))) ELSE 0 END) AS [CURRENT MONTH]
--,'' AS [Resolution Flag]
--,'' AS [Response Flag] 
--,DATEPART(wk, ATT.ISS_ENTRYDATE) AS [Week of Year] 
--,DATENAME(YEAR, ATT.ISS_ENTRYDATE) AS [Year Open] 
--,DATENAME(MONTH, ATT.ISS_ENTRYDATE) AS [Month Open] 
--,DATEPART(MONTH, ATT.ISS_ENTRYDATE) AS [MM Open]
--,DATENAME(YEAR, ATT.ISS_ACTUALCOMPLETIONDATE) AS [Year Closed] 
--,DATENAME(MONTH, ATT.ISS_ACTUALCOMPLETIONDATE) AS [Month Closed] 
--,DATEPART(MONTH, ATT.ISS_ACTUALCOMPLETIONDATE) AS [MM Closed] 
--,DATEDIFF(HOUR, ATT.ISS_ENTRYDATE, ATT.ISS_ACTUALCOMPLETIONDATE) AS [TTR (hours)]
--,ATT.[ISS_DE:REGION] AS Region,'Slightly Over' as Type,'Double Expected' as Type1

--From KG_VIEWS.KG_ATTASK.UVW_ISSUES AS ATT WITH (NOLOCK) 
--WHERE 
--ATT.ISS_OPTASKTYPE ='REQ'
--AND DATENAME(YEAR,ATT.ISS_ENTRYDATE) > 2014
--AND ATT.ISS_STATUS NOT IN ('Closed Skipped','Duplicate','Closed Incomplete','Pending Vendor','Pending DSA','Resolved - Pending Approval','Scheduled for Release','Duplicate','On Hold','In Progress','Rejected','Awaiting Feedback') 
--)

--,KGSNOWUVWSCTASK  as
--(
--SELECT     SCT.SCT_NUMBER AS Number,  
--SCT.SCT_SHORT_DESCRIPTION AS [Short Description],  SCT.SYS_USER_GROUP_ASSIGNMENT_GROUP AS [Task User Group Assignmnet Group], 
-- SCT.SCT_OPENED_AT AS [Open Date], 
--                       SCT.SCT_CLOSED_AT AS [Close Date],  SCT.SCT_STATE AS [Ticket Status], 
--					  SCT.SCT_PRIORITY AS Priority,'' AS [SLA Stage], 
					  
--					  dbo.fn_Get_Age(CASE WHEN SCT.SCT_CLOSED_AT > DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 2, 0)) OR
--                      SCT.SCT_CLOSED_AT IS NULL THEN DATEDIFF(DAY, SCT.[SCT_OPENED_AT], DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 2, 0))) ELSE 0 END) 
--                      AS [TWO MONTHS AGO], 
					  
--					  dbo.fn_Get_Age(CASE WHEN SCT.SCT_CLOSED_AT > DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 1, 0)) OR
--                      SCT.SCT_CLOSED_AT IS NULL THEN DATEDIFF(DAY, SCT.[SCT_OPENED_AT], DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 1, 0))) ELSE 0 END) 
--                      AS [ONE MONTH AGO], 
					  
--					  dbo.fn_Get_Age(CASE WHEN SCT.SCT_CLOSED_AT > DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()), 0)) OR
--                      SCT.SCT_CLOSED_AT IS NULL THEN DATEDIFF(DAY, SCT.[SCT_OPENED_AT], DATEADD(s, - 1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()), 0))) ELSE 0 END) 
--                      AS [CURRENT MONTH],

--					  CASE WHEN EXISTS
--                             (SELECT        1
--                               FROM            KG_VIEWS.KG_SNOW.UVW_U_SLA_EXCEPTION
--                               WHERE        LTRIM(RTRIM([TASK_U_RELATED_RECORD])) = LTRIM(RTRIM(SCT.SCT_NUMBER)) --AND [u_exception_type] = 'Resolution SLA'
--							   ) THEN 1 ELSE 0 END AS [Resolution Flag], 
--                      CASE WHEN EXISTS
--                             (SELECT        1
--                               FROM            KG_VIEWS.KG_SNOW.UVW_U_SLA_EXCEPTION
--                               WHERE        LTRIM(RTRIM([TASK_U_RELATED_RECORD])) = LTRIM(RTRIM(SCT.SCT_NUMBER)) --AND [u_exception_type] = 'Response SLA'
--							   ) THEN 1 ELSE 0 END AS [Response Flag],

--					DATEPART(wk, SCT.SCT_OPENED_AT) AS [Week of Year], 
--							   DATENAME(YEAR, SCT.SCT_OPENED_AT) AS [Year Open], 
--							   DATENAME(MONTH, SCT.SCT_OPENED_AT) AS [Month Open], 
--							   DATEPART(MONTH, SCT.SCT_OPENED_AT) AS [MM Open],
--                         DATENAME(YEAR, SCT.SCT_CLOSED_AT) AS [Year Closed], 
--						 DATENAME(MONTH, SCT.SCT_CLOSED_AT) AS [Month Closed], 
--						 DATEPART(MONTH, SCT.SCT_CLOSED_AT) AS [MM Closed], 
--						 DATEDIFF(HOUR, SCT.SCT_OPENED_AT, SCT.SCT_CLOSED_AT) AS [TTR (hours)],
--						SCT.LOC_U_REGION AS Region,'Slightly Over' as Type,'Double Expected' as Type1
--						FROM         KG_VIEWS.KG_SNOW.UVW_SC_TASK AS SCT WITH (NOLOCK)
--where  SCT.SCT_STATE NOT IN ('Closed Skipped','Duplicate','Closed Incomplete','Pending Vendor','Pending DSA','Resolved - Pending Approval')
--AND SCT.SCT_SHORT_DESCRIPTION NOT IN ('Perform Enhancement Request','SAP Security Role Administration',
--'Standard Profile Composite Role Creation In Test',
--'Standard Profile Composite Role Modification In Test',
--'Standard Profile Composite Role Transport To Production',
--'Standard Profile Composite Role UAT'
--)
--)
--,CTE AS(
--SELECT 
--CAST([ISS_REFERENCENUMBER] AS varchar(100)) AS Number,
--ISS_NAME AS [Short Description],
--COALESCE(NULLIF(RTRIM(LTRIM([ISS_DE:RESPONSIBLE])), ''), 'Others')   AS [Task User Group Assignmnet Group],
--ISS_ENTRYDATE AS [Open Date],
--ISS_ACTUALCOMPLETIONDATE AS [Close Date],
--ISS_STATUS AS [Ticket Status],
--[ISS_PRIORITY] AS Priority,
--CASE
--WHEN CONVERT(integer, REPLACE([ISS_DE:ESP SLA RESOLUTION COUNT], '.', '')) = -1 THEN 'Breached'
--WHEN CONVERT(integer, REPLACE([ISS_DE:ESP SLA RESOLUTION COUNT], '.', '')) = 1 THEN 'Achieved'
--WHEN CONVERT(integer, REPLACE([ISS_DE:ESP SLA RESOLUTION COUNT], '.', '')) = 0 THEN 'In Progress'
--ELSE NULL   END AS [SLA STAGE],
  
--  KG_IT.[dbo].[fn_Get_Age](CASE
--    WHEN ISS_ACTUALCOMPLETIONDATE > DATEADD(s, -1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 2, 0)) OR
--      ISS_ACTUALCOMPLETIONDATE IS NULL THEN DATEDIFF(DAY, ISS_ENTRYDATE, DATEADD(s, -1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 2, 0)))
--    ELSE 0
--  END) AS [TWO MONTHS AGO],
--  KG_IT.[dbo].[fn_Get_Age](CASE
--    WHEN ISS_ACTUALCOMPLETIONDATE > DATEADD(s, -1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 1, 0)) OR
--      ISS_ACTUALCOMPLETIONDATE IS NULL THEN DATEDIFF(DAY, ISS_ENTRYDATE, DATEADD(s, -1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()) - 1, 0)))
--    ELSE 0
--  END) AS [ONE MONTH AGO],
--  KG_IT.[dbo].[fn_Get_Age](CASE
--    WHEN ISS_ACTUALCOMPLETIONDATE > DATEADD(s, -1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()), 0)) OR
--      ISS_ACTUALCOMPLETIONDATE IS NULL THEN DATEDIFF(DAY, ISS_ENTRYDATE, DATEADD(s, -1, DATEADD(mm, DATEDIFF(m, 0, GETDATE()), 0)))
--    ELSE 0
--  END) AS [CURRENT MONTH],
--  '' AS [Resolution Flag],
--  '' AS [Response Flag],
--  DATEPART(wk, ISS_ENTRYDATE) AS [Week of Year],
--  DATENAME(YEAR, ISS_ENTRYDATE) AS [Year Open],
--  DATENAME(MONTH, ISS_ENTRYDATE) AS [Month Open],
--  DATEPART(MONTH, ISS_ENTRYDATE) AS [MM Open],
--  DATENAME(YEAR, ISS_ACTUALCOMPLETIONDATE) AS [Year Closed],
--  DATENAME(MONTH, ISS_ACTUALCOMPLETIONDATE) AS [Month Closed],
--  DATEPART(MONTH, ISS_ACTUALCOMPLETIONDATE) AS [MM Closed],
--  DATEDIFF(HOUR, ISS_ENTRYDATE, ISS_ACTUALCOMPLETIONDATE) AS [TTR (hours)],
--  --SUGK.SUGK_TEAM AS Team,
--  [ISS_DE:REGION] AS Region,'Slightly Over' as Type,'Double Expected' as Type1
--  FROM [dbo].[ATTASK_ISSUES] WITH (NOLOCK)
--   INNER JOIN
--sys_user_group WITH (NOLOCK) ON COALESCE(NULLIF(RTRIM(LTRIM([ISS_DE:RESPONSIBLE])), ''), 'Others') = sys_user_group.name  collate SQL_Latin1_General_CP1_CI_AS
--  WHERE ISS_OPTASKTYPE = 'REQ' AND  DATENAME(YEAR, [ISS_ENTRYDATE]) > 2014
--  and ISS_STATUS not in 
--  ('Closed Skipped','Duplicate','Closed Incomplete','Pending Vendor','Pending DSA','Resolved - Pending Approval',
--  'Scheduled for Release','Duplicate','On Hold','In Progress','Rejected','Awaiting Feedback') 
-- and  sys_user_group.team is not null and sys_user_group.name is not null

 
--UNION ALL

--select 
--Number,
--[Short Description],	
--[Task User Group Assignmnet Group]	,
--[Open Date],	
--[Close Date],	
--[Ticket Status]	,
--[Priority],
--[SLA Stage],	
--[TWO MONTHS AGO]	,
--[ONE MONTH AGO],	
--[CURRENT MONTH]	,
--[Resolution Flag]	,
--[Response Flag]	,
--[Week of Year]	,
--[Year Open],	
--[Month Open],	
--[MM Open],	
--[Year Closed],	
--[Month Closed],	
--[MM Closed],	
--[TTR (hours)],	
--Region,
--Type,
--Type1
--from KGSNOWUVWSCTASK  INNER JOIN UVWSYSUSERGROUPKG
--ON [Task User Group Assignmnet Group] = NAME

--UNION ALL


--select 
--Number,
--[Short Description],	
--[Task User Group Assignmnet Group]	,
--[Open Date],	
--[Close Date],	
--[Ticket Status]	,
--[Priority],
--[SLA STAGE],	
--[TWO MONTHS AGO]	,
--[ONE MONTH AGO],	
--[CURRENT MONTH]	,
--[Resolution Flag]	,
--[Response Flag]	,
--[Week of Year]	,
--[Year Open],	
--[Month Open],	
--[MM Open],	
--[Year Closed],	
--[Month Closed],	
--[MM Closed],	
--[TTR (hours)],	
--Region,
--Type,
--Type1
--from
--KGATTASKUVWISSUES
--INNER JOIN UVWSYSUSERGROUPKG
--ON [Task User Group Assignmnet Group] = NAME

--)

--SELECT  Type,
--SUM(CASE WHEN [TWO MONTHS AGO] = '6 - 15 days' OR [TWO MONTHS AGO] = '16 - 30 days' THEN 1 
--ELSE 0 END) as [TWO MONTHS AGO]
--,SUM(CASE WHEN [ONE MONTH AGO] = '6 - 15 days' OR [ONE MONTH AGO] = '16 - 30 days' THEN 1 
--ELSE 0 END) as [ONE MONTH AGO]

--,SUM(CASE WHEN [CURRENT MONTH] = '6 - 15 days' OR [CURRENT MONTH] = '16 - 30 days' THEN 1 
--ELSE 0 END) as [CURRENT MONTH]

--,[Task User Group Assignmnet Group],Region

--FROM  CTE  
----where Region is not null 
--Group by  [Task User Group Assignmnet Group],Region,Type

--UNION ALL


--SELECT 
-- Type1
--,SUM(CASE WHEN [TWO MONTHS AGO] = '31 - 60 days' OR [TWO MONTHS AGO] = 'Greater than 60 days' 
--THEN 1 	ELSE 0 END) as [TWO MONTHS AGO]

--,SUM(CASE WHEN [ONE MONTH AGO] = '31 - 60 days' OR [ONE MONTH AGO] = 'Greater than 60 days' THEN 1 
--ELSE 0 END) as [ONE MONTH AGO]

--,SUM(CASE WHEN [CURRENT MONTH] = '31 - 60 days' OR [CURRENT MONTH] = 'Greater than 60 days' THEN 1 
--ELSE 0 END) as [CURRENT MONTH]
--,[Task User Group Assignmnet Group],Region
--FROM  CTE  
----where Region is not null 
--Group by  [Task User Group Assignmnet Group],Region,Type1
(
SELECT 

'Slightly Over' as Type
,SUM(CASE 
WHEN CA.[TWO MONTHS AGO] = '6 - 15 days' OR CA.[TWO MONTHS AGO] = '16 - 30 days' THEN 1 
										ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN CA.[ONE MONTH AGO] = '6 - 15 days' OR CA.[ONE MONTH AGO] = '16 - 30 days' THEN 1 
										ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN CA.[CURRENT MONTH] = '6 - 15 days' OR CA.[CURRENT MONTH] = '16 - 30 days' THEN 1 
										ELSE 0 END) as [CURRENT MONTH]
,CA.[Task User Group Assignmnet Group]
,CA.[Task Region]
,CA.[Task State]
,CA.[Task Short Description]
FROM 
(SELECT
	st.[SYS_USER_GROUP_ASSIGNMENT_GROUP] as [Task User Group Assignmnet Group]
      ,st.[LOC_U_REGION] as [Task Region]
	  ,CASE 
WHEN st.[SCT_STATE]  = -5 THEN 'Not Yet Assigned'
WHEN st.[SCT_STATE]  = 1 THEN 'Open'
WHEN st.[SCT_STATE]  = 2 THEN 'Work in Progress'
WHEN st.[SCT_STATE]  = 3 THEN 'Closed Complete'
WHEN st.[SCT_STATE]  = 4 THEN 'Closed Incomplete'
WHEN st.[SCT_STATE]  = 7 THEN 'Closed Skipped'
WHEN st.[SCT_STATE]  = 9 THEN 'Pending Supplier'
WHEN st.[SCT_STATE]  = 10 THEN 'Pending Customer Inputs'
WHEN st.[SCT_STATE]  = 11 THEN 'Pending Change'
WHEN st.[SCT_STATE]  = 12 THEN 'Pending DSA'
END
as [Task State]
,st.[SCT_SHORT_DESCRIPTION] as [Task Short Description]
	,[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				st.SCT_CLOSED_AT IS NULL  or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				st.SCT_CLOSED_AT IS NULL  or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
st.SCT_CLOSED_AT IS NULL or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
	
	--SELECT *
FROM [KG_VIEWS].[KG_SNOW].[UVW_SC_REQUEST] sr 
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_SC_TASK] st on st.SCT_REQUEST_VALUE=sr.SCR_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_SC_TASK_RELATED_RECORD] strr  on strr.[SCTR_SYS_ID]=st.SCT_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_TASK_SLA] ts on st.SCT_SYS_ID=ts.TASK_SLA_TASK_VALUE
Left JOIN [KG_VIEWS].[KG_SNOW].[UVW_SYS_USER_GROUP_KG] srsug on sr.SCR_ASSIGNMENT_GROUP = srsug.SUG_SYS_ID) CA
Group by 
[Task User Group Assignmnet Group]
	  ,[Task Region]
	  ,[Task State]
	  ,[Task Short Description]

UNION ALL
SELECT 

'Double Expected' as Type
,SUM(CASE 
WHEN CA.[TWO MONTHS AGO] = '31 - 60 days' OR CA.[TWO MONTHS AGO] = 'Greater than 60 days' THEN 1 
										ELSE 0 END) as [TWO MONTHS AGO]
,SUM(CASE 
WHEN CA.[ONE MONTH AGO] = '31 - 60 days' OR CA.[ONE MONTH AGO] = 'Greater than 60 days' THEN 1 
										ELSE 0 END) as [ONE MONTH AGO]
,SUM(CASE 
WHEN CA.[CURRENT MONTH] = '31 - 60 days' OR CA.[CURRENT MONTH] = 'Greater than 60 days' THEN 1 
										ELSE 0 END) as [CURRENT MONTH]
,[Task User Group Assignmnet Group]
,[Task Region]
,[Task State]
,[Task Short Description]
FROM 
(SELECT
	st.[SYS_USER_GROUP_ASSIGNMENT_GROUP] as [Task User Group Assignmnet Group]
      ,st.[LOC_U_REGION] as [Task Region]
	  ,CASE 
WHEN st.[SCT_STATE]  = -5 THEN 'Not Yet Assigned'
WHEN st.[SCT_STATE]  = 1 THEN 'Open'
WHEN st.[SCT_STATE]  = 2 THEN 'Work in Progress'
WHEN st.[SCT_STATE]  = 3 THEN 'Closed Complete'
WHEN st.[SCT_STATE]  = 4 THEN 'Closed Incomplete'
WHEN st.[SCT_STATE]  = 7 THEN 'Closed Skipped'
WHEN st.[SCT_STATE]  = 9 THEN 'Pending Supplier'
WHEN st.[SCT_STATE]  = 10 THEN 'Pending Customer Inputs'
WHEN st.[SCT_STATE]  = 11 THEN 'Pending Change'
WHEN st.[SCT_STATE]  = 12 THEN 'Pending DSA'
END as [Task State]
,st.[SCT_SHORT_DESCRIPTION] as [Task Short Description]
	,[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0)) OR
				st.SCT_CLOSED_AT IS NULL  or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
		THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 2, 0))) 
		ELSE 0 END) 
		AS [TWO MONTHS AGO],
	[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0)) OR
				st.SCT_CLOSED_AT IS NULL  or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()) - 1, 0))) 
		ELSE 0 END) 
		AS [ONE MONTH AGO],
[dbo].[fn_Get_Age]	(CASE WHEN st.SCT_CLOSED_AT > DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0)) OR
st.SCT_CLOSED_AT IS NULL or st.SCT_CLOSED_AT = '1900-01-01 00:00:00.0000000'
	THEN DATEDIFF(DAY, st.[SCT_OPENED_AT], DATEADD(S, - 1, DATEADD(MM, DATEDIFF(M, 0, GETDATE()), 0))) 
	ELSE 0 END) 
	AS [CURRENT MONTH]
	
	--SELECT *
FROM [KG_VIEWS].[KG_SNOW].[UVW_SC_REQUEST] sr 
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_SC_TASK] st on st.SCT_REQUEST_VALUE=sr.SCR_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_SC_TASK_RELATED_RECORD] strr  on strr.[SCTR_SYS_ID]=st.SCT_SYS_ID
LEFT JOIN [KG_VIEWS].[KG_SNOW].[UVW_TASK_SLA] ts on st.SCT_SYS_ID=ts.TASK_SLA_TASK_VALUE
Left JOIN [KG_VIEWS].[KG_SNOW].[UVW_SYS_USER_GROUP_KG] srsug on sr.SCR_ASSIGNMENT_GROUP = srsug.SUG_SYS_ID) CA
Group by 
[Task User Group Assignmnet Group]
,[Task Region]
,[Task State]
,[Task Short Description]
)







GO
/****** Object:  View [dbo].[UVW_SYS_USER_GROUP]    Script Date: 11/20/2018 5:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================================================================
-- Changed by	:	ATHEETH
-- Date   		:	08/21/2017
-- ==========================================================================================================================================

CREATE VIEW [dbo].[UVW_SYS_USER_GROUP] AS 
SELECT        SUG.SUG_ACTIVE AS ACTIVE, SUG.SUG_COST_CENTER AS COST_CENTER, SUG.SUG_DEFAULT_ASSIGNEE AS DEFAULT_ASSIGNEE, 
                         SUG.SUG_DESCRIPTION AS DESCRIPTION, SUG.SUG_EMAIL AS EMAIL, SUG.SUG_EXCLUDE_MANAGER AS EXCLUDE_MANAGER, 
                         SUG.SUG_HOURLY_RATE AS HOURLY_RATE, SUG.SUG_INCLUDE_MEMBERS AS INCLUDE_MEMBERS, SUG.SUG_MANAGER_LINK AS MANAGER_LINK, 
                         SUG.SUG_MANAGER_VALUE AS MANAGER_VALUE, UPPER(SUGK.SUGK_NAME)AS NAME, SUG.SUG_PARENT AS PARENT, SUG.SUG_SOURCE AS SOURCE, 
                         SUG.SUG_SYS_CREATED_BY AS SYS_CREATED_BY, SUG.SUG_SYS_CREATED_ON AS SYS_CREATED_ON, SUG.SUG_SYS_ID AS SYS_ID, 
                         SUG.SUG_SYS_MOD_COUNT AS SYS_MOD_COUNT, SUG.SUG_SYS_UPDATED_BY AS SYS_UPDATED_BY, SUG.SUG_SYS_UPDATED_ON AS SYS_UPDATED_ON, 
                         SUG.SUG_TYPE AS TYPE, SUG.SUG_U_ALIAS AS U_ALIAS, SUG.SUG_U_CONTENT_APPROVER_LINK AS U_CONTENT_APPROVER_LINK, 
                         SUG.SUG_U_CONTENT_APPROVER_VALUE AS U_CONTENT_APPROVER_VALUE, SUG.SUG_U_DSS_GROUP AS U_DSS_GROUP, 
                         SUG.SUG_U_GROUP_ID AS U_GROUP_ID, SUG.SUG_U_GROUP_TYPE AS U_GROUP_TYPE, SUGK.SUGK_U_REGION AS U_REGION, 
                         SUG.SUG_U_RESPONSIBILITY AS U_RESPONSIBILITY, SUG.SUG_U_SRMS_GROUPS AS U_SRMS_GROUPS, SUG.SUG_U_SUB_SUPPLIER AS U_SUB_SUPPLIER, 
                         SUG.SUG_U_SUPPLIER AS U_SUPPLIER, SUG.SUG_U_SUPPORT_GROUP AS U_SUPPORT_GROUP, SUG.SUG_U_WORK_NOTES AS U_WORK_NOTES, 
                         SUGK.SUGK_SLT_GROUP AS SLT_GROUP, SUGK.SUGK_PILLAR AS PILLAR, SUGK.SUGK_TEAM AS TEAM, SUGK.SUB_TEAM, SUGK.SUGK_SILO AS SILO, 
                         SUGK.SUGK_SCOPE AS SCOPE
FROM            KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP AS SUG FULL OUTER JOIN
                         KG_VIEWS.KG_SNOW.UVW_SYS_USER_GROUP_KG AS SUGK ON LTRIM(RTRIM(SUG.SUG_NAME)) = LTRIM(RTRIM(SUGK.SUGK_NAME))
GO
USE [master]
GO
ALTER DATABASE [KG_IT] SET  READ_WRITE 
GO
