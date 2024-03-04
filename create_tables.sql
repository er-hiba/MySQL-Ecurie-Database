mysql> create database Ecurie;
Query OK, 1 row affected (0.03 sec)

mysql> use ecurie;
Database changed
mysql> create table Race(
    -> nomRace varchar(20) primary key,
    -> poidsType double,
    -> tailleType double);
Query OK, 0 rows affected (0.05 sec)

mysql> desc race;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| nomRace    | varchar(20) | NO   | PRI | NULL    |       |
| poidsType  | double      | YES  |     | NULL    |       |
| tailleType | double      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table concours(
    -> nomConcours varchar(45),
    -> annee year,
    -> nbrParticipants int,
    -> primary key (nomConcours, annee));
Query OK, 0 rows affected (0.04 sec)

mysql> desc concours;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| nomConcours     | varchar(45) | NO   | PRI | NULL    |       |
| annee           | year        | NO   | PRI | NULL    |       |
| nbrParticipants | int         | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table Persone(
    -> numPerso int primary key,
    -> nomPerso varchar(13),
    -> prenomPerso varchar(10),
    -> adresse varchar(45),
    -> telephone varchar(13),
    -> fonction varchar(30),
    -> numPerso_Sup int,
    -> foreign key (numPerso_Sup) references Persone(numPerso));
Query OK, 0 rows affected (0.07 sec)

mysql> alter table Persone
    -> rename table Persone to Personne ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table Persone to Personne' at line 2
mysql> rename table Persone to Personne;
Query OK, 0 rows affected (0.07 sec)

mysql> desc Personne;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| numPerso     | int         | NO   | PRI | NULL    |       |
| nomPerso     | varchar(13) | YES  |     | NULL    |       |
| prenomPerso  | varchar(10) | YES  |     | NULL    |       |
| adresse      | varchar(45) | YES  |     | NULL    |       |
| telephone    | varchar(13) | YES  |     | NULL    |       |
| fonction     | varchar(30) | YES  |     | NULL    |       |
| numPerso_Sup | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> create table Cheval(
    -> numCheval int primary key,
    -> nomCheval varchar(20),
    -> couleur varchar(13),
    -> numTatouage  varchar(15),
    -> nomRace varchar(20),
    -> numCheval_Pere int,
    -> numCheval_Mere int,
    -> numEleveur int,
    -> foreign key (numCheval_Pere) references cheval(numCheval),
    -> foreign key (numCheval_Mere) references cheval(numCheval),
    -> foreign key (numEleveur) references personne(numPerso));
Query OK, 0 rows affected (0.12 sec)

mysql> desc cheval;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| numCheval      | int         | NO   | PRI | NULL    |       |
| nomCheval      | varchar(20) | YES  |     | NULL    |       |
| couleur        | varchar(13) | YES  |     | NULL    |       |
| numTatouage    | varchar(15) | YES  |     | NULL    |       |
| nomRace        | varchar(20) | YES  |     | NULL    |       |
| numCheval_Pere | int         | YES  | MUL | NULL    |       |
| numCheval_Mere | int         | YES  | MUL | NULL    |       |
| numEleveur     | int         | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> create table croissance(
    -> Mois date primary key,
    -> Poids double,
    -> Taille double,
    -> numCheval int,
    -> foreign key (numCheval) references cheval(numCheval));
Query OK, 0 rows affected (0.07 sec)

mysql> desc croissance;
+-----------+--------+------+-----+---------+-------+
| Field     | Type   | Null | Key | Default | Extra |
+-----------+--------+------+-----+---------+-------+
| Mois      | date   | NO   | PRI | NULL    |       |
| Poids     | double | YES  |     | NULL    |       |
| Taille    | double | YES  |     | NULL    |       |
| numCheval | int    | YES  | MUL | NULL    |       |
+-----------+--------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table Participation(
    -> numCheval int,
    -> nomConcours varchar(45),
    -> annee year,
    -> place int,
    -> primary key (numCheval, nomConcours, annee),
    -> foreign key (numCheval) references cheval(numCheval),
    -> foreign key (nomConcours, annee) references concours(nomConcours, annee));
Query OK, 0 rows affected (0.06 sec)

mysql> show create table participation;
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table         | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| participation | CREATE TABLE `participation` (
  `numCheval` int NOT NULL,
  `nomConcours` varchar(45) NOT NULL,
  `annee` year NOT NULL,
  `place` int DEFAULT NULL,
  PRIMARY KEY (`numCheval`,`nomConcours`,`annee`),
  KEY `nomConcours` (`nomConcours`,`annee`),
  CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`numCheval`) REFERENCES `cheval` (`numCheval`),
  CONSTRAINT `participation_ibfk_2` FOREIGN KEY (`nomConcours`, `annee`) REFERENCES `concours` (`nomConcours`, `annee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.01 sec)

mysql> desc participation;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| numCheval   | int         | NO   | PRI | NULL    |       |
| nomConcours | varchar(45) | NO   | PRI | NULL    |       |
| annee       | year        | NO   | PRI | NULL    |       |
| place       | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table Proprietaire(
    -> numPerso int,
    -> numCheval int,
    -> dateTransaction date,
    -> prix double,
    -> primary key (numPerso, numCheval, dateTransaction),
    -> foreign key (numCheval) references cheval(numCheval),
    -> foreign key (numPerso) references personne(numPerso));
Query OK, 0 rows affected (0.08 sec)

mysql> desc Proprietaire;
+-----------------+--------+------+-----+---------+-------+
| Field           | Type   | Null | Key | Default | Extra |
+-----------------+--------+------+-----+---------+-------+
| numPerso        | int    | NO   | PRI | NULL    |       |
| numCheval       | int    | NO   | PRI | NULL    |       |
| dateTransaction | date   | NO   | PRI | NULL    |       |
| prix            | double | YES  |     | NULL    |       |
+-----------------+--------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> show create table croissance ;
+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table      | Create Table                                                                                                                                                                                                                                                                                                                                                                |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| croissance | CREATE TABLE `croissance` (
  `Mois` date NOT NULL,
  `Poids` double DEFAULT NULL,
  `Taille` double DEFAULT NULL,
  `numCheval` int DEFAULT NULL,
  PRIMARY KEY (`Mois`),
  KEY `numCheval` (`numCheval`),
  CONSTRAINT `croissance_ibfk_1` FOREIGN KEY (`numCheval`) REFERENCES `cheval` (`numCheval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> alter table croissance
    -> drop primary key;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table croissance
    -> add primary key(Mois, numCheval);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show create table croissance;
+------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table      | Create Table                                                                                                                                                                                                                                                                                                                                                                        |
+------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| croissance | CREATE TABLE `croissance` (
  `Mois` date NOT NULL,
  `Poids` double DEFAULT NULL,
  `Taille` double DEFAULT NULL,
  `numCheval` int NOT NULL,
  PRIMARY KEY (`Mois`,`numCheval`),
  KEY `numCheval` (`numCheval`),
  CONSTRAINT `croissance_ibfk_1` FOREIGN KEY (`numCheval`) REFERENCES `cheval` (`numCheval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> show tables;
+------------------+
| Tables_in_ecurie |
+------------------+
| cheval           |
| concours         |
| croissance       |
| participation    |
| personne         |
| proprietaire     |
| race             |
+------------------+
7 rows in set (0.00 sec)

mysql>
