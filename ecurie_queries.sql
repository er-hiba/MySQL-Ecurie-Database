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
7 rows in set (0.01 sec)

mysql> -- Consulter le contenu de toutes les tables du schéma ecurie --
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
5 rows in set (0.01 sec)

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
7 rows in set (0.00 sec)

mysql> select * from croissance;
+------------+-------+--------+-----------+
| Mois       | Poids | Taille | numCheval |
+------------+-------+--------+-----------+
| 2023-01-01 |   100 |     90 |         1 |
| 2023-01-01 |   350 |    140 |         2 |
| 2023-01-01 |   330 |    138 |         3 |
| 2023-01-01 |    50 |     60 |         4 |
| 2023-01-01 |   200 |    110 |         5 |
| 2023-02-01 |   110 |     92 |         1 |
| 2023-02-01 |   360 |    142 |         2 |
| 2023-02-01 |   340 |    140 |         3 |
| 2023-02-01 |    60 |     65 |         4 |
| 2023-02-01 |   210 |    112 |         5 |
| 2023-03-01 |   120 |     94 |         1 |
| 2023-03-01 |   370 |    144 |         2 |
| 2023-03-01 |   350 |    142 |         3 |
| 2023-03-01 |    70 |     70 |         4 |
| 2023-03-01 |   220 |    114 |         5 |
+------------+-------+--------+-----------+
15 rows in set (0.00 sec)

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
+----------+---------------+-------------+-----------------------------+---------------+--------------+--------------+
11 rows in set (0.00 sec)

mysql> select * from proprietaire;
+----------+-----------+-----------------+-------+
| numPerso | numCheval | dateTransaction | prix  |
+----------+-----------+-----------------+-------+
|        6 |         1 | 2024-01-01      | 20000 |
|        8 |         5 | 2023-12-10      | 35000 |
+----------+-----------+-----------------+-------+
2 rows in set (0.00 sec)

mysql> select * from concours;
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
6 rows in set (0.00 sec)

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

mysql> -- Donner la liste des chevaux de la race "Arabian" ordonnée par ordre alphabétique descendant --
mysql> select numCheval, nomCheval from cheval
    -> where nomRace = 'Arabian'
    -> order by nomCheval desc;
+-----------+-----------+
| numCheval | nomCheval |
+-----------+-----------+
|         3 | Sun       |
|         4 | Rainbow   |
|         2 | Rain      |
+-----------+-----------+
3 rows in set (0.01 sec)

mysql> -- Quelles sont leurs tailleType et PoidsType --
mysql> select * from race
    -> where nomRace = 'Arabian' ;
+---------+-----------+------------+
| nomRace | poidsType | tailleType |
+---------+-----------+------------+
| Arabian |       410 |        148 |
+---------+-----------+------------+
1 row in set (0.00 sec)

mysql> -- Lister tous les propriétaires des chevaux --
mysql> select personne.numPerso as numProprietaire, personne.nomPerso as nom, personne.prenomPerso as prenom, adresse, telephone, numCheval
    -> from personne join proprietaire
    -> on personne.numPerso = proprietaire.numPerso ;
+-----------------+------------+--------+-----------------------+---------------+-----------+
| numProprietaire | nom        | prenom | adresse               | telephone     | numCheval |
+-----------------+------------+--------+-----------------------+---------------+-----------+
|               6 | Bouazzaoui | Leila  | 22 Avenue Hassan II   | +212654321098 |         1 |
|               8 | Chraibi    | Nadia  | 36 Avenue Mohammed VI | +212622884411 |         5 |
+-----------------+------------+--------+-----------------------+---------------+-----------+
2 rows in set (0.00 sec)

mysql> -- Lister tous les propriétaires des chevaux --
mysql> select pr.numCheval, p.numPerso numProprietaire, p.nomPerso nom, p.prenomPerso prenom, adresse, telephone
    -> from personne p
    -> join proprietaire pr
    -> on p.numPerso = pr.numPerso ;
+-----------+-----------------+------------+--------+-----------------------+---------------+
| numCheval | numProprietaire | nom        | prenom | adresse               | telephone     |
+-----------+-----------------+------------+--------+-----------------------+---------------+
|         1 |               6 | Bouazzaoui | Leila  | 22 Avenue Hassan II   | +212654321098 |
|         5 |               8 | Chraibi    | Nadia  | 36 Avenue Mohammed VI | +212622884411 |
+-----------+-----------------+------------+--------+-----------------------+---------------+
2 rows in set (0.00 sec)

mysql> -- Qui sont les personnes qui n'ont pas un supérieur --
mysql> select * from personne
    -> where numPerso_Sup is null ;
+----------+------------+-------------+-----------------------------+---------------+--------------+--------------+
| numPerso | nomPerso   | prenomPerso | adresse                     | telephone     | fonction     | numPerso_Sup |
+----------+------------+-------------+-----------------------------+---------------+--------------+--------------+
|        1 | Benali     | Karim       | 12 Rue Al Massira           | +212612345789 | Manager      |         NULL |
|        3 | Zouhairi   | Ahmed       | 56 Avenue Mohamed V         | +212600255478 | Vétérinaire  |         NULL |
|        6 | Bouazzaoui | Leila       | 22 Avenue Hassan II         | +212654321098 | Propriétaire |         NULL |
|        8 | Chraibi    | Nadia       | 36 Avenue Mohammed VI       | +212622884411 | Propriétaire |         NULL |
|       10 | Zahir      | Fatima      | 15 Avenue Al Amir Fal Ouali | +212610203040 | Éleveur      |         NULL |
+----------+------------+-------------+-----------------------------+---------------+--------------+--------------+
5 rows in set (0.00 sec)

mysql> -- Quels concours sont déroulés dans l'annee 2019 --
mysql> select * from concours
    -> where annee = 2019 ;
+--------------------+-------+-----------------+
| nomConcours        | annee | nbrParticipants |
+--------------------+-------+-----------------+
| Autumn Cup         |  2019 |              20 |
| Councours Régional |  2019 |              40 |
| Summer Classic     |  2019 |              25 |
+--------------------+-------+-----------------+
3 rows in set (0.00 sec)

mysql>