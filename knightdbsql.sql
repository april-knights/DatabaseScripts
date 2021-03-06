CREATE TABLE `knight` (
  `pkey` int PRIMARY KEY AUTO_INCREMENT,
  `knum` char(6) UNIQUE AUTO_INCREMENT,
  `rname` varchar(30) UNIQUE NOT NULL,
  `dname` varchar(20) UNIQUE NOT NULL,
  `email` varchar(50) UNIQUE NOT NULL,
  `inttrans` varchar(64),
  `bio` varchar(255),
  `firstevent` tinyint,
  `frenemy` bit NOT NULL DEFAULT 0,
  `rlimpact` varchar(255),
  `batt` tinyint,
  `batt2` tinyint,
  `rnk` int,
  `security` tinyint,
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `skill` (
  `pkey` tinyint PRIMARY KEY AUTO_INCREMENT,
  `parentid` int,
  `skillname` varchar(64) NOT NULL,
  `skilldescr` varchar(255),
  `public` bit NOT NULL DEFAULT 0,
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `event` (
  `pkey` tinyint PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `livedate` date NOT NULL,
  `enddate` date NOT NULL,
  `redown` varchar(30) NOT NULL
);

CREATE TABLE `battalion` (
  `pkey` tinyint PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `battdescr` varchar(255),
  `battlead` int,
  `battsec1` int,
  `battsec2` int,
  `battalias` varchar(10) UNIQUE NOT NULL,
  `color` varchar(15),
  `motto` varchar(64),
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `krank` (
  `pkey` tinyint PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `rankdescr` varchar(255),
  `rval` tinyint NOT NULL,
  `uniqe` bit NOT NULL,
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `userskill` (
  `usid` int PRIMARY KEY AUTO_INCREMENT,
  `fkeyuser` int NOT NULL,
  `fkeyskill` int NOT NULL,
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `security` (
  `pkey` tinyint PRIMARY KEY AUTO_INCREMENT,
  `secname` varchar(30) NOT NULL,
  `secdescr` varchar(255),
  `cvuser` bit NOT NULL,
  `cmuser` bit NOT NULL,
  `cduser` bit NOT NULL,
  `cvskill` bit NOT NULL,
  `cmskill` bit NOT NULL,
  `cdskill` bit NOT NULL,
  `cmsskill` bit NOT NULL,
  `cmoskill` bit NOT NULL,
  `cvrank` bit NOT NULL,
  `cmrank` bit NOT NULL,
  `cdrank` bit NOT NULL,
  `cvbatt` bit NOT NULL,
  `cmbatt` bit NOT NULL,
  `cdbatt` bit NOT NULL,
  `cvevent` bit NOT NULL,
  `cmevent` bit NOT NULL,
  `cdevent` bit NOT NULL,
  `cvsec` bit NOT NULL,
  `cmsec` bit NOT NULL,
  `cdsec` bit NOT NULL,
  `cmbattuser` bit NOT NULL,
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);


CREATE TABLE `auth` (
  `pkey` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `knightkey` int NOT NULL,
  `redditid` varchar(30) NOT NULL,
  `auth` varchar(32) NOT NULL,
  `refreshtoken` varchar(32) NOT NULL,
  `expirein` int NOT NULL
);

CREATE TABLE `division` (
  `pkey` tinyint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `divdescr` varchar(255),
  `divlead` int,
  `divsec1` int,
  `divsec2` int,
  `divalias` varchar(10) UNIQUE NOT NULL,
  `color` varchar(15),
  `motto` varchar(64),
  `crtsetdt` date NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `divknight` (
  `pkey` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fkeyknight` int NOT NULL,
  `fkeydivision` int NOT NULL,
  `crtsetdt` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `orders` (
  `pkey` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `authorid` int NOT NULL DEFAULT 1,
  `level` int NOT NULL,
  `crtsetdt` date NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

CREATE TABLE `link` (
  `pkey` tinyint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `typcd` enum NOT NULL,
  `linknm` varchar(50) NOT NULL,
  `linkdesc` varchar(255),
  `linkurl` varchar(150),
  `imgurl` varchar(150),
  `crtsetdt` date NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `crtsetid` int NOT NULL DEFAULT 1,
  `lstmdby` int NOT NULL DEFAULT 1,
  `lstmdts` datetime NOT NULL DEFAULT "CURRENT_TIMESTAMP",
  `activeflg` bit NOT NULL DEFAULT 1,
  `delflg` bit NOT NULL DEFAULT 0
);

ALTER TABLE `knight` ADD FOREIGN KEY (`firstevent`) REFERENCES `event` (`pkey`);

ALTER TABLE `knight` ADD FOREIGN KEY (`rnk`) REFERENCES `krank` (`pkey`);

ALTER TABLE `knight` ADD FOREIGN KEY (`security`) REFERENCES `security` (`pkey`);

ALTER TABLE `knight` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `knight` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `skill` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `skill` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `battalion` ADD FOREIGN KEY (`battlead`) REFERENCES `knight` (`pkey`);

ALTER TABLE `battalion` ADD FOREIGN KEY (`battsec1`) REFERENCES `knight` (`pkey`);

ALTER TABLE `battalion` ADD FOREIGN KEY (`battsec2`) REFERENCES `knight` (`pkey`);

ALTER TABLE `battalion` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `battalion` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `krank` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `krank` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `userskill` ADD FOREIGN KEY (`fkeyuser`) REFERENCES `knight` (`pkey`);

ALTER TABLE `userskill` ADD FOREIGN KEY (`fkeyskill`) REFERENCES `skill` (`pkey`);

ALTER TABLE `userskill` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `userskill` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `security` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `security` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `auth` ADD FOREIGN KEY (`knightkey`) REFERENCES `knight` (`pkey`);

ALTER TABLE `division` ADD FOREIGN KEY (`divlead`) REFERENCES `knight` (`pkey`);

ALTER TABLE `division` ADD FOREIGN KEY (`divsec1`) REFERENCES `knight` (`pkey`);

ALTER TABLE `division` ADD FOREIGN KEY (`divsec2`) REFERENCES `knight` (`pkey`);

ALTER TABLE `division` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `division` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `divknight` ADD FOREIGN KEY (`fkeyknight`) REFERENCES `knight` (`pkey`);

ALTER TABLE `divknight` ADD FOREIGN KEY (`fkeydivision`) REFERENCES `division` (`pkey`);

ALTER TABLE `divknight` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `divknight` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `orders` ADD FOREIGN KEY (`authorid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `orders` ADD FOREIGN KEY (`level`) REFERENCES `security` (`pkey`);

ALTER TABLE `orders` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `orders` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);

ALTER TABLE `link` ADD FOREIGN KEY (`crtsetid`) REFERENCES `knight` (`pkey`);

ALTER TABLE `link` ADD FOREIGN KEY (`lstmdby`) REFERENCES `knight` (`pkey`);
