mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| centre_formation   |
| djallabasoft       |
| ecurie             |
| hiba               |
| hollywood          |
| information_schema |
| isgi               |
| mysql              |
| online_shop        |
| performance_schema |
| sakila             |
| sys                |
| test2              |
| tramway            |
| vol                |
| world              |
+--------------------+
16 rows in set (0.03 sec)

mysql> use ecurie;
Database changed
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
7 rows in set (0.02 sec)

mysql> desc race;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| nomRace    | varchar(20) | NO   | PRI | NULL    |       |
| poidsType  | double      | YES  |     | NULL    |       |
| tailleType | double      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into race
    -> values
    -> ('Friesian', 590, 161),
    -> ('Andalusian', 553, 158),
    -> ('Irish Draught', 703, 165),
    -> ('Arabian', 410, 148),
    -> ('Blazer', 500, 153),
    -> ('Moriesian', 590, 155);
Query OK, 6 rows affected (0.04 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> desc concours;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| nomConcours     | varchar(45) | NO   | PRI | NULL    |       |
| annee           | year        | NO   | PRI | NULL    |       |
| nbrParticipants | int         | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into concours
    -> values
    -> ('Championat National', 2023, 50),
    -> ('Grand Prix International', 2021, 30),
    -> ('Councours Régional', 2019, 40),
    -> ('Concours National', 2020, 50),
    -> ('Summer Classic', 2019, 25),
    -> ('Autumn Cup', 2019, 20);
Query OK, 6 rows affected (0.02 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> desc personne;
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
7 rows in set (0.01 sec)

mysql> insert into personne
    -> values
    -> (1, 'Benali', 'Karim', '12 Rue Al Massira', '+212612345789', 'Manager', null),
    -> (2, 'El Mansouri', 'Fatima', '34 Rue Ibn Tachfine', '+212798765440', 'Entraineur', 1),
    -> (3, 'Zouhairi', 'Ahmed', '56 Avenue Mohamed V', '+212600255478', 'Vétérinaire', null),
    -> (4, 'Hassani', 'Amina', '78 Rue Moulay Rachid', '+212712667890', 'Cavalier', 1),
    -> (5, 'Khalfi', 'Mehdi', '10 Rue Ahmed El Majdoubi', '+212014583993', 'Éleveur', 1),
    -> (6, 'Bouazzaoui', 'Leila', '22 Avenue Hassan II', '+212654321098', 'Propriétaire', null),
    -> (7, 'Ait Benhaddou', 'Youssef', '24 Rue Ibn Khaldoun', '+212622466878', 'Éleveur', 1),
    -> (8, 'Chraibi', 'Nadia', '36 Avenue Mohammed VI', '+212622884411', 'Propriétaire', null);
Query OK, 8 rows affected (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 0

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
8 rows in set (0.00 sec)

mysql> desc race;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| nomRace    | varchar(20) | NO   | PRI | NULL    |       |
| poidsType  | double      | YES  |     | NULL    |       |
| tailleType | double      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into race
    -> values
    -> ('Kiger Mustang', 360, 142);
Query OK, 1 row affected (0.01 sec)

mysql> insert into personne
    -> values
    -> (9, 'El Fassi', 'Rachid', '48 Rue Abou Bakr El Kadiri', '+212600000008', 'Éleveur', 5),
    -> (10, 'Zahir', 'Fatima', '15 Avenue Al Amir Fal Ouali', '+212610203040', 'Éleveur', null),
    -> (11, 'Berrada', 'Ahmed', '29 Rue Ibn Zaidoun', '+212680904560', 'Éleveur', 7);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into cheval
    -> values
    -> (1, 'Spirit', 'Bai', 'SB1245', 'Kiger Mustang', null, null, 10),
    -> (2, 'Rain', 'Alezan', 'RA2487', 'Arabian', null, null, 5),
    -> (3, 'Sun', 'Bai', 'RB5843', 'Arabian', null, null, 9),
    -> (4, 'Rainbow', 'Bai', 'AR47896', 'Arabian', 2, 3, 11),
    -> (5, 'Thunder', 'Noire', 'HB1274', 'Friesian', null, null, 7);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc croissance;
+-----------+--------+------+-----+---------+-------+
| Field     | Type   | Null | Key | Default | Extra |
+-----------+--------+------+-----+---------+-------+
| Mois      | date   | NO   | PRI | NULL    |       |
| Poids     | double | YES  |     | NULL    |       |
| Taille    | double | YES  |     | NULL    |       |
| numCheval | int    | NO   | PRI | NULL    |       |
+-----------+--------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into croissance
    -> values
    -> ('2023-01-01', 100, 90, 1),
    -> ('2023-02-01', 110, 92, 1),
    -> ('2023-03-01', 120, 94, 1),
    -> ('2023-01-01', 350, 140, 2),
    -> ('2023-02-01', 360, 142, 2),
    -> ('2023-03-01', 370, 144, 2),
    -> ('2023-01-01', 330, 138, 3),
    -> ('2023-02-01', 340, 140, 3),
    -> ('2023-03-01', 350, 142, 3),
    -> ('2023-01-01', 50, 60, 4),
    -> ('2023-02-01', 60, 65, 4),
    -> ('2023-03-01', 70, 70, 4),
    -> ('2023-01-01', 200, 110, 5),
    -> ('2023-02-01', 210, 112, 5),
    -> ('2023-03-01', 220, 114, 5);
Query OK, 15 rows affected (0.02 sec)
Records: 15  Duplicates: 0  Warnings: 0

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

mysql> insert into participation
    -> values
    -> (2, 'Championat National', 2023, 3),
    -> (1, 'Grand Prix International', 2021, 1),
    -> (2, 'Councours Régional', 2019, 2),
    -> (3, 'Councours Régional', 2019, 1),
    -> (3, 'Concours National', 2020, 2),
    -> (2, 'Concours National', 2020, 5),
    -> (5, 'Summer Classic', 2019, 2),
    -> (1, 'Autumn Cup', 2019, 1);
Query OK, 8 rows affected (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> desc proprietaire;
+-----------------+--------+------+-----+---------+-------+
| Field           | Type   | Null | Key | Default | Extra |
+-----------------+--------+------+-----+---------+-------+
| numPerso        | int    | NO   | PRI | NULL    |       |
| numCheval       | int    | NO   | PRI | NULL    |       |
| dateTransaction | date   | NO   | PRI | NULL    |       |
| prix            | double | YES  |     | NULL    |       |
+-----------------+--------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into proprietaire
    -> values
    -> (6, 1, '2024-01-01', 20000),
    -> (8, 5, '2023-12-10', 35000);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>