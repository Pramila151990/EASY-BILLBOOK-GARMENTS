/*
SQLyog - Free MySQL GUI v5.15
Host - 8.0.39 : Database - uttambillbook
*********************************************************************
Server version : 8.0.39
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `uttambillbook`;

USE `uttambillbook`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `tbl_appmodule` */

DROP TABLE IF EXISTS `tbl_appmodule`;

CREATE TABLE `tbl_appmodule` (
  `ModuleID` int NOT NULL AUTO_INCREMENT,
  `ModuleName` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `ModuleCode` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '1',
  `Sequence` int DEFAULT '0',
  `Tcolor` varchar(50) DEFAULT 'LightGreen',
  `Bcolor` varchar(50) DEFAULT 'DarkGreen',
  `MImage` varchar(50) DEFAULT 'noimage.png',
  PRIMARY KEY (`ModuleID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_appmodule` */

insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (1,'POS (NBS)','CashCounter',1,1,'LightGreen','DarkGreen','cashcounter.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (2,'Add Item (NBS)','InventoryProduct',1,3,'white','Gray','AddItem.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (3,'Scanner Setting','ScannerSetting',1,4,'white','DarkOrange','scannersetting.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (4,'Customer Credits','CustomerDue',0,0,'LightGreen','DarkGreen','searchduesale.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (5,'Discount and Offer','DiscountOffer',0,0,'white','#C89F0F','discount.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (6,'Lable Printer Setting','LPrinterSetting',0,0,'white','gray','printersetting.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (7,'Transaction History','TransactionDhashboard',1,5,'white','black','TotalSale.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (8,'Exchange Reciept','ExchangeReturn',1,2,'white','Red','Exchange.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (9,'Add Purchase Items','PurchaseInvoice',1,6,'white','#2550DD','order.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (10,'Label Printing','LabelPrint',0,0,'white','#f48678','1Dcode.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (11,'Graph Dashboard','GraphDashboard',1,7,'white','red','graph.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (12,'Inventory Edit','InventoryEditing',0,0,'white','black','inventory.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (13,'Software Configuration','SoftwareConfiguration',1,8,'#a4ccea','#174c89','SoftwareConfig.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (14,'POS (BS)','CashCounterBS',0,0,'LightGreen','DarkGreen','cashcounter.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (15,'Add Item(BS)','InventoryProductBS',0,0,'white','gray','AddItem.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (16,'Add Quotation','AddQuotation',0,0,'white','Green','cashcounter.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (17,'Data Backup','DataBackup',1,9,'white','DarkGreen','databackup.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (18,'Item List (BS)','ListItemBS',0,0,'white','gray','Listitem.png');
insert into `tbl_appmodule` (`ModuleID`,`ModuleName`,`ModuleCode`,`IsActive`,`Sequence`,`Tcolor`,`Bcolor`,`MImage`) values (19,'Report Dashboard','ReportDhashboard',0,0,'white','#2550DD','report.png');

/*Table structure for table `tbl_appmoduleaccess` */

DROP TABLE IF EXISTS `tbl_appmoduleaccess`;

CREATE TABLE `tbl_appmoduleaccess` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL,
  `ModuleID` int NOT NULL,
  `Access` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_appmoduleaccess` */

insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (2,1,1,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (3,1,2,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (4,1,3,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (5,1,4,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (6,1,5,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (7,1,6,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (8,1,7,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (9,1,8,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (10,1,9,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (11,1,10,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (12,1,11,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (13,1,12,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (14,2,1,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (15,2,2,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (16,2,3,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (17,2,4,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (18,2,5,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (19,2,6,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (20,2,7,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (21,2,8,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (22,2,9,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (23,2,10,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (24,2,11,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (25,2,12,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (29,3,1,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (30,3,2,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (31,3,3,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (32,3,4,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (33,3,5,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (34,3,6,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (35,3,7,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (36,3,8,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (37,3,9,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (38,3,10,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (39,3,11,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (40,3,12,0);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (44,1,13,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (45,2,13,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (46,1,14,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (47,2,14,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (48,1,15,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (49,2,15,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (50,1,16,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (51,2,16,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (52,1,17,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (53,2,17,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (54,3,17,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (55,1,18,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (56,2,18,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (57,3,18,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (58,1,19,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (59,2,19,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (60,3,19,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (61,1,19,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (62,2,19,1);
insert into `tbl_appmoduleaccess` (`ID`,`GroupID`,`ModuleID`,`Access`) values (63,3,19,1);

/*Table structure for table `tbl_appsetup` */

DROP TABLE IF EXISTS `tbl_appsetup`;

CREATE TABLE `tbl_appsetup` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VariableKey` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `VariableDesc` varchar(50) DEFAULT NULL,
  `VariableValue` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_appsetup` */

insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (1,'ShopName','Shop Name','TRUE VALUE');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (2,'ShopTag','Shop Tag','All type of shirts and pants');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (3,'ShopAddress','Shop Address','Pokhran Road NO 1, Jekegram Ganpati Hall Thane 400606');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (4,'ShopMob','Shop Mobile','9320329444');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (5,'ShopMobAlt','Shop Alt Mobile','9320329444');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (6,'ShopEmail','Shop Email','kamleshbjain64@gmail.com');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (7,'ShopWebsite','Shop Website','NA');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (8,'ShopTerm','Shop Term & Condition','NA');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (9,'RecieptPrinter80MM','Reciept Printer 80MM','EasyMM80D2');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (10,'RecieptPrinterA4','Reciept Printer A4','POS-80C');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (11,'RecieptAs18size','Reciept Size','A4');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (13,'TermAndCondition','Term & Condition','NO RETURN NO EXCHANGE THANKS FOR DOING BUSINESS WOTH US');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (15,'RecieptGap','RecieptGap','25');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (16,'PrinterConnectedWithUSB','Printer Connected With USB','True');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (17,'RecieptPrintCount','Reciept Print Count','2');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (18,'ShopCat','Shop Category','Garments');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (19,'ShopBGImage','Shop BG Image','garment2.png');
insert into `tbl_appsetup` (`ID`,`VariableKey`,`VariableDesc`,`VariableValue`) values (20,'ReceiptDesignName','Receipt Design Name','D3');

/*Table structure for table `tbl_backupdate` */

DROP TABLE IF EXISTS `tbl_backupdate`;

CREATE TABLE `tbl_backupdate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_backupdate` */

/*Table structure for table `tbl_bankdetail` */

DROP TABLE IF EXISTS `tbl_bankdetail`;

CREATE TABLE `tbl_bankdetail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BankName` varchar(100) DEFAULT NULL,
  `AccountNo` varchar(25) DEFAULT NULL,
  `IFSC` varchar(20) DEFAULT NULL,
  `AccHolderName` varchar(100) DEFAULT NULL,
  `BankAddress` varchar(100) DEFAULT NULL,
  `UPIID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_bankdetail` */

insert into `tbl_bankdetail` (`ID`,`BankName`,`AccountNo`,`IFSC`,`AccHolderName`,`BankAddress`,`UPIID`) values (1,'BN','AN','IFSC','HNAME','ADDRS','8669205336@ptaxis');

/*Table structure for table `tbl_clientdetail` */

DROP TABLE IF EXISTS `tbl_clientdetail`;

CREATE TABLE `tbl_clientdetail` (
  `ClientId` int NOT NULL AUTO_INCREMENT,
  `ClientNo` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `DB_version` varchar(100) DEFAULT NULL,
  `App_Version` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_clientdetail` */

insert into `tbl_clientdetail` (`ClientId`,`ClientNo`,`Name`,`Location`,`DB_version`,`App_Version`) values (1,'UBB-1220-2400-0001','Value Plus','Raymond Thane','2552025.1.0.0','2552025.1.0.0');

/*Table structure for table `tbl_customerbuydate` */

DROP TABLE IF EXISTS `tbl_customerbuydate`;

CREATE TABLE `tbl_customerbuydate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_customerbuydate` */

insert into `tbl_customerbuydate` (`ID`,`DateName`) values (1,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (2,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (3,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (4,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (5,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (6,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (7,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (8,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (9,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (10,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (11,'30.Jun.2025');
insert into `tbl_customerbuydate` (`ID`,`DateName`) values (12,'30.Jun.2025');

/*Table structure for table `tbl_customers` */

DROP TABLE IF EXISTS `tbl_customers`;

CREATE TABLE `tbl_customers` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerPhone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_customers` */

insert into `tbl_customers` (`CustomerId`,`CustomerName`,`CustomerPhone`) values (1,'Sibaram','1111111111');
insert into `tbl_customers` (`CustomerId`,`CustomerName`,`CustomerPhone`) values (2,'rahgab','2222222222');
insert into `tbl_customers` (`CustomerId`,`CustomerName`,`CustomerPhone`) values (3,'reahh','7777777777');

/*Table structure for table `tbl_dealer` */

DROP TABLE IF EXISTS `tbl_dealer`;

CREATE TABLE `tbl_dealer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `MobileAlt` varchar(15) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `PGSTNo` varchar(50) DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_dealer` */

/*Table structure for table `tbl_dealer_paid` */

DROP TABLE IF EXISTS `tbl_dealer_paid`;

CREATE TABLE `tbl_dealer_paid` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DealerId` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentAmount` int DEFAULT NULL,
  `OrderNo` varchar(50) DEFAULT NULL,
  `Description` varchar(100) CHARACTER SET utf8mb4  DEFAULT '''',
  `ss` varchar(100) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_dealer_paid` */

/*Table structure for table `tbl_dealer_paid_detail` */

DROP TABLE IF EXISTS `tbl_dealer_paid_detail`;

CREATE TABLE `tbl_dealer_paid_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OnDate` date DEFAULT NULL,
  `AmountPerInv` int DEFAULT NULL,
  `DearPaidId` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DearPaidId` (`DearPaidId`),
  CONSTRAINT `tbl_dealer_paid_detail_ibfk_1` FOREIGN KEY (`DearPaidId`) REFERENCES `tbl_dealer_paid` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_dealer_paid_detail` */

/*Table structure for table `tbl_easygroupitem` */

DROP TABLE IF EXISTS `tbl_easygroupitem`;

CREATE TABLE `tbl_easygroupitem` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupCode` int DEFAULT '0',
  `SetCode` int DEFAULT '0',
  `GroupName` varchar(100) DEFAULT NULL,
  `ImageURL` varchar(100) CHARACTER SET utf8mb4  DEFAULT 'noimage.png',
  `FontSize` varchar(3) CHARACTER SET utf8mb4  DEFAULT '20',
  `IsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_easygroupitem` */

insert into `tbl_easygroupitem` (`ID`,`GroupCode`,`SetCode`,`GroupName`,`ImageURL`,`FontSize`,`IsDeleted`) values (1,NULL,0,'SHIRT','shirt.png','20',0);
insert into `tbl_easygroupitem` (`ID`,`GroupCode`,`SetCode`,`GroupName`,`ImageURL`,`FontSize`,`IsDeleted`) values (2,2,0,'SHIRT','shirt.png','20',0);
insert into `tbl_easygroupitem` (`ID`,`GroupCode`,`SetCode`,`GroupName`,`ImageURL`,`FontSize`,`IsDeleted`) values (3,3,0,'PENT','pajama.png','20',0);
insert into `tbl_easygroupitem` (`ID`,`GroupCode`,`SetCode`,`GroupName`,`ImageURL`,`FontSize`,`IsDeleted`) values (4,4,0,'RUMAL','hand-towel.png','20',0);

/*Table structure for table `tbl_errorlog` */

DROP TABLE IF EXISTS `tbl_errorlog`;

CREATE TABLE `tbl_errorlog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ErrorNumber` varchar(10) DEFAULT NULL,
  `ErrorLine` varchar(10) DEFAULT NULL,
  `ErrorMessage` varchar(4000) DEFAULT NULL,
  `ErrorSeverity` varchar(10) DEFAULT NULL,
  `ErrorState` varchar(10) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ProcedureName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_errorlog` */

/*Table structure for table `tbl_gstdetail` */

DROP TABLE IF EXISTS `tbl_gstdetail`;

CREATE TABLE `tbl_gstdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `GSTPercentage` int NOT NULL,
  `CGSTPercentage` int NOT NULL,
  `SGSTPercentage` int NOT NULL,
  `GSTNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_gstdetail` */

insert into `tbl_gstdetail` (`id`,`GSTPercentage`,`CGSTPercentage`,`SGSTPercentage`,`GSTNumber`) values (1,18,9,9,'ADSFS343HHD');

/*Table structure for table `tbl_hrf_instruction` */

DROP TABLE IF EXISTS `tbl_hrf_instruction`;

CREATE TABLE `tbl_hrf_instruction` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HRF_Code` varchar(10) DEFAULT NULL,
  `HRF_Name` varchar(100) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Show_Hide` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_hrf_instruction` */

insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (1,'HRF_1','Item',1);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (2,'HRF_2','MRP',1);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (3,'HRF_3','Price',1);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (4,'HRF_4','Color',1);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (5,'HRF_5','Net Weight',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (6,'HRF_6','Batch No',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (7,'HRF_7','Energy Value',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (8,'HRF_8','Protien',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (9,'HRF_9','Carbohydrade',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (10,'HRF_10','Fat',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (11,'HRF_11','Sugar',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (12,'HRF_12','b',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (13,'HRF_13','c',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (14,'HRF_14','d',0);
insert into `tbl_hrf_instruction` (`ID`,`HRF_Code`,`HRF_Name`,`Show_Hide`) values (15,'HRF_15','f',0);

/*Table structure for table `tbl_hrf_printed_data` */

DROP TABLE IF EXISTS `tbl_hrf_printed_data`;

CREATE TABLE `tbl_hrf_printed_data` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) DEFAULT NULL,
  `ItemName` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `MRP` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `SalePrice` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Discount` int DEFAULT NULL,
  `DiscountPercentage` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `HRF_4` varchar(50) DEFAULT NULL,
  `HRF_5` varchar(50) DEFAULT NULL,
  `HRF_6` varchar(50) DEFAULT NULL,
  `HRF_7` varchar(50) DEFAULT NULL,
  `HRF_8` varchar(50) DEFAULT NULL,
  `HRF_9` varchar(50) DEFAULT NULL,
  `HRF_10` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `HRF_11` varchar(50) DEFAULT NULL,
  `HRF_12` varchar(50) DEFAULT NULL,
  `HRF_13` varchar(50) DEFAULT NULL,
  `HRF_14` varchar(50) DEFAULT NULL,
  `HRF_15` varchar(50) DEFAULT NULL,
  `ScanStatus` tinyint DEFAULT '0',
  `Source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_hrf_printed_data` */

/*Table structure for table `tbl_hrf_printed_data_list` */

DROP TABLE IF EXISTS `tbl_hrf_printed_data_list`;

CREATE TABLE `tbl_hrf_printed_data_list` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) DEFAULT NULL,
  `ItemName` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `MRP` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `SalePrice` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Discount` int DEFAULT NULL,
  `DiscountPercentage` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `HRF_4` varchar(50) DEFAULT NULL,
  `HRF_5` varchar(50) DEFAULT NULL,
  `HRF_6` varchar(50) DEFAULT NULL,
  `HRF_7` varchar(50) DEFAULT NULL,
  `HRF_8` varchar(50) DEFAULT NULL,
  `HRF_9` varchar(50) DEFAULT NULL,
  `HRF_10` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `HRF_11` varchar(50) DEFAULT NULL,
  `HRF_12` varchar(50) DEFAULT NULL,
  `HRF_13` varchar(50) DEFAULT NULL,
  `HRF_14` varchar(50) DEFAULT NULL,
  `HRF_15` varchar(50) DEFAULT NULL,
  `ScanStatus` tinyint DEFAULT '0',
  `Source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_hrf_printed_data_list` */

/*Table structure for table `tbl_hrf_printing_data` */

DROP TABLE IF EXISTS `tbl_hrf_printing_data`;

CREATE TABLE `tbl_hrf_printing_data` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) DEFAULT NULL,
  `HRF_1` varchar(50) DEFAULT NULL,
  `HRF_2` varchar(50) DEFAULT NULL,
  `HRF_3` varchar(50) DEFAULT NULL,
  `HRF_4` varchar(50) DEFAULT NULL,
  `HRF_5` varchar(50) DEFAULT NULL,
  `HRF_6` varchar(50) DEFAULT NULL,
  `HRF_7` varchar(50) DEFAULT NULL,
  `HRF_8` varchar(50) DEFAULT NULL,
  `HRF_9` varchar(50) DEFAULT NULL,
  `HRF_10` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `HRF_11` varchar(50) DEFAULT NULL,
  `HRF_12` varchar(50) DEFAULT NULL,
  `HRF_13` varchar(50) DEFAULT NULL,
  `HRF_14` varchar(50) DEFAULT NULL,
  `HRF_15` varchar(50) DEFAULT NULL,
  `Print_Quantity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_hrf_printing_data` */

/*Table structure for table `tbl_inventory` */

DROP TABLE IF EXISTS `tbl_inventory`;

CREATE TABLE `tbl_inventory` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GroupCode` int DEFAULT '0',
  `CategoryId` int DEFAULT '0',
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `WholeSaleQuantity` int DEFAULT '1',
  `Expiry` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(100) DEFAULT '',
  `IncludeGSTPercentage` int DEFAULT '0',
  `GSTAmount` decimal(10,2) DEFAULT '0.00',
  `AmountExcludeGST` decimal(10,2) DEFAULT '0.00',
  `Is1Plus1Discount` tinyint(1) DEFAULT '0',
  `ImageName` varchar(50) CHARACTER SET utf8mb4  DEFAULT 'noimage.png',
  `Fontsize` varchar(3) CHARACTER SET utf8mb4  DEFAULT '20',
  `IsActive` int DEFAULT '1',
  `IsFirstItem` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventory` */

insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (1,NULL,1,'111','SHIRT',800,0,4990,0,0,1,1,'','',5,'249.50','4740.50',0,'shirt.png','20',1,1);
insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (2,2,1,'111','SHIRT',800,0,550,0,0,1,1,'','',5,'27.50','522.50',0,'shirt.png','20',1,1);
insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (3,3,1,'222','PENT',1500,0,1000,0,0,1,1,'','',5,'50.00','950.00',1,'pajama.png','20',1,1);
insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (4,3,1,'222','PENT 2p',1500,0,1400,0,0,1,2,'','',5,'70.00','1330.00',0,'pajama.png','20',1,0);
insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (5,4,2,'333','RUMAL',200,0,100,0,0,1,1,'','',5,'5.00','95.00',1,'hand-towel.png','20',1,1);
insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (6,4,2,'333','RUMAL 2p',200,0,150,0,0,1,2,'','',5,'7.50','142.50',0,'hand-towel.png','20',1,0);
insert into `tbl_inventory` (`Id`,`GroupCode`,`CategoryId`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Expiry`,`Description`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`,`IsActive`,`IsFirstItem`) values (7,4,2,'333','RUMAL 5p',200,0,250,0,0,1,5,'','',5,'12.50','237.50',0,'hand-towel.png','20',1,0);

/*Table structure for table `tbl_inventory_inprogress` */

DROP TABLE IF EXISTS `tbl_inventory_inprogress`;

CREATE TABLE `tbl_inventory_inprogress` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `Expiry` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(100) DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventory_inprogress` */

/*Table structure for table `tbl_inventory_printed` */

DROP TABLE IF EXISTS `tbl_inventory_printed`;

CREATE TABLE `tbl_inventory_printed` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `Expiry` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ScanStatus` tinyint DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventory_printed` */

/*Table structure for table `tbl_inventory_sold` */

DROP TABLE IF EXISTS `tbl_inventory_sold`;

CREATE TABLE `tbl_inventory_sold` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `Expiry` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventory_sold` */

/*Table structure for table `tbl_inventoryaddedhistory` */

DROP TABLE IF EXISTS `tbl_inventoryaddedhistory`;

CREATE TABLE `tbl_inventoryaddedhistory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `AddedTime` datetime DEFAULT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `AddedComment` varchar(200) CHARACTER SET utf8mb4  DEFAULT NULL,
  `DiscountComment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventoryaddedhistory` */

/*Table structure for table `tbl_inventorycategory` */

DROP TABLE IF EXISTS `tbl_inventorycategory`;

CREATE TABLE `tbl_inventorycategory` (
  `CategoryId` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventorycategory` */

insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (1,'Category 1');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (2,'Category 2');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (3,'Category 3');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (4,'Category 4');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (5,'Category 5');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (6,'Category 6');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (7,'Category 7');
insert into `tbl_inventorycategory` (`CategoryId`,`CategoryName`) values (8,'Category 8');

/*Table structure for table `tbl_inventorymasterunit` */

DROP TABLE IF EXISTS `tbl_inventorymasterunit`;

CREATE TABLE `tbl_inventorymasterunit` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `Expiry` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_inventorymasterunit` */

/*Table structure for table `tbl_invoicenogeneration` */

DROP TABLE IF EXISTS `tbl_invoicenogeneration`;

CREATE TABLE `tbl_invoicenogeneration` (
  `InvoiceNo` int NOT NULL AUTO_INCREMENT,
  `Prifix` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Status` tinyint NOT NULL,
  PRIMARY KEY (`InvoiceNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_invoicenogeneration` */

insert into `tbl_invoicenogeneration` (`InvoiceNo`,`Prifix`,`Status`) values (1,'VLU',0);
insert into `tbl_invoicenogeneration` (`InvoiceNo`,`Prifix`,`Status`) values (2,'VLU',0);

/*Table structure for table `tbl_invoicenogeneration_exchange` */

DROP TABLE IF EXISTS `tbl_invoicenogeneration_exchange`;

CREATE TABLE `tbl_invoicenogeneration_exchange` (
  `InvoiceNo` int NOT NULL AUTO_INCREMENT,
  `Prifix` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Status` tinyint NOT NULL,
  PRIMARY KEY (`InvoiceNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_invoicenogeneration_exchange` */

insert into `tbl_invoicenogeneration_exchange` (`InvoiceNo`,`Prifix`,`Status`) values (1,'EXC',0);

/*Table structure for table `tbl_invoicenoreuse` */

DROP TABLE IF EXISTS `tbl_invoicenoreuse`;

CREATE TABLE `tbl_invoicenoreuse` (
  `ReuseId` int NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsedStatus` tinyint NOT NULL,
  PRIMARY KEY (`ReuseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_invoicenoreuse` */

/*Table structure for table `tbl_loginhistory` */

DROP TABLE IF EXISTS `tbl_loginhistory`;

CREATE TABLE `tbl_loginhistory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `LogInTime` datetime DEFAULT NULL,
  `LogOutTime` datetime DEFAULT NULL,
  `LogoutComment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_loginhistory` */

insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (1,'SIBARAM BEHERA','2025-06-30 14:20:58',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (2,'SIBARAM BEHERA','2025-06-30 14:38:54',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (3,'SIBARAM BEHERA','2025-06-30 14:47:44',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (4,'SIBARAM BEHERA','2025-06-30 15:32:23',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (5,'SIBARAM BEHERA','2025-06-30 15:37:23',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (6,'SIBARAM BEHERA','2025-06-30 16:56:45',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (7,'SIBARAM BEHERA','2025-06-30 17:21:44',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (8,'SIBARAM BEHERA','2025-06-30 17:50:07',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (9,'SIBARAM BEHERA','2025-06-30 17:54:08',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (10,'SIBARAM BEHERA','2025-06-30 18:18:46',NULL,'login success');
insert into `tbl_loginhistory` (`ID`,`UserName`,`LogInTime`,`LogOutTime`,`LogoutComment`) values (11,'SIBARAM BEHERA',NULL,'2025-06-30 18:24:30','logout success and application shutdown');

/*Table structure for table `tbl_moduleaccess` */

DROP TABLE IF EXISTS `tbl_moduleaccess`;

CREATE TABLE `tbl_moduleaccess` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(100) CHARACTER SET utf8mb4  NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4  NOT NULL,
  `userpass` varchar(100) NOT NULL,
  `groupId` int NOT NULL,
  `IsActive` tinyint DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_moduleaccess` */

insert into `tbl_moduleaccess` (`ID`,`DisplayName`,`username`,`userpass`,`groupId`,`IsActive`) values (1,'SIBARAM BEHERA','ram','abc123',1,1);
insert into `tbl_moduleaccess` (`ID`,`DisplayName`,`username`,`userpass`,`groupId`,`IsActive`) values (2,'RAVI PURAN SAHANI','ravi','abc123',2,1);
insert into `tbl_moduleaccess` (`ID`,`DisplayName`,`username`,`userpass`,`groupId`,`IsActive`) values (3,'sree','abc','abc123',3,1);

/*Table structure for table `tbl_months` */

DROP TABLE IF EXISTS `tbl_months`;

CREATE TABLE `tbl_months` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MonthText` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_months` */

insert into `tbl_months` (`ID`,`MonthText`) values (1,'January');
insert into `tbl_months` (`ID`,`MonthText`) values (2,'February');
insert into `tbl_months` (`ID`,`MonthText`) values (3,'March');
insert into `tbl_months` (`ID`,`MonthText`) values (4,'April');
insert into `tbl_months` (`ID`,`MonthText`) values (5,'May');
insert into `tbl_months` (`ID`,`MonthText`) values (6,'June');
insert into `tbl_months` (`ID`,`MonthText`) values (7,'July');
insert into `tbl_months` (`ID`,`MonthText`) values (8,'August');
insert into `tbl_months` (`ID`,`MonthText`) values (9,'September');
insert into `tbl_months` (`ID`,`MonthText`) values (10,'October');
insert into `tbl_months` (`ID`,`MonthText`) values (11,'November');
insert into `tbl_months` (`ID`,`MonthText`) values (12,'December');

/*Table structure for table `tbl_namemaster` */

DROP TABLE IF EXISTS `tbl_namemaster`;

CREATE TABLE `tbl_namemaster` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_namemaster` */

/*Table structure for table `tbl_number` */

DROP TABLE IF EXISTS `tbl_number`;

CREATE TABLE `tbl_number` (
  `Number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PreFix` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Status` int DEFAULT '1',
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_number` */

/*Table structure for table `tbl_order` */

DROP TABLE IF EXISTS `tbl_order`;

CREATE TABLE `tbl_order` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OrderNo` varchar(50) CHARACTER SET utf8mb4  NOT NULL,
  `TaxRate` int DEFAULT NULL,
  `Tax` int DEFAULT NULL,
  `OrderAmount` int DEFAULT NULL,
  `PaidAmount` int DEFAULT '0',
  `BalanceAmount` int DEFAULT '0',
  `DealerId` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_order` */

/*Table structure for table `tbl_orderdetail` */

DROP TABLE IF EXISTS `tbl_orderdetail`;

CREATE TABLE `tbl_orderdetail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OrderId` int DEFAULT NULL,
  `OrderNo` varchar(50) DEFAULT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Rate` int DEFAULT NULL,
  `RateAfterTax` double DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `ProfitMargin` int DEFAULT NULL,
  `SalePrice` int DEFAULT NULL,
  `MRP` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_orderdetail` */

/*Table structure for table `tbl_printers` */

DROP TABLE IF EXISTS `tbl_printers`;

CREATE TABLE `tbl_printers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CounterId` int NOT NULL,
  `PrinterType` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_printers` */

insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (1,1,'Receipt','POS-80C');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (2,1,'Label','TSC TTP-244 Pro');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (3,2,'Receipt','POS-80C');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (4,2,'Label','TSC TTP-244 Pro');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (6,3,'Receipt','POS-80C');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (7,3,'Label','TSC TTP-244 Pro');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (8,4,'Receipt','POS-80C');
insert into `tbl_printers` (`ID`,`CounterId`,`PrinterType`,`Name`) values (9,4,'Label','TSC TTP-244 Pro');

/*Table structure for table `tbl_printinghistory` */

DROP TABLE IF EXISTS `tbl_printinghistory`;

CREATE TABLE `tbl_printinghistory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PrintedBy` varchar(50) DEFAULT NULL,
  `PrintDate` date DEFAULT NULL,
  `DataSource` varchar(50) DEFAULT NULL,
  `PrintCount` int DEFAULT NULL,
  `PrintItem` varchar(50) DEFAULT NULL,
  `ActionAfterPrint` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_printinghistory` */

/*Table structure for table `tbl_quotationgeneration` */

DROP TABLE IF EXISTS `tbl_quotationgeneration`;

CREATE TABLE `tbl_quotationgeneration` (
  `QuotationNo` int NOT NULL AUTO_INCREMENT,
  `Prifix` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Status` tinyint NOT NULL,
  PRIMARY KEY (`QuotationNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_quotationgeneration` */

/*Table structure for table `tbl_receiptdesigns` */

DROP TABLE IF EXISTS `tbl_receiptdesigns`;

CREATE TABLE `tbl_receiptdesigns` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Design` varchar(50) DEFAULT NULL,
  `PageName` varchar(200) CHARACTER SET utf8mb4  DEFAULT NULL,
  `UsedIn` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_receiptdesigns` */

insert into `tbl_receiptdesigns` (`ID`,`Design`,`PageName`,`UsedIn`) values (1,'D1','TempReciept.xaml','CashCounter');
insert into `tbl_receiptdesigns` (`ID`,`Design`,`PageName`,`UsedIn`) values (2,'D2','D2UserControl.xaml','EasyReciept.xaml,D2CashCounter.xaml');
insert into `tbl_receiptdesigns` (`ID`,`Design`,`PageName`,`UsedIn`) values (3,'D3','EasyMM80D2.xaml','EasySale');
insert into `tbl_receiptdesigns` (`ID`,`Design`,`PageName`,`UsedIn`) values (4,'D4','18Reciept.xaml','CashCounter');
insert into `tbl_receiptdesigns` (`ID`,`Design`,`PageName`,`UsedIn`) values (5,'D5','A4Reciept','CashCounter');

/*Table structure for table `tbl_sale` */

DROP TABLE IF EXISTS `tbl_sale`;

CREATE TABLE `tbl_sale` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(50) CHARACTER SET utf8mb4  NOT NULL,
  `ExtraDiscount` int DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerMobile` varchar(15) DEFAULT '',
  `CustomerGST` varchar(50) DEFAULT '',
  `PaymentBy` varchar(50) DEFAULT NULL,
  `GST` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SGST` decimal(10,3) DEFAULT '0.000',
  `CGST` decimal(10,3) DEFAULT '0.000',
  `PaidAmount` int NOT NULL DEFAULT '0',
  `DueAmount` int DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT 'Inprogress',
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PayDate` date DEFAULT NULL,
  `IsDeleted` tinyint NOT NULL DEFAULT '0',
  `CounterId` int DEFAULT '0',
  `UserId` int DEFAULT '0',
  `ExcRef` varchar(50) DEFAULT '',
  `ExcAmount` int DEFAULT '0',
  `CashPay` int DEFAULT '0',
  `CardPay` int DEFAULT '0',
  `UPIPay` int DEFAULT '0',
  `TransactionType` varchar(50) DEFAULT 'Sale',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_sale` */

insert into `tbl_sale` (`ID`,`InvoiceNo`,`ExtraDiscount`,`CustomerName`,`CustomerMobile`,`CustomerGST`,`PaymentBy`,`GST`,`SGST`,`CGST`,`PaidAmount`,`DueAmount`,`Status`,`Date`,`PayDate`,`IsDeleted`,`CounterId`,`UserId`,`ExcRef`,`ExcAmount`,`CashPay`,`CardPay`,`UPIPay`,`TransactionType`) values (1,'VLU1',0,'reahh','7777777777',NULL,'Cash','97.50','48.750','48.750',1950,0,'Complete','2025-06-30 14:31:51',NULL,0,2,1,'',0,1950,0,0,'Sale');
insert into `tbl_sale` (`ID`,`InvoiceNo`,`ExtraDiscount`,`CustomerName`,`CustomerMobile`,`CustomerGST`,`PaymentBy`,`GST`,`SGST`,`CGST`,`PaidAmount`,`DueAmount`,`Status`,`Date`,`PayDate`,`IsDeleted`,`CounterId`,`UserId`,`ExcRef`,`ExcAmount`,`CashPay`,`CardPay`,`UPIPay`,`TransactionType`) values (2,'VLU2',0,'reahh','7777777777',NULL,'Exc','0.00','0.000','0.000',0,0,'Complete','2025-06-30 17:01:56',NULL,0,2,1,'EXC1',550,0,0,0,'Exc');

/*Table structure for table `tbl_sale_exchange` */

DROP TABLE IF EXISTS `tbl_sale_exchange`;

CREATE TABLE `tbl_sale_exchange` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(50) DEFAULT NULL,
  `ExtraDiscount` int DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerMobile` varchar(15) DEFAULT NULL,
  `CustomerGST` varchar(50) DEFAULT NULL,
  `PaymentBy` varchar(50) DEFAULT NULL,
  `GST` int NOT NULL DEFAULT '0',
  `SGST` int DEFAULT NULL,
  `CGST` int DEFAULT NULL,
  `PaidAmount` int NOT NULL DEFAULT '0',
  `DueAmount` int DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT 'Inprogress',
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsDeleted` tinyint NOT NULL DEFAULT '0',
  `CounterId` int DEFAULT '0',
  `UserId` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_sale_exchange` */

insert into `tbl_sale_exchange` (`ID`,`InvoiceNo`,`ExtraDiscount`,`CustomerName`,`CustomerMobile`,`CustomerGST`,`PaymentBy`,`GST`,`SGST`,`CGST`,`PaidAmount`,`DueAmount`,`Status`,`Date`,`IsDeleted`,`CounterId`,`UserId`) values (1,'EXC1',0,'reahh','7777777777',NULL,'Cash',0,0,0,550,0,'Complete','2025-06-30 17:00:34',0,0,0);

/*Table structure for table `tbl_sale_quotation` */

DROP TABLE IF EXISTS `tbl_sale_quotation`;

CREATE TABLE `tbl_sale_quotation` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(50) DEFAULT NULL,
  `ExtraDiscount` int DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerMobile` varchar(15) DEFAULT NULL,
  `CustomerGST` varchar(50) DEFAULT NULL,
  `PaymentBy` varchar(50) DEFAULT NULL,
  `GST` int NOT NULL DEFAULT '0',
  `SGST` int DEFAULT NULL,
  `CGST` int DEFAULT NULL,
  `PaidAmount` int NOT NULL DEFAULT '0',
  `DueAmount` int DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT 'Inprogress',
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsDeleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_sale_quotation` */

/*Table structure for table `tbl_saledetail` */

DROP TABLE IF EXISTS `tbl_saledetail`;

CREATE TABLE `tbl_saledetail` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ItemId` int DEFAULT '0',
  `CategoryId` int DEFAULT '0',
  `InvoiceNo` varchar(50) NOT NULL,
  `GroupCode` int DEFAULT '0',
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `WholeSaleQuantity` int DEFAULT '1',
  `Amount` int NOT NULL,
  `Remark` varchar(100) CHARACTER SET utf8mb4  DEFAULT NULL,
  `ExchangeAmount` int DEFAULT '0',
  `IncludeGSTPercentage` int DEFAULT '0',
  `GSTAmount` decimal(10,2) DEFAULT '0.00',
  `AmountExcludeGST` decimal(10,2) DEFAULT '0.00',
  `Is1Plus1Discount` tinyint(1) DEFAULT '0',
  `ImageName` varchar(50) CHARACTER SET utf8mb4  DEFAULT 'noimage.png',
  `Fontsize` varchar(3) DEFAULT '20',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_saledetail` */

insert into `tbl_saledetail` (`Id`,`ItemId`,`CategoryId`,`InvoiceNo`,`GroupCode`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Amount`,`Remark`,`ExchangeAmount`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`) values (1,4,1,'VLU1',3,'222','PENT 2p',1500,0,1400,0,0,1,1,1400,'',0,5,'70.00','1330.00',0,'pajama.png','20');
insert into `tbl_saledetail` (`Id`,`ItemId`,`CategoryId`,`InvoiceNo`,`GroupCode`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Amount`,`Remark`,`ExchangeAmount`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`) values (2,2,1,'VLU1',2,'111','SHIRT',800,0,550,0,0,1,1,550,'',0,5,'27.50','522.50',0,'shirt.png','20');
insert into `tbl_saledetail` (`Id`,`ItemId`,`CategoryId`,`InvoiceNo`,`GroupCode`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Amount`,`Remark`,`ExchangeAmount`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`) values (3,-2,0,'VLU2',2,'111','SHIRT',800,0,550,0,0,1,1,0,'Exchange',550,5,'28.00','523.00',0,'shirt.png','20');

/*Table structure for table `tbl_saledetail_exchange` */

DROP TABLE IF EXISTS `tbl_saledetail_exchange`;

CREATE TABLE `tbl_saledetail_exchange` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ItemId` int DEFAULT '0',
  `CategoryId` int DEFAULT '0',
  `InvoiceNo` varchar(50) NOT NULL,
  `GroupCode` int DEFAULT '0',
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `WholeSaleQuantity` int DEFAULT '1',
  `Amount` int NOT NULL,
  `Remark` varchar(100) CHARACTER SET utf8mb4  DEFAULT NULL,
  `IncludeGSTPercentage` int DEFAULT '0',
  `GSTAmount` decimal(10,2) DEFAULT '0.00',
  `AmountExcludeGST` decimal(10,2) DEFAULT '0.00',
  `Is1Plus1Discount` tinyint(1) DEFAULT '0',
  `ImageName` varchar(50) CHARACTER SET utf8mb4  DEFAULT 'noimage.png',
  `Fontsize` varchar(3) DEFAULT '20',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_saledetail_exchange` */

insert into `tbl_saledetail_exchange` (`Id`,`ItemId`,`CategoryId`,`InvoiceNo`,`GroupCode`,`Barcode`,`ItemName`,`MRP`,`BuyPrice`,`SalePrice`,`Discount`,`DiscountPercentage`,`Quantity`,`WholeSaleQuantity`,`Amount`,`Remark`,`IncludeGSTPercentage`,`GSTAmount`,`AmountExcludeGST`,`Is1Plus1Discount`,`ImageName`,`Fontsize`) values (1,2,0,'EXC1',2,'111','SHIRT',800,0,550,0,0,1,1,550,NULL,5,'28.00','523.00',0,'shirt.png','20');

/*Table structure for table `tbl_saledetail_quotation` */

DROP TABLE IF EXISTS `tbl_saledetail_quotation`;

CREATE TABLE `tbl_saledetail_quotation` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(50) NOT NULL,
  `Barcode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `Amount` int NOT NULL,
  `Remark` varchar(100) CHARACTER SET utf8mb4  DEFAULT NULL,
  `IsMaster` tinyint DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_saledetail_quotation` */

/*Table structure for table `tbl_salehistory` */

DROP TABLE IF EXISTS `tbl_salehistory`;

CREATE TABLE `tbl_salehistory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LoginUser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Customer` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TotalBill` int DEFAULT NULL,
  `PaidAmount` int DEFAULT NULL,
  `DueAmount` int DEFAULT NULL,
  `DiscountOnBill` int DEFAULT NULL,
  `InvoiceNumner` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_salehistory` */

insert into `tbl_salehistory` (`ID`,`LoginUser`,`Customer`,`TotalBill`,`PaidAmount`,`DueAmount`,`DiscountOnBill`,`InvoiceNumner`,`Date`) values (1,'SIBARAM BEHERA','reahh',1950,1950,0,0,'VLU1','2025-06-30 15:39:12');
insert into `tbl_salehistory` (`ID`,`LoginUser`,`Customer`,`TotalBill`,`PaidAmount`,`DueAmount`,`DiscountOnBill`,`InvoiceNumner`,`Date`) values (2,'SIBARAM BEHERA','reahh',550,550,0,0,'EXC1','2025-06-30 17:01:24');
insert into `tbl_salehistory` (`ID`,`LoginUser`,`Customer`,`TotalBill`,`PaidAmount`,`DueAmount`,`DiscountOnBill`,`InvoiceNumner`,`Date`) values (3,'SIBARAM BEHERA','reahh',0,0,0,0,'VLU2','2025-06-30 17:02:40');

/*Table structure for table `tbl_scannersettings` */

DROP TABLE IF EXISTS `tbl_scannersettings`;

CREATE TABLE `tbl_scannersettings` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `DataBits` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ComPort` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Comm_Type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CustomName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Flow` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Parity` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PrinterIp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PrinterPort` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DeviceNumber` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `BaudRate` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StopBits` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CounterId` int DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_scannersettings` */

insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (1,'7','COM3','','Scanner_1','None','None','','','Scanner_1','9600','1',1);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (2,'7','COM4','1','Zebra_Printer_1','None','None','','','Zebra_Printer_1','9600','1',1);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (3,'7','COM3','','Scanner_1','None','None','','','Scanner_1','9600','1',2);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (4,'7','COM4','1','Zebra_Printer_1','None','None','','','Zebra_Printer_1','9600','1',2);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (6,'7','COM3','','Scanner_1','None','None','','','Scanner_1','9600','1',3);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (7,'7','COM4','1','Zebra_Printer_1','None','None','','','Zebra_Printer_1','9600','1',3);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (8,'7','COM3','','Scanner_1','None','None','','','Scanner_1','9600','1',4);
insert into `tbl_scannersettings` (`Id`,`DataBits`,`ComPort`,`Comm_Type`,`CustomName`,`Flow`,`Parity`,`PrinterIp`,`PrinterPort`,`DeviceNumber`,`BaudRate`,`StopBits`,`CounterId`) values (9,'7','COM4','1','Zebra_Printer_1','None','None','','','Zebra_Printer_1','9600','1',4);

/*Table structure for table `tbl_useraudit` */

DROP TABLE IF EXISTS `tbl_useraudit`;

CREATE TABLE `tbl_useraudit` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(50) DEFAULT NULL,
  `Actions` varchar(100) CHARACTER SET utf8mb4  DEFAULT NULL,
  `ActionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_useraudit` */

/*Table structure for table `tbl_usergroup` */

DROP TABLE IF EXISTS `tbl_usergroup`;

CREATE TABLE `tbl_usergroup` (
  `GroupID` int NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(50) CHARACTER SET utf8mb4  NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `tbl_usergroup` */

insert into `tbl_usergroup` (`GroupID`,`GroupName`) values (1,'Supper Admin');
insert into `tbl_usergroup` (`GroupID`,`GroupName`) values (2,'Admin');
insert into `tbl_usergroup` (`GroupID`,`GroupName`) values (3,'Operator');

/*Table structure for table `vtbl_hrf_instructionexten` */

DROP TABLE IF EXISTS `vtbl_hrf_instructionexten`;

DROP VIEW IF EXISTS `vtbl_hrf_instructionexten`;

CREATE TABLE `vtbl_hrf_instructionexten` (
  `ID` int NOT NULL DEFAULT '0',
  `HRF_Code` varchar(10) DEFAULT NULL,
  `HRF_Name` varchar(100) DEFAULT NULL,
  `Show_Hide` tinyint DEFAULT NULL,
  `HRF_1` varchar(100) DEFAULT NULL,
  `HRF_2` varchar(100) DEFAULT NULL,
  `HRF_3` varchar(100) DEFAULT NULL,
  `HRF_4` varchar(100) DEFAULT NULL,
  `HRF_5` varchar(100) DEFAULT NULL,
  `HRF_6` varchar(100) DEFAULT NULL,
  `HRF_7` varchar(100) DEFAULT NULL,
  `HRF_8` varchar(100) DEFAULT NULL,
  `HRF_9` varchar(100) DEFAULT NULL,
  `HRF_10` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Table structure for table `vtbl_module_access` */

DROP TABLE IF EXISTS `vtbl_module_access`;

DROP VIEW IF EXISTS `vtbl_module_access`;

CREATE TABLE `vtbl_module_access` (
  `IsActive` tinyint(1) DEFAULT NULL,
  `groupid` int NOT NULL,
  `moduleid` int NOT NULL,
  `modulecode` varchar(50) DEFAULT NULL,
  `modulename` varchar(50) DEFAULT NULL,
  `access` tinyint(1) DEFAULT NULL,
  `Sequence` int DEFAULT NULL,
  `Tcolor` varchar(50) DEFAULT NULL,
  `Bcolor` varchar(50) DEFAULT NULL,
  `MImage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Table structure for table `vtbl_sale_gb_cputd` */

DROP TABLE IF EXISTS `vtbl_sale_gb_cputd`;

DROP VIEW IF EXISTS `vtbl_sale_gb_cputd`;

CREATE TABLE `vtbl_sale_gb_cputd` (
  `SaleDate` date DEFAULT NULL,
  `CounterId` int DEFAULT '0',
  `PaymentBy` varchar(50) DEFAULT NULL,
  `UserId` int DEFAULT '0',
  `TransactionType` varchar(50) DEFAULT 'Sale',
  `CashPayment` decimal(32,0) DEFAULT NULL,
  `CardPayment` decimal(32,0) DEFAULT NULL,
  `UPIPayment` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Table structure for table `vtbl_saleinprogress` */

DROP TABLE IF EXISTS `vtbl_saleinprogress`;

DROP VIEW IF EXISTS `vtbl_saleinprogress`;

CREATE TABLE `vtbl_saleinprogress` (
  `Barcode` varchar(50) CHARACTER SET utf8mb3 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Table structure for table `vtbl_soldbarcods` */

DROP TABLE IF EXISTS `vtbl_soldbarcods`;

DROP VIEW IF EXISTS `vtbl_soldbarcods`;

CREATE TABLE `vtbl_soldbarcods` (
  `InvoiceNo` varchar(50) NOT NULL,
  `Barcode` varchar(50) CHARACTER SET utf8mb3 NOT NULL,
  `ItemName` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `MRP` int NOT NULL,
  `BuyPrice` int NOT NULL,
  `SalePrice` int NOT NULL,
  `Discount` int NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `Quantity` int NOT NULL,
  `Expiry` varchar(25) CHARACTER SET utf8mb3 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*View structure for view `vtbl_hrf_instructionexten` */

drop view if exists `vtbl_hrf_instructionexten`;

drop table if exists `vtbl_hrf_instructionexten`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtbl_hrf_instructionexten` AS select `tbl_hrf_instruction`.`ID` AS `ID`,`tbl_hrf_instruction`.`HRF_Code` AS `HRF_Code`,`tbl_hrf_instruction`.`HRF_Name` AS `HRF_Name`,`tbl_hrf_instruction`.`Show_Hide` AS `Show_Hide`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_1') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_1`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_2') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_2`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_3') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_3`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_4') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_4`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_5') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_5`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_6') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_6`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_7') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_7`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_8') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_8`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_9') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_9`,(case when (`tbl_hrf_instruction`.`HRF_Code` = 'HRF_10') then `tbl_hrf_instruction`.`HRF_Name` end) AS `HRF_10` from `tbl_hrf_instruction`;

/*View structure for view `vtbl_module_access` */

drop view if exists `vtbl_module_access`;

drop table if exists `vtbl_module_access`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtbl_module_access` AS select `m`.`IsActive` AS `IsActive`,`ma`.`GroupID` AS `groupid`,`ma`.`ModuleID` AS `moduleid`,`m`.`ModuleCode` AS `modulecode`,`m`.`ModuleName` AS `modulename`,`ma`.`Access` AS `access`,`m`.`Sequence` AS `Sequence`,`m`.`Tcolor` AS `Tcolor`,`m`.`Bcolor` AS `Bcolor`,`m`.`MImage` AS `MImage` from (`tbl_appmoduleaccess` `ma` join `tbl_appmodule` `m` on((`ma`.`ModuleID` = `m`.`ModuleID`)));

/*View structure for view `vtbl_sale_gb_cputd` */

drop view if exists `vtbl_sale_gb_cputd`;

drop table if exists `vtbl_sale_gb_cputd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtbl_sale_gb_cputd` AS select cast(`tbl_sale`.`Date` as date) AS `SaleDate`,`tbl_sale`.`CounterId` AS `CounterId`,`tbl_sale`.`PaymentBy` AS `PaymentBy`,`tbl_sale`.`UserId` AS `UserId`,`tbl_sale`.`TransactionType` AS `TransactionType`,sum(`tbl_sale`.`CashPay`) AS `CashPayment`,sum(`tbl_sale`.`CardPay`) AS `CardPayment`,sum(`tbl_sale`.`UPIPay`) AS `UPIPayment` from `tbl_sale` where (`tbl_sale`.`Status` <> 'Inprogress') group by `tbl_sale`.`CounterId`,`tbl_sale`.`PaymentBy`,`tbl_sale`.`UserId`,`tbl_sale`.`TransactionType`,cast(`tbl_sale`.`Date` as date) order by `tbl_sale`.`Date`;

/*View structure for view `vtbl_saleinprogress` */

drop view if exists `vtbl_saleinprogress`;

drop table if exists `vtbl_saleinprogress`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtbl_saleinprogress` AS select `sd`.`Barcode` AS `Barcode` from (`tbl_saledetail` `sd` join `tbl_sale` `s` on(((`sd`.`InvoiceNo` = `s`.`InvoiceNo`) and (`s`.`Status` = 'Inprogress'))));

/*View structure for view `vtbl_soldbarcods` */

drop view if exists `vtbl_soldbarcods`;

drop table if exists `vtbl_soldbarcods`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtbl_soldbarcods` AS select `sd`.`InvoiceNo` AS `InvoiceNo`,`it`.`Barcode` AS `Barcode`,`it`.`ItemName` AS `ItemName`,`it`.`MRP` AS `MRP`,`it`.`BuyPrice` AS `BuyPrice`,`it`.`SalePrice` AS `SalePrice`,`it`.`Discount` AS `Discount`,`it`.`DiscountPercentage` AS `DiscountPercentage`,`it`.`Quantity` AS `Quantity`,`it`.`Expiry` AS `Expiry` from (`tbl_inventory` `it` join `tbl_saledetail` `sd` on((`it`.`Barcode` = `sd`.`Barcode`)));

/* Procedure structure for procedure `GeInventoryMasterUnitNameList` */

drop procedure if exists `GeInventoryMasterUnitNameList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `GeInventoryMasterUnitNameList`(
)
BEGIN
	
	select 	distinct ItemName
	from tbl_inventorymasterunit order by ITemName asc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `GetInventoryNameList` */

drop procedure if exists `GetInventoryNameList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryNameList`(
)
BEGIN
	select ItemName from tbl_namemaster order by ItemName asc;
	/*
	select Temp.ITemName from 
	(
		select 	distinct ItemName
		from tbl_inventory 
		
		union all 
	
		select 	distinct ItemName
		from tbl_inventory_sold 
	) as Temp  order by Temp.ITemName asc;
*/
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `GetInventoryNameList_PreSale` */

drop procedure if exists `GetInventoryNameList_PreSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventoryNameList_PreSale`(
)
BEGIN
	select 	distinct ItemName
		from tbl_inventory  order by ItemName asc;
	/*
	select Temp.ITemName from 
	(
		select 	distinct ItemName
		from tbl_inventory 
		
		union all 
	
		select 	distinct ItemName
		from tbl_inventory_sold 
	) as Temp  order by Temp.ITemName asc;
*/
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `GetInventorySearchList_PreSale` */

drop procedure if exists `GetInventorySearchList_PreSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventorySearchList_PreSale`(
arg_Text varchar(200)
)
BEGIN
select count(barcode) as Quantity,ItemName, MRP,SalePrice, Discount, DiscountPercentage
	from 
	`tbl_inventory` 
	where ItemName like concat('%',arg_Text,'%')
group by ItemName, MRP,SalePrice, Discount, DiscountPercentage;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_BarcodeItemList` */

drop procedure if exists `Sp_BarcodeItemList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_BarcodeItemList`()
BEGIN
select 	inv.ID,inv.GroupCode, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry, 
Description, IncludeGSTPercentage, GSTAmount, AmountExcludeGST, Is1Plus1Discount, 
ImageName, inv.Fontsize ,git.GroupName,inv.CategoryId,cat.CategoryName,inv.WholeSaleQuantity
from  `tbl_inventory` inv
left join  tbl_easygroupitem git on inv.GroupCode = git.GroupCode
left join tbl_inventorycategory cat on inv.CategoryId = cat.CategoryId
where inv.groupcode = 0 
order by inv.ItemName asc;  
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_CheckDuplicateFromLabelPrinting` */

drop procedure if exists `Sp_CheckDuplicateFromLabelPrinting`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_CheckDuplicateFromLabelPrinting`( 
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50)
	)
BEGIN
 DECLARE var_barcodecheck varchar(100);
 DECLARE var_name varchar(100);
 DECLARE var_Masterbarcodecheck varchar(100);
 DECLARE var_mastername varchar(100);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_CheckDuplicateFromLabelPrinting');
	
          
    END;
	
   START TRANSACTION;
	 
         set var_Masterbarcodecheck ='';
         set var_mastername ='';
         set var_barcodecheck ='';
         select barcode into var_barcodecheck from tbl_inventory where barcode= arg_Barcode limit 1;
        
	IF (var_barcodecheck = '')
	then
		
		
		SELECT '0' AS Duplicate,arg_ItemName as ItemName ;
	ELSE
		
		select barcode into var_Masterbarcodecheck from tbl_inventorymasterunit where barcode= arg_Barcode limit 1;
		select ItemName into var_mastername from tbl_inventorymasterunit where barcode= arg_Barcode limit 1;
		IF (var_Masterbarcodecheck = '')
		then
			SELECT '1' AS Duplicate, arg_ItemName as ItemName; -- item duplicate
                else
			SELECT '9' AS Duplicate , var_mastername as ItemName; -- master item duplicate
		end if;
		
		
	END IF;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_CreateGroupAccess` */

drop procedure if exists `Sp_CreateGroupAccess`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_CreateGroupAccess`( 
asg_GroupID int
)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_CreateGroupAccess');
	
    END;
	
   START TRANSACTION;
     if not (select count(groupID) from  tbl_appmodule where groupid=asg_GroupID) then
     
        insert into `tbl_appmoduleaccess` 
	(GroupID, ModuleID, Access)
	select asg_GroupID,ModuleID,0 from tbl_appmoduleaccess where GroupID=1;
    end if;
       select LAST_INSERT_ID() as GroupAccessId;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Dashboard_GetInventoryAddHistory` */

drop procedure if exists `Sp_Dashboard_GetInventoryAddHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Dashboard_GetInventoryAddHistory`(
arg_MonthName NVARCHAR(50)
)
BEGIN
	
    select 	year(now()) `Year`, UserName, AddedTime, ItemName, AddedComment 
	from `tbl_inventoryaddedhistory`  where year(addedtime) = year(now())  and monthname(addedtime) = arg_MonthName 
	and  DiscountComment is null order by id desc;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Dashboard_GetInventoryDicountHistory` */

drop procedure if exists `Sp_Dashboard_GetInventoryDicountHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Dashboard_GetInventoryDicountHistory`(
arg_MonthName NVARCHAR(50)
)
BEGIN
	
    select 	year(now()) `Year`, UserName, AddedTime, ItemName, DiscountComment 
	from `tbl_inventoryaddedhistory`  where year(addedtime) = year(now())  and monthname(addedtime) = arg_MonthName 
	and  AddedComment is null order by id desc;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeleteHRFPrinted` */

drop procedure if exists `Sp_DeleteHRFPrinted`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteHRFPrinted`(                
	 arg_Id int
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteHRFPrinted');
	
          
    END;
	
   START TRANSACTION;
	
	
       
	delete from tbl_hrf_printed_data where ID = arg_Id;
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeleteHRFPrinting` */

drop procedure if exists `Sp_DeleteHRFPrinting`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteHRFPrinting`(                
	 arg_ID int
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteHRFPrinting');
	
          
    END;
	
   START TRANSACTION;
	
	
       
	delete from tbl_hrf_printing_data where id = arg_ID;
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeleteInventory` */

drop procedure if exists `Sp_DeleteInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteInventory`(                
	 arg_Barcode NVARCHAR(50)
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteInventory');
	
          
    END;
	
   START TRANSACTION;
	
	delete from tbl_inventory where Barcode = arg_Barcode;
        delete from tbl_inventory_inprogress where Barcode = arg_Barcode;
	delete from tbl_inventorymasterunit where Barcode = arg_Barcode;
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeleteNumber` */

drop procedure if exists `Sp_DeleteNumber`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteNumber`(                
	 arg_Barcode NVARCHAR(50)
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteNumber');
	
          
    END;
	
   START TRANSACTION;
	
	
	delete from tbl_number where Number = arg_Barcode;
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeletePrintedInventory` */

drop procedure if exists `Sp_DeletePrintedInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeletePrintedInventory`(                
	 arg_Barcode NVARCHAR(50)
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeletePrintedInventory');
	
          
    END;
	
   START TRANSACTION;
	
	
       
	delete from tbl_inventory_printed where Barcode = arg_Barcode;
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeleteQuotationSale` */

drop procedure if exists `Sp_DeleteQuotationSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteQuotationSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ItemName NVARCHAR(100)
	)
BEGIN
  declare varbacode NVARCHAR(100);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteQuotationSale');
	
          
    END;
	
   START TRANSACTION;
	
	delete from tbl_saledetail_quotation where ItemName = arg_ItemName;
       select ItemName into varbacode from tbl_saledetail_quotation where InvoiceNo = arg_InvoiceNumber limit 1;
	if( varbacode is null) 
	then
           
		update  tbl_sale_quotation set IsDeleted = 1 where InvoiceNo = arg_InvoiceNumber;
	end if; 
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_DeleteSale` */

drop procedure if exists `Sp_DeleteSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50)
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteSale');
	
          
    END;
	
   START TRANSACTION;
	
	delete from tbl_saledetail where Barcode = arg_Barcode and InvoiceNo = arg_InvoiceNumber;
       select barcode into varbacode from tbl_saledetail where InvoiceNo = arg_InvoiceNumber limit 1;
	if( varbacode is null) 
	then
           
		update  tbl_sale set IsDeleted = 1 ,InvoiceNo = concat(InvoiceNo,'-reuse') where InvoiceNo = arg_InvoiceNumber;
		insert into tbl_invoicenoreuse(InvoiceNo,UsedStatus) values(arg_InvoiceNumber,0);
	end if; 
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyCounterAndUserSaleRecord` */

drop procedure if exists `Sp_EasyCounterAndUserSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyCounterAndUserSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50),
arg_TransactionType varchar(50)
)
BEGIN
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
              select sum(bycash) as CashPay ,sum(bycard) as CardPay, sum(byupi) as UPIPay,
		(sum(bycash) +sum(bycard)+ sum(byupi)) as CounterSale ,counterid as CounterNumber 
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate
		from
		(
			select sum(cashpayment) as bycash ,sum(cardpayment) as bycard ,sum(upipayment) as byupi ,counterid,userid 
			,ifnull(mc.DisplayName,'') as DisplayName
			from vtbl_sale_gb_cputd 
			left join tbl_moduleaccess mc on UserId = mc.ID
			where  SaleDate between  arg_FDate  and  arg_TDate
			and (UserId = arg_UserID or arg_UserID = 0)
			and (PaymentBy = arg_PaymentType or arg_PaymentType ='')
			and (TransactionType = arg_TransactionType or arg_TransactionType = '')
			group by counterid,userid
		) as T  group by counterid;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyCounterSaleRecord` */

drop procedure if exists `Sp_EasyCounterSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyCounterSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50),
arg_TransactionType varchar(50)
)
BEGIN
	declare varMulti varchar(20);
        set varMulti = 'Multi';
        if(arg_PaymentType = 'Exc' or arg_TransactionType = 'Exc' )
	then
		set arg_TransactionType = 'Exc';
		set arg_PaymentType = 'Exc';
		set varMulti = 'Exc';
	end if;
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
             
		select case when arg_PaymentType = 'Cash' then sum(T.CashPay) 
			    when arg_PaymentType = 'Card' then sum(T.CardPay)
			    when arg_PaymentType = 'UPI' then sum(T.UPIPay)
			    else ifnull(sum(T.PaidAmount),0) end as CounterSale
		, ifnull(T.CounterId,0) as CounterNumber,Sum(ifnull(ExcAmount,0)) as ExcAmount
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate from
		(
			select 	convert(`Date`,date) as PaymentDate,PaymentBy,PaidAmount, `Status` as InvStatus,
			PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType 
			from tbl_sale 
			where isdeleted = 0 
			and `status` <> 'Inprogress' 
			and convert(`Date`,date) between  arg_FDate  and  arg_TDate		
			and CounterId <> 0 and (TransactionType = arg_TransactionType or arg_TransactionType = '')
		) as T 
		where (T.UserId = arg_UserID or arg_UserID = 0)
		and (T.PaymentBy = arg_PaymentType or arg_PaymentType ='')
		or T.PaymentBy = varMulti		
		group by T.CounterId order by T.CounterId asc;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyCounterWiseSaleRecord` */

drop procedure if exists `Sp_EasyCounterWiseSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyCounterWiseSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50),
arg_TransactionType varchar(50)
)
BEGIN
       declare varMulti varchar(20);
        set varMulti = 'Multi';
        if(arg_PaymentType = 'Exc' or arg_TransactionType = 'Exc' )
	then
		set arg_TransactionType = 'Exc';
		set arg_PaymentType = 'Exc';
		set varMulti = 'Exc';
	end if;
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
              select sum(bycash) as CashPay ,sum(bycard) as CardPay, sum(byupi) as UPIPay,
		(sum(bycash) +sum(bycard)+ sum(byupi)) as CounterSale ,counterid as CounterNumber 
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate
		from
		(
			select sum(cashpayment) as bycash ,sum(cardpayment) as bycard ,sum(upipayment) as byupi ,counterid,userid 
			,ifnull(mc.DisplayName,'') as DisplayName,TransactionType
			from vtbl_sale_gb_cputd 
			left join tbl_moduleaccess mc on UserId = mc.ID
			where  SaleDate between  arg_FDate  and  arg_TDate
			and (UserId = arg_UserID or arg_UserID = 0)
			and (PaymentBy = arg_PaymentType or arg_PaymentType ='')
			or PaymentBy = varMulti
			-- and (TransactionType = arg_TransactionType or arg_TransactionType = '')			
			group by counterid,userid,TransactionType
		) as T  where (TransactionType = arg_TransactionType or arg_TransactionType = '')
		group by counterid;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyCustomerRecord` */

drop procedure if exists `Sp_EasyCustomerRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyCustomerRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_FSale int,
arg_TSale int
)
BEGIN
	
             
		select  cm.CustomerId ,cm.CustomerName, cm.CustomerPhone  ,ifnull(count(CustomerMobile),0) as SaleCount,
		ifnull(sum(PaidAmount),0) as TotalSale,ifnull(sum(ExcAmount),0) as TotalExchange
		 from
		(
			select 	`Date` as PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, `Status` as InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType 
			from tbl_sale 
			where isdeleted = 0 
			and `status` <> 'Inprogress' 
			and (
			    (convert(`Date`,date) BETWEEN COALESCE(NULLIF(arg_FDate, ''), `Date`) 
						 AND COALESCE(NULLIF(arg_TDate, ''), `Date`))
			    OR (arg_FDate IS NULL OR arg_FDate = '')
				)
		) as T 	right join tbl_customers cm on cm.CustomerPhone = T.CustomerMobile
		group by CustomerName, CustomerMobile having (arg_FSale = 0 or TotalSale > arg_FSale ) 
		and (arg_TSale =0 or  TotalSale < arg_TSale) ;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyDeleteSale` */

drop procedure if exists `Sp_EasyDeleteSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyDeleteSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ItemId int
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_DeleteSale');
	
          
    END;
	
   START TRANSACTION;
	
	delete from tbl_saledetail where ItemId = arg_ItemId and InvoiceNo = arg_InvoiceNumber;
       select barcode into varbacode from tbl_saledetail where InvoiceNo = arg_InvoiceNumber limit 1;
	if( varbacode is null) 
	then
           
		update  tbl_sale set IsDeleted = 1 ,InvoiceNo = concat(InvoiceNo,'-reuse') where InvoiceNo = arg_InvoiceNumber;
		insert into tbl_invoicenoreuse(InvoiceNo,UsedStatus) values(arg_InvoiceNumber,0);
	end if; 
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExcAndExcSaleRecord` */

drop procedure if exists `Sp_EasyExcAndExcSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExcAndExcSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int
)
BEGIN
	
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
             
		select PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType  
		, ifnull(T.UserId,0) as UserId,mc.DisplayName
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate from
		(
			select 	`Date` as PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, `Status` as InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType 
			from tbl_sale 
			where isdeleted = 0 
			and `status` <> 'Inprogress' 
			and convert(`Date`,date) between  arg_FDate  and  arg_TDate		
			and CounterId <> 0 and TransactionType in('Exc','Exc Sale') 
		) as T inner join tbl_moduleaccess mc on T.UserId = mc.ID
		where (UserId = arg_UserID or arg_UserID = 0)		
		order by PaymentDate desc;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeDeleteSale` */

drop procedure if exists `Sp_EasyExchangeDeleteSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeDeleteSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ItemId int
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyExchangeDeleteSale');
	
          
    END;
	
   START TRANSACTION;
	
	delete from tbl_saledetail_exchange where ItemId = arg_ItemId and InvoiceNo = arg_InvoiceNumber;
       select barcode into varbacode from tbl_saledetail_exchange where InvoiceNo = arg_InvoiceNumber limit 1;
	if( varbacode is null) 
	then
           
		update  tbl_sale_exchange set IsDeleted = 1 where InvoiceNo = arg_InvoiceNumber;
	end if; 
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeGetInprogressInvoiceNoList` */

drop procedure if exists `Sp_EasyExchangeGetInprogressInvoiceNoList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeGetInprogressInvoiceNoList`(
)
BEGIN
	
	select 	distinct sa.invoiceNo
	from tbl_saledetail_exchange sd
	inner join tbl_sale_exchange sa on sd.InvoiceNo = sa.InvoiceNo 
	where sa.IsDeleted = 0 and sa.Status = 'Inprogress';
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeGetInprogressSaleOneByOne` */

drop procedure if exists `Sp_EasyExchangeGetInprogressSaleOneByOne`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeGetInprogressSaleOneByOne`(
arg_InvoiceNo NVARCHAR(50)
)
BEGIN
	-- declare varinvoice NVARCHAR(50);
	-- select InvoiceNo into varinvoice from tbl_sale where Status = 'Inprogress' and IsDeleted = 0 limit 1;
	select  sd.invoiceNo, sd.Barcode, sd.ItemName, sd.MRP, sd.BuyPrice, sd.SalePrice, sd.Discount, sd.DiscountPercentage, sd.Quantity, sd.Amount,
	sa.CustomerName, sa.Date, 
	CASE ifnull(mi.barcode,'')
	      WHEN '' THEN false	     
	      ELSE true
	  END as 'IsMasterItem' ,GroupCode, IncludeGSTPercentage, GSTAmount, AmountExcludeGST, Is1Plus1Discount,ImageName, Fontsize,sd.ItemId
	from tbl_saledetail_exchange sd
	inner join tbl_sale_exchange sa on sd.InvoiceNo = sa.InvoiceNo 
	left join tbl_inventorymasterunit mi on sd.barcode = mi.barcode
	where sa.IsDeleted = 0 and sa.Status = 'Inprogress' and sa.InvoiceNo = arg_InvoiceNo ;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeGetSubsetItemList` */

drop procedure if exists `Sp_EasyExchangeGetSubsetItemList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeGetSubsetItemList`(
arg_Invoice varchar(25)
)
BEGIN
	select 	inv.Id as ItemId,inv.GroupCode, inv.Barcode, inv.ItemName, inv.MRP, inv.BuyPrice, inv.SalePrice, inv.Discount, 
	inv.DiscountPercentage, inv.Quantity,'' as Description, inv.IncludeGSTPercentage, inv.GSTAmount, inv.AmountExcludeGST, inv.Is1Plus1Discount, 
	inv.ImageName, inv.Fontsize ,'' as GroupName,inv.SalePrice as Amount
	from  `tbl_saledetail` sd
	inner join tbl_inventory inv on sd.ItemId = inv.Id
	where sd.InvoiceNo =  arg_Invoice
	order by inv.id asc;  
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeInsertSale` */

drop procedure if exists `Sp_EasyExchangeInsertSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeInsertSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	arg_GSTAmount decimal,
	arg_AmountExcludeGST decimal,
	arg_ItemId int,
	arg_IncludeGSTPercentage int,
	arg_Is1Plus1Discount tinyint,
	arg_ImageName varchar(50),
	arg_Fontsize varchar(3),
	arg_GroupCode int,
	arg_CategoryId int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyExchangeInsertSale');
	
           
    END;
	
   START TRANSACTION;
	
      insert into tbl_saledetail_exchange
	(ItemId,InvoiceNo,GroupCode, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount,IncludeGSTPercentage,GSTAmount,AmountExcludeGST
	,Is1Plus1Discount,ImageName,Fontsize,CategoryId)
	values
	(arg_ItemId,arg_InvoiceNumber,arg_GroupCode, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount,arg_IncludeGSTPercentage,arg_GSTAmount,
	arg_AmountExcludeGST,arg_Is1Plus1Discount,arg_ImageName,arg_Fontsize,arg_CategoryId);
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeInsertSaleCreateInvoice` */

drop procedure if exists `Sp_EasyExchangeInsertSaleCreateInvoice`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeInsertSaleCreateInvoice`(  
	 arg_GroupCode int,
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	arg_GSTAmount decimal,
	arg_AmountExcludeGST decimal,
	arg_ItemId int,
	arg_IncludeGSTPercentage int,
	arg_Is1Plus1Discount tinyint,
	arg_ImageName varchar(50),
	arg_Fontsize varchar(3),
	arg_CategoryId int
	)
BEGIN
  DECLARE VAR_INVOICENO NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyExchangeInsertSaleCreateInvoice');
	
          
    END;
	
   START TRANSACTION;
	 
        
       insert into tbl_invoicenogeneration_exchange(Prifix) values('EXC');
	select CONCAT('EXC',max(InvoiceNo)) INTO VAR_INVOICENO from tbl_invoicenogeneration_exchange;
       
	insert into  tbl_sale_exchange 
	(InvoiceNo, ExtraDiscount, CustomerName, PaymentBy, SGST, CGST, 
	DueAmount)
	values
	(VAR_INVOICENO, 0, VAR_INVOICENO, 'Cash', 0, 0,	0);
      insert into tbl_saledetail_exchange
	(ItemId,InvoiceNo, GroupCode,Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount,IncludeGSTPercentage,GSTAmount,AmountExcludeGST
	,Is1Plus1Discount,ImageName,Fontsize,CategoryId)
	values
	(arg_ItemId,VAR_INVOICENO, arg_GroupCode,arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount,arg_IncludeGSTPercentage,arg_GSTAmount,
	arg_AmountExcludeGST,arg_Is1Plus1Discount,arg_ImageName,arg_Fontsize,arg_CategoryId);
       Select VAR_INVOICENO as InvoiceNumber;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeUpdateSale` */

drop procedure if exists `Sp_EasyExchangeUpdateSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeUpdateSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	arg_GSTAmount decimal,
	arg_AmountExcludeGST decimal,
	arg_ItemId int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyExchangeUpdateSale');
	
           
    END;
	
   START TRANSACTION;
	
      update tbl_saledetail_exchange set 
	Discount = arg_Discount, 
	Quantity =arg_Quantity, Amount = arg_Amount,GSTAmount = arg_GSTAmount ,AmountExcludeGST = arg_AmountExcludeGST 
       where ItemId = arg_ItemId and InvoiceNo = arg_InvoiceNumber;
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyExchangeUpdateSaleDetail` */

drop procedure if exists `Sp_EasyExchangeUpdateSaleDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyExchangeUpdateSaleDetail`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ExtraDiscount int,
	 arg_CustomerName NVARCHAR(50),
         arg_PaymentBy NVARCHAR(20),	 
	 arg_GST int, 
	 arg_DueAmount int,
	 arg_Status NVARCHAR(50),
	 arg_PaidAmount int,
	 arg_CustomerMobile NVARCHAR(50),
	 arg_CustomerGST NVARCHAR(50),
         arg_LoginUser  NVARCHAR(50)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyExchangeUpdateSaleDetail');
	
          
    END;
	
   START TRANSACTION;
	
      update tbl_sale_exchange set 
	ExtraDiscount = arg_ExtraDiscount, 
	CustomerName = arg_CustomerName, PaymentBy = arg_PaymentBy,
	GST = arg_GST, DueAmount = arg_DueAmount,`Status` = arg_Status,
	PaidAmount = arg_PaidAmount,CustomerMobile= arg_CustomerMobile, CustomerGST = arg_CustomerGST
        where InvoiceNo = arg_InvoiceNumber;
       	
       
	
	insert into `tbl_salehistory` 
	(LoginUser, Customer, TotalBill, PaidAmount, DueAmount, DiscountOnBill, 
	InvoiceNumner, Date)
	values
	(arg_LoginUser, arg_CustomerName, (arg_ExtraDiscount+arg_DueAmount+arg_PaidAmount), arg_PaidAmount, arg_DueAmount, arg_ExtraDiscount, 
	arg_InvoiceNumber, now());
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyGetCategoryList` */

drop procedure if exists `Sp_EasyGetCategoryList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyGetCategoryList`(
)
BEGIN
        DECLARE paidamount int;
	
	select 	CategoryId, CategoryName 
	from `tbl_inventorycategory` 
	order by CategoryName asc;	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyGetGroupItemList` */

drop procedure if exists `Sp_EasyGetGroupItemList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyGetGroupItemList`()
BEGIN
	select 	gi.ID, gi.GroupCode, gi.GroupName, gi.ImageURl, gi.FontSize,ifnull(inv.SalePrice,0) as SalePrice
	,ifnull(inv.Is1Plus1Discount,0) as Is1Plus1Discount
	from `tbl_easygroupitem` gi
	left join tbl_inventory inv on gi.GroupCode = inv.GroupCode and inv.IsFirstItem=1
	where gi.groupcode <> 0
	order by gi.GroupName; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyGetSaleByInvoiceNo` */

drop procedure if exists `Sp_EasyGetSaleByInvoiceNo`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyGetSaleByInvoiceNo`(
arg_InvoiceNo NVARCHAR(50)
)
BEGIN
	
	select   CategoryId, InvoiceNo, GroupCode, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
	Quantity, WholeSaleQuantity, Amount, Remark, IncludeGSTPercentage, GSTAmount, AmountExcludeGST
	from tbl_saledetail 	
	where  InvoiceNo = arg_InvoiceNo ;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyGetSubsetItemList` */

drop procedure if exists `Sp_EasyGetSubsetItemList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyGetSubsetItemList`()
BEGIN
	select 	inv.ID,inv.GroupCode, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry, 
	Description, IncludeGSTPercentage, GSTAmount, AmountExcludeGST, Is1Plus1Discount, 
	ImageName, inv.Fontsize ,git.GroupName,inv.CategoryId,cat.CategoryName,inv.WholeSaleQuantity
	from  `tbl_inventory` inv
	inner join  tbl_easygroupitem git on inv.GroupCode = git.GroupCode
        inner join tbl_inventorycategory cat on inv.CategoryId = cat.CategoryId
	where inv.groupcode <> 0 
	order by inv.ItemName asc;  
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyInsertGroup` */

drop procedure if exists `Sp_EasyInsertGroup`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyInsertGroup`(  
	 arg_GroupItemCode int,	
	 arg_GroupName NVARCHAR(50),
         arg_ImageName NVARCHAR(50),
         arg_LoginUser NVARCHAR(100)
	)
BEGIN
  DECLARE VAR_GroupCode int;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyInsertGroup');
	
          
    END;
	
   START TRANSACTION;
	 
               
	select max(ID) INTO VAR_GroupCode from tbl_easygroupitem;
       
	insert into `tbl_easygroupitem` 
	(GroupCode, GroupName, ImageURL)
	values
	(VAR_GroupCode+1, arg_GroupName, arg_ImageName);
      
         select LAST_INSERT_ID() as GroupId; 
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyInsertGroupAndItem` */

drop procedure if exists `Sp_EasyInsertGroupAndItem`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyInsertGroupAndItem`(  
	 arg_GroupItemCode int,	
	 arg_GroupName NVARCHAR(50),
         arg_ImageName NVARCHAR(50),
         arg_LoginUser NVARCHAR(100),
	 arg_CategoryId int,
         arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int, 
	 arg_SalePrice int,
	 arg_Quantity int,
	 arg_WholeSaleQuantity int,
	 arg_IncludeGSTPercentage int,
	 arg_GSTAmount decimal(10,2),
	 arg_AmountExcludeGST decimal(10,2),
	 arg_Is1Plus1Discount int,
	 arg_IsFirstItem int
	 
	)
BEGIN
  DECLARE VAR_GroupCode int;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyInsertGroupAndItem');
	
          
    END;
	
   START TRANSACTION;
	 
               
	select max(ID) INTO VAR_GroupCode from tbl_easygroupitem;
       
	insert into `tbl_easygroupitem` 
	(GroupCode, GroupName, ImageURL)
	values
	(VAR_GroupCode+1, arg_GroupName, arg_ImageName);
	insert into  `tbl_inventory` 
	(GroupCode, CategoryId, Barcode, ItemName, MRP,  
	SalePrice,  Quantity, WholeSaleQuantity, 
	 IncludeGSTPercentage, GSTAmount, AmountExcludeGST, 
	Is1Plus1Discount, ImageName,IsFirstItem)
	values
	(VAR_GroupCode+1, arg_CategoryId, arg_Barcode, arg_ItemName,arg_MRP,  
	arg_SalePrice,  arg_Quantity, arg_WholeSaleQuantity, 
	 arg_IncludeGSTPercentage, arg_GSTAmount, arg_AmountExcludeGST, 
	arg_Is1Plus1Discount, arg_ImageName,arg_IsFirstItem);
      
         select VAR_GroupCode+1 as GroupId; 
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyInsertItem` */

drop procedure if exists `Sp_EasyInsertItem`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyInsertItem`(  
	 arg_GroupItemCode int,
         arg_ImageName NVARCHAR(50),
         arg_LoginUser NVARCHAR(100),
	 arg_CategoryId int,
         arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int, 
	 arg_SalePrice int,
	 arg_Quantity int,
	 arg_WholeSaleQuantity int,
	 arg_IncludeGSTPercentage int,
	 arg_GSTAmount decimal(10,2),
	 arg_AmountExcludeGST decimal(10,2),
	 arg_Is1Plus1Discount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyInsertItem');
	
          
    END;
	
   START TRANSACTION;
	
	insert into  `tbl_inventory` 
	(GroupCode, CategoryId, Barcode, ItemName, MRP,  
	SalePrice,  Quantity, WholeSaleQuantity, 
	 IncludeGSTPercentage, GSTAmount, AmountExcludeGST, 
	Is1Plus1Discount, ImageName)
	values
	(arg_GroupItemCode, arg_CategoryId, arg_Barcode, arg_ItemName,arg_MRP,  
	arg_SalePrice,  arg_Quantity, arg_WholeSaleQuantity, 
	 arg_IncludeGSTPercentage, arg_GSTAmount, arg_AmountExcludeGST, 
	arg_Is1Plus1Discount, arg_ImageName);
      
         select arg_GroupItemCode as GroupId; 
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyInsertSale` */

drop procedure if exists `Sp_EasyInsertSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyInsertSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	arg_GSTAmount decimal(10,2),
	arg_AmountExcludeGST decimal(10,2),
	arg_ItemId int,
	arg_IncludeGSTPercentage int,
	arg_Is1Plus1Discount tinyint,
	arg_ImageName varchar(50),
	arg_Fontsize varchar(3),
	arg_GroupCode int,
	arg_Remark varchar(50),
	arg_ExcAmount int,
	arg_CategoryId int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertSale');
	
           
    END;
	
   START TRANSACTION;
	
      insert into tbl_saledetail
	(ItemId,InvoiceNo,GroupCode, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount,IncludeGSTPercentage,GSTAmount,AmountExcludeGST
	,Is1Plus1Discount,ImageName,Fontsize,Remark,ExchangeAmount,CategoryId)
	values
	(arg_ItemId,arg_InvoiceNumber,arg_GroupCode, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount,arg_IncludeGSTPercentage,arg_GSTAmount,
	arg_AmountExcludeGST,arg_Is1Plus1Discount,arg_ImageName,arg_Fontsize,arg_Remark,arg_ExcAmount,arg_CategoryId);
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyInsertSaleCreateInvoice` */

drop procedure if exists `Sp_EasyInsertSaleCreateInvoice`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyInsertSaleCreateInvoice`(  
	 arg_GroupCode int,
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	arg_GSTAmount decimal(10,2),
	arg_AmountExcludeGST decimal(10,2),
	arg_ItemId int,
	arg_IncludeGSTPercentage int,
	arg_Is1Plus1Discount tinyint,
	arg_ImageName varchar(50),
	arg_Fontsize varchar(3),
	arg_Remark varchar(50),
	arg_ExcAmount int,
	arg_CategoryId int,
	arg_CounterNo int
	)
BEGIN
  DECLARE VAR_INVOICENO NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyInsertSaleCreateInvoice');
	
          
    END;
	
   START TRANSACTION;
	 select InvoiceNo INTO VAR_INVOICENO from tbl_invoicenoreuse where usedstatus=0 limit 1 ;
        if( VAR_INVOICENO is null)
	then
		insert into tbl_invoicenogeneration(Prifix) values('VLU');
		select CONCAT('VLU',max(InvoiceNo)) INTO VAR_INVOICENO from tbl_invoicenogeneration;
		
	else
		update tbl_invoicenoreuse set usedstatus = 1 where InvoiceNo = VAR_INVOICENO;
	end if;
      
       
	insert into  tbl_sale 
	(InvoiceNo, ExtraDiscount, CustomerName, PaymentBy, SGST, CGST, 
	DueAmount,CounterId)
	values
	(VAR_INVOICENO, 0, VAR_INVOICENO, 'Cash', 0, 0,	0,arg_CounterNo);
      insert into tbl_saledetail
	(ItemId,InvoiceNo, GroupCode,Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount,IncludeGSTPercentage,GSTAmount,AmountExcludeGST
	,Is1Plus1Discount,ImageName,Fontsize,Remark,ExchangeAmount,CategoryId)
	values
	(arg_ItemId,VAR_INVOICENO, arg_GroupCode,arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount,arg_IncludeGSTPercentage,arg_GSTAmount,
	arg_AmountExcludeGST,arg_Is1Plus1Discount,arg_ImageName,arg_Fontsize,arg_Remark,arg_ExcAmount,arg_CategoryId);
       Select VAR_INVOICENO as InvoiceNumber;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyItemWiseExchangeRecord` */

drop procedure if exists `Sp_EasyItemWiseExchangeRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyItemWiseExchangeRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_CategoryId int
)
BEGIN
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
        select sum(Amount) as TotalSale,sum(TotalQuantity) as TotalQuantity,ItemName,CategoryName,CategoryId ,sum(ExcAmount) as ExcAmount  
	from 
	(
	select sd.Amount,(sd.Quantity*sd.WholeSaleQuantity) as TotalQuantity,ItemName,inv.CategoryName,sd.CategoryId ,
         sd.ExchangeAmount as ExcAmount
	from tbl_saledetail sd 
	inner join tbl_sale sa on sd.InvoiceNo=sa.invoiceNo and sa.IsDeleted=0
	left join tbl_inventorycategory inv on sd.CategoryId = inv.CategoryId
	where convert(sa.`Date`,date) between  arg_FDate  and  arg_TDate 
	 and ItemId < 0
	 and (sd.CategoryId = arg_CategoryId or arg_CategoryId = 0)
	) as T group by ItemName,CategoryId
		order by TotalQuantity desc;
		
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyItemWiseSaleRecord` */

drop procedure if exists `Sp_EasyItemWiseSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyItemWiseSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_CategoryId int
)
BEGIN
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
        select sum(Amount) as TotalSale,sum(TotalQuantity) as TotalQuantity,ItemName,CategoryName,CategoryId ,sum(ExcAmount) as ExcAmount  
	from 
	(
	select sd.Amount,(sd.Quantity*sd.WholeSaleQuantity) as TotalQuantity,ItemName,inv.CategoryName,sd.CategoryId ,
        case when sa.TransactionType ='Exc Sale' then sa.ExcAmount else 0 end as ExcAmount
	from tbl_saledetail sd 
	inner join tbl_sale sa on sd.InvoiceNo=sa.invoiceNo and sa.IsDeleted=0
	left join tbl_inventorycategory inv on sd.CategoryId = inv.CategoryId
	where convert(sa.`Date`,date) between  arg_FDate  and  arg_TDate 
	 and ItemId >= 0
	 and (sd.CategoryId = arg_CategoryId or arg_CategoryId = 0)
	) as T group by ItemName,CategoryId
		order by TotalQuantity desc;
		
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasySaleAddExhnageSubsetItems` */

drop procedure if exists `Sp_EasySaleAddExhnageSubsetItems`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasySaleAddExhnageSubsetItems`(
arg_Invoice varchar(25)
)
BEGIN
	select 	(-1 * inv.ItemId) as ItemId,inv.GroupCode, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity,  
	'' as Description, IncludeGSTPercentage, GSTAmount, AmountExcludeGST, Is1Plus1Discount, 
	ImageName, inv.Fontsize ,'' as GroupName,0 as Amount,'Exchange' as Remark,inv.Amount as ExcAmount,CategoryId
	from  `tbl_saledetail_exchange` inv	
	where inv.InvoiceNo =  arg_Invoice
	order by id asc;  
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasySaleAndExcSaleRecord` */

drop procedure if exists `Sp_EasySaleAndExcSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasySaleAndExcSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50)
)
BEGIN
	
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
             
		select PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType  
		, ifnull(T.UserId,0) as UserId,mc.DisplayName
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate from
		(
			select 	`Date` as PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, `Status` as InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType 
			from tbl_sale 
			where isdeleted = 0 
			and `status` <> 'Inprogress' 
			and convert(`Date`,date) between  arg_FDate  and  arg_TDate		
			and CounterId <> 0 and TransactionType in('Sale','Exc Sale') 
		) as T inner join tbl_moduleaccess mc on T.UserId = mc.ID
		where (UserId = arg_UserID or arg_UserID = 0)
		and (PaymentBy = arg_PaymentType or arg_PaymentType ='')
		or PaymentBy = 'Multi' 
		order by PaymentDate desc;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasySaleRecord` */

drop procedure if exists `Sp_EasySaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasySaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50),
arg_TransactionType varchar(50)
)
BEGIN
	declare varMulti varchar(20);
        set varMulti = 'Multi';
        if(arg_PaymentType = 'Exc' or arg_TransactionType = 'Exc' )
	then
		set arg_TransactionType = 'Exc';
		set arg_PaymentType = 'Exc';
		set varMulti = 'Exc';
	end if;
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
             
		select PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType  
		, ifnull(T.UserId,0) as UserId,mc.DisplayName
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate from
		(
			select 	`Date` as PaymentDate,InvoiceNo, ExtraDiscount, CustomerName, CustomerMobile
			, CustomerGST, PaymentBy, GST, SGST, CGST, 
			PaidAmount, DueAmount, `Status` as InvStatus, PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType 
			from tbl_sale 
			where isdeleted = 0 
			and `status` <> 'Inprogress' 
			and convert(`Date`,date) between  arg_FDate  and  arg_TDate		
			and CounterId <> 0 and (TransactionType = arg_TransactionType or arg_TransactionType = '') 
		) as T inner join tbl_moduleaccess mc on T.UserId = mc.ID
		where (UserId = arg_UserID or arg_UserID = 0)
		and (PaymentBy = arg_PaymentType or arg_PaymentType ='')
		or PaymentBy = varMulti 
		order by InvoiceNo desc;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyUpdateExchangeNumber` */

drop procedure if exists `Sp_EasyUpdateExchangeNumber`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyUpdateExchangeNumber`(
arg_InvoiceNo VARCHAR(50),
arg_ExcRef VARCHAR(50)
)
BEGIN
	declare varSaleID int;
        select ID into varSaleID from tbl_sale where  InvoiceNo = arg_InvoiceNo limit 1;
	update tbl_sale set ExcRef  = arg_ExcRef   where  ID = varSaleID;
	
	select ifnull(varSaleID,0) as SaleId;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyUpdateItem` */

drop procedure if exists `Sp_EasyUpdateItem`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyUpdateItem`(  
         arg_ItemId int,
	 arg_GroupItemCode int,
         arg_ImageName NVARCHAR(50),
         arg_LoginUser NVARCHAR(100),
	 arg_CategoryId int,
         arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int, 
	 arg_SalePrice int,
	 arg_Quantity int,
	 arg_WholeSaleQuantity int,
	 arg_IncludeGSTPercentage int,
	 arg_GSTAmount decimal(10,2),
	 arg_AmountExcludeGST decimal(10,2),
	 arg_Is1Plus1Discount int,
	 arg_IsMain int
	 
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyUpdateItem');
	
          
    END;
	
   START TRANSACTION;
	
	if( arg_IsMain = 1 )
	then
		update tbl_easygroupitem set ImageURL = arg_ImageName where GroupCode = arg_GroupItemCode;
	end if;
	update tbl_inventory set  CategoryId = arg_CategoryId, Barcode = arg_Barcode, ItemName = arg_ItemName
	,MRP = arg_MRP, SalePrice = arg_SalePrice, WholeSaleQuantity = arg_WholeSaleQuantity, 
	IncludeGSTPercentage = arg_IncludeGSTPercentage, GSTAmount = arg_GSTAmount, AmountExcludeGST = arg_AmountExcludeGST
	,ImageName = arg_ImageName where Id = arg_ItemId and GroupCode = arg_GroupItemCode;
      
         select arg_GroupItemCode as GroupId; 
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyUpdateSale` */

drop procedure if exists `Sp_EasyUpdateSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyUpdateSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	arg_GSTAmount decimal,
	arg_AmountExcludeGST decimal,
	arg_ItemId int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyUpdateSale');
	
           
    END;
	
   START TRANSACTION;
	
      update tbl_saledetail set 
	Discount = arg_Discount, 
	Quantity =arg_Quantity, Amount = arg_Amount,GSTAmount = arg_GSTAmount ,AmountExcludeGST = arg_AmountExcludeGST 
        where ItemId = arg_ItemId and InvoiceNo = arg_InvoiceNumber;
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyUpdateSaleDetail` */

drop procedure if exists `Sp_EasyUpdateSaleDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyUpdateSaleDetail`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ExtraDiscount int,
	 arg_CustomerName NVARCHAR(50),
         arg_PaymentBy NVARCHAR(20),	 
	 arg_GST decimal(10,2), 
	 arg_DueAmount int,
	 arg_Status NVARCHAR(50),
	 arg_PaidAmount int,
	 arg_CustomerMobile NVARCHAR(50),
	 arg_CustomerGST NVARCHAR(50),
         arg_LoginUser  NVARCHAR(50),
	 arg_CounterId int,
	 arg_UserId int,
         arg_ExcRef varchar(50),
	 arg_ExcAmount int,
	 arg_CashPay int,
	 arg_CardPay int,
	 arg_UPIPay int,
	 arg_TransType varchar(50)
	)
BEGIN
  
  declare varSGST decimal(10,3);
  declare varnum varchar(20);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_EasyUpdateSaleDetail');
	
          
    END;
	
   START TRANSACTION;
	
    
  
       set varSGST = arg_GST / 2;
      update tbl_sale set 
	ExtraDiscount = arg_ExtraDiscount, 
	CustomerName = arg_CustomerName, PaymentBy = arg_PaymentBy,
	GST = arg_GST, DueAmount = arg_DueAmount,`Status` = arg_Status,
	PaidAmount = arg_PaidAmount,CustomerMobile= arg_CustomerMobile, CustomerGST = arg_CustomerGST,
	 CounterId = arg_CounterId,UserId=arg_UserId, ExcRef=arg_ExcRef, ExcAmount=arg_ExcAmount, 
	CashPay=arg_CashPay, CardPay=arg_CardPay ,UPIPay=arg_UPIPay, TransactionType=arg_TransType, IsDeleted=0,
	SGST = varSGST, CGST = varSGST
        where InvoiceNo = arg_InvoiceNumber;
       	
       
	
	insert into `tbl_salehistory` 
	(LoginUser, Customer, TotalBill, PaidAmount, DueAmount, DiscountOnBill, 
	InvoiceNumner, Date)
	values
	(arg_LoginUser, arg_CustomerName, (arg_ExtraDiscount+arg_DueAmount+arg_PaidAmount), arg_PaidAmount, arg_DueAmount, arg_ExtraDiscount, 
	arg_InvoiceNumber, now());
	select CustomerPhone into varnum from tbl_customers where CustomerPhone = arg_CustomerMobile limit 1;
        if(varnum is null)
	then
		insert into tbl_customers(CustomerName,CustomerPhone) values(arg_CustomerName,arg_CustomerMobile);
	end if;
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyUserSaleRecord` */

drop procedure if exists `Sp_EasyUserSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyUserSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50),
arg_TransactionType varchar(50)
)
BEGIN
	declare varMulti varchar(20);
        set varMulti = 'Multi';
        if(arg_PaymentType = 'Exc' or arg_TransactionType = 'Exc' )
	then
		set arg_TransactionType = 'Exc';
		set arg_PaymentType = 'Exc';
		set varMulti = 'Exc';
	end if;
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
             
		select case when arg_PaymentType = 'Cash' then sum(T.CashPay) 
			    when arg_PaymentType = 'Card' then sum(T.CardPay)
			    when arg_PaymentType = 'UPI' then sum(T.UPIPay)
			    else ifnull(sum(T.PaidAmount),0) end as CounterSale
		, ifnull(T.UserId,0) as UserId,mc.DisplayName,Sum(ifnull(ExcAmount,0)) as ExcAmount
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate from
		(
			select 	convert(`Date`,date) as PaymentDate,PaymentBy,PaidAmount, `Status` as InvStatus,
			PayDate, IsDeleted, CounterId, UserId, ExcRef, ExcAmount, CashPay, 
			CardPay, UPIPay, TransactionType 
			from tbl_sale 
			where isdeleted = 0 
			and `status` <> 'Inprogress' 
			and convert(`Date`,date) between  arg_FDate  and  arg_TDate		
			and CounterId <> 0 and (TransactionType = arg_TransactionType or arg_TransactionType = '') 
		) as T inner join tbl_moduleaccess mc on T.UserId = mc.ID
		where (UserId = arg_UserID or arg_UserID = 0)
		and (PaymentBy = arg_PaymentType or arg_PaymentType ='')
		or PaymentBy = varMulti 
		group by UserId order by UserId asc;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_EasyUserWiseSaleRecord` */

drop procedure if exists `Sp_EasyUserWiseSaleRecord`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_EasyUserWiseSaleRecord`(
arg_FDate varchar(50),
arg_TDate varchar(50),
arg_UserID int,
arg_PaymentType varchar(50),
arg_TransactionType varchar(50)
)
BEGIN
       declare varMulti varchar(20);
        set varMulti = 'Multi';
        if(arg_PaymentType = 'Exc' or arg_TransactionType = 'Exc' )
	then
		set arg_TransactionType = 'Exc';
		set arg_PaymentType = 'Exc';
		set varMulti = 'Exc';
	end if;
	
	if (arg_FDate <> '' and  arg_TDate <> '') 
	then
              select sum(bycash) as CashPay ,sum(bycard) as CardPay, sum(byupi) as UPIPay,
		(sum(bycash) +sum(bycard)+ sum(byupi)) as CounterSale ,userid  
		,convert(arg_FDate,date) as FDate
		,convert(arg_TDate,date) as TDate
		from
		(
			select sum(cashpayment) as bycash ,sum(cardpayment) as bycard ,sum(upipayment) as byupi ,counterid,userid 
			,ifnull(mc.DisplayName,'') as DisplayName,TransactionType
			from vtbl_sale_gb_cputd 
			left join tbl_moduleaccess mc on UserId = mc.ID
			where  SaleDate between  arg_FDate  and  arg_TDate
			and (UserId = arg_UserID or arg_UserID = 0)
			and (PaymentBy = arg_PaymentType or arg_PaymentType ='')
			or PaymentBy = varMulti
			-- and (TransactionType = arg_TransactionType or arg_TransactionType = '')			
			group by counterid,userid,TransactionType
		) as T  where (TransactionType = arg_TransactionType or arg_TransactionType = '')
		group by userid;
	end if;
	
					
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GenRandom` */

drop procedure if exists `Sp_GenRandom`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GenRandom`()
BEGIN
	
declare var_counter int;
	SET var_counter = 100000;
	WHILE(var_counter <= 199991)
	DO   
		insert into tbl_number(Number,PreFix) values(var_counter,'');	
		
		SET var_counter = var_counter + 1;
	END WHILE;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetAppModuleList` */

drop procedure if exists `Sp_GetAppModuleList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetAppModuleList`( 
         arg_GroupId int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_GetAppModuleList');
	
          
    END;
	
   START TRANSACTION;
	
	select am.GroupID ,am.ModuleID, GroupName,ModuleName,Access ,Sequence,Tcolor,Bcolor,MImage
	from vtbl_module_access am
	inner join tbl_usergroup ug on am.groupid= ug.groupid 
	where am.GroupID = arg_GroupId  and am.IsActive = 1
	order by Sequence asc;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetAppSetup` */

drop procedure if exists `Sp_GetAppSetup`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetAppSetup`()
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_GetAppSetup');
	
          
    END;
	
   START TRANSACTION;
	
     select 	ID, VariableKey, VariableDesc, VariableValue 
	from `tbl_appsetup`  ;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetBankDetail` */

drop procedure if exists `Sp_GetBankDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetBankDetail`(
)
BEGIN
     select BankName, AccountNo, IFSC, AccHolderName, BankAddress,UPIID 
	from 
	`tbl_bankdetail` limit 1;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetCustomer` */

drop procedure if exists `Sp_GetCustomer`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetCustomer`(
arg_Phone varchar(15)
)
BEGIN
    
	select 	CustomerId, CustomerName, CustomerPhone 
	from `tbl_customers` where CustomerPhone = arg_Phone limit 1;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetDealerNameList` */

drop procedure if exists `Sp_GetDealerNameList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetDealerNameList`(
)
BEGIN
        DECLARE paidamount int;
	
	select dl.ID, Name, Mobile, Address, PGSTNo ,sum(od.BalanceAmount)  as Balance
	from tbl_dealer dl 
	 inner join tbl_order od on od.DealerId = dl.ID	 
	group by dl.ID, Name, Mobile, Address, PGSTNo
	order by Name asc;	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetExchangeItemByBarcode` */

drop procedure if exists `Sp_GetExchangeItemByBarcode`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetExchangeItemByBarcode`(
arg_Barcode NVARCHAR(50)
)
BEGIN
	select 	InvoiceNo, Barcode,'' as ExBarcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity,Amount
	from 
	tbl_saledetail  where Barcode = arg_Barcode ;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetHRFInstructionList` */

drop procedure if exists `Sp_GetHRFInstructionList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetHRFInstructionList`(
)
BEGIN
       select 	HRF_Code, HRF_Name ,'' as HRF_Value,Show_Hide
	from 
	`tbl_hrf_instruction` ;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetHRFPrintingDataImportedList` */

drop procedure if exists `Sp_GetHRFPrintingDataImportedList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetHRFPrintingDataImportedList`(
)
BEGIN
	
	select ID,HRF_1,HRF_2,HRF_3,HRF_4, HRF_5, HRF_6, HRF_7, HRF_8,HRF_9,HRF_10,Print_Quantity  
	from tbl_hrf_printing_data where barcode <> null order by id desc;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetHRFPrintingDataList` */

drop procedure if exists `Sp_GetHRFPrintingDataList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetHRFPrintingDataList`(
)
BEGIN
	
	select ID,HRF_1,HRF_2,HRF_3,HRF_4, HRF_5, HRF_6, HRF_7, HRF_8,HRF_9,HRF_10, HRF_11, HRF_12, HRF_13, HRF_14, HRF_15,Print_Quantity  
	from tbl_hrf_printing_data where barcode ='' order by id desc;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetHRFPrintingDataListHead` */

drop procedure if exists `Sp_GetHRFPrintingDataListHead`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetHRFPrintingDataListHead`(
)
BEGIN
	SELECT 9999 as ID, 
	cast(GROUP_CONCAT( HRF_1 ) as char(50)) as HRF_1 ,
	cast(GROUP_CONCAT( HRF_2 ) as char(50)) as HRF_2 ,
	cast(GROUP_CONCAT( HRF_3 ) as char(50)) as HRF_3 ,
	cast(GROUP_CONCAT( HRF_4 ) as char(50)) as HRF_4 ,
	cast(GROUP_CONCAT( HRF_5 ) as char(50)) as HRF_5 ,
	cast(GROUP_CONCAT( HRF_6 ) as char(50)) as HRF_6 ,
	cast(GROUP_CONCAT( HRF_7 ) as char(50)) as HRF_7 ,
	cast(GROUP_CONCAT( HRF_8 ) as char(50)) as HRF_8 ,
	cast(GROUP_CONCAT( HRF_9 ) as char(50)) as HRF_9 ,
	cast(GROUP_CONCAT( HRF_10 ) as char(50)) as HRF_10,0 as Print_Quantity 
	FROM vtbl_hrf_instructionexten;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetHRFPrintingImportDataList` */

drop procedure if exists `Sp_GetHRFPrintingImportDataList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetHRFPrintingImportDataList`(
)
BEGIN
	
	select ID,Barcode,HRF_1,HRF_2,HRF_3,HRF_4, HRF_5, HRF_6, HRF_7, HRF_8,HRF_9,HRF_10,Print_Quantity  
	from tbl_hrf_printing_data where barcode <> '' order by id desc;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressInventory` */

drop procedure if exists `Sp_GetInprogressInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressInventory`()
BEGIN
	select 	Id, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry 
	from 
	tbl_inventory_inprogress; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressInventoryMaster` */

drop procedure if exists `Sp_GetInprogressInventoryMaster`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressInventoryMaster`()
BEGIN
	select 	iv.Id, iv.Barcode, iv.ItemName, iv.MRP, iv.BuyPrice, iv.SalePrice, iv.Discount, iv.DiscountPercentage
	, iv.Quantity, iv.Expiry ,iv.Description
	from 
	tbl_inventory_inprogress iv where iv.quantity=0;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressInventoryUniqueProduct` */

drop procedure if exists `Sp_GetInprogressInventoryUniqueProduct`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressInventoryUniqueProduct`()
BEGIN
	select 	iv.Id, iv.Barcode, iv.ItemName, iv.MRP, iv.BuyPrice, iv.SalePrice, iv.Discount, iv.DiscountPercentage
	, iv.Quantity, iv.Expiry ,iv.Description
	from 
	tbl_inventory_inprogress iv where  iv.quantity <> 0;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressInvoiceNoList` */

drop procedure if exists `Sp_GetInprogressInvoiceNoList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressInvoiceNoList`(
arg_CounterNo int
)
BEGIN
	
	select 	distinct sa.invoiceNo,CustomerName,CustomerMobile
	from tbl_saledetail sd
	inner join tbl_sale sa on sd.InvoiceNo = sa.InvoiceNo 
	where sa.IsDeleted = 0 and sa.Status = 'Inprogress' and CounterId = arg_CounterNo;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressQuotationNoList` */

drop procedure if exists `Sp_GetInprogressQuotationNoList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressQuotationNoList`(
)
BEGIN
	
	select 	 sa.invoiceNo ,sa.CustomerName, sa.CustomerMobile,sum(amount) as Amount,sa.Date,sa.ExtraDiscount 
	from tbl_saledetail_quotation sd
	inner join tbl_sale_quotation sa on sd.InvoiceNo = sa.InvoiceNo 
	where sa.IsDeleted = 0 and sa.Status in( 'Inprogress','Printed') and sa.date > (curdate()- interval 60 day )
        group by sa.invoiceNo ,sa.CustomerName, sa.CustomerMobile,sa.Date;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressQuotationOneByOne` */

drop procedure if exists `Sp_GetInprogressQuotationOneByOne`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressQuotationOneByOne`(
arg_InvoiceNo NVARCHAR(50)
)
BEGIN
	-- declare varinvoice NVARCHAR(50);
	-- select InvoiceNo into varinvoice from tbl_sale where Status = 'Inprogress' and IsDeleted = 0 limit 1;
	select  sd.invoiceNo, sd.Barcode, sd.ItemName, sd.MRP, sd.BuyPrice, sd.SalePrice, sd.Discount, sd.DiscountPercentage, sd.Quantity, sd.Amount,
	sa.CustomerName, sa.Date, 
	CASE ifnull(mi.barcode,'')
	      WHEN '' THEN false	     
	      ELSE true
	  END as 'IsMasterItem' ,sa.Status,sa.ExtraDiscount ,sa.CustomerMobile
	from tbl_saledetail_quotation sd
	inner join tbl_sale_quotation sa on sd.InvoiceNo = sa.InvoiceNo 
	left join tbl_inventorymasterunit mi on sd.ItemName = mi.ItemName
	where sa.IsDeleted = 0  and sa.InvoiceNo = arg_InvoiceNo ;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInprogressSaleOneByOne` */

drop procedure if exists `Sp_GetInprogressSaleOneByOne`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInprogressSaleOneByOne`(
arg_InvoiceNo NVARCHAR(50)
)
BEGIN
	-- declare varinvoice NVARCHAR(50);
	-- select InvoiceNo into varinvoice from tbl_sale where Status = 'Inprogress' and IsDeleted = 0 limit 1;
	select  sd.invoiceNo, sd.Barcode, sd.ItemName, sd.MRP, sd.BuyPrice, sd.SalePrice, sd.Discount, sd.DiscountPercentage
	, sd.Quantity, sd.Amount,
	sa.CustomerName, sa.CustomerMobile, sa.Date, 
	CASE ifnull(mi.barcode,'')
	      WHEN '' THEN false	     
	      ELSE true
	  END as 'IsMasterItem' ,GroupCode, IncludeGSTPercentage, GSTAmount, AmountExcludeGST, Is1Plus1Discount,ImageName
	, Fontsize,sd.ItemId,ifnull(sa.ExcRef,'') as ExchangeNumber,sd.ExchangeAmount,sd.Remark,
	DATE_FORMAT(`Date`, '%Y-%b-%d %H:%i:%s') as SaleDate
	from tbl_saledetail sd
	inner join tbl_sale sa on sd.InvoiceNo = sa.InvoiceNo 
	left join tbl_inventorymasterunit mi on sd.barcode = mi.barcode
	where sa.IsDeleted = 0 and sa.Status = 'Inprogress' and sa.InvoiceNo = arg_InvoiceNo ;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInventorListForDiscount` */

drop procedure if exists `Sp_GetInventorListForDiscount`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInventorListForDiscount`(
arg_ItemName  NVARCHAR(100)
)
BEGIN
	select 	Id, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry 
	from 
	tbl_inventory where ItemName= arg_ItemName; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetInventorMasterUnitListForQuantityEdit` */

drop procedure if exists `Sp_GetInventorMasterUnitListForQuantityEdit`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetInventorMasterUnitListForQuantityEdit`(
arg_ItemName  NVARCHAR(100)
)
BEGIN
	select 	Id, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry 
	from 
	tbl_inventorymasterunit where ItemName= arg_ItemName; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetItemByBarcode` */

drop procedure if exists `Sp_GetItemByBarcode`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetItemByBarcode`(
arg_Barcode NVARCHAR(50)
)
BEGIN
      if(select barcode from tbl_inventorymasterunit where Barcode = arg_Barcode)
	then
		select 	 iv.Id, iv.Barcode, iv.ItemName, iv.MRP, iv.BuyPrice, iv.SalePrice, iv.Discount, iv.DiscountPercentage, iv.Quantity, iv.Expiry,iv.Description
		, true as IsMasterItem
		from 
		tbl_inventory iv where iv.Barcode = arg_Barcode;
	else
		select 	 iv.Id, iv.Barcode, iv.ItemName, iv.MRP, iv.BuyPrice, iv.SalePrice, iv.Discount, iv.DiscountPercentage, iv.Quantity, iv.Expiry,iv.Description
		,false as IsMasterItem
		from 
		tbl_inventory iv 
		left join vtbl_saleinprogress ds on iv.barcode=ds.barcode 
		where iv.Barcode = arg_Barcode  and ds.barcode is null;
	end if;
 
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetModule` */

drop procedure if exists `Sp_GetModule`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetModule`( 
         arg_username VARCHAR(50),        
	 arg_password VARCHAR(50),
	 arg_key VARCHAR(50)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_GetModule');
	
          
    END;
	
   START TRANSACTION;
	
	select DisplayName,Username,UserPassword,GroupId,GroupName,ModuleName,ModuleCode,Access,UserID from
	(
	  select DisplayName, Username,userpass as UserPassword,
	  ug.GroupId,ug.GroupName,am.ModuleName,am.ModuleCode,am.Access,ma.ID as UserID
          from tbl_moduleaccess ma
	  inner join tbl_usergroup ug on ug.groupid=ma.groupid and ma.IsActive
	  inner join vtbl_module_access am on am.groupid=ug.groupid and am.IsActive = 1
	) as T where UserPassword=arg_password and username=arg_username;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetMonhList` */

drop procedure if exists `Sp_GetMonhList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetMonhList`(
)
BEGIN
        select MonthText from tbl_months;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetNumnersToPrint` */

drop procedure if exists `Sp_GetNumnersToPrint`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetNumnersToPrint`(
arg_PrintCount int
)
BEGIN
	select  Number, PreFix, `Status` 
	from 
	`tbl_number` where `status` = 1 limit arg_PrintCount;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPendingInvoiceByDealer` */

drop procedure if exists `Sp_GetPendingInvoiceByDealer`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPendingInvoiceByDealer`(
arg_DealerId int
)
BEGIN
    select  d.ID as DealerId, d.Name as DealerName,o.OrderNo as InvoiceNo,o.OrderDate,o.OrderAmount as `BillAmount`,
     o.PaidAmount,o.BalanceAmount
	from `tbl_dealer` d
	inner join tbl_order o on d.ID=o.dealerid
     where o.DealerId=arg_DealerId and o.BalanceAmount > 0 ;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPendingSaleList` */

drop procedure if exists `Sp_GetPendingSaleList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPendingSaleList`(
arg_inv NVARCHAR(50),
arg_cst NVARCHAR(50)
)
BEGIN
	
	select  sa.Status,InvoiceNo,ExtraDiscount,CustomerName,CustomerMobile,PaidAmount,DueAmount,`date` as SaleDate,PaymentBy,GST
	,CustomerMobile,CustomerGST
	from  tbl_sale sa 
	where sa.IsDeleted = 0 and sa.Status in('Full Payment Pending','Partial Pending') 
		and (InvoiceNo like concat('%',arg_inv,'%') and CustomerName like concat('%',arg_cst,'%'));
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPrintedInventory` */

drop procedure if exists `Sp_GetPrintedInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPrintedInventory`()
BEGIN
	select 	Id, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry ,ScanStatus
	from 
	tbl_inventory_printed; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPrintedNumber` */

drop procedure if exists `Sp_GetPrintedNumber`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPrintedNumber`(
arg_Source varchar(20)
)
BEGIN
	select 	Id, Barcode, ItemName, MRP,  SalePrice, Discount, DiscountPercentage, Quantity, ScanStatus
	from 
	tbl_hrf_printed_data where source = arg_Source; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPrinterName` */

drop procedure if exists `Sp_GetPrinterName`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPrinterName`(
arg_Type varchar(50),
arg_CounterId int
)
BEGIN
select 	ID, CounterId, PrinterType, Name 
	from 
	 `tbl_printers` where CounterId = arg_CounterId and PrinterType = arg_Type;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPurchaseInvoiceList` */

drop procedure if exists `Sp_GetPurchaseInvoiceList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPurchaseInvoiceList`(
arg_DealerId int
)
BEGIN
      select o.ID as OrderId, d.Name as DealerName,od.OrderNo as InvoiceNo,PGSTNo,o.tax as GST_Amount,o.OrderAmount as `Total BillAmount`
     ,od.ItemName,od.Quantity,od.Rate,od.RateAfterTax
	,od.Amount as `Item Amount`,od.SalePrice,od.MRP, Mobile, MobileAlt, Address
	from `tbl_dealer` d
	inner join tbl_order o on d.ID=o.dealerid
	inner join tbl_orderdetail od on od.OrderId= o.ID
	where o.dealerid = arg_DealerId
        order by o.ID desc;	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetPurchasePaidList` */

drop procedure if exists `Sp_GetPurchasePaidList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetPurchasePaidList`(
arg_DealerId int
)
BEGIN
     select  Name as DealerName, PaymentDate, PaymentAmount, OrderNo ,Description
	from `tbl_dealer_paid` dp
        inner join tbl_dealer d on dp.dealerid=d.id
	where dp.dealerid= arg_DealerId
        order by dp.ID desc limit 100;	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetSaleByInvoiceNo` */

drop procedure if exists `Sp_GetSaleByInvoiceNo`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetSaleByInvoiceNo`(
arg_InvoiceNo NVARCHAR(50)
)
BEGIN
	
	select  sd.invoiceNo, sd.Barcode, sd.ItemName, sd.MRP, sd.BuyPrice, sd.SalePrice, sd.Discount, sd.DiscountPercentage, sd.Quantity, sd.Amount,
	sa.CustomerName, sa.Date, 
	CASE ifnull(mi.barcode,'')
	      WHEN '' THEN false	     
	      ELSE true
	  END as 'IsMasterItem' , sa.CustomerMobile,sa.PaidAmount
	from tbl_saledetail sd
	inner join tbl_sale sa on sd.InvoiceNo = sa.InvoiceNo 
	left join tbl_inventorymasterunit mi on sd.barcode = mi.barcode
	where sa.IsDeleted = 0 and sa.Status <> 'Inprogress' and sa.InvoiceNo = arg_InvoiceNo ;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetSerialPortSettingsList` */

drop procedure if exists `Sp_GetSerialPortSettingsList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetSerialPortSettingsList`(
arg_CounterId int
)
BEGIN
select Id, DataBits, ComPort, Comm_Type, CustomName, Flow, Parity, PrinterIp, PrinterPort, DeviceNumber, BaudRate, StopBits
		from 
	 tbl_scannersettings where DeviceNumber='Scanner_1' and CounterId= arg_CounterId  ; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetSerialPortSettingsPrinter` */

drop procedure if exists `Sp_GetSerialPortSettingsPrinter`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetSerialPortSettingsPrinter`(
arg_CounterId int
)
BEGIN
select Id, DataBits, ComPort, Comm_Type, CustomName as SerialName, Flow, Parity, PrinterIp, PrinterPort, DeviceNumber, BaudRate, StopBits
		from 
	 tbl_scannersettings where DeviceNumber='Zebra_Printer_1' and CounterId= arg_CounterId  ; 
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetUserList` */

drop procedure if exists `Sp_GetUserList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetUserList`()
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_GetUserList');
	
          
    END;
	
   START TRANSACTION;
	
	 select ma.ID as UserID,DisplayName, Username,userpass as UserPassword,
	  ug.GroupName,ug.GroupID
          from tbl_moduleaccess ma
	  inner join tbl_usergroup ug on ug.groupid=ma.groupid ;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetUserNameList` */

drop procedure if exists `Sp_GetUserNameList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetUserNameList`()
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_GetUserNameList');
	
          
    END;
	
   START TRANSACTION;
	
	 select DisplayName, Username
          from tbl_moduleaccess  where IsActive = 1;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GetUserRolelist` */

drop procedure if exists `Sp_GetUserRolelist`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GetUserRolelist`(
	arg_RoleId int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_GetUserRolelist');
	
          
    END;
	
   START TRANSACTION;
	
	  if(arg_RoleId <> 1)
	then
	    select GroupID, GroupName
          from tbl_usergroup where GroupID <> 1;
	else
		 select GroupID, GroupName
          from tbl_usergroup;
	end if;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Get_hrf_printed_data_list` */

drop procedure if exists `Sp_Get_hrf_printed_data_list`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Get_hrf_printed_data_list`(
)
BEGIN
	
	select ID,Barcode, ItemName as HRF_1 , MRP as HRF_2 ,SalePrice as HRF_3  ,HRF_4, HRF_5, HRF_6, HRF_7, HRF_8,HRF_9,HRF_10,Quantity as Print_Quantity  
	from tbl_hrf_printed_data_list where barcode <> '' order by id desc;
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_GSTDetail` */

drop procedure if exists `Sp_GSTDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_GSTDetail`()
BEGIN
      
      select GSTPercentage, CGSTPercentage, SGSTPercentage ,GSTNumber
	from 
	`tbl_gstdetail` ;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertDealer` */

drop procedure if exists `Sp_InsertDealer`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertDealer`( 
         arg_Name NVARCHAR(50),        
	 arg_Mobile NVARCHAR(20),
	 arg_Address NVARCHAR(200),
         arg_PGSTNo NVARCHAR(50),
	arg_MobileAlt NVARCHAR(20)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertDealer');
	
    END;
	
   START TRANSACTION;
	
      insert into `tbl_dealer` 
	(Name, Mobile,MobileAlt, Address,PGSTNo , IsActive)
	values
	(arg_Name, arg_Mobile,arg_MobileAlt, arg_Address,arg_PGSTNo, 1);
       select LAST_INSERT_ID() as DealerId;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertHRFPRintedData` */

drop procedure if exists `Sp_InsertHRFPRintedData`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertHRFPRintedData`(
arg_Barcode varchar(50),
arg_ItemName varchar(50),
arg_MRP varchar(50),
arg_SalePrice varchar(50),
arg_Discount varchar(50),
arg_DiscountPercentage varchar(50),
arg_Quantity varchar(50),
arg_HRF_4 varchar(50),
arg_HRF_5 varchar(50),
arg_HRF_6 varchar(50),
arg_HRF_7 varchar(50),
arg_HRF_8 varchar(50),
arg_HRF_9 varchar(50),
arg_HRF_10 varchar(50),
arg_Source varchar(50)
)
BEGIN
	insert into `tbl_hrf_printed_data` 
	(Barcode, ItemName, MRP, SalePrice, Discount, DiscountPercentage, 
	Quantity, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, HRF_10, Source)
	values
	(arg_Barcode, arg_ItemName, arg_MRP, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
	arg_Quantity, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, HRF_10,	arg_Source);
         select LAST_INSERT_ID() as ppid;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertHRFPritingData` */

drop procedure if exists `Sp_InsertHRFPritingData`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertHRFPritingData`(
arg_Barcode varchar(50),
arg_HRF_1 varchar(50),
arg_HRF_2 varchar(50),
arg_HRF_3 varchar(50),
arg_HRF_4 varchar(50),
arg_HRF_5 varchar(50),
arg_HRF_6 varchar(50),
arg_HRF_7 varchar(50),
arg_HRF_8 varchar(50),
arg_HRF_9 varchar(50),
arg_HRF_10 varchar(50),
arg_HRF_11 varchar(50),
arg_HRF_12 varchar(50),
arg_HRF_13 varchar(50),
arg_HRF_14 varchar(50),
arg_HRF_15 varchar(50),
arg_Print_Quantity int
)
BEGIN
	insert into `tbl_hrf_printing_data` 
	( Barcode,HRF_1, HRF_2, HRF_3, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, 
	HRF_10, HRF_11, HRF_12, HRF_13, HRF_14, HRF_15,Print_Quantity)
	values
	(arg_Barcode, arg_HRF_1, arg_HRF_2,arg_HRF_3, arg_HRF_4, arg_HRF_5, arg_HRF_6, arg_HRF_7, arg_HRF_8, arg_HRF_9, 
	arg_HRF_10, arg_HRF_11, arg_HRF_12, arg_HRF_13, arg_HRF_14, arg_HRF_15, arg_Print_Quantity);
         select LAST_INSERT_ID() as ppid;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertInventorIprogressAndInventory` */

drop procedure if exists `Sp_InsertInventorIprogressAndInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertInventorIprogressAndInventory`( 
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
arg_Expiry NVARCHAR(50),
arg_Description NVARCHAR(100)
	)
BEGIN
 DECLARE var_barcodecheck varchar(100);
 DECLARE var_name varchar(100);
 DECLARE var_Masterbarcodecheck varchar(100);
 DECLARE var_mastername varchar(100);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertInventorIprogressAndInventory');
	
          
    END;
	
   START TRANSACTION;
	 
         set var_Masterbarcodecheck ='';
         set var_mastername ='';
         set var_barcodecheck ='';
         select barcode into var_barcodecheck from tbl_inventory where barcode= arg_Barcode limit 1;
        
	IF (var_barcodecheck = '')
	then
		insert into `tbl_inventory_inprogress` 
		(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry,Description)
		values
		(arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
		arg_Quantity, arg_Expiry,arg_Description);
		insert into `tbl_inventory` 
		(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry,Description)
		values
		(arg_Barcode, arg_ItemName, arg_MRP,arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
		arg_Quantity, arg_Expiry,arg_Description);
		
		SELECT '0' AS Duplicate,arg_ItemName as ItemName ;
	ELSE
		
		select barcode into var_Masterbarcodecheck from tbl_inventorymasterunit where barcode= arg_Barcode limit 1;
		select ItemName into var_mastername from tbl_inventorymasterunit where barcode= arg_Barcode limit 1;
		IF (var_Masterbarcodecheck = '')
		then
			SELECT '1' AS Duplicate, arg_ItemName as ItemName; -- item duplicate
                else
			SELECT '9' AS Duplicate , var_mastername as ItemName; -- master item duplicate
		end if;
		
		
	END IF;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertInventorPrinted` */

drop procedure if exists `Sp_InsertInventorPrinted`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertInventorPrinted`( 
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
arg_Expiry NVARCHAR(50)
	)
BEGIN
 DECLARE var_barcodecheck varchar(100);
DECLARE var_name varchar(100);
  declare var_POID int;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertInventorPrinted');
	
          
    END;
	
   START TRANSACTION;
	 
        
         set var_barcodecheck ='';
         select barcode into var_barcodecheck from tbl_inventory where barcode= arg_Barcode limit 1;
        
	IF (var_barcodecheck = '')
	then
		insert into `tbl_inventory_printed` 
		(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry)
		values
		(arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
		arg_Quantity, arg_Expiry);
		
		select ItemName into var_name from tbl_namemaster where ItemName = arg_ItemName limit 1;
		if(var_name is null)
		then
			insert into tbl_namemaster(ItemName) values(arg_ItemName);
		end if;
		SELECT '0' AS Duplicate;
	ELSE
		SELECT '1' AS Duplicate;
	END IF;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertInventoryAddHistory` */

drop procedure if exists `Sp_InsertInventoryAddHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertInventoryAddHistory`( 
         arg_UserName NVARCHAR(50),        
	 arg_ItemName  NVARCHAR(100),
	 arg_Comment NVARCHAR(100),
	 arg_IsAdd int 
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertInventoryAddHistory');
	
    END;
	
   START TRANSACTION;
	if( arg_IsAdd = 1) then
	 insert into `tbl_inventoryaddedhistory` 
		(UserName, AddedTime, ItemName, AddedComment)
		values
		( arg_UserName, now(), arg_ItemName, arg_Comment);
	else
	    insert into `tbl_inventoryaddedhistory` 
		(UserName, AddedTime, ItemName, DiscountComment)
		values
		( arg_UserName, now(), arg_ItemName, arg_Comment);
	end if;
       select LAST_INSERT_ID() as ID;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertInventoryFromPrint` */

drop procedure if exists `Sp_InsertInventoryFromPrint`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertInventoryFromPrint`( 
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
arg_Expiry NVARCHAR(50)
	)
BEGIN
 DECLARE var_barcodecheck varchar(100);
 DECLARE var_name varchar(100);
 DECLARE var_Masterbarcodecheck varchar(100);
 DECLARE var_mastername varchar(100);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertInventorIprogressAndInventory');
	
          
    END;
	
   START TRANSACTION;
	 
         set var_Masterbarcodecheck ='';
         set var_mastername ='';
         set var_barcodecheck ='';
         select barcode into var_barcodecheck from tbl_inventory where barcode= arg_Barcode limit 1;
        
	IF (var_barcodecheck = '')
	then
		
		insert into `tbl_inventory` 
		(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry)
		values
		(arg_Barcode, arg_ItemName, arg_MRP,arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
		arg_Quantity, arg_Expiry);
		
		insert into `tbl_hrf_printed_data_list` 
		(Barcode, ItemName, MRP, SalePrice, Discount, DiscountPercentage, 
		Quantity, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, HRF_10, HRF_11, 
		HRF_12, HRF_13, HRF_14, HRF_15, ScanStatus, Source)
		select Barcode, ItemName, MRP, SalePrice, Discount, DiscountPercentage, 
		Quantity, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, HRF_10, HRF_11, 
		HRF_12, HRF_13, HRF_14, HRF_15, ScanStatus, Source from `tbl_hrf_printed_data` where barcode = arg_Barcode;
		delete from tbl_hrf_printed_data where Barcode = arg_Barcode;
		if ( arg_Quantity > 1)
		then
			insert into `tbl_inventoryMasterUnit` 
				(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
				Quantity, Expiry)
				values
				(arg_Barcode, arg_ItemName, arg_MRP,arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
				arg_Quantity, arg_Expiry);
		end if;
		
		SELECT '0' AS Duplicate,arg_ItemName as ItemName ;
	ELSE
		
		select barcode into var_Masterbarcodecheck from tbl_inventorymasterunit where barcode= arg_Barcode limit 1;
		select ItemName into var_mastername from tbl_inventorymasterunit where barcode= arg_Barcode limit 1;
		IF (var_Masterbarcodecheck = '')
		then
			SELECT '1' AS Duplicate, arg_ItemName as ItemName; -- item duplicate
                else
			SELECT '9' AS Duplicate , var_mastername as ItemName; -- master item duplicate
		end if;
		
		
	END IF;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertLoginHistory` */

drop procedure if exists `Sp_InsertLoginHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertLoginHistory`( 
         arg_UserName NVARCHAR(50),        
	 arg_IsLogin int,
	 arg_Comment NVARCHAR(100)
	)
BEGIN
  declare plogintime datetime;
 declare plogouttime datetime;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertLoginHistory');
	
    END;
	
   START TRANSACTION;
	set plogintime=null;
	set plogouttime=null;
	if( arg_IsLogin = 1)	
	then
		set plogintime = now();
	else
		set plogouttime = now();
	end if;
    insert into `tbl_loginhistory` 
	(UserName, LogInTime, LogOutTime, LogoutComment)
	values
	(arg_UserName, plogintime, plogouttime, arg_Comment);
       select LAST_INSERT_ID() as ID;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertNameMaster` */

drop procedure if exists `Sp_InsertNameMaster`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertNameMaster`(	 
	 arg_ItemName NVARCHAR(50)	
	)
BEGIN
DECLARE var_name varchar(100);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertNameMaster');
	
           
    END;
	
   START TRANSACTION;
	 
        select ItemName into var_name from tbl_namemaster where ItemName = arg_ItemName limit 1;
		if(var_name is null)
		then
			insert into tbl_namemaster(ItemName) values(arg_ItemName);
		end if;
	SELECT 1 AS ID;
         
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertNumberToInventory` */

drop procedure if exists `Sp_InsertNumberToInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertNumberToInventory`( 
arg_Barcode NVARCHAR(50),
arg_ItemName NVARCHAR(50),
arg_MRP int,	 
arg_BuyPrice int, 
arg_SalePrice int,
arg_Discount int,
arg_DiscountPercentage int,
arg_Quantity int,
arg_Expiry NVARCHAR(50)
)
BEGIN
DECLARE var_barcodecheck varchar(100);
DECLARE var_name varchar(100);
declare var_POID int;
DECLARE EXIT HANDLER FOR SQLEXCEPTION 
BEGIN
ROLLBACK;
Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
values(null,null,'Error ocured', null, null,null,'Sp_UpdateInventor');
END;
START TRANSACTION;
insert into `tbl_hrf_printed_data_list` 
		(Barcode, ItemName, MRP, SalePrice, Discount, DiscountPercentage, 
		Quantity, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, HRF_10, HRF_11, 
		HRF_12, HRF_13, HRF_14, HRF_15, ScanStatus, Source)
		select Barcode, ItemName, MRP, SalePrice, Discount, DiscountPercentage, 
		Quantity, HRF_4, HRF_5, HRF_6, HRF_7, HRF_8, HRF_9, HRF_10, HRF_11, 
		HRF_12, HRF_13, HRF_14, HRF_15, ScanStatus, Source from `tbl_hrf_printed_data` where barcode = arg_Barcode;
delete from tbl_hrf_printed_data where Barcode = arg_Barcode;
insert into `tbl_inventory` 
(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
Quantity, Expiry)
values
(arg_Barcode, arg_ItemName, arg_MRP,arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
arg_Quantity, arg_Expiry);
SELECT '1' AS Success;
COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertOrder` */

drop procedure if exists `Sp_InsertOrder`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertOrder`( 
         arg_OrderNo NVARCHAR(50),        
	 arg_TaxRate int,
	 arg_Tax int,
	 arg_OrderAmount int,        
	 arg_DealerId int,
	 arg_OrderDate NVARCHAR(200),
	 arg_PaidAmount int,
	 arg_BalanceAmount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertOrder');
	
    END;
	
   START TRANSACTION;
	if( arg_PaidAmount > 0)
	then
		insert into `tbl_dealer_paid` 
		(DealerId, PaymentDate, PaymentAmount)
		values
		(arg_DealerId, arg_OrderDate, arg_PaidAmount);
	end if;
	
      insert into `tbl_order` 
	(OrderNo, TaxRate, Tax, OrderAmount, DealerId, OrderDate,PaidAmount,BalanceAmount)
	values
	(arg_OrderNo, arg_TaxRate, arg_Tax, arg_OrderAmount, arg_DealerId,now() , arg_PaidAmount,arg_BalanceAmount );
       select LAST_INSERT_ID() as OrderId;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertOrderDetail` */

drop procedure if exists `Sp_InsertOrderDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertOrderDetail`( 
         arg_OrderNo NVARCHAR(50),  
	 arg_ItemName NVARCHAR(50),       
	 arg_Quantity int,
	 arg_Rate int,
	 arg_RateAfterTax double,        
	 arg_Amount int,
	 arg_ProfitMargin int,
	 arg_SalePrice double,        
	 arg_MRP int,
	 arg_OrderId int
	 
	)
BEGIN
   DECLARE var_name varchar(100);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertOrderDetail');
	
    END;
	
   START TRANSACTION;
	
		select ItemName into var_name from tbl_namemaster where ItemName = arg_ItemName limit 1;
		if(var_name is null)
		then
			insert into tbl_namemaster(ItemName) values(arg_ItemName);
		end if;
	insert into `tbl_orderdetail` 
	(OrderId,OrderNo, ItemName, Quantity, Rate, RateAfterTax, Amount, ProfitMargin, SalePrice,MRP)
	values
	(arg_OrderId, arg_OrderNo, arg_ItemName, arg_Quantity, arg_Rate, arg_RateAfterTax, arg_Amount, arg_ProfitMargin, arg_SalePrice,arg_MRP);
       select LAST_INSERT_ID() as ODId;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertOrderPayment` */

drop procedure if exists `Sp_InsertOrderPayment`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertOrderPayment`(                  
	 arg_DealerId int,
	 arg_PaymentDate NVARCHAR(50),
	 arg_PaymentAmount int,
	 arg_OrderNo NVARCHAR(50),
         arg_Desc NVARCHAR(100)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertOrderPayment');
	
    END;
	
   START TRANSACTION;
	insert into `tbl_dealer_paid` 
	(DealerId, PaymentDate, PaymentAmount,OrderNo,Description)
	values
	(arg_DealerId, now(), arg_PaymentAmount,arg_OrderNo,arg_Desc);
        update tbl_order set PaidAmount = (PaidAmount + arg_PaymentAmount),
	BalanceAmount = (BalanceAmount - arg_PaymentAmount) 
	where OrderNo = arg_OrderNo;
     
       select 1 as PaymentId;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertOwnLabel` */

drop procedure if exists `Sp_InsertOwnLabel`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertOwnLabel`( 
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
	 arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
	arg_Expiry NVARCHAR(50)
	)
BEGIN
 DECLARE var_barcodecheck varchar(100);
DECLARE var_name varchar(100);
  declare var_POID int;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateInventor');
	
           
    END;
	
   START TRANSACTION;
       delete from tbl_inventory_printed where Barcode = arg_Barcode;
	 
        insert into `tbl_inventory` 
		(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry)
		values
		(arg_Barcode, arg_ItemName, arg_MRP,arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
		arg_Quantity, arg_Expiry);
		
        
		SELECT '1' AS Success;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertPrintHistosry` */

drop procedure if exists `Sp_InsertPrintHistosry`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertPrintHistosry`( 
         arg_PrintedBy NVARCHAR(50),  
	 arg_DataSource NVARCHAR(50), 
	 arg_PrintCount int,
	 arg_PrintItem  NVARCHAR(50), 
	 arg_ActionAfterPrint  NVARCHAR(50)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	
           ROLLBACK;
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
		 values(null,null,'Error ocured', null, null,null,'Sp_InsertPrintHistosry');
	
    END;
	
   START TRANSACTION;
	insert into `tbl_printinghistory` 
	(PrintedBy, PrintDate, DataSource, PrintCount, PrintItem, ActionAfterPrint
	)
	values
	(
	arg_PrintedBy, now(), arg_DataSource, arg_PrintCount, arg_PrintItem, arg_ActionAfterPrint
	);
       select LAST_INSERT_ID() as PhID;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertQuotationCreateInvoice` */

drop procedure if exists `Sp_InsertQuotationCreateInvoice`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertQuotationCreateInvoice`(         
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int
	)
BEGIN
  DECLARE VAR_INVOICENO NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertSaleCreateInvoice');
	
          
    END;
	
   START TRANSACTION;
	 
        
       insert into tbl_quotationgeneration(Prifix) values('QUOT');
	select CONCAT('QUOT',max(QuotationNo)) INTO VAR_INVOICENO from tbl_quotationgeneration;
       
	insert into  tbl_sale_quotation 
	(InvoiceNo, ExtraDiscount, CustomerName, PaymentBy, SGST, CGST, 
	DueAmount)
	values
	(VAR_INVOICENO, 0, VAR_INVOICENO, 'Cash', 0, 0,	0);
      insert into tbl_saledetail_quotation
	(InvoiceNo, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount)
	values
	(VAR_INVOICENO, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount);
       Select VAR_INVOICENO as InvoiceNumber;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertSale` */

drop procedure if exists `Sp_InsertSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertSale');
	
           
    END;
	
   START TRANSACTION;
	
      insert into tbl_saledetail
	(InvoiceNo, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount)
	values
	(arg_InvoiceNumber, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount);
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertSaleCreateInvoice` */

drop procedure if exists `Sp_InsertSaleCreateInvoice`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertSaleCreateInvoice`(         
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int,
	 arg_CounterNo int
	)
BEGIN
  DECLARE VAR_INVOICENO NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertSaleCreateInvoice');
	
          
    END;
	
   START TRANSACTION;
	 
        
       insert into tbl_invoicenogeneration(Prifix) values('MHE');
	select CONCAT('MHE',max(InvoiceNo)) INTO VAR_INVOICENO from tbl_invoicenogeneration;
       
	insert into  tbl_sale 
	(InvoiceNo, ExtraDiscount, CustomerName, PaymentBy, SGST, CGST, 
	DueAmount,CounterId)
	values
	(VAR_INVOICENO, 0, VAR_INVOICENO, 'Cash', 0, 0,	0,arg_CounterNo);
      insert into tbl_saledetail
	(InvoiceNo, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount)
	values
	(VAR_INVOICENO, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount);
       Select VAR_INVOICENO as InvoiceNumber;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertSale_Quotation` */

drop procedure if exists `Sp_InsertSale_Quotation`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertSale_Quotation`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertSale');
	
           
    END;
	
   START TRANSACTION;
	
      insert into tbl_saledetail_quotation
	(InvoiceNo, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
	DiscountPercentage, Quantity, Amount)
	values
	(arg_InvoiceNumber, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
	arg_DiscountPercentage, arg_Quantity, arg_Amount);
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertUpdateScanner` */

drop procedure if exists `Sp_InsertUpdateScanner`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertUpdateScanner`( 
	 arg_ComPort NVARCHAR(50),
	 arg_BaudRate NVARCHAR(50),	 
	 arg_Parity NVARCHAR(50), 
	 arg_DataBits NVARCHAR(50),
	 arg_StopBits NVARCHAR(50),
	 arg_Flow NVARCHAR(50),
	 arg_DeviceNumber NVARCHAR(50),
	 arg_CounterId int
	)
BEGIN
  declare var_POID int;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertUpdateScanner');
	
           
    END;
	
   START TRANSACTION;
	    
	  update tbl_scannersettings 
		set DataBits=arg_DataBits, 
		ComPort = arg_ComPort,		
		Flow=arg_Flow,
		Parity=arg_Parity,
		PrinterIp='',
		PrinterPort='',
		BaudRate=arg_BaudRate,
		StopBits=arg_StopBits where devicenumber=arg_DeviceNumber and CounterId = arg_CounterId;
    
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_InsertUpdateUser` */

drop procedure if exists `Sp_InsertUpdateUser`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_InsertUpdateUser`(
arg_LoginUser nvarchar(100),
arg_UserID int,
arg_DisplayName nvarchar(100),
arg_UserName nvarchar(50),
arg_Password nvarchar(50),
arg_GroupID int
)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_InsertUpdateUser');
	
          
    END;
	
   START TRANSACTION;
	
	if( arg_UserID = 0 ) then
            
		insert into `tbl_useraudit` 
		(AdminName, Actions, ActionDate)
		values
		(arg_LoginUser, concat('1 user created. user name is ',arg_DisplayName), now());
		insert into `tbl_moduleaccess` 
		(DisplayName, username, userpass, groupId, IsActive)
		values
		(arg_DisplayName, arg_UserName, arg_Password, arg_GroupID, 1);
		select LAST_INSERT_ID() as UserId;
	else
		insert into `tbl_useraudit` 
		(AdminName, Actions, ActionDate)
		values
		(arg_LoginUser, concat('1 user updated. user name is ',arg_DisplayName), now());
		update tbl_moduleaccess set DisplayName = arg_DisplayName ,username = arg_UserName 
		,userpass = arg_Password , groupId = arg_GroupID where  ID = arg_UserID ; 
	select arg_UserID as UserId;
	end if;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetExchangeReturn` */

drop procedure if exists `Sp_Report_GetExchangeReturn`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetExchangeReturn`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
select T.ItemName,T.Return_Count ,T.Remark
	,ifnull(M.Name,'') as `Dealer Name` 
	,ifnull(M.Mobile,'') as `Mobile` ,ifnull(M.Address,'') as `Address` from 
	(
	 select sd.Itemname ,count(1) as Return_Count , Remark from tbl_saledetail sd
	 where sd.Remark is not  null
	 group by sd.Itemname,sd.Remark
        ) as T
	left join 
        (
	    select distinct od.ItemName,Name,Mobile,Address from tbl_order om
	    inner join tbl_orderdetail od on om.OrderNo=od.OrderNo
	    inner join tbl_dealer d on d.id= om.DealerId	    
	) as M on T.ItemName = M.ItemName        
        order by T.ItemName asc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetGSTSale` */

drop procedure if exists `Sp_Report_GetGSTSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetGSTSale`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
select InvoiceNo,'GST' as BillType,  PaymentBy ,CustomerName,CustomerMobile, PaidAmount as BillAmount, 
	'Paid' as `Status`, `Date` as SaleDate
	from 
	`tbl_sale`  where `status` = 'Complete' and GST > 0   
       order by InvoiceNo desc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetInventoryRunningLowNameList` */

drop procedure if exists `Sp_Report_GetInventoryRunningLowNameList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetInventoryRunningLowNameList`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
	select T.ItemName,T.AvaibleQty as `Avaible_Quantity`, case when mu.ItemName <> '' then 'Yes' else 'No' end `Is Master Item?` 
	,ifnull(M.Name,'') as `Dealer Name` 
	,ifnull(M.Mobile,'') as `Mobile` ,ifnull(M.Address,'') as `Address` from 
	(
	select ItemName,MRP,sum(Quantity) as AvaibleQty from tbl_inventory 
		
		group by  ItemName,MRP	
	) as T
	left join 
        (
	    select distinct od.ItemName,Name,Mobile,Address from tbl_order om
	    inner join tbl_orderdetail od on om.OrderNo=od.OrderNo
	    inner join tbl_dealer d on d.id= om.DealerId	    
	) as M on T.ItemName = M.ItemName 
        left join tbl_inventorymasterunit mu on T.ItemName = mu.ItemName
       where T.AvaibleQty < 5
	
		order by T.ItemName asc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetLoginHistory` */

drop procedure if exists `Sp_Report_GetLoginHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetLoginHistory`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
     select 	 UserName as `USer Name`, LogInTime as `LogIn Time`, LogOutTime as `LogOut Time`, LogoutComment as `Logout Comment`
	from 
	`tbl_loginhistory` order by id desc limit 100;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetMonthWiseExchange` */

drop procedure if exists `Sp_Report_GetMonthWiseExchange`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetMonthWiseExchange`(
)
BEGIN
	select m.MonthText,ifnull(s.Sale,0) as Sale from
	(
	  select MONTHNAME(`date`) as MonthT,  sum(ifnull(ExcAmount,0)) as Sale from tbl_sale where year(`date`) = YEAR(CURDATE())
	) as s
	right outer join tbl_months m on s.MonthT = m.MonthText;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetMonthWiseItemSale` */

drop procedure if exists `Sp_Report_GetMonthWiseItemSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetMonthWiseItemSale`(
)
BEGIN
	select ItemName,ifnull(s.Sale,0) as Sale from
	(
	  select MONTHNAME(`date`) as MonthT,  sum(ifnull(Amount,0)) as Sale ,ds.ItemName
		from tbl_sale  sa inner join tbl_SaleDetail ds on sa.InvoiceNo = ds.InvoiceNo and ds.ItemId > 0
		where year(`date`) = YEAR(CURDATE()) group by ds.ItemId
	) as s;
	-- right outer join tbl_months m on s.MonthT = m.MonthText;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetMonthWiseSale` */

drop procedure if exists `Sp_Report_GetMonthWiseSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetMonthWiseSale`(
)
BEGIN
	select m.MonthText,ifnull(s.Sale,0) as Sale from
	(
	  select MONTHNAME(`date`) as MonthT,  sum(PaidAmount) as Sale from tbl_sale where year(`date`) = YEAR(CURDATE())
	) as s
	right outer join tbl_months m on s.MonthT = m.MonthText;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetNoneGSTSale` */

drop procedure if exists `Sp_Report_GetNoneGSTSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetNoneGSTSale`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
select InvoiceNo,'None GST' as BillType,  PaymentBy , PaidAmount as BillAmount, 
	'Paid' as `Status`, `Date` as SaleDate
	from 
	`tbl_sale`  where `status` = 'Complete' and GST=0   
       order by InvoiceNo desc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetOutOfStock` */

drop procedure if exists `Sp_Report_GetOutOfStock`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetOutOfStock`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
select T.ItemName as `Item Name`,T.AvaibleQty as `Avaible Quantity`, case when mu.ItemName <> '' then 'Yes' else 'No' end `Is Master Item?` 
	,ifnull(M.Name,'') as `Dealer Name` 
	,ifnull(M.Mobile,'') as `Mobile` ,ifnull(M.Address,'') as `Address` from 
	(
select nm.Itemname ,0 as AvaibleQty from tbl_namemaster nm
	left join tbl_inventory it on it.ItemName = nm.ItemName  where it.ItemName is  null
        ) as T
	left join 
        (
	    select distinct od.ItemName,Name,Mobile,Address from tbl_order om
	    inner join tbl_orderdetail od on om.OrderNo=od.OrderNo
	    inner join tbl_dealer d on d.id= om.DealerId	    
	) as M on T.ItemName = M.ItemName 
        left join tbl_inventorymasterunit mu on T.ItemName = mu.ItemName
        order by T.ItemName asc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetPurchaseInvoiceList` */

drop procedure if exists `Sp_Report_GetPurchaseInvoiceList`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetPurchaseInvoiceList`(
arg_ItemName NVARCHAR(50)
)
BEGIN
      select  o.OrderDate,d.Name as DealerName,od.OrderNo as InvoiceNo,PGSTNo,o.tax as GST_Amount,o.OrderAmount as `Total BillAmount`
     ,od.ItemName,od.Quantity,od.Rate,od.RateAfterTax
	,od.Amount as `Item Amount`,od.SalePrice,od.MRP, Mobile, MobileAlt, Address
	from `tbl_dealer` d
	inner join tbl_order o on d.ID=o.dealerid
	inner join tbl_orderdetail od on od.OrderId= o.ID
	where o.BalanceAmount = 0
        order by o.ID desc;	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetPurchaseInvoiceListNotPaid` */

drop procedure if exists `Sp_Report_GetPurchaseInvoiceListNotPaid`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetPurchaseInvoiceListNotPaid`(
arg_ItemName NVARCHAR(50)
)
BEGIN
      select  o.OrderDate,d.Name as DealerName,od.OrderNo as InvoiceNo,PGSTNo,o.tax as GST_Amount,o.OrderAmount as `Total BillAmount`
     ,od.ItemName,od.Quantity,od.Rate,od.RateAfterTax
	,od.Amount as `Item Amount`,od.SalePrice,od.MRP, Mobile, MobileAlt, Address
	from `tbl_dealer` d
	inner join tbl_order o on d.ID=o.dealerid
	inner join tbl_orderdetail od on od.OrderId= o.ID
	where o.BalanceAmount > 0 
        order by o.ID desc;	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetStockOnHand` */

drop procedure if exists `Sp_Report_GetStockOnHand`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetStockOnHand`()
BEGIN
	
	SELECT T.ITEMNAME,T.AVAIBLEQTY AS `STOCK QUANTITY`,IFNULL(INPROGRESSQTY,0) AS `INPROGRESS QUANTITY`,(T.AVAIBLEQTY - IFNULL(INPROGRESSQTY,0)) AS  `AVAILBLE QUANTITY`,
	CASE WHEN MU.ITEMNAME <> '' THEN 'YES' ELSE 'NO' END `IS MASTER ITEM?` 
	,IFNULL(M.NAME,'') AS `DEALER NAME` 
	,IFNULL(M.MOBILE,'') AS `MOBILE` ,IFNULL(M.ADDRESS,'') AS `ADDRESS`  from
	(
	select ItemName, sum(Quantity) as AvaibleQty from  tbl_inventory
	group by ItemName
	union all 
	select nm.Itemname , 0 as AvaibleQty from tbl_namemaster nm
		left join tbl_inventory it on it.ItemName = nm.ItemName 
		where it.ItemName is  null 
	) as T 
        left join 
        (
	    select distinct od.ItemName,Name,Mobile,Address from tbl_order om
	    inner join tbl_orderdetail od on om.OrderNo=od.OrderNo
	    inner join tbl_dealer d on d.id= om.DealerId	    
	) as M on T.ItemName = M.ItemName
	left join 
	(
		select `sd`.`ItemName`,count(1) as InprogressQty  from `tbl_saledetail` `sd` 
		join `tbl_sale` `s` on `sd`.`InvoiceNo` = `s`.`InvoiceNo`  and  `s`.`Status` = 'Inprogress'
		group by `sd`.`ItemName`
	) as si on si.ItemName = T.ItemName
        left join tbl_inventorymasterunit mu on T.ItemName = mu.ItemName
	order by T.AvaibleQty desc;
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_GetUserActionHistory` */

drop procedure if exists `Sp_Report_GetUserActionHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_GetUserActionHistory`(
arg_ItemName NVARCHAR(50)
)
BEGIN
	
     select 	 AdminName as `Admin Name`, Actions, ActionDate as `Action Date`
	from 
	`tbl_useraudit` order by ID desc ;
	
	
	
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Report_PaymentHistory` */

drop procedure if exists `Sp_Report_PaymentHistory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Report_PaymentHistory`(
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_Report_PaymentHistory');
	
          
    END;
	
   START TRANSACTION;
	
      select 	 LoginUser, Customer, InvoiceNumner,TotalBill, PaidAmount, DueAmount, DiscountOnBill,  `Date` 
	from 
	`tbl_salehistory` 
 where   TotalBill <> PaidAmount
 order by InvoiceNumner desc;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_SaveNameAndMobile` */

drop procedure if exists `Sp_SaveNameAndMobile`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SaveNameAndMobile`(
arg_InvoiceNumber varchar(50),
arg_CustMobile varchar(50),
arg_CustomerName varchar(50)
)
BEGIN
	declare varnum varchar(20);
	update tbl_sale set CustomerName = arg_CustomerName, CustomerMobile = arg_CustMobile where InvoiceNo = arg_InvoiceNumber;
	
	select CustomerPhone into varnum from tbl_customers where CustomerPhone = arg_CustMobile limit 1;
        if(varnum is null)
	then
		insert into tbl_customers(CustomerName,CustomerPhone) values(arg_CustomerName,arg_CustMobile);
	end if;
	select 1 as result;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_TodaysSale` */

drop procedure if exists `Sp_TodaysSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_TodaysSale`(
)
BEGIN
	select ifnull(sum(PaidAmount),0) as PaidAmount, ifnull(sum(DueAmount),0) as DueAmount 
	from tbl_sale 
	where isdeleted = 0 and `status` <> 'Inprogress' and convert(`Date`,date) = CURRENT_DATE  ;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_TruncateInprogressInventory` */

drop procedure if exists `Sp_TruncateInprogressInventory`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_TruncateInprogressInventory`()
BEGIN
	truncate table tbl_inventory_inprogress;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_Update1Plus1Discount` */

drop procedure if exists `Sp_Update1Plus1Discount`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Update1Plus1Discount`(          
	 arg_ItemId int
	)
BEGIN
  declare varbacode NVARCHAR(50);
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_Update1Plus1Discount');
	
          
    END;
	
   START TRANSACTION;
	
	
       
           
		update  tbl_inventory set Is1Plus1Discount = 1 where Id = arg_ItemId;
	 
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateExcahngeSaleDetail` */

drop procedure if exists `Sp_UpdateExcahngeSaleDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateExcahngeSaleDetail`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_OldBarcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateExcahngeSaleDetail');
	
           
    END;
	
   START TRANSACTION;
	
	
		 insert into `tbl_saledetail` 
		(InvoiceNo, Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, 
		DiscountPercentage, Quantity, Amount, Remark)
		values
		(arg_InvoiceNumber, arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
		arg_DiscountPercentage, arg_Quantity, arg_Amount, 'Behaf of Exchange');
		insert into `tbl_inventory_sold` 
		(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity,Expiry)
		values
		(arg_Barcode, arg_ItemName, arg_MRP, arg_BuyPrice, arg_SalePrice, arg_Discount, 
		arg_DiscountPercentage, arg_Quantity,now());
		delete from tbl_inventory where barcode = arg_Barcode and Quantity = 1;
		
		update tbl_saledetail set Amount = 0 , Remark = 'Exchanged' where barcode = arg_OldBarcode;
		insert into tbl_inventory(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry) select Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry from tbl_inventory_sold where barcode = arg_OldBarcode;
		delete from tbl_inventory_sold where barcode = arg_OldBarcode;
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateHRFInstruction` */

drop procedure if exists `Sp_UpdateHRFInstruction`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateHRFInstruction`( 
arg_HRF_Code varchar(10),        
arg_Show_Hide bool
)
BEGIN
  
	update tbl_hrf_instruction set Show_Hide = arg_Show_Hide where HRF_Code = arg_HRF_Code;
        select 1 As ID;
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateHRFPritingData` */

drop procedure if exists `Sp_UpdateHRFPritingData`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateHRFPritingData`(
arg_Barcode varchar(50),
arg_HRF_1 varchar(50),
arg_HRF_2 varchar(50),
arg_HRF_3 varchar(50),
arg_HRF_4 varchar(50),
arg_HRF_5 varchar(50),
arg_HRF_6 varchar(50),
arg_HRF_7 varchar(50),
arg_HRF_8 varchar(50),
arg_HRF_9 varchar(50),
arg_HRF_10 varchar(50),
arg_HRF_11 varchar(50),
arg_HRF_12 varchar(50),
arg_HRF_13 varchar(50),
arg_HRF_14 varchar(50),
arg_HRF_15 varchar(50),
arg_Print_Quantity int,
arg_ID int
)
BEGIN
	update `tbl_hrf_printing_data` 
	set Barcode = arg_Barcode,HRF_1 = arg_HRF_1, HRF_2 = arg_HRF_2, HRF_3 = arg_HRF_3, HRF_4 = arg_HRF_4, HRF_5 = arg_HRF_5,
	HRF_6 = arg_HRF_6, HRF_7 = arg_HRF_7, HRF_8 = arg_HRF_8, HRF_9 = arg_HRF_9, HRF_10 = arg_HRF_10, HRF_11 = arg_HRF_11,
	HRF_12 = arg_HRF_12, HRF_13 = arg_HRF_13, HRF_14 = arg_HRF_14, HRF_15 = arg_HRF_15,Print_Quantity = arg_Print_Quantity where ID = arg_ID ;
	
         select arg_ID as ppid;
	
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateInventor` */

drop procedure if exists `Sp_UpdateInventor`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateInventor`( 
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
	 arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
arg_Expiry NVARCHAR(50)
	)
BEGIN
 DECLARE var_barcodecheck varchar(100);
DECLARE var_name varchar(100);
  declare var_POID int;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateInventor');
	
           
    END;
	
   START TRANSACTION;
	 
        
         set var_barcodecheck ='';
         select barcode into var_barcodecheck from tbl_inventory where barcode= arg_Barcode limit 1;
        
	IF (var_barcodecheck <> '')
	then
		update `tbl_inventory` set
		  ItemName = arg_ItemName, MRP = arg_MRP, BuyPrice = arg_BuyPrice, SalePrice = arg_SalePrice, Discount = arg_Discount,
		  DiscountPercentage = arg_DiscountPercentage, Quantity = arg_Quantity where  barcode = arg_Barcode;
		select ItemName into var_name from tbl_namemaster where ItemName = arg_ItemName limit 1;
		if(var_name is null)
		then
			insert into tbl_namemaster(ItemName) values(arg_ItemName);
		end if;
		if ( arg_Quantity > 1)
		then
			if(select barcode from tbl_inventoryMasterUnit  where barcode= arg_Barcode)
			then
				update `tbl_inventoryMasterUnit` set
				ItemName = arg_ItemName, MRP = arg_MRP, BuyPrice = arg_BuyPrice, SalePrice = arg_SalePrice, Discount = arg_Discount,
				DiscountPercentage = arg_DiscountPercentage, Quantity = arg_Quantity where  barcode = arg_Barcode;
			else
				insert into `tbl_inventoryMasterUnit` 
				(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
				Quantity, Expiry)
				values
				(arg_Barcode, arg_ItemName, arg_MRP,arg_BuyPrice, arg_SalePrice, arg_Discount, arg_DiscountPercentage, 
				arg_Quantity, arg_Expiry);
			end if;
		else
			delete from tbl_inventoryMasterUnit  where barcode= arg_Barcode;
		end if;
		SELECT '1' AS Success;
	ELSE
		Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
			 values(null,null,'Barcodenotfound', null, null,null,arg_Barcode);
		SELECT '0' AS Success;
	END IF;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateModuleAccess` */

drop procedure if exists `Sp_UpdateModuleAccess`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateModuleAccess`( 
arg_GroupID int,
arg_ModuleID int,         
arg_Access bool,
arg_LoginUser nvarchar(50),
arg_ModuleName nvarchar(50),
arg_GroupName nvarchar(50)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateModuleAccess');
	
          
    END;
	
   START TRANSACTION;
	insert into `tbl_useraudit` 
		(AdminName, Actions, ActionDate)
		values
		(arg_LoginUser, concat('Updated ',arg_GroupName,' module access( ',arg_ModuleName,' ,', arg_Access,' )' ), now());
	update tbl_appmoduleaccess set access=arg_Access where groupid=arg_GroupID and moduleID = arg_ModuleID;
        select 1 as ID;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateQuotationDetail` */

drop procedure if exists `Sp_UpdateQuotationDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateQuotationDetail`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ExtraDiscount int,
	 arg_CustomerName NVARCHAR(50),
         arg_PaymentBy NVARCHAR(20),	 
	 arg_GST int, 
	 arg_DueAmount int,
	 arg_Status NVARCHAR(50),
	 arg_PaidAmount int,
	 arg_CustomerMobile NVARCHAR(50),
	 arg_CustomerGST NVARCHAR(50),
         arg_LoginUser  NVARCHAR(50)
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateQuotationDetail');
	
          
    END;
	
   START TRANSACTION;
	
      update tbl_sale_quotation set 
	ExtraDiscount = arg_ExtraDiscount, 
	CustomerName = arg_CustomerName, PaymentBy = arg_PaymentBy,
	GST = arg_GST, DueAmount = arg_DueAmount,`Status` = arg_Status,
	PaidAmount = arg_PaidAmount,CustomerMobile= arg_CustomerMobile, CustomerGST = arg_CustomerGST
        where InvoiceNo = arg_InvoiceNumber;
       	
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateReturnSaleDetail` */

drop procedure if exists `Sp_UpdateReturnSaleDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateReturnSaleDetail`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),	 
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateReturnSaleDetail');
	
          
    END;
	
   START TRANSACTION;
	
	
		
		
		
		
		update tbl_saledetail set Amount = 0 , Remark = 'Returned' where barcode = arg_Barcode;
		insert into tbl_inventory(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry) select Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
		Quantity, Expiry from tbl_inventory_sold where barcode = arg_Barcode;
		delete from tbl_inventory_sold where barcode = arg_Barcode;
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateSale` */

drop procedure if exists `Sp_UpdateSale`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateSale`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_Barcode NVARCHAR(50),
	 arg_ItemName NVARCHAR(50),
         arg_MRP int,	 
	 arg_BuyPrice int, 
	 arg_SalePrice int,
	 arg_Discount int,
	 arg_DiscountPercentage int,
	 arg_Quantity int,
         arg_Amount int
	)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateSale');
	
           
    END;
	
   START TRANSACTION;
	
      update tbl_saledetail set 
	Discount = arg_Discount, 
	Quantity =arg_Quantity, Amount = arg_Amount where Barcode = arg_Barcode and InvoiceNo = arg_InvoiceNumber;
	
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateSaleDetail` */

drop procedure if exists `Sp_UpdateSaleDetail`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateSaleDetail`( 
         arg_InvoiceNumber NVARCHAR(50),        
	 arg_ExtraDiscount int,
	 arg_CustomerName NVARCHAR(50),
         arg_PaymentBy NVARCHAR(20),	 
	 arg_GST int, 
	 arg_DueAmount int,
	 arg_Status NVARCHAR(50),
	 arg_PaidAmount int,
	 arg_CustomerMobile NVARCHAR(50),
	 arg_CustomerGST NVARCHAR(50),
         arg_LoginUser  NVARCHAR(50)
	)
BEGIN
  declare varuserid int;  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateSaleDetail');
	
          
    END;
	
   START TRANSACTION;
	select id into varuserid from tbl_moduleaccess where DisplayName = arg_LoginUser limit 1;
      update tbl_sale set 
	ExtraDiscount = arg_ExtraDiscount, 
	CustomerName = arg_CustomerName, PaymentBy = arg_PaymentBy,
	GST = arg_GST, DueAmount = arg_DueAmount,`Status` = arg_Status,
	PaidAmount = arg_PaidAmount,CustomerMobile= arg_CustomerMobile, CustomerGST = arg_CustomerGST,userid = varuserid
        where InvoiceNo = arg_InvoiceNumber;
       	
	insert into `tbl_inventory_sold` 
	(Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, 
	Quantity, Expiry)
	select 	 Barcode, ItemName, MRP, BuyPrice, SalePrice, Discount, DiscountPercentage, Quantity, Expiry 
	from vtbl_soldbarcods where InvoiceNo = arg_InvoiceNumber and Quantity = 1;
       delete from tbl_inventory where Quantity = 1 and barcode in(
		select tbl_saledetail.barcode  from tbl_saledetail left join tbl_inventorymasterunit on tbl_saledetail.barcode=tbl_inventorymasterunit.barcode 
		where tbl_inventorymasterunit.barcode is null and InvoiceNo = arg_InvoiceNumber
		);
	update tbl_inventory set Quantity = Quantity -1 where barcode in(
		select tbl_saledetail.barcode from tbl_saledetail inner join tbl_inventorymasterunit on tbl_saledetail.barcode=tbl_inventorymasterunit.barcode
		where InvoiceNo = arg_InvoiceNumber
		);
	insert into `tbl_salehistory` 
	(LoginUser, Customer, TotalBill, PaidAmount, DueAmount, DiscountOnBill, 
	InvoiceNumner, Date)
	values
	(arg_LoginUser, arg_CustomerName, (arg_ExtraDiscount+arg_DueAmount+arg_PaidAmount), arg_PaidAmount, arg_DueAmount, arg_ExtraDiscount, 
	arg_InvoiceNumber, now());
       Select 'Success' as result;
   COMMIT; 
END$$

DELIMITER ;$$

/* Procedure structure for procedure `Sp_UpdateShopeVariable` */

drop procedure if exists `Sp_UpdateShopeVariable`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UpdateShopeVariable`(
arg_Key nvarchar(50),
arg_Value nvarchar(500)
)
BEGIN
  
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	 ROLLBACK;
	Insert into TBL_ErrorLog (ErrorNumber,ErrorLine,ErrorMessage,ErrorSeverity,ErrorState,createdOn,ProcedureName)
	 values(null,null,'Error ocured', null, null,null,'Sp_UpdateShopeVariable');
	
          
    END;
	
   START TRANSACTION;
	
    update `tbl_appsetup` set VariableValue = arg_Value where VariableKey =  arg_Key ;
    select 1 As ID;
	
   COMMIT; 
END$$

DELIMITER ;$$

/* Function  structure for function  `fntbl_abc` */

drop function  if exists `fntbl_abc`;

DELIMITER $$;

CREATE DEFINER=`root`@`localhost` FUNCTION `fntbl_abc`() RETURNS varchar(10) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
BEGIN
    DECLARE var_abc varchar(100); 
     select name into var_abc from tbl_employee limit 1;
 return var_abc;
END$$

DELIMITER ;$$

SET SQL_MODE=@OLD_SQL_MODE;