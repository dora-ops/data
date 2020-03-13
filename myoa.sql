/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : myoa

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:02:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jbpm_action
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_action`;
CREATE TABLE `jbpm_action` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `class` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ISPROPAGATIONALLOWED_` bit(1) DEFAULT NULL,
  `ACTIONEXPRESSION_` varchar(255) DEFAULT NULL,
  `ISASYNC_` bit(1) DEFAULT NULL,
  `REFERENCEDACTION_` bigint(20) DEFAULT NULL,
  `ACTIONDELEGATION_` bigint(20) DEFAULT NULL,
  `EVENT_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TIMERNAME_` varchar(255) DEFAULT NULL,
  `DUEDATE_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `TIMERACTION_` bigint(20) DEFAULT NULL,
  `EXPRESSION_` longtext,
  `EVENTINDEX_` int(11) DEFAULT NULL,
  `EXCEPTIONHANDLER_` bigint(20) DEFAULT NULL,
  `EXCEPTIONHANDLERINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ACTION_REFACT` (`REFERENCEDACTION_`),
  KEY `FK_CRTETIMERACT_TA` (`TIMERACTION_`),
  KEY `FK_ACTION_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_ACTION_EVENT` (`EVENT_`),
  KEY `FK_ACTION_ACTNDEL` (`ACTIONDELEGATION_`),
  KEY `FK_ACTION_EXPTHDL` (`EXCEPTIONHANDLER_`),
  KEY `IDX_ACTION_ACTNDL` (`ACTIONDELEGATION_`),
  KEY `IDX_ACTION_PROCDF` (`PROCESSDEFINITION_`),
  KEY `IDX_ACTION_EVENT` (`EVENT_`),
  CONSTRAINT `FK_ACTION_ACTNDEL` FOREIGN KEY (`ACTIONDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `FK_ACTION_EVENT` FOREIGN KEY (`EVENT_`) REFERENCES `jbpm_event` (`ID_`),
  CONSTRAINT `FK_ACTION_EXPTHDL` FOREIGN KEY (`EXCEPTIONHANDLER_`) REFERENCES `jbpm_exceptionhandler` (`ID_`),
  CONSTRAINT `FK_ACTION_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `FK_ACTION_REFACT` FOREIGN KEY (`REFERENCEDACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_CRTETIMERACT_TA` FOREIGN KEY (`TIMERACTION_`) REFERENCES `jbpm_action` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_action
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_bytearray`;
CREATE TABLE `jbpm_bytearray` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `FILEDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_BYTEARR_FILDEF` (`FILEDEFINITION_`),
  CONSTRAINT `FK_BYTEARR_FILDEF` FOREIGN KEY (`FILEDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_byteblock
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_byteblock`;
CREATE TABLE `jbpm_byteblock` (
  `PROCESSFILE_` bigint(20) NOT NULL,
  `BYTES_` blob,
  `INDEX_` int(11) NOT NULL,
  PRIMARY KEY (`PROCESSFILE_`,`INDEX_`),
  KEY `FK_BYTEBLOCK_FILE` (`PROCESSFILE_`),
  CONSTRAINT `FK_BYTEBLOCK_FILE` FOREIGN KEY (`PROCESSFILE_`) REFERENCES `jbpm_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_byteblock
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_comment
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_comment`;
CREATE TABLE `jbpm_comment` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `MESSAGE_` longtext,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `TOKENINDEX_` int(11) DEFAULT NULL,
  `TASKINSTANCEINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_COMMENT_TOKEN` (`TOKEN_`),
  KEY `FK_COMMENT_TSK` (`TASKINSTANCE_`),
  KEY `IDX_COMMENT_TSK` (`TASKINSTANCE_`),
  KEY `IDX_COMMENT_TOKEN` (`TOKEN_`),
  CONSTRAINT `FK_COMMENT_TOKEN` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_COMMENT_TSK` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_comment
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_decisionconditions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_decisionconditions`;
CREATE TABLE `jbpm_decisionconditions` (
  `DECISION_` bigint(20) NOT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `EXPRESSION_` varchar(255) DEFAULT NULL,
  `INDEX_` int(11) NOT NULL,
  PRIMARY KEY (`DECISION_`,`INDEX_`),
  KEY `FK_DECCOND_DEC` (`DECISION_`),
  CONSTRAINT `FK_DECCOND_DEC` FOREIGN KEY (`DECISION_`) REFERENCES `jbpm_node` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_decisionconditions
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_delegation
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_delegation`;
CREATE TABLE `jbpm_delegation` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASSNAME_` longtext,
  `CONFIGURATION_` longtext,
  `CONFIGTYPE_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_DELEGATION_PRCD` (`PROCESSDEFINITION_`),
  KEY `IDX_DELEG_PRCD` (`PROCESSDEFINITION_`),
  CONSTRAINT `FK_DELEGATION_PRCD` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_delegation
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_event
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_event`;
CREATE TABLE `jbpm_event` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `EVENTTYPE_` varchar(255) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_EVENT_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_EVENT_TRANS` (`TRANSITION_`),
  KEY `FK_EVENT_NODE` (`NODE_`),
  KEY `FK_EVENT_TASK` (`TASK_`),
  CONSTRAINT `FK_EVENT_NODE` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_EVENT_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `FK_EVENT_TASK` FOREIGN KEY (`TASK_`) REFERENCES `jbpm_task` (`ID_`),
  CONSTRAINT `FK_EVENT_TRANS` FOREIGN KEY (`TRANSITION_`) REFERENCES `jbpm_transition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_event
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_exceptionhandler
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_exceptionhandler`;
CREATE TABLE `jbpm_exceptionhandler` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `EXCEPTIONCLASSNAME_` longtext,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `GRAPHELEMENTINDEX_` int(11) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_exceptionhandler
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_group
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_group`;
CREATE TABLE `jbpm_id_group` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ID_GRP_PARENT` (`PARENT_`),
  CONSTRAINT `FK_ID_GRP_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm_id_group` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_membership`;
CREATE TABLE `jbpm_id_membership` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ROLE_` varchar(255) DEFAULT NULL,
  `USER_` bigint(20) DEFAULT NULL,
  `GROUP_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ID_MEMSHIP_GRP` (`GROUP_`),
  KEY `FK_ID_MEMSHIP_USR` (`USER_`),
  CONSTRAINT `FK_ID_MEMSHIP_GRP` FOREIGN KEY (`GROUP_`) REFERENCES `jbpm_id_group` (`ID_`),
  CONSTRAINT `FK_ID_MEMSHIP_USR` FOREIGN KEY (`USER_`) REFERENCES `jbpm_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_permissions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_permissions`;
CREATE TABLE `jbpm_id_permissions` (
  `ENTITY_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTION_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_user
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_user`;
CREATE TABLE `jbpm_id_user` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `EMAIL_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_job
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_job`;
CREATE TABLE `jbpm_job` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `ISEXCLUSIVE_` bit(1) DEFAULT NULL,
  `LOCKOWNER_` varchar(255) DEFAULT NULL,
  `LOCKTIME_` datetime DEFAULT NULL,
  `EXCEPTION_` longtext,
  `RETRIES_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `GRAPHELEMENTTYPE_` varchar(255) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_JOB_PRINST` (`PROCESSINSTANCE_`),
  KEY `FK_JOB_ACTION` (`ACTION_`),
  KEY `FK_JOB_TOKEN` (`TOKEN_`),
  KEY `FK_JOB_NODE` (`NODE_`),
  KEY `FK_JOB_TSKINST` (`TASKINSTANCE_`),
  KEY `IDX_JOB_TSKINST` (`TASKINSTANCE_`),
  KEY `IDX_JOB_TOKEN` (`TOKEN_`),
  KEY `IDX_JOB_PRINST` (`PROCESSINSTANCE_`),
  CONSTRAINT `FK_JOB_ACTION` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_JOB_NODE` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_JOB_PRINST` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `FK_JOB_TOKEN` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_JOB_TSKINST` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_job
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_log
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_log`;
CREATE TABLE `jbpm_log` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `INDEX_` int(11) DEFAULT NULL,
  `DATE_` datetime DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `SWIMLANEINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKOLDACTORID_` varchar(255) DEFAULT NULL,
  `TASKACTORID_` varchar(255) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `MESSAGE_` longtext,
  `SOURCENODE_` bigint(20) DEFAULT NULL,
  `DESTINATIONNODE_` bigint(20) DEFAULT NULL,
  `CHILD_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `ENTER_` datetime DEFAULT NULL,
  `LEAVE_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `NEWLONGVALUE_` bigint(20) DEFAULT NULL,
  `EXCEPTION_` longtext,
  `ACTION_` bigint(20) DEFAULT NULL,
  `VARIABLEINSTANCE_` bigint(20) DEFAULT NULL,
  `OLDDATEVALUE_` datetime DEFAULT NULL,
  `NEWDATEVALUE_` datetime DEFAULT NULL,
  `OLDBYTEARRAY_` bigint(20) DEFAULT NULL,
  `NEWBYTEARRAY_` bigint(20) DEFAULT NULL,
  `OLDSTRINGVALUE_` longtext,
  `NEWSTRINGVALUE_` longtext,
  `OLDLONGIDCLASS_` varchar(255) DEFAULT NULL,
  `OLDLONGIDVALUE_` bigint(20) DEFAULT NULL,
  `NEWLONGIDCLASS_` varchar(255) DEFAULT NULL,
  `NEWLONGIDVALUE_` bigint(20) DEFAULT NULL,
  `OLDLONGVALUE_` bigint(20) DEFAULT NULL,
  `OLDSTRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `OLDSTRINGIDVALUE_` varchar(255) DEFAULT NULL,
  `NEWSTRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `NEWSTRINGIDVALUE_` varchar(255) DEFAULT NULL,
  `OLDDOUBLEVALUE_` double DEFAULT NULL,
  `NEWDOUBLEVALUE_` double DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_LOG_OLDBYTES` (`OLDBYTEARRAY_`),
  KEY `FK_LOG_SOURCENODE` (`SOURCENODE_`),
  KEY `FK_LOG_DESTNODE` (`DESTINATIONNODE_`),
  KEY `FK_LOG_SWIMINST` (`SWIMLANEINSTANCE_`),
  KEY `FK_LOG_NEWBYTES` (`NEWBYTEARRAY_`),
  KEY `FK_LOG_VARINST` (`VARIABLEINSTANCE_`),
  KEY `FK_LOG_ACTION` (`ACTION_`),
  KEY `FK_LOG_TRANSITION` (`TRANSITION_`),
  KEY `FK_LOG_TOKEN` (`TOKEN_`),
  KEY `FK_LOG_NODE` (`NODE_`),
  KEY `FK_LOG_TASKINST` (`TASKINSTANCE_`),
  KEY `FK_LOG_CHILDTOKEN` (`CHILD_`),
  KEY `FK_LOG_PARENT` (`PARENT_`),
  CONSTRAINT `FK_LOG_ACTION` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_LOG_CHILDTOKEN` FOREIGN KEY (`CHILD_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_LOG_DESTNODE` FOREIGN KEY (`DESTINATIONNODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_LOG_NEWBYTES` FOREIGN KEY (`NEWBYTEARRAY_`) REFERENCES `jbpm_bytearray` (`ID_`),
  CONSTRAINT `FK_LOG_NODE` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_LOG_OLDBYTES` FOREIGN KEY (`OLDBYTEARRAY_`) REFERENCES `jbpm_bytearray` (`ID_`),
  CONSTRAINT `FK_LOG_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm_log` (`ID_`),
  CONSTRAINT `FK_LOG_SOURCENODE` FOREIGN KEY (`SOURCENODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_LOG_SWIMINST` FOREIGN KEY (`SWIMLANEINSTANCE_`) REFERENCES `jbpm_swimlaneinstance` (`ID_`),
  CONSTRAINT `FK_LOG_TASKINST` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `FK_LOG_TOKEN` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_LOG_TRANSITION` FOREIGN KEY (`TRANSITION_`) REFERENCES `jbpm_transition` (`ID_`),
  CONSTRAINT `FK_LOG_VARINST` FOREIGN KEY (`VARIABLEINSTANCE_`) REFERENCES `jbpm_variableinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_log
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_moduledefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduledefinition`;
CREATE TABLE `jbpm_moduledefinition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` longtext,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `STARTTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_MODDEF_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_TSKDEF_START` (`STARTTASK_`),
  KEY `IDX_MODDEF_PROCDF` (`PROCESSDEFINITION_`),
  CONSTRAINT `FK_MODDEF_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `FK_TSKDEF_START` FOREIGN KEY (`STARTTASK_`) REFERENCES `jbpm_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_moduledefinition
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_moduleinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduleinstance`;
CREATE TABLE `jbpm_moduleinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_MODINST_PRCINST` (`PROCESSINSTANCE_`),
  KEY `FK_TASKMGTINST_TMD` (`TASKMGMTDEFINITION_`),
  KEY `IDX_MODINST_PRINST` (`PROCESSINSTANCE_`),
  CONSTRAINT `FK_MODINST_PRCINST` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `FK_TASKMGTINST_TMD` FOREIGN KEY (`TASKMGMTDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_moduleinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_node
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_node`;
CREATE TABLE `jbpm_node` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` longtext,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ISASYNC_` bit(1) DEFAULT NULL,
  `ISASYNCEXCL_` bit(1) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `SUPERSTATE_` bigint(20) DEFAULT NULL,
  `DECISIONEXPRESSION_` varchar(255) DEFAULT NULL,
  `DECISIONDELEGATION` bigint(20) DEFAULT NULL,
  `SUBPROCNAME_` varchar(255) DEFAULT NULL,
  `SCRIPT_` bigint(20) DEFAULT NULL,
  `SUBPROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `SIGNAL_` int(11) DEFAULT NULL,
  `CREATETASKS_` bit(1) DEFAULT NULL,
  `ENDTASKS_` bit(1) DEFAULT NULL,
  `NODECOLLECTIONINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_DECISION_DELEG` (`DECISIONDELEGATION`),
  KEY `FK_NODE_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_NODE_ACTION` (`ACTION_`),
  KEY `FK_PROCST_SBPRCDEF` (`SUBPROCESSDEFINITION_`),
  KEY `FK_NODE_SCRIPT` (`SCRIPT_`),
  KEY `FK_NODE_SUPERSTATE` (`SUPERSTATE_`),
  KEY `IDX_PSTATE_SBPRCDEF` (`SUBPROCESSDEFINITION_`),
  KEY `IDX_NODE_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `IDX_NODE_ACTION` (`ACTION_`),
  KEY `IDX_NODE_SUPRSTATE` (`SUPERSTATE_`),
  CONSTRAINT `FK_DECISION_DELEG` FOREIGN KEY (`DECISIONDELEGATION`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `FK_NODE_ACTION` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_NODE_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `FK_NODE_SCRIPT` FOREIGN KEY (`SCRIPT_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_NODE_SUPERSTATE` FOREIGN KEY (`SUPERSTATE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_PROCST_SBPRCDEF` FOREIGN KEY (`SUBPROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_node
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_pooledactor
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_pooledactor`;
CREATE TABLE `jbpm_pooledactor` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANEINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_POOLEDACTOR_SLI` (`SWIMLANEINSTANCE_`),
  KEY `IDX_TSKINST_SWLANE` (`SWIMLANEINSTANCE_`),
  KEY `IDX_PLDACTR_ACTID` (`ACTORID_`),
  CONSTRAINT `FK_POOLEDACTOR_SLI` FOREIGN KEY (`SWIMLANEINSTANCE_`) REFERENCES `jbpm_swimlaneinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_pooledactor
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_processdefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processdefinition`;
CREATE TABLE `jbpm_processdefinition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` longtext,
  `VERSION_` int(11) DEFAULT NULL,
  `ISTERMINATIONIMPLICIT_` bit(1) DEFAULT NULL,
  `STARTSTATE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_PROCDEF_STRTSTA` (`STARTSTATE_`),
  KEY `IDX_PROCDEF_STRTST` (`STARTSTATE_`),
  CONSTRAINT `FK_PROCDEF_STRTSTA` FOREIGN KEY (`STARTSTATE_`) REFERENCES `jbpm_node` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_processdefinition
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_processinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processinstance`;
CREATE TABLE `jbpm_processinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ROOTTOKEN_` bigint(20) DEFAULT NULL,
  `SUPERPROCESSTOKEN_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `KEY_` (`KEY_`,`PROCESSDEFINITION_`),
  KEY `FK_PROCIN_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_PROCIN_ROOTTKN` (`ROOTTOKEN_`),
  KEY `FK_PROCIN_SPROCTKN` (`SUPERPROCESSTOKEN_`),
  KEY `IDX_PROCIN_SPROCTK` (`SUPERPROCESSTOKEN_`),
  KEY `IDX_PROCIN_ROOTTK` (`ROOTTOKEN_`),
  KEY `IDX_PROCIN_PROCDEF` (`PROCESSDEFINITION_`),
  CONSTRAINT `FK_PROCIN_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `FK_PROCIN_ROOTTKN` FOREIGN KEY (`ROOTTOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_PROCIN_SPROCTKN` FOREIGN KEY (`SUPERPROCESSTOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_processinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_runtimeaction
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_runtimeaction`;
CREATE TABLE `jbpm_runtimeaction` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `EVENTTYPE_` varchar(255) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCEINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_RTACTN_PROCINST` (`PROCESSINSTANCE_`),
  KEY `FK_RTACTN_ACTION` (`ACTION_`),
  KEY `IDX_RTACTN_ACTION` (`ACTION_`),
  KEY `IDX_RTACTN_PRCINST` (`PROCESSINSTANCE_`),
  CONSTRAINT `FK_RTACTN_ACTION` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_RTACTN_PROCINST` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_runtimeaction
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_swimlane
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlane`;
CREATE TABLE `jbpm_swimlane` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTORIDEXPRESSION_` varchar(255) DEFAULT NULL,
  `POOLEDACTORSEXPRESSION_` varchar(255) DEFAULT NULL,
  `ASSIGNMENTDELEGATION_` bigint(20) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_SWL_ASSDEL` (`ASSIGNMENTDELEGATION_`),
  KEY `FK_SWL_TSKMGMTDEF` (`TASKMGMTDEFINITION_`),
  CONSTRAINT `FK_SWL_ASSDEL` FOREIGN KEY (`ASSIGNMENTDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `FK_SWL_TSKMGMTDEF` FOREIGN KEY (`TASKMGMTDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_swimlane
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_swimlaneinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlaneinstance`;
CREATE TABLE `jbpm_swimlaneinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKMGMTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_SWIMLANEINST_TM` (`TASKMGMTINSTANCE_`),
  KEY `FK_SWIMLANEINST_SL` (`SWIMLANE_`),
  KEY `IDX_SWIMLINST_SL` (`SWIMLANE_`),
  CONSTRAINT `FK_SWIMLANEINST_SL` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm_swimlane` (`ID_`),
  CONSTRAINT `FK_SWIMLANEINST_TM` FOREIGN KEY (`TASKMGMTINSTANCE_`) REFERENCES `jbpm_moduleinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_swimlaneinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_task`;
CREATE TABLE `jbpm_task` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` longtext,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ISBLOCKING_` bit(1) DEFAULT NULL,
  `ISSIGNALLING_` bit(1) DEFAULT NULL,
  `CONDITION_` varchar(255) DEFAULT NULL,
  `DUEDATE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `ACTORIDEXPRESSION_` varchar(255) DEFAULT NULL,
  `POOLEDACTORSEXPRESSION_` varchar(255) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  `TASKNODE_` bigint(20) DEFAULT NULL,
  `STARTSTATE_` bigint(20) DEFAULT NULL,
  `ASSIGNMENTDELEGATION_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKCONTROLLER_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TASK_STARTST` (`STARTSTATE_`),
  KEY `FK_TASK_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_TASK_ASSDEL` (`ASSIGNMENTDELEGATION_`),
  KEY `FK_TASK_SWIMLANE` (`SWIMLANE_`),
  KEY `FK_TASK_TASKNODE` (`TASKNODE_`),
  KEY `FK_TASK_TASKMGTDEF` (`TASKMGMTDEFINITION_`),
  KEY `FK_TSK_TSKCTRL` (`TASKCONTROLLER_`),
  KEY `IDX_TASK_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `IDX_TASK_TSKNODE` (`TASKNODE_`),
  KEY `IDX_TASK_TASKMGTDF` (`TASKMGMTDEFINITION_`),
  CONSTRAINT `FK_TASK_ASSDEL` FOREIGN KEY (`ASSIGNMENTDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `FK_TASK_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `FK_TASK_STARTST` FOREIGN KEY (`STARTSTATE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_TASK_SWIMLANE` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm_swimlane` (`ID_`),
  CONSTRAINT `FK_TASK_TASKMGTDEF` FOREIGN KEY (`TASKMGMTDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`),
  CONSTRAINT `FK_TASK_TASKNODE` FOREIGN KEY (`TASKNODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_TSK_TSKCTRL` FOREIGN KEY (`TASKCONTROLLER_`) REFERENCES `jbpm_taskcontroller` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_task
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskactorpool
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskactorpool`;
CREATE TABLE `jbpm_taskactorpool` (
  `POOLEDACTOR_` bigint(20) NOT NULL,
  `TASKINSTANCE_` bigint(20) NOT NULL,
  PRIMARY KEY (`TASKINSTANCE_`,`POOLEDACTOR_`),
  KEY `FK_TASKACTPL_TSKI` (`TASKINSTANCE_`),
  KEY `FK_TSKACTPOL_PLACT` (`POOLEDACTOR_`),
  CONSTRAINT `FK_TASKACTPL_TSKI` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `FK_TSKACTPOL_PLACT` FOREIGN KEY (`POOLEDACTOR_`) REFERENCES `jbpm_pooledactor` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_taskactorpool
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskcontroller
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskcontroller`;
CREATE TABLE `jbpm_taskcontroller` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TASKCONTROLLERDELEGATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TSKCTRL_DELEG` (`TASKCONTROLLERDELEGATION_`),
  CONSTRAINT `FK_TSKCTRL_DELEG` FOREIGN KEY (`TASKCONTROLLERDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_taskcontroller
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskinstance`;
CREATE TABLE `jbpm_taskinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` longtext,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `ISCANCELLED_` bit(1) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `ISOPEN_` bit(1) DEFAULT NULL,
  `ISSIGNALLING_` bit(1) DEFAULT NULL,
  `ISBLOCKING_` bit(1) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `PROCINST_` bigint(20) DEFAULT NULL,
  `SWIMLANINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKMGMTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TSKINS_PRCINS` (`PROCINST_`),
  KEY `FK_TASKINST_TMINST` (`TASKMGMTINSTANCE_`),
  KEY `FK_TASKINST_TOKEN` (`TOKEN_`),
  KEY `FK_TASKINST_SLINST` (`SWIMLANINSTANCE_`),
  KEY `FK_TASKINST_TASK` (`TASK_`),
  KEY `IDX_TSKINST_TMINST` (`TASKMGMTINSTANCE_`),
  KEY `IDX_TSKINST_SLINST` (`SWIMLANINSTANCE_`),
  KEY `IDX_TASKINST_TOKN` (`TOKEN_`),
  KEY `IDX_TASK_ACTORID` (`ACTORID_`),
  KEY `IDX_TASKINST_TSK` (`TASK_`,`PROCINST_`),
  CONSTRAINT `FK_TASKINST_SLINST` FOREIGN KEY (`SWIMLANINSTANCE_`) REFERENCES `jbpm_swimlaneinstance` (`ID_`),
  CONSTRAINT `FK_TASKINST_TASK` FOREIGN KEY (`TASK_`) REFERENCES `jbpm_task` (`ID_`),
  CONSTRAINT `FK_TASKINST_TMINST` FOREIGN KEY (`TASKMGMTINSTANCE_`) REFERENCES `jbpm_moduleinstance` (`ID_`),
  CONSTRAINT `FK_TASKINST_TOKEN` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_TSKINS_PRCINS` FOREIGN KEY (`PROCINST_`) REFERENCES `jbpm_processinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_taskinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_token
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_token`;
CREATE TABLE `jbpm_token` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `NODEENTER_` datetime DEFAULT NULL,
  `NEXTLOGINDEX_` int(11) DEFAULT NULL,
  `ISABLETOREACTIVATEPARENT_` bit(1) DEFAULT NULL,
  `ISTERMINATIONIMPLICIT_` bit(1) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `LOCK_` varchar(255) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `SUBPROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TOKEN_SUBPI` (`SUBPROCESSINSTANCE_`),
  KEY `FK_TOKEN_PROCINST` (`PROCESSINSTANCE_`),
  KEY `FK_TOKEN_NODE` (`NODE_`),
  KEY `FK_TOKEN_PARENT` (`PARENT_`),
  KEY `IDX_TOKEN_PARENT` (`PARENT_`),
  KEY `IDX_TOKEN_PROCIN` (`PROCESSINSTANCE_`),
  KEY `IDX_TOKEN_NODE` (`NODE_`),
  KEY `IDX_TOKEN_SUBPI` (`SUBPROCESSINSTANCE_`),
  CONSTRAINT `FK_TOKEN_NODE` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_TOKEN_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_TOKEN_PROCINST` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `FK_TOKEN_SUBPI` FOREIGN KEY (`SUBPROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_token
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_tokenvariablemap
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_tokenvariablemap`;
CREATE TABLE `jbpm_tokenvariablemap` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `CONTEXTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TKVARMAP_TOKEN` (`TOKEN_`),
  KEY `FK_TKVARMAP_CTXT` (`CONTEXTINSTANCE_`),
  KEY `IDX_TKVVARMP_TOKEN` (`TOKEN_`),
  KEY `IDX_TKVARMAP_CTXT` (`CONTEXTINSTANCE_`),
  CONSTRAINT `FK_TKVARMAP_CTXT` FOREIGN KEY (`CONTEXTINSTANCE_`) REFERENCES `jbpm_moduleinstance` (`ID_`),
  CONSTRAINT `FK_TKVARMAP_TOKEN` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_tokenvariablemap
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_transition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_transition`;
CREATE TABLE `jbpm_transition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` longtext,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `FROM_` bigint(20) DEFAULT NULL,
  `TO_` bigint(20) DEFAULT NULL,
  `CONDITION_` varchar(255) DEFAULT NULL,
  `FROMINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TRANSITION_FROM` (`FROM_`),
  KEY `FK_TRANS_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_TRANSITION_TO` (`TO_`),
  KEY `IDX_TRANS_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `IDX_TRANSIT_FROM` (`FROM_`),
  KEY `IDX_TRANSIT_TO` (`TO_`),
  CONSTRAINT `FK_TRANSITION_FROM` FOREIGN KEY (`FROM_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_TRANSITION_TO` FOREIGN KEY (`TO_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_TRANS_PROCDEF` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_transition
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_variableaccess
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableaccess`;
CREATE TABLE `jbpm_variableaccess` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VARIABLENAME_` varchar(255) DEFAULT NULL,
  `ACCESS_` varchar(255) DEFAULT NULL,
  `MAPPEDNAME_` varchar(255) DEFAULT NULL,
  `PROCESSSTATE_` bigint(20) DEFAULT NULL,
  `TASKCONTROLLER_` bigint(20) DEFAULT NULL,
  `INDEX_` int(11) DEFAULT NULL,
  `SCRIPT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_VARACC_PROCST` (`PROCESSSTATE_`),
  KEY `FK_VARACC_SCRIPT` (`SCRIPT_`),
  KEY `FK_VARACC_TSKCTRL` (`TASKCONTROLLER_`),
  CONSTRAINT `FK_VARACC_PROCST` FOREIGN KEY (`PROCESSSTATE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `FK_VARACC_SCRIPT` FOREIGN KEY (`SCRIPT_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `FK_VARACC_TSKCTRL` FOREIGN KEY (`TASKCONTROLLER_`) REFERENCES `jbpm_taskcontroller` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_variableaccess
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_variableinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableinstance`;
CREATE TABLE `jbpm_variableinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CONVERTER_` char(1) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TOKENVARIABLEMAP_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `BYTEARRAYVALUE_` bigint(20) DEFAULT NULL,
  `DATEVALUE_` datetime DEFAULT NULL,
  `DOUBLEVALUE_` double DEFAULT NULL,
  `LONGIDCLASS_` varchar(255) DEFAULT NULL,
  `LONGVALUE_` bigint(20) DEFAULT NULL,
  `STRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `STRINGVALUE_` varchar(255) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_VARINST_PRCINST` (`PROCESSINSTANCE_`),
  KEY `FK_VARINST_TKVARMP` (`TOKENVARIABLEMAP_`),
  KEY `FK_VARINST_TK` (`TOKEN_`),
  KEY `FK_BYTEINST_ARRAY` (`BYTEARRAYVALUE_`),
  KEY `FK_VAR_TSKINST` (`TASKINSTANCE_`),
  KEY `IDX_VARINST_TK` (`TOKEN_`),
  KEY `IDX_VARINST_TKVARMP` (`TOKENVARIABLEMAP_`),
  KEY `IDX_VARINST_PRCINS` (`PROCESSINSTANCE_`),
  CONSTRAINT `FK_BYTEINST_ARRAY` FOREIGN KEY (`BYTEARRAYVALUE_`) REFERENCES `jbpm_bytearray` (`ID_`),
  CONSTRAINT `FK_VARINST_PRCINST` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `FK_VARINST_TK` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `FK_VARINST_TKVARMP` FOREIGN KEY (`TOKENVARIABLEMAP_`) REFERENCES `jbpm_tokenvariablemap` (`ID_`),
  CONSTRAINT `FK_VAR_TSKINST` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_variableinstance
-- ----------------------------

-- ----------------------------
-- Table structure for oa_acl
-- ----------------------------
DROP TABLE IF EXISTS `oa_acl`;
CREATE TABLE `oa_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aclState` int(11) DEFAULT NULL,
  `alcTriState` int(11) DEFAULT NULL,
  `principalType` varchar(255) DEFAULT NULL,
  `moduleId` int(11) DEFAULT NULL,
  `principalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC2ED7C9D86ECB5A7` (`moduleId`),
  KEY `FKC2ED7C9DF7480DF3` (`principalId`),
  CONSTRAINT `FKC2ED7C9D86ECB5A7` FOREIGN KEY (`moduleId`) REFERENCES `oa_module` (`id`),
  CONSTRAINT `FKC2ED7C9DF7480DF3` FOREIGN KEY (`principalId`) REFERENCES `oa_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_acl
-- ----------------------------

-- ----------------------------
-- Table structure for oa_agreement
-- ----------------------------
DROP TABLE IF EXISTS `oa_agreement`;
CREATE TABLE `oa_agreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aggId` varchar(255) DEFAULT NULL,
  `aggState` varchar(255) DEFAULT NULL,
  `aggType` varchar(255) DEFAULT NULL,
  `competivieArtical` varchar(255) DEFAULT NULL,
  `fullAboutDate` date DEFAULT NULL,
  `identifyDate` date DEFAULT NULL,
  `identifyOffice` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `secretProtocal` varchar(255) DEFAULT NULL,
  `signContractDate` date DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA218BBDDC9F30939` (`personId`),
  CONSTRAINT `FKA218BBDDC9F30939` FOREIGN KEY (`personId`) REFERENCES `oa_person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_agreement
-- ----------------------------

-- ----------------------------
-- Table structure for oa_approvehistory
-- ----------------------------
DROP TABLE IF EXISTS `oa_approvehistory`;
CREATE TABLE `oa_approvehistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approveTime` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `approver` int(11) DEFAULT NULL,
  `document` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDABEC2B43D280BEA` (`document`),
  KEY `FKDABEC2B42490799` (`approver`),
  CONSTRAINT `FKDABEC2B42490799` FOREIGN KEY (`approver`) REFERENCES `oa_user` (`id`),
  CONSTRAINT `FKDABEC2B43D280BEA` FOREIGN KEY (`document`) REFERENCES `oa_document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_approvehistory
-- ----------------------------

-- ----------------------------
-- Table structure for oa_contractproductrecord
-- ----------------------------
DROP TABLE IF EXISTS `oa_contractproductrecord`;
CREATE TABLE `oa_contractproductrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `agreementId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF43FA781346EDB7` (`agreementId`),
  KEY `FKF43FA78118DFB705` (`productId`),
  CONSTRAINT `FKF43FA78118DFB705` FOREIGN KEY (`productId`) REFERENCES `oa_product` (`id`),
  CONSTRAINT `FKF43FA781346EDB7` FOREIGN KEY (`agreementId`) REFERENCES `oa_salesagreement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_contractproductrecord
-- ----------------------------

-- ----------------------------
-- Table structure for oa_disciplinaryrecords
-- ----------------------------
DROP TABLE IF EXISTS `oa_disciplinaryrecords`;
CREATE TABLE `oa_disciplinaryrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `awardUnit` varchar(255) DEFAULT NULL,
  `disciplinaryDate` date DEFAULT NULL,
  `disciplinaryDistringuish` varchar(255) DEFAULT NULL,
  `disciplinaryItem` varchar(255) DEFAULT NULL,
  `disciplinaryReason` varchar(255) DEFAULT NULL,
  `disciplinaryResult` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3E055622C9F30939` (`personId`),
  CONSTRAINT `FK3E055622C9F30939` FOREIGN KEY (`personId`) REFERENCES `oa_person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_disciplinaryrecords
-- ----------------------------

-- ----------------------------
-- Table structure for oa_document
-- ----------------------------
DROP TABLE IF EXISTS `oa_document`;
CREATE TABLE `oa_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `typePersist` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `workflow` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK57BF60E8F8F22100` (`creator`),
  KEY `FK57BF60E8DA978D52` (`workflow`),
  CONSTRAINT `FK57BF60E8DA978D52` FOREIGN KEY (`workflow`) REFERENCES `oa_workflow` (`id`),
  CONSTRAINT `FK57BF60E8F8F22100` FOREIGN KEY (`creator`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_document
-- ----------------------------

-- ----------------------------
-- Table structure for oa_documentproperty
-- ----------------------------
DROP TABLE IF EXISTS `oa_documentproperty`;
CREATE TABLE `oa_documentproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `java_io_File` varchar(255) DEFAULT NULL,
  `java_lang_Integer` varchar(255) DEFAULT NULL,
  `java_lang_Long` varchar(255) DEFAULT NULL,
  `java_lang_String` varchar(255) DEFAULT NULL,
  `java_util_Date` varchar(255) DEFAULT NULL,
  `propertyName` varchar(255) DEFAULT NULL,
  `documentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF90C3ADDD9383E45` (`documentId`),
  CONSTRAINT `FKF90C3ADDD9383E45` FOREIGN KEY (`documentId`) REFERENCES `oa_document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_documentproperty
-- ----------------------------

-- ----------------------------
-- Table structure for oa_dynamicfield
-- ----------------------------
DROP TABLE IF EXISTS `oa_dynamicfield`;
CREATE TABLE `oa_dynamicfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLabel` varchar(255) DEFAULT NULL,
  `fieldName` varchar(255) DEFAULT NULL,
  `dynamicFormId` int(11) DEFAULT NULL,
  `fieldInput` int(11) DEFAULT NULL,
  `fieldtype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2F0F81488E408754` (`fieldtype`),
  KEY `FK2F0F81489D6CFE06` (`fieldInput`),
  KEY `FK2F0F8148C993614D` (`dynamicFormId`),
  CONSTRAINT `FK2F0F81488E408754` FOREIGN KEY (`fieldtype`) REFERENCES `oa_fieldtype` (`id`),
  CONSTRAINT `FK2F0F81489D6CFE06` FOREIGN KEY (`fieldInput`) REFERENCES `oa_fieldinput` (`id`),
  CONSTRAINT `FK2F0F8148C993614D` FOREIGN KEY (`dynamicFormId`) REFERENCES `oa_dynamicform` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_dynamicfield
-- ----------------------------

-- ----------------------------
-- Table structure for oa_dynamicform
-- ----------------------------
DROP TABLE IF EXISTS `oa_dynamicform`;
CREATE TABLE `oa_dynamicform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) DEFAULT NULL,
  `workflowId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1A4AEAB6C300A6AD` (`workflowId`),
  CONSTRAINT `FK1A4AEAB6C300A6AD` FOREIGN KEY (`workflowId`) REFERENCES `oa_workflow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_dynamicform
-- ----------------------------

-- ----------------------------
-- Table structure for oa_eventcalender
-- ----------------------------
DROP TABLE IF EXISTS `oa_eventcalender`;
CREATE TABLE `oa_eventcalender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allDay` bit(1) DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2F48E0C789CED2FA` (`userId`),
  CONSTRAINT `FK2F48E0C789CED2FA` FOREIGN KEY (`userId`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_eventcalender
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fieldinput
-- ----------------------------
DROP TABLE IF EXISTS `oa_fieldinput`;
CREATE TABLE `oa_fieldinput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fieldinput
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fielditem
-- ----------------------------
DROP TABLE IF EXISTS `oa_fielditem`;
CREATE TABLE `oa_fielditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indexItem` int(11) DEFAULT NULL,
  `itemValues` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `fieldId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB353ED00AEE86744` (`fieldId`),
  CONSTRAINT `FKB353ED00AEE86744` FOREIGN KEY (`fieldId`) REFERENCES `oa_dynamicfield` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fielditem
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fieldtype
-- ----------------------------
DROP TABLE IF EXISTS `oa_fieldtype`;
CREATE TABLE `oa_fieldtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fieldtype
-- ----------------------------

-- ----------------------------
-- Table structure for oa_listperformanceexamine
-- ----------------------------
DROP TABLE IF EXISTS `oa_listperformanceexamine`;
CREATE TABLE `oa_listperformanceexamine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `instruction` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `recordUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_listperformanceexamine
-- ----------------------------

-- ----------------------------
-- Table structure for oa_module
-- ----------------------------
DROP TABLE IF EXISTS `oa_module`;
CREATE TABLE `oa_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK7B9C579AAF29EAB` (`pid`),
  CONSTRAINT `FK7B9C579AAF29EAB` FOREIGN KEY (`pid`) REFERENCES `oa_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_module
-- ----------------------------

-- ----------------------------
-- Table structure for oa_onandoffregister
-- ----------------------------
DROP TABLE IF EXISTS `oa_onandoffregister`;
CREATE TABLE `oa_onandoffregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regularTime` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_onandoffregister
-- ----------------------------

-- ----------------------------
-- Table structure for oa_orderproductrecord
-- ----------------------------
DROP TABLE IF EXISTS `oa_orderproductrecord`;
CREATE TABLE `oa_orderproductrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4454E0FF5022A026` (`orderId`),
  KEY `FK4454E0FF18DFB705` (`productId`),
  CONSTRAINT `FK4454E0FF18DFB705` FOREIGN KEY (`productId`) REFERENCES `oa_product` (`id`),
  CONSTRAINT `FK4454E0FF5022A026` FOREIGN KEY (`orderId`) REFERENCES `oa_purchaseorderregisiter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_orderproductrecord
-- ----------------------------

-- ----------------------------
-- Table structure for oa_organization
-- ----------------------------
DROP TABLE IF EXISTS `oa_organization`;
CREATE TABLE `oa_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `sn` (`sn`),
  KEY `FK5410CE807410E72` (`pid`),
  CONSTRAINT `FK5410CE807410E72` FOREIGN KEY (`pid`) REFERENCES `oa_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_organization
-- ----------------------------

-- ----------------------------
-- Table structure for oa_paymentplan
-- ----------------------------
DROP TABLE IF EXISTS `oa_paymentplan`;
CREATE TABLE `oa_paymentplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(255) DEFAULT NULL,
  `gatheringRemind` datetime DEFAULT NULL,
  `isPaid` bit(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `toDate` datetime DEFAULT NULL,
  `salesId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCDE9FF621D3E2C39` (`salesId`),
  CONSTRAINT `FKCDE9FF621D3E2C39` FOREIGN KEY (`salesId`) REFERENCES `oa_salesagreement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_paymentplan
-- ----------------------------

-- ----------------------------
-- Table structure for oa_payplan
-- ----------------------------
DROP TABLE IF EXISTS `oa_payplan`;
CREATE TABLE `oa_payplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(255) DEFAULT NULL,
  `isPaid` bit(1) DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  `payRemind` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7764DE845022A026` (`orderId`),
  CONSTRAINT `FK7764DE845022A026` FOREIGN KEY (`orderId`) REFERENCES `oa_purchaseorderregisiter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_payplan
-- ----------------------------

-- ----------------------------
-- Table structure for oa_performanceexamine
-- ----------------------------
DROP TABLE IF EXISTS `oa_performanceexamine`;
CREATE TABLE `oa_performanceexamine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) DEFAULT NULL,
  `lpe` int(11) DEFAULT NULL,
  `paramId` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD51FDC9EC9F30939` (`personId`),
  KEY `FKD51FDC9EADEAC64` (`lpe`),
  KEY `FKD51FDC9EFCE4636E` (`paramId`),
  CONSTRAINT `FKD51FDC9EADEAC64` FOREIGN KEY (`lpe`) REFERENCES `oa_listperformanceexamine` (`id`),
  CONSTRAINT `FKD51FDC9EC9F30939` FOREIGN KEY (`personId`) REFERENCES `oa_person` (`id`),
  CONSTRAINT `FKD51FDC9EFCE4636E` FOREIGN KEY (`paramId`) REFERENCES `oa_performanceparameters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_performanceexamine
-- ----------------------------

-- ----------------------------
-- Table structure for oa_performanceparameters
-- ----------------------------
DROP TABLE IF EXISTS `oa_performanceparameters`;
CREATE TABLE `oa_performanceparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2552778DC9F30939` (`personId`),
  CONSTRAINT `FK2552778DC9F30939` FOREIGN KEY (`personId`) REFERENCES `oa_person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_performanceparameters
-- ----------------------------

-- ----------------------------
-- Table structure for oa_person
-- ----------------------------
DROP TABLE IF EXISTS `oa_person`;
CREATE TABLE `oa_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photoPath` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  `personPositionId` int(11) DEFAULT NULL,
  `personTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC51BA622EB3764D` (`personTypeId`),
  KEY `FKC51BA62F7F9FB6B` (`personPositionId`),
  KEY `FKC51BA62D90EFE6` (`orgId`),
  CONSTRAINT `FKC51BA622EB3764D` FOREIGN KEY (`personTypeId`) REFERENCES `oa_persontype` (`id`),
  CONSTRAINT `FKC51BA62D90EFE6` FOREIGN KEY (`orgId`) REFERENCES `oa_organization` (`id`),
  CONSTRAINT `FKC51BA62F7F9FB6B` FOREIGN KEY (`personPositionId`) REFERENCES `oa_personposition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_person
-- ----------------------------
INSERT INTO `oa_person` VALUES ('1', '1', '1', '2018-05-22', '1@qq.com', '2018-05-22', '1', '123', '', '1', null, null, null);

-- ----------------------------
-- Table structure for oa_personcalender
-- ----------------------------
DROP TABLE IF EXISTS `oa_personcalender`;
CREATE TABLE `oa_personcalender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allDay` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `cretor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9F63983C6B098895` (`cretor`),
  CONSTRAINT `FK9F63983C6B098895` FOREIGN KEY (`cretor`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_personcalender
-- ----------------------------

-- ----------------------------
-- Table structure for oa_persondaily
-- ----------------------------
DROP TABLE IF EXISTS `oa_persondaily`;
CREATE TABLE `oa_persondaily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKED960D789CED2FA` (`userId`),
  CONSTRAINT `FKED960D789CED2FA` FOREIGN KEY (`userId`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_persondaily
-- ----------------------------

-- ----------------------------
-- Table structure for oa_personposition
-- ----------------------------
DROP TABLE IF EXISTS `oa_personposition`;
CREATE TABLE `oa_personposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_personposition
-- ----------------------------

-- ----------------------------
-- Table structure for oa_persontype
-- ----------------------------
DROP TABLE IF EXISTS `oa_persontype`;
CREATE TABLE `oa_persontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_persontype
-- ----------------------------

-- ----------------------------
-- Table structure for oa_product
-- ----------------------------
DROP TABLE IF EXISTS `oa_product`;
CREATE TABLE `oa_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currentInventory` int(11) DEFAULT NULL,
  `inputPrise` double DEFAULT NULL,
  `outputPrise` double DEFAULT NULL,
  `productCode` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `totalInventory` int(11) DEFAULT NULL,
  `totalOutbound` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_product
-- ----------------------------

-- ----------------------------
-- Table structure for oa_purchaseorderregisiter
-- ----------------------------
DROP TABLE IF EXISTS `oa_purchaseorderregisiter`;
CREATE TABLE `oa_purchaseorderregisiter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currentState` varchar(255) DEFAULT NULL,
  `enterDate` datetime DEFAULT NULL,
  `enterPerson` varchar(255) DEFAULT NULL,
  `isPaid` bit(1) DEFAULT NULL,
  `loanPrice` double DEFAULT NULL,
  `orderCode` varchar(255) DEFAULT NULL,
  `orderName` varchar(255) DEFAULT NULL,
  `orderType` varchar(255) DEFAULT NULL,
  `paidPrice` double DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `tatalPrice` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_purchaseorderregisiter
-- ----------------------------

-- ----------------------------
-- Table structure for oa_role
-- ----------------------------
DROP TABLE IF EXISTS `oa_role`;
CREATE TABLE `oa_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role
-- ----------------------------

-- ----------------------------
-- Table structure for oa_rules
-- ----------------------------
DROP TABLE IF EXISTS `oa_rules`;
CREATE TABLE `oa_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `captition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_rules
-- ----------------------------

-- ----------------------------
-- Table structure for oa_salesagreement
-- ----------------------------
DROP TABLE IF EXISTS `oa_salesagreement`;
CREATE TABLE `oa_salesagreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractName` varchar(255) DEFAULT NULL,
  `contractTitle` varchar(255) DEFAULT NULL,
  `currentStatus` varchar(255) DEFAULT NULL,
  `enterDate` datetime DEFAULT NULL,
  `enterPerson` varchar(255) DEFAULT NULL,
  `isPaid` bit(1) DEFAULT NULL,
  `loanPrice` double DEFAULT NULL,
  `paidPrice` double DEFAULT NULL,
  `salesCode` varchar(255) DEFAULT NULL,
  `salesName` varchar(255) DEFAULT NULL,
  `tatalPrice` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_salesagreement
-- ----------------------------

-- ----------------------------
-- Table structure for oa_suppliercontact
-- ----------------------------
DROP TABLE IF EXISTS `oa_suppliercontact`;
CREATE TABLE `oa_suppliercontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `QQ` varchar(255) DEFAULT NULL,
  `contactName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `supplierId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2F88E447952D17F4` (`supplierId`),
  CONSTRAINT `FK2F88E447952D17F4` FOREIGN KEY (`supplierId`) REFERENCES `oa_suppliermanager` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_suppliercontact
-- ----------------------------

-- ----------------------------
-- Table structure for oa_suppliermanager
-- ----------------------------
DROP TABLE IF EXISTS `oa_suppliermanager`;
CREATE TABLE `oa_suppliermanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `supplierCode` varchar(255) DEFAULT NULL,
  `supplierName` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_suppliermanager
-- ----------------------------

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `expireTime` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `FK9ACB6A18C9F30939` (`personId`),
  CONSTRAINT `FK9ACB6A18C9F30939` FOREIGN KEY (`personId`) REFERENCES `oa_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('1', '1', '2018-05-22', '2019-05-22', '1', '1');

-- ----------------------------
-- Table structure for oa_useronandoffregister
-- ----------------------------
DROP TABLE IF EXISTS `oa_useronandoffregister`;
CREATE TABLE `oa_useronandoffregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backState` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `lateState` varchar(255) DEFAULT NULL,
  `normalState` varchar(255) DEFAULT NULL,
  `notRegisterState` varchar(255) DEFAULT NULL,
  `offTime` varchar(255) DEFAULT NULL,
  `onTime` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD672DC9289CED2FA` (`userId`),
  CONSTRAINT `FKD672DC9289CED2FA` FOREIGN KEY (`userId`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_useronandoffregister
-- ----------------------------

-- ----------------------------
-- Table structure for oa_userprivilege
-- ----------------------------
DROP TABLE IF EXISTS `oa_userprivilege`;
CREATE TABLE `oa_userprivilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inheritance` int(11) DEFAULT NULL,
  `userValue` int(11) DEFAULT NULL,
  `moduleId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC2BB877986ECB5A7` (`moduleId`),
  KEY `FKC2BB877989CED2FA` (`userId`),
  CONSTRAINT `FKC2BB877986ECB5A7` FOREIGN KEY (`moduleId`) REFERENCES `oa_module` (`id`),
  CONSTRAINT `FKC2BB877989CED2FA` FOREIGN KEY (`userId`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_userprivilege
-- ----------------------------

-- ----------------------------
-- Table structure for oa_usersroles
-- ----------------------------
DROP TABLE IF EXISTS `oa_usersroles`;
CREATE TABLE `oa_usersroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2B61564231FC2C3B` (`roleId`),
  KEY `FK2B61564289CED2FA` (`userId`),
  CONSTRAINT `FK2B61564231FC2C3B` FOREIGN KEY (`roleId`) REFERENCES `oa_role` (`id`),
  CONSTRAINT `FK2B61564289CED2FA` FOREIGN KEY (`userId`) REFERENCES `oa_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_usersroles
-- ----------------------------

-- ----------------------------
-- Table structure for oa_workflow
-- ----------------------------
DROP TABLE IF EXISTS `oa_workflow`;
CREATE TABLE `oa_workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `processDefinition` varchar(255) DEFAULT NULL,
  `processImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_workflow
-- ----------------------------
