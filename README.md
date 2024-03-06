## Description
This repository contains the MySQL schema for a database related to an equestrian center (Ecurie), including tables for breeds (Race), competitions (Concours), personnel (Personne), horses (Cheval), growth data (Croissance), participation in competitions (Participation), and ownership transactions (Proprietaire).  
*The data in the database, including table and field names, is in French.*

## Tables Description
- Race: Contains information about horse breeds, including the name of the breed, average weight (poidsType), and average height (tailleType).
- Concours:  Stores details about equestrian competitions, including the name, year, and number of participants.
- Personne: Stores information about people involved in the equestrian center, including personnel and owners. It includes fields for the person's number, last name, first name, address, telephone number, role or function, and the number of their superior.
- Cheval: Stores information about horses, including their number, name, color, tattoo number, race name, father's horse number, mother's horse number, and breeder's person number.
- Croissance: Stores growth data of horses, including the month, weight, height, and horse number.
- Participation: Records horses' involvement in competitions, detailing the horse number, competition name and year, as well as the horse's ranking.
- Proprietaire: Records ownership transactions of horses, including the person number, horse number, transaction date, and price.

## Simple Queries
- View the contents of all tables in the "ecurie" schema.
- Provide a list of horses of the "Arabian" breed ordered alphabetically in descending order.
- What are their average height (tailleType) and average weight (poidsType)?
- List all horse owners.
- Who are the people without a superior?
- Which competitions took place in the year 2019?
