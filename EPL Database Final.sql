-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: epl
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coach` (
  `Name` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `Licence` int(11) NOT NULL,
  `Team` varchar(45) NOT NULL,
  PRIMARY KEY (`Licence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES ('Jose Mourinho',55,'Portugal',1011,'Man UTD'),('Jurgen Klopp',51,'German',1012,'Liverpool'),('Pep Guardiola',47,'Spain',1013,'Man City'),('Maurizio Sarri',59,'Italy',1014,'Chelsea'),('Mauricio Pochettino',46,'Argentina',1015,'Spurs'),('Unai Emery',47,'Spain',1016,'Arsenal'),('Marco Silva',41,'Portugal',1017,'Everton'),('Claude Puel',57,'French',1018,'Leicester'),('Eddie Howe',41,'England',1019,'Bournemouth'),('Manuel Pellegrini',65,'Chile',1020,'West Ham');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals & assists`
--

DROP TABLE IF EXISTS `goals & assists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goals & assists` (
  `PlayerFN` varchar(45) NOT NULL,
  `PlayerLN` varchar(45) NOT NULL,
  `Team` varchar(45) NOT NULL,
  `Goals` int(11) NOT NULL,
  `Assists` int(11) NOT NULL,
  `Player_id` varchar(45) NOT NULL,
  PRIMARY KEY (`Player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals & assists`
--

LOCK TABLES `goals & assists` WRITE;
/*!40000 ALTER TABLE `goals & assists` DISABLE KEYS */;
INSERT INTO `goals & assists` VALUES ('Aaron','Ramsey','Arsenal',1,6,'Ars13'),('Alexandre','Lacazette','Arsenal',7,3,'Ars19'),('Pierre','Aubameyang','Arsenal',10,3,'Ars20'),('Ryan','Fraser','Bournemouth',4,7,'Bou14'),('Callum','Wilson','Bournemouth',8,5,'Bou20'),('Eden ','Hazard','Chelsea',7,8,'Che16'),('Gylfi','Sigurdsson','Everton',6,2,'Eve12'),('Mohamed','Salah','Liverpool',10,4,'Liv18'),('Raheem','Sterling','Man City',8,7,'MC17'),('Sergio','Aguero','Man City',8,4,'MC19'),('Anthony','Martial','Man UTD',7,0,'MU16'),('Harry','Kane','Spurs',9,2,'tot22');
/*!40000 ALTER TABLE `goals & assists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `league` (
  `Team_name` varchar(25) NOT NULL,
  `Ranking` int(11) NOT NULL,
  `Matches_played` int(11) NOT NULL,
  `Win` int(11) NOT NULL,
  `Draw` int(11) NOT NULL,
  `Loss` int(11) NOT NULL,
  `Points` int(11) NOT NULL,
  PRIMARY KEY (`Team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES ('Arsenal',5,16,10,4,2,34),('Bournemouth',8,16,7,2,7,23),('Chelsea',4,16,10,4,2,34),('Everton',7,16,6,5,4,23),('Leicester',9,16,6,4,6,22),('Liverpool',1,16,13,3,0,42),('Man City',2,16,13,2,1,41),('Man UTD',6,16,7,5,4,26),('Tottenham ',3,16,12,0,4,36),('West Ham',10,16,6,3,7,21);
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `match` (
  `HomeTeam` varchar(45) NOT NULL,
  `AwayTeam` varchar(45) NOT NULL,
  `Stadium` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Time` varchar(45) NOT NULL,
  `Referee` varchar(45) NOT NULL,
  `ScoreHT` int(11) NOT NULL,
  `ScoreAT` int(11) NOT NULL,
  `Result` varchar(45) NOT NULL,
  PRIMARY KEY (`Stadium`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES ('Arsenal','Leicester','	Emirates Stadium','12-Dec','18:00','Marriner',2,2,'2:2'),('Liverpool','Chelsea','Anfield','10-Dec','20:00','Tierney',2,3,'2:3'),('Bournemouth','Everton','Dean Court','04-Dec','19:30','Mason',2,2,'2:2'),('Man City','Spurs','Eithad Stadium','03-Dec','18:00','Friend',8,2,'8:2'),('Everton','Man City','Goodison Park','11-Dec','21:00','Dean',1,2,'1:2'),('Leicester','West Ham','King Power','05-Dec','13:00','Atkinson',3,2,'3:2'),('West Ham','Bournemouth','London Stadium','13-Dec','17:00','Oliver',2,3,'2:3'),('Man UTD','Liverpool','Old Trafford','01-Dec','21:00','Taylor',5,1,'5:1'),('Chelsea','Arsenal','Stamford Bridge','02-Dec','17:30','Moss',5,3,'5:3'),('Spurs','Man UTD','White Heart Lane','9-Dec','15:00','Probert',2,1,'2:1');
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `players` (
  `FName` varchar(45) NOT NULL,
  `LName` varchar(45) NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Postition` varchar(45) NOT NULL,
  `ShirtNo` int(11) NOT NULL,
  `Team` varchar(45) NOT NULL,
  `player_id` varchar(45) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES ('Peter','Cech','Czech Republic',36,'GK',1,'Arsenal','Ars01'),('Bernd','Leno','Germany',26,'GK',19,'Arsenal','Ars02'),('Hector','Bellerin','Spain',23,'RB',3,'Arsenal','Ars03'),('Laurent','Koscielny','France',33,'CB',6,'Arsenal','Ars04'),('Stephan','Lichtsteiner','Switzerland',34,'RB',12,'Arsenal','Ars05'),('Rob','Holding','England',23,'CB',16,'Arsenal','Ars06'),('Nacho','Monreal','Spain',32,'RB',18,'Arsenal','Ars07'),('Shkodran','Mustafi','Germany',26,'CB',20,'Arsenal','Ars08'),('Carl','Jenkinson','England',26,'LB',22,'Arsenal','Ars09'),('Sead','Kolasinac','Bosnia and Herzegovina',25,'LB',31,'Arsenal','Ars10'),('Mohamed','Elneny','Egypt',26,'CM',4,'Arsenal','Ars11'),('Henrikh','Mkhitaryan','Armenia',29,'CM',7,'Arsenal','Ars12'),('Aaron','Ramsey','Wales',27,'CM',8,'Arsenal','Ars13'),('Mesut','Ozil','Germany',30,'CAM',10,'Arsenal','Ars14'),('Lucas','Torreira','Uruguay',22,'CAM',11,'Arsenal','Ars15'),('Alex','Iwobi','Nigeria',22,'LM',17,'Arsenal','Ars16'),('Matteo','Guendouzi','France',19,'CDM',29,'Arsenal','Ars17'),('Granit','Xhaka','Switzerland',26,'CDM',34,'Arsenal','Ars18'),('Alexandre','Lacazette','France',27,'CF',9,'Arsenal','Ars19'),('Pierre','Aubameyang','Gabon',29,'CF',14,'Arsenal','Ars20'),('Danny','Welbeck','England',28,'CF',23,'Arsenal','Ars21'),('Smith','Rowe','England',18,'CM',55,'Arsenal','Ars22'),('Asmir','Begovic','Bosnia Herzegovina',31,'GK',27,'Bournemouth','Bou01'),('Artur','Boruc','Poland',38,'GK',1,'Bournemouth','Bou02'),('Nathan','Ake','Netherlands',23,'LB',5,'Bournemouth','Bou03'),('Simon','Francis','England',33,'RB',2,'Bournemouth','Bou04'),('Steve','Cook','England',27,'CB',3,'Bournemouth','Bou05'),('Charlie','Daniels','England',32,'LB',11,'Bournemouth','Bou06'),('Adam','Smith','Engalnd',27,'CB',15,'Bournemouth','Bou07'),('Tyrone','Mings','England',25,'LB',26,'Bournemouth','Bou08'),('Jack','Simpson','England',21,'CB',42,'Bournemouth','Bou09'),('Diego','Rico','Spain',25,'LB',98,'Bournemouth','Bou10'),('Junior','Stanislas','England',29,'LM',19,'Bournemouth','Bou11'),('Dan','Gosling','England',28,'CM',4,'Bournemouth','Bou12'),('Marc','Pugh','England',31,'LM',7,'Bournemouth','Bou13'),('Ryan','Fraser','Scotland',24,'RM',24,'Bournemouth','Bou14'),('Andrew','Surman','England',32,'LM',6,'Bournemouth','Bou15'),('Lewis','Cook','England',21,'CM',18,'Bournemouth','Bou16'),('Jefferson','Lerma','Colombia',24,'CM',88,'Bournemouth','Bou17'),('Jordan','Ibe','England',23,'RF',33,'Bournemouth','Bou18'),('Jermain','Defoe','England',36,'CF',18,'Bournemouth','Bou19'),('Callum','Wilson','England',26,'CF',13,'Bournemouth','Bou20'),('Joshua','King','Norway',26,'LF',17,'Bournemouth','Bou21'),('Lys','Mousset','France',22,'CF',31,'Bournemouth','Bou22'),('Kepa','Arrizabalaga','Spain',24,'GK',1,'Chelsea','Che01'),('Willy','caballero','Argentina',37,'GK',13,'Chelsea','Che02'),('David','Luiz','Brazil',31,'CB',30,'Chelsea','Che03'),('Ceser ','Azpilicueta','Spain',29,'RB',28,'Chelsea','Che04'),('Gary','Chaill','England',32,'CB',24,'Chelsea','Che05'),('Marcos','Alonso','Spain',27,'LB',3,'Chelsea','Che06'),('Antonio','Rudiger','Germany',25,'CB',2,'Chelsea','Che07'),('Davide','Zappacosta','Italy',26,'RB',21,'Chelsea','Che08'),('Andreas','Christensen','Denmark',22,'CB',27,'Chelsea','Che09'),('Emerson','Palmeri','Italy',24,'LB',33,'Chelsea','Che10'),('Mateo','Kovacic','Croatia',24,'CM',17,'Chelsea','Che11'),('Cesc','Fabregas','Spain',31,'AM',4,'Chelsea','Che12'),('Pedro','Rodregez','Spain',31,'RM',11,'Chelsea','Che13'),('Ross','Barkley','England',25,'AM',8,'Chelsea','Che14'),('Victor','Moses','Nigeria',27,'RF',15,'Chelsea','Che15'),('Eden','Hazard','Belguim',27,'LM',10,'Chelsea','Che16'),('N\'Golo','Kante','France',27,'CM',7,'Chelsea','Che17'),('Danial','Drinkwater','England',28,'CM',6,'Chelsea','Che18'),('Ethan','Ampadu','Wales',18,'CM',44,'Chelsea','Che19'),('Olivier','Giroud','France',32,'CF',18,'Chelsea','Che20'),('Alvaro','Morata','Spain',26,'CF',29,'Chelsea','Che21'),('Lucas','Piazon','Brazil',24,'LF',54,'Chelsea','Che22'),('Jordan','Pickford','England',24,'GK',1,'Everton','Eve01'),('Joao ','Virginia','Potugal',19,'GK',33,'Everton','Eve02'),('Mason','Holgate','England',22,'CB',2,'Everton','Eve03'),('Leightron ','Baines','England',33,'LB',3,'Everton','Eve04'),('Michael ','Keane','England',25,'CB',4,'Everton','Eve05'),('Kurt','Zouma','France',24,'CB',55,'Everton','Eve06'),('Yerry','Mina','Colombia',24,'CB',5,'Everton','Eve07'),('Lucas ','Digne','France',24,'LB',77,'Everton','Eve08'),('Seamus','Coleman','Irland',30,'RB',23,'Everton','Eve09'),('Brandan','Galloway','England',22,'LB',32,'Everton','Eve10'),('Andre','Gomes','Portugal',25,'CM',8,'Everton','Eve11'),('Gyfli','Sigurdsson','Iceland',29,'AM',10,'Everton','Eve12'),('Gana','Gueye','Senegal',29,'CM',17,'Everton','Eve13'),('James','McCarthy','Ireland',28,'CM',16,'Everton','Eve14'),('Oumar','Niasse','Senegal',28,'CF',34,'Everton','Eve15'),('Tom','Davies','England',20,'CM',26,'Everton','Eve16'),('Boris','Mathis','France',21,'CM',41,'Everton','Eve17'),('Kieran','Dowell','England',21,'CM',12,'Everton','Eve18'),('Theo','Walcott','England',29,'RF',11,'Everton','Eve19'),('Cenk','Tosun','Turkey',27,'CF',9,'Everton','Eve20'),('Dominic','Lewin','England',21,'RF',29,'Everton','Eve21'),('Ademola','Lookman','England',21,'CF',31,'Everton','Eve22'),('Kasper	','Schmeichel	','Denmark	',33,'GK',1,'Leicester City','Lic01'),('Eldin	','Jakupovic	','Switzerland	',26,'GK',17,'Leicester City','Lic02'),('Danny ','Simpson','England',31,'RB',2,'Leicester City','Lic03'),('Ben','Chilwell','England',21,'LB',3,'Leicester City','Lic04'),('Wes','Morgan','Jamaica',34,'CB',5,'Leicester City','Lic05'),('Harry','Maguire','England',25,'CB',15,'Leicester City','Lic06'),('Christian','Fuchs','Austria',32,'LB',28,'Leicester City','Lic07'),('Yohan','Benlouane','Tunisia',32,'CDM',29,'Leicester City','Lic08'),('Demarai','Gray','England',22,'CDM',7,'Leicester City','Lic09'),('Marc','Albrighton','England',29,'CM',11,'Leicester City','Lic10'),('Adrian','Silva','Spain',29,'CM',23,'Leicester City','Lic11'),('Daniel ','Amartey	','Ghana',23,'RM',18,'Leicester City','Lic12'),('Vicente	','Iborra	','Spain',30,'LM',21,'Leicester City','Lic13'),('Matty	','James	','England	',27,'RM',22,'Leicester City','Lic14'),('Wilfred	','Ndidi	','Nigeria	',21,'LM',25,'Leicester City','Lic15'),('Kelechi	','Iheanacho	','Nigeria	',22,'LW',8,'Leicester City','Lic16'),('Jamie ','Vardy	','England	',31,'ST',9,'Leicester City','Lic17'),('Shinji	','Okazaki	','Japan',32,'CAM',20,'Leicester City','Lic18'),('Fousseni	','Diabate	','Mali	',23,'RW',27,'Leicester City','Lic19'),('Ricardo ','Pereira	','Portugal	',25,'CB',14,'Leicester City','Lic20'),('Jonny ','Evans	','Northern Ireland',30,'CDM',6,'Leicester City','Lic21'),('James	','Maddison	','England	',22,'RM',10,'Leicester City','Lic22'),('Andy ','King	','Wales	',30,'CAM',24,'Leicester City','Lic23'),('Alisson','Baker','Brazil',26,'GK',13,'Liverpool','Liv01'),('Simon','Mignolet','Belgium',30,'GK',22,'Liverpool','Liv02'),('Nathaniel','Clyne','England',27,'RB',2,'Liverpool','Liv03'),('Virgil','Van Dijk','Netherlands',27,'CB',4,'Liverpool','Liv04'),('Dejan','Lovren','Croatia',29,'CB',6,'Liverpool','Liv05'),('Joseph','Gomez','England',21,'CB',12,'Liverpool','Liv06'),('Alberto','Moreno','Spain',26,'LB',18,'Liverpool','Liv07'),('Andrew','Robertson','Scotland',24,'LB',26,'Liverpool','Liv08'),('Joel','Matip','Cameroon',27,'CB',32,'Liverpool','Liv09'),('Trent','Arnold','England',20,'RB',66,'Liverpool','Liv10'),('Georginio','Wijnaldum','Netherlands',28,'CM',5,'Liverpool','Liv11'),('James','Milner','England',32,'CM',7,'Liverpool','Liv12'),('Naby','Keita','Guinea',23,'CAM',8,'Liverpool','Liv13'),('Adam','Lallana','England',30,'CAM',20,'Liverpool','Liv14'),('Alex','Chamberlain','England',25,'RM',21,'Liverpool','Liv15'),('Roberto','Firminio','Brazil',27,'CF',9,'Liverpool','Liv16'),('Sadio','Mane','Senegal',26,'RF',10,'Liverpool','Liv17'),('Mohamed','Salah','Egypt',26,'LF',11,'Liverpool','Liv18'),('Daniel','Sturridge','England',29,'CF',15,'Liverpool','Liv19'),('Xherdan','Shaqiri','Switzerland',27,'RF',23,'Liverpool','Liv20'),('Divock','Origi','Belgium',23,'ST',27,'Liverpool','Liv21'),('Jordan','Henderson','England',28,'CM',14,'Liverpool','Liv22'),('Ederson','Moraes','Brazil',25,'GK',31,'Man City','MC01'),('Claudio','Bravo','Chile',35,'GK',1,'Man City','MC02'),('Eliaquim','Mangala','France',27,'CB',13,'Man City','MC03'),('Vincent','Kompany','Belgium',32,'CB',4,'Man City','MC04'),('Nicolas','Otamendi','Argentina',30,'CB',30,'Man City','MC05'),('John','Stones','England',24,'CB',24,'Man City','MC06'),('Kyle','Walker','England',28,'RB',2,'Man City','MC07'),('Benjamin','Mendy','France',24,'LB',22,'Man City','MC08'),('Aymeric','Laporte','France',24,'CB',14,'Man City','MC09'),('David','Silva','Spain',32,'AM',21,'Man City','MC10'),('Kevin','De Bruyne','Belguim',27,'AM',17,'Man City','MC11'),('Fabian','Delph','England',29,'CM',18,'Man City','MC12'),('Ilkay','Gundogan','Germany',28,'CM',8,'Man City','MC13'),('Bernando','Silva','Portugal',24,'AM',20,'Man City','MC14'),('Phillipp','Foden','England',18,'AM',80,'Man City','MC15'),('Brahim','Diaz','Spain',19,'CM',55,'Man City','MC16'),('Raheem','Sterling','Engalnd',24,'LF',7,'Man City','MC17'),('Riyad','Mahrez','Algeria',27,'RM',26,'Man City','MC18'),('Sergio','Aguero','Argentina',30,'CF',10,'Man City','MC19'),('Leroy','Sane','Germany',22,'RF',19,'Man City','MC20'),('Gabriel','Jesus','Brazil',21,'CF',33,'Man City','MC21'),('Phillippe','Sandler','Netherlands',21,'CB',45,'Man City','MC22'),('David','De Gea','Spain',28,'GK',1,'Man UTD','MU01'),('Sergio','Romero','Argentina',31,'GK',20,'Man UTD','MU02'),('Matteo ','Darmian','Italy',29,'RB',36,'Man UTD','MU03'),('Chris','Smalling','England',29,'CB',12,'Man UTD','MU04'),('Luke','Shaw','England',23,'LB',23,'Man UTD','MU05'),('Phil','Jones','England',26,'CB',4,'Man UTD','MU06'),('Antonio','Valencia','Ecuadur',33,'RB',25,'Man UTD','MU07'),('Marcos','Rojo','Argentina',28,'CB',5,'Man UTD','MU08'),('Eric','Bailly','Ivory Coast',24,'CB',3,'Man UTD','MU09'),('Victor ','Lindelof','Sweden',24,'CB',2,'Man UTD','MU10'),('Diogio','Dalot','Portugal',19,'RB',20,'Man UTD','MU11'),('Juan','Mata','Spain',30,'CAM',8,'Man UTD','MU12'),('Paul','Pogpa','France',25,'CM',6,'Man UTD','MU13'),('Marouane','Fellaini','Belgium',31,'CM',27,'Man UTD','MU14'),('Nemanja ','Matic','Serbia',30,'CM',31,'Man UTD','MU15'),('Anthony','Martial','France',23,'LM',11,'Man UTD','MU16'),('Jesse','Lingard','England',25,'AM',14,'Man UTD','MU17'),('Ander','Herrera','Spain',29,'CM',21,'Man UTD','MU18'),('Scott','McTominay','Scotland',22,'CM',39,'Man UTD','MU19'),('Alexis','Sanchez','Chile',29,'RM',7,'Man UTD','MU20'),('Romelu','Lukaku','Belgium',25,'CF',9,'Man UTD','MU21'),('Marcus','Rashford','England',21,'CF',10,'Man UTD','MU22'),('Hugo ','Lloris	','France	',31,'GK',1,'Tottenham','tot01'),('Michel ','Vorm	','Netherlands	',35,'GK',13,'Tottenham','tot02'),('Paulo	','Gazzaniga','Argentina	',26,'GK',22,'Tottenham','tot03'),('Kieran	','Trippier	','England	',28,'RB',2,'Tottenham','tot04'),('Danny	','Rose	','England',28,'LB ',3,'Tottenham','tot05'),('Toby	','Anderweild','Belgium',29,'CB',4,'Tottenham','tot06'),('Jan ','Vertonghen','Belgium',31,'CB',5,'Tottenham','tot07'),('Davinson','Sanchez','Colombia',22,'CB',6,'Tottenham','tot08'),('Juan ','Foyth','Argentina',20,'RB',21,'Tottonham','tot09'),('Serge ','Aurier','Cote D\'Ivoire',25,'CB',24,'Tottenham','tot10'),('Ben','Davis','Wales',25,'LB',33,'Tottenham','tot11'),('Kyle','Walker-Peters','England',21,'CDM',16,'Tottenham','tot12'),('Eric','Lamela','Argentina',26,'RW',11,'Tottenham','tot13'),('Victor','Wanyama','Kenya',27,'CM',12,'Tottenham','tot14'),('Eric','Dier','England',24,'CM',15,'Tottenham','tot15'),('Moussa','Sissoko','France',29,'RM',17,'Tottenham','tot16'),('Mousa','Dembele','Belgium',31,'RM',19,'Tottenham','tot17'),('Dele','Alli','England',22,'LM',20,'Tottenham','tot18'),('Chritian','Eriksen','Denmark',26,'LM',23,'Tottenham','tot19'),('Lucas','Moura','Brazil',26,'RW',27,'Tottenham','tot20'),('Son','Hueng-Min','South Korea',26,'LW',7,'Tottenham','tot21'),('Harry','Kane','England',25,'ST',10,'Tottenham','tot22'),('Vincent','Janssen','Netherlands',24,'LF',9,'Tottenham','tot23'),('Harry','Winks','England',22,'CAM',8,'Tottenham','tot24'),('Oliver','Skipp','England',18,'RAM',52,'Tottenham','tot25'),('Fernando','Llorente','Spain',33,'RF',18,'Tottenham','tot26'),('Lukasz','Fabianski','Poland',33,'GK',1,'West Ham','Whu01'),('Nathan','Trott','England',20,'GK',34,'West Ham','Whu02'),('Pablo','Zabaleta','Argentina',33,'RB',5,'West Ham','Whu03'),('Winston','Reid','New Zeland',30,'CB',2,'West Ham','Whu04'),('Aaron','Cresswell','England',28,'LB',3,'West Ham','Whu05'),('Angelo','Ogbonna','Italy',30,'CB',21,'West Ham','Whu06'),('Arthur','Masuaku','France',25,'LB',26,'West Ham','Whu07'),('Reece','Oxford','England',20,'CB',35,'West Ham','Whu08'),('Fabian','Balbuena','Paraguay',27,'CB',68,'West Ham','Whu09'),('Issa','Diop','France',24,'CB',66,'West Ham','Whu10'),('Jack','Wilshere','England',26,'CM',44,'West Ham','Whu11'),('Mark','Noble','England',31,'CM',16,'West Ham','Whu12'),('Michail','Antonio','England',28,'RM',30,'West Ham','Whu13'),('Robert','Snodgrass','Scotland',30,'RM',82,'West Ham','Whu14'),('Felipe','Anderson','Brazil',25,'AM',6,'West Ham','Whu15'),('Pedro','Obiang','Spain',26,'CM',14,'West Ham','Whu16'),('Josh','Cullen','England',22,'CM',33,'West Ham','Whu17'),('Manuel','Lanzini','Argentina',25,'AM',10,'West Ham','Whu18'),('Javier','Hernandez','Mexico',30,'CF',17,'West Ham','Whu19'),('Marco','Arnatovic','Austria',29,'LF',7,'West Ham','Whu20'),('Andy','Carroll','England',29,'CF',9,'West Ham','Whu21'),('Lucas','Perez','Spain',30,'CF',65,'West Ham','Whu22');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `referee` (
  `FName` varchar(45) NOT NULL,
  `LName` varchar(45) NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Licence` int(11) NOT NULL,
  PRIMARY KEY (`Licence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
INSERT INTO `referee` VALUES ('Anthony','Taylor','England',40,1),('Martin','Atkinson','England',47,2),('Andre','Marriner','England',47,3),('Michael','Oliver','England',33,4),('Mike','Dean','England',50,5),('Jonathan','Moss','England',48,6),('Kevin','Friend','England',47,7),('Lee','Mason','England',47,8),('Lee','Probert','England',46,9),('Paul','Tierney','England',37,10);
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stadium` (
  `Name` varchar(45) NOT NULL,
  `Team` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`Address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES ('White Hart Lane','Spurs','London',36284,'748 High Rd'),('Anfield','Liverpool','Liverpool',54074,'Anfield Rd'),('Etihad Stadium','Man City','Manchester',55097,'Ashton New Rd'),('Dean Court','Bournemouth','Bournemouth',11464,'Bournemouth'),('Stamford Bridge','Chelsea','London',41631,'Fulham Rd'),('Goodison Park','Everton','Liverpool',39572,'Goodison Rd'),('Emirates Stadium','Arsenal','London',59867,'Hornsey Rd'),('King Power Stadium','Leiceste','Leiceste',32312,'Leicester'),('London Stadium','West Ham','London',66000,'Queen Elizabeth Olympic Park'),('Old Trafford','Man UTD','Manchester',74994,'Sir Matt Busby Way');
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `Name` varchar(45) NOT NULL,
  `Position` int(11) NOT NULL,
  `SquadNo` int(11) NOT NULL,
  `Coach` varchar(45) NOT NULL,
  `Trophies` int(11) NOT NULL,
  `Stadium` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('Arsenal',5,22,'Unai Emery',3,'Emirates Stadium'),('Bournemouth',8,22,'Eddie Howe',0,'Dean Court'),('Chelsea',4,22,'Mourizio Sarri',5,'Stamford Bridge'),('Everton',7,22,'Marco Silva',0,'Goodison Park'),('Leicester ',9,23,'Claude Puel',1,'King Power Stadium'),('Liverpool',1,22,'Jurgen Klopp',0,'Anfield'),('Man City',2,22,'Pep Guardiola',3,'Etihad Stadium'),('Man UTD',6,22,'Jose Mourinho',13,'Old Trafford'),('Spurs',3,26,'Mauricio Pochettino',0,'White Heart Lane'),('West Ham',10,22,'Manuel Pellegrini',0,'London Stadium');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 17:07:56
