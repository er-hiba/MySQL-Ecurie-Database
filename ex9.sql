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
| ride_hailing       |
| ridehailing        |
| sakila             |
| sys                |
| test2              |
| tramway            |
| vol                |
| world              |
+--------------------+
18 rows in set (0.14 sec)

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
7 rows in set (0.03 sec)

mysql> select * from cheval;
+-----------+-----------+---------+-------------+---------------+----------------+----------------+------------+
| numCheval | nomCheval | couleur | numTatouage | nomRace       | numCheval_Pere | numCheval_Mere | numEleveur |
+-----------+-----------+---------+-------------+---------------+----------------+----------------+------------+
|         1 | Spirit    | Bai     | SB1245      | Kiger Mustang |           NULL |           NULL |         10 |
|         2 | Rain      | Alezan  | RA2487      | Arabian       |           NULL |           NULL |          5 |
|         3 | Sun       | Bai     | RB5843      | Arabian       |           NULL |           NULL |          9 |
|         4 | Rainbow   | Bai     | AR47896     | Arabian       |              2 |              3 |         11 |
|         5 | Thunder   | Noire   | HB1274      | Friesian      |           NULL |           NULL |          7 |
+-----------+-----------+---------+-------------+---------------+----------------+----------------+------------+
5 rows in set (0.04 sec)

mysql> select * from race;
+---------------+-----------+------------+
| nomRace       | poidsType | tailleType |
+---------------+-----------+------------+
| Andalusian    |       553 |        158 |
| Arabian       |       410 |        148 |
| Blazer        |       500 |        153 |
| Friesian      |       590 |        161 |
| Irish Draught |       703 |        165 |
| Kiger Mustang |       360 |        142 |
| Moriesian     |       590 |        155 |
+---------------+-----------+------------+
7 rows in set (0.02 sec)

mysql> select * from concours ;
+--------------------------+-------+-----------------+
| nomConcours              | annee | nbrParticipants |
+--------------------------+-------+-----------------+
| Autumn Cup               |  2019 |              20 |
| Championat National      |  2023 |              50 |
| Concours National        |  2020 |              50 |
| Councours Régional       |  2019 |              40 |
| Grand Prix International |  2021 |              30 |
| Summer Classic           |  2019 |              25 |
+--------------------------+-------+-----------------+
6 rows in set (0.02 sec)

mysql> select * from participation;
+-----------+--------------------------+-------+-------+
| numCheval | nomConcours              | annee | place |
+-----------+--------------------------+-------+-------+
|         1 | Autumn Cup               |  2019 |     1 |
|         1 | Grand Prix International |  2021 |     1 |
|         2 | Championat National      |  2023 |     3 |
|         2 | Concours National        |  2020 |     5 |
|         2 | Councours Régional       |  2019 |     2 |
|         3 | Concours National        |  2020 |     2 |
|         3 | Councours Régional       |  2019 |     1 |
|         5 | Summer Classic           |  2019 |     2 |
+-----------+--------------------------+-------+-------+
8 rows in set (0.02 sec)

mysql> select * from personne ;
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
| numPerso | nomPerso      | prenomPerso | adresse                     | telephone     | fonction     | numPerso_Sup |
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
|        1 | Benali        | Karim       | 12 Rue Al Massira           | +212612345789 | Manager      |         NULL |
|        2 | El Mansouri   | Fatima      | 34 Rue Ibn Tachfine         | +212798765440 | Entraineur   |            1 |
|        3 | Zouhairi      | Ahmed       | 56 Avenue Mohamed V         | +212600255478 | Vétérinaire  |         NULL |
|        4 | Hassani       | Amina       | 78 Rue Moulay Rachid        | +212712667890 | Cavalier     |            1 |
|        5 | Khalfi        | Mehdi       | 10 Rue Ahmed El Majdoubi    | +212014583993 | Éleveur      |            1 |
|        6 | Bouazzaoui    | Leila       | 22 Avenue Hassan II         | +212654321098 | Propriétaire |         NULL |
|        7 | Ait Benhaddou | Youssef     | 24 Rue Ibn Khaldoun         | +212622466878 | Éleveur      |            1 |
|        8 | Chraibi       | Nadia       | 36 Avenue Mohammed VI       | +212622884411 | Propriétaire |         NULL |
|        9 | El Fassi      | Rachid      | 48 Rue Abou Bakr El Kadiri  | +212600000008 | Éleveur      |            5 |
|       10 | Zahir         | Fatima      | 15 Avenue Al Amir Fal Ouali | +212610203040 | Éleveur      |         NULL |
|       11 | Berrada       | Ahmed       | 29 Rue Ibn Zaidoun          | +212680904560 | Éleveur      |            7 |
|       12 | Erraoui       | Hiba        | Hay Azli                    | +212778921106 | Proprietaire |         NULL |
|       13 | El filali     | Kbbour      | Socoma                      | +212655521234 | Proprietaire |         NULL |
|       14 | El filali     | Kbbour      | Hay Al Fateh                | +212784541007 | Proprietaire |         NULL |
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
14 rows in set (0.02 sec)

