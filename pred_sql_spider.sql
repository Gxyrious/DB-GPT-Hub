SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT average(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  "France"
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT name ,  song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name ,  song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT Country ,  count(*) FROM singer GROUP BY Country
SELECT count(*) ,  Country FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age  >  (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age  >  (SELECT avg(Age) FROM singer)
SELECT location ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(capacity) ,  avg(capacity) FROM stadium
SELECT average ,  max(capacity) FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID GROUP BY T2.name
SELECT count(*) ,  T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID GROUP BY T1.name
SELECT t1.name ,  t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.Stadium_ID  =  t2.Stadium_ID WHERE t2.year  >=  2014 GROUP BY t2.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name ,  t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id  =  t2.stadium_id WHERE t2.year  >  2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age  >  40 INTERSECT SELECT Country FROM singer WHERE Age  <  30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014
SELECT T2.name ,  T2.theme ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T2.name
SELECT T3.Name ,  T3.theme ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID  =  T3.Singer_ID GROUP BY T2.concert_ID
SELECT T3.Name ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID  =  T3.Singer_ID GROUP BY T3.Name
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.name
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID  =  T3.Singer_ID WHERE T2.year  =  2014
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID  =  T3.Singer_ID WHERE T2.year  =  2014
SELECT name ,  country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.year  =  2014 INTERSECT SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.year  =  2015
SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.year  =  2014 INTERSECT SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.year  =  2015
SELECT count(*) FROM stadium WHERE capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T2.capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight  >  10
SELECT count(*) FROM pets WHERE weight  >  10
SELECT weight FROM pets WHERE pet_age  =  (SELECT min(pet_age) FROM pets WHERE pettype  =  "dog")
SELECT weight FROM pets WHERE pet_age  =  (SELECT min(pet_age) FROM pets WHERE pettype  =  "dog")
SELECT max(weight) ,  pet_type FROM pets GROUP BY pet_type
SELECT pet_type ,  max(weight) FROM pets GROUP BY pet_type
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid  =  T2.stuid WHERE T2.age  >  20
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid  =  T2.stuid WHERE T2.age  >  20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T3.stuid  =  T1.stuid WHERE T2.pettype  =  "dog" AND T3.sex  =  "F"
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T3.stuid  =  T1.stuid WHERE T3.sex  =  "F" AND T2.pettype  =  "dog"
SELECT count(DISTINCT pet_type) FROM pets
SELECT count(DISTINCT pet_type) FROM pets
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 JOIN pets AS T3 ON T1.StuID  =  T2.StuID AND T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType  =  'Cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType  =  'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType  =  "Cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType  =  "Dog"
SELECT DISTINCT T1.major ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType != 'cat'
SELECT T1.major ,  T1.age FROM Student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID WHERE T1.major != "Cat" INTERSECT SELECT T1.age ,  T1.major FROM Student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.PetID IN (SELECT PetID FROM pets WHERE PetType  =  "Cat")
SELECT StuID FROM Has_pet EXCEPT SELECT T1.StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID  =  T2.PetID WHERE T2.PetType  =  'Cat'
SELECT StuID FROM has_pet EXCEPT SELECT StuID FROM has_pet WHERE petid  =  (SELECT petid FROM pets WHERE pettype  =  'Cat')
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.petid IN (SELECT petid FROM pets WHERE pettype  =  "cat") EXCEPT SELECT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.petid IN (SELECT petid FROM pets WHERE pettype  =  "dog")
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType  =  "Cat" EXCEPT SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.PetType  =  "Dog"
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT pet_type ,  avg(pet_age) ,  max(pet_age) FROM pets GROUP BY pet_type
SELECT pet_type ,  avg(pet_age) ,  max(pet_age) FROM pets GROUP BY pet_type
SELECT pet_type ,  avg(weight) FROM pets GROUP BY pet_type
SELECT pet_type ,  avg(weight) FROM pets GROUP BY pet_type
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID INTERSECT SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID
SELECT T2.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T3.stuid  =  T1.stuid WHERE T3.lname  =  'Smith'
SELECT T2.petid FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T3.stuid  =  T1.stuid WHERE T3.lname  =  "Smith"
SELECT count(*) ,  StuID FROM has_pet GROUP BY StuID
SELECT T1.StuID ,  count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID HAVING count(*)  >  1
SELECT DISTINCT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T2.stuid HAVING count(*)  >  1
SELECT DISTINCT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T2.stuid HAVING count(*)  >  1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 JOIN pets AS T3 ON T1.stuid  =  T2.stuid AND T2.petid  =  T3.petid WHERE T3.pet_age  =  3 AND T2.petid  =  T3.petid AND T3.PetType  =  "Cat"
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 JOIN pets AS T3 ON T1.stuid  =  T2.stuid AND T2.petid  =  T3.petid WHERE T3.pet_age  =  3 AND T2.petid  =  T3.petid AND T3.PetType  =  'Cat'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT ContId ,  Continent ,  count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId  =  T2.Continent GROUP BY T1.ContId
SELECT ContId ,  Continent ,  count(*) FROM continents GROUP BY ContId ORDER BY count(*) DESC
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT FullName ,  Id ,  count(DISTINCT Model) FROM model_list GROUP BY Maker
SELECT T1.FullName ,  T1.Id ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T2.Maker  =  T1.Id GROUP BY T1.Id
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.MakeId ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names WHERE MakeId IN (SELECT MakeId FROM cars_data ORDER BY Horsepower ASC LIMIT 1)
SELECT Model FROM car_names WHERE Weight  <  (SELECT avg(Weight) FROM cars_data)
SELECT Model FROM car_names WHERE Weight  <  ( SELECT avg(Weight) FROM cars_data )
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T2.Id  =  T1.Id WHERE T2.Year  =  1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T2.Id  =  T1.Id WHERE T2.Year  =  1970
SELECT Make ,  YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT T2.Maker ,  T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.MakeId ORDER BY T1.Year LIMIT 1
SELECT DISTINCT Model FROM car_names WHERE YEAR  >  1980
SELECT DISTINCT Model FROM cars_data WHERE YEAR  >  1980
SELECT T1.Continent ,  count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.Country GROUP BY T1.Continent
SELECT T1.Continent ,  count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID  =  T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID  =  T2.Country WHERE T1.CountryName != "null" GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.FullName
SELECT T1.id ,  T1.FullName ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id
SELECT Accelerate FROM car_names WHERE Model  =  "AMC Hornet Sportabout"
SELECT Accelerate FROM car_names WHERE Model  =  "AMC Hornet Sportabout"
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers WHERE Country  =  "France"
SELECT count(DISTINCT model) FROM car_names WHERE country  =  "USA"
SELECT count(*) FROM car_names WHERE country  =  "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT min(Weight) FROM cars_data WHERE Cyliners  =  8 AND YEAR  =  1974
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT DISTINCT Maker ,  Model FROM model_list
SELECT Maker ,  Model FROM model_list
SELECT CountryName ,  CountryId FROM countries WHERE CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName ,  CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.CountryId != null GROUP BY T2.CountryId HAVING count(*)  >=  1
SELECT count(*) FROM cars_data WHERE Horsepower  >  150
SELECT count(*) FROM cars_data WHERE Horsepower  >  150
SELECT Avg(Weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT Avg(Weight) ,  Avg(YEAR) FROM cars_data
SELECT CountryName FROM countries WHERE CountryName IN (SELECT Country FROM car_makers WHERE Continent  =  "Europe") GROUP BY CountryName HAVING count(*)  >=  3
SELECT CountryName FROM countries WHERE Continent  =  "Europe" GROUP BY CountryName HAVING count(*)  >=  3
SELECT Make ,  Horsepower FROM cars_data WHERE Cylinders  =  3 ORDER BY Horsepower DESC LIMIT 1
SELECT Make ,  Horsepower FROM cars_data WHERE Cylinders  =  3 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id  =  T2.MakeId JOIN model_list AS T3 ON T2.Model  =  T3.Model WHERE T3.Maker  =  "volvo"
SELECT avg(Edispl) FROM car_names WHERE Model  =  "Volvo"
SELECT max(Accelerate) ,  Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) ,  Cylinde FROM cars_data GROUP BY Cylinde
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model  =  T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders  >  4
SELECT count(*) FROM cars_data WHERE Cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.FullName  =  "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model  =  T2.Model WHERE T1.Maker  =  "American Motor Company"
SELECT T1.FullName ,  T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T2.Maker  =  T1.Id GROUP BY T1.Id HAVING count(*)  >  3
SELECT T1.Maker ,  T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T2.Maker  =  T1.Id GROUP BY T1.Id HAVING count(*)  >  3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker JOIN cars_data AS T3 ON T3.MakeId  =  T2.ModelId WHERE T1.FullName  =  "General Motors" OR T3.Weight  >  3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid WHERE T1.maker = "General Motors" OR T2.weight  >  3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight  >  3000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight  <  4000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(T1.Cylinders) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Model  =  "volvo"
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id  =  T2.MakeId WHERE T2.Model  =  "volvo" ORDER BY T1.Accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate  >  (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate  >  (SELECT max(Horsepower) FROM cars_data)
SELECT CountryName FROM car_makers GROUP BY CountryName HAVING count(*)  >  2
SELECT count(*) FROM countries WHERE count(*)  >  2
SELECT count(*) FROM cars_data WHERE Cylinders  >  6
SELECT count(*) FROM cars_data WHERE Cyclinders  >  6
SELECT Model FROM car_names WHERE cylinders  =  4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM car_names WHERE Cyliners  =  4 ORDER BY Horsepower DESC LIMIT 1
SELECT T1.MakeId ,  T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Horsepower  >  ( SELECT min(Horsepower) FROM cars_data ) EXCEPT SELECT T1.MakeId ,  T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Cylinders  >  3
SELECT MakeId ,  Model FROM car_names WHERE MakeId IN ( SELECT MakeId FROM cars_data WHERE Horsepower  <  ( SELECT min(Horsepower) FROM cars_data ) ) AND Cylinders  <  4
SELECT max(MPG) FROM cars_data WHERE Cylinders  =  8 OR YEAR  <  1980
SELECT max(MPG) FROM cars_data WHERE Cylinders  =  8 OR YEAR  <  1980
SELECT Model FROM car_names WHERE Weight  <  3500 EXCEPT SELECT T2.Model FROM car_names AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.MakeId WHERE T1.MakeId  =  "Ford Motor Company"
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.make WHERE T2.weight  <  3500 EXCEPT SELECT DISTINCT model FROM car_names WHERE make  =  "Ford"
SELECT CountryName FROM countries EXCEPT SELECT Country FROM car_makers
SELECT CountryName FROM countries WHERE CountryName NOT IN (SELECT Country FROM car_makers)
SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >=  2 AND count(*)  >  3
SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >=  2 JOIN cars_data AS T3 ON T3.makeid  =  T2.modelid GROUP BY T2.model HAVING count(*)  >=  3
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T1.CountryId IN (SELECT T3.CountryId FROM car_makers AS T3 JOIN model_list AS T4 ON T3.Id  =  T4.ModelId WHERE T4.Model  =  "fiat") GROUP BY T1.CountryId HAVING count(*)  >  3 UNION SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T1.CountryId IN (SELECT T3.CountryId FROM car_makers AS T3 JOIN model_list AS T4 ON T3.Id  =  T4.ModelId WHERE T4.Model  =  "fiat") GROUP BY T1.CountryId HAVING count(*)  >  3
SELECT T1.CountryID ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID  =  T2.Country WHERE T1.CountryName != "USA" GROUP BY T1.CountryName HAVING count(*)  >  3 UNION SELECT T1.CountryID ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID  =  T2.Country JOIN model_list AS T3 ON T2.Id  =  T3.ModelId WHERE T3.Model  =  "Fiat"
SELECT Country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline  =  'Jetblue Airways'
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  'USA'
SELECT AirportCode ,  AirportName FROM airports WHERE City  =  "Anthony"
SELECT AirportCode ,  AirportName FROM airports WHERE City  =  "Anthony"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airline FROM airlines WHERE abbreviation  =  'UAL'
SELECT Airline FROM airlines WHERE Abbreviation  =  'UAL'
SELECT count(*) FROM airlines WHERE country  =  "USA"
SELECT count(*) FROM airlines WHERE country  =  "USA"
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT City ,  Country FROM airports WHERE AirportName  =  'Alton'
SELECT AirportName FROM airports WHERE AirportCode  =  "AKO"
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT AirportName FROM airports WHERE City  =  "Aberdeen"
SELECT AirportName FROM airports WHERE City  =  "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport  =  "APG"
SELECT count(*) FROM flights WHERE SourceAirport  =  "APG"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.AirportName  =  "ATO"
SELECT count(*) FROM flights WHERE DestAirport  =  "ATO"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport WHERE T1.City  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport WHERE T1.City  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.destairport WHERE T1.city  =  'Aberdeen' AND T2.DestAirport  =  'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen" AND T2.SourceAirport  =  "Ashley"
SELECT count(*) FROM flights WHERE Airline  =  "JetBlue Airways"
SELECT count(*) FROM flights WHERE Airline  =  "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode JOIN airlines AS T3 ON T1.airline  =  T3.uid WHERE T2.airportname  =  'ASY' AND T3.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Airline  =  T3.Airline WHERE T2.AirportName  =  "ASY" AND T3.Airline  =  "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Airline  =  T3.uid WHERE T2.AirportName  =  'AHD' AND T3.Airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Airline  =  T3.uid WHERE T2.AirportName  =  "AHD" AND T3.Airline  =  "United Airlines"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline JOIN airports AS T3 ON T2.DestAirport  =  T3.AirportCode JOIN airports AS T4 ON T2.SourceAirport  =  T4.AirportCode JOIN airlines AS T5 ON T1.Airline  =  T5.Airline WHERE T5.Airline  =  "United Airlines" AND T3.City  =  "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Aline  =  T3.uid WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "United Airlines"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY count(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) LIMIT 1
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) ASC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.uid ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.uid ORDER BY count(*) LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  "AHD"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'AHD'
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "AHD"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode JOIN flights AS T3 ON T3.destairport  =  T2.airportcode WHERE T2.airportcode  =  'APG' INTERSECT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode JOIN flights AS T3 ON T3.destairport  =  T2.airportcode WHERE T2.airportcode  =  'CVO'
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode JOIN airports AS T3 ON T1.DestAirport  =  T3.AirportCode WHERE T2.AirportName  =  "APG" INTERSECT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode JOIN airports AS T3 ON T1.DestAirport  =  T3.AirportCode WHERE T3.AirportName  =  "CVO"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  "CVO" EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  "APG"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline GROUP BY T1.airline HAVING count(*)  >=  10
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline GROUP BY T1.airline HAVING count(*)  >=  10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*)  <=  200
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline GROUP BY T1.airline HAVING count(*)  <=  200
SELECT FlightNo FROM flights WHERE Airline  =  "United Airlines"
SELECT FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline WHERE T1.Airline  =  "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "APG"
SELECT FlightNo FROM flights WHERE SourceAirport  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.AirportName  =  "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport WHERE T1.City  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen" OR T1.City  =  "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen" OR T1.City  =  "Abilene"
SELECT AirportName FROM airports EXCEPT SELECT T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport
SELECT AirportName FROM airports EXCEPT SELECT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode EXCEPT SELECT T3.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode JOIN airports AS T3 ON T1.DestAirport  =  T3.AirportCode
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT name ,  location ,  district FROM shop ORDER BY number_products DESC
SELECT name ,  location ,  district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID  =  T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID  =  T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID  =  T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID  =  T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE number_products  =  0
SELECT count(*) ,  T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T2.name
SELECT count(*) ,  t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t1.shop_id
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(DISTINCT lock) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT Document_ID ,  Document_name ,  Document_description FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT Document_Name ,  Template_ID FROM Documents WHERE Document_Description LIKE "%w%"
SELECT Document_Name ,  Template_ID FROM Documents WHERE Document_Description LIKE "%w%"
SELECT document_id ,  template_id ,  document_description FROM Documents WHERE Document_name  =  "Robbin CV"
SELECT document_id ,  template_id ,  document_description FROM Documents WHERE Document_name  =  "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  'PPT'
SELECT count(*) FROM Templates WHERE template_type_code  =  "PPT"
SELECT T1.template_id ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT T1.template_id ,  T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.template_id ,  T1.template_type_code FROM Ref_Template_Types AS T1 JOIN templates AS T2 ON T1.template_type_code  =  T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code ,  COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3
SELECT Version_Number ,  Template_Type_Code FROM Templates ORDER BY Version_Number LIMIT 1
SELECT Version_Number ,  Template_Type_Code FROM Templates ORDER BY Version_Number LIMIT 1
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_name  =  "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_name  =  "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  "BK"
SELECT TYPE_TYPE_CODE ,  count(*) FROM Documents GROUP BY TYPE_TYPE_CODE
SELECT TYPE_TYPE_CODE ,  COUNT(*) FROM Ref_template_types GROUP BY TYPE_TYPE_CODE
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code  =  "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"
SELECT DISTINCT T3.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id JOIN Ref_Template_Types AS T3 ON T2.template_type_code  =  T3.template_type_code
SELECT DISTINCT T2.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code  =  T2.template_type_code JOIN Documents AS T3 ON T1.template_id  =  T3.template_id
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code  =  T2.template_type_code WHERE T2.template_type_description  =  "Presentation"
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code  =  T2.template_type_code WHERE T2.template_type_description  =  "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.Document_name  =  'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text  =  "Korea"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea %'
SELECT t2.paragraph_id ,  t2.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id  =  t2.document_id WHERE t1.document_name  =  'Welcome to NY'
SELECT t2.document_id  ,  t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id  =  t2.document_id WHERE t2.document_name  =  'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID  =  (SELECT Document_ID FROM Documents WHERE Document_Name  =  "Customer reviews")
SELECT t2.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id  =  t2.document_id WHERE t1.document_name  =  'Customer reviews'
SELECT count(*) ,  Document_id FROM Paragraphs GROUP BY Document_id ORDER BY Document_id
SELECT Document_id ,  count(*) FROM Paragraphs GROUP BY Document_id ORDER BY Document_id
SELECT Document_id ,  Document_name ,  COUNT(*) FROM Paragraphs GROUP BY Document_id
SELECT Document_id ,  document_name ,  count(*) FROM Paragraphs GROUP BY Document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id ,  document_name FROM Documents ORDER BY count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.document_id ,  t2.document_name FROM Paragraphs AS t1 JOIN Documents AS t2 ON t1.document_id  =  t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id HAVING count(*)  >=  1 AND count(*)  <=  2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text  =  'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text  =  'Ireland'
SELECT document_id FROM Paragraphs WHERE Paragraph_Text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE Paragraph_Text  =  'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age ,  Hometown FROM teacher
SELECT Age ,  Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T2.Name
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID ORDER BY T3.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID WHERE T1.Course_ID  =  (SELECT course_ID FROM course WHERE COURSE  =  "Math")
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id JOIN course AS T3 ON T1.course_id  =  T3.course_id WHERE T3.course  =  'Math'
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT Name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership  <=  4
SELECT name ,  LOC FROM visitor WHERE LOC  >  4 ORDER BY age DESC
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009
SELECT open_year ,  num_of_staff FROM museum WHERE name  =  'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T1.id ,  T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T1.id HAVING count(*)  >  1
SELECT T2.ID ,  T2.Name ,  T2.Level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id ORDER BY T1.Total_spent DESC LIMIT 1
SELECT T1.museum_id ,  T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.Name ,  T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID GROUP BY T1.ID ORDER BY sum(T2.Num_of_Ticket) DESC LIMIT 1
SELECT avg(Num_of_Ticket) ,  max(Num_of_Ticket) FROM visit
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id WHERE T2.Level_of_membership  =  1
SELECT T2.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id  =  T2.museum_id JOIN visitor AS T3 ON T2.visitor_id  =  T3.id WHERE T1.open_year  <  2009 INTERSECT SELECT T2.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id  =  T2.museum_id JOIN visitor AS T3 ON T2.visitor_id  =  T3.id WHERE T1.open_year  >  2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit WHERE museum_id IN ( SELECT museum_id FROM museum WHERE open_year  >  2010 ) )
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name ,  birth_date FROM players WHERE country_code  =  "USA"
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT T1.winner_name FROM matches AS T1 JOIN tourney_date AS T2 ON T1.tourney_id  =  T2.tourney_id WHERE YEAR  =  "2013" INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN tourney_date AS T2 ON T1.tourney_id  =  T2.tourney_id WHERE YEAR  =  "2016"
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking_date  =  "2013" INTERSECT SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking_date  =  "2016"
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking  =  "Winner" AND T2.tours  =  "1" INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking  =  "Winner" AND T2.tours  =  "0" AND T2.tourney_name  =  "Australian Open"
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking  =  "WTA No.1" INTERSECT SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking  =  "Australian Open"
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'l' ORDER BY birth_date
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.tours) DESC LIMIT 1
SELECT first_name ,  country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT winner_name ,  SUM(winner_rank_points) FROM matches GROUP BY winner_name ORDER BY SUM(winner_rank_points) DESC LIMIT 1
SELECT winner_name ,  SUM(ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY SUM(ranking_points) DESC LIMIT 1
SELECT winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id JOIN matches AS T3 ON T1.player_id  =  T3.winner_id WHERE T1.ranking_date  =  "2016-10-31" AND T1.tourney_name  =  "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id JOIN tourney_dates AS T3 ON T2.tourney_id  =  T3.tourney_id WHERE T3.tourney_name  =  "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT loser_name ,  winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT avg(T2.ranking) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT first_name ,  avg(ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id GROUP BY first_name
SELECT first_name ,  sum(ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id GROUP BY first_name
SELECT first_name ,  sum(ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY first_name
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code ,  COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT ranking_date ,  count(DISTINCT tour_id) FROM rankings GROUP BY ranking_date
SELECT ranking_date ,  count(*) FROM rankings GROUP BY ranking_date
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT count(*) FROM (SELECT T1.winner_id FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id  =  T2.player_id WHERE T1.tourney_name  =  "WTA Championships" AND T1.winner_hand  =  "left" UNION SELECT T1.winner_id FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id  =  T2.player_id WHERE T1.tourney_name  =  "WTA Championships" AND T1.winner_hand  =  "left") AS T
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T1.hand  =  "left" AND T2.tourney_name  =  "WTA Championships"
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT hand ,  count(*) FROM players GROUP BY hand
SELECT hand ,  count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  RESULT FROM battle
SELECT max(killed) ,  min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.note FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id WHERE T1.tonnage  =  't'
SELECT name ,  result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed)  >  10
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT RESULT) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT lost_in_battle FROM ship WHERE tonnage  =  225 );
SELECT T2.name ,  T2.date FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id  =  T2.id JOIN ship AS T3 ON T3.id  =  T1.caused_by_ship_id WHERE T3.name  =  'Lettice' INTERSECT SELECT T2.name ,  T2.date FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id  =  T2.id JOIN ship AS T3 ON T3.id  =  T1.caused_by_ship_id WHERE T3.name  =  'HMS Atalanta'
SELECT name ,  RESULT ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location  =  'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 ,  line_2 FROM addresses
SELECT line_1 ,  line_2 FROM addresses
SELECT count(*) FROM COURSES
SELECT count(*) FROM COURSES
SELECT course_description FROM courses WHERE course_name  =  'Math'
SELECT course_description FROM courses WHERE course_name LIKE 'Math%'
SELECT zip_postcode FROM addresses WHERE city  =  'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city  =  "Port Chelsea"
SELECT T1.department_name ,  T1.department_id FROM DEPARTMENTS AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name ,  T1.department_id FROM DEPARTMENTS AS T1 JOIN degree_programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  "Engineering"
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  "Engineering"
SELECT section_name ,  section_description FROM SECTIONS
SELECT section_name ,  section_description FROM SECTIONS
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT course_name ,  course_id FROM courses WHERE count(*)  <  2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%the computer%%'
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name ,  T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  =  2
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name ,  T2.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  =  2
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  "Bachelor"
SELECT T3.first_name ,  T3.middle_name ,  T3.last_name FROM Student_Enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id JOIN students AS T3 ON T1.student_id  =  T3.student_id WHERE T2.degree_summary_name  =  "Bachelors"
SELECT degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T2.first_name ,  T2.middle_name ,  T2.last_name ,  count(*) ,  T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  T1.student_id ,   COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters EXCEPT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T2.course_name FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T2.course_name FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id  =  T2.address_id WHERE T2.state_province_county  =  'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id  =  T2.address_id WHERE T2.state_province_county  =  'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_CONTENTS AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_CONTENTS AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*)  >=  2
SELECT cell_mobile_number FROM Students WHERE first_name  =  "Timmothy" AND last_name  =  "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name  =  "Ward"
SELECT first_name ,  middle_name ,  last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name FROM Student_enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id ORDER BY T1.date_left LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT DISTINCT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id EXCEPT SELECT DISTINCT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id  =  T2.address_id
SELECT T2.address_id ,  T1.line_1 ,  T1.line_2 ,  T1.line_3 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM transcripts
SELECT avg(transcript_date) FROM transcripts
SELECT other_details ,  transcript_date FROM TRANSCRIPTS ORDER BY transcript_date LIMIT 1
SELECT transcript_date ,  other_details FROM TRANSCRIPTS ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM TRANSCRIPTS
SELECT count(*) FROM TRANSCRIPTS
SELECT max(transcript_date) FROM TRANSCRIPTS
SELECT max(transcript_date) FROM TRANSCRIPTS
SELECT count(*) ,  T1.student_course_id FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id  =  T2.student_course_id GROUP BY T1.student_course_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  T1.student_enrolment_id FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id  =  T2.student_course_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_CONTENTS AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_CONTENTS AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.semester_name FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id  =  T2.semester_id WHERE T1.degree_program_id  =  'Master' INTERSECT SELECT T2.semester_name FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id  =  T2.semester_id WHERE T1.degree_program_id  =  'Bachelors'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.degree_program_id  =  'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.degree_program_id  =  'Bachelors'
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.line_1 ,  T1.line_2 ,  T1.line_3 ,  T1.city ,  T1.zip_postcode FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id UNION SELECT DISTINCT T1.line_1 ,  T1.line_2 ,  T1.line_3 ,  T1.city ,  T1.zip_postcode FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.permanent_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT * FROM SECTIONS WHERE section_name  =  'h'
SELECT T1.section_description FROM SECTIONS AS T1 JOIN COURSES AS T2 ON T1.course_id  =  T2.course_id WHERE T1.section_name  =  'h'
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id WHERE T2.country  =  'Haiti' OR T1.cell_mobile_number  =  '09700166582'
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id WHERE T2.country  =  'Haiti' UNION SELECT T1.first_name FROM Students AS T1 WHERE T1.cell_mobile_number  =  '09700166582'
SELECT title FROM cartoon ORDER BY title
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT * FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by  =  "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT Title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT Title ,  directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM cartoon WHERE directed_by  =  "Ben Jones" OR directed_by  =  "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
SELECT Country ,  COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country ,  count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) ,  count(DISTINCT CONTENT) FROM TV_channel
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT CONTENT FROM TV_series WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT package_option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT count(*) FROM TV_Channel WHERE Language  =  "English"
SELECT count(*) FROM TV_Channel WHERE LANGUAGE  =  "English"
SELECT LOCALIZATION ,  COUNT(*) FROM TV_Channel GROUP BY LOCALIZATION ORDER BY COUNT(*) ASC LIMIT 1
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1
SELECT language ,  count(*) FROM TV_channel GROUP BY language
SELECT count(*) ,  LANGUAGE FROM TV_Channel GROUP BY LANGUAGE
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel  =  T2.channel WHERE T1.title  =  "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle"
SELECT t2.title FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t1.series_name  =  "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(share) ,  min(share) FROM tv_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.Episode  =  "A Love of a Lifetime"
SELECT series_name FROM tv_series WHERE episode  =  "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.Channel WHERE T1.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series WHERE series_name  =  "Sky Radio"
SELECT count(*) ,  directed_by FROM Cartoon GROUP BY directed_by
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT T2.Production_code ,  T2.Channel FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel  =  T2.Channel ORDER BY T1.Air_Date DESC LIMIT 1
SELECT production_code ,  channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option ,  series_name FROM TV_channel WHERE hight_definition_TV  =  '1'
SELECT Package_Option ,  series_name FROM TV_channel WHERE high_definition_TV  =  '1'
SELECT DISTINCT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.written_by  =  "Todd Casey"
SELECT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.written_by  =  "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.written_by  =  "Todd Casey"
SELECT DISTINCT country FROM tv_channel EXCEPT SELECT DISTINCT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.title  =  "Todd Casey"
SELECT T2.series_name ,  T2.Country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel  =  T2.id WHERE T1.directed_by  =  "Ben Jones" INTERSECT SELECT T2.series_name ,  T2.Country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel  =  T2.id WHERE T1.directed_by  =  "Michael Chang"
SELECT T1.series_name ,  T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones" INTERSECT SELECT T1.series_name ,  T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Michael Chang"
SELECT pixel_aspect_ratio_PAR ,  country FROM TV_Channel WHERE language != "English"
SELECT pixel_aspect_ratio_PAR ,  country FROM TV_Channel WHERE LANGUAGE != "English"
SELECT channel FROM tv_series GROUP BY channel HAVING count(*)  >  2
SELECT id FROM tv_channel GROUP BY id HAVING count(*)  >  2
SELECT id FROM tv_channel EXCEPT SELECT Channel FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT Channel FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones"
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT t1.Name FROM people AS t1 JOIN poker_player AS t2 ON t1.People_ID  =  t2.People_ID ORDER BY Earnings DESC
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id ,  phone_number ,  state FROM votes
SELECT max(area_code) ,  min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state  =  'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state ,  created FROM votes
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*)  >=  2
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state  =  "NY" OR state  =  "CA"
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT area_code FROM votes GROUP BY area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created ,  T1.state ,  T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T2.contestant_name  =  'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state WHERE T2.contestant_number  =  "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state WHERE T2.contestant_number  =  "Kelly Clauss"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT name FROM country WHERE indepyear  >  1950
SELECT Name FROM country WHERE IndepYear  >  1950
SELECT COUNT(*) FROM country WHERE governmentform  =  "republic"
SELECT COUNT(*) FROM country WHERE governmentform  =  "Republic"
SELECT sum(surfacearea) FROM country WHERE region  =  "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = "Caribbean";
SELECT Continent FROM country WHERE name  =  "Anguilla";
SELECT continent FROM country WHERE code  =  "AI";
SELECT Region FROM country WHERE Code  =  (SELECT CountryCode FROM city WHERE name  =  'Kabul' );
SELECT Region FROM country WHERE Capital  =  "Kabul";
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.name  =  "Aruba" ORDER BY T2.percentage DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE Percentage  =  (SELECT MAX(Percentage) FROM countrylanguage WHERE CountryCode  =  "ARB")
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil";
SELECT Region ,  Population FROM country WHERE Name  =  "Angola";
SELECT Region ,  Population FROM country WHERE Name  =  "Angola";
SELECT avg(lifeexpectancy) FROM country WHERE region  =  "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent  =  'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(population) ,  max(gnp) FROM country WHERE continent  =  "Asia"
SELECT sum(population) ,  max(gnp) FROM country WHERE continent  =  "Asia"
SELECT avg(lifeexpectancy) FROM country WHERE governmentform  =  "Republic" AND continent  =  "Africa"
SELECT avg(lifeexpectancy) FROM country WHERE governmentform  =  "republic" AND continent  =  "Africa"
SELECT sum(surfacearea) FROM country WHERE continent  =  "Asia" OR continent  =  "Europe"
SELECT sum(surfacearea) FROM country WHERE continent  =  'asia' OR continent  =  'Europe'
SELECT SUM ( population ) FROM city WHERE district  =  "Gelderland"
SELECT sum(population) FROM city WHERE district  =  "Gelderland"
SELECT avg(gnp) ,  sum(population) FROM country WHERE governmentform  =  "U.S. territory";
SELECT avg(GNP) ,  sum(population) FROM country WHERE governmentform  =  "Territory";
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  "Africa"
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  "Africa"
SELECT count(*) FROM countrylanguage WHERE countrycode  =  "AW";
SELECT count(*) FROM countrylanguage WHERE countrycode  =  "AW";
SELECT count(*) FROM countrylanguage WHERE countrycode  =  "AF" AND isofficial  = 1;
SELECT count(*) FROM countrylanguage WHERE countrycode  =  "AF" AND isofficial  = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM country ORDER BY COUNT(*)  =  ( SELECT countrycode FROM countrylanguage GROUP BY countrycode ) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language  =  'English' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE language  =  'Dutch'
SELECT COUNT ( DISTINCT countrycode ) FROM countrylanguage WHERE language  =  "English" AND countrycode IN ( SELECT countrycode FROM countrylanguage WHERE language  =  "Dutch" );
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  "French"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' AND T1.isOfficial  =  '1' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'French' AND T1.isOfficial  =  '1'
SELECT DISTINCT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.language  =  "Chinese"
SELECT COUNT(*) FROM countrylanguage WHERE Language  =  "Chinese"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' OR T2.language  =  'Dutch'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  "Dutch" OR T2.language  =  "English"
SELECT CountryCode FROM countrylanguage WHERE language  =  "English" INTERSECT SELECT CountryCode FROM countrylanguage WHERE language  =  "Dutch"
SELECT CountryCode FROM countrylanguage WHERE language  =  "English" INTERSECT SELECT CountryCode FROM countrylanguage WHERE language  =  "Dutch"
SELECT language FROM countrylanguage WHERE countrycode  =  (SELECT code FROM country WHERE continent  =  "Asia") GROUP BY language ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent  =  "Asia") GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE percentage  =  10000 AND governmentform  =  "Republic"
SELECT Language FROM countrylanguage WHERE Percentage  =  250 AND governmentform  =  'Republic' GROUP BY Language HAVING COUNT (*)  =  1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code JOIN countrylanguage AS t3 ON t2.code  =  t3.countrycode WHERE t3.language  =  "English" AND t3.isoidfficial  =  1 AND t1.population  =  ( SELECT MAX ( t1.population ) FROM city AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code JOIN countrylanguage AS t3 ON t2.code  =  t3.countrycode WHERE t3.language  =  "English" AND t3.isoidfficial  =  1 );
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode  =  T2.countrycode WHERE T2.language  =  "English" AND T2.percentage  >  500 ORDER BY T1.population DESC LIMIT 1;
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' AND surfacearea  =  (SELECT max(surfacearea) FROM country WHERE continent  =  'Asia')
SELECT avg(t1.LifeExpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'English' AND t2.isoffical  =  '0'
SELECT avg(t1.LifeExpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'English' AND t2.isofficial  =  0
SELECT sum(population) FROM country WHERE code NOT IN ( SELECT countrycode FROM countrylanguage WHERE language  =  "English" );
SELECT sum(population) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  "English");
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.headofstate  =  "Beatrix" AND T2.isofficial  =  1;
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.HeadOfState  =  "Beatrix" AND T2.isOfficial  =  "1";
SELECT COUNT (DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE indepyear  <  1930) AND ISOFFICIAL  =  'YES'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE indepyear  <  1930)
SELECT Name FROM country WHERE SurfaceArea  >  (SELECT max(SurfaceArea) FROM country WHERE continent  =  "Europe")
SELECT name FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia') AND continent  =  'Africa';
SELECT name FROM country WHERE population  <  ( SELECT min(population) FROM country WHERE continent  =  'Asia' ) AND continent = 'Africa';
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  "Africa") AND continent  =  "Asia"
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa') AND continent = 'Asia'
SELECT countrycode FROM countrylanguage WHERE language != "English"
SELECT countrycode FROM countrylanguage WHERE language != "English"
SELECT countrycode FROM countrylanguage WHERE language != "English"
SELECT countrycode FROM countrylanguage WHERE language != "English"
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  'English' )
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE ISOfficial  =  'yes' AND Language  =  'English') AND governmentform != "Republic";
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.countrycode WHERE T2.continent  =  'Europe' AND T3.language  =  'English' AND T3.isofficial  =  0
SELECT name FROM city WHERE countrycode  =  (SELECT code FROM country WHERE continent  =  'Europe') AND language != (SELECT countrylanguage FROM countrylanguage WHERE isofficial  =  1);
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code JOIN countrylanguage AS t3 ON t2.code  =  t3.countrycode WHERE t3.language  =  "Chinese" AND t2.continent  =  "Asia" AND t3.isOfficial  =  1
SELECT DISTINCT t1.name FROM country AS t2 JOIN city AS t1 ON t2.code  =  t1.countrycode WHERE t2.continent  =  'Asia' AND t1.population  >  15000 AND t2.code2  =  ( SELECT t3.code2 FROM countrylanguage AS t3 WHERE t3.language  =  'Chinese' AND t3.isofficial  =  1 );
SELECT name ,  indepyear ,  surfacearea FROM country WHERE population  =  (SELECT min(population) FROM country);
SELECT name ,  indepyear ,  surfacearea FROM country WHERE population  =  (SELECT MIN (population) FROM country);
SELECT population ,  name ,  headOfState FROM country WHERE surfacearea  =  ( SELECT MAX ( surfacearea ) FROM country );
SELECT name ,  population ,  headOfState FROM country WHERE surfacearea  =  ( SELECT MAX ( surfacearea ) FROM country );
SELECT T1.name ,  COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode GROUP BY T1.code HAVING count(*)  >=  3
SELECT T1.Name ,  COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Name HAVING COUNT(*)  >  2
SELECT COUNT(*) ,  district FROM city WHERE population  >  ( SELECT AVG ( population ) FROM city ) GROUP BY district
SELECT COUNT(*) FROM city WHERE population  >  (SELECT AVG(population) FROM city) GROUP BY district
SELECT governmentform ,  SUM(population) FROM country WHERE lifeexpectancy  >  72 GROUP BY governmentform
SELECT government_form ,  SUM(population) FROM country WHERE lifeexpectancy  >  72 GROUP BY government_form
SELECT avg(lifeexpectancy) ,  sum(population) ,  continent FROM country WHERE lifeexpectancy  <  72 GROUP BY continent
SELECT continent ,  SUM(population) ,  avg(lifeexpectancy) FROM country WHERE lifeexpectancy  <  72 GROUP BY continent
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT name FROM country WHERE continent  =  "Europe" AND population  >=  80000
SELECT name FROM country WHERE population  =  80000 AND continent  =  "Europe"
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE surfacearea  >  3000 AND continent = "North America";
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE surfacearea  >  3000 AND continent  =  "North America";
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT LANGUAGE ,  countrycode ,  MAX(percentage) FROM countrylanguage GROUP BY countrycode ;
SELECT CountryCode ,  Language FROM countrylanguage GROUP BY CountryCode ,  Language ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language  =  "Spanish" AND percentage  =  ( SELECT MAX(percentage) FROM countrylanguage WHERE language  =  "Spanish" )
SELECT COUNT(*) FROM countrylanguage WHERE Language  =  "Spanish" AND Percentage  >  950
SELECT CountryCode FROM countrylanguage WHERE Language  =  "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language  =  "Spanish" GROUP BY CountryCode HAVING Percentage  >  900
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share) ,  min(share) FROM performance WHERE TYPE != "Live final"
SELECT max(share) ,  min(share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T2.Name ,  T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T2.Name ,  T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*)  >  1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*)  >  1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT Record_Company ,  count(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company ,  count(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra EXCEPT SELECT Orchestra FROM performance
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003
SELECT count(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"
SELECT count(*) FROM orchestra WHERE Major_Record_Format  =  "CD OR DVD"
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING count(*)  >  1
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING count(*)  >  1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT name FROM Highschooler WHERE grade  =  10
SELECT name FROM Highschooler WHERE grade  =  10
SELECT id FROM Highschooler WHERE name  =  'Kyle'
SELECT id FROM Highschooler WHERE name  =  'Kyle'
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) ,  grade FROM Highschooler GROUP BY grade
SELECT count(*) ,  grade FROM Highschooler GROUP BY grade
SELECT max(grade) FROM Highschooler
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id
SELECT T1.name ,  count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T1.name ,  count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id WHERE T1.student_id  =  (SELECT T2.id FROM Highschooler AS T2 WHERE T2.name  =  'Kyle')
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id WHERE T2.name  =  "Kyle"
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id WHERE T2.name  =  "Kyle"
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  "Kyle"
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id INTERSECT SELECT T2.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id INTERSECT SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id INTERSECT SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id INTERSECT SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.friend_id HAVING count(*)  >=  2 INTERSECT SELECT T2.name FROM Highschooler AS T2 WHERE grade  >  5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING T1.grade  >  5 AND count(*)  >=  2
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT friend_id FROM friend GROUP BY friend_id HAVING count(*)  >=  2)
SELECT avg(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id WHERE T2.id IN (SELECT T1.student_id FROM Friend AS T1 WHERE T1.friend_id IN (SELECT T2.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id))
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT grade FROM highschooler EXCEPT SELECT grade FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT professional_id ,  last_name ,  cell_number FROM professionals WHERE state  =  "Indiana" UNION SELECT professional_id ,  last_name ,  cell_number FROM treatments GROUP BY professional_id HAVING count(*)  >  2
SELECT professional_id ,  last_name ,  cell_number FROM professionals WHERE state  =  'Indiana' UNION SELECT professional_id ,  last_name ,  cell_number FROM treatments GROUP BY professional_id HAVING count(*)  >  2
SELECT T2.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.cost_of_treatment  >  1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN owners AS T3 ON T1.owner_id  =  T3.owner_id WHERE T3.weight  -  T2.cost_of_treatment  >  1000
SELECT first_name FROM (owners UNION professionals) EXCEPT SELECT name FROM dogs
SELECT first_name FROM (owners UNION professionals) EXCEPT SELECT name FROM dogs
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.role_code ,  T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T2.role_code ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code  =  T2.treachment_type_code GROUP BY T1.treatment_type_description ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code  =  T2.treachment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT  owner_id ,  zip_code FROM treatments GROUP BY owner_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.cost_of_treatment ,  T0.treatment_type_description FROM Treatment_Types AS T0 JOIN treatments AS T1 ON T1.treatment_type_code  =  T0.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T1.last_name ,  T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T3.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN Treatments AS T3 ON T3.dog_id  =  T2.dog_id
SELECT T1.name ,  T2.date_of_treatment FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN Breeds AS T3 ON T1.breed_code  =  T3.breed_code GROUP BY T3.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN breeds AS T3 ON T1.breed_code  =  T3.breed_code GROUP BY T3.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN breeds AS T3 ON T2.breed_code  =  T3.breed_code WHERE T1.state  =  "VA"
SELECT T1.first_name ,  T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN breeds AS T3 ON T2.breed_code  =  T3.breed_code WHERE T1.state  =  "VA"
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.date_departed IS NOT NULL
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id  =  t2.owner_id ORDER BY t2.age ASC LIMIT 1
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT email_address FROM professionals WHERE state  =  "Hawaii" OR state  =  "Wisconsin"
SELECT email_address FROM professionals WHERE state  =  'WI' OR state  =  'HI'
SELECT date_arrived ,  date_departed FROM dogs
SELECT date_arrived ,  date_departed FROM dogs
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM treatments;
SELECT count(*) FROM treatments WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn  =  'N')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn = 1
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type ,  charge_amount FROM charges
SELECT charge_type ,  charge_amount FROM charges
SELECT max(charge_amount) FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address ,  cell_number ,  home_phone FROM professionals
SELECT email_address ,  cell_number ,  home_phone FROM professionals
SELECT B1.breed_code ,  S1.size_code FROM Breeds AS B1 JOIN Sizes AS S1 ON B1.size_code  =  S1.size_code
SELECT DISTINCT breed_code ,  size_code FROM Dogs
SELECT T1.first_name ,  T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_id  =  T2.treatment_type_code
SELECT T1.first_name ,  T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_id  =  T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Net_Worth_Millions) ,  Citizenship FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) ,  Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Title ,  T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T1.Title ,  T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*)  >  1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*)  >  1
SELECT sum(T2.Sales) ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT sum(T2.Sales) ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year  >  1955 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  <  1945
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT count(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code  =  T2.feature_type_code WHERE T1.feature_name  =  "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code  =  T2.property_type_code
SELECT property_name FROM Properties WHERE property_type_code  =  "House" OR ( property_type_code  =  "Apartment" AND room_count  >  1 )
