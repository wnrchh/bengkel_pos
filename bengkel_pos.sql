/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : bengkel_pos

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 06/08/2023 10:16:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  INDEX `ci_sessions_timestamp`(`timestamp` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('l99ni1cmmkupqdovavuaonsc5kcl7ot3', '::1', 1691291665, 0x5F5F63695F6C6173745F726567656E65726174657C693A313639313239313636313B63757272656E63797C733A323A225270223B63757272656E63795F706C6163656D656E747C733A343A224C656674223B63757272656E63795F636F64657C4E3B766965775F646174657C733A31303A2264642D6D6D2D79797979223B766965775F74696D657C733A323A223234223B6661696C65647C733A32383A22496E76616C696420757365726E616D6520262070617373776F72642E223B5F5F63695F766172737C613A313A7B733A363A226661696C6564223B733A333A226F6C64223B7D);

-- ----------------------------
-- Table structure for db_brands
-- ----------------------------
DROP TABLE IF EXISTS `db_brands`;
CREATE TABLE `db_brands`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brand_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_brands
-- ----------------------------
INSERT INTO `db_brands` VALUES (2, 'CT0002', 'Dunlop', '', NULL, 1);
INSERT INTO `db_brands` VALUES (3, 'CT0003', 'General', '', NULL, 1);

-- ----------------------------
-- Table structure for db_category
-- ----------------------------
DROP TABLE IF EXISTS `db_category`;
CREATE TABLE `db_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_category
-- ----------------------------
INSERT INTO `db_category` VALUES (1, 'CT0001', 'Sparepart', '', NULL, 1);
INSERT INTO `db_category` VALUES (2, 'CT0002', 'Service', '', NULL, 1);

-- ----------------------------
-- Table structure for db_cobpayments
-- ----------------------------
DROP TABLE IF EXISTS `db_cobpayments`;
CREATE TABLE `db_cobpayments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` time NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_cobpayments
-- ----------------------------

-- ----------------------------
-- Table structure for db_company
-- ----------------------------
DROP TABLE IF EXISTS `db_company`;
CREATE TABLE `db_company`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_code` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_website` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `website` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `logo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `upi_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `upi_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `country` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `postcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gst_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vat_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pan_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cid` int NULL DEFAULT NULL,
  `category_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'INITAL CODE',
  `supplier_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'INITAL CODE',
  `purchase_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'INITAL CODE',
  `purchase_return_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'INITAL CODE',
  `sales_init` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'INITAL CODE',
  `sales_return_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expense_init` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `invoice_view` int NULL DEFAULT NULL COMMENT '1=Standard,2=Indian GST',
  `status` int NULL DEFAULT NULL,
  `sms_status` int NULL DEFAULT NULL COMMENT '1=Enable 0=Disable',
  `sales_terms_and_conditions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_company
-- ----------------------------
INSERT INTO `db_company` VALUES (1, '', 'BJM', NULL, '11223344', '11223344', 'admin@example.com', '', 'logooo.png', 'logo-0.png', '', NULL, '', '', 'Batam', 'Address Details', '', '', '', '', '', 1, 'CT', 'IT', 'SP', 'PU', 'PR', 'CU', 'SL', 'PR', 'EX', 1, 1, 0, '');

-- ----------------------------
-- Table structure for db_country
-- ----------------------------
DROP TABLE IF EXISTS `db_country`;
CREATE TABLE `db_country`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(4050) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `added_on` date NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_country
-- ----------------------------
INSERT INTO `db_country` VALUES (3, NULL, 'Indonesia', NULL, NULL, 1);

-- ----------------------------
-- Table structure for db_currency
-- ----------------------------
DROP TABLE IF EXISTS `db_currency`;
CREATE TABLE `db_currency`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currency_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currency` blob NULL,
  `symbol` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_currency
-- ----------------------------
INSERT INTO `db_currency` VALUES (1, 'Bulgaria-Bulgarian lev(BGN)', NULL, 0xD0BBD0B2, NULL, 1);
INSERT INTO `db_currency` VALUES (2, 'Switzerland \r-Swiss franc (CHF)', NULL, 0x434846, NULL, 1);
INSERT INTO `db_currency` VALUES (3, 'Czechia-Czech koruna(CZK))', NULL, 0x4BC48D20, NULL, 1);
INSERT INTO `db_currency` VALUES (4, 'Denmark-Danish krone(DKK)', NULL, 0x6B7220, NULL, 1);
INSERT INTO `db_currency` VALUES (5, 'Euro area countries -Euro(EUR)', NULL, 0xE282AC20, NULL, 1);
INSERT INTO `db_currency` VALUES (6, 'United Kingdom-Pounds sterling (GBP)', NULL, 0xC2A3, NULL, 1);
INSERT INTO `db_currency` VALUES (7, 'Croatia -Croatian Kuna (HRK)', NULL, 0x6B6E, NULL, 1);
INSERT INTO `db_currency` VALUES (8, 'Georgia -Georgian lari (GEL)', NULL, 0x2623383338323B, NULL, 1);
INSERT INTO `db_currency` VALUES (9, 'Hungary -Hungarian forint (HUF)', NULL, 0x6674, NULL, 1);
INSERT INTO `db_currency` VALUES (10, 'Norway -Norwegian krone (NOK)', NULL, 0x6B72, NULL, 1);
INSERT INTO `db_currency` VALUES (11, 'Poland -Polish zloty (PLN)', NULL, 0x7AC58220, NULL, 1);
INSERT INTO `db_currency` VALUES (12, 'Russia -Russian ruble (RUB)', NULL, 0x2623383338313B20, NULL, 1);
INSERT INTO `db_currency` VALUES (13, 'Romania -Romanian leu (RON)', NULL, 0x6C6569, NULL, 1);
INSERT INTO `db_currency` VALUES (14, 'Sweden - Swedish krona (SEK)', NULL, 0x6B72, NULL, 1);
INSERT INTO `db_currency` VALUES (15, 'Turkey -Turkish lira (TRY)', NULL, 0x2623383337383B20, NULL, 1);
INSERT INTO `db_currency` VALUES (16, 'Ukraine - Ukrainian hryvna  (UAH)', NULL, 0xE282B420, NULL, 1);
INSERT INTO `db_currency` VALUES (17, 'UAE -Emirati dirham (AED)', NULL, 0xD8AF2ED8A520, NULL, 1);
INSERT INTO `db_currency` VALUES (18, 'Israel - Israeli shekel (ILS)', NULL, 0x2623383336323B20, NULL, 1);
INSERT INTO `db_currency` VALUES (19, 'Kenya - Kenyan shilling(KES)', NULL, 0x4B7368, NULL, 1);
INSERT INTO `db_currency` VALUES (20, 'Morocco - Moroccan dirham (MAD)', NULL, 0x2ED8AF2ED98520, NULL, 1);
INSERT INTO `db_currency` VALUES (21, 'Nigeria - Nigerian naira (NGN)', NULL, 0xE282A620, NULL, 1);
INSERT INTO `db_currency` VALUES (22, 'South Africa -South african rand** (ZAR)', NULL, 0x52, NULL, 1);
INSERT INTO `db_currency` VALUES (23, 'Brazil- Brazilian real(BRL)', NULL, 0x5224, NULL, 1);
INSERT INTO `db_currency` VALUES (24, 'Canada-Canadian dollars (CAD)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (25, 'Chile -Chilean peso (CLP)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (26, 'Colombia -Colombian peso (COP)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (27, 'Mexico - Mexican peso (MXN)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (28, 'Peru -Peruvian sol(PEN)', NULL, 0x532F2E20, NULL, 1);
INSERT INTO `db_currency` VALUES (29, 'USA -US dollar (USD)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (30, 'Australia -Australian dollars (AUD)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (31, 'Bangladesh -Bangladeshi taka (BDT) ', NULL, 0x2623323534373B20, NULL, 1);
INSERT INTO `db_currency` VALUES (32, 'China - Chinese yuan (CNY)', NULL, 0x262332303830333B20, NULL, 1);
INSERT INTO `db_currency` VALUES (33, 'Hong Kong - Hong Kong dollar(HKD)', NULL, 0x262333363B20, NULL, 1);
INSERT INTO `db_currency` VALUES (34, 'Indonesia - Indonesian rupiah (IDR)', NULL, 0x5270, NULL, 1);
INSERT INTO `db_currency` VALUES (35, 'India - Indian rupee', 'INR', 0xE282B9, '?', 1);
INSERT INTO `db_currency` VALUES (36, 'Japan - Japanese yen (JPY)', NULL, 0xC2A5, NULL, 1);
INSERT INTO `db_currency` VALUES (37, 'Malaysia - Malaysian ringgit (MYR)', NULL, 0x524D, NULL, 1);
INSERT INTO `db_currency` VALUES (38, 'New Zealand - New Zealand dollar (NZD)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (39, 'Philippines- Philippine peso (PHP)', NULL, 0xE282B120, NULL, 1);
INSERT INTO `db_currency` VALUES (40, 'Pakistan- Pakistani rupee (PKR)', NULL, 0x527320, NULL, 1);
INSERT INTO `db_currency` VALUES (41, 'Singapore - Singapore dollar (SGD)', NULL, 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (42, 'South Korea - South Korean won (KRW)', NULL, 0x2623383336313B20, NULL, 1);
INSERT INTO `db_currency` VALUES (43, 'Sri Lanka - Sri Lankan rupee (LKR)', NULL, 0x5273, NULL, 1);
INSERT INTO `db_currency` VALUES (44, 'Thailand- Thai baht (THB)', NULL, 0x2623333634373B20, NULL, 1);
INSERT INTO `db_currency` VALUES (45, 'Vietnam - Vietnamese dong', 'VND', 0xE282AB, NULL, 1);
INSERT INTO `db_currency` VALUES (46, 'Bitcoin - BTC or XBT', 'BTC ', 0xE282BF, NULL, 1);
INSERT INTO `db_currency` VALUES (47, 'Ripples', 'XRP', 0x585250, NULL, 1);
INSERT INTO `db_currency` VALUES (48, 'Monero', 'XMR', 0xC9B1, NULL, 1);
INSERT INTO `db_currency` VALUES (49, 'Litecoin', 'LTC', 0xC581, NULL, 1);
INSERT INTO `db_currency` VALUES (50, 'Ethereum', 'ETH', 0xCE9E, NULL, 1);
INSERT INTO `db_currency` VALUES (51, 'Euro', 'EUR', 0xE282AC, NULL, 1);
INSERT INTO `db_currency` VALUES (52, 'Pounds sterling', 'GBP', 0xC2A3, NULL, 1);
INSERT INTO `db_currency` VALUES (53, 'US dollar', 'USD', 0x24, NULL, 1);
INSERT INTO `db_currency` VALUES (54, 'Japanese yen', 'JPY', 0xC2A5, NULL, 1);
INSERT INTO `db_currency` VALUES (55, 'Omani rial', 'OMR', 0xD8B12ED8B92E, NULL, 1);

-- ----------------------------
-- Table structure for db_customer_payments
-- ----------------------------
DROP TABLE IF EXISTS `db_customer_payments`;
CREATE TABLE `db_customer_payments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `salespayment_id` int NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  INDEX `salespayment_id`(`salespayment_id` ASC) USING BTREE,
  CONSTRAINT `db_customer_payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `db_customer_payments_ibfk_2` FOREIGN KEY (`salespayment_id`) REFERENCES `db_salespayments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_customer_payments
-- ----------------------------
INSERT INTO `db_customer_payments` VALUES (2, 1, 4, '2023-07-29', 'Cash', 69000.00, '', '::1', 'DESKTOP-92LTQFI', '01:15:51', '2023-07-29', 'admin', 1);
INSERT INTO `db_customer_payments` VALUES (3, 2, 4, '2023-07-29', 'Cash', 500.00, '', '::1', 'DESKTOP-92LTQFI', '01:16:28', '2023-07-29', 'admin', 1);
INSERT INTO `db_customer_payments` VALUES (12, 3, 1, '2023-07-29', 'Cash', 396000.00, 'Paid By Cash', '::1', 'DESKTOP-92LTQFI', '01:19:23', '2023-07-29', 'admin', 1);
INSERT INTO `db_customer_payments` VALUES (13, 4, 1, '2023-07-29', 'Cash', 500000.00, 'Paid By Cash', '::1', 'DESKTOP-92LTQFI', '01:22:33', '2023-07-29', 'admin', 1);
INSERT INTO `db_customer_payments` VALUES (14, 5, 1, '2023-07-29', 'Cash', 1136200.00, 'Paid By Cash', '::1', 'DESKTOP-92LTQFI', '01:24:32', '2023-07-29', 'admin', 1);
INSERT INTO `db_customer_payments` VALUES (15, 6, 1, '2023-07-29', 'Cash', 982600.00, 'Paid By Cash', '::1', 'DESKTOP-92LTQFI', '01:25:51', '2023-07-29', 'admin', 1);
INSERT INTO `db_customer_payments` VALUES (19, 7, 5, '2023-07-29', 'Cash', 1000000.00, 'Paid By Cash', '::1', 'DESKTOP-92LTQFI', '01:54:41', '2023-07-29', 'admin', 1);

-- ----------------------------
-- Table structure for db_customers
-- ----------------------------
DROP TABLE IF EXISTS `db_customers`;
CREATE TABLE `db_customers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gstin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vatin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `opening_balance` double(20, 2) NULL DEFAULT NULL,
  `sales_due` double(20, 2) NULL DEFAULT NULL,
  `sales_return_due` double(20, 2) NULL DEFAULT NULL,
  `country_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `plat_nomor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `merk_kendaraan` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_customers
-- ----------------------------
INSERT INTO `db_customers` VALUES (1, 'CU0001', 'Walk-in customer', '', '111', '', '', '', NULL, NULL, 0.00, 0.00, '', '', NULL, '', '', NULL, NULL, '2019-01-01', '10:55:54 pm', 'admin', NULL, 1, '', NULL);
INSERT INTO `db_customers` VALUES (4, 'CU0002', 'Haris', '11223344', '11223344', '11@gmail.com', '', '', NULL, 0.00, 0.00, NULL, '3', '1', 'Batam', '', '', '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:14:54', 'admin', NULL, 1, NULL, NULL);
INSERT INTO `db_customers` VALUES (5, 'CU0005', 'Winrich', '11', '', '11@gmail.com', '', '', NULL, 0.00, 0.00, NULL, '3', NULL, '', '', '', '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:52:29', 'admin', NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for db_expense
-- ----------------------------
DROP TABLE IF EXISTS `db_expense`;
CREATE TABLE `db_expense`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `expense_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `expense_date` date NULL DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expense_for` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expense_amt` double(20, 2) NULL DEFAULT NULL,
  `note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_expense
-- ----------------------------
INSERT INTO `db_expense` VALUES (1, 'EX0001', 1, '2023-07-29', '', 'Gaji Kasir', 3000000.00, '', 'admin', '2023-07-29', '01:33:58', '::1', 'DESKTOP-92LTQFI', 1);
INSERT INTO `db_expense` VALUES (2, 'EX0002', 2, '2023-07-29', '', 'Gaji Mekanik', 4000000.00, '', 'admin', '2023-07-29', '01:34:10', '::1', 'DESKTOP-92LTQFI', 1);
INSERT INTO `db_expense` VALUES (3, 'EX0003', 3, '2023-07-29', '', 'Gaji Helper', 2000000.00, '', 'admin', '2023-07-29', '01:34:24', '::1', 'DESKTOP-92LTQFI', 1);
INSERT INTO `db_expense` VALUES (4, 'EX0004', 4, '2023-07-29', '', 'Biaya Listrik', 1500000.00, '', 'admin', '2023-07-29', '01:34:40', '::1', 'DESKTOP-92LTQFI', 1);
INSERT INTO `db_expense` VALUES (5, 'EX0005', 5, '2023-07-29', '', 'Biaya Air', 200000.00, '', 'admin', '2023-07-29', '01:34:54', '::1', 'DESKTOP-92LTQFI', 1);

-- ----------------------------
-- Table structure for db_expense_category
-- ----------------------------
DROP TABLE IF EXISTS `db_expense_category`;
CREATE TABLE `db_expense_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_expense_category
-- ----------------------------
INSERT INTO `db_expense_category` VALUES (1, 'EC0001', 'Gaji Kasir', '', 'admin', 1);
INSERT INTO `db_expense_category` VALUES (2, 'EC0002', 'Gaji Mekanik', '', 'admin', 1);
INSERT INTO `db_expense_category` VALUES (3, 'EC0003', 'Gaji Helper', '', 'admin', 1);
INSERT INTO `db_expense_category` VALUES (4, 'EC0004', 'Biaya Listrik', '', 'admin', 1);
INSERT INTO `db_expense_category` VALUES (5, 'EC0005', 'BIaya Air', '', 'admin', 1);

-- ----------------------------
-- Table structure for db_hold
-- ----------------------------
DROP TABLE IF EXISTS `db_hold`;
CREATE TABLE `db_hold`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sales_date` date NULL DEFAULT NULL,
  `sales_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `other_charges_input` double(20, 2) NULL DEFAULT NULL,
  `other_charges_tax_id` int NULL DEFAULT NULL,
  `other_charges_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_input` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tot_discount_to_all_amt` double(20, 2) NULL DEFAULT NULL,
  `subtotal` double(20, 2) NULL DEFAULT NULL,
  `round_off` double(20, 2) NULL DEFAULT NULL,
  `grand_total` double(20, 2) NULL DEFAULT NULL,
  `sales_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pos` int NULL DEFAULT NULL COMMENT '1=yes 0=no',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `db_hold_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_hold
-- ----------------------------

-- ----------------------------
-- Table structure for db_holditems
-- ----------------------------
DROP TABLE IF EXISTS `db_holditems`;
CREATE TABLE `db_holditems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `hold_id` int NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sales_qty` double(20, 2) NULL DEFAULT NULL,
  `price_per_unit` double(20, 2) NULL DEFAULT NULL,
  `tax_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax_id` int NULL DEFAULT NULL,
  `tax_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_input` double(20, 2) NULL DEFAULT NULL,
  `discount_amt` double(20, 2) NULL DEFAULT NULL,
  `unit_total_cost` double(20, 2) NULL DEFAULT NULL,
  `total_cost` double(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sales_id`(`hold_id` ASC) USING BTREE,
  INDEX `item_id`(`item_id` ASC) USING BTREE,
  CONSTRAINT `db_holditems_ibfk_2` FOREIGN KEY (`hold_id`) REFERENCES `db_hold` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `db_holditems_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `db_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_holditems
-- ----------------------------

-- ----------------------------
-- Table structure for db_items
-- ----------------------------
DROP TABLE IF EXISTS `db_items`;
CREATE TABLE `db_items`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `custom_barcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category_id` int NULL DEFAULT NULL,
  `sku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hsn` varbinary(50) NULL DEFAULT NULL,
  `unit_id` int NULL DEFAULT NULL,
  `alert_qty` int NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `lot_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expire_date` date NULL DEFAULT NULL,
  `price` double(20, 2) NULL DEFAULT NULL,
  `tax_id` int NULL DEFAULT NULL,
  `purchase_price` double(20, 2) NULL DEFAULT NULL,
  `tax_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `profit_margin` double(20, 2) NULL DEFAULT NULL,
  `sales_price` double(20, 2) NULL DEFAULT NULL,
  `final_price` double(20, 2) NULL DEFAULT NULL,
  `stock` double(20, 2) NULL DEFAULT NULL,
  `item_image` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `discount_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount` double(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_items
-- ----------------------------
INSERT INTO `db_items` VALUES (1, 'IT0001', '', 'Ban', '', 1, '', '', 1, 0, 3, '', NULL, 180000.00, 1, 180000.00, 'Exclusive', 10.00, 198000.00, 198000.00, 96.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:06:04', 'admin', NULL, 1, 'Percentage', 0.00);
INSERT INTO `db_items` VALUES (2, 'IT0002', '', 'Oli', '', 1, '', '', 5, 0, 3, '', NULL, 45000.00, 1, 45000.00, 'Exclusive', 10.00, 49500.00, 49500.00, 97.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:06:26', 'admin', NULL, 1, 'Percentage', 0.00);
INSERT INTO `db_items` VALUES (3, 'IT0003', '', 'Bola Lampu', '', 1, '', '', 1, 0, 3, '', NULL, 35000.00, 1, 35000.00, 'Exclusive', 10.00, 38500.00, 38500.00, 98.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:06:49', 'admin', NULL, 1, 'Percentage', 0.00);
INSERT INTO `db_items` VALUES (4, 'IT0004', '', 'Baterai', '', 1, '', '', 1, 0, 3, '', NULL, 450000.00, 1, 450000.00, 'Exclusive', 10.00, 495000.00, 495000.00, 96.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:07:08', 'admin', NULL, 1, 'Percentage', 0.00);
INSERT INTO `db_items` VALUES (5, 'IT0005', '', 'Jok Motor', '', 1, '', '', 1, 0, 3, '', NULL, 250000.00, 1, 250000.00, 'Exclusive', 10.00, 275000.00, 275000.00, 98.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:07:28', 'admin', NULL, 1, 'Percentage', 0.00);
INSERT INTO `db_items` VALUES (6, 'IT0006', '', 'Jasa Service', '', 2, '', '', 8, 0, 3, '', NULL, 0.00, 1, 0.00, 'Exclusive', NULL, 0.00, 0.00, 999999995.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:08:16', 'admin', NULL, 1, 'Percentage', 0.00);
INSERT INTO `db_items` VALUES (7, 'IT0007', '', 'Paket Service', '', 2, '', '', 4, 0, 3, '', NULL, 0.00, 1, 0.00, 'Exclusive', NULL, 0.00, 0.00, 999999998.00, NULL, '::1', 'DESKTOP-92LTQFI', '2023-07-29', '01:08:43', 'admin', NULL, 1, 'Percentage', 0.00);

-- ----------------------------
-- Table structure for db_languages
-- ----------------------------
DROP TABLE IF EXISTS `db_languages`;
CREATE TABLE `db_languages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_languages
-- ----------------------------
INSERT INTO `db_languages` VALUES (1, 'English', 1);
INSERT INTO `db_languages` VALUES (2, 'Hindi', 1);
INSERT INTO `db_languages` VALUES (3, 'Kannada', 1);
INSERT INTO `db_languages` VALUES (4, 'Indonesian', 1);
INSERT INTO `db_languages` VALUES (5, 'Chinese', 1);
INSERT INTO `db_languages` VALUES (6, 'Russian', 1);
INSERT INTO `db_languages` VALUES (7, 'Spanish', 1);
INSERT INTO `db_languages` VALUES (8, 'Arabic', 1);
INSERT INTO `db_languages` VALUES (9, 'Albanian', 1);
INSERT INTO `db_languages` VALUES (10, 'Dutch', 1);
INSERT INTO `db_languages` VALUES (11, 'Bangla', 1);
INSERT INTO `db_languages` VALUES (12, 'Urdu', 1);
INSERT INTO `db_languages` VALUES (13, 'Italian', 1);
INSERT INTO `db_languages` VALUES (14, 'Marathi', 1);
INSERT INTO `db_languages` VALUES (15, 'Khmer', 1);
INSERT INTO `db_languages` VALUES (16, 'French', 1);
INSERT INTO `db_languages` VALUES (17, 'Gaul', 1);
INSERT INTO `db_languages` VALUES (18, 'Thailand', 1);

-- ----------------------------
-- Table structure for db_paymenttypes
-- ----------------------------
DROP TABLE IF EXISTS `db_paymenttypes`;
CREATE TABLE `db_paymenttypes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_paymenttypes
-- ----------------------------
INSERT INTO `db_paymenttypes` VALUES (1, 'Cash', 1);
INSERT INTO `db_paymenttypes` VALUES (2, 'Card', 1);
INSERT INTO `db_paymenttypes` VALUES (3, 'Paytm', 1);
INSERT INTO `db_paymenttypes` VALUES (4, 'Finance', 1);
INSERT INTO `db_paymenttypes` VALUES (5, 'QR', 1);
INSERT INTO `db_paymenttypes` VALUES (6, 'Gopay', 1);

-- ----------------------------
-- Table structure for db_permissions
-- ----------------------------
DROP TABLE IF EXISTS `db_permissions`;
CREATE TABLE `db_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL,
  `permissions` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_permissions
-- ----------------------------
INSERT INTO `db_permissions` VALUES (1, 2, 'sales_add');
INSERT INTO `db_permissions` VALUES (2, 2, 'sales_edit');
INSERT INTO `db_permissions` VALUES (3, 2, 'sales_delete');
INSERT INTO `db_permissions` VALUES (4, 2, 'sales_view');
INSERT INTO `db_permissions` VALUES (5, 2, 'sales_payment_view');
INSERT INTO `db_permissions` VALUES (6, 2, 'sales_payment_add');
INSERT INTO `db_permissions` VALUES (7, 2, 'sales_payment_delete');

-- ----------------------------
-- Table structure for db_purchase
-- ----------------------------
DROP TABLE IF EXISTS `db_purchase`;
CREATE TABLE `db_purchase`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `purchase_date` date NULL DEFAULT NULL,
  `purchase_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `supplier_id` int NULL DEFAULT NULL,
  `warehouse_id` int NULL DEFAULT NULL,
  `other_charges_input` double(20, 2) NULL DEFAULT NULL,
  `other_charges_tax_id` int NULL DEFAULT NULL,
  `other_charges_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_input` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tot_discount_to_all_amt` double(20, 2) NULL DEFAULT NULL,
  `subtotal` double(20, 2) NULL DEFAULT NULL COMMENT 'Purchased qty',
  `round_off` double(20, 2) NULL DEFAULT NULL COMMENT 'Pending Qty',
  `grand_total` double(20, 2) NULL DEFAULT NULL,
  `purchase_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `paid_amount` double(20, 2) NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `return_bit` int NULL DEFAULT NULL COMMENT 'Purchase return raised',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_purchase
-- ----------------------------
INSERT INTO `db_purchase` VALUES (1, 'PU0001', 'PO230729001', '2023-07-29', 'Received', 1, NULL, NULL, 0, NULL, NULL, 'in_percentage', NULL, 96000000.00, NULL, 96000000.00, '', 'Paid', 96000000.00, '2023-07-29', '01:13:15', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, NULL);

-- ----------------------------
-- Table structure for db_purchaseitems
-- ----------------------------
DROP TABLE IF EXISTS `db_purchaseitems`;
CREATE TABLE `db_purchaseitems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NULL DEFAULT NULL,
  `purchase_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `purchase_qty` double(20, 2) NULL DEFAULT NULL,
  `price_per_unit` double(20, 2) NULL DEFAULT NULL,
  `tax_id` int NULL DEFAULT NULL,
  `tax_amt` double(20, 2) NULL DEFAULT NULL,
  `tax_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_discount_per` double(20, 2) NULL DEFAULT NULL,
  `discount_amt` double(20, 2) NULL DEFAULT NULL,
  `unit_total_cost` double(20, 2) NULL DEFAULT NULL,
  `total_cost` double(20, 2) NULL DEFAULT NULL,
  `profit_margin_per` double(20, 2) NULL DEFAULT NULL,
  `unit_sales_price` double(20, 2) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `discount_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_input` double(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_purchaseitems
-- ----------------------------
INSERT INTO `db_purchaseitems` VALUES (1, 1, 'Received', 1, 100.00, 180000.00, 1, NULL, 'Exclusive', NULL, 0.00, 180000.00, 18000000.00, NULL, NULL, 1, '', 'Percentage', 0.00);
INSERT INTO `db_purchaseitems` VALUES (2, 1, 'Received', 2, 100.00, 45000.00, 1, NULL, 'Exclusive', NULL, 0.00, 45000.00, 4500000.00, NULL, NULL, 1, '', 'Percentage', 0.00);
INSERT INTO `db_purchaseitems` VALUES (3, 1, 'Received', 3, 100.00, 35000.00, 1, NULL, 'Exclusive', NULL, 0.00, 35000.00, 3500000.00, NULL, NULL, 1, '', 'Percentage', 0.00);
INSERT INTO `db_purchaseitems` VALUES (4, 1, 'Received', 4, 100.00, 450000.00, 1, NULL, 'Exclusive', NULL, 0.00, 450000.00, 45000000.00, NULL, NULL, 1, '', 'Percentage', 0.00);
INSERT INTO `db_purchaseitems` VALUES (5, 1, 'Received', 5, 100.00, 250000.00, 1, NULL, 'Exclusive', NULL, 0.00, 250000.00, 25000000.00, NULL, NULL, 1, '', 'Percentage', 0.00);

-- ----------------------------
-- Table structure for db_purchaseitemsreturn
-- ----------------------------
DROP TABLE IF EXISTS `db_purchaseitemsreturn`;
CREATE TABLE `db_purchaseitemsreturn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NULL DEFAULT NULL,
  `return_id` int NULL DEFAULT NULL,
  `return_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `return_qty` double(20, 2) NULL DEFAULT NULL,
  `price_per_unit` double(20, 2) NULL DEFAULT NULL,
  `tax_id` int NULL DEFAULT NULL,
  `tax_amt` double(20, 2) NULL DEFAULT NULL,
  `tax_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_discount_per` double(20, 2) NULL DEFAULT NULL,
  `discount_amt` double(20, 2) NULL DEFAULT NULL,
  `unit_total_cost` double(20, 2) NULL DEFAULT NULL,
  `total_cost` double(20, 2) NULL DEFAULT NULL,
  `profit_margin_per` double(20, 2) NULL DEFAULT NULL,
  `unit_sales_price` double(20, 2) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `discount_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_input` double(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_purchaseitemsreturn
-- ----------------------------

-- ----------------------------
-- Table structure for db_purchasepayments
-- ----------------------------
DROP TABLE IF EXISTS `db_purchasepayments`;
CREATE TABLE `db_purchasepayments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` time NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_purchasepayments
-- ----------------------------
INSERT INTO `db_purchasepayments` VALUES (1, 1, '2023-07-29', 'Cash', 96000000.00, '', '::1', 'DESKTOP-92LTQFI', '01:13:15', '2023-07-29', 'admin', 1);

-- ----------------------------
-- Table structure for db_purchasepaymentsreturn
-- ----------------------------
DROP TABLE IF EXISTS `db_purchasepaymentsreturn`;
CREATE TABLE `db_purchasepaymentsreturn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NULL DEFAULT NULL,
  `return_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` time NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_purchasepaymentsreturn
-- ----------------------------

-- ----------------------------
-- Table structure for db_purchasereturn
-- ----------------------------
DROP TABLE IF EXISTS `db_purchasereturn`;
CREATE TABLE `db_purchasereturn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NULL DEFAULT NULL,
  `return_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `return_date` date NULL DEFAULT NULL,
  `return_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `supplier_id` int NULL DEFAULT NULL,
  `warehouse_id` int NULL DEFAULT NULL,
  `other_charges_input` double(20, 2) NULL DEFAULT NULL,
  `other_charges_tax_id` int NULL DEFAULT NULL,
  `other_charges_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_input` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tot_discount_to_all_amt` double(20, 2) NULL DEFAULT NULL,
  `subtotal` double(20, 2) NULL DEFAULT NULL COMMENT 'Purchased qty',
  `round_off` double(20, 2) NULL DEFAULT NULL COMMENT 'Pending Qty',
  `grand_total` double(20, 2) NULL DEFAULT NULL,
  `return_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `paid_amount` double(20, 2) NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_purchasereturn
-- ----------------------------

-- ----------------------------
-- Table structure for db_roles
-- ----------------------------
DROP TABLE IF EXISTS `db_roles`;
CREATE TABLE `db_roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_roles
-- ----------------------------
INSERT INTO `db_roles` VALUES (1, 'Admin', 'All Rights Permitted.', 1);
INSERT INTO `db_roles` VALUES (2, 'Kasir', '', 1);

-- ----------------------------
-- Table structure for db_sales
-- ----------------------------
DROP TABLE IF EXISTS `db_sales`;
CREATE TABLE `db_sales`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `plat_nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sales_date` date NULL DEFAULT NULL,
  `sales_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `warehouse_id` int NULL DEFAULT NULL,
  `other_charges_input` double(20, 2) NULL DEFAULT NULL,
  `other_charges_tax_id` int NULL DEFAULT NULL,
  `other_charges_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_input` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tot_discount_to_all_amt` double(20, 2) NULL DEFAULT NULL,
  `subtotal` double(20, 2) NULL DEFAULT NULL,
  `round_off` double(20, 2) NULL DEFAULT NULL,
  `grand_total` double(20, 2) NULL DEFAULT NULL,
  `sales_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `paid_amount` double(20, 2) NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `pos` int NULL DEFAULT NULL COMMENT '1=yes 0=no',
  `status` int NULL DEFAULT NULL,
  `return_bit` int NULL DEFAULT NULL COMMENT 'sales return raised',
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_sales
-- ----------------------------
INSERT INTO `db_sales` VALUES (1, 'SL0001', NULL, '2023-07-21', 'Final', 4, NULL, 0.00, NULL, 0.00, 0.00, 'in_percentage', 0.00, 69500.00, 0.00, 69500.00, NULL, 'Paid', 69500.00, '2023-07-29', '01:15:51', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, 1, NULL, NULL);
INSERT INTO `db_sales` VALUES (2, 'SL0002', '', '2023-07-22', 'Final', 1, NULL, 0.00, NULL, 0.00, 0.00, 'in_percentage', 0.00, 396000.00, 0.00, 396000.00, NULL, 'Paid', 396000.00, '2023-07-29', '01:19:23', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, 1, NULL, NULL);
INSERT INTO `db_sales` VALUES (3, 'SL0003', '', '2023-07-23', 'Final', 1, NULL, 0.00, NULL, 0.00, 0.00, 'in_percentage', 0.00, 500000.00, 0.00, 500000.00, NULL, 'Paid', 500000.00, '2023-07-29', '01:22:33', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, 1, NULL, NULL);
INSERT INTO `db_sales` VALUES (4, 'SL0004', '', '2023-07-24', 'Final', 1, NULL, 0.00, NULL, 0.00, 0.00, 'in_percentage', 0.00, 1136200.00, 0.00, 1136200.00, NULL, 'Paid', 1136200.00, '2023-07-29', '01:24:32', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, 1, NULL, NULL);
INSERT INTO `db_sales` VALUES (5, 'SL0005', '', '2023-07-25', 'Final', 1, NULL, 0.00, NULL, 0.00, 15.00, 'in_percentage', 173400.00, 1156000.00, -173400.00, 982600.00, NULL, 'Paid', 982600.00, '2023-07-29', '01:25:51', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, 1, NULL, NULL);
INSERT INTO `db_sales` VALUES (6, 'SL0006', NULL, '2023-07-29', 'Final', 5, NULL, 0.00, NULL, 0.00, 0.00, 'in_percentage', 0.00, 1000000.00, 0.00, 1000000.00, NULL, 'Paid', 1000000.00, '2023-07-29', '01:54:41', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for db_salesitems
-- ----------------------------
DROP TABLE IF EXISTS `db_salesitems`;
CREATE TABLE `db_salesitems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int NULL DEFAULT NULL,
  `sales_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sales_qty` double(20, 2) NULL DEFAULT NULL,
  `price_per_unit` double(20, 2) NULL DEFAULT NULL,
  `tax_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax_id` int NULL DEFAULT NULL,
  `tax_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_input` double(20, 2) NULL DEFAULT NULL,
  `discount_amt` double(20, 2) NULL DEFAULT NULL,
  `unit_total_cost` double(20, 2) NULL DEFAULT NULL,
  `total_cost` double(20, 2) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `purchase_price` double(20, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_salesitems
-- ----------------------------
INSERT INTO `db_salesitems` VALUES (1, 1, 'Final', 2, '', 1.00, 49500.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 49500.00, 49500.00, 1, 45000.00);
INSERT INTO `db_salesitems` VALUES (2, 1, 'Final', 6, '', 1.00, 20000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 20000.00, 20000.00, 1, 0.00);
INSERT INTO `db_salesitems` VALUES (3, 2, 'Final', 1, '', 2.00, 198000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 198000.00, 396000.00, 1, 180000.00);
INSERT INTO `db_salesitems` VALUES (4, 3, 'Final', 7, 'Ganti Oli,Servis Injeksi,Cas baterai', 1.00, 500000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 500000.00, 500000.00, 1, 0.00);
INSERT INTO `db_salesitems` VALUES (5, 4, 'Final', 1, '', 1.00, 198000.00, 'Exclusive', 1, NULL, 'Percentage', 10.00, 19800.00, 178200.00, 178200.00, 1, 180000.00);
INSERT INTO `db_salesitems` VALUES (6, 4, 'Final', 2, '', 1.00, 49500.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 49500.00, 49500.00, 1, 45000.00);
INSERT INTO `db_salesitems` VALUES (7, 4, 'Final', 3, '', 1.00, 38500.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 38500.00, 38500.00, 1, 35000.00);
INSERT INTO `db_salesitems` VALUES (8, 4, 'Final', 4, '', 1.00, 495000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 495000.00, 495000.00, 1, 450000.00);
INSERT INTO `db_salesitems` VALUES (9, 4, 'Final', 5, '', 1.00, 275000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 275000.00, 275000.00, 1, 250000.00);
INSERT INTO `db_salesitems` VALUES (10, 4, 'Final', 6, '', 1.00, 100000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 100000.00, 100000.00, 1, 0.00);
INSERT INTO `db_salesitems` VALUES (11, 5, 'Final', 1, '', 1.00, 198000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 198000.00, 198000.00, 1, 180000.00);
INSERT INTO `db_salesitems` VALUES (12, 5, 'Final', 5, '', 1.00, 275000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 275000.00, 275000.00, 1, 250000.00);
INSERT INTO `db_salesitems` VALUES (13, 5, 'Final', 2, '', 1.00, 49500.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 49500.00, 49500.00, 1, 45000.00);
INSERT INTO `db_salesitems` VALUES (14, 5, 'Final', 3, '', 1.00, 38500.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 38500.00, 38500.00, 1, 35000.00);
INSERT INTO `db_salesitems` VALUES (15, 5, 'Final', 4, '', 1.00, 495000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 495000.00, 495000.00, 1, 450000.00);
INSERT INTO `db_salesitems` VALUES (16, 5, 'Final', 6, '', 1.00, 100000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 100000.00, 100000.00, 1, 0.00);
INSERT INTO `db_salesitems` VALUES (17, 6, 'Final', 4, '', 2.00, 495000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 495000.00, 990000.00, 1, 450000.00);
INSERT INTO `db_salesitems` VALUES (18, 6, 'Final', 6, '', 1.00, 10000.00, 'Exclusive', 1, NULL, 'Percentage', 0.00, 0.00, 10000.00, 10000.00, 1, 0.00);

-- ----------------------------
-- Table structure for db_salesitemsreturn
-- ----------------------------
DROP TABLE IF EXISTS `db_salesitemsreturn`;
CREATE TABLE `db_salesitemsreturn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int NULL DEFAULT NULL,
  `return_id` int NULL DEFAULT NULL,
  `return_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `return_qty` double(20, 2) NULL DEFAULT NULL,
  `price_per_unit` double(20, 2) NULL DEFAULT NULL,
  `tax_id` int NULL DEFAULT NULL,
  `tax_amt` double(20, 2) NULL DEFAULT NULL,
  `tax_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_input` double(20, 2) NULL DEFAULT NULL,
  `discount_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_total_cost` double(20, 2) NULL DEFAULT NULL,
  `total_cost` double(20, 2) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `purchase_price` double(20, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_salesitemsreturn
-- ----------------------------

-- ----------------------------
-- Table structure for db_salespayments
-- ----------------------------
DROP TABLE IF EXISTS `db_salespayments`;
CREATE TABLE `db_salespayments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `change_return` double(20, 2) NULL DEFAULT NULL COMMENT 'Refunding the greater amount',
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` time NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_salespayments
-- ----------------------------
INSERT INTO `db_salespayments` VALUES (1, 1, '2023-07-29', 'Cash', 69000.00, '', 0.00, '::1', 'DESKTOP-92LTQFI', '01:15:51', '2023-07-29', 'admin', 1);
INSERT INTO `db_salespayments` VALUES (2, 1, '2023-07-29', 'Cash', 500.00, '', NULL, '::1', 'DESKTOP-92LTQFI', '01:16:28', '2023-07-29', 'admin', 1);
INSERT INTO `db_salespayments` VALUES (3, 2, '2023-07-29', 'Cash', 396000.00, 'Paid By Cash', 0.00, '::1', 'DESKTOP-92LTQFI', '01:19:23', '2023-07-29', 'admin', 1);
INSERT INTO `db_salespayments` VALUES (4, 3, '2023-07-29', 'Cash', 500000.00, 'Paid By Cash', 0.00, '::1', 'DESKTOP-92LTQFI', '01:22:33', '2023-07-29', 'admin', 1);
INSERT INTO `db_salespayments` VALUES (5, 4, '2023-07-29', 'Cash', 1136200.00, 'Paid By Cash', 0.00, '::1', 'DESKTOP-92LTQFI', '01:24:32', '2023-07-29', 'admin', 1);
INSERT INTO `db_salespayments` VALUES (6, 5, '2023-07-29', 'Cash', 982600.00, 'Paid By Cash', 0.00, '::1', 'DESKTOP-92LTQFI', '01:25:51', '2023-07-29', 'admin', 1);
INSERT INTO `db_salespayments` VALUES (7, 6, '2023-07-29', 'Cash', 1000000.00, 'Paid By Cash', 0.00, '::1', 'DESKTOP-92LTQFI', '01:54:41', '2023-07-29', 'admin', 1);

-- ----------------------------
-- Table structure for db_salespaymentsreturn
-- ----------------------------
DROP TABLE IF EXISTS `db_salespaymentsreturn`;
CREATE TABLE `db_salespaymentsreturn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int NULL DEFAULT NULL,
  `return_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `change_return` double(20, 2) NULL DEFAULT NULL COMMENT 'Refunding the greater amount',
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` time NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_salespaymentsreturn
-- ----------------------------

-- ----------------------------
-- Table structure for db_salesreturn
-- ----------------------------
DROP TABLE IF EXISTS `db_salesreturn`;
CREATE TABLE `db_salesreturn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int NULL DEFAULT NULL,
  `return_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `return_date` date NULL DEFAULT NULL,
  `return_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `warehouse_id` int NULL DEFAULT NULL,
  `other_charges_input` double(20, 2) NULL DEFAULT NULL,
  `other_charges_tax_id` int NULL DEFAULT NULL,
  `other_charges_amt` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_input` double(20, 2) NULL DEFAULT NULL,
  `discount_to_all_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tot_discount_to_all_amt` double(20, 2) NULL DEFAULT NULL,
  `subtotal` double(20, 2) NULL DEFAULT NULL,
  `round_off` double(20, 2) NULL DEFAULT NULL,
  `grand_total` double(20, 2) NULL DEFAULT NULL,
  `return_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `paid_amount` double(20, 2) NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `pos` int NULL DEFAULT NULL COMMENT '1=yes 0=no',
  `status` int NULL DEFAULT NULL,
  `return_bit` int NULL DEFAULT NULL COMMENT 'Return raised or not 1 or null',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_salesreturn
-- ----------------------------

-- ----------------------------
-- Table structure for db_sitesettings
-- ----------------------------
DROP TABLE IF EXISTS `db_sitesettings`;
CREATE TABLE `db_sitesettings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `site_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'path',
  `language_id` int NULL DEFAULT NULL,
  `currency_id` int NULL DEFAULT NULL,
  `currency_placement` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_format` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time_format` int NULL DEFAULT NULL,
  `sales_discount` double(20, 2) NULL DEFAULT NULL,
  `site_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `site_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_keywords` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `currencysymbol_id` int NULL DEFAULT NULL,
  `regno_key` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `copyright` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facebook_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `twitter_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `youtube_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `analytic_code` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `fav_icon` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'path',
  `footer_logo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'path',
  `company_id` int NULL DEFAULT NULL,
  `purchase_code` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `change_return` int NULL DEFAULT NULL COMMENT 'show in pos',
  `sales_invoice_format_id` int NULL DEFAULT NULL,
  `sales_invoice_footer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `round_off` int NULL DEFAULT NULL COMMENT '1=Enble, 0=Disable',
  `machine_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `domain` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `show_upi_code` int NULL DEFAULT 0,
  `unique_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `disable_tax` int NULL DEFAULT 0 COMMENT 'If set Disable the tax from app',
  `number_to_words` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'Default',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `currencysymbol_id`(`currencysymbol_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_sitesettings
-- ----------------------------
INSERT INTO `db_sitesettings` VALUES (1, '2.3', 'POS-BJM', 'logo300x300.png', 4, 34, 'Left', 'Asia/Jakarta\r\n', 'dd-mm-yyyy', 24, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, ' This is footer text. You can set it from Site Settings.', 1, '1', 'localhost', 0, '8t40ryoadjzvcsw1hfq7lmg9bx356n', 0, 'Default');

-- ----------------------------
-- Table structure for db_smsapi
-- ----------------------------
DROP TABLE IF EXISTS `db_smsapi`;
CREATE TABLE `db_smsapi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `info` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `key` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `key_value` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `delete_bit` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_smsapi
-- ----------------------------
INSERT INTO `db_smsapi` VALUES (144, 'url', 'weblink', 'http://www.example.in/api/sendhttp.php', NULL);
INSERT INTO `db_smsapi` VALUES (145, 'mobile', 'mobiles', '', NULL);
INSERT INTO `db_smsapi` VALUES (146, 'message', 'message', '', NULL);
INSERT INTO `db_smsapi` VALUES (147, '', 'authkey', 'xxxxxxxxxxxxxxxxxxxx', NULL);
INSERT INTO `db_smsapi` VALUES (148, '', 'sender', 'ULTPOS', NULL);
INSERT INTO `db_smsapi` VALUES (149, '', 'route', '1', NULL);

-- ----------------------------
-- Table structure for db_smstemplates
-- ----------------------------
DROP TABLE IF EXISTS `db_smstemplates`;
CREATE TABLE `db_smstemplates`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `variables` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `undelete_bit` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_smstemplates
-- ----------------------------
INSERT INTO `db_smstemplates` VALUES (1, 'GREETING TO CUSTOMER ON SALES', 'Hi {{customer_name}},\r\nYour sales Id is {{sales_id}},\r\nSales Date {{sales_date}},\r\nTotal amount  {{sales_amount}},\r\nYou have paid  {{paid_amt}},\r\nand customer total due amount is  {{cust_tot_due_amt}}\r\nThank you Visit Again', '{{customer_name}}<br>\r\n{{sales_id}}<br>\r\n{{sales_date}}<br>\r\n{{sales_amount}}<br>\r\n{{paid_amt}}<br>\r\n{{cust_tot_due_amt}}<br>\r\n{{invoice_due_amt}}<br>\r\n{{company_name}}<br>\r\n{{company_mobile}}<br>\r\n{{company_address}}<br>\r\n{{company_website}}<br>\r\n{{company_email}}<br>', NULL, 1, 1);
INSERT INTO `db_smstemplates` VALUES (2, 'GREETING TO CUSTOMER ON SALES RETURN', 'Hi {{customer_name}},\r\nYour sales return Id is {{return_id}},\r\nReturn Date {{return_date}},\r\nTotal amount  {{return_amount}},\r\nWe paid  {{paid_amt}},\r\nand customer total due amount is  {{cust_tot_due_amt}}\r\nThank you Visit Again', '{{customer_name}}<br>\r\n{{return_id}}<br>\r\n{{return_date}}<br>\r\n{{return_amount}}<br>\r\n{{paid_amt}}<br>\r\n{{cust_tot_due_amt}}<br>\r\n{{invoice_due_amt}}<br>\r\n{{company_name}}<br>\r\n{{company_mobile}}<br>\r\n{{company_address}}<br>\r\n{{company_website}}<br>\r\n{{company_email}}<br>', NULL, 1, 1);

-- ----------------------------
-- Table structure for db_sobpayments
-- ----------------------------
DROP TABLE IF EXISTS `db_sobpayments`;
CREATE TABLE `db_sobpayments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` time NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_sobpayments
-- ----------------------------

-- ----------------------------
-- Table structure for db_states
-- ----------------------------
DROP TABLE IF EXISTS `db_states`;
CREATE TABLE `db_states`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(4050) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_id` int NULL DEFAULT NULL,
  `country` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `added_on` date NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_states
-- ----------------------------
INSERT INTO `db_states` VALUES (1, NULL, 'Batam', NULL, NULL, 'Indonesia', NULL, NULL, 1);

-- ----------------------------
-- Table structure for db_stockentry
-- ----------------------------
DROP TABLE IF EXISTS `db_stockentry`;
CREATE TABLE `db_stockentry`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `entry_date` date NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_stockentry
-- ----------------------------
INSERT INTO `db_stockentry` VALUES (1, '2023-07-22', 6, 999999999, '', 1);
INSERT INTO `db_stockentry` VALUES (3, '2023-07-29', 7, 999999999, '', 1);

-- ----------------------------
-- Table structure for db_supplier_payments
-- ----------------------------
DROP TABLE IF EXISTS `db_supplier_payments`;
CREATE TABLE `db_supplier_payments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchasepayment_id` int NULL DEFAULT NULL,
  `supplier_id` int NULL DEFAULT NULL,
  `payment_date` date NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `payment` double(20, 2) NULL DEFAULT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `supplier_id`(`supplier_id` ASC) USING BTREE,
  INDEX `purchasepayment_id`(`purchasepayment_id` ASC) USING BTREE,
  CONSTRAINT `db_supplier_payments_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `db_supplier_payments_ibfk_2` FOREIGN KEY (`purchasepayment_id`) REFERENCES `db_purchasepayments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 298 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_supplier_payments
-- ----------------------------
INSERT INTO `db_supplier_payments` VALUES (297, 1, 1, '2023-07-29', 'Cash', 96000000.00, '', '::1', 'DESKTOP-92LTQFI', '01:13:15', '2023-07-29', 'admin', 1);

-- ----------------------------
-- Table structure for db_suppliers
-- ----------------------------
DROP TABLE IF EXISTS `db_suppliers`;
CREATE TABLE `db_suppliers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `supplier_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gstin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vatin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `opening_balance` double(20, 2) NULL DEFAULT NULL,
  `purchase_due` double(20, 2) NULL DEFAULT NULL,
  `purchase_return_due` double(20, 2) NULL DEFAULT NULL,
  `country_id` int NULL DEFAULT NULL,
  `state_id` int NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_suppliers
-- ----------------------------
INSERT INTO `db_suppliers` VALUES (1, 'SP0001', 'General', '11', '', '11@gmail.com', '', '', NULL, 0.00, 0.00, 0.00, 3, NULL, '', '', '', '::1', 'DESKTOP-92LTQFI', '2023-07-22', '09:52:41', 'admin', NULL, 1);

-- ----------------------------
-- Table structure for db_tax
-- ----------------------------
DROP TABLE IF EXISTS `db_tax`;
CREATE TABLE `db_tax`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax` double(20, 2) NULL DEFAULT NULL,
  `group_bit` int NULL DEFAULT NULL COMMENT '1=Yes, 0=No',
  `subtax_ids` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Tax groups IDs',
  `status` int NULL DEFAULT NULL,
  `undelete_bit` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_tax
-- ----------------------------
INSERT INTO `db_tax` VALUES (1, 'None', 0.00, NULL, NULL, 1, 1);

-- ----------------------------
-- Table structure for db_timezone
-- ----------------------------
DROP TABLE IF EXISTS `db_timezone`;
CREATE TABLE `db_timezone`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `timezone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 549 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_timezone
-- ----------------------------
INSERT INTO `db_timezone` VALUES (1, 'Africa/Abidjan\r', 1);
INSERT INTO `db_timezone` VALUES (2, 'Africa/Accra\r', 1);
INSERT INTO `db_timezone` VALUES (3, 'Africa/Addis_Ababa\r', 1);
INSERT INTO `db_timezone` VALUES (4, 'Africa/Algiers\r', 1);
INSERT INTO `db_timezone` VALUES (5, 'Africa/Asmara\r', 1);
INSERT INTO `db_timezone` VALUES (6, 'Africa/Asmera\r', 1);
INSERT INTO `db_timezone` VALUES (7, 'Africa/Bamako\r', 1);
INSERT INTO `db_timezone` VALUES (8, 'Africa/Bangui\r', 1);
INSERT INTO `db_timezone` VALUES (9, 'Africa/Banjul\r', 1);
INSERT INTO `db_timezone` VALUES (10, 'Africa/Bissau\r', 1);
INSERT INTO `db_timezone` VALUES (11, 'Africa/Blantyre\r', 1);
INSERT INTO `db_timezone` VALUES (12, 'Africa/Brazzaville\r', 1);
INSERT INTO `db_timezone` VALUES (13, 'Africa/Bujumbura\r', 1);
INSERT INTO `db_timezone` VALUES (14, 'Africa/Cairo\r', 1);
INSERT INTO `db_timezone` VALUES (15, 'Africa/Casablanca\r', 1);
INSERT INTO `db_timezone` VALUES (16, 'Africa/Ceuta\r', 1);
INSERT INTO `db_timezone` VALUES (17, 'Africa/Conakry\r', 1);
INSERT INTO `db_timezone` VALUES (18, 'Africa/Dakar\r', 1);
INSERT INTO `db_timezone` VALUES (19, 'Africa/Dar_es_Salaam\r', 1);
INSERT INTO `db_timezone` VALUES (20, 'Africa/Djibouti\r', 1);
INSERT INTO `db_timezone` VALUES (21, 'Africa/Douala\r', 1);
INSERT INTO `db_timezone` VALUES (22, 'Africa/El_Aaiun\r', 1);
INSERT INTO `db_timezone` VALUES (23, 'Africa/Freetown\r', 1);
INSERT INTO `db_timezone` VALUES (24, 'Africa/Gaborone\r', 1);
INSERT INTO `db_timezone` VALUES (25, 'Africa/Harare\r', 1);
INSERT INTO `db_timezone` VALUES (26, 'Africa/Johannesburg\r', 1);
INSERT INTO `db_timezone` VALUES (27, 'Africa/Juba\r', 1);
INSERT INTO `db_timezone` VALUES (28, 'Africa/Kampala\r', 1);
INSERT INTO `db_timezone` VALUES (29, 'Africa/Khartoum\r', 1);
INSERT INTO `db_timezone` VALUES (30, 'Africa/Kigali\r', 1);
INSERT INTO `db_timezone` VALUES (31, 'Africa/Kinshasa\r', 1);
INSERT INTO `db_timezone` VALUES (32, 'Africa/Lagos\r', 1);
INSERT INTO `db_timezone` VALUES (33, 'Africa/Libreville\r', 1);
INSERT INTO `db_timezone` VALUES (34, 'Africa/Lome\r', 1);
INSERT INTO `db_timezone` VALUES (35, 'Africa/Luanda\r', 1);
INSERT INTO `db_timezone` VALUES (36, 'Africa/Lubumbashi\r', 1);
INSERT INTO `db_timezone` VALUES (37, 'Africa/Lusaka\r', 1);
INSERT INTO `db_timezone` VALUES (38, 'Africa/Malabo\r', 1);
INSERT INTO `db_timezone` VALUES (39, 'Africa/Maputo\r', 1);
INSERT INTO `db_timezone` VALUES (40, 'Africa/Maseru\r', 1);
INSERT INTO `db_timezone` VALUES (41, 'Africa/Mbabane\r', 1);
INSERT INTO `db_timezone` VALUES (42, 'Africa/Mogadishu\r', 1);
INSERT INTO `db_timezone` VALUES (43, 'Africa/Monrovia\r', 1);
INSERT INTO `db_timezone` VALUES (44, 'Africa/Nairobi\r', 1);
INSERT INTO `db_timezone` VALUES (45, 'Africa/Ndjamena\r', 1);
INSERT INTO `db_timezone` VALUES (46, 'Africa/Niamey\r', 1);
INSERT INTO `db_timezone` VALUES (47, 'Africa/Nouakchott\r', 1);
INSERT INTO `db_timezone` VALUES (48, 'Africa/Ouagadougou\r', 1);
INSERT INTO `db_timezone` VALUES (49, 'Africa/Porto-Novo\r', 1);
INSERT INTO `db_timezone` VALUES (50, 'Africa/Sao_Tome\r', 1);
INSERT INTO `db_timezone` VALUES (51, 'Africa/Timbuktu\r', 1);
INSERT INTO `db_timezone` VALUES (52, 'Africa/Tripoli\r', 1);
INSERT INTO `db_timezone` VALUES (53, 'Africa/Tunis\r', 1);
INSERT INTO `db_timezone` VALUES (54, 'Africa/Windhoek\r', 1);
INSERT INTO `db_timezone` VALUES (55, 'AKST9AKDT\r', 1);
INSERT INTO `db_timezone` VALUES (56, 'America/Adak\r', 1);
INSERT INTO `db_timezone` VALUES (57, 'America/Anchorage\r', 1);
INSERT INTO `db_timezone` VALUES (58, 'America/Anguilla\r', 1);
INSERT INTO `db_timezone` VALUES (59, 'America/Antigua\r', 1);
INSERT INTO `db_timezone` VALUES (60, 'America/Araguaina\r', 1);
INSERT INTO `db_timezone` VALUES (61, 'America/Argentina/Buenos_Aires\r', 1);
INSERT INTO `db_timezone` VALUES (62, 'America/Argentina/Catamarca\r', 1);
INSERT INTO `db_timezone` VALUES (63, 'America/Argentina/ComodRivadavia\r', 1);
INSERT INTO `db_timezone` VALUES (64, 'America/Argentina/Cordoba\r', 1);
INSERT INTO `db_timezone` VALUES (65, 'America/Argentina/Jujuy\r', 1);
INSERT INTO `db_timezone` VALUES (66, 'America/Argentina/La_Rioja\r', 1);
INSERT INTO `db_timezone` VALUES (67, 'America/Argentina/Mendoza\r', 1);
INSERT INTO `db_timezone` VALUES (68, 'America/Argentina/Rio_Gallegos\r', 1);
INSERT INTO `db_timezone` VALUES (69, 'America/Argentina/Salta\r', 1);
INSERT INTO `db_timezone` VALUES (70, 'America/Argentina/San_Juan\r', 1);
INSERT INTO `db_timezone` VALUES (71, 'America/Argentina/San_Luis\r', 1);
INSERT INTO `db_timezone` VALUES (72, 'America/Argentina/Tucuman\r', 1);
INSERT INTO `db_timezone` VALUES (73, 'America/Argentina/Ushuaia\r', 1);
INSERT INTO `db_timezone` VALUES (74, 'America/Aruba\r', 1);
INSERT INTO `db_timezone` VALUES (75, 'America/Asuncion\r', 1);
INSERT INTO `db_timezone` VALUES (76, 'America/Atikokan\r', 1);
INSERT INTO `db_timezone` VALUES (77, 'America/Atka\r', 1);
INSERT INTO `db_timezone` VALUES (78, 'America/Bahia\r', 1);
INSERT INTO `db_timezone` VALUES (79, 'America/Bahia_Banderas\r', 1);
INSERT INTO `db_timezone` VALUES (80, 'America/Barbados\r', 1);
INSERT INTO `db_timezone` VALUES (81, 'America/Belem\r', 1);
INSERT INTO `db_timezone` VALUES (82, 'America/Belize\r', 1);
INSERT INTO `db_timezone` VALUES (83, 'America/Blanc-Sablon\r', 1);
INSERT INTO `db_timezone` VALUES (84, 'America/Boa_Vista\r', 1);
INSERT INTO `db_timezone` VALUES (85, 'America/Bogota\r', 1);
INSERT INTO `db_timezone` VALUES (86, 'America/Boise\r', 1);
INSERT INTO `db_timezone` VALUES (87, 'America/Buenos_Aires\r', 1);
INSERT INTO `db_timezone` VALUES (88, 'America/Cambridge_Bay\r', 1);
INSERT INTO `db_timezone` VALUES (89, 'America/Campo_Grande\r', 1);
INSERT INTO `db_timezone` VALUES (90, 'America/Cancun\r', 1);
INSERT INTO `db_timezone` VALUES (91, 'America/Caracas\r', 1);
INSERT INTO `db_timezone` VALUES (92, 'America/Catamarca\r', 1);
INSERT INTO `db_timezone` VALUES (93, 'America/Cayenne\r', 1);
INSERT INTO `db_timezone` VALUES (94, 'America/Cayman\r', 1);
INSERT INTO `db_timezone` VALUES (95, 'America/Chicago\r', 1);
INSERT INTO `db_timezone` VALUES (96, 'America/Chihuahua\r', 1);
INSERT INTO `db_timezone` VALUES (97, 'America/Coral_Harbour\r', 1);
INSERT INTO `db_timezone` VALUES (98, 'America/Cordoba\r', 1);
INSERT INTO `db_timezone` VALUES (99, 'America/Costa_Rica\r', 1);
INSERT INTO `db_timezone` VALUES (100, 'America/Creston\r', 1);
INSERT INTO `db_timezone` VALUES (101, 'America/Cuiaba\r', 1);
INSERT INTO `db_timezone` VALUES (102, 'America/Curacao\r', 1);
INSERT INTO `db_timezone` VALUES (103, 'America/Danmarkshavn\r', 1);
INSERT INTO `db_timezone` VALUES (104, 'America/Dawson\r', 1);
INSERT INTO `db_timezone` VALUES (105, 'America/Dawson_Creek\r', 1);
INSERT INTO `db_timezone` VALUES (106, 'America/Denver\r', 1);
INSERT INTO `db_timezone` VALUES (107, 'America/Detroit\r', 1);
INSERT INTO `db_timezone` VALUES (108, 'America/Dominica\r', 1);
INSERT INTO `db_timezone` VALUES (109, 'America/Edmonton\r', 1);
INSERT INTO `db_timezone` VALUES (110, 'America/Eirunepe\r', 1);
INSERT INTO `db_timezone` VALUES (111, 'America/El_Salvador\r', 1);
INSERT INTO `db_timezone` VALUES (112, 'America/Ensenada\r', 1);
INSERT INTO `db_timezone` VALUES (113, 'America/Fort_Wayne\r', 1);
INSERT INTO `db_timezone` VALUES (114, 'America/Fortaleza\r', 1);
INSERT INTO `db_timezone` VALUES (115, 'America/Glace_Bay\r', 1);
INSERT INTO `db_timezone` VALUES (116, 'America/Godthab\r', 1);
INSERT INTO `db_timezone` VALUES (117, 'America/Goose_Bay\r', 1);
INSERT INTO `db_timezone` VALUES (118, 'America/Grand_Turk\r', 1);
INSERT INTO `db_timezone` VALUES (119, 'America/Grenada\r', 1);
INSERT INTO `db_timezone` VALUES (120, 'America/Guadeloupe\r', 1);
INSERT INTO `db_timezone` VALUES (121, 'America/Guatemala\r', 1);
INSERT INTO `db_timezone` VALUES (122, 'America/Guayaquil\r', 1);
INSERT INTO `db_timezone` VALUES (123, 'America/Guyana\r', 1);
INSERT INTO `db_timezone` VALUES (124, 'America/Halifax\r', 1);
INSERT INTO `db_timezone` VALUES (125, 'America/Havana\r', 1);
INSERT INTO `db_timezone` VALUES (126, 'America/Hermosillo\r', 1);
INSERT INTO `db_timezone` VALUES (127, 'America/Indiana/Indianapolis\r', 1);
INSERT INTO `db_timezone` VALUES (128, 'America/Indiana/Knox\r', 1);
INSERT INTO `db_timezone` VALUES (129, 'America/Indiana/Marengo\r', 1);
INSERT INTO `db_timezone` VALUES (130, 'America/Indiana/Petersburg\r', 1);
INSERT INTO `db_timezone` VALUES (131, 'America/Indiana/Tell_City\r', 1);
INSERT INTO `db_timezone` VALUES (132, 'America/Indiana/Vevay\r', 1);
INSERT INTO `db_timezone` VALUES (133, 'America/Indiana/Vincennes\r', 1);
INSERT INTO `db_timezone` VALUES (134, 'America/Indiana/Winamac\r', 1);
INSERT INTO `db_timezone` VALUES (135, 'America/Indianapolis\r', 1);
INSERT INTO `db_timezone` VALUES (136, 'America/Inuvik\r', 1);
INSERT INTO `db_timezone` VALUES (137, 'America/Iqaluit\r', 1);
INSERT INTO `db_timezone` VALUES (138, 'America/Jamaica\r', 1);
INSERT INTO `db_timezone` VALUES (139, 'America/Jujuy\r', 1);
INSERT INTO `db_timezone` VALUES (140, 'America/Juneau\r', 1);
INSERT INTO `db_timezone` VALUES (141, 'America/Kentucky/Louisville\r', 1);
INSERT INTO `db_timezone` VALUES (142, 'America/Kentucky/Monticello\r', 1);
INSERT INTO `db_timezone` VALUES (143, 'America/Knox_IN\r', 1);
INSERT INTO `db_timezone` VALUES (144, 'America/Kralendijk\r', 1);
INSERT INTO `db_timezone` VALUES (145, 'America/La_Paz\r', 1);
INSERT INTO `db_timezone` VALUES (146, 'America/Lima\r', 1);
INSERT INTO `db_timezone` VALUES (147, 'America/Los_Angeles\r', 1);
INSERT INTO `db_timezone` VALUES (148, 'America/Louisville\r', 1);
INSERT INTO `db_timezone` VALUES (149, 'America/Lower_Princes\r', 1);
INSERT INTO `db_timezone` VALUES (150, 'America/Maceio\r', 1);
INSERT INTO `db_timezone` VALUES (151, 'America/Managua\r', 1);
INSERT INTO `db_timezone` VALUES (152, 'America/Manaus\r', 1);
INSERT INTO `db_timezone` VALUES (153, 'America/Marigot\r', 1);
INSERT INTO `db_timezone` VALUES (154, 'America/Martinique\r', 1);
INSERT INTO `db_timezone` VALUES (155, 'America/Matamoros\r', 1);
INSERT INTO `db_timezone` VALUES (156, 'America/Mazatlan\r', 1);
INSERT INTO `db_timezone` VALUES (157, 'America/Mendoza\r', 1);
INSERT INTO `db_timezone` VALUES (158, 'America/Menominee\r', 1);
INSERT INTO `db_timezone` VALUES (159, 'America/Merida\r', 1);
INSERT INTO `db_timezone` VALUES (160, 'America/Metlakatla\r', 1);
INSERT INTO `db_timezone` VALUES (161, 'America/Mexico_City\r', 1);
INSERT INTO `db_timezone` VALUES (162, 'America/Miquelon\r', 1);
INSERT INTO `db_timezone` VALUES (163, 'America/Moncton\r', 1);
INSERT INTO `db_timezone` VALUES (164, 'America/Monterrey\r', 1);
INSERT INTO `db_timezone` VALUES (165, 'America/Montevideo\r', 1);
INSERT INTO `db_timezone` VALUES (166, 'America/Montreal\r', 1);
INSERT INTO `db_timezone` VALUES (167, 'America/Montserrat\r', 1);
INSERT INTO `db_timezone` VALUES (168, 'America/Nassau\r', 1);
INSERT INTO `db_timezone` VALUES (169, 'America/New_York\r', 1);
INSERT INTO `db_timezone` VALUES (170, 'America/Nipigon\r', 1);
INSERT INTO `db_timezone` VALUES (171, 'America/Nome\r', 1);
INSERT INTO `db_timezone` VALUES (172, 'America/Noronha\r', 1);
INSERT INTO `db_timezone` VALUES (173, 'America/North_Dakota/Beulah\r', 1);
INSERT INTO `db_timezone` VALUES (174, 'America/North_Dakota/Center\r', 1);
INSERT INTO `db_timezone` VALUES (175, 'America/North_Dakota/New_Salem\r', 1);
INSERT INTO `db_timezone` VALUES (176, 'America/Ojinaga\r', 1);
INSERT INTO `db_timezone` VALUES (177, 'America/Panama\r', 1);
INSERT INTO `db_timezone` VALUES (178, 'America/Pangnirtung\r', 1);
INSERT INTO `db_timezone` VALUES (179, 'America/Paramaribo\r', 1);
INSERT INTO `db_timezone` VALUES (180, 'America/Phoenix\r', 1);
INSERT INTO `db_timezone` VALUES (181, 'America/Port_of_Spain\r', 1);
INSERT INTO `db_timezone` VALUES (182, 'America/Port-au-Prince\r', 1);
INSERT INTO `db_timezone` VALUES (183, 'America/Porto_Acre\r', 1);
INSERT INTO `db_timezone` VALUES (184, 'America/Porto_Velho\r', 1);
INSERT INTO `db_timezone` VALUES (185, 'America/Puerto_Rico\r', 1);
INSERT INTO `db_timezone` VALUES (186, 'America/Rainy_River\r', 1);
INSERT INTO `db_timezone` VALUES (187, 'America/Rankin_Inlet\r', 1);
INSERT INTO `db_timezone` VALUES (188, 'America/Recife\r', 1);
INSERT INTO `db_timezone` VALUES (189, 'America/Regina\r', 1);
INSERT INTO `db_timezone` VALUES (190, 'America/Resolute\r', 1);
INSERT INTO `db_timezone` VALUES (191, 'America/Rio_Branco\r', 1);
INSERT INTO `db_timezone` VALUES (192, 'America/Rosario\r', 1);
INSERT INTO `db_timezone` VALUES (193, 'America/Santa_Isabel\r', 1);
INSERT INTO `db_timezone` VALUES (194, 'America/Santarem\r', 1);
INSERT INTO `db_timezone` VALUES (195, 'America/Santiago\r', 1);
INSERT INTO `db_timezone` VALUES (196, 'America/Santo_Domingo\r', 1);
INSERT INTO `db_timezone` VALUES (197, 'America/Sao_Paulo\r', 1);
INSERT INTO `db_timezone` VALUES (198, 'America/Scoresbysund\r', 1);
INSERT INTO `db_timezone` VALUES (199, 'America/Shiprock\r', 1);
INSERT INTO `db_timezone` VALUES (200, 'America/Sitka\r', 1);
INSERT INTO `db_timezone` VALUES (201, 'America/St_Barthelemy\r', 1);
INSERT INTO `db_timezone` VALUES (202, 'America/St_Johns\r', 1);
INSERT INTO `db_timezone` VALUES (203, 'America/St_Kitts\r', 1);
INSERT INTO `db_timezone` VALUES (204, 'America/St_Lucia\r', 1);
INSERT INTO `db_timezone` VALUES (205, 'America/St_Thomas\r', 1);
INSERT INTO `db_timezone` VALUES (206, 'America/St_Vincent\r', 1);
INSERT INTO `db_timezone` VALUES (207, 'America/Swift_Current\r', 1);
INSERT INTO `db_timezone` VALUES (208, 'America/Tegucigalpa\r', 1);
INSERT INTO `db_timezone` VALUES (209, 'America/Thule\r', 1);
INSERT INTO `db_timezone` VALUES (210, 'America/Thunder_Bay\r', 1);
INSERT INTO `db_timezone` VALUES (211, 'America/Tijuana\r', 1);
INSERT INTO `db_timezone` VALUES (212, 'America/Toronto\r', 1);
INSERT INTO `db_timezone` VALUES (213, 'America/Tortola\r', 1);
INSERT INTO `db_timezone` VALUES (214, 'America/Vancouver\r', 1);
INSERT INTO `db_timezone` VALUES (215, 'America/Virgin\r', 1);
INSERT INTO `db_timezone` VALUES (216, 'America/Whitehorse\r', 1);
INSERT INTO `db_timezone` VALUES (217, 'America/Winnipeg\r', 1);
INSERT INTO `db_timezone` VALUES (218, 'America/Yakutat\r', 1);
INSERT INTO `db_timezone` VALUES (219, 'America/Yellowknife\r', 1);
INSERT INTO `db_timezone` VALUES (220, 'Antarctica/Casey\r', 1);
INSERT INTO `db_timezone` VALUES (221, 'Antarctica/Davis\r', 1);
INSERT INTO `db_timezone` VALUES (222, 'Antarctica/DumontDUrville\r', 1);
INSERT INTO `db_timezone` VALUES (223, 'Antarctica/Macquarie\r', 1);
INSERT INTO `db_timezone` VALUES (224, 'Antarctica/Mawson\r', 1);
INSERT INTO `db_timezone` VALUES (225, 'Antarctica/McMurdo\r', 1);
INSERT INTO `db_timezone` VALUES (226, 'Antarctica/Palmer\r', 1);
INSERT INTO `db_timezone` VALUES (227, 'Antarctica/Rothera\r', 1);
INSERT INTO `db_timezone` VALUES (228, 'Antarctica/South_Pole\r', 1);
INSERT INTO `db_timezone` VALUES (229, 'Antarctica/Syowa\r', 1);
INSERT INTO `db_timezone` VALUES (230, 'Antarctica/Vostok\r', 1);
INSERT INTO `db_timezone` VALUES (231, 'Arctic/Longyearbyen\r', 1);
INSERT INTO `db_timezone` VALUES (232, 'Asia/Aden\r', 1);
INSERT INTO `db_timezone` VALUES (233, 'Asia/Almaty\r', 1);
INSERT INTO `db_timezone` VALUES (234, 'Asia/Amman\r', 1);
INSERT INTO `db_timezone` VALUES (235, 'Asia/Anadyr\r', 1);
INSERT INTO `db_timezone` VALUES (236, 'Asia/Aqtau\r', 1);
INSERT INTO `db_timezone` VALUES (237, 'Asia/Aqtobe\r', 1);
INSERT INTO `db_timezone` VALUES (238, 'Asia/Ashgabat\r', 1);
INSERT INTO `db_timezone` VALUES (239, 'Asia/Ashkhabad\r', 1);
INSERT INTO `db_timezone` VALUES (240, 'Asia/Baghdad\r', 1);
INSERT INTO `db_timezone` VALUES (241, 'Asia/Bahrain\r', 1);
INSERT INTO `db_timezone` VALUES (242, 'Asia/Baku\r', 1);
INSERT INTO `db_timezone` VALUES (243, 'Asia/Bangkok\r', 1);
INSERT INTO `db_timezone` VALUES (244, 'Asia/Beirut\r', 1);
INSERT INTO `db_timezone` VALUES (245, 'Asia/Bishkek\r', 1);
INSERT INTO `db_timezone` VALUES (246, 'Asia/Brunei\r', 1);
INSERT INTO `db_timezone` VALUES (247, 'Asia/Calcutta\r', 1);
INSERT INTO `db_timezone` VALUES (248, 'Asia/Choibalsan\r', 1);
INSERT INTO `db_timezone` VALUES (249, 'Asia/Chongqing\r', 1);
INSERT INTO `db_timezone` VALUES (250, 'Asia/Chungking\r', 1);
INSERT INTO `db_timezone` VALUES (251, 'Asia/Colombo\r', 1);
INSERT INTO `db_timezone` VALUES (252, 'Asia/Dacca\r', 1);
INSERT INTO `db_timezone` VALUES (253, 'Asia/Damascus\r', 1);
INSERT INTO `db_timezone` VALUES (254, 'Asia/Dhaka\r', 1);
INSERT INTO `db_timezone` VALUES (255, 'Asia/Dili\r', 1);
INSERT INTO `db_timezone` VALUES (256, 'Asia/Dubai\r', 1);
INSERT INTO `db_timezone` VALUES (257, 'Asia/Dushanbe\r', 1);
INSERT INTO `db_timezone` VALUES (258, 'Asia/Gaza\r', 1);
INSERT INTO `db_timezone` VALUES (259, 'Asia/Harbin\r', 1);
INSERT INTO `db_timezone` VALUES (260, 'Asia/Hebron\r', 1);
INSERT INTO `db_timezone` VALUES (261, 'Asia/Ho_Chi_Minh\r', 1);
INSERT INTO `db_timezone` VALUES (262, 'Asia/Hong_Kong\r', 1);
INSERT INTO `db_timezone` VALUES (263, 'Asia/Hovd\r', 1);
INSERT INTO `db_timezone` VALUES (264, 'Asia/Irkutsk\r', 1);
INSERT INTO `db_timezone` VALUES (265, 'Asia/Istanbul\r', 1);
INSERT INTO `db_timezone` VALUES (266, 'Asia/Jakarta\r', 1);
INSERT INTO `db_timezone` VALUES (267, 'Asia/Jayapura\r', 1);
INSERT INTO `db_timezone` VALUES (268, 'Asia/Jerusalem\r', 1);
INSERT INTO `db_timezone` VALUES (269, 'Asia/Kabul\r', 1);
INSERT INTO `db_timezone` VALUES (270, 'Asia/Kamchatka\r', 1);
INSERT INTO `db_timezone` VALUES (271, 'Asia/Karachi\r', 1);
INSERT INTO `db_timezone` VALUES (272, 'Asia/Kashgar\r', 1);
INSERT INTO `db_timezone` VALUES (273, 'Asia/Kathmandu\r', 1);
INSERT INTO `db_timezone` VALUES (274, 'Asia/Katmandu\r', 1);
INSERT INTO `db_timezone` VALUES (275, 'Asia/Kolkata\r', 1);
INSERT INTO `db_timezone` VALUES (276, 'Asia/Krasnoyarsk\r', 1);
INSERT INTO `db_timezone` VALUES (277, 'Asia/Kuala_Lumpur\r', 1);
INSERT INTO `db_timezone` VALUES (278, 'Asia/Kuching\r', 1);
INSERT INTO `db_timezone` VALUES (279, 'Asia/Kuwait\r', 1);
INSERT INTO `db_timezone` VALUES (280, 'Asia/Macao\r', 1);
INSERT INTO `db_timezone` VALUES (281, 'Asia/Macau\r', 1);
INSERT INTO `db_timezone` VALUES (282, 'Asia/Magadan\r', 1);
INSERT INTO `db_timezone` VALUES (283, 'Asia/Makassar\r', 1);
INSERT INTO `db_timezone` VALUES (284, 'Asia/Manila\r', 1);
INSERT INTO `db_timezone` VALUES (285, 'Asia/Muscat\r', 1);
INSERT INTO `db_timezone` VALUES (286, 'Asia/Nicosia\r', 1);
INSERT INTO `db_timezone` VALUES (287, 'Asia/Novokuznetsk\r', 1);
INSERT INTO `db_timezone` VALUES (288, 'Asia/Novosibirsk\r', 1);
INSERT INTO `db_timezone` VALUES (289, 'Asia/Omsk\r', 1);
INSERT INTO `db_timezone` VALUES (290, 'Asia/Oral\r', 1);
INSERT INTO `db_timezone` VALUES (291, 'Asia/Phnom_Penh\r', 1);
INSERT INTO `db_timezone` VALUES (292, 'Asia/Pontianak\r', 1);
INSERT INTO `db_timezone` VALUES (293, 'Asia/Pyongyang\r', 1);
INSERT INTO `db_timezone` VALUES (294, 'Asia/Qatar\r', 1);
INSERT INTO `db_timezone` VALUES (295, 'Asia/Qyzylorda\r', 1);
INSERT INTO `db_timezone` VALUES (296, 'Asia/Rangoon\r', 1);
INSERT INTO `db_timezone` VALUES (297, 'Asia/Riyadh\r', 1);
INSERT INTO `db_timezone` VALUES (298, 'Asia/Saigon\r', 1);
INSERT INTO `db_timezone` VALUES (299, 'Asia/Sakhalin\r', 1);
INSERT INTO `db_timezone` VALUES (300, 'Asia/Samarkand\r', 1);
INSERT INTO `db_timezone` VALUES (301, 'Asia/Seoul\r', 1);
INSERT INTO `db_timezone` VALUES (302, 'Asia/Shanghai\r', 1);
INSERT INTO `db_timezone` VALUES (303, 'Asia/Singapore\r', 1);
INSERT INTO `db_timezone` VALUES (304, 'Asia/Taipei\r', 1);
INSERT INTO `db_timezone` VALUES (305, 'Asia/Tashkent\r', 1);
INSERT INTO `db_timezone` VALUES (306, 'Asia/Tbilisi\r', 1);
INSERT INTO `db_timezone` VALUES (307, 'Asia/Tehran\r', 1);
INSERT INTO `db_timezone` VALUES (308, 'Asia/Tel_Aviv\r', 1);
INSERT INTO `db_timezone` VALUES (309, 'Asia/Thimbu\r', 1);
INSERT INTO `db_timezone` VALUES (310, 'Asia/Thimphu\r', 1);
INSERT INTO `db_timezone` VALUES (311, 'Asia/Tokyo\r', 1);
INSERT INTO `db_timezone` VALUES (312, 'Asia/Ujung_Pandang\r', 1);
INSERT INTO `db_timezone` VALUES (313, 'Asia/Ulaanbaatar\r', 1);
INSERT INTO `db_timezone` VALUES (314, 'Asia/Ulan_Bator\r', 1);
INSERT INTO `db_timezone` VALUES (315, 'Asia/Urumqi\r', 1);
INSERT INTO `db_timezone` VALUES (316, 'Asia/Vientiane\r', 1);
INSERT INTO `db_timezone` VALUES (317, 'Asia/Vladivostok\r', 1);
INSERT INTO `db_timezone` VALUES (318, 'Asia/Yakutsk\r', 1);
INSERT INTO `db_timezone` VALUES (319, 'Asia/Yekaterinburg\r', 1);
INSERT INTO `db_timezone` VALUES (320, 'Asia/Yerevan\r', 1);
INSERT INTO `db_timezone` VALUES (321, 'Atlantic/Azores\r', 1);
INSERT INTO `db_timezone` VALUES (322, 'Atlantic/Bermuda\r', 1);
INSERT INTO `db_timezone` VALUES (323, 'Atlantic/Canary\r', 1);
INSERT INTO `db_timezone` VALUES (324, 'Atlantic/Cape_Verde\r', 1);
INSERT INTO `db_timezone` VALUES (325, 'Atlantic/Faeroe\r', 1);
INSERT INTO `db_timezone` VALUES (326, 'Atlantic/Faroe\r', 1);
INSERT INTO `db_timezone` VALUES (327, 'Atlantic/Jan_Mayen\r', 1);
INSERT INTO `db_timezone` VALUES (328, 'Atlantic/Madeira\r', 1);
INSERT INTO `db_timezone` VALUES (329, 'Atlantic/Reykjavik\r', 1);
INSERT INTO `db_timezone` VALUES (330, 'Atlantic/South_Georgia\r', 1);
INSERT INTO `db_timezone` VALUES (331, 'Atlantic/St_Helena\r', 1);
INSERT INTO `db_timezone` VALUES (332, 'Atlantic/Stanley\r', 1);
INSERT INTO `db_timezone` VALUES (333, 'Australia/ACT\r', 1);
INSERT INTO `db_timezone` VALUES (334, 'Australia/Adelaide\r', 1);
INSERT INTO `db_timezone` VALUES (335, 'Australia/Brisbane\r', 1);
INSERT INTO `db_timezone` VALUES (336, 'Australia/Broken_Hill\r', 1);
INSERT INTO `db_timezone` VALUES (337, 'Australia/Canberra\r', 1);
INSERT INTO `db_timezone` VALUES (338, 'Australia/Currie\r', 1);
INSERT INTO `db_timezone` VALUES (339, 'Australia/Darwin\r', 1);
INSERT INTO `db_timezone` VALUES (340, 'Australia/Eucla\r', 1);
INSERT INTO `db_timezone` VALUES (341, 'Australia/Hobart\r', 1);
INSERT INTO `db_timezone` VALUES (342, 'Australia/LHI\r', 1);
INSERT INTO `db_timezone` VALUES (343, 'Australia/Lindeman\r', 1);
INSERT INTO `db_timezone` VALUES (344, 'Australia/Lord_Howe\r', 1);
INSERT INTO `db_timezone` VALUES (345, 'Australia/Melbourne\r', 1);
INSERT INTO `db_timezone` VALUES (346, 'Australia/North\r', 1);
INSERT INTO `db_timezone` VALUES (347, 'Australia/NSW\r', 1);
INSERT INTO `db_timezone` VALUES (348, 'Australia/Perth\r', 1);
INSERT INTO `db_timezone` VALUES (349, 'Australia/Queensland\r', 1);
INSERT INTO `db_timezone` VALUES (350, 'Australia/South\r', 1);
INSERT INTO `db_timezone` VALUES (351, 'Australia/Sydney\r', 1);
INSERT INTO `db_timezone` VALUES (352, 'Australia/Tasmania\r', 1);
INSERT INTO `db_timezone` VALUES (353, 'Australia/Victoria\r', 1);
INSERT INTO `db_timezone` VALUES (354, 'Australia/West\r', 1);
INSERT INTO `db_timezone` VALUES (355, 'Australia/Yancowinna\r', 1);
INSERT INTO `db_timezone` VALUES (356, 'Brazil/Acre\r', 1);
INSERT INTO `db_timezone` VALUES (357, 'Brazil/DeNoronha\r', 1);
INSERT INTO `db_timezone` VALUES (358, 'Brazil/East\r', 1);
INSERT INTO `db_timezone` VALUES (359, 'Brazil/West\r', 1);
INSERT INTO `db_timezone` VALUES (360, 'Canada/Atlantic\r', 1);
INSERT INTO `db_timezone` VALUES (361, 'Canada/Central\r', 1);
INSERT INTO `db_timezone` VALUES (362, 'Canada/Eastern\r', 1);
INSERT INTO `db_timezone` VALUES (363, 'Canada/East-Saskatchewan\r', 1);
INSERT INTO `db_timezone` VALUES (364, 'Canada/Mountain\r', 1);
INSERT INTO `db_timezone` VALUES (365, 'Canada/Newfoundland\r', 1);
INSERT INTO `db_timezone` VALUES (366, 'Canada/Pacific\r', 1);
INSERT INTO `db_timezone` VALUES (367, 'Canada/Saskatchewan\r', 1);
INSERT INTO `db_timezone` VALUES (368, 'Canada/Yukon\r', 1);
INSERT INTO `db_timezone` VALUES (369, 'CET\r', 1);
INSERT INTO `db_timezone` VALUES (370, 'Chile/Continental\r', 1);
INSERT INTO `db_timezone` VALUES (371, 'Chile/EasterIsland\r', 1);
INSERT INTO `db_timezone` VALUES (372, 'CST6CDT\r', 1);
INSERT INTO `db_timezone` VALUES (373, 'Cuba\r', 1);
INSERT INTO `db_timezone` VALUES (374, 'EET\r', 1);
INSERT INTO `db_timezone` VALUES (375, 'Egypt\r', 1);
INSERT INTO `db_timezone` VALUES (376, 'Eire\r', 1);
INSERT INTO `db_timezone` VALUES (377, 'EST\r', 1);
INSERT INTO `db_timezone` VALUES (378, 'EST5EDT\r', 1);
INSERT INTO `db_timezone` VALUES (379, 'Etc./GMT\r', 1);
INSERT INTO `db_timezone` VALUES (380, 'Etc./GMT+0\r', 1);
INSERT INTO `db_timezone` VALUES (381, 'Etc./UCT\r', 1);
INSERT INTO `db_timezone` VALUES (382, 'Etc./Universal\r', 1);
INSERT INTO `db_timezone` VALUES (383, 'Etc./UTC\r', 1);
INSERT INTO `db_timezone` VALUES (384, 'Etc./Zulu\r', 1);
INSERT INTO `db_timezone` VALUES (385, 'Europe/Amsterdam\r', 1);
INSERT INTO `db_timezone` VALUES (386, 'Europe/Andorra\r', 1);
INSERT INTO `db_timezone` VALUES (387, 'Europe/Athens\r', 1);
INSERT INTO `db_timezone` VALUES (388, 'Europe/Belfast\r', 1);
INSERT INTO `db_timezone` VALUES (389, 'Europe/Belgrade\r', 1);
INSERT INTO `db_timezone` VALUES (390, 'Europe/Berlin\r', 1);
INSERT INTO `db_timezone` VALUES (391, 'Europe/Bratislava\r', 1);
INSERT INTO `db_timezone` VALUES (392, 'Europe/Brussels\r', 1);
INSERT INTO `db_timezone` VALUES (393, 'Europe/Bucharest\r', 1);
INSERT INTO `db_timezone` VALUES (394, 'Europe/Budapest\r', 1);
INSERT INTO `db_timezone` VALUES (395, 'Europe/Chisinau\r', 1);
INSERT INTO `db_timezone` VALUES (396, 'Europe/Copenhagen\r', 1);
INSERT INTO `db_timezone` VALUES (397, 'Europe/Dublin\r', 1);
INSERT INTO `db_timezone` VALUES (398, 'Europe/Gibraltar\r', 1);
INSERT INTO `db_timezone` VALUES (399, 'Europe/Guernsey\r', 1);
INSERT INTO `db_timezone` VALUES (400, 'Europe/Helsinki\r', 1);
INSERT INTO `db_timezone` VALUES (401, 'Europe/Isle_of_Man\r', 1);
INSERT INTO `db_timezone` VALUES (402, 'Europe/Istanbul\r', 1);
INSERT INTO `db_timezone` VALUES (403, 'Europe/Jersey\r', 1);
INSERT INTO `db_timezone` VALUES (404, 'Europe/Kaliningrad\r', 1);
INSERT INTO `db_timezone` VALUES (405, 'Europe/Kiev\r', 1);
INSERT INTO `db_timezone` VALUES (406, 'Europe/Lisbon\r', 1);
INSERT INTO `db_timezone` VALUES (407, 'Europe/Ljubljana\r', 1);
INSERT INTO `db_timezone` VALUES (408, 'Europe/London\r', 1);
INSERT INTO `db_timezone` VALUES (409, 'Europe/Luxembourg\r', 1);
INSERT INTO `db_timezone` VALUES (410, 'Europe/Madrid\r', 1);
INSERT INTO `db_timezone` VALUES (411, 'Europe/Malta\r', 1);
INSERT INTO `db_timezone` VALUES (412, 'Europe/Mariehamn\r', 1);
INSERT INTO `db_timezone` VALUES (413, 'Europe/Minsk\r', 1);
INSERT INTO `db_timezone` VALUES (414, 'Europe/Monaco\r', 1);
INSERT INTO `db_timezone` VALUES (415, 'Europe/Moscow\r', 1);
INSERT INTO `db_timezone` VALUES (416, 'Europe/Nicosia\r', 1);
INSERT INTO `db_timezone` VALUES (417, 'Europe/Oslo\r', 1);
INSERT INTO `db_timezone` VALUES (418, 'Europe/Paris\r', 1);
INSERT INTO `db_timezone` VALUES (419, 'Europe/Podgorica\r', 1);
INSERT INTO `db_timezone` VALUES (420, 'Europe/Prague\r', 1);
INSERT INTO `db_timezone` VALUES (421, 'Europe/Riga\r', 1);
INSERT INTO `db_timezone` VALUES (422, 'Europe/Rome\r', 1);
INSERT INTO `db_timezone` VALUES (423, 'Europe/Samara\r', 1);
INSERT INTO `db_timezone` VALUES (424, 'Europe/San_Marino\r', 1);
INSERT INTO `db_timezone` VALUES (425, 'Europe/Sarajevo\r', 1);
INSERT INTO `db_timezone` VALUES (426, 'Europe/Simferopol\r', 1);
INSERT INTO `db_timezone` VALUES (427, 'Europe/Skopje\r', 1);
INSERT INTO `db_timezone` VALUES (428, 'Europe/Sofia\r', 1);
INSERT INTO `db_timezone` VALUES (429, 'Europe/Stockholm\r', 1);
INSERT INTO `db_timezone` VALUES (430, 'Europe/Tallinn\r', 1);
INSERT INTO `db_timezone` VALUES (431, 'Europe/Tirane\r', 1);
INSERT INTO `db_timezone` VALUES (432, 'Europe/Tiraspol\r', 1);
INSERT INTO `db_timezone` VALUES (433, 'Europe/Uzhgorod\r', 1);
INSERT INTO `db_timezone` VALUES (434, 'Europe/Vaduz\r', 1);
INSERT INTO `db_timezone` VALUES (435, 'Europe/Vatican\r', 1);
INSERT INTO `db_timezone` VALUES (436, 'Europe/Vienna\r', 1);
INSERT INTO `db_timezone` VALUES (437, 'Europe/Vilnius\r', 1);
INSERT INTO `db_timezone` VALUES (438, 'Europe/Volgograd\r', 1);
INSERT INTO `db_timezone` VALUES (439, 'Europe/Warsaw\r', 1);
INSERT INTO `db_timezone` VALUES (440, 'Europe/Zagreb\r', 1);
INSERT INTO `db_timezone` VALUES (441, 'Europe/Zaporozhye\r', 1);
INSERT INTO `db_timezone` VALUES (442, 'Europe/Zurich\r', 1);
INSERT INTO `db_timezone` VALUES (443, 'GB\r', 1);
INSERT INTO `db_timezone` VALUES (444, 'GB-Eire\r', 1);
INSERT INTO `db_timezone` VALUES (445, 'GMT\r', 1);
INSERT INTO `db_timezone` VALUES (446, 'GMT+0\r', 1);
INSERT INTO `db_timezone` VALUES (447, 'GMT0\r', 1);
INSERT INTO `db_timezone` VALUES (448, 'GMT-0\r', 1);
INSERT INTO `db_timezone` VALUES (449, 'Greenwich\r', 1);
INSERT INTO `db_timezone` VALUES (450, 'Hong Kong\r', 1);
INSERT INTO `db_timezone` VALUES (451, 'HST\r', 1);
INSERT INTO `db_timezone` VALUES (452, 'Iceland\r', 1);
INSERT INTO `db_timezone` VALUES (453, 'Indian/Antananarivo\r', 1);
INSERT INTO `db_timezone` VALUES (454, 'Indian/Chagos\r', 1);
INSERT INTO `db_timezone` VALUES (455, 'Indian/Christmas\r', 1);
INSERT INTO `db_timezone` VALUES (456, 'Indian/Cocos\r', 1);
INSERT INTO `db_timezone` VALUES (457, 'Indian/Comoro\r', 1);
INSERT INTO `db_timezone` VALUES (458, 'Indian/Kerguelen\r', 1);
INSERT INTO `db_timezone` VALUES (459, 'Indian/Mahe\r', 1);
INSERT INTO `db_timezone` VALUES (460, 'Indian/Maldives\r', 1);
INSERT INTO `db_timezone` VALUES (461, 'Indian/Mauritius\r', 1);
INSERT INTO `db_timezone` VALUES (462, 'Indian/Mayotte\r', 1);
INSERT INTO `db_timezone` VALUES (463, 'Indian/Reunion\r', 1);
INSERT INTO `db_timezone` VALUES (464, 'Iran\r', 1);
INSERT INTO `db_timezone` VALUES (465, 'Israel\r', 1);
INSERT INTO `db_timezone` VALUES (466, 'Jamaica\r', 1);
INSERT INTO `db_timezone` VALUES (467, 'Japan\r', 1);
INSERT INTO `db_timezone` VALUES (468, 'JST-9\r', 1);
INSERT INTO `db_timezone` VALUES (469, 'Kwajalein\r', 1);
INSERT INTO `db_timezone` VALUES (470, 'Libya\r', 1);
INSERT INTO `db_timezone` VALUES (471, 'MET\r', 1);
INSERT INTO `db_timezone` VALUES (472, 'Mexico/BajaNorte\r', 1);
INSERT INTO `db_timezone` VALUES (473, 'Mexico/BajaSur\r', 1);
INSERT INTO `db_timezone` VALUES (474, 'Mexico/General\r', 1);
INSERT INTO `db_timezone` VALUES (475, 'MST\r', 1);
INSERT INTO `db_timezone` VALUES (476, 'MST7MDT\r', 1);
INSERT INTO `db_timezone` VALUES (477, 'Navajo\r', 1);
INSERT INTO `db_timezone` VALUES (478, 'NZ\r', 1);
INSERT INTO `db_timezone` VALUES (479, 'NZ-CHAT\r', 1);
INSERT INTO `db_timezone` VALUES (480, 'Pacific/Apia\r', 1);
INSERT INTO `db_timezone` VALUES (481, 'Pacific/Auckland\r', 1);
INSERT INTO `db_timezone` VALUES (482, 'Pacific/Chatham\r', 1);
INSERT INTO `db_timezone` VALUES (483, 'Pacific/Chuuk\r', 1);
INSERT INTO `db_timezone` VALUES (484, 'Pacific/Easter\r', 1);
INSERT INTO `db_timezone` VALUES (485, 'Pacific/Efate\r', 1);
INSERT INTO `db_timezone` VALUES (486, 'Pacific/Enderbury\r', 1);
INSERT INTO `db_timezone` VALUES (487, 'Pacific/Fakaofo\r', 1);
INSERT INTO `db_timezone` VALUES (488, 'Pacific/Fiji\r', 1);
INSERT INTO `db_timezone` VALUES (489, 'Pacific/Funafuti\r', 1);
INSERT INTO `db_timezone` VALUES (490, 'Pacific/Galapagos\r', 1);
INSERT INTO `db_timezone` VALUES (491, 'Pacific/Gambier\r', 1);
INSERT INTO `db_timezone` VALUES (492, 'Pacific/Guadalcanal\r', 1);
INSERT INTO `db_timezone` VALUES (493, 'Pacific/Guam\r', 1);
INSERT INTO `db_timezone` VALUES (494, 'Pacific/Honolulu\r', 1);
INSERT INTO `db_timezone` VALUES (495, 'Pacific/Johnston\r', 1);
INSERT INTO `db_timezone` VALUES (496, 'Pacific/Kiritimati\r', 1);
INSERT INTO `db_timezone` VALUES (497, 'Pacific/Kosrae\r', 1);
INSERT INTO `db_timezone` VALUES (498, 'Pacific/Kwajalein\r', 1);
INSERT INTO `db_timezone` VALUES (499, 'Pacific/Majuro\r', 1);
INSERT INTO `db_timezone` VALUES (500, 'Pacific/Marquesas\r', 1);
INSERT INTO `db_timezone` VALUES (501, 'Pacific/Midway\r', 1);
INSERT INTO `db_timezone` VALUES (502, 'Pacific/Nauru\r', 1);
INSERT INTO `db_timezone` VALUES (503, 'Pacific/Niue\r', 1);
INSERT INTO `db_timezone` VALUES (504, 'Pacific/Norfolk\r', 1);
INSERT INTO `db_timezone` VALUES (505, 'Pacific/Noumea\r', 1);
INSERT INTO `db_timezone` VALUES (506, 'Pacific/Pago_Pago\r', 1);
INSERT INTO `db_timezone` VALUES (507, 'Pacific/Palau\r', 1);
INSERT INTO `db_timezone` VALUES (508, 'Pacific/Pitcairn\r', 1);
INSERT INTO `db_timezone` VALUES (509, 'Pacific/Pohnpei\r', 1);
INSERT INTO `db_timezone` VALUES (510, 'Pacific/Ponape\r', 1);
INSERT INTO `db_timezone` VALUES (511, 'Pacific/Port_Moresby\r', 1);
INSERT INTO `db_timezone` VALUES (512, 'Pacific/Rarotonga\r', 1);
INSERT INTO `db_timezone` VALUES (513, 'Pacific/Saipan\r', 1);
INSERT INTO `db_timezone` VALUES (514, 'Pacific/Samoa\r', 1);
INSERT INTO `db_timezone` VALUES (515, 'Pacific/Tahiti\r', 1);
INSERT INTO `db_timezone` VALUES (516, 'Pacific/Tarawa\r', 1);
INSERT INTO `db_timezone` VALUES (517, 'Pacific/Tongatapu\r', 1);
INSERT INTO `db_timezone` VALUES (518, 'Pacific/Truk\r', 1);
INSERT INTO `db_timezone` VALUES (519, 'Pacific/Wake\r', 1);
INSERT INTO `db_timezone` VALUES (520, 'Pacific/Wallis\r', 1);
INSERT INTO `db_timezone` VALUES (521, 'Pacific/Yap\r', 1);
INSERT INTO `db_timezone` VALUES (522, 'Poland\r', 1);
INSERT INTO `db_timezone` VALUES (523, 'Portugal\r', 1);
INSERT INTO `db_timezone` VALUES (524, 'PRC\r', 1);
INSERT INTO `db_timezone` VALUES (525, 'PST8PDT\r', 1);
INSERT INTO `db_timezone` VALUES (526, 'ROC\r', 1);
INSERT INTO `db_timezone` VALUES (527, 'ROK\r', 1);
INSERT INTO `db_timezone` VALUES (528, 'Singapore\r', 1);
INSERT INTO `db_timezone` VALUES (529, 'Turkey\r', 1);
INSERT INTO `db_timezone` VALUES (530, 'UCT\r', 1);
INSERT INTO `db_timezone` VALUES (531, 'Universal\r', 1);
INSERT INTO `db_timezone` VALUES (532, 'US/Alaska\r', 1);
INSERT INTO `db_timezone` VALUES (533, 'US/Aleutian\r', 1);
INSERT INTO `db_timezone` VALUES (534, 'US/Arizona\r', 1);
INSERT INTO `db_timezone` VALUES (535, 'US/Central\r', 1);
INSERT INTO `db_timezone` VALUES (536, 'US/Eastern\r', 1);
INSERT INTO `db_timezone` VALUES (537, 'US/East-Indiana\r', 1);
INSERT INTO `db_timezone` VALUES (538, 'US/Hawaii\r', 1);
INSERT INTO `db_timezone` VALUES (539, 'US/Indiana-Starke\r', 1);
INSERT INTO `db_timezone` VALUES (540, 'US/Michigan\r', 1);
INSERT INTO `db_timezone` VALUES (541, 'US/Mountain\r', 1);
INSERT INTO `db_timezone` VALUES (542, 'US/Pacific\r', 1);
INSERT INTO `db_timezone` VALUES (543, 'US/Pacific-New\r', 1);
INSERT INTO `db_timezone` VALUES (544, 'US/Samoa\r', 1);
INSERT INTO `db_timezone` VALUES (545, 'UTC\r', 1);
INSERT INTO `db_timezone` VALUES (546, 'WET\r', 1);
INSERT INTO `db_timezone` VALUES (547, 'W-SU\r', 1);
INSERT INTO `db_timezone` VALUES (548, 'Zulu\r', 1);

-- ----------------------------
-- Table structure for db_units
-- ----------------------------
DROP TABLE IF EXISTS `db_units`;
CREATE TABLE `db_units`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_units
-- ----------------------------
INSERT INTO `db_units` VALUES (1, 'Pcs', '', NULL, 1);
INSERT INTO `db_units` VALUES (2, 'Set', '', NULL, 1);
INSERT INTO `db_units` VALUES (3, 'Liter', '', NULL, 1);
INSERT INTO `db_units` VALUES (4, 'Paket', '', NULL, 1);
INSERT INTO `db_units` VALUES (5, 'Botol', '', NULL, 1);
INSERT INTO `db_units` VALUES (6, 'Dus', '', NULL, 1);
INSERT INTO `db_units` VALUES (7, 'Box', '', NULL, 1);
INSERT INTO `db_units` VALUES (8, 'Service', '', NULL, 1);

-- ----------------------------
-- Table structure for db_users
-- ----------------------------
DROP TABLE IF EXISTS `db_users`;
CREATE TABLE `db_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` blob NULL,
  `member_of` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `firstname` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lastname` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(405) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` blob NULL,
  `gender` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `country` varchar(1620) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(1620) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` blob NULL,
  `postcode` varchar(270) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role_name` varchar(1350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  `profile_picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_id` int NULL DEFAULT NULL,
  `status` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_users
-- ----------------------------
INSERT INTO `db_users` VALUES (1, 'admin', 0x6531306164633339343962613539616262653536653035376632306638383365, '', NULL, NULL, '9845454454', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-11-27', '::1', NULL, NULL, NULL, 1, 1);
INSERT INTO `db_users` VALUES (2, 'Kasir', 0x6531306164633339343962613539616262653536653035376632306638383365, NULL, NULL, NULL, '11223344', 'kasir@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '', '2023-07-22', '10:43:22', 'admin', '::1', 'DESKTOP-92LTQFI', NULL, 1);

-- ----------------------------
-- Table structure for db_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `db_warehouse`;
CREATE TABLE `db_warehouse`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_warehouse
-- ----------------------------

-- ----------------------------
-- Table structure for temp_holdinvoice
-- ----------------------------
DROP TABLE IF EXISTS `temp_holdinvoice`;
CREATE TABLE `temp_holdinvoice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NULL DEFAULT NULL,
  `invoice_date` date NULL DEFAULT NULL,
  `reference_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `item_qty` int NULL DEFAULT NULL,
  `item_price` double(10, 2) NULL DEFAULT NULL,
  `tax` double(10, 2) NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pos` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temp_holdinvoice
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