mysql> update personne
    -> set fonction = "Propriétaire"
    -> where numPerso = 12 ;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update personne
    -> set fonction = "Propriétaire"
    -> where numPerso = 13 ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update personne
    -> set fonction = "Propriétaire"
    -> where numPerso = 14 ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> insert into Concours
    -> values
    -> ("Concours Dubai", 2022, 25),
    -> ("Concours Dubai", 2023, 30),
    -> ("Concours de Londres", 2018, 30);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into race
    -> values
    -> ("AngloArabe", 450, 157);
Query OK, 1 row affected (0.01 sec)

mysql> insert into personne
    -> values
    -> (15, "Hilali", "Ziad", "Hay Najah", "+212645680000", "Éleveur" , 9),
    -> (16, "ERRAOUI", "Hicham", "Almanzah", "+212754602310", "Directeur", null);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from personne;
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
| numPerso | nomPerso      | prenomPerso | adresse                     | telephone     | fonction     | numPerso_Sup |
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
|        1 | Benali        | Karim       | 12 Rue Al Massira           | +212612345789 | Manager      |         NULL |
|        2 | El Mansouri   | Fatima      | 34 Rue Ibn Tachfine         | +212798765440 | Entraineur   |            1 |
|        3 | Zouhairi      | Ahmed       | 56 Avenue Mohamed V         | +212600255478 | Vétérinaire  |         NULL |
|        4 | Hassani       | Amina       | 78 Rue Moulay Rachid        | +212712667890 | Cavalier     |            1 |
|        5 | Khalfi        | Mehdi       | 10 Rue Ahmed El Majdoubi    | +212014583993 | Éleveur      |            1 |
|        6 | Bouazzaoui    | Leila       | 22 Avenue Hassan II         | +212654321098 | Propriétaire |         NULL |
|        7 | Ait Benhaddou | Youssef     | 24 Rue Ibn Khaldoun         | +212622466878 | Éleveur      |            1 |
|        8 | Chraibi       | Nadia       | 36 Avenue Mohammed VI       | +212622884411 | Propriétaire |         NULL |
|        9 | El Fassi      | Rachid      | 48 Rue Abou Bakr El Kadiri  | +212600000008 | Éleveur      |            5 |
|       10 | Zahir         | Fatima      | 15 Avenue Al Amir Fal Ouali | +212610203040 | Éleveur      |         NULL |
|       11 | Berrada       | Ahmed       | 29 Rue Ibn Zaidoun          | +212680904560 | Éleveur      |            7 |
|       12 | Erraoui       | Hiba        | Hay Azli                    | +212778921106 | Propriétaire |         NULL |
|       13 | El filali     | Kbbour      | Socoma                      | +212655521234 | Propriétaire |         NULL |
|       14 | El filali     | Kbbour      | Hay Al Fateh                | +212784541007 | Propriétaire |         NULL |
|       15 | Hilali        | Ziad        | Hay Najah                   | +212645680000 | Éleveur      |            9 |
|       16 | ERRAOUI       | Hicham      | Almanzah                    | +212754602310 | Directeur    |         NULL |
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
16 rows in set (0.00 sec)

mysql> insert into cheval
    -> values
    -> (6, "Kiwi", "Noire", "T0415", "AngloArabe", null, null, 15);
Query OK, 1 row affected (0.01 sec)

mysql> -- Combien y a-t-il de Chevaux Noir ?
mysql> select count(*)
    -> from cheval
    -> where couleur = "Noire" ;
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.01 sec)

mysql> -- Combien y a-t-il de chevaux de la race AngloArabe?
mysql> SELECT COUNT(*)
    -> FROM cheval
    -> WHERE nomRace = 'AngloArabe';
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql> -- Donner le numéro et le nom du cheval dont le Numéro de tatouage est : T0415
mysql> SELECT numCheval, nomCheval
    -> FROM cheval
    -> WHERE numTatouage = 'T0415';
+-----------+-----------+
| numCheval | nomCheval |
+-----------+-----------+
|         6 | Kiwi      |
+-----------+-----------+
1 row in set (0.00 sec)

mysql> -- Combien y a-t-il d’éditions du concours : « Concours Dubai »?
mysql> select count(*)
    -> from concours
    -> where nomConcours = "Concours Dubai";
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.01 sec)

