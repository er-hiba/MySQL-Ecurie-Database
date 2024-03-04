## Description
This repository contains the MySQL schema for a database related to an equestrian center (Ecurie), including tables for races (Race), contests (Concours), personnel (Personne), horses (Cheval), growth data (Croissance), participation in contests (Participation), and ownership transactions (Proprietaire).  
*The tables and field names, are in French.*
## Tables Description
- Race: Stores information about horse races, including the name of the race, the type of weight measurement, and the type of height measurement.
- Concours: Stores information about contests, such as the name of the contest, the year it took place, and the number of participants.
- Personne: Stores information about people involved in the equestrian center, including personnel and owners. It includes fields for the person's number, last name, first name, address, telephone number, role or function, and the number of their supervisor.
- Cheval: Stores information about horses, including their number, name, color, tattoo number, race name, father's horse number, mother's horse number, and breeder's person number.
- Croissance: Stores growth data of horses, including the month, weight, height, and horse number.
- Participation: Tracks the participation of horses in contests, including the horse number, contest name, year, and place.
- Proprietaire: Records ownership transactions of horses, including the person number, horse number, transaction date, and price.
