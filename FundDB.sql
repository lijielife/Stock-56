create database FundDB;
grant all privileges on FundDB.* to 'changye'@'%' identified by '19820928';
use FundDB;
CREATE TABLE FundHistory (
	ID INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
       FUND_CODE  CHAR(10)  NOT NULL,
       FUND_DATE  DATE NOT NULL,
       FUND_NAV DECIMAL(7,3),
       FUND_VOL BIGINT UNSIGNED,
       PRIMARY KEY(ID),
       INDEX(FUND_CODE,FUND_DATE) 
       ) ENGINE=InnoDB DEFAULT CHARSET=utf8;  

CREATE TABLE FundDetail (
	FUND_CODE CHAR(10) NOT NULL,
	FUND_ABBR CHAR(20),
	FUND_TYPE ENUM('a', 'b', 'm', 'lof', 'etf', 'cf'),
	FUND_TRADEABLE ENUM('y', 'n'),
	FUND_MARKET ENUM('sh', 'sz'),
	FUND_MANAGER CHAR(40),
	FUND_COMPANY CHAR(40),
	FUND_ISSUE_DATE DATE,
	FUND_MATURITY_DATE DATE,
	FUND_A_CODE CHAR(10),
	FUND_A_ABBR CHAR(20),
	FUND_A_RATIO TINYINT,
	FUND_B_CODE CHAR(10),
	FUND_B_ABBR CHAR(20),
	FUND_B_RATIO TINYINT,
	FUND_M_CODE CHAR(10),
	FUND_M_ABBR CHAR(20),
	FUND_LOWER_RECALC CHAR(10),
	FUND_UPPER_RECALC CHAR(10),
	FUND_NEXT_RECALC_DATE DATE,
	FUND_INT_MODE CHAR(10),
	FUND_INT DECIMAL(5,2),
	FUND_INT_NEXT DECIMAL(5,2),
	FUND_INDEX_CODE CHAR(10),
	FUND_INDEX_ABBR CHAR(20),
	FUND_REDEEM_FEE CHAR(10),
	FUND_REDEEM_NOTE text,
	FUND_MANAGE_FEE CHAR(10),
	FUND_APPLY_FEE CHAR(10),
	FUND_APPLY_NOTE text,
	FUND_NOTE text,
	PRIMARY KEY(FUND_CODE)
	)  ENGINE=InnoDB DEFAULT CHARSET=utf8;  