mysql> -- Quel est le nombre total de participants dans toutes les éditions du Concours Dubai?
mysql> SELECT SUM(nbrParticipants) AS TotalParticipants
    -> FROM concours
    -> where nomConcours = "Concours Dubai";
+-------------------+
| TotalParticipants |
+-------------------+
|                55 |
+-------------------+
1 row in set (0.01 sec)

mysql> -- Dans quels concours /année les chevaux de l’écurie ont eu la première place?
mysql> SELECT nomConcours, annee
    -> FROM participation
    -> WHERE place = 1;
+--------------------------+-------+
| nomConcours              | annee |
+--------------------------+-------+
| Autumn Cup               |  2019 |
| Grand Prix International |  2021 |
| Councours Régional       |  2019 |
+--------------------------+-------+
3 rows in set (0.00 sec)

mysql> select * from concours;
+--------------------------+-------+-----------------+
| nomConcours              | annee | nbrParticipants |
+--------------------------+-------+-----------------+
| Autumn Cup               |  2019 |              20 |
| Championat National      |  2023 |              50 |
| Concours de Londres      |  2018 |              30 |
| Concours Dubai           |  2022 |              25 |
| Concours Dubai           |  2023 |              30 |
| Concours National        |  2020 |              50 |
| Councours Régional       |  2019 |              40 |
| Grand Prix International |  2021 |              30 |
| Summer Classic           |  2019 |              25 |
+--------------------------+-------+-----------------+
9 rows in set (0.00 sec)

mysql> select * from participation;
+-----------+--------------------------+-------+-------+
| numCheval | nomConcours              | annee | place |
+-----------+--------------------------+-------+-------+
|         1 | Autumn Cup               |  2019 |     1 |
|         1 | Grand Prix International |  2021 |     1 |
|         2 | Championat National      |  2023 |     3 |
|         2 | Concours National        |  2020 |     5 |
|         2 | Councours Régional       |  2019 |     2 |
|         3 | Concours National        |  2020 |     2 |
|         3 | Councours Régional       |  2019 |     1 |
|         5 | Summer Classic           |  2019 |     2 |
+-----------+--------------------------+-------+-------+
8 rows in set (0.00 sec)

mysql> -- Quels chevaux ont participé à l’édition 2018 du concours de Londres ?
mysql> select numCheval from participation
    -> where nomConcours = "Concours de Londres" and annee = 2018 ;
Empty set (0.01 sec)

mysql> -- Comment s’appelle le directeur de l’établissement ?
mysql> SELECT CONCAT(nomPerso, ' ', prenomPerso) AS nom
    -> FROM personne
    -> WHERE fonction = 'Directeur';
+----------------+
| nom            |
+----------------+
| ERRAOUI Hicham |
+----------------+
1 row in set (0.01 sec)

mysql> -- Combien y a-t ’il de propriétaires ?
mysql> SELECT COUNT(DISTINCT numPerso)
    -> from personne
    -> where fonction = "Propriétaire" ;
+--------------------------+
| COUNT(DISTINCT numPerso) |
+--------------------------+
|                        5 |
+--------------------------+
1 row in set (0.00 sec)

mysql> select * from proprietaire;
+----------+-----------+-----------------+-------+
| numPerso | numCheval | dateTransaction | prix  |
+----------+-----------+-----------------+-------+
|        6 |         1 | 2024-01-01      | 20000 |
|        8 |         5 | 2023-12-10      | 35000 |
|       12 |         1 | 2021-08-10      | 50000 |
|       12 |         1 | 2023-09-09      | 25000 |
|       12 |         4 | 2022-02-23      | 40000 |
|       13 |         2 | 2020-05-16      | 36000 |
|       13 |         3 | 2024-01-01      | 42000 |
|       14 |         3 | 2022-09-16      | 43000 |
+----------+-----------+-----------------+-------+
8 rows in set (0.01 sec)

mysql> -- Combien de chevaux le propriétaire N6 a acheté en 2020 ?
mysql> SELECT COUNT(*)
    -> FROM proprietaire
    -> WHERE numPerso = 6 AND YEAR(dateTransaction) = 2020;
+----------+
| COUNT(*) |
+----------+
|        0 |
+----------+
1 row in set (0.00 sec)

mysql> -- Combien a-t-il payé pour acheter ses chevaux ?
mysql> SELECT SUM(prix)
    -> FROM proprietaire
    -> WHERE numPerso = 6;
+-----------+
| SUM(prix) |
+-----------+
|     20000 |
+-----------+
1 row in set (0.00 sec)

mysql